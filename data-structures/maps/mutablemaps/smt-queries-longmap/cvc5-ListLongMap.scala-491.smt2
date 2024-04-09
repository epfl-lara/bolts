; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11072 () Bool)

(assert start!11072)

(declare-fun b!89984 () Bool)

(declare-fun b_free!2281 () Bool)

(declare-fun b_next!2281 () Bool)

(assert (=> b!89984 (= b_free!2281 (not b_next!2281))))

(declare-fun tp!9090 () Bool)

(declare-fun b_and!5401 () Bool)

(assert (=> b!89984 (= tp!9090 b_and!5401)))

(declare-fun b!89987 () Bool)

(declare-fun b_free!2283 () Bool)

(declare-fun b_next!2283 () Bool)

(assert (=> b!89987 (= b_free!2283 (not b_next!2283))))

(declare-fun tp!9087 () Bool)

(declare-fun b_and!5403 () Bool)

(assert (=> b!89987 (= tp!9087 b_and!5403)))

(declare-fun b!89982 () Bool)

(declare-fun e!58606 () Bool)

(declare-fun e!58596 () Bool)

(assert (=> b!89982 (= e!58606 e!58596)))

(declare-fun b!89983 () Bool)

(declare-fun e!58594 () Bool)

(declare-fun tp_is_empty!2557 () Bool)

(assert (=> b!89983 (= e!58594 tp_is_empty!2557)))

(declare-datatypes ((V!3057 0))(
  ( (V!3058 (val!1323 Int)) )
))
(declare-datatypes ((array!4078 0))(
  ( (array!4079 (arr!1940 (Array (_ BitVec 32) (_ BitVec 64))) (size!2187 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!935 0))(
  ( (ValueCellFull!935 (v!2692 V!3057)) (EmptyCell!935) )
))
(declare-datatypes ((array!4080 0))(
  ( (array!4081 (arr!1941 (Array (_ BitVec 32) ValueCell!935)) (size!2188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!778 0))(
  ( (LongMapFixedSize!779 (defaultEntry!2387 Int) (mask!6439 (_ BitVec 32)) (extraKeys!2218 (_ BitVec 32)) (zeroValue!2275 V!3057) (minValue!2275 V!3057) (_size!438 (_ BitVec 32)) (_keys!4067 array!4078) (_values!2370 array!4080) (_vacant!438 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!584 0))(
  ( (Cell!585 (v!2693 LongMapFixedSize!778)) )
))
(declare-datatypes ((LongMap!584 0))(
  ( (LongMap!585 (underlying!303 Cell!584)) )
))
(declare-fun thiss!992 () LongMap!584)

(declare-fun e!58597 () Bool)

(declare-fun e!58595 () Bool)

(declare-fun array_inv!1163 (array!4078) Bool)

(declare-fun array_inv!1164 (array!4080) Bool)

(assert (=> b!89984 (= e!58595 (and tp!9090 tp_is_empty!2557 (array_inv!1163 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) (array_inv!1164 (_values!2370 (v!2693 (underlying!303 thiss!992)))) e!58597))))

(declare-fun b!89985 () Bool)

(declare-fun e!58592 () Bool)

(assert (=> b!89985 (= e!58592 tp_is_empty!2557)))

(declare-fun mapIsEmpty!3485 () Bool)

(declare-fun mapRes!3485 () Bool)

(assert (=> mapIsEmpty!3485 mapRes!3485))

(declare-fun newMap!16 () LongMapFixedSize!778)

(declare-fun e!58598 () Bool)

(declare-fun e!58608 () Bool)

(assert (=> b!89987 (= e!58608 (and tp!9087 tp_is_empty!2557 (array_inv!1163 (_keys!4067 newMap!16)) (array_inv!1164 (_values!2370 newMap!16)) e!58598))))

(declare-fun b!89988 () Bool)

(declare-datatypes ((Unit!2695 0))(
  ( (Unit!2696) )
))
(declare-fun e!58605 () Unit!2695)

(declare-fun Unit!2697 () Unit!2695)

(assert (=> b!89988 (= e!58605 Unit!2697)))

(declare-fun lt!43318 () Unit!2695)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!78 (array!4078 array!4080 (_ BitVec 32) (_ BitVec 32) V!3057 V!3057 (_ BitVec 64) (_ BitVec 32) Int) Unit!2695)

(assert (=> b!89988 (= lt!43318 (lemmaListMapContainsThenArrayContainsFrom!78 (_keys!4067 (v!2693 (underlying!303 thiss!992))) (_values!2370 (v!2693 (underlying!303 thiss!992))) (mask!6439 (v!2693 (underlying!303 thiss!992))) (extraKeys!2218 (v!2693 (underlying!303 thiss!992))) (zeroValue!2275 (v!2693 (underlying!303 thiss!992))) (minValue!2275 (v!2693 (underlying!303 thiss!992))) (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2387 (v!2693 (underlying!303 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4078 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!89988 (arrayContainsKey!0 (_keys!4067 (v!2693 (underlying!303 thiss!992))) (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!43310 () Unit!2695)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4078 (_ BitVec 32) (_ BitVec 32)) Unit!2695)

(assert (=> b!89988 (= lt!43310 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4067 (v!2693 (underlying!303 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1565 0))(
  ( (Nil!1562) (Cons!1561 (h!2153 (_ BitVec 64)) (t!5351 List!1565)) )
))
(declare-fun arrayNoDuplicates!0 (array!4078 (_ BitVec 32) List!1565) Bool)

(assert (=> b!89988 (arrayNoDuplicates!0 (_keys!4067 (v!2693 (underlying!303 thiss!992))) from!355 Nil!1562)))

(declare-fun lt!43314 () Unit!2695)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4078 (_ BitVec 32) (_ BitVec 64) List!1565) Unit!2695)

(assert (=> b!89988 (= lt!43314 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4067 (v!2693 (underlying!303 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) (Cons!1561 (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) Nil!1562)))))

(assert (=> b!89988 false))

(declare-fun b!89989 () Bool)

(declare-fun e!58603 () Bool)

(assert (=> b!89989 (= e!58603 tp_is_empty!2557)))

(declare-fun b!89990 () Bool)

(declare-fun e!58607 () Bool)

(declare-datatypes ((tuple2!2254 0))(
  ( (tuple2!2255 (_1!1137 Bool) (_2!1137 LongMapFixedSize!778)) )
))
(declare-fun lt!43309 () tuple2!2254)

(declare-fun valid!341 (LongMapFixedSize!778) Bool)

(assert (=> b!89990 (= e!58607 (not (valid!341 (_2!1137 lt!43309))))))

(declare-datatypes ((tuple2!2256 0))(
  ( (tuple2!2257 (_1!1138 (_ BitVec 64)) (_2!1138 V!3057)) )
))
(declare-datatypes ((List!1566 0))(
  ( (Nil!1563) (Cons!1562 (h!2154 tuple2!2256) (t!5352 List!1566)) )
))
(declare-datatypes ((ListLongMap!1499 0))(
  ( (ListLongMap!1500 (toList!765 List!1566)) )
))
(declare-fun lt!43317 () ListLongMap!1499)

(declare-fun lt!43304 () ListLongMap!1499)

(declare-fun lt!43315 () tuple2!2256)

(declare-fun lt!43321 () tuple2!2256)

(declare-fun +!122 (ListLongMap!1499 tuple2!2256) ListLongMap!1499)

(assert (=> b!89990 (= (+!122 lt!43317 lt!43321) (+!122 (+!122 lt!43304 lt!43321) lt!43315))))

(assert (=> b!89990 (= lt!43321 (tuple2!2257 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2275 (v!2693 (underlying!303 thiss!992)))))))

(declare-fun lt!43311 () Unit!2695)

(declare-fun lt!43308 () V!3057)

(declare-fun addCommutativeForDiffKeys!41 (ListLongMap!1499 (_ BitVec 64) V!3057 (_ BitVec 64) V!3057) Unit!2695)

(assert (=> b!89990 (= lt!43311 (addCommutativeForDiffKeys!41 lt!43304 (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) lt!43308 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2275 (v!2693 (underlying!303 thiss!992)))))))

(declare-fun lt!43319 () ListLongMap!1499)

(assert (=> b!89990 (= lt!43319 lt!43317)))

(assert (=> b!89990 (= lt!43317 (+!122 lt!43304 lt!43315))))

(declare-fun lt!43307 () ListLongMap!1499)

(declare-fun lt!43320 () tuple2!2256)

(assert (=> b!89990 (= lt!43319 (+!122 lt!43307 lt!43320))))

(declare-fun lt!43306 () ListLongMap!1499)

(assert (=> b!89990 (= lt!43304 (+!122 lt!43306 lt!43320))))

(assert (=> b!89990 (= lt!43320 (tuple2!2257 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2275 (v!2693 (underlying!303 thiss!992)))))))

(assert (=> b!89990 (= lt!43307 (+!122 lt!43306 lt!43315))))

(assert (=> b!89990 (= lt!43315 (tuple2!2257 (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) lt!43308))))

(declare-fun lt!43305 () Unit!2695)

(assert (=> b!89990 (= lt!43305 (addCommutativeForDiffKeys!41 lt!43306 (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) lt!43308 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2275 (v!2693 (underlying!303 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!86 (array!4078 array!4080 (_ BitVec 32) (_ BitVec 32) V!3057 V!3057 (_ BitVec 32) Int) ListLongMap!1499)

(assert (=> b!89990 (= lt!43306 (getCurrentListMapNoExtraKeys!86 (_keys!4067 (v!2693 (underlying!303 thiss!992))) (_values!2370 (v!2693 (underlying!303 thiss!992))) (mask!6439 (v!2693 (underlying!303 thiss!992))) (extraKeys!2218 (v!2693 (underlying!303 thiss!992))) (zeroValue!2275 (v!2693 (underlying!303 thiss!992))) (minValue!2275 (v!2693 (underlying!303 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2387 (v!2693 (underlying!303 thiss!992)))))))

(declare-fun mapIsEmpty!3486 () Bool)

(declare-fun mapRes!3486 () Bool)

(assert (=> mapIsEmpty!3486 mapRes!3486))

(declare-fun b!89991 () Bool)

(declare-fun e!58604 () Bool)

(declare-fun e!58601 () Bool)

(assert (=> b!89991 (= e!58604 e!58601)))

(declare-fun res!45958 () Bool)

(assert (=> b!89991 (=> (not res!45958) (not e!58601))))

(declare-fun lt!43313 () ListLongMap!1499)

(declare-fun lt!43316 () ListLongMap!1499)

(assert (=> b!89991 (= res!45958 (= lt!43313 lt!43316))))

(declare-fun map!1207 (LongMapFixedSize!778) ListLongMap!1499)

(assert (=> b!89991 (= lt!43316 (map!1207 newMap!16))))

(declare-fun getCurrentListMap!447 (array!4078 array!4080 (_ BitVec 32) (_ BitVec 32) V!3057 V!3057 (_ BitVec 32) Int) ListLongMap!1499)

(assert (=> b!89991 (= lt!43313 (getCurrentListMap!447 (_keys!4067 (v!2693 (underlying!303 thiss!992))) (_values!2370 (v!2693 (underlying!303 thiss!992))) (mask!6439 (v!2693 (underlying!303 thiss!992))) (extraKeys!2218 (v!2693 (underlying!303 thiss!992))) (zeroValue!2275 (v!2693 (underlying!303 thiss!992))) (minValue!2275 (v!2693 (underlying!303 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2387 (v!2693 (underlying!303 thiss!992)))))))

(declare-fun b!89992 () Bool)

(declare-fun res!45962 () Bool)

(assert (=> b!89992 (=> (not res!45962) (not e!58604))))

(assert (=> b!89992 (= res!45962 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2187 (_keys!4067 (v!2693 (underlying!303 thiss!992)))))))))

(declare-fun mapNonEmpty!3485 () Bool)

(declare-fun tp!9089 () Bool)

(declare-fun e!58593 () Bool)

(assert (=> mapNonEmpty!3485 (= mapRes!3486 (and tp!9089 e!58593))))

(declare-fun mapKey!3486 () (_ BitVec 32))

(declare-fun mapRest!3485 () (Array (_ BitVec 32) ValueCell!935))

(declare-fun mapValue!3485 () ValueCell!935)

(assert (=> mapNonEmpty!3485 (= (arr!1941 (_values!2370 (v!2693 (underlying!303 thiss!992)))) (store mapRest!3485 mapKey!3486 mapValue!3485))))

(declare-fun b!89993 () Bool)

(assert (=> b!89993 (= e!58596 e!58595)))

(declare-fun mapNonEmpty!3486 () Bool)

(declare-fun tp!9088 () Bool)

(assert (=> mapNonEmpty!3486 (= mapRes!3485 (and tp!9088 e!58592))))

(declare-fun mapRest!3486 () (Array (_ BitVec 32) ValueCell!935))

(declare-fun mapValue!3486 () ValueCell!935)

(declare-fun mapKey!3485 () (_ BitVec 32))

(assert (=> mapNonEmpty!3486 (= (arr!1941 (_values!2370 newMap!16)) (store mapRest!3486 mapKey!3485 mapValue!3486))))

(declare-fun b!89994 () Bool)

(declare-fun res!45957 () Bool)

(assert (=> b!89994 (=> (not res!45957) (not e!58604))))

(assert (=> b!89994 (= res!45957 (valid!341 newMap!16))))

(declare-fun b!89995 () Bool)

(declare-fun e!58602 () Bool)

(assert (=> b!89995 (= e!58601 e!58602)))

(declare-fun res!45961 () Bool)

(assert (=> b!89995 (=> (not res!45961) (not e!58602))))

(assert (=> b!89995 (= res!45961 (and (not (= (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1940 (_keys!4067 (v!2693 (underlying!303 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun get!1235 (ValueCell!935 V!3057) V!3057)

(declare-fun dynLambda!358 (Int (_ BitVec 64)) V!3057)

(assert (=> b!89995 (= lt!43308 (get!1235 (select (arr!1941 (_values!2370 (v!2693 (underlying!303 thiss!992)))) from!355) (dynLambda!358 (defaultEntry!2387 (v!2693 (underlying!303 thiss!992))) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!89986 () Bool)

(declare-fun res!45963 () Bool)

(assert (=> b!89986 (=> (not res!45963) (not e!58604))))

(assert (=> b!89986 (= res!45963 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6439 newMap!16)) (_size!438 (v!2693 (underlying!303 thiss!992)))))))

(declare-fun res!45960 () Bool)

(assert (=> start!11072 (=> (not res!45960) (not e!58604))))

(declare-fun valid!342 (LongMap!584) Bool)

(assert (=> start!11072 (= res!45960 (valid!342 thiss!992))))

(assert (=> start!11072 e!58604))

(assert (=> start!11072 e!58606))

(assert (=> start!11072 true))

(assert (=> start!11072 e!58608))

(declare-fun b!89996 () Bool)

(assert (=> b!89996 (= e!58598 (and e!58594 mapRes!3485))))

(declare-fun condMapEmpty!3486 () Bool)

(declare-fun mapDefault!3486 () ValueCell!935)

