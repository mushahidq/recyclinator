import numpy as np
from PIL import Image
import onnxruntime

def preprocess(image):
    ratio = 800.0 / min(image.size[0], image.size[1])
    image = image.resize((int(ratio * image.size[0]), int(ratio * image.size[1])), Image.BILINEAR)

    image = np.array(image)[:, :, [2, 1, 0]].astype('float32')
    image = np.transpose(image, [2, 0, 1])

    mean_vec = np.array([102.9801, 115.9465, 122.7717])
    for i in range(image.shape[0]):
        image[i, :, :] = image[i, :, :] - mean_vec[i]

    import math
    padded_h = int(math.ceil(image.shape[1] / 32) * 32)
    padded_w = int(math.ceil(image.shape[2] / 32) * 32)

    padded_image = np.zeros((3, padded_h, padded_w), dtype=np.float32)
    padded_image[:, :image.shape[1], :image.shape[2]] = image
    image = padded_image

    return image



def detect_objects(image):
    img = Image.open(image)
    img_data = preprocess(img)

    classes = [line.rstrip('\n') for line in open('coco_classes.txt')]

    ort_session = onnxruntime.InferenceSession("model.onnx")
    ort_inputs = {ort_session.get_inputs()[0].name: img_data}
    ort_outs = ort_session.run(None, ort_inputs)

    print(ort_outs['labels'])