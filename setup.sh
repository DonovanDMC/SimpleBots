#!/usr/bin/env bash
if [ -d config ]; then rm -r config; fi
mkdir -p config

git submodule update --init --remote

ln -s ../DataminingBot/config.example.jsonc config/datamining-bot.example.jsonc
ln -s ../DataminingBot/config.jsonc config/datamining-bot.jsonc
if [ ! -f DataminingBot/config.jsonc ]; then cp DataminingBot/config.example.jsonc DataminingBot/config.jsonc; fi

ln -s ../ErisDocsBot/config.example.jsonc config/eris-docs-bot.example.jsonc
ln -s ../ErisDocsBot/config.jsonc config/eris-docs-bot.jsonc
if [ ! -f ErisDocsBot/config.jsonc ]; then cp ErisDocsBot/config.example.jsonc ErisDocsBot/config.jsonc; fi

ln -s ../OceanicBot/config.example.jsonc config/oceanic-bot.example.jsonc
ln -s ../OceanicBot/config.jsonc config/oceanic-bot.json
if [ ! -f OceanicBot/config.jsonc ]; then cp OceanicBot/config.example.jsonc OceanicBot/config.jsonc; fi

ln -s ../Security/config.example.jsonc config/security.example.jsonc
ln -s ../Security/config.jsonc config/security.jsonc
if [ ! -f Security/config.jsonc ]; then cp Security/config.example.jsonc Security/config.jsonc; fi
