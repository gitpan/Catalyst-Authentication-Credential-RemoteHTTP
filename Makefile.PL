
use strict;
use warnings;

BEGIN { require 5.008005; }

use ExtUtils::MakeMaker 6.31;



my %WriteMakefileArgs = (
  'ABSTRACT' => 'Authenticate against remote HTTP server',
  'AUTHOR' => 'Nigel Metheringham <nigelm@cpan.org>',
  'BUILD_REQUIRES' => {
    'Carp' => '0',
    'Catalyst' => '0',
    'Catalyst::Authentication::Store::Minimal' => '0',
    'Catalyst::Controller' => '0',
    'Catalyst::Test' => '0',
    'HTTP::Server::Simple' => '0',
    'HTTP::Server::Simple::CGI' => '0',
    'IO::Socket::INET' => '0',
    'MIME::Base64' => '0',
    'Test::Exception' => '0',
    'Test::More' => '0'
  },
  'CONFIGURE_REQUIRES' => {
    'ExtUtils::MakeMaker' => '6.31'
  },
  'DISTNAME' => 'Catalyst-Authentication-Credential-RemoteHTTP',
  'EXE_FILES' => [],
  'LICENSE' => 'perl',
  'NAME' => 'Catalyst::Authentication::Credential::RemoteHTTP',
  'PREREQ_PM' => {
    'Catalyst::Exception' => '0',
    'LWP::UserAgent' => '0',
    'Moose' => '0',
    'MooseX::Types::Moose' => '0',
    'namespace::autoclean' => '0'
  },
  'VERSION' => '0.04',
  'test' => {
    'TESTS' => 't/*.t'
  }
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.56) } ) {
  my $br = delete $WriteMakefileArgs{BUILD_REQUIRES};
  my $pp = $WriteMakefileArgs{PREREQ_PM};
  for my $mod ( keys %$br ) {
    if ( exists $pp->{$mod} ) {
      $pp->{$mod} = $br->{$mod} if $br->{$mod} > $pp->{$mod};
    }
    else {
      $pp->{$mod} = $br->{$mod};
    }
  }
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);



