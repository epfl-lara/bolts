; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!10154 () Bool)

(assert start!10154)

(declare-fun b!77302 () Bool)

(declare-fun b_free!2173 () Bool)

(declare-fun b_next!2173 () Bool)

(assert (=> b!77302 (= b_free!2173 (not b_next!2173))))

(declare-fun tp!8717 () Bool)

(declare-fun b_and!4741 () Bool)

(assert (=> b!77302 (= tp!8717 b_and!4741)))

(declare-fun b!77306 () Bool)

(declare-fun b_free!2175 () Bool)

(declare-fun b_next!2175 () Bool)

(assert (=> b!77306 (= b_free!2175 (not b_next!2175))))

(declare-fun tp!8718 () Bool)

(declare-fun b_and!4743 () Bool)

(assert (=> b!77306 (= tp!8718 b_and!4743)))

(declare-fun b!77300 () Bool)

(declare-fun e!50545 () Bool)

(declare-fun tp_is_empty!2503 () Bool)

(assert (=> b!77300 (= e!50545 tp_is_empty!2503)))

(declare-fun b!77301 () Bool)

(declare-fun e!50538 () Bool)

(declare-datatypes ((V!2985 0))(
  ( (V!2986 (val!1296 Int)) )
))
(declare-datatypes ((array!3956 0))(
  ( (array!3957 (arr!1886 (Array (_ BitVec 32) (_ BitVec 64))) (size!2127 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!908 0))(
  ( (ValueCellFull!908 (v!2583 V!2985)) (EmptyCell!908) )
))
(declare-datatypes ((array!3958 0))(
  ( (array!3959 (arr!1887 (Array (_ BitVec 32) ValueCell!908)) (size!2128 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!724 0))(
  ( (LongMapFixedSize!725 (defaultEntry!2265 Int) (mask!6258 (_ BitVec 32)) (extraKeys!2116 (_ BitVec 32)) (zeroValue!2163 V!2985) (minValue!2163 V!2985) (_size!411 (_ BitVec 32)) (_keys!3925 array!3956) (_values!2248 array!3958) (_vacant!411 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!532 0))(
  ( (Cell!533 (v!2584 LongMapFixedSize!724)) )
))
(declare-datatypes ((LongMap!532 0))(
  ( (LongMap!533 (underlying!277 Cell!532)) )
))
(declare-fun thiss!992 () LongMap!532)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!77301 (= e!50538 (not (validMask!0 (mask!6258 (v!2584 (underlying!277 thiss!992))))))))

(declare-datatypes ((tuple2!2178 0))(
  ( (tuple2!2179 (_1!1099 (_ BitVec 64)) (_2!1099 V!2985)) )
))
(declare-datatypes ((List!1525 0))(
  ( (Nil!1522) (Cons!1521 (h!2109 tuple2!2178) (t!5159 List!1525)) )
))
(declare-datatypes ((ListLongMap!1457 0))(
  ( (ListLongMap!1458 (toList!744 List!1525)) )
))
(declare-fun lt!35339 () ListLongMap!1457)

(declare-fun lt!35338 () tuple2!2178)

(declare-fun lt!35340 () tuple2!2178)

(declare-fun lt!35333 () ListLongMap!1457)

(declare-fun +!105 (ListLongMap!1457 tuple2!2178) ListLongMap!1457)

(assert (=> b!77301 (= (+!105 lt!35339 lt!35340) (+!105 (+!105 lt!35333 lt!35340) lt!35338))))

(assert (=> b!77301 (= lt!35340 (tuple2!2179 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2163 (v!2584 (underlying!277 thiss!992)))))))

(declare-fun lt!35343 () V!2985)

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((Unit!2245 0))(
  ( (Unit!2246) )
))
(declare-fun lt!35329 () Unit!2245)

(declare-fun addCommutativeForDiffKeys!24 (ListLongMap!1457 (_ BitVec 64) V!2985 (_ BitVec 64) V!2985) Unit!2245)

(assert (=> b!77301 (= lt!35329 (addCommutativeForDiffKeys!24 lt!35333 (select (arr!1886 (_keys!3925 (v!2584 (underlying!277 thiss!992)))) from!355) lt!35343 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!2163 (v!2584 (underlying!277 thiss!992)))))))

(declare-fun lt!35332 () ListLongMap!1457)

(assert (=> b!77301 (= lt!35332 lt!35339)))

(assert (=> b!77301 (= lt!35339 (+!105 lt!35333 lt!35338))))

(declare-fun lt!35337 () ListLongMap!1457)

(declare-fun lt!35326 () tuple2!2178)

(assert (=> b!77301 (= lt!35332 (+!105 lt!35337 lt!35326))))

(declare-fun lt!35336 () ListLongMap!1457)

(assert (=> b!77301 (= lt!35333 (+!105 lt!35336 lt!35326))))

(assert (=> b!77301 (= lt!35326 (tuple2!2179 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2163 (v!2584 (underlying!277 thiss!992)))))))

(assert (=> b!77301 (= lt!35337 (+!105 lt!35336 lt!35338))))

(assert (=> b!77301 (= lt!35338 (tuple2!2179 (select (arr!1886 (_keys!3925 (v!2584 (underlying!277 thiss!992)))) from!355) lt!35343))))

(declare-fun lt!35331 () Unit!2245)

(assert (=> b!77301 (= lt!35331 (addCommutativeForDiffKeys!24 lt!35336 (select (arr!1886 (_keys!3925 (v!2584 (underlying!277 thiss!992)))) from!355) lt!35343 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!2163 (v!2584 (underlying!277 thiss!992)))))))

(declare-fun getCurrentListMapNoExtraKeys!69 (array!3956 array!3958 (_ BitVec 32) (_ BitVec 32) V!2985 V!2985 (_ BitVec 32) Int) ListLongMap!1457)

(assert (=> b!77301 (= lt!35336 (getCurrentListMapNoExtraKeys!69 (_keys!3925 (v!2584 (underlying!277 thiss!992))) (_values!2248 (v!2584 (underlying!277 thiss!992))) (mask!6258 (v!2584 (underlying!277 thiss!992))) (extraKeys!2116 (v!2584 (underlying!277 thiss!992))) (zeroValue!2163 (v!2584 (underlying!277 thiss!992))) (minValue!2163 (v!2584 (underlying!277 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2265 (v!2584 (underlying!277 thiss!992)))))))

(declare-fun mapIsEmpty!3275 () Bool)

(declare-fun mapRes!3275 () Bool)

(assert (=> mapIsEmpty!3275 mapRes!3275))

(declare-fun b!77303 () Bool)

(declare-fun e!50537 () Bool)

(assert (=> b!77303 (= e!50537 tp_is_empty!2503)))

(declare-fun b!77304 () Bool)

(declare-fun e!50530 () Bool)

(assert (=> b!77304 (= e!50530 tp_is_empty!2503)))

(declare-fun b!77305 () Bool)

(declare-fun e!50543 () Unit!2245)

(declare-fun Unit!2247 () Unit!2245)

(assert (=> b!77305 (= e!50543 Unit!2247)))

(declare-fun lt!35330 () Unit!2245)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!60 (array!3956 array!3958 (_ BitVec 32) (_ BitVec 32) V!2985 V!2985 (_ BitVec 64) (_ BitVec 32) Int) Unit!2245)

(assert (=> b!77305 (= lt!35330 (lemmaListMapContainsThenArrayContainsFrom!60 (_keys!3925 (v!2584 (underlying!277 thiss!992))) (_values!2248 (v!2584 (underlying!277 thiss!992))) (mask!6258 (v!2584 (underlying!277 thiss!992))) (extraKeys!2116 (v!2584 (underlying!277 thiss!992))) (zeroValue!2163 (v!2584 (underlying!277 thiss!992))) (minValue!2163 (v!2584 (underlying!277 thiss!992))) (select (arr!1886 (_keys!3925 (v!2584 (underlying!277 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2265 (v!2584 (underlying!277 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3956 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!77305 (arrayContainsKey!0 (_keys!3925 (v!2584 (underlying!277 thiss!992))) (select (arr!1886 (_keys!3925 (v!2584 (underlying!277 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!35335 () Unit!2245)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3956 (_ BitVec 32) (_ BitVec 32)) Unit!2245)

(assert (=> b!77305 (= lt!35335 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3925 (v!2584 (underlying!277 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1526 0))(
  ( (Nil!1523) (Cons!1522 (h!2110 (_ BitVec 64)) (t!5160 List!1526)) )
))
(declare-fun arrayNoDuplicates!0 (array!3956 (_ BitVec 32) List!1526) Bool)

(assert (=> b!77305 (arrayNoDuplicates!0 (_keys!3925 (v!2584 (underlying!277 thiss!992))) from!355 Nil!1523)))

(declare-fun lt!35342 () Unit!2245)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3956 (_ BitVec 32) (_ BitVec 64) List!1526) Unit!2245)

(assert (=> b!77305 (= lt!35342 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3925 (v!2584 (underlying!277 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1886 (_keys!3925 (v!2584 (underlying!277 thiss!992)))) from!355) (Cons!1522 (select (arr!1886 (_keys!3925 (v!2584 (underlying!277 thiss!992)))) from!355) Nil!1523)))))

(assert (=> b!77305 false))

(declare-fun e!50531 () Bool)

(declare-fun e!50540 () Bool)

(declare-fun newMap!16 () LongMapFixedSize!724)

(declare-fun array_inv!1121 (array!3956) Bool)

(declare-fun array_inv!1122 (array!3958) Bool)

(assert (=> b!77306 (= e!50531 (and tp!8718 tp_is_empty!2503 (array_inv!1121 (_keys!3925 newMap!16)) (array_inv!1122 (_values!2248 newMap!16)) e!50540))))

(declare-fun b!77307 () Bool)

(assert (=> b!77307 (= e!50540 (and e!50537 mapRes!3275))))

(declare-fun condMapEmpty!3276 () Bool)

(declare-fun mapDefault!3275 () ValueCell!908)

