# -*- coding: utf-8 -*-
require File.dirname(__FILE__) + "/../.windows/session.rb"

session = WINDOWS_SESSION.merge({
    :os_type_id => 'Windows2008_64',
    # http://technet.microsoft.com/en-us/evalcenter/dd459137.aspx
    # Download and install full featured software for 180-day trial
    :iso_file => "7601.17514.101119-1850_x64fre_server_eval_en-us-GRMSXEVAL_EN_DVD.iso",
    :iso_md5 => "4263be2cf3c59177c45085c0a7bc6ca5",
    :iso_src => "http://care.dlservice.microsoft.com//dl/download/7/5/E/75EC4E54-5B02-42D6-8879-D8D3A25FBEF7/7601.17514.101119-1850_x64fre_server_eval_en-us-GRMSXEVAL_EN_DVD.iso",
    :iso_download_timeout => "1000",
    :cpu_count => '1',
    :memory_size=> '384',
    :disk_size => '20280', :disk_format => 'VDI', :hostiocache => 'off',

    :winrm_user => "vagrant",
    :winrm_password => "vagrant",

    :kickstart_port => "7100",
    :postinstall_timeout => "10000",
    :postinstall_files => [
      "open-firewall.bat",
      # "install-chef.bat",
      "install-puppet.bat",
      "install-vbox.bat",
    ],
  })

Veewee::Session.declare session



