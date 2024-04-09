; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!8386 () Bool)

(assert start!8386)

(declare-fun b!56416 () Bool)

(declare-fun b_free!1913 () Bool)

(declare-fun b_next!1913 () Bool)

(assert (=> b!56416 (= b_free!1913 (not b_next!1913))))

(declare-fun tp!7842 () Bool)

(declare-fun b_and!3377 () Bool)

(assert (=> b!56416 (= tp!7842 b_and!3377)))

(declare-fun b!56407 () Bool)

(declare-fun b_free!1915 () Bool)

(declare-fun b_next!1915 () Bool)

(assert (=> b!56407 (= b_free!1915 (not b_next!1915))))

(declare-fun tp!7839 () Bool)

(declare-fun b_and!3379 () Bool)

(assert (=> b!56407 (= tp!7839 b_and!3379)))

(declare-fun mapNonEmpty!2789 () Bool)

(declare-fun mapRes!2789 () Bool)

(declare-fun tp!7841 () Bool)

(declare-fun e!37138 () Bool)

(assert (=> mapNonEmpty!2789 (= mapRes!2789 (and tp!7841 e!37138))))

(declare-datatypes ((V!2811 0))(
  ( (V!2812 (val!1231 Int)) )
))
(declare-datatypes ((ValueCell!843 0))(
  ( (ValueCellFull!843 (v!2344 V!2811)) (EmptyCell!843) )
))
(declare-fun mapRest!2790 () (Array (_ BitVec 32) ValueCell!843))

(declare-datatypes ((array!3668 0))(
  ( (array!3669 (arr!1756 (Array (_ BitVec 32) (_ BitVec 64))) (size!1985 (_ BitVec 32))) )
))
(declare-datatypes ((array!3670 0))(
  ( (array!3671 (arr!1757 (Array (_ BitVec 32) ValueCell!843)) (size!1986 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!594 0))(
  ( (LongMapFixedSize!595 (defaultEntry!2011 Int) (mask!5878 (_ BitVec 32)) (extraKeys!1902 (_ BitVec 32)) (zeroValue!1929 V!2811) (minValue!1929 V!2811) (_size!346 (_ BitVec 32)) (_keys!3631 array!3668) (_values!1994 array!3670) (_vacant!346 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!404 0))(
  ( (Cell!405 (v!2345 LongMapFixedSize!594)) )
))
(declare-datatypes ((LongMap!404 0))(
  ( (LongMap!405 (underlying!213 Cell!404)) )
))
(declare-fun thiss!992 () LongMap!404)

(declare-fun mapValue!2789 () ValueCell!843)

(declare-fun mapKey!2789 () (_ BitVec 32))

(assert (=> mapNonEmpty!2789 (= (arr!1757 (_values!1994 (v!2345 (underlying!213 thiss!992)))) (store mapRest!2790 mapKey!2789 mapValue!2789))))

(declare-fun b!56403 () Bool)

(declare-fun res!31716 () Bool)

(declare-fun e!37137 () Bool)

(assert (=> b!56403 (=> (not res!31716) (not e!37137))))

(declare-fun newMap!16 () LongMapFixedSize!594)

(assert (=> b!56403 (= res!31716 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5878 newMap!16)) (_size!346 (v!2345 (underlying!213 thiss!992)))))))

(declare-fun b!56404 () Bool)

(declare-fun e!37135 () Bool)

(declare-fun tp_is_empty!2373 () Bool)

(assert (=> b!56404 (= e!37135 tp_is_empty!2373)))

(declare-fun mapIsEmpty!2789 () Bool)

(declare-fun mapRes!2790 () Bool)

(assert (=> mapIsEmpty!2789 mapRes!2790))

(declare-fun b!56405 () Bool)

(declare-fun e!37141 () Bool)

(assert (=> b!56405 (= e!37137 e!37141)))

(declare-fun res!31709 () Bool)

(assert (=> b!56405 (=> (not res!31709) (not e!37141))))

(declare-datatypes ((tuple2!2012 0))(
  ( (tuple2!2013 (_1!1016 (_ BitVec 64)) (_2!1016 V!2811)) )
))
(declare-datatypes ((List!1436 0))(
  ( (Nil!1433) (Cons!1432 (h!2012 tuple2!2012) (t!4726 List!1436)) )
))
(declare-datatypes ((ListLongMap!1359 0))(
  ( (ListLongMap!1360 (toList!695 List!1436)) )
))
(declare-fun lt!22243 () ListLongMap!1359)

(declare-fun lt!22248 () ListLongMap!1359)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!56405 (= res!31709 (and (= lt!22248 lt!22243) (not (= (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1092 (LongMapFixedSize!594) ListLongMap!1359)

(assert (=> b!56405 (= lt!22243 (map!1092 newMap!16))))

(declare-fun getCurrentListMap!394 (array!3668 array!3670 (_ BitVec 32) (_ BitVec 32) V!2811 V!2811 (_ BitVec 32) Int) ListLongMap!1359)

(assert (=> b!56405 (= lt!22248 (getCurrentListMap!394 (_keys!3631 (v!2345 (underlying!213 thiss!992))) (_values!1994 (v!2345 (underlying!213 thiss!992))) (mask!5878 (v!2345 (underlying!213 thiss!992))) (extraKeys!1902 (v!2345 (underlying!213 thiss!992))) (zeroValue!1929 (v!2345 (underlying!213 thiss!992))) (minValue!1929 (v!2345 (underlying!213 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2011 (v!2345 (underlying!213 thiss!992)))))))

(declare-fun b!56406 () Bool)

(declare-fun res!31713 () Bool)

(assert (=> b!56406 (=> (not res!31713) (not e!37137))))

(declare-fun valid!237 (LongMapFixedSize!594) Bool)

(assert (=> b!56406 (= res!31713 (valid!237 newMap!16))))

(declare-fun e!37131 () Bool)

(declare-fun e!37143 () Bool)

(declare-fun array_inv!1035 (array!3668) Bool)

(declare-fun array_inv!1036 (array!3670) Bool)

(assert (=> b!56407 (= e!37143 (and tp!7839 tp_is_empty!2373 (array_inv!1035 (_keys!3631 newMap!16)) (array_inv!1036 (_values!1994 newMap!16)) e!37131))))

(declare-fun b!56408 () Bool)

(declare-fun e!37142 () Bool)

(assert (=> b!56408 (= e!37142 true)))

(declare-datatypes ((List!1437 0))(
  ( (Nil!1434) (Cons!1433 (h!2013 (_ BitVec 64)) (t!4727 List!1437)) )
))
(declare-fun lt!22246 () List!1437)

(declare-fun lt!22249 () Bool)

(declare-fun contains!676 (List!1437 (_ BitVec 64)) Bool)

(assert (=> b!56408 (= lt!22249 (contains!676 lt!22246 (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355)))))

(declare-fun b!56409 () Bool)

(declare-fun e!37139 () Bool)

(declare-fun e!37130 () Bool)

(assert (=> b!56409 (= e!37139 e!37130)))

(declare-fun b!56410 () Bool)

(assert (=> b!56410 (= e!37138 tp_is_empty!2373)))

(declare-fun res!31708 () Bool)

(assert (=> start!8386 (=> (not res!31708) (not e!37137))))

(declare-fun valid!238 (LongMap!404) Bool)

(assert (=> start!8386 (= res!31708 (valid!238 thiss!992))))

(assert (=> start!8386 e!37137))

(declare-fun e!37145 () Bool)

(assert (=> start!8386 e!37145))

(assert (=> start!8386 true))

(assert (=> start!8386 e!37143))

(declare-fun b!56411 () Bool)

(declare-fun res!31710 () Bool)

(assert (=> b!56411 (=> res!31710 e!37142)))

(assert (=> b!56411 (= res!31710 (contains!676 lt!22246 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!2790 () Bool)

(assert (=> mapIsEmpty!2790 mapRes!2789))

(declare-fun b!56412 () Bool)

(declare-fun res!31706 () Bool)

(assert (=> b!56412 (=> res!31706 e!37142)))

(declare-fun arrayNoDuplicates!0 (array!3668 (_ BitVec 32) List!1437) Bool)

(assert (=> b!56412 (= res!31706 (not (arrayNoDuplicates!0 (_keys!3631 (v!2345 (underlying!213 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) lt!22246)))))

(declare-fun mapNonEmpty!2790 () Bool)

(declare-fun tp!7840 () Bool)

(assert (=> mapNonEmpty!2790 (= mapRes!2790 (and tp!7840 e!37135))))

(declare-fun mapValue!2790 () ValueCell!843)

(declare-fun mapKey!2790 () (_ BitVec 32))

(declare-fun mapRest!2789 () (Array (_ BitVec 32) ValueCell!843))

(assert (=> mapNonEmpty!2790 (= (arr!1757 (_values!1994 newMap!16)) (store mapRest!2789 mapKey!2790 mapValue!2790))))

(declare-fun b!56413 () Bool)

(declare-fun e!37132 () Bool)

(assert (=> b!56413 (= e!37132 (not e!37142))))

(declare-fun res!31711 () Bool)

(assert (=> b!56413 (=> res!31711 e!37142)))

(assert (=> b!56413 (= res!31711 (or (bvsge (size!1985 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) #b01111111111111111111111111111111) (bvslt (bvadd #b00000000000000000000000000000001 from!355) #b00000000000000000000000000000000) (bvsge (bvadd #b00000000000000000000000000000001 from!355) (size!1985 (_keys!3631 (v!2345 (underlying!213 thiss!992)))))))))

(assert (=> b!56413 (= lt!22246 (Cons!1433 (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355) Nil!1434))))

(assert (=> b!56413 (arrayNoDuplicates!0 (_keys!3631 (v!2345 (underlying!213 thiss!992))) from!355 Nil!1434)))

(declare-datatypes ((Unit!1464 0))(
  ( (Unit!1465) )
))
(declare-fun lt!22245 () Unit!1464)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3668 (_ BitVec 32) (_ BitVec 32)) Unit!1464)

(assert (=> b!56413 (= lt!22245 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3631 (v!2345 (underlying!213 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-fun arrayContainsKey!0 (array!3668 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!56413 (arrayContainsKey!0 (_keys!3631 (v!2345 (underlying!213 thiss!992))) (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!22247 () Unit!1464)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!21 (array!3668 array!3670 (_ BitVec 32) (_ BitVec 32) V!2811 V!2811 (_ BitVec 64) (_ BitVec 32) Int) Unit!1464)

(assert (=> b!56413 (= lt!22247 (lemmaListMapContainsThenArrayContainsFrom!21 (_keys!3631 (v!2345 (underlying!213 thiss!992))) (_values!1994 (v!2345 (underlying!213 thiss!992))) (mask!5878 (v!2345 (underlying!213 thiss!992))) (extraKeys!1902 (v!2345 (underlying!213 thiss!992))) (zeroValue!1929 (v!2345 (underlying!213 thiss!992))) (minValue!1929 (v!2345 (underlying!213 thiss!992))) (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2011 (v!2345 (underlying!213 thiss!992)))))))

(declare-fun b!56414 () Bool)

(declare-fun e!37144 () Bool)

(declare-fun e!37136 () Bool)

(assert (=> b!56414 (= e!37144 (and e!37136 mapRes!2789))))

(declare-fun condMapEmpty!2789 () Bool)

(declare-fun mapDefault!2789 () ValueCell!843)

(assert (=> b!56414 (= condMapEmpty!2789 (= (arr!1757 (_values!1994 (v!2345 (underlying!213 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!843)) mapDefault!2789)))))

(declare-fun b!56415 () Bool)

(declare-fun res!31714 () Bool)

(assert (=> b!56415 (=> res!31714 e!37142)))

(assert (=> b!56415 (= res!31714 (contains!676 lt!22246 #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!56416 (= e!37130 (and tp!7842 tp_is_empty!2373 (array_inv!1035 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) (array_inv!1036 (_values!1994 (v!2345 (underlying!213 thiss!992)))) e!37144))))

(declare-fun b!56417 () Bool)

(declare-fun e!37133 () Bool)

(assert (=> b!56417 (= e!37133 tp_is_empty!2373)))

(declare-fun b!56418 () Bool)

(declare-fun res!31712 () Bool)

(assert (=> b!56418 (=> (not res!31712) (not e!37137))))

(assert (=> b!56418 (= res!31712 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!1985 (_keys!3631 (v!2345 (underlying!213 thiss!992)))))))))

(declare-fun b!56419 () Bool)

(declare-fun res!31707 () Bool)

(assert (=> b!56419 (=> res!31707 e!37142)))

(declare-fun noDuplicate!47 (List!1437) Bool)

(assert (=> b!56419 (= res!31707 (not (noDuplicate!47 lt!22246)))))

(declare-fun b!56420 () Bool)

(assert (=> b!56420 (= e!37131 (and e!37133 mapRes!2790))))

(declare-fun condMapEmpty!2790 () Bool)

(declare-fun mapDefault!2790 () ValueCell!843)

(assert (=> b!56420 (= condMapEmpty!2790 (= (arr!1757 (_values!1994 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!843)) mapDefault!2790)))))

(declare-fun b!56421 () Bool)

(assert (=> b!56421 (= e!37141 e!37132)))

(declare-fun res!31715 () Bool)

(assert (=> b!56421 (=> (not res!31715) (not e!37132))))

(declare-fun contains!677 (ListLongMap!1359 (_ BitVec 64)) Bool)

(assert (=> b!56421 (= res!31715 (contains!677 lt!22243 (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355)))))

(declare-datatypes ((tuple2!2014 0))(
  ( (tuple2!2015 (_1!1017 Bool) (_2!1017 LongMapFixedSize!594)) )
))
(declare-fun lt!22244 () tuple2!2014)

(declare-fun update!76 (LongMapFixedSize!594 (_ BitVec 64) V!2811) tuple2!2014)

(declare-fun get!1059 (ValueCell!843 V!2811) V!2811)

(declare-fun dynLambda!304 (Int (_ BitVec 64)) V!2811)

(assert (=> b!56421 (= lt!22244 (update!76 newMap!16 (select (arr!1756 (_keys!3631 (v!2345 (underlying!213 thiss!992)))) from!355) (get!1059 (select (arr!1757 (_values!1994 (v!2345 (underlying!213 thiss!992)))) from!355) (dynLambda!304 (defaultEntry!2011 (v!2345 (underlying!213 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!56422 () Bool)

(assert (=> b!56422 (= e!37136 tp_is_empty!2373)))

(declare-fun b!56423 () Bool)

(assert (=> b!56423 (= e!37145 e!37139)))

(assert (= (and start!8386 res!31708) b!56418))

(assert (= (and b!56418 res!31712) b!56406))

(assert (= (and b!56406 res!31713) b!56403))

(assert (= (and b!56403 res!31716) b!56405))

(assert (= (and b!56405 res!31709) b!56421))

(assert (= (and b!56421 res!31715) b!56413))

(assert (= (and b!56413 (not res!31711)) b!56419))

(assert (= (and b!56419 (not res!31707)) b!56411))

(assert (= (and b!56411 (not res!31710)) b!56415))

(assert (= (and b!56415 (not res!31714)) b!56412))

(assert (= (and b!56412 (not res!31706)) b!56408))

(assert (= (and b!56414 condMapEmpty!2789) mapIsEmpty!2790))

(assert (= (and b!56414 (not condMapEmpty!2789)) mapNonEmpty!2789))

(get-info :version)

(assert (= (and mapNonEmpty!2789 ((_ is ValueCellFull!843) mapValue!2789)) b!56410))

(assert (= (and b!56414 ((_ is ValueCellFull!843) mapDefault!2789)) b!56422))

(assert (= b!56416 b!56414))

(assert (= b!56409 b!56416))

(assert (= b!56423 b!56409))

(assert (= start!8386 b!56423))

(assert (= (and b!56420 condMapEmpty!2790) mapIsEmpty!2789))

(assert (= (and b!56420 (not condMapEmpty!2790)) mapNonEmpty!2790))

(assert (= (and mapNonEmpty!2790 ((_ is ValueCellFull!843) mapValue!2790)) b!56404))

(assert (= (and b!56420 ((_ is ValueCellFull!843) mapDefault!2790)) b!56417))

(assert (= b!56407 b!56420))

(assert (= start!8386 b!56407))

(declare-fun b_lambda!2487 () Bool)

(assert (=> (not b_lambda!2487) (not b!56421)))

(declare-fun t!4723 () Bool)

(declare-fun tb!1265 () Bool)

(assert (=> (and b!56416 (= (defaultEntry!2011 (v!2345 (underlying!213 thiss!992))) (defaultEntry!2011 (v!2345 (underlying!213 thiss!992)))) t!4723) tb!1265))

(declare-fun result!2291 () Bool)

(assert (=> tb!1265 (= result!2291 tp_is_empty!2373)))

(assert (=> b!56421 t!4723))

(declare-fun b_and!3381 () Bool)

(assert (= b_and!3377 (and (=> t!4723 result!2291) b_and!3381)))

(declare-fun tb!1267 () Bool)

(declare-fun t!4725 () Bool)

(assert (=> (and b!56407 (= (defaultEntry!2011 newMap!16) (defaultEntry!2011 (v!2345 (underlying!213 thiss!992)))) t!4725) tb!1267))

(declare-fun result!2295 () Bool)

(assert (= result!2295 result!2291))

(assert (=> b!56421 t!4725))

(declare-fun b_and!3383 () Bool)

(assert (= b_and!3379 (and (=> t!4725 result!2295) b_and!3383)))

(declare-fun m!47521 () Bool)

(assert (=> mapNonEmpty!2789 m!47521))

(declare-fun m!47523 () Bool)

(assert (=> b!56405 m!47523))

(declare-fun m!47525 () Bool)

(assert (=> b!56405 m!47525))

(declare-fun m!47527 () Bool)

(assert (=> b!56405 m!47527))

(declare-fun m!47529 () Bool)

(assert (=> b!56407 m!47529))

(declare-fun m!47531 () Bool)

(assert (=> b!56407 m!47531))

(declare-fun m!47533 () Bool)

(assert (=> b!56419 m!47533))

(declare-fun m!47535 () Bool)

(assert (=> b!56415 m!47535))

(declare-fun m!47537 () Bool)

(assert (=> start!8386 m!47537))

(declare-fun m!47539 () Bool)

(assert (=> b!56412 m!47539))

(declare-fun m!47541 () Bool)

(assert (=> b!56411 m!47541))

(declare-fun m!47543 () Bool)

(assert (=> b!56406 m!47543))

(assert (=> b!56408 m!47523))

(assert (=> b!56408 m!47523))

(declare-fun m!47545 () Bool)

(assert (=> b!56408 m!47545))

(declare-fun m!47547 () Bool)

(assert (=> b!56416 m!47547))

(declare-fun m!47549 () Bool)

(assert (=> b!56416 m!47549))

(declare-fun m!47551 () Bool)

(assert (=> b!56413 m!47551))

(declare-fun m!47553 () Bool)

(assert (=> b!56413 m!47553))

(assert (=> b!56413 m!47523))

(declare-fun m!47555 () Bool)

(assert (=> b!56413 m!47555))

(assert (=> b!56413 m!47523))

(assert (=> b!56413 m!47523))

(declare-fun m!47557 () Bool)

(assert (=> b!56413 m!47557))

(declare-fun m!47559 () Bool)

(assert (=> mapNonEmpty!2790 m!47559))

(declare-fun m!47561 () Bool)

(assert (=> b!56421 m!47561))

(declare-fun m!47563 () Bool)

(assert (=> b!56421 m!47563))

(declare-fun m!47565 () Bool)

(assert (=> b!56421 m!47565))

(assert (=> b!56421 m!47523))

(declare-fun m!47567 () Bool)

(assert (=> b!56421 m!47567))

(assert (=> b!56421 m!47523))

(assert (=> b!56421 m!47563))

(assert (=> b!56421 m!47523))

(assert (=> b!56421 m!47565))

(declare-fun m!47569 () Bool)

(assert (=> b!56421 m!47569))

(assert (=> b!56421 m!47561))

(check-sat (not b!56405) (not b!56415) (not b!56407) b_and!3381 (not b!56419) tp_is_empty!2373 (not b!56406) (not b!56421) (not b_lambda!2487) (not b_next!1913) (not b!56416) (not b!56413) (not b_next!1915) (not mapNonEmpty!2789) (not b!56412) b_and!3383 (not mapNonEmpty!2790) (not b!56408) (not start!8386) (not b!56411))
(check-sat b_and!3381 b_and!3383 (not b_next!1913) (not b_next!1915))
