name             'general'
maintainer       'RavWar'
maintainer_email 'rav_war@mail.ru'
license          'All rights reserved'
description      'Installs/Configures general web environment'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'git', '~> 2.5'
depends 'user', '~> 0.3'
depends 'nginx', '~> 1.7'
depends 'database', '~> 1.4'
depends 'chruby', '~> 0.2'
