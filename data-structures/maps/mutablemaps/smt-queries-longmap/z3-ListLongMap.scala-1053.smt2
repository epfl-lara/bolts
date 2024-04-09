; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22014 () Bool)

(assert start!22014)

(declare-fun b!226231 () Bool)

(declare-fun b_free!6069 () Bool)

(declare-fun b_next!6069 () Bool)

(assert (=> b!226231 (= b_free!6069 (not b_next!6069))))

(declare-fun tp!21349 () Bool)

(declare-fun b_and!12985 () Bool)

(assert (=> b!226231 (= tp!21349 b_and!12985)))

(declare-fun b!226208 () Bool)

(declare-fun res!111376 () Bool)

(declare-fun e!146790 () Bool)

(assert (=> b!226208 (=> res!111376 e!146790)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!226208 (= res!111376 (not (validKeyInArray!0 key!932)))))

(declare-fun b!226209 () Bool)

(declare-datatypes ((Unit!6835 0))(
  ( (Unit!6836) )
))
(declare-fun e!146787 () Unit!6835)

(declare-fun Unit!6837 () Unit!6835)

(assert (=> b!226209 (= e!146787 Unit!6837)))

(declare-fun lt!113927 () Unit!6835)

(declare-datatypes ((V!7555 0))(
  ( (V!7556 (val!3010 Int)) )
))
(declare-datatypes ((ValueCell!2622 0))(
  ( (ValueCellFull!2622 (v!5026 V!7555)) (EmptyCell!2622) )
))
(declare-datatypes ((array!11104 0))(
  ( (array!11105 (arr!5271 (Array (_ BitVec 32) ValueCell!2622)) (size!5604 (_ BitVec 32))) )
))
(declare-datatypes ((array!11106 0))(
  ( (array!11107 (arr!5272 (Array (_ BitVec 32) (_ BitVec 64))) (size!5605 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3144 0))(
  ( (LongMapFixedSize!3145 (defaultEntry!4231 Int) (mask!10081 (_ BitVec 32)) (extraKeys!3968 (_ BitVec 32)) (zeroValue!4072 V!7555) (minValue!4072 V!7555) (_size!1621 (_ BitVec 32)) (_keys!6285 array!11106) (_values!4214 array!11104) (_vacant!1621 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3144)

(declare-fun lemmaArrayContainsKeyThenInListMap!93 (array!11106 array!11104 (_ BitVec 32) (_ BitVec 32) V!7555 V!7555 (_ BitVec 64) (_ BitVec 32) Int) Unit!6835)

(assert (=> b!226209 (= lt!113927 (lemmaArrayContainsKeyThenInListMap!93 (_keys!6285 thiss!1504) (_values!4214 thiss!1504) (mask!10081 thiss!1504) (extraKeys!3968 thiss!1504) (zeroValue!4072 thiss!1504) (minValue!4072 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4231 thiss!1504)))))

(assert (=> b!226209 false))

(declare-fun b!226210 () Bool)

(assert (=> b!226210 (= e!146790 true)))

(declare-fun lt!113930 () Bool)

(declare-datatypes ((List!3390 0))(
  ( (Nil!3387) (Cons!3386 (h!4034 (_ BitVec 64)) (t!8357 List!3390)) )
))
(declare-fun arrayNoDuplicates!0 (array!11106 (_ BitVec 32) List!3390) Bool)

(assert (=> b!226210 (= lt!113930 (arrayNoDuplicates!0 (_keys!6285 thiss!1504) #b00000000000000000000000000000000 Nil!3387))))

(declare-fun b!226211 () Bool)

(declare-fun e!146793 () Bool)

(declare-fun e!146791 () Bool)

(assert (=> b!226211 (= e!146793 e!146791)))

(declare-fun res!111366 () Bool)

(assert (=> b!226211 (=> (not res!111366) (not e!146791))))

(declare-datatypes ((SeekEntryResult!890 0))(
  ( (MissingZero!890 (index!5730 (_ BitVec 32))) (Found!890 (index!5731 (_ BitVec 32))) (Intermediate!890 (undefined!1702 Bool) (index!5732 (_ BitVec 32)) (x!23230 (_ BitVec 32))) (Undefined!890) (MissingVacant!890 (index!5733 (_ BitVec 32))) )
))
(declare-fun lt!113931 () SeekEntryResult!890)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!226211 (= res!111366 (or (= lt!113931 (MissingZero!890 index!297)) (= lt!113931 (MissingVacant!890 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11106 (_ BitVec 32)) SeekEntryResult!890)

(assert (=> b!226211 (= lt!113931 (seekEntryOrOpen!0 key!932 (_keys!6285 thiss!1504) (mask!10081 thiss!1504)))))

(declare-fun c!37492 () Bool)

(declare-fun call!21040 () Bool)

(declare-fun bm!21036 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21036 (= call!21040 (inRange!0 (ite c!37492 (index!5730 lt!113931) (index!5733 lt!113931)) (mask!10081 thiss!1504)))))

(declare-fun b!226212 () Bool)

(declare-fun e!146798 () Bool)

(get-info :version)

(assert (=> b!226212 (= e!146798 ((_ is Undefined!890) lt!113931))))

(declare-fun b!226213 () Bool)

(declare-fun e!146786 () Bool)

(declare-fun tp_is_empty!5931 () Bool)

(assert (=> b!226213 (= e!146786 tp_is_empty!5931)))

(declare-fun b!226214 () Bool)

(declare-fun e!146796 () Bool)

(declare-fun mapRes!10066 () Bool)

(assert (=> b!226214 (= e!146796 (and e!146786 mapRes!10066))))

(declare-fun condMapEmpty!10066 () Bool)

(declare-fun mapDefault!10066 () ValueCell!2622)

(assert (=> b!226214 (= condMapEmpty!10066 (= (arr!5271 (_values!4214 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2622)) mapDefault!10066)))))

(declare-fun mapIsEmpty!10066 () Bool)

(assert (=> mapIsEmpty!10066 mapRes!10066))

(declare-fun b!226215 () Bool)

(declare-fun e!146788 () Unit!6835)

(declare-fun Unit!6838 () Unit!6835)

(assert (=> b!226215 (= e!146788 Unit!6838)))

(declare-fun lt!113926 () Unit!6835)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!256 (array!11106 array!11104 (_ BitVec 32) (_ BitVec 32) V!7555 V!7555 (_ BitVec 64) Int) Unit!6835)

(assert (=> b!226215 (= lt!113926 (lemmaInListMapThenSeekEntryOrOpenFindsIt!256 (_keys!6285 thiss!1504) (_values!4214 thiss!1504) (mask!10081 thiss!1504) (extraKeys!3968 thiss!1504) (zeroValue!4072 thiss!1504) (minValue!4072 thiss!1504) key!932 (defaultEntry!4231 thiss!1504)))))

(assert (=> b!226215 false))

(declare-fun b!226216 () Bool)

(declare-fun res!111374 () Bool)

(assert (=> b!226216 (=> res!111374 e!146790)))

(declare-fun lt!113933 () Bool)

(assert (=> b!226216 (= res!111374 lt!113933)))

(declare-fun b!226217 () Bool)

(declare-fun res!111369 () Bool)

(declare-fun e!146792 () Bool)

(assert (=> b!226217 (=> (not res!111369) (not e!146792))))

(assert (=> b!226217 (= res!111369 call!21040)))

(declare-fun e!146789 () Bool)

(assert (=> b!226217 (= e!146789 e!146792)))

(declare-fun b!226218 () Bool)

(declare-fun Unit!6839 () Unit!6835)

(assert (=> b!226218 (= e!146787 Unit!6839)))

(declare-fun b!226219 () Bool)

(declare-fun res!111375 () Bool)

(assert (=> b!226219 (=> res!111375 e!146790)))

(assert (=> b!226219 (= res!111375 (or (not (= (size!5605 (_keys!6285 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10081 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5605 (_keys!6285 thiss!1504)))))))

(declare-fun b!226220 () Bool)

(declare-fun e!146794 () Bool)

(assert (=> b!226220 (= e!146794 (not e!146790))))

(declare-fun res!111372 () Bool)

(assert (=> b!226220 (=> res!111372 e!146790)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226220 (= res!111372 (not (validMask!0 (mask!10081 thiss!1504))))))

(declare-fun lt!113925 () array!11106)

(declare-fun arrayCountValidKeys!0 (array!11106 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226220 (= (arrayCountValidKeys!0 lt!113925 #b00000000000000000000000000000000 (size!5605 (_keys!6285 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6285 thiss!1504) #b00000000000000000000000000000000 (size!5605 (_keys!6285 thiss!1504)))))))

(declare-fun lt!113934 () Unit!6835)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11106 (_ BitVec 32) (_ BitVec 64)) Unit!6835)

(assert (=> b!226220 (= lt!113934 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6285 thiss!1504) index!297 key!932))))

(assert (=> b!226220 (arrayNoDuplicates!0 lt!113925 #b00000000000000000000000000000000 Nil!3387)))

(assert (=> b!226220 (= lt!113925 (array!11107 (store (arr!5272 (_keys!6285 thiss!1504)) index!297 key!932) (size!5605 (_keys!6285 thiss!1504))))))

(declare-fun lt!113928 () Unit!6835)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11106 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3390) Unit!6835)

(assert (=> b!226220 (= lt!113928 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6285 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3387))))

(declare-fun lt!113924 () Unit!6835)

(assert (=> b!226220 (= lt!113924 e!146787)))

(declare-fun c!37490 () Bool)

(assert (=> b!226220 (= c!37490 lt!113933)))

(declare-fun arrayContainsKey!0 (array!11106 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!226220 (= lt!113933 (arrayContainsKey!0 (_keys!6285 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226221 () Bool)

(declare-fun res!111373 () Bool)

(assert (=> b!226221 (=> res!111373 e!146790)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11106 (_ BitVec 32)) Bool)

(assert (=> b!226221 (= res!111373 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6285 thiss!1504) (mask!10081 thiss!1504))))))

(declare-fun bm!21037 () Bool)

(declare-fun call!21039 () Bool)

(assert (=> bm!21037 (= call!21039 (arrayContainsKey!0 (_keys!6285 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226222 () Bool)

(declare-fun e!146797 () Bool)

(assert (=> b!226222 (= e!146798 e!146797)))

(declare-fun res!111370 () Bool)

(assert (=> b!226222 (= res!111370 call!21040)))

(assert (=> b!226222 (=> (not res!111370) (not e!146797))))

(declare-fun b!226223 () Bool)

(declare-fun res!111367 () Bool)

(assert (=> b!226223 (=> (not res!111367) (not e!146792))))

(assert (=> b!226223 (= res!111367 (= (select (arr!5272 (_keys!6285 thiss!1504)) (index!5730 lt!113931)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226224 () Bool)

(declare-fun res!111371 () Bool)

(assert (=> b!226224 (= res!111371 (= (select (arr!5272 (_keys!6285 thiss!1504)) (index!5733 lt!113931)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226224 (=> (not res!111371) (not e!146797))))

(declare-fun b!226225 () Bool)

(declare-fun lt!113932 () Unit!6835)

(assert (=> b!226225 (= e!146788 lt!113932)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!265 (array!11106 array!11104 (_ BitVec 32) (_ BitVec 32) V!7555 V!7555 (_ BitVec 64) Int) Unit!6835)

(assert (=> b!226225 (= lt!113932 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!265 (_keys!6285 thiss!1504) (_values!4214 thiss!1504) (mask!10081 thiss!1504) (extraKeys!3968 thiss!1504) (zeroValue!4072 thiss!1504) (minValue!4072 thiss!1504) key!932 (defaultEntry!4231 thiss!1504)))))

(assert (=> b!226225 (= c!37492 ((_ is MissingZero!890) lt!113931))))

(assert (=> b!226225 e!146789))

(declare-fun res!111368 () Bool)

(assert (=> start!22014 (=> (not res!111368) (not e!146793))))

(declare-fun valid!1257 (LongMapFixedSize!3144) Bool)

(assert (=> start!22014 (= res!111368 (valid!1257 thiss!1504))))

(assert (=> start!22014 e!146793))

(declare-fun e!146800 () Bool)

(assert (=> start!22014 e!146800))

(assert (=> start!22014 true))

(declare-fun mapNonEmpty!10066 () Bool)

(declare-fun tp!21348 () Bool)

(declare-fun e!146795 () Bool)

(assert (=> mapNonEmpty!10066 (= mapRes!10066 (and tp!21348 e!146795))))

(declare-fun mapValue!10066 () ValueCell!2622)

(declare-fun mapRest!10066 () (Array (_ BitVec 32) ValueCell!2622))

(declare-fun mapKey!10066 () (_ BitVec 32))

(assert (=> mapNonEmpty!10066 (= (arr!5271 (_values!4214 thiss!1504)) (store mapRest!10066 mapKey!10066 mapValue!10066))))

(declare-fun b!226226 () Bool)

(assert (=> b!226226 (= e!146797 (not call!21039))))

(declare-fun b!226227 () Bool)

(assert (=> b!226227 (= e!146795 tp_is_empty!5931)))

(declare-fun b!226228 () Bool)

(declare-fun res!111365 () Bool)

(assert (=> b!226228 (=> (not res!111365) (not e!146793))))

(assert (=> b!226228 (= res!111365 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226229 () Bool)

(assert (=> b!226229 (= e!146792 (not call!21039))))

(declare-fun b!226230 () Bool)

(declare-fun c!37491 () Bool)

(assert (=> b!226230 (= c!37491 ((_ is MissingVacant!890) lt!113931))))

(assert (=> b!226230 (= e!146789 e!146798)))

(declare-fun array_inv!3477 (array!11106) Bool)

(declare-fun array_inv!3478 (array!11104) Bool)

(assert (=> b!226231 (= e!146800 (and tp!21349 tp_is_empty!5931 (array_inv!3477 (_keys!6285 thiss!1504)) (array_inv!3478 (_values!4214 thiss!1504)) e!146796))))

(declare-fun b!226232 () Bool)

(assert (=> b!226232 (= e!146791 e!146794)))

(declare-fun res!111364 () Bool)

(assert (=> b!226232 (=> (not res!111364) (not e!146794))))

(assert (=> b!226232 (= res!111364 (inRange!0 index!297 (mask!10081 thiss!1504)))))

(declare-fun lt!113929 () Unit!6835)

(assert (=> b!226232 (= lt!113929 e!146788)))

(declare-fun c!37493 () Bool)

(declare-datatypes ((tuple2!4450 0))(
  ( (tuple2!4451 (_1!2235 (_ BitVec 64)) (_2!2235 V!7555)) )
))
(declare-datatypes ((List!3391 0))(
  ( (Nil!3388) (Cons!3387 (h!4035 tuple2!4450) (t!8358 List!3391)) )
))
(declare-datatypes ((ListLongMap!3377 0))(
  ( (ListLongMap!3378 (toList!1704 List!3391)) )
))
(declare-fun contains!1572 (ListLongMap!3377 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1227 (array!11106 array!11104 (_ BitVec 32) (_ BitVec 32) V!7555 V!7555 (_ BitVec 32) Int) ListLongMap!3377)

(assert (=> b!226232 (= c!37493 (contains!1572 (getCurrentListMap!1227 (_keys!6285 thiss!1504) (_values!4214 thiss!1504) (mask!10081 thiss!1504) (extraKeys!3968 thiss!1504) (zeroValue!4072 thiss!1504) (minValue!4072 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4231 thiss!1504)) key!932))))

(assert (= (and start!22014 res!111368) b!226228))

(assert (= (and b!226228 res!111365) b!226211))

(assert (= (and b!226211 res!111366) b!226232))

(assert (= (and b!226232 c!37493) b!226215))

(assert (= (and b!226232 (not c!37493)) b!226225))

(assert (= (and b!226225 c!37492) b!226217))

(assert (= (and b!226225 (not c!37492)) b!226230))

(assert (= (and b!226217 res!111369) b!226223))

(assert (= (and b!226223 res!111367) b!226229))

(assert (= (and b!226230 c!37491) b!226222))

(assert (= (and b!226230 (not c!37491)) b!226212))

(assert (= (and b!226222 res!111370) b!226224))

(assert (= (and b!226224 res!111371) b!226226))

(assert (= (or b!226217 b!226222) bm!21036))

(assert (= (or b!226229 b!226226) bm!21037))

(assert (= (and b!226232 res!111364) b!226220))

(assert (= (and b!226220 c!37490) b!226209))

(assert (= (and b!226220 (not c!37490)) b!226218))

(assert (= (and b!226220 (not res!111372)) b!226219))

(assert (= (and b!226219 (not res!111375)) b!226208))

(assert (= (and b!226208 (not res!111376)) b!226216))

(assert (= (and b!226216 (not res!111374)) b!226221))

(assert (= (and b!226221 (not res!111373)) b!226210))

(assert (= (and b!226214 condMapEmpty!10066) mapIsEmpty!10066))

(assert (= (and b!226214 (not condMapEmpty!10066)) mapNonEmpty!10066))

(assert (= (and mapNonEmpty!10066 ((_ is ValueCellFull!2622) mapValue!10066)) b!226227))

(assert (= (and b!226214 ((_ is ValueCellFull!2622) mapDefault!10066)) b!226213))

(assert (= b!226231 b!226214))

(assert (= start!22014 b!226231))

(declare-fun m!248577 () Bool)

(assert (=> bm!21037 m!248577))

(declare-fun m!248579 () Bool)

(assert (=> b!226223 m!248579))

(declare-fun m!248581 () Bool)

(assert (=> b!226211 m!248581))

(declare-fun m!248583 () Bool)

(assert (=> mapNonEmpty!10066 m!248583))

(declare-fun m!248585 () Bool)

(assert (=> b!226210 m!248585))

(declare-fun m!248587 () Bool)

(assert (=> b!226220 m!248587))

(assert (=> b!226220 m!248577))

(declare-fun m!248589 () Bool)

(assert (=> b!226220 m!248589))

(declare-fun m!248591 () Bool)

(assert (=> b!226220 m!248591))

(declare-fun m!248593 () Bool)

(assert (=> b!226220 m!248593))

(declare-fun m!248595 () Bool)

(assert (=> b!226220 m!248595))

(declare-fun m!248597 () Bool)

(assert (=> b!226220 m!248597))

(declare-fun m!248599 () Bool)

(assert (=> b!226220 m!248599))

(declare-fun m!248601 () Bool)

(assert (=> b!226221 m!248601))

(declare-fun m!248603 () Bool)

(assert (=> b!226215 m!248603))

(declare-fun m!248605 () Bool)

(assert (=> start!22014 m!248605))

(declare-fun m!248607 () Bool)

(assert (=> bm!21036 m!248607))

(declare-fun m!248609 () Bool)

(assert (=> b!226225 m!248609))

(declare-fun m!248611 () Bool)

(assert (=> b!226231 m!248611))

(declare-fun m!248613 () Bool)

(assert (=> b!226231 m!248613))

(declare-fun m!248615 () Bool)

(assert (=> b!226224 m!248615))

(declare-fun m!248617 () Bool)

(assert (=> b!226208 m!248617))

(declare-fun m!248619 () Bool)

(assert (=> b!226209 m!248619))

(declare-fun m!248621 () Bool)

(assert (=> b!226232 m!248621))

(declare-fun m!248623 () Bool)

(assert (=> b!226232 m!248623))

(assert (=> b!226232 m!248623))

(declare-fun m!248625 () Bool)

(assert (=> b!226232 m!248625))

(check-sat (not b!226211) tp_is_empty!5931 (not b!226208) (not b_next!6069) (not b!226210) (not b!226220) (not b!226225) b_and!12985 (not mapNonEmpty!10066) (not b!226232) (not bm!21037) (not b!226209) (not b!226231) (not b!226215) (not b!226221) (not start!22014) (not bm!21036))
(check-sat b_and!12985 (not b_next!6069))
