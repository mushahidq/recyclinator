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

f = open("colours.json")
colours = json.load(f)

f = open("icons.json")
icons = json.load(f)

f = open("materials.json")
materials_data = json.load(f)

classes = [line.rstrip('\n') for line in open('coco_classes.txt')]


class Recyclinator(discord.Client):
    async def on_ready(self):
        print('Logged in as {0}'.format(self.user))
    
    async def on_message(self, message):
        if message.channel.name == 'recyclinator':
            objects = set()
            if (message.attachments):
                for attachment in message.attachments:
                    await message.channel.send("Searching for objects in your image.")
                    image = await attachment.read()
                    image_data = BytesIO(image)
                    image = save_image(image_data)
                    labels = detect_objects(image)
                    for label in labels:
                        objects.add(classes[label])
                    
                    for object in objects:
                        info = get_object_data(object)
                        if info:
                            object_embed = discord.Embed()
                            object_embed.title = "Object: " + info[0]
                            object_embed.description = "Type of waste: " + info[1]
                            object_embed.colour = eval(colours[info[1]])
                            object_embed.add_field(name="Commonly made of", value=', '.join(info[2]), inline=True)
                            object_embed.add_field(name="What to do with this type of waste?", value=info[3], inline=True)
                            if icons[info[0]]:
                                object_embed.set_thumbnail(url=icons[info[0]])
                                object_embed.thumbnail.width = 64
                                object_embed.thumbnail.height = 64
                            # await message.channel.send("Object detected: " + info[0] + "\nType of waste: " + info[1])
                            # await message.channel.send("Commonly made up of: ")
                            # i = 0
                            # for component in info[2]:
                            #     await message.channel.send("#" + str(i) + ": " + component)
                            # await message.channel.send("What to do with this type of waste: " + info[3])
                            await message.channel.send(content=None, embed=object_embed)
            elif message.content.startswith('!object-lookup'):
                args = message.content.split()[1:]
                objects = set()
                if args == None:
                    return await message.channel.send("Please provide object(s) to lookup.")
                for arg in args:
                        objects.add(arg)
                for object in objects:
                    info = get_object_data(object)
                    if info:
                        object_embed = discord.Embed()
                        object_embed.title = "Object: " + info[0]
                        object_embed.description = "Type of waste: " + info[1]
                        object_embed.colour = eval(colours[info[1]])
                        object_embed.add_field(name="Commonly made of", value=', '.join(info[2]), inline=True)
                        object_embed.add_field(name="What to do with this type of waste?", value=info[3], inline=True)
                        if icons[info[0]]:
                            object_embed.set_thumbnail(url=icons[info[0]])
                            object_embed.thumbnail.width = 64
                            object_embed.thumbnail.height = 64
                        await message.channel.send(content=None, embed=object_embed)

            elif message.content.startswith('!material-lookup'):
                args = message.content.split()[1:]
                materials = set()
                if args == None:
                    return await message.channel.send("Please provide material(s) to lookup.")
                for arg in args:
                        materials.add(arg)
                for material in materials:
                    return await message.channel.send(materials_data[material])
            elif message.content.startswith('!help'):
                await message.channel.send("Send an image as an attachement to find objects in the image and know what to do with them.")
                await message.channel.send("Use the \`!object-lookup <object>\` command to lookup information about a specific object.")
                await message.channel.send("Use the \`!material-lookup <material>\` command to lookup information about a specific material.")

def save_image(image_data):
    _, filename = tempfile.mkstemp(suffix=".jpg")
    pil_image = Image.open(image_data)
    pil_image_rgb = pil_image.convert("RGB")
    pil_image_rgb.save(filename, format="JPEG", quality=90)
    return filename

client = Recyclinator()
client.run(data['token'])