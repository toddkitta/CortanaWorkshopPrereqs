Configuration Main
{
	Param ( [string] $nodeName )

	Import-DscResource -ModuleName PSDesiredStateConfiguration
	Import-DSCResource -Module xSystemSecurity -Name xIEEsc -ModuleVersion "1.1.0.0"

	Node $nodeName
	{

		xIEEsc DisableIEEscAdmin
		{
			IsEnabled = $false
			UserRole  = "Administrators"
		}

		xIEEsc DisableIEEsc
		{
			IsEnabled = $false
			UserRole = "Users"
		}
	}
}