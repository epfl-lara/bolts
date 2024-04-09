; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!89806 () Bool)

(assert start!89806)

(declare-fun b!1028834 () Bool)

(declare-fun b_free!20589 () Bool)

(declare-fun b_next!20589 () Bool)

(assert (=> b!1028834 (= b_free!20589 (not b_next!20589))))

(declare-fun tp!72825 () Bool)

(declare-fun b_and!32915 () Bool)

(assert (=> b!1028834 (= tp!72825 b_and!32915)))

(declare-fun mapNonEmpty!37903 () Bool)

(declare-fun mapRes!37903 () Bool)

(declare-fun tp!72824 () Bool)

(declare-fun e!580839 () Bool)

(assert (=> mapNonEmpty!37903 (= mapRes!37903 (and tp!72824 e!580839))))

(declare-fun mapKey!37903 () (_ BitVec 32))

(declare-datatypes ((V!37285 0))(
  ( (V!37286 (val!12205 Int)) )
))
(declare-datatypes ((ValueCell!11451 0))(
  ( (ValueCellFull!11451 (v!14779 V!37285)) (EmptyCell!11451) )
))
(declare-fun mapValue!37903 () ValueCell!11451)

(declare-datatypes ((array!64658 0))(
  ( (array!64659 (arr!31131 (Array (_ BitVec 32) (_ BitVec 64))) (size!31647 (_ BitVec 32))) )
))
(declare-datatypes ((array!64660 0))(
  ( (array!64661 (arr!31132 (Array (_ BitVec 32) ValueCell!11451)) (size!31648 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!5496 0))(
  ( (LongMapFixedSize!5497 (defaultEntry!6110 Int) (mask!29851 (_ BitVec 32)) (extraKeys!5842 (_ BitVec 32)) (zeroValue!5946 V!37285) (minValue!5946 V!37285) (_size!2803 (_ BitVec 32)) (_keys!11266 array!64658) (_values!6133 array!64660) (_vacant!2803 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!5496)

(declare-fun mapRest!37903 () (Array (_ BitVec 32) ValueCell!11451))

(assert (=> mapNonEmpty!37903 (= (arr!31132 (_values!6133 thiss!1427)) (store mapRest!37903 mapKey!37903 mapValue!37903))))

(declare-fun b!1028832 () Bool)

(declare-fun res!688409 () Bool)

(declare-fun e!580841 () Bool)

(assert (=> b!1028832 (=> (not res!688409) (not e!580841))))

(declare-fun key!909 () (_ BitVec 64))

(assert (=> b!1028832 (= res!688409 (not (= key!909 (bvneg key!909))))))

(declare-fun b!1028833 () Bool)

(declare-fun tp_is_empty!24309 () Bool)

(assert (=> b!1028833 (= e!580839 tp_is_empty!24309)))

(declare-fun e!580844 () Bool)

(declare-fun e!580843 () Bool)

(declare-fun array_inv!23949 (array!64658) Bool)

(declare-fun array_inv!23950 (array!64660) Bool)

(assert (=> b!1028834 (= e!580844 (and tp!72825 tp_is_empty!24309 (array_inv!23949 (_keys!11266 thiss!1427)) (array_inv!23950 (_values!6133 thiss!1427)) e!580843))))

(declare-fun b!1028835 () Bool)

(declare-fun e!580842 () Bool)

(declare-fun e!580846 () Bool)

(assert (=> b!1028835 (= e!580842 (not e!580846))))

(declare-fun res!688411 () Bool)

(assert (=> b!1028835 (=> res!688411 e!580846)))

(declare-datatypes ((Unit!33556 0))(
  ( (Unit!33557) )
))
(declare-datatypes ((tuple2!15636 0))(
  ( (tuple2!15637 (_1!7828 Unit!33556) (_2!7828 LongMapFixedSize!5496)) )
))
(declare-fun lt!453344 () tuple2!15636)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1028835 (= res!688411 (not (validMask!0 (mask!29851 (_2!7828 lt!453344)))))))

(declare-fun lt!453342 () array!64658)

(declare-fun lt!453348 () array!64660)

(declare-fun Unit!33558 () Unit!33556)

(declare-fun Unit!33559 () Unit!33556)

(assert (=> b!1028835 (= lt!453344 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!2803 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15637 Unit!33558 (LongMapFixedSize!5497 (defaultEntry!6110 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) (bvsub (_size!2803 thiss!1427) #b00000000000000000000000000000001) lt!453342 lt!453348 (bvadd #b00000000000000000000000000000001 (_vacant!2803 thiss!1427)))) (tuple2!15637 Unit!33559 (LongMapFixedSize!5497 (defaultEntry!6110 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) (bvsub (_size!2803 thiss!1427) #b00000000000000000000000000000001) lt!453342 lt!453348 (_vacant!2803 thiss!1427)))))))

(declare-datatypes ((tuple2!15638 0))(
  ( (tuple2!15639 (_1!7829 (_ BitVec 64)) (_2!7829 V!37285)) )
))
(declare-datatypes ((List!21923 0))(
  ( (Nil!21920) (Cons!21919 (h!23119 tuple2!15638) (t!31014 List!21923)) )
))
(declare-datatypes ((ListLongMap!13781 0))(
  ( (ListLongMap!13782 (toList!6906 List!21923)) )
))
(declare-fun -!482 (ListLongMap!13781 (_ BitVec 64)) ListLongMap!13781)

(declare-fun getCurrentListMap!3913 (array!64658 array!64660 (_ BitVec 32) (_ BitVec 32) V!37285 V!37285 (_ BitVec 32) Int) ListLongMap!13781)

(assert (=> b!1028835 (= (-!482 (getCurrentListMap!3913 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)) key!909) (getCurrentListMap!3913 lt!453342 lt!453348 (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-datatypes ((SeekEntryResult!9668 0))(
  ( (MissingZero!9668 (index!41042 (_ BitVec 32))) (Found!9668 (index!41043 (_ BitVec 32))) (Intermediate!9668 (undefined!10480 Bool) (index!41044 (_ BitVec 32)) (x!91537 (_ BitVec 32))) (Undefined!9668) (MissingVacant!9668 (index!41045 (_ BitVec 32))) )
))
(declare-fun lt!453345 () SeekEntryResult!9668)

(declare-fun dynLambda!1957 (Int (_ BitVec 64)) V!37285)

(assert (=> b!1028835 (= lt!453348 (array!64661 (store (arr!31132 (_values!6133 thiss!1427)) (index!41043 lt!453345) (ValueCellFull!11451 (dynLambda!1957 (defaultEntry!6110 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31648 (_values!6133 thiss!1427))))))

(declare-fun lt!453343 () Unit!33556)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!6 (array!64658 array!64660 (_ BitVec 32) (_ BitVec 32) V!37285 V!37285 (_ BitVec 32) (_ BitVec 64) Int) Unit!33556)

(assert (=> b!1028835 (= lt!453343 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!6 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) (index!41043 lt!453345) key!909 (defaultEntry!6110 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!64658 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1028835 (not (arrayContainsKey!0 lt!453342 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!453347 () Unit!33556)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!64658 (_ BitVec 32) (_ BitVec 64)) Unit!33556)

(assert (=> b!1028835 (= lt!453347 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11266 thiss!1427) (index!41043 lt!453345) key!909))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!64658 (_ BitVec 32)) Bool)

(assert (=> b!1028835 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453342 (mask!29851 thiss!1427))))

(declare-fun lt!453349 () Unit!33556)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!64658 (_ BitVec 32) (_ BitVec 32)) Unit!33556)

(assert (=> b!1028835 (= lt!453349 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11266 thiss!1427) (index!41043 lt!453345) (mask!29851 thiss!1427)))))

(declare-datatypes ((List!21924 0))(
  ( (Nil!21921) (Cons!21920 (h!23120 (_ BitVec 64)) (t!31015 List!21924)) )
))
(declare-fun arrayNoDuplicates!0 (array!64658 (_ BitVec 32) List!21924) Bool)

(assert (=> b!1028835 (arrayNoDuplicates!0 lt!453342 #b00000000000000000000000000000000 Nil!21921)))

(declare-fun lt!453341 () Unit!33556)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!64658 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21924) Unit!33556)

(assert (=> b!1028835 (= lt!453341 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11266 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41043 lt!453345) #b00000000000000000000000000000000 Nil!21921))))

(declare-fun arrayCountValidKeys!0 (array!64658 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1028835 (= (arrayCountValidKeys!0 lt!453342 #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11266 thiss!1427) #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1028835 (= lt!453342 (array!64659 (store (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31647 (_keys!11266 thiss!1427))))))

(declare-fun lt!453346 () Unit!33556)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!64658 (_ BitVec 32) (_ BitVec 64)) Unit!33556)

(assert (=> b!1028835 (= lt!453346 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11266 thiss!1427) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!688410 () Bool)

(assert (=> start!89806 (=> (not res!688410) (not e!580841))))

(declare-fun valid!2035 (LongMapFixedSize!5496) Bool)

(assert (=> start!89806 (= res!688410 (valid!2035 thiss!1427))))

(assert (=> start!89806 e!580841))

(assert (=> start!89806 e!580844))

(assert (=> start!89806 true))

(declare-fun b!1028836 () Bool)

(assert (=> b!1028836 (= e!580846 (or (not (= (size!31648 (_values!6133 (_2!7828 lt!453344))) (bvadd #b00000000000000000000000000000001 (mask!29851 (_2!7828 lt!453344))))) (not (= (size!31647 (_keys!11266 (_2!7828 lt!453344))) (size!31648 (_values!6133 (_2!7828 lt!453344))))) (bvsge (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000000000000)))))

(declare-fun b!1028837 () Bool)

(declare-fun e!580845 () Bool)

(assert (=> b!1028837 (= e!580845 tp_is_empty!24309)))

(declare-fun b!1028838 () Bool)

(assert (=> b!1028838 (= e!580843 (and e!580845 mapRes!37903))))

(declare-fun condMapEmpty!37903 () Bool)

(declare-fun mapDefault!37903 () ValueCell!11451)

(assert (=> b!1028838 (= condMapEmpty!37903 (= (arr!31132 (_values!6133 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11451)) mapDefault!37903)))))

(declare-fun b!1028839 () Bool)

(assert (=> b!1028839 (= e!580841 e!580842)))

(declare-fun res!688412 () Bool)

(assert (=> b!1028839 (=> (not res!688412) (not e!580842))))

(get-info :version)

(assert (=> b!1028839 (= res!688412 ((_ is Found!9668) lt!453345))))

(declare-fun seekEntry!0 ((_ BitVec 64) array!64658 (_ BitVec 32)) SeekEntryResult!9668)

(assert (=> b!1028839 (= lt!453345 (seekEntry!0 key!909 (_keys!11266 thiss!1427) (mask!29851 thiss!1427)))))

(declare-fun mapIsEmpty!37903 () Bool)

(assert (=> mapIsEmpty!37903 mapRes!37903))

(assert (= (and start!89806 res!688410) b!1028832))

(assert (= (and b!1028832 res!688409) b!1028839))

(assert (= (and b!1028839 res!688412) b!1028835))

(assert (= (and b!1028835 (not res!688411)) b!1028836))

(assert (= (and b!1028838 condMapEmpty!37903) mapIsEmpty!37903))

(assert (= (and b!1028838 (not condMapEmpty!37903)) mapNonEmpty!37903))

(assert (= (and mapNonEmpty!37903 ((_ is ValueCellFull!11451) mapValue!37903)) b!1028833))

(assert (= (and b!1028838 ((_ is ValueCellFull!11451) mapDefault!37903)) b!1028837))

(assert (= b!1028834 b!1028838))

(assert (= start!89806 b!1028834))

(declare-fun b_lambda!15859 () Bool)

(assert (=> (not b_lambda!15859) (not b!1028835)))

(declare-fun t!31013 () Bool)

(declare-fun tb!6915 () Bool)

(assert (=> (and b!1028834 (= (defaultEntry!6110 thiss!1427) (defaultEntry!6110 thiss!1427)) t!31013) tb!6915))

(declare-fun result!14143 () Bool)

(assert (=> tb!6915 (= result!14143 tp_is_empty!24309)))

(assert (=> b!1028835 t!31013))

(declare-fun b_and!32917 () Bool)

(assert (= b_and!32915 (and (=> t!31013 result!14143) b_and!32917)))

(declare-fun m!948059 () Bool)

(assert (=> b!1028839 m!948059))

(declare-fun m!948061 () Bool)

(assert (=> mapNonEmpty!37903 m!948061))

(declare-fun m!948063 () Bool)

(assert (=> b!1028834 m!948063))

(declare-fun m!948065 () Bool)

(assert (=> b!1028834 m!948065))

(declare-fun m!948067 () Bool)

(assert (=> b!1028835 m!948067))

(declare-fun m!948069 () Bool)

(assert (=> b!1028835 m!948069))

(declare-fun m!948071 () Bool)

(assert (=> b!1028835 m!948071))

(declare-fun m!948073 () Bool)

(assert (=> b!1028835 m!948073))

(declare-fun m!948075 () Bool)

(assert (=> b!1028835 m!948075))

(declare-fun m!948077 () Bool)

(assert (=> b!1028835 m!948077))

(declare-fun m!948079 () Bool)

(assert (=> b!1028835 m!948079))

(declare-fun m!948081 () Bool)

(assert (=> b!1028835 m!948081))

(declare-fun m!948083 () Bool)

(assert (=> b!1028835 m!948083))

(declare-fun m!948085 () Bool)

(assert (=> b!1028835 m!948085))

(assert (=> b!1028835 m!948083))

(declare-fun m!948087 () Bool)

(assert (=> b!1028835 m!948087))

(declare-fun m!948089 () Bool)

(assert (=> b!1028835 m!948089))

(declare-fun m!948091 () Bool)

(assert (=> b!1028835 m!948091))

(declare-fun m!948093 () Bool)

(assert (=> b!1028835 m!948093))

(declare-fun m!948095 () Bool)

(assert (=> b!1028835 m!948095))

(declare-fun m!948097 () Bool)

(assert (=> b!1028835 m!948097))

(declare-fun m!948099 () Bool)

(assert (=> b!1028835 m!948099))

(declare-fun m!948101 () Bool)

(assert (=> start!89806 m!948101))

(check-sat tp_is_empty!24309 (not mapNonEmpty!37903) (not b_next!20589) b_and!32917 (not b!1028834) (not b!1028835) (not start!89806) (not b_lambda!15859) (not b!1028839))
(check-sat b_and!32917 (not b_next!20589))
(get-model)

(declare-fun b_lambda!15863 () Bool)

(assert (= b_lambda!15859 (or (and b!1028834 b_free!20589) b_lambda!15863)))

(check-sat (not b_lambda!15863) tp_is_empty!24309 (not mapNonEmpty!37903) (not b_next!20589) b_and!32917 (not b!1028839) (not b!1028834) (not b!1028835) (not start!89806))
(check-sat b_and!32917 (not b_next!20589))
(get-model)

(declare-fun d!123103 () Bool)

(declare-fun res!688430 () Bool)

(declare-fun e!580879 () Bool)

(assert (=> d!123103 (=> res!688430 e!580879)))

(assert (=> d!123103 (= res!688430 (bvsge #b00000000000000000000000000000000 (size!31647 lt!453342)))))

(assert (=> d!123103 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!453342 (mask!29851 thiss!1427)) e!580879)))

(declare-fun b!1028876 () Bool)

(declare-fun e!580877 () Bool)

(assert (=> b!1028876 (= e!580879 e!580877)))

(declare-fun c!103826 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1028876 (= c!103826 (validKeyInArray!0 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun b!1028877 () Bool)

(declare-fun call!43400 () Bool)

(assert (=> b!1028877 (= e!580877 call!43400)))

(declare-fun b!1028878 () Bool)

(declare-fun e!580878 () Bool)

(assert (=> b!1028878 (= e!580878 call!43400)))

(declare-fun bm!43397 () Bool)

(assert (=> bm!43397 (= call!43400 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!453342 (mask!29851 thiss!1427)))))

(declare-fun b!1028879 () Bool)

(assert (=> b!1028879 (= e!580877 e!580878)))

(declare-fun lt!453383 () (_ BitVec 64))

(assert (=> b!1028879 (= lt!453383 (select (arr!31131 lt!453342) #b00000000000000000000000000000000))))

(declare-fun lt!453385 () Unit!33556)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!64658 (_ BitVec 64) (_ BitVec 32)) Unit!33556)

(assert (=> b!1028879 (= lt!453385 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!453342 lt!453383 #b00000000000000000000000000000000))))

(assert (=> b!1028879 (arrayContainsKey!0 lt!453342 lt!453383 #b00000000000000000000000000000000)))

(declare-fun lt!453384 () Unit!33556)

(assert (=> b!1028879 (= lt!453384 lt!453385)))

(declare-fun res!688429 () Bool)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!64658 (_ BitVec 32)) SeekEntryResult!9668)

(assert (=> b!1028879 (= res!688429 (= (seekEntryOrOpen!0 (select (arr!31131 lt!453342) #b00000000000000000000000000000000) lt!453342 (mask!29851 thiss!1427)) (Found!9668 #b00000000000000000000000000000000)))))

(assert (=> b!1028879 (=> (not res!688429) (not e!580878))))

(assert (= (and d!123103 (not res!688430)) b!1028876))

(assert (= (and b!1028876 c!103826) b!1028879))

(assert (= (and b!1028876 (not c!103826)) b!1028877))

(assert (= (and b!1028879 res!688429) b!1028878))

(assert (= (or b!1028878 b!1028877) bm!43397))

(declare-fun m!948147 () Bool)

(assert (=> b!1028876 m!948147))

(assert (=> b!1028876 m!948147))

(declare-fun m!948149 () Bool)

(assert (=> b!1028876 m!948149))

(declare-fun m!948151 () Bool)

(assert (=> bm!43397 m!948151))

(assert (=> b!1028879 m!948147))

(declare-fun m!948153 () Bool)

(assert (=> b!1028879 m!948153))

(declare-fun m!948155 () Bool)

(assert (=> b!1028879 m!948155))

(assert (=> b!1028879 m!948147))

(declare-fun m!948157 () Bool)

(assert (=> b!1028879 m!948157))

(assert (=> b!1028835 d!123103))

(declare-fun b!1028889 () Bool)

(declare-fun res!688440 () Bool)

(declare-fun e!580884 () Bool)

(assert (=> b!1028889 (=> (not res!688440) (not e!580884))))

(assert (=> b!1028889 (= res!688440 (not (validKeyInArray!0 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!1028890 () Bool)

(assert (=> b!1028890 (= e!580884 (bvslt (size!31647 (_keys!11266 thiss!1427)) #b01111111111111111111111111111111))))

(declare-fun b!1028888 () Bool)

(declare-fun res!688442 () Bool)

(assert (=> b!1028888 (=> (not res!688442) (not e!580884))))

(assert (=> b!1028888 (= res!688442 (validKeyInArray!0 (select (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453345))))))

(declare-fun d!123105 () Bool)

(declare-fun e!580885 () Bool)

(assert (=> d!123105 e!580885))

(declare-fun res!688439 () Bool)

(assert (=> d!123105 (=> (not res!688439) (not e!580885))))

(assert (=> d!123105 (= res!688439 (and (bvsge (index!41043 lt!453345) #b00000000000000000000000000000000) (bvslt (index!41043 lt!453345) (size!31647 (_keys!11266 thiss!1427)))))))

(declare-fun lt!453388 () Unit!33556)

(declare-fun choose!82 (array!64658 (_ BitVec 32) (_ BitVec 64)) Unit!33556)

(assert (=> d!123105 (= lt!453388 (choose!82 (_keys!11266 thiss!1427) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!123105 e!580884))

(declare-fun res!688441 () Bool)

(assert (=> d!123105 (=> (not res!688441) (not e!580884))))

(assert (=> d!123105 (= res!688441 (and (bvsge (index!41043 lt!453345) #b00000000000000000000000000000000) (bvslt (index!41043 lt!453345) (size!31647 (_keys!11266 thiss!1427)))))))

(assert (=> d!123105 (= (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11266 thiss!1427) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000) lt!453388)))

(declare-fun b!1028891 () Bool)

(assert (=> b!1028891 (= e!580885 (= (arrayCountValidKeys!0 (array!64659 (store (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31647 (_keys!11266 thiss!1427))) #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11266 thiss!1427) #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) #b00000000000000000000000000000001)))))

(assert (= (and d!123105 res!688441) b!1028888))

(assert (= (and b!1028888 res!688442) b!1028889))

(assert (= (and b!1028889 res!688440) b!1028890))

(assert (= (and d!123105 res!688439) b!1028891))

(declare-fun m!948159 () Bool)

(assert (=> b!1028889 m!948159))

(declare-fun m!948161 () Bool)

(assert (=> b!1028888 m!948161))

(assert (=> b!1028888 m!948161))

(declare-fun m!948163 () Bool)

(assert (=> b!1028888 m!948163))

(declare-fun m!948165 () Bool)

(assert (=> d!123105 m!948165))

(assert (=> b!1028891 m!948075))

(declare-fun m!948167 () Bool)

(assert (=> b!1028891 m!948167))

(assert (=> b!1028891 m!948079))

(assert (=> b!1028835 d!123105))

(declare-fun b!1028934 () Bool)

(declare-fun e!580916 () Bool)

(declare-fun lt!453453 () ListLongMap!13781)

(declare-fun apply!937 (ListLongMap!13781 (_ BitVec 64)) V!37285)

(declare-fun get!16364 (ValueCell!11451 V!37285) V!37285)

(assert (=> b!1028934 (= e!580916 (= (apply!937 lt!453453 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000)) (get!16364 (select (arr!31132 (_values!6133 thiss!1427)) #b00000000000000000000000000000000) (dynLambda!1957 (defaultEntry!6110 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028934 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31648 (_values!6133 thiss!1427))))))

(assert (=> b!1028934 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))))))

(declare-fun b!1028935 () Bool)

(declare-fun c!103843 () Bool)

(assert (=> b!1028935 (= c!103843 (and (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580912 () ListLongMap!13781)

(declare-fun e!580918 () ListLongMap!13781)

(assert (=> b!1028935 (= e!580912 e!580918)))

(declare-fun b!1028936 () Bool)

(declare-fun e!580923 () Bool)

(assert (=> b!1028936 (= e!580923 (= (apply!937 lt!453453 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5946 thiss!1427)))))

(declare-fun bm!43412 () Bool)

(declare-fun call!43418 () ListLongMap!13781)

(declare-fun getCurrentListMapNoExtraKeys!3530 (array!64658 array!64660 (_ BitVec 32) (_ BitVec 32) V!37285 V!37285 (_ BitVec 32) Int) ListLongMap!13781)

(assert (=> bm!43412 (= call!43418 (getCurrentListMapNoExtraKeys!3530 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun b!1028937 () Bool)

(declare-fun e!580914 () Bool)

(declare-fun call!43416 () Bool)

(assert (=> b!1028937 (= e!580914 (not call!43416))))

(declare-fun bm!43413 () Bool)

(declare-fun c!103841 () Bool)

(declare-fun call!43419 () ListLongMap!13781)

(declare-fun c!103844 () Bool)

(declare-fun call!43415 () ListLongMap!13781)

(declare-fun call!43421 () ListLongMap!13781)

(declare-fun +!3060 (ListLongMap!13781 tuple2!15638) ListLongMap!13781)

(assert (=> bm!43413 (= call!43421 (+!3060 (ite c!103841 call!43418 (ite c!103844 call!43415 call!43419)) (ite (or c!103841 c!103844) (tuple2!15639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5946 thiss!1427)) (tuple2!15639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5946 thiss!1427)))))))

(declare-fun b!1028939 () Bool)

(declare-fun e!580920 () Bool)

(assert (=> b!1028939 (= e!580920 (validKeyInArray!0 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028940 () Bool)

(declare-fun e!580922 () ListLongMap!13781)

(assert (=> b!1028940 (= e!580922 (+!3060 call!43421 (tuple2!15639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5946 thiss!1427))))))

(declare-fun b!1028941 () Bool)

(declare-fun call!43417 () ListLongMap!13781)

(assert (=> b!1028941 (= e!580918 call!43417)))

(declare-fun b!1028942 () Bool)

(declare-fun res!688468 () Bool)

(declare-fun e!580913 () Bool)

(assert (=> b!1028942 (=> (not res!688468) (not e!580913))))

(declare-fun e!580919 () Bool)

(assert (=> b!1028942 (= res!688468 e!580919)))

(declare-fun res!688462 () Bool)

(assert (=> b!1028942 (=> res!688462 e!580919)))

(declare-fun e!580921 () Bool)

(assert (=> b!1028942 (= res!688462 (not e!580921))))

(declare-fun res!688464 () Bool)

(assert (=> b!1028942 (=> (not res!688464) (not e!580921))))

(assert (=> b!1028942 (= res!688464 (bvslt #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))))))

(declare-fun b!1028943 () Bool)

(assert (=> b!1028943 (= e!580921 (validKeyInArray!0 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028944 () Bool)

(assert (=> b!1028944 (= e!580918 call!43419)))

(declare-fun b!1028945 () Bool)

(declare-fun e!580917 () Unit!33556)

(declare-fun lt!453440 () Unit!33556)

(assert (=> b!1028945 (= e!580917 lt!453440)))

(declare-fun lt!453434 () ListLongMap!13781)

(assert (=> b!1028945 (= lt!453434 (getCurrentListMapNoExtraKeys!3530 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453435 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453435 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453445 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453445 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453451 () Unit!33556)

(declare-fun addStillContains!625 (ListLongMap!13781 (_ BitVec 64) V!37285 (_ BitVec 64)) Unit!33556)

(assert (=> b!1028945 (= lt!453451 (addStillContains!625 lt!453434 lt!453435 (zeroValue!5946 thiss!1427) lt!453445))))

(declare-fun contains!5988 (ListLongMap!13781 (_ BitVec 64)) Bool)

(assert (=> b!1028945 (contains!5988 (+!3060 lt!453434 (tuple2!15639 lt!453435 (zeroValue!5946 thiss!1427))) lt!453445)))

(declare-fun lt!453452 () Unit!33556)

(assert (=> b!1028945 (= lt!453452 lt!453451)))

(declare-fun lt!453448 () ListLongMap!13781)

(assert (=> b!1028945 (= lt!453448 (getCurrentListMapNoExtraKeys!3530 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453438 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453438 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453447 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453447 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453454 () Unit!33556)

(declare-fun addApplyDifferent!477 (ListLongMap!13781 (_ BitVec 64) V!37285 (_ BitVec 64)) Unit!33556)

(assert (=> b!1028945 (= lt!453454 (addApplyDifferent!477 lt!453448 lt!453438 (minValue!5946 thiss!1427) lt!453447))))

(assert (=> b!1028945 (= (apply!937 (+!3060 lt!453448 (tuple2!15639 lt!453438 (minValue!5946 thiss!1427))) lt!453447) (apply!937 lt!453448 lt!453447))))

(declare-fun lt!453443 () Unit!33556)

(assert (=> b!1028945 (= lt!453443 lt!453454)))

(declare-fun lt!453439 () ListLongMap!13781)

(assert (=> b!1028945 (= lt!453439 (getCurrentListMapNoExtraKeys!3530 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453437 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453437 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453449 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453449 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000))))

(declare-fun lt!453441 () Unit!33556)

(assert (=> b!1028945 (= lt!453441 (addApplyDifferent!477 lt!453439 lt!453437 (zeroValue!5946 thiss!1427) lt!453449))))

(assert (=> b!1028945 (= (apply!937 (+!3060 lt!453439 (tuple2!15639 lt!453437 (zeroValue!5946 thiss!1427))) lt!453449) (apply!937 lt!453439 lt!453449))))

(declare-fun lt!453444 () Unit!33556)

(assert (=> b!1028945 (= lt!453444 lt!453441)))

(declare-fun lt!453433 () ListLongMap!13781)

(assert (=> b!1028945 (= lt!453433 (getCurrentListMapNoExtraKeys!3530 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453442 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453442 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453446 () (_ BitVec 64))

(assert (=> b!1028945 (= lt!453446 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1028945 (= lt!453440 (addApplyDifferent!477 lt!453433 lt!453442 (minValue!5946 thiss!1427) lt!453446))))

(assert (=> b!1028945 (= (apply!937 (+!3060 lt!453433 (tuple2!15639 lt!453442 (minValue!5946 thiss!1427))) lt!453446) (apply!937 lt!453433 lt!453446))))

(declare-fun bm!43414 () Bool)

(assert (=> bm!43414 (= call!43416 (contains!5988 lt!453453 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!43415 () Bool)

(assert (=> bm!43415 (= call!43415 call!43418)))

(declare-fun b!1028946 () Bool)

(assert (=> b!1028946 (= e!580912 call!43417)))

(declare-fun b!1028947 () Bool)

(assert (=> b!1028947 (= e!580922 e!580912)))

(assert (=> b!1028947 (= c!103844 (and (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!123107 () Bool)

(assert (=> d!123107 e!580913))

(declare-fun res!688465 () Bool)

(assert (=> d!123107 (=> (not res!688465) (not e!580913))))

(assert (=> d!123107 (= res!688465 (or (bvsge #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))))))))

(declare-fun lt!453450 () ListLongMap!13781)

(assert (=> d!123107 (= lt!453453 lt!453450)))

(declare-fun lt!453436 () Unit!33556)

(assert (=> d!123107 (= lt!453436 e!580917)))

(declare-fun c!103842 () Bool)

(assert (=> d!123107 (= c!103842 e!580920)))

(declare-fun res!688469 () Bool)

(assert (=> d!123107 (=> (not res!688469) (not e!580920))))

(assert (=> d!123107 (= res!688469 (bvslt #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))))))

(assert (=> d!123107 (= lt!453450 e!580922)))

(assert (=> d!123107 (= c!103841 (and (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123107 (validMask!0 (mask!29851 thiss!1427))))

(assert (=> d!123107 (= (getCurrentListMap!3913 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)) lt!453453)))

(declare-fun b!1028938 () Bool)

(declare-fun e!580924 () Bool)

(declare-fun e!580915 () Bool)

(assert (=> b!1028938 (= e!580924 e!580915)))

(declare-fun res!688467 () Bool)

(declare-fun call!43420 () Bool)

(assert (=> b!1028938 (= res!688467 call!43420)))

(assert (=> b!1028938 (=> (not res!688467) (not e!580915))))

(declare-fun bm!43416 () Bool)

(assert (=> bm!43416 (= call!43417 call!43421)))

(declare-fun b!1028948 () Bool)

(assert (=> b!1028948 (= e!580914 e!580923)))

(declare-fun res!688463 () Bool)

(assert (=> b!1028948 (= res!688463 call!43416)))

(assert (=> b!1028948 (=> (not res!688463) (not e!580923))))

(declare-fun b!1028949 () Bool)

(assert (=> b!1028949 (= e!580915 (= (apply!937 lt!453453 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5946 thiss!1427)))))

(declare-fun bm!43417 () Bool)

(assert (=> bm!43417 (= call!43420 (contains!5988 lt!453453 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028950 () Bool)

(assert (=> b!1028950 (= e!580919 e!580916)))

(declare-fun res!688466 () Bool)

(assert (=> b!1028950 (=> (not res!688466) (not e!580916))))

(assert (=> b!1028950 (= res!688466 (contains!5988 lt!453453 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000)))))

(assert (=> b!1028950 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))))))

(declare-fun b!1028951 () Bool)

(assert (=> b!1028951 (= e!580924 (not call!43420))))

(declare-fun bm!43418 () Bool)

(assert (=> bm!43418 (= call!43419 call!43415)))

(declare-fun b!1028952 () Bool)

(assert (=> b!1028952 (= e!580913 e!580924)))

(declare-fun c!103840 () Bool)

(assert (=> b!1028952 (= c!103840 (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028953 () Bool)

(declare-fun res!688461 () Bool)

(assert (=> b!1028953 (=> (not res!688461) (not e!580913))))

(assert (=> b!1028953 (= res!688461 e!580914)))

(declare-fun c!103839 () Bool)

(assert (=> b!1028953 (= c!103839 (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1028954 () Bool)

(declare-fun Unit!33564 () Unit!33556)

(assert (=> b!1028954 (= e!580917 Unit!33564)))

(assert (= (and d!123107 c!103841) b!1028940))

(assert (= (and d!123107 (not c!103841)) b!1028947))

(assert (= (and b!1028947 c!103844) b!1028946))

(assert (= (and b!1028947 (not c!103844)) b!1028935))

(assert (= (and b!1028935 c!103843) b!1028941))

(assert (= (and b!1028935 (not c!103843)) b!1028944))

(assert (= (or b!1028941 b!1028944) bm!43418))

(assert (= (or b!1028946 bm!43418) bm!43415))

(assert (= (or b!1028946 b!1028941) bm!43416))

(assert (= (or b!1028940 bm!43415) bm!43412))

(assert (= (or b!1028940 bm!43416) bm!43413))

(assert (= (and d!123107 res!688469) b!1028939))

(assert (= (and d!123107 c!103842) b!1028945))

(assert (= (and d!123107 (not c!103842)) b!1028954))

(assert (= (and d!123107 res!688465) b!1028942))

(assert (= (and b!1028942 res!688464) b!1028943))

(assert (= (and b!1028942 (not res!688462)) b!1028950))

(assert (= (and b!1028950 res!688466) b!1028934))

(assert (= (and b!1028942 res!688468) b!1028953))

(assert (= (and b!1028953 c!103839) b!1028948))

(assert (= (and b!1028953 (not c!103839)) b!1028937))

(assert (= (and b!1028948 res!688463) b!1028936))

(assert (= (or b!1028948 b!1028937) bm!43414))

(assert (= (and b!1028953 res!688461) b!1028952))

(assert (= (and b!1028952 c!103840) b!1028938))

(assert (= (and b!1028952 (not c!103840)) b!1028951))

(assert (= (and b!1028938 res!688467) b!1028949))

(assert (= (or b!1028938 b!1028951) bm!43417))

(declare-fun b_lambda!15865 () Bool)

(assert (=> (not b_lambda!15865) (not b!1028934)))

(assert (=> b!1028934 t!31013))

(declare-fun b_and!32923 () Bool)

(assert (= b_and!32917 (and (=> t!31013 result!14143) b_and!32923)))

(declare-fun m!948169 () Bool)

(assert (=> bm!43417 m!948169))

(declare-fun m!948171 () Bool)

(assert (=> b!1028950 m!948171))

(assert (=> b!1028950 m!948171))

(declare-fun m!948173 () Bool)

(assert (=> b!1028950 m!948173))

(declare-fun m!948175 () Bool)

(assert (=> b!1028936 m!948175))

(declare-fun m!948177 () Bool)

(assert (=> bm!43412 m!948177))

(declare-fun m!948179 () Bool)

(assert (=> b!1028934 m!948179))

(assert (=> b!1028934 m!948179))

(assert (=> b!1028934 m!948091))

(declare-fun m!948181 () Bool)

(assert (=> b!1028934 m!948181))

(assert (=> b!1028934 m!948171))

(declare-fun m!948183 () Bool)

(assert (=> b!1028934 m!948183))

(assert (=> b!1028934 m!948171))

(assert (=> b!1028934 m!948091))

(declare-fun m!948185 () Bool)

(assert (=> bm!43413 m!948185))

(assert (=> b!1028943 m!948171))

(assert (=> b!1028943 m!948171))

(declare-fun m!948187 () Bool)

(assert (=> b!1028943 m!948187))

(assert (=> b!1028945 m!948177))

(declare-fun m!948189 () Bool)

(assert (=> b!1028945 m!948189))

(declare-fun m!948191 () Bool)

(assert (=> b!1028945 m!948191))

(declare-fun m!948193 () Bool)

(assert (=> b!1028945 m!948193))

(declare-fun m!948195 () Bool)

(assert (=> b!1028945 m!948195))

(declare-fun m!948197 () Bool)

(assert (=> b!1028945 m!948197))

(declare-fun m!948199 () Bool)

(assert (=> b!1028945 m!948199))

(declare-fun m!948201 () Bool)

(assert (=> b!1028945 m!948201))

(assert (=> b!1028945 m!948191))

(assert (=> b!1028945 m!948199))

(declare-fun m!948203 () Bool)

(assert (=> b!1028945 m!948203))

(declare-fun m!948205 () Bool)

(assert (=> b!1028945 m!948205))

(declare-fun m!948207 () Bool)

(assert (=> b!1028945 m!948207))

(declare-fun m!948209 () Bool)

(assert (=> b!1028945 m!948209))

(assert (=> b!1028945 m!948203))

(declare-fun m!948211 () Bool)

(assert (=> b!1028945 m!948211))

(declare-fun m!948213 () Bool)

(assert (=> b!1028945 m!948213))

(declare-fun m!948215 () Bool)

(assert (=> b!1028945 m!948215))

(assert (=> b!1028945 m!948197))

(declare-fun m!948217 () Bool)

(assert (=> b!1028945 m!948217))

(assert (=> b!1028945 m!948171))

(declare-fun m!948219 () Bool)

(assert (=> d!123107 m!948219))

(declare-fun m!948221 () Bool)

(assert (=> b!1028940 m!948221))

(declare-fun m!948223 () Bool)

(assert (=> b!1028949 m!948223))

(assert (=> b!1028939 m!948171))

(assert (=> b!1028939 m!948171))

(assert (=> b!1028939 m!948187))

(declare-fun m!948225 () Bool)

(assert (=> bm!43414 m!948225))

(assert (=> b!1028835 d!123107))

(declare-fun d!123109 () Bool)

(declare-fun lt!453457 () ListLongMap!13781)

(assert (=> d!123109 (not (contains!5988 lt!453457 key!909))))

(declare-fun removeStrictlySorted!53 (List!21923 (_ BitVec 64)) List!21923)

(assert (=> d!123109 (= lt!453457 (ListLongMap!13782 (removeStrictlySorted!53 (toList!6906 (getCurrentListMap!3913 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427))) key!909)))))

(assert (=> d!123109 (= (-!482 (getCurrentListMap!3913 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)) key!909) lt!453457)))

(declare-fun bs!30048 () Bool)

(assert (= bs!30048 d!123109))

(declare-fun m!948227 () Bool)

(assert (=> bs!30048 m!948227))

(declare-fun m!948229 () Bool)

(assert (=> bs!30048 m!948229))

(assert (=> b!1028835 d!123109))

(declare-fun d!123111 () Bool)

(declare-fun e!580927 () Bool)

(assert (=> d!123111 e!580927))

(declare-fun res!688472 () Bool)

(assert (=> d!123111 (=> (not res!688472) (not e!580927))))

(assert (=> d!123111 (= res!688472 (and (bvsge (index!41043 lt!453345) #b00000000000000000000000000000000) (bvslt (index!41043 lt!453345) (size!31647 (_keys!11266 thiss!1427)))))))

(declare-fun lt!453460 () Unit!33556)

(declare-fun choose!1694 (array!64658 array!64660 (_ BitVec 32) (_ BitVec 32) V!37285 V!37285 (_ BitVec 32) (_ BitVec 64) Int) Unit!33556)

(assert (=> d!123111 (= lt!453460 (choose!1694 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) (index!41043 lt!453345) key!909 (defaultEntry!6110 thiss!1427)))))

(assert (=> d!123111 (validMask!0 (mask!29851 thiss!1427))))

(assert (=> d!123111 (= (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!6 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) (index!41043 lt!453345) key!909 (defaultEntry!6110 thiss!1427)) lt!453460)))

(declare-fun b!1028957 () Bool)

(assert (=> b!1028957 (= e!580927 (= (-!482 (getCurrentListMap!3913 (_keys!11266 thiss!1427) (_values!6133 thiss!1427) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)) key!909) (getCurrentListMap!3913 (array!64659 (store (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31647 (_keys!11266 thiss!1427))) (array!64661 (store (arr!31132 (_values!6133 thiss!1427)) (index!41043 lt!453345) (ValueCellFull!11451 (dynLambda!1957 (defaultEntry!6110 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!31648 (_values!6133 thiss!1427))) (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427))))))

(assert (=> b!1028957 (bvslt (index!41043 lt!453345) (size!31648 (_values!6133 thiss!1427)))))

(assert (= (and d!123111 res!688472) b!1028957))

(declare-fun b_lambda!15867 () Bool)

(assert (=> (not b_lambda!15867) (not b!1028957)))

(assert (=> b!1028957 t!31013))

(declare-fun b_and!32925 () Bool)

(assert (= b_and!32923 (and (=> t!31013 result!14143) b_and!32925)))

(declare-fun m!948231 () Bool)

(assert (=> d!123111 m!948231))

(assert (=> d!123111 m!948219))

(assert (=> b!1028957 m!948083))

(assert (=> b!1028957 m!948091))

(declare-fun m!948233 () Bool)

(assert (=> b!1028957 m!948233))

(assert (=> b!1028957 m!948069))

(assert (=> b!1028957 m!948075))

(assert (=> b!1028957 m!948083))

(assert (=> b!1028957 m!948085))

(assert (=> b!1028835 d!123111))

(declare-fun d!123113 () Bool)

(declare-fun lt!453463 () (_ BitVec 32))

(assert (=> d!123113 (and (bvsge lt!453463 #b00000000000000000000000000000000) (bvsle lt!453463 (bvsub (size!31647 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun e!580932 () (_ BitVec 32))

(assert (=> d!123113 (= lt!453463 e!580932)))

(declare-fun c!103850 () Bool)

(assert (=> d!123113 (= c!103850 (bvsge #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))))))

(assert (=> d!123113 (and (bvsle #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31647 (_keys!11266 thiss!1427)) (size!31647 lt!453342)))))

(assert (=> d!123113 (= (arrayCountValidKeys!0 lt!453342 #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) lt!453463)))

(declare-fun b!1028966 () Bool)

(declare-fun e!580933 () (_ BitVec 32))

(declare-fun call!43424 () (_ BitVec 32))

(assert (=> b!1028966 (= e!580933 call!43424)))

(declare-fun b!1028967 () Bool)

(assert (=> b!1028967 (= e!580932 #b00000000000000000000000000000000)))

(declare-fun bm!43421 () Bool)

(assert (=> bm!43421 (= call!43424 (arrayCountValidKeys!0 lt!453342 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31647 (_keys!11266 thiss!1427))))))

(declare-fun b!1028968 () Bool)

(assert (=> b!1028968 (= e!580932 e!580933)))

(declare-fun c!103849 () Bool)

(assert (=> b!1028968 (= c!103849 (validKeyInArray!0 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun b!1028969 () Bool)

(assert (=> b!1028969 (= e!580933 (bvadd #b00000000000000000000000000000001 call!43424))))

(assert (= (and d!123113 c!103850) b!1028967))

(assert (= (and d!123113 (not c!103850)) b!1028968))

(assert (= (and b!1028968 c!103849) b!1028969))

(assert (= (and b!1028968 (not c!103849)) b!1028966))

(assert (= (or b!1028969 b!1028966) bm!43421))

(declare-fun m!948235 () Bool)

(assert (=> bm!43421 m!948235))

(assert (=> b!1028968 m!948147))

(assert (=> b!1028968 m!948147))

(assert (=> b!1028968 m!948149))

(assert (=> b!1028835 d!123113))

(declare-fun lt!453484 () ListLongMap!13781)

(declare-fun e!580938 () Bool)

(declare-fun b!1028970 () Bool)

(assert (=> b!1028970 (= e!580938 (= (apply!937 lt!453484 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)) (get!16364 (select (arr!31132 lt!453348) #b00000000000000000000000000000000) (dynLambda!1957 (defaultEntry!6110 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1028970 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31648 lt!453348)))))

(assert (=> b!1028970 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31647 lt!453342)))))

(declare-fun b!1028971 () Bool)

(declare-fun c!103855 () Bool)

(assert (=> b!1028971 (= c!103855 (and (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!580934 () ListLongMap!13781)

(declare-fun e!580940 () ListLongMap!13781)

(assert (=> b!1028971 (= e!580934 e!580940)))

(declare-fun b!1028972 () Bool)

(declare-fun e!580945 () Bool)

(assert (=> b!1028972 (= e!580945 (= (apply!937 lt!453484 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!5946 thiss!1427)))))

(declare-fun bm!43422 () Bool)

(declare-fun call!43428 () ListLongMap!13781)

(assert (=> bm!43422 (= call!43428 (getCurrentListMapNoExtraKeys!3530 lt!453342 lt!453348 (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun b!1028973 () Bool)

(declare-fun e!580936 () Bool)

(declare-fun call!43426 () Bool)

(assert (=> b!1028973 (= e!580936 (not call!43426))))

(declare-fun bm!43423 () Bool)

(declare-fun c!103856 () Bool)

(declare-fun call!43425 () ListLongMap!13781)

(declare-fun call!43431 () ListLongMap!13781)

(declare-fun c!103853 () Bool)

(declare-fun call!43429 () ListLongMap!13781)

(assert (=> bm!43423 (= call!43431 (+!3060 (ite c!103853 call!43428 (ite c!103856 call!43425 call!43429)) (ite (or c!103853 c!103856) (tuple2!15639 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!5946 thiss!1427)) (tuple2!15639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5946 thiss!1427)))))))

(declare-fun b!1028975 () Bool)

(declare-fun e!580942 () Bool)

(assert (=> b!1028975 (= e!580942 (validKeyInArray!0 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun b!1028976 () Bool)

(declare-fun e!580944 () ListLongMap!13781)

(assert (=> b!1028976 (= e!580944 (+!3060 call!43431 (tuple2!15639 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!5946 thiss!1427))))))

(declare-fun b!1028977 () Bool)

(declare-fun call!43427 () ListLongMap!13781)

(assert (=> b!1028977 (= e!580940 call!43427)))

(declare-fun b!1028978 () Bool)

(declare-fun res!688480 () Bool)

(declare-fun e!580935 () Bool)

(assert (=> b!1028978 (=> (not res!688480) (not e!580935))))

(declare-fun e!580941 () Bool)

(assert (=> b!1028978 (= res!688480 e!580941)))

(declare-fun res!688474 () Bool)

(assert (=> b!1028978 (=> res!688474 e!580941)))

(declare-fun e!580943 () Bool)

(assert (=> b!1028978 (= res!688474 (not e!580943))))

(declare-fun res!688476 () Bool)

(assert (=> b!1028978 (=> (not res!688476) (not e!580943))))

(assert (=> b!1028978 (= res!688476 (bvslt #b00000000000000000000000000000000 (size!31647 lt!453342)))))

(declare-fun b!1028979 () Bool)

(assert (=> b!1028979 (= e!580943 (validKeyInArray!0 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun b!1028980 () Bool)

(assert (=> b!1028980 (= e!580940 call!43429)))

(declare-fun b!1028981 () Bool)

(declare-fun e!580939 () Unit!33556)

(declare-fun lt!453471 () Unit!33556)

(assert (=> b!1028981 (= e!580939 lt!453471)))

(declare-fun lt!453465 () ListLongMap!13781)

(assert (=> b!1028981 (= lt!453465 (getCurrentListMapNoExtraKeys!3530 lt!453342 lt!453348 (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453466 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453466 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453476 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453476 (select (arr!31131 lt!453342) #b00000000000000000000000000000000))))

(declare-fun lt!453482 () Unit!33556)

(assert (=> b!1028981 (= lt!453482 (addStillContains!625 lt!453465 lt!453466 (zeroValue!5946 thiss!1427) lt!453476))))

(assert (=> b!1028981 (contains!5988 (+!3060 lt!453465 (tuple2!15639 lt!453466 (zeroValue!5946 thiss!1427))) lt!453476)))

(declare-fun lt!453483 () Unit!33556)

(assert (=> b!1028981 (= lt!453483 lt!453482)))

(declare-fun lt!453479 () ListLongMap!13781)

(assert (=> b!1028981 (= lt!453479 (getCurrentListMapNoExtraKeys!3530 lt!453342 lt!453348 (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453469 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453469 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453478 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453478 (select (arr!31131 lt!453342) #b00000000000000000000000000000000))))

(declare-fun lt!453485 () Unit!33556)

(assert (=> b!1028981 (= lt!453485 (addApplyDifferent!477 lt!453479 lt!453469 (minValue!5946 thiss!1427) lt!453478))))

(assert (=> b!1028981 (= (apply!937 (+!3060 lt!453479 (tuple2!15639 lt!453469 (minValue!5946 thiss!1427))) lt!453478) (apply!937 lt!453479 lt!453478))))

(declare-fun lt!453474 () Unit!33556)

(assert (=> b!1028981 (= lt!453474 lt!453485)))

(declare-fun lt!453470 () ListLongMap!13781)

(assert (=> b!1028981 (= lt!453470 (getCurrentListMapNoExtraKeys!3530 lt!453342 lt!453348 (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453468 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453468 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453480 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453480 (select (arr!31131 lt!453342) #b00000000000000000000000000000000))))

(declare-fun lt!453472 () Unit!33556)

(assert (=> b!1028981 (= lt!453472 (addApplyDifferent!477 lt!453470 lt!453468 (zeroValue!5946 thiss!1427) lt!453480))))

(assert (=> b!1028981 (= (apply!937 (+!3060 lt!453470 (tuple2!15639 lt!453468 (zeroValue!5946 thiss!1427))) lt!453480) (apply!937 lt!453470 lt!453480))))

(declare-fun lt!453475 () Unit!33556)

(assert (=> b!1028981 (= lt!453475 lt!453472)))

(declare-fun lt!453464 () ListLongMap!13781)

(assert (=> b!1028981 (= lt!453464 (getCurrentListMapNoExtraKeys!3530 lt!453342 lt!453348 (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)))))

(declare-fun lt!453473 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453473 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!453477 () (_ BitVec 64))

(assert (=> b!1028981 (= lt!453477 (select (arr!31131 lt!453342) #b00000000000000000000000000000000))))

(assert (=> b!1028981 (= lt!453471 (addApplyDifferent!477 lt!453464 lt!453473 (minValue!5946 thiss!1427) lt!453477))))

(assert (=> b!1028981 (= (apply!937 (+!3060 lt!453464 (tuple2!15639 lt!453473 (minValue!5946 thiss!1427))) lt!453477) (apply!937 lt!453464 lt!453477))))

(declare-fun bm!43424 () Bool)

(assert (=> bm!43424 (= call!43426 (contains!5988 lt!453484 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!43425 () Bool)

(assert (=> bm!43425 (= call!43425 call!43428)))

(declare-fun b!1028982 () Bool)

(assert (=> b!1028982 (= e!580934 call!43427)))

(declare-fun b!1028983 () Bool)

(assert (=> b!1028983 (= e!580944 e!580934)))

(assert (=> b!1028983 (= c!103856 (and (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun d!123115 () Bool)

(assert (=> d!123115 e!580935))

(declare-fun res!688477 () Bool)

(assert (=> d!123115 (=> (not res!688477) (not e!580935))))

(assert (=> d!123115 (= res!688477 (or (bvsge #b00000000000000000000000000000000 (size!31647 lt!453342)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31647 lt!453342)))))))

(declare-fun lt!453481 () ListLongMap!13781)

(assert (=> d!123115 (= lt!453484 lt!453481)))

(declare-fun lt!453467 () Unit!33556)

(assert (=> d!123115 (= lt!453467 e!580939)))

(declare-fun c!103854 () Bool)

(assert (=> d!123115 (= c!103854 e!580942)))

(declare-fun res!688481 () Bool)

(assert (=> d!123115 (=> (not res!688481) (not e!580942))))

(assert (=> d!123115 (= res!688481 (bvslt #b00000000000000000000000000000000 (size!31647 lt!453342)))))

(assert (=> d!123115 (= lt!453481 e!580944)))

(assert (=> d!123115 (= c!103853 (and (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!123115 (validMask!0 (mask!29851 thiss!1427))))

(assert (=> d!123115 (= (getCurrentListMap!3913 lt!453342 lt!453348 (mask!29851 thiss!1427) (extraKeys!5842 thiss!1427) (zeroValue!5946 thiss!1427) (minValue!5946 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6110 thiss!1427)) lt!453484)))

(declare-fun b!1028974 () Bool)

(declare-fun e!580946 () Bool)

(declare-fun e!580937 () Bool)

(assert (=> b!1028974 (= e!580946 e!580937)))

(declare-fun res!688479 () Bool)

(declare-fun call!43430 () Bool)

(assert (=> b!1028974 (= res!688479 call!43430)))

(assert (=> b!1028974 (=> (not res!688479) (not e!580937))))

(declare-fun bm!43426 () Bool)

(assert (=> bm!43426 (= call!43427 call!43431)))

(declare-fun b!1028984 () Bool)

(assert (=> b!1028984 (= e!580936 e!580945)))

(declare-fun res!688475 () Bool)

(assert (=> b!1028984 (= res!688475 call!43426)))

(assert (=> b!1028984 (=> (not res!688475) (not e!580945))))

(declare-fun b!1028985 () Bool)

(assert (=> b!1028985 (= e!580937 (= (apply!937 lt!453484 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!5946 thiss!1427)))))

(declare-fun bm!43427 () Bool)

(assert (=> bm!43427 (= call!43430 (contains!5988 lt!453484 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1028986 () Bool)

(assert (=> b!1028986 (= e!580941 e!580938)))

(declare-fun res!688478 () Bool)

(assert (=> b!1028986 (=> (not res!688478) (not e!580938))))

(assert (=> b!1028986 (= res!688478 (contains!5988 lt!453484 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(assert (=> b!1028986 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!31647 lt!453342)))))

(declare-fun b!1028987 () Bool)

(assert (=> b!1028987 (= e!580946 (not call!43430))))

(declare-fun bm!43428 () Bool)

(assert (=> bm!43428 (= call!43429 call!43425)))

(declare-fun b!1028988 () Bool)

(assert (=> b!1028988 (= e!580935 e!580946)))

(declare-fun c!103852 () Bool)

(assert (=> b!1028988 (= c!103852 (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!1028989 () Bool)

(declare-fun res!688473 () Bool)

(assert (=> b!1028989 (=> (not res!688473) (not e!580935))))

(assert (=> b!1028989 (= res!688473 e!580936)))

(declare-fun c!103851 () Bool)

(assert (=> b!1028989 (= c!103851 (not (= (bvand (extraKeys!5842 thiss!1427) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!1028990 () Bool)

(declare-fun Unit!33565 () Unit!33556)

(assert (=> b!1028990 (= e!580939 Unit!33565)))

(assert (= (and d!123115 c!103853) b!1028976))

(assert (= (and d!123115 (not c!103853)) b!1028983))

(assert (= (and b!1028983 c!103856) b!1028982))

(assert (= (and b!1028983 (not c!103856)) b!1028971))

(assert (= (and b!1028971 c!103855) b!1028977))

(assert (= (and b!1028971 (not c!103855)) b!1028980))

(assert (= (or b!1028977 b!1028980) bm!43428))

(assert (= (or b!1028982 bm!43428) bm!43425))

(assert (= (or b!1028982 b!1028977) bm!43426))

(assert (= (or b!1028976 bm!43425) bm!43422))

(assert (= (or b!1028976 bm!43426) bm!43423))

(assert (= (and d!123115 res!688481) b!1028975))

(assert (= (and d!123115 c!103854) b!1028981))

(assert (= (and d!123115 (not c!103854)) b!1028990))

(assert (= (and d!123115 res!688477) b!1028978))

(assert (= (and b!1028978 res!688476) b!1028979))

(assert (= (and b!1028978 (not res!688474)) b!1028986))

(assert (= (and b!1028986 res!688478) b!1028970))

(assert (= (and b!1028978 res!688480) b!1028989))

(assert (= (and b!1028989 c!103851) b!1028984))

(assert (= (and b!1028989 (not c!103851)) b!1028973))

(assert (= (and b!1028984 res!688475) b!1028972))

(assert (= (or b!1028984 b!1028973) bm!43424))

(assert (= (and b!1028989 res!688473) b!1028988))

(assert (= (and b!1028988 c!103852) b!1028974))

(assert (= (and b!1028988 (not c!103852)) b!1028987))

(assert (= (and b!1028974 res!688479) b!1028985))

(assert (= (or b!1028974 b!1028987) bm!43427))

(declare-fun b_lambda!15869 () Bool)

(assert (=> (not b_lambda!15869) (not b!1028970)))

(assert (=> b!1028970 t!31013))

(declare-fun b_and!32927 () Bool)

(assert (= b_and!32925 (and (=> t!31013 result!14143) b_and!32927)))

(declare-fun m!948237 () Bool)

(assert (=> bm!43427 m!948237))

(assert (=> b!1028986 m!948147))

(assert (=> b!1028986 m!948147))

(declare-fun m!948239 () Bool)

(assert (=> b!1028986 m!948239))

(declare-fun m!948241 () Bool)

(assert (=> b!1028972 m!948241))

(declare-fun m!948243 () Bool)

(assert (=> bm!43422 m!948243))

(declare-fun m!948245 () Bool)

(assert (=> b!1028970 m!948245))

(assert (=> b!1028970 m!948245))

(assert (=> b!1028970 m!948091))

(declare-fun m!948247 () Bool)

(assert (=> b!1028970 m!948247))

(assert (=> b!1028970 m!948147))

(declare-fun m!948249 () Bool)

(assert (=> b!1028970 m!948249))

(assert (=> b!1028970 m!948147))

(assert (=> b!1028970 m!948091))

(declare-fun m!948251 () Bool)

(assert (=> bm!43423 m!948251))

(assert (=> b!1028979 m!948147))

(assert (=> b!1028979 m!948147))

(assert (=> b!1028979 m!948149))

(assert (=> b!1028981 m!948243))

(declare-fun m!948253 () Bool)

(assert (=> b!1028981 m!948253))

(declare-fun m!948255 () Bool)

(assert (=> b!1028981 m!948255))

(declare-fun m!948257 () Bool)

(assert (=> b!1028981 m!948257))

(declare-fun m!948259 () Bool)

(assert (=> b!1028981 m!948259))

(declare-fun m!948261 () Bool)

(assert (=> b!1028981 m!948261))

(declare-fun m!948263 () Bool)

(assert (=> b!1028981 m!948263))

(declare-fun m!948265 () Bool)

(assert (=> b!1028981 m!948265))

(assert (=> b!1028981 m!948255))

(assert (=> b!1028981 m!948263))

(declare-fun m!948267 () Bool)

(assert (=> b!1028981 m!948267))

(declare-fun m!948269 () Bool)

(assert (=> b!1028981 m!948269))

(declare-fun m!948271 () Bool)

(assert (=> b!1028981 m!948271))

(declare-fun m!948273 () Bool)

(assert (=> b!1028981 m!948273))

(assert (=> b!1028981 m!948267))

(declare-fun m!948275 () Bool)

(assert (=> b!1028981 m!948275))

(declare-fun m!948277 () Bool)

(assert (=> b!1028981 m!948277))

(declare-fun m!948279 () Bool)

(assert (=> b!1028981 m!948279))

(assert (=> b!1028981 m!948261))

(declare-fun m!948281 () Bool)

(assert (=> b!1028981 m!948281))

(assert (=> b!1028981 m!948147))

(assert (=> d!123115 m!948219))

(declare-fun m!948283 () Bool)

(assert (=> b!1028976 m!948283))

(declare-fun m!948285 () Bool)

(assert (=> b!1028985 m!948285))

(assert (=> b!1028975 m!948147))

(assert (=> b!1028975 m!948147))

(assert (=> b!1028975 m!948149))

(declare-fun m!948287 () Bool)

(assert (=> bm!43424 m!948287))

(assert (=> b!1028835 d!123115))

(declare-fun d!123117 () Bool)

(declare-fun lt!453486 () (_ BitVec 32))

(assert (=> d!123117 (and (bvsge lt!453486 #b00000000000000000000000000000000) (bvsle lt!453486 (bvsub (size!31647 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun e!580947 () (_ BitVec 32))

(assert (=> d!123117 (= lt!453486 e!580947)))

(declare-fun c!103858 () Bool)

(assert (=> d!123117 (= c!103858 (bvsge #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))))))

(assert (=> d!123117 (and (bvsle #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!31647 (_keys!11266 thiss!1427)) (size!31647 (_keys!11266 thiss!1427))))))

(assert (=> d!123117 (= (arrayCountValidKeys!0 (_keys!11266 thiss!1427) #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) lt!453486)))

(declare-fun b!1028991 () Bool)

(declare-fun e!580948 () (_ BitVec 32))

(declare-fun call!43432 () (_ BitVec 32))

(assert (=> b!1028991 (= e!580948 call!43432)))

(declare-fun b!1028992 () Bool)

(assert (=> b!1028992 (= e!580947 #b00000000000000000000000000000000)))

(declare-fun bm!43429 () Bool)

(assert (=> bm!43429 (= call!43432 (arrayCountValidKeys!0 (_keys!11266 thiss!1427) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31647 (_keys!11266 thiss!1427))))))

(declare-fun b!1028993 () Bool)

(assert (=> b!1028993 (= e!580947 e!580948)))

(declare-fun c!103857 () Bool)

(assert (=> b!1028993 (= c!103857 (validKeyInArray!0 (select (arr!31131 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000)))))

(declare-fun b!1028994 () Bool)

(assert (=> b!1028994 (= e!580948 (bvadd #b00000000000000000000000000000001 call!43432))))

(assert (= (and d!123117 c!103858) b!1028992))

(assert (= (and d!123117 (not c!103858)) b!1028993))

(assert (= (and b!1028993 c!103857) b!1028994))

(assert (= (and b!1028993 (not c!103857)) b!1028991))

(assert (= (or b!1028994 b!1028991) bm!43429))

(declare-fun m!948289 () Bool)

(assert (=> bm!43429 m!948289))

(assert (=> b!1028993 m!948171))

(assert (=> b!1028993 m!948171))

(assert (=> b!1028993 m!948187))

(assert (=> b!1028835 d!123117))

(declare-fun b!1029005 () Bool)

(declare-fun e!580957 () Bool)

(declare-fun contains!5989 (List!21924 (_ BitVec 64)) Bool)

(assert (=> b!1029005 (= e!580957 (contains!5989 Nil!21921 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun d!123119 () Bool)

(declare-fun res!688490 () Bool)

(declare-fun e!580959 () Bool)

(assert (=> d!123119 (=> res!688490 e!580959)))

(assert (=> d!123119 (= res!688490 (bvsge #b00000000000000000000000000000000 (size!31647 lt!453342)))))

(assert (=> d!123119 (= (arrayNoDuplicates!0 lt!453342 #b00000000000000000000000000000000 Nil!21921) e!580959)))

(declare-fun b!1029006 () Bool)

(declare-fun e!580960 () Bool)

(declare-fun call!43435 () Bool)

(assert (=> b!1029006 (= e!580960 call!43435)))

(declare-fun b!1029007 () Bool)

(declare-fun e!580958 () Bool)

(assert (=> b!1029007 (= e!580959 e!580958)))

(declare-fun res!688489 () Bool)

(assert (=> b!1029007 (=> (not res!688489) (not e!580958))))

(assert (=> b!1029007 (= res!688489 (not e!580957))))

(declare-fun res!688488 () Bool)

(assert (=> b!1029007 (=> (not res!688488) (not e!580957))))

(assert (=> b!1029007 (= res!688488 (validKeyInArray!0 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun b!1029008 () Bool)

(assert (=> b!1029008 (= e!580960 call!43435)))

(declare-fun b!1029009 () Bool)

(assert (=> b!1029009 (= e!580958 e!580960)))

(declare-fun c!103861 () Bool)

(assert (=> b!1029009 (= c!103861 (validKeyInArray!0 (select (arr!31131 lt!453342) #b00000000000000000000000000000000)))))

(declare-fun bm!43432 () Bool)

(assert (=> bm!43432 (= call!43435 (arrayNoDuplicates!0 lt!453342 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!103861 (Cons!21920 (select (arr!31131 lt!453342) #b00000000000000000000000000000000) Nil!21921) Nil!21921)))))

(assert (= (and d!123119 (not res!688490)) b!1029007))

(assert (= (and b!1029007 res!688488) b!1029005))

(assert (= (and b!1029007 res!688489) b!1029009))

(assert (= (and b!1029009 c!103861) b!1029006))

(assert (= (and b!1029009 (not c!103861)) b!1029008))

(assert (= (or b!1029006 b!1029008) bm!43432))

(assert (=> b!1029005 m!948147))

(assert (=> b!1029005 m!948147))

(declare-fun m!948291 () Bool)

(assert (=> b!1029005 m!948291))

(assert (=> b!1029007 m!948147))

(assert (=> b!1029007 m!948147))

(assert (=> b!1029007 m!948149))

(assert (=> b!1029009 m!948147))

(assert (=> b!1029009 m!948147))

(assert (=> b!1029009 m!948149))

(assert (=> bm!43432 m!948147))

(declare-fun m!948293 () Bool)

(assert (=> bm!43432 m!948293))

(assert (=> b!1028835 d!123119))

(declare-fun d!123121 () Bool)

(declare-fun e!580963 () Bool)

(assert (=> d!123121 e!580963))

(declare-fun res!688493 () Bool)

(assert (=> d!123121 (=> (not res!688493) (not e!580963))))

(assert (=> d!123121 (= res!688493 (and (bvsge (index!41043 lt!453345) #b00000000000000000000000000000000) (bvslt (index!41043 lt!453345) (size!31647 (_keys!11266 thiss!1427)))))))

(declare-fun lt!453489 () Unit!33556)

(declare-fun choose!53 (array!64658 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!21924) Unit!33556)

(assert (=> d!123121 (= lt!453489 (choose!53 (_keys!11266 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41043 lt!453345) #b00000000000000000000000000000000 Nil!21921))))

(assert (=> d!123121 (bvslt (size!31647 (_keys!11266 thiss!1427)) #b01111111111111111111111111111111)))

(assert (=> d!123121 (= (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11266 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41043 lt!453345) #b00000000000000000000000000000000 Nil!21921) lt!453489)))

(declare-fun b!1029012 () Bool)

(assert (=> b!1029012 (= e!580963 (arrayNoDuplicates!0 (array!64659 (store (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31647 (_keys!11266 thiss!1427))) #b00000000000000000000000000000000 Nil!21921))))

(assert (= (and d!123121 res!688493) b!1029012))

(declare-fun m!948295 () Bool)

(assert (=> d!123121 m!948295))

(assert (=> b!1029012 m!948075))

(declare-fun m!948297 () Bool)

(assert (=> b!1029012 m!948297))

(assert (=> b!1028835 d!123121))

(declare-fun d!123123 () Bool)

(declare-fun e!580966 () Bool)

(assert (=> d!123123 e!580966))

(declare-fun res!688496 () Bool)

(assert (=> d!123123 (=> (not res!688496) (not e!580966))))

(assert (=> d!123123 (= res!688496 (bvslt (index!41043 lt!453345) (size!31647 (_keys!11266 thiss!1427))))))

(declare-fun lt!453492 () Unit!33556)

(declare-fun choose!121 (array!64658 (_ BitVec 32) (_ BitVec 64)) Unit!33556)

(assert (=> d!123123 (= lt!453492 (choose!121 (_keys!11266 thiss!1427) (index!41043 lt!453345) key!909))))

(assert (=> d!123123 (bvsge (index!41043 lt!453345) #b00000000000000000000000000000000)))

(assert (=> d!123123 (= (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11266 thiss!1427) (index!41043 lt!453345) key!909) lt!453492)))

(declare-fun b!1029015 () Bool)

(assert (=> b!1029015 (= e!580966 (not (arrayContainsKey!0 (array!64659 (store (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31647 (_keys!11266 thiss!1427))) key!909 #b00000000000000000000000000000000)))))

(assert (= (and d!123123 res!688496) b!1029015))

(declare-fun m!948299 () Bool)

(assert (=> d!123123 m!948299))

(assert (=> b!1029015 m!948075))

(declare-fun m!948301 () Bool)

(assert (=> b!1029015 m!948301))

(assert (=> b!1028835 d!123123))

(declare-fun d!123125 () Bool)

(assert (=> d!123125 (= (validMask!0 (mask!29851 (_2!7828 lt!453344))) (and (or (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000000000111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000000001111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000000011111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000000111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000001111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000011111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000000111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000001111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000011111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000000111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000001111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000011111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000000111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000001111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000011111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000000111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000001111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000011111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000000111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000001111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000011111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000000111111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000001111111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000011111111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00000111111111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00001111111111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00011111111111111111111111111111) (= (mask!29851 (_2!7828 lt!453344)) #b00111111111111111111111111111111)) (bvsle (mask!29851 (_2!7828 lt!453344)) #b00111111111111111111111111111111)))))

(assert (=> b!1028835 d!123125))

(declare-fun d!123127 () Bool)

(declare-fun res!688501 () Bool)

(declare-fun e!580971 () Bool)

(assert (=> d!123127 (=> res!688501 e!580971)))

(assert (=> d!123127 (= res!688501 (= (select (arr!31131 lt!453342) #b00000000000000000000000000000000) key!909))))

(assert (=> d!123127 (= (arrayContainsKey!0 lt!453342 key!909 #b00000000000000000000000000000000) e!580971)))

(declare-fun b!1029020 () Bool)

(declare-fun e!580972 () Bool)

(assert (=> b!1029020 (= e!580971 e!580972)))

(declare-fun res!688502 () Bool)

(assert (=> b!1029020 (=> (not res!688502) (not e!580972))))

(assert (=> b!1029020 (= res!688502 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!31647 lt!453342)))))

(declare-fun b!1029021 () Bool)

(assert (=> b!1029021 (= e!580972 (arrayContainsKey!0 lt!453342 key!909 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!123127 (not res!688501)) b!1029020))

(assert (= (and b!1029020 res!688502) b!1029021))

(assert (=> d!123127 m!948147))

(declare-fun m!948303 () Bool)

(assert (=> b!1029021 m!948303))

(assert (=> b!1028835 d!123127))

(declare-fun d!123129 () Bool)

(declare-fun e!580975 () Bool)

(assert (=> d!123129 e!580975))

(declare-fun res!688505 () Bool)

(assert (=> d!123129 (=> (not res!688505) (not e!580975))))

(assert (=> d!123129 (= res!688505 (and (bvsge (index!41043 lt!453345) #b00000000000000000000000000000000) (bvslt (index!41043 lt!453345) (size!31647 (_keys!11266 thiss!1427)))))))

(declare-fun lt!453495 () Unit!33556)

(declare-fun choose!25 (array!64658 (_ BitVec 32) (_ BitVec 32)) Unit!33556)

(assert (=> d!123129 (= lt!453495 (choose!25 (_keys!11266 thiss!1427) (index!41043 lt!453345) (mask!29851 thiss!1427)))))

(assert (=> d!123129 (validMask!0 (mask!29851 thiss!1427))))

(assert (=> d!123129 (= (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11266 thiss!1427) (index!41043 lt!453345) (mask!29851 thiss!1427)) lt!453495)))

(declare-fun b!1029024 () Bool)

(assert (=> b!1029024 (= e!580975 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!64659 (store (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453345) #b1000000000000000000000000000000000000000000000000000000000000000) (size!31647 (_keys!11266 thiss!1427))) (mask!29851 thiss!1427)))))

(assert (= (and d!123129 res!688505) b!1029024))

(declare-fun m!948305 () Bool)

(assert (=> d!123129 m!948305))

(assert (=> d!123129 m!948219))

(assert (=> b!1029024 m!948075))

(declare-fun m!948307 () Bool)

(assert (=> b!1029024 m!948307))

(assert (=> b!1028835 d!123129))

(declare-fun d!123131 () Bool)

(assert (=> d!123131 (= (array_inv!23949 (_keys!11266 thiss!1427)) (bvsge (size!31647 (_keys!11266 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1028834 d!123131))

(declare-fun d!123133 () Bool)

(assert (=> d!123133 (= (array_inv!23950 (_values!6133 thiss!1427)) (bvsge (size!31648 (_values!6133 thiss!1427)) #b00000000000000000000000000000000))))

(assert (=> b!1028834 d!123133))

(declare-fun b!1029037 () Bool)

(declare-fun c!103869 () Bool)

(declare-fun lt!453505 () (_ BitVec 64))

(assert (=> b!1029037 (= c!103869 (= lt!453505 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!580982 () SeekEntryResult!9668)

(declare-fun e!580984 () SeekEntryResult!9668)

(assert (=> b!1029037 (= e!580982 e!580984)))

(declare-fun b!1029038 () Bool)

(declare-fun lt!453506 () SeekEntryResult!9668)

(assert (=> b!1029038 (= e!580982 (Found!9668 (index!41044 lt!453506)))))

(declare-fun b!1029040 () Bool)

(assert (=> b!1029040 (= e!580984 (MissingZero!9668 (index!41044 lt!453506)))))

(declare-fun b!1029041 () Bool)

(declare-fun e!580983 () SeekEntryResult!9668)

(assert (=> b!1029041 (= e!580983 Undefined!9668)))

(declare-fun b!1029042 () Bool)

(assert (=> b!1029042 (= e!580983 e!580982)))

(assert (=> b!1029042 (= lt!453505 (select (arr!31131 (_keys!11266 thiss!1427)) (index!41044 lt!453506)))))

(declare-fun c!103870 () Bool)

(assert (=> b!1029042 (= c!103870 (= lt!453505 key!909))))

(declare-fun b!1029039 () Bool)

(declare-fun lt!453507 () SeekEntryResult!9668)

(assert (=> b!1029039 (= e!580984 (ite ((_ is MissingVacant!9668) lt!453507) (MissingZero!9668 (index!41045 lt!453507)) lt!453507))))

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64658 (_ BitVec 32)) SeekEntryResult!9668)

(assert (=> b!1029039 (= lt!453507 (seekKeyOrZeroReturnVacant!0 (x!91537 lt!453506) (index!41044 lt!453506) (index!41044 lt!453506) key!909 (_keys!11266 thiss!1427) (mask!29851 thiss!1427)))))

(declare-fun d!123135 () Bool)

(declare-fun lt!453504 () SeekEntryResult!9668)

(assert (=> d!123135 (and (or ((_ is MissingVacant!9668) lt!453504) (not ((_ is Found!9668) lt!453504)) (and (bvsge (index!41043 lt!453504) #b00000000000000000000000000000000) (bvslt (index!41043 lt!453504) (size!31647 (_keys!11266 thiss!1427))))) (not ((_ is MissingVacant!9668) lt!453504)) (or (not ((_ is Found!9668) lt!453504)) (= (select (arr!31131 (_keys!11266 thiss!1427)) (index!41043 lt!453504)) key!909)))))

(assert (=> d!123135 (= lt!453504 e!580983)))

(declare-fun c!103868 () Bool)

(assert (=> d!123135 (= c!103868 (and ((_ is Intermediate!9668) lt!453506) (undefined!10480 lt!453506)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!64658 (_ BitVec 32)) SeekEntryResult!9668)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!123135 (= lt!453506 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!909 (mask!29851 thiss!1427)) key!909 (_keys!11266 thiss!1427) (mask!29851 thiss!1427)))))

(assert (=> d!123135 (validMask!0 (mask!29851 thiss!1427))))

(assert (=> d!123135 (= (seekEntry!0 key!909 (_keys!11266 thiss!1427) (mask!29851 thiss!1427)) lt!453504)))

(assert (= (and d!123135 c!103868) b!1029041))

(assert (= (and d!123135 (not c!103868)) b!1029042))

(assert (= (and b!1029042 c!103870) b!1029038))

(assert (= (and b!1029042 (not c!103870)) b!1029037))

(assert (= (and b!1029037 c!103869) b!1029040))

(assert (= (and b!1029037 (not c!103869)) b!1029039))

(declare-fun m!948309 () Bool)

(assert (=> b!1029042 m!948309))

(declare-fun m!948311 () Bool)

(assert (=> b!1029039 m!948311))

(declare-fun m!948313 () Bool)

(assert (=> d!123135 m!948313))

(declare-fun m!948315 () Bool)

(assert (=> d!123135 m!948315))

(assert (=> d!123135 m!948315))

(declare-fun m!948317 () Bool)

(assert (=> d!123135 m!948317))

(assert (=> d!123135 m!948219))

(assert (=> b!1028839 d!123135))

(declare-fun d!123137 () Bool)

(declare-fun res!688512 () Bool)

(declare-fun e!580987 () Bool)

(assert (=> d!123137 (=> (not res!688512) (not e!580987))))

(declare-fun simpleValid!392 (LongMapFixedSize!5496) Bool)

(assert (=> d!123137 (= res!688512 (simpleValid!392 thiss!1427))))

(assert (=> d!123137 (= (valid!2035 thiss!1427) e!580987)))

(declare-fun b!1029049 () Bool)

(declare-fun res!688513 () Bool)

(assert (=> b!1029049 (=> (not res!688513) (not e!580987))))

(assert (=> b!1029049 (= res!688513 (= (arrayCountValidKeys!0 (_keys!11266 thiss!1427) #b00000000000000000000000000000000 (size!31647 (_keys!11266 thiss!1427))) (_size!2803 thiss!1427)))))

(declare-fun b!1029050 () Bool)

(declare-fun res!688514 () Bool)

(assert (=> b!1029050 (=> (not res!688514) (not e!580987))))

(assert (=> b!1029050 (= res!688514 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11266 thiss!1427) (mask!29851 thiss!1427)))))

(declare-fun b!1029051 () Bool)

(assert (=> b!1029051 (= e!580987 (arrayNoDuplicates!0 (_keys!11266 thiss!1427) #b00000000000000000000000000000000 Nil!21921))))

(assert (= (and d!123137 res!688512) b!1029049))

(assert (= (and b!1029049 res!688513) b!1029050))

(assert (= (and b!1029050 res!688514) b!1029051))

(declare-fun m!948319 () Bool)

(assert (=> d!123137 m!948319))

(assert (=> b!1029049 m!948079))

(declare-fun m!948321 () Bool)

(assert (=> b!1029050 m!948321))

(declare-fun m!948323 () Bool)

(assert (=> b!1029051 m!948323))

(assert (=> start!89806 d!123137))

(declare-fun b!1029058 () Bool)

(declare-fun e!580993 () Bool)

(assert (=> b!1029058 (= e!580993 tp_is_empty!24309)))

(declare-fun mapNonEmpty!37909 () Bool)

(declare-fun mapRes!37909 () Bool)

(declare-fun tp!72834 () Bool)

(assert (=> mapNonEmpty!37909 (= mapRes!37909 (and tp!72834 e!580993))))

(declare-fun mapValue!37909 () ValueCell!11451)

(declare-fun mapRest!37909 () (Array (_ BitVec 32) ValueCell!11451))

(declare-fun mapKey!37909 () (_ BitVec 32))

(assert (=> mapNonEmpty!37909 (= mapRest!37903 (store mapRest!37909 mapKey!37909 mapValue!37909))))

(declare-fun b!1029059 () Bool)

(declare-fun e!580992 () Bool)

(assert (=> b!1029059 (= e!580992 tp_is_empty!24309)))

(declare-fun mapIsEmpty!37909 () Bool)

(assert (=> mapIsEmpty!37909 mapRes!37909))

(declare-fun condMapEmpty!37909 () Bool)

(declare-fun mapDefault!37909 () ValueCell!11451)

(assert (=> mapNonEmpty!37903 (= condMapEmpty!37909 (= mapRest!37903 ((as const (Array (_ BitVec 32) ValueCell!11451)) mapDefault!37909)))))

(assert (=> mapNonEmpty!37903 (= tp!72824 (and e!580992 mapRes!37909))))

(assert (= (and mapNonEmpty!37903 condMapEmpty!37909) mapIsEmpty!37909))

(assert (= (and mapNonEmpty!37903 (not condMapEmpty!37909)) mapNonEmpty!37909))

(assert (= (and mapNonEmpty!37909 ((_ is ValueCellFull!11451) mapValue!37909)) b!1029058))

(assert (= (and mapNonEmpty!37903 ((_ is ValueCellFull!11451) mapDefault!37909)) b!1029059))

(declare-fun m!948325 () Bool)

(assert (=> mapNonEmpty!37909 m!948325))

(declare-fun b_lambda!15871 () Bool)

(assert (= b_lambda!15865 (or (and b!1028834 b_free!20589) b_lambda!15871)))

(declare-fun b_lambda!15873 () Bool)

(assert (= b_lambda!15867 (or (and b!1028834 b_free!20589) b_lambda!15873)))

(declare-fun b_lambda!15875 () Bool)

(assert (= b_lambda!15869 (or (and b!1028834 b_free!20589) b_lambda!15875)))

(check-sat (not d!123129) (not b!1029050) (not d!123137) (not b!1029021) (not bm!43424) (not b!1028972) (not mapNonEmpty!37909) (not bm!43414) (not b!1029039) (not b!1028945) (not b_lambda!15863) (not b!1029024) tp_is_empty!24309 (not d!123107) (not b!1028970) (not b!1028975) (not b!1028950) (not b!1028943) (not b!1028976) (not bm!43422) (not b!1028968) (not b!1028949) (not b!1029005) (not d!123109) (not b_next!20589) (not b!1028889) (not bm!43423) (not b!1028876) (not d!123105) (not b!1029007) (not b_lambda!15875) (not bm!43413) (not b!1028879) (not b!1029009) (not bm!43421) (not d!123135) (not b!1028985) (not d!123123) (not b!1029012) (not bm!43412) (not b!1028957) (not b!1028891) (not b!1028939) (not b!1028888) (not bm!43397) (not b!1028993) (not b!1028986) (not d!123115) (not b!1029049) (not bm!43417) (not b!1028940) (not bm!43429) (not d!123111) (not bm!43427) (not b!1029015) b_and!32927 (not b_lambda!15871) (not b!1028981) (not d!123121) (not b!1028979) (not b!1028936) (not bm!43432) (not b!1029051) (not b!1028934) (not b_lambda!15873))
(check-sat b_and!32927 (not b_next!20589))
