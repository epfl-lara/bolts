; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89306 () Bool)

(assert start!89306)

(declare-fun b!1023593 () Bool)

(declare-fun b_free!20311 () Bool)

(declare-fun b_next!20311 () Bool)

(assert (=> b!1023593 (= b_free!20311 (not b_next!20311))))

(declare-fun tp!71969 () Bool)

(declare-fun b_and!32551 () Bool)

(assert (=> b!1023593 (= tp!71969 b_and!32551)))

(declare-fun tp_is_empty!24031 () Bool)

(declare-fun e!576843 () Bool)

(declare-fun e!576842 () Bool)

(declare-datatypes ((V!36915 0))(
  ( (V!36916 (val!12066 Int)) )
))
(declare-datatypes ((ValueCell!11312 0))(
  ( (ValueCellFull!11312 (v!14636 V!36915)) (EmptyCell!11312) )
))
(declare-datatypes ((array!64090 0))(
  ( (array!64091 (arr!30853 (Array (_ BitVec 32) (_ BitVec 64))) (size!31365 (_ BitVec 32))) )
))
(declare-datatypes ((array!64092 0))(
  ( (array!64093 (arr!30854 (Array (_ BitVec 32) ValueCell!11312)) (size!31366 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5218 0))(
  ( (LongMapFixedSize!5219 (defaultEntry!5961 Int) (mask!29583 (_ BitVec 32)) (extraKeys!5693 (_ BitVec 32)) (zeroValue!5797 V!36915) (minValue!5797 V!36915) (_size!2664 (_ BitVec 32)) (_keys!11103 array!64090) (_values!5984 array!64092) (_vacant!2664 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5218)

(declare-fun array_inv!23775 (array!64090) Bool)

(declare-fun array_inv!23776 (array!64092) Bool)

(assert (=> b!1023593 (= e!576842 (and tp!71969 tp_is_empty!24031 (array_inv!23775 (_keys!11103 thiss!1427)) (array_inv!23776 (_values!5984 thiss!1427)) e!576843))))

(declare-fun mapNonEmpty!37464 () Bool)

(declare-fun mapRes!37464 () Bool)

(declare-fun tp!71968 () Bool)

(declare-fun e!576844 () Bool)

(assert (=> mapNonEmpty!37464 (= mapRes!37464 (and tp!71968 e!576844))))

(declare-fun mapValue!37464 () ValueCell!11312)

(declare-fun mapKey!37464 () (_ BitVec 32))

(declare-fun mapRest!37464 () (Array (_ BitVec 32) ValueCell!11312))

(assert (=> mapNonEmpty!37464 (= (arr!30854 (_values!5984 thiss!1427)) (store mapRest!37464 mapKey!37464 mapValue!37464))))

(declare-fun b!1023594 () Bool)

(assert (=> b!1023594 (= e!576844 tp_is_empty!24031)))

(declare-fun b!1023595 () Bool)

(declare-fun e!576847 () Bool)

(assert (=> b!1023595 (= e!576847 (not true))))

(declare-fun lt!450414 () Bool)

(declare-fun lt!450413 () V!36915)

(declare-fun valid!1944 (LongMapFixedSize!5218) Bool)

(assert (=> b!1023595 (= lt!450414 (valid!1944 (LongMapFixedSize!5219 (defaultEntry!5961 thiss!1427) (mask!29583 thiss!1427) (bvand (extraKeys!5693 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5797 thiss!1427) lt!450413 (_size!2664 thiss!1427) (_keys!11103 thiss!1427) (_values!5984 thiss!1427) (_vacant!2664 thiss!1427))))))

(declare-datatypes ((tuple2!15598 0))(
  ( (tuple2!15599 (_1!7809 (_ BitVec 64)) (_2!7809 V!36915)) )
))
(declare-datatypes ((List!21818 0))(
  ( (Nil!21815) (Cons!21814 (h!23012 tuple2!15598) (t!30865 List!21818)) )
))
(declare-datatypes ((ListLongMap!13757 0))(
  ( (ListLongMap!13758 (toList!6894 List!21818)) )
))
(declare-fun -!470 (ListLongMap!13757 (_ BitVec 64)) ListLongMap!13757)

(declare-fun getCurrentListMap!3901 (array!64090 array!64092 (_ BitVec 32) (_ BitVec 32) V!36915 V!36915 (_ BitVec 32) Int) ListLongMap!13757)

(assert (=> b!1023595 (= (-!470 (getCurrentListMap!3901 (_keys!11103 thiss!1427) (_values!5984 thiss!1427) (mask!29583 thiss!1427) (extraKeys!5693 thiss!1427) (zeroValue!5797 thiss!1427) (minValue!5797 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5961 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3901 (_keys!11103 thiss!1427) (_values!5984 thiss!1427) (mask!29583 thiss!1427) (bvand (extraKeys!5693 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5797 thiss!1427) lt!450413 #b00000000000000000000000000000000 (defaultEntry!5961 thiss!1427)))))

(declare-datatypes ((Unit!33292 0))(
  ( (Unit!33293) )
))
(declare-fun lt!450415 () Unit!33292)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!2 (array!64090 array!64092 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36915 V!36915 V!36915 Int) Unit!33292)

(assert (=> b!1023595 (= lt!450415 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!2 (_keys!11103 thiss!1427) (_values!5984 thiss!1427) (mask!29583 thiss!1427) (extraKeys!5693 thiss!1427) (bvand (extraKeys!5693 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5797 thiss!1427) (minValue!5797 thiss!1427) lt!450413 (defaultEntry!5961 thiss!1427)))))

(declare-fun dynLambda!1945 (Int (_ BitVec 64)) V!36915)

(assert (=> b!1023595 (= lt!450413 (dynLambda!1945 (defaultEntry!5961 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1023596 () Bool)

(declare-fun res!685598 () Bool)

(assert (=> b!1023596 (=> (not res!685598) (not e!576847))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023596 (= res!685598 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!685599 () Bool)

(assert (=> start!89306 (=> (not res!685599) (not e!576847))))

(assert (=> start!89306 (= res!685599 (valid!1944 thiss!1427))))

(assert (=> start!89306 e!576847))

(assert (=> start!89306 e!576842))

(assert (=> start!89306 true))

(declare-fun b!1023597 () Bool)

(declare-fun e!576845 () Bool)

(assert (=> b!1023597 (= e!576843 (and e!576845 mapRes!37464))))

(declare-fun condMapEmpty!37464 () Bool)

(declare-fun mapDefault!37464 () ValueCell!11312)

