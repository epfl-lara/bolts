; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!18786 () Bool)

(assert start!18786)

(declare-fun b!185491 () Bool)

(declare-fun b_free!4569 () Bool)

(declare-fun b_next!4569 () Bool)

(assert (=> b!185491 (= b_free!4569 (not b_next!4569))))

(declare-fun tp!16503 () Bool)

(declare-fun b_and!11187 () Bool)

(assert (=> b!185491 (= tp!16503 b_and!11187)))

(declare-fun b!185488 () Bool)

(declare-fun res!87766 () Bool)

(declare-fun e!122070 () Bool)

(assert (=> b!185488 (=> (not res!87766) (not e!122070))))

(declare-datatypes ((V!5435 0))(
  ( (V!5436 (val!2215 Int)) )
))
(declare-datatypes ((ValueCell!1827 0))(
  ( (ValueCellFull!1827 (v!4121 V!5435)) (EmptyCell!1827) )
))
(declare-datatypes ((array!7888 0))(
  ( (array!7889 (arr!3724 (Array (_ BitVec 32) (_ BitVec 64))) (size!4040 (_ BitVec 32))) )
))
(declare-datatypes ((array!7890 0))(
  ( (array!7891 (arr!3725 (Array (_ BitVec 32) ValueCell!1827)) (size!4041 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2562 0))(
  ( (LongMapFixedSize!2563 (defaultEntry!3782 Int) (mask!8890 (_ BitVec 32)) (extraKeys!3519 (_ BitVec 32)) (zeroValue!3623 V!5435) (minValue!3623 V!5435) (_size!1330 (_ BitVec 32)) (_keys!5721 array!7888) (_values!3765 array!7890) (_vacant!1330 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2562)

(assert (=> b!185488 (= res!87766 (and (= (size!4041 (_values!3765 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8890 thiss!1248))) (= (size!4040 (_keys!5721 thiss!1248)) (size!4041 (_values!3765 thiss!1248))) (bvsge (mask!8890 thiss!1248) #b00000000000000000000000000000000) (bvsge (extraKeys!3519 thiss!1248) #b00000000000000000000000000000000) (bvsle (extraKeys!3519 thiss!1248) #b00000000000000000000000000000011)))))

(declare-fun b!185489 () Bool)

(declare-fun e!122065 () Bool)

(assert (=> b!185489 (= e!122065 e!122070)))

(declare-fun res!87764 () Bool)

(assert (=> b!185489 (=> (not res!87764) (not e!122070))))

(declare-datatypes ((SeekEntryResult!644 0))(
  ( (MissingZero!644 (index!4746 (_ BitVec 32))) (Found!644 (index!4747 (_ BitVec 32))) (Intermediate!644 (undefined!1456 Bool) (index!4748 (_ BitVec 32)) (x!20156 (_ BitVec 32))) (Undefined!644) (MissingVacant!644 (index!4749 (_ BitVec 32))) )
))
(declare-fun lt!91774 () SeekEntryResult!644)

(get-info :version)

(assert (=> b!185489 (= res!87764 (and (not ((_ is Undefined!644) lt!91774)) (not ((_ is MissingVacant!644) lt!91774)) (not ((_ is MissingZero!644) lt!91774)) ((_ is Found!644) lt!91774)))))

(declare-fun key!828 () (_ BitVec 64))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7888 (_ BitVec 32)) SeekEntryResult!644)

(assert (=> b!185489 (= lt!91774 (seekEntryOrOpen!0 key!828 (_keys!5721 thiss!1248) (mask!8890 thiss!1248)))))

(declare-fun b!185490 () Bool)

(declare-fun res!87763 () Bool)

(assert (=> b!185490 (=> (not res!87763) (not e!122070))))

(declare-datatypes ((tuple2!3446 0))(
  ( (tuple2!3447 (_1!1733 (_ BitVec 64)) (_2!1733 V!5435)) )
))
(declare-datatypes ((List!2381 0))(
  ( (Nil!2378) (Cons!2377 (h!3010 tuple2!3446) (t!7271 List!2381)) )
))
(declare-datatypes ((ListLongMap!2377 0))(
  ( (ListLongMap!2378 (toList!1204 List!2381)) )
))
(declare-fun contains!1293 (ListLongMap!2377 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!847 (array!7888 array!7890 (_ BitVec 32) (_ BitVec 32) V!5435 V!5435 (_ BitVec 32) Int) ListLongMap!2377)

(assert (=> b!185490 (= res!87763 (not (contains!1293 (getCurrentListMap!847 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)) key!828)))))

(declare-fun tp_is_empty!4341 () Bool)

(declare-fun e!122068 () Bool)

(declare-fun e!122066 () Bool)

(declare-fun array_inv!2401 (array!7888) Bool)

(declare-fun array_inv!2402 (array!7890) Bool)

(assert (=> b!185491 (= e!122066 (and tp!16503 tp_is_empty!4341 (array_inv!2401 (_keys!5721 thiss!1248)) (array_inv!2402 (_values!3765 thiss!1248)) e!122068))))

(declare-fun res!87765 () Bool)

(assert (=> start!18786 (=> (not res!87765) (not e!122065))))

(declare-fun valid!1049 (LongMapFixedSize!2562) Bool)

(assert (=> start!18786 (= res!87765 (valid!1049 thiss!1248))))

(assert (=> start!18786 e!122065))

(assert (=> start!18786 e!122066))

(assert (=> start!18786 true))

(declare-fun b!185492 () Bool)

(declare-fun e!122067 () Bool)

(assert (=> b!185492 (= e!122067 tp_is_empty!4341)))

(declare-fun b!185493 () Bool)

(declare-fun e!122064 () Bool)

(assert (=> b!185493 (= e!122064 tp_is_empty!4341)))

(declare-fun mapIsEmpty!7470 () Bool)

(declare-fun mapRes!7470 () Bool)

(assert (=> mapIsEmpty!7470 mapRes!7470))

(declare-fun b!185494 () Bool)

(declare-fun res!87761 () Bool)

(assert (=> b!185494 (=> (not res!87761) (not e!122070))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!185494 (= res!87761 (validMask!0 (mask!8890 thiss!1248)))))

(declare-fun b!185495 () Bool)

(declare-fun res!87762 () Bool)

(assert (=> b!185495 (=> (not res!87762) (not e!122070))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7888 (_ BitVec 32)) Bool)

(assert (=> b!185495 (= res!87762 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5721 thiss!1248) (mask!8890 thiss!1248)))))

(declare-fun b!185496 () Bool)

(assert (=> b!185496 (= e!122068 (and e!122067 mapRes!7470))))

(declare-fun condMapEmpty!7470 () Bool)

(declare-fun mapDefault!7470 () ValueCell!1827)

(assert (=> b!185496 (= condMapEmpty!7470 (= (arr!3725 (_values!3765 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1827)) mapDefault!7470)))))

(declare-fun b!185497 () Bool)

(declare-fun res!87767 () Bool)

(assert (=> b!185497 (=> (not res!87767) (not e!122065))))

(assert (=> b!185497 (= res!87767 (not (= key!828 (bvneg key!828))))))

(declare-fun b!185498 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!185498 (= e!122070 (not (validKeyInArray!0 key!828)))))

(declare-fun b!185499 () Bool)

(declare-fun res!87760 () Bool)

(assert (=> b!185499 (=> (not res!87760) (not e!122070))))

(declare-datatypes ((List!2382 0))(
  ( (Nil!2379) (Cons!2378 (h!3011 (_ BitVec 64)) (t!7272 List!2382)) )
))
(declare-fun arrayNoDuplicates!0 (array!7888 (_ BitVec 32) List!2382) Bool)

(assert (=> b!185499 (= res!87760 (arrayNoDuplicates!0 (_keys!5721 thiss!1248) #b00000000000000000000000000000000 Nil!2379))))

(declare-fun mapNonEmpty!7470 () Bool)

(declare-fun tp!16502 () Bool)

(assert (=> mapNonEmpty!7470 (= mapRes!7470 (and tp!16502 e!122064))))

(declare-fun mapValue!7470 () ValueCell!1827)

(declare-fun mapKey!7470 () (_ BitVec 32))

(declare-fun mapRest!7470 () (Array (_ BitVec 32) ValueCell!1827))

(assert (=> mapNonEmpty!7470 (= (arr!3725 (_values!3765 thiss!1248)) (store mapRest!7470 mapKey!7470 mapValue!7470))))

(assert (= (and start!18786 res!87765) b!185497))

(assert (= (and b!185497 res!87767) b!185489))

(assert (= (and b!185489 res!87764) b!185490))

(assert (= (and b!185490 res!87763) b!185494))

(assert (= (and b!185494 res!87761) b!185488))

(assert (= (and b!185488 res!87766) b!185495))

(assert (= (and b!185495 res!87762) b!185499))

(assert (= (and b!185499 res!87760) b!185498))

(assert (= (and b!185496 condMapEmpty!7470) mapIsEmpty!7470))

(assert (= (and b!185496 (not condMapEmpty!7470)) mapNonEmpty!7470))

(assert (= (and mapNonEmpty!7470 ((_ is ValueCellFull!1827) mapValue!7470)) b!185493))

(assert (= (and b!185496 ((_ is ValueCellFull!1827) mapDefault!7470)) b!185492))

(assert (= b!185491 b!185496))

(assert (= start!18786 b!185491))

(declare-fun m!212701 () Bool)

(assert (=> start!18786 m!212701))

(declare-fun m!212703 () Bool)

(assert (=> b!185489 m!212703))

(declare-fun m!212705 () Bool)

(assert (=> b!185498 m!212705))

(declare-fun m!212707 () Bool)

(assert (=> b!185491 m!212707))

(declare-fun m!212709 () Bool)

(assert (=> b!185491 m!212709))

(declare-fun m!212711 () Bool)

(assert (=> b!185494 m!212711))

(declare-fun m!212713 () Bool)

(assert (=> b!185490 m!212713))

(assert (=> b!185490 m!212713))

(declare-fun m!212715 () Bool)

(assert (=> b!185490 m!212715))

(declare-fun m!212717 () Bool)

(assert (=> b!185499 m!212717))

(declare-fun m!212719 () Bool)

(assert (=> mapNonEmpty!7470 m!212719))

(declare-fun m!212721 () Bool)

(assert (=> b!185495 m!212721))

(check-sat (not b!185491) (not start!18786) (not b_next!4569) tp_is_empty!4341 (not b!185495) (not b!185490) b_and!11187 (not b!185498) (not b!185489) (not b!185494) (not mapNonEmpty!7470) (not b!185499))
(check-sat b_and!11187 (not b_next!4569))
(get-model)

(declare-fun d!55033 () Bool)

(assert (=> d!55033 (= (validKeyInArray!0 key!828) (and (not (= key!828 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!828 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!185498 d!55033))

(declare-fun d!55035 () Bool)

(declare-fun res!87798 () Bool)

(declare-fun e!122094 () Bool)

(assert (=> d!55035 (=> (not res!87798) (not e!122094))))

(declare-fun simpleValid!181 (LongMapFixedSize!2562) Bool)

(assert (=> d!55035 (= res!87798 (simpleValid!181 thiss!1248))))

(assert (=> d!55035 (= (valid!1049 thiss!1248) e!122094)))

(declare-fun b!185542 () Bool)

(declare-fun res!87799 () Bool)

(assert (=> b!185542 (=> (not res!87799) (not e!122094))))

(declare-fun arrayCountValidKeys!0 (array!7888 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!185542 (= res!87799 (= (arrayCountValidKeys!0 (_keys!5721 thiss!1248) #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))) (_size!1330 thiss!1248)))))

(declare-fun b!185543 () Bool)

(declare-fun res!87800 () Bool)

(assert (=> b!185543 (=> (not res!87800) (not e!122094))))

(assert (=> b!185543 (= res!87800 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5721 thiss!1248) (mask!8890 thiss!1248)))))

(declare-fun b!185544 () Bool)

(assert (=> b!185544 (= e!122094 (arrayNoDuplicates!0 (_keys!5721 thiss!1248) #b00000000000000000000000000000000 Nil!2379))))

(assert (= (and d!55035 res!87798) b!185542))

(assert (= (and b!185542 res!87799) b!185543))

(assert (= (and b!185543 res!87800) b!185544))

(declare-fun m!212745 () Bool)

(assert (=> d!55035 m!212745))

(declare-fun m!212747 () Bool)

(assert (=> b!185542 m!212747))

(assert (=> b!185543 m!212721))

(assert (=> b!185544 m!212717))

(assert (=> start!18786 d!55035))

(declare-fun bm!18710 () Bool)

(declare-fun call!18713 () Bool)

(assert (=> bm!18710 (= call!18713 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!5721 thiss!1248) (mask!8890 thiss!1248)))))

(declare-fun b!185553 () Bool)

(declare-fun e!122102 () Bool)

(assert (=> b!185553 (= e!122102 call!18713)))

(declare-fun b!185554 () Bool)

(declare-fun e!122101 () Bool)

(assert (=> b!185554 (= e!122102 e!122101)))

(declare-fun lt!91785 () (_ BitVec 64))

(assert (=> b!185554 (= lt!91785 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000))))

(declare-datatypes ((Unit!5589 0))(
  ( (Unit!5590) )
))
(declare-fun lt!91786 () Unit!5589)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!7888 (_ BitVec 64) (_ BitVec 32)) Unit!5589)

(assert (=> b!185554 (= lt!91786 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!5721 thiss!1248) lt!91785 #b00000000000000000000000000000000))))

(declare-fun arrayContainsKey!0 (array!7888 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!185554 (arrayContainsKey!0 (_keys!5721 thiss!1248) lt!91785 #b00000000000000000000000000000000)))

(declare-fun lt!91784 () Unit!5589)

(assert (=> b!185554 (= lt!91784 lt!91786)))

(declare-fun res!87806 () Bool)

(assert (=> b!185554 (= res!87806 (= (seekEntryOrOpen!0 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000) (_keys!5721 thiss!1248) (mask!8890 thiss!1248)) (Found!644 #b00000000000000000000000000000000)))))

(assert (=> b!185554 (=> (not res!87806) (not e!122101))))

(declare-fun b!185555 () Bool)

(assert (=> b!185555 (= e!122101 call!18713)))

(declare-fun d!55037 () Bool)

(declare-fun res!87805 () Bool)

(declare-fun e!122103 () Bool)

(assert (=> d!55037 (=> res!87805 e!122103)))

(assert (=> d!55037 (= res!87805 (bvsge #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))))))

(assert (=> d!55037 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5721 thiss!1248) (mask!8890 thiss!1248)) e!122103)))

(declare-fun b!185556 () Bool)

(assert (=> b!185556 (= e!122103 e!122102)))

(declare-fun c!33270 () Bool)

(assert (=> b!185556 (= c!33270 (validKeyInArray!0 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (= (and d!55037 (not res!87805)) b!185556))

(assert (= (and b!185556 c!33270) b!185554))

(assert (= (and b!185556 (not c!33270)) b!185553))

(assert (= (and b!185554 res!87806) b!185555))

(assert (= (or b!185555 b!185553) bm!18710))

(declare-fun m!212749 () Bool)

(assert (=> bm!18710 m!212749))

(declare-fun m!212751 () Bool)

(assert (=> b!185554 m!212751))

(declare-fun m!212753 () Bool)

(assert (=> b!185554 m!212753))

(declare-fun m!212755 () Bool)

(assert (=> b!185554 m!212755))

(assert (=> b!185554 m!212751))

(declare-fun m!212757 () Bool)

(assert (=> b!185554 m!212757))

(assert (=> b!185556 m!212751))

(assert (=> b!185556 m!212751))

(declare-fun m!212759 () Bool)

(assert (=> b!185556 m!212759))

(assert (=> b!185495 d!55037))

(declare-fun d!55039 () Bool)

(assert (=> d!55039 (= (array_inv!2401 (_keys!5721 thiss!1248)) (bvsge (size!4040 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185491 d!55039))

(declare-fun d!55041 () Bool)

(assert (=> d!55041 (= (array_inv!2402 (_values!3765 thiss!1248)) (bvsge (size!4041 (_values!3765 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185491 d!55041))

(declare-fun d!55043 () Bool)

(declare-fun lt!91794 () SeekEntryResult!644)

(assert (=> d!55043 (and (or ((_ is Undefined!644) lt!91794) (not ((_ is Found!644) lt!91794)) (and (bvsge (index!4747 lt!91794) #b00000000000000000000000000000000) (bvslt (index!4747 lt!91794) (size!4040 (_keys!5721 thiss!1248))))) (or ((_ is Undefined!644) lt!91794) ((_ is Found!644) lt!91794) (not ((_ is MissingZero!644) lt!91794)) (and (bvsge (index!4746 lt!91794) #b00000000000000000000000000000000) (bvslt (index!4746 lt!91794) (size!4040 (_keys!5721 thiss!1248))))) (or ((_ is Undefined!644) lt!91794) ((_ is Found!644) lt!91794) ((_ is MissingZero!644) lt!91794) (not ((_ is MissingVacant!644) lt!91794)) (and (bvsge (index!4749 lt!91794) #b00000000000000000000000000000000) (bvslt (index!4749 lt!91794) (size!4040 (_keys!5721 thiss!1248))))) (or ((_ is Undefined!644) lt!91794) (ite ((_ is Found!644) lt!91794) (= (select (arr!3724 (_keys!5721 thiss!1248)) (index!4747 lt!91794)) key!828) (ite ((_ is MissingZero!644) lt!91794) (= (select (arr!3724 (_keys!5721 thiss!1248)) (index!4746 lt!91794)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!644) lt!91794) (= (select (arr!3724 (_keys!5721 thiss!1248)) (index!4749 lt!91794)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!122112 () SeekEntryResult!644)

(assert (=> d!55043 (= lt!91794 e!122112)))

(declare-fun c!33277 () Bool)

(declare-fun lt!91793 () SeekEntryResult!644)

(assert (=> d!55043 (= c!33277 (and ((_ is Intermediate!644) lt!91793) (undefined!1456 lt!91793)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7888 (_ BitVec 32)) SeekEntryResult!644)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!55043 (= lt!91793 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8890 thiss!1248)) key!828 (_keys!5721 thiss!1248) (mask!8890 thiss!1248)))))

(assert (=> d!55043 (validMask!0 (mask!8890 thiss!1248))))

(assert (=> d!55043 (= (seekEntryOrOpen!0 key!828 (_keys!5721 thiss!1248) (mask!8890 thiss!1248)) lt!91794)))

(declare-fun b!185569 () Bool)

(declare-fun c!33279 () Bool)

(declare-fun lt!91795 () (_ BitVec 64))

(assert (=> b!185569 (= c!33279 (= lt!91795 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!122110 () SeekEntryResult!644)

(declare-fun e!122111 () SeekEntryResult!644)

(assert (=> b!185569 (= e!122110 e!122111)))

(declare-fun b!185570 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7888 (_ BitVec 32)) SeekEntryResult!644)

(assert (=> b!185570 (= e!122111 (seekKeyOrZeroReturnVacant!0 (x!20156 lt!91793) (index!4748 lt!91793) (index!4748 lt!91793) key!828 (_keys!5721 thiss!1248) (mask!8890 thiss!1248)))))

(declare-fun b!185571 () Bool)

(assert (=> b!185571 (= e!122111 (MissingZero!644 (index!4748 lt!91793)))))

(declare-fun b!185572 () Bool)

(assert (=> b!185572 (= e!122110 (Found!644 (index!4748 lt!91793)))))

(declare-fun b!185573 () Bool)

(assert (=> b!185573 (= e!122112 Undefined!644)))

(declare-fun b!185574 () Bool)

(assert (=> b!185574 (= e!122112 e!122110)))

(assert (=> b!185574 (= lt!91795 (select (arr!3724 (_keys!5721 thiss!1248)) (index!4748 lt!91793)))))

(declare-fun c!33278 () Bool)

(assert (=> b!185574 (= c!33278 (= lt!91795 key!828))))

(assert (= (and d!55043 c!33277) b!185573))

(assert (= (and d!55043 (not c!33277)) b!185574))

(assert (= (and b!185574 c!33278) b!185572))

(assert (= (and b!185574 (not c!33278)) b!185569))

(assert (= (and b!185569 c!33279) b!185571))

(assert (= (and b!185569 (not c!33279)) b!185570))

(assert (=> d!55043 m!212711))

(declare-fun m!212761 () Bool)

(assert (=> d!55043 m!212761))

(declare-fun m!212763 () Bool)

(assert (=> d!55043 m!212763))

(declare-fun m!212765 () Bool)

(assert (=> d!55043 m!212765))

(assert (=> d!55043 m!212765))

(declare-fun m!212767 () Bool)

(assert (=> d!55043 m!212767))

(declare-fun m!212769 () Bool)

(assert (=> d!55043 m!212769))

(declare-fun m!212771 () Bool)

(assert (=> b!185570 m!212771))

(declare-fun m!212773 () Bool)

(assert (=> b!185574 m!212773))

(assert (=> b!185489 d!55043))

(declare-fun bm!18713 () Bool)

(declare-fun call!18716 () Bool)

(declare-fun c!33282 () Bool)

(assert (=> bm!18713 (= call!18716 (arrayNoDuplicates!0 (_keys!5721 thiss!1248) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!33282 (Cons!2378 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000) Nil!2379) Nil!2379)))))

(declare-fun b!185585 () Bool)

(declare-fun e!122124 () Bool)

(declare-fun e!122123 () Bool)

(assert (=> b!185585 (= e!122124 e!122123)))

(assert (=> b!185585 (= c!33282 (validKeyInArray!0 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun d!55045 () Bool)

(declare-fun res!87814 () Bool)

(declare-fun e!122122 () Bool)

(assert (=> d!55045 (=> res!87814 e!122122)))

(assert (=> d!55045 (= res!87814 (bvsge #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))))))

(assert (=> d!55045 (= (arrayNoDuplicates!0 (_keys!5721 thiss!1248) #b00000000000000000000000000000000 Nil!2379) e!122122)))

(declare-fun b!185586 () Bool)

(assert (=> b!185586 (= e!122123 call!18716)))

(declare-fun b!185587 () Bool)

(assert (=> b!185587 (= e!122122 e!122124)))

(declare-fun res!87815 () Bool)

(assert (=> b!185587 (=> (not res!87815) (not e!122124))))

(declare-fun e!122121 () Bool)

(assert (=> b!185587 (= res!87815 (not e!122121))))

(declare-fun res!87813 () Bool)

(assert (=> b!185587 (=> (not res!87813) (not e!122121))))

(assert (=> b!185587 (= res!87813 (validKeyInArray!0 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!185588 () Bool)

(declare-fun contains!1294 (List!2382 (_ BitVec 64)) Bool)

(assert (=> b!185588 (= e!122121 (contains!1294 Nil!2379 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!185589 () Bool)

(assert (=> b!185589 (= e!122123 call!18716)))

(assert (= (and d!55045 (not res!87814)) b!185587))

(assert (= (and b!185587 res!87813) b!185588))

(assert (= (and b!185587 res!87815) b!185585))

(assert (= (and b!185585 c!33282) b!185586))

(assert (= (and b!185585 (not c!33282)) b!185589))

(assert (= (or b!185586 b!185589) bm!18713))

(assert (=> bm!18713 m!212751))

(declare-fun m!212775 () Bool)

(assert (=> bm!18713 m!212775))

(assert (=> b!185585 m!212751))

(assert (=> b!185585 m!212751))

(assert (=> b!185585 m!212759))

(assert (=> b!185587 m!212751))

(assert (=> b!185587 m!212751))

(assert (=> b!185587 m!212759))

(assert (=> b!185588 m!212751))

(assert (=> b!185588 m!212751))

(declare-fun m!212777 () Bool)

(assert (=> b!185588 m!212777))

(assert (=> b!185499 d!55045))

(declare-fun d!55047 () Bool)

(assert (=> d!55047 (= (validMask!0 (mask!8890 thiss!1248)) (and (or (= (mask!8890 thiss!1248) #b00000000000000000000000000000111) (= (mask!8890 thiss!1248) #b00000000000000000000000000001111) (= (mask!8890 thiss!1248) #b00000000000000000000000000011111) (= (mask!8890 thiss!1248) #b00000000000000000000000000111111) (= (mask!8890 thiss!1248) #b00000000000000000000000001111111) (= (mask!8890 thiss!1248) #b00000000000000000000000011111111) (= (mask!8890 thiss!1248) #b00000000000000000000000111111111) (= (mask!8890 thiss!1248) #b00000000000000000000001111111111) (= (mask!8890 thiss!1248) #b00000000000000000000011111111111) (= (mask!8890 thiss!1248) #b00000000000000000000111111111111) (= (mask!8890 thiss!1248) #b00000000000000000001111111111111) (= (mask!8890 thiss!1248) #b00000000000000000011111111111111) (= (mask!8890 thiss!1248) #b00000000000000000111111111111111) (= (mask!8890 thiss!1248) #b00000000000000001111111111111111) (= (mask!8890 thiss!1248) #b00000000000000011111111111111111) (= (mask!8890 thiss!1248) #b00000000000000111111111111111111) (= (mask!8890 thiss!1248) #b00000000000001111111111111111111) (= (mask!8890 thiss!1248) #b00000000000011111111111111111111) (= (mask!8890 thiss!1248) #b00000000000111111111111111111111) (= (mask!8890 thiss!1248) #b00000000001111111111111111111111) (= (mask!8890 thiss!1248) #b00000000011111111111111111111111) (= (mask!8890 thiss!1248) #b00000000111111111111111111111111) (= (mask!8890 thiss!1248) #b00000001111111111111111111111111) (= (mask!8890 thiss!1248) #b00000011111111111111111111111111) (= (mask!8890 thiss!1248) #b00000111111111111111111111111111) (= (mask!8890 thiss!1248) #b00001111111111111111111111111111) (= (mask!8890 thiss!1248) #b00011111111111111111111111111111) (= (mask!8890 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8890 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!185494 d!55047))

(declare-fun d!55049 () Bool)

(declare-fun e!122130 () Bool)

(assert (=> d!55049 e!122130))

(declare-fun res!87818 () Bool)

(assert (=> d!55049 (=> res!87818 e!122130)))

(declare-fun lt!91805 () Bool)

(assert (=> d!55049 (= res!87818 (not lt!91805))))

(declare-fun lt!91806 () Bool)

(assert (=> d!55049 (= lt!91805 lt!91806)))

(declare-fun lt!91804 () Unit!5589)

(declare-fun e!122129 () Unit!5589)

(assert (=> d!55049 (= lt!91804 e!122129)))

(declare-fun c!33285 () Bool)

(assert (=> d!55049 (= c!33285 lt!91806)))

(declare-fun containsKey!226 (List!2381 (_ BitVec 64)) Bool)

(assert (=> d!55049 (= lt!91806 (containsKey!226 (toList!1204 (getCurrentListMap!847 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248))) key!828))))

(assert (=> d!55049 (= (contains!1293 (getCurrentListMap!847 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)) key!828) lt!91805)))

(declare-fun b!185596 () Bool)

(declare-fun lt!91807 () Unit!5589)

(assert (=> b!185596 (= e!122129 lt!91807)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!175 (List!2381 (_ BitVec 64)) Unit!5589)

(assert (=> b!185596 (= lt!91807 (lemmaContainsKeyImpliesGetValueByKeyDefined!175 (toList!1204 (getCurrentListMap!847 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248))) key!828))))

(declare-datatypes ((Option!228 0))(
  ( (Some!227 (v!4123 V!5435)) (None!226) )
))
(declare-fun isDefined!176 (Option!228) Bool)

(declare-fun getValueByKey!222 (List!2381 (_ BitVec 64)) Option!228)

(assert (=> b!185596 (isDefined!176 (getValueByKey!222 (toList!1204 (getCurrentListMap!847 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248))) key!828))))

(declare-fun b!185597 () Bool)

(declare-fun Unit!5591 () Unit!5589)

(assert (=> b!185597 (= e!122129 Unit!5591)))

(declare-fun b!185598 () Bool)

(assert (=> b!185598 (= e!122130 (isDefined!176 (getValueByKey!222 (toList!1204 (getCurrentListMap!847 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248))) key!828)))))

(assert (= (and d!55049 c!33285) b!185596))

(assert (= (and d!55049 (not c!33285)) b!185597))

(assert (= (and d!55049 (not res!87818)) b!185598))

(declare-fun m!212779 () Bool)

(assert (=> d!55049 m!212779))

(declare-fun m!212781 () Bool)

(assert (=> b!185596 m!212781))

(declare-fun m!212783 () Bool)

(assert (=> b!185596 m!212783))

(assert (=> b!185596 m!212783))

(declare-fun m!212785 () Bool)

(assert (=> b!185596 m!212785))

(assert (=> b!185598 m!212783))

(assert (=> b!185598 m!212783))

(assert (=> b!185598 m!212785))

(assert (=> b!185490 d!55049))

(declare-fun b!185641 () Bool)

(declare-fun e!122168 () Bool)

(declare-fun lt!91860 () ListLongMap!2377)

(declare-fun apply!166 (ListLongMap!2377 (_ BitVec 64)) V!5435)

(assert (=> b!185641 (= e!122168 (= (apply!166 lt!91860 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3623 thiss!1248)))))

(declare-fun bm!18728 () Bool)

(declare-fun call!18737 () ListLongMap!2377)

(declare-fun getCurrentListMapNoExtraKeys!196 (array!7888 array!7890 (_ BitVec 32) (_ BitVec 32) V!5435 V!5435 (_ BitVec 32) Int) ListLongMap!2377)

(assert (=> bm!18728 (= call!18737 (getCurrentListMapNoExtraKeys!196 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)))))

(declare-fun b!185642 () Bool)

(declare-fun e!122159 () ListLongMap!2377)

(declare-fun call!18734 () ListLongMap!2377)

(assert (=> b!185642 (= e!122159 call!18734)))

(declare-fun b!185643 () Bool)

(declare-fun e!122165 () ListLongMap!2377)

(declare-fun call!18732 () ListLongMap!2377)

(assert (=> b!185643 (= e!122165 call!18732)))

(declare-fun b!185644 () Bool)

(declare-fun e!122157 () Bool)

(declare-fun e!122163 () Bool)

(assert (=> b!185644 (= e!122157 e!122163)))

(declare-fun c!33302 () Bool)

(assert (=> b!185644 (= c!33302 (not (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18729 () Bool)

(declare-fun call!18731 () ListLongMap!2377)

(assert (=> bm!18729 (= call!18731 call!18737)))

(declare-fun bm!18730 () Bool)

(declare-fun call!18736 () Bool)

(assert (=> bm!18730 (= call!18736 (contains!1293 lt!91860 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!18731 () Bool)

(declare-fun call!18735 () Bool)

(assert (=> bm!18731 (= call!18735 (contains!1293 lt!91860 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!185645 () Bool)

(declare-fun e!122166 () Unit!5589)

(declare-fun Unit!5592 () Unit!5589)

(assert (=> b!185645 (= e!122166 Unit!5592)))

(declare-fun d!55051 () Bool)

(assert (=> d!55051 e!122157))

(declare-fun res!87845 () Bool)

(assert (=> d!55051 (=> (not res!87845) (not e!122157))))

(assert (=> d!55051 (= res!87845 (or (bvsge #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))))))))

(declare-fun lt!91855 () ListLongMap!2377)

(assert (=> d!55051 (= lt!91860 lt!91855)))

(declare-fun lt!91872 () Unit!5589)

(assert (=> d!55051 (= lt!91872 e!122166)))

(declare-fun c!33301 () Bool)

(declare-fun e!122169 () Bool)

(assert (=> d!55051 (= c!33301 e!122169)))

(declare-fun res!87843 () Bool)

(assert (=> d!55051 (=> (not res!87843) (not e!122169))))

(assert (=> d!55051 (= res!87843 (bvslt #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))))))

(declare-fun e!122158 () ListLongMap!2377)

(assert (=> d!55051 (= lt!91855 e!122158)))

(declare-fun c!33298 () Bool)

(assert (=> d!55051 (= c!33298 (and (not (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!55051 (validMask!0 (mask!8890 thiss!1248))))

(assert (=> d!55051 (= (getCurrentListMap!847 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)) lt!91860)))

(declare-fun b!185646 () Bool)

(declare-fun call!18733 () ListLongMap!2377)

(declare-fun +!281 (ListLongMap!2377 tuple2!3446) ListLongMap!2377)

(assert (=> b!185646 (= e!122158 (+!281 call!18733 (tuple2!3447 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3623 thiss!1248))))))

(declare-fun b!185647 () Bool)

(declare-fun e!122162 () Bool)

(assert (=> b!185647 (= e!122163 e!122162)))

(declare-fun res!87838 () Bool)

(assert (=> b!185647 (= res!87838 call!18736)))

(assert (=> b!185647 (=> (not res!87838) (not e!122162))))

(declare-fun b!185648 () Bool)

(assert (=> b!185648 (= e!122163 (not call!18736))))

(declare-fun b!185649 () Bool)

(declare-fun e!122161 () Bool)

(declare-fun get!2142 (ValueCell!1827 V!5435) V!5435)

(declare-fun dynLambda!504 (Int (_ BitVec 64)) V!5435)

(assert (=> b!185649 (= e!122161 (= (apply!166 lt!91860 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)) (get!2142 (select (arr!3725 (_values!3765 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!504 (defaultEntry!3782 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!185649 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4041 (_values!3765 thiss!1248))))))

(assert (=> b!185649 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))))))

(declare-fun b!185650 () Bool)

(assert (=> b!185650 (= e!122169 (validKeyInArray!0 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun c!33300 () Bool)

(declare-fun bm!18732 () Bool)

(assert (=> bm!18732 (= call!18733 (+!281 (ite c!33298 call!18737 (ite c!33300 call!18731 call!18734)) (ite (or c!33298 c!33300) (tuple2!3447 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3623 thiss!1248)) (tuple2!3447 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3623 thiss!1248)))))))

(declare-fun b!185651 () Bool)

(declare-fun e!122164 () Bool)

(assert (=> b!185651 (= e!122164 (validKeyInArray!0 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!185652 () Bool)

(declare-fun res!87840 () Bool)

(assert (=> b!185652 (=> (not res!87840) (not e!122157))))

(declare-fun e!122167 () Bool)

(assert (=> b!185652 (= res!87840 e!122167)))

(declare-fun c!33299 () Bool)

(assert (=> b!185652 (= c!33299 (not (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!18733 () Bool)

(assert (=> bm!18733 (= call!18732 call!18733)))

(declare-fun b!185653 () Bool)

(assert (=> b!185653 (= e!122167 (not call!18735))))

(declare-fun b!185654 () Bool)

(assert (=> b!185654 (= e!122162 (= (apply!166 lt!91860 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3623 thiss!1248)))))

(declare-fun b!185655 () Bool)

(declare-fun lt!91852 () Unit!5589)

(assert (=> b!185655 (= e!122166 lt!91852)))

(declare-fun lt!91871 () ListLongMap!2377)

(assert (=> b!185655 (= lt!91871 (getCurrentListMapNoExtraKeys!196 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)))))

(declare-fun lt!91862 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91862 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91873 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91873 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91864 () Unit!5589)

(declare-fun addStillContains!142 (ListLongMap!2377 (_ BitVec 64) V!5435 (_ BitVec 64)) Unit!5589)

(assert (=> b!185655 (= lt!91864 (addStillContains!142 lt!91871 lt!91862 (zeroValue!3623 thiss!1248) lt!91873))))

(assert (=> b!185655 (contains!1293 (+!281 lt!91871 (tuple2!3447 lt!91862 (zeroValue!3623 thiss!1248))) lt!91873)))

(declare-fun lt!91859 () Unit!5589)

(assert (=> b!185655 (= lt!91859 lt!91864)))

(declare-fun lt!91854 () ListLongMap!2377)

(assert (=> b!185655 (= lt!91854 (getCurrentListMapNoExtraKeys!196 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)))))

(declare-fun lt!91863 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91863 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91865 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91865 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91869 () Unit!5589)

(declare-fun addApplyDifferent!142 (ListLongMap!2377 (_ BitVec 64) V!5435 (_ BitVec 64)) Unit!5589)

(assert (=> b!185655 (= lt!91869 (addApplyDifferent!142 lt!91854 lt!91863 (minValue!3623 thiss!1248) lt!91865))))

(assert (=> b!185655 (= (apply!166 (+!281 lt!91854 (tuple2!3447 lt!91863 (minValue!3623 thiss!1248))) lt!91865) (apply!166 lt!91854 lt!91865))))

(declare-fun lt!91856 () Unit!5589)

(assert (=> b!185655 (= lt!91856 lt!91869)))

(declare-fun lt!91870 () ListLongMap!2377)

(assert (=> b!185655 (= lt!91870 (getCurrentListMapNoExtraKeys!196 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)))))

(declare-fun lt!91858 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91858 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91861 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91861 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!91853 () Unit!5589)

(assert (=> b!185655 (= lt!91853 (addApplyDifferent!142 lt!91870 lt!91858 (zeroValue!3623 thiss!1248) lt!91861))))

(assert (=> b!185655 (= (apply!166 (+!281 lt!91870 (tuple2!3447 lt!91858 (zeroValue!3623 thiss!1248))) lt!91861) (apply!166 lt!91870 lt!91861))))

(declare-fun lt!91867 () Unit!5589)

(assert (=> b!185655 (= lt!91867 lt!91853)))

(declare-fun lt!91857 () ListLongMap!2377)

(assert (=> b!185655 (= lt!91857 (getCurrentListMapNoExtraKeys!196 (_keys!5721 thiss!1248) (_values!3765 thiss!1248) (mask!8890 thiss!1248) (extraKeys!3519 thiss!1248) (zeroValue!3623 thiss!1248) (minValue!3623 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3782 thiss!1248)))))

(declare-fun lt!91868 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91868 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!91866 () (_ BitVec 64))

(assert (=> b!185655 (= lt!91866 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!185655 (= lt!91852 (addApplyDifferent!142 lt!91857 lt!91868 (minValue!3623 thiss!1248) lt!91866))))

(assert (=> b!185655 (= (apply!166 (+!281 lt!91857 (tuple2!3447 lt!91868 (minValue!3623 thiss!1248))) lt!91866) (apply!166 lt!91857 lt!91866))))

(declare-fun b!185656 () Bool)

(assert (=> b!185656 (= e!122159 call!18732)))

(declare-fun b!185657 () Bool)

(declare-fun e!122160 () Bool)

(assert (=> b!185657 (= e!122160 e!122161)))

(declare-fun res!87841 () Bool)

(assert (=> b!185657 (=> (not res!87841) (not e!122161))))

(assert (=> b!185657 (= res!87841 (contains!1293 lt!91860 (select (arr!3724 (_keys!5721 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!185657 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))))))

(declare-fun b!185658 () Bool)

(declare-fun res!87844 () Bool)

(assert (=> b!185658 (=> (not res!87844) (not e!122157))))

(assert (=> b!185658 (= res!87844 e!122160)))

(declare-fun res!87842 () Bool)

(assert (=> b!185658 (=> res!87842 e!122160)))

(assert (=> b!185658 (= res!87842 (not e!122164))))

(declare-fun res!87837 () Bool)

(assert (=> b!185658 (=> (not res!87837) (not e!122164))))

(assert (=> b!185658 (= res!87837 (bvslt #b00000000000000000000000000000000 (size!4040 (_keys!5721 thiss!1248))))))

(declare-fun b!185659 () Bool)

(declare-fun c!33303 () Bool)

(assert (=> b!185659 (= c!33303 (and (not (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!185659 (= e!122165 e!122159)))

(declare-fun bm!18734 () Bool)

(assert (=> bm!18734 (= call!18734 call!18731)))

(declare-fun b!185660 () Bool)

(assert (=> b!185660 (= e!122158 e!122165)))

(assert (=> b!185660 (= c!33300 (and (not (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3519 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!185661 () Bool)

(assert (=> b!185661 (= e!122167 e!122168)))

(declare-fun res!87839 () Bool)

(assert (=> b!185661 (= res!87839 call!18735)))

(assert (=> b!185661 (=> (not res!87839) (not e!122168))))

(assert (= (and d!55051 c!33298) b!185646))

(assert (= (and d!55051 (not c!33298)) b!185660))

(assert (= (and b!185660 c!33300) b!185643))

(assert (= (and b!185660 (not c!33300)) b!185659))

(assert (= (and b!185659 c!33303) b!185656))

(assert (= (and b!185659 (not c!33303)) b!185642))

(assert (= (or b!185656 b!185642) bm!18734))

(assert (= (or b!185643 bm!18734) bm!18729))

(assert (= (or b!185643 b!185656) bm!18733))

(assert (= (or b!185646 bm!18729) bm!18728))

(assert (= (or b!185646 bm!18733) bm!18732))

(assert (= (and d!55051 res!87843) b!185650))

(assert (= (and d!55051 c!33301) b!185655))

(assert (= (and d!55051 (not c!33301)) b!185645))

(assert (= (and d!55051 res!87845) b!185658))

(assert (= (and b!185658 res!87837) b!185651))

(assert (= (and b!185658 (not res!87842)) b!185657))

(assert (= (and b!185657 res!87841) b!185649))

(assert (= (and b!185658 res!87844) b!185652))

(assert (= (and b!185652 c!33299) b!185661))

(assert (= (and b!185652 (not c!33299)) b!185653))

(assert (= (and b!185661 res!87839) b!185641))

(assert (= (or b!185661 b!185653) bm!18731))

(assert (= (and b!185652 res!87840) b!185644))

(assert (= (and b!185644 c!33302) b!185647))

(assert (= (and b!185644 (not c!33302)) b!185648))

(assert (= (and b!185647 res!87838) b!185654))

(assert (= (or b!185647 b!185648) bm!18730))

(declare-fun b_lambda!7281 () Bool)

(assert (=> (not b_lambda!7281) (not b!185649)))

(declare-fun t!7274 () Bool)

(declare-fun tb!2851 () Bool)

(assert (=> (and b!185491 (= (defaultEntry!3782 thiss!1248) (defaultEntry!3782 thiss!1248)) t!7274) tb!2851))

(declare-fun result!4815 () Bool)

(assert (=> tb!2851 (= result!4815 tp_is_empty!4341)))

(assert (=> b!185649 t!7274))

(declare-fun b_and!11191 () Bool)

(assert (= b_and!11187 (and (=> t!7274 result!4815) b_and!11191)))

(assert (=> d!55051 m!212711))

(declare-fun m!212787 () Bool)

(assert (=> bm!18731 m!212787))

(assert (=> b!185651 m!212751))

(assert (=> b!185651 m!212751))

(assert (=> b!185651 m!212759))

(declare-fun m!212789 () Bool)

(assert (=> bm!18728 m!212789))

(declare-fun m!212791 () Bool)

(assert (=> b!185649 m!212791))

(assert (=> b!185649 m!212751))

(declare-fun m!212793 () Bool)

(assert (=> b!185649 m!212793))

(declare-fun m!212795 () Bool)

(assert (=> b!185649 m!212795))

(assert (=> b!185649 m!212751))

(assert (=> b!185649 m!212795))

(assert (=> b!185649 m!212791))

(declare-fun m!212797 () Bool)

(assert (=> b!185649 m!212797))

(assert (=> b!185650 m!212751))

(assert (=> b!185650 m!212751))

(assert (=> b!185650 m!212759))

(declare-fun m!212799 () Bool)

(assert (=> bm!18732 m!212799))

(declare-fun m!212801 () Bool)

(assert (=> b!185654 m!212801))

(declare-fun m!212803 () Bool)

(assert (=> b!185655 m!212803))

(declare-fun m!212805 () Bool)

(assert (=> b!185655 m!212805))

(declare-fun m!212807 () Bool)

(assert (=> b!185655 m!212807))

(assert (=> b!185655 m!212805))

(declare-fun m!212809 () Bool)

(assert (=> b!185655 m!212809))

(declare-fun m!212811 () Bool)

(assert (=> b!185655 m!212811))

(declare-fun m!212813 () Bool)

(assert (=> b!185655 m!212813))

(assert (=> b!185655 m!212803))

(declare-fun m!212815 () Bool)

(assert (=> b!185655 m!212815))

(declare-fun m!212817 () Bool)

(assert (=> b!185655 m!212817))

(declare-fun m!212819 () Bool)

(assert (=> b!185655 m!212819))

(declare-fun m!212821 () Bool)

(assert (=> b!185655 m!212821))

(declare-fun m!212823 () Bool)

(assert (=> b!185655 m!212823))

(declare-fun m!212825 () Bool)

(assert (=> b!185655 m!212825))

(declare-fun m!212827 () Bool)

(assert (=> b!185655 m!212827))

(assert (=> b!185655 m!212811))

(declare-fun m!212829 () Bool)

(assert (=> b!185655 m!212829))

(declare-fun m!212831 () Bool)

(assert (=> b!185655 m!212831))

(assert (=> b!185655 m!212823))

(assert (=> b!185655 m!212751))

(assert (=> b!185655 m!212789))

(declare-fun m!212833 () Bool)

(assert (=> b!185646 m!212833))

(assert (=> b!185657 m!212751))

(assert (=> b!185657 m!212751))

(declare-fun m!212835 () Bool)

(assert (=> b!185657 m!212835))

(declare-fun m!212837 () Bool)

(assert (=> bm!18730 m!212837))

(declare-fun m!212839 () Bool)

(assert (=> b!185641 m!212839))

(assert (=> b!185490 d!55051))

(declare-fun b!185671 () Bool)

(declare-fun e!122174 () Bool)

(assert (=> b!185671 (= e!122174 tp_is_empty!4341)))

(declare-fun b!185670 () Bool)

(declare-fun e!122175 () Bool)

(assert (=> b!185670 (= e!122175 tp_is_empty!4341)))

(declare-fun mapIsEmpty!7476 () Bool)

(declare-fun mapRes!7476 () Bool)

(assert (=> mapIsEmpty!7476 mapRes!7476))

(declare-fun mapNonEmpty!7476 () Bool)

(declare-fun tp!16512 () Bool)

(assert (=> mapNonEmpty!7476 (= mapRes!7476 (and tp!16512 e!122175))))

(declare-fun mapRest!7476 () (Array (_ BitVec 32) ValueCell!1827))

(declare-fun mapValue!7476 () ValueCell!1827)

(declare-fun mapKey!7476 () (_ BitVec 32))

(assert (=> mapNonEmpty!7476 (= mapRest!7470 (store mapRest!7476 mapKey!7476 mapValue!7476))))

(declare-fun condMapEmpty!7476 () Bool)

(declare-fun mapDefault!7476 () ValueCell!1827)

(assert (=> mapNonEmpty!7470 (= condMapEmpty!7476 (= mapRest!7470 ((as const (Array (_ BitVec 32) ValueCell!1827)) mapDefault!7476)))))

(assert (=> mapNonEmpty!7470 (= tp!16502 (and e!122174 mapRes!7476))))

(assert (= (and mapNonEmpty!7470 condMapEmpty!7476) mapIsEmpty!7476))

(assert (= (and mapNonEmpty!7470 (not condMapEmpty!7476)) mapNonEmpty!7476))

(assert (= (and mapNonEmpty!7476 ((_ is ValueCellFull!1827) mapValue!7476)) b!185670))

(assert (= (and mapNonEmpty!7470 ((_ is ValueCellFull!1827) mapDefault!7476)) b!185671))

(declare-fun m!212841 () Bool)

(assert (=> mapNonEmpty!7476 m!212841))

(declare-fun b_lambda!7283 () Bool)

(assert (= b_lambda!7281 (or (and b!185491 b_free!4569) b_lambda!7283)))

(check-sat (not b_next!4569) (not b!185570) (not bm!18730) (not bm!18732) (not d!55049) (not b!185585) (not b!185651) (not b_lambda!7283) (not b!185598) (not d!55051) (not bm!18710) (not b!185556) (not d!55035) (not b!185641) (not b!185596) (not d!55043) tp_is_empty!4341 (not b!185657) (not b!185554) (not b!185542) (not b!185587) (not b!185650) (not bm!18728) (not bm!18713) (not b!185655) (not b!185543) (not b!185646) (not mapNonEmpty!7476) (not b!185649) b_and!11191 (not b!185588) (not b!185544) (not bm!18731) (not b!185654))
(check-sat b_and!11191 (not b_next!4569))
