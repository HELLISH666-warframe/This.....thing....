import openfl.display.BlendMode;
var dead:FlxSprite = new FlxSprite(-120, -100).loadGraphic(Paths.image('stages/newYork/black'));
//tank_stuff
var tank:FlxSprite;
var bops:FlxSprite;
//pico_stuff
var pico:FlxSprite;
var fire:FlxSprite;
var ground:FlxSprite;
var ritzdeadlol:FlxSprite;
var chud:FlxSprite;
var trains:FlxSprite;
var rainDrop:FlxSprite;
//jazzminenffjdgn_stuff_i_think
var stuff1:FlxSprite;
var light:FlxSprite;
var broke:FlxSprite;
var victoriaSecret:FlxSprite;
//misc
var snowy:FlxSprite;
var faces:FlxSprite;
var uniBG:FlxSprite;
function Create(){    FlxTween.color(boyfriend, 2, 0xFF3333, {ease: FlxEase.linear});}
function postCreate()
{
    cameraSpeed = 2;
   // FlxTween.color(dad, 2,  0xFF3333, {ease: FlxEase.linear});
//first_shit

    tank = new FlxSprite(-900, -350).loadGraphic(Paths.image('stages/universe/tankManBG'));
    tank.antialiasing = true;
    tank.scrollFactor.set(0.9, 0.9);
    tank.scale.set(1.3, 1.3);
    insert(1, tank);
    add(tank);

    bops = new FlxSprite(80,80);
    bops.antialiasing = true;
    bops.scrollFactor.set(0.9, 0.9);
    bops.scale.set(1.1, 1.1);
    bops.frames = Paths.getSparrowAtlas("stages/universe/bops");
    bops.animation.addByPrefix('bgbops2', 'tankBops', 24, true);
    bops.animation.play("bgbops2");
    insert(2, bops);
    add(bops);

    //pico_shit
    
    pico = new FlxSprite(-900, -510).loadGraphic(Paths.image('stages/universe/picoBG'));
    pico.antialiasing = true;
    pico.scrollFactor.set(0.7, 0.9);
    pico.scale.set(1.2, 1.2);

    fire = new FlxSprite(-750,-500);
    fire.antialiasing = true;
    fire.scrollFactor.set(0.4, 0.4);
    fire.scale.set(1.3, 1.1);
    fire.frames = Paths.getSparrowAtlas("stages/universe/fire");
    fire.animation.addByPrefix('oops', 'fireBG', 24, true);
    fire.animation.play("oops",false);
    fire.blend = BlendMode.ADD;

    ground = new FlxSprite(-1000, -110).loadGraphic(Paths.image('stages/universe/picoRoof'));
    ground.antialiasing = true;
    ground.scrollFactor.set(0.9, 0.9);
    ground.scale.set(1, 1.2);

    ritzdeadlol = new FlxSprite(800,190);
    ritzdeadlol.antialiasing = true;
    ritzdeadlol.scrollFactor.set(0.9, 0.9);
    ritzdeadlol.frames = Paths.getSparrowAtlas("stages/universe/picoMia");
    ritzdeadlol.animation.addByPrefix('normal', 'pico', 24, true);
    ritzdeadlol.animation.play("normal",false);

    chud = new FlxSprite(-300,220);
    chud.antialiasing = true;
    chud.scrollFactor.set(0.95, 0.95);
    chud.frames = Paths.getSparrowAtlas("stages/universe/darnell");
    chud.animation.addByPrefix('normal', 'darnell', 24, true);
    chud.animation.addByPrefix('fire', 'darnellFire', 24, true);
    chud.animation.play("normal",false);

    trains = new FlxSprite(-2000, -110).loadGraphic(Paths.image('stages/universe/blurredTrains'));
    trains.antialiasing = true;
    trains.scrollFactor.set(0.9, 0.9);
    trains.scale.set(0.9, 1);

	//jasmine's background (done)

    victoriaSecret = new FlxSprite(-1700, -450).loadGraphic(Paths.image('stages/universe/jasmineBG'));
    victoriaSecret.antialiasing = true;
    victoriaSecret.scrollFactor.set(0.9, 0.9);
    victoriaSecret.scale.set(1.3, 1.1);

    broke = new FlxSprite(800,-380);//the_final_bg_shit
    broke.antialiasing = true;
    broke.scrollFactor.set(0.9, 0.9);
    broke.frames = Paths.getSparrowAtlas("stages/universe/changShatter");
    broke.animation.addByPrefix('ads', 'brokenChand', 24, true);
    broke.animation.play("ads",false);
    broke.scale.set(1.3, 1.2);

    uniBG = new FlxSprite(-2150, -650).loadGraphic(Paths.image('stages/universe/worldBG'));
    uniBG.scrollFactor.set(0.9, 0.9);
    uniBG.scale.set(1.3, 1.2);

    stuff1 = new FlxSprite(-700,-900);//the_final_bg_shit
    stuff1.antialiasing = true;
    stuff1.scrollFactor.set(0.9, 0.9);
    stuff1.frames = Paths.getSparrowAtlas("stages/universe/world");
    stuff1.animation.addByPrefix('ads', 'glowingShits', 48, true);
    stuff1.animation.play("ads",false);
    stuff1.scale.set(1.3, 1.2);
    stuff1.blend = BlendMode.ADD;
	//targetAlpha = tonumber(0.95);
	//		setProperty('stuff1.alpha', targetAlpha);

	//weather/effects on top of sprites

    light = new FlxSprite(-200, -100).loadGraphic(Paths.image('stages/universe/lights'));
    light.antialiasing = true;
    light.scrollFactor.set(0.9, 0.9);
    light.blend = BlendMode.ADD;

    var haze:FlxSprite = new FlxSprite(-600, 300).loadGraphic(Paths.image('stages/newYork/groundHaze'));
    haze.antialiasing = true;
    haze.scrollFactor.set(0.9, 0.9);
    insert(17, haze);//over

    jazz = new FlxSprite(-400,50);
    jazz.scrollFactor.set(0.9, 0.9);
    jazz.frames = Paths.getSparrowAtlas("stages/universe/jasmineShooting");
    jazz.animation.addByPrefix('ouukillem', 'jasmineCombat', 24, true);
    jazz.animation.play("ouukillem",false);

    rainDrop = new FlxSprite(-510,-300);
    rainDrop.scrollFactor.set(0.9, 0.9);
    rainDrop.frames = Paths.getSparrowAtlas("stages/cyberCity/rain");
    rainDrop.animation.addByPrefix('bounce', 'rain tho', 48, true);
    rainDrop.animation.play("bounce",false);
    rainDrop.blend = BlendMode.overlay;
    rainDrop.alpha = 0.2;

    dead.cameras = [camHUD];
    add(dead);

    //final_shit

    snowy = new FlxSprite(-300,-100);
    snowy.scrollFactor.set(0.9, 0.9);
    snowy.frames = Paths.getSparrowAtlas("stages/newYork/snow");
    snowy.animation.addByPrefix('fall', 'daSnow', 32, true);
    snowy.animation.play("fall",false);

    faces = new FlxSprite(1900,-100);
    faces.scrollFactor.set(0, 0);
    faces.scale.set(1.2, 1.2);
    faces.frames = Paths.getSparrowAtlas("stages/universe/fadeIn");
    faces.animation.addByPrefix('portraitsBF', 'bfFadeIns', 17, true);
    faces.animation.play("portraitsBF",false);
    faces.cameras = [camGame];
   // targetAlpha = tonumber(0.7);
	//setProperty('faces.alpha', targetAlpha);
}
function stepHit(curStep)
{
    switch (curStep)
    {
        case 50:
            dead.destroy();
            camGame.flash(0xFFFFFFFF, 1);
            camGame.shake(0.15, 0.2);
            FlxTween.tween(camGame, {zoom: 0.7}, 4, {ease: FlxEase.circInOut});
            FlxG.sound.play(Paths.sound('woosh'));
            //defaultCamZoom = 0.7;
        case 512://-adds red hue for the pico BG/removes tankman BG
            tank.destroy();
            camGame.flash(0xFFFFFFFF, 1);
            camGame.shake(0.15, 0.2);
            bops.destroy();
            FlxTween.tween(camGame, {zoom: 0.7}, 2, {ease: FlxEase.circInOut});
            FlxG.sound.play(Paths.sound('woosh'));
            insert(3, pico);
            add(pico);
            insert(4, fire);
            insert(5, ground);
            insert(6, ritzdeadlol);
            insert(7, chud);        
            add(fire);
            insert(18, rainDrop);
            add(rainDrop);
            add(ground);
            add(ritzdeadlol);
            add(chud);
            insert(8, trains);
            add(trains);
        case 860:
            chud.animation.play("fire",false);
            FlxTween.tween(camGame, {zoom: 1}, 0.5, {ease: FlxEase.circIn});
        case 882://removes picos BG and hue
            insert(11, jazz);//under
            add(jazz);
            insert(10, broke);
            add(broke);
            insert(9, victoriaSecret);
            add(victoriaSecret);
            rainDrop.destroy();
            ground.destroy();
            ritzdeadlol.destroy();
            gf.alpha = 0;
            pico.destroy();
            fire.destroy();
            camGame.flash(0xFFFFFFFF, 2);
            camGame.shake(0.15, 0.4);
           // targetAlpha = tonumber(0);
           FlxG.sound.play(Paths.sound('woosh'));
           trains.destroy();
           chud.destroy();
        case 1152:
            insert(12, uniBG);
            add(uniBG);
            insert(13, stuff1);
            add(stuff1);
            remove(jazz);
            insert(16, light);//over
            add(light);
            insert(17, snowy);//over
            add(snowy);
            insert(18, faces);//over
            add(faces);
            remove(broke);
            remove(victoriaSecret);
            camGame.flash(0xFFFFFFFF, 1);
            camGame.shake(0.15, 0.2);
          //  targetAlpha = tonumber(0.5);
         // setProperty('rainDrop.alpha', targetAlpha);
         FlxTween.tween(camGame, {zoom: 0.75}, 2, {ease: FlxEase.circInOut});
        case 1275:
            FlxTween.tween(faces, {x: -500}, 20, {ease: FlxEase.smootherStepOut});
           // runTimer('daFaces', 18, 1);
        case 1536://ending
            //???removeLuaSprite('freeze', false);
            camGame.flash(0xFFFFFFFF, 5);
            camGame.shake(0.15, 0.2);
            FlxTween.tween(camGame, {alpha: 0}, 0.25);
    }
}
function destroy() {
    dead.destroy();
    tank.destroy();
    bops.destroy();
    rainDrop.destroy();
    ground.destroy();
    ritzdeadlol.destroy();
    pico.destroy();
    fire.destroy();
    trains.destroy();
    chud.destroy();
}