# funnykittys  
powershell profile script that prints a silly cat to your terminal, and picks a new one every day  
i made this in about 30 minutes when i should have been doing my homework    

<img width="180" height="154" alt="image" src="https://github.com/user-attachments/assets/b2a468b2-bad2-4ad5-b768-4b6a76393f13" />

## setup:  
1: download the folder including the `funnykittys.ps1` and `data.json` file  
2: copy the path of `funnykittys.ps1`  
3: open your powershell profile script, or create one if you dont have one    
4: paste the path to `funnykittys.ps1` into the powershell profile, and save  
5: now it works yay

## issues and solutions:
### issue: why do the cats look weird?  
they were made specifically for JetBrains Mono Nerd Font, so other fonts might look whacky  
fix: download JetBrains Mono Nerd Font from https://www.nerdfonts.com/font-downloads and apply to your terminal  

### issue: the script doesnt run and i get an error  
windows blocks powershell scripts automatically, you have to allow them first   
fix: run powershell as Administrator, and run `set-executionpolicy remotesigned`

### issue: i dont like the cats they look dumb
fix: open `funnykittys.ps1`, and paste your custom kitty into the the table called `$cats`  
(make sure you surround it by @" "@)
