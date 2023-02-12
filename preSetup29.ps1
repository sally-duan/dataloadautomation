
#List of CADM files to copy
$CADMDatafile = @(
"SDP_FUB_ID000001_T20210804074706.DAT",
"SDP_FUB_ID000003_T20210804071655.DAT",
"SDP_FUB_ID000004_T20210916095803.DAT",
"SDP_FUB_ID000005_T20211012111649.DAT",
"SDP_FUB_ID000006_T20220111064521.DAT",
"SDP_FUB_ID000007_T20220119080856.DAT",
"SDP_FUB_ID000008_T20220120112422.DAT",
"SDP_FUB_ID000011_T20220131043355.DAT",
"SDP_FUB_ID100006_T20220111064521.DAT"
)


#List of UB files to copy

$UBDatafile= @("wirelineUBfiles")


#List of E Bill files to copy

$EBDatafile= @(
"globys_account_detail_20211105122200.dat",      
"globys_account_detail_20220127034501.dat",       
"globys_account_detail_20220221063001.dat",       
"globys_account_detail_20220414024500.dat",       
"globys_account_detail_20220715040000.dat",       
"globys_account_detail_20220825063001.dat",       
"globys_account_detail_20221011024500.dat",       
"globys_customer_list_2021019013600.dat",         
"globys_customer_list_20211013163700.dat",     
"globys_customer_list_20211013231600.dat",        
"globys_customer_list_20211015112300.dat",        
"globys_customer_list_20211018204100.dat",        
"globys_customer_list_20220127034501.dat",        
"globys_customer_list_20220221063001.dat",        
"globys_user_list_20211013163801_REV.dat",        
"globys_user_list_20211013234001_REV.dat",        
"globys_user_list_20211015112401_REV.dat",        
"globys_user_list_20211019011800_REV.dat",        
"globys_user_list_20211019190100_REV.dat",        
"globys_user_list_20211021123100_REV.dat",        
"globys_user_list_20211105122100_REV.dat",        
"globys_user_list_20220127034501_REV.dat",        
"globys_user_list_20220221063001_REV.dat",        
"globys_user_list_20220414024500.dat",            
"globys_user_list_20220706034500.dat",            
"globys_user_list_20220715040000.dat",            
"globys_user_list_20220825063001.dat",            
"globys_user_list_20221011024500.dat"
)

#folder of CAPM_CBUS file

$CAPMCBUSDatafile= @("cbus")

#folder of CAPM_CFM file
$CAPMCFMDatafile= @("cfm")



#[1] - Predata Setup
#[2] - CADM Setup
#[3] - UB Setup
#[4] - EBill Setup
#[5] - Add Users
#[6] - CAPMCBUS
#[7] - CAPMCFM
$Options = @(2,3,4,6,7)

#Adds extra logging messages
$Debug = $false

#Folder of location of CADM files. Default "\\sea1condir\FT_users\cadm_user\incoming\cadm\daily"
$CADMShare = "\\sea1condir\FT_users\cadm_user\incoming\cadm\daily"

#Folder of location of UB files. Default "\\sea1condir\FT_users\ub_user\incoming\ub\subcycle"
$UBShare = "\\sea1fs01\Shared\Teams\Engineering\FireDogs\ForZiplineWork"

#Folder of location of E Bill files. Default "\\sea1fs01\Shared\Temp\for_serife\ebill\"
$EBShare = "\\sea1fs01\Shared\Teams\Engineering\QA\ATT-Wireline\UAT\Data\eBill_Files"

#Folder of location of CAPM CBUS files. Default "\\sea1condir\FT_users\ditrexwln_user\incoming\capm\cbus"
$CAPMCBUSShare = "\\sea1condir\FT_users\ditrexwln_user\incoming\capm"

#Folder of location of CAPM CFM files. Default "\\sea1condir\FT_users\ditrexwln_user\incoming\capm\cfm"
$CAPMCFMShare  = "\\sea1condir\FT_users\ditrexwln_user\incoming\capm"



#Folder to copy CAPM CBUS files to local machine. Default "F:\Load\ToConvert\attwln\cadm"
$CADMFolder= "F:\Load\ToConvert\attwln\cadm"

#Folder to copy CADM files to local machine. Default "F:\Load\ToConvert\attwln\ub"
$UBFolder= "F:\Load\ToConvert\attwln\ub"

#Folder to copy CADM files to local machine. Default "F:\Load\ToConvert\attwln\ebill_migration"
$EBFolder= "F:\Load\ToConvert\attwln\ebill_migration"
$EbillInProcessFolder = "F:\Load\ToConvert\attwln\ebill_migration\in_process"

#Folder to copy CADM cubs files to local machine. Default "F:\Load\ToConvert\attwln\capm_cbus"
$CAPMCBUSFolder = "F:\Load\ToConvert\attwln\capm_cbus"

#Folder to copy CADM cfm files to local machine. Default "F:\Load\ToConvert\attwln\capm_cfm"
$CAPMCFMFolder= "F:\Load\ToConvert\attwln\capm_cfm"



#Name of CADM dataload SQL script
$CADMJob = "attwln_integrations - Run CADM Integration"

#Name of UB dataload SQL script
$UBJob1 = "attwln_integrations - UB Biller - Find Files"
$UBJob2 = "attwln_integrations - UB Biller - Process Batch"
$UBJob3 = "attwln_integrations - Update Account Detail Cache"

#Name of EBill dataload SQL script
$EBJob1 = "attwln_integrations - Run EBill_User_Customer Integration"
$EBJob2 = "attwln_integrations - Run EBill_User Migration"
$EBJob3 = "attwln_integrations - Update Account Detail Cache"


#Name of CAPM CBUS dataload SQL script
$CAPMCBUSJob = "attwln_integrations - Run CAPM CBUS Payment Integration"
#Name of CAPM CFM dataload SQL script
$CAPMCFMJob = "attwln_integrations - Run CAPM CFM Payment Integration"


if(Test-Path "Dataloader29.ps1")
{
    .\Dataloader29.ps1 `
    -CADMJob $CADMJob -UBJob1 $UBJob1 -UBJob2 $UBJob2 -UBJob3 $UBJob3 -EBJob1 $EBJob1 -EBJob2 $EBJob2 -EBJob3 $EBJob3 -CAPMCBUSJob $CAPMCBUSJob -CAPMCFMJob $CAPMCFMJob -CADMDatafile $CADMDatafile -UBDatafile $UBDatafile -EBDatafile $EBDatafile -CAPMCBUSfile $CAPMCBUSfile -CAPMCFMfile $CAPMCFMfile	-Debug:$Debug `
	-CADMShare $CADMShare -UBShare $UBShare	-EBShare $EBShare -CAPMCBUSShare $CAPMCBUSShare -CAPMCFMShare $CAPMCFMShare -CADMFolder $CADMFolder -UBFolder $UBFolder -EBFolder $EBFolder -CAPMCFMFolder $CAPMCFMFolder -CAPMCBUSFolder $CAPMCBSFolder -Options $Options -Seed $EmailSeed
}
else 
{
Write-Host "checking the folders, share and files before you proceed"
}

