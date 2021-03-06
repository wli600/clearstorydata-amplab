name             "clearstorydata-amplab"
maintainer       "ClearStory Data"
maintainer_email "mbautin@clearstorydata.com"
license          "All rights reserved"
description      "ClearStory Data AmpLab stack recipes"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "1.0.0"

recipe "clearstorydata-amplab::tachyon-install", "Installs Tachyon on the node"
recipe "clearstorydata-amplab::tachyon-master", "Sets up Tachyon master using Monit"
recipe "clearstorydata-amplab::tachyon-worker", "Sets up Tachyon worker using Monit"

depends "clearstorydata", "~> 0.11.0"
depends "clearstorydata-monit", "~> 1.3.2"
depends "cloudera", "~> 1.2.2"

%w{ debian ubuntu }.each do |os|
  supports os
end
