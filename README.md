# funnykittys  
funnykittys prints a silly cat to your terminal, and picks a new one every day  
i made this in about 30 minutes when i should have been doing my homework

## setup:  
1: download the folder including the `funnykittys.ps1` and `data.json` file  
2: copy the path of `funnykittys.ps1`  
3: open your powershell profile script, or create one if you dont have one    
4: paste the path to `funnykittys.ps1` into the powershell profile, and save  
5: now it works yay

## issues and solutions:
-the kittys were made specifically for JetBrains Mono Nerd Font, so other fonts might look whacky  
fix: download JetBrains Mono Nerd Font from https://www.nerdfonts.com/font-downloads and apply to your terminal  

-you may try to run the funnykittys.ps1 script, but then windows doesnt let you  
fix: run powershell as Administrator, and run `set-executionpolicy remotesigned`

-you might also think the kittys look stupid, and you wanna change them  
fix: open `funnykittys.ps1`, and paste your custom kitty into the the table called `$kittys`  
(make sure you surround it by @" "@)
