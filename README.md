# What is this?
A batch program that heavily automates the process of exporting character animation sprites from a single Aseprite file.

When spriting in Aseprite, it's a common practice to separate animations for a character into separate tags.
When you export the animations, Aseprite lets you export each animation tag separately, and even lets you export each frame within that tag as its own image file. However, you'll still have to name the animation files yourself.
This isn't too bad in and of itself, but when you have dozens upon dozens of different animation tags with many different frames, and you have to manually export each animation to a specific directory, the task of repeatedly exporting and naming each file gets extremely tedious, especially when you want to make changes to the sprites later.

This exists to heavily automate that process, so that you can just stay focused on making the actual sprites. 

# Usage

## Important things to verify before using
- Make sure your sprites folder and your extracted Yomi folder are in the same parent directory.
	![](https://i.imgur.com/TWAzQRs.png)

- Make sure that all your character's animations in your .aseprite file are split into separate tags. The batch file won't work otherwise!
![](https://i.imgur.com/JRXsbHt.png)
	- **Note**: If you are using a guideline sprite, name its layer "Sample" so that the exporter ignores it.
		![](https://i.imgur.com/FhlM937.png)

- Make sure that the name of your extrated Yomi project folder matches `YOMIFOLDERNAME` in the .bat file. If not, just change the value in it to match it and it should work just fine!
	![](https://i.imgur.com/UEbe6V6.png)

## To use this batch file:
1. Place the batch file in your sprites folder where your character's .aseprite files are.
	![](https://i.imgur.com/rd7setc.png)

2. Run the batch file and enter the names it asks you for.
	![](https://i.imgur.com/bYnJByb.png)

3. The frames of each of your animations should appear split into their own respective .png files, named by their tag and tag frame!

	![](https://i.imgur.com/fxpDjao.png)
