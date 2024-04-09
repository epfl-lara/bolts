; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!23380 () Bool)

(assert start!23380)

(declare-fun b!245683 () Bool)

(declare-fun b_free!6561 () Bool)

(declare-fun b_next!6561 () Bool)

(assert (=> b!245683 (= b_free!6561 (not b_next!6561))))

(declare-fun tp!22917 () Bool)

(declare-fun b_and!13569 () Bool)

(assert (=> b!245683 (= tp!22917 b_and!13569)))

(declare-fun bm!22945 () Bool)

(declare-fun call!22949 () Bool)

(declare-datatypes ((V!8211 0))(
  ( (V!8212 (val!3256 Int)) )
))
(declare-datatypes ((ValueCell!2868 0))(
  ( (ValueCellFull!2868 (v!5305 V!8211)) (EmptyCell!2868) )
))
(declare-datatypes ((array!12144 0))(
  ( (array!12145 (arr!5763 (Array (_ BitVec 32) ValueCell!2868)) (size!6105 (_ BitVec 32))) )
))
(declare-datatypes ((array!12146 0))(
  ( (array!12147 (arr!5764 (Array (_ BitVec 32) (_ BitVec 64))) (size!6106 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3636 0))(
  ( (LongMapFixedSize!3637 (defaultEntry!4547 Int) (mask!10661 (_ BitVec 32)) (extraKeys!4284 (_ BitVec 32)) (zeroValue!4388 V!8211) (minValue!4388 V!8211) (_size!1867 (_ BitVec 32)) (_keys!6662 array!12146) (_values!4530 array!12144) (_vacant!1867 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3636)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun arrayContainsKey!0 (array!12146 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!22945 (= call!22949 (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245671 () Bool)

(declare-fun e!159401 () Bool)

(declare-datatypes ((SeekEntryResult!1101 0))(
  ( (MissingZero!1101 (index!6574 (_ BitVec 32))) (Found!1101 (index!6575 (_ BitVec 32))) (Intermediate!1101 (undefined!1913 Bool) (index!6576 (_ BitVec 32)) (x!24449 (_ BitVec 32))) (Undefined!1101) (MissingVacant!1101 (index!6577 (_ BitVec 32))) )
))
(declare-fun lt!123083 () SeekEntryResult!1101)

(get-info :version)

(assert (=> b!245671 (= e!159401 ((_ is Undefined!1101) lt!123083))))

(declare-fun b!245672 () Bool)

(declare-datatypes ((Unit!7582 0))(
  ( (Unit!7583) )
))
(declare-fun e!159402 () Unit!7582)

(declare-fun Unit!7584 () Unit!7582)

(assert (=> b!245672 (= e!159402 Unit!7584)))

(declare-fun lt!123084 () Unit!7582)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!374 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 64) Int) Unit!7582)

(assert (=> b!245672 (= lt!123084 (lemmaInListMapThenSeekEntryOrOpenFindsIt!374 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)))))

(assert (=> b!245672 false))

(declare-fun mapIsEmpty!10897 () Bool)

(declare-fun mapRes!10897 () Bool)

(assert (=> mapIsEmpty!10897 mapRes!10897))

(declare-fun b!245673 () Bool)

(declare-fun e!159395 () Bool)

(assert (=> b!245673 (= e!159401 e!159395)))

(declare-fun res!120503 () Bool)

(declare-fun call!22948 () Bool)

(assert (=> b!245673 (= res!120503 call!22948)))

(assert (=> b!245673 (=> (not res!120503) (not e!159395))))

(declare-fun b!245674 () Bool)

(declare-fun e!159397 () Bool)

(declare-fun tp_is_empty!6423 () Bool)

(assert (=> b!245674 (= e!159397 tp_is_empty!6423)))

(declare-fun b!245675 () Bool)

(declare-fun e!159403 () Bool)

(assert (=> b!245675 (= e!159403 (not call!22949))))

(declare-fun b!245677 () Bool)

(declare-fun res!120504 () Bool)

(assert (=> b!245677 (= res!120504 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6577 lt!123083)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245677 (=> (not res!120504) (not e!159395))))

(declare-fun b!245678 () Bool)

(declare-fun res!120508 () Bool)

(assert (=> b!245678 (=> (not res!120508) (not e!159403))))

(assert (=> b!245678 (= res!120508 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6574 lt!123083)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245679 () Bool)

(declare-fun e!159407 () Bool)

(assert (=> b!245679 (= e!159407 (and e!159397 mapRes!10897))))

(declare-fun condMapEmpty!10897 () Bool)

(declare-fun mapDefault!10897 () ValueCell!2868)

(assert (=> b!245679 (= condMapEmpty!10897 (= (arr!5763 (_values!4530 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2868)) mapDefault!10897)))))

(declare-fun b!245680 () Bool)

(declare-fun lt!123078 () Unit!7582)

(assert (=> b!245680 (= e!159402 lt!123078)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!376 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 64) Int) Unit!7582)

(assert (=> b!245680 (= lt!123078 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!376 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)))))

(declare-fun c!41026 () Bool)

(assert (=> b!245680 (= c!41026 ((_ is MissingZero!1101) lt!123083))))

(declare-fun e!159405 () Bool)

(assert (=> b!245680 e!159405))

(declare-fun bm!22946 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!22946 (= call!22948 (inRange!0 (ite c!41026 (index!6574 lt!123083) (index!6577 lt!123083)) (mask!10661 thiss!1504)))))

(declare-fun b!245681 () Bool)

(declare-fun e!159400 () Bool)

(declare-fun e!159393 () Bool)

(assert (=> b!245681 (= e!159400 e!159393)))

(declare-fun res!120507 () Bool)

(assert (=> b!245681 (=> (not res!120507) (not e!159393))))

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!245681 (= res!120507 (inRange!0 index!297 (mask!10661 thiss!1504)))))

(declare-fun lt!123079 () Unit!7582)

(assert (=> b!245681 (= lt!123079 e!159402)))

(declare-fun c!41023 () Bool)

(declare-datatypes ((tuple2!4786 0))(
  ( (tuple2!4787 (_1!2403 (_ BitVec 64)) (_2!2403 V!8211)) )
))
(declare-datatypes ((List!3692 0))(
  ( (Nil!3689) (Cons!3688 (h!4345 tuple2!4786) (t!8715 List!3692)) )
))
(declare-datatypes ((ListLongMap!3713 0))(
  ( (ListLongMap!3714 (toList!1872 List!3692)) )
))
(declare-fun contains!1775 (ListLongMap!3713 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1395 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 32) Int) ListLongMap!3713)

(assert (=> b!245681 (= c!41023 (contains!1775 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) key!932))))

(declare-fun b!245682 () Bool)

(declare-fun res!120502 () Bool)

(assert (=> b!245682 (=> (not res!120502) (not e!159403))))

(assert (=> b!245682 (= res!120502 call!22948)))

(assert (=> b!245682 (= e!159405 e!159403)))

(declare-fun e!159396 () Bool)

(declare-fun array_inv!3797 (array!12146) Bool)

(declare-fun array_inv!3798 (array!12144) Bool)

(assert (=> b!245683 (= e!159396 (and tp!22917 tp_is_empty!6423 (array_inv!3797 (_keys!6662 thiss!1504)) (array_inv!3798 (_values!4530 thiss!1504)) e!159407))))

(declare-fun b!245684 () Bool)

(declare-fun e!159404 () Bool)

(assert (=> b!245684 (= e!159404 e!159400)))

(declare-fun res!120505 () Bool)

(assert (=> b!245684 (=> (not res!120505) (not e!159400))))

(assert (=> b!245684 (= res!120505 (or (= lt!123083 (MissingZero!1101 index!297)) (= lt!123083 (MissingVacant!1101 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12146 (_ BitVec 32)) SeekEntryResult!1101)

(assert (=> b!245684 (= lt!123083 (seekEntryOrOpen!0 key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun b!245685 () Bool)

(declare-fun res!120510 () Bool)

(assert (=> b!245685 (=> (not res!120510) (not e!159404))))

(assert (=> b!245685 (= res!120510 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!245686 () Bool)

(declare-fun e!159399 () Bool)

(assert (=> b!245686 (= e!159399 (= (size!6106 (_keys!6662 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10661 thiss!1504))))))

(declare-fun mapNonEmpty!10897 () Bool)

(declare-fun tp!22918 () Bool)

(declare-fun e!159394 () Bool)

(assert (=> mapNonEmpty!10897 (= mapRes!10897 (and tp!22918 e!159394))))

(declare-fun mapValue!10897 () ValueCell!2868)

(declare-fun mapKey!10897 () (_ BitVec 32))

(declare-fun mapRest!10897 () (Array (_ BitVec 32) ValueCell!2868))

(assert (=> mapNonEmpty!10897 (= (arr!5763 (_values!4530 thiss!1504)) (store mapRest!10897 mapKey!10897 mapValue!10897))))

(declare-fun b!245687 () Bool)

(assert (=> b!245687 (= e!159393 (not e!159399))))

(declare-fun res!120506 () Bool)

(assert (=> b!245687 (=> res!120506 e!159399)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!245687 (= res!120506 (not (validMask!0 (mask!10661 thiss!1504))))))

(declare-fun lt!123080 () array!12146)

(declare-fun arrayCountValidKeys!0 (array!12146 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!245687 (= (arrayCountValidKeys!0 lt!123080 #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6662 thiss!1504) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504)))))))

(declare-fun lt!123081 () Unit!7582)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12146 (_ BitVec 32) (_ BitVec 64)) Unit!7582)

(assert (=> b!245687 (= lt!123081 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6662 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3693 0))(
  ( (Nil!3690) (Cons!3689 (h!4346 (_ BitVec 64)) (t!8716 List!3693)) )
))
(declare-fun arrayNoDuplicates!0 (array!12146 (_ BitVec 32) List!3693) Bool)

(assert (=> b!245687 (arrayNoDuplicates!0 lt!123080 #b00000000000000000000000000000000 Nil!3690)))

(assert (=> b!245687 (= lt!123080 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun lt!123077 () Unit!7582)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12146 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3693) Unit!7582)

(assert (=> b!245687 (= lt!123077 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6662 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3690))))

(declare-fun lt!123082 () Unit!7582)

(declare-fun e!159398 () Unit!7582)

(assert (=> b!245687 (= lt!123082 e!159398)))

(declare-fun c!41025 () Bool)

(assert (=> b!245687 (= c!41025 (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245688 () Bool)

(assert (=> b!245688 (= e!159394 tp_is_empty!6423)))

(declare-fun b!245689 () Bool)

(declare-fun c!41024 () Bool)

(assert (=> b!245689 (= c!41024 ((_ is MissingVacant!1101) lt!123083))))

(assert (=> b!245689 (= e!159405 e!159401)))

(declare-fun b!245690 () Bool)

(declare-fun Unit!7585 () Unit!7582)

(assert (=> b!245690 (= e!159398 Unit!7585)))

(declare-fun b!245691 () Bool)

(declare-fun Unit!7586 () Unit!7582)

(assert (=> b!245691 (= e!159398 Unit!7586)))

(declare-fun lt!123085 () Unit!7582)

(declare-fun lemmaArrayContainsKeyThenInListMap!175 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 64) (_ BitVec 32) Int) Unit!7582)

(assert (=> b!245691 (= lt!123085 (lemmaArrayContainsKeyThenInListMap!175 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))

(assert (=> b!245691 false))

(declare-fun res!120509 () Bool)

(assert (=> start!23380 (=> (not res!120509) (not e!159404))))

(declare-fun valid!1415 (LongMapFixedSize!3636) Bool)

(assert (=> start!23380 (= res!120509 (valid!1415 thiss!1504))))

(assert (=> start!23380 e!159404))

(assert (=> start!23380 e!159396))

(assert (=> start!23380 true))

(declare-fun b!245676 () Bool)

(assert (=> b!245676 (= e!159395 (not call!22949))))

(assert (= (and start!23380 res!120509) b!245685))

(assert (= (and b!245685 res!120510) b!245684))

(assert (= (and b!245684 res!120505) b!245681))

(assert (= (and b!245681 c!41023) b!245672))

(assert (= (and b!245681 (not c!41023)) b!245680))

(assert (= (and b!245680 c!41026) b!245682))

(assert (= (and b!245680 (not c!41026)) b!245689))

(assert (= (and b!245682 res!120502) b!245678))

(assert (= (and b!245678 res!120508) b!245675))

(assert (= (and b!245689 c!41024) b!245673))

(assert (= (and b!245689 (not c!41024)) b!245671))

(assert (= (and b!245673 res!120503) b!245677))

(assert (= (and b!245677 res!120504) b!245676))

(assert (= (or b!245682 b!245673) bm!22946))

(assert (= (or b!245675 b!245676) bm!22945))

(assert (= (and b!245681 res!120507) b!245687))

(assert (= (and b!245687 c!41025) b!245691))

(assert (= (and b!245687 (not c!41025)) b!245690))

(assert (= (and b!245687 (not res!120506)) b!245686))

(assert (= (and b!245679 condMapEmpty!10897) mapIsEmpty!10897))

(assert (= (and b!245679 (not condMapEmpty!10897)) mapNonEmpty!10897))

(assert (= (and mapNonEmpty!10897 ((_ is ValueCellFull!2868) mapValue!10897)) b!245688))

(assert (= (and b!245679 ((_ is ValueCellFull!2868) mapDefault!10897)) b!245674))

(assert (= b!245683 b!245679))

(assert (= start!23380 b!245683))

(declare-fun m!263195 () Bool)

(assert (=> bm!22945 m!263195))

(declare-fun m!263197 () Bool)

(assert (=> b!245691 m!263197))

(declare-fun m!263199 () Bool)

(assert (=> start!23380 m!263199))

(declare-fun m!263201 () Bool)

(assert (=> b!245677 m!263201))

(declare-fun m!263203 () Bool)

(assert (=> bm!22946 m!263203))

(declare-fun m!263205 () Bool)

(assert (=> mapNonEmpty!10897 m!263205))

(declare-fun m!263207 () Bool)

(assert (=> b!245672 m!263207))

(declare-fun m!263209 () Bool)

(assert (=> b!245680 m!263209))

(declare-fun m!263211 () Bool)

(assert (=> b!245681 m!263211))

(declare-fun m!263213 () Bool)

(assert (=> b!245681 m!263213))

(assert (=> b!245681 m!263213))

(declare-fun m!263215 () Bool)

(assert (=> b!245681 m!263215))

(declare-fun m!263217 () Bool)

(assert (=> b!245683 m!263217))

(declare-fun m!263219 () Bool)

(assert (=> b!245683 m!263219))

(declare-fun m!263221 () Bool)

(assert (=> b!245678 m!263221))

(assert (=> b!245687 m!263195))

(declare-fun m!263223 () Bool)

(assert (=> b!245687 m!263223))

(declare-fun m!263225 () Bool)

(assert (=> b!245687 m!263225))

(declare-fun m!263227 () Bool)

(assert (=> b!245687 m!263227))

(declare-fun m!263229 () Bool)

(assert (=> b!245687 m!263229))

(declare-fun m!263231 () Bool)

(assert (=> b!245687 m!263231))

(declare-fun m!263233 () Bool)

(assert (=> b!245687 m!263233))

(declare-fun m!263235 () Bool)

(assert (=> b!245687 m!263235))

(declare-fun m!263237 () Bool)

(assert (=> b!245684 m!263237))

(check-sat (not start!23380) (not b!245687) tp_is_empty!6423 (not b_next!6561) (not b!245691) b_and!13569 (not b!245681) (not bm!22945) (not mapNonEmpty!10897) (not b!245683) (not b!245680) (not b!245684) (not b!245672) (not bm!22946))
(check-sat b_and!13569 (not b_next!6561))
(get-model)

(declare-fun d!60135 () Bool)

(declare-fun e!159455 () Bool)

(assert (=> d!60135 e!159455))

(declare-fun res!120542 () Bool)

(assert (=> d!60135 (=> (not res!120542) (not e!159455))))

(declare-fun lt!123118 () SeekEntryResult!1101)

(assert (=> d!60135 (= res!120542 ((_ is Found!1101) lt!123118))))

(assert (=> d!60135 (= lt!123118 (seekEntryOrOpen!0 key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun lt!123117 () Unit!7582)

(declare-fun choose!1157 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 64) Int) Unit!7582)

(assert (=> d!60135 (= lt!123117 (choose!1157 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)))))

(assert (=> d!60135 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60135 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!374 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)) lt!123117)))

(declare-fun b!245759 () Bool)

(declare-fun res!120543 () Bool)

(assert (=> b!245759 (=> (not res!120543) (not e!159455))))

(assert (=> b!245759 (= res!120543 (inRange!0 (index!6575 lt!123118) (mask!10661 thiss!1504)))))

(declare-fun b!245760 () Bool)

(assert (=> b!245760 (= e!159455 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6575 lt!123118)) key!932))))

(assert (=> b!245760 (and (bvsge (index!6575 lt!123118) #b00000000000000000000000000000000) (bvslt (index!6575 lt!123118) (size!6106 (_keys!6662 thiss!1504))))))

(assert (= (and d!60135 res!120542) b!245759))

(assert (= (and b!245759 res!120543) b!245760))

(assert (=> d!60135 m!263237))

(declare-fun m!263283 () Bool)

(assert (=> d!60135 m!263283))

(assert (=> d!60135 m!263235))

(declare-fun m!263285 () Bool)

(assert (=> b!245759 m!263285))

(declare-fun m!263287 () Bool)

(assert (=> b!245760 m!263287))

(assert (=> b!245672 d!60135))

(declare-fun d!60137 () Bool)

(assert (=> d!60137 (= (inRange!0 index!297 (mask!10661 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10661 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!245681 d!60137))

(declare-fun d!60139 () Bool)

(declare-fun e!159460 () Bool)

(assert (=> d!60139 e!159460))

(declare-fun res!120546 () Bool)

(assert (=> d!60139 (=> res!120546 e!159460)))

(declare-fun lt!123130 () Bool)

(assert (=> d!60139 (= res!120546 (not lt!123130))))

(declare-fun lt!123128 () Bool)

(assert (=> d!60139 (= lt!123130 lt!123128)))

(declare-fun lt!123127 () Unit!7582)

(declare-fun e!159461 () Unit!7582)

(assert (=> d!60139 (= lt!123127 e!159461)))

(declare-fun c!41041 () Bool)

(assert (=> d!60139 (= c!41041 lt!123128)))

(declare-fun containsKey!280 (List!3692 (_ BitVec 64)) Bool)

(assert (=> d!60139 (= lt!123128 (containsKey!280 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932))))

(assert (=> d!60139 (= (contains!1775 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) key!932) lt!123130)))

(declare-fun b!245767 () Bool)

(declare-fun lt!123129 () Unit!7582)

(assert (=> b!245767 (= e!159461 lt!123129)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!229 (List!3692 (_ BitVec 64)) Unit!7582)

(assert (=> b!245767 (= lt!123129 (lemmaContainsKeyImpliesGetValueByKeyDefined!229 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932))))

(declare-datatypes ((Option!294 0))(
  ( (Some!293 (v!5307 V!8211)) (None!292) )
))
(declare-fun isDefined!230 (Option!294) Bool)

(declare-fun getValueByKey!288 (List!3692 (_ BitVec 64)) Option!294)

(assert (=> b!245767 (isDefined!230 (getValueByKey!288 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932))))

(declare-fun b!245768 () Bool)

(declare-fun Unit!7592 () Unit!7582)

(assert (=> b!245768 (= e!159461 Unit!7592)))

(declare-fun b!245769 () Bool)

(assert (=> b!245769 (= e!159460 (isDefined!230 (getValueByKey!288 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932)))))

(assert (= (and d!60139 c!41041) b!245767))

(assert (= (and d!60139 (not c!41041)) b!245768))

(assert (= (and d!60139 (not res!120546)) b!245769))

(declare-fun m!263289 () Bool)

(assert (=> d!60139 m!263289))

(declare-fun m!263291 () Bool)

(assert (=> b!245767 m!263291))

(declare-fun m!263293 () Bool)

(assert (=> b!245767 m!263293))

(assert (=> b!245767 m!263293))

(declare-fun m!263295 () Bool)

(assert (=> b!245767 m!263295))

(assert (=> b!245769 m!263293))

(assert (=> b!245769 m!263293))

(assert (=> b!245769 m!263295))

(assert (=> b!245681 d!60139))

(declare-fun bm!22967 () Bool)

(declare-fun call!22976 () ListLongMap!3713)

(declare-fun call!22970 () ListLongMap!3713)

(assert (=> bm!22967 (= call!22976 call!22970)))

(declare-fun b!245812 () Bool)

(declare-fun e!159490 () ListLongMap!3713)

(declare-fun call!22973 () ListLongMap!3713)

(assert (=> b!245812 (= e!159490 call!22973)))

(declare-fun b!245813 () Bool)

(declare-fun res!120572 () Bool)

(declare-fun e!159491 () Bool)

(assert (=> b!245813 (=> (not res!120572) (not e!159491))))

(declare-fun e!159488 () Bool)

(assert (=> b!245813 (= res!120572 e!159488)))

(declare-fun res!120569 () Bool)

(assert (=> b!245813 (=> res!120569 e!159488)))

(declare-fun e!159498 () Bool)

(assert (=> b!245813 (= res!120569 (not e!159498))))

(declare-fun res!120573 () Bool)

(assert (=> b!245813 (=> (not res!120573) (not e!159498))))

(assert (=> b!245813 (= res!120573 (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245814 () Bool)

(declare-fun e!159499 () Bool)

(declare-fun call!22975 () Bool)

(assert (=> b!245814 (= e!159499 (not call!22975))))

(declare-fun b!245815 () Bool)

(assert (=> b!245815 (= e!159491 e!159499)))

(declare-fun c!41055 () Bool)

(assert (=> b!245815 (= c!41055 (not (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!22968 () Bool)

(declare-fun call!22972 () ListLongMap!3713)

(declare-fun getCurrentListMapNoExtraKeys!550 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 32) Int) ListLongMap!3713)

(assert (=> bm!22968 (= call!22972 (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))

(declare-fun bm!22969 () Bool)

(declare-fun call!22974 () Bool)

(declare-fun lt!123180 () ListLongMap!3713)

(assert (=> bm!22969 (= call!22974 (contains!1775 lt!123180 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245817 () Bool)

(declare-fun e!159489 () ListLongMap!3713)

(declare-fun call!22971 () ListLongMap!3713)

(declare-fun +!653 (ListLongMap!3713 tuple2!4786) ListLongMap!3713)

(assert (=> b!245817 (= e!159489 (+!653 call!22971 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))))

(declare-fun b!245818 () Bool)

(declare-fun e!159500 () Unit!7582)

(declare-fun lt!123189 () Unit!7582)

(assert (=> b!245818 (= e!159500 lt!123189)))

(declare-fun lt!123177 () ListLongMap!3713)

(assert (=> b!245818 (= lt!123177 (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))

(declare-fun lt!123181 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123181 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123187 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123187 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123196 () Unit!7582)

(declare-fun addStillContains!207 (ListLongMap!3713 (_ BitVec 64) V!8211 (_ BitVec 64)) Unit!7582)

(assert (=> b!245818 (= lt!123196 (addStillContains!207 lt!123177 lt!123181 (zeroValue!4388 thiss!1504) lt!123187))))

(assert (=> b!245818 (contains!1775 (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))) lt!123187)))

(declare-fun lt!123194 () Unit!7582)

(assert (=> b!245818 (= lt!123194 lt!123196)))

(declare-fun lt!123193 () ListLongMap!3713)

(assert (=> b!245818 (= lt!123193 (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))

(declare-fun lt!123184 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123184 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123178 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123178 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123176 () Unit!7582)

(declare-fun addApplyDifferent!207 (ListLongMap!3713 (_ BitVec 64) V!8211 (_ BitVec 64)) Unit!7582)

(assert (=> b!245818 (= lt!123176 (addApplyDifferent!207 lt!123193 lt!123184 (minValue!4388 thiss!1504) lt!123178))))

(declare-fun apply!231 (ListLongMap!3713 (_ BitVec 64)) V!8211)

(assert (=> b!245818 (= (apply!231 (+!653 lt!123193 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))) lt!123178) (apply!231 lt!123193 lt!123178))))

(declare-fun lt!123186 () Unit!7582)

(assert (=> b!245818 (= lt!123186 lt!123176)))

(declare-fun lt!123179 () ListLongMap!3713)

(assert (=> b!245818 (= lt!123179 (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))

(declare-fun lt!123190 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123190 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123183 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123183 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123185 () Unit!7582)

(assert (=> b!245818 (= lt!123185 (addApplyDifferent!207 lt!123179 lt!123190 (zeroValue!4388 thiss!1504) lt!123183))))

(assert (=> b!245818 (= (apply!231 (+!653 lt!123179 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))) lt!123183) (apply!231 lt!123179 lt!123183))))

(declare-fun lt!123182 () Unit!7582)

(assert (=> b!245818 (= lt!123182 lt!123185)))

(declare-fun lt!123195 () ListLongMap!3713)

(assert (=> b!245818 (= lt!123195 (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))

(declare-fun lt!123175 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123175 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!123192 () (_ BitVec 64))

(assert (=> b!245818 (= lt!123192 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245818 (= lt!123189 (addApplyDifferent!207 lt!123195 lt!123175 (minValue!4388 thiss!1504) lt!123192))))

(assert (=> b!245818 (= (apply!231 (+!653 lt!123195 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))) lt!123192) (apply!231 lt!123195 lt!123192))))

(declare-fun c!41058 () Bool)

(declare-fun c!41054 () Bool)

(declare-fun bm!22970 () Bool)

(assert (=> bm!22970 (= call!22971 (+!653 (ite c!41058 call!22972 (ite c!41054 call!22970 call!22976)) (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))))))

(declare-fun b!245819 () Bool)

(declare-fun e!159495 () ListLongMap!3713)

(assert (=> b!245819 (= e!159495 call!22976)))

(declare-fun bm!22971 () Bool)

(assert (=> bm!22971 (= call!22970 call!22972)))

(declare-fun b!245820 () Bool)

(declare-fun e!159492 () Bool)

(declare-fun get!2958 (ValueCell!2868 V!8211) V!8211)

(declare-fun dynLambda!569 (Int (_ BitVec 64)) V!8211)

(assert (=> b!245820 (= e!159492 (= (apply!231 lt!123180 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)) (get!2958 (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!569 (defaultEntry!4547 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!245820 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6105 (_values!4530 thiss!1504))))))

(assert (=> b!245820 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245821 () Bool)

(assert (=> b!245821 (= e!159488 e!159492)))

(declare-fun res!120571 () Bool)

(assert (=> b!245821 (=> (not res!120571) (not e!159492))))

(assert (=> b!245821 (= res!120571 (contains!1775 lt!123180 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!245821 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245822 () Bool)

(declare-fun e!159496 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!245822 (= e!159496 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22972 () Bool)

(assert (=> bm!22972 (= call!22973 call!22971)))

(declare-fun b!245823 () Bool)

(declare-fun res!120566 () Bool)

(assert (=> b!245823 (=> (not res!120566) (not e!159491))))

(declare-fun e!159494 () Bool)

(assert (=> b!245823 (= res!120566 e!159494)))

(declare-fun c!41056 () Bool)

(assert (=> b!245823 (= c!41056 (not (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!245824 () Bool)

(assert (=> b!245824 (= e!159489 e!159490)))

(assert (=> b!245824 (= c!41054 (and (not (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!245825 () Bool)

(declare-fun e!159493 () Bool)

(assert (=> b!245825 (= e!159494 e!159493)))

(declare-fun res!120565 () Bool)

(assert (=> b!245825 (= res!120565 call!22974)))

(assert (=> b!245825 (=> (not res!120565) (not e!159493))))

(declare-fun b!245826 () Bool)

(assert (=> b!245826 (= e!159493 (= (apply!231 lt!123180 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4388 thiss!1504)))))

(declare-fun b!245827 () Bool)

(assert (=> b!245827 (= e!159494 (not call!22974))))

(declare-fun b!245816 () Bool)

(declare-fun Unit!7593 () Unit!7582)

(assert (=> b!245816 (= e!159500 Unit!7593)))

(declare-fun d!60141 () Bool)

(assert (=> d!60141 e!159491))

(declare-fun res!120570 () Bool)

(assert (=> d!60141 (=> (not res!120570) (not e!159491))))

(assert (=> d!60141 (= res!120570 (or (bvsge #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))))

(declare-fun lt!123188 () ListLongMap!3713)

(assert (=> d!60141 (= lt!123180 lt!123188)))

(declare-fun lt!123191 () Unit!7582)

(assert (=> d!60141 (= lt!123191 e!159500)))

(declare-fun c!41059 () Bool)

(assert (=> d!60141 (= c!41059 e!159496)))

(declare-fun res!120567 () Bool)

(assert (=> d!60141 (=> (not res!120567) (not e!159496))))

(assert (=> d!60141 (= res!120567 (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60141 (= lt!123188 e!159489)))

(assert (=> d!60141 (= c!41058 (and (not (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!60141 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60141 (= (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) lt!123180)))

(declare-fun b!245828 () Bool)

(declare-fun e!159497 () Bool)

(assert (=> b!245828 (= e!159499 e!159497)))

(declare-fun res!120568 () Bool)

(assert (=> b!245828 (= res!120568 call!22975)))

(assert (=> b!245828 (=> (not res!120568) (not e!159497))))

(declare-fun b!245829 () Bool)

(declare-fun c!41057 () Bool)

(assert (=> b!245829 (= c!41057 (and (not (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4284 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!245829 (= e!159490 e!159495)))

(declare-fun bm!22973 () Bool)

(assert (=> bm!22973 (= call!22975 (contains!1775 lt!123180 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245830 () Bool)

(assert (=> b!245830 (= e!159495 call!22973)))

(declare-fun b!245831 () Bool)

(assert (=> b!245831 (= e!159497 (= (apply!231 lt!123180 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4388 thiss!1504)))))

(declare-fun b!245832 () Bool)

(assert (=> b!245832 (= e!159498 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!60141 c!41058) b!245817))

(assert (= (and d!60141 (not c!41058)) b!245824))

(assert (= (and b!245824 c!41054) b!245812))

(assert (= (and b!245824 (not c!41054)) b!245829))

(assert (= (and b!245829 c!41057) b!245830))

(assert (= (and b!245829 (not c!41057)) b!245819))

(assert (= (or b!245830 b!245819) bm!22967))

(assert (= (or b!245812 bm!22967) bm!22971))

(assert (= (or b!245812 b!245830) bm!22972))

(assert (= (or b!245817 bm!22971) bm!22968))

(assert (= (or b!245817 bm!22972) bm!22970))

(assert (= (and d!60141 res!120567) b!245822))

(assert (= (and d!60141 c!41059) b!245818))

(assert (= (and d!60141 (not c!41059)) b!245816))

(assert (= (and d!60141 res!120570) b!245813))

(assert (= (and b!245813 res!120573) b!245832))

(assert (= (and b!245813 (not res!120569)) b!245821))

(assert (= (and b!245821 res!120571) b!245820))

(assert (= (and b!245813 res!120572) b!245823))

(assert (= (and b!245823 c!41056) b!245825))

(assert (= (and b!245823 (not c!41056)) b!245827))

(assert (= (and b!245825 res!120565) b!245826))

(assert (= (or b!245825 b!245827) bm!22969))

(assert (= (and b!245823 res!120566) b!245815))

(assert (= (and b!245815 c!41055) b!245828))

(assert (= (and b!245815 (not c!41055)) b!245814))

(assert (= (and b!245828 res!120568) b!245831))

(assert (= (or b!245828 b!245814) bm!22973))

(declare-fun b_lambda!8057 () Bool)

(assert (=> (not b_lambda!8057) (not b!245820)))

(declare-fun t!8720 () Bool)

(declare-fun tb!2983 () Bool)

(assert (=> (and b!245683 (= (defaultEntry!4547 thiss!1504) (defaultEntry!4547 thiss!1504)) t!8720) tb!2983))

(declare-fun result!5255 () Bool)

(assert (=> tb!2983 (= result!5255 tp_is_empty!6423)))

(assert (=> b!245820 t!8720))

(declare-fun b_and!13573 () Bool)

(assert (= b_and!13569 (and (=> t!8720 result!5255) b_and!13573)))

(declare-fun m!263297 () Bool)

(assert (=> b!245832 m!263297))

(assert (=> b!245832 m!263297))

(declare-fun m!263299 () Bool)

(assert (=> b!245832 m!263299))

(declare-fun m!263301 () Bool)

(assert (=> b!245831 m!263301))

(declare-fun m!263303 () Bool)

(assert (=> bm!22970 m!263303))

(assert (=> d!60141 m!263235))

(assert (=> b!245822 m!263297))

(assert (=> b!245822 m!263297))

(assert (=> b!245822 m!263299))

(declare-fun m!263305 () Bool)

(assert (=> b!245826 m!263305))

(declare-fun m!263307 () Bool)

(assert (=> bm!22973 m!263307))

(assert (=> b!245821 m!263297))

(assert (=> b!245821 m!263297))

(declare-fun m!263309 () Bool)

(assert (=> b!245821 m!263309))

(declare-fun m!263311 () Bool)

(assert (=> b!245820 m!263311))

(declare-fun m!263313 () Bool)

(assert (=> b!245820 m!263313))

(assert (=> b!245820 m!263311))

(declare-fun m!263315 () Bool)

(assert (=> b!245820 m!263315))

(assert (=> b!245820 m!263297))

(declare-fun m!263317 () Bool)

(assert (=> b!245820 m!263317))

(assert (=> b!245820 m!263313))

(assert (=> b!245820 m!263297))

(declare-fun m!263319 () Bool)

(assert (=> b!245817 m!263319))

(declare-fun m!263321 () Bool)

(assert (=> bm!22969 m!263321))

(declare-fun m!263323 () Bool)

(assert (=> bm!22968 m!263323))

(declare-fun m!263325 () Bool)

(assert (=> b!245818 m!263325))

(declare-fun m!263327 () Bool)

(assert (=> b!245818 m!263327))

(declare-fun m!263329 () Bool)

(assert (=> b!245818 m!263329))

(declare-fun m!263331 () Bool)

(assert (=> b!245818 m!263331))

(declare-fun m!263333 () Bool)

(assert (=> b!245818 m!263333))

(assert (=> b!245818 m!263323))

(declare-fun m!263335 () Bool)

(assert (=> b!245818 m!263335))

(assert (=> b!245818 m!263335))

(declare-fun m!263337 () Bool)

(assert (=> b!245818 m!263337))

(assert (=> b!245818 m!263297))

(declare-fun m!263339 () Bool)

(assert (=> b!245818 m!263339))

(assert (=> b!245818 m!263331))

(declare-fun m!263341 () Bool)

(assert (=> b!245818 m!263341))

(declare-fun m!263343 () Bool)

(assert (=> b!245818 m!263343))

(declare-fun m!263345 () Bool)

(assert (=> b!245818 m!263345))

(declare-fun m!263347 () Bool)

(assert (=> b!245818 m!263347))

(declare-fun m!263349 () Bool)

(assert (=> b!245818 m!263349))

(assert (=> b!245818 m!263327))

(declare-fun m!263351 () Bool)

(assert (=> b!245818 m!263351))

(assert (=> b!245818 m!263349))

(declare-fun m!263353 () Bool)

(assert (=> b!245818 m!263353))

(assert (=> b!245681 d!60141))

(declare-fun d!60143 () Bool)

(assert (=> d!60143 (= (inRange!0 (ite c!41026 (index!6574 lt!123083) (index!6577 lt!123083)) (mask!10661 thiss!1504)) (and (bvsge (ite c!41026 (index!6574 lt!123083) (index!6577 lt!123083)) #b00000000000000000000000000000000) (bvslt (ite c!41026 (index!6574 lt!123083) (index!6577 lt!123083)) (bvadd (mask!10661 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22946 d!60143))

(declare-fun d!60145 () Bool)

(declare-fun lt!123205 () SeekEntryResult!1101)

(assert (=> d!60145 (and (or ((_ is Undefined!1101) lt!123205) (not ((_ is Found!1101) lt!123205)) (and (bvsge (index!6575 lt!123205) #b00000000000000000000000000000000) (bvslt (index!6575 lt!123205) (size!6106 (_keys!6662 thiss!1504))))) (or ((_ is Undefined!1101) lt!123205) ((_ is Found!1101) lt!123205) (not ((_ is MissingZero!1101) lt!123205)) (and (bvsge (index!6574 lt!123205) #b00000000000000000000000000000000) (bvslt (index!6574 lt!123205) (size!6106 (_keys!6662 thiss!1504))))) (or ((_ is Undefined!1101) lt!123205) ((_ is Found!1101) lt!123205) ((_ is MissingZero!1101) lt!123205) (not ((_ is MissingVacant!1101) lt!123205)) (and (bvsge (index!6577 lt!123205) #b00000000000000000000000000000000) (bvslt (index!6577 lt!123205) (size!6106 (_keys!6662 thiss!1504))))) (or ((_ is Undefined!1101) lt!123205) (ite ((_ is Found!1101) lt!123205) (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6575 lt!123205)) key!932) (ite ((_ is MissingZero!1101) lt!123205) (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6574 lt!123205)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1101) lt!123205) (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6577 lt!123205)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!159509 () SeekEntryResult!1101)

(assert (=> d!60145 (= lt!123205 e!159509)))

(declare-fun c!41066 () Bool)

(declare-fun lt!123203 () SeekEntryResult!1101)

(assert (=> d!60145 (= c!41066 (and ((_ is Intermediate!1101) lt!123203) (undefined!1913 lt!123203)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12146 (_ BitVec 32)) SeekEntryResult!1101)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!60145 (= lt!123203 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10661 thiss!1504)) key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(assert (=> d!60145 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60145 (= (seekEntryOrOpen!0 key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)) lt!123205)))

(declare-fun b!245847 () Bool)

(declare-fun e!159507 () SeekEntryResult!1101)

(assert (=> b!245847 (= e!159507 (Found!1101 (index!6576 lt!123203)))))

(declare-fun b!245848 () Bool)

(declare-fun c!41068 () Bool)

(declare-fun lt!123204 () (_ BitVec 64))

(assert (=> b!245848 (= c!41068 (= lt!123204 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159508 () SeekEntryResult!1101)

(assert (=> b!245848 (= e!159507 e!159508)))

(declare-fun b!245849 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12146 (_ BitVec 32)) SeekEntryResult!1101)

(assert (=> b!245849 (= e!159508 (seekKeyOrZeroReturnVacant!0 (x!24449 lt!123203) (index!6576 lt!123203) (index!6576 lt!123203) key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun b!245850 () Bool)

(assert (=> b!245850 (= e!159508 (MissingZero!1101 (index!6576 lt!123203)))))

(declare-fun b!245851 () Bool)

(assert (=> b!245851 (= e!159509 e!159507)))

(assert (=> b!245851 (= lt!123204 (select (arr!5764 (_keys!6662 thiss!1504)) (index!6576 lt!123203)))))

(declare-fun c!41067 () Bool)

(assert (=> b!245851 (= c!41067 (= lt!123204 key!932))))

(declare-fun b!245852 () Bool)

(assert (=> b!245852 (= e!159509 Undefined!1101)))

(assert (= (and d!60145 c!41066) b!245852))

(assert (= (and d!60145 (not c!41066)) b!245851))

(assert (= (and b!245851 c!41067) b!245847))

(assert (= (and b!245851 (not c!41067)) b!245848))

(assert (= (and b!245848 c!41068) b!245850))

(assert (= (and b!245848 (not c!41068)) b!245849))

(declare-fun m!263355 () Bool)

(assert (=> d!60145 m!263355))

(declare-fun m!263357 () Bool)

(assert (=> d!60145 m!263357))

(declare-fun m!263359 () Bool)

(assert (=> d!60145 m!263359))

(declare-fun m!263361 () Bool)

(assert (=> d!60145 m!263361))

(declare-fun m!263363 () Bool)

(assert (=> d!60145 m!263363))

(assert (=> d!60145 m!263235))

(assert (=> d!60145 m!263355))

(declare-fun m!263365 () Bool)

(assert (=> b!245849 m!263365))

(declare-fun m!263367 () Bool)

(assert (=> b!245851 m!263367))

(assert (=> b!245684 d!60145))

(declare-fun d!60147 () Bool)

(declare-fun res!120578 () Bool)

(declare-fun e!159514 () Bool)

(assert (=> d!60147 (=> res!120578 e!159514)))

(assert (=> d!60147 (= res!120578 (= (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!60147 (= (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 #b00000000000000000000000000000000) e!159514)))

(declare-fun b!245857 () Bool)

(declare-fun e!159515 () Bool)

(assert (=> b!245857 (= e!159514 e!159515)))

(declare-fun res!120579 () Bool)

(assert (=> b!245857 (=> (not res!120579) (not e!159515))))

(assert (=> b!245857 (= res!120579 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245858 () Bool)

(assert (=> b!245858 (= e!159515 (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!60147 (not res!120578)) b!245857))

(assert (= (and b!245857 res!120579) b!245858))

(assert (=> d!60147 m!263297))

(declare-fun m!263369 () Bool)

(assert (=> b!245858 m!263369))

(assert (=> bm!22945 d!60147))

(declare-fun call!22981 () Bool)

(declare-fun lt!123210 () SeekEntryResult!1101)

(declare-fun bm!22978 () Bool)

(declare-fun c!41074 () Bool)

(assert (=> bm!22978 (= call!22981 (inRange!0 (ite c!41074 (index!6574 lt!123210) (index!6577 lt!123210)) (mask!10661 thiss!1504)))))

(declare-fun b!245875 () Bool)

(assert (=> b!245875 (and (bvsge (index!6574 lt!123210) #b00000000000000000000000000000000) (bvslt (index!6574 lt!123210) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun res!120588 () Bool)

(assert (=> b!245875 (= res!120588 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6574 lt!123210)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159526 () Bool)

(assert (=> b!245875 (=> (not res!120588) (not e!159526))))

(declare-fun b!245876 () Bool)

(declare-fun e!159524 () Bool)

(assert (=> b!245876 (= e!159524 e!159526)))

(declare-fun res!120591 () Bool)

(assert (=> b!245876 (= res!120591 call!22981)))

(assert (=> b!245876 (=> (not res!120591) (not e!159526))))

(declare-fun b!245877 () Bool)

(declare-fun e!159527 () Bool)

(declare-fun call!22982 () Bool)

(assert (=> b!245877 (= e!159527 (not call!22982))))

(declare-fun b!245878 () Bool)

(declare-fun e!159525 () Bool)

(assert (=> b!245878 (= e!159525 ((_ is Undefined!1101) lt!123210))))

(declare-fun b!245879 () Bool)

(assert (=> b!245879 (= e!159526 (not call!22982))))

(declare-fun b!245881 () Bool)

(assert (=> b!245881 (= e!159524 e!159525)))

(declare-fun c!41073 () Bool)

(assert (=> b!245881 (= c!41073 ((_ is MissingVacant!1101) lt!123210))))

(declare-fun bm!22979 () Bool)

(assert (=> bm!22979 (= call!22982 (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!245882 () Bool)

(declare-fun res!120589 () Bool)

(assert (=> b!245882 (=> (not res!120589) (not e!159527))))

(assert (=> b!245882 (= res!120589 call!22981)))

(assert (=> b!245882 (= e!159525 e!159527)))

(declare-fun b!245880 () Bool)

(declare-fun res!120590 () Bool)

(assert (=> b!245880 (=> (not res!120590) (not e!159527))))

(assert (=> b!245880 (= res!120590 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6577 lt!123210)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245880 (and (bvsge (index!6577 lt!123210) #b00000000000000000000000000000000) (bvslt (index!6577 lt!123210) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun d!60149 () Bool)

(assert (=> d!60149 e!159524))

(assert (=> d!60149 (= c!41074 ((_ is MissingZero!1101) lt!123210))))

(assert (=> d!60149 (= lt!123210 (seekEntryOrOpen!0 key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun lt!123211 () Unit!7582)

(declare-fun choose!1158 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 64) Int) Unit!7582)

(assert (=> d!60149 (= lt!123211 (choose!1158 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)))))

(assert (=> d!60149 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60149 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!376 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)) lt!123211)))

(assert (= (and d!60149 c!41074) b!245876))

(assert (= (and d!60149 (not c!41074)) b!245881))

(assert (= (and b!245876 res!120591) b!245875))

(assert (= (and b!245875 res!120588) b!245879))

(assert (= (and b!245881 c!41073) b!245882))

(assert (= (and b!245881 (not c!41073)) b!245878))

(assert (= (and b!245882 res!120589) b!245880))

(assert (= (and b!245880 res!120590) b!245877))

(assert (= (or b!245876 b!245882) bm!22978))

(assert (= (or b!245879 b!245877) bm!22979))

(assert (=> bm!22979 m!263195))

(declare-fun m!263371 () Bool)

(assert (=> bm!22978 m!263371))

(assert (=> d!60149 m!263237))

(declare-fun m!263373 () Bool)

(assert (=> d!60149 m!263373))

(assert (=> d!60149 m!263235))

(declare-fun m!263375 () Bool)

(assert (=> b!245880 m!263375))

(declare-fun m!263377 () Bool)

(assert (=> b!245875 m!263377))

(assert (=> b!245680 d!60149))

(declare-fun b!245891 () Bool)

(declare-fun res!120603 () Bool)

(declare-fun e!159532 () Bool)

(assert (=> b!245891 (=> (not res!120603) (not e!159532))))

(assert (=> b!245891 (= res!120603 (not (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) index!297))))))

(declare-fun b!245892 () Bool)

(declare-fun res!120601 () Bool)

(assert (=> b!245892 (=> (not res!120601) (not e!159532))))

(assert (=> b!245892 (= res!120601 (validKeyInArray!0 key!932))))

(declare-fun b!245893 () Bool)

(assert (=> b!245893 (= e!159532 (bvslt (size!6106 (_keys!6662 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun e!159533 () Bool)

(declare-fun b!245894 () Bool)

(assert (=> b!245894 (= e!159533 (= (arrayCountValidKeys!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6662 thiss!1504) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!60151 () Bool)

(assert (=> d!60151 e!159533))

(declare-fun res!120602 () Bool)

(assert (=> d!60151 (=> (not res!120602) (not e!159533))))

(assert (=> d!60151 (= res!120602 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6106 (_keys!6662 thiss!1504)))))))

(declare-fun lt!123214 () Unit!7582)

(declare-fun choose!1 (array!12146 (_ BitVec 32) (_ BitVec 64)) Unit!7582)

(assert (=> d!60151 (= lt!123214 (choose!1 (_keys!6662 thiss!1504) index!297 key!932))))

(assert (=> d!60151 e!159532))

(declare-fun res!120600 () Bool)

(assert (=> d!60151 (=> (not res!120600) (not e!159532))))

(assert (=> d!60151 (= res!120600 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6106 (_keys!6662 thiss!1504)))))))

(assert (=> d!60151 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6662 thiss!1504) index!297 key!932) lt!123214)))

(assert (= (and d!60151 res!120600) b!245891))

(assert (= (and b!245891 res!120603) b!245892))

(assert (= (and b!245892 res!120601) b!245893))

(assert (= (and d!60151 res!120602) b!245894))

(declare-fun m!263379 () Bool)

(assert (=> b!245891 m!263379))

(assert (=> b!245891 m!263379))

(declare-fun m!263381 () Bool)

(assert (=> b!245891 m!263381))

(declare-fun m!263383 () Bool)

(assert (=> b!245892 m!263383))

(assert (=> b!245894 m!263227))

(declare-fun m!263385 () Bool)

(assert (=> b!245894 m!263385))

(assert (=> b!245894 m!263229))

(declare-fun m!263387 () Bool)

(assert (=> d!60151 m!263387))

(assert (=> b!245687 d!60151))

(assert (=> b!245687 d!60147))

(declare-fun bm!22982 () Bool)

(declare-fun call!22985 () (_ BitVec 32))

(assert (=> bm!22982 (= call!22985 (arrayCountValidKeys!0 (_keys!6662 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245903 () Bool)

(declare-fun e!159539 () (_ BitVec 32))

(assert (=> b!245903 (= e!159539 call!22985)))

(declare-fun b!245905 () Bool)

(assert (=> b!245905 (= e!159539 (bvadd #b00000000000000000000000000000001 call!22985))))

(declare-fun b!245906 () Bool)

(declare-fun e!159538 () (_ BitVec 32))

(assert (=> b!245906 (= e!159538 e!159539)))

(declare-fun c!41079 () Bool)

(assert (=> b!245906 (= c!41079 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!60153 () Bool)

(declare-fun lt!123217 () (_ BitVec 32))

(assert (=> d!60153 (and (bvsge lt!123217 #b00000000000000000000000000000000) (bvsle lt!123217 (bvsub (size!6106 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60153 (= lt!123217 e!159538)))

(declare-fun c!41080 () Bool)

(assert (=> d!60153 (= c!41080 (bvsge #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60153 (and (bvsle #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6106 (_keys!6662 thiss!1504)) (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60153 (= (arrayCountValidKeys!0 (_keys!6662 thiss!1504) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) lt!123217)))

(declare-fun b!245904 () Bool)

(assert (=> b!245904 (= e!159538 #b00000000000000000000000000000000)))

(assert (= (and d!60153 c!41080) b!245904))

(assert (= (and d!60153 (not c!41080)) b!245906))

(assert (= (and b!245906 c!41079) b!245905))

(assert (= (and b!245906 (not c!41079)) b!245903))

(assert (= (or b!245905 b!245903) bm!22982))

(declare-fun m!263389 () Bool)

(assert (=> bm!22982 m!263389))

(assert (=> b!245906 m!263297))

(assert (=> b!245906 m!263297))

(assert (=> b!245906 m!263299))

(assert (=> b!245687 d!60153))

(declare-fun d!60155 () Bool)

(assert (=> d!60155 (= (validMask!0 (mask!10661 thiss!1504)) (and (or (= (mask!10661 thiss!1504) #b00000000000000000000000000000111) (= (mask!10661 thiss!1504) #b00000000000000000000000000001111) (= (mask!10661 thiss!1504) #b00000000000000000000000000011111) (= (mask!10661 thiss!1504) #b00000000000000000000000000111111) (= (mask!10661 thiss!1504) #b00000000000000000000000001111111) (= (mask!10661 thiss!1504) #b00000000000000000000000011111111) (= (mask!10661 thiss!1504) #b00000000000000000000000111111111) (= (mask!10661 thiss!1504) #b00000000000000000000001111111111) (= (mask!10661 thiss!1504) #b00000000000000000000011111111111) (= (mask!10661 thiss!1504) #b00000000000000000000111111111111) (= (mask!10661 thiss!1504) #b00000000000000000001111111111111) (= (mask!10661 thiss!1504) #b00000000000000000011111111111111) (= (mask!10661 thiss!1504) #b00000000000000000111111111111111) (= (mask!10661 thiss!1504) #b00000000000000001111111111111111) (= (mask!10661 thiss!1504) #b00000000000000011111111111111111) (= (mask!10661 thiss!1504) #b00000000000000111111111111111111) (= (mask!10661 thiss!1504) #b00000000000001111111111111111111) (= (mask!10661 thiss!1504) #b00000000000011111111111111111111) (= (mask!10661 thiss!1504) #b00000000000111111111111111111111) (= (mask!10661 thiss!1504) #b00000000001111111111111111111111) (= (mask!10661 thiss!1504) #b00000000011111111111111111111111) (= (mask!10661 thiss!1504) #b00000000111111111111111111111111) (= (mask!10661 thiss!1504) #b00000001111111111111111111111111) (= (mask!10661 thiss!1504) #b00000011111111111111111111111111) (= (mask!10661 thiss!1504) #b00000111111111111111111111111111) (= (mask!10661 thiss!1504) #b00001111111111111111111111111111) (= (mask!10661 thiss!1504) #b00011111111111111111111111111111) (= (mask!10661 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10661 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!245687 d!60155))

(declare-fun bm!22983 () Bool)

(declare-fun call!22986 () (_ BitVec 32))

(assert (=> bm!22983 (= call!22986 (arrayCountValidKeys!0 lt!123080 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245907 () Bool)

(declare-fun e!159541 () (_ BitVec 32))

(assert (=> b!245907 (= e!159541 call!22986)))

(declare-fun b!245909 () Bool)

(assert (=> b!245909 (= e!159541 (bvadd #b00000000000000000000000000000001 call!22986))))

(declare-fun b!245910 () Bool)

(declare-fun e!159540 () (_ BitVec 32))

(assert (=> b!245910 (= e!159540 e!159541)))

(declare-fun c!41081 () Bool)

(assert (=> b!245910 (= c!41081 (validKeyInArray!0 (select (arr!5764 lt!123080) #b00000000000000000000000000000000)))))

(declare-fun d!60157 () Bool)

(declare-fun lt!123218 () (_ BitVec 32))

(assert (=> d!60157 (and (bvsge lt!123218 #b00000000000000000000000000000000) (bvsle lt!123218 (bvsub (size!6106 lt!123080) #b00000000000000000000000000000000)))))

(assert (=> d!60157 (= lt!123218 e!159540)))

(declare-fun c!41082 () Bool)

(assert (=> d!60157 (= c!41082 (bvsge #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60157 (and (bvsle #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6106 (_keys!6662 thiss!1504)) (size!6106 lt!123080)))))

(assert (=> d!60157 (= (arrayCountValidKeys!0 lt!123080 #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) lt!123218)))

(declare-fun b!245908 () Bool)

(assert (=> b!245908 (= e!159540 #b00000000000000000000000000000000)))

(assert (= (and d!60157 c!41082) b!245908))

(assert (= (and d!60157 (not c!41082)) b!245910))

(assert (= (and b!245910 c!41081) b!245909))

(assert (= (and b!245910 (not c!41081)) b!245907))

(assert (= (or b!245909 b!245907) bm!22983))

(declare-fun m!263391 () Bool)

(assert (=> bm!22983 m!263391))

(declare-fun m!263393 () Bool)

(assert (=> b!245910 m!263393))

(assert (=> b!245910 m!263393))

(declare-fun m!263395 () Bool)

(assert (=> b!245910 m!263395))

(assert (=> b!245687 d!60157))

(declare-fun d!60159 () Bool)

(declare-fun e!159544 () Bool)

(assert (=> d!60159 e!159544))

(declare-fun res!120606 () Bool)

(assert (=> d!60159 (=> (not res!120606) (not e!159544))))

(assert (=> d!60159 (= res!120606 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6106 (_keys!6662 thiss!1504)))))))

(declare-fun lt!123221 () Unit!7582)

(declare-fun choose!41 (array!12146 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3693) Unit!7582)

(assert (=> d!60159 (= lt!123221 (choose!41 (_keys!6662 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3690))))

(assert (=> d!60159 (bvslt (size!6106 (_keys!6662 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!60159 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6662 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3690) lt!123221)))

(declare-fun b!245913 () Bool)

(assert (=> b!245913 (= e!159544 (arrayNoDuplicates!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000000 Nil!3690))))

(assert (= (and d!60159 res!120606) b!245913))

(declare-fun m!263397 () Bool)

(assert (=> d!60159 m!263397))

(assert (=> b!245913 m!263227))

(declare-fun m!263399 () Bool)

(assert (=> b!245913 m!263399))

(assert (=> b!245687 d!60159))

(declare-fun d!60161 () Bool)

(declare-fun res!120613 () Bool)

(declare-fun e!159553 () Bool)

(assert (=> d!60161 (=> res!120613 e!159553)))

(assert (=> d!60161 (= res!120613 (bvsge #b00000000000000000000000000000000 (size!6106 lt!123080)))))

(assert (=> d!60161 (= (arrayNoDuplicates!0 lt!123080 #b00000000000000000000000000000000 Nil!3690) e!159553)))

(declare-fun b!245924 () Bool)

(declare-fun e!159556 () Bool)

(declare-fun contains!1777 (List!3693 (_ BitVec 64)) Bool)

(assert (=> b!245924 (= e!159556 (contains!1777 Nil!3690 (select (arr!5764 lt!123080) #b00000000000000000000000000000000)))))

(declare-fun bm!22986 () Bool)

(declare-fun call!22989 () Bool)

(declare-fun c!41085 () Bool)

(assert (=> bm!22986 (= call!22989 (arrayNoDuplicates!0 lt!123080 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41085 (Cons!3689 (select (arr!5764 lt!123080) #b00000000000000000000000000000000) Nil!3690) Nil!3690)))))

(declare-fun b!245925 () Bool)

(declare-fun e!159555 () Bool)

(assert (=> b!245925 (= e!159555 call!22989)))

(declare-fun b!245926 () Bool)

(declare-fun e!159554 () Bool)

(assert (=> b!245926 (= e!159554 e!159555)))

(assert (=> b!245926 (= c!41085 (validKeyInArray!0 (select (arr!5764 lt!123080) #b00000000000000000000000000000000)))))

(declare-fun b!245927 () Bool)

(assert (=> b!245927 (= e!159553 e!159554)))

(declare-fun res!120615 () Bool)

(assert (=> b!245927 (=> (not res!120615) (not e!159554))))

(assert (=> b!245927 (= res!120615 (not e!159556))))

(declare-fun res!120614 () Bool)

(assert (=> b!245927 (=> (not res!120614) (not e!159556))))

(assert (=> b!245927 (= res!120614 (validKeyInArray!0 (select (arr!5764 lt!123080) #b00000000000000000000000000000000)))))

(declare-fun b!245928 () Bool)

(assert (=> b!245928 (= e!159555 call!22989)))

(assert (= (and d!60161 (not res!120613)) b!245927))

(assert (= (and b!245927 res!120614) b!245924))

(assert (= (and b!245927 res!120615) b!245926))

(assert (= (and b!245926 c!41085) b!245928))

(assert (= (and b!245926 (not c!41085)) b!245925))

(assert (= (or b!245928 b!245925) bm!22986))

(assert (=> b!245924 m!263393))

(assert (=> b!245924 m!263393))

(declare-fun m!263401 () Bool)

(assert (=> b!245924 m!263401))

(assert (=> bm!22986 m!263393))

(declare-fun m!263403 () Bool)

(assert (=> bm!22986 m!263403))

(assert (=> b!245926 m!263393))

(assert (=> b!245926 m!263393))

(assert (=> b!245926 m!263395))

(assert (=> b!245927 m!263393))

(assert (=> b!245927 m!263393))

(assert (=> b!245927 m!263395))

(assert (=> b!245687 d!60161))

(declare-fun d!60163 () Bool)

(assert (=> d!60163 (= (array_inv!3797 (_keys!6662 thiss!1504)) (bvsge (size!6106 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245683 d!60163))

(declare-fun d!60165 () Bool)

(assert (=> d!60165 (= (array_inv!3798 (_values!4530 thiss!1504)) (bvsge (size!6105 (_values!4530 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245683 d!60165))

(declare-fun d!60167 () Bool)

(declare-fun res!120622 () Bool)

(declare-fun e!159559 () Bool)

(assert (=> d!60167 (=> (not res!120622) (not e!159559))))

(declare-fun simpleValid!253 (LongMapFixedSize!3636) Bool)

(assert (=> d!60167 (= res!120622 (simpleValid!253 thiss!1504))))

(assert (=> d!60167 (= (valid!1415 thiss!1504) e!159559)))

(declare-fun b!245935 () Bool)

(declare-fun res!120623 () Bool)

(assert (=> b!245935 (=> (not res!120623) (not e!159559))))

(assert (=> b!245935 (= res!120623 (= (arrayCountValidKeys!0 (_keys!6662 thiss!1504) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (_size!1867 thiss!1504)))))

(declare-fun b!245936 () Bool)

(declare-fun res!120624 () Bool)

(assert (=> b!245936 (=> (not res!120624) (not e!159559))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12146 (_ BitVec 32)) Bool)

(assert (=> b!245936 (= res!120624 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun b!245937 () Bool)

(assert (=> b!245937 (= e!159559 (arrayNoDuplicates!0 (_keys!6662 thiss!1504) #b00000000000000000000000000000000 Nil!3690))))

(assert (= (and d!60167 res!120622) b!245935))

(assert (= (and b!245935 res!120623) b!245936))

(assert (= (and b!245936 res!120624) b!245937))

(declare-fun m!263405 () Bool)

(assert (=> d!60167 m!263405))

(assert (=> b!245935 m!263229))

(declare-fun m!263407 () Bool)

(assert (=> b!245936 m!263407))

(declare-fun m!263409 () Bool)

(assert (=> b!245937 m!263409))

(assert (=> start!23380 d!60167))

(declare-fun d!60169 () Bool)

(assert (=> d!60169 (contains!1775 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) key!932)))

(declare-fun lt!123224 () Unit!7582)

(declare-fun choose!1159 (array!12146 array!12144 (_ BitVec 32) (_ BitVec 32) V!8211 V!8211 (_ BitVec 64) (_ BitVec 32) Int) Unit!7582)

(assert (=> d!60169 (= lt!123224 (choose!1159 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))

(assert (=> d!60169 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60169 (= (lemmaArrayContainsKeyThenInListMap!175 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) lt!123224)))

(declare-fun bs!8896 () Bool)

(assert (= bs!8896 d!60169))

(assert (=> bs!8896 m!263213))

(assert (=> bs!8896 m!263213))

(assert (=> bs!8896 m!263215))

(declare-fun m!263411 () Bool)

(assert (=> bs!8896 m!263411))

(assert (=> bs!8896 m!263235))

(assert (=> b!245691 d!60169))

(declare-fun mapIsEmpty!10903 () Bool)

(declare-fun mapRes!10903 () Bool)

(assert (=> mapIsEmpty!10903 mapRes!10903))

(declare-fun condMapEmpty!10903 () Bool)

(declare-fun mapDefault!10903 () ValueCell!2868)

(assert (=> mapNonEmpty!10897 (= condMapEmpty!10903 (= mapRest!10897 ((as const (Array (_ BitVec 32) ValueCell!2868)) mapDefault!10903)))))

(declare-fun e!159565 () Bool)

(assert (=> mapNonEmpty!10897 (= tp!22918 (and e!159565 mapRes!10903))))

(declare-fun mapNonEmpty!10903 () Bool)

(declare-fun tp!22927 () Bool)

(declare-fun e!159564 () Bool)

(assert (=> mapNonEmpty!10903 (= mapRes!10903 (and tp!22927 e!159564))))

(declare-fun mapRest!10903 () (Array (_ BitVec 32) ValueCell!2868))

(declare-fun mapValue!10903 () ValueCell!2868)

(declare-fun mapKey!10903 () (_ BitVec 32))

(assert (=> mapNonEmpty!10903 (= mapRest!10897 (store mapRest!10903 mapKey!10903 mapValue!10903))))

(declare-fun b!245944 () Bool)

(assert (=> b!245944 (= e!159564 tp_is_empty!6423)))

(declare-fun b!245945 () Bool)

(assert (=> b!245945 (= e!159565 tp_is_empty!6423)))

(assert (= (and mapNonEmpty!10897 condMapEmpty!10903) mapIsEmpty!10903))

(assert (= (and mapNonEmpty!10897 (not condMapEmpty!10903)) mapNonEmpty!10903))

(assert (= (and mapNonEmpty!10903 ((_ is ValueCellFull!2868) mapValue!10903)) b!245944))

(assert (= (and mapNonEmpty!10897 ((_ is ValueCellFull!2868) mapDefault!10903)) b!245945))

(declare-fun m!263413 () Bool)

(assert (=> mapNonEmpty!10903 m!263413))

(declare-fun b_lambda!8059 () Bool)

(assert (= b_lambda!8057 (or (and b!245683 b_free!6561) b_lambda!8059)))

(check-sat b_and!13573 (not d!60139) (not bm!22978) tp_is_empty!6423 (not b_lambda!8059) (not d!60169) (not b!245817) (not b!245767) (not d!60151) (not b!245910) (not b!245759) (not bm!22969) (not bm!22979) (not b!245937) (not b!245826) (not bm!22968) (not bm!22970) (not b!245892) (not b!245924) (not d!60135) (not b!245821) (not b!245891) (not b!245906) (not bm!22983) (not b!245849) (not b!245822) (not b_next!6561) (not bm!22973) (not b!245913) (not b!245894) (not b!245818) (not d!60167) (not d!60141) (not b!245858) (not mapNonEmpty!10903) (not d!60145) (not b!245769) (not b!245831) (not b!245927) (not b!245820) (not bm!22986) (not bm!22982) (not b!245926) (not d!60149) (not d!60159) (not b!245936) (not b!245832) (not b!245935))
(check-sat b_and!13573 (not b_next!6561))
(get-model)

(declare-fun d!60171 () Bool)

(assert (=> d!60171 (isDefined!230 (getValueByKey!288 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932))))

(declare-fun lt!123227 () Unit!7582)

(declare-fun choose!1160 (List!3692 (_ BitVec 64)) Unit!7582)

(assert (=> d!60171 (= lt!123227 (choose!1160 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932))))

(declare-fun e!159568 () Bool)

(assert (=> d!60171 e!159568))

(declare-fun res!120627 () Bool)

(assert (=> d!60171 (=> (not res!120627) (not e!159568))))

(declare-fun isStrictlySorted!363 (List!3692) Bool)

(assert (=> d!60171 (= res!120627 (isStrictlySorted!363 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))))

(assert (=> d!60171 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!229 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932) lt!123227)))

(declare-fun b!245948 () Bool)

(assert (=> b!245948 (= e!159568 (containsKey!280 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932))))

(assert (= (and d!60171 res!120627) b!245948))

(assert (=> d!60171 m!263293))

(assert (=> d!60171 m!263293))

(assert (=> d!60171 m!263295))

(declare-fun m!263415 () Bool)

(assert (=> d!60171 m!263415))

(declare-fun m!263417 () Bool)

(assert (=> d!60171 m!263417))

(assert (=> b!245948 m!263289))

(assert (=> b!245767 d!60171))

(declare-fun d!60173 () Bool)

(declare-fun isEmpty!527 (Option!294) Bool)

(assert (=> d!60173 (= (isDefined!230 (getValueByKey!288 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932)) (not (isEmpty!527 (getValueByKey!288 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932))))))

(declare-fun bs!8897 () Bool)

(assert (= bs!8897 d!60173))

(assert (=> bs!8897 m!263293))

(declare-fun m!263419 () Bool)

(assert (=> bs!8897 m!263419))

(assert (=> b!245767 d!60173))

(declare-fun b!245957 () Bool)

(declare-fun e!159573 () Option!294)

(assert (=> b!245957 (= e!159573 (Some!293 (_2!2403 (h!4345 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))))))))

(declare-fun d!60175 () Bool)

(declare-fun c!41090 () Bool)

(assert (=> d!60175 (= c!41090 (and ((_ is Cons!3688) (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))) (= (_1!2403 (h!4345 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))))) key!932)))))

(assert (=> d!60175 (= (getValueByKey!288 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932) e!159573)))

(declare-fun b!245959 () Bool)

(declare-fun e!159574 () Option!294)

(assert (=> b!245959 (= e!159574 (getValueByKey!288 (t!8715 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))) key!932))))

(declare-fun b!245958 () Bool)

(assert (=> b!245958 (= e!159573 e!159574)))

(declare-fun c!41091 () Bool)

(assert (=> b!245958 (= c!41091 (and ((_ is Cons!3688) (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))) (not (= (_1!2403 (h!4345 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))))) key!932))))))

(declare-fun b!245960 () Bool)

(assert (=> b!245960 (= e!159574 None!292)))

(assert (= (and d!60175 c!41090) b!245957))

(assert (= (and d!60175 (not c!41090)) b!245958))

(assert (= (and b!245958 c!41091) b!245959))

(assert (= (and b!245958 (not c!41091)) b!245960))

(declare-fun m!263421 () Bool)

(assert (=> b!245959 m!263421))

(assert (=> b!245767 d!60175))

(declare-fun d!60177 () Bool)

(declare-fun e!159575 () Bool)

(assert (=> d!60177 e!159575))

(declare-fun res!120628 () Bool)

(assert (=> d!60177 (=> res!120628 e!159575)))

(declare-fun lt!123231 () Bool)

(assert (=> d!60177 (= res!120628 (not lt!123231))))

(declare-fun lt!123229 () Bool)

(assert (=> d!60177 (= lt!123231 lt!123229)))

(declare-fun lt!123228 () Unit!7582)

(declare-fun e!159576 () Unit!7582)

(assert (=> d!60177 (= lt!123228 e!159576)))

(declare-fun c!41092 () Bool)

(assert (=> d!60177 (= c!41092 lt!123229)))

(assert (=> d!60177 (= lt!123229 (containsKey!280 (toList!1872 lt!123180) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!60177 (= (contains!1775 lt!123180 #b0000000000000000000000000000000000000000000000000000000000000000) lt!123231)))

(declare-fun b!245961 () Bool)

(declare-fun lt!123230 () Unit!7582)

(assert (=> b!245961 (= e!159576 lt!123230)))

(assert (=> b!245961 (= lt!123230 (lemmaContainsKeyImpliesGetValueByKeyDefined!229 (toList!1872 lt!123180) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!245961 (isDefined!230 (getValueByKey!288 (toList!1872 lt!123180) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!245962 () Bool)

(declare-fun Unit!7594 () Unit!7582)

(assert (=> b!245962 (= e!159576 Unit!7594)))

(declare-fun b!245963 () Bool)

(assert (=> b!245963 (= e!159575 (isDefined!230 (getValueByKey!288 (toList!1872 lt!123180) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60177 c!41092) b!245961))

(assert (= (and d!60177 (not c!41092)) b!245962))

(assert (= (and d!60177 (not res!120628)) b!245963))

(declare-fun m!263423 () Bool)

(assert (=> d!60177 m!263423))

(declare-fun m!263425 () Bool)

(assert (=> b!245961 m!263425))

(declare-fun m!263427 () Bool)

(assert (=> b!245961 m!263427))

(assert (=> b!245961 m!263427))

(declare-fun m!263429 () Bool)

(assert (=> b!245961 m!263429))

(assert (=> b!245963 m!263427))

(assert (=> b!245963 m!263427))

(assert (=> b!245963 m!263429))

(assert (=> bm!22969 d!60177))

(declare-fun d!60179 () Bool)

(declare-fun res!120629 () Bool)

(declare-fun e!159577 () Bool)

(assert (=> d!60179 (=> res!120629 e!159577)))

(assert (=> d!60179 (= res!120629 (= (select (arr!5764 (_keys!6662 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!60179 (= (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!159577)))

(declare-fun b!245964 () Bool)

(declare-fun e!159578 () Bool)

(assert (=> b!245964 (= e!159577 e!159578)))

(declare-fun res!120630 () Bool)

(assert (=> b!245964 (=> (not res!120630) (not e!159578))))

(assert (=> b!245964 (= res!120630 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245965 () Bool)

(assert (=> b!245965 (= e!159578 (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!60179 (not res!120629)) b!245964))

(assert (= (and b!245964 res!120630) b!245965))

(declare-fun m!263431 () Bool)

(assert (=> d!60179 m!263431))

(declare-fun m!263433 () Bool)

(assert (=> b!245965 m!263433))

(assert (=> b!245858 d!60179))

(declare-fun b!245990 () Bool)

(declare-fun e!159596 () Bool)

(declare-fun lt!123248 () ListLongMap!3713)

(assert (=> b!245990 (= e!159596 (= lt!123248 (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4547 thiss!1504))))))

(declare-fun b!245991 () Bool)

(declare-fun e!159593 () ListLongMap!3713)

(declare-fun call!22992 () ListLongMap!3713)

(assert (=> b!245991 (= e!159593 call!22992)))

(declare-fun b!245992 () Bool)

(declare-fun e!159597 () Bool)

(assert (=> b!245992 (= e!159597 e!159596)))

(declare-fun c!41103 () Bool)

(assert (=> b!245992 (= c!41103 (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!245993 () Bool)

(declare-fun isEmpty!528 (ListLongMap!3713) Bool)

(assert (=> b!245993 (= e!159596 (isEmpty!528 lt!123248))))

(declare-fun b!245994 () Bool)

(assert (=> b!245994 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> b!245994 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6105 (_values!4530 thiss!1504))))))

(declare-fun e!159598 () Bool)

(assert (=> b!245994 (= e!159598 (= (apply!231 lt!123248 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)) (get!2958 (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!569 (defaultEntry!4547 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!245996 () Bool)

(declare-fun lt!123252 () Unit!7582)

(declare-fun lt!123250 () Unit!7582)

(assert (=> b!245996 (= lt!123252 lt!123250)))

(declare-fun lt!123249 () (_ BitVec 64))

(declare-fun lt!123251 () V!8211)

(declare-fun lt!123246 () ListLongMap!3713)

(declare-fun lt!123247 () (_ BitVec 64))

(assert (=> b!245996 (not (contains!1775 (+!653 lt!123246 (tuple2!4787 lt!123247 lt!123251)) lt!123249))))

(declare-fun addStillNotContains!122 (ListLongMap!3713 (_ BitVec 64) V!8211 (_ BitVec 64)) Unit!7582)

(assert (=> b!245996 (= lt!123250 (addStillNotContains!122 lt!123246 lt!123247 lt!123251 lt!123249))))

(assert (=> b!245996 (= lt!123249 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!245996 (= lt!123251 (get!2958 (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!569 (defaultEntry!4547 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!245996 (= lt!123247 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!245996 (= lt!123246 call!22992)))

(assert (=> b!245996 (= e!159593 (+!653 call!22992 (tuple2!4787 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000) (get!2958 (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!569 (defaultEntry!4547 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!245997 () Bool)

(declare-fun e!159595 () ListLongMap!3713)

(assert (=> b!245997 (= e!159595 e!159593)))

(declare-fun c!41102 () Bool)

(assert (=> b!245997 (= c!41102 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22989 () Bool)

(assert (=> bm!22989 (= call!22992 (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4547 thiss!1504)))))

(declare-fun b!245998 () Bool)

(assert (=> b!245998 (= e!159595 (ListLongMap!3714 Nil!3689))))

(declare-fun b!245999 () Bool)

(declare-fun e!159599 () Bool)

(assert (=> b!245999 (= e!159599 e!159597)))

(declare-fun c!41104 () Bool)

(declare-fun e!159594 () Bool)

(assert (=> b!245999 (= c!41104 e!159594)))

(declare-fun res!120640 () Bool)

(assert (=> b!245999 (=> (not res!120640) (not e!159594))))

(assert (=> b!245999 (= res!120640 (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!246000 () Bool)

(assert (=> b!246000 (= e!159594 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!246000 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!246001 () Bool)

(declare-fun res!120641 () Bool)

(assert (=> b!246001 (=> (not res!120641) (not e!159599))))

(assert (=> b!246001 (= res!120641 (not (contains!1775 lt!123248 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun d!60181 () Bool)

(assert (=> d!60181 e!159599))

(declare-fun res!120639 () Bool)

(assert (=> d!60181 (=> (not res!120639) (not e!159599))))

(assert (=> d!60181 (= res!120639 (not (contains!1775 lt!123248 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!60181 (= lt!123248 e!159595)))

(declare-fun c!41101 () Bool)

(assert (=> d!60181 (= c!41101 (bvsge #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60181 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60181 (= (getCurrentListMapNoExtraKeys!550 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) lt!123248)))

(declare-fun b!245995 () Bool)

(assert (=> b!245995 (= e!159597 e!159598)))

(assert (=> b!245995 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun res!120642 () Bool)

(assert (=> b!245995 (= res!120642 (contains!1775 lt!123248 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!245995 (=> (not res!120642) (not e!159598))))

(assert (= (and d!60181 c!41101) b!245998))

(assert (= (and d!60181 (not c!41101)) b!245997))

(assert (= (and b!245997 c!41102) b!245996))

(assert (= (and b!245997 (not c!41102)) b!245991))

(assert (= (or b!245996 b!245991) bm!22989))

(assert (= (and d!60181 res!120639) b!246001))

(assert (= (and b!246001 res!120641) b!245999))

(assert (= (and b!245999 res!120640) b!246000))

(assert (= (and b!245999 c!41104) b!245995))

(assert (= (and b!245999 (not c!41104)) b!245992))

(assert (= (and b!245995 res!120642) b!245994))

(assert (= (and b!245992 c!41103) b!245990))

(assert (= (and b!245992 (not c!41103)) b!245993))

(declare-fun b_lambda!8061 () Bool)

(assert (=> (not b_lambda!8061) (not b!245994)))

(assert (=> b!245994 t!8720))

(declare-fun b_and!13575 () Bool)

(assert (= b_and!13573 (and (=> t!8720 result!5255) b_and!13575)))

(declare-fun b_lambda!8063 () Bool)

(assert (=> (not b_lambda!8063) (not b!245996)))

(assert (=> b!245996 t!8720))

(declare-fun b_and!13577 () Bool)

(assert (= b_and!13575 (and (=> t!8720 result!5255) b_and!13577)))

(declare-fun m!263435 () Bool)

(assert (=> bm!22989 m!263435))

(assert (=> b!245994 m!263313))

(assert (=> b!245994 m!263297))

(assert (=> b!245994 m!263313))

(assert (=> b!245994 m!263311))

(assert (=> b!245994 m!263315))

(assert (=> b!245994 m!263311))

(assert (=> b!245994 m!263297))

(declare-fun m!263437 () Bool)

(assert (=> b!245994 m!263437))

(declare-fun m!263439 () Bool)

(assert (=> b!245996 m!263439))

(declare-fun m!263441 () Bool)

(assert (=> b!245996 m!263441))

(declare-fun m!263443 () Bool)

(assert (=> b!245996 m!263443))

(assert (=> b!245996 m!263313))

(assert (=> b!245996 m!263297))

(assert (=> b!245996 m!263313))

(assert (=> b!245996 m!263311))

(assert (=> b!245996 m!263315))

(declare-fun m!263445 () Bool)

(assert (=> b!245996 m!263445))

(assert (=> b!245996 m!263441))

(assert (=> b!245996 m!263311))

(assert (=> b!245995 m!263297))

(assert (=> b!245995 m!263297))

(declare-fun m!263447 () Bool)

(assert (=> b!245995 m!263447))

(declare-fun m!263449 () Bool)

(assert (=> d!60181 m!263449))

(assert (=> d!60181 m!263235))

(assert (=> b!245997 m!263297))

(assert (=> b!245997 m!263297))

(assert (=> b!245997 m!263299))

(declare-fun m!263451 () Bool)

(assert (=> b!246001 m!263451))

(declare-fun m!263453 () Bool)

(assert (=> b!245993 m!263453))

(assert (=> b!245990 m!263435))

(assert (=> b!246000 m!263297))

(assert (=> b!246000 m!263297))

(assert (=> b!246000 m!263299))

(assert (=> bm!22968 d!60181))

(assert (=> bm!22979 d!60147))

(declare-fun d!60183 () Bool)

(declare-fun get!2959 (Option!294) V!8211)

(assert (=> d!60183 (= (apply!231 lt!123180 #b1000000000000000000000000000000000000000000000000000000000000000) (get!2959 (getValueByKey!288 (toList!1872 lt!123180) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8898 () Bool)

(assert (= bs!8898 d!60183))

(declare-fun m!263455 () Bool)

(assert (=> bs!8898 m!263455))

(assert (=> bs!8898 m!263455))

(declare-fun m!263457 () Bool)

(assert (=> bs!8898 m!263457))

(assert (=> b!245831 d!60183))

(declare-fun b!246014 () Bool)

(declare-fun e!159608 () SeekEntryResult!1101)

(declare-fun e!159606 () SeekEntryResult!1101)

(assert (=> b!246014 (= e!159608 e!159606)))

(declare-fun c!41111 () Bool)

(declare-fun lt!123257 () (_ BitVec 64))

(assert (=> b!246014 (= c!41111 (= lt!123257 key!932))))

(declare-fun b!246015 () Bool)

(assert (=> b!246015 (= e!159606 (Found!1101 (index!6576 lt!123203)))))

(declare-fun b!246016 () Bool)

(assert (=> b!246016 (= e!159608 Undefined!1101)))

(declare-fun b!246017 () Bool)

(declare-fun e!159607 () SeekEntryResult!1101)

(assert (=> b!246017 (= e!159607 (MissingVacant!1101 (index!6576 lt!123203)))))

(declare-fun lt!123258 () SeekEntryResult!1101)

(declare-fun d!60185 () Bool)

(assert (=> d!60185 (and (or ((_ is Undefined!1101) lt!123258) (not ((_ is Found!1101) lt!123258)) (and (bvsge (index!6575 lt!123258) #b00000000000000000000000000000000) (bvslt (index!6575 lt!123258) (size!6106 (_keys!6662 thiss!1504))))) (or ((_ is Undefined!1101) lt!123258) ((_ is Found!1101) lt!123258) (not ((_ is MissingVacant!1101) lt!123258)) (not (= (index!6577 lt!123258) (index!6576 lt!123203))) (and (bvsge (index!6577 lt!123258) #b00000000000000000000000000000000) (bvslt (index!6577 lt!123258) (size!6106 (_keys!6662 thiss!1504))))) (or ((_ is Undefined!1101) lt!123258) (ite ((_ is Found!1101) lt!123258) (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6575 lt!123258)) key!932) (and ((_ is MissingVacant!1101) lt!123258) (= (index!6577 lt!123258) (index!6576 lt!123203)) (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6577 lt!123258)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!60185 (= lt!123258 e!159608)))

(declare-fun c!41112 () Bool)

(assert (=> d!60185 (= c!41112 (bvsge (x!24449 lt!123203) #b01111111111111111111111111111110))))

(assert (=> d!60185 (= lt!123257 (select (arr!5764 (_keys!6662 thiss!1504)) (index!6576 lt!123203)))))

(assert (=> d!60185 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60185 (= (seekKeyOrZeroReturnVacant!0 (x!24449 lt!123203) (index!6576 lt!123203) (index!6576 lt!123203) key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)) lt!123258)))

(declare-fun b!246018 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!246018 (= e!159607 (seekKeyOrZeroReturnVacant!0 (bvadd (x!24449 lt!123203) #b00000000000000000000000000000001) (nextIndex!0 (index!6576 lt!123203) (x!24449 lt!123203) (mask!10661 thiss!1504)) (index!6576 lt!123203) key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun b!246019 () Bool)

(declare-fun c!41113 () Bool)

(assert (=> b!246019 (= c!41113 (= lt!123257 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246019 (= e!159606 e!159607)))

(assert (= (and d!60185 c!41112) b!246016))

(assert (= (and d!60185 (not c!41112)) b!246014))

(assert (= (and b!246014 c!41111) b!246015))

(assert (= (and b!246014 (not c!41111)) b!246019))

(assert (= (and b!246019 c!41113) b!246017))

(assert (= (and b!246019 (not c!41113)) b!246018))

(declare-fun m!263459 () Bool)

(assert (=> d!60185 m!263459))

(declare-fun m!263461 () Bool)

(assert (=> d!60185 m!263461))

(assert (=> d!60185 m!263367))

(assert (=> d!60185 m!263235))

(declare-fun m!263463 () Bool)

(assert (=> b!246018 m!263463))

(assert (=> b!246018 m!263463))

(declare-fun m!263465 () Bool)

(assert (=> b!246018 m!263465))

(assert (=> b!245849 d!60185))

(declare-fun d!60187 () Bool)

(assert (=> d!60187 (= (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!245832 d!60187))

(declare-fun d!60189 () Bool)

(assert (=> d!60189 (arrayNoDuplicates!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000000 Nil!3690)))

(assert (=> d!60189 true))

(declare-fun _$65!71 () Unit!7582)

(assert (=> d!60189 (= (choose!41 (_keys!6662 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3690) _$65!71)))

(declare-fun bs!8899 () Bool)

(assert (= bs!8899 d!60189))

(assert (=> bs!8899 m!263227))

(assert (=> bs!8899 m!263399))

(assert (=> d!60159 d!60189))

(declare-fun d!60191 () Bool)

(declare-fun e!159609 () Bool)

(assert (=> d!60191 e!159609))

(declare-fun res!120643 () Bool)

(assert (=> d!60191 (=> res!120643 e!159609)))

(declare-fun lt!123262 () Bool)

(assert (=> d!60191 (= res!120643 (not lt!123262))))

(declare-fun lt!123260 () Bool)

(assert (=> d!60191 (= lt!123262 lt!123260)))

(declare-fun lt!123259 () Unit!7582)

(declare-fun e!159610 () Unit!7582)

(assert (=> d!60191 (= lt!123259 e!159610)))

(declare-fun c!41114 () Bool)

(assert (=> d!60191 (= c!41114 lt!123260)))

(assert (=> d!60191 (= lt!123260 (containsKey!280 (toList!1872 lt!123180) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!60191 (= (contains!1775 lt!123180 #b1000000000000000000000000000000000000000000000000000000000000000) lt!123262)))

(declare-fun b!246020 () Bool)

(declare-fun lt!123261 () Unit!7582)

(assert (=> b!246020 (= e!159610 lt!123261)))

(assert (=> b!246020 (= lt!123261 (lemmaContainsKeyImpliesGetValueByKeyDefined!229 (toList!1872 lt!123180) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246020 (isDefined!230 (getValueByKey!288 (toList!1872 lt!123180) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!246021 () Bool)

(declare-fun Unit!7595 () Unit!7582)

(assert (=> b!246021 (= e!159610 Unit!7595)))

(declare-fun b!246022 () Bool)

(assert (=> b!246022 (= e!159609 (isDefined!230 (getValueByKey!288 (toList!1872 lt!123180) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60191 c!41114) b!246020))

(assert (= (and d!60191 (not c!41114)) b!246021))

(assert (= (and d!60191 (not res!120643)) b!246022))

(declare-fun m!263467 () Bool)

(assert (=> d!60191 m!263467))

(declare-fun m!263469 () Bool)

(assert (=> b!246020 m!263469))

(assert (=> b!246020 m!263455))

(assert (=> b!246020 m!263455))

(declare-fun m!263471 () Bool)

(assert (=> b!246020 m!263471))

(assert (=> b!246022 m!263455))

(assert (=> b!246022 m!263455))

(assert (=> b!246022 m!263471))

(assert (=> bm!22973 d!60191))

(assert (=> d!60135 d!60145))

(declare-fun d!60193 () Bool)

(declare-fun e!159613 () Bool)

(assert (=> d!60193 e!159613))

(declare-fun res!120649 () Bool)

(assert (=> d!60193 (=> (not res!120649) (not e!159613))))

(declare-fun lt!123265 () SeekEntryResult!1101)

(assert (=> d!60193 (= res!120649 ((_ is Found!1101) lt!123265))))

(assert (=> d!60193 (= lt!123265 (seekEntryOrOpen!0 key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(assert (=> d!60193 true))

(declare-fun _$33!159 () Unit!7582)

(assert (=> d!60193 (= (choose!1157 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)) _$33!159)))

(declare-fun b!246027 () Bool)

(declare-fun res!120648 () Bool)

(assert (=> b!246027 (=> (not res!120648) (not e!159613))))

(assert (=> b!246027 (= res!120648 (inRange!0 (index!6575 lt!123265) (mask!10661 thiss!1504)))))

(declare-fun b!246028 () Bool)

(assert (=> b!246028 (= e!159613 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6575 lt!123265)) key!932))))

(assert (= (and d!60193 res!120649) b!246027))

(assert (= (and b!246027 res!120648) b!246028))

(assert (=> d!60193 m!263237))

(declare-fun m!263473 () Bool)

(assert (=> b!246027 m!263473))

(declare-fun m!263475 () Bool)

(assert (=> b!246028 m!263475))

(assert (=> d!60135 d!60193))

(assert (=> d!60135 d!60155))

(declare-fun d!60195 () Bool)

(declare-fun res!120650 () Bool)

(declare-fun e!159614 () Bool)

(assert (=> d!60195 (=> res!120650 e!159614)))

(assert (=> d!60195 (= res!120650 (bvsge #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60195 (= (arrayNoDuplicates!0 (_keys!6662 thiss!1504) #b00000000000000000000000000000000 Nil!3690) e!159614)))

(declare-fun b!246029 () Bool)

(declare-fun e!159617 () Bool)

(assert (=> b!246029 (= e!159617 (contains!1777 Nil!3690 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!22990 () Bool)

(declare-fun call!22993 () Bool)

(declare-fun c!41115 () Bool)

(assert (=> bm!22990 (= call!22993 (arrayNoDuplicates!0 (_keys!6662 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41115 (Cons!3689 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000) Nil!3690) Nil!3690)))))

(declare-fun b!246030 () Bool)

(declare-fun e!159616 () Bool)

(assert (=> b!246030 (= e!159616 call!22993)))

(declare-fun b!246031 () Bool)

(declare-fun e!159615 () Bool)

(assert (=> b!246031 (= e!159615 e!159616)))

(assert (=> b!246031 (= c!41115 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!246032 () Bool)

(assert (=> b!246032 (= e!159614 e!159615)))

(declare-fun res!120652 () Bool)

(assert (=> b!246032 (=> (not res!120652) (not e!159615))))

(assert (=> b!246032 (= res!120652 (not e!159617))))

(declare-fun res!120651 () Bool)

(assert (=> b!246032 (=> (not res!120651) (not e!159617))))

(assert (=> b!246032 (= res!120651 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!246033 () Bool)

(assert (=> b!246033 (= e!159616 call!22993)))

(assert (= (and d!60195 (not res!120650)) b!246032))

(assert (= (and b!246032 res!120651) b!246029))

(assert (= (and b!246032 res!120652) b!246031))

(assert (= (and b!246031 c!41115) b!246033))

(assert (= (and b!246031 (not c!41115)) b!246030))

(assert (= (or b!246033 b!246030) bm!22990))

(assert (=> b!246029 m!263297))

(assert (=> b!246029 m!263297))

(declare-fun m!263477 () Bool)

(assert (=> b!246029 m!263477))

(assert (=> bm!22990 m!263297))

(declare-fun m!263479 () Bool)

(assert (=> bm!22990 m!263479))

(assert (=> b!246031 m!263297))

(assert (=> b!246031 m!263297))

(assert (=> b!246031 m!263299))

(assert (=> b!246032 m!263297))

(assert (=> b!246032 m!263297))

(assert (=> b!246032 m!263299))

(assert (=> b!245937 d!60195))

(assert (=> b!245935 d!60153))

(declare-fun d!60197 () Bool)

(declare-fun e!159620 () Bool)

(assert (=> d!60197 e!159620))

(declare-fun res!120658 () Bool)

(assert (=> d!60197 (=> (not res!120658) (not e!159620))))

(declare-fun lt!123277 () ListLongMap!3713)

(assert (=> d!60197 (= res!120658 (contains!1775 lt!123277 (_1!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))))))

(declare-fun lt!123275 () List!3692)

(assert (=> d!60197 (= lt!123277 (ListLongMap!3714 lt!123275))))

(declare-fun lt!123274 () Unit!7582)

(declare-fun lt!123276 () Unit!7582)

(assert (=> d!60197 (= lt!123274 lt!123276)))

(assert (=> d!60197 (= (getValueByKey!288 lt!123275 (_1!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))) (Some!293 (_2!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!157 (List!3692 (_ BitVec 64) V!8211) Unit!7582)

(assert (=> d!60197 (= lt!123276 (lemmaContainsTupThenGetReturnValue!157 lt!123275 (_1!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))) (_2!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))))))

(declare-fun insertStrictlySorted!159 (List!3692 (_ BitVec 64) V!8211) List!3692)

(assert (=> d!60197 (= lt!123275 (insertStrictlySorted!159 (toList!1872 (ite c!41058 call!22972 (ite c!41054 call!22970 call!22976))) (_1!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))) (_2!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))))))

(assert (=> d!60197 (= (+!653 (ite c!41058 call!22972 (ite c!41054 call!22970 call!22976)) (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))) lt!123277)))

(declare-fun b!246038 () Bool)

(declare-fun res!120657 () Bool)

(assert (=> b!246038 (=> (not res!120657) (not e!159620))))

(assert (=> b!246038 (= res!120657 (= (getValueByKey!288 (toList!1872 lt!123277) (_1!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))) (Some!293 (_2!2403 (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))))))))

(declare-fun b!246039 () Bool)

(declare-fun contains!1778 (List!3692 tuple2!4786) Bool)

(assert (=> b!246039 (= e!159620 (contains!1778 (toList!1872 lt!123277) (ite (or c!41058 c!41054) (tuple2!4787 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4388 thiss!1504)) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))))))

(assert (= (and d!60197 res!120658) b!246038))

(assert (= (and b!246038 res!120657) b!246039))

(declare-fun m!263481 () Bool)

(assert (=> d!60197 m!263481))

(declare-fun m!263483 () Bool)

(assert (=> d!60197 m!263483))

(declare-fun m!263485 () Bool)

(assert (=> d!60197 m!263485))

(declare-fun m!263487 () Bool)

(assert (=> d!60197 m!263487))

(declare-fun m!263489 () Bool)

(assert (=> b!246038 m!263489))

(declare-fun m!263491 () Bool)

(assert (=> b!246039 m!263491))

(assert (=> bm!22970 d!60197))

(declare-fun b!246048 () Bool)

(declare-fun e!159627 () Bool)

(declare-fun e!159629 () Bool)

(assert (=> b!246048 (= e!159627 e!159629)))

(declare-fun lt!123285 () (_ BitVec 64))

(assert (=> b!246048 (= lt!123285 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!123286 () Unit!7582)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12146 (_ BitVec 64) (_ BitVec 32)) Unit!7582)

(assert (=> b!246048 (= lt!123286 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6662 thiss!1504) lt!123285 #b00000000000000000000000000000000))))

(assert (=> b!246048 (arrayContainsKey!0 (_keys!6662 thiss!1504) lt!123285 #b00000000000000000000000000000000)))

(declare-fun lt!123284 () Unit!7582)

(assert (=> b!246048 (= lt!123284 lt!123286)))

(declare-fun res!120664 () Bool)

(assert (=> b!246048 (= res!120664 (= (seekEntryOrOpen!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000) (_keys!6662 thiss!1504) (mask!10661 thiss!1504)) (Found!1101 #b00000000000000000000000000000000)))))

(assert (=> b!246048 (=> (not res!120664) (not e!159629))))

(declare-fun b!246049 () Bool)

(declare-fun call!22996 () Bool)

(assert (=> b!246049 (= e!159627 call!22996)))

(declare-fun bm!22993 () Bool)

(assert (=> bm!22993 (= call!22996 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun b!246051 () Bool)

(declare-fun e!159628 () Bool)

(assert (=> b!246051 (= e!159628 e!159627)))

(declare-fun c!41118 () Bool)

(assert (=> b!246051 (= c!41118 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!60199 () Bool)

(declare-fun res!120663 () Bool)

(assert (=> d!60199 (=> res!120663 e!159628)))

(assert (=> d!60199 (= res!120663 (bvsge #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60199 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)) e!159628)))

(declare-fun b!246050 () Bool)

(assert (=> b!246050 (= e!159629 call!22996)))

(assert (= (and d!60199 (not res!120663)) b!246051))

(assert (= (and b!246051 c!41118) b!246048))

(assert (= (and b!246051 (not c!41118)) b!246049))

(assert (= (and b!246048 res!120664) b!246050))

(assert (= (or b!246050 b!246049) bm!22993))

(assert (=> b!246048 m!263297))

(declare-fun m!263493 () Bool)

(assert (=> b!246048 m!263493))

(declare-fun m!263495 () Bool)

(assert (=> b!246048 m!263495))

(assert (=> b!246048 m!263297))

(declare-fun m!263497 () Bool)

(assert (=> b!246048 m!263497))

(declare-fun m!263499 () Bool)

(assert (=> bm!22993 m!263499))

(assert (=> b!246051 m!263297))

(assert (=> b!246051 m!263297))

(assert (=> b!246051 m!263299))

(assert (=> b!245936 d!60199))

(declare-fun bm!22994 () Bool)

(declare-fun call!22997 () (_ BitVec 32))

(assert (=> bm!22994 (= call!22997 (arrayCountValidKeys!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!246052 () Bool)

(declare-fun e!159631 () (_ BitVec 32))

(assert (=> b!246052 (= e!159631 call!22997)))

(declare-fun b!246054 () Bool)

(assert (=> b!246054 (= e!159631 (bvadd #b00000000000000000000000000000001 call!22997))))

(declare-fun b!246055 () Bool)

(declare-fun e!159630 () (_ BitVec 32))

(assert (=> b!246055 (= e!159630 e!159631)))

(declare-fun c!41119 () Bool)

(assert (=> b!246055 (= c!41119 (validKeyInArray!0 (select (arr!5764 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun d!60201 () Bool)

(declare-fun lt!123287 () (_ BitVec 32))

(assert (=> d!60201 (and (bvsge lt!123287 #b00000000000000000000000000000000) (bvsle lt!123287 (bvsub (size!6106 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (=> d!60201 (= lt!123287 e!159630)))

(declare-fun c!41120 () Bool)

(assert (=> d!60201 (= c!41120 (bvsge #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60201 (and (bvsle #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6106 (_keys!6662 thiss!1504)) (size!6106 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))))))))

(assert (=> d!60201 (= (arrayCountValidKeys!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) lt!123287)))

(declare-fun b!246053 () Bool)

(assert (=> b!246053 (= e!159630 #b00000000000000000000000000000000)))

(assert (= (and d!60201 c!41120) b!246053))

(assert (= (and d!60201 (not c!41120)) b!246055))

(assert (= (and b!246055 c!41119) b!246054))

(assert (= (and b!246055 (not c!41119)) b!246052))

(assert (= (or b!246054 b!246052) bm!22994))

(declare-fun m!263501 () Bool)

(assert (=> bm!22994 m!263501))

(declare-fun m!263503 () Bool)

(assert (=> b!246055 m!263503))

(assert (=> b!246055 m!263503))

(declare-fun m!263505 () Bool)

(assert (=> b!246055 m!263505))

(assert (=> b!245894 d!60201))

(assert (=> b!245894 d!60153))

(declare-fun d!60203 () Bool)

(declare-fun res!120665 () Bool)

(declare-fun e!159632 () Bool)

(assert (=> d!60203 (=> res!120665 e!159632)))

(assert (=> d!60203 (= res!120665 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 lt!123080)))))

(assert (=> d!60203 (= (arrayNoDuplicates!0 lt!123080 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41085 (Cons!3689 (select (arr!5764 lt!123080) #b00000000000000000000000000000000) Nil!3690) Nil!3690)) e!159632)))

(declare-fun b!246056 () Bool)

(declare-fun e!159635 () Bool)

(assert (=> b!246056 (= e!159635 (contains!1777 (ite c!41085 (Cons!3689 (select (arr!5764 lt!123080) #b00000000000000000000000000000000) Nil!3690) Nil!3690) (select (arr!5764 lt!123080) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun bm!22995 () Bool)

(declare-fun call!22998 () Bool)

(declare-fun c!41121 () Bool)

(assert (=> bm!22995 (= call!22998 (arrayNoDuplicates!0 lt!123080 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!41121 (Cons!3689 (select (arr!5764 lt!123080) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!41085 (Cons!3689 (select (arr!5764 lt!123080) #b00000000000000000000000000000000) Nil!3690) Nil!3690)) (ite c!41085 (Cons!3689 (select (arr!5764 lt!123080) #b00000000000000000000000000000000) Nil!3690) Nil!3690))))))

(declare-fun b!246057 () Bool)

(declare-fun e!159634 () Bool)

(assert (=> b!246057 (= e!159634 call!22998)))

(declare-fun b!246058 () Bool)

(declare-fun e!159633 () Bool)

(assert (=> b!246058 (= e!159633 e!159634)))

(assert (=> b!246058 (= c!41121 (validKeyInArray!0 (select (arr!5764 lt!123080) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!246059 () Bool)

(assert (=> b!246059 (= e!159632 e!159633)))

(declare-fun res!120667 () Bool)

(assert (=> b!246059 (=> (not res!120667) (not e!159633))))

(assert (=> b!246059 (= res!120667 (not e!159635))))

(declare-fun res!120666 () Bool)

(assert (=> b!246059 (=> (not res!120666) (not e!159635))))

(assert (=> b!246059 (= res!120666 (validKeyInArray!0 (select (arr!5764 lt!123080) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!246060 () Bool)

(assert (=> b!246060 (= e!159634 call!22998)))

(assert (= (and d!60203 (not res!120665)) b!246059))

(assert (= (and b!246059 res!120666) b!246056))

(assert (= (and b!246059 res!120667) b!246058))

(assert (= (and b!246058 c!41121) b!246060))

(assert (= (and b!246058 (not c!41121)) b!246057))

(assert (= (or b!246060 b!246057) bm!22995))

(declare-fun m!263507 () Bool)

(assert (=> b!246056 m!263507))

(assert (=> b!246056 m!263507))

(declare-fun m!263509 () Bool)

(assert (=> b!246056 m!263509))

(assert (=> bm!22995 m!263507))

(declare-fun m!263511 () Bool)

(assert (=> bm!22995 m!263511))

(assert (=> b!246058 m!263507))

(assert (=> b!246058 m!263507))

(declare-fun m!263513 () Bool)

(assert (=> b!246058 m!263513))

(assert (=> b!246059 m!263507))

(assert (=> b!246059 m!263507))

(assert (=> b!246059 m!263513))

(assert (=> bm!22986 d!60203))

(declare-fun d!60205 () Bool)

(assert (=> d!60205 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!245892 d!60205))

(assert (=> d!60149 d!60145))

(declare-fun b!246077 () Bool)

(declare-fun res!120679 () Bool)

(declare-fun lt!123290 () SeekEntryResult!1101)

(assert (=> b!246077 (= res!120679 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6574 lt!123290)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!159645 () Bool)

(assert (=> b!246077 (=> (not res!120679) (not e!159645))))

(declare-fun c!41126 () Bool)

(declare-fun bm!23000 () Bool)

(declare-fun call!23004 () Bool)

(assert (=> bm!23000 (= call!23004 (inRange!0 (ite c!41126 (index!6574 lt!123290) (index!6577 lt!123290)) (mask!10661 thiss!1504)))))

(declare-fun b!246078 () Bool)

(declare-fun res!120676 () Bool)

(declare-fun e!159646 () Bool)

(assert (=> b!246078 (=> (not res!120676) (not e!159646))))

(assert (=> b!246078 (= res!120676 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6577 lt!123290)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!246079 () Bool)

(declare-fun call!23003 () Bool)

(assert (=> b!246079 (= e!159645 (not call!23003))))

(declare-fun b!246080 () Bool)

(declare-fun e!159647 () Bool)

(assert (=> b!246080 (= e!159647 ((_ is Undefined!1101) lt!123290))))

(declare-fun b!246081 () Bool)

(declare-fun e!159644 () Bool)

(assert (=> b!246081 (= e!159644 e!159645)))

(declare-fun res!120678 () Bool)

(assert (=> b!246081 (= res!120678 call!23004)))

(assert (=> b!246081 (=> (not res!120678) (not e!159645))))

(declare-fun d!60207 () Bool)

(assert (=> d!60207 e!159644))

(assert (=> d!60207 (= c!41126 ((_ is MissingZero!1101) lt!123290))))

(assert (=> d!60207 (= lt!123290 (seekEntryOrOpen!0 key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(assert (=> d!60207 true))

(declare-fun _$34!1101 () Unit!7582)

(assert (=> d!60207 (= (choose!1158 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 (defaultEntry!4547 thiss!1504)) _$34!1101)))

(declare-fun b!246082 () Bool)

(assert (=> b!246082 (= e!159644 e!159647)))

(declare-fun c!41127 () Bool)

(assert (=> b!246082 (= c!41127 ((_ is MissingVacant!1101) lt!123290))))

(declare-fun b!246083 () Bool)

(declare-fun res!120677 () Bool)

(assert (=> b!246083 (=> (not res!120677) (not e!159646))))

(assert (=> b!246083 (= res!120677 call!23004)))

(assert (=> b!246083 (= e!159647 e!159646)))

(declare-fun b!246084 () Bool)

(assert (=> b!246084 (= e!159646 (not call!23003))))

(declare-fun bm!23001 () Bool)

(assert (=> bm!23001 (= call!23003 (arrayContainsKey!0 (_keys!6662 thiss!1504) key!932 #b00000000000000000000000000000000))))

(assert (= (and d!60207 c!41126) b!246081))

(assert (= (and d!60207 (not c!41126)) b!246082))

(assert (= (and b!246081 res!120678) b!246077))

(assert (= (and b!246077 res!120679) b!246079))

(assert (= (and b!246082 c!41127) b!246083))

(assert (= (and b!246082 (not c!41127)) b!246080))

(assert (= (and b!246083 res!120677) b!246078))

(assert (= (and b!246078 res!120676) b!246084))

(assert (= (or b!246081 b!246083) bm!23000))

(assert (= (or b!246079 b!246084) bm!23001))

(assert (=> bm!23001 m!263195))

(declare-fun m!263515 () Bool)

(assert (=> bm!23000 m!263515))

(assert (=> d!60207 m!263237))

(declare-fun m!263517 () Bool)

(assert (=> b!246078 m!263517))

(declare-fun m!263519 () Bool)

(assert (=> b!246077 m!263519))

(assert (=> d!60149 d!60207))

(assert (=> d!60149 d!60155))

(declare-fun d!60209 () Bool)

(declare-fun e!159648 () Bool)

(assert (=> d!60209 e!159648))

(declare-fun res!120681 () Bool)

(assert (=> d!60209 (=> (not res!120681) (not e!159648))))

(declare-fun lt!123294 () ListLongMap!3713)

(assert (=> d!60209 (= res!120681 (contains!1775 lt!123294 (_1!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504)))))))

(declare-fun lt!123292 () List!3692)

(assert (=> d!60209 (= lt!123294 (ListLongMap!3714 lt!123292))))

(declare-fun lt!123291 () Unit!7582)

(declare-fun lt!123293 () Unit!7582)

(assert (=> d!60209 (= lt!123291 lt!123293)))

(assert (=> d!60209 (= (getValueByKey!288 lt!123292 (_1!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504)))))))

(assert (=> d!60209 (= lt!123293 (lemmaContainsTupThenGetReturnValue!157 lt!123292 (_1!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504)))))))

(assert (=> d!60209 (= lt!123292 (insertStrictlySorted!159 (toList!1872 lt!123195) (_1!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504)))))))

(assert (=> d!60209 (= (+!653 lt!123195 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))) lt!123294)))

(declare-fun b!246085 () Bool)

(declare-fun res!120680 () Bool)

(assert (=> b!246085 (=> (not res!120680) (not e!159648))))

(assert (=> b!246085 (= res!120680 (= (getValueByKey!288 (toList!1872 lt!123294) (_1!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))))))))

(declare-fun b!246086 () Bool)

(assert (=> b!246086 (= e!159648 (contains!1778 (toList!1872 lt!123294) (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))))))

(assert (= (and d!60209 res!120681) b!246085))

(assert (= (and b!246085 res!120680) b!246086))

(declare-fun m!263521 () Bool)

(assert (=> d!60209 m!263521))

(declare-fun m!263523 () Bool)

(assert (=> d!60209 m!263523))

(declare-fun m!263525 () Bool)

(assert (=> d!60209 m!263525))

(declare-fun m!263527 () Bool)

(assert (=> d!60209 m!263527))

(declare-fun m!263529 () Bool)

(assert (=> b!246085 m!263529))

(declare-fun m!263531 () Bool)

(assert (=> b!246086 m!263531))

(assert (=> b!245818 d!60209))

(declare-fun d!60211 () Bool)

(declare-fun e!159649 () Bool)

(assert (=> d!60211 e!159649))

(declare-fun res!120683 () Bool)

(assert (=> d!60211 (=> (not res!120683) (not e!159649))))

(declare-fun lt!123298 () ListLongMap!3713)

(assert (=> d!60211 (= res!120683 (contains!1775 lt!123298 (_1!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504)))))))

(declare-fun lt!123296 () List!3692)

(assert (=> d!60211 (= lt!123298 (ListLongMap!3714 lt!123296))))

(declare-fun lt!123295 () Unit!7582)

(declare-fun lt!123297 () Unit!7582)

(assert (=> d!60211 (= lt!123295 lt!123297)))

(assert (=> d!60211 (= (getValueByKey!288 lt!123296 (_1!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504)))))))

(assert (=> d!60211 (= lt!123297 (lemmaContainsTupThenGetReturnValue!157 lt!123296 (_1!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504)))))))

(assert (=> d!60211 (= lt!123296 (insertStrictlySorted!159 (toList!1872 lt!123179) (_1!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504)))))))

(assert (=> d!60211 (= (+!653 lt!123179 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))) lt!123298)))

(declare-fun b!246087 () Bool)

(declare-fun res!120682 () Bool)

(assert (=> b!246087 (=> (not res!120682) (not e!159649))))

(assert (=> b!246087 (= res!120682 (= (getValueByKey!288 (toList!1872 lt!123298) (_1!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))))))))

(declare-fun b!246088 () Bool)

(assert (=> b!246088 (= e!159649 (contains!1778 (toList!1872 lt!123298) (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))))))

(assert (= (and d!60211 res!120683) b!246087))

(assert (= (and b!246087 res!120682) b!246088))

(declare-fun m!263533 () Bool)

(assert (=> d!60211 m!263533))

(declare-fun m!263535 () Bool)

(assert (=> d!60211 m!263535))

(declare-fun m!263537 () Bool)

(assert (=> d!60211 m!263537))

(declare-fun m!263539 () Bool)

(assert (=> d!60211 m!263539))

(declare-fun m!263541 () Bool)

(assert (=> b!246087 m!263541))

(declare-fun m!263543 () Bool)

(assert (=> b!246088 m!263543))

(assert (=> b!245818 d!60211))

(declare-fun d!60213 () Bool)

(assert (=> d!60213 (= (apply!231 (+!653 lt!123179 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))) lt!123183) (get!2959 (getValueByKey!288 (toList!1872 (+!653 lt!123179 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504)))) lt!123183)))))

(declare-fun bs!8900 () Bool)

(assert (= bs!8900 d!60213))

(declare-fun m!263545 () Bool)

(assert (=> bs!8900 m!263545))

(assert (=> bs!8900 m!263545))

(declare-fun m!263547 () Bool)

(assert (=> bs!8900 m!263547))

(assert (=> b!245818 d!60213))

(declare-fun d!60215 () Bool)

(assert (=> d!60215 (= (apply!231 lt!123193 lt!123178) (get!2959 (getValueByKey!288 (toList!1872 lt!123193) lt!123178)))))

(declare-fun bs!8901 () Bool)

(assert (= bs!8901 d!60215))

(declare-fun m!263549 () Bool)

(assert (=> bs!8901 m!263549))

(assert (=> bs!8901 m!263549))

(declare-fun m!263551 () Bool)

(assert (=> bs!8901 m!263551))

(assert (=> b!245818 d!60215))

(declare-fun d!60217 () Bool)

(assert (=> d!60217 (= (apply!231 lt!123179 lt!123183) (get!2959 (getValueByKey!288 (toList!1872 lt!123179) lt!123183)))))

(declare-fun bs!8902 () Bool)

(assert (= bs!8902 d!60217))

(declare-fun m!263553 () Bool)

(assert (=> bs!8902 m!263553))

(assert (=> bs!8902 m!263553))

(declare-fun m!263555 () Bool)

(assert (=> bs!8902 m!263555))

(assert (=> b!245818 d!60217))

(declare-fun d!60219 () Bool)

(declare-fun e!159650 () Bool)

(assert (=> d!60219 e!159650))

(declare-fun res!120685 () Bool)

(assert (=> d!60219 (=> (not res!120685) (not e!159650))))

(declare-fun lt!123302 () ListLongMap!3713)

(assert (=> d!60219 (= res!120685 (contains!1775 lt!123302 (_1!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504)))))))

(declare-fun lt!123300 () List!3692)

(assert (=> d!60219 (= lt!123302 (ListLongMap!3714 lt!123300))))

(declare-fun lt!123299 () Unit!7582)

(declare-fun lt!123301 () Unit!7582)

(assert (=> d!60219 (= lt!123299 lt!123301)))

(assert (=> d!60219 (= (getValueByKey!288 lt!123300 (_1!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504)))))))

(assert (=> d!60219 (= lt!123301 (lemmaContainsTupThenGetReturnValue!157 lt!123300 (_1!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504)))))))

(assert (=> d!60219 (= lt!123300 (insertStrictlySorted!159 (toList!1872 lt!123193) (_1!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504)))))))

(assert (=> d!60219 (= (+!653 lt!123193 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))) lt!123302)))

(declare-fun b!246089 () Bool)

(declare-fun res!120684 () Bool)

(assert (=> b!246089 (=> (not res!120684) (not e!159650))))

(assert (=> b!246089 (= res!120684 (= (getValueByKey!288 (toList!1872 lt!123302) (_1!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))))))))

(declare-fun b!246090 () Bool)

(assert (=> b!246090 (= e!159650 (contains!1778 (toList!1872 lt!123302) (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))))))

(assert (= (and d!60219 res!120685) b!246089))

(assert (= (and b!246089 res!120684) b!246090))

(declare-fun m!263557 () Bool)

(assert (=> d!60219 m!263557))

(declare-fun m!263559 () Bool)

(assert (=> d!60219 m!263559))

(declare-fun m!263561 () Bool)

(assert (=> d!60219 m!263561))

(declare-fun m!263563 () Bool)

(assert (=> d!60219 m!263563))

(declare-fun m!263565 () Bool)

(assert (=> b!246089 m!263565))

(declare-fun m!263567 () Bool)

(assert (=> b!246090 m!263567))

(assert (=> b!245818 d!60219))

(declare-fun d!60221 () Bool)

(assert (=> d!60221 (= (apply!231 (+!653 lt!123195 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))) lt!123192) (get!2959 (getValueByKey!288 (toList!1872 (+!653 lt!123195 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504)))) lt!123192)))))

(declare-fun bs!8903 () Bool)

(assert (= bs!8903 d!60221))

(declare-fun m!263569 () Bool)

(assert (=> bs!8903 m!263569))

(assert (=> bs!8903 m!263569))

(declare-fun m!263571 () Bool)

(assert (=> bs!8903 m!263571))

(assert (=> b!245818 d!60221))

(declare-fun d!60223 () Bool)

(assert (=> d!60223 (= (apply!231 lt!123195 lt!123192) (get!2959 (getValueByKey!288 (toList!1872 lt!123195) lt!123192)))))

(declare-fun bs!8904 () Bool)

(assert (= bs!8904 d!60223))

(declare-fun m!263573 () Bool)

(assert (=> bs!8904 m!263573))

(assert (=> bs!8904 m!263573))

(declare-fun m!263575 () Bool)

(assert (=> bs!8904 m!263575))

(assert (=> b!245818 d!60223))

(declare-fun d!60225 () Bool)

(assert (=> d!60225 (= (apply!231 (+!653 lt!123195 (tuple2!4787 lt!123175 (minValue!4388 thiss!1504))) lt!123192) (apply!231 lt!123195 lt!123192))))

(declare-fun lt!123305 () Unit!7582)

(declare-fun choose!1161 (ListLongMap!3713 (_ BitVec 64) V!8211 (_ BitVec 64)) Unit!7582)

(assert (=> d!60225 (= lt!123305 (choose!1161 lt!123195 lt!123175 (minValue!4388 thiss!1504) lt!123192))))

(declare-fun e!159653 () Bool)

(assert (=> d!60225 e!159653))

(declare-fun res!120688 () Bool)

(assert (=> d!60225 (=> (not res!120688) (not e!159653))))

(assert (=> d!60225 (= res!120688 (contains!1775 lt!123195 lt!123192))))

(assert (=> d!60225 (= (addApplyDifferent!207 lt!123195 lt!123175 (minValue!4388 thiss!1504) lt!123192) lt!123305)))

(declare-fun b!246094 () Bool)

(assert (=> b!246094 (= e!159653 (not (= lt!123192 lt!123175)))))

(assert (= (and d!60225 res!120688) b!246094))

(assert (=> d!60225 m!263331))

(assert (=> d!60225 m!263341))

(declare-fun m!263577 () Bool)

(assert (=> d!60225 m!263577))

(declare-fun m!263579 () Bool)

(assert (=> d!60225 m!263579))

(assert (=> d!60225 m!263345))

(assert (=> d!60225 m!263331))

(assert (=> b!245818 d!60225))

(declare-fun d!60227 () Bool)

(assert (=> d!60227 (= (apply!231 (+!653 lt!123193 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))) lt!123178) (get!2959 (getValueByKey!288 (toList!1872 (+!653 lt!123193 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504)))) lt!123178)))))

(declare-fun bs!8905 () Bool)

(assert (= bs!8905 d!60227))

(declare-fun m!263581 () Bool)

(assert (=> bs!8905 m!263581))

(assert (=> bs!8905 m!263581))

(declare-fun m!263583 () Bool)

(assert (=> bs!8905 m!263583))

(assert (=> b!245818 d!60227))

(declare-fun d!60229 () Bool)

(assert (=> d!60229 (= (apply!231 (+!653 lt!123179 (tuple2!4787 lt!123190 (zeroValue!4388 thiss!1504))) lt!123183) (apply!231 lt!123179 lt!123183))))

(declare-fun lt!123306 () Unit!7582)

(assert (=> d!60229 (= lt!123306 (choose!1161 lt!123179 lt!123190 (zeroValue!4388 thiss!1504) lt!123183))))

(declare-fun e!159654 () Bool)

(assert (=> d!60229 e!159654))

(declare-fun res!120689 () Bool)

(assert (=> d!60229 (=> (not res!120689) (not e!159654))))

(assert (=> d!60229 (= res!120689 (contains!1775 lt!123179 lt!123183))))

(assert (=> d!60229 (= (addApplyDifferent!207 lt!123179 lt!123190 (zeroValue!4388 thiss!1504) lt!123183) lt!123306)))

(declare-fun b!246095 () Bool)

(assert (=> b!246095 (= e!159654 (not (= lt!123183 lt!123190)))))

(assert (= (and d!60229 res!120689) b!246095))

(assert (=> d!60229 m!263349))

(assert (=> d!60229 m!263353))

(declare-fun m!263585 () Bool)

(assert (=> d!60229 m!263585))

(declare-fun m!263587 () Bool)

(assert (=> d!60229 m!263587))

(assert (=> d!60229 m!263329))

(assert (=> d!60229 m!263349))

(assert (=> b!245818 d!60229))

(declare-fun d!60231 () Bool)

(assert (=> d!60231 (= (apply!231 (+!653 lt!123193 (tuple2!4787 lt!123184 (minValue!4388 thiss!1504))) lt!123178) (apply!231 lt!123193 lt!123178))))

(declare-fun lt!123307 () Unit!7582)

(assert (=> d!60231 (= lt!123307 (choose!1161 lt!123193 lt!123184 (minValue!4388 thiss!1504) lt!123178))))

(declare-fun e!159655 () Bool)

(assert (=> d!60231 e!159655))

(declare-fun res!120690 () Bool)

(assert (=> d!60231 (=> (not res!120690) (not e!159655))))

(assert (=> d!60231 (= res!120690 (contains!1775 lt!123193 lt!123178))))

(assert (=> d!60231 (= (addApplyDifferent!207 lt!123193 lt!123184 (minValue!4388 thiss!1504) lt!123178) lt!123307)))

(declare-fun b!246096 () Bool)

(assert (=> b!246096 (= e!159655 (not (= lt!123178 lt!123184)))))

(assert (= (and d!60231 res!120690) b!246096))

(assert (=> d!60231 m!263335))

(assert (=> d!60231 m!263337))

(declare-fun m!263589 () Bool)

(assert (=> d!60231 m!263589))

(declare-fun m!263591 () Bool)

(assert (=> d!60231 m!263591))

(assert (=> d!60231 m!263347))

(assert (=> d!60231 m!263335))

(assert (=> b!245818 d!60231))

(declare-fun d!60233 () Bool)

(declare-fun e!159656 () Bool)

(assert (=> d!60233 e!159656))

(declare-fun res!120691 () Bool)

(assert (=> d!60233 (=> res!120691 e!159656)))

(declare-fun lt!123311 () Bool)

(assert (=> d!60233 (= res!120691 (not lt!123311))))

(declare-fun lt!123309 () Bool)

(assert (=> d!60233 (= lt!123311 lt!123309)))

(declare-fun lt!123308 () Unit!7582)

(declare-fun e!159657 () Unit!7582)

(assert (=> d!60233 (= lt!123308 e!159657)))

(declare-fun c!41128 () Bool)

(assert (=> d!60233 (= c!41128 lt!123309)))

(assert (=> d!60233 (= lt!123309 (containsKey!280 (toList!1872 (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))) lt!123187))))

(assert (=> d!60233 (= (contains!1775 (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))) lt!123187) lt!123311)))

(declare-fun b!246097 () Bool)

(declare-fun lt!123310 () Unit!7582)

(assert (=> b!246097 (= e!159657 lt!123310)))

(assert (=> b!246097 (= lt!123310 (lemmaContainsKeyImpliesGetValueByKeyDefined!229 (toList!1872 (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))) lt!123187))))

(assert (=> b!246097 (isDefined!230 (getValueByKey!288 (toList!1872 (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))) lt!123187))))

(declare-fun b!246098 () Bool)

(declare-fun Unit!7596 () Unit!7582)

(assert (=> b!246098 (= e!159657 Unit!7596)))

(declare-fun b!246099 () Bool)

(assert (=> b!246099 (= e!159656 (isDefined!230 (getValueByKey!288 (toList!1872 (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))) lt!123187)))))

(assert (= (and d!60233 c!41128) b!246097))

(assert (= (and d!60233 (not c!41128)) b!246098))

(assert (= (and d!60233 (not res!120691)) b!246099))

(declare-fun m!263593 () Bool)

(assert (=> d!60233 m!263593))

(declare-fun m!263595 () Bool)

(assert (=> b!246097 m!263595))

(declare-fun m!263597 () Bool)

(assert (=> b!246097 m!263597))

(assert (=> b!246097 m!263597))

(declare-fun m!263599 () Bool)

(assert (=> b!246097 m!263599))

(assert (=> b!246099 m!263597))

(assert (=> b!246099 m!263597))

(assert (=> b!246099 m!263599))

(assert (=> b!245818 d!60233))

(assert (=> b!245818 d!60181))

(declare-fun d!60235 () Bool)

(declare-fun e!159658 () Bool)

(assert (=> d!60235 e!159658))

(declare-fun res!120693 () Bool)

(assert (=> d!60235 (=> (not res!120693) (not e!159658))))

(declare-fun lt!123315 () ListLongMap!3713)

(assert (=> d!60235 (= res!120693 (contains!1775 lt!123315 (_1!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))))))

(declare-fun lt!123313 () List!3692)

(assert (=> d!60235 (= lt!123315 (ListLongMap!3714 lt!123313))))

(declare-fun lt!123312 () Unit!7582)

(declare-fun lt!123314 () Unit!7582)

(assert (=> d!60235 (= lt!123312 lt!123314)))

(assert (=> d!60235 (= (getValueByKey!288 lt!123313 (_1!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))))))

(assert (=> d!60235 (= lt!123314 (lemmaContainsTupThenGetReturnValue!157 lt!123313 (_1!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))))))

(assert (=> d!60235 (= lt!123313 (insertStrictlySorted!159 (toList!1872 lt!123177) (_1!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))))))

(assert (=> d!60235 (= (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))) lt!123315)))

(declare-fun b!246100 () Bool)

(declare-fun res!120692 () Bool)

(assert (=> b!246100 (=> (not res!120692) (not e!159658))))

(assert (=> b!246100 (= res!120692 (= (getValueByKey!288 (toList!1872 lt!123315) (_1!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))))))))

(declare-fun b!246101 () Bool)

(assert (=> b!246101 (= e!159658 (contains!1778 (toList!1872 lt!123315) (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))))))

(assert (= (and d!60235 res!120693) b!246100))

(assert (= (and b!246100 res!120692) b!246101))

(declare-fun m!263601 () Bool)

(assert (=> d!60235 m!263601))

(declare-fun m!263603 () Bool)

(assert (=> d!60235 m!263603))

(declare-fun m!263605 () Bool)

(assert (=> d!60235 m!263605))

(declare-fun m!263607 () Bool)

(assert (=> d!60235 m!263607))

(declare-fun m!263609 () Bool)

(assert (=> b!246100 m!263609))

(declare-fun m!263611 () Bool)

(assert (=> b!246101 m!263611))

(assert (=> b!245818 d!60235))

(declare-fun d!60237 () Bool)

(assert (=> d!60237 (contains!1775 (+!653 lt!123177 (tuple2!4787 lt!123181 (zeroValue!4388 thiss!1504))) lt!123187)))

(declare-fun lt!123318 () Unit!7582)

(declare-fun choose!1162 (ListLongMap!3713 (_ BitVec 64) V!8211 (_ BitVec 64)) Unit!7582)

(assert (=> d!60237 (= lt!123318 (choose!1162 lt!123177 lt!123181 (zeroValue!4388 thiss!1504) lt!123187))))

(assert (=> d!60237 (contains!1775 lt!123177 lt!123187)))

(assert (=> d!60237 (= (addStillContains!207 lt!123177 lt!123181 (zeroValue!4388 thiss!1504) lt!123187) lt!123318)))

(declare-fun bs!8906 () Bool)

(assert (= bs!8906 d!60237))

(assert (=> bs!8906 m!263327))

(assert (=> bs!8906 m!263327))

(assert (=> bs!8906 m!263351))

(declare-fun m!263613 () Bool)

(assert (=> bs!8906 m!263613))

(declare-fun m!263615 () Bool)

(assert (=> bs!8906 m!263615))

(assert (=> b!245818 d!60237))

(declare-fun d!60239 () Bool)

(declare-fun lt!123321 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!162 (List!3693) (InoxSet (_ BitVec 64)))

(assert (=> d!60239 (= lt!123321 (select (content!162 Nil!3690) (select (arr!5764 lt!123080) #b00000000000000000000000000000000)))))

(declare-fun e!159664 () Bool)

(assert (=> d!60239 (= lt!123321 e!159664)))

(declare-fun res!120699 () Bool)

(assert (=> d!60239 (=> (not res!120699) (not e!159664))))

(assert (=> d!60239 (= res!120699 ((_ is Cons!3689) Nil!3690))))

(assert (=> d!60239 (= (contains!1777 Nil!3690 (select (arr!5764 lt!123080) #b00000000000000000000000000000000)) lt!123321)))

(declare-fun b!246107 () Bool)

(declare-fun e!159663 () Bool)

(assert (=> b!246107 (= e!159664 e!159663)))

(declare-fun res!120698 () Bool)

(assert (=> b!246107 (=> res!120698 e!159663)))

(assert (=> b!246107 (= res!120698 (= (h!4346 Nil!3690) (select (arr!5764 lt!123080) #b00000000000000000000000000000000)))))

(declare-fun b!246108 () Bool)

(assert (=> b!246108 (= e!159663 (contains!1777 (t!8716 Nil!3690) (select (arr!5764 lt!123080) #b00000000000000000000000000000000)))))

(assert (= (and d!60239 res!120699) b!246107))

(assert (= (and b!246107 (not res!120698)) b!246108))

(declare-fun m!263617 () Bool)

(assert (=> d!60239 m!263617))

(assert (=> d!60239 m!263393))

(declare-fun m!263619 () Bool)

(assert (=> d!60239 m!263619))

(assert (=> b!246108 m!263393))

(declare-fun m!263621 () Bool)

(assert (=> b!246108 m!263621))

(assert (=> b!245924 d!60239))

(declare-fun b!246117 () Bool)

(declare-fun res!120709 () Bool)

(declare-fun e!159667 () Bool)

(assert (=> b!246117 (=> (not res!120709) (not e!159667))))

(assert (=> b!246117 (= res!120709 (and (= (size!6105 (_values!4530 thiss!1504)) (bvadd (mask!10661 thiss!1504) #b00000000000000000000000000000001)) (= (size!6106 (_keys!6662 thiss!1504)) (size!6105 (_values!4530 thiss!1504))) (bvsge (_size!1867 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1867 thiss!1504) (bvadd (mask!10661 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun d!60241 () Bool)

(declare-fun res!120711 () Bool)

(assert (=> d!60241 (=> (not res!120711) (not e!159667))))

(assert (=> d!60241 (= res!120711 (validMask!0 (mask!10661 thiss!1504)))))

(assert (=> d!60241 (= (simpleValid!253 thiss!1504) e!159667)))

(declare-fun b!246118 () Bool)

(declare-fun res!120708 () Bool)

(assert (=> b!246118 (=> (not res!120708) (not e!159667))))

(declare-fun size!6109 (LongMapFixedSize!3636) (_ BitVec 32))

(assert (=> b!246118 (= res!120708 (bvsge (size!6109 thiss!1504) (_size!1867 thiss!1504)))))

(declare-fun b!246119 () Bool)

(declare-fun res!120710 () Bool)

(assert (=> b!246119 (=> (not res!120710) (not e!159667))))

(assert (=> b!246119 (= res!120710 (= (size!6109 thiss!1504) (bvadd (_size!1867 thiss!1504) (bvsdiv (bvadd (extraKeys!4284 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(declare-fun b!246120 () Bool)

(assert (=> b!246120 (= e!159667 (and (bvsge (extraKeys!4284 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4284 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1867 thiss!1504) #b00000000000000000000000000000000)))))

(assert (= (and d!60241 res!120711) b!246117))

(assert (= (and b!246117 res!120709) b!246118))

(assert (= (and b!246118 res!120708) b!246119))

(assert (= (and b!246119 res!120710) b!246120))

(assert (=> d!60241 m!263235))

(declare-fun m!263623 () Bool)

(assert (=> b!246118 m!263623))

(assert (=> b!246119 m!263623))

(assert (=> d!60167 d!60241))

(declare-fun d!60243 () Bool)

(assert (=> d!60243 (= (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) index!297)) (and (not (= (select (arr!5764 (_keys!6662 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5764 (_keys!6662 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!245891 d!60243))

(declare-fun d!60245 () Bool)

(declare-fun e!159668 () Bool)

(assert (=> d!60245 e!159668))

(declare-fun res!120713 () Bool)

(assert (=> d!60245 (=> (not res!120713) (not e!159668))))

(declare-fun lt!123325 () ListLongMap!3713)

(assert (=> d!60245 (= res!120713 (contains!1775 lt!123325 (_1!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))))))

(declare-fun lt!123323 () List!3692)

(assert (=> d!60245 (= lt!123325 (ListLongMap!3714 lt!123323))))

(declare-fun lt!123322 () Unit!7582)

(declare-fun lt!123324 () Unit!7582)

(assert (=> d!60245 (= lt!123322 lt!123324)))

(assert (=> d!60245 (= (getValueByKey!288 lt!123323 (_1!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))))))

(assert (=> d!60245 (= lt!123324 (lemmaContainsTupThenGetReturnValue!157 lt!123323 (_1!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))))))

(assert (=> d!60245 (= lt!123323 (insertStrictlySorted!159 (toList!1872 call!22971) (_1!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))) (_2!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))))))

(assert (=> d!60245 (= (+!653 call!22971 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))) lt!123325)))

(declare-fun b!246121 () Bool)

(declare-fun res!120712 () Bool)

(assert (=> b!246121 (=> (not res!120712) (not e!159668))))

(assert (=> b!246121 (= res!120712 (= (getValueByKey!288 (toList!1872 lt!123325) (_1!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504)))) (Some!293 (_2!2403 (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))))))

(declare-fun b!246122 () Bool)

(assert (=> b!246122 (= e!159668 (contains!1778 (toList!1872 lt!123325) (tuple2!4787 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4388 thiss!1504))))))

(assert (= (and d!60245 res!120713) b!246121))

(assert (= (and b!246121 res!120712) b!246122))

(declare-fun m!263625 () Bool)

(assert (=> d!60245 m!263625))

(declare-fun m!263627 () Bool)

(assert (=> d!60245 m!263627))

(declare-fun m!263629 () Bool)

(assert (=> d!60245 m!263629))

(declare-fun m!263631 () Bool)

(assert (=> d!60245 m!263631))

(declare-fun m!263633 () Bool)

(assert (=> b!246121 m!263633))

(declare-fun m!263635 () Bool)

(assert (=> b!246122 m!263635))

(assert (=> b!245817 d!60245))

(assert (=> b!245769 d!60173))

(assert (=> b!245769 d!60175))

(declare-fun d!60247 () Bool)

(assert (=> d!60247 (= (validKeyInArray!0 (select (arr!5764 lt!123080) #b00000000000000000000000000000000)) (and (not (= (select (arr!5764 lt!123080) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5764 lt!123080) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!245910 d!60247))

(declare-fun d!60249 () Bool)

(assert (=> d!60249 (= (arrayCountValidKeys!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6662 thiss!1504) #b00000000000000000000000000000000 (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!60249 true))

(declare-fun _$84!21 () Unit!7582)

(assert (=> d!60249 (= (choose!1 (_keys!6662 thiss!1504) index!297 key!932) _$84!21)))

(declare-fun bs!8907 () Bool)

(assert (= bs!8907 d!60249))

(assert (=> bs!8907 m!263227))

(assert (=> bs!8907 m!263385))

(assert (=> bs!8907 m!263229))

(assert (=> d!60151 d!60249))

(declare-fun bm!23002 () Bool)

(declare-fun call!23005 () (_ BitVec 32))

(assert (=> bm!23002 (= call!23005 (arrayCountValidKeys!0 (_keys!6662 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!246123 () Bool)

(declare-fun e!159670 () (_ BitVec 32))

(assert (=> b!246123 (= e!159670 call!23005)))

(declare-fun b!246125 () Bool)

(assert (=> b!246125 (= e!159670 (bvadd #b00000000000000000000000000000001 call!23005))))

(declare-fun b!246126 () Bool)

(declare-fun e!159669 () (_ BitVec 32))

(assert (=> b!246126 (= e!159669 e!159670)))

(declare-fun c!41129 () Bool)

(assert (=> b!246126 (= c!41129 (validKeyInArray!0 (select (arr!5764 (_keys!6662 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!60251 () Bool)

(declare-fun lt!123326 () (_ BitVec 32))

(assert (=> d!60251 (and (bvsge lt!123326 #b00000000000000000000000000000000) (bvsle lt!123326 (bvsub (size!6106 (_keys!6662 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!60251 (= lt!123326 e!159669)))

(declare-fun c!41130 () Bool)

(assert (=> d!60251 (= c!41130 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60251 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6106 (_keys!6662 thiss!1504)) (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60251 (= (arrayCountValidKeys!0 (_keys!6662 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))) lt!123326)))

(declare-fun b!246124 () Bool)

(assert (=> b!246124 (= e!159669 #b00000000000000000000000000000000)))

(assert (= (and d!60251 c!41130) b!246124))

(assert (= (and d!60251 (not c!41130)) b!246126))

(assert (= (and b!246126 c!41129) b!246125))

(assert (= (and b!246126 (not c!41129)) b!246123))

(assert (= (or b!246125 b!246123) bm!23002))

(declare-fun m!263637 () Bool)

(assert (=> bm!23002 m!263637))

(assert (=> b!246126 m!263431))

(assert (=> b!246126 m!263431))

(declare-fun m!263639 () Bool)

(assert (=> b!246126 m!263639))

(assert (=> bm!22982 d!60251))

(declare-fun d!60253 () Bool)

(declare-fun e!159671 () Bool)

(assert (=> d!60253 e!159671))

(declare-fun res!120714 () Bool)

(assert (=> d!60253 (=> res!120714 e!159671)))

(declare-fun lt!123330 () Bool)

(assert (=> d!60253 (= res!120714 (not lt!123330))))

(declare-fun lt!123328 () Bool)

(assert (=> d!60253 (= lt!123330 lt!123328)))

(declare-fun lt!123327 () Unit!7582)

(declare-fun e!159672 () Unit!7582)

(assert (=> d!60253 (= lt!123327 e!159672)))

(declare-fun c!41131 () Bool)

(assert (=> d!60253 (= c!41131 lt!123328)))

(assert (=> d!60253 (= lt!123328 (containsKey!280 (toList!1872 lt!123180) (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!60253 (= (contains!1775 lt!123180 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)) lt!123330)))

(declare-fun b!246127 () Bool)

(declare-fun lt!123329 () Unit!7582)

(assert (=> b!246127 (= e!159672 lt!123329)))

(assert (=> b!246127 (= lt!123329 (lemmaContainsKeyImpliesGetValueByKeyDefined!229 (toList!1872 lt!123180) (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!246127 (isDefined!230 (getValueByKey!288 (toList!1872 lt!123180) (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!246128 () Bool)

(declare-fun Unit!7597 () Unit!7582)

(assert (=> b!246128 (= e!159672 Unit!7597)))

(declare-fun b!246129 () Bool)

(assert (=> b!246129 (= e!159671 (isDefined!230 (getValueByKey!288 (toList!1872 lt!123180) (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!60253 c!41131) b!246127))

(assert (= (and d!60253 (not c!41131)) b!246128))

(assert (= (and d!60253 (not res!120714)) b!246129))

(assert (=> d!60253 m!263297))

(declare-fun m!263641 () Bool)

(assert (=> d!60253 m!263641))

(assert (=> b!246127 m!263297))

(declare-fun m!263643 () Bool)

(assert (=> b!246127 m!263643))

(assert (=> b!246127 m!263297))

(declare-fun m!263645 () Bool)

(assert (=> b!246127 m!263645))

(assert (=> b!246127 m!263645))

(declare-fun m!263647 () Bool)

(assert (=> b!246127 m!263647))

(assert (=> b!246129 m!263297))

(assert (=> b!246129 m!263645))

(assert (=> b!246129 m!263645))

(assert (=> b!246129 m!263647))

(assert (=> b!245821 d!60253))

(assert (=> b!245822 d!60187))

(declare-fun bm!23003 () Bool)

(declare-fun call!23006 () (_ BitVec 32))

(assert (=> bm!23003 (= call!23006 (arrayCountValidKeys!0 lt!123080 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun b!246130 () Bool)

(declare-fun e!159674 () (_ BitVec 32))

(assert (=> b!246130 (= e!159674 call!23006)))

(declare-fun b!246132 () Bool)

(assert (=> b!246132 (= e!159674 (bvadd #b00000000000000000000000000000001 call!23006))))

(declare-fun b!246133 () Bool)

(declare-fun e!159673 () (_ BitVec 32))

(assert (=> b!246133 (= e!159673 e!159674)))

(declare-fun c!41132 () Bool)

(assert (=> b!246133 (= c!41132 (validKeyInArray!0 (select (arr!5764 lt!123080) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun d!60255 () Bool)

(declare-fun lt!123331 () (_ BitVec 32))

(assert (=> d!60255 (and (bvsge lt!123331 #b00000000000000000000000000000000) (bvsle lt!123331 (bvsub (size!6106 lt!123080) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> d!60255 (= lt!123331 e!159673)))

(declare-fun c!41133 () Bool)

(assert (=> d!60255 (= c!41133 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))))))

(assert (=> d!60255 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6106 (_keys!6662 thiss!1504)) (size!6106 lt!123080)))))

(assert (=> d!60255 (= (arrayCountValidKeys!0 lt!123080 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6106 (_keys!6662 thiss!1504))) lt!123331)))

(declare-fun b!246131 () Bool)

(assert (=> b!246131 (= e!159673 #b00000000000000000000000000000000)))

(assert (= (and d!60255 c!41133) b!246131))

(assert (= (and d!60255 (not c!41133)) b!246133))

(assert (= (and b!246133 c!41132) b!246132))

(assert (= (and b!246133 (not c!41132)) b!246130))

(assert (= (or b!246132 b!246130) bm!23003))

(declare-fun m!263649 () Bool)

(assert (=> bm!23003 m!263649))

(assert (=> b!246133 m!263507))

(assert (=> b!246133 m!263507))

(assert (=> b!246133 m!263513))

(assert (=> bm!22983 d!60255))

(declare-fun d!60257 () Bool)

(assert (=> d!60257 (= (apply!231 lt!123180 (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000)) (get!2959 (getValueByKey!288 (toList!1872 lt!123180) (select (arr!5764 (_keys!6662 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!8908 () Bool)

(assert (= bs!8908 d!60257))

(assert (=> bs!8908 m!263297))

(assert (=> bs!8908 m!263645))

(assert (=> bs!8908 m!263645))

(declare-fun m!263651 () Bool)

(assert (=> bs!8908 m!263651))

(assert (=> b!245820 d!60257))

(declare-fun d!60259 () Bool)

(declare-fun c!41136 () Bool)

(assert (=> d!60259 (= c!41136 ((_ is ValueCellFull!2868) (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!159677 () V!8211)

(assert (=> d!60259 (= (get!2958 (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!569 (defaultEntry!4547 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!159677)))

(declare-fun b!246138 () Bool)

(declare-fun get!2960 (ValueCell!2868 V!8211) V!8211)

(assert (=> b!246138 (= e!159677 (get!2960 (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!569 (defaultEntry!4547 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!246139 () Bool)

(declare-fun get!2961 (ValueCell!2868 V!8211) V!8211)

(assert (=> b!246139 (= e!159677 (get!2961 (select (arr!5763 (_values!4530 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!569 (defaultEntry!4547 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60259 c!41136) b!246138))

(assert (= (and d!60259 (not c!41136)) b!246139))

(assert (=> b!246138 m!263313))

(assert (=> b!246138 m!263311))

(declare-fun m!263653 () Bool)

(assert (=> b!246138 m!263653))

(assert (=> b!246139 m!263313))

(assert (=> b!246139 m!263311))

(declare-fun m!263655 () Bool)

(assert (=> b!246139 m!263655))

(assert (=> b!245820 d!60259))

(declare-fun d!60261 () Bool)

(declare-fun res!120719 () Bool)

(declare-fun e!159682 () Bool)

(assert (=> d!60261 (=> res!120719 e!159682)))

(assert (=> d!60261 (= res!120719 (and ((_ is Cons!3688) (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))) (= (_1!2403 (h!4345 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))))) key!932)))))

(assert (=> d!60261 (= (containsKey!280 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))) key!932) e!159682)))

(declare-fun b!246144 () Bool)

(declare-fun e!159683 () Bool)

(assert (=> b!246144 (= e!159682 e!159683)))

(declare-fun res!120720 () Bool)

(assert (=> b!246144 (=> (not res!120720) (not e!159683))))

(assert (=> b!246144 (= res!120720 (and (or (not ((_ is Cons!3688) (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))))) (bvsle (_1!2403 (h!4345 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))))) key!932)) ((_ is Cons!3688) (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))) (bvslt (_1!2403 (h!4345 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504))))) key!932)))))

(declare-fun b!246145 () Bool)

(assert (=> b!246145 (= e!159683 (containsKey!280 (t!8715 (toList!1872 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)))) key!932))))

(assert (= (and d!60261 (not res!120719)) b!246144))

(assert (= (and b!246144 res!120720) b!246145))

(declare-fun m!263657 () Bool)

(assert (=> b!246145 m!263657))

(assert (=> d!60139 d!60261))

(assert (=> b!245926 d!60247))

(assert (=> b!245927 d!60247))

(declare-fun d!60263 () Bool)

(declare-fun res!120721 () Bool)

(declare-fun e!159684 () Bool)

(assert (=> d!60263 (=> res!120721 e!159684)))

(assert (=> d!60263 (= res!120721 (bvsge #b00000000000000000000000000000000 (size!6106 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))))))))

(assert (=> d!60263 (= (arrayNoDuplicates!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) #b00000000000000000000000000000000 Nil!3690) e!159684)))

(declare-fun b!246146 () Bool)

(declare-fun e!159687 () Bool)

(assert (=> b!246146 (= e!159687 (contains!1777 Nil!3690 (select (arr!5764 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun c!41137 () Bool)

(declare-fun call!23007 () Bool)

(declare-fun bm!23004 () Bool)

(assert (=> bm!23004 (= call!23007 (arrayNoDuplicates!0 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!41137 (Cons!3689 (select (arr!5764 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504)))) #b00000000000000000000000000000000) Nil!3690) Nil!3690)))))

(declare-fun b!246147 () Bool)

(declare-fun e!159686 () Bool)

(assert (=> b!246147 (= e!159686 call!23007)))

(declare-fun b!246148 () Bool)

(declare-fun e!159685 () Bool)

(assert (=> b!246148 (= e!159685 e!159686)))

(assert (=> b!246148 (= c!41137 (validKeyInArray!0 (select (arr!5764 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!246149 () Bool)

(assert (=> b!246149 (= e!159684 e!159685)))

(declare-fun res!120723 () Bool)

(assert (=> b!246149 (=> (not res!120723) (not e!159685))))

(assert (=> b!246149 (= res!120723 (not e!159687))))

(declare-fun res!120722 () Bool)

(assert (=> b!246149 (=> (not res!120722) (not e!159687))))

(assert (=> b!246149 (= res!120722 (validKeyInArray!0 (select (arr!5764 (array!12147 (store (arr!5764 (_keys!6662 thiss!1504)) index!297 key!932) (size!6106 (_keys!6662 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!246150 () Bool)

(assert (=> b!246150 (= e!159686 call!23007)))

(assert (= (and d!60263 (not res!120721)) b!246149))

(assert (= (and b!246149 res!120722) b!246146))

(assert (= (and b!246149 res!120723) b!246148))

(assert (= (and b!246148 c!41137) b!246150))

(assert (= (and b!246148 (not c!41137)) b!246147))

(assert (= (or b!246150 b!246147) bm!23004))

(assert (=> b!246146 m!263503))

(assert (=> b!246146 m!263503))

(declare-fun m!263659 () Bool)

(assert (=> b!246146 m!263659))

(assert (=> bm!23004 m!263503))

(declare-fun m!263661 () Bool)

(assert (=> bm!23004 m!263661))

(assert (=> b!246148 m!263503))

(assert (=> b!246148 m!263503))

(assert (=> b!246148 m!263505))

(assert (=> b!246149 m!263503))

(assert (=> b!246149 m!263503))

(assert (=> b!246149 m!263505))

(assert (=> b!245913 d!60263))

(declare-fun d!60265 () Bool)

(assert (=> d!60265 (= (inRange!0 (index!6575 lt!123118) (mask!10661 thiss!1504)) (and (bvsge (index!6575 lt!123118) #b00000000000000000000000000000000) (bvslt (index!6575 lt!123118) (bvadd (mask!10661 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!245759 d!60265))

(declare-fun b!246169 () Bool)

(declare-fun lt!123336 () SeekEntryResult!1101)

(assert (=> b!246169 (and (bvsge (index!6576 lt!123336) #b00000000000000000000000000000000) (bvslt (index!6576 lt!123336) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun e!159701 () Bool)

(assert (=> b!246169 (= e!159701 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6576 lt!123336)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!246170 () Bool)

(assert (=> b!246170 (and (bvsge (index!6576 lt!123336) #b00000000000000000000000000000000) (bvslt (index!6576 lt!123336) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun res!120730 () Bool)

(assert (=> b!246170 (= res!120730 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6576 lt!123336)) key!932))))

(assert (=> b!246170 (=> res!120730 e!159701)))

(declare-fun e!159699 () Bool)

(assert (=> b!246170 (= e!159699 e!159701)))

(declare-fun b!246171 () Bool)

(declare-fun e!159700 () SeekEntryResult!1101)

(assert (=> b!246171 (= e!159700 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10661 thiss!1504)) #b00000000000000000000000000000000 (mask!10661 thiss!1504)) key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)))))

(declare-fun b!246172 () Bool)

(declare-fun e!159698 () Bool)

(assert (=> b!246172 (= e!159698 (bvsge (x!24449 lt!123336) #b01111111111111111111111111111110))))

(declare-fun b!246173 () Bool)

(declare-fun e!159702 () SeekEntryResult!1101)

(assert (=> b!246173 (= e!159702 (Intermediate!1101 true (toIndex!0 key!932 (mask!10661 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun d!60267 () Bool)

(assert (=> d!60267 e!159698))

(declare-fun c!41144 () Bool)

(assert (=> d!60267 (= c!41144 (and ((_ is Intermediate!1101) lt!123336) (undefined!1913 lt!123336)))))

(assert (=> d!60267 (= lt!123336 e!159702)))

(declare-fun c!41145 () Bool)

(assert (=> d!60267 (= c!41145 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!123337 () (_ BitVec 64))

(assert (=> d!60267 (= lt!123337 (select (arr!5764 (_keys!6662 thiss!1504)) (toIndex!0 key!932 (mask!10661 thiss!1504))))))

(assert (=> d!60267 (validMask!0 (mask!10661 thiss!1504))))

(assert (=> d!60267 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10661 thiss!1504)) key!932 (_keys!6662 thiss!1504) (mask!10661 thiss!1504)) lt!123336)))

(declare-fun b!246174 () Bool)

(assert (=> b!246174 (= e!159700 (Intermediate!1101 false (toIndex!0 key!932 (mask!10661 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!246175 () Bool)

(assert (=> b!246175 (= e!159698 e!159699)))

(declare-fun res!120732 () Bool)

(assert (=> b!246175 (= res!120732 (and ((_ is Intermediate!1101) lt!123336) (not (undefined!1913 lt!123336)) (bvslt (x!24449 lt!123336) #b01111111111111111111111111111110) (bvsge (x!24449 lt!123336) #b00000000000000000000000000000000) (bvsge (x!24449 lt!123336) #b00000000000000000000000000000000)))))

(assert (=> b!246175 (=> (not res!120732) (not e!159699))))

(declare-fun b!246176 () Bool)

(assert (=> b!246176 (and (bvsge (index!6576 lt!123336) #b00000000000000000000000000000000) (bvslt (index!6576 lt!123336) (size!6106 (_keys!6662 thiss!1504))))))

(declare-fun res!120731 () Bool)

(assert (=> b!246176 (= res!120731 (= (select (arr!5764 (_keys!6662 thiss!1504)) (index!6576 lt!123336)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!246176 (=> res!120731 e!159701)))

(declare-fun b!246177 () Bool)

(assert (=> b!246177 (= e!159702 e!159700)))

(declare-fun c!41146 () Bool)

(assert (=> b!246177 (= c!41146 (or (= lt!123337 key!932) (= (bvadd lt!123337 lt!123337) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!60267 c!41145) b!246173))

(assert (= (and d!60267 (not c!41145)) b!246177))

(assert (= (and b!246177 c!41146) b!246174))

(assert (= (and b!246177 (not c!41146)) b!246171))

(assert (= (and d!60267 c!41144) b!246172))

(assert (= (and d!60267 (not c!41144)) b!246175))

(assert (= (and b!246175 res!120732) b!246170))

(assert (= (and b!246170 (not res!120730)) b!246176))

(assert (= (and b!246176 (not res!120731)) b!246169))

(assert (=> d!60267 m!263355))

(declare-fun m!263663 () Bool)

(assert (=> d!60267 m!263663))

(assert (=> d!60267 m!263235))

(declare-fun m!263665 () Bool)

(assert (=> b!246176 m!263665))

(assert (=> b!246170 m!263665))

(assert (=> b!246171 m!263355))

(declare-fun m!263667 () Bool)

(assert (=> b!246171 m!263667))

(assert (=> b!246171 m!263667))

(declare-fun m!263669 () Bool)

(assert (=> b!246171 m!263669))

(assert (=> b!246169 m!263665))

(assert (=> d!60145 d!60267))

(declare-fun d!60269 () Bool)

(declare-fun lt!123343 () (_ BitVec 32))

(declare-fun lt!123342 () (_ BitVec 32))

(assert (=> d!60269 (= lt!123343 (bvmul (bvxor lt!123342 (bvlshr lt!123342 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!60269 (= lt!123342 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!60269 (and (bvsge (mask!10661 thiss!1504) #b00000000000000000000000000000000) (let ((res!120733 (let ((h!4349 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!24468 (bvmul (bvxor h!4349 (bvlshr h!4349 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!24468 (bvlshr x!24468 #b00000000000000000000000000001101)) (mask!10661 thiss!1504)))))) (and (bvslt res!120733 (bvadd (mask!10661 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!120733 #b00000000000000000000000000000000))))))

(assert (=> d!60269 (= (toIndex!0 key!932 (mask!10661 thiss!1504)) (bvand (bvxor lt!123343 (bvlshr lt!123343 #b00000000000000000000000000001101)) (mask!10661 thiss!1504)))))

(assert (=> d!60145 d!60269))

(assert (=> d!60145 d!60155))

(assert (=> d!60169 d!60139))

(assert (=> d!60169 d!60141))

(declare-fun d!60271 () Bool)

(assert (=> d!60271 (contains!1775 (getCurrentListMap!1395 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) key!932)))

(assert (=> d!60271 true))

(declare-fun _$17!68 () Unit!7582)

(assert (=> d!60271 (= (choose!1159 (_keys!6662 thiss!1504) (_values!4530 thiss!1504) (mask!10661 thiss!1504) (extraKeys!4284 thiss!1504) (zeroValue!4388 thiss!1504) (minValue!4388 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4547 thiss!1504)) _$17!68)))

(declare-fun bs!8909 () Bool)

(assert (= bs!8909 d!60271))

(assert (=> bs!8909 m!263213))

(assert (=> bs!8909 m!263213))

(assert (=> bs!8909 m!263215))

(assert (=> d!60169 d!60271))

(assert (=> d!60169 d!60155))

(declare-fun d!60273 () Bool)

(assert (=> d!60273 (= (apply!231 lt!123180 #b0000000000000000000000000000000000000000000000000000000000000000) (get!2959 (getValueByKey!288 (toList!1872 lt!123180) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!8910 () Bool)

(assert (= bs!8910 d!60273))

(assert (=> bs!8910 m!263427))

(assert (=> bs!8910 m!263427))

(declare-fun m!263671 () Bool)

(assert (=> bs!8910 m!263671))

(assert (=> b!245826 d!60273))

(assert (=> b!245906 d!60187))

(declare-fun d!60275 () Bool)

(assert (=> d!60275 (= (inRange!0 (ite c!41074 (index!6574 lt!123210) (index!6577 lt!123210)) (mask!10661 thiss!1504)) (and (bvsge (ite c!41074 (index!6574 lt!123210) (index!6577 lt!123210)) #b00000000000000000000000000000000) (bvslt (ite c!41074 (index!6574 lt!123210) (index!6577 lt!123210)) (bvadd (mask!10661 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!22978 d!60275))

(assert (=> d!60141 d!60155))

(declare-fun mapIsEmpty!10904 () Bool)

(declare-fun mapRes!10904 () Bool)

(assert (=> mapIsEmpty!10904 mapRes!10904))

(declare-fun condMapEmpty!10904 () Bool)

(declare-fun mapDefault!10904 () ValueCell!2868)

(assert (=> mapNonEmpty!10903 (= condMapEmpty!10904 (= mapRest!10903 ((as const (Array (_ BitVec 32) ValueCell!2868)) mapDefault!10904)))))

(declare-fun e!159704 () Bool)

(assert (=> mapNonEmpty!10903 (= tp!22927 (and e!159704 mapRes!10904))))

(declare-fun mapNonEmpty!10904 () Bool)

(declare-fun tp!22928 () Bool)

(declare-fun e!159703 () Bool)

(assert (=> mapNonEmpty!10904 (= mapRes!10904 (and tp!22928 e!159703))))

(declare-fun mapKey!10904 () (_ BitVec 32))

(declare-fun mapRest!10904 () (Array (_ BitVec 32) ValueCell!2868))

(declare-fun mapValue!10904 () ValueCell!2868)

(assert (=> mapNonEmpty!10904 (= mapRest!10903 (store mapRest!10904 mapKey!10904 mapValue!10904))))

(declare-fun b!246178 () Bool)

(assert (=> b!246178 (= e!159703 tp_is_empty!6423)))

(declare-fun b!246179 () Bool)

(assert (=> b!246179 (= e!159704 tp_is_empty!6423)))

(assert (= (and mapNonEmpty!10903 condMapEmpty!10904) mapIsEmpty!10904))

(assert (= (and mapNonEmpty!10903 (not condMapEmpty!10904)) mapNonEmpty!10904))

(assert (= (and mapNonEmpty!10904 ((_ is ValueCellFull!2868) mapValue!10904)) b!246178))

(assert (= (and mapNonEmpty!10903 ((_ is ValueCellFull!2868) mapDefault!10904)) b!246179))

(declare-fun m!263673 () Bool)

(assert (=> mapNonEmpty!10904 m!263673))

(declare-fun b_lambda!8065 () Bool)

(assert (= b_lambda!8061 (or (and b!245683 b_free!6561) b_lambda!8065)))

(declare-fun b_lambda!8067 () Bool)

(assert (= b_lambda!8063 (or (and b!245683 b_free!6561) b_lambda!8067)))

(check-sat (not b!246129) (not b!246138) (not b!246058) (not b!246119) (not b_lambda!8067) (not d!60239) (not bm!23003) (not d!60173) (not d!60257) (not bm!23000) (not b!246121) (not d!60273) (not b!246086) (not d!60233) (not bm!23001) (not b!245963) (not d!60229) (not b!245959) (not b!246100) (not d!60185) (not b!246088) (not bm!23002) (not bm!22994) (not b!246127) (not b!246055) (not d!60241) (not mapNonEmpty!10904) (not d!60219) (not d!60181) (not b!245995) (not b!246085) (not b!246000) (not b!246090) (not d!60221) (not d!60223) (not b!246133) (not b!245965) (not b!245990) tp_is_empty!6423 (not bm!22989) (not d!60231) (not d!60207) (not d!60183) (not b_next!6561) (not b!246087) (not b!246118) (not d!60235) (not d!60177) (not b!246097) (not d!60191) (not b!246126) (not b!246108) (not b_lambda!8059) (not d!60193) (not b!246139) (not d!60267) (not d!60209) (not d!60227) b_and!13577 (not b!246038) (not b!246039) (not bm!22995) (not b!246089) (not b!246171) (not b!246148) (not b!245996) (not b!246048) (not b!246149) (not d!60237) (not b!246001) (not b!245997) (not b!245994) (not b!246027) (not b!246099) (not b!246146) (not d!60211) (not b!245993) (not d!60249) (not bm!23004) (not b!246018) (not d!60213) (not b!246101) (not b!245961) (not d!60245) (not b!245948) (not b!246122) (not b!246020) (not d!60197) (not b!246032) (not d!60225) (not b!246031) (not b!246022) (not b!246051) (not d!60253) (not b!246029) (not b_lambda!8065) (not bm!22990) (not b!246059) (not d!60171) (not d!60217) (not b!246056) (not d!60271) (not b!246145) (not d!60189) (not bm!22993) (not d!60215))
(check-sat b_and!13577 (not b_next!6561))
