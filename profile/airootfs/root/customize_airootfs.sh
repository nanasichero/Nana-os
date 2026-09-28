#!/bin/bash
set -e

# Criar o usuário único 'nana' com permissões totais de hardware
useradd -m -G wheel,audio,video,network,storage,optical,input -s /bin/bash nana
echo "nana ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
echo "nana:nana" | chpasswd

# Habilitar serviços essenciais no boot do Nana OS
systemctl enable NetworkManager
systemctl enable bluetooth
systemctl enable nana-kiosk.service

# Garantir que o usuário nana seja o dono de todos os seus arquivos (incluindo o tema XMB)
chown -R 1000:1000 /home/nana
