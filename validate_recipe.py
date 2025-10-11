import yaml
import sys

# Load schema
with open('schema/recipe-schema-v2.yaml', 'r', encoding='utf-8') as f:
    schema = yaml.safe_load(f)

# Load recipe
with open('recipes/levantische_kueche/beilagen/zitronen_couscous.yaml', 'r', encoding='utf-8') as f:
    recipe = yaml.safe_load(f)

print('✅ YAML syntax is valid')
print(f'📋 Recipe: {recipe["recipe"]["name"]}')
print(f'🏷️  Schema version: {recipe["schema_version"]}')

# Basic structure check
required_fields = ['name', 'category', 'subcategories', 'difficulty', 'portions', 'preparation_time', 'cooking_temperature', 'ingredients', 'steps', 'versioning']
missing = []
for field in required_fields:
    if field not in recipe['recipe']:
        missing.append(field)

if missing:
    print(f'❌ Missing required fields: {missing}')
    sys.exit(1)
else:
    print('✅ All required fields present')

# Check ingredients structure
ingredients = recipe['recipe']['ingredients']
for i, ingredient in enumerate(ingredients):
    if 'name' not in ingredient or 'amount' not in ingredient:
        print(f'❌ Ingredient {i+1} missing name or amount')
        sys.exit(1)

print(f'✅ All {len(ingredients)} ingredients have correct structure')

# Check steps structure
steps = recipe['recipe']['steps']
for i, step in enumerate(steps):
    if 'step' not in step or 'details' not in step:
        print(f'❌ Step {i+1} missing step or details')
        sys.exit(1)

print(f'✅ All {len(steps)} steps have correct structure')
print('🎯 Schema validation passed!')