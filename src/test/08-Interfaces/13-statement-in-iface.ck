interface Woosh {
   
}

interface Bar {
    <<<"this should not print">>>;
}

interface Meow {

}

class Foo implements Bar, Meow, Woosh{
    
}

<<<"success">>>;