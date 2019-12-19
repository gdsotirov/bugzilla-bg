# Bugzilla in Bulgarian

This is the official translation of [Bugzilla](https://www.bugzilla.org/) in
Bulgarian language. The project provides translated templates with clarification
of common technical abbreviations (e.g. HTTP, LDAP, etc.).

Please, see [Localized Versions](https://www.bugzilla.org/download/#localizations)
for other localizations.

# Supported versions

The translation effort began in the summer of 2005, so
[all versions](https://www.bugzilla.org/releases/) since Bugzilla 2.18.1 are
translated. Currently supported versions are:

* [Bugzilla 4.4.13](https://github.com/gdsotirov/bugzilla-bg/releases/tag/bugzilla-bg-4.4.13) (old stable);
* [Bugzilla 5.0.6](https://github.com/gdsotirov/bugzilla-bg/releases/tag/bugzilla-bg-5.0.6) (current stable).

# History

In the spring of 2005 I was evaluating [Bugzilla](https://www.bugzilla.org/)
as a bug tracking system for my [home server](https://sotirov-bg.net/). I
noticed its localized in several languages, but there was no available
translation in Bulgarian. So I started researching how I could contribute
following Bugzilla's [Localization Guide](https://bugzilla.readthedocs.io/en/latest/localizing/index.html).
After several weeks of translating I ended up with localization of Bugzilla
2.18.1 templates. Later on, I decided to publish the project on OpenFMI and
I was invited by [Ognyan Kulev](https://bg.linkedin.com/in/ognyankulev) to
join Mozilla-BG project.

Thus, since December 2005 Bugzilla translation in Bulgarian was included in
[Mozilla-BG](https://web.archive.org/web/20060214030503/http://mozilla-bg.openfmi.net:80/)
(snapshot from 2006-02-14) project at [OpenFMI](https://web.archive.org/web/20051217223904/http://openfmi.net/)
(snapshot from 2005-12-17), which used [GForge](https://en.wikipedia.org/wiki/GForge)
as team collaboration platform. The translated templates were committed in
the [Subversion](https://subversion.apache.org/) (SVN) repository of the
project on 2005-12-25. I used branches and tags to manage the different
supported versions of Bugzilla and mark the translated releases similarly to
how Bugzilla development itself was organized. I was not a big fan of
Subversion though as I had numerous problems (e.g. with tagging/branching
and [structural conflicts](http://svnbook.red-bean.com/en/1.7/svn-book.html#svn.tour.treeconflicts)).

The Community Edition of GForge was dropped in 2010 and OpenFMI ceased to
exist (without notice) somewhere in August 2012 (there were problems
with access to the SVN repository since March). In November 2012, as I tried
to update the translation for Bugzilla 3.6.10, 4.0.7 and 4.2.2 releases, I
found out that the SVN repository was moved silently to a
[Trac](https://trac.edgewall.org/) installation, but I could not use it. So
Ognyan converted it to [Mercurial](https://www.mercurial-scm.org/) (Hg) in
and uploaded it to [his account](https://bitbucket.org/ogi/mozilla.bg/)
at [BitBucket](https://bitbucket.org/). I was given permissions and the work
continued like this for the next 7 years.

[This year](https://gdsotirov.blogspot.com/2019/02/first-migrations-from-cvs-to-git.html)
as I'm slowly [migrating](https://gdsotirov.blogspot.com/2018/05/migration-to-git-and-github.html)
my personal projects to [Git](https://git-scm.com/) and [GitHub](https://github.com/)
I finally managed to migrate [Bugzilla-BG](bugzilla-bg). Unfortunately,
this was not an easy path as with my other projects, because there were
problems with the SVN repository that become more apparent after the
migration to Hg in 2012. These problems were:

  * _No synchronization with main trunk_. I started the `/bugzilla` folder
    as a sub-project in SVN, because in fact only this folder was using
    tags and branches with the recommended
    [repository layout](http://svnbook.red-bean.com/en/1.7/svn-book.html#svn.branchmerge.maint.layout).
    The version history was thus disconnected from the rest of the
    repository. This was OK in SVN at the time.
  * _Branch 3.0 in midair_. Due to oversight I created the 3.0 branch
    completely disconnected from the other history, but all the next
    commits were based on it.

Therefore, in Hg the result was two different default branches before the
migration (when Ognyan merged them) with the history of the Bugzilla
translation split in two separate trees (before 3.0 branch and after it).
I was willing to split the `/bugzilla` folder into a separate repository
since December 2012 and fix its structure, but never found the time until
now.

I experimented migration with several tools including
[reposurgeon](https://gitlab.com/esr/reposurgeon), but neither provided
satisfactory results. So I decided to try
[GitHub Importer](https://help.github.com/en/github/importing-your-projects-to-github/about-github-importer),
which generally done well, except for the following:
  * wrong revision log encoding (Cyrillic letters appeared as question marks);
  * 'Add/Remove tag' Hg specific commits unnecessarily plaguing history; and
  * many of the tags were misplaced (on different commits).

Therefore, I decided to recreate the complete revision history as it should
be from scratch based on the migrated Hg repository. The result is this
repository that accurately represents the history of the translation project with
all the modifications and releases.

# TODO

I have never found the time to translate Bugzilla's [Documentation](https://www.bugzilla.org/docs/).

# Translators

The original translation and updates are provided by Georgi D. Sotirov
([maintainer](https://wiki.mozilla.org/Bugzilla:L10n:Localization_Teams#Bulgarian)
of Bugzilla localization in Bulgarian).

I would like to give special thanks to Ivan Mednev for his help with improving
this translation over the years.

Contributions in the form of corrections, additions and/or suggestions for
better translation and are always welcome!

# License

The translation was originally licensed under GPL-2.0, but the current license
is MPL-2.0, which aligns with the original Bugzilla templates in English. See
file [COPYING](COPYING) for details.

