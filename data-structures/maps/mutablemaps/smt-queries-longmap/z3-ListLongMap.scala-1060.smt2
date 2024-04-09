; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22056 () Bool)

(assert start!22056)

(declare-fun b!227717 () Bool)

(declare-fun b_free!6111 () Bool)

(declare-fun b_next!6111 () Bool)

(assert (=> b!227717 (= b_free!6111 (not b_next!6111))))

(declare-fun tp!21474 () Bool)

(declare-fun b_and!13027 () Bool)

(assert (=> b!227717 (= tp!21474 b_and!13027)))

(declare-fun b!227701 () Bool)

(declare-fun res!112110 () Bool)

(declare-fun e!147731 () Bool)

(assert (=> b!227701 (=> (not res!112110) (not e!147731))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!227701 (= res!112110 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!227702 () Bool)

(declare-datatypes ((Unit!6904 0))(
  ( (Unit!6905) )
))
(declare-fun e!147744 () Unit!6904)

(declare-fun Unit!6906 () Unit!6904)

(assert (=> b!227702 (= e!147744 Unit!6906)))

(declare-fun lt!114620 () Unit!6904)

(declare-datatypes ((V!7611 0))(
  ( (V!7612 (val!3031 Int)) )
))
(declare-datatypes ((ValueCell!2643 0))(
  ( (ValueCellFull!2643 (v!5047 V!7611)) (EmptyCell!2643) )
))
(declare-datatypes ((array!11188 0))(
  ( (array!11189 (arr!5313 (Array (_ BitVec 32) ValueCell!2643)) (size!5646 (_ BitVec 32))) )
))
(declare-datatypes ((array!11190 0))(
  ( (array!11191 (arr!5314 (Array (_ BitVec 32) (_ BitVec 64))) (size!5647 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3186 0))(
  ( (LongMapFixedSize!3187 (defaultEntry!4252 Int) (mask!10116 (_ BitVec 32)) (extraKeys!3989 (_ BitVec 32)) (zeroValue!4093 V!7611) (minValue!4093 V!7611) (_size!1642 (_ BitVec 32)) (_keys!6306 array!11190) (_values!4235 array!11188) (_vacant!1642 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3186)

(declare-fun lemmaArrayContainsKeyThenInListMap!104 (array!11190 array!11188 (_ BitVec 32) (_ BitVec 32) V!7611 V!7611 (_ BitVec 64) (_ BitVec 32) Int) Unit!6904)

(assert (=> b!227702 (= lt!114620 (lemmaArrayContainsKeyThenInListMap!104 (_keys!6306 thiss!1504) (_values!4235 thiss!1504) (mask!10116 thiss!1504) (extraKeys!3989 thiss!1504) (zeroValue!4093 thiss!1504) (minValue!4093 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4252 thiss!1504)))))

(assert (=> b!227702 false))

(declare-fun b!227703 () Bool)

(declare-fun res!112102 () Bool)

(declare-fun e!147745 () Bool)

(assert (=> b!227703 (=> (not res!112102) (not e!147745))))

(declare-fun call!21166 () Bool)

(assert (=> b!227703 (= res!112102 call!21166)))

(declare-fun e!147738 () Bool)

(assert (=> b!227703 (= e!147738 e!147745)))

(declare-fun b!227704 () Bool)

(declare-fun e!147734 () Bool)

(declare-fun call!21165 () Bool)

(assert (=> b!227704 (= e!147734 (not call!21165))))

(declare-fun b!227705 () Bool)

(declare-fun e!147742 () Unit!6904)

(declare-fun Unit!6907 () Unit!6904)

(assert (=> b!227705 (= e!147742 Unit!6907)))

(declare-fun lt!114619 () Unit!6904)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!267 (array!11190 array!11188 (_ BitVec 32) (_ BitVec 32) V!7611 V!7611 (_ BitVec 64) Int) Unit!6904)

(assert (=> b!227705 (= lt!114619 (lemmaInListMapThenSeekEntryOrOpenFindsIt!267 (_keys!6306 thiss!1504) (_values!4235 thiss!1504) (mask!10116 thiss!1504) (extraKeys!3989 thiss!1504) (zeroValue!4093 thiss!1504) (minValue!4093 thiss!1504) key!932 (defaultEntry!4252 thiss!1504)))))

(assert (=> b!227705 false))

(declare-fun b!227706 () Bool)

(declare-fun e!147739 () Bool)

(assert (=> b!227706 (= e!147739 e!147734)))

(declare-fun res!112104 () Bool)

(assert (=> b!227706 (= res!112104 call!21166)))

(assert (=> b!227706 (=> (not res!112104) (not e!147734))))

(declare-fun b!227707 () Bool)

(declare-fun res!112107 () Bool)

(assert (=> b!227707 (=> (not res!112107) (not e!147745))))

(declare-datatypes ((SeekEntryResult!908 0))(
  ( (MissingZero!908 (index!5802 (_ BitVec 32))) (Found!908 (index!5803 (_ BitVec 32))) (Intermediate!908 (undefined!1720 Bool) (index!5804 (_ BitVec 32)) (x!23304 (_ BitVec 32))) (Undefined!908) (MissingVacant!908 (index!5805 (_ BitVec 32))) )
))
(declare-fun lt!114626 () SeekEntryResult!908)

(assert (=> b!227707 (= res!112107 (= (select (arr!5314 (_keys!6306 thiss!1504)) (index!5802 lt!114626)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!21162 () Bool)

(declare-fun arrayContainsKey!0 (array!11190 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!21162 (= call!21165 (arrayContainsKey!0 (_keys!6306 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun c!37743 () Bool)

(declare-fun bm!21163 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!21163 (= call!21166 (inRange!0 (ite c!37743 (index!5802 lt!114626) (index!5805 lt!114626)) (mask!10116 thiss!1504)))))

(declare-fun b!227708 () Bool)

(declare-fun e!147732 () Bool)

(declare-fun tp_is_empty!5973 () Bool)

(assert (=> b!227708 (= e!147732 tp_is_empty!5973)))

(declare-fun b!227709 () Bool)

(get-info :version)

(assert (=> b!227709 (= e!147739 ((_ is Undefined!908) lt!114626))))

(declare-fun mapIsEmpty!10129 () Bool)

(declare-fun mapRes!10129 () Bool)

(assert (=> mapIsEmpty!10129 mapRes!10129))

(declare-fun b!227710 () Bool)

(assert (=> b!227710 (= e!147745 (not call!21165))))

(declare-fun b!227711 () Bool)

(declare-fun Unit!6908 () Unit!6904)

(assert (=> b!227711 (= e!147744 Unit!6908)))

(declare-fun res!112103 () Bool)

(assert (=> start!22056 (=> (not res!112103) (not e!147731))))

(declare-fun valid!1269 (LongMapFixedSize!3186) Bool)

(assert (=> start!22056 (= res!112103 (valid!1269 thiss!1504))))

(assert (=> start!22056 e!147731))

(declare-fun e!147740 () Bool)

(assert (=> start!22056 e!147740))

(assert (=> start!22056 true))

(declare-fun b!227712 () Bool)

(declare-fun e!147743 () Bool)

(declare-fun e!147736 () Bool)

(assert (=> b!227712 (= e!147743 e!147736)))

(declare-fun res!112106 () Bool)

(assert (=> b!227712 (=> (not res!112106) (not e!147736))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!227712 (= res!112106 (inRange!0 index!297 (mask!10116 thiss!1504)))))

(declare-fun lt!114624 () Unit!6904)

(assert (=> b!227712 (= lt!114624 e!147742)))

(declare-fun c!37745 () Bool)

(declare-datatypes ((tuple2!4472 0))(
  ( (tuple2!4473 (_1!2246 (_ BitVec 64)) (_2!2246 V!7611)) )
))
(declare-datatypes ((List!3416 0))(
  ( (Nil!3413) (Cons!3412 (h!4060 tuple2!4472) (t!8383 List!3416)) )
))
(declare-datatypes ((ListLongMap!3399 0))(
  ( (ListLongMap!3400 (toList!1715 List!3416)) )
))
(declare-fun contains!1583 (ListLongMap!3399 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1238 (array!11190 array!11188 (_ BitVec 32) (_ BitVec 32) V!7611 V!7611 (_ BitVec 32) Int) ListLongMap!3399)

(assert (=> b!227712 (= c!37745 (contains!1583 (getCurrentListMap!1238 (_keys!6306 thiss!1504) (_values!4235 thiss!1504) (mask!10116 thiss!1504) (extraKeys!3989 thiss!1504) (zeroValue!4093 thiss!1504) (minValue!4093 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4252 thiss!1504)) key!932))))

(declare-fun b!227713 () Bool)

(declare-fun e!147733 () Bool)

(assert (=> b!227713 (= e!147733 tp_is_empty!5973)))

(declare-fun b!227714 () Bool)

(declare-fun e!147735 () Bool)

(assert (=> b!227714 (= e!147735 true)))

(declare-fun lt!114617 () Bool)

(declare-datatypes ((List!3417 0))(
  ( (Nil!3414) (Cons!3413 (h!4061 (_ BitVec 64)) (t!8384 List!3417)) )
))
(declare-fun arrayNoDuplicates!0 (array!11190 (_ BitVec 32) List!3417) Bool)

(assert (=> b!227714 (= lt!114617 (arrayNoDuplicates!0 (_keys!6306 thiss!1504) #b00000000000000000000000000000000 Nil!3414))))

(declare-fun b!227715 () Bool)

(assert (=> b!227715 (= e!147736 (not e!147735))))

(declare-fun res!112101 () Bool)

(assert (=> b!227715 (=> res!112101 e!147735)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!227715 (= res!112101 (not (validMask!0 (mask!10116 thiss!1504))))))

(declare-fun lt!114622 () array!11190)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!11190 (_ BitVec 32)) Bool)

(assert (=> b!227715 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!114622 (mask!10116 thiss!1504))))

(declare-fun lt!114618 () Unit!6904)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!11190 (_ BitVec 32) (_ BitVec 32)) Unit!6904)

(assert (=> b!227715 (= lt!114618 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6306 thiss!1504) index!297 (mask!10116 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!11190 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!227715 (= (arrayCountValidKeys!0 lt!114622 #b00000000000000000000000000000000 (size!5647 (_keys!6306 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6306 thiss!1504) #b00000000000000000000000000000000 (size!5647 (_keys!6306 thiss!1504)))))))

(declare-fun lt!114625 () Unit!6904)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!11190 (_ BitVec 32) (_ BitVec 64)) Unit!6904)

(assert (=> b!227715 (= lt!114625 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6306 thiss!1504) index!297 key!932))))

(assert (=> b!227715 (arrayNoDuplicates!0 lt!114622 #b00000000000000000000000000000000 Nil!3414)))

(assert (=> b!227715 (= lt!114622 (array!11191 (store (arr!5314 (_keys!6306 thiss!1504)) index!297 key!932) (size!5647 (_keys!6306 thiss!1504))))))

(declare-fun lt!114623 () Unit!6904)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!11190 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3417) Unit!6904)

(assert (=> b!227715 (= lt!114623 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6306 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3414))))

(declare-fun lt!114621 () Unit!6904)

(assert (=> b!227715 (= lt!114621 e!147744)))

(declare-fun c!37744 () Bool)

(assert (=> b!227715 (= c!37744 (arrayContainsKey!0 (_keys!6306 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!227716 () Bool)

(assert (=> b!227716 (= e!147731 e!147743)))

(declare-fun res!112111 () Bool)

(assert (=> b!227716 (=> (not res!112111) (not e!147743))))

(assert (=> b!227716 (= res!112111 (or (= lt!114626 (MissingZero!908 index!297)) (= lt!114626 (MissingVacant!908 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11190 (_ BitVec 32)) SeekEntryResult!908)

(assert (=> b!227716 (= lt!114626 (seekEntryOrOpen!0 key!932 (_keys!6306 thiss!1504) (mask!10116 thiss!1504)))))

(declare-fun mapNonEmpty!10129 () Bool)

(declare-fun tp!21475 () Bool)

(assert (=> mapNonEmpty!10129 (= mapRes!10129 (and tp!21475 e!147733))))

(declare-fun mapRest!10129 () (Array (_ BitVec 32) ValueCell!2643))

(declare-fun mapKey!10129 () (_ BitVec 32))

(declare-fun mapValue!10129 () ValueCell!2643)

(assert (=> mapNonEmpty!10129 (= (arr!5313 (_values!4235 thiss!1504)) (store mapRest!10129 mapKey!10129 mapValue!10129))))

(declare-fun e!147737 () Bool)

(declare-fun array_inv!3503 (array!11190) Bool)

(declare-fun array_inv!3504 (array!11188) Bool)

(assert (=> b!227717 (= e!147740 (and tp!21474 tp_is_empty!5973 (array_inv!3503 (_keys!6306 thiss!1504)) (array_inv!3504 (_values!4235 thiss!1504)) e!147737))))

(declare-fun b!227718 () Bool)

(declare-fun res!112108 () Bool)

(assert (=> b!227718 (= res!112108 (= (select (arr!5314 (_keys!6306 thiss!1504)) (index!5805 lt!114626)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!227718 (=> (not res!112108) (not e!147734))))

(declare-fun b!227719 () Bool)

(declare-fun res!112105 () Bool)

(assert (=> b!227719 (=> res!112105 e!147735)))

(assert (=> b!227719 (= res!112105 (or (not (= (size!5646 (_values!4235 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10116 thiss!1504)))) (not (= (size!5647 (_keys!6306 thiss!1504)) (size!5646 (_values!4235 thiss!1504)))) (bvslt (mask!10116 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!3989 thiss!1504) #b00000000000000000000000000000000) (bvsgt (extraKeys!3989 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!227720 () Bool)

(declare-fun lt!114627 () Unit!6904)

(assert (=> b!227720 (= e!147742 lt!114627)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!279 (array!11190 array!11188 (_ BitVec 32) (_ BitVec 32) V!7611 V!7611 (_ BitVec 64) Int) Unit!6904)

(assert (=> b!227720 (= lt!114627 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!279 (_keys!6306 thiss!1504) (_values!4235 thiss!1504) (mask!10116 thiss!1504) (extraKeys!3989 thiss!1504) (zeroValue!4093 thiss!1504) (minValue!4093 thiss!1504) key!932 (defaultEntry!4252 thiss!1504)))))

(assert (=> b!227720 (= c!37743 ((_ is MissingZero!908) lt!114626))))

(assert (=> b!227720 e!147738))

(declare-fun b!227721 () Bool)

(declare-fun c!37742 () Bool)

(assert (=> b!227721 (= c!37742 ((_ is MissingVacant!908) lt!114626))))

(assert (=> b!227721 (= e!147738 e!147739)))

(declare-fun b!227722 () Bool)

(assert (=> b!227722 (= e!147737 (and e!147732 mapRes!10129))))

(declare-fun condMapEmpty!10129 () Bool)

(declare-fun mapDefault!10129 () ValueCell!2643)

(assert (=> b!227722 (= condMapEmpty!10129 (= (arr!5313 (_values!4235 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2643)) mapDefault!10129)))))

(declare-fun b!227723 () Bool)

(declare-fun res!112109 () Bool)

(assert (=> b!227723 (=> res!112109 e!147735)))

(assert (=> b!227723 (= res!112109 (not (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6306 thiss!1504) (mask!10116 thiss!1504))))))

(assert (= (and start!22056 res!112103) b!227701))

(assert (= (and b!227701 res!112110) b!227716))

(assert (= (and b!227716 res!112111) b!227712))

(assert (= (and b!227712 c!37745) b!227705))

(assert (= (and b!227712 (not c!37745)) b!227720))

(assert (= (and b!227720 c!37743) b!227703))

(assert (= (and b!227720 (not c!37743)) b!227721))

(assert (= (and b!227703 res!112102) b!227707))

(assert (= (and b!227707 res!112107) b!227710))

(assert (= (and b!227721 c!37742) b!227706))

(assert (= (and b!227721 (not c!37742)) b!227709))

(assert (= (and b!227706 res!112104) b!227718))

(assert (= (and b!227718 res!112108) b!227704))

(assert (= (or b!227703 b!227706) bm!21163))

(assert (= (or b!227710 b!227704) bm!21162))

(assert (= (and b!227712 res!112106) b!227715))

(assert (= (and b!227715 c!37744) b!227702))

(assert (= (and b!227715 (not c!37744)) b!227711))

(assert (= (and b!227715 (not res!112101)) b!227719))

(assert (= (and b!227719 (not res!112105)) b!227723))

(assert (= (and b!227723 (not res!112109)) b!227714))

(assert (= (and b!227722 condMapEmpty!10129) mapIsEmpty!10129))

(assert (= (and b!227722 (not condMapEmpty!10129)) mapNonEmpty!10129))

(assert (= (and mapNonEmpty!10129 ((_ is ValueCellFull!2643) mapValue!10129)) b!227713))

(assert (= (and b!227722 ((_ is ValueCellFull!2643) mapDefault!10129)) b!227708))

(assert (= b!227717 b!227722))

(assert (= start!22056 b!227717))

(declare-fun m!249653 () Bool)

(assert (=> b!227717 m!249653))

(declare-fun m!249655 () Bool)

(assert (=> b!227717 m!249655))

(declare-fun m!249657 () Bool)

(assert (=> b!227723 m!249657))

(declare-fun m!249659 () Bool)

(assert (=> b!227718 m!249659))

(declare-fun m!249661 () Bool)

(assert (=> b!227715 m!249661))

(declare-fun m!249663 () Bool)

(assert (=> b!227715 m!249663))

(declare-fun m!249665 () Bool)

(assert (=> b!227715 m!249665))

(declare-fun m!249667 () Bool)

(assert (=> b!227715 m!249667))

(declare-fun m!249669 () Bool)

(assert (=> b!227715 m!249669))

(declare-fun m!249671 () Bool)

(assert (=> b!227715 m!249671))

(declare-fun m!249673 () Bool)

(assert (=> b!227715 m!249673))

(declare-fun m!249675 () Bool)

(assert (=> b!227715 m!249675))

(declare-fun m!249677 () Bool)

(assert (=> b!227715 m!249677))

(declare-fun m!249679 () Bool)

(assert (=> b!227715 m!249679))

(declare-fun m!249681 () Bool)

(assert (=> b!227720 m!249681))

(declare-fun m!249683 () Bool)

(assert (=> b!227702 m!249683))

(declare-fun m!249685 () Bool)

(assert (=> b!227707 m!249685))

(declare-fun m!249687 () Bool)

(assert (=> start!22056 m!249687))

(assert (=> bm!21162 m!249679))

(declare-fun m!249689 () Bool)

(assert (=> b!227712 m!249689))

(declare-fun m!249691 () Bool)

(assert (=> b!227712 m!249691))

(assert (=> b!227712 m!249691))

(declare-fun m!249693 () Bool)

(assert (=> b!227712 m!249693))

(declare-fun m!249695 () Bool)

(assert (=> b!227716 m!249695))

(declare-fun m!249697 () Bool)

(assert (=> mapNonEmpty!10129 m!249697))

(declare-fun m!249699 () Bool)

(assert (=> bm!21163 m!249699))

(declare-fun m!249701 () Bool)

(assert (=> b!227714 m!249701))

(declare-fun m!249703 () Bool)

(assert (=> b!227705 m!249703))

(check-sat (not start!22056) (not b!227723) (not b!227702) (not b_next!6111) (not b!227717) (not b!227716) (not b!227720) b_and!13027 (not b!227705) (not bm!21162) (not b!227715) (not mapNonEmpty!10129) (not bm!21163) (not b!227712) (not b!227714) tp_is_empty!5973)
(check-sat b_and!13027 (not b_next!6111))
