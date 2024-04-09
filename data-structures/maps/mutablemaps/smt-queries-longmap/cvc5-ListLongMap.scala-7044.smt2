; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89312 () Bool)

(assert start!89312)

(declare-fun b!1023655 () Bool)

(declare-fun b_free!20317 () Bool)

(declare-fun b_next!20317 () Bool)

(assert (=> b!1023655 (= b_free!20317 (not b_next!20317))))

(declare-fun tp!71986 () Bool)

(declare-fun b_and!32563 () Bool)

(assert (=> b!1023655 (= tp!71986 b_and!32563)))

(declare-fun mapNonEmpty!37473 () Bool)

(declare-fun mapRes!37473 () Bool)

(declare-fun tp!71987 () Bool)

(declare-fun e!576897 () Bool)

(assert (=> mapNonEmpty!37473 (= mapRes!37473 (and tp!71987 e!576897))))

(declare-fun mapKey!37473 () (_ BitVec 32))

(declare-datatypes ((V!36923 0))(
  ( (V!36924 (val!12069 Int)) )
))
(declare-datatypes ((ValueCell!11315 0))(
  ( (ValueCellFull!11315 (v!14639 V!36923)) (EmptyCell!11315) )
))
(declare-fun mapValue!37473 () ValueCell!11315)

(declare-datatypes ((array!64102 0))(
  ( (array!64103 (arr!30859 (Array (_ BitVec 32) (_ BitVec 64))) (size!31371 (_ BitVec 32))) )
))
(declare-datatypes ((array!64104 0))(
  ( (array!64105 (arr!30860 (Array (_ BitVec 32) ValueCell!11315)) (size!31372 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5224 0))(
  ( (LongMapFixedSize!5225 (defaultEntry!5964 Int) (mask!29588 (_ BitVec 32)) (extraKeys!5696 (_ BitVec 32)) (zeroValue!5800 V!36923) (minValue!5800 V!36923) (_size!2667 (_ BitVec 32)) (_keys!11106 array!64102) (_values!5987 array!64104) (_vacant!2667 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5224)

(declare-fun mapRest!37473 () (Array (_ BitVec 32) ValueCell!11315))

(assert (=> mapNonEmpty!37473 (= (arr!30860 (_values!5987 thiss!1427)) (store mapRest!37473 mapKey!37473 mapValue!37473))))

(declare-fun b!1023653 () Bool)

(declare-fun res!685616 () Bool)

(declare-fun e!576901 () Bool)

(assert (=> b!1023653 (=> (not res!685616) (not e!576901))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023653 (= res!685616 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!1023654 () Bool)

(declare-fun tp_is_empty!24037 () Bool)

(assert (=> b!1023654 (= e!576897 tp_is_empty!24037)))

(declare-fun e!576898 () Bool)

(declare-fun e!576900 () Bool)

(declare-fun array_inv!23779 (array!64102) Bool)

(declare-fun array_inv!23780 (array!64104) Bool)

(assert (=> b!1023655 (= e!576900 (and tp!71986 tp_is_empty!24037 (array_inv!23779 (_keys!11106 thiss!1427)) (array_inv!23780 (_values!5987 thiss!1427)) e!576898))))

(declare-fun b!1023656 () Bool)

(declare-fun e!576896 () Bool)

(assert (=> b!1023656 (= e!576896 tp_is_empty!24037)))

(declare-fun b!1023657 () Bool)

(assert (=> b!1023657 (= e!576901 (not true))))

(declare-fun lt!450442 () Bool)

(declare-fun lt!450440 () V!36923)

(declare-fun valid!1947 (LongMapFixedSize!5224) Bool)

(assert (=> b!1023657 (= lt!450442 (valid!1947 (LongMapFixedSize!5225 (defaultEntry!5964 thiss!1427) (mask!29588 thiss!1427) (bvand (extraKeys!5696 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5800 thiss!1427) lt!450440 (_size!2667 thiss!1427) (_keys!11106 thiss!1427) (_values!5987 thiss!1427) (_vacant!2667 thiss!1427))))))

(declare-datatypes ((tuple2!15604 0))(
  ( (tuple2!15605 (_1!7812 (_ BitVec 64)) (_2!7812 V!36923)) )
))
(declare-datatypes ((List!21821 0))(
  ( (Nil!21818) (Cons!21817 (h!23015 tuple2!15604) (t!30874 List!21821)) )
))
(declare-datatypes ((ListLongMap!13763 0))(
  ( (ListLongMap!13764 (toList!6897 List!21821)) )
))
(declare-fun -!473 (ListLongMap!13763 (_ BitVec 64)) ListLongMap!13763)

(declare-fun getCurrentListMap!3904 (array!64102 array!64104 (_ BitVec 32) (_ BitVec 32) V!36923 V!36923 (_ BitVec 32) Int) ListLongMap!13763)

(assert (=> b!1023657 (= (-!473 (getCurrentListMap!3904 (_keys!11106 thiss!1427) (_values!5987 thiss!1427) (mask!29588 thiss!1427) (extraKeys!5696 thiss!1427) (zeroValue!5800 thiss!1427) (minValue!5800 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5964 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3904 (_keys!11106 thiss!1427) (_values!5987 thiss!1427) (mask!29588 thiss!1427) (bvand (extraKeys!5696 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5800 thiss!1427) lt!450440 #b00000000000000000000000000000000 (defaultEntry!5964 thiss!1427)))))

(declare-datatypes ((Unit!33298 0))(
  ( (Unit!33299) )
))
(declare-fun lt!450441 () Unit!33298)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!5 (array!64102 array!64104 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36923 V!36923 V!36923 Int) Unit!33298)

(assert (=> b!1023657 (= lt!450441 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!5 (_keys!11106 thiss!1427) (_values!5987 thiss!1427) (mask!29588 thiss!1427) (extraKeys!5696 thiss!1427) (bvand (extraKeys!5696 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5800 thiss!1427) (minValue!5800 thiss!1427) lt!450440 (defaultEntry!5964 thiss!1427)))))

(declare-fun dynLambda!1948 (Int (_ BitVec 64)) V!36923)

(assert (=> b!1023657 (= lt!450440 (dynLambda!1948 (defaultEntry!5964 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!685617 () Bool)

(assert (=> start!89312 (=> (not res!685617) (not e!576901))))

(assert (=> start!89312 (= res!685617 (valid!1947 thiss!1427))))

(assert (=> start!89312 e!576901))

(assert (=> start!89312 e!576900))

(assert (=> start!89312 true))

(declare-fun mapIsEmpty!37473 () Bool)

(assert (=> mapIsEmpty!37473 mapRes!37473))

(declare-fun b!1023658 () Bool)

(assert (=> b!1023658 (= e!576898 (and e!576896 mapRes!37473))))

(declare-fun condMapEmpty!37473 () Bool)

(declare-fun mapDefault!37473 () ValueCell!11315)

