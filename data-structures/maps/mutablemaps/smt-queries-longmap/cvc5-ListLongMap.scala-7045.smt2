; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!89318 () Bool)

(assert start!89318)

(declare-fun b!1023717 () Bool)

(declare-fun b_free!20323 () Bool)

(declare-fun b_next!20323 () Bool)

(assert (=> b!1023717 (= b_free!20323 (not b_next!20323))))

(declare-fun tp!72004 () Bool)

(declare-fun b_and!32575 () Bool)

(assert (=> b!1023717 (= tp!72004 b_and!32575)))

(declare-fun b!1023713 () Bool)

(declare-fun e!576950 () Bool)

(declare-fun tp_is_empty!24043 () Bool)

(assert (=> b!1023713 (= e!576950 tp_is_empty!24043)))

(declare-fun b!1023714 () Bool)

(declare-fun res!685634 () Bool)

(declare-fun e!576952 () Bool)

(assert (=> b!1023714 (=> (not res!685634) (not e!576952))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1023714 (= res!685634 (and (= key!909 (bvneg key!909)) (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!685635 () Bool)

(assert (=> start!89318 (=> (not res!685635) (not e!576952))))

(declare-datatypes ((V!36931 0))(
  ( (V!36932 (val!12072 Int)) )
))
(declare-datatypes ((ValueCell!11318 0))(
  ( (ValueCellFull!11318 (v!14642 V!36931)) (EmptyCell!11318) )
))
(declare-datatypes ((array!64114 0))(
  ( (array!64115 (arr!30865 (Array (_ BitVec 32) (_ BitVec 64))) (size!31377 (_ BitVec 32))) )
))
(declare-datatypes ((array!64116 0))(
  ( (array!64117 (arr!30866 (Array (_ BitVec 32) ValueCell!11318)) (size!31378 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5230 0))(
  ( (LongMapFixedSize!5231 (defaultEntry!5967 Int) (mask!29593 (_ BitVec 32)) (extraKeys!5699 (_ BitVec 32)) (zeroValue!5803 V!36931) (minValue!5803 V!36931) (_size!2670 (_ BitVec 32)) (_keys!11109 array!64114) (_values!5990 array!64116) (_vacant!2670 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5230)

(declare-fun valid!1949 (LongMapFixedSize!5230) Bool)

(assert (=> start!89318 (= res!685635 (valid!1949 thiss!1427))))

(assert (=> start!89318 e!576952))

(declare-fun e!576954 () Bool)

(assert (=> start!89318 e!576954))

(assert (=> start!89318 true))

(declare-fun b!1023715 () Bool)

(declare-fun e!576951 () Bool)

(assert (=> b!1023715 (= e!576951 tp_is_empty!24043)))

(declare-fun b!1023716 () Bool)

(assert (=> b!1023716 (= e!576952 (not true))))

(declare-fun lt!450467 () Bool)

(declare-fun lt!450468 () V!36931)

(assert (=> b!1023716 (= lt!450467 (valid!1949 (LongMapFixedSize!5231 (defaultEntry!5967 thiss!1427) (mask!29593 thiss!1427) (bvand (extraKeys!5699 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5803 thiss!1427) lt!450468 (_size!2670 thiss!1427) (_keys!11109 thiss!1427) (_values!5990 thiss!1427) (_vacant!2670 thiss!1427))))))

(declare-datatypes ((tuple2!15608 0))(
  ( (tuple2!15609 (_1!7814 (_ BitVec 64)) (_2!7814 V!36931)) )
))
(declare-datatypes ((List!21823 0))(
  ( (Nil!21820) (Cons!21819 (h!23017 tuple2!15608) (t!30882 List!21823)) )
))
(declare-datatypes ((ListLongMap!13767 0))(
  ( (ListLongMap!13768 (toList!6899 List!21823)) )
))
(declare-fun -!475 (ListLongMap!13767 (_ BitVec 64)) ListLongMap!13767)

(declare-fun getCurrentListMap!3906 (array!64114 array!64116 (_ BitVec 32) (_ BitVec 32) V!36931 V!36931 (_ BitVec 32) Int) ListLongMap!13767)

(assert (=> b!1023716 (= (-!475 (getCurrentListMap!3906 (_keys!11109 thiss!1427) (_values!5990 thiss!1427) (mask!29593 thiss!1427) (extraKeys!5699 thiss!1427) (zeroValue!5803 thiss!1427) (minValue!5803 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!5967 thiss!1427)) #b1000000000000000000000000000000000000000000000000000000000000000) (getCurrentListMap!3906 (_keys!11109 thiss!1427) (_values!5990 thiss!1427) (mask!29593 thiss!1427) (bvand (extraKeys!5699 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5803 thiss!1427) lt!450468 #b00000000000000000000000000000000 (defaultEntry!5967 thiss!1427)))))

(declare-datatypes ((Unit!33302 0))(
  ( (Unit!33303) )
))
(declare-fun lt!450469 () Unit!33302)

(declare-fun lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!7 (array!64114 array!64116 (_ BitVec 32) (_ BitVec 32) (_ BitVec 32) V!36931 V!36931 V!36931 Int) Unit!33302)

(assert (=> b!1023716 (= lt!450469 (lemmaRemoveLongMinValueKeyThenRemoveKeyFromListMap!7 (_keys!11109 thiss!1427) (_values!5990 thiss!1427) (mask!29593 thiss!1427) (extraKeys!5699 thiss!1427) (bvand (extraKeys!5699 thiss!1427) #b00000000000000000000000000000001) (zeroValue!5803 thiss!1427) (minValue!5803 thiss!1427) lt!450468 (defaultEntry!5967 thiss!1427)))))

(declare-fun dynLambda!1950 (Int (_ BitVec 64)) V!36931)

(assert (=> b!1023716 (= lt!450468 (dynLambda!1950 (defaultEntry!5967 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!576955 () Bool)

(declare-fun array_inv!23783 (array!64114) Bool)

(declare-fun array_inv!23784 (array!64116) Bool)

(assert (=> b!1023717 (= e!576954 (and tp!72004 tp_is_empty!24043 (array_inv!23783 (_keys!11109 thiss!1427)) (array_inv!23784 (_values!5990 thiss!1427)) e!576955))))

(declare-fun mapNonEmpty!37482 () Bool)

(declare-fun mapRes!37482 () Bool)

(declare-fun tp!72005 () Bool)

(assert (=> mapNonEmpty!37482 (= mapRes!37482 (and tp!72005 e!576951))))

(declare-fun mapRest!37482 () (Array (_ BitVec 32) ValueCell!11318))

(declare-fun mapKey!37482 () (_ BitVec 32))

(declare-fun mapValue!37482 () ValueCell!11318)

(assert (=> mapNonEmpty!37482 (= (arr!30866 (_values!5990 thiss!1427)) (store mapRest!37482 mapKey!37482 mapValue!37482))))

(declare-fun mapIsEmpty!37482 () Bool)

(assert (=> mapIsEmpty!37482 mapRes!37482))

(declare-fun b!1023718 () Bool)

(assert (=> b!1023718 (= e!576955 (and e!576950 mapRes!37482))))

(declare-fun condMapEmpty!37482 () Bool)

(declare-fun mapDefault!37482 () ValueCell!11318)

