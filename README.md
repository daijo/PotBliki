~PotBliki
=========

Plain text [Bliki][1] tools inspired by Edwin Steiner's [PotWiki][2] for Vim, Matt Web's [TextMate bundle][3] and the Git-powered plain text blog [Toto][4].

The project goal is to provide a small set of simple tools for publishing a personal Bliki.

Uses [Sundown][5]. [Source][6] available on Github.

## Run tests

    chmod u+x runtests
    ./runtests

## Start using

1. Install the script in your PATH using 'install [PATH]'.
2. In the directory you want to be your Bliki home run 'potwiki init'.
3. Edit .bliki/bliki_conf
4. Write wikipages and posts in Markdown.
5. Run 'potwiki make'.

It is recommended to use a plain text wiki plugin for your editor.

## Vim plugin

Add a post header:

    <Leader>bn

Make the bliki:

    <Leader>bm

Open bliki in default browser:

    <Leader>bo

## Post header

Every blog post should have the following header:

    title: [TITLE]
    author: [LASTNAME] [FIRSTNAME]
    date: [YYYY]/[MM]/[DD]
    location: [CITY], [COUNTRY]
    tags: [TAGS]

## Escape ~WikiWords
Warning: this section will not be correct if vieved in plain text but will look correct in the Bliki.

Sometimes you want to escape the ~WikiWords. Use ~~ in front of the WikiWord and it won't be made in to a link. If you want to use a ~~ write ~~~ and one will survive the process.

    ~~WikiWord

is rendered like

~WikiWord;

while

    ~WikiWord

is rendered like

WikiWord.

## Github Integration

### Edit pages on Github

If you store the Bliki repository on Github you can fill in the following info in .bliki/bliki_conf:

    GITHUB_REPO_URL="https://github.com/daijo/Bliki"

This will make a "Edit on Github" link appear on each page. If you have access to the repo there you can edit the page following the link.

### Update Bliki on Github post-receive

Install the script on the server according to 'Start using' and pull the bliki git from Github.

Make sure the TARGET_DIR in bliki_conf point to the web server root. In the bliki directory run:

    potbliki github
    potbliki make

Set Githubs post-receive post to:

    [Your bliki's URL]/cgi-bin/push.cgi

Anytime you push to your repo on Github the bliki will now pull from the repo and remake the bliki.

## Disqus Integration

If you have a Disqus-account, register the Bliki there and enter the Disqus short name in your .bliki_conf:

    DISQUS_SHORTNAME="techaregbliki"

## Page Javascript

Javascript files put in the .bliki directory will be picked up during the blike make process and added to each page. Useful for Google Analytics etc.

Roadmap
-------

[Roadmap on Github](https://github.com/daijo/~PotBliki/issues/milestones)

[1]: http://en.wikipedia.org/wiki/Bliki
[2]: http://www.vim.org/scripts/script.php?script_id=1018
[3]: http://interconnected.org/home/2007/05/20/plain_text_wiki
[4]: http://cloudhead.io/toto
[5]: https://github.com/tanoku/sundown
[6]: https://github.com/daijo/~PotBliki
