package 'ntp'

mounted_dir = %w(myusb mysmb) 
mounted_dir.each do |dir| 
    directory "/mnt/#{dir}" do
        action :create
        owner 'percy'
        group 'percy'
        recursive true
    end
end

main_dir = %w(data dev app)
main_dir.each do |dir|
    directory "/#{dir}" do
        action :create
        owner 'percy'
        group 'percy'
        recursive true
    end
end
