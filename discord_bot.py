import discord
from detect_objects import detect_objects
import tempfile
from six.moves.urllib.request import urlopen
from six import BytesIO
from PIL import Image
import json

from cockroach_db_connect import get_object_data

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
                
                for object in objects:
                    info = get_object_data(object)
                    if info:
                        await message.channel.send("Object detected: " + info[0] + "\nType of waste: " + info[1])
                        await message.channel.send("Commonly made up of: ")
                        i = 0
                        for component in info[2]:
                            await message.channel.send("#" + str(i) + ": " + component)
                        await message.channel.send("What to do with this type of waste: " + info[3])

def save_image(image_data):
    _, filename = tempfile.mkstemp(suffix=".jpg")
    pil_image = Image.open(image_data)
    pil_image_rgb = pil_image.convert("RGB")
    pil_image_rgb.save(filename, format="JPEG", quality=90)
    return filename

client = Recyclinator()
client.run(data['token'])