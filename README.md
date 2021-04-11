# recyclinator

a discord bot that helps users recycle and reuse

## Inspiration

I wanted to create something that would help people lead a cleaner and more environment friendly life and I saw that many people struggle at categorising waste so I decided to create a discord bot to tackle this

## What it does

The user sends an image to the channel named `recyclinator` and the bot replies with formatted messages of the objects it detects, what they are commonly made up of and how to recycle them or which type of waste they are.

## How we built it

I used discord.py for the discord bot
ONNX runtime to run a pytorch [model](https://github.com/onnx/models/tree/master/vision/object_detection_segmentation/faster-rcnn) that is trained on the coco image dataset and detects up to 80 classes
I used cockroachdb to store all the information about the objects and the bot retrieves them as it detects different objects

## Challenges we ran into

I wanted to use tensorflow and train the model on a much larger dataset but Tensorflow kept crashing on my laptop and running out of memory and training on cloud services like google colab would be quicker but it still estimated that it would take a lot of time(hours)
So I decided to go with a pre trained model on pytorch that could be run on onnx runtime

## Accomplishments that we're proud of

This bot has been deployed to Linode which means that anyone can add it to their server and I really hope that this will help someone

## What we learned

How to save and load models in tensorflow and pytorch and onnx

## What's next for recyclinator

I would like to create a command that would show a user their statistics and other global usage statistics which could be used to refine the bot usage.
