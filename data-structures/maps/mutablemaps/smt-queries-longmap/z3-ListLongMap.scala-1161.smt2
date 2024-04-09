; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24480 () Bool)

(assert start!24480)

(declare-fun b!256262 () Bool)

(declare-fun b_free!6717 () Bool)

(declare-fun b_next!6717 () Bool)

(assert (=> b!256262 (= b_free!6717 (not b_next!6717))))

(declare-fun tp!23451 () Bool)

(declare-fun b_and!13793 () Bool)

(assert (=> b!256262 (= tp!23451 b_and!13793)))

(declare-fun b!256249 () Bool)

(declare-fun e!166125 () Bool)

(declare-fun e!166128 () Bool)

(assert (=> b!256249 (= e!166125 (not e!166128))))

(declare-fun res!125385 () Bool)

(assert (=> b!256249 (=> res!125385 e!166128)))

(declare-fun index!297 () (_ BitVec 32))

(declare-datatypes ((V!8419 0))(
  ( (V!8420 (val!3334 Int)) )
))
(declare-datatypes ((ValueCell!2946 0))(
  ( (ValueCellFull!2946 (v!5416 V!8419)) (EmptyCell!2946) )
))
(declare-datatypes ((array!12496 0))(
  ( (array!12497 (arr!5919 (Array (_ BitVec 32) ValueCell!2946)) (size!6266 (_ BitVec 32))) )
))
(declare-datatypes ((array!12498 0))(
  ( (array!12499 (arr!5920 (Array (_ BitVec 32) (_ BitVec 64))) (size!6267 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3792 0))(
  ( (LongMapFixedSize!3793 (defaultEntry!4729 Int) (mask!11001 (_ BitVec 32)) (extraKeys!4466 (_ BitVec 32)) (zeroValue!4570 V!8419) (minValue!4570 V!8419) (_size!1945 (_ BitVec 32)) (_keys!6891 array!12498) (_values!4712 array!12496) (_vacant!1945 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3792)

(assert (=> b!256249 (= res!125385 (or (bvslt index!297 #b00000000000000000000000000000000) (bvsge index!297 (size!6267 (_keys!6891 thiss!1504))) (bvsge (size!6267 (_keys!6891 thiss!1504)) #b01111111111111111111111111111111)))))

(declare-fun lt!128694 () array!12498)

(declare-datatypes ((tuple2!4904 0))(
  ( (tuple2!4905 (_1!2462 (_ BitVec 64)) (_2!2462 V!8419)) )
))
(declare-datatypes ((List!3808 0))(
  ( (Nil!3805) (Cons!3804 (h!4466 tuple2!4904) (t!8871 List!3808)) )
))
(declare-datatypes ((ListLongMap!3831 0))(
  ( (ListLongMap!3832 (toList!1931 List!3808)) )
))
(declare-fun lt!128691 () ListLongMap!3831)

(declare-fun v!346 () V!8419)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun +!676 (ListLongMap!3831 tuple2!4904) ListLongMap!3831)

(declare-fun getCurrentListMap!1454 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 32) Int) ListLongMap!3831)

(assert (=> b!256249 (= (+!676 lt!128691 (tuple2!4905 key!932 v!346)) (getCurrentListMap!1454 lt!128694 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-datatypes ((Unit!7949 0))(
  ( (Unit!7950) )
))
(declare-fun lt!128701 () Unit!7949)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!91 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 32) (_ BitVec 64) V!8419 Int) Unit!7949)

(assert (=> b!256249 (= lt!128701 (lemmaAddValidKeyToArrayThenAddPairToListMap!91 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) index!297 key!932 v!346 (defaultEntry!4729 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12498 (_ BitVec 32)) Bool)

(assert (=> b!256249 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128694 (mask!11001 thiss!1504))))

(declare-fun lt!128697 () Unit!7949)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12498 (_ BitVec 32) (_ BitVec 32)) Unit!7949)

(assert (=> b!256249 (= lt!128697 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6891 thiss!1504) index!297 (mask!11001 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12498 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!256249 (= (arrayCountValidKeys!0 lt!128694 #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6891 thiss!1504) #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504)))))))

(declare-fun lt!128700 () Unit!7949)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12498 (_ BitVec 32) (_ BitVec 64)) Unit!7949)

(assert (=> b!256249 (= lt!128700 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6891 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3809 0))(
  ( (Nil!3806) (Cons!3805 (h!4467 (_ BitVec 64)) (t!8872 List!3809)) )
))
(declare-fun arrayNoDuplicates!0 (array!12498 (_ BitVec 32) List!3809) Bool)

(assert (=> b!256249 (arrayNoDuplicates!0 lt!128694 #b00000000000000000000000000000000 Nil!3806)))

(assert (=> b!256249 (= lt!128694 (array!12499 (store (arr!5920 (_keys!6891 thiss!1504)) index!297 key!932) (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun lt!128696 () Unit!7949)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12498 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3809) Unit!7949)

(assert (=> b!256249 (= lt!128696 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6891 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3806))))

(declare-fun lt!128695 () Unit!7949)

(declare-fun e!166116 () Unit!7949)

(assert (=> b!256249 (= lt!128695 e!166116)))

(declare-fun c!43299 () Bool)

(declare-fun arrayContainsKey!0 (array!12498 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!256249 (= c!43299 (arrayContainsKey!0 (_keys!6891 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapIsEmpty!11196 () Bool)

(declare-fun mapRes!11196 () Bool)

(assert (=> mapIsEmpty!11196 mapRes!11196))

(declare-fun mapNonEmpty!11196 () Bool)

(declare-fun tp!23450 () Bool)

(declare-fun e!166127 () Bool)

(assert (=> mapNonEmpty!11196 (= mapRes!11196 (and tp!23450 e!166127))))

(declare-fun mapRest!11196 () (Array (_ BitVec 32) ValueCell!2946))

(declare-fun mapKey!11196 () (_ BitVec 32))

(declare-fun mapValue!11196 () ValueCell!2946)

(assert (=> mapNonEmpty!11196 (= (arr!5919 (_values!4712 thiss!1504)) (store mapRest!11196 mapKey!11196 mapValue!11196))))

(declare-fun b!256250 () Bool)

(declare-fun e!166118 () Unit!7949)

(declare-fun Unit!7951 () Unit!7949)

(assert (=> b!256250 (= e!166118 Unit!7951)))

(declare-fun lt!128693 () Unit!7949)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!428 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 64) Int) Unit!7949)

(assert (=> b!256250 (= lt!128693 (lemmaInListMapThenSeekEntryOrOpenFindsIt!428 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 (defaultEntry!4729 thiss!1504)))))

(assert (=> b!256250 false))

(declare-fun b!256251 () Bool)

(declare-fun e!166114 () Bool)

(declare-fun call!24270 () Bool)

(assert (=> b!256251 (= e!166114 (not call!24270))))

(declare-fun b!256252 () Bool)

(declare-fun e!166119 () Bool)

(assert (=> b!256252 (= e!166119 e!166114)))

(declare-fun res!125389 () Bool)

(declare-fun call!24271 () Bool)

(assert (=> b!256252 (= res!125389 call!24271)))

(assert (=> b!256252 (=> (not res!125389) (not e!166114))))

(declare-fun b!256253 () Bool)

(declare-fun res!125388 () Bool)

(declare-fun e!166124 () Bool)

(assert (=> b!256253 (=> (not res!125388) (not e!166124))))

(declare-datatypes ((SeekEntryResult!1172 0))(
  ( (MissingZero!1172 (index!6858 (_ BitVec 32))) (Found!1172 (index!6859 (_ BitVec 32))) (Intermediate!1172 (undefined!1984 Bool) (index!6860 (_ BitVec 32)) (x!24968 (_ BitVec 32))) (Undefined!1172) (MissingVacant!1172 (index!6861 (_ BitVec 32))) )
))
(declare-fun lt!128692 () SeekEntryResult!1172)

(assert (=> b!256253 (= res!125388 (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6858 lt!128692)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256255 () Bool)

(declare-fun lt!128699 () Unit!7949)

(assert (=> b!256255 (= e!166118 lt!128699)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!428 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 64) Int) Unit!7949)

(assert (=> b!256255 (= lt!128699 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!428 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 (defaultEntry!4729 thiss!1504)))))

(declare-fun c!43296 () Bool)

(get-info :version)

(assert (=> b!256255 (= c!43296 ((_ is MissingZero!1172) lt!128692))))

(declare-fun e!166117 () Bool)

(assert (=> b!256255 e!166117))

(declare-fun b!256256 () Bool)

(declare-fun tp_is_empty!6579 () Bool)

(assert (=> b!256256 (= e!166127 tp_is_empty!6579)))

(declare-fun b!256257 () Bool)

(declare-fun c!43298 () Bool)

(assert (=> b!256257 (= c!43298 ((_ is MissingVacant!1172) lt!128692))))

(assert (=> b!256257 (= e!166117 e!166119)))

(declare-fun b!256258 () Bool)

(declare-fun e!166121 () Bool)

(assert (=> b!256258 (= e!166121 e!166125)))

(declare-fun res!125391 () Bool)

(assert (=> b!256258 (=> (not res!125391) (not e!166125))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!256258 (= res!125391 (inRange!0 index!297 (mask!11001 thiss!1504)))))

(declare-fun lt!128702 () Unit!7949)

(assert (=> b!256258 (= lt!128702 e!166118)))

(declare-fun c!43297 () Bool)

(declare-fun contains!1863 (ListLongMap!3831 (_ BitVec 64)) Bool)

(assert (=> b!256258 (= c!43297 (contains!1863 lt!128691 key!932))))

(assert (=> b!256258 (= lt!128691 (getCurrentListMap!1454 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun b!256259 () Bool)

(declare-fun res!125383 () Bool)

(assert (=> b!256259 (= res!125383 (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6861 lt!128692)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256259 (=> (not res!125383) (not e!166114))))

(declare-fun bm!24267 () Bool)

(assert (=> bm!24267 (= call!24271 (inRange!0 (ite c!43296 (index!6858 lt!128692) (index!6861 lt!128692)) (mask!11001 thiss!1504)))))

(declare-fun b!256260 () Bool)

(assert (=> b!256260 (= e!166128 (arrayContainsKey!0 lt!128694 key!932 index!297))))

(declare-fun b!256261 () Bool)

(declare-fun e!166120 () Bool)

(assert (=> b!256261 (= e!166120 e!166121)))

(declare-fun res!125390 () Bool)

(assert (=> b!256261 (=> (not res!125390) (not e!166121))))

(assert (=> b!256261 (= res!125390 (or (= lt!128692 (MissingZero!1172 index!297)) (= lt!128692 (MissingVacant!1172 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12498 (_ BitVec 32)) SeekEntryResult!1172)

(assert (=> b!256261 (= lt!128692 (seekEntryOrOpen!0 key!932 (_keys!6891 thiss!1504) (mask!11001 thiss!1504)))))

(declare-fun e!166123 () Bool)

(declare-fun e!166115 () Bool)

(declare-fun array_inv!3903 (array!12498) Bool)

(declare-fun array_inv!3904 (array!12496) Bool)

(assert (=> b!256262 (= e!166115 (and tp!23451 tp_is_empty!6579 (array_inv!3903 (_keys!6891 thiss!1504)) (array_inv!3904 (_values!4712 thiss!1504)) e!166123))))

(declare-fun b!256263 () Bool)

(declare-fun Unit!7952 () Unit!7949)

(assert (=> b!256263 (= e!166116 Unit!7952)))

(declare-fun lt!128698 () Unit!7949)

(declare-fun lemmaArrayContainsKeyThenInListMap!233 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 64) (_ BitVec 32) Int) Unit!7949)

(assert (=> b!256263 (= lt!128698 (lemmaArrayContainsKeyThenInListMap!233 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(assert (=> b!256263 false))

(declare-fun b!256264 () Bool)

(declare-fun Unit!7953 () Unit!7949)

(assert (=> b!256264 (= e!166116 Unit!7953)))

(declare-fun b!256265 () Bool)

(declare-fun e!166126 () Bool)

(assert (=> b!256265 (= e!166123 (and e!166126 mapRes!11196))))

(declare-fun condMapEmpty!11196 () Bool)

(declare-fun mapDefault!11196 () ValueCell!2946)

(assert (=> b!256265 (= condMapEmpty!11196 (= (arr!5919 (_values!4712 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2946)) mapDefault!11196)))))

(declare-fun b!256266 () Bool)

(assert (=> b!256266 (= e!166126 tp_is_empty!6579)))

(declare-fun bm!24268 () Bool)

(assert (=> bm!24268 (= call!24270 (arrayContainsKey!0 (_keys!6891 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256267 () Bool)

(assert (=> b!256267 (= e!166119 ((_ is Undefined!1172) lt!128692))))

(declare-fun b!256268 () Bool)

(assert (=> b!256268 (= e!166124 (not call!24270))))

(declare-fun b!256269 () Bool)

(declare-fun res!125384 () Bool)

(assert (=> b!256269 (=> (not res!125384) (not e!166120))))

(assert (=> b!256269 (= res!125384 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!256254 () Bool)

(declare-fun res!125387 () Bool)

(assert (=> b!256254 (=> (not res!125387) (not e!166124))))

(assert (=> b!256254 (= res!125387 call!24271)))

(assert (=> b!256254 (= e!166117 e!166124)))

(declare-fun res!125386 () Bool)

(assert (=> start!24480 (=> (not res!125386) (not e!166120))))

(declare-fun valid!1474 (LongMapFixedSize!3792) Bool)

(assert (=> start!24480 (= res!125386 (valid!1474 thiss!1504))))

(assert (=> start!24480 e!166120))

(assert (=> start!24480 e!166115))

(assert (=> start!24480 true))

(assert (=> start!24480 tp_is_empty!6579))

(assert (= (and start!24480 res!125386) b!256269))

(assert (= (and b!256269 res!125384) b!256261))

(assert (= (and b!256261 res!125390) b!256258))

(assert (= (and b!256258 c!43297) b!256250))

(assert (= (and b!256258 (not c!43297)) b!256255))

(assert (= (and b!256255 c!43296) b!256254))

(assert (= (and b!256255 (not c!43296)) b!256257))

(assert (= (and b!256254 res!125387) b!256253))

(assert (= (and b!256253 res!125388) b!256268))

(assert (= (and b!256257 c!43298) b!256252))

(assert (= (and b!256257 (not c!43298)) b!256267))

(assert (= (and b!256252 res!125389) b!256259))

(assert (= (and b!256259 res!125383) b!256251))

(assert (= (or b!256254 b!256252) bm!24267))

(assert (= (or b!256268 b!256251) bm!24268))

(assert (= (and b!256258 res!125391) b!256249))

(assert (= (and b!256249 c!43299) b!256263))

(assert (= (and b!256249 (not c!43299)) b!256264))

(assert (= (and b!256249 (not res!125385)) b!256260))

(assert (= (and b!256265 condMapEmpty!11196) mapIsEmpty!11196))

(assert (= (and b!256265 (not condMapEmpty!11196)) mapNonEmpty!11196))

(assert (= (and mapNonEmpty!11196 ((_ is ValueCellFull!2946) mapValue!11196)) b!256256))

(assert (= (and b!256265 ((_ is ValueCellFull!2946) mapDefault!11196)) b!256266))

(assert (= b!256262 b!256265))

(assert (= start!24480 b!256262))

(declare-fun m!271659 () Bool)

(assert (=> b!256262 m!271659))

(declare-fun m!271661 () Bool)

(assert (=> b!256262 m!271661))

(declare-fun m!271663 () Bool)

(assert (=> b!256259 m!271663))

(declare-fun m!271665 () Bool)

(assert (=> b!256250 m!271665))

(declare-fun m!271667 () Bool)

(assert (=> start!24480 m!271667))

(declare-fun m!271669 () Bool)

(assert (=> b!256258 m!271669))

(declare-fun m!271671 () Bool)

(assert (=> b!256258 m!271671))

(declare-fun m!271673 () Bool)

(assert (=> b!256258 m!271673))

(declare-fun m!271675 () Bool)

(assert (=> b!256253 m!271675))

(declare-fun m!271677 () Bool)

(assert (=> b!256255 m!271677))

(declare-fun m!271679 () Bool)

(assert (=> b!256261 m!271679))

(declare-fun m!271681 () Bool)

(assert (=> bm!24267 m!271681))

(declare-fun m!271683 () Bool)

(assert (=> mapNonEmpty!11196 m!271683))

(declare-fun m!271685 () Bool)

(assert (=> b!256260 m!271685))

(declare-fun m!271687 () Bool)

(assert (=> bm!24268 m!271687))

(assert (=> b!256249 m!271687))

(declare-fun m!271689 () Bool)

(assert (=> b!256249 m!271689))

(declare-fun m!271691 () Bool)

(assert (=> b!256249 m!271691))

(declare-fun m!271693 () Bool)

(assert (=> b!256249 m!271693))

(declare-fun m!271695 () Bool)

(assert (=> b!256249 m!271695))

(declare-fun m!271697 () Bool)

(assert (=> b!256249 m!271697))

(declare-fun m!271699 () Bool)

(assert (=> b!256249 m!271699))

(declare-fun m!271701 () Bool)

(assert (=> b!256249 m!271701))

(declare-fun m!271703 () Bool)

(assert (=> b!256249 m!271703))

(declare-fun m!271705 () Bool)

(assert (=> b!256249 m!271705))

(declare-fun m!271707 () Bool)

(assert (=> b!256249 m!271707))

(declare-fun m!271709 () Bool)

(assert (=> b!256249 m!271709))

(declare-fun m!271711 () Bool)

(assert (=> b!256249 m!271711))

(declare-fun m!271713 () Bool)

(assert (=> b!256263 m!271713))

(check-sat (not b!256258) (not b!256255) (not mapNonEmpty!11196) (not bm!24268) (not start!24480) tp_is_empty!6579 (not b!256263) (not b_next!6717) (not b!256262) (not b!256261) (not b!256260) (not b!256249) (not bm!24267) (not b!256250) b_and!13793)
(check-sat b_and!13793 (not b_next!6717))
(get-model)

(declare-fun d!61585 () Bool)

(declare-fun res!125423 () Bool)

(declare-fun e!166178 () Bool)

(assert (=> d!61585 (=> res!125423 e!166178)))

(assert (=> d!61585 (= res!125423 (= (select (arr!5920 lt!128694) index!297) key!932))))

(assert (=> d!61585 (= (arrayContainsKey!0 lt!128694 key!932 index!297) e!166178)))

(declare-fun b!256337 () Bool)

(declare-fun e!166179 () Bool)

(assert (=> b!256337 (= e!166178 e!166179)))

(declare-fun res!125424 () Bool)

(assert (=> b!256337 (=> (not res!125424) (not e!166179))))

(assert (=> b!256337 (= res!125424 (bvslt (bvadd index!297 #b00000000000000000000000000000001) (size!6267 lt!128694)))))

(declare-fun b!256338 () Bool)

(assert (=> b!256338 (= e!166179 (arrayContainsKey!0 lt!128694 key!932 (bvadd index!297 #b00000000000000000000000000000001)))))

(assert (= (and d!61585 (not res!125423)) b!256337))

(assert (= (and b!256337 res!125424) b!256338))

(declare-fun m!271771 () Bool)

(assert (=> d!61585 m!271771))

(declare-fun m!271773 () Bool)

(assert (=> b!256338 m!271773))

(assert (=> b!256260 d!61585))

(declare-fun d!61587 () Bool)

(declare-fun e!166182 () Bool)

(assert (=> d!61587 e!166182))

(declare-fun res!125430 () Bool)

(assert (=> d!61587 (=> (not res!125430) (not e!166182))))

(declare-fun lt!128744 () SeekEntryResult!1172)

(assert (=> d!61587 (= res!125430 ((_ is Found!1172) lt!128744))))

(assert (=> d!61587 (= lt!128744 (seekEntryOrOpen!0 key!932 (_keys!6891 thiss!1504) (mask!11001 thiss!1504)))))

(declare-fun lt!128743 () Unit!7949)

(declare-fun choose!1236 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 64) Int) Unit!7949)

(assert (=> d!61587 (= lt!128743 (choose!1236 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 (defaultEntry!4729 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!61587 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61587 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!428 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 (defaultEntry!4729 thiss!1504)) lt!128743)))

(declare-fun b!256343 () Bool)

(declare-fun res!125429 () Bool)

(assert (=> b!256343 (=> (not res!125429) (not e!166182))))

(assert (=> b!256343 (= res!125429 (inRange!0 (index!6859 lt!128744) (mask!11001 thiss!1504)))))

(declare-fun b!256344 () Bool)

(assert (=> b!256344 (= e!166182 (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6859 lt!128744)) key!932))))

(assert (=> b!256344 (and (bvsge (index!6859 lt!128744) #b00000000000000000000000000000000) (bvslt (index!6859 lt!128744) (size!6267 (_keys!6891 thiss!1504))))))

(assert (= (and d!61587 res!125430) b!256343))

(assert (= (and b!256343 res!125429) b!256344))

(assert (=> d!61587 m!271679))

(declare-fun m!271775 () Bool)

(assert (=> d!61587 m!271775))

(declare-fun m!271777 () Bool)

(assert (=> d!61587 m!271777))

(declare-fun m!271779 () Bool)

(assert (=> b!256343 m!271779))

(declare-fun m!271781 () Bool)

(assert (=> b!256344 m!271781))

(assert (=> b!256250 d!61587))

(declare-fun b!256361 () Bool)

(declare-fun lt!128749 () SeekEntryResult!1172)

(assert (=> b!256361 (and (bvsge (index!6858 lt!128749) #b00000000000000000000000000000000) (bvslt (index!6858 lt!128749) (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun res!125440 () Bool)

(assert (=> b!256361 (= res!125440 (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6858 lt!128749)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!166194 () Bool)

(assert (=> b!256361 (=> (not res!125440) (not e!166194))))

(declare-fun b!256362 () Bool)

(declare-fun call!24283 () Bool)

(assert (=> b!256362 (= e!166194 (not call!24283))))

(declare-fun b!256364 () Bool)

(declare-fun res!125441 () Bool)

(declare-fun e!166192 () Bool)

(assert (=> b!256364 (=> (not res!125441) (not e!166192))))

(assert (=> b!256364 (= res!125441 (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6861 lt!128749)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256364 (and (bvsge (index!6861 lt!128749) #b00000000000000000000000000000000) (bvslt (index!6861 lt!128749) (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun b!256365 () Bool)

(declare-fun e!166191 () Bool)

(declare-fun e!166193 () Bool)

(assert (=> b!256365 (= e!166191 e!166193)))

(declare-fun c!43316 () Bool)

(assert (=> b!256365 (= c!43316 ((_ is MissingVacant!1172) lt!128749))))

(declare-fun b!256366 () Bool)

(assert (=> b!256366 (= e!166192 (not call!24283))))

(declare-fun b!256367 () Bool)

(assert (=> b!256367 (= e!166191 e!166194)))

(declare-fun res!125442 () Bool)

(declare-fun call!24282 () Bool)

(assert (=> b!256367 (= res!125442 call!24282)))

(assert (=> b!256367 (=> (not res!125442) (not e!166194))))

(declare-fun bm!24279 () Bool)

(declare-fun c!43317 () Bool)

(assert (=> bm!24279 (= call!24282 (inRange!0 (ite c!43317 (index!6858 lt!128749) (index!6861 lt!128749)) (mask!11001 thiss!1504)))))

(declare-fun b!256368 () Bool)

(declare-fun res!125439 () Bool)

(assert (=> b!256368 (=> (not res!125439) (not e!166192))))

(assert (=> b!256368 (= res!125439 call!24282)))

(assert (=> b!256368 (= e!166193 e!166192)))

(declare-fun bm!24280 () Bool)

(assert (=> bm!24280 (= call!24283 (arrayContainsKey!0 (_keys!6891 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!256363 () Bool)

(assert (=> b!256363 (= e!166193 ((_ is Undefined!1172) lt!128749))))

(declare-fun d!61589 () Bool)

(assert (=> d!61589 e!166191))

(assert (=> d!61589 (= c!43317 ((_ is MissingZero!1172) lt!128749))))

(assert (=> d!61589 (= lt!128749 (seekEntryOrOpen!0 key!932 (_keys!6891 thiss!1504) (mask!11001 thiss!1504)))))

(declare-fun lt!128750 () Unit!7949)

(declare-fun choose!1237 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 64) Int) Unit!7949)

(assert (=> d!61589 (= lt!128750 (choose!1237 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 (defaultEntry!4729 thiss!1504)))))

(assert (=> d!61589 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61589 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!428 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 (defaultEntry!4729 thiss!1504)) lt!128750)))

(assert (= (and d!61589 c!43317) b!256367))

(assert (= (and d!61589 (not c!43317)) b!256365))

(assert (= (and b!256367 res!125442) b!256361))

(assert (= (and b!256361 res!125440) b!256362))

(assert (= (and b!256365 c!43316) b!256368))

(assert (= (and b!256365 (not c!43316)) b!256363))

(assert (= (and b!256368 res!125439) b!256364))

(assert (= (and b!256364 res!125441) b!256366))

(assert (= (or b!256367 b!256368) bm!24279))

(assert (= (or b!256362 b!256366) bm!24280))

(assert (=> bm!24280 m!271687))

(declare-fun m!271783 () Bool)

(assert (=> b!256361 m!271783))

(declare-fun m!271785 () Bool)

(assert (=> b!256364 m!271785))

(assert (=> d!61589 m!271679))

(declare-fun m!271787 () Bool)

(assert (=> d!61589 m!271787))

(assert (=> d!61589 m!271777))

(declare-fun m!271789 () Bool)

(assert (=> bm!24279 m!271789))

(assert (=> b!256255 d!61589))

(declare-fun d!61591 () Bool)

(assert (=> d!61591 (= (inRange!0 (ite c!43296 (index!6858 lt!128692) (index!6861 lt!128692)) (mask!11001 thiss!1504)) (and (bvsge (ite c!43296 (index!6858 lt!128692) (index!6861 lt!128692)) #b00000000000000000000000000000000) (bvslt (ite c!43296 (index!6858 lt!128692) (index!6861 lt!128692)) (bvadd (mask!11001 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24267 d!61591))

(declare-fun d!61593 () Bool)

(assert (=> d!61593 (contains!1863 (getCurrentListMap!1454 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)) key!932)))

(declare-fun lt!128753 () Unit!7949)

(declare-fun choose!1238 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 64) (_ BitVec 32) Int) Unit!7949)

(assert (=> d!61593 (= lt!128753 (choose!1238 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(assert (=> d!61593 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61593 (= (lemmaArrayContainsKeyThenInListMap!233 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)) lt!128753)))

(declare-fun bs!9072 () Bool)

(assert (= bs!9072 d!61593))

(assert (=> bs!9072 m!271673))

(assert (=> bs!9072 m!271673))

(declare-fun m!271791 () Bool)

(assert (=> bs!9072 m!271791))

(declare-fun m!271793 () Bool)

(assert (=> bs!9072 m!271793))

(assert (=> bs!9072 m!271777))

(assert (=> b!256263 d!61593))

(declare-fun d!61595 () Bool)

(assert (=> d!61595 (= (inRange!0 index!297 (mask!11001 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11001 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!256258 d!61595))

(declare-fun d!61597 () Bool)

(declare-fun e!166199 () Bool)

(assert (=> d!61597 e!166199))

(declare-fun res!125445 () Bool)

(assert (=> d!61597 (=> res!125445 e!166199)))

(declare-fun lt!128765 () Bool)

(assert (=> d!61597 (= res!125445 (not lt!128765))))

(declare-fun lt!128762 () Bool)

(assert (=> d!61597 (= lt!128765 lt!128762)))

(declare-fun lt!128763 () Unit!7949)

(declare-fun e!166200 () Unit!7949)

(assert (=> d!61597 (= lt!128763 e!166200)))

(declare-fun c!43320 () Bool)

(assert (=> d!61597 (= c!43320 lt!128762)))

(declare-fun containsKey!300 (List!3808 (_ BitVec 64)) Bool)

(assert (=> d!61597 (= lt!128762 (containsKey!300 (toList!1931 lt!128691) key!932))))

(assert (=> d!61597 (= (contains!1863 lt!128691 key!932) lt!128765)))

(declare-fun b!256375 () Bool)

(declare-fun lt!128764 () Unit!7949)

(assert (=> b!256375 (= e!166200 lt!128764)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!249 (List!3808 (_ BitVec 64)) Unit!7949)

(assert (=> b!256375 (= lt!128764 (lemmaContainsKeyImpliesGetValueByKeyDefined!249 (toList!1931 lt!128691) key!932))))

(declare-datatypes ((Option!314 0))(
  ( (Some!313 (v!5420 V!8419)) (None!312) )
))
(declare-fun isDefined!250 (Option!314) Bool)

(declare-fun getValueByKey!308 (List!3808 (_ BitVec 64)) Option!314)

(assert (=> b!256375 (isDefined!250 (getValueByKey!308 (toList!1931 lt!128691) key!932))))

(declare-fun b!256376 () Bool)

(declare-fun Unit!7959 () Unit!7949)

(assert (=> b!256376 (= e!166200 Unit!7959)))

(declare-fun b!256377 () Bool)

(assert (=> b!256377 (= e!166199 (isDefined!250 (getValueByKey!308 (toList!1931 lt!128691) key!932)))))

(assert (= (and d!61597 c!43320) b!256375))

(assert (= (and d!61597 (not c!43320)) b!256376))

(assert (= (and d!61597 (not res!125445)) b!256377))

(declare-fun m!271795 () Bool)

(assert (=> d!61597 m!271795))

(declare-fun m!271797 () Bool)

(assert (=> b!256375 m!271797))

(declare-fun m!271799 () Bool)

(assert (=> b!256375 m!271799))

(assert (=> b!256375 m!271799))

(declare-fun m!271801 () Bool)

(assert (=> b!256375 m!271801))

(assert (=> b!256377 m!271799))

(assert (=> b!256377 m!271799))

(assert (=> b!256377 m!271801))

(assert (=> b!256258 d!61597))

(declare-fun b!256420 () Bool)

(declare-fun e!166228 () Bool)

(declare-fun call!24299 () Bool)

(assert (=> b!256420 (= e!166228 (not call!24299))))

(declare-fun bm!24295 () Bool)

(declare-fun call!24303 () ListLongMap!3831)

(declare-fun call!24304 () ListLongMap!3831)

(assert (=> bm!24295 (= call!24303 call!24304)))

(declare-fun b!256421 () Bool)

(declare-fun e!166236 () Bool)

(declare-fun e!166239 () Bool)

(assert (=> b!256421 (= e!166236 e!166239)))

(declare-fun res!125465 () Bool)

(declare-fun call!24298 () Bool)

(assert (=> b!256421 (= res!125465 call!24298)))

(assert (=> b!256421 (=> (not res!125465) (not e!166239))))

(declare-fun b!256422 () Bool)

(declare-fun e!166231 () Unit!7949)

(declare-fun Unit!7960 () Unit!7949)

(assert (=> b!256422 (= e!166231 Unit!7960)))

(declare-fun b!256423 () Bool)

(declare-fun e!166237 () Bool)

(declare-fun e!166238 () Bool)

(assert (=> b!256423 (= e!166237 e!166238)))

(declare-fun res!125464 () Bool)

(assert (=> b!256423 (=> (not res!125464) (not e!166238))))

(declare-fun lt!128814 () ListLongMap!3831)

(assert (=> b!256423 (= res!125464 (contains!1863 lt!128814 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!256423 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun b!256424 () Bool)

(declare-fun e!166227 () ListLongMap!3831)

(assert (=> b!256424 (= e!166227 call!24303)))

(declare-fun bm!24296 () Bool)

(declare-fun call!24300 () ListLongMap!3831)

(declare-fun getCurrentListMapNoExtraKeys!570 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 32) Int) ListLongMap!3831)

(assert (=> bm!24296 (= call!24300 (getCurrentListMapNoExtraKeys!570 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun b!256425 () Bool)

(declare-fun call!24301 () ListLongMap!3831)

(assert (=> b!256425 (= e!166227 call!24301)))

(declare-fun b!256426 () Bool)

(declare-fun e!166229 () Bool)

(assert (=> b!256426 (= e!166229 e!166228)))

(declare-fun c!43338 () Bool)

(assert (=> b!256426 (= c!43338 (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!256427 () Bool)

(declare-fun e!166232 () Bool)

(assert (=> b!256427 (= e!166228 e!166232)))

(declare-fun res!125470 () Bool)

(assert (=> b!256427 (= res!125470 call!24299)))

(assert (=> b!256427 (=> (not res!125470) (not e!166232))))

(declare-fun bm!24297 () Bool)

(assert (=> bm!24297 (= call!24298 (contains!1863 lt!128814 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256428 () Bool)

(assert (=> b!256428 (= e!166236 (not call!24298))))

(declare-fun b!256429 () Bool)

(declare-fun c!43337 () Bool)

(assert (=> b!256429 (= c!43337 (and (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!166230 () ListLongMap!3831)

(assert (=> b!256429 (= e!166230 e!166227)))

(declare-fun b!256430 () Bool)

(declare-fun e!166235 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!256430 (= e!166235 (validKeyInArray!0 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!256431 () Bool)

(declare-fun apply!251 (ListLongMap!3831 (_ BitVec 64)) V!8419)

(assert (=> b!256431 (= e!166232 (= (apply!251 lt!128814 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4570 thiss!1504)))))

(declare-fun d!61599 () Bool)

(assert (=> d!61599 e!166229))

(declare-fun res!125472 () Bool)

(assert (=> d!61599 (=> (not res!125472) (not e!166229))))

(assert (=> d!61599 (= res!125472 (or (bvsge #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))))))))

(declare-fun lt!128831 () ListLongMap!3831)

(assert (=> d!61599 (= lt!128814 lt!128831)))

(declare-fun lt!128822 () Unit!7949)

(assert (=> d!61599 (= lt!128822 e!166231)))

(declare-fun c!43333 () Bool)

(assert (=> d!61599 (= c!43333 e!166235)))

(declare-fun res!125469 () Bool)

(assert (=> d!61599 (=> (not res!125469) (not e!166235))))

(assert (=> d!61599 (= res!125469 (bvslt #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun e!166233 () ListLongMap!3831)

(assert (=> d!61599 (= lt!128831 e!166233)))

(declare-fun c!43334 () Bool)

(assert (=> d!61599 (= c!43334 (and (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61599 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61599 (= (getCurrentListMap!1454 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)) lt!128814)))

(declare-fun b!256432 () Bool)

(assert (=> b!256432 (= e!166233 e!166230)))

(declare-fun c!43335 () Bool)

(assert (=> b!256432 (= c!43335 (and (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!256433 () Bool)

(declare-fun e!166234 () Bool)

(assert (=> b!256433 (= e!166234 (validKeyInArray!0 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!256434 () Bool)

(assert (=> b!256434 (= e!166239 (= (apply!251 lt!128814 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4570 thiss!1504)))))

(declare-fun b!256435 () Bool)

(assert (=> b!256435 (= e!166233 (+!676 call!24304 (tuple2!4905 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4570 thiss!1504))))))

(declare-fun b!256436 () Bool)

(declare-fun res!125468 () Bool)

(assert (=> b!256436 (=> (not res!125468) (not e!166229))))

(assert (=> b!256436 (= res!125468 e!166236)))

(declare-fun c!43336 () Bool)

(assert (=> b!256436 (= c!43336 (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!24298 () Bool)

(declare-fun call!24302 () ListLongMap!3831)

(assert (=> bm!24298 (= call!24301 call!24302)))

(declare-fun b!256437 () Bool)

(declare-fun res!125467 () Bool)

(assert (=> b!256437 (=> (not res!125467) (not e!166229))))

(assert (=> b!256437 (= res!125467 e!166237)))

(declare-fun res!125466 () Bool)

(assert (=> b!256437 (=> res!125466 e!166237)))

(assert (=> b!256437 (= res!125466 (not e!166234))))

(declare-fun res!125471 () Bool)

(assert (=> b!256437 (=> (not res!125471) (not e!166234))))

(assert (=> b!256437 (= res!125471 (bvslt #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun b!256438 () Bool)

(assert (=> b!256438 (= e!166230 call!24303)))

(declare-fun b!256439 () Bool)

(declare-fun lt!128812 () Unit!7949)

(assert (=> b!256439 (= e!166231 lt!128812)))

(declare-fun lt!128829 () ListLongMap!3831)

(assert (=> b!256439 (= lt!128829 (getCurrentListMapNoExtraKeys!570 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128817 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128817 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128828 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128828 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128825 () Unit!7949)

(declare-fun addStillContains!227 (ListLongMap!3831 (_ BitVec 64) V!8419 (_ BitVec 64)) Unit!7949)

(assert (=> b!256439 (= lt!128825 (addStillContains!227 lt!128829 lt!128817 (zeroValue!4570 thiss!1504) lt!128828))))

(assert (=> b!256439 (contains!1863 (+!676 lt!128829 (tuple2!4905 lt!128817 (zeroValue!4570 thiss!1504))) lt!128828)))

(declare-fun lt!128815 () Unit!7949)

(assert (=> b!256439 (= lt!128815 lt!128825)))

(declare-fun lt!128813 () ListLongMap!3831)

(assert (=> b!256439 (= lt!128813 (getCurrentListMapNoExtraKeys!570 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128827 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128827 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128810 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128810 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128830 () Unit!7949)

(declare-fun addApplyDifferent!227 (ListLongMap!3831 (_ BitVec 64) V!8419 (_ BitVec 64)) Unit!7949)

(assert (=> b!256439 (= lt!128830 (addApplyDifferent!227 lt!128813 lt!128827 (minValue!4570 thiss!1504) lt!128810))))

(assert (=> b!256439 (= (apply!251 (+!676 lt!128813 (tuple2!4905 lt!128827 (minValue!4570 thiss!1504))) lt!128810) (apply!251 lt!128813 lt!128810))))

(declare-fun lt!128826 () Unit!7949)

(assert (=> b!256439 (= lt!128826 lt!128830)))

(declare-fun lt!128819 () ListLongMap!3831)

(assert (=> b!256439 (= lt!128819 (getCurrentListMapNoExtraKeys!570 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128816 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128816 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128811 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128811 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!128821 () Unit!7949)

(assert (=> b!256439 (= lt!128821 (addApplyDifferent!227 lt!128819 lt!128816 (zeroValue!4570 thiss!1504) lt!128811))))

(assert (=> b!256439 (= (apply!251 (+!676 lt!128819 (tuple2!4905 lt!128816 (zeroValue!4570 thiss!1504))) lt!128811) (apply!251 lt!128819 lt!128811))))

(declare-fun lt!128818 () Unit!7949)

(assert (=> b!256439 (= lt!128818 lt!128821)))

(declare-fun lt!128820 () ListLongMap!3831)

(assert (=> b!256439 (= lt!128820 (getCurrentListMapNoExtraKeys!570 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128823 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128823 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128824 () (_ BitVec 64))

(assert (=> b!256439 (= lt!128824 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!256439 (= lt!128812 (addApplyDifferent!227 lt!128820 lt!128823 (minValue!4570 thiss!1504) lt!128824))))

(assert (=> b!256439 (= (apply!251 (+!676 lt!128820 (tuple2!4905 lt!128823 (minValue!4570 thiss!1504))) lt!128824) (apply!251 lt!128820 lt!128824))))

(declare-fun b!256440 () Bool)

(declare-fun get!3045 (ValueCell!2946 V!8419) V!8419)

(declare-fun dynLambda!589 (Int (_ BitVec 64)) V!8419)

(assert (=> b!256440 (= e!166238 (= (apply!251 lt!128814 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000)) (get!3045 (select (arr!5919 (_values!4712 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!589 (defaultEntry!4729 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!256440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6266 (_values!4712 thiss!1504))))))

(assert (=> b!256440 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun bm!24299 () Bool)

(assert (=> bm!24299 (= call!24299 (contains!1863 lt!128814 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24300 () Bool)

(assert (=> bm!24300 (= call!24302 call!24300)))

(declare-fun bm!24301 () Bool)

(assert (=> bm!24301 (= call!24304 (+!676 (ite c!43334 call!24300 (ite c!43335 call!24302 call!24301)) (ite (or c!43334 c!43335) (tuple2!4905 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4570 thiss!1504)) (tuple2!4905 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4570 thiss!1504)))))))

(assert (= (and d!61599 c!43334) b!256435))

(assert (= (and d!61599 (not c!43334)) b!256432))

(assert (= (and b!256432 c!43335) b!256438))

(assert (= (and b!256432 (not c!43335)) b!256429))

(assert (= (and b!256429 c!43337) b!256424))

(assert (= (and b!256429 (not c!43337)) b!256425))

(assert (= (or b!256424 b!256425) bm!24298))

(assert (= (or b!256438 bm!24298) bm!24300))

(assert (= (or b!256438 b!256424) bm!24295))

(assert (= (or b!256435 bm!24300) bm!24296))

(assert (= (or b!256435 bm!24295) bm!24301))

(assert (= (and d!61599 res!125469) b!256430))

(assert (= (and d!61599 c!43333) b!256439))

(assert (= (and d!61599 (not c!43333)) b!256422))

(assert (= (and d!61599 res!125472) b!256437))

(assert (= (and b!256437 res!125471) b!256433))

(assert (= (and b!256437 (not res!125466)) b!256423))

(assert (= (and b!256423 res!125464) b!256440))

(assert (= (and b!256437 res!125467) b!256436))

(assert (= (and b!256436 c!43336) b!256421))

(assert (= (and b!256436 (not c!43336)) b!256428))

(assert (= (and b!256421 res!125465) b!256434))

(assert (= (or b!256421 b!256428) bm!24297))

(assert (= (and b!256436 res!125468) b!256426))

(assert (= (and b!256426 c!43338) b!256427))

(assert (= (and b!256426 (not c!43338)) b!256420))

(assert (= (and b!256427 res!125470) b!256431))

(assert (= (or b!256427 b!256420) bm!24299))

(declare-fun b_lambda!8193 () Bool)

(assert (=> (not b_lambda!8193) (not b!256440)))

(declare-fun t!8876 () Bool)

(declare-fun tb!3023 () Bool)

(assert (=> (and b!256262 (= (defaultEntry!4729 thiss!1504) (defaultEntry!4729 thiss!1504)) t!8876) tb!3023))

(declare-fun result!5375 () Bool)

(assert (=> tb!3023 (= result!5375 tp_is_empty!6579)))

(assert (=> b!256440 t!8876))

(declare-fun b_and!13797 () Bool)

(assert (= b_and!13793 (and (=> t!8876 result!5375) b_and!13797)))

(declare-fun m!271803 () Bool)

(assert (=> b!256435 m!271803))

(declare-fun m!271805 () Bool)

(assert (=> b!256423 m!271805))

(assert (=> b!256423 m!271805))

(declare-fun m!271807 () Bool)

(assert (=> b!256423 m!271807))

(declare-fun m!271809 () Bool)

(assert (=> bm!24296 m!271809))

(declare-fun m!271811 () Bool)

(assert (=> bm!24297 m!271811))

(assert (=> b!256433 m!271805))

(assert (=> b!256433 m!271805))

(declare-fun m!271813 () Bool)

(assert (=> b!256433 m!271813))

(declare-fun m!271815 () Bool)

(assert (=> bm!24299 m!271815))

(declare-fun m!271817 () Bool)

(assert (=> b!256431 m!271817))

(assert (=> b!256439 m!271809))

(declare-fun m!271819 () Bool)

(assert (=> b!256439 m!271819))

(declare-fun m!271821 () Bool)

(assert (=> b!256439 m!271821))

(declare-fun m!271823 () Bool)

(assert (=> b!256439 m!271823))

(declare-fun m!271825 () Bool)

(assert (=> b!256439 m!271825))

(declare-fun m!271827 () Bool)

(assert (=> b!256439 m!271827))

(declare-fun m!271829 () Bool)

(assert (=> b!256439 m!271829))

(declare-fun m!271831 () Bool)

(assert (=> b!256439 m!271831))

(declare-fun m!271833 () Bool)

(assert (=> b!256439 m!271833))

(declare-fun m!271835 () Bool)

(assert (=> b!256439 m!271835))

(assert (=> b!256439 m!271805))

(declare-fun m!271837 () Bool)

(assert (=> b!256439 m!271837))

(assert (=> b!256439 m!271833))

(declare-fun m!271839 () Bool)

(assert (=> b!256439 m!271839))

(assert (=> b!256439 m!271821))

(declare-fun m!271841 () Bool)

(assert (=> b!256439 m!271841))

(declare-fun m!271843 () Bool)

(assert (=> b!256439 m!271843))

(declare-fun m!271845 () Bool)

(assert (=> b!256439 m!271845))

(assert (=> b!256439 m!271829))

(assert (=> b!256439 m!271843))

(declare-fun m!271847 () Bool)

(assert (=> b!256439 m!271847))

(declare-fun m!271849 () Bool)

(assert (=> bm!24301 m!271849))

(declare-fun m!271851 () Bool)

(assert (=> b!256440 m!271851))

(declare-fun m!271853 () Bool)

(assert (=> b!256440 m!271853))

(declare-fun m!271855 () Bool)

(assert (=> b!256440 m!271855))

(assert (=> b!256440 m!271805))

(declare-fun m!271857 () Bool)

(assert (=> b!256440 m!271857))

(assert (=> b!256440 m!271853))

(assert (=> b!256440 m!271805))

(assert (=> b!256440 m!271851))

(declare-fun m!271859 () Bool)

(assert (=> b!256434 m!271859))

(assert (=> b!256430 m!271805))

(assert (=> b!256430 m!271805))

(assert (=> b!256430 m!271813))

(assert (=> d!61599 m!271777))

(assert (=> b!256258 d!61599))

(declare-fun d!61601 () Bool)

(assert (=> d!61601 (= (array_inv!3903 (_keys!6891 thiss!1504)) (bvsge (size!6267 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!256262 d!61601))

(declare-fun d!61603 () Bool)

(assert (=> d!61603 (= (array_inv!3904 (_values!4712 thiss!1504)) (bvsge (size!6266 (_values!4712 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!256262 d!61603))

(declare-fun b!256452 () Bool)

(declare-fun res!125484 () Bool)

(declare-fun e!166245 () Bool)

(assert (=> b!256452 (=> (not res!125484) (not e!166245))))

(assert (=> b!256452 (= res!125484 (validKeyInArray!0 key!932))))

(declare-fun b!256454 () Bool)

(declare-fun e!166244 () Bool)

(assert (=> b!256454 (= e!166244 (= (arrayCountValidKeys!0 (array!12499 (store (arr!5920 (_keys!6891 thiss!1504)) index!297 key!932) (size!6267 (_keys!6891 thiss!1504))) #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6891 thiss!1504) #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun d!61605 () Bool)

(assert (=> d!61605 e!166244))

(declare-fun res!125483 () Bool)

(assert (=> d!61605 (=> (not res!125483) (not e!166244))))

(assert (=> d!61605 (= res!125483 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6267 (_keys!6891 thiss!1504)))))))

(declare-fun lt!128834 () Unit!7949)

(declare-fun choose!1 (array!12498 (_ BitVec 32) (_ BitVec 64)) Unit!7949)

(assert (=> d!61605 (= lt!128834 (choose!1 (_keys!6891 thiss!1504) index!297 key!932))))

(assert (=> d!61605 e!166245))

(declare-fun res!125481 () Bool)

(assert (=> d!61605 (=> (not res!125481) (not e!166245))))

(assert (=> d!61605 (= res!125481 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6267 (_keys!6891 thiss!1504)))))))

(assert (=> d!61605 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6891 thiss!1504) index!297 key!932) lt!128834)))

(declare-fun b!256453 () Bool)

(assert (=> b!256453 (= e!166245 (bvslt (size!6267 (_keys!6891 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!256451 () Bool)

(declare-fun res!125482 () Bool)

(assert (=> b!256451 (=> (not res!125482) (not e!166245))))

(assert (=> b!256451 (= res!125482 (not (validKeyInArray!0 (select (arr!5920 (_keys!6891 thiss!1504)) index!297))))))

(assert (= (and d!61605 res!125481) b!256451))

(assert (= (and b!256451 res!125482) b!256452))

(assert (= (and b!256452 res!125484) b!256453))

(assert (= (and d!61605 res!125483) b!256454))

(declare-fun m!271861 () Bool)

(assert (=> b!256452 m!271861))

(assert (=> b!256454 m!271705))

(declare-fun m!271863 () Bool)

(assert (=> b!256454 m!271863))

(assert (=> b!256454 m!271707))

(declare-fun m!271865 () Bool)

(assert (=> d!61605 m!271865))

(declare-fun m!271867 () Bool)

(assert (=> b!256451 m!271867))

(assert (=> b!256451 m!271867))

(declare-fun m!271869 () Bool)

(assert (=> b!256451 m!271869))

(assert (=> b!256249 d!61605))

(declare-fun b!256455 () Bool)

(declare-fun e!166247 () Bool)

(declare-fun call!24306 () Bool)

(assert (=> b!256455 (= e!166247 (not call!24306))))

(declare-fun bm!24302 () Bool)

(declare-fun call!24310 () ListLongMap!3831)

(declare-fun call!24311 () ListLongMap!3831)

(assert (=> bm!24302 (= call!24310 call!24311)))

(declare-fun b!256456 () Bool)

(declare-fun e!166255 () Bool)

(declare-fun e!166258 () Bool)

(assert (=> b!256456 (= e!166255 e!166258)))

(declare-fun res!125486 () Bool)

(declare-fun call!24305 () Bool)

(assert (=> b!256456 (= res!125486 call!24305)))

(assert (=> b!256456 (=> (not res!125486) (not e!166258))))

(declare-fun b!256457 () Bool)

(declare-fun e!166250 () Unit!7949)

(declare-fun Unit!7961 () Unit!7949)

(assert (=> b!256457 (= e!166250 Unit!7961)))

(declare-fun b!256458 () Bool)

(declare-fun e!166256 () Bool)

(declare-fun e!166257 () Bool)

(assert (=> b!256458 (= e!166256 e!166257)))

(declare-fun res!125485 () Bool)

(assert (=> b!256458 (=> (not res!125485) (not e!166257))))

(declare-fun lt!128839 () ListLongMap!3831)

(assert (=> b!256458 (= res!125485 (contains!1863 lt!128839 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(assert (=> b!256458 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6267 lt!128694)))))

(declare-fun b!256459 () Bool)

(declare-fun e!166246 () ListLongMap!3831)

(assert (=> b!256459 (= e!166246 call!24310)))

(declare-fun call!24307 () ListLongMap!3831)

(declare-fun bm!24303 () Bool)

(assert (=> bm!24303 (= call!24307 (getCurrentListMapNoExtraKeys!570 lt!128694 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun b!256460 () Bool)

(declare-fun call!24308 () ListLongMap!3831)

(assert (=> b!256460 (= e!166246 call!24308)))

(declare-fun b!256461 () Bool)

(declare-fun e!166248 () Bool)

(assert (=> b!256461 (= e!166248 e!166247)))

(declare-fun c!43344 () Bool)

(assert (=> b!256461 (= c!43344 (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!256462 () Bool)

(declare-fun e!166251 () Bool)

(assert (=> b!256462 (= e!166247 e!166251)))

(declare-fun res!125491 () Bool)

(assert (=> b!256462 (= res!125491 call!24306)))

(assert (=> b!256462 (=> (not res!125491) (not e!166251))))

(declare-fun bm!24304 () Bool)

(assert (=> bm!24304 (= call!24305 (contains!1863 lt!128839 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!256463 () Bool)

(assert (=> b!256463 (= e!166255 (not call!24305))))

(declare-fun b!256464 () Bool)

(declare-fun c!43343 () Bool)

(assert (=> b!256464 (= c!43343 (and (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!166249 () ListLongMap!3831)

(assert (=> b!256464 (= e!166249 e!166246)))

(declare-fun b!256465 () Bool)

(declare-fun e!166254 () Bool)

(assert (=> b!256465 (= e!166254 (validKeyInArray!0 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(declare-fun b!256466 () Bool)

(assert (=> b!256466 (= e!166251 (= (apply!251 lt!128839 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4570 thiss!1504)))))

(declare-fun d!61607 () Bool)

(assert (=> d!61607 e!166248))

(declare-fun res!125493 () Bool)

(assert (=> d!61607 (=> (not res!125493) (not e!166248))))

(assert (=> d!61607 (= res!125493 (or (bvsge #b00000000000000000000000000000000 (size!6267 lt!128694)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6267 lt!128694)))))))

(declare-fun lt!128856 () ListLongMap!3831)

(assert (=> d!61607 (= lt!128839 lt!128856)))

(declare-fun lt!128847 () Unit!7949)

(assert (=> d!61607 (= lt!128847 e!166250)))

(declare-fun c!43339 () Bool)

(assert (=> d!61607 (= c!43339 e!166254)))

(declare-fun res!125490 () Bool)

(assert (=> d!61607 (=> (not res!125490) (not e!166254))))

(assert (=> d!61607 (= res!125490 (bvslt #b00000000000000000000000000000000 (size!6267 lt!128694)))))

(declare-fun e!166252 () ListLongMap!3831)

(assert (=> d!61607 (= lt!128856 e!166252)))

(declare-fun c!43340 () Bool)

(assert (=> d!61607 (= c!43340 (and (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61607 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61607 (= (getCurrentListMap!1454 lt!128694 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)) lt!128839)))

(declare-fun b!256467 () Bool)

(assert (=> b!256467 (= e!166252 e!166249)))

(declare-fun c!43341 () Bool)

(assert (=> b!256467 (= c!43341 (and (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!256468 () Bool)

(declare-fun e!166253 () Bool)

(assert (=> b!256468 (= e!166253 (validKeyInArray!0 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(declare-fun b!256469 () Bool)

(assert (=> b!256469 (= e!166258 (= (apply!251 lt!128839 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4570 thiss!1504)))))

(declare-fun b!256470 () Bool)

(assert (=> b!256470 (= e!166252 (+!676 call!24311 (tuple2!4905 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4570 thiss!1504))))))

(declare-fun b!256471 () Bool)

(declare-fun res!125489 () Bool)

(assert (=> b!256471 (=> (not res!125489) (not e!166248))))

(assert (=> b!256471 (= res!125489 e!166255)))

(declare-fun c!43342 () Bool)

(assert (=> b!256471 (= c!43342 (not (= (bvand (extraKeys!4466 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun bm!24305 () Bool)

(declare-fun call!24309 () ListLongMap!3831)

(assert (=> bm!24305 (= call!24308 call!24309)))

(declare-fun b!256472 () Bool)

(declare-fun res!125488 () Bool)

(assert (=> b!256472 (=> (not res!125488) (not e!166248))))

(assert (=> b!256472 (= res!125488 e!166256)))

(declare-fun res!125487 () Bool)

(assert (=> b!256472 (=> res!125487 e!166256)))

(assert (=> b!256472 (= res!125487 (not e!166253))))

(declare-fun res!125492 () Bool)

(assert (=> b!256472 (=> (not res!125492) (not e!166253))))

(assert (=> b!256472 (= res!125492 (bvslt #b00000000000000000000000000000000 (size!6267 lt!128694)))))

(declare-fun b!256473 () Bool)

(assert (=> b!256473 (= e!166249 call!24310)))

(declare-fun b!256474 () Bool)

(declare-fun lt!128837 () Unit!7949)

(assert (=> b!256474 (= e!166250 lt!128837)))

(declare-fun lt!128854 () ListLongMap!3831)

(assert (=> b!256474 (= lt!128854 (getCurrentListMapNoExtraKeys!570 lt!128694 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128842 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128842 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128853 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128853 (select (arr!5920 lt!128694) #b00000000000000000000000000000000))))

(declare-fun lt!128850 () Unit!7949)

(assert (=> b!256474 (= lt!128850 (addStillContains!227 lt!128854 lt!128842 (zeroValue!4570 thiss!1504) lt!128853))))

(assert (=> b!256474 (contains!1863 (+!676 lt!128854 (tuple2!4905 lt!128842 (zeroValue!4570 thiss!1504))) lt!128853)))

(declare-fun lt!128840 () Unit!7949)

(assert (=> b!256474 (= lt!128840 lt!128850)))

(declare-fun lt!128838 () ListLongMap!3831)

(assert (=> b!256474 (= lt!128838 (getCurrentListMapNoExtraKeys!570 lt!128694 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128852 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128852 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128835 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128835 (select (arr!5920 lt!128694) #b00000000000000000000000000000000))))

(declare-fun lt!128855 () Unit!7949)

(assert (=> b!256474 (= lt!128855 (addApplyDifferent!227 lt!128838 lt!128852 (minValue!4570 thiss!1504) lt!128835))))

(assert (=> b!256474 (= (apply!251 (+!676 lt!128838 (tuple2!4905 lt!128852 (minValue!4570 thiss!1504))) lt!128835) (apply!251 lt!128838 lt!128835))))

(declare-fun lt!128851 () Unit!7949)

(assert (=> b!256474 (= lt!128851 lt!128855)))

(declare-fun lt!128844 () ListLongMap!3831)

(assert (=> b!256474 (= lt!128844 (getCurrentListMapNoExtraKeys!570 lt!128694 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128841 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128841 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128836 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128836 (select (arr!5920 lt!128694) #b00000000000000000000000000000000))))

(declare-fun lt!128846 () Unit!7949)

(assert (=> b!256474 (= lt!128846 (addApplyDifferent!227 lt!128844 lt!128841 (zeroValue!4570 thiss!1504) lt!128836))))

(assert (=> b!256474 (= (apply!251 (+!676 lt!128844 (tuple2!4905 lt!128841 (zeroValue!4570 thiss!1504))) lt!128836) (apply!251 lt!128844 lt!128836))))

(declare-fun lt!128843 () Unit!7949)

(assert (=> b!256474 (= lt!128843 lt!128846)))

(declare-fun lt!128845 () ListLongMap!3831)

(assert (=> b!256474 (= lt!128845 (getCurrentListMapNoExtraKeys!570 lt!128694 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)))))

(declare-fun lt!128848 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128848 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!128849 () (_ BitVec 64))

(assert (=> b!256474 (= lt!128849 (select (arr!5920 lt!128694) #b00000000000000000000000000000000))))

(assert (=> b!256474 (= lt!128837 (addApplyDifferent!227 lt!128845 lt!128848 (minValue!4570 thiss!1504) lt!128849))))

(assert (=> b!256474 (= (apply!251 (+!676 lt!128845 (tuple2!4905 lt!128848 (minValue!4570 thiss!1504))) lt!128849) (apply!251 lt!128845 lt!128849))))

(declare-fun b!256475 () Bool)

(assert (=> b!256475 (= e!166257 (= (apply!251 lt!128839 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)) (get!3045 (select (arr!5919 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!589 (defaultEntry!4729 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!256475 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6266 (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))))))))

(assert (=> b!256475 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6267 lt!128694)))))

(declare-fun bm!24306 () Bool)

(assert (=> bm!24306 (= call!24306 (contains!1863 lt!128839 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24307 () Bool)

(assert (=> bm!24307 (= call!24309 call!24307)))

(declare-fun bm!24308 () Bool)

(assert (=> bm!24308 (= call!24311 (+!676 (ite c!43340 call!24307 (ite c!43341 call!24309 call!24308)) (ite (or c!43340 c!43341) (tuple2!4905 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4570 thiss!1504)) (tuple2!4905 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4570 thiss!1504)))))))

(assert (= (and d!61607 c!43340) b!256470))

(assert (= (and d!61607 (not c!43340)) b!256467))

(assert (= (and b!256467 c!43341) b!256473))

(assert (= (and b!256467 (not c!43341)) b!256464))

(assert (= (and b!256464 c!43343) b!256459))

(assert (= (and b!256464 (not c!43343)) b!256460))

(assert (= (or b!256459 b!256460) bm!24305))

(assert (= (or b!256473 bm!24305) bm!24307))

(assert (= (or b!256473 b!256459) bm!24302))

(assert (= (or b!256470 bm!24307) bm!24303))

(assert (= (or b!256470 bm!24302) bm!24308))

(assert (= (and d!61607 res!125490) b!256465))

(assert (= (and d!61607 c!43339) b!256474))

(assert (= (and d!61607 (not c!43339)) b!256457))

(assert (= (and d!61607 res!125493) b!256472))

(assert (= (and b!256472 res!125492) b!256468))

(assert (= (and b!256472 (not res!125487)) b!256458))

(assert (= (and b!256458 res!125485) b!256475))

(assert (= (and b!256472 res!125488) b!256471))

(assert (= (and b!256471 c!43342) b!256456))

(assert (= (and b!256471 (not c!43342)) b!256463))

(assert (= (and b!256456 res!125486) b!256469))

(assert (= (or b!256456 b!256463) bm!24304))

(assert (= (and b!256471 res!125489) b!256461))

(assert (= (and b!256461 c!43344) b!256462))

(assert (= (and b!256461 (not c!43344)) b!256455))

(assert (= (and b!256462 res!125491) b!256466))

(assert (= (or b!256462 b!256455) bm!24306))

(declare-fun b_lambda!8195 () Bool)

(assert (=> (not b_lambda!8195) (not b!256475)))

(assert (=> b!256475 t!8876))

(declare-fun b_and!13799 () Bool)

(assert (= b_and!13797 (and (=> t!8876 result!5375) b_and!13799)))

(declare-fun m!271871 () Bool)

(assert (=> b!256470 m!271871))

(declare-fun m!271873 () Bool)

(assert (=> b!256458 m!271873))

(assert (=> b!256458 m!271873))

(declare-fun m!271875 () Bool)

(assert (=> b!256458 m!271875))

(declare-fun m!271877 () Bool)

(assert (=> bm!24303 m!271877))

(declare-fun m!271879 () Bool)

(assert (=> bm!24304 m!271879))

(assert (=> b!256468 m!271873))

(assert (=> b!256468 m!271873))

(declare-fun m!271881 () Bool)

(assert (=> b!256468 m!271881))

(declare-fun m!271883 () Bool)

(assert (=> bm!24306 m!271883))

(declare-fun m!271885 () Bool)

(assert (=> b!256466 m!271885))

(assert (=> b!256474 m!271877))

(declare-fun m!271887 () Bool)

(assert (=> b!256474 m!271887))

(declare-fun m!271889 () Bool)

(assert (=> b!256474 m!271889))

(declare-fun m!271891 () Bool)

(assert (=> b!256474 m!271891))

(declare-fun m!271893 () Bool)

(assert (=> b!256474 m!271893))

(declare-fun m!271895 () Bool)

(assert (=> b!256474 m!271895))

(declare-fun m!271897 () Bool)

(assert (=> b!256474 m!271897))

(declare-fun m!271899 () Bool)

(assert (=> b!256474 m!271899))

(declare-fun m!271901 () Bool)

(assert (=> b!256474 m!271901))

(declare-fun m!271903 () Bool)

(assert (=> b!256474 m!271903))

(assert (=> b!256474 m!271873))

(declare-fun m!271905 () Bool)

(assert (=> b!256474 m!271905))

(assert (=> b!256474 m!271901))

(declare-fun m!271907 () Bool)

(assert (=> b!256474 m!271907))

(assert (=> b!256474 m!271889))

(declare-fun m!271909 () Bool)

(assert (=> b!256474 m!271909))

(declare-fun m!271911 () Bool)

(assert (=> b!256474 m!271911))

(declare-fun m!271913 () Bool)

(assert (=> b!256474 m!271913))

(assert (=> b!256474 m!271897))

(assert (=> b!256474 m!271911))

(declare-fun m!271915 () Bool)

(assert (=> b!256474 m!271915))

(declare-fun m!271917 () Bool)

(assert (=> bm!24308 m!271917))

(declare-fun m!271919 () Bool)

(assert (=> b!256475 m!271919))

(assert (=> b!256475 m!271853))

(declare-fun m!271921 () Bool)

(assert (=> b!256475 m!271921))

(assert (=> b!256475 m!271873))

(declare-fun m!271923 () Bool)

(assert (=> b!256475 m!271923))

(assert (=> b!256475 m!271853))

(assert (=> b!256475 m!271873))

(assert (=> b!256475 m!271919))

(declare-fun m!271925 () Bool)

(assert (=> b!256469 m!271925))

(assert (=> b!256465 m!271873))

(assert (=> b!256465 m!271873))

(assert (=> b!256465 m!271881))

(assert (=> d!61607 m!271777))

(assert (=> b!256249 d!61607))

(declare-fun b!256484 () Bool)

(declare-fun e!166264 () (_ BitVec 32))

(declare-fun e!166263 () (_ BitVec 32))

(assert (=> b!256484 (= e!166264 e!166263)))

(declare-fun c!43349 () Bool)

(assert (=> b!256484 (= c!43349 (validKeyInArray!0 (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24311 () Bool)

(declare-fun call!24314 () (_ BitVec 32))

(assert (=> bm!24311 (= call!24314 (arrayCountValidKeys!0 (_keys!6891 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun b!256485 () Bool)

(assert (=> b!256485 (= e!166264 #b00000000000000000000000000000000)))

(declare-fun d!61609 () Bool)

(declare-fun lt!128859 () (_ BitVec 32))

(assert (=> d!61609 (and (bvsge lt!128859 #b00000000000000000000000000000000) (bvsle lt!128859 (bvsub (size!6267 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61609 (= lt!128859 e!166264)))

(declare-fun c!43350 () Bool)

(assert (=> d!61609 (= c!43350 (bvsge #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))))))

(assert (=> d!61609 (and (bvsle #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6267 (_keys!6891 thiss!1504)) (size!6267 (_keys!6891 thiss!1504))))))

(assert (=> d!61609 (= (arrayCountValidKeys!0 (_keys!6891 thiss!1504) #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) lt!128859)))

(declare-fun b!256486 () Bool)

(assert (=> b!256486 (= e!166263 call!24314)))

(declare-fun b!256487 () Bool)

(assert (=> b!256487 (= e!166263 (bvadd #b00000000000000000000000000000001 call!24314))))

(assert (= (and d!61609 c!43350) b!256485))

(assert (= (and d!61609 (not c!43350)) b!256484))

(assert (= (and b!256484 c!43349) b!256487))

(assert (= (and b!256484 (not c!43349)) b!256486))

(assert (= (or b!256487 b!256486) bm!24311))

(assert (=> b!256484 m!271805))

(assert (=> b!256484 m!271805))

(assert (=> b!256484 m!271813))

(declare-fun m!271927 () Bool)

(assert (=> bm!24311 m!271927))

(assert (=> b!256249 d!61609))

(declare-fun d!61611 () Bool)

(declare-fun e!166267 () Bool)

(assert (=> d!61611 e!166267))

(declare-fun res!125496 () Bool)

(assert (=> d!61611 (=> (not res!125496) (not e!166267))))

(assert (=> d!61611 (= res!125496 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6267 (_keys!6891 thiss!1504))) (bvslt index!297 (size!6266 (_values!4712 thiss!1504)))))))

(declare-fun lt!128862 () Unit!7949)

(declare-fun choose!1239 (array!12498 array!12496 (_ BitVec 32) (_ BitVec 32) V!8419 V!8419 (_ BitVec 32) (_ BitVec 64) V!8419 Int) Unit!7949)

(assert (=> d!61611 (= lt!128862 (choose!1239 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) index!297 key!932 v!346 (defaultEntry!4729 thiss!1504)))))

(assert (=> d!61611 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61611 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!91 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) index!297 key!932 v!346 (defaultEntry!4729 thiss!1504)) lt!128862)))

(declare-fun b!256490 () Bool)

(assert (=> b!256490 (= e!166267 (= (+!676 (getCurrentListMap!1454 (_keys!6891 thiss!1504) (_values!4712 thiss!1504) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504)) (tuple2!4905 key!932 v!346)) (getCurrentListMap!1454 (array!12499 (store (arr!5920 (_keys!6891 thiss!1504)) index!297 key!932) (size!6267 (_keys!6891 thiss!1504))) (array!12497 (store (arr!5919 (_values!4712 thiss!1504)) index!297 (ValueCellFull!2946 v!346)) (size!6266 (_values!4712 thiss!1504))) (mask!11001 thiss!1504) (extraKeys!4466 thiss!1504) (zeroValue!4570 thiss!1504) (minValue!4570 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4729 thiss!1504))))))

(assert (= (and d!61611 res!125496) b!256490))

(declare-fun m!271929 () Bool)

(assert (=> d!61611 m!271929))

(assert (=> d!61611 m!271777))

(declare-fun m!271931 () Bool)

(assert (=> b!256490 m!271931))

(assert (=> b!256490 m!271673))

(declare-fun m!271933 () Bool)

(assert (=> b!256490 m!271933))

(assert (=> b!256490 m!271691))

(assert (=> b!256490 m!271705))

(assert (=> b!256490 m!271673))

(assert (=> b!256249 d!61611))

(declare-fun d!61613 () Bool)

(declare-fun e!166270 () Bool)

(assert (=> d!61613 e!166270))

(declare-fun res!125501 () Bool)

(assert (=> d!61613 (=> (not res!125501) (not e!166270))))

(declare-fun lt!128873 () ListLongMap!3831)

(assert (=> d!61613 (= res!125501 (contains!1863 lt!128873 (_1!2462 (tuple2!4905 key!932 v!346))))))

(declare-fun lt!128871 () List!3808)

(assert (=> d!61613 (= lt!128873 (ListLongMap!3832 lt!128871))))

(declare-fun lt!128872 () Unit!7949)

(declare-fun lt!128874 () Unit!7949)

(assert (=> d!61613 (= lt!128872 lt!128874)))

(assert (=> d!61613 (= (getValueByKey!308 lt!128871 (_1!2462 (tuple2!4905 key!932 v!346))) (Some!313 (_2!2462 (tuple2!4905 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!166 (List!3808 (_ BitVec 64) V!8419) Unit!7949)

(assert (=> d!61613 (= lt!128874 (lemmaContainsTupThenGetReturnValue!166 lt!128871 (_1!2462 (tuple2!4905 key!932 v!346)) (_2!2462 (tuple2!4905 key!932 v!346))))))

(declare-fun insertStrictlySorted!168 (List!3808 (_ BitVec 64) V!8419) List!3808)

(assert (=> d!61613 (= lt!128871 (insertStrictlySorted!168 (toList!1931 lt!128691) (_1!2462 (tuple2!4905 key!932 v!346)) (_2!2462 (tuple2!4905 key!932 v!346))))))

(assert (=> d!61613 (= (+!676 lt!128691 (tuple2!4905 key!932 v!346)) lt!128873)))

(declare-fun b!256495 () Bool)

(declare-fun res!125502 () Bool)

(assert (=> b!256495 (=> (not res!125502) (not e!166270))))

(assert (=> b!256495 (= res!125502 (= (getValueByKey!308 (toList!1931 lt!128873) (_1!2462 (tuple2!4905 key!932 v!346))) (Some!313 (_2!2462 (tuple2!4905 key!932 v!346)))))))

(declare-fun b!256496 () Bool)

(declare-fun contains!1864 (List!3808 tuple2!4904) Bool)

(assert (=> b!256496 (= e!166270 (contains!1864 (toList!1931 lt!128873) (tuple2!4905 key!932 v!346)))))

(assert (= (and d!61613 res!125501) b!256495))

(assert (= (and b!256495 res!125502) b!256496))

(declare-fun m!271935 () Bool)

(assert (=> d!61613 m!271935))

(declare-fun m!271937 () Bool)

(assert (=> d!61613 m!271937))

(declare-fun m!271939 () Bool)

(assert (=> d!61613 m!271939))

(declare-fun m!271941 () Bool)

(assert (=> d!61613 m!271941))

(declare-fun m!271943 () Bool)

(assert (=> b!256495 m!271943))

(declare-fun m!271945 () Bool)

(assert (=> b!256496 m!271945))

(assert (=> b!256249 d!61613))

(declare-fun d!61615 () Bool)

(declare-fun res!125509 () Bool)

(declare-fun e!166282 () Bool)

(assert (=> d!61615 (=> res!125509 e!166282)))

(assert (=> d!61615 (= res!125509 (bvsge #b00000000000000000000000000000000 (size!6267 lt!128694)))))

(assert (=> d!61615 (= (arrayNoDuplicates!0 lt!128694 #b00000000000000000000000000000000 Nil!3806) e!166282)))

(declare-fun b!256507 () Bool)

(declare-fun e!166280 () Bool)

(declare-fun e!166279 () Bool)

(assert (=> b!256507 (= e!166280 e!166279)))

(declare-fun c!43353 () Bool)

(assert (=> b!256507 (= c!43353 (validKeyInArray!0 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(declare-fun b!256508 () Bool)

(declare-fun call!24317 () Bool)

(assert (=> b!256508 (= e!166279 call!24317)))

(declare-fun bm!24314 () Bool)

(assert (=> bm!24314 (= call!24317 (arrayNoDuplicates!0 lt!128694 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!43353 (Cons!3805 (select (arr!5920 lt!128694) #b00000000000000000000000000000000) Nil!3806) Nil!3806)))))

(declare-fun b!256509 () Bool)

(declare-fun e!166281 () Bool)

(declare-fun contains!1865 (List!3809 (_ BitVec 64)) Bool)

(assert (=> b!256509 (= e!166281 (contains!1865 Nil!3806 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(declare-fun b!256510 () Bool)

(assert (=> b!256510 (= e!166279 call!24317)))

(declare-fun b!256511 () Bool)

(assert (=> b!256511 (= e!166282 e!166280)))

(declare-fun res!125511 () Bool)

(assert (=> b!256511 (=> (not res!125511) (not e!166280))))

(assert (=> b!256511 (= res!125511 (not e!166281))))

(declare-fun res!125510 () Bool)

(assert (=> b!256511 (=> (not res!125510) (not e!166281))))

(assert (=> b!256511 (= res!125510 (validKeyInArray!0 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(assert (= (and d!61615 (not res!125509)) b!256511))

(assert (= (and b!256511 res!125510) b!256509))

(assert (= (and b!256511 res!125511) b!256507))

(assert (= (and b!256507 c!43353) b!256510))

(assert (= (and b!256507 (not c!43353)) b!256508))

(assert (= (or b!256510 b!256508) bm!24314))

(assert (=> b!256507 m!271873))

(assert (=> b!256507 m!271873))

(assert (=> b!256507 m!271881))

(assert (=> bm!24314 m!271873))

(declare-fun m!271947 () Bool)

(assert (=> bm!24314 m!271947))

(assert (=> b!256509 m!271873))

(assert (=> b!256509 m!271873))

(declare-fun m!271949 () Bool)

(assert (=> b!256509 m!271949))

(assert (=> b!256511 m!271873))

(assert (=> b!256511 m!271873))

(assert (=> b!256511 m!271881))

(assert (=> b!256249 d!61615))

(declare-fun d!61617 () Bool)

(declare-fun e!166285 () Bool)

(assert (=> d!61617 e!166285))

(declare-fun res!125514 () Bool)

(assert (=> d!61617 (=> (not res!125514) (not e!166285))))

(assert (=> d!61617 (= res!125514 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6267 (_keys!6891 thiss!1504)))))))

(declare-fun lt!128877 () Unit!7949)

(declare-fun choose!41 (array!12498 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3809) Unit!7949)

(assert (=> d!61617 (= lt!128877 (choose!41 (_keys!6891 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3806))))

(assert (=> d!61617 (bvslt (size!6267 (_keys!6891 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61617 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6891 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3806) lt!128877)))

(declare-fun b!256514 () Bool)

(assert (=> b!256514 (= e!166285 (arrayNoDuplicates!0 (array!12499 (store (arr!5920 (_keys!6891 thiss!1504)) index!297 key!932) (size!6267 (_keys!6891 thiss!1504))) #b00000000000000000000000000000000 Nil!3806))))

(assert (= (and d!61617 res!125514) b!256514))

(declare-fun m!271951 () Bool)

(assert (=> d!61617 m!271951))

(assert (=> b!256514 m!271705))

(declare-fun m!271953 () Bool)

(assert (=> b!256514 m!271953))

(assert (=> b!256249 d!61617))

(declare-fun b!256523 () Bool)

(declare-fun e!166292 () Bool)

(declare-fun call!24320 () Bool)

(assert (=> b!256523 (= e!166292 call!24320)))

(declare-fun b!256524 () Bool)

(declare-fun e!166293 () Bool)

(assert (=> b!256524 (= e!166293 call!24320)))

(declare-fun bm!24317 () Bool)

(assert (=> bm!24317 (= call!24320 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!128694 (mask!11001 thiss!1504)))))

(declare-fun b!256525 () Bool)

(declare-fun e!166294 () Bool)

(assert (=> b!256525 (= e!166294 e!166292)))

(declare-fun c!43356 () Bool)

(assert (=> b!256525 (= c!43356 (validKeyInArray!0 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(declare-fun b!256526 () Bool)

(assert (=> b!256526 (= e!166292 e!166293)))

(declare-fun lt!128885 () (_ BitVec 64))

(assert (=> b!256526 (= lt!128885 (select (arr!5920 lt!128694) #b00000000000000000000000000000000))))

(declare-fun lt!128886 () Unit!7949)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12498 (_ BitVec 64) (_ BitVec 32)) Unit!7949)

(assert (=> b!256526 (= lt!128886 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!128694 lt!128885 #b00000000000000000000000000000000))))

(assert (=> b!256526 (arrayContainsKey!0 lt!128694 lt!128885 #b00000000000000000000000000000000)))

(declare-fun lt!128884 () Unit!7949)

(assert (=> b!256526 (= lt!128884 lt!128886)))

(declare-fun res!125519 () Bool)

(assert (=> b!256526 (= res!125519 (= (seekEntryOrOpen!0 (select (arr!5920 lt!128694) #b00000000000000000000000000000000) lt!128694 (mask!11001 thiss!1504)) (Found!1172 #b00000000000000000000000000000000)))))

(assert (=> b!256526 (=> (not res!125519) (not e!166293))))

(declare-fun d!61619 () Bool)

(declare-fun res!125520 () Bool)

(assert (=> d!61619 (=> res!125520 e!166294)))

(assert (=> d!61619 (= res!125520 (bvsge #b00000000000000000000000000000000 (size!6267 lt!128694)))))

(assert (=> d!61619 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!128694 (mask!11001 thiss!1504)) e!166294)))

(assert (= (and d!61619 (not res!125520)) b!256525))

(assert (= (and b!256525 c!43356) b!256526))

(assert (= (and b!256525 (not c!43356)) b!256523))

(assert (= (and b!256526 res!125519) b!256524))

(assert (= (or b!256524 b!256523) bm!24317))

(declare-fun m!271955 () Bool)

(assert (=> bm!24317 m!271955))

(assert (=> b!256525 m!271873))

(assert (=> b!256525 m!271873))

(assert (=> b!256525 m!271881))

(assert (=> b!256526 m!271873))

(declare-fun m!271957 () Bool)

(assert (=> b!256526 m!271957))

(declare-fun m!271959 () Bool)

(assert (=> b!256526 m!271959))

(assert (=> b!256526 m!271873))

(declare-fun m!271961 () Bool)

(assert (=> b!256526 m!271961))

(assert (=> b!256249 d!61619))

(declare-fun b!256527 () Bool)

(declare-fun e!166296 () (_ BitVec 32))

(declare-fun e!166295 () (_ BitVec 32))

(assert (=> b!256527 (= e!166296 e!166295)))

(declare-fun c!43357 () Bool)

(assert (=> b!256527 (= c!43357 (validKeyInArray!0 (select (arr!5920 lt!128694) #b00000000000000000000000000000000)))))

(declare-fun bm!24318 () Bool)

(declare-fun call!24321 () (_ BitVec 32))

(assert (=> bm!24318 (= call!24321 (arrayCountValidKeys!0 lt!128694 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun b!256528 () Bool)

(assert (=> b!256528 (= e!166296 #b00000000000000000000000000000000)))

(declare-fun d!61621 () Bool)

(declare-fun lt!128887 () (_ BitVec 32))

(assert (=> d!61621 (and (bvsge lt!128887 #b00000000000000000000000000000000) (bvsle lt!128887 (bvsub (size!6267 lt!128694) #b00000000000000000000000000000000)))))

(assert (=> d!61621 (= lt!128887 e!166296)))

(declare-fun c!43358 () Bool)

(assert (=> d!61621 (= c!43358 (bvsge #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))))))

(assert (=> d!61621 (and (bvsle #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6267 (_keys!6891 thiss!1504)) (size!6267 lt!128694)))))

(assert (=> d!61621 (= (arrayCountValidKeys!0 lt!128694 #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) lt!128887)))

(declare-fun b!256529 () Bool)

(assert (=> b!256529 (= e!166295 call!24321)))

(declare-fun b!256530 () Bool)

(assert (=> b!256530 (= e!166295 (bvadd #b00000000000000000000000000000001 call!24321))))

(assert (= (and d!61621 c!43358) b!256528))

(assert (= (and d!61621 (not c!43358)) b!256527))

(assert (= (and b!256527 c!43357) b!256530))

(assert (= (and b!256527 (not c!43357)) b!256529))

(assert (= (or b!256530 b!256529) bm!24318))

(assert (=> b!256527 m!271873))

(assert (=> b!256527 m!271873))

(assert (=> b!256527 m!271881))

(declare-fun m!271963 () Bool)

(assert (=> bm!24318 m!271963))

(assert (=> b!256249 d!61621))

(declare-fun d!61623 () Bool)

(declare-fun res!125521 () Bool)

(declare-fun e!166297 () Bool)

(assert (=> d!61623 (=> res!125521 e!166297)))

(assert (=> d!61623 (= res!125521 (= (select (arr!5920 (_keys!6891 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61623 (= (arrayContainsKey!0 (_keys!6891 thiss!1504) key!932 #b00000000000000000000000000000000) e!166297)))

(declare-fun b!256531 () Bool)

(declare-fun e!166298 () Bool)

(assert (=> b!256531 (= e!166297 e!166298)))

(declare-fun res!125522 () Bool)

(assert (=> b!256531 (=> (not res!125522) (not e!166298))))

(assert (=> b!256531 (= res!125522 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6267 (_keys!6891 thiss!1504))))))

(declare-fun b!256532 () Bool)

(assert (=> b!256532 (= e!166298 (arrayContainsKey!0 (_keys!6891 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61623 (not res!125521)) b!256531))

(assert (= (and b!256531 res!125522) b!256532))

(assert (=> d!61623 m!271805))

(declare-fun m!271965 () Bool)

(assert (=> b!256532 m!271965))

(assert (=> b!256249 d!61623))

(declare-fun d!61625 () Bool)

(declare-fun e!166301 () Bool)

(assert (=> d!61625 e!166301))

(declare-fun res!125525 () Bool)

(assert (=> d!61625 (=> (not res!125525) (not e!166301))))

(assert (=> d!61625 (= res!125525 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6267 (_keys!6891 thiss!1504)))))))

(declare-fun lt!128890 () Unit!7949)

(declare-fun choose!102 ((_ BitVec 64) array!12498 (_ BitVec 32) (_ BitVec 32)) Unit!7949)

(assert (=> d!61625 (= lt!128890 (choose!102 key!932 (_keys!6891 thiss!1504) index!297 (mask!11001 thiss!1504)))))

(assert (=> d!61625 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61625 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6891 thiss!1504) index!297 (mask!11001 thiss!1504)) lt!128890)))

(declare-fun b!256535 () Bool)

(assert (=> b!256535 (= e!166301 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12499 (store (arr!5920 (_keys!6891 thiss!1504)) index!297 key!932) (size!6267 (_keys!6891 thiss!1504))) (mask!11001 thiss!1504)))))

(assert (= (and d!61625 res!125525) b!256535))

(declare-fun m!271967 () Bool)

(assert (=> d!61625 m!271967))

(assert (=> d!61625 m!271777))

(assert (=> b!256535 m!271705))

(declare-fun m!271969 () Bool)

(assert (=> b!256535 m!271969))

(assert (=> b!256249 d!61625))

(assert (=> bm!24268 d!61623))

(declare-fun d!61627 () Bool)

(declare-fun res!125532 () Bool)

(declare-fun e!166304 () Bool)

(assert (=> d!61627 (=> (not res!125532) (not e!166304))))

(declare-fun simpleValid!273 (LongMapFixedSize!3792) Bool)

(assert (=> d!61627 (= res!125532 (simpleValid!273 thiss!1504))))

(assert (=> d!61627 (= (valid!1474 thiss!1504) e!166304)))

(declare-fun b!256542 () Bool)

(declare-fun res!125533 () Bool)

(assert (=> b!256542 (=> (not res!125533) (not e!166304))))

(assert (=> b!256542 (= res!125533 (= (arrayCountValidKeys!0 (_keys!6891 thiss!1504) #b00000000000000000000000000000000 (size!6267 (_keys!6891 thiss!1504))) (_size!1945 thiss!1504)))))

(declare-fun b!256543 () Bool)

(declare-fun res!125534 () Bool)

(assert (=> b!256543 (=> (not res!125534) (not e!166304))))

(assert (=> b!256543 (= res!125534 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6891 thiss!1504) (mask!11001 thiss!1504)))))

(declare-fun b!256544 () Bool)

(assert (=> b!256544 (= e!166304 (arrayNoDuplicates!0 (_keys!6891 thiss!1504) #b00000000000000000000000000000000 Nil!3806))))

(assert (= (and d!61627 res!125532) b!256542))

(assert (= (and b!256542 res!125533) b!256543))

(assert (= (and b!256543 res!125534) b!256544))

(declare-fun m!271971 () Bool)

(assert (=> d!61627 m!271971))

(assert (=> b!256542 m!271707))

(declare-fun m!271973 () Bool)

(assert (=> b!256543 m!271973))

(declare-fun m!271975 () Bool)

(assert (=> b!256544 m!271975))

(assert (=> start!24480 d!61627))

(declare-fun b!256557 () Bool)

(declare-fun e!166313 () SeekEntryResult!1172)

(declare-fun lt!128899 () SeekEntryResult!1172)

(assert (=> b!256557 (= e!166313 (MissingZero!1172 (index!6860 lt!128899)))))

(declare-fun d!61629 () Bool)

(declare-fun lt!128897 () SeekEntryResult!1172)

(assert (=> d!61629 (and (or ((_ is Undefined!1172) lt!128897) (not ((_ is Found!1172) lt!128897)) (and (bvsge (index!6859 lt!128897) #b00000000000000000000000000000000) (bvslt (index!6859 lt!128897) (size!6267 (_keys!6891 thiss!1504))))) (or ((_ is Undefined!1172) lt!128897) ((_ is Found!1172) lt!128897) (not ((_ is MissingZero!1172) lt!128897)) (and (bvsge (index!6858 lt!128897) #b00000000000000000000000000000000) (bvslt (index!6858 lt!128897) (size!6267 (_keys!6891 thiss!1504))))) (or ((_ is Undefined!1172) lt!128897) ((_ is Found!1172) lt!128897) ((_ is MissingZero!1172) lt!128897) (not ((_ is MissingVacant!1172) lt!128897)) (and (bvsge (index!6861 lt!128897) #b00000000000000000000000000000000) (bvslt (index!6861 lt!128897) (size!6267 (_keys!6891 thiss!1504))))) (or ((_ is Undefined!1172) lt!128897) (ite ((_ is Found!1172) lt!128897) (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6859 lt!128897)) key!932) (ite ((_ is MissingZero!1172) lt!128897) (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6858 lt!128897)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1172) lt!128897) (= (select (arr!5920 (_keys!6891 thiss!1504)) (index!6861 lt!128897)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(declare-fun e!166311 () SeekEntryResult!1172)

(assert (=> d!61629 (= lt!128897 e!166311)))

(declare-fun c!43367 () Bool)

(assert (=> d!61629 (= c!43367 (and ((_ is Intermediate!1172) lt!128899) (undefined!1984 lt!128899)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12498 (_ BitVec 32)) SeekEntryResult!1172)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61629 (= lt!128899 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11001 thiss!1504)) key!932 (_keys!6891 thiss!1504) (mask!11001 thiss!1504)))))

(assert (=> d!61629 (validMask!0 (mask!11001 thiss!1504))))

(assert (=> d!61629 (= (seekEntryOrOpen!0 key!932 (_keys!6891 thiss!1504) (mask!11001 thiss!1504)) lt!128897)))

(declare-fun b!256558 () Bool)

(declare-fun e!166312 () SeekEntryResult!1172)

(assert (=> b!256558 (= e!166311 e!166312)))

(declare-fun lt!128898 () (_ BitVec 64))

(assert (=> b!256558 (= lt!128898 (select (arr!5920 (_keys!6891 thiss!1504)) (index!6860 lt!128899)))))

(declare-fun c!43366 () Bool)

(assert (=> b!256558 (= c!43366 (= lt!128898 key!932))))

(declare-fun b!256559 () Bool)

(assert (=> b!256559 (= e!166311 Undefined!1172)))

(declare-fun b!256560 () Bool)

(declare-fun c!43365 () Bool)

(assert (=> b!256560 (= c!43365 (= lt!128898 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!256560 (= e!166312 e!166313)))

(declare-fun b!256561 () Bool)

(assert (=> b!256561 (= e!166312 (Found!1172 (index!6860 lt!128899)))))

(declare-fun b!256562 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12498 (_ BitVec 32)) SeekEntryResult!1172)

(assert (=> b!256562 (= e!166313 (seekKeyOrZeroReturnVacant!0 (x!24968 lt!128899) (index!6860 lt!128899) (index!6860 lt!128899) key!932 (_keys!6891 thiss!1504) (mask!11001 thiss!1504)))))

(assert (= (and d!61629 c!43367) b!256559))

(assert (= (and d!61629 (not c!43367)) b!256558))

(assert (= (and b!256558 c!43366) b!256561))

(assert (= (and b!256558 (not c!43366)) b!256560))

(assert (= (and b!256560 c!43365) b!256557))

(assert (= (and b!256560 (not c!43365)) b!256562))

(declare-fun m!271977 () Bool)

(assert (=> d!61629 m!271977))

(declare-fun m!271979 () Bool)

(assert (=> d!61629 m!271979))

(declare-fun m!271981 () Bool)

(assert (=> d!61629 m!271981))

(declare-fun m!271983 () Bool)

(assert (=> d!61629 m!271983))

(declare-fun m!271985 () Bool)

(assert (=> d!61629 m!271985))

(assert (=> d!61629 m!271981))

(assert (=> d!61629 m!271777))

(declare-fun m!271987 () Bool)

(assert (=> b!256558 m!271987))

(declare-fun m!271989 () Bool)

(assert (=> b!256562 m!271989))

(assert (=> b!256261 d!61629))

(declare-fun b!256569 () Bool)

(declare-fun e!166319 () Bool)

(assert (=> b!256569 (= e!166319 tp_is_empty!6579)))

(declare-fun mapIsEmpty!11202 () Bool)

(declare-fun mapRes!11202 () Bool)

(assert (=> mapIsEmpty!11202 mapRes!11202))

(declare-fun mapNonEmpty!11202 () Bool)

(declare-fun tp!23460 () Bool)

(assert (=> mapNonEmpty!11202 (= mapRes!11202 (and tp!23460 e!166319))))

(declare-fun mapValue!11202 () ValueCell!2946)

(declare-fun mapRest!11202 () (Array (_ BitVec 32) ValueCell!2946))

(declare-fun mapKey!11202 () (_ BitVec 32))

(assert (=> mapNonEmpty!11202 (= mapRest!11196 (store mapRest!11202 mapKey!11202 mapValue!11202))))

(declare-fun b!256570 () Bool)

(declare-fun e!166318 () Bool)

(assert (=> b!256570 (= e!166318 tp_is_empty!6579)))

(declare-fun condMapEmpty!11202 () Bool)

(declare-fun mapDefault!11202 () ValueCell!2946)

(assert (=> mapNonEmpty!11196 (= condMapEmpty!11202 (= mapRest!11196 ((as const (Array (_ BitVec 32) ValueCell!2946)) mapDefault!11202)))))

(assert (=> mapNonEmpty!11196 (= tp!23450 (and e!166318 mapRes!11202))))

(assert (= (and mapNonEmpty!11196 condMapEmpty!11202) mapIsEmpty!11202))

(assert (= (and mapNonEmpty!11196 (not condMapEmpty!11202)) mapNonEmpty!11202))

(assert (= (and mapNonEmpty!11202 ((_ is ValueCellFull!2946) mapValue!11202)) b!256569))

(assert (= (and mapNonEmpty!11196 ((_ is ValueCellFull!2946) mapDefault!11202)) b!256570))

(declare-fun m!271991 () Bool)

(assert (=> mapNonEmpty!11202 m!271991))

(declare-fun b_lambda!8197 () Bool)

(assert (= b_lambda!8193 (or (and b!256262 b_free!6717) b_lambda!8197)))

(declare-fun b_lambda!8199 () Bool)

(assert (= b_lambda!8195 (or (and b!256262 b_free!6717) b_lambda!8199)))

(check-sat (not b!256525) (not b!256435) (not bm!24280) (not bm!24301) (not d!61613) (not bm!24314) (not d!61589) (not bm!24308) (not b!256474) (not b!256526) (not b!256439) (not b!256509) (not b!256466) (not d!61627) (not bm!24279) (not b!256431) (not b!256468) (not b!256375) (not b!256495) (not b!256475) (not d!61597) (not b!256490) (not b_lambda!8199) (not d!61629) (not b!256430) (not b!256562) (not b!256343) (not b!256511) (not b!256458) (not b!256469) (not bm!24317) (not b!256496) (not b!256433) (not bm!24296) (not d!61605) (not mapNonEmpty!11202) (not b!256377) (not b!256527) (not b!256535) (not b!256470) (not b_lambda!8197) (not d!61625) (not b!256514) (not d!61587) (not b!256452) (not b!256423) (not d!61611) tp_is_empty!6579 (not bm!24311) (not b!256542) (not b!256338) (not bm!24297) (not b!256465) (not d!61617) (not bm!24299) (not d!61599) (not bm!24303) (not d!61607) b_and!13799 (not bm!24306) (not b_next!6717) (not b!256507) (not d!61593) (not b!256532) (not b!256440) (not b!256484) (not bm!24318) (not bm!24304) (not b!256434) (not b!256451) (not b!256543) (not b!256544) (not b!256454))
(check-sat b_and!13799 (not b_next!6717))
