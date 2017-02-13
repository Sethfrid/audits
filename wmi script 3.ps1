###########Win32_ComputerSystem

$Win32_ComputerSystem = Get-WmiObject -Class Win32_ComputerSystem

$Win32_ComputerSystem__PSComputerName = $Win32_ComputerSystem.PSComputerName 
$Win32_ComputerSystem__Domain = $Win32_ComputerSystem.Domain
$Win32_ComputerSystem__Username = $Win32_ComputerSystem.Username
$Win32_ComputerSystem__Manufacturer = $Win32_ComputerSystem.Manufacturer
$Win32_ComputerSystem__Model = $Win32_ComputerSystem.Model
$Win32_ComputerSystem__NumberOfProcessors = $Win32_ComputerSystem.NumberOfProcessors
$Win32_ComputerSystem__TotalPhysicalMemory = $Win32_ComputerSystem.TotalPhysicalMemory
$Win32_ComputerSystem__PartOfDomain = $Win32_ComputerSystem.PartOfDomain
$Win32_ComputerSystem__SystemType = $Win32_ComputerSystem.SystemType
$Win32_ComputerSystem__BootUpState = $Win32_ComputerSystem.BootupState
$Win32_ComputerSystem__InstallDate = $Win32_ComputerSystem.ConvertToDateTime($Win32_OperatingSystem.InstallDate) 


if ($Win32_ComputerSystem.domainrole)
{
$Win32_ComputerSystem__domainrole = switch ($Win32_ComputerSystem.domainrole) 
         {
            0 {"Standalone Workstation"}
            1 {"Member Workstation"}
            2 {"Standalone Server"}
            3 {"Member Server"}
            4 {"Backup Domain Controller"}
            5 {"Primary Domain Controller"}
                       
            default {"Unknown Value - Check MS for updated list"}
         }       
}
    else
        {
        $Win32_ComputerSystem__domainrole = "Null Data"
        }
  

if ($Win32_ComputerSystem.pcsystemtype)
{
$Win32_ComputerSystem__PCSystemType = switch ($Win32_ComputerSystem.pcsystemtype) 

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
 }
    else
        {
        $Win32_ComputerSystem__PCSystemType = "Null Data"
        }


if ($Win32_ComputerSystem.powersupplystate)
{
$Win32_ComputerSystem__PowerSupplyState = switch ($Win32_ComputerSystem.powersupplystate) 
         {
            1 {"Other"}
            2 {"Unknown"}
            3 {"Safe"}
            4 {"Warning"}
            5 {"Critical"}
            6 {"Non-Recoverable "}
            default {"Unknown Value - Check MS for updated list"}
         }   
 }
    else
        {
        $Win32_ComputerSystem__PowerSupplyState = "Null Data"
        }
      

if ($Win32_ComputerSystem.powerstate)
{
$Win32_ComputerSystem__PowerState = switch ($Win32_ComputerSystem.powerstate) 
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
}
    else
        {
        $Win32_ComputerSystem__PowerState = "Null Data"
        }      


if ($Win32_ComputerSystem.thermalstate)
{
$Win32_ComputerSystem__ThermalState = switch ($Win32_ComputerSystem.thermalstate) 
         {
            1 {"Other"}
            2 {"Unknown"}
            3 {"Safe"}
            4 {"Warning"}
            5 {"Critical"}
            6 {"Non-recoverable"}
           
            default {"Unknown Value - Check MS for updated list"}
         }           
 }
    else
        {
        $Win32_ComputerSystem__ThermalState = "Null Data"
        }      


if ($Win32_ComputerSystem.wakeuptype)
{
$Win32_ComputerSystem__WakeUpType = switch ($Win32_ComputerSystem.wakeuptype) 
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
}
    else
        {
        $Win32_ComputerSystem__WakeUpType = "Null Data"
        }       




###########Win32_OperatingSystem



$Win32_OperatingSystem = Get-WmiObject -Class Win32_OperatingSystem

$Win32_OperatingSystem__FreePhysicalMemory = $Win32_OperatingSystem.FreePhysicalMemory 
$Win32_OperatingSystem__FreeSpaceInPagingFiles = $Win32_OperatingSystem.FreeSpaceInPagingFiles
$Win32_OperatingSystem__FreeVirtualMemory = $Win32_OperatingSystem.FreeVirtualMemory
$Win32_OperatingSystem__LastBootUpTime = $Win32_OperatingSystem.ConvertToDateTime($Win32_OperatingSystem.LastBootUpTime) 
$Win32_OperatingSystem__NumberOfUsers = $Win32_OperatingSystem.NumberOfUsers
$Win32_OperatingSystem__OSArchitecture = $Win32_OperatingSystem.OSArchitecture
$Win32_OperatingSystem__SerialNumber = $Win32_OperatingSystem.SerialNumber
$Win32_OperatingSystem__ServicePackMajorVersion = $Win32_OperatingSystem.ServicePackMajorVersion
$Win32_OperatingSystem__ServicePackMinorVersion = $Win32_OperatingSystem.ServicePackMinorVersion
$Win32_OperatingSystem__SystemDevice = $Win32_OperatingSystem.SystemDevice
$Win32_OperatingSystem__TotalVirtualMemorySize = $Win32_OperatingSystem.TotalVirtualMemorySize
$Win32_OperatingSystem__TotalVisibleMemorySize = $Win32_OperatingSystem.TotalVisibleMemorySize
$Win32_OperatingSystem__Version = $Win32_OperatingSystem.Version
$Win32_OperatingSystem__BuildNumber = $Win32_OperatingSystem.BuildNumber
$Win32_OperatingSystem__BuildType = $Win32_OperatingSystem.BuildType
$Win32_OperatingSystem__Caption = $Win32_OperatingSystem.Caption


if ($Win32_ComputerSystem.operatingsystemsku)
{
$Win32_OperatingSystem__OperatingSystemSKU = switch ($Win32_OperatingSystem.operatingsystemsku) 
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
}
    else
        {
        $Win32_OperatingSystem__OperatingSystemSKU = "Null Data"
        } 




###########Win32_Processor


$Win32_Processor = Get-WmiObject -Class Win32_Processor

$Win32_Processor__CurrentVoltage = $Win32_Processor.CurrentVoltage
$Win32_Processor__MaxClockSpeed = $Win32_Processor.MaxClockSpeed
$Win32_Processor__Revision = $Win32_Processor.Revision
$Win32_Processor__Description = $Win32_Processor.Description
$Win32_Processor__Family = $Win32_Processor.Family
$Win32_Processor__L2CacheSize = $Win32_Processor.L2CacheSize
$Win32_Processor__L3CacheSize = $Win32_Processor.L3CacheSize
$Win32_Processor__Name = $Win32_Processor.Name
$Win32_Processor__NumberOfCores = $Win32_Processor.NumberOfCores
$Win32_Processor__NumberOfLogicalProcessors = $Win32_Processor.NumberOfLogicalProcessors 
$Win32_Processor__ProcessorID = $Win32_Processor.ProcessorId


if ($Win32_ComputerSystem.formfactor)
{
$Win32_Processor__FormFactor = switch ($Win32_Processor.formfactor) 
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
}
    else
        {
        $Win32_Processor__FormFactor = "Null Data"
        } 
      


###########win32_PhysicalMemory Class



$Win32_PhysicalMemory = get-wmiobject -class win32_PhysicalMemory

      
if ($Win32_PhysicalMemory.count -ge "1")
{
foreach ($memorymodule in $PhysicalMemory)

{
$Win32_PhysicalMemory__PartNumber = $memorymodule.PartNumber
$Win32_PhysicalMemory__PositionInRow = $memorymodule.PositionInRow
$Win32_PhysicalMemory__SerialNumber = $memorymodule.SerialNumber
$Win32_PhysicalMemory__Manufacturer = $memorymodule.Manufacturer
$Win32_PhysicalMemory__DeviceLocator = $memorymodule.DeviceLocator
$Win32_PhysicalMemory__Capacity = $memorymodule.Capacity
}
}



###########Win32_PNPSignedDrivers



$Win32_PNPSignedDriver__NonMsDrivers = Get-WmiObject -class Win32_PnPSignedDriver | select devicename, driverversion, DeviceID | ft -Wrap | Where-Object -FilterScript {$_.DriverProviderName -ne "Microsoft"} 



###########Win32_Product


$Win32_Product__Programs = Get-WmiObject -class Win32_Product | select Name, Version, PackageName, InstallDate | ft -Wrap

