#Author: Priamwad Poudel

#UI FOR THE HOME MENU
function UI_home_menu(){
	echo ""
	echo "============= WELCOME TO SOFTWARE INSTALLATION AND DEPLOYMENT ============="
	echo ""
	echo "1. INSTALL A SOFTWARE"
	echo "2. UNINSTALL A SOFTWARE"
	echo "3. VERIFY A INSTALLATION"
	echo "4. SCAN ALL THE SOFTWARES INSTALLED"
	echo ""
	echo "ENTER ANYTHING ELSE TO EXIT "
	echo ""
	
	$selection = Read-host "PLEASE ENTER YOUR SELECTION"
	
	switch($selection)
	{
		1 {UI_install_menu}
		2 {UI_uninstall_menu}
		3 {UI_verification_menu}
		4 {UI_scan_menu}
	}	
}
#UI FOR THE INTALLATION MENU
function UI_install_menu(){
	echo ""
	echo "============= INSTALLATION MENU ============="
	echo ""
	echo "1. ADOBE READER"
	echo "2. CISCO AMP"
	echo "3. CISCO UMBRELLA"
	echo "4. GOOGLE CHROME"
	echo "5. SOPHOS"
	echo "6. SPLUNK"
	echo ""
	echo "ENTER B GO BACK"
	echo "ENTER ANYTHING ELSE TO EXIT "
	echo ""
	
	$selection = Read-host "PLEASE ENTER YOUR SELECTION"
	
	switch($selection)
	{
		1 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO INSTALL ADOBE READER ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{} 'N'{clear; UI_install_menu}}}
		2 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO INSTALL AMP ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{} 'N'{clear; UI_install_menu}}}
		3 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO INSTALL UMBRELLA ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{} 'N'{clear; UI_install_menu}}}
		4 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO INSTALL CHROME ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{} 'N'{clear; UI_install_menu}}}
		5 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO INSTALL SOPHOS ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{} 'N'{clear; UI_install_menu}}}
		6 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO INSTALL SPLUNK ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{} 'N'{clear; UI_install_menu}}}
		'B' {clear; UI_home_menu}
		'b' {clear; UI_home_menu}
	}
}

#UI FOR THE UNINSTALLATION MENU
function UI_uninstall_menu(){
	echo ""
	echo "============= UNINSTALLATION MENU ============="
	echo ""
	echo "1. ADOBE READER"
	echo "2. CISCO AMP"
	echo "3. CISCO UMBRELLA 
	echo "4. GOOGLE CHROME"
	echo "5. SOPHOS 
	echo "6. SPLUNK 
	echo ""
	echo "ENTER B TO GO BACK"
	echo "ENTER ANYTHING ELSE TO EXIT "
	echo ""
	
	$selection = Read-host "PLEASE ENTER YOUR SELECTION"

	switch($selection)
	{
		1 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL ADOBE READER ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{uninstall $computers "ADOBE"} 'N'{clear; UI_uninstall_menu}}}
		2 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL AMP ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{UI_uninstall_menu} 'N'{clear; UI_uninstall_menu}}}
		3 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL UMBRELLA ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{UI_uninstall_menu} 'N'{clear; UI_uninstall_menu}}}
		4 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL CHROME ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{uninstall $computers "CHROME"} 'N'{clear; UI_uninstall_menu}}}
		5 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL OASIS ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{uninstall_oasis $computers} 'N'{clear; UI_uninstall_menu}}}
		6 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL SOPHOS ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{UI_uninstall_menu} 'N'{clear; UI_uninstall_menu}}}
		7 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL SPLUNK ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{UI_uninstall_menu} 'N'{clear; UI_uninstall_menu}}}
		8 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "ARE YOU SURE YOU WANT TO UNINSTALL ADOBE READER ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{uninstall $computers "ADOBE"} 'N'{clear; UI_uninstall_menu}}}
		'B' {clear; UI_home_menu}
		'b' {clear; UI_home_menu}
	}
}

#UI FOR THE SOFTWARE VERIFICATION MENU
function UI_verification_menu(){
	echo ""
	echo "============= VERIFICATION MENU ============="
	echo ""
	echo "1. ADOBE READER"
	echo "2. CISCO AMP"
	echo "3. CISCO UMBRELLA"
	echo "4. GOOGLE CHROME"
	echo "5. OASIS"
	echo "6. SOPHOS"
	echo "7. SPLUNK"
	echo ""
	echo "ENTER B TO GO BACK"
	echo "ENTER ANYTHING ELSE TO EXIT "
	echo ""
	

	$selection = Read-host "PLEASE ENTER YOUR SELECTION"
	switch($selection)
	{
		1 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "VERIFY ADOBE READER ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{verify_installation $computers "Adobe"; UI_verification_menu} 'N'{clear; UI_verification_menu}}}
		2 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "VERIFY AMP ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{verify_installation $computers "Amp"; UI_verification_menu} 'N'{clear; UI_verification_menu}}}
		3 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "VERIFY UMBRELLA ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{verify_installation $computers "UMBRELLA"; UI_verification_menu} 'N'{clear; UI_verification_menu}}}
		4 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "VERIFY CHROME ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{verify_installation $computers "GOOGLE"; UI_verification_menu} 'N'{clear; UI_verification_menu}}}
		5 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "VERIFY SOPHOS ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{verify_installation $computers "SOPHOS"; UI_verification_menu} 'N'{clear; UI_verification_menu}}}
		6 {$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "VERIFY SPLUNK ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{verify_installation $computers "SPLUNK"; UI_verification_menu} 'N'{clear; UI_verification_menu}}}
		'B' {clear; UI_home_menu}
		'b' {clear; UI_home_menu}
	}
	
}

# UI FOR RUNNING A SCAN
function UI_scan_menu(){
	$computers = reader; echo ""; echo $computers; echo ""; $response = Read-host "RUN A SCAN ON THESE DEVICES (Y/N)"; 
			switch ($response) { 'Y'{run_Scan $computers;UI_home_menu} 'N'{clear; UI_home_menu}}
		
}

# FUNCTION TO READ THE COMPUTERS/DEVICES AND RETURN AN ARRAY POPULATED WITH THOSE DEVICES
function reader(){
	$computers = cat "C:\Users\ppoudel\Desktop\projects\software_automate\testcomputer.txt"
	return $computers
}

# FUNCTION TO READ THE SOFTWARE, WILL RETURN AN ARRAY OF CSV OBJECTS
function csv_reader(){
	#$softwares = import-csv 
}

#PING FUNCTION TO CHECK THE STATUS OF THE COMPUTER (OFFLINE/ONLINE) // RETURNS A BOOLEAN
function ping_computer($computer){
	if (test-connection $computer -Count 1 -ErrorAction SilentlyContinue ) {$true} else {$false}
}

# MAIN UNINSTALL FUNCTION, GOES TO THE REGISTRY AND GRABS THE UNINSTALL STRING AND UNINSTALLS IT SILENTLY
function uninstall($computers, $sname){
	foreach($computer in $computers){
		if(ping_computer($computer)){
			invoke-command -computername $computer -scriptblock {
				param($sname)
				$Paths = @("HKLM:\software\wow6432node\microsoft\windows\currentversion\Uninstall",
				"HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall")
				$installs = Get-ChildItem -Path $paths  |  Get-ItemProperty | Where-Object {$_.DisplayName -eq "$sname" } | Select-Object -Property DisplayName,UninstallString
					foreach($install in $installs){
						$uninstall = (($install.UninstallString -split ' ')[1] -replace '/I','/X') + ' /q'
						Start-Process msiexec.exe -ArgumentList $uninstall -Wait
					}
				}
				Get-ChildItem -Path $paths  |  Get-ItemProperty | Where-Object {$_.DisplayName -like "$sname" } | Select-Object -Property PSComputerName, DisplayName, UninstallString
				
			} -ArgumentList $sname
		}else{
		echo "$computer IS OFFLINE"
		}
	}


function verify_installation($computers, $sname){
	foreach($computer in $computers){
		if(ping_computer($computer)){
			invoke-command -computername $computer -scriptblock {
				param($sname)
				$Paths = @("HKLM:\software\wow6432node\microsoft\windows\currentversion\Uninstall",
				"HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall")
				$installs = Get-ChildItem -Path $paths  |  Get-ItemProperty | Where-Object {$_.DisplayName -like "*$sname*" } | Select-Object -Property DisplayName, DisplayVerison, UninstallString
				
			} -ArgumentList $sname
		}else{
		echo "$computer IS OFFLINE"
		}
}
}

function run_Scan($computers){
	foreach($computer in $computers){
		if(ping_computer($computer)){
			invoke-command -computername $computer -scriptblock {
				$Paths = @("HKLM:\software\wow6432node\microsoft\windows\currentversion\Uninstall",
				"HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall")
					foreach($path in $paths) {`
						$installs = Get-ChildItem -Path $path
							foreach($install in $installs) {
								Get-ItemProperty -Path $install.pspath | Select-Object -Property Displayname
					}
				}
			}
		}else{
		echo "$computer IS OFFLINE"
		}
	}
}

function install_software($computers, $folder_path, $batch_path){
	foreach($computer in $computers){
		if(ping_computer($computer)){
			if(test-path "\\$computer\c$\$folder_path"){
				echo "FOLDER ALREADY EXISTS IN $computer"
				invoke-command -computername $computer -scriptblock{& "$batch_path"} -ArgumentList $batch_path
				}else{
					cp $folder_path -Recurse "\\$computer\c$\"
					echo "INSTALLATION FOLDER HAS BEEN MOVED TO $computer"
					invoke-command -computername $computer -scriptblock{& "$batch_path"} -ArgumentList $batch_path
				}
		}else {echo "$computer IS OFFLINE"}
	}
}

UI_home_menu