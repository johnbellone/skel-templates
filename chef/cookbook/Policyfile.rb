default_source :community
default_source :chef_repo, '.'
cookbook '{{ .Name }}', path: '.'
run_list '{{ .Name }}::default'
named_run_list :centos, 'yum::default', 'yum-epel::default', run_list
named_run_list :debian, 'apt::default', run_list
