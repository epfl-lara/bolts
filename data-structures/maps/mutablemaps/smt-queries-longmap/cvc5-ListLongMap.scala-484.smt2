; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10358 () Bool)

(assert start!10358)

(declare-fun b!80213 () Bool)

(declare-fun b_free!2197 () Bool)

(declare-fun b_next!2197 () Bool)

(assert (=> b!80213 (= b_free!2197 (not b_next!2197))))

(declare-fun tp!8800 () Bool)

(declare-fun b_and!4893 () Bool)

(assert (=> b!80213 (= tp!8800 b_and!4893)))

(declare-fun b!80210 () Bool)

(declare-fun b_free!2199 () Bool)

(declare-fun b_next!2199 () Bool)

(assert (=> b!80210 (= b_free!2199 (not b_next!2199))))

(declare-fun tp!8802 () Bool)

(declare-fun b_and!4895 () Bool)

(assert (=> b!80210 (= tp!8802 b_and!4895)))

(declare-fun b!80194 () Bool)

(declare-fun e!52377 () Bool)

(declare-fun e!52378 () Bool)

(assert (=> b!80194 (= e!52377 e!52378)))

(declare-fun res!41796 () Bool)

(assert (=> b!80194 (=> (not res!41796) (not e!52378))))

(declare-datatypes ((V!3001 0))(
  ( (V!3002 (val!1302 Int)) )
))
(declare-datatypes ((array!3984 0))(
  ( (array!3985 (arr!1898 (Array (_ BitVec 32) (_ BitVec 64))) (size!2140 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!914 0))(
  ( (ValueCellFull!914 (v!2607 V!3001)) (EmptyCell!914) )
))
(declare-datatypes ((array!3986 0))(
  ( (array!3987 (arr!1899 (Array (_ BitVec 32) ValueCell!914)) (size!2141 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!736 0))(
  ( (LongMapFixedSize!737 (defaultEntry!2292 Int) (mask!6298 (_ BitVec 32)) (extraKeys!2139 (_ BitVec 32)) (zeroValue!2188 V!3001) (minValue!2188 V!3001) (_size!417 (_ BitVec 32)) (_keys!3956 array!3984) (_values!2275 array!3986) (_vacant!417 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!2196 0))(
  ( (tuple2!2197 (_1!1108 Bool) (_2!1108 LongMapFixedSize!736)) )
))
(declare-fun lt!37142 () tuple2!2196)

(declare-fun from!355 () (_ BitVec 32))

(assert (=> b!80194 (= res!41796 (and (_1!1108 lt!37142) (bvsgt from!355 #b00000000000000000000000000000000)))))

(declare-datatypes ((Unit!2346 0))(
  ( (Unit!2347) )
))
(declare-fun lt!37140 () Unit!2346)

(declare-fun e!52391 () Unit!2346)

(assert (=> b!80194 (= lt!37140 e!52391)))

(declare-datatypes ((tuple2!2198 0))(
  ( (tuple2!2199 (_1!1109 (_ BitVec 64)) (_2!1109 V!3001)) )
))
(declare-datatypes ((List!1536 0))(
  ( (Nil!1533) (Cons!1532 (h!2121 tuple2!2198) (t!5203 List!1536)) )
))
(declare-datatypes ((ListLongMap!1469 0))(
  ( (ListLongMap!1470 (toList!750 List!1536)) )
))
(declare-fun lt!37141 () ListLongMap!1469)

(declare-datatypes ((Cell!544 0))(
  ( (Cell!545 (v!2608 LongMapFixedSize!736)) )
))
(declare-datatypes ((LongMap!544 0))(
  ( (LongMap!545 (underlying!283 Cell!544)) )
))
(declare-fun thiss!992 () LongMap!544)

(declare-fun c!12536 () Bool)

(declare-fun contains!749 (ListLongMap!1469 (_ BitVec 64)) Bool)

(assert (=> b!80194 (= c!12536 (contains!749 lt!37141 (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355)))))

(declare-fun lt!37146 () V!3001)

(declare-fun newMap!16 () LongMapFixedSize!736)

(declare-fun update!113 (LongMapFixedSize!736 (_ BitVec 64) V!3001) tuple2!2196)

(assert (=> b!80194 (= lt!37142 (update!113 newMap!16 (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) lt!37146))))

(declare-fun b!80195 () Bool)

(declare-fun e!52379 () Bool)

(declare-fun e!52380 () Bool)

(assert (=> b!80195 (= e!52379 e!52380)))

(declare-fun b!80196 () Bool)

(declare-fun e!52383 () Bool)

(declare-fun e!52389 () Bool)

(assert (=> b!80196 (= e!52383 e!52389)))

(declare-fun res!41802 () Bool)

(assert (=> b!80196 (=> (not res!41802) (not e!52389))))

(declare-fun lt!37149 () ListLongMap!1469)

(assert (=> b!80196 (= res!41802 (= lt!37149 lt!37141))))

(declare-fun map!1182 (LongMapFixedSize!736) ListLongMap!1469)

(assert (=> b!80196 (= lt!37141 (map!1182 newMap!16))))

(declare-fun getCurrentListMap!436 (array!3984 array!3986 (_ BitVec 32) (_ BitVec 32) V!3001 V!3001 (_ BitVec 32) Int) ListLongMap!1469)

(assert (=> b!80196 (= lt!37149 (getCurrentListMap!436 (_keys!3956 (v!2608 (underlying!283 thiss!992))) (_values!2275 (v!2608 (underlying!283 thiss!992))) (mask!6298 (v!2608 (underlying!283 thiss!992))) (extraKeys!2139 (v!2608 (underlying!283 thiss!992))) (zeroValue!2188 (v!2608 (underlying!283 thiss!992))) (minValue!2188 (v!2608 (underlying!283 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2292 (v!2608 (underlying!283 thiss!992)))))))

(declare-fun b!80197 () Bool)

(declare-fun res!41798 () Bool)

(assert (=> b!80197 (=> (not res!41798) (not e!52383))))

(declare-fun valid!315 (LongMapFixedSize!736) Bool)

(assert (=> b!80197 (= res!41798 (valid!315 newMap!16))))

(declare-fun b!80198 () Bool)

(declare-fun Unit!2348 () Unit!2346)

(assert (=> b!80198 (= e!52391 Unit!2348)))

(declare-fun lt!37148 () Unit!2346)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!65 (array!3984 array!3986 (_ BitVec 32) (_ BitVec 32) V!3001 V!3001 (_ BitVec 64) (_ BitVec 32) Int) Unit!2346)

(assert (=> b!80198 (= lt!37148 (lemmaListMapContainsThenArrayContainsFrom!65 (_keys!3956 (v!2608 (underlying!283 thiss!992))) (_values!2275 (v!2608 (underlying!283 thiss!992))) (mask!6298 (v!2608 (underlying!283 thiss!992))) (extraKeys!2139 (v!2608 (underlying!283 thiss!992))) (zeroValue!2188 (v!2608 (underlying!283 thiss!992))) (minValue!2188 (v!2608 (underlying!283 thiss!992))) (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2292 (v!2608 (underlying!283 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3984 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!80198 (arrayContainsKey!0 (_keys!3956 (v!2608 (underlying!283 thiss!992))) (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!37145 () Unit!2346)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3984 (_ BitVec 32) (_ BitVec 32)) Unit!2346)

(assert (=> b!80198 (= lt!37145 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3956 (v!2608 (underlying!283 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1537 0))(
  ( (Nil!1534) (Cons!1533 (h!2122 (_ BitVec 64)) (t!5204 List!1537)) )
))
(declare-fun arrayNoDuplicates!0 (array!3984 (_ BitVec 32) List!1537) Bool)

(assert (=> b!80198 (arrayNoDuplicates!0 (_keys!3956 (v!2608 (underlying!283 thiss!992))) from!355 Nil!1534)))

(declare-fun lt!37137 () Unit!2346)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3984 (_ BitVec 32) (_ BitVec 64) List!1537) Unit!2346)

(assert (=> b!80198 (= lt!37137 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3956 (v!2608 (underlying!283 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) (Cons!1533 (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) Nil!1534)))))

(assert (=> b!80198 false))

(declare-fun b!80199 () Bool)

(declare-fun e!52390 () Bool)

(declare-fun tp_is_empty!2515 () Bool)

(assert (=> b!80199 (= e!52390 tp_is_empty!2515)))

(declare-fun b!80200 () Bool)

(declare-fun e!52382 () Bool)

(assert (=> b!80200 (= e!52378 (not e!52382))))

(declare-fun res!41801 () Bool)

(assert (=> b!80200 (=> res!41801 e!52382)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!80200 (= res!41801 (not (validMask!0 (mask!6298 (v!2608 (underlying!283 thiss!992))))))))

(declare-fun lt!37139 () tuple2!2198)

(declare-fun lt!37135 () ListLongMap!1469)

(declare-fun lt!37132 () tuple2!2198)

(declare-fun lt!37138 () ListLongMap!1469)

(declare-fun +!110 (ListLongMap!1469 tuple2!2198) ListLongMap!1469)

(assert (=> b!80200 (= (+!110 lt!37138 lt!37132) (+!110 (+!110 lt!37135 lt!37132) lt!37139))))

(assert (=> b!80200 (= lt!37132 (tuple2!2199 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2188 (v!2608 (underlying!283 thiss!992)))))))

(declare-fun lt!37144 () Unit!2346)

(declare-fun addCommutativeForDiffKeys!29 (ListLongMap!1469 (_ BitVec 64) V!3001 (_ BitVec 64) V!3001) Unit!2346)

(assert (=> b!80200 (= lt!37144 (addCommutativeForDiffKeys!29 lt!37135 (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) lt!37146 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2188 (v!2608 (underlying!283 thiss!992)))))))

(declare-fun lt!37136 () ListLongMap!1469)

(assert (=> b!80200 (= lt!37136 lt!37138)))

(assert (=> b!80200 (= lt!37138 (+!110 lt!37135 lt!37139))))

(declare-fun lt!37133 () ListLongMap!1469)

(declare-fun lt!37134 () tuple2!2198)

(assert (=> b!80200 (= lt!37136 (+!110 lt!37133 lt!37134))))

(declare-fun lt!37143 () ListLongMap!1469)

(assert (=> b!80200 (= lt!37135 (+!110 lt!37143 lt!37134))))

(assert (=> b!80200 (= lt!37134 (tuple2!2199 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2188 (v!2608 (underlying!283 thiss!992)))))))

(assert (=> b!80200 (= lt!37133 (+!110 lt!37143 lt!37139))))

(assert (=> b!80200 (= lt!37139 (tuple2!2199 (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) lt!37146))))

(declare-fun lt!37147 () Unit!2346)

(assert (=> b!80200 (= lt!37147 (addCommutativeForDiffKeys!29 lt!37143 (select (arr!1898 (_keys!3956 (v!2608 (underlying!283 thiss!992)))) from!355) lt!37146 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2188 (v!2608 (underlying!283 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!74 (array!3984 array!3986 (_ BitVec 32) (_ BitVec 32) V!3001 V!3001 (_ BitVec 32) Int) ListLongMap!1469)

(assert (=> b!80200 (= lt!37143 (getCurrentListMapNoExtraKeys!74 (_keys!3956 (v!2608 (underlying!283 thiss!992))) (_values!2275 (v!2608 (underlying!283 thiss!992))) (mask!6298 (v!2608 (underlying!283 thiss!992))) (extraKeys!2139 (v!2608 (underlying!283 thiss!992))) (zeroValue!2188 (v!2608 (underlying!283 thiss!992))) (minValue!2188 (v!2608 (underlying!283 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2292 (v!2608 (underlying!283 thiss!992)))))))

(declare-fun b!80201 () Bool)

(declare-fun Unit!2349 () Unit!2346)

(assert (=> b!80201 (= e!52391 Unit!2349)))

(declare-fun b!80202 () Bool)

(declare-fun e!52381 () Bool)

(declare-fun e!52375 () Bool)

(declare-fun mapRes!3323 () Bool)

(assert (=> b!80202 (= e!52381 (and e!52375 mapRes!3323))))

(declare-fun condMapEmpty!3323 () Bool)

(declare-fun mapDefault!3324 () ValueCell!914)

