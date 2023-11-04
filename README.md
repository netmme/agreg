# GOGO-AGREG


## Les sujets

Les sujets de l'agreg sont découpés en plusieurs parties, elles-mêmes découpées en plusieurs questions. Ce n'est pas pratique pour réviser comme j'en ai envie, alors voici un redécoupage des sujets en fonction des compétences nécessaires. Certaines parties sont disponnibles en format readme. J'ai également ajouté les sujets du CAPES à la liste car ils permettent de multiplier les exercices sur un sujet (les sujets de capes sont découpés en problèmes puis partie, mais pour rester homogène avec l'agreg j'ai quand même marqué partie à la place de problème (vous suivez ?). Lorsque une même partie porte sur plusieurs compétences, je précise à partir de quelle section la nouvelle compétence commence dans la partie).

### Python

* capes session 2020 épreuve 1 partie 1
* capes session 2020 épreuve 2 partie 2
* capes session 2020 épreuve 2 partie 3
* capes session 2021 épreuve 1 partie 1
* capes session 2021 épreuve 1 partie 2 section 5
* capes session 2022 épreuve 1 partie 1
* capes session 2022 épreuve 1 partie 4
* capes session 2022 épreuve 1 partie 5
* capes session 2022 épreuve 2 partie 2
* capes session 2023 épreuve 1 partie 1
* capes session 2023 épreuve 1 partie 2
* capes session 2023 épreuve 2 partie 1 section 2.5
* agreg session 0 épreuve 2
* agreg session 0 épreuve 3 sujet 1 partie 1
* agreg session 0 épreuve 3 sujet 1 partie 3
* agreg session 0 épreuve 3 sujet 1 partie 4
* agreg session 2022 épreuve 2
* agreg session 2022 épreuve 3 sujet 1 partie 1
* agreg session 2023 épreuve 2
* agreg session 2023 épreuve 3 sujet 1 partie 1
* agreg session 2023 épreuve 3 sujet 1 partie 3

### OCaml

* agreg session 0 épreuve 1 partie 2
* agreg session 2022 épreuve 3 sujet 2
* agreg session 2023 épreuve 1 partie 2 (disponnible format readme)
* agreg session 2023 épreuve 3 sujet 3

### Système (C)

* capes session 2023 épreuve 2 partie 1
* agreg session 2022 épreuve 1 partie 1

### Web

* capes session 2021 épreuve 2 partie 2
* agreg session 0 épreuve 3 sujet 1 partie 2
* agreg session 2022 épreuve 3 sujet 1 partie 2
* agreg session 2023 épreuve 3 sujet 1 partie 5

### BD

* capes session 2020 épreuve 1 partie 2
* capes session 2021 épreuve 1 partie 1
* capes session 2022 épreuve 1 partie 2
* capes session 2022 épreuve 2 partie 1
* capes session 2023 épreuve 2 partie 2
* agreg session 0 épreuve 1 partie 1
* agreg session 2022 épreuve 3 sujet 1 partie 3
* agreg session 2023 épreuve 1 partie 1
* agreg session 2023 épreuve 3 sujet 1 partie 4
* agreg session 0 épreuve 3 sujet 1 partie 5

### Réseau

* capes session 2021 épreuve 2 partie 1
* agreg session 2022 épreuve 1 partie 4
* agreg session 2022 épreuve 3 sujet 1 partie 4
* agreg session 2023 épreuve 3 sujet 1 partie 2

### Logique et Architecture des ordinateurs

* agreg session 0 épreuve 1 partie 3
* agreg session 2022 épreuve 1 partie 3
* agreg session 2023 épreuve 1 partie 3

### Autre

* capes session 2020 épreuve 2 partie 1
* capes session 2020 épreuve 2 partie 4
* capes session 2020 épreuve 2 partie 5
* capes session 2021 épreuve 2 partie 3
* capes session 2022 épreuve 1 partie 3
* capes session 2022 épreuve 1 partie 6
* agreg session 0 épreuve 3 sujet 2
* agreg session 2022 épreuve 1 partie 2


## Le lab

Le site de l'agrégation fourni une VM (virtual box quelle horreur), mais pour différentes raisons je ne
souhaite pas l'utiliser.
A la place j'utilise une VM basée sur le Fedora Lab Python-Classroom (https://labs.fedoraproject.org/en/python-classroom/).
L'utilité de partir de ce lab est multiple : 1) toute la partie python est quasiment déjà configurée donc c'est un
gain de temps
énorme puisque c'est là qu'il y a le plus de bibliothèques à gérer, 2) l'ISO de ce lab est assez minimaliste et 3) ce
n'est pas
ubuntu (si si c'est un avantage), mais ça reste plus clef en main qu'un debian ou pire, donc ça fait gagner du temps.

### Mise en place

La machine hôte est une Fedora 38 et j'utilise QEMU/KVM/VIRT-MANAGER. Lien pour la virtualisation avec
Fedora : https://docs.fedoraproject.org/en-US/quick-docs/virtualization-getting-started/ (vraiment j'adore la doc
de cette distro).

Voici la procédure à suivre une fois que la virtualisation est activée :

1. Télécharger l'ISO de Fedora Lab Python classroom : https://labs.fedoraproject.org/python-classroom/download/index.html
(vagrant c'est devenu propriétaire donc ça pue la merde).
2. Créer la VM de vos rêves (on va faire de la programation mignonne, pas de la crypto, donc trkl sur la conf).
3. Installer l'ISO téléchargé sur la VM de vos rêves.
4. Télécharger le fichier https://github.com/netmme/agreg/blob/main/setup.sh .
5. Executer le fichier SANS les droits administrateurs.
6. Tadaa !

### Description

#### Environnement graphique

Xfce a été choisi car c'est un bon compromis entre légereté et ergonomie (même si c'est pas mon pref). De plus c'est l'environnement
utilisé sur la machine de l'agreg donc ça évitera de perdre ses marques. Helas, je n'ai pas trouvé comment totalement enlever gnome
pour gagner de la place.

#### Python

Y'a toutes les bibliothèques qui sont sur NonOS SAUF la librairie pyzo
(parce qu'elle est que utile pour un EDI et on reviendra sur la question des EDI plus tard).

La bibliothèque simpy est enlevée.

#### OCaml

OCaml est installé, avec Opam et OCaml-lsp. Dune est également installé pour gérer les projets plus facilement.

#### Autres

Sont installés SQLite et PHP.
De plus j'ai rajouté Logisim-evolution qui est très pratique pour modéliser les portes logiques, les circuits etc...
C'est très visuel, ça aide, c'est de la manipulation, on adore.

#### EDI

Vim, Emacs, JupyterLab sont présents, ainsi que Codium. Pyzo et PyCharm ne sont pas installés car 1) ils font
clairement doublons avec les deux
précédents EDI et 2) ils associent 1 langage à 1'EDI, mais n'apporte aucun bénéfice (là où JupyterLab peut
interpréter le code à la volée).
Enfin, Mu editor est installé. C'est un EDI didactique qui permet facilement d'initier à la programation python.

#### Utilitaire

J'ai ajouté keepassxc parce que c'est toujours bien de pouvoir stocker ses mots de passe.


## A faire

[] Enlever Gnome totalement

[] Configuration pour Codium

[] Configuration pour Vim

[] Ergonomiser le bureau

[] Retranscrire a2023_s1_e1_p3
