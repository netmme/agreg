## Script bash pour transformer une VM fedora lab Python-Class en VM compatible avec Nonos. Je suis parti du lab python-classroom car il est leger
## et la partie python est quasiment deja faite
## Fedora Lab Python-Class : https://labs.fedoraproject.org/en/python-classroom/
## Nonos : https://agreg-info.gitlab.io/docs/

sudo dnf update -y

# Python
pip install jupyterlab
sudo rpm -e python3-sympy

# OCaml
sudo dnf install utop -y
sudo dnf install ocaml -y
sudo dnf install opam -y
opam init
eval $(opam env --switch=default)
opam install dune -y
opam install ocaml-lsp-server ocamlformat -y
opam install merlin -y
eval $(opam env)

# Autre
sudo dnf sqlite -y
sudo dnf php -y

# IDE
sudo flatpak remote-add --if-not-exists flathub https://dl.glathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.vscodium.codium

# Utilitaire
sudo dnf install keepassxc -y
