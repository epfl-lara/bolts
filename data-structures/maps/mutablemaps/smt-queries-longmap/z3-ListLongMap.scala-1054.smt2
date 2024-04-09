; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22020 () Bool)

(assert start!22020)

(declare-fun b!226453 () Bool)

(declare-fun b_free!6075 () Bool)

(declare-fun b_next!6075 () Bool)

(assert (=> b!226453 (= b_free!6075 (not b_next!6075))))

(declare-fun tp!21366 () Bool)

(declare-fun b_and!12991 () Bool)

(assert (=> b!226453 (= tp!21366 b_and!12991)))

(declare-fun b!226433 () Bool)

(declare-fun e!146930 () Bool)

(declare-fun e!146921 () Bool)

(assert (=> b!226433 (= e!146930 e!146921)))

(declare-fun res!111482 () Bool)

(assert (=> b!226433 (=> (not res!111482) (not e!146921))))

(declare-datatypes ((SeekEntryResult!893 0))(
  ( (MissingZero!893 (index!5742 (_ BitVec 32))) (Found!893 (index!5743 (_ BitVec 32))) (Intermediate!893 (undefined!1705 Bool) (index!5744 (_ BitVec 32)) (x!23241 (_ BitVec 32))) (Undefined!893) (MissingVacant!893 (index!5745 (_ BitVec 32))) )
))
(declare-fun lt!114031 () SeekEntryResult!893)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!226433 (= res!111482 (or (= lt!114031 (MissingZero!893 index!297)) (= lt!114031 (MissingVacant!893 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!7563 0))(
  ( (V!7564 (val!3013 Int)) )
))
(declare-datatypes ((ValueCell!2625 0))(
  ( (ValueCellFull!2625 (v!5029 V!7563)) (EmptyCell!2625) )
))
(declare-datatypes ((array!11116 0))(
  ( (array!11117 (arr!5277 (Array (_ BitVec 32) ValueCell!2625)) (size!5610 (_ BitVec 32))) )
))
(declare-datatypes ((array!11118 0))(
  ( (array!11119 (arr!5278 (Array (_ BitVec 32) (_ BitVec 64))) (size!5611 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3150 0))(
  ( (LongMapFixedSize!3151 (defaultEntry!4234 Int) (mask!10086 (_ BitVec 32)) (extraKeys!3971 (_ BitVec 32)) (zeroValue!4075 V!7563) (minValue!4075 V!7563) (_size!1624 (_ BitVec 32)) (_keys!6288 array!11118) (_values!4217 array!11116) (_vacant!1624 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3150)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11118 (_ BitVec 32)) SeekEntryResult!893)

(assert (=> b!226433 (= lt!114031 (seekEntryOrOpen!0 key!932 (_keys!6288 thiss!1504) (mask!10086 thiss!1504)))))

(declare-fun b!226434 () Bool)

(declare-fun e!146925 () Bool)

(declare-fun e!146923 () Bool)

(assert (=> b!226434 (= e!146925 e!146923)))

(declare-fun res!111490 () Bool)

(declare-fun call!21057 () Bool)

(assert (=> b!226434 (= res!111490 call!21057)))

(assert (=> b!226434 (=> (not res!111490) (not e!146923))))

(declare-fun bm!21054 () Bool)

(declare-fun call!21058 () Bool)

(declare-fun arrayContainsKey!0 (array!11118 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21054 (= call!21058 (arrayContainsKey!0 (_keys!6288 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!226436 () Bool)

(declare-fun res!111489 () Bool)

(declare-fun e!146928 () Bool)

(assert (=> b!226436 (=> res!111489 e!146928)))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11118 (_ BitVec 32)) Bool)

(assert (=> b!226436 (= res!111489 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6288 thiss!1504) (mask!10086 thiss!1504))))))

(declare-fun b!226437 () Bool)

(declare-fun res!111492 () Bool)

(declare-fun e!146924 () Bool)

(assert (=> b!226437 (=> (not res!111492) (not e!146924))))

(assert (=> b!226437 (= res!111492 call!21057)))

(declare-fun e!146927 () Bool)

(assert (=> b!226437 (= e!146927 e!146924)))

(declare-fun b!226438 () Bool)

(assert (=> b!226438 (= e!146928 true)))

(declare-fun lt!114032 () Bool)

(declare-datatypes ((List!3395 0))(
  ( (Nil!3392) (Cons!3391 (h!4039 (_ BitVec 64)) (t!8362 List!3395)) )
))
(declare-fun arrayNoDuplicates!0 (array!11118 (_ BitVec 32) List!3395) Bool)

(assert (=> b!226438 (= lt!114032 (arrayNoDuplicates!0 (_keys!6288 thiss!1504) #b00000000000000000000000000000000 Nil!3392))))

(declare-fun b!226439 () Bool)

(declare-fun e!146932 () Bool)

(declare-fun tp_is_empty!5937 () Bool)

(assert (=> b!226439 (= e!146932 tp_is_empty!5937)))

(declare-fun b!226440 () Bool)

(declare-datatypes ((Unit!6847 0))(
  ( (Unit!6848) )
))
(declare-fun e!146926 () Unit!6847)

(declare-fun Unit!6849 () Unit!6847)

(assert (=> b!226440 (= e!146926 Unit!6849)))

(declare-fun lt!114027 () Unit!6847)

(declare-fun lemmaArrayContainsKeyThenInListMap!95 (array!11118 array!11116 (_ BitVec 32) (_ BitVec 32) V!7563 V!7563 (_ BitVec 64) (_ BitVec 32) Int) Unit!6847)

(assert (=> b!226440 (= lt!114027 (lemmaArrayContainsKeyThenInListMap!95 (_keys!6288 thiss!1504) (_values!4217 thiss!1504) (mask!10086 thiss!1504) (extraKeys!3971 thiss!1504) (zeroValue!4075 thiss!1504) (minValue!4075 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4234 thiss!1504)))))

(assert (=> b!226440 false))

(declare-fun b!226441 () Bool)

(declare-fun res!111481 () Bool)

(assert (=> b!226441 (=> (not res!111481) (not e!146924))))

(assert (=> b!226441 (= res!111481 (= (select (arr!5278 (_keys!6288 thiss!1504)) (index!5742 lt!114031)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!226442 () Bool)

(declare-fun e!146934 () Unit!6847)

(declare-fun Unit!6850 () Unit!6847)

(assert (=> b!226442 (= e!146934 Unit!6850)))

(declare-fun lt!114025 () Unit!6847)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!258 (array!11118 array!11116 (_ BitVec 32) (_ BitVec 32) V!7563 V!7563 (_ BitVec 64) Int) Unit!6847)

(assert (=> b!226442 (= lt!114025 (lemmaInListMapThenSeekEntryOrOpenFindsIt!258 (_keys!6288 thiss!1504) (_values!4217 thiss!1504) (mask!10086 thiss!1504) (extraKeys!3971 thiss!1504) (zeroValue!4075 thiss!1504) (minValue!4075 thiss!1504) key!932 (defaultEntry!4234 thiss!1504)))))

(assert (=> b!226442 false))

(declare-fun b!226443 () Bool)

(declare-fun res!111493 () Bool)

(assert (=> b!226443 (=> res!111493 e!146928)))

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!226443 (= res!111493 (not (validKeyInArray!0 key!932)))))

(declare-fun b!226444 () Bool)

(declare-fun c!37526 () Bool)

(get-info :version)

(assert (=> b!226444 (= c!37526 ((_ is MissingVacant!893) lt!114031))))

(assert (=> b!226444 (= e!146927 e!146925)))

(declare-fun mapIsEmpty!10075 () Bool)

(declare-fun mapRes!10075 () Bool)

(assert (=> mapIsEmpty!10075 mapRes!10075))

(declare-fun b!226445 () Bool)

(declare-fun e!146929 () Bool)

(declare-fun e!146933 () Bool)

(assert (=> b!226445 (= e!146929 (and e!146933 mapRes!10075))))

(declare-fun condMapEmpty!10075 () Bool)

(declare-fun mapDefault!10075 () ValueCell!2625)

(assert (=> b!226445 (= condMapEmpty!10075 (= (arr!5277 (_values!4217 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2625)) mapDefault!10075)))))

(declare-fun b!226446 () Bool)

(declare-fun res!111484 () Bool)

(assert (=> b!226446 (=> res!111484 e!146928)))

(declare-fun lt!114026 () Bool)

(assert (=> b!226446 (= res!111484 lt!114026)))

(declare-fun mapNonEmpty!10075 () Bool)

(declare-fun tp!21367 () Bool)

(assert (=> mapNonEmpty!10075 (= mapRes!10075 (and tp!21367 e!146932))))

(declare-fun mapRest!10075 () (Array (_ BitVec 32) ValueCell!2625))

(declare-fun mapValue!10075 () ValueCell!2625)

(declare-fun mapKey!10075 () (_ BitVec 32))

(assert (=> mapNonEmpty!10075 (= (arr!5277 (_values!4217 thiss!1504)) (store mapRest!10075 mapKey!10075 mapValue!10075))))

(declare-fun b!226447 () Bool)

(assert (=> b!226447 (= e!146923 (not call!21058))))

(declare-fun b!226448 () Bool)

(declare-fun lt!114029 () Unit!6847)

(assert (=> b!226448 (= e!146934 lt!114029)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!267 (array!11118 array!11116 (_ BitVec 32) (_ BitVec 32) V!7563 V!7563 (_ BitVec 64) Int) Unit!6847)

(assert (=> b!226448 (= lt!114029 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!267 (_keys!6288 thiss!1504) (_values!4217 thiss!1504) (mask!10086 thiss!1504) (extraKeys!3971 thiss!1504) (zeroValue!4075 thiss!1504) (minValue!4075 thiss!1504) key!932 (defaultEntry!4234 thiss!1504)))))

(declare-fun c!37527 () Bool)

(assert (=> b!226448 (= c!37527 ((_ is MissingZero!893) lt!114031))))

(assert (=> b!226448 e!146927))

(declare-fun b!226449 () Bool)

(assert (=> b!226449 (= e!146925 ((_ is Undefined!893) lt!114031))))

(declare-fun b!226450 () Bool)

(declare-fun res!111485 () Bool)

(assert (=> b!226450 (=> (not res!111485) (not e!146930))))

(assert (=> b!226450 (= res!111485 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!226451 () Bool)

(declare-fun res!111487 () Bool)

(assert (=> b!226451 (= res!111487 (= (select (arr!5278 (_keys!6288 thiss!1504)) (index!5745 lt!114031)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!226451 (=> (not res!111487) (not e!146923))))

(declare-fun b!226435 () Bool)

(declare-fun res!111488 () Bool)

(assert (=> b!226435 (=> res!111488 e!146928)))

(assert (=> b!226435 (= res!111488 (or (not (= (size!5611 (_keys!6288 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10086 thiss!1504)))) (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!5611 (_keys!6288 thiss!1504)))))))

(declare-fun res!111483 () Bool)

(assert (=> start!22020 (=> (not res!111483) (not e!146930))))

(declare-fun valid!1260 (LongMapFixedSize!3150) Bool)

(assert (=> start!22020 (= res!111483 (valid!1260 thiss!1504))))

(assert (=> start!22020 e!146930))

(declare-fun e!146922 () Bool)

(assert (=> start!22020 e!146922))

(assert (=> start!22020 true))

(declare-fun b!226452 () Bool)

(declare-fun e!146931 () Bool)

(assert (=> b!226452 (= e!146921 e!146931)))

(declare-fun res!111486 () Bool)

(assert (=> b!226452 (=> (not res!111486) (not e!146931))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!226452 (= res!111486 (inRange!0 index!297 (mask!10086 thiss!1504)))))

(declare-fun lt!114028 () Unit!6847)

(assert (=> b!226452 (= lt!114028 e!146934)))

(declare-fun c!37529 () Bool)

(declare-datatypes ((tuple2!4454 0))(
  ( (tuple2!4455 (_1!2237 (_ BitVec 64)) (_2!2237 V!7563)) )
))
(declare-datatypes ((List!3396 0))(
  ( (Nil!3393) (Cons!3392 (h!4040 tuple2!4454) (t!8363 List!3396)) )
))
(declare-datatypes ((ListLongMap!3381 0))(
  ( (ListLongMap!3382 (toList!1706 List!3396)) )
))
(declare-fun contains!1574 (ListLongMap!3381 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1229 (array!11118 array!11116 (_ BitVec 32) (_ BitVec 32) V!7563 V!7563 (_ BitVec 32) Int) ListLongMap!3381)

(assert (=> b!226452 (= c!37529 (contains!1574 (getCurrentListMap!1229 (_keys!6288 thiss!1504) (_values!4217 thiss!1504) (mask!10086 thiss!1504) (extraKeys!3971 thiss!1504) (zeroValue!4075 thiss!1504) (minValue!4075 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4234 thiss!1504)) key!932))))

(declare-fun array_inv!3481 (array!11118) Bool)

(declare-fun array_inv!3482 (array!11116) Bool)

(assert (=> b!226453 (= e!146922 (and tp!21366 tp_is_empty!5937 (array_inv!3481 (_keys!6288 thiss!1504)) (array_inv!3482 (_values!4217 thiss!1504)) e!146929))))

(declare-fun b!226454 () Bool)

(assert (=> b!226454 (= e!146931 (not e!146928))))

(declare-fun res!111491 () Bool)

(assert (=> b!226454 (=> res!111491 e!146928)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!226454 (= res!111491 (not (validMask!0 (mask!10086 thiss!1504))))))

(declare-fun lt!114024 () array!11118)

(declare-fun arrayCountValidKeys!0 (array!11118 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!226454 (= (arrayCountValidKeys!0 lt!114024 #b00000000000000000000000000000000 (size!5611 (_keys!6288 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6288 thiss!1504) #b00000000000000000000000000000000 (size!5611 (_keys!6288 thiss!1504)))))))

(declare-fun lt!114023 () Unit!6847)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11118 (_ BitVec 32) (_ BitVec 64)) Unit!6847)

(assert (=> b!226454 (= lt!114023 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6288 thiss!1504) index!297 key!932))))

(assert (=> b!226454 (arrayNoDuplicates!0 lt!114024 #b00000000000000000000000000000000 Nil!3392)))

(assert (=> b!226454 (= lt!114024 (array!11119 (store (arr!5278 (_keys!6288 thiss!1504)) index!297 key!932) (size!5611 (_keys!6288 thiss!1504))))))

(declare-fun lt!114030 () Unit!6847)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11118 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3395) Unit!6847)

(assert (=> b!226454 (= lt!114030 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6288 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3392))))

(declare-fun lt!114033 () Unit!6847)

(assert (=> b!226454 (= lt!114033 e!146926)))

(declare-fun c!37528 () Bool)

(assert (=> b!226454 (= c!37528 lt!114026)))

(assert (=> b!226454 (= lt!114026 (arrayContainsKey!0 (_keys!6288 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!21055 () Bool)

(assert (=> bm!21055 (= call!21057 (inRange!0 (ite c!37527 (index!5742 lt!114031) (index!5745 lt!114031)) (mask!10086 thiss!1504)))))

(declare-fun b!226455 () Bool)

(assert (=> b!226455 (= e!146924 (not call!21058))))

(declare-fun b!226456 () Bool)

(assert (=> b!226456 (= e!146933 tp_is_empty!5937)))

(declare-fun b!226457 () Bool)

(declare-fun Unit!6851 () Unit!6847)

(assert (=> b!226457 (= e!146926 Unit!6851)))

(assert (= (and start!22020 res!111483) b!226450))

(assert (= (and b!226450 res!111485) b!226433))

(assert (= (and b!226433 res!111482) b!226452))

(assert (= (and b!226452 c!37529) b!226442))

(assert (= (and b!226452 (not c!37529)) b!226448))

(assert (= (and b!226448 c!37527) b!226437))

(assert (= (and b!226448 (not c!37527)) b!226444))

(assert (= (and b!226437 res!111492) b!226441))

(assert (= (and b!226441 res!111481) b!226455))

(assert (= (and b!226444 c!37526) b!226434))

(assert (= (and b!226444 (not c!37526)) b!226449))

(assert (= (and b!226434 res!111490) b!226451))

(assert (= (and b!226451 res!111487) b!226447))

(assert (= (or b!226437 b!226434) bm!21055))

(assert (= (or b!226455 b!226447) bm!21054))

(assert (= (and b!226452 res!111486) b!226454))

(assert (= (and b!226454 c!37528) b!226440))

(assert (= (and b!226454 (not c!37528)) b!226457))

(assert (= (and b!226454 (not res!111491)) b!226435))

(assert (= (and b!226435 (not res!111488)) b!226443))

(assert (= (and b!226443 (not res!111493)) b!226446))

(assert (= (and b!226446 (not res!111484)) b!226436))

(assert (= (and b!226436 (not res!111489)) b!226438))

(assert (= (and b!226445 condMapEmpty!10075) mapIsEmpty!10075))

(assert (= (and b!226445 (not condMapEmpty!10075)) mapNonEmpty!10075))

(assert (= (and mapNonEmpty!10075 ((_ is ValueCellFull!2625) mapValue!10075)) b!226439))

(assert (= (and b!226445 ((_ is ValueCellFull!2625) mapDefault!10075)) b!226456))

(assert (= b!226453 b!226445))

(assert (= start!22020 b!226453))

(declare-fun m!248727 () Bool)

(assert (=> mapNonEmpty!10075 m!248727))

(declare-fun m!248729 () Bool)

(assert (=> bm!21055 m!248729))

(declare-fun m!248731 () Bool)

(assert (=> b!226454 m!248731))

(declare-fun m!248733 () Bool)

(assert (=> b!226454 m!248733))

(declare-fun m!248735 () Bool)

(assert (=> b!226454 m!248735))

(declare-fun m!248737 () Bool)

(assert (=> b!226454 m!248737))

(declare-fun m!248739 () Bool)

(assert (=> b!226454 m!248739))

(declare-fun m!248741 () Bool)

(assert (=> b!226454 m!248741))

(declare-fun m!248743 () Bool)

(assert (=> b!226454 m!248743))

(declare-fun m!248745 () Bool)

(assert (=> b!226454 m!248745))

(declare-fun m!248747 () Bool)

(assert (=> b!226442 m!248747))

(declare-fun m!248749 () Bool)

(assert (=> b!226453 m!248749))

(declare-fun m!248751 () Bool)

(assert (=> b!226453 m!248751))

(declare-fun m!248753 () Bool)

(assert (=> b!226452 m!248753))

(declare-fun m!248755 () Bool)

(assert (=> b!226452 m!248755))

(assert (=> b!226452 m!248755))

(declare-fun m!248757 () Bool)

(assert (=> b!226452 m!248757))

(declare-fun m!248759 () Bool)

(assert (=> b!226436 m!248759))

(declare-fun m!248761 () Bool)

(assert (=> b!226433 m!248761))

(declare-fun m!248763 () Bool)

(assert (=> b!226443 m!248763))

(declare-fun m!248765 () Bool)

(assert (=> b!226448 m!248765))

(declare-fun m!248767 () Bool)

(assert (=> b!226451 m!248767))

(declare-fun m!248769 () Bool)

(assert (=> b!226438 m!248769))

(declare-fun m!248771 () Bool)

(assert (=> b!226441 m!248771))

(assert (=> bm!21054 m!248733))

(declare-fun m!248773 () Bool)

(assert (=> start!22020 m!248773))

(declare-fun m!248775 () Bool)

(assert (=> b!226440 m!248775))

(check-sat (not mapNonEmpty!10075) (not bm!21054) (not b!226440) (not b!226433) (not b!226452) (not b!226454) (not bm!21055) (not b!226443) (not start!22020) (not b!226453) b_and!12991 (not b!226442) (not b!226438) tp_is_empty!5937 (not b!226448) (not b!226436) (not b_next!6075))
(check-sat b_and!12991 (not b_next!6075))
