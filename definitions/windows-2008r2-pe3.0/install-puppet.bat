
cmd /C cscript %TEMP%\wget.vbs /url:http://pm.puppetlabs.com/puppet-enterprise/3.0.1/puppet-enterprise-3.0.1.msi /path:%TEMP%\puppet-client.msi
cmd /C msiexec /qn /i %TEMP%\puppet-client.msi
cmd /C setx /m PATH "%path%;C:\Program Files (x86)\Puppet Labs\Puppet Enterprise\bin"
