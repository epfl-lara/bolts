; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90108 () Bool)

(assert start!90108)

(declare-fun b!1031685 () Bool)

(declare-fun b_free!20679 () Bool)

(declare-fun b_next!20679 () Bool)

(assert (=> b!1031685 (= b_free!20679 (not b_next!20679))))

(declare-fun tp!73108 () Bool)

(declare-fun b_and!33143 () Bool)

(assert (=> b!1031685 (= tp!73108 b_and!33143)))

(declare-fun mapIsEmpty!38052 () Bool)

(declare-fun mapRes!38052 () Bool)

(assert (=> mapIsEmpty!38052 mapRes!38052))

(declare-fun b!1031678 () Bool)

(declare-fun e!582787 () Bool)

(declare-fun tp_is_empty!24399 () Bool)

(assert (=> b!1031678 (= e!582787 tp_is_empty!24399)))

(declare-fun b!1031679 () Bool)

(declare-fun e!582785 () Bool)

(assert (=> b!1031679 (= e!582785 tp_is_empty!24399)))

(declare-fun res!689859 () Bool)

(declare-fun e!582780 () Bool)

(assert (=> start!90108 (=> (not res!689859) (not e!582780))))

(declare-datatypes ((V!37405 0))(
  ( (V!37406 (val!12250 Int)) )
))
(declare-datatypes ((ValueCell!11496 0))(
  ( (ValueCellFull!11496 (v!14828 V!37405)) (EmptyCell!11496) )
))
(declare-datatypes ((array!64846 0))(
  ( (array!64847 (arr!31221 (Array (_ BitVec 32) (_ BitVec 64))) (size!31739 (_ BitVec 32))) )
))
(declare-datatypes ((array!64848 0))(
  ( (array!64849 (arr!31222 (Array (_ BitVec 32) ValueCell!11496)) (size!31740 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5586 0))(
  ( (LongMapFixedSize!5587 (defaultEntry!6167 Int) (mask!29964 (_ BitVec 32)) (extraKeys!5899 (_ BitVec 32)) (zeroValue!6003 V!37405) (minValue!6003 V!37405) (_size!2848 (_ BitVec 32)) (_keys!11337 array!64846) (_values!6190 array!64848) (_vacant!2848 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5586)

(declare-fun valid!2064 (LongMapFixedSize!5586) Bool)

(assert (=> start!90108 (= res!689859 (valid!2064 thiss!1427))))

(assert (=> start!90108 e!582780))

(declare-fun e!582783 () Bool)

(assert (=> start!90108 e!582783))

(assert (=> start!90108 true))

(declare-fun b!1031680 () Bool)

(declare-fun e!582782 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((Unit!33739 0))(
  ( (Unit!33740) )
))
(declare-datatypes ((tuple2!15790 0))(
  ( (tuple2!15791 (_1!7905 Unit!33739) (_2!7905 LongMapFixedSize!5586)) )
))
(declare-fun lt!455601 () tuple2!15790)

(assert (=> b!1031680 (= e!582782 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5899 (_2!7905 lt!455601)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5899 (_2!7905 lt!455601)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1031681 () Bool)

(declare-fun res!689860 () Bool)

(assert (=> b!1031681 (=> (not res!689860) (not e!582780))))

(assert (=> b!1031681 (= res!689860 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1031682 () Bool)

(declare-fun e!582779 () Bool)

(assert (=> b!1031682 (= e!582779 (and e!582787 mapRes!38052))))

(declare-fun condMapEmpty!38052 () Bool)

(declare-fun mapDefault!38052 () ValueCell!11496)

(assert (=> b!1031682 (= condMapEmpty!38052 (= (arr!31222 (_values!6190 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11496)) mapDefault!38052)))))

(declare-fun b!1031683 () Bool)

(declare-fun e!582786 () Unit!33739)

(declare-fun Unit!33741 () Unit!33739)

(assert (=> b!1031683 (= e!582786 Unit!33741)))

(declare-fun b!1031684 () Bool)

(declare-fun e!582778 () Bool)

(assert (=> b!1031684 (= e!582778 false)))

(declare-fun mapNonEmpty!38052 () Bool)

(declare-fun tp!73109 () Bool)

(assert (=> mapNonEmpty!38052 (= mapRes!38052 (and tp!73109 e!582785))))

(declare-fun mapKey!38052 () (_ BitVec 32))

(declare-fun mapRest!38052 () (Array (_ BitVec 32) ValueCell!11496))

(declare-fun mapValue!38052 () ValueCell!11496)

(assert (=> mapNonEmpty!38052 (= (arr!31222 (_values!6190 thiss!1427)) (store mapRest!38052 mapKey!38052 mapValue!38052))))

(declare-fun array_inv!24009 (array!64846) Bool)

(declare-fun array_inv!24010 (array!64848) Bool)

(assert (=> b!1031685 (= e!582783 (and tp!73108 tp_is_empty!24399 (array_inv!24009 (_keys!11337 thiss!1427)) (array_inv!24010 (_values!6190 thiss!1427)) e!582779))))

(declare-fun b!1031686 () Bool)

(declare-fun e!582784 () Bool)

(assert (=> b!1031686 (= e!582784 (not true))))

(declare-fun lt!455605 () Bool)

(assert (=> b!1031686 (= lt!455605 (valid!2064 (_2!7905 lt!455601)))))

(declare-fun lt!455607 () Unit!33739)

(assert (=> b!1031686 (= lt!455607 e!582786)))

(declare-fun c!104188 () Bool)

(declare-datatypes ((tuple2!15792 0))(
  ( (tuple2!15793 (_1!7906 (_ BitVec 64)) (_2!7906 V!37405)) )
))
(declare-datatypes ((List!21992 0))(
  ( (Nil!21989) (Cons!21988 (h!23190 tuple2!15792) (t!31173 List!21992)) )
))
(declare-datatypes ((ListLongMap!13849 0))(
  ( (ListLongMap!13850 (toList!6940 List!21992)) )
))
(declare-fun contains!6019 (ListLongMap!13849 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3947 (array!64846 array!64848 (_ BitVec 32) (_ BitVec 32) V!37405 V!37405 (_ BitVec 32) Int) ListLongMap!13849)

(assert (=> b!1031686 (= c!104188 (contains!6019 (getCurrentListMap!3947 (_keys!11337 (_2!7905 lt!455601)) (_values!6190 (_2!7905 lt!455601)) (mask!29964 (_2!7905 lt!455601)) (extraKeys!5899 (_2!7905 lt!455601)) (zeroValue!6003 (_2!7905 lt!455601)) (minValue!6003 (_2!7905 lt!455601)) #b00000000000000000000000000000000 (defaultEntry!6167 (_2!7905 lt!455601))) key!909))))

(declare-fun lt!455609 () array!64848)

(declare-fun lt!455610 () array!64846)

(declare-fun Unit!33742 () Unit!33739)

(declare-fun Unit!33743 () Unit!33739)

(assert (=> b!1031686 (= lt!455601 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2848 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15791 Unit!33742 (LongMapFixedSize!5587 (defaultEntry!6167 thiss!1427) (mask!29964 thiss!1427) (extraKeys!5899 thiss!1427) (zeroValue!6003 thiss!1427) (minValue!6003 thiss!1427) (bvsub (_size!2848 thiss!1427) #b00000000000000000000000000000001) lt!455610 lt!455609 (bvadd #b00000000000000000000000000000001 (_vacant!2848 thiss!1427)))) (tuple2!15791 Unit!33743 (LongMapFixedSize!5587 (defaultEntry!6167 thiss!1427) (mask!29964 thiss!1427) (extraKeys!5899 thiss!1427) (zeroValue!6003 thiss!1427) (minValue!6003 thiss!1427) (bvsub (_size!2848 thiss!1427) #b00000000000000000000000000000001) lt!455610 lt!455609 (_vacant!2848 thiss!1427)))))))

(declare-fun -!516 (ListLongMap!13849 (_ BitVec 64)) ListLongMap!13849)

(assert (=> b!1031686 (= (-!516 (getCurrentListMap!3947 (_keys!11337 thiss!1427) (_values!6190 thiss!1427) (mask!29964 thiss!1427) (extraKeys!5899 thiss!1427) (zeroValue!6003 thiss!1427) (minValue!6003 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6167 thiss!1427)) key!909) (getCurrentListMap!3947 lt!455610 lt!455609 (mask!29964 thiss!1427) (extraKeys!5899 thiss!1427) (zeroValue!6003 thiss!1427) (minValue!6003 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6167 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9706 0))(
  ( (MissingZero!9706 (index!41194 (_ BitVec 32))) (Found!9706 (index!41195 (_ BitVec 32))) (Intermediate!9706 (undefined!10518 Bool) (index!41196 (_ BitVec 32)) (x!91881 (_ BitVec 32))) (Undefined!9706) (MissingVacant!9706 (index!41197 (_ BitVec 32))) )
))
(declare-fun lt!455603 () SeekEntryResult!9706)

(declare-fun dynLambda!1991 (Int (_ BitVec 64)) V!37405)

(assert (=> b!1031686 (= lt!455609 (array!64849 (store (arr!31222 (_values!6190 thiss!1427)) (index!41195 lt!455603) (ValueCellFull!11496 (dynLambda!1991 (defaultEntry!6167 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31740 (_values!6190 thiss!1427))))))

(declare-fun lt!455600 () Unit!33739)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!40 (array!64846 array!64848 (_ BitVec 32) (_ BitVec 32) V!37405 V!37405 (_ BitVec 32) (_ BitVec 64) Int) Unit!33739)

(assert (=> b!1031686 (= lt!455600 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!40 (_keys!11337 thiss!1427) (_values!6190 thiss!1427) (mask!29964 thiss!1427) (extraKeys!5899 thiss!1427) (zeroValue!6003 thiss!1427) (minValue!6003 thiss!1427) (index!41195 lt!455603) key!909 (defaultEntry!6167 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64846 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031686 (not (arrayContainsKey!0 lt!455610 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455599 () Unit!33739)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64846 (_ BitVec 32) (_ BitVec 64)) Unit!33739)

(assert (=> b!1031686 (= lt!455599 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11337 thiss!1427) (index!41195 lt!455603) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64846 (_ BitVec 32)) Bool)

(assert (=> b!1031686 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455610 (mask!29964 thiss!1427))))

(declare-fun lt!455602 () Unit!33739)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64846 (_ BitVec 32) (_ BitVec 32)) Unit!33739)

(assert (=> b!1031686 (= lt!455602 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11337 thiss!1427) (index!41195 lt!455603) (mask!29964 thiss!1427)))))

(declare-datatypes ((List!21993 0))(
  ( (Nil!21990) (Cons!21989 (h!23191 (_ BitVec 64)) (t!31174 List!21993)) )
))
(declare-fun arrayNoDuplicates!0 (array!64846 (_ BitVec 32) List!21993) Bool)

(assert (=> b!1031686 (arrayNoDuplicates!0 lt!455610 #b00000000000000000000000000000000 Nil!21990)))

(declare-fun lt!455606 () Unit!33739)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64846 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21993) Unit!33739)

(assert (=> b!1031686 (= lt!455606 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11337 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41195 lt!455603) #b00000000000000000000000000000000 Nil!21990))))

(declare-fun arrayCountValidKeys!0 (array!64846 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031686 (= (arrayCountValidKeys!0 lt!455610 #b00000000000000000000000000000000 (size!31739 (_keys!11337 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11337 thiss!1427) #b00000000000000000000000000000000 (size!31739 (_keys!11337 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031686 (= lt!455610 (array!64847 (store (arr!31221 (_keys!11337 thiss!1427)) (index!41195 lt!455603) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31739 (_keys!11337 thiss!1427))))))

(declare-fun lt!455604 () Unit!33739)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64846 (_ BitVec 32) (_ BitVec 64)) Unit!33739)

(assert (=> b!1031686 (= lt!455604 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11337 thiss!1427) (index!41195 lt!455603) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031687 () Bool)

(assert (=> b!1031687 (= e!582780 e!582784)))

(declare-fun res!689862 () Bool)

(assert (=> b!1031687 (=> (not res!689862) (not e!582784))))

(get-info :version)

(assert (=> b!1031687 (= res!689862 ((_ is Found!9706) lt!455603))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64846 (_ BitVec 32)) SeekEntryResult!9706)

(assert (=> b!1031687 (= lt!455603 (seekEntry!0 key!909 (_keys!11337 thiss!1427) (mask!29964 thiss!1427)))))

(declare-fun b!1031688 () Bool)

(assert (=> b!1031688 (= e!582782 (arrayContainsKey!0 (_keys!11337 (_2!7905 lt!455601)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1031689 () Bool)

(declare-fun Unit!33744 () Unit!33739)

(assert (=> b!1031689 (= e!582786 Unit!33744)))

(declare-fun lt!455608 () Unit!33739)

(declare-fun lemmaKeyInListMapIsInArray!350 (array!64846 array!64848 (_ BitVec 32) (_ BitVec 32) V!37405 V!37405 (_ BitVec 64) Int) Unit!33739)

(assert (=> b!1031689 (= lt!455608 (lemmaKeyInListMapIsInArray!350 (_keys!11337 (_2!7905 lt!455601)) (_values!6190 (_2!7905 lt!455601)) (mask!29964 (_2!7905 lt!455601)) (extraKeys!5899 (_2!7905 lt!455601)) (zeroValue!6003 (_2!7905 lt!455601)) (minValue!6003 (_2!7905 lt!455601)) key!909 (defaultEntry!6167 (_2!7905 lt!455601))))))

(declare-fun c!104189 () Bool)

(assert (=> b!1031689 (= c!104189 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689861 () Bool)

(assert (=> b!1031689 (= res!689861 e!582782)))

(assert (=> b!1031689 (=> (not res!689861) (not e!582778))))

(assert (=> b!1031689 e!582778))

(assert (= (and start!90108 res!689859) b!1031681))

(assert (= (and b!1031681 res!689860) b!1031687))

(assert (= (and b!1031687 res!689862) b!1031686))

(assert (= (and b!1031686 c!104188) b!1031689))

(assert (= (and b!1031686 (not c!104188)) b!1031683))

(assert (= (and b!1031689 c!104189) b!1031688))

(assert (= (and b!1031689 (not c!104189)) b!1031680))

(assert (= (and b!1031689 res!689861) b!1031684))

(assert (= (and b!1031682 condMapEmpty!38052) mapIsEmpty!38052))

(assert (= (and b!1031682 (not condMapEmpty!38052)) mapNonEmpty!38052))

(assert (= (and mapNonEmpty!38052 ((_ is ValueCellFull!11496) mapValue!38052)) b!1031679))

(assert (= (and b!1031682 ((_ is ValueCellFull!11496) mapDefault!38052)) b!1031678))

(assert (= b!1031685 b!1031682))

(assert (= start!90108 b!1031685))

(declare-fun b_lambda!16053 () Bool)

(assert (=> (not b_lambda!16053) (not b!1031686)))

(declare-fun t!31172 () Bool)

(declare-fun tb!7005 () Bool)

(assert (=> (and b!1031685 (= (defaultEntry!6167 thiss!1427) (defaultEntry!6167 thiss!1427)) t!31172) tb!7005))

(declare-fun result!14331 () Bool)

(assert (=> tb!7005 (= result!14331 tp_is_empty!24399)))

(assert (=> b!1031686 t!31172))

(declare-fun b_and!33145 () Bool)

(assert (= b_and!33143 (and (=> t!31172 result!14331) b_and!33145)))

(declare-fun m!952069 () Bool)

(assert (=> mapNonEmpty!38052 m!952069))

(declare-fun m!952071 () Bool)

(assert (=> b!1031686 m!952071))

(declare-fun m!952073 () Bool)

(assert (=> b!1031686 m!952073))

(declare-fun m!952075 () Bool)

(assert (=> b!1031686 m!952075))

(declare-fun m!952077 () Bool)

(assert (=> b!1031686 m!952077))

(declare-fun m!952079 () Bool)

(assert (=> b!1031686 m!952079))

(declare-fun m!952081 () Bool)

(assert (=> b!1031686 m!952081))

(declare-fun m!952083 () Bool)

(assert (=> b!1031686 m!952083))

(declare-fun m!952085 () Bool)

(assert (=> b!1031686 m!952085))

(declare-fun m!952087 () Bool)

(assert (=> b!1031686 m!952087))

(declare-fun m!952089 () Bool)

(assert (=> b!1031686 m!952089))

(declare-fun m!952091 () Bool)

(assert (=> b!1031686 m!952091))

(declare-fun m!952093 () Bool)

(assert (=> b!1031686 m!952093))

(assert (=> b!1031686 m!952091))

(declare-fun m!952095 () Bool)

(assert (=> b!1031686 m!952095))

(declare-fun m!952097 () Bool)

(assert (=> b!1031686 m!952097))

(declare-fun m!952099 () Bool)

(assert (=> b!1031686 m!952099))

(assert (=> b!1031686 m!952075))

(declare-fun m!952101 () Bool)

(assert (=> b!1031686 m!952101))

(declare-fun m!952103 () Bool)

(assert (=> b!1031686 m!952103))

(declare-fun m!952105 () Bool)

(assert (=> b!1031686 m!952105))

(declare-fun m!952107 () Bool)

(assert (=> b!1031686 m!952107))

(declare-fun m!952109 () Bool)

(assert (=> b!1031687 m!952109))

(declare-fun m!952111 () Bool)

(assert (=> b!1031689 m!952111))

(declare-fun m!952113 () Bool)

(assert (=> b!1031685 m!952113))

(declare-fun m!952115 () Bool)

(assert (=> b!1031685 m!952115))

(declare-fun m!952117 () Bool)

(assert (=> b!1031688 m!952117))

(declare-fun m!952119 () Bool)

(assert (=> start!90108 m!952119))

(check-sat (not mapNonEmpty!38052) (not b_next!20679) (not b!1031687) (not b!1031688) (not b!1031689) b_and!33145 (not b!1031686) (not start!90108) tp_is_empty!24399 (not b!1031685) (not b_lambda!16053))
(check-sat b_and!33145 (not b_next!20679))
