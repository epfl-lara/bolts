; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24022 () Bool)

(assert start!24022)

(declare-fun b!251371 () Bool)

(declare-fun b_free!6639 () Bool)

(declare-fun b_next!6639 () Bool)

(assert (=> b!251371 (= b_free!6639 (not b_next!6639))))

(declare-fun tp!23189 () Bool)

(declare-fun b_and!13685 () Bool)

(assert (=> b!251371 (= tp!23189 b_and!13685)))

(declare-fun b!251365 () Bool)

(declare-fun e!163033 () Bool)

(declare-fun call!23651 () Bool)

(assert (=> b!251365 (= e!163033 (not call!23651))))

(declare-fun b!251366 () Bool)

(declare-fun res!123092 () Bool)

(declare-fun e!163039 () Bool)

(assert (=> b!251366 (=> (not res!123092) (not e!163039))))

(declare-fun key!932 () (_ BitVec 64))

(assert (=> b!251366 (= res!123092 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!251367 () Bool)

(declare-fun res!123091 () Bool)

(declare-fun e!163028 () Bool)

(assert (=> b!251367 (=> (not res!123091) (not e!163028))))

(declare-datatypes ((V!8315 0))(
  ( (V!8316 (val!3295 Int)) )
))
(declare-datatypes ((ValueCell!2907 0))(
  ( (ValueCellFull!2907 (v!5359 V!8315)) (EmptyCell!2907) )
))
(declare-datatypes ((array!12322 0))(
  ( (array!12323 (arr!5841 (Array (_ BitVec 32) ValueCell!2907)) (size!6187 (_ BitVec 32))) )
))
(declare-datatypes ((array!12324 0))(
  ( (array!12325 (arr!5842 (Array (_ BitVec 32) (_ BitVec 64))) (size!6188 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3714 0))(
  ( (LongMapFixedSize!3715 (defaultEntry!4646 Int) (mask!10847 (_ BitVec 32)) (extraKeys!4383 (_ BitVec 32)) (zeroValue!4487 V!8315) (minValue!4487 V!8315) (_size!1906 (_ BitVec 32)) (_keys!6788 array!12324) (_values!4629 array!12322) (_vacant!1906 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3714)

(declare-datatypes ((SeekEntryResult!1137 0))(
  ( (MissingZero!1137 (index!6718 (_ BitVec 32))) (Found!1137 (index!6719 (_ BitVec 32))) (Intermediate!1137 (undefined!1949 Bool) (index!6720 (_ BitVec 32)) (x!24731 (_ BitVec 32))) (Undefined!1137) (MissingVacant!1137 (index!6721 (_ BitVec 32))) )
))
(declare-fun lt!126016 () SeekEntryResult!1137)

(assert (=> b!251367 (= res!123091 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6718 lt!126016)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun res!123087 () Bool)

(assert (=> start!24022 (=> (not res!123087) (not e!163039))))

(declare-fun valid!1444 (LongMapFixedSize!3714) Bool)

(assert (=> start!24022 (= res!123087 (valid!1444 thiss!1504))))

(assert (=> start!24022 e!163039))

(declare-fun e!163036 () Bool)

(assert (=> start!24022 e!163036))

(assert (=> start!24022 true))

(declare-fun b!251368 () Bool)

(declare-fun e!163038 () Bool)

(declare-fun e!163030 () Bool)

(assert (=> b!251368 (= e!163038 e!163030)))

(declare-fun res!123086 () Bool)

(assert (=> b!251368 (=> (not res!123086) (not e!163030))))

(declare-fun index!297 () (_ BitVec 32))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!251368 (= res!123086 (inRange!0 index!297 (mask!10847 thiss!1504)))))

(declare-datatypes ((Unit!7778 0))(
  ( (Unit!7779) )
))
(declare-fun lt!126013 () Unit!7778)

(declare-fun e!163031 () Unit!7778)

(assert (=> b!251368 (= lt!126013 e!163031)))

(declare-fun c!42286 () Bool)

(declare-datatypes ((tuple2!4848 0))(
  ( (tuple2!4849 (_1!2434 (_ BitVec 64)) (_2!2434 V!8315)) )
))
(declare-datatypes ((List!3752 0))(
  ( (Nil!3749) (Cons!3748 (h!4409 tuple2!4848) (t!8797 List!3752)) )
))
(declare-datatypes ((ListLongMap!3775 0))(
  ( (ListLongMap!3776 (toList!1903 List!3752)) )
))
(declare-fun contains!1821 (ListLongMap!3775 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1426 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 32) Int) ListLongMap!3775)

(assert (=> b!251368 (= c!42286 (contains!1821 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) key!932))))

(declare-fun b!251369 () Bool)

(declare-fun res!123089 () Bool)

(assert (=> b!251369 (= res!123089 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6721 lt!126016)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251369 (=> (not res!123089) (not e!163033))))

(declare-fun b!251370 () Bool)

(declare-fun lt!126020 () Unit!7778)

(assert (=> b!251370 (= e!163031 lt!126020)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!403 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 64) Int) Unit!7778)

(assert (=> b!251370 (= lt!126020 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!403 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)))))

(declare-fun c!42284 () Bool)

(get-info :version)

(assert (=> b!251370 (= c!42284 ((_ is MissingZero!1137) lt!126016))))

(declare-fun e!163029 () Bool)

(assert (=> b!251370 e!163029))

(declare-fun tp_is_empty!6501 () Bool)

(declare-fun e!163037 () Bool)

(declare-fun array_inv!3849 (array!12324) Bool)

(declare-fun array_inv!3850 (array!12322) Bool)

(assert (=> b!251371 (= e!163036 (and tp!23189 tp_is_empty!6501 (array_inv!3849 (_keys!6788 thiss!1504)) (array_inv!3850 (_values!4629 thiss!1504)) e!163037))))

(declare-fun mapIsEmpty!11051 () Bool)

(declare-fun mapRes!11051 () Bool)

(assert (=> mapIsEmpty!11051 mapRes!11051))

(declare-fun b!251372 () Bool)

(declare-fun res!123093 () Bool)

(assert (=> b!251372 (=> (not res!123093) (not e!163028))))

(declare-fun call!23650 () Bool)

(assert (=> b!251372 (= res!123093 call!23650)))

(assert (=> b!251372 (= e!163029 e!163028)))

(declare-fun b!251373 () Bool)

(declare-fun e!163027 () Bool)

(assert (=> b!251373 (= e!163027 ((_ is Undefined!1137) lt!126016))))

(declare-fun b!251374 () Bool)

(declare-fun e!163026 () Bool)

(assert (=> b!251374 (= e!163026 tp_is_empty!6501)))

(declare-fun b!251375 () Bool)

(declare-fun e!163040 () Unit!7778)

(declare-fun Unit!7780 () Unit!7778)

(assert (=> b!251375 (= e!163040 Unit!7780)))

(declare-fun lt!126011 () Unit!7778)

(declare-fun lemmaArrayContainsKeyThenInListMap!205 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 64) (_ BitVec 32) Int) Unit!7778)

(assert (=> b!251375 (= lt!126011 (lemmaArrayContainsKeyThenInListMap!205 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))

(assert (=> b!251375 false))

(declare-fun b!251376 () Bool)

(assert (=> b!251376 (= e!163027 e!163033)))

(declare-fun res!123094 () Bool)

(assert (=> b!251376 (= res!123094 call!23650)))

(assert (=> b!251376 (=> (not res!123094) (not e!163033))))

(declare-fun b!251377 () Bool)

(declare-fun Unit!7781 () Unit!7778)

(assert (=> b!251377 (= e!163040 Unit!7781)))

(declare-fun b!251378 () Bool)

(assert (=> b!251378 (= e!163039 e!163038)))

(declare-fun res!123090 () Bool)

(assert (=> b!251378 (=> (not res!123090) (not e!163038))))

(assert (=> b!251378 (= res!123090 (or (= lt!126016 (MissingZero!1137 index!297)) (= lt!126016 (MissingVacant!1137 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12324 (_ BitVec 32)) SeekEntryResult!1137)

(assert (=> b!251378 (= lt!126016 (seekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun b!251379 () Bool)

(assert (=> b!251379 (= e!163028 (not call!23651))))

(declare-fun bm!23647 () Bool)

(declare-fun arrayContainsKey!0 (array!12324 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!23647 (= call!23651 (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!23648 () Bool)

(assert (=> bm!23648 (= call!23650 (inRange!0 (ite c!42284 (index!6718 lt!126016) (index!6721 lt!126016)) (mask!10847 thiss!1504)))))

(declare-fun b!251380 () Bool)

(declare-fun e!163034 () Bool)

(assert (=> b!251380 (= e!163037 (and e!163034 mapRes!11051))))

(declare-fun condMapEmpty!11051 () Bool)

(declare-fun mapDefault!11051 () ValueCell!2907)

(assert (=> b!251380 (= condMapEmpty!11051 (= (arr!5841 (_values!4629 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2907)) mapDefault!11051)))))

(declare-fun b!251381 () Bool)

(declare-fun Unit!7782 () Unit!7778)

(assert (=> b!251381 (= e!163031 Unit!7782)))

(declare-fun lt!126012 () Unit!7778)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!403 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 64) Int) Unit!7778)

(assert (=> b!251381 (= lt!126012 (lemmaInListMapThenSeekEntryOrOpenFindsIt!403 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)))))

(assert (=> b!251381 false))

(declare-fun mapNonEmpty!11051 () Bool)

(declare-fun tp!23188 () Bool)

(assert (=> mapNonEmpty!11051 (= mapRes!11051 (and tp!23188 e!163026))))

(declare-fun mapRest!11051 () (Array (_ BitVec 32) ValueCell!2907))

(declare-fun mapValue!11051 () ValueCell!2907)

(declare-fun mapKey!11051 () (_ BitVec 32))

(assert (=> mapNonEmpty!11051 (= (arr!5841 (_values!4629 thiss!1504)) (store mapRest!11051 mapKey!11051 mapValue!11051))))

(declare-fun b!251382 () Bool)

(declare-fun e!163035 () Bool)

(assert (=> b!251382 (= e!163030 (not e!163035))))

(declare-fun res!123088 () Bool)

(assert (=> b!251382 (=> res!123088 e!163035)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!251382 (= res!123088 (not (validMask!0 (mask!10847 thiss!1504))))))

(declare-fun lt!126017 () array!12324)

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12324 (_ BitVec 32)) Bool)

(assert (=> b!251382 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126017 (mask!10847 thiss!1504))))

(declare-fun lt!126018 () Unit!7778)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12324 (_ BitVec 32) (_ BitVec 32)) Unit!7778)

(assert (=> b!251382 (= lt!126018 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) index!297 (mask!10847 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12324 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!251382 (= (arrayCountValidKeys!0 lt!126017 #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6788 thiss!1504) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504)))))))

(declare-fun lt!126019 () Unit!7778)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12324 (_ BitVec 32) (_ BitVec 64)) Unit!7778)

(assert (=> b!251382 (= lt!126019 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6788 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3753 0))(
  ( (Nil!3750) (Cons!3749 (h!4410 (_ BitVec 64)) (t!8798 List!3753)) )
))
(declare-fun arrayNoDuplicates!0 (array!12324 (_ BitVec 32) List!3753) Bool)

(assert (=> b!251382 (arrayNoDuplicates!0 lt!126017 #b00000000000000000000000000000000 Nil!3750)))

(assert (=> b!251382 (= lt!126017 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun lt!126014 () Unit!7778)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12324 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3753) Unit!7778)

(assert (=> b!251382 (= lt!126014 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6788 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3750))))

(declare-fun lt!126015 () Unit!7778)

(assert (=> b!251382 (= lt!126015 e!163040)))

(declare-fun c!42283 () Bool)

(assert (=> b!251382 (= c!42283 (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!251383 () Bool)

(declare-fun c!42285 () Bool)

(assert (=> b!251383 (= c!42285 ((_ is MissingVacant!1137) lt!126016))))

(assert (=> b!251383 (= e!163029 e!163027)))

(declare-fun b!251384 () Bool)

(assert (=> b!251384 (= e!163035 (or (not (= (size!6187 (_values!4629 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10847 thiss!1504)))) (not (= (size!6188 (_keys!6788 thiss!1504)) (size!6187 (_values!4629 thiss!1504)))) (bvslt (mask!10847 thiss!1504) #b00000000000000000000000000000000) (bvslt (extraKeys!4383 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4383 thiss!1504) #b00000000000000000000000000000011)))))

(declare-fun b!251385 () Bool)

(assert (=> b!251385 (= e!163034 tp_is_empty!6501)))

(assert (= (and start!24022 res!123087) b!251366))

(assert (= (and b!251366 res!123092) b!251378))

(assert (= (and b!251378 res!123090) b!251368))

(assert (= (and b!251368 c!42286) b!251381))

(assert (= (and b!251368 (not c!42286)) b!251370))

(assert (= (and b!251370 c!42284) b!251372))

(assert (= (and b!251370 (not c!42284)) b!251383))

(assert (= (and b!251372 res!123093) b!251367))

(assert (= (and b!251367 res!123091) b!251379))

(assert (= (and b!251383 c!42285) b!251376))

(assert (= (and b!251383 (not c!42285)) b!251373))

(assert (= (and b!251376 res!123094) b!251369))

(assert (= (and b!251369 res!123089) b!251365))

(assert (= (or b!251372 b!251376) bm!23648))

(assert (= (or b!251379 b!251365) bm!23647))

(assert (= (and b!251368 res!123086) b!251382))

(assert (= (and b!251382 c!42283) b!251375))

(assert (= (and b!251382 (not c!42283)) b!251377))

(assert (= (and b!251382 (not res!123088)) b!251384))

(assert (= (and b!251380 condMapEmpty!11051) mapIsEmpty!11051))

(assert (= (and b!251380 (not condMapEmpty!11051)) mapNonEmpty!11051))

(assert (= (and mapNonEmpty!11051 ((_ is ValueCellFull!2907) mapValue!11051)) b!251374))

(assert (= (and b!251380 ((_ is ValueCellFull!2907) mapDefault!11051)) b!251385))

(assert (= b!251371 b!251380))

(assert (= start!24022 b!251371))

(declare-fun m!267673 () Bool)

(assert (=> b!251381 m!267673))

(declare-fun m!267675 () Bool)

(assert (=> bm!23648 m!267675))

(declare-fun m!267677 () Bool)

(assert (=> b!251371 m!267677))

(declare-fun m!267679 () Bool)

(assert (=> b!251371 m!267679))

(declare-fun m!267681 () Bool)

(assert (=> b!251367 m!267681))

(declare-fun m!267683 () Bool)

(assert (=> mapNonEmpty!11051 m!267683))

(declare-fun m!267685 () Bool)

(assert (=> b!251382 m!267685))

(declare-fun m!267687 () Bool)

(assert (=> b!251382 m!267687))

(declare-fun m!267689 () Bool)

(assert (=> b!251382 m!267689))

(declare-fun m!267691 () Bool)

(assert (=> b!251382 m!267691))

(declare-fun m!267693 () Bool)

(assert (=> b!251382 m!267693))

(declare-fun m!267695 () Bool)

(assert (=> b!251382 m!267695))

(declare-fun m!267697 () Bool)

(assert (=> b!251382 m!267697))

(declare-fun m!267699 () Bool)

(assert (=> b!251382 m!267699))

(declare-fun m!267701 () Bool)

(assert (=> b!251382 m!267701))

(declare-fun m!267703 () Bool)

(assert (=> b!251382 m!267703))

(declare-fun m!267705 () Bool)

(assert (=> b!251370 m!267705))

(declare-fun m!267707 () Bool)

(assert (=> b!251375 m!267707))

(declare-fun m!267709 () Bool)

(assert (=> b!251369 m!267709))

(assert (=> bm!23647 m!267703))

(declare-fun m!267711 () Bool)

(assert (=> start!24022 m!267711))

(declare-fun m!267713 () Bool)

(assert (=> b!251378 m!267713))

(declare-fun m!267715 () Bool)

(assert (=> b!251368 m!267715))

(declare-fun m!267717 () Bool)

(assert (=> b!251368 m!267717))

(assert (=> b!251368 m!267717))

(declare-fun m!267719 () Bool)

(assert (=> b!251368 m!267719))

(check-sat (not start!24022) (not b!251378) (not bm!23648) (not mapNonEmpty!11051) (not b!251381) (not b!251382) (not bm!23647) (not b_next!6639) (not b!251375) tp_is_empty!6501 b_and!13685 (not b!251371) (not b!251368) (not b!251370))
(check-sat b_and!13685 (not b_next!6639))
(get-model)

(declare-fun b!251461 () Bool)

(declare-fun e!163093 () SeekEntryResult!1137)

(declare-fun e!163092 () SeekEntryResult!1137)

(assert (=> b!251461 (= e!163093 e!163092)))

(declare-fun lt!126058 () (_ BitVec 64))

(declare-fun lt!126059 () SeekEntryResult!1137)

(assert (=> b!251461 (= lt!126058 (select (arr!5842 (_keys!6788 thiss!1504)) (index!6720 lt!126059)))))

(declare-fun c!42307 () Bool)

(assert (=> b!251461 (= c!42307 (= lt!126058 key!932))))

(declare-fun d!61049 () Bool)

(declare-fun lt!126057 () SeekEntryResult!1137)

(assert (=> d!61049 (and (or ((_ is Undefined!1137) lt!126057) (not ((_ is Found!1137) lt!126057)) (and (bvsge (index!6719 lt!126057) #b00000000000000000000000000000000) (bvslt (index!6719 lt!126057) (size!6188 (_keys!6788 thiss!1504))))) (or ((_ is Undefined!1137) lt!126057) ((_ is Found!1137) lt!126057) (not ((_ is MissingZero!1137) lt!126057)) (and (bvsge (index!6718 lt!126057) #b00000000000000000000000000000000) (bvslt (index!6718 lt!126057) (size!6188 (_keys!6788 thiss!1504))))) (or ((_ is Undefined!1137) lt!126057) ((_ is Found!1137) lt!126057) ((_ is MissingZero!1137) lt!126057) (not ((_ is MissingVacant!1137) lt!126057)) (and (bvsge (index!6721 lt!126057) #b00000000000000000000000000000000) (bvslt (index!6721 lt!126057) (size!6188 (_keys!6788 thiss!1504))))) (or ((_ is Undefined!1137) lt!126057) (ite ((_ is Found!1137) lt!126057) (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6719 lt!126057)) key!932) (ite ((_ is MissingZero!1137) lt!126057) (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6718 lt!126057)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1137) lt!126057) (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6721 lt!126057)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61049 (= lt!126057 e!163093)))

(declare-fun c!42305 () Bool)

(assert (=> d!61049 (= c!42305 (and ((_ is Intermediate!1137) lt!126059) (undefined!1949 lt!126059)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12324 (_ BitVec 32)) SeekEntryResult!1137)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61049 (= lt!126059 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10847 thiss!1504)) key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(assert (=> d!61049 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61049 (= (seekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)) lt!126057)))

(declare-fun b!251462 () Bool)

(assert (=> b!251462 (= e!163093 Undefined!1137)))

(declare-fun b!251463 () Bool)

(assert (=> b!251463 (= e!163092 (Found!1137 (index!6720 lt!126059)))))

(declare-fun b!251464 () Bool)

(declare-fun e!163094 () SeekEntryResult!1137)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12324 (_ BitVec 32)) SeekEntryResult!1137)

(assert (=> b!251464 (= e!163094 (seekKeyOrZeroReturnVacant!0 (x!24731 lt!126059) (index!6720 lt!126059) (index!6720 lt!126059) key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun b!251465 () Bool)

(assert (=> b!251465 (= e!163094 (MissingZero!1137 (index!6720 lt!126059)))))

(declare-fun b!251466 () Bool)

(declare-fun c!42306 () Bool)

(assert (=> b!251466 (= c!42306 (= lt!126058 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251466 (= e!163092 e!163094)))

(assert (= (and d!61049 c!42305) b!251462))

(assert (= (and d!61049 (not c!42305)) b!251461))

(assert (= (and b!251461 c!42307) b!251463))

(assert (= (and b!251461 (not c!42307)) b!251466))

(assert (= (and b!251466 c!42306) b!251465))

(assert (= (and b!251466 (not c!42306)) b!251464))

(declare-fun m!267769 () Bool)

(assert (=> b!251461 m!267769))

(assert (=> d!61049 m!267685))

(declare-fun m!267771 () Bool)

(assert (=> d!61049 m!267771))

(declare-fun m!267773 () Bool)

(assert (=> d!61049 m!267773))

(declare-fun m!267775 () Bool)

(assert (=> d!61049 m!267775))

(assert (=> d!61049 m!267771))

(declare-fun m!267777 () Bool)

(assert (=> d!61049 m!267777))

(declare-fun m!267779 () Bool)

(assert (=> d!61049 m!267779))

(declare-fun m!267781 () Bool)

(assert (=> b!251464 m!267781))

(assert (=> b!251378 d!61049))

(declare-fun d!61051 () Bool)

(declare-fun e!163097 () Bool)

(assert (=> d!61051 e!163097))

(declare-fun res!123126 () Bool)

(assert (=> d!61051 (=> (not res!123126) (not e!163097))))

(declare-fun lt!126065 () SeekEntryResult!1137)

(assert (=> d!61051 (= res!123126 ((_ is Found!1137) lt!126065))))

(assert (=> d!61051 (= lt!126065 (seekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun lt!126064 () Unit!7778)

(declare-fun choose!1202 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 64) Int) Unit!7778)

(assert (=> d!61051 (= lt!126064 (choose!1202 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)))))

(assert (=> d!61051 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61051 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!403 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)) lt!126064)))

(declare-fun b!251471 () Bool)

(declare-fun res!123127 () Bool)

(assert (=> b!251471 (=> (not res!123127) (not e!163097))))

(assert (=> b!251471 (= res!123127 (inRange!0 (index!6719 lt!126065) (mask!10847 thiss!1504)))))

(declare-fun b!251472 () Bool)

(assert (=> b!251472 (= e!163097 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6719 lt!126065)) key!932))))

(assert (=> b!251472 (and (bvsge (index!6719 lt!126065) #b00000000000000000000000000000000) (bvslt (index!6719 lt!126065) (size!6188 (_keys!6788 thiss!1504))))))

(assert (= (and d!61051 res!123126) b!251471))

(assert (= (and b!251471 res!123127) b!251472))

(assert (=> d!61051 m!267713))

(declare-fun m!267783 () Bool)

(assert (=> d!61051 m!267783))

(assert (=> d!61051 m!267685))

(declare-fun m!267785 () Bool)

(assert (=> b!251471 m!267785))

(declare-fun m!267787 () Bool)

(assert (=> b!251472 m!267787))

(assert (=> b!251381 d!61051))

(declare-fun d!61053 () Bool)

(assert (=> d!61053 (= (inRange!0 index!297 (mask!10847 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10847 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!251368 d!61053))

(declare-fun d!61055 () Bool)

(declare-fun e!163103 () Bool)

(assert (=> d!61055 e!163103))

(declare-fun res!123130 () Bool)

(assert (=> d!61055 (=> res!123130 e!163103)))

(declare-fun lt!126077 () Bool)

(assert (=> d!61055 (= res!123130 (not lt!126077))))

(declare-fun lt!126074 () Bool)

(assert (=> d!61055 (= lt!126077 lt!126074)))

(declare-fun lt!126076 () Unit!7778)

(declare-fun e!163102 () Unit!7778)

(assert (=> d!61055 (= lt!126076 e!163102)))

(declare-fun c!42310 () Bool)

(assert (=> d!61055 (= c!42310 lt!126074)))

(declare-fun containsKey!291 (List!3752 (_ BitVec 64)) Bool)

(assert (=> d!61055 (= lt!126074 (containsKey!291 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932))))

(assert (=> d!61055 (= (contains!1821 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) key!932) lt!126077)))

(declare-fun b!251479 () Bool)

(declare-fun lt!126075 () Unit!7778)

(assert (=> b!251479 (= e!163102 lt!126075)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!240 (List!3752 (_ BitVec 64)) Unit!7778)

(assert (=> b!251479 (= lt!126075 (lemmaContainsKeyImpliesGetValueByKeyDefined!240 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932))))

(declare-datatypes ((Option!305 0))(
  ( (Some!304 (v!5361 V!8315)) (None!303) )
))
(declare-fun isDefined!241 (Option!305) Bool)

(declare-fun getValueByKey!299 (List!3752 (_ BitVec 64)) Option!305)

(assert (=> b!251479 (isDefined!241 (getValueByKey!299 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932))))

(declare-fun b!251480 () Bool)

(declare-fun Unit!7787 () Unit!7778)

(assert (=> b!251480 (= e!163102 Unit!7787)))

(declare-fun b!251481 () Bool)

(assert (=> b!251481 (= e!163103 (isDefined!241 (getValueByKey!299 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932)))))

(assert (= (and d!61055 c!42310) b!251479))

(assert (= (and d!61055 (not c!42310)) b!251480))

(assert (= (and d!61055 (not res!123130)) b!251481))

(declare-fun m!267789 () Bool)

(assert (=> d!61055 m!267789))

(declare-fun m!267791 () Bool)

(assert (=> b!251479 m!267791))

(declare-fun m!267793 () Bool)

(assert (=> b!251479 m!267793))

(assert (=> b!251479 m!267793))

(declare-fun m!267795 () Bool)

(assert (=> b!251479 m!267795))

(assert (=> b!251481 m!267793))

(assert (=> b!251481 m!267793))

(assert (=> b!251481 m!267795))

(assert (=> b!251368 d!61055))

(declare-fun d!61057 () Bool)

(declare-fun e!163141 () Bool)

(assert (=> d!61057 e!163141))

(declare-fun res!123155 () Bool)

(assert (=> d!61057 (=> (not res!123155) (not e!163141))))

(assert (=> d!61057 (= res!123155 (or (bvsge #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))))

(declare-fun lt!126129 () ListLongMap!3775)

(declare-fun lt!126122 () ListLongMap!3775)

(assert (=> d!61057 (= lt!126129 lt!126122)))

(declare-fun lt!126130 () Unit!7778)

(declare-fun e!163139 () Unit!7778)

(assert (=> d!61057 (= lt!126130 e!163139)))

(declare-fun c!42323 () Bool)

(declare-fun e!163136 () Bool)

(assert (=> d!61057 (= c!42323 e!163136)))

(declare-fun res!123151 () Bool)

(assert (=> d!61057 (=> (not res!123151) (not e!163136))))

(assert (=> d!61057 (= res!123151 (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun e!163131 () ListLongMap!3775)

(assert (=> d!61057 (= lt!126122 e!163131)))

(declare-fun c!42327 () Bool)

(assert (=> d!61057 (= c!42327 (and (not (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61057 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61057 (= (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) lt!126129)))

(declare-fun b!251524 () Bool)

(declare-fun e!163137 () ListLongMap!3775)

(declare-fun call!23673 () ListLongMap!3775)

(assert (=> b!251524 (= e!163137 call!23673)))

(declare-fun bm!23669 () Bool)

(declare-fun call!23675 () Bool)

(assert (=> bm!23669 (= call!23675 (contains!1821 lt!126129 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251525 () Bool)

(declare-fun res!123149 () Bool)

(assert (=> b!251525 (=> (not res!123149) (not e!163141))))

(declare-fun e!163138 () Bool)

(assert (=> b!251525 (= res!123149 e!163138)))

(declare-fun c!42325 () Bool)

(assert (=> b!251525 (= c!42325 (not (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!42326 () Bool)

(declare-fun call!23674 () ListLongMap!3775)

(declare-fun call!23676 () ListLongMap!3775)

(declare-fun call!23672 () ListLongMap!3775)

(declare-fun bm!23670 () Bool)

(declare-fun call!23677 () ListLongMap!3775)

(declare-fun +!664 (ListLongMap!3775 tuple2!4848) ListLongMap!3775)

(assert (=> bm!23670 (= call!23674 (+!664 (ite c!42327 call!23672 (ite c!42326 call!23677 call!23676)) (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))))))

(declare-fun b!251526 () Bool)

(declare-fun e!163135 () Bool)

(declare-fun e!163142 () Bool)

(assert (=> b!251526 (= e!163135 e!163142)))

(declare-fun res!123153 () Bool)

(assert (=> b!251526 (= res!123153 call!23675)))

(assert (=> b!251526 (=> (not res!123153) (not e!163142))))

(declare-fun b!251527 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!251527 (= e!163136 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251528 () Bool)

(declare-fun e!163133 () Bool)

(assert (=> b!251528 (= e!163133 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251529 () Bool)

(declare-fun Unit!7788 () Unit!7778)

(assert (=> b!251529 (= e!163139 Unit!7788)))

(declare-fun b!251530 () Bool)

(assert (=> b!251530 (= e!163135 (not call!23675))))

(declare-fun b!251531 () Bool)

(declare-fun e!163134 () Bool)

(declare-fun apply!242 (ListLongMap!3775 (_ BitVec 64)) V!8315)

(assert (=> b!251531 (= e!163134 (= (apply!242 lt!126129 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4487 thiss!1504)))))

(declare-fun bm!23671 () Bool)

(assert (=> bm!23671 (= call!23673 call!23674)))

(declare-fun bm!23672 () Bool)

(declare-fun call!23678 () Bool)

(assert (=> bm!23672 (= call!23678 (contains!1821 lt!126129 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251532 () Bool)

(declare-fun c!42328 () Bool)

(assert (=> b!251532 (= c!42328 (and (not (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!163140 () ListLongMap!3775)

(assert (=> b!251532 (= e!163137 e!163140)))

(declare-fun bm!23673 () Bool)

(assert (=> bm!23673 (= call!23677 call!23672)))

(declare-fun b!251533 () Bool)

(assert (=> b!251533 (= e!163140 call!23673)))

(declare-fun b!251534 () Bool)

(declare-fun lt!126127 () Unit!7778)

(assert (=> b!251534 (= e!163139 lt!126127)))

(declare-fun lt!126126 () ListLongMap!3775)

(declare-fun getCurrentListMapNoExtraKeys!561 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 32) Int) ListLongMap!3775)

(assert (=> b!251534 (= lt!126126 (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))

(declare-fun lt!126125 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126125 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126135 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126135 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126128 () Unit!7778)

(declare-fun addStillContains!218 (ListLongMap!3775 (_ BitVec 64) V!8315 (_ BitVec 64)) Unit!7778)

(assert (=> b!251534 (= lt!126128 (addStillContains!218 lt!126126 lt!126125 (zeroValue!4487 thiss!1504) lt!126135))))

(assert (=> b!251534 (contains!1821 (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))) lt!126135)))

(declare-fun lt!126134 () Unit!7778)

(assert (=> b!251534 (= lt!126134 lt!126128)))

(declare-fun lt!126131 () ListLongMap!3775)

(assert (=> b!251534 (= lt!126131 (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))

(declare-fun lt!126132 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126132 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126139 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126139 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126136 () Unit!7778)

(declare-fun addApplyDifferent!218 (ListLongMap!3775 (_ BitVec 64) V!8315 (_ BitVec 64)) Unit!7778)

(assert (=> b!251534 (= lt!126136 (addApplyDifferent!218 lt!126131 lt!126132 (minValue!4487 thiss!1504) lt!126139))))

(assert (=> b!251534 (= (apply!242 (+!664 lt!126131 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))) lt!126139) (apply!242 lt!126131 lt!126139))))

(declare-fun lt!126141 () Unit!7778)

(assert (=> b!251534 (= lt!126141 lt!126136)))

(declare-fun lt!126123 () ListLongMap!3775)

(assert (=> b!251534 (= lt!126123 (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))

(declare-fun lt!126133 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126133 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126138 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126138 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126137 () Unit!7778)

(assert (=> b!251534 (= lt!126137 (addApplyDifferent!218 lt!126123 lt!126133 (zeroValue!4487 thiss!1504) lt!126138))))

(assert (=> b!251534 (= (apply!242 (+!664 lt!126123 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))) lt!126138) (apply!242 lt!126123 lt!126138))))

(declare-fun lt!126140 () Unit!7778)

(assert (=> b!251534 (= lt!126140 lt!126137)))

(declare-fun lt!126143 () ListLongMap!3775)

(assert (=> b!251534 (= lt!126143 (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))

(declare-fun lt!126142 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126142 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!126124 () (_ BitVec 64))

(assert (=> b!251534 (= lt!126124 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!251534 (= lt!126127 (addApplyDifferent!218 lt!126143 lt!126142 (minValue!4487 thiss!1504) lt!126124))))

(assert (=> b!251534 (= (apply!242 (+!664 lt!126143 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))) lt!126124) (apply!242 lt!126143 lt!126124))))

(declare-fun b!251535 () Bool)

(assert (=> b!251535 (= e!163141 e!163135)))

(declare-fun c!42324 () Bool)

(assert (=> b!251535 (= c!42324 (not (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!251536 () Bool)

(assert (=> b!251536 (= e!163138 (not call!23678))))

(declare-fun b!251537 () Bool)

(declare-fun res!123156 () Bool)

(assert (=> b!251537 (=> (not res!123156) (not e!163141))))

(declare-fun e!163132 () Bool)

(assert (=> b!251537 (= res!123156 e!163132)))

(declare-fun res!123154 () Bool)

(assert (=> b!251537 (=> res!123154 e!163132)))

(assert (=> b!251537 (= res!123154 (not e!163133))))

(declare-fun res!123157 () Bool)

(assert (=> b!251537 (=> (not res!123157) (not e!163133))))

(assert (=> b!251537 (= res!123157 (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251538 () Bool)

(assert (=> b!251538 (= e!163138 e!163134)))

(declare-fun res!123150 () Bool)

(assert (=> b!251538 (= res!123150 call!23678)))

(assert (=> b!251538 (=> (not res!123150) (not e!163134))))

(declare-fun b!251539 () Bool)

(declare-fun e!163130 () Bool)

(assert (=> b!251539 (= e!163132 e!163130)))

(declare-fun res!123152 () Bool)

(assert (=> b!251539 (=> (not res!123152) (not e!163130))))

(assert (=> b!251539 (= res!123152 (contains!1821 lt!126129 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!251539 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251540 () Bool)

(declare-fun get!3007 (ValueCell!2907 V!8315) V!8315)

(declare-fun dynLambda!580 (Int (_ BitVec 64)) V!8315)

(assert (=> b!251540 (= e!163130 (= (apply!242 lt!126129 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)) (get!3007 (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!580 (defaultEntry!4646 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!251540 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6187 (_values!4629 thiss!1504))))))

(assert (=> b!251540 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun bm!23674 () Bool)

(assert (=> bm!23674 (= call!23676 call!23677)))

(declare-fun b!251541 () Bool)

(assert (=> b!251541 (= e!163131 e!163137)))

(assert (=> b!251541 (= c!42326 (and (not (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4383 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!23675 () Bool)

(assert (=> bm!23675 (= call!23672 (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))

(declare-fun b!251542 () Bool)

(assert (=> b!251542 (= e!163140 call!23676)))

(declare-fun b!251543 () Bool)

(assert (=> b!251543 (= e!163142 (= (apply!242 lt!126129 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4487 thiss!1504)))))

(declare-fun b!251544 () Bool)

(assert (=> b!251544 (= e!163131 (+!664 call!23674 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))))

(assert (= (and d!61057 c!42327) b!251544))

(assert (= (and d!61057 (not c!42327)) b!251541))

(assert (= (and b!251541 c!42326) b!251524))

(assert (= (and b!251541 (not c!42326)) b!251532))

(assert (= (and b!251532 c!42328) b!251533))

(assert (= (and b!251532 (not c!42328)) b!251542))

(assert (= (or b!251533 b!251542) bm!23674))

(assert (= (or b!251524 bm!23674) bm!23673))

(assert (= (or b!251524 b!251533) bm!23671))

(assert (= (or b!251544 bm!23673) bm!23675))

(assert (= (or b!251544 bm!23671) bm!23670))

(assert (= (and d!61057 res!123151) b!251527))

(assert (= (and d!61057 c!42323) b!251534))

(assert (= (and d!61057 (not c!42323)) b!251529))

(assert (= (and d!61057 res!123155) b!251537))

(assert (= (and b!251537 res!123157) b!251528))

(assert (= (and b!251537 (not res!123154)) b!251539))

(assert (= (and b!251539 res!123152) b!251540))

(assert (= (and b!251537 res!123156) b!251525))

(assert (= (and b!251525 c!42325) b!251538))

(assert (= (and b!251525 (not c!42325)) b!251536))

(assert (= (and b!251538 res!123150) b!251531))

(assert (= (or b!251538 b!251536) bm!23672))

(assert (= (and b!251525 res!123149) b!251535))

(assert (= (and b!251535 c!42324) b!251526))

(assert (= (and b!251535 (not c!42324)) b!251530))

(assert (= (and b!251526 res!123153) b!251543))

(assert (= (or b!251526 b!251530) bm!23669))

(declare-fun b_lambda!8133 () Bool)

(assert (=> (not b_lambda!8133) (not b!251540)))

(declare-fun t!8802 () Bool)

(declare-fun tb!3005 () Bool)

(assert (=> (and b!251371 (= (defaultEntry!4646 thiss!1504) (defaultEntry!4646 thiss!1504)) t!8802) tb!3005))

(declare-fun result!5321 () Bool)

(assert (=> tb!3005 (= result!5321 tp_is_empty!6501)))

(assert (=> b!251540 t!8802))

(declare-fun b_and!13689 () Bool)

(assert (= b_and!13685 (and (=> t!8802 result!5321) b_and!13689)))

(declare-fun m!267797 () Bool)

(assert (=> b!251539 m!267797))

(assert (=> b!251539 m!267797))

(declare-fun m!267799 () Bool)

(assert (=> b!251539 m!267799))

(declare-fun m!267801 () Bool)

(assert (=> bm!23670 m!267801))

(declare-fun m!267803 () Bool)

(assert (=> bm!23669 m!267803))

(declare-fun m!267805 () Bool)

(assert (=> b!251544 m!267805))

(declare-fun m!267807 () Bool)

(assert (=> b!251543 m!267807))

(declare-fun m!267809 () Bool)

(assert (=> bm!23675 m!267809))

(assert (=> d!61057 m!267685))

(declare-fun m!267811 () Bool)

(assert (=> b!251534 m!267811))

(declare-fun m!267813 () Bool)

(assert (=> b!251534 m!267813))

(declare-fun m!267815 () Bool)

(assert (=> b!251534 m!267815))

(assert (=> b!251534 m!267809))

(declare-fun m!267817 () Bool)

(assert (=> b!251534 m!267817))

(declare-fun m!267819 () Bool)

(assert (=> b!251534 m!267819))

(declare-fun m!267821 () Bool)

(assert (=> b!251534 m!267821))

(declare-fun m!267823 () Bool)

(assert (=> b!251534 m!267823))

(declare-fun m!267825 () Bool)

(assert (=> b!251534 m!267825))

(declare-fun m!267827 () Bool)

(assert (=> b!251534 m!267827))

(assert (=> b!251534 m!267819))

(declare-fun m!267829 () Bool)

(assert (=> b!251534 m!267829))

(declare-fun m!267831 () Bool)

(assert (=> b!251534 m!267831))

(declare-fun m!267833 () Bool)

(assert (=> b!251534 m!267833))

(assert (=> b!251534 m!267831))

(assert (=> b!251534 m!267797))

(declare-fun m!267835 () Bool)

(assert (=> b!251534 m!267835))

(assert (=> b!251534 m!267823))

(declare-fun m!267837 () Bool)

(assert (=> b!251534 m!267837))

(assert (=> b!251534 m!267811))

(declare-fun m!267839 () Bool)

(assert (=> b!251534 m!267839))

(assert (=> b!251528 m!267797))

(assert (=> b!251528 m!267797))

(declare-fun m!267841 () Bool)

(assert (=> b!251528 m!267841))

(declare-fun m!267843 () Bool)

(assert (=> bm!23672 m!267843))

(assert (=> b!251527 m!267797))

(assert (=> b!251527 m!267797))

(assert (=> b!251527 m!267841))

(declare-fun m!267845 () Bool)

(assert (=> b!251531 m!267845))

(declare-fun m!267847 () Bool)

(assert (=> b!251540 m!267847))

(declare-fun m!267849 () Bool)

(assert (=> b!251540 m!267849))

(declare-fun m!267851 () Bool)

(assert (=> b!251540 m!267851))

(assert (=> b!251540 m!267847))

(assert (=> b!251540 m!267797))

(declare-fun m!267853 () Bool)

(assert (=> b!251540 m!267853))

(assert (=> b!251540 m!267797))

(assert (=> b!251540 m!267849))

(assert (=> b!251368 d!61057))

(declare-fun d!61059 () Bool)

(declare-fun res!123162 () Bool)

(declare-fun e!163147 () Bool)

(assert (=> d!61059 (=> res!123162 e!163147)))

(assert (=> d!61059 (= res!123162 (= (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61059 (= (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 #b00000000000000000000000000000000) e!163147)))

(declare-fun b!251551 () Bool)

(declare-fun e!163148 () Bool)

(assert (=> b!251551 (= e!163147 e!163148)))

(declare-fun res!123163 () Bool)

(assert (=> b!251551 (=> (not res!123163) (not e!163148))))

(assert (=> b!251551 (= res!123163 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251552 () Bool)

(assert (=> b!251552 (= e!163148 (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61059 (not res!123162)) b!251551))

(assert (= (and b!251551 res!123163) b!251552))

(assert (=> d!61059 m!267797))

(declare-fun m!267855 () Bool)

(assert (=> b!251552 m!267855))

(assert (=> bm!23647 d!61059))

(declare-fun b!251563 () Bool)

(declare-fun e!163154 () Bool)

(assert (=> b!251563 (= e!163154 (bvslt (size!6188 (_keys!6788 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!251564 () Bool)

(declare-fun e!163153 () Bool)

(assert (=> b!251564 (= e!163153 (= (arrayCountValidKeys!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6788 thiss!1504) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!251562 () Bool)

(declare-fun res!123172 () Bool)

(assert (=> b!251562 (=> (not res!123172) (not e!163154))))

(assert (=> b!251562 (= res!123172 (validKeyInArray!0 key!932))))

(declare-fun d!61061 () Bool)

(assert (=> d!61061 e!163153))

(declare-fun res!123175 () Bool)

(assert (=> d!61061 (=> (not res!123175) (not e!163153))))

(assert (=> d!61061 (= res!123175 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6188 (_keys!6788 thiss!1504)))))))

(declare-fun lt!126146 () Unit!7778)

(declare-fun choose!1 (array!12324 (_ BitVec 32) (_ BitVec 64)) Unit!7778)

(assert (=> d!61061 (= lt!126146 (choose!1 (_keys!6788 thiss!1504) index!297 key!932))))

(assert (=> d!61061 e!163154))

(declare-fun res!123173 () Bool)

(assert (=> d!61061 (=> (not res!123173) (not e!163154))))

(assert (=> d!61061 (= res!123173 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6188 (_keys!6788 thiss!1504)))))))

(assert (=> d!61061 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6788 thiss!1504) index!297 key!932) lt!126146)))

(declare-fun b!251561 () Bool)

(declare-fun res!123174 () Bool)

(assert (=> b!251561 (=> (not res!123174) (not e!163154))))

(assert (=> b!251561 (= res!123174 (not (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) index!297))))))

(assert (= (and d!61061 res!123173) b!251561))

(assert (= (and b!251561 res!123174) b!251562))

(assert (= (and b!251562 res!123172) b!251563))

(assert (= (and d!61061 res!123175) b!251564))

(assert (=> b!251564 m!267695))

(declare-fun m!267857 () Bool)

(assert (=> b!251564 m!267857))

(assert (=> b!251564 m!267697))

(declare-fun m!267859 () Bool)

(assert (=> b!251562 m!267859))

(declare-fun m!267861 () Bool)

(assert (=> d!61061 m!267861))

(declare-fun m!267863 () Bool)

(assert (=> b!251561 m!267863))

(assert (=> b!251561 m!267863))

(declare-fun m!267865 () Bool)

(assert (=> b!251561 m!267865))

(assert (=> b!251382 d!61061))

(declare-fun d!61063 () Bool)

(declare-fun lt!126149 () (_ BitVec 32))

(assert (=> d!61063 (and (bvsge lt!126149 #b00000000000000000000000000000000) (bvsle lt!126149 (bvsub (size!6188 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!163159 () (_ BitVec 32))

(assert (=> d!61063 (= lt!126149 e!163159)))

(declare-fun c!42333 () Bool)

(assert (=> d!61063 (= c!42333 (bvsge #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61063 (and (bvsle #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6188 (_keys!6788 thiss!1504)) (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61063 (= (arrayCountValidKeys!0 (_keys!6788 thiss!1504) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) lt!126149)))

(declare-fun bm!23678 () Bool)

(declare-fun call!23681 () (_ BitVec 32))

(assert (=> bm!23678 (= call!23681 (arrayCountValidKeys!0 (_keys!6788 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251573 () Bool)

(declare-fun e!163160 () (_ BitVec 32))

(assert (=> b!251573 (= e!163160 (bvadd #b00000000000000000000000000000001 call!23681))))

(declare-fun b!251574 () Bool)

(assert (=> b!251574 (= e!163159 e!163160)))

(declare-fun c!42334 () Bool)

(assert (=> b!251574 (= c!42334 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251575 () Bool)

(assert (=> b!251575 (= e!163159 #b00000000000000000000000000000000)))

(declare-fun b!251576 () Bool)

(assert (=> b!251576 (= e!163160 call!23681)))

(assert (= (and d!61063 c!42333) b!251575))

(assert (= (and d!61063 (not c!42333)) b!251574))

(assert (= (and b!251574 c!42334) b!251573))

(assert (= (and b!251574 (not c!42334)) b!251576))

(assert (= (or b!251573 b!251576) bm!23678))

(declare-fun m!267867 () Bool)

(assert (=> bm!23678 m!267867))

(assert (=> b!251574 m!267797))

(assert (=> b!251574 m!267797))

(assert (=> b!251574 m!267841))

(assert (=> b!251382 d!61063))

(declare-fun d!61065 () Bool)

(assert (=> d!61065 (= (validMask!0 (mask!10847 thiss!1504)) (and (or (= (mask!10847 thiss!1504) #b00000000000000000000000000000111) (= (mask!10847 thiss!1504) #b00000000000000000000000000001111) (= (mask!10847 thiss!1504) #b00000000000000000000000000011111) (= (mask!10847 thiss!1504) #b00000000000000000000000000111111) (= (mask!10847 thiss!1504) #b00000000000000000000000001111111) (= (mask!10847 thiss!1504) #b00000000000000000000000011111111) (= (mask!10847 thiss!1504) #b00000000000000000000000111111111) (= (mask!10847 thiss!1504) #b00000000000000000000001111111111) (= (mask!10847 thiss!1504) #b00000000000000000000011111111111) (= (mask!10847 thiss!1504) #b00000000000000000000111111111111) (= (mask!10847 thiss!1504) #b00000000000000000001111111111111) (= (mask!10847 thiss!1504) #b00000000000000000011111111111111) (= (mask!10847 thiss!1504) #b00000000000000000111111111111111) (= (mask!10847 thiss!1504) #b00000000000000001111111111111111) (= (mask!10847 thiss!1504) #b00000000000000011111111111111111) (= (mask!10847 thiss!1504) #b00000000000000111111111111111111) (= (mask!10847 thiss!1504) #b00000000000001111111111111111111) (= (mask!10847 thiss!1504) #b00000000000011111111111111111111) (= (mask!10847 thiss!1504) #b00000000000111111111111111111111) (= (mask!10847 thiss!1504) #b00000000001111111111111111111111) (= (mask!10847 thiss!1504) #b00000000011111111111111111111111) (= (mask!10847 thiss!1504) #b00000000111111111111111111111111) (= (mask!10847 thiss!1504) #b00000001111111111111111111111111) (= (mask!10847 thiss!1504) #b00000011111111111111111111111111) (= (mask!10847 thiss!1504) #b00000111111111111111111111111111) (= (mask!10847 thiss!1504) #b00001111111111111111111111111111) (= (mask!10847 thiss!1504) #b00011111111111111111111111111111) (= (mask!10847 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!10847 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!251382 d!61065))

(declare-fun d!61067 () Bool)

(declare-fun res!123180 () Bool)

(declare-fun e!163167 () Bool)

(assert (=> d!61067 (=> res!123180 e!163167)))

(assert (=> d!61067 (= res!123180 (bvsge #b00000000000000000000000000000000 (size!6188 lt!126017)))))

(assert (=> d!61067 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!126017 (mask!10847 thiss!1504)) e!163167)))

(declare-fun b!251585 () Bool)

(declare-fun e!163169 () Bool)

(assert (=> b!251585 (= e!163167 e!163169)))

(declare-fun c!42337 () Bool)

(assert (=> b!251585 (= c!42337 (validKeyInArray!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun b!251586 () Bool)

(declare-fun call!23684 () Bool)

(assert (=> b!251586 (= e!163169 call!23684)))

(declare-fun bm!23681 () Bool)

(assert (=> bm!23681 (= call!23684 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!126017 (mask!10847 thiss!1504)))))

(declare-fun b!251587 () Bool)

(declare-fun e!163168 () Bool)

(assert (=> b!251587 (= e!163168 call!23684)))

(declare-fun b!251588 () Bool)

(assert (=> b!251588 (= e!163169 e!163168)))

(declare-fun lt!126156 () (_ BitVec 64))

(assert (=> b!251588 (= lt!126156 (select (arr!5842 lt!126017) #b00000000000000000000000000000000))))

(declare-fun lt!126157 () Unit!7778)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12324 (_ BitVec 64) (_ BitVec 32)) Unit!7778)

(assert (=> b!251588 (= lt!126157 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!126017 lt!126156 #b00000000000000000000000000000000))))

(assert (=> b!251588 (arrayContainsKey!0 lt!126017 lt!126156 #b00000000000000000000000000000000)))

(declare-fun lt!126158 () Unit!7778)

(assert (=> b!251588 (= lt!126158 lt!126157)))

(declare-fun res!123181 () Bool)

(assert (=> b!251588 (= res!123181 (= (seekEntryOrOpen!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) lt!126017 (mask!10847 thiss!1504)) (Found!1137 #b00000000000000000000000000000000)))))

(assert (=> b!251588 (=> (not res!123181) (not e!163168))))

(assert (= (and d!61067 (not res!123180)) b!251585))

(assert (= (and b!251585 c!42337) b!251588))

(assert (= (and b!251585 (not c!42337)) b!251586))

(assert (= (and b!251588 res!123181) b!251587))

(assert (= (or b!251587 b!251586) bm!23681))

(declare-fun m!267869 () Bool)

(assert (=> b!251585 m!267869))

(assert (=> b!251585 m!267869))

(declare-fun m!267871 () Bool)

(assert (=> b!251585 m!267871))

(declare-fun m!267873 () Bool)

(assert (=> bm!23681 m!267873))

(assert (=> b!251588 m!267869))

(declare-fun m!267875 () Bool)

(assert (=> b!251588 m!267875))

(declare-fun m!267877 () Bool)

(assert (=> b!251588 m!267877))

(assert (=> b!251588 m!267869))

(declare-fun m!267879 () Bool)

(assert (=> b!251588 m!267879))

(assert (=> b!251382 d!61067))

(declare-fun d!61069 () Bool)

(declare-fun lt!126159 () (_ BitVec 32))

(assert (=> d!61069 (and (bvsge lt!126159 #b00000000000000000000000000000000) (bvsle lt!126159 (bvsub (size!6188 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun e!163170 () (_ BitVec 32))

(assert (=> d!61069 (= lt!126159 e!163170)))

(declare-fun c!42338 () Bool)

(assert (=> d!61069 (= c!42338 (bvsge #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61069 (and (bvsle #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6188 (_keys!6788 thiss!1504)) (size!6188 lt!126017)))))

(assert (=> d!61069 (= (arrayCountValidKeys!0 lt!126017 #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) lt!126159)))

(declare-fun bm!23682 () Bool)

(declare-fun call!23685 () (_ BitVec 32))

(assert (=> bm!23682 (= call!23685 (arrayCountValidKeys!0 lt!126017 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251589 () Bool)

(declare-fun e!163171 () (_ BitVec 32))

(assert (=> b!251589 (= e!163171 (bvadd #b00000000000000000000000000000001 call!23685))))

(declare-fun b!251590 () Bool)

(assert (=> b!251590 (= e!163170 e!163171)))

(declare-fun c!42339 () Bool)

(assert (=> b!251590 (= c!42339 (validKeyInArray!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun b!251591 () Bool)

(assert (=> b!251591 (= e!163170 #b00000000000000000000000000000000)))

(declare-fun b!251592 () Bool)

(assert (=> b!251592 (= e!163171 call!23685)))

(assert (= (and d!61069 c!42338) b!251591))

(assert (= (and d!61069 (not c!42338)) b!251590))

(assert (= (and b!251590 c!42339) b!251589))

(assert (= (and b!251590 (not c!42339)) b!251592))

(assert (= (or b!251589 b!251592) bm!23682))

(declare-fun m!267881 () Bool)

(assert (=> bm!23682 m!267881))

(assert (=> b!251590 m!267869))

(assert (=> b!251590 m!267869))

(assert (=> b!251590 m!267871))

(assert (=> b!251382 d!61069))

(declare-fun bm!23685 () Bool)

(declare-fun call!23688 () Bool)

(declare-fun c!42342 () Bool)

(assert (=> bm!23685 (= call!23688 (arrayNoDuplicates!0 lt!126017 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42342 (Cons!3749 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) Nil!3750) Nil!3750)))))

(declare-fun d!61071 () Bool)

(declare-fun res!123188 () Bool)

(declare-fun e!163181 () Bool)

(assert (=> d!61071 (=> res!123188 e!163181)))

(assert (=> d!61071 (= res!123188 (bvsge #b00000000000000000000000000000000 (size!6188 lt!126017)))))

(assert (=> d!61071 (= (arrayNoDuplicates!0 lt!126017 #b00000000000000000000000000000000 Nil!3750) e!163181)))

(declare-fun b!251603 () Bool)

(declare-fun e!163180 () Bool)

(declare-fun contains!1823 (List!3753 (_ BitVec 64)) Bool)

(assert (=> b!251603 (= e!163180 (contains!1823 Nil!3750 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun b!251604 () Bool)

(declare-fun e!163182 () Bool)

(assert (=> b!251604 (= e!163182 call!23688)))

(declare-fun b!251605 () Bool)

(declare-fun e!163183 () Bool)

(assert (=> b!251605 (= e!163183 e!163182)))

(assert (=> b!251605 (= c!42342 (validKeyInArray!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun b!251606 () Bool)

(assert (=> b!251606 (= e!163182 call!23688)))

(declare-fun b!251607 () Bool)

(assert (=> b!251607 (= e!163181 e!163183)))

(declare-fun res!123190 () Bool)

(assert (=> b!251607 (=> (not res!123190) (not e!163183))))

(assert (=> b!251607 (= res!123190 (not e!163180))))

(declare-fun res!123189 () Bool)

(assert (=> b!251607 (=> (not res!123189) (not e!163180))))

(assert (=> b!251607 (= res!123189 (validKeyInArray!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(assert (= (and d!61071 (not res!123188)) b!251607))

(assert (= (and b!251607 res!123189) b!251603))

(assert (= (and b!251607 res!123190) b!251605))

(assert (= (and b!251605 c!42342) b!251604))

(assert (= (and b!251605 (not c!42342)) b!251606))

(assert (= (or b!251604 b!251606) bm!23685))

(assert (=> bm!23685 m!267869))

(declare-fun m!267883 () Bool)

(assert (=> bm!23685 m!267883))

(assert (=> b!251603 m!267869))

(assert (=> b!251603 m!267869))

(declare-fun m!267885 () Bool)

(assert (=> b!251603 m!267885))

(assert (=> b!251605 m!267869))

(assert (=> b!251605 m!267869))

(assert (=> b!251605 m!267871))

(assert (=> b!251607 m!267869))

(assert (=> b!251607 m!267869))

(assert (=> b!251607 m!267871))

(assert (=> b!251382 d!61071))

(declare-fun d!61073 () Bool)

(declare-fun e!163186 () Bool)

(assert (=> d!61073 e!163186))

(declare-fun res!123193 () Bool)

(assert (=> d!61073 (=> (not res!123193) (not e!163186))))

(assert (=> d!61073 (= res!123193 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6188 (_keys!6788 thiss!1504)))))))

(declare-fun lt!126162 () Unit!7778)

(declare-fun choose!41 (array!12324 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3753) Unit!7778)

(assert (=> d!61073 (= lt!126162 (choose!41 (_keys!6788 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3750))))

(assert (=> d!61073 (bvslt (size!6188 (_keys!6788 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61073 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6788 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3750) lt!126162)))

(declare-fun b!251610 () Bool)

(assert (=> b!251610 (= e!163186 (arrayNoDuplicates!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000000 Nil!3750))))

(assert (= (and d!61073 res!123193) b!251610))

(declare-fun m!267887 () Bool)

(assert (=> d!61073 m!267887))

(assert (=> b!251610 m!267695))

(declare-fun m!267889 () Bool)

(assert (=> b!251610 m!267889))

(assert (=> b!251382 d!61073))

(assert (=> b!251382 d!61059))

(declare-fun d!61075 () Bool)

(declare-fun e!163189 () Bool)

(assert (=> d!61075 e!163189))

(declare-fun res!123196 () Bool)

(assert (=> d!61075 (=> (not res!123196) (not e!163189))))

(assert (=> d!61075 (= res!123196 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6188 (_keys!6788 thiss!1504)))))))

(declare-fun lt!126165 () Unit!7778)

(declare-fun choose!102 ((_ BitVec 64) array!12324 (_ BitVec 32) (_ BitVec 32)) Unit!7778)

(assert (=> d!61075 (= lt!126165 (choose!102 key!932 (_keys!6788 thiss!1504) index!297 (mask!10847 thiss!1504)))))

(assert (=> d!61075 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61075 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) index!297 (mask!10847 thiss!1504)) lt!126165)))

(declare-fun b!251613 () Bool)

(assert (=> b!251613 (= e!163189 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) (mask!10847 thiss!1504)))))

(assert (= (and d!61075 res!123196) b!251613))

(declare-fun m!267891 () Bool)

(assert (=> d!61075 m!267891))

(assert (=> d!61075 m!267685))

(assert (=> b!251613 m!267695))

(declare-fun m!267893 () Bool)

(assert (=> b!251613 m!267893))

(assert (=> b!251382 d!61075))

(declare-fun b!251630 () Bool)

(declare-fun e!163200 () Bool)

(declare-fun e!163199 () Bool)

(assert (=> b!251630 (= e!163200 e!163199)))

(declare-fun c!42348 () Bool)

(declare-fun lt!126170 () SeekEntryResult!1137)

(assert (=> b!251630 (= c!42348 ((_ is MissingVacant!1137) lt!126170))))

(declare-fun b!251631 () Bool)

(declare-fun e!163198 () Bool)

(declare-fun call!23694 () Bool)

(assert (=> b!251631 (= e!163198 (not call!23694))))

(declare-fun b!251632 () Bool)

(declare-fun res!123207 () Bool)

(declare-fun e!163201 () Bool)

(assert (=> b!251632 (=> (not res!123207) (not e!163201))))

(declare-fun call!23693 () Bool)

(assert (=> b!251632 (= res!123207 call!23693)))

(assert (=> b!251632 (= e!163199 e!163201)))

(declare-fun b!251633 () Bool)

(assert (=> b!251633 (= e!163200 e!163198)))

(declare-fun res!123205 () Bool)

(assert (=> b!251633 (= res!123205 call!23693)))

(assert (=> b!251633 (=> (not res!123205) (not e!163198))))

(declare-fun d!61077 () Bool)

(assert (=> d!61077 e!163200))

(declare-fun c!42347 () Bool)

(assert (=> d!61077 (= c!42347 ((_ is MissingZero!1137) lt!126170))))

(assert (=> d!61077 (= lt!126170 (seekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun lt!126171 () Unit!7778)

(declare-fun choose!1203 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 64) Int) Unit!7778)

(assert (=> d!61077 (= lt!126171 (choose!1203 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)))))

(assert (=> d!61077 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61077 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!403 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)) lt!126171)))

(declare-fun bm!23690 () Bool)

(assert (=> bm!23690 (= call!23693 (inRange!0 (ite c!42347 (index!6718 lt!126170) (index!6721 lt!126170)) (mask!10847 thiss!1504)))))

(declare-fun b!251634 () Bool)

(declare-fun res!123206 () Bool)

(assert (=> b!251634 (=> (not res!123206) (not e!163201))))

(assert (=> b!251634 (= res!123206 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6721 lt!126170)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251634 (and (bvsge (index!6721 lt!126170) #b00000000000000000000000000000000) (bvslt (index!6721 lt!126170) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun bm!23691 () Bool)

(assert (=> bm!23691 (= call!23694 (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!251635 () Bool)

(assert (=> b!251635 (and (bvsge (index!6718 lt!126170) #b00000000000000000000000000000000) (bvslt (index!6718 lt!126170) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun res!123208 () Bool)

(assert (=> b!251635 (= res!123208 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6718 lt!126170)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251635 (=> (not res!123208) (not e!163198))))

(declare-fun b!251636 () Bool)

(assert (=> b!251636 (= e!163199 ((_ is Undefined!1137) lt!126170))))

(declare-fun b!251637 () Bool)

(assert (=> b!251637 (= e!163201 (not call!23694))))

(assert (= (and d!61077 c!42347) b!251633))

(assert (= (and d!61077 (not c!42347)) b!251630))

(assert (= (and b!251633 res!123205) b!251635))

(assert (= (and b!251635 res!123208) b!251631))

(assert (= (and b!251630 c!42348) b!251632))

(assert (= (and b!251630 (not c!42348)) b!251636))

(assert (= (and b!251632 res!123207) b!251634))

(assert (= (and b!251634 res!123206) b!251637))

(assert (= (or b!251633 b!251632) bm!23690))

(assert (= (or b!251631 b!251637) bm!23691))

(assert (=> d!61077 m!267713))

(declare-fun m!267895 () Bool)

(assert (=> d!61077 m!267895))

(assert (=> d!61077 m!267685))

(assert (=> bm!23691 m!267703))

(declare-fun m!267897 () Bool)

(assert (=> b!251635 m!267897))

(declare-fun m!267899 () Bool)

(assert (=> b!251634 m!267899))

(declare-fun m!267901 () Bool)

(assert (=> bm!23690 m!267901))

(assert (=> b!251370 d!61077))

(declare-fun d!61079 () Bool)

(assert (=> d!61079 (= (array_inv!3849 (_keys!6788 thiss!1504)) (bvsge (size!6188 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!251371 d!61079))

(declare-fun d!61081 () Bool)

(assert (=> d!61081 (= (array_inv!3850 (_values!4629 thiss!1504)) (bvsge (size!6187 (_values!4629 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!251371 d!61081))

(declare-fun d!61083 () Bool)

(assert (=> d!61083 (contains!1821 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) key!932)))

(declare-fun lt!126174 () Unit!7778)

(declare-fun choose!1204 (array!12324 array!12322 (_ BitVec 32) (_ BitVec 32) V!8315 V!8315 (_ BitVec 64) (_ BitVec 32) Int) Unit!7778)

(assert (=> d!61083 (= lt!126174 (choose!1204 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))

(assert (=> d!61083 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61083 (= (lemmaArrayContainsKeyThenInListMap!205 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) lt!126174)))

(declare-fun bs!9008 () Bool)

(assert (= bs!9008 d!61083))

(assert (=> bs!9008 m!267717))

(assert (=> bs!9008 m!267717))

(assert (=> bs!9008 m!267719))

(declare-fun m!267903 () Bool)

(assert (=> bs!9008 m!267903))

(assert (=> bs!9008 m!267685))

(assert (=> b!251375 d!61083))

(declare-fun d!61085 () Bool)

(declare-fun res!123215 () Bool)

(declare-fun e!163204 () Bool)

(assert (=> d!61085 (=> (not res!123215) (not e!163204))))

(declare-fun simpleValid!264 (LongMapFixedSize!3714) Bool)

(assert (=> d!61085 (= res!123215 (simpleValid!264 thiss!1504))))

(assert (=> d!61085 (= (valid!1444 thiss!1504) e!163204)))

(declare-fun b!251644 () Bool)

(declare-fun res!123216 () Bool)

(assert (=> b!251644 (=> (not res!123216) (not e!163204))))

(assert (=> b!251644 (= res!123216 (= (arrayCountValidKeys!0 (_keys!6788 thiss!1504) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (_size!1906 thiss!1504)))))

(declare-fun b!251645 () Bool)

(declare-fun res!123217 () Bool)

(assert (=> b!251645 (=> (not res!123217) (not e!163204))))

(assert (=> b!251645 (= res!123217 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun b!251646 () Bool)

(assert (=> b!251646 (= e!163204 (arrayNoDuplicates!0 (_keys!6788 thiss!1504) #b00000000000000000000000000000000 Nil!3750))))

(assert (= (and d!61085 res!123215) b!251644))

(assert (= (and b!251644 res!123216) b!251645))

(assert (= (and b!251645 res!123217) b!251646))

(declare-fun m!267905 () Bool)

(assert (=> d!61085 m!267905))

(assert (=> b!251644 m!267697))

(declare-fun m!267907 () Bool)

(assert (=> b!251645 m!267907))

(declare-fun m!267909 () Bool)

(assert (=> b!251646 m!267909))

(assert (=> start!24022 d!61085))

(declare-fun d!61087 () Bool)

(assert (=> d!61087 (= (inRange!0 (ite c!42284 (index!6718 lt!126016) (index!6721 lt!126016)) (mask!10847 thiss!1504)) (and (bvsge (ite c!42284 (index!6718 lt!126016) (index!6721 lt!126016)) #b00000000000000000000000000000000) (bvslt (ite c!42284 (index!6718 lt!126016) (index!6721 lt!126016)) (bvadd (mask!10847 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23648 d!61087))

(declare-fun b!251654 () Bool)

(declare-fun e!163210 () Bool)

(assert (=> b!251654 (= e!163210 tp_is_empty!6501)))

(declare-fun mapIsEmpty!11057 () Bool)

(declare-fun mapRes!11057 () Bool)

(assert (=> mapIsEmpty!11057 mapRes!11057))

(declare-fun mapNonEmpty!11057 () Bool)

(declare-fun tp!23198 () Bool)

(declare-fun e!163209 () Bool)

(assert (=> mapNonEmpty!11057 (= mapRes!11057 (and tp!23198 e!163209))))

(declare-fun mapKey!11057 () (_ BitVec 32))

(declare-fun mapRest!11057 () (Array (_ BitVec 32) ValueCell!2907))

(declare-fun mapValue!11057 () ValueCell!2907)

(assert (=> mapNonEmpty!11057 (= mapRest!11051 (store mapRest!11057 mapKey!11057 mapValue!11057))))

(declare-fun b!251653 () Bool)

(assert (=> b!251653 (= e!163209 tp_is_empty!6501)))

(declare-fun condMapEmpty!11057 () Bool)

(declare-fun mapDefault!11057 () ValueCell!2907)

(assert (=> mapNonEmpty!11051 (= condMapEmpty!11057 (= mapRest!11051 ((as const (Array (_ BitVec 32) ValueCell!2907)) mapDefault!11057)))))

(assert (=> mapNonEmpty!11051 (= tp!23188 (and e!163210 mapRes!11057))))

(assert (= (and mapNonEmpty!11051 condMapEmpty!11057) mapIsEmpty!11057))

(assert (= (and mapNonEmpty!11051 (not condMapEmpty!11057)) mapNonEmpty!11057))

(assert (= (and mapNonEmpty!11057 ((_ is ValueCellFull!2907) mapValue!11057)) b!251653))

(assert (= (and mapNonEmpty!11051 ((_ is ValueCellFull!2907) mapDefault!11057)) b!251654))

(declare-fun m!267911 () Bool)

(assert (=> mapNonEmpty!11057 m!267911))

(declare-fun b_lambda!8135 () Bool)

(assert (= b_lambda!8133 (or (and b!251371 b_free!6639) b_lambda!8135)))

(check-sat (not b!251471) (not bm!23670) (not d!61083) (not b!251603) (not bm!23669) (not b!251562) (not b!251588) (not b!251607) (not b!251585) (not b!251613) (not b!251590) (not bm!23691) (not mapNonEmpty!11057) (not b!251605) (not d!61061) (not d!61075) (not b!251544) (not d!61077) (not bm!23678) (not b_lambda!8135) (not b!251528) (not b!251561) (not b!251645) (not b!251479) b_and!13689 (not bm!23690) (not b!251464) (not b!251527) (not d!61051) (not bm!23685) (not d!61049) (not b!251543) (not b!251646) (not d!61055) (not b!251552) (not b!251531) (not bm!23681) (not b_next!6639) (not bm!23682) (not b!251610) (not b!251540) (not b!251574) (not bm!23672) (not b!251534) (not bm!23675) (not d!61073) (not d!61085) (not b!251564) (not b!251539) tp_is_empty!6501 (not b!251481) (not d!61057) (not b!251644))
(check-sat b_and!13689 (not b_next!6639))
(get-model)

(declare-fun b!251664 () Bool)

(declare-fun res!123227 () Bool)

(declare-fun e!163213 () Bool)

(assert (=> b!251664 (=> (not res!123227) (not e!163213))))

(declare-fun size!6191 (LongMapFixedSize!3714) (_ BitVec 32))

(assert (=> b!251664 (= res!123227 (bvsge (size!6191 thiss!1504) (_size!1906 thiss!1504)))))

(declare-fun b!251666 () Bool)

(assert (=> b!251666 (= e!163213 (and (bvsge (extraKeys!4383 thiss!1504) #b00000000000000000000000000000000) (bvsle (extraKeys!4383 thiss!1504) #b00000000000000000000000000000011) (bvsge (_vacant!1906 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!251663 () Bool)

(declare-fun res!123229 () Bool)

(assert (=> b!251663 (=> (not res!123229) (not e!163213))))

(assert (=> b!251663 (= res!123229 (and (= (size!6187 (_values!4629 thiss!1504)) (bvadd (mask!10847 thiss!1504) #b00000000000000000000000000000001)) (= (size!6188 (_keys!6788 thiss!1504)) (size!6187 (_values!4629 thiss!1504))) (bvsge (_size!1906 thiss!1504) #b00000000000000000000000000000000) (bvsle (_size!1906 thiss!1504) (bvadd (mask!10847 thiss!1504) #b00000000000000000000000000000001))))))

(declare-fun d!61089 () Bool)

(declare-fun res!123226 () Bool)

(assert (=> d!61089 (=> (not res!123226) (not e!163213))))

(assert (=> d!61089 (= res!123226 (validMask!0 (mask!10847 thiss!1504)))))

(assert (=> d!61089 (= (simpleValid!264 thiss!1504) e!163213)))

(declare-fun b!251665 () Bool)

(declare-fun res!123228 () Bool)

(assert (=> b!251665 (=> (not res!123228) (not e!163213))))

(assert (=> b!251665 (= res!123228 (= (size!6191 thiss!1504) (bvadd (_size!1906 thiss!1504) (bvsdiv (bvadd (extraKeys!4383 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000010))))))

(assert (= (and d!61089 res!123226) b!251663))

(assert (= (and b!251663 res!123229) b!251664))

(assert (= (and b!251664 res!123227) b!251665))

(assert (= (and b!251665 res!123228) b!251666))

(declare-fun m!267913 () Bool)

(assert (=> b!251664 m!267913))

(assert (=> d!61089 m!267685))

(assert (=> b!251665 m!267913))

(assert (=> d!61085 d!61089))

(declare-fun d!61091 () Bool)

(assert (=> d!61091 (= (inRange!0 (ite c!42347 (index!6718 lt!126170) (index!6721 lt!126170)) (mask!10847 thiss!1504)) (and (bvsge (ite c!42347 (index!6718 lt!126170) (index!6721 lt!126170)) #b00000000000000000000000000000000) (bvslt (ite c!42347 (index!6718 lt!126170) (index!6721 lt!126170)) (bvadd (mask!10847 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!23690 d!61091))

(declare-fun call!23695 () Bool)

(declare-fun c!42349 () Bool)

(declare-fun bm!23692 () Bool)

(assert (=> bm!23692 (= call!23695 (arrayNoDuplicates!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42349 (Cons!3749 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000) Nil!3750) Nil!3750)))))

(declare-fun d!61093 () Bool)

(declare-fun res!123230 () Bool)

(declare-fun e!163215 () Bool)

(assert (=> d!61093 (=> res!123230 e!163215)))

(assert (=> d!61093 (= res!123230 (bvsge #b00000000000000000000000000000000 (size!6188 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))))))))

(assert (=> d!61093 (= (arrayNoDuplicates!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000000 Nil!3750) e!163215)))

(declare-fun b!251667 () Bool)

(declare-fun e!163214 () Bool)

(assert (=> b!251667 (= e!163214 (contains!1823 Nil!3750 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!251668 () Bool)

(declare-fun e!163216 () Bool)

(assert (=> b!251668 (= e!163216 call!23695)))

(declare-fun b!251669 () Bool)

(declare-fun e!163217 () Bool)

(assert (=> b!251669 (= e!163217 e!163216)))

(assert (=> b!251669 (= c!42349 (validKeyInArray!0 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!251670 () Bool)

(assert (=> b!251670 (= e!163216 call!23695)))

(declare-fun b!251671 () Bool)

(assert (=> b!251671 (= e!163215 e!163217)))

(declare-fun res!123232 () Bool)

(assert (=> b!251671 (=> (not res!123232) (not e!163217))))

(assert (=> b!251671 (= res!123232 (not e!163214))))

(declare-fun res!123231 () Bool)

(assert (=> b!251671 (=> (not res!123231) (not e!163214))))

(assert (=> b!251671 (= res!123231 (validKeyInArray!0 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000)))))

(assert (= (and d!61093 (not res!123230)) b!251671))

(assert (= (and b!251671 res!123231) b!251667))

(assert (= (and b!251671 res!123232) b!251669))

(assert (= (and b!251669 c!42349) b!251668))

(assert (= (and b!251669 (not c!42349)) b!251670))

(assert (= (or b!251668 b!251670) bm!23692))

(declare-fun m!267915 () Bool)

(assert (=> bm!23692 m!267915))

(declare-fun m!267917 () Bool)

(assert (=> bm!23692 m!267917))

(assert (=> b!251667 m!267915))

(assert (=> b!251667 m!267915))

(declare-fun m!267919 () Bool)

(assert (=> b!251667 m!267919))

(assert (=> b!251669 m!267915))

(assert (=> b!251669 m!267915))

(declare-fun m!267921 () Bool)

(assert (=> b!251669 m!267921))

(assert (=> b!251671 m!267915))

(assert (=> b!251671 m!267915))

(assert (=> b!251671 m!267921))

(assert (=> b!251610 d!61093))

(declare-fun d!61095 () Bool)

(declare-fun e!163219 () Bool)

(assert (=> d!61095 e!163219))

(declare-fun res!123233 () Bool)

(assert (=> d!61095 (=> res!123233 e!163219)))

(declare-fun lt!126178 () Bool)

(assert (=> d!61095 (= res!123233 (not lt!126178))))

(declare-fun lt!126175 () Bool)

(assert (=> d!61095 (= lt!126178 lt!126175)))

(declare-fun lt!126177 () Unit!7778)

(declare-fun e!163218 () Unit!7778)

(assert (=> d!61095 (= lt!126177 e!163218)))

(declare-fun c!42350 () Bool)

(assert (=> d!61095 (= c!42350 lt!126175)))

(assert (=> d!61095 (= lt!126175 (containsKey!291 (toList!1903 lt!126129) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!61095 (= (contains!1821 lt!126129 #b1000000000000000000000000000000000000000000000000000000000000000) lt!126178)))

(declare-fun b!251672 () Bool)

(declare-fun lt!126176 () Unit!7778)

(assert (=> b!251672 (= e!163218 lt!126176)))

(assert (=> b!251672 (= lt!126176 (lemmaContainsKeyImpliesGetValueByKeyDefined!240 (toList!1903 lt!126129) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251672 (isDefined!241 (getValueByKey!299 (toList!1903 lt!126129) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251673 () Bool)

(declare-fun Unit!7789 () Unit!7778)

(assert (=> b!251673 (= e!163218 Unit!7789)))

(declare-fun b!251674 () Bool)

(assert (=> b!251674 (= e!163219 (isDefined!241 (getValueByKey!299 (toList!1903 lt!126129) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61095 c!42350) b!251672))

(assert (= (and d!61095 (not c!42350)) b!251673))

(assert (= (and d!61095 (not res!123233)) b!251674))

(declare-fun m!267923 () Bool)

(assert (=> d!61095 m!267923))

(declare-fun m!267925 () Bool)

(assert (=> b!251672 m!267925))

(declare-fun m!267927 () Bool)

(assert (=> b!251672 m!267927))

(assert (=> b!251672 m!267927))

(declare-fun m!267929 () Bool)

(assert (=> b!251672 m!267929))

(assert (=> b!251674 m!267927))

(assert (=> b!251674 m!267927))

(assert (=> b!251674 m!267929))

(assert (=> bm!23669 d!61095))

(declare-fun b!251699 () Bool)

(declare-fun e!163238 () Bool)

(declare-fun e!163239 () Bool)

(assert (=> b!251699 (= e!163238 e!163239)))

(declare-fun c!42362 () Bool)

(declare-fun e!163236 () Bool)

(assert (=> b!251699 (= c!42362 e!163236)))

(declare-fun res!123245 () Bool)

(assert (=> b!251699 (=> (not res!123245) (not e!163236))))

(assert (=> b!251699 (= res!123245 (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251700 () Bool)

(declare-fun e!163237 () ListLongMap!3775)

(declare-fun e!163234 () ListLongMap!3775)

(assert (=> b!251700 (= e!163237 e!163234)))

(declare-fun c!42359 () Bool)

(assert (=> b!251700 (= c!42359 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun d!61097 () Bool)

(assert (=> d!61097 e!163238))

(declare-fun res!123243 () Bool)

(assert (=> d!61097 (=> (not res!123243) (not e!163238))))

(declare-fun lt!126198 () ListLongMap!3775)

(assert (=> d!61097 (= res!123243 (not (contains!1821 lt!126198 #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> d!61097 (= lt!126198 e!163237)))

(declare-fun c!42360 () Bool)

(assert (=> d!61097 (= c!42360 (bvsge #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61097 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61097 (= (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) lt!126198)))

(declare-fun b!251701 () Bool)

(declare-fun e!163235 () Bool)

(assert (=> b!251701 (= e!163239 e!163235)))

(assert (=> b!251701 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun res!123244 () Bool)

(assert (=> b!251701 (= res!123244 (contains!1821 lt!126198 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!251701 (=> (not res!123244) (not e!163235))))

(declare-fun b!251702 () Bool)

(declare-fun e!163240 () Bool)

(assert (=> b!251702 (= e!163240 (= lt!126198 (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4646 thiss!1504))))))

(declare-fun b!251703 () Bool)

(declare-fun isEmpty!535 (ListLongMap!3775) Bool)

(assert (=> b!251703 (= e!163240 (isEmpty!535 lt!126198))))

(declare-fun bm!23695 () Bool)

(declare-fun call!23698 () ListLongMap!3775)

(assert (=> bm!23695 (= call!23698 (getCurrentListMapNoExtraKeys!561 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (defaultEntry!4646 thiss!1504)))))

(declare-fun b!251704 () Bool)

(assert (=> b!251704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> b!251704 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6187 (_values!4629 thiss!1504))))))

(assert (=> b!251704 (= e!163235 (= (apply!242 lt!126198 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)) (get!3007 (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!580 (defaultEntry!4646 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!251705 () Bool)

(assert (=> b!251705 (= e!163236 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!251705 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(declare-fun b!251706 () Bool)

(declare-fun res!123242 () Bool)

(assert (=> b!251706 (=> (not res!123242) (not e!163238))))

(assert (=> b!251706 (= res!123242 (not (contains!1821 lt!126198 #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!251707 () Bool)

(assert (=> b!251707 (= e!163237 (ListLongMap!3776 Nil!3749))))

(declare-fun b!251708 () Bool)

(assert (=> b!251708 (= e!163234 call!23698)))

(declare-fun b!251709 () Bool)

(declare-fun lt!126195 () Unit!7778)

(declare-fun lt!126194 () Unit!7778)

(assert (=> b!251709 (= lt!126195 lt!126194)))

(declare-fun lt!126196 () (_ BitVec 64))

(declare-fun lt!126199 () ListLongMap!3775)

(declare-fun lt!126193 () V!8315)

(declare-fun lt!126197 () (_ BitVec 64))

(assert (=> b!251709 (not (contains!1821 (+!664 lt!126199 (tuple2!4849 lt!126197 lt!126193)) lt!126196))))

(declare-fun addStillNotContains!126 (ListLongMap!3775 (_ BitVec 64) V!8315 (_ BitVec 64)) Unit!7778)

(assert (=> b!251709 (= lt!126194 (addStillNotContains!126 lt!126199 lt!126197 lt!126193 lt!126196))))

(assert (=> b!251709 (= lt!126196 #b0000000000000000000000000000000000000000000000000000000000000000)))

(assert (=> b!251709 (= lt!126193 (get!3007 (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!580 (defaultEntry!4646 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (=> b!251709 (= lt!126197 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!251709 (= lt!126199 call!23698)))

(assert (=> b!251709 (= e!163234 (+!664 call!23698 (tuple2!4849 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000) (get!3007 (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!580 (defaultEntry!4646 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))))

(declare-fun b!251710 () Bool)

(assert (=> b!251710 (= e!163239 e!163240)))

(declare-fun c!42361 () Bool)

(assert (=> b!251710 (= c!42361 (bvslt #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (= (and d!61097 c!42360) b!251707))

(assert (= (and d!61097 (not c!42360)) b!251700))

(assert (= (and b!251700 c!42359) b!251709))

(assert (= (and b!251700 (not c!42359)) b!251708))

(assert (= (or b!251709 b!251708) bm!23695))

(assert (= (and d!61097 res!123243) b!251706))

(assert (= (and b!251706 res!123242) b!251699))

(assert (= (and b!251699 res!123245) b!251705))

(assert (= (and b!251699 c!42362) b!251701))

(assert (= (and b!251699 (not c!42362)) b!251710))

(assert (= (and b!251701 res!123244) b!251704))

(assert (= (and b!251710 c!42361) b!251702))

(assert (= (and b!251710 (not c!42361)) b!251703))

(declare-fun b_lambda!8137 () Bool)

(assert (=> (not b_lambda!8137) (not b!251704)))

(assert (=> b!251704 t!8802))

(declare-fun b_and!13691 () Bool)

(assert (= b_and!13689 (and (=> t!8802 result!5321) b_and!13691)))

(declare-fun b_lambda!8139 () Bool)

(assert (=> (not b_lambda!8139) (not b!251709)))

(assert (=> b!251709 t!8802))

(declare-fun b_and!13693 () Bool)

(assert (= b_and!13691 (and (=> t!8802 result!5321) b_and!13693)))

(declare-fun m!267931 () Bool)

(assert (=> b!251709 m!267931))

(assert (=> b!251709 m!267847))

(assert (=> b!251709 m!267849))

(assert (=> b!251709 m!267851))

(assert (=> b!251709 m!267931))

(declare-fun m!267933 () Bool)

(assert (=> b!251709 m!267933))

(assert (=> b!251709 m!267797))

(assert (=> b!251709 m!267849))

(assert (=> b!251709 m!267847))

(declare-fun m!267935 () Bool)

(assert (=> b!251709 m!267935))

(declare-fun m!267937 () Bool)

(assert (=> b!251709 m!267937))

(assert (=> b!251701 m!267797))

(assert (=> b!251701 m!267797))

(declare-fun m!267939 () Bool)

(assert (=> b!251701 m!267939))

(assert (=> b!251700 m!267797))

(assert (=> b!251700 m!267797))

(assert (=> b!251700 m!267841))

(declare-fun m!267941 () Bool)

(assert (=> b!251706 m!267941))

(assert (=> b!251704 m!267847))

(assert (=> b!251704 m!267849))

(assert (=> b!251704 m!267851))

(assert (=> b!251704 m!267797))

(declare-fun m!267943 () Bool)

(assert (=> b!251704 m!267943))

(assert (=> b!251704 m!267797))

(assert (=> b!251704 m!267849))

(assert (=> b!251704 m!267847))

(declare-fun m!267945 () Bool)

(assert (=> bm!23695 m!267945))

(assert (=> b!251705 m!267797))

(assert (=> b!251705 m!267797))

(assert (=> b!251705 m!267841))

(assert (=> b!251702 m!267945))

(declare-fun m!267947 () Bool)

(assert (=> d!61097 m!267947))

(assert (=> d!61097 m!267685))

(declare-fun m!267949 () Bool)

(assert (=> b!251703 m!267949))

(assert (=> bm!23675 d!61097))

(declare-fun d!61099 () Bool)

(declare-fun e!163243 () Bool)

(assert (=> d!61099 e!163243))

(declare-fun res!123250 () Bool)

(assert (=> d!61099 (=> (not res!123250) (not e!163243))))

(declare-fun lt!126210 () ListLongMap!3775)

(assert (=> d!61099 (= res!123250 (contains!1821 lt!126210 (_1!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))))))

(declare-fun lt!126208 () List!3752)

(assert (=> d!61099 (= lt!126210 (ListLongMap!3776 lt!126208))))

(declare-fun lt!126209 () Unit!7778)

(declare-fun lt!126211 () Unit!7778)

(assert (=> d!61099 (= lt!126209 lt!126211)))

(assert (=> d!61099 (= (getValueByKey!299 lt!126208 (_1!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))) (Some!304 (_2!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!161 (List!3752 (_ BitVec 64) V!8315) Unit!7778)

(assert (=> d!61099 (= lt!126211 (lemmaContainsTupThenGetReturnValue!161 lt!126208 (_1!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))) (_2!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))))))

(declare-fun insertStrictlySorted!163 (List!3752 (_ BitVec 64) V!8315) List!3752)

(assert (=> d!61099 (= lt!126208 (insertStrictlySorted!163 (toList!1903 (ite c!42327 call!23672 (ite c!42326 call!23677 call!23676))) (_1!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))) (_2!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))))))

(assert (=> d!61099 (= (+!664 (ite c!42327 call!23672 (ite c!42326 call!23677 call!23676)) (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))) lt!126210)))

(declare-fun b!251715 () Bool)

(declare-fun res!123251 () Bool)

(assert (=> b!251715 (=> (not res!123251) (not e!163243))))

(assert (=> b!251715 (= res!123251 (= (getValueByKey!299 (toList!1903 lt!126210) (_1!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))) (Some!304 (_2!2434 (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))))))))

(declare-fun b!251716 () Bool)

(declare-fun contains!1824 (List!3752 tuple2!4848) Bool)

(assert (=> b!251716 (= e!163243 (contains!1824 (toList!1903 lt!126210) (ite (or c!42327 c!42326) (tuple2!4849 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4487 thiss!1504)) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))))))

(assert (= (and d!61099 res!123250) b!251715))

(assert (= (and b!251715 res!123251) b!251716))

(declare-fun m!267951 () Bool)

(assert (=> d!61099 m!267951))

(declare-fun m!267953 () Bool)

(assert (=> d!61099 m!267953))

(declare-fun m!267955 () Bool)

(assert (=> d!61099 m!267955))

(declare-fun m!267957 () Bool)

(assert (=> d!61099 m!267957))

(declare-fun m!267959 () Bool)

(assert (=> b!251715 m!267959))

(declare-fun m!267961 () Bool)

(assert (=> b!251716 m!267961))

(assert (=> bm!23670 d!61099))

(declare-fun d!61101 () Bool)

(assert (=> d!61101 (= (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) index!297)) (and (not (= (select (arr!5842 (_keys!6788 thiss!1504)) index!297) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5842 (_keys!6788 thiss!1504)) index!297) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!251561 d!61101))

(declare-fun d!61103 () Bool)

(assert (=> d!61103 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) (mask!10847 thiss!1504))))

(assert (=> d!61103 true))

(declare-fun _$56!30 () Unit!7778)

(assert (=> d!61103 (= (choose!102 key!932 (_keys!6788 thiss!1504) index!297 (mask!10847 thiss!1504)) _$56!30)))

(declare-fun bs!9009 () Bool)

(assert (= bs!9009 d!61103))

(assert (=> bs!9009 m!267695))

(assert (=> bs!9009 m!267893))

(assert (=> d!61075 d!61103))

(assert (=> d!61075 d!61065))

(assert (=> d!61057 d!61065))

(assert (=> d!61083 d!61055))

(assert (=> d!61083 d!61057))

(declare-fun d!61105 () Bool)

(assert (=> d!61105 (contains!1821 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) key!932)))

(assert (=> d!61105 true))

(declare-fun _$17!80 () Unit!7778)

(assert (=> d!61105 (= (choose!1204 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)) _$17!80)))

(declare-fun bs!9010 () Bool)

(assert (= bs!9010 d!61105))

(assert (=> bs!9010 m!267717))

(assert (=> bs!9010 m!267717))

(assert (=> bs!9010 m!267719))

(assert (=> d!61083 d!61105))

(assert (=> d!61083 d!61065))

(declare-fun d!61107 () Bool)

(declare-fun res!123252 () Bool)

(declare-fun e!163244 () Bool)

(assert (=> d!61107 (=> res!123252 e!163244)))

(assert (=> d!61107 (= res!123252 (bvsge #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61107 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)) e!163244)))

(declare-fun b!251717 () Bool)

(declare-fun e!163246 () Bool)

(assert (=> b!251717 (= e!163244 e!163246)))

(declare-fun c!42363 () Bool)

(assert (=> b!251717 (= c!42363 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251718 () Bool)

(declare-fun call!23699 () Bool)

(assert (=> b!251718 (= e!163246 call!23699)))

(declare-fun bm!23696 () Bool)

(assert (=> bm!23696 (= call!23699 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun b!251719 () Bool)

(declare-fun e!163245 () Bool)

(assert (=> b!251719 (= e!163245 call!23699)))

(declare-fun b!251720 () Bool)

(assert (=> b!251720 (= e!163246 e!163245)))

(declare-fun lt!126212 () (_ BitVec 64))

(assert (=> b!251720 (= lt!126212 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!126213 () Unit!7778)

(assert (=> b!251720 (= lt!126213 (lemmaArrayContainsFromImpliesContainsFromZero!0 (_keys!6788 thiss!1504) lt!126212 #b00000000000000000000000000000000))))

(assert (=> b!251720 (arrayContainsKey!0 (_keys!6788 thiss!1504) lt!126212 #b00000000000000000000000000000000)))

(declare-fun lt!126214 () Unit!7778)

(assert (=> b!251720 (= lt!126214 lt!126213)))

(declare-fun res!123253 () Bool)

(assert (=> b!251720 (= res!123253 (= (seekEntryOrOpen!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000) (_keys!6788 thiss!1504) (mask!10847 thiss!1504)) (Found!1137 #b00000000000000000000000000000000)))))

(assert (=> b!251720 (=> (not res!123253) (not e!163245))))

(assert (= (and d!61107 (not res!123252)) b!251717))

(assert (= (and b!251717 c!42363) b!251720))

(assert (= (and b!251717 (not c!42363)) b!251718))

(assert (= (and b!251720 res!123253) b!251719))

(assert (= (or b!251719 b!251718) bm!23696))

(assert (=> b!251717 m!267797))

(assert (=> b!251717 m!267797))

(assert (=> b!251717 m!267841))

(declare-fun m!267963 () Bool)

(assert (=> bm!23696 m!267963))

(assert (=> b!251720 m!267797))

(declare-fun m!267965 () Bool)

(assert (=> b!251720 m!267965))

(declare-fun m!267967 () Bool)

(assert (=> b!251720 m!267967))

(assert (=> b!251720 m!267797))

(declare-fun m!267969 () Bool)

(assert (=> b!251720 m!267969))

(assert (=> b!251645 d!61107))

(assert (=> bm!23691 d!61059))

(declare-fun d!61109 () Bool)

(assert (=> d!61109 (arrayNoDuplicates!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000000 Nil!3750)))

(assert (=> d!61109 true))

(declare-fun _$65!83 () Unit!7778)

(assert (=> d!61109 (= (choose!41 (_keys!6788 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3750) _$65!83)))

(declare-fun bs!9011 () Bool)

(assert (= bs!9011 d!61109))

(assert (=> bs!9011 m!267695))

(assert (=> bs!9011 m!267889))

(assert (=> d!61073 d!61109))

(declare-fun d!61111 () Bool)

(declare-fun e!163248 () Bool)

(assert (=> d!61111 e!163248))

(declare-fun res!123254 () Bool)

(assert (=> d!61111 (=> res!123254 e!163248)))

(declare-fun lt!126218 () Bool)

(assert (=> d!61111 (= res!123254 (not lt!126218))))

(declare-fun lt!126215 () Bool)

(assert (=> d!61111 (= lt!126218 lt!126215)))

(declare-fun lt!126217 () Unit!7778)

(declare-fun e!163247 () Unit!7778)

(assert (=> d!61111 (= lt!126217 e!163247)))

(declare-fun c!42364 () Bool)

(assert (=> d!61111 (= c!42364 lt!126215)))

(assert (=> d!61111 (= lt!126215 (containsKey!291 (toList!1903 lt!126129) (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61111 (= (contains!1821 lt!126129 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)) lt!126218)))

(declare-fun b!251721 () Bool)

(declare-fun lt!126216 () Unit!7778)

(assert (=> b!251721 (= e!163247 lt!126216)))

(assert (=> b!251721 (= lt!126216 (lemmaContainsKeyImpliesGetValueByKeyDefined!240 (toList!1903 lt!126129) (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!251721 (isDefined!241 (getValueByKey!299 (toList!1903 lt!126129) (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251722 () Bool)

(declare-fun Unit!7790 () Unit!7778)

(assert (=> b!251722 (= e!163247 Unit!7790)))

(declare-fun b!251723 () Bool)

(assert (=> b!251723 (= e!163248 (isDefined!241 (getValueByKey!299 (toList!1903 lt!126129) (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))))

(assert (= (and d!61111 c!42364) b!251721))

(assert (= (and d!61111 (not c!42364)) b!251722))

(assert (= (and d!61111 (not res!123254)) b!251723))

(assert (=> d!61111 m!267797))

(declare-fun m!267971 () Bool)

(assert (=> d!61111 m!267971))

(assert (=> b!251721 m!267797))

(declare-fun m!267973 () Bool)

(assert (=> b!251721 m!267973))

(assert (=> b!251721 m!267797))

(declare-fun m!267975 () Bool)

(assert (=> b!251721 m!267975))

(assert (=> b!251721 m!267975))

(declare-fun m!267977 () Bool)

(assert (=> b!251721 m!267977))

(assert (=> b!251723 m!267797))

(assert (=> b!251723 m!267975))

(assert (=> b!251723 m!267975))

(assert (=> b!251723 m!267977))

(assert (=> b!251539 d!61111))

(declare-fun d!61113 () Bool)

(declare-fun e!163250 () Bool)

(assert (=> d!61113 e!163250))

(declare-fun res!123255 () Bool)

(assert (=> d!61113 (=> res!123255 e!163250)))

(declare-fun lt!126222 () Bool)

(assert (=> d!61113 (= res!123255 (not lt!126222))))

(declare-fun lt!126219 () Bool)

(assert (=> d!61113 (= lt!126222 lt!126219)))

(declare-fun lt!126221 () Unit!7778)

(declare-fun e!163249 () Unit!7778)

(assert (=> d!61113 (= lt!126221 e!163249)))

(declare-fun c!42365 () Bool)

(assert (=> d!61113 (= c!42365 lt!126219)))

(assert (=> d!61113 (= lt!126219 (containsKey!291 (toList!1903 lt!126129) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> d!61113 (= (contains!1821 lt!126129 #b0000000000000000000000000000000000000000000000000000000000000000) lt!126222)))

(declare-fun b!251724 () Bool)

(declare-fun lt!126220 () Unit!7778)

(assert (=> b!251724 (= e!163249 lt!126220)))

(assert (=> b!251724 (= lt!126220 (lemmaContainsKeyImpliesGetValueByKeyDefined!240 (toList!1903 lt!126129) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251724 (isDefined!241 (getValueByKey!299 (toList!1903 lt!126129) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251725 () Bool)

(declare-fun Unit!7791 () Unit!7778)

(assert (=> b!251725 (= e!163249 Unit!7791)))

(declare-fun b!251726 () Bool)

(assert (=> b!251726 (= e!163250 (isDefined!241 (getValueByKey!299 (toList!1903 lt!126129) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61113 c!42365) b!251724))

(assert (= (and d!61113 (not c!42365)) b!251725))

(assert (= (and d!61113 (not res!123255)) b!251726))

(declare-fun m!267979 () Bool)

(assert (=> d!61113 m!267979))

(declare-fun m!267981 () Bool)

(assert (=> b!251724 m!267981))

(declare-fun m!267983 () Bool)

(assert (=> b!251724 m!267983))

(assert (=> b!251724 m!267983))

(declare-fun m!267985 () Bool)

(assert (=> b!251724 m!267985))

(assert (=> b!251726 m!267983))

(assert (=> b!251726 m!267983))

(assert (=> b!251726 m!267985))

(assert (=> bm!23672 d!61113))

(declare-fun d!61115 () Bool)

(declare-fun res!123260 () Bool)

(declare-fun e!163255 () Bool)

(assert (=> d!61115 (=> res!123260 e!163255)))

(assert (=> d!61115 (= res!123260 (and ((_ is Cons!3748) (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))) (= (_1!2434 (h!4409 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))))) key!932)))))

(assert (=> d!61115 (= (containsKey!291 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932) e!163255)))

(declare-fun b!251731 () Bool)

(declare-fun e!163256 () Bool)

(assert (=> b!251731 (= e!163255 e!163256)))

(declare-fun res!123261 () Bool)

(assert (=> b!251731 (=> (not res!123261) (not e!163256))))

(assert (=> b!251731 (= res!123261 (and (or (not ((_ is Cons!3748) (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))))) (bvsle (_1!2434 (h!4409 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))))) key!932)) ((_ is Cons!3748) (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))) (bvslt (_1!2434 (h!4409 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))))) key!932)))))

(declare-fun b!251732 () Bool)

(assert (=> b!251732 (= e!163256 (containsKey!291 (t!8797 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))) key!932))))

(assert (= (and d!61115 (not res!123260)) b!251731))

(assert (= (and b!251731 res!123261) b!251732))

(declare-fun m!267987 () Bool)

(assert (=> b!251732 m!267987))

(assert (=> d!61055 d!61115))

(declare-fun b!251745 () Bool)

(declare-fun e!163263 () SeekEntryResult!1137)

(assert (=> b!251745 (= e!163263 Undefined!1137)))

(declare-fun b!251746 () Bool)

(declare-fun e!163264 () SeekEntryResult!1137)

(assert (=> b!251746 (= e!163264 (Found!1137 (index!6720 lt!126059)))))

(declare-fun b!251747 () Bool)

(declare-fun e!163265 () SeekEntryResult!1137)

(assert (=> b!251747 (= e!163265 (MissingVacant!1137 (index!6720 lt!126059)))))

(declare-fun b!251748 () Bool)

(declare-fun nextIndex!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!251748 (= e!163265 (seekKeyOrZeroReturnVacant!0 (bvadd (x!24731 lt!126059) #b00000000000000000000000000000001) (nextIndex!0 (index!6720 lt!126059) (x!24731 lt!126059) (mask!10847 thiss!1504)) (index!6720 lt!126059) key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun b!251749 () Bool)

(assert (=> b!251749 (= e!163263 e!163264)))

(declare-fun c!42372 () Bool)

(declare-fun lt!126228 () (_ BitVec 64))

(assert (=> b!251749 (= c!42372 (= lt!126228 key!932))))

(declare-fun b!251750 () Bool)

(declare-fun c!42374 () Bool)

(assert (=> b!251750 (= c!42374 (= lt!126228 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251750 (= e!163264 e!163265)))

(declare-fun d!61117 () Bool)

(declare-fun lt!126227 () SeekEntryResult!1137)

(assert (=> d!61117 (and (or ((_ is Undefined!1137) lt!126227) (not ((_ is Found!1137) lt!126227)) (and (bvsge (index!6719 lt!126227) #b00000000000000000000000000000000) (bvslt (index!6719 lt!126227) (size!6188 (_keys!6788 thiss!1504))))) (or ((_ is Undefined!1137) lt!126227) ((_ is Found!1137) lt!126227) (not ((_ is MissingVacant!1137) lt!126227)) (not (= (index!6721 lt!126227) (index!6720 lt!126059))) (and (bvsge (index!6721 lt!126227) #b00000000000000000000000000000000) (bvslt (index!6721 lt!126227) (size!6188 (_keys!6788 thiss!1504))))) (or ((_ is Undefined!1137) lt!126227) (ite ((_ is Found!1137) lt!126227) (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6719 lt!126227)) key!932) (and ((_ is MissingVacant!1137) lt!126227) (= (index!6721 lt!126227) (index!6720 lt!126059)) (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6721 lt!126227)) #b1000000000000000000000000000000000000000000000000000000000000000)))))))

(assert (=> d!61117 (= lt!126227 e!163263)))

(declare-fun c!42373 () Bool)

(assert (=> d!61117 (= c!42373 (bvsge (x!24731 lt!126059) #b01111111111111111111111111111110))))

(assert (=> d!61117 (= lt!126228 (select (arr!5842 (_keys!6788 thiss!1504)) (index!6720 lt!126059)))))

(assert (=> d!61117 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61117 (= (seekKeyOrZeroReturnVacant!0 (x!24731 lt!126059) (index!6720 lt!126059) (index!6720 lt!126059) key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)) lt!126227)))

(assert (= (and d!61117 c!42373) b!251745))

(assert (= (and d!61117 (not c!42373)) b!251749))

(assert (= (and b!251749 c!42372) b!251746))

(assert (= (and b!251749 (not c!42372)) b!251750))

(assert (= (and b!251750 c!42374) b!251747))

(assert (= (and b!251750 (not c!42374)) b!251748))

(declare-fun m!267989 () Bool)

(assert (=> b!251748 m!267989))

(assert (=> b!251748 m!267989))

(declare-fun m!267991 () Bool)

(assert (=> b!251748 m!267991))

(declare-fun m!267993 () Bool)

(assert (=> d!61117 m!267993))

(declare-fun m!267995 () Bool)

(assert (=> d!61117 m!267995))

(assert (=> d!61117 m!267769))

(assert (=> d!61117 m!267685))

(assert (=> b!251464 d!61117))

(declare-fun d!61119 () Bool)

(declare-fun get!3008 (Option!305) V!8315)

(assert (=> d!61119 (= (apply!242 lt!126129 #b1000000000000000000000000000000000000000000000000000000000000000) (get!3008 (getValueByKey!299 (toList!1903 lt!126129) #b1000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9012 () Bool)

(assert (= bs!9012 d!61119))

(assert (=> bs!9012 m!267927))

(assert (=> bs!9012 m!267927))

(declare-fun m!267997 () Bool)

(assert (=> bs!9012 m!267997))

(assert (=> b!251543 d!61119))

(declare-fun d!61121 () Bool)

(assert (=> d!61121 (= (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)) (and (not (= (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!251527 d!61121))

(declare-fun d!61123 () Bool)

(assert (=> d!61123 (= (apply!242 lt!126129 #b0000000000000000000000000000000000000000000000000000000000000000) (get!3008 (getValueByKey!299 (toList!1903 lt!126129) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun bs!9013 () Bool)

(assert (= bs!9013 d!61123))

(assert (=> bs!9013 m!267983))

(assert (=> bs!9013 m!267983))

(declare-fun m!267999 () Bool)

(assert (=> bs!9013 m!267999))

(assert (=> b!251531 d!61123))

(declare-fun call!23700 () Bool)

(declare-fun bm!23697 () Bool)

(declare-fun c!42375 () Bool)

(assert (=> bm!23697 (= call!23700 (arrayNoDuplicates!0 lt!126017 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (ite c!42375 (Cons!3749 (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) (ite c!42342 (Cons!3749 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) Nil!3750) Nil!3750)) (ite c!42342 (Cons!3749 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) Nil!3750) Nil!3750))))))

(declare-fun d!61125 () Bool)

(declare-fun res!123262 () Bool)

(declare-fun e!163267 () Bool)

(assert (=> d!61125 (=> res!123262 e!163267)))

(assert (=> d!61125 (= res!123262 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 lt!126017)))))

(assert (=> d!61125 (= (arrayNoDuplicates!0 lt!126017 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42342 (Cons!3749 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) Nil!3750) Nil!3750)) e!163267)))

(declare-fun b!251751 () Bool)

(declare-fun e!163266 () Bool)

(assert (=> b!251751 (= e!163266 (contains!1823 (ite c!42342 (Cons!3749 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) Nil!3750) Nil!3750) (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251752 () Bool)

(declare-fun e!163268 () Bool)

(assert (=> b!251752 (= e!163268 call!23700)))

(declare-fun b!251753 () Bool)

(declare-fun e!163269 () Bool)

(assert (=> b!251753 (= e!163269 e!163268)))

(assert (=> b!251753 (= c!42375 (validKeyInArray!0 (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251754 () Bool)

(assert (=> b!251754 (= e!163268 call!23700)))

(declare-fun b!251755 () Bool)

(assert (=> b!251755 (= e!163267 e!163269)))

(declare-fun res!123264 () Bool)

(assert (=> b!251755 (=> (not res!123264) (not e!163269))))

(assert (=> b!251755 (= res!123264 (not e!163266))))

(declare-fun res!123263 () Bool)

(assert (=> b!251755 (=> (not res!123263) (not e!163266))))

(assert (=> b!251755 (= res!123263 (validKeyInArray!0 (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (= (and d!61125 (not res!123262)) b!251755))

(assert (= (and b!251755 res!123263) b!251751))

(assert (= (and b!251755 res!123264) b!251753))

(assert (= (and b!251753 c!42375) b!251752))

(assert (= (and b!251753 (not c!42375)) b!251754))

(assert (= (or b!251752 b!251754) bm!23697))

(declare-fun m!268001 () Bool)

(assert (=> bm!23697 m!268001))

(declare-fun m!268003 () Bool)

(assert (=> bm!23697 m!268003))

(assert (=> b!251751 m!268001))

(assert (=> b!251751 m!268001))

(declare-fun m!268005 () Bool)

(assert (=> b!251751 m!268005))

(assert (=> b!251753 m!268001))

(assert (=> b!251753 m!268001))

(declare-fun m!268007 () Bool)

(assert (=> b!251753 m!268007))

(assert (=> b!251755 m!268001))

(assert (=> b!251755 m!268001))

(assert (=> b!251755 m!268007))

(assert (=> bm!23685 d!61125))

(declare-fun d!61127 () Bool)

(assert (=> d!61127 (= (apply!242 lt!126129 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)) (get!3008 (getValueByKey!299 (toList!1903 lt!126129) (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000))))))

(declare-fun bs!9014 () Bool)

(assert (= bs!9014 d!61127))

(assert (=> bs!9014 m!267797))

(assert (=> bs!9014 m!267975))

(assert (=> bs!9014 m!267975))

(declare-fun m!268009 () Bool)

(assert (=> bs!9014 m!268009))

(assert (=> b!251540 d!61127))

(declare-fun d!61129 () Bool)

(declare-fun c!42378 () Bool)

(assert (=> d!61129 (= c!42378 ((_ is ValueCellFull!2907) (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun e!163272 () V!8315)

(assert (=> d!61129 (= (get!3007 (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!580 (defaultEntry!4646 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)) e!163272)))

(declare-fun b!251760 () Bool)

(declare-fun get!3009 (ValueCell!2907 V!8315) V!8315)

(assert (=> b!251760 (= e!163272 (get!3009 (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!580 (defaultEntry!4646 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!251761 () Bool)

(declare-fun get!3010 (ValueCell!2907 V!8315) V!8315)

(assert (=> b!251761 (= e!163272 (get!3010 (select (arr!5841 (_values!4629 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!580 (defaultEntry!4646 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(assert (= (and d!61129 c!42378) b!251760))

(assert (= (and d!61129 (not c!42378)) b!251761))

(assert (=> b!251760 m!267847))

(assert (=> b!251760 m!267849))

(declare-fun m!268011 () Bool)

(assert (=> b!251760 m!268011))

(assert (=> b!251761 m!267847))

(assert (=> b!251761 m!267849))

(declare-fun m!268013 () Bool)

(assert (=> b!251761 m!268013))

(assert (=> b!251540 d!61129))

(declare-fun d!61131 () Bool)

(declare-fun res!123265 () Bool)

(declare-fun e!163273 () Bool)

(assert (=> d!61131 (=> res!123265 e!163273)))

(assert (=> d!61131 (= res!123265 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 lt!126017)))))

(assert (=> d!61131 (= (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!126017 (mask!10847 thiss!1504)) e!163273)))

(declare-fun b!251762 () Bool)

(declare-fun e!163275 () Bool)

(assert (=> b!251762 (= e!163273 e!163275)))

(declare-fun c!42379 () Bool)

(assert (=> b!251762 (= c!42379 (validKeyInArray!0 (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251763 () Bool)

(declare-fun call!23701 () Bool)

(assert (=> b!251763 (= e!163275 call!23701)))

(declare-fun bm!23698 () Bool)

(assert (=> bm!23698 (= call!23701 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) lt!126017 (mask!10847 thiss!1504)))))

(declare-fun b!251764 () Bool)

(declare-fun e!163274 () Bool)

(assert (=> b!251764 (= e!163274 call!23701)))

(declare-fun b!251765 () Bool)

(assert (=> b!251765 (= e!163275 e!163274)))

(declare-fun lt!126229 () (_ BitVec 64))

(assert (=> b!251765 (= lt!126229 (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(declare-fun lt!126230 () Unit!7778)

(assert (=> b!251765 (= lt!126230 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!126017 lt!126229 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (=> b!251765 (arrayContainsKey!0 lt!126017 lt!126229 #b00000000000000000000000000000000)))

(declare-fun lt!126231 () Unit!7778)

(assert (=> b!251765 (= lt!126231 lt!126230)))

(declare-fun res!123266 () Bool)

(assert (=> b!251765 (= res!123266 (= (seekEntryOrOpen!0 (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) lt!126017 (mask!10847 thiss!1504)) (Found!1137 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(assert (=> b!251765 (=> (not res!123266) (not e!163274))))

(assert (= (and d!61131 (not res!123265)) b!251762))

(assert (= (and b!251762 c!42379) b!251765))

(assert (= (and b!251762 (not c!42379)) b!251763))

(assert (= (and b!251765 res!123266) b!251764))

(assert (= (or b!251764 b!251763) bm!23698))

(assert (=> b!251762 m!268001))

(assert (=> b!251762 m!268001))

(assert (=> b!251762 m!268007))

(declare-fun m!268015 () Bool)

(assert (=> bm!23698 m!268015))

(assert (=> b!251765 m!268001))

(declare-fun m!268017 () Bool)

(assert (=> b!251765 m!268017))

(declare-fun m!268019 () Bool)

(assert (=> b!251765 m!268019))

(assert (=> b!251765 m!268001))

(declare-fun m!268021 () Bool)

(assert (=> b!251765 m!268021))

(assert (=> bm!23681 d!61131))

(declare-fun d!61133 () Bool)

(assert (=> d!61133 (= (arrayCountValidKeys!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6788 thiss!1504) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000001))))

(assert (=> d!61133 true))

(declare-fun _$84!33 () Unit!7778)

(assert (=> d!61133 (= (choose!1 (_keys!6788 thiss!1504) index!297 key!932) _$84!33)))

(declare-fun bs!9015 () Bool)

(assert (= bs!9015 d!61133))

(assert (=> bs!9015 m!267695))

(assert (=> bs!9015 m!267857))

(assert (=> bs!9015 m!267697))

(assert (=> d!61061 d!61133))

(declare-fun d!61135 () Bool)

(assert (=> d!61135 (= (validKeyInArray!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)) (and (not (= (select (arr!5842 lt!126017) #b00000000000000000000000000000000) #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= (select (arr!5842 lt!126017) #b00000000000000000000000000000000) #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!251585 d!61135))

(declare-fun d!61137 () Bool)

(declare-fun e!163276 () Bool)

(assert (=> d!61137 e!163276))

(declare-fun res!123267 () Bool)

(assert (=> d!61137 (=> (not res!123267) (not e!163276))))

(declare-fun lt!126234 () ListLongMap!3775)

(assert (=> d!61137 (= res!123267 (contains!1821 lt!126234 (_1!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))))))

(declare-fun lt!126232 () List!3752)

(assert (=> d!61137 (= lt!126234 (ListLongMap!3776 lt!126232))))

(declare-fun lt!126233 () Unit!7778)

(declare-fun lt!126235 () Unit!7778)

(assert (=> d!61137 (= lt!126233 lt!126235)))

(assert (=> d!61137 (= (getValueByKey!299 lt!126232 (_1!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))))))

(assert (=> d!61137 (= lt!126235 (lemmaContainsTupThenGetReturnValue!161 lt!126232 (_1!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))))))

(assert (=> d!61137 (= lt!126232 (insertStrictlySorted!163 (toList!1903 lt!126126) (_1!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))))))

(assert (=> d!61137 (= (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))) lt!126234)))

(declare-fun b!251766 () Bool)

(declare-fun res!123268 () Bool)

(assert (=> b!251766 (=> (not res!123268) (not e!163276))))

(assert (=> b!251766 (= res!123268 (= (getValueByKey!299 (toList!1903 lt!126234) (_1!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))))))))

(declare-fun b!251767 () Bool)

(assert (=> b!251767 (= e!163276 (contains!1824 (toList!1903 lt!126234) (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))))))

(assert (= (and d!61137 res!123267) b!251766))

(assert (= (and b!251766 res!123268) b!251767))

(declare-fun m!268023 () Bool)

(assert (=> d!61137 m!268023))

(declare-fun m!268025 () Bool)

(assert (=> d!61137 m!268025))

(declare-fun m!268027 () Bool)

(assert (=> d!61137 m!268027))

(declare-fun m!268029 () Bool)

(assert (=> d!61137 m!268029))

(declare-fun m!268031 () Bool)

(assert (=> b!251766 m!268031))

(declare-fun m!268033 () Bool)

(assert (=> b!251767 m!268033))

(assert (=> b!251534 d!61137))

(declare-fun d!61139 () Bool)

(assert (=> d!61139 (= (apply!242 (+!664 lt!126123 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))) lt!126138) (apply!242 lt!126123 lt!126138))))

(declare-fun lt!126238 () Unit!7778)

(declare-fun choose!1205 (ListLongMap!3775 (_ BitVec 64) V!8315 (_ BitVec 64)) Unit!7778)

(assert (=> d!61139 (= lt!126238 (choose!1205 lt!126123 lt!126133 (zeroValue!4487 thiss!1504) lt!126138))))

(declare-fun e!163279 () Bool)

(assert (=> d!61139 e!163279))

(declare-fun res!123271 () Bool)

(assert (=> d!61139 (=> (not res!123271) (not e!163279))))

(assert (=> d!61139 (= res!123271 (contains!1821 lt!126123 lt!126138))))

(assert (=> d!61139 (= (addApplyDifferent!218 lt!126123 lt!126133 (zeroValue!4487 thiss!1504) lt!126138) lt!126238)))

(declare-fun b!251771 () Bool)

(assert (=> b!251771 (= e!163279 (not (= lt!126138 lt!126133)))))

(assert (= (and d!61139 res!123271) b!251771))

(assert (=> d!61139 m!267819))

(declare-fun m!268035 () Bool)

(assert (=> d!61139 m!268035))

(declare-fun m!268037 () Bool)

(assert (=> d!61139 m!268037))

(assert (=> d!61139 m!267817))

(assert (=> d!61139 m!267819))

(assert (=> d!61139 m!267829))

(assert (=> b!251534 d!61139))

(declare-fun d!61141 () Bool)

(assert (=> d!61141 (= (apply!242 lt!126123 lt!126138) (get!3008 (getValueByKey!299 (toList!1903 lt!126123) lt!126138)))))

(declare-fun bs!9016 () Bool)

(assert (= bs!9016 d!61141))

(declare-fun m!268039 () Bool)

(assert (=> bs!9016 m!268039))

(assert (=> bs!9016 m!268039))

(declare-fun m!268041 () Bool)

(assert (=> bs!9016 m!268041))

(assert (=> b!251534 d!61141))

(declare-fun d!61143 () Bool)

(declare-fun e!163280 () Bool)

(assert (=> d!61143 e!163280))

(declare-fun res!123272 () Bool)

(assert (=> d!61143 (=> (not res!123272) (not e!163280))))

(declare-fun lt!126241 () ListLongMap!3775)

(assert (=> d!61143 (= res!123272 (contains!1821 lt!126241 (_1!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504)))))))

(declare-fun lt!126239 () List!3752)

(assert (=> d!61143 (= lt!126241 (ListLongMap!3776 lt!126239))))

(declare-fun lt!126240 () Unit!7778)

(declare-fun lt!126242 () Unit!7778)

(assert (=> d!61143 (= lt!126240 lt!126242)))

(assert (=> d!61143 (= (getValueByKey!299 lt!126239 (_1!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504)))))))

(assert (=> d!61143 (= lt!126242 (lemmaContainsTupThenGetReturnValue!161 lt!126239 (_1!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504)))))))

(assert (=> d!61143 (= lt!126239 (insertStrictlySorted!163 (toList!1903 lt!126143) (_1!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504)))))))

(assert (=> d!61143 (= (+!664 lt!126143 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))) lt!126241)))

(declare-fun b!251772 () Bool)

(declare-fun res!123273 () Bool)

(assert (=> b!251772 (=> (not res!123273) (not e!163280))))

(assert (=> b!251772 (= res!123273 (= (getValueByKey!299 (toList!1903 lt!126241) (_1!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))))))))

(declare-fun b!251773 () Bool)

(assert (=> b!251773 (= e!163280 (contains!1824 (toList!1903 lt!126241) (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))))))

(assert (= (and d!61143 res!123272) b!251772))

(assert (= (and b!251772 res!123273) b!251773))

(declare-fun m!268043 () Bool)

(assert (=> d!61143 m!268043))

(declare-fun m!268045 () Bool)

(assert (=> d!61143 m!268045))

(declare-fun m!268047 () Bool)

(assert (=> d!61143 m!268047))

(declare-fun m!268049 () Bool)

(assert (=> d!61143 m!268049))

(declare-fun m!268051 () Bool)

(assert (=> b!251772 m!268051))

(declare-fun m!268053 () Bool)

(assert (=> b!251773 m!268053))

(assert (=> b!251534 d!61143))

(declare-fun d!61145 () Bool)

(assert (=> d!61145 (= (apply!242 (+!664 lt!126143 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))) lt!126124) (apply!242 lt!126143 lt!126124))))

(declare-fun lt!126243 () Unit!7778)

(assert (=> d!61145 (= lt!126243 (choose!1205 lt!126143 lt!126142 (minValue!4487 thiss!1504) lt!126124))))

(declare-fun e!163281 () Bool)

(assert (=> d!61145 e!163281))

(declare-fun res!123274 () Bool)

(assert (=> d!61145 (=> (not res!123274) (not e!163281))))

(assert (=> d!61145 (= res!123274 (contains!1821 lt!126143 lt!126124))))

(assert (=> d!61145 (= (addApplyDifferent!218 lt!126143 lt!126142 (minValue!4487 thiss!1504) lt!126124) lt!126243)))

(declare-fun b!251774 () Bool)

(assert (=> b!251774 (= e!163281 (not (= lt!126124 lt!126142)))))

(assert (= (and d!61145 res!123274) b!251774))

(assert (=> d!61145 m!267831))

(declare-fun m!268055 () Bool)

(assert (=> d!61145 m!268055))

(declare-fun m!268057 () Bool)

(assert (=> d!61145 m!268057))

(assert (=> d!61145 m!267827))

(assert (=> d!61145 m!267831))

(assert (=> d!61145 m!267833))

(assert (=> b!251534 d!61145))

(declare-fun d!61147 () Bool)

(assert (=> d!61147 (= (apply!242 (+!664 lt!126131 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))) lt!126139) (get!3008 (getValueByKey!299 (toList!1903 (+!664 lt!126131 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504)))) lt!126139)))))

(declare-fun bs!9017 () Bool)

(assert (= bs!9017 d!61147))

(declare-fun m!268059 () Bool)

(assert (=> bs!9017 m!268059))

(assert (=> bs!9017 m!268059))

(declare-fun m!268061 () Bool)

(assert (=> bs!9017 m!268061))

(assert (=> b!251534 d!61147))

(declare-fun d!61149 () Bool)

(assert (=> d!61149 (= (apply!242 lt!126131 lt!126139) (get!3008 (getValueByKey!299 (toList!1903 lt!126131) lt!126139)))))

(declare-fun bs!9018 () Bool)

(assert (= bs!9018 d!61149))

(declare-fun m!268063 () Bool)

(assert (=> bs!9018 m!268063))

(assert (=> bs!9018 m!268063))

(declare-fun m!268065 () Bool)

(assert (=> bs!9018 m!268065))

(assert (=> b!251534 d!61149))

(declare-fun d!61151 () Bool)

(assert (=> d!61151 (= (apply!242 lt!126143 lt!126124) (get!3008 (getValueByKey!299 (toList!1903 lt!126143) lt!126124)))))

(declare-fun bs!9019 () Bool)

(assert (= bs!9019 d!61151))

(declare-fun m!268067 () Bool)

(assert (=> bs!9019 m!268067))

(assert (=> bs!9019 m!268067))

(declare-fun m!268069 () Bool)

(assert (=> bs!9019 m!268069))

(assert (=> b!251534 d!61151))

(declare-fun d!61153 () Bool)

(declare-fun e!163282 () Bool)

(assert (=> d!61153 e!163282))

(declare-fun res!123275 () Bool)

(assert (=> d!61153 (=> (not res!123275) (not e!163282))))

(declare-fun lt!126246 () ListLongMap!3775)

(assert (=> d!61153 (= res!123275 (contains!1821 lt!126246 (_1!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504)))))))

(declare-fun lt!126244 () List!3752)

(assert (=> d!61153 (= lt!126246 (ListLongMap!3776 lt!126244))))

(declare-fun lt!126245 () Unit!7778)

(declare-fun lt!126247 () Unit!7778)

(assert (=> d!61153 (= lt!126245 lt!126247)))

(assert (=> d!61153 (= (getValueByKey!299 lt!126244 (_1!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504)))))))

(assert (=> d!61153 (= lt!126247 (lemmaContainsTupThenGetReturnValue!161 lt!126244 (_1!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504)))))))

(assert (=> d!61153 (= lt!126244 (insertStrictlySorted!163 (toList!1903 lt!126123) (_1!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504)))))))

(assert (=> d!61153 (= (+!664 lt!126123 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))) lt!126246)))

(declare-fun b!251775 () Bool)

(declare-fun res!123276 () Bool)

(assert (=> b!251775 (=> (not res!123276) (not e!163282))))

(assert (=> b!251775 (= res!123276 (= (getValueByKey!299 (toList!1903 lt!126246) (_1!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))))))))

(declare-fun b!251776 () Bool)

(assert (=> b!251776 (= e!163282 (contains!1824 (toList!1903 lt!126246) (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))))))

(assert (= (and d!61153 res!123275) b!251775))

(assert (= (and b!251775 res!123276) b!251776))

(declare-fun m!268071 () Bool)

(assert (=> d!61153 m!268071))

(declare-fun m!268073 () Bool)

(assert (=> d!61153 m!268073))

(declare-fun m!268075 () Bool)

(assert (=> d!61153 m!268075))

(declare-fun m!268077 () Bool)

(assert (=> d!61153 m!268077))

(declare-fun m!268079 () Bool)

(assert (=> b!251775 m!268079))

(declare-fun m!268081 () Bool)

(assert (=> b!251776 m!268081))

(assert (=> b!251534 d!61153))

(declare-fun d!61155 () Bool)

(assert (=> d!61155 (= (apply!242 (+!664 lt!126143 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504))) lt!126124) (get!3008 (getValueByKey!299 (toList!1903 (+!664 lt!126143 (tuple2!4849 lt!126142 (minValue!4487 thiss!1504)))) lt!126124)))))

(declare-fun bs!9020 () Bool)

(assert (= bs!9020 d!61155))

(declare-fun m!268083 () Bool)

(assert (=> bs!9020 m!268083))

(assert (=> bs!9020 m!268083))

(declare-fun m!268085 () Bool)

(assert (=> bs!9020 m!268085))

(assert (=> b!251534 d!61155))

(assert (=> b!251534 d!61097))

(declare-fun d!61157 () Bool)

(assert (=> d!61157 (= (apply!242 (+!664 lt!126131 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))) lt!126139) (apply!242 lt!126131 lt!126139))))

(declare-fun lt!126248 () Unit!7778)

(assert (=> d!61157 (= lt!126248 (choose!1205 lt!126131 lt!126132 (minValue!4487 thiss!1504) lt!126139))))

(declare-fun e!163283 () Bool)

(assert (=> d!61157 e!163283))

(declare-fun res!123277 () Bool)

(assert (=> d!61157 (=> (not res!123277) (not e!163283))))

(assert (=> d!61157 (= res!123277 (contains!1821 lt!126131 lt!126139))))

(assert (=> d!61157 (= (addApplyDifferent!218 lt!126131 lt!126132 (minValue!4487 thiss!1504) lt!126139) lt!126248)))

(declare-fun b!251777 () Bool)

(assert (=> b!251777 (= e!163283 (not (= lt!126139 lt!126132)))))

(assert (= (and d!61157 res!123277) b!251777))

(assert (=> d!61157 m!267811))

(declare-fun m!268087 () Bool)

(assert (=> d!61157 m!268087))

(declare-fun m!268089 () Bool)

(assert (=> d!61157 m!268089))

(assert (=> d!61157 m!267837))

(assert (=> d!61157 m!267811))

(assert (=> d!61157 m!267839))

(assert (=> b!251534 d!61157))

(declare-fun d!61159 () Bool)

(assert (=> d!61159 (contains!1821 (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))) lt!126135)))

(declare-fun lt!126251 () Unit!7778)

(declare-fun choose!1206 (ListLongMap!3775 (_ BitVec 64) V!8315 (_ BitVec 64)) Unit!7778)

(assert (=> d!61159 (= lt!126251 (choose!1206 lt!126126 lt!126125 (zeroValue!4487 thiss!1504) lt!126135))))

(assert (=> d!61159 (contains!1821 lt!126126 lt!126135)))

(assert (=> d!61159 (= (addStillContains!218 lt!126126 lt!126125 (zeroValue!4487 thiss!1504) lt!126135) lt!126251)))

(declare-fun bs!9021 () Bool)

(assert (= bs!9021 d!61159))

(assert (=> bs!9021 m!267823))

(assert (=> bs!9021 m!267823))

(assert (=> bs!9021 m!267825))

(declare-fun m!268091 () Bool)

(assert (=> bs!9021 m!268091))

(declare-fun m!268093 () Bool)

(assert (=> bs!9021 m!268093))

(assert (=> b!251534 d!61159))

(declare-fun d!61161 () Bool)

(declare-fun e!163285 () Bool)

(assert (=> d!61161 e!163285))

(declare-fun res!123278 () Bool)

(assert (=> d!61161 (=> res!123278 e!163285)))

(declare-fun lt!126255 () Bool)

(assert (=> d!61161 (= res!123278 (not lt!126255))))

(declare-fun lt!126252 () Bool)

(assert (=> d!61161 (= lt!126255 lt!126252)))

(declare-fun lt!126254 () Unit!7778)

(declare-fun e!163284 () Unit!7778)

(assert (=> d!61161 (= lt!126254 e!163284)))

(declare-fun c!42380 () Bool)

(assert (=> d!61161 (= c!42380 lt!126252)))

(assert (=> d!61161 (= lt!126252 (containsKey!291 (toList!1903 (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))) lt!126135))))

(assert (=> d!61161 (= (contains!1821 (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504))) lt!126135) lt!126255)))

(declare-fun b!251779 () Bool)

(declare-fun lt!126253 () Unit!7778)

(assert (=> b!251779 (= e!163284 lt!126253)))

(assert (=> b!251779 (= lt!126253 (lemmaContainsKeyImpliesGetValueByKeyDefined!240 (toList!1903 (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))) lt!126135))))

(assert (=> b!251779 (isDefined!241 (getValueByKey!299 (toList!1903 (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))) lt!126135))))

(declare-fun b!251780 () Bool)

(declare-fun Unit!7792 () Unit!7778)

(assert (=> b!251780 (= e!163284 Unit!7792)))

(declare-fun b!251781 () Bool)

(assert (=> b!251781 (= e!163285 (isDefined!241 (getValueByKey!299 (toList!1903 (+!664 lt!126126 (tuple2!4849 lt!126125 (zeroValue!4487 thiss!1504)))) lt!126135)))))

(assert (= (and d!61161 c!42380) b!251779))

(assert (= (and d!61161 (not c!42380)) b!251780))

(assert (= (and d!61161 (not res!123278)) b!251781))

(declare-fun m!268095 () Bool)

(assert (=> d!61161 m!268095))

(declare-fun m!268097 () Bool)

(assert (=> b!251779 m!268097))

(declare-fun m!268099 () Bool)

(assert (=> b!251779 m!268099))

(assert (=> b!251779 m!268099))

(declare-fun m!268101 () Bool)

(assert (=> b!251779 m!268101))

(assert (=> b!251781 m!268099))

(assert (=> b!251781 m!268099))

(assert (=> b!251781 m!268101))

(assert (=> b!251534 d!61161))

(declare-fun d!61163 () Bool)

(assert (=> d!61163 (= (apply!242 (+!664 lt!126123 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504))) lt!126138) (get!3008 (getValueByKey!299 (toList!1903 (+!664 lt!126123 (tuple2!4849 lt!126133 (zeroValue!4487 thiss!1504)))) lt!126138)))))

(declare-fun bs!9022 () Bool)

(assert (= bs!9022 d!61163))

(declare-fun m!268103 () Bool)

(assert (=> bs!9022 m!268103))

(assert (=> bs!9022 m!268103))

(declare-fun m!268105 () Bool)

(assert (=> bs!9022 m!268105))

(assert (=> b!251534 d!61163))

(declare-fun d!61165 () Bool)

(declare-fun e!163286 () Bool)

(assert (=> d!61165 e!163286))

(declare-fun res!123279 () Bool)

(assert (=> d!61165 (=> (not res!123279) (not e!163286))))

(declare-fun lt!126258 () ListLongMap!3775)

(assert (=> d!61165 (= res!123279 (contains!1821 lt!126258 (_1!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504)))))))

(declare-fun lt!126256 () List!3752)

(assert (=> d!61165 (= lt!126258 (ListLongMap!3776 lt!126256))))

(declare-fun lt!126257 () Unit!7778)

(declare-fun lt!126259 () Unit!7778)

(assert (=> d!61165 (= lt!126257 lt!126259)))

(assert (=> d!61165 (= (getValueByKey!299 lt!126256 (_1!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504)))))))

(assert (=> d!61165 (= lt!126259 (lemmaContainsTupThenGetReturnValue!161 lt!126256 (_1!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504)))))))

(assert (=> d!61165 (= lt!126256 (insertStrictlySorted!163 (toList!1903 lt!126131) (_1!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504)))))))

(assert (=> d!61165 (= (+!664 lt!126131 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))) lt!126258)))

(declare-fun b!251782 () Bool)

(declare-fun res!123280 () Bool)

(assert (=> b!251782 (=> (not res!123280) (not e!163286))))

(assert (=> b!251782 (= res!123280 (= (getValueByKey!299 (toList!1903 lt!126258) (_1!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))))))))

(declare-fun b!251783 () Bool)

(assert (=> b!251783 (= e!163286 (contains!1824 (toList!1903 lt!126258) (tuple2!4849 lt!126132 (minValue!4487 thiss!1504))))))

(assert (= (and d!61165 res!123279) b!251782))

(assert (= (and b!251782 res!123280) b!251783))

(declare-fun m!268107 () Bool)

(assert (=> d!61165 m!268107))

(declare-fun m!268109 () Bool)

(assert (=> d!61165 m!268109))

(declare-fun m!268111 () Bool)

(assert (=> d!61165 m!268111))

(declare-fun m!268113 () Bool)

(assert (=> d!61165 m!268113))

(declare-fun m!268115 () Bool)

(assert (=> b!251782 m!268115))

(declare-fun m!268117 () Bool)

(assert (=> b!251783 m!268117))

(assert (=> b!251534 d!61165))

(assert (=> b!251574 d!61121))

(declare-fun d!61167 () Bool)

(assert (=> d!61167 (= (validKeyInArray!0 key!932) (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!251562 d!61167))

(declare-fun bm!23699 () Bool)

(declare-fun call!23702 () Bool)

(declare-fun c!42381 () Bool)

(assert (=> bm!23699 (= call!23702 (arrayNoDuplicates!0 (_keys!6788 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42381 (Cons!3749 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000) Nil!3750) Nil!3750)))))

(declare-fun d!61169 () Bool)

(declare-fun res!123281 () Bool)

(declare-fun e!163288 () Bool)

(assert (=> d!61169 (=> res!123281 e!163288)))

(assert (=> d!61169 (= res!123281 (bvsge #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61169 (= (arrayNoDuplicates!0 (_keys!6788 thiss!1504) #b00000000000000000000000000000000 Nil!3750) e!163288)))

(declare-fun b!251784 () Bool)

(declare-fun e!163287 () Bool)

(assert (=> b!251784 (= e!163287 (contains!1823 Nil!3750 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251785 () Bool)

(declare-fun e!163289 () Bool)

(assert (=> b!251785 (= e!163289 call!23702)))

(declare-fun b!251786 () Bool)

(declare-fun e!163290 () Bool)

(assert (=> b!251786 (= e!163290 e!163289)))

(assert (=> b!251786 (= c!42381 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!251787 () Bool)

(assert (=> b!251787 (= e!163289 call!23702)))

(declare-fun b!251788 () Bool)

(assert (=> b!251788 (= e!163288 e!163290)))

(declare-fun res!123283 () Bool)

(assert (=> b!251788 (=> (not res!123283) (not e!163290))))

(assert (=> b!251788 (= res!123283 (not e!163287))))

(declare-fun res!123282 () Bool)

(assert (=> b!251788 (=> (not res!123282) (not e!163287))))

(assert (=> b!251788 (= res!123282 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (= (and d!61169 (not res!123281)) b!251788))

(assert (= (and b!251788 res!123282) b!251784))

(assert (= (and b!251788 res!123283) b!251786))

(assert (= (and b!251786 c!42381) b!251785))

(assert (= (and b!251786 (not c!42381)) b!251787))

(assert (= (or b!251785 b!251787) bm!23699))

(assert (=> bm!23699 m!267797))

(declare-fun m!268119 () Bool)

(assert (=> bm!23699 m!268119))

(assert (=> b!251784 m!267797))

(assert (=> b!251784 m!267797))

(declare-fun m!268121 () Bool)

(assert (=> b!251784 m!268121))

(assert (=> b!251786 m!267797))

(assert (=> b!251786 m!267797))

(assert (=> b!251786 m!267841))

(assert (=> b!251788 m!267797))

(assert (=> b!251788 m!267797))

(assert (=> b!251788 m!267841))

(assert (=> b!251646 d!61169))

(assert (=> b!251590 d!61135))

(declare-fun d!61171 () Bool)

(declare-fun lt!126260 () (_ BitVec 32))

(assert (=> d!61171 (and (bvsge lt!126260 #b00000000000000000000000000000000) (bvsle lt!126260 (bvsub (size!6188 (_keys!6788 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!163291 () (_ BitVec 32))

(assert (=> d!61171 (= lt!126260 e!163291)))

(declare-fun c!42382 () Bool)

(assert (=> d!61171 (= c!42382 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61171 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6188 (_keys!6788 thiss!1504)) (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61171 (= (arrayCountValidKeys!0 (_keys!6788 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))) lt!126260)))

(declare-fun bm!23700 () Bool)

(declare-fun call!23703 () (_ BitVec 32))

(assert (=> bm!23700 (= call!23703 (arrayCountValidKeys!0 (_keys!6788 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251789 () Bool)

(declare-fun e!163292 () (_ BitVec 32))

(assert (=> b!251789 (= e!163292 (bvadd #b00000000000000000000000000000001 call!23703))))

(declare-fun b!251790 () Bool)

(assert (=> b!251790 (= e!163291 e!163292)))

(declare-fun c!42383 () Bool)

(assert (=> b!251790 (= c!42383 (validKeyInArray!0 (select (arr!5842 (_keys!6788 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251791 () Bool)

(assert (=> b!251791 (= e!163291 #b00000000000000000000000000000000)))

(declare-fun b!251792 () Bool)

(assert (=> b!251792 (= e!163292 call!23703)))

(assert (= (and d!61171 c!42382) b!251791))

(assert (= (and d!61171 (not c!42382)) b!251790))

(assert (= (and b!251790 c!42383) b!251789))

(assert (= (and b!251790 (not c!42383)) b!251792))

(assert (= (or b!251789 b!251792) bm!23700))

(declare-fun m!268123 () Bool)

(assert (=> bm!23700 m!268123))

(declare-fun m!268125 () Bool)

(assert (=> b!251790 m!268125))

(assert (=> b!251790 m!268125))

(declare-fun m!268127 () Bool)

(assert (=> b!251790 m!268127))

(assert (=> bm!23678 d!61171))

(declare-fun d!61173 () Bool)

(declare-fun lt!126261 () (_ BitVec 32))

(assert (=> d!61173 (and (bvsge lt!126261 #b00000000000000000000000000000000) (bvsle lt!126261 (bvsub (size!6188 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun e!163293 () (_ BitVec 32))

(assert (=> d!61173 (= lt!126261 e!163293)))

(declare-fun c!42384 () Bool)

(assert (=> d!61173 (= c!42384 (bvsge #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61173 (and (bvsle #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6188 (_keys!6788 thiss!1504)) (size!6188 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))))))))

(assert (=> d!61173 (= (arrayCountValidKeys!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) #b00000000000000000000000000000000 (size!6188 (_keys!6788 thiss!1504))) lt!126261)))

(declare-fun bm!23701 () Bool)

(declare-fun call!23704 () (_ BitVec 32))

(assert (=> bm!23701 (= call!23704 (arrayCountValidKeys!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251793 () Bool)

(declare-fun e!163294 () (_ BitVec 32))

(assert (=> b!251793 (= e!163294 (bvadd #b00000000000000000000000000000001 call!23704))))

(declare-fun b!251794 () Bool)

(assert (=> b!251794 (= e!163293 e!163294)))

(declare-fun c!42385 () Bool)

(assert (=> b!251794 (= c!42385 (validKeyInArray!0 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!251795 () Bool)

(assert (=> b!251795 (= e!163293 #b00000000000000000000000000000000)))

(declare-fun b!251796 () Bool)

(assert (=> b!251796 (= e!163294 call!23704)))

(assert (= (and d!61173 c!42384) b!251795))

(assert (= (and d!61173 (not c!42384)) b!251794))

(assert (= (and b!251794 c!42385) b!251793))

(assert (= (and b!251794 (not c!42385)) b!251796))

(assert (= (or b!251793 b!251796) bm!23701))

(declare-fun m!268129 () Bool)

(assert (=> bm!23701 m!268129))

(assert (=> b!251794 m!267915))

(assert (=> b!251794 m!267915))

(assert (=> b!251794 m!267921))

(assert (=> b!251564 d!61173))

(assert (=> b!251564 d!61063))

(declare-fun d!61175 () Bool)

(declare-fun res!123284 () Bool)

(declare-fun e!163295 () Bool)

(assert (=> d!61175 (=> res!123284 e!163295)))

(assert (=> d!61175 (= res!123284 (= (select (arr!5842 (_keys!6788 thiss!1504)) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) key!932))))

(assert (=> d!61175 (= (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)) e!163295)))

(declare-fun b!251797 () Bool)

(declare-fun e!163296 () Bool)

(assert (=> b!251797 (= e!163295 e!163296)))

(declare-fun res!123285 () Bool)

(assert (=> b!251797 (=> (not res!123285) (not e!163296))))

(assert (=> b!251797 (= res!123285 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251798 () Bool)

(assert (=> b!251798 (= e!163296 (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001)))))

(assert (= (and d!61175 (not res!123284)) b!251797))

(assert (= (and b!251797 res!123285) b!251798))

(assert (=> d!61175 m!268125))

(declare-fun m!268131 () Bool)

(assert (=> b!251798 m!268131))

(assert (=> b!251552 d!61175))

(declare-fun d!61177 () Bool)

(declare-fun res!123286 () Bool)

(declare-fun e!163297 () Bool)

(assert (=> d!61177 (=> res!123286 e!163297)))

(assert (=> d!61177 (= res!123286 (bvsge #b00000000000000000000000000000000 (size!6188 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))))))))

(assert (=> d!61177 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) (mask!10847 thiss!1504)) e!163297)))

(declare-fun b!251799 () Bool)

(declare-fun e!163299 () Bool)

(assert (=> b!251799 (= e!163297 e!163299)))

(declare-fun c!42386 () Bool)

(assert (=> b!251799 (= c!42386 (validKeyInArray!0 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000)))))

(declare-fun b!251800 () Bool)

(declare-fun call!23705 () Bool)

(assert (=> b!251800 (= e!163299 call!23705)))

(declare-fun bm!23702 () Bool)

(assert (=> bm!23702 (= call!23705 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) (mask!10847 thiss!1504)))))

(declare-fun b!251801 () Bool)

(declare-fun e!163298 () Bool)

(assert (=> b!251801 (= e!163298 call!23705)))

(declare-fun b!251802 () Bool)

(assert (=> b!251802 (= e!163299 e!163298)))

(declare-fun lt!126262 () (_ BitVec 64))

(assert (=> b!251802 (= lt!126262 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000))))

(declare-fun lt!126263 () Unit!7778)

(assert (=> b!251802 (= lt!126263 (lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) lt!126262 #b00000000000000000000000000000000))))

(assert (=> b!251802 (arrayContainsKey!0 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) lt!126262 #b00000000000000000000000000000000)))

(declare-fun lt!126264 () Unit!7778)

(assert (=> b!251802 (= lt!126264 lt!126263)))

(declare-fun res!123287 () Bool)

(assert (=> b!251802 (= res!123287 (= (seekEntryOrOpen!0 (select (arr!5842 (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504)))) #b00000000000000000000000000000000) (array!12325 (store (arr!5842 (_keys!6788 thiss!1504)) index!297 key!932) (size!6188 (_keys!6788 thiss!1504))) (mask!10847 thiss!1504)) (Found!1137 #b00000000000000000000000000000000)))))

(assert (=> b!251802 (=> (not res!123287) (not e!163298))))

(assert (= (and d!61177 (not res!123286)) b!251799))

(assert (= (and b!251799 c!42386) b!251802))

(assert (= (and b!251799 (not c!42386)) b!251800))

(assert (= (and b!251802 res!123287) b!251801))

(assert (= (or b!251801 b!251800) bm!23702))

(assert (=> b!251799 m!267915))

(assert (=> b!251799 m!267915))

(assert (=> b!251799 m!267921))

(declare-fun m!268133 () Bool)

(assert (=> bm!23702 m!268133))

(assert (=> b!251802 m!267915))

(declare-fun m!268135 () Bool)

(assert (=> b!251802 m!268135))

(declare-fun m!268137 () Bool)

(assert (=> b!251802 m!268137))

(assert (=> b!251802 m!267915))

(declare-fun m!268139 () Bool)

(assert (=> b!251802 m!268139))

(assert (=> b!251613 d!61177))

(declare-fun d!61179 () Bool)

(assert (=> d!61179 (arrayContainsKey!0 lt!126017 lt!126156 #b00000000000000000000000000000000)))

(declare-fun lt!126267 () Unit!7778)

(declare-fun choose!13 (array!12324 (_ BitVec 64) (_ BitVec 32)) Unit!7778)

(assert (=> d!61179 (= lt!126267 (choose!13 lt!126017 lt!126156 #b00000000000000000000000000000000))))

(assert (=> d!61179 (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000)))

(assert (=> d!61179 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!126017 lt!126156 #b00000000000000000000000000000000) lt!126267)))

(declare-fun bs!9023 () Bool)

(assert (= bs!9023 d!61179))

(assert (=> bs!9023 m!267877))

(declare-fun m!268141 () Bool)

(assert (=> bs!9023 m!268141))

(assert (=> b!251588 d!61179))

(declare-fun d!61181 () Bool)

(declare-fun res!123288 () Bool)

(declare-fun e!163300 () Bool)

(assert (=> d!61181 (=> res!123288 e!163300)))

(assert (=> d!61181 (= res!123288 (= (select (arr!5842 lt!126017) #b00000000000000000000000000000000) lt!126156))))

(assert (=> d!61181 (= (arrayContainsKey!0 lt!126017 lt!126156 #b00000000000000000000000000000000) e!163300)))

(declare-fun b!251803 () Bool)

(declare-fun e!163301 () Bool)

(assert (=> b!251803 (= e!163300 e!163301)))

(declare-fun res!123289 () Bool)

(assert (=> b!251803 (=> (not res!123289) (not e!163301))))

(assert (=> b!251803 (= res!123289 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 lt!126017)))))

(declare-fun b!251804 () Bool)

(assert (=> b!251804 (= e!163301 (arrayContainsKey!0 lt!126017 lt!126156 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61181 (not res!123288)) b!251803))

(assert (= (and b!251803 res!123289) b!251804))

(assert (=> d!61181 m!267869))

(declare-fun m!268143 () Bool)

(assert (=> b!251804 m!268143))

(assert (=> b!251588 d!61181))

(declare-fun b!251805 () Bool)

(declare-fun e!163303 () SeekEntryResult!1137)

(declare-fun e!163302 () SeekEntryResult!1137)

(assert (=> b!251805 (= e!163303 e!163302)))

(declare-fun lt!126269 () (_ BitVec 64))

(declare-fun lt!126270 () SeekEntryResult!1137)

(assert (=> b!251805 (= lt!126269 (select (arr!5842 lt!126017) (index!6720 lt!126270)))))

(declare-fun c!42389 () Bool)

(assert (=> b!251805 (= c!42389 (= lt!126269 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun d!61183 () Bool)

(declare-fun lt!126268 () SeekEntryResult!1137)

(assert (=> d!61183 (and (or ((_ is Undefined!1137) lt!126268) (not ((_ is Found!1137) lt!126268)) (and (bvsge (index!6719 lt!126268) #b00000000000000000000000000000000) (bvslt (index!6719 lt!126268) (size!6188 lt!126017)))) (or ((_ is Undefined!1137) lt!126268) ((_ is Found!1137) lt!126268) (not ((_ is MissingZero!1137) lt!126268)) (and (bvsge (index!6718 lt!126268) #b00000000000000000000000000000000) (bvslt (index!6718 lt!126268) (size!6188 lt!126017)))) (or ((_ is Undefined!1137) lt!126268) ((_ is Found!1137) lt!126268) ((_ is MissingZero!1137) lt!126268) (not ((_ is MissingVacant!1137) lt!126268)) (and (bvsge (index!6721 lt!126268) #b00000000000000000000000000000000) (bvslt (index!6721 lt!126268) (size!6188 lt!126017)))) (or ((_ is Undefined!1137) lt!126268) (ite ((_ is Found!1137) lt!126268) (= (select (arr!5842 lt!126017) (index!6719 lt!126268)) (select (arr!5842 lt!126017) #b00000000000000000000000000000000)) (ite ((_ is MissingZero!1137) lt!126268) (= (select (arr!5842 lt!126017) (index!6718 lt!126268)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1137) lt!126268) (= (select (arr!5842 lt!126017) (index!6721 lt!126268)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61183 (= lt!126268 e!163303)))

(declare-fun c!42387 () Bool)

(assert (=> d!61183 (= c!42387 (and ((_ is Intermediate!1137) lt!126270) (undefined!1949 lt!126270)))))

(assert (=> d!61183 (= lt!126270 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) (mask!10847 thiss!1504)) (select (arr!5842 lt!126017) #b00000000000000000000000000000000) lt!126017 (mask!10847 thiss!1504)))))

(assert (=> d!61183 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61183 (= (seekEntryOrOpen!0 (select (arr!5842 lt!126017) #b00000000000000000000000000000000) lt!126017 (mask!10847 thiss!1504)) lt!126268)))

(declare-fun b!251806 () Bool)

(assert (=> b!251806 (= e!163303 Undefined!1137)))

(declare-fun b!251807 () Bool)

(assert (=> b!251807 (= e!163302 (Found!1137 (index!6720 lt!126270)))))

(declare-fun e!163304 () SeekEntryResult!1137)

(declare-fun b!251808 () Bool)

(assert (=> b!251808 (= e!163304 (seekKeyOrZeroReturnVacant!0 (x!24731 lt!126270) (index!6720 lt!126270) (index!6720 lt!126270) (select (arr!5842 lt!126017) #b00000000000000000000000000000000) lt!126017 (mask!10847 thiss!1504)))))

(declare-fun b!251809 () Bool)

(assert (=> b!251809 (= e!163304 (MissingZero!1137 (index!6720 lt!126270)))))

(declare-fun b!251810 () Bool)

(declare-fun c!42388 () Bool)

(assert (=> b!251810 (= c!42388 (= lt!126269 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251810 (= e!163302 e!163304)))

(assert (= (and d!61183 c!42387) b!251806))

(assert (= (and d!61183 (not c!42387)) b!251805))

(assert (= (and b!251805 c!42389) b!251807))

(assert (= (and b!251805 (not c!42389)) b!251810))

(assert (= (and b!251810 c!42388) b!251809))

(assert (= (and b!251810 (not c!42388)) b!251808))

(declare-fun m!268145 () Bool)

(assert (=> b!251805 m!268145))

(assert (=> d!61183 m!267685))

(assert (=> d!61183 m!267869))

(declare-fun m!268147 () Bool)

(assert (=> d!61183 m!268147))

(declare-fun m!268149 () Bool)

(assert (=> d!61183 m!268149))

(declare-fun m!268151 () Bool)

(assert (=> d!61183 m!268151))

(assert (=> d!61183 m!268147))

(assert (=> d!61183 m!267869))

(declare-fun m!268153 () Bool)

(assert (=> d!61183 m!268153))

(declare-fun m!268155 () Bool)

(assert (=> d!61183 m!268155))

(assert (=> b!251808 m!267869))

(declare-fun m!268157 () Bool)

(assert (=> b!251808 m!268157))

(assert (=> b!251588 d!61183))

(assert (=> b!251644 d!61063))

(declare-fun d!61185 () Bool)

(declare-fun lt!126271 () (_ BitVec 32))

(assert (=> d!61185 (and (bvsge lt!126271 #b00000000000000000000000000000000) (bvsle lt!126271 (bvsub (size!6188 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun e!163305 () (_ BitVec 32))

(assert (=> d!61185 (= lt!126271 e!163305)))

(declare-fun c!42390 () Bool)

(assert (=> d!61185 (= c!42390 (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(assert (=> d!61185 (and (bvsle (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))) (bvsge (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) #b00000000000000000000000000000000) (bvsle (size!6188 (_keys!6788 thiss!1504)) (size!6188 lt!126017)))))

(assert (=> d!61185 (= (arrayCountValidKeys!0 lt!126017 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))) lt!126271)))

(declare-fun bm!23703 () Bool)

(declare-fun call!23706 () (_ BitVec 32))

(assert (=> bm!23703 (= call!23706 (arrayCountValidKeys!0 lt!126017 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001 #b00000000000000000000000000000001) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun b!251811 () Bool)

(declare-fun e!163306 () (_ BitVec 32))

(assert (=> b!251811 (= e!163306 (bvadd #b00000000000000000000000000000001 call!23706))))

(declare-fun b!251812 () Bool)

(assert (=> b!251812 (= e!163305 e!163306)))

(declare-fun c!42391 () Bool)

(assert (=> b!251812 (= c!42391 (validKeyInArray!0 (select (arr!5842 lt!126017) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001))))))

(declare-fun b!251813 () Bool)

(assert (=> b!251813 (= e!163305 #b00000000000000000000000000000000)))

(declare-fun b!251814 () Bool)

(assert (=> b!251814 (= e!163306 call!23706)))

(assert (= (and d!61185 c!42390) b!251813))

(assert (= (and d!61185 (not c!42390)) b!251812))

(assert (= (and b!251812 c!42391) b!251811))

(assert (= (and b!251812 (not c!42391)) b!251814))

(assert (= (or b!251811 b!251814) bm!23703))

(declare-fun m!268159 () Bool)

(assert (=> bm!23703 m!268159))

(assert (=> b!251812 m!268001))

(assert (=> b!251812 m!268001))

(assert (=> b!251812 m!268007))

(assert (=> bm!23682 d!61185))

(declare-fun d!61187 () Bool)

(assert (=> d!61187 (= (inRange!0 (index!6719 lt!126065) (mask!10847 thiss!1504)) (and (bvsge (index!6719 lt!126065) #b00000000000000000000000000000000) (bvslt (index!6719 lt!126065) (bvadd (mask!10847 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!251471 d!61187))

(assert (=> d!61051 d!61049))

(declare-fun d!61189 () Bool)

(declare-fun e!163309 () Bool)

(assert (=> d!61189 e!163309))

(declare-fun res!123294 () Bool)

(assert (=> d!61189 (=> (not res!123294) (not e!163309))))

(declare-fun lt!126274 () SeekEntryResult!1137)

(assert (=> d!61189 (= res!123294 ((_ is Found!1137) lt!126274))))

(assert (=> d!61189 (= lt!126274 (seekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(assert (=> d!61189 true))

(declare-fun _$33!171 () Unit!7778)

(assert (=> d!61189 (= (choose!1202 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)) _$33!171)))

(declare-fun b!251819 () Bool)

(declare-fun res!123295 () Bool)

(assert (=> b!251819 (=> (not res!123295) (not e!163309))))

(assert (=> b!251819 (= res!123295 (inRange!0 (index!6719 lt!126274) (mask!10847 thiss!1504)))))

(declare-fun b!251820 () Bool)

(assert (=> b!251820 (= e!163309 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6719 lt!126274)) key!932))))

(assert (= (and d!61189 res!123294) b!251819))

(assert (= (and b!251819 res!123295) b!251820))

(assert (=> d!61189 m!267713))

(declare-fun m!268161 () Bool)

(assert (=> b!251819 m!268161))

(declare-fun m!268163 () Bool)

(assert (=> b!251820 m!268163))

(assert (=> d!61051 d!61189))

(assert (=> d!61051 d!61065))

(assert (=> d!61077 d!61049))

(declare-fun b!251837 () Bool)

(declare-fun e!163318 () Bool)

(declare-fun lt!126277 () SeekEntryResult!1137)

(assert (=> b!251837 (= e!163318 ((_ is Undefined!1137) lt!126277))))

(declare-fun b!251838 () Bool)

(declare-fun res!123306 () Bool)

(assert (=> b!251838 (= res!123306 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6718 lt!126277)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!163319 () Bool)

(assert (=> b!251838 (=> (not res!123306) (not e!163319))))

(declare-fun bm!23708 () Bool)

(declare-fun call!23712 () Bool)

(assert (=> bm!23708 (= call!23712 (arrayContainsKey!0 (_keys!6788 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!251840 () Bool)

(declare-fun e!163320 () Bool)

(assert (=> b!251840 (= e!163320 (not call!23712))))

(declare-fun b!251841 () Bool)

(declare-fun e!163321 () Bool)

(assert (=> b!251841 (= e!163321 e!163319)))

(declare-fun res!123307 () Bool)

(declare-fun call!23711 () Bool)

(assert (=> b!251841 (= res!123307 call!23711)))

(assert (=> b!251841 (=> (not res!123307) (not e!163319))))

(declare-fun b!251842 () Bool)

(assert (=> b!251842 (= e!163321 e!163318)))

(declare-fun c!42396 () Bool)

(assert (=> b!251842 (= c!42396 ((_ is MissingVacant!1137) lt!126277))))

(declare-fun b!251843 () Bool)

(declare-fun res!123304 () Bool)

(assert (=> b!251843 (=> (not res!123304) (not e!163320))))

(assert (=> b!251843 (= res!123304 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6721 lt!126277)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251844 () Bool)

(assert (=> b!251844 (= e!163319 (not call!23712))))

(declare-fun bm!23709 () Bool)

(declare-fun c!42397 () Bool)

(assert (=> bm!23709 (= call!23711 (inRange!0 (ite c!42397 (index!6718 lt!126277) (index!6721 lt!126277)) (mask!10847 thiss!1504)))))

(declare-fun b!251839 () Bool)

(declare-fun res!123305 () Bool)

(assert (=> b!251839 (=> (not res!123305) (not e!163320))))

(assert (=> b!251839 (= res!123305 call!23711)))

(assert (=> b!251839 (= e!163318 e!163320)))

(declare-fun d!61191 () Bool)

(assert (=> d!61191 e!163321))

(assert (=> d!61191 (= c!42397 ((_ is MissingZero!1137) lt!126277))))

(assert (=> d!61191 (= lt!126277 (seekEntryOrOpen!0 key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(assert (=> d!61191 true))

(declare-fun _$34!1113 () Unit!7778)

(assert (=> d!61191 (= (choose!1203 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) key!932 (defaultEntry!4646 thiss!1504)) _$34!1113)))

(assert (= (and d!61191 c!42397) b!251841))

(assert (= (and d!61191 (not c!42397)) b!251842))

(assert (= (and b!251841 res!123307) b!251838))

(assert (= (and b!251838 res!123306) b!251844))

(assert (= (and b!251842 c!42396) b!251839))

(assert (= (and b!251842 (not c!42396)) b!251837))

(assert (= (and b!251839 res!123305) b!251843))

(assert (= (and b!251843 res!123304) b!251840))

(assert (= (or b!251841 b!251839) bm!23709))

(assert (= (or b!251844 b!251840) bm!23708))

(declare-fun m!268165 () Bool)

(assert (=> bm!23709 m!268165))

(assert (=> d!61191 m!267713))

(declare-fun m!268167 () Bool)

(assert (=> b!251843 m!268167))

(assert (=> bm!23708 m!267703))

(declare-fun m!268169 () Bool)

(assert (=> b!251838 m!268169))

(assert (=> d!61077 d!61191))

(assert (=> d!61077 d!61065))

(assert (=> b!251607 d!61135))

(declare-fun d!61193 () Bool)

(declare-fun e!163322 () Bool)

(assert (=> d!61193 e!163322))

(declare-fun res!123308 () Bool)

(assert (=> d!61193 (=> (not res!123308) (not e!163322))))

(declare-fun lt!126280 () ListLongMap!3775)

(assert (=> d!61193 (= res!123308 (contains!1821 lt!126280 (_1!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))))))

(declare-fun lt!126278 () List!3752)

(assert (=> d!61193 (= lt!126280 (ListLongMap!3776 lt!126278))))

(declare-fun lt!126279 () Unit!7778)

(declare-fun lt!126281 () Unit!7778)

(assert (=> d!61193 (= lt!126279 lt!126281)))

(assert (=> d!61193 (= (getValueByKey!299 lt!126278 (_1!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))))))

(assert (=> d!61193 (= lt!126281 (lemmaContainsTupThenGetReturnValue!161 lt!126278 (_1!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))))))

(assert (=> d!61193 (= lt!126278 (insertStrictlySorted!163 (toList!1903 call!23674) (_1!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))) (_2!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))))))

(assert (=> d!61193 (= (+!664 call!23674 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))) lt!126280)))

(declare-fun b!251845 () Bool)

(declare-fun res!123309 () Bool)

(assert (=> b!251845 (=> (not res!123309) (not e!163322))))

(assert (=> b!251845 (= res!123309 (= (getValueByKey!299 (toList!1903 lt!126280) (_1!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504)))) (Some!304 (_2!2434 (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))))))

(declare-fun b!251846 () Bool)

(assert (=> b!251846 (= e!163322 (contains!1824 (toList!1903 lt!126280) (tuple2!4849 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4487 thiss!1504))))))

(assert (= (and d!61193 res!123308) b!251845))

(assert (= (and b!251845 res!123309) b!251846))

(declare-fun m!268171 () Bool)

(assert (=> d!61193 m!268171))

(declare-fun m!268173 () Bool)

(assert (=> d!61193 m!268173))

(declare-fun m!268175 () Bool)

(assert (=> d!61193 m!268175))

(declare-fun m!268177 () Bool)

(assert (=> d!61193 m!268177))

(declare-fun m!268179 () Bool)

(assert (=> b!251845 m!268179))

(declare-fun m!268181 () Bool)

(assert (=> b!251846 m!268181))

(assert (=> b!251544 d!61193))

(assert (=> b!251528 d!61121))

(declare-fun d!61195 () Bool)

(assert (=> d!61195 (isDefined!241 (getValueByKey!299 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932))))

(declare-fun lt!126284 () Unit!7778)

(declare-fun choose!1207 (List!3752 (_ BitVec 64)) Unit!7778)

(assert (=> d!61195 (= lt!126284 (choose!1207 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932))))

(declare-fun e!163325 () Bool)

(assert (=> d!61195 e!163325))

(declare-fun res!123312 () Bool)

(assert (=> d!61195 (=> (not res!123312) (not e!163325))))

(declare-fun isStrictlySorted!367 (List!3752) Bool)

(assert (=> d!61195 (= res!123312 (isStrictlySorted!367 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))))

(assert (=> d!61195 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!240 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932) lt!126284)))

(declare-fun b!251849 () Bool)

(assert (=> b!251849 (= e!163325 (containsKey!291 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932))))

(assert (= (and d!61195 res!123312) b!251849))

(assert (=> d!61195 m!267793))

(assert (=> d!61195 m!267793))

(assert (=> d!61195 m!267795))

(declare-fun m!268183 () Bool)

(assert (=> d!61195 m!268183))

(declare-fun m!268185 () Bool)

(assert (=> d!61195 m!268185))

(assert (=> b!251849 m!267789))

(assert (=> b!251479 d!61195))

(declare-fun d!61197 () Bool)

(declare-fun isEmpty!536 (Option!305) Bool)

(assert (=> d!61197 (= (isDefined!241 (getValueByKey!299 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932)) (not (isEmpty!536 (getValueByKey!299 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932))))))

(declare-fun bs!9024 () Bool)

(assert (= bs!9024 d!61197))

(assert (=> bs!9024 m!267793))

(declare-fun m!268187 () Bool)

(assert (=> bs!9024 m!268187))

(assert (=> b!251479 d!61197))

(declare-fun b!251860 () Bool)

(declare-fun e!163331 () Option!305)

(assert (=> b!251860 (= e!163331 (getValueByKey!299 (t!8797 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))) key!932))))

(declare-fun b!251859 () Bool)

(declare-fun e!163330 () Option!305)

(assert (=> b!251859 (= e!163330 e!163331)))

(declare-fun c!42403 () Bool)

(assert (=> b!251859 (= c!42403 (and ((_ is Cons!3748) (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))) (not (= (_1!2434 (h!4409 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))))) key!932))))))

(declare-fun d!61199 () Bool)

(declare-fun c!42402 () Bool)

(assert (=> d!61199 (= c!42402 (and ((_ is Cons!3748) (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))) (= (_1!2434 (h!4409 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))))) key!932)))))

(assert (=> d!61199 (= (getValueByKey!299 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504))) key!932) e!163330)))

(declare-fun b!251861 () Bool)

(assert (=> b!251861 (= e!163331 None!303)))

(declare-fun b!251858 () Bool)

(assert (=> b!251858 (= e!163330 (Some!304 (_2!2434 (h!4409 (toList!1903 (getCurrentListMap!1426 (_keys!6788 thiss!1504) (_values!4629 thiss!1504) (mask!10847 thiss!1504) (extraKeys!4383 thiss!1504) (zeroValue!4487 thiss!1504) (minValue!4487 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4646 thiss!1504)))))))))

(assert (= (and d!61199 c!42402) b!251858))

(assert (= (and d!61199 (not c!42402)) b!251859))

(assert (= (and b!251859 c!42403) b!251860))

(assert (= (and b!251859 (not c!42403)) b!251861))

(declare-fun m!268189 () Bool)

(assert (=> b!251860 m!268189))

(assert (=> b!251479 d!61199))

(declare-fun b!251880 () Bool)

(declare-fun e!163342 () SeekEntryResult!1137)

(assert (=> b!251880 (= e!163342 (seekKeyOrZeroOrLongMinValue!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (nextIndex!0 (toIndex!0 key!932 (mask!10847 thiss!1504)) #b00000000000000000000000000000000 (mask!10847 thiss!1504)) key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)))))

(declare-fun d!61201 () Bool)

(declare-fun e!163345 () Bool)

(assert (=> d!61201 e!163345))

(declare-fun c!42410 () Bool)

(declare-fun lt!126290 () SeekEntryResult!1137)

(assert (=> d!61201 (= c!42410 (and ((_ is Intermediate!1137) lt!126290) (undefined!1949 lt!126290)))))

(declare-fun e!163343 () SeekEntryResult!1137)

(assert (=> d!61201 (= lt!126290 e!163343)))

(declare-fun c!42411 () Bool)

(assert (=> d!61201 (= c!42411 (bvsge #b00000000000000000000000000000000 #b01111111111111111111111111111110))))

(declare-fun lt!126289 () (_ BitVec 64))

(assert (=> d!61201 (= lt!126289 (select (arr!5842 (_keys!6788 thiss!1504)) (toIndex!0 key!932 (mask!10847 thiss!1504))))))

(assert (=> d!61201 (validMask!0 (mask!10847 thiss!1504))))

(assert (=> d!61201 (= (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10847 thiss!1504)) key!932 (_keys!6788 thiss!1504) (mask!10847 thiss!1504)) lt!126290)))

(declare-fun b!251881 () Bool)

(assert (=> b!251881 (and (bvsge (index!6720 lt!126290) #b00000000000000000000000000000000) (bvslt (index!6720 lt!126290) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun e!163346 () Bool)

(assert (=> b!251881 (= e!163346 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6720 lt!126290)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!251882 () Bool)

(assert (=> b!251882 (= e!163343 e!163342)))

(declare-fun c!42412 () Bool)

(assert (=> b!251882 (= c!42412 (or (= lt!126289 key!932) (= (bvadd lt!126289 lt!126289) #b0000000000000000000000000000000000000000000000000000000000000000)))))

(declare-fun b!251883 () Bool)

(assert (=> b!251883 (= e!163343 (Intermediate!1137 true (toIndex!0 key!932 (mask!10847 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!251884 () Bool)

(assert (=> b!251884 (= e!163345 (bvsge (x!24731 lt!126290) #b01111111111111111111111111111110))))

(declare-fun b!251885 () Bool)

(assert (=> b!251885 (= e!163342 (Intermediate!1137 false (toIndex!0 key!932 (mask!10847 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun b!251886 () Bool)

(assert (=> b!251886 (and (bvsge (index!6720 lt!126290) #b00000000000000000000000000000000) (bvslt (index!6720 lt!126290) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun res!123319 () Bool)

(assert (=> b!251886 (= res!123319 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6720 lt!126290)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!251886 (=> res!123319 e!163346)))

(declare-fun b!251887 () Bool)

(assert (=> b!251887 (and (bvsge (index!6720 lt!126290) #b00000000000000000000000000000000) (bvslt (index!6720 lt!126290) (size!6188 (_keys!6788 thiss!1504))))))

(declare-fun res!123320 () Bool)

(assert (=> b!251887 (= res!123320 (= (select (arr!5842 (_keys!6788 thiss!1504)) (index!6720 lt!126290)) key!932))))

(assert (=> b!251887 (=> res!123320 e!163346)))

(declare-fun e!163344 () Bool)

(assert (=> b!251887 (= e!163344 e!163346)))

(declare-fun b!251888 () Bool)

(assert (=> b!251888 (= e!163345 e!163344)))

(declare-fun res!123321 () Bool)

(assert (=> b!251888 (= res!123321 (and ((_ is Intermediate!1137) lt!126290) (not (undefined!1949 lt!126290)) (bvslt (x!24731 lt!126290) #b01111111111111111111111111111110) (bvsge (x!24731 lt!126290) #b00000000000000000000000000000000) (bvsge (x!24731 lt!126290) #b00000000000000000000000000000000)))))

(assert (=> b!251888 (=> (not res!123321) (not e!163344))))

(assert (= (and d!61201 c!42411) b!251883))

(assert (= (and d!61201 (not c!42411)) b!251882))

(assert (= (and b!251882 c!42412) b!251885))

(assert (= (and b!251882 (not c!42412)) b!251880))

(assert (= (and d!61201 c!42410) b!251884))

(assert (= (and d!61201 (not c!42410)) b!251888))

(assert (= (and b!251888 res!123321) b!251887))

(assert (= (and b!251887 (not res!123320)) b!251886))

(assert (= (and b!251886 (not res!123319)) b!251881))

(declare-fun m!268191 () Bool)

(assert (=> b!251887 m!268191))

(assert (=> d!61201 m!267771))

(declare-fun m!268193 () Bool)

(assert (=> d!61201 m!268193))

(assert (=> d!61201 m!267685))

(assert (=> b!251881 m!268191))

(assert (=> b!251880 m!267771))

(declare-fun m!268195 () Bool)

(assert (=> b!251880 m!268195))

(assert (=> b!251880 m!268195))

(declare-fun m!268197 () Bool)

(assert (=> b!251880 m!268197))

(assert (=> b!251886 m!268191))

(assert (=> d!61049 d!61201))

(declare-fun d!61203 () Bool)

(declare-fun lt!126296 () (_ BitVec 32))

(declare-fun lt!126295 () (_ BitVec 32))

(assert (=> d!61203 (= lt!126296 (bvmul (bvxor lt!126295 (bvlshr lt!126295 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))))

(assert (=> d!61203 (= lt!126295 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))))

(assert (=> d!61203 (and (bvsge (mask!10847 thiss!1504) #b00000000000000000000000000000000) (let ((res!123322 (let ((h!4413 ((_ extract 31 0) (bvand (bvxor key!932 (bvlshr key!932 #b0000000000000000000000000000000000000000000000000000000000100000)) #b0000000000000000000000000000000011111111111111111111111111111111)))) (let ((x!24750 (bvmul (bvxor h!4413 (bvlshr h!4413 #b00000000000000000000000000010000)) #b10000101111010111100101001101011))) (bvand (bvxor x!24750 (bvlshr x!24750 #b00000000000000000000000000001101)) (mask!10847 thiss!1504)))))) (and (bvslt res!123322 (bvadd (mask!10847 thiss!1504) #b00000000000000000000000000000001)) (bvsge res!123322 #b00000000000000000000000000000000))))))

(assert (=> d!61203 (= (toIndex!0 key!932 (mask!10847 thiss!1504)) (bvand (bvxor lt!126296 (bvlshr lt!126296 #b00000000000000000000000000001101)) (mask!10847 thiss!1504)))))

(assert (=> d!61049 d!61203))

(assert (=> d!61049 d!61065))

(assert (=> b!251605 d!61135))

(assert (=> b!251481 d!61197))

(assert (=> b!251481 d!61199))

(declare-fun d!61205 () Bool)

(declare-fun lt!126299 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!166 (List!3753) (InoxSet (_ BitVec 64)))

(assert (=> d!61205 (= lt!126299 (select (content!166 Nil!3750) (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun e!163351 () Bool)

(assert (=> d!61205 (= lt!126299 e!163351)))

(declare-fun res!123328 () Bool)

(assert (=> d!61205 (=> (not res!123328) (not e!163351))))

(assert (=> d!61205 (= res!123328 ((_ is Cons!3749) Nil!3750))))

(assert (=> d!61205 (= (contains!1823 Nil!3750 (select (arr!5842 lt!126017) #b00000000000000000000000000000000)) lt!126299)))

(declare-fun b!251893 () Bool)

(declare-fun e!163352 () Bool)

(assert (=> b!251893 (= e!163351 e!163352)))

(declare-fun res!123327 () Bool)

(assert (=> b!251893 (=> res!123327 e!163352)))

(assert (=> b!251893 (= res!123327 (= (h!4410 Nil!3750) (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(declare-fun b!251894 () Bool)

(assert (=> b!251894 (= e!163352 (contains!1823 (t!8798 Nil!3750) (select (arr!5842 lt!126017) #b00000000000000000000000000000000)))))

(assert (= (and d!61205 res!123328) b!251893))

(assert (= (and b!251893 (not res!123327)) b!251894))

(declare-fun m!268199 () Bool)

(assert (=> d!61205 m!268199))

(assert (=> d!61205 m!267869))

(declare-fun m!268201 () Bool)

(assert (=> d!61205 m!268201))

(assert (=> b!251894 m!267869))

(declare-fun m!268203 () Bool)

(assert (=> b!251894 m!268203))

(assert (=> b!251603 d!61205))

(declare-fun b!251896 () Bool)

(declare-fun e!163354 () Bool)

(assert (=> b!251896 (= e!163354 tp_is_empty!6501)))

(declare-fun mapIsEmpty!11058 () Bool)

(declare-fun mapRes!11058 () Bool)

(assert (=> mapIsEmpty!11058 mapRes!11058))

(declare-fun mapNonEmpty!11058 () Bool)

(declare-fun tp!23199 () Bool)

(declare-fun e!163353 () Bool)

(assert (=> mapNonEmpty!11058 (= mapRes!11058 (and tp!23199 e!163353))))

(declare-fun mapRest!11058 () (Array (_ BitVec 32) ValueCell!2907))

(declare-fun mapKey!11058 () (_ BitVec 32))

(declare-fun mapValue!11058 () ValueCell!2907)

(assert (=> mapNonEmpty!11058 (= mapRest!11057 (store mapRest!11058 mapKey!11058 mapValue!11058))))

(declare-fun b!251895 () Bool)

(assert (=> b!251895 (= e!163353 tp_is_empty!6501)))

(declare-fun condMapEmpty!11058 () Bool)

(declare-fun mapDefault!11058 () ValueCell!2907)

(assert (=> mapNonEmpty!11057 (= condMapEmpty!11058 (= mapRest!11057 ((as const (Array (_ BitVec 32) ValueCell!2907)) mapDefault!11058)))))

(assert (=> mapNonEmpty!11057 (= tp!23198 (and e!163354 mapRes!11058))))

(assert (= (and mapNonEmpty!11057 condMapEmpty!11058) mapIsEmpty!11058))

(assert (= (and mapNonEmpty!11057 (not condMapEmpty!11058)) mapNonEmpty!11058))

(assert (= (and mapNonEmpty!11058 ((_ is ValueCellFull!2907) mapValue!11058)) b!251895))

(assert (= (and mapNonEmpty!11057 ((_ is ValueCellFull!2907) mapDefault!11058)) b!251896))

(declare-fun m!268205 () Bool)

(assert (=> mapNonEmpty!11058 m!268205))

(declare-fun b_lambda!8141 () Bool)

(assert (= b_lambda!8139 (or (and b!251371 b_free!6639) b_lambda!8141)))

(declare-fun b_lambda!8143 () Bool)

(assert (= b_lambda!8137 (or (and b!251371 b_free!6639) b_lambda!8143)))

(check-sat (not d!61165) (not bm!23700) (not d!61117) (not d!61089) (not d!61145) (not b!251781) (not b!251766) (not b!251664) (not b!251717) (not b!251784) (not b_lambda!8143) (not b!251846) (not b!251720) (not b!251724) (not b!251665) (not b!251706) (not bm!23708) (not d!61133) (not bm!23692) (not d!61123) (not b!251751) (not d!61113) (not b!251819) (not d!61153) (not d!61149) (not b_lambda!8135) (not d!61109) (not d!61097) (not b!251709) (not d!61195) (not b!251760) (not bm!23696) (not d!61161) (not d!61147) (not b_lambda!8141) (not b!251716) (not b!251849) (not b!251721) (not d!61191) (not b!251783) (not b!251779) (not d!61197) (not b!251790) (not bm!23697) (not bm!23695) (not b!251788) (not d!61143) (not b!251703) (not d!61189) (not b!251672) (not b!251786) (not d!61193) (not b!251669) (not b!251732) (not b!251860) (not d!61137) (not d!61141) (not bm!23703) (not d!61105) (not b!251804) (not d!61127) (not d!61095) (not b!251753) (not b!251798) (not b!251700) (not d!61111) (not bm!23702) (not b!251880) (not bm!23698) (not b!251704) (not b!251812) (not b!251702) (not b!251775) (not d!61183) (not mapNonEmpty!11058) (not b!251772) (not b!251794) (not b!251674) (not b!251748) (not d!61155) (not bm!23699) (not b!251726) (not b!251715) (not d!61159) (not b!251723) (not b!251705) (not d!61139) (not b!251765) (not d!61103) (not b!251845) (not b!251799) (not b_next!6639) (not b!251767) (not b!251894) (not b!251808) (not b!251701) (not b!251776) (not d!61157) (not b!251773) (not bm!23709) (not b!251761) (not d!61151) (not d!61205) (not b!251755) (not d!61099) (not b!251671) (not bm!23701) (not d!61119) (not b!251667) (not d!61163) (not b!251762) tp_is_empty!6501 b_and!13693 (not b!251782) (not d!61179) (not b!251802) (not d!61201))
(check-sat b_and!13693 (not b_next!6639))
