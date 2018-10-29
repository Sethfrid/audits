#This script for computer audits and outs the result to the screen.

"$(Get-Date -format F) Start logging"

function get-auditinfo

{
# Returns some info of the Computer System
$computer = gwmi Win32_ComputerSystem | select Domain, Model, Name, Username, Manufacturer, NumberofProcessors, TotalPhysicalMemory, Status 


write-output $computer 
#Returns a role rather than a value for the Domain Role
$computer = gwmi Win32_ComputerSystem
$domainrole = switch ($computer.domainrole) 
         {
            0 {"Standalone Workstation"}
            1 {"Member Workstation"}
            2 {"Standalone Server"}
            3 {"Member Server"}
            4 {"Backup Domain Controller"}
            5 {"Primary Domain Controller"}
                       
            default {"Unknown Value"}
         }       
     write-output "Domain Role: $domainrole"


$computer = gwmi Win32_ComputerSystem | select hypervisorpresent

$computer = '1'

if ($computer -eq '1')
{
write-output 'Hyper Visor Present: True' 

}
else
{
write-output 'Hyper Visor Present: False' 

}
#Returns PC System Type rather than a value
$computer = gwmi Win32_ComputerSystem | select pcsystemtype

$pcsystemtype = switch ($computer) 

         {
            0 {"Unspecified"}
            1 {"Desktop"}
            2 {"Laptop"}
            3 {"Workstation"}
            4 {"Enterprise Server"}
            5 {"SOHO Server"}
            6 {"Server Appliance PC"}
            7 {"Performance Server"}
            8 {"Maximum"}
           
            default {"Unknown Value"}
         } 
     
          
     write-output "PC System Type: " $pcsystemtype 
      
$computer = gwmi win32_computersystem | select systemtype
write-output "System Type: " $computer

$computer = gwmi win32_computersystem | select bootupstate
write-output "Boot Up State: " $computer

$computer = gwmi Win32_ComputerSystem | select powersupplystate
#Returns the Power Supply State rather than a value
$powersupplystate = switch ($computer) 
         {
            1 {"Other"}
            2 {"Unknown"}
            3 {"Safe"}
            4 {"Warning"}
            5 {"Critical"}
            6 {"Non-Recoverable "}
            default {"Unknown Value"}
         }   
     write-output "Power Supply State: " $powersupplystate
      

$computer = gwmi Win32_ComputerSystem | select powerstate
#Returns Power State rather than a value
$powerstate = switch ($computer) 
         {
            0 {"Unknown"}
            1 {"Full Power"}
            2 {"Power Save - Low Power Mode"}
            3 {"Power Save - Standby"}
            4 {"Power Save - Unknown"}
            5 {"Power Cycle"}
            6 {"Power Off"}
            7 {"Power Save - Warning"}
            8 {"Power Save - Hibernate"}
            9 {"Power save — hibernate. Power Save - Soft Off"}
            10 {"Power save — soft off"}

            default {"Unknown Value"}
         }     
     write-output "Power State: " $powerstate
      

$computer = gwmi Win32_ComputerSystem | select thermalstate
#Returns Thermal State rather than a value
$thermalstate = switch ($computer) 
         {
            1 {"Other"}
            2 {"Unknown"}
            3 {"Safe"}
            4 {"Warning"}
            5 {"Critical"}
            6 {"Non-recoverable"}
           
            default {"Unknown Value"}
         }           
     write-output "Thermal State: " $thermalstate
      

$computer = gwmi Win32_ComputerSystem | select wakeuptype
#Returns Wake Up Type rather than a value
$wakeuptype = switch ($computer) 
         {
            0 {"Reserved"}
            1 {"Other"}
            2 {"Unknown"}
            3 {"APM Timer"}
            4 {"Modem Ring"}
            5 {"LAN Remote"}
            6 {"Power Switch"}
            7 {"PCI PME#"}
            8 {"AC Power Restore"}
           
            default {"Unknown Value"}
         } 
     write-output "Wakeup Type: " $wakeuptype
      

$computer = gwmi Win32_OperatingSystem
#Info on the computer's OS
write-output "Install Date: " $computer.ConvertToDateTime($computer.InstallDate) 


$computer = gwmi Win32_OperatingSystem
#Returns the OS type rather than a value

$operatingsystemsku = switch ($computer.operatingsystemsku) 
         {
            0 {"product Undefined"}
            1 {"Ultimate"}
            2 {"Home Basic"}
            3 {"Home Premium"}
            4 {"Enterprise"}
            5 {"Home Basic N"}
            6 {"Business"}
            7 {"Server Standard (Desktop Exp. Install)"}
            8 {"Server Datacentre (Desktop Exp. Install)"}
            9 {"Small Business Server"}
            10 {"Enterprise Server"}
            11 {"Starter"}
            12 {"Datacentre Server Core"}
            13 {"Standard Server Core"}
            14 {"Entreprise Server Core"}
            17 {"Web Server"}
            19 {"Home Server"}
            20 {"Storage Express Server"}
            21 {"Storage Server Standard (Desktop Exp. Install)"}
            22 {"Storage Server Workgroup (Desktop Exp. Install)"}
            23 {"Storage Enterprise Server"}
            24 {"Server for Small Business"}
            25 {"Small Business Server Premium"}
            27 {"Enterprise"}
            28 {"Ultimate"}
            29 {"Server Web Server (Server Core Install)"}
            36 {"Server Standard without Hyper-V"}
            37 {"Server Datacentre without Hyper-V (Full Install)"}
            38 {"Server Enterprise without Hyper-V (Full Install)"}
            39 {"Server Datacentre without Hyper-V (Server Core Install)"}
            40 {"Server Standard without Hyper-V (Server Core Install)"}
            41 {"Server Enterprise without Hyper-V (Server Core Install)"}
            43 {"Server Express (Server Core Install)"}
            44 {"Storage Server Standard (Server Core Install)"}
            45 {"Storage Server Workgroup (Server Core Install)"}
            46 {"Storage Server Enterprise (Server Core Install)"}
            50 {"Server Essentials (Desktop Exp. Install)"}
            63 {"Small Business Server Premium (Server Core Install)"}
            97 {"RT"}
            101 {"Home"}
            103 {"Pro with Media Centre"}
            104 {"Mobile"}
            123 {"IoT Core"}
            143 {"Sever Datacentre (Nano Server Install)"}
            144 {"Server Standard (Nano Server Install)"}
            147 {"Server Datacentre (Server Core Install)"}
            148 {"Server Standard (Server Core Install)"}
           
            default {"Unknown Value"}
         }      
     write-output "Operating System SKU: " $operatingsystemsku

$computer = gwmi Win32_OperatingSystem
write-output "Last Boot Up Time: " $computer.ConvertToDateTime($computer.LastBootUpTime) 

$computer = gwmi Win32_OperatingSystem | select numberofusers, OSArchitecture, SerialNumber, ServicePackMajorVersion, ServicePackMinorVersion, SystemDevice, TotalVirtualMemorySize, TotalVisibleMemorySize, Version, BuildNumber, BuildType, Caption, FreePhysicalMemory, FreeSpaceInPagingFiles, FreeVirtualMemory

write-output $computer


$computer = gwmi Win32_Processor | select CurrentVoltage, MaxClockSpeed, Revision, Description, Family, L2CacheSize, L3CacheSize, Name, NumberOfCores, NumberOfEnabledCore, NumberofLogicalProcessors, ProcessorId
write-output $computer

$computer = gwmi win32_physicalmemory | select formfactor
#Returns the type of memory in the computer
$formfactor = switch ($computer) 
         {
            0 {"Unknown"}
            1 {"Other"}
            2 {"SIP"}
            3 {"DIP"}
            4 {"ZIP"}
            5 {"SOJ"}
            6 {"Proprietary"}
            7 {"SIMM"}
            8 {"DIMM"} 
            9 {"TSOP"}
            10 {"PGA"}
            11 {"RIMM"}
            12 {"SODIMM"}
            13 {"SRIMM"}
            14 {"SMD"}
            15 {"SSMP"}
            16 {"QFP"}
            17 {"TQFP"}
            18 {"SOIC"}
            19 {"LCC"}
            20 {"PLCC"}
            21 {"BGA"}
            22 {"FPBGA"}
            23 {"LGA"}
            default {"Unknown Value"}
         }  
     write-output "Memory Form Factor: " $formfactor
      
#Returns the Microsoft Drivers installed
$NonMsDrivers = gwmi Win32_PnPSignedDriver | select devicename, driverversion, DeviceID | ft -Wrap | Where-Object -FilterScript {$_.DriverProviderName -ne "Microsoft"} 
Write-Output $NonMsDrivers 

#Returns Installed software
$Win32_Programs = gwmi Win32_Product | select Name, Version, PackageName, InstallDate | ft -Wrap
Write-Output $Win32_Programs 

}
