package Catalyst::Authentication::Credential::RemoteHTTP::UserAgent;
BEGIN {
  $Catalyst::Authentication::Credential::RemoteHTTP::UserAgent::AUTHORITY = 'cpan:NIGELM';
}
BEGIN {
  $Catalyst::Authentication::Credential::RemoteHTTP::UserAgent::VERSION = '0.04';
}

# ABSTRACT: Wrapper for LWP::UserAgent

use strict;
use warnings;
use base qw/LWP::UserAgent/;

sub set_credentials {
    my ($self, $user, $pass) = @_;
    @{ $self->{credentials} } = ($user, $pass);
}

sub get_basic_credentials {
    my $self = shift;
    return @{ $self->{credentials} };
}


1;

__END__
=pod

=encoding utf-8

=head1 NAME

Catalyst::Authentication::Credential::RemoteHTTP::UserAgent - Wrapper for LWP::UserAgent

=head1 VERSION

version 0.04

=head1 DESCRIPTION

A thin wrapper for L<LWP::UserAgent> to make basic auth simpler.

=head1 METHODS

=head2 set_credentials

now takes just a username and password

=head2 get_basic_credentials

Returns the set credentials, takes no options.

=head1 ACKNOWLEDGEMENTS

Marcus Ramberg <mramberg@cpan.org - original code in L<Catalyst::Plugin::Authentication::Credential::HTTP::User>

=head1 AVAILABILITY

The project homepage is L<http://search.cpan.org/dist/Catalyst-Authentication-Credential-RemoteHTTP>.

The latest version of this module is available from the Comprehensive Perl
Archive Network (CPAN). Visit L<http://www.perl.com/CPAN/> to find a CPAN
site near you, or see L<http://search.cpan.org/dist/Catalyst-Authentication-Credential-RemoteHTTP/>.

The development version lives at L<http://github.com/nigelm/Catalyst-Authentication-Credential-RemoteHTTP>
and may be cloned from L<git://github.com/nigelm/Catalyst-Authentication-Credential-RemoteHTTP>.
Instead of sending patches, please fork this project using the standard
git and github infrastructure.

=head1 BUGS AND LIMITATIONS

No bugs have been reported.

Please report any bugs or feature requests through the web interface at
L<http://rt.cpan.org>.

=head1 BUGS

Please report any bugs or feature requests to bug-catalyst-authentication-credential-remotehttp@rt.cpan.org or through the web interface at:
 http://rt.cpan.org/Public/Dist/Display.html?Name=Catalyst-Authentication-Credential-RemoteHTTP

=head1 AUTHOR

Nigel Metheringham <nigelm@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2010 by Nigel Metheringham <nigelm@cpan.org>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut

