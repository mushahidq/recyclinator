import discord
from detect_objects import detect_objects
import tempfile
from six.moves.urllib.request import urlopen
from six import BytesIO
from PIL import Image
import json

f = open("token.json")
data = json.load(f)

classes = [line.rstrip('\n') for line in open('coco_classes.txt')]


class Recyclinator(discord.Client):
    async def on_ready(self):
        print('Logged in as {0}'.format(self.user))
    
    async def on_message(self, message):
        objects = set()
        if (message.attachments):
            for attachment in message.attachments:
                image = await attachment.read()
                image_data = BytesIO(image)
                image = save_image(image_data)
                labels = detect_objects(image)
                for label in labels:
                    objects.add(classes[label])
                print(objects)

def save_image(image_data):
    _, filename = tempfile.mkstemp(suffix=".jpg")
    pil_image = Image.open(image_data)
    pil_image_rgb = pil_image.convert("RGB")
    pil_image_rgb.save(filename, format="JPEG", quality=90)
    return filename

client = Recyclinator()
client.run(data['token'])