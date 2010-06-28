package TestX::API;
BEGIN {
  $TestX::API::VERSION = '0.0';
}
use Moose;
use Test::Harness;

use Test::More qw(no_plan);

has module => ( is => 'ro' );

sub test_api {
	my $class = shift;
	pass;
	runtests( '/home/rblackwe/testX2/TestX-API-Config-INI-0.014/t/00-load.t'); 
	runtests( '/home/rblackwe/testX2/TestX-API-Config-INI-0.014/t/reader.t');
	runtests( '/home/rblackwe/testX2/TestX-API-Config-INI-0.014/t/writer.t');
	runtests( '/home/rblackwe/testX2/TestX-API-Config-INI-0.014/t/reader-err.t');

}
#requires 'apitest';
no Moose::Role;
1;

__END__

=pod

=head1 NAME

TestX::API - a library for testing module APIs.

=head1 VERSION

version 0.0

=head1 SYNOPSIS

  my $api_test= TestX::API->new("Config::IniFiles");

  $api_test->test_latest();

  $api_test->test_all_versions();

  $api_test->test_version("2.58");

  $api_test->test_versions([ "2.58", "2.27", "2.38" ]);



=head1 OVERVIEW

Steps to convert a modules t/ dir to a TestX::API::

See testx_convert.pl

1.  Download the modules tarball
wget http://search.cpan.org/CPAN/authors/id/S/SH/SHLOMIF/Config-IniFiles-2.58.tar.gz

2.  Untar it

3.  Confirm the tests pass.
	pre or post build

4.  if pre build copy t
	if post build copy ...

5.  Get tests to pass

6.  Replace the original t dir with a single file testxapi.t

=head1 IMPLEMENTING

=head1 AUTHOR

Some crazed Idiot

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Robert Blackwell

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

