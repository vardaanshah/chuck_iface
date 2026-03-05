interface Bar {
    fun int three_value();
}

class Meow {
    Bar @ b_meow;

    fun void make_meow() {
        b_meow.three_value();
    }
}

class Foo implements Bar {
    fun int three_value() {
        <<<"this is a foo">>>;
        return 3;
    }
}

class Woosh implements Bar {
    fun int three_value() {
        <<<"this is a woosh">>>;
        return 3;
    }
}

Foo foo1;
Woosh woosh1;

Bar @ b_ref;
Bar @ b_ref2;
woosh1 @=> b_ref;
foo1 @=> b_ref2;

Meow meow1;
Meow meow2;

b_ref @=> meow1.b_meow;
b_ref2 @=> meow2.b_meow;

meow1.make_meow();
meow2.make_meow();

