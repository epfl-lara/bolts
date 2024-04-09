; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11118 () Bool)

(assert start!11118)

(declare-fun b!90646 () Bool)

(declare-fun b_free!2305 () Bool)

(declare-fun b_next!2305 () Bool)

(assert (=> b!90646 (= b_free!2305 (not b_next!2305))))

(declare-fun tp!9163 () Bool)

(declare-fun b_and!5461 () Bool)

(assert (=> b!90646 (= tp!9163 b_and!5461)))

(declare-fun b!90651 () Bool)

(declare-fun b_free!2307 () Bool)

(declare-fun b_next!2307 () Bool)

(assert (=> b!90651 (= b_free!2307 (not b_next!2307))))

(declare-fun tp!9165 () Bool)

(declare-fun b_and!5463 () Bool)

(assert (=> b!90651 (= tp!9165 b_and!5463)))

(declare-fun res!46216 () Bool)

(declare-fun e!59088 () Bool)

(assert (=> start!11118 (=> (not res!46216) (not e!59088))))

(declare-datatypes ((V!3073 0))(
  ( (V!3074 (val!1329 Int)) )
))
(declare-datatypes ((array!4104 0))(
  ( (array!4105 (arr!1952 (Array (_ BitVec 32) (_ BitVec 64))) (size!2199 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!941 0))(
  ( (ValueCellFull!941 (v!2705 V!3073)) (EmptyCell!941) )
))
(declare-datatypes ((array!4106 0))(
  ( (array!4107 (arr!1953 (Array (_ BitVec 32) ValueCell!941)) (size!2200 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!790 0))(
  ( (LongMapFixedSize!791 (defaultEntry!2396 Int) (mask!6452 (_ BitVec 32)) (extraKeys!2227 (_ BitVec 32)) (zeroValue!2284 V!3073) (minValue!2284 V!3073) (_size!444 (_ BitVec 32)) (_keys!4076 array!4104) (_values!2379 array!4106) (_vacant!444 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!594 0))(
  ( (Cell!595 (v!2706 LongMapFixedSize!790)) )
))
(declare-datatypes ((LongMap!594 0))(
  ( (LongMap!595 (underlying!308 Cell!594)) )
))
(declare-fun thiss!992 () LongMap!594)

(declare-fun valid!348 (LongMap!594) Bool)

(assert (=> start!11118 (= res!46216 (valid!348 thiss!992))))

(assert (=> start!11118 e!59088))

(declare-fun e!59074 () Bool)

(assert (=> start!11118 e!59074))

(assert (=> start!11118 true))

(declare-fun e!59076 () Bool)

(assert (=> start!11118 e!59076))

(declare-fun b!90639 () Bool)

(declare-fun e!59085 () Bool)

(assert (=> b!90639 (= e!59088 e!59085)))

(declare-fun res!46217 () Bool)

(assert (=> b!90639 (=> (not res!46217) (not e!59085))))

(declare-datatypes ((tuple2!2270 0))(
  ( (tuple2!2271 (_1!1145 (_ BitVec 64)) (_2!1145 V!3073)) )
))
(declare-datatypes ((List!1572 0))(
  ( (Nil!1569) (Cons!1568 (h!2160 tuple2!2270) (t!5382 List!1572)) )
))
(declare-datatypes ((ListLongMap!1507 0))(
  ( (ListLongMap!1508 (toList!769 List!1572)) )
))
(declare-fun lt!43881 () ListLongMap!1507)

(declare-fun lt!43886 () ListLongMap!1507)

(assert (=> b!90639 (= res!46217 (= lt!43881 lt!43886))))

(declare-fun newMap!16 () LongMapFixedSize!790)

(declare-fun map!1215 (LongMapFixedSize!790) ListLongMap!1507)

(assert (=> b!90639 (= lt!43886 (map!1215 newMap!16))))

(declare-fun from!355 () (_ BitVec 32))

(declare-fun getCurrentListMap!451 (array!4104 array!4106 (_ BitVec 32) (_ BitVec 32) V!3073 V!3073 (_ BitVec 32) Int) ListLongMap!1507)

(assert (=> b!90639 (= lt!43881 (getCurrentListMap!451 (_keys!4076 (v!2706 (underlying!308 thiss!992))) (_values!2379 (v!2706 (underlying!308 thiss!992))) (mask!6452 (v!2706 (underlying!308 thiss!992))) (extraKeys!2227 (v!2706 (underlying!308 thiss!992))) (zeroValue!2284 (v!2706 (underlying!308 thiss!992))) (minValue!2284 (v!2706 (underlying!308 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2396 (v!2706 (underlying!308 thiss!992)))))))

(declare-fun b!90640 () Bool)

(declare-fun e!59078 () Bool)

(declare-fun tp_is_empty!2569 () Bool)

(assert (=> b!90640 (= e!59078 tp_is_empty!2569)))

(declare-fun b!90641 () Bool)

(declare-datatypes ((Unit!2712 0))(
  ( (Unit!2713) )
))
(declare-fun e!59087 () Unit!2712)

(declare-fun Unit!2714 () Unit!2712)

(assert (=> b!90641 (= e!59087 Unit!2714)))

(declare-fun lt!43876 () Unit!2712)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!81 (array!4104 array!4106 (_ BitVec 32) (_ BitVec 32) V!3073 V!3073 (_ BitVec 64) (_ BitVec 32) Int) Unit!2712)

(assert (=> b!90641 (= lt!43876 (lemmaListMapContainsThenArrayContainsFrom!81 (_keys!4076 (v!2706 (underlying!308 thiss!992))) (_values!2379 (v!2706 (underlying!308 thiss!992))) (mask!6452 (v!2706 (underlying!308 thiss!992))) (extraKeys!2227 (v!2706 (underlying!308 thiss!992))) (zeroValue!2284 (v!2706 (underlying!308 thiss!992))) (minValue!2284 (v!2706 (underlying!308 thiss!992))) (select (arr!1952 (_keys!4076 (v!2706 (underlying!308 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2396 (v!2706 (underlying!308 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4104 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!90641 (arrayContainsKey!0 (_keys!4076 (v!2706 (underlying!308 thiss!992))) (select (arr!1952 (_keys!4076 (v!2706 (underlying!308 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!43885 () Unit!2712)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4104 (_ BitVec 32) (_ BitVec 32)) Unit!2712)

(assert (=> b!90641 (= lt!43885 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4076 (v!2706 (underlying!308 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1573 0))(
  ( (Nil!1570) (Cons!1569 (h!2161 (_ BitVec 64)) (t!5383 List!1573)) )
))
(declare-fun arrayNoDuplicates!0 (array!4104 (_ BitVec 32) List!1573) Bool)

(assert (=> b!90641 (arrayNoDuplicates!0 (_keys!4076 (v!2706 (underlying!308 thiss!992))) from!355 Nil!1570)))

(declare-fun lt!43883 () Unit!2712)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4104 (_ BitVec 32) (_ BitVec 64) List!1573) Unit!2712)

(assert (=> b!90641 (= lt!43883 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4076 (v!2706 (underlying!308 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1952 (_keys!4076 (v!2706 (underlying!308 thiss!992)))) from!355) (Cons!1569 (select (arr!1952 (_keys!4076 (v!2706 (underlying!308 thiss!992)))) from!355) Nil!1570)))))

(assert (=> b!90641 false))

(declare-fun b!90642 () Bool)

(declare-fun e!59081 () Bool)

(declare-fun mapRes!3525 () Bool)

(assert (=> b!90642 (= e!59081 (and e!59078 mapRes!3525))))

(declare-fun condMapEmpty!3526 () Bool)

(declare-fun mapDefault!3526 () ValueCell!941)

