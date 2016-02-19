$override_options = {
  'mysqld' => {
    'bind-address' => '0.0.0.0',
    'skip-external-locking' => undef
  }
}

class { '::mysql::server':
  root_password           => 'root',
  remove_default_accounts => true,
  override_options        => $override_options
}

mysql::db { 'testdb':
  user     => 'testdbuser',
  password => 'testdbpass',
  host     => '%',
  grant    => ['ALL']
}
