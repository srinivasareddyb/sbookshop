using my.sbookshop as my from '../db/schema';

service CatalogService {

    @Capabilities: {
        Insertable: false,
        Deletable : true
    }
    entity Books   as projection on my.Books;

    @readonly
    entity Authors as projection on my.Authors;

    // entity Orders  as projection on my.Orders;

}
