interface Woosh {
    fun void woosh_func();
    fun void woosh_bar_func();
}

interface Bar {
    fun void bar2_func();
    fun void bar_func();
    fun void woosh_bar_func();
    
}

interface Meow {

}

class Foo implements Bar, Meow, Woosh{
    fun void bar2_func() {
        <<<"working?">>>;
    }
    fun void woosh_func() {

    }
    fun void bar_func() {

    }
    fun void woosh_bar_func() {
        
    }
    
}

class OtherFoo implements Bar{
    fun void bar_func(){

    }
    fun void woosh_bar_func () {

    }
    fun void bar2_func() {
        <<<"this should be different">>>;
    }
}

class FinalFoo implements Bar {
    fun void bar_func () {

    }
    fun void bar2_func() {
        <<<"my final form">>>;
    }
    fun void woosh_bar_func () {

    }
}

OtherFoo foo_inst;

//foo_inst.bar2_func();
//foo_inst.woosh_bar_func();

Bar @ foo_as_bar;
foo_inst @=> foo_as_bar;
foo_as_bar.bar2_func();

Foo other_foo_inst;

other_foo_inst @=> foo_as_bar;

foo_as_bar.bar2_func();

FinalFoo final_foo;

final_foo @=> foo_as_bar;

foo_as_bar.bar2_func();

Bar @ my_reference_bar;

//foo_inst.non_existent();

//Bar my_other_bar;

//new Bar() => Bar my_bar;

//my_bar.bar2_func();

<<<"success">>>;