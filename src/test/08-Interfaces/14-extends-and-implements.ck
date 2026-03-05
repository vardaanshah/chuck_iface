interface Playable {
    fun void play(int note);
}

class Instrument1 implements Playable {
    fun void play(int note) {
        <<<"instrument one played ",note>>>;
    }
}

class Instrument2 implements Playable {
    0 => int tone;
    
    fun void change_tone(int t) {
        t => tone;
    }
    
    fun void play(int note) {
        <<<"instrument 2 played ",note," in tone ", tone>>>;
    }
}

class Instrument3 extends Instrument2 implements Playable {
    fun void play(int note) {
        <<<"instrument 3, overriding 2, played ",note>>>;
    }

    fun void play_with_tone(int note) {
        <<<"instrument 3 played with tone",tone>>>;
    }
}

Playable @ player;
Instrument1 i1;

i1 @=> player;

player.play(1);

Instrument2 i2;
i2.change_tone(4);

i2 @=> player;

player.play(1);

Instrument3 i3;
i3.change_tone(7);

i3.play_with_tone(3);
i3.play(6);

i3 @=> player;

player.play(65);