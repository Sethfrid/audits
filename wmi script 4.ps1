"$(Get-Date -format F) Start logging"

###########Win32_ComputerSystem

$Win32_ComputerSystem = gwmi Win32_ComputerSystem

$PSComputerName = (gwmi win32_computersystem).PSComputername
$Domain = (gwmi win32_computersystem).Domain
$Username = (gwmi win32_computersystem).Username
$Manufacturer = (gwmi win32_computersystem).Manufacturer
$Model = (gwmi win32_computersystem).Model
$NumberOfProcessors = (gwmi win32_computersystem).NumberOfProcessors
$TotalPhysicalMemory = (gwmi win32_computersystem).TotalPhysicalMemory
$PartOfDomain = (gwmi win32_computersystem).PartOfDomain
$SystemType = (gwmi win32_computersystem).SystemType
$BootUpState = (gwmi win32_computersystem).BootupState
$InstallDate = $Win32_ComputerSystem.ConvertToDateTime($Win32_OperatingSystem.InstallDate) 

$domainrole = switch ($Win32_ComputerSystem.domainrole) 

         {
            0 {"Standalone Workstation"}
            1 {"Member Workstation"}
            2 {"Standalone Server"}
            3 {"Member Server"}
            4 {"Backup Domain Controller"}
            5 {"Primary Domain Controller"}
                       
            default {"Unknown Value - Check MS for updated list"}
         }       

$PCSystemType = switch ($Win32_ComputerSystem.pcsystemtype) 

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
           
            default {"Unknown Value - Check MS for updated list"}
         } 

$PowerSupplyState = switch ($Win32_ComputerSystem.powersupplystate) 

         {
            1 {"Other"}
            2 {"Unknown"}
            3 {"Safe"}
            4 {"Warning"}
            5 {"Critical"}
            6 {"Non-Recoverable "}
            default {"Unknown Value - Check MS for updated list"}
         }   
      
$PowerState = switch ($Win32_ComputerSystem.powerstate) 

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

            default {"Unknown Value - Check MS for updated list"}
         }     
     
$ThermalState = switch ($Win32_ComputerSystem.thermalstate) 

         {
            1 {"Other"}
            2 {"Unknown"}
            3 {"Safe"}
            4 {"Warning"}
            5 {"Critical"}
            6 {"Non-recoverable"}
           
            default {"Unknown Value - Check MS for updated list"}
         }           
    
$WakeUpType = switch ($Win32_ComputerSystem.wakeuptype) 

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
           
            default {"Unknown Value - Check MS for updated list"}
         } 
      

###########Win32_OperatingSystem


$Win32_OperatingSystem = gwmi Win32_OperatingSystem

$FreePhysicalMemory = (gwmi win32_operatingsystem).FreePhysicalMemory 
$FreeSpaceInPagingFiles = (gwmi win32_operatingsystem).FreeSpaceInPagingFiles
$FreeVirtualMemory = (gwmi win32_operatingsystem).FreeVirtualMemory
$LastBootUpTime = $Win32_OperatingSystem.ConvertToDateTime($Win32_OperatingSystem.LastBootUpTime) 
$NumberOfUsers = (gwmi win32_operatingsystem).NumberOfUsers
$OSArchitecture = (gwmi win32_operatingsystem).OSArchitecture
$SerialNumber = (gwmi win32_operatingsystem).SerialNumber
$ServicePackMajorVersion = (gwmi win32_operatingsystem).ServicePackMajorVersion
$ServicePackMinorVersion = (gwmi win32_operatingsystem).ServicePackMinorVersion
$SystemDevice = (gwmi win32_operatingsystem).SystemDevice
$TotalVirtualMemorySize = (gwmi win32_operatingsystem).TotalVirtualMemorySize
$TotalVisibleMemorySize = (gwmi win32_operatingsystem).TotalVisibleMemorySize
$Version = (gwmi win32_operatingsystem).Version
$BuildNumber = (gwmi win32_operatingsystem).BuildNumber
$BuildType = (gwmi win32_operatingsystem).BuildType
$Caption = (gwmi win32_operatingsystem).Caption


$OperatingSystemSKU = switch ($Win32_OperatingSystem.operatingsystemsku) 

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
            42 {"Hyper-V Server"}
            43 {"Server Express (Server Core Install)"}
            44 {"Storage Server Standard (Server Core Install)"}
            45 {"Storage Server Workgroup (Server Core Install)"}
            46 {"Storage Server Enterprise (Server Core Install)"}
            50 {"Server Essentials (Desktop Exp. Install)"}
            63 {"Small Business Server Premium (Server Core Install)"}
            64 {" Cluster Server without Hyper-V"}
            97 {"RT"}
            101 {"Home"}
            103 {"Pro with Media Centre"}
            104 {"Mobile"}
            123 {"IoT Core"}
            143 {"Sever Datacentre (Nano Server Install)"}
            144 {"Server Standard (Nano Server Install)"}
            147 {"Server Datacentre (Server Core Install)"}
            148 {"Server Standard (Server Core Install)"}
           
            default {"Unknown Value - Check MS for updated list"}
         }      


###########Win32_Processor


$Win32_Processor = gwmi Win32_Processor

$CurrentVoltage = (gwmi win32_processor).CurrentVoltage
$MaxClockSpeed = (gwmi win32_processor).MaxClockSpeed
$Revision = (gwmi win32_processor).Revision
$Description = (gwmi win32_processor).Description
$Family = (gwmi win32_processor).Family
$L2CacheSize = (gwmi win32_processor).L2CacheSize
$L3CacheSize = (gwmi win32_processor).L3CacheSize
$Name = (gwmi win32_processor).Name
$NumberOfCores = (gwmi win32_processor).NumberOfCores
$NumberOfLogicalProcessors = (gwmi win32_processor).NumberOfLogicalProcessors 
$ProcessorID = (gwmi win32_processor).ProcessorId


$FormFactor = switch ($Win32_Processor.formfactor) 

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
            default {"Unknown Value - Check MS for updated list"}
         }  
      

###########win32_PhysicalMemory Class


$Win32_PhysicalMemory = gwmi win32_PhysicalMemory

      
if ($Win32_PhysicalMemory.count -ge "1")

{
foreach ($memorymodule in $PhysicalMemory)

{
$PartNumber = $memorymodule.PartNumber
$PositionInRow = $memorymodule.PositionInRow
$SerialNumber = $memorymodule.SerialNumber
$Manufacturer = $memorymodule.Manufacturer
$DeviceLocator = $memorymodule.DeviceLocator
$Capacity = $memorymodule.Capacity
}

}


###########Win32_PNPSignedDrivers


$NonMsDrivers = Get-WmiObject -class Win32_PnPSignedDriver | select devicename, driverversion, DeviceID | ft -Wrap | Where-Object -FilterScript {$_.DriverProviderName -ne "Microsoft"} 


###########Win32_Product


$Programs = Get-WmiObject -class Win32_Product | select Name, Version, PackageName, InstallDate | ft -Wrap