; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!12156 () Bool)

(assert start!12156)

(declare-fun b!102651 () Bool)

(declare-fun b_free!2493 () Bool)

(declare-fun b_next!2493 () Bool)

(assert (=> b!102651 (= b_free!2493 (not b_next!2493))))

(declare-fun tp!9792 () Bool)

(declare-fun b_and!6345 () Bool)

(assert (=> b!102651 (= tp!9792 b_and!6345)))

(declare-fun b!102649 () Bool)

(declare-fun b_free!2495 () Bool)

(declare-fun b_next!2495 () Bool)

(assert (=> b!102649 (= b_free!2495 (not b_next!2495))))

(declare-fun tp!9790 () Bool)

(declare-fun b_and!6347 () Bool)

(assert (=> b!102649 (= tp!9790 b_and!6347)))

(declare-fun mapIsEmpty!3869 () Bool)

(declare-fun mapRes!3869 () Bool)

(assert (=> mapIsEmpty!3869 mapRes!3869))

(declare-fun mapIsEmpty!3870 () Bool)

(declare-fun mapRes!3870 () Bool)

(assert (=> mapIsEmpty!3870 mapRes!3870))

(declare-fun b!102647 () Bool)

(declare-fun res!51333 () Bool)

(declare-fun e!66844 () Bool)

(assert (=> b!102647 (=> (not res!51333) (not e!66844))))

(declare-fun from!355 () (_ BitVec 32))

(declare-datatypes ((V!3197 0))(
  ( (V!3198 (val!1376 Int)) )
))
(declare-datatypes ((array!4312 0))(
  ( (array!4313 (arr!2046 (Array (_ BitVec 32) (_ BitVec 64))) (size!2300 (_ BitVec 32))) )
))
(declare-datatypes ((ValueCell!988 0))(
  ( (ValueCellFull!988 (v!2864 V!3197)) (EmptyCell!988) )
))
(declare-datatypes ((array!4314 0))(
  ( (array!4315 (arr!2047 (Array (_ BitVec 32) ValueCell!988)) (size!2301 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!884 0))(
  ( (LongMapFixedSize!885 (defaultEntry!2553 Int) (mask!6684 (_ BitVec 32)) (extraKeys!2362 (_ BitVec 32)) (zeroValue!2430 V!3197) (minValue!2430 V!3197) (_size!491 (_ BitVec 32)) (_keys!4255 array!4312) (_values!2536 array!4314) (_vacant!491 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!688 0))(
  ( (Cell!689 (v!2865 LongMapFixedSize!884)) )
))
(declare-datatypes ((LongMap!688 0))(
  ( (LongMap!689 (underlying!355 Cell!688)) )
))
(declare-fun thiss!992 () LongMap!688)

(assert (=> b!102647 (= res!51333 (and (bvsge from!355 #b00000000000000000000000000000000) (bvslt from!355 (size!2300 (_keys!4255 (v!2865 (underlying!355 thiss!992)))))))))

(declare-fun b!102648 () Bool)

(declare-fun e!66843 () Bool)

(declare-fun e!66852 () Bool)

(assert (=> b!102648 (= e!66843 e!66852)))

(declare-fun mapNonEmpty!3869 () Bool)

(declare-fun tp!9791 () Bool)

(declare-fun e!66846 () Bool)

(assert (=> mapNonEmpty!3869 (= mapRes!3870 (and tp!9791 e!66846))))

(declare-fun mapValue!3870 () ValueCell!988)

(declare-fun mapRest!3869 () (Array (_ BitVec 32) ValueCell!988))

(declare-fun mapKey!3870 () (_ BitVec 32))

(assert (=> mapNonEmpty!3869 (= (arr!2047 (_values!2536 (v!2865 (underlying!355 thiss!992)))) (store mapRest!3869 mapKey!3870 mapValue!3870))))

(declare-fun b!102650 () Bool)

(declare-fun tp_is_empty!2663 () Bool)

(assert (=> b!102650 (= e!66846 tp_is_empty!2663)))

(declare-fun e!66855 () Bool)

(declare-fun array_inv!1231 (array!4312) Bool)

(declare-fun array_inv!1232 (array!4314) Bool)

(assert (=> b!102651 (= e!66852 (and tp!9792 tp_is_empty!2663 (array_inv!1231 (_keys!4255 (v!2865 (underlying!355 thiss!992)))) (array_inv!1232 (_values!2536 (v!2865 (underlying!355 thiss!992)))) e!66855))))

(declare-fun b!102652 () Bool)

(declare-fun e!66851 () Bool)

(assert (=> b!102652 (= e!66851 tp_is_empty!2663)))

(declare-fun b!102653 () Bool)

(declare-fun e!66849 () Bool)

(assert (=> b!102653 (= e!66849 false)))

(declare-datatypes ((tuple2!2388 0))(
  ( (tuple2!2389 (_1!1204 (_ BitVec 64)) (_2!1204 V!3197)) )
))
(declare-datatypes ((List!1630 0))(
  ( (Nil!1627) (Cons!1626 (h!2222 tuple2!2388) (t!5684 List!1630)) )
))
(declare-datatypes ((ListLongMap!1571 0))(
  ( (ListLongMap!1572 (toList!801 List!1630)) )
))
(declare-fun lt!52154 () ListLongMap!1571)

(declare-fun getCurrentListMapNoExtraKeys!108 (array!4312 array!4314 (_ BitVec 32) (_ BitVec 32) V!3197 V!3197 (_ BitVec 32) Int) ListLongMap!1571)

(assert (=> b!102653 (= lt!52154 (getCurrentListMapNoExtraKeys!108 (_keys!4255 (v!2865 (underlying!355 thiss!992))) (_values!2536 (v!2865 (underlying!355 thiss!992))) (mask!6684 (v!2865 (underlying!355 thiss!992))) (extraKeys!2362 (v!2865 (underlying!355 thiss!992))) (zeroValue!2430 (v!2865 (underlying!355 thiss!992))) (minValue!2430 (v!2865 (underlying!355 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2553 (v!2865 (underlying!355 thiss!992)))))))

(declare-fun b!102654 () Bool)

(declare-datatypes ((Unit!3152 0))(
  ( (Unit!3153) )
))
(declare-fun e!66847 () Unit!3152)

(declare-fun Unit!3154 () Unit!3152)

(assert (=> b!102654 (= e!66847 Unit!3154)))

(declare-fun lt!52156 () Unit!3152)

(declare-fun lemmaListMapContainsThenArrayContainsFrom!107 (array!4312 array!4314 (_ BitVec 32) (_ BitVec 32) V!3197 V!3197 (_ BitVec 64) (_ BitVec 32) Int) Unit!3152)

(assert (=> b!102654 (= lt!52156 (lemmaListMapContainsThenArrayContainsFrom!107 (_keys!4255 (v!2865 (underlying!355 thiss!992))) (_values!2536 (v!2865 (underlying!355 thiss!992))) (mask!6684 (v!2865 (underlying!355 thiss!992))) (extraKeys!2362 (v!2865 (underlying!355 thiss!992))) (zeroValue!2430 (v!2865 (underlying!355 thiss!992))) (minValue!2430 (v!2865 (underlying!355 thiss!992))) (select (arr!2046 (_keys!4255 (v!2865 (underlying!355 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355) (defaultEntry!2553 (v!2865 (underlying!355 thiss!992)))))))

(declare-fun arrayContainsKey!0 (array!4312 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!102654 (arrayContainsKey!0 (_keys!4255 (v!2865 (underlying!355 thiss!992))) (select (arr!2046 (_keys!4255 (v!2865 (underlying!355 thiss!992)))) from!355) (bvadd #b00000000000000000000000000000001 from!355))))

(declare-fun lt!52151 () Unit!3152)

(declare-fun lemmaNoDuplicateFromThenFromBigger!0 (array!4312 (_ BitVec 32) (_ BitVec 32)) Unit!3152)

(assert (=> b!102654 (= lt!52151 (lemmaNoDuplicateFromThenFromBigger!0 (_keys!4255 (v!2865 (underlying!355 thiss!992))) #b00000000000000000000000000000000 from!355))))

(declare-datatypes ((List!1631 0))(
  ( (Nil!1628) (Cons!1627 (h!2223 (_ BitVec 64)) (t!5685 List!1631)) )
))
(declare-fun arrayNoDuplicates!0 (array!4312 (_ BitVec 32) List!1631) Bool)

(assert (=> b!102654 (arrayNoDuplicates!0 (_keys!4255 (v!2865 (underlying!355 thiss!992))) from!355 Nil!1628)))

(declare-fun lt!52157 () Unit!3152)

(declare-fun lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (array!4312 (_ BitVec 32) (_ BitVec 64) List!1631) Unit!3152)

(assert (=> b!102654 (= lt!52157 (lemmaArrayNoDuplicateFromNotContainsKeysInAcc!0 (_keys!4255 (v!2865 (underlying!355 thiss!992))) (bvadd #b00000000000000000000000000000001 from!355) (select (arr!2046 (_keys!4255 (v!2865 (underlying!355 thiss!992)))) from!355) (Cons!1627 (select (arr!2046 (_keys!4255 (v!2865 (underlying!355 thiss!992)))) from!355) Nil!1628)))))

(assert (=> b!102654 false))

(declare-fun b!102655 () Bool)

(declare-fun e!66845 () Bool)

(assert (=> b!102655 (= e!66845 tp_is_empty!2663)))

(declare-fun b!102656 () Bool)

(declare-fun res!51332 () Bool)

(assert (=> b!102656 (=> (not res!51332) (not e!66844))))

(declare-fun newMap!16 () LongMapFixedSize!884)

(assert (=> b!102656 (= res!51332 (bvsge (bvadd #b00000000000000000000000000000001 (mask!6684 newMap!16)) (_size!491 (v!2865 (underlying!355 thiss!992)))))))

(declare-fun b!102657 () Bool)

(declare-fun res!51331 () Bool)

(assert (=> b!102657 (=> (not res!51331) (not e!66844))))

(declare-fun valid!401 (LongMapFixedSize!884) Bool)

(assert (=> b!102657 (= res!51331 (valid!401 newMap!16))))

(declare-fun b!102658 () Bool)

(declare-fun e!66858 () Bool)

(assert (=> b!102658 (= e!66858 tp_is_empty!2663)))

(declare-fun b!102659 () Bool)

(assert (=> b!102659 (= e!66855 (and e!66858 mapRes!3870))))

(declare-fun condMapEmpty!3869 () Bool)

(declare-fun mapDefault!3869 () ValueCell!988)

