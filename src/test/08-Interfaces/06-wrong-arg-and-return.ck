interface Woosh {
    fun void woosh_func();
}

interface Bar {
    fun void bar_func();
    
}

interface Meow {

}

class Foo implements Bar, Meow, Woosh{
    fun int woosh_func(int args2) {
        return 1;
    }
    fun void bar_func() {

    }
    
}

<<<"success">>>;