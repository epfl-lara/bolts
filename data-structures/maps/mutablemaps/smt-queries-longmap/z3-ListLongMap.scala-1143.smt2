; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23674 () Bool)

(assert start!23674)

(declare-fun b!248681 () Bool)

(declare-fun b_free!6609 () Bool)

(declare-fun b_next!6609 () Bool)

(assert (=> b!248681 (= b_free!6609 (not b_next!6609))))

(declare-fun tp!23080 () Bool)

(declare-fun b_and!13633 () Bool)

(assert (=> b!248681 (= tp!23080 b_and!13633)))

(declare-fun b!248668 () Bool)

(declare-fun e!161308 () Bool)

(declare-fun call!23321 () Bool)

(assert (=> b!248668 (= e!161308 (not call!23321))))

(declare-fun b!248669 () Bool)

(declare-fun e!161302 () Bool)

(assert (=> b!248669 (= e!161302 e!161308)))

(declare-fun res!121879 () Bool)

(declare-fun call!23322 () Bool)

(assert (=> b!248669 (= res!121879 call!23322)))

(assert (=> b!248669 (=> (not res!121879) (not e!161308))))

(declare-fun b!248670 () Bool)

(declare-fun e!161307 () Bool)

(declare-fun e!161311 () Bool)

(assert (=> b!248670 (= e!161307 e!161311)))

(declare-fun res!121873 () Bool)

(assert (=> b!248670 (=> (not res!121873) (not e!161311))))

(declare-datatypes ((SeekEntryResult!1123 0))(
  ( (MissingZero!1123 (index!6662 (_ BitVec 32))) (Found!1123 (index!6663 (_ BitVec 32))) (Intermediate!1123 (undefined!1935 Bool) (index!6664 (_ BitVec 32)) (x!24603 (_ BitVec 32))) (Undefined!1123) (MissingVacant!1123 (index!6665 (_ BitVec 32))) )
))
(declare-fun lt!124567 () SeekEntryResult!1123)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!248670 (= res!121873 (or (= lt!124567 (MissingZero!1123 index!297)) (= lt!124567 (MissingVacant!1123 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8275 0))(
  ( (V!8276 (val!3280 Int)) )
))
(declare-datatypes ((ValueCell!2892 0))(
  ( (ValueCellFull!2892 (v!5336 V!8275)) (EmptyCell!2892) )
))
(declare-datatypes ((array!12252 0))(
  ( (array!12253 (arr!5811 (Array (_ BitVec 32) ValueCell!2892)) (size!6154 (_ BitVec 32))) )
))
(declare-datatypes ((array!12254 0))(
  ( (array!12255 (arr!5812 (Array (_ BitVec 32) (_ BitVec 64))) (size!6155 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3684 0))(
  ( (LongMapFixedSize!3685 (defaultEntry!4599 Int) (mask!10753 (_ BitVec 32)) (extraKeys!4336 (_ BitVec 32)) (zeroValue!4440 V!8275) (minValue!4440 V!8275) (_size!1891 (_ BitVec 32)) (_keys!6725 array!12254) (_values!4582 array!12252) (_vacant!1891 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3684)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12254 (_ BitVec 32)) SeekEntryResult!1123)

(assert (=> b!248670 (= lt!124567 (seekEntryOrOpen!0 key!932 (_keys!6725 thiss!1504) (mask!10753 thiss!1504)))))

(declare-fun b!248671 () Bool)

(declare-fun res!121876 () Bool)

(declare-fun e!161310 () Bool)

(assert (=> b!248671 (=> (not res!121876) (not e!161310))))

(assert (=> b!248671 (= res!121876 (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6662 lt!124567)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!248672 () Bool)

(declare-fun res!121872 () Bool)

(assert (=> b!248672 (= res!121872 (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6665 lt!124567)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248672 (=> (not res!121872) (not e!161308))))

(declare-fun b!248674 () Bool)

(assert (=> b!248674 (= e!161310 (not call!23321))))

(declare-fun b!248675 () Bool)

(declare-fun c!41663 () Bool)

(get-info :version)

(assert (=> b!248675 (= c!41663 ((_ is MissingVacant!1123) lt!124567))))

(declare-fun e!161304 () Bool)

(assert (=> b!248675 (= e!161304 e!161302)))

(declare-fun b!248676 () Bool)

(declare-fun res!121878 () Bool)

(assert (=> b!248676 (=> (not res!121878) (not e!161310))))

(assert (=> b!248676 (= res!121878 call!23322)))

(assert (=> b!248676 (= e!161304 e!161310)))

(declare-fun b!248677 () Bool)

(declare-datatypes ((Unit!7700 0))(
  ( (Unit!7701) )
))
(declare-fun e!161299 () Unit!7700)

(declare-fun Unit!7702 () Unit!7700)

(assert (=> b!248677 (= e!161299 Unit!7702)))

(declare-fun lt!124572 () Unit!7700)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!392 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 64) Int) Unit!7700)

(assert (=> b!248677 (= lt!124572 (lemmaInListMapThenSeekEntryOrOpenFindsIt!392 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 (defaultEntry!4599 thiss!1504)))))

(assert (=> b!248677 false))

(declare-fun b!248678 () Bool)

(assert (=> b!248678 (= e!161302 ((_ is Undefined!1123) lt!124567))))

(declare-fun b!248679 () Bool)

(declare-fun e!161298 () Bool)

(declare-fun e!161305 () Bool)

(declare-fun mapRes!10988 () Bool)

(assert (=> b!248679 (= e!161298 (and e!161305 mapRes!10988))))

(declare-fun condMapEmpty!10988 () Bool)

(declare-fun mapDefault!10988 () ValueCell!2892)

(assert (=> b!248679 (= condMapEmpty!10988 (= (arr!5811 (_values!4582 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2892)) mapDefault!10988)))))

(declare-fun b!248680 () Bool)

(declare-fun tp_is_empty!6471 () Bool)

(assert (=> b!248680 (= e!161305 tp_is_empty!6471)))

(declare-fun e!161309 () Bool)

(declare-fun array_inv!3827 (array!12254) Bool)

(declare-fun array_inv!3828 (array!12252) Bool)

(assert (=> b!248681 (= e!161309 (and tp!23080 tp_is_empty!6471 (array_inv!3827 (_keys!6725 thiss!1504)) (array_inv!3828 (_values!4582 thiss!1504)) e!161298))))

(declare-fun bm!23318 () Bool)

(declare-fun c!41661 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!23318 (= call!23322 (inRange!0 (ite c!41661 (index!6662 lt!124567) (index!6665 lt!124567)) (mask!10753 thiss!1504)))))

(declare-fun mapIsEmpty!10988 () Bool)

(assert (=> mapIsEmpty!10988 mapRes!10988))

(declare-fun b!248682 () Bool)

(declare-fun lt!124573 () Unit!7700)

(assert (=> b!248682 (= e!161299 lt!124573)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!392 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 64) Int) Unit!7700)

(assert (=> b!248682 (= lt!124573 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!392 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 (defaultEntry!4599 thiss!1504)))))

(assert (=> b!248682 (= c!41661 ((_ is MissingZero!1123) lt!124567))))

(assert (=> b!248682 e!161304))

(declare-fun bm!23319 () Bool)

(declare-fun arrayContainsKey!0 (array!12254 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23319 (= call!23321 (arrayContainsKey!0 (_keys!6725 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun res!121875 () Bool)

(assert (=> start!23674 (=> (not res!121875) (not e!161307))))

(declare-fun valid!1434 (LongMapFixedSize!3684) Bool)

(assert (=> start!23674 (= res!121875 (valid!1434 thiss!1504))))

(assert (=> start!23674 e!161307))

(assert (=> start!23674 e!161309))

(assert (=> start!23674 true))

(declare-fun b!248673 () Bool)

(declare-fun e!161301 () Bool)

(assert (=> b!248673 (= e!161311 e!161301)))

(declare-fun res!121874 () Bool)

(assert (=> b!248673 (=> (not res!121874) (not e!161301))))

(assert (=> b!248673 (= res!121874 (inRange!0 index!297 (mask!10753 thiss!1504)))))

(declare-fun lt!124574 () Unit!7700)

(assert (=> b!248673 (= lt!124574 e!161299)))

(declare-fun c!41662 () Bool)

(declare-datatypes ((tuple2!4824 0))(
  ( (tuple2!4825 (_1!2422 (_ BitVec 64)) (_2!2422 V!8275)) )
))
(declare-datatypes ((List!3729 0))(
  ( (Nil!3726) (Cons!3725 (h!4383 tuple2!4824) (t!8764 List!3729)) )
))
(declare-datatypes ((ListLongMap!3751 0))(
  ( (ListLongMap!3752 (toList!1891 List!3729)) )
))
(declare-fun contains!1801 (ListLongMap!3751 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1414 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 32) Int) ListLongMap!3751)

(assert (=> b!248673 (= c!41662 (contains!1801 (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)) key!932))))

(declare-fun mapNonEmpty!10988 () Bool)

(declare-fun tp!23081 () Bool)

(declare-fun e!161300 () Bool)

(assert (=> mapNonEmpty!10988 (= mapRes!10988 (and tp!23081 e!161300))))

(declare-fun mapValue!10988 () ValueCell!2892)

(declare-fun mapKey!10988 () (_ BitVec 32))

(declare-fun mapRest!10988 () (Array (_ BitVec 32) ValueCell!2892))

(assert (=> mapNonEmpty!10988 (= (arr!5811 (_values!4582 thiss!1504)) (store mapRest!10988 mapKey!10988 mapValue!10988))))

(declare-fun b!248683 () Bool)

(declare-fun e!161303 () Unit!7700)

(declare-fun Unit!7703 () Unit!7700)

(assert (=> b!248683 (= e!161303 Unit!7703)))

(declare-fun b!248684 () Bool)

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!248684 (= e!161301 (not (validMask!0 (mask!10753 thiss!1504))))))

(declare-fun lt!124570 () array!12254)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12254 (_ BitVec 32)) Bool)

(assert (=> b!248684 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!124570 (mask!10753 thiss!1504))))

(declare-fun lt!124566 () Unit!7700)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12254 (_ BitVec 32) (_ BitVec 32)) Unit!7700)

(assert (=> b!248684 (= lt!124566 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6725 thiss!1504) index!297 (mask!10753 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12254 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!248684 (= (arrayCountValidKeys!0 lt!124570 #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6725 thiss!1504) #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504)))))))

(declare-fun lt!124569 () Unit!7700)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12254 (_ BitVec 32) (_ BitVec 64)) Unit!7700)

(assert (=> b!248684 (= lt!124569 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6725 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3730 0))(
  ( (Nil!3727) (Cons!3726 (h!4384 (_ BitVec 64)) (t!8765 List!3730)) )
))
(declare-fun arrayNoDuplicates!0 (array!12254 (_ BitVec 32) List!3730) Bool)

(assert (=> b!248684 (arrayNoDuplicates!0 lt!124570 #b00000000000000000000000000000000 Nil!3727)))

(assert (=> b!248684 (= lt!124570 (array!12255 (store (arr!5812 (_keys!6725 thiss!1504)) index!297 key!932) (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun lt!124575 () Unit!7700)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12254 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3730) Unit!7700)

(assert (=> b!248684 (= lt!124575 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6725 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3727))))

(declare-fun lt!124568 () Unit!7700)

(assert (=> b!248684 (= lt!124568 e!161303)))

(declare-fun c!41664 () Bool)

(assert (=> b!248684 (= c!41664 (arrayContainsKey!0 (_keys!6725 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!248685 () Bool)

(declare-fun Unit!7704 () Unit!7700)

(assert (=> b!248685 (= e!161303 Unit!7704)))

(declare-fun lt!124571 () Unit!7700)

(declare-fun lemmaArrayContainsKeyThenInListMap!195 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 64) (_ BitVec 32) Int) Unit!7700)

(assert (=> b!248685 (= lt!124571 (lemmaArrayContainsKeyThenInListMap!195 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)))))

(assert (=> b!248685 false))

(declare-fun b!248686 () Bool)

(declare-fun res!121877 () Bool)

(assert (=> b!248686 (=> (not res!121877) (not e!161307))))

(assert (=> b!248686 (= res!121877 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!248687 () Bool)

(assert (=> b!248687 (= e!161300 tp_is_empty!6471)))

(assert (= (and start!23674 res!121875) b!248686))

(assert (= (and b!248686 res!121877) b!248670))

(assert (= (and b!248670 res!121873) b!248673))

(assert (= (and b!248673 c!41662) b!248677))

(assert (= (and b!248673 (not c!41662)) b!248682))

(assert (= (and b!248682 c!41661) b!248676))

(assert (= (and b!248682 (not c!41661)) b!248675))

(assert (= (and b!248676 res!121878) b!248671))

(assert (= (and b!248671 res!121876) b!248674))

(assert (= (and b!248675 c!41663) b!248669))

(assert (= (and b!248675 (not c!41663)) b!248678))

(assert (= (and b!248669 res!121879) b!248672))

(assert (= (and b!248672 res!121872) b!248668))

(assert (= (or b!248676 b!248669) bm!23318))

(assert (= (or b!248674 b!248668) bm!23319))

(assert (= (and b!248673 res!121874) b!248684))

(assert (= (and b!248684 c!41664) b!248685))

(assert (= (and b!248684 (not c!41664)) b!248683))

(assert (= (and b!248679 condMapEmpty!10988) mapIsEmpty!10988))

(assert (= (and b!248679 (not condMapEmpty!10988)) mapNonEmpty!10988))

(assert (= (and mapNonEmpty!10988 ((_ is ValueCellFull!2892) mapValue!10988)) b!248687))

(assert (= (and b!248679 ((_ is ValueCellFull!2892) mapDefault!10988)) b!248680))

(assert (= b!248681 b!248679))

(assert (= start!23674 b!248681))

(declare-fun m!265351 () Bool)

(assert (=> b!248673 m!265351))

(declare-fun m!265353 () Bool)

(assert (=> b!248673 m!265353))

(assert (=> b!248673 m!265353))

(declare-fun m!265355 () Bool)

(assert (=> b!248673 m!265355))

(declare-fun m!265357 () Bool)

(assert (=> b!248677 m!265357))

(declare-fun m!265359 () Bool)

(assert (=> b!248685 m!265359))

(declare-fun m!265361 () Bool)

(assert (=> mapNonEmpty!10988 m!265361))

(declare-fun m!265363 () Bool)

(assert (=> b!248671 m!265363))

(declare-fun m!265365 () Bool)

(assert (=> b!248682 m!265365))

(declare-fun m!265367 () Bool)

(assert (=> b!248681 m!265367))

(declare-fun m!265369 () Bool)

(assert (=> b!248681 m!265369))

(declare-fun m!265371 () Bool)

(assert (=> bm!23318 m!265371))

(declare-fun m!265373 () Bool)

(assert (=> bm!23319 m!265373))

(declare-fun m!265375 () Bool)

(assert (=> b!248670 m!265375))

(declare-fun m!265377 () Bool)

(assert (=> b!248684 m!265377))

(assert (=> b!248684 m!265373))

(declare-fun m!265379 () Bool)

(assert (=> b!248684 m!265379))

(declare-fun m!265381 () Bool)

(assert (=> b!248684 m!265381))

(declare-fun m!265383 () Bool)

(assert (=> b!248684 m!265383))

(declare-fun m!265385 () Bool)

(assert (=> b!248684 m!265385))

(declare-fun m!265387 () Bool)

(assert (=> b!248684 m!265387))

(declare-fun m!265389 () Bool)

(assert (=> b!248684 m!265389))

(declare-fun m!265391 () Bool)

(assert (=> b!248684 m!265391))

(declare-fun m!265393 () Bool)

(assert (=> b!248684 m!265393))

(declare-fun m!265395 () Bool)

(assert (=> b!248672 m!265395))

(declare-fun m!265397 () Bool)

(assert (=> start!23674 m!265397))

(check-sat (not b!248677) (not b!248673) (not b!248681) (not bm!23318) (not b!248684) tp_is_empty!6471 (not mapNonEmpty!10988) (not b_next!6609) (not b!248670) (not start!23674) (not b!248682) b_and!13633 (not b!248685) (not bm!23319))
(check-sat b_and!13633 (not b_next!6609))
(get-model)

(declare-fun b!248764 () Bool)

(declare-fun e!161363 () Bool)

(declare-fun e!161362 () Bool)

(assert (=> b!248764 (= e!161363 e!161362)))

(declare-fun res!121914 () Bool)

(declare-fun call!23334 () Bool)

(assert (=> b!248764 (= res!121914 call!23334)))

(assert (=> b!248764 (=> (not res!121914) (not e!161362))))

(declare-fun c!41681 () Bool)

(declare-fun lt!124610 () SeekEntryResult!1123)

(declare-fun bm!23330 () Bool)

(assert (=> bm!23330 (= call!23334 (inRange!0 (ite c!41681 (index!6662 lt!124610) (index!6665 lt!124610)) (mask!10753 thiss!1504)))))

(declare-fun d!60485 () Bool)

(assert (=> d!60485 e!161363))

(assert (=> d!60485 (= c!41681 ((_ is MissingZero!1123) lt!124610))))

(assert (=> d!60485 (= lt!124610 (seekEntryOrOpen!0 key!932 (_keys!6725 thiss!1504) (mask!10753 thiss!1504)))))

(declare-fun lt!124611 () Unit!7700)

(declare-fun choose!1178 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 64) Int) Unit!7700)

(assert (=> d!60485 (= lt!124611 (choose!1178 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 (defaultEntry!4599 thiss!1504)))))

(assert (=> d!60485 (validMask!0 (mask!10753 thiss!1504))))

(assert (=> d!60485 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!392 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 (defaultEntry!4599 thiss!1504)) lt!124611)))

(declare-fun b!248765 () Bool)

(declare-fun e!161365 () Bool)

(declare-fun call!23333 () Bool)

(assert (=> b!248765 (= e!161365 (not call!23333))))

(declare-fun b!248766 () Bool)

(declare-fun e!161364 () Bool)

(assert (=> b!248766 (= e!161363 e!161364)))

(declare-fun c!41682 () Bool)

(assert (=> b!248766 (= c!41682 ((_ is MissingVacant!1123) lt!124610))))

(declare-fun b!248767 () Bool)

(assert (=> b!248767 (= e!161362 (not call!23333))))

(declare-fun b!248768 () Bool)

(assert (=> b!248768 (and (bvsge (index!6662 lt!124610) #b00000000000000000000000000000000) (bvslt (index!6662 lt!124610) (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun res!121912 () Bool)

(assert (=> b!248768 (= res!121912 (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6662 lt!124610)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248768 (=> (not res!121912) (not e!161362))))

(declare-fun bm!23331 () Bool)

(assert (=> bm!23331 (= call!23333 (arrayContainsKey!0 (_keys!6725 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!248769 () Bool)

(declare-fun res!121915 () Bool)

(assert (=> b!248769 (=> (not res!121915) (not e!161365))))

(assert (=> b!248769 (= res!121915 (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6665 lt!124610)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!248769 (and (bvsge (index!6665 lt!124610) #b00000000000000000000000000000000) (bvslt (index!6665 lt!124610) (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun b!248770 () Bool)

(assert (=> b!248770 (= e!161364 ((_ is Undefined!1123) lt!124610))))

(declare-fun b!248771 () Bool)

(declare-fun res!121913 () Bool)

(assert (=> b!248771 (=> (not res!121913) (not e!161365))))

(assert (=> b!248771 (= res!121913 call!23334)))

(assert (=> b!248771 (= e!161364 e!161365)))

(assert (= (and d!60485 c!41681) b!248764))

(assert (= (and d!60485 (not c!41681)) b!248766))

(assert (= (and b!248764 res!121914) b!248768))

(assert (= (and b!248768 res!121912) b!248767))

(assert (= (and b!248766 c!41682) b!248771))

(assert (= (and b!248766 (not c!41682)) b!248770))

(assert (= (and b!248771 res!121913) b!248769))

(assert (= (and b!248769 res!121915) b!248765))

(assert (= (or b!248764 b!248771) bm!23330))

(assert (= (or b!248767 b!248765) bm!23331))

(declare-fun m!265447 () Bool)

(assert (=> b!248769 m!265447))

(assert (=> bm!23331 m!265373))

(assert (=> d!60485 m!265375))

(declare-fun m!265449 () Bool)

(assert (=> d!60485 m!265449))

(assert (=> d!60485 m!265377))

(declare-fun m!265451 () Bool)

(assert (=> bm!23330 m!265451))

(declare-fun m!265453 () Bool)

(assert (=> b!248768 m!265453))

(assert (=> b!248682 d!60485))

(declare-fun d!60487 () Bool)

(assert (=> d!60487 (contains!1801 (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)) key!932)))

(declare-fun lt!124614 () Unit!7700)

(declare-fun choose!1179 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 64) (_ BitVec 32) Int) Unit!7700)

(assert (=> d!60487 (= lt!124614 (choose!1179 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)))))

(assert (=> d!60487 (validMask!0 (mask!10753 thiss!1504))))

(assert (=> d!60487 (= (lemmaArrayContainsKeyThenInListMap!195 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)) lt!124614)))

(declare-fun bs!8940 () Bool)

(assert (= bs!8940 d!60487))

(assert (=> bs!8940 m!265353))

(assert (=> bs!8940 m!265353))

(assert (=> bs!8940 m!265355))

(declare-fun m!265455 () Bool)

(assert (=> bs!8940 m!265455))

(assert (=> bs!8940 m!265377))

(assert (=> b!248685 d!60487))

(declare-fun d!60489 () Bool)

(assert (=> d!60489 (= (inRange!0 index!297 (mask!10753 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10753 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!248673 d!60489))

(declare-fun d!60491 () Bool)

(declare-fun e!161370 () Bool)

(assert (=> d!60491 e!161370))

(declare-fun res!121918 () Bool)

(assert (=> d!60491 (=> res!121918 e!161370)))

(declare-fun lt!124623 () Bool)

(assert (=> d!60491 (= res!121918 (not lt!124623))))

(declare-fun lt!124624 () Bool)

(assert (=> d!60491 (= lt!124623 lt!124624)))

(declare-fun lt!124626 () Unit!7700)

(declare-fun e!161371 () Unit!7700)

(assert (=> d!60491 (= lt!124626 e!161371)))

(declare-fun c!41685 () Bool)

(assert (=> d!60491 (= c!41685 lt!124624)))

(declare-fun containsKey!286 (List!3729 (_ BitVec 64)) Bool)

(assert (=> d!60491 (= lt!124624 (containsKey!286 (toList!1891 (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504))) key!932))))

(assert (=> d!60491 (= (contains!1801 (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)) key!932) lt!124623)))

(declare-fun b!248778 () Bool)

(declare-fun lt!124625 () Unit!7700)

(assert (=> b!248778 (= e!161371 lt!124625)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!235 (List!3729 (_ BitVec 64)) Unit!7700)

(assert (=> b!248778 (= lt!124625 (lemmaContainsKeyImpliesGetValueByKeyDefined!235 (toList!1891 (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504))) key!932))))

(declare-datatypes ((Option!300 0))(
  ( (Some!299 (v!5338 V!8275)) (None!298) )
))
(declare-fun isDefined!236 (Option!300) Bool)

(declare-fun getValueByKey!294 (List!3729 (_ BitVec 64)) Option!300)

(assert (=> b!248778 (isDefined!236 (getValueByKey!294 (toList!1891 (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504))) key!932))))

(declare-fun b!248779 () Bool)

(declare-fun Unit!7705 () Unit!7700)

(assert (=> b!248779 (= e!161371 Unit!7705)))

(declare-fun b!248780 () Bool)

(assert (=> b!248780 (= e!161370 (isDefined!236 (getValueByKey!294 (toList!1891 (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504))) key!932)))))

(assert (= (and d!60491 c!41685) b!248778))

(assert (= (and d!60491 (not c!41685)) b!248779))

(assert (= (and d!60491 (not res!121918)) b!248780))

(declare-fun m!265457 () Bool)

(assert (=> d!60491 m!265457))

(declare-fun m!265459 () Bool)

(assert (=> b!248778 m!265459))

(declare-fun m!265461 () Bool)

(assert (=> b!248778 m!265461))

(assert (=> b!248778 m!265461))

(declare-fun m!265463 () Bool)

(assert (=> b!248778 m!265463))

(assert (=> b!248780 m!265461))

(assert (=> b!248780 m!265461))

(assert (=> b!248780 m!265463))

(assert (=> b!248673 d!60491))

(declare-fun b!248823 () Bool)

(declare-fun e!161398 () Bool)

(declare-fun call!23349 () Bool)

(assert (=> b!248823 (= e!161398 (not call!23349))))

(declare-fun b!248824 () Bool)

(declare-fun e!161399 () ListLongMap!3751)

(declare-fun e!161404 () ListLongMap!3751)

(assert (=> b!248824 (= e!161399 e!161404)))

(declare-fun c!41700 () Bool)

(assert (=> b!248824 (= c!41700 (and (not (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!248825 () Bool)

(declare-fun c!41698 () Bool)

(assert (=> b!248825 (= c!41698 (and (not (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!161410 () ListLongMap!3751)

(assert (=> b!248825 (= e!161404 e!161410)))

(declare-fun b!248826 () Bool)

(declare-fun e!161406 () Bool)

(assert (=> b!248826 (= e!161406 e!161398)))

(declare-fun c!41703 () Bool)

(assert (=> b!248826 (= c!41703 (not (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!248827 () Bool)

(declare-fun res!121938 () Bool)

(assert (=> b!248827 (=> (not res!121938) (not e!161406))))

(declare-fun e!161405 () Bool)

(assert (=> b!248827 (= res!121938 e!161405)))

(declare-fun c!41702 () Bool)

(assert (=> b!248827 (= c!41702 (not (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!248828 () Bool)

(declare-fun e!161400 () Unit!7700)

(declare-fun Unit!7706 () Unit!7700)

(assert (=> b!248828 (= e!161400 Unit!7706)))

(declare-fun b!248829 () Bool)

(declare-fun res!121941 () Bool)

(assert (=> b!248829 (=> (not res!121941) (not e!161406))))

(declare-fun e!161409 () Bool)

(assert (=> b!248829 (= res!121941 e!161409)))

(declare-fun res!121940 () Bool)

(assert (=> b!248829 (=> res!121940 e!161409)))

(declare-fun e!161401 () Bool)

(assert (=> b!248829 (= res!121940 (not e!161401))))

(declare-fun res!121937 () Bool)

(assert (=> b!248829 (=> (not res!121937) (not e!161401))))

(assert (=> b!248829 (= res!121937 (bvslt #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun b!248830 () Bool)

(declare-fun e!161408 () Bool)

(declare-fun lt!124692 () ListLongMap!3751)

(declare-fun apply!237 (ListLongMap!3751 (_ BitVec 64)) V!8275)

(declare-fun get!2983 (ValueCell!2892 V!8275) V!8275)

(declare-fun dynLambda!575 (Int (_ BitVec 64)) V!8275)

(assert (=> b!248830 (= e!161408 (= (apply!237 lt!124692 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000)) (get!2983 (select (arr!5811 (_values!4582 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!575 (defaultEntry!4599 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!248830 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6154 (_values!4582 thiss!1504))))))

(assert (=> b!248830 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun b!248831 () Bool)

(declare-fun e!161407 () Bool)

(assert (=> b!248831 (= e!161407 (= (apply!237 lt!124692 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4440 thiss!1504)))))

(declare-fun b!248832 () Bool)

(declare-fun call!23351 () Bool)

(assert (=> b!248832 (= e!161405 (not call!23351))))

(declare-fun b!248833 () Bool)

(declare-fun e!161403 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!248833 (= e!161403 (validKeyInArray!0 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248834 () Bool)

(declare-fun lt!124674 () Unit!7700)

(assert (=> b!248834 (= e!161400 lt!124674)))

(declare-fun lt!124672 () ListLongMap!3751)

(declare-fun getCurrentListMapNoExtraKeys!556 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 32) Int) ListLongMap!3751)

(assert (=> b!248834 (= lt!124672 (getCurrentListMapNoExtraKeys!556 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)))))

(declare-fun lt!124681 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124681 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124678 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124678 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124688 () Unit!7700)

(declare-fun addStillContains!213 (ListLongMap!3751 (_ BitVec 64) V!8275 (_ BitVec 64)) Unit!7700)

(assert (=> b!248834 (= lt!124688 (addStillContains!213 lt!124672 lt!124681 (zeroValue!4440 thiss!1504) lt!124678))))

(declare-fun +!659 (ListLongMap!3751 tuple2!4824) ListLongMap!3751)

(assert (=> b!248834 (contains!1801 (+!659 lt!124672 (tuple2!4825 lt!124681 (zeroValue!4440 thiss!1504))) lt!124678)))

(declare-fun lt!124687 () Unit!7700)

(assert (=> b!248834 (= lt!124687 lt!124688)))

(declare-fun lt!124677 () ListLongMap!3751)

(assert (=> b!248834 (= lt!124677 (getCurrentListMapNoExtraKeys!556 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)))))

(declare-fun lt!124691 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124691 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124689 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124689 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124673 () Unit!7700)

(declare-fun addApplyDifferent!213 (ListLongMap!3751 (_ BitVec 64) V!8275 (_ BitVec 64)) Unit!7700)

(assert (=> b!248834 (= lt!124673 (addApplyDifferent!213 lt!124677 lt!124691 (minValue!4440 thiss!1504) lt!124689))))

(assert (=> b!248834 (= (apply!237 (+!659 lt!124677 (tuple2!4825 lt!124691 (minValue!4440 thiss!1504))) lt!124689) (apply!237 lt!124677 lt!124689))))

(declare-fun lt!124690 () Unit!7700)

(assert (=> b!248834 (= lt!124690 lt!124673)))

(declare-fun lt!124671 () ListLongMap!3751)

(assert (=> b!248834 (= lt!124671 (getCurrentListMapNoExtraKeys!556 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)))))

(declare-fun lt!124679 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124679 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124684 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124684 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!124682 () Unit!7700)

(assert (=> b!248834 (= lt!124682 (addApplyDifferent!213 lt!124671 lt!124679 (zeroValue!4440 thiss!1504) lt!124684))))

(assert (=> b!248834 (= (apply!237 (+!659 lt!124671 (tuple2!4825 lt!124679 (zeroValue!4440 thiss!1504))) lt!124684) (apply!237 lt!124671 lt!124684))))

(declare-fun lt!124676 () Unit!7700)

(assert (=> b!248834 (= lt!124676 lt!124682)))

(declare-fun lt!124675 () ListLongMap!3751)

(assert (=> b!248834 (= lt!124675 (getCurrentListMapNoExtraKeys!556 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)))))

(declare-fun lt!124683 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124683 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!124686 () (_ BitVec 64))

(assert (=> b!248834 (= lt!124686 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!248834 (= lt!124674 (addApplyDifferent!213 lt!124675 lt!124683 (minValue!4440 thiss!1504) lt!124686))))

(assert (=> b!248834 (= (apply!237 (+!659 lt!124675 (tuple2!4825 lt!124683 (minValue!4440 thiss!1504))) lt!124686) (apply!237 lt!124675 lt!124686))))

(declare-fun b!248835 () Bool)

(assert (=> b!248835 (= e!161409 e!161408)))

(declare-fun res!121942 () Bool)

(assert (=> b!248835 (=> (not res!121942) (not e!161408))))

(assert (=> b!248835 (= res!121942 (contains!1801 lt!124692 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!248835 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun b!248836 () Bool)

(assert (=> b!248836 (= e!161401 (validKeyInArray!0 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!248837 () Bool)

(declare-fun call!23353 () ListLongMap!3751)

(assert (=> b!248837 (= e!161410 call!23353)))

(declare-fun bm!23347 () Bool)

(assert (=> bm!23347 (= call!23351 (contains!1801 lt!124692 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23348 () Bool)

(declare-fun call!23352 () ListLongMap!3751)

(assert (=> bm!23348 (= call!23352 (getCurrentListMapNoExtraKeys!556 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)))))

(declare-fun b!248838 () Bool)

(declare-fun call!23350 () ListLongMap!3751)

(assert (=> b!248838 (= e!161399 (+!659 call!23350 (tuple2!4825 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4440 thiss!1504))))))

(declare-fun b!248839 () Bool)

(assert (=> b!248839 (= e!161405 e!161407)))

(declare-fun res!121943 () Bool)

(assert (=> b!248839 (= res!121943 call!23351)))

(assert (=> b!248839 (=> (not res!121943) (not e!161407))))

(declare-fun b!248840 () Bool)

(declare-fun call!23354 () ListLongMap!3751)

(assert (=> b!248840 (= e!161410 call!23354)))

(declare-fun bm!23349 () Bool)

(assert (=> bm!23349 (= call!23353 call!23350)))

(declare-fun bm!23350 () Bool)

(assert (=> bm!23350 (= call!23349 (contains!1801 lt!124692 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!23351 () Bool)

(declare-fun call!23355 () ListLongMap!3751)

(assert (=> bm!23351 (= call!23354 call!23355)))

(declare-fun bm!23352 () Bool)

(assert (=> bm!23352 (= call!23355 call!23352)))

(declare-fun b!248841 () Bool)

(assert (=> b!248841 (= e!161404 call!23353)))

(declare-fun d!60493 () Bool)

(assert (=> d!60493 e!161406))

(declare-fun res!121944 () Bool)

(assert (=> d!60493 (=> (not res!121944) (not e!161406))))

(assert (=> d!60493 (= res!121944 (or (bvsge #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))))))))

(declare-fun lt!124680 () ListLongMap!3751)

(assert (=> d!60493 (= lt!124692 lt!124680)))

(declare-fun lt!124685 () Unit!7700)

(assert (=> d!60493 (= lt!124685 e!161400)))

(declare-fun c!41699 () Bool)

(assert (=> d!60493 (= c!41699 e!161403)))

(declare-fun res!121945 () Bool)

(assert (=> d!60493 (=> (not res!121945) (not e!161403))))

(assert (=> d!60493 (= res!121945 (bvslt #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))))))

(assert (=> d!60493 (= lt!124680 e!161399)))

(declare-fun c!41701 () Bool)

(assert (=> d!60493 (= c!41701 (and (not (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4336 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60493 (validMask!0 (mask!10753 thiss!1504))))

(assert (=> d!60493 (= (getCurrentListMap!1414 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4599 thiss!1504)) lt!124692)))

(declare-fun bm!23346 () Bool)

(assert (=> bm!23346 (= call!23350 (+!659 (ite c!41701 call!23352 (ite c!41700 call!23355 call!23354)) (ite (or c!41701 c!41700) (tuple2!4825 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4440 thiss!1504)) (tuple2!4825 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4440 thiss!1504)))))))

(declare-fun b!248842 () Bool)

(declare-fun e!161402 () Bool)

(assert (=> b!248842 (= e!161398 e!161402)))

(declare-fun res!121939 () Bool)

(assert (=> b!248842 (= res!121939 call!23349)))

(assert (=> b!248842 (=> (not res!121939) (not e!161402))))

(declare-fun b!248843 () Bool)

(assert (=> b!248843 (= e!161402 (= (apply!237 lt!124692 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4440 thiss!1504)))))

(assert (= (and d!60493 c!41701) b!248838))

(assert (= (and d!60493 (not c!41701)) b!248824))

(assert (= (and b!248824 c!41700) b!248841))

(assert (= (and b!248824 (not c!41700)) b!248825))

(assert (= (and b!248825 c!41698) b!248837))

(assert (= (and b!248825 (not c!41698)) b!248840))

(assert (= (or b!248837 b!248840) bm!23351))

(assert (= (or b!248841 bm!23351) bm!23352))

(assert (= (or b!248841 b!248837) bm!23349))

(assert (= (or b!248838 bm!23352) bm!23348))

(assert (= (or b!248838 bm!23349) bm!23346))

(assert (= (and d!60493 res!121945) b!248833))

(assert (= (and d!60493 c!41699) b!248834))

(assert (= (and d!60493 (not c!41699)) b!248828))

(assert (= (and d!60493 res!121944) b!248829))

(assert (= (and b!248829 res!121937) b!248836))

(assert (= (and b!248829 (not res!121940)) b!248835))

(assert (= (and b!248835 res!121942) b!248830))

(assert (= (and b!248829 res!121941) b!248827))

(assert (= (and b!248827 c!41702) b!248839))

(assert (= (and b!248827 (not c!41702)) b!248832))

(assert (= (and b!248839 res!121943) b!248831))

(assert (= (or b!248839 b!248832) bm!23347))

(assert (= (and b!248827 res!121938) b!248826))

(assert (= (and b!248826 c!41703) b!248842))

(assert (= (and b!248826 (not c!41703)) b!248823))

(assert (= (and b!248842 res!121939) b!248843))

(assert (= (or b!248842 b!248823) bm!23350))

(declare-fun b_lambda!8089 () Bool)

(assert (=> (not b_lambda!8089) (not b!248830)))

(declare-fun t!8767 () Bool)

(declare-fun tb!2995 () Bool)

(assert (=> (and b!248681 (= (defaultEntry!4599 thiss!1504) (defaultEntry!4599 thiss!1504)) t!8767) tb!2995))

(declare-fun result!5291 () Bool)

(assert (=> tb!2995 (= result!5291 tp_is_empty!6471)))

(assert (=> b!248830 t!8767))

(declare-fun b_and!13637 () Bool)

(assert (= b_and!13633 (and (=> t!8767 result!5291) b_and!13637)))

(declare-fun m!265465 () Bool)

(assert (=> bm!23350 m!265465))

(declare-fun m!265467 () Bool)

(assert (=> b!248836 m!265467))

(assert (=> b!248836 m!265467))

(declare-fun m!265469 () Bool)

(assert (=> b!248836 m!265469))

(declare-fun m!265471 () Bool)

(assert (=> bm!23348 m!265471))

(assert (=> b!248835 m!265467))

(assert (=> b!248835 m!265467))

(declare-fun m!265473 () Bool)

(assert (=> b!248835 m!265473))

(declare-fun m!265475 () Bool)

(assert (=> b!248830 m!265475))

(declare-fun m!265477 () Bool)

(assert (=> b!248830 m!265477))

(declare-fun m!265479 () Bool)

(assert (=> b!248830 m!265479))

(assert (=> b!248830 m!265477))

(assert (=> b!248830 m!265475))

(assert (=> b!248830 m!265467))

(declare-fun m!265481 () Bool)

(assert (=> b!248830 m!265481))

(assert (=> b!248830 m!265467))

(declare-fun m!265483 () Bool)

(assert (=> bm!23346 m!265483))

(declare-fun m!265485 () Bool)

(assert (=> b!248831 m!265485))

(assert (=> d!60493 m!265377))

(declare-fun m!265487 () Bool)

(assert (=> b!248834 m!265487))

(declare-fun m!265489 () Bool)

(assert (=> b!248834 m!265489))

(declare-fun m!265491 () Bool)

(assert (=> b!248834 m!265491))

(declare-fun m!265493 () Bool)

(assert (=> b!248834 m!265493))

(declare-fun m!265495 () Bool)

(assert (=> b!248834 m!265495))

(declare-fun m!265497 () Bool)

(assert (=> b!248834 m!265497))

(assert (=> b!248834 m!265471))

(declare-fun m!265499 () Bool)

(assert (=> b!248834 m!265499))

(declare-fun m!265501 () Bool)

(assert (=> b!248834 m!265501))

(declare-fun m!265503 () Bool)

(assert (=> b!248834 m!265503))

(assert (=> b!248834 m!265501))

(declare-fun m!265505 () Bool)

(assert (=> b!248834 m!265505))

(declare-fun m!265507 () Bool)

(assert (=> b!248834 m!265507))

(assert (=> b!248834 m!265467))

(declare-fun m!265509 () Bool)

(assert (=> b!248834 m!265509))

(assert (=> b!248834 m!265497))

(declare-fun m!265511 () Bool)

(assert (=> b!248834 m!265511))

(declare-fun m!265513 () Bool)

(assert (=> b!248834 m!265513))

(declare-fun m!265515 () Bool)

(assert (=> b!248834 m!265515))

(assert (=> b!248834 m!265489))

(assert (=> b!248834 m!265513))

(declare-fun m!265517 () Bool)

(assert (=> bm!23347 m!265517))

(declare-fun m!265519 () Bool)

(assert (=> b!248838 m!265519))

(assert (=> b!248833 m!265467))

(assert (=> b!248833 m!265467))

(assert (=> b!248833 m!265469))

(declare-fun m!265521 () Bool)

(assert (=> b!248843 m!265521))

(assert (=> b!248673 d!60493))

(declare-fun d!60495 () Bool)

(declare-fun lt!124695 () (_ BitVec 32))

(assert (=> d!60495 (and (bvsge lt!124695 #b00000000000000000000000000000000) (bvsle lt!124695 (bvsub (size!6155 lt!124570) #b00000000000000000000000000000000)))))

(declare-fun e!161416 () (_ BitVec 32))

(assert (=> d!60495 (= lt!124695 e!161416)))

(declare-fun c!41708 () Bool)

(assert (=> d!60495 (= c!41708 (bvsge #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))))))

(assert (=> d!60495 (and (bvsle #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6155 (_keys!6725 thiss!1504)) (size!6155 lt!124570)))))

(assert (=> d!60495 (= (arrayCountValidKeys!0 lt!124570 #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) lt!124695)))

(declare-fun b!248854 () Bool)

(assert (=> b!248854 (= e!161416 #b00000000000000000000000000000000)))

(declare-fun b!248855 () Bool)

(declare-fun e!161415 () (_ BitVec 32))

(declare-fun call!23358 () (_ BitVec 32))

(assert (=> b!248855 (= e!161415 (bvadd #b00000000000000000000000000000001 call!23358))))

(declare-fun bm!23355 () Bool)

(assert (=> bm!23355 (= call!23358 (arrayCountValidKeys!0 lt!124570 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun b!248856 () Bool)

(assert (=> b!248856 (= e!161415 call!23358)))

(declare-fun b!248857 () Bool)

(assert (=> b!248857 (= e!161416 e!161415)))

(declare-fun c!41709 () Bool)

(assert (=> b!248857 (= c!41709 (validKeyInArray!0 (select (arr!5812 lt!124570) #b00000000000000000000000000000000)))))

(assert (= (and d!60495 c!41708) b!248854))

(assert (= (and d!60495 (not c!41708)) b!248857))

(assert (= (and b!248857 c!41709) b!248855))

(assert (= (and b!248857 (not c!41709)) b!248856))

(assert (= (or b!248855 b!248856) bm!23355))

(declare-fun m!265523 () Bool)

(assert (=> bm!23355 m!265523))

(declare-fun m!265525 () Bool)

(assert (=> b!248857 m!265525))

(assert (=> b!248857 m!265525))

(declare-fun m!265527 () Bool)

(assert (=> b!248857 m!265527))

(assert (=> b!248684 d!60495))

(declare-fun d!60497 () Bool)

(declare-fun lt!124696 () (_ BitVec 32))

(assert (=> d!60497 (and (bvsge lt!124696 #b00000000000000000000000000000000) (bvsle lt!124696 (bvsub (size!6155 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!161418 () (_ BitVec 32))

(assert (=> d!60497 (= lt!124696 e!161418)))

(declare-fun c!41710 () Bool)

(assert (=> d!60497 (= c!41710 (bvsge #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))))))

(assert (=> d!60497 (and (bvsle #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6155 (_keys!6725 thiss!1504)) (size!6155 (_keys!6725 thiss!1504))))))

(assert (=> d!60497 (= (arrayCountValidKeys!0 (_keys!6725 thiss!1504) #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) lt!124696)))

(declare-fun b!248858 () Bool)

(assert (=> b!248858 (= e!161418 #b00000000000000000000000000000000)))

(declare-fun b!248859 () Bool)

(declare-fun e!161417 () (_ BitVec 32))

(declare-fun call!23359 () (_ BitVec 32))

(assert (=> b!248859 (= e!161417 (bvadd #b00000000000000000000000000000001 call!23359))))

(declare-fun bm!23356 () Bool)

(assert (=> bm!23356 (= call!23359 (arrayCountValidKeys!0 (_keys!6725 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun b!248860 () Bool)

(assert (=> b!248860 (= e!161417 call!23359)))

(declare-fun b!248861 () Bool)

(assert (=> b!248861 (= e!161418 e!161417)))

(declare-fun c!41711 () Bool)

(assert (=> b!248861 (= c!41711 (validKeyInArray!0 (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!60497 c!41710) b!248858))

(assert (= (and d!60497 (not c!41710)) b!248861))

(assert (= (and b!248861 c!41711) b!248859))

(assert (= (and b!248861 (not c!41711)) b!248860))

(assert (= (or b!248859 b!248860) bm!23356))

(declare-fun m!265529 () Bool)

(assert (=> bm!23356 m!265529))

(assert (=> b!248861 m!265467))

(assert (=> b!248861 m!265467))

(assert (=> b!248861 m!265469))

(assert (=> b!248684 d!60497))

(declare-fun d!60499 () Bool)

(assert (=> d!60499 (= (validMask!0 (mask!10753 thiss!1504)) (and (or (= (mask!10753 thiss!1504) #b00000000000000000000000000000111) (= (mask!10753 thiss!1504) #b00000000000000000000000000001111) (= (mask!10753 thiss!1504) #b00000000000000000000000000011111) (= (mask!10753 thiss!1504) #b00000000000000000000000000111111) (= (mask!10753 thiss!1504) #b00000000000000000000000001111111) (= (mask!10753 thiss!1504) #b00000000000000000000000011111111) (= (mask!10753 thiss!1504) #b00000000000000000000000111111111) (= (mask!10753 thiss!1504) #b00000000000000000000001111111111) (= (mask!10753 thiss!1504) #b00000000000000000000011111111111) (= (mask!10753 thiss!1504) #b00000000000000000000111111111111) (= (mask!10753 thiss!1504) #b00000000000000000001111111111111) (= (mask!10753 thiss!1504) #b00000000000000000011111111111111) (= (mask!10753 thiss!1504) #b00000000000000000111111111111111) (= (mask!10753 thiss!1504) #b00000000000000001111111111111111) (= (mask!10753 thiss!1504) #b00000000000000011111111111111111) (= (mask!10753 thiss!1504) #b00000000000000111111111111111111) (= (mask!10753 thiss!1504) #b00000000000001111111111111111111) (= (mask!10753 thiss!1504) #b00000000000011111111111111111111) (= (mask!10753 thiss!1504) #b00000000000111111111111111111111) (= (mask!10753 thiss!1504) #b00000000001111111111111111111111) (= (mask!10753 thiss!1504) #b00000000011111111111111111111111) (= (mask!10753 thiss!1504) #b00000000111111111111111111111111) (= (mask!10753 thiss!1504) #b00000001111111111111111111111111) (= (mask!10753 thiss!1504) #b00000011111111111111111111111111) (= (mask!10753 thiss!1504) #b00000111111111111111111111111111) (= (mask!10753 thiss!1504) #b00001111111111111111111111111111) (= (mask!10753 thiss!1504) #b00011111111111111111111111111111) (= (mask!10753 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10753 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!248684 d!60499))

(declare-fun b!248870 () Bool)

(declare-fun e!161427 () Bool)

(declare-fun call!23362 () Bool)

(assert (=> b!248870 (= e!161427 call!23362)))

(declare-fun bm!23359 () Bool)

(assert (=> bm!23359 (= call!23362 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!124570 (mask!10753 thiss!1504)))))

(declare-fun d!60501 () Bool)

(declare-fun res!121950 () Bool)

(declare-fun e!161426 () Bool)

(assert (=> d!60501 (=> res!121950 e!161426)))

(assert (=> d!60501 (= res!121950 (bvsge #b00000000000000000000000000000000 (size!6155 lt!124570)))))

(assert (=> d!60501 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!124570 (mask!10753 thiss!1504)) e!161426)))

(declare-fun b!248871 () Bool)

(declare-fun e!161425 () Bool)

(assert (=> b!248871 (= e!161425 call!23362)))

(declare-fun b!248872 () Bool)

(assert (=> b!248872 (= e!161425 e!161427)))

(declare-fun lt!124704 () (_ BitVec 64))

(assert (=> b!248872 (= lt!124704 (select (arr!5812 lt!124570) #b00000000000000000000000000000000))))

(declare-fun lt!124703 () Unit!7700)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12254 (_ BitVec 64) (_ BitVec 32)) Unit!7700)

(assert (=> b!248872 (= lt!124703 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!124570 lt!124704 #b00000000000000000000000000000000))))

(assert (=> b!248872 (arrayContainsKey!0 lt!124570 lt!124704 #b00000000000000000000000000000000)))

(declare-fun lt!124705 () Unit!7700)

(assert (=> b!248872 (= lt!124705 lt!124703)))

(declare-fun res!121951 () Bool)

(assert (=> b!248872 (= res!121951 (= (seekEntryOrOpen!0 (select (arr!5812 lt!124570) #b00000000000000000000000000000000) lt!124570 (mask!10753 thiss!1504)) (Found!1123 #b00000000000000000000000000000000)))))

(assert (=> b!248872 (=> (not res!121951) (not e!161427))))

(declare-fun b!248873 () Bool)

(assert (=> b!248873 (= e!161426 e!161425)))

(declare-fun c!41714 () Bool)

(assert (=> b!248873 (= c!41714 (validKeyInArray!0 (select (arr!5812 lt!124570) #b00000000000000000000000000000000)))))

(assert (= (and d!60501 (not res!121950)) b!248873))

(assert (= (and b!248873 c!41714) b!248872))

(assert (= (and b!248873 (not c!41714)) b!248871))

(assert (= (and b!248872 res!121951) b!248870))

(assert (= (or b!248870 b!248871) bm!23359))

(declare-fun m!265531 () Bool)

(assert (=> bm!23359 m!265531))

(assert (=> b!248872 m!265525))

(declare-fun m!265533 () Bool)

(assert (=> b!248872 m!265533))

(declare-fun m!265535 () Bool)

(assert (=> b!248872 m!265535))

(assert (=> b!248872 m!265525))

(declare-fun m!265537 () Bool)

(assert (=> b!248872 m!265537))

(assert (=> b!248873 m!265525))

(assert (=> b!248873 m!265525))

(assert (=> b!248873 m!265527))

(assert (=> b!248684 d!60501))

(declare-fun d!60503 () Bool)

(declare-fun e!161430 () Bool)

(assert (=> d!60503 e!161430))

(declare-fun res!121954 () Bool)

(assert (=> d!60503 (=> (not res!121954) (not e!161430))))

(assert (=> d!60503 (= res!121954 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6155 (_keys!6725 thiss!1504)))))))

(declare-fun lt!124708 () Unit!7700)

(declare-fun choose!41 (array!12254 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3730) Unit!7700)

(assert (=> d!60503 (= lt!124708 (choose!41 (_keys!6725 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3727))))

(assert (=> d!60503 (bvslt (size!6155 (_keys!6725 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60503 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6725 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3727) lt!124708)))

(declare-fun b!248876 () Bool)

(assert (=> b!248876 (= e!161430 (arrayNoDuplicates!0 (array!12255 (store (arr!5812 (_keys!6725 thiss!1504)) index!297 key!932) (size!6155 (_keys!6725 thiss!1504))) #b00000000000000000000000000000000 Nil!3727))))

(assert (= (and d!60503 res!121954) b!248876))

(declare-fun m!265539 () Bool)

(assert (=> d!60503 m!265539))

(assert (=> b!248876 m!265381))

(declare-fun m!265541 () Bool)

(assert (=> b!248876 m!265541))

(assert (=> b!248684 d!60503))

(declare-fun b!248888 () Bool)

(declare-fun e!161435 () Bool)

(assert (=> b!248888 (= e!161435 (= (arrayCountValidKeys!0 (array!12255 (store (arr!5812 (_keys!6725 thiss!1504)) index!297 key!932) (size!6155 (_keys!6725 thiss!1504))) #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6725 thiss!1504) #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!60505 () Bool)

(assert (=> d!60505 e!161435))

(declare-fun res!121964 () Bool)

(assert (=> d!60505 (=> (not res!121964) (not e!161435))))

(assert (=> d!60505 (= res!121964 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6155 (_keys!6725 thiss!1504)))))))

(declare-fun lt!124711 () Unit!7700)

(declare-fun choose!1 (array!12254 (_ BitVec 32) (_ BitVec 64)) Unit!7700)

(assert (=> d!60505 (= lt!124711 (choose!1 (_keys!6725 thiss!1504) index!297 key!932))))

(declare-fun e!161436 () Bool)

(assert (=> d!60505 e!161436))

(declare-fun res!121963 () Bool)

(assert (=> d!60505 (=> (not res!121963) (not e!161436))))

(assert (=> d!60505 (= res!121963 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6155 (_keys!6725 thiss!1504)))))))

(assert (=> d!60505 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6725 thiss!1504) index!297 key!932) lt!124711)))

(declare-fun b!248886 () Bool)

(declare-fun res!121966 () Bool)

(assert (=> b!248886 (=> (not res!121966) (not e!161436))))

(assert (=> b!248886 (= res!121966 (validKeyInArray!0 key!932))))

(declare-fun b!248885 () Bool)

(declare-fun res!121965 () Bool)

(assert (=> b!248885 (=> (not res!121965) (not e!161436))))

(assert (=> b!248885 (= res!121965 (not (validKeyInArray!0 (select (arr!5812 (_keys!6725 thiss!1504)) index!297))))))

(declare-fun b!248887 () Bool)

(assert (=> b!248887 (= e!161436 (bvslt (size!6155 (_keys!6725 thiss!1504)) #b01111111111111111111111111111111))))

(assert (= (and d!60505 res!121963) b!248885))

(assert (= (and b!248885 res!121965) b!248886))

(assert (= (and b!248886 res!121966) b!248887))

(assert (= (and d!60505 res!121964) b!248888))

(assert (=> b!248888 m!265381))

(declare-fun m!265543 () Bool)

(assert (=> b!248888 m!265543))

(assert (=> b!248888 m!265383))

(declare-fun m!265545 () Bool)

(assert (=> d!60505 m!265545))

(declare-fun m!265547 () Bool)

(assert (=> b!248886 m!265547))

(declare-fun m!265549 () Bool)

(assert (=> b!248885 m!265549))

(assert (=> b!248885 m!265549))

(declare-fun m!265551 () Bool)

(assert (=> b!248885 m!265551))

(assert (=> b!248684 d!60505))

(declare-fun b!248899 () Bool)

(declare-fun e!161447 () Bool)

(declare-fun e!161448 () Bool)

(assert (=> b!248899 (= e!161447 e!161448)))

(declare-fun c!41717 () Bool)

(assert (=> b!248899 (= c!41717 (validKeyInArray!0 (select (arr!5812 lt!124570) #b00000000000000000000000000000000)))))

(declare-fun bm!23362 () Bool)

(declare-fun call!23365 () Bool)

(assert (=> bm!23362 (= call!23365 (arrayNoDuplicates!0 lt!124570 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41717 (Cons!3726 (select (arr!5812 lt!124570) #b00000000000000000000000000000000) Nil!3727) Nil!3727)))))

(declare-fun d!60507 () Bool)

(declare-fun res!121973 () Bool)

(declare-fun e!161445 () Bool)

(assert (=> d!60507 (=> res!121973 e!161445)))

(assert (=> d!60507 (= res!121973 (bvsge #b00000000000000000000000000000000 (size!6155 lt!124570)))))

(assert (=> d!60507 (= (arrayNoDuplicates!0 lt!124570 #b00000000000000000000000000000000 Nil!3727) e!161445)))

(declare-fun b!248900 () Bool)

(assert (=> b!248900 (= e!161445 e!161447)))

(declare-fun res!121975 () Bool)

(assert (=> b!248900 (=> (not res!121975) (not e!161447))))

(declare-fun e!161446 () Bool)

(assert (=> b!248900 (= res!121975 (not e!161446))))

(declare-fun res!121974 () Bool)

(assert (=> b!248900 (=> (not res!121974) (not e!161446))))

(assert (=> b!248900 (= res!121974 (validKeyInArray!0 (select (arr!5812 lt!124570) #b00000000000000000000000000000000)))))

(declare-fun b!248901 () Bool)

(declare-fun contains!1802 (List!3730 (_ BitVec 64)) Bool)

(assert (=> b!248901 (= e!161446 (contains!1802 Nil!3727 (select (arr!5812 lt!124570) #b00000000000000000000000000000000)))))

(declare-fun b!248902 () Bool)

(assert (=> b!248902 (= e!161448 call!23365)))

(declare-fun b!248903 () Bool)

(assert (=> b!248903 (= e!161448 call!23365)))

(assert (= (and d!60507 (not res!121973)) b!248900))

(assert (= (and b!248900 res!121974) b!248901))

(assert (= (and b!248900 res!121975) b!248899))

(assert (= (and b!248899 c!41717) b!248902))

(assert (= (and b!248899 (not c!41717)) b!248903))

(assert (= (or b!248902 b!248903) bm!23362))

(assert (=> b!248899 m!265525))

(assert (=> b!248899 m!265525))

(assert (=> b!248899 m!265527))

(assert (=> bm!23362 m!265525))

(declare-fun m!265553 () Bool)

(assert (=> bm!23362 m!265553))

(assert (=> b!248900 m!265525))

(assert (=> b!248900 m!265525))

(assert (=> b!248900 m!265527))

(assert (=> b!248901 m!265525))

(assert (=> b!248901 m!265525))

(declare-fun m!265555 () Bool)

(assert (=> b!248901 m!265555))

(assert (=> b!248684 d!60507))

(declare-fun d!60509 () Bool)

(declare-fun res!121980 () Bool)

(declare-fun e!161453 () Bool)

(assert (=> d!60509 (=> res!121980 e!161453)))

(assert (=> d!60509 (= res!121980 (= (select (arr!5812 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60509 (= (arrayContainsKey!0 (_keys!6725 thiss!1504) key!932 #b00000000000000000000000000000000) e!161453)))

(declare-fun b!248908 () Bool)

(declare-fun e!161454 () Bool)

(assert (=> b!248908 (= e!161453 e!161454)))

(declare-fun res!121981 () Bool)

(assert (=> b!248908 (=> (not res!121981) (not e!161454))))

(assert (=> b!248908 (= res!121981 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6155 (_keys!6725 thiss!1504))))))

(declare-fun b!248909 () Bool)

(assert (=> b!248909 (= e!161454 (arrayContainsKey!0 (_keys!6725 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60509 (not res!121980)) b!248908))

(assert (= (and b!248908 res!121981) b!248909))

(assert (=> d!60509 m!265467))

(declare-fun m!265557 () Bool)

(assert (=> b!248909 m!265557))

(assert (=> b!248684 d!60509))

(declare-fun d!60511 () Bool)

(declare-fun e!161457 () Bool)

(assert (=> d!60511 e!161457))

(declare-fun res!121984 () Bool)

(assert (=> d!60511 (=> (not res!121984) (not e!161457))))

(assert (=> d!60511 (= res!121984 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6155 (_keys!6725 thiss!1504)))))))

(declare-fun lt!124714 () Unit!7700)

(declare-fun choose!102 ((_ BitVec 64) array!12254 (_ BitVec 32) (_ BitVec 32)) Unit!7700)

(assert (=> d!60511 (= lt!124714 (choose!102 key!932 (_keys!6725 thiss!1504) index!297 (mask!10753 thiss!1504)))))

(assert (=> d!60511 (validMask!0 (mask!10753 thiss!1504))))

(assert (=> d!60511 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6725 thiss!1504) index!297 (mask!10753 thiss!1504)) lt!124714)))

(declare-fun b!248912 () Bool)

(assert (=> b!248912 (= e!161457 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12255 (store (arr!5812 (_keys!6725 thiss!1504)) index!297 key!932) (size!6155 (_keys!6725 thiss!1504))) (mask!10753 thiss!1504)))))

(assert (= (and d!60511 res!121984) b!248912))

(declare-fun m!265559 () Bool)

(assert (=> d!60511 m!265559))

(assert (=> d!60511 m!265377))

(assert (=> b!248912 m!265381))

(declare-fun m!265561 () Bool)

(assert (=> b!248912 m!265561))

(assert (=> b!248684 d!60511))

(declare-fun d!60513 () Bool)

(declare-fun e!161460 () Bool)

(assert (=> d!60513 e!161460))

(declare-fun res!121990 () Bool)

(assert (=> d!60513 (=> (not res!121990) (not e!161460))))

(declare-fun lt!124719 () SeekEntryResult!1123)

(assert (=> d!60513 (= res!121990 ((_ is Found!1123) lt!124719))))

(assert (=> d!60513 (= lt!124719 (seekEntryOrOpen!0 key!932 (_keys!6725 thiss!1504) (mask!10753 thiss!1504)))))

(declare-fun lt!124720 () Unit!7700)

(declare-fun choose!1180 (array!12254 array!12252 (_ BitVec 32) (_ BitVec 32) V!8275 V!8275 (_ BitVec 64) Int) Unit!7700)

(assert (=> d!60513 (= lt!124720 (choose!1180 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 (defaultEntry!4599 thiss!1504)))))

(assert (=> d!60513 (validMask!0 (mask!10753 thiss!1504))))

(assert (=> d!60513 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!392 (_keys!6725 thiss!1504) (_values!4582 thiss!1504) (mask!10753 thiss!1504) (extraKeys!4336 thiss!1504) (zeroValue!4440 thiss!1504) (minValue!4440 thiss!1504) key!932 (defaultEntry!4599 thiss!1504)) lt!124720)))

(declare-fun b!248917 () Bool)

(declare-fun res!121989 () Bool)

(assert (=> b!248917 (=> (not res!121989) (not e!161460))))

(assert (=> b!248917 (= res!121989 (inRange!0 (index!6663 lt!124719) (mask!10753 thiss!1504)))))

(declare-fun b!248918 () Bool)

(assert (=> b!248918 (= e!161460 (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6663 lt!124719)) key!932))))

(assert (=> b!248918 (and (bvsge (index!6663 lt!124719) #b00000000000000000000000000000000) (bvslt (index!6663 lt!124719) (size!6155 (_keys!6725 thiss!1504))))))

(assert (= (and d!60513 res!121990) b!248917))

(assert (= (and b!248917 res!121989) b!248918))

(assert (=> d!60513 m!265375))

(declare-fun m!265563 () Bool)

(assert (=> d!60513 m!265563))

(assert (=> d!60513 m!265377))

(declare-fun m!265565 () Bool)

(assert (=> b!248917 m!265565))

(declare-fun m!265567 () Bool)

(assert (=> b!248918 m!265567))

(assert (=> b!248677 d!60513))

(declare-fun d!60515 () Bool)

(assert (=> d!60515 (= (inRange!0 (ite c!41661 (index!6662 lt!124567) (index!6665 lt!124567)) (mask!10753 thiss!1504)) (and (bvsge (ite c!41661 (index!6662 lt!124567) (index!6665 lt!124567)) #b00000000000000000000000000000000) (bvslt (ite c!41661 (index!6662 lt!124567) (index!6665 lt!124567)) (bvadd (mask!10753 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23318 d!60515))

(declare-fun d!60517 () Bool)

(declare-fun res!121997 () Bool)

(declare-fun e!161463 () Bool)

(assert (=> d!60517 (=> (not res!121997) (not e!161463))))

(declare-fun simpleValid!259 (LongMapFixedSize!3684) Bool)

(assert (=> d!60517 (= res!121997 (simpleValid!259 thiss!1504))))

(assert (=> d!60517 (= (valid!1434 thiss!1504) e!161463)))

(declare-fun b!248925 () Bool)

(declare-fun res!121998 () Bool)

(assert (=> b!248925 (=> (not res!121998) (not e!161463))))

(assert (=> b!248925 (= res!121998 (= (arrayCountValidKeys!0 (_keys!6725 thiss!1504) #b00000000000000000000000000000000 (size!6155 (_keys!6725 thiss!1504))) (_size!1891 thiss!1504)))))

(declare-fun b!248926 () Bool)

(declare-fun res!121999 () Bool)

(assert (=> b!248926 (=> (not res!121999) (not e!161463))))

(assert (=> b!248926 (= res!121999 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6725 thiss!1504) (mask!10753 thiss!1504)))))

(declare-fun b!248927 () Bool)

(assert (=> b!248927 (= e!161463 (arrayNoDuplicates!0 (_keys!6725 thiss!1504) #b00000000000000000000000000000000 Nil!3727))))

(assert (= (and d!60517 res!121997) b!248925))

(assert (= (and b!248925 res!121998) b!248926))

(assert (= (and b!248926 res!121999) b!248927))

(declare-fun m!265569 () Bool)

(assert (=> d!60517 m!265569))

(assert (=> b!248925 m!265383))

(declare-fun m!265571 () Bool)

(assert (=> b!248926 m!265571))

(declare-fun m!265573 () Bool)

(assert (=> b!248927 m!265573))

(assert (=> start!23674 d!60517))

(declare-fun d!60519 () Bool)

(assert (=> d!60519 (= (array_inv!3827 (_keys!6725 thiss!1504)) (bvsge (size!6155 (_keys!6725 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!248681 d!60519))

(declare-fun d!60521 () Bool)

(assert (=> d!60521 (= (array_inv!3828 (_values!4582 thiss!1504)) (bvsge (size!6154 (_values!4582 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!248681 d!60521))

(declare-fun b!248940 () Bool)

(declare-fun c!41725 () Bool)

(declare-fun lt!124727 () (_ BitVec 64))

(assert (=> b!248940 (= c!41725 (= lt!124727 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!161472 () SeekEntryResult!1123)

(declare-fun e!161470 () SeekEntryResult!1123)

(assert (=> b!248940 (= e!161472 e!161470)))

(declare-fun d!60523 () Bool)

(declare-fun lt!124728 () SeekEntryResult!1123)

(assert (=> d!60523 (and (or ((_ is Undefined!1123) lt!124728) (not ((_ is Found!1123) lt!124728)) (and (bvsge (index!6663 lt!124728) #b00000000000000000000000000000000) (bvslt (index!6663 lt!124728) (size!6155 (_keys!6725 thiss!1504))))) (or ((_ is Undefined!1123) lt!124728) ((_ is Found!1123) lt!124728) (not ((_ is MissingZero!1123) lt!124728)) (and (bvsge (index!6662 lt!124728) #b00000000000000000000000000000000) (bvslt (index!6662 lt!124728) (size!6155 (_keys!6725 thiss!1504))))) (or ((_ is Undefined!1123) lt!124728) ((_ is Found!1123) lt!124728) ((_ is MissingZero!1123) lt!124728) (not ((_ is MissingVacant!1123) lt!124728)) (and (bvsge (index!6665 lt!124728) #b00000000000000000000000000000000) (bvslt (index!6665 lt!124728) (size!6155 (_keys!6725 thiss!1504))))) (or ((_ is Undefined!1123) lt!124728) (ite ((_ is Found!1123) lt!124728) (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6663 lt!124728)) key!932) (ite ((_ is MissingZero!1123) lt!124728) (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6662 lt!124728)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1123) lt!124728) (= (select (arr!5812 (_keys!6725 thiss!1504)) (index!6665 lt!124728)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!161471 () SeekEntryResult!1123)

(assert (=> d!60523 (= lt!124728 e!161471)))

(declare-fun c!41724 () Bool)

(declare-fun lt!124729 () SeekEntryResult!1123)

(assert (=> d!60523 (= c!41724 (and ((_ is Intermediate!1123) lt!124729) (undefined!1935 lt!124729)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12254 (_ BitVec 32)) SeekEntryResult!1123)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60523 (= lt!124729 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10753 thiss!1504)) key!932 (_keys!6725 thiss!1504) (mask!10753 thiss!1504)))))

(assert (=> d!60523 (validMask!0 (mask!10753 thiss!1504))))

(assert (=> d!60523 (= (seekEntryOrOpen!0 key!932 (_keys!6725 thiss!1504) (mask!10753 thiss!1504)) lt!124728)))

(declare-fun b!248941 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12254 (_ BitVec 32)) SeekEntryResult!1123)

(assert (=> b!248941 (= e!161470 (seekKeyOrZeroReturnVacant!0 (x!24603 lt!124729) (index!6664 lt!124729) (index!6664 lt!124729) key!932 (_keys!6725 thiss!1504) (mask!10753 thiss!1504)))))

(declare-fun b!248942 () Bool)

(assert (=> b!248942 (= e!161471 Undefined!1123)))

(declare-fun b!248943 () Bool)

(assert (=> b!248943 (= e!161470 (MissingZero!1123 (index!6664 lt!124729)))))

(declare-fun b!248944 () Bool)

(assert (=> b!248944 (= e!161471 e!161472)))

(assert (=> b!248944 (= lt!124727 (select (arr!5812 (_keys!6725 thiss!1504)) (index!6664 lt!124729)))))

(declare-fun c!41726 () Bool)

(assert (=> b!248944 (= c!41726 (= lt!124727 key!932))))

(declare-fun b!248945 () Bool)

(assert (=> b!248945 (= e!161472 (Found!1123 (index!6664 lt!124729)))))

(assert (= (and d!60523 c!41724) b!248942))

(assert (= (and d!60523 (not c!41724)) b!248944))

(assert (= (and b!248944 c!41726) b!248945))

(assert (= (and b!248944 (not c!41726)) b!248940))

(assert (= (and b!248940 c!41725) b!248943))

(assert (= (and b!248940 (not c!41725)) b!248941))

(assert (=> d!60523 m!265377))

(declare-fun m!265575 () Bool)

(assert (=> d!60523 m!265575))

(declare-fun m!265577 () Bool)

(assert (=> d!60523 m!265577))

(declare-fun m!265579 () Bool)

(assert (=> d!60523 m!265579))

(declare-fun m!265581 () Bool)

(assert (=> d!60523 m!265581))

(assert (=> d!60523 m!265581))

(declare-fun m!265583 () Bool)

(assert (=> d!60523 m!265583))

(declare-fun m!265585 () Bool)

(assert (=> b!248941 m!265585))

(declare-fun m!265587 () Bool)

(assert (=> b!248944 m!265587))

(assert (=> b!248670 d!60523))

(assert (=> bm!23319 d!60509))

(declare-fun condMapEmpty!10994 () Bool)

(declare-fun mapDefault!10994 () ValueCell!2892)

(assert (=> mapNonEmpty!10988 (= condMapEmpty!10994 (= mapRest!10988 ((as const (Array (_ BitVec 32) ValueCell!2892)) mapDefault!10994)))))

(declare-fun e!161477 () Bool)

(declare-fun mapRes!10994 () Bool)

(assert (=> mapNonEmpty!10988 (= tp!23081 (and e!161477 mapRes!10994))))

(declare-fun b!248952 () Bool)

(declare-fun e!161478 () Bool)

(assert (=> b!248952 (= e!161478 tp_is_empty!6471)))

(declare-fun mapIsEmpty!10994 () Bool)

(assert (=> mapIsEmpty!10994 mapRes!10994))

(declare-fun mapNonEmpty!10994 () Bool)

(declare-fun tp!23090 () Bool)

(assert (=> mapNonEmpty!10994 (= mapRes!10994 (and tp!23090 e!161478))))

(declare-fun mapKey!10994 () (_ BitVec 32))

(declare-fun mapValue!10994 () ValueCell!2892)

(declare-fun mapRest!10994 () (Array (_ BitVec 32) ValueCell!2892))

(assert (=> mapNonEmpty!10994 (= mapRest!10988 (store mapRest!10994 mapKey!10994 mapValue!10994))))

(declare-fun b!248953 () Bool)

(assert (=> b!248953 (= e!161477 tp_is_empty!6471)))

(assert (= (and mapNonEmpty!10988 condMapEmpty!10994) mapIsEmpty!10994))

(assert (= (and mapNonEmpty!10988 (not condMapEmpty!10994)) mapNonEmpty!10994))

(assert (= (and mapNonEmpty!10994 ((_ is ValueCellFull!2892) mapValue!10994)) b!248952))

(assert (= (and mapNonEmpty!10988 ((_ is ValueCellFull!2892) mapDefault!10994)) b!248953))

(declare-fun m!265589 () Bool)

(assert (=> mapNonEmpty!10994 m!265589))

(declare-fun b_lambda!8091 () Bool)

(assert (= b_lambda!8089 (or (and b!248681 b_free!6609) b_lambda!8091)))

(check-sat b_and!13637 (not d!60487) (not b!248885) (not b!248831) (not b_lambda!8091) (not b!248899) (not b!248857) (not bm!23347) (not b!248888) (not bm!23348) (not b!248830) (not d!60493) (not b!248876) (not b!248833) (not d!60485) (not b!248835) (not bm!23346) (not d!60517) (not b!248941) (not bm!23355) (not d!60523) (not b!248912) (not b!248836) (not b!248926) (not b!248838) (not d!60503) (not bm!23362) (not b!248917) (not d!60513) (not b!248925) (not b!248873) (not b!248834) (not bm!23359) (not b!248872) tp_is_empty!6471 (not b!248778) (not bm!23356) (not b!248909) (not bm!23331) (not b_next!6609) (not d!60491) (not b!248861) (not d!60511) (not bm!23330) (not bm!23350) (not d!60505) (not b!248900) (not b!248927) (not b!248886) (not b!248780) (not b!248843) (not b!248901) (not mapNonEmpty!10994))
(check-sat b_and!13637 (not b_next!6609))
