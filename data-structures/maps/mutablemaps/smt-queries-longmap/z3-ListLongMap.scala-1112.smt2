; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!22932 () Bool)

(assert start!22932)

(declare-fun b!239026 () Bool)

(declare-fun b_free!6423 () Bool)

(declare-fun b_next!6423 () Bool)

(assert (=> b!239026 (= b_free!6423 (not b_next!6423))))

(declare-fun tp!22472 () Bool)

(declare-fun b_and!13407 () Bool)

(assert (=> b!239026 (= tp!22472 b_and!13407)))

(declare-fun b!239016 () Bool)

(declare-fun e!155196 () Bool)

(declare-fun e!155206 () Bool)

(assert (=> b!239016 (= e!155196 e!155206)))

(declare-fun res!117152 () Bool)

(declare-fun call!22228 () Bool)

(assert (=> b!239016 (= res!117152 call!22228)))

(assert (=> b!239016 (=> (not res!117152) (not e!155206))))

(declare-fun b!239017 () Bool)

(declare-fun e!155203 () Bool)

(declare-fun tp_is_empty!6285 () Bool)

(assert (=> b!239017 (= e!155203 tp_is_empty!6285)))

(declare-fun b!239019 () Bool)

(declare-fun call!22227 () Bool)

(assert (=> b!239019 (= e!155206 (not call!22227))))

(declare-fun b!239020 () Bool)

(declare-fun e!155197 () Bool)

(declare-fun e!155201 () Bool)

(assert (=> b!239020 (= e!155197 e!155201)))

(declare-fun res!117158 () Bool)

(assert (=> b!239020 (=> (not res!117158) (not e!155201))))

(declare-datatypes ((SeekEntryResult!1037 0))(
  ( (MissingZero!1037 (index!6318 (_ BitVec 32))) (Found!1037 (index!6319 (_ BitVec 32))) (Intermediate!1037 (undefined!1849 Bool) (index!6320 (_ BitVec 32)) (x!24093 (_ BitVec 32))) (Undefined!1037) (MissingVacant!1037 (index!6321 (_ BitVec 32))) )
))
(declare-fun lt!120738 () SeekEntryResult!1037)

(declare-fun index!297 () (_ BitVec 32))

(assert (=> b!239020 (= res!117158 (or (= lt!120738 (MissingZero!1037 index!297)) (= lt!120738 (MissingVacant!1037 index!297))))))

(declare-fun key!932 () (_ BitVec 64))

(declare-datatypes ((V!8027 0))(
  ( (V!8028 (val!3187 Int)) )
))
(declare-datatypes ((ValueCell!2799 0))(
  ( (ValueCellFull!2799 (v!5221 V!8027)) (EmptyCell!2799) )
))
(declare-datatypes ((array!11848 0))(
  ( (array!11849 (arr!5625 (Array (_ BitVec 32) ValueCell!2799)) (size!5966 (_ BitVec 32))) )
))
(declare-datatypes ((array!11850 0))(
  ( (array!11851 (arr!5626 (Array (_ BitVec 32) (_ BitVec 64))) (size!5967 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!3498 0))(
  ( (LongMapFixedSize!3499 (defaultEntry!4434 Int) (mask!10476 (_ BitVec 32)) (extraKeys!4171 (_ BitVec 32)) (zeroValue!4275 V!8027) (minValue!4275 V!8027) (_size!1798 (_ BitVec 32)) (_keys!6536 array!11850) (_values!4417 array!11848) (_vacant!1798 (_ BitVec 32))) )
))
(declare-fun thiss!1504 () LongMapFixedSize!3498)

(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!11850 (_ BitVec 32)) SeekEntryResult!1037)

(assert (=> b!239020 (= lt!120738 (seekEntryOrOpen!0 key!932 (_keys!6536 thiss!1504) (mask!10476 thiss!1504)))))

(declare-fun b!239021 () Bool)

(get-info :version)

(assert (=> b!239021 (= e!155196 ((_ is Undefined!1037) lt!120738))))

(declare-fun mapNonEmpty!10659 () Bool)

(declare-fun mapRes!10659 () Bool)

(declare-fun tp!22473 () Bool)

(assert (=> mapNonEmpty!10659 (= mapRes!10659 (and tp!22473 e!155203))))

(declare-fun mapRest!10659 () (Array (_ BitVec 32) ValueCell!2799))

(declare-fun mapKey!10659 () (_ BitVec 32))

(declare-fun mapValue!10659 () ValueCell!2799)

(assert (=> mapNonEmpty!10659 (= (arr!5625 (_values!4417 thiss!1504)) (store mapRest!10659 mapKey!10659 mapValue!10659))))

(declare-fun b!239022 () Bool)

(declare-fun e!155205 () Bool)

(assert (=> b!239022 (= e!155201 e!155205)))

(declare-fun res!117159 () Bool)

(assert (=> b!239022 (=> (not res!117159) (not e!155205))))

(declare-fun inRange!0 ((_ BitVec 32) (_ BitVec 32)) Bool)

(assert (=> b!239022 (= res!117159 (inRange!0 index!297 (mask!10476 thiss!1504)))))

(declare-datatypes ((Unit!7333 0))(
  ( (Unit!7334) )
))
(declare-fun lt!120736 () Unit!7333)

(declare-fun e!155204 () Unit!7333)

(assert (=> b!239022 (= lt!120736 e!155204)))

(declare-fun c!39837 () Bool)

(declare-datatypes ((tuple2!4692 0))(
  ( (tuple2!4693 (_1!2356 (_ BitVec 64)) (_2!2356 V!8027)) )
))
(declare-datatypes ((List!3610 0))(
  ( (Nil!3607) (Cons!3606 (h!4262 tuple2!4692) (t!8613 List!3610)) )
))
(declare-datatypes ((ListLongMap!3619 0))(
  ( (ListLongMap!3620 (toList!1825 List!3610)) )
))
(declare-fun contains!1707 (ListLongMap!3619 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!1348 (array!11850 array!11848 (_ BitVec 32) (_ BitVec 32) V!8027 V!8027 (_ BitVec 32) Int) ListLongMap!3619)

(assert (=> b!239022 (= c!39837 (contains!1707 (getCurrentListMap!1348 (_keys!6536 thiss!1504) (_values!4417 thiss!1504) (mask!10476 thiss!1504) (extraKeys!4171 thiss!1504) (zeroValue!4275 thiss!1504) (minValue!4275 thiss!1504) #b00000000000000000000000000000000 (defaultEntry!4434 thiss!1504)) key!932))))

(declare-fun c!39838 () Bool)

(declare-fun bm!22224 () Bool)

(assert (=> bm!22224 (= call!22228 (inRange!0 (ite c!39838 (index!6318 lt!120738) (index!6321 lt!120738)) (mask!10476 thiss!1504)))))

(declare-fun b!239023 () Bool)

(declare-fun res!117157 () Bool)

(declare-fun e!155195 () Bool)

(assert (=> b!239023 (=> (not res!117157) (not e!155195))))

(assert (=> b!239023 (= res!117157 (= (select (arr!5626 (_keys!6536 thiss!1504)) (index!6318 lt!120738)) #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!239024 () Bool)

(declare-fun e!155199 () Bool)

(assert (=> b!239024 (= e!155199 tp_is_empty!6285)))

(declare-fun b!239025 () Bool)

(declare-fun res!117155 () Bool)

(assert (=> b!239025 (=> (not res!117155) (not e!155205))))

(declare-fun arrayContainsKey!0 (array!11850 (_ BitVec 64) (_ BitVec 32)) Bool)

(assert (=> b!239025 (= res!117155 (arrayContainsKey!0 (_keys!6536 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun e!155207 () Bool)

(declare-fun e!155198 () Bool)

(declare-fun array_inv!3711 (array!11850) Bool)

(declare-fun array_inv!3712 (array!11848) Bool)

(assert (=> b!239026 (= e!155207 (and tp!22472 tp_is_empty!6285 (array_inv!3711 (_keys!6536 thiss!1504)) (array_inv!3712 (_values!4417 thiss!1504)) e!155198))))

(declare-fun b!239027 () Bool)

(declare-fun res!117153 () Bool)

(assert (=> b!239027 (= res!117153 (= (select (arr!5626 (_keys!6536 thiss!1504)) (index!6321 lt!120738)) #b1000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!239027 (=> (not res!117153) (not e!155206))))

(declare-fun res!117161 () Bool)

(assert (=> start!22932 (=> (not res!117161) (not e!155197))))

(declare-fun valid!1371 (LongMapFixedSize!3498) Bool)

(assert (=> start!22932 (= res!117161 (valid!1371 thiss!1504))))

(assert (=> start!22932 e!155197))

(assert (=> start!22932 e!155207))

(assert (=> start!22932 true))

(declare-fun b!239018 () Bool)

(declare-fun Unit!7335 () Unit!7333)

(assert (=> b!239018 (= e!155204 Unit!7335)))

(declare-fun lt!120739 () Unit!7333)

(declare-fun lemmaInListMapThenSeekEntryOrOpenFindsIt!323 (array!11850 array!11848 (_ BitVec 32) (_ BitVec 32) V!8027 V!8027 (_ BitVec 64) Int) Unit!7333)

(assert (=> b!239018 (= lt!120739 (lemmaInListMapThenSeekEntryOrOpenFindsIt!323 (_keys!6536 thiss!1504) (_values!4417 thiss!1504) (mask!10476 thiss!1504) (extraKeys!4171 thiss!1504) (zeroValue!4275 thiss!1504) (minValue!4275 thiss!1504) key!932 (defaultEntry!4434 thiss!1504)))))

(assert (=> b!239018 false))

(declare-fun b!239028 () Bool)

(assert (=> b!239028 (= e!155205 (and (= (size!5966 (_values!4417 thiss!1504)) (bvadd #b00000000000000000000000000000001 (mask!10476 thiss!1504))) (not (= (size!5967 (_keys!6536 thiss!1504)) (size!5966 (_values!4417 thiss!1504))))))))

(declare-fun bm!22225 () Bool)

(assert (=> bm!22225 (= call!22227 (arrayContainsKey!0 (_keys!6536 thiss!1504) key!932 #b00000000000000000000000000000000))))

(declare-fun b!239029 () Bool)

(assert (=> b!239029 (= e!155198 (and e!155199 mapRes!10659))))

(declare-fun condMapEmpty!10659 () Bool)

(declare-fun mapDefault!10659 () ValueCell!2799)

(assert (=> b!239029 (= condMapEmpty!10659 (= (arr!5625 (_values!4417 thiss!1504)) ((as const (Array (_ BitVec 32) ValueCell!2799)) mapDefault!10659)))))

(declare-fun b!239030 () Bool)

(assert (=> b!239030 (= e!155195 (not call!22227))))

(declare-fun mapIsEmpty!10659 () Bool)

(assert (=> mapIsEmpty!10659 mapRes!10659))

(declare-fun b!239031 () Bool)

(declare-fun res!117154 () Bool)

(assert (=> b!239031 (=> (not res!117154) (not e!155197))))

(assert (=> b!239031 (= res!117154 (and (not (= key!932 #b0000000000000000000000000000000000000000000000000000000000000000)) (not (= key!932 #b1000000000000000000000000000000000000000000000000000000000000000))))))

(declare-fun b!239032 () Bool)

(declare-fun lt!120737 () Unit!7333)

(assert (=> b!239032 (= e!155204 lt!120737)))

(declare-fun lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!336 (array!11850 array!11848 (_ BitVec 32) (_ BitVec 32) V!8027 V!8027 (_ BitVec 64) Int) Unit!7333)

(assert (=> b!239032 (= lt!120737 (lemmaNotInListMapThenSeekEntryOrOpenFindsFreeOrNothing!336 (_keys!6536 thiss!1504) (_values!4417 thiss!1504) (mask!10476 thiss!1504) (extraKeys!4171 thiss!1504) (zeroValue!4275 thiss!1504) (minValue!4275 thiss!1504) key!932 (defaultEntry!4434 thiss!1504)))))

(assert (=> b!239032 (= c!39838 ((_ is MissingZero!1037) lt!120738))))

(declare-fun e!155200 () Bool)

(assert (=> b!239032 e!155200))

(declare-fun b!239033 () Bool)

(declare-fun res!117156 () Bool)

(assert (=> b!239033 (=> (not res!117156) (not e!155205))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!239033 (= res!117156 (validMask!0 (mask!10476 thiss!1504)))))

(declare-fun b!239034 () Bool)

(declare-fun c!39836 () Bool)

(assert (=> b!239034 (= c!39836 ((_ is MissingVacant!1037) lt!120738))))

(assert (=> b!239034 (= e!155200 e!155196)))

(declare-fun b!239035 () Bool)

(declare-fun res!117160 () Bool)

(assert (=> b!239035 (=> (not res!117160) (not e!155195))))

(assert (=> b!239035 (= res!117160 call!22228)))

(assert (=> b!239035 (= e!155200 e!155195)))

(assert (= (and start!22932 res!117161) b!239031))

(assert (= (and b!239031 res!117154) b!239020))

(assert (= (and b!239020 res!117158) b!239022))

(assert (= (and b!239022 c!39837) b!239018))

(assert (= (and b!239022 (not c!39837)) b!239032))

(assert (= (and b!239032 c!39838) b!239035))

(assert (= (and b!239032 (not c!39838)) b!239034))

(assert (= (and b!239035 res!117160) b!239023))

(assert (= (and b!239023 res!117157) b!239030))

(assert (= (and b!239034 c!39836) b!239016))

(assert (= (and b!239034 (not c!39836)) b!239021))

(assert (= (and b!239016 res!117152) b!239027))

(assert (= (and b!239027 res!117153) b!239019))

(assert (= (or b!239035 b!239016) bm!22224))

(assert (= (or b!239030 b!239019) bm!22225))

(assert (= (and b!239022 res!117159) b!239025))

(assert (= (and b!239025 res!117155) b!239033))

(assert (= (and b!239033 res!117156) b!239028))

(assert (= (and b!239029 condMapEmpty!10659) mapIsEmpty!10659))

(assert (= (and b!239029 (not condMapEmpty!10659)) mapNonEmpty!10659))

(assert (= (and mapNonEmpty!10659 ((_ is ValueCellFull!2799) mapValue!10659)) b!239017))

(assert (= (and b!239029 ((_ is ValueCellFull!2799) mapDefault!10659)) b!239024))

(assert (= b!239026 b!239029))

(assert (= start!22932 b!239026))

(declare-fun m!259297 () Bool)

(assert (=> mapNonEmpty!10659 m!259297))

(declare-fun m!259299 () Bool)

(assert (=> b!239022 m!259299))

(declare-fun m!259301 () Bool)

(assert (=> b!239022 m!259301))

(assert (=> b!239022 m!259301))

(declare-fun m!259303 () Bool)

(assert (=> b!239022 m!259303))

(declare-fun m!259305 () Bool)

(assert (=> bm!22225 m!259305))

(declare-fun m!259307 () Bool)

(assert (=> b!239020 m!259307))

(declare-fun m!259309 () Bool)

(assert (=> b!239027 m!259309))

(declare-fun m!259311 () Bool)

(assert (=> start!22932 m!259311))

(declare-fun m!259313 () Bool)

(assert (=> b!239026 m!259313))

(declare-fun m!259315 () Bool)

(assert (=> b!239026 m!259315))

(declare-fun m!259317 () Bool)

(assert (=> b!239033 m!259317))

(assert (=> b!239025 m!259305))

(declare-fun m!259319 () Bool)

(assert (=> b!239023 m!259319))

(declare-fun m!259321 () Bool)

(assert (=> bm!22224 m!259321))

(declare-fun m!259323 () Bool)

(assert (=> b!239018 m!259323))

(declare-fun m!259325 () Bool)

(assert (=> b!239032 m!259325))

(check-sat (not bm!22225) (not b!239032) (not b!239033) (not b!239018) b_and!13407 (not b!239026) (not bm!22224) (not mapNonEmpty!10659) (not b!239022) (not b_next!6423) tp_is_empty!6285 (not b!239025) (not b!239020) (not start!22932))
(check-sat b_and!13407 (not b_next!6423))
