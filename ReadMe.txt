====================================================================================================
   Online KMS Activation:
====================================================================================================

 - This Online KMS Activation script is clean from anti virus detection.
 - This script skips the activation of any permanently/KMS38 activated product.
 - KMS activate Windows /Server /Office for 180 Days.(For core/ProWMC edition it is 30 to 45 Days)
 - This KMS script can activate both Retail and VL Windows / Server installation.
 - This KMS script can activate VL office, not the Retail office. 
   - To convert Retail office to VL, use the converter 'C2R-R2V' by @abbodi1406
     https://forums.mydigitallife.net/posts/1150042 

   - Or directly install Office 2019 as VL, use the installer 'YAOCTRI' by @abbodi1406
     https://forums.mydigitallife.net/posts/1479890

 - To activate Windows /Server /Office with online KMS for 180 days, Right click on the file 
   Online_KMS_Activation.cmd and select 'Run as Administrator'.

 - For Lifetime Activation:
   - Run Create_Renewal_Task.cmd file in Create Task folder. Done.
   - Run Create_Renewal_And_Activation_Task.cmd file when you want to establish lifetime activation 
     and want the system to auto activate later when its connected to the Internet.

   - How it works?
     - Both tasks create files in the folder "C:\Windows\online_KMS_Activation_Script"
       and create their scheduled task.
     - Renewal task automatically run once in a week (only if connected to the Internet) and 
       renews registered KMS server and activation of installed products.
     - For uninterrupted activation experience system must connect to the Internet at least once 
       in a six months.
     - Activation Task will run when you login in the system and connected to the Internet.
       After successful activation, The activation task will delete itself.

 - This Online KMS Activation provides immediate global activation for Windows 8.1 and 10, which 
   means that in the following three scenarios, the system will self-activate when connected to the 
   Internet, and that users will not need to manually run the activation script again.

   Scenario 1: Subsequent installation or alteration of any 2013, 2016, or 2019 Volume License 
               (VL) Office product.
   Scenario 2: Windows edition change (with GVLK).
   Scenario 3: Date change, system hardware change, etc.

 - What is left in the system in activation process?
   - Online_KMS_Activation.cmd
     After activation, it leaves only the kms server name in the registry Which helps you to get
     above mentioned global activation feature.

   - Online_KMS_Activation-No Remnants.cmd
     After activation it leaves nothing in the system, but user can't benefit from the global 
     activation feature.

   - Renewal task / Activation Task
     It stores KMS server name in the registry + create scheduled task(s) and stores some files in 
     "C:\Windows\online_KMS_Activation_Script" folder.

 - This script includes the most-stable KMS servers (6+) list. The server selection process is 
   fully automatic. You don't need to worry about the server's availability.
 - If your system date is incorrect (beyond 180 days) and you are offline, the system will be 
   deactivated, but will automatically reactivate when you correct the system date. 

 - Why should you choose the Online KMS activation method over offline KMS?
 - The main benefit of Online KMS activation is that it is 100% clean from any antivirus detection 
   (always will be), but all offline KMS have antivirus detections.
   So this is for those who don't like/have difficulties/trust issue in offline KMS because of its 
   binary files and antirus detections.
   
   Anyway if you prefer offline KMS then checkout an open source activator, 
   @abbodi1406's KMS_VL_ALL   https://forums.mydigitallife.net/posts/838808

====================================================================================================
   Supported Products:
====================================================================================================

   Supported Volume Products:

   - Windows 7 (Enterprise/N/E, Professional/N/E, Embedded Standard/POSReady/ThinPC)
   - Windows 8 / 8.1 / 10 (All Official Editions, except Windows 10 S)
   - Windows Server 2008R2 / 2012 / 2012R2 / 2016 / 2019
   - Office Volume 2010 / 2013 / 2016 / 2019


   Unsupported Products:  
   - Office Retail  
   - Windows Evaluation Editions  
   - Non-Volume Windows 7 Editions (Starter, HomeBasic, HomePremium, Ultimate)  
   - Non-Volume Windows 10 Editions (IoTEnterprise, IoTEnterpriseS, ProfessionalSingleLanguage, ProfessionalCountrySpecific... etc)  
   - Non-Volume Windows Server Editions (Server Foundation, Storage Server, Home Server 2011... etc)    


Note - KMS Activation works in all (MBR, GPT, UEFI, BIOS) systems.

====================================================================================================
   Switches in the Script:
====================================================================================================

 - To run the scripts in unattended mode, search "set Unattended=" in the scripts and change the 
   value from 0 to 1.

 - To run the scripts in Debug mode to find out the cause of erros in activation or just details,
   search "set _Debug=" in the scripts and change the value from 0 to 1. 

 - To replace KMS38 activation with KMS activation, search "set KMS38=" in the scripts and change 
   the value from 1 to 0. 

 - To change the KMS servers list in the scripts, search "set "servers=" in the scripts, make sure 
   to leave a space between servers name.

====================================================================================================
   Manual Activation Process:
====================================================================================================

 - Prerequisite:

   online Public KMS Server List: 

   kms.srv.crsoo.com
   dimanyakms.sytes.net
   kms.digiboy.ir
   kms8.MSGuides.com
   kms9.MSGuides.com
   kms.library.hk
   kms.03k.org
   
   Note - Last two servers are Chinese and Chinese websites don't work properly with VPN connection.

   Generic Volume License Key (GVLK):
   Thanks to @abbodi1406 for the Key collection.

        GVLK                        Edition                
   
   Windows 10
   
   TX9XD-98N7V-6WMQ6-BX7FG-H8Q99    Home
   3KHY7-WNT83-DGQKR-F7HPR-844BM    Home N
   7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH    Home Single Language
   PVMJN-6DFY6-9CCP6-7BKTT-D3WVR    Home China
   W269N-WFGWX-YVC9B-4J6C9-T83GX    Pro
   MH37W-N47XK-V7XM9-C7227-GCQG9    Pro N
   6TP4R-GNPTD-KYYHQ-7B7DP-J447Y    Pro Education
   YVWGF-BXNMC-HTQYQ-CPQ99-66QFC    Pro Education N
   NRG8B-VKK3Q-CXVCJ-9G2XF-6Q84J    Pro Workstation
   9FNHH-K3HBT-3W4TD-6383H-6XYWF    Pro Workstation N
   NW6C2-QMPVW-D7KKK-3GKT6-VCFB2    Education
   2WH4N-8QGBV-H22JP-CT43Q-MDWWJ    Education N
   NPPR9-FWDCX-D2C8J-H872K-2YT43    Enterprise
   DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4    Enterprise N
   YYVX9-NTFWV-6MDM3-9PT4T-4M68B    Enterprise G
   44RPN-FTY23-9VTTB-MP9BX-T84FV    Enterprise G N
   WNMTR-4C88C-JK8YV-HQ7T2-76DF9    Enterprise 2015 LTSB
   2F77B-TNFGY-69QQF-B8YKP-D69TJ    Enterprise 2015 LTSB N
   DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ    Enterprise 2016 LTSB
   QFFDN-GRT3P-VKWWX-X7T3R-8B639    Enterprise 2016 LTSB N
   M7XTQ-FN8P6-TTKYV-9D4CC-J462D    Enterprise LTSC 2019
   92NFX-8DJQP-P6BBQ-THF9C-7CG2H    Enterprise LTSC 2019 N
   CPWHC-NT2C7-VYW78-DHDB2-PG3GK    Enterprise for Virtual Desktops
   7NBT4-WGBQX-MP4H7-QXFF8-YP3KX    Remote Server
   NBTWJ-3DR69-3C4V8-C26MC-GQ9M6    Lean
   
   Windows 8.1
   
   M9Q9P-WNJJT-6PXPY-DWX8H-6XWKK    Core
   7B9N3-D94CG-YTVHR-QBPX3-RJP64    Core N
   BB6NG-PQ82V-VRDPW-8XVD2-V8P66    Core Single Language
   NCTT7-2RGK8-WMHRF-RY7YQ-JTXG3    Core China
   XYTND-K6QKT-K2MRH-66RTM-43JKP    Core ARM
   GCRJD-8NW9H-F2CDX-CCM8D-9D6T9    Pro
   HMCNV-VVBFX-7HMBH-CTY9B-B4FXY    Pro N
   789NJ-TQK6T-6XTH8-J39CJ-J8D3P    Pro with Media Center
   MHF9N-XY6XB-WVXMC-BTDCT-MKKG7    Enterprise
   TT4HM-HN7YT-62K67-RGRQJ-JFFXW    Enterprise N
   NMMPB-38DD4-R2823-62W8D-VXKJB    Embedded Industry Pro
   FNFKF-PWTVT-9RC8H-32HB2-JB34X    Embedded Industry Enterprise
   VHXM3-NR6FT-RY6RT-CK882-KW2CJ    Embedded Industry Automotive
   3PY8R-QHNP9-W7XQD-G6DPH-3J2C9    with Bing
   Q6HTR-N24GM-PMJFP-69CD8-2GXKR    with Bing N
   KF37N-VDV38-GRRTV-XH8X6-6F3BB    with Bing Single Language
   R962J-37N87-9VVK2-WJ74P-XTMHR    with Bing China
   MX3RK-9HNGX-K3QKC-6PJ3F-W8D7B    Pro for Students
   TNFGH-2R6PB-8XM3K-QYHX2-J4296    Pro for Students N
   
   Windows 8
   
   BN3D2-R7TKB-3YPBD-8DRP2-27GG4    Core
   8N2M2-HWPGY-7PGT9-HGDD8-GVGGY    Core N
   2WN2H-YGCQR-KFX6K-CD6TF-84YXQ    Core Single Language
   4K36P-JN4VD-GDC6V-KDT89-DYFKP    Core China
   DXHJF-N9KQX-MFPVR-GHGQK-Y7RKV    Core ARM
   NG4HW-VH26C-733KW-K6F98-J8CK4    Pro
   XCVCF-2NXM9-723PB-MHCB7-2RYQQ    Pro N
   GNBB8-YVD74-QJHX6-27H4K-8QHDG    Pro with Media Center
   32JNW-9KQ84-P47T8-D8GGY-CWCK7    Enterprise
   JMNMF-RHW7P-DMY6X-RF3DR-X2BQT    Enterprise N
   RYXVT-BNQG7-VD29F-DBMRY-HT73M    Embedded Industry Pro
   NKB3R-R2F8T-3XCDP-7Q2KW-XWYQ2    Embedded Industry Enterprise
   
   Windows 7
   
   FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4    Professional
   MRPKT-YTG23-K7D7T-X2JMM-QY7MG    Professional N
   W82YF-2Q76Y-63HXB-FGJG9-GF7QX    Professional E
   33PXH-7Y6KF-2VJC9-XBBR8-HVTHH    Enterprise
   YDRBP-3D83W-TY26F-D46B2-XCKRJ    Enterprise N
   C29WB-22CC8-VJ326-GHFJW-H9DH4    Enterprise E
   YBYF6-BHCR3-JPKRB-CDW7B-F9BK4    Embedded POSReady 7
   XGY72-BRBBT-FF8MH-2GG8H-W7KCW    Embedded Standard
   73KQT-CD9G6-K7TQG-66MRP-CQ22C    Embedded ThinPC
   
   Windows Server 2019
   
   N69G4-B89J2-4G8F4-WWYCC-J464C    Standard
   WMDGN-G9PQG-XVVXX-R3X43-63DFG    Datacenter
   WVDHN-86M7X-466P6-VHXV7-YY726    Essentials
   FDNH6-VW9RW-BXPJ7-4XTYG-239TB    Azure Core
   N2KJX-J94YW-TQVFB-DG9YT-724CC    Standard ACor
   6NMRW-2C8FM-D24W7-TQWMY-CWH2D    Datacenter ACor
   GRFBW-QNDC4-6QBHG-CCK3B-2PR88    ServerARM64
   
   Windows Server 2016
   
   WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY    Standard
   CB7KF-BWN84-R7R2Y-793K2-8XDDG    Datacenter
   JCKRF-N37P4-C2D82-9YXRT-4M63B    Essentials
   QN4C6-GBJD2-FB422-GHWJK-GJG2R    Cloud Storage
   VP34G-4NPPG-79JTQ-864T4-R3MQX    Azure Core
   PTXN8-JFHJM-4WC78-MPCBR-9W4KR    Standard ACor
   2HXDN-KRXHB-GPYC7-YCKFJ-7FVDG    Datacenter ACor
   K9FYF-G6NCK-73M32-XMVPY-F9DRR    ServerARM64
   
   Windows Server 2012 R2
   
   D2N9P-3P6X9-2R39C-7RTCD-MDVJX    Standard
   W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9    Datacenter
   KNC87-3J2TX-XB4WP-VCPJV-M4FWM    Essentials
   3NPTF-33KPT-GGBPR-YX76B-39KDD    Cloud Storage
   
   Windows Server 2012
   
   XC9B7-NBPP2-83J2H-RHMBY-92BT4    Standard
   48HP8-DN98B-MYWDG-T2DCC-8W83P    Datacenter
   HM7DN-YVMH3-46JC3-XYTG7-CYQJJ    MultiPoint Standard
   XNH6W-2V9GX-RGJ4K-Y8X6F-QGJ2G    MultiPoint Premium
   
   Windows Server 2008 R2
   
   6TPJF-RBVHG-WBW2R-86QPH-6RTM4    Web
   TT8MH-CG224-D3D7Q-498W2-9QCTX    HPC
   YC6KT-GKW9T-YTKYR-T4X34-R7VHC    Standard
   74YFP-3QFB3-KQT8W-PMXWJ-7M648    Datacenter
   489J6-VHDMP-X63PK-3K798-CPX3Y    Enterprise
   GT63C-RJFQ3-4GMB6-BRFB9-CB83V    Itanium
   736RG-XDKJK-V34PF-BHK87-J6X3K    MultiPoint Server
     
   ----------------------------------------------------------------------------------------------------
   
   ----------------------------------------------
    Windows /Server (All VL Supported Versions) 
   ----------------------------------------------
   
 - Connect to the internet. 
 - Open CMD as Admin, and enter following listed commands in the sequence in which they are given.
 - Enter Generic Volume License Key (GVLK) (Replace %key% with the key from above list) with 
   the following command:

slmgr.vbs /ipk %key%

 - Register the KMS Server, (Replace %server% with one of the above-listed servers) 
   (If activation is unsuccessful then try a different server) with the following command:

slmgr.vbs /skms %server%

 - Activate Windows with the following command:
   
slmgr.vbs /ato
   
 - Check Activation Status with the following command:

slmgr.vbs /dli
   
 - Check Activation Expiry Date with the following command:
   
slmgr.vbs /xpr
   
 - Clear the name of KMS server (Optional) (It'll prevent activation auto-renewal) with the following command: 
   
slmgr.vbs /ckms
   
 - Done. 

   ----------------------------------------------------------------------------
    Office VL Activation (Office 2010, 2013, 2016, 2019) -
   ----------------------------------------------------------------------------
   
 - Connect to the internet. 
 - Open CMD as Admin, and enter following listed commands in the sequence in which they are given.
 - If Office is installed as VL (Volume License) then there is no need to enter its key. 
 - If Office is installed as Retail, then you need to convert it to VL, by using C2R-R2V by @abbodi1406
   https://forums.mydigitallife.net/posts/1150042 

 - Change to the directory where Office is installed.
   If your system is 32-bit Office on 32-bit Windows, or 64-bit Office on 64-bit Windows use the following:
   
   For Office 2016 or 2019 enter the command:
   
cd "C:\Program Files\Microsoft Office\Office16"
   
   For Office 2013 enter the command:
   
cd "C:\Program Files\Microsoft Office\Office15"
   
   For Office 2010 enter the command:
   
cd "C:\Program Files\Microsoft Office\Office14"
   
   --------------------------------------------------------------------------------
   
   If your system is 32-bit Office on 64-bit Windows use the following:
   
   For Office 2016 or 2019 enter the command:
   
cd "C:\Program Files (x86)\Microsoft Office\Office16"
   
   For Office 2013 enter the command:
   
cd "C:\Program Files (x86)\Microsoft Office\Office15"
   
   For Office 2010 enter the command:
   
cd "C:\Program Files (x86)\Microsoft Office\Office14"
   
   --------------------------------------------------------------------------------
   
 - Once all of that is done correctly, you must register the KMS Server, (In the following,
   replace %server% with one of the above-listed servers.) (If activation is unsuccessful 
   then try a different server.) with the following command:

cscript ospp.vbs /sethst:%server% 

 - Activate Office with the following command: 
   
cscript ospp.vbs /act 
   
 - Check Activation Status with the following command:
   
cscript ospp.vbs /dstatus
 
 - Clear the name of KMS server, (Optional) (It'll prevent activation auto-renewal)
   with the appropriate following commands:
   
   To clear the KMS Server name for Office in Win 7, or Office 2010 on Win 8 or Win 10,
   enter each of the following commands in the sequence which is given:
   
set "OSPP=HKLM\SOFTWARE\Microsoft\OfficeSoftwareProtectionPlatform"
reg delete "%OSPP%" /f /v KeyManagementServiceName 2>nul
reg delete "%OSPP%" /f /v KeyManagementServicePort 2>nul
reg delete "%OSPP%\59a52881-a989-479d-af46-f275c6370663" /f 2>nul
reg delete "%OSPP%\0ff1ce15-a989-479d-af46-f275c6370663" /f 2>nul

   To clear the KMS server name for Office (except Office 2010) on Win 8 or Win 10, run the following command:

set "SPPk=SOFTWARE\Microsoft\Windows NT\CurrentVersion\SoftwareProtectionPlatform"
reg delete "HKLM\%SPPk%" /f /v KeyManagementServiceName 2>nul
reg delete "HKLM\%SPPk%" /f /v KeyManagementServicePort 2>nul
reg delete "HKLM\%SPPk%\0ff1ce15-a989-479d-af46-f275c6370663" /f 2>nul
reg delete "HKEY_USERS\S-1-5-20\%SPPk%\0ff1ce15-a989-479d-af46-f275c6370663" /f 2>nul

 - Done. 

====================================================================================================
   Troubleshoot activation issues:
====================================================================================================

 - Make sure the Internet is connected.
 - Reboot the system and run the activation script, and if unsuccessful,
   - Open CMD as Admin, and enter the following command: (For Windows 10)

Dism /online /Cleanup-Image /RestoreHealth

   - After its done, reboot the system and Open CMD as Admin, and enter the following command:

sfc.exe /scannow

   - After its done, reboot the system and run the activation script, and if unsuccessful,
     Rebuild the Tokens.dat file. Go to https://tinyurl.com/ydedarpl learn about it.
     Note: If your office install is converted to VL, in that case after token rebuilding, you may 
     need to use the Office VL converter again to fix the Office license.
   - After its done, reboot the system and run the activation script, and if unsuccessful,
     Search "set _Debug=" in the script and change the value from 0 to 1. Now run the script, it'll
     create a file, open it with notepad and send the log to the homepage of this script. (listed
     below in this ReadMe)

   -------------------------------
   
   - Installed Office is showing incorrect version:
     This error appears mostly when office installation has been messed up,you need to clean it.
     First, uninstall Office using the Programs and Features option in the Control Panel, and after 
     that, Use 'OfficeScrubber' by @abbodi1406 https://forums.mydigitallife.net/posts/1466365 
     to clean out the rest of the Office remnants and leftovers.

   - Can't activate Windows 7 with KMS:
     Some OEM licensed computers can not be activated with KMS on WINDOWS 7.
     Quate from the MS page https://tinyurl.com/yy8wfu5m
     Computers obtained through OEM channels that have an ACPI_SLIC table in the (BIOS) are 
     required to have a valid Windows marker in the same ACPI_SLIC table.
     ---Computers that have an ACPI_SLIC table without a valid Windows marker generate an error 
     when a volume edition of Windows 7 is installed.

====================================================================================================
   Credits:
====================================================================================================

   'Microsoft Activation Scripts' is just a fork of other honorable developers tools and script.

   The purpose of this script is to create an activator which is opensource and clean from antivirus
   detection. To achieve this I've used the following projects as the base of this script.  
   I would like to say thanks to the following authors for making such awesome projects.

----------------------------------------------------------------------------------------------------
   Original Authors:
---------------------

   @abbodi1406       Standalone-Activate-Local.cmd
                     https://forums.mydigitallife.net/posts/1511883
                     (Online KMS activation)
                     (*Forked it to work with Multi KMS Servers and Renewal Task, $OEM$ etc)

                     Clear-KMS-Cache.cmd
                     https://forums.mydigitallife.net/posts/1511883
                     (*Applied it as it is)

                     Check-Activation-Status.cmd
                     https://forums.mydigitallife.net/posts/838808
                     (*Applied it as it is)

---------------------
  Public KMS Servers:
---------------------
   
   Special Thanks,

   kms.srv.crsoo.com
   dimanyakms.sytes.net
   kms.digiboy.ir
   kms8.MSGuides.com
   kms9.MSGuides.com
   kms.library.hk
   kms.03k.org
   
---------------------
   Tweakers/Modders:
---------------------
                                         
   @WindowsAddict    Microsoft Activation Scripts
                     https://www.nsaneforums.com/topic/316668--/
                     ShortURL - 0x0.st/s9j

---------------------
          Kind Help:
---------------------

   @RPO              Providing Great support in making and improvements in this script

   @abbodi1406       Answering all of my queries.

   @BorrowedWifi     Fixing English grammar errors in the Read Me.

====================================================================================================
   Discussion / Error Report / Support / Feedback / etc:
====================================================================================================

 - Go to the homepage,
   Microsoft Activation Scripts https://www.nsaneforums.com/topic/316668--/  ShortURL - 0x0.st/s9j
   
   Alternatively, email me
   windowsaddict@protonmail.com

====================================================================================================