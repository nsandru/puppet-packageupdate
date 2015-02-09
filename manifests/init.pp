define packageensure ($ensure) {
  if defined (Package [$name]) {
    notify {"Package ${name} already defined":}
  } else {
    package {$name:
      ensure => $ensure,
    } 
  }
}

class packageupdate::latest ($packagelist) {
  packageensure { $packagelist: ensure => latest, }
}

class packageupdate::absent ($packagelist) {
  packageensure { $packagelist: ensure => absent, }
}

