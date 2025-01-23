add_cus_dep('glo', 'gls', 0, 'makeglossaries');
sub makeglossaries {
  my ($base_name, $path) = fileparse( $_[0] );
  return system "makeglossaries -d '$path' '$base_name'";
}