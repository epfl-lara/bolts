; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!11662 () Bool)

(assert start!11662)

(declare-fun b!97443 () Bool)

(declare-fun b_free!2425 () Bool)

(declare-fun b_next!2425 () Bool)

(assert (=> b!97443 (= b_free!2425 (not b_next!2425))))

(declare-fun tp!9560 () Bool)

(declare-fun b_and!5985 () Bool)

(assert (=> b!97443 (= tp!9560 b_and!5985)))

(declare-fun b!97452 () Bool)

(declare-fun b_free!2427 () Bool)

(declare-fun b_next!2427 () Bool)

(assert (=> b!97452 (= b_free!2427 (not b_next!2427))))

(declare-fun tp!9557 () Bool)

(declare-fun b_and!5987 () Bool)

(assert (=> b!97452 (= tp!9557 b_and!5987)))

(declare-fun b!97441 () Bool)

(declare-fun res!49100 () Bool)

(declare-fun e!63562 () Bool)

(assert (=> b!97441 (=> (not res!49100) (not e!63562))))

(declare-datatypes ((V!3153 0))(
  ( (V!3154 (val!1359 Int)) )
))
(declare-datatypes ((array!4236 0))(
  ( (array!4237 (arr!2012 (Array (_ BitVec 32) (_ BitVec 64))) (size!2262 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!971 0))(
  ( (ValueCellFull!971 (v!2798 V!3153)) (EmptyCell!971) )
))
(declare-datatypes ((array!4238 0))(
  ( (array!4239 (arr!2013 (Array (_ BitVec 32) ValueCell!971)) (size!2263 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!850 0))(
  ( (LongMapFixedSize!851 (defaultEntry!2480 Int) (mask!6577 (_ BitVec 32)) (extraKeys!2301 (_ BitVec 32)) (zeroValue!2363 V!3153) (minValue!2363 V!3153) (_size!474 (_ BitVec 32)) (_keys!4170 array!4236) (_values!2463 array!4238) (_vacant!474 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!654 0))(
  ( (Cell!655 (v!2799 LongMapFixedSize!850)) )
))
(declare-datatypes ((LongMap!654 0))(
  ( (LongMap!655 (underlying!338 Cell!654)) )
))
(declare-fun thiss!992 () LongMap!654)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!97441 (= res!49100 (validMask!0 (mask!6577 (v!2799 (underlying!338 thiss!992)))))))

(declare-fun b!97442 () Bool)

(declare-datatypes ((Unit!2962 0))(
  ( (Unit!2963) )
))
(declare-fun e!63555 () Unit!2962)

(declare-fun Unit!2964 () Unit!2962)

(assert (=> b!97442 (= e!63555 Unit!2964)))

(declare-fun lt!48783 () Unit!2962)

(declare-fun from!355 () (_ BitVec 32))

(declare-fun lemmaListMapContainsThenArrayContainsFrom!97 (array!4236 array!4238 (_ BitVec 32) (_ BitVec 32) V!3153 V!3153 (_ BitVec 64) (_ BitVec 32) Int) Unit!2962)

(assert (=> b!97442 (= lt!48783 (lemmaListMapContainsThenArrayContainsFrom!97 (_keys!4170 (v!2799 (underlying!338 thiss!992))) (_values!2463 (v!2799 (underlying!338 thiss!992))) (mask!6577 (v!2799 (underlying!338 thiss!992))) (extraKeys!2301 (v!2799 (underlying!338 thiss!992))) (zeroValue!2363 (v!2799 (underlying!338 thiss!992))) (minValue!2363 (v!2799 (underlying!338 thiss!992))) (select (arr!2012 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2480 (v!2799 (underlying!338 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4236 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!97442 (arrayContainsKey!0 (_keys!4170 (v!2799 (underlying!338 thiss!992))) (select (arr!2012 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!48781 () Unit!2962)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4236 (_ BitVec 32) (_ BitVec 32)) Unit!2962)

(assert (=> b!97442 (= lt!48781 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4170 (v!2799 (underlying!338 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1609 0))(
  ( (Nil!1606) (Cons!1605 (h!2199 (_ BitVec 64)) (t!5567 List!1609)) )
))
(declare-fun arrayNoDuplicates!0 (array!4236 (_ BitVec 32) List!1609) Bool)

(assert (=> b!97442 (arrayNoDuplicates!0 (_keys!4170 (v!2799 (underlying!338 thiss!992))) from!355 Nil!1606)))

(declare-fun lt!48780 () Unit!2962)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4236 (_ BitVec 32) (_ BitVec 64) List!1609) Unit!2962)

(assert (=> b!97442 (= lt!48780 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4170 (v!2799 (underlying!338 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2012 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) from!355) (Cons!1605 (select (arr!2012 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) from!355) Nil!1606)))))

(assert (=> b!97442 false))

(declare-fun mapNonEmpty!3739 () Bool)

(declare-fun mapRes!3739 () Bool)

(declare-fun tp!9558 () Bool)

(declare-fun e!63556 () Bool)

(assert (=> mapNonEmpty!3739 (= mapRes!3739 (and tp!9558 e!63556))))

(declare-fun mapValue!3740 () ValueCell!971)

(declare-fun mapRest!3740 () (Array (_ BitVec 32) ValueCell!971))

(declare-fun newMap!16 () LongMapFixedSize!850)

(declare-fun mapKey!3740 () (_ BitVec 32))

(assert (=> mapNonEmpty!3739 (= (arr!2013 (_values!2463 newMap!16)) (store mapRest!3740 mapKey!3740 mapValue!3740))))

(declare-fun e!63548 () Bool)

(declare-fun e!63551 () Bool)

(declare-fun tp_is_empty!2629 () Bool)

(declare-fun array_inv!1209 (array!4236) Bool)

(declare-fun array_inv!1210 (array!4238) Bool)

(assert (=> b!97443 (= e!63548 (and tp!9560 tp_is_empty!2629 (array_inv!1209 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) (array_inv!1210 (_values!2463 (v!2799 (underlying!338 thiss!992)))) e!63551))))

(declare-fun b!97444 () Bool)

(declare-fun e!63563 () Bool)

(declare-fun e!63549 () Bool)

(assert (=> b!97444 (= e!63563 e!63549)))

(declare-fun res!49101 () Bool)

(assert (=> b!97444 (=> (not res!49101) (not e!63549))))

(declare-datatypes ((tuple2!2350 0))(
  ( (tuple2!2351 (_1!1185 (_ BitVec 64)) (_2!1185 V!3153)) )
))
(declare-datatypes ((List!1610 0))(
  ( (Nil!1607) (Cons!1606 (h!2200 tuple2!2350) (t!5568 List!1610)) )
))
(declare-datatypes ((ListLongMap!1549 0))(
  ( (ListLongMap!1550 (toList!790 List!1610)) )
))
(declare-fun lt!48778 () ListLongMap!1549)

(declare-fun lt!48779 () ListLongMap!1549)

(assert (=> b!97444 (= res!49101 (and (= lt!48779 lt!48778) (not (= (select (arr!2012 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) from!355) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!2012 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) from!355) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun map!1254 (LongMapFixedSize!850) ListLongMap!1549)

(assert (=> b!97444 (= lt!48778 (map!1254 newMap!16))))

(declare-fun getCurrentListMap!471 (array!4236 array!4238 (_ BitVec 32) (_ BitVec 32) V!3153 V!3153 (_ BitVec 32) Int) ListLongMap!1549)

(assert (=> b!97444 (= lt!48779 (getCurrentListMap!471 (_keys!4170 (v!2799 (underlying!338 thiss!992))) (_values!2463 (v!2799 (underlying!338 thiss!992))) (mask!6577 (v!2799 (underlying!338 thiss!992))) (extraKeys!2301 (v!2799 (underlying!338 thiss!992))) (zeroValue!2363 (v!2799 (underlying!338 thiss!992))) (minValue!2363 (v!2799 (underlying!338 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2480 (v!2799 (underlying!338 thiss!992)))))))

(declare-fun b!97445 () Bool)

(assert (=> b!97445 (= e!63562 (and (= (size!2263 (_values!2463 (v!2799 (underlying!338 thiss!992)))) (bvadd #b00000000000000000000000000000001 (mask!6577 (v!2799 (underlying!338 thiss!992))))) (= (size!2262 (_keys!4170 (v!2799 (underlying!338 thiss!992)))) (size!2263 (_values!2463 (v!2799 (underlying!338 thiss!992))))) (bvsge (mask!6577 (v!2799 (underlying!338 thiss!992))) #b00000000000000000000000000000000) (bvslt (extraKeys!2301 (v!2799 (underlying!338 thiss!992))) #b00000000000000000000000000000000)))))

(declare-fun b!97446 () Bool)

(declare-fun res!49099 () Bool)

(assert (=> b!97446 (=> (not res!49099) (not e!63563))))

(assert (=> b!97446 (= res!49099 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6577 newMap!16)) (_size!474 (v!2799 (underlying!338 thiss!992)))))))

(declare-fun b!97447 () Bool)

(declare-fun e!63550 () Bool)

(declare-fun mapRes!3740 () Bool)

(assert (=> b!97447 (= e!63551 (and e!63550 mapRes!3740))))

(declare-fun condMapEmpty!3739 () Bool)

(declare-fun mapDefault!3739 () ValueCell!971)

