# GOGO-AGREG


## Les sujets

Les sujets sont découpés en plusieurs parties, elles-mêmes découpées en plusieurs questions. Ce n'est pas pratique pour réviser comme j'en ai envie alors j'ai décidé de réorganiser les différents sujets. Ainsi, dans ce repo, les sujets sont redécoupés en fonction des compétences nécessaires pour y répondre.

### OCaml

Liste des parties de sujets relatives à OCaml :

* session 2023 épreuve 1 partie 2


## Le lab

Le site de l'agrégation fourni une VM (virtual box quelle horreur), mais pour différentes raisons je ne souhaite pas l'utiliser.
A la place j'utilise une VM basée sur le Fedora Lab Python-Classroom (https://labs.fedoraproject.org/en/python-classroom/).
L'utilité de partir de ce lab est multiple : 1) toute la partie python est quasiment déjà configurée donc c'est un gain de temps
énorme puisque c'est là qu'il y a le plus de bibliothèques à gérer, 2) l'ISO de ce lab est assez minimaliste et 3) ce n'est pas
ubuntu (si si c'est un avantage), mais ça reste plus clef en main qu'un debian ou pire, donc ça fait gagner du temps.

### Mise en place

La machine hôte est une Fedora 38 et j'utilise QEMU/KVM/VIRT-MANAGER. Lien pour la virtualisation avec
Fedora : https://docs.fedoraproject.org/en-US/quick-docs/virtualization-getting-started/ (vraiment j'adore la doc de cette distro).

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

#### Web et affilié

Sont installés SQLite, PHP

#### EDI

Vim, Emacs, JupyterLab sont présents, ainsi que Codium. Pyzo et PyCharm ne sont pas installés car 1) ils font clairement doublons avec les deux
précédents EDI et 2) ils associent 1 langage à 1'EDI, mais n'apporte aucun bénéfice (là où JupyterLab peut interpréter le code à la volée).
Enfin, Mu editor est installé. C'est un EDI didactique qui permet facilement d'initier à la programation python.

#### Utilitaire

J'ai ajouté keepassxc parce que c'est toujours bien de pouvoir stocker ses mots de passe.


## A faire

[] Enlever Gnome totalement

[] Configuration pour Codium

[] Configuration pour Vim

[] Ergonomiser le bureau
