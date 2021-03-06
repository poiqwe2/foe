#!/bin/bash

java -jar compiler.jar --compilation_level SIMPLE_OPTIMIZATIONS --js \
	js/jquery-1.9.1.min.js \
	js/raphael-min.js \
	data/cufon/Kimberley_Bl_900.font.js \
	app.js \
	js/assets.js \
	js/utility.js \
	js/input.js \
	js/text.js \
	js/button.js \
	js/gui.js \
	js/gamecache.js \
	js/saver.js \
	js/statuseffect.js \
	js/ability.js \
	js/entity.js \
	js/body/body.js \
	js/body/appendage.js \
	js/body/balls.js \
	js/body/breasts.js \
	js/body/butt.js \
	js/body/cock.js \
	js/body/vagina.js \
	js/defbody.js \
	js/pregnancy.js \
	js/lactation.js \
	js/event/player.js \
	js/party.js \
	js/effect.js \
	js/perks.js \
	js/combat.js \
	js/enemy/boss.js \
	js/time.js \
	js/event.js \
	js/world.js \
	js/exploration.js \
	js/ability/attack.js \
	js/ability/physical.js \
	js/ability/seduction.js \
	js/ability/tease.js \
	js/ability/wait.js \
	js/ability/run.js \
	js/ability/white.js \
	js/ability/black.js \
	js/ability/enemyskill.js \
	js/job.js \
	js/item.js \
	js/tf.js \
	js/items/quest.js \
	js/items/ingredients.js \
	js/items/alchemy.js \
	js/items/alchemyspecial.js \
	js/items/toys.js \
	js/items/cards.js \
	js/items/combatitems.js \
	js/items/accessories.js \
	js/items/armor.js \
	js/items/strapon.js \
	js/items/weapons.js \
	js/shop.js \
	js/alchemy.js \
	js/quest.js \
	js/cavalcade.js \
	js/event/introduction.js \
	js/loc/rigard/rigard.js \
	js/loc/rigard/residential.js \
	js/loc/rigard/guards.js \
	js/loc/rigard/merchants.js \
	js/loc/rigard/plaza.js \
	js/loc/rigard/slums.js \
	js/loc/rigard/tavern.js \
	js/loc/rigard/brothel.js \
	js/loc/rigard/krawitz.js \
	js/loc/rigard/castle.js \
	js/loc/rigard/clothstore.js \
	js/loc/rigard/sexstore.js \
	js/loc/rigard/armorshop.js \
	js/loc/rigard/weaponshop.js \
	js/loc/rigard/inn.js \
	js/loc/rigard/magetower.js \
	js/loc/treecity/treecity.js \
	js/loc/plains.js \
	js/loc/highlands.js \
	js/loc/dragonden.js \
	js/loc/forest.js \
	js/loc/desert.js \
	js/loc/farm.js \
	js/loc/lake.js \
	js/loc/glade.js \
	js/loc/burrows.js \
	js/event/dreams.js \
	js/event/fera.js \
	js/event/kyna.js \
	js/event/miranda.js \
	js/event/terry.js \
	js/event/momo.js \
	js/event/sylistraxia.js \
	js/event/kiakai.js \
	js/event/brothel/roa.js \
	js/event/brothel/ches.js \
	js/event/brothel/lucille.js \
	js/event/burrows/lagon.js \
	js/event/burrows/ophelia.js \
	js/event/burrows/vena.js \
	js/event/farm/gwendy.js \
	js/event/farm/adrian.js \
	js/event/farm/danie.js \
	js/event/uru.js \
	js/event/aria.js \
	js/event/royals/lei.js \
	js/event/royals/twins.js \
	js/event/royals/jeanne.js \
	js/event/royals/golem.js \
	js/event/room69.js \
	js/event/nomads/chief.js \
	js/event/nomads/patchwork.js \
	js/event/nomads/rosalin.js \
	js/event/nomads/estevan.js \
	js/event/nomads/cale.js \
	js/event/nomads/magnus.js \
	js/event/nomads/cavalcade.js \
	js/event/outlaws/maria.js \
	js/event/raven.js \
	js/enemy/bandit.js \
	js/enemy/imp.js \
	js/enemy/introdemon.js \
	js/enemy/rabbit.js \
	js/enemy/equine.js \
	js/enemy/feline.js \
	js/enemy/lizard.js \
	js/enemy/mothgirl.js \
	js/enemy/feralwolf.js \
	js/enemy/scorp.js \
	js/enemy/naga.js \
	js/enemy/drake.js \
	js/enemy/orchid.js \
	js/main.js \
	js/credits.js \
	js/cheats.js \
	--js_output_file foe.min.js
	
rm -rf build
mkdir build

cp foe.min.js build/foe.js
cp js/excanvas.compiled.js build/excanvas.compiled.js

cp foe_min.html build/foe.html
cp style.css build/style.css
cp download.php build/download.php
cp changelog build/changelog

cp -R data build
