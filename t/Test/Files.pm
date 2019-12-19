# Bugzilla-BG
# Copyright (C) 2005-2019  Georgi D. Sotirov, gsotirov@gmail.com
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#
# This Source Code Form is "Incompatible With Secondary Licenses", as
# defined by the Mozilla Public License, v. 2.0.
#
# DESCRIPTION:
# Identify templates
#

package Test::Files;

use strict;
use warnings;

use File::Find;

our @templates = ();

# Find all templates (i.e. *.tmpl files)
sub find_templates {
  push(@templates, $File::Find::name) if $_ =~ /\.tmpl$/;
}

find(\&find_templates, qw(extensions template));

1;

