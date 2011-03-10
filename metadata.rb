maintainer       "Itiner"
maintainer_email "roman.kamyk@itiner.pl"
license          "MIT/BSD"
description      "Configures notifications for mercurial-server repositories"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.rdoc'))
version          "0.0.1"

%w(
  postfix
  mercurial-server
).each do |d|
  depends d
end

%w(
  ubuntu
).each do |os|
  supports os
end

