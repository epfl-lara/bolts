; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24878 () Bool)

(assert start!24878)

(declare-fun b!259584 () Bool)

(declare-fun b_free!6753 () Bool)

(declare-fun b_next!6753 () Bool)

(assert (=> b!259584 (= b_free!6753 (not b_next!6753))))

(declare-fun tp!23578 () Bool)

(declare-fun b_and!13873 () Bool)

(assert (=> b!259584 (= tp!23578 b_and!13873)))

(declare-fun b!259578 () Bool)

(declare-fun e!168240 () Bool)

(declare-fun e!168252 () Bool)

(declare-fun mapRes!11270 () Bool)

(assert (=> b!259578 (= e!168240 (and e!168252 mapRes!11270))))

(declare-fun condMapEmpty!11270 () Bool)

(declare-datatypes ((V!8467 0))(
  ( (V!8468 (val!3352 Int)) )
))
(declare-datatypes ((ValueCell!2964 0))(
  ( (ValueCellFull!2964 (v!5458 V!8467)) (EmptyCell!2964) )
))
(declare-datatypes ((array!12580 0))(
  ( (array!12581 (arr!5955 (Array (_ BitVec 32) ValueCell!2964)) (size!6304 (_ BitVec 32))) )
))
(declare-datatypes ((array!12582 0))(
  ( (array!12583 (arr!5956 (Array (_ BitVec 32) (_ BitVec 64))) (size!6305 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3828 0))(
  ( (LongMapFixedSize!3829 (defaultEntry!4787 Int) (mask!11106 (_ BitVec 32)) (extraKeys!4524 (_ BitVec 32)) (zeroValue!4628 V!8467) (minValue!4628 V!8467) (_size!1963 (_ BitVec 32)) (_keys!6965 array!12582) (_values!4770 array!12580) (_vacant!1963 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3828)

(declare-fun mapDefault!11270 () ValueCell!2964)

(assert (=> b!259578 (= condMapEmpty!11270 (= (arr!5955 (_values!4770 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2964)) mapDefault!11270)))))

(declare-fun res!126914 () Bool)

(declare-fun e!168251 () Bool)

(assert (=> start!24878 (=> (not res!126914) (not e!168251))))

(declare-fun valid!1487 (LongMapFixedSize!3828) Bool)

(assert (=> start!24878 (= res!126914 (valid!1487 thiss!1504))))

(assert (=> start!24878 e!168251))

(declare-fun e!168246 () Bool)

(assert (=> start!24878 e!168246))

(assert (=> start!24878 true))

(declare-fun tp_is_empty!6615 () Bool)

(assert (=> start!24878 tp_is_empty!6615))

(declare-fun b!259579 () Bool)

(declare-fun e!168243 () Bool)

(declare-fun call!24721 () Bool)

(assert (=> b!259579 (= e!168243 (not call!24721))))

(declare-fun b!259580 () Bool)

(declare-fun res!126910 () Bool)

(assert (=> b!259580 (=> (not res!126910) (not e!168243))))

(declare-datatypes ((SeekEntryResult!1190 0))(
  ( (MissingZero!1190 (index!6930 (_ BitVec 32))) (Found!1190 (index!6931 (_ BitVec 32))) (Intermediate!1190 (undefined!2002 Bool) (index!6932 (_ BitVec 32)) (x!25110 (_ BitVec 32))) (Undefined!1190) (MissingVacant!1190 (index!6933 (_ BitVec 32))) )
))
(declare-fun lt!130856 () SeekEntryResult!1190)

(assert (=> b!259580 (= res!126910 (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6930 lt!130856)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun mapIsEmpty!11270 () Bool)

(assert (=> mapIsEmpty!11270 mapRes!11270))

(declare-fun b!259581 () Bool)

(declare-fun e!168247 () Bool)

(get-info :version)

(assert (=> b!259581 (= e!168247 ((_ is Undefined!1190) lt!130856))))

(declare-fun b!259582 () Bool)

(declare-datatypes ((Unit!8070 0))(
  ( (Unit!8071) )
))
(declare-fun e!168245 () Unit!8070)

(declare-fun lt!130854 () Unit!8070)

(assert (=> b!259582 (= e!168245 lt!130854)))

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!441 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 64) Int) Unit!8070)

(assert (=> b!259582 (= lt!130854 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!441 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 (defaultEntry!4787 thiss!1504)))))

(declare-fun c!44058 () Bool)

(assert (=> b!259582 (= c!44058 ((_ is MissingZero!1190) lt!130856))))

(declare-fun e!168248 () Bool)

(assert (=> b!259582 e!168248))

(declare-fun bm!24717 () Bool)

(declare-fun arrayContainsKey!0 (array!12582 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> bm!24717 (= call!24721 (arrayContainsKey!0 (_keys!6965 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun mapNonEmpty!11270 () Bool)

(declare-fun tp!23579 () Bool)

(declare-fun e!168242 () Bool)

(assert (=> mapNonEmpty!11270 (= mapRes!11270 (and tp!23579 e!168242))))

(declare-fun mapValue!11270 () ValueCell!2964)

(declare-fun mapKey!11270 () (_ BitVec 32))

(declare-fun mapRest!11270 () (Array (_ BitVec 32) ValueCell!2964))

(assert (=> mapNonEmpty!11270 (= (arr!5955 (_values!4770 thiss!1504)) (store mapRest!11270 mapKey!11270 mapValue!11270))))

(declare-fun b!259583 () Bool)

(declare-fun e!168244 () Bool)

(declare-fun e!168241 () Bool)

(assert (=> b!259583 (= e!168244 (not e!168241))))

(declare-fun res!126908 () Bool)

(assert (=> b!259583 (=> res!126908 e!168241)))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!259583 (= res!126908 (not (validMask!0 (mask!11106 thiss!1504))))))

(declare-fun lt!130861 () array!12582)

(declare-fun index!297 () (_ BitVec 32))

(declare-fun arrayCountValidKeys!0 (array!12582 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!259583 (= (arrayCountValidKeys!0 lt!130861 index!297 (bvadd #b00000000000000000000000000000001 index!297)) #b00000000000000000000000000000001)))

(declare-fun lt!130849 () Unit!8070)

(declare-fun lemmaValidKeyAtIImpliesCountKeysIsOne!0 (array!12582 (_ BitVec 32)) Unit!8070)

(assert (=> b!259583 (= lt!130849 (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!130861 index!297))))

(assert (=> b!259583 (arrayContainsKey!0 lt!130861 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!130855 () Unit!8070)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12582 (_ BitVec 64) (_ BitVec 32)) Unit!8070)

(assert (=> b!259583 (= lt!130855 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130861 key!932 index!297))))

(declare-datatypes ((tuple2!4940 0))(
  ( (tuple2!4941 (_1!2480 (_ BitVec 64)) (_2!2480 V!8467)) )
))
(declare-datatypes ((List!3842 0))(
  ( (Nil!3839) (Cons!3838 (h!4502 tuple2!4940) (t!8917 List!3842)) )
))
(declare-datatypes ((ListLongMap!3867 0))(
  ( (ListLongMap!3868 (toList!1949 List!3842)) )
))
(declare-fun lt!130859 () ListLongMap!3867)

(declare-fun v!346 () V!8467)

(declare-fun +!692 (ListLongMap!3867 tuple2!4940) ListLongMap!3867)

(declare-fun getCurrentListMap!1472 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 32) Int) ListLongMap!3867)

(assert (=> b!259583 (= (+!692 lt!130859 (tuple2!4941 key!932 v!346)) (getCurrentListMap!1472 lt!130861 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!130862 () Unit!8070)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!107 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 32) (_ BitVec 64) V!8467 Int) Unit!8070)

(assert (=> b!259583 (= lt!130862 (lemmaAddValidKeyToArrayThenAddPairToListMap!107 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) index!297 key!932 v!346 (defaultEntry!4787 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12582 (_ BitVec 32)) Bool)

(assert (=> b!259583 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!130861 (mask!11106 thiss!1504))))

(declare-fun lt!130860 () Unit!8070)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12582 (_ BitVec 32) (_ BitVec 32)) Unit!8070)

(assert (=> b!259583 (= lt!130860 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6965 thiss!1504) index!297 (mask!11106 thiss!1504)))))

(assert (=> b!259583 (= (arrayCountValidKeys!0 lt!130861 #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6965 thiss!1504) #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504)))))))

(declare-fun lt!130857 () Unit!8070)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12582 (_ BitVec 32) (_ BitVec 64)) Unit!8070)

(assert (=> b!259583 (= lt!130857 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6965 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3843 0))(
  ( (Nil!3840) (Cons!3839 (h!4503 (_ BitVec 64)) (t!8918 List!3843)) )
))
(declare-fun arrayNoDuplicates!0 (array!12582 (_ BitVec 32) List!3843) Bool)

(assert (=> b!259583 (arrayNoDuplicates!0 lt!130861 #b00000000000000000000000000000000 Nil!3840)))

(assert (=> b!259583 (= lt!130861 (array!12583 (store (arr!5956 (_keys!6965 thiss!1504)) index!297 key!932) (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun lt!130850 () Unit!8070)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12582 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3843) Unit!8070)

(assert (=> b!259583 (= lt!130850 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6965 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3840))))

(declare-fun lt!130858 () Unit!8070)

(declare-fun e!168253 () Unit!8070)

(assert (=> b!259583 (= lt!130858 e!168253)))

(declare-fun c!44060 () Bool)

(assert (=> b!259583 (= c!44060 (arrayContainsKey!0 (_keys!6965 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun array_inv!3925 (array!12582) Bool)

(declare-fun array_inv!3926 (array!12580) Bool)

(assert (=> b!259584 (= e!168246 (and tp!23578 tp_is_empty!6615 (array_inv!3925 (_keys!6965 thiss!1504)) (array_inv!3926 (_values!4770 thiss!1504)) e!168240))))

(declare-fun b!259585 () Bool)

(assert (=> b!259585 (= e!168252 tp_is_empty!6615)))

(declare-fun b!259586 () Bool)

(declare-fun res!126907 () Bool)

(assert (=> b!259586 (= res!126907 (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6933 lt!130856)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168250 () Bool)

(assert (=> b!259586 (=> (not res!126907) (not e!168250))))

(declare-fun b!259587 () Bool)

(declare-fun e!168249 () Bool)

(assert (=> b!259587 (= e!168251 e!168249)))

(declare-fun res!126911 () Bool)

(assert (=> b!259587 (=> (not res!126911) (not e!168249))))

(assert (=> b!259587 (= res!126911 (or (= lt!130856 (MissingZero!1190 index!297)) (= lt!130856 (MissingVacant!1190 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12582 (_ BitVec 32)) SeekEntryResult!1190)

(assert (=> b!259587 (= lt!130856 (seekEntryOrOpen!0 key!932 (_keys!6965 thiss!1504) (mask!11106 thiss!1504)))))

(declare-fun b!259588 () Bool)

(assert (=> b!259588 (= e!168247 e!168250)))

(declare-fun res!126906 () Bool)

(declare-fun call!24720 () Bool)

(assert (=> b!259588 (= res!126906 call!24720)))

(assert (=> b!259588 (=> (not res!126906) (not e!168250))))

(declare-fun b!259589 () Bool)

(declare-fun Unit!8072 () Unit!8070)

(assert (=> b!259589 (= e!168253 Unit!8072)))

(declare-fun b!259590 () Bool)

(assert (=> b!259590 (= e!168250 (not call!24721))))

(declare-fun b!259591 () Bool)

(declare-fun Unit!8073 () Unit!8070)

(assert (=> b!259591 (= e!168245 Unit!8073)))

(declare-fun lt!130853 () Unit!8070)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!441 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 64) Int) Unit!8070)

(assert (=> b!259591 (= lt!130853 (lemmaInListMapThenSeekEntryOrOpenFindsIt!441 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 (defaultEntry!4787 thiss!1504)))))

(assert (=> b!259591 false))

(declare-fun b!259592 () Bool)

(assert (=> b!259592 (= e!168242 tp_is_empty!6615)))

(declare-fun b!259593 () Bool)

(assert (=> b!259593 (= e!168249 e!168244)))

(declare-fun res!126909 () Bool)

(assert (=> b!259593 (=> (not res!126909) (not e!168244))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!259593 (= res!126909 (inRange!0 index!297 (mask!11106 thiss!1504)))))

(declare-fun lt!130852 () Unit!8070)

(assert (=> b!259593 (= lt!130852 e!168245)))

(declare-fun c!44061 () Bool)

(declare-fun contains!1886 (ListLongMap!3867 (_ BitVec 64)) Bool)

(assert (=> b!259593 (= c!44061 (contains!1886 lt!130859 key!932))))

(assert (=> b!259593 (= lt!130859 (getCurrentListMap!1472 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun bm!24718 () Bool)

(assert (=> bm!24718 (= call!24720 (inRange!0 (ite c!44058 (index!6930 lt!130856) (index!6933 lt!130856)) (mask!11106 thiss!1504)))))

(declare-fun b!259594 () Bool)

(declare-fun c!44059 () Bool)

(assert (=> b!259594 (= c!44059 ((_ is MissingVacant!1190) lt!130856))))

(assert (=> b!259594 (= e!168248 e!168247)))

(declare-fun b!259595 () Bool)

(assert (=> b!259595 (= e!168241 (or (not (= (size!6304 (_values!4770 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!11106 thiss!1504)))) (not (= (size!6305 (_keys!6965 thiss!1504)) (size!6304 (_values!4770 thiss!1504)))) (bvsge (mask!11106 thiss!1504) #b00000000000000000000000000000000)))))

(declare-fun b!259596 () Bool)

(declare-fun res!126913 () Bool)

(assert (=> b!259596 (=> (not res!126913) (not e!168251))))

(assert (=> b!259596 (= res!126913 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!259597 () Bool)

(declare-fun res!126912 () Bool)

(assert (=> b!259597 (=> (not res!126912) (not e!168243))))

(assert (=> b!259597 (= res!126912 call!24720)))

(assert (=> b!259597 (= e!168248 e!168243)))

(declare-fun b!259598 () Bool)

(declare-fun Unit!8074 () Unit!8070)

(assert (=> b!259598 (= e!168253 Unit!8074)))

(declare-fun lt!130851 () Unit!8070)

(declare-fun lemmaArrayContainsKeyThenInListMap!249 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 64) (_ BitVec 32) Int) Unit!8070)

(assert (=> b!259598 (= lt!130851 (lemmaArrayContainsKeyThenInListMap!249 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(assert (=> b!259598 false))

(assert (= (and start!24878 res!126914) b!259596))

(assert (= (and b!259596 res!126913) b!259587))

(assert (= (and b!259587 res!126911) b!259593))

(assert (= (and b!259593 c!44061) b!259591))

(assert (= (and b!259593 (not c!44061)) b!259582))

(assert (= (and b!259582 c!44058) b!259597))

(assert (= (and b!259582 (not c!44058)) b!259594))

(assert (= (and b!259597 res!126912) b!259580))

(assert (= (and b!259580 res!126910) b!259579))

(assert (= (and b!259594 c!44059) b!259588))

(assert (= (and b!259594 (not c!44059)) b!259581))

(assert (= (and b!259588 res!126906) b!259586))

(assert (= (and b!259586 res!126907) b!259590))

(assert (= (or b!259597 b!259588) bm!24718))

(assert (= (or b!259579 b!259590) bm!24717))

(assert (= (and b!259593 res!126909) b!259583))

(assert (= (and b!259583 c!44060) b!259598))

(assert (= (and b!259583 (not c!44060)) b!259589))

(assert (= (and b!259583 (not res!126908)) b!259595))

(assert (= (and b!259578 condMapEmpty!11270) mapIsEmpty!11270))

(assert (= (and b!259578 (not condMapEmpty!11270)) mapNonEmpty!11270))

(assert (= (and mapNonEmpty!11270 ((_ is ValueCellFull!2964) mapValue!11270)) b!259592))

(assert (= (and b!259578 ((_ is ValueCellFull!2964) mapDefault!11270)) b!259585))

(assert (= b!259584 b!259578))

(assert (= start!24878 b!259584))

(declare-fun m!275301 () Bool)

(assert (=> b!259598 m!275301))

(declare-fun m!275303 () Bool)

(assert (=> bm!24717 m!275303))

(declare-fun m!275305 () Bool)

(assert (=> b!259593 m!275305))

(declare-fun m!275307 () Bool)

(assert (=> b!259593 m!275307))

(declare-fun m!275309 () Bool)

(assert (=> b!259593 m!275309))

(declare-fun m!275311 () Bool)

(assert (=> b!259580 m!275311))

(declare-fun m!275313 () Bool)

(assert (=> bm!24718 m!275313))

(declare-fun m!275315 () Bool)

(assert (=> b!259591 m!275315))

(declare-fun m!275317 () Bool)

(assert (=> b!259584 m!275317))

(declare-fun m!275319 () Bool)

(assert (=> b!259584 m!275319))

(declare-fun m!275321 () Bool)

(assert (=> b!259586 m!275321))

(declare-fun m!275323 () Bool)

(assert (=> start!24878 m!275323))

(declare-fun m!275325 () Bool)

(assert (=> mapNonEmpty!11270 m!275325))

(declare-fun m!275327 () Bool)

(assert (=> b!259583 m!275327))

(declare-fun m!275329 () Bool)

(assert (=> b!259583 m!275329))

(declare-fun m!275331 () Bool)

(assert (=> b!259583 m!275331))

(declare-fun m!275333 () Bool)

(assert (=> b!259583 m!275333))

(declare-fun m!275335 () Bool)

(assert (=> b!259583 m!275335))

(declare-fun m!275337 () Bool)

(assert (=> b!259583 m!275337))

(declare-fun m!275339 () Bool)

(assert (=> b!259583 m!275339))

(declare-fun m!275341 () Bool)

(assert (=> b!259583 m!275341))

(declare-fun m!275343 () Bool)

(assert (=> b!259583 m!275343))

(declare-fun m!275345 () Bool)

(assert (=> b!259583 m!275345))

(declare-fun m!275347 () Bool)

(assert (=> b!259583 m!275347))

(declare-fun m!275349 () Bool)

(assert (=> b!259583 m!275349))

(assert (=> b!259583 m!275303))

(declare-fun m!275351 () Bool)

(assert (=> b!259583 m!275351))

(declare-fun m!275353 () Bool)

(assert (=> b!259583 m!275353))

(declare-fun m!275355 () Bool)

(assert (=> b!259583 m!275355))

(declare-fun m!275357 () Bool)

(assert (=> b!259583 m!275357))

(declare-fun m!275359 () Bool)

(assert (=> b!259583 m!275359))

(declare-fun m!275361 () Bool)

(assert (=> b!259582 m!275361))

(declare-fun m!275363 () Bool)

(assert (=> b!259587 m!275363))

(check-sat (not b!259584) (not b!259587) (not mapNonEmpty!11270) (not bm!24717) (not b!259591) b_and!13873 (not b_next!6753) (not bm!24718) (not b!259598) (not start!24878) (not b!259583) (not b!259582) (not b!259593) tp_is_empty!6615)
(check-sat b_and!13873 (not b_next!6753))
(get-model)

(declare-fun d!62307 () Bool)

(assert (=> d!62307 (= (inRange!0 (ite c!44058 (index!6930 lt!130856) (index!6933 lt!130856)) (mask!11106 thiss!1504)) (and (bvsge (ite c!44058 (index!6930 lt!130856) (index!6933 lt!130856)) #b00000000000000000000000000000000) (bvslt (ite c!44058 (index!6930 lt!130856) (index!6933 lt!130856)) (bvadd (mask!11106 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24718 d!62307))

(declare-fun d!62309 () Bool)

(assert (=> d!62309 (= (array_inv!3925 (_keys!6965 thiss!1504)) (bvsge (size!6305 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!259584 d!62309))

(declare-fun d!62311 () Bool)

(assert (=> d!62311 (= (array_inv!3926 (_values!4770 thiss!1504)) (bvsge (size!6304 (_values!4770 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!259584 d!62311))

(declare-fun d!62313 () Bool)

(assert (=> d!62313 (= (inRange!0 index!297 (mask!11106 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!11106 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!259593 d!62313))

(declare-fun d!62315 () Bool)

(declare-fun e!168305 () Bool)

(assert (=> d!62315 e!168305))

(declare-fun res!126944 () Bool)

(assert (=> d!62315 (=> res!126944 e!168305)))

(declare-fun lt!130915 () Bool)

(assert (=> d!62315 (= res!126944 (not lt!130915))))

(declare-fun lt!130914 () Bool)

(assert (=> d!62315 (= lt!130915 lt!130914)))

(declare-fun lt!130913 () Unit!8070)

(declare-fun e!168304 () Unit!8070)

(assert (=> d!62315 (= lt!130913 e!168304)))

(declare-fun c!44076 () Bool)

(assert (=> d!62315 (= c!44076 lt!130914)))

(declare-fun containsKey!306 (List!3842 (_ BitVec 64)) Bool)

(assert (=> d!62315 (= lt!130914 (containsKey!306 (toList!1949 lt!130859) key!932))))

(assert (=> d!62315 (= (contains!1886 lt!130859 key!932) lt!130915)))

(declare-fun b!259668 () Bool)

(declare-fun lt!130916 () Unit!8070)

(assert (=> b!259668 (= e!168304 lt!130916)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!255 (List!3842 (_ BitVec 64)) Unit!8070)

(assert (=> b!259668 (= lt!130916 (lemmaContainsKeyImpliesGetValueByKeyDefined!255 (toList!1949 lt!130859) key!932))))

(declare-datatypes ((Option!320 0))(
  ( (Some!319 (v!5462 V!8467)) (None!318) )
))
(declare-fun isDefined!256 (Option!320) Bool)

(declare-fun getValueByKey!314 (List!3842 (_ BitVec 64)) Option!320)

(assert (=> b!259668 (isDefined!256 (getValueByKey!314 (toList!1949 lt!130859) key!932))))

(declare-fun b!259669 () Bool)

(declare-fun Unit!8078 () Unit!8070)

(assert (=> b!259669 (= e!168304 Unit!8078)))

(declare-fun b!259670 () Bool)

(assert (=> b!259670 (= e!168305 (isDefined!256 (getValueByKey!314 (toList!1949 lt!130859) key!932)))))

(assert (= (and d!62315 c!44076) b!259668))

(assert (= (and d!62315 (not c!44076)) b!259669))

(assert (= (and d!62315 (not res!126944)) b!259670))

(declare-fun m!275429 () Bool)

(assert (=> d!62315 m!275429))

(declare-fun m!275431 () Bool)

(assert (=> b!259668 m!275431))

(declare-fun m!275433 () Bool)

(assert (=> b!259668 m!275433))

(assert (=> b!259668 m!275433))

(declare-fun m!275435 () Bool)

(assert (=> b!259668 m!275435))

(assert (=> b!259670 m!275433))

(assert (=> b!259670 m!275433))

(assert (=> b!259670 m!275435))

(assert (=> b!259593 d!62315))

(declare-fun bm!24739 () Bool)

(declare-fun call!24743 () ListLongMap!3867)

(declare-fun call!24747 () ListLongMap!3867)

(assert (=> bm!24739 (= call!24743 call!24747)))

(declare-fun b!259713 () Bool)

(declare-fun e!168341 () Bool)

(declare-fun lt!130982 () ListLongMap!3867)

(declare-fun apply!257 (ListLongMap!3867 (_ BitVec 64)) V!8467)

(declare-fun get!3069 (ValueCell!2964 V!8467) V!8467)

(declare-fun dynLambda!595 (Int (_ BitVec 64)) V!8467)

(assert (=> b!259713 (= e!168341 (= (apply!257 lt!130982 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000)) (get!3069 (select (arr!5955 (_values!4770 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!595 (defaultEntry!4787 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!259713 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6304 (_values!4770 thiss!1504))))))

(assert (=> b!259713 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun b!259714 () Bool)

(declare-fun e!168339 () Unit!8070)

(declare-fun Unit!8079 () Unit!8070)

(assert (=> b!259714 (= e!168339 Unit!8079)))

(declare-fun b!259715 () Bool)

(declare-fun e!168333 () ListLongMap!3867)

(declare-fun e!168337 () ListLongMap!3867)

(assert (=> b!259715 (= e!168333 e!168337)))

(declare-fun c!44090 () Bool)

(assert (=> b!259715 (= c!44090 (and (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259716 () Bool)

(declare-fun e!168342 () ListLongMap!3867)

(assert (=> b!259716 (= e!168342 call!24743)))

(declare-fun b!259717 () Bool)

(declare-fun c!44089 () Bool)

(assert (=> b!259717 (= c!44089 (and (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!259717 (= e!168337 e!168342)))

(declare-fun b!259718 () Bool)

(declare-fun res!126967 () Bool)

(declare-fun e!168338 () Bool)

(assert (=> b!259718 (=> (not res!126967) (not e!168338))))

(declare-fun e!168344 () Bool)

(assert (=> b!259718 (= res!126967 e!168344)))

(declare-fun res!126966 () Bool)

(assert (=> b!259718 (=> res!126966 e!168344)))

(declare-fun e!168334 () Bool)

(assert (=> b!259718 (= res!126966 (not e!168334))))

(declare-fun res!126965 () Bool)

(assert (=> b!259718 (=> (not res!126965) (not e!168334))))

(assert (=> b!259718 (= res!126965 (bvslt #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun b!259719 () Bool)

(declare-fun call!24742 () ListLongMap!3867)

(assert (=> b!259719 (= e!168342 call!24742)))

(declare-fun bm!24740 () Bool)

(declare-fun call!24748 () Bool)

(assert (=> bm!24740 (= call!24748 (contains!1886 lt!130982 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259720 () Bool)

(declare-fun lt!130977 () Unit!8070)

(assert (=> b!259720 (= e!168339 lt!130977)))

(declare-fun lt!130968 () ListLongMap!3867)

(declare-fun getCurrentListMapNoExtraKeys!576 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 32) Int) ListLongMap!3867)

(assert (=> b!259720 (= lt!130968 (getCurrentListMapNoExtraKeys!576 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!130980 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130980 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130974 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130974 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130962 () Unit!8070)

(declare-fun addStillContains!233 (ListLongMap!3867 (_ BitVec 64) V!8467 (_ BitVec 64)) Unit!8070)

(assert (=> b!259720 (= lt!130962 (addStillContains!233 lt!130968 lt!130980 (zeroValue!4628 thiss!1504) lt!130974))))

(assert (=> b!259720 (contains!1886 (+!692 lt!130968 (tuple2!4941 lt!130980 (zeroValue!4628 thiss!1504))) lt!130974)))

(declare-fun lt!130965 () Unit!8070)

(assert (=> b!259720 (= lt!130965 lt!130962)))

(declare-fun lt!130971 () ListLongMap!3867)

(assert (=> b!259720 (= lt!130971 (getCurrentListMapNoExtraKeys!576 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!130978 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130978 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130970 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130970 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130967 () Unit!8070)

(declare-fun addApplyDifferent!233 (ListLongMap!3867 (_ BitVec 64) V!8467 (_ BitVec 64)) Unit!8070)

(assert (=> b!259720 (= lt!130967 (addApplyDifferent!233 lt!130971 lt!130978 (minValue!4628 thiss!1504) lt!130970))))

(assert (=> b!259720 (= (apply!257 (+!692 lt!130971 (tuple2!4941 lt!130978 (minValue!4628 thiss!1504))) lt!130970) (apply!257 lt!130971 lt!130970))))

(declare-fun lt!130969 () Unit!8070)

(assert (=> b!259720 (= lt!130969 lt!130967)))

(declare-fun lt!130961 () ListLongMap!3867)

(assert (=> b!259720 (= lt!130961 (getCurrentListMapNoExtraKeys!576 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!130981 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130981 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130976 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130976 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!130973 () Unit!8070)

(assert (=> b!259720 (= lt!130973 (addApplyDifferent!233 lt!130961 lt!130981 (zeroValue!4628 thiss!1504) lt!130976))))

(assert (=> b!259720 (= (apply!257 (+!692 lt!130961 (tuple2!4941 lt!130981 (zeroValue!4628 thiss!1504))) lt!130976) (apply!257 lt!130961 lt!130976))))

(declare-fun lt!130966 () Unit!8070)

(assert (=> b!259720 (= lt!130966 lt!130973)))

(declare-fun lt!130975 () ListLongMap!3867)

(assert (=> b!259720 (= lt!130975 (getCurrentListMapNoExtraKeys!576 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!130972 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130972 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!130964 () (_ BitVec 64))

(assert (=> b!259720 (= lt!130964 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!259720 (= lt!130977 (addApplyDifferent!233 lt!130975 lt!130972 (minValue!4628 thiss!1504) lt!130964))))

(assert (=> b!259720 (= (apply!257 (+!692 lt!130975 (tuple2!4941 lt!130972 (minValue!4628 thiss!1504))) lt!130964) (apply!257 lt!130975 lt!130964))))

(declare-fun b!259721 () Bool)

(assert (=> b!259721 (= e!168344 e!168341)))

(declare-fun res!126971 () Bool)

(assert (=> b!259721 (=> (not res!126971) (not e!168341))))

(assert (=> b!259721 (= res!126971 (contains!1886 lt!130982 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!259721 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun b!259722 () Bool)

(declare-fun res!126964 () Bool)

(assert (=> b!259722 (=> (not res!126964) (not e!168338))))

(declare-fun e!168332 () Bool)

(assert (=> b!259722 (= res!126964 e!168332)))

(declare-fun c!44092 () Bool)

(assert (=> b!259722 (= c!44092 (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!259723 () Bool)

(declare-fun e!168343 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!259723 (= e!168343 (validKeyInArray!0 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259724 () Bool)

(assert (=> b!259724 (= e!168332 (not call!24748))))

(declare-fun b!259725 () Bool)

(declare-fun e!168340 () Bool)

(assert (=> b!259725 (= e!168340 (= (apply!257 lt!130982 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4628 thiss!1504)))))

(declare-fun d!62317 () Bool)

(assert (=> d!62317 e!168338))

(declare-fun res!126970 () Bool)

(assert (=> d!62317 (=> (not res!126970) (not e!168338))))

(assert (=> d!62317 (= res!126970 (or (bvsge #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))))))))

(declare-fun lt!130963 () ListLongMap!3867)

(assert (=> d!62317 (= lt!130982 lt!130963)))

(declare-fun lt!130979 () Unit!8070)

(assert (=> d!62317 (= lt!130979 e!168339)))

(declare-fun c!44093 () Bool)

(assert (=> d!62317 (= c!44093 e!168343)))

(declare-fun res!126969 () Bool)

(assert (=> d!62317 (=> (not res!126969) (not e!168343))))

(assert (=> d!62317 (= res!126969 (bvslt #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))))))

(assert (=> d!62317 (= lt!130963 e!168333)))

(declare-fun c!44094 () Bool)

(assert (=> d!62317 (= c!44094 (and (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62317 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62317 (= (getCurrentListMap!1472 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)) lt!130982)))

(declare-fun b!259726 () Bool)

(declare-fun e!168335 () Bool)

(assert (=> b!259726 (= e!168335 (= (apply!257 lt!130982 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4628 thiss!1504)))))

(declare-fun bm!24741 () Bool)

(declare-fun call!24745 () ListLongMap!3867)

(declare-fun call!24744 () ListLongMap!3867)

(assert (=> bm!24741 (= call!24745 call!24744)))

(declare-fun b!259727 () Bool)

(declare-fun e!168336 () Bool)

(assert (=> b!259727 (= e!168338 e!168336)))

(declare-fun c!44091 () Bool)

(assert (=> b!259727 (= c!44091 (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259728 () Bool)

(assert (=> b!259728 (= e!168334 (validKeyInArray!0 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259729 () Bool)

(assert (=> b!259729 (= e!168337 call!24743)))

(declare-fun b!259730 () Bool)

(declare-fun call!24746 () Bool)

(assert (=> b!259730 (= e!168336 (not call!24746))))

(declare-fun b!259731 () Bool)

(assert (=> b!259731 (= e!168336 e!168335)))

(declare-fun res!126968 () Bool)

(assert (=> b!259731 (= res!126968 call!24746)))

(assert (=> b!259731 (=> (not res!126968) (not e!168335))))

(declare-fun bm!24742 () Bool)

(assert (=> bm!24742 (= call!24742 call!24745)))

(declare-fun bm!24743 () Bool)

(assert (=> bm!24743 (= call!24746 (contains!1886 lt!130982 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24744 () Bool)

(assert (=> bm!24744 (= call!24744 (getCurrentListMapNoExtraKeys!576 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun b!259732 () Bool)

(assert (=> b!259732 (= e!168332 e!168340)))

(declare-fun res!126963 () Bool)

(assert (=> b!259732 (= res!126963 call!24748)))

(assert (=> b!259732 (=> (not res!126963) (not e!168340))))

(declare-fun bm!24745 () Bool)

(assert (=> bm!24745 (= call!24747 (+!692 (ite c!44094 call!24744 (ite c!44090 call!24745 call!24742)) (ite (or c!44094 c!44090) (tuple2!4941 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4628 thiss!1504)) (tuple2!4941 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4628 thiss!1504)))))))

(declare-fun b!259733 () Bool)

(assert (=> b!259733 (= e!168333 (+!692 call!24747 (tuple2!4941 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4628 thiss!1504))))))

(assert (= (and d!62317 c!44094) b!259733))

(assert (= (and d!62317 (not c!44094)) b!259715))

(assert (= (and b!259715 c!44090) b!259729))

(assert (= (and b!259715 (not c!44090)) b!259717))

(assert (= (and b!259717 c!44089) b!259716))

(assert (= (and b!259717 (not c!44089)) b!259719))

(assert (= (or b!259716 b!259719) bm!24742))

(assert (= (or b!259729 bm!24742) bm!24741))

(assert (= (or b!259729 b!259716) bm!24739))

(assert (= (or b!259733 bm!24741) bm!24744))

(assert (= (or b!259733 bm!24739) bm!24745))

(assert (= (and d!62317 res!126969) b!259723))

(assert (= (and d!62317 c!44093) b!259720))

(assert (= (and d!62317 (not c!44093)) b!259714))

(assert (= (and d!62317 res!126970) b!259718))

(assert (= (and b!259718 res!126965) b!259728))

(assert (= (and b!259718 (not res!126966)) b!259721))

(assert (= (and b!259721 res!126971) b!259713))

(assert (= (and b!259718 res!126967) b!259722))

(assert (= (and b!259722 c!44092) b!259732))

(assert (= (and b!259722 (not c!44092)) b!259724))

(assert (= (and b!259732 res!126963) b!259725))

(assert (= (or b!259732 b!259724) bm!24740))

(assert (= (and b!259722 res!126964) b!259727))

(assert (= (and b!259727 c!44091) b!259731))

(assert (= (and b!259727 (not c!44091)) b!259730))

(assert (= (and b!259731 res!126968) b!259726))

(assert (= (or b!259731 b!259730) bm!24743))

(declare-fun b_lambda!8281 () Bool)

(assert (=> (not b_lambda!8281) (not b!259713)))

(declare-fun t!8922 () Bool)

(declare-fun tb!3035 () Bool)

(assert (=> (and b!259584 (= (defaultEntry!4787 thiss!1504) (defaultEntry!4787 thiss!1504)) t!8922) tb!3035))

(declare-fun result!5411 () Bool)

(assert (=> tb!3035 (= result!5411 tp_is_empty!6615)))

(assert (=> b!259713 t!8922))

(declare-fun b_and!13877 () Bool)

(assert (= b_and!13873 (and (=> t!8922 result!5411) b_and!13877)))

(declare-fun m!275437 () Bool)

(assert (=> bm!24743 m!275437))

(declare-fun m!275439 () Bool)

(assert (=> bm!24740 m!275439))

(declare-fun m!275441 () Bool)

(assert (=> b!259725 m!275441))

(declare-fun m!275443 () Bool)

(assert (=> b!259723 m!275443))

(assert (=> b!259723 m!275443))

(declare-fun m!275445 () Bool)

(assert (=> b!259723 m!275445))

(declare-fun m!275447 () Bool)

(assert (=> bm!24744 m!275447))

(assert (=> b!259713 m!275443))

(declare-fun m!275449 () Bool)

(assert (=> b!259713 m!275449))

(declare-fun m!275451 () Bool)

(assert (=> b!259713 m!275451))

(declare-fun m!275453 () Bool)

(assert (=> b!259713 m!275453))

(assert (=> b!259713 m!275443))

(declare-fun m!275455 () Bool)

(assert (=> b!259713 m!275455))

(assert (=> b!259713 m!275449))

(assert (=> b!259713 m!275451))

(declare-fun m!275457 () Bool)

(assert (=> b!259726 m!275457))

(assert (=> d!62317 m!275327))

(declare-fun m!275459 () Bool)

(assert (=> bm!24745 m!275459))

(assert (=> b!259721 m!275443))

(assert (=> b!259721 m!275443))

(declare-fun m!275461 () Bool)

(assert (=> b!259721 m!275461))

(assert (=> b!259728 m!275443))

(assert (=> b!259728 m!275443))

(assert (=> b!259728 m!275445))

(declare-fun m!275463 () Bool)

(assert (=> b!259720 m!275463))

(declare-fun m!275465 () Bool)

(assert (=> b!259720 m!275465))

(declare-fun m!275467 () Bool)

(assert (=> b!259720 m!275467))

(declare-fun m!275469 () Bool)

(assert (=> b!259720 m!275469))

(declare-fun m!275471 () Bool)

(assert (=> b!259720 m!275471))

(declare-fun m!275473 () Bool)

(assert (=> b!259720 m!275473))

(declare-fun m!275475 () Bool)

(assert (=> b!259720 m!275475))

(assert (=> b!259720 m!275471))

(declare-fun m!275477 () Bool)

(assert (=> b!259720 m!275477))

(declare-fun m!275479 () Bool)

(assert (=> b!259720 m!275479))

(declare-fun m!275481 () Bool)

(assert (=> b!259720 m!275481))

(assert (=> b!259720 m!275447))

(declare-fun m!275483 () Bool)

(assert (=> b!259720 m!275483))

(assert (=> b!259720 m!275463))

(declare-fun m!275485 () Bool)

(assert (=> b!259720 m!275485))

(assert (=> b!259720 m!275475))

(declare-fun m!275487 () Bool)

(assert (=> b!259720 m!275487))

(declare-fun m!275489 () Bool)

(assert (=> b!259720 m!275489))

(assert (=> b!259720 m!275443))

(assert (=> b!259720 m!275477))

(declare-fun m!275491 () Bool)

(assert (=> b!259720 m!275491))

(declare-fun m!275493 () Bool)

(assert (=> b!259733 m!275493))

(assert (=> b!259593 d!62317))

(declare-fun d!62319 () Bool)

(assert (=> d!62319 (contains!1886 (getCurrentListMap!1472 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)) key!932)))

(declare-fun lt!130985 () Unit!8070)

(declare-fun choose!1268 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 64) (_ BitVec 32) Int) Unit!8070)

(assert (=> d!62319 (= lt!130985 (choose!1268 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(assert (=> d!62319 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62319 (= (lemmaArrayContainsKeyThenInListMap!249 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)) lt!130985)))

(declare-fun bs!9159 () Bool)

(assert (= bs!9159 d!62319))

(assert (=> bs!9159 m!275309))

(assert (=> bs!9159 m!275309))

(declare-fun m!275495 () Bool)

(assert (=> bs!9159 m!275495))

(declare-fun m!275497 () Bool)

(assert (=> bs!9159 m!275497))

(assert (=> bs!9159 m!275327))

(assert (=> b!259598 d!62319))

(declare-fun d!62321 () Bool)

(declare-fun e!168347 () Bool)

(assert (=> d!62321 e!168347))

(declare-fun res!126976 () Bool)

(assert (=> d!62321 (=> (not res!126976) (not e!168347))))

(declare-fun lt!130996 () ListLongMap!3867)

(assert (=> d!62321 (= res!126976 (contains!1886 lt!130996 (_1!2480 (tuple2!4941 key!932 v!346))))))

(declare-fun lt!130994 () List!3842)

(assert (=> d!62321 (= lt!130996 (ListLongMap!3868 lt!130994))))

(declare-fun lt!130997 () Unit!8070)

(declare-fun lt!130995 () Unit!8070)

(assert (=> d!62321 (= lt!130997 lt!130995)))

(assert (=> d!62321 (= (getValueByKey!314 lt!130994 (_1!2480 (tuple2!4941 key!932 v!346))) (Some!319 (_2!2480 (tuple2!4941 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!172 (List!3842 (_ BitVec 64) V!8467) Unit!8070)

(assert (=> d!62321 (= lt!130995 (lemmaContainsTupThenGetReturnValue!172 lt!130994 (_1!2480 (tuple2!4941 key!932 v!346)) (_2!2480 (tuple2!4941 key!932 v!346))))))

(declare-fun insertStrictlySorted!174 (List!3842 (_ BitVec 64) V!8467) List!3842)

(assert (=> d!62321 (= lt!130994 (insertStrictlySorted!174 (toList!1949 lt!130859) (_1!2480 (tuple2!4941 key!932 v!346)) (_2!2480 (tuple2!4941 key!932 v!346))))))

(assert (=> d!62321 (= (+!692 lt!130859 (tuple2!4941 key!932 v!346)) lt!130996)))

(declare-fun b!259740 () Bool)

(declare-fun res!126977 () Bool)

(assert (=> b!259740 (=> (not res!126977) (not e!168347))))

(assert (=> b!259740 (= res!126977 (= (getValueByKey!314 (toList!1949 lt!130996) (_1!2480 (tuple2!4941 key!932 v!346))) (Some!319 (_2!2480 (tuple2!4941 key!932 v!346)))))))

(declare-fun b!259741 () Bool)

(declare-fun contains!1888 (List!3842 tuple2!4940) Bool)

(assert (=> b!259741 (= e!168347 (contains!1888 (toList!1949 lt!130996) (tuple2!4941 key!932 v!346)))))

(assert (= (and d!62321 res!126976) b!259740))

(assert (= (and b!259740 res!126977) b!259741))

(declare-fun m!275499 () Bool)

(assert (=> d!62321 m!275499))

(declare-fun m!275501 () Bool)

(assert (=> d!62321 m!275501))

(declare-fun m!275503 () Bool)

(assert (=> d!62321 m!275503))

(declare-fun m!275505 () Bool)

(assert (=> d!62321 m!275505))

(declare-fun m!275507 () Bool)

(assert (=> b!259740 m!275507))

(declare-fun m!275509 () Bool)

(assert (=> b!259741 m!275509))

(assert (=> b!259583 d!62321))

(declare-fun d!62323 () Bool)

(declare-fun e!168350 () Bool)

(assert (=> d!62323 e!168350))

(declare-fun res!126980 () Bool)

(assert (=> d!62323 (=> (not res!126980) (not e!168350))))

(assert (=> d!62323 (= res!126980 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6305 (_keys!6965 thiss!1504))) (bvslt index!297 (size!6304 (_values!4770 thiss!1504)))))))

(declare-fun lt!131000 () Unit!8070)

(declare-fun choose!1269 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 32) (_ BitVec 64) V!8467 Int) Unit!8070)

(assert (=> d!62323 (= lt!131000 (choose!1269 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) index!297 key!932 v!346 (defaultEntry!4787 thiss!1504)))))

(assert (=> d!62323 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62323 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!107 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) index!297 key!932 v!346 (defaultEntry!4787 thiss!1504)) lt!131000)))

(declare-fun b!259744 () Bool)

(assert (=> b!259744 (= e!168350 (= (+!692 (getCurrentListMap!1472 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)) (tuple2!4941 key!932 v!346)) (getCurrentListMap!1472 (array!12583 (store (arr!5956 (_keys!6965 thiss!1504)) index!297 key!932) (size!6305 (_keys!6965 thiss!1504))) (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504))))))

(assert (= (and d!62323 res!126980) b!259744))

(declare-fun m!275511 () Bool)

(assert (=> d!62323 m!275511))

(assert (=> d!62323 m!275327))

(assert (=> b!259744 m!275343))

(assert (=> b!259744 m!275309))

(declare-fun m!275513 () Bool)

(assert (=> b!259744 m!275513))

(assert (=> b!259744 m!275309))

(declare-fun m!275515 () Bool)

(assert (=> b!259744 m!275515))

(assert (=> b!259744 m!275335))

(assert (=> b!259583 d!62323))

(declare-fun d!62325 () Bool)

(assert (=> d!62325 (= (validMask!0 (mask!11106 thiss!1504)) (and (or (= (mask!11106 thiss!1504) #b00000000000000000000000000000111) (= (mask!11106 thiss!1504) #b00000000000000000000000000001111) (= (mask!11106 thiss!1504) #b00000000000000000000000000011111) (= (mask!11106 thiss!1504) #b00000000000000000000000000111111) (= (mask!11106 thiss!1504) #b00000000000000000000000001111111) (= (mask!11106 thiss!1504) #b00000000000000000000000011111111) (= (mask!11106 thiss!1504) #b00000000000000000000000111111111) (= (mask!11106 thiss!1504) #b00000000000000000000001111111111) (= (mask!11106 thiss!1504) #b00000000000000000000011111111111) (= (mask!11106 thiss!1504) #b00000000000000000000111111111111) (= (mask!11106 thiss!1504) #b00000000000000000001111111111111) (= (mask!11106 thiss!1504) #b00000000000000000011111111111111) (= (mask!11106 thiss!1504) #b00000000000000000111111111111111) (= (mask!11106 thiss!1504) #b00000000000000001111111111111111) (= (mask!11106 thiss!1504) #b00000000000000011111111111111111) (= (mask!11106 thiss!1504) #b00000000000000111111111111111111) (= (mask!11106 thiss!1504) #b00000000000001111111111111111111) (= (mask!11106 thiss!1504) #b00000000000011111111111111111111) (= (mask!11106 thiss!1504) #b00000000000111111111111111111111) (= (mask!11106 thiss!1504) #b00000000001111111111111111111111) (= (mask!11106 thiss!1504) #b00000000011111111111111111111111) (= (mask!11106 thiss!1504) #b00000000111111111111111111111111) (= (mask!11106 thiss!1504) #b00000001111111111111111111111111) (= (mask!11106 thiss!1504) #b00000011111111111111111111111111) (= (mask!11106 thiss!1504) #b00000111111111111111111111111111) (= (mask!11106 thiss!1504) #b00001111111111111111111111111111) (= (mask!11106 thiss!1504) #b00011111111111111111111111111111) (= (mask!11106 thiss!1504) #b00111111111111111111111111111111)) (bvsle (mask!11106 thiss!1504) #b00111111111111111111111111111111)))))

(assert (=> b!259583 d!62325))

(declare-fun d!62327 () Bool)

(assert (=> d!62327 (= (arrayCountValidKeys!0 lt!130861 index!297 (bvadd index!297 #b00000000000000000000000000000001)) #b00000000000000000000000000000001)))

(declare-fun lt!131003 () Unit!8070)

(declare-fun choose!2 (array!12582 (_ BitVec 32)) Unit!8070)

(assert (=> d!62327 (= lt!131003 (choose!2 lt!130861 index!297))))

(declare-fun e!168353 () Bool)

(assert (=> d!62327 e!168353))

(declare-fun res!126985 () Bool)

(assert (=> d!62327 (=> (not res!126985) (not e!168353))))

(assert (=> d!62327 (= res!126985 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6305 lt!130861))))))

(assert (=> d!62327 (= (lemmaValidKeyAtIImpliesCountKeysIsOne!0 lt!130861 index!297) lt!131003)))

(declare-fun b!259749 () Bool)

(declare-fun res!126986 () Bool)

(assert (=> b!259749 (=> (not res!126986) (not e!168353))))

(assert (=> b!259749 (= res!126986 (validKeyInArray!0 (select (arr!5956 lt!130861) index!297)))))

(declare-fun b!259750 () Bool)

(assert (=> b!259750 (= e!168353 (bvslt (size!6305 lt!130861) #b01111111111111111111111111111111))))

(assert (= (and d!62327 res!126985) b!259749))

(assert (= (and b!259749 res!126986) b!259750))

(declare-fun m!275517 () Bool)

(assert (=> d!62327 m!275517))

(declare-fun m!275519 () Bool)

(assert (=> d!62327 m!275519))

(declare-fun m!275521 () Bool)

(assert (=> b!259749 m!275521))

(assert (=> b!259749 m!275521))

(declare-fun m!275523 () Bool)

(assert (=> b!259749 m!275523))

(assert (=> b!259583 d!62327))

(declare-fun d!62329 () Bool)

(declare-fun res!126993 () Bool)

(declare-fun e!168362 () Bool)

(assert (=> d!62329 (=> res!126993 e!168362)))

(assert (=> d!62329 (= res!126993 (bvsge #b00000000000000000000000000000000 (size!6305 lt!130861)))))

(assert (=> d!62329 (= (arrayNoDuplicates!0 lt!130861 #b00000000000000000000000000000000 Nil!3840) e!168362)))

(declare-fun b!259761 () Bool)

(declare-fun e!168363 () Bool)

(declare-fun call!24751 () Bool)

(assert (=> b!259761 (= e!168363 call!24751)))

(declare-fun b!259762 () Bool)

(assert (=> b!259762 (= e!168363 call!24751)))

(declare-fun b!259763 () Bool)

(declare-fun e!168364 () Bool)

(assert (=> b!259763 (= e!168362 e!168364)))

(declare-fun res!126995 () Bool)

(assert (=> b!259763 (=> (not res!126995) (not e!168364))))

(declare-fun e!168365 () Bool)

(assert (=> b!259763 (= res!126995 (not e!168365))))

(declare-fun res!126994 () Bool)

(assert (=> b!259763 (=> (not res!126994) (not e!168365))))

(assert (=> b!259763 (= res!126994 (validKeyInArray!0 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(declare-fun bm!24748 () Bool)

(declare-fun c!44097 () Bool)

(assert (=> bm!24748 (= call!24751 (arrayNoDuplicates!0 lt!130861 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!44097 (Cons!3839 (select (arr!5956 lt!130861) #b00000000000000000000000000000000) Nil!3840) Nil!3840)))))

(declare-fun b!259764 () Bool)

(declare-fun contains!1889 (List!3843 (_ BitVec 64)) Bool)

(assert (=> b!259764 (= e!168365 (contains!1889 Nil!3840 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(declare-fun b!259765 () Bool)

(assert (=> b!259765 (= e!168364 e!168363)))

(assert (=> b!259765 (= c!44097 (validKeyInArray!0 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(assert (= (and d!62329 (not res!126993)) b!259763))

(assert (= (and b!259763 res!126994) b!259764))

(assert (= (and b!259763 res!126995) b!259765))

(assert (= (and b!259765 c!44097) b!259762))

(assert (= (and b!259765 (not c!44097)) b!259761))

(assert (= (or b!259762 b!259761) bm!24748))

(declare-fun m!275525 () Bool)

(assert (=> b!259763 m!275525))

(assert (=> b!259763 m!275525))

(declare-fun m!275527 () Bool)

(assert (=> b!259763 m!275527))

(assert (=> bm!24748 m!275525))

(declare-fun m!275529 () Bool)

(assert (=> bm!24748 m!275529))

(assert (=> b!259764 m!275525))

(assert (=> b!259764 m!275525))

(declare-fun m!275531 () Bool)

(assert (=> b!259764 m!275531))

(assert (=> b!259765 m!275525))

(assert (=> b!259765 m!275525))

(assert (=> b!259765 m!275527))

(assert (=> b!259583 d!62329))

(declare-fun d!62331 () Bool)

(declare-fun e!168368 () Bool)

(assert (=> d!62331 e!168368))

(declare-fun res!126998 () Bool)

(assert (=> d!62331 (=> (not res!126998) (not e!168368))))

(assert (=> d!62331 (= res!126998 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6305 (_keys!6965 thiss!1504)))))))

(declare-fun lt!131006 () Unit!8070)

(declare-fun choose!41 (array!12582 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3843) Unit!8070)

(assert (=> d!62331 (= lt!131006 (choose!41 (_keys!6965 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3840))))

(assert (=> d!62331 (bvslt (size!6305 (_keys!6965 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!62331 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6965 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3840) lt!131006)))

(declare-fun b!259768 () Bool)

(assert (=> b!259768 (= e!168368 (arrayNoDuplicates!0 (array!12583 (store (arr!5956 (_keys!6965 thiss!1504)) index!297 key!932) (size!6305 (_keys!6965 thiss!1504))) #b00000000000000000000000000000000 Nil!3840))))

(assert (= (and d!62331 res!126998) b!259768))

(declare-fun m!275533 () Bool)

(assert (=> d!62331 m!275533))

(assert (=> b!259768 m!275343))

(declare-fun m!275535 () Bool)

(assert (=> b!259768 m!275535))

(assert (=> b!259583 d!62331))

(declare-fun b!259778 () Bool)

(declare-fun res!127007 () Bool)

(declare-fun e!168373 () Bool)

(assert (=> b!259778 (=> (not res!127007) (not e!168373))))

(assert (=> b!259778 (= res!127007 (validKeyInArray!0 key!932))))

(declare-fun b!259777 () Bool)

(declare-fun res!127009 () Bool)

(assert (=> b!259777 (=> (not res!127009) (not e!168373))))

(assert (=> b!259777 (= res!127009 (not (validKeyInArray!0 (select (arr!5956 (_keys!6965 thiss!1504)) index!297))))))

(declare-fun b!259779 () Bool)

(assert (=> b!259779 (= e!168373 (bvslt (size!6305 (_keys!6965 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun d!62333 () Bool)

(declare-fun e!168374 () Bool)

(assert (=> d!62333 e!168374))

(declare-fun res!127010 () Bool)

(assert (=> d!62333 (=> (not res!127010) (not e!168374))))

(assert (=> d!62333 (= res!127010 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6305 (_keys!6965 thiss!1504)))))))

(declare-fun lt!131009 () Unit!8070)

(declare-fun choose!1 (array!12582 (_ BitVec 32) (_ BitVec 64)) Unit!8070)

(assert (=> d!62333 (= lt!131009 (choose!1 (_keys!6965 thiss!1504) index!297 key!932))))

(assert (=> d!62333 e!168373))

(declare-fun res!127008 () Bool)

(assert (=> d!62333 (=> (not res!127008) (not e!168373))))

(assert (=> d!62333 (= res!127008 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6305 (_keys!6965 thiss!1504)))))))

(assert (=> d!62333 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6965 thiss!1504) index!297 key!932) lt!131009)))

(declare-fun b!259780 () Bool)

(assert (=> b!259780 (= e!168374 (= (arrayCountValidKeys!0 (array!12583 (store (arr!5956 (_keys!6965 thiss!1504)) index!297 key!932) (size!6305 (_keys!6965 thiss!1504))) #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6965 thiss!1504) #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) #b00000000000000000000000000000001)))))

(assert (= (and d!62333 res!127008) b!259777))

(assert (= (and b!259777 res!127009) b!259778))

(assert (= (and b!259778 res!127007) b!259779))

(assert (= (and d!62333 res!127010) b!259780))

(declare-fun m!275537 () Bool)

(assert (=> b!259778 m!275537))

(declare-fun m!275539 () Bool)

(assert (=> b!259777 m!275539))

(assert (=> b!259777 m!275539))

(declare-fun m!275541 () Bool)

(assert (=> b!259777 m!275541))

(declare-fun m!275543 () Bool)

(assert (=> d!62333 m!275543))

(assert (=> b!259780 m!275343))

(declare-fun m!275545 () Bool)

(assert (=> b!259780 m!275545))

(assert (=> b!259780 m!275357))

(assert (=> b!259583 d!62333))

(declare-fun bm!24749 () Bool)

(declare-fun call!24753 () ListLongMap!3867)

(declare-fun call!24757 () ListLongMap!3867)

(assert (=> bm!24749 (= call!24753 call!24757)))

(declare-fun b!259781 () Bool)

(declare-fun e!168384 () Bool)

(declare-fun lt!131031 () ListLongMap!3867)

(assert (=> b!259781 (= e!168384 (= (apply!257 lt!131031 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)) (get!3069 (select (arr!5955 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!595 (defaultEntry!4787 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!259781 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6304 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))))))))

(assert (=> b!259781 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6305 lt!130861)))))

(declare-fun b!259782 () Bool)

(declare-fun e!168382 () Unit!8070)

(declare-fun Unit!8080 () Unit!8070)

(assert (=> b!259782 (= e!168382 Unit!8080)))

(declare-fun b!259783 () Bool)

(declare-fun e!168376 () ListLongMap!3867)

(declare-fun e!168380 () ListLongMap!3867)

(assert (=> b!259783 (= e!168376 e!168380)))

(declare-fun c!44099 () Bool)

(assert (=> b!259783 (= c!44099 (and (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259784 () Bool)

(declare-fun e!168385 () ListLongMap!3867)

(assert (=> b!259784 (= e!168385 call!24753)))

(declare-fun b!259785 () Bool)

(declare-fun c!44098 () Bool)

(assert (=> b!259785 (= c!44098 (and (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!259785 (= e!168380 e!168385)))

(declare-fun b!259786 () Bool)

(declare-fun res!127015 () Bool)

(declare-fun e!168381 () Bool)

(assert (=> b!259786 (=> (not res!127015) (not e!168381))))

(declare-fun e!168387 () Bool)

(assert (=> b!259786 (= res!127015 e!168387)))

(declare-fun res!127014 () Bool)

(assert (=> b!259786 (=> res!127014 e!168387)))

(declare-fun e!168377 () Bool)

(assert (=> b!259786 (= res!127014 (not e!168377))))

(declare-fun res!127013 () Bool)

(assert (=> b!259786 (=> (not res!127013) (not e!168377))))

(assert (=> b!259786 (= res!127013 (bvslt #b00000000000000000000000000000000 (size!6305 lt!130861)))))

(declare-fun b!259787 () Bool)

(declare-fun call!24752 () ListLongMap!3867)

(assert (=> b!259787 (= e!168385 call!24752)))

(declare-fun bm!24750 () Bool)

(declare-fun call!24758 () Bool)

(assert (=> bm!24750 (= call!24758 (contains!1886 lt!131031 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!259788 () Bool)

(declare-fun lt!131026 () Unit!8070)

(assert (=> b!259788 (= e!168382 lt!131026)))

(declare-fun lt!131017 () ListLongMap!3867)

(assert (=> b!259788 (= lt!131017 (getCurrentListMapNoExtraKeys!576 lt!130861 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!131029 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131029 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131023 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131023 (select (arr!5956 lt!130861) #b00000000000000000000000000000000))))

(declare-fun lt!131011 () Unit!8070)

(assert (=> b!259788 (= lt!131011 (addStillContains!233 lt!131017 lt!131029 (zeroValue!4628 thiss!1504) lt!131023))))

(assert (=> b!259788 (contains!1886 (+!692 lt!131017 (tuple2!4941 lt!131029 (zeroValue!4628 thiss!1504))) lt!131023)))

(declare-fun lt!131014 () Unit!8070)

(assert (=> b!259788 (= lt!131014 lt!131011)))

(declare-fun lt!131020 () ListLongMap!3867)

(assert (=> b!259788 (= lt!131020 (getCurrentListMapNoExtraKeys!576 lt!130861 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!131027 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131027 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131019 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131019 (select (arr!5956 lt!130861) #b00000000000000000000000000000000))))

(declare-fun lt!131016 () Unit!8070)

(assert (=> b!259788 (= lt!131016 (addApplyDifferent!233 lt!131020 lt!131027 (minValue!4628 thiss!1504) lt!131019))))

(assert (=> b!259788 (= (apply!257 (+!692 lt!131020 (tuple2!4941 lt!131027 (minValue!4628 thiss!1504))) lt!131019) (apply!257 lt!131020 lt!131019))))

(declare-fun lt!131018 () Unit!8070)

(assert (=> b!259788 (= lt!131018 lt!131016)))

(declare-fun lt!131010 () ListLongMap!3867)

(assert (=> b!259788 (= lt!131010 (getCurrentListMapNoExtraKeys!576 lt!130861 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!131030 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131030 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131025 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131025 (select (arr!5956 lt!130861) #b00000000000000000000000000000000))))

(declare-fun lt!131022 () Unit!8070)

(assert (=> b!259788 (= lt!131022 (addApplyDifferent!233 lt!131010 lt!131030 (zeroValue!4628 thiss!1504) lt!131025))))

(assert (=> b!259788 (= (apply!257 (+!692 lt!131010 (tuple2!4941 lt!131030 (zeroValue!4628 thiss!1504))) lt!131025) (apply!257 lt!131010 lt!131025))))

(declare-fun lt!131015 () Unit!8070)

(assert (=> b!259788 (= lt!131015 lt!131022)))

(declare-fun lt!131024 () ListLongMap!3867)

(assert (=> b!259788 (= lt!131024 (getCurrentListMapNoExtraKeys!576 lt!130861 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun lt!131021 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131021 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!131013 () (_ BitVec 64))

(assert (=> b!259788 (= lt!131013 (select (arr!5956 lt!130861) #b00000000000000000000000000000000))))

(assert (=> b!259788 (= lt!131026 (addApplyDifferent!233 lt!131024 lt!131021 (minValue!4628 thiss!1504) lt!131013))))

(assert (=> b!259788 (= (apply!257 (+!692 lt!131024 (tuple2!4941 lt!131021 (minValue!4628 thiss!1504))) lt!131013) (apply!257 lt!131024 lt!131013))))

(declare-fun b!259789 () Bool)

(assert (=> b!259789 (= e!168387 e!168384)))

(declare-fun res!127019 () Bool)

(assert (=> b!259789 (=> (not res!127019) (not e!168384))))

(assert (=> b!259789 (= res!127019 (contains!1886 lt!131031 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(assert (=> b!259789 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6305 lt!130861)))))

(declare-fun b!259790 () Bool)

(declare-fun res!127012 () Bool)

(assert (=> b!259790 (=> (not res!127012) (not e!168381))))

(declare-fun e!168375 () Bool)

(assert (=> b!259790 (= res!127012 e!168375)))

(declare-fun c!44101 () Bool)

(assert (=> b!259790 (= c!44101 (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!259791 () Bool)

(declare-fun e!168386 () Bool)

(assert (=> b!259791 (= e!168386 (validKeyInArray!0 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(declare-fun b!259792 () Bool)

(assert (=> b!259792 (= e!168375 (not call!24758))))

(declare-fun b!259793 () Bool)

(declare-fun e!168383 () Bool)

(assert (=> b!259793 (= e!168383 (= (apply!257 lt!131031 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4628 thiss!1504)))))

(declare-fun d!62335 () Bool)

(assert (=> d!62335 e!168381))

(declare-fun res!127018 () Bool)

(assert (=> d!62335 (=> (not res!127018) (not e!168381))))

(assert (=> d!62335 (= res!127018 (or (bvsge #b00000000000000000000000000000000 (size!6305 lt!130861)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6305 lt!130861)))))))

(declare-fun lt!131012 () ListLongMap!3867)

(assert (=> d!62335 (= lt!131031 lt!131012)))

(declare-fun lt!131028 () Unit!8070)

(assert (=> d!62335 (= lt!131028 e!168382)))

(declare-fun c!44102 () Bool)

(assert (=> d!62335 (= c!44102 e!168386)))

(declare-fun res!127017 () Bool)

(assert (=> d!62335 (=> (not res!127017) (not e!168386))))

(assert (=> d!62335 (= res!127017 (bvslt #b00000000000000000000000000000000 (size!6305 lt!130861)))))

(assert (=> d!62335 (= lt!131012 e!168376)))

(declare-fun c!44103 () Bool)

(assert (=> d!62335 (= c!44103 (and (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!62335 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62335 (= (getCurrentListMap!1472 lt!130861 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)) lt!131031)))

(declare-fun b!259794 () Bool)

(declare-fun e!168378 () Bool)

(assert (=> b!259794 (= e!168378 (= (apply!257 lt!131031 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4628 thiss!1504)))))

(declare-fun bm!24751 () Bool)

(declare-fun call!24755 () ListLongMap!3867)

(declare-fun call!24754 () ListLongMap!3867)

(assert (=> bm!24751 (= call!24755 call!24754)))

(declare-fun b!259795 () Bool)

(declare-fun e!168379 () Bool)

(assert (=> b!259795 (= e!168381 e!168379)))

(declare-fun c!44100 () Bool)

(assert (=> b!259795 (= c!44100 (not (= (bvand (extraKeys!4524 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!259796 () Bool)

(assert (=> b!259796 (= e!168377 (validKeyInArray!0 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(declare-fun b!259797 () Bool)

(assert (=> b!259797 (= e!168380 call!24753)))

(declare-fun b!259798 () Bool)

(declare-fun call!24756 () Bool)

(assert (=> b!259798 (= e!168379 (not call!24756))))

(declare-fun b!259799 () Bool)

(assert (=> b!259799 (= e!168379 e!168378)))

(declare-fun res!127016 () Bool)

(assert (=> b!259799 (= res!127016 call!24756)))

(assert (=> b!259799 (=> (not res!127016) (not e!168378))))

(declare-fun bm!24752 () Bool)

(assert (=> bm!24752 (= call!24752 call!24755)))

(declare-fun bm!24753 () Bool)

(assert (=> bm!24753 (= call!24756 (contains!1886 lt!131031 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24754 () Bool)

(assert (=> bm!24754 (= call!24754 (getCurrentListMapNoExtraKeys!576 lt!130861 (array!12581 (store (arr!5955 (_values!4770 thiss!1504)) index!297 (ValueCellFull!2964 v!346)) (size!6304 (_values!4770 thiss!1504))) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4787 thiss!1504)))))

(declare-fun b!259800 () Bool)

(assert (=> b!259800 (= e!168375 e!168383)))

(declare-fun res!127011 () Bool)

(assert (=> b!259800 (= res!127011 call!24758)))

(assert (=> b!259800 (=> (not res!127011) (not e!168383))))

(declare-fun bm!24755 () Bool)

(assert (=> bm!24755 (= call!24757 (+!692 (ite c!44103 call!24754 (ite c!44099 call!24755 call!24752)) (ite (or c!44103 c!44099) (tuple2!4941 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4628 thiss!1504)) (tuple2!4941 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4628 thiss!1504)))))))

(declare-fun b!259801 () Bool)

(assert (=> b!259801 (= e!168376 (+!692 call!24757 (tuple2!4941 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4628 thiss!1504))))))

(assert (= (and d!62335 c!44103) b!259801))

(assert (= (and d!62335 (not c!44103)) b!259783))

(assert (= (and b!259783 c!44099) b!259797))

(assert (= (and b!259783 (not c!44099)) b!259785))

(assert (= (and b!259785 c!44098) b!259784))

(assert (= (and b!259785 (not c!44098)) b!259787))

(assert (= (or b!259784 b!259787) bm!24752))

(assert (= (or b!259797 bm!24752) bm!24751))

(assert (= (or b!259797 b!259784) bm!24749))

(assert (= (or b!259801 bm!24751) bm!24754))

(assert (= (or b!259801 bm!24749) bm!24755))

(assert (= (and d!62335 res!127017) b!259791))

(assert (= (and d!62335 c!44102) b!259788))

(assert (= (and d!62335 (not c!44102)) b!259782))

(assert (= (and d!62335 res!127018) b!259786))

(assert (= (and b!259786 res!127013) b!259796))

(assert (= (and b!259786 (not res!127014)) b!259789))

(assert (= (and b!259789 res!127019) b!259781))

(assert (= (and b!259786 res!127015) b!259790))

(assert (= (and b!259790 c!44101) b!259800))

(assert (= (and b!259790 (not c!44101)) b!259792))

(assert (= (and b!259800 res!127011) b!259793))

(assert (= (or b!259800 b!259792) bm!24750))

(assert (= (and b!259790 res!127012) b!259795))

(assert (= (and b!259795 c!44100) b!259799))

(assert (= (and b!259795 (not c!44100)) b!259798))

(assert (= (and b!259799 res!127016) b!259794))

(assert (= (or b!259799 b!259798) bm!24753))

(declare-fun b_lambda!8283 () Bool)

(assert (=> (not b_lambda!8283) (not b!259781)))

(assert (=> b!259781 t!8922))

(declare-fun b_and!13879 () Bool)

(assert (= b_and!13877 (and (=> t!8922 result!5411) b_and!13879)))

(declare-fun m!275547 () Bool)

(assert (=> bm!24753 m!275547))

(declare-fun m!275549 () Bool)

(assert (=> bm!24750 m!275549))

(declare-fun m!275551 () Bool)

(assert (=> b!259793 m!275551))

(assert (=> b!259791 m!275525))

(assert (=> b!259791 m!275525))

(assert (=> b!259791 m!275527))

(declare-fun m!275553 () Bool)

(assert (=> bm!24754 m!275553))

(assert (=> b!259781 m!275525))

(declare-fun m!275555 () Bool)

(assert (=> b!259781 m!275555))

(assert (=> b!259781 m!275451))

(declare-fun m!275557 () Bool)

(assert (=> b!259781 m!275557))

(assert (=> b!259781 m!275525))

(declare-fun m!275559 () Bool)

(assert (=> b!259781 m!275559))

(assert (=> b!259781 m!275555))

(assert (=> b!259781 m!275451))

(declare-fun m!275561 () Bool)

(assert (=> b!259794 m!275561))

(assert (=> d!62335 m!275327))

(declare-fun m!275563 () Bool)

(assert (=> bm!24755 m!275563))

(assert (=> b!259789 m!275525))

(assert (=> b!259789 m!275525))

(declare-fun m!275565 () Bool)

(assert (=> b!259789 m!275565))

(assert (=> b!259796 m!275525))

(assert (=> b!259796 m!275525))

(assert (=> b!259796 m!275527))

(declare-fun m!275567 () Bool)

(assert (=> b!259788 m!275567))

(declare-fun m!275569 () Bool)

(assert (=> b!259788 m!275569))

(declare-fun m!275571 () Bool)

(assert (=> b!259788 m!275571))

(declare-fun m!275573 () Bool)

(assert (=> b!259788 m!275573))

(declare-fun m!275575 () Bool)

(assert (=> b!259788 m!275575))

(declare-fun m!275577 () Bool)

(assert (=> b!259788 m!275577))

(declare-fun m!275579 () Bool)

(assert (=> b!259788 m!275579))

(assert (=> b!259788 m!275575))

(declare-fun m!275581 () Bool)

(assert (=> b!259788 m!275581))

(declare-fun m!275583 () Bool)

(assert (=> b!259788 m!275583))

(declare-fun m!275585 () Bool)

(assert (=> b!259788 m!275585))

(assert (=> b!259788 m!275553))

(declare-fun m!275587 () Bool)

(assert (=> b!259788 m!275587))

(assert (=> b!259788 m!275567))

(declare-fun m!275589 () Bool)

(assert (=> b!259788 m!275589))

(assert (=> b!259788 m!275579))

(declare-fun m!275591 () Bool)

(assert (=> b!259788 m!275591))

(declare-fun m!275593 () Bool)

(assert (=> b!259788 m!275593))

(assert (=> b!259788 m!275525))

(assert (=> b!259788 m!275581))

(declare-fun m!275595 () Bool)

(assert (=> b!259788 m!275595))

(declare-fun m!275597 () Bool)

(assert (=> b!259801 m!275597))

(assert (=> b!259583 d!62335))

(declare-fun d!62337 () Bool)

(declare-fun res!127024 () Bool)

(declare-fun e!168392 () Bool)

(assert (=> d!62337 (=> res!127024 e!168392)))

(assert (=> d!62337 (= res!127024 (= (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62337 (= (arrayContainsKey!0 (_keys!6965 thiss!1504) key!932 #b00000000000000000000000000000000) e!168392)))

(declare-fun b!259806 () Bool)

(declare-fun e!168393 () Bool)

(assert (=> b!259806 (= e!168392 e!168393)))

(declare-fun res!127025 () Bool)

(assert (=> b!259806 (=> (not res!127025) (not e!168393))))

(assert (=> b!259806 (= res!127025 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun b!259807 () Bool)

(assert (=> b!259807 (= e!168393 (arrayContainsKey!0 (_keys!6965 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62337 (not res!127024)) b!259806))

(assert (= (and b!259806 res!127025) b!259807))

(assert (=> d!62337 m!275443))

(declare-fun m!275599 () Bool)

(assert (=> b!259807 m!275599))

(assert (=> b!259583 d!62337))

(declare-fun d!62339 () Bool)

(declare-fun e!168396 () Bool)

(assert (=> d!62339 e!168396))

(declare-fun res!127028 () Bool)

(assert (=> d!62339 (=> (not res!127028) (not e!168396))))

(assert (=> d!62339 (= res!127028 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6305 (_keys!6965 thiss!1504)))))))

(declare-fun lt!131034 () Unit!8070)

(declare-fun choose!102 ((_ BitVec 64) array!12582 (_ BitVec 32) (_ BitVec 32)) Unit!8070)

(assert (=> d!62339 (= lt!131034 (choose!102 key!932 (_keys!6965 thiss!1504) index!297 (mask!11106 thiss!1504)))))

(assert (=> d!62339 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62339 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6965 thiss!1504) index!297 (mask!11106 thiss!1504)) lt!131034)))

(declare-fun b!259810 () Bool)

(assert (=> b!259810 (= e!168396 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12583 (store (arr!5956 (_keys!6965 thiss!1504)) index!297 key!932) (size!6305 (_keys!6965 thiss!1504))) (mask!11106 thiss!1504)))))

(assert (= (and d!62339 res!127028) b!259810))

(declare-fun m!275601 () Bool)

(assert (=> d!62339 m!275601))

(assert (=> d!62339 m!275327))

(assert (=> b!259810 m!275343))

(declare-fun m!275603 () Bool)

(assert (=> b!259810 m!275603))

(assert (=> b!259583 d!62339))

(declare-fun b!259819 () Bool)

(declare-fun e!168401 () (_ BitVec 32))

(assert (=> b!259819 (= e!168401 #b00000000000000000000000000000000)))

(declare-fun b!259820 () Bool)

(declare-fun e!168402 () (_ BitVec 32))

(declare-fun call!24761 () (_ BitVec 32))

(assert (=> b!259820 (= e!168402 (bvadd #b00000000000000000000000000000001 call!24761))))

(declare-fun bm!24758 () Bool)

(assert (=> bm!24758 (= call!24761 (arrayCountValidKeys!0 lt!130861 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun d!62341 () Bool)

(declare-fun lt!131037 () (_ BitVec 32))

(assert (=> d!62341 (and (bvsge lt!131037 #b00000000000000000000000000000000) (bvsle lt!131037 (bvsub (size!6305 lt!130861) #b00000000000000000000000000000000)))))

(assert (=> d!62341 (= lt!131037 e!168401)))

(declare-fun c!44109 () Bool)

(assert (=> d!62341 (= c!44109 (bvsge #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))))))

(assert (=> d!62341 (and (bvsle #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6305 (_keys!6965 thiss!1504)) (size!6305 lt!130861)))))

(assert (=> d!62341 (= (arrayCountValidKeys!0 lt!130861 #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) lt!131037)))

(declare-fun b!259821 () Bool)

(assert (=> b!259821 (= e!168401 e!168402)))

(declare-fun c!44108 () Bool)

(assert (=> b!259821 (= c!44108 (validKeyInArray!0 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(declare-fun b!259822 () Bool)

(assert (=> b!259822 (= e!168402 call!24761)))

(assert (= (and d!62341 c!44109) b!259819))

(assert (= (and d!62341 (not c!44109)) b!259821))

(assert (= (and b!259821 c!44108) b!259820))

(assert (= (and b!259821 (not c!44108)) b!259822))

(assert (= (or b!259820 b!259822) bm!24758))

(declare-fun m!275605 () Bool)

(assert (=> bm!24758 m!275605))

(assert (=> b!259821 m!275525))

(assert (=> b!259821 m!275525))

(assert (=> b!259821 m!275527))

(assert (=> b!259583 d!62341))

(declare-fun b!259823 () Bool)

(declare-fun e!168403 () (_ BitVec 32))

(assert (=> b!259823 (= e!168403 #b00000000000000000000000000000000)))

(declare-fun b!259824 () Bool)

(declare-fun e!168404 () (_ BitVec 32))

(declare-fun call!24762 () (_ BitVec 32))

(assert (=> b!259824 (= e!168404 (bvadd #b00000000000000000000000000000001 call!24762))))

(declare-fun bm!24759 () Bool)

(assert (=> bm!24759 (= call!24762 (arrayCountValidKeys!0 (_keys!6965 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun d!62343 () Bool)

(declare-fun lt!131038 () (_ BitVec 32))

(assert (=> d!62343 (and (bvsge lt!131038 #b00000000000000000000000000000000) (bvsle lt!131038 (bvsub (size!6305 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!62343 (= lt!131038 e!168403)))

(declare-fun c!44111 () Bool)

(assert (=> d!62343 (= c!44111 (bvsge #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))))))

(assert (=> d!62343 (and (bvsle #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6305 (_keys!6965 thiss!1504)) (size!6305 (_keys!6965 thiss!1504))))))

(assert (=> d!62343 (= (arrayCountValidKeys!0 (_keys!6965 thiss!1504) #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) lt!131038)))

(declare-fun b!259825 () Bool)

(assert (=> b!259825 (= e!168403 e!168404)))

(declare-fun c!44110 () Bool)

(assert (=> b!259825 (= c!44110 (validKeyInArray!0 (select (arr!5956 (_keys!6965 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!259826 () Bool)

(assert (=> b!259826 (= e!168404 call!24762)))

(assert (= (and d!62343 c!44111) b!259823))

(assert (= (and d!62343 (not c!44111)) b!259825))

(assert (= (and b!259825 c!44110) b!259824))

(assert (= (and b!259825 (not c!44110)) b!259826))

(assert (= (or b!259824 b!259826) bm!24759))

(declare-fun m!275607 () Bool)

(assert (=> bm!24759 m!275607))

(assert (=> b!259825 m!275443))

(assert (=> b!259825 m!275443))

(assert (=> b!259825 m!275445))

(assert (=> b!259583 d!62343))

(declare-fun d!62345 () Bool)

(declare-fun res!127033 () Bool)

(declare-fun e!168411 () Bool)

(assert (=> d!62345 (=> res!127033 e!168411)))

(assert (=> d!62345 (= res!127033 (bvsge #b00000000000000000000000000000000 (size!6305 lt!130861)))))

(assert (=> d!62345 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!130861 (mask!11106 thiss!1504)) e!168411)))

(declare-fun b!259835 () Bool)

(declare-fun e!168413 () Bool)

(declare-fun call!24765 () Bool)

(assert (=> b!259835 (= e!168413 call!24765)))

(declare-fun bm!24762 () Bool)

(assert (=> bm!24762 (= call!24765 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!130861 (mask!11106 thiss!1504)))))

(declare-fun b!259836 () Bool)

(declare-fun e!168412 () Bool)

(assert (=> b!259836 (= e!168412 call!24765)))

(declare-fun b!259837 () Bool)

(assert (=> b!259837 (= e!168413 e!168412)))

(declare-fun lt!131045 () (_ BitVec 64))

(assert (=> b!259837 (= lt!131045 (select (arr!5956 lt!130861) #b00000000000000000000000000000000))))

(declare-fun lt!131047 () Unit!8070)

(assert (=> b!259837 (= lt!131047 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130861 lt!131045 #b00000000000000000000000000000000))))

(assert (=> b!259837 (arrayContainsKey!0 lt!130861 lt!131045 #b00000000000000000000000000000000)))

(declare-fun lt!131046 () Unit!8070)

(assert (=> b!259837 (= lt!131046 lt!131047)))

(declare-fun res!127034 () Bool)

(assert (=> b!259837 (= res!127034 (= (seekEntryOrOpen!0 (select (arr!5956 lt!130861) #b00000000000000000000000000000000) lt!130861 (mask!11106 thiss!1504)) (Found!1190 #b00000000000000000000000000000000)))))

(assert (=> b!259837 (=> (not res!127034) (not e!168412))))

(declare-fun b!259838 () Bool)

(assert (=> b!259838 (= e!168411 e!168413)))

(declare-fun c!44114 () Bool)

(assert (=> b!259838 (= c!44114 (validKeyInArray!0 (select (arr!5956 lt!130861) #b00000000000000000000000000000000)))))

(assert (= (and d!62345 (not res!127033)) b!259838))

(assert (= (and b!259838 c!44114) b!259837))

(assert (= (and b!259838 (not c!44114)) b!259835))

(assert (= (and b!259837 res!127034) b!259836))

(assert (= (or b!259836 b!259835) bm!24762))

(declare-fun m!275609 () Bool)

(assert (=> bm!24762 m!275609))

(assert (=> b!259837 m!275525))

(declare-fun m!275611 () Bool)

(assert (=> b!259837 m!275611))

(declare-fun m!275613 () Bool)

(assert (=> b!259837 m!275613))

(assert (=> b!259837 m!275525))

(declare-fun m!275615 () Bool)

(assert (=> b!259837 m!275615))

(assert (=> b!259838 m!275525))

(assert (=> b!259838 m!275525))

(assert (=> b!259838 m!275527))

(assert (=> b!259583 d!62345))

(declare-fun d!62347 () Bool)

(assert (=> d!62347 (arrayContainsKey!0 lt!130861 key!932 #b00000000000000000000000000000000)))

(declare-fun lt!131050 () Unit!8070)

(declare-fun choose!13 (array!12582 (_ BitVec 64) (_ BitVec 32)) Unit!8070)

(assert (=> d!62347 (= lt!131050 (choose!13 lt!130861 key!932 index!297))))

(assert (=> d!62347 (bvsge index!297 #b00000000000000000000000000000000)))

(assert (=> d!62347 (= (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!130861 key!932 index!297) lt!131050)))

(declare-fun bs!9160 () Bool)

(assert (= bs!9160 d!62347))

(assert (=> bs!9160 m!275353))

(declare-fun m!275617 () Bool)

(assert (=> bs!9160 m!275617))

(assert (=> b!259583 d!62347))

(declare-fun d!62349 () Bool)

(declare-fun res!127035 () Bool)

(declare-fun e!168414 () Bool)

(assert (=> d!62349 (=> res!127035 e!168414)))

(assert (=> d!62349 (= res!127035 (= (select (arr!5956 lt!130861) #b00000000000000000000000000000000) key!932))))

(assert (=> d!62349 (= (arrayContainsKey!0 lt!130861 key!932 #b00000000000000000000000000000000) e!168414)))

(declare-fun b!259839 () Bool)

(declare-fun e!168415 () Bool)

(assert (=> b!259839 (= e!168414 e!168415)))

(declare-fun res!127036 () Bool)

(assert (=> b!259839 (=> (not res!127036) (not e!168415))))

(assert (=> b!259839 (= res!127036 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6305 lt!130861)))))

(declare-fun b!259840 () Bool)

(assert (=> b!259840 (= e!168415 (arrayContainsKey!0 lt!130861 key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!62349 (not res!127035)) b!259839))

(assert (= (and b!259839 res!127036) b!259840))

(assert (=> d!62349 m!275525))

(declare-fun m!275619 () Bool)

(assert (=> b!259840 m!275619))

(assert (=> b!259583 d!62349))

(declare-fun b!259841 () Bool)

(declare-fun e!168416 () (_ BitVec 32))

(assert (=> b!259841 (= e!168416 #b00000000000000000000000000000000)))

(declare-fun b!259842 () Bool)

(declare-fun e!168417 () (_ BitVec 32))

(declare-fun call!24766 () (_ BitVec 32))

(assert (=> b!259842 (= e!168417 (bvadd #b00000000000000000000000000000001 call!24766))))

(declare-fun bm!24763 () Bool)

(assert (=> bm!24763 (= call!24766 (arrayCountValidKeys!0 lt!130861 (bvadd index!297 #b00000000000000000000000000000001) (bvadd #b00000000000000000000000000000001 index!297)))))

(declare-fun d!62351 () Bool)

(declare-fun lt!131051 () (_ BitVec 32))

(assert (=> d!62351 (and (bvsge lt!131051 #b00000000000000000000000000000000) (bvsle lt!131051 (bvsub (size!6305 lt!130861) index!297)))))

(assert (=> d!62351 (= lt!131051 e!168416)))

(declare-fun c!44116 () Bool)

(assert (=> d!62351 (= c!44116 (bvsge index!297 (bvadd #b00000000000000000000000000000001 index!297)))))

(assert (=> d!62351 (and (bvsle index!297 (bvadd #b00000000000000000000000000000001 index!297)) (bvsge index!297 #b00000000000000000000000000000000) (bvsle (bvadd #b00000000000000000000000000000001 index!297) (size!6305 lt!130861)))))

(assert (=> d!62351 (= (arrayCountValidKeys!0 lt!130861 index!297 (bvadd #b00000000000000000000000000000001 index!297)) lt!131051)))

(declare-fun b!259843 () Bool)

(assert (=> b!259843 (= e!168416 e!168417)))

(declare-fun c!44115 () Bool)

(assert (=> b!259843 (= c!44115 (validKeyInArray!0 (select (arr!5956 lt!130861) index!297)))))

(declare-fun b!259844 () Bool)

(assert (=> b!259844 (= e!168417 call!24766)))

(assert (= (and d!62351 c!44116) b!259841))

(assert (= (and d!62351 (not c!44116)) b!259843))

(assert (= (and b!259843 c!44115) b!259842))

(assert (= (and b!259843 (not c!44115)) b!259844))

(assert (= (or b!259842 b!259844) bm!24763))

(declare-fun m!275621 () Bool)

(assert (=> bm!24763 m!275621))

(assert (=> b!259843 m!275521))

(assert (=> b!259843 m!275521))

(assert (=> b!259843 m!275523))

(assert (=> b!259583 d!62351))

(assert (=> bm!24717 d!62337))

(declare-fun b!259857 () Bool)

(declare-fun c!44124 () Bool)

(declare-fun lt!131060 () (_ BitVec 64))

(assert (=> b!259857 (= c!44124 (= lt!131060 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!168426 () SeekEntryResult!1190)

(declare-fun e!168424 () SeekEntryResult!1190)

(assert (=> b!259857 (= e!168426 e!168424)))

(declare-fun b!259858 () Bool)

(declare-fun lt!131058 () SeekEntryResult!1190)

(assert (=> b!259858 (= e!168424 (MissingZero!1190 (index!6932 lt!131058)))))

(declare-fun b!259859 () Bool)

(declare-fun e!168425 () SeekEntryResult!1190)

(assert (=> b!259859 (= e!168425 e!168426)))

(assert (=> b!259859 (= lt!131060 (select (arr!5956 (_keys!6965 thiss!1504)) (index!6932 lt!131058)))))

(declare-fun c!44125 () Bool)

(assert (=> b!259859 (= c!44125 (= lt!131060 key!932))))

(declare-fun b!259860 () Bool)

(assert (=> b!259860 (= e!168426 (Found!1190 (index!6932 lt!131058)))))

(declare-fun b!259861 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12582 (_ BitVec 32)) SeekEntryResult!1190)

(assert (=> b!259861 (= e!168424 (seekKeyOrZeroReturnVacant!0 (x!25110 lt!131058) (index!6932 lt!131058) (index!6932 lt!131058) key!932 (_keys!6965 thiss!1504) (mask!11106 thiss!1504)))))

(declare-fun d!62353 () Bool)

(declare-fun lt!131059 () SeekEntryResult!1190)

(assert (=> d!62353 (and (or ((_ is Undefined!1190) lt!131059) (not ((_ is Found!1190) lt!131059)) (and (bvsge (index!6931 lt!131059) #b00000000000000000000000000000000) (bvslt (index!6931 lt!131059) (size!6305 (_keys!6965 thiss!1504))))) (or ((_ is Undefined!1190) lt!131059) ((_ is Found!1190) lt!131059) (not ((_ is MissingZero!1190) lt!131059)) (and (bvsge (index!6930 lt!131059) #b00000000000000000000000000000000) (bvslt (index!6930 lt!131059) (size!6305 (_keys!6965 thiss!1504))))) (or ((_ is Undefined!1190) lt!131059) ((_ is Found!1190) lt!131059) ((_ is MissingZero!1190) lt!131059) (not ((_ is MissingVacant!1190) lt!131059)) (and (bvsge (index!6933 lt!131059) #b00000000000000000000000000000000) (bvslt (index!6933 lt!131059) (size!6305 (_keys!6965 thiss!1504))))) (or ((_ is Undefined!1190) lt!131059) (ite ((_ is Found!1190) lt!131059) (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6931 lt!131059)) key!932) (ite ((_ is MissingZero!1190) lt!131059) (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6930 lt!131059)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1190) lt!131059) (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6933 lt!131059)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!62353 (= lt!131059 e!168425)))

(declare-fun c!44123 () Bool)

(assert (=> d!62353 (= c!44123 (and ((_ is Intermediate!1190) lt!131058) (undefined!2002 lt!131058)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12582 (_ BitVec 32)) SeekEntryResult!1190)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!62353 (= lt!131058 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!11106 thiss!1504)) key!932 (_keys!6965 thiss!1504) (mask!11106 thiss!1504)))))

(assert (=> d!62353 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62353 (= (seekEntryOrOpen!0 key!932 (_keys!6965 thiss!1504) (mask!11106 thiss!1504)) lt!131059)))

(declare-fun b!259862 () Bool)

(assert (=> b!259862 (= e!168425 Undefined!1190)))

(assert (= (and d!62353 c!44123) b!259862))

(assert (= (and d!62353 (not c!44123)) b!259859))

(assert (= (and b!259859 c!44125) b!259860))

(assert (= (and b!259859 (not c!44125)) b!259857))

(assert (= (and b!259857 c!44124) b!259858))

(assert (= (and b!259857 (not c!44124)) b!259861))

(declare-fun m!275623 () Bool)

(assert (=> b!259859 m!275623))

(declare-fun m!275625 () Bool)

(assert (=> b!259861 m!275625))

(declare-fun m!275627 () Bool)

(assert (=> d!62353 m!275627))

(declare-fun m!275629 () Bool)

(assert (=> d!62353 m!275629))

(declare-fun m!275631 () Bool)

(assert (=> d!62353 m!275631))

(declare-fun m!275633 () Bool)

(assert (=> d!62353 m!275633))

(declare-fun m!275635 () Bool)

(assert (=> d!62353 m!275635))

(assert (=> d!62353 m!275327))

(assert (=> d!62353 m!275633))

(assert (=> b!259587 d!62353))

(declare-fun d!62355 () Bool)

(declare-fun res!127043 () Bool)

(declare-fun e!168429 () Bool)

(assert (=> d!62355 (=> (not res!127043) (not e!168429))))

(declare-fun simpleValid!279 (LongMapFixedSize!3828) Bool)

(assert (=> d!62355 (= res!127043 (simpleValid!279 thiss!1504))))

(assert (=> d!62355 (= (valid!1487 thiss!1504) e!168429)))

(declare-fun b!259869 () Bool)

(declare-fun res!127044 () Bool)

(assert (=> b!259869 (=> (not res!127044) (not e!168429))))

(assert (=> b!259869 (= res!127044 (= (arrayCountValidKeys!0 (_keys!6965 thiss!1504) #b00000000000000000000000000000000 (size!6305 (_keys!6965 thiss!1504))) (_size!1963 thiss!1504)))))

(declare-fun b!259870 () Bool)

(declare-fun res!127045 () Bool)

(assert (=> b!259870 (=> (not res!127045) (not e!168429))))

(assert (=> b!259870 (= res!127045 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6965 thiss!1504) (mask!11106 thiss!1504)))))

(declare-fun b!259871 () Bool)

(assert (=> b!259871 (= e!168429 (arrayNoDuplicates!0 (_keys!6965 thiss!1504) #b00000000000000000000000000000000 Nil!3840))))

(assert (= (and d!62355 res!127043) b!259869))

(assert (= (and b!259869 res!127044) b!259870))

(assert (= (and b!259870 res!127045) b!259871))

(declare-fun m!275637 () Bool)

(assert (=> d!62355 m!275637))

(assert (=> b!259869 m!275357))

(declare-fun m!275639 () Bool)

(assert (=> b!259870 m!275639))

(declare-fun m!275641 () Bool)

(assert (=> b!259871 m!275641))

(assert (=> start!24878 d!62355))

(declare-fun b!259888 () Bool)

(declare-fun e!168441 () Bool)

(declare-fun call!24772 () Bool)

(assert (=> b!259888 (= e!168441 (not call!24772))))

(declare-fun c!44131 () Bool)

(declare-fun call!24771 () Bool)

(declare-fun bm!24768 () Bool)

(declare-fun lt!131066 () SeekEntryResult!1190)

(assert (=> bm!24768 (= call!24771 (inRange!0 (ite c!44131 (index!6930 lt!131066) (index!6933 lt!131066)) (mask!11106 thiss!1504)))))

(declare-fun b!259889 () Bool)

(declare-fun e!168438 () Bool)

(declare-fun e!168440 () Bool)

(assert (=> b!259889 (= e!168438 e!168440)))

(declare-fun c!44130 () Bool)

(assert (=> b!259889 (= c!44130 ((_ is MissingVacant!1190) lt!131066))))

(declare-fun d!62357 () Bool)

(assert (=> d!62357 e!168438))

(assert (=> d!62357 (= c!44131 ((_ is MissingZero!1190) lt!131066))))

(assert (=> d!62357 (= lt!131066 (seekEntryOrOpen!0 key!932 (_keys!6965 thiss!1504) (mask!11106 thiss!1504)))))

(declare-fun lt!131065 () Unit!8070)

(declare-fun choose!1270 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 64) Int) Unit!8070)

(assert (=> d!62357 (= lt!131065 (choose!1270 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 (defaultEntry!4787 thiss!1504)))))

(assert (=> d!62357 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62357 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!441 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 (defaultEntry!4787 thiss!1504)) lt!131065)))

(declare-fun b!259890 () Bool)

(declare-fun res!127055 () Bool)

(declare-fun e!168439 () Bool)

(assert (=> b!259890 (=> (not res!127055) (not e!168439))))

(assert (=> b!259890 (= res!127055 call!24771)))

(assert (=> b!259890 (= e!168440 e!168439)))

(declare-fun b!259891 () Bool)

(declare-fun res!127054 () Bool)

(assert (=> b!259891 (=> (not res!127054) (not e!168439))))

(assert (=> b!259891 (= res!127054 (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6933 lt!131066)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259891 (and (bvsge (index!6933 lt!131066) #b00000000000000000000000000000000) (bvslt (index!6933 lt!131066) (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun b!259892 () Bool)

(assert (=> b!259892 (= e!168438 e!168441)))

(declare-fun res!127056 () Bool)

(assert (=> b!259892 (= res!127056 call!24771)))

(assert (=> b!259892 (=> (not res!127056) (not e!168441))))

(declare-fun b!259893 () Bool)

(assert (=> b!259893 (and (bvsge (index!6930 lt!131066) #b00000000000000000000000000000000) (bvslt (index!6930 lt!131066) (size!6305 (_keys!6965 thiss!1504))))))

(declare-fun res!127057 () Bool)

(assert (=> b!259893 (= res!127057 (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6930 lt!131066)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!259893 (=> (not res!127057) (not e!168441))))

(declare-fun bm!24769 () Bool)

(assert (=> bm!24769 (= call!24772 (arrayContainsKey!0 (_keys!6965 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!259894 () Bool)

(assert (=> b!259894 (= e!168440 ((_ is Undefined!1190) lt!131066))))

(declare-fun b!259895 () Bool)

(assert (=> b!259895 (= e!168439 (not call!24772))))

(assert (= (and d!62357 c!44131) b!259892))

(assert (= (and d!62357 (not c!44131)) b!259889))

(assert (= (and b!259892 res!127056) b!259893))

(assert (= (and b!259893 res!127057) b!259888))

(assert (= (and b!259889 c!44130) b!259890))

(assert (= (and b!259889 (not c!44130)) b!259894))

(assert (= (and b!259890 res!127055) b!259891))

(assert (= (and b!259891 res!127054) b!259895))

(assert (= (or b!259892 b!259890) bm!24768))

(assert (= (or b!259888 b!259895) bm!24769))

(assert (=> d!62357 m!275363))

(declare-fun m!275643 () Bool)

(assert (=> d!62357 m!275643))

(assert (=> d!62357 m!275327))

(declare-fun m!275645 () Bool)

(assert (=> b!259893 m!275645))

(assert (=> bm!24769 m!275303))

(declare-fun m!275647 () Bool)

(assert (=> bm!24768 m!275647))

(declare-fun m!275649 () Bool)

(assert (=> b!259891 m!275649))

(assert (=> b!259582 d!62357))

(declare-fun d!62359 () Bool)

(declare-fun e!168444 () Bool)

(assert (=> d!62359 e!168444))

(declare-fun res!127063 () Bool)

(assert (=> d!62359 (=> (not res!127063) (not e!168444))))

(declare-fun lt!131072 () SeekEntryResult!1190)

(assert (=> d!62359 (= res!127063 ((_ is Found!1190) lt!131072))))

(assert (=> d!62359 (= lt!131072 (seekEntryOrOpen!0 key!932 (_keys!6965 thiss!1504) (mask!11106 thiss!1504)))))

(declare-fun lt!131071 () Unit!8070)

(declare-fun choose!1271 (array!12582 array!12580 (_ BitVec 32) (_ BitVec 32) V!8467 V!8467 (_ BitVec 64) Int) Unit!8070)

(assert (=> d!62359 (= lt!131071 (choose!1271 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 (defaultEntry!4787 thiss!1504)))))

(assert (=> d!62359 (validMask!0 (mask!11106 thiss!1504))))

(assert (=> d!62359 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!441 (_keys!6965 thiss!1504) (_values!4770 thiss!1504) (mask!11106 thiss!1504) (extraKeys!4524 thiss!1504) (zeroValue!4628 thiss!1504) (minValue!4628 thiss!1504) key!932 (defaultEntry!4787 thiss!1504)) lt!131071)))

(declare-fun b!259900 () Bool)

(declare-fun res!127062 () Bool)

(assert (=> b!259900 (=> (not res!127062) (not e!168444))))

(assert (=> b!259900 (= res!127062 (inRange!0 (index!6931 lt!131072) (mask!11106 thiss!1504)))))

(declare-fun b!259901 () Bool)

(assert (=> b!259901 (= e!168444 (= (select (arr!5956 (_keys!6965 thiss!1504)) (index!6931 lt!131072)) key!932))))

(assert (=> b!259901 (and (bvsge (index!6931 lt!131072) #b00000000000000000000000000000000) (bvslt (index!6931 lt!131072) (size!6305 (_keys!6965 thiss!1504))))))

(assert (= (and d!62359 res!127063) b!259900))

(assert (= (and b!259900 res!127062) b!259901))

(assert (=> d!62359 m!275363))

(declare-fun m!275651 () Bool)

(assert (=> d!62359 m!275651))

(assert (=> d!62359 m!275327))

(declare-fun m!275653 () Bool)

(assert (=> b!259900 m!275653))

(declare-fun m!275655 () Bool)

(assert (=> b!259901 m!275655))

(assert (=> b!259591 d!62359))

(declare-fun mapIsEmpty!11276 () Bool)

(declare-fun mapRes!11276 () Bool)

(assert (=> mapIsEmpty!11276 mapRes!11276))

(declare-fun b!259908 () Bool)

(declare-fun e!168449 () Bool)

(assert (=> b!259908 (= e!168449 tp_is_empty!6615)))

(declare-fun condMapEmpty!11276 () Bool)

(declare-fun mapDefault!11276 () ValueCell!2964)

(assert (=> mapNonEmpty!11270 (= condMapEmpty!11276 (= mapRest!11270 ((as const (Array (_ BitVec 32) ValueCell!2964)) mapDefault!11276)))))

(declare-fun e!168450 () Bool)

(assert (=> mapNonEmpty!11270 (= tp!23579 (and e!168450 mapRes!11276))))

(declare-fun mapNonEmpty!11276 () Bool)

(declare-fun tp!23588 () Bool)

(assert (=> mapNonEmpty!11276 (= mapRes!11276 (and tp!23588 e!168449))))

(declare-fun mapValue!11276 () ValueCell!2964)

(declare-fun mapKey!11276 () (_ BitVec 32))

(declare-fun mapRest!11276 () (Array (_ BitVec 32) ValueCell!2964))

(assert (=> mapNonEmpty!11276 (= mapRest!11270 (store mapRest!11276 mapKey!11276 mapValue!11276))))

(declare-fun b!259909 () Bool)

(assert (=> b!259909 (= e!168450 tp_is_empty!6615)))

(assert (= (and mapNonEmpty!11270 condMapEmpty!11276) mapIsEmpty!11276))

(assert (= (and mapNonEmpty!11270 (not condMapEmpty!11276)) mapNonEmpty!11276))

(assert (= (and mapNonEmpty!11276 ((_ is ValueCellFull!2964) mapValue!11276)) b!259908))

(assert (= (and mapNonEmpty!11270 ((_ is ValueCellFull!2964) mapDefault!11276)) b!259909))

(declare-fun m!275657 () Bool)

(assert (=> mapNonEmpty!11276 m!275657))

(declare-fun b_lambda!8285 () Bool)

(assert (= b_lambda!8283 (or (and b!259584 b_free!6753) b_lambda!8285)))

(declare-fun b_lambda!8287 () Bool)

(assert (= b_lambda!8281 (or (and b!259584 b_free!6753) b_lambda!8287)))

(check-sat (not b!259825) (not b!259794) (not b!259869) (not d!62323) (not b!259843) (not b!259668) (not b!259713) (not d!62317) (not b!259720) (not d!62327) (not b!259900) (not b!259740) (not b!259768) (not bm!24759) (not bm!24754) (not b!259744) (not bm!24748) (not b_lambda!8285) (not b!259763) (not bm!24758) (not d!62321) (not bm!24743) (not b!259871) (not bm!24744) (not b!259791) (not b!259728) b_and!13879 (not d!62357) (not b!259741) tp_is_empty!6615 (not b!259821) (not b!259801) (not b!259796) (not d!62335) (not b!259764) (not b!259726) (not bm!24750) (not b!259861) (not b!259765) (not b!259837) (not d!62339) (not d!62347) (not b!259789) (not b!259870) (not b_lambda!8287) (not b!259793) (not bm!24769) (not bm!24753) (not bm!24768) (not bm!24745) (not mapNonEmpty!11276) (not b!259723) (not d!62333) (not b_next!6753) (not bm!24755) (not b!259810) (not d!62353) (not b!259807) (not b!259725) (not bm!24763) (not b!259838) (not d!62359) (not d!62315) (not d!62331) (not b!259777) (not b!259733) (not b!259780) (not b!259721) (not bm!24740) (not b!259670) (not b!259781) (not d!62355) (not b!259840) (not bm!24762) (not d!62319) (not b!259749) (not b!259778) (not b!259788))
(check-sat b_and!13879 (not b_next!6753))
