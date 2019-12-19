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
# Check syntax of templates
#

use strict;
use warnings;

use lib 't';

use Template;
use Test::Files;
use Test::More tests => (scalar(@Test::Files::templates));

my $tprov = Template::Provider->new({
  INCLUDE_PATH  => '.',
  RELATIVE      => 1,
  PRE_CHOMP     => 1,
  TRIM          => 1
});

foreach my $template (@Test::Files::templates) {
  my ($err, $status) = $tprov->fetch($template);

  if ( !$status ) {
    ok(1, "$template syntax OK");
  }
  else {
    ok(0, "$template has syntax problem(s) --ERROR");
    diag($err . "\n");
  }
}

