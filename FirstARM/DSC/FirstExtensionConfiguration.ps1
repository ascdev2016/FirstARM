Configuration MyFile
{

Param ( [string] $nodeName )

Import-DscResource -ModuleName PSDesiredStateConfiguration

Node $nodeName
  {
    File MyFile {

            DestinationPath = 'C:\Skripte\MyDSCFile.txt'
            Ensure = 'Present'
            Type = 'File'
            Contents = 'DSC Rocks!'
        }
}
	}