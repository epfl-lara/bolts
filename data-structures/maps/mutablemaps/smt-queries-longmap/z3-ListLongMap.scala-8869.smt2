; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107680 () Bool)

(assert start!107680)

(declare-fun b!1273852 () Bool)

(declare-fun b_free!27759 () Bool)

(declare-fun b_next!27759 () Bool)

(assert (=> b!1273852 (= b_free!27759 (not b_next!27759))))

(declare-fun tp!97841 () Bool)

(declare-fun b_and!45825 () Bool)

(assert (=> b!1273852 (= tp!97841 b_and!45825)))

(declare-fun b!1273849 () Bool)

(declare-fun e!726933 () Bool)

(declare-fun e!726931 () Bool)

(declare-fun mapRes!51331 () Bool)

(assert (=> b!1273849 (= e!726933 (and e!726931 mapRes!51331))))

(declare-fun condMapEmpty!51331 () Bool)

(declare-datatypes ((V!49365 0))(
  ( (V!49366 (val!16639 Int)) )
))
(declare-datatypes ((ValueCell!15711 0))(
  ( (ValueCellFull!15711 (v!19274 V!49365)) (EmptyCell!15711) )
))
(declare-datatypes ((array!83483 0))(
  ( (array!83484 (arr!40257 (Array (_ BitVec 32) ValueCell!15711)) (size!40805 (_ BitVec 32))) )
))
(declare-datatypes ((array!83485 0))(
  ( (array!83486 (arr!40258 (Array (_ BitVec 32) (_ BitVec 64))) (size!40806 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6186 0))(
  ( (LongMapFixedSize!6187 (defaultEntry!6739 Int) (mask!34532 (_ BitVec 32)) (extraKeys!6418 (_ BitVec 32)) (zeroValue!6524 V!49365) (minValue!6524 V!49365) (_size!3148 (_ BitVec 32)) (_keys!12151 array!83485) (_values!6762 array!83483) (_vacant!3148 (_ BitVec 32))) )
))
(declare-fun thiss!1551 () LongMapFixedSize!6186)

(declare-fun mapDefault!51331 () ValueCell!15711)

(assert (=> b!1273849 (= condMapEmpty!51331 (= (arr!40257 (_values!6762 thiss!1551)) ((as const (Array (_ BitVec 32) ValueCell!15711)) mapDefault!51331)))))

(declare-fun mapIsEmpty!51331 () Bool)

(assert (=> mapIsEmpty!51331 mapRes!51331))

(declare-fun b!1273850 () Bool)

(declare-fun e!726929 () Bool)

(assert (=> b!1273850 (= e!726929 (and (bvsle #b00000000000000000000000000000000 (size!40806 (_keys!12151 thiss!1551))) (bvsge (size!40806 (_keys!12151 thiss!1551)) #b01111111111111111111111111111111)))))

(declare-fun mapNonEmpty!51331 () Bool)

(declare-fun tp!97840 () Bool)

(declare-fun e!726930 () Bool)

(assert (=> mapNonEmpty!51331 (= mapRes!51331 (and tp!97840 e!726930))))

(declare-fun mapRest!51331 () (Array (_ BitVec 32) ValueCell!15711))

(declare-fun mapKey!51331 () (_ BitVec 32))

(declare-fun mapValue!51331 () ValueCell!15711)

(assert (=> mapNonEmpty!51331 (= (arr!40257 (_values!6762 thiss!1551)) (store mapRest!51331 mapKey!51331 mapValue!51331))))

(declare-fun b!1273851 () Bool)

(declare-fun res!847061 () Bool)

(assert (=> b!1273851 (=> (not res!847061) (not e!726929))))

(declare-fun arrayCountValidKeys!0 (array!83485 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!1273851 (= res!847061 (= (arrayCountValidKeys!0 (_keys!12151 thiss!1551) #b00000000000000000000000000000000 (size!40806 (_keys!12151 thiss!1551))) (_size!3148 thiss!1551)))))

(declare-fun res!847060 () Bool)

(assert (=> start!107680 (=> (not res!847060) (not e!726929))))

(declare-fun simpleValid!475 (LongMapFixedSize!6186) Bool)

(assert (=> start!107680 (= res!847060 (simpleValid!475 thiss!1551))))

(assert (=> start!107680 e!726929))

(declare-fun e!726928 () Bool)

(assert (=> start!107680 e!726928))

(declare-fun tp_is_empty!33129 () Bool)

(declare-fun array_inv!30553 (array!83485) Bool)

(declare-fun array_inv!30554 (array!83483) Bool)

(assert (=> b!1273852 (= e!726928 (and tp!97841 tp_is_empty!33129 (array_inv!30553 (_keys!12151 thiss!1551)) (array_inv!30554 (_values!6762 thiss!1551)) e!726933))))

(declare-fun b!1273853 () Bool)

(assert (=> b!1273853 (= e!726930 tp_is_empty!33129)))

(declare-fun b!1273854 () Bool)

(assert (=> b!1273854 (= e!726931 tp_is_empty!33129)))

(declare-fun b!1273855 () Bool)

(declare-fun res!847062 () Bool)

(assert (=> b!1273855 (=> (not res!847062) (not e!726929))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!83485 (_ BitVec 32)) Bool)

(assert (=> b!1273855 (= res!847062 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12151 thiss!1551) (mask!34532 thiss!1551)))))

(assert (= (and start!107680 res!847060) b!1273851))

(assert (= (and b!1273851 res!847061) b!1273855))

(assert (= (and b!1273855 res!847062) b!1273850))

(assert (= (and b!1273849 condMapEmpty!51331) mapIsEmpty!51331))

(assert (= (and b!1273849 (not condMapEmpty!51331)) mapNonEmpty!51331))

(get-info :version)

(assert (= (and mapNonEmpty!51331 ((_ is ValueCellFull!15711) mapValue!51331)) b!1273853))

(assert (= (and b!1273849 ((_ is ValueCellFull!15711) mapDefault!51331)) b!1273854))

(assert (= b!1273852 b!1273849))

(assert (= start!107680 b!1273852))

(declare-fun m!1170837 () Bool)

(assert (=> start!107680 m!1170837))

(declare-fun m!1170839 () Bool)

(assert (=> mapNonEmpty!51331 m!1170839))

(declare-fun m!1170841 () Bool)

(assert (=> b!1273852 m!1170841))

(declare-fun m!1170843 () Bool)

(assert (=> b!1273852 m!1170843))

(declare-fun m!1170845 () Bool)

(assert (=> b!1273855 m!1170845))

(declare-fun m!1170847 () Bool)

(assert (=> b!1273851 m!1170847))

(check-sat (not start!107680) (not b!1273852) tp_is_empty!33129 b_and!45825 (not mapNonEmpty!51331) (not b!1273855) (not b!1273851) (not b_next!27759))
(check-sat b_and!45825 (not b_next!27759))
(get-model)

(declare-fun d!139973 () Bool)

(assert (=> d!139973 (= (array_inv!30553 (_keys!12151 thiss!1551)) (bvsge (size!40806 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273852 d!139973))

(declare-fun d!139975 () Bool)

(assert (=> d!139975 (= (array_inv!30554 (_values!6762 thiss!1551)) (bvsge (size!40805 (_values!6762 thiss!1551)) #b00000000000000000000000000000000))))

(assert (=> b!1273852 d!139975))

(declare-fun d!139977 () Bool)

(declare-fun res!847081 () Bool)

(declare-fun e!726954 () Bool)

(assert (=> d!139977 (=> (not res!847081) (not e!726954))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!139977 (= res!847081 (validMask!0 (mask!34532 thiss!1551)))))

(assert (=> d!139977 (= (simpleValid!475 thiss!1551) e!726954)))

(declare-fun b!1273885 () Bool)

(declare-fun res!847082 () Bool)

(assert (=> b!1273885 (=> (not res!847082) (not e!726954))))

(assert (=> b!1273885 (= res!847082 (and (= (size!40805 (_values!6762 thiss!1551)) (bvadd (mask!34532 thiss!1551) #b00000000000000000000000000000001)) (= (size!40806 (_keys!12151 thiss!1551)) (size!40805 (_values!6762 thiss!1551))) (bvsge (_size!3148 thiss!1551) #b00000000000000000000000000000000) (bvsle (_size!3148 thiss!1551) (bvadd (mask!34532 thiss!1551) #b00000000000000000000000000000001))))))

(declare-fun b!1273888 () Bool)

(assert (=> b!1273888 (= e!726954 (and (bvsge (extraKeys!6418 thiss!1551) #b00000000000000000000000000000000) (bvsle (extraKeys!6418 thiss!1551) #b00000000000000000000000000000011) (bvsge (_vacant!3148 thiss!1551) #b00000000000000000000000000000000)))))

(declare-fun b!1273887 () Bool)

(declare-fun res!847083 () Bool)

(assert (=> b!1273887 (=> (not res!847083) (not e!726954))))

(declare-fun size!40809 (LongMapFixedSize!6186) (_ BitVec 32))

(assert (=> b!1273887 (= res!847083 (= (size!40809 thiss!1551) (bvadd (_size!3148 thiss!1551) (bvsdiv (bvadd (extraKeys!6418 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!1273886 () Bool)

(declare-fun res!847080 () Bool)

(assert (=> b!1273886 (=> (not res!847080) (not e!726954))))

(assert (=> b!1273886 (= res!847080 (bvsge (size!40809 thiss!1551) (_size!3148 thiss!1551)))))

(assert (= (and d!139977 res!847081) b!1273885))

(assert (= (and b!1273885 res!847082) b!1273886))

(assert (= (and b!1273886 res!847080) b!1273887))

(assert (= (and b!1273887 res!847083) b!1273888))

(declare-fun m!1170861 () Bool)

(assert (=> d!139977 m!1170861))

(declare-fun m!1170863 () Bool)

(assert (=> b!1273887 m!1170863))

(assert (=> b!1273886 m!1170863))

(assert (=> start!107680 d!139977))

(declare-fun b!1273897 () Bool)

(declare-fun e!726961 () Bool)

(declare-fun call!62611 () Bool)

(assert (=> b!1273897 (= e!726961 call!62611)))

(declare-fun b!1273898 () Bool)

(declare-fun e!726963 () Bool)

(assert (=> b!1273898 (= e!726963 e!726961)))

(declare-fun c!123732 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!1273898 (= c!123732 (validKeyInArray!0 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun d!139979 () Bool)

(declare-fun res!847089 () Bool)

(assert (=> d!139979 (=> res!847089 e!726963)))

(assert (=> d!139979 (= res!847089 (bvsge #b00000000000000000000000000000000 (size!40806 (_keys!12151 thiss!1551))))))

(assert (=> d!139979 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!12151 thiss!1551) (mask!34532 thiss!1551)) e!726963)))

(declare-fun b!1273899 () Bool)

(declare-fun e!726962 () Bool)

(assert (=> b!1273899 (= e!726961 e!726962)))

(declare-fun lt!575104 () (_ BitVec 64))

(assert (=> b!1273899 (= lt!575104 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!42280 0))(
  ( (Unit!42281) )
))
(declare-fun lt!575106 () Unit!42280)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!83485 (_ BitVec 64) (_ BitVec 32)) Unit!42280)

(assert (=> b!1273899 (= lt!575106 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12151 thiss!1551) lt!575104 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!83485 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!1273899 (arrayContainsKey!0 (_keys!12151 thiss!1551) lt!575104 #b00000000000000000000000000000000)))

(declare-fun lt!575105 () Unit!42280)

(assert (=> b!1273899 (= lt!575105 lt!575106)))

(declare-fun res!847088 () Bool)

(declare-datatypes ((SeekEntryResult!9995 0))(
  ( (MissingZero!9995 (index!42350 (_ BitVec 32))) (Found!9995 (index!42351 (_ BitVec 32))) (Intermediate!9995 (undefined!10807 Bool) (index!42352 (_ BitVec 32)) (x!112689 (_ BitVec 32))) (Undefined!9995) (MissingVacant!9995 (index!42353 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!83485 (_ BitVec 32)) SeekEntryResult!9995)

(assert (=> b!1273899 (= res!847088 (= (seekEntryOrOpen!0 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)) (Found!9995 #b00000000000000000000000000000000)))))

(assert (=> b!1273899 (=> (not res!847088) (not e!726962))))

(declare-fun bm!62608 () Bool)

(assert (=> bm!62608 (= call!62611 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)))))

(declare-fun b!1273900 () Bool)

(assert (=> b!1273900 (= e!726962 call!62611)))

(assert (= (and d!139979 (not res!847089)) b!1273898))

(assert (= (and b!1273898 c!123732) b!1273899))

(assert (= (and b!1273898 (not c!123732)) b!1273897))

(assert (= (and b!1273899 res!847088) b!1273900))

(assert (= (or b!1273900 b!1273897) bm!62608))

(declare-fun m!1170865 () Bool)

(assert (=> b!1273898 m!1170865))

(assert (=> b!1273898 m!1170865))

(declare-fun m!1170867 () Bool)

(assert (=> b!1273898 m!1170867))

(assert (=> b!1273899 m!1170865))

(declare-fun m!1170869 () Bool)

(assert (=> b!1273899 m!1170869))

(declare-fun m!1170871 () Bool)

(assert (=> b!1273899 m!1170871))

(assert (=> b!1273899 m!1170865))

(declare-fun m!1170873 () Bool)

(assert (=> b!1273899 m!1170873))

(declare-fun m!1170875 () Bool)

(assert (=> bm!62608 m!1170875))

(assert (=> b!1273855 d!139979))

(declare-fun b!1273909 () Bool)

(declare-fun e!726969 () (_ BitVec 32))

(declare-fun call!62614 () (_ BitVec 32))

(assert (=> b!1273909 (= e!726969 call!62614)))

(declare-fun b!1273910 () Bool)

(assert (=> b!1273910 (= e!726969 (bvadd #b00000000000000000000000000000001 call!62614))))

(declare-fun b!1273911 () Bool)

(declare-fun e!726968 () (_ BitVec 32))

(assert (=> b!1273911 (= e!726968 #b00000000000000000000000000000000)))

(declare-fun b!1273912 () Bool)

(assert (=> b!1273912 (= e!726968 e!726969)))

(declare-fun c!123738 () Bool)

(assert (=> b!1273912 (= c!123738 (validKeyInArray!0 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun d!139981 () Bool)

(declare-fun lt!575109 () (_ BitVec 32))

(assert (=> d!139981 (and (bvsge lt!575109 #b00000000000000000000000000000000) (bvsle lt!575109 (bvsub (size!40806 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000)))))

(assert (=> d!139981 (= lt!575109 e!726968)))

(declare-fun c!123737 () Bool)

(assert (=> d!139981 (= c!123737 (bvsge #b00000000000000000000000000000000 (size!40806 (_keys!12151 thiss!1551))))))

(assert (=> d!139981 (and (bvsle #b00000000000000000000000000000000 (size!40806 (_keys!12151 thiss!1551))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!40806 (_keys!12151 thiss!1551)) (size!40806 (_keys!12151 thiss!1551))))))

(assert (=> d!139981 (= (arrayCountValidKeys!0 (_keys!12151 thiss!1551) #b00000000000000000000000000000000 (size!40806 (_keys!12151 thiss!1551))) lt!575109)))

(declare-fun bm!62611 () Bool)

(assert (=> bm!62611 (= call!62614 (arrayCountValidKeys!0 (_keys!12151 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40806 (_keys!12151 thiss!1551))))))

(assert (= (and d!139981 c!123737) b!1273911))

(assert (= (and d!139981 (not c!123737)) b!1273912))

(assert (= (and b!1273912 c!123738) b!1273910))

(assert (= (and b!1273912 (not c!123738)) b!1273909))

(assert (= (or b!1273910 b!1273909) bm!62611))

(assert (=> b!1273912 m!1170865))

(assert (=> b!1273912 m!1170865))

(assert (=> b!1273912 m!1170867))

(declare-fun m!1170877 () Bool)

(assert (=> bm!62611 m!1170877))

(assert (=> b!1273851 d!139981))

(declare-fun mapIsEmpty!51337 () Bool)

(declare-fun mapRes!51337 () Bool)

(assert (=> mapIsEmpty!51337 mapRes!51337))

(declare-fun condMapEmpty!51337 () Bool)

(declare-fun mapDefault!51337 () ValueCell!15711)

(assert (=> mapNonEmpty!51331 (= condMapEmpty!51337 (= mapRest!51331 ((as const (Array (_ BitVec 32) ValueCell!15711)) mapDefault!51337)))))

(declare-fun e!726974 () Bool)

(assert (=> mapNonEmpty!51331 (= tp!97840 (and e!726974 mapRes!51337))))

(declare-fun b!1273919 () Bool)

(declare-fun e!726975 () Bool)

(assert (=> b!1273919 (= e!726975 tp_is_empty!33129)))

(declare-fun mapNonEmpty!51337 () Bool)

(declare-fun tp!97850 () Bool)

(assert (=> mapNonEmpty!51337 (= mapRes!51337 (and tp!97850 e!726975))))

(declare-fun mapValue!51337 () ValueCell!15711)

(declare-fun mapKey!51337 () (_ BitVec 32))

(declare-fun mapRest!51337 () (Array (_ BitVec 32) ValueCell!15711))

(assert (=> mapNonEmpty!51337 (= mapRest!51331 (store mapRest!51337 mapKey!51337 mapValue!51337))))

(declare-fun b!1273920 () Bool)

(assert (=> b!1273920 (= e!726974 tp_is_empty!33129)))

(assert (= (and mapNonEmpty!51331 condMapEmpty!51337) mapIsEmpty!51337))

(assert (= (and mapNonEmpty!51331 (not condMapEmpty!51337)) mapNonEmpty!51337))

(assert (= (and mapNonEmpty!51337 ((_ is ValueCellFull!15711) mapValue!51337)) b!1273919))

(assert (= (and mapNonEmpty!51331 ((_ is ValueCellFull!15711) mapDefault!51337)) b!1273920))

(declare-fun m!1170879 () Bool)

(assert (=> mapNonEmpty!51337 m!1170879))

(check-sat (not b!1273887) (not b!1273898) b_and!45825 (not mapNonEmpty!51337) (not b!1273886) (not b!1273912) (not b_next!27759) (not d!139977) (not bm!62608) (not bm!62611) tp_is_empty!33129 (not b!1273899))
(check-sat b_and!45825 (not b_next!27759))
(get-model)

(declare-fun d!139983 () Bool)

(assert (=> d!139983 (= (validMask!0 (mask!34532 thiss!1551)) (and (or (= (mask!34532 thiss!1551) #b00000000000000000000000000000111) (= (mask!34532 thiss!1551) #b00000000000000000000000000001111) (= (mask!34532 thiss!1551) #b00000000000000000000000000011111) (= (mask!34532 thiss!1551) #b00000000000000000000000000111111) (= (mask!34532 thiss!1551) #b00000000000000000000000001111111) (= (mask!34532 thiss!1551) #b00000000000000000000000011111111) (= (mask!34532 thiss!1551) #b00000000000000000000000111111111) (= (mask!34532 thiss!1551) #b00000000000000000000001111111111) (= (mask!34532 thiss!1551) #b00000000000000000000011111111111) (= (mask!34532 thiss!1551) #b00000000000000000000111111111111) (= (mask!34532 thiss!1551) #b00000000000000000001111111111111) (= (mask!34532 thiss!1551) #b00000000000000000011111111111111) (= (mask!34532 thiss!1551) #b00000000000000000111111111111111) (= (mask!34532 thiss!1551) #b00000000000000001111111111111111) (= (mask!34532 thiss!1551) #b00000000000000011111111111111111) (= (mask!34532 thiss!1551) #b00000000000000111111111111111111) (= (mask!34532 thiss!1551) #b00000000000001111111111111111111) (= (mask!34532 thiss!1551) #b00000000000011111111111111111111) (= (mask!34532 thiss!1551) #b00000000000111111111111111111111) (= (mask!34532 thiss!1551) #b00000000001111111111111111111111) (= (mask!34532 thiss!1551) #b00000000011111111111111111111111) (= (mask!34532 thiss!1551) #b00000000111111111111111111111111) (= (mask!34532 thiss!1551) #b00000001111111111111111111111111) (= (mask!34532 thiss!1551) #b00000011111111111111111111111111) (= (mask!34532 thiss!1551) #b00000111111111111111111111111111) (= (mask!34532 thiss!1551) #b00001111111111111111111111111111) (= (mask!34532 thiss!1551) #b00011111111111111111111111111111) (= (mask!34532 thiss!1551) #b00111111111111111111111111111111)) (bvsle (mask!34532 thiss!1551) #b00111111111111111111111111111111)))))

(assert (=> d!139977 d!139983))

(declare-fun d!139985 () Bool)

(assert (=> d!139985 (= (size!40809 thiss!1551) (bvadd (_size!3148 thiss!1551) (bvsdiv (bvadd (extraKeys!6418 thiss!1551) #b00000000000000000000000000000001) #b00000000000000000000000000000010)))))

(assert (=> b!1273886 d!139985))

(assert (=> b!1273887 d!139985))

(declare-fun d!139987 () Bool)

(assert (=> d!139987 (= (validKeyInArray!0 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000)) (and (not (= (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!1273898 d!139987))

(assert (=> b!1273912 d!139987))

(declare-fun d!139989 () Bool)

(assert (=> d!139989 (arrayContainsKey!0 (_keys!12151 thiss!1551) lt!575104 #b00000000000000000000000000000000)))

(declare-fun lt!575112 () Unit!42280)

(declare-fun choose!13 (array!83485 (_ BitVec 64) (_ BitVec 32)) Unit!42280)

(assert (=> d!139989 (= lt!575112 (choose!13 (_keys!12151 thiss!1551) lt!575104 #b00000000000000000000000000000000))))

(assert (=> d!139989 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!139989 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12151 thiss!1551) lt!575104 #b00000000000000000000000000000000) lt!575112)))

(declare-fun bs!36160 () Bool)

(assert (= bs!36160 d!139989))

(assert (=> bs!36160 m!1170871))

(declare-fun m!1170881 () Bool)

(assert (=> bs!36160 m!1170881))

(assert (=> b!1273899 d!139989))

(declare-fun d!139991 () Bool)

(declare-fun res!847094 () Bool)

(declare-fun e!726980 () Bool)

(assert (=> d!139991 (=> res!847094 e!726980)))

(assert (=> d!139991 (= res!847094 (= (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) lt!575104))))

(assert (=> d!139991 (= (arrayContainsKey!0 (_keys!12151 thiss!1551) lt!575104 #b00000000000000000000000000000000) e!726980)))

(declare-fun b!1273925 () Bool)

(declare-fun e!726981 () Bool)

(assert (=> b!1273925 (= e!726980 e!726981)))

(declare-fun res!847095 () Bool)

(assert (=> b!1273925 (=> (not res!847095) (not e!726981))))

(assert (=> b!1273925 (= res!847095 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40806 (_keys!12151 thiss!1551))))))

(declare-fun b!1273926 () Bool)

(assert (=> b!1273926 (= e!726981 (arrayContainsKey!0 (_keys!12151 thiss!1551) lt!575104 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!139991 (not res!847094)) b!1273925))

(assert (= (and b!1273925 res!847095) b!1273926))

(assert (=> d!139991 m!1170865))

(declare-fun m!1170883 () Bool)

(assert (=> b!1273926 m!1170883))

(assert (=> b!1273899 d!139991))

(declare-fun b!1273939 () Bool)

(declare-fun e!726989 () SeekEntryResult!9995)

(declare-fun e!726988 () SeekEntryResult!9995)

(assert (=> b!1273939 (= e!726989 e!726988)))

(declare-fun lt!575120 () (_ BitVec 64))

(declare-fun lt!575121 () SeekEntryResult!9995)

(assert (=> b!1273939 (= lt!575120 (select (arr!40258 (_keys!12151 thiss!1551)) (index!42352 lt!575121)))))

(declare-fun c!123745 () Bool)

(assert (=> b!1273939 (= c!123745 (= lt!575120 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000)))))

(declare-fun b!1273940 () Bool)

(assert (=> b!1273940 (= e!726988 (Found!9995 (index!42352 lt!575121)))))

(declare-fun b!1273941 () Bool)

(declare-fun e!726990 () SeekEntryResult!9995)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!83485 (_ BitVec 32)) SeekEntryResult!9995)

(assert (=> b!1273941 (= e!726990 (seekKeyOrZeroReturnVacant!0 (x!112689 lt!575121) (index!42352 lt!575121) (index!42352 lt!575121) (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)))))

(declare-fun d!139993 () Bool)

(declare-fun lt!575119 () SeekEntryResult!9995)

(assert (=> d!139993 (and (or ((_ is Undefined!9995) lt!575119) (not ((_ is Found!9995) lt!575119)) (and (bvsge (index!42351 lt!575119) #b00000000000000000000000000000000) (bvslt (index!42351 lt!575119) (size!40806 (_keys!12151 thiss!1551))))) (or ((_ is Undefined!9995) lt!575119) ((_ is Found!9995) lt!575119) (not ((_ is MissingZero!9995) lt!575119)) (and (bvsge (index!42350 lt!575119) #b00000000000000000000000000000000) (bvslt (index!42350 lt!575119) (size!40806 (_keys!12151 thiss!1551))))) (or ((_ is Undefined!9995) lt!575119) ((_ is Found!9995) lt!575119) ((_ is MissingZero!9995) lt!575119) (not ((_ is MissingVacant!9995) lt!575119)) (and (bvsge (index!42353 lt!575119) #b00000000000000000000000000000000) (bvslt (index!42353 lt!575119) (size!40806 (_keys!12151 thiss!1551))))) (or ((_ is Undefined!9995) lt!575119) (ite ((_ is Found!9995) lt!575119) (= (select (arr!40258 (_keys!12151 thiss!1551)) (index!42351 lt!575119)) (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!9995) lt!575119) (= (select (arr!40258 (_keys!12151 thiss!1551)) (index!42350 lt!575119)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!9995) lt!575119) (= (select (arr!40258 (_keys!12151 thiss!1551)) (index!42353 lt!575119)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!139993 (= lt!575119 e!726989)))

(declare-fun c!123746 () Bool)

(assert (=> d!139993 (= c!123746 (and ((_ is Intermediate!9995) lt!575121) (undefined!10807 lt!575121)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!83485 (_ BitVec 32)) SeekEntryResult!9995)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!139993 (= lt!575121 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) (mask!34532 thiss!1551)) (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)))))

(assert (=> d!139993 (validMask!0 (mask!34532 thiss!1551))))

(assert (=> d!139993 (= (seekEntryOrOpen!0 (select (arr!40258 (_keys!12151 thiss!1551)) #b00000000000000000000000000000000) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)) lt!575119)))

(declare-fun b!1273942 () Bool)

(declare-fun c!123747 () Bool)

(assert (=> b!1273942 (= c!123747 (= lt!575120 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!1273942 (= e!726988 e!726990)))

(declare-fun b!1273943 () Bool)

(assert (=> b!1273943 (= e!726989 Undefined!9995)))

(declare-fun b!1273944 () Bool)

(assert (=> b!1273944 (= e!726990 (MissingZero!9995 (index!42352 lt!575121)))))

(assert (= (and d!139993 c!123746) b!1273943))

(assert (= (and d!139993 (not c!123746)) b!1273939))

(assert (= (and b!1273939 c!123745) b!1273940))

(assert (= (and b!1273939 (not c!123745)) b!1273942))

(assert (= (and b!1273942 c!123747) b!1273944))

(assert (= (and b!1273942 (not c!123747)) b!1273941))

(declare-fun m!1170885 () Bool)

(assert (=> b!1273939 m!1170885))

(assert (=> b!1273941 m!1170865))

(declare-fun m!1170887 () Bool)

(assert (=> b!1273941 m!1170887))

(declare-fun m!1170889 () Bool)

(assert (=> d!139993 m!1170889))

(assert (=> d!139993 m!1170861))

(declare-fun m!1170891 () Bool)

(assert (=> d!139993 m!1170891))

(declare-fun m!1170893 () Bool)

(assert (=> d!139993 m!1170893))

(assert (=> d!139993 m!1170865))

(declare-fun m!1170895 () Bool)

(assert (=> d!139993 m!1170895))

(assert (=> d!139993 m!1170865))

(assert (=> d!139993 m!1170893))

(declare-fun m!1170897 () Bool)

(assert (=> d!139993 m!1170897))

(assert (=> b!1273899 d!139993))

(declare-fun b!1273945 () Bool)

(declare-fun e!726992 () (_ BitVec 32))

(declare-fun call!62615 () (_ BitVec 32))

(assert (=> b!1273945 (= e!726992 call!62615)))

(declare-fun b!1273946 () Bool)

(assert (=> b!1273946 (= e!726992 (bvadd #b00000000000000000000000000000001 call!62615))))

(declare-fun b!1273947 () Bool)

(declare-fun e!726991 () (_ BitVec 32))

(assert (=> b!1273947 (= e!726991 #b00000000000000000000000000000000)))

(declare-fun b!1273948 () Bool)

(assert (=> b!1273948 (= e!726991 e!726992)))

(declare-fun c!123749 () Bool)

(assert (=> b!1273948 (= c!123749 (validKeyInArray!0 (select (arr!40258 (_keys!12151 thiss!1551)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!139995 () Bool)

(declare-fun lt!575122 () (_ BitVec 32))

(assert (=> d!139995 (and (bvsge lt!575122 #b00000000000000000000000000000000) (bvsle lt!575122 (bvsub (size!40806 (_keys!12151 thiss!1551)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!139995 (= lt!575122 e!726991)))

(declare-fun c!123748 () Bool)

(assert (=> d!139995 (= c!123748 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40806 (_keys!12151 thiss!1551))))))

(assert (=> d!139995 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40806 (_keys!12151 thiss!1551))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!40806 (_keys!12151 thiss!1551)) (size!40806 (_keys!12151 thiss!1551))))))

(assert (=> d!139995 (= (arrayCountValidKeys!0 (_keys!12151 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40806 (_keys!12151 thiss!1551))) lt!575122)))

(declare-fun bm!62612 () Bool)

(assert (=> bm!62612 (= call!62615 (arrayCountValidKeys!0 (_keys!12151 thiss!1551) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!40806 (_keys!12151 thiss!1551))))))

(assert (= (and d!139995 c!123748) b!1273947))

(assert (= (and d!139995 (not c!123748)) b!1273948))

(assert (= (and b!1273948 c!123749) b!1273946))

(assert (= (and b!1273948 (not c!123749)) b!1273945))

(assert (= (or b!1273946 b!1273945) bm!62612))

(declare-fun m!1170899 () Bool)

(assert (=> b!1273948 m!1170899))

(assert (=> b!1273948 m!1170899))

(declare-fun m!1170901 () Bool)

(assert (=> b!1273948 m!1170901))

(declare-fun m!1170903 () Bool)

(assert (=> bm!62612 m!1170903))

(assert (=> bm!62611 d!139995))

(declare-fun b!1273949 () Bool)

(declare-fun e!726993 () Bool)

(declare-fun call!62616 () Bool)

(assert (=> b!1273949 (= e!726993 call!62616)))

(declare-fun b!1273950 () Bool)

(declare-fun e!726995 () Bool)

(assert (=> b!1273950 (= e!726995 e!726993)))

(declare-fun c!123750 () Bool)

(assert (=> b!1273950 (= c!123750 (validKeyInArray!0 (select (arr!40258 (_keys!12151 thiss!1551)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!139997 () Bool)

(declare-fun res!847097 () Bool)

(assert (=> d!139997 (=> res!847097 e!726995)))

(assert (=> d!139997 (= res!847097 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!40806 (_keys!12151 thiss!1551))))))

(assert (=> d!139997 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)) e!726995)))

(declare-fun b!1273951 () Bool)

(declare-fun e!726994 () Bool)

(assert (=> b!1273951 (= e!726993 e!726994)))

(declare-fun lt!575123 () (_ BitVec 64))

(assert (=> b!1273951 (= lt!575123 (select (arr!40258 (_keys!12151 thiss!1551)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!575125 () Unit!42280)

(assert (=> b!1273951 (= lt!575125 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!12151 thiss!1551) lt!575123 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!1273951 (arrayContainsKey!0 (_keys!12151 thiss!1551) lt!575123 #b00000000000000000000000000000000)))

(declare-fun lt!575124 () Unit!42280)

(assert (=> b!1273951 (= lt!575124 lt!575125)))

(declare-fun res!847096 () Bool)

(assert (=> b!1273951 (= res!847096 (= (seekEntryOrOpen!0 (select (arr!40258 (_keys!12151 thiss!1551)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)) (Found!9995 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!1273951 (=> (not res!847096) (not e!726994))))

(declare-fun bm!62613 () Bool)

(assert (=> bm!62613 (= call!62616 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (_keys!12151 thiss!1551) (mask!34532 thiss!1551)))))

(declare-fun b!1273952 () Bool)

(assert (=> b!1273952 (= e!726994 call!62616)))

(assert (= (and d!139997 (not res!847097)) b!1273950))

(assert (= (and b!1273950 c!123750) b!1273951))

(assert (= (and b!1273950 (not c!123750)) b!1273949))

(assert (= (and b!1273951 res!847096) b!1273952))

(assert (= (or b!1273952 b!1273949) bm!62613))

(assert (=> b!1273950 m!1170899))

(assert (=> b!1273950 m!1170899))

(assert (=> b!1273950 m!1170901))

(assert (=> b!1273951 m!1170899))

(declare-fun m!1170905 () Bool)

(assert (=> b!1273951 m!1170905))

(declare-fun m!1170907 () Bool)

(assert (=> b!1273951 m!1170907))

(assert (=> b!1273951 m!1170899))

(declare-fun m!1170909 () Bool)

(assert (=> b!1273951 m!1170909))

(declare-fun m!1170911 () Bool)

(assert (=> bm!62613 m!1170911))

(assert (=> bm!62608 d!139997))

(declare-fun mapIsEmpty!51338 () Bool)

(declare-fun mapRes!51338 () Bool)

(assert (=> mapIsEmpty!51338 mapRes!51338))

(declare-fun condMapEmpty!51338 () Bool)

(declare-fun mapDefault!51338 () ValueCell!15711)

(assert (=> mapNonEmpty!51337 (= condMapEmpty!51338 (= mapRest!51337 ((as const (Array (_ BitVec 32) ValueCell!15711)) mapDefault!51338)))))

(declare-fun e!726996 () Bool)

(assert (=> mapNonEmpty!51337 (= tp!97850 (and e!726996 mapRes!51338))))

(declare-fun b!1273953 () Bool)

(declare-fun e!726997 () Bool)

(assert (=> b!1273953 (= e!726997 tp_is_empty!33129)))

(declare-fun mapNonEmpty!51338 () Bool)

(declare-fun tp!97851 () Bool)

(assert (=> mapNonEmpty!51338 (= mapRes!51338 (and tp!97851 e!726997))))

(declare-fun mapRest!51338 () (Array (_ BitVec 32) ValueCell!15711))

(declare-fun mapValue!51338 () ValueCell!15711)

(declare-fun mapKey!51338 () (_ BitVec 32))

(assert (=> mapNonEmpty!51338 (= mapRest!51337 (store mapRest!51338 mapKey!51338 mapValue!51338))))

(declare-fun b!1273954 () Bool)

(assert (=> b!1273954 (= e!726996 tp_is_empty!33129)))

(assert (= (and mapNonEmpty!51337 condMapEmpty!51338) mapIsEmpty!51338))

(assert (= (and mapNonEmpty!51337 (not condMapEmpty!51338)) mapNonEmpty!51338))

(assert (= (and mapNonEmpty!51338 ((_ is ValueCellFull!15711) mapValue!51338)) b!1273953))

(assert (= (and mapNonEmpty!51337 ((_ is ValueCellFull!15711) mapDefault!51338)) b!1273954))

(declare-fun m!1170913 () Bool)

(assert (=> mapNonEmpty!51338 m!1170913))

(check-sat (not b!1273951) (not b!1273948) (not d!139989) (not d!139993) tp_is_empty!33129 (not b!1273950) b_and!45825 (not b!1273941) (not b_next!27759) (not bm!62612) (not mapNonEmpty!51338) (not bm!62613) (not b!1273926))
(check-sat b_and!45825 (not b_next!27759))
