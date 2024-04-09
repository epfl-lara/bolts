; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!90114 () Bool)

(assert start!90114)

(declare-fun b!1031797 () Bool)

(declare-fun b_free!20685 () Bool)

(declare-fun b_next!20685 () Bool)

(assert (=> b!1031797 (= b_free!20685 (not b_next!20685))))

(declare-fun tp!73126 () Bool)

(declare-fun b_and!33155 () Bool)

(assert (=> b!1031797 (= tp!73126 b_and!33155)))

(declare-fun b!1031792 () Bool)

(declare-fun e!582874 () Bool)

(assert (=> b!1031792 (= e!582874 (not true))))

(declare-fun lt!455712 () Bool)

(declare-datatypes ((V!37413 0))(
  ( (V!37414 (val!12253 Int)) )
))
(declare-datatypes ((ValueCell!11499 0))(
  ( (ValueCellFull!11499 (v!14831 V!37413)) (EmptyCell!11499) )
))
(declare-datatypes ((Unit!33755 0))(
  ( (Unit!33756) )
))
(declare-datatypes ((array!64858 0))(
  ( (array!64859 (arr!31227 (Array (_ BitVec 32) (_ BitVec 64))) (size!31745 (_ BitVec 32))) )
))
(declare-datatypes ((array!64860 0))(
  ( (array!64861 (arr!31228 (Array (_ BitVec 32) ValueCell!11499)) (size!31746 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5592 0))(
  ( (LongMapFixedSize!5593 (defaultEntry!6170 Int) (mask!29969 (_ BitVec 32)) (extraKeys!5902 (_ BitVec 32)) (zeroValue!6006 V!37413) (minValue!6006 V!37413) (_size!2851 (_ BitVec 32)) (_keys!11340 array!64858) (_values!6193 array!64860) (_vacant!2851 (_ BitVec 32))) )
))
(declare-datatypes ((tuple2!15802 0))(
  ( (tuple2!15803 (_1!7911 Unit!33755) (_2!7911 LongMapFixedSize!5592)) )
))
(declare-fun lt!455716 () tuple2!15802)

(declare-fun valid!2067 (LongMapFixedSize!5592) Bool)

(assert (=> b!1031792 (= lt!455712 (valid!2067 (_2!7911 lt!455716)))))

(declare-fun lt!455718 () Unit!33755)

(declare-fun e!582876 () Unit!33755)

(assert (=> b!1031792 (= lt!455718 e!582876)))

(declare-fun c!104206 () Bool)

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15804 0))(
  ( (tuple2!15805 (_1!7912 (_ BitVec 64)) (_2!7912 V!37413)) )
))
(declare-datatypes ((List!21998 0))(
  ( (Nil!21995) (Cons!21994 (h!23196 tuple2!15804) (t!31185 List!21998)) )
))
(declare-datatypes ((ListLongMap!13855 0))(
  ( (ListLongMap!13856 (toList!6943 List!21998)) )
))
(declare-fun contains!6022 (ListLongMap!13855 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3950 (array!64858 array!64860 (_ BitVec 32) (_ BitVec 32) V!37413 V!37413 (_ BitVec 32) Int) ListLongMap!13855)

(assert (=> b!1031792 (= c!104206 (contains!6022 (getCurrentListMap!3950 (_keys!11340 (_2!7911 lt!455716)) (_values!6193 (_2!7911 lt!455716)) (mask!29969 (_2!7911 lt!455716)) (extraKeys!5902 (_2!7911 lt!455716)) (zeroValue!6006 (_2!7911 lt!455716)) (minValue!6006 (_2!7911 lt!455716)) #b00000000000000000000000000000000 (defaultEntry!6170 (_2!7911 lt!455716))) key!909))))

(declare-fun lt!455714 () array!64858)

(declare-fun lt!455707 () array!64860)

(declare-fun thiss!1427 () LongMapFixedSize!5592)

(declare-fun Unit!33757 () Unit!33755)

(declare-fun Unit!33758 () Unit!33755)

(assert (=> b!1031792 (= lt!455716 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2851 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15803 Unit!33757 (LongMapFixedSize!5593 (defaultEntry!6170 thiss!1427) (mask!29969 thiss!1427) (extraKeys!5902 thiss!1427) (zeroValue!6006 thiss!1427) (minValue!6006 thiss!1427) (bvsub (_size!2851 thiss!1427) #b00000000000000000000000000000001) lt!455714 lt!455707 (bvadd #b00000000000000000000000000000001 (_vacant!2851 thiss!1427)))) (tuple2!15803 Unit!33758 (LongMapFixedSize!5593 (defaultEntry!6170 thiss!1427) (mask!29969 thiss!1427) (extraKeys!5902 thiss!1427) (zeroValue!6006 thiss!1427) (minValue!6006 thiss!1427) (bvsub (_size!2851 thiss!1427) #b00000000000000000000000000000001) lt!455714 lt!455707 (_vacant!2851 thiss!1427)))))))

(declare-fun -!519 (ListLongMap!13855 (_ BitVec 64)) ListLongMap!13855)

(assert (=> b!1031792 (= (-!519 (getCurrentListMap!3950 (_keys!11340 thiss!1427) (_values!6193 thiss!1427) (mask!29969 thiss!1427) (extraKeys!5902 thiss!1427) (zeroValue!6006 thiss!1427) (minValue!6006 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6170 thiss!1427)) key!909) (getCurrentListMap!3950 lt!455714 lt!455707 (mask!29969 thiss!1427) (extraKeys!5902 thiss!1427) (zeroValue!6006 thiss!1427) (minValue!6006 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6170 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9709 0))(
  ( (MissingZero!9709 (index!41206 (_ BitVec 32))) (Found!9709 (index!41207 (_ BitVec 32))) (Intermediate!9709 (undefined!10521 Bool) (index!41208 (_ BitVec 32)) (x!91898 (_ BitVec 32))) (Undefined!9709) (MissingVacant!9709 (index!41209 (_ BitVec 32))) )
))
(declare-fun lt!455711 () SeekEntryResult!9709)

(declare-fun dynLambda!1994 (Int (_ BitVec 64)) V!37413)

(assert (=> b!1031792 (= lt!455707 (array!64861 (store (arr!31228 (_values!6193 thiss!1427)) (index!41207 lt!455711) (ValueCellFull!11499 (dynLambda!1994 (defaultEntry!6170 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31746 (_values!6193 thiss!1427))))))

(declare-fun lt!455709 () Unit!33755)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!43 (array!64858 array!64860 (_ BitVec 32) (_ BitVec 32) V!37413 V!37413 (_ BitVec 32) (_ BitVec 64) Int) Unit!33755)

(assert (=> b!1031792 (= lt!455709 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!43 (_keys!11340 thiss!1427) (_values!6193 thiss!1427) (mask!29969 thiss!1427) (extraKeys!5902 thiss!1427) (zeroValue!6006 thiss!1427) (minValue!6006 thiss!1427) (index!41207 lt!455711) key!909 (defaultEntry!6170 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64858 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1031792 (not (arrayContainsKey!0 lt!455714 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!455713 () Unit!33755)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64858 (_ BitVec 32) (_ BitVec 64)) Unit!33755)

(assert (=> b!1031792 (= lt!455713 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11340 thiss!1427) (index!41207 lt!455711) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64858 (_ BitVec 32)) Bool)

(assert (=> b!1031792 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!455714 (mask!29969 thiss!1427))))

(declare-fun lt!455710 () Unit!33755)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64858 (_ BitVec 32) (_ BitVec 32)) Unit!33755)

(assert (=> b!1031792 (= lt!455710 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11340 thiss!1427) (index!41207 lt!455711) (mask!29969 thiss!1427)))))

(declare-datatypes ((List!21999 0))(
  ( (Nil!21996) (Cons!21995 (h!23197 (_ BitVec 64)) (t!31186 List!21999)) )
))
(declare-fun arrayNoDuplicates!0 (array!64858 (_ BitVec 32) List!21999) Bool)

(assert (=> b!1031792 (arrayNoDuplicates!0 lt!455714 #b00000000000000000000000000000000 Nil!21996)))

(declare-fun lt!455708 () Unit!33755)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64858 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21999) Unit!33755)

(assert (=> b!1031792 (= lt!455708 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11340 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41207 lt!455711) #b00000000000000000000000000000000 Nil!21996))))

(declare-fun arrayCountValidKeys!0 (array!64858 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1031792 (= (arrayCountValidKeys!0 lt!455714 #b00000000000000000000000000000000 (size!31745 (_keys!11340 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11340 thiss!1427) #b00000000000000000000000000000000 (size!31745 (_keys!11340 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1031792 (= lt!455714 (array!64859 (store (arr!31227 (_keys!11340 thiss!1427)) (index!41207 lt!455711) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31745 (_keys!11340 thiss!1427))))))

(declare-fun lt!455717 () Unit!33755)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64858 (_ BitVec 32) (_ BitVec 64)) Unit!33755)

(assert (=> b!1031792 (= lt!455717 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11340 thiss!1427) (index!41207 lt!455711) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1031793 () Bool)

(declare-fun Unit!33759 () Unit!33755)

(assert (=> b!1031793 (= e!582876 Unit!33759)))

(declare-fun lt!455715 () Unit!33755)

(declare-fun lemmaKeyInListMapIsInArray!352 (array!64858 array!64860 (_ BitVec 32) (_ BitVec 32) V!37413 V!37413 (_ BitVec 64) Int) Unit!33755)

(assert (=> b!1031793 (= lt!455715 (lemmaKeyInListMapIsInArray!352 (_keys!11340 (_2!7911 lt!455716)) (_values!6193 (_2!7911 lt!455716)) (mask!29969 (_2!7911 lt!455716)) (extraKeys!5902 (_2!7911 lt!455716)) (zeroValue!6006 (_2!7911 lt!455716)) (minValue!6006 (_2!7911 lt!455716)) key!909 (defaultEntry!6170 (_2!7911 lt!455716))))))

(declare-fun c!104207 () Bool)

(assert (=> b!1031793 (= c!104207 (and (not (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!909 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!689895 () Bool)

(declare-fun e!582868 () Bool)

(assert (=> b!1031793 (= res!689895 e!582868)))

(declare-fun e!582871 () Bool)

(assert (=> b!1031793 (=> (not res!689895) (not e!582871))))

(assert (=> b!1031793 e!582871))

(declare-fun b!1031794 () Bool)

(declare-fun e!582877 () Bool)

(assert (=> b!1031794 (= e!582877 e!582874)))

(declare-fun res!689897 () Bool)

(assert (=> b!1031794 (=> (not res!689897) (not e!582874))))

(get-info :version)

(assert (=> b!1031794 (= res!689897 ((_ is Found!9709) lt!455711))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64858 (_ BitVec 32)) SeekEntryResult!9709)

(assert (=> b!1031794 (= lt!455711 (seekEntry!0 key!909 (_keys!11340 thiss!1427) (mask!29969 thiss!1427)))))

(declare-fun b!1031795 () Bool)

(assert (=> b!1031795 (= e!582868 (arrayContainsKey!0 (_keys!11340 (_2!7911 lt!455716)) key!909 #b00000000000000000000000000000000))))

(declare-fun b!1031796 () Bool)

(declare-fun res!689896 () Bool)

(assert (=> b!1031796 (=> (not res!689896) (not e!582877))))

(assert (=> b!1031796 (= res!689896 (not (= key!909 (bvneg key!909))))))

(declare-fun mapNonEmpty!38061 () Bool)

(declare-fun mapRes!38061 () Bool)

(declare-fun tp!73127 () Bool)

(declare-fun e!582870 () Bool)

(assert (=> mapNonEmpty!38061 (= mapRes!38061 (and tp!73127 e!582870))))

(declare-fun mapKey!38061 () (_ BitVec 32))

(declare-fun mapRest!38061 () (Array (_ BitVec 32) ValueCell!11499))

(declare-fun mapValue!38061 () ValueCell!11499)

(assert (=> mapNonEmpty!38061 (= (arr!31228 (_values!6193 thiss!1427)) (store mapRest!38061 mapKey!38061 mapValue!38061))))

(declare-fun res!689898 () Bool)

(assert (=> start!90114 (=> (not res!689898) (not e!582877))))

(assert (=> start!90114 (= res!689898 (valid!2067 thiss!1427))))

(assert (=> start!90114 e!582877))

(declare-fun e!582872 () Bool)

(assert (=> start!90114 e!582872))

(assert (=> start!90114 true))

(declare-fun e!582875 () Bool)

(declare-fun tp_is_empty!24405 () Bool)

(declare-fun array_inv!24011 (array!64858) Bool)

(declare-fun array_inv!24012 (array!64860) Bool)

(assert (=> b!1031797 (= e!582872 (and tp!73126 tp_is_empty!24405 (array_inv!24011 (_keys!11340 thiss!1427)) (array_inv!24012 (_values!6193 thiss!1427)) e!582875))))

(declare-fun b!1031798 () Bool)

(assert (=> b!1031798 (= e!582871 false)))

(declare-fun mapIsEmpty!38061 () Bool)

(assert (=> mapIsEmpty!38061 mapRes!38061))

(declare-fun b!1031799 () Bool)

(declare-fun e!582869 () Bool)

(assert (=> b!1031799 (= e!582875 (and e!582869 mapRes!38061))))

(declare-fun condMapEmpty!38061 () Bool)

(declare-fun mapDefault!38061 () ValueCell!11499)

(assert (=> b!1031799 (= condMapEmpty!38061 (= (arr!31228 (_values!6193 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11499)) mapDefault!38061)))))

(declare-fun b!1031800 () Bool)

(assert (=> b!1031800 (= e!582869 tp_is_empty!24405)))

(declare-fun b!1031801 () Bool)

(assert (=> b!1031801 (= e!582868 (ite (= key!909 #b0000000000000000000000000000000000000000000000000000000000000000) (not (= (bvand (extraKeys!5902 (_2!7911 lt!455716)) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5902 (_2!7911 lt!455716)) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(declare-fun b!1031802 () Bool)

(assert (=> b!1031802 (= e!582870 tp_is_empty!24405)))

(declare-fun b!1031803 () Bool)

(declare-fun Unit!33760 () Unit!33755)

(assert (=> b!1031803 (= e!582876 Unit!33760)))

(assert (= (and start!90114 res!689898) b!1031796))

(assert (= (and b!1031796 res!689896) b!1031794))

(assert (= (and b!1031794 res!689897) b!1031792))

(assert (= (and b!1031792 c!104206) b!1031793))

(assert (= (and b!1031792 (not c!104206)) b!1031803))

(assert (= (and b!1031793 c!104207) b!1031795))

(assert (= (and b!1031793 (not c!104207)) b!1031801))

(assert (= (and b!1031793 res!689895) b!1031798))

(assert (= (and b!1031799 condMapEmpty!38061) mapIsEmpty!38061))

(assert (= (and b!1031799 (not condMapEmpty!38061)) mapNonEmpty!38061))

(assert (= (and mapNonEmpty!38061 ((_ is ValueCellFull!11499) mapValue!38061)) b!1031802))

(assert (= (and b!1031799 ((_ is ValueCellFull!11499) mapDefault!38061)) b!1031800))

(assert (= b!1031797 b!1031799))

(assert (= start!90114 b!1031797))

(declare-fun b_lambda!16059 () Bool)

(assert (=> (not b_lambda!16059) (not b!1031792)))

(declare-fun t!31184 () Bool)

(declare-fun tb!7011 () Bool)

(assert (=> (and b!1031797 (= (defaultEntry!6170 thiss!1427) (defaultEntry!6170 thiss!1427)) t!31184) tb!7011))

(declare-fun result!14343 () Bool)

(assert (=> tb!7011 (= result!14343 tp_is_empty!24405)))

(assert (=> b!1031792 t!31184))

(declare-fun b_and!33157 () Bool)

(assert (= b_and!33155 (and (=> t!31184 result!14343) b_and!33157)))

(declare-fun m!952225 () Bool)

(assert (=> b!1031792 m!952225))

(declare-fun m!952227 () Bool)

(assert (=> b!1031792 m!952227))

(assert (=> b!1031792 m!952225))

(declare-fun m!952229 () Bool)

(assert (=> b!1031792 m!952229))

(declare-fun m!952231 () Bool)

(assert (=> b!1031792 m!952231))

(declare-fun m!952233 () Bool)

(assert (=> b!1031792 m!952233))

(declare-fun m!952235 () Bool)

(assert (=> b!1031792 m!952235))

(declare-fun m!952237 () Bool)

(assert (=> b!1031792 m!952237))

(declare-fun m!952239 () Bool)

(assert (=> b!1031792 m!952239))

(declare-fun m!952241 () Bool)

(assert (=> b!1031792 m!952241))

(declare-fun m!952243 () Bool)

(assert (=> b!1031792 m!952243))

(declare-fun m!952245 () Bool)

(assert (=> b!1031792 m!952245))

(declare-fun m!952247 () Bool)

(assert (=> b!1031792 m!952247))

(declare-fun m!952249 () Bool)

(assert (=> b!1031792 m!952249))

(declare-fun m!952251 () Bool)

(assert (=> b!1031792 m!952251))

(declare-fun m!952253 () Bool)

(assert (=> b!1031792 m!952253))

(declare-fun m!952255 () Bool)

(assert (=> b!1031792 m!952255))

(declare-fun m!952257 () Bool)

(assert (=> b!1031792 m!952257))

(assert (=> b!1031792 m!952253))

(declare-fun m!952259 () Bool)

(assert (=> b!1031792 m!952259))

(declare-fun m!952261 () Bool)

(assert (=> b!1031792 m!952261))

(declare-fun m!952263 () Bool)

(assert (=> b!1031797 m!952263))

(declare-fun m!952265 () Bool)

(assert (=> b!1031797 m!952265))

(declare-fun m!952267 () Bool)

(assert (=> b!1031793 m!952267))

(declare-fun m!952269 () Bool)

(assert (=> mapNonEmpty!38061 m!952269))

(declare-fun m!952271 () Bool)

(assert (=> b!1031795 m!952271))

(declare-fun m!952273 () Bool)

(assert (=> b!1031794 m!952273))

(declare-fun m!952275 () Bool)

(assert (=> start!90114 m!952275))

(check-sat (not b!1031792) (not b!1031794) (not b_next!20685) (not start!90114) (not b!1031797) tp_is_empty!24405 (not b_lambda!16059) (not b!1031793) b_and!33157 (not mapNonEmpty!38061) (not b!1031795))
(check-sat b_and!33157 (not b_next!20685))
