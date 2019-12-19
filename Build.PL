#!/usr/bin/perl

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
# Module build script using Module::Build for testing
#

use strict;
use warnings;

use FindBin qw($RealBin);
use lib ($RealBin);

use Module::Build;

my $build = Module::Build->new
(
  module_name        => "bugzilla-bg",
  dist_abstract      => "Bugzilla in Bulgarian",
  dist_version       => "5.0.6",
  dist_author        => "Georgi D. Sotirov",
  license            => 'mozilla',
  configure_requires => {'Module::Build'  => '0.42'},
  requires           => {'perl'           => '>= 5.10.1',
                         'Template'       => '2.24',
                        },
  create_readme      => 0,
  create_makefile_pl => 0
);

$build->create_build_script;

