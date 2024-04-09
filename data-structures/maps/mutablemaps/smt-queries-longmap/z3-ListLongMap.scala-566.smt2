; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!15462 () Bool)

(assert start!15462)

(declare-fun b!153433 () Bool)

(declare-fun b_free!3185 () Bool)

(declare-fun b_next!3185 () Bool)

(assert (=> b!153433 (= b_free!3185 (not b_next!3185))))

(declare-fun tp!12073 () Bool)

(declare-fun b_and!9557 () Bool)

(assert (=> b!153433 (= tp!12073 b_and!9557)))

(declare-fun b!153426 () Bool)

(declare-fun b_free!3187 () Bool)

(declare-fun b_next!3187 () Bool)

(assert (=> b!153426 (= b_free!3187 (not b_next!3187))))

(declare-fun tp!12074 () Bool)

(declare-fun b_and!9559 () Bool)

(assert (=> b!153426 (= tp!12074 b_and!9559)))

(declare-fun b!153417 () Bool)

(declare-fun e!100169 () Bool)

(assert (=> b!153417 (= e!100169 false)))

(declare-datatypes ((Unit!4885 0))(
  ( (Unit!4886) )
))
(declare-fun lt!80662 () Unit!4885)

(declare-fun e!100178 () Unit!4885)

(assert (=> b!153417 (= lt!80662 e!100178)))

(declare-datatypes ((V!3659 0))(
  ( (V!3660 (val!1549 Int)) )
))
(declare-datatypes ((array!5066 0))(
  ( (array!5067 (arr!2392 (Array (_ BitVec 32) (_ BitVec 64))) (size!2669 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1161 0))(
  ( (ValueCellFull!1161 (v!3397 V!3659)) (EmptyCell!1161) )
))
(declare-datatypes ((array!5068 0))(
  ( (array!5069 (arr!2393 (Array (_ BitVec 32) ValueCell!1161)) (size!2670 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!1230 0))(
  ( (LongMapFixedSize!1231 (defaultEntry!3054 Int) (mask!7452 (_ BitVec 32)) (extraKeys!2795 (_ BitVec 32)) (zeroValue!2897 V!3659) (minValue!2897 V!3659) (_size!664 (_ BitVec 32)) (_keys!4827 array!5066) (_values!3037 array!5068) (_vacant!664 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!1008 0))(
  ( (Cell!1009 (v!3398 LongMapFixedSize!1230)) )
))
(declare-datatypes ((LongMap!1008 0))(
  ( (LongMap!1009 (underlying!515 Cell!1008)) )
))
(declare-fun thiss!992 () LongMap!1008)

(declare-fun c!29438 () Bool)

(declare-datatypes ((tuple2!2786 0))(
  ( (tuple2!2787 (_1!1403 (_ BitVec 64)) (_2!1403 V!3659)) )
))
(declare-datatypes ((List!1815 0))(
  ( (Nil!1812) (Cons!1811 (h!2420 tuple2!2786) (t!6609 List!1815)) )
))
(declare-datatypes ((ListLongMap!1803 0))(
  ( (ListLongMap!1804 (toList!917 List!1815)) )
))
(declare-fun lt!80665 () ListLongMap!1803)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun contains!959 (ListLongMap!1803 (_ BitVec 64)) Bool)

(assert (=> b!153417 (= c!29438 (contains!959 lt!80665 (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355)))))

(declare-fun newMap!16 () LongMapFixedSize!1230)

(declare-datatypes ((tuple2!2788 0))(
  ( (tuple2!2789 (_1!1404 Bool) (_2!1404 LongMapFixedSize!1230)) )
))
(declare-fun lt!80663 () tuple2!2788)

(declare-fun update!232 (LongMapFixedSize!1230 (_ BitVec 64) V!3659) tuple2!2788)

(declare-fun get!1601 (ValueCell!1161 V!3659) V!3659)

(declare-fun dynLambda!464 (Int (_ BitVec 64)) V!3659)

(assert (=> b!153417 (= lt!80663 (update!232 newMap!16 (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355) (get!1601 (select (arr!2393 (_values!3037 (v!3398 (underlying!515 thiss!992)))) from!355) (dynLambda!464 (defaultEntry!3054 (v!3398 (underlying!515 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!153418 () Bool)

(declare-fun e!100168 () Bool)

(declare-fun e!100171 () Bool)

(assert (=> b!153418 (= e!100168 e!100171)))

(declare-fun b!153419 () Bool)

(declare-fun e!100176 () Bool)

(declare-fun e!100174 () Bool)

(declare-fun mapRes!5113 () Bool)

(assert (=> b!153419 (= e!100176 (and e!100174 mapRes!5113))))

(declare-fun condMapEmpty!5113 () Bool)

(declare-fun mapDefault!5113 () ValueCell!1161)

(assert (=> b!153419 (= condMapEmpty!5113 (= (arr!2393 (_values!3037 newMap!16)) ((as const (Array (_ BitVec 32) ValueCell!1161)) mapDefault!5113)))))

(declare-fun b!153420 () Bool)

(declare-fun Unit!4887 () Unit!4885)

(assert (=> b!153420 (= e!100178 Unit!4887)))

(declare-fun b!153421 () Bool)

(declare-fun tp_is_empty!3009 () Bool)

(assert (=> b!153421 (= e!100174 tp_is_empty!3009)))

(declare-fun b!153422 () Bool)

(declare-fun e!100175 () Bool)

(assert (=> b!153422 (= e!100175 e!100168)))

(declare-fun b!153423 () Bool)

(declare-fun e!100179 () Bool)

(assert (=> b!153423 (= e!100179 tp_is_empty!3009)))

(declare-fun b!153424 () Bool)

(declare-fun e!100167 () Bool)

(assert (=> b!153424 (= e!100167 tp_is_empty!3009)))

(declare-fun b!153425 () Bool)

(declare-fun e!100177 () Bool)

(assert (=> b!153425 (= e!100177 tp_is_empty!3009)))

(declare-fun res!72540 () Bool)

(declare-fun e!100180 () Bool)

(assert (=> start!15462 (=> (not res!72540) (not e!100180))))

(declare-fun valid!600 (LongMap!1008) Bool)

(assert (=> start!15462 (= res!72540 (valid!600 thiss!992))))

(assert (=> start!15462 e!100180))

(assert (=> start!15462 e!100175))

(assert (=> start!15462 true))

(declare-fun e!100172 () Bool)

(assert (=> start!15462 e!100172))

(declare-fun array_inv!1483 (array!5066) Bool)

(declare-fun array_inv!1484 (array!5068) Bool)

(assert (=> b!153426 (= e!100172 (and tp!12074 tp_is_empty!3009 (array_inv!1483 (_keys!4827 newMap!16)) (array_inv!1484 (_values!3037 newMap!16)) e!100176))))

(declare-fun b!153427 () Bool)

(declare-fun e!100173 () Bool)

(declare-fun mapRes!5114 () Bool)

(assert (=> b!153427 (= e!100173 (and e!100179 mapRes!5114))))

(declare-fun condMapEmpty!5114 () Bool)

(declare-fun mapDefault!5114 () ValueCell!1161)

(assert (=> b!153427 (= condMapEmpty!5114 (= (arr!2393 (_values!3037 (v!3398 (underlying!515 thiss!992)))) ((as const (Array (_ BitVec 32) ValueCell!1161)) mapDefault!5114)))))

(declare-fun b!153428 () Bool)

(declare-fun res!72536 () Bool)

(assert (=> b!153428 (=> (not res!72536) (not e!100180))))

(declare-fun valid!601 (LongMapFixedSize!1230) Bool)

(assert (=> b!153428 (= res!72536 (valid!601 newMap!16))))

(declare-fun mapIsEmpty!5113 () Bool)

(assert (=> mapIsEmpty!5113 mapRes!5113))

(declare-fun b!153429 () Bool)

(declare-fun Unit!4888 () Unit!4885)

(assert (=> b!153429 (= e!100178 Unit!4888)))

(declare-fun lt!80667 () Unit!4885)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!164 (array!5066 array!5068 (_ BitVec 32) (_ BitVec 32) V!3659 V!3659 (_ BitVec 64) (_ BitVec 32) Int) Unit!4885)

(assert (=> b!153429 (= lt!80667 (lemmaListMapContainsThenArrayContainsFrom!164 (_keys!4827 (v!3398 (underlying!515 thiss!992))) (_values!3037 (v!3398 (underlying!515 thiss!992))) (mask!7452 (v!3398 (underlying!515 thiss!992))) (extraKeys!2795 (v!3398 (underlying!515 thiss!992))) (zeroValue!2897 (v!3398 (underlying!515 thiss!992))) (minValue!2897 (v!3398 (underlying!515 thiss!992))) (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3054 (v!3398 (underlying!515 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!5066 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!153429 (arrayContainsKey!0 (_keys!4827 (v!3398 (underlying!515 thiss!992))) (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!80666 () Unit!4885)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!5066 (_ BitVec 32) (_ BitVec 32)) Unit!4885)

(assert (=> b!153429 (= lt!80666 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4827 (v!3398 (underlying!515 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1816 0))(
  ( (Nil!1813) (Cons!1812 (h!2421 (_ BitVec 64)) (t!6610 List!1816)) )
))
(declare-fun arrayNoDuplicates!0 (array!5066 (_ BitVec 32) List!1816) Bool)

(assert (=> b!153429 (arrayNoDuplicates!0 (_keys!4827 (v!3398 (underlying!515 thiss!992))) from!355 Nil!1813)))

(declare-fun lt!80668 () Unit!4885)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!5066 (_ BitVec 32) (_ BitVec 64) List!1816) Unit!4885)

(assert (=> b!153429 (= lt!80668 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4827 (v!3398 (underlying!515 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355) (Cons!1812 (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355) Nil!1813)))))

(assert (=> b!153429 false))

(declare-fun mapNonEmpty!5113 () Bool)

(declare-fun tp!12072 () Bool)

(assert (=> mapNonEmpty!5113 (= mapRes!5114 (and tp!12072 e!100167))))

(declare-fun mapKey!5113 () (_ BitVec 32))

(declare-fun mapRest!5114 () (Array (_ BitVec 32) ValueCell!1161))

(declare-fun mapValue!5113 () ValueCell!1161)

(assert (=> mapNonEmpty!5113 (= (arr!2393 (_values!3037 (v!3398 (underlying!515 thiss!992)))) (store mapRest!5114 mapKey!5113 mapValue!5113))))

(declare-fun b!153430 () Bool)

(declare-fun res!72538 () Bool)

(assert (=> b!153430 (=> (not res!72538) (not e!100180))))

(assert (=> b!153430 (= res!72538 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2669 (_keys!4827 (v!3398 (underlying!515 thiss!992)))))))))

(declare-fun b!153431 () Bool)

(assert (=> b!153431 (= e!100180 e!100169)))

(declare-fun res!72539 () Bool)

(assert (=> b!153431 (=> (not res!72539) (not e!100169))))

(declare-fun lt!80664 () ListLongMap!1803)

(assert (=> b!153431 (= res!72539 (and (= lt!80664 lt!80665) (not (= (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2392 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1488 (LongMapFixedSize!1230) ListLongMap!1803)

(assert (=> b!153431 (= lt!80665 (map!1488 newMap!16))))

(declare-fun getCurrentListMap!579 (array!5066 array!5068 (_ BitVec 32) (_ BitVec 32) V!3659 V!3659 (_ BitVec 32) Int) ListLongMap!1803)

(assert (=> b!153431 (= lt!80664 (getCurrentListMap!579 (_keys!4827 (v!3398 (underlying!515 thiss!992))) (_values!3037 (v!3398 (underlying!515 thiss!992))) (mask!7452 (v!3398 (underlying!515 thiss!992))) (extraKeys!2795 (v!3398 (underlying!515 thiss!992))) (zeroValue!2897 (v!3398 (underlying!515 thiss!992))) (minValue!2897 (v!3398 (underlying!515 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!3054 (v!3398 (underlying!515 thiss!992)))))))

(declare-fun b!153432 () Bool)

(declare-fun res!72537 () Bool)

(assert (=> b!153432 (=> (not res!72537) (not e!100180))))

(assert (=> b!153432 (= res!72537 (bvsge (bvadd #b00000000000000000000000000000001 (mask!7452 newMap!16)) (_size!664 (v!3398 (underlying!515 thiss!992)))))))

(assert (=> b!153433 (= e!100171 (and tp!12073 tp_is_empty!3009 (array_inv!1483 (_keys!4827 (v!3398 (underlying!515 thiss!992)))) (array_inv!1484 (_values!3037 (v!3398 (underlying!515 thiss!992)))) e!100173))))

(declare-fun mapIsEmpty!5114 () Bool)

(assert (=> mapIsEmpty!5114 mapRes!5114))

(declare-fun mapNonEmpty!5114 () Bool)

(declare-fun tp!12071 () Bool)

(assert (=> mapNonEmpty!5114 (= mapRes!5113 (and tp!12071 e!100177))))

(declare-fun mapRest!5113 () (Array (_ BitVec 32) ValueCell!1161))

(declare-fun mapKey!5114 () (_ BitVec 32))

(declare-fun mapValue!5114 () ValueCell!1161)

(assert (=> mapNonEmpty!5114 (= (arr!2393 (_values!3037 newMap!16)) (store mapRest!5113 mapKey!5114 mapValue!5114))))

(assert (= (and start!15462 res!72540) b!153430))

(assert (= (and b!153430 res!72538) b!153428))

(assert (= (and b!153428 res!72536) b!153432))

(assert (= (and b!153432 res!72537) b!153431))

(assert (= (and b!153431 res!72539) b!153417))

(assert (= (and b!153417 c!29438) b!153429))

(assert (= (and b!153417 (not c!29438)) b!153420))

(assert (= (and b!153427 condMapEmpty!5114) mapIsEmpty!5114))

(assert (= (and b!153427 (not condMapEmpty!5114)) mapNonEmpty!5113))

(get-info :version)

(assert (= (and mapNonEmpty!5113 ((_ is ValueCellFull!1161) mapValue!5113)) b!153424))

(assert (= (and b!153427 ((_ is ValueCellFull!1161) mapDefault!5114)) b!153423))

(assert (= b!153433 b!153427))

(assert (= b!153418 b!153433))

(assert (= b!153422 b!153418))

(assert (= start!15462 b!153422))

(assert (= (and b!153419 condMapEmpty!5113) mapIsEmpty!5113))

(assert (= (and b!153419 (not condMapEmpty!5113)) mapNonEmpty!5114))

(assert (= (and mapNonEmpty!5114 ((_ is ValueCellFull!1161) mapValue!5114)) b!153425))

(assert (= (and b!153419 ((_ is ValueCellFull!1161) mapDefault!5113)) b!153421))

(assert (= b!153426 b!153419))

(assert (= start!15462 b!153426))

(declare-fun b_lambda!6861 () Bool)

(assert (=> (not b_lambda!6861) (not b!153417)))

(declare-fun t!6606 () Bool)

(declare-fun tb!2753 () Bool)

(assert (=> (and b!153433 (= (defaultEntry!3054 (v!3398 (underlying!515 thiss!992))) (defaultEntry!3054 (v!3398 (underlying!515 thiss!992)))) t!6606) tb!2753))

(declare-fun result!4477 () Bool)

(assert (=> tb!2753 (= result!4477 tp_is_empty!3009)))

(assert (=> b!153417 t!6606))

(declare-fun b_and!9561 () Bool)

(assert (= b_and!9557 (and (=> t!6606 result!4477) b_and!9561)))

(declare-fun tb!2755 () Bool)

(declare-fun t!6608 () Bool)

(assert (=> (and b!153426 (= (defaultEntry!3054 newMap!16) (defaultEntry!3054 (v!3398 (underlying!515 thiss!992)))) t!6608) tb!2755))

(declare-fun result!4481 () Bool)

(assert (= result!4481 result!4477))

(assert (=> b!153417 t!6608))

(declare-fun b_and!9563 () Bool)

(assert (= b_and!9559 (and (=> t!6608 result!4481) b_and!9563)))

(declare-fun m!187353 () Bool)

(assert (=> start!15462 m!187353))

(declare-fun m!187355 () Bool)

(assert (=> b!153431 m!187355))

(declare-fun m!187357 () Bool)

(assert (=> b!153431 m!187357))

(declare-fun m!187359 () Bool)

(assert (=> b!153431 m!187359))

(declare-fun m!187361 () Bool)

(assert (=> mapNonEmpty!5114 m!187361))

(declare-fun m!187363 () Bool)

(assert (=> b!153426 m!187363))

(declare-fun m!187365 () Bool)

(assert (=> b!153426 m!187365))

(declare-fun m!187367 () Bool)

(assert (=> mapNonEmpty!5113 m!187367))

(declare-fun m!187369 () Bool)

(assert (=> b!153417 m!187369))

(declare-fun m!187371 () Bool)

(assert (=> b!153417 m!187371))

(declare-fun m!187373 () Bool)

(assert (=> b!153417 m!187373))

(assert (=> b!153417 m!187355))

(assert (=> b!153417 m!187355))

(declare-fun m!187375 () Bool)

(assert (=> b!153417 m!187375))

(assert (=> b!153417 m!187371))

(assert (=> b!153417 m!187355))

(assert (=> b!153417 m!187373))

(declare-fun m!187377 () Bool)

(assert (=> b!153417 m!187377))

(assert (=> b!153417 m!187369))

(declare-fun m!187379 () Bool)

(assert (=> b!153429 m!187379))

(declare-fun m!187381 () Bool)

(assert (=> b!153429 m!187381))

(assert (=> b!153429 m!187355))

(declare-fun m!187383 () Bool)

(assert (=> b!153429 m!187383))

(assert (=> b!153429 m!187355))

(assert (=> b!153429 m!187355))

(declare-fun m!187385 () Bool)

(assert (=> b!153429 m!187385))

(assert (=> b!153429 m!187355))

(declare-fun m!187387 () Bool)

(assert (=> b!153429 m!187387))

(declare-fun m!187389 () Bool)

(assert (=> b!153428 m!187389))

(declare-fun m!187391 () Bool)

(assert (=> b!153433 m!187391))

(declare-fun m!187393 () Bool)

(assert (=> b!153433 m!187393))

(check-sat (not b!153429) (not b!153428) tp_is_empty!3009 (not b!153431) (not b_lambda!6861) (not b!153426) (not b!153433) (not b_next!3187) b_and!9561 (not mapNonEmpty!5114) (not mapNonEmpty!5113) (not b!153417) b_and!9563 (not b_next!3185) (not start!15462))
(check-sat b_and!9561 b_and!9563 (not b_next!3185) (not b_next!3187))
