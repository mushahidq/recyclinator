import discord
from detect_objects import detect_objects
import tempfile
from six.moves.urllib.request import urlopen
from six import BytesIO
from PIL import Image

class Recyclinator(discord.Client):
    async def on_ready(self):
        print('Logged in as {0}'.format(self.user))
    
    async def on_message(self, message):
        if (message.attachments):
            for attachment in message.attachments:
                print(attachment.url)
                image = await attachment.read()
                image_data = BytesIO(image)
                image = save_image(image_data)
                detect_objects(image)

def save_image(image_data):
    _, filename = tempfile.mkstemp(suffix=".jpg")
    pil_image = Image.open(image_data)
    pil_image_rgb = pil_image.convert("RGB")
    pil_image_rgb.save(filename, format="JPEG", quality=90)
    print("Image downloaded to %s." % filename)
    return filename

client = Recyclinator()
client.run('ODI1Mzg4MTQzNjcwMTk4Mjcy.YF9MnA.bGHEL5X29-UXmimq5PPFvqqqRPU')