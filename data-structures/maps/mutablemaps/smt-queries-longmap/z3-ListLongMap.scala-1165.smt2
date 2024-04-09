; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24670 () Bool)

(assert start!24670)

(declare-fun b!257979 () Bool)

(declare-fun b_free!6741 () Bool)

(declare-fun b_next!6741 () Bool)

(assert (=> b!257979 (= b_free!6741 (not b_next!6741))))

(declare-fun tp!23534 () Bool)

(declare-fun b_and!13833 () Bool)

(assert (=> b!257979 (= tp!23534 b_and!13833)))

(declare-fun b!257968 () Bool)

(declare-fun e!167230 () Bool)

(declare-fun e!167238 () Bool)

(assert (=> b!257968 (= e!167230 (not e!167238))))

(declare-fun res!126179 () Bool)

(assert (=> b!257968 (=> res!126179 e!167238)))

(declare-datatypes ((V!8451 0))(
  ( (V!8452 (val!3346 Int)) )
))
(declare-datatypes ((ValueCell!2958 0))(
  ( (ValueCellFull!2958 (v!5440 V!8451)) (EmptyCell!2958) )
))
(declare-datatypes ((array!12552 0))(
  ( (array!12553 (arr!5943 (Array (_ BitVec 32) ValueCell!2958)) (size!6290 (_ BitVec 32))) )
))
(declare-datatypes ((array!12554 0))(
  ( (array!12555 (arr!5944 (Array (_ BitVec 32) (_ BitVec 64))) (size!6291 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3816 0))(
  ( (LongMapFixedSize!3817 (defaultEntry!4761 Int) (mask!11058 (_ BitVec 32)) (extraKeys!4498 (_ BitVec 32)) (zeroValue!4602 V!8451) (minValue!4602 V!8451) (_size!1957 (_ BitVec 32)) (_keys!6931 array!12554) (_values!4744 array!12552) (_vacant!1957 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3816)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!257968 (= res!126179 (not (validMask!0 (mask!11058 thiss!1504))))))

(declare-fun lt!129842 () array!12554)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12554 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257968 (= (arrayCountValidKeys!0 lt!129842 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-datatypes ((Unit!8014 0))(
  ( (Unit!8015) )
))
(declare-fun lt!129844 () Unit!8014)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12554 (_ BitVec 32)) Unit!8014)

(assert (=> b!257968 (= lt!129844 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129842 index!297))))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12554 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!257968 (arrayContainsKey!0 lt!129842 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129841 () Unit!8014)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12554 (_ BitVec 64) (_ BitVec 32)) Unit!8014)

(assert (=> b!257968 (= lt!129841 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129842 key!932 index!297))))

(declare-datatypes ((tuple2!4928 0))(
  ( (tuple2!4929 (_1!2474 (_ BitVec 64)) (_2!2474 V!8451)) )
))
(declare-datatypes ((List!3831 0))(
  ( (Nil!3828) (Cons!3827 (h!4489 tuple2!4928) (t!8902 List!3831)) )
))
(declare-datatypes ((ListLongMap!3855 0))(
  ( (ListLongMap!3856 (toList!1943 List!3831)) )
))
(declare-fun lt!129847 () ListLongMap!3855)

(declare-fun v!346 () V!8451)

(declare-fun +!687 (ListLongMap!3855 tuple2!4928) ListLongMap!3855)

(declare-fun getCurrentListMap!1466 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 32) Int) ListLongMap!3855)

(assert (=> b!257968 (= (+!687 lt!129847 (tuple2!4929 key!932 v!346)) (getCurrentListMap!1466 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129845 () Unit!8014)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!102 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 32) (_ BitVec 64) V!8451 Int) Unit!8014)

(assert (=> b!257968 (= lt!129845 (lemmaAddValidKeyToArrayThenAddPairToListMap!102 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) index!297 key!932 v!346 (defaultEntry!4761 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12554 (_ BitVec 32)) Bool)

(assert (=> b!257968 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129842 (mask!11058 thiss!1504))))

(declare-fun lt!129843 () Unit!8014)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12554 (_ BitVec 32) (_ BitVec 32)) Unit!8014)

(assert (=> b!257968 (= lt!129843 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) index!297 (mask!11058 thiss!1504)))))

(assert (=> b!257968 (= (arrayCountValidKeys!0 lt!129842 #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6931 thiss!1504) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504)))))))

(declare-fun lt!129851 () Unit!8014)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12554 (_ BitVec 32) (_ BitVec 64)) Unit!8014)

(assert (=> b!257968 (= lt!129851 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6931 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3832 0))(
  ( (Nil!3829) (Cons!3828 (h!4490 (_ BitVec 64)) (t!8903 List!3832)) )
))
(declare-fun arrayNoDuplicates!0 (array!12554 (_ BitVec 32) List!3832) Bool)

(assert (=> b!257968 (arrayNoDuplicates!0 lt!129842 #b00000000000000000000000000000000 Nil!3829)))

(assert (=> b!257968 (= lt!129842 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun lt!129846 () Unit!8014)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12554 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3832) Unit!8014)

(assert (=> b!257968 (= lt!129846 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6931 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3829))))

(declare-fun lt!129848 () Unit!8014)

(declare-fun e!167231 () Unit!8014)

(assert (=> b!257968 (= lt!129848 e!167231)))

(declare-fun c!43670 () Bool)

(assert (=> b!257968 (= c!43670 (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!24517 () Bool)

(declare-fun call!24521 () Bool)

(declare-fun c!43668 () Bool)

(declare-datatypes ((SeekEntryResult!1184 0))(
  ( (MissingZero!1184 (index!6906 (_ BitVec 32))) (Found!1184 (index!6907 (_ BitVec 32))) (Intermediate!1184 (undefined!1996 Bool) (index!6908 (_ BitVec 32)) (x!25052 (_ BitVec 32))) (Undefined!1184) (MissingVacant!1184 (index!6909 (_ BitVec 32))) )
))
(declare-fun lt!129850 () SeekEntryResult!1184)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24517 (= call!24521 (inRange!0 (ite c!43668 (index!6906 lt!129850) (index!6909 lt!129850)) (mask!11058 thiss!1504)))))

(declare-fun b!257969 () Bool)

(declare-fun e!167244 () Bool)

(declare-fun tp_is_empty!6603 () Bool)

(assert (=> b!257969 (= e!167244 tp_is_empty!6603)))

(declare-fun mapIsEmpty!11244 () Bool)

(declare-fun mapRes!11244 () Bool)

(assert (=> mapIsEmpty!11244 mapRes!11244))

(declare-fun b!257970 () Bool)

(declare-fun e!167241 () Unit!8014)

(declare-fun Unit!8016 () Unit!8014)

(assert (=> b!257970 (= e!167241 Unit!8016)))

(declare-fun lt!129849 () Unit!8014)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!437 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 64) Int) Unit!8014)

(assert (=> b!257970 (= lt!129849 (lemmaInListMapThenSeekEntryOrOpenFindsIt!437 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)))))

(assert (=> b!257970 false))

(declare-fun b!257971 () Bool)

(declare-fun Unit!8017 () Unit!8014)

(assert (=> b!257971 (= e!167231 Unit!8017)))

(declare-fun b!257972 () Bool)

(declare-fun Unit!8018 () Unit!8014)

(assert (=> b!257972 (= e!167231 Unit!8018)))

(declare-fun lt!129839 () Unit!8014)

(declare-fun lemmaArrayContainsKeyThenInListMap!243 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 64) (_ BitVec 32) Int) Unit!8014)

(assert (=> b!257972 (= lt!129839 (lemmaArrayContainsKeyThenInListMap!243 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(assert (=> b!257972 false))

(declare-fun b!257973 () Bool)

(declare-fun e!167235 () Bool)

(declare-fun call!24520 () Bool)

(assert (=> b!257973 (= e!167235 (not call!24520))))

(declare-fun res!126176 () Bool)

(declare-fun e!167239 () Bool)

(assert (=> start!24670 (=> (not res!126176) (not e!167239))))

(declare-fun valid!1482 (LongMapFixedSize!3816) Bool)

(assert (=> start!24670 (= res!126176 (valid!1482 thiss!1504))))

(assert (=> start!24670 e!167239))

(declare-fun e!167243 () Bool)

(assert (=> start!24670 e!167243))

(assert (=> start!24670 true))

(assert (=> start!24670 tp_is_empty!6603))

(declare-fun b!257974 () Bool)

(declare-fun res!126177 () Bool)

(assert (=> b!257974 (= res!126177 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6909 lt!129850)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257974 (=> (not res!126177) (not e!167235))))

(declare-fun mapNonEmpty!11244 () Bool)

(declare-fun tp!23535 () Bool)

(assert (=> mapNonEmpty!11244 (= mapRes!11244 (and tp!23535 e!167244))))

(declare-fun mapKey!11244 () (_ BitVec 32))

(declare-fun mapValue!11244 () ValueCell!2958)

(declare-fun mapRest!11244 () (Array (_ BitVec 32) ValueCell!2958))

(assert (=> mapNonEmpty!11244 (= (arr!5943 (_values!4744 thiss!1504)) (store mapRest!11244 mapKey!11244 mapValue!11244))))

(declare-fun b!257975 () Bool)

(declare-fun res!126175 () Bool)

(assert (=> b!257975 (=> (not res!126175) (not e!167239))))

(assert (=> b!257975 (= res!126175 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!257976 () Bool)

(declare-fun e!167236 () Bool)

(assert (=> b!257976 (= e!167236 e!167230)))

(declare-fun res!126178 () Bool)

(assert (=> b!257976 (=> (not res!126178) (not e!167230))))

(assert (=> b!257976 (= res!126178 (inRange!0 index!297 (mask!11058 thiss!1504)))))

(declare-fun lt!129852 () Unit!8014)

(assert (=> b!257976 (= lt!129852 e!167241)))

(declare-fun c!43669 () Bool)

(declare-fun contains!1877 (ListLongMap!3855 (_ BitVec 64)) Bool)

(assert (=> b!257976 (= c!43669 (contains!1877 lt!129847 key!932))))

(assert (=> b!257976 (= lt!129847 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun b!257977 () Bool)

(declare-fun res!126180 () Bool)

(declare-fun e!167242 () Bool)

(assert (=> b!257977 (=> (not res!126180) (not e!167242))))

(assert (=> b!257977 (= res!126180 call!24521)))

(declare-fun e!167234 () Bool)

(assert (=> b!257977 (= e!167234 e!167242)))

(declare-fun b!257978 () Bool)

(declare-fun e!167237 () Bool)

(assert (=> b!257978 (= e!167237 e!167235)))

(declare-fun res!126182 () Bool)

(assert (=> b!257978 (= res!126182 call!24521)))

(assert (=> b!257978 (=> (not res!126182) (not e!167235))))

(declare-fun e!167233 () Bool)

(declare-fun array_inv!3919 (array!12554) Bool)

(declare-fun array_inv!3920 (array!12552) Bool)

(assert (=> b!257979 (= e!167243 (and tp!23534 tp_is_empty!6603 (array_inv!3919 (_keys!6931 thiss!1504)) (array_inv!3920 (_values!4744 thiss!1504)) e!167233))))

(declare-fun b!257980 () Bool)

(declare-fun e!167240 () Bool)

(assert (=> b!257980 (= e!167233 (and e!167240 mapRes!11244))))

(declare-fun condMapEmpty!11244 () Bool)

(declare-fun mapDefault!11244 () ValueCell!2958)

(assert (=> b!257980 (= condMapEmpty!11244 (= (arr!5943 (_values!4744 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2958)) mapDefault!11244)))))

(declare-fun b!257981 () Bool)

(assert (=> b!257981 (= e!167239 e!167236)))

(declare-fun res!126181 () Bool)

(assert (=> b!257981 (=> (not res!126181) (not e!167236))))

(assert (=> b!257981 (= res!126181 (or (= lt!129850 (MissingZero!1184 index!297)) (= lt!129850 (MissingVacant!1184 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12554 (_ BitVec 32)) SeekEntryResult!1184)

(assert (=> b!257981 (= lt!129850 (seekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(declare-fun b!257982 () Bool)

(declare-fun lt!129840 () Unit!8014)

(assert (=> b!257982 (= e!167241 lt!129840)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!437 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 64) Int) Unit!8014)

(assert (=> b!257982 (= lt!129840 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!437 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)))))

(get-info :version)

(assert (=> b!257982 (= c!43668 ((_ is MissingZero!1184) lt!129850))))

(assert (=> b!257982 e!167234))

(declare-fun b!257983 () Bool)

(assert (=> b!257983 (= e!167242 (not call!24520))))

(declare-fun b!257984 () Bool)

(assert (=> b!257984 (= e!167240 tp_is_empty!6603)))

(declare-fun b!257985 () Bool)

(declare-fun c!43671 () Bool)

(assert (=> b!257985 (= c!43671 ((_ is MissingVacant!1184) lt!129850))))

(assert (=> b!257985 (= e!167234 e!167237)))

(declare-fun b!257986 () Bool)

(assert (=> b!257986 (= e!167238 (= (size!6290 (_values!4744 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11058 thiss!1504))))))

(declare-fun b!257987 () Bool)

(declare-fun res!126174 () Bool)

(assert (=> b!257987 (=> (not res!126174) (not e!167242))))

(assert (=> b!257987 (= res!126174 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6906 lt!129850)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257988 () Bool)

(assert (=> b!257988 (= e!167237 ((_ is Undefined!1184) lt!129850))))

(declare-fun bm!24518 () Bool)

(assert (=> bm!24518 (= call!24520 (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and start!24670 res!126176) b!257975))

(assert (= (and b!257975 res!126175) b!257981))

(assert (= (and b!257981 res!126181) b!257976))

(assert (= (and b!257976 c!43669) b!257970))

(assert (= (and b!257976 (not c!43669)) b!257982))

(assert (= (and b!257982 c!43668) b!257977))

(assert (= (and b!257982 (not c!43668)) b!257985))

(assert (= (and b!257977 res!126180) b!257987))

(assert (= (and b!257987 res!126174) b!257983))

(assert (= (and b!257985 c!43671) b!257978))

(assert (= (and b!257985 (not c!43671)) b!257988))

(assert (= (and b!257978 res!126182) b!257974))

(assert (= (and b!257974 res!126177) b!257973))

(assert (= (or b!257977 b!257978) bm!24517))

(assert (= (or b!257983 b!257973) bm!24518))

(assert (= (and b!257976 res!126178) b!257968))

(assert (= (and b!257968 c!43670) b!257972))

(assert (= (and b!257968 (not c!43670)) b!257971))

(assert (= (and b!257968 (not res!126179)) b!257986))

(assert (= (and b!257980 condMapEmpty!11244) mapIsEmpty!11244))

(assert (= (and b!257980 (not condMapEmpty!11244)) mapNonEmpty!11244))

(assert (= (and mapNonEmpty!11244 ((_ is ValueCellFull!2958) mapValue!11244)) b!257969))

(assert (= (and b!257980 ((_ is ValueCellFull!2958) mapDefault!11244)) b!257984))

(assert (= b!257979 b!257980))

(assert (= start!24670 b!257979))

(declare-fun m!273297 () Bool)

(assert (=> b!257979 m!273297))

(declare-fun m!273299 () Bool)

(assert (=> b!257979 m!273299))

(declare-fun m!273301 () Bool)

(assert (=> b!257972 m!273301))

(declare-fun m!273303 () Bool)

(assert (=> b!257968 m!273303))

(declare-fun m!273305 () Bool)

(assert (=> b!257968 m!273305))

(declare-fun m!273307 () Bool)

(assert (=> b!257968 m!273307))

(declare-fun m!273309 () Bool)

(assert (=> b!257968 m!273309))

(declare-fun m!273311 () Bool)

(assert (=> b!257968 m!273311))

(declare-fun m!273313 () Bool)

(assert (=> b!257968 m!273313))

(declare-fun m!273315 () Bool)

(assert (=> b!257968 m!273315))

(declare-fun m!273317 () Bool)

(assert (=> b!257968 m!273317))

(declare-fun m!273319 () Bool)

(assert (=> b!257968 m!273319))

(declare-fun m!273321 () Bool)

(assert (=> b!257968 m!273321))

(declare-fun m!273323 () Bool)

(assert (=> b!257968 m!273323))

(declare-fun m!273325 () Bool)

(assert (=> b!257968 m!273325))

(declare-fun m!273327 () Bool)

(assert (=> b!257968 m!273327))

(declare-fun m!273329 () Bool)

(assert (=> b!257968 m!273329))

(declare-fun m!273331 () Bool)

(assert (=> b!257968 m!273331))

(declare-fun m!273333 () Bool)

(assert (=> b!257968 m!273333))

(declare-fun m!273335 () Bool)

(assert (=> b!257968 m!273335))

(declare-fun m!273337 () Bool)

(assert (=> b!257968 m!273337))

(declare-fun m!273339 () Bool)

(assert (=> b!257970 m!273339))

(declare-fun m!273341 () Bool)

(assert (=> start!24670 m!273341))

(declare-fun m!273343 () Bool)

(assert (=> b!257974 m!273343))

(declare-fun m!273345 () Bool)

(assert (=> b!257981 m!273345))

(declare-fun m!273347 () Bool)

(assert (=> mapNonEmpty!11244 m!273347))

(assert (=> bm!24518 m!273303))

(declare-fun m!273349 () Bool)

(assert (=> b!257976 m!273349))

(declare-fun m!273351 () Bool)

(assert (=> b!257976 m!273351))

(declare-fun m!273353 () Bool)

(assert (=> b!257976 m!273353))

(declare-fun m!273355 () Bool)

(assert (=> b!257987 m!273355))

(declare-fun m!273357 () Bool)

(assert (=> bm!24517 m!273357))

(declare-fun m!273359 () Bool)

(assert (=> b!257982 m!273359))

(check-sat (not b!257970) (not b!257968) (not b!257982) (not start!24670) (not bm!24517) (not b!257979) (not b!257972) (not b!257981) (not bm!24518) tp_is_empty!6603 (not b_next!6741) (not b!257976) (not mapNonEmpty!11244) b_and!13833)
(check-sat b_and!13833 (not b_next!6741))
(get-model)

(declare-fun d!61795 () Bool)

(assert (=> d!61795 (= (inRange!0 index!297 (mask!11058 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11058 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!257976 d!61795))

(declare-fun d!61797 () Bool)

(declare-fun e!167294 () Bool)

(assert (=> d!61797 e!167294))

(declare-fun res!126212 () Bool)

(assert (=> d!61797 (=> res!126212 e!167294)))

(declare-fun lt!129903 () Bool)

(assert (=> d!61797 (= res!126212 (not lt!129903))))

(declare-fun lt!129906 () Bool)

(assert (=> d!61797 (= lt!129903 lt!129906)))

(declare-fun lt!129904 () Unit!8014)

(declare-fun e!167295 () Unit!8014)

(assert (=> d!61797 (= lt!129904 e!167295)))

(declare-fun c!43686 () Bool)

(assert (=> d!61797 (= c!43686 lt!129906)))

(declare-fun containsKey!304 (List!3831 (_ BitVec 64)) Bool)

(assert (=> d!61797 (= lt!129906 (containsKey!304 (toList!1943 lt!129847) key!932))))

(assert (=> d!61797 (= (contains!1877 lt!129847 key!932) lt!129903)))

(declare-fun b!258058 () Bool)

(declare-fun lt!129905 () Unit!8014)

(assert (=> b!258058 (= e!167295 lt!129905)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!253 (List!3831 (_ BitVec 64)) Unit!8014)

(assert (=> b!258058 (= lt!129905 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!129847) key!932))))

(declare-datatypes ((Option!318 0))(
  ( (Some!317 (v!5444 V!8451)) (None!316) )
))
(declare-fun isDefined!254 (Option!318) Bool)

(declare-fun getValueByKey!312 (List!3831 (_ BitVec 64)) Option!318)

(assert (=> b!258058 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129847) key!932))))

(declare-fun b!258059 () Bool)

(declare-fun Unit!8023 () Unit!8014)

(assert (=> b!258059 (= e!167295 Unit!8023)))

(declare-fun b!258060 () Bool)

(assert (=> b!258060 (= e!167294 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129847) key!932)))))

(assert (= (and d!61797 c!43686) b!258058))

(assert (= (and d!61797 (not c!43686)) b!258059))

(assert (= (and d!61797 (not res!126212)) b!258060))

(declare-fun m!273425 () Bool)

(assert (=> d!61797 m!273425))

(declare-fun m!273427 () Bool)

(assert (=> b!258058 m!273427))

(declare-fun m!273429 () Bool)

(assert (=> b!258058 m!273429))

(assert (=> b!258058 m!273429))

(declare-fun m!273431 () Bool)

(assert (=> b!258058 m!273431))

(assert (=> b!258060 m!273429))

(assert (=> b!258060 m!273429))

(assert (=> b!258060 m!273431))

(assert (=> b!257976 d!61797))

(declare-fun b!258103 () Bool)

(declare-fun res!126232 () Bool)

(declare-fun e!167323 () Bool)

(assert (=> b!258103 (=> (not res!126232) (not e!167323))))

(declare-fun e!167329 () Bool)

(assert (=> b!258103 (= res!126232 e!167329)))

(declare-fun c!43703 () Bool)

(assert (=> b!258103 (= c!43703 (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!258104 () Bool)

(declare-fun e!167328 () Bool)

(declare-fun e!167326 () Bool)

(assert (=> b!258104 (= e!167328 e!167326)))

(declare-fun res!126238 () Bool)

(declare-fun call!24543 () Bool)

(assert (=> b!258104 (= res!126238 call!24543)))

(assert (=> b!258104 (=> (not res!126238) (not e!167326))))

(declare-fun bm!24539 () Bool)

(declare-fun call!24542 () ListLongMap!3855)

(declare-fun call!24546 () ListLongMap!3855)

(assert (=> bm!24539 (= call!24542 call!24546)))

(declare-fun b!258105 () Bool)

(declare-fun call!24548 () Bool)

(assert (=> b!258105 (= e!167329 (not call!24548))))

(declare-fun b!258106 () Bool)

(declare-fun e!167330 () Bool)

(declare-fun e!167333 () Bool)

(assert (=> b!258106 (= e!167330 e!167333)))

(declare-fun res!126233 () Bool)

(assert (=> b!258106 (=> (not res!126233) (not e!167333))))

(declare-fun lt!129972 () ListLongMap!3855)

(assert (=> b!258106 (= res!126233 (contains!1877 lt!129972 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!258106 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun d!61799 () Bool)

(assert (=> d!61799 e!167323))

(declare-fun res!126235 () Bool)

(assert (=> d!61799 (=> (not res!126235) (not e!167323))))

(assert (=> d!61799 (= res!126235 (or (bvsge #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))))

(declare-fun lt!129954 () ListLongMap!3855)

(assert (=> d!61799 (= lt!129972 lt!129954)))

(declare-fun lt!129965 () Unit!8014)

(declare-fun e!167332 () Unit!8014)

(assert (=> d!61799 (= lt!129965 e!167332)))

(declare-fun c!43704 () Bool)

(declare-fun e!167324 () Bool)

(assert (=> d!61799 (= c!43704 e!167324)))

(declare-fun res!126231 () Bool)

(assert (=> d!61799 (=> (not res!126231) (not e!167324))))

(assert (=> d!61799 (= res!126231 (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun e!167327 () ListLongMap!3855)

(assert (=> d!61799 (= lt!129954 e!167327)))

(declare-fun c!43701 () Bool)

(assert (=> d!61799 (= c!43701 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61799 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61799 (= (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) lt!129972)))

(declare-fun bm!24540 () Bool)

(assert (=> bm!24540 (= call!24548 (contains!1877 lt!129972 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258107 () Bool)

(declare-fun c!43702 () Bool)

(assert (=> b!258107 (= c!43702 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!167334 () ListLongMap!3855)

(declare-fun e!167322 () ListLongMap!3855)

(assert (=> b!258107 (= e!167334 e!167322)))

(declare-fun b!258108 () Bool)

(assert (=> b!258108 (= e!167327 (+!687 call!24546 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))

(declare-fun call!24545 () ListLongMap!3855)

(declare-fun bm!24541 () Bool)

(declare-fun call!24547 () ListLongMap!3855)

(declare-fun c!43700 () Bool)

(declare-fun call!24544 () ListLongMap!3855)

(assert (=> bm!24541 (= call!24546 (+!687 (ite c!43701 call!24547 (ite c!43700 call!24545 call!24544)) (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(declare-fun bm!24542 () Bool)

(assert (=> bm!24542 (= call!24543 (contains!1877 lt!129972 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258109 () Bool)

(declare-fun res!126234 () Bool)

(assert (=> b!258109 (=> (not res!126234) (not e!167323))))

(assert (=> b!258109 (= res!126234 e!167330)))

(declare-fun res!126237 () Bool)

(assert (=> b!258109 (=> res!126237 e!167330)))

(declare-fun e!167331 () Bool)

(assert (=> b!258109 (= res!126237 (not e!167331))))

(declare-fun res!126239 () Bool)

(assert (=> b!258109 (=> (not res!126239) (not e!167331))))

(assert (=> b!258109 (= res!126239 (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258110 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!258110 (= e!167324 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!258111 () Bool)

(assert (=> b!258111 (= e!167328 (not call!24543))))

(declare-fun b!258112 () Bool)

(declare-fun Unit!8024 () Unit!8014)

(assert (=> b!258112 (= e!167332 Unit!8024)))

(declare-fun bm!24543 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!574 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 32) Int) ListLongMap!3855)

(assert (=> bm!24543 (= call!24547 (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun b!258113 () Bool)

(declare-fun e!167325 () Bool)

(assert (=> b!258113 (= e!167329 e!167325)))

(declare-fun res!126236 () Bool)

(assert (=> b!258113 (= res!126236 call!24548)))

(assert (=> b!258113 (=> (not res!126236) (not e!167325))))

(declare-fun b!258114 () Bool)

(declare-fun apply!255 (ListLongMap!3855 (_ BitVec 64)) V!8451)

(assert (=> b!258114 (= e!167326 (= (apply!255 lt!129972 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4602 thiss!1504)))))

(declare-fun b!258115 () Bool)

(assert (=> b!258115 (= e!167334 call!24542)))

(declare-fun b!258116 () Bool)

(declare-fun lt!129952 () Unit!8014)

(assert (=> b!258116 (= e!167332 lt!129952)))

(declare-fun lt!129960 () ListLongMap!3855)

(assert (=> b!258116 (= lt!129960 (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129969 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129969 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129956 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129956 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129970 () Unit!8014)

(declare-fun addStillContains!231 (ListLongMap!3855 (_ BitVec 64) V!8451 (_ BitVec 64)) Unit!8014)

(assert (=> b!258116 (= lt!129970 (addStillContains!231 lt!129960 lt!129969 (zeroValue!4602 thiss!1504) lt!129956))))

(assert (=> b!258116 (contains!1877 (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))) lt!129956)))

(declare-fun lt!129959 () Unit!8014)

(assert (=> b!258116 (= lt!129959 lt!129970)))

(declare-fun lt!129964 () ListLongMap!3855)

(assert (=> b!258116 (= lt!129964 (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129961 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129961 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129962 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129962 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129971 () Unit!8014)

(declare-fun addApplyDifferent!231 (ListLongMap!3855 (_ BitVec 64) V!8451 (_ BitVec 64)) Unit!8014)

(assert (=> b!258116 (= lt!129971 (addApplyDifferent!231 lt!129964 lt!129961 (minValue!4602 thiss!1504) lt!129962))))

(assert (=> b!258116 (= (apply!255 (+!687 lt!129964 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))) lt!129962) (apply!255 lt!129964 lt!129962))))

(declare-fun lt!129951 () Unit!8014)

(assert (=> b!258116 (= lt!129951 lt!129971)))

(declare-fun lt!129968 () ListLongMap!3855)

(assert (=> b!258116 (= lt!129968 (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129957 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129957 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129958 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129958 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129966 () Unit!8014)

(assert (=> b!258116 (= lt!129966 (addApplyDifferent!231 lt!129968 lt!129957 (zeroValue!4602 thiss!1504) lt!129958))))

(assert (=> b!258116 (= (apply!255 (+!687 lt!129968 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))) lt!129958) (apply!255 lt!129968 lt!129958))))

(declare-fun lt!129963 () Unit!8014)

(assert (=> b!258116 (= lt!129963 lt!129966)))

(declare-fun lt!129953 () ListLongMap!3855)

(assert (=> b!258116 (= lt!129953 (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129955 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129955 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129967 () (_ BitVec 64))

(assert (=> b!258116 (= lt!129967 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!258116 (= lt!129952 (addApplyDifferent!231 lt!129953 lt!129955 (minValue!4602 thiss!1504) lt!129967))))

(assert (=> b!258116 (= (apply!255 (+!687 lt!129953 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))) lt!129967) (apply!255 lt!129953 lt!129967))))

(declare-fun bm!24544 () Bool)

(assert (=> bm!24544 (= call!24544 call!24545)))

(declare-fun b!258117 () Bool)

(assert (=> b!258117 (= e!167322 call!24544)))

(declare-fun b!258118 () Bool)

(declare-fun get!3057 (ValueCell!2958 V!8451) V!8451)

(declare-fun dynLambda!593 (Int (_ BitVec 64)) V!8451)

(assert (=> b!258118 (= e!167333 (= (apply!255 lt!129972 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)) (get!3057 (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258118 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6290 (_values!4744 thiss!1504))))))

(assert (=> b!258118 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun bm!24545 () Bool)

(assert (=> bm!24545 (= call!24545 call!24547)))

(declare-fun b!258119 () Bool)

(assert (=> b!258119 (= e!167327 e!167334)))

(assert (=> b!258119 (= c!43700 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!258120 () Bool)

(assert (=> b!258120 (= e!167331 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!258121 () Bool)

(assert (=> b!258121 (= e!167322 call!24542)))

(declare-fun b!258122 () Bool)

(assert (=> b!258122 (= e!167325 (= (apply!255 lt!129972 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4602 thiss!1504)))))

(declare-fun b!258123 () Bool)

(assert (=> b!258123 (= e!167323 e!167328)))

(declare-fun c!43699 () Bool)

(assert (=> b!258123 (= c!43699 (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61799 c!43701) b!258108))

(assert (= (and d!61799 (not c!43701)) b!258119))

(assert (= (and b!258119 c!43700) b!258115))

(assert (= (and b!258119 (not c!43700)) b!258107))

(assert (= (and b!258107 c!43702) b!258121))

(assert (= (and b!258107 (not c!43702)) b!258117))

(assert (= (or b!258121 b!258117) bm!24544))

(assert (= (or b!258115 bm!24544) bm!24545))

(assert (= (or b!258115 b!258121) bm!24539))

(assert (= (or b!258108 bm!24545) bm!24543))

(assert (= (or b!258108 bm!24539) bm!24541))

(assert (= (and d!61799 res!126231) b!258110))

(assert (= (and d!61799 c!43704) b!258116))

(assert (= (and d!61799 (not c!43704)) b!258112))

(assert (= (and d!61799 res!126235) b!258109))

(assert (= (and b!258109 res!126239) b!258120))

(assert (= (and b!258109 (not res!126237)) b!258106))

(assert (= (and b!258106 res!126233) b!258118))

(assert (= (and b!258109 res!126234) b!258103))

(assert (= (and b!258103 c!43703) b!258113))

(assert (= (and b!258103 (not c!43703)) b!258105))

(assert (= (and b!258113 res!126236) b!258122))

(assert (= (or b!258113 b!258105) bm!24540))

(assert (= (and b!258103 res!126232) b!258123))

(assert (= (and b!258123 c!43699) b!258104))

(assert (= (and b!258123 (not c!43699)) b!258111))

(assert (= (and b!258104 res!126238) b!258114))

(assert (= (or b!258104 b!258111) bm!24542))

(declare-fun b_lambda!8225 () Bool)

(assert (=> (not b_lambda!8225) (not b!258118)))

(declare-fun t!8907 () Bool)

(declare-fun tb!3031 () Bool)

(assert (=> (and b!257979 (= (defaultEntry!4761 thiss!1504) (defaultEntry!4761 thiss!1504)) t!8907) tb!3031))

(declare-fun result!5399 () Bool)

(assert (=> tb!3031 (= result!5399 tp_is_empty!6603)))

(assert (=> b!258118 t!8907))

(declare-fun b_and!13837 () Bool)

(assert (= b_and!13833 (and (=> t!8907 result!5399) b_and!13837)))

(declare-fun m!273433 () Bool)

(assert (=> bm!24542 m!273433))

(declare-fun m!273435 () Bool)

(assert (=> b!258106 m!273435))

(assert (=> b!258106 m!273435))

(declare-fun m!273437 () Bool)

(assert (=> b!258106 m!273437))

(assert (=> b!258120 m!273435))

(assert (=> b!258120 m!273435))

(declare-fun m!273439 () Bool)

(assert (=> b!258120 m!273439))

(declare-fun m!273441 () Bool)

(assert (=> b!258116 m!273441))

(declare-fun m!273443 () Bool)

(assert (=> b!258116 m!273443))

(declare-fun m!273445 () Bool)

(assert (=> b!258116 m!273445))

(declare-fun m!273447 () Bool)

(assert (=> b!258116 m!273447))

(declare-fun m!273449 () Bool)

(assert (=> b!258116 m!273449))

(assert (=> b!258116 m!273441))

(declare-fun m!273451 () Bool)

(assert (=> b!258116 m!273451))

(declare-fun m!273453 () Bool)

(assert (=> b!258116 m!273453))

(declare-fun m!273455 () Bool)

(assert (=> b!258116 m!273455))

(assert (=> b!258116 m!273453))

(declare-fun m!273457 () Bool)

(assert (=> b!258116 m!273457))

(declare-fun m!273459 () Bool)

(assert (=> b!258116 m!273459))

(declare-fun m!273461 () Bool)

(assert (=> b!258116 m!273461))

(declare-fun m!273463 () Bool)

(assert (=> b!258116 m!273463))

(declare-fun m!273465 () Bool)

(assert (=> b!258116 m!273465))

(declare-fun m!273467 () Bool)

(assert (=> b!258116 m!273467))

(assert (=> b!258116 m!273457))

(declare-fun m!273469 () Bool)

(assert (=> b!258116 m!273469))

(declare-fun m!273471 () Bool)

(assert (=> b!258116 m!273471))

(assert (=> b!258116 m!273435))

(assert (=> b!258116 m!273461))

(declare-fun m!273473 () Bool)

(assert (=> bm!24540 m!273473))

(assert (=> bm!24543 m!273471))

(declare-fun m!273475 () Bool)

(assert (=> b!258122 m!273475))

(assert (=> b!258110 m!273435))

(assert (=> b!258110 m!273435))

(assert (=> b!258110 m!273439))

(declare-fun m!273477 () Bool)

(assert (=> b!258114 m!273477))

(declare-fun m!273479 () Bool)

(assert (=> b!258108 m!273479))

(declare-fun m!273481 () Bool)

(assert (=> b!258118 m!273481))

(declare-fun m!273483 () Bool)

(assert (=> b!258118 m!273483))

(declare-fun m!273485 () Bool)

(assert (=> b!258118 m!273485))

(assert (=> b!258118 m!273435))

(declare-fun m!273487 () Bool)

(assert (=> b!258118 m!273487))

(assert (=> b!258118 m!273481))

(assert (=> b!258118 m!273483))

(assert (=> b!258118 m!273435))

(declare-fun m!273489 () Bool)

(assert (=> bm!24541 m!273489))

(assert (=> d!61799 m!273329))

(assert (=> b!257976 d!61799))

(declare-fun d!61801 () Bool)

(declare-fun lt!129981 () SeekEntryResult!1184)

(assert (=> d!61801 (and (or ((_ is Undefined!1184) lt!129981) (not ((_ is Found!1184) lt!129981)) (and (bvsge (index!6907 lt!129981) #b00000000000000000000000000000000) (bvslt (index!6907 lt!129981) (size!6291 (_keys!6931 thiss!1504))))) (or ((_ is Undefined!1184) lt!129981) ((_ is Found!1184) lt!129981) (not ((_ is MissingZero!1184) lt!129981)) (and (bvsge (index!6906 lt!129981) #b00000000000000000000000000000000) (bvslt (index!6906 lt!129981) (size!6291 (_keys!6931 thiss!1504))))) (or ((_ is Undefined!1184) lt!129981) ((_ is Found!1184) lt!129981) ((_ is MissingZero!1184) lt!129981) (not ((_ is MissingVacant!1184) lt!129981)) (and (bvsge (index!6909 lt!129981) #b00000000000000000000000000000000) (bvslt (index!6909 lt!129981) (size!6291 (_keys!6931 thiss!1504))))) (or ((_ is Undefined!1184) lt!129981) (ite ((_ is Found!1184) lt!129981) (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6907 lt!129981)) key!932) (ite ((_ is MissingZero!1184) lt!129981) (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6906 lt!129981)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1184) lt!129981) (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6909 lt!129981)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!167343 () SeekEntryResult!1184)

(assert (=> d!61801 (= lt!129981 e!167343)))

(declare-fun c!43711 () Bool)

(declare-fun lt!129979 () SeekEntryResult!1184)

(assert (=> d!61801 (= c!43711 (and ((_ is Intermediate!1184) lt!129979) (undefined!1996 lt!129979)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12554 (_ BitVec 32)) SeekEntryResult!1184)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61801 (= lt!129979 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11058 thiss!1504)) key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(assert (=> d!61801 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61801 (= (seekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)) lt!129981)))

(declare-fun b!258138 () Bool)

(declare-fun c!43712 () Bool)

(declare-fun lt!129980 () (_ BitVec 64))

(assert (=> b!258138 (= c!43712 (= lt!129980 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!167342 () SeekEntryResult!1184)

(declare-fun e!167341 () SeekEntryResult!1184)

(assert (=> b!258138 (= e!167342 e!167341)))

(declare-fun b!258139 () Bool)

(assert (=> b!258139 (= e!167342 (Found!1184 (index!6908 lt!129979)))))

(declare-fun b!258140 () Bool)

(assert (=> b!258140 (= e!167343 e!167342)))

(assert (=> b!258140 (= lt!129980 (select (arr!5944 (_keys!6931 thiss!1504)) (index!6908 lt!129979)))))

(declare-fun c!43713 () Bool)

(assert (=> b!258140 (= c!43713 (= lt!129980 key!932))))

(declare-fun b!258141 () Bool)

(assert (=> b!258141 (= e!167341 (MissingZero!1184 (index!6908 lt!129979)))))

(declare-fun b!258142 () Bool)

(assert (=> b!258142 (= e!167343 Undefined!1184)))

(declare-fun b!258143 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12554 (_ BitVec 32)) SeekEntryResult!1184)

(assert (=> b!258143 (= e!167341 (seekKeyOrZeroReturnVacant!0 (x!25052 lt!129979) (index!6908 lt!129979) (index!6908 lt!129979) key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(assert (= (and d!61801 c!43711) b!258142))

(assert (= (and d!61801 (not c!43711)) b!258140))

(assert (= (and b!258140 c!43713) b!258139))

(assert (= (and b!258140 (not c!43713)) b!258138))

(assert (= (and b!258138 c!43712) b!258141))

(assert (= (and b!258138 (not c!43712)) b!258143))

(declare-fun m!273491 () Bool)

(assert (=> d!61801 m!273491))

(declare-fun m!273493 () Bool)

(assert (=> d!61801 m!273493))

(declare-fun m!273495 () Bool)

(assert (=> d!61801 m!273495))

(declare-fun m!273497 () Bool)

(assert (=> d!61801 m!273497))

(assert (=> d!61801 m!273329))

(declare-fun m!273499 () Bool)

(assert (=> d!61801 m!273499))

(assert (=> d!61801 m!273491))

(declare-fun m!273501 () Bool)

(assert (=> b!258140 m!273501))

(declare-fun m!273503 () Bool)

(assert (=> b!258143 m!273503))

(assert (=> b!257981 d!61801))

(declare-fun b!258144 () Bool)

(declare-fun res!126241 () Bool)

(declare-fun e!167345 () Bool)

(assert (=> b!258144 (=> (not res!126241) (not e!167345))))

(declare-fun e!167351 () Bool)

(assert (=> b!258144 (= res!126241 e!167351)))

(declare-fun c!43718 () Bool)

(assert (=> b!258144 (= c!43718 (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!258145 () Bool)

(declare-fun e!167350 () Bool)

(declare-fun e!167348 () Bool)

(assert (=> b!258145 (= e!167350 e!167348)))

(declare-fun res!126247 () Bool)

(declare-fun call!24550 () Bool)

(assert (=> b!258145 (= res!126247 call!24550)))

(assert (=> b!258145 (=> (not res!126247) (not e!167348))))

(declare-fun bm!24546 () Bool)

(declare-fun call!24549 () ListLongMap!3855)

(declare-fun call!24553 () ListLongMap!3855)

(assert (=> bm!24546 (= call!24549 call!24553)))

(declare-fun b!258146 () Bool)

(declare-fun call!24555 () Bool)

(assert (=> b!258146 (= e!167351 (not call!24555))))

(declare-fun b!258147 () Bool)

(declare-fun e!167352 () Bool)

(declare-fun e!167355 () Bool)

(assert (=> b!258147 (= e!167352 e!167355)))

(declare-fun res!126242 () Bool)

(assert (=> b!258147 (=> (not res!126242) (not e!167355))))

(declare-fun lt!130003 () ListLongMap!3855)

(assert (=> b!258147 (= res!126242 (contains!1877 lt!130003 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(assert (=> b!258147 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(declare-fun d!61803 () Bool)

(assert (=> d!61803 e!167345))

(declare-fun res!126244 () Bool)

(assert (=> d!61803 (=> (not res!126244) (not e!167345))))

(assert (=> d!61803 (= res!126244 (or (bvsge #b00000000000000000000000000000000 (size!6291 lt!129842)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))))

(declare-fun lt!129985 () ListLongMap!3855)

(assert (=> d!61803 (= lt!130003 lt!129985)))

(declare-fun lt!129996 () Unit!8014)

(declare-fun e!167354 () Unit!8014)

(assert (=> d!61803 (= lt!129996 e!167354)))

(declare-fun c!43719 () Bool)

(declare-fun e!167346 () Bool)

(assert (=> d!61803 (= c!43719 e!167346)))

(declare-fun res!126240 () Bool)

(assert (=> d!61803 (=> (not res!126240) (not e!167346))))

(assert (=> d!61803 (= res!126240 (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(declare-fun e!167349 () ListLongMap!3855)

(assert (=> d!61803 (= lt!129985 e!167349)))

(declare-fun c!43716 () Bool)

(assert (=> d!61803 (= c!43716 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61803 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61803 (= (getCurrentListMap!1466 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) lt!130003)))

(declare-fun bm!24547 () Bool)

(assert (=> bm!24547 (= call!24555 (contains!1877 lt!130003 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258148 () Bool)

(declare-fun c!43717 () Bool)

(assert (=> b!258148 (= c!43717 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!167356 () ListLongMap!3855)

(declare-fun e!167344 () ListLongMap!3855)

(assert (=> b!258148 (= e!167356 e!167344)))

(declare-fun b!258149 () Bool)

(assert (=> b!258149 (= e!167349 (+!687 call!24553 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))

(declare-fun c!43715 () Bool)

(declare-fun call!24552 () ListLongMap!3855)

(declare-fun bm!24548 () Bool)

(declare-fun call!24554 () ListLongMap!3855)

(declare-fun call!24551 () ListLongMap!3855)

(assert (=> bm!24548 (= call!24553 (+!687 (ite c!43716 call!24554 (ite c!43715 call!24552 call!24551)) (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(declare-fun bm!24549 () Bool)

(assert (=> bm!24549 (= call!24550 (contains!1877 lt!130003 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258150 () Bool)

(declare-fun res!126243 () Bool)

(assert (=> b!258150 (=> (not res!126243) (not e!167345))))

(assert (=> b!258150 (= res!126243 e!167352)))

(declare-fun res!126246 () Bool)

(assert (=> b!258150 (=> res!126246 e!167352)))

(declare-fun e!167353 () Bool)

(assert (=> b!258150 (= res!126246 (not e!167353))))

(declare-fun res!126248 () Bool)

(assert (=> b!258150 (=> (not res!126248) (not e!167353))))

(assert (=> b!258150 (= res!126248 (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(declare-fun b!258151 () Bool)

(assert (=> b!258151 (= e!167346 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258152 () Bool)

(assert (=> b!258152 (= e!167350 (not call!24550))))

(declare-fun b!258153 () Bool)

(declare-fun Unit!8025 () Unit!8014)

(assert (=> b!258153 (= e!167354 Unit!8025)))

(declare-fun bm!24550 () Bool)

(assert (=> bm!24550 (= call!24554 (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun b!258154 () Bool)

(declare-fun e!167347 () Bool)

(assert (=> b!258154 (= e!167351 e!167347)))

(declare-fun res!126245 () Bool)

(assert (=> b!258154 (= res!126245 call!24555)))

(assert (=> b!258154 (=> (not res!126245) (not e!167347))))

(declare-fun b!258155 () Bool)

(assert (=> b!258155 (= e!167348 (= (apply!255 lt!130003 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4602 thiss!1504)))))

(declare-fun b!258156 () Bool)

(assert (=> b!258156 (= e!167356 call!24549)))

(declare-fun b!258157 () Bool)

(declare-fun lt!129983 () Unit!8014)

(assert (=> b!258157 (= e!167354 lt!129983)))

(declare-fun lt!129991 () ListLongMap!3855)

(assert (=> b!258157 (= lt!129991 (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!130000 () (_ BitVec 64))

(assert (=> b!258157 (= lt!130000 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129987 () (_ BitVec 64))

(assert (=> b!258157 (= lt!129987 (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))

(declare-fun lt!130001 () Unit!8014)

(assert (=> b!258157 (= lt!130001 (addStillContains!231 lt!129991 lt!130000 (zeroValue!4602 thiss!1504) lt!129987))))

(assert (=> b!258157 (contains!1877 (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))) lt!129987)))

(declare-fun lt!129990 () Unit!8014)

(assert (=> b!258157 (= lt!129990 lt!130001)))

(declare-fun lt!129995 () ListLongMap!3855)

(assert (=> b!258157 (= lt!129995 (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129992 () (_ BitVec 64))

(assert (=> b!258157 (= lt!129992 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129993 () (_ BitVec 64))

(assert (=> b!258157 (= lt!129993 (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))

(declare-fun lt!130002 () Unit!8014)

(assert (=> b!258157 (= lt!130002 (addApplyDifferent!231 lt!129995 lt!129992 (minValue!4602 thiss!1504) lt!129993))))

(assert (=> b!258157 (= (apply!255 (+!687 lt!129995 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))) lt!129993) (apply!255 lt!129995 lt!129993))))

(declare-fun lt!129982 () Unit!8014)

(assert (=> b!258157 (= lt!129982 lt!130002)))

(declare-fun lt!129999 () ListLongMap!3855)

(assert (=> b!258157 (= lt!129999 (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129988 () (_ BitVec 64))

(assert (=> b!258157 (= lt!129988 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129989 () (_ BitVec 64))

(assert (=> b!258157 (= lt!129989 (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))

(declare-fun lt!129997 () Unit!8014)

(assert (=> b!258157 (= lt!129997 (addApplyDifferent!231 lt!129999 lt!129988 (zeroValue!4602 thiss!1504) lt!129989))))

(assert (=> b!258157 (= (apply!255 (+!687 lt!129999 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))) lt!129989) (apply!255 lt!129999 lt!129989))))

(declare-fun lt!129994 () Unit!8014)

(assert (=> b!258157 (= lt!129994 lt!129997)))

(declare-fun lt!129984 () ListLongMap!3855)

(assert (=> b!258157 (= lt!129984 (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!129986 () (_ BitVec 64))

(assert (=> b!258157 (= lt!129986 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129998 () (_ BitVec 64))

(assert (=> b!258157 (= lt!129998 (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))

(assert (=> b!258157 (= lt!129983 (addApplyDifferent!231 lt!129984 lt!129986 (minValue!4602 thiss!1504) lt!129998))))

(assert (=> b!258157 (= (apply!255 (+!687 lt!129984 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))) lt!129998) (apply!255 lt!129984 lt!129998))))

(declare-fun bm!24551 () Bool)

(assert (=> bm!24551 (= call!24551 call!24552)))

(declare-fun b!258158 () Bool)

(assert (=> b!258158 (= e!167344 call!24551)))

(declare-fun b!258159 () Bool)

(assert (=> b!258159 (= e!167355 (= (apply!255 lt!130003 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)) (get!3057 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258159 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6290 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))))))))

(assert (=> b!258159 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(declare-fun bm!24552 () Bool)

(assert (=> bm!24552 (= call!24552 call!24554)))

(declare-fun b!258160 () Bool)

(assert (=> b!258160 (= e!167349 e!167356)))

(assert (=> b!258160 (= c!43715 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!258161 () Bool)

(assert (=> b!258161 (= e!167353 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258162 () Bool)

(assert (=> b!258162 (= e!167344 call!24549)))

(declare-fun b!258163 () Bool)

(assert (=> b!258163 (= e!167347 (= (apply!255 lt!130003 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4602 thiss!1504)))))

(declare-fun b!258164 () Bool)

(assert (=> b!258164 (= e!167345 e!167350)))

(declare-fun c!43714 () Bool)

(assert (=> b!258164 (= c!43714 (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61803 c!43716) b!258149))

(assert (= (and d!61803 (not c!43716)) b!258160))

(assert (= (and b!258160 c!43715) b!258156))

(assert (= (and b!258160 (not c!43715)) b!258148))

(assert (= (and b!258148 c!43717) b!258162))

(assert (= (and b!258148 (not c!43717)) b!258158))

(assert (= (or b!258162 b!258158) bm!24551))

(assert (= (or b!258156 bm!24551) bm!24552))

(assert (= (or b!258156 b!258162) bm!24546))

(assert (= (or b!258149 bm!24552) bm!24550))

(assert (= (or b!258149 bm!24546) bm!24548))

(assert (= (and d!61803 res!126240) b!258151))

(assert (= (and d!61803 c!43719) b!258157))

(assert (= (and d!61803 (not c!43719)) b!258153))

(assert (= (and d!61803 res!126244) b!258150))

(assert (= (and b!258150 res!126248) b!258161))

(assert (= (and b!258150 (not res!126246)) b!258147))

(assert (= (and b!258147 res!126242) b!258159))

(assert (= (and b!258150 res!126243) b!258144))

(assert (= (and b!258144 c!43718) b!258154))

(assert (= (and b!258144 (not c!43718)) b!258146))

(assert (= (and b!258154 res!126245) b!258163))

(assert (= (or b!258154 b!258146) bm!24547))

(assert (= (and b!258144 res!126241) b!258164))

(assert (= (and b!258164 c!43714) b!258145))

(assert (= (and b!258164 (not c!43714)) b!258152))

(assert (= (and b!258145 res!126247) b!258155))

(assert (= (or b!258145 b!258152) bm!24549))

(declare-fun b_lambda!8227 () Bool)

(assert (=> (not b_lambda!8227) (not b!258159)))

(assert (=> b!258159 t!8907))

(declare-fun b_and!13839 () Bool)

(assert (= b_and!13837 (and (=> t!8907 result!5399) b_and!13839)))

(declare-fun m!273505 () Bool)

(assert (=> bm!24549 m!273505))

(declare-fun m!273507 () Bool)

(assert (=> b!258147 m!273507))

(assert (=> b!258147 m!273507))

(declare-fun m!273509 () Bool)

(assert (=> b!258147 m!273509))

(assert (=> b!258161 m!273507))

(assert (=> b!258161 m!273507))

(declare-fun m!273511 () Bool)

(assert (=> b!258161 m!273511))

(declare-fun m!273513 () Bool)

(assert (=> b!258157 m!273513))

(declare-fun m!273515 () Bool)

(assert (=> b!258157 m!273515))

(declare-fun m!273517 () Bool)

(assert (=> b!258157 m!273517))

(declare-fun m!273519 () Bool)

(assert (=> b!258157 m!273519))

(declare-fun m!273521 () Bool)

(assert (=> b!258157 m!273521))

(assert (=> b!258157 m!273513))

(declare-fun m!273523 () Bool)

(assert (=> b!258157 m!273523))

(declare-fun m!273525 () Bool)

(assert (=> b!258157 m!273525))

(declare-fun m!273527 () Bool)

(assert (=> b!258157 m!273527))

(assert (=> b!258157 m!273525))

(declare-fun m!273529 () Bool)

(assert (=> b!258157 m!273529))

(declare-fun m!273531 () Bool)

(assert (=> b!258157 m!273531))

(declare-fun m!273533 () Bool)

(assert (=> b!258157 m!273533))

(declare-fun m!273535 () Bool)

(assert (=> b!258157 m!273535))

(declare-fun m!273537 () Bool)

(assert (=> b!258157 m!273537))

(declare-fun m!273539 () Bool)

(assert (=> b!258157 m!273539))

(assert (=> b!258157 m!273529))

(declare-fun m!273541 () Bool)

(assert (=> b!258157 m!273541))

(declare-fun m!273543 () Bool)

(assert (=> b!258157 m!273543))

(assert (=> b!258157 m!273507))

(assert (=> b!258157 m!273533))

(declare-fun m!273545 () Bool)

(assert (=> bm!24547 m!273545))

(assert (=> bm!24550 m!273543))

(declare-fun m!273547 () Bool)

(assert (=> b!258163 m!273547))

(assert (=> b!258151 m!273507))

(assert (=> b!258151 m!273507))

(assert (=> b!258151 m!273511))

(declare-fun m!273549 () Bool)

(assert (=> b!258155 m!273549))

(declare-fun m!273551 () Bool)

(assert (=> b!258149 m!273551))

(declare-fun m!273553 () Bool)

(assert (=> b!258159 m!273553))

(assert (=> b!258159 m!273483))

(declare-fun m!273555 () Bool)

(assert (=> b!258159 m!273555))

(assert (=> b!258159 m!273507))

(declare-fun m!273557 () Bool)

(assert (=> b!258159 m!273557))

(assert (=> b!258159 m!273553))

(assert (=> b!258159 m!273483))

(assert (=> b!258159 m!273507))

(declare-fun m!273559 () Bool)

(assert (=> bm!24548 m!273559))

(assert (=> d!61803 m!273329))

(assert (=> b!257968 d!61803))

(declare-fun b!258173 () Bool)

(declare-fun res!126257 () Bool)

(declare-fun e!167362 () Bool)

(assert (=> b!258173 (=> (not res!126257) (not e!167362))))

(assert (=> b!258173 (= res!126257 (not (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) index!297))))))

(declare-fun d!61805 () Bool)

(declare-fun e!167361 () Bool)

(assert (=> d!61805 e!167361))

(declare-fun res!126258 () Bool)

(assert (=> d!61805 (=> (not res!126258) (not e!167361))))

(assert (=> d!61805 (= res!126258 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6291 (_keys!6931 thiss!1504)))))))

(declare-fun lt!130006 () Unit!8014)

(declare-fun choose!1 (array!12554 (_ BitVec 32) (_ BitVec 64)) Unit!8014)

(assert (=> d!61805 (= lt!130006 (choose!1 (_keys!6931 thiss!1504) index!297 key!932))))

(assert (=> d!61805 e!167362))

(declare-fun res!126260 () Bool)

(assert (=> d!61805 (=> (not res!126260) (not e!167362))))

(assert (=> d!61805 (= res!126260 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6291 (_keys!6931 thiss!1504)))))))

(assert (=> d!61805 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6931 thiss!1504) index!297 key!932) lt!130006)))

(declare-fun b!258174 () Bool)

(declare-fun res!126259 () Bool)

(assert (=> b!258174 (=> (not res!126259) (not e!167362))))

(assert (=> b!258174 (= res!126259 (validKeyInArray!0 key!932))))

(declare-fun b!258175 () Bool)

(assert (=> b!258175 (= e!167362 (bvslt (size!6291 (_keys!6931 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!258176 () Bool)

(assert (=> b!258176 (= e!167361 (= (arrayCountValidKeys!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6931 thiss!1504) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000001)))))

(assert (= (and d!61805 res!126260) b!258173))

(assert (= (and b!258173 res!126257) b!258174))

(assert (= (and b!258174 res!126259) b!258175))

(assert (= (and d!61805 res!126258) b!258176))

(declare-fun m!273561 () Bool)

(assert (=> b!258173 m!273561))

(assert (=> b!258173 m!273561))

(declare-fun m!273563 () Bool)

(assert (=> b!258173 m!273563))

(declare-fun m!273565 () Bool)

(assert (=> d!61805 m!273565))

(declare-fun m!273567 () Bool)

(assert (=> b!258174 m!273567))

(assert (=> b!258176 m!273319))

(declare-fun m!273569 () Bool)

(assert (=> b!258176 m!273569))

(assert (=> b!258176 m!273321))

(assert (=> b!257968 d!61805))

(declare-fun d!61807 () Bool)

(declare-fun e!167365 () Bool)

(assert (=> d!61807 e!167365))

(declare-fun res!126265 () Bool)

(assert (=> d!61807 (=> (not res!126265) (not e!167365))))

(declare-fun lt!130018 () ListLongMap!3855)

(assert (=> d!61807 (= res!126265 (contains!1877 lt!130018 (_1!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun lt!130017 () List!3831)

(assert (=> d!61807 (= lt!130018 (ListLongMap!3856 lt!130017))))

(declare-fun lt!130015 () Unit!8014)

(declare-fun lt!130016 () Unit!8014)

(assert (=> d!61807 (= lt!130015 lt!130016)))

(assert (=> d!61807 (= (getValueByKey!312 lt!130017 (_1!2474 (tuple2!4929 key!932 v!346))) (Some!317 (_2!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!170 (List!3831 (_ BitVec 64) V!8451) Unit!8014)

(assert (=> d!61807 (= lt!130016 (lemmaContainsTupThenGetReturnValue!170 lt!130017 (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun insertStrictlySorted!172 (List!3831 (_ BitVec 64) V!8451) List!3831)

(assert (=> d!61807 (= lt!130017 (insertStrictlySorted!172 (toList!1943 lt!129847) (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))))))

(assert (=> d!61807 (= (+!687 lt!129847 (tuple2!4929 key!932 v!346)) lt!130018)))

(declare-fun b!258181 () Bool)

(declare-fun res!126266 () Bool)

(assert (=> b!258181 (=> (not res!126266) (not e!167365))))

(assert (=> b!258181 (= res!126266 (= (getValueByKey!312 (toList!1943 lt!130018) (_1!2474 (tuple2!4929 key!932 v!346))) (Some!317 (_2!2474 (tuple2!4929 key!932 v!346)))))))

(declare-fun b!258182 () Bool)

(declare-fun contains!1879 (List!3831 tuple2!4928) Bool)

(assert (=> b!258182 (= e!167365 (contains!1879 (toList!1943 lt!130018) (tuple2!4929 key!932 v!346)))))

(assert (= (and d!61807 res!126265) b!258181))

(assert (= (and b!258181 res!126266) b!258182))

(declare-fun m!273571 () Bool)

(assert (=> d!61807 m!273571))

(declare-fun m!273573 () Bool)

(assert (=> d!61807 m!273573))

(declare-fun m!273575 () Bool)

(assert (=> d!61807 m!273575))

(declare-fun m!273577 () Bool)

(assert (=> d!61807 m!273577))

(declare-fun m!273579 () Bool)

(assert (=> b!258181 m!273579))

(declare-fun m!273581 () Bool)

(assert (=> b!258182 m!273581))

(assert (=> b!257968 d!61807))

(declare-fun b!258191 () Bool)

(declare-fun e!167371 () (_ BitVec 32))

(declare-fun e!167370 () (_ BitVec 32))

(assert (=> b!258191 (= e!167371 e!167370)))

(declare-fun c!43725 () Bool)

(assert (=> b!258191 (= c!43725 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!258192 () Bool)

(declare-fun call!24558 () (_ BitVec 32))

(assert (=> b!258192 (= e!167370 call!24558)))

(declare-fun bm!24555 () Bool)

(assert (=> bm!24555 (= call!24558 (arrayCountValidKeys!0 (_keys!6931 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258193 () Bool)

(assert (=> b!258193 (= e!167371 #b00000000000000000000000000000000)))

(declare-fun b!258194 () Bool)

(assert (=> b!258194 (= e!167370 (bvadd #b00000000000000000000000000000001 call!24558))))

(declare-fun d!61809 () Bool)

(declare-fun lt!130021 () (_ BitVec 32))

(assert (=> d!61809 (and (bvsge lt!130021 #b00000000000000000000000000000000) (bvsle lt!130021 (bvsub (size!6291 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61809 (= lt!130021 e!167371)))

(declare-fun c!43724 () Bool)

(assert (=> d!61809 (= c!43724 (bvsge #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61809 (and (bvsle #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6291 (_keys!6931 thiss!1504)) (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61809 (= (arrayCountValidKeys!0 (_keys!6931 thiss!1504) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) lt!130021)))

(assert (= (and d!61809 c!43724) b!258193))

(assert (= (and d!61809 (not c!43724)) b!258191))

(assert (= (and b!258191 c!43725) b!258194))

(assert (= (and b!258191 (not c!43725)) b!258192))

(assert (= (or b!258194 b!258192) bm!24555))

(assert (=> b!258191 m!273435))

(assert (=> b!258191 m!273435))

(assert (=> b!258191 m!273439))

(declare-fun m!273583 () Bool)

(assert (=> bm!24555 m!273583))

(assert (=> b!257968 d!61809))

(declare-fun d!61811 () Bool)

(declare-fun e!167374 () Bool)

(assert (=> d!61811 e!167374))

(declare-fun res!126269 () Bool)

(assert (=> d!61811 (=> (not res!126269) (not e!167374))))

(assert (=> d!61811 (= res!126269 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6291 (_keys!6931 thiss!1504))) (bvslt index!297 (size!6290 (_values!4744 thiss!1504)))))))

(declare-fun lt!130024 () Unit!8014)

(declare-fun choose!1252 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 32) (_ BitVec 64) V!8451 Int) Unit!8014)

(assert (=> d!61811 (= lt!130024 (choose!1252 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) index!297 key!932 v!346 (defaultEntry!4761 thiss!1504)))))

(assert (=> d!61811 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61811 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!102 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) index!297 key!932 v!346 (defaultEntry!4761 thiss!1504)) lt!130024)))

(declare-fun b!258197 () Bool)

(assert (=> b!258197 (= e!167374 (= (+!687 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) (tuple2!4929 key!932 v!346)) (getCurrentListMap!1466 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504))))))

(assert (= (and d!61811 res!126269) b!258197))

(declare-fun m!273585 () Bool)

(assert (=> d!61811 m!273585))

(assert (=> d!61811 m!273329))

(assert (=> b!258197 m!273305))

(assert (=> b!258197 m!273353))

(declare-fun m!273587 () Bool)

(assert (=> b!258197 m!273587))

(declare-fun m!273589 () Bool)

(assert (=> b!258197 m!273589))

(assert (=> b!258197 m!273353))

(assert (=> b!258197 m!273319))

(assert (=> b!257968 d!61811))

(declare-fun d!61813 () Bool)

(assert (=> d!61813 (= (validMask!0 (mask!11058 thiss!1504)) (and (or (= (mask!11058 thiss!1504) #b00000000000000000000000000000111) (= (mask!11058 thiss!1504) #b00000000000000000000000000001111) (= (mask!11058 thiss!1504) #b00000000000000000000000000011111) (= (mask!11058 thiss!1504) #b00000000000000000000000000111111) (= (mask!11058 thiss!1504) #b00000000000000000000000001111111) (= (mask!11058 thiss!1504) #b00000000000000000000000011111111) (= (mask!11058 thiss!1504) #b00000000000000000000000111111111) (= (mask!11058 thiss!1504) #b00000000000000000000001111111111) (= (mask!11058 thiss!1504) #b00000000000000000000011111111111) (= (mask!11058 thiss!1504) #b00000000000000000000111111111111) (= (mask!11058 thiss!1504) #b00000000000000000001111111111111) (= (mask!11058 thiss!1504) #b00000000000000000011111111111111) (= (mask!11058 thiss!1504) #b00000000000000000111111111111111) (= (mask!11058 thiss!1504) #b00000000000000001111111111111111) (= (mask!11058 thiss!1504) #b00000000000000011111111111111111) (= (mask!11058 thiss!1504) #b00000000000000111111111111111111) (= (mask!11058 thiss!1504) #b00000000000001111111111111111111) (= (mask!11058 thiss!1504) #b00000000000011111111111111111111) (= (mask!11058 thiss!1504) #b00000000000111111111111111111111) (= (mask!11058 thiss!1504) #b00000000001111111111111111111111) (= (mask!11058 thiss!1504) #b00000000011111111111111111111111) (= (mask!11058 thiss!1504) #b00000000111111111111111111111111) (= (mask!11058 thiss!1504) #b00000001111111111111111111111111) (= (mask!11058 thiss!1504) #b00000011111111111111111111111111) (= (mask!11058 thiss!1504) #b00000111111111111111111111111111) (= (mask!11058 thiss!1504) #b00001111111111111111111111111111) (= (mask!11058 thiss!1504) #b00011111111111111111111111111111) (= (mask!11058 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11058 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!257968 d!61813))

(declare-fun d!61815 () Bool)

(assert (=> d!61815 (arrayContainsKey!0 lt!129842 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!130027 () Unit!8014)

(declare-fun choose!13 (array!12554 (_ BitVec 64) (_ BitVec 32)) Unit!8014)

(assert (=> d!61815 (= lt!130027 (choose!13 lt!129842 key!932 index!297))))

(assert (=> d!61815 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!61815 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129842 key!932 index!297) lt!130027)))

(declare-fun bs!9091 () Bool)

(assert (= bs!9091 d!61815))

(assert (=> bs!9091 m!273331))

(declare-fun m!273591 () Bool)

(assert (=> bs!9091 m!273591))

(assert (=> b!257968 d!61815))

(declare-fun d!61817 () Bool)

(declare-fun res!126274 () Bool)

(declare-fun e!167379 () Bool)

(assert (=> d!61817 (=> res!126274 e!167379)))

(assert (=> d!61817 (= res!126274 (= (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61817 (= (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 #b00000000000000000000000000000000) e!167379)))

(declare-fun b!258202 () Bool)

(declare-fun e!167380 () Bool)

(assert (=> b!258202 (= e!167379 e!167380)))

(declare-fun res!126275 () Bool)

(assert (=> b!258202 (=> (not res!126275) (not e!167380))))

(assert (=> b!258202 (= res!126275 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258203 () Bool)

(assert (=> b!258203 (= e!167380 (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61817 (not res!126274)) b!258202))

(assert (= (and b!258202 res!126275) b!258203))

(assert (=> d!61817 m!273435))

(declare-fun m!273593 () Bool)

(assert (=> b!258203 m!273593))

(assert (=> b!257968 d!61817))

(declare-fun d!61819 () Bool)

(declare-fun e!167383 () Bool)

(assert (=> d!61819 e!167383))

(declare-fun res!126278 () Bool)

(assert (=> d!61819 (=> (not res!126278) (not e!167383))))

(assert (=> d!61819 (= res!126278 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6291 (_keys!6931 thiss!1504)))))))

(declare-fun lt!130030 () Unit!8014)

(declare-fun choose!102 ((_ BitVec 64) array!12554 (_ BitVec 32) (_ BitVec 32)) Unit!8014)

(assert (=> d!61819 (= lt!130030 (choose!102 key!932 (_keys!6931 thiss!1504) index!297 (mask!11058 thiss!1504)))))

(assert (=> d!61819 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61819 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) index!297 (mask!11058 thiss!1504)) lt!130030)))

(declare-fun b!258206 () Bool)

(assert (=> b!258206 (= e!167383 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (mask!11058 thiss!1504)))))

(assert (= (and d!61819 res!126278) b!258206))

(declare-fun m!273595 () Bool)

(assert (=> d!61819 m!273595))

(assert (=> d!61819 m!273329))

(assert (=> b!258206 m!273319))

(declare-fun m!273597 () Bool)

(assert (=> b!258206 m!273597))

(assert (=> b!257968 d!61819))

(declare-fun b!258217 () Bool)

(declare-fun e!167392 () Bool)

(declare-fun contains!1880 (List!3832 (_ BitVec 64)) Bool)

(assert (=> b!258217 (= e!167392 (contains!1880 Nil!3829 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun d!61821 () Bool)

(declare-fun res!126285 () Bool)

(declare-fun e!167395 () Bool)

(assert (=> d!61821 (=> res!126285 e!167395)))

(assert (=> d!61821 (= res!126285 (bvsge #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(assert (=> d!61821 (= (arrayNoDuplicates!0 lt!129842 #b00000000000000000000000000000000 Nil!3829) e!167395)))

(declare-fun b!258218 () Bool)

(declare-fun e!167394 () Bool)

(declare-fun e!167393 () Bool)

(assert (=> b!258218 (= e!167394 e!167393)))

(declare-fun c!43728 () Bool)

(assert (=> b!258218 (= c!43728 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258219 () Bool)

(assert (=> b!258219 (= e!167395 e!167394)))

(declare-fun res!126286 () Bool)

(assert (=> b!258219 (=> (not res!126286) (not e!167394))))

(assert (=> b!258219 (= res!126286 (not e!167392))))

(declare-fun res!126287 () Bool)

(assert (=> b!258219 (=> (not res!126287) (not e!167392))))

(assert (=> b!258219 (= res!126287 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258220 () Bool)

(declare-fun call!24561 () Bool)

(assert (=> b!258220 (= e!167393 call!24561)))

(declare-fun bm!24558 () Bool)

(assert (=> bm!24558 (= call!24561 (arrayNoDuplicates!0 lt!129842 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43728 (Cons!3828 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) Nil!3829) Nil!3829)))))

(declare-fun b!258221 () Bool)

(assert (=> b!258221 (= e!167393 call!24561)))

(assert (= (and d!61821 (not res!126285)) b!258219))

(assert (= (and b!258219 res!126287) b!258217))

(assert (= (and b!258219 res!126286) b!258218))

(assert (= (and b!258218 c!43728) b!258221))

(assert (= (and b!258218 (not c!43728)) b!258220))

(assert (= (or b!258221 b!258220) bm!24558))

(assert (=> b!258217 m!273507))

(assert (=> b!258217 m!273507))

(declare-fun m!273599 () Bool)

(assert (=> b!258217 m!273599))

(assert (=> b!258218 m!273507))

(assert (=> b!258218 m!273507))

(assert (=> b!258218 m!273511))

(assert (=> b!258219 m!273507))

(assert (=> b!258219 m!273507))

(assert (=> b!258219 m!273511))

(assert (=> bm!24558 m!273507))

(declare-fun m!273601 () Bool)

(assert (=> bm!24558 m!273601))

(assert (=> b!257968 d!61821))

(declare-fun d!61823 () Bool)

(assert (=> d!61823 (= (arrayCountValidKeys!0 lt!129842 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!130033 () Unit!8014)

(declare-fun choose!2 (array!12554 (_ BitVec 32)) Unit!8014)

(assert (=> d!61823 (= lt!130033 (choose!2 lt!129842 index!297))))

(declare-fun e!167398 () Bool)

(assert (=> d!61823 e!167398))

(declare-fun res!126292 () Bool)

(assert (=> d!61823 (=> (not res!126292) (not e!167398))))

(assert (=> d!61823 (= res!126292 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6291 lt!129842))))))

(assert (=> d!61823 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129842 index!297) lt!130033)))

(declare-fun b!258226 () Bool)

(declare-fun res!126293 () Bool)

(assert (=> b!258226 (=> (not res!126293) (not e!167398))))

(assert (=> b!258226 (= res!126293 (validKeyInArray!0 (select (arr!5944 lt!129842) index!297)))))

(declare-fun b!258227 () Bool)

(assert (=> b!258227 (= e!167398 (bvslt (size!6291 lt!129842) #b01111111111111111111111111111111))))

(assert (= (and d!61823 res!126292) b!258226))

(assert (= (and b!258226 res!126293) b!258227))

(declare-fun m!273603 () Bool)

(assert (=> d!61823 m!273603))

(declare-fun m!273605 () Bool)

(assert (=> d!61823 m!273605))

(declare-fun m!273607 () Bool)

(assert (=> b!258226 m!273607))

(assert (=> b!258226 m!273607))

(declare-fun m!273609 () Bool)

(assert (=> b!258226 m!273609))

(assert (=> b!257968 d!61823))

(declare-fun b!258228 () Bool)

(declare-fun e!167400 () (_ BitVec 32))

(declare-fun e!167399 () (_ BitVec 32))

(assert (=> b!258228 (= e!167400 e!167399)))

(declare-fun c!43730 () Bool)

(assert (=> b!258228 (= c!43730 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258229 () Bool)

(declare-fun call!24562 () (_ BitVec 32))

(assert (=> b!258229 (= e!167399 call!24562)))

(declare-fun bm!24559 () Bool)

(assert (=> bm!24559 (= call!24562 (arrayCountValidKeys!0 lt!129842 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258230 () Bool)

(assert (=> b!258230 (= e!167400 #b00000000000000000000000000000000)))

(declare-fun b!258231 () Bool)

(assert (=> b!258231 (= e!167399 (bvadd #b00000000000000000000000000000001 call!24562))))

(declare-fun d!61825 () Bool)

(declare-fun lt!130034 () (_ BitVec 32))

(assert (=> d!61825 (and (bvsge lt!130034 #b00000000000000000000000000000000) (bvsle lt!130034 (bvsub (size!6291 lt!129842) #b00000000000000000000000000000000)))))

(assert (=> d!61825 (= lt!130034 e!167400)))

(declare-fun c!43729 () Bool)

(assert (=> d!61825 (= c!43729 (bvsge #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61825 (and (bvsle #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6291 (_keys!6931 thiss!1504)) (size!6291 lt!129842)))))

(assert (=> d!61825 (= (arrayCountValidKeys!0 lt!129842 #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) lt!130034)))

(assert (= (and d!61825 c!43729) b!258230))

(assert (= (and d!61825 (not c!43729)) b!258228))

(assert (= (and b!258228 c!43730) b!258231))

(assert (= (and b!258228 (not c!43730)) b!258229))

(assert (= (or b!258231 b!258229) bm!24559))

(assert (=> b!258228 m!273507))

(assert (=> b!258228 m!273507))

(assert (=> b!258228 m!273511))

(declare-fun m!273611 () Bool)

(assert (=> bm!24559 m!273611))

(assert (=> b!257968 d!61825))

(declare-fun b!258232 () Bool)

(declare-fun e!167402 () (_ BitVec 32))

(declare-fun e!167401 () (_ BitVec 32))

(assert (=> b!258232 (= e!167402 e!167401)))

(declare-fun c!43732 () Bool)

(assert (=> b!258232 (= c!43732 (validKeyInArray!0 (select (arr!5944 lt!129842) index!297)))))

(declare-fun b!258233 () Bool)

(declare-fun call!24563 () (_ BitVec 32))

(assert (=> b!258233 (= e!167401 call!24563)))

(declare-fun bm!24560 () Bool)

(assert (=> bm!24560 (= call!24563 (arrayCountValidKeys!0 lt!129842 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!258234 () Bool)

(assert (=> b!258234 (= e!167402 #b00000000000000000000000000000000)))

(declare-fun b!258235 () Bool)

(assert (=> b!258235 (= e!167401 (bvadd #b00000000000000000000000000000001 call!24563))))

(declare-fun d!61827 () Bool)

(declare-fun lt!130035 () (_ BitVec 32))

(assert (=> d!61827 (and (bvsge lt!130035 #b00000000000000000000000000000000) (bvsle lt!130035 (bvsub (size!6291 lt!129842) index!297)))))

(assert (=> d!61827 (= lt!130035 e!167402)))

(declare-fun c!43731 () Bool)

(assert (=> d!61827 (= c!43731 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!61827 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6291 lt!129842)))))

(assert (=> d!61827 (= (arrayCountValidKeys!0 lt!129842 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!130035)))

(assert (= (and d!61827 c!43731) b!258234))

(assert (= (and d!61827 (not c!43731)) b!258232))

(assert (= (and b!258232 c!43732) b!258235))

(assert (= (and b!258232 (not c!43732)) b!258233))

(assert (= (or b!258235 b!258233) bm!24560))

(assert (=> b!258232 m!273607))

(assert (=> b!258232 m!273607))

(assert (=> b!258232 m!273609))

(declare-fun m!273613 () Bool)

(assert (=> bm!24560 m!273613))

(assert (=> b!257968 d!61827))

(declare-fun b!258244 () Bool)

(declare-fun e!167409 () Bool)

(declare-fun call!24566 () Bool)

(assert (=> b!258244 (= e!167409 call!24566)))

(declare-fun d!61829 () Bool)

(declare-fun res!126299 () Bool)

(declare-fun e!167411 () Bool)

(assert (=> d!61829 (=> res!126299 e!167411)))

(assert (=> d!61829 (= res!126299 (bvsge #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(assert (=> d!61829 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129842 (mask!11058 thiss!1504)) e!167411)))

(declare-fun bm!24563 () Bool)

(assert (=> bm!24563 (= call!24566 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!129842 (mask!11058 thiss!1504)))))

(declare-fun b!258245 () Bool)

(declare-fun e!167410 () Bool)

(assert (=> b!258245 (= e!167409 e!167410)))

(declare-fun lt!130043 () (_ BitVec 64))

(assert (=> b!258245 (= lt!130043 (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))

(declare-fun lt!130044 () Unit!8014)

(assert (=> b!258245 (= lt!130044 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129842 lt!130043 #b00000000000000000000000000000000))))

(assert (=> b!258245 (arrayContainsKey!0 lt!129842 lt!130043 #b00000000000000000000000000000000)))

(declare-fun lt!130042 () Unit!8014)

(assert (=> b!258245 (= lt!130042 lt!130044)))

(declare-fun res!126298 () Bool)

(assert (=> b!258245 (= res!126298 (= (seekEntryOrOpen!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) lt!129842 (mask!11058 thiss!1504)) (Found!1184 #b00000000000000000000000000000000)))))

(assert (=> b!258245 (=> (not res!126298) (not e!167410))))

(declare-fun b!258246 () Bool)

(assert (=> b!258246 (= e!167411 e!167409)))

(declare-fun c!43735 () Bool)

(assert (=> b!258246 (= c!43735 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258247 () Bool)

(assert (=> b!258247 (= e!167410 call!24566)))

(assert (= (and d!61829 (not res!126299)) b!258246))

(assert (= (and b!258246 c!43735) b!258245))

(assert (= (and b!258246 (not c!43735)) b!258244))

(assert (= (and b!258245 res!126298) b!258247))

(assert (= (or b!258247 b!258244) bm!24563))

(declare-fun m!273615 () Bool)

(assert (=> bm!24563 m!273615))

(assert (=> b!258245 m!273507))

(declare-fun m!273617 () Bool)

(assert (=> b!258245 m!273617))

(declare-fun m!273619 () Bool)

(assert (=> b!258245 m!273619))

(assert (=> b!258245 m!273507))

(declare-fun m!273621 () Bool)

(assert (=> b!258245 m!273621))

(assert (=> b!258246 m!273507))

(assert (=> b!258246 m!273507))

(assert (=> b!258246 m!273511))

(assert (=> b!257968 d!61829))

(declare-fun d!61831 () Bool)

(declare-fun e!167414 () Bool)

(assert (=> d!61831 e!167414))

(declare-fun res!126302 () Bool)

(assert (=> d!61831 (=> (not res!126302) (not e!167414))))

(assert (=> d!61831 (= res!126302 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6291 (_keys!6931 thiss!1504)))))))

(declare-fun lt!130047 () Unit!8014)

(declare-fun choose!41 (array!12554 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3832) Unit!8014)

(assert (=> d!61831 (= lt!130047 (choose!41 (_keys!6931 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3829))))

(assert (=> d!61831 (bvslt (size!6291 (_keys!6931 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61831 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6931 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3829) lt!130047)))

(declare-fun b!258250 () Bool)

(assert (=> b!258250 (= e!167414 (arrayNoDuplicates!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000000 Nil!3829))))

(assert (= (and d!61831 res!126302) b!258250))

(declare-fun m!273623 () Bool)

(assert (=> d!61831 m!273623))

(assert (=> b!258250 m!273319))

(declare-fun m!273625 () Bool)

(assert (=> b!258250 m!273625))

(assert (=> b!257968 d!61831))

(declare-fun d!61833 () Bool)

(declare-fun res!126303 () Bool)

(declare-fun e!167415 () Bool)

(assert (=> d!61833 (=> res!126303 e!167415)))

(assert (=> d!61833 (= res!126303 (= (select (arr!5944 lt!129842) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61833 (= (arrayContainsKey!0 lt!129842 key!932 #b00000000000000000000000000000000) e!167415)))

(declare-fun b!258251 () Bool)

(declare-fun e!167416 () Bool)

(assert (=> b!258251 (= e!167415 e!167416)))

(declare-fun res!126304 () Bool)

(assert (=> b!258251 (=> (not res!126304) (not e!167416))))

(assert (=> b!258251 (= res!126304 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 lt!129842)))))

(declare-fun b!258252 () Bool)

(assert (=> b!258252 (= e!167416 (arrayContainsKey!0 lt!129842 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61833 (not res!126303)) b!258251))

(assert (= (and b!258251 res!126304) b!258252))

(assert (=> d!61833 m!273507))

(declare-fun m!273627 () Bool)

(assert (=> b!258252 m!273627))

(assert (=> b!257968 d!61833))

(declare-fun call!24571 () Bool)

(declare-fun lt!130053 () SeekEntryResult!1184)

(declare-fun bm!24568 () Bool)

(declare-fun c!43741 () Bool)

(assert (=> bm!24568 (= call!24571 (inRange!0 (ite c!43741 (index!6906 lt!130053) (index!6909 lt!130053)) (mask!11058 thiss!1504)))))

(declare-fun b!258269 () Bool)

(declare-fun e!167425 () Bool)

(declare-fun e!167426 () Bool)

(assert (=> b!258269 (= e!167425 e!167426)))

(declare-fun c!43740 () Bool)

(assert (=> b!258269 (= c!43740 ((_ is MissingVacant!1184) lt!130053))))

(declare-fun b!258270 () Bool)

(declare-fun e!167427 () Bool)

(declare-fun call!24572 () Bool)

(assert (=> b!258270 (= e!167427 (not call!24572))))

(declare-fun b!258271 () Bool)

(declare-fun e!167428 () Bool)

(assert (=> b!258271 (= e!167425 e!167428)))

(declare-fun res!126315 () Bool)

(assert (=> b!258271 (= res!126315 call!24571)))

(assert (=> b!258271 (=> (not res!126315) (not e!167428))))

(declare-fun b!258272 () Bool)

(assert (=> b!258272 (= e!167426 ((_ is Undefined!1184) lt!130053))))

(declare-fun b!258273 () Bool)

(declare-fun res!126316 () Bool)

(assert (=> b!258273 (=> (not res!126316) (not e!167427))))

(assert (=> b!258273 (= res!126316 call!24571)))

(assert (=> b!258273 (= e!167426 e!167427)))

(declare-fun d!61835 () Bool)

(assert (=> d!61835 e!167425))

(assert (=> d!61835 (= c!43741 ((_ is MissingZero!1184) lt!130053))))

(assert (=> d!61835 (= lt!130053 (seekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(declare-fun lt!130052 () Unit!8014)

(declare-fun choose!1253 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 64) Int) Unit!8014)

(assert (=> d!61835 (= lt!130052 (choose!1253 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)))))

(assert (=> d!61835 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61835 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!437 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)) lt!130052)))

(declare-fun b!258274 () Bool)

(declare-fun res!126313 () Bool)

(assert (=> b!258274 (=> (not res!126313) (not e!167427))))

(assert (=> b!258274 (= res!126313 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6909 lt!130053)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258274 (and (bvsge (index!6909 lt!130053) #b00000000000000000000000000000000) (bvslt (index!6909 lt!130053) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258275 () Bool)

(assert (=> b!258275 (and (bvsge (index!6906 lt!130053) #b00000000000000000000000000000000) (bvslt (index!6906 lt!130053) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun res!126314 () Bool)

(assert (=> b!258275 (= res!126314 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6906 lt!130053)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258275 (=> (not res!126314) (not e!167428))))

(declare-fun bm!24569 () Bool)

(assert (=> bm!24569 (= call!24572 (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258276 () Bool)

(assert (=> b!258276 (= e!167428 (not call!24572))))

(assert (= (and d!61835 c!43741) b!258271))

(assert (= (and d!61835 (not c!43741)) b!258269))

(assert (= (and b!258271 res!126315) b!258275))

(assert (= (and b!258275 res!126314) b!258276))

(assert (= (and b!258269 c!43740) b!258273))

(assert (= (and b!258269 (not c!43740)) b!258272))

(assert (= (and b!258273 res!126316) b!258274))

(assert (= (and b!258274 res!126313) b!258270))

(assert (= (or b!258271 b!258273) bm!24568))

(assert (= (or b!258276 b!258270) bm!24569))

(declare-fun m!273629 () Bool)

(assert (=> b!258274 m!273629))

(assert (=> d!61835 m!273345))

(declare-fun m!273631 () Bool)

(assert (=> d!61835 m!273631))

(assert (=> d!61835 m!273329))

(declare-fun m!273633 () Bool)

(assert (=> b!258275 m!273633))

(assert (=> bm!24569 m!273303))

(declare-fun m!273635 () Bool)

(assert (=> bm!24568 m!273635))

(assert (=> b!257982 d!61835))

(declare-fun d!61837 () Bool)

(assert (=> d!61837 (= (inRange!0 (ite c!43668 (index!6906 lt!129850) (index!6909 lt!129850)) (mask!11058 thiss!1504)) (and (bvsge (ite c!43668 (index!6906 lt!129850) (index!6909 lt!129850)) #b00000000000000000000000000000000) (bvslt (ite c!43668 (index!6906 lt!129850) (index!6909 lt!129850)) (bvadd (mask!11058 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24517 d!61837))

(declare-fun d!61839 () Bool)

(assert (=> d!61839 (contains!1877 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) key!932)))

(declare-fun lt!130056 () Unit!8014)

(declare-fun choose!1254 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 64) (_ BitVec 32) Int) Unit!8014)

(assert (=> d!61839 (= lt!130056 (choose!1254 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(assert (=> d!61839 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61839 (= (lemmaArrayContainsKeyThenInListMap!243 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) lt!130056)))

(declare-fun bs!9092 () Bool)

(assert (= bs!9092 d!61839))

(assert (=> bs!9092 m!273353))

(assert (=> bs!9092 m!273353))

(declare-fun m!273637 () Bool)

(assert (=> bs!9092 m!273637))

(declare-fun m!273639 () Bool)

(assert (=> bs!9092 m!273639))

(assert (=> bs!9092 m!273329))

(assert (=> b!257972 d!61839))

(declare-fun d!61841 () Bool)

(declare-fun res!126323 () Bool)

(declare-fun e!167431 () Bool)

(assert (=> d!61841 (=> (not res!126323) (not e!167431))))

(declare-fun simpleValid!277 (LongMapFixedSize!3816) Bool)

(assert (=> d!61841 (= res!126323 (simpleValid!277 thiss!1504))))

(assert (=> d!61841 (= (valid!1482 thiss!1504) e!167431)))

(declare-fun b!258283 () Bool)

(declare-fun res!126324 () Bool)

(assert (=> b!258283 (=> (not res!126324) (not e!167431))))

(assert (=> b!258283 (= res!126324 (= (arrayCountValidKeys!0 (_keys!6931 thiss!1504) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (_size!1957 thiss!1504)))))

(declare-fun b!258284 () Bool)

(declare-fun res!126325 () Bool)

(assert (=> b!258284 (=> (not res!126325) (not e!167431))))

(assert (=> b!258284 (= res!126325 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(declare-fun b!258285 () Bool)

(assert (=> b!258285 (= e!167431 (arrayNoDuplicates!0 (_keys!6931 thiss!1504) #b00000000000000000000000000000000 Nil!3829))))

(assert (= (and d!61841 res!126323) b!258283))

(assert (= (and b!258283 res!126324) b!258284))

(assert (= (and b!258284 res!126325) b!258285))

(declare-fun m!273641 () Bool)

(assert (=> d!61841 m!273641))

(assert (=> b!258283 m!273321))

(declare-fun m!273643 () Bool)

(assert (=> b!258284 m!273643))

(declare-fun m!273645 () Bool)

(assert (=> b!258285 m!273645))

(assert (=> start!24670 d!61841))

(declare-fun d!61843 () Bool)

(declare-fun e!167434 () Bool)

(assert (=> d!61843 e!167434))

(declare-fun res!126330 () Bool)

(assert (=> d!61843 (=> (not res!126330) (not e!167434))))

(declare-fun lt!130062 () SeekEntryResult!1184)

(assert (=> d!61843 (= res!126330 ((_ is Found!1184) lt!130062))))

(assert (=> d!61843 (= lt!130062 (seekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(declare-fun lt!130061 () Unit!8014)

(declare-fun choose!1255 (array!12554 array!12552 (_ BitVec 32) (_ BitVec 32) V!8451 V!8451 (_ BitVec 64) Int) Unit!8014)

(assert (=> d!61843 (= lt!130061 (choose!1255 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)))))

(assert (=> d!61843 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61843 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!437 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)) lt!130061)))

(declare-fun b!258290 () Bool)

(declare-fun res!126331 () Bool)

(assert (=> b!258290 (=> (not res!126331) (not e!167434))))

(assert (=> b!258290 (= res!126331 (inRange!0 (index!6907 lt!130062) (mask!11058 thiss!1504)))))

(declare-fun b!258291 () Bool)

(assert (=> b!258291 (= e!167434 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6907 lt!130062)) key!932))))

(assert (=> b!258291 (and (bvsge (index!6907 lt!130062) #b00000000000000000000000000000000) (bvslt (index!6907 lt!130062) (size!6291 (_keys!6931 thiss!1504))))))

(assert (= (and d!61843 res!126330) b!258290))

(assert (= (and b!258290 res!126331) b!258291))

(assert (=> d!61843 m!273345))

(declare-fun m!273647 () Bool)

(assert (=> d!61843 m!273647))

(assert (=> d!61843 m!273329))

(declare-fun m!273649 () Bool)

(assert (=> b!258290 m!273649))

(declare-fun m!273651 () Bool)

(assert (=> b!258291 m!273651))

(assert (=> b!257970 d!61843))

(assert (=> bm!24518 d!61817))

(declare-fun d!61845 () Bool)

(assert (=> d!61845 (= (array_inv!3919 (_keys!6931 thiss!1504)) (bvsge (size!6291 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257979 d!61845))

(declare-fun d!61847 () Bool)

(assert (=> d!61847 (= (array_inv!3920 (_values!4744 thiss!1504)) (bvsge (size!6290 (_values!4744 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257979 d!61847))

(declare-fun condMapEmpty!11250 () Bool)

(declare-fun mapDefault!11250 () ValueCell!2958)

(assert (=> mapNonEmpty!11244 (= condMapEmpty!11250 (= mapRest!11244 ((as const (Array (_ BitVec 32) ValueCell!2958)) mapDefault!11250)))))

(declare-fun e!167439 () Bool)

(declare-fun mapRes!11250 () Bool)

(assert (=> mapNonEmpty!11244 (= tp!23535 (and e!167439 mapRes!11250))))

(declare-fun b!258299 () Bool)

(assert (=> b!258299 (= e!167439 tp_is_empty!6603)))

(declare-fun mapNonEmpty!11250 () Bool)

(declare-fun tp!23544 () Bool)

(declare-fun e!167440 () Bool)

(assert (=> mapNonEmpty!11250 (= mapRes!11250 (and tp!23544 e!167440))))

(declare-fun mapRest!11250 () (Array (_ BitVec 32) ValueCell!2958))

(declare-fun mapValue!11250 () ValueCell!2958)

(declare-fun mapKey!11250 () (_ BitVec 32))

(assert (=> mapNonEmpty!11250 (= mapRest!11244 (store mapRest!11250 mapKey!11250 mapValue!11250))))

(declare-fun mapIsEmpty!11250 () Bool)

(assert (=> mapIsEmpty!11250 mapRes!11250))

(declare-fun b!258298 () Bool)

(assert (=> b!258298 (= e!167440 tp_is_empty!6603)))

(assert (= (and mapNonEmpty!11244 condMapEmpty!11250) mapIsEmpty!11250))

(assert (= (and mapNonEmpty!11244 (not condMapEmpty!11250)) mapNonEmpty!11250))

(assert (= (and mapNonEmpty!11250 ((_ is ValueCellFull!2958) mapValue!11250)) b!258298))

(assert (= (and mapNonEmpty!11244 ((_ is ValueCellFull!2958) mapDefault!11250)) b!258299))

(declare-fun m!273653 () Bool)

(assert (=> mapNonEmpty!11250 m!273653))

(declare-fun b_lambda!8229 () Bool)

(assert (= b_lambda!8227 (or (and b!257979 b_free!6741) b_lambda!8229)))

(declare-fun b_lambda!8231 () Bool)

(assert (= b_lambda!8225 (or (and b!257979 b_free!6741) b_lambda!8231)))

(check-sat (not b!258290) (not b!258217) (not b!258163) (not bm!24542) (not b!258181) (not bm!24569) (not b!258203) (not b!258151) (not b!258284) (not b!258228) (not b!258118) (not bm!24568) (not d!61807) (not bm!24548) (not b!258161) (not d!61835) b_and!13839 (not d!61799) (not b!258245) (not b!258116) (not bm!24550) (not b!258219) (not d!61823) (not b!258155) (not d!61841) (not b_lambda!8231) (not b!258147) (not b!258122) (not b!258173) (not b!258197) (not b_next!6741) (not b!258120) (not bm!24543) (not b!258182) (not d!61801) (not bm!24559) (not d!61839) (not b!258110) (not bm!24558) (not bm!24547) (not bm!24541) (not d!61831) (not b!258252) (not b!258218) (not b!258159) (not b!258226) (not b!258232) (not b!258206) tp_is_empty!6603 (not b!258174) (not b!258283) (not b!258060) (not d!61811) (not b!258285) (not bm!24555) (not bm!24563) (not d!61843) (not d!61819) (not b!258250) (not mapNonEmpty!11250) (not b!258246) (not d!61803) (not b!258106) (not b!258114) (not d!61797) (not d!61815) (not b!258191) (not bm!24549) (not b_lambda!8229) (not b!258058) (not b!258149) (not bm!24560) (not b!258108) (not b!258157) (not d!61805) (not b!258143) (not bm!24540) (not b!258176))
(check-sat b_and!13839 (not b_next!6741))
(get-model)

(declare-fun d!61849 () Bool)

(declare-fun res!126332 () Bool)

(declare-fun e!167441 () Bool)

(assert (=> d!61849 (=> res!126332 e!167441)))

(assert (=> d!61849 (= res!126332 (= (select (arr!5944 (_keys!6931 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!61849 (= (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!167441)))

(declare-fun b!258300 () Bool)

(declare-fun e!167442 () Bool)

(assert (=> b!258300 (= e!167441 e!167442)))

(declare-fun res!126333 () Bool)

(assert (=> b!258300 (=> (not res!126333) (not e!167442))))

(assert (=> b!258300 (= res!126333 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258301 () Bool)

(assert (=> b!258301 (= e!167442 (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!61849 (not res!126332)) b!258300))

(assert (= (and b!258300 res!126333) b!258301))

(declare-fun m!273655 () Bool)

(assert (=> d!61849 m!273655))

(declare-fun m!273657 () Bool)

(assert (=> b!258301 m!273657))

(assert (=> b!258203 d!61849))

(declare-fun d!61851 () Bool)

(assert (=> d!61851 (contains!1877 (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))) lt!129956)))

(declare-fun lt!130065 () Unit!8014)

(declare-fun choose!1256 (ListLongMap!3855 (_ BitVec 64) V!8451 (_ BitVec 64)) Unit!8014)

(assert (=> d!61851 (= lt!130065 (choose!1256 lt!129960 lt!129969 (zeroValue!4602 thiss!1504) lt!129956))))

(assert (=> d!61851 (contains!1877 lt!129960 lt!129956)))

(assert (=> d!61851 (= (addStillContains!231 lt!129960 lt!129969 (zeroValue!4602 thiss!1504) lt!129956) lt!130065)))

(declare-fun bs!9093 () Bool)

(assert (= bs!9093 d!61851))

(assert (=> bs!9093 m!273457))

(assert (=> bs!9093 m!273457))

(assert (=> bs!9093 m!273459))

(declare-fun m!273659 () Bool)

(assert (=> bs!9093 m!273659))

(declare-fun m!273661 () Bool)

(assert (=> bs!9093 m!273661))

(assert (=> b!258116 d!61851))

(declare-fun d!61853 () Bool)

(assert (=> d!61853 (= (apply!255 (+!687 lt!129968 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))) lt!129958) (apply!255 lt!129968 lt!129958))))

(declare-fun lt!130068 () Unit!8014)

(declare-fun choose!1257 (ListLongMap!3855 (_ BitVec 64) V!8451 (_ BitVec 64)) Unit!8014)

(assert (=> d!61853 (= lt!130068 (choose!1257 lt!129968 lt!129957 (zeroValue!4602 thiss!1504) lt!129958))))

(declare-fun e!167445 () Bool)

(assert (=> d!61853 e!167445))

(declare-fun res!126336 () Bool)

(assert (=> d!61853 (=> (not res!126336) (not e!167445))))

(assert (=> d!61853 (= res!126336 (contains!1877 lt!129968 lt!129958))))

(assert (=> d!61853 (= (addApplyDifferent!231 lt!129968 lt!129957 (zeroValue!4602 thiss!1504) lt!129958) lt!130068)))

(declare-fun b!258306 () Bool)

(assert (=> b!258306 (= e!167445 (not (= lt!129958 lt!129957)))))

(assert (= (and d!61853 res!126336) b!258306))

(assert (=> d!61853 m!273461))

(assert (=> d!61853 m!273463))

(declare-fun m!273663 () Bool)

(assert (=> d!61853 m!273663))

(declare-fun m!273665 () Bool)

(assert (=> d!61853 m!273665))

(assert (=> d!61853 m!273461))

(assert (=> d!61853 m!273449))

(assert (=> b!258116 d!61853))

(declare-fun d!61855 () Bool)

(assert (=> d!61855 (= (apply!255 (+!687 lt!129964 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))) lt!129962) (apply!255 lt!129964 lt!129962))))

(declare-fun lt!130069 () Unit!8014)

(assert (=> d!61855 (= lt!130069 (choose!1257 lt!129964 lt!129961 (minValue!4602 thiss!1504) lt!129962))))

(declare-fun e!167446 () Bool)

(assert (=> d!61855 e!167446))

(declare-fun res!126337 () Bool)

(assert (=> d!61855 (=> (not res!126337) (not e!167446))))

(assert (=> d!61855 (= res!126337 (contains!1877 lt!129964 lt!129962))))

(assert (=> d!61855 (= (addApplyDifferent!231 lt!129964 lt!129961 (minValue!4602 thiss!1504) lt!129962) lt!130069)))

(declare-fun b!258307 () Bool)

(assert (=> b!258307 (= e!167446 (not (= lt!129962 lt!129961)))))

(assert (= (and d!61855 res!126337) b!258307))

(assert (=> d!61855 m!273453))

(assert (=> d!61855 m!273455))

(declare-fun m!273667 () Bool)

(assert (=> d!61855 m!273667))

(declare-fun m!273669 () Bool)

(assert (=> d!61855 m!273669))

(assert (=> d!61855 m!273453))

(assert (=> d!61855 m!273445))

(assert (=> b!258116 d!61855))

(declare-fun d!61857 () Bool)

(declare-fun get!3058 (Option!318) V!8451)

(assert (=> d!61857 (= (apply!255 (+!687 lt!129964 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))) lt!129962) (get!3058 (getValueByKey!312 (toList!1943 (+!687 lt!129964 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504)))) lt!129962)))))

(declare-fun bs!9094 () Bool)

(assert (= bs!9094 d!61857))

(declare-fun m!273671 () Bool)

(assert (=> bs!9094 m!273671))

(assert (=> bs!9094 m!273671))

(declare-fun m!273673 () Bool)

(assert (=> bs!9094 m!273673))

(assert (=> b!258116 d!61857))

(declare-fun d!61859 () Bool)

(declare-fun e!167447 () Bool)

(assert (=> d!61859 e!167447))

(declare-fun res!126338 () Bool)

(assert (=> d!61859 (=> (not res!126338) (not e!167447))))

(declare-fun lt!130073 () ListLongMap!3855)

(assert (=> d!61859 (= res!126338 (contains!1877 lt!130073 (_1!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))))))

(declare-fun lt!130072 () List!3831)

(assert (=> d!61859 (= lt!130073 (ListLongMap!3856 lt!130072))))

(declare-fun lt!130070 () Unit!8014)

(declare-fun lt!130071 () Unit!8014)

(assert (=> d!61859 (= lt!130070 lt!130071)))

(assert (=> d!61859 (= (getValueByKey!312 lt!130072 (_1!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61859 (= lt!130071 (lemmaContainsTupThenGetReturnValue!170 lt!130072 (_1!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61859 (= lt!130072 (insertStrictlySorted!172 (toList!1943 lt!129960) (_1!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61859 (= (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))) lt!130073)))

(declare-fun b!258308 () Bool)

(declare-fun res!126339 () Bool)

(assert (=> b!258308 (=> (not res!126339) (not e!167447))))

(assert (=> b!258308 (= res!126339 (= (getValueByKey!312 (toList!1943 lt!130073) (_1!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))))))))

(declare-fun b!258309 () Bool)

(assert (=> b!258309 (= e!167447 (contains!1879 (toList!1943 lt!130073) (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))))))

(assert (= (and d!61859 res!126338) b!258308))

(assert (= (and b!258308 res!126339) b!258309))

(declare-fun m!273675 () Bool)

(assert (=> d!61859 m!273675))

(declare-fun m!273677 () Bool)

(assert (=> d!61859 m!273677))

(declare-fun m!273679 () Bool)

(assert (=> d!61859 m!273679))

(declare-fun m!273681 () Bool)

(assert (=> d!61859 m!273681))

(declare-fun m!273683 () Bool)

(assert (=> b!258308 m!273683))

(declare-fun m!273685 () Bool)

(assert (=> b!258309 m!273685))

(assert (=> b!258116 d!61859))

(declare-fun d!61861 () Bool)

(assert (=> d!61861 (= (apply!255 lt!129953 lt!129967) (get!3058 (getValueByKey!312 (toList!1943 lt!129953) lt!129967)))))

(declare-fun bs!9095 () Bool)

(assert (= bs!9095 d!61861))

(declare-fun m!273687 () Bool)

(assert (=> bs!9095 m!273687))

(assert (=> bs!9095 m!273687))

(declare-fun m!273689 () Bool)

(assert (=> bs!9095 m!273689))

(assert (=> b!258116 d!61861))

(declare-fun d!61863 () Bool)

(assert (=> d!61863 (= (apply!255 lt!129964 lt!129962) (get!3058 (getValueByKey!312 (toList!1943 lt!129964) lt!129962)))))

(declare-fun bs!9096 () Bool)

(assert (= bs!9096 d!61863))

(declare-fun m!273691 () Bool)

(assert (=> bs!9096 m!273691))

(assert (=> bs!9096 m!273691))

(declare-fun m!273693 () Bool)

(assert (=> bs!9096 m!273693))

(assert (=> b!258116 d!61863))

(declare-fun d!61865 () Bool)

(declare-fun e!167448 () Bool)

(assert (=> d!61865 e!167448))

(declare-fun res!126340 () Bool)

(assert (=> d!61865 (=> res!126340 e!167448)))

(declare-fun lt!130074 () Bool)

(assert (=> d!61865 (= res!126340 (not lt!130074))))

(declare-fun lt!130077 () Bool)

(assert (=> d!61865 (= lt!130074 lt!130077)))

(declare-fun lt!130075 () Unit!8014)

(declare-fun e!167449 () Unit!8014)

(assert (=> d!61865 (= lt!130075 e!167449)))

(declare-fun c!43742 () Bool)

(assert (=> d!61865 (= c!43742 lt!130077)))

(assert (=> d!61865 (= lt!130077 (containsKey!304 (toList!1943 (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))) lt!129956))))

(assert (=> d!61865 (= (contains!1877 (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504))) lt!129956) lt!130074)))

(declare-fun b!258310 () Bool)

(declare-fun lt!130076 () Unit!8014)

(assert (=> b!258310 (= e!167449 lt!130076)))

(assert (=> b!258310 (= lt!130076 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))) lt!129956))))

(assert (=> b!258310 (isDefined!254 (getValueByKey!312 (toList!1943 (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))) lt!129956))))

(declare-fun b!258311 () Bool)

(declare-fun Unit!8026 () Unit!8014)

(assert (=> b!258311 (= e!167449 Unit!8026)))

(declare-fun b!258312 () Bool)

(assert (=> b!258312 (= e!167448 (isDefined!254 (getValueByKey!312 (toList!1943 (+!687 lt!129960 (tuple2!4929 lt!129969 (zeroValue!4602 thiss!1504)))) lt!129956)))))

(assert (= (and d!61865 c!43742) b!258310))

(assert (= (and d!61865 (not c!43742)) b!258311))

(assert (= (and d!61865 (not res!126340)) b!258312))

(declare-fun m!273695 () Bool)

(assert (=> d!61865 m!273695))

(declare-fun m!273697 () Bool)

(assert (=> b!258310 m!273697))

(declare-fun m!273699 () Bool)

(assert (=> b!258310 m!273699))

(assert (=> b!258310 m!273699))

(declare-fun m!273701 () Bool)

(assert (=> b!258310 m!273701))

(assert (=> b!258312 m!273699))

(assert (=> b!258312 m!273699))

(assert (=> b!258312 m!273701))

(assert (=> b!258116 d!61865))

(declare-fun d!61867 () Bool)

(declare-fun e!167450 () Bool)

(assert (=> d!61867 e!167450))

(declare-fun res!126341 () Bool)

(assert (=> d!61867 (=> (not res!126341) (not e!167450))))

(declare-fun lt!130081 () ListLongMap!3855)

(assert (=> d!61867 (= res!126341 (contains!1877 lt!130081 (_1!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504)))))))

(declare-fun lt!130080 () List!3831)

(assert (=> d!61867 (= lt!130081 (ListLongMap!3856 lt!130080))))

(declare-fun lt!130078 () Unit!8014)

(declare-fun lt!130079 () Unit!8014)

(assert (=> d!61867 (= lt!130078 lt!130079)))

(assert (=> d!61867 (= (getValueByKey!312 lt!130080 (_1!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504)))))))

(assert (=> d!61867 (= lt!130079 (lemmaContainsTupThenGetReturnValue!170 lt!130080 (_1!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504)))))))

(assert (=> d!61867 (= lt!130080 (insertStrictlySorted!172 (toList!1943 lt!129953) (_1!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504)))))))

(assert (=> d!61867 (= (+!687 lt!129953 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))) lt!130081)))

(declare-fun b!258313 () Bool)

(declare-fun res!126342 () Bool)

(assert (=> b!258313 (=> (not res!126342) (not e!167450))))

(assert (=> b!258313 (= res!126342 (= (getValueByKey!312 (toList!1943 lt!130081) (_1!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))))))))

(declare-fun b!258314 () Bool)

(assert (=> b!258314 (= e!167450 (contains!1879 (toList!1943 lt!130081) (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))))))

(assert (= (and d!61867 res!126341) b!258313))

(assert (= (and b!258313 res!126342) b!258314))

(declare-fun m!273703 () Bool)

(assert (=> d!61867 m!273703))

(declare-fun m!273705 () Bool)

(assert (=> d!61867 m!273705))

(declare-fun m!273707 () Bool)

(assert (=> d!61867 m!273707))

(declare-fun m!273709 () Bool)

(assert (=> d!61867 m!273709))

(declare-fun m!273711 () Bool)

(assert (=> b!258313 m!273711))

(declare-fun m!273713 () Bool)

(assert (=> b!258314 m!273713))

(assert (=> b!258116 d!61867))

(declare-fun d!61869 () Bool)

(assert (=> d!61869 (= (apply!255 (+!687 lt!129968 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))) lt!129958) (get!3058 (getValueByKey!312 (toList!1943 (+!687 lt!129968 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504)))) lt!129958)))))

(declare-fun bs!9097 () Bool)

(assert (= bs!9097 d!61869))

(declare-fun m!273715 () Bool)

(assert (=> bs!9097 m!273715))

(assert (=> bs!9097 m!273715))

(declare-fun m!273717 () Bool)

(assert (=> bs!9097 m!273717))

(assert (=> b!258116 d!61869))

(declare-fun d!61871 () Bool)

(assert (=> d!61871 (= (apply!255 lt!129968 lt!129958) (get!3058 (getValueByKey!312 (toList!1943 lt!129968) lt!129958)))))

(declare-fun bs!9098 () Bool)

(assert (= bs!9098 d!61871))

(declare-fun m!273719 () Bool)

(assert (=> bs!9098 m!273719))

(assert (=> bs!9098 m!273719))

(declare-fun m!273721 () Bool)

(assert (=> bs!9098 m!273721))

(assert (=> b!258116 d!61871))

(declare-fun d!61873 () Bool)

(assert (=> d!61873 (= (apply!255 (+!687 lt!129953 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))) lt!129967) (get!3058 (getValueByKey!312 (toList!1943 (+!687 lt!129953 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504)))) lt!129967)))))

(declare-fun bs!9099 () Bool)

(assert (= bs!9099 d!61873))

(declare-fun m!273723 () Bool)

(assert (=> bs!9099 m!273723))

(assert (=> bs!9099 m!273723))

(declare-fun m!273725 () Bool)

(assert (=> bs!9099 m!273725))

(assert (=> b!258116 d!61873))

(declare-fun d!61875 () Bool)

(declare-fun e!167451 () Bool)

(assert (=> d!61875 e!167451))

(declare-fun res!126343 () Bool)

(assert (=> d!61875 (=> (not res!126343) (not e!167451))))

(declare-fun lt!130085 () ListLongMap!3855)

(assert (=> d!61875 (= res!126343 (contains!1877 lt!130085 (_1!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504)))))))

(declare-fun lt!130084 () List!3831)

(assert (=> d!61875 (= lt!130085 (ListLongMap!3856 lt!130084))))

(declare-fun lt!130082 () Unit!8014)

(declare-fun lt!130083 () Unit!8014)

(assert (=> d!61875 (= lt!130082 lt!130083)))

(assert (=> d!61875 (= (getValueByKey!312 lt!130084 (_1!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61875 (= lt!130083 (lemmaContainsTupThenGetReturnValue!170 lt!130084 (_1!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61875 (= lt!130084 (insertStrictlySorted!172 (toList!1943 lt!129968) (_1!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61875 (= (+!687 lt!129968 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))) lt!130085)))

(declare-fun b!258315 () Bool)

(declare-fun res!126344 () Bool)

(assert (=> b!258315 (=> (not res!126344) (not e!167451))))

(assert (=> b!258315 (= res!126344 (= (getValueByKey!312 (toList!1943 lt!130085) (_1!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))))))))

(declare-fun b!258316 () Bool)

(assert (=> b!258316 (= e!167451 (contains!1879 (toList!1943 lt!130085) (tuple2!4929 lt!129957 (zeroValue!4602 thiss!1504))))))

(assert (= (and d!61875 res!126343) b!258315))

(assert (= (and b!258315 res!126344) b!258316))

(declare-fun m!273727 () Bool)

(assert (=> d!61875 m!273727))

(declare-fun m!273729 () Bool)

(assert (=> d!61875 m!273729))

(declare-fun m!273731 () Bool)

(assert (=> d!61875 m!273731))

(declare-fun m!273733 () Bool)

(assert (=> d!61875 m!273733))

(declare-fun m!273735 () Bool)

(assert (=> b!258315 m!273735))

(declare-fun m!273737 () Bool)

(assert (=> b!258316 m!273737))

(assert (=> b!258116 d!61875))

(declare-fun d!61877 () Bool)

(declare-fun e!167467 () Bool)

(assert (=> d!61877 e!167467))

(declare-fun res!126356 () Bool)

(assert (=> d!61877 (=> (not res!126356) (not e!167467))))

(declare-fun lt!130101 () ListLongMap!3855)

(assert (=> d!61877 (= res!126356 (not (contains!1877 lt!130101 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!167470 () ListLongMap!3855)

(assert (=> d!61877 (= lt!130101 e!167470)))

(declare-fun c!43754 () Bool)

(assert (=> d!61877 (= c!43754 (bvsge #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61877 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61877 (= (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) lt!130101)))

(declare-fun bm!24572 () Bool)

(declare-fun call!24575 () ListLongMap!3855)

(assert (=> bm!24572 (= call!24575 (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4761 thiss!1504)))))

(declare-fun b!258341 () Bool)

(declare-fun e!167471 () Bool)

(declare-fun e!167466 () Bool)

(assert (=> b!258341 (= e!167471 e!167466)))

(declare-fun c!43752 () Bool)

(assert (=> b!258341 (= c!43752 (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258342 () Bool)

(assert (=> b!258342 (= e!167470 (ListLongMap!3856 Nil!3828))))

(declare-fun b!258343 () Bool)

(assert (=> b!258343 (= e!167467 e!167471)))

(declare-fun c!43751 () Bool)

(declare-fun e!167469 () Bool)

(assert (=> b!258343 (= c!43751 e!167469)))

(declare-fun res!126353 () Bool)

(assert (=> b!258343 (=> (not res!126353) (not e!167469))))

(assert (=> b!258343 (= res!126353 (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258344 () Bool)

(declare-fun e!167468 () Bool)

(assert (=> b!258344 (= e!167471 e!167468)))

(assert (=> b!258344 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun res!126354 () Bool)

(assert (=> b!258344 (= res!126354 (contains!1877 lt!130101 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!258344 (=> (not res!126354) (not e!167468))))

(declare-fun b!258345 () Bool)

(declare-fun res!126355 () Bool)

(assert (=> b!258345 (=> (not res!126355) (not e!167467))))

(assert (=> b!258345 (= res!126355 (not (contains!1877 lt!130101 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!258346 () Bool)

(declare-fun isEmpty!537 (ListLongMap!3855) Bool)

(assert (=> b!258346 (= e!167466 (isEmpty!537 lt!130101))))

(declare-fun b!258347 () Bool)

(declare-fun e!167472 () ListLongMap!3855)

(assert (=> b!258347 (= e!167472 call!24575)))

(declare-fun b!258348 () Bool)

(assert (=> b!258348 (= e!167466 (= lt!130101 (getCurrentListMapNoExtraKeys!574 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4761 thiss!1504))))))

(declare-fun b!258349 () Bool)

(assert (=> b!258349 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> b!258349 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6290 (_values!4744 thiss!1504))))))

(assert (=> b!258349 (= e!167468 (= (apply!255 lt!130101 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)) (get!3057 (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!258350 () Bool)

(declare-fun lt!130104 () Unit!8014)

(declare-fun lt!130106 () Unit!8014)

(assert (=> b!258350 (= lt!130104 lt!130106)))

(declare-fun lt!130103 () (_ BitVec 64))

(declare-fun lt!130100 () V!8451)

(declare-fun lt!130102 () (_ BitVec 64))

(declare-fun lt!130105 () ListLongMap!3855)

(assert (=> b!258350 (not (contains!1877 (+!687 lt!130105 (tuple2!4929 lt!130102 lt!130100)) lt!130103))))

(declare-fun addStillNotContains!127 (ListLongMap!3855 (_ BitVec 64) V!8451 (_ BitVec 64)) Unit!8014)

(assert (=> b!258350 (= lt!130106 (addStillNotContains!127 lt!130105 lt!130102 lt!130100 lt!130103))))

(assert (=> b!258350 (= lt!130103 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!258350 (= lt!130100 (get!3057 (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!258350 (= lt!130102 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!258350 (= lt!130105 call!24575)))

(assert (=> b!258350 (= e!167472 (+!687 call!24575 (tuple2!4929 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000) (get!3057 (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!258351 () Bool)

(assert (=> b!258351 (= e!167469 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!258351 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!258352 () Bool)

(assert (=> b!258352 (= e!167470 e!167472)))

(declare-fun c!43753 () Bool)

(assert (=> b!258352 (= c!43753 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61877 c!43754) b!258342))

(assert (= (and d!61877 (not c!43754)) b!258352))

(assert (= (and b!258352 c!43753) b!258350))

(assert (= (and b!258352 (not c!43753)) b!258347))

(assert (= (or b!258350 b!258347) bm!24572))

(assert (= (and d!61877 res!126356) b!258345))

(assert (= (and b!258345 res!126355) b!258343))

(assert (= (and b!258343 res!126353) b!258351))

(assert (= (and b!258343 c!43751) b!258344))

(assert (= (and b!258343 (not c!43751)) b!258341))

(assert (= (and b!258344 res!126354) b!258349))

(assert (= (and b!258341 c!43752) b!258348))

(assert (= (and b!258341 (not c!43752)) b!258346))

(declare-fun b_lambda!8233 () Bool)

(assert (=> (not b_lambda!8233) (not b!258349)))

(assert (=> b!258349 t!8907))

(declare-fun b_and!13841 () Bool)

(assert (= b_and!13839 (and (=> t!8907 result!5399) b_and!13841)))

(declare-fun b_lambda!8235 () Bool)

(assert (=> (not b_lambda!8235) (not b!258350)))

(assert (=> b!258350 t!8907))

(declare-fun b_and!13843 () Bool)

(assert (= b_and!13841 (and (=> t!8907 result!5399) b_and!13843)))

(declare-fun m!273739 () Bool)

(assert (=> bm!24572 m!273739))

(assert (=> b!258352 m!273435))

(assert (=> b!258352 m!273435))

(assert (=> b!258352 m!273439))

(declare-fun m!273741 () Bool)

(assert (=> b!258346 m!273741))

(declare-fun m!273743 () Bool)

(assert (=> b!258350 m!273743))

(assert (=> b!258350 m!273481))

(declare-fun m!273745 () Bool)

(assert (=> b!258350 m!273745))

(assert (=> b!258350 m!273745))

(declare-fun m!273747 () Bool)

(assert (=> b!258350 m!273747))

(assert (=> b!258350 m!273435))

(assert (=> b!258350 m!273481))

(assert (=> b!258350 m!273483))

(assert (=> b!258350 m!273485))

(assert (=> b!258350 m!273483))

(declare-fun m!273749 () Bool)

(assert (=> b!258350 m!273749))

(declare-fun m!273751 () Bool)

(assert (=> d!61877 m!273751))

(assert (=> d!61877 m!273329))

(assert (=> b!258351 m!273435))

(assert (=> b!258351 m!273435))

(assert (=> b!258351 m!273439))

(assert (=> b!258348 m!273739))

(assert (=> b!258349 m!273481))

(assert (=> b!258349 m!273435))

(assert (=> b!258349 m!273481))

(assert (=> b!258349 m!273483))

(assert (=> b!258349 m!273485))

(assert (=> b!258349 m!273435))

(declare-fun m!273753 () Bool)

(assert (=> b!258349 m!273753))

(assert (=> b!258349 m!273483))

(declare-fun m!273755 () Bool)

(assert (=> b!258345 m!273755))

(assert (=> b!258344 m!273435))

(assert (=> b!258344 m!273435))

(declare-fun m!273757 () Bool)

(assert (=> b!258344 m!273757))

(assert (=> b!258116 d!61877))

(declare-fun d!61879 () Bool)

(assert (=> d!61879 (= (apply!255 (+!687 lt!129953 (tuple2!4929 lt!129955 (minValue!4602 thiss!1504))) lt!129967) (apply!255 lt!129953 lt!129967))))

(declare-fun lt!130107 () Unit!8014)

(assert (=> d!61879 (= lt!130107 (choose!1257 lt!129953 lt!129955 (minValue!4602 thiss!1504) lt!129967))))

(declare-fun e!167473 () Bool)

(assert (=> d!61879 e!167473))

(declare-fun res!126357 () Bool)

(assert (=> d!61879 (=> (not res!126357) (not e!167473))))

(assert (=> d!61879 (= res!126357 (contains!1877 lt!129953 lt!129967))))

(assert (=> d!61879 (= (addApplyDifferent!231 lt!129953 lt!129955 (minValue!4602 thiss!1504) lt!129967) lt!130107)))

(declare-fun b!258353 () Bool)

(assert (=> b!258353 (= e!167473 (not (= lt!129967 lt!129955)))))

(assert (= (and d!61879 res!126357) b!258353))

(assert (=> d!61879 m!273441))

(assert (=> d!61879 m!273451))

(declare-fun m!273759 () Bool)

(assert (=> d!61879 m!273759))

(declare-fun m!273761 () Bool)

(assert (=> d!61879 m!273761))

(assert (=> d!61879 m!273441))

(assert (=> d!61879 m!273443))

(assert (=> b!258116 d!61879))

(declare-fun d!61881 () Bool)

(declare-fun e!167474 () Bool)

(assert (=> d!61881 e!167474))

(declare-fun res!126358 () Bool)

(assert (=> d!61881 (=> (not res!126358) (not e!167474))))

(declare-fun lt!130111 () ListLongMap!3855)

(assert (=> d!61881 (= res!126358 (contains!1877 lt!130111 (_1!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504)))))))

(declare-fun lt!130110 () List!3831)

(assert (=> d!61881 (= lt!130111 (ListLongMap!3856 lt!130110))))

(declare-fun lt!130108 () Unit!8014)

(declare-fun lt!130109 () Unit!8014)

(assert (=> d!61881 (= lt!130108 lt!130109)))

(assert (=> d!61881 (= (getValueByKey!312 lt!130110 (_1!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504)))))))

(assert (=> d!61881 (= lt!130109 (lemmaContainsTupThenGetReturnValue!170 lt!130110 (_1!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504)))))))

(assert (=> d!61881 (= lt!130110 (insertStrictlySorted!172 (toList!1943 lt!129964) (_1!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504)))))))

(assert (=> d!61881 (= (+!687 lt!129964 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))) lt!130111)))

(declare-fun b!258354 () Bool)

(declare-fun res!126359 () Bool)

(assert (=> b!258354 (=> (not res!126359) (not e!167474))))

(assert (=> b!258354 (= res!126359 (= (getValueByKey!312 (toList!1943 lt!130111) (_1!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))))))))

(declare-fun b!258355 () Bool)

(assert (=> b!258355 (= e!167474 (contains!1879 (toList!1943 lt!130111) (tuple2!4929 lt!129961 (minValue!4602 thiss!1504))))))

(assert (= (and d!61881 res!126358) b!258354))

(assert (= (and b!258354 res!126359) b!258355))

(declare-fun m!273763 () Bool)

(assert (=> d!61881 m!273763))

(declare-fun m!273765 () Bool)

(assert (=> d!61881 m!273765))

(declare-fun m!273767 () Bool)

(assert (=> d!61881 m!273767))

(declare-fun m!273769 () Bool)

(assert (=> d!61881 m!273769))

(declare-fun m!273771 () Bool)

(assert (=> b!258354 m!273771))

(declare-fun m!273773 () Bool)

(assert (=> b!258355 m!273773))

(assert (=> b!258116 d!61881))

(assert (=> d!61799 d!61813))

(declare-fun d!61883 () Bool)

(declare-fun lt!130114 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!167 (List!3831) (InoxSet tuple2!4928))

(assert (=> d!61883 (= lt!130114 (select (content!167 (toList!1943 lt!130018)) (tuple2!4929 key!932 v!346)))))

(declare-fun e!167479 () Bool)

(assert (=> d!61883 (= lt!130114 e!167479)))

(declare-fun res!126365 () Bool)

(assert (=> d!61883 (=> (not res!126365) (not e!167479))))

(assert (=> d!61883 (= res!126365 ((_ is Cons!3827) (toList!1943 lt!130018)))))

(assert (=> d!61883 (= (contains!1879 (toList!1943 lt!130018) (tuple2!4929 key!932 v!346)) lt!130114)))

(declare-fun b!258360 () Bool)

(declare-fun e!167480 () Bool)

(assert (=> b!258360 (= e!167479 e!167480)))

(declare-fun res!126364 () Bool)

(assert (=> b!258360 (=> res!126364 e!167480)))

(assert (=> b!258360 (= res!126364 (= (h!4489 (toList!1943 lt!130018)) (tuple2!4929 key!932 v!346)))))

(declare-fun b!258361 () Bool)

(assert (=> b!258361 (= e!167480 (contains!1879 (t!8902 (toList!1943 lt!130018)) (tuple2!4929 key!932 v!346)))))

(assert (= (and d!61883 res!126365) b!258360))

(assert (= (and b!258360 (not res!126364)) b!258361))

(declare-fun m!273775 () Bool)

(assert (=> d!61883 m!273775))

(declare-fun m!273777 () Bool)

(assert (=> d!61883 m!273777))

(declare-fun m!273779 () Bool)

(assert (=> b!258361 m!273779))

(assert (=> b!258182 d!61883))

(declare-fun d!61885 () Bool)

(assert (=> d!61885 (= (apply!255 lt!129972 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3058 (getValueByKey!312 (toList!1943 lt!129972) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9100 () Bool)

(assert (= bs!9100 d!61885))

(declare-fun m!273781 () Bool)

(assert (=> bs!9100 m!273781))

(assert (=> bs!9100 m!273781))

(declare-fun m!273783 () Bool)

(assert (=> bs!9100 m!273783))

(assert (=> b!258114 d!61885))

(declare-fun d!61887 () Bool)

(assert (=> d!61887 (= (validKeyInArray!0 (select (arr!5944 lt!129842) index!297)) (and (not (= (select (arr!5944 lt!129842) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5944 lt!129842) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258226 d!61887))

(declare-fun d!61889 () Bool)

(assert (=> d!61889 (= (apply!255 lt!130003 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)) (get!3058 (getValueByKey!312 (toList!1943 lt!130003) (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))))

(declare-fun bs!9101 () Bool)

(assert (= bs!9101 d!61889))

(assert (=> bs!9101 m!273507))

(declare-fun m!273785 () Bool)

(assert (=> bs!9101 m!273785))

(assert (=> bs!9101 m!273785))

(declare-fun m!273787 () Bool)

(assert (=> bs!9101 m!273787))

(assert (=> b!258159 d!61889))

(declare-fun c!43757 () Bool)

(declare-fun d!61891 () Bool)

(assert (=> d!61891 (= c!43757 ((_ is ValueCellFull!2958) (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!167483 () V!8451)

(assert (=> d!61891 (= (get!3057 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!167483)))

(declare-fun b!258366 () Bool)

(declare-fun get!3059 (ValueCell!2958 V!8451) V!8451)

(assert (=> b!258366 (= e!167483 (get!3059 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!258367 () Bool)

(declare-fun get!3060 (ValueCell!2958 V!8451) V!8451)

(assert (=> b!258367 (= e!167483 (get!3060 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61891 c!43757) b!258366))

(assert (= (and d!61891 (not c!43757)) b!258367))

(assert (=> b!258366 m!273553))

(assert (=> b!258366 m!273483))

(declare-fun m!273789 () Bool)

(assert (=> b!258366 m!273789))

(assert (=> b!258367 m!273553))

(assert (=> b!258367 m!273483))

(declare-fun m!273791 () Bool)

(assert (=> b!258367 m!273791))

(assert (=> b!258159 d!61891))

(declare-fun b!258368 () Bool)

(declare-fun e!167485 () (_ BitVec 32))

(declare-fun e!167484 () (_ BitVec 32))

(assert (=> b!258368 (= e!167485 e!167484)))

(declare-fun c!43759 () Bool)

(assert (=> b!258368 (= c!43759 (validKeyInArray!0 (select (arr!5944 lt!129842) index!297)))))

(declare-fun b!258369 () Bool)

(declare-fun call!24576 () (_ BitVec 32))

(assert (=> b!258369 (= e!167484 call!24576)))

(declare-fun bm!24573 () Bool)

(assert (=> bm!24573 (= call!24576 (arrayCountValidKeys!0 lt!129842 (bvadd index!297 #b00000000000000000000000000000001) (bvadd index!297 #b00000000000000000000000000000001)))))

(declare-fun b!258370 () Bool)

(assert (=> b!258370 (= e!167485 #b00000000000000000000000000000000)))

(declare-fun b!258371 () Bool)

(assert (=> b!258371 (= e!167484 (bvadd #b00000000000000000000000000000001 call!24576))))

(declare-fun d!61893 () Bool)

(declare-fun lt!130115 () (_ BitVec 32))

(assert (=> d!61893 (and (bvsge lt!130115 #b00000000000000000000000000000000) (bvsle lt!130115 (bvsub (size!6291 lt!129842) index!297)))))

(assert (=> d!61893 (= lt!130115 e!167485)))

(declare-fun c!43758 () Bool)

(assert (=> d!61893 (= c!43758 (bvsge index!297 (bvadd index!297 #b00000000000000000000000000000001)))))

(assert (=> d!61893 (and (bvsle index!297 (bvadd index!297 #b00000000000000000000000000000001)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd index!297 #b00000000000000000000000000000001) (size!6291 lt!129842)))))

(assert (=> d!61893 (= (arrayCountValidKeys!0 lt!129842 index!297 (bvadd index!297 #b00000000000000000000000000000001)) lt!130115)))

(assert (= (and d!61893 c!43758) b!258370))

(assert (= (and d!61893 (not c!43758)) b!258368))

(assert (= (and b!258368 c!43759) b!258371))

(assert (= (and b!258368 (not c!43759)) b!258369))

(assert (= (or b!258371 b!258369) bm!24573))

(assert (=> b!258368 m!273607))

(assert (=> b!258368 m!273607))

(assert (=> b!258368 m!273609))

(declare-fun m!273793 () Bool)

(assert (=> bm!24573 m!273793))

(assert (=> d!61823 d!61893))

(declare-fun d!61895 () Bool)

(assert (=> d!61895 (= (arrayCountValidKeys!0 lt!129842 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(assert (=> d!61895 true))

(declare-fun _$85!21 () Unit!8014)

(assert (=> d!61895 (= (choose!2 lt!129842 index!297) _$85!21)))

(declare-fun bs!9102 () Bool)

(assert (= bs!9102 d!61895))

(assert (=> bs!9102 m!273603))

(assert (=> d!61823 d!61895))

(declare-fun b!258372 () Bool)

(declare-fun e!167486 () Bool)

(assert (=> b!258372 (= e!167486 (contains!1880 Nil!3829 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61897 () Bool)

(declare-fun res!126366 () Bool)

(declare-fun e!167489 () Bool)

(assert (=> d!61897 (=> res!126366 e!167489)))

(assert (=> d!61897 (= res!126366 (bvsge #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61897 (= (arrayNoDuplicates!0 (_keys!6931 thiss!1504) #b00000000000000000000000000000000 Nil!3829) e!167489)))

(declare-fun b!258373 () Bool)

(declare-fun e!167488 () Bool)

(declare-fun e!167487 () Bool)

(assert (=> b!258373 (= e!167488 e!167487)))

(declare-fun c!43760 () Bool)

(assert (=> b!258373 (= c!43760 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!258374 () Bool)

(assert (=> b!258374 (= e!167489 e!167488)))

(declare-fun res!126367 () Bool)

(assert (=> b!258374 (=> (not res!126367) (not e!167488))))

(assert (=> b!258374 (= res!126367 (not e!167486))))

(declare-fun res!126368 () Bool)

(assert (=> b!258374 (=> (not res!126368) (not e!167486))))

(assert (=> b!258374 (= res!126368 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!258375 () Bool)

(declare-fun call!24577 () Bool)

(assert (=> b!258375 (= e!167487 call!24577)))

(declare-fun bm!24574 () Bool)

(assert (=> bm!24574 (= call!24577 (arrayNoDuplicates!0 (_keys!6931 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43760 (Cons!3828 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000) Nil!3829) Nil!3829)))))

(declare-fun b!258376 () Bool)

(assert (=> b!258376 (= e!167487 call!24577)))

(assert (= (and d!61897 (not res!126366)) b!258374))

(assert (= (and b!258374 res!126368) b!258372))

(assert (= (and b!258374 res!126367) b!258373))

(assert (= (and b!258373 c!43760) b!258376))

(assert (= (and b!258373 (not c!43760)) b!258375))

(assert (= (or b!258376 b!258375) bm!24574))

(assert (=> b!258372 m!273435))

(assert (=> b!258372 m!273435))

(declare-fun m!273795 () Bool)

(assert (=> b!258372 m!273795))

(assert (=> b!258373 m!273435))

(assert (=> b!258373 m!273435))

(assert (=> b!258373 m!273439))

(assert (=> b!258374 m!273435))

(assert (=> b!258374 m!273435))

(assert (=> b!258374 m!273439))

(assert (=> bm!24574 m!273435))

(declare-fun m!273797 () Bool)

(assert (=> bm!24574 m!273797))

(assert (=> b!258285 d!61897))

(assert (=> bm!24543 d!61877))

(declare-fun b!258377 () Bool)

(declare-fun e!167491 () (_ BitVec 32))

(declare-fun e!167490 () (_ BitVec 32))

(assert (=> b!258377 (= e!167491 e!167490)))

(declare-fun c!43762 () Bool)

(assert (=> b!258377 (= c!43762 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!258378 () Bool)

(declare-fun call!24578 () (_ BitVec 32))

(assert (=> b!258378 (= e!167490 call!24578)))

(declare-fun bm!24575 () Bool)

(assert (=> bm!24575 (= call!24578 (arrayCountValidKeys!0 (_keys!6931 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258379 () Bool)

(assert (=> b!258379 (= e!167491 #b00000000000000000000000000000000)))

(declare-fun b!258380 () Bool)

(assert (=> b!258380 (= e!167490 (bvadd #b00000000000000000000000000000001 call!24578))))

(declare-fun d!61899 () Bool)

(declare-fun lt!130116 () (_ BitVec 32))

(assert (=> d!61899 (and (bvsge lt!130116 #b00000000000000000000000000000000) (bvsle lt!130116 (bvsub (size!6291 (_keys!6931 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!61899 (= lt!130116 e!167491)))

(declare-fun c!43761 () Bool)

(assert (=> d!61899 (= c!43761 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61899 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6291 (_keys!6931 thiss!1504)) (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61899 (= (arrayCountValidKeys!0 (_keys!6931 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))) lt!130116)))

(assert (= (and d!61899 c!43761) b!258379))

(assert (= (and d!61899 (not c!43761)) b!258377))

(assert (= (and b!258377 c!43762) b!258380))

(assert (= (and b!258377 (not c!43762)) b!258378))

(assert (= (or b!258380 b!258378) bm!24575))

(assert (=> b!258377 m!273655))

(assert (=> b!258377 m!273655))

(declare-fun m!273799 () Bool)

(assert (=> b!258377 m!273799))

(declare-fun m!273801 () Bool)

(assert (=> bm!24575 m!273801))

(assert (=> bm!24555 d!61899))

(declare-fun d!61901 () Bool)

(assert (=> d!61901 (= (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258191 d!61901))

(assert (=> d!61843 d!61801))

(declare-fun d!61903 () Bool)

(declare-fun e!167494 () Bool)

(assert (=> d!61903 e!167494))

(declare-fun res!126373 () Bool)

(assert (=> d!61903 (=> (not res!126373) (not e!167494))))

(declare-fun lt!130119 () SeekEntryResult!1184)

(assert (=> d!61903 (= res!126373 ((_ is Found!1184) lt!130119))))

(assert (=> d!61903 (= lt!130119 (seekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(assert (=> d!61903 true))

(declare-fun _$33!174 () Unit!8014)

(assert (=> d!61903 (= (choose!1255 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)) _$33!174)))

(declare-fun b!258385 () Bool)

(declare-fun res!126374 () Bool)

(assert (=> b!258385 (=> (not res!126374) (not e!167494))))

(assert (=> b!258385 (= res!126374 (inRange!0 (index!6907 lt!130119) (mask!11058 thiss!1504)))))

(declare-fun b!258386 () Bool)

(assert (=> b!258386 (= e!167494 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6907 lt!130119)) key!932))))

(assert (= (and d!61903 res!126373) b!258385))

(assert (= (and b!258385 res!126374) b!258386))

(assert (=> d!61903 m!273345))

(declare-fun m!273803 () Bool)

(assert (=> b!258385 m!273803))

(declare-fun m!273805 () Bool)

(assert (=> b!258386 m!273805))

(assert (=> d!61843 d!61903))

(assert (=> d!61843 d!61813))

(declare-fun d!61905 () Bool)

(assert (=> d!61905 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (mask!11058 thiss!1504))))

(assert (=> d!61905 true))

(declare-fun _$56!33 () Unit!8014)

(assert (=> d!61905 (= (choose!102 key!932 (_keys!6931 thiss!1504) index!297 (mask!11058 thiss!1504)) _$56!33)))

(declare-fun bs!9103 () Bool)

(assert (= bs!9103 d!61905))

(assert (=> bs!9103 m!273319))

(assert (=> bs!9103 m!273597))

(assert (=> d!61819 d!61905))

(assert (=> d!61819 d!61813))

(declare-fun d!61907 () Bool)

(declare-fun res!126375 () Bool)

(declare-fun e!167495 () Bool)

(assert (=> d!61907 (=> res!126375 e!167495)))

(assert (=> d!61907 (= res!126375 (= (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!61907 (= (arrayContainsKey!0 lt!129842 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!167495)))

(declare-fun b!258387 () Bool)

(declare-fun e!167496 () Bool)

(assert (=> b!258387 (= e!167495 e!167496)))

(declare-fun res!126376 () Bool)

(assert (=> b!258387 (=> (not res!126376) (not e!167496))))

(assert (=> b!258387 (= res!126376 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6291 lt!129842)))))

(declare-fun b!258388 () Bool)

(assert (=> b!258388 (= e!167496 (arrayContainsKey!0 lt!129842 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!61907 (not res!126375)) b!258387))

(assert (= (and b!258387 res!126376) b!258388))

(declare-fun m!273807 () Bool)

(assert (=> d!61907 m!273807))

(declare-fun m!273809 () Bool)

(assert (=> b!258388 m!273809))

(assert (=> b!258252 d!61907))

(declare-fun d!61909 () Bool)

(declare-fun e!167497 () Bool)

(assert (=> d!61909 e!167497))

(declare-fun res!126377 () Bool)

(assert (=> d!61909 (=> res!126377 e!167497)))

(declare-fun lt!130120 () Bool)

(assert (=> d!61909 (= res!126377 (not lt!130120))))

(declare-fun lt!130123 () Bool)

(assert (=> d!61909 (= lt!130120 lt!130123)))

(declare-fun lt!130121 () Unit!8014)

(declare-fun e!167498 () Unit!8014)

(assert (=> d!61909 (= lt!130121 e!167498)))

(declare-fun c!43763 () Bool)

(assert (=> d!61909 (= c!43763 lt!130123)))

(assert (=> d!61909 (= lt!130123 (containsKey!304 (toList!1943 lt!130003) (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(assert (=> d!61909 (= (contains!1877 lt!130003 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)) lt!130120)))

(declare-fun b!258389 () Bool)

(declare-fun lt!130122 () Unit!8014)

(assert (=> b!258389 (= e!167498 lt!130122)))

(assert (=> b!258389 (= lt!130122 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!130003) (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(assert (=> b!258389 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130003) (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258390 () Bool)

(declare-fun Unit!8027 () Unit!8014)

(assert (=> b!258390 (= e!167498 Unit!8027)))

(declare-fun b!258391 () Bool)

(assert (=> b!258391 (= e!167497 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130003) (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))))

(assert (= (and d!61909 c!43763) b!258389))

(assert (= (and d!61909 (not c!43763)) b!258390))

(assert (= (and d!61909 (not res!126377)) b!258391))

(assert (=> d!61909 m!273507))

(declare-fun m!273811 () Bool)

(assert (=> d!61909 m!273811))

(assert (=> b!258389 m!273507))

(declare-fun m!273813 () Bool)

(assert (=> b!258389 m!273813))

(assert (=> b!258389 m!273507))

(assert (=> b!258389 m!273785))

(assert (=> b!258389 m!273785))

(declare-fun m!273815 () Bool)

(assert (=> b!258389 m!273815))

(assert (=> b!258391 m!273507))

(assert (=> b!258391 m!273785))

(assert (=> b!258391 m!273785))

(assert (=> b!258391 m!273815))

(assert (=> b!258147 d!61909))

(declare-fun d!61911 () Bool)

(assert (=> d!61911 (= (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)) (and (not (= (select (arr!5944 lt!129842) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5944 lt!129842) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258246 d!61911))

(declare-fun b!258392 () Bool)

(declare-fun e!167499 () Bool)

(declare-fun call!24579 () Bool)

(assert (=> b!258392 (= e!167499 call!24579)))

(declare-fun d!61913 () Bool)

(declare-fun res!126379 () Bool)

(declare-fun e!167501 () Bool)

(assert (=> d!61913 (=> res!126379 e!167501)))

(assert (=> d!61913 (= res!126379 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 lt!129842)))))

(assert (=> d!61913 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!129842 (mask!11058 thiss!1504)) e!167501)))

(declare-fun bm!24576 () Bool)

(assert (=> bm!24576 (= call!24579 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!129842 (mask!11058 thiss!1504)))))

(declare-fun b!258393 () Bool)

(declare-fun e!167500 () Bool)

(assert (=> b!258393 (= e!167499 e!167500)))

(declare-fun lt!130125 () (_ BitVec 64))

(assert (=> b!258393 (= lt!130125 (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!130126 () Unit!8014)

(assert (=> b!258393 (= lt!130126 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129842 lt!130125 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!258393 (arrayContainsKey!0 lt!129842 lt!130125 #b00000000000000000000000000000000)))

(declare-fun lt!130124 () Unit!8014)

(assert (=> b!258393 (= lt!130124 lt!130126)))

(declare-fun res!126378 () Bool)

(assert (=> b!258393 (= res!126378 (= (seekEntryOrOpen!0 (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!129842 (mask!11058 thiss!1504)) (Found!1184 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!258393 (=> (not res!126378) (not e!167500))))

(declare-fun b!258394 () Bool)

(assert (=> b!258394 (= e!167501 e!167499)))

(declare-fun c!43764 () Bool)

(assert (=> b!258394 (= c!43764 (validKeyInArray!0 (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!258395 () Bool)

(assert (=> b!258395 (= e!167500 call!24579)))

(assert (= (and d!61913 (not res!126379)) b!258394))

(assert (= (and b!258394 c!43764) b!258393))

(assert (= (and b!258394 (not c!43764)) b!258392))

(assert (= (and b!258393 res!126378) b!258395))

(assert (= (or b!258395 b!258392) bm!24576))

(declare-fun m!273817 () Bool)

(assert (=> bm!24576 m!273817))

(assert (=> b!258393 m!273807))

(declare-fun m!273819 () Bool)

(assert (=> b!258393 m!273819))

(declare-fun m!273821 () Bool)

(assert (=> b!258393 m!273821))

(assert (=> b!258393 m!273807))

(declare-fun m!273823 () Bool)

(assert (=> b!258393 m!273823))

(assert (=> b!258394 m!273807))

(assert (=> b!258394 m!273807))

(declare-fun m!273825 () Bool)

(assert (=> b!258394 m!273825))

(assert (=> bm!24563 d!61913))

(assert (=> b!258218 d!61911))

(declare-fun d!61915 () Bool)

(assert (=> d!61915 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129847) key!932))))

(declare-fun lt!130129 () Unit!8014)

(declare-fun choose!1258 (List!3831 (_ BitVec 64)) Unit!8014)

(assert (=> d!61915 (= lt!130129 (choose!1258 (toList!1943 lt!129847) key!932))))

(declare-fun e!167504 () Bool)

(assert (=> d!61915 e!167504))

(declare-fun res!126382 () Bool)

(assert (=> d!61915 (=> (not res!126382) (not e!167504))))

(declare-fun isStrictlySorted!368 (List!3831) Bool)

(assert (=> d!61915 (= res!126382 (isStrictlySorted!368 (toList!1943 lt!129847)))))

(assert (=> d!61915 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!129847) key!932) lt!130129)))

(declare-fun b!258398 () Bool)

(assert (=> b!258398 (= e!167504 (containsKey!304 (toList!1943 lt!129847) key!932))))

(assert (= (and d!61915 res!126382) b!258398))

(assert (=> d!61915 m!273429))

(assert (=> d!61915 m!273429))

(assert (=> d!61915 m!273431))

(declare-fun m!273827 () Bool)

(assert (=> d!61915 m!273827))

(declare-fun m!273829 () Bool)

(assert (=> d!61915 m!273829))

(assert (=> b!258398 m!273425))

(assert (=> b!258058 d!61915))

(declare-fun d!61917 () Bool)

(declare-fun isEmpty!538 (Option!318) Bool)

(assert (=> d!61917 (= (isDefined!254 (getValueByKey!312 (toList!1943 lt!129847) key!932)) (not (isEmpty!538 (getValueByKey!312 (toList!1943 lt!129847) key!932))))))

(declare-fun bs!9104 () Bool)

(assert (= bs!9104 d!61917))

(assert (=> bs!9104 m!273429))

(declare-fun m!273831 () Bool)

(assert (=> bs!9104 m!273831))

(assert (=> b!258058 d!61917))

(declare-fun b!258407 () Bool)

(declare-fun e!167509 () Option!318)

(assert (=> b!258407 (= e!167509 (Some!317 (_2!2474 (h!4489 (toList!1943 lt!129847)))))))

(declare-fun d!61919 () Bool)

(declare-fun c!43769 () Bool)

(assert (=> d!61919 (= c!43769 (and ((_ is Cons!3827) (toList!1943 lt!129847)) (= (_1!2474 (h!4489 (toList!1943 lt!129847))) key!932)))))

(assert (=> d!61919 (= (getValueByKey!312 (toList!1943 lt!129847) key!932) e!167509)))

(declare-fun b!258408 () Bool)

(declare-fun e!167510 () Option!318)

(assert (=> b!258408 (= e!167509 e!167510)))

(declare-fun c!43770 () Bool)

(assert (=> b!258408 (= c!43770 (and ((_ is Cons!3827) (toList!1943 lt!129847)) (not (= (_1!2474 (h!4489 (toList!1943 lt!129847))) key!932))))))

(declare-fun b!258409 () Bool)

(assert (=> b!258409 (= e!167510 (getValueByKey!312 (t!8902 (toList!1943 lt!129847)) key!932))))

(declare-fun b!258410 () Bool)

(assert (=> b!258410 (= e!167510 None!316)))

(assert (= (and d!61919 c!43769) b!258407))

(assert (= (and d!61919 (not c!43769)) b!258408))

(assert (= (and b!258408 c!43770) b!258409))

(assert (= (and b!258408 (not c!43770)) b!258410))

(declare-fun m!273833 () Bool)

(assert (=> b!258409 m!273833))

(assert (=> b!258058 d!61919))

(declare-fun d!61921 () Bool)

(declare-fun e!167511 () Bool)

(assert (=> d!61921 e!167511))

(declare-fun res!126383 () Bool)

(assert (=> d!61921 (=> res!126383 e!167511)))

(declare-fun lt!130130 () Bool)

(assert (=> d!61921 (= res!126383 (not lt!130130))))

(declare-fun lt!130133 () Bool)

(assert (=> d!61921 (= lt!130130 lt!130133)))

(declare-fun lt!130131 () Unit!8014)

(declare-fun e!167512 () Unit!8014)

(assert (=> d!61921 (= lt!130131 e!167512)))

(declare-fun c!43771 () Bool)

(assert (=> d!61921 (= c!43771 lt!130133)))

(assert (=> d!61921 (= lt!130133 (containsKey!304 (toList!1943 lt!130018) (_1!2474 (tuple2!4929 key!932 v!346))))))

(assert (=> d!61921 (= (contains!1877 lt!130018 (_1!2474 (tuple2!4929 key!932 v!346))) lt!130130)))

(declare-fun b!258411 () Bool)

(declare-fun lt!130132 () Unit!8014)

(assert (=> b!258411 (= e!167512 lt!130132)))

(assert (=> b!258411 (= lt!130132 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!130018) (_1!2474 (tuple2!4929 key!932 v!346))))))

(assert (=> b!258411 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130018) (_1!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun b!258412 () Bool)

(declare-fun Unit!8028 () Unit!8014)

(assert (=> b!258412 (= e!167512 Unit!8028)))

(declare-fun b!258413 () Bool)

(assert (=> b!258413 (= e!167511 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130018) (_1!2474 (tuple2!4929 key!932 v!346)))))))

(assert (= (and d!61921 c!43771) b!258411))

(assert (= (and d!61921 (not c!43771)) b!258412))

(assert (= (and d!61921 (not res!126383)) b!258413))

(declare-fun m!273835 () Bool)

(assert (=> d!61921 m!273835))

(declare-fun m!273837 () Bool)

(assert (=> b!258411 m!273837))

(assert (=> b!258411 m!273579))

(assert (=> b!258411 m!273579))

(declare-fun m!273839 () Bool)

(assert (=> b!258411 m!273839))

(assert (=> b!258413 m!273579))

(assert (=> b!258413 m!273579))

(assert (=> b!258413 m!273839))

(assert (=> d!61807 d!61921))

(declare-fun b!258414 () Bool)

(declare-fun e!167513 () Option!318)

(assert (=> b!258414 (= e!167513 (Some!317 (_2!2474 (h!4489 lt!130017))))))

(declare-fun d!61923 () Bool)

(declare-fun c!43772 () Bool)

(assert (=> d!61923 (= c!43772 (and ((_ is Cons!3827) lt!130017) (= (_1!2474 (h!4489 lt!130017)) (_1!2474 (tuple2!4929 key!932 v!346)))))))

(assert (=> d!61923 (= (getValueByKey!312 lt!130017 (_1!2474 (tuple2!4929 key!932 v!346))) e!167513)))

(declare-fun b!258415 () Bool)

(declare-fun e!167514 () Option!318)

(assert (=> b!258415 (= e!167513 e!167514)))

(declare-fun c!43773 () Bool)

(assert (=> b!258415 (= c!43773 (and ((_ is Cons!3827) lt!130017) (not (= (_1!2474 (h!4489 lt!130017)) (_1!2474 (tuple2!4929 key!932 v!346))))))))

(declare-fun b!258416 () Bool)

(assert (=> b!258416 (= e!167514 (getValueByKey!312 (t!8902 lt!130017) (_1!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun b!258417 () Bool)

(assert (=> b!258417 (= e!167514 None!316)))

(assert (= (and d!61923 c!43772) b!258414))

(assert (= (and d!61923 (not c!43772)) b!258415))

(assert (= (and b!258415 c!43773) b!258416))

(assert (= (and b!258415 (not c!43773)) b!258417))

(declare-fun m!273841 () Bool)

(assert (=> b!258416 m!273841))

(assert (=> d!61807 d!61923))

(declare-fun d!61925 () Bool)

(assert (=> d!61925 (= (getValueByKey!312 lt!130017 (_1!2474 (tuple2!4929 key!932 v!346))) (Some!317 (_2!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun lt!130136 () Unit!8014)

(declare-fun choose!1259 (List!3831 (_ BitVec 64) V!8451) Unit!8014)

(assert (=> d!61925 (= lt!130136 (choose!1259 lt!130017 (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun e!167517 () Bool)

(assert (=> d!61925 e!167517))

(declare-fun res!126388 () Bool)

(assert (=> d!61925 (=> (not res!126388) (not e!167517))))

(assert (=> d!61925 (= res!126388 (isStrictlySorted!368 lt!130017))))

(assert (=> d!61925 (= (lemmaContainsTupThenGetReturnValue!170 lt!130017 (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))) lt!130136)))

(declare-fun b!258422 () Bool)

(declare-fun res!126389 () Bool)

(assert (=> b!258422 (=> (not res!126389) (not e!167517))))

(assert (=> b!258422 (= res!126389 (containsKey!304 lt!130017 (_1!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun b!258423 () Bool)

(assert (=> b!258423 (= e!167517 (contains!1879 lt!130017 (tuple2!4929 (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346)))))))

(assert (= (and d!61925 res!126388) b!258422))

(assert (= (and b!258422 res!126389) b!258423))

(assert (=> d!61925 m!273573))

(declare-fun m!273843 () Bool)

(assert (=> d!61925 m!273843))

(declare-fun m!273845 () Bool)

(assert (=> d!61925 m!273845))

(declare-fun m!273847 () Bool)

(assert (=> b!258422 m!273847))

(declare-fun m!273849 () Bool)

(assert (=> b!258423 m!273849))

(assert (=> d!61807 d!61925))

(declare-fun bm!24583 () Bool)

(declare-fun call!24586 () List!3831)

(declare-fun call!24587 () List!3831)

(assert (=> bm!24583 (= call!24586 call!24587)))

(declare-fun bm!24584 () Bool)

(declare-fun call!24588 () List!3831)

(assert (=> bm!24584 (= call!24588 call!24586)))

(declare-fun c!43783 () Bool)

(declare-fun c!43782 () Bool)

(declare-fun b!258444 () Bool)

(declare-fun e!167528 () List!3831)

(assert (=> b!258444 (= e!167528 (ite c!43782 (t!8902 (toList!1943 lt!129847)) (ite c!43783 (Cons!3827 (h!4489 (toList!1943 lt!129847)) (t!8902 (toList!1943 lt!129847))) Nil!3828)))))

(declare-fun b!258445 () Bool)

(declare-fun e!167529 () List!3831)

(assert (=> b!258445 (= e!167529 call!24586)))

(declare-fun b!258446 () Bool)

(declare-fun e!167530 () List!3831)

(assert (=> b!258446 (= e!167530 e!167529)))

(assert (=> b!258446 (= c!43782 (and ((_ is Cons!3827) (toList!1943 lt!129847)) (= (_1!2474 (h!4489 (toList!1943 lt!129847))) (_1!2474 (tuple2!4929 key!932 v!346)))))))

(declare-fun d!61927 () Bool)

(declare-fun e!167531 () Bool)

(assert (=> d!61927 e!167531))

(declare-fun res!126394 () Bool)

(assert (=> d!61927 (=> (not res!126394) (not e!167531))))

(declare-fun lt!130139 () List!3831)

(assert (=> d!61927 (= res!126394 (isStrictlySorted!368 lt!130139))))

(assert (=> d!61927 (= lt!130139 e!167530)))

(declare-fun c!43785 () Bool)

(assert (=> d!61927 (= c!43785 (and ((_ is Cons!3827) (toList!1943 lt!129847)) (bvslt (_1!2474 (h!4489 (toList!1943 lt!129847))) (_1!2474 (tuple2!4929 key!932 v!346)))))))

(assert (=> d!61927 (isStrictlySorted!368 (toList!1943 lt!129847))))

(assert (=> d!61927 (= (insertStrictlySorted!172 (toList!1943 lt!129847) (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))) lt!130139)))

(declare-fun bm!24585 () Bool)

(declare-fun $colon$colon!103 (List!3831 tuple2!4928) List!3831)

(assert (=> bm!24585 (= call!24587 ($colon$colon!103 e!167528 (ite c!43785 (h!4489 (toList!1943 lt!129847)) (tuple2!4929 (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))))))))

(declare-fun c!43784 () Bool)

(assert (=> bm!24585 (= c!43784 c!43785)))

(declare-fun b!258447 () Bool)

(assert (=> b!258447 (= e!167531 (contains!1879 lt!130139 (tuple2!4929 (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346)))))))

(declare-fun b!258448 () Bool)

(declare-fun e!167532 () List!3831)

(assert (=> b!258448 (= e!167532 call!24588)))

(declare-fun b!258449 () Bool)

(assert (=> b!258449 (= e!167532 call!24588)))

(declare-fun b!258450 () Bool)

(declare-fun res!126395 () Bool)

(assert (=> b!258450 (=> (not res!126395) (not e!167531))))

(assert (=> b!258450 (= res!126395 (containsKey!304 lt!130139 (_1!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun b!258451 () Bool)

(assert (=> b!258451 (= e!167530 call!24587)))

(declare-fun b!258452 () Bool)

(assert (=> b!258452 (= e!167528 (insertStrictlySorted!172 (t!8902 (toList!1943 lt!129847)) (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun b!258453 () Bool)

(assert (=> b!258453 (= c!43783 (and ((_ is Cons!3827) (toList!1943 lt!129847)) (bvsgt (_1!2474 (h!4489 (toList!1943 lt!129847))) (_1!2474 (tuple2!4929 key!932 v!346)))))))

(assert (=> b!258453 (= e!167529 e!167532)))

(assert (= (and d!61927 c!43785) b!258451))

(assert (= (and d!61927 (not c!43785)) b!258446))

(assert (= (and b!258446 c!43782) b!258445))

(assert (= (and b!258446 (not c!43782)) b!258453))

(assert (= (and b!258453 c!43783) b!258449))

(assert (= (and b!258453 (not c!43783)) b!258448))

(assert (= (or b!258449 b!258448) bm!24584))

(assert (= (or b!258445 bm!24584) bm!24583))

(assert (= (or b!258451 bm!24583) bm!24585))

(assert (= (and bm!24585 c!43784) b!258452))

(assert (= (and bm!24585 (not c!43784)) b!258444))

(assert (= (and d!61927 res!126394) b!258450))

(assert (= (and b!258450 res!126395) b!258447))

(declare-fun m!273851 () Bool)

(assert (=> bm!24585 m!273851))

(declare-fun m!273853 () Bool)

(assert (=> b!258450 m!273853))

(declare-fun m!273855 () Bool)

(assert (=> b!258447 m!273855))

(declare-fun m!273857 () Bool)

(assert (=> d!61927 m!273857))

(assert (=> d!61927 m!273829))

(declare-fun m!273859 () Bool)

(assert (=> b!258452 m!273859))

(assert (=> d!61807 d!61927))

(assert (=> b!258151 d!61911))

(declare-fun d!61929 () Bool)

(declare-fun e!167533 () Bool)

(assert (=> d!61929 e!167533))

(declare-fun res!126396 () Bool)

(assert (=> d!61929 (=> res!126396 e!167533)))

(declare-fun lt!130140 () Bool)

(assert (=> d!61929 (= res!126396 (not lt!130140))))

(declare-fun lt!130143 () Bool)

(assert (=> d!61929 (= lt!130140 lt!130143)))

(declare-fun lt!130141 () Unit!8014)

(declare-fun e!167534 () Unit!8014)

(assert (=> d!61929 (= lt!130141 e!167534)))

(declare-fun c!43786 () Bool)

(assert (=> d!61929 (= c!43786 lt!130143)))

(assert (=> d!61929 (= lt!130143 (containsKey!304 (toList!1943 lt!129972) (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61929 (= (contains!1877 lt!129972 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)) lt!130140)))

(declare-fun b!258454 () Bool)

(declare-fun lt!130142 () Unit!8014)

(assert (=> b!258454 (= e!167534 lt!130142)))

(assert (=> b!258454 (= lt!130142 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!129972) (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!258454 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129972) (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!258455 () Bool)

(declare-fun Unit!8029 () Unit!8014)

(assert (=> b!258455 (= e!167534 Unit!8029)))

(declare-fun b!258456 () Bool)

(assert (=> b!258456 (= e!167533 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129972) (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!61929 c!43786) b!258454))

(assert (= (and d!61929 (not c!43786)) b!258455))

(assert (= (and d!61929 (not res!126396)) b!258456))

(assert (=> d!61929 m!273435))

(declare-fun m!273861 () Bool)

(assert (=> d!61929 m!273861))

(assert (=> b!258454 m!273435))

(declare-fun m!273863 () Bool)

(assert (=> b!258454 m!273863))

(assert (=> b!258454 m!273435))

(declare-fun m!273865 () Bool)

(assert (=> b!258454 m!273865))

(assert (=> b!258454 m!273865))

(declare-fun m!273867 () Bool)

(assert (=> b!258454 m!273867))

(assert (=> b!258456 m!273435))

(assert (=> b!258456 m!273865))

(assert (=> b!258456 m!273865))

(assert (=> b!258456 m!273867))

(assert (=> b!258106 d!61929))

(declare-fun d!61931 () Bool)

(declare-fun e!167535 () Bool)

(assert (=> d!61931 e!167535))

(declare-fun res!126397 () Bool)

(assert (=> d!61931 (=> res!126397 e!167535)))

(declare-fun lt!130144 () Bool)

(assert (=> d!61931 (= res!126397 (not lt!130144))))

(declare-fun lt!130147 () Bool)

(assert (=> d!61931 (= lt!130144 lt!130147)))

(declare-fun lt!130145 () Unit!8014)

(declare-fun e!167536 () Unit!8014)

(assert (=> d!61931 (= lt!130145 e!167536)))

(declare-fun c!43787 () Bool)

(assert (=> d!61931 (= c!43787 lt!130147)))

(assert (=> d!61931 (= lt!130147 (containsKey!304 (toList!1943 lt!130003) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!61931 (= (contains!1877 lt!130003 #b1000000000000000000000000000000000000000000000000000000000000000) lt!130144)))

(declare-fun b!258457 () Bool)

(declare-fun lt!130146 () Unit!8014)

(assert (=> b!258457 (= e!167536 lt!130146)))

(assert (=> b!258457 (= lt!130146 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!130003) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258457 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130003) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258458 () Bool)

(declare-fun Unit!8030 () Unit!8014)

(assert (=> b!258458 (= e!167536 Unit!8030)))

(declare-fun b!258459 () Bool)

(assert (=> b!258459 (= e!167535 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130003) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61931 c!43787) b!258457))

(assert (= (and d!61931 (not c!43787)) b!258458))

(assert (= (and d!61931 (not res!126397)) b!258459))

(declare-fun m!273869 () Bool)

(assert (=> d!61931 m!273869))

(declare-fun m!273871 () Bool)

(assert (=> b!258457 m!273871))

(declare-fun m!273873 () Bool)

(assert (=> b!258457 m!273873))

(assert (=> b!258457 m!273873))

(declare-fun m!273875 () Bool)

(assert (=> b!258457 m!273875))

(assert (=> b!258459 m!273873))

(assert (=> b!258459 m!273873))

(assert (=> b!258459 m!273875))

(assert (=> bm!24549 d!61931))

(assert (=> b!258283 d!61809))

(declare-fun d!61933 () Bool)

(assert (=> d!61933 (= (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) index!297)) (and (not (= (select (arr!5944 (_keys!6931 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5944 (_keys!6931 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258173 d!61933))

(declare-fun d!61935 () Bool)

(assert (=> d!61935 (arrayNoDuplicates!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000000 Nil!3829)))

(assert (=> d!61935 true))

(declare-fun _$65!86 () Unit!8014)

(assert (=> d!61935 (= (choose!41 (_keys!6931 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3829) _$65!86)))

(declare-fun bs!9105 () Bool)

(assert (= bs!9105 d!61935))

(assert (=> bs!9105 m!273319))

(assert (=> bs!9105 m!273625))

(assert (=> d!61831 d!61935))

(declare-fun d!61937 () Bool)

(assert (=> d!61937 (= (inRange!0 (index!6907 lt!130062) (mask!11058 thiss!1504)) (and (bvsge (index!6907 lt!130062) #b00000000000000000000000000000000) (bvslt (index!6907 lt!130062) (bvadd (mask!11058 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!258290 d!61937))

(declare-fun d!61939 () Bool)

(declare-fun e!167537 () Bool)

(assert (=> d!61939 e!167537))

(declare-fun res!126398 () Bool)

(assert (=> d!61939 (=> (not res!126398) (not e!167537))))

(declare-fun lt!130151 () ListLongMap!3855)

(assert (=> d!61939 (= res!126398 (contains!1877 lt!130151 (_1!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(declare-fun lt!130150 () List!3831)

(assert (=> d!61939 (= lt!130151 (ListLongMap!3856 lt!130150))))

(declare-fun lt!130148 () Unit!8014)

(declare-fun lt!130149 () Unit!8014)

(assert (=> d!61939 (= lt!130148 lt!130149)))

(assert (=> d!61939 (= (getValueByKey!312 lt!130150 (_1!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))) (Some!317 (_2!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(assert (=> d!61939 (= lt!130149 (lemmaContainsTupThenGetReturnValue!170 lt!130150 (_1!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (_2!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(assert (=> d!61939 (= lt!130150 (insertStrictlySorted!172 (toList!1943 (ite c!43701 call!24547 (ite c!43700 call!24545 call!24544))) (_1!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (_2!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(assert (=> d!61939 (= (+!687 (ite c!43701 call!24547 (ite c!43700 call!24545 call!24544)) (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) lt!130151)))

(declare-fun b!258460 () Bool)

(declare-fun res!126399 () Bool)

(assert (=> b!258460 (=> (not res!126399) (not e!167537))))

(assert (=> b!258460 (= res!126399 (= (getValueByKey!312 (toList!1943 lt!130151) (_1!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))) (Some!317 (_2!2474 (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))))

(declare-fun b!258461 () Bool)

(assert (=> b!258461 (= e!167537 (contains!1879 (toList!1943 lt!130151) (ite (or c!43701 c!43700) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (= (and d!61939 res!126398) b!258460))

(assert (= (and b!258460 res!126399) b!258461))

(declare-fun m!273877 () Bool)

(assert (=> d!61939 m!273877))

(declare-fun m!273879 () Bool)

(assert (=> d!61939 m!273879))

(declare-fun m!273881 () Bool)

(assert (=> d!61939 m!273881))

(declare-fun m!273883 () Bool)

(assert (=> d!61939 m!273883))

(declare-fun m!273885 () Bool)

(assert (=> b!258460 m!273885))

(declare-fun m!273887 () Bool)

(assert (=> b!258461 m!273887))

(assert (=> bm!24541 d!61939))

(assert (=> b!258060 d!61917))

(assert (=> b!258060 d!61919))

(declare-fun b!258462 () Bool)

(declare-fun e!167538 () Bool)

(assert (=> b!258462 (= e!167538 (contains!1880 Nil!3829 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!61941 () Bool)

(declare-fun res!126400 () Bool)

(declare-fun e!167541 () Bool)

(assert (=> d!61941 (=> res!126400 e!167541)))

(assert (=> d!61941 (= res!126400 (bvsge #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))

(assert (=> d!61941 (= (arrayNoDuplicates!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000000 Nil!3829) e!167541)))

(declare-fun b!258463 () Bool)

(declare-fun e!167540 () Bool)

(declare-fun e!167539 () Bool)

(assert (=> b!258463 (= e!167540 e!167539)))

(declare-fun c!43788 () Bool)

(assert (=> b!258463 (= c!43788 (validKeyInArray!0 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!258464 () Bool)

(assert (=> b!258464 (= e!167541 e!167540)))

(declare-fun res!126401 () Bool)

(assert (=> b!258464 (=> (not res!126401) (not e!167540))))

(assert (=> b!258464 (= res!126401 (not e!167538))))

(declare-fun res!126402 () Bool)

(assert (=> b!258464 (=> (not res!126402) (not e!167538))))

(assert (=> b!258464 (= res!126402 (validKeyInArray!0 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!258465 () Bool)

(declare-fun call!24589 () Bool)

(assert (=> b!258465 (= e!167539 call!24589)))

(declare-fun bm!24586 () Bool)

(assert (=> bm!24586 (= call!24589 (arrayNoDuplicates!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43788 (Cons!3828 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000) Nil!3829) Nil!3829)))))

(declare-fun b!258466 () Bool)

(assert (=> b!258466 (= e!167539 call!24589)))

(assert (= (and d!61941 (not res!126400)) b!258464))

(assert (= (and b!258464 res!126402) b!258462))

(assert (= (and b!258464 res!126401) b!258463))

(assert (= (and b!258463 c!43788) b!258466))

(assert (= (and b!258463 (not c!43788)) b!258465))

(assert (= (or b!258466 b!258465) bm!24586))

(declare-fun m!273889 () Bool)

(assert (=> b!258462 m!273889))

(assert (=> b!258462 m!273889))

(declare-fun m!273891 () Bool)

(assert (=> b!258462 m!273891))

(assert (=> b!258463 m!273889))

(assert (=> b!258463 m!273889))

(declare-fun m!273893 () Bool)

(assert (=> b!258463 m!273893))

(assert (=> b!258464 m!273889))

(assert (=> b!258464 m!273889))

(assert (=> b!258464 m!273893))

(assert (=> bm!24586 m!273889))

(declare-fun m!273895 () Bool)

(assert (=> bm!24586 m!273895))

(assert (=> b!258250 d!61941))

(declare-fun b!258485 () Bool)

(declare-fun lt!130156 () SeekEntryResult!1184)

(assert (=> b!258485 (and (bvsge (index!6908 lt!130156) #b00000000000000000000000000000000) (bvslt (index!6908 lt!130156) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun res!126411 () Bool)

(assert (=> b!258485 (= res!126411 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6908 lt!130156)) key!932))))

(declare-fun e!167553 () Bool)

(assert (=> b!258485 (=> res!126411 e!167553)))

(declare-fun e!167556 () Bool)

(assert (=> b!258485 (= e!167556 e!167553)))

(declare-fun b!258486 () Bool)

(declare-fun e!167552 () SeekEntryResult!1184)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!258486 (= e!167552 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!11058 thiss!1504)) #b00000000000000000000000000000000 (mask!11058 thiss!1504)) key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(declare-fun b!258487 () Bool)

(declare-fun e!167555 () SeekEntryResult!1184)

(assert (=> b!258487 (= e!167555 e!167552)))

(declare-fun c!43796 () Bool)

(declare-fun lt!130157 () (_ BitVec 64))

(assert (=> b!258487 (= c!43796 (or (= lt!130157 key!932) (= (bvadd lt!130157 lt!130157) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!258488 () Bool)

(assert (=> b!258488 (and (bvsge (index!6908 lt!130156) #b00000000000000000000000000000000) (bvslt (index!6908 lt!130156) (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> b!258488 (= e!167553 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6908 lt!130156)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258489 () Bool)

(assert (=> b!258489 (= e!167552 (Intermediate!1184 false (toIndex!0 key!932 (mask!11058 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!258490 () Bool)

(assert (=> b!258490 (= e!167555 (Intermediate!1184 true (toIndex!0 key!932 (mask!11058 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun d!61943 () Bool)

(declare-fun e!167554 () Bool)

(assert (=> d!61943 e!167554))

(declare-fun c!43797 () Bool)

(assert (=> d!61943 (= c!43797 (and ((_ is Intermediate!1184) lt!130156) (undefined!1996 lt!130156)))))

(assert (=> d!61943 (= lt!130156 e!167555)))

(declare-fun c!43795 () Bool)

(assert (=> d!61943 (= c!43795 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(assert (=> d!61943 (= lt!130157 (select (arr!5944 (_keys!6931 thiss!1504)) (toIndex!0 key!932 (mask!11058 thiss!1504))))))

(assert (=> d!61943 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61943 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11058 thiss!1504)) key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)) lt!130156)))

(declare-fun b!258491 () Bool)

(assert (=> b!258491 (= e!167554 e!167556)))

(declare-fun res!126410 () Bool)

(assert (=> b!258491 (= res!126410 (and ((_ is Intermediate!1184) lt!130156) (not (undefined!1996 lt!130156)) (bvslt (x!25052 lt!130156) #b01111111111111111111111111111110) (bvsge (x!25052 lt!130156) #b00000000000000000000000000000000) (bvsge (x!25052 lt!130156) #b00000000000000000000000000000000)))))

(assert (=> b!258491 (=> (not res!126410) (not e!167556))))

(declare-fun b!258492 () Bool)

(assert (=> b!258492 (= e!167554 (bvsge (x!25052 lt!130156) #b01111111111111111111111111111110))))

(declare-fun b!258493 () Bool)

(assert (=> b!258493 (and (bvsge (index!6908 lt!130156) #b00000000000000000000000000000000) (bvslt (index!6908 lt!130156) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun res!126409 () Bool)

(assert (=> b!258493 (= res!126409 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6908 lt!130156)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258493 (=> res!126409 e!167553)))

(assert (= (and d!61943 c!43795) b!258490))

(assert (= (and d!61943 (not c!43795)) b!258487))

(assert (= (and b!258487 c!43796) b!258489))

(assert (= (and b!258487 (not c!43796)) b!258486))

(assert (= (and d!61943 c!43797) b!258492))

(assert (= (and d!61943 (not c!43797)) b!258491))

(assert (= (and b!258491 res!126410) b!258485))

(assert (= (and b!258485 (not res!126411)) b!258493))

(assert (= (and b!258493 (not res!126409)) b!258488))

(declare-fun m!273897 () Bool)

(assert (=> b!258485 m!273897))

(assert (=> b!258486 m!273491))

(declare-fun m!273899 () Bool)

(assert (=> b!258486 m!273899))

(assert (=> b!258486 m!273899))

(declare-fun m!273901 () Bool)

(assert (=> b!258486 m!273901))

(assert (=> d!61943 m!273491))

(declare-fun m!273903 () Bool)

(assert (=> d!61943 m!273903))

(assert (=> d!61943 m!273329))

(assert (=> b!258493 m!273897))

(assert (=> b!258488 m!273897))

(assert (=> d!61801 d!61943))

(declare-fun d!61945 () Bool)

(declare-fun lt!130163 () (_ BitVec 32))

(declare-fun lt!130162 () (_ BitVec 32))

(assert (=> d!61945 (= lt!130163 (bvmul (bvxor lt!130162 (bvlshr lt!130162 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!61945 (= lt!130162 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!61945 (and (bvsge (mask!11058 thiss!1504) #b00000000000000000000000000000000) (let ((res!126412 (let ((h!4493 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!25070 (bvmul (bvxor h!4493 (bvlshr h!4493 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!25070 (bvlshr x!25070 #b00000000000000000000000000001101)) (mask!11058 thiss!1504)))))) (and (bvslt res!126412 (bvadd (mask!11058 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!126412 #b00000000000000000000000000000000))))))

(assert (=> d!61945 (= (toIndex!0 key!932 (mask!11058 thiss!1504)) (bvand (bvxor lt!130163 (bvlshr lt!130163 #b00000000000000000000000000001101)) (mask!11058 thiss!1504)))))

(assert (=> d!61801 d!61945))

(assert (=> d!61801 d!61813))

(declare-fun b!258494 () Bool)

(declare-fun e!167558 () (_ BitVec 32))

(declare-fun e!167557 () (_ BitVec 32))

(assert (=> b!258494 (= e!167558 e!167557)))

(declare-fun c!43799 () Bool)

(assert (=> b!258494 (= c!43799 (validKeyInArray!0 (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!258495 () Bool)

(declare-fun call!24590 () (_ BitVec 32))

(assert (=> b!258495 (= e!167557 call!24590)))

(declare-fun bm!24587 () Bool)

(assert (=> bm!24587 (= call!24590 (arrayCountValidKeys!0 lt!129842 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258496 () Bool)

(assert (=> b!258496 (= e!167558 #b00000000000000000000000000000000)))

(declare-fun b!258497 () Bool)

(assert (=> b!258497 (= e!167557 (bvadd #b00000000000000000000000000000001 call!24590))))

(declare-fun d!61947 () Bool)

(declare-fun lt!130164 () (_ BitVec 32))

(assert (=> d!61947 (and (bvsge lt!130164 #b00000000000000000000000000000000) (bvsle lt!130164 (bvsub (size!6291 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!61947 (= lt!130164 e!167558)))

(declare-fun c!43798 () Bool)

(assert (=> d!61947 (= c!43798 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61947 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6291 (_keys!6931 thiss!1504)) (size!6291 lt!129842)))))

(assert (=> d!61947 (= (arrayCountValidKeys!0 lt!129842 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))) lt!130164)))

(assert (= (and d!61947 c!43798) b!258496))

(assert (= (and d!61947 (not c!43798)) b!258494))

(assert (= (and b!258494 c!43799) b!258497))

(assert (= (and b!258494 (not c!43799)) b!258495))

(assert (= (or b!258497 b!258495) bm!24587))

(assert (=> b!258494 m!273807))

(assert (=> b!258494 m!273807))

(assert (=> b!258494 m!273825))

(declare-fun m!273905 () Bool)

(assert (=> bm!24587 m!273905))

(assert (=> bm!24559 d!61947))

(declare-fun b!258498 () Bool)

(declare-fun e!167559 () Option!318)

(assert (=> b!258498 (= e!167559 (Some!317 (_2!2474 (h!4489 (toList!1943 lt!130018)))))))

(declare-fun d!61949 () Bool)

(declare-fun c!43800 () Bool)

(assert (=> d!61949 (= c!43800 (and ((_ is Cons!3827) (toList!1943 lt!130018)) (= (_1!2474 (h!4489 (toList!1943 lt!130018))) (_1!2474 (tuple2!4929 key!932 v!346)))))))

(assert (=> d!61949 (= (getValueByKey!312 (toList!1943 lt!130018) (_1!2474 (tuple2!4929 key!932 v!346))) e!167559)))

(declare-fun b!258499 () Bool)

(declare-fun e!167560 () Option!318)

(assert (=> b!258499 (= e!167559 e!167560)))

(declare-fun c!43801 () Bool)

(assert (=> b!258499 (= c!43801 (and ((_ is Cons!3827) (toList!1943 lt!130018)) (not (= (_1!2474 (h!4489 (toList!1943 lt!130018))) (_1!2474 (tuple2!4929 key!932 v!346))))))))

(declare-fun b!258500 () Bool)

(assert (=> b!258500 (= e!167560 (getValueByKey!312 (t!8902 (toList!1943 lt!130018)) (_1!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun b!258501 () Bool)

(assert (=> b!258501 (= e!167560 None!316)))

(assert (= (and d!61949 c!43800) b!258498))

(assert (= (and d!61949 (not c!43800)) b!258499))

(assert (= (and b!258499 c!43801) b!258500))

(assert (= (and b!258499 (not c!43801)) b!258501))

(declare-fun m!273907 () Bool)

(assert (=> b!258500 m!273907))

(assert (=> b!258181 d!61949))

(declare-fun b!258502 () Bool)

(declare-fun e!167562 () (_ BitVec 32))

(declare-fun e!167561 () (_ BitVec 32))

(assert (=> b!258502 (= e!167562 e!167561)))

(declare-fun c!43803 () Bool)

(assert (=> b!258502 (= c!43803 (validKeyInArray!0 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!258503 () Bool)

(declare-fun call!24591 () (_ BitVec 32))

(assert (=> b!258503 (= e!167561 call!24591)))

(declare-fun bm!24588 () Bool)

(assert (=> bm!24588 (= call!24591 (arrayCountValidKeys!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 (_keys!6931 thiss!1504))))))

(declare-fun b!258504 () Bool)

(assert (=> b!258504 (= e!167562 #b00000000000000000000000000000000)))

(declare-fun b!258505 () Bool)

(assert (=> b!258505 (= e!167561 (bvadd #b00000000000000000000000000000001 call!24591))))

(declare-fun d!61951 () Bool)

(declare-fun lt!130165 () (_ BitVec 32))

(assert (=> d!61951 (and (bvsge lt!130165 #b00000000000000000000000000000000) (bvsle lt!130165 (bvsub (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> d!61951 (= lt!130165 e!167562)))

(declare-fun c!43802 () Bool)

(assert (=> d!61951 (= c!43802 (bvsge #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!61951 (and (bvsle #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6291 (_keys!6931 thiss!1504)) (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))

(assert (=> d!61951 (= (arrayCountValidKeys!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) lt!130165)))

(assert (= (and d!61951 c!43802) b!258504))

(assert (= (and d!61951 (not c!43802)) b!258502))

(assert (= (and b!258502 c!43803) b!258505))

(assert (= (and b!258502 (not c!43803)) b!258503))

(assert (= (or b!258505 b!258503) bm!24588))

(assert (=> b!258502 m!273889))

(assert (=> b!258502 m!273889))

(assert (=> b!258502 m!273893))

(declare-fun m!273909 () Bool)

(assert (=> bm!24588 m!273909))

(assert (=> b!258176 d!61951))

(assert (=> b!258176 d!61809))

(declare-fun d!61953 () Bool)

(declare-fun res!126417 () Bool)

(declare-fun e!167567 () Bool)

(assert (=> d!61953 (=> res!126417 e!167567)))

(assert (=> d!61953 (= res!126417 (and ((_ is Cons!3827) (toList!1943 lt!129847)) (= (_1!2474 (h!4489 (toList!1943 lt!129847))) key!932)))))

(assert (=> d!61953 (= (containsKey!304 (toList!1943 lt!129847) key!932) e!167567)))

(declare-fun b!258510 () Bool)

(declare-fun e!167568 () Bool)

(assert (=> b!258510 (= e!167567 e!167568)))

(declare-fun res!126418 () Bool)

(assert (=> b!258510 (=> (not res!126418) (not e!167568))))

(assert (=> b!258510 (= res!126418 (and (or (not ((_ is Cons!3827) (toList!1943 lt!129847))) (bvsle (_1!2474 (h!4489 (toList!1943 lt!129847))) key!932)) ((_ is Cons!3827) (toList!1943 lt!129847)) (bvslt (_1!2474 (h!4489 (toList!1943 lt!129847))) key!932)))))

(declare-fun b!258511 () Bool)

(assert (=> b!258511 (= e!167568 (containsKey!304 (t!8902 (toList!1943 lt!129847)) key!932))))

(assert (= (and d!61953 (not res!126417)) b!258510))

(assert (= (and b!258510 res!126418) b!258511))

(declare-fun m!273911 () Bool)

(assert (=> b!258511 m!273911))

(assert (=> d!61797 d!61953))

(declare-fun d!61955 () Bool)

(assert (=> d!61955 (= (apply!255 (+!687 lt!129995 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))) lt!129993) (apply!255 lt!129995 lt!129993))))

(declare-fun lt!130166 () Unit!8014)

(assert (=> d!61955 (= lt!130166 (choose!1257 lt!129995 lt!129992 (minValue!4602 thiss!1504) lt!129993))))

(declare-fun e!167569 () Bool)

(assert (=> d!61955 e!167569))

(declare-fun res!126419 () Bool)

(assert (=> d!61955 (=> (not res!126419) (not e!167569))))

(assert (=> d!61955 (= res!126419 (contains!1877 lt!129995 lt!129993))))

(assert (=> d!61955 (= (addApplyDifferent!231 lt!129995 lt!129992 (minValue!4602 thiss!1504) lt!129993) lt!130166)))

(declare-fun b!258512 () Bool)

(assert (=> b!258512 (= e!167569 (not (= lt!129993 lt!129992)))))

(assert (= (and d!61955 res!126419) b!258512))

(assert (=> d!61955 m!273525))

(assert (=> d!61955 m!273527))

(declare-fun m!273913 () Bool)

(assert (=> d!61955 m!273913))

(declare-fun m!273915 () Bool)

(assert (=> d!61955 m!273915))

(assert (=> d!61955 m!273525))

(assert (=> d!61955 m!273517))

(assert (=> b!258157 d!61955))

(declare-fun d!61957 () Bool)

(declare-fun e!167571 () Bool)

(assert (=> d!61957 e!167571))

(declare-fun res!126423 () Bool)

(assert (=> d!61957 (=> (not res!126423) (not e!167571))))

(declare-fun lt!130168 () ListLongMap!3855)

(assert (=> d!61957 (= res!126423 (not (contains!1877 lt!130168 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun e!167574 () ListLongMap!3855)

(assert (=> d!61957 (= lt!130168 e!167574)))

(declare-fun c!43807 () Bool)

(assert (=> d!61957 (= c!43807 (bvsge #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(assert (=> d!61957 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61957 (= (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) lt!130168)))

(declare-fun call!24592 () ListLongMap!3855)

(declare-fun bm!24589 () Bool)

(assert (=> bm!24589 (= call!24592 (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4761 thiss!1504)))))

(declare-fun b!258513 () Bool)

(declare-fun e!167575 () Bool)

(declare-fun e!167570 () Bool)

(assert (=> b!258513 (= e!167575 e!167570)))

(declare-fun c!43805 () Bool)

(assert (=> b!258513 (= c!43805 (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(declare-fun b!258514 () Bool)

(assert (=> b!258514 (= e!167574 (ListLongMap!3856 Nil!3828))))

(declare-fun b!258515 () Bool)

(assert (=> b!258515 (= e!167571 e!167575)))

(declare-fun c!43804 () Bool)

(declare-fun e!167573 () Bool)

(assert (=> b!258515 (= c!43804 e!167573)))

(declare-fun res!126420 () Bool)

(assert (=> b!258515 (=> (not res!126420) (not e!167573))))

(assert (=> b!258515 (= res!126420 (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(declare-fun b!258516 () Bool)

(declare-fun e!167572 () Bool)

(assert (=> b!258516 (= e!167575 e!167572)))

(assert (=> b!258516 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(declare-fun res!126421 () Bool)

(assert (=> b!258516 (= res!126421 (contains!1877 lt!130168 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(assert (=> b!258516 (=> (not res!126421) (not e!167572))))

(declare-fun b!258517 () Bool)

(declare-fun res!126422 () Bool)

(assert (=> b!258517 (=> (not res!126422) (not e!167571))))

(assert (=> b!258517 (= res!126422 (not (contains!1877 lt!130168 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!258518 () Bool)

(assert (=> b!258518 (= e!167570 (isEmpty!537 lt!130168))))

(declare-fun b!258519 () Bool)

(declare-fun e!167576 () ListLongMap!3855)

(assert (=> b!258519 (= e!167576 call!24592)))

(declare-fun b!258520 () Bool)

(assert (=> b!258520 (= e!167570 (= lt!130168 (getCurrentListMapNoExtraKeys!574 lt!129842 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4761 thiss!1504))))))

(declare-fun b!258521 () Bool)

(assert (=> b!258521 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 lt!129842)))))

(assert (=> b!258521 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6290 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))))))))

(assert (=> b!258521 (= e!167572 (= (apply!255 lt!130168 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)) (get!3057 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!258522 () Bool)

(declare-fun lt!130171 () Unit!8014)

(declare-fun lt!130173 () Unit!8014)

(assert (=> b!258522 (= lt!130171 lt!130173)))

(declare-fun lt!130170 () (_ BitVec 64))

(declare-fun lt!130169 () (_ BitVec 64))

(declare-fun lt!130167 () V!8451)

(declare-fun lt!130172 () ListLongMap!3855)

(assert (=> b!258522 (not (contains!1877 (+!687 lt!130172 (tuple2!4929 lt!130169 lt!130167)) lt!130170))))

(assert (=> b!258522 (= lt!130173 (addStillNotContains!127 lt!130172 lt!130169 lt!130167 lt!130170))))

(assert (=> b!258522 (= lt!130170 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!258522 (= lt!130167 (get!3057 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!258522 (= lt!130169 (select (arr!5944 lt!129842) #b00000000000000000000000000000000))))

(assert (=> b!258522 (= lt!130172 call!24592)))

(assert (=> b!258522 (= e!167576 (+!687 call!24592 (tuple2!4929 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) (get!3057 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!258523 () Bool)

(assert (=> b!258523 (= e!167573 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(assert (=> b!258523 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!258524 () Bool)

(assert (=> b!258524 (= e!167574 e!167576)))

(declare-fun c!43806 () Bool)

(assert (=> b!258524 (= c!43806 (validKeyInArray!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(assert (= (and d!61957 c!43807) b!258514))

(assert (= (and d!61957 (not c!43807)) b!258524))

(assert (= (and b!258524 c!43806) b!258522))

(assert (= (and b!258524 (not c!43806)) b!258519))

(assert (= (or b!258522 b!258519) bm!24589))

(assert (= (and d!61957 res!126423) b!258517))

(assert (= (and b!258517 res!126422) b!258515))

(assert (= (and b!258515 res!126420) b!258523))

(assert (= (and b!258515 c!43804) b!258516))

(assert (= (and b!258515 (not c!43804)) b!258513))

(assert (= (and b!258516 res!126421) b!258521))

(assert (= (and b!258513 c!43805) b!258520))

(assert (= (and b!258513 (not c!43805)) b!258518))

(declare-fun b_lambda!8237 () Bool)

(assert (=> (not b_lambda!8237) (not b!258521)))

(assert (=> b!258521 t!8907))

(declare-fun b_and!13845 () Bool)

(assert (= b_and!13843 (and (=> t!8907 result!5399) b_and!13845)))

(declare-fun b_lambda!8239 () Bool)

(assert (=> (not b_lambda!8239) (not b!258522)))

(assert (=> b!258522 t!8907))

(declare-fun b_and!13847 () Bool)

(assert (= b_and!13845 (and (=> t!8907 result!5399) b_and!13847)))

(declare-fun m!273917 () Bool)

(assert (=> bm!24589 m!273917))

(assert (=> b!258524 m!273507))

(assert (=> b!258524 m!273507))

(assert (=> b!258524 m!273511))

(declare-fun m!273919 () Bool)

(assert (=> b!258518 m!273919))

(declare-fun m!273921 () Bool)

(assert (=> b!258522 m!273921))

(assert (=> b!258522 m!273553))

(declare-fun m!273923 () Bool)

(assert (=> b!258522 m!273923))

(assert (=> b!258522 m!273923))

(declare-fun m!273925 () Bool)

(assert (=> b!258522 m!273925))

(assert (=> b!258522 m!273507))

(assert (=> b!258522 m!273553))

(assert (=> b!258522 m!273483))

(assert (=> b!258522 m!273555))

(assert (=> b!258522 m!273483))

(declare-fun m!273927 () Bool)

(assert (=> b!258522 m!273927))

(declare-fun m!273929 () Bool)

(assert (=> d!61957 m!273929))

(assert (=> d!61957 m!273329))

(assert (=> b!258523 m!273507))

(assert (=> b!258523 m!273507))

(assert (=> b!258523 m!273511))

(assert (=> b!258520 m!273917))

(assert (=> b!258521 m!273553))

(assert (=> b!258521 m!273507))

(assert (=> b!258521 m!273553))

(assert (=> b!258521 m!273483))

(assert (=> b!258521 m!273555))

(assert (=> b!258521 m!273507))

(declare-fun m!273931 () Bool)

(assert (=> b!258521 m!273931))

(assert (=> b!258521 m!273483))

(declare-fun m!273933 () Bool)

(assert (=> b!258517 m!273933))

(assert (=> b!258516 m!273507))

(assert (=> b!258516 m!273507))

(declare-fun m!273935 () Bool)

(assert (=> b!258516 m!273935))

(assert (=> b!258157 d!61957))

(declare-fun d!61959 () Bool)

(assert (=> d!61959 (= (apply!255 (+!687 lt!129995 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))) lt!129993) (get!3058 (getValueByKey!312 (toList!1943 (+!687 lt!129995 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504)))) lt!129993)))))

(declare-fun bs!9106 () Bool)

(assert (= bs!9106 d!61959))

(declare-fun m!273937 () Bool)

(assert (=> bs!9106 m!273937))

(assert (=> bs!9106 m!273937))

(declare-fun m!273939 () Bool)

(assert (=> bs!9106 m!273939))

(assert (=> b!258157 d!61959))

(declare-fun d!61961 () Bool)

(assert (=> d!61961 (contains!1877 (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))) lt!129987)))

(declare-fun lt!130174 () Unit!8014)

(assert (=> d!61961 (= lt!130174 (choose!1256 lt!129991 lt!130000 (zeroValue!4602 thiss!1504) lt!129987))))

(assert (=> d!61961 (contains!1877 lt!129991 lt!129987)))

(assert (=> d!61961 (= (addStillContains!231 lt!129991 lt!130000 (zeroValue!4602 thiss!1504) lt!129987) lt!130174)))

(declare-fun bs!9107 () Bool)

(assert (= bs!9107 d!61961))

(assert (=> bs!9107 m!273529))

(assert (=> bs!9107 m!273529))

(assert (=> bs!9107 m!273531))

(declare-fun m!273941 () Bool)

(assert (=> bs!9107 m!273941))

(declare-fun m!273943 () Bool)

(assert (=> bs!9107 m!273943))

(assert (=> b!258157 d!61961))

(declare-fun d!61963 () Bool)

(declare-fun e!167577 () Bool)

(assert (=> d!61963 e!167577))

(declare-fun res!126424 () Bool)

(assert (=> d!61963 (=> (not res!126424) (not e!167577))))

(declare-fun lt!130178 () ListLongMap!3855)

(assert (=> d!61963 (= res!126424 (contains!1877 lt!130178 (_1!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504)))))))

(declare-fun lt!130177 () List!3831)

(assert (=> d!61963 (= lt!130178 (ListLongMap!3856 lt!130177))))

(declare-fun lt!130175 () Unit!8014)

(declare-fun lt!130176 () Unit!8014)

(assert (=> d!61963 (= lt!130175 lt!130176)))

(assert (=> d!61963 (= (getValueByKey!312 lt!130177 (_1!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61963 (= lt!130176 (lemmaContainsTupThenGetReturnValue!170 lt!130177 (_1!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61963 (= lt!130177 (insertStrictlySorted!172 (toList!1943 lt!129999) (_1!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61963 (= (+!687 lt!129999 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))) lt!130178)))

(declare-fun b!258525 () Bool)

(declare-fun res!126425 () Bool)

(assert (=> b!258525 (=> (not res!126425) (not e!167577))))

(assert (=> b!258525 (= res!126425 (= (getValueByKey!312 (toList!1943 lt!130178) (_1!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))))))))

(declare-fun b!258526 () Bool)

(assert (=> b!258526 (= e!167577 (contains!1879 (toList!1943 lt!130178) (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))))))

(assert (= (and d!61963 res!126424) b!258525))

(assert (= (and b!258525 res!126425) b!258526))

(declare-fun m!273945 () Bool)

(assert (=> d!61963 m!273945))

(declare-fun m!273947 () Bool)

(assert (=> d!61963 m!273947))

(declare-fun m!273949 () Bool)

(assert (=> d!61963 m!273949))

(declare-fun m!273951 () Bool)

(assert (=> d!61963 m!273951))

(declare-fun m!273953 () Bool)

(assert (=> b!258525 m!273953))

(declare-fun m!273955 () Bool)

(assert (=> b!258526 m!273955))

(assert (=> b!258157 d!61963))

(declare-fun d!61965 () Bool)

(assert (=> d!61965 (= (apply!255 (+!687 lt!129999 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))) lt!129989) (get!3058 (getValueByKey!312 (toList!1943 (+!687 lt!129999 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504)))) lt!129989)))))

(declare-fun bs!9108 () Bool)

(assert (= bs!9108 d!61965))

(declare-fun m!273957 () Bool)

(assert (=> bs!9108 m!273957))

(assert (=> bs!9108 m!273957))

(declare-fun m!273959 () Bool)

(assert (=> bs!9108 m!273959))

(assert (=> b!258157 d!61965))

(declare-fun d!61967 () Bool)

(declare-fun e!167578 () Bool)

(assert (=> d!61967 e!167578))

(declare-fun res!126426 () Bool)

(assert (=> d!61967 (=> res!126426 e!167578)))

(declare-fun lt!130179 () Bool)

(assert (=> d!61967 (= res!126426 (not lt!130179))))

(declare-fun lt!130182 () Bool)

(assert (=> d!61967 (= lt!130179 lt!130182)))

(declare-fun lt!130180 () Unit!8014)

(declare-fun e!167579 () Unit!8014)

(assert (=> d!61967 (= lt!130180 e!167579)))

(declare-fun c!43808 () Bool)

(assert (=> d!61967 (= c!43808 lt!130182)))

(assert (=> d!61967 (= lt!130182 (containsKey!304 (toList!1943 (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))) lt!129987))))

(assert (=> d!61967 (= (contains!1877 (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))) lt!129987) lt!130179)))

(declare-fun b!258527 () Bool)

(declare-fun lt!130181 () Unit!8014)

(assert (=> b!258527 (= e!167579 lt!130181)))

(assert (=> b!258527 (= lt!130181 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))) lt!129987))))

(assert (=> b!258527 (isDefined!254 (getValueByKey!312 (toList!1943 (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))) lt!129987))))

(declare-fun b!258528 () Bool)

(declare-fun Unit!8031 () Unit!8014)

(assert (=> b!258528 (= e!167579 Unit!8031)))

(declare-fun b!258529 () Bool)

(assert (=> b!258529 (= e!167578 (isDefined!254 (getValueByKey!312 (toList!1943 (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))) lt!129987)))))

(assert (= (and d!61967 c!43808) b!258527))

(assert (= (and d!61967 (not c!43808)) b!258528))

(assert (= (and d!61967 (not res!126426)) b!258529))

(declare-fun m!273961 () Bool)

(assert (=> d!61967 m!273961))

(declare-fun m!273963 () Bool)

(assert (=> b!258527 m!273963))

(declare-fun m!273965 () Bool)

(assert (=> b!258527 m!273965))

(assert (=> b!258527 m!273965))

(declare-fun m!273967 () Bool)

(assert (=> b!258527 m!273967))

(assert (=> b!258529 m!273965))

(assert (=> b!258529 m!273965))

(assert (=> b!258529 m!273967))

(assert (=> b!258157 d!61967))

(declare-fun d!61969 () Bool)

(declare-fun e!167580 () Bool)

(assert (=> d!61969 e!167580))

(declare-fun res!126427 () Bool)

(assert (=> d!61969 (=> (not res!126427) (not e!167580))))

(declare-fun lt!130186 () ListLongMap!3855)

(assert (=> d!61969 (= res!126427 (contains!1877 lt!130186 (_1!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504)))))))

(declare-fun lt!130185 () List!3831)

(assert (=> d!61969 (= lt!130186 (ListLongMap!3856 lt!130185))))

(declare-fun lt!130183 () Unit!8014)

(declare-fun lt!130184 () Unit!8014)

(assert (=> d!61969 (= lt!130183 lt!130184)))

(assert (=> d!61969 (= (getValueByKey!312 lt!130185 (_1!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504)))))))

(assert (=> d!61969 (= lt!130184 (lemmaContainsTupThenGetReturnValue!170 lt!130185 (_1!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504)))))))

(assert (=> d!61969 (= lt!130185 (insertStrictlySorted!172 (toList!1943 lt!129984) (_1!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504)))))))

(assert (=> d!61969 (= (+!687 lt!129984 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))) lt!130186)))

(declare-fun b!258530 () Bool)

(declare-fun res!126428 () Bool)

(assert (=> b!258530 (=> (not res!126428) (not e!167580))))

(assert (=> b!258530 (= res!126428 (= (getValueByKey!312 (toList!1943 lt!130186) (_1!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))))))))

(declare-fun b!258531 () Bool)

(assert (=> b!258531 (= e!167580 (contains!1879 (toList!1943 lt!130186) (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))))))

(assert (= (and d!61969 res!126427) b!258530))

(assert (= (and b!258530 res!126428) b!258531))

(declare-fun m!273969 () Bool)

(assert (=> d!61969 m!273969))

(declare-fun m!273971 () Bool)

(assert (=> d!61969 m!273971))

(declare-fun m!273973 () Bool)

(assert (=> d!61969 m!273973))

(declare-fun m!273975 () Bool)

(assert (=> d!61969 m!273975))

(declare-fun m!273977 () Bool)

(assert (=> b!258530 m!273977))

(declare-fun m!273979 () Bool)

(assert (=> b!258531 m!273979))

(assert (=> b!258157 d!61969))

(declare-fun d!61971 () Bool)

(assert (=> d!61971 (= (apply!255 lt!129999 lt!129989) (get!3058 (getValueByKey!312 (toList!1943 lt!129999) lt!129989)))))

(declare-fun bs!9109 () Bool)

(assert (= bs!9109 d!61971))

(declare-fun m!273981 () Bool)

(assert (=> bs!9109 m!273981))

(assert (=> bs!9109 m!273981))

(declare-fun m!273983 () Bool)

(assert (=> bs!9109 m!273983))

(assert (=> b!258157 d!61971))

(declare-fun d!61973 () Bool)

(assert (=> d!61973 (= (apply!255 (+!687 lt!129999 (tuple2!4929 lt!129988 (zeroValue!4602 thiss!1504))) lt!129989) (apply!255 lt!129999 lt!129989))))

(declare-fun lt!130187 () Unit!8014)

(assert (=> d!61973 (= lt!130187 (choose!1257 lt!129999 lt!129988 (zeroValue!4602 thiss!1504) lt!129989))))

(declare-fun e!167581 () Bool)

(assert (=> d!61973 e!167581))

(declare-fun res!126429 () Bool)

(assert (=> d!61973 (=> (not res!126429) (not e!167581))))

(assert (=> d!61973 (= res!126429 (contains!1877 lt!129999 lt!129989))))

(assert (=> d!61973 (= (addApplyDifferent!231 lt!129999 lt!129988 (zeroValue!4602 thiss!1504) lt!129989) lt!130187)))

(declare-fun b!258532 () Bool)

(assert (=> b!258532 (= e!167581 (not (= lt!129989 lt!129988)))))

(assert (= (and d!61973 res!126429) b!258532))

(assert (=> d!61973 m!273533))

(assert (=> d!61973 m!273535))

(declare-fun m!273985 () Bool)

(assert (=> d!61973 m!273985))

(declare-fun m!273987 () Bool)

(assert (=> d!61973 m!273987))

(assert (=> d!61973 m!273533))

(assert (=> d!61973 m!273521))

(assert (=> b!258157 d!61973))

(declare-fun d!61975 () Bool)

(assert (=> d!61975 (= (apply!255 (+!687 lt!129984 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))) lt!129998) (get!3058 (getValueByKey!312 (toList!1943 (+!687 lt!129984 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504)))) lt!129998)))))

(declare-fun bs!9110 () Bool)

(assert (= bs!9110 d!61975))

(declare-fun m!273989 () Bool)

(assert (=> bs!9110 m!273989))

(assert (=> bs!9110 m!273989))

(declare-fun m!273991 () Bool)

(assert (=> bs!9110 m!273991))

(assert (=> b!258157 d!61975))

(declare-fun d!61977 () Bool)

(assert (=> d!61977 (= (apply!255 lt!129995 lt!129993) (get!3058 (getValueByKey!312 (toList!1943 lt!129995) lt!129993)))))

(declare-fun bs!9111 () Bool)

(assert (= bs!9111 d!61977))

(declare-fun m!273993 () Bool)

(assert (=> bs!9111 m!273993))

(assert (=> bs!9111 m!273993))

(declare-fun m!273995 () Bool)

(assert (=> bs!9111 m!273995))

(assert (=> b!258157 d!61977))

(declare-fun d!61979 () Bool)

(declare-fun e!167582 () Bool)

(assert (=> d!61979 e!167582))

(declare-fun res!126430 () Bool)

(assert (=> d!61979 (=> (not res!126430) (not e!167582))))

(declare-fun lt!130191 () ListLongMap!3855)

(assert (=> d!61979 (= res!126430 (contains!1877 lt!130191 (_1!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504)))))))

(declare-fun lt!130190 () List!3831)

(assert (=> d!61979 (= lt!130191 (ListLongMap!3856 lt!130190))))

(declare-fun lt!130188 () Unit!8014)

(declare-fun lt!130189 () Unit!8014)

(assert (=> d!61979 (= lt!130188 lt!130189)))

(assert (=> d!61979 (= (getValueByKey!312 lt!130190 (_1!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504)))))))

(assert (=> d!61979 (= lt!130189 (lemmaContainsTupThenGetReturnValue!170 lt!130190 (_1!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504)))))))

(assert (=> d!61979 (= lt!130190 (insertStrictlySorted!172 (toList!1943 lt!129995) (_1!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504)))))))

(assert (=> d!61979 (= (+!687 lt!129995 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))) lt!130191)))

(declare-fun b!258533 () Bool)

(declare-fun res!126431 () Bool)

(assert (=> b!258533 (=> (not res!126431) (not e!167582))))

(assert (=> b!258533 (= res!126431 (= (getValueByKey!312 (toList!1943 lt!130191) (_1!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))))))))

(declare-fun b!258534 () Bool)

(assert (=> b!258534 (= e!167582 (contains!1879 (toList!1943 lt!130191) (tuple2!4929 lt!129992 (minValue!4602 thiss!1504))))))

(assert (= (and d!61979 res!126430) b!258533))

(assert (= (and b!258533 res!126431) b!258534))

(declare-fun m!273997 () Bool)

(assert (=> d!61979 m!273997))

(declare-fun m!273999 () Bool)

(assert (=> d!61979 m!273999))

(declare-fun m!274001 () Bool)

(assert (=> d!61979 m!274001))

(declare-fun m!274003 () Bool)

(assert (=> d!61979 m!274003))

(declare-fun m!274005 () Bool)

(assert (=> b!258533 m!274005))

(declare-fun m!274007 () Bool)

(assert (=> b!258534 m!274007))

(assert (=> b!258157 d!61979))

(declare-fun d!61981 () Bool)

(assert (=> d!61981 (= (apply!255 lt!129984 lt!129998) (get!3058 (getValueByKey!312 (toList!1943 lt!129984) lt!129998)))))

(declare-fun bs!9112 () Bool)

(assert (= bs!9112 d!61981))

(declare-fun m!274009 () Bool)

(assert (=> bs!9112 m!274009))

(assert (=> bs!9112 m!274009))

(declare-fun m!274011 () Bool)

(assert (=> bs!9112 m!274011))

(assert (=> b!258157 d!61981))

(declare-fun d!61983 () Bool)

(declare-fun e!167583 () Bool)

(assert (=> d!61983 e!167583))

(declare-fun res!126432 () Bool)

(assert (=> d!61983 (=> (not res!126432) (not e!167583))))

(declare-fun lt!130195 () ListLongMap!3855)

(assert (=> d!61983 (= res!126432 (contains!1877 lt!130195 (_1!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))))))

(declare-fun lt!130194 () List!3831)

(assert (=> d!61983 (= lt!130195 (ListLongMap!3856 lt!130194))))

(declare-fun lt!130192 () Unit!8014)

(declare-fun lt!130193 () Unit!8014)

(assert (=> d!61983 (= lt!130192 lt!130193)))

(assert (=> d!61983 (= (getValueByKey!312 lt!130194 (_1!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61983 (= lt!130193 (lemmaContainsTupThenGetReturnValue!170 lt!130194 (_1!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61983 (= lt!130194 (insertStrictlySorted!172 (toList!1943 lt!129991) (_1!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))))))

(assert (=> d!61983 (= (+!687 lt!129991 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))) lt!130195)))

(declare-fun b!258535 () Bool)

(declare-fun res!126433 () Bool)

(assert (=> b!258535 (=> (not res!126433) (not e!167583))))

(assert (=> b!258535 (= res!126433 (= (getValueByKey!312 (toList!1943 lt!130195) (_1!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))))))))

(declare-fun b!258536 () Bool)

(assert (=> b!258536 (= e!167583 (contains!1879 (toList!1943 lt!130195) (tuple2!4929 lt!130000 (zeroValue!4602 thiss!1504))))))

(assert (= (and d!61983 res!126432) b!258535))

(assert (= (and b!258535 res!126433) b!258536))

(declare-fun m!274013 () Bool)

(assert (=> d!61983 m!274013))

(declare-fun m!274015 () Bool)

(assert (=> d!61983 m!274015))

(declare-fun m!274017 () Bool)

(assert (=> d!61983 m!274017))

(declare-fun m!274019 () Bool)

(assert (=> d!61983 m!274019))

(declare-fun m!274021 () Bool)

(assert (=> b!258535 m!274021))

(declare-fun m!274023 () Bool)

(assert (=> b!258536 m!274023))

(assert (=> b!258157 d!61983))

(declare-fun d!61985 () Bool)

(assert (=> d!61985 (= (apply!255 (+!687 lt!129984 (tuple2!4929 lt!129986 (minValue!4602 thiss!1504))) lt!129998) (apply!255 lt!129984 lt!129998))))

(declare-fun lt!130196 () Unit!8014)

(assert (=> d!61985 (= lt!130196 (choose!1257 lt!129984 lt!129986 (minValue!4602 thiss!1504) lt!129998))))

(declare-fun e!167584 () Bool)

(assert (=> d!61985 e!167584))

(declare-fun res!126434 () Bool)

(assert (=> d!61985 (=> (not res!126434) (not e!167584))))

(assert (=> d!61985 (= res!126434 (contains!1877 lt!129984 lt!129998))))

(assert (=> d!61985 (= (addApplyDifferent!231 lt!129984 lt!129986 (minValue!4602 thiss!1504) lt!129998) lt!130196)))

(declare-fun b!258537 () Bool)

(assert (=> b!258537 (= e!167584 (not (= lt!129998 lt!129986)))))

(assert (= (and d!61985 res!126434) b!258537))

(assert (=> d!61985 m!273513))

(assert (=> d!61985 m!273523))

(declare-fun m!274025 () Bool)

(assert (=> d!61985 m!274025))

(declare-fun m!274027 () Bool)

(assert (=> d!61985 m!274027))

(assert (=> d!61985 m!273513))

(assert (=> d!61985 m!273515))

(assert (=> b!258157 d!61985))

(declare-fun d!61987 () Bool)

(assert (=> d!61987 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258174 d!61987))

(assert (=> d!61803 d!61813))

(declare-fun d!61989 () Bool)

(declare-fun e!167585 () Bool)

(assert (=> d!61989 e!167585))

(declare-fun res!126435 () Bool)

(assert (=> d!61989 (=> (not res!126435) (not e!167585))))

(declare-fun lt!130200 () ListLongMap!3855)

(assert (=> d!61989 (= res!126435 (contains!1877 lt!130200 (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(declare-fun lt!130199 () List!3831)

(assert (=> d!61989 (= lt!130200 (ListLongMap!3856 lt!130199))))

(declare-fun lt!130197 () Unit!8014)

(declare-fun lt!130198 () Unit!8014)

(assert (=> d!61989 (= lt!130197 lt!130198)))

(assert (=> d!61989 (= (getValueByKey!312 lt!130199 (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (=> d!61989 (= lt!130198 (lemmaContainsTupThenGetReturnValue!170 lt!130199 (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (=> d!61989 (= lt!130199 (insertStrictlySorted!172 (toList!1943 call!24553) (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (=> d!61989 (= (+!687 call!24553 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))) lt!130200)))

(declare-fun b!258538 () Bool)

(declare-fun res!126436 () Bool)

(assert (=> b!258538 (=> (not res!126436) (not e!167585))))

(assert (=> b!258538 (= res!126436 (= (getValueByKey!312 (toList!1943 lt!130200) (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(declare-fun b!258539 () Bool)

(assert (=> b!258539 (= e!167585 (contains!1879 (toList!1943 lt!130200) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))

(assert (= (and d!61989 res!126435) b!258538))

(assert (= (and b!258538 res!126436) b!258539))

(declare-fun m!274029 () Bool)

(assert (=> d!61989 m!274029))

(declare-fun m!274031 () Bool)

(assert (=> d!61989 m!274031))

(declare-fun m!274033 () Bool)

(assert (=> d!61989 m!274033))

(declare-fun m!274035 () Bool)

(assert (=> d!61989 m!274035))

(declare-fun m!274037 () Bool)

(assert (=> b!258538 m!274037))

(declare-fun m!274039 () Bool)

(assert (=> b!258539 m!274039))

(assert (=> b!258149 d!61989))

(declare-fun d!61991 () Bool)

(assert (=> d!61991 (= (apply!255 lt!130003 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3058 (getValueByKey!312 (toList!1943 lt!130003) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9113 () Bool)

(assert (= bs!9113 d!61991))

(declare-fun m!274041 () Bool)

(assert (=> bs!9113 m!274041))

(assert (=> bs!9113 m!274041))

(declare-fun m!274043 () Bool)

(assert (=> bs!9113 m!274043))

(assert (=> b!258163 d!61991))

(declare-fun d!61993 () Bool)

(declare-fun e!167586 () Bool)

(assert (=> d!61993 e!167586))

(declare-fun res!126437 () Bool)

(assert (=> d!61993 (=> res!126437 e!167586)))

(declare-fun lt!130201 () Bool)

(assert (=> d!61993 (= res!126437 (not lt!130201))))

(declare-fun lt!130204 () Bool)

(assert (=> d!61993 (= lt!130201 lt!130204)))

(declare-fun lt!130202 () Unit!8014)

(declare-fun e!167587 () Unit!8014)

(assert (=> d!61993 (= lt!130202 e!167587)))

(declare-fun c!43809 () Bool)

(assert (=> d!61993 (= c!43809 lt!130204)))

(assert (=> d!61993 (= lt!130204 (containsKey!304 (toList!1943 lt!130003) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!61993 (= (contains!1877 lt!130003 #b0000000000000000000000000000000000000000000000000000000000000000) lt!130201)))

(declare-fun b!258540 () Bool)

(declare-fun lt!130203 () Unit!8014)

(assert (=> b!258540 (= e!167587 lt!130203)))

(assert (=> b!258540 (= lt!130203 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!130003) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258540 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130003) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258541 () Bool)

(declare-fun Unit!8032 () Unit!8014)

(assert (=> b!258541 (= e!167587 Unit!8032)))

(declare-fun b!258542 () Bool)

(assert (=> b!258542 (= e!167586 (isDefined!254 (getValueByKey!312 (toList!1943 lt!130003) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61993 c!43809) b!258540))

(assert (= (and d!61993 (not c!43809)) b!258541))

(assert (= (and d!61993 (not res!126437)) b!258542))

(declare-fun m!274045 () Bool)

(assert (=> d!61993 m!274045))

(declare-fun m!274047 () Bool)

(assert (=> b!258540 m!274047))

(assert (=> b!258540 m!274041))

(assert (=> b!258540 m!274041))

(declare-fun m!274049 () Bool)

(assert (=> b!258540 m!274049))

(assert (=> b!258542 m!274041))

(assert (=> b!258542 m!274041))

(assert (=> b!258542 m!274049))

(assert (=> bm!24547 d!61993))

(assert (=> bm!24569 d!61817))

(declare-fun d!61995 () Bool)

(assert (=> d!61995 (arrayContainsKey!0 lt!129842 lt!130043 #b00000000000000000000000000000000)))

(declare-fun lt!130205 () Unit!8014)

(assert (=> d!61995 (= lt!130205 (choose!13 lt!129842 lt!130043 #b00000000000000000000000000000000))))

(assert (=> d!61995 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!61995 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129842 lt!130043 #b00000000000000000000000000000000) lt!130205)))

(declare-fun bs!9114 () Bool)

(assert (= bs!9114 d!61995))

(assert (=> bs!9114 m!273619))

(declare-fun m!274051 () Bool)

(assert (=> bs!9114 m!274051))

(assert (=> b!258245 d!61995))

(declare-fun d!61997 () Bool)

(declare-fun res!126438 () Bool)

(declare-fun e!167588 () Bool)

(assert (=> d!61997 (=> res!126438 e!167588)))

(assert (=> d!61997 (= res!126438 (= (select (arr!5944 lt!129842) #b00000000000000000000000000000000) lt!130043))))

(assert (=> d!61997 (= (arrayContainsKey!0 lt!129842 lt!130043 #b00000000000000000000000000000000) e!167588)))

(declare-fun b!258543 () Bool)

(declare-fun e!167589 () Bool)

(assert (=> b!258543 (= e!167588 e!167589)))

(declare-fun res!126439 () Bool)

(assert (=> b!258543 (=> (not res!126439) (not e!167589))))

(assert (=> b!258543 (= res!126439 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 lt!129842)))))

(declare-fun b!258544 () Bool)

(assert (=> b!258544 (= e!167589 (arrayContainsKey!0 lt!129842 lt!130043 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61997 (not res!126438)) b!258543))

(assert (= (and b!258543 res!126439) b!258544))

(assert (=> d!61997 m!273507))

(declare-fun m!274053 () Bool)

(assert (=> b!258544 m!274053))

(assert (=> b!258245 d!61997))

(declare-fun d!61999 () Bool)

(declare-fun lt!130208 () SeekEntryResult!1184)

(assert (=> d!61999 (and (or ((_ is Undefined!1184) lt!130208) (not ((_ is Found!1184) lt!130208)) (and (bvsge (index!6907 lt!130208) #b00000000000000000000000000000000) (bvslt (index!6907 lt!130208) (size!6291 lt!129842)))) (or ((_ is Undefined!1184) lt!130208) ((_ is Found!1184) lt!130208) (not ((_ is MissingZero!1184) lt!130208)) (and (bvsge (index!6906 lt!130208) #b00000000000000000000000000000000) (bvslt (index!6906 lt!130208) (size!6291 lt!129842)))) (or ((_ is Undefined!1184) lt!130208) ((_ is Found!1184) lt!130208) ((_ is MissingZero!1184) lt!130208) (not ((_ is MissingVacant!1184) lt!130208)) (and (bvsge (index!6909 lt!130208) #b00000000000000000000000000000000) (bvslt (index!6909 lt!130208) (size!6291 lt!129842)))) (or ((_ is Undefined!1184) lt!130208) (ite ((_ is Found!1184) lt!130208) (= (select (arr!5944 lt!129842) (index!6907 lt!130208)) (select (arr!5944 lt!129842) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1184) lt!130208) (= (select (arr!5944 lt!129842) (index!6906 lt!130208)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1184) lt!130208) (= (select (arr!5944 lt!129842) (index!6909 lt!130208)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!167592 () SeekEntryResult!1184)

(assert (=> d!61999 (= lt!130208 e!167592)))

(declare-fun c!43810 () Bool)

(declare-fun lt!130206 () SeekEntryResult!1184)

(assert (=> d!61999 (= c!43810 (and ((_ is Intermediate!1184) lt!130206) (undefined!1996 lt!130206)))))

(assert (=> d!61999 (= lt!130206 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) (mask!11058 thiss!1504)) (select (arr!5944 lt!129842) #b00000000000000000000000000000000) lt!129842 (mask!11058 thiss!1504)))))

(assert (=> d!61999 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!61999 (= (seekEntryOrOpen!0 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) lt!129842 (mask!11058 thiss!1504)) lt!130208)))

(declare-fun b!258545 () Bool)

(declare-fun c!43811 () Bool)

(declare-fun lt!130207 () (_ BitVec 64))

(assert (=> b!258545 (= c!43811 (= lt!130207 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!167591 () SeekEntryResult!1184)

(declare-fun e!167590 () SeekEntryResult!1184)

(assert (=> b!258545 (= e!167591 e!167590)))

(declare-fun b!258546 () Bool)

(assert (=> b!258546 (= e!167591 (Found!1184 (index!6908 lt!130206)))))

(declare-fun b!258547 () Bool)

(assert (=> b!258547 (= e!167592 e!167591)))

(assert (=> b!258547 (= lt!130207 (select (arr!5944 lt!129842) (index!6908 lt!130206)))))

(declare-fun c!43812 () Bool)

(assert (=> b!258547 (= c!43812 (= lt!130207 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258548 () Bool)

(assert (=> b!258548 (= e!167590 (MissingZero!1184 (index!6908 lt!130206)))))

(declare-fun b!258549 () Bool)

(assert (=> b!258549 (= e!167592 Undefined!1184)))

(declare-fun b!258550 () Bool)

(assert (=> b!258550 (= e!167590 (seekKeyOrZeroReturnVacant!0 (x!25052 lt!130206) (index!6908 lt!130206) (index!6908 lt!130206) (select (arr!5944 lt!129842) #b00000000000000000000000000000000) lt!129842 (mask!11058 thiss!1504)))))

(assert (= (and d!61999 c!43810) b!258549))

(assert (= (and d!61999 (not c!43810)) b!258547))

(assert (= (and b!258547 c!43812) b!258546))

(assert (= (and b!258547 (not c!43812)) b!258545))

(assert (= (and b!258545 c!43811) b!258548))

(assert (= (and b!258545 (not c!43811)) b!258550))

(declare-fun m!274055 () Bool)

(assert (=> d!61999 m!274055))

(assert (=> d!61999 m!273507))

(declare-fun m!274057 () Bool)

(assert (=> d!61999 m!274057))

(declare-fun m!274059 () Bool)

(assert (=> d!61999 m!274059))

(declare-fun m!274061 () Bool)

(assert (=> d!61999 m!274061))

(assert (=> d!61999 m!273329))

(declare-fun m!274063 () Bool)

(assert (=> d!61999 m!274063))

(assert (=> d!61999 m!273507))

(assert (=> d!61999 m!274055))

(declare-fun m!274065 () Bool)

(assert (=> b!258547 m!274065))

(assert (=> b!258550 m!273507))

(declare-fun m!274067 () Bool)

(assert (=> b!258550 m!274067))

(assert (=> b!258245 d!61999))

(declare-fun d!62001 () Bool)

(assert (=> d!62001 (= (arrayCountValidKeys!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6931 thiss!1504) #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!62001 true))

(declare-fun _$84!36 () Unit!8014)

(assert (=> d!62001 (= (choose!1 (_keys!6931 thiss!1504) index!297 key!932) _$84!36)))

(declare-fun bs!9115 () Bool)

(assert (= bs!9115 d!62001))

(assert (=> bs!9115 m!273319))

(assert (=> bs!9115 m!273569))

(assert (=> bs!9115 m!273321))

(assert (=> d!61805 d!62001))

(declare-fun d!62003 () Bool)

(assert (=> d!62003 (= (apply!255 lt!129972 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)) (get!3058 (getValueByKey!312 (toList!1943 lt!129972) (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9116 () Bool)

(assert (= bs!9116 d!62003))

(assert (=> bs!9116 m!273435))

(assert (=> bs!9116 m!273865))

(assert (=> bs!9116 m!273865))

(declare-fun m!274069 () Bool)

(assert (=> bs!9116 m!274069))

(assert (=> b!258118 d!62003))

(declare-fun d!62005 () Bool)

(declare-fun c!43813 () Bool)

(assert (=> d!62005 (= c!43813 ((_ is ValueCellFull!2958) (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!167593 () V!8451)

(assert (=> d!62005 (= (get!3057 (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!167593)))

(declare-fun b!258551 () Bool)

(assert (=> b!258551 (= e!167593 (get!3059 (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!258552 () Bool)

(assert (=> b!258552 (= e!167593 (get!3060 (select (arr!5943 (_values!4744 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62005 c!43813) b!258551))

(assert (= (and d!62005 (not c!43813)) b!258552))

(assert (=> b!258551 m!273481))

(assert (=> b!258551 m!273483))

(declare-fun m!274071 () Bool)

(assert (=> b!258551 m!274071))

(assert (=> b!258552 m!273481))

(assert (=> b!258552 m!273483))

(declare-fun m!274073 () Bool)

(assert (=> b!258552 m!274073))

(assert (=> b!258118 d!62005))

(declare-fun b!258553 () Bool)

(declare-fun e!167594 () Bool)

(declare-fun call!24593 () Bool)

(assert (=> b!258553 (= e!167594 call!24593)))

(declare-fun d!62007 () Bool)

(declare-fun res!126441 () Bool)

(declare-fun e!167596 () Bool)

(assert (=> d!62007 (=> res!126441 e!167596)))

(assert (=> d!62007 (= res!126441 (bvsge #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))

(assert (=> d!62007 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (mask!11058 thiss!1504)) e!167596)))

(declare-fun bm!24590 () Bool)

(assert (=> bm!24590 (= call!24593 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (mask!11058 thiss!1504)))))

(declare-fun b!258554 () Bool)

(declare-fun e!167595 () Bool)

(assert (=> b!258554 (= e!167594 e!167595)))

(declare-fun lt!130210 () (_ BitVec 64))

(assert (=> b!258554 (= lt!130210 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130211 () Unit!8014)

(assert (=> b!258554 (= lt!130211 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) lt!130210 #b00000000000000000000000000000000))))

(assert (=> b!258554 (arrayContainsKey!0 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) lt!130210 #b00000000000000000000000000000000)))

(declare-fun lt!130209 () Unit!8014)

(assert (=> b!258554 (= lt!130209 lt!130211)))

(declare-fun res!126440 () Bool)

(assert (=> b!258554 (= res!126440 (= (seekEntryOrOpen!0 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000) (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (mask!11058 thiss!1504)) (Found!1184 #b00000000000000000000000000000000)))))

(assert (=> b!258554 (=> (not res!126440) (not e!167595))))

(declare-fun b!258555 () Bool)

(assert (=> b!258555 (= e!167596 e!167594)))

(declare-fun c!43814 () Bool)

(assert (=> b!258555 (= c!43814 (validKeyInArray!0 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!258556 () Bool)

(assert (=> b!258556 (= e!167595 call!24593)))

(assert (= (and d!62007 (not res!126441)) b!258555))

(assert (= (and b!258555 c!43814) b!258554))

(assert (= (and b!258555 (not c!43814)) b!258553))

(assert (= (and b!258554 res!126440) b!258556))

(assert (= (or b!258556 b!258553) bm!24590))

(declare-fun m!274075 () Bool)

(assert (=> bm!24590 m!274075))

(assert (=> b!258554 m!273889))

(declare-fun m!274077 () Bool)

(assert (=> b!258554 m!274077))

(declare-fun m!274079 () Bool)

(assert (=> b!258554 m!274079))

(assert (=> b!258554 m!273889))

(declare-fun m!274081 () Bool)

(assert (=> b!258554 m!274081))

(assert (=> b!258555 m!273889))

(assert (=> b!258555 m!273889))

(assert (=> b!258555 m!273893))

(assert (=> b!258206 d!62007))

(assert (=> b!258161 d!61911))

(assert (=> b!258232 d!61887))

(declare-fun b!258569 () Bool)

(declare-fun e!167603 () SeekEntryResult!1184)

(assert (=> b!258569 (= e!167603 (MissingVacant!1184 (index!6908 lt!129979)))))

(declare-fun lt!130216 () SeekEntryResult!1184)

(declare-fun d!62009 () Bool)

(assert (=> d!62009 (and (or ((_ is Undefined!1184) lt!130216) (not ((_ is Found!1184) lt!130216)) (and (bvsge (index!6907 lt!130216) #b00000000000000000000000000000000) (bvslt (index!6907 lt!130216) (size!6291 (_keys!6931 thiss!1504))))) (or ((_ is Undefined!1184) lt!130216) ((_ is Found!1184) lt!130216) (not ((_ is MissingVacant!1184) lt!130216)) (not (= (index!6909 lt!130216) (index!6908 lt!129979))) (and (bvsge (index!6909 lt!130216) #b00000000000000000000000000000000) (bvslt (index!6909 lt!130216) (size!6291 (_keys!6931 thiss!1504))))) (or ((_ is Undefined!1184) lt!130216) (ite ((_ is Found!1184) lt!130216) (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6907 lt!130216)) key!932) (and ((_ is MissingVacant!1184) lt!130216) (= (index!6909 lt!130216) (index!6908 lt!129979)) (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6909 lt!130216)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun e!167605 () SeekEntryResult!1184)

(assert (=> d!62009 (= lt!130216 e!167605)))

(declare-fun c!43823 () Bool)

(assert (=> d!62009 (= c!43823 (bvsge (x!25052 lt!129979) #b01111111111111111111111111111110))))

(declare-fun lt!130217 () (_ BitVec 64))

(assert (=> d!62009 (= lt!130217 (select (arr!5944 (_keys!6931 thiss!1504)) (index!6908 lt!129979)))))

(assert (=> d!62009 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!62009 (= (seekKeyOrZeroReturnVacant!0 (x!25052 lt!129979) (index!6908 lt!129979) (index!6908 lt!129979) key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)) lt!130216)))

(declare-fun b!258570 () Bool)

(assert (=> b!258570 (= e!167603 (seekKeyOrZeroReturnVacant!0 (bvadd (x!25052 lt!129979) #b00000000000000000000000000000001) (nextIndex!0 (index!6908 lt!129979) (x!25052 lt!129979) (mask!11058 thiss!1504)) (index!6908 lt!129979) key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(declare-fun b!258571 () Bool)

(declare-fun e!167604 () SeekEntryResult!1184)

(assert (=> b!258571 (= e!167604 (Found!1184 (index!6908 lt!129979)))))

(declare-fun b!258572 () Bool)

(declare-fun c!43822 () Bool)

(assert (=> b!258572 (= c!43822 (= lt!130217 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258572 (= e!167604 e!167603)))

(declare-fun b!258573 () Bool)

(assert (=> b!258573 (= e!167605 e!167604)))

(declare-fun c!43821 () Bool)

(assert (=> b!258573 (= c!43821 (= lt!130217 key!932))))

(declare-fun b!258574 () Bool)

(assert (=> b!258574 (= e!167605 Undefined!1184)))

(assert (= (and d!62009 c!43823) b!258574))

(assert (= (and d!62009 (not c!43823)) b!258573))

(assert (= (and b!258573 c!43821) b!258571))

(assert (= (and b!258573 (not c!43821)) b!258572))

(assert (= (and b!258572 c!43822) b!258569))

(assert (= (and b!258572 (not c!43822)) b!258570))

(declare-fun m!274083 () Bool)

(assert (=> d!62009 m!274083))

(declare-fun m!274085 () Bool)

(assert (=> d!62009 m!274085))

(assert (=> d!62009 m!273501))

(assert (=> d!62009 m!273329))

(declare-fun m!274087 () Bool)

(assert (=> b!258570 m!274087))

(assert (=> b!258570 m!274087))

(declare-fun m!274089 () Bool)

(assert (=> b!258570 m!274089))

(assert (=> b!258143 d!62009))

(declare-fun d!62011 () Bool)

(declare-fun e!167606 () Bool)

(assert (=> d!62011 e!167606))

(declare-fun res!126442 () Bool)

(assert (=> d!62011 (=> (not res!126442) (not e!167606))))

(declare-fun lt!130221 () ListLongMap!3855)

(assert (=> d!62011 (= res!126442 (contains!1877 lt!130221 (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(declare-fun lt!130220 () List!3831)

(assert (=> d!62011 (= lt!130221 (ListLongMap!3856 lt!130220))))

(declare-fun lt!130218 () Unit!8014)

(declare-fun lt!130219 () Unit!8014)

(assert (=> d!62011 (= lt!130218 lt!130219)))

(assert (=> d!62011 (= (getValueByKey!312 lt!130220 (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (=> d!62011 (= lt!130219 (lemmaContainsTupThenGetReturnValue!170 lt!130220 (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (=> d!62011 (= lt!130220 (insertStrictlySorted!172 (toList!1943 call!24546) (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))) (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (=> d!62011 (= (+!687 call!24546 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))) lt!130221)))

(declare-fun b!258575 () Bool)

(declare-fun res!126443 () Bool)

(assert (=> b!258575 (=> (not res!126443) (not e!167606))))

(assert (=> b!258575 (= res!126443 (= (getValueByKey!312 (toList!1943 lt!130221) (_1!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (Some!317 (_2!2474 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(declare-fun b!258576 () Bool)

(assert (=> b!258576 (= e!167606 (contains!1879 (toList!1943 lt!130221) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))

(assert (= (and d!62011 res!126442) b!258575))

(assert (= (and b!258575 res!126443) b!258576))

(declare-fun m!274091 () Bool)

(assert (=> d!62011 m!274091))

(declare-fun m!274093 () Bool)

(assert (=> d!62011 m!274093))

(declare-fun m!274095 () Bool)

(assert (=> d!62011 m!274095))

(declare-fun m!274097 () Bool)

(assert (=> d!62011 m!274097))

(declare-fun m!274099 () Bool)

(assert (=> b!258575 m!274099))

(declare-fun m!274101 () Bool)

(assert (=> b!258576 m!274101))

(assert (=> b!258108 d!62011))

(assert (=> b!258219 d!61911))

(declare-fun d!62013 () Bool)

(declare-fun lt!130224 () Bool)

(declare-fun content!168 (List!3832) (InoxSet (_ BitVec 64)))

(assert (=> d!62013 (= lt!130224 (select (content!168 Nil!3829) (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun e!167611 () Bool)

(assert (=> d!62013 (= lt!130224 e!167611)))

(declare-fun res!126448 () Bool)

(assert (=> d!62013 (=> (not res!126448) (not e!167611))))

(assert (=> d!62013 (= res!126448 ((_ is Cons!3828) Nil!3829))))

(assert (=> d!62013 (= (contains!1880 Nil!3829 (select (arr!5944 lt!129842) #b00000000000000000000000000000000)) lt!130224)))

(declare-fun b!258581 () Bool)

(declare-fun e!167612 () Bool)

(assert (=> b!258581 (= e!167611 e!167612)))

(declare-fun res!126449 () Bool)

(assert (=> b!258581 (=> res!126449 e!167612)))

(assert (=> b!258581 (= res!126449 (= (h!4490 Nil!3829) (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(declare-fun b!258582 () Bool)

(assert (=> b!258582 (= e!167612 (contains!1880 (t!8903 Nil!3829) (select (arr!5944 lt!129842) #b00000000000000000000000000000000)))))

(assert (= (and d!62013 res!126448) b!258581))

(assert (= (and b!258581 (not res!126449)) b!258582))

(declare-fun m!274103 () Bool)

(assert (=> d!62013 m!274103))

(assert (=> d!62013 m!273507))

(declare-fun m!274105 () Bool)

(assert (=> d!62013 m!274105))

(assert (=> b!258582 m!273507))

(declare-fun m!274107 () Bool)

(assert (=> b!258582 m!274107))

(assert (=> b!258217 d!62013))

(declare-fun d!62015 () Bool)

(assert (=> d!62015 (= (apply!255 lt!129972 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3058 (getValueByKey!312 (toList!1943 lt!129972) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9117 () Bool)

(assert (= bs!9117 d!62015))

(declare-fun m!274109 () Bool)

(assert (=> bs!9117 m!274109))

(assert (=> bs!9117 m!274109))

(declare-fun m!274111 () Bool)

(assert (=> bs!9117 m!274111))

(assert (=> b!258122 d!62015))

(declare-fun d!62017 () Bool)

(declare-fun e!167613 () Bool)

(assert (=> d!62017 e!167613))

(declare-fun res!126450 () Bool)

(assert (=> d!62017 (=> res!126450 e!167613)))

(declare-fun lt!130225 () Bool)

(assert (=> d!62017 (= res!126450 (not lt!130225))))

(declare-fun lt!130228 () Bool)

(assert (=> d!62017 (= lt!130225 lt!130228)))

(declare-fun lt!130226 () Unit!8014)

(declare-fun e!167614 () Unit!8014)

(assert (=> d!62017 (= lt!130226 e!167614)))

(declare-fun c!43824 () Bool)

(assert (=> d!62017 (= c!43824 lt!130228)))

(assert (=> d!62017 (= lt!130228 (containsKey!304 (toList!1943 lt!129972) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62017 (= (contains!1877 lt!129972 #b0000000000000000000000000000000000000000000000000000000000000000) lt!130225)))

(declare-fun b!258583 () Bool)

(declare-fun lt!130227 () Unit!8014)

(assert (=> b!258583 (= e!167614 lt!130227)))

(assert (=> b!258583 (= lt!130227 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!129972) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258583 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129972) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258584 () Bool)

(declare-fun Unit!8033 () Unit!8014)

(assert (=> b!258584 (= e!167614 Unit!8033)))

(declare-fun b!258585 () Bool)

(assert (=> b!258585 (= e!167613 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129972) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62017 c!43824) b!258583))

(assert (= (and d!62017 (not c!43824)) b!258584))

(assert (= (and d!62017 (not res!126450)) b!258585))

(declare-fun m!274113 () Bool)

(assert (=> d!62017 m!274113))

(declare-fun m!274115 () Bool)

(assert (=> b!258583 m!274115))

(assert (=> b!258583 m!274109))

(assert (=> b!258583 m!274109))

(declare-fun m!274117 () Bool)

(assert (=> b!258583 m!274117))

(assert (=> b!258585 m!274109))

(assert (=> b!258585 m!274109))

(assert (=> b!258585 m!274117))

(assert (=> bm!24540 d!62017))

(assert (=> b!258120 d!61901))

(assert (=> d!61835 d!61801))

(declare-fun bm!24595 () Bool)

(declare-fun c!43829 () Bool)

(declare-fun call!24598 () Bool)

(declare-fun lt!130231 () SeekEntryResult!1184)

(assert (=> bm!24595 (= call!24598 (inRange!0 (ite c!43829 (index!6906 lt!130231) (index!6909 lt!130231)) (mask!11058 thiss!1504)))))

(declare-fun d!62019 () Bool)

(declare-fun e!167623 () Bool)

(assert (=> d!62019 e!167623))

(assert (=> d!62019 (= c!43829 ((_ is MissingZero!1184) lt!130231))))

(assert (=> d!62019 (= lt!130231 (seekEntryOrOpen!0 key!932 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(assert (=> d!62019 true))

(declare-fun _$34!1116 () Unit!8014)

(assert (=> d!62019 (= (choose!1253 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 (defaultEntry!4761 thiss!1504)) _$34!1116)))

(declare-fun b!258602 () Bool)

(declare-fun res!126461 () Bool)

(declare-fun e!167626 () Bool)

(assert (=> b!258602 (=> (not res!126461) (not e!167626))))

(assert (=> b!258602 (= res!126461 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6909 lt!130231)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24596 () Bool)

(declare-fun call!24599 () Bool)

(assert (=> bm!24596 (= call!24599 (arrayContainsKey!0 (_keys!6931 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!258603 () Bool)

(declare-fun e!167624 () Bool)

(assert (=> b!258603 (= e!167624 ((_ is Undefined!1184) lt!130231))))

(declare-fun b!258604 () Bool)

(assert (=> b!258604 (= e!167623 e!167624)))

(declare-fun c!43830 () Bool)

(assert (=> b!258604 (= c!43830 ((_ is MissingVacant!1184) lt!130231))))

(declare-fun b!258605 () Bool)

(declare-fun res!126460 () Bool)

(assert (=> b!258605 (=> (not res!126460) (not e!167626))))

(assert (=> b!258605 (= res!126460 call!24598)))

(assert (=> b!258605 (= e!167624 e!167626)))

(declare-fun b!258606 () Bool)

(assert (=> b!258606 (= e!167626 (not call!24599))))

(declare-fun b!258607 () Bool)

(declare-fun e!167625 () Bool)

(assert (=> b!258607 (= e!167623 e!167625)))

(declare-fun res!126459 () Bool)

(assert (=> b!258607 (= res!126459 call!24598)))

(assert (=> b!258607 (=> (not res!126459) (not e!167625))))

(declare-fun b!258608 () Bool)

(declare-fun res!126462 () Bool)

(assert (=> b!258608 (= res!126462 (= (select (arr!5944 (_keys!6931 thiss!1504)) (index!6906 lt!130231)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258608 (=> (not res!126462) (not e!167625))))

(declare-fun b!258609 () Bool)

(assert (=> b!258609 (= e!167625 (not call!24599))))

(assert (= (and d!62019 c!43829) b!258607))

(assert (= (and d!62019 (not c!43829)) b!258604))

(assert (= (and b!258607 res!126459) b!258608))

(assert (= (and b!258608 res!126462) b!258609))

(assert (= (and b!258604 c!43830) b!258605))

(assert (= (and b!258604 (not c!43830)) b!258603))

(assert (= (and b!258605 res!126460) b!258602))

(assert (= (and b!258602 res!126461) b!258606))

(assert (= (or b!258607 b!258605) bm!24595))

(assert (= (or b!258609 b!258606) bm!24596))

(assert (=> bm!24596 m!273303))

(declare-fun m!274119 () Bool)

(assert (=> bm!24595 m!274119))

(declare-fun m!274121 () Bool)

(assert (=> b!258602 m!274121))

(declare-fun m!274123 () Bool)

(assert (=> b!258608 m!274123))

(assert (=> d!62019 m!273345))

(assert (=> d!61835 d!62019))

(assert (=> d!61835 d!61813))

(assert (=> d!61815 d!61833))

(declare-fun d!62021 () Bool)

(assert (=> d!62021 (arrayContainsKey!0 lt!129842 key!932 #b00000000000000000000000000000000)))

(assert (=> d!62021 true))

(declare-fun _$60!378 () Unit!8014)

(assert (=> d!62021 (= (choose!13 lt!129842 key!932 index!297) _$60!378)))

(declare-fun bs!9118 () Bool)

(assert (= bs!9118 d!62021))

(assert (=> bs!9118 m!273331))

(assert (=> d!61815 d!62021))

(declare-fun d!62023 () Bool)

(declare-fun e!167627 () Bool)

(assert (=> d!62023 e!167627))

(declare-fun res!126463 () Bool)

(assert (=> d!62023 (=> (not res!126463) (not e!167627))))

(declare-fun lt!130235 () ListLongMap!3855)

(assert (=> d!62023 (= res!126463 (contains!1877 lt!130235 (_1!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(declare-fun lt!130234 () List!3831)

(assert (=> d!62023 (= lt!130235 (ListLongMap!3856 lt!130234))))

(declare-fun lt!130232 () Unit!8014)

(declare-fun lt!130233 () Unit!8014)

(assert (=> d!62023 (= lt!130232 lt!130233)))

(assert (=> d!62023 (= (getValueByKey!312 lt!130234 (_1!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))) (Some!317 (_2!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(assert (=> d!62023 (= lt!130233 (lemmaContainsTupThenGetReturnValue!170 lt!130234 (_1!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (_2!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(assert (=> d!62023 (= lt!130234 (insertStrictlySorted!172 (toList!1943 (ite c!43716 call!24554 (ite c!43715 call!24552 call!24551))) (_1!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) (_2!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))))

(assert (=> d!62023 (= (+!687 (ite c!43716 call!24554 (ite c!43715 call!24552 call!24551)) (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))) lt!130235)))

(declare-fun b!258610 () Bool)

(declare-fun res!126464 () Bool)

(assert (=> b!258610 (=> (not res!126464) (not e!167627))))

(assert (=> b!258610 (= res!126464 (= (getValueByKey!312 (toList!1943 lt!130235) (_1!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))) (Some!317 (_2!2474 (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))))

(declare-fun b!258611 () Bool)

(assert (=> b!258611 (= e!167627 (contains!1879 (toList!1943 lt!130235) (ite (or c!43716 c!43715) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(assert (= (and d!62023 res!126463) b!258610))

(assert (= (and b!258610 res!126464) b!258611))

(declare-fun m!274125 () Bool)

(assert (=> d!62023 m!274125))

(declare-fun m!274127 () Bool)

(assert (=> d!62023 m!274127))

(declare-fun m!274129 () Bool)

(assert (=> d!62023 m!274129))

(declare-fun m!274131 () Bool)

(assert (=> d!62023 m!274131))

(declare-fun m!274133 () Bool)

(assert (=> b!258610 m!274133))

(declare-fun m!274135 () Bool)

(assert (=> b!258611 m!274135))

(assert (=> bm!24548 d!62023))

(declare-fun d!62025 () Bool)

(assert (=> d!62025 (= (inRange!0 (ite c!43741 (index!6906 lt!130053) (index!6909 lt!130053)) (mask!11058 thiss!1504)) (and (bvsge (ite c!43741 (index!6906 lt!130053) (index!6909 lt!130053)) #b00000000000000000000000000000000) (bvslt (ite c!43741 (index!6906 lt!130053) (index!6909 lt!130053)) (bvadd (mask!11058 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24568 d!62025))

(declare-fun b!258612 () Bool)

(declare-fun e!167628 () Bool)

(declare-fun call!24600 () Bool)

(assert (=> b!258612 (= e!167628 call!24600)))

(declare-fun d!62027 () Bool)

(declare-fun res!126466 () Bool)

(declare-fun e!167630 () Bool)

(assert (=> d!62027 (=> res!126466 e!167630)))

(assert (=> d!62027 (= res!126466 (bvsge #b00000000000000000000000000000000 (size!6291 (_keys!6931 thiss!1504))))))

(assert (=> d!62027 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6931 thiss!1504) (mask!11058 thiss!1504)) e!167630)))

(declare-fun bm!24597 () Bool)

(assert (=> bm!24597 (= call!24600 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6931 thiss!1504) (mask!11058 thiss!1504)))))

(declare-fun b!258613 () Bool)

(declare-fun e!167629 () Bool)

(assert (=> b!258613 (= e!167628 e!167629)))

(declare-fun lt!130237 () (_ BitVec 64))

(assert (=> b!258613 (= lt!130237 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130238 () Unit!8014)

(assert (=> b!258613 (= lt!130238 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6931 thiss!1504) lt!130237 #b00000000000000000000000000000000))))

(assert (=> b!258613 (arrayContainsKey!0 (_keys!6931 thiss!1504) lt!130237 #b00000000000000000000000000000000)))

(declare-fun lt!130236 () Unit!8014)

(assert (=> b!258613 (= lt!130236 lt!130238)))

(declare-fun res!126465 () Bool)

(assert (=> b!258613 (= res!126465 (= (seekEntryOrOpen!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000) (_keys!6931 thiss!1504) (mask!11058 thiss!1504)) (Found!1184 #b00000000000000000000000000000000)))))

(assert (=> b!258613 (=> (not res!126465) (not e!167629))))

(declare-fun b!258614 () Bool)

(assert (=> b!258614 (= e!167630 e!167628)))

(declare-fun c!43831 () Bool)

(assert (=> b!258614 (= c!43831 (validKeyInArray!0 (select (arr!5944 (_keys!6931 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!258615 () Bool)

(assert (=> b!258615 (= e!167629 call!24600)))

(assert (= (and d!62027 (not res!126466)) b!258614))

(assert (= (and b!258614 c!43831) b!258613))

(assert (= (and b!258614 (not c!43831)) b!258612))

(assert (= (and b!258613 res!126465) b!258615))

(assert (= (or b!258615 b!258612) bm!24597))

(declare-fun m!274137 () Bool)

(assert (=> bm!24597 m!274137))

(assert (=> b!258613 m!273435))

(declare-fun m!274139 () Bool)

(assert (=> b!258613 m!274139))

(declare-fun m!274141 () Bool)

(assert (=> b!258613 m!274141))

(assert (=> b!258613 m!273435))

(declare-fun m!274143 () Bool)

(assert (=> b!258613 m!274143))

(assert (=> b!258614 m!273435))

(assert (=> b!258614 m!273435))

(assert (=> b!258614 m!273439))

(assert (=> b!258284 d!62027))

(assert (=> b!258228 d!61911))

(assert (=> b!258110 d!61901))

(declare-fun b!258624 () Bool)

(declare-fun res!126478 () Bool)

(declare-fun e!167633 () Bool)

(assert (=> b!258624 (=> (not res!126478) (not e!167633))))

(assert (=> b!258624 (= res!126478 (and (= (size!6290 (_values!4744 thiss!1504)) (bvadd (mask!11058 thiss!1504) #b00000000000000000000000000000001)) (= (size!6291 (_keys!6931 thiss!1504)) (size!6290 (_values!4744 thiss!1504))) (bvsge (_size!1957 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1957 thiss!1504) (bvadd (mask!11058 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun b!258625 () Bool)

(declare-fun res!126476 () Bool)

(assert (=> b!258625 (=> (not res!126476) (not e!167633))))

(declare-fun size!6294 (LongMapFixedSize!3816) (_ BitVec 32))

(assert (=> b!258625 (= res!126476 (bvsge (size!6294 thiss!1504) (_size!1957 thiss!1504)))))

(declare-fun b!258627 () Bool)

(assert (=> b!258627 (= e!167633 (and (bvsge (extraKeys!4498 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4498 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1957 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!258626 () Bool)

(declare-fun res!126477 () Bool)

(assert (=> b!258626 (=> (not res!126477) (not e!167633))))

(assert (=> b!258626 (= res!126477 (= (size!6294 thiss!1504) (bvadd (_size!1957 thiss!1504) (bvsdiv (bvadd (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun d!62029 () Bool)

(declare-fun res!126475 () Bool)

(assert (=> d!62029 (=> (not res!126475) (not e!167633))))

(assert (=> d!62029 (= res!126475 (validMask!0 (mask!11058 thiss!1504)))))

(assert (=> d!62029 (= (simpleValid!277 thiss!1504) e!167633)))

(assert (= (and d!62029 res!126475) b!258624))

(assert (= (and b!258624 res!126478) b!258625))

(assert (= (and b!258625 res!126476) b!258626))

(assert (= (and b!258626 res!126477) b!258627))

(declare-fun m!274145 () Bool)

(assert (=> b!258625 m!274145))

(assert (=> b!258626 m!274145))

(assert (=> d!62029 m!273329))

(assert (=> d!61841 d!62029))

(declare-fun d!62031 () Bool)

(assert (=> d!62031 (= (apply!255 lt!130003 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3058 (getValueByKey!312 (toList!1943 lt!130003) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9119 () Bool)

(assert (= bs!9119 d!62031))

(assert (=> bs!9119 m!273873))

(assert (=> bs!9119 m!273873))

(declare-fun m!274147 () Bool)

(assert (=> bs!9119 m!274147))

(assert (=> b!258155 d!62031))

(declare-fun d!62033 () Bool)

(declare-fun e!167634 () Bool)

(assert (=> d!62033 e!167634))

(declare-fun res!126479 () Bool)

(assert (=> d!62033 (=> res!126479 e!167634)))

(declare-fun lt!130239 () Bool)

(assert (=> d!62033 (= res!126479 (not lt!130239))))

(declare-fun lt!130242 () Bool)

(assert (=> d!62033 (= lt!130239 lt!130242)))

(declare-fun lt!130240 () Unit!8014)

(declare-fun e!167635 () Unit!8014)

(assert (=> d!62033 (= lt!130240 e!167635)))

(declare-fun c!43832 () Bool)

(assert (=> d!62033 (= c!43832 lt!130242)))

(assert (=> d!62033 (= lt!130242 (containsKey!304 (toList!1943 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504))) key!932))))

(assert (=> d!62033 (= (contains!1877 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) key!932) lt!130239)))

(declare-fun b!258628 () Bool)

(declare-fun lt!130241 () Unit!8014)

(assert (=> b!258628 (= e!167635 lt!130241)))

(assert (=> b!258628 (= lt!130241 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504))) key!932))))

(assert (=> b!258628 (isDefined!254 (getValueByKey!312 (toList!1943 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504))) key!932))))

(declare-fun b!258629 () Bool)

(declare-fun Unit!8034 () Unit!8014)

(assert (=> b!258629 (= e!167635 Unit!8034)))

(declare-fun b!258630 () Bool)

(assert (=> b!258630 (= e!167634 (isDefined!254 (getValueByKey!312 (toList!1943 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504))) key!932)))))

(assert (= (and d!62033 c!43832) b!258628))

(assert (= (and d!62033 (not c!43832)) b!258629))

(assert (= (and d!62033 (not res!126479)) b!258630))

(declare-fun m!274149 () Bool)

(assert (=> d!62033 m!274149))

(declare-fun m!274151 () Bool)

(assert (=> b!258628 m!274151))

(declare-fun m!274153 () Bool)

(assert (=> b!258628 m!274153))

(assert (=> b!258628 m!274153))

(declare-fun m!274155 () Bool)

(assert (=> b!258628 m!274155))

(assert (=> b!258630 m!274153))

(assert (=> b!258630 m!274153))

(assert (=> b!258630 m!274155))

(assert (=> d!61839 d!62033))

(assert (=> d!61839 d!61799))

(declare-fun d!62035 () Bool)

(assert (=> d!62035 (contains!1877 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) key!932)))

(assert (=> d!62035 true))

(declare-fun _$17!83 () Unit!8014)

(assert (=> d!62035 (= (choose!1254 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) _$17!83)))

(declare-fun bs!9120 () Bool)

(assert (= bs!9120 d!62035))

(assert (=> bs!9120 m!273353))

(assert (=> bs!9120 m!273353))

(assert (=> bs!9120 m!273637))

(assert (=> d!61839 d!62035))

(assert (=> d!61839 d!61813))

(declare-fun d!62037 () Bool)

(declare-fun e!167636 () Bool)

(assert (=> d!62037 e!167636))

(declare-fun res!126480 () Bool)

(assert (=> d!62037 (=> (not res!126480) (not e!167636))))

(declare-fun lt!130246 () ListLongMap!3855)

(assert (=> d!62037 (= res!126480 (contains!1877 lt!130246 (_1!2474 (tuple2!4929 key!932 v!346))))))

(declare-fun lt!130245 () List!3831)

(assert (=> d!62037 (= lt!130246 (ListLongMap!3856 lt!130245))))

(declare-fun lt!130243 () Unit!8014)

(declare-fun lt!130244 () Unit!8014)

(assert (=> d!62037 (= lt!130243 lt!130244)))

(assert (=> d!62037 (= (getValueByKey!312 lt!130245 (_1!2474 (tuple2!4929 key!932 v!346))) (Some!317 (_2!2474 (tuple2!4929 key!932 v!346))))))

(assert (=> d!62037 (= lt!130244 (lemmaContainsTupThenGetReturnValue!170 lt!130245 (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))))))

(assert (=> d!62037 (= lt!130245 (insertStrictlySorted!172 (toList!1943 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504))) (_1!2474 (tuple2!4929 key!932 v!346)) (_2!2474 (tuple2!4929 key!932 v!346))))))

(assert (=> d!62037 (= (+!687 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) (tuple2!4929 key!932 v!346)) lt!130246)))

(declare-fun b!258631 () Bool)

(declare-fun res!126481 () Bool)

(assert (=> b!258631 (=> (not res!126481) (not e!167636))))

(assert (=> b!258631 (= res!126481 (= (getValueByKey!312 (toList!1943 lt!130246) (_1!2474 (tuple2!4929 key!932 v!346))) (Some!317 (_2!2474 (tuple2!4929 key!932 v!346)))))))

(declare-fun b!258632 () Bool)

(assert (=> b!258632 (= e!167636 (contains!1879 (toList!1943 lt!130246) (tuple2!4929 key!932 v!346)))))

(assert (= (and d!62037 res!126480) b!258631))

(assert (= (and b!258631 res!126481) b!258632))

(declare-fun m!274157 () Bool)

(assert (=> d!62037 m!274157))

(declare-fun m!274159 () Bool)

(assert (=> d!62037 m!274159))

(declare-fun m!274161 () Bool)

(assert (=> d!62037 m!274161))

(declare-fun m!274163 () Bool)

(assert (=> d!62037 m!274163))

(declare-fun m!274165 () Bool)

(assert (=> b!258631 m!274165))

(declare-fun m!274167 () Bool)

(assert (=> b!258632 m!274167))

(assert (=> b!258197 d!62037))

(assert (=> b!258197 d!61799))

(declare-fun b!258633 () Bool)

(declare-fun res!126483 () Bool)

(declare-fun e!167638 () Bool)

(assert (=> b!258633 (=> (not res!126483) (not e!167638))))

(declare-fun e!167644 () Bool)

(assert (=> b!258633 (= res!126483 e!167644)))

(declare-fun c!43837 () Bool)

(assert (=> b!258633 (= c!43837 (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!258634 () Bool)

(declare-fun e!167643 () Bool)

(declare-fun e!167641 () Bool)

(assert (=> b!258634 (= e!167643 e!167641)))

(declare-fun res!126489 () Bool)

(declare-fun call!24602 () Bool)

(assert (=> b!258634 (= res!126489 call!24602)))

(assert (=> b!258634 (=> (not res!126489) (not e!167641))))

(declare-fun bm!24598 () Bool)

(declare-fun call!24601 () ListLongMap!3855)

(declare-fun call!24605 () ListLongMap!3855)

(assert (=> bm!24598 (= call!24601 call!24605)))

(declare-fun b!258635 () Bool)

(declare-fun call!24607 () Bool)

(assert (=> b!258635 (= e!167644 (not call!24607))))

(declare-fun b!258636 () Bool)

(declare-fun e!167645 () Bool)

(declare-fun e!167648 () Bool)

(assert (=> b!258636 (= e!167645 e!167648)))

(declare-fun res!126484 () Bool)

(assert (=> b!258636 (=> (not res!126484) (not e!167648))))

(declare-fun lt!130268 () ListLongMap!3855)

(assert (=> b!258636 (= res!126484 (contains!1877 lt!130268 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> b!258636 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))

(declare-fun d!62039 () Bool)

(assert (=> d!62039 e!167638))

(declare-fun res!126486 () Bool)

(assert (=> d!62039 (=> (not res!126486) (not e!167638))))

(assert (=> d!62039 (= res!126486 (or (bvsge #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))))

(declare-fun lt!130250 () ListLongMap!3855)

(assert (=> d!62039 (= lt!130268 lt!130250)))

(declare-fun lt!130261 () Unit!8014)

(declare-fun e!167647 () Unit!8014)

(assert (=> d!62039 (= lt!130261 e!167647)))

(declare-fun c!43838 () Bool)

(declare-fun e!167639 () Bool)

(assert (=> d!62039 (= c!43838 e!167639)))

(declare-fun res!126482 () Bool)

(assert (=> d!62039 (=> (not res!126482) (not e!167639))))

(assert (=> d!62039 (= res!126482 (bvslt #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))

(declare-fun e!167642 () ListLongMap!3855)

(assert (=> d!62039 (= lt!130250 e!167642)))

(declare-fun c!43835 () Bool)

(assert (=> d!62039 (= c!43835 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62039 (validMask!0 (mask!11058 thiss!1504))))

(assert (=> d!62039 (= (getCurrentListMap!1466 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) lt!130268)))

(declare-fun bm!24599 () Bool)

(assert (=> bm!24599 (= call!24607 (contains!1877 lt!130268 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258637 () Bool)

(declare-fun c!43836 () Bool)

(assert (=> b!258637 (= c!43836 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!167649 () ListLongMap!3855)

(declare-fun e!167637 () ListLongMap!3855)

(assert (=> b!258637 (= e!167649 e!167637)))

(declare-fun b!258638 () Bool)

(assert (=> b!258638 (= e!167642 (+!687 call!24605 (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504))))))

(declare-fun call!24604 () ListLongMap!3855)

(declare-fun call!24606 () ListLongMap!3855)

(declare-fun bm!24600 () Bool)

(declare-fun c!43834 () Bool)

(declare-fun call!24603 () ListLongMap!3855)

(assert (=> bm!24600 (= call!24605 (+!687 (ite c!43835 call!24606 (ite c!43834 call!24604 call!24603)) (ite (or c!43835 c!43834) (tuple2!4929 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4602 thiss!1504)) (tuple2!4929 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4602 thiss!1504)))))))

(declare-fun bm!24601 () Bool)

(assert (=> bm!24601 (= call!24602 (contains!1877 lt!130268 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258639 () Bool)

(declare-fun res!126485 () Bool)

(assert (=> b!258639 (=> (not res!126485) (not e!167638))))

(assert (=> b!258639 (= res!126485 e!167645)))

(declare-fun res!126488 () Bool)

(assert (=> b!258639 (=> res!126488 e!167645)))

(declare-fun e!167646 () Bool)

(assert (=> b!258639 (= res!126488 (not e!167646))))

(declare-fun res!126490 () Bool)

(assert (=> b!258639 (=> (not res!126490) (not e!167646))))

(assert (=> b!258639 (= res!126490 (bvslt #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))

(declare-fun b!258640 () Bool)

(assert (=> b!258640 (= e!167639 (validKeyInArray!0 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!258641 () Bool)

(assert (=> b!258641 (= e!167643 (not call!24602))))

(declare-fun b!258642 () Bool)

(declare-fun Unit!8035 () Unit!8014)

(assert (=> b!258642 (= e!167647 Unit!8035)))

(declare-fun bm!24602 () Bool)

(assert (=> bm!24602 (= call!24606 (getCurrentListMapNoExtraKeys!574 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun b!258643 () Bool)

(declare-fun e!167640 () Bool)

(assert (=> b!258643 (= e!167644 e!167640)))

(declare-fun res!126487 () Bool)

(assert (=> b!258643 (= res!126487 call!24607)))

(assert (=> b!258643 (=> (not res!126487) (not e!167640))))

(declare-fun b!258644 () Bool)

(assert (=> b!258644 (= e!167641 (= (apply!255 lt!130268 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4602 thiss!1504)))))

(declare-fun b!258645 () Bool)

(assert (=> b!258645 (= e!167649 call!24601)))

(declare-fun b!258646 () Bool)

(declare-fun lt!130248 () Unit!8014)

(assert (=> b!258646 (= e!167647 lt!130248)))

(declare-fun lt!130256 () ListLongMap!3855)

(assert (=> b!258646 (= lt!130256 (getCurrentListMapNoExtraKeys!574 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!130265 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130265 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130252 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130252 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130266 () Unit!8014)

(assert (=> b!258646 (= lt!130266 (addStillContains!231 lt!130256 lt!130265 (zeroValue!4602 thiss!1504) lt!130252))))

(assert (=> b!258646 (contains!1877 (+!687 lt!130256 (tuple2!4929 lt!130265 (zeroValue!4602 thiss!1504))) lt!130252)))

(declare-fun lt!130255 () Unit!8014)

(assert (=> b!258646 (= lt!130255 lt!130266)))

(declare-fun lt!130260 () ListLongMap!3855)

(assert (=> b!258646 (= lt!130260 (getCurrentListMapNoExtraKeys!574 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!130257 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130257 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130258 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130258 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130267 () Unit!8014)

(assert (=> b!258646 (= lt!130267 (addApplyDifferent!231 lt!130260 lt!130257 (minValue!4602 thiss!1504) lt!130258))))

(assert (=> b!258646 (= (apply!255 (+!687 lt!130260 (tuple2!4929 lt!130257 (minValue!4602 thiss!1504))) lt!130258) (apply!255 lt!130260 lt!130258))))

(declare-fun lt!130247 () Unit!8014)

(assert (=> b!258646 (= lt!130247 lt!130267)))

(declare-fun lt!130264 () ListLongMap!3855)

(assert (=> b!258646 (= lt!130264 (getCurrentListMapNoExtraKeys!574 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!130253 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130253 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130254 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130254 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!130262 () Unit!8014)

(assert (=> b!258646 (= lt!130262 (addApplyDifferent!231 lt!130264 lt!130253 (zeroValue!4602 thiss!1504) lt!130254))))

(assert (=> b!258646 (= (apply!255 (+!687 lt!130264 (tuple2!4929 lt!130253 (zeroValue!4602 thiss!1504))) lt!130254) (apply!255 lt!130264 lt!130254))))

(declare-fun lt!130259 () Unit!8014)

(assert (=> b!258646 (= lt!130259 lt!130262)))

(declare-fun lt!130249 () ListLongMap!3855)

(assert (=> b!258646 (= lt!130249 (getCurrentListMapNoExtraKeys!574 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(declare-fun lt!130251 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130251 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130263 () (_ BitVec 64))

(assert (=> b!258646 (= lt!130263 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000))))

(assert (=> b!258646 (= lt!130248 (addApplyDifferent!231 lt!130249 lt!130251 (minValue!4602 thiss!1504) lt!130263))))

(assert (=> b!258646 (= (apply!255 (+!687 lt!130249 (tuple2!4929 lt!130251 (minValue!4602 thiss!1504))) lt!130263) (apply!255 lt!130249 lt!130263))))

(declare-fun bm!24603 () Bool)

(assert (=> bm!24603 (= call!24603 call!24604)))

(declare-fun b!258647 () Bool)

(assert (=> b!258647 (= e!167637 call!24603)))

(declare-fun b!258648 () Bool)

(assert (=> b!258648 (= e!167648 (= (apply!255 lt!130268 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)) (get!3057 (select (arr!5943 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!593 (defaultEntry!4761 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!258648 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6290 (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))))))))

(assert (=> b!258648 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6291 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))))))))

(declare-fun bm!24604 () Bool)

(assert (=> bm!24604 (= call!24604 call!24606)))

(declare-fun b!258649 () Bool)

(assert (=> b!258649 (= e!167642 e!167649)))

(assert (=> b!258649 (= c!43834 (and (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!258650 () Bool)

(assert (=> b!258650 (= e!167646 (validKeyInArray!0 (select (arr!5944 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!258651 () Bool)

(assert (=> b!258651 (= e!167637 call!24601)))

(declare-fun b!258652 () Bool)

(assert (=> b!258652 (= e!167640 (= (apply!255 lt!130268 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4602 thiss!1504)))))

(declare-fun b!258653 () Bool)

(assert (=> b!258653 (= e!167638 e!167643)))

(declare-fun c!43833 () Bool)

(assert (=> b!258653 (= c!43833 (not (= (bvand (extraKeys!4498 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!62039 c!43835) b!258638))

(assert (= (and d!62039 (not c!43835)) b!258649))

(assert (= (and b!258649 c!43834) b!258645))

(assert (= (and b!258649 (not c!43834)) b!258637))

(assert (= (and b!258637 c!43836) b!258651))

(assert (= (and b!258637 (not c!43836)) b!258647))

(assert (= (or b!258651 b!258647) bm!24603))

(assert (= (or b!258645 bm!24603) bm!24604))

(assert (= (or b!258645 b!258651) bm!24598))

(assert (= (or b!258638 bm!24604) bm!24602))

(assert (= (or b!258638 bm!24598) bm!24600))

(assert (= (and d!62039 res!126482) b!258640))

(assert (= (and d!62039 c!43838) b!258646))

(assert (= (and d!62039 (not c!43838)) b!258642))

(assert (= (and d!62039 res!126486) b!258639))

(assert (= (and b!258639 res!126490) b!258650))

(assert (= (and b!258639 (not res!126488)) b!258636))

(assert (= (and b!258636 res!126484) b!258648))

(assert (= (and b!258639 res!126485) b!258633))

(assert (= (and b!258633 c!43837) b!258643))

(assert (= (and b!258633 (not c!43837)) b!258635))

(assert (= (and b!258643 res!126487) b!258652))

(assert (= (or b!258643 b!258635) bm!24599))

(assert (= (and b!258633 res!126483) b!258653))

(assert (= (and b!258653 c!43833) b!258634))

(assert (= (and b!258653 (not c!43833)) b!258641))

(assert (= (and b!258634 res!126489) b!258644))

(assert (= (or b!258634 b!258641) bm!24601))

(declare-fun b_lambda!8241 () Bool)

(assert (=> (not b_lambda!8241) (not b!258648)))

(assert (=> b!258648 t!8907))

(declare-fun b_and!13849 () Bool)

(assert (= b_and!13847 (and (=> t!8907 result!5399) b_and!13849)))

(declare-fun m!274169 () Bool)

(assert (=> bm!24601 m!274169))

(assert (=> b!258636 m!273889))

(assert (=> b!258636 m!273889))

(declare-fun m!274171 () Bool)

(assert (=> b!258636 m!274171))

(assert (=> b!258650 m!273889))

(assert (=> b!258650 m!273889))

(assert (=> b!258650 m!273893))

(declare-fun m!274173 () Bool)

(assert (=> b!258646 m!274173))

(declare-fun m!274175 () Bool)

(assert (=> b!258646 m!274175))

(declare-fun m!274177 () Bool)

(assert (=> b!258646 m!274177))

(declare-fun m!274179 () Bool)

(assert (=> b!258646 m!274179))

(declare-fun m!274181 () Bool)

(assert (=> b!258646 m!274181))

(assert (=> b!258646 m!274173))

(declare-fun m!274183 () Bool)

(assert (=> b!258646 m!274183))

(declare-fun m!274185 () Bool)

(assert (=> b!258646 m!274185))

(declare-fun m!274187 () Bool)

(assert (=> b!258646 m!274187))

(assert (=> b!258646 m!274185))

(declare-fun m!274189 () Bool)

(assert (=> b!258646 m!274189))

(declare-fun m!274191 () Bool)

(assert (=> b!258646 m!274191))

(declare-fun m!274193 () Bool)

(assert (=> b!258646 m!274193))

(declare-fun m!274195 () Bool)

(assert (=> b!258646 m!274195))

(declare-fun m!274197 () Bool)

(assert (=> b!258646 m!274197))

(declare-fun m!274199 () Bool)

(assert (=> b!258646 m!274199))

(assert (=> b!258646 m!274189))

(declare-fun m!274201 () Bool)

(assert (=> b!258646 m!274201))

(declare-fun m!274203 () Bool)

(assert (=> b!258646 m!274203))

(assert (=> b!258646 m!273889))

(assert (=> b!258646 m!274193))

(declare-fun m!274205 () Bool)

(assert (=> bm!24599 m!274205))

(assert (=> bm!24602 m!274203))

(declare-fun m!274207 () Bool)

(assert (=> b!258652 m!274207))

(assert (=> b!258640 m!273889))

(assert (=> b!258640 m!273889))

(assert (=> b!258640 m!273893))

(declare-fun m!274209 () Bool)

(assert (=> b!258644 m!274209))

(declare-fun m!274211 () Bool)

(assert (=> b!258638 m!274211))

(assert (=> b!258648 m!273553))

(assert (=> b!258648 m!273483))

(assert (=> b!258648 m!273555))

(assert (=> b!258648 m!273889))

(declare-fun m!274213 () Bool)

(assert (=> b!258648 m!274213))

(assert (=> b!258648 m!273553))

(assert (=> b!258648 m!273483))

(assert (=> b!258648 m!273889))

(declare-fun m!274215 () Bool)

(assert (=> bm!24600 m!274215))

(assert (=> d!62039 m!273329))

(assert (=> b!258197 d!62039))

(assert (=> bm!24550 d!61957))

(declare-fun b!258654 () Bool)

(declare-fun e!167650 () Bool)

(assert (=> b!258654 (= e!167650 (contains!1880 (ite c!43728 (Cons!3828 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) Nil!3829) Nil!3829) (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!62041 () Bool)

(declare-fun res!126491 () Bool)

(declare-fun e!167653 () Bool)

(assert (=> d!62041 (=> res!126491 e!167653)))

(assert (=> d!62041 (= res!126491 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6291 lt!129842)))))

(assert (=> d!62041 (= (arrayNoDuplicates!0 lt!129842 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43728 (Cons!3828 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) Nil!3829) Nil!3829)) e!167653)))

(declare-fun b!258655 () Bool)

(declare-fun e!167652 () Bool)

(declare-fun e!167651 () Bool)

(assert (=> b!258655 (= e!167652 e!167651)))

(declare-fun c!43839 () Bool)

(assert (=> b!258655 (= c!43839 (validKeyInArray!0 (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!258656 () Bool)

(assert (=> b!258656 (= e!167653 e!167652)))

(declare-fun res!126492 () Bool)

(assert (=> b!258656 (=> (not res!126492) (not e!167652))))

(assert (=> b!258656 (= res!126492 (not e!167650))))

(declare-fun res!126493 () Bool)

(assert (=> b!258656 (=> (not res!126493) (not e!167650))))

(assert (=> b!258656 (= res!126493 (validKeyInArray!0 (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!258657 () Bool)

(declare-fun call!24608 () Bool)

(assert (=> b!258657 (= e!167651 call!24608)))

(declare-fun bm!24605 () Bool)

(assert (=> bm!24605 (= call!24608 (arrayNoDuplicates!0 lt!129842 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!43839 (Cons!3828 (select (arr!5944 lt!129842) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!43728 (Cons!3828 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) Nil!3829) Nil!3829)) (ite c!43728 (Cons!3828 (select (arr!5944 lt!129842) #b00000000000000000000000000000000) Nil!3829) Nil!3829))))))

(declare-fun b!258658 () Bool)

(assert (=> b!258658 (= e!167651 call!24608)))

(assert (= (and d!62041 (not res!126491)) b!258656))

(assert (= (and b!258656 res!126493) b!258654))

(assert (= (and b!258656 res!126492) b!258655))

(assert (= (and b!258655 c!43839) b!258658))

(assert (= (and b!258655 (not c!43839)) b!258657))

(assert (= (or b!258658 b!258657) bm!24605))

(assert (=> b!258654 m!273807))

(assert (=> b!258654 m!273807))

(declare-fun m!274217 () Bool)

(assert (=> b!258654 m!274217))

(assert (=> b!258655 m!273807))

(assert (=> b!258655 m!273807))

(assert (=> b!258655 m!273825))

(assert (=> b!258656 m!273807))

(assert (=> b!258656 m!273807))

(assert (=> b!258656 m!273825))

(assert (=> bm!24605 m!273807))

(declare-fun m!274219 () Bool)

(assert (=> bm!24605 m!274219))

(assert (=> bm!24558 d!62041))

(declare-fun d!62043 () Bool)

(assert (=> d!62043 (= (+!687 (getCurrentListMap!1466 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)) (tuple2!4929 key!932 v!346)) (getCurrentListMap!1466 (array!12555 (store (arr!5944 (_keys!6931 thiss!1504)) index!297 key!932) (size!6291 (_keys!6931 thiss!1504))) (array!12553 (store (arr!5943 (_values!4744 thiss!1504)) index!297 (ValueCellFull!2958 v!346)) (size!6290 (_values!4744 thiss!1504))) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4761 thiss!1504)))))

(assert (=> d!62043 true))

(declare-fun _$3!55 () Unit!8014)

(assert (=> d!62043 (= (choose!1252 (_keys!6931 thiss!1504) (_values!4744 thiss!1504) (mask!11058 thiss!1504) (extraKeys!4498 thiss!1504) (zeroValue!4602 thiss!1504) (minValue!4602 thiss!1504) index!297 key!932 v!346 (defaultEntry!4761 thiss!1504)) _$3!55)))

(declare-fun bs!9121 () Bool)

(assert (= bs!9121 d!62043))

(assert (=> bs!9121 m!273353))

(assert (=> bs!9121 m!273319))

(assert (=> bs!9121 m!273353))

(assert (=> bs!9121 m!273587))

(assert (=> bs!9121 m!273589))

(assert (=> bs!9121 m!273305))

(assert (=> d!61811 d!62043))

(assert (=> d!61811 d!61813))

(declare-fun b!258659 () Bool)

(declare-fun e!167655 () (_ BitVec 32))

(declare-fun e!167654 () (_ BitVec 32))

(assert (=> b!258659 (= e!167655 e!167654)))

(declare-fun c!43841 () Bool)

(assert (=> b!258659 (= c!43841 (validKeyInArray!0 (select (arr!5944 lt!129842) (bvadd index!297 #b00000000000000000000000000000001))))))

(declare-fun b!258660 () Bool)

(declare-fun call!24609 () (_ BitVec 32))

(assert (=> b!258660 (= e!167654 call!24609)))

(declare-fun bm!24606 () Bool)

(assert (=> bm!24606 (= call!24609 (arrayCountValidKeys!0 lt!129842 (bvadd index!297 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!258661 () Bool)

(assert (=> b!258661 (= e!167655 #b00000000000000000000000000000000)))

(declare-fun b!258662 () Bool)

(assert (=> b!258662 (= e!167654 (bvadd #b00000000000000000000000000000001 call!24609))))

(declare-fun d!62045 () Bool)

(declare-fun lt!130269 () (_ BitVec 32))

(assert (=> d!62045 (and (bvsge lt!130269 #b00000000000000000000000000000000) (bvsle lt!130269 (bvsub (size!6291 lt!129842) (bvadd index!297 #b00000000000000000000000000000001))))))

(assert (=> d!62045 (= lt!130269 e!167655)))

(declare-fun c!43840 () Bool)

(assert (=> d!62045 (= c!43840 (bvsge (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62045 (and (bvsle (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) (bvsge (bvadd index!297 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6291 lt!129842)))))

(assert (=> d!62045 (= (arrayCountValidKeys!0 lt!129842 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)) lt!130269)))

(assert (= (and d!62045 c!43840) b!258661))

(assert (= (and d!62045 (not c!43840)) b!258659))

(assert (= (and b!258659 c!43841) b!258662))

(assert (= (and b!258659 (not c!43841)) b!258660))

(assert (= (or b!258662 b!258660) bm!24606))

(declare-fun m!274221 () Bool)

(assert (=> b!258659 m!274221))

(assert (=> b!258659 m!274221))

(declare-fun m!274223 () Bool)

(assert (=> b!258659 m!274223))

(declare-fun m!274225 () Bool)

(assert (=> bm!24606 m!274225))

(assert (=> bm!24560 d!62045))

(declare-fun d!62047 () Bool)

(declare-fun e!167656 () Bool)

(assert (=> d!62047 e!167656))

(declare-fun res!126494 () Bool)

(assert (=> d!62047 (=> res!126494 e!167656)))

(declare-fun lt!130270 () Bool)

(assert (=> d!62047 (= res!126494 (not lt!130270))))

(declare-fun lt!130273 () Bool)

(assert (=> d!62047 (= lt!130270 lt!130273)))

(declare-fun lt!130271 () Unit!8014)

(declare-fun e!167657 () Unit!8014)

(assert (=> d!62047 (= lt!130271 e!167657)))

(declare-fun c!43842 () Bool)

(assert (=> d!62047 (= c!43842 lt!130273)))

(assert (=> d!62047 (= lt!130273 (containsKey!304 (toList!1943 lt!129972) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!62047 (= (contains!1877 lt!129972 #b1000000000000000000000000000000000000000000000000000000000000000) lt!130270)))

(declare-fun b!258663 () Bool)

(declare-fun lt!130272 () Unit!8014)

(assert (=> b!258663 (= e!167657 lt!130272)))

(assert (=> b!258663 (= lt!130272 (lemmaContainsKeyImpliesGetValueByKeyDefined!253 (toList!1943 lt!129972) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!258663 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129972) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!258664 () Bool)

(declare-fun Unit!8036 () Unit!8014)

(assert (=> b!258664 (= e!167657 Unit!8036)))

(declare-fun b!258665 () Bool)

(assert (=> b!258665 (= e!167656 (isDefined!254 (getValueByKey!312 (toList!1943 lt!129972) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!62047 c!43842) b!258663))

(assert (= (and d!62047 (not c!43842)) b!258664))

(assert (= (and d!62047 (not res!126494)) b!258665))

(declare-fun m!274227 () Bool)

(assert (=> d!62047 m!274227))

(declare-fun m!274229 () Bool)

(assert (=> b!258663 m!274229))

(assert (=> b!258663 m!273781))

(assert (=> b!258663 m!273781))

(declare-fun m!274231 () Bool)

(assert (=> b!258663 m!274231))

(assert (=> b!258665 m!273781))

(assert (=> b!258665 m!273781))

(assert (=> b!258665 m!274231))

(assert (=> bm!24542 d!62047))

(declare-fun condMapEmpty!11251 () Bool)

(declare-fun mapDefault!11251 () ValueCell!2958)

(assert (=> mapNonEmpty!11250 (= condMapEmpty!11251 (= mapRest!11250 ((as const (Array (_ BitVec 32) ValueCell!2958)) mapDefault!11251)))))

(declare-fun e!167658 () Bool)

(declare-fun mapRes!11251 () Bool)

(assert (=> mapNonEmpty!11250 (= tp!23544 (and e!167658 mapRes!11251))))

(declare-fun b!258667 () Bool)

(assert (=> b!258667 (= e!167658 tp_is_empty!6603)))

(declare-fun mapNonEmpty!11251 () Bool)

(declare-fun tp!23545 () Bool)

(declare-fun e!167659 () Bool)

(assert (=> mapNonEmpty!11251 (= mapRes!11251 (and tp!23545 e!167659))))

(declare-fun mapKey!11251 () (_ BitVec 32))

(declare-fun mapValue!11251 () ValueCell!2958)

(declare-fun mapRest!11251 () (Array (_ BitVec 32) ValueCell!2958))

(assert (=> mapNonEmpty!11251 (= mapRest!11250 (store mapRest!11251 mapKey!11251 mapValue!11251))))

(declare-fun mapIsEmpty!11251 () Bool)

(assert (=> mapIsEmpty!11251 mapRes!11251))

(declare-fun b!258666 () Bool)

(assert (=> b!258666 (= e!167659 tp_is_empty!6603)))

(assert (= (and mapNonEmpty!11250 condMapEmpty!11251) mapIsEmpty!11251))

(assert (= (and mapNonEmpty!11250 (not condMapEmpty!11251)) mapNonEmpty!11251))

(assert (= (and mapNonEmpty!11251 ((_ is ValueCellFull!2958) mapValue!11251)) b!258666))

(assert (= (and mapNonEmpty!11250 ((_ is ValueCellFull!2958) mapDefault!11251)) b!258667))

(declare-fun m!274233 () Bool)

(assert (=> mapNonEmpty!11251 m!274233))

(declare-fun b_lambda!8243 () Bool)

(assert (= b_lambda!8235 (or (and b!257979 b_free!6741) b_lambda!8243)))

(declare-fun b_lambda!8245 () Bool)

(assert (= b_lambda!8241 (or (and b!257979 b_free!6741) b_lambda!8245)))

(declare-fun b_lambda!8247 () Bool)

(assert (= b_lambda!8233 (or (and b!257979 b_free!6741) b_lambda!8247)))

(declare-fun b_lambda!8249 () Bool)

(assert (= b_lambda!8237 (or (and b!257979 b_free!6741) b_lambda!8249)))

(declare-fun b_lambda!8251 () Bool)

(assert (= b_lambda!8239 (or (and b!257979 b_free!6741) b_lambda!8251)))

(check-sat (not b!258459) (not b!258659) (not d!62019) (not bm!24572) (not d!61925) (not b!258422) (not b!258650) (not d!61957) (not b!258522) (not b!258552) (not d!62023) (not d!61889) (not b!258585) (not b_lambda!8247) (not d!61999) (not b!258540) (not b!258486) (not bm!24574) (not b!258494) (not b!258570) (not b!258345) (not d!62031) (not b!258352) (not d!61981) (not b_lambda!8251) (not b!258527) (not d!62047) (not d!61931) (not d!61991) (not b!258542) (not d!62003) (not d!61857) (not b!258413) (not bm!24576) (not b!258452) (not d!61883) (not b!258462) (not b!258656) (not b!258640) (not b!258525) (not b!258530) (not bm!24600) (not d!62037) (not b!258582) (not b!258351) (not d!61859) (not b!258555) (not b!258520) (not b!258538) (not d!61967) (not b!258394) (not b!258613) (not b!258502) (not bm!24588) (not b_lambda!8231) (not b!258500) (not b!258534) (not b!258636) (not b!258611) (not b!258544) (not d!61979) (not b!258309) (not bm!24606) (not b!258457) (not bm!24605) (not d!62011) (not b!258575) (not d!61853) (not b!258518) (not bm!24590) (not bm!24589) (not b!258632) (not d!61871) (not b!258655) (not b!258529) (not b!258385) (not d!61965) (not b!258511) (not b!258398) (not b!258644) (not b!258416) (not d!61973) (not b!258665) (not d!61895) (not b!258583) (not d!61867) (not b!258368) (not b_next!6741) (not d!61983) (not b!258517) (not b!258389) (not bm!24575) (not b!258349) (not d!61995) (not d!61955) (not b!258638) (not d!61943) (not d!62015) (not d!62017) (not b!258361) (not b!258456) (not b!258539) (not d!61855) (not d!61939) (not d!62035) (not b!258447) (not bm!24595) (not b!258373) (not b!258531) (not b!258535) (not d!61909) (not b!258377) (not b!258463) (not d!61977) (not d!61921) (not d!61989) (not d!61935) (not d!61863) (not d!61959) (not b!258652) (not d!61877) (not b!258367) (not b!258315) (not b!258521) (not b!258450) (not b!258554) (not d!61873) (not bm!24573) (not b!258648) (not b!258536) (not b!258411) (not b!258409) (not b!258533) tp_is_empty!6603 (not d!62001) (not bm!24599) (not b!258464) (not d!61885) (not b!258374) (not d!61969) (not b!258344) (not b!258366) (not b!258355) (not d!61975) (not b!258348) (not d!61881) (not d!61903) (not b!258526) (not bm!24585) (not b!258625) (not b!258646) (not d!61963) (not b_lambda!8249) (not d!62029) (not b!258654) (not b!258301) (not b!258523) (not d!61905) (not d!61875) (not b!258393) b_and!13849 (not d!61869) (not d!61929) (not b!258460) (not d!62043) (not b!258354) (not d!62013) (not b!258350) (not b!258391) (not bm!24596) (not d!61961) (not d!61915) (not b!258550) (not b!258312) (not b!258631) (not b!258372) (not b!258626) (not d!61993) (not b!258314) (not bm!24587) (not b!258516) (not d!61865) (not d!61985) (not bm!24586) (not b!258316) (not b_lambda!8243) (not d!62033) (not b!258551) (not b!258454) (not d!62039) (not bm!24602) (not b!258663) (not b_lambda!8229) (not b_lambda!8245) (not b!258461) (not d!61917) (not d!61971) (not bm!24597) (not b!258524) (not mapNonEmpty!11251) (not d!62021) (not b!258614) (not b!258308) (not bm!24601) (not d!61879) (not b!258388) (not b!258313) (not d!61861) (not d!61927) (not d!62009) (not b!258628) (not d!61851) (not b!258310) (not b!258576) (not b!258423) (not b!258610) (not b!258630) (not b!258346))
(check-sat b_and!13849 (not b_next!6741))
