; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!8886 () Bool)

(assert start!8886)

(declare-fun b!62298 () Bool)

(declare-fun b_free!2001 () Bool)

(declare-fun b_next!2001 () Bool)

(assert (=> b!62298 (= b_free!2001 (not b_next!2001))))

(declare-fun tp!8134 () Bool)

(declare-fun b_and!3809 () Bool)

(assert (=> b!62298 (= tp!8134 b_and!3809)))

(declare-fun b!62292 () Bool)

(declare-fun b_free!2003 () Bool)

(declare-fun b_next!2003 () Bool)

(assert (=> b!62292 (= b_free!2003 (not b_next!2003))))

(declare-fun tp!8131 () Bool)

(declare-fun b_and!3811 () Bool)

(assert (=> b!62292 (= tp!8131 b_and!3811)))

(declare-fun mapNonEmpty!2949 () Bool)

(declare-fun mapRes!2950 () Bool)

(declare-fun tp!8132 () Bool)

(declare-fun e!40919 () Bool)

(assert (=> mapNonEmpty!2949 (= mapRes!2950 (and tp!8132 e!40919))))

(declare-datatypes ((V!2869 0))(
  ( (V!2870 (val!1253 Int)) )
))
(declare-datatypes ((array!3764 0))(
  ( (array!3765 (arr!1800 (Array (_ BitVec 32) (_ BitVec 64))) (size!2032 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!865 0))(
  ( (ValueCellFull!865 (v!2420 V!2869)) (EmptyCell!865) )
))
(declare-datatypes ((array!3766 0))(
  ( (array!3767 (arr!1801 (Array (_ BitVec 32) ValueCell!865)) (size!2033 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!638 0))(
  ( (LongMapFixedSize!639 (defaultEntry!2089 Int) (mask!5995 (_ BitVec 32)) (extraKeys!1968 (_ BitVec 32)) (zeroValue!2001 V!2869) (minValue!2001 V!2869) (_size!368 (_ BitVec 32)) (_keys!3721 array!3764) (_values!2072 array!3766) (_vacant!368 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!448 0))(
  ( (Cell!449 (v!2421 LongMapFixedSize!638)) )
))
(declare-datatypes ((LongMap!448 0))(
  ( (LongMap!449 (underlying!235 Cell!448)) )
))
(declare-fun thiss!992 () LongMap!448)

(declare-fun mapValue!2949 () ValueCell!865)

(declare-fun mapRest!2950 () (Array (_ BitVec 32) ValueCell!865))

(declare-fun mapKey!2950 () (_ BitVec 32))

(assert (=> mapNonEmpty!2949 (= (arr!1801 (_values!2072 (v!2421 (underlying!235 thiss!992)))) (store mapRest!2950 mapKey!2950 mapValue!2949))))

(declare-fun b!62285 () Bool)

(declare-fun e!40916 () Bool)

(declare-fun tp_is_empty!2417 () Bool)

(assert (=> b!62285 (= e!40916 tp_is_empty!2417)))

(declare-fun b!62286 () Bool)

(declare-fun res!34198 () Bool)

(declare-fun e!40925 () Bool)

(assert (=> b!62286 (=> (not res!34198) (not e!40925))))

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!62286 (= res!34198 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2032 (_keys!3721 (v!2421 (underlying!235 thiss!992)))))))))

(declare-fun b!62287 () Bool)

(declare-datatypes ((Unit!1693 0))(
  ( (Unit!1694) )
))
(declare-fun e!40928 () Unit!1693)

(declare-fun Unit!1695 () Unit!1693)

(assert (=> b!62287 (= e!40928 Unit!1695)))

(declare-fun lt!25863 () Unit!1693)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!33 (array!3764 array!3766 (_ BitVec 32) (_ BitVec 32) V!2869 V!2869 (_ BitVec 64) (_ BitVec 32) Int) Unit!1693)

(assert (=> b!62287 (= lt!25863 (lemmaListMapContainsThenArrayContainsFrom!33 (_keys!3721 (v!2421 (underlying!235 thiss!992))) (_values!2072 (v!2421 (underlying!235 thiss!992))) (mask!5995 (v!2421 (underlying!235 thiss!992))) (extraKeys!1968 (v!2421 (underlying!235 thiss!992))) (zeroValue!2001 (v!2421 (underlying!235 thiss!992))) (minValue!2001 (v!2421 (underlying!235 thiss!992))) (select (arr!1800 (_keys!3721 (v!2421 (underlying!235 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2089 (v!2421 (underlying!235 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3764 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!62287 (arrayContainsKey!0 (_keys!3721 (v!2421 (underlying!235 thiss!992))) (select (arr!1800 (_keys!3721 (v!2421 (underlying!235 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!25866 () Unit!1693)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3764 (_ BitVec 32) (_ BitVec 32)) Unit!1693)

(assert (=> b!62287 (= lt!25866 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3721 (v!2421 (underlying!235 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1465 0))(
  ( (Nil!1462) (Cons!1461 (h!2044 (_ BitVec 64)) (t!4867 List!1465)) )
))
(declare-fun arrayNoDuplicates!0 (array!3764 (_ BitVec 32) List!1465) Bool)

(assert (=> b!62287 (arrayNoDuplicates!0 (_keys!3721 (v!2421 (underlying!235 thiss!992))) from!355 Nil!1462)))

(declare-fun lt!25864 () Unit!1693)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3764 (_ BitVec 32) (_ BitVec 64) List!1465) Unit!1693)

(assert (=> b!62287 (= lt!25864 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3721 (v!2421 (underlying!235 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1800 (_keys!3721 (v!2421 (underlying!235 thiss!992)))) from!355) (Cons!1461 (select (arr!1800 (_keys!3721 (v!2421 (underlying!235 thiss!992)))) from!355) Nil!1462)))))

(assert (=> b!62287 false))

(declare-fun b!62288 () Bool)

(declare-fun e!40927 () Bool)

(assert (=> b!62288 (= e!40927 tp_is_empty!2417)))

(declare-fun b!62289 () Bool)

(declare-fun res!34193 () Bool)

(assert (=> b!62289 (=> (not res!34193) (not e!40925))))

(declare-fun newMap!16 () LongMapFixedSize!638)

(assert (=> b!62289 (= res!34193 (bvsge (bvadd #b00000000000000000000000000000001 (mask!5995 newMap!16)) (_size!368 (v!2421 (underlying!235 thiss!992)))))))

(declare-fun b!62290 () Bool)

(declare-fun res!34192 () Bool)

(declare-fun e!40918 () Bool)

(assert (=> b!62290 (=> (not res!34192) (not e!40918))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!62290 (= res!34192 (validMask!0 (mask!5995 (v!2421 (underlying!235 thiss!992)))))))

(declare-fun b!62291 () Bool)

(declare-fun e!40921 () Bool)

(declare-fun e!40917 () Bool)

(assert (=> b!62291 (= e!40921 e!40917)))

(declare-fun b!62293 () Bool)

(declare-fun e!40915 () Bool)

(assert (=> b!62293 (= e!40915 e!40918)))

(declare-fun res!34195 () Bool)

(assert (=> b!62293 (=> (not res!34195) (not e!40918))))

(declare-datatypes ((tuple2!2070 0))(
  ( (tuple2!2071 (_1!1045 Bool) (_2!1045 LongMapFixedSize!638)) )
))
(declare-fun lt!25862 () tuple2!2070)

(assert (=> b!62293 (= res!34195 (and (_1!1045 lt!25862) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!25868 () Unit!1693)

(assert (=> b!62293 (= lt!25868 e!40928)))

(declare-datatypes ((tuple2!2072 0))(
  ( (tuple2!2073 (_1!1046 (_ BitVec 64)) (_2!1046 V!2869)) )
))
(declare-datatypes ((List!1466 0))(
  ( (Nil!1463) (Cons!1462 (h!2045 tuple2!2072) (t!4868 List!1466)) )
))
(declare-datatypes ((ListLongMap!1391 0))(
  ( (ListLongMap!1392 (toList!711 List!1466)) )
))
(declare-fun lt!25865 () ListLongMap!1391)

(declare-fun c!8279 () Bool)

(declare-fun contains!701 (ListLongMap!1391 (_ BitVec 64)) Bool)

(assert (=> b!62293 (= c!8279 (contains!701 lt!25865 (select (arr!1800 (_keys!3721 (v!2421 (underlying!235 thiss!992)))) from!355)))))

(declare-fun update!89 (LongMapFixedSize!638 (_ BitVec 64) V!2869) tuple2!2070)

(declare-fun get!1097 (ValueCell!865 V!2869) V!2869)

(declare-fun dynLambda!317 (Int (_ BitVec 64)) V!2869)

(assert (=> b!62293 (= lt!25862 (update!89 newMap!16 (select (arr!1800 (_keys!3721 (v!2421 (underlying!235 thiss!992)))) from!355) (get!1097 (select (arr!1801 (_values!2072 (v!2421 (underlying!235 thiss!992)))) from!355) (dynLambda!317 (defaultEntry!2089 (v!2421 (underlying!235 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!62294 () Bool)

(declare-fun e!40922 () Bool)

(assert (=> b!62294 (= e!40922 tp_is_empty!2417)))

(declare-fun b!62295 () Bool)

(declare-fun e!40926 () Bool)

(assert (=> b!62295 (= e!40926 (and e!40927 mapRes!2950))))

(declare-fun condMapEmpty!2950 () Bool)

(declare-fun mapDefault!2949 () ValueCell!865)

