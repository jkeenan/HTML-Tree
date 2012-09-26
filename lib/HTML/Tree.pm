package HTML::Tree;

# ABSTRACT: build and scan parse-trees of HTML

# HTML::Tree is basically just a happy alias to HTML::TreeBuilder.

use warnings;
use strict;

# VERSION from OurPkgVersion

use HTML::TreeBuilder ();

=head1 SYNOPSIS

    use HTML::TreeBuilder;
    my $tree = HTML::TreeBuilder->new();
    $tree->parse_file($filename);

        # Then do something with the tree, using HTML::Element
        # methods -- for example:

    $tree->dump

        # Finally:

    $tree->delete;

=cut

sub new {
    shift;
    unshift @_, 'HTML::TreeBuilder';
    goto &HTML::TreeBuilder::new;
}

sub new_from_file {
    shift;
    unshift @_, 'HTML::TreeBuilder';
    goto &HTML::TreeBuilder::new_from_file;
}

sub new_from_content {
    shift;
    unshift @_, 'HTML::TreeBuilder';
    goto &HTML::TreeBuilder::new_from_content;
}

sub new_from_string {
    shift;
    unshift @_, 'HTML::TreeBuilder';
    goto &HTML::TreeBuilder::new_from_string;
}

sub new_from_url {
    shift;
    unshift @_, 'HTML::TreeBuilder';
    goto &HTML::TreeBuilder::new_from_url;
}

1;

=head1 DESCRIPTION

HTML-Tree is a suite of Perl modules for making parse trees out of
HTML source.  It consists of mainly two modules, whose documentation
you should refer to: L<HTML::TreeBuilder|HTML::TreeBuilder>
and L<HTML::Element|HTML::Element>.

HTML::TreeBuilder is the module that builds the parse trees.  (It uses
HTML::Parser to do the work of breaking the HTML up into tokens.)

The tree that TreeBuilder builds for you is made up of objects of the
class HTML::Element.

If you find that you do not properly understand the documentation
for HTML::TreeBuilder and HTML::Element, it may be because you are
unfamiliar with tree-shaped data structures, or with object-oriented
modules in general. Sean Burke has written some articles for
I<The Perl Journal> (C<www.tpj.com>) that seek to provide that background.
The full text of those articles is contained in this distribution, as:

=over 4

=item L<HTML::Tree::AboutObjects|HTML::Tree::AboutObjects>

"User's View of Object-Oriented Modules" from TPJ17.

=item L<HTML::Tree::AboutTrees|HTML::Tree::AboutTrees>

"Trees" from TPJ18

=item L<HTML::Tree::Scanning|HTML::Tree::Scanning>

"Scanning HTML" from TPJ19

=back

Readers already familiar with object-oriented modules and tree-shaped
data structures should read just the last article.  Readers without
that background should read the first, then the second, and then the
third.

=head1 METHODS

All these methods simply redirect to the corresponding method in
HTML::TreeBuilder.  It's more efficient to use HTML::TreeBuilder
directly, and skip loading HTML::Tree at all.

=method new

Redirects to L<HTML::TreeBuilder/new>.

=method new_from_file

Redirects to L<HTML::TreeBuilder/new_from_file>.

=method new_from_content

Redirects to L<HTML::TreeBuilder/new_from_content>.

=method new_from_string

Redirects to L<HTML::TreeBuilder/new_from_string>.

=method new_from_url

Redirects to L<HTML::TreeBuilder/new_from_url>.

=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc HTML::Tree

    You can also look for information at:

=over 4

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/HTML-Tree>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/HTML-Tree>

=item * RT: CPAN's request tracker

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=HTML-Tree>

=item * Search CPAN

L<http://search.cpan.org/dist/HTML-Tree>

=item * Stack Overflow

L<http://stackoverflow.com/questions/tagged/html-tree>

If you have a question about how to use HTML-Tree, Stack Overflow is
the place to ask it.  Make sure you tag it both C<perl> and C<html-tree>.

=back

=head1 SEE ALSO

L<HTML::TreeBuilder>, L<HTML::Element>, L<HTML::Tagset>,
L<HTML::Parser>, L<HTML::DOMbo>

The book I<Perl & LWP> by Sean M. Burke published by
O'Reilly and Associates, 2002.  ISBN: 0-596-00178-9

It has several chapters to do with HTML processing in general,
and HTML-Tree specifically.  There's more info at:

    http://www.oreilly.com/catalog/perllwp/

    http://www.amazon.com/exec/obidos/ASIN/0596001789

=head1 SOURCE REPOSITORY

HTML-Tree is now maintained using Git.  The main public repository is
L<< {{ $meta{resources}{repository}{web} // die 'no repo' }} >>.

The best way to send a patch is to make a pull request there.

=head1 ACKNOWLEDGEMENTS

Thanks to Gisle Aas, Sean Burke and Andy Lester for their original work.

Thanks to Chicago Perl Mongers (http://chicago.pm.org) for their
patches submitted to HTML::Tree as part of the Phalanx project
(http://qa.perl.org/phalanx).

Thanks to the following people for additional patches and documentation:
Terrence Brannon, Gordon Lack, Chris Madsen and Ricardo Signes.

=cut

