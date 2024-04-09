; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!92016 () Bool)

(assert start!92016)

(declare-fun b!1045936 () Bool)

(declare-fun b_free!21153 () Bool)

(declare-fun b_next!21153 () Bool)

(assert (=> b!1045936 (= b_free!21153 (not b_next!21153))))

(declare-fun tp!74721 () Bool)

(declare-fun b_and!33819 () Bool)

(assert (=> b!1045936 (= tp!74721 b_and!33819)))

(declare-fun res!696432 () Bool)

(declare-fun e!592997 () Bool)

(assert (=> start!92016 (=> (not res!696432) (not e!592997))))

(declare-datatypes ((V!38037 0))(
  ( (V!38038 (val!12487 Int)) )
))
(declare-datatypes ((ValueCell!11733 0))(
  ( (ValueCellFull!11733 (v!15085 V!38037)) (EmptyCell!11733) )
))
(declare-datatypes ((array!65908 0))(
  ( (array!65909 (arr!31695 (Array (_ BitVec 32) (_ BitVec 64))) (size!32231 (_ BitVec 32))) )
))
(declare-datatypes ((array!65910 0))(
  ( (array!65911 (arr!31696 (Array (_ BitVec 32) ValueCell!11733)) (size!32232 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6060 0))(
  ( (LongMapFixedSize!6061 (defaultEntry!6428 Int) (mask!30562 (_ BitVec 32)) (extraKeys!6156 (_ BitVec 32)) (zeroValue!6262 V!38037) (minValue!6262 V!38037) (_size!3085 (_ BitVec 32)) (_keys!11699 array!65908) (_values!6451 array!65910) (_vacant!3085 (_ BitVec 32))) )
))
(declare-fun thiss!1427 () LongMapFixedSize!6060)

(declare-fun valid!2227 (LongMapFixedSize!6060) Bool)

(assert (=> start!92016 (= res!696432 (valid!2227 thiss!1427))))

(assert (=> start!92016 e!592997))

(declare-fun e!592993 () Bool)

(assert (=> start!92016 e!592993))

(assert (=> start!92016 true))

(declare-fun b!1045929 () Bool)

(declare-fun e!592995 () Bool)

(declare-datatypes ((Unit!34168 0))(
  ( (Unit!34169) )
))
(declare-datatypes ((tuple2!15910 0))(
  ( (tuple2!15911 (_1!7965 Unit!34168) (_2!7965 LongMapFixedSize!6060)) )
))
(declare-fun lt!461931 () tuple2!15910)

(declare-datatypes ((List!22150 0))(
  ( (Nil!22147) (Cons!22146 (h!23354 (_ BitVec 64)) (t!31441 List!22150)) )
))
(declare-fun arrayNoDuplicates!0 (array!65908 (_ BitVec 32) List!22150) Bool)

(assert (=> b!1045929 (= e!592995 (arrayNoDuplicates!0 (_keys!11699 (_2!7965 lt!461931)) #b00000000000000000000000000000000 Nil!22147))))

(declare-fun b!1045930 () Bool)

(declare-fun e!592998 () Bool)

(declare-fun tp_is_empty!24873 () Bool)

(assert (=> b!1045930 (= e!592998 tp_is_empty!24873)))

(declare-fun b!1045931 () Bool)

(declare-fun res!696435 () Bool)

(assert (=> b!1045931 (=> res!696435 e!592995)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!1045931 (= res!696435 (not (validMask!0 (mask!30562 (_2!7965 lt!461931)))))))

(declare-fun b!1045932 () Bool)

(declare-fun e!592992 () Bool)

(assert (=> b!1045932 (= e!592992 tp_is_empty!24873)))

(declare-fun b!1045933 () Bool)

(declare-fun res!696434 () Bool)

(assert (=> b!1045933 (=> res!696434 e!592995)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!65908 (_ BitVec 32)) Bool)

(assert (=> b!1045933 (= res!696434 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!11699 (_2!7965 lt!461931)) (mask!30562 (_2!7965 lt!461931)))))))

(declare-fun mapIsEmpty!38954 () Bool)

(declare-fun mapRes!38954 () Bool)

(assert (=> mapIsEmpty!38954 mapRes!38954))

(declare-fun b!1045934 () Bool)

(declare-fun e!592996 () Bool)

(assert (=> b!1045934 (= e!592997 e!592996)))

(declare-fun res!696431 () Bool)

(assert (=> b!1045934 (=> (not res!696431) (not e!592996))))

(declare-datatypes ((SeekEntryResult!9851 0))(
  ( (MissingZero!9851 (index!41774 (_ BitVec 32))) (Found!9851 (index!41775 (_ BitVec 32))) (Intermediate!9851 (undefined!10663 Bool) (index!41776 (_ BitVec 32)) (x!93436 (_ BitVec 32))) (Undefined!9851) (MissingVacant!9851 (index!41777 (_ BitVec 32))) )
))
(declare-fun lt!461926 () SeekEntryResult!9851)

(get-info :version)

(assert (=> b!1045934 (= res!696431 ((_ is Found!9851) lt!461926))))

(declare-fun key!909 () (_ BitVec 64))

(declare-fun seekEntry!0 ((_ BitVec 64) array!65908 (_ BitVec 32)) SeekEntryResult!9851)

(assert (=> b!1045934 (= lt!461926 (seekEntry!0 key!909 (_keys!11699 thiss!1427) (mask!30562 thiss!1427)))))

(declare-fun b!1045935 () Bool)

(declare-fun res!696430 () Bool)

(assert (=> b!1045935 (=> (not res!696430) (not e!592997))))

(assert (=> b!1045935 (= res!696430 (not (= key!909 (bvneg key!909))))))

(declare-fun e!592994 () Bool)

(declare-fun array_inv!24323 (array!65908) Bool)

(declare-fun array_inv!24324 (array!65910) Bool)

(assert (=> b!1045936 (= e!592993 (and tp!74721 tp_is_empty!24873 (array_inv!24323 (_keys!11699 thiss!1427)) (array_inv!24324 (_values!6451 thiss!1427)) e!592994))))

(declare-fun mapNonEmpty!38954 () Bool)

(declare-fun tp!74722 () Bool)

(assert (=> mapNonEmpty!38954 (= mapRes!38954 (and tp!74722 e!592992))))

(declare-fun mapValue!38954 () ValueCell!11733)

(declare-fun mapKey!38954 () (_ BitVec 32))

(declare-fun mapRest!38954 () (Array (_ BitVec 32) ValueCell!11733))

(assert (=> mapNonEmpty!38954 (= (arr!31696 (_values!6451 thiss!1427)) (store mapRest!38954 mapKey!38954 mapValue!38954))))

(declare-fun b!1045937 () Bool)

(declare-fun res!696436 () Bool)

(assert (=> b!1045937 (=> res!696436 e!592995)))

(assert (=> b!1045937 (= res!696436 (or (not (= (size!32232 (_values!6451 (_2!7965 lt!461931))) (bvadd #b00000000000000000000000000000001 (mask!30562 (_2!7965 lt!461931))))) (not (= (size!32231 (_keys!11699 (_2!7965 lt!461931))) (size!32232 (_values!6451 (_2!7965 lt!461931))))) (bvslt (mask!30562 (_2!7965 lt!461931)) #b00000000000000000000000000000000) (bvslt (extraKeys!6156 (_2!7965 lt!461931)) #b00000000000000000000000000000000) (bvsgt (extraKeys!6156 (_2!7965 lt!461931)) #b00000000000000000000000000000011)))))

(declare-fun b!1045938 () Bool)

(assert (=> b!1045938 (= e!592996 (not e!592995))))

(declare-fun res!696433 () Bool)

(assert (=> b!1045938 (=> res!696433 e!592995)))

(declare-datatypes ((tuple2!15912 0))(
  ( (tuple2!15913 (_1!7966 (_ BitVec 64)) (_2!7966 V!38037)) )
))
(declare-datatypes ((List!22151 0))(
  ( (Nil!22148) (Cons!22147 (h!23355 tuple2!15912) (t!31442 List!22151)) )
))
(declare-datatypes ((ListLongMap!13911 0))(
  ( (ListLongMap!13912 (toList!6971 List!22151)) )
))
(declare-fun contains!6106 (ListLongMap!13911 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!3977 (array!65908 array!65910 (_ BitVec 32) (_ BitVec 32) V!38037 V!38037 (_ BitVec 32) Int) ListLongMap!13911)

(assert (=> b!1045938 (= res!696433 (not (contains!6106 (getCurrentListMap!3977 (_keys!11699 (_2!7965 lt!461931)) (_values!6451 (_2!7965 lt!461931)) (mask!30562 (_2!7965 lt!461931)) (extraKeys!6156 (_2!7965 lt!461931)) (zeroValue!6262 (_2!7965 lt!461931)) (minValue!6262 (_2!7965 lt!461931)) #b00000000000000000000000000000000 (defaultEntry!6428 (_2!7965 lt!461931))) key!909)))))

(declare-fun lt!461930 () array!65908)

(declare-fun lt!461929 () array!65910)

(declare-fun Unit!34170 () Unit!34168)

(declare-fun Unit!34171 () Unit!34168)

(assert (=> b!1045938 (= lt!461931 (ite (bvsgt (bvadd #b00000000000000000000000000000001 (_vacant!3085 thiss!1427)) #b00000000000000000000000000000000) (tuple2!15911 Unit!34170 (LongMapFixedSize!6061 (defaultEntry!6428 thiss!1427) (mask!30562 thiss!1427) (extraKeys!6156 thiss!1427) (zeroValue!6262 thiss!1427) (minValue!6262 thiss!1427) (bvsub (_size!3085 thiss!1427) #b00000000000000000000000000000001) lt!461930 lt!461929 (bvadd #b00000000000000000000000000000001 (_vacant!3085 thiss!1427)))) (tuple2!15911 Unit!34171 (LongMapFixedSize!6061 (defaultEntry!6428 thiss!1427) (mask!30562 thiss!1427) (extraKeys!6156 thiss!1427) (zeroValue!6262 thiss!1427) (minValue!6262 thiss!1427) (bvsub (_size!3085 thiss!1427) #b00000000000000000000000000000001) lt!461930 lt!461929 (_vacant!3085 thiss!1427)))))))

(declare-fun -!547 (ListLongMap!13911 (_ BitVec 64)) ListLongMap!13911)

(assert (=> b!1045938 (= (-!547 (getCurrentListMap!3977 (_keys!11699 thiss!1427) (_values!6451 thiss!1427) (mask!30562 thiss!1427) (extraKeys!6156 thiss!1427) (zeroValue!6262 thiss!1427) (minValue!6262 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6428 thiss!1427)) key!909) (getCurrentListMap!3977 lt!461930 lt!461929 (mask!30562 thiss!1427) (extraKeys!6156 thiss!1427) (zeroValue!6262 thiss!1427) (minValue!6262 thiss!1427) #b00000000000000000000000000000000 (defaultEntry!6428 thiss!1427)))))

(declare-fun dynLambda!2021 (Int (_ BitVec 64)) V!38037)

(assert (=> b!1045938 (= lt!461929 (array!65911 (store (arr!31696 (_values!6451 thiss!1427)) (index!41775 lt!461926) (ValueCellFull!11733 (dynLambda!2021 (defaultEntry!6428 thiss!1427) #b0000000000000000000000000000000000000000000000000000000000000000))) (size!32232 (_values!6451 thiss!1427))))))

(declare-fun lt!461924 () Unit!34168)

(declare-fun lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!67 (array!65908 array!65910 (_ BitVec 32) (_ BitVec 32) V!38037 V!38037 (_ BitVec 32) (_ BitVec 64) Int) Unit!34168)

(assert (=> b!1045938 (= lt!461924 (lemmaRemoveValidKeyToArrayThenRemoveKeyFromListMap!67 (_keys!11699 thiss!1427) (_values!6451 thiss!1427) (mask!30562 thiss!1427) (extraKeys!6156 thiss!1427) (zeroValue!6262 thiss!1427) (minValue!6262 thiss!1427) (index!41775 lt!461926) key!909 (defaultEntry!6428 thiss!1427)))))

(declare-fun arrayContainsKey!0 (array!65908 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1045938 (not (arrayContainsKey!0 lt!461930 key!909 #b00000000000000000000000000000000))))

(declare-fun lt!461927 () Unit!34168)

(declare-fun lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (array!65908 (_ BitVec 32) (_ BitVec 64)) Unit!34168)

(assert (=> b!1045938 (= lt!461927 (lemmaArrayNoDuplicateRemoveOneThenNotContain!0 (_keys!11699 thiss!1427) (index!41775 lt!461926) key!909))))

(assert (=> b!1045938 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!461930 (mask!30562 thiss!1427))))

(declare-fun lt!461928 () Unit!34168)

(declare-fun lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (array!65908 (_ BitVec 32) (_ BitVec 32)) Unit!34168)

(assert (=> b!1045938 (= lt!461928 (lemmaPutLongMinValuePreservesForallSeekEntryOrOpen!0 (_keys!11699 thiss!1427) (index!41775 lt!461926) (mask!30562 thiss!1427)))))

(assert (=> b!1045938 (arrayNoDuplicates!0 lt!461930 #b00000000000000000000000000000000 Nil!22147)))

(declare-fun lt!461925 () Unit!34168)

(declare-fun lemmaPutNonValidKeyPreservesNoDuplicate!0 (array!65908 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!22150) Unit!34168)

(assert (=> b!1045938 (= lt!461925 (lemmaPutNonValidKeyPreservesNoDuplicate!0 (_keys!11699 thiss!1427) #b1000000000000000000000000000000000000000000000000000000000000000 (index!41775 lt!461926) #b00000000000000000000000000000000 Nil!22147))))

(declare-fun arrayCountValidKeys!0 (array!65908 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1045938 (= (arrayCountValidKeys!0 lt!461930 #b00000000000000000000000000000000 (size!32231 (_keys!11699 thiss!1427))) (bvsub (arrayCountValidKeys!0 (_keys!11699 thiss!1427) #b00000000000000000000000000000000 (size!32231 (_keys!11699 thiss!1427))) #b00000000000000000000000000000001))))

(assert (=> b!1045938 (= lt!461930 (array!65909 (store (arr!31695 (_keys!11699 thiss!1427)) (index!41775 lt!461926) #b1000000000000000000000000000000000000000000000000000000000000000) (size!32231 (_keys!11699 thiss!1427))))))

(declare-fun lt!461923 () Unit!34168)

(declare-fun lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (array!65908 (_ BitVec 32) (_ BitVec 64)) Unit!34168)

(assert (=> b!1045938 (= lt!461923 (lemmaRemoveValidKeyDecreasesNumberOfValidKeysInArray!0 (_keys!11699 thiss!1427) (index!41775 lt!461926) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!1045939 () Bool)

(assert (=> b!1045939 (= e!592994 (and e!592998 mapRes!38954))))

(declare-fun condMapEmpty!38954 () Bool)

(declare-fun mapDefault!38954 () ValueCell!11733)

(assert (=> b!1045939 (= condMapEmpty!38954 (= (arr!31696 (_values!6451 thiss!1427)) ((as const (Array (_ BitVec 32) ValueCell!11733)) mapDefault!38954)))))

(assert (= (and start!92016 res!696432) b!1045935))

(assert (= (and b!1045935 res!696430) b!1045934))

(assert (= (and b!1045934 res!696431) b!1045938))

(assert (= (and b!1045938 (not res!696433)) b!1045931))

(assert (= (and b!1045931 (not res!696435)) b!1045937))

(assert (= (and b!1045937 (not res!696436)) b!1045933))

(assert (= (and b!1045933 (not res!696434)) b!1045929))

(assert (= (and b!1045939 condMapEmpty!38954) mapIsEmpty!38954))

(assert (= (and b!1045939 (not condMapEmpty!38954)) mapNonEmpty!38954))

(assert (= (and mapNonEmpty!38954 ((_ is ValueCellFull!11733) mapValue!38954)) b!1045932))

(assert (= (and b!1045939 ((_ is ValueCellFull!11733) mapDefault!38954)) b!1045930))

(assert (= b!1045936 b!1045939))

(assert (= start!92016 b!1045936))

(declare-fun b_lambda!16367 () Bool)

(assert (=> (not b_lambda!16367) (not b!1045938)))

(declare-fun t!31440 () Bool)

(declare-fun tb!7113 () Bool)

(assert (=> (and b!1045936 (= (defaultEntry!6428 thiss!1427) (defaultEntry!6428 thiss!1427)) t!31440) tb!7113))

(declare-fun result!14643 () Bool)

(assert (=> tb!7113 (= result!14643 tp_is_empty!24873)))

(assert (=> b!1045938 t!31440))

(declare-fun b_and!33821 () Bool)

(assert (= b_and!33819 (and (=> t!31440 result!14643) b_and!33821)))

(declare-fun m!965937 () Bool)

(assert (=> b!1045933 m!965937))

(declare-fun m!965939 () Bool)

(assert (=> mapNonEmpty!38954 m!965939))

(declare-fun m!965941 () Bool)

(assert (=> b!1045938 m!965941))

(declare-fun m!965943 () Bool)

(assert (=> b!1045938 m!965943))

(declare-fun m!965945 () Bool)

(assert (=> b!1045938 m!965945))

(declare-fun m!965947 () Bool)

(assert (=> b!1045938 m!965947))

(declare-fun m!965949 () Bool)

(assert (=> b!1045938 m!965949))

(declare-fun m!965951 () Bool)

(assert (=> b!1045938 m!965951))

(declare-fun m!965953 () Bool)

(assert (=> b!1045938 m!965953))

(declare-fun m!965955 () Bool)

(assert (=> b!1045938 m!965955))

(declare-fun m!965957 () Bool)

(assert (=> b!1045938 m!965957))

(declare-fun m!965959 () Bool)

(assert (=> b!1045938 m!965959))

(assert (=> b!1045938 m!965957))

(assert (=> b!1045938 m!965945))

(declare-fun m!965961 () Bool)

(assert (=> b!1045938 m!965961))

(declare-fun m!965963 () Bool)

(assert (=> b!1045938 m!965963))

(declare-fun m!965965 () Bool)

(assert (=> b!1045938 m!965965))

(declare-fun m!965967 () Bool)

(assert (=> b!1045938 m!965967))

(declare-fun m!965969 () Bool)

(assert (=> b!1045938 m!965969))

(declare-fun m!965971 () Bool)

(assert (=> b!1045938 m!965971))

(declare-fun m!965973 () Bool)

(assert (=> b!1045938 m!965973))

(declare-fun m!965975 () Bool)

(assert (=> b!1045938 m!965975))

(declare-fun m!965977 () Bool)

(assert (=> start!92016 m!965977))

(declare-fun m!965979 () Bool)

(assert (=> b!1045929 m!965979))

(declare-fun m!965981 () Bool)

(assert (=> b!1045934 m!965981))

(declare-fun m!965983 () Bool)

(assert (=> b!1045931 m!965983))

(declare-fun m!965985 () Bool)

(assert (=> b!1045936 m!965985))

(declare-fun m!965987 () Bool)

(assert (=> b!1045936 m!965987))

(check-sat (not b!1045929) b_and!33821 (not b_next!21153) (not b!1045936) (not b!1045938) (not b_lambda!16367) (not b!1045931) (not start!92016) (not b!1045933) (not mapNonEmpty!38954) (not b!1045934) tp_is_empty!24873)
(check-sat b_and!33821 (not b_next!21153))
