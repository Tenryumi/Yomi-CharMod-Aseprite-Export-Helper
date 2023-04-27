# Yomi-CharMod-Aseprite-Export-Helper
Batch files for the game "Your Only Move Is Hustle" that help modders who sprite their characters in Aseprite quickly and easily export their animations to be used by the game.

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

3. The frames of each of your animations should appear split into their own respective frames and named by their tag and tag frame!
![](https://i.imgur.com/fxpDjao.png)
