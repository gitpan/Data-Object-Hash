# ABSTRACT: A Hash Object for Perl 5
package Data::Object::Hash;

use 5.10.0;

use Moo 'with';
use Scalar::Util 'blessed';
use Types::Standard 'HashRef';

with 'Data::Object::Role::Hash';

our $VERSION = '0.02'; # VERSION

sub new {
    my $class = shift;
    my $data  = shift;

    $class = ref($class) || $class;
    $data  = HashRef->($data)
        unless blessed($data) && $data->isa($class);

    return bless $data, $class;
}

1;

__END__

=pod

=encoding UTF-8

=head1 NAME

Data::Object::Hash - A Hash Object for Perl 5

=head1 VERSION

version 0.02

=head1 SYNOPSIS

    use Data::Object::Hash;

    my $hash = Data::Object::Hash->new({1..4});

=head1 DESCRIPTION

Data::Object::Hash provides common methods for operating on Perl 5 hash
references.

=head1 SEE ALSO

=over 4

=item *

L<Data::Object::Array>

=item *

L<Data::Object::Code>

=item *

L<Data::Object::Float>

=item *

L<Data::Object::Hash>

=item *

L<Data::Object::Integer>

=item *

L<Data::Object::Number>

=item *

L<Data::Object::Scalar>

=item *

L<Data::Object::String>

=item *

L<Data::Object::Undef>

=item *

L<Data::Object::Universal>

=back

=head1 AUTHOR

Al Newkirk <anewkirk@ana.io>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2014 by Al Newkirk.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut
