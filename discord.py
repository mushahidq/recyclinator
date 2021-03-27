import discord

class Recyclinator(discord.Client):
    async def on_ready(self):
        print('Logged in as {0}'.format(self.user))
    
    async def on_message(self, message):
        print(message)