; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24620 () Bool)

(assert start!24620)

(declare-fun b!257545 () Bool)

(declare-fun b_free!6735 () Bool)

(declare-fun b_next!6735 () Bool)

(assert (=> b!257545 (= b_free!6735 (not b_next!6735))))

(declare-fun tp!23513 () Bool)

(declare-fun b_and!13823 () Bool)

(assert (=> b!257545 (= tp!23513 b_and!13823)))

(declare-fun b!257535 () Bool)

(declare-fun e!166948 () Bool)

(declare-fun e!166951 () Bool)

(assert (=> b!257535 (= e!166948 e!166951)))

(declare-fun res!125977 () Bool)

(declare-fun call!24457 () Bool)

(assert (=> b!257535 (= res!125977 call!24457)))

(assert (=> b!257535 (=> (not res!125977) (not e!166951))))

(declare-fun b!257536 () Bool)

(declare-fun res!125978 () Bool)

(declare-fun e!166955 () Bool)

(assert (=> b!257536 (=> (not res!125978) (not e!166955))))

(declare-datatypes ((V!8443 0))(
  ( (V!8444 (val!3343 Int)) )
))
(declare-datatypes ((ValueCell!2955 0))(
  ( (ValueCellFull!2955 (v!5434 V!8443)) (EmptyCell!2955) )
))
(declare-datatypes ((array!12538 0))(
  ( (array!12539 (arr!5937 (Array (_ BitVec 32) ValueCell!2955)) (size!6284 (_ BitVec 32))) )
))
(declare-datatypes ((array!12540 0))(
  ( (array!12541 (arr!5938 (Array (_ BitVec 32) (_ BitVec 64))) (size!6285 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3810 0))(
  ( (LongMapFixedSize!3811 (defaultEntry!4753 Int) (mask!11043 (_ BitVec 32)) (extraKeys!4490 (_ BitVec 32)) (zeroValue!4594 V!8443) (minValue!4594 V!8443) (_size!1954 (_ BitVec 32)) (_keys!6921 array!12540) (_values!4736 array!12538) (_vacant!1954 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3810)

(declare-datatypes ((SeekEntryResult!1181 0))(
  ( (MissingZero!1181 (index!6894 (_ BitVec 32))) (Found!1181 (index!6895 (_ BitVec 32))) (Intermediate!1181 (undefined!1993 Bool) (index!6896 (_ BitVec 32)) (x!25031 (_ BitVec 32))) (Undefined!1181) (MissingVacant!1181 (index!6897 (_ BitVec 32))) )
))
(declare-fun lt!129551 () SeekEntryResult!1181)

(assert (=> b!257536 (= res!125978 (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6894 lt!129551)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!125981 () Bool)

(declare-fun e!166949 () Bool)

(assert (=> start!24620 (=> (not res!125981) (not e!166949))))

(declare-fun valid!1481 (LongMapFixedSize!3810) Bool)

(assert (=> start!24620 (= res!125981 (valid!1481 thiss!1504))))

(assert (=> start!24620 e!166949))

(declare-fun e!166958 () Bool)

(assert (=> start!24620 e!166958))

(assert (=> start!24620 true))

(declare-fun tp_is_empty!6597 () Bool)

(assert (=> start!24620 tp_is_empty!6597))

(declare-fun mapIsEmpty!11232 () Bool)

(declare-fun mapRes!11232 () Bool)

(assert (=> mapIsEmpty!11232 mapRes!11232))

(declare-fun b!257537 () Bool)

(declare-datatypes ((Unit!7999 0))(
  ( (Unit!8000) )
))
(declare-fun e!166954 () Unit!7999)

(declare-fun lt!129545 () Unit!7999)

(assert (=> b!257537 (= e!166954 lt!129545)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!435 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 64) Int) Unit!7999)

(assert (=> b!257537 (= lt!129545 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!435 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 (defaultEntry!4753 thiss!1504)))))

(declare-fun c!43577 () Bool)

(get-info :version)

(assert (=> b!257537 (= c!43577 ((_ is MissingZero!1181) lt!129551))))

(declare-fun e!166950 () Bool)

(assert (=> b!257537 e!166950))

(declare-fun b!257538 () Bool)

(declare-fun e!166956 () Unit!7999)

(declare-fun Unit!8001 () Unit!7999)

(assert (=> b!257538 (= e!166956 Unit!8001)))

(declare-fun lt!129550 () Unit!7999)

(declare-fun lemmaArrayContainsKeyThenInListMap!241 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 64) (_ BitVec 32) Int) Unit!7999)

(assert (=> b!257538 (= lt!129550 (lemmaArrayContainsKeyThenInListMap!241 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(assert (=> b!257538 false))

(declare-fun b!257539 () Bool)

(declare-fun call!24458 () Bool)

(assert (=> b!257539 (= e!166955 (not call!24458))))

(declare-fun b!257540 () Bool)

(declare-fun e!166959 () Bool)

(assert (=> b!257540 (= e!166949 e!166959)))

(declare-fun res!125980 () Bool)

(assert (=> b!257540 (=> (not res!125980) (not e!166959))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!257540 (= res!125980 (or (= lt!129551 (MissingZero!1181 index!297)) (= lt!129551 (MissingVacant!1181 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12540 (_ BitVec 32)) SeekEntryResult!1181)

(assert (=> b!257540 (= lt!129551 (seekEntryOrOpen!0 key!932 (_keys!6921 thiss!1504) (mask!11043 thiss!1504)))))

(declare-fun bm!24454 () Bool)

(declare-fun arrayContainsKey!0 (array!12540 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24454 (= call!24458 (arrayContainsKey!0 (_keys!6921 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257541 () Bool)

(declare-fun res!125975 () Bool)

(assert (=> b!257541 (=> (not res!125975) (not e!166949))))

(assert (=> b!257541 (= res!125975 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!257542 () Bool)

(assert (=> b!257542 (= e!166948 ((_ is Undefined!1181) lt!129551))))

(declare-fun mapNonEmpty!11232 () Bool)

(declare-fun tp!23514 () Bool)

(declare-fun e!166961 () Bool)

(assert (=> mapNonEmpty!11232 (= mapRes!11232 (and tp!23514 e!166961))))

(declare-fun mapRest!11232 () (Array (_ BitVec 32) ValueCell!2955))

(declare-fun mapValue!11232 () ValueCell!2955)

(declare-fun mapKey!11232 () (_ BitVec 32))

(assert (=> mapNonEmpty!11232 (= (arr!5937 (_values!4736 thiss!1504)) (store mapRest!11232 mapKey!11232 mapValue!11232))))

(declare-fun b!257543 () Bool)

(declare-fun e!166960 () Bool)

(assert (=> b!257543 (= e!166959 e!166960)))

(declare-fun res!125979 () Bool)

(assert (=> b!257543 (=> (not res!125979) (not e!166960))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!257543 (= res!125979 (inRange!0 index!297 (mask!11043 thiss!1504)))))

(declare-fun lt!129557 () Unit!7999)

(assert (=> b!257543 (= lt!129557 e!166954)))

(declare-fun c!43576 () Bool)

(declare-datatypes ((tuple2!4922 0))(
  ( (tuple2!4923 (_1!2471 (_ BitVec 64)) (_2!2471 V!8443)) )
))
(declare-datatypes ((List!3825 0))(
  ( (Nil!3822) (Cons!3821 (h!4483 tuple2!4922) (t!8894 List!3825)) )
))
(declare-datatypes ((ListLongMap!3849 0))(
  ( (ListLongMap!3850 (toList!1940 List!3825)) )
))
(declare-fun lt!129548 () ListLongMap!3849)

(declare-fun contains!1874 (ListLongMap!3849 (_ BitVec 64)) Bool)

(assert (=> b!257543 (= c!43576 (contains!1874 lt!129548 key!932))))

(declare-fun getCurrentListMap!1463 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 32) Int) ListLongMap!3849)

(assert (=> b!257543 (= lt!129548 (getCurrentListMap!1463 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun b!257544 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!257544 (= e!166960 (not (validMask!0 (mask!11043 thiss!1504))))))

(declare-fun lt!129554 () array!12540)

(declare-fun arrayCountValidKeys!0 (array!12540 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!257544 (= (arrayCountValidKeys!0 lt!129554 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!129555 () Unit!7999)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12540 (_ BitVec 32)) Unit!7999)

(assert (=> b!257544 (= lt!129555 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129554 index!297))))

(assert (=> b!257544 (arrayContainsKey!0 lt!129554 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129547 () Unit!7999)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12540 (_ BitVec 64) (_ BitVec 32)) Unit!7999)

(assert (=> b!257544 (= lt!129547 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129554 key!932 index!297))))

(declare-fun v!346 () V!8443)

(declare-fun +!684 (ListLongMap!3849 tuple2!4922) ListLongMap!3849)

(assert (=> b!257544 (= (+!684 lt!129548 (tuple2!4923 key!932 v!346)) (getCurrentListMap!1463 lt!129554 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129549 () Unit!7999)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!99 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 32) (_ BitVec 64) V!8443 Int) Unit!7999)

(assert (=> b!257544 (= lt!129549 (lemmaAddValidKeyToArrayThenAddPairToListMap!99 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) index!297 key!932 v!346 (defaultEntry!4753 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12540 (_ BitVec 32)) Bool)

(assert (=> b!257544 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129554 (mask!11043 thiss!1504))))

(declare-fun lt!129558 () Unit!7999)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12540 (_ BitVec 32) (_ BitVec 32)) Unit!7999)

(assert (=> b!257544 (= lt!129558 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6921 thiss!1504) index!297 (mask!11043 thiss!1504)))))

(assert (=> b!257544 (= (arrayCountValidKeys!0 lt!129554 #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6921 thiss!1504) #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504)))))))

(declare-fun lt!129546 () Unit!7999)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12540 (_ BitVec 32) (_ BitVec 64)) Unit!7999)

(assert (=> b!257544 (= lt!129546 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6921 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3826 0))(
  ( (Nil!3823) (Cons!3822 (h!4484 (_ BitVec 64)) (t!8895 List!3826)) )
))
(declare-fun arrayNoDuplicates!0 (array!12540 (_ BitVec 32) List!3826) Bool)

(assert (=> b!257544 (arrayNoDuplicates!0 lt!129554 #b00000000000000000000000000000000 Nil!3823)))

(assert (=> b!257544 (= lt!129554 (array!12541 (store (arr!5938 (_keys!6921 thiss!1504)) index!297 key!932) (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun lt!129552 () Unit!7999)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3826) Unit!7999)

(assert (=> b!257544 (= lt!129552 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6921 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3823))))

(declare-fun lt!129556 () Unit!7999)

(assert (=> b!257544 (= lt!129556 e!166956)))

(declare-fun c!43575 () Bool)

(assert (=> b!257544 (= c!43575 (arrayContainsKey!0 (_keys!6921 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!166957 () Bool)

(declare-fun array_inv!3915 (array!12540) Bool)

(declare-fun array_inv!3916 (array!12538) Bool)

(assert (=> b!257545 (= e!166958 (and tp!23513 tp_is_empty!6597 (array_inv!3915 (_keys!6921 thiss!1504)) (array_inv!3916 (_values!4736 thiss!1504)) e!166957))))

(declare-fun b!257546 () Bool)

(declare-fun c!43574 () Bool)

(assert (=> b!257546 (= c!43574 ((_ is MissingVacant!1181) lt!129551))))

(assert (=> b!257546 (= e!166950 e!166948)))

(declare-fun bm!24455 () Bool)

(assert (=> bm!24455 (= call!24457 (inRange!0 (ite c!43577 (index!6894 lt!129551) (index!6897 lt!129551)) (mask!11043 thiss!1504)))))

(declare-fun b!257547 () Bool)

(declare-fun res!125976 () Bool)

(assert (=> b!257547 (=> (not res!125976) (not e!166955))))

(assert (=> b!257547 (= res!125976 call!24457)))

(assert (=> b!257547 (= e!166950 e!166955)))

(declare-fun b!257548 () Bool)

(assert (=> b!257548 (= e!166951 (not call!24458))))

(declare-fun b!257549 () Bool)

(declare-fun e!166952 () Bool)

(assert (=> b!257549 (= e!166952 tp_is_empty!6597)))

(declare-fun b!257550 () Bool)

(declare-fun Unit!8002 () Unit!7999)

(assert (=> b!257550 (= e!166956 Unit!8002)))

(declare-fun b!257551 () Bool)

(assert (=> b!257551 (= e!166957 (and e!166952 mapRes!11232))))

(declare-fun condMapEmpty!11232 () Bool)

(declare-fun mapDefault!11232 () ValueCell!2955)

(assert (=> b!257551 (= condMapEmpty!11232 (= (arr!5937 (_values!4736 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2955)) mapDefault!11232)))))

(declare-fun b!257552 () Bool)

(declare-fun res!125982 () Bool)

(assert (=> b!257552 (= res!125982 (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6897 lt!129551)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257552 (=> (not res!125982) (not e!166951))))

(declare-fun b!257553 () Bool)

(declare-fun Unit!8003 () Unit!7999)

(assert (=> b!257553 (= e!166954 Unit!8003)))

(declare-fun lt!129553 () Unit!7999)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!435 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 64) Int) Unit!7999)

(assert (=> b!257553 (= lt!129553 (lemmaInListMapThenSeekEntryOrOpenFindsIt!435 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 (defaultEntry!4753 thiss!1504)))))

(assert (=> b!257553 false))

(declare-fun b!257554 () Bool)

(assert (=> b!257554 (= e!166961 tp_is_empty!6597)))

(assert (= (and start!24620 res!125981) b!257541))

(assert (= (and b!257541 res!125975) b!257540))

(assert (= (and b!257540 res!125980) b!257543))

(assert (= (and b!257543 c!43576) b!257553))

(assert (= (and b!257543 (not c!43576)) b!257537))

(assert (= (and b!257537 c!43577) b!257547))

(assert (= (and b!257537 (not c!43577)) b!257546))

(assert (= (and b!257547 res!125976) b!257536))

(assert (= (and b!257536 res!125978) b!257539))

(assert (= (and b!257546 c!43574) b!257535))

(assert (= (and b!257546 (not c!43574)) b!257542))

(assert (= (and b!257535 res!125977) b!257552))

(assert (= (and b!257552 res!125982) b!257548))

(assert (= (or b!257547 b!257535) bm!24455))

(assert (= (or b!257539 b!257548) bm!24454))

(assert (= (and b!257543 res!125979) b!257544))

(assert (= (and b!257544 c!43575) b!257538))

(assert (= (and b!257544 (not c!43575)) b!257550))

(assert (= (and b!257551 condMapEmpty!11232) mapIsEmpty!11232))

(assert (= (and b!257551 (not condMapEmpty!11232)) mapNonEmpty!11232))

(assert (= (and mapNonEmpty!11232 ((_ is ValueCellFull!2955) mapValue!11232)) b!257554))

(assert (= (and b!257551 ((_ is ValueCellFull!2955) mapDefault!11232)) b!257549))

(assert (= b!257545 b!257551))

(assert (= start!24620 b!257545))

(declare-fun m!272875 () Bool)

(assert (=> bm!24455 m!272875))

(declare-fun m!272877 () Bool)

(assert (=> b!257552 m!272877))

(declare-fun m!272879 () Bool)

(assert (=> start!24620 m!272879))

(declare-fun m!272881 () Bool)

(assert (=> bm!24454 m!272881))

(declare-fun m!272883 () Bool)

(assert (=> b!257540 m!272883))

(declare-fun m!272885 () Bool)

(assert (=> b!257536 m!272885))

(declare-fun m!272887 () Bool)

(assert (=> b!257538 m!272887))

(declare-fun m!272889 () Bool)

(assert (=> mapNonEmpty!11232 m!272889))

(declare-fun m!272891 () Bool)

(assert (=> b!257543 m!272891))

(declare-fun m!272893 () Bool)

(assert (=> b!257543 m!272893))

(declare-fun m!272895 () Bool)

(assert (=> b!257543 m!272895))

(declare-fun m!272897 () Bool)

(assert (=> b!257544 m!272897))

(declare-fun m!272899 () Bool)

(assert (=> b!257544 m!272899))

(declare-fun m!272901 () Bool)

(assert (=> b!257544 m!272901))

(declare-fun m!272903 () Bool)

(assert (=> b!257544 m!272903))

(declare-fun m!272905 () Bool)

(assert (=> b!257544 m!272905))

(declare-fun m!272907 () Bool)

(assert (=> b!257544 m!272907))

(declare-fun m!272909 () Bool)

(assert (=> b!257544 m!272909))

(declare-fun m!272911 () Bool)

(assert (=> b!257544 m!272911))

(declare-fun m!272913 () Bool)

(assert (=> b!257544 m!272913))

(declare-fun m!272915 () Bool)

(assert (=> b!257544 m!272915))

(declare-fun m!272917 () Bool)

(assert (=> b!257544 m!272917))

(declare-fun m!272919 () Bool)

(assert (=> b!257544 m!272919))

(assert (=> b!257544 m!272881))

(declare-fun m!272921 () Bool)

(assert (=> b!257544 m!272921))

(declare-fun m!272923 () Bool)

(assert (=> b!257544 m!272923))

(declare-fun m!272925 () Bool)

(assert (=> b!257544 m!272925))

(declare-fun m!272927 () Bool)

(assert (=> b!257544 m!272927))

(declare-fun m!272929 () Bool)

(assert (=> b!257544 m!272929))

(declare-fun m!272931 () Bool)

(assert (=> b!257537 m!272931))

(declare-fun m!272933 () Bool)

(assert (=> b!257553 m!272933))

(declare-fun m!272935 () Bool)

(assert (=> b!257545 m!272935))

(declare-fun m!272937 () Bool)

(assert (=> b!257545 m!272937))

(check-sat (not b!257537) (not b!257553) (not start!24620) b_and!13823 (not b!257544) (not b_next!6735) (not b!257538) tp_is_empty!6597 (not bm!24454) (not bm!24455) (not b!257545) (not b!257540) (not b!257543) (not mapNonEmpty!11232))
(check-sat b_and!13823 (not b_next!6735))
(get-model)

(declare-fun b!257626 () Bool)

(declare-fun e!167009 () Bool)

(assert (=> b!257626 (= e!167009 (= (arrayCountValidKeys!0 (array!12541 (store (arr!5938 (_keys!6921 thiss!1504)) index!297 key!932) (size!6285 (_keys!6921 thiss!1504))) #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6921 thiss!1504) #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!257625 () Bool)

(declare-fun e!167008 () Bool)

(assert (=> b!257625 (= e!167008 (bvslt (size!6285 (_keys!6921 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!61739 () Bool)

(assert (=> d!61739 e!167009))

(declare-fun res!126015 () Bool)

(assert (=> d!61739 (=> (not res!126015) (not e!167009))))

(assert (=> d!61739 (= res!126015 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6285 (_keys!6921 thiss!1504)))))))

(declare-fun lt!129603 () Unit!7999)

(declare-fun choose!1 (array!12540 (_ BitVec 32) (_ BitVec 64)) Unit!7999)

(assert (=> d!61739 (= lt!129603 (choose!1 (_keys!6921 thiss!1504) index!297 key!932))))

(assert (=> d!61739 e!167008))

(declare-fun res!126018 () Bool)

(assert (=> d!61739 (=> (not res!126018) (not e!167008))))

(assert (=> d!61739 (= res!126018 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6285 (_keys!6921 thiss!1504)))))))

(assert (=> d!61739 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6921 thiss!1504) index!297 key!932) lt!129603)))

(declare-fun b!257624 () Bool)

(declare-fun res!126016 () Bool)

(assert (=> b!257624 (=> (not res!126016) (not e!167008))))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!257624 (= res!126016 (validKeyInArray!0 key!932))))

(declare-fun b!257623 () Bool)

(declare-fun res!126017 () Bool)

(assert (=> b!257623 (=> (not res!126017) (not e!167008))))

(assert (=> b!257623 (= res!126017 (not (validKeyInArray!0 (select (arr!5938 (_keys!6921 thiss!1504)) index!297))))))

(assert (= (and d!61739 res!126018) b!257623))

(assert (= (and b!257623 res!126017) b!257624))

(assert (= (and b!257624 res!126016) b!257625))

(assert (= (and d!61739 res!126015) b!257626))

(assert (=> b!257626 m!272915))

(declare-fun m!273003 () Bool)

(assert (=> b!257626 m!273003))

(assert (=> b!257626 m!272923))

(declare-fun m!273005 () Bool)

(assert (=> d!61739 m!273005))

(declare-fun m!273007 () Bool)

(assert (=> b!257624 m!273007))

(declare-fun m!273009 () Bool)

(assert (=> b!257623 m!273009))

(assert (=> b!257623 m!273009))

(declare-fun m!273011 () Bool)

(assert (=> b!257623 m!273011))

(assert (=> b!257544 d!61739))

(declare-fun d!61741 () Bool)

(assert (=> d!61741 (= (arrayCountValidKeys!0 lt!129554 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!129606 () Unit!7999)

(declare-fun choose!2 (array!12540 (_ BitVec 32)) Unit!7999)

(assert (=> d!61741 (= lt!129606 (choose!2 lt!129554 index!297))))

(declare-fun e!167012 () Bool)

(assert (=> d!61741 e!167012))

(declare-fun res!126023 () Bool)

(assert (=> d!61741 (=> (not res!126023) (not e!167012))))

(assert (=> d!61741 (= res!126023 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6285 lt!129554))))))

(assert (=> d!61741 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!129554 index!297) lt!129606)))

(declare-fun b!257631 () Bool)

(declare-fun res!126024 () Bool)

(assert (=> b!257631 (=> (not res!126024) (not e!167012))))

(assert (=> b!257631 (= res!126024 (validKeyInArray!0 (select (arr!5938 lt!129554) index!297)))))

(declare-fun b!257632 () Bool)

(assert (=> b!257632 (= e!167012 (bvslt (size!6285 lt!129554) #b01111111111111111111111111111111))))

(assert (= (and d!61741 res!126023) b!257631))

(assert (= (and b!257631 res!126024) b!257632))

(declare-fun m!273013 () Bool)

(assert (=> d!61741 m!273013))

(declare-fun m!273015 () Bool)

(assert (=> d!61741 m!273015))

(declare-fun m!273017 () Bool)

(assert (=> b!257631 m!273017))

(assert (=> b!257631 m!273017))

(declare-fun m!273019 () Bool)

(assert (=> b!257631 m!273019))

(assert (=> b!257544 d!61741))

(declare-fun b!257641 () Bool)

(declare-fun e!167018 () (_ BitVec 32))

(declare-fun e!167017 () (_ BitVec 32))

(assert (=> b!257641 (= e!167018 e!167017)))

(declare-fun c!43595 () Bool)

(assert (=> b!257641 (= c!43595 (validKeyInArray!0 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24464 () Bool)

(declare-fun call!24467 () (_ BitVec 32))

(assert (=> bm!24464 (= call!24467 (arrayCountValidKeys!0 (_keys!6921 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun b!257642 () Bool)

(assert (=> b!257642 (= e!167017 call!24467)))

(declare-fun b!257643 () Bool)

(assert (=> b!257643 (= e!167018 #b00000000000000000000000000000000)))

(declare-fun d!61743 () Bool)

(declare-fun lt!129609 () (_ BitVec 32))

(assert (=> d!61743 (and (bvsge lt!129609 #b00000000000000000000000000000000) (bvsle lt!129609 (bvsub (size!6285 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61743 (= lt!129609 e!167018)))

(declare-fun c!43594 () Bool)

(assert (=> d!61743 (= c!43594 (bvsge #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))))))

(assert (=> d!61743 (and (bvsle #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6285 (_keys!6921 thiss!1504)) (size!6285 (_keys!6921 thiss!1504))))))

(assert (=> d!61743 (= (arrayCountValidKeys!0 (_keys!6921 thiss!1504) #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) lt!129609)))

(declare-fun b!257644 () Bool)

(assert (=> b!257644 (= e!167017 (bvadd #b00000000000000000000000000000001 call!24467))))

(assert (= (and d!61743 c!43594) b!257643))

(assert (= (and d!61743 (not c!43594)) b!257641))

(assert (= (and b!257641 c!43595) b!257644))

(assert (= (and b!257641 (not c!43595)) b!257642))

(assert (= (or b!257644 b!257642) bm!24464))

(declare-fun m!273021 () Bool)

(assert (=> b!257641 m!273021))

(assert (=> b!257641 m!273021))

(declare-fun m!273023 () Bool)

(assert (=> b!257641 m!273023))

(declare-fun m!273025 () Bool)

(assert (=> bm!24464 m!273025))

(assert (=> b!257544 d!61743))

(declare-fun d!61745 () Bool)

(declare-fun e!167021 () Bool)

(assert (=> d!61745 e!167021))

(declare-fun res!126027 () Bool)

(assert (=> d!61745 (=> (not res!126027) (not e!167021))))

(assert (=> d!61745 (= res!126027 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6285 (_keys!6921 thiss!1504))) (bvslt index!297 (size!6284 (_values!4736 thiss!1504)))))))

(declare-fun lt!129612 () Unit!7999)

(declare-fun choose!1248 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 32) (_ BitVec 64) V!8443 Int) Unit!7999)

(assert (=> d!61745 (= lt!129612 (choose!1248 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) index!297 key!932 v!346 (defaultEntry!4753 thiss!1504)))))

(assert (=> d!61745 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61745 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!99 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) index!297 key!932 v!346 (defaultEntry!4753 thiss!1504)) lt!129612)))

(declare-fun b!257647 () Bool)

(assert (=> b!257647 (= e!167021 (= (+!684 (getCurrentListMap!1463 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)) (tuple2!4923 key!932 v!346)) (getCurrentListMap!1463 (array!12541 (store (arr!5938 (_keys!6921 thiss!1504)) index!297 key!932) (size!6285 (_keys!6921 thiss!1504))) (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504))))))

(assert (= (and d!61745 res!126027) b!257647))

(declare-fun m!273027 () Bool)

(assert (=> d!61745 m!273027))

(assert (=> d!61745 m!272897))

(assert (=> b!257647 m!272895))

(assert (=> b!257647 m!272903))

(declare-fun m!273029 () Bool)

(assert (=> b!257647 m!273029))

(assert (=> b!257647 m!272895))

(declare-fun m!273031 () Bool)

(assert (=> b!257647 m!273031))

(assert (=> b!257647 m!272915))

(assert (=> b!257544 d!61745))

(declare-fun d!61747 () Bool)

(assert (=> d!61747 (= (validMask!0 (mask!11043 thiss!1504)) (and (or (= (mask!11043 thiss!1504) #b00000000000000000000000000000111) (= (mask!11043 thiss!1504) #b00000000000000000000000000001111) (= (mask!11043 thiss!1504) #b00000000000000000000000000011111) (= (mask!11043 thiss!1504) #b00000000000000000000000000111111) (= (mask!11043 thiss!1504) #b00000000000000000000000001111111) (= (mask!11043 thiss!1504) #b00000000000000000000000011111111) (= (mask!11043 thiss!1504) #b00000000000000000000000111111111) (= (mask!11043 thiss!1504) #b00000000000000000000001111111111) (= (mask!11043 thiss!1504) #b00000000000000000000011111111111) (= (mask!11043 thiss!1504) #b00000000000000000000111111111111) (= (mask!11043 thiss!1504) #b00000000000000000001111111111111) (= (mask!11043 thiss!1504) #b00000000000000000011111111111111) (= (mask!11043 thiss!1504) #b00000000000000000111111111111111) (= (mask!11043 thiss!1504) #b00000000000000001111111111111111) (= (mask!11043 thiss!1504) #b00000000000000011111111111111111) (= (mask!11043 thiss!1504) #b00000000000000111111111111111111) (= (mask!11043 thiss!1504) #b00000000000001111111111111111111) (= (mask!11043 thiss!1504) #b00000000000011111111111111111111) (= (mask!11043 thiss!1504) #b00000000000111111111111111111111) (= (mask!11043 thiss!1504) #b00000000001111111111111111111111) (= (mask!11043 thiss!1504) #b00000000011111111111111111111111) (= (mask!11043 thiss!1504) #b00000000111111111111111111111111) (= (mask!11043 thiss!1504) #b00000001111111111111111111111111) (= (mask!11043 thiss!1504) #b00000011111111111111111111111111) (= (mask!11043 thiss!1504) #b00000111111111111111111111111111) (= (mask!11043 thiss!1504) #b00001111111111111111111111111111) (= (mask!11043 thiss!1504) #b00011111111111111111111111111111) (= (mask!11043 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11043 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!257544 d!61747))

(declare-fun b!257648 () Bool)

(declare-fun e!167023 () (_ BitVec 32))

(declare-fun e!167022 () (_ BitVec 32))

(assert (=> b!257648 (= e!167023 e!167022)))

(declare-fun c!43597 () Bool)

(assert (=> b!257648 (= c!43597 (validKeyInArray!0 (select (arr!5938 lt!129554) index!297)))))

(declare-fun bm!24465 () Bool)

(declare-fun call!24468 () (_ BitVec 32))

(assert (=> bm!24465 (= call!24468 (arrayCountValidKeys!0 lt!129554 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun b!257649 () Bool)

(assert (=> b!257649 (= e!167022 call!24468)))

(declare-fun b!257650 () Bool)

(assert (=> b!257650 (= e!167023 #b00000000000000000000000000000000)))

(declare-fun d!61749 () Bool)

(declare-fun lt!129613 () (_ BitVec 32))

(assert (=> d!61749 (and (bvsge lt!129613 #b00000000000000000000000000000000) (bvsle lt!129613 (bvsub (size!6285 lt!129554) index!297)))))

(assert (=> d!61749 (= lt!129613 e!167023)))

(declare-fun c!43596 () Bool)

(assert (=> d!61749 (= c!43596 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!61749 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6285 lt!129554)))))

(assert (=> d!61749 (= (arrayCountValidKeys!0 lt!129554 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!129613)))

(declare-fun b!257651 () Bool)

(assert (=> b!257651 (= e!167022 (bvadd #b00000000000000000000000000000001 call!24468))))

(assert (= (and d!61749 c!43596) b!257650))

(assert (= (and d!61749 (not c!43596)) b!257648))

(assert (= (and b!257648 c!43597) b!257651))

(assert (= (and b!257648 (not c!43597)) b!257649))

(assert (= (or b!257651 b!257649) bm!24465))

(assert (=> b!257648 m!273017))

(assert (=> b!257648 m!273017))

(assert (=> b!257648 m!273019))

(declare-fun m!273033 () Bool)

(assert (=> bm!24465 m!273033))

(assert (=> b!257544 d!61749))

(declare-fun d!61751 () Bool)

(declare-fun e!167026 () Bool)

(assert (=> d!61751 e!167026))

(declare-fun res!126033 () Bool)

(assert (=> d!61751 (=> (not res!126033) (not e!167026))))

(declare-fun lt!129625 () ListLongMap!3849)

(assert (=> d!61751 (= res!126033 (contains!1874 lt!129625 (_1!2471 (tuple2!4923 key!932 v!346))))))

(declare-fun lt!129624 () List!3825)

(assert (=> d!61751 (= lt!129625 (ListLongMap!3850 lt!129624))))

(declare-fun lt!129623 () Unit!7999)

(declare-fun lt!129622 () Unit!7999)

(assert (=> d!61751 (= lt!129623 lt!129622)))

(declare-datatypes ((Option!317 0))(
  ( (Some!316 (v!5438 V!8443)) (None!315) )
))
(declare-fun getValueByKey!311 (List!3825 (_ BitVec 64)) Option!317)

(assert (=> d!61751 (= (getValueByKey!311 lt!129624 (_1!2471 (tuple2!4923 key!932 v!346))) (Some!316 (_2!2471 (tuple2!4923 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!169 (List!3825 (_ BitVec 64) V!8443) Unit!7999)

(assert (=> d!61751 (= lt!129622 (lemmaContainsTupThenGetReturnValue!169 lt!129624 (_1!2471 (tuple2!4923 key!932 v!346)) (_2!2471 (tuple2!4923 key!932 v!346))))))

(declare-fun insertStrictlySorted!171 (List!3825 (_ BitVec 64) V!8443) List!3825)

(assert (=> d!61751 (= lt!129624 (insertStrictlySorted!171 (toList!1940 lt!129548) (_1!2471 (tuple2!4923 key!932 v!346)) (_2!2471 (tuple2!4923 key!932 v!346))))))

(assert (=> d!61751 (= (+!684 lt!129548 (tuple2!4923 key!932 v!346)) lt!129625)))

(declare-fun b!257656 () Bool)

(declare-fun res!126032 () Bool)

(assert (=> b!257656 (=> (not res!126032) (not e!167026))))

(assert (=> b!257656 (= res!126032 (= (getValueByKey!311 (toList!1940 lt!129625) (_1!2471 (tuple2!4923 key!932 v!346))) (Some!316 (_2!2471 (tuple2!4923 key!932 v!346)))))))

(declare-fun b!257657 () Bool)

(declare-fun contains!1875 (List!3825 tuple2!4922) Bool)

(assert (=> b!257657 (= e!167026 (contains!1875 (toList!1940 lt!129625) (tuple2!4923 key!932 v!346)))))

(assert (= (and d!61751 res!126033) b!257656))

(assert (= (and b!257656 res!126032) b!257657))

(declare-fun m!273035 () Bool)

(assert (=> d!61751 m!273035))

(declare-fun m!273037 () Bool)

(assert (=> d!61751 m!273037))

(declare-fun m!273039 () Bool)

(assert (=> d!61751 m!273039))

(declare-fun m!273041 () Bool)

(assert (=> d!61751 m!273041))

(declare-fun m!273043 () Bool)

(assert (=> b!257656 m!273043))

(declare-fun m!273045 () Bool)

(assert (=> b!257657 m!273045))

(assert (=> b!257544 d!61751))

(declare-fun d!61753 () Bool)

(declare-fun res!126040 () Bool)

(declare-fun e!167038 () Bool)

(assert (=> d!61753 (=> res!126040 e!167038)))

(assert (=> d!61753 (= res!126040 (bvsge #b00000000000000000000000000000000 (size!6285 lt!129554)))))

(assert (=> d!61753 (= (arrayNoDuplicates!0 lt!129554 #b00000000000000000000000000000000 Nil!3823) e!167038)))

(declare-fun b!257668 () Bool)

(declare-fun e!167036 () Bool)

(declare-fun e!167035 () Bool)

(assert (=> b!257668 (= e!167036 e!167035)))

(declare-fun c!43600 () Bool)

(assert (=> b!257668 (= c!43600 (validKeyInArray!0 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(declare-fun b!257669 () Bool)

(declare-fun call!24471 () Bool)

(assert (=> b!257669 (= e!167035 call!24471)))

(declare-fun b!257670 () Bool)

(declare-fun e!167037 () Bool)

(declare-fun contains!1876 (List!3826 (_ BitVec 64)) Bool)

(assert (=> b!257670 (= e!167037 (contains!1876 Nil!3823 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(declare-fun bm!24468 () Bool)

(assert (=> bm!24468 (= call!24471 (arrayNoDuplicates!0 lt!129554 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43600 (Cons!3822 (select (arr!5938 lt!129554) #b00000000000000000000000000000000) Nil!3823) Nil!3823)))))

(declare-fun b!257671 () Bool)

(assert (=> b!257671 (= e!167035 call!24471)))

(declare-fun b!257672 () Bool)

(assert (=> b!257672 (= e!167038 e!167036)))

(declare-fun res!126042 () Bool)

(assert (=> b!257672 (=> (not res!126042) (not e!167036))))

(assert (=> b!257672 (= res!126042 (not e!167037))))

(declare-fun res!126041 () Bool)

(assert (=> b!257672 (=> (not res!126041) (not e!167037))))

(assert (=> b!257672 (= res!126041 (validKeyInArray!0 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(assert (= (and d!61753 (not res!126040)) b!257672))

(assert (= (and b!257672 res!126041) b!257670))

(assert (= (and b!257672 res!126042) b!257668))

(assert (= (and b!257668 c!43600) b!257669))

(assert (= (and b!257668 (not c!43600)) b!257671))

(assert (= (or b!257669 b!257671) bm!24468))

(declare-fun m!273047 () Bool)

(assert (=> b!257668 m!273047))

(assert (=> b!257668 m!273047))

(declare-fun m!273049 () Bool)

(assert (=> b!257668 m!273049))

(assert (=> b!257670 m!273047))

(assert (=> b!257670 m!273047))

(declare-fun m!273051 () Bool)

(assert (=> b!257670 m!273051))

(assert (=> bm!24468 m!273047))

(declare-fun m!273053 () Bool)

(assert (=> bm!24468 m!273053))

(assert (=> b!257672 m!273047))

(assert (=> b!257672 m!273047))

(assert (=> b!257672 m!273049))

(assert (=> b!257544 d!61753))

(declare-fun d!61755 () Bool)

(declare-fun e!167041 () Bool)

(assert (=> d!61755 e!167041))

(declare-fun res!126045 () Bool)

(assert (=> d!61755 (=> (not res!126045) (not e!167041))))

(assert (=> d!61755 (= res!126045 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6285 (_keys!6921 thiss!1504)))))))

(declare-fun lt!129628 () Unit!7999)

(declare-fun choose!41 (array!12540 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3826) Unit!7999)

(assert (=> d!61755 (= lt!129628 (choose!41 (_keys!6921 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3823))))

(assert (=> d!61755 (bvslt (size!6285 (_keys!6921 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61755 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6921 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3823) lt!129628)))

(declare-fun b!257675 () Bool)

(assert (=> b!257675 (= e!167041 (arrayNoDuplicates!0 (array!12541 (store (arr!5938 (_keys!6921 thiss!1504)) index!297 key!932) (size!6285 (_keys!6921 thiss!1504))) #b00000000000000000000000000000000 Nil!3823))))

(assert (= (and d!61755 res!126045) b!257675))

(declare-fun m!273055 () Bool)

(assert (=> d!61755 m!273055))

(assert (=> b!257675 m!272915))

(declare-fun m!273057 () Bool)

(assert (=> b!257675 m!273057))

(assert (=> b!257544 d!61755))

(declare-fun d!61757 () Bool)

(declare-fun res!126050 () Bool)

(declare-fun e!167046 () Bool)

(assert (=> d!61757 (=> res!126050 e!167046)))

(assert (=> d!61757 (= res!126050 (= (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61757 (= (arrayContainsKey!0 (_keys!6921 thiss!1504) key!932 #b00000000000000000000000000000000) e!167046)))

(declare-fun b!257680 () Bool)

(declare-fun e!167047 () Bool)

(assert (=> b!257680 (= e!167046 e!167047)))

(declare-fun res!126051 () Bool)

(assert (=> b!257680 (=> (not res!126051) (not e!167047))))

(assert (=> b!257680 (= res!126051 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun b!257681 () Bool)

(assert (=> b!257681 (= e!167047 (arrayContainsKey!0 (_keys!6921 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61757 (not res!126050)) b!257680))

(assert (= (and b!257680 res!126051) b!257681))

(assert (=> d!61757 m!273021))

(declare-fun m!273059 () Bool)

(assert (=> b!257681 m!273059))

(assert (=> b!257544 d!61757))

(declare-fun b!257724 () Bool)

(declare-fun e!167075 () Unit!7999)

(declare-fun Unit!8008 () Unit!7999)

(assert (=> b!257724 (= e!167075 Unit!8008)))

(declare-fun bm!24483 () Bool)

(declare-fun call!24492 () Bool)

(declare-fun lt!129676 () ListLongMap!3849)

(assert (=> bm!24483 (= call!24492 (contains!1874 lt!129676 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24484 () Bool)

(declare-fun call!24487 () ListLongMap!3849)

(declare-fun call!24488 () ListLongMap!3849)

(assert (=> bm!24484 (= call!24487 call!24488)))

(declare-fun b!257725 () Bool)

(declare-fun res!126075 () Bool)

(declare-fun e!167079 () Bool)

(assert (=> b!257725 (=> (not res!126075) (not e!167079))))

(declare-fun e!167082 () Bool)

(assert (=> b!257725 (= res!126075 e!167082)))

(declare-fun res!126078 () Bool)

(assert (=> b!257725 (=> res!126078 e!167082)))

(declare-fun e!167083 () Bool)

(assert (=> b!257725 (= res!126078 (not e!167083))))

(declare-fun res!126073 () Bool)

(assert (=> b!257725 (=> (not res!126073) (not e!167083))))

(assert (=> b!257725 (= res!126073 (bvslt #b00000000000000000000000000000000 (size!6285 lt!129554)))))

(declare-fun b!257726 () Bool)

(declare-fun e!167078 () Bool)

(declare-fun apply!254 (ListLongMap!3849 (_ BitVec 64)) V!8443)

(assert (=> b!257726 (= e!167078 (= (apply!254 lt!129676 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4594 thiss!1504)))))

(declare-fun call!24486 () ListLongMap!3849)

(declare-fun bm!24485 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!573 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 32) Int) ListLongMap!3849)

(assert (=> bm!24485 (= call!24486 (getCurrentListMapNoExtraKeys!573 lt!129554 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun b!257727 () Bool)

(declare-fun e!167086 () ListLongMap!3849)

(declare-fun call!24490 () ListLongMap!3849)

(assert (=> b!257727 (= e!167086 call!24490)))

(declare-fun b!257728 () Bool)

(declare-fun e!167081 () Bool)

(assert (=> b!257728 (= e!167081 e!167078)))

(declare-fun res!126077 () Bool)

(declare-fun call!24491 () Bool)

(assert (=> b!257728 (= res!126077 call!24491)))

(assert (=> b!257728 (=> (not res!126077) (not e!167078))))

(declare-fun b!257729 () Bool)

(declare-fun e!167085 () Bool)

(assert (=> b!257729 (= e!167079 e!167085)))

(declare-fun c!43615 () Bool)

(assert (=> b!257729 (= c!43615 (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!257730 () Bool)

(declare-fun e!167074 () Bool)

(assert (=> b!257730 (= e!167085 e!167074)))

(declare-fun res!126072 () Bool)

(assert (=> b!257730 (= res!126072 call!24492)))

(assert (=> b!257730 (=> (not res!126072) (not e!167074))))

(declare-fun b!257731 () Bool)

(declare-fun e!167077 () Bool)

(declare-fun get!3054 (ValueCell!2955 V!8443) V!8443)

(declare-fun dynLambda!592 (Int (_ BitVec 64)) V!8443)

(assert (=> b!257731 (= e!167077 (= (apply!254 lt!129676 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)) (get!3054 (select (arr!5937 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!592 (defaultEntry!4753 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!257731 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6284 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))))))))

(assert (=> b!257731 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6285 lt!129554)))))

(declare-fun b!257732 () Bool)

(declare-fun e!167076 () ListLongMap!3849)

(declare-fun call!24489 () ListLongMap!3849)

(assert (=> b!257732 (= e!167076 (+!684 call!24489 (tuple2!4923 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4594 thiss!1504))))))

(declare-fun b!257733 () Bool)

(assert (=> b!257733 (= e!167081 (not call!24491))))

(declare-fun b!257734 () Bool)

(declare-fun res!126071 () Bool)

(assert (=> b!257734 (=> (not res!126071) (not e!167079))))

(assert (=> b!257734 (= res!126071 e!167081)))

(declare-fun c!43618 () Bool)

(assert (=> b!257734 (= c!43618 (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!43616 () Bool)

(declare-fun bm!24487 () Bool)

(declare-fun c!43613 () Bool)

(assert (=> bm!24487 (= call!24489 (+!684 (ite c!43613 call!24486 (ite c!43616 call!24488 call!24487)) (ite (or c!43613 c!43616) (tuple2!4923 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4594 thiss!1504)) (tuple2!4923 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4594 thiss!1504)))))))

(declare-fun b!257735 () Bool)

(assert (=> b!257735 (= e!167086 call!24487)))

(declare-fun b!257736 () Bool)

(declare-fun c!43614 () Bool)

(assert (=> b!257736 (= c!43614 (and (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!167084 () ListLongMap!3849)

(assert (=> b!257736 (= e!167084 e!167086)))

(declare-fun b!257737 () Bool)

(assert (=> b!257737 (= e!167074 (= (apply!254 lt!129676 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4594 thiss!1504)))))

(declare-fun b!257738 () Bool)

(assert (=> b!257738 (= e!167076 e!167084)))

(assert (=> b!257738 (= c!43616 (and (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!257739 () Bool)

(declare-fun e!167080 () Bool)

(assert (=> b!257739 (= e!167080 (validKeyInArray!0 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(declare-fun b!257740 () Bool)

(assert (=> b!257740 (= e!167083 (validKeyInArray!0 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(declare-fun bm!24488 () Bool)

(assert (=> bm!24488 (= call!24490 call!24489)))

(declare-fun b!257741 () Bool)

(assert (=> b!257741 (= e!167085 (not call!24492))))

(declare-fun bm!24489 () Bool)

(assert (=> bm!24489 (= call!24491 (contains!1874 lt!129676 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257742 () Bool)

(assert (=> b!257742 (= e!167084 call!24490)))

(declare-fun b!257743 () Bool)

(declare-fun lt!129674 () Unit!7999)

(assert (=> b!257743 (= e!167075 lt!129674)))

(declare-fun lt!129693 () ListLongMap!3849)

(assert (=> b!257743 (= lt!129693 (getCurrentListMapNoExtraKeys!573 lt!129554 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129675 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129675 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129678 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129678 (select (arr!5938 lt!129554) #b00000000000000000000000000000000))))

(declare-fun lt!129673 () Unit!7999)

(declare-fun addStillContains!230 (ListLongMap!3849 (_ BitVec 64) V!8443 (_ BitVec 64)) Unit!7999)

(assert (=> b!257743 (= lt!129673 (addStillContains!230 lt!129693 lt!129675 (zeroValue!4594 thiss!1504) lt!129678))))

(assert (=> b!257743 (contains!1874 (+!684 lt!129693 (tuple2!4923 lt!129675 (zeroValue!4594 thiss!1504))) lt!129678)))

(declare-fun lt!129694 () Unit!7999)

(assert (=> b!257743 (= lt!129694 lt!129673)))

(declare-fun lt!129692 () ListLongMap!3849)

(assert (=> b!257743 (= lt!129692 (getCurrentListMapNoExtraKeys!573 lt!129554 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129683 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129683 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129686 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129686 (select (arr!5938 lt!129554) #b00000000000000000000000000000000))))

(declare-fun lt!129690 () Unit!7999)

(declare-fun addApplyDifferent!230 (ListLongMap!3849 (_ BitVec 64) V!8443 (_ BitVec 64)) Unit!7999)

(assert (=> b!257743 (= lt!129690 (addApplyDifferent!230 lt!129692 lt!129683 (minValue!4594 thiss!1504) lt!129686))))

(assert (=> b!257743 (= (apply!254 (+!684 lt!129692 (tuple2!4923 lt!129683 (minValue!4594 thiss!1504))) lt!129686) (apply!254 lt!129692 lt!129686))))

(declare-fun lt!129679 () Unit!7999)

(assert (=> b!257743 (= lt!129679 lt!129690)))

(declare-fun lt!129689 () ListLongMap!3849)

(assert (=> b!257743 (= lt!129689 (getCurrentListMapNoExtraKeys!573 lt!129554 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129687 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129687 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129688 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129688 (select (arr!5938 lt!129554) #b00000000000000000000000000000000))))

(declare-fun lt!129681 () Unit!7999)

(assert (=> b!257743 (= lt!129681 (addApplyDifferent!230 lt!129689 lt!129687 (zeroValue!4594 thiss!1504) lt!129688))))

(assert (=> b!257743 (= (apply!254 (+!684 lt!129689 (tuple2!4923 lt!129687 (zeroValue!4594 thiss!1504))) lt!129688) (apply!254 lt!129689 lt!129688))))

(declare-fun lt!129691 () Unit!7999)

(assert (=> b!257743 (= lt!129691 lt!129681)))

(declare-fun lt!129680 () ListLongMap!3849)

(assert (=> b!257743 (= lt!129680 (getCurrentListMapNoExtraKeys!573 lt!129554 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129684 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129684 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129682 () (_ BitVec 64))

(assert (=> b!257743 (= lt!129682 (select (arr!5938 lt!129554) #b00000000000000000000000000000000))))

(assert (=> b!257743 (= lt!129674 (addApplyDifferent!230 lt!129680 lt!129684 (minValue!4594 thiss!1504) lt!129682))))

(assert (=> b!257743 (= (apply!254 (+!684 lt!129680 (tuple2!4923 lt!129684 (minValue!4594 thiss!1504))) lt!129682) (apply!254 lt!129680 lt!129682))))

(declare-fun b!257744 () Bool)

(assert (=> b!257744 (= e!167082 e!167077)))

(declare-fun res!126076 () Bool)

(assert (=> b!257744 (=> (not res!126076) (not e!167077))))

(assert (=> b!257744 (= res!126076 (contains!1874 lt!129676 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(assert (=> b!257744 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6285 lt!129554)))))

(declare-fun d!61759 () Bool)

(assert (=> d!61759 e!167079))

(declare-fun res!126070 () Bool)

(assert (=> d!61759 (=> (not res!126070) (not e!167079))))

(assert (=> d!61759 (= res!126070 (or (bvsge #b00000000000000000000000000000000 (size!6285 lt!129554)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6285 lt!129554)))))))

(declare-fun lt!129677 () ListLongMap!3849)

(assert (=> d!61759 (= lt!129676 lt!129677)))

(declare-fun lt!129685 () Unit!7999)

(assert (=> d!61759 (= lt!129685 e!167075)))

(declare-fun c!43617 () Bool)

(assert (=> d!61759 (= c!43617 e!167080)))

(declare-fun res!126074 () Bool)

(assert (=> d!61759 (=> (not res!126074) (not e!167080))))

(assert (=> d!61759 (= res!126074 (bvslt #b00000000000000000000000000000000 (size!6285 lt!129554)))))

(assert (=> d!61759 (= lt!129677 e!167076)))

(assert (=> d!61759 (= c!43613 (and (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61759 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61759 (= (getCurrentListMap!1463 lt!129554 (array!12539 (store (arr!5937 (_values!4736 thiss!1504)) index!297 (ValueCellFull!2955 v!346)) (size!6284 (_values!4736 thiss!1504))) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)) lt!129676)))

(declare-fun bm!24486 () Bool)

(assert (=> bm!24486 (= call!24488 call!24486)))

(assert (= (and d!61759 c!43613) b!257732))

(assert (= (and d!61759 (not c!43613)) b!257738))

(assert (= (and b!257738 c!43616) b!257742))

(assert (= (and b!257738 (not c!43616)) b!257736))

(assert (= (and b!257736 c!43614) b!257727))

(assert (= (and b!257736 (not c!43614)) b!257735))

(assert (= (or b!257727 b!257735) bm!24484))

(assert (= (or b!257742 bm!24484) bm!24486))

(assert (= (or b!257742 b!257727) bm!24488))

(assert (= (or b!257732 bm!24486) bm!24485))

(assert (= (or b!257732 bm!24488) bm!24487))

(assert (= (and d!61759 res!126074) b!257739))

(assert (= (and d!61759 c!43617) b!257743))

(assert (= (and d!61759 (not c!43617)) b!257724))

(assert (= (and d!61759 res!126070) b!257725))

(assert (= (and b!257725 res!126073) b!257740))

(assert (= (and b!257725 (not res!126078)) b!257744))

(assert (= (and b!257744 res!126076) b!257731))

(assert (= (and b!257725 res!126075) b!257734))

(assert (= (and b!257734 c!43618) b!257728))

(assert (= (and b!257734 (not c!43618)) b!257733))

(assert (= (and b!257728 res!126077) b!257726))

(assert (= (or b!257728 b!257733) bm!24489))

(assert (= (and b!257734 res!126071) b!257729))

(assert (= (and b!257729 c!43615) b!257730))

(assert (= (and b!257729 (not c!43615)) b!257741))

(assert (= (and b!257730 res!126072) b!257737))

(assert (= (or b!257730 b!257741) bm!24483))

(declare-fun b_lambda!8217 () Bool)

(assert (=> (not b_lambda!8217) (not b!257731)))

(declare-fun t!8899 () Bool)

(declare-fun tb!3029 () Bool)

(assert (=> (and b!257545 (= (defaultEntry!4753 thiss!1504) (defaultEntry!4753 thiss!1504)) t!8899) tb!3029))

(declare-fun result!5393 () Bool)

(assert (=> tb!3029 (= result!5393 tp_is_empty!6597)))

(assert (=> b!257731 t!8899))

(declare-fun b_and!13827 () Bool)

(assert (= b_and!13823 (and (=> t!8899 result!5393) b_and!13827)))

(declare-fun m!273061 () Bool)

(assert (=> b!257726 m!273061))

(assert (=> b!257739 m!273047))

(assert (=> b!257739 m!273047))

(assert (=> b!257739 m!273049))

(declare-fun m!273063 () Bool)

(assert (=> b!257737 m!273063))

(declare-fun m!273065 () Bool)

(assert (=> bm!24489 m!273065))

(assert (=> d!61759 m!272897))

(declare-fun m!273067 () Bool)

(assert (=> b!257732 m!273067))

(declare-fun m!273069 () Bool)

(assert (=> bm!24487 m!273069))

(declare-fun m!273071 () Bool)

(assert (=> bm!24483 m!273071))

(declare-fun m!273073 () Bool)

(assert (=> bm!24485 m!273073))

(assert (=> b!257731 m!273047))

(declare-fun m!273075 () Bool)

(assert (=> b!257731 m!273075))

(declare-fun m!273077 () Bool)

(assert (=> b!257731 m!273077))

(assert (=> b!257731 m!273047))

(declare-fun m!273079 () Bool)

(assert (=> b!257731 m!273079))

(assert (=> b!257731 m!273079))

(assert (=> b!257731 m!273077))

(declare-fun m!273081 () Bool)

(assert (=> b!257731 m!273081))

(assert (=> b!257744 m!273047))

(assert (=> b!257744 m!273047))

(declare-fun m!273083 () Bool)

(assert (=> b!257744 m!273083))

(assert (=> b!257740 m!273047))

(assert (=> b!257740 m!273047))

(assert (=> b!257740 m!273049))

(declare-fun m!273085 () Bool)

(assert (=> b!257743 m!273085))

(declare-fun m!273087 () Bool)

(assert (=> b!257743 m!273087))

(declare-fun m!273089 () Bool)

(assert (=> b!257743 m!273089))

(declare-fun m!273091 () Bool)

(assert (=> b!257743 m!273091))

(declare-fun m!273093 () Bool)

(assert (=> b!257743 m!273093))

(declare-fun m!273095 () Bool)

(assert (=> b!257743 m!273095))

(assert (=> b!257743 m!273073))

(declare-fun m!273097 () Bool)

(assert (=> b!257743 m!273097))

(declare-fun m!273099 () Bool)

(assert (=> b!257743 m!273099))

(declare-fun m!273101 () Bool)

(assert (=> b!257743 m!273101))

(assert (=> b!257743 m!273093))

(assert (=> b!257743 m!273047))

(declare-fun m!273103 () Bool)

(assert (=> b!257743 m!273103))

(declare-fun m!273105 () Bool)

(assert (=> b!257743 m!273105))

(declare-fun m!273107 () Bool)

(assert (=> b!257743 m!273107))

(assert (=> b!257743 m!273103))

(declare-fun m!273109 () Bool)

(assert (=> b!257743 m!273109))

(assert (=> b!257743 m!273091))

(declare-fun m!273111 () Bool)

(assert (=> b!257743 m!273111))

(assert (=> b!257743 m!273099))

(declare-fun m!273113 () Bool)

(assert (=> b!257743 m!273113))

(assert (=> b!257544 d!61759))

(declare-fun d!61761 () Bool)

(declare-fun e!167089 () Bool)

(assert (=> d!61761 e!167089))

(declare-fun res!126081 () Bool)

(assert (=> d!61761 (=> (not res!126081) (not e!167089))))

(assert (=> d!61761 (= res!126081 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6285 (_keys!6921 thiss!1504)))))))

(declare-fun lt!129697 () Unit!7999)

(declare-fun choose!102 ((_ BitVec 64) array!12540 (_ BitVec 32) (_ BitVec 32)) Unit!7999)

(assert (=> d!61761 (= lt!129697 (choose!102 key!932 (_keys!6921 thiss!1504) index!297 (mask!11043 thiss!1504)))))

(assert (=> d!61761 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61761 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6921 thiss!1504) index!297 (mask!11043 thiss!1504)) lt!129697)))

(declare-fun b!257749 () Bool)

(assert (=> b!257749 (= e!167089 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12541 (store (arr!5938 (_keys!6921 thiss!1504)) index!297 key!932) (size!6285 (_keys!6921 thiss!1504))) (mask!11043 thiss!1504)))))

(assert (= (and d!61761 res!126081) b!257749))

(declare-fun m!273115 () Bool)

(assert (=> d!61761 m!273115))

(assert (=> d!61761 m!272897))

(assert (=> b!257749 m!272915))

(declare-fun m!273117 () Bool)

(assert (=> b!257749 m!273117))

(assert (=> b!257544 d!61761))

(declare-fun b!257758 () Bool)

(declare-fun e!167097 () Bool)

(declare-fun e!167098 () Bool)

(assert (=> b!257758 (= e!167097 e!167098)))

(declare-fun lt!129706 () (_ BitVec 64))

(assert (=> b!257758 (= lt!129706 (select (arr!5938 lt!129554) #b00000000000000000000000000000000))))

(declare-fun lt!129705 () Unit!7999)

(assert (=> b!257758 (= lt!129705 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129554 lt!129706 #b00000000000000000000000000000000))))

(assert (=> b!257758 (arrayContainsKey!0 lt!129554 lt!129706 #b00000000000000000000000000000000)))

(declare-fun lt!129704 () Unit!7999)

(assert (=> b!257758 (= lt!129704 lt!129705)))

(declare-fun res!126086 () Bool)

(assert (=> b!257758 (= res!126086 (= (seekEntryOrOpen!0 (select (arr!5938 lt!129554) #b00000000000000000000000000000000) lt!129554 (mask!11043 thiss!1504)) (Found!1181 #b00000000000000000000000000000000)))))

(assert (=> b!257758 (=> (not res!126086) (not e!167098))))

(declare-fun b!257759 () Bool)

(declare-fun call!24495 () Bool)

(assert (=> b!257759 (= e!167097 call!24495)))

(declare-fun bm!24492 () Bool)

(assert (=> bm!24492 (= call!24495 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!129554 (mask!11043 thiss!1504)))))

(declare-fun b!257760 () Bool)

(assert (=> b!257760 (= e!167098 call!24495)))

(declare-fun d!61763 () Bool)

(declare-fun res!126087 () Bool)

(declare-fun e!167096 () Bool)

(assert (=> d!61763 (=> res!126087 e!167096)))

(assert (=> d!61763 (= res!126087 (bvsge #b00000000000000000000000000000000 (size!6285 lt!129554)))))

(assert (=> d!61763 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!129554 (mask!11043 thiss!1504)) e!167096)))

(declare-fun b!257761 () Bool)

(assert (=> b!257761 (= e!167096 e!167097)))

(declare-fun c!43621 () Bool)

(assert (=> b!257761 (= c!43621 (validKeyInArray!0 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(assert (= (and d!61763 (not res!126087)) b!257761))

(assert (= (and b!257761 c!43621) b!257758))

(assert (= (and b!257761 (not c!43621)) b!257759))

(assert (= (and b!257758 res!126086) b!257760))

(assert (= (or b!257760 b!257759) bm!24492))

(assert (=> b!257758 m!273047))

(declare-fun m!273119 () Bool)

(assert (=> b!257758 m!273119))

(declare-fun m!273121 () Bool)

(assert (=> b!257758 m!273121))

(assert (=> b!257758 m!273047))

(declare-fun m!273123 () Bool)

(assert (=> b!257758 m!273123))

(declare-fun m!273125 () Bool)

(assert (=> bm!24492 m!273125))

(assert (=> b!257761 m!273047))

(assert (=> b!257761 m!273047))

(assert (=> b!257761 m!273049))

(assert (=> b!257544 d!61763))

(declare-fun b!257762 () Bool)

(declare-fun e!167100 () (_ BitVec 32))

(declare-fun e!167099 () (_ BitVec 32))

(assert (=> b!257762 (= e!167100 e!167099)))

(declare-fun c!43623 () Bool)

(assert (=> b!257762 (= c!43623 (validKeyInArray!0 (select (arr!5938 lt!129554) #b00000000000000000000000000000000)))))

(declare-fun bm!24493 () Bool)

(declare-fun call!24496 () (_ BitVec 32))

(assert (=> bm!24493 (= call!24496 (arrayCountValidKeys!0 lt!129554 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun b!257763 () Bool)

(assert (=> b!257763 (= e!167099 call!24496)))

(declare-fun b!257764 () Bool)

(assert (=> b!257764 (= e!167100 #b00000000000000000000000000000000)))

(declare-fun d!61765 () Bool)

(declare-fun lt!129707 () (_ BitVec 32))

(assert (=> d!61765 (and (bvsge lt!129707 #b00000000000000000000000000000000) (bvsle lt!129707 (bvsub (size!6285 lt!129554) #b00000000000000000000000000000000)))))

(assert (=> d!61765 (= lt!129707 e!167100)))

(declare-fun c!43622 () Bool)

(assert (=> d!61765 (= c!43622 (bvsge #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))))))

(assert (=> d!61765 (and (bvsle #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6285 (_keys!6921 thiss!1504)) (size!6285 lt!129554)))))

(assert (=> d!61765 (= (arrayCountValidKeys!0 lt!129554 #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) lt!129707)))

(declare-fun b!257765 () Bool)

(assert (=> b!257765 (= e!167099 (bvadd #b00000000000000000000000000000001 call!24496))))

(assert (= (and d!61765 c!43622) b!257764))

(assert (= (and d!61765 (not c!43622)) b!257762))

(assert (= (and b!257762 c!43623) b!257765))

(assert (= (and b!257762 (not c!43623)) b!257763))

(assert (= (or b!257765 b!257763) bm!24493))

(assert (=> b!257762 m!273047))

(assert (=> b!257762 m!273047))

(assert (=> b!257762 m!273049))

(declare-fun m!273127 () Bool)

(assert (=> bm!24493 m!273127))

(assert (=> b!257544 d!61765))

(declare-fun d!61767 () Bool)

(assert (=> d!61767 (arrayContainsKey!0 lt!129554 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!129710 () Unit!7999)

(declare-fun choose!13 (array!12540 (_ BitVec 64) (_ BitVec 32)) Unit!7999)

(assert (=> d!61767 (= lt!129710 (choose!13 lt!129554 key!932 index!297))))

(assert (=> d!61767 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!61767 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!129554 key!932 index!297) lt!129710)))

(declare-fun bs!9086 () Bool)

(assert (= bs!9086 d!61767))

(assert (=> bs!9086 m!272917))

(declare-fun m!273129 () Bool)

(assert (=> bs!9086 m!273129))

(assert (=> b!257544 d!61767))

(declare-fun d!61769 () Bool)

(declare-fun res!126088 () Bool)

(declare-fun e!167101 () Bool)

(assert (=> d!61769 (=> res!126088 e!167101)))

(assert (=> d!61769 (= res!126088 (= (select (arr!5938 lt!129554) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61769 (= (arrayContainsKey!0 lt!129554 key!932 #b00000000000000000000000000000000) e!167101)))

(declare-fun b!257766 () Bool)

(declare-fun e!167102 () Bool)

(assert (=> b!257766 (= e!167101 e!167102)))

(declare-fun res!126089 () Bool)

(assert (=> b!257766 (=> (not res!126089) (not e!167102))))

(assert (=> b!257766 (= res!126089 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6285 lt!129554)))))

(declare-fun b!257767 () Bool)

(assert (=> b!257767 (= e!167102 (arrayContainsKey!0 lt!129554 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61769 (not res!126088)) b!257766))

(assert (= (and b!257766 res!126089) b!257767))

(assert (=> d!61769 m!273047))

(declare-fun m!273131 () Bool)

(assert (=> b!257767 m!273131))

(assert (=> b!257544 d!61769))

(assert (=> bm!24454 d!61757))

(declare-fun d!61771 () Bool)

(declare-fun res!126096 () Bool)

(declare-fun e!167105 () Bool)

(assert (=> d!61771 (=> (not res!126096) (not e!167105))))

(declare-fun simpleValid!276 (LongMapFixedSize!3810) Bool)

(assert (=> d!61771 (= res!126096 (simpleValid!276 thiss!1504))))

(assert (=> d!61771 (= (valid!1481 thiss!1504) e!167105)))

(declare-fun b!257774 () Bool)

(declare-fun res!126097 () Bool)

(assert (=> b!257774 (=> (not res!126097) (not e!167105))))

(assert (=> b!257774 (= res!126097 (= (arrayCountValidKeys!0 (_keys!6921 thiss!1504) #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) (_size!1954 thiss!1504)))))

(declare-fun b!257775 () Bool)

(declare-fun res!126098 () Bool)

(assert (=> b!257775 (=> (not res!126098) (not e!167105))))

(assert (=> b!257775 (= res!126098 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6921 thiss!1504) (mask!11043 thiss!1504)))))

(declare-fun b!257776 () Bool)

(assert (=> b!257776 (= e!167105 (arrayNoDuplicates!0 (_keys!6921 thiss!1504) #b00000000000000000000000000000000 Nil!3823))))

(assert (= (and d!61771 res!126096) b!257774))

(assert (= (and b!257774 res!126097) b!257775))

(assert (= (and b!257775 res!126098) b!257776))

(declare-fun m!273133 () Bool)

(assert (=> d!61771 m!273133))

(assert (=> b!257774 m!272923))

(declare-fun m!273135 () Bool)

(assert (=> b!257775 m!273135))

(declare-fun m!273137 () Bool)

(assert (=> b!257776 m!273137))

(assert (=> start!24620 d!61771))

(declare-fun d!61773 () Bool)

(assert (=> d!61773 (= (array_inv!3915 (_keys!6921 thiss!1504)) (bvsge (size!6285 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257545 d!61773))

(declare-fun d!61775 () Bool)

(assert (=> d!61775 (= (array_inv!3916 (_values!4736 thiss!1504)) (bvsge (size!6284 (_values!4736 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257545 d!61775))

(declare-fun b!257793 () Bool)

(declare-fun e!167115 () Bool)

(declare-fun call!24501 () Bool)

(assert (=> b!257793 (= e!167115 (not call!24501))))

(declare-fun b!257794 () Bool)

(declare-fun lt!129715 () SeekEntryResult!1181)

(assert (=> b!257794 (and (bvsge (index!6894 lt!129715) #b00000000000000000000000000000000) (bvslt (index!6894 lt!129715) (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun res!126109 () Bool)

(assert (=> b!257794 (= res!126109 (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6894 lt!129715)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257794 (=> (not res!126109) (not e!167115))))

(declare-fun d!61777 () Bool)

(declare-fun e!167117 () Bool)

(assert (=> d!61777 e!167117))

(declare-fun c!43629 () Bool)

(assert (=> d!61777 (= c!43629 ((_ is MissingZero!1181) lt!129715))))

(assert (=> d!61777 (= lt!129715 (seekEntryOrOpen!0 key!932 (_keys!6921 thiss!1504) (mask!11043 thiss!1504)))))

(declare-fun lt!129716 () Unit!7999)

(declare-fun choose!1249 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 64) Int) Unit!7999)

(assert (=> d!61777 (= lt!129716 (choose!1249 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 (defaultEntry!4753 thiss!1504)))))

(assert (=> d!61777 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61777 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!435 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 (defaultEntry!4753 thiss!1504)) lt!129716)))

(declare-fun b!257795 () Bool)

(declare-fun e!167114 () Bool)

(assert (=> b!257795 (= e!167114 ((_ is Undefined!1181) lt!129715))))

(declare-fun b!257796 () Bool)

(assert (=> b!257796 (= e!167117 e!167115)))

(declare-fun res!126107 () Bool)

(declare-fun call!24502 () Bool)

(assert (=> b!257796 (= res!126107 call!24502)))

(assert (=> b!257796 (=> (not res!126107) (not e!167115))))

(declare-fun bm!24498 () Bool)

(assert (=> bm!24498 (= call!24502 (inRange!0 (ite c!43629 (index!6894 lt!129715) (index!6897 lt!129715)) (mask!11043 thiss!1504)))))

(declare-fun b!257797 () Bool)

(declare-fun e!167116 () Bool)

(assert (=> b!257797 (= e!167116 (not call!24501))))

(declare-fun b!257798 () Bool)

(assert (=> b!257798 (= e!167117 e!167114)))

(declare-fun c!43628 () Bool)

(assert (=> b!257798 (= c!43628 ((_ is MissingVacant!1181) lt!129715))))

(declare-fun b!257799 () Bool)

(declare-fun res!126108 () Bool)

(assert (=> b!257799 (=> (not res!126108) (not e!167116))))

(assert (=> b!257799 (= res!126108 (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6897 lt!129715)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!257799 (and (bvsge (index!6897 lt!129715) #b00000000000000000000000000000000) (bvslt (index!6897 lt!129715) (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun bm!24499 () Bool)

(assert (=> bm!24499 (= call!24501 (arrayContainsKey!0 (_keys!6921 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!257800 () Bool)

(declare-fun res!126110 () Bool)

(assert (=> b!257800 (=> (not res!126110) (not e!167116))))

(assert (=> b!257800 (= res!126110 call!24502)))

(assert (=> b!257800 (= e!167114 e!167116)))

(assert (= (and d!61777 c!43629) b!257796))

(assert (= (and d!61777 (not c!43629)) b!257798))

(assert (= (and b!257796 res!126107) b!257794))

(assert (= (and b!257794 res!126109) b!257793))

(assert (= (and b!257798 c!43628) b!257800))

(assert (= (and b!257798 (not c!43628)) b!257795))

(assert (= (and b!257800 res!126110) b!257799))

(assert (= (and b!257799 res!126108) b!257797))

(assert (= (or b!257796 b!257800) bm!24498))

(assert (= (or b!257793 b!257797) bm!24499))

(declare-fun m!273139 () Bool)

(assert (=> b!257799 m!273139))

(declare-fun m!273141 () Bool)

(assert (=> bm!24498 m!273141))

(assert (=> d!61777 m!272883))

(declare-fun m!273143 () Bool)

(assert (=> d!61777 m!273143))

(assert (=> d!61777 m!272897))

(assert (=> bm!24499 m!272881))

(declare-fun m!273145 () Bool)

(assert (=> b!257794 m!273145))

(assert (=> b!257537 d!61777))

(declare-fun d!61779 () Bool)

(assert (=> d!61779 (contains!1874 (getCurrentListMap!1463 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)) key!932)))

(declare-fun lt!129719 () Unit!7999)

(declare-fun choose!1250 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 64) (_ BitVec 32) Int) Unit!7999)

(assert (=> d!61779 (= lt!129719 (choose!1250 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(assert (=> d!61779 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61779 (= (lemmaArrayContainsKeyThenInListMap!241 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)) lt!129719)))

(declare-fun bs!9087 () Bool)

(assert (= bs!9087 d!61779))

(assert (=> bs!9087 m!272895))

(assert (=> bs!9087 m!272895))

(declare-fun m!273147 () Bool)

(assert (=> bs!9087 m!273147))

(declare-fun m!273149 () Bool)

(assert (=> bs!9087 m!273149))

(assert (=> bs!9087 m!272897))

(assert (=> b!257538 d!61779))

(declare-fun d!61781 () Bool)

(assert (=> d!61781 (= (inRange!0 (ite c!43577 (index!6894 lt!129551) (index!6897 lt!129551)) (mask!11043 thiss!1504)) (and (bvsge (ite c!43577 (index!6894 lt!129551) (index!6897 lt!129551)) #b00000000000000000000000000000000) (bvslt (ite c!43577 (index!6894 lt!129551) (index!6897 lt!129551)) (bvadd (mask!11043 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24455 d!61781))

(declare-fun d!61783 () Bool)

(assert (=> d!61783 (= (inRange!0 index!297 (mask!11043 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11043 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!257543 d!61783))

(declare-fun d!61785 () Bool)

(declare-fun e!167123 () Bool)

(assert (=> d!61785 e!167123))

(declare-fun res!126113 () Bool)

(assert (=> d!61785 (=> res!126113 e!167123)))

(declare-fun lt!129731 () Bool)

(assert (=> d!61785 (= res!126113 (not lt!129731))))

(declare-fun lt!129729 () Bool)

(assert (=> d!61785 (= lt!129731 lt!129729)))

(declare-fun lt!129728 () Unit!7999)

(declare-fun e!167122 () Unit!7999)

(assert (=> d!61785 (= lt!129728 e!167122)))

(declare-fun c!43632 () Bool)

(assert (=> d!61785 (= c!43632 lt!129729)))

(declare-fun containsKey!303 (List!3825 (_ BitVec 64)) Bool)

(assert (=> d!61785 (= lt!129729 (containsKey!303 (toList!1940 lt!129548) key!932))))

(assert (=> d!61785 (= (contains!1874 lt!129548 key!932) lt!129731)))

(declare-fun b!257807 () Bool)

(declare-fun lt!129730 () Unit!7999)

(assert (=> b!257807 (= e!167122 lt!129730)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!252 (List!3825 (_ BitVec 64)) Unit!7999)

(assert (=> b!257807 (= lt!129730 (lemmaContainsKeyImpliesGetValueByKeyDefined!252 (toList!1940 lt!129548) key!932))))

(declare-fun isDefined!253 (Option!317) Bool)

(assert (=> b!257807 (isDefined!253 (getValueByKey!311 (toList!1940 lt!129548) key!932))))

(declare-fun b!257808 () Bool)

(declare-fun Unit!8009 () Unit!7999)

(assert (=> b!257808 (= e!167122 Unit!8009)))

(declare-fun b!257809 () Bool)

(assert (=> b!257809 (= e!167123 (isDefined!253 (getValueByKey!311 (toList!1940 lt!129548) key!932)))))

(assert (= (and d!61785 c!43632) b!257807))

(assert (= (and d!61785 (not c!43632)) b!257808))

(assert (= (and d!61785 (not res!126113)) b!257809))

(declare-fun m!273151 () Bool)

(assert (=> d!61785 m!273151))

(declare-fun m!273153 () Bool)

(assert (=> b!257807 m!273153))

(declare-fun m!273155 () Bool)

(assert (=> b!257807 m!273155))

(assert (=> b!257807 m!273155))

(declare-fun m!273157 () Bool)

(assert (=> b!257807 m!273157))

(assert (=> b!257809 m!273155))

(assert (=> b!257809 m!273155))

(assert (=> b!257809 m!273157))

(assert (=> b!257543 d!61785))

(declare-fun b!257810 () Bool)

(declare-fun e!167125 () Unit!7999)

(declare-fun Unit!8010 () Unit!7999)

(assert (=> b!257810 (= e!167125 Unit!8010)))

(declare-fun bm!24500 () Bool)

(declare-fun call!24509 () Bool)

(declare-fun lt!129735 () ListLongMap!3849)

(assert (=> bm!24500 (= call!24509 (contains!1874 lt!129735 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24501 () Bool)

(declare-fun call!24504 () ListLongMap!3849)

(declare-fun call!24505 () ListLongMap!3849)

(assert (=> bm!24501 (= call!24504 call!24505)))

(declare-fun b!257811 () Bool)

(declare-fun res!126119 () Bool)

(declare-fun e!167129 () Bool)

(assert (=> b!257811 (=> (not res!126119) (not e!167129))))

(declare-fun e!167132 () Bool)

(assert (=> b!257811 (= res!126119 e!167132)))

(declare-fun res!126122 () Bool)

(assert (=> b!257811 (=> res!126122 e!167132)))

(declare-fun e!167133 () Bool)

(assert (=> b!257811 (= res!126122 (not e!167133))))

(declare-fun res!126117 () Bool)

(assert (=> b!257811 (=> (not res!126117) (not e!167133))))

(assert (=> b!257811 (= res!126117 (bvslt #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun b!257812 () Bool)

(declare-fun e!167128 () Bool)

(assert (=> b!257812 (= e!167128 (= (apply!254 lt!129735 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4594 thiss!1504)))))

(declare-fun bm!24502 () Bool)

(declare-fun call!24503 () ListLongMap!3849)

(assert (=> bm!24502 (= call!24503 (getCurrentListMapNoExtraKeys!573 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun b!257813 () Bool)

(declare-fun e!167136 () ListLongMap!3849)

(declare-fun call!24507 () ListLongMap!3849)

(assert (=> b!257813 (= e!167136 call!24507)))

(declare-fun b!257814 () Bool)

(declare-fun e!167131 () Bool)

(assert (=> b!257814 (= e!167131 e!167128)))

(declare-fun res!126121 () Bool)

(declare-fun call!24508 () Bool)

(assert (=> b!257814 (= res!126121 call!24508)))

(assert (=> b!257814 (=> (not res!126121) (not e!167128))))

(declare-fun b!257815 () Bool)

(declare-fun e!167135 () Bool)

(assert (=> b!257815 (= e!167129 e!167135)))

(declare-fun c!43635 () Bool)

(assert (=> b!257815 (= c!43635 (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!257816 () Bool)

(declare-fun e!167124 () Bool)

(assert (=> b!257816 (= e!167135 e!167124)))

(declare-fun res!126116 () Bool)

(assert (=> b!257816 (= res!126116 call!24509)))

(assert (=> b!257816 (=> (not res!126116) (not e!167124))))

(declare-fun b!257817 () Bool)

(declare-fun e!167127 () Bool)

(assert (=> b!257817 (= e!167127 (= (apply!254 lt!129735 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000)) (get!3054 (select (arr!5937 (_values!4736 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!592 (defaultEntry!4753 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!257817 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6284 (_values!4736 thiss!1504))))))

(assert (=> b!257817 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun b!257818 () Bool)

(declare-fun e!167126 () ListLongMap!3849)

(declare-fun call!24506 () ListLongMap!3849)

(assert (=> b!257818 (= e!167126 (+!684 call!24506 (tuple2!4923 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4594 thiss!1504))))))

(declare-fun b!257819 () Bool)

(assert (=> b!257819 (= e!167131 (not call!24508))))

(declare-fun b!257820 () Bool)

(declare-fun res!126115 () Bool)

(assert (=> b!257820 (=> (not res!126115) (not e!167129))))

(assert (=> b!257820 (= res!126115 e!167131)))

(declare-fun c!43638 () Bool)

(assert (=> b!257820 (= c!43638 (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!43633 () Bool)

(declare-fun bm!24504 () Bool)

(declare-fun c!43636 () Bool)

(assert (=> bm!24504 (= call!24506 (+!684 (ite c!43633 call!24503 (ite c!43636 call!24505 call!24504)) (ite (or c!43633 c!43636) (tuple2!4923 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4594 thiss!1504)) (tuple2!4923 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4594 thiss!1504)))))))

(declare-fun b!257821 () Bool)

(assert (=> b!257821 (= e!167136 call!24504)))

(declare-fun b!257822 () Bool)

(declare-fun c!43634 () Bool)

(assert (=> b!257822 (= c!43634 (and (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!167134 () ListLongMap!3849)

(assert (=> b!257822 (= e!167134 e!167136)))

(declare-fun b!257823 () Bool)

(assert (=> b!257823 (= e!167124 (= (apply!254 lt!129735 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4594 thiss!1504)))))

(declare-fun b!257824 () Bool)

(assert (=> b!257824 (= e!167126 e!167134)))

(assert (=> b!257824 (= c!43636 (and (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!257825 () Bool)

(declare-fun e!167130 () Bool)

(assert (=> b!257825 (= e!167130 (validKeyInArray!0 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!257826 () Bool)

(assert (=> b!257826 (= e!167133 (validKeyInArray!0 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24505 () Bool)

(assert (=> bm!24505 (= call!24507 call!24506)))

(declare-fun b!257827 () Bool)

(assert (=> b!257827 (= e!167135 (not call!24509))))

(declare-fun bm!24506 () Bool)

(assert (=> bm!24506 (= call!24508 (contains!1874 lt!129735 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!257828 () Bool)

(assert (=> b!257828 (= e!167134 call!24507)))

(declare-fun b!257829 () Bool)

(declare-fun lt!129733 () Unit!7999)

(assert (=> b!257829 (= e!167125 lt!129733)))

(declare-fun lt!129752 () ListLongMap!3849)

(assert (=> b!257829 (= lt!129752 (getCurrentListMapNoExtraKeys!573 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129734 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129734 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129737 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129737 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129732 () Unit!7999)

(assert (=> b!257829 (= lt!129732 (addStillContains!230 lt!129752 lt!129734 (zeroValue!4594 thiss!1504) lt!129737))))

(assert (=> b!257829 (contains!1874 (+!684 lt!129752 (tuple2!4923 lt!129734 (zeroValue!4594 thiss!1504))) lt!129737)))

(declare-fun lt!129753 () Unit!7999)

(assert (=> b!257829 (= lt!129753 lt!129732)))

(declare-fun lt!129751 () ListLongMap!3849)

(assert (=> b!257829 (= lt!129751 (getCurrentListMapNoExtraKeys!573 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129742 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129742 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129745 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129745 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129749 () Unit!7999)

(assert (=> b!257829 (= lt!129749 (addApplyDifferent!230 lt!129751 lt!129742 (minValue!4594 thiss!1504) lt!129745))))

(assert (=> b!257829 (= (apply!254 (+!684 lt!129751 (tuple2!4923 lt!129742 (minValue!4594 thiss!1504))) lt!129745) (apply!254 lt!129751 lt!129745))))

(declare-fun lt!129738 () Unit!7999)

(assert (=> b!257829 (= lt!129738 lt!129749)))

(declare-fun lt!129748 () ListLongMap!3849)

(assert (=> b!257829 (= lt!129748 (getCurrentListMapNoExtraKeys!573 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129746 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129746 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129747 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129747 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!129740 () Unit!7999)

(assert (=> b!257829 (= lt!129740 (addApplyDifferent!230 lt!129748 lt!129746 (zeroValue!4594 thiss!1504) lt!129747))))

(assert (=> b!257829 (= (apply!254 (+!684 lt!129748 (tuple2!4923 lt!129746 (zeroValue!4594 thiss!1504))) lt!129747) (apply!254 lt!129748 lt!129747))))

(declare-fun lt!129750 () Unit!7999)

(assert (=> b!257829 (= lt!129750 lt!129740)))

(declare-fun lt!129739 () ListLongMap!3849)

(assert (=> b!257829 (= lt!129739 (getCurrentListMapNoExtraKeys!573 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)))))

(declare-fun lt!129743 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129743 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!129741 () (_ BitVec 64))

(assert (=> b!257829 (= lt!129741 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!257829 (= lt!129733 (addApplyDifferent!230 lt!129739 lt!129743 (minValue!4594 thiss!1504) lt!129741))))

(assert (=> b!257829 (= (apply!254 (+!684 lt!129739 (tuple2!4923 lt!129743 (minValue!4594 thiss!1504))) lt!129741) (apply!254 lt!129739 lt!129741))))

(declare-fun b!257830 () Bool)

(assert (=> b!257830 (= e!167132 e!167127)))

(declare-fun res!126120 () Bool)

(assert (=> b!257830 (=> (not res!126120) (not e!167127))))

(assert (=> b!257830 (= res!126120 (contains!1874 lt!129735 (select (arr!5938 (_keys!6921 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!257830 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))))))

(declare-fun d!61787 () Bool)

(assert (=> d!61787 e!167129))

(declare-fun res!126114 () Bool)

(assert (=> d!61787 (=> (not res!126114) (not e!167129))))

(assert (=> d!61787 (= res!126114 (or (bvsge #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))))))))

(declare-fun lt!129736 () ListLongMap!3849)

(assert (=> d!61787 (= lt!129735 lt!129736)))

(declare-fun lt!129744 () Unit!7999)

(assert (=> d!61787 (= lt!129744 e!167125)))

(declare-fun c!43637 () Bool)

(assert (=> d!61787 (= c!43637 e!167130)))

(declare-fun res!126118 () Bool)

(assert (=> d!61787 (=> (not res!126118) (not e!167130))))

(assert (=> d!61787 (= res!126118 (bvslt #b00000000000000000000000000000000 (size!6285 (_keys!6921 thiss!1504))))))

(assert (=> d!61787 (= lt!129736 e!167126)))

(assert (=> d!61787 (= c!43633 (and (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4490 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61787 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61787 (= (getCurrentListMap!1463 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4753 thiss!1504)) lt!129735)))

(declare-fun bm!24503 () Bool)

(assert (=> bm!24503 (= call!24505 call!24503)))

(assert (= (and d!61787 c!43633) b!257818))

(assert (= (and d!61787 (not c!43633)) b!257824))

(assert (= (and b!257824 c!43636) b!257828))

(assert (= (and b!257824 (not c!43636)) b!257822))

(assert (= (and b!257822 c!43634) b!257813))

(assert (= (and b!257822 (not c!43634)) b!257821))

(assert (= (or b!257813 b!257821) bm!24501))

(assert (= (or b!257828 bm!24501) bm!24503))

(assert (= (or b!257828 b!257813) bm!24505))

(assert (= (or b!257818 bm!24503) bm!24502))

(assert (= (or b!257818 bm!24505) bm!24504))

(assert (= (and d!61787 res!126118) b!257825))

(assert (= (and d!61787 c!43637) b!257829))

(assert (= (and d!61787 (not c!43637)) b!257810))

(assert (= (and d!61787 res!126114) b!257811))

(assert (= (and b!257811 res!126117) b!257826))

(assert (= (and b!257811 (not res!126122)) b!257830))

(assert (= (and b!257830 res!126120) b!257817))

(assert (= (and b!257811 res!126119) b!257820))

(assert (= (and b!257820 c!43638) b!257814))

(assert (= (and b!257820 (not c!43638)) b!257819))

(assert (= (and b!257814 res!126121) b!257812))

(assert (= (or b!257814 b!257819) bm!24506))

(assert (= (and b!257820 res!126115) b!257815))

(assert (= (and b!257815 c!43635) b!257816))

(assert (= (and b!257815 (not c!43635)) b!257827))

(assert (= (and b!257816 res!126116) b!257823))

(assert (= (or b!257816 b!257827) bm!24500))

(declare-fun b_lambda!8219 () Bool)

(assert (=> (not b_lambda!8219) (not b!257817)))

(assert (=> b!257817 t!8899))

(declare-fun b_and!13829 () Bool)

(assert (= b_and!13827 (and (=> t!8899 result!5393) b_and!13829)))

(declare-fun m!273159 () Bool)

(assert (=> b!257812 m!273159))

(assert (=> b!257825 m!273021))

(assert (=> b!257825 m!273021))

(assert (=> b!257825 m!273023))

(declare-fun m!273161 () Bool)

(assert (=> b!257823 m!273161))

(declare-fun m!273163 () Bool)

(assert (=> bm!24506 m!273163))

(assert (=> d!61787 m!272897))

(declare-fun m!273165 () Bool)

(assert (=> b!257818 m!273165))

(declare-fun m!273167 () Bool)

(assert (=> bm!24504 m!273167))

(declare-fun m!273169 () Bool)

(assert (=> bm!24500 m!273169))

(declare-fun m!273171 () Bool)

(assert (=> bm!24502 m!273171))

(assert (=> b!257817 m!273021))

(declare-fun m!273173 () Bool)

(assert (=> b!257817 m!273173))

(assert (=> b!257817 m!273077))

(assert (=> b!257817 m!273021))

(declare-fun m!273175 () Bool)

(assert (=> b!257817 m!273175))

(assert (=> b!257817 m!273175))

(assert (=> b!257817 m!273077))

(declare-fun m!273177 () Bool)

(assert (=> b!257817 m!273177))

(assert (=> b!257830 m!273021))

(assert (=> b!257830 m!273021))

(declare-fun m!273179 () Bool)

(assert (=> b!257830 m!273179))

(assert (=> b!257826 m!273021))

(assert (=> b!257826 m!273021))

(assert (=> b!257826 m!273023))

(declare-fun m!273181 () Bool)

(assert (=> b!257829 m!273181))

(declare-fun m!273183 () Bool)

(assert (=> b!257829 m!273183))

(declare-fun m!273185 () Bool)

(assert (=> b!257829 m!273185))

(declare-fun m!273187 () Bool)

(assert (=> b!257829 m!273187))

(declare-fun m!273189 () Bool)

(assert (=> b!257829 m!273189))

(declare-fun m!273191 () Bool)

(assert (=> b!257829 m!273191))

(assert (=> b!257829 m!273171))

(declare-fun m!273193 () Bool)

(assert (=> b!257829 m!273193))

(declare-fun m!273195 () Bool)

(assert (=> b!257829 m!273195))

(declare-fun m!273197 () Bool)

(assert (=> b!257829 m!273197))

(assert (=> b!257829 m!273189))

(assert (=> b!257829 m!273021))

(declare-fun m!273199 () Bool)

(assert (=> b!257829 m!273199))

(declare-fun m!273201 () Bool)

(assert (=> b!257829 m!273201))

(declare-fun m!273203 () Bool)

(assert (=> b!257829 m!273203))

(assert (=> b!257829 m!273199))

(declare-fun m!273205 () Bool)

(assert (=> b!257829 m!273205))

(assert (=> b!257829 m!273187))

(declare-fun m!273207 () Bool)

(assert (=> b!257829 m!273207))

(assert (=> b!257829 m!273195))

(declare-fun m!273209 () Bool)

(assert (=> b!257829 m!273209))

(assert (=> b!257543 d!61787))

(declare-fun d!61789 () Bool)

(declare-fun e!167139 () Bool)

(assert (=> d!61789 e!167139))

(declare-fun res!126128 () Bool)

(assert (=> d!61789 (=> (not res!126128) (not e!167139))))

(declare-fun lt!129758 () SeekEntryResult!1181)

(assert (=> d!61789 (= res!126128 ((_ is Found!1181) lt!129758))))

(assert (=> d!61789 (= lt!129758 (seekEntryOrOpen!0 key!932 (_keys!6921 thiss!1504) (mask!11043 thiss!1504)))))

(declare-fun lt!129759 () Unit!7999)

(declare-fun choose!1251 (array!12540 array!12538 (_ BitVec 32) (_ BitVec 32) V!8443 V!8443 (_ BitVec 64) Int) Unit!7999)

(assert (=> d!61789 (= lt!129759 (choose!1251 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 (defaultEntry!4753 thiss!1504)))))

(assert (=> d!61789 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61789 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!435 (_keys!6921 thiss!1504) (_values!4736 thiss!1504) (mask!11043 thiss!1504) (extraKeys!4490 thiss!1504) (zeroValue!4594 thiss!1504) (minValue!4594 thiss!1504) key!932 (defaultEntry!4753 thiss!1504)) lt!129759)))

(declare-fun b!257835 () Bool)

(declare-fun res!126127 () Bool)

(assert (=> b!257835 (=> (not res!126127) (not e!167139))))

(assert (=> b!257835 (= res!126127 (inRange!0 (index!6895 lt!129758) (mask!11043 thiss!1504)))))

(declare-fun b!257836 () Bool)

(assert (=> b!257836 (= e!167139 (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6895 lt!129758)) key!932))))

(assert (=> b!257836 (and (bvsge (index!6895 lt!129758) #b00000000000000000000000000000000) (bvslt (index!6895 lt!129758) (size!6285 (_keys!6921 thiss!1504))))))

(assert (= (and d!61789 res!126128) b!257835))

(assert (= (and b!257835 res!126127) b!257836))

(assert (=> d!61789 m!272883))

(declare-fun m!273211 () Bool)

(assert (=> d!61789 m!273211))

(assert (=> d!61789 m!272897))

(declare-fun m!273213 () Bool)

(assert (=> b!257835 m!273213))

(declare-fun m!273215 () Bool)

(assert (=> b!257836 m!273215))

(assert (=> b!257553 d!61789))

(declare-fun b!257849 () Bool)

(declare-fun e!167148 () SeekEntryResult!1181)

(assert (=> b!257849 (= e!167148 Undefined!1181)))

(declare-fun b!257850 () Bool)

(declare-fun c!43646 () Bool)

(declare-fun lt!129767 () (_ BitVec 64))

(assert (=> b!257850 (= c!43646 (= lt!129767 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!167146 () SeekEntryResult!1181)

(declare-fun e!167147 () SeekEntryResult!1181)

(assert (=> b!257850 (= e!167146 e!167147)))

(declare-fun b!257851 () Bool)

(declare-fun lt!129768 () SeekEntryResult!1181)

(assert (=> b!257851 (= e!167147 (MissingZero!1181 (index!6896 lt!129768)))))

(declare-fun b!257853 () Bool)

(assert (=> b!257853 (= e!167146 (Found!1181 (index!6896 lt!129768)))))

(declare-fun b!257854 () Bool)

(assert (=> b!257854 (= e!167148 e!167146)))

(assert (=> b!257854 (= lt!129767 (select (arr!5938 (_keys!6921 thiss!1504)) (index!6896 lt!129768)))))

(declare-fun c!43645 () Bool)

(assert (=> b!257854 (= c!43645 (= lt!129767 key!932))))

(declare-fun b!257852 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12540 (_ BitVec 32)) SeekEntryResult!1181)

(assert (=> b!257852 (= e!167147 (seekKeyOrZeroReturnVacant!0 (x!25031 lt!129768) (index!6896 lt!129768) (index!6896 lt!129768) key!932 (_keys!6921 thiss!1504) (mask!11043 thiss!1504)))))

(declare-fun d!61791 () Bool)

(declare-fun lt!129766 () SeekEntryResult!1181)

(assert (=> d!61791 (and (or ((_ is Undefined!1181) lt!129766) (not ((_ is Found!1181) lt!129766)) (and (bvsge (index!6895 lt!129766) #b00000000000000000000000000000000) (bvslt (index!6895 lt!129766) (size!6285 (_keys!6921 thiss!1504))))) (or ((_ is Undefined!1181) lt!129766) ((_ is Found!1181) lt!129766) (not ((_ is MissingZero!1181) lt!129766)) (and (bvsge (index!6894 lt!129766) #b00000000000000000000000000000000) (bvslt (index!6894 lt!129766) (size!6285 (_keys!6921 thiss!1504))))) (or ((_ is Undefined!1181) lt!129766) ((_ is Found!1181) lt!129766) ((_ is MissingZero!1181) lt!129766) (not ((_ is MissingVacant!1181) lt!129766)) (and (bvsge (index!6897 lt!129766) #b00000000000000000000000000000000) (bvslt (index!6897 lt!129766) (size!6285 (_keys!6921 thiss!1504))))) (or ((_ is Undefined!1181) lt!129766) (ite ((_ is Found!1181) lt!129766) (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6895 lt!129766)) key!932) (ite ((_ is MissingZero!1181) lt!129766) (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6894 lt!129766)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1181) lt!129766) (= (select (arr!5938 (_keys!6921 thiss!1504)) (index!6897 lt!129766)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61791 (= lt!129766 e!167148)))

(declare-fun c!43647 () Bool)

(assert (=> d!61791 (= c!43647 (and ((_ is Intermediate!1181) lt!129768) (undefined!1993 lt!129768)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12540 (_ BitVec 32)) SeekEntryResult!1181)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61791 (= lt!129768 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11043 thiss!1504)) key!932 (_keys!6921 thiss!1504) (mask!11043 thiss!1504)))))

(assert (=> d!61791 (validMask!0 (mask!11043 thiss!1504))))

(assert (=> d!61791 (= (seekEntryOrOpen!0 key!932 (_keys!6921 thiss!1504) (mask!11043 thiss!1504)) lt!129766)))

(assert (= (and d!61791 c!43647) b!257849))

(assert (= (and d!61791 (not c!43647)) b!257854))

(assert (= (and b!257854 c!43645) b!257853))

(assert (= (and b!257854 (not c!43645)) b!257850))

(assert (= (and b!257850 c!43646) b!257851))

(assert (= (and b!257850 (not c!43646)) b!257852))

(declare-fun m!273217 () Bool)

(assert (=> b!257854 m!273217))

(declare-fun m!273219 () Bool)

(assert (=> b!257852 m!273219))

(declare-fun m!273221 () Bool)

(assert (=> d!61791 m!273221))

(declare-fun m!273223 () Bool)

(assert (=> d!61791 m!273223))

(assert (=> d!61791 m!272897))

(declare-fun m!273225 () Bool)

(assert (=> d!61791 m!273225))

(declare-fun m!273227 () Bool)

(assert (=> d!61791 m!273227))

(declare-fun m!273229 () Bool)

(assert (=> d!61791 m!273229))

(assert (=> d!61791 m!273225))

(assert (=> b!257540 d!61791))

(declare-fun b!257862 () Bool)

(declare-fun e!167154 () Bool)

(assert (=> b!257862 (= e!167154 tp_is_empty!6597)))

(declare-fun mapNonEmpty!11238 () Bool)

(declare-fun mapRes!11238 () Bool)

(declare-fun tp!23523 () Bool)

(declare-fun e!167153 () Bool)

(assert (=> mapNonEmpty!11238 (= mapRes!11238 (and tp!23523 e!167153))))

(declare-fun mapKey!11238 () (_ BitVec 32))

(declare-fun mapRest!11238 () (Array (_ BitVec 32) ValueCell!2955))

(declare-fun mapValue!11238 () ValueCell!2955)

(assert (=> mapNonEmpty!11238 (= mapRest!11232 (store mapRest!11238 mapKey!11238 mapValue!11238))))

(declare-fun mapIsEmpty!11238 () Bool)

(assert (=> mapIsEmpty!11238 mapRes!11238))

(declare-fun condMapEmpty!11238 () Bool)

(declare-fun mapDefault!11238 () ValueCell!2955)

(assert (=> mapNonEmpty!11232 (= condMapEmpty!11238 (= mapRest!11232 ((as const (Array (_ BitVec 32) ValueCell!2955)) mapDefault!11238)))))

(assert (=> mapNonEmpty!11232 (= tp!23514 (and e!167154 mapRes!11238))))

(declare-fun b!257861 () Bool)

(assert (=> b!257861 (= e!167153 tp_is_empty!6597)))

(assert (= (and mapNonEmpty!11232 condMapEmpty!11238) mapIsEmpty!11238))

(assert (= (and mapNonEmpty!11232 (not condMapEmpty!11238)) mapNonEmpty!11238))

(assert (= (and mapNonEmpty!11238 ((_ is ValueCellFull!2955) mapValue!11238)) b!257861))

(assert (= (and mapNonEmpty!11232 ((_ is ValueCellFull!2955) mapDefault!11238)) b!257862))

(declare-fun m!273231 () Bool)

(assert (=> mapNonEmpty!11238 m!273231))

(declare-fun b_lambda!8221 () Bool)

(assert (= b_lambda!8217 (or (and b!257545 b_free!6735) b_lambda!8221)))

(declare-fun b_lambda!8223 () Bool)

(assert (= b_lambda!8219 (or (and b!257545 b_free!6735) b_lambda!8223)))

(check-sat (not d!61771) (not mapNonEmpty!11238) (not b!257647) (not b!257825) (not b_lambda!8221) b_and!13829 (not bm!24492) (not b!257648) (not b!257818) (not b!257761) (not d!61761) (not b!257823) (not bm!24468) (not b!257758) (not bm!24464) (not d!61759) (not b!257749) (not d!61787) (not b!257835) (not b!257631) (not b!257681) (not b!257809) (not bm!24504) (not b!257641) (not bm!24493) (not b!257623) (not b!257739) (not bm!24483) (not b!257731) (not b!257774) (not bm!24506) (not b!257624) (not b!257672) (not b!257740) (not b!257775) (not b!257817) (not b!257852) (not bm!24487) (not b!257626) (not d!61751) (not d!61739) (not d!61785) (not b!257656) (not d!61755) (not d!61741) (not b!257670) (not d!61777) (not b!257807) (not bm!24498) (not bm!24485) (not b!257744) (not d!61791) (not d!61767) (not d!61779) (not b!257776) (not b!257826) (not b!257668) (not b_lambda!8223) (not b!257737) (not b!257767) (not b!257726) (not b!257829) (not bm!24499) (not b!257732) (not d!61745) (not b_next!6735) (not b!257762) (not bm!24465) (not b!257743) (not b!257812) (not bm!24489) tp_is_empty!6597 (not bm!24502) (not b!257830) (not b!257675) (not b!257657) (not bm!24500) (not d!61789))
(check-sat b_and!13829 (not b_next!6735))
