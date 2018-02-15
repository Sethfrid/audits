<#
.\synopsis
Gets basic info for the computer
.\description
Provides computer system information
Operating system information
Process information
To get the information to screen need to use $info
.examples
Name                           Value                                                        ----                           -----                                                        Computer name                  LON-DC1                                                      Domain                         Adatum.com                                                   User Name                                                                                   Manufacturer                   Microsoft Corporation                                        Model                          Virtual Machine                                              Numer of Processors            1                                                            Total Physical Memory          2147012608                                                   Part of Domain                 True                                                         System Type                    x64-based PC                                                 Boot up State                  Normal boot                                                  Date of Install                10/18/2016 12:12:53 PM                                       Hypervisor Present             True                                                         Domain Role                    Primary Domain Controller                                    PC System Type                 Desktop                                                      Power Supply State             Safe                                                         Power State                    Unknown                                                      Thermal State                  Other                                                        Wakeup Type                    Power Switch                                                 OS Version                     10.0.14393                                                   OS Build Number                14393                                                        OS Build Type                  Multiprocessor Free                                          OS Architecture                64-bit                                                       OS Serial Number               00377-10000-00000-AA360                                      Service Pack Major version     0                                                            Service Pack Minor Version     0                                                            Free Physical Memory           1040288                                                      Free Space in Paging Files     144348                                                       Total Virtual Memory Size      2293300                                                      Total Visible Memory Size      2096692                                                      Free Virtual Memory            1143664                                                      Last bootup time               2/14/2018 5:19:59 AM                                         Number of Users                5                                                            System Device                  \Device\HarddiskVolume2                                      Caption                        Microsoft Windows Server 2016 Datacenter Evaluation          OS SKU Code                    Unknown Value - Check MS for updated list                    Current Voltage Setting        {$null, $null, $null, $null...}                              Max Clock Speed                {$null, $null, $null, $null...}                              Processor Revision             {$null, $null, $null, $null...}                              Processor Description          {System Idle Process, System, smss.exe, csrss.exe...}        Processor Family               {$null, $null, $null, $null...}                              Processor L2 Cache Size        {$null, $null, $null, $null...}                              Processor L3 Cache Size        {$null, $null, $null, $null...}                              Processor Name                 {System Idle Process, System, smss.exe, csrss.exe...}        Number of Cores                {$null, $null, $null, $null...}                              No. of Logical Processors      {$null, $null, $null, $null...}                              Processor ID                   {$null, $null, $null, $null...}                              Processor Form Factor          Unknown Value - Check MS for updated list  

#>

[cmdletbinding()]
param(
        [Parameter(Mandatory=$True)]
        [string]$compname
     )

$CS = gwmi win32_computersystem -cn $compname
$OS = gwmi win32_operatingsystem -cn $compname
$Proc = gwmi win32_process -cn $compname

$info = [ordered] @{
          "Computer name"              = $CS.PSComputername
          "Domain"                     = $CS.Domain 
          "User Name"                  = $CS.Username
          "Manufacturer"               = $CS.Manufacturer
          "Model"                      = $CS.Model
          "Numer of Processors"        = $CS.NumberOfProcessors
          "Total Physical Memory"      = $CS.TotalPhysicalMemory
          "Part of Domain"             = $CS.PartOfDomain
          "System Type"                = $CS.SystemType
          "Boot up State"              = $CS.BootupState 
          "Date of Install"            = $OS.ConvertToDateTime($OS.InstallDate)
          "Hypervisor Present"         = $CS.hypervisorpresent
          "Domain Role"                = $DR = switch ($CS.domainrole) 
                                         {
                                            0 {"Standalone Workstation"}
                                            1 {"Member Workstation"}
                                            2 {"Standalone Server"}
                                            3 {"Member Server"}
                                            4 {"Backup Domain Controller"}
                                            5 {"Primary Domain Controller"}
                                            default {"Unknown Value - Check MS for updated list"}
                                         }  
          "PC System Type"             = $PCST = switch ($CS.pcsystemtype) 
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
          "Power Supply State"         = $PSS = switch ($CS.powersupplystate) 
                                         {
                                            1 {"Other"}
                                            2 {"Unknown"}
                                            3 {"Safe"}
                                            4 {"Warning"}
                                            5 {"Critical"}
                                            6 {"Non-Recoverable "}
                                            default {"Unknown Value - Check MS for updated list"}
                                         }                          
          "Power State"                = $PS = switch ($CS.powerstate) 
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
          "Thermal State"              = $TS = switch ($CS.thermalstate) 
                                         {
                                            1 {"Other"}
                                            2 {"Unknown"}
                                            3 {"Safe"}
                                            4 {"Warning"}
                                            5 {"Critical"}
                                            6 {"Non-recoverable"}
                                              default {"Unknown Value - Check MS for updated list"}
                                         }     
          "Wakeup Type"                = $WT = switch ($CS.wakeuptype) 
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
          "OS Version"                 = $OS.version
          "OS Build Number"            = $OS.buildnumber
          "OS Build Type"              = $OS.buildtype
          "OS Architecture"            = $OS.osarchitecture
          "OS Serial Number"           = $OS.serialnumber
          "Service Pack Major version" = $OS.servicepackmajorversion
          "Service Pack Minor Version" = $OS.servicepackminorversion
          "Free Physical Memory"       = $OS.FreePhysicalMemory  
          "Free Space in Paging Files" = $OS.freespaceinpagingfiles 
          "Total Virtual Memory Size"  = $OS.totalvirtualmemorysize 
          "Total Visible Memory Size"  = $OS.totalvisiblememorysize 
          "Free Virtual Memory"        = $OS.freevirtualmemory
          "Last bootup time"           = $OS.ConvertToDateTime($OS.lastbootuptime)
          "Number of Users"            = $OS.numberofusers
          "System Device"              = $OS.systemdevice
          "Caption"                    = $OS.caption
          "OS SKU Code"                = $SKU = switch ($OS.operatingsystemsku)
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
          "Current Voltage Setting"    = $Proc.currentvoltage 
          "Max Clock Speed"            = $Proc.maxclockspeed
          "Processor Revision"         = $Proc.revision
          "Processor Description"      = $Proc.description
          "Processor Family"           = $Proc.family
          "Processor L2 Cache Size"    = $Proc.l2cachesize
          "Processor L3 Cache Size"    = $Proc.l3cachesize
          "Processor Name"             = $Proc.name
          "Number of Cores"            = $Proc.numberofcores
          "No. of Logical Processors"  = $Proc.numberoflogicalprocessors
          "Processor ID"               = $Proc.processorid
          "Processor Form Factor"      = $FF = switch ($Win32_Proc.formfactor) 
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
