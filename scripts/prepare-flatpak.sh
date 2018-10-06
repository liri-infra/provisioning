#!/bin/bash

gpg_key=A1191CB3A3FA1E2602D5882DE8FDD68223234001

gpg2 --export-secret-keys $gpg_key > flatpak-priv.gpg
gpg2 --output flatpak-pub.gpg --export $gpg_key

mkdir -p flatpak-gpg
gpg2 --homedir flatpak-gpg --import flatpak-priv.gpg
gpg2 --homedir flatpak-gpg --import flatpak-pub.gpg

tar czf flatpak-gpg.tar.gz flatpak-gpg
./vault encrypt flatpak-gpg.tar.gz
mv flatpak-gpg.tar.gz playbooks/roles/buildbot-master/files/
