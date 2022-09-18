# SSH client configuration using puppet

file_line { 'Declare identity file':
  path    => '/etc/ssh/ssh_config',
  line    => '    IdentityFile ~/.ssh/school',
  replace => true
}

file_line { 'Turn off password auth':
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication yes',
  replace => true
}
