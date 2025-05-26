#!/bin/bash

# Rezept-Verzeichnisstruktur für recipe-db erstellen
BASE_DIR=$(pwd)/recipes

echo "📁 Verzeichnisstruktur wird unter $BASE_DIR erstellt..."

# Strukturdefinition als Array (category/subcategory)
structure=(
  "hauptgerichte/fleisch_und_gefluegel"
  "hauptgerichte/fisch_und_meeresfruechte"
  "hauptgerichte/vegetarische_und_vegane_gerichte"
  "hauptgerichte/reis_nudel_und_getreidegerichte"

  "beilagen_und_basics/saucen_dips_und_wuerzpasten"
  "beilagen_und_basics/brot_und_teigwaren"
  "beilagen_und_basics/gemuese_und_salate"

  "vorspeisen_und_streetfood/suppen_und_eintoepfe"
  "vorspeisen_und_streetfood/snacks_und_fingerfood"
  "vorspeisen_und_streetfood/kleine_warme_und_kalte_speisen"

  "suessspeisen_und_desserts/kuchen_und_gebaeck"
  "suessspeisen_und_desserts/cremige_und_fruchtige_desserts"
  "suessspeisen_und_desserts/suesse_snacks"

  "getraenke/heissgetraenke"
  "getraenke/kalte_und_alkoholfreie_getraenke"
  "getraenke/cocktails_und_alkoholische_spezialitaeten"

  "moderne_und_fusion_kueche/neuinterpretationen_klassischer_gerichte"
  "moderne_und_fusion_kueche/cross_kitchen_kreationen"
  "moderne_und_fusion_kueche/experimentelle_rezepte"
)

for path in "${structure[@]}"; do
  mkdir -p "$BASE_DIR/$path"
done

echo "✅ Verzeichnisstruktur erfolgreich erstellt!"
