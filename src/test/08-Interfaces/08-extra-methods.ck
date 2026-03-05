interface Woosh {
    fun void woosh_func();
    fun void woosh_bar_func();
}

interface Bar {
    //fun void bar_func();
    //fun void bar2_func();
    fun void woosh_bar_func();
    
}

interface Meow {

}

class Foo implements Bar, Meow, Woosh{
    fun void woosh_func() {

    }
    fun void bar_func() {

    }
    fun void bar2_func() {

    }
    fun void woosh_bar_func() {
        
    }
    
}

<<<"success">>>;