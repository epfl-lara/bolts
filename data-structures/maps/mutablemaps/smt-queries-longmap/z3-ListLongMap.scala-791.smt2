; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18824 () Bool)

(assert start!18824)

(declare-fun b!185901 () Bool)

(declare-fun b_free!4587 () Bool)

(declare-fun b_next!4587 () Bool)

(assert (=> b!185901 (= b_free!4587 (not b_next!4587))))

(declare-fun tp!16559 () Bool)

(declare-fun b_and!11207 () Bool)

(assert (=> b!185901 (= tp!16559 b_and!11207)))

(declare-fun b!185893 () Bool)

(declare-datatypes ((Unit!5599 0))(
  ( (Unit!5600) )
))
(declare-fun e!122348 () Unit!5599)

(declare-fun Unit!5601 () Unit!5599)

(assert (=> b!185893 (= e!122348 Unit!5601)))

(declare-fun lt!91931 () Unit!5599)

(declare-datatypes ((V!5459 0))(
  ( (V!5460 (val!2224 Int)) )
))
(declare-datatypes ((ValueCell!1836 0))(
  ( (ValueCellFull!1836 (v!4131 V!5459)) (EmptyCell!1836) )
))
(declare-datatypes ((array!7926 0))(
  ( (array!7927 (arr!3742 (Array (_ BitVec 32) (_ BitVec 64))) (size!4058 (_ BitVec 32))) )
))
(declare-datatypes ((array!7928 0))(
  ( (array!7929 (arr!3743 (Array (_ BitVec 32) ValueCell!1836)) (size!4059 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2580 0))(
  ( (LongMapFixedSize!2581 (defaultEntry!3792 Int) (mask!8909 (_ BitVec 32)) (extraKeys!3529 (_ BitVec 32)) (zeroValue!3633 V!5459) (minValue!3633 V!5459) (_size!1339 (_ BitVec 32)) (_keys!5733 array!7926) (_values!3775 array!7928) (_vacant!1339 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2580)

(declare-fun key!828 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!143 (array!7926 array!7928 (_ BitVec 32) (_ BitVec 32) V!5459 V!5459 (_ BitVec 64) Int) Unit!5599)

(assert (=> b!185893 (= lt!91931 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!143 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) key!828 (defaultEntry!3792 thiss!1248)))))

(assert (=> b!185893 false))

(declare-fun b!185894 () Bool)

(declare-fun e!122349 () Bool)

(declare-datatypes ((SeekEntryResult!650 0))(
  ( (MissingZero!650 (index!4770 (_ BitVec 32))) (Found!650 (index!4771 (_ BitVec 32))) (Intermediate!650 (undefined!1462 Bool) (index!4772 (_ BitVec 32)) (x!20196 (_ BitVec 32))) (Undefined!650) (MissingVacant!650 (index!4773 (_ BitVec 32))) )
))
(declare-fun lt!91933 () SeekEntryResult!650)

(assert (=> b!185894 (= e!122349 (= (select (arr!3742 (_keys!5733 thiss!1248)) (index!4771 lt!91933)) key!828))))

(declare-fun b!185895 () Bool)

(declare-fun res!87967 () Bool)

(declare-fun e!122355 () Bool)

(assert (=> b!185895 (=> (not res!87967) (not e!122355))))

(assert (=> b!185895 (= res!87967 (not (= key!828 (bvneg key!828))))))

(declare-fun mapIsEmpty!7500 () Bool)

(declare-fun mapRes!7500 () Bool)

(assert (=> mapIsEmpty!7500 mapRes!7500))

(declare-fun b!185896 () Bool)

(declare-fun e!122347 () Bool)

(declare-fun e!122350 () Bool)

(assert (=> b!185896 (= e!122347 (and e!122350 mapRes!7500))))

(declare-fun condMapEmpty!7500 () Bool)

(declare-fun mapDefault!7500 () ValueCell!1836)

(assert (=> b!185896 (= condMapEmpty!7500 (= (arr!3743 (_values!3775 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1836)) mapDefault!7500)))))

(declare-fun b!185897 () Bool)

(declare-fun lt!91930 () Unit!5599)

(assert (=> b!185897 (= e!122348 lt!91930)))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!144 (array!7926 array!7928 (_ BitVec 32) (_ BitVec 32) V!5459 V!5459 (_ BitVec 64) Int) Unit!5599)

(assert (=> b!185897 (= lt!91930 (lemmaInListMapThenSeekEntryOrOpenFindsIt!144 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) key!828 (defaultEntry!3792 thiss!1248)))))

(declare-fun res!87968 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!185897 (= res!87968 (inRange!0 (index!4771 lt!91933) (mask!8909 thiss!1248)))))

(assert (=> b!185897 (=> (not res!87968) (not e!122349))))

(assert (=> b!185897 e!122349))

(declare-fun res!87965 () Bool)

(assert (=> start!18824 (=> (not res!87965) (not e!122355))))

(declare-fun valid!1055 (LongMapFixedSize!2580) Bool)

(assert (=> start!18824 (= res!87965 (valid!1055 thiss!1248))))

(assert (=> start!18824 e!122355))

(declare-fun e!122351 () Bool)

(assert (=> start!18824 e!122351))

(assert (=> start!18824 true))

(declare-fun mapNonEmpty!7500 () Bool)

(declare-fun tp!16560 () Bool)

(declare-fun e!122354 () Bool)

(assert (=> mapNonEmpty!7500 (= mapRes!7500 (and tp!16560 e!122354))))

(declare-fun mapRest!7500 () (Array (_ BitVec 32) ValueCell!1836))

(declare-fun mapKey!7500 () (_ BitVec 32))

(declare-fun mapValue!7500 () ValueCell!1836)

(assert (=> mapNonEmpty!7500 (= (arr!3743 (_values!3775 thiss!1248)) (store mapRest!7500 mapKey!7500 mapValue!7500))))

(declare-fun b!185898 () Bool)

(declare-fun e!122353 () Bool)

(assert (=> b!185898 (= e!122355 e!122353)))

(declare-fun res!87966 () Bool)

(assert (=> b!185898 (=> (not res!87966) (not e!122353))))

(get-info :version)

(assert (=> b!185898 (= res!87966 (and (not ((_ is Undefined!650) lt!91933)) (not ((_ is MissingVacant!650) lt!91933)) (not ((_ is MissingZero!650) lt!91933)) ((_ is Found!650) lt!91933)))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7926 (_ BitVec 32)) SeekEntryResult!650)

(assert (=> b!185898 (= lt!91933 (seekEntryOrOpen!0 key!828 (_keys!5733 thiss!1248) (mask!8909 thiss!1248)))))

(declare-fun b!185899 () Bool)

(declare-fun tp_is_empty!4359 () Bool)

(assert (=> b!185899 (= e!122350 tp_is_empty!4359)))

(declare-fun b!185900 () Bool)

(assert (=> b!185900 (= e!122354 tp_is_empty!4359)))

(declare-fun array_inv!2409 (array!7926) Bool)

(declare-fun array_inv!2410 (array!7928) Bool)

(assert (=> b!185901 (= e!122351 (and tp!16559 tp_is_empty!4359 (array_inv!2409 (_keys!5733 thiss!1248)) (array_inv!2410 (_values!3775 thiss!1248)) e!122347))))

(declare-fun b!185902 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185902 (= e!122353 (not (validMask!0 (mask!8909 thiss!1248))))))

(declare-fun lt!91932 () Unit!5599)

(assert (=> b!185902 (= lt!91932 e!122348)))

(declare-fun c!33309 () Bool)

(declare-datatypes ((tuple2!3460 0))(
  ( (tuple2!3461 (_1!1740 (_ BitVec 64)) (_2!1740 V!5459)) )
))
(declare-datatypes ((List!2391 0))(
  ( (Nil!2388) (Cons!2387 (h!3020 tuple2!3460) (t!7283 List!2391)) )
))
(declare-datatypes ((ListLongMap!2391 0))(
  ( (ListLongMap!2392 (toList!1211 List!2391)) )
))
(declare-fun contains!1301 (ListLongMap!2391 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!854 (array!7926 array!7928 (_ BitVec 32) (_ BitVec 32) V!5459 V!5459 (_ BitVec 32) Int) ListLongMap!2391)

(assert (=> b!185902 (= c!33309 (contains!1301 (getCurrentListMap!854 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)) key!828))))

(assert (= (and start!18824 res!87965) b!185895))

(assert (= (and b!185895 res!87967) b!185898))

(assert (= (and b!185898 res!87966) b!185902))

(assert (= (and b!185902 c!33309) b!185897))

(assert (= (and b!185902 (not c!33309)) b!185893))

(assert (= (and b!185897 res!87968) b!185894))

(assert (= (and b!185896 condMapEmpty!7500) mapIsEmpty!7500))

(assert (= (and b!185896 (not condMapEmpty!7500)) mapNonEmpty!7500))

(assert (= (and mapNonEmpty!7500 ((_ is ValueCellFull!1836) mapValue!7500)) b!185900))

(assert (= (and b!185896 ((_ is ValueCellFull!1836) mapDefault!7500)) b!185899))

(assert (= b!185901 b!185896))

(assert (= start!18824 b!185901))

(declare-fun m!212975 () Bool)

(assert (=> b!185893 m!212975))

(declare-fun m!212977 () Bool)

(assert (=> mapNonEmpty!7500 m!212977))

(declare-fun m!212979 () Bool)

(assert (=> b!185897 m!212979))

(declare-fun m!212981 () Bool)

(assert (=> b!185897 m!212981))

(declare-fun m!212983 () Bool)

(assert (=> start!18824 m!212983))

(declare-fun m!212985 () Bool)

(assert (=> b!185901 m!212985))

(declare-fun m!212987 () Bool)

(assert (=> b!185901 m!212987))

(declare-fun m!212989 () Bool)

(assert (=> b!185902 m!212989))

(declare-fun m!212991 () Bool)

(assert (=> b!185902 m!212991))

(assert (=> b!185902 m!212991))

(declare-fun m!212993 () Bool)

(assert (=> b!185902 m!212993))

(declare-fun m!212995 () Bool)

(assert (=> b!185898 m!212995))

(declare-fun m!212997 () Bool)

(assert (=> b!185894 m!212997))

(check-sat (not b!185902) (not mapNonEmpty!7500) b_and!11207 (not b_next!4587) (not b!185893) (not b!185898) (not b!185901) (not b!185897) tp_is_empty!4359 (not start!18824))
(check-sat b_and!11207 (not b_next!4587))
(get-model)

(declare-fun b!185946 () Bool)

(declare-fun e!122390 () SeekEntryResult!650)

(declare-fun lt!91954 () SeekEntryResult!650)

(assert (=> b!185946 (= e!122390 (Found!650 (index!4772 lt!91954)))))

(declare-fun b!185947 () Bool)

(declare-fun e!122389 () SeekEntryResult!650)

(assert (=> b!185947 (= e!122389 (MissingZero!650 (index!4772 lt!91954)))))

(declare-fun b!185948 () Bool)

(declare-fun c!33319 () Bool)

(declare-fun lt!91953 () (_ BitVec 64))

(assert (=> b!185948 (= c!33319 (= lt!91953 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!185948 (= e!122390 e!122389)))

(declare-fun b!185949 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7926 (_ BitVec 32)) SeekEntryResult!650)

(assert (=> b!185949 (= e!122389 (seekKeyOrZeroReturnVacant!0 (x!20196 lt!91954) (index!4772 lt!91954) (index!4772 lt!91954) key!828 (_keys!5733 thiss!1248) (mask!8909 thiss!1248)))))

(declare-fun b!185950 () Bool)

(declare-fun e!122391 () SeekEntryResult!650)

(assert (=> b!185950 (= e!122391 e!122390)))

(assert (=> b!185950 (= lt!91953 (select (arr!3742 (_keys!5733 thiss!1248)) (index!4772 lt!91954)))))

(declare-fun c!33320 () Bool)

(assert (=> b!185950 (= c!33320 (= lt!91953 key!828))))

(declare-fun d!55059 () Bool)

(declare-fun lt!91952 () SeekEntryResult!650)

(assert (=> d!55059 (and (or ((_ is Undefined!650) lt!91952) (not ((_ is Found!650) lt!91952)) (and (bvsge (index!4771 lt!91952) #b00000000000000000000000000000000) (bvslt (index!4771 lt!91952) (size!4058 (_keys!5733 thiss!1248))))) (or ((_ is Undefined!650) lt!91952) ((_ is Found!650) lt!91952) (not ((_ is MissingZero!650) lt!91952)) (and (bvsge (index!4770 lt!91952) #b00000000000000000000000000000000) (bvslt (index!4770 lt!91952) (size!4058 (_keys!5733 thiss!1248))))) (or ((_ is Undefined!650) lt!91952) ((_ is Found!650) lt!91952) ((_ is MissingZero!650) lt!91952) (not ((_ is MissingVacant!650) lt!91952)) (and (bvsge (index!4773 lt!91952) #b00000000000000000000000000000000) (bvslt (index!4773 lt!91952) (size!4058 (_keys!5733 thiss!1248))))) (or ((_ is Undefined!650) lt!91952) (ite ((_ is Found!650) lt!91952) (= (select (arr!3742 (_keys!5733 thiss!1248)) (index!4771 lt!91952)) key!828) (ite ((_ is MissingZero!650) lt!91952) (= (select (arr!3742 (_keys!5733 thiss!1248)) (index!4770 lt!91952)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!650) lt!91952) (= (select (arr!3742 (_keys!5733 thiss!1248)) (index!4773 lt!91952)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!55059 (= lt!91952 e!122391)))

(declare-fun c!33321 () Bool)

(assert (=> d!55059 (= c!33321 (and ((_ is Intermediate!650) lt!91954) (undefined!1462 lt!91954)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7926 (_ BitVec 32)) SeekEntryResult!650)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55059 (= lt!91954 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8909 thiss!1248)) key!828 (_keys!5733 thiss!1248) (mask!8909 thiss!1248)))))

(assert (=> d!55059 (validMask!0 (mask!8909 thiss!1248))))

(assert (=> d!55059 (= (seekEntryOrOpen!0 key!828 (_keys!5733 thiss!1248) (mask!8909 thiss!1248)) lt!91952)))

(declare-fun b!185945 () Bool)

(assert (=> b!185945 (= e!122391 Undefined!650)))

(assert (= (and d!55059 c!33321) b!185945))

(assert (= (and d!55059 (not c!33321)) b!185950))

(assert (= (and b!185950 c!33320) b!185946))

(assert (= (and b!185950 (not c!33320)) b!185948))

(assert (= (and b!185948 c!33319) b!185947))

(assert (= (and b!185948 (not c!33319)) b!185949))

(declare-fun m!213023 () Bool)

(assert (=> b!185949 m!213023))

(declare-fun m!213025 () Bool)

(assert (=> b!185950 m!213025))

(assert (=> d!55059 m!212989))

(declare-fun m!213027 () Bool)

(assert (=> d!55059 m!213027))

(declare-fun m!213029 () Bool)

(assert (=> d!55059 m!213029))

(declare-fun m!213031 () Bool)

(assert (=> d!55059 m!213031))

(declare-fun m!213033 () Bool)

(assert (=> d!55059 m!213033))

(assert (=> d!55059 m!213027))

(declare-fun m!213035 () Bool)

(assert (=> d!55059 m!213035))

(assert (=> b!185898 d!55059))

(declare-fun d!55061 () Bool)

(declare-fun res!87987 () Bool)

(declare-fun e!122394 () Bool)

(assert (=> d!55061 (=> (not res!87987) (not e!122394))))

(declare-fun simpleValid!182 (LongMapFixedSize!2580) Bool)

(assert (=> d!55061 (= res!87987 (simpleValid!182 thiss!1248))))

(assert (=> d!55061 (= (valid!1055 thiss!1248) e!122394)))

(declare-fun b!185957 () Bool)

(declare-fun res!87988 () Bool)

(assert (=> b!185957 (=> (not res!87988) (not e!122394))))

(declare-fun arrayCountValidKeys!0 (array!7926 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!185957 (= res!87988 (= (arrayCountValidKeys!0 (_keys!5733 thiss!1248) #b00000000000000000000000000000000 (size!4058 (_keys!5733 thiss!1248))) (_size!1339 thiss!1248)))))

(declare-fun b!185958 () Bool)

(declare-fun res!87989 () Bool)

(assert (=> b!185958 (=> (not res!87989) (not e!122394))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7926 (_ BitVec 32)) Bool)

(assert (=> b!185958 (= res!87989 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5733 thiss!1248) (mask!8909 thiss!1248)))))

(declare-fun b!185959 () Bool)

(declare-datatypes ((List!2393 0))(
  ( (Nil!2390) (Cons!2389 (h!3022 (_ BitVec 64)) (t!7287 List!2393)) )
))
(declare-fun arrayNoDuplicates!0 (array!7926 (_ BitVec 32) List!2393) Bool)

(assert (=> b!185959 (= e!122394 (arrayNoDuplicates!0 (_keys!5733 thiss!1248) #b00000000000000000000000000000000 Nil!2390))))

(assert (= (and d!55061 res!87987) b!185957))

(assert (= (and b!185957 res!87988) b!185958))

(assert (= (and b!185958 res!87989) b!185959))

(declare-fun m!213037 () Bool)

(assert (=> d!55061 m!213037))

(declare-fun m!213039 () Bool)

(assert (=> b!185957 m!213039))

(declare-fun m!213041 () Bool)

(assert (=> b!185958 m!213041))

(declare-fun m!213043 () Bool)

(assert (=> b!185959 m!213043))

(assert (=> start!18824 d!55061))

(declare-fun d!55063 () Bool)

(declare-fun e!122397 () Bool)

(assert (=> d!55063 e!122397))

(declare-fun res!87995 () Bool)

(assert (=> d!55063 (=> (not res!87995) (not e!122397))))

(declare-fun lt!91960 () SeekEntryResult!650)

(assert (=> d!55063 (= res!87995 ((_ is Found!650) lt!91960))))

(assert (=> d!55063 (= lt!91960 (seekEntryOrOpen!0 key!828 (_keys!5733 thiss!1248) (mask!8909 thiss!1248)))))

(declare-fun lt!91959 () Unit!5599)

(declare-fun choose!990 (array!7926 array!7928 (_ BitVec 32) (_ BitVec 32) V!5459 V!5459 (_ BitVec 64) Int) Unit!5599)

(assert (=> d!55063 (= lt!91959 (choose!990 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) key!828 (defaultEntry!3792 thiss!1248)))))

(assert (=> d!55063 (validMask!0 (mask!8909 thiss!1248))))

(assert (=> d!55063 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!144 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) key!828 (defaultEntry!3792 thiss!1248)) lt!91959)))

(declare-fun b!185964 () Bool)

(declare-fun res!87994 () Bool)

(assert (=> b!185964 (=> (not res!87994) (not e!122397))))

(assert (=> b!185964 (= res!87994 (inRange!0 (index!4771 lt!91960) (mask!8909 thiss!1248)))))

(declare-fun b!185965 () Bool)

(assert (=> b!185965 (= e!122397 (= (select (arr!3742 (_keys!5733 thiss!1248)) (index!4771 lt!91960)) key!828))))

(assert (=> b!185965 (and (bvsge (index!4771 lt!91960) #b00000000000000000000000000000000) (bvslt (index!4771 lt!91960) (size!4058 (_keys!5733 thiss!1248))))))

(assert (= (and d!55063 res!87995) b!185964))

(assert (= (and b!185964 res!87994) b!185965))

(assert (=> d!55063 m!212995))

(declare-fun m!213045 () Bool)

(assert (=> d!55063 m!213045))

(assert (=> d!55063 m!212989))

(declare-fun m!213047 () Bool)

(assert (=> b!185964 m!213047))

(declare-fun m!213049 () Bool)

(assert (=> b!185965 m!213049))

(assert (=> b!185897 d!55063))

(declare-fun d!55065 () Bool)

(assert (=> d!55065 (= (inRange!0 (index!4771 lt!91933) (mask!8909 thiss!1248)) (and (bvsge (index!4771 lt!91933) #b00000000000000000000000000000000) (bvslt (index!4771 lt!91933) (bvadd (mask!8909 thiss!1248) #b00000000000000000000000000000001))))))

(assert (=> b!185897 d!55065))

(declare-fun d!55067 () Bool)

(assert (=> d!55067 (= (array_inv!2409 (_keys!5733 thiss!1248)) (bvsge (size!4058 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185901 d!55067))

(declare-fun d!55069 () Bool)

(assert (=> d!55069 (= (array_inv!2410 (_values!3775 thiss!1248)) (bvsge (size!4059 (_values!3775 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185901 d!55069))

(declare-fun d!55071 () Bool)

(assert (=> d!55071 (= (validMask!0 (mask!8909 thiss!1248)) (and (or (= (mask!8909 thiss!1248) #b00000000000000000000000000000111) (= (mask!8909 thiss!1248) #b00000000000000000000000000001111) (= (mask!8909 thiss!1248) #b00000000000000000000000000011111) (= (mask!8909 thiss!1248) #b00000000000000000000000000111111) (= (mask!8909 thiss!1248) #b00000000000000000000000001111111) (= (mask!8909 thiss!1248) #b00000000000000000000000011111111) (= (mask!8909 thiss!1248) #b00000000000000000000000111111111) (= (mask!8909 thiss!1248) #b00000000000000000000001111111111) (= (mask!8909 thiss!1248) #b00000000000000000000011111111111) (= (mask!8909 thiss!1248) #b00000000000000000000111111111111) (= (mask!8909 thiss!1248) #b00000000000000000001111111111111) (= (mask!8909 thiss!1248) #b00000000000000000011111111111111) (= (mask!8909 thiss!1248) #b00000000000000000111111111111111) (= (mask!8909 thiss!1248) #b00000000000000001111111111111111) (= (mask!8909 thiss!1248) #b00000000000000011111111111111111) (= (mask!8909 thiss!1248) #b00000000000000111111111111111111) (= (mask!8909 thiss!1248) #b00000000000001111111111111111111) (= (mask!8909 thiss!1248) #b00000000000011111111111111111111) (= (mask!8909 thiss!1248) #b00000000000111111111111111111111) (= (mask!8909 thiss!1248) #b00000000001111111111111111111111) (= (mask!8909 thiss!1248) #b00000000011111111111111111111111) (= (mask!8909 thiss!1248) #b00000000111111111111111111111111) (= (mask!8909 thiss!1248) #b00000001111111111111111111111111) (= (mask!8909 thiss!1248) #b00000011111111111111111111111111) (= (mask!8909 thiss!1248) #b00000111111111111111111111111111) (= (mask!8909 thiss!1248) #b00001111111111111111111111111111) (= (mask!8909 thiss!1248) #b00011111111111111111111111111111) (= (mask!8909 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8909 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!185902 d!55071))

(declare-fun d!55073 () Bool)

(declare-fun e!122402 () Bool)

(assert (=> d!55073 e!122402))

(declare-fun res!87998 () Bool)

(assert (=> d!55073 (=> res!87998 e!122402)))

(declare-fun lt!91972 () Bool)

(assert (=> d!55073 (= res!87998 (not lt!91972))))

(declare-fun lt!91970 () Bool)

(assert (=> d!55073 (= lt!91972 lt!91970)))

(declare-fun lt!91969 () Unit!5599)

(declare-fun e!122403 () Unit!5599)

(assert (=> d!55073 (= lt!91969 e!122403)))

(declare-fun c!33324 () Bool)

(assert (=> d!55073 (= c!33324 lt!91970)))

(declare-fun containsKey!227 (List!2391 (_ BitVec 64)) Bool)

(assert (=> d!55073 (= lt!91970 (containsKey!227 (toList!1211 (getCurrentListMap!854 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248))) key!828))))

(assert (=> d!55073 (= (contains!1301 (getCurrentListMap!854 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)) key!828) lt!91972)))

(declare-fun b!185972 () Bool)

(declare-fun lt!91971 () Unit!5599)

(assert (=> b!185972 (= e!122403 lt!91971)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!176 (List!2391 (_ BitVec 64)) Unit!5599)

(assert (=> b!185972 (= lt!91971 (lemmaContainsKeyImpliesGetValueByKeyDefined!176 (toList!1211 (getCurrentListMap!854 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248))) key!828))))

(declare-datatypes ((Option!229 0))(
  ( (Some!228 (v!4133 V!5459)) (None!227) )
))
(declare-fun isDefined!177 (Option!229) Bool)

(declare-fun getValueByKey!223 (List!2391 (_ BitVec 64)) Option!229)

(assert (=> b!185972 (isDefined!177 (getValueByKey!223 (toList!1211 (getCurrentListMap!854 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248))) key!828))))

(declare-fun b!185973 () Bool)

(declare-fun Unit!5605 () Unit!5599)

(assert (=> b!185973 (= e!122403 Unit!5605)))

(declare-fun b!185974 () Bool)

(assert (=> b!185974 (= e!122402 (isDefined!177 (getValueByKey!223 (toList!1211 (getCurrentListMap!854 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248))) key!828)))))

(assert (= (and d!55073 c!33324) b!185972))

(assert (= (and d!55073 (not c!33324)) b!185973))

(assert (= (and d!55073 (not res!87998)) b!185974))

(declare-fun m!213051 () Bool)

(assert (=> d!55073 m!213051))

(declare-fun m!213053 () Bool)

(assert (=> b!185972 m!213053))

(declare-fun m!213055 () Bool)

(assert (=> b!185972 m!213055))

(assert (=> b!185972 m!213055))

(declare-fun m!213057 () Bool)

(assert (=> b!185972 m!213057))

(assert (=> b!185974 m!213055))

(assert (=> b!185974 m!213055))

(assert (=> b!185974 m!213057))

(assert (=> b!185902 d!55073))

(declare-fun b!186017 () Bool)

(declare-fun e!122436 () Bool)

(declare-fun e!122438 () Bool)

(assert (=> b!186017 (= e!122436 e!122438)))

(declare-fun res!88020 () Bool)

(declare-fun call!18752 () Bool)

(assert (=> b!186017 (= res!88020 call!18752)))

(assert (=> b!186017 (=> (not res!88020) (not e!122438))))

(declare-fun b!186018 () Bool)

(declare-fun res!88017 () Bool)

(declare-fun e!122440 () Bool)

(assert (=> b!186018 (=> (not res!88017) (not e!122440))))

(declare-fun e!122437 () Bool)

(assert (=> b!186018 (= res!88017 e!122437)))

(declare-fun c!33337 () Bool)

(assert (=> b!186018 (= c!33337 (not (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!186019 () Bool)

(declare-fun lt!92020 () ListLongMap!2391)

(declare-fun apply!167 (ListLongMap!2391 (_ BitVec 64)) V!5459)

(assert (=> b!186019 (= e!122438 (= (apply!167 lt!92020 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3633 thiss!1248)))))

(declare-fun b!186020 () Bool)

(assert (=> b!186020 (= e!122436 (not call!18752))))

(declare-fun bm!18749 () Bool)

(declare-fun call!18758 () ListLongMap!2391)

(declare-fun getCurrentListMapNoExtraKeys!197 (array!7926 array!7928 (_ BitVec 32) (_ BitVec 32) V!5459 V!5459 (_ BitVec 32) Int) ListLongMap!2391)

(assert (=> bm!18749 (= call!18758 (getCurrentListMapNoExtraKeys!197 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)))))

(declare-fun b!186021 () Bool)

(declare-fun res!88019 () Bool)

(assert (=> b!186021 (=> (not res!88019) (not e!122440))))

(declare-fun e!122434 () Bool)

(assert (=> b!186021 (= res!88019 e!122434)))

(declare-fun res!88021 () Bool)

(assert (=> b!186021 (=> res!88021 e!122434)))

(declare-fun e!122435 () Bool)

(assert (=> b!186021 (= res!88021 (not e!122435))))

(declare-fun res!88023 () Bool)

(assert (=> b!186021 (=> (not res!88023) (not e!122435))))

(assert (=> b!186021 (= res!88023 (bvslt #b00000000000000000000000000000000 (size!4058 (_keys!5733 thiss!1248))))))

(declare-fun b!186022 () Bool)

(declare-fun c!33341 () Bool)

(assert (=> b!186022 (= c!33341 (and (not (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!122433 () ListLongMap!2391)

(declare-fun e!122441 () ListLongMap!2391)

(assert (=> b!186022 (= e!122433 e!122441)))

(declare-fun d!55075 () Bool)

(assert (=> d!55075 e!122440))

(declare-fun res!88025 () Bool)

(assert (=> d!55075 (=> (not res!88025) (not e!122440))))

(assert (=> d!55075 (= res!88025 (or (bvsge #b00000000000000000000000000000000 (size!4058 (_keys!5733 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4058 (_keys!5733 thiss!1248))))))))

(declare-fun lt!92036 () ListLongMap!2391)

(assert (=> d!55075 (= lt!92020 lt!92036)))

(declare-fun lt!92031 () Unit!5599)

(declare-fun e!122430 () Unit!5599)

(assert (=> d!55075 (= lt!92031 e!122430)))

(declare-fun c!33339 () Bool)

(declare-fun e!122432 () Bool)

(assert (=> d!55075 (= c!33339 e!122432)))

(declare-fun res!88022 () Bool)

(assert (=> d!55075 (=> (not res!88022) (not e!122432))))

(assert (=> d!55075 (= res!88022 (bvslt #b00000000000000000000000000000000 (size!4058 (_keys!5733 thiss!1248))))))

(declare-fun e!122442 () ListLongMap!2391)

(assert (=> d!55075 (= lt!92036 e!122442)))

(declare-fun c!33342 () Bool)

(assert (=> d!55075 (= c!33342 (and (not (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55075 (validMask!0 (mask!8909 thiss!1248))))

(assert (=> d!55075 (= (getCurrentListMap!854 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)) lt!92020)))

(declare-fun b!186023 () Bool)

(declare-fun e!122431 () Bool)

(declare-fun get!2149 (ValueCell!1836 V!5459) V!5459)

(declare-fun dynLambda!505 (Int (_ BitVec 64)) V!5459)

(assert (=> b!186023 (= e!122431 (= (apply!167 lt!92020 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000)) (get!2149 (select (arr!3743 (_values!3775 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!505 (defaultEntry!3792 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!186023 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4059 (_values!3775 thiss!1248))))))

(assert (=> b!186023 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4058 (_keys!5733 thiss!1248))))))

(declare-fun b!186024 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!186024 (= e!122432 (validKeyInArray!0 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun bm!18750 () Bool)

(declare-fun call!18754 () Bool)

(assert (=> bm!18750 (= call!18754 (contains!1301 lt!92020 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186025 () Bool)

(declare-fun Unit!5606 () Unit!5599)

(assert (=> b!186025 (= e!122430 Unit!5606)))

(declare-fun b!186026 () Bool)

(assert (=> b!186026 (= e!122442 e!122433)))

(declare-fun c!33338 () Bool)

(assert (=> b!186026 (= c!33338 (and (not (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!186027 () Bool)

(declare-fun call!18755 () ListLongMap!2391)

(declare-fun +!282 (ListLongMap!2391 tuple2!3460) ListLongMap!2391)

(assert (=> b!186027 (= e!122442 (+!282 call!18755 (tuple2!3461 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3633 thiss!1248))))))

(declare-fun bm!18751 () Bool)

(assert (=> bm!18751 (= call!18752 (contains!1301 lt!92020 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!186028 () Bool)

(declare-fun e!122439 () Bool)

(assert (=> b!186028 (= e!122439 (= (apply!167 lt!92020 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3633 thiss!1248)))))

(declare-fun b!186029 () Bool)

(assert (=> b!186029 (= e!122435 (validKeyInArray!0 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!186030 () Bool)

(declare-fun call!18753 () ListLongMap!2391)

(assert (=> b!186030 (= e!122433 call!18753)))

(declare-fun bm!18752 () Bool)

(assert (=> bm!18752 (= call!18753 call!18755)))

(declare-fun b!186031 () Bool)

(assert (=> b!186031 (= e!122441 call!18753)))

(declare-fun b!186032 () Bool)

(assert (=> b!186032 (= e!122437 (not call!18754))))

(declare-fun b!186033 () Bool)

(declare-fun call!18756 () ListLongMap!2391)

(assert (=> b!186033 (= e!122441 call!18756)))

(declare-fun b!186034 () Bool)

(assert (=> b!186034 (= e!122437 e!122439)))

(declare-fun res!88024 () Bool)

(assert (=> b!186034 (= res!88024 call!18754)))

(assert (=> b!186034 (=> (not res!88024) (not e!122439))))

(declare-fun call!18757 () ListLongMap!2391)

(declare-fun bm!18753 () Bool)

(assert (=> bm!18753 (= call!18755 (+!282 (ite c!33342 call!18758 (ite c!33338 call!18757 call!18756)) (ite (or c!33342 c!33338) (tuple2!3461 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3633 thiss!1248)) (tuple2!3461 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3633 thiss!1248)))))))

(declare-fun b!186035 () Bool)

(declare-fun lt!92038 () Unit!5599)

(assert (=> b!186035 (= e!122430 lt!92038)))

(declare-fun lt!92035 () ListLongMap!2391)

(assert (=> b!186035 (= lt!92035 (getCurrentListMapNoExtraKeys!197 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)))))

(declare-fun lt!92019 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92019 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92018 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92018 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92032 () Unit!5599)

(declare-fun addStillContains!143 (ListLongMap!2391 (_ BitVec 64) V!5459 (_ BitVec 64)) Unit!5599)

(assert (=> b!186035 (= lt!92032 (addStillContains!143 lt!92035 lt!92019 (zeroValue!3633 thiss!1248) lt!92018))))

(assert (=> b!186035 (contains!1301 (+!282 lt!92035 (tuple2!3461 lt!92019 (zeroValue!3633 thiss!1248))) lt!92018)))

(declare-fun lt!92017 () Unit!5599)

(assert (=> b!186035 (= lt!92017 lt!92032)))

(declare-fun lt!92023 () ListLongMap!2391)

(assert (=> b!186035 (= lt!92023 (getCurrentListMapNoExtraKeys!197 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)))))

(declare-fun lt!92022 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92022 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92033 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92033 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92026 () Unit!5599)

(declare-fun addApplyDifferent!143 (ListLongMap!2391 (_ BitVec 64) V!5459 (_ BitVec 64)) Unit!5599)

(assert (=> b!186035 (= lt!92026 (addApplyDifferent!143 lt!92023 lt!92022 (minValue!3633 thiss!1248) lt!92033))))

(assert (=> b!186035 (= (apply!167 (+!282 lt!92023 (tuple2!3461 lt!92022 (minValue!3633 thiss!1248))) lt!92033) (apply!167 lt!92023 lt!92033))))

(declare-fun lt!92034 () Unit!5599)

(assert (=> b!186035 (= lt!92034 lt!92026)))

(declare-fun lt!92029 () ListLongMap!2391)

(assert (=> b!186035 (= lt!92029 (getCurrentListMapNoExtraKeys!197 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)))))

(declare-fun lt!92037 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92037 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92027 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92027 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!92021 () Unit!5599)

(assert (=> b!186035 (= lt!92021 (addApplyDifferent!143 lt!92029 lt!92037 (zeroValue!3633 thiss!1248) lt!92027))))

(assert (=> b!186035 (= (apply!167 (+!282 lt!92029 (tuple2!3461 lt!92037 (zeroValue!3633 thiss!1248))) lt!92027) (apply!167 lt!92029 lt!92027))))

(declare-fun lt!92028 () Unit!5599)

(assert (=> b!186035 (= lt!92028 lt!92021)))

(declare-fun lt!92030 () ListLongMap!2391)

(assert (=> b!186035 (= lt!92030 (getCurrentListMapNoExtraKeys!197 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3792 thiss!1248)))))

(declare-fun lt!92025 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92025 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!92024 () (_ BitVec 64))

(assert (=> b!186035 (= lt!92024 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!186035 (= lt!92038 (addApplyDifferent!143 lt!92030 lt!92025 (minValue!3633 thiss!1248) lt!92024))))

(assert (=> b!186035 (= (apply!167 (+!282 lt!92030 (tuple2!3461 lt!92025 (minValue!3633 thiss!1248))) lt!92024) (apply!167 lt!92030 lt!92024))))

(declare-fun bm!18754 () Bool)

(assert (=> bm!18754 (= call!18757 call!18758)))

(declare-fun b!186036 () Bool)

(assert (=> b!186036 (= e!122440 e!122436)))

(declare-fun c!33340 () Bool)

(assert (=> b!186036 (= c!33340 (not (= (bvand (extraKeys!3529 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18755 () Bool)

(assert (=> bm!18755 (= call!18756 call!18757)))

(declare-fun b!186037 () Bool)

(assert (=> b!186037 (= e!122434 e!122431)))

(declare-fun res!88018 () Bool)

(assert (=> b!186037 (=> (not res!88018) (not e!122431))))

(assert (=> b!186037 (= res!88018 (contains!1301 lt!92020 (select (arr!3742 (_keys!5733 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!186037 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4058 (_keys!5733 thiss!1248))))))

(assert (= (and d!55075 c!33342) b!186027))

(assert (= (and d!55075 (not c!33342)) b!186026))

(assert (= (and b!186026 c!33338) b!186030))

(assert (= (and b!186026 (not c!33338)) b!186022))

(assert (= (and b!186022 c!33341) b!186031))

(assert (= (and b!186022 (not c!33341)) b!186033))

(assert (= (or b!186031 b!186033) bm!18755))

(assert (= (or b!186030 bm!18755) bm!18754))

(assert (= (or b!186030 b!186031) bm!18752))

(assert (= (or b!186027 bm!18754) bm!18749))

(assert (= (or b!186027 bm!18752) bm!18753))

(assert (= (and d!55075 res!88022) b!186024))

(assert (= (and d!55075 c!33339) b!186035))

(assert (= (and d!55075 (not c!33339)) b!186025))

(assert (= (and d!55075 res!88025) b!186021))

(assert (= (and b!186021 res!88023) b!186029))

(assert (= (and b!186021 (not res!88021)) b!186037))

(assert (= (and b!186037 res!88018) b!186023))

(assert (= (and b!186021 res!88019) b!186018))

(assert (= (and b!186018 c!33337) b!186034))

(assert (= (and b!186018 (not c!33337)) b!186032))

(assert (= (and b!186034 res!88024) b!186028))

(assert (= (or b!186034 b!186032) bm!18750))

(assert (= (and b!186018 res!88017) b!186036))

(assert (= (and b!186036 c!33340) b!186017))

(assert (= (and b!186036 (not c!33340)) b!186020))

(assert (= (and b!186017 res!88020) b!186019))

(assert (= (or b!186017 b!186020) bm!18751))

(declare-fun b_lambda!7285 () Bool)

(assert (=> (not b_lambda!7285) (not b!186023)))

(declare-fun t!7286 () Bool)

(declare-fun tb!2853 () Bool)

(assert (=> (and b!185901 (= (defaultEntry!3792 thiss!1248) (defaultEntry!3792 thiss!1248)) t!7286) tb!2853))

(declare-fun result!4821 () Bool)

(assert (=> tb!2853 (= result!4821 tp_is_empty!4359)))

(assert (=> b!186023 t!7286))

(declare-fun b_and!11211 () Bool)

(assert (= b_and!11207 (and (=> t!7286 result!4821) b_and!11211)))

(declare-fun m!213059 () Bool)

(assert (=> b!186028 m!213059))

(declare-fun m!213061 () Bool)

(assert (=> bm!18753 m!213061))

(declare-fun m!213063 () Bool)

(assert (=> b!186029 m!213063))

(assert (=> b!186029 m!213063))

(declare-fun m!213065 () Bool)

(assert (=> b!186029 m!213065))

(assert (=> d!55075 m!212989))

(assert (=> b!186024 m!213063))

(assert (=> b!186024 m!213063))

(assert (=> b!186024 m!213065))

(declare-fun m!213067 () Bool)

(assert (=> bm!18749 m!213067))

(assert (=> b!186023 m!213063))

(assert (=> b!186023 m!213063))

(declare-fun m!213069 () Bool)

(assert (=> b!186023 m!213069))

(declare-fun m!213071 () Bool)

(assert (=> b!186023 m!213071))

(assert (=> b!186023 m!213071))

(declare-fun m!213073 () Bool)

(assert (=> b!186023 m!213073))

(declare-fun m!213075 () Bool)

(assert (=> b!186023 m!213075))

(assert (=> b!186023 m!213073))

(assert (=> b!186037 m!213063))

(assert (=> b!186037 m!213063))

(declare-fun m!213077 () Bool)

(assert (=> b!186037 m!213077))

(declare-fun m!213079 () Bool)

(assert (=> bm!18751 m!213079))

(declare-fun m!213081 () Bool)

(assert (=> b!186019 m!213081))

(declare-fun m!213083 () Bool)

(assert (=> bm!18750 m!213083))

(declare-fun m!213085 () Bool)

(assert (=> b!186027 m!213085))

(declare-fun m!213087 () Bool)

(assert (=> b!186035 m!213087))

(declare-fun m!213089 () Bool)

(assert (=> b!186035 m!213089))

(declare-fun m!213091 () Bool)

(assert (=> b!186035 m!213091))

(declare-fun m!213093 () Bool)

(assert (=> b!186035 m!213093))

(declare-fun m!213095 () Bool)

(assert (=> b!186035 m!213095))

(assert (=> b!186035 m!213087))

(declare-fun m!213097 () Bool)

(assert (=> b!186035 m!213097))

(declare-fun m!213099 () Bool)

(assert (=> b!186035 m!213099))

(assert (=> b!186035 m!213097))

(declare-fun m!213101 () Bool)

(assert (=> b!186035 m!213101))

(assert (=> b!186035 m!213101))

(declare-fun m!213103 () Bool)

(assert (=> b!186035 m!213103))

(declare-fun m!213105 () Bool)

(assert (=> b!186035 m!213105))

(declare-fun m!213107 () Bool)

(assert (=> b!186035 m!213107))

(assert (=> b!186035 m!213067))

(assert (=> b!186035 m!213063))

(declare-fun m!213109 () Bool)

(assert (=> b!186035 m!213109))

(declare-fun m!213111 () Bool)

(assert (=> b!186035 m!213111))

(assert (=> b!186035 m!213091))

(declare-fun m!213113 () Bool)

(assert (=> b!186035 m!213113))

(declare-fun m!213115 () Bool)

(assert (=> b!186035 m!213115))

(assert (=> b!185902 d!55075))

(declare-fun b!186056 () Bool)

(declare-fun e!122452 () Bool)

(declare-fun call!18763 () Bool)

(assert (=> b!186056 (= e!122452 (not call!18763))))

(declare-fun b!186057 () Bool)

(declare-fun res!88035 () Bool)

(declare-fun e!122453 () Bool)

(assert (=> b!186057 (=> (not res!88035) (not e!122453))))

(declare-fun lt!92043 () SeekEntryResult!650)

(assert (=> b!186057 (= res!88035 (= (select (arr!3742 (_keys!5733 thiss!1248)) (index!4773 lt!92043)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186057 (and (bvsge (index!4773 lt!92043) #b00000000000000000000000000000000) (bvslt (index!4773 lt!92043) (size!4058 (_keys!5733 thiss!1248))))))

(declare-fun b!186058 () Bool)

(declare-fun e!122454 () Bool)

(assert (=> b!186058 (= e!122454 e!122452)))

(declare-fun res!88036 () Bool)

(declare-fun call!18764 () Bool)

(assert (=> b!186058 (= res!88036 call!18764)))

(assert (=> b!186058 (=> (not res!88036) (not e!122452))))

(declare-fun b!186059 () Bool)

(declare-fun e!122451 () Bool)

(assert (=> b!186059 (= e!122454 e!122451)))

(declare-fun c!33347 () Bool)

(assert (=> b!186059 (= c!33347 ((_ is MissingVacant!650) lt!92043))))

(declare-fun bm!18760 () Bool)

(declare-fun arrayContainsKey!0 (array!7926 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!18760 (= call!18763 (arrayContainsKey!0 (_keys!5733 thiss!1248) key!828 #b00000000000000000000000000000000))))

(declare-fun b!186060 () Bool)

(declare-fun res!88034 () Bool)

(assert (=> b!186060 (=> (not res!88034) (not e!122453))))

(assert (=> b!186060 (= res!88034 call!18764)))

(assert (=> b!186060 (= e!122451 e!122453)))

(declare-fun b!186061 () Bool)

(assert (=> b!186061 (and (bvsge (index!4770 lt!92043) #b00000000000000000000000000000000) (bvslt (index!4770 lt!92043) (size!4058 (_keys!5733 thiss!1248))))))

(declare-fun res!88037 () Bool)

(assert (=> b!186061 (= res!88037 (= (select (arr!3742 (_keys!5733 thiss!1248)) (index!4770 lt!92043)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!186061 (=> (not res!88037) (not e!122452))))

(declare-fun b!186062 () Bool)

(assert (=> b!186062 (= e!122451 ((_ is Undefined!650) lt!92043))))

(declare-fun b!186063 () Bool)

(assert (=> b!186063 (= e!122453 (not call!18763))))

(declare-fun bm!18761 () Bool)

(declare-fun c!33348 () Bool)

(assert (=> bm!18761 (= call!18764 (inRange!0 (ite c!33348 (index!4770 lt!92043) (index!4773 lt!92043)) (mask!8909 thiss!1248)))))

(declare-fun d!55077 () Bool)

(assert (=> d!55077 e!122454))

(assert (=> d!55077 (= c!33348 ((_ is MissingZero!650) lt!92043))))

(assert (=> d!55077 (= lt!92043 (seekEntryOrOpen!0 key!828 (_keys!5733 thiss!1248) (mask!8909 thiss!1248)))))

(declare-fun lt!92044 () Unit!5599)

(declare-fun choose!991 (array!7926 array!7928 (_ BitVec 32) (_ BitVec 32) V!5459 V!5459 (_ BitVec 64) Int) Unit!5599)

(assert (=> d!55077 (= lt!92044 (choose!991 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) key!828 (defaultEntry!3792 thiss!1248)))))

(assert (=> d!55077 (validMask!0 (mask!8909 thiss!1248))))

(assert (=> d!55077 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!143 (_keys!5733 thiss!1248) (_values!3775 thiss!1248) (mask!8909 thiss!1248) (extraKeys!3529 thiss!1248) (zeroValue!3633 thiss!1248) (minValue!3633 thiss!1248) key!828 (defaultEntry!3792 thiss!1248)) lt!92044)))

(assert (= (and d!55077 c!33348) b!186058))

(assert (= (and d!55077 (not c!33348)) b!186059))

(assert (= (and b!186058 res!88036) b!186061))

(assert (= (and b!186061 res!88037) b!186056))

(assert (= (and b!186059 c!33347) b!186060))

(assert (= (and b!186059 (not c!33347)) b!186062))

(assert (= (and b!186060 res!88034) b!186057))

(assert (= (and b!186057 res!88035) b!186063))

(assert (= (or b!186058 b!186060) bm!18761))

(assert (= (or b!186056 b!186063) bm!18760))

(declare-fun m!213117 () Bool)

(assert (=> bm!18760 m!213117))

(declare-fun m!213119 () Bool)

(assert (=> bm!18761 m!213119))

(assert (=> d!55077 m!212995))

(declare-fun m!213121 () Bool)

(assert (=> d!55077 m!213121))

(assert (=> d!55077 m!212989))

(declare-fun m!213123 () Bool)

(assert (=> b!186057 m!213123))

(declare-fun m!213125 () Bool)

(assert (=> b!186061 m!213125))

(assert (=> b!185893 d!55077))

(declare-fun mapNonEmpty!7506 () Bool)

(declare-fun mapRes!7506 () Bool)

(declare-fun tp!16569 () Bool)

(declare-fun e!122459 () Bool)

(assert (=> mapNonEmpty!7506 (= mapRes!7506 (and tp!16569 e!122459))))

(declare-fun mapValue!7506 () ValueCell!1836)

(declare-fun mapRest!7506 () (Array (_ BitVec 32) ValueCell!1836))

(declare-fun mapKey!7506 () (_ BitVec 32))

(assert (=> mapNonEmpty!7506 (= mapRest!7500 (store mapRest!7506 mapKey!7506 mapValue!7506))))

(declare-fun mapIsEmpty!7506 () Bool)

(assert (=> mapIsEmpty!7506 mapRes!7506))

(declare-fun b!186071 () Bool)

(declare-fun e!122460 () Bool)

(assert (=> b!186071 (= e!122460 tp_is_empty!4359)))

(declare-fun condMapEmpty!7506 () Bool)

(declare-fun mapDefault!7506 () ValueCell!1836)

(assert (=> mapNonEmpty!7500 (= condMapEmpty!7506 (= mapRest!7500 ((as const (Array (_ BitVec 32) ValueCell!1836)) mapDefault!7506)))))

(assert (=> mapNonEmpty!7500 (= tp!16560 (and e!122460 mapRes!7506))))

(declare-fun b!186070 () Bool)

(assert (=> b!186070 (= e!122459 tp_is_empty!4359)))

(assert (= (and mapNonEmpty!7500 condMapEmpty!7506) mapIsEmpty!7506))

(assert (= (and mapNonEmpty!7500 (not condMapEmpty!7506)) mapNonEmpty!7506))

(assert (= (and mapNonEmpty!7506 ((_ is ValueCellFull!1836) mapValue!7506)) b!186070))

(assert (= (and mapNonEmpty!7500 ((_ is ValueCellFull!1836) mapDefault!7506)) b!186071))

(declare-fun m!213127 () Bool)

(assert (=> mapNonEmpty!7506 m!213127))

(declare-fun b_lambda!7287 () Bool)

(assert (= b_lambda!7285 (or (and b!185901 b_free!4587) b_lambda!7287)))

(check-sat (not b!185957) (not bm!18751) (not b!186028) (not b_next!4587) (not b!185949) (not b!186019) (not b!185974) (not d!55077) (not b_lambda!7287) (not bm!18753) tp_is_empty!4359 (not b!185959) (not b!186024) (not bm!18749) (not d!55061) b_and!11211 (not d!55059) (not b!186029) (not b!185958) (not b!185964) (not b!185972) (not mapNonEmpty!7506) (not bm!18760) (not b!186023) (not b!186035) (not d!55073) (not d!55063) (not bm!18761) (not bm!18750) (not b!186027) (not b!186037) (not d!55075))
(check-sat b_and!11211 (not b_next!4587))
