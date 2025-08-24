function onNoteCreation(event)
    if (event.noteType == "Knife") {
        event.noteSprite = "game/notes/Knife";
        event.note.avoid = true;

        if (FlxG.save.data.ps_hard) event.note.alpha = 0.5;
        event.note.latePressWindow = 0.25;
    }

function onPlayerMiss(event)
    if (event.noteType == "Knife") {event.cancel(true); event.note.strumLine.deleteNote(event.note);}

function onPlayerHit(event)
    if (event.noteType == "Knife") {
        event.countAsCombo = event.showRating = event.showSplash = false;
        event.strumGlowCancelled = true;
        FlxG.sound.play(Paths.sound('slash'));
        camGame.flash(0x660000, 1);
        boyfriend.animation.play("stab");

        health -= 0.55; 
    }