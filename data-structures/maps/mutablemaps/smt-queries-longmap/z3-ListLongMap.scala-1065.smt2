; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22086 () Bool)

(assert start!22086)

(declare-fun b!228737 () Bool)

(declare-fun b_free!6141 () Bool)

(declare-fun b_next!6141 () Bool)

(assert (=> b!228737 (= b_free!6141 (not b_next!6141))))

(declare-fun tp!21565 () Bool)

(declare-fun b_and!13057 () Bool)

(assert (=> b!228737 (= tp!21565 b_and!13057)))

(declare-fun b!228736 () Bool)

(declare-fun e!148411 () Bool)

(declare-fun e!148413 () Bool)

(assert (=> b!228736 (= e!148411 (not e!148413))))

(declare-fun res!112606 () Bool)

(assert (=> b!228736 (=> res!112606 e!148413)))

(declare-datatypes ((V!7651 0))(
  ( (V!7652 (val!3046 Int)) )
))
(declare-datatypes ((ValueCell!2658 0))(
  ( (ValueCellFull!2658 (v!5062 V!7651)) (EmptyCell!2658) )
))
(declare-datatypes ((array!11248 0))(
  ( (array!11249 (arr!5343 (Array (_ BitVec 32) ValueCell!2658)) (size!5676 (_ BitVec 32))) )
))
(declare-datatypes ((array!11250 0))(
  ( (array!11251 (arr!5344 (Array (_ BitVec 32) (_ BitVec 64))) (size!5677 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3216 0))(
  ( (LongMapFixedSize!3217 (defaultEntry!4267 Int) (mask!10141 (_ BitVec 32)) (extraKeys!4004 (_ BitVec 32)) (zeroValue!4108 V!7651) (minValue!4108 V!7651) (_size!1657 (_ BitVec 32)) (_keys!6321 array!11250) (_values!4250 array!11248) (_vacant!1657 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3216)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!228736 (= res!112606 (not (validMask!0 (mask!10141 thiss!1504))))))

(declare-fun lt!115116 () array!11250)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11250 (_ BitVec 32)) Bool)

(assert (=> b!228736 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!115116 (mask!10141 thiss!1504))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((Unit!6960 0))(
  ( (Unit!6961) )
))
(declare-fun lt!115120 () Unit!6960)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11250 (_ BitVec 32) (_ BitVec 32)) Unit!6960)

(assert (=> b!228736 (= lt!115120 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6321 thiss!1504) index!297 (mask!10141 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11250 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!228736 (= (arrayCountValidKeys!0 lt!115116 #b00000000000000000000000000000000 (size!5677 (_keys!6321 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6321 thiss!1504) #b00000000000000000000000000000000 (size!5677 (_keys!6321 thiss!1504)))))))

(declare-fun lt!115121 () Unit!6960)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11250 (_ BitVec 32) (_ BitVec 64)) Unit!6960)

(assert (=> b!228736 (= lt!115121 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6321 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3437 0))(
  ( (Nil!3434) (Cons!3433 (h!4081 (_ BitVec 64)) (t!8404 List!3437)) )
))
(declare-fun arrayNoDuplicates!0 (array!11250 (_ BitVec 32) List!3437) Bool)

(assert (=> b!228736 (arrayNoDuplicates!0 lt!115116 #b00000000000000000000000000000000 Nil!3434)))

(assert (=> b!228736 (= lt!115116 (array!11251 (store (arr!5344 (_keys!6321 thiss!1504)) index!297 key!932) (size!5677 (_keys!6321 thiss!1504))))))

(declare-fun lt!115112 () Unit!6960)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11250 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3437) Unit!6960)

(assert (=> b!228736 (= lt!115112 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6321 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3434))))

(declare-fun lt!115113 () Unit!6960)

(declare-fun e!148418 () Unit!6960)

(assert (=> b!228736 (= lt!115113 e!148418)))

(declare-fun c!37924 () Bool)

(declare-fun arrayContainsKey!0 (array!11250 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!228736 (= c!37924 (arrayContainsKey!0 (_keys!6321 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun tp_is_empty!6003 () Bool)

(declare-fun e!148417 () Bool)

(declare-fun e!148410 () Bool)

(declare-fun array_inv!3519 (array!11250) Bool)

(declare-fun array_inv!3520 (array!11248) Bool)

(assert (=> b!228737 (= e!148417 (and tp!21565 tp_is_empty!6003 (array_inv!3519 (_keys!6321 thiss!1504)) (array_inv!3520 (_values!4250 thiss!1504)) e!148410))))

(declare-fun b!228738 () Bool)

(declare-fun res!112600 () Bool)

(declare-fun e!148408 () Bool)

(assert (=> b!228738 (=> (not res!112600) (not e!148408))))

(declare-datatypes ((SeekEntryResult!922 0))(
  ( (MissingZero!922 (index!5858 (_ BitVec 32))) (Found!922 (index!5859 (_ BitVec 32))) (Intermediate!922 (undefined!1734 Bool) (index!5860 (_ BitVec 32)) (x!23358 (_ BitVec 32))) (Undefined!922) (MissingVacant!922 (index!5861 (_ BitVec 32))) )
))
(declare-fun lt!115119 () SeekEntryResult!922)

(assert (=> b!228738 (= res!112600 (= (select (arr!5344 (_keys!6321 thiss!1504)) (index!5858 lt!115119)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!228739 () Bool)

(declare-fun e!148415 () Bool)

(assert (=> b!228739 (= e!148415 tp_is_empty!6003)))

(declare-fun b!228740 () Bool)

(declare-fun Unit!6962 () Unit!6960)

(assert (=> b!228740 (= e!148418 Unit!6962)))

(declare-fun lt!115122 () Unit!6960)

(declare-fun lemmaArrayContainsKeyThenInListMap!111 (array!11250 array!11248 (_ BitVec 32) (_ BitVec 32) V!7651 V!7651 (_ BitVec 64) (_ BitVec 32) Int) Unit!6960)

(assert (=> b!228740 (= lt!115122 (lemmaArrayContainsKeyThenInListMap!111 (_keys!6321 thiss!1504) (_values!4250 thiss!1504) (mask!10141 thiss!1504) (extraKeys!4004 thiss!1504) (zeroValue!4108 thiss!1504) (minValue!4108 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4267 thiss!1504)))))

(assert (=> b!228740 false))

(declare-fun mapIsEmpty!10174 () Bool)

(declare-fun mapRes!10174 () Bool)

(assert (=> mapIsEmpty!10174 mapRes!10174))

(declare-fun b!228741 () Bool)

(declare-fun res!112596 () Bool)

(assert (=> b!228741 (=> res!112596 e!148413)))

(assert (=> b!228741 (= res!112596 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6321 thiss!1504) (mask!10141 thiss!1504))))))

(declare-fun b!228742 () Bool)

(assert (=> b!228742 (= e!148413 true)))

(declare-fun lt!115118 () Bool)

(assert (=> b!228742 (= lt!115118 (arrayNoDuplicates!0 (_keys!6321 thiss!1504) #b00000000000000000000000000000000 Nil!3434))))

(declare-fun b!228743 () Bool)

(declare-fun res!112601 () Bool)

(assert (=> b!228743 (=> (not res!112601) (not e!148408))))

(declare-fun call!21255 () Bool)

(assert (=> b!228743 (= res!112601 call!21255)))

(declare-fun e!148419 () Bool)

(assert (=> b!228743 (= e!148419 e!148408)))

(declare-fun b!228744 () Bool)

(declare-fun e!148414 () Bool)

(declare-fun e!148420 () Bool)

(assert (=> b!228744 (= e!148414 e!148420)))

(declare-fun res!112598 () Bool)

(assert (=> b!228744 (=> (not res!112598) (not e!148420))))

(assert (=> b!228744 (= res!112598 (or (= lt!115119 (MissingZero!922 index!297)) (= lt!115119 (MissingVacant!922 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11250 (_ BitVec 32)) SeekEntryResult!922)

(assert (=> b!228744 (= lt!115119 (seekEntryOrOpen!0 key!932 (_keys!6321 thiss!1504) (mask!10141 thiss!1504)))))

(declare-fun bm!21252 () Bool)

(declare-fun c!37922 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21252 (= call!21255 (inRange!0 (ite c!37922 (index!5858 lt!115119) (index!5861 lt!115119)) (mask!10141 thiss!1504)))))

(declare-fun res!112603 () Bool)

(assert (=> start!22086 (=> (not res!112603) (not e!148414))))

(declare-fun valid!1276 (LongMapFixedSize!3216) Bool)

(assert (=> start!22086 (= res!112603 (valid!1276 thiss!1504))))

(assert (=> start!22086 e!148414))

(assert (=> start!22086 e!148417))

(assert (=> start!22086 true))

(declare-fun b!228745 () Bool)

(declare-fun Unit!6963 () Unit!6960)

(assert (=> b!228745 (= e!148418 Unit!6963)))

(declare-fun b!228746 () Bool)

(declare-fun e!148409 () Unit!6960)

(declare-fun Unit!6964 () Unit!6960)

(assert (=> b!228746 (= e!148409 Unit!6964)))

(declare-fun lt!115114 () Unit!6960)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!276 (array!11250 array!11248 (_ BitVec 32) (_ BitVec 32) V!7651 V!7651 (_ BitVec 64) Int) Unit!6960)

(assert (=> b!228746 (= lt!115114 (lemmaInListMapThenSeekEntryOrOpenFindsIt!276 (_keys!6321 thiss!1504) (_values!4250 thiss!1504) (mask!10141 thiss!1504) (extraKeys!4004 thiss!1504) (zeroValue!4108 thiss!1504) (minValue!4108 thiss!1504) key!932 (defaultEntry!4267 thiss!1504)))))

(assert (=> b!228746 false))

(declare-fun b!228747 () Bool)

(declare-fun call!21256 () Bool)

(assert (=> b!228747 (= e!148408 (not call!21256))))

(declare-fun b!228748 () Bool)

(declare-fun res!112597 () Bool)

(assert (=> b!228748 (=> (not res!112597) (not e!148414))))

(assert (=> b!228748 (= res!112597 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!228749 () Bool)

(declare-fun e!148412 () Bool)

(declare-fun e!148406 () Bool)

(assert (=> b!228749 (= e!148412 e!148406)))

(declare-fun res!112599 () Bool)

(assert (=> b!228749 (= res!112599 call!21255)))

(assert (=> b!228749 (=> (not res!112599) (not e!148406))))

(declare-fun b!228750 () Bool)

(declare-fun e!148416 () Bool)

(assert (=> b!228750 (= e!148416 tp_is_empty!6003)))

(declare-fun b!228751 () Bool)

(declare-fun res!112604 () Bool)

(assert (=> b!228751 (=> res!112604 e!148413)))

(assert (=> b!228751 (= res!112604 (or (not (= (size!5676 (_values!4250 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10141 thiss!1504)))) (not (= (size!5677 (_keys!6321 thiss!1504)) (size!5676 (_values!4250 thiss!1504)))) (bvslt (mask!10141 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4004 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!4004 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!228752 () Bool)

(declare-fun lt!115115 () Unit!6960)

(assert (=> b!228752 (= e!148409 lt!115115)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!288 (array!11250 array!11248 (_ BitVec 32) (_ BitVec 32) V!7651 V!7651 (_ BitVec 64) Int) Unit!6960)

(assert (=> b!228752 (= lt!115115 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!288 (_keys!6321 thiss!1504) (_values!4250 thiss!1504) (mask!10141 thiss!1504) (extraKeys!4004 thiss!1504) (zeroValue!4108 thiss!1504) (minValue!4108 thiss!1504) key!932 (defaultEntry!4267 thiss!1504)))))

(get-info :version)

(assert (=> b!228752 (= c!37922 ((_ is MissingZero!922) lt!115119))))

(assert (=> b!228752 e!148419))

(declare-fun bm!21253 () Bool)

(assert (=> bm!21253 (= call!21256 (arrayContainsKey!0 (_keys!6321 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!228753 () Bool)

(declare-fun res!112602 () Bool)

(assert (=> b!228753 (= res!112602 (= (select (arr!5344 (_keys!6321 thiss!1504)) (index!5861 lt!115119)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!228753 (=> (not res!112602) (not e!148406))))

(declare-fun b!228754 () Bool)

(assert (=> b!228754 (= e!148410 (and e!148415 mapRes!10174))))

(declare-fun condMapEmpty!10174 () Bool)

(declare-fun mapDefault!10174 () ValueCell!2658)

(assert (=> b!228754 (= condMapEmpty!10174 (= (arr!5343 (_values!4250 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2658)) mapDefault!10174)))))

(declare-fun b!228755 () Bool)

(assert (=> b!228755 (= e!148412 ((_ is Undefined!922) lt!115119))))

(declare-fun b!228756 () Bool)

(assert (=> b!228756 (= e!148420 e!148411)))

(declare-fun res!112605 () Bool)

(assert (=> b!228756 (=> (not res!112605) (not e!148411))))

(assert (=> b!228756 (= res!112605 (inRange!0 index!297 (mask!10141 thiss!1504)))))

(declare-fun lt!115117 () Unit!6960)

(assert (=> b!228756 (= lt!115117 e!148409)))

(declare-fun c!37925 () Bool)

(declare-datatypes ((tuple2!4490 0))(
  ( (tuple2!4491 (_1!2255 (_ BitVec 64)) (_2!2255 V!7651)) )
))
(declare-datatypes ((List!3438 0))(
  ( (Nil!3435) (Cons!3434 (h!4082 tuple2!4490) (t!8405 List!3438)) )
))
(declare-datatypes ((ListLongMap!3417 0))(
  ( (ListLongMap!3418 (toList!1724 List!3438)) )
))
(declare-fun contains!1592 (ListLongMap!3417 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1247 (array!11250 array!11248 (_ BitVec 32) (_ BitVec 32) V!7651 V!7651 (_ BitVec 32) Int) ListLongMap!3417)

(assert (=> b!228756 (= c!37925 (contains!1592 (getCurrentListMap!1247 (_keys!6321 thiss!1504) (_values!4250 thiss!1504) (mask!10141 thiss!1504) (extraKeys!4004 thiss!1504) (zeroValue!4108 thiss!1504) (minValue!4108 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4267 thiss!1504)) key!932))))

(declare-fun b!228757 () Bool)

(declare-fun c!37923 () Bool)

(assert (=> b!228757 (= c!37923 ((_ is MissingVacant!922) lt!115119))))

(assert (=> b!228757 (= e!148419 e!148412)))

(declare-fun mapNonEmpty!10174 () Bool)

(declare-fun tp!21564 () Bool)

(assert (=> mapNonEmpty!10174 (= mapRes!10174 (and tp!21564 e!148416))))

(declare-fun mapRest!10174 () (Array (_ BitVec 32) ValueCell!2658))

(declare-fun mapKey!10174 () (_ BitVec 32))

(declare-fun mapValue!10174 () ValueCell!2658)

(assert (=> mapNonEmpty!10174 (= (arr!5343 (_values!4250 thiss!1504)) (store mapRest!10174 mapKey!10174 mapValue!10174))))

(declare-fun b!228758 () Bool)

(assert (=> b!228758 (= e!148406 (not call!21256))))

(assert (= (and start!22086 res!112603) b!228748))

(assert (= (and b!228748 res!112597) b!228744))

(assert (= (and b!228744 res!112598) b!228756))

(assert (= (and b!228756 c!37925) b!228746))

(assert (= (and b!228756 (not c!37925)) b!228752))

(assert (= (and b!228752 c!37922) b!228743))

(assert (= (and b!228752 (not c!37922)) b!228757))

(assert (= (and b!228743 res!112601) b!228738))

(assert (= (and b!228738 res!112600) b!228747))

(assert (= (and b!228757 c!37923) b!228749))

(assert (= (and b!228757 (not c!37923)) b!228755))

(assert (= (and b!228749 res!112599) b!228753))

(assert (= (and b!228753 res!112602) b!228758))

(assert (= (or b!228743 b!228749) bm!21252))

(assert (= (or b!228747 b!228758) bm!21253))

(assert (= (and b!228756 res!112605) b!228736))

(assert (= (and b!228736 c!37924) b!228740))

(assert (= (and b!228736 (not c!37924)) b!228745))

(assert (= (and b!228736 (not res!112606)) b!228751))

(assert (= (and b!228751 (not res!112604)) b!228741))

(assert (= (and b!228741 (not res!112596)) b!228742))

(assert (= (and b!228754 condMapEmpty!10174) mapIsEmpty!10174))

(assert (= (and b!228754 (not condMapEmpty!10174)) mapNonEmpty!10174))

(assert (= (and mapNonEmpty!10174 ((_ is ValueCellFull!2658) mapValue!10174)) b!228750))

(assert (= (and b!228754 ((_ is ValueCellFull!2658) mapDefault!10174)) b!228739))

(assert (= b!228737 b!228754))

(assert (= start!22086 b!228737))

(declare-fun m!250433 () Bool)

(assert (=> bm!21253 m!250433))

(declare-fun m!250435 () Bool)

(assert (=> bm!21252 m!250435))

(declare-fun m!250437 () Bool)

(assert (=> b!228753 m!250437))

(declare-fun m!250439 () Bool)

(assert (=> b!228736 m!250439))

(assert (=> b!228736 m!250433))

(declare-fun m!250441 () Bool)

(assert (=> b!228736 m!250441))

(declare-fun m!250443 () Bool)

(assert (=> b!228736 m!250443))

(declare-fun m!250445 () Bool)

(assert (=> b!228736 m!250445))

(declare-fun m!250447 () Bool)

(assert (=> b!228736 m!250447))

(declare-fun m!250449 () Bool)

(assert (=> b!228736 m!250449))

(declare-fun m!250451 () Bool)

(assert (=> b!228736 m!250451))

(declare-fun m!250453 () Bool)

(assert (=> b!228736 m!250453))

(declare-fun m!250455 () Bool)

(assert (=> b!228736 m!250455))

(declare-fun m!250457 () Bool)

(assert (=> b!228756 m!250457))

(declare-fun m!250459 () Bool)

(assert (=> b!228756 m!250459))

(assert (=> b!228756 m!250459))

(declare-fun m!250461 () Bool)

(assert (=> b!228756 m!250461))

(declare-fun m!250463 () Bool)

(assert (=> b!228738 m!250463))

(declare-fun m!250465 () Bool)

(assert (=> b!228737 m!250465))

(declare-fun m!250467 () Bool)

(assert (=> b!228737 m!250467))

(declare-fun m!250469 () Bool)

(assert (=> b!228742 m!250469))

(declare-fun m!250471 () Bool)

(assert (=> b!228752 m!250471))

(declare-fun m!250473 () Bool)

(assert (=> b!228746 m!250473))

(declare-fun m!250475 () Bool)

(assert (=> start!22086 m!250475))

(declare-fun m!250477 () Bool)

(assert (=> b!228741 m!250477))

(declare-fun m!250479 () Bool)

(assert (=> mapNonEmpty!10174 m!250479))

(declare-fun m!250481 () Bool)

(assert (=> b!228740 m!250481))

(declare-fun m!250483 () Bool)

(assert (=> b!228744 m!250483))

(check-sat (not b!228740) (not bm!21252) (not start!22086) (not b!228744) (not b!228756) (not b!228737) (not bm!21253) (not b!228736) (not b!228741) (not b!228752) tp_is_empty!6003 (not b_next!6141) b_and!13057 (not mapNonEmpty!10174) (not b!228746) (not b!228742))
(check-sat b_and!13057 (not b_next!6141))
