1. Use TO to get your target build VM
2. Copy these two ps files into your vm. Need to be in same folder. Anywhere you want.
3. Launch powershell with administrator permission
4. Find the file path and run '\presetup.ps1'

if you want to load specific file type, for example UB file which takes long time, you can change the line $Options = @(3) on preSetup.ps1. Or you will load all the data in one shot.