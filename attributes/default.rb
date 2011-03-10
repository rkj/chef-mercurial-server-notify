default[:mercurial][:notify][:email][:from] = "hg@localhost"
default[:mercurial][:notify][:email][:to] = "hg@localhost"
default[:mercurial][:notify][:smtp][:host] = "localhost"
default[:mercurial][:notify][:style] = "/etc/mercurial-server/notify.style"

default[:mercurial][:notify][:header] = "X-Repo: {webroot|basename}"
default[:mercurial][:notify][:subject] = "[{webroot|basename}] Mercurial changeset {rev} by {author}"
default[:mercurial][:notify][:body] = 'Repository: {webroot|basename}/repository\nchangeset: {rev}\nuser:      {author}\ndate:      {date|date}\n{file_mods}{file_adds}{file_dels}{file_copies_switch}{extras}\ndescription:\n{desc}\n'

