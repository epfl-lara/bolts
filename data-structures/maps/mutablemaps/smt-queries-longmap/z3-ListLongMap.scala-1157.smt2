; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!24304 () Bool)

(assert start!24304)

(declare-fun b!254580 () Bool)

(declare-fun b_free!6693 () Bool)

(declare-fun b_next!6693 () Bool)

(assert (=> b!254580 (= b_free!6693 (not b_next!6693))))

(declare-fun tp!23367 () Bool)

(declare-fun b_and!13753 () Bool)

(assert (=> b!254580 (= tp!23367 b_and!13753)))

(declare-fun e!165031 () Bool)

(declare-datatypes ((V!8387 0))(
  ( (V!8388 (val!3322 Int)) )
))
(declare-datatypes ((ValueCell!2934 0))(
  ( (ValueCellFull!2934 (v!5392 V!8387)) (EmptyCell!2934) )
))
(declare-datatypes ((array!12440 0))(
  ( (array!12441 (arr!5895 (Array (_ BitVec 32) ValueCell!2934)) (size!6242 (_ BitVec 32))) )
))
(declare-datatypes ((array!12442 0))(
  ( (array!12443 (arr!5896 (Array (_ BitVec 32) (_ BitVec 64))) (size!6243 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3768 0))(
  ( (LongMapFixedSize!3769 (defaultEntry!4697 Int) (mask!10945 (_ BitVec 32)) (extraKeys!4434 (_ BitVec 32)) (zeroValue!4538 V!8387) (minValue!4538 V!8387) (_size!1933 (_ BitVec 32)) (_keys!6851 array!12442) (_values!4680 array!12440) (_vacant!1933 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3768)

(declare-fun e!165034 () Bool)

(declare-fun tp_is_empty!6555 () Bool)

(declare-fun array_inv!3889 (array!12442) Bool)

(declare-fun array_inv!3890 (array!12440) Bool)

(assert (=> b!254580 (= e!165031 (and tp!23367 tp_is_empty!6555 (array_inv!3889 (_keys!6851 thiss!1504)) (array_inv!3890 (_values!4680 thiss!1504)) e!165034))))

(declare-fun b!254581 () Bool)

(declare-fun e!165029 () Bool)

(assert (=> b!254581 (= e!165029 tp_is_empty!6555)))

(declare-fun call!24022 () Bool)

(declare-fun c!42931 () Bool)

(declare-datatypes ((SeekEntryResult!1162 0))(
  ( (MissingZero!1162 (index!6818 (_ BitVec 32))) (Found!1162 (index!6819 (_ BitVec 32))) (Intermediate!1162 (undefined!1974 Bool) (index!6820 (_ BitVec 32)) (x!24886 (_ BitVec 32))) (Undefined!1162) (MissingVacant!1162 (index!6821 (_ BitVec 32))) )
))
(declare-fun lt!127623 () SeekEntryResult!1162)

(declare-fun bm!24019 () Bool)

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> bm!24019 (= call!24022 (inRange!0 (ite c!42931 (index!6818 lt!127623) (index!6821 lt!127623)) (mask!10945 thiss!1504)))))

(declare-fun mapIsEmpty!11148 () Bool)

(declare-fun mapRes!11148 () Bool)

(assert (=> mapIsEmpty!11148 mapRes!11148))

(declare-fun b!254583 () Bool)

(declare-fun c!42928 () Bool)

(get-info :version)

(assert (=> b!254583 (= c!42928 ((_ is MissingVacant!1162) lt!127623))))

(declare-fun e!165035 () Bool)

(declare-fun e!165040 () Bool)

(assert (=> b!254583 (= e!165035 e!165040)))

(declare-fun b!254584 () Bool)

(declare-datatypes ((Unit!7893 0))(
  ( (Unit!7894) )
))
(declare-fun e!165037 () Unit!7893)

(declare-fun Unit!7895 () Unit!7893)

(assert (=> b!254584 (= e!165037 Unit!7895)))

(declare-fun lt!127622 () Unit!7893)

(declare-fun key!932 () (_ BitVec 64))

(declare-fun lemmaArrayContainsKeyThenInListMap!225 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 64) (_ BitVec 32) Int) Unit!7893)

(assert (=> b!254584 (= lt!127622 (lemmaArrayContainsKeyThenInListMap!225 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(assert (=> b!254584 false))

(declare-fun b!254585 () Bool)

(declare-fun e!165036 () Bool)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!254585 (= e!165036 (not (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6243 (_keys!6851 thiss!1504))))))))

(declare-datatypes ((tuple2!4888 0))(
  ( (tuple2!4889 (_1!2454 (_ BitVec 64)) (_2!2454 V!8387)) )
))
(declare-datatypes ((List!3793 0))(
  ( (Nil!3790) (Cons!3789 (h!4451 tuple2!4888) (t!8848 List!3793)) )
))
(declare-datatypes ((ListLongMap!3815 0))(
  ( (ListLongMap!3816 (toList!1923 List!3793)) )
))
(declare-fun lt!127616 () ListLongMap!3815)

(declare-fun v!346 () V!8387)

(declare-fun lt!127617 () array!12442)

(declare-fun +!669 (ListLongMap!3815 tuple2!4888) ListLongMap!3815)

(declare-fun getCurrentListMap!1446 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 32) Int) ListLongMap!3815)

(assert (=> b!254585 (= (+!669 lt!127616 (tuple2!4889 key!932 v!346)) (getCurrentListMap!1446 lt!127617 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127615 () Unit!7893)

(declare-fun lemmaAddValidKeyToArrayThenAddPairToListMap!84 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 32) (_ BitVec 64) V!8387 Int) Unit!7893)

(assert (=> b!254585 (= lt!127615 (lemmaAddValidKeyToArrayThenAddPairToListMap!84 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) index!297 key!932 v!346 (defaultEntry!4697 thiss!1504)))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!12442 (_ BitVec 32)) Bool)

(assert (=> b!254585 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127617 (mask!10945 thiss!1504))))

(declare-fun lt!127618 () Unit!7893)

(declare-fun lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 ((_ BitVec 64) array!12442 (_ BitVec 32) (_ BitVec 32)) Unit!7893)

(assert (=> b!254585 (= lt!127618 (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6851 thiss!1504) index!297 (mask!10945 thiss!1504)))))

(declare-fun arrayCountValidKeys!0 (array!12442 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!254585 (= (arrayCountValidKeys!0 lt!127617 #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) (bvadd #b00000000000000000000000000000001 (arrayCountValidKeys!0 (_keys!6851 thiss!1504) #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504)))))))

(declare-fun lt!127626 () Unit!7893)

(declare-fun lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (array!12442 (_ BitVec 32) (_ BitVec 64)) Unit!7893)

(assert (=> b!254585 (= lt!127626 (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6851 thiss!1504) index!297 key!932))))

(declare-datatypes ((List!3794 0))(
  ( (Nil!3791) (Cons!3790 (h!4452 (_ BitVec 64)) (t!8849 List!3794)) )
))
(declare-fun arrayNoDuplicates!0 (array!12442 (_ BitVec 32) List!3794) Bool)

(assert (=> b!254585 (arrayNoDuplicates!0 lt!127617 #b00000000000000000000000000000000 Nil!3791)))

(assert (=> b!254585 (= lt!127617 (array!12443 (store (arr!5896 (_keys!6851 thiss!1504)) index!297 key!932) (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun lt!127620 () Unit!7893)

(declare-fun lemmaPutNewValidKeyPreservesNoDuplicate!0 (array!12442 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3794) Unit!7893)

(assert (=> b!254585 (= lt!127620 (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6851 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3791))))

(declare-fun lt!127624 () Unit!7893)

(assert (=> b!254585 (= lt!127624 e!165037)))

(declare-fun c!42929 () Bool)

(declare-fun arrayContainsKey!0 (array!12442 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!254585 (= c!42929 (arrayContainsKey!0 (_keys!6851 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254586 () Bool)

(assert (=> b!254586 (= e!165040 ((_ is Undefined!1162) lt!127623))))

(declare-fun bm!24020 () Bool)

(declare-fun call!24023 () Bool)

(assert (=> bm!24020 (= call!24023 (arrayContainsKey!0 (_keys!6851 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!254587 () Bool)

(declare-fun e!165033 () Unit!7893)

(declare-fun lt!127621 () Unit!7893)

(assert (=> b!254587 (= e!165033 lt!127621)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!420 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 64) Int) Unit!7893)

(assert (=> b!254587 (= lt!127621 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!420 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 (defaultEntry!4697 thiss!1504)))))

(assert (=> b!254587 (= c!42931 ((_ is MissingZero!1162) lt!127623))))

(assert (=> b!254587 e!165035))

(declare-fun b!254588 () Bool)

(declare-fun e!165038 () Bool)

(declare-fun e!165032 () Bool)

(assert (=> b!254588 (= e!165038 e!165032)))

(declare-fun res!124638 () Bool)

(assert (=> b!254588 (=> (not res!124638) (not e!165032))))

(assert (=> b!254588 (= res!124638 (or (= lt!127623 (MissingZero!1162 index!297)) (= lt!127623 (MissingVacant!1162 index!297))))))

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!12442 (_ BitVec 32)) SeekEntryResult!1162)

(assert (=> b!254588 (= lt!127623 (seekEntryOrOpen!0 key!932 (_keys!6851 thiss!1504) (mask!10945 thiss!1504)))))

(declare-fun b!254589 () Bool)

(declare-fun Unit!7896 () Unit!7893)

(assert (=> b!254589 (= e!165037 Unit!7896)))

(declare-fun b!254590 () Bool)

(assert (=> b!254590 (= e!165034 (and e!165029 mapRes!11148))))

(declare-fun condMapEmpty!11148 () Bool)

(declare-fun mapDefault!11148 () ValueCell!2934)

(assert (=> b!254590 (= condMapEmpty!11148 (= (arr!5895 (_values!4680 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2934)) mapDefault!11148)))))

(declare-fun res!124636 () Bool)

(assert (=> start!24304 (=> (not res!124636) (not e!165038))))

(declare-fun valid!1465 (LongMapFixedSize!3768) Bool)

(assert (=> start!24304 (= res!124636 (valid!1465 thiss!1504))))

(assert (=> start!24304 e!165038))

(assert (=> start!24304 e!165031))

(assert (=> start!24304 true))

(assert (=> start!24304 tp_is_empty!6555))

(declare-fun b!254582 () Bool)

(declare-fun res!124635 () Bool)

(assert (=> b!254582 (=> (not res!124635) (not e!165038))))

(assert (=> b!254582 (= res!124635 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!254591 () Bool)

(declare-fun e!165030 () Bool)

(assert (=> b!254591 (= e!165040 e!165030)))

(declare-fun res!124634 () Bool)

(assert (=> b!254591 (= res!124634 call!24022)))

(assert (=> b!254591 (=> (not res!124634) (not e!165030))))

(declare-fun b!254592 () Bool)

(declare-fun e!165042 () Bool)

(assert (=> b!254592 (= e!165042 tp_is_empty!6555)))

(declare-fun b!254593 () Bool)

(declare-fun res!124637 () Bool)

(declare-fun e!165041 () Bool)

(assert (=> b!254593 (=> (not res!124637) (not e!165041))))

(assert (=> b!254593 (= res!124637 (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6818 lt!127623)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254594 () Bool)

(assert (=> b!254594 (= e!165032 e!165036)))

(declare-fun res!124641 () Bool)

(assert (=> b!254594 (=> (not res!124641) (not e!165036))))

(assert (=> b!254594 (= res!124641 (inRange!0 index!297 (mask!10945 thiss!1504)))))

(declare-fun lt!127625 () Unit!7893)

(assert (=> b!254594 (= lt!127625 e!165033)))

(declare-fun c!42930 () Bool)

(declare-fun contains!1847 (ListLongMap!3815 (_ BitVec 64)) Bool)

(assert (=> b!254594 (= c!42930 (contains!1847 lt!127616 key!932))))

(assert (=> b!254594 (= lt!127616 (getCurrentListMap!1446 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun b!254595 () Bool)

(assert (=> b!254595 (= e!165030 (not call!24023))))

(declare-fun b!254596 () Bool)

(declare-fun Unit!7897 () Unit!7893)

(assert (=> b!254596 (= e!165033 Unit!7897)))

(declare-fun lt!127619 () Unit!7893)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!420 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 64) Int) Unit!7893)

(assert (=> b!254596 (= lt!127619 (lemmaInListMapThenSeekEntryOrOpenFindsIt!420 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 (defaultEntry!4697 thiss!1504)))))

(assert (=> b!254596 false))

(declare-fun b!254597 () Bool)

(declare-fun res!124639 () Bool)

(assert (=> b!254597 (= res!124639 (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6821 lt!127623)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254597 (=> (not res!124639) (not e!165030))))

(declare-fun b!254598 () Bool)

(assert (=> b!254598 (= e!165041 (not call!24023))))

(declare-fun b!254599 () Bool)

(declare-fun res!124640 () Bool)

(assert (=> b!254599 (=> (not res!124640) (not e!165041))))

(assert (=> b!254599 (= res!124640 call!24022)))

(assert (=> b!254599 (= e!165035 e!165041)))

(declare-fun mapNonEmpty!11148 () Bool)

(declare-fun tp!23366 () Bool)

(assert (=> mapNonEmpty!11148 (= mapRes!11148 (and tp!23366 e!165042))))

(declare-fun mapKey!11148 () (_ BitVec 32))

(declare-fun mapValue!11148 () ValueCell!2934)

(declare-fun mapRest!11148 () (Array (_ BitVec 32) ValueCell!2934))

(assert (=> mapNonEmpty!11148 (= (arr!5895 (_values!4680 thiss!1504)) (store mapRest!11148 mapKey!11148 mapValue!11148))))

(assert (= (and start!24304 res!124636) b!254582))

(assert (= (and b!254582 res!124635) b!254588))

(assert (= (and b!254588 res!124638) b!254594))

(assert (= (and b!254594 c!42930) b!254596))

(assert (= (and b!254594 (not c!42930)) b!254587))

(assert (= (and b!254587 c!42931) b!254599))

(assert (= (and b!254587 (not c!42931)) b!254583))

(assert (= (and b!254599 res!124640) b!254593))

(assert (= (and b!254593 res!124637) b!254598))

(assert (= (and b!254583 c!42928) b!254591))

(assert (= (and b!254583 (not c!42928)) b!254586))

(assert (= (and b!254591 res!124634) b!254597))

(assert (= (and b!254597 res!124639) b!254595))

(assert (= (or b!254599 b!254591) bm!24019))

(assert (= (or b!254598 b!254595) bm!24020))

(assert (= (and b!254594 res!124641) b!254585))

(assert (= (and b!254585 c!42929) b!254584))

(assert (= (and b!254585 (not c!42929)) b!254589))

(assert (= (and b!254590 condMapEmpty!11148) mapIsEmpty!11148))

(assert (= (and b!254590 (not condMapEmpty!11148)) mapNonEmpty!11148))

(assert (= (and mapNonEmpty!11148 ((_ is ValueCellFull!2934) mapValue!11148)) b!254592))

(assert (= (and b!254590 ((_ is ValueCellFull!2934) mapDefault!11148)) b!254581))

(assert (= b!254580 b!254590))

(assert (= start!24304 b!254580))

(declare-fun m!270137 () Bool)

(assert (=> start!24304 m!270137))

(declare-fun m!270139 () Bool)

(assert (=> b!254587 m!270139))

(declare-fun m!270141 () Bool)

(assert (=> b!254580 m!270141))

(declare-fun m!270143 () Bool)

(assert (=> b!254580 m!270143))

(declare-fun m!270145 () Bool)

(assert (=> mapNonEmpty!11148 m!270145))

(declare-fun m!270147 () Bool)

(assert (=> b!254597 m!270147))

(declare-fun m!270149 () Bool)

(assert (=> bm!24020 m!270149))

(declare-fun m!270151 () Bool)

(assert (=> b!254584 m!270151))

(declare-fun m!270153 () Bool)

(assert (=> b!254594 m!270153))

(declare-fun m!270155 () Bool)

(assert (=> b!254594 m!270155))

(declare-fun m!270157 () Bool)

(assert (=> b!254594 m!270157))

(declare-fun m!270159 () Bool)

(assert (=> b!254596 m!270159))

(declare-fun m!270161 () Bool)

(assert (=> b!254593 m!270161))

(assert (=> b!254585 m!270149))

(declare-fun m!270163 () Bool)

(assert (=> b!254585 m!270163))

(declare-fun m!270165 () Bool)

(assert (=> b!254585 m!270165))

(declare-fun m!270167 () Bool)

(assert (=> b!254585 m!270167))

(declare-fun m!270169 () Bool)

(assert (=> b!254585 m!270169))

(declare-fun m!270171 () Bool)

(assert (=> b!254585 m!270171))

(declare-fun m!270173 () Bool)

(assert (=> b!254585 m!270173))

(declare-fun m!270175 () Bool)

(assert (=> b!254585 m!270175))

(declare-fun m!270177 () Bool)

(assert (=> b!254585 m!270177))

(declare-fun m!270179 () Bool)

(assert (=> b!254585 m!270179))

(declare-fun m!270181 () Bool)

(assert (=> b!254585 m!270181))

(declare-fun m!270183 () Bool)

(assert (=> b!254585 m!270183))

(declare-fun m!270185 () Bool)

(assert (=> b!254585 m!270185))

(declare-fun m!270187 () Bool)

(assert (=> bm!24019 m!270187))

(declare-fun m!270189 () Bool)

(assert (=> b!254588 m!270189))

(check-sat (not b_next!6693) (not start!24304) (not b!254584) (not b!254594) (not b!254587) (not b!254596) (not bm!24020) tp_is_empty!6555 (not mapNonEmpty!11148) (not b!254580) (not bm!24019) (not b!254585) (not b!254588) b_and!13753)
(check-sat b_and!13753 (not b_next!6693))
(get-model)

(declare-fun d!61401 () Bool)

(declare-fun res!124670 () Bool)

(declare-fun e!165089 () Bool)

(assert (=> d!61401 (=> res!124670 e!165089)))

(assert (=> d!61401 (= res!124670 (= (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000) key!932))))

(assert (=> d!61401 (= (arrayContainsKey!0 (_keys!6851 thiss!1504) key!932 #b00000000000000000000000000000000) e!165089)))

(declare-fun b!254664 () Bool)

(declare-fun e!165090 () Bool)

(assert (=> b!254664 (= e!165089 e!165090)))

(declare-fun res!124671 () Bool)

(assert (=> b!254664 (=> (not res!124671) (not e!165090))))

(assert (=> b!254664 (= res!124671 (bvslt (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun b!254665 () Bool)

(assert (=> b!254665 (= e!165090 (arrayContainsKey!0 (_keys!6851 thiss!1504) key!932 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001)))))

(assert (= (and d!61401 (not res!124670)) b!254664))

(assert (= (and b!254664 res!124671) b!254665))

(declare-fun m!270245 () Bool)

(assert (=> d!61401 m!270245))

(declare-fun m!270247 () Bool)

(assert (=> b!254665 m!270247))

(assert (=> bm!24020 d!61401))

(declare-fun b!254682 () Bool)

(declare-fun res!124683 () Bool)

(declare-fun e!165102 () Bool)

(assert (=> b!254682 (=> (not res!124683) (not e!165102))))

(declare-fun call!24034 () Bool)

(assert (=> b!254682 (= res!124683 call!24034)))

(declare-fun e!165099 () Bool)

(assert (=> b!254682 (= e!165099 e!165102)))

(declare-fun d!61403 () Bool)

(declare-fun e!165100 () Bool)

(assert (=> d!61403 e!165100))

(declare-fun c!42948 () Bool)

(declare-fun lt!127668 () SeekEntryResult!1162)

(assert (=> d!61403 (= c!42948 ((_ is MissingZero!1162) lt!127668))))

(assert (=> d!61403 (= lt!127668 (seekEntryOrOpen!0 key!932 (_keys!6851 thiss!1504) (mask!10945 thiss!1504)))))

(declare-fun lt!127667 () Unit!7893)

(declare-fun choose!1220 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 64) Int) Unit!7893)

(assert (=> d!61403 (= lt!127667 (choose!1220 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 (defaultEntry!4697 thiss!1504)))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> d!61403 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61403 (= (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!420 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 (defaultEntry!4697 thiss!1504)) lt!127667)))

(declare-fun b!254683 () Bool)

(declare-fun e!165101 () Bool)

(declare-fun call!24035 () Bool)

(assert (=> b!254683 (= e!165101 (not call!24035))))

(declare-fun b!254684 () Bool)

(assert (=> b!254684 (= e!165099 ((_ is Undefined!1162) lt!127668))))

(declare-fun b!254685 () Bool)

(assert (=> b!254685 (= e!165100 e!165101)))

(declare-fun res!124680 () Bool)

(assert (=> b!254685 (= res!124680 call!24034)))

(assert (=> b!254685 (=> (not res!124680) (not e!165101))))

(declare-fun b!254686 () Bool)

(assert (=> b!254686 (and (bvsge (index!6818 lt!127668) #b00000000000000000000000000000000) (bvslt (index!6818 lt!127668) (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun res!124681 () Bool)

(assert (=> b!254686 (= res!124681 (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6818 lt!127668)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254686 (=> (not res!124681) (not e!165101))))

(declare-fun b!254687 () Bool)

(declare-fun res!124682 () Bool)

(assert (=> b!254687 (=> (not res!124682) (not e!165102))))

(assert (=> b!254687 (= res!124682 (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6821 lt!127668)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!254687 (and (bvsge (index!6821 lt!127668) #b00000000000000000000000000000000) (bvslt (index!6821 lt!127668) (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun b!254688 () Bool)

(assert (=> b!254688 (= e!165102 (not call!24035))))

(declare-fun bm!24031 () Bool)

(assert (=> bm!24031 (= call!24035 (arrayContainsKey!0 (_keys!6851 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun bm!24032 () Bool)

(assert (=> bm!24032 (= call!24034 (inRange!0 (ite c!42948 (index!6818 lt!127668) (index!6821 lt!127668)) (mask!10945 thiss!1504)))))

(declare-fun b!254689 () Bool)

(assert (=> b!254689 (= e!165100 e!165099)))

(declare-fun c!42949 () Bool)

(assert (=> b!254689 (= c!42949 ((_ is MissingVacant!1162) lt!127668))))

(assert (= (and d!61403 c!42948) b!254685))

(assert (= (and d!61403 (not c!42948)) b!254689))

(assert (= (and b!254685 res!124680) b!254686))

(assert (= (and b!254686 res!124681) b!254683))

(assert (= (and b!254689 c!42949) b!254682))

(assert (= (and b!254689 (not c!42949)) b!254684))

(assert (= (and b!254682 res!124683) b!254687))

(assert (= (and b!254687 res!124682) b!254688))

(assert (= (or b!254685 b!254682) bm!24032))

(assert (= (or b!254683 b!254688) bm!24031))

(declare-fun m!270249 () Bool)

(assert (=> b!254687 m!270249))

(assert (=> d!61403 m!270189))

(declare-fun m!270251 () Bool)

(assert (=> d!61403 m!270251))

(declare-fun m!270253 () Bool)

(assert (=> d!61403 m!270253))

(declare-fun m!270255 () Bool)

(assert (=> b!254686 m!270255))

(assert (=> bm!24031 m!270149))

(declare-fun m!270257 () Bool)

(assert (=> bm!24032 m!270257))

(assert (=> b!254587 d!61403))

(declare-fun d!61405 () Bool)

(assert (=> d!61405 (= (array_inv!3889 (_keys!6851 thiss!1504)) (bvsge (size!6243 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!254580 d!61405))

(declare-fun d!61407 () Bool)

(assert (=> d!61407 (= (array_inv!3890 (_values!4680 thiss!1504)) (bvsge (size!6242 (_values!4680 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!254580 d!61407))

(declare-fun b!254702 () Bool)

(declare-fun e!165110 () SeekEntryResult!1162)

(assert (=> b!254702 (= e!165110 Undefined!1162)))

(declare-fun b!254703 () Bool)

(declare-fun e!165109 () SeekEntryResult!1162)

(declare-fun lt!127677 () SeekEntryResult!1162)

(assert (=> b!254703 (= e!165109 (MissingZero!1162 (index!6820 lt!127677)))))

(declare-fun b!254704 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12442 (_ BitVec 32)) SeekEntryResult!1162)

(assert (=> b!254704 (= e!165109 (seekKeyOrZeroReturnVacant!0 (x!24886 lt!127677) (index!6820 lt!127677) (index!6820 lt!127677) key!932 (_keys!6851 thiss!1504) (mask!10945 thiss!1504)))))

(declare-fun b!254706 () Bool)

(declare-fun c!42956 () Bool)

(declare-fun lt!127676 () (_ BitVec 64))

(assert (=> b!254706 (= c!42956 (= lt!127676 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun e!165111 () SeekEntryResult!1162)

(assert (=> b!254706 (= e!165111 e!165109)))

(declare-fun b!254707 () Bool)

(assert (=> b!254707 (= e!165110 e!165111)))

(assert (=> b!254707 (= lt!127676 (select (arr!5896 (_keys!6851 thiss!1504)) (index!6820 lt!127677)))))

(declare-fun c!42958 () Bool)

(assert (=> b!254707 (= c!42958 (= lt!127676 key!932))))

(declare-fun d!61409 () Bool)

(declare-fun lt!127675 () SeekEntryResult!1162)

(assert (=> d!61409 (and (or ((_ is Undefined!1162) lt!127675) (not ((_ is Found!1162) lt!127675)) (and (bvsge (index!6819 lt!127675) #b00000000000000000000000000000000) (bvslt (index!6819 lt!127675) (size!6243 (_keys!6851 thiss!1504))))) (or ((_ is Undefined!1162) lt!127675) ((_ is Found!1162) lt!127675) (not ((_ is MissingZero!1162) lt!127675)) (and (bvsge (index!6818 lt!127675) #b00000000000000000000000000000000) (bvslt (index!6818 lt!127675) (size!6243 (_keys!6851 thiss!1504))))) (or ((_ is Undefined!1162) lt!127675) ((_ is Found!1162) lt!127675) ((_ is MissingZero!1162) lt!127675) (not ((_ is MissingVacant!1162) lt!127675)) (and (bvsge (index!6821 lt!127675) #b00000000000000000000000000000000) (bvslt (index!6821 lt!127675) (size!6243 (_keys!6851 thiss!1504))))) (or ((_ is Undefined!1162) lt!127675) (ite ((_ is Found!1162) lt!127675) (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6819 lt!127675)) key!932) (ite ((_ is MissingZero!1162) lt!127675) (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6818 lt!127675)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!1162) lt!127675) (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6821 lt!127675)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!61409 (= lt!127675 e!165110)))

(declare-fun c!42957 () Bool)

(assert (=> d!61409 (= c!42957 (and ((_ is Intermediate!1162) lt!127677) (undefined!1974 lt!127677)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!12442 (_ BitVec 32)) SeekEntryResult!1162)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!61409 (= lt!127677 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!932 (mask!10945 thiss!1504)) key!932 (_keys!6851 thiss!1504) (mask!10945 thiss!1504)))))

(assert (=> d!61409 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61409 (= (seekEntryOrOpen!0 key!932 (_keys!6851 thiss!1504) (mask!10945 thiss!1504)) lt!127675)))

(declare-fun b!254705 () Bool)

(assert (=> b!254705 (= e!165111 (Found!1162 (index!6820 lt!127677)))))

(assert (= (and d!61409 c!42957) b!254702))

(assert (= (and d!61409 (not c!42957)) b!254707))

(assert (= (and b!254707 c!42958) b!254705))

(assert (= (and b!254707 (not c!42958)) b!254706))

(assert (= (and b!254706 c!42956) b!254703))

(assert (= (and b!254706 (not c!42956)) b!254704))

(declare-fun m!270259 () Bool)

(assert (=> b!254704 m!270259))

(declare-fun m!270261 () Bool)

(assert (=> b!254707 m!270261))

(declare-fun m!270263 () Bool)

(assert (=> d!61409 m!270263))

(declare-fun m!270265 () Bool)

(assert (=> d!61409 m!270265))

(assert (=> d!61409 m!270263))

(declare-fun m!270267 () Bool)

(assert (=> d!61409 m!270267))

(declare-fun m!270269 () Bool)

(assert (=> d!61409 m!270269))

(assert (=> d!61409 m!270253))

(declare-fun m!270271 () Bool)

(assert (=> d!61409 m!270271))

(assert (=> b!254588 d!61409))

(declare-fun d!61411 () Bool)

(assert (=> d!61411 (contains!1847 (getCurrentListMap!1446 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)) key!932)))

(declare-fun lt!127680 () Unit!7893)

(declare-fun choose!1221 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 64) (_ BitVec 32) Int) Unit!7893)

(assert (=> d!61411 (= lt!127680 (choose!1221 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(assert (=> d!61411 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61411 (= (lemmaArrayContainsKeyThenInListMap!225 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)) lt!127680)))

(declare-fun bs!9056 () Bool)

(assert (= bs!9056 d!61411))

(assert (=> bs!9056 m!270157))

(assert (=> bs!9056 m!270157))

(declare-fun m!270273 () Bool)

(assert (=> bs!9056 m!270273))

(declare-fun m!270275 () Bool)

(assert (=> bs!9056 m!270275))

(assert (=> bs!9056 m!270253))

(assert (=> b!254584 d!61411))

(declare-fun d!61413 () Bool)

(assert (=> d!61413 (= (inRange!0 index!297 (mask!10945 thiss!1504)) (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (bvadd (mask!10945 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> b!254594 d!61413))

(declare-fun d!61415 () Bool)

(declare-fun e!165117 () Bool)

(assert (=> d!61415 e!165117))

(declare-fun res!124686 () Bool)

(assert (=> d!61415 (=> res!124686 e!165117)))

(declare-fun lt!127692 () Bool)

(assert (=> d!61415 (= res!124686 (not lt!127692))))

(declare-fun lt!127689 () Bool)

(assert (=> d!61415 (= lt!127692 lt!127689)))

(declare-fun lt!127691 () Unit!7893)

(declare-fun e!165116 () Unit!7893)

(assert (=> d!61415 (= lt!127691 e!165116)))

(declare-fun c!42961 () Bool)

(assert (=> d!61415 (= c!42961 lt!127689)))

(declare-fun containsKey!296 (List!3793 (_ BitVec 64)) Bool)

(assert (=> d!61415 (= lt!127689 (containsKey!296 (toList!1923 lt!127616) key!932))))

(assert (=> d!61415 (= (contains!1847 lt!127616 key!932) lt!127692)))

(declare-fun b!254714 () Bool)

(declare-fun lt!127690 () Unit!7893)

(assert (=> b!254714 (= e!165116 lt!127690)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!245 (List!3793 (_ BitVec 64)) Unit!7893)

(assert (=> b!254714 (= lt!127690 (lemmaContainsKeyImpliesGetValueByKeyDefined!245 (toList!1923 lt!127616) key!932))))

(declare-datatypes ((Option!310 0))(
  ( (Some!309 (v!5396 V!8387)) (None!308) )
))
(declare-fun isDefined!246 (Option!310) Bool)

(declare-fun getValueByKey!304 (List!3793 (_ BitVec 64)) Option!310)

(assert (=> b!254714 (isDefined!246 (getValueByKey!304 (toList!1923 lt!127616) key!932))))

(declare-fun b!254715 () Bool)

(declare-fun Unit!7903 () Unit!7893)

(assert (=> b!254715 (= e!165116 Unit!7903)))

(declare-fun b!254716 () Bool)

(assert (=> b!254716 (= e!165117 (isDefined!246 (getValueByKey!304 (toList!1923 lt!127616) key!932)))))

(assert (= (and d!61415 c!42961) b!254714))

(assert (= (and d!61415 (not c!42961)) b!254715))

(assert (= (and d!61415 (not res!124686)) b!254716))

(declare-fun m!270277 () Bool)

(assert (=> d!61415 m!270277))

(declare-fun m!270279 () Bool)

(assert (=> b!254714 m!270279))

(declare-fun m!270281 () Bool)

(assert (=> b!254714 m!270281))

(assert (=> b!254714 m!270281))

(declare-fun m!270283 () Bool)

(assert (=> b!254714 m!270283))

(assert (=> b!254716 m!270281))

(assert (=> b!254716 m!270281))

(assert (=> b!254716 m!270283))

(assert (=> b!254594 d!61415))

(declare-fun b!254759 () Bool)

(declare-fun res!124705 () Bool)

(declare-fun e!165145 () Bool)

(assert (=> b!254759 (=> (not res!124705) (not e!165145))))

(declare-fun e!165156 () Bool)

(assert (=> b!254759 (= res!124705 e!165156)))

(declare-fun res!124710 () Bool)

(assert (=> b!254759 (=> res!124710 e!165156)))

(declare-fun e!165153 () Bool)

(assert (=> b!254759 (= res!124710 (not e!165153))))

(declare-fun res!124712 () Bool)

(assert (=> b!254759 (=> (not res!124712) (not e!165153))))

(assert (=> b!254759 (= res!124712 (bvslt #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun b!254760 () Bool)

(declare-fun e!165154 () ListLongMap!3815)

(declare-fun call!24055 () ListLongMap!3815)

(assert (=> b!254760 (= e!165154 (+!669 call!24055 (tuple2!4889 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4538 thiss!1504))))))

(declare-fun b!254761 () Bool)

(declare-fun e!165146 () Unit!7893)

(declare-fun Unit!7904 () Unit!7893)

(assert (=> b!254761 (= e!165146 Unit!7904)))

(declare-fun b!254762 () Bool)

(declare-fun e!165155 () Bool)

(declare-fun lt!127752 () ListLongMap!3815)

(declare-fun apply!247 (ListLongMap!3815 (_ BitVec 64)) V!8387)

(assert (=> b!254762 (= e!165155 (= (apply!247 lt!127752 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4538 thiss!1504)))))

(declare-fun bm!24047 () Bool)

(declare-fun call!24050 () ListLongMap!3815)

(declare-fun call!24051 () ListLongMap!3815)

(assert (=> bm!24047 (= call!24050 call!24051)))

(declare-fun b!254763 () Bool)

(declare-fun e!165144 () ListLongMap!3815)

(assert (=> b!254763 (= e!165154 e!165144)))

(declare-fun c!42974 () Bool)

(assert (=> b!254763 (= c!42974 (and (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!24048 () Bool)

(declare-fun getCurrentListMapNoExtraKeys!566 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 32) Int) ListLongMap!3815)

(assert (=> bm!24048 (= call!24051 (getCurrentListMapNoExtraKeys!566 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun bm!24049 () Bool)

(declare-fun call!24053 () Bool)

(assert (=> bm!24049 (= call!24053 (contains!1847 lt!127752 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24050 () Bool)

(declare-fun call!24052 () ListLongMap!3815)

(assert (=> bm!24050 (= call!24052 call!24055)))

(declare-fun bm!24051 () Bool)

(declare-fun call!24056 () Bool)

(assert (=> bm!24051 (= call!24056 (contains!1847 lt!127752 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254765 () Bool)

(declare-fun e!165148 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!254765 (= e!165148 (validKeyInArray!0 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun bm!24052 () Bool)

(declare-fun call!24054 () ListLongMap!3815)

(assert (=> bm!24052 (= call!24054 call!24050)))

(declare-fun b!254766 () Bool)

(declare-fun e!165150 () Bool)

(assert (=> b!254766 (= e!165156 e!165150)))

(declare-fun res!124707 () Bool)

(assert (=> b!254766 (=> (not res!124707) (not e!165150))))

(assert (=> b!254766 (= res!124707 (contains!1847 lt!127752 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> b!254766 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun b!254767 () Bool)

(declare-fun lt!127743 () Unit!7893)

(assert (=> b!254767 (= e!165146 lt!127743)))

(declare-fun lt!127747 () ListLongMap!3815)

(assert (=> b!254767 (= lt!127747 (getCurrentListMapNoExtraKeys!566 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127746 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127746 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127738 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127738 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!127744 () Unit!7893)

(declare-fun addStillContains!223 (ListLongMap!3815 (_ BitVec 64) V!8387 (_ BitVec 64)) Unit!7893)

(assert (=> b!254767 (= lt!127744 (addStillContains!223 lt!127747 lt!127746 (zeroValue!4538 thiss!1504) lt!127738))))

(assert (=> b!254767 (contains!1847 (+!669 lt!127747 (tuple2!4889 lt!127746 (zeroValue!4538 thiss!1504))) lt!127738)))

(declare-fun lt!127756 () Unit!7893)

(assert (=> b!254767 (= lt!127756 lt!127744)))

(declare-fun lt!127751 () ListLongMap!3815)

(assert (=> b!254767 (= lt!127751 (getCurrentListMapNoExtraKeys!566 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127753 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127753 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127758 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127758 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!127748 () Unit!7893)

(declare-fun addApplyDifferent!223 (ListLongMap!3815 (_ BitVec 64) V!8387 (_ BitVec 64)) Unit!7893)

(assert (=> b!254767 (= lt!127748 (addApplyDifferent!223 lt!127751 lt!127753 (minValue!4538 thiss!1504) lt!127758))))

(assert (=> b!254767 (= (apply!247 (+!669 lt!127751 (tuple2!4889 lt!127753 (minValue!4538 thiss!1504))) lt!127758) (apply!247 lt!127751 lt!127758))))

(declare-fun lt!127750 () Unit!7893)

(assert (=> b!254767 (= lt!127750 lt!127748)))

(declare-fun lt!127757 () ListLongMap!3815)

(assert (=> b!254767 (= lt!127757 (getCurrentListMapNoExtraKeys!566 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127755 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127755 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127739 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127739 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000))))

(declare-fun lt!127749 () Unit!7893)

(assert (=> b!254767 (= lt!127749 (addApplyDifferent!223 lt!127757 lt!127755 (zeroValue!4538 thiss!1504) lt!127739))))

(assert (=> b!254767 (= (apply!247 (+!669 lt!127757 (tuple2!4889 lt!127755 (zeroValue!4538 thiss!1504))) lt!127739) (apply!247 lt!127757 lt!127739))))

(declare-fun lt!127737 () Unit!7893)

(assert (=> b!254767 (= lt!127737 lt!127749)))

(declare-fun lt!127741 () ListLongMap!3815)

(assert (=> b!254767 (= lt!127741 (getCurrentListMapNoExtraKeys!566 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127742 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127742 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127754 () (_ BitVec 64))

(assert (=> b!254767 (= lt!127754 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000))))

(assert (=> b!254767 (= lt!127743 (addApplyDifferent!223 lt!127741 lt!127742 (minValue!4538 thiss!1504) lt!127754))))

(assert (=> b!254767 (= (apply!247 (+!669 lt!127741 (tuple2!4889 lt!127742 (minValue!4538 thiss!1504))) lt!127754) (apply!247 lt!127741 lt!127754))))

(declare-fun b!254768 () Bool)

(declare-fun get!3033 (ValueCell!2934 V!8387) V!8387)

(declare-fun dynLambda!585 (Int (_ BitVec 64)) V!8387)

(assert (=> b!254768 (= e!165150 (= (apply!247 lt!127752 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000)) (get!3033 (select (arr!5895 (_values!4680 thiss!1504)) #b00000000000000000000000000000000) (dynLambda!585 (defaultEntry!4697 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!254768 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6242 (_values!4680 thiss!1504))))))

(assert (=> b!254768 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun b!254769 () Bool)

(declare-fun e!165152 () ListLongMap!3815)

(assert (=> b!254769 (= e!165152 call!24054)))

(declare-fun b!254770 () Bool)

(assert (=> b!254770 (= e!165153 (validKeyInArray!0 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!254771 () Bool)

(declare-fun res!124711 () Bool)

(assert (=> b!254771 (=> (not res!124711) (not e!165145))))

(declare-fun e!165149 () Bool)

(assert (=> b!254771 (= res!124711 e!165149)))

(declare-fun c!42977 () Bool)

(assert (=> b!254771 (= c!42977 (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!42975 () Bool)

(declare-fun bm!24053 () Bool)

(assert (=> bm!24053 (= call!24055 (+!669 (ite c!42975 call!24051 (ite c!42974 call!24050 call!24054)) (ite (or c!42975 c!42974) (tuple2!4889 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4538 thiss!1504)) (tuple2!4889 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4538 thiss!1504)))))))

(declare-fun b!254772 () Bool)

(assert (=> b!254772 (= e!165144 call!24052)))

(declare-fun b!254773 () Bool)

(assert (=> b!254773 (= e!165152 call!24052)))

(declare-fun b!254774 () Bool)

(assert (=> b!254774 (= e!165149 e!165155)))

(declare-fun res!124708 () Bool)

(assert (=> b!254774 (= res!124708 call!24056)))

(assert (=> b!254774 (=> (not res!124708) (not e!165155))))

(declare-fun d!61417 () Bool)

(assert (=> d!61417 e!165145))

(declare-fun res!124713 () Bool)

(assert (=> d!61417 (=> (not res!124713) (not e!165145))))

(assert (=> d!61417 (= res!124713 (or (bvsge #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))))))))

(declare-fun lt!127745 () ListLongMap!3815)

(assert (=> d!61417 (= lt!127752 lt!127745)))

(declare-fun lt!127740 () Unit!7893)

(assert (=> d!61417 (= lt!127740 e!165146)))

(declare-fun c!42976 () Bool)

(assert (=> d!61417 (= c!42976 e!165148)))

(declare-fun res!124706 () Bool)

(assert (=> d!61417 (=> (not res!124706) (not e!165148))))

(assert (=> d!61417 (= res!124706 (bvslt #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))))))

(assert (=> d!61417 (= lt!127745 e!165154)))

(assert (=> d!61417 (= c!42975 (and (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61417 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61417 (= (getCurrentListMap!1446 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)) lt!127752)))

(declare-fun b!254764 () Bool)

(declare-fun e!165147 () Bool)

(assert (=> b!254764 (= e!165147 (= (apply!247 lt!127752 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4538 thiss!1504)))))

(declare-fun b!254775 () Bool)

(declare-fun e!165151 () Bool)

(assert (=> b!254775 (= e!165151 (not call!24053))))

(declare-fun b!254776 () Bool)

(assert (=> b!254776 (= e!165151 e!165147)))

(declare-fun res!124709 () Bool)

(assert (=> b!254776 (= res!124709 call!24053)))

(assert (=> b!254776 (=> (not res!124709) (not e!165147))))

(declare-fun b!254777 () Bool)

(assert (=> b!254777 (= e!165149 (not call!24056))))

(declare-fun b!254778 () Bool)

(declare-fun c!42979 () Bool)

(assert (=> b!254778 (= c!42979 (and (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!254778 (= e!165144 e!165152)))

(declare-fun b!254779 () Bool)

(assert (=> b!254779 (= e!165145 e!165151)))

(declare-fun c!42978 () Bool)

(assert (=> b!254779 (= c!42978 (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61417 c!42975) b!254760))

(assert (= (and d!61417 (not c!42975)) b!254763))

(assert (= (and b!254763 c!42974) b!254772))

(assert (= (and b!254763 (not c!42974)) b!254778))

(assert (= (and b!254778 c!42979) b!254773))

(assert (= (and b!254778 (not c!42979)) b!254769))

(assert (= (or b!254773 b!254769) bm!24052))

(assert (= (or b!254772 bm!24052) bm!24047))

(assert (= (or b!254772 b!254773) bm!24050))

(assert (= (or b!254760 bm!24047) bm!24048))

(assert (= (or b!254760 bm!24050) bm!24053))

(assert (= (and d!61417 res!124706) b!254765))

(assert (= (and d!61417 c!42976) b!254767))

(assert (= (and d!61417 (not c!42976)) b!254761))

(assert (= (and d!61417 res!124713) b!254759))

(assert (= (and b!254759 res!124712) b!254770))

(assert (= (and b!254759 (not res!124710)) b!254766))

(assert (= (and b!254766 res!124707) b!254768))

(assert (= (and b!254759 res!124705) b!254771))

(assert (= (and b!254771 c!42977) b!254774))

(assert (= (and b!254771 (not c!42977)) b!254777))

(assert (= (and b!254774 res!124708) b!254762))

(assert (= (or b!254774 b!254777) bm!24051))

(assert (= (and b!254771 res!124711) b!254779))

(assert (= (and b!254779 c!42978) b!254776))

(assert (= (and b!254779 (not c!42978)) b!254775))

(assert (= (and b!254776 res!124709) b!254764))

(assert (= (or b!254776 b!254775) bm!24049))

(declare-fun b_lambda!8161 () Bool)

(assert (=> (not b_lambda!8161) (not b!254768)))

(declare-fun t!8851 () Bool)

(declare-fun tb!3015 () Bool)

(assert (=> (and b!254580 (= (defaultEntry!4697 thiss!1504) (defaultEntry!4697 thiss!1504)) t!8851) tb!3015))

(declare-fun result!5351 () Bool)

(assert (=> tb!3015 (= result!5351 tp_is_empty!6555)))

(assert (=> b!254768 t!8851))

(declare-fun b_and!13757 () Bool)

(assert (= b_and!13753 (and (=> t!8851 result!5351) b_and!13757)))

(assert (=> b!254765 m!270245))

(assert (=> b!254765 m!270245))

(declare-fun m!270285 () Bool)

(assert (=> b!254765 m!270285))

(declare-fun m!270287 () Bool)

(assert (=> b!254768 m!270287))

(declare-fun m!270289 () Bool)

(assert (=> b!254768 m!270289))

(declare-fun m!270291 () Bool)

(assert (=> b!254768 m!270291))

(assert (=> b!254768 m!270287))

(assert (=> b!254768 m!270245))

(assert (=> b!254768 m!270245))

(declare-fun m!270293 () Bool)

(assert (=> b!254768 m!270293))

(assert (=> b!254768 m!270289))

(assert (=> d!61417 m!270253))

(assert (=> b!254766 m!270245))

(assert (=> b!254766 m!270245))

(declare-fun m!270295 () Bool)

(assert (=> b!254766 m!270295))

(declare-fun m!270297 () Bool)

(assert (=> b!254764 m!270297))

(declare-fun m!270299 () Bool)

(assert (=> bm!24048 m!270299))

(declare-fun m!270301 () Bool)

(assert (=> bm!24051 m!270301))

(assert (=> b!254770 m!270245))

(assert (=> b!254770 m!270245))

(assert (=> b!254770 m!270285))

(declare-fun m!270303 () Bool)

(assert (=> b!254762 m!270303))

(declare-fun m!270305 () Bool)

(assert (=> bm!24049 m!270305))

(declare-fun m!270307 () Bool)

(assert (=> b!254760 m!270307))

(declare-fun m!270309 () Bool)

(assert (=> bm!24053 m!270309))

(declare-fun m!270311 () Bool)

(assert (=> b!254767 m!270311))

(declare-fun m!270313 () Bool)

(assert (=> b!254767 m!270313))

(declare-fun m!270315 () Bool)

(assert (=> b!254767 m!270315))

(assert (=> b!254767 m!270313))

(declare-fun m!270317 () Bool)

(assert (=> b!254767 m!270317))

(declare-fun m!270319 () Bool)

(assert (=> b!254767 m!270319))

(declare-fun m!270321 () Bool)

(assert (=> b!254767 m!270321))

(assert (=> b!254767 m!270299))

(assert (=> b!254767 m!270321))

(declare-fun m!270323 () Bool)

(assert (=> b!254767 m!270323))

(declare-fun m!270325 () Bool)

(assert (=> b!254767 m!270325))

(declare-fun m!270327 () Bool)

(assert (=> b!254767 m!270327))

(assert (=> b!254767 m!270317))

(declare-fun m!270329 () Bool)

(assert (=> b!254767 m!270329))

(declare-fun m!270331 () Bool)

(assert (=> b!254767 m!270331))

(declare-fun m!270333 () Bool)

(assert (=> b!254767 m!270333))

(declare-fun m!270335 () Bool)

(assert (=> b!254767 m!270335))

(declare-fun m!270337 () Bool)

(assert (=> b!254767 m!270337))

(declare-fun m!270339 () Bool)

(assert (=> b!254767 m!270339))

(assert (=> b!254767 m!270329))

(assert (=> b!254767 m!270245))

(assert (=> b!254594 d!61417))

(declare-fun b!254782 () Bool)

(declare-fun res!124714 () Bool)

(declare-fun e!165158 () Bool)

(assert (=> b!254782 (=> (not res!124714) (not e!165158))))

(declare-fun e!165169 () Bool)

(assert (=> b!254782 (= res!124714 e!165169)))

(declare-fun res!124719 () Bool)

(assert (=> b!254782 (=> res!124719 e!165169)))

(declare-fun e!165166 () Bool)

(assert (=> b!254782 (= res!124719 (not e!165166))))

(declare-fun res!124721 () Bool)

(assert (=> b!254782 (=> (not res!124721) (not e!165166))))

(assert (=> b!254782 (= res!124721 (bvslt #b00000000000000000000000000000000 (size!6243 lt!127617)))))

(declare-fun b!254783 () Bool)

(declare-fun e!165167 () ListLongMap!3815)

(declare-fun call!24062 () ListLongMap!3815)

(assert (=> b!254783 (= e!165167 (+!669 call!24062 (tuple2!4889 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4538 thiss!1504))))))

(declare-fun b!254784 () Bool)

(declare-fun e!165159 () Unit!7893)

(declare-fun Unit!7905 () Unit!7893)

(assert (=> b!254784 (= e!165159 Unit!7905)))

(declare-fun b!254785 () Bool)

(declare-fun e!165168 () Bool)

(declare-fun lt!127774 () ListLongMap!3815)

(assert (=> b!254785 (= e!165168 (= (apply!247 lt!127774 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!4538 thiss!1504)))))

(declare-fun bm!24054 () Bool)

(declare-fun call!24057 () ListLongMap!3815)

(declare-fun call!24058 () ListLongMap!3815)

(assert (=> bm!24054 (= call!24057 call!24058)))

(declare-fun b!254786 () Bool)

(declare-fun e!165157 () ListLongMap!3815)

(assert (=> b!254786 (= e!165167 e!165157)))

(declare-fun c!42980 () Bool)

(assert (=> b!254786 (= c!42980 (and (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!24055 () Bool)

(assert (=> bm!24055 (= call!24058 (getCurrentListMapNoExtraKeys!566 lt!127617 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun bm!24056 () Bool)

(declare-fun call!24060 () Bool)

(assert (=> bm!24056 (= call!24060 (contains!1847 lt!127774 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun bm!24057 () Bool)

(declare-fun call!24059 () ListLongMap!3815)

(assert (=> bm!24057 (= call!24059 call!24062)))

(declare-fun bm!24058 () Bool)

(declare-fun call!24063 () Bool)

(assert (=> bm!24058 (= call!24063 (contains!1847 lt!127774 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!254788 () Bool)

(declare-fun e!165161 () Bool)

(assert (=> b!254788 (= e!165161 (validKeyInArray!0 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(declare-fun bm!24059 () Bool)

(declare-fun call!24061 () ListLongMap!3815)

(assert (=> bm!24059 (= call!24061 call!24057)))

(declare-fun b!254789 () Bool)

(declare-fun e!165163 () Bool)

(assert (=> b!254789 (= e!165169 e!165163)))

(declare-fun res!124716 () Bool)

(assert (=> b!254789 (=> (not res!124716) (not e!165163))))

(assert (=> b!254789 (= res!124716 (contains!1847 lt!127774 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(assert (=> b!254789 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6243 lt!127617)))))

(declare-fun b!254790 () Bool)

(declare-fun lt!127765 () Unit!7893)

(assert (=> b!254790 (= e!165159 lt!127765)))

(declare-fun lt!127769 () ListLongMap!3815)

(assert (=> b!254790 (= lt!127769 (getCurrentListMapNoExtraKeys!566 lt!127617 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127768 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127768 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127760 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127760 (select (arr!5896 lt!127617) #b00000000000000000000000000000000))))

(declare-fun lt!127766 () Unit!7893)

(assert (=> b!254790 (= lt!127766 (addStillContains!223 lt!127769 lt!127768 (zeroValue!4538 thiss!1504) lt!127760))))

(assert (=> b!254790 (contains!1847 (+!669 lt!127769 (tuple2!4889 lt!127768 (zeroValue!4538 thiss!1504))) lt!127760)))

(declare-fun lt!127778 () Unit!7893)

(assert (=> b!254790 (= lt!127778 lt!127766)))

(declare-fun lt!127773 () ListLongMap!3815)

(assert (=> b!254790 (= lt!127773 (getCurrentListMapNoExtraKeys!566 lt!127617 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127775 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127775 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127780 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127780 (select (arr!5896 lt!127617) #b00000000000000000000000000000000))))

(declare-fun lt!127770 () Unit!7893)

(assert (=> b!254790 (= lt!127770 (addApplyDifferent!223 lt!127773 lt!127775 (minValue!4538 thiss!1504) lt!127780))))

(assert (=> b!254790 (= (apply!247 (+!669 lt!127773 (tuple2!4889 lt!127775 (minValue!4538 thiss!1504))) lt!127780) (apply!247 lt!127773 lt!127780))))

(declare-fun lt!127772 () Unit!7893)

(assert (=> b!254790 (= lt!127772 lt!127770)))

(declare-fun lt!127779 () ListLongMap!3815)

(assert (=> b!254790 (= lt!127779 (getCurrentListMapNoExtraKeys!566 lt!127617 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127777 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127777 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127761 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127761 (select (arr!5896 lt!127617) #b00000000000000000000000000000000))))

(declare-fun lt!127771 () Unit!7893)

(assert (=> b!254790 (= lt!127771 (addApplyDifferent!223 lt!127779 lt!127777 (zeroValue!4538 thiss!1504) lt!127761))))

(assert (=> b!254790 (= (apply!247 (+!669 lt!127779 (tuple2!4889 lt!127777 (zeroValue!4538 thiss!1504))) lt!127761) (apply!247 lt!127779 lt!127761))))

(declare-fun lt!127759 () Unit!7893)

(assert (=> b!254790 (= lt!127759 lt!127771)))

(declare-fun lt!127763 () ListLongMap!3815)

(assert (=> b!254790 (= lt!127763 (getCurrentListMapNoExtraKeys!566 lt!127617 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)))))

(declare-fun lt!127764 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127764 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!127776 () (_ BitVec 64))

(assert (=> b!254790 (= lt!127776 (select (arr!5896 lt!127617) #b00000000000000000000000000000000))))

(assert (=> b!254790 (= lt!127765 (addApplyDifferent!223 lt!127763 lt!127764 (minValue!4538 thiss!1504) lt!127776))))

(assert (=> b!254790 (= (apply!247 (+!669 lt!127763 (tuple2!4889 lt!127764 (minValue!4538 thiss!1504))) lt!127776) (apply!247 lt!127763 lt!127776))))

(declare-fun b!254791 () Bool)

(assert (=> b!254791 (= e!165163 (= (apply!247 lt!127774 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)) (get!3033 (select (arr!5895 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504)))) #b00000000000000000000000000000000) (dynLambda!585 (defaultEntry!4697 thiss!1504) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!254791 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6242 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))))))))

(assert (=> b!254791 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6243 lt!127617)))))

(declare-fun b!254792 () Bool)

(declare-fun e!165165 () ListLongMap!3815)

(assert (=> b!254792 (= e!165165 call!24061)))

(declare-fun b!254793 () Bool)

(assert (=> b!254793 (= e!165166 (validKeyInArray!0 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(declare-fun b!254794 () Bool)

(declare-fun res!124720 () Bool)

(assert (=> b!254794 (=> (not res!124720) (not e!165158))))

(declare-fun e!165162 () Bool)

(assert (=> b!254794 (= res!124720 e!165162)))

(declare-fun c!42983 () Bool)

(assert (=> b!254794 (= c!42983 (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun c!42981 () Bool)

(declare-fun bm!24060 () Bool)

(assert (=> bm!24060 (= call!24062 (+!669 (ite c!42981 call!24058 (ite c!42980 call!24057 call!24061)) (ite (or c!42981 c!42980) (tuple2!4889 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!4538 thiss!1504)) (tuple2!4889 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!4538 thiss!1504)))))))

(declare-fun b!254795 () Bool)

(assert (=> b!254795 (= e!165157 call!24059)))

(declare-fun b!254796 () Bool)

(assert (=> b!254796 (= e!165165 call!24059)))

(declare-fun b!254797 () Bool)

(assert (=> b!254797 (= e!165162 e!165168)))

(declare-fun res!124717 () Bool)

(assert (=> b!254797 (= res!124717 call!24063)))

(assert (=> b!254797 (=> (not res!124717) (not e!165168))))

(declare-fun d!61419 () Bool)

(assert (=> d!61419 e!165158))

(declare-fun res!124722 () Bool)

(assert (=> d!61419 (=> (not res!124722) (not e!165158))))

(assert (=> d!61419 (= res!124722 (or (bvsge #b00000000000000000000000000000000 (size!6243 lt!127617)) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!6243 lt!127617)))))))

(declare-fun lt!127767 () ListLongMap!3815)

(assert (=> d!61419 (= lt!127774 lt!127767)))

(declare-fun lt!127762 () Unit!7893)

(assert (=> d!61419 (= lt!127762 e!165159)))

(declare-fun c!42982 () Bool)

(assert (=> d!61419 (= c!42982 e!165161)))

(declare-fun res!124715 () Bool)

(assert (=> d!61419 (=> (not res!124715) (not e!165161))))

(assert (=> d!61419 (= res!124715 (bvslt #b00000000000000000000000000000000 (size!6243 lt!127617)))))

(assert (=> d!61419 (= lt!127767 e!165167)))

(assert (=> d!61419 (= c!42981 (and (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!61419 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61419 (= (getCurrentListMap!1446 lt!127617 (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)) lt!127774)))

(declare-fun b!254787 () Bool)

(declare-fun e!165160 () Bool)

(assert (=> b!254787 (= e!165160 (= (apply!247 lt!127774 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!4538 thiss!1504)))))

(declare-fun b!254798 () Bool)

(declare-fun e!165164 () Bool)

(assert (=> b!254798 (= e!165164 (not call!24060))))

(declare-fun b!254799 () Bool)

(assert (=> b!254799 (= e!165164 e!165160)))

(declare-fun res!124718 () Bool)

(assert (=> b!254799 (= res!124718 call!24060)))

(assert (=> b!254799 (=> (not res!124718) (not e!165160))))

(declare-fun b!254800 () Bool)

(assert (=> b!254800 (= e!165162 (not call!24063))))

(declare-fun b!254801 () Bool)

(declare-fun c!42985 () Bool)

(assert (=> b!254801 (= c!42985 (and (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(assert (=> b!254801 (= e!165157 e!165165)))

(declare-fun b!254802 () Bool)

(assert (=> b!254802 (= e!165158 e!165164)))

(declare-fun c!42984 () Bool)

(assert (=> b!254802 (= c!42984 (not (= (bvand (extraKeys!4434 thiss!1504) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(assert (= (and d!61419 c!42981) b!254783))

(assert (= (and d!61419 (not c!42981)) b!254786))

(assert (= (and b!254786 c!42980) b!254795))

(assert (= (and b!254786 (not c!42980)) b!254801))

(assert (= (and b!254801 c!42985) b!254796))

(assert (= (and b!254801 (not c!42985)) b!254792))

(assert (= (or b!254796 b!254792) bm!24059))

(assert (= (or b!254795 bm!24059) bm!24054))

(assert (= (or b!254795 b!254796) bm!24057))

(assert (= (or b!254783 bm!24054) bm!24055))

(assert (= (or b!254783 bm!24057) bm!24060))

(assert (= (and d!61419 res!124715) b!254788))

(assert (= (and d!61419 c!42982) b!254790))

(assert (= (and d!61419 (not c!42982)) b!254784))

(assert (= (and d!61419 res!124722) b!254782))

(assert (= (and b!254782 res!124721) b!254793))

(assert (= (and b!254782 (not res!124719)) b!254789))

(assert (= (and b!254789 res!124716) b!254791))

(assert (= (and b!254782 res!124714) b!254794))

(assert (= (and b!254794 c!42983) b!254797))

(assert (= (and b!254794 (not c!42983)) b!254800))

(assert (= (and b!254797 res!124717) b!254785))

(assert (= (or b!254797 b!254800) bm!24058))

(assert (= (and b!254794 res!124720) b!254802))

(assert (= (and b!254802 c!42984) b!254799))

(assert (= (and b!254802 (not c!42984)) b!254798))

(assert (= (and b!254799 res!124718) b!254787))

(assert (= (or b!254799 b!254798) bm!24056))

(declare-fun b_lambda!8163 () Bool)

(assert (=> (not b_lambda!8163) (not b!254791)))

(assert (=> b!254791 t!8851))

(declare-fun b_and!13759 () Bool)

(assert (= b_and!13757 (and (=> t!8851 result!5351) b_and!13759)))

(declare-fun m!270341 () Bool)

(assert (=> b!254788 m!270341))

(assert (=> b!254788 m!270341))

(declare-fun m!270343 () Bool)

(assert (=> b!254788 m!270343))

(declare-fun m!270345 () Bool)

(assert (=> b!254791 m!270345))

(assert (=> b!254791 m!270289))

(declare-fun m!270347 () Bool)

(assert (=> b!254791 m!270347))

(assert (=> b!254791 m!270345))

(assert (=> b!254791 m!270341))

(assert (=> b!254791 m!270341))

(declare-fun m!270349 () Bool)

(assert (=> b!254791 m!270349))

(assert (=> b!254791 m!270289))

(assert (=> d!61419 m!270253))

(assert (=> b!254789 m!270341))

(assert (=> b!254789 m!270341))

(declare-fun m!270351 () Bool)

(assert (=> b!254789 m!270351))

(declare-fun m!270353 () Bool)

(assert (=> b!254787 m!270353))

(declare-fun m!270355 () Bool)

(assert (=> bm!24055 m!270355))

(declare-fun m!270357 () Bool)

(assert (=> bm!24058 m!270357))

(assert (=> b!254793 m!270341))

(assert (=> b!254793 m!270341))

(assert (=> b!254793 m!270343))

(declare-fun m!270359 () Bool)

(assert (=> b!254785 m!270359))

(declare-fun m!270361 () Bool)

(assert (=> bm!24056 m!270361))

(declare-fun m!270363 () Bool)

(assert (=> b!254783 m!270363))

(declare-fun m!270365 () Bool)

(assert (=> bm!24060 m!270365))

(declare-fun m!270367 () Bool)

(assert (=> b!254790 m!270367))

(declare-fun m!270369 () Bool)

(assert (=> b!254790 m!270369))

(declare-fun m!270371 () Bool)

(assert (=> b!254790 m!270371))

(assert (=> b!254790 m!270369))

(declare-fun m!270373 () Bool)

(assert (=> b!254790 m!270373))

(declare-fun m!270375 () Bool)

(assert (=> b!254790 m!270375))

(declare-fun m!270377 () Bool)

(assert (=> b!254790 m!270377))

(assert (=> b!254790 m!270355))

(assert (=> b!254790 m!270377))

(declare-fun m!270379 () Bool)

(assert (=> b!254790 m!270379))

(declare-fun m!270381 () Bool)

(assert (=> b!254790 m!270381))

(declare-fun m!270383 () Bool)

(assert (=> b!254790 m!270383))

(assert (=> b!254790 m!270373))

(declare-fun m!270385 () Bool)

(assert (=> b!254790 m!270385))

(declare-fun m!270387 () Bool)

(assert (=> b!254790 m!270387))

(declare-fun m!270389 () Bool)

(assert (=> b!254790 m!270389))

(declare-fun m!270391 () Bool)

(assert (=> b!254790 m!270391))

(declare-fun m!270393 () Bool)

(assert (=> b!254790 m!270393))

(declare-fun m!270395 () Bool)

(assert (=> b!254790 m!270395))

(assert (=> b!254790 m!270385))

(assert (=> b!254790 m!270341))

(assert (=> b!254585 d!61419))

(declare-fun e!165174 () Bool)

(declare-fun b!254814 () Bool)

(assert (=> b!254814 (= e!165174 (= (arrayCountValidKeys!0 (array!12443 (store (arr!5896 (_keys!6851 thiss!1504)) index!297 key!932) (size!6243 (_keys!6851 thiss!1504))) #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) (bvadd (arrayCountValidKeys!0 (_keys!6851 thiss!1504) #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) #b00000000000000000000000000000001)))))

(declare-fun b!254813 () Bool)

(declare-fun e!165175 () Bool)

(assert (=> b!254813 (= e!165175 (bvslt (size!6243 (_keys!6851 thiss!1504)) #b01111111111111111111111111111111))))

(declare-fun b!254812 () Bool)

(declare-fun res!124732 () Bool)

(assert (=> b!254812 (=> (not res!124732) (not e!165175))))

(assert (=> b!254812 (= res!124732 (validKeyInArray!0 key!932))))

(declare-fun d!61421 () Bool)

(assert (=> d!61421 e!165174))

(declare-fun res!124734 () Bool)

(assert (=> d!61421 (=> (not res!124734) (not e!165174))))

(assert (=> d!61421 (= res!124734 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6243 (_keys!6851 thiss!1504)))))))

(declare-fun lt!127783 () Unit!7893)

(declare-fun choose!1 (array!12442 (_ BitVec 32) (_ BitVec 64)) Unit!7893)

(assert (=> d!61421 (= lt!127783 (choose!1 (_keys!6851 thiss!1504) index!297 key!932))))

(assert (=> d!61421 e!165175))

(declare-fun res!124733 () Bool)

(assert (=> d!61421 (=> (not res!124733) (not e!165175))))

(assert (=> d!61421 (= res!124733 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6243 (_keys!6851 thiss!1504)))))))

(assert (=> d!61421 (= (lemmaAddValidKeyIncreasesNumberOfValidKeysInArray!0 (_keys!6851 thiss!1504) index!297 key!932) lt!127783)))

(declare-fun b!254811 () Bool)

(declare-fun res!124731 () Bool)

(assert (=> b!254811 (=> (not res!124731) (not e!165175))))

(assert (=> b!254811 (= res!124731 (not (validKeyInArray!0 (select (arr!5896 (_keys!6851 thiss!1504)) index!297))))))

(assert (= (and d!61421 res!124733) b!254811))

(assert (= (and b!254811 res!124731) b!254812))

(assert (= (and b!254812 res!124732) b!254813))

(assert (= (and d!61421 res!124734) b!254814))

(assert (=> b!254814 m!270179))

(declare-fun m!270397 () Bool)

(assert (=> b!254814 m!270397))

(assert (=> b!254814 m!270181))

(declare-fun m!270399 () Bool)

(assert (=> b!254812 m!270399))

(declare-fun m!270401 () Bool)

(assert (=> d!61421 m!270401))

(declare-fun m!270403 () Bool)

(assert (=> b!254811 m!270403))

(assert (=> b!254811 m!270403))

(declare-fun m!270405 () Bool)

(assert (=> b!254811 m!270405))

(assert (=> b!254585 d!61421))

(declare-fun bm!24063 () Bool)

(declare-fun call!24066 () Bool)

(declare-fun c!42988 () Bool)

(assert (=> bm!24063 (= call!24066 (arrayNoDuplicates!0 lt!127617 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (ite c!42988 (Cons!3790 (select (arr!5896 lt!127617) #b00000000000000000000000000000000) Nil!3791) Nil!3791)))))

(declare-fun d!61423 () Bool)

(declare-fun res!124741 () Bool)

(declare-fun e!165186 () Bool)

(assert (=> d!61423 (=> res!124741 e!165186)))

(assert (=> d!61423 (= res!124741 (bvsge #b00000000000000000000000000000000 (size!6243 lt!127617)))))

(assert (=> d!61423 (= (arrayNoDuplicates!0 lt!127617 #b00000000000000000000000000000000 Nil!3791) e!165186)))

(declare-fun b!254825 () Bool)

(declare-fun e!165185 () Bool)

(assert (=> b!254825 (= e!165186 e!165185)))

(declare-fun res!124743 () Bool)

(assert (=> b!254825 (=> (not res!124743) (not e!165185))))

(declare-fun e!165187 () Bool)

(assert (=> b!254825 (= res!124743 (not e!165187))))

(declare-fun res!124742 () Bool)

(assert (=> b!254825 (=> (not res!124742) (not e!165187))))

(assert (=> b!254825 (= res!124742 (validKeyInArray!0 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(declare-fun b!254826 () Bool)

(declare-fun e!165184 () Bool)

(assert (=> b!254826 (= e!165184 call!24066)))

(declare-fun b!254827 () Bool)

(assert (=> b!254827 (= e!165185 e!165184)))

(assert (=> b!254827 (= c!42988 (validKeyInArray!0 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(declare-fun b!254828 () Bool)

(declare-fun contains!1848 (List!3794 (_ BitVec 64)) Bool)

(assert (=> b!254828 (= e!165187 (contains!1848 Nil!3791 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(declare-fun b!254829 () Bool)

(assert (=> b!254829 (= e!165184 call!24066)))

(assert (= (and d!61423 (not res!124741)) b!254825))

(assert (= (and b!254825 res!124742) b!254828))

(assert (= (and b!254825 res!124743) b!254827))

(assert (= (and b!254827 c!42988) b!254826))

(assert (= (and b!254827 (not c!42988)) b!254829))

(assert (= (or b!254826 b!254829) bm!24063))

(assert (=> bm!24063 m!270341))

(declare-fun m!270407 () Bool)

(assert (=> bm!24063 m!270407))

(assert (=> b!254825 m!270341))

(assert (=> b!254825 m!270341))

(assert (=> b!254825 m!270343))

(assert (=> b!254827 m!270341))

(assert (=> b!254827 m!270341))

(assert (=> b!254827 m!270343))

(assert (=> b!254828 m!270341))

(assert (=> b!254828 m!270341))

(declare-fun m!270409 () Bool)

(assert (=> b!254828 m!270409))

(assert (=> b!254585 d!61423))

(declare-fun b!254838 () Bool)

(declare-fun e!165193 () (_ BitVec 32))

(declare-fun e!165192 () (_ BitVec 32))

(assert (=> b!254838 (= e!165193 e!165192)))

(declare-fun c!42994 () Bool)

(assert (=> b!254838 (= c!42994 (validKeyInArray!0 (select (arr!5896 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000)))))

(declare-fun b!254839 () Bool)

(declare-fun call!24069 () (_ BitVec 32))

(assert (=> b!254839 (= e!165192 call!24069)))

(declare-fun bm!24066 () Bool)

(assert (=> bm!24066 (= call!24069 (arrayCountValidKeys!0 (_keys!6851 thiss!1504) (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun d!61425 () Bool)

(declare-fun lt!127786 () (_ BitVec 32))

(assert (=> d!61425 (and (bvsge lt!127786 #b00000000000000000000000000000000) (bvsle lt!127786 (bvsub (size!6243 (_keys!6851 thiss!1504)) #b00000000000000000000000000000000)))))

(assert (=> d!61425 (= lt!127786 e!165193)))

(declare-fun c!42993 () Bool)

(assert (=> d!61425 (= c!42993 (bvsge #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))))))

(assert (=> d!61425 (and (bvsle #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6243 (_keys!6851 thiss!1504)) (size!6243 (_keys!6851 thiss!1504))))))

(assert (=> d!61425 (= (arrayCountValidKeys!0 (_keys!6851 thiss!1504) #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) lt!127786)))

(declare-fun b!254840 () Bool)

(assert (=> b!254840 (= e!165192 (bvadd #b00000000000000000000000000000001 call!24069))))

(declare-fun b!254841 () Bool)

(assert (=> b!254841 (= e!165193 #b00000000000000000000000000000000)))

(assert (= (and d!61425 c!42993) b!254841))

(assert (= (and d!61425 (not c!42993)) b!254838))

(assert (= (and b!254838 c!42994) b!254840))

(assert (= (and b!254838 (not c!42994)) b!254839))

(assert (= (or b!254840 b!254839) bm!24066))

(assert (=> b!254838 m!270245))

(assert (=> b!254838 m!270245))

(assert (=> b!254838 m!270285))

(declare-fun m!270411 () Bool)

(assert (=> bm!24066 m!270411))

(assert (=> b!254585 d!61425))

(declare-fun d!61427 () Bool)

(declare-fun e!165196 () Bool)

(assert (=> d!61427 e!165196))

(declare-fun res!124746 () Bool)

(assert (=> d!61427 (=> (not res!124746) (not e!165196))))

(assert (=> d!61427 (= res!124746 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6243 (_keys!6851 thiss!1504))) (bvslt index!297 (size!6242 (_values!4680 thiss!1504)))))))

(declare-fun lt!127789 () Unit!7893)

(declare-fun choose!1222 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 32) (_ BitVec 64) V!8387 Int) Unit!7893)

(assert (=> d!61427 (= lt!127789 (choose!1222 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) index!297 key!932 v!346 (defaultEntry!4697 thiss!1504)))))

(assert (=> d!61427 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61427 (= (lemmaAddValidKeyToArrayThenAddPairToListMap!84 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) index!297 key!932 v!346 (defaultEntry!4697 thiss!1504)) lt!127789)))

(declare-fun b!254844 () Bool)

(assert (=> b!254844 (= e!165196 (= (+!669 (getCurrentListMap!1446 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504)) (tuple2!4889 key!932 v!346)) (getCurrentListMap!1446 (array!12443 (store (arr!5896 (_keys!6851 thiss!1504)) index!297 key!932) (size!6243 (_keys!6851 thiss!1504))) (array!12441 (store (arr!5895 (_values!4680 thiss!1504)) index!297 (ValueCellFull!2934 v!346)) (size!6242 (_values!4680 thiss!1504))) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4697 thiss!1504))))))

(assert (= (and d!61427 res!124746) b!254844))

(declare-fun m!270413 () Bool)

(assert (=> d!61427 m!270413))

(assert (=> d!61427 m!270253))

(assert (=> b!254844 m!270169))

(assert (=> b!254844 m!270179))

(declare-fun m!270415 () Bool)

(assert (=> b!254844 m!270415))

(assert (=> b!254844 m!270157))

(assert (=> b!254844 m!270157))

(declare-fun m!270417 () Bool)

(assert (=> b!254844 m!270417))

(assert (=> b!254585 d!61427))

(declare-fun d!61429 () Bool)

(declare-fun e!165199 () Bool)

(assert (=> d!61429 e!165199))

(declare-fun res!124752 () Bool)

(assert (=> d!61429 (=> (not res!124752) (not e!165199))))

(declare-fun lt!127798 () ListLongMap!3815)

(assert (=> d!61429 (= res!124752 (contains!1847 lt!127798 (_1!2454 (tuple2!4889 key!932 v!346))))))

(declare-fun lt!127801 () List!3793)

(assert (=> d!61429 (= lt!127798 (ListLongMap!3816 lt!127801))))

(declare-fun lt!127800 () Unit!7893)

(declare-fun lt!127799 () Unit!7893)

(assert (=> d!61429 (= lt!127800 lt!127799)))

(assert (=> d!61429 (= (getValueByKey!304 lt!127801 (_1!2454 (tuple2!4889 key!932 v!346))) (Some!309 (_2!2454 (tuple2!4889 key!932 v!346))))))

(declare-fun lemmaContainsTupThenGetReturnValue!162 (List!3793 (_ BitVec 64) V!8387) Unit!7893)

(assert (=> d!61429 (= lt!127799 (lemmaContainsTupThenGetReturnValue!162 lt!127801 (_1!2454 (tuple2!4889 key!932 v!346)) (_2!2454 (tuple2!4889 key!932 v!346))))))

(declare-fun insertStrictlySorted!164 (List!3793 (_ BitVec 64) V!8387) List!3793)

(assert (=> d!61429 (= lt!127801 (insertStrictlySorted!164 (toList!1923 lt!127616) (_1!2454 (tuple2!4889 key!932 v!346)) (_2!2454 (tuple2!4889 key!932 v!346))))))

(assert (=> d!61429 (= (+!669 lt!127616 (tuple2!4889 key!932 v!346)) lt!127798)))

(declare-fun b!254849 () Bool)

(declare-fun res!124751 () Bool)

(assert (=> b!254849 (=> (not res!124751) (not e!165199))))

(assert (=> b!254849 (= res!124751 (= (getValueByKey!304 (toList!1923 lt!127798) (_1!2454 (tuple2!4889 key!932 v!346))) (Some!309 (_2!2454 (tuple2!4889 key!932 v!346)))))))

(declare-fun b!254850 () Bool)

(declare-fun contains!1849 (List!3793 tuple2!4888) Bool)

(assert (=> b!254850 (= e!165199 (contains!1849 (toList!1923 lt!127798) (tuple2!4889 key!932 v!346)))))

(assert (= (and d!61429 res!124752) b!254849))

(assert (= (and b!254849 res!124751) b!254850))

(declare-fun m!270419 () Bool)

(assert (=> d!61429 m!270419))

(declare-fun m!270421 () Bool)

(assert (=> d!61429 m!270421))

(declare-fun m!270423 () Bool)

(assert (=> d!61429 m!270423))

(declare-fun m!270425 () Bool)

(assert (=> d!61429 m!270425))

(declare-fun m!270427 () Bool)

(assert (=> b!254849 m!270427))

(declare-fun m!270429 () Bool)

(assert (=> b!254850 m!270429))

(assert (=> b!254585 d!61429))

(declare-fun d!61431 () Bool)

(declare-fun e!165202 () Bool)

(assert (=> d!61431 e!165202))

(declare-fun res!124755 () Bool)

(assert (=> d!61431 (=> (not res!124755) (not e!165202))))

(assert (=> d!61431 (= res!124755 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6243 (_keys!6851 thiss!1504)))))))

(declare-fun lt!127804 () Unit!7893)

(declare-fun choose!41 (array!12442 (_ BitVec 64) (_ BitVec 32) (_ BitVec 32) List!3794) Unit!7893)

(assert (=> d!61431 (= lt!127804 (choose!41 (_keys!6851 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3791))))

(assert (=> d!61431 (bvslt (size!6243 (_keys!6851 thiss!1504)) #b01111111111111111111111111111111)))

(assert (=> d!61431 (= (lemmaPutNewValidKeyPreservesNoDuplicate!0 (_keys!6851 thiss!1504) key!932 index!297 #b00000000000000000000000000000000 Nil!3791) lt!127804)))

(declare-fun b!254853 () Bool)

(assert (=> b!254853 (= e!165202 (arrayNoDuplicates!0 (array!12443 (store (arr!5896 (_keys!6851 thiss!1504)) index!297 key!932) (size!6243 (_keys!6851 thiss!1504))) #b00000000000000000000000000000000 Nil!3791))))

(assert (= (and d!61431 res!124755) b!254853))

(declare-fun m!270431 () Bool)

(assert (=> d!61431 m!270431))

(assert (=> b!254853 m!270179))

(declare-fun m!270433 () Bool)

(assert (=> b!254853 m!270433))

(assert (=> b!254585 d!61431))

(assert (=> b!254585 d!61401))

(declare-fun d!61433 () Bool)

(declare-fun e!165205 () Bool)

(assert (=> d!61433 e!165205))

(declare-fun res!124758 () Bool)

(assert (=> d!61433 (=> (not res!124758) (not e!165205))))

(assert (=> d!61433 (= res!124758 (and (bvsge index!297 #b00000000000000000000000000000000) (bvslt index!297 (size!6243 (_keys!6851 thiss!1504)))))))

(declare-fun lt!127807 () Unit!7893)

(declare-fun choose!102 ((_ BitVec 64) array!12442 (_ BitVec 32) (_ BitVec 32)) Unit!7893)

(assert (=> d!61433 (= lt!127807 (choose!102 key!932 (_keys!6851 thiss!1504) index!297 (mask!10945 thiss!1504)))))

(assert (=> d!61433 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61433 (= (lemmaPutValidKeyPreservesForallSeekEntryOrOpen!0 key!932 (_keys!6851 thiss!1504) index!297 (mask!10945 thiss!1504)) lt!127807)))

(declare-fun b!254856 () Bool)

(assert (=> b!254856 (= e!165205 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (array!12443 (store (arr!5896 (_keys!6851 thiss!1504)) index!297 key!932) (size!6243 (_keys!6851 thiss!1504))) (mask!10945 thiss!1504)))))

(assert (= (and d!61433 res!124758) b!254856))

(declare-fun m!270435 () Bool)

(assert (=> d!61433 m!270435))

(assert (=> d!61433 m!270253))

(assert (=> b!254856 m!270179))

(declare-fun m!270437 () Bool)

(assert (=> b!254856 m!270437))

(assert (=> b!254585 d!61433))

(declare-fun b!254865 () Bool)

(declare-fun e!165214 () Bool)

(declare-fun e!165213 () Bool)

(assert (=> b!254865 (= e!165214 e!165213)))

(declare-fun lt!127814 () (_ BitVec 64))

(assert (=> b!254865 (= lt!127814 (select (arr!5896 lt!127617) #b00000000000000000000000000000000))))

(declare-fun lt!127815 () Unit!7893)

(declare-fun lemmaArrayContainsFromImpliesContainsFromZero!0 (array!12442 (_ BitVec 64) (_ BitVec 32)) Unit!7893)

(assert (=> b!254865 (= lt!127815 (lemmaArrayContainsFromImpliesContainsFromZero!0 lt!127617 lt!127814 #b00000000000000000000000000000000))))

(assert (=> b!254865 (arrayContainsKey!0 lt!127617 lt!127814 #b00000000000000000000000000000000)))

(declare-fun lt!127816 () Unit!7893)

(assert (=> b!254865 (= lt!127816 lt!127815)))

(declare-fun res!124764 () Bool)

(assert (=> b!254865 (= res!124764 (= (seekEntryOrOpen!0 (select (arr!5896 lt!127617) #b00000000000000000000000000000000) lt!127617 (mask!10945 thiss!1504)) (Found!1162 #b00000000000000000000000000000000)))))

(assert (=> b!254865 (=> (not res!124764) (not e!165213))))

(declare-fun b!254866 () Bool)

(declare-fun e!165212 () Bool)

(assert (=> b!254866 (= e!165212 e!165214)))

(declare-fun c!42997 () Bool)

(assert (=> b!254866 (= c!42997 (validKeyInArray!0 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(declare-fun d!61435 () Bool)

(declare-fun res!124763 () Bool)

(assert (=> d!61435 (=> res!124763 e!165212)))

(assert (=> d!61435 (= res!124763 (bvsge #b00000000000000000000000000000000 (size!6243 lt!127617)))))

(assert (=> d!61435 (= (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 lt!127617 (mask!10945 thiss!1504)) e!165212)))

(declare-fun bm!24069 () Bool)

(declare-fun call!24072 () Bool)

(assert (=> bm!24069 (= call!24072 (arrayForallSeekEntryOrOpenFound!0 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) lt!127617 (mask!10945 thiss!1504)))))

(declare-fun b!254867 () Bool)

(assert (=> b!254867 (= e!165213 call!24072)))

(declare-fun b!254868 () Bool)

(assert (=> b!254868 (= e!165214 call!24072)))

(assert (= (and d!61435 (not res!124763)) b!254866))

(assert (= (and b!254866 c!42997) b!254865))

(assert (= (and b!254866 (not c!42997)) b!254868))

(assert (= (and b!254865 res!124764) b!254867))

(assert (= (or b!254867 b!254868) bm!24069))

(assert (=> b!254865 m!270341))

(declare-fun m!270439 () Bool)

(assert (=> b!254865 m!270439))

(declare-fun m!270441 () Bool)

(assert (=> b!254865 m!270441))

(assert (=> b!254865 m!270341))

(declare-fun m!270443 () Bool)

(assert (=> b!254865 m!270443))

(assert (=> b!254866 m!270341))

(assert (=> b!254866 m!270341))

(assert (=> b!254866 m!270343))

(declare-fun m!270445 () Bool)

(assert (=> bm!24069 m!270445))

(assert (=> b!254585 d!61435))

(declare-fun b!254869 () Bool)

(declare-fun e!165216 () (_ BitVec 32))

(declare-fun e!165215 () (_ BitVec 32))

(assert (=> b!254869 (= e!165216 e!165215)))

(declare-fun c!42999 () Bool)

(assert (=> b!254869 (= c!42999 (validKeyInArray!0 (select (arr!5896 lt!127617) #b00000000000000000000000000000000)))))

(declare-fun b!254870 () Bool)

(declare-fun call!24073 () (_ BitVec 32))

(assert (=> b!254870 (= e!165215 call!24073)))

(declare-fun bm!24070 () Bool)

(assert (=> bm!24070 (= call!24073 (arrayCountValidKeys!0 lt!127617 (bvadd #b00000000000000000000000000000000 #b00000000000000000000000000000001) (size!6243 (_keys!6851 thiss!1504))))))

(declare-fun d!61437 () Bool)

(declare-fun lt!127817 () (_ BitVec 32))

(assert (=> d!61437 (and (bvsge lt!127817 #b00000000000000000000000000000000) (bvsle lt!127817 (bvsub (size!6243 lt!127617) #b00000000000000000000000000000000)))))

(assert (=> d!61437 (= lt!127817 e!165216)))

(declare-fun c!42998 () Bool)

(assert (=> d!61437 (= c!42998 (bvsge #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))))))

(assert (=> d!61437 (and (bvsle #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvsle (size!6243 (_keys!6851 thiss!1504)) (size!6243 lt!127617)))))

(assert (=> d!61437 (= (arrayCountValidKeys!0 lt!127617 #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) lt!127817)))

(declare-fun b!254871 () Bool)

(assert (=> b!254871 (= e!165215 (bvadd #b00000000000000000000000000000001 call!24073))))

(declare-fun b!254872 () Bool)

(assert (=> b!254872 (= e!165216 #b00000000000000000000000000000000)))

(assert (= (and d!61437 c!42998) b!254872))

(assert (= (and d!61437 (not c!42998)) b!254869))

(assert (= (and b!254869 c!42999) b!254871))

(assert (= (and b!254869 (not c!42999)) b!254870))

(assert (= (or b!254871 b!254870) bm!24070))

(assert (=> b!254869 m!270341))

(assert (=> b!254869 m!270341))

(assert (=> b!254869 m!270343))

(declare-fun m!270447 () Bool)

(assert (=> bm!24070 m!270447))

(assert (=> b!254585 d!61437))

(declare-fun d!61439 () Bool)

(declare-fun res!124771 () Bool)

(declare-fun e!165219 () Bool)

(assert (=> d!61439 (=> (not res!124771) (not e!165219))))

(declare-fun simpleValid!269 (LongMapFixedSize!3768) Bool)

(assert (=> d!61439 (= res!124771 (simpleValid!269 thiss!1504))))

(assert (=> d!61439 (= (valid!1465 thiss!1504) e!165219)))

(declare-fun b!254879 () Bool)

(declare-fun res!124772 () Bool)

(assert (=> b!254879 (=> (not res!124772) (not e!165219))))

(assert (=> b!254879 (= res!124772 (= (arrayCountValidKeys!0 (_keys!6851 thiss!1504) #b00000000000000000000000000000000 (size!6243 (_keys!6851 thiss!1504))) (_size!1933 thiss!1504)))))

(declare-fun b!254880 () Bool)

(declare-fun res!124773 () Bool)

(assert (=> b!254880 (=> (not res!124773) (not e!165219))))

(assert (=> b!254880 (= res!124773 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!6851 thiss!1504) (mask!10945 thiss!1504)))))

(declare-fun b!254881 () Bool)

(assert (=> b!254881 (= e!165219 (arrayNoDuplicates!0 (_keys!6851 thiss!1504) #b00000000000000000000000000000000 Nil!3791))))

(assert (= (and d!61439 res!124771) b!254879))

(assert (= (and b!254879 res!124772) b!254880))

(assert (= (and b!254880 res!124773) b!254881))

(declare-fun m!270449 () Bool)

(assert (=> d!61439 m!270449))

(assert (=> b!254879 m!270181))

(declare-fun m!270451 () Bool)

(assert (=> b!254880 m!270451))

(declare-fun m!270453 () Bool)

(assert (=> b!254881 m!270453))

(assert (=> start!24304 d!61439))

(declare-fun d!61441 () Bool)

(assert (=> d!61441 (= (inRange!0 (ite c!42931 (index!6818 lt!127623) (index!6821 lt!127623)) (mask!10945 thiss!1504)) (and (bvsge (ite c!42931 (index!6818 lt!127623) (index!6821 lt!127623)) #b00000000000000000000000000000000) (bvslt (ite c!42931 (index!6818 lt!127623) (index!6821 lt!127623)) (bvadd (mask!10945 thiss!1504) #b00000000000000000000000000000001))))))

(assert (=> bm!24019 d!61441))

(declare-fun d!61443 () Bool)

(declare-fun e!165222 () Bool)

(assert (=> d!61443 e!165222))

(declare-fun res!124779 () Bool)

(assert (=> d!61443 (=> (not res!124779) (not e!165222))))

(declare-fun lt!127822 () SeekEntryResult!1162)

(assert (=> d!61443 (= res!124779 ((_ is Found!1162) lt!127822))))

(assert (=> d!61443 (= lt!127822 (seekEntryOrOpen!0 key!932 (_keys!6851 thiss!1504) (mask!10945 thiss!1504)))))

(declare-fun lt!127823 () Unit!7893)

(declare-fun choose!1223 (array!12442 array!12440 (_ BitVec 32) (_ BitVec 32) V!8387 V!8387 (_ BitVec 64) Int) Unit!7893)

(assert (=> d!61443 (= lt!127823 (choose!1223 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 (defaultEntry!4697 thiss!1504)))))

(assert (=> d!61443 (validMask!0 (mask!10945 thiss!1504))))

(assert (=> d!61443 (= (lemmaInListMapThenSeekEntryOrOpenFindsIt!420 (_keys!6851 thiss!1504) (_values!4680 thiss!1504) (mask!10945 thiss!1504) (extraKeys!4434 thiss!1504) (zeroValue!4538 thiss!1504) (minValue!4538 thiss!1504) key!932 (defaultEntry!4697 thiss!1504)) lt!127823)))

(declare-fun b!254886 () Bool)

(declare-fun res!124778 () Bool)

(assert (=> b!254886 (=> (not res!124778) (not e!165222))))

(assert (=> b!254886 (= res!124778 (inRange!0 (index!6819 lt!127822) (mask!10945 thiss!1504)))))

(declare-fun b!254887 () Bool)

(assert (=> b!254887 (= e!165222 (= (select (arr!5896 (_keys!6851 thiss!1504)) (index!6819 lt!127822)) key!932))))

(assert (=> b!254887 (and (bvsge (index!6819 lt!127822) #b00000000000000000000000000000000) (bvslt (index!6819 lt!127822) (size!6243 (_keys!6851 thiss!1504))))))

(assert (= (and d!61443 res!124779) b!254886))

(assert (= (and b!254886 res!124778) b!254887))

(assert (=> d!61443 m!270189))

(declare-fun m!270455 () Bool)

(assert (=> d!61443 m!270455))

(assert (=> d!61443 m!270253))

(declare-fun m!270457 () Bool)

(assert (=> b!254886 m!270457))

(declare-fun m!270459 () Bool)

(assert (=> b!254887 m!270459))

(assert (=> b!254596 d!61443))

(declare-fun condMapEmpty!11154 () Bool)

(declare-fun mapDefault!11154 () ValueCell!2934)

(assert (=> mapNonEmpty!11148 (= condMapEmpty!11154 (= mapRest!11148 ((as const (Array (_ BitVec 32) ValueCell!2934)) mapDefault!11154)))))

(declare-fun e!165228 () Bool)

(declare-fun mapRes!11154 () Bool)

(assert (=> mapNonEmpty!11148 (= tp!23366 (and e!165228 mapRes!11154))))

(declare-fun b!254895 () Bool)

(assert (=> b!254895 (= e!165228 tp_is_empty!6555)))

(declare-fun mapIsEmpty!11154 () Bool)

(assert (=> mapIsEmpty!11154 mapRes!11154))

(declare-fun b!254894 () Bool)

(declare-fun e!165227 () Bool)

(assert (=> b!254894 (= e!165227 tp_is_empty!6555)))

(declare-fun mapNonEmpty!11154 () Bool)

(declare-fun tp!23376 () Bool)

(assert (=> mapNonEmpty!11154 (= mapRes!11154 (and tp!23376 e!165227))))

(declare-fun mapValue!11154 () ValueCell!2934)

(declare-fun mapKey!11154 () (_ BitVec 32))

(declare-fun mapRest!11154 () (Array (_ BitVec 32) ValueCell!2934))

(assert (=> mapNonEmpty!11154 (= mapRest!11148 (store mapRest!11154 mapKey!11154 mapValue!11154))))

(assert (= (and mapNonEmpty!11148 condMapEmpty!11154) mapIsEmpty!11154))

(assert (= (and mapNonEmpty!11148 (not condMapEmpty!11154)) mapNonEmpty!11154))

(assert (= (and mapNonEmpty!11154 ((_ is ValueCellFull!2934) mapValue!11154)) b!254894))

(assert (= (and mapNonEmpty!11148 ((_ is ValueCellFull!2934) mapDefault!11154)) b!254895))

(declare-fun m!270461 () Bool)

(assert (=> mapNonEmpty!11154 m!270461))

(declare-fun b_lambda!8165 () Bool)

(assert (= b_lambda!8163 (or (and b!254580 b_free!6693) b_lambda!8165)))

(declare-fun b_lambda!8167 () Bool)

(assert (= b_lambda!8161 (or (and b!254580 b_free!6693) b_lambda!8167)))

(check-sat (not b!254865) (not b!254716) (not d!61443) (not bm!24055) (not b!254788) (not b!254838) (not b!254787) (not b!254825) (not bm!24063) (not d!61427) (not bm!24069) b_and!13759 (not d!61409) (not b!254866) (not b!254760) (not b!254766) (not b_next!6693) (not d!61431) (not b!254791) (not b!254790) (not bm!24049) (not b!254827) (not b!254844) (not b!254869) (not b!254714) (not b!254768) (not b!254811) (not b!254665) (not b_lambda!8167) (not b!254764) (not bm!24056) (not bm!24058) (not b!254765) (not b!254793) (not b!254814) (not b!254762) (not b!254828) (not b!254880) (not b!254767) (not d!61403) (not b!254704) (not b!254853) (not bm!24031) (not b!254850) (not bm!24048) (not d!61419) (not b!254856) (not d!61417) (not bm!24053) (not b!254881) (not bm!24051) (not bm!24060) (not d!61433) (not b!254849) (not d!61439) (not b!254785) (not bm!24066) (not b!254783) (not b!254886) (not d!61421) (not d!61415) tp_is_empty!6555 (not d!61429) (not b_lambda!8165) (not bm!24032) (not bm!24070) (not d!61411) (not b!254812) (not mapNonEmpty!11154) (not b!254770) (not b!254879) (not b!254789))
(check-sat b_and!13759 (not b_next!6693))
