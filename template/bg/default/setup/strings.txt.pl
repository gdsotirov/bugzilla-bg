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
    chmod_failed      => '##path##: Пропадна смяна на права: ##error##',
    chown_failed      => '##path##: Пропадна смяна на собственост: ##error##',
    commands_dbd      => <<EOT,
ТРЯБЯА ДА ПУСНЕТЕ ЕДНА ОТ СЛЕДНИТЕ КОМАНДИ (в зависимост от това коя база данни
използвате):
EOT
    commands_optional => 'КОМАНДИ ЗА ИНСТАЛИРАНЕ НА НЕЗАДЪЛЖИТЕЛНИ МОДУЛИ:',
    commands_required => <<EOT,
КОМАНДИ ЗА ИНСТАЛИРАНЕ НА ЗАДЪЛЖИТЕЛНИ МОДУЛИ (*Трябва да* пуснете всички тези команди
и пуснете отново този скрипт):
EOT
    done => 'готово.',
    extension_must_return_name => <<END,
##file## върна ##returned##, което не е правилно име на разширение.
Разширенията трябва да върнат името си, а не <code>1</code> или друго число. Вижте
документацията на Bugzilla::Extension за подробности.
END
    feature_auth_ldap         => 'LDAP удостоверяване',
    feature_auth_radius       => 'RADIUS удостоверяване',
    feature_graphical_reports => 'Графични доклади',
    feature_html_desc         => 'Повече HTML в описанията на Продукт/Група',
    feature_inbound_email     => 'Входяща е-поща',
    feature_jobqueue          => 'Поща във фонов режим',
    feature_jsonrpc           => 'JSON-RPC Interface',
    feature_new_charts        => 'Нови графики',
    feature_old_charts        => 'Стари графики',
    feature_mod_perl          => 'mod_perl',
    feature_moving            => 'Преместване на бъгове между инсталации',
    feature_patch_viewer      => 'Преглед на кръпки',
    feature_smtp_auth         => 'SMTP удостоверяване',
    feature_updates           => 'Автоматични уведомления за обновяване',
    feature_xmlrpc            => 'XML-RPC Interface',

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
    installation_failed => '*** Провалена инсталация. Прочетете предходното съобщение. ***',
    max_allowed_packet => <<EOT,
ВНИМАНИЕ: Трябва да зададете параметъра max_allowed_packet в MySQL
настройката си до поне ##needed##. В момента той е зададен на ##current##.
Можете да зададете параметъра в секцията [mysqld] на вашия MySQL
файл с настройки.
EOT
    min_version_required => "Необходима минимална версия: ",

# Note: When translating these "modules" messages, don't change the formatting
# if possible, because there is hardcoded formatting in 
# Bugzilla::Install::Requirements to match the box formatting.
    modules_message_db => <<EOT,
***********************************************************************
* ДОСТЪП ДО БАЗИ ДАННИ                                                *
***********************************************************************
* За достъп до базата ви данни, Bugzilla изисква                      *
* правилния "DBD" модул да бъде инсталиран за базата данни която      *
* ползвате. Вижте отдолу за правилната команда пускаща инсталацията   *
* на подходящия модул за вашата база данни.                           *
EOT
    modules_message_optional => <<EOT,
***********************************************************************
* НЕЗАДЪЛЖИТЕЛНИ МОДУЛИ                                               *
***********************************************************************
* Определени Perl модули не са задължителни за Bugzilla, но с         *
* инсталиране на последната версия получавате достъп до допълнителни  *
* възможности.                                                        *
*                                                                     *
* Незадължителните модули които нямате инсталирани са показани        *
* отдолу, с името на възможността която разрешават. Под тази таблица  *
* са командите за инсталирането на всеки модул.                       *
EOT
    modules_message_required => <<EOT,
***********************************************************************
* ЗАДЪЛЖИТЕЛНИ МОДУЛИ                                                 *
***********************************************************************
* Bugzilla изисква да инсталирате някои Perl модули които или         *
* липсват на системата ви, или версията е твърде стара.               *
* Вижде отдолу за команди за инсталирането им.                        *
EOT

    module_found => "открита v##ver##",
    module_not_found => "не е открит",
    module_ok => 'ok',
    module_unknown_version => "открита непозната версия",
    no_such_module => "Не съществува Perl модул в CPAN с име ##module##.",
    ppm_repo_add => <<EOT,
***********************************************************************
* Забележка за Windows потребители                                    *
***********************************************************************
* За да инсталирате модулите показани отдолу, първо трябва да пуснете * 
* следната команда като Administrator:                                *
*                                                                     *
*   ppm repo add theory58S ##theory_url##
EOT
    ppm_repo_up => <<EOT,
*                                                                     *
* След това трябва да направите (също като Administrator):            *
*                                                                     *
*   ppm repo up theory58S                                             *
*                                                                     *
* Пуснете последната команда отново и отново докато видите            *
* "theory58S" в началото на показания списък.                         *
EOT
    template_precompile   => "Предварителна компилация на шаблони...",
    template_removal_failed => <<END,
ВНИМАНИЕ: Папката '##datadir##/template' не може да бъде премахната.
         Тя беше преместена в '##datadir##/deleteme', като трябва да бъде
         изтрита ръчно за икономия на дисково пространство.
END
    template_removing_dir => "Премахване на съществуващите компилирани шаблони...",
);

1;
