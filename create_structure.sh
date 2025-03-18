#!/bin/bash

# Bash-Skript zum Erstellen der Verzeichnisstruktur im aktuellen Verzeichnis

BASE_DIR=$(pwd)

# Hauptgerichte
mkdir -p "$BASE_DIR/recipes/hauptgerichte/fleisch_gefluegel"
mkdir -p "$BASE_DIR/recipes/hauptgerichte/fisch_meeresfruechte"
mkdir -p "$BASE_DIR/recipes/hauptgerichte/vegetarische_vegane_gerichte"
mkdir -p "$BASE_DIR/recipes/hauptgerichte/reis_nudel_getreidegerichte"

# Beilagen & Basics
mkdir -p "$BASE_DIR/recipes/beilagen_basics/saucen_dips_wuerzpasten"
mkdir -p "$BASE_DIR/recipes/beilagen_basics/brot_teigwaren"
mkdir -p "$BASE_DIR/recipes/beilagen_basics/gemuese_salate"

# Vorspeisen & Streetfood
mkdir -p "$BASE_DIR/recipes/vorspeisen_streetfood/suppen_eintoepfe"
mkdir -p "$BASE_DIR/recipes/vorspeisen_streetfood/snacks_fingerfood"
mkdir -p "$BASE_DIR/recipes/vorspeisen_streetfood/kleine_warme_kalte_speisen"

# Süßspeisen & Desserts
mkdir -p "$BASE_DIR/recipes/suessspeisen_desserts/kuchen_gebaeck"
mkdir -p "$BASE_DIR/recipes/suessspeisen_desserts/cremige_fruchtige_desserts"
mkdir -p "$BASE_DIR/recipes/suessspeisen_desserts/suesse_snacks"

# Getränke
mkdir -p "$BASE_DIR/recipes/getraenke/heissgetraenke"
mkdir -p "$BASE_DIR/recipes/getraenke/kalte_alkoholfreie_getraenke"
mkdir -p "$BASE_DIR/recipes/getraenke/cocktails_alkoholische_spezialitaeten"

# Moderne & Fusion-Küche
mkdir -p "$BASE_DIR/recipes/moderne_fusion_kueche/neuinterpretationen_klassischer_gerichte"
mkdir -p "$BASE_DIR/recipes/moderne_fusion_kueche/cross_kitchen_kreationen"
mkdir -p "$BASE_DIR/recipes/moderne_fusion_kueche/experimentelle_rezepte"

echo "Verzeichnisstruktur im aktuellen Projektverzeichnis erfolgreich erstellt!"
