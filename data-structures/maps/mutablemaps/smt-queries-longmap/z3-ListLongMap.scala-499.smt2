; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!11326 () Bool)

(assert start!11326)

(declare-fun b!93554 () Bool)

(declare-fun b_free!2381 () Bool)

(declare-fun b_next!2381 () Bool)

(assert (=> b!93554 (= b_free!2381 (not b_next!2381))))

(declare-fun tp!9407 () Bool)

(declare-fun b_and!5701 () Bool)

(assert (=> b!93554 (= tp!9407 b_and!5701)))

(declare-fun b!93553 () Bool)

(declare-fun b_free!2383 () Bool)

(declare-fun b_next!2383 () Bool)

(assert (=> b!93553 (= b_free!2383 (not b_next!2383))))

(declare-fun tp!9408 () Bool)

(declare-fun b_and!5703 () Bool)

(assert (=> b!93553 (= tp!9408 b_and!5703)))

(declare-fun b!93552 () Bool)

(declare-fun e!61095 () Bool)

(declare-datatypes ((V!3123 0))(
  ( (V!3124 (val!1348 Int)) )
))
(declare-datatypes ((array!4186 0))(
  ( (array!4187 (arr!1990 (Array (_ BitVec 32) (_ BitVec 64))) (size!2238 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!960 0))(
  ( (ValueCellFull!960 (v!2754 V!3123)) (EmptyCell!960) )
))
(declare-datatypes ((array!4188 0))(
  ( (array!4189 (arr!1991 (Array (_ BitVec 32) ValueCell!960)) (size!2239 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!828 0))(
  ( (LongMapFixedSize!829 (defaultEntry!2431 Int) (mask!6503 (_ BitVec 32)) (extraKeys!2260 (_ BitVec 32)) (zeroValue!2318 V!3123) (minValue!2318 V!3123) (_size!463 (_ BitVec 32)) (_keys!4113 array!4186) (_values!2414 array!4188) (_vacant!463 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!632 0))(
  ( (Cell!633 (v!2755 LongMapFixedSize!828)) )
))
(declare-datatypes ((LongMap!632 0))(
  ( (LongMap!633 (underlying!327 Cell!632)) )
))
(declare-fun thiss!992 () LongMap!632)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!93552 (= e!61095 (not (validMask!0 (mask!6503 (v!2755 (underlying!327 thiss!992))))))))

(declare-fun e!61083 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!828)

(declare-fun tp_is_empty!2607 () Bool)

(declare-fun e!61094 () Bool)

(declare-fun array_inv!1195 (array!4186) Bool)

(declare-fun array_inv!1196 (array!4188) Bool)

(assert (=> b!93553 (= e!61094 (and tp!9408 tp_is_empty!2607 (array_inv!1195 (_keys!4113 newMap!16)) (array_inv!1196 (_values!2414 newMap!16)) e!61083))))

(declare-fun e!61091 () Bool)

(declare-fun e!61081 () Bool)

(assert (=> b!93554 (= e!61081 (and tp!9407 tp_is_empty!2607 (array_inv!1195 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (array_inv!1196 (_values!2414 (v!2755 (underlying!327 thiss!992)))) e!61091))))

(declare-fun b!93555 () Bool)

(declare-fun e!61092 () Bool)

(assert (=> b!93555 (= e!61092 e!61095)))

(declare-fun res!47452 () Bool)

(assert (=> b!93555 (=> (not res!47452) (not e!61095))))

(declare-datatypes ((tuple2!2324 0))(
  ( (tuple2!2325 (_1!1172 Bool) (_2!1172 LongMapFixedSize!828)) )
))
(declare-fun lt!46241 () tuple2!2324)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!93555 (= res!47452 (and (_1!1172 lt!46241) (bvsle from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2811 0))(
  ( (Unit!2812) )
))
(declare-fun lt!46235 () Unit!2811)

(declare-fun e!61088 () Unit!2811)

(assert (=> b!93555 (= lt!46235 e!61088)))

(declare-fun c!15576 () Bool)

(declare-datatypes ((tuple2!2326 0))(
  ( (tuple2!2327 (_1!1173 (_ BitVec 64)) (_2!1173 V!3123)) )
))
(declare-datatypes ((List!1597 0))(
  ( (Nil!1594) (Cons!1593 (h!2185 tuple2!2326) (t!5491 List!1597)) )
))
(declare-datatypes ((ListLongMap!1535 0))(
  ( (ListLongMap!1536 (toList!783 List!1597)) )
))
(declare-fun lt!46238 () ListLongMap!1535)

(declare-fun contains!794 (ListLongMap!1535 (_ BitVec 64)) Bool)

(assert (=> b!93555 (= c!15576 (contains!794 lt!46238 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun update!140 (LongMapFixedSize!828 (_ BitVec 64) V!3123) tuple2!2324)

(declare-fun get!1274 (ValueCell!960 V!3123) V!3123)

(declare-fun dynLambda!372 (Int (_ BitVec 64)) V!3123)

(assert (=> b!93555 (= lt!46241 (update!140 newMap!16 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!93556 () Bool)

(declare-fun e!61087 () Bool)

(assert (=> b!93556 (= e!61087 tp_is_empty!2607)))

(declare-fun b!93557 () Bool)

(declare-fun e!61086 () Bool)

(assert (=> b!93557 (= e!61086 tp_is_empty!2607)))

(declare-fun b!93558 () Bool)

(declare-fun res!47456 () Bool)

(declare-fun e!61093 () Bool)

(assert (=> b!93558 (=> (not res!47456) (not e!61093))))

(declare-fun valid!370 (LongMapFixedSize!828) Bool)

(assert (=> b!93558 (= res!47456 (valid!370 newMap!16))))

(declare-fun res!47457 () Bool)

(assert (=> start!11326 (=> (not res!47457) (not e!61093))))

(declare-fun valid!371 (LongMap!632) Bool)

(assert (=> start!11326 (= res!47457 (valid!371 thiss!992))))

(assert (=> start!11326 e!61093))

(declare-fun e!61084 () Bool)

(assert (=> start!11326 e!61084))

(assert (=> start!11326 true))

(assert (=> start!11326 e!61094))

(declare-fun mapIsEmpty!3653 () Bool)

(declare-fun mapRes!3653 () Bool)

(assert (=> mapIsEmpty!3653 mapRes!3653))

(declare-fun b!93559 () Bool)

(declare-fun e!61082 () Bool)

(assert (=> b!93559 (= e!61082 tp_is_empty!2607)))

(declare-fun b!93560 () Bool)

(assert (=> b!93560 (= e!61091 (and e!61087 mapRes!3653))))

(declare-fun condMapEmpty!3653 () Bool)

(declare-fun mapDefault!3654 () ValueCell!960)

(assert (=> b!93560 (= condMapEmpty!3653 (= (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!960)) mapDefault!3654)))))

(declare-fun b!93561 () Bool)

(declare-fun res!47454 () Bool)

(assert (=> b!93561 (=> (not res!47454) (not e!61093))))

(assert (=> b!93561 (= res!47454 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6503 newMap!16)) (_size!463 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun b!93562 () Bool)

(declare-fun e!61085 () Bool)

(assert (=> b!93562 (= e!61085 tp_is_empty!2607)))

(declare-fun b!93563 () Bool)

(declare-fun mapRes!3654 () Bool)

(assert (=> b!93563 (= e!61083 (and e!61082 mapRes!3654))))

(declare-fun condMapEmpty!3654 () Bool)

(declare-fun mapDefault!3653 () ValueCell!960)

(assert (=> b!93563 (= condMapEmpty!3654 (= (arr!1991 (_values!2414 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!960)) mapDefault!3653)))))

(declare-fun b!93564 () Bool)

(assert (=> b!93564 (= e!61093 e!61092)))

(declare-fun res!47453 () Bool)

(assert (=> b!93564 (=> (not res!47453) (not e!61092))))

(declare-fun lt!46236 () ListLongMap!1535)

(assert (=> b!93564 (= res!47453 (and (= lt!46236 lt!46238) (not (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1240 (LongMapFixedSize!828) ListLongMap!1535)

(assert (=> b!93564 (= lt!46238 (map!1240 newMap!16))))

(declare-fun getCurrentListMap!465 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 32) Int) ListLongMap!1535)

(assert (=> b!93564 (= lt!46236 (getCurrentListMap!465 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun b!93565 () Bool)

(declare-fun e!61089 () Bool)

(assert (=> b!93565 (= e!61089 e!61081)))

(declare-fun mapNonEmpty!3653 () Bool)

(declare-fun tp!9405 () Bool)

(assert (=> mapNonEmpty!3653 (= mapRes!3653 (and tp!9405 e!61085))))

(declare-fun mapKey!3654 () (_ BitVec 32))

(declare-fun mapValue!3654 () ValueCell!960)

(declare-fun mapRest!3654 () (Array (_ BitVec 32) ValueCell!960))

(assert (=> mapNonEmpty!3653 (= (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) (store mapRest!3654 mapKey!3654 mapValue!3654))))

(declare-fun mapIsEmpty!3654 () Bool)

(assert (=> mapIsEmpty!3654 mapRes!3654))

(declare-fun b!93566 () Bool)

(declare-fun Unit!2813 () Unit!2811)

(assert (=> b!93566 (= e!61088 Unit!2813)))

(declare-fun b!93567 () Bool)

(declare-fun Unit!2814 () Unit!2811)

(assert (=> b!93567 (= e!61088 Unit!2814)))

(declare-fun lt!46239 () Unit!2811)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!92 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 64) (_ BitVec 32) Int) Unit!2811)

(assert (=> b!93567 (= lt!46239 (lemmaListMapContainsThenArrayContainsFrom!92 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4186 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!93567 (arrayContainsKey!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!46237 () Unit!2811)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4186 (_ BitVec 32) (_ BitVec 32)) Unit!2811)

(assert (=> b!93567 (= lt!46237 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1598 0))(
  ( (Nil!1595) (Cons!1594 (h!2186 (_ BitVec 64)) (t!5492 List!1598)) )
))
(declare-fun arrayNoDuplicates!0 (array!4186 (_ BitVec 32) List!1598) Bool)

(assert (=> b!93567 (arrayNoDuplicates!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) from!355 Nil!1595)))

(declare-fun lt!46240 () Unit!2811)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4186 (_ BitVec 32) (_ BitVec 64) List!1598) Unit!2811)

(assert (=> b!93567 (= lt!46240 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (Cons!1594 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) Nil!1595)))))

(assert (=> b!93567 false))

(declare-fun b!93568 () Bool)

(assert (=> b!93568 (= e!61084 e!61089)))

(declare-fun b!93569 () Bool)

(declare-fun res!47455 () Bool)

(assert (=> b!93569 (=> (not res!47455) (not e!61093))))

(assert (=> b!93569 (= res!47455 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992)))))))))

(declare-fun mapNonEmpty!3654 () Bool)

(declare-fun tp!9406 () Bool)

(assert (=> mapNonEmpty!3654 (= mapRes!3654 (and tp!9406 e!61086))))

(declare-fun mapRest!3653 () (Array (_ BitVec 32) ValueCell!960))

(declare-fun mapValue!3653 () ValueCell!960)

(declare-fun mapKey!3653 () (_ BitVec 32))

(assert (=> mapNonEmpty!3654 (= (arr!1991 (_values!2414 newMap!16)) (store mapRest!3653 mapKey!3653 mapValue!3653))))

(assert (= (and start!11326 res!47457) b!93569))

(assert (= (and b!93569 res!47455) b!93558))

(assert (= (and b!93558 res!47456) b!93561))

(assert (= (and b!93561 res!47454) b!93564))

(assert (= (and b!93564 res!47453) b!93555))

(assert (= (and b!93555 c!15576) b!93567))

(assert (= (and b!93555 (not c!15576)) b!93566))

(assert (= (and b!93555 res!47452) b!93552))

(assert (= (and b!93560 condMapEmpty!3653) mapIsEmpty!3653))

(assert (= (and b!93560 (not condMapEmpty!3653)) mapNonEmpty!3653))

(get-info :version)

(assert (= (and mapNonEmpty!3653 ((_ is ValueCellFull!960) mapValue!3654)) b!93562))

(assert (= (and b!93560 ((_ is ValueCellFull!960) mapDefault!3654)) b!93556))

(assert (= b!93554 b!93560))

(assert (= b!93565 b!93554))

(assert (= b!93568 b!93565))

(assert (= start!11326 b!93568))

(assert (= (and b!93563 condMapEmpty!3654) mapIsEmpty!3654))

(assert (= (and b!93563 (not condMapEmpty!3654)) mapNonEmpty!3654))

(assert (= (and mapNonEmpty!3654 ((_ is ValueCellFull!960) mapValue!3653)) b!93557))

(assert (= (and b!93563 ((_ is ValueCellFull!960) mapDefault!3653)) b!93559))

(assert (= b!93553 b!93563))

(assert (= start!11326 b!93553))

(declare-fun b_lambda!4133 () Bool)

(assert (=> (not b_lambda!4133) (not b!93555)))

(declare-fun t!5488 () Bool)

(declare-fun tb!1861 () Bool)

(assert (=> (and b!93554 (= (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))) t!5488) tb!1861))

(declare-fun result!3171 () Bool)

(assert (=> tb!1861 (= result!3171 tp_is_empty!2607)))

(assert (=> b!93555 t!5488))

(declare-fun b_and!5705 () Bool)

(assert (= b_and!5701 (and (=> t!5488 result!3171) b_and!5705)))

(declare-fun tb!1863 () Bool)

(declare-fun t!5490 () Bool)

(assert (=> (and b!93553 (= (defaultEntry!2431 newMap!16) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))) t!5490) tb!1863))

(declare-fun result!3175 () Bool)

(assert (= result!3175 result!3171))

(assert (=> b!93555 t!5490))

(declare-fun b_and!5707 () Bool)

(assert (= b_and!5703 (and (=> t!5490 result!3175) b_and!5707)))

(declare-fun m!100723 () Bool)

(assert (=> b!93567 m!100723))

(declare-fun m!100725 () Bool)

(assert (=> b!93567 m!100725))

(declare-fun m!100727 () Bool)

(assert (=> b!93567 m!100727))

(declare-fun m!100729 () Bool)

(assert (=> b!93567 m!100729))

(assert (=> b!93567 m!100727))

(assert (=> b!93567 m!100727))

(declare-fun m!100731 () Bool)

(assert (=> b!93567 m!100731))

(assert (=> b!93567 m!100727))

(declare-fun m!100733 () Bool)

(assert (=> b!93567 m!100733))

(declare-fun m!100735 () Bool)

(assert (=> b!93558 m!100735))

(declare-fun m!100737 () Bool)

(assert (=> b!93553 m!100737))

(declare-fun m!100739 () Bool)

(assert (=> b!93553 m!100739))

(declare-fun m!100741 () Bool)

(assert (=> b!93555 m!100741))

(declare-fun m!100743 () Bool)

(assert (=> b!93555 m!100743))

(declare-fun m!100745 () Bool)

(assert (=> b!93555 m!100745))

(assert (=> b!93555 m!100727))

(assert (=> b!93555 m!100743))

(assert (=> b!93555 m!100727))

(declare-fun m!100747 () Bool)

(assert (=> b!93555 m!100747))

(assert (=> b!93555 m!100727))

(assert (=> b!93555 m!100745))

(declare-fun m!100749 () Bool)

(assert (=> b!93555 m!100749))

(assert (=> b!93555 m!100741))

(declare-fun m!100751 () Bool)

(assert (=> mapNonEmpty!3654 m!100751))

(declare-fun m!100753 () Bool)

(assert (=> b!93554 m!100753))

(declare-fun m!100755 () Bool)

(assert (=> b!93554 m!100755))

(assert (=> b!93564 m!100727))

(declare-fun m!100757 () Bool)

(assert (=> b!93564 m!100757))

(declare-fun m!100759 () Bool)

(assert (=> b!93564 m!100759))

(declare-fun m!100761 () Bool)

(assert (=> start!11326 m!100761))

(declare-fun m!100763 () Bool)

(assert (=> b!93552 m!100763))

(declare-fun m!100765 () Bool)

(assert (=> mapNonEmpty!3653 m!100765))

(check-sat b_and!5705 (not start!11326) (not b!93552) (not b!93564) tp_is_empty!2607 (not mapNonEmpty!3654) (not b!93567) (not b_lambda!4133) (not b!93554) b_and!5707 (not mapNonEmpty!3653) (not b_next!2381) (not b!93555) (not b!93558) (not b!93553) (not b_next!2383))
(check-sat b_and!5705 b_and!5707 (not b_next!2381) (not b_next!2383))
(get-model)

(declare-fun b_lambda!4137 () Bool)

(assert (= b_lambda!4133 (or (and b!93554 b_free!2381) (and b!93553 b_free!2383 (= (defaultEntry!2431 newMap!16) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))))) b_lambda!4137)))

(check-sat (not start!11326) (not b!93552) (not b!93564) tp_is_empty!2607 (not mapNonEmpty!3654) (not b!93567) (not b!93554) b_and!5705 (not b_lambda!4137) b_and!5707 (not mapNonEmpty!3653) (not b_next!2381) (not b!93555) (not b!93558) (not b!93553) (not b_next!2383))
(check-sat b_and!5705 b_and!5707 (not b_next!2381) (not b_next!2383))
(get-model)

(declare-fun d!24489 () Bool)

(declare-fun res!47482 () Bool)

(declare-fun e!61146 () Bool)

(assert (=> d!24489 (=> (not res!47482) (not e!61146))))

(declare-fun simpleValid!64 (LongMapFixedSize!828) Bool)

(assert (=> d!24489 (= res!47482 (simpleValid!64 newMap!16))))

(assert (=> d!24489 (= (valid!370 newMap!16) e!61146)))

(declare-fun b!93634 () Bool)

(declare-fun res!47483 () Bool)

(assert (=> b!93634 (=> (not res!47483) (not e!61146))))

(declare-fun arrayCountValidKeys!0 (array!4186 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!93634 (= res!47483 (= (arrayCountValidKeys!0 (_keys!4113 newMap!16) #b00000000000000000000000000000000 (size!2238 (_keys!4113 newMap!16))) (_size!463 newMap!16)))))

(declare-fun b!93635 () Bool)

(declare-fun res!47484 () Bool)

(assert (=> b!93635 (=> (not res!47484) (not e!61146))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!4186 (_ BitVec 32)) Bool)

(assert (=> b!93635 (= res!47484 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!4113 newMap!16) (mask!6503 newMap!16)))))

(declare-fun b!93636 () Bool)

(assert (=> b!93636 (= e!61146 (arrayNoDuplicates!0 (_keys!4113 newMap!16) #b00000000000000000000000000000000 Nil!1595))))

(assert (= (and d!24489 res!47482) b!93634))

(assert (= (and b!93634 res!47483) b!93635))

(assert (= (and b!93635 res!47484) b!93636))

(declare-fun m!100811 () Bool)

(assert (=> d!24489 m!100811))

(declare-fun m!100813 () Bool)

(assert (=> b!93634 m!100813))

(declare-fun m!100815 () Bool)

(assert (=> b!93635 m!100815))

(declare-fun m!100817 () Bool)

(assert (=> b!93636 m!100817))

(assert (=> b!93558 d!24489))

(declare-fun d!24491 () Bool)

(assert (=> d!24491 (= (array_inv!1195 (_keys!4113 newMap!16)) (bvsge (size!2238 (_keys!4113 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!93553 d!24491))

(declare-fun d!24493 () Bool)

(assert (=> d!24493 (= (array_inv!1196 (_values!2414 newMap!16)) (bvsge (size!2239 (_values!2414 newMap!16)) #b00000000000000000000000000000000))))

(assert (=> b!93553 d!24493))

(declare-fun d!24495 () Bool)

(assert (=> d!24495 (= (validMask!0 (mask!6503 (v!2755 (underlying!327 thiss!992)))) (and (or (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000001111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000011111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000001111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000011111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000001111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000011111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000001111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000011111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000000111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000001111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000011111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000000111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000001111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000011111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000000111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000001111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000011111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000000111111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000001111111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000011111111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00000111111111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00001111111111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00011111111111111111111111111111) (= (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00111111111111111111111111111111)) (bvsle (mask!6503 (v!2755 (underlying!327 thiss!992))) #b00111111111111111111111111111111)))))

(assert (=> b!93552 d!24495))

(declare-fun d!24497 () Bool)

(declare-fun e!61152 () Bool)

(assert (=> d!24497 e!61152))

(declare-fun res!47487 () Bool)

(assert (=> d!24497 (=> res!47487 e!61152)))

(declare-fun lt!46272 () Bool)

(assert (=> d!24497 (= res!47487 (not lt!46272))))

(declare-fun lt!46273 () Bool)

(assert (=> d!24497 (= lt!46272 lt!46273)))

(declare-fun lt!46271 () Unit!2811)

(declare-fun e!61151 () Unit!2811)

(assert (=> d!24497 (= lt!46271 e!61151)))

(declare-fun c!15582 () Bool)

(assert (=> d!24497 (= c!15582 lt!46273)))

(declare-fun containsKey!150 (List!1597 (_ BitVec 64)) Bool)

(assert (=> d!24497 (= lt!46273 (containsKey!150 (toList!783 lt!46238) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(assert (=> d!24497 (= (contains!794 lt!46238 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)) lt!46272)))

(declare-fun b!93643 () Bool)

(declare-fun lt!46274 () Unit!2811)

(assert (=> b!93643 (= e!61151 lt!46274)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!99 (List!1597 (_ BitVec 64)) Unit!2811)

(assert (=> b!93643 (= lt!46274 (lemmaContainsKeyImpliesGetValueByKeyDefined!99 (toList!783 lt!46238) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-datatypes ((Option!152 0))(
  ( (Some!151 (v!2759 V!3123)) (None!150) )
))
(declare-fun isDefined!100 (Option!152) Bool)

(declare-fun getValueByKey!146 (List!1597 (_ BitVec 64)) Option!152)

(assert (=> b!93643 (isDefined!100 (getValueByKey!146 (toList!783 lt!46238) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun b!93644 () Bool)

(declare-fun Unit!2815 () Unit!2811)

(assert (=> b!93644 (= e!61151 Unit!2815)))

(declare-fun b!93645 () Bool)

(assert (=> b!93645 (= e!61152 (isDefined!100 (getValueByKey!146 (toList!783 lt!46238) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355))))))

(assert (= (and d!24497 c!15582) b!93643))

(assert (= (and d!24497 (not c!15582)) b!93644))

(assert (= (and d!24497 (not res!47487)) b!93645))

(assert (=> d!24497 m!100727))

(declare-fun m!100819 () Bool)

(assert (=> d!24497 m!100819))

(assert (=> b!93643 m!100727))

(declare-fun m!100821 () Bool)

(assert (=> b!93643 m!100821))

(assert (=> b!93643 m!100727))

(declare-fun m!100823 () Bool)

(assert (=> b!93643 m!100823))

(assert (=> b!93643 m!100823))

(declare-fun m!100825 () Bool)

(assert (=> b!93643 m!100825))

(assert (=> b!93645 m!100727))

(assert (=> b!93645 m!100823))

(assert (=> b!93645 m!100823))

(assert (=> b!93645 m!100825))

(assert (=> b!93555 d!24497))

(declare-fun b!93730 () Bool)

(declare-fun e!61207 () Unit!2811)

(declare-fun Unit!2816 () Unit!2811)

(assert (=> b!93730 (= e!61207 Unit!2816)))

(declare-fun lt!46335 () Unit!2811)

(declare-fun call!9323 () Unit!2811)

(assert (=> b!93730 (= lt!46335 call!9323)))

(declare-datatypes ((SeekEntryResult!260 0))(
  ( (MissingZero!260 (index!3181 (_ BitVec 32))) (Found!260 (index!3182 (_ BitVec 32))) (Intermediate!260 (undefined!1072 Bool) (index!3183 (_ BitVec 32)) (x!12624 (_ BitVec 32))) (Undefined!260) (MissingVacant!260 (index!3184 (_ BitVec 32))) )
))
(declare-fun lt!46341 () SeekEntryResult!260)

(declare-fun call!9319 () SeekEntryResult!260)

(assert (=> b!93730 (= lt!46341 call!9319)))

(declare-fun c!15621 () Bool)

(assert (=> b!93730 (= c!15621 ((_ is MissingZero!260) lt!46341))))

(declare-fun e!61202 () Bool)

(assert (=> b!93730 e!61202))

(declare-fun lt!46354 () Unit!2811)

(assert (=> b!93730 (= lt!46354 lt!46335)))

(assert (=> b!93730 false))

(declare-fun b!93731 () Bool)

(declare-fun call!9328 () ListLongMap!1535)

(declare-fun call!9326 () ListLongMap!1535)

(declare-fun e!61209 () ListLongMap!1535)

(declare-fun c!15616 () Bool)

(assert (=> b!93731 (= e!61209 (ite c!15616 call!9328 call!9326))))

(declare-fun b!93732 () Bool)

(declare-fun e!61206 () Bool)

(declare-fun call!9334 () Bool)

(assert (=> b!93732 (= e!61206 (not call!9334))))

(declare-fun b!93733 () Bool)

(assert (=> b!93733 (= e!61209 (getCurrentListMap!465 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2431 newMap!16)))))

(declare-fun b!93734 () Bool)

(declare-fun e!61203 () Bool)

(declare-fun call!9313 () Bool)

(assert (=> b!93734 (= e!61203 (not call!9313))))

(declare-fun bm!9309 () Bool)

(declare-fun c!15615 () Bool)

(declare-fun c!15618 () Bool)

(assert (=> bm!9309 (= c!15615 c!15618)))

(declare-fun call!9318 () Bool)

(declare-fun lt!46336 () SeekEntryResult!260)

(declare-fun e!61208 () ListLongMap!1535)

(assert (=> bm!9309 (= call!9318 (contains!794 e!61208 (ite c!15618 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (select (arr!1990 (_keys!4113 newMap!16)) (index!3182 lt!46336)))))))

(declare-fun bm!9310 () Bool)

(declare-fun call!9322 () SeekEntryResult!260)

(declare-fun call!9335 () SeekEntryResult!260)

(assert (=> bm!9310 (= call!9322 call!9335)))

(declare-fun b!93735 () Bool)

(declare-fun e!61201 () Bool)

(declare-fun e!61199 () Bool)

(assert (=> b!93735 (= e!61201 e!61199)))

(declare-fun call!9314 () ListLongMap!1535)

(declare-fun res!47526 () Bool)

(assert (=> b!93735 (= res!47526 (contains!794 call!9314 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(assert (=> b!93735 (=> (not res!47526) (not e!61199))))

(declare-fun b!93736 () Bool)

(declare-fun res!47528 () Bool)

(declare-fun e!61216 () Bool)

(assert (=> b!93736 (=> (not res!47528) (not e!61216))))

(declare-fun call!9312 () Bool)

(assert (=> b!93736 (= res!47528 call!9312)))

(assert (=> b!93736 (= e!61202 e!61216)))

(declare-fun bm!9311 () Bool)

(declare-fun call!9315 () Bool)

(assert (=> bm!9311 (= call!9315 (arrayContainsKey!0 (_keys!4113 newMap!16) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) #b00000000000000000000000000000000))))

(declare-fun bm!9312 () Bool)

(declare-fun call!9333 () tuple2!2324)

(declare-fun c!15619 () Bool)

(declare-fun updateHelperNewKey!38 (LongMapFixedSize!828 (_ BitVec 64) V!3123 (_ BitVec 32)) tuple2!2324)

(assert (=> bm!9312 (= call!9333 (updateHelperNewKey!38 newMap!16 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (ite c!15619 (index!3184 lt!46336) (index!3181 lt!46336))))))

(declare-fun bm!9313 () Bool)

(declare-fun call!9324 () ListLongMap!1535)

(assert (=> bm!9313 (= call!9326 call!9324)))

(declare-fun bm!9314 () Bool)

(declare-fun call!9330 () Bool)

(declare-fun call!9331 () Bool)

(assert (=> bm!9314 (= call!9330 call!9331)))

(declare-fun b!93737 () Bool)

(declare-fun e!61218 () Bool)

(assert (=> b!93737 (= e!61218 e!61206)))

(declare-fun res!47525 () Bool)

(assert (=> b!93737 (= res!47525 call!9312)))

(assert (=> b!93737 (=> (not res!47525) (not e!61206))))

(declare-fun b!93738 () Bool)

(declare-fun c!15613 () Bool)

(assert (=> b!93738 (= c!15613 ((_ is MissingVacant!260) lt!46341))))

(assert (=> b!93738 (= e!61202 e!61218)))

(declare-fun b!93739 () Bool)

(declare-fun e!61212 () Unit!2811)

(declare-fun lt!46342 () Unit!2811)

(assert (=> b!93739 (= e!61212 lt!46342)))

(assert (=> b!93739 (= lt!46342 call!9323)))

(declare-fun lt!46345 () SeekEntryResult!260)

(assert (=> b!93739 (= lt!46345 call!9322)))

(declare-fun c!15612 () Bool)

(assert (=> b!93739 (= c!15612 ((_ is MissingZero!260) lt!46345))))

(declare-fun e!61205 () Bool)

(assert (=> b!93739 e!61205))

(declare-fun b!93740 () Bool)

(declare-fun res!47524 () Bool)

(assert (=> b!93740 (= res!47524 call!9330)))

(declare-fun e!61213 () Bool)

(assert (=> b!93740 (=> (not res!47524) (not e!61213))))

(declare-fun b!93741 () Bool)

(assert (=> b!93741 (= e!61208 call!9324)))

(declare-fun bm!9315 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!4186 (_ BitVec 32)) SeekEntryResult!260)

(assert (=> bm!9315 (= call!9335 (seekEntryOrOpen!0 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (_keys!4113 newMap!16) (mask!6503 newMap!16)))))

(declare-fun b!93742 () Bool)

(declare-fun lt!46351 () SeekEntryResult!260)

(assert (=> b!93742 (= e!61213 (= (select (arr!1990 (_keys!4113 newMap!16)) (index!3182 lt!46351)) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun b!93743 () Bool)

(declare-fun c!15623 () Bool)

(assert (=> b!93743 (= c!15623 ((_ is MissingVacant!260) lt!46345))))

(declare-fun e!61215 () Bool)

(assert (=> b!93743 (= e!61205 e!61215)))

(declare-fun b!93744 () Bool)

(assert (=> b!93744 (= e!61215 e!61203)))

(declare-fun res!47516 () Bool)

(declare-fun call!9317 () Bool)

(assert (=> b!93744 (= res!47516 call!9317)))

(assert (=> b!93744 (=> (not res!47516) (not e!61203))))

(declare-fun lt!46348 () (_ BitVec 32))

(declare-fun c!15611 () Bool)

(declare-fun call!9332 () ListLongMap!1535)

(declare-fun bm!9316 () Bool)

(assert (=> bm!9316 (= call!9332 (getCurrentListMap!465 (_keys!4113 newMap!16) (ite (or c!15611 c!15618) (_values!2414 newMap!16) (array!4189 (store (arr!1991 (_values!2414 newMap!16)) (index!3182 lt!46336) (ValueCellFull!960 (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2239 (_values!2414 newMap!16)))) (mask!6503 newMap!16) (ite c!15611 (ite c!15616 (extraKeys!2260 newMap!16) lt!46348) (extraKeys!2260 newMap!16)) (zeroValue!2318 newMap!16) (ite c!15611 (ite c!15616 (minValue!2318 newMap!16) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (minValue!2318 newMap!16)) #b00000000000000000000000000000000 (defaultEntry!2431 newMap!16)))))

(declare-fun b!93745 () Bool)

(declare-fun lt!46338 () Unit!2811)

(assert (=> b!93745 (= e!61207 lt!46338)))

(declare-fun call!9325 () Unit!2811)

(assert (=> b!93745 (= lt!46338 call!9325)))

(assert (=> b!93745 (= lt!46351 call!9319)))

(declare-fun res!47518 () Bool)

(assert (=> b!93745 (= res!47518 ((_ is Found!260) lt!46351))))

(assert (=> b!93745 (=> (not res!47518) (not e!61213))))

(assert (=> b!93745 e!61213))

(declare-fun b!93746 () Bool)

(declare-fun e!61217 () Bool)

(assert (=> b!93746 (= e!61217 e!61201)))

(declare-fun c!15620 () Bool)

(declare-fun lt!46350 () tuple2!2324)

(assert (=> b!93746 (= c!15620 (_1!1172 lt!46350))))

(declare-fun bm!9317 () Bool)

(assert (=> bm!9317 (= call!9313 call!9315)))

(declare-fun b!93747 () Bool)

(declare-fun e!61210 () tuple2!2324)

(declare-fun e!61198 () tuple2!2324)

(assert (=> b!93747 (= e!61210 e!61198)))

(declare-fun c!15624 () Bool)

(assert (=> b!93747 (= c!15624 ((_ is MissingZero!260) lt!46336))))

(declare-fun b!93748 () Bool)

(declare-fun Unit!2817 () Unit!2811)

(assert (=> b!93748 (= e!61212 Unit!2817)))

(declare-fun lt!46330 () Unit!2811)

(assert (=> b!93748 (= lt!46330 call!9325)))

(declare-fun lt!46331 () SeekEntryResult!260)

(assert (=> b!93748 (= lt!46331 call!9322)))

(declare-fun res!47517 () Bool)

(assert (=> b!93748 (= res!47517 ((_ is Found!260) lt!46331))))

(declare-fun e!61197 () Bool)

(assert (=> b!93748 (=> (not res!47517) (not e!61197))))

(assert (=> b!93748 e!61197))

(declare-fun lt!46349 () Unit!2811)

(assert (=> b!93748 (= lt!46349 lt!46330)))

(assert (=> b!93748 false))

(declare-fun b!93749 () Bool)

(declare-fun call!9329 () ListLongMap!1535)

(assert (=> b!93749 (= e!61208 call!9329)))

(declare-fun b!93750 () Bool)

(assert (=> b!93750 (= e!61216 (not call!9334))))

(declare-fun b!93751 () Bool)

(assert (=> b!93751 (= e!61215 ((_ is Undefined!260) lt!46345))))

(declare-fun b!93752 () Bool)

(assert (=> b!93752 (= e!61197 (= (select (arr!1990 (_keys!4113 newMap!16)) (index!3182 lt!46331)) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun bm!9318 () Bool)

(assert (=> bm!9318 (= call!9314 (map!1240 (ite c!15620 (_2!1172 lt!46350) newMap!16)))))

(declare-fun bm!9319 () Bool)

(assert (=> bm!9319 (= call!9319 call!9335)))

(declare-fun b!93753 () Bool)

(declare-fun lt!46332 () Unit!2811)

(declare-fun lt!46355 () Unit!2811)

(assert (=> b!93753 (= lt!46332 lt!46355)))

(assert (=> b!93753 call!9318))

(declare-fun lt!46329 () array!4188)

(declare-fun lemmaValidKeyInArrayIsInListMap!96 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 32) Int) Unit!2811)

(assert (=> b!93753 (= lt!46355 (lemmaValidKeyInArrayIsInListMap!96 (_keys!4113 newMap!16) lt!46329 (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) (index!3182 lt!46336) (defaultEntry!2431 newMap!16)))))

(assert (=> b!93753 (= lt!46329 (array!4189 (store (arr!1991 (_values!2414 newMap!16)) (index!3182 lt!46336) (ValueCellFull!960 (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2239 (_values!2414 newMap!16))))))

(declare-fun lt!46334 () Unit!2811)

(declare-fun lt!46352 () Unit!2811)

(assert (=> b!93753 (= lt!46334 lt!46352)))

(declare-fun call!9321 () ListLongMap!1535)

(assert (=> b!93753 (= call!9321 call!9329)))

(declare-fun lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!38 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 32) (_ BitVec 64) V!3123 Int) Unit!2811)

(assert (=> b!93753 (= lt!46352 (lemmaChangeValueExistingKeyToArrayThenAddPairToListMap!38 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) (index!3182 lt!46336) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2431 newMap!16)))))

(declare-fun lt!46344 () Unit!2811)

(assert (=> b!93753 (= lt!46344 e!61207)))

(declare-fun c!15614 () Bool)

(assert (=> b!93753 (= c!15614 (contains!794 (getCurrentListMap!465 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2431 newMap!16)) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(assert (=> b!93753 (= e!61198 (tuple2!2325 true (LongMapFixedSize!829 (defaultEntry!2431 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) (_size!463 newMap!16) (_keys!4113 newMap!16) (array!4189 (store (arr!1991 (_values!2414 newMap!16)) (index!3182 lt!46336) (ValueCellFull!960 (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (size!2239 (_values!2414 newMap!16))) (_vacant!463 newMap!16))))))

(declare-fun b!93754 () Bool)

(declare-fun e!61204 () tuple2!2324)

(declare-fun e!61211 () tuple2!2324)

(assert (=> b!93754 (= e!61204 e!61211)))

(assert (=> b!93754 (= lt!46336 (seekEntryOrOpen!0 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (_keys!4113 newMap!16) (mask!6503 newMap!16)))))

(assert (=> b!93754 (= c!15618 ((_ is Undefined!260) lt!46336))))

(declare-fun b!93755 () Bool)

(declare-fun res!47527 () Bool)

(assert (=> b!93755 (= res!47527 (= (select (arr!1990 (_keys!4113 newMap!16)) (index!3184 lt!46341)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!93755 (=> (not res!47527) (not e!61206))))

(declare-fun b!93756 () Bool)

(declare-fun lt!46347 () Unit!2811)

(assert (=> b!93756 (= lt!46347 e!61212)))

(declare-fun c!15617 () Bool)

(assert (=> b!93756 (= c!15617 call!9318)))

(assert (=> b!93756 (= e!61211 (tuple2!2325 false newMap!16))))

(declare-fun b!93757 () Bool)

(declare-fun res!47523 () Bool)

(declare-fun e!61214 () Bool)

(assert (=> b!93757 (=> (not res!47523) (not e!61214))))

(assert (=> b!93757 (= res!47523 (= (select (arr!1990 (_keys!4113 newMap!16)) (index!3181 lt!46345)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!9320 () Bool)

(assert (=> bm!9320 (= call!9329 call!9332)))

(declare-fun b!93758 () Bool)

(declare-fun res!47521 () Bool)

(assert (=> b!93758 (=> (not res!47521) (not e!61216))))

(assert (=> b!93758 (= res!47521 (= (select (arr!1990 (_keys!4113 newMap!16)) (index!3181 lt!46341)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93759 () Bool)

(declare-fun lt!46346 () Unit!2811)

(declare-fun lt!46339 () Unit!2811)

(assert (=> b!93759 (= lt!46346 lt!46339)))

(declare-fun call!9327 () ListLongMap!1535)

(assert (=> b!93759 (= call!9327 call!9328)))

(declare-fun lemmaChangeLongMinValueKeyThenAddPairToListMap!38 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 V!3123 Int) Unit!2811)

(assert (=> b!93759 (= lt!46339 (lemmaChangeLongMinValueKeyThenAddPairToListMap!38 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) lt!46348 (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (defaultEntry!2431 newMap!16)))))

(assert (=> b!93759 (= lt!46348 (bvor (extraKeys!2260 newMap!16) #b00000000000000000000000000000010))))

(declare-fun e!61200 () tuple2!2324)

(assert (=> b!93759 (= e!61200 (tuple2!2325 true (LongMapFixedSize!829 (defaultEntry!2431 newMap!16) (mask!6503 newMap!16) (bvor (extraKeys!2260 newMap!16) #b00000000000000000000000000000010) (zeroValue!2318 newMap!16) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (_size!463 newMap!16) (_keys!4113 newMap!16) (_values!2414 newMap!16) (_vacant!463 newMap!16))))))

(declare-fun lt!46340 () (_ BitVec 32))

(declare-fun bm!9321 () Bool)

(assert (=> bm!9321 (= call!9324 (getCurrentListMap!465 (_keys!4113 newMap!16) (ite c!15611 (_values!2414 newMap!16) lt!46329) (mask!6503 newMap!16) (ite (and c!15611 c!15616) lt!46340 (extraKeys!2260 newMap!16)) (ite (and c!15611 c!15616) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (zeroValue!2318 newMap!16)) (minValue!2318 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2431 newMap!16)))))

(declare-fun bm!9322 () Bool)

(declare-fun call!9320 () Bool)

(assert (=> bm!9322 (= call!9317 call!9320)))

(declare-fun bm!9323 () Bool)

(assert (=> bm!9323 (= call!9312 call!9330)))

(declare-fun bm!9324 () Bool)

(assert (=> bm!9324 (= call!9328 call!9332)))

(declare-fun b!93760 () Bool)

(declare-fun call!9316 () ListLongMap!1535)

(assert (=> b!93760 (= e!61201 (= call!9316 call!9314))))

(declare-fun bm!9325 () Bool)

(assert (=> bm!9325 (= call!9320 call!9331)))

(declare-fun b!93761 () Bool)

(declare-fun lt!46353 () tuple2!2324)

(assert (=> b!93761 (= e!61210 (tuple2!2325 (_1!1172 lt!46353) (_2!1172 lt!46353)))))

(assert (=> b!93761 (= lt!46353 call!9333)))

(declare-fun b!93762 () Bool)

(declare-fun +!135 (ListLongMap!1535 tuple2!2326) ListLongMap!1535)

(assert (=> b!93762 (= e!61199 (= call!9314 (+!135 call!9316 (tuple2!2327 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun b!93763 () Bool)

(assert (=> b!93763 (= e!61218 ((_ is Undefined!260) lt!46341))))

(declare-fun bm!9326 () Bool)

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!38 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 64) Int) Unit!2811)

(assert (=> bm!9326 (= call!9323 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!38 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (defaultEntry!2431 newMap!16)))))

(declare-fun b!93764 () Bool)

(declare-fun lt!46337 () tuple2!2324)

(assert (=> b!93764 (= lt!46337 call!9333)))

(assert (=> b!93764 (= e!61198 (tuple2!2325 (_1!1172 lt!46337) (_2!1172 lt!46337)))))

(declare-fun bm!9327 () Bool)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!38 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 64) Int) Unit!2811)

(assert (=> bm!9327 (= call!9325 (lemmaInListMapThenSeekEntryOrOpenFindsIt!38 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (defaultEntry!2431 newMap!16)))))

(declare-fun bm!9328 () Bool)

(assert (=> bm!9328 (= call!9321 (+!135 e!61209 (ite c!15611 (ite c!15616 (tuple2!2327 #b0000000000000000000000000000000000000000000000000000000000000000 (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) (tuple2!2327 #b1000000000000000000000000000000000000000000000000000000000000000 (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))) (tuple2!2327 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun c!15622 () Bool)

(assert (=> bm!9328 (= c!15622 c!15611)))

(declare-fun b!93765 () Bool)

(declare-fun res!47520 () Bool)

(assert (=> b!93765 (= res!47520 (= (select (arr!1990 (_keys!4113 newMap!16)) (index!3184 lt!46345)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!93765 (=> (not res!47520) (not e!61203))))

(declare-fun b!93766 () Bool)

(declare-fun res!47519 () Bool)

(assert (=> b!93766 (=> (not res!47519) (not e!61214))))

(assert (=> b!93766 (= res!47519 call!9317)))

(assert (=> b!93766 (= e!61205 e!61214)))

(declare-fun b!93767 () Bool)

(assert (=> b!93767 (= e!61214 (not call!9313))))

(declare-fun bm!9329 () Bool)

(assert (=> bm!9329 (= call!9316 (map!1240 (ite c!15620 newMap!16 (_2!1172 lt!46350))))))

(declare-fun d!24499 () Bool)

(assert (=> d!24499 e!61217))

(declare-fun res!47522 () Bool)

(assert (=> d!24499 (=> (not res!47522) (not e!61217))))

(assert (=> d!24499 (= res!47522 (valid!370 (_2!1172 lt!46350)))))

(assert (=> d!24499 (= lt!46350 e!61204)))

(assert (=> d!24499 (= c!15611 (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvneg (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355))))))

(assert (=> d!24499 (valid!370 newMap!16)))

(assert (=> d!24499 (= (update!140 newMap!16 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))) lt!46350)))

(declare-fun b!93768 () Bool)

(assert (=> b!93768 (= c!15619 ((_ is MissingVacant!260) lt!46336))))

(assert (=> b!93768 (= e!61211 e!61210)))

(declare-fun b!93769 () Bool)

(declare-fun lt!46333 () Unit!2811)

(declare-fun lt!46343 () Unit!2811)

(assert (=> b!93769 (= lt!46333 lt!46343)))

(assert (=> b!93769 (= call!9327 call!9326)))

(declare-fun lemmaChangeZeroKeyThenAddPairToListMap!38 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 V!3123 Int) Unit!2811)

(assert (=> b!93769 (= lt!46343 (lemmaChangeZeroKeyThenAddPairToListMap!38 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) lt!46340 (zeroValue!2318 newMap!16) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2318 newMap!16) (defaultEntry!2431 newMap!16)))))

(assert (=> b!93769 (= lt!46340 (bvor (extraKeys!2260 newMap!16) #b00000000000000000000000000000001))))

(assert (=> b!93769 (= e!61200 (tuple2!2325 true (LongMapFixedSize!829 (defaultEntry!2431 newMap!16) (mask!6503 newMap!16) (bvor (extraKeys!2260 newMap!16) #b00000000000000000000000000000001) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) (minValue!2318 newMap!16) (_size!463 newMap!16) (_keys!4113 newMap!16) (_values!2414 newMap!16) (_vacant!463 newMap!16))))))

(declare-fun bm!9330 () Bool)

(assert (=> bm!9330 (= call!9334 call!9315)))

(declare-fun bm!9331 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!9331 (= call!9331 (inRange!0 (ite c!15618 (ite c!15617 (index!3182 lt!46331) (ite c!15612 (index!3181 lt!46345) (index!3184 lt!46345))) (ite c!15614 (index!3182 lt!46351) (ite c!15621 (index!3181 lt!46341) (index!3184 lt!46341)))) (mask!6503 newMap!16)))))

(declare-fun bm!9332 () Bool)

(assert (=> bm!9332 (= call!9327 call!9321)))

(declare-fun b!93770 () Bool)

(assert (=> b!93770 (= e!61204 e!61200)))

(assert (=> b!93770 (= c!15616 (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93771 () Bool)

(declare-fun res!47529 () Bool)

(assert (=> b!93771 (= res!47529 call!9320)))

(assert (=> b!93771 (=> (not res!47529) (not e!61197))))

(assert (= (and d!24499 c!15611) b!93770))

(assert (= (and d!24499 (not c!15611)) b!93754))

(assert (= (and b!93770 c!15616) b!93769))

(assert (= (and b!93770 (not c!15616)) b!93759))

(assert (= (or b!93769 b!93759) bm!9324))

(assert (= (or b!93769 b!93759) bm!9313))

(assert (= (or b!93769 b!93759) bm!9332))

(assert (= (and b!93754 c!15618) b!93756))

(assert (= (and b!93754 (not c!15618)) b!93768))

(assert (= (and b!93756 c!15617) b!93748))

(assert (= (and b!93756 (not c!15617)) b!93739))

(assert (= (and b!93748 res!47517) b!93771))

(assert (= (and b!93771 res!47529) b!93752))

(assert (= (and b!93739 c!15612) b!93766))

(assert (= (and b!93739 (not c!15612)) b!93743))

(assert (= (and b!93766 res!47519) b!93757))

(assert (= (and b!93757 res!47523) b!93767))

(assert (= (and b!93743 c!15623) b!93744))

(assert (= (and b!93743 (not c!15623)) b!93751))

(assert (= (and b!93744 res!47516) b!93765))

(assert (= (and b!93765 res!47520) b!93734))

(assert (= (or b!93766 b!93744) bm!9322))

(assert (= (or b!93767 b!93734) bm!9317))

(assert (= (or b!93771 bm!9322) bm!9325))

(assert (= (or b!93748 b!93739) bm!9310))

(assert (= (and b!93768 c!15619) b!93761))

(assert (= (and b!93768 (not c!15619)) b!93747))

(assert (= (and b!93747 c!15624) b!93764))

(assert (= (and b!93747 (not c!15624)) b!93753))

(assert (= (and b!93753 c!15614) b!93745))

(assert (= (and b!93753 (not c!15614)) b!93730))

(assert (= (and b!93745 res!47518) b!93740))

(assert (= (and b!93740 res!47524) b!93742))

(assert (= (and b!93730 c!15621) b!93736))

(assert (= (and b!93730 (not c!15621)) b!93738))

(assert (= (and b!93736 res!47528) b!93758))

(assert (= (and b!93758 res!47521) b!93750))

(assert (= (and b!93738 c!15613) b!93737))

(assert (= (and b!93738 (not c!15613)) b!93763))

(assert (= (and b!93737 res!47525) b!93755))

(assert (= (and b!93755 res!47527) b!93732))

(assert (= (or b!93736 b!93737) bm!9323))

(assert (= (or b!93750 b!93732) bm!9330))

(assert (= (or b!93740 bm!9323) bm!9314))

(assert (= (or b!93745 b!93730) bm!9319))

(assert (= (or b!93761 b!93764) bm!9312))

(assert (= (or b!93739 b!93730) bm!9326))

(assert (= (or bm!9325 bm!9314) bm!9331))

(assert (= (or bm!9317 bm!9330) bm!9311))

(assert (= (or b!93748 b!93745) bm!9327))

(assert (= (or b!93756 b!93753) bm!9320))

(assert (= (or bm!9310 bm!9319) bm!9315))

(assert (= (or b!93756 b!93753) bm!9309))

(assert (= (and bm!9309 c!15615) b!93749))

(assert (= (and bm!9309 (not c!15615)) b!93741))

(assert (= (or bm!9324 bm!9320) bm!9316))

(assert (= (or bm!9313 b!93741) bm!9321))

(assert (= (or bm!9332 b!93753) bm!9328))

(assert (= (and bm!9328 c!15622) b!93731))

(assert (= (and bm!9328 (not c!15622)) b!93733))

(assert (= (and d!24499 res!47522) b!93746))

(assert (= (and b!93746 c!15620) b!93735))

(assert (= (and b!93746 (not c!15620)) b!93760))

(assert (= (and b!93735 res!47526) b!93762))

(assert (= (or b!93762 b!93760) bm!9329))

(assert (= (or b!93735 b!93762 b!93760) bm!9318))

(assert (=> b!93769 m!100745))

(declare-fun m!100827 () Bool)

(assert (=> b!93769 m!100827))

(declare-fun m!100829 () Bool)

(assert (=> b!93765 m!100829))

(declare-fun m!100831 () Bool)

(assert (=> b!93757 m!100831))

(assert (=> b!93759 m!100745))

(declare-fun m!100833 () Bool)

(assert (=> b!93759 m!100833))

(assert (=> bm!9315 m!100727))

(declare-fun m!100835 () Bool)

(assert (=> bm!9315 m!100835))

(assert (=> b!93754 m!100727))

(assert (=> b!93754 m!100835))

(assert (=> b!93735 m!100727))

(declare-fun m!100837 () Bool)

(assert (=> b!93735 m!100837))

(declare-fun m!100839 () Bool)

(assert (=> bm!9329 m!100839))

(declare-fun m!100841 () Bool)

(assert (=> bm!9318 m!100841))

(assert (=> bm!9311 m!100727))

(declare-fun m!100843 () Bool)

(assert (=> bm!9311 m!100843))

(assert (=> bm!9312 m!100727))

(assert (=> bm!9312 m!100745))

(declare-fun m!100845 () Bool)

(assert (=> bm!9312 m!100845))

(declare-fun m!100847 () Bool)

(assert (=> bm!9328 m!100847))

(declare-fun m!100849 () Bool)

(assert (=> b!93752 m!100849))

(declare-fun m!100851 () Bool)

(assert (=> d!24499 m!100851))

(assert (=> d!24499 m!100735))

(declare-fun m!100853 () Bool)

(assert (=> b!93762 m!100853))

(declare-fun m!100855 () Bool)

(assert (=> b!93755 m!100855))

(declare-fun m!100857 () Bool)

(assert (=> b!93753 m!100857))

(assert (=> b!93753 m!100857))

(assert (=> b!93753 m!100727))

(declare-fun m!100859 () Bool)

(assert (=> b!93753 m!100859))

(declare-fun m!100861 () Bool)

(assert (=> b!93753 m!100861))

(declare-fun m!100863 () Bool)

(assert (=> b!93753 m!100863))

(assert (=> b!93753 m!100727))

(assert (=> b!93753 m!100745))

(declare-fun m!100865 () Bool)

(assert (=> b!93753 m!100865))

(assert (=> bm!9316 m!100863))

(declare-fun m!100867 () Bool)

(assert (=> bm!9316 m!100867))

(declare-fun m!100869 () Bool)

(assert (=> bm!9321 m!100869))

(assert (=> b!93733 m!100857))

(declare-fun m!100871 () Bool)

(assert (=> b!93758 m!100871))

(declare-fun m!100873 () Bool)

(assert (=> bm!9331 m!100873))

(assert (=> bm!9327 m!100727))

(declare-fun m!100875 () Bool)

(assert (=> bm!9327 m!100875))

(declare-fun m!100877 () Bool)

(assert (=> bm!9309 m!100877))

(declare-fun m!100879 () Bool)

(assert (=> bm!9309 m!100879))

(assert (=> bm!9326 m!100727))

(declare-fun m!100881 () Bool)

(assert (=> bm!9326 m!100881))

(declare-fun m!100883 () Bool)

(assert (=> b!93742 m!100883))

(assert (=> b!93555 d!24499))

(declare-fun d!24501 () Bool)

(declare-fun c!15627 () Bool)

(assert (=> d!24501 (= c!15627 ((_ is ValueCellFull!960) (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun e!61221 () V!3123)

(assert (=> d!24501 (= (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)) e!61221)))

(declare-fun b!93776 () Bool)

(declare-fun get!1275 (ValueCell!960 V!3123) V!3123)

(assert (=> b!93776 (= e!61221 (get!1275 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!93777 () Bool)

(declare-fun get!1276 (ValueCell!960 V!3123) V!3123)

(assert (=> b!93777 (= e!61221 (get!1276 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) from!355) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!24501 c!15627) b!93776))

(assert (= (and d!24501 (not c!15627)) b!93777))

(assert (=> b!93776 m!100741))

(assert (=> b!93776 m!100743))

(declare-fun m!100885 () Bool)

(assert (=> b!93776 m!100885))

(assert (=> b!93777 m!100741))

(assert (=> b!93777 m!100743))

(declare-fun m!100887 () Bool)

(assert (=> b!93777 m!100887))

(assert (=> b!93555 d!24501))

(declare-fun d!24503 () Bool)

(assert (=> d!24503 (not (arrayContainsKey!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!46358 () Unit!2811)

(declare-fun choose!68 (array!4186 (_ BitVec 32) (_ BitVec 64) List!1598) Unit!2811)

(assert (=> d!24503 (= lt!46358 (choose!68 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (Cons!1594 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) Nil!1595)))))

(assert (=> d!24503 (bvslt (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!24503 (= (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (Cons!1594 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) Nil!1595)) lt!46358)))

(declare-fun bs!3841 () Bool)

(assert (= bs!3841 d!24503))

(assert (=> bs!3841 m!100727))

(assert (=> bs!3841 m!100731))

(assert (=> bs!3841 m!100727))

(declare-fun m!100889 () Bool)

(assert (=> bs!3841 m!100889))

(assert (=> b!93567 d!24503))

(declare-fun d!24505 () Bool)

(assert (=> d!24505 (arrayNoDuplicates!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) from!355 Nil!1595)))

(declare-fun lt!46361 () Unit!2811)

(declare-fun choose!39 (array!4186 (_ BitVec 32) (_ BitVec 32)) Unit!2811)

(assert (=> d!24505 (= lt!46361 (choose!39 (_keys!4113 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000000 from!355))))

(assert (=> d!24505 (bvslt (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) #b01111111111111111111111111111111)))

(assert (=> d!24505 (= (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000000 from!355) lt!46361)))

(declare-fun bs!3842 () Bool)

(assert (= bs!3842 d!24505))

(assert (=> bs!3842 m!100725))

(declare-fun m!100891 () Bool)

(assert (=> bs!3842 m!100891))

(assert (=> b!93567 d!24505))

(declare-fun d!24507 () Bool)

(declare-fun res!47534 () Bool)

(declare-fun e!61226 () Bool)

(assert (=> d!24507 (=> res!47534 e!61226)))

(assert (=> d!24507 (= res!47534 (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(assert (=> d!24507 (= (arrayContainsKey!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)) e!61226)))

(declare-fun b!93782 () Bool)

(declare-fun e!61227 () Bool)

(assert (=> b!93782 (= e!61226 e!61227)))

(declare-fun res!47535 () Bool)

(assert (=> b!93782 (=> (not res!47535) (not e!61227))))

(assert (=> b!93782 (= res!47535 (bvslt (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001) (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))))))

(declare-fun b!93783 () Bool)

(assert (=> b!93783 (= e!61227 (arrayContainsKey!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355 #b00000000000000000000000000000001)))))

(assert (= (and d!24507 (not res!47534)) b!93782))

(assert (= (and b!93782 res!47535) b!93783))

(declare-fun m!100893 () Bool)

(assert (=> d!24507 m!100893))

(assert (=> b!93783 m!100727))

(declare-fun m!100895 () Bool)

(assert (=> b!93783 m!100895))

(assert (=> b!93567 d!24507))

(declare-fun d!24509 () Bool)

(declare-fun e!61230 () Bool)

(assert (=> d!24509 e!61230))

(declare-fun c!15630 () Bool)

(assert (=> d!24509 (= c!15630 (and (not (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun lt!46364 () Unit!2811)

(declare-fun choose!566 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 64) (_ BitVec 32) Int) Unit!2811)

(assert (=> d!24509 (= lt!46364 (choose!566 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(assert (=> d!24509 (validMask!0 (mask!6503 (v!2755 (underlying!327 thiss!992))))))

(assert (=> d!24509 (= (lemmaListMapContainsThenArrayContainsFrom!92 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))) lt!46364)))

(declare-fun b!93788 () Bool)

(assert (=> b!93788 (= e!61230 (arrayContainsKey!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun b!93789 () Bool)

(assert (=> b!93789 (= e!61230 (ite (= (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (= (and d!24509 c!15630) b!93788))

(assert (= (and d!24509 (not c!15630)) b!93789))

(assert (=> d!24509 m!100727))

(declare-fun m!100897 () Bool)

(assert (=> d!24509 m!100897))

(assert (=> d!24509 m!100763))

(assert (=> b!93788 m!100727))

(assert (=> b!93788 m!100731))

(assert (=> b!93567 d!24509))

(declare-fun b!93800 () Bool)

(declare-fun e!61241 () Bool)

(declare-fun contains!795 (List!1598 (_ BitVec 64)) Bool)

(assert (=> b!93800 (= e!61241 (contains!795 Nil!1595 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun b!93801 () Bool)

(declare-fun e!61239 () Bool)

(declare-fun e!61240 () Bool)

(assert (=> b!93801 (= e!61239 e!61240)))

(declare-fun c!15633 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!93801 (= c!15633 (validKeyInArray!0 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun b!93802 () Bool)

(declare-fun call!9338 () Bool)

(assert (=> b!93802 (= e!61240 call!9338)))

(declare-fun b!93803 () Bool)

(declare-fun e!61242 () Bool)

(assert (=> b!93803 (= e!61242 e!61239)))

(declare-fun res!47544 () Bool)

(assert (=> b!93803 (=> (not res!47544) (not e!61239))))

(assert (=> b!93803 (= res!47544 (not e!61241))))

(declare-fun res!47542 () Bool)

(assert (=> b!93803 (=> (not res!47542) (not e!61241))))

(assert (=> b!93803 (= res!47542 (validKeyInArray!0 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355)))))

(declare-fun d!24511 () Bool)

(declare-fun res!47543 () Bool)

(assert (=> d!24511 (=> res!47543 e!61242)))

(assert (=> d!24511 (= res!47543 (bvsge from!355 (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))))))

(assert (=> d!24511 (= (arrayNoDuplicates!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) from!355 Nil!1595) e!61242)))

(declare-fun bm!9335 () Bool)

(assert (=> bm!9335 (= call!9338 (arrayNoDuplicates!0 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (bvadd from!355 #b00000000000000000000000000000001) (ite c!15633 (Cons!1594 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) from!355) Nil!1595) Nil!1595)))))

(declare-fun b!93804 () Bool)

(assert (=> b!93804 (= e!61240 call!9338)))

(assert (= (and d!24511 (not res!47543)) b!93803))

(assert (= (and b!93803 res!47542) b!93800))

(assert (= (and b!93803 res!47544) b!93801))

(assert (= (and b!93801 c!15633) b!93802))

(assert (= (and b!93801 (not c!15633)) b!93804))

(assert (= (or b!93802 b!93804) bm!9335))

(assert (=> b!93800 m!100727))

(assert (=> b!93800 m!100727))

(declare-fun m!100899 () Bool)

(assert (=> b!93800 m!100899))

(assert (=> b!93801 m!100727))

(assert (=> b!93801 m!100727))

(declare-fun m!100901 () Bool)

(assert (=> b!93801 m!100901))

(assert (=> b!93803 m!100727))

(assert (=> b!93803 m!100727))

(assert (=> b!93803 m!100901))

(assert (=> bm!9335 m!100727))

(declare-fun m!100903 () Bool)

(assert (=> bm!9335 m!100903))

(assert (=> b!93567 d!24511))

(declare-fun d!24513 () Bool)

(assert (=> d!24513 (= (array_inv!1195 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvsge (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!93554 d!24513))

(declare-fun d!24515 () Bool)

(assert (=> d!24515 (= (array_inv!1196 (_values!2414 (v!2755 (underlying!327 thiss!992)))) (bvsge (size!2239 (_values!2414 (v!2755 (underlying!327 thiss!992)))) #b00000000000000000000000000000000))))

(assert (=> b!93554 d!24515))

(declare-fun d!24517 () Bool)

(assert (=> d!24517 (= (map!1240 newMap!16) (getCurrentListMap!465 (_keys!4113 newMap!16) (_values!2414 newMap!16) (mask!6503 newMap!16) (extraKeys!2260 newMap!16) (zeroValue!2318 newMap!16) (minValue!2318 newMap!16) #b00000000000000000000000000000000 (defaultEntry!2431 newMap!16)))))

(declare-fun bs!3843 () Bool)

(assert (= bs!3843 d!24517))

(assert (=> bs!3843 m!100857))

(assert (=> b!93564 d!24517))

(declare-fun b!93847 () Bool)

(declare-fun e!61274 () Bool)

(declare-fun e!61272 () Bool)

(assert (=> b!93847 (= e!61274 e!61272)))

(declare-fun c!15647 () Bool)

(assert (=> b!93847 (= c!15647 (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!9350 () Bool)

(declare-fun call!9355 () ListLongMap!1535)

(declare-fun call!9354 () ListLongMap!1535)

(assert (=> bm!9350 (= call!9355 call!9354)))

(declare-fun b!93848 () Bool)

(declare-fun e!61269 () Unit!2811)

(declare-fun lt!46419 () Unit!2811)

(assert (=> b!93848 (= e!61269 lt!46419)))

(declare-fun lt!46413 () ListLongMap!1535)

(declare-fun getCurrentListMapNoExtraKeys!99 (array!4186 array!4188 (_ BitVec 32) (_ BitVec 32) V!3123 V!3123 (_ BitVec 32) Int) ListLongMap!1535)

(assert (=> b!93848 (= lt!46413 (getCurrentListMapNoExtraKeys!99 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun lt!46426 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46426 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46409 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46409 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!46428 () Unit!2811)

(declare-fun addStillContains!65 (ListLongMap!1535 (_ BitVec 64) V!3123 (_ BitVec 64)) Unit!2811)

(assert (=> b!93848 (= lt!46428 (addStillContains!65 lt!46413 lt!46426 (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) lt!46409))))

(assert (=> b!93848 (contains!794 (+!135 lt!46413 (tuple2!2327 lt!46426 (zeroValue!2318 (v!2755 (underlying!327 thiss!992))))) lt!46409)))

(declare-fun lt!46416 () Unit!2811)

(assert (=> b!93848 (= lt!46416 lt!46428)))

(declare-fun lt!46423 () ListLongMap!1535)

(assert (=> b!93848 (= lt!46423 (getCurrentListMapNoExtraKeys!99 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun lt!46429 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46429 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46422 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46422 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!46410 () Unit!2811)

(declare-fun addApplyDifferent!65 (ListLongMap!1535 (_ BitVec 64) V!3123 (_ BitVec 64)) Unit!2811)

(assert (=> b!93848 (= lt!46410 (addApplyDifferent!65 lt!46423 lt!46429 (minValue!2318 (v!2755 (underlying!327 thiss!992))) lt!46422))))

(declare-fun apply!89 (ListLongMap!1535 (_ BitVec 64)) V!3123)

(assert (=> b!93848 (= (apply!89 (+!135 lt!46423 (tuple2!2327 lt!46429 (minValue!2318 (v!2755 (underlying!327 thiss!992))))) lt!46422) (apply!89 lt!46423 lt!46422))))

(declare-fun lt!46425 () Unit!2811)

(assert (=> b!93848 (= lt!46425 lt!46410)))

(declare-fun lt!46411 () ListLongMap!1535)

(assert (=> b!93848 (= lt!46411 (getCurrentListMapNoExtraKeys!99 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun lt!46420 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46420 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46421 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46421 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(declare-fun lt!46414 () Unit!2811)

(assert (=> b!93848 (= lt!46414 (addApplyDifferent!65 lt!46411 lt!46420 (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) lt!46421))))

(assert (=> b!93848 (= (apply!89 (+!135 lt!46411 (tuple2!2327 lt!46420 (zeroValue!2318 (v!2755 (underlying!327 thiss!992))))) lt!46421) (apply!89 lt!46411 lt!46421))))

(declare-fun lt!46412 () Unit!2811)

(assert (=> b!93848 (= lt!46412 lt!46414)))

(declare-fun lt!46430 () ListLongMap!1535)

(assert (=> b!93848 (= lt!46430 (getCurrentListMapNoExtraKeys!99 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun lt!46427 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46427 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!46415 () (_ BitVec 64))

(assert (=> b!93848 (= lt!46415 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)))))

(assert (=> b!93848 (= lt!46419 (addApplyDifferent!65 lt!46430 lt!46427 (minValue!2318 (v!2755 (underlying!327 thiss!992))) lt!46415))))

(assert (=> b!93848 (= (apply!89 (+!135 lt!46430 (tuple2!2327 lt!46427 (minValue!2318 (v!2755 (underlying!327 thiss!992))))) lt!46415) (apply!89 lt!46430 lt!46415))))

(declare-fun b!93849 () Bool)

(declare-fun c!15648 () Bool)

(assert (=> b!93849 (= c!15648 (and (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!61280 () ListLongMap!1535)

(declare-fun e!61281 () ListLongMap!1535)

(assert (=> b!93849 (= e!61280 e!61281)))

(declare-fun b!93850 () Bool)

(declare-fun e!61273 () Bool)

(declare-fun e!61276 () Bool)

(assert (=> b!93850 (= e!61273 e!61276)))

(declare-fun res!47567 () Bool)

(declare-fun call!9353 () Bool)

(assert (=> b!93850 (= res!47567 call!9353)))

(assert (=> b!93850 (=> (not res!47567) (not e!61276))))

(declare-fun b!93851 () Bool)

(declare-fun e!61275 () Bool)

(assert (=> b!93851 (= e!61275 (validKeyInArray!0 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun b!93852 () Bool)

(declare-fun e!61279 () Bool)

(assert (=> b!93852 (= e!61279 (validKeyInArray!0 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(declare-fun bm!9351 () Bool)

(declare-fun call!9358 () ListLongMap!1535)

(assert (=> bm!9351 (= call!9358 call!9355)))

(declare-fun b!93853 () Bool)

(assert (=> b!93853 (= e!61281 call!9358)))

(declare-fun bm!9352 () Bool)

(declare-fun call!9357 () Bool)

(declare-fun lt!46424 () ListLongMap!1535)

(assert (=> bm!9352 (= call!9357 (contains!794 lt!46424 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93854 () Bool)

(assert (=> b!93854 (= e!61273 (not call!9353))))

(declare-fun c!15651 () Bool)

(declare-fun call!9356 () ListLongMap!1535)

(declare-fun c!15649 () Bool)

(declare-fun bm!9353 () Bool)

(assert (=> bm!9353 (= call!9356 (+!135 (ite c!15651 call!9354 (ite c!15649 call!9355 call!9358)) (ite (or c!15651 c!15649) (tuple2!2327 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2318 (v!2755 (underlying!327 thiss!992)))) (tuple2!2327 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2318 (v!2755 (underlying!327 thiss!992)))))))))

(declare-fun b!93855 () Bool)

(declare-fun e!61271 () Bool)

(assert (=> b!93855 (= e!61272 e!61271)))

(declare-fun res!47571 () Bool)

(assert (=> b!93855 (= res!47571 call!9357)))

(assert (=> b!93855 (=> (not res!47571) (not e!61271))))

(declare-fun b!93856 () Bool)

(assert (=> b!93856 (= e!61272 (not call!9357))))

(declare-fun b!93857 () Bool)

(assert (=> b!93857 (= e!61271 (= (apply!89 lt!46424 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!2318 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun b!93858 () Bool)

(assert (=> b!93858 (= e!61276 (= (apply!89 lt!46424 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!2318 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun d!24519 () Bool)

(assert (=> d!24519 e!61274))

(declare-fun res!47569 () Bool)

(assert (=> d!24519 (=> (not res!47569) (not e!61274))))

(assert (=> d!24519 (= res!47569 (or (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))) (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))))))))

(declare-fun lt!46417 () ListLongMap!1535)

(assert (=> d!24519 (= lt!46424 lt!46417)))

(declare-fun lt!46418 () Unit!2811)

(assert (=> d!24519 (= lt!46418 e!61269)))

(declare-fun c!15650 () Bool)

(assert (=> d!24519 (= c!15650 e!61279)))

(declare-fun res!47566 () Bool)

(assert (=> d!24519 (=> (not res!47566) (not e!61279))))

(assert (=> d!24519 (= res!47566 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))))))

(declare-fun e!61278 () ListLongMap!1535)

(assert (=> d!24519 (= lt!46417 e!61278)))

(assert (=> d!24519 (= c!15651 (and (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!24519 (validMask!0 (mask!6503 (v!2755 (underlying!327 thiss!992))))))

(assert (=> d!24519 (= (getCurrentListMap!465 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))) lt!46424)))

(declare-fun b!93859 () Bool)

(declare-fun Unit!2818 () Unit!2811)

(assert (=> b!93859 (= e!61269 Unit!2818)))

(declare-fun bm!9354 () Bool)

(assert (=> bm!9354 (= call!9353 (contains!794 lt!46424 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!93860 () Bool)

(declare-fun call!9359 () ListLongMap!1535)

(assert (=> b!93860 (= e!61280 call!9359)))

(declare-fun b!93861 () Bool)

(assert (=> b!93861 (= e!61278 e!61280)))

(assert (=> b!93861 (= c!15649 (and (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!93862 () Bool)

(declare-fun res!47570 () Bool)

(assert (=> b!93862 (=> (not res!47570) (not e!61274))))

(assert (=> b!93862 (= res!47570 e!61273)))

(declare-fun c!15646 () Bool)

(assert (=> b!93862 (= c!15646 (not (= (bvand (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!93863 () Bool)

(assert (=> b!93863 (= e!61278 (+!135 call!9356 (tuple2!2327 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2318 (v!2755 (underlying!327 thiss!992))))))))

(declare-fun bm!9355 () Bool)

(assert (=> bm!9355 (= call!9359 call!9356)))

(declare-fun b!93864 () Bool)

(assert (=> b!93864 (= e!61281 call!9359)))

(declare-fun bm!9356 () Bool)

(assert (=> bm!9356 (= call!9354 (getCurrentListMapNoExtraKeys!99 (_keys!4113 (v!2755 (underlying!327 thiss!992))) (_values!2414 (v!2755 (underlying!327 thiss!992))) (mask!6503 (v!2755 (underlying!327 thiss!992))) (extraKeys!2260 (v!2755 (underlying!327 thiss!992))) (zeroValue!2318 (v!2755 (underlying!327 thiss!992))) (minValue!2318 (v!2755 (underlying!327 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992)))))))

(declare-fun e!61270 () Bool)

(declare-fun b!93865 () Bool)

(assert (=> b!93865 (= e!61270 (= (apply!89 lt!46424 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))) (get!1274 (select (arr!1991 (_values!2414 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355)) (dynLambda!372 (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!93865 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2239 (_values!2414 (v!2755 (underlying!327 thiss!992))))))))

(assert (=> b!93865 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))))))

(declare-fun b!93866 () Bool)

(declare-fun e!61277 () Bool)

(assert (=> b!93866 (= e!61277 e!61270)))

(declare-fun res!47563 () Bool)

(assert (=> b!93866 (=> (not res!47563) (not e!61270))))

(assert (=> b!93866 (= res!47563 (contains!794 lt!46424 (select (arr!1990 (_keys!4113 (v!2755 (underlying!327 thiss!992)))) (bvadd #b00000000000000000000000000000001 from!355))))))

(assert (=> b!93866 (and (bvsge (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))))))

(declare-fun b!93867 () Bool)

(declare-fun res!47564 () Bool)

(assert (=> b!93867 (=> (not res!47564) (not e!61274))))

(assert (=> b!93867 (= res!47564 e!61277)))

(declare-fun res!47565 () Bool)

(assert (=> b!93867 (=> res!47565 e!61277)))

(assert (=> b!93867 (= res!47565 (not e!61275))))

(declare-fun res!47568 () Bool)

(assert (=> b!93867 (=> (not res!47568) (not e!61275))))

(assert (=> b!93867 (= res!47568 (bvslt (bvadd #b00000000000000000000000000000001 from!355) (size!2238 (_keys!4113 (v!2755 (underlying!327 thiss!992))))))))

(assert (= (and d!24519 c!15651) b!93863))

(assert (= (and d!24519 (not c!15651)) b!93861))

(assert (= (and b!93861 c!15649) b!93860))

(assert (= (and b!93861 (not c!15649)) b!93849))

(assert (= (and b!93849 c!15648) b!93864))

(assert (= (and b!93849 (not c!15648)) b!93853))

(assert (= (or b!93864 b!93853) bm!9351))

(assert (= (or b!93860 bm!9351) bm!9350))

(assert (= (or b!93860 b!93864) bm!9355))

(assert (= (or b!93863 bm!9350) bm!9356))

(assert (= (or b!93863 bm!9355) bm!9353))

(assert (= (and d!24519 res!47566) b!93852))

(assert (= (and d!24519 c!15650) b!93848))

(assert (= (and d!24519 (not c!15650)) b!93859))

(assert (= (and d!24519 res!47569) b!93867))

(assert (= (and b!93867 res!47568) b!93851))

(assert (= (and b!93867 (not res!47565)) b!93866))

(assert (= (and b!93866 res!47563) b!93865))

(assert (= (and b!93867 res!47564) b!93862))

(assert (= (and b!93862 c!15646) b!93850))

(assert (= (and b!93862 (not c!15646)) b!93854))

(assert (= (and b!93850 res!47567) b!93858))

(assert (= (or b!93850 b!93854) bm!9354))

(assert (= (and b!93862 res!47570) b!93847))

(assert (= (and b!93847 c!15647) b!93855))

(assert (= (and b!93847 (not c!15647)) b!93856))

(assert (= (and b!93855 res!47571) b!93857))

(assert (= (or b!93855 b!93856) bm!9352))

(declare-fun b_lambda!4139 () Bool)

(assert (=> (not b_lambda!4139) (not b!93865)))

(assert (=> b!93865 t!5488))

(declare-fun b_and!5717 () Bool)

(assert (= b_and!5705 (and (=> t!5488 result!3171) b_and!5717)))

(assert (=> b!93865 t!5490))

(declare-fun b_and!5719 () Bool)

(assert (= b_and!5707 (and (=> t!5490 result!3175) b_and!5719)))

(declare-fun m!100905 () Bool)

(assert (=> b!93863 m!100905))

(assert (=> b!93851 m!100893))

(assert (=> b!93851 m!100893))

(declare-fun m!100907 () Bool)

(assert (=> b!93851 m!100907))

(declare-fun m!100909 () Bool)

(assert (=> b!93857 m!100909))

(declare-fun m!100911 () Bool)

(assert (=> b!93865 m!100911))

(assert (=> b!93865 m!100743))

(declare-fun m!100913 () Bool)

(assert (=> b!93865 m!100913))

(assert (=> b!93865 m!100893))

(assert (=> b!93865 m!100911))

(assert (=> b!93865 m!100743))

(assert (=> b!93865 m!100893))

(declare-fun m!100915 () Bool)

(assert (=> b!93865 m!100915))

(declare-fun m!100917 () Bool)

(assert (=> b!93858 m!100917))

(declare-fun m!100919 () Bool)

(assert (=> bm!9352 m!100919))

(assert (=> b!93852 m!100893))

(assert (=> b!93852 m!100893))

(assert (=> b!93852 m!100907))

(declare-fun m!100921 () Bool)

(assert (=> b!93848 m!100921))

(declare-fun m!100923 () Bool)

(assert (=> b!93848 m!100923))

(declare-fun m!100925 () Bool)

(assert (=> b!93848 m!100925))

(declare-fun m!100927 () Bool)

(assert (=> b!93848 m!100927))

(declare-fun m!100929 () Bool)

(assert (=> b!93848 m!100929))

(assert (=> b!93848 m!100921))

(declare-fun m!100931 () Bool)

(assert (=> b!93848 m!100931))

(declare-fun m!100933 () Bool)

(assert (=> b!93848 m!100933))

(declare-fun m!100935 () Bool)

(assert (=> b!93848 m!100935))

(declare-fun m!100937 () Bool)

(assert (=> b!93848 m!100937))

(declare-fun m!100939 () Bool)

(assert (=> b!93848 m!100939))

(declare-fun m!100941 () Bool)

(assert (=> b!93848 m!100941))

(declare-fun m!100943 () Bool)

(assert (=> b!93848 m!100943))

(declare-fun m!100945 () Bool)

(assert (=> b!93848 m!100945))

(assert (=> b!93848 m!100943))

(assert (=> b!93848 m!100931))

(declare-fun m!100947 () Bool)

(assert (=> b!93848 m!100947))

(declare-fun m!100949 () Bool)

(assert (=> b!93848 m!100949))

(assert (=> b!93848 m!100893))

(assert (=> b!93848 m!100927))

(declare-fun m!100951 () Bool)

(assert (=> b!93848 m!100951))

(declare-fun m!100953 () Bool)

(assert (=> bm!9354 m!100953))

(assert (=> bm!9356 m!100937))

(assert (=> b!93866 m!100893))

(assert (=> b!93866 m!100893))

(declare-fun m!100955 () Bool)

(assert (=> b!93866 m!100955))

(assert (=> d!24519 m!100763))

(declare-fun m!100957 () Bool)

(assert (=> bm!9353 m!100957))

(assert (=> b!93564 d!24519))

(declare-fun d!24521 () Bool)

(assert (=> d!24521 (= (valid!371 thiss!992) (valid!370 (v!2755 (underlying!327 thiss!992))))))

(declare-fun bs!3844 () Bool)

(assert (= bs!3844 d!24521))

(declare-fun m!100959 () Bool)

(assert (=> bs!3844 m!100959))

(assert (=> start!11326 d!24521))

(declare-fun mapIsEmpty!3663 () Bool)

(declare-fun mapRes!3663 () Bool)

(assert (=> mapIsEmpty!3663 mapRes!3663))

(declare-fun b!93874 () Bool)

(declare-fun e!61287 () Bool)

(assert (=> b!93874 (= e!61287 tp_is_empty!2607)))

(declare-fun condMapEmpty!3663 () Bool)

(declare-fun mapDefault!3663 () ValueCell!960)

(assert (=> mapNonEmpty!3654 (= condMapEmpty!3663 (= mapRest!3653 ((as const (Array (_ BitVec 32) ValueCell!960)) mapDefault!3663)))))

(declare-fun e!61286 () Bool)

(assert (=> mapNonEmpty!3654 (= tp!9406 (and e!61286 mapRes!3663))))

(declare-fun b!93875 () Bool)

(assert (=> b!93875 (= e!61286 tp_is_empty!2607)))

(declare-fun mapNonEmpty!3663 () Bool)

(declare-fun tp!9423 () Bool)

(assert (=> mapNonEmpty!3663 (= mapRes!3663 (and tp!9423 e!61287))))

(declare-fun mapValue!3663 () ValueCell!960)

(declare-fun mapKey!3663 () (_ BitVec 32))

(declare-fun mapRest!3663 () (Array (_ BitVec 32) ValueCell!960))

(assert (=> mapNonEmpty!3663 (= mapRest!3653 (store mapRest!3663 mapKey!3663 mapValue!3663))))

(assert (= (and mapNonEmpty!3654 condMapEmpty!3663) mapIsEmpty!3663))

(assert (= (and mapNonEmpty!3654 (not condMapEmpty!3663)) mapNonEmpty!3663))

(assert (= (and mapNonEmpty!3663 ((_ is ValueCellFull!960) mapValue!3663)) b!93874))

(assert (= (and mapNonEmpty!3654 ((_ is ValueCellFull!960) mapDefault!3663)) b!93875))

(declare-fun m!100961 () Bool)

(assert (=> mapNonEmpty!3663 m!100961))

(declare-fun mapIsEmpty!3664 () Bool)

(declare-fun mapRes!3664 () Bool)

(assert (=> mapIsEmpty!3664 mapRes!3664))

(declare-fun b!93876 () Bool)

(declare-fun e!61289 () Bool)

(assert (=> b!93876 (= e!61289 tp_is_empty!2607)))

(declare-fun condMapEmpty!3664 () Bool)

(declare-fun mapDefault!3664 () ValueCell!960)

(assert (=> mapNonEmpty!3653 (= condMapEmpty!3664 (= mapRest!3654 ((as const (Array (_ BitVec 32) ValueCell!960)) mapDefault!3664)))))

(declare-fun e!61288 () Bool)

(assert (=> mapNonEmpty!3653 (= tp!9405 (and e!61288 mapRes!3664))))

(declare-fun b!93877 () Bool)

(assert (=> b!93877 (= e!61288 tp_is_empty!2607)))

(declare-fun mapNonEmpty!3664 () Bool)

(declare-fun tp!9424 () Bool)

(assert (=> mapNonEmpty!3664 (= mapRes!3664 (and tp!9424 e!61289))))

(declare-fun mapKey!3664 () (_ BitVec 32))

(declare-fun mapValue!3664 () ValueCell!960)

(declare-fun mapRest!3664 () (Array (_ BitVec 32) ValueCell!960))

(assert (=> mapNonEmpty!3664 (= mapRest!3654 (store mapRest!3664 mapKey!3664 mapValue!3664))))

(assert (= (and mapNonEmpty!3653 condMapEmpty!3664) mapIsEmpty!3664))

(assert (= (and mapNonEmpty!3653 (not condMapEmpty!3664)) mapNonEmpty!3664))

(assert (= (and mapNonEmpty!3664 ((_ is ValueCellFull!960) mapValue!3664)) b!93876))

(assert (= (and mapNonEmpty!3653 ((_ is ValueCellFull!960) mapDefault!3664)) b!93877))

(declare-fun m!100963 () Bool)

(assert (=> mapNonEmpty!3664 m!100963))

(declare-fun b_lambda!4141 () Bool)

(assert (= b_lambda!4139 (or (and b!93554 b_free!2381) (and b!93553 b_free!2383 (= (defaultEntry!2431 newMap!16) (defaultEntry!2431 (v!2755 (underlying!327 thiss!992))))) b_lambda!4141)))

(check-sat (not b_lambda!4137) (not d!24505) (not bm!9354) tp_is_empty!2607 (not b!93858) (not bm!9326) (not bm!9309) (not b!93857) (not b_lambda!4141) (not b!93762) (not b!93754) (not bm!9316) (not b!93863) (not d!24489) (not b!93634) (not d!24517) (not b!93800) (not bm!9321) (not b!93851) (not b!93848) (not d!24509) (not mapNonEmpty!3664) (not bm!9356) (not b!93776) (not b!93735) (not d!24519) (not b!93803) (not b!93801) (not bm!9327) (not b!93643) (not b!93777) (not bm!9329) (not bm!9311) (not b!93636) (not b!93733) (not d!24497) (not b!93865) (not b!93635) (not d!24503) (not bm!9335) (not b!93645) (not b!93759) (not b!93753) (not bm!9353) (not b!93769) (not bm!9318) (not b_next!2381) (not d!24499) b_and!5719 (not bm!9312) (not b!93852) (not bm!9331) (not b!93788) (not b_next!2383) (not b!93783) (not bm!9315) (not mapNonEmpty!3663) (not d!24521) (not b!93866) b_and!5717 (not bm!9328) (not bm!9352))
(check-sat b_and!5717 b_and!5719 (not b_next!2381) (not b_next!2383))
