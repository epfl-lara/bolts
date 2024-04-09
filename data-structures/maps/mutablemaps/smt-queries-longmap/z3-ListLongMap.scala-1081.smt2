; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22182 () Bool)

(assert start!22182)

(declare-fun b!231750 () Bool)

(declare-fun b_free!6237 () Bool)

(declare-fun b_next!6237 () Bool)

(assert (=> b!231750 (= b_free!6237 (not b_next!6237))))

(declare-fun tp!21853 () Bool)

(declare-fun b_and!13153 () Bool)

(assert (=> b!231750 (= tp!21853 b_and!13153)))

(declare-fun b!231736 () Bool)

(declare-fun e!150465 () Bool)

(declare-fun tp_is_empty!6099 () Bool)

(assert (=> b!231736 (= e!150465 tp_is_empty!6099)))

(declare-fun b!231737 () Bool)

(declare-fun e!150466 () Bool)

(declare-datatypes ((SeekEntryResult!966 0))(
  ( (MissingZero!966 (index!6034 (_ BitVec 32))) (Found!966 (index!6035 (_ BitVec 32))) (Intermediate!966 (undefined!1778 Bool) (index!6036 (_ BitVec 32)) (x!23530 (_ BitVec 32))) (Undefined!966) (MissingVacant!966 (index!6037 (_ BitVec 32))) )
))
(declare-fun lt!116931 () SeekEntryResult!966)

(get-info :version)

(assert (=> b!231737 (= e!150466 ((_ is Undefined!966) lt!116931))))

(declare-fun b!231738 () Bool)

(declare-fun res!113869 () Bool)

(declare-fun e!150473 () Bool)

(assert (=> b!231738 (=> (not res!113869) (not e!150473))))

(declare-datatypes ((V!7779 0))(
  ( (V!7780 (val!3094 Int)) )
))
(declare-datatypes ((ValueCell!2706 0))(
  ( (ValueCellFull!2706 (v!5110 V!7779)) (EmptyCell!2706) )
))
(declare-datatypes ((array!11440 0))(
  ( (array!11441 (arr!5439 (Array (_ BitVec 32) ValueCell!2706)) (size!5772 (_ BitVec 32))) )
))
(declare-datatypes ((array!11442 0))(
  ( (array!11443 (arr!5440 (Array (_ BitVec 32) (_ BitVec 64))) (size!5773 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3312 0))(
  ( (LongMapFixedSize!3313 (defaultEntry!4315 Int) (mask!10221 (_ BitVec 32)) (extraKeys!4052 (_ BitVec 32)) (zeroValue!4156 V!7779) (minValue!4156 V!7779) (_size!1705 (_ BitVec 32)) (_keys!6369 array!11442) (_values!4298 array!11440) (_vacant!1705 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3312)

(assert (=> b!231738 (= res!113869 (= (select (arr!5440 (_keys!6369 thiss!1504)) (index!6034 lt!116931)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!231739 () Bool)

(declare-datatypes ((Unit!7135 0))(
  ( (Unit!7136) )
))
(declare-fun e!150475 () Unit!7135)

(declare-fun Unit!7137 () Unit!7135)

(assert (=> b!231739 (= e!150475 Unit!7137)))

(declare-fun lt!116932 () Unit!7135)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!304 (array!11442 array!11440 (_ BitVec 32) (_ BitVec 32) V!7779 V!7779 (_ BitVec 64) Int) Unit!7135)

(assert (=> b!231739 (= lt!116932 (lemmaInListMapThenSeekEntryOrOpenFindsIt!304 (_keys!6369 thiss!1504) (_values!4298 thiss!1504) (mask!10221 thiss!1504) (extraKeys!4052 thiss!1504) (zeroValue!4156 thiss!1504) (minValue!4156 thiss!1504) key!932 (defaultEntry!4315 thiss!1504)))))

(assert (=> b!231739 false))

(declare-fun b!231740 () Bool)

(declare-fun e!150468 () Unit!7135)

(declare-fun Unit!7138 () Unit!7135)

(assert (=> b!231740 (= e!150468 Unit!7138)))

(declare-fun mapNonEmpty!10318 () Bool)

(declare-fun mapRes!10318 () Bool)

(declare-fun tp!21852 () Bool)

(declare-fun e!150467 () Bool)

(assert (=> mapNonEmpty!10318 (= mapRes!10318 (and tp!21852 e!150467))))

(declare-fun mapValue!10318 () ValueCell!2706)

(declare-fun mapRest!10318 () (Array (_ BitVec 32) ValueCell!2706))

(declare-fun mapKey!10318 () (_ BitVec 32))

(assert (=> mapNonEmpty!10318 (= (arr!5439 (_values!4298 thiss!1504)) (store mapRest!10318 mapKey!10318 mapValue!10318))))

(declare-fun res!113872 () Bool)

(declare-fun e!150474 () Bool)

(assert (=> start!22182 (=> (not res!113872) (not e!150474))))

(declare-fun valid!1305 (LongMapFixedSize!3312) Bool)

(assert (=> start!22182 (= res!113872 (valid!1305 thiss!1504))))

(assert (=> start!22182 e!150474))

(declare-fun e!150470 () Bool)

(assert (=> start!22182 e!150470))

(assert (=> start!22182 true))

(assert (=> start!22182 tp_is_empty!6099))

(declare-fun mapIsEmpty!10318 () Bool)

(assert (=> mapIsEmpty!10318 mapRes!10318))

(declare-fun b!231741 () Bool)

(declare-fun call!21544 () Bool)

(assert (=> b!231741 (= e!150473 (not call!21544))))

(declare-fun b!231742 () Bool)

(declare-fun e!150462 () Bool)

(assert (=> b!231742 (= e!150462 (not true))))

(declare-fun lt!116927 () array!11442)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!11442 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!231742 (= (arrayCountValidKeys!0 lt!116927 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!116929 () Unit!7135)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11442 (_ BitVec 32)) Unit!7135)

(assert (=> b!231742 (= lt!116929 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!116927 index!297))))

(declare-fun arrayContainsKey!0 (array!11442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!231742 (arrayContainsKey!0 lt!116927 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!116938 () Unit!7135)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11442 (_ BitVec 64) (_ BitVec 32)) Unit!7135)

(assert (=> b!231742 (= lt!116938 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!116927 key!932 index!297))))

(declare-datatypes ((tuple2!4562 0))(
  ( (tuple2!4563 (_1!2291 (_ BitVec 64)) (_2!2291 V!7779)) )
))
(declare-datatypes ((List!3504 0))(
  ( (Nil!3501) (Cons!3500 (h!4148 tuple2!4562) (t!8471 List!3504)) )
))
(declare-datatypes ((ListLongMap!3489 0))(
  ( (ListLongMap!3490 (toList!1760 List!3504)) )
))
(declare-fun lt!116933 () ListLongMap!3489)

(declare-fun v!346 () V!7779)

(declare-fun +!613 (ListLongMap!3489 tuple2!4562) ListLongMap!3489)

(declare-fun getCurrentListMap!1283 (array!11442 array!11440 (_ BitVec 32) (_ BitVec 32) V!7779 V!7779 (_ BitVec 32) Int) ListLongMap!3489)

(assert (=> b!231742 (= (+!613 lt!116933 (tuple2!4563 key!932 v!346)) (getCurrentListMap!1283 lt!116927 (array!11441 (store (arr!5439 (_values!4298 thiss!1504)) index!297 (ValueCellFull!2706 v!346)) (size!5772 (_values!4298 thiss!1504))) (mask!10221 thiss!1504) (extraKeys!4052 thiss!1504) (zeroValue!4156 thiss!1504) (minValue!4156 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4315 thiss!1504)))))

(declare-fun lt!116930 () Unit!7135)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!72 (array!11442 array!11440 (_ BitVec 32) (_ BitVec 32) V!7779 V!7779 (_ BitVec 32) (_ BitVec 64) V!7779 Int) Unit!7135)

(assert (=> b!231742 (= lt!116930 (lemmaAddValidKeyToArrayThenAddPairToListMap!72 (_keys!6369 thiss!1504) (_values!4298 thiss!1504) (mask!10221 thiss!1504) (extraKeys!4052 thiss!1504) (zeroValue!4156 thiss!1504) (minValue!4156 thiss!1504) index!297 key!932 v!346 (defaultEntry!4315 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11442 (_ BitVec 32)) Bool)

(assert (=> b!231742 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!116927 (mask!10221 thiss!1504))))

(declare-fun lt!116936 () Unit!7135)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11442 (_ BitVec 32) (_ BitVec 32)) Unit!7135)

(assert (=> b!231742 (= lt!116936 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6369 thiss!1504) index!297 (mask!10221 thiss!1504)))))

(assert (=> b!231742 (= (arrayCountValidKeys!0 lt!116927 #b00000000000000000000000000000000 (size!5773 (_keys!6369 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6369 thiss!1504) #b00000000000000000000000000000000 (size!5773 (_keys!6369 thiss!1504)))))))

(declare-fun lt!116939 () Unit!7135)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11442 (_ BitVec 32) (_ BitVec 64)) Unit!7135)

(assert (=> b!231742 (= lt!116939 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6369 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3505 0))(
  ( (Nil!3502) (Cons!3501 (h!4149 (_ BitVec 64)) (t!8472 List!3505)) )
))
(declare-fun arrayNoDuplicates!0 (array!11442 (_ BitVec 32) List!3505) Bool)

(assert (=> b!231742 (arrayNoDuplicates!0 lt!116927 #b00000000000000000000000000000000 Nil!3502)))

(assert (=> b!231742 (= lt!116927 (array!11443 (store (arr!5440 (_keys!6369 thiss!1504)) index!297 key!932) (size!5773 (_keys!6369 thiss!1504))))))

(declare-fun lt!116928 () Unit!7135)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11442 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3505) Unit!7135)

(assert (=> b!231742 (= lt!116928 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6369 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3502))))

(declare-fun lt!116934 () Unit!7135)

(assert (=> b!231742 (= lt!116934 e!150468)))

(declare-fun c!38499 () Bool)

(assert (=> b!231742 (= c!38499 (arrayContainsKey!0 (_keys!6369 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231743 () Bool)

(declare-fun c!38498 () Bool)

(assert (=> b!231743 (= c!38498 ((_ is MissingVacant!966) lt!116931))))

(declare-fun e!150464 () Bool)

(assert (=> b!231743 (= e!150464 e!150466)))

(declare-fun b!231744 () Bool)

(declare-fun e!150472 () Bool)

(assert (=> b!231744 (= e!150474 e!150472)))

(declare-fun res!113868 () Bool)

(assert (=> b!231744 (=> (not res!113868) (not e!150472))))

(assert (=> b!231744 (= res!113868 (or (= lt!116931 (MissingZero!966 index!297)) (= lt!116931 (MissingVacant!966 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11442 (_ BitVec 32)) SeekEntryResult!966)

(assert (=> b!231744 (= lt!116931 (seekEntryOrOpen!0 key!932 (_keys!6369 thiss!1504) (mask!10221 thiss!1504)))))

(declare-fun b!231745 () Bool)

(assert (=> b!231745 (= e!150472 e!150462)))

(declare-fun res!113870 () Bool)

(assert (=> b!231745 (=> (not res!113870) (not e!150462))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!231745 (= res!113870 (inRange!0 index!297 (mask!10221 thiss!1504)))))

(declare-fun lt!116935 () Unit!7135)

(assert (=> b!231745 (= lt!116935 e!150475)))

(declare-fun c!38500 () Bool)

(declare-fun contains!1623 (ListLongMap!3489 (_ BitVec 64)) Bool)

(assert (=> b!231745 (= c!38500 (contains!1623 lt!116933 key!932))))

(assert (=> b!231745 (= lt!116933 (getCurrentListMap!1283 (_keys!6369 thiss!1504) (_values!4298 thiss!1504) (mask!10221 thiss!1504) (extraKeys!4052 thiss!1504) (zeroValue!4156 thiss!1504) (minValue!4156 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4315 thiss!1504)))))

(declare-fun bm!21540 () Bool)

(assert (=> bm!21540 (= call!21544 (arrayContainsKey!0 (_keys!6369 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!231746 () Bool)

(assert (=> b!231746 (= e!150467 tp_is_empty!6099)))

(declare-fun b!231747 () Bool)

(declare-fun Unit!7139 () Unit!7135)

(assert (=> b!231747 (= e!150468 Unit!7139)))

(declare-fun lt!116940 () Unit!7135)

(declare-fun lemmaArrayContainsKeyThenInListMap!139 (array!11442 array!11440 (_ BitVec 32) (_ BitVec 32) V!7779 V!7779 (_ BitVec 64) (_ BitVec 32) Int) Unit!7135)

(assert (=> b!231747 (= lt!116940 (lemmaArrayContainsKeyThenInListMap!139 (_keys!6369 thiss!1504) (_values!4298 thiss!1504) (mask!10221 thiss!1504) (extraKeys!4052 thiss!1504) (zeroValue!4156 thiss!1504) (minValue!4156 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4315 thiss!1504)))))

(assert (=> b!231747 false))

(declare-fun b!231748 () Bool)

(declare-fun e!150463 () Bool)

(assert (=> b!231748 (= e!150463 (and e!150465 mapRes!10318))))

(declare-fun condMapEmpty!10318 () Bool)

(declare-fun mapDefault!10318 () ValueCell!2706)

(assert (=> b!231748 (= condMapEmpty!10318 (= (arr!5439 (_values!4298 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2706)) mapDefault!10318)))))

(declare-fun b!231749 () Bool)

(declare-fun e!150469 () Bool)

(assert (=> b!231749 (= e!150466 e!150469)))

(declare-fun res!113875 () Bool)

(declare-fun call!21543 () Bool)

(assert (=> b!231749 (= res!113875 call!21543)))

(assert (=> b!231749 (=> (not res!113875) (not e!150469))))

(declare-fun array_inv!3575 (array!11442) Bool)

(declare-fun array_inv!3576 (array!11440) Bool)

(assert (=> b!231750 (= e!150470 (and tp!21853 tp_is_empty!6099 (array_inv!3575 (_keys!6369 thiss!1504)) (array_inv!3576 (_values!4298 thiss!1504)) e!150463))))

(declare-fun b!231751 () Bool)

(declare-fun lt!116937 () Unit!7135)

(assert (=> b!231751 (= e!150475 lt!116937)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!319 (array!11442 array!11440 (_ BitVec 32) (_ BitVec 32) V!7779 V!7779 (_ BitVec 64) Int) Unit!7135)

(assert (=> b!231751 (= lt!116937 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!319 (_keys!6369 thiss!1504) (_values!4298 thiss!1504) (mask!10221 thiss!1504) (extraKeys!4052 thiss!1504) (zeroValue!4156 thiss!1504) (minValue!4156 thiss!1504) key!932 (defaultEntry!4315 thiss!1504)))))

(declare-fun c!38501 () Bool)

(assert (=> b!231751 (= c!38501 ((_ is MissingZero!966) lt!116931))))

(assert (=> b!231751 e!150464))

(declare-fun b!231752 () Bool)

(assert (=> b!231752 (= e!150469 (not call!21544))))

(declare-fun b!231753 () Bool)

(declare-fun res!113874 () Bool)

(assert (=> b!231753 (= res!113874 (= (select (arr!5440 (_keys!6369 thiss!1504)) (index!6037 lt!116931)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!231753 (=> (not res!113874) (not e!150469))))

(declare-fun b!231754 () Bool)

(declare-fun res!113871 () Bool)

(assert (=> b!231754 (=> (not res!113871) (not e!150474))))

(assert (=> b!231754 (= res!113871 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun bm!21541 () Bool)

(assert (=> bm!21541 (= call!21543 (inRange!0 (ite c!38501 (index!6034 lt!116931) (index!6037 lt!116931)) (mask!10221 thiss!1504)))))

(declare-fun b!231755 () Bool)

(declare-fun res!113873 () Bool)

(assert (=> b!231755 (=> (not res!113873) (not e!150473))))

(assert (=> b!231755 (= res!113873 call!21543)))

(assert (=> b!231755 (= e!150464 e!150473)))

(assert (= (and start!22182 res!113872) b!231754))

(assert (= (and b!231754 res!113871) b!231744))

(assert (= (and b!231744 res!113868) b!231745))

(assert (= (and b!231745 c!38500) b!231739))

(assert (= (and b!231745 (not c!38500)) b!231751))

(assert (= (and b!231751 c!38501) b!231755))

(assert (= (and b!231751 (not c!38501)) b!231743))

(assert (= (and b!231755 res!113873) b!231738))

(assert (= (and b!231738 res!113869) b!231741))

(assert (= (and b!231743 c!38498) b!231749))

(assert (= (and b!231743 (not c!38498)) b!231737))

(assert (= (and b!231749 res!113875) b!231753))

(assert (= (and b!231753 res!113874) b!231752))

(assert (= (or b!231755 b!231749) bm!21541))

(assert (= (or b!231741 b!231752) bm!21540))

(assert (= (and b!231745 res!113870) b!231742))

(assert (= (and b!231742 c!38499) b!231747))

(assert (= (and b!231742 (not c!38499)) b!231740))

(assert (= (and b!231748 condMapEmpty!10318) mapIsEmpty!10318))

(assert (= (and b!231748 (not condMapEmpty!10318)) mapNonEmpty!10318))

(assert (= (and mapNonEmpty!10318 ((_ is ValueCellFull!2706) mapValue!10318)) b!231746))

(assert (= (and b!231748 ((_ is ValueCellFull!2706) mapDefault!10318)) b!231736))

(assert (= b!231750 b!231748))

(assert (= start!22182 b!231750))

(declare-fun m!253161 () Bool)

(assert (=> start!22182 m!253161))

(declare-fun m!253163 () Bool)

(assert (=> b!231744 m!253163))

(declare-fun m!253165 () Bool)

(assert (=> b!231753 m!253165))

(declare-fun m!253167 () Bool)

(assert (=> b!231751 m!253167))

(declare-fun m!253169 () Bool)

(assert (=> bm!21540 m!253169))

(declare-fun m!253171 () Bool)

(assert (=> mapNonEmpty!10318 m!253171))

(declare-fun m!253173 () Bool)

(assert (=> bm!21541 m!253173))

(declare-fun m!253175 () Bool)

(assert (=> b!231745 m!253175))

(declare-fun m!253177 () Bool)

(assert (=> b!231745 m!253177))

(declare-fun m!253179 () Bool)

(assert (=> b!231745 m!253179))

(declare-fun m!253181 () Bool)

(assert (=> b!231742 m!253181))

(assert (=> b!231742 m!253169))

(declare-fun m!253183 () Bool)

(assert (=> b!231742 m!253183))

(declare-fun m!253185 () Bool)

(assert (=> b!231742 m!253185))

(declare-fun m!253187 () Bool)

(assert (=> b!231742 m!253187))

(declare-fun m!253189 () Bool)

(assert (=> b!231742 m!253189))

(declare-fun m!253191 () Bool)

(assert (=> b!231742 m!253191))

(declare-fun m!253193 () Bool)

(assert (=> b!231742 m!253193))

(declare-fun m!253195 () Bool)

(assert (=> b!231742 m!253195))

(declare-fun m!253197 () Bool)

(assert (=> b!231742 m!253197))

(declare-fun m!253199 () Bool)

(assert (=> b!231742 m!253199))

(declare-fun m!253201 () Bool)

(assert (=> b!231742 m!253201))

(declare-fun m!253203 () Bool)

(assert (=> b!231742 m!253203))

(declare-fun m!253205 () Bool)

(assert (=> b!231742 m!253205))

(declare-fun m!253207 () Bool)

(assert (=> b!231742 m!253207))

(declare-fun m!253209 () Bool)

(assert (=> b!231742 m!253209))

(declare-fun m!253211 () Bool)

(assert (=> b!231742 m!253211))

(declare-fun m!253213 () Bool)

(assert (=> b!231738 m!253213))

(declare-fun m!253215 () Bool)

(assert (=> b!231747 m!253215))

(declare-fun m!253217 () Bool)

(assert (=> b!231750 m!253217))

(declare-fun m!253219 () Bool)

(assert (=> b!231750 m!253219))

(declare-fun m!253221 () Bool)

(assert (=> b!231739 m!253221))

(check-sat (not start!22182) tp_is_empty!6099 (not b!231751) (not mapNonEmpty!10318) b_and!13153 (not b!231745) (not bm!21540) (not b!231744) (not b_next!6237) (not b!231747) (not b!231739) (not bm!21541) (not b!231750) (not b!231742))
(check-sat b_and!13153 (not b_next!6237))
