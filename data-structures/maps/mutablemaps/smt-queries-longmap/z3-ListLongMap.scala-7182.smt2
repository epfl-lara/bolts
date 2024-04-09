; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92010 () Bool)

(assert start!92010)

(declare-fun b!1045830 () Bool)

(declare-fun b_free!21147 () Bool)

(declare-fun b_next!21147 () Bool)

(assert (=> b!1045830 (= b_free!21147 (not b_next!21147))))

(declare-fun tp!74703 () Bool)

(declare-fun b_and!33807 () Bool)

(assert (=> b!1045830 (= tp!74703 b_and!33807)))

(declare-fun mapNonEmpty!38945 () Bool)

(declare-fun mapRes!38945 () Bool)

(declare-fun tp!74704 () Bool)

(declare-fun e!592922 () Bool)

(assert (=> mapNonEmpty!38945 (= mapRes!38945 (and tp!74704 e!592922))))

(declare-datatypes ((V!38029 0))(
  ( (V!38030 (val!12484 Int)) )
))
(declare-datatypes ((ValueCell!11730 0))(
  ( (ValueCellFull!11730 (v!15082 V!38029)) (EmptyCell!11730) )
))
(declare-fun mapRest!38945 () (Array (_ BitVec 32) ValueCell!11730))

(declare-fun mapKey!38945 () (_ BitVec 32))

(declare-fun mapValue!38945 () ValueCell!11730)

(declare-datatypes ((array!65896 0))(
  ( (array!65897 (arr!31689 (Array (_ BitVec 32) (_ BitVec 64))) (size!32225 (_ BitVec 32))) )
))
(declare-datatypes ((array!65898 0))(
  ( (array!65899 (arr!31690 (Array (_ BitVec 32) ValueCell!11730)) (size!32226 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6054 0))(
  ( (LongMapFixedSize!6055 (defaultEntry!6425 Int) (mask!30557 (_ BitVec 32)) (extraKeys!6153 (_ BitVec 32)) (zeroValue!6259 V!38029) (minValue!6259 V!38029) (_size!3082 (_ BitVec 32)) (_keys!11696 array!65896) (_values!6448 array!65898) (_vacant!3082 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6054)

(assert (=> mapNonEmpty!38945 (= (arr!31690 (_values!6448 thiss!1427)) (store mapRest!38945 mapKey!38945 mapValue!38945))))

(declare-fun b!1045828 () Bool)

(declare-fun e!592920 () Bool)

(declare-datatypes ((Unit!34158 0))(
  ( (Unit!34159) )
))
(declare-datatypes ((tuple2!15900 0))(
  ( (tuple2!15901 (_1!7960 Unit!34158) (_2!7960 LongMapFixedSize!6054)) )
))
(declare-fun lt!461849 () tuple2!15900)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65896 (_ BitVec 32)) Bool)

(assert (=> b!1045828 (= e!592920 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11696 (_2!7960 lt!461849)) (mask!30557 (_2!7960 lt!461849))))))

(declare-fun b!1045829 () Bool)

(declare-fun e!592925 () Bool)

(assert (=> b!1045829 (= e!592925 (not e!592920))))

(declare-fun res!696371 () Bool)

(assert (=> b!1045829 (=> res!696371 e!592920)))

(declare-fun key!909 () (_ BitVec 64))

(declare-datatypes ((tuple2!15902 0))(
  ( (tuple2!15903 (_1!7961 (_ BitVec 64)) (_2!7961 V!38029)) )
))
(declare-datatypes ((List!22146 0))(
  ( (Nil!22143) (Cons!22142 (h!23350 tuple2!15902) (t!31431 List!22146)) )
))
(declare-datatypes ((ListLongMap!13907 0))(
  ( (ListLongMap!13908 (toList!6969 List!22146)) )
))
(declare-fun contains!6104 (ListLongMap!13907 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3975 (array!65896 array!65898 (_ BitVec 32) (_ BitVec 32) V!38029 V!38029 (_ BitVec 32) Int) ListLongMap!13907)

(assert (=> b!1045829 (= res!696371 (not (contains!6104 (getCurrentListMap!3975 (_keys!11696 (_2!7960 lt!461849)) (_values!6448 (_2!7960 lt!461849)) (mask!30557 (_2!7960 lt!461849)) (extraKeys!6153 (_2!7960 lt!461849)) (zeroValue!6259 (_2!7960 lt!461849)) (minValue!6259 (_2!7960 lt!461849)) #b00000000000000000000000000000000 (defaultEntry!6425 (_2!7960 lt!461849))) key!909)))))

(declare-fun lt!461843 () array!65896)

(declare-fun lt!461848 () array!65898)

(declare-fun Unit!34160 () Unit!34158)

(declare-fun Unit!34161 () Unit!34158)

(assert (=> b!1045829 (= lt!461849 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3082 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15901 Unit!34160 (LongMapFixedSize!6055 (defaultEntry!6425 thiss!1427) (mask!30557 thiss!1427) (extraKeys!6153 thiss!1427) (zeroValue!6259 thiss!1427) (minValue!6259 thiss!1427) (bvsub (_size!3082 thiss!1427) #b00000000000000000000000000000001) lt!461843 lt!461848 (bvadd #b00000000000000000000000000000001 (_vacant!3082 thiss!1427)))) (tuple2!15901 Unit!34161 (LongMapFixedSize!6055 (defaultEntry!6425 thiss!1427) (mask!30557 thiss!1427) (extraKeys!6153 thiss!1427) (zeroValue!6259 thiss!1427) (minValue!6259 thiss!1427) (bvsub (_size!3082 thiss!1427) #b00000000000000000000000000000001) lt!461843 lt!461848 (_vacant!3082 thiss!1427)))))))

(declare-fun -!545 (ListLongMap!13907 (_ BitVec 64)) ListLongMap!13907)

(assert (=> b!1045829 (= (-!545 (getCurrentListMap!3975 (_keys!11696 thiss!1427) (_values!6448 thiss!1427) (mask!30557 thiss!1427) (extraKeys!6153 thiss!1427) (zeroValue!6259 thiss!1427) (minValue!6259 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6425 thiss!1427)) key!909) (getCurrentListMap!3975 lt!461843 lt!461848 (mask!30557 thiss!1427) (extraKeys!6153 thiss!1427) (zeroValue!6259 thiss!1427) (minValue!6259 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6425 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9849 0))(
  ( (MissingZero!9849 (index!41766 (_ BitVec 32))) (Found!9849 (index!41767 (_ BitVec 32))) (Intermediate!9849 (undefined!10661 Bool) (index!41768 (_ BitVec 32)) (x!93420 (_ BitVec 32))) (Undefined!9849) (MissingVacant!9849 (index!41769 (_ BitVec 32))) )
))
(declare-fun lt!461846 () SeekEntryResult!9849)

(declare-fun dynLambda!2019 (Int (_ BitVec 64)) V!38029)

(assert (=> b!1045829 (= lt!461848 (array!65899 (store (arr!31690 (_values!6448 thiss!1427)) (index!41767 lt!461846) (ValueCellFull!11730 (dynLambda!2019 (defaultEntry!6425 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32226 (_values!6448 thiss!1427))))))

(declare-fun lt!461845 () Unit!34158)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!65 (array!65896 array!65898 (_ BitVec 32) (_ BitVec 32) V!38029 V!38029 (_ BitVec 32) (_ BitVec 64) Int) Unit!34158)

(assert (=> b!1045829 (= lt!461845 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!65 (_keys!11696 thiss!1427) (_values!6448 thiss!1427) (mask!30557 thiss!1427) (extraKeys!6153 thiss!1427) (zeroValue!6259 thiss!1427) (minValue!6259 thiss!1427) (index!41767 lt!461846) key!909 (defaultEntry!6425 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65896 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1045829 (not (arrayContainsKey!0 lt!461843 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461844 () Unit!34158)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65896 (_ BitVec 32) (_ BitVec 64)) Unit!34158)

(assert (=> b!1045829 (= lt!461844 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11696 thiss!1427) (index!41767 lt!461846) key!909))))

(assert (=> b!1045829 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461843 (mask!30557 thiss!1427))))

(declare-fun lt!461850 () Unit!34158)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65896 (_ BitVec 32) (_ BitVec 32)) Unit!34158)

(assert (=> b!1045829 (= lt!461850 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11696 thiss!1427) (index!41767 lt!461846) (mask!30557 thiss!1427)))))

(declare-datatypes ((List!22147 0))(
  ( (Nil!22144) (Cons!22143 (h!23351 (_ BitVec 64)) (t!31432 List!22147)) )
))
(declare-fun arrayNoDuplicates!0 (array!65896 (_ BitVec 32) List!22147) Bool)

(assert (=> b!1045829 (arrayNoDuplicates!0 lt!461843 #b00000000000000000000000000000000 Nil!22144)))

(declare-fun lt!461847 () Unit!34158)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65896 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22147) Unit!34158)

(assert (=> b!1045829 (= lt!461847 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11696 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41767 lt!461846) #b00000000000000000000000000000000 Nil!22144))))

(declare-fun arrayCountValidKeys!0 (array!65896 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1045829 (= (arrayCountValidKeys!0 lt!461843 #b00000000000000000000000000000000 (size!32225 (_keys!11696 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11696 thiss!1427) #b00000000000000000000000000000000 (size!32225 (_keys!11696 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1045829 (= lt!461843 (array!65897 (store (arr!31689 (_keys!11696 thiss!1427)) (index!41767 lt!461846) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32225 (_keys!11696 thiss!1427))))))

(declare-fun lt!461842 () Unit!34158)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65896 (_ BitVec 32) (_ BitVec 64)) Unit!34158)

(assert (=> b!1045829 (= lt!461842 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11696 thiss!1427) (index!41767 lt!461846) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun tp_is_empty!24867 () Bool)

(declare-fun e!592921 () Bool)

(declare-fun e!592926 () Bool)

(declare-fun array_inv!24321 (array!65896) Bool)

(declare-fun array_inv!24322 (array!65898) Bool)

(assert (=> b!1045830 (= e!592926 (and tp!74703 tp_is_empty!24867 (array_inv!24321 (_keys!11696 thiss!1427)) (array_inv!24322 (_values!6448 thiss!1427)) e!592921))))

(declare-fun res!696372 () Bool)

(declare-fun e!592924 () Bool)

(assert (=> start!92010 (=> (not res!696372) (not e!592924))))

(declare-fun valid!2225 (LongMapFixedSize!6054) Bool)

(assert (=> start!92010 (= res!696372 (valid!2225 thiss!1427))))

(assert (=> start!92010 e!592924))

(assert (=> start!92010 e!592926))

(assert (=> start!92010 true))

(declare-fun b!1045831 () Bool)

(assert (=> b!1045831 (= e!592922 tp_is_empty!24867)))

(declare-fun b!1045832 () Bool)

(declare-fun res!696375 () Bool)

(assert (=> b!1045832 (=> (not res!696375) (not e!592924))))

(assert (=> b!1045832 (= res!696375 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1045833 () Bool)

(declare-fun res!696373 () Bool)

(assert (=> b!1045833 (=> res!696373 e!592920)))

(assert (=> b!1045833 (= res!696373 (or (not (= (size!32226 (_values!6448 (_2!7960 lt!461849))) (bvadd #b00000000000000000000000000000001 (mask!30557 (_2!7960 lt!461849))))) (not (= (size!32225 (_keys!11696 (_2!7960 lt!461849))) (size!32226 (_values!6448 (_2!7960 lt!461849))))) (bvslt (mask!30557 (_2!7960 lt!461849)) #b00000000000000000000000000000000) (bvslt (extraKeys!6153 (_2!7960 lt!461849)) #b00000000000000000000000000000000) (bvsgt (extraKeys!6153 (_2!7960 lt!461849)) #b00000000000000000000000000000011)))))

(declare-fun mapIsEmpty!38945 () Bool)

(assert (=> mapIsEmpty!38945 mapRes!38945))

(declare-fun b!1045834 () Bool)

(assert (=> b!1045834 (= e!592924 e!592925)))

(declare-fun res!696374 () Bool)

(assert (=> b!1045834 (=> (not res!696374) (not e!592925))))

(get-info :version)

(assert (=> b!1045834 (= res!696374 ((_ is Found!9849) lt!461846))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65896 (_ BitVec 32)) SeekEntryResult!9849)

(assert (=> b!1045834 (= lt!461846 (seekEntry!0 key!909 (_keys!11696 thiss!1427) (mask!30557 thiss!1427)))))

(declare-fun b!1045835 () Bool)

(declare-fun res!696376 () Bool)

(assert (=> b!1045835 (=> res!696376 e!592920)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045835 (= res!696376 (not (validMask!0 (mask!30557 (_2!7960 lt!461849)))))))

(declare-fun b!1045836 () Bool)

(declare-fun e!592927 () Bool)

(assert (=> b!1045836 (= e!592927 tp_is_empty!24867)))

(declare-fun b!1045837 () Bool)

(assert (=> b!1045837 (= e!592921 (and e!592927 mapRes!38945))))

(declare-fun condMapEmpty!38945 () Bool)

(declare-fun mapDefault!38945 () ValueCell!11730)

(assert (=> b!1045837 (= condMapEmpty!38945 (= (arr!31690 (_values!6448 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11730)) mapDefault!38945)))))

(assert (= (and start!92010 res!696372) b!1045832))

(assert (= (and b!1045832 res!696375) b!1045834))

(assert (= (and b!1045834 res!696374) b!1045829))

(assert (= (and b!1045829 (not res!696371)) b!1045835))

(assert (= (and b!1045835 (not res!696376)) b!1045833))

(assert (= (and b!1045833 (not res!696373)) b!1045828))

(assert (= (and b!1045837 condMapEmpty!38945) mapIsEmpty!38945))

(assert (= (and b!1045837 (not condMapEmpty!38945)) mapNonEmpty!38945))

(assert (= (and mapNonEmpty!38945 ((_ is ValueCellFull!11730) mapValue!38945)) b!1045831))

(assert (= (and b!1045837 ((_ is ValueCellFull!11730) mapDefault!38945)) b!1045836))

(assert (= b!1045830 b!1045837))

(assert (= start!92010 b!1045830))

(declare-fun b_lambda!16361 () Bool)

(assert (=> (not b_lambda!16361) (not b!1045829)))

(declare-fun t!31430 () Bool)

(declare-fun tb!7107 () Bool)

(assert (=> (and b!1045830 (= (defaultEntry!6425 thiss!1427) (defaultEntry!6425 thiss!1427)) t!31430) tb!7107))

(declare-fun result!14631 () Bool)

(assert (=> tb!7107 (= result!14631 tp_is_empty!24867)))

(assert (=> b!1045829 t!31430))

(declare-fun b_and!33809 () Bool)

(assert (= b_and!33807 (and (=> t!31430 result!14631) b_and!33809)))

(declare-fun m!965785 () Bool)

(assert (=> b!1045835 m!965785))

(declare-fun m!965787 () Bool)

(assert (=> b!1045834 m!965787))

(declare-fun m!965789 () Bool)

(assert (=> b!1045828 m!965789))

(declare-fun m!965791 () Bool)

(assert (=> mapNonEmpty!38945 m!965791))

(declare-fun m!965793 () Bool)

(assert (=> start!92010 m!965793))

(declare-fun m!965795 () Bool)

(assert (=> b!1045829 m!965795))

(declare-fun m!965797 () Bool)

(assert (=> b!1045829 m!965797))

(declare-fun m!965799 () Bool)

(assert (=> b!1045829 m!965799))

(declare-fun m!965801 () Bool)

(assert (=> b!1045829 m!965801))

(declare-fun m!965803 () Bool)

(assert (=> b!1045829 m!965803))

(declare-fun m!965805 () Bool)

(assert (=> b!1045829 m!965805))

(declare-fun m!965807 () Bool)

(assert (=> b!1045829 m!965807))

(declare-fun m!965809 () Bool)

(assert (=> b!1045829 m!965809))

(declare-fun m!965811 () Bool)

(assert (=> b!1045829 m!965811))

(declare-fun m!965813 () Bool)

(assert (=> b!1045829 m!965813))

(declare-fun m!965815 () Bool)

(assert (=> b!1045829 m!965815))

(declare-fun m!965817 () Bool)

(assert (=> b!1045829 m!965817))

(assert (=> b!1045829 m!965813))

(declare-fun m!965819 () Bool)

(assert (=> b!1045829 m!965819))

(declare-fun m!965821 () Bool)

(assert (=> b!1045829 m!965821))

(declare-fun m!965823 () Bool)

(assert (=> b!1045829 m!965823))

(declare-fun m!965825 () Bool)

(assert (=> b!1045829 m!965825))

(assert (=> b!1045829 m!965817))

(declare-fun m!965827 () Bool)

(assert (=> b!1045829 m!965827))

(declare-fun m!965829 () Bool)

(assert (=> b!1045829 m!965829))

(declare-fun m!965831 () Bool)

(assert (=> b!1045830 m!965831))

(declare-fun m!965833 () Bool)

(assert (=> b!1045830 m!965833))

(check-sat b_and!33809 (not b!1045830) (not b!1045835) (not b_lambda!16361) (not mapNonEmpty!38945) tp_is_empty!24867 (not b!1045834) (not b_next!21147) (not b!1045828) (not start!92010) (not b!1045829))
(check-sat b_and!33809 (not b_next!21147))
