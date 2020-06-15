package 'apache2' do
    action :install
  end
  
  package 'php' do
    action :install
  end
  
  service 'apache2' do
    action [ :enable, :start ]
  end
  
  cookbook_file '/var/www/html/index.php' do
    source 'index.php'
    mode '0644'
  end
  