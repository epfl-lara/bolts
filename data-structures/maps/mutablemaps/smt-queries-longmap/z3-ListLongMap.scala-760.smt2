; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!17874 () Bool)

(assert start!17874)

(declare-fun b!178173 () Bool)

(declare-fun b_free!4401 () Bool)

(declare-fun b_next!4401 () Bool)

(assert (=> b!178173 (= b_free!4401 (not b_next!4401))))

(declare-fun tp!15914 () Bool)

(declare-fun b_and!10933 () Bool)

(assert (=> b!178173 (= tp!15914 b_and!10933)))

(declare-fun b!178170 () Bool)

(declare-fun res!84435 () Bool)

(declare-fun e!117460 () Bool)

(assert (=> b!178170 (=> (not res!84435) (not e!117460))))

(declare-fun key!828 () (_ BitVec 64))

(assert (=> b!178170 (= res!84435 (not (= key!828 (bvneg key!828))))))

(declare-fun b!178171 () Bool)

(declare-fun e!117463 () Bool)

(declare-fun e!117461 () Bool)

(declare-fun mapRes!7133 () Bool)

(assert (=> b!178171 (= e!117463 (and e!117461 mapRes!7133))))

(declare-fun condMapEmpty!7133 () Bool)

(declare-datatypes ((V!5211 0))(
  ( (V!5212 (val!2131 Int)) )
))
(declare-datatypes ((ValueCell!1743 0))(
  ( (ValueCellFull!1743 (v!4010 V!5211)) (EmptyCell!1743) )
))
(declare-datatypes ((array!7502 0))(
  ( (array!7503 (arr!3556 (Array (_ BitVec 32) (_ BitVec 64))) (size!3862 (_ BitVec 32))) )
))
(declare-datatypes ((array!7504 0))(
  ( (array!7505 (arr!3557 (Array (_ BitVec 32) ValueCell!1743)) (size!3863 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!2394 0))(
  ( (LongMapFixedSize!2395 (defaultEntry!3665 Int) (mask!8621 (_ BitVec 32)) (extraKeys!3402 (_ BitVec 32)) (zeroValue!3506 V!5211) (minValue!3506 V!5211) (_size!1246 (_ BitVec 32)) (_keys!5541 array!7502) (_values!3648 array!7504) (_vacant!1246 (_ BitVec 32))) )
))
(declare-fun thiss!1248 () LongMapFixedSize!2394)

(declare-fun mapDefault!7133 () ValueCell!1743)

(assert (=> b!178171 (= condMapEmpty!7133 (= (arr!3557 (_values!3648 thiss!1248)) ((as const (Array (_ BitVec 32) ValueCell!1743)) mapDefault!7133)))))

(declare-fun b!178172 () Bool)

(declare-fun res!84434 () Bool)

(assert (=> b!178172 (=> (not res!84434) (not e!117460))))

(declare-datatypes ((tuple2!3310 0))(
  ( (tuple2!3311 (_1!1665 (_ BitVec 64)) (_2!1665 V!5211)) )
))
(declare-datatypes ((List!2281 0))(
  ( (Nil!2278) (Cons!2277 (h!2900 tuple2!3310) (t!7125 List!2281)) )
))
(declare-datatypes ((ListLongMap!2251 0))(
  ( (ListLongMap!2252 (toList!1141 List!2281)) )
))
(declare-fun contains!1205 (ListLongMap!2251 (_ BitVec 64)) Bool)

(declare-fun getCurrentListMap!788 (array!7502 array!7504 (_ BitVec 32) (_ BitVec 32) V!5211 V!5211 (_ BitVec 32) Int) ListLongMap!2251)

(assert (=> b!178172 (= res!84434 (not (contains!1205 (getCurrentListMap!788 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)) key!828)))))

(declare-fun res!84437 () Bool)

(assert (=> start!17874 (=> (not res!84437) (not e!117460))))

(declare-fun valid!995 (LongMapFixedSize!2394) Bool)

(assert (=> start!17874 (= res!84437 (valid!995 thiss!1248))))

(assert (=> start!17874 e!117460))

(declare-fun e!117462 () Bool)

(assert (=> start!17874 e!117462))

(assert (=> start!17874 true))

(declare-fun tp_is_empty!4173 () Bool)

(declare-fun array_inv!2275 (array!7502) Bool)

(declare-fun array_inv!2276 (array!7504) Bool)

(assert (=> b!178173 (= e!117462 (and tp!15914 tp_is_empty!4173 (array_inv!2275 (_keys!5541 thiss!1248)) (array_inv!2276 (_values!3648 thiss!1248)) e!117463))))

(declare-fun mapIsEmpty!7133 () Bool)

(assert (=> mapIsEmpty!7133 mapRes!7133))

(declare-fun b!178174 () Bool)

(declare-fun e!117464 () Bool)

(assert (=> b!178174 (= e!117464 tp_is_empty!4173)))

(declare-fun mapNonEmpty!7133 () Bool)

(declare-fun tp!15913 () Bool)

(assert (=> mapNonEmpty!7133 (= mapRes!7133 (and tp!15913 e!117464))))

(declare-fun mapKey!7133 () (_ BitVec 32))

(declare-fun mapValue!7133 () ValueCell!1743)

(declare-fun mapRest!7133 () (Array (_ BitVec 32) ValueCell!1743))

(assert (=> mapNonEmpty!7133 (= (arr!3557 (_values!3648 thiss!1248)) (store mapRest!7133 mapKey!7133 mapValue!7133))))

(declare-fun b!178175 () Bool)

(assert (=> b!178175 (= e!117461 tp_is_empty!4173)))

(declare-fun b!178176 () Bool)

(declare-fun res!84438 () Bool)

(assert (=> b!178176 (=> (not res!84438) (not e!117460))))

(get-info :version)

(declare-datatypes ((SeekEntryResult!583 0))(
  ( (MissingZero!583 (index!4500 (_ BitVec 32))) (Found!583 (index!4501 (_ BitVec 32))) (Intermediate!583 (undefined!1395 Bool) (index!4502 (_ BitVec 32)) (x!19533 (_ BitVec 32))) (Undefined!583) (MissingVacant!583 (index!4503 (_ BitVec 32))) )
))
(declare-fun seekEntryOrOpen!0 ((_ BitVec 64) array!7502 (_ BitVec 32)) SeekEntryResult!583)

(assert (=> b!178176 (= res!84438 ((_ is Undefined!583) (seekEntryOrOpen!0 key!828 (_keys!5541 thiss!1248) (mask!8621 thiss!1248))))))

(declare-fun b!178177 () Bool)

(assert (=> b!178177 (= e!117460 (and (= (size!3863 (_values!3648 thiss!1248)) (bvadd #b00000000000000000000000000000001 (mask!8621 thiss!1248))) (= (size!3862 (_keys!5541 thiss!1248)) (size!3863 (_values!3648 thiss!1248))) (bvslt (mask!8621 thiss!1248) #b00000000000000000000000000000000)))))

(declare-fun b!178178 () Bool)

(declare-fun res!84436 () Bool)

(assert (=> b!178178 (=> (not res!84436) (not e!117460))))

(declare-fun validMask!0 ((_ BitVec 32)) Bool)

(assert (=> b!178178 (= res!84436 (validMask!0 (mask!8621 thiss!1248)))))

(assert (= (and start!17874 res!84437) b!178170))

(assert (= (and b!178170 res!84435) b!178176))

(assert (= (and b!178176 res!84438) b!178172))

(assert (= (and b!178172 res!84434) b!178178))

(assert (= (and b!178178 res!84436) b!178177))

(assert (= (and b!178171 condMapEmpty!7133) mapIsEmpty!7133))

(assert (= (and b!178171 (not condMapEmpty!7133)) mapNonEmpty!7133))

(assert (= (and mapNonEmpty!7133 ((_ is ValueCellFull!1743) mapValue!7133)) b!178174))

(assert (= (and b!178171 ((_ is ValueCellFull!1743) mapDefault!7133)) b!178175))

(assert (= b!178173 b!178171))

(assert (= start!17874 b!178173))

(declare-fun m!206637 () Bool)

(assert (=> start!17874 m!206637))

(declare-fun m!206639 () Bool)

(assert (=> b!178172 m!206639))

(assert (=> b!178172 m!206639))

(declare-fun m!206641 () Bool)

(assert (=> b!178172 m!206641))

(declare-fun m!206643 () Bool)

(assert (=> b!178173 m!206643))

(declare-fun m!206645 () Bool)

(assert (=> b!178173 m!206645))

(declare-fun m!206647 () Bool)

(assert (=> b!178178 m!206647))

(declare-fun m!206649 () Bool)

(assert (=> mapNonEmpty!7133 m!206649))

(declare-fun m!206651 () Bool)

(assert (=> b!178176 m!206651))

(check-sat (not b!178172) (not mapNonEmpty!7133) (not start!17874) (not b_next!4401) tp_is_empty!4173 (not b!178178) (not b!178173) (not b!178176) b_and!10933)
(check-sat b_and!10933 (not b_next!4401))
(get-model)

(declare-fun d!53845 () Bool)

(declare-fun e!117487 () Bool)

(assert (=> d!53845 e!117487))

(declare-fun res!84456 () Bool)

(assert (=> d!53845 (=> res!84456 e!117487)))

(declare-fun lt!88097 () Bool)

(assert (=> d!53845 (= res!84456 (not lt!88097))))

(declare-fun lt!88099 () Bool)

(assert (=> d!53845 (= lt!88097 lt!88099)))

(declare-datatypes ((Unit!5437 0))(
  ( (Unit!5438) )
))
(declare-fun lt!88100 () Unit!5437)

(declare-fun e!117488 () Unit!5437)

(assert (=> d!53845 (= lt!88100 e!117488)))

(declare-fun c!31916 () Bool)

(assert (=> d!53845 (= c!31916 lt!88099)))

(declare-fun containsKey!201 (List!2281 (_ BitVec 64)) Bool)

(assert (=> d!53845 (= lt!88099 (containsKey!201 (toList!1141 (getCurrentListMap!788 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248))) key!828))))

(assert (=> d!53845 (= (contains!1205 (getCurrentListMap!788 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)) key!828) lt!88097)))

(declare-fun b!178212 () Bool)

(declare-fun lt!88098 () Unit!5437)

(assert (=> b!178212 (= e!117488 lt!88098)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!150 (List!2281 (_ BitVec 64)) Unit!5437)

(assert (=> b!178212 (= lt!88098 (lemmaContainsKeyImpliesGetValueByKeyDefined!150 (toList!1141 (getCurrentListMap!788 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248))) key!828))))

(declare-datatypes ((Option!203 0))(
  ( (Some!202 (v!4012 V!5211)) (None!201) )
))
(declare-fun isDefined!151 (Option!203) Bool)

(declare-fun getValueByKey!197 (List!2281 (_ BitVec 64)) Option!203)

(assert (=> b!178212 (isDefined!151 (getValueByKey!197 (toList!1141 (getCurrentListMap!788 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248))) key!828))))

(declare-fun b!178213 () Bool)

(declare-fun Unit!5439 () Unit!5437)

(assert (=> b!178213 (= e!117488 Unit!5439)))

(declare-fun b!178214 () Bool)

(assert (=> b!178214 (= e!117487 (isDefined!151 (getValueByKey!197 (toList!1141 (getCurrentListMap!788 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248))) key!828)))))

(assert (= (and d!53845 c!31916) b!178212))

(assert (= (and d!53845 (not c!31916)) b!178213))

(assert (= (and d!53845 (not res!84456)) b!178214))

(declare-fun m!206669 () Bool)

(assert (=> d!53845 m!206669))

(declare-fun m!206671 () Bool)

(assert (=> b!178212 m!206671))

(declare-fun m!206673 () Bool)

(assert (=> b!178212 m!206673))

(assert (=> b!178212 m!206673))

(declare-fun m!206675 () Bool)

(assert (=> b!178212 m!206675))

(assert (=> b!178214 m!206673))

(assert (=> b!178214 m!206673))

(assert (=> b!178214 m!206675))

(assert (=> b!178172 d!53845))

(declare-fun bm!18020 () Bool)

(declare-fun call!18028 () Bool)

(declare-fun lt!88162 () ListLongMap!2251)

(assert (=> bm!18020 (= call!18028 (contains!1205 lt!88162 #b0000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun b!178258 () Bool)

(declare-fun e!117521 () Bool)

(declare-fun e!117525 () Bool)

(assert (=> b!178258 (= e!117521 e!117525)))

(declare-fun c!31932 () Bool)

(assert (=> b!178258 (= c!31932 (not (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun bm!18021 () Bool)

(declare-fun call!18025 () ListLongMap!2251)

(declare-fun call!18029 () ListLongMap!2251)

(assert (=> bm!18021 (= call!18025 call!18029)))

(declare-fun b!178259 () Bool)

(declare-fun c!31934 () Bool)

(assert (=> b!178259 (= c!31934 (and (not (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun e!117522 () ListLongMap!2251)

(declare-fun e!117524 () ListLongMap!2251)

(assert (=> b!178259 (= e!117522 e!117524)))

(declare-fun call!18024 () ListLongMap!2251)

(declare-fun c!31929 () Bool)

(declare-fun call!18026 () ListLongMap!2251)

(declare-fun c!31931 () Bool)

(declare-fun bm!18022 () Bool)

(declare-fun +!255 (ListLongMap!2251 tuple2!3310) ListLongMap!2251)

(assert (=> bm!18022 (= call!18024 (+!255 (ite c!31929 call!18029 (ite c!31931 call!18025 call!18026)) (ite (or c!31929 c!31931) (tuple2!3311 #b0000000000000000000000000000000000000000000000000000000000000000 (zeroValue!3506 thiss!1248)) (tuple2!3311 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3506 thiss!1248)))))))

(declare-fun b!178260 () Bool)

(declare-fun e!117516 () Bool)

(declare-fun e!117517 () Bool)

(assert (=> b!178260 (= e!117516 e!117517)))

(declare-fun res!84479 () Bool)

(assert (=> b!178260 (= res!84479 call!18028)))

(assert (=> b!178260 (=> (not res!84479) (not e!117517))))

(declare-fun b!178261 () Bool)

(declare-fun e!117523 () ListLongMap!2251)

(assert (=> b!178261 (= e!117523 e!117522)))

(assert (=> b!178261 (= c!31931 (and (not (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000)))))

(declare-fun b!178262 () Bool)

(declare-fun res!84476 () Bool)

(assert (=> b!178262 (=> (not res!84476) (not e!117521))))

(declare-fun e!117520 () Bool)

(assert (=> b!178262 (= res!84476 e!117520)))

(declare-fun res!84483 () Bool)

(assert (=> b!178262 (=> res!84483 e!117520)))

(declare-fun e!117519 () Bool)

(assert (=> b!178262 (= res!84483 (not e!117519))))

(declare-fun res!84480 () Bool)

(assert (=> b!178262 (=> (not res!84480) (not e!117519))))

(assert (=> b!178262 (= res!84480 (bvslt #b00000000000000000000000000000000 (size!3862 (_keys!5541 thiss!1248))))))

(declare-fun b!178263 () Bool)

(declare-fun e!117515 () Bool)

(assert (=> b!178263 (= e!117520 e!117515)))

(declare-fun res!84481 () Bool)

(assert (=> b!178263 (=> (not res!84481) (not e!117515))))

(assert (=> b!178263 (= res!84481 (contains!1205 lt!88162 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000)))))

(assert (=> b!178263 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3862 (_keys!5541 thiss!1248))))))

(declare-fun b!178264 () Bool)

(declare-fun e!117518 () Unit!5437)

(declare-fun lt!88146 () Unit!5437)

(assert (=> b!178264 (= e!117518 lt!88146)))

(declare-fun lt!88151 () ListLongMap!2251)

(declare-fun getCurrentListMapNoExtraKeys!173 (array!7502 array!7504 (_ BitVec 32) (_ BitVec 32) V!5211 V!5211 (_ BitVec 32) Int) ListLongMap!2251)

(assert (=> b!178264 (= lt!88151 (getCurrentListMapNoExtraKeys!173 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)))))

(declare-fun lt!88160 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88160 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88159 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88159 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88148 () Unit!5437)

(declare-fun addStillContains!119 (ListLongMap!2251 (_ BitVec 64) V!5211 (_ BitVec 64)) Unit!5437)

(assert (=> b!178264 (= lt!88148 (addStillContains!119 lt!88151 lt!88160 (zeroValue!3506 thiss!1248) lt!88159))))

(assert (=> b!178264 (contains!1205 (+!255 lt!88151 (tuple2!3311 lt!88160 (zeroValue!3506 thiss!1248))) lt!88159)))

(declare-fun lt!88145 () Unit!5437)

(assert (=> b!178264 (= lt!88145 lt!88148)))

(declare-fun lt!88153 () ListLongMap!2251)

(assert (=> b!178264 (= lt!88153 (getCurrentListMapNoExtraKeys!173 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)))))

(declare-fun lt!88150 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88150 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88164 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88164 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88163 () Unit!5437)

(declare-fun addApplyDifferent!119 (ListLongMap!2251 (_ BitVec 64) V!5211 (_ BitVec 64)) Unit!5437)

(assert (=> b!178264 (= lt!88163 (addApplyDifferent!119 lt!88153 lt!88150 (minValue!3506 thiss!1248) lt!88164))))

(declare-fun apply!143 (ListLongMap!2251 (_ BitVec 64)) V!5211)

(assert (=> b!178264 (= (apply!143 (+!255 lt!88153 (tuple2!3311 lt!88150 (minValue!3506 thiss!1248))) lt!88164) (apply!143 lt!88153 lt!88164))))

(declare-fun lt!88149 () Unit!5437)

(assert (=> b!178264 (= lt!88149 lt!88163)))

(declare-fun lt!88166 () ListLongMap!2251)

(assert (=> b!178264 (= lt!88166 (getCurrentListMapNoExtraKeys!173 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)))))

(declare-fun lt!88154 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88154 #b0000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88161 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88161 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000))))

(declare-fun lt!88156 () Unit!5437)

(assert (=> b!178264 (= lt!88156 (addApplyDifferent!119 lt!88166 lt!88154 (zeroValue!3506 thiss!1248) lt!88161))))

(assert (=> b!178264 (= (apply!143 (+!255 lt!88166 (tuple2!3311 lt!88154 (zeroValue!3506 thiss!1248))) lt!88161) (apply!143 lt!88166 lt!88161))))

(declare-fun lt!88155 () Unit!5437)

(assert (=> b!178264 (= lt!88155 lt!88156)))

(declare-fun lt!88165 () ListLongMap!2251)

(assert (=> b!178264 (= lt!88165 (getCurrentListMapNoExtraKeys!173 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)))))

(declare-fun lt!88152 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88152 #b1000000000000000000000000000000000000000000000000000000000000000)))

(declare-fun lt!88158 () (_ BitVec 64))

(assert (=> b!178264 (= lt!88158 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178264 (= lt!88146 (addApplyDifferent!119 lt!88165 lt!88152 (minValue!3506 thiss!1248) lt!88158))))

(assert (=> b!178264 (= (apply!143 (+!255 lt!88165 (tuple2!3311 lt!88152 (minValue!3506 thiss!1248))) lt!88158) (apply!143 lt!88165 lt!88158))))

(declare-fun b!178265 () Bool)

(declare-fun call!18023 () ListLongMap!2251)

(assert (=> b!178265 (= e!117524 call!18023)))

(declare-fun bm!18023 () Bool)

(assert (=> bm!18023 (= call!18023 call!18024)))

(declare-fun b!178266 () Bool)

(declare-fun call!18027 () Bool)

(assert (=> b!178266 (= e!117525 (not call!18027))))

(declare-fun bm!18024 () Bool)

(assert (=> bm!18024 (= call!18027 (contains!1205 lt!88162 #b1000000000000000000000000000000000000000000000000000000000000000))))

(declare-fun d!53847 () Bool)

(assert (=> d!53847 e!117521))

(declare-fun res!84477 () Bool)

(assert (=> d!53847 (=> (not res!84477) (not e!117521))))

(assert (=> d!53847 (= res!84477 (or (bvsge #b00000000000000000000000000000000 (size!3862 (_keys!5541 thiss!1248))) (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3862 (_keys!5541 thiss!1248))))))))

(declare-fun lt!88157 () ListLongMap!2251)

(assert (=> d!53847 (= lt!88162 lt!88157)))

(declare-fun lt!88147 () Unit!5437)

(assert (=> d!53847 (= lt!88147 e!117518)))

(declare-fun c!31933 () Bool)

(declare-fun e!117526 () Bool)

(assert (=> d!53847 (= c!31933 e!117526)))

(declare-fun res!84478 () Bool)

(assert (=> d!53847 (=> (not res!84478) (not e!117526))))

(assert (=> d!53847 (= res!84478 (bvslt #b00000000000000000000000000000000 (size!3862 (_keys!5541 thiss!1248))))))

(assert (=> d!53847 (= lt!88157 e!117523)))

(assert (=> d!53847 (= c!31929 (and (not (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)) (not (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000010) #b00000000000000000000000000000000))))))

(assert (=> d!53847 (validMask!0 (mask!8621 thiss!1248))))

(assert (=> d!53847 (= (getCurrentListMap!788 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)) lt!88162)))

(declare-fun b!178257 () Bool)

(assert (=> b!178257 (= e!117517 (= (apply!143 lt!88162 #b0000000000000000000000000000000000000000000000000000000000000000) (zeroValue!3506 thiss!1248)))))

(declare-fun b!178267 () Bool)

(declare-fun Unit!5440 () Unit!5437)

(assert (=> b!178267 (= e!117518 Unit!5440)))

(declare-fun b!178268 () Bool)

(declare-fun validKeyInArray!0 ((_ BitVec 64)) Bool)

(assert (=> b!178268 (= e!117519 (validKeyInArray!0 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178269 () Bool)

(assert (=> b!178269 (= e!117524 call!18026)))

(declare-fun b!178270 () Bool)

(assert (=> b!178270 (= e!117522 call!18023)))

(declare-fun b!178271 () Bool)

(declare-fun e!117527 () Bool)

(assert (=> b!178271 (= e!117527 (= (apply!143 lt!88162 #b1000000000000000000000000000000000000000000000000000000000000000) (minValue!3506 thiss!1248)))))

(declare-fun b!178272 () Bool)

(assert (=> b!178272 (= e!117526 (validKeyInArray!0 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000)))))

(declare-fun b!178273 () Bool)

(declare-fun get!2033 (ValueCell!1743 V!5211) V!5211)

(declare-fun dynLambda!481 (Int (_ BitVec 64)) V!5211)

(assert (=> b!178273 (= e!117515 (= (apply!143 lt!88162 (select (arr!3556 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000)) (get!2033 (select (arr!3557 (_values!3648 thiss!1248)) #b00000000000000000000000000000000) (dynLambda!481 (defaultEntry!3665 thiss!1248) #b0000000000000000000000000000000000000000000000000000000000000000))))))

(assert (=> b!178273 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3863 (_values!3648 thiss!1248))))))

(assert (=> b!178273 (and (bvsge #b00000000000000000000000000000000 #b00000000000000000000000000000000) (bvslt #b00000000000000000000000000000000 (size!3862 (_keys!5541 thiss!1248))))))

(declare-fun b!178274 () Bool)

(assert (=> b!178274 (= e!117523 (+!255 call!18024 (tuple2!3311 #b1000000000000000000000000000000000000000000000000000000000000000 (minValue!3506 thiss!1248))))))

(declare-fun bm!18025 () Bool)

(assert (=> bm!18025 (= call!18026 call!18025)))

(declare-fun b!178275 () Bool)

(declare-fun res!84482 () Bool)

(assert (=> b!178275 (=> (not res!84482) (not e!117521))))

(assert (=> b!178275 (= res!84482 e!117516)))

(declare-fun c!31930 () Bool)

(assert (=> b!178275 (= c!31930 (not (= (bvand (extraKeys!3402 thiss!1248) #b00000000000000000000000000000001) #b00000000000000000000000000000000)))))

(declare-fun b!178276 () Bool)

(assert (=> b!178276 (= e!117525 e!117527)))

(declare-fun res!84475 () Bool)

(assert (=> b!178276 (= res!84475 call!18027)))

(assert (=> b!178276 (=> (not res!84475) (not e!117527))))

(declare-fun bm!18026 () Bool)

(assert (=> bm!18026 (= call!18029 (getCurrentListMapNoExtraKeys!173 (_keys!5541 thiss!1248) (_values!3648 thiss!1248) (mask!8621 thiss!1248) (extraKeys!3402 thiss!1248) (zeroValue!3506 thiss!1248) (minValue!3506 thiss!1248) #b00000000000000000000000000000000 (defaultEntry!3665 thiss!1248)))))

(declare-fun b!178277 () Bool)

(assert (=> b!178277 (= e!117516 (not call!18028))))

(assert (= (and d!53847 c!31929) b!178274))

(assert (= (and d!53847 (not c!31929)) b!178261))

(assert (= (and b!178261 c!31931) b!178270))

(assert (= (and b!178261 (not c!31931)) b!178259))

(assert (= (and b!178259 c!31934) b!178265))

(assert (= (and b!178259 (not c!31934)) b!178269))

(assert (= (or b!178265 b!178269) bm!18025))

(assert (= (or b!178270 bm!18025) bm!18021))

(assert (= (or b!178270 b!178265) bm!18023))

(assert (= (or b!178274 bm!18021) bm!18026))

(assert (= (or b!178274 bm!18023) bm!18022))

(assert (= (and d!53847 res!84478) b!178272))

(assert (= (and d!53847 c!31933) b!178264))

(assert (= (and d!53847 (not c!31933)) b!178267))

(assert (= (and d!53847 res!84477) b!178262))

(assert (= (and b!178262 res!84480) b!178268))

(assert (= (and b!178262 (not res!84483)) b!178263))

(assert (= (and b!178263 res!84481) b!178273))

(assert (= (and b!178262 res!84476) b!178275))

(assert (= (and b!178275 c!31930) b!178260))

(assert (= (and b!178275 (not c!31930)) b!178277))

(assert (= (and b!178260 res!84479) b!178257))

(assert (= (or b!178260 b!178277) bm!18020))

(assert (= (and b!178275 res!84482) b!178258))

(assert (= (and b!178258 c!31932) b!178276))

(assert (= (and b!178258 (not c!31932)) b!178266))

(assert (= (and b!178276 res!84475) b!178271))

(assert (= (or b!178276 b!178266) bm!18024))

(declare-fun b_lambda!7109 () Bool)

(assert (=> (not b_lambda!7109) (not b!178273)))

(declare-fun t!7127 () Bool)

(declare-fun tb!2805 () Bool)

(assert (=> (and b!178173 (= (defaultEntry!3665 thiss!1248) (defaultEntry!3665 thiss!1248)) t!7127) tb!2805))

(declare-fun result!4673 () Bool)

(assert (=> tb!2805 (= result!4673 tp_is_empty!4173)))

(assert (=> b!178273 t!7127))

(declare-fun b_and!10937 () Bool)

(assert (= b_and!10933 (and (=> t!7127 result!4673) b_and!10937)))

(declare-fun m!206677 () Bool)

(assert (=> b!178264 m!206677))

(declare-fun m!206679 () Bool)

(assert (=> b!178264 m!206679))

(declare-fun m!206681 () Bool)

(assert (=> b!178264 m!206681))

(declare-fun m!206683 () Bool)

(assert (=> b!178264 m!206683))

(declare-fun m!206685 () Bool)

(assert (=> b!178264 m!206685))

(declare-fun m!206687 () Bool)

(assert (=> b!178264 m!206687))

(assert (=> b!178264 m!206681))

(declare-fun m!206689 () Bool)

(assert (=> b!178264 m!206689))

(declare-fun m!206691 () Bool)

(assert (=> b!178264 m!206691))

(declare-fun m!206693 () Bool)

(assert (=> b!178264 m!206693))

(declare-fun m!206695 () Bool)

(assert (=> b!178264 m!206695))

(declare-fun m!206697 () Bool)

(assert (=> b!178264 m!206697))

(declare-fun m!206699 () Bool)

(assert (=> b!178264 m!206699))

(assert (=> b!178264 m!206677))

(assert (=> b!178264 m!206693))

(declare-fun m!206701 () Bool)

(assert (=> b!178264 m!206701))

(declare-fun m!206703 () Bool)

(assert (=> b!178264 m!206703))

(assert (=> b!178264 m!206695))

(declare-fun m!206705 () Bool)

(assert (=> b!178264 m!206705))

(declare-fun m!206707 () Bool)

(assert (=> b!178264 m!206707))

(declare-fun m!206709 () Bool)

(assert (=> b!178264 m!206709))

(declare-fun m!206711 () Bool)

(assert (=> b!178271 m!206711))

(assert (=> b!178263 m!206697))

(assert (=> b!178263 m!206697))

(declare-fun m!206713 () Bool)

(assert (=> b!178263 m!206713))

(declare-fun m!206715 () Bool)

(assert (=> bm!18024 m!206715))

(declare-fun m!206717 () Bool)

(assert (=> b!178257 m!206717))

(declare-fun m!206719 () Bool)

(assert (=> bm!18020 m!206719))

(assert (=> d!53847 m!206647))

(assert (=> b!178268 m!206697))

(assert (=> b!178268 m!206697))

(declare-fun m!206721 () Bool)

(assert (=> b!178268 m!206721))

(declare-fun m!206723 () Bool)

(assert (=> bm!18022 m!206723))

(declare-fun m!206725 () Bool)

(assert (=> b!178274 m!206725))

(assert (=> bm!18026 m!206707))

(assert (=> b!178272 m!206697))

(assert (=> b!178272 m!206697))

(assert (=> b!178272 m!206721))

(declare-fun m!206727 () Bool)

(assert (=> b!178273 m!206727))

(declare-fun m!206729 () Bool)

(assert (=> b!178273 m!206729))

(assert (=> b!178273 m!206727))

(declare-fun m!206731 () Bool)

(assert (=> b!178273 m!206731))

(assert (=> b!178273 m!206729))

(assert (=> b!178273 m!206697))

(assert (=> b!178273 m!206697))

(declare-fun m!206733 () Bool)

(assert (=> b!178273 m!206733))

(assert (=> b!178172 d!53847))

(declare-fun b!178292 () Bool)

(declare-fun e!117534 () SeekEntryResult!583)

(declare-fun lt!88174 () SeekEntryResult!583)

(assert (=> b!178292 (= e!117534 (MissingZero!583 (index!4502 lt!88174)))))

(declare-fun b!178293 () Bool)

(declare-fun e!117536 () SeekEntryResult!583)

(assert (=> b!178293 (= e!117536 (Found!583 (index!4502 lt!88174)))))

(declare-fun b!178294 () Bool)

(declare-fun seekKeyOrZeroReturnVacant!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7502 (_ BitVec 32)) SeekEntryResult!583)

(assert (=> b!178294 (= e!117534 (seekKeyOrZeroReturnVacant!0 (x!19533 lt!88174) (index!4502 lt!88174) (index!4502 lt!88174) key!828 (_keys!5541 thiss!1248) (mask!8621 thiss!1248)))))

(declare-fun b!178295 () Bool)

(declare-fun c!31941 () Bool)

(declare-fun lt!88173 () (_ BitVec 64))

(assert (=> b!178295 (= c!31941 (= lt!88173 #b0000000000000000000000000000000000000000000000000000000000000000))))

(assert (=> b!178295 (= e!117536 e!117534)))

(declare-fun b!178296 () Bool)

(declare-fun e!117535 () SeekEntryResult!583)

(assert (=> b!178296 (= e!117535 e!117536)))

(assert (=> b!178296 (= lt!88173 (select (arr!3556 (_keys!5541 thiss!1248)) (index!4502 lt!88174)))))

(declare-fun c!31942 () Bool)

(assert (=> b!178296 (= c!31942 (= lt!88173 key!828))))

(declare-fun b!178297 () Bool)

(assert (=> b!178297 (= e!117535 Undefined!583)))

(declare-fun d!53849 () Bool)

(declare-fun lt!88175 () SeekEntryResult!583)

(assert (=> d!53849 (and (or ((_ is Undefined!583) lt!88175) (not ((_ is Found!583) lt!88175)) (and (bvsge (index!4501 lt!88175) #b00000000000000000000000000000000) (bvslt (index!4501 lt!88175) (size!3862 (_keys!5541 thiss!1248))))) (or ((_ is Undefined!583) lt!88175) ((_ is Found!583) lt!88175) (not ((_ is MissingZero!583) lt!88175)) (and (bvsge (index!4500 lt!88175) #b00000000000000000000000000000000) (bvslt (index!4500 lt!88175) (size!3862 (_keys!5541 thiss!1248))))) (or ((_ is Undefined!583) lt!88175) ((_ is Found!583) lt!88175) ((_ is MissingZero!583) lt!88175) (not ((_ is MissingVacant!583) lt!88175)) (and (bvsge (index!4503 lt!88175) #b00000000000000000000000000000000) (bvslt (index!4503 lt!88175) (size!3862 (_keys!5541 thiss!1248))))) (or ((_ is Undefined!583) lt!88175) (ite ((_ is Found!583) lt!88175) (= (select (arr!3556 (_keys!5541 thiss!1248)) (index!4501 lt!88175)) key!828) (ite ((_ is MissingZero!583) lt!88175) (= (select (arr!3556 (_keys!5541 thiss!1248)) (index!4500 lt!88175)) #b0000000000000000000000000000000000000000000000000000000000000000) (and ((_ is MissingVacant!583) lt!88175) (= (select (arr!3556 (_keys!5541 thiss!1248)) (index!4503 lt!88175)) #b1000000000000000000000000000000000000000000000000000000000000000))))))))

(assert (=> d!53849 (= lt!88175 e!117535)))

(declare-fun c!31943 () Bool)

(assert (=> d!53849 (= c!31943 (and ((_ is Intermediate!583) lt!88174) (undefined!1395 lt!88174)))))

(declare-fun seekKeyOrZeroOrLongMinValue!0 ((_ BitVec 32) (_ BitVec 32) (_ BitVec 64) array!7502 (_ BitVec 32)) SeekEntryResult!583)

(declare-fun toIndex!0 ((_ BitVec 64) (_ BitVec 32)) (_ BitVec 32))

(assert (=> d!53849 (= lt!88174 (seekKeyOrZeroOrLongMinValue!0 #b00000000000000000000000000000000 (toIndex!0 key!828 (mask!8621 thiss!1248)) key!828 (_keys!5541 thiss!1248) (mask!8621 thiss!1248)))))

(assert (=> d!53849 (validMask!0 (mask!8621 thiss!1248))))

(assert (=> d!53849 (= (seekEntryOrOpen!0 key!828 (_keys!5541 thiss!1248) (mask!8621 thiss!1248)) lt!88175)))

(assert (= (and d!53849 c!31943) b!178297))

(assert (= (and d!53849 (not c!31943)) b!178296))

(assert (= (and b!178296 c!31942) b!178293))

(assert (= (and b!178296 (not c!31942)) b!178295))

(assert (= (and b!178295 c!31941) b!178292))

(assert (= (and b!178295 (not c!31941)) b!178294))

(declare-fun m!206735 () Bool)

(assert (=> b!178294 m!206735))

(declare-fun m!206737 () Bool)

(assert (=> b!178296 m!206737))

(declare-fun m!206739 () Bool)

(assert (=> d!53849 m!206739))

(declare-fun m!206741 () Bool)

(assert (=> d!53849 m!206741))

(declare-fun m!206743 () Bool)

(assert (=> d!53849 m!206743))

(declare-fun m!206745 () Bool)

(assert (=> d!53849 m!206745))

(assert (=> d!53849 m!206739))

(declare-fun m!206747 () Bool)

(assert (=> d!53849 m!206747))

(assert (=> d!53849 m!206647))

(assert (=> b!178176 d!53849))

(declare-fun d!53851 () Bool)

(assert (=> d!53851 (= (validMask!0 (mask!8621 thiss!1248)) (and (or (= (mask!8621 thiss!1248) #b00000000000000000000000000000111) (= (mask!8621 thiss!1248) #b00000000000000000000000000001111) (= (mask!8621 thiss!1248) #b00000000000000000000000000011111) (= (mask!8621 thiss!1248) #b00000000000000000000000000111111) (= (mask!8621 thiss!1248) #b00000000000000000000000001111111) (= (mask!8621 thiss!1248) #b00000000000000000000000011111111) (= (mask!8621 thiss!1248) #b00000000000000000000000111111111) (= (mask!8621 thiss!1248) #b00000000000000000000001111111111) (= (mask!8621 thiss!1248) #b00000000000000000000011111111111) (= (mask!8621 thiss!1248) #b00000000000000000000111111111111) (= (mask!8621 thiss!1248) #b00000000000000000001111111111111) (= (mask!8621 thiss!1248) #b00000000000000000011111111111111) (= (mask!8621 thiss!1248) #b00000000000000000111111111111111) (= (mask!8621 thiss!1248) #b00000000000000001111111111111111) (= (mask!8621 thiss!1248) #b00000000000000011111111111111111) (= (mask!8621 thiss!1248) #b00000000000000111111111111111111) (= (mask!8621 thiss!1248) #b00000000000001111111111111111111) (= (mask!8621 thiss!1248) #b00000000000011111111111111111111) (= (mask!8621 thiss!1248) #b00000000000111111111111111111111) (= (mask!8621 thiss!1248) #b00000000001111111111111111111111) (= (mask!8621 thiss!1248) #b00000000011111111111111111111111) (= (mask!8621 thiss!1248) #b00000000111111111111111111111111) (= (mask!8621 thiss!1248) #b00000001111111111111111111111111) (= (mask!8621 thiss!1248) #b00000011111111111111111111111111) (= (mask!8621 thiss!1248) #b00000111111111111111111111111111) (= (mask!8621 thiss!1248) #b00001111111111111111111111111111) (= (mask!8621 thiss!1248) #b00011111111111111111111111111111) (= (mask!8621 thiss!1248) #b00111111111111111111111111111111)) (bvsle (mask!8621 thiss!1248) #b00111111111111111111111111111111)))))

(assert (=> b!178178 d!53851))

(declare-fun d!53853 () Bool)

(declare-fun res!84490 () Bool)

(declare-fun e!117539 () Bool)

(assert (=> d!53853 (=> (not res!84490) (not e!117539))))

(declare-fun simpleValid!156 (LongMapFixedSize!2394) Bool)

(assert (=> d!53853 (= res!84490 (simpleValid!156 thiss!1248))))

(assert (=> d!53853 (= (valid!995 thiss!1248) e!117539)))

(declare-fun b!178304 () Bool)

(declare-fun res!84491 () Bool)

(assert (=> b!178304 (=> (not res!84491) (not e!117539))))

(declare-fun arrayCountValidKeys!0 (array!7502 (_ BitVec 32) (_ BitVec 32)) (_ BitVec 32))

(assert (=> b!178304 (= res!84491 (= (arrayCountValidKeys!0 (_keys!5541 thiss!1248) #b00000000000000000000000000000000 (size!3862 (_keys!5541 thiss!1248))) (_size!1246 thiss!1248)))))

(declare-fun b!178305 () Bool)

(declare-fun res!84492 () Bool)

(assert (=> b!178305 (=> (not res!84492) (not e!117539))))

(declare-fun arrayForallSeekEntryOrOpenFound!0 ((_ BitVec 32) array!7502 (_ BitVec 32)) Bool)

(assert (=> b!178305 (= res!84492 (arrayForallSeekEntryOrOpenFound!0 #b00000000000000000000000000000000 (_keys!5541 thiss!1248) (mask!8621 thiss!1248)))))

(declare-fun b!178306 () Bool)

(declare-datatypes ((List!2282 0))(
  ( (Nil!2279) (Cons!2278 (h!2901 (_ BitVec 64)) (t!7128 List!2282)) )
))
(declare-fun arrayNoDuplicates!0 (array!7502 (_ BitVec 32) List!2282) Bool)

(assert (=> b!178306 (= e!117539 (arrayNoDuplicates!0 (_keys!5541 thiss!1248) #b00000000000000000000000000000000 Nil!2279))))

(assert (= (and d!53853 res!84490) b!178304))

(assert (= (and b!178304 res!84491) b!178305))

(assert (= (and b!178305 res!84492) b!178306))

(declare-fun m!206749 () Bool)

(assert (=> d!53853 m!206749))

(declare-fun m!206751 () Bool)

(assert (=> b!178304 m!206751))

(declare-fun m!206753 () Bool)

(assert (=> b!178305 m!206753))

(declare-fun m!206755 () Bool)

(assert (=> b!178306 m!206755))

(assert (=> start!17874 d!53853))

(declare-fun d!53855 () Bool)

(assert (=> d!53855 (= (array_inv!2275 (_keys!5541 thiss!1248)) (bvsge (size!3862 (_keys!5541 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178173 d!53855))

(declare-fun d!53857 () Bool)

(assert (=> d!53857 (= (array_inv!2276 (_values!3648 thiss!1248)) (bvsge (size!3863 (_values!3648 thiss!1248)) #b00000000000000000000000000000000))))

(assert (=> b!178173 d!53857))

(declare-fun condMapEmpty!7139 () Bool)

(declare-fun mapDefault!7139 () ValueCell!1743)

(assert (=> mapNonEmpty!7133 (= condMapEmpty!7139 (= mapRest!7133 ((as const (Array (_ BitVec 32) ValueCell!1743)) mapDefault!7139)))))

(declare-fun e!117544 () Bool)

(declare-fun mapRes!7139 () Bool)

(assert (=> mapNonEmpty!7133 (= tp!15913 (and e!117544 mapRes!7139))))

(declare-fun mapNonEmpty!7139 () Bool)

(declare-fun tp!15923 () Bool)

(declare-fun e!117545 () Bool)

(assert (=> mapNonEmpty!7139 (= mapRes!7139 (and tp!15923 e!117545))))

(declare-fun mapValue!7139 () ValueCell!1743)

(declare-fun mapKey!7139 () (_ BitVec 32))

(declare-fun mapRest!7139 () (Array (_ BitVec 32) ValueCell!1743))

(assert (=> mapNonEmpty!7139 (= mapRest!7133 (store mapRest!7139 mapKey!7139 mapValue!7139))))

(declare-fun b!178313 () Bool)

(assert (=> b!178313 (= e!117545 tp_is_empty!4173)))

(declare-fun b!178314 () Bool)

(assert (=> b!178314 (= e!117544 tp_is_empty!4173)))

(declare-fun mapIsEmpty!7139 () Bool)

(assert (=> mapIsEmpty!7139 mapRes!7139))

(assert (= (and mapNonEmpty!7133 condMapEmpty!7139) mapIsEmpty!7139))

(assert (= (and mapNonEmpty!7133 (not condMapEmpty!7139)) mapNonEmpty!7139))

(assert (= (and mapNonEmpty!7139 ((_ is ValueCellFull!1743) mapValue!7139)) b!178313))

(assert (= (and mapNonEmpty!7133 ((_ is ValueCellFull!1743) mapDefault!7139)) b!178314))

(declare-fun m!206757 () Bool)

(assert (=> mapNonEmpty!7139 m!206757))

(declare-fun b_lambda!7111 () Bool)

(assert (= b_lambda!7109 (or (and b!178173 b_free!4401) b_lambda!7111)))

(check-sat (not d!53847) (not b!178273) (not d!53845) (not b!178212) (not d!53849) (not bm!18020) (not b!178306) (not b!178263) (not b!178274) (not b!178305) (not d!53853) (not b!178257) (not bm!18026) (not b!178294) (not bm!18022) (not mapNonEmpty!7139) (not b!178264) (not b!178272) (not bm!18024) (not b_next!4401) (not b!178214) (not b!178271) tp_is_empty!4173 b_and!10937 (not b!178268) (not b_lambda!7111) (not b!178304))
(check-sat b_and!10937 (not b_next!4401))
