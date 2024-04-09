; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12692 () Bool)

(assert start!12692)

(declare-fun b!109756 () Bool)

(declare-fun b_free!2557 () Bool)

(declare-fun b_next!2557 () Bool)

(assert (=> b!109756 (= b_free!2557 (not b_next!2557))))

(declare-fun tp!10011 () Bool)

(declare-fun b_and!6769 () Bool)

(assert (=> b!109756 (= tp!10011 b_and!6769)))

(declare-fun b!109755 () Bool)

(declare-fun b_free!2559 () Bool)

(declare-fun b_next!2559 () Bool)

(assert (=> b!109755 (= b_free!2559 (not b_next!2559))))

(declare-fun tp!10012 () Bool)

(declare-fun b_and!6771 () Bool)

(assert (=> b!109755 (= tp!10012 b_and!6771)))

(declare-fun b!109743 () Bool)

(declare-datatypes ((Unit!3417 0))(
  ( (Unit!3418) )
))
(declare-fun e!71405 () Unit!3417)

(declare-fun Unit!3419 () Unit!3417)

(assert (=> b!109743 (= e!71405 Unit!3419)))

(declare-fun lt!56491 () Unit!3417)

(declare-datatypes ((V!3241 0))(
  ( (V!3242 (val!1392 Int)) )
))
(declare-datatypes ((array!4384 0))(
  ( (array!4385 (arr!2078 (Array (_ BitVec 32) (_ BitVec 64))) (size!2335 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!1004 0))(
  ( (ValueCellFull!1004 (v!2926 V!3241)) (EmptyCell!1004) )
))
(declare-datatypes ((array!4386 0))(
  ( (array!4387 (arr!2079 (Array (_ BitVec 32) ValueCell!1004)) (size!2336 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!916 0))(
  ( (LongMapFixedSize!917 (defaultEntry!2626 Int) (mask!6794 (_ BitVec 32)) (extraKeys!2423 (_ BitVec 32)) (zeroValue!2497 V!3241) (minValue!2497 V!3241) (_size!507 (_ BitVec 32)) (_keys!4340 array!4384) (_values!2609 array!4386) (_vacant!507 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!716 0))(
  ( (Cell!717 (v!2927 LongMapFixedSize!916)) )
))
(declare-datatypes ((LongMap!716 0))(
  ( (LongMap!717 (underlying!369 Cell!716)) )
))
(declare-fun thiss!992 () LongMap!716)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!116 (array!4384 array!4386 (_ BitVec 32) (_ BitVec 32) V!3241 V!3241 (_ BitVec 64) (_ BitVec 32) Int) Unit!3417)

(assert (=> b!109743 (= lt!56491 (lemmaListMapContainsThenArrayContainsFrom!116 (_keys!4340 (v!2927 (underlying!369 thiss!992))) (_values!2609 (v!2927 (underlying!369 thiss!992))) (mask!6794 (v!2927 (underlying!369 thiss!992))) (extraKeys!2423 (v!2927 (underlying!369 thiss!992))) (zeroValue!2497 (v!2927 (underlying!369 thiss!992))) (minValue!2497 (v!2927 (underlying!369 thiss!992))) (select (arr!2078 (_keys!4340 (v!2927 (underlying!369 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2626 (v!2927 (underlying!369 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4384 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!109743 (arrayContainsKey!0 (_keys!4340 (v!2927 (underlying!369 thiss!992))) (select (arr!2078 (_keys!4340 (v!2927 (underlying!369 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!56483 () Unit!3417)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4384 (_ BitVec 32) (_ BitVec 32)) Unit!3417)

(assert (=> b!109743 (= lt!56483 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4340 (v!2927 (underlying!369 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1650 0))(
  ( (Nil!1647) (Cons!1646 (h!2245 (_ BitVec 64)) (t!5795 List!1650)) )
))
(declare-fun arrayNoDuplicates!0 (array!4384 (_ BitVec 32) List!1650) Bool)

(assert (=> b!109743 (arrayNoDuplicates!0 (_keys!4340 (v!2927 (underlying!369 thiss!992))) from!355 Nil!1647)))

(declare-fun lt!56485 () Unit!3417)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4384 (_ BitVec 32) (_ BitVec 64) List!1650) Unit!3417)

(assert (=> b!109743 (= lt!56485 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4340 (v!2927 (underlying!369 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2078 (_keys!4340 (v!2927 (underlying!369 thiss!992)))) from!355) (Cons!1646 (select (arr!2078 (_keys!4340 (v!2927 (underlying!369 thiss!992)))) from!355) Nil!1647)))))

(assert (=> b!109743 false))

(declare-fun b!109744 () Bool)

(declare-fun e!71401 () Bool)

(declare-fun e!71408 () Bool)

(assert (=> b!109744 (= e!71401 e!71408)))

(declare-fun res!54320 () Bool)

(assert (=> b!109744 (=> (not res!54320) (not e!71408))))

(declare-datatypes ((tuple2!2426 0))(
  ( (tuple2!2427 (_1!1223 (_ BitVec 64)) (_2!1223 V!3241)) )
))
(declare-datatypes ((List!1651 0))(
  ( (Nil!1648) (Cons!1647 (h!2246 tuple2!2426) (t!5796 List!1651)) )
))
(declare-datatypes ((ListLongMap!1593 0))(
  ( (ListLongMap!1594 (toList!812 List!1651)) )
))
(declare-fun lt!56484 () ListLongMap!1593)

(declare-fun lt!56487 () ListLongMap!1593)

(assert (=> b!109744 (= res!54320 (= lt!56484 lt!56487))))

(declare-fun newMap!16 () LongMapFixedSize!916)

(declare-fun map!1293 (LongMapFixedSize!916) ListLongMap!1593)

(assert (=> b!109744 (= lt!56487 (map!1293 newMap!16))))

(declare-fun getCurrentListMap!488 (array!4384 array!4386 (_ BitVec 32) (_ BitVec 32) V!3241 V!3241 (_ BitVec 32) Int) ListLongMap!1593)

(assert (=> b!109744 (= lt!56484 (getCurrentListMap!488 (_keys!4340 (v!2927 (underlying!369 thiss!992))) (_values!2609 (v!2927 (underlying!369 thiss!992))) (mask!6794 (v!2927 (underlying!369 thiss!992))) (extraKeys!2423 (v!2927 (underlying!369 thiss!992))) (zeroValue!2497 (v!2927 (underlying!369 thiss!992))) (minValue!2497 (v!2927 (underlying!369 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2626 (v!2927 (underlying!369 thiss!992)))))))

(declare-fun b!109745 () Bool)

(declare-fun e!71393 () Bool)

(declare-fun tp_is_empty!2695 () Bool)

(assert (=> b!109745 (= e!71393 tp_is_empty!2695)))

(declare-fun mapIsEmpty!3993 () Bool)

(declare-fun mapRes!3994 () Bool)

(assert (=> mapIsEmpty!3993 mapRes!3994))

(declare-fun b!109746 () Bool)

(declare-fun Unit!3420 () Unit!3417)

(assert (=> b!109746 (= e!71405 Unit!3420)))

(declare-fun mapIsEmpty!3994 () Bool)

(declare-fun mapRes!3993 () Bool)

(assert (=> mapIsEmpty!3994 mapRes!3993))

(declare-fun b!109747 () Bool)

(declare-fun e!71399 () Bool)

(declare-fun e!71397 () Bool)

(assert (=> b!109747 (= e!71399 (and e!71397 mapRes!3993))))

(declare-fun condMapEmpty!3993 () Bool)

(declare-fun mapDefault!3993 () ValueCell!1004)

