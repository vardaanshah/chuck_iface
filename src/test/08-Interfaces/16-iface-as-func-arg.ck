interface Bar {
    fun int three_value();
}

fun void bar_in_arg(Bar b1) {
    <<<"result: ", b1.three_value()>>>;
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

foo1 @=> b_ref;

bar_in_arg(b_ref);

woosh1 @=> b_ref;

bar_in_arg(b_ref);