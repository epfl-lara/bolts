; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22116 () Bool)

(assert start!22116)

(declare-fun b!229760 () Bool)

(declare-fun b_free!6171 () Bool)

(declare-fun b_next!6171 () Bool)

(assert (=> b!229760 (= b_free!6171 (not b_next!6171))))

(declare-fun tp!21655 () Bool)

(declare-fun b_and!13087 () Bool)

(assert (=> b!229760 (= tp!21655 b_and!13087)))

(declare-fun b!229756 () Bool)

(declare-fun e!149081 () Bool)

(declare-fun e!149076 () Bool)

(assert (=> b!229756 (= e!149081 e!149076)))

(declare-fun res!113076 () Bool)

(assert (=> b!229756 (=> (not res!113076) (not e!149076))))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!7691 0))(
  ( (V!7692 (val!3061 Int)) )
))
(declare-datatypes ((ValueCell!2673 0))(
  ( (ValueCellFull!2673 (v!5077 V!7691)) (EmptyCell!2673) )
))
(declare-datatypes ((array!11308 0))(
  ( (array!11309 (arr!5373 (Array (_ BitVec 32) ValueCell!2673)) (size!5706 (_ BitVec 32))) )
))
(declare-datatypes ((array!11310 0))(
  ( (array!11311 (arr!5374 (Array (_ BitVec 32) (_ BitVec 64))) (size!5707 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3246 0))(
  ( (LongMapFixedSize!3247 (defaultEntry!4282 Int) (mask!10166 (_ BitVec 32)) (extraKeys!4019 (_ BitVec 32)) (zeroValue!4123 V!7691) (minValue!4123 V!7691) (_size!1672 (_ BitVec 32)) (_keys!6336 array!11310) (_values!4265 array!11308) (_vacant!1672 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3246)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!229756 (= res!113076 (inRange!0 index!297 (mask!10166 thiss!1504)))))

(declare-datatypes ((Unit!7013 0))(
  ( (Unit!7014) )
))
(declare-fun lt!115613 () Unit!7013)

(declare-fun e!149089 () Unit!7013)

(assert (=> b!229756 (= lt!115613 e!149089)))

(declare-fun c!38104 () Bool)

(declare-datatypes ((tuple2!4510 0))(
  ( (tuple2!4511 (_1!2265 (_ BitVec 64)) (_2!2265 V!7691)) )
))
(declare-datatypes ((List!3458 0))(
  ( (Nil!3455) (Cons!3454 (h!4102 tuple2!4510) (t!8425 List!3458)) )
))
(declare-datatypes ((ListLongMap!3437 0))(
  ( (ListLongMap!3438 (toList!1734 List!3458)) )
))
(declare-fun lt!115620 () ListLongMap!3437)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun contains!1602 (ListLongMap!3437 (_ BitVec 64)) Bool)

(assert (=> b!229756 (= c!38104 (contains!1602 lt!115620 key!932))))

(declare-fun getCurrentListMap!1257 (array!11310 array!11308 (_ BitVec 32) (_ BitVec 32) V!7691 V!7691 (_ BitVec 32) Int) ListLongMap!3437)

(assert (=> b!229756 (= lt!115620 (getCurrentListMap!1257 (_keys!6336 thiss!1504) (_values!4265 thiss!1504) (mask!10166 thiss!1504) (extraKeys!4019 thiss!1504) (zeroValue!4123 thiss!1504) (minValue!4123 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4282 thiss!1504)))))

(declare-fun b!229757 () Bool)

(declare-fun e!149086 () Bool)

(declare-fun e!149077 () Bool)

(assert (=> b!229757 (= e!149086 e!149077)))

(declare-fun res!113080 () Bool)

(declare-fun call!21346 () Bool)

(assert (=> b!229757 (= res!113080 call!21346)))

(assert (=> b!229757 (=> (not res!113080) (not e!149077))))

(declare-fun b!229758 () Bool)

(declare-fun c!38103 () Bool)

(declare-datatypes ((SeekEntryResult!937 0))(
  ( (MissingZero!937 (index!5918 (_ BitVec 32))) (Found!937 (index!5919 (_ BitVec 32))) (Intermediate!937 (undefined!1749 Bool) (index!5920 (_ BitVec 32)) (x!23413 (_ BitVec 32))) (Undefined!937) (MissingVacant!937 (index!5921 (_ BitVec 32))) )
))
(declare-fun lt!115622 () SeekEntryResult!937)

(get-info :version)

(assert (=> b!229758 (= c!38103 ((_ is MissingVacant!937) lt!115622))))

(declare-fun e!149083 () Bool)

(assert (=> b!229758 (= e!149083 e!149086)))

(declare-fun b!229759 () Bool)

(declare-fun lt!115623 () Unit!7013)

(assert (=> b!229759 (= e!149089 lt!115623)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!299 (array!11310 array!11308 (_ BitVec 32) (_ BitVec 32) V!7691 V!7691 (_ BitVec 64) Int) Unit!7013)

(assert (=> b!229759 (= lt!115623 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!299 (_keys!6336 thiss!1504) (_values!4265 thiss!1504) (mask!10166 thiss!1504) (extraKeys!4019 thiss!1504) (zeroValue!4123 thiss!1504) (minValue!4123 thiss!1504) key!932 (defaultEntry!4282 thiss!1504)))))

(declare-fun c!38102 () Bool)

(assert (=> b!229759 (= c!38102 ((_ is MissingZero!937) lt!115622))))

(assert (=> b!229759 e!149083))

(declare-fun mapIsEmpty!10219 () Bool)

(declare-fun mapRes!10219 () Bool)

(assert (=> mapIsEmpty!10219 mapRes!10219))

(declare-fun tp_is_empty!6033 () Bool)

(declare-fun e!149085 () Bool)

(declare-fun e!149079 () Bool)

(declare-fun array_inv!3535 (array!11310) Bool)

(declare-fun array_inv!3536 (array!11308) Bool)

(assert (=> b!229760 (= e!149085 (and tp!21655 tp_is_empty!6033 (array_inv!3535 (_keys!6336 thiss!1504)) (array_inv!3536 (_values!4265 thiss!1504)) e!149079))))

(declare-fun b!229761 () Bool)

(declare-fun res!113082 () Bool)

(declare-fun e!149088 () Bool)

(assert (=> b!229761 (=> (not res!113082) (not e!149088))))

(assert (=> b!229761 (= res!113082 (= (select (arr!5374 (_keys!6336 thiss!1504)) (index!5918 lt!115622)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!229762 () Bool)

(declare-fun res!113083 () Bool)

(assert (=> b!229762 (= res!113083 (= (select (arr!5374 (_keys!6336 thiss!1504)) (index!5921 lt!115622)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!229762 (=> (not res!113083) (not e!149077))))

(declare-fun b!229763 () Bool)

(declare-fun e!149084 () Bool)

(assert (=> b!229763 (= e!149084 tp_is_empty!6033)))

(declare-fun b!229764 () Bool)

(declare-fun e!149087 () Unit!7013)

(declare-fun Unit!7015 () Unit!7013)

(assert (=> b!229764 (= e!149087 Unit!7015)))

(declare-fun lt!115619 () Unit!7013)

(declare-fun lemmaArrayContainsKeyThenInListMap!118 (array!11310 array!11308 (_ BitVec 32) (_ BitVec 32) V!7691 V!7691 (_ BitVec 64) (_ BitVec 32) Int) Unit!7013)

(assert (=> b!229764 (= lt!115619 (lemmaArrayContainsKeyThenInListMap!118 (_keys!6336 thiss!1504) (_values!4265 thiss!1504) (mask!10166 thiss!1504) (extraKeys!4019 thiss!1504) (zeroValue!4123 thiss!1504) (minValue!4123 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4282 thiss!1504)))))

(assert (=> b!229764 false))

(declare-fun b!229765 () Bool)

(declare-fun e!149082 () Bool)

(assert (=> b!229765 (= e!149082 e!149081)))

(declare-fun res!113079 () Bool)

(assert (=> b!229765 (=> (not res!113079) (not e!149081))))

(assert (=> b!229765 (= res!113079 (or (= lt!115622 (MissingZero!937 index!297)) (= lt!115622 (MissingVacant!937 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11310 (_ BitVec 32)) SeekEntryResult!937)

(assert (=> b!229765 (= lt!115622 (seekEntryOrOpen!0 key!932 (_keys!6336 thiss!1504) (mask!10166 thiss!1504)))))

(declare-fun bm!21342 () Bool)

(assert (=> bm!21342 (= call!21346 (inRange!0 (ite c!38102 (index!5918 lt!115622) (index!5921 lt!115622)) (mask!10166 thiss!1504)))))

(declare-fun b!229766 () Bool)

(declare-fun e!149078 () Bool)

(assert (=> b!229766 (= e!149079 (and e!149078 mapRes!10219))))

(declare-fun condMapEmpty!10219 () Bool)

(declare-fun mapDefault!10219 () ValueCell!2673)

(assert (=> b!229766 (= condMapEmpty!10219 (= (arr!5373 (_values!4265 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2673)) mapDefault!10219)))))

(declare-fun b!229767 () Bool)

(declare-fun Unit!7016 () Unit!7013)

(assert (=> b!229767 (= e!149087 Unit!7016)))

(declare-fun b!229768 () Bool)

(declare-fun call!21345 () Bool)

(assert (=> b!229768 (= e!149088 (not call!21345))))

(declare-fun bm!21343 () Bool)

(declare-fun arrayContainsKey!0 (array!11310 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21343 (= call!21345 (arrayContainsKey!0 (_keys!6336 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229769 () Bool)

(assert (=> b!229769 (= e!149078 tp_is_empty!6033)))

(declare-fun b!229770 () Bool)

(assert (=> b!229770 (= e!149076 (not true))))

(declare-fun v!346 () V!7691)

(declare-fun lt!115616 () array!11310)

(declare-fun +!593 (ListLongMap!3437 tuple2!4510) ListLongMap!3437)

(assert (=> b!229770 (= (+!593 lt!115620 (tuple2!4511 key!932 v!346)) (getCurrentListMap!1257 lt!115616 (array!11309 (store (arr!5373 (_values!4265 thiss!1504)) index!297 (ValueCellFull!2673 v!346)) (size!5706 (_values!4265 thiss!1504))) (mask!10166 thiss!1504) (extraKeys!4019 thiss!1504) (zeroValue!4123 thiss!1504) (minValue!4123 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4282 thiss!1504)))))

(declare-fun lt!115618 () Unit!7013)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!52 (array!11310 array!11308 (_ BitVec 32) (_ BitVec 32) V!7691 V!7691 (_ BitVec 32) (_ BitVec 64) V!7691 Int) Unit!7013)

(assert (=> b!229770 (= lt!115618 (lemmaAddValidKeyToArrayThenAddPairToListMap!52 (_keys!6336 thiss!1504) (_values!4265 thiss!1504) (mask!10166 thiss!1504) (extraKeys!4019 thiss!1504) (zeroValue!4123 thiss!1504) (minValue!4123 thiss!1504) index!297 key!932 v!346 (defaultEntry!4282 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11310 (_ BitVec 32)) Bool)

(assert (=> b!229770 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115616 (mask!10166 thiss!1504))))

(declare-fun lt!115614 () Unit!7013)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11310 (_ BitVec 32) (_ BitVec 32)) Unit!7013)

(assert (=> b!229770 (= lt!115614 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6336 thiss!1504) index!297 (mask!10166 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11310 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!229770 (= (arrayCountValidKeys!0 lt!115616 #b00000000000000000000000000000000 (size!5707 (_keys!6336 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6336 thiss!1504) #b00000000000000000000000000000000 (size!5707 (_keys!6336 thiss!1504)))))))

(declare-fun lt!115617 () Unit!7013)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11310 (_ BitVec 32) (_ BitVec 64)) Unit!7013)

(assert (=> b!229770 (= lt!115617 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6336 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3459 0))(
  ( (Nil!3456) (Cons!3455 (h!4103 (_ BitVec 64)) (t!8426 List!3459)) )
))
(declare-fun arrayNoDuplicates!0 (array!11310 (_ BitVec 32) List!3459) Bool)

(assert (=> b!229770 (arrayNoDuplicates!0 lt!115616 #b00000000000000000000000000000000 Nil!3456)))

(assert (=> b!229770 (= lt!115616 (array!11311 (store (arr!5374 (_keys!6336 thiss!1504)) index!297 key!932) (size!5707 (_keys!6336 thiss!1504))))))

(declare-fun lt!115621 () Unit!7013)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11310 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3459) Unit!7013)

(assert (=> b!229770 (= lt!115621 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6336 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3456))))

(declare-fun lt!115615 () Unit!7013)

(assert (=> b!229770 (= lt!115615 e!149087)))

(declare-fun c!38105 () Bool)

(assert (=> b!229770 (= c!38105 (arrayContainsKey!0 (_keys!6336 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!229771 () Bool)

(declare-fun res!113078 () Bool)

(assert (=> b!229771 (=> (not res!113078) (not e!149088))))

(assert (=> b!229771 (= res!113078 call!21346)))

(assert (=> b!229771 (= e!149083 e!149088)))

(declare-fun b!229772 () Bool)

(assert (=> b!229772 (= e!149086 ((_ is Undefined!937) lt!115622))))

(declare-fun b!229773 () Bool)

(declare-fun res!113081 () Bool)

(assert (=> b!229773 (=> (not res!113081) (not e!149082))))

(assert (=> b!229773 (= res!113081 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun res!113077 () Bool)

(assert (=> start!22116 (=> (not res!113077) (not e!149082))))

(declare-fun valid!1287 (LongMapFixedSize!3246) Bool)

(assert (=> start!22116 (= res!113077 (valid!1287 thiss!1504))))

(assert (=> start!22116 e!149082))

(assert (=> start!22116 e!149085))

(assert (=> start!22116 true))

(assert (=> start!22116 tp_is_empty!6033))

(declare-fun mapNonEmpty!10219 () Bool)

(declare-fun tp!21654 () Bool)

(assert (=> mapNonEmpty!10219 (= mapRes!10219 (and tp!21654 e!149084))))

(declare-fun mapKey!10219 () (_ BitVec 32))

(declare-fun mapRest!10219 () (Array (_ BitVec 32) ValueCell!2673))

(declare-fun mapValue!10219 () ValueCell!2673)

(assert (=> mapNonEmpty!10219 (= (arr!5373 (_values!4265 thiss!1504)) (store mapRest!10219 mapKey!10219 mapValue!10219))))

(declare-fun b!229774 () Bool)

(assert (=> b!229774 (= e!149077 (not call!21345))))

(declare-fun b!229775 () Bool)

(declare-fun Unit!7017 () Unit!7013)

(assert (=> b!229775 (= e!149089 Unit!7017)))

(declare-fun lt!115612 () Unit!7013)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!285 (array!11310 array!11308 (_ BitVec 32) (_ BitVec 32) V!7691 V!7691 (_ BitVec 64) Int) Unit!7013)

(assert (=> b!229775 (= lt!115612 (lemmaInListMapThenSeekEntryOrOpenFindsIt!285 (_keys!6336 thiss!1504) (_values!4265 thiss!1504) (mask!10166 thiss!1504) (extraKeys!4019 thiss!1504) (zeroValue!4123 thiss!1504) (minValue!4123 thiss!1504) key!932 (defaultEntry!4282 thiss!1504)))))

(assert (=> b!229775 false))

(assert (= (and start!22116 res!113077) b!229773))

(assert (= (and b!229773 res!113081) b!229765))

(assert (= (and b!229765 res!113079) b!229756))

(assert (= (and b!229756 c!38104) b!229775))

(assert (= (and b!229756 (not c!38104)) b!229759))

(assert (= (and b!229759 c!38102) b!229771))

(assert (= (and b!229759 (not c!38102)) b!229758))

(assert (= (and b!229771 res!113078) b!229761))

(assert (= (and b!229761 res!113082) b!229768))

(assert (= (and b!229758 c!38103) b!229757))

(assert (= (and b!229758 (not c!38103)) b!229772))

(assert (= (and b!229757 res!113080) b!229762))

(assert (= (and b!229762 res!113083) b!229774))

(assert (= (or b!229771 b!229757) bm!21342))

(assert (= (or b!229768 b!229774) bm!21343))

(assert (= (and b!229756 res!113076) b!229770))

(assert (= (and b!229770 c!38105) b!229764))

(assert (= (and b!229770 (not c!38105)) b!229767))

(assert (= (and b!229766 condMapEmpty!10219) mapIsEmpty!10219))

(assert (= (and b!229766 (not condMapEmpty!10219)) mapNonEmpty!10219))

(assert (= (and mapNonEmpty!10219 ((_ is ValueCellFull!2673) mapValue!10219)) b!229763))

(assert (= (and b!229766 ((_ is ValueCellFull!2673) mapDefault!10219)) b!229769))

(assert (= b!229760 b!229766))

(assert (= start!22116 b!229760))

(declare-fun m!251215 () Bool)

(assert (=> bm!21343 m!251215))

(declare-fun m!251217 () Bool)

(assert (=> b!229760 m!251217))

(declare-fun m!251219 () Bool)

(assert (=> b!229760 m!251219))

(declare-fun m!251221 () Bool)

(assert (=> b!229756 m!251221))

(declare-fun m!251223 () Bool)

(assert (=> b!229756 m!251223))

(declare-fun m!251225 () Bool)

(assert (=> b!229756 m!251225))

(assert (=> b!229770 m!251215))

(declare-fun m!251227 () Bool)

(assert (=> b!229770 m!251227))

(declare-fun m!251229 () Bool)

(assert (=> b!229770 m!251229))

(declare-fun m!251231 () Bool)

(assert (=> b!229770 m!251231))

(declare-fun m!251233 () Bool)

(assert (=> b!229770 m!251233))

(declare-fun m!251235 () Bool)

(assert (=> b!229770 m!251235))

(declare-fun m!251237 () Bool)

(assert (=> b!229770 m!251237))

(declare-fun m!251239 () Bool)

(assert (=> b!229770 m!251239))

(declare-fun m!251241 () Bool)

(assert (=> b!229770 m!251241))

(declare-fun m!251243 () Bool)

(assert (=> b!229770 m!251243))

(declare-fun m!251245 () Bool)

(assert (=> b!229770 m!251245))

(declare-fun m!251247 () Bool)

(assert (=> b!229770 m!251247))

(declare-fun m!251249 () Bool)

(assert (=> b!229770 m!251249))

(declare-fun m!251251 () Bool)

(assert (=> b!229775 m!251251))

(declare-fun m!251253 () Bool)

(assert (=> mapNonEmpty!10219 m!251253))

(declare-fun m!251255 () Bool)

(assert (=> b!229762 m!251255))

(declare-fun m!251257 () Bool)

(assert (=> b!229761 m!251257))

(declare-fun m!251259 () Bool)

(assert (=> b!229764 m!251259))

(declare-fun m!251261 () Bool)

(assert (=> start!22116 m!251261))

(declare-fun m!251263 () Bool)

(assert (=> b!229759 m!251263))

(declare-fun m!251265 () Bool)

(assert (=> b!229765 m!251265))

(declare-fun m!251267 () Bool)

(assert (=> bm!21342 m!251267))

(check-sat (not b_next!6171) (not mapNonEmpty!10219) (not b!229770) (not bm!21343) (not b!229759) tp_is_empty!6033 (not b!229756) (not start!22116) (not b!229765) (not b!229760) (not b!229775) (not bm!21342) b_and!13087 (not b!229764))
(check-sat b_and!13087 (not b_next!6171))
