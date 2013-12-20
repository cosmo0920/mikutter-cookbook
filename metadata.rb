name             'mikutter'
maintainer       'cosmo0920'
maintainer_email 'cosmo0920.wp@gmail.com'
license          'Apache 2.0'
description      'Installs mikutter and dependent gems'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'
%w{ debisn ubuntu }.each do |os|
  supports os
end

recommends "git"
recommends "rbenv"

depends "rbenv"
