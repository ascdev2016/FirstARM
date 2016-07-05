Configuration FirstExtensionConfiguration
{

Param ( [string] $nodeName )

Import-DscResource -ModuleName PSDesiredStateConfiguration

Node $nodeName
  {
		File FirstExtensionConfiguration {

				DestinationPath = 'C:\Skripte\MyDSCFile.txt'
				Ensure = 'Present'
				Type = 'File'
				Contents = 'DSC Rocks!'
			}
		}
	}