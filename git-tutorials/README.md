# Git használat röviden

## Beüzemelés a közös munkához

1. git cli/gui telepítése
* cli: https://git-scm.com/download
* gui (opcionális): https://desktop.github.com/

2. git global config: username + email beállítása
```
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
$ git config --global --list # To check the info you just provided
```

3. SSH kulcs generálás, beállítás
* ezen a leíráson kell majd végigmennie mindenkinek: https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
* és ezek után az SSH publikus kulcs hozzáadása itt: https://github.com/settings/keys

4. hozzáférés tesztelés
megnyitod a repo oldalát: https://github.com/barkasz/ReCo
majd a "Code" gombra kattintva az SSH clone stringet felhasználva clone-ozod a repot cli-ből
git clone <SSH clone string> formában, tehát ezt fogod majd összeollózni:

```
git clone git@github.com:barkasz/agile-masters-test.git
```
