; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8392 () Bool)

(assert start!8392)

(declare-fun b!56614 () Bool)

(declare-fun b_free!1925 () Bool)

(declare-fun b_next!1925 () Bool)

(assert (=> b!56614 (= b_free!1925 (not b_next!1925))))

(declare-fun tp!7875 () Bool)

(declare-fun b_and!3401 () Bool)

(assert (=> b!56614 (= tp!7875 b_and!3401)))

(declare-fun b!56599 () Bool)

(declare-fun b_free!1927 () Bool)

(declare-fun b_next!1927 () Bool)

(assert (=> b!56599 (= b_free!1927 (not b_next!1927))))

(declare-fun tp!7877 () Bool)

(declare-fun b_and!3403 () Bool)

(assert (=> b!56599 (= tp!7877 b_and!3403)))

(declare-fun b!56598 () Bool)

(declare-fun res!31810 () Bool)

(declare-fun e!37288 () Bool)

(assert (=> b!56598 (=> (not res!31810) (not e!37288))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!2819 0))(
  ( (V!2820 (val!1234 Int)) )
))
(declare-datatypes ((array!3680 0))(
  ( (array!3681 (arr!1762 (Array (_ BitVec 32) (_ BitVec 64))) (size!1991 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!846 0))(
  ( (ValueCellFull!846 (v!2350 V!2819)) (EmptyCell!846) )
))
(declare-datatypes ((array!3682 0))(
  ( (array!3683 (arr!1763 (Array (_ BitVec 32) ValueCell!846)) (size!1992 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!600 0))(
  ( (LongMapFixedSize!601 (defaultEntry!2014 Int) (mask!5883 (_ BitVec 32)) (extraKeys!1905 (_ BitVec 32)) (zeroValue!1932 V!2819) (minValue!1932 V!2819) (_size!349 (_ BitVec 32)) (_keys!3634 array!3680) (_values!1997 array!3682) (_vacant!349 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!410 0))(
  ( (Cell!411 (v!2351 LongMapFixedSize!600)) )
))
(declare-datatypes ((LongMap!410 0))(
  ( (LongMap!411 (underlying!216 Cell!410)) )
))
(declare-fun thiss!992 () LongMap!410)

(assert (=> b!56598 (= res!31810 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1991 (_keys!3634 (v!2351 (underlying!216 thiss!992)))))))))

(declare-fun tp_is_empty!2379 () Bool)

(declare-fun e!37289 () Bool)

(declare-fun e!37274 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!600)

(declare-fun array_inv!1041 (array!3680) Bool)

(declare-fun array_inv!1042 (array!3682) Bool)

(assert (=> b!56599 (= e!37289 (and tp!7877 tp_is_empty!2379 (array_inv!1041 (_keys!3634 newMap!16)) (array_inv!1042 (_values!1997 newMap!16)) e!37274))))

(declare-fun b!56600 () Bool)

(declare-fun e!37279 () Bool)

(declare-fun e!37281 () Bool)

(assert (=> b!56600 (= e!37279 e!37281)))

(declare-fun b!56601 () Bool)

(declare-fun e!37287 () Bool)

(declare-fun e!37278 () Bool)

(assert (=> b!56601 (= e!37287 e!37278)))

(declare-fun res!31812 () Bool)

(assert (=> b!56601 (=> (not res!31812) (not e!37278))))

(declare-datatypes ((tuple2!2022 0))(
  ( (tuple2!2023 (_1!1021 (_ BitVec 64)) (_2!1021 V!2819)) )
))
(declare-datatypes ((List!1442 0))(
  ( (Nil!1439) (Cons!1438 (h!2018 tuple2!2022) (t!4744 List!1442)) )
))
(declare-datatypes ((ListLongMap!1365 0))(
  ( (ListLongMap!1366 (toList!698 List!1442)) )
))
(declare-fun lt!22311 () ListLongMap!1365)

(declare-fun contains!681 (ListLongMap!1365 (_ BitVec 64)) Bool)

(assert (=> b!56601 (= res!31812 (contains!681 lt!22311 (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2024 0))(
  ( (tuple2!2025 (_1!1022 Bool) (_2!1022 LongMapFixedSize!600)) )
))
(declare-fun lt!22306 () tuple2!2024)

(declare-fun update!78 (LongMapFixedSize!600 (_ BitVec 64) V!2819) tuple2!2024)

(declare-fun get!1063 (ValueCell!846 V!2819) V!2819)

(declare-fun dynLambda!306 (Int (_ BitVec 64)) V!2819)

(assert (=> b!56601 (= lt!22306 (update!78 newMap!16 (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355) (get!1063 (select (arr!1763 (_values!1997 (v!2351 (underlying!216 thiss!992)))) from!355) (dynLambda!306 (defaultEntry!2014 (v!2351 (underlying!216 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!56602 () Bool)

(declare-fun e!37286 () Bool)

(assert (=> b!56602 (= e!37278 (not e!37286))))

(declare-fun res!31815 () Bool)

(assert (=> b!56602 (=> res!31815 e!37286)))

(assert (=> b!56602 (= res!31815 (or (bvsge (size!1991 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1991 (_keys!3634 (v!2351 (underlying!216 thiss!992)))))))))

(declare-datatypes ((List!1443 0))(
  ( (Nil!1440) (Cons!1439 (h!2019 (_ BitVec 64)) (t!4745 List!1443)) )
))
(declare-fun lt!22312 () List!1443)

(assert (=> b!56602 (= lt!22312 (Cons!1439 (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355) Nil!1440))))

(declare-fun arrayNoDuplicates!0 (array!3680 (_ BitVec 32) List!1443) Bool)

(assert (=> b!56602 (arrayNoDuplicates!0 (_keys!3634 (v!2351 (underlying!216 thiss!992))) from!355 Nil!1440)))

(declare-datatypes ((Unit!1470 0))(
  ( (Unit!1471) )
))
(declare-fun lt!22310 () Unit!1470)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3680 (_ BitVec 32) (_ BitVec 32)) Unit!1470)

(assert (=> b!56602 (= lt!22310 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3634 (v!2351 (underlying!216 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3680 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56602 (arrayContainsKey!0 (_keys!3634 (v!2351 (underlying!216 thiss!992))) (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22307 () Unit!1470)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!24 (array!3680 array!3682 (_ BitVec 32) (_ BitVec 32) V!2819 V!2819 (_ BitVec 64) (_ BitVec 32) Int) Unit!1470)

(assert (=> b!56602 (= lt!22307 (lemmaListMapContainsThenArrayContainsFrom!24 (_keys!3634 (v!2351 (underlying!216 thiss!992))) (_values!1997 (v!2351 (underlying!216 thiss!992))) (mask!5883 (v!2351 (underlying!216 thiss!992))) (extraKeys!1905 (v!2351 (underlying!216 thiss!992))) (zeroValue!1932 (v!2351 (underlying!216 thiss!992))) (minValue!1932 (v!2351 (underlying!216 thiss!992))) (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2014 (v!2351 (underlying!216 thiss!992)))))))

(declare-fun b!56603 () Bool)

(declare-fun res!31811 () Bool)

(assert (=> b!56603 (=> res!31811 e!37286)))

(assert (=> b!56603 (= res!31811 (not (arrayNoDuplicates!0 (_keys!3634 (v!2351 (underlying!216 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!22312)))))

(declare-fun b!56604 () Bool)

(declare-fun e!37283 () Bool)

(assert (=> b!56604 (= e!37283 tp_is_empty!2379)))

(declare-fun b!56605 () Bool)

(assert (=> b!56605 (= e!37286 true)))

(declare-fun lt!22308 () Bool)

(declare-fun contains!682 (List!1443 (_ BitVec 64)) Bool)

(assert (=> b!56605 (= lt!22308 (contains!682 lt!22312 (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355)))))

(declare-fun mapNonEmpty!2807 () Bool)

(declare-fun mapRes!2808 () Bool)

(declare-fun tp!7876 () Bool)

(declare-fun e!37276 () Bool)

(assert (=> mapNonEmpty!2807 (= mapRes!2808 (and tp!7876 e!37276))))

(declare-fun mapValue!2807 () ValueCell!846)

(declare-fun mapKey!2808 () (_ BitVec 32))

(declare-fun mapRest!2807 () (Array (_ BitVec 32) ValueCell!846))

(assert (=> mapNonEmpty!2807 (= (arr!1763 (_values!1997 newMap!16)) (store mapRest!2807 mapKey!2808 mapValue!2807))))

(declare-fun b!56606 () Bool)

(assert (=> b!56606 (= e!37288 e!37287)))

(declare-fun res!31814 () Bool)

(assert (=> b!56606 (=> (not res!31814) (not e!37287))))

(declare-fun lt!22309 () ListLongMap!1365)

(assert (=> b!56606 (= res!31814 (and (= lt!22309 lt!22311) (not (= (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1762 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1097 (LongMapFixedSize!600) ListLongMap!1365)

(assert (=> b!56606 (= lt!22311 (map!1097 newMap!16))))

(declare-fun getCurrentListMap!397 (array!3680 array!3682 (_ BitVec 32) (_ BitVec 32) V!2819 V!2819 (_ BitVec 32) Int) ListLongMap!1365)

(assert (=> b!56606 (= lt!22309 (getCurrentListMap!397 (_keys!3634 (v!2351 (underlying!216 thiss!992))) (_values!1997 (v!2351 (underlying!216 thiss!992))) (mask!5883 (v!2351 (underlying!216 thiss!992))) (extraKeys!1905 (v!2351 (underlying!216 thiss!992))) (zeroValue!1932 (v!2351 (underlying!216 thiss!992))) (minValue!1932 (v!2351 (underlying!216 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2014 (v!2351 (underlying!216 thiss!992)))))))

(declare-fun b!56607 () Bool)

(assert (=> b!56607 (= e!37276 tp_is_empty!2379)))

(declare-fun b!56608 () Bool)

(declare-fun res!31808 () Bool)

(assert (=> b!56608 (=> (not res!31808) (not e!37288))))

(assert (=> b!56608 (= res!31808 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5883 newMap!16)) (_size!349 (v!2351 (underlying!216 thiss!992)))))))

(declare-fun mapIsEmpty!2807 () Bool)

(declare-fun mapRes!2807 () Bool)

(assert (=> mapIsEmpty!2807 mapRes!2807))

(declare-fun b!56609 () Bool)

(declare-fun res!31813 () Bool)

(assert (=> b!56609 (=> (not res!31813) (not e!37288))))

(declare-fun valid!242 (LongMapFixedSize!600) Bool)

(assert (=> b!56609 (= res!31813 (valid!242 newMap!16))))

(declare-fun b!56610 () Bool)

(declare-fun e!37282 () Bool)

(assert (=> b!56610 (= e!37274 (and e!37282 mapRes!2808))))

(declare-fun condMapEmpty!2807 () Bool)

(declare-fun mapDefault!2807 () ValueCell!846)

(assert (=> b!56610 (= condMapEmpty!2807 (= (arr!1763 (_values!1997 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!846)) mapDefault!2807)))))

(declare-fun b!56611 () Bool)

(declare-fun e!37284 () Bool)

(assert (=> b!56611 (= e!37284 tp_is_empty!2379)))

(declare-fun b!56612 () Bool)

(declare-fun e!37277 () Bool)

(assert (=> b!56612 (= e!37281 e!37277)))

(declare-fun b!56613 () Bool)

(declare-fun res!31805 () Bool)

(assert (=> b!56613 (=> res!31805 e!37286)))

(assert (=> b!56613 (= res!31805 (contains!682 lt!22312 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!31806 () Bool)

(assert (=> start!8392 (=> (not res!31806) (not e!37288))))

(declare-fun valid!243 (LongMap!410) Bool)

(assert (=> start!8392 (= res!31806 (valid!243 thiss!992))))

(assert (=> start!8392 e!37288))

(assert (=> start!8392 e!37279))

(assert (=> start!8392 true))

(assert (=> start!8392 e!37289))

(declare-fun e!37280 () Bool)

(assert (=> b!56614 (= e!37277 (and tp!7875 tp_is_empty!2379 (array_inv!1041 (_keys!3634 (v!2351 (underlying!216 thiss!992)))) (array_inv!1042 (_values!1997 (v!2351 (underlying!216 thiss!992)))) e!37280))))

(declare-fun b!56615 () Bool)

(declare-fun res!31809 () Bool)

(assert (=> b!56615 (=> res!31809 e!37286)))

(assert (=> b!56615 (= res!31809 (contains!682 lt!22312 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!56616 () Bool)

(declare-fun res!31807 () Bool)

(assert (=> b!56616 (=> res!31807 e!37286)))

(declare-fun noDuplicate!50 (List!1443) Bool)

(assert (=> b!56616 (= res!31807 (not (noDuplicate!50 lt!22312)))))

(declare-fun mapIsEmpty!2808 () Bool)

(assert (=> mapIsEmpty!2808 mapRes!2808))

(declare-fun mapNonEmpty!2808 () Bool)

(declare-fun tp!7878 () Bool)

(assert (=> mapNonEmpty!2808 (= mapRes!2807 (and tp!7878 e!37283))))

(declare-fun mapRest!2808 () (Array (_ BitVec 32) ValueCell!846))

(declare-fun mapKey!2807 () (_ BitVec 32))

(declare-fun mapValue!2808 () ValueCell!846)

(assert (=> mapNonEmpty!2808 (= (arr!1763 (_values!1997 (v!2351 (underlying!216 thiss!992)))) (store mapRest!2808 mapKey!2807 mapValue!2808))))

(declare-fun b!56617 () Bool)

(assert (=> b!56617 (= e!37282 tp_is_empty!2379)))

(declare-fun b!56618 () Bool)

(assert (=> b!56618 (= e!37280 (and e!37284 mapRes!2807))))

(declare-fun condMapEmpty!2808 () Bool)

(declare-fun mapDefault!2808 () ValueCell!846)

(assert (=> b!56618 (= condMapEmpty!2808 (= (arr!1763 (_values!1997 (v!2351 (underlying!216 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!846)) mapDefault!2808)))))

(assert (= (and start!8392 res!31806) b!56598))

(assert (= (and b!56598 res!31810) b!56609))

(assert (= (and b!56609 res!31813) b!56608))

(assert (= (and b!56608 res!31808) b!56606))

(assert (= (and b!56606 res!31814) b!56601))

(assert (= (and b!56601 res!31812) b!56602))

(assert (= (and b!56602 (not res!31815)) b!56616))

(assert (= (and b!56616 (not res!31807)) b!56613))

(assert (= (and b!56613 (not res!31805)) b!56615))

(assert (= (and b!56615 (not res!31809)) b!56603))

(assert (= (and b!56603 (not res!31811)) b!56605))

(assert (= (and b!56618 condMapEmpty!2808) mapIsEmpty!2807))

(assert (= (and b!56618 (not condMapEmpty!2808)) mapNonEmpty!2808))

(get-info :version)

(assert (= (and mapNonEmpty!2808 ((_ is ValueCellFull!846) mapValue!2808)) b!56604))

(assert (= (and b!56618 ((_ is ValueCellFull!846) mapDefault!2808)) b!56611))

(assert (= b!56614 b!56618))

(assert (= b!56612 b!56614))

(assert (= b!56600 b!56612))

(assert (= start!8392 b!56600))

(assert (= (and b!56610 condMapEmpty!2807) mapIsEmpty!2808))

(assert (= (and b!56610 (not condMapEmpty!2807)) mapNonEmpty!2807))

(assert (= (and mapNonEmpty!2807 ((_ is ValueCellFull!846) mapValue!2807)) b!56607))

(assert (= (and b!56610 ((_ is ValueCellFull!846) mapDefault!2807)) b!56617))

(assert (= b!56599 b!56610))

(assert (= start!8392 b!56599))

(declare-fun b_lambda!2493 () Bool)

(assert (=> (not b_lambda!2493) (not b!56601)))

(declare-fun t!4741 () Bool)

(declare-fun tb!1277 () Bool)

(assert (=> (and b!56614 (= (defaultEntry!2014 (v!2351 (underlying!216 thiss!992))) (defaultEntry!2014 (v!2351 (underlying!216 thiss!992)))) t!4741) tb!1277))

(declare-fun result!2309 () Bool)

(assert (=> tb!1277 (= result!2309 tp_is_empty!2379)))

(assert (=> b!56601 t!4741))

(declare-fun b_and!3405 () Bool)

(assert (= b_and!3401 (and (=> t!4741 result!2309) b_and!3405)))

(declare-fun tb!1279 () Bool)

(declare-fun t!4743 () Bool)

(assert (=> (and b!56599 (= (defaultEntry!2014 newMap!16) (defaultEntry!2014 (v!2351 (underlying!216 thiss!992)))) t!4743) tb!1279))

(declare-fun result!2313 () Bool)

(assert (= result!2313 result!2309))

(assert (=> b!56601 t!4743))

(declare-fun b_and!3407 () Bool)

(assert (= b_and!3403 (and (=> t!4743 result!2313) b_and!3407)))

(declare-fun m!47671 () Bool)

(assert (=> mapNonEmpty!2808 m!47671))

(declare-fun m!47673 () Bool)

(assert (=> b!56603 m!47673))

(declare-fun m!47675 () Bool)

(assert (=> b!56601 m!47675))

(declare-fun m!47677 () Bool)

(assert (=> b!56601 m!47677))

(declare-fun m!47679 () Bool)

(assert (=> b!56601 m!47679))

(declare-fun m!47681 () Bool)

(assert (=> b!56601 m!47681))

(declare-fun m!47683 () Bool)

(assert (=> b!56601 m!47683))

(assert (=> b!56601 m!47675))

(assert (=> b!56601 m!47681))

(assert (=> b!56601 m!47675))

(assert (=> b!56601 m!47683))

(declare-fun m!47685 () Bool)

(assert (=> b!56601 m!47685))

(assert (=> b!56601 m!47679))

(declare-fun m!47687 () Bool)

(assert (=> b!56616 m!47687))

(assert (=> b!56606 m!47675))

(declare-fun m!47689 () Bool)

(assert (=> b!56606 m!47689))

(declare-fun m!47691 () Bool)

(assert (=> b!56606 m!47691))

(declare-fun m!47693 () Bool)

(assert (=> start!8392 m!47693))

(assert (=> b!56605 m!47675))

(assert (=> b!56605 m!47675))

(declare-fun m!47695 () Bool)

(assert (=> b!56605 m!47695))

(declare-fun m!47697 () Bool)

(assert (=> b!56615 m!47697))

(declare-fun m!47699 () Bool)

(assert (=> b!56599 m!47699))

(declare-fun m!47701 () Bool)

(assert (=> b!56599 m!47701))

(declare-fun m!47703 () Bool)

(assert (=> b!56609 m!47703))

(declare-fun m!47705 () Bool)

(assert (=> b!56614 m!47705))

(declare-fun m!47707 () Bool)

(assert (=> b!56614 m!47707))

(declare-fun m!47709 () Bool)

(assert (=> mapNonEmpty!2807 m!47709))

(declare-fun m!47711 () Bool)

(assert (=> b!56613 m!47711))

(declare-fun m!47713 () Bool)

(assert (=> b!56602 m!47713))

(declare-fun m!47715 () Bool)

(assert (=> b!56602 m!47715))

(assert (=> b!56602 m!47675))

(declare-fun m!47717 () Bool)

(assert (=> b!56602 m!47717))

(assert (=> b!56602 m!47675))

(assert (=> b!56602 m!47675))

(declare-fun m!47719 () Bool)

(assert (=> b!56602 m!47719))

(check-sat tp_is_empty!2379 b_and!3405 (not b!56615) (not b!56613) (not b!56616) (not b!56609) (not start!8392) (not b!56614) (not b!56602) (not b!56603) (not b_next!1925) (not b_lambda!2493) (not mapNonEmpty!2807) b_and!3407 (not b!56605) (not mapNonEmpty!2808) (not b_next!1927) (not b!56599) (not b!56601) (not b!56606))
(check-sat b_and!3405 b_and!3407 (not b_next!1925) (not b_next!1927))
