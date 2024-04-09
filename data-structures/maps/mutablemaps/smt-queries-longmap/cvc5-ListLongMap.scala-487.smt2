; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10688 () Bool)

(assert start!10688)

(declare-fun b!85194 () Bool)

(declare-fun b_free!2233 () Bool)

(declare-fun b_next!2233 () Bool)

(assert (=> b!85194 (= b_free!2233 (not b_next!2233))))

(declare-fun tp!8926 () Bool)

(declare-fun b_and!5145 () Bool)

(assert (=> b!85194 (= tp!8926 b_and!5145)))

(declare-fun b!85179 () Bool)

(declare-fun b_free!2235 () Bool)

(declare-fun b_next!2235 () Bool)

(assert (=> b!85179 (= b_free!2235 (not b_next!2235))))

(declare-fun tp!8924 () Bool)

(declare-fun b_and!5147 () Bool)

(assert (=> b!85179 (= tp!8924 b_and!5147)))

(declare-fun mapIsEmpty!3393 () Bool)

(declare-fun mapRes!3393 () Bool)

(assert (=> mapIsEmpty!3393 mapRes!3393))

(declare-fun e!55561 () Bool)

(declare-fun tp_is_empty!2533 () Bool)

(declare-datatypes ((V!3025 0))(
  ( (V!3026 (val!1311 Int)) )
))
(declare-datatypes ((array!4024 0))(
  ( (array!4025 (arr!1916 (Array (_ BitVec 32) (_ BitVec 64))) (size!2160 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!923 0))(
  ( (ValueCellFull!923 (v!2645 V!3025)) (EmptyCell!923) )
))
(declare-datatypes ((array!4026 0))(
  ( (array!4027 (arr!1917 (Array (_ BitVec 32) ValueCell!923)) (size!2161 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!754 0))(
  ( (LongMapFixedSize!755 (defaultEntry!2337 Int) (mask!6365 (_ BitVec 32)) (extraKeys!2176 (_ BitVec 32)) (zeroValue!2229 V!3025) (minValue!2229 V!3025) (_size!426 (_ BitVec 32)) (_keys!4009 array!4024) (_values!2320 array!4026) (_vacant!426 (_ BitVec 32))) )
))
(declare-fun newMap!16 () LongMapFixedSize!754)

(declare-fun e!55559 () Bool)

(declare-fun array_inv!1147 (array!4024) Bool)

(declare-fun array_inv!1148 (array!4026) Bool)

(assert (=> b!85179 (= e!55561 (and tp!8924 tp_is_empty!2533 (array_inv!1147 (_keys!4009 newMap!16)) (array_inv!1148 (_values!2320 newMap!16)) e!55559))))

(declare-fun b!85180 () Bool)

(declare-datatypes ((Unit!2529 0))(
  ( (Unit!2530) )
))
(declare-fun e!55556 () Unit!2529)

(declare-fun Unit!2531 () Unit!2529)

(assert (=> b!85180 (= e!55556 Unit!2531)))

(declare-fun b!85181 () Bool)

(declare-fun e!55565 () Bool)

(declare-fun e!55553 () Bool)

(assert (=> b!85181 (= e!55565 e!55553)))

(declare-fun b!85182 () Bool)

(declare-fun e!55560 () Bool)

(declare-fun e!55567 () Bool)

(assert (=> b!85182 (= e!55560 e!55567)))

(declare-fun res!43896 () Bool)

(assert (=> b!85182 (=> (not res!43896) (not e!55567))))

(declare-datatypes ((tuple2!2228 0))(
  ( (tuple2!2229 (_1!1124 (_ BitVec 64)) (_2!1124 V!3025)) )
))
(declare-datatypes ((List!1550 0))(
  ( (Nil!1547) (Cons!1546 (h!2137 tuple2!2228) (t!5271 List!1550)) )
))
(declare-datatypes ((ListLongMap!1485 0))(
  ( (ListLongMap!1486 (toList!758 List!1550)) )
))
(declare-fun lt!40113 () ListLongMap!1485)

(declare-fun lt!40120 () ListLongMap!1485)

(assert (=> b!85182 (= res!43896 (= lt!40113 lt!40120))))

(declare-fun map!1194 (LongMapFixedSize!754) ListLongMap!1485)

(assert (=> b!85182 (= lt!40120 (map!1194 newMap!16))))

(declare-datatypes ((Cell!562 0))(
  ( (Cell!563 (v!2646 LongMapFixedSize!754)) )
))
(declare-datatypes ((LongMap!562 0))(
  ( (LongMap!563 (underlying!292 Cell!562)) )
))
(declare-fun thiss!992 () LongMap!562)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!442 (array!4024 array!4026 (_ BitVec 32) (_ BitVec 32) V!3025 V!3025 (_ BitVec 32) Int) ListLongMap!1485)

(assert (=> b!85182 (= lt!40113 (getCurrentListMap!442 (_keys!4009 (v!2646 (underlying!292 thiss!992))) (_values!2320 (v!2646 (underlying!292 thiss!992))) (mask!6365 (v!2646 (underlying!292 thiss!992))) (extraKeys!2176 (v!2646 (underlying!292 thiss!992))) (zeroValue!2229 (v!2646 (underlying!292 thiss!992))) (minValue!2229 (v!2646 (underlying!292 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2337 (v!2646 (underlying!292 thiss!992)))))))

(declare-fun b!85183 () Bool)

(declare-fun Unit!2532 () Unit!2529)

(assert (=> b!85183 (= e!55556 Unit!2532)))

(declare-fun lt!40119 () Unit!2529)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!71 (array!4024 array!4026 (_ BitVec 32) (_ BitVec 32) V!3025 V!3025 (_ BitVec 64) (_ BitVec 32) Int) Unit!2529)

(assert (=> b!85183 (= lt!40119 (lemmaListMapContainsThenArrayContainsFrom!71 (_keys!4009 (v!2646 (underlying!292 thiss!992))) (_values!2320 (v!2646 (underlying!292 thiss!992))) (mask!6365 (v!2646 (underlying!292 thiss!992))) (extraKeys!2176 (v!2646 (underlying!292 thiss!992))) (zeroValue!2229 (v!2646 (underlying!292 thiss!992))) (minValue!2229 (v!2646 (underlying!292 thiss!992))) (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2337 (v!2646 (underlying!292 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4024 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!85183 (arrayContainsKey!0 (_keys!4009 (v!2646 (underlying!292 thiss!992))) (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!40107 () Unit!2529)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4024 (_ BitVec 32) (_ BitVec 32)) Unit!2529)

(assert (=> b!85183 (= lt!40107 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4009 (v!2646 (underlying!292 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1551 0))(
  ( (Nil!1548) (Cons!1547 (h!2138 (_ BitVec 64)) (t!5272 List!1551)) )
))
(declare-fun arrayNoDuplicates!0 (array!4024 (_ BitVec 32) List!1551) Bool)

(assert (=> b!85183 (arrayNoDuplicates!0 (_keys!4009 (v!2646 (underlying!292 thiss!992))) from!355 Nil!1548)))

(declare-fun lt!40110 () Unit!2529)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4024 (_ BitVec 32) (_ BitVec 64) List!1551) Unit!2529)

(assert (=> b!85183 (= lt!40110 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4009 (v!2646 (underlying!292 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) (Cons!1547 (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) Nil!1548)))))

(assert (=> b!85183 false))

(declare-fun b!85184 () Bool)

(declare-fun e!55558 () Bool)

(assert (=> b!85184 (= e!55558 tp_is_empty!2533)))

(declare-fun b!85185 () Bool)

(declare-fun e!55570 () Bool)

(declare-fun e!55566 () Bool)

(assert (=> b!85185 (= e!55570 (not e!55566))))

(declare-fun res!43901 () Bool)

(assert (=> b!85185 (=> res!43901 e!55566)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!85185 (= res!43901 (not (validMask!0 (mask!6365 (v!2646 (underlying!292 thiss!992))))))))

(declare-fun lt!40123 () tuple2!2228)

(declare-fun lt!40117 () tuple2!2228)

(declare-fun lt!40122 () ListLongMap!1485)

(declare-fun lt!40108 () ListLongMap!1485)

(declare-fun +!115 (ListLongMap!1485 tuple2!2228) ListLongMap!1485)

(assert (=> b!85185 (= (+!115 lt!40108 lt!40123) (+!115 (+!115 lt!40122 lt!40123) lt!40117))))

(assert (=> b!85185 (= lt!40123 (tuple2!2229 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2229 (v!2646 (underlying!292 thiss!992)))))))

(declare-fun lt!40111 () V!3025)

(declare-fun lt!40115 () Unit!2529)

(declare-fun addCommutativeForDiffKeys!34 (ListLongMap!1485 (_ BitVec 64) V!3025 (_ BitVec 64) V!3025) Unit!2529)

(assert (=> b!85185 (= lt!40115 (addCommutativeForDiffKeys!34 lt!40122 (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) lt!40111 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2229 (v!2646 (underlying!292 thiss!992)))))))

(declare-fun lt!40109 () ListLongMap!1485)

(assert (=> b!85185 (= lt!40109 lt!40108)))

(assert (=> b!85185 (= lt!40108 (+!115 lt!40122 lt!40117))))

(declare-fun lt!40121 () ListLongMap!1485)

(declare-fun lt!40116 () tuple2!2228)

(assert (=> b!85185 (= lt!40109 (+!115 lt!40121 lt!40116))))

(declare-fun lt!40114 () ListLongMap!1485)

(assert (=> b!85185 (= lt!40122 (+!115 lt!40114 lt!40116))))

(assert (=> b!85185 (= lt!40116 (tuple2!2229 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2229 (v!2646 (underlying!292 thiss!992)))))))

(assert (=> b!85185 (= lt!40121 (+!115 lt!40114 lt!40117))))

(assert (=> b!85185 (= lt!40117 (tuple2!2229 (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) lt!40111))))

(declare-fun lt!40106 () Unit!2529)

(assert (=> b!85185 (= lt!40106 (addCommutativeForDiffKeys!34 lt!40114 (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) lt!40111 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2229 (v!2646 (underlying!292 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!79 (array!4024 array!4026 (_ BitVec 32) (_ BitVec 32) V!3025 V!3025 (_ BitVec 32) Int) ListLongMap!1485)

(assert (=> b!85185 (= lt!40114 (getCurrentListMapNoExtraKeys!79 (_keys!4009 (v!2646 (underlying!292 thiss!992))) (_values!2320 (v!2646 (underlying!292 thiss!992))) (mask!6365 (v!2646 (underlying!292 thiss!992))) (extraKeys!2176 (v!2646 (underlying!292 thiss!992))) (zeroValue!2229 (v!2646 (underlying!292 thiss!992))) (minValue!2229 (v!2646 (underlying!292 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2337 (v!2646 (underlying!292 thiss!992)))))))

(declare-fun b!85186 () Bool)

(declare-fun e!55564 () Bool)

(assert (=> b!85186 (= e!55564 e!55570)))

(declare-fun res!43899 () Bool)

(assert (=> b!85186 (=> (not res!43899) (not e!55570))))

(declare-datatypes ((tuple2!2230 0))(
  ( (tuple2!2231 (_1!1125 Bool) (_2!1125 LongMapFixedSize!754)) )
))
(declare-fun lt!40118 () tuple2!2230)

(assert (=> b!85186 (= res!43899 (and (_1!1125 lt!40118) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-fun lt!40112 () Unit!2529)

(assert (=> b!85186 (= lt!40112 e!55556)))

(declare-fun c!13811 () Bool)

(declare-fun contains!761 (ListLongMap!1485 (_ BitVec 64)) Bool)

(assert (=> b!85186 (= c!13811 (contains!761 lt!40120 (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355)))))

(declare-fun update!121 (LongMapFixedSize!754 (_ BitVec 64) V!3025) tuple2!2230)

(assert (=> b!85186 (= lt!40118 (update!121 newMap!16 (select (arr!1916 (_keys!4009 (v!2646 (underlying!292 thiss!992)))) from!355) lt!40111))))

(declare-fun mapNonEmpty!3393 () Bool)

(declare-fun tp!8923 () Bool)

(declare-fun e!55569 () Bool)

(assert (=> mapNonEmpty!3393 (= mapRes!3393 (and tp!8923 e!55569))))

(declare-fun mapValue!3394 () ValueCell!923)

(declare-fun mapRest!3394 () (Array (_ BitVec 32) ValueCell!923))

(declare-fun mapKey!3394 () (_ BitVec 32))

(assert (=> mapNonEmpty!3393 (= (arr!1917 (_values!2320 newMap!16)) (store mapRest!3394 mapKey!3394 mapValue!3394))))

(declare-fun b!85187 () Bool)

(declare-fun res!43897 () Bool)

(assert (=> b!85187 (=> (not res!43897) (not e!55560))))

(assert (=> b!85187 (= res!43897 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2160 (_keys!4009 (v!2646 (underlying!292 thiss!992)))))))))

(declare-fun b!85188 () Bool)

(declare-fun e!55563 () Bool)

(declare-fun mapRes!3394 () Bool)

(assert (=> b!85188 (= e!55563 (and e!55558 mapRes!3394))))

(declare-fun condMapEmpty!3394 () Bool)

(declare-fun mapDefault!3394 () ValueCell!923)

