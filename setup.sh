## Script bash pour transformer une VM Fedora lab Python-Class en VM similaire à NonOS.
## Fedora Lab Python-Class : https://labs.fedoraproject.org/en/python-classroom/
## Nonos : https://agreg-info.gitlab.io/docs/

sudo dnf update -y

# Python
sudo dnf remove thonny -y
pip install jupyterlab
sudo rpm -e python3-sympy

# OCaml
sudo dnf install utop -y
sudo dnf install ocaml -y
sudo dnf install opam -y
opam init -y
eval $(opam env --switch=default)
opam install dune -y
opam install ocaml-lsp-server ocamlformat -y
opam install merlin -y
eval $(opam env)

# Autre
sudo dnf sqlite -y
sudo dnf php -y
wget -P ~/Téléchargements https://github.com/logisim-evolution/logisim-evolution/releases/download/v3.8.0/logisim-evolution-3.8.0-1.x86_64.rpm
sudo rpm --install ~/Téléchargements/logisim-evolution-3.8.0-1.x86_64.rpm

# IDE
sudo flatpak remote-add --if-not-exists flathub https://dl.glathub.org/repo/flathub.flatpakrepo
sudo flatpak install flathub com.vscodium.codium
# Telecharger .vimrc

# Utilitaire
sudo dnf install keepassxc -y
sudo dnf swap @budgie-desktop @xfce-desktop-environment -y
