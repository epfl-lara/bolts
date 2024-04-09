; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89310 () Bool)

(assert start!89310)

(declare-fun b!1023638 () Bool)

(declare-fun b_free!20315 () Bool)

(declare-fun b_next!20315 () Bool)

(assert (=> b!1023638 (= b_free!20315 (not b_next!20315))))

(declare-fun tp!71981 () Bool)

(declare-fun b_and!32559 () Bool)

(assert (=> b!1023638 (= tp!71981 b_and!32559)))

(declare-fun b!1023633 () Bool)

(declare-fun res!685611 () Bool)

(declare-fun e!576878 () Bool)

(assert (=> b!1023633 (=> (not res!685611) (not e!576878))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023633 (= res!685611 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023634 () Bool)

(declare-fun e!576882 () Bool)

(declare-fun tp_is_empty!24035 () Bool)

(assert (=> b!1023634 (= e!576882 tp_is_empty!24035)))

(declare-fun res!685610 () Bool)

(assert (=> start!89310 (=> (not res!685610) (not e!576878))))

(declare-datatypes ((V!36919 0))(
  ( (V!36920 (val!12068 Int)) )
))
(declare-datatypes ((ValueCell!11314 0))(
  ( (ValueCellFull!11314 (v!14638 V!36919)) (EmptyCell!11314) )
))
(declare-datatypes ((array!64098 0))(
  ( (array!64099 (arr!30857 (Array (_ BitVec 32) (_ BitVec 64))) (size!31369 (_ BitVec 32))) )
))
(declare-datatypes ((array!64100 0))(
  ( (array!64101 (arr!30858 (Array (_ BitVec 32) ValueCell!11314)) (size!31370 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5222 0))(
  ( (LongMapFixedSize!5223 (defaultEntry!5963 Int) (mask!29585 (_ BitVec 32)) (extraKeys!5695 (_ BitVec 32)) (zeroValue!5799 V!36919) (minValue!5799 V!36919) (_size!2666 (_ BitVec 32)) (_keys!11105 array!64098) (_values!5986 array!64100) (_vacant!2666 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5222)

(declare-fun valid!1946 (LongMapFixedSize!5222) Bool)

(assert (=> start!89310 (= res!685610 (valid!1946 thiss!1427))))

(assert (=> start!89310 e!576878))

(declare-fun e!576883 () Bool)

(assert (=> start!89310 e!576883))

(assert (=> start!89310 true))

(declare-fun b!1023635 () Bool)

(declare-fun e!576881 () Bool)

(assert (=> b!1023635 (= e!576881 tp_is_empty!24035)))

(declare-fun b!1023636 () Bool)

(assert (=> b!1023636 (= e!576878 (not true))))

(declare-fun lt!450433 () Bool)

(declare-fun lt!450432 () V!36919)

(assert (=> b!1023636 (= lt!450433 (valid!1946 (LongMapFixedSize!5223 (defaultEntry!5963 thiss!1427) (mask!29585 thiss!1427) (bvand (extraKeys!5695 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5799 thiss!1427) lt!450432 (_size!2666 thiss!1427) (_keys!11105 thiss!1427) (_values!5986 thiss!1427) (_vacant!2666 thiss!1427))))))

(declare-datatypes ((tuple2!15602 0))(
  ( (tuple2!15603 (_1!7811 (_ BitVec 64)) (_2!7811 V!36919)) )
))
(declare-datatypes ((List!21820 0))(
  ( (Nil!21817) (Cons!21816 (h!23014 tuple2!15602) (t!30871 List!21820)) )
))
(declare-datatypes ((ListLongMap!13761 0))(
  ( (ListLongMap!13762 (toList!6896 List!21820)) )
))
(declare-fun -!472 (ListLongMap!13761 (_ BitVec 64)) ListLongMap!13761)

(declare-fun getCurrentListMap!3903 (array!64098 array!64100 (_ BitVec 32) (_ BitVec 32) V!36919 V!36919 (_ BitVec 32) Int) ListLongMap!13761)

(assert (=> b!1023636 (= (-!472 (getCurrentListMap!3903 (_keys!11105 thiss!1427) (_values!5986 thiss!1427) (mask!29585 thiss!1427) (extraKeys!5695 thiss!1427) (zeroValue!5799 thiss!1427) (minValue!5799 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5963 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3903 (_keys!11105 thiss!1427) (_values!5986 thiss!1427) (mask!29585 thiss!1427) (bvand (extraKeys!5695 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5799 thiss!1427) lt!450432 #b00000000000000000000000000000000 (defaultEntry!5963 thiss!1427)))))

(declare-datatypes ((Unit!33296 0))(
  ( (Unit!33297) )
))
(declare-fun lt!450431 () Unit!33296)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!4 (array!64098 array!64100 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36919 V!36919 V!36919 Int) Unit!33296)

(assert (=> b!1023636 (= lt!450431 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!4 (_keys!11105 thiss!1427) (_values!5986 thiss!1427) (mask!29585 thiss!1427) (extraKeys!5695 thiss!1427) (bvand (extraKeys!5695 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5799 thiss!1427) (minValue!5799 thiss!1427) lt!450432 (defaultEntry!5963 thiss!1427)))))

(declare-fun dynLambda!1947 (Int (_ BitVec 64)) V!36919)

(assert (=> b!1023636 (= lt!450432 (dynLambda!1947 (defaultEntry!5963 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1023637 () Bool)

(declare-fun e!576879 () Bool)

(declare-fun mapRes!37470 () Bool)

(assert (=> b!1023637 (= e!576879 (and e!576881 mapRes!37470))))

(declare-fun condMapEmpty!37470 () Bool)

(declare-fun mapDefault!37470 () ValueCell!11314)

