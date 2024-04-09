; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22206 () Bool)

(assert start!22206)

(declare-fun b!232456 () Bool)

(declare-fun b_free!6261 () Bool)

(declare-fun b_next!6261 () Bool)

(assert (=> b!232456 (= b_free!6261 (not b_next!6261))))

(declare-fun tp!21924 () Bool)

(declare-fun b_and!13177 () Bool)

(assert (=> b!232456 (= tp!21924 b_and!13177)))

(declare-fun e!150979 () Bool)

(declare-datatypes ((V!7811 0))(
  ( (V!7812 (val!3106 Int)) )
))
(declare-datatypes ((ValueCell!2718 0))(
  ( (ValueCellFull!2718 (v!5122 V!7811)) (EmptyCell!2718) )
))
(declare-datatypes ((array!11488 0))(
  ( (array!11489 (arr!5463 (Array (_ BitVec 32) ValueCell!2718)) (size!5796 (_ BitVec 32))) )
))
(declare-datatypes ((array!11490 0))(
  ( (array!11491 (arr!5464 (Array (_ BitVec 32) (_ BitVec 64))) (size!5797 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3336 0))(
  ( (LongMapFixedSize!3337 (defaultEntry!4327 Int) (mask!10241 (_ BitVec 32)) (extraKeys!4064 (_ BitVec 32)) (zeroValue!4168 V!7811) (minValue!4168 V!7811) (_size!1717 (_ BitVec 32)) (_keys!6381 array!11490) (_values!4310 array!11488) (_vacant!1717 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3336)

(declare-fun tp_is_empty!6123 () Bool)

(declare-fun e!150974 () Bool)

(declare-fun array_inv!3591 (array!11490) Bool)

(declare-fun array_inv!3592 (array!11488) Bool)

(assert (=> b!232456 (= e!150979 (and tp!21924 tp_is_empty!6123 (array_inv!3591 (_keys!6381 thiss!1504)) (array_inv!3592 (_values!4310 thiss!1504)) e!150974))))

(declare-fun b!232457 () Bool)

(declare-fun e!150978 () Bool)

(assert (=> b!232457 (= e!150978 tp_is_empty!6123)))

(declare-fun bm!21612 () Bool)

(declare-fun call!21616 () Bool)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!11490 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21612 (= call!21616 (arrayContainsKey!0 (_keys!6381 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232458 () Bool)

(declare-datatypes ((Unit!7178 0))(
  ( (Unit!7179) )
))
(declare-fun e!150966 () Unit!7178)

(declare-fun lt!117472 () Unit!7178)

(assert (=> b!232458 (= e!150966 lt!117472)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!325 (array!11490 array!11488 (_ BitVec 32) (_ BitVec 32) V!7811 V!7811 (_ BitVec 64) Int) Unit!7178)

(assert (=> b!232458 (= lt!117472 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!325 (_keys!6381 thiss!1504) (_values!4310 thiss!1504) (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) key!932 (defaultEntry!4327 thiss!1504)))))

(declare-fun c!38642 () Bool)

(declare-datatypes ((SeekEntryResult!975 0))(
  ( (MissingZero!975 (index!6070 (_ BitVec 32))) (Found!975 (index!6071 (_ BitVec 32))) (Intermediate!975 (undefined!1787 Bool) (index!6072 (_ BitVec 32)) (x!23571 (_ BitVec 32))) (Undefined!975) (MissingVacant!975 (index!6073 (_ BitVec 32))) )
))
(declare-fun lt!117460 () SeekEntryResult!975)

(get-info :version)

(assert (=> b!232458 (= c!38642 ((_ is MissingZero!975) lt!117460))))

(declare-fun e!150969 () Bool)

(assert (=> b!232458 e!150969))

(declare-fun mapNonEmpty!10354 () Bool)

(declare-fun mapRes!10354 () Bool)

(declare-fun tp!21925 () Bool)

(declare-fun e!150972 () Bool)

(assert (=> mapNonEmpty!10354 (= mapRes!10354 (and tp!21925 e!150972))))

(declare-fun mapValue!10354 () ValueCell!2718)

(declare-fun mapKey!10354 () (_ BitVec 32))

(declare-fun mapRest!10354 () (Array (_ BitVec 32) ValueCell!2718))

(assert (=> mapNonEmpty!10354 (= (arr!5463 (_values!4310 thiss!1504)) (store mapRest!10354 mapKey!10354 mapValue!10354))))

(declare-fun b!232459 () Bool)

(declare-fun e!150973 () Bool)

(assert (=> b!232459 (= e!150973 (not call!21616))))

(declare-fun b!232460 () Bool)

(declare-fun Unit!7180 () Unit!7178)

(assert (=> b!232460 (= e!150966 Unit!7180)))

(declare-fun lt!117461 () Unit!7178)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!311 (array!11490 array!11488 (_ BitVec 32) (_ BitVec 32) V!7811 V!7811 (_ BitVec 64) Int) Unit!7178)

(assert (=> b!232460 (= lt!117461 (lemmaInListMapThenSeekEntryOrOpenFindsIt!311 (_keys!6381 thiss!1504) (_values!4310 thiss!1504) (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) key!932 (defaultEntry!4327 thiss!1504)))))

(assert (=> b!232460 false))

(declare-fun res!114160 () Bool)

(declare-fun e!150970 () Bool)

(assert (=> start!22206 (=> (not res!114160) (not e!150970))))

(declare-fun valid!1312 (LongMapFixedSize!3336) Bool)

(assert (=> start!22206 (= res!114160 (valid!1312 thiss!1504))))

(assert (=> start!22206 e!150970))

(assert (=> start!22206 e!150979))

(assert (=> start!22206 true))

(assert (=> start!22206 tp_is_empty!6123))

(declare-fun b!232461 () Bool)

(declare-fun res!114156 () Bool)

(assert (=> b!232461 (= res!114156 (= (select (arr!5464 (_keys!6381 thiss!1504)) (index!6073 lt!117460)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!232461 (=> (not res!114156) (not e!150973))))

(declare-fun b!232462 () Bool)

(declare-fun res!114159 () Bool)

(assert (=> b!232462 (=> (not res!114159) (not e!150970))))

(assert (=> b!232462 (= res!114159 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232463 () Bool)

(assert (=> b!232463 (= e!150974 (and e!150978 mapRes!10354))))

(declare-fun condMapEmpty!10354 () Bool)

(declare-fun mapDefault!10354 () ValueCell!2718)

(assert (=> b!232463 (= condMapEmpty!10354 (= (arr!5463 (_values!4310 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2718)) mapDefault!10354)))))

(declare-fun b!232464 () Bool)

(declare-fun e!150967 () Unit!7178)

(declare-fun Unit!7181 () Unit!7178)

(assert (=> b!232464 (= e!150967 Unit!7181)))

(declare-fun lt!117469 () Unit!7178)

(declare-fun lemmaArrayContainsKeyThenInListMap!145 (array!11490 array!11488 (_ BitVec 32) (_ BitVec 32) V!7811 V!7811 (_ BitVec 64) (_ BitVec 32) Int) Unit!7178)

(assert (=> b!232464 (= lt!117469 (lemmaArrayContainsKeyThenInListMap!145 (_keys!6381 thiss!1504) (_values!4310 thiss!1504) (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4327 thiss!1504)))))

(assert (=> b!232464 false))

(declare-fun mapIsEmpty!10354 () Bool)

(assert (=> mapIsEmpty!10354 mapRes!10354))

(declare-fun b!232465 () Bool)

(declare-fun c!38643 () Bool)

(assert (=> b!232465 (= c!38643 ((_ is MissingVacant!975) lt!117460))))

(declare-fun e!150976 () Bool)

(assert (=> b!232465 (= e!150969 e!150976)))

(declare-fun bm!21613 () Bool)

(declare-fun call!21615 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21613 (= call!21615 (inRange!0 (ite c!38642 (index!6070 lt!117460) (index!6073 lt!117460)) (mask!10241 thiss!1504)))))

(declare-fun b!232466 () Bool)

(declare-fun e!150971 () Bool)

(assert (=> b!232466 (= e!150970 e!150971)))

(declare-fun res!114163 () Bool)

(assert (=> b!232466 (=> (not res!114163) (not e!150971))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!232466 (= res!114163 (or (= lt!117460 (MissingZero!975 index!297)) (= lt!117460 (MissingVacant!975 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11490 (_ BitVec 32)) SeekEntryResult!975)

(assert (=> b!232466 (= lt!117460 (seekEntryOrOpen!0 key!932 (_keys!6381 thiss!1504) (mask!10241 thiss!1504)))))

(declare-fun b!232467 () Bool)

(declare-fun res!114161 () Bool)

(declare-fun e!150975 () Bool)

(assert (=> b!232467 (=> (not res!114161) (not e!150975))))

(assert (=> b!232467 (= res!114161 (= (select (arr!5464 (_keys!6381 thiss!1504)) (index!6070 lt!117460)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!232468 () Bool)

(declare-fun e!150968 () Bool)

(assert (=> b!232468 (= e!150971 e!150968)))

(declare-fun res!114157 () Bool)

(assert (=> b!232468 (=> (not res!114157) (not e!150968))))

(assert (=> b!232468 (= res!114157 (inRange!0 index!297 (mask!10241 thiss!1504)))))

(declare-fun lt!117462 () Unit!7178)

(assert (=> b!232468 (= lt!117462 e!150966)))

(declare-fun c!38645 () Bool)

(declare-datatypes ((tuple2!4580 0))(
  ( (tuple2!4581 (_1!2300 (_ BitVec 64)) (_2!2300 V!7811)) )
))
(declare-datatypes ((List!3521 0))(
  ( (Nil!3518) (Cons!3517 (h!4165 tuple2!4580) (t!8488 List!3521)) )
))
(declare-datatypes ((ListLongMap!3507 0))(
  ( (ListLongMap!3508 (toList!1769 List!3521)) )
))
(declare-fun lt!117459 () ListLongMap!3507)

(declare-fun contains!1631 (ListLongMap!3507 (_ BitVec 64)) Bool)

(assert (=> b!232468 (= c!38645 (contains!1631 lt!117459 key!932))))

(declare-fun getCurrentListMap!1292 (array!11490 array!11488 (_ BitVec 32) (_ BitVec 32) V!7811 V!7811 (_ BitVec 32) Int) ListLongMap!3507)

(assert (=> b!232468 (= lt!117459 (getCurrentListMap!1292 (_keys!6381 thiss!1504) (_values!4310 thiss!1504) (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4327 thiss!1504)))))

(declare-fun b!232469 () Bool)

(assert (=> b!232469 (= e!150976 ((_ is Undefined!975) lt!117460))))

(declare-fun b!232470 () Bool)

(declare-fun Unit!7182 () Unit!7178)

(assert (=> b!232470 (= e!150967 Unit!7182)))

(declare-fun b!232471 () Bool)

(declare-fun res!114158 () Bool)

(assert (=> b!232471 (=> (not res!114158) (not e!150975))))

(assert (=> b!232471 (= res!114158 call!21615)))

(assert (=> b!232471 (= e!150969 e!150975)))

(declare-fun b!232472 () Bool)

(assert (=> b!232472 (= e!150968 (not true))))

(declare-fun lt!117474 () array!11488)

(declare-fun lt!117473 () Bool)

(declare-fun lt!117466 () array!11490)

(assert (=> b!232472 (= lt!117473 (valid!1312 (LongMapFixedSize!3337 (defaultEntry!4327 thiss!1504) (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) (bvadd #b00000000000000000000000000000001 (_size!1717 thiss!1504)) lt!117466 lt!117474 (_vacant!1717 thiss!1504))))))

(declare-fun lt!117457 () ListLongMap!3507)

(assert (=> b!232472 (contains!1631 lt!117457 key!932)))

(declare-fun lt!117468 () Unit!7178)

(declare-fun lemmaValidKeyInArrayIsInListMap!145 (array!11490 array!11488 (_ BitVec 32) (_ BitVec 32) V!7811 V!7811 (_ BitVec 32) Int) Unit!7178)

(assert (=> b!232472 (= lt!117468 (lemmaValidKeyInArrayIsInListMap!145 lt!117466 lt!117474 (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) index!297 (defaultEntry!4327 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11490 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232472 (= (arrayCountValidKeys!0 lt!117466 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117471 () Unit!7178)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11490 (_ BitVec 32)) Unit!7178)

(assert (=> b!232472 (= lt!117471 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117466 index!297))))

(assert (=> b!232472 (arrayContainsKey!0 lt!117466 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117456 () Unit!7178)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11490 (_ BitVec 64) (_ BitVec 32)) Unit!7178)

(assert (=> b!232472 (= lt!117456 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117466 key!932 index!297))))

(declare-fun lt!117465 () ListLongMap!3507)

(assert (=> b!232472 (= lt!117465 lt!117457)))

(assert (=> b!232472 (= lt!117457 (getCurrentListMap!1292 lt!117466 lt!117474 (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4327 thiss!1504)))))

(declare-fun v!346 () V!7811)

(declare-fun +!621 (ListLongMap!3507 tuple2!4580) ListLongMap!3507)

(assert (=> b!232472 (= lt!117465 (+!621 lt!117459 (tuple2!4581 key!932 v!346)))))

(assert (=> b!232472 (= lt!117474 (array!11489 (store (arr!5463 (_values!4310 thiss!1504)) index!297 (ValueCellFull!2718 v!346)) (size!5796 (_values!4310 thiss!1504))))))

(declare-fun lt!117464 () Unit!7178)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!80 (array!11490 array!11488 (_ BitVec 32) (_ BitVec 32) V!7811 V!7811 (_ BitVec 32) (_ BitVec 64) V!7811 Int) Unit!7178)

(assert (=> b!232472 (= lt!117464 (lemmaAddValidKeyToArrayThenAddPairToListMap!80 (_keys!6381 thiss!1504) (_values!4310 thiss!1504) (mask!10241 thiss!1504) (extraKeys!4064 thiss!1504) (zeroValue!4168 thiss!1504) (minValue!4168 thiss!1504) index!297 key!932 v!346 (defaultEntry!4327 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11490 (_ BitVec 32)) Bool)

(assert (=> b!232472 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117466 (mask!10241 thiss!1504))))

(declare-fun lt!117463 () Unit!7178)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11490 (_ BitVec 32) (_ BitVec 32)) Unit!7178)

(assert (=> b!232472 (= lt!117463 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6381 thiss!1504) index!297 (mask!10241 thiss!1504)))))

(assert (=> b!232472 (= (arrayCountValidKeys!0 lt!117466 #b00000000000000000000000000000000 (size!5797 (_keys!6381 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6381 thiss!1504) #b00000000000000000000000000000000 (size!5797 (_keys!6381 thiss!1504)))))))

(declare-fun lt!117458 () Unit!7178)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11490 (_ BitVec 32) (_ BitVec 64)) Unit!7178)

(assert (=> b!232472 (= lt!117458 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6381 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3522 0))(
  ( (Nil!3519) (Cons!3518 (h!4166 (_ BitVec 64)) (t!8489 List!3522)) )
))
(declare-fun arrayNoDuplicates!0 (array!11490 (_ BitVec 32) List!3522) Bool)

(assert (=> b!232472 (arrayNoDuplicates!0 lt!117466 #b00000000000000000000000000000000 Nil!3519)))

(assert (=> b!232472 (= lt!117466 (array!11491 (store (arr!5464 (_keys!6381 thiss!1504)) index!297 key!932) (size!5797 (_keys!6381 thiss!1504))))))

(declare-fun lt!117467 () Unit!7178)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11490 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3522) Unit!7178)

(assert (=> b!232472 (= lt!117467 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6381 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3519))))

(declare-fun lt!117470 () Unit!7178)

(assert (=> b!232472 (= lt!117470 e!150967)))

(declare-fun c!38644 () Bool)

(assert (=> b!232472 (= c!38644 (arrayContainsKey!0 (_keys!6381 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232473 () Bool)

(assert (=> b!232473 (= e!150975 (not call!21616))))

(declare-fun b!232474 () Bool)

(assert (=> b!232474 (= e!150976 e!150973)))

(declare-fun res!114162 () Bool)

(assert (=> b!232474 (= res!114162 call!21615)))

(assert (=> b!232474 (=> (not res!114162) (not e!150973))))

(declare-fun b!232475 () Bool)

(assert (=> b!232475 (= e!150972 tp_is_empty!6123)))

(assert (= (and start!22206 res!114160) b!232462))

(assert (= (and b!232462 res!114159) b!232466))

(assert (= (and b!232466 res!114163) b!232468))

(assert (= (and b!232468 c!38645) b!232460))

(assert (= (and b!232468 (not c!38645)) b!232458))

(assert (= (and b!232458 c!38642) b!232471))

(assert (= (and b!232458 (not c!38642)) b!232465))

(assert (= (and b!232471 res!114158) b!232467))

(assert (= (and b!232467 res!114161) b!232473))

(assert (= (and b!232465 c!38643) b!232474))

(assert (= (and b!232465 (not c!38643)) b!232469))

(assert (= (and b!232474 res!114162) b!232461))

(assert (= (and b!232461 res!114156) b!232459))

(assert (= (or b!232471 b!232474) bm!21613))

(assert (= (or b!232473 b!232459) bm!21612))

(assert (= (and b!232468 res!114157) b!232472))

(assert (= (and b!232472 c!38644) b!232464))

(assert (= (and b!232472 (not c!38644)) b!232470))

(assert (= (and b!232463 condMapEmpty!10354) mapIsEmpty!10354))

(assert (= (and b!232463 (not condMapEmpty!10354)) mapNonEmpty!10354))

(assert (= (and mapNonEmpty!10354 ((_ is ValueCellFull!2718) mapValue!10354)) b!232475))

(assert (= (and b!232463 ((_ is ValueCellFull!2718) mapDefault!10354)) b!232457))

(assert (= b!232456 b!232463))

(assert (= start!22206 b!232456))

(declare-fun m!253911 () Bool)

(assert (=> b!232461 m!253911))

(declare-fun m!253913 () Bool)

(assert (=> b!232467 m!253913))

(declare-fun m!253915 () Bool)

(assert (=> b!232472 m!253915))

(declare-fun m!253917 () Bool)

(assert (=> b!232472 m!253917))

(declare-fun m!253919 () Bool)

(assert (=> b!232472 m!253919))

(declare-fun m!253921 () Bool)

(assert (=> b!232472 m!253921))

(declare-fun m!253923 () Bool)

(assert (=> b!232472 m!253923))

(declare-fun m!253925 () Bool)

(assert (=> b!232472 m!253925))

(declare-fun m!253927 () Bool)

(assert (=> b!232472 m!253927))

(declare-fun m!253929 () Bool)

(assert (=> b!232472 m!253929))

(declare-fun m!253931 () Bool)

(assert (=> b!232472 m!253931))

(declare-fun m!253933 () Bool)

(assert (=> b!232472 m!253933))

(declare-fun m!253935 () Bool)

(assert (=> b!232472 m!253935))

(declare-fun m!253937 () Bool)

(assert (=> b!232472 m!253937))

(declare-fun m!253939 () Bool)

(assert (=> b!232472 m!253939))

(declare-fun m!253941 () Bool)

(assert (=> b!232472 m!253941))

(declare-fun m!253943 () Bool)

(assert (=> b!232472 m!253943))

(declare-fun m!253945 () Bool)

(assert (=> b!232472 m!253945))

(declare-fun m!253947 () Bool)

(assert (=> b!232472 m!253947))

(declare-fun m!253949 () Bool)

(assert (=> b!232472 m!253949))

(declare-fun m!253951 () Bool)

(assert (=> b!232472 m!253951))

(declare-fun m!253953 () Bool)

(assert (=> b!232472 m!253953))

(declare-fun m!253955 () Bool)

(assert (=> bm!21613 m!253955))

(declare-fun m!253957 () Bool)

(assert (=> start!22206 m!253957))

(declare-fun m!253959 () Bool)

(assert (=> b!232464 m!253959))

(declare-fun m!253961 () Bool)

(assert (=> b!232460 m!253961))

(declare-fun m!253963 () Bool)

(assert (=> mapNonEmpty!10354 m!253963))

(declare-fun m!253965 () Bool)

(assert (=> b!232456 m!253965))

(declare-fun m!253967 () Bool)

(assert (=> b!232456 m!253967))

(declare-fun m!253969 () Bool)

(assert (=> b!232468 m!253969))

(declare-fun m!253971 () Bool)

(assert (=> b!232468 m!253971))

(declare-fun m!253973 () Bool)

(assert (=> b!232468 m!253973))

(assert (=> bm!21612 m!253915))

(declare-fun m!253975 () Bool)

(assert (=> b!232466 m!253975))

(declare-fun m!253977 () Bool)

(assert (=> b!232458 m!253977))

(check-sat (not mapNonEmpty!10354) (not b!232458) (not b!232456) (not b!232460) (not bm!21613) (not start!22206) tp_is_empty!6123 (not b!232464) b_and!13177 (not b!232468) (not b!232472) (not bm!21612) (not b!232466) (not b_next!6261))
(check-sat b_and!13177 (not b_next!6261))
