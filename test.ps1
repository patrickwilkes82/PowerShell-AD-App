##PRE_REQS##
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Windows.Forms")
    [void] [System.Reflection.Assembly]::LoadWithPartialName("System.Drawing")
#

#ADD OBJECTS
    $Form = New-Object System.Windows.Forms.Form

    $menuStrip = New-Object System.Windows.Forms.MenuStrip
    $fileToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
    $toolsToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
    $aboutToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
    $sfcScanToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
    $chkDskToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem
    $closeFormToolStripMenuItem = New-Object System.Windows.Forms.ToolStripMenuItem

    $tabcontrol = New-Object Windows.Forms.TabControl
    $tabpage_newUser = New-Object windows.Forms.TabPage
    $tabpage_currentUser = New-Object Windows.Forms.TabPage
    $tabpage_reports = New-Object windows.Forms.TabPage

    $group_newUserInfo = New-Object System.Windows.Forms.GroupBox
    $label_firstNameNewUser = New-Object System.Windows.Forms.Label
    $textbox_firstNameNewUser = New-Object System.Windows.Forms.Textbox 
    $label_lastNameNewUser = New-Object System.Windows.Forms.Label
    $textbox_lastNameNewUser = New-Object System.Windows.Forms.TextBox
    $label_title = New-Object System.Windows.Forms.Label
    $textbox_title = New-Object System.Windows.Forms.Textbox
    $label_company = New-Object System.Windows.Forms.Label
    $dropdown_company = New-Object System.Windows.Forms.ComboBox
    $label_office = New-Object System.Windows.Forms.Label
    $dropdown_office = New-Object System.Windows.Forms.ComboBox
    $label_username = New-Object System.Windows.Forms.Label
    $textbox_username = New-Object System.Windows.Forms.TextBox
    $label_email = New-Object System.Windows.Forms.Label
    $dropdown_email = New-Object System.Windows.Forms.ComboBox
    $label_mainPhone = New-Object System.Windows.Forms.Label
    $textbox_mainPhone = New-Object System.Windows.Forms.TextBox
    $label_mobilePhone = New-Object System.Windows.Forms.Label
    $textbox_mobilePhone = New-Object System.Windows.Forms.TextBox
    $label_officeExtension = New-Object System.Windows.Forms.Label
    $textbox_officeExtension = New-Object System.Windows.Forms.TextBox
    $linkLabel_suggestPassword = New-Object System.Windows.Forms.LinkLabel
    
    $group_newUserPassword = New-Object System.Windows.Forms.GroupBox
    $label_newUserPassword = New-Object System.Windows.Forms.Label
    $textbox_newUserPassword = New-Object System.Windows.Forms.TextBox
    $label_confirmPassword = New-Object System.Windows.Forms.Label
    $textbox_confirmPassword = New-Object System.Windows.Forms.TextBox

    $group_newUserGroups = New-Object System.Windows.Forms.GroupBox
    $listBox_newUserGroups = New-Object System.Windows.Forms.CheckedListBox
#

#ADD ITEMS TO COMBOBOXES
    $dropdown_office.Items.Add('Asheville')
    $dropdown_office.Items.Add('New York')
    $dropdown_office.Items.Add('Pasadena')
    $dropdown_office.Items.Add('Phoenix')
    $dropdown_office.Items.Add('Remote')
    $dropdown_office.Items.Add('Washington DC')
    $dropdown_office.Items.Add('Wayne')
    $dropdown_office.SelectedIndex = 0
    $dropdown_office.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList; #Make Dropdown List Select Only

    $dropdown_company.Items.Add('Council Advisors')
    $dropdown_company.Items.Add('Council Advisors Capital')
    $dropdown_company.Items.Add('G100 Companies')
    $dropdown_company.Items.Add('G100 Network')
    $dropdown_company.Items.Add('SSA & Co')
    $dropdown_company.Items.Add('The Miles Group')
    $dropdown_company.Items.Add('High Lantern Group')
    $dropdown_company.Items.Add('Global Coalition On Aging')
    $dropdown_company.SelectedIndex = 0
    $dropdown_company.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList; #Make Dropdown List Select Only

    $dropdown_email.Items.Add('@counciladvisors.com')
    $dropdown_email.Items.Add('@counciladvisorscapital.com')
    $dropdown_email.Items.Add('@g100companies.com')
    $dropdown_email.Items.Add('@g100.com')
    $dropdown_email.Items.Add('@ssaandco.com')
    $dropdown_email.Items.Add('@miles-group.com')
    $dropdown_email.Items.Add('@highlanterngroup.com')
    $dropdown_email.Items.Add('@globalcoaltiononaging.com')
    $dropdown_email.SelectedIndex = 0
    $dropdown_email.DropDownStyle = [System.Windows.Forms.ComboBoxStyle]::DropDownList; #Make Dropdown List Select Only
#

#CREATE FORM
    $Form = New-Object System.Windows.Forms.Form
    $Form.Size = New-Object System.Drawing.Size(800,820)
    $Form.StartPosition = 'CenterScreen'
    $Form.FormBorderStyle = 'FixedSingle'
    $Form.MaximizeBox = $false
    $Form.MinimizeBox = $false
    $Form.Text = "My Application"
    $Form.MainMenuStrip = $menuStrip
    $Form.Controls.Add($menuStrip)
#

#MENU CONFIG
    [void]$menustrip.Items.Add($fileToolStripMenuItem)
    [void]$menuStrip.Items.Add($toolsToolStripMenuItem)
    [void]$menuStrip.Items.Add($aboutToolStripMenuItem)
    $menustrip.Location = '0, 0'
    $menustrip.Name = 'menustrip'
    $menustrip.Text = 'menustrip'
#

#File Menu Item
    $fileToolStripMenuItem.Text = 'File'
    [void]$fileToolStripMenuItem.DropDownItems.Add($closeFormToolStripMenuItem)
    
    #File Menu DropDown Items
        $closeFormToolStripMenuItem.Text='Close'
#

#Tools Menu Item
    $toolsToolStripMenuItem.Text = 'Tools'
    [void]$toolsToolStripMenuItem.DropDownItems.Add($sfcScanToolStripMenuItem)
    [void]$toolsToolStripMenuItem.DropDownItems.Add($chkDskToolStripMenuItem)
    
    #Tools Menu DropDown Items
        $sfcScanToolStripMenuItem.Text = 'SFC Scan'
        $chkDskToolStripMenuItem.Text = 'Disk Check'
    #
#

#About Menu Item
    $aboutToolStripMenuItem.Text='About'
#


#TABS
    $tabcontrol.Location = "30,30"
    $tabcontrol.Padding = "8,8"
    $tabcontrol.width = 720
    $tabcontrol.Height = 720
    $tabcontrol.Font = 'Microsoft Sans Serif'

    $tabcontrol.Controls.add($tabpage_newUser)
    $tabcontrol.Controls.add($tabpage_currentUser)
    $tabcontrol.Controls.add($tabpage_reports)

    $form.Controls.Add($tabcontrol)
#

#TABPAGE NEW USER
    $tabpage_newUser.Text = "Create New AD User"
    $tabpage_newUser.Location = "25,25"
    $tabpage_newUser.Controls.Add($group_newUserInfo)
    $tabpage_newUser.Controls.Add($group_newUserPassword)
    $tabpage_newUser.Controls.Add($group_newUserGroups)

    $group_newUserInfo.Controls.Add($label_firstNameNewUser)
    $group_newUserInfo.Controls.Add($textbox_firstNameNewUser)
    $group_newUserInfo.Controls.Add($label_lastNameNewUser)
    $group_newUserInfo.Controls.Add($textbox_lastNameNewUser)
    $group_newUserInfo.Controls.Add($label_title)
    $group_newUserInfo.Controls.Add($textbox_title)
    $group_newUserInfo.Controls.Add($label_company)
    $group_newUserInfo.Controls.Add($dropdown_company)
    $group_newUserInfo.Controls.Add($label_office)
    $group_newUserInfo.Controls.Add($dropdown_office)
    $group_newUserInfo.Controls.Add($label_username)
    $group_newUserInfo.Controls.Add($textbox_username)
    $group_newUserInfo.Controls.Add($label_email)
    $group_newUserInfo.Controls.Add($dropdown_email)
    $group_newUserInfo.Controls.Add($label_mainPhone)
    $group_newUserInfo.Controls.Add($textbox_mainPhone)
    $group_newUserInfo.Controls.Add($label_mobilePhone)
    $group_newUserInfo.Controls.Add($textbox_mobilePhone)
    $group_newUserInfo.Controls.Add($label_officeExtension)
    $group_newUserInfo.Controls.Add($textbox_officeExtension)

    $group_newUserInfo.Location = '15,25'
    $group_newUserInfo.Height = 275
    $group_newUserInfo.Width = 685
    $group_newUserInfo.Text = 'User Details'
    $label_firstNameNewUser.Location = '25,25'
    $label_firstNameNewUser.Text = 'First Name'
    $textbox_firstNameNewUser.Location = '25,50'
    $textbox_firstNameNewUser.Width = 150
    $label_lastNameNewUser.Location = '200,25'
    $label_lastNameNewUser.Text = 'Last Name'
    $textbox_lastNameNewUser.Location = '200,50'
    $textbox_lastNameNewUser.Width = 150
    $label_title.location = '25,85'
    $label_title.Text = 'Title'
    $textbox_title.Location = '25,110'
    $textbox_title.Width = 150
    $label_company.Location = '200,85'
    $label_company.Text = 'Company'
    $dropdown_company.Location = '200,110'
    $dropdown_company.Width = '150'
    $label_office.Location = '375, 85'
    $label_office.Text = 'Office'
    $dropdown_office.Location = '375,110'
    $dropdown_office.Width = '150'
    $label_username.Location = '25,145'
    $label_username.Text = 'Username'
    $textbox_username.Location = '25,170'
    $textbox_username.Width = '150'
    $label_email.Location = '200,145'
    $label_email.Text = 'Email Domain'
    $dropdown_email.Location = '200,170'
    $dropdown_email.Width = 150
    $label_mainPhone.Location = '25,205'
    $label_mainPhone.Text = 'Main Phone'
    $textbox_mainPhone.Location = '25,230'
    $textbox_mainPhone.Width = 150
    $label_mobilePhone.Location = '200,205'
    $label_mobilePhone.Text = 'Mobile Phone'
    $textbox_mobilePhone.Location = '200,230'
    $textbox_mobilePhone.Width = 150
    $label_officeExtension.Location = '375,205'
    $label_officeExtension.Text = 'Office Extension'
    $textbox_officeExtension.Location = '375,230'
    $textbox_officeExtension.Width = 150

    $group_newUserPassword.Controls.Add($label_newUserPassword)
    $group_newUserPassword.Controls.Add($textbox_newUserPassword)
    $group_newUserPassword.Controls.Add($label_confirmPassword)
    $group_newUserPassword.Controls.Add($textbox_confirmPassword)
    $group_newUserPassword.Controls.Add($linkLabel_suggestPassword)
    $group_newUserPassword.Location = '15,325'
    $group_newUserPassword.Height = 100
    $group_newUserPassword.Width = 685
    $group_newUserPassword.Text = 'Password'
    $label_newUserPassword.Location = '25,25'
    $label_newUserPassword.Text = 'Enter Password'
    $textbox_newUserPassword.Location = '25,50'
    $textbox_newUserPassword.Width = 150
    $label_confirmPassword.Location = '200,25'
    $label_confirmPassword.Text = 'Confirm Password'
    $textbox_confirmPassword.Location = '200,50'
    $textbox_confirmPassword.Width = 150
    $linkLabel_suggestPassword.Location = '25,75'
    $linkLabel_suggestPassword.Text = 'Suggest Password'

    $group_newUserGroups.Controls.Add($listBox_newUserGroups)
    $group_newUserGroups.Location = '15,450'
    $group_newUserGroups.Height = 200
    $group_newUserGroups.Width = 685
    $group_newUserGroups.Text = 'Groups'
    $listBox_newUserGroups.location = '25,25'
    $listBox_newUserGroups.Width = 250
    $listBox_newUserGroups.Height = 165
    $listBox_newUserGroups.Items.Add('Group1')
    $listBox_newUserGroups.Items.Add('Group2')
    $listBox_newUserGroups.Items.Add('Group3')
    $listBox_newUserGroups.Items.Add('Group4')
    $listBox_newUserGroups.Items.Add('Group5')
    $listBox_newUserGroups.Items.Add('Group6')
    
    $tabpage_currentUser.Text = "Edit Current AD User"

    $tabpage_reports.Text = "AD Reports"
#

##OPEN FORM##
$Form.ShowDialog()
#