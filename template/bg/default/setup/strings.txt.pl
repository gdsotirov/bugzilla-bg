# The contents of this file are subject to the Mozilla Public
# License Version 1.1 (the "License"); you may not use this file
# except in compliance with the License. You may obtain a copy of
# the License at http://www.mozilla.org/MPL/
#
# Software distributed under the License is distributed on an "AS
# IS" basis, WITHOUT WARRANTY OF ANY KIND, either express or
# implied. See the License for the specific language governing
# rights and limitations under the License.
#
# The Initial Developer of the Original Code is Everything Solved.
# Portions created by Everything Solved are Copyright (C) 2007
# Everything Solved. All Rights Reserved.
#
# The Original Code is the Bugzilla Bug Tracking System.
#
# Contributor(s): Max Kanat-Alexander <mkanat@bugzilla.org>

# This file contains a single hash named %strings, which is used by the
# installation code to display strings before Template-Toolkit can safely
# be loaded.
#
# Each string supports a very simple substitution system, where you can
# have variables named like ##this## and they'll be replaced by the string
# variable with that name.
#
# Please keep the strings in alphabetical order by their name.

%strings = (
    any  => 'всяка',
    blacklisted => '(в черния списък)',
    checking_for => 'Проверка за',
    checking_dbd      => 'Проверка на наличните Perl DBD модули...',
    checking_optional => 'Следните Perl модули са незадължителни:',
    checking_modules  => 'Проверка на Perl модули...',
    done => 'готово.',
    header => "* Това е Bugzilla ##bz_ver## на perl ##perl_ver##\n"
            . "* Работеща на ##os_name## ##os_ver##",
    install_all => <<EOT,

За да опитате автоматична инсталация на всеки задължителен и незадължителен модул
с една команда, изпълнете:

  ##perl## install-module.pl --all

EOT
    install_data_too_long => <<EOT,
ВНИМАНИЕ: Някои от данните в колоната ##table##.##column## са по-дълги от
новото ѝ ограничние за дължина от ##max_length## символа. Данните, които трябва да
се оправят са отпечатани отдолу, като първо е стойността на колоната ##id_column##, а
след това е стойността на колоната ##column##, която трябва да се оправи:

EOT
    install_module => 'Инсталиране на ##module## версия ##version##...',
    module_found => "открита v##ver##",
    module_not_found => "не е открит",
    module_ok => 'ok',
    module_unknown_version => "открита непозната версия",
    template_precompile   => "Предварителна компилация на шаблони...",
    template_removing_dir => "Премахване на съществуващите компилирани шаблони...",
);

1;
