namespace my.sbookshop;

using { cuid, managed } from '@sap/cds/common';


entity Books {
    key ID     : Integer;
        title  : String;
        stock  : Integer;
        author : Association to Authors;
}

entity Authors {
    key ID    : Integer;
        name  : String;
        books : Association to many Books
                    on books.author = $self;
}

// entity Orders: cuid, managed {
//     book     : Association to Books;
//     quantity : Integer;
// }
