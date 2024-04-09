; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22212 () Bool)

(assert start!22212)

(declare-fun b!232651 () Bool)

(declare-fun b_free!6267 () Bool)

(declare-fun b_next!6267 () Bool)

(assert (=> b!232651 (= b_free!6267 (not b_next!6267))))

(declare-fun tp!21942 () Bool)

(declare-fun b_and!13183 () Bool)

(assert (=> b!232651 (= tp!21942 b_and!13183)))

(declare-fun b!232641 () Bool)

(declare-fun e!151104 () Bool)

(declare-fun tp_is_empty!6129 () Bool)

(assert (=> b!232641 (= e!151104 tp_is_empty!6129)))

(declare-fun b!232642 () Bool)

(declare-datatypes ((Unit!7185 0))(
  ( (Unit!7186) )
))
(declare-fun e!151105 () Unit!7185)

(declare-fun lt!117640 () Unit!7185)

(assert (=> b!232642 (= e!151105 lt!117640)))

(declare-datatypes ((V!7819 0))(
  ( (V!7820 (val!3109 Int)) )
))
(declare-datatypes ((ValueCell!2721 0))(
  ( (ValueCellFull!2721 (v!5125 V!7819)) (EmptyCell!2721) )
))
(declare-datatypes ((array!11500 0))(
  ( (array!11501 (arr!5469 (Array (_ BitVec 32) ValueCell!2721)) (size!5802 (_ BitVec 32))) )
))
(declare-datatypes ((array!11502 0))(
  ( (array!11503 (arr!5470 (Array (_ BitVec 32) (_ BitVec 64))) (size!5803 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3342 0))(
  ( (LongMapFixedSize!3343 (defaultEntry!4330 Int) (mask!10246 (_ BitVec 32)) (extraKeys!4067 (_ BitVec 32)) (zeroValue!4171 V!7819) (minValue!4171 V!7819) (_size!1720 (_ BitVec 32)) (_keys!6384 array!11502) (_values!4313 array!11500) (_vacant!1720 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3342)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!326 (array!11502 array!11500 (_ BitVec 32) (_ BitVec 32) V!7819 V!7819 (_ BitVec 64) Int) Unit!7185)

(assert (=> b!232642 (= lt!117640 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!326 (_keys!6384 thiss!1504) (_values!4313 thiss!1504) (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) key!932 (defaultEntry!4330 thiss!1504)))))

(declare-fun c!38679 () Bool)

(declare-datatypes ((SeekEntryResult!978 0))(
  ( (MissingZero!978 (index!6082 (_ BitVec 32))) (Found!978 (index!6083 (_ BitVec 32))) (Intermediate!978 (undefined!1790 Bool) (index!6084 (_ BitVec 32)) (x!23582 (_ BitVec 32))) (Undefined!978) (MissingVacant!978 (index!6085 (_ BitVec 32))) )
))
(declare-fun lt!117643 () SeekEntryResult!978)

(get-info :version)

(assert (=> b!232642 (= c!38679 ((_ is MissingZero!978) lt!117643))))

(declare-fun e!151098 () Bool)

(assert (=> b!232642 e!151098))

(declare-fun bm!21630 () Bool)

(declare-fun call!21634 () Bool)

(declare-fun arrayContainsKey!0 (array!11502 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21630 (= call!21634 (arrayContainsKey!0 (_keys!6384 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232643 () Bool)

(declare-fun e!151109 () Unit!7185)

(declare-fun Unit!7187 () Unit!7185)

(assert (=> b!232643 (= e!151109 Unit!7187)))

(declare-fun lt!117648 () Unit!7185)

(declare-fun lemmaArrayContainsKeyThenInListMap!146 (array!11502 array!11500 (_ BitVec 32) (_ BitVec 32) V!7819 V!7819 (_ BitVec 64) (_ BitVec 32) Int) Unit!7185)

(assert (=> b!232643 (= lt!117648 (lemmaArrayContainsKeyThenInListMap!146 (_keys!6384 thiss!1504) (_values!4313 thiss!1504) (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4330 thiss!1504)))))

(assert (=> b!232643 false))

(declare-fun b!232644 () Bool)

(declare-fun e!151110 () Bool)

(assert (=> b!232644 (= e!151110 tp_is_empty!6129)))

(declare-fun b!232645 () Bool)

(declare-fun e!151101 () Bool)

(declare-fun e!151097 () Bool)

(assert (=> b!232645 (= e!151101 e!151097)))

(declare-fun res!114237 () Bool)

(declare-fun call!21633 () Bool)

(assert (=> b!232645 (= res!114237 call!21633)))

(assert (=> b!232645 (=> (not res!114237) (not e!151097))))

(declare-fun b!232646 () Bool)

(declare-fun e!151100 () Bool)

(declare-fun mapRes!10363 () Bool)

(assert (=> b!232646 (= e!151100 (and e!151104 mapRes!10363))))

(declare-fun condMapEmpty!10363 () Bool)

(declare-fun mapDefault!10363 () ValueCell!2721)

(assert (=> b!232646 (= condMapEmpty!10363 (= (arr!5469 (_values!4313 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2721)) mapDefault!10363)))))

(declare-fun b!232647 () Bool)

(declare-fun e!151106 () Bool)

(declare-fun e!151107 () Bool)

(assert (=> b!232647 (= e!151106 e!151107)))

(declare-fun res!114233 () Bool)

(assert (=> b!232647 (=> (not res!114233) (not e!151107))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!232647 (= res!114233 (inRange!0 index!297 (mask!10246 thiss!1504)))))

(declare-fun lt!117644 () Unit!7185)

(assert (=> b!232647 (= lt!117644 e!151105)))

(declare-fun c!38681 () Bool)

(declare-datatypes ((tuple2!4584 0))(
  ( (tuple2!4585 (_1!2302 (_ BitVec 64)) (_2!2302 V!7819)) )
))
(declare-datatypes ((List!3524 0))(
  ( (Nil!3521) (Cons!3520 (h!4168 tuple2!4584) (t!8491 List!3524)) )
))
(declare-datatypes ((ListLongMap!3511 0))(
  ( (ListLongMap!3512 (toList!1771 List!3524)) )
))
(declare-fun lt!117632 () ListLongMap!3511)

(declare-fun contains!1633 (ListLongMap!3511 (_ BitVec 64)) Bool)

(assert (=> b!232647 (= c!38681 (contains!1633 lt!117632 key!932))))

(declare-fun getCurrentListMap!1294 (array!11502 array!11500 (_ BitVec 32) (_ BitVec 32) V!7819 V!7819 (_ BitVec 32) Int) ListLongMap!3511)

(assert (=> b!232647 (= lt!117632 (getCurrentListMap!1294 (_keys!6384 thiss!1504) (_values!4313 thiss!1504) (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4330 thiss!1504)))))

(declare-fun bm!21631 () Bool)

(assert (=> bm!21631 (= call!21633 (inRange!0 (ite c!38679 (index!6082 lt!117643) (index!6085 lt!117643)) (mask!10246 thiss!1504)))))

(declare-fun b!232648 () Bool)

(declare-fun res!114235 () Bool)

(assert (=> b!232648 (= res!114235 (= (select (arr!5470 (_keys!6384 thiss!1504)) (index!6085 lt!117643)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!232648 (=> (not res!114235) (not e!151097))))

(declare-fun res!114240 () Bool)

(declare-fun e!151099 () Bool)

(assert (=> start!22212 (=> (not res!114240) (not e!151099))))

(declare-fun valid!1313 (LongMapFixedSize!3342) Bool)

(assert (=> start!22212 (= res!114240 (valid!1313 thiss!1504))))

(assert (=> start!22212 e!151099))

(declare-fun e!151111 () Bool)

(assert (=> start!22212 e!151111))

(assert (=> start!22212 true))

(assert (=> start!22212 tp_is_empty!6129))

(declare-fun b!232649 () Bool)

(declare-fun e!151108 () Bool)

(assert (=> b!232649 (= e!151107 (not e!151108))))

(declare-fun res!114236 () Bool)

(assert (=> b!232649 (=> res!114236 e!151108)))

(declare-fun lt!117639 () LongMapFixedSize!3342)

(assert (=> b!232649 (= res!114236 (not (valid!1313 lt!117639)))))

(declare-fun lt!117634 () ListLongMap!3511)

(assert (=> b!232649 (contains!1633 lt!117634 key!932)))

(declare-fun lt!117651 () array!11500)

(declare-fun lt!117649 () Unit!7185)

(declare-fun lt!117645 () array!11502)

(declare-fun lemmaValidKeyInArrayIsInListMap!146 (array!11502 array!11500 (_ BitVec 32) (_ BitVec 32) V!7819 V!7819 (_ BitVec 32) Int) Unit!7185)

(assert (=> b!232649 (= lt!117649 (lemmaValidKeyInArrayIsInListMap!146 lt!117645 lt!117651 (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) index!297 (defaultEntry!4330 thiss!1504)))))

(assert (=> b!232649 (= lt!117639 (LongMapFixedSize!3343 (defaultEntry!4330 thiss!1504) (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) (bvadd #b00000000000000000000000000000001 (_size!1720 thiss!1504)) lt!117645 lt!117651 (_vacant!1720 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11502 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!232649 (= (arrayCountValidKeys!0 lt!117645 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!117635 () Unit!7185)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!11502 (_ BitVec 32)) Unit!7185)

(assert (=> b!232649 (= lt!117635 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!117645 index!297))))

(assert (=> b!232649 (arrayContainsKey!0 lt!117645 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!117638 () Unit!7185)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!11502 (_ BitVec 64) (_ BitVec 32)) Unit!7185)

(assert (=> b!232649 (= lt!117638 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!117645 key!932 index!297))))

(declare-fun lt!117637 () ListLongMap!3511)

(assert (=> b!232649 (= lt!117637 lt!117634)))

(assert (=> b!232649 (= lt!117634 (getCurrentListMap!1294 lt!117645 lt!117651 (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4330 thiss!1504)))))

(declare-fun v!346 () V!7819)

(declare-fun +!622 (ListLongMap!3511 tuple2!4584) ListLongMap!3511)

(assert (=> b!232649 (= lt!117637 (+!622 lt!117632 (tuple2!4585 key!932 v!346)))))

(assert (=> b!232649 (= lt!117651 (array!11501 (store (arr!5469 (_values!4313 thiss!1504)) index!297 (ValueCellFull!2721 v!346)) (size!5802 (_values!4313 thiss!1504))))))

(declare-fun lt!117633 () Unit!7185)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!81 (array!11502 array!11500 (_ BitVec 32) (_ BitVec 32) V!7819 V!7819 (_ BitVec 32) (_ BitVec 64) V!7819 Int) Unit!7185)

(assert (=> b!232649 (= lt!117633 (lemmaAddValidKeyToArrayThenAddPairToListMap!81 (_keys!6384 thiss!1504) (_values!4313 thiss!1504) (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) index!297 key!932 v!346 (defaultEntry!4330 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11502 (_ BitVec 32)) Bool)

(assert (=> b!232649 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!117645 (mask!10246 thiss!1504))))

(declare-fun lt!117636 () Unit!7185)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11502 (_ BitVec 32) (_ BitVec 32)) Unit!7185)

(assert (=> b!232649 (= lt!117636 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6384 thiss!1504) index!297 (mask!10246 thiss!1504)))))

(assert (=> b!232649 (= (arrayCountValidKeys!0 lt!117645 #b00000000000000000000000000000000 (size!5803 (_keys!6384 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6384 thiss!1504) #b00000000000000000000000000000000 (size!5803 (_keys!6384 thiss!1504)))))))

(declare-fun lt!117646 () Unit!7185)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11502 (_ BitVec 32) (_ BitVec 64)) Unit!7185)

(assert (=> b!232649 (= lt!117646 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6384 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3525 0))(
  ( (Nil!3522) (Cons!3521 (h!4169 (_ BitVec 64)) (t!8492 List!3525)) )
))
(declare-fun arrayNoDuplicates!0 (array!11502 (_ BitVec 32) List!3525) Bool)

(assert (=> b!232649 (arrayNoDuplicates!0 lt!117645 #b00000000000000000000000000000000 Nil!3522)))

(assert (=> b!232649 (= lt!117645 (array!11503 (store (arr!5470 (_keys!6384 thiss!1504)) index!297 key!932) (size!5803 (_keys!6384 thiss!1504))))))

(declare-fun lt!117642 () Unit!7185)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11502 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3525) Unit!7185)

(assert (=> b!232649 (= lt!117642 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6384 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3522))))

(declare-fun lt!117641 () Unit!7185)

(assert (=> b!232649 (= lt!117641 e!151109)))

(declare-fun c!38680 () Bool)

(assert (=> b!232649 (= c!38680 (arrayContainsKey!0 (_keys!6384 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!232650 () Bool)

(declare-fun c!38678 () Bool)

(assert (=> b!232650 (= c!38678 ((_ is MissingVacant!978) lt!117643))))

(assert (=> b!232650 (= e!151098 e!151101)))

(declare-fun array_inv!3595 (array!11502) Bool)

(declare-fun array_inv!3596 (array!11500) Bool)

(assert (=> b!232651 (= e!151111 (and tp!21942 tp_is_empty!6129 (array_inv!3595 (_keys!6384 thiss!1504)) (array_inv!3596 (_values!4313 thiss!1504)) e!151100))))

(declare-fun b!232652 () Bool)

(assert (=> b!232652 (= e!151108 true)))

(declare-fun lt!117650 () Bool)

(declare-fun map!2577 (LongMapFixedSize!3342) ListLongMap!3511)

(assert (=> b!232652 (= lt!117650 (contains!1633 (map!2577 lt!117639) key!932))))

(declare-fun b!232653 () Bool)

(declare-fun res!114238 () Bool)

(assert (=> b!232653 (=> (not res!114238) (not e!151099))))

(assert (=> b!232653 (= res!114238 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!232654 () Bool)

(declare-fun res!114239 () Bool)

(declare-fun e!151102 () Bool)

(assert (=> b!232654 (=> (not res!114239) (not e!151102))))

(assert (=> b!232654 (= res!114239 (= (select (arr!5470 (_keys!6384 thiss!1504)) (index!6082 lt!117643)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!232655 () Bool)

(declare-fun Unit!7188 () Unit!7185)

(assert (=> b!232655 (= e!151109 Unit!7188)))

(declare-fun b!232656 () Bool)

(assert (=> b!232656 (= e!151101 ((_ is Undefined!978) lt!117643))))

(declare-fun b!232657 () Bool)

(declare-fun res!114241 () Bool)

(assert (=> b!232657 (=> (not res!114241) (not e!151102))))

(assert (=> b!232657 (= res!114241 call!21633)))

(assert (=> b!232657 (= e!151098 e!151102)))

(declare-fun b!232658 () Bool)

(declare-fun Unit!7189 () Unit!7185)

(assert (=> b!232658 (= e!151105 Unit!7189)))

(declare-fun lt!117647 () Unit!7185)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!312 (array!11502 array!11500 (_ BitVec 32) (_ BitVec 32) V!7819 V!7819 (_ BitVec 64) Int) Unit!7185)

(assert (=> b!232658 (= lt!117647 (lemmaInListMapThenSeekEntryOrOpenFindsIt!312 (_keys!6384 thiss!1504) (_values!4313 thiss!1504) (mask!10246 thiss!1504) (extraKeys!4067 thiss!1504) (zeroValue!4171 thiss!1504) (minValue!4171 thiss!1504) key!932 (defaultEntry!4330 thiss!1504)))))

(assert (=> b!232658 false))

(declare-fun mapIsEmpty!10363 () Bool)

(assert (=> mapIsEmpty!10363 mapRes!10363))

(declare-fun b!232659 () Bool)

(assert (=> b!232659 (= e!151099 e!151106)))

(declare-fun res!114234 () Bool)

(assert (=> b!232659 (=> (not res!114234) (not e!151106))))

(assert (=> b!232659 (= res!114234 (or (= lt!117643 (MissingZero!978 index!297)) (= lt!117643 (MissingVacant!978 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11502 (_ BitVec 32)) SeekEntryResult!978)

(assert (=> b!232659 (= lt!117643 (seekEntryOrOpen!0 key!932 (_keys!6384 thiss!1504) (mask!10246 thiss!1504)))))

(declare-fun b!232660 () Bool)

(assert (=> b!232660 (= e!151097 (not call!21634))))

(declare-fun b!232661 () Bool)

(assert (=> b!232661 (= e!151102 (not call!21634))))

(declare-fun mapNonEmpty!10363 () Bool)

(declare-fun tp!21943 () Bool)

(assert (=> mapNonEmpty!10363 (= mapRes!10363 (and tp!21943 e!151110))))

(declare-fun mapValue!10363 () ValueCell!2721)

(declare-fun mapKey!10363 () (_ BitVec 32))

(declare-fun mapRest!10363 () (Array (_ BitVec 32) ValueCell!2721))

(assert (=> mapNonEmpty!10363 (= (arr!5469 (_values!4313 thiss!1504)) (store mapRest!10363 mapKey!10363 mapValue!10363))))

(assert (= (and start!22212 res!114240) b!232653))

(assert (= (and b!232653 res!114238) b!232659))

(assert (= (and b!232659 res!114234) b!232647))

(assert (= (and b!232647 c!38681) b!232658))

(assert (= (and b!232647 (not c!38681)) b!232642))

(assert (= (and b!232642 c!38679) b!232657))

(assert (= (and b!232642 (not c!38679)) b!232650))

(assert (= (and b!232657 res!114241) b!232654))

(assert (= (and b!232654 res!114239) b!232661))

(assert (= (and b!232650 c!38678) b!232645))

(assert (= (and b!232650 (not c!38678)) b!232656))

(assert (= (and b!232645 res!114237) b!232648))

(assert (= (and b!232648 res!114235) b!232660))

(assert (= (or b!232657 b!232645) bm!21631))

(assert (= (or b!232661 b!232660) bm!21630))

(assert (= (and b!232647 res!114233) b!232649))

(assert (= (and b!232649 c!38680) b!232643))

(assert (= (and b!232649 (not c!38680)) b!232655))

(assert (= (and b!232649 (not res!114236)) b!232652))

(assert (= (and b!232646 condMapEmpty!10363) mapIsEmpty!10363))

(assert (= (and b!232646 (not condMapEmpty!10363)) mapNonEmpty!10363))

(assert (= (and mapNonEmpty!10363 ((_ is ValueCellFull!2721) mapValue!10363)) b!232644))

(assert (= (and b!232646 ((_ is ValueCellFull!2721) mapDefault!10363)) b!232641))

(assert (= b!232651 b!232646))

(assert (= start!22212 b!232651))

(declare-fun m!254119 () Bool)

(assert (=> b!232658 m!254119))

(declare-fun m!254121 () Bool)

(assert (=> b!232648 m!254121))

(declare-fun m!254123 () Bool)

(assert (=> b!232659 m!254123))

(declare-fun m!254125 () Bool)

(assert (=> bm!21630 m!254125))

(declare-fun m!254127 () Bool)

(assert (=> bm!21631 m!254127))

(declare-fun m!254129 () Bool)

(assert (=> start!22212 m!254129))

(declare-fun m!254131 () Bool)

(assert (=> b!232647 m!254131))

(declare-fun m!254133 () Bool)

(assert (=> b!232647 m!254133))

(declare-fun m!254135 () Bool)

(assert (=> b!232647 m!254135))

(declare-fun m!254137 () Bool)

(assert (=> mapNonEmpty!10363 m!254137))

(declare-fun m!254139 () Bool)

(assert (=> b!232652 m!254139))

(assert (=> b!232652 m!254139))

(declare-fun m!254141 () Bool)

(assert (=> b!232652 m!254141))

(declare-fun m!254143 () Bool)

(assert (=> b!232643 m!254143))

(declare-fun m!254145 () Bool)

(assert (=> b!232642 m!254145))

(declare-fun m!254147 () Bool)

(assert (=> b!232651 m!254147))

(declare-fun m!254149 () Bool)

(assert (=> b!232651 m!254149))

(declare-fun m!254151 () Bool)

(assert (=> b!232649 m!254151))

(assert (=> b!232649 m!254125))

(declare-fun m!254153 () Bool)

(assert (=> b!232649 m!254153))

(declare-fun m!254155 () Bool)

(assert (=> b!232649 m!254155))

(declare-fun m!254157 () Bool)

(assert (=> b!232649 m!254157))

(declare-fun m!254159 () Bool)

(assert (=> b!232649 m!254159))

(declare-fun m!254161 () Bool)

(assert (=> b!232649 m!254161))

(declare-fun m!254163 () Bool)

(assert (=> b!232649 m!254163))

(declare-fun m!254165 () Bool)

(assert (=> b!232649 m!254165))

(declare-fun m!254167 () Bool)

(assert (=> b!232649 m!254167))

(declare-fun m!254169 () Bool)

(assert (=> b!232649 m!254169))

(declare-fun m!254171 () Bool)

(assert (=> b!232649 m!254171))

(declare-fun m!254173 () Bool)

(assert (=> b!232649 m!254173))

(declare-fun m!254175 () Bool)

(assert (=> b!232649 m!254175))

(declare-fun m!254177 () Bool)

(assert (=> b!232649 m!254177))

(declare-fun m!254179 () Bool)

(assert (=> b!232649 m!254179))

(declare-fun m!254181 () Bool)

(assert (=> b!232649 m!254181))

(declare-fun m!254183 () Bool)

(assert (=> b!232649 m!254183))

(declare-fun m!254185 () Bool)

(assert (=> b!232649 m!254185))

(declare-fun m!254187 () Bool)

(assert (=> b!232649 m!254187))

(declare-fun m!254189 () Bool)

(assert (=> b!232654 m!254189))

(check-sat (not b!232649) (not b!232659) (not b!232647) (not mapNonEmpty!10363) (not b!232651) (not b!232643) (not b_next!6267) (not start!22212) tp_is_empty!6129 (not b!232652) (not b!232642) (not b!232658) (not bm!21630) b_and!13183 (not bm!21631))
(check-sat b_and!13183 (not b_next!6267))
