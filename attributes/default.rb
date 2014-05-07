default['go']['packages'] = [ "github.com/ctdk/goiardi" ]

default['goiardi']['conf-filename'] = 'goiardi.conf'
default['goiardi']['data-dir'] = '/var/goiardi'
default['goiardi']['conf']['ipaddress'] = "127.0.0.2"
default['goiardi']['conf']['port'] = 4646
default['goiardi']['conf']['hostname'] = "moomernoo.local"
default['goiardi']['conf']['log-file'] = "/var/log/goiardi.log"
default['goiardi']['conf']['log-level'] = "error"
default['goiardi']['conf']['index-file'] = "#{node['goiardi']['data-dir']}/goiardi-index.bin"
default['goiardi']['conf']['data-file'] = "#{node['goiardi']['data-dir']}/goiardi-data.bin"
default['goiardi']['conf']['freeze-interval'] = 120
default['goiardi']['conf']['time-slew'] = "15m"
default['goiardi']['conf']['conf-root'] = "/etc/goiardi"
default['goiardi']['conf']['use-auth'] = true
default['goiardi']['conf']['use-ssl'] = false
#default['goiardi']['conf']['ssl-cert'] = "/path/to/goiardi/conf/cert.pem"
#default['goiardi']['conf']['ssl-key'] = "/path/to/goiardi/conf/key.pem"
default['goiardi']['conf']['https-urls'] = false
default['goiardi']['conf']['disable-webui'] = false
default['goiardi']['conf']['local-filestore-dir'] = "#{node['goiardi']['data-dir']}/file_checksums"
default['goiardi']['conf']['use-mysql'] = false
default['goiardi']['conf']['mysql']['username'] = "foo"
default['goiardi']['conf']['mysql']['password'] = "s3kr1t"
default['goiardi']['conf']['mysql']['protocol'] = "tcp"
default['goiardi']['conf']['mysql']['address'] = "localhost"
default['goiardi']['conf']['mysql']['port'] = "3306"
default['goiardi']['conf']['mysql']['dbname'] = "goiardi_test"
default['goiardi']['conf']['mysql']['extra_params']['tls'] = "false"
default['goiardi']['conf']['mysql']['extra_params']['foo'] = "bar"
