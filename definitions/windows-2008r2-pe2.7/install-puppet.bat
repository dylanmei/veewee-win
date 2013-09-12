
cmd /C cscript %TEMP%\wget.vbs /url:http://pm.puppetlabs.com/puppet-enterprise/2.7.2/puppet-enterprise-2.7.2.msi /path:%TEMP%\puppet-client.msi
cmd /C msiexec /qn /i %TEMP%\puppet-client.msi
cmd /C setx /m PATH "%path%;C:\Program Files (x86)\Puppet Labs\Puppet Enterprise\bin"
