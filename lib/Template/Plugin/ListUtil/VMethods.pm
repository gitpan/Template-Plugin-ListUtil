package Template::Plugin::ListUtil::VMethods;
use Template::Plugin::ListUtil;

use strict;

# must load this first otherwise if it's loaded later
# then it will overwrite the stuff we're sticking in
# the LIST_OPS hash
use Template::Stash;

# list of the vmethods to install
@LIST_OPS qw(max maxstr min minstr
	     shuffle random any all
	     none notall true false);

=head1 NAME

Template::Plugin::ListUtil::VMethods - list util functions as vmethods

=head1 SYNOPSIS

   [% USE ListUtil.VMethods %]

   Then you can use any of the ListUtil methods as vmethods

   [% big = array.largest %]

=head1 DESCRIPTION

When this plugin/module is loaded it installs all the functions that
are normally avalible thought the Template::Plugin::ListUtil plugin
as VMethods that can be called directly on a list.

All vmethods act exactly the same as the original functions do; They
all return values rather than modifiying the original list.

This module installs the vmethods when you load it and removes the
vmethods when you exit that template.  This means that all templates
that are INCLUDEed from that template will have access to the vmethods
too.

You can perminatly install the vmethods by loading it from Perl space
with the 'install' option.  This will enable the vmethods for all


=head1 BUGS



