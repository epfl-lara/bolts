; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!9224 () Bool)

(assert start!9224)

(declare-fun b!65630 () Bool)

(declare-fun b_free!2041 () Bool)

(declare-fun b_next!2041 () Bool)

(assert (=> b!65630 (= b_free!2041 (not b_next!2041))))

(declare-fun tp!8271 () Bool)

(declare-fun b_and!4025 () Bool)

(assert (=> b!65630 (= tp!8271 b_and!4025)))

(declare-fun b!65620 () Bool)

(declare-fun b_free!2043 () Bool)

(declare-fun b_next!2043 () Bool)

(assert (=> b!65620 (= b_free!2043 (not b_next!2043))))

(declare-fun tp!8274 () Bool)

(declare-fun b_and!4027 () Bool)

(assert (=> b!65620 (= tp!8274 b_and!4027)))

(declare-fun b!65614 () Bool)

(declare-datatypes ((Unit!1813 0))(
  ( (Unit!1814) )
))
(declare-fun e!43003 () Unit!1813)

(declare-fun Unit!1815 () Unit!1813)

(assert (=> b!65614 (= e!43003 Unit!1815)))

(declare-fun lt!28061 () Unit!1813)

(declare-datatypes ((V!2897 0))(
  ( (V!2898 (val!1263 Int)) )
))
(declare-datatypes ((array!3810 0))(
  ( (array!3811 (arr!1820 (Array (_ BitVec 32) (_ BitVec 64))) (size!2055 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!875 0))(
  ( (ValueCellFull!875 (v!2462 V!2897)) (EmptyCell!875) )
))
(declare-datatypes ((array!3812 0))(
  ( (array!3813 (arr!1821 (Array (_ BitVec 32) ValueCell!875)) (size!2056 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!658 0))(
  ( (LongMapFixedSize!659 (defaultEntry!2137 Int) (mask!6067 (_ BitVec 32)) (extraKeys!2008 (_ BitVec 32)) (zeroValue!2045 V!2897) (minValue!2045 V!2897) (_size!378 (_ BitVec 32)) (_keys!3777 array!3810) (_values!2120 array!3812) (_vacant!378 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!468 0))(
  ( (Cell!469 (v!2463 LongMapFixedSize!658)) )
))
(declare-datatypes ((LongMap!468 0))(
  ( (LongMap!469 (underlying!245 Cell!468)) )
))
(declare-fun thiss!992 () LongMap!468)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!41 (array!3810 array!3812 (_ BitVec 32) (_ BitVec 32) V!2897 V!2897 (_ BitVec 64) (_ BitVec 32) Int) Unit!1813)

(assert (=> b!65614 (= lt!28061 (lemmaListMapContainsThenArrayContainsFrom!41 (_keys!3777 (v!2463 (underlying!245 thiss!992))) (_values!2120 (v!2463 (underlying!245 thiss!992))) (mask!6067 (v!2463 (underlying!245 thiss!992))) (extraKeys!2008 (v!2463 (underlying!245 thiss!992))) (zeroValue!2045 (v!2463 (underlying!245 thiss!992))) (minValue!2045 (v!2463 (underlying!245 thiss!992))) (select (arr!1820 (_keys!3777 (v!2463 (underlying!245 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2137 (v!2463 (underlying!245 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!3810 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!65614 (arrayContainsKey!0 (_keys!3777 (v!2463 (underlying!245 thiss!992))) (select (arr!1820 (_keys!3777 (v!2463 (underlying!245 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!28064 () Unit!1813)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!3810 (_ BitVec 32) (_ BitVec 32)) Unit!1813)

(assert (=> b!65614 (= lt!28064 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!3777 (v!2463 (underlying!245 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1481 0))(
  ( (Nil!1478) (Cons!1477 (h!2061 (_ BitVec 64)) (t!4939 List!1481)) )
))
(declare-fun arrayNoDuplicates!0 (array!3810 (_ BitVec 32) List!1481) Bool)

(assert (=> b!65614 (arrayNoDuplicates!0 (_keys!3777 (v!2463 (underlying!245 thiss!992))) from!355 Nil!1478)))

(declare-fun lt!28067 () Unit!1813)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!3810 (_ BitVec 32) (_ BitVec 64) List!1481) Unit!1813)

(assert (=> b!65614 (= lt!28067 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!3777 (v!2463 (underlying!245 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!1820 (_keys!3777 (v!2463 (underlying!245 thiss!992)))) from!355) (Cons!1477 (select (arr!1820 (_keys!3777 (v!2463 (underlying!245 thiss!992)))) from!355) Nil!1478)))))

(assert (=> b!65614 false))

(declare-fun b!65615 () Bool)

(declare-fun e!43008 () Bool)

(declare-fun tp_is_empty!2437 () Bool)

(assert (=> b!65615 (= e!43008 tp_is_empty!2437)))

(declare-fun b!65616 () Bool)

(declare-fun res!35645 () Bool)

(declare-fun e!42998 () Bool)

(assert (=> b!65616 (=> (not res!35645) (not e!42998))))

(declare-fun newMap!16 () LongMapFixedSize!658)

(assert (=> b!65616 (= res!35645 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6067 newMap!16)) (_size!378 (v!2463 (underlying!245 thiss!992)))))))

(declare-fun b!65617 () Bool)

(declare-fun e!42995 () Bool)

(assert (=> b!65617 (= e!42998 e!42995)))

(declare-fun res!35647 () Bool)

(assert (=> b!65617 (=> (not res!35647) (not e!42995))))

(declare-datatypes ((tuple2!2096 0))(
  ( (tuple2!2097 (_1!1058 (_ BitVec 64)) (_2!1058 V!2897)) )
))
(declare-datatypes ((List!1482 0))(
  ( (Nil!1479) (Cons!1478 (h!2062 tuple2!2096) (t!4940 List!1482)) )
))
(declare-datatypes ((ListLongMap!1407 0))(
  ( (ListLongMap!1408 (toList!719 List!1482)) )
))
(declare-fun lt!28062 () ListLongMap!1407)

(declare-fun lt!28060 () ListLongMap!1407)

(assert (=> b!65617 (= res!35647 (and (= lt!28060 lt!28062) (not (= (select (arr!1820 (_keys!3777 (v!2463 (underlying!245 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!1820 (_keys!3777 (v!2463 (underlying!245 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1135 (LongMapFixedSize!658) ListLongMap!1407)

(assert (=> b!65617 (= lt!28062 (map!1135 newMap!16))))

(declare-fun getCurrentListMap!415 (array!3810 array!3812 (_ BitVec 32) (_ BitVec 32) V!2897 V!2897 (_ BitVec 32) Int) ListLongMap!1407)

(assert (=> b!65617 (= lt!28060 (getCurrentListMap!415 (_keys!3777 (v!2463 (underlying!245 thiss!992))) (_values!2120 (v!2463 (underlying!245 thiss!992))) (mask!6067 (v!2463 (underlying!245 thiss!992))) (extraKeys!2008 (v!2463 (underlying!245 thiss!992))) (zeroValue!2045 (v!2463 (underlying!245 thiss!992))) (minValue!2045 (v!2463 (underlying!245 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2137 (v!2463 (underlying!245 thiss!992)))))))

(declare-fun b!65618 () Bool)

(declare-fun Unit!1816 () Unit!1813)

(assert (=> b!65618 (= e!43003 Unit!1816)))

(declare-fun b!65619 () Bool)

(declare-fun e!42994 () Bool)

(assert (=> b!65619 (= e!42994 tp_is_empty!2437)))

(declare-fun e!43001 () Bool)

(declare-fun e!42999 () Bool)

(declare-fun array_inv!1077 (array!3810) Bool)

(declare-fun array_inv!1078 (array!3812) Bool)

(assert (=> b!65620 (= e!43001 (and tp!8274 tp_is_empty!2437 (array_inv!1077 (_keys!3777 newMap!16)) (array_inv!1078 (_values!2120 newMap!16)) e!42999))))

(declare-fun b!65621 () Bool)

(declare-fun e!43005 () Bool)

(assert (=> b!65621 (= e!43005 tp_is_empty!2437)))

(declare-fun b!65622 () Bool)

(declare-fun res!35649 () Bool)

(assert (=> b!65622 (=> (not res!35649) (not e!42998))))

(assert (=> b!65622 (= res!35649 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2055 (_keys!3777 (v!2463 (underlying!245 thiss!992)))))))))

(declare-fun b!65623 () Bool)

(declare-fun e!43000 () Bool)

(declare-fun mapRes!3030 () Bool)

(assert (=> b!65623 (= e!43000 (and e!43008 mapRes!3030))))

(declare-fun condMapEmpty!3030 () Bool)

(declare-fun mapDefault!3029 () ValueCell!875)

