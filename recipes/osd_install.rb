include_recipe 'ceph'

node['ceph']['osd']['packages'].each do |pck|
  package pck do
    action node['ceph']['package_action']
    v = ceph_exactversion(pck)
    version v if v
  end
end
