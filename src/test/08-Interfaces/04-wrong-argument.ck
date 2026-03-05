interface Woosh {
    fun void woosh_func();
}

interface Bar {
    fun void bar_func();
    
}

interface Meow {

}

class Foo implements Bar, Meow, Woosh{
    fun void woosh_func(int arg1) {

    }
    fun void bar_func() {

    }
    
}

<<<"success">>>;