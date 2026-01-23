; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!218074 () Bool)

(assert start!218074)

(declare-fun b!2238039 () Bool)

(declare-fun b_free!64945 () Bool)

(declare-fun b_next!65649 () Bool)

(assert (=> b!2238039 (= b_free!64945 (not b_next!65649))))

(declare-fun tp!704305 () Bool)

(declare-fun b_and!174945 () Bool)

(assert (=> b!2238039 (= tp!704305 b_and!174945)))

(declare-fun b!2238033 () Bool)

(declare-fun b_free!64947 () Bool)

(declare-fun b_next!65651 () Bool)

(assert (=> b!2238033 (= b_free!64947 (not b_next!65651))))

(declare-fun tp!704300 () Bool)

(declare-fun b_and!174947 () Bool)

(assert (=> b!2238033 (= tp!704300 b_and!174947)))

(declare-fun b!2238032 () Bool)

(declare-fun e!1430651 () Bool)

(declare-fun tp!704304 () Bool)

(declare-fun tp!704297 () Bool)

(assert (=> b!2238032 (= e!1430651 (and tp!704304 tp!704297))))

(declare-fun mapNonEmpty!14648 () Bool)

(declare-fun mapRes!14648 () Bool)

(declare-fun tp!704299 () Bool)

(declare-fun tp!704295 () Bool)

(assert (=> mapNonEmpty!14648 (= mapRes!14648 (and tp!704299 tp!704295))))

(declare-fun mapKey!14648 () (_ BitVec 32))

(declare-datatypes ((C!13112 0))(
  ( (C!13113 (val!7604 Int)) )
))
(declare-datatypes ((Regex!6483 0))(
  ( (ElementMatch!6483 (c!356538 C!13112)) (Concat!10821 (regOne!13478 Regex!6483) (regTwo!13478 Regex!6483)) (EmptyExpr!6483) (Star!6483 (reg!6812 Regex!6483)) (EmptyLang!6483) (Union!6483 (regOne!13479 Regex!6483) (regTwo!13479 Regex!6483)) )
))
(declare-datatypes ((List!26450 0))(
  ( (Nil!26356) (Cons!26356 (h!31757 Regex!6483) (t!199876 List!26450)) )
))
(declare-datatypes ((Context!4062 0))(
  ( (Context!4063 (exprs!2531 List!26450)) )
))
(declare-datatypes ((tuple3!4038 0))(
  ( (tuple3!4039 (_1!15367 Regex!6483) (_2!15367 Context!4062) (_3!2489 C!13112)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((tuple2!25756 0))(
  ( (tuple2!25757 (_1!15368 tuple3!4038) (_2!15368 (InoxSet Context!4062))) )
))
(declare-datatypes ((List!26451 0))(
  ( (Nil!26357) (Cons!26357 (h!31758 tuple2!25756) (t!199877 List!26451)) )
))
(declare-fun mapValue!14648 () List!26451)

(declare-fun mapRest!14648 () (Array (_ BitVec 32) List!26451))

(declare-datatypes ((Hashable!3031 0))(
  ( (HashableExt!3030 (__x!17589 Int)) )
))
(declare-datatypes ((array!10874 0))(
  ( (array!10875 (arr!4829 (Array (_ BitVec 32) List!26451)) (size!20610 (_ BitVec 32))) )
))
(declare-datatypes ((array!10876 0))(
  ( (array!10877 (arr!4830 (Array (_ BitVec 32) (_ BitVec 64))) (size!20611 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!6242 0))(
  ( (LongMapFixedSize!6243 (defaultEntry!3486 Int) (mask!7716 (_ BitVec 32)) (extraKeys!3369 (_ BitVec 32)) (zeroValue!3379 List!26451) (minValue!3379 List!26451) (_size!6289 (_ BitVec 32)) (_keys!3418 array!10876) (_values!3401 array!10874) (_vacant!3182 (_ BitVec 32))) )
))
(declare-datatypes ((Cell!12301 0))(
  ( (Cell!12302 (v!29970 LongMapFixedSize!6242)) )
))
(declare-datatypes ((MutLongMap!3121 0))(
  ( (LongMap!3121 (underlying!6443 Cell!12301)) (MutLongMapExt!3120 (__x!17590 Int)) )
))
(declare-datatypes ((Cell!12303 0))(
  ( (Cell!12304 (v!29971 MutLongMap!3121)) )
))
(declare-datatypes ((MutableMap!3031 0))(
  ( (MutableMapExt!3030 (__x!17591 Int)) (HashMap!3031 (underlying!6444 Cell!12303) (hashF!4954 Hashable!3031) (_size!6290 (_ BitVec 32)) (defaultValue!3193 Int)) )
))
(declare-datatypes ((CacheDown!2108 0))(
  ( (CacheDown!2109 (cache!3412 MutableMap!3031)) )
))
(declare-fun thiss!28743 () CacheDown!2108)

(assert (=> mapNonEmpty!14648 (= (arr!4829 (_values!3401 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) (store mapRest!14648 mapKey!14648 mapValue!14648))))

(declare-fun e!1430641 () Bool)

(declare-fun tp!704303 () Bool)

(declare-fun tp!704294 () Bool)

(declare-fun e!1430650 () Bool)

(declare-fun array_inv!3469 (array!10876) Bool)

(declare-fun array_inv!3470 (array!10874) Bool)

(assert (=> b!2238033 (= e!1430650 (and tp!704300 tp!704303 tp!704294 (array_inv!3469 (_keys!3418 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) (array_inv!3470 (_values!3401 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) e!1430641))))

(declare-fun b!2238034 () Bool)

(declare-fun e!1430652 () Bool)

(declare-fun e!1430643 () Bool)

(assert (=> b!2238034 (= e!1430652 e!1430643)))

(declare-fun b!2238035 () Bool)

(declare-fun e!1430647 () Bool)

(declare-fun tp!704306 () Bool)

(assert (=> b!2238035 (= e!1430647 tp!704306)))

(declare-fun b!2238036 () Bool)

(declare-fun e!1430653 () Bool)

(declare-fun e!1430644 () Bool)

(assert (=> b!2238036 (= e!1430653 (not e!1430644))))

(declare-fun res!957186 () Bool)

(assert (=> b!2238036 (=> res!957186 e!1430644)))

(get-info :version)

(assert (=> b!2238036 (= res!957186 (not ((_ is HashMap!3031) (cache!3412 thiss!28743))))))

(declare-fun e!1430649 () Bool)

(assert (=> b!2238036 e!1430649))

(declare-fun res!957188 () Bool)

(assert (=> b!2238036 (=> (not res!957188) (not e!1430649))))

(declare-fun lt!832538 () tuple3!4038)

(declare-fun validRegex!2437 (Regex!6483) Bool)

(assert (=> b!2238036 (= res!957188 (validRegex!2437 (_1!15367 lt!832538)))))

(declare-fun lt!832539 () (InoxSet Context!4062))

(declare-fun apply!6488 (MutableMap!3031 tuple3!4038) (InoxSet Context!4062))

(assert (=> b!2238036 (= lt!832539 (apply!6488 (cache!3412 thiss!28743) lt!832538))))

(declare-fun lt!832531 () tuple2!25756)

(assert (=> b!2238036 (= lt!832531 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538)))))

(declare-datatypes ((Unit!39309 0))(
  ( (Unit!39310) )
))
(declare-fun lt!832537 () Unit!39309)

(declare-fun lambda!84587 () Int)

(declare-fun lemmaForallPairsThenForLookup!26 (MutableMap!3031 tuple3!4038 Int) Unit!39309)

(assert (=> b!2238036 (= lt!832537 (lemmaForallPairsThenForLookup!26 (cache!3412 thiss!28743) lt!832538 lambda!84587))))

(declare-fun b!2238037 () Bool)

(declare-fun valid!2353 (MutableMap!3031) Bool)

(assert (=> b!2238037 (= e!1430644 (valid!2353 (cache!3412 thiss!28743)))))

(declare-fun mapIsEmpty!14648 () Bool)

(assert (=> mapIsEmpty!14648 mapRes!14648))

(declare-fun b!2238038 () Bool)

(declare-fun tp!704301 () Bool)

(assert (=> b!2238038 (= e!1430641 (and tp!704301 mapRes!14648))))

(declare-fun condMapEmpty!14648 () Bool)

(declare-fun mapDefault!14648 () List!26451)

(assert (=> b!2238038 (= condMapEmpty!14648 (= (arr!4829 (_values!3401 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) ((as const (Array (_ BitVec 32) List!26451)) mapDefault!14648)))))

(declare-fun e!1430648 () Bool)

(assert (=> b!2238039 (= e!1430643 (and e!1430648 tp!704305))))

(declare-fun res!957189 () Bool)

(declare-fun e!1430640 () Bool)

(assert (=> start!218074 (=> (not res!957189) (not e!1430640))))

(declare-fun validCacheMapDown!328 (MutableMap!3031) Bool)

(assert (=> start!218074 (= res!957189 (validCacheMapDown!328 (cache!3412 thiss!28743)))))

(assert (=> start!218074 e!1430640))

(declare-fun inv!35800 (CacheDown!2108) Bool)

(assert (=> start!218074 (and (inv!35800 thiss!28743) e!1430652)))

(declare-fun ctx!48 () Context!4062)

(declare-fun inv!35801 (Context!4062) Bool)

(assert (=> start!218074 (and (inv!35801 ctx!48) e!1430647)))

(assert (=> start!218074 e!1430651))

(declare-fun tp_is_empty!10187 () Bool)

(assert (=> start!218074 tp_is_empty!10187))

(declare-fun b!2238040 () Bool)

(declare-fun e!1430642 () Bool)

(assert (=> b!2238040 (= e!1430642 e!1430650)))

(declare-fun b!2238041 () Bool)

(assert (=> b!2238041 (= e!1430640 e!1430653)))

(declare-fun res!957187 () Bool)

(assert (=> b!2238041 (=> (not res!957187) (not e!1430653))))

(declare-fun contains!4418 (MutableMap!3031 tuple3!4038) Bool)

(assert (=> b!2238041 (= res!957187 (contains!4418 (cache!3412 thiss!28743) lt!832538))))

(declare-fun r!4750 () Regex!6483)

(declare-fun a!970 () C!13112)

(assert (=> b!2238041 (= lt!832538 (tuple3!4039 r!4750 ctx!48 a!970))))

(declare-fun b!2238042 () Bool)

(assert (=> b!2238042 (= e!1430651 tp_is_empty!10187)))

(declare-fun b!2238043 () Bool)

(declare-fun tp!704298 () Bool)

(declare-fun tp!704296 () Bool)

(assert (=> b!2238043 (= e!1430651 (and tp!704298 tp!704296))))

(declare-fun b!2238044 () Bool)

(declare-fun e!1430645 () Bool)

(assert (=> b!2238044 (= e!1430645 e!1430642)))

(declare-fun b!2238045 () Bool)

(declare-fun lt!832533 () MutLongMap!3121)

(assert (=> b!2238045 (= e!1430648 (and e!1430645 ((_ is LongMap!3121) lt!832533)))))

(assert (=> b!2238045 (= lt!832533 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))

(declare-fun b!2238046 () Bool)

(declare-fun tp!704302 () Bool)

(assert (=> b!2238046 (= e!1430651 tp!704302)))

(declare-fun b!2238047 () Bool)

(declare-fun derivationStepZipperDown!75 (Regex!6483 Context!4062 C!13112) (InoxSet Context!4062))

(assert (=> b!2238047 (= e!1430649 (= (apply!6488 (cache!3412 thiss!28743) lt!832538) (derivationStepZipperDown!75 (_1!15367 lt!832538) (_2!15367 lt!832538) (_3!2489 lt!832538))))))

(declare-fun lt!832534 () (InoxSet Context!4062))

(assert (=> b!2238047 (= lt!832534 (apply!6488 (cache!3412 thiss!28743) lt!832538))))

(declare-fun lt!832536 () (InoxSet Context!4062))

(assert (=> b!2238047 (= lt!832536 (apply!6488 (cache!3412 thiss!28743) lt!832538))))

(declare-fun lt!832532 () (InoxSet Context!4062))

(assert (=> b!2238047 (= lt!832532 (apply!6488 (cache!3412 thiss!28743) lt!832538))))

(declare-fun lt!832535 () tuple3!4038)

(assert (=> b!2238047 (= lt!832535 lt!832538)))

(assert (= (and start!218074 res!957189) b!2238041))

(assert (= (and b!2238041 res!957187) b!2238036))

(assert (= (and b!2238036 res!957188) b!2238047))

(assert (= (and b!2238036 (not res!957186)) b!2238037))

(assert (= (and b!2238038 condMapEmpty!14648) mapIsEmpty!14648))

(assert (= (and b!2238038 (not condMapEmpty!14648)) mapNonEmpty!14648))

(assert (= b!2238033 b!2238038))

(assert (= b!2238040 b!2238033))

(assert (= b!2238044 b!2238040))

(assert (= (and b!2238045 ((_ is LongMap!3121) (v!29971 (underlying!6444 (cache!3412 thiss!28743))))) b!2238044))

(assert (= b!2238039 b!2238045))

(assert (= (and b!2238034 ((_ is HashMap!3031) (cache!3412 thiss!28743))) b!2238039))

(assert (= start!218074 b!2238034))

(assert (= start!218074 b!2238035))

(assert (= (and start!218074 ((_ is ElementMatch!6483) r!4750)) b!2238042))

(assert (= (and start!218074 ((_ is Concat!10821) r!4750)) b!2238043))

(assert (= (and start!218074 ((_ is Star!6483) r!4750)) b!2238046))

(assert (= (and start!218074 ((_ is Union!6483) r!4750)) b!2238032))

(declare-fun m!2671244 () Bool)

(assert (=> start!218074 m!2671244))

(declare-fun m!2671246 () Bool)

(assert (=> start!218074 m!2671246))

(declare-fun m!2671248 () Bool)

(assert (=> start!218074 m!2671248))

(declare-fun m!2671250 () Bool)

(assert (=> b!2238037 m!2671250))

(declare-fun m!2671252 () Bool)

(assert (=> mapNonEmpty!14648 m!2671252))

(declare-fun m!2671254 () Bool)

(assert (=> b!2238041 m!2671254))

(declare-fun m!2671256 () Bool)

(assert (=> b!2238036 m!2671256))

(declare-fun m!2671258 () Bool)

(assert (=> b!2238036 m!2671258))

(declare-fun m!2671260 () Bool)

(assert (=> b!2238036 m!2671260))

(declare-fun m!2671262 () Bool)

(assert (=> b!2238033 m!2671262))

(declare-fun m!2671264 () Bool)

(assert (=> b!2238033 m!2671264))

(assert (=> b!2238047 m!2671258))

(declare-fun m!2671266 () Bool)

(assert (=> b!2238047 m!2671266))

(check-sat (not b!2238035) (not b_next!65649) (not b!2238036) b_and!174947 tp_is_empty!10187 (not b_next!65651) (not b!2238041) (not b!2238046) (not mapNonEmpty!14648) (not b!2238037) (not start!218074) (not b!2238033) (not b!2238043) (not b!2238038) (not b!2238047) (not b!2238032) b_and!174945)
(check-sat b_and!174947 b_and!174945 (not b_next!65649) (not b_next!65651))
(get-model)

(declare-fun bs!454245 () Bool)

(declare-fun b!2238055 () Bool)

(assert (= bs!454245 (and b!2238055 b!2238036)))

(declare-fun lambda!84590 () Int)

(assert (=> bs!454245 (= lambda!84590 lambda!84587)))

(declare-fun d!665563 () Bool)

(declare-fun res!957196 () Bool)

(declare-fun e!1430658 () Bool)

(assert (=> d!665563 (=> (not res!957196) (not e!1430658))))

(assert (=> d!665563 (= res!957196 (valid!2353 (cache!3412 thiss!28743)))))

(assert (=> d!665563 (= (validCacheMapDown!328 (cache!3412 thiss!28743)) e!1430658)))

(declare-fun b!2238054 () Bool)

(declare-fun res!957197 () Bool)

(assert (=> b!2238054 (=> (not res!957197) (not e!1430658))))

(declare-fun invariantList!378 (List!26451) Bool)

(declare-datatypes ((ListMap!851 0))(
  ( (ListMap!852 (toList!1366 List!26451)) )
))
(declare-fun map!5429 (MutableMap!3031) ListMap!851)

(assert (=> b!2238054 (= res!957197 (invariantList!378 (toList!1366 (map!5429 (cache!3412 thiss!28743)))))))

(declare-fun forall!5414 (List!26451 Int) Bool)

(assert (=> b!2238055 (= e!1430658 (forall!5414 (toList!1366 (map!5429 (cache!3412 thiss!28743))) lambda!84590))))

(assert (= (and d!665563 res!957196) b!2238054))

(assert (= (and b!2238054 res!957197) b!2238055))

(assert (=> d!665563 m!2671250))

(declare-fun m!2671269 () Bool)

(assert (=> b!2238054 m!2671269))

(declare-fun m!2671271 () Bool)

(assert (=> b!2238054 m!2671271))

(assert (=> b!2238055 m!2671269))

(declare-fun m!2671273 () Bool)

(assert (=> b!2238055 m!2671273))

(assert (=> start!218074 d!665563))

(declare-fun d!665565 () Bool)

(declare-fun res!957200 () Bool)

(declare-fun e!1430661 () Bool)

(assert (=> d!665565 (=> (not res!957200) (not e!1430661))))

(assert (=> d!665565 (= res!957200 ((_ is HashMap!3031) (cache!3412 thiss!28743)))))

(assert (=> d!665565 (= (inv!35800 thiss!28743) e!1430661)))

(declare-fun b!2238058 () Bool)

(assert (=> b!2238058 (= e!1430661 (validCacheMapDown!328 (cache!3412 thiss!28743)))))

(assert (= (and d!665565 res!957200) b!2238058))

(assert (=> b!2238058 m!2671244))

(assert (=> start!218074 d!665565))

(declare-fun d!665567 () Bool)

(declare-fun lambda!84593 () Int)

(declare-fun forall!5415 (List!26450 Int) Bool)

(assert (=> d!665567 (= (inv!35801 ctx!48) (forall!5415 (exprs!2531 ctx!48) lambda!84593))))

(declare-fun bs!454246 () Bool)

(assert (= bs!454246 d!665567))

(declare-fun m!2671275 () Bool)

(assert (=> bs!454246 m!2671275))

(assert (=> start!218074 d!665567))

(declare-fun b!2238081 () Bool)

(assert (=> b!2238081 false))

(declare-fun lt!832593 () Unit!39309)

(declare-fun lt!832598 () Unit!39309)

(assert (=> b!2238081 (= lt!832593 lt!832598)))

(declare-datatypes ((tuple2!25758 0))(
  ( (tuple2!25759 (_1!15369 (_ BitVec 64)) (_2!15369 List!26451)) )
))
(declare-datatypes ((List!26452 0))(
  ( (Nil!26358) (Cons!26358 (h!31759 tuple2!25758) (t!199880 List!26452)) )
))
(declare-fun lt!832591 () List!26452)

(declare-fun lt!832584 () (_ BitVec 64))

(declare-fun lt!832588 () List!26451)

(declare-fun contains!4419 (List!26452 tuple2!25758) Bool)

(assert (=> b!2238081 (contains!4419 lt!832591 (tuple2!25759 lt!832584 lt!832588))))

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!33 (List!26452 (_ BitVec 64) List!26451) Unit!39309)

(assert (=> b!2238081 (= lt!832598 (lemmaGetValueByKeyImpliesContainsTuple!33 lt!832591 lt!832584 lt!832588))))

(declare-fun apply!6489 (MutLongMap!3121 (_ BitVec 64)) List!26451)

(assert (=> b!2238081 (= lt!832588 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832584))))

(declare-datatypes ((ListLongMap!335 0))(
  ( (ListLongMap!336 (toList!1367 List!26452)) )
))
(declare-fun map!5430 (MutLongMap!3121) ListLongMap!335)

(assert (=> b!2238081 (= lt!832591 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))))

(declare-fun lt!832597 () Unit!39309)

(declare-fun lt!832599 () Unit!39309)

(assert (=> b!2238081 (= lt!832597 lt!832599)))

(declare-fun lt!832585 () List!26452)

(declare-datatypes ((Option!5131 0))(
  ( (None!5130) (Some!5130 (v!29972 List!26451)) )
))
(declare-fun isDefined!4142 (Option!5131) Bool)

(declare-fun getValueByKey!79 (List!26452 (_ BitVec 64)) Option!5131)

(assert (=> b!2238081 (isDefined!4142 (getValueByKey!79 lt!832585 lt!832584))))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!50 (List!26452 (_ BitVec 64)) Unit!39309)

(assert (=> b!2238081 (= lt!832599 (lemmaContainsKeyImpliesGetValueByKeyDefined!50 lt!832585 lt!832584))))

(assert (=> b!2238081 (= lt!832585 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))))

(declare-fun lt!832583 () Unit!39309)

(declare-fun lt!832587 () Unit!39309)

(assert (=> b!2238081 (= lt!832583 lt!832587)))

(declare-fun lt!832580 () List!26452)

(declare-fun containsKey!81 (List!26452 (_ BitVec 64)) Bool)

(assert (=> b!2238081 (containsKey!81 lt!832580 lt!832584)))

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!33 (List!26452 (_ BitVec 64)) Unit!39309)

(assert (=> b!2238081 (= lt!832587 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!33 lt!832580 lt!832584))))

(assert (=> b!2238081 (= lt!832580 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))))

(declare-fun e!1430676 () Unit!39309)

(declare-fun Unit!39311 () Unit!39309)

(assert (=> b!2238081 (= e!1430676 Unit!39311)))

(declare-fun b!2238082 () Bool)

(assert (=> b!2238082 false))

(declare-fun lt!832582 () Unit!39309)

(declare-fun lt!832595 () Unit!39309)

(assert (=> b!2238082 (= lt!832582 lt!832595)))

(declare-fun lt!832586 () ListLongMap!335)

(declare-fun contains!4420 (ListMap!851 tuple3!4038) Bool)

(declare-fun extractMap!112 (List!26452) ListMap!851)

(assert (=> b!2238082 (contains!4420 (extractMap!112 (toList!1367 lt!832586)) lt!832538)))

(declare-fun lemmaInLongMapThenInGenericMap!32 (ListLongMap!335 tuple3!4038 Hashable!3031) Unit!39309)

(assert (=> b!2238082 (= lt!832595 (lemmaInLongMapThenInGenericMap!32 lt!832586 lt!832538 (hashF!4954 (cache!3412 thiss!28743))))))

(declare-fun call!134963 () ListLongMap!335)

(assert (=> b!2238082 (= lt!832586 call!134963)))

(declare-fun e!1430679 () Unit!39309)

(declare-fun Unit!39312 () Unit!39309)

(assert (=> b!2238082 (= e!1430679 Unit!39312)))

(declare-fun lt!832581 () ListLongMap!335)

(declare-fun call!134961 () (_ BitVec 64))

(declare-fun bm!134954 () Bool)

(declare-fun c!356547 () Bool)

(declare-fun call!134959 () List!26451)

(declare-fun apply!6490 (ListLongMap!335 (_ BitVec 64)) List!26451)

(assert (=> bm!134954 (= call!134959 (apply!6490 (ite c!356547 lt!832581 call!134963) call!134961))))

(declare-fun b!2238083 () Bool)

(declare-fun e!1430681 () Unit!39309)

(declare-fun lt!832596 () Unit!39309)

(assert (=> b!2238083 (= e!1430681 lt!832596)))

(assert (=> b!2238083 (= lt!832581 call!134963)))

(declare-fun lemmaInGenericMapThenInLongMap!32 (ListLongMap!335 tuple3!4038 Hashable!3031) Unit!39309)

(assert (=> b!2238083 (= lt!832596 (lemmaInGenericMapThenInLongMap!32 lt!832581 lt!832538 (hashF!4954 (cache!3412 thiss!28743))))))

(declare-fun res!957209 () Bool)

(declare-fun call!134960 () Bool)

(assert (=> b!2238083 (= res!957209 call!134960)))

(declare-fun e!1430680 () Bool)

(assert (=> b!2238083 (=> (not res!957209) (not e!1430680))))

(assert (=> b!2238083 e!1430680))

(declare-fun bm!134955 () Bool)

(declare-datatypes ((Option!5132 0))(
  ( (None!5131) (Some!5131 (v!29973 tuple2!25756)) )
))
(declare-fun call!134964 () Option!5132)

(declare-fun getPair!32 (List!26451 tuple3!4038) Option!5132)

(assert (=> bm!134955 (= call!134964 (getPair!32 call!134959 lt!832538))))

(declare-fun b!2238084 () Bool)

(declare-fun e!1430677 () Unit!39309)

(declare-fun Unit!39313 () Unit!39309)

(assert (=> b!2238084 (= e!1430677 Unit!39313)))

(declare-fun bm!134956 () Bool)

(declare-fun contains!4421 (ListLongMap!335 (_ BitVec 64)) Bool)

(assert (=> bm!134956 (= call!134960 (contains!4421 (ite c!356547 lt!832581 call!134963) call!134961))))

(declare-fun d!665569 () Bool)

(declare-fun lt!832590 () Bool)

(assert (=> d!665569 (= lt!832590 (contains!4420 (map!5429 (cache!3412 thiss!28743)) lt!832538))))

(declare-fun e!1430682 () Bool)

(assert (=> d!665569 (= lt!832590 e!1430682)))

(declare-fun res!957207 () Bool)

(assert (=> d!665569 (=> (not res!957207) (not e!1430682))))

(declare-fun contains!4422 (MutLongMap!3121 (_ BitVec 64)) Bool)

(assert (=> d!665569 (= res!957207 (contains!4422 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832584))))

(declare-fun lt!832592 () Unit!39309)

(assert (=> d!665569 (= lt!832592 e!1430681)))

(assert (=> d!665569 (= c!356547 (contains!4420 (extractMap!112 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))) lt!832538))))

(declare-fun lt!832589 () Unit!39309)

(assert (=> d!665569 (= lt!832589 e!1430677)))

(declare-fun c!356549 () Bool)

(assert (=> d!665569 (= c!356549 (contains!4422 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832584))))

(declare-fun hash!579 (Hashable!3031 tuple3!4038) (_ BitVec 64))

(assert (=> d!665569 (= lt!832584 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538))))

(assert (=> d!665569 (valid!2353 (cache!3412 thiss!28743))))

(assert (=> d!665569 (= (contains!4418 (cache!3412 thiss!28743) lt!832538) lt!832590)))

(declare-fun b!2238085 () Bool)

(declare-fun call!134962 () Bool)

(assert (=> b!2238085 (= e!1430680 call!134962)))

(declare-fun b!2238086 () Bool)

(assert (=> b!2238086 (= e!1430681 e!1430679)))

(declare-fun res!957208 () Bool)

(assert (=> b!2238086 (= res!957208 call!134960)))

(declare-fun e!1430678 () Bool)

(assert (=> b!2238086 (=> (not res!957208) (not e!1430678))))

(declare-fun c!356550 () Bool)

(assert (=> b!2238086 (= c!356550 e!1430678)))

(declare-fun bm!134957 () Bool)

(assert (=> bm!134957 (= call!134963 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))

(declare-fun b!2238087 () Bool)

(declare-fun lambda!84596 () Int)

(declare-fun forallContained!779 (List!26452 Int tuple2!25758) Unit!39309)

(assert (=> b!2238087 (= e!1430677 (forallContained!779 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))) lambda!84596 (tuple2!25759 lt!832584 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832584))))))

(declare-fun c!356548 () Bool)

(assert (=> b!2238087 (= c!356548 (not (contains!4419 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))) (tuple2!25759 lt!832584 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832584)))))))

(declare-fun lt!832594 () Unit!39309)

(assert (=> b!2238087 (= lt!832594 e!1430676)))

(declare-fun bm!134958 () Bool)

(assert (=> bm!134958 (= call!134961 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538))))

(declare-fun b!2238088 () Bool)

(declare-fun Unit!39314 () Unit!39309)

(assert (=> b!2238088 (= e!1430676 Unit!39314)))

(declare-fun bm!134959 () Bool)

(declare-fun isDefined!4143 (Option!5132) Bool)

(assert (=> bm!134959 (= call!134962 (isDefined!4143 call!134964))))

(declare-fun b!2238089 () Bool)

(assert (=> b!2238089 (= e!1430678 call!134962)))

(declare-fun b!2238090 () Bool)

(assert (=> b!2238090 (= e!1430682 (isDefined!4143 (getPair!32 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832584) lt!832538)))))

(declare-fun b!2238091 () Bool)

(declare-fun Unit!39315 () Unit!39309)

(assert (=> b!2238091 (= e!1430679 Unit!39315)))

(assert (= (and d!665569 c!356549) b!2238087))

(assert (= (and d!665569 (not c!356549)) b!2238084))

(assert (= (and b!2238087 c!356548) b!2238081))

(assert (= (and b!2238087 (not c!356548)) b!2238088))

(assert (= (and d!665569 c!356547) b!2238083))

(assert (= (and d!665569 (not c!356547)) b!2238086))

(assert (= (and b!2238083 res!957209) b!2238085))

(assert (= (and b!2238086 res!957208) b!2238089))

(assert (= (and b!2238086 c!356550) b!2238082))

(assert (= (and b!2238086 (not c!356550)) b!2238091))

(assert (= (or b!2238083 b!2238086 b!2238089 b!2238082) bm!134957))

(assert (= (or b!2238083 b!2238085 b!2238086 b!2238089) bm!134958))

(assert (= (or b!2238085 b!2238089) bm!134954))

(assert (= (or b!2238083 b!2238086) bm!134956))

(assert (= (or b!2238085 b!2238089) bm!134955))

(assert (= (or b!2238085 b!2238089) bm!134959))

(assert (= (and d!665569 res!957207) b!2238090))

(declare-fun m!2671277 () Bool)

(assert (=> b!2238087 m!2671277))

(declare-fun m!2671279 () Bool)

(assert (=> b!2238087 m!2671279))

(declare-fun m!2671281 () Bool)

(assert (=> b!2238087 m!2671281))

(declare-fun m!2671283 () Bool)

(assert (=> b!2238087 m!2671283))

(declare-fun m!2671285 () Bool)

(assert (=> b!2238081 m!2671285))

(declare-fun m!2671287 () Bool)

(assert (=> b!2238081 m!2671287))

(declare-fun m!2671289 () Bool)

(assert (=> b!2238081 m!2671289))

(declare-fun m!2671291 () Bool)

(assert (=> b!2238081 m!2671291))

(assert (=> b!2238081 m!2671285))

(declare-fun m!2671293 () Bool)

(assert (=> b!2238081 m!2671293))

(declare-fun m!2671295 () Bool)

(assert (=> b!2238081 m!2671295))

(declare-fun m!2671297 () Bool)

(assert (=> b!2238081 m!2671297))

(assert (=> b!2238081 m!2671279))

(assert (=> b!2238081 m!2671277))

(assert (=> b!2238090 m!2671279))

(assert (=> b!2238090 m!2671279))

(declare-fun m!2671299 () Bool)

(assert (=> b!2238090 m!2671299))

(assert (=> b!2238090 m!2671299))

(declare-fun m!2671301 () Bool)

(assert (=> b!2238090 m!2671301))

(assert (=> d!665569 m!2671250))

(declare-fun m!2671303 () Bool)

(assert (=> d!665569 m!2671303))

(declare-fun m!2671305 () Bool)

(assert (=> d!665569 m!2671305))

(declare-fun m!2671307 () Bool)

(assert (=> d!665569 m!2671307))

(declare-fun m!2671309 () Bool)

(assert (=> d!665569 m!2671309))

(assert (=> d!665569 m!2671277))

(assert (=> d!665569 m!2671269))

(declare-fun m!2671311 () Bool)

(assert (=> d!665569 m!2671311))

(assert (=> d!665569 m!2671269))

(assert (=> d!665569 m!2671303))

(declare-fun m!2671313 () Bool)

(assert (=> bm!134955 m!2671313))

(assert (=> bm!134958 m!2671307))

(assert (=> bm!134957 m!2671277))

(declare-fun m!2671315 () Bool)

(assert (=> b!2238083 m!2671315))

(declare-fun m!2671317 () Bool)

(assert (=> bm!134959 m!2671317))

(declare-fun m!2671319 () Bool)

(assert (=> bm!134956 m!2671319))

(declare-fun m!2671321 () Bool)

(assert (=> b!2238082 m!2671321))

(assert (=> b!2238082 m!2671321))

(declare-fun m!2671323 () Bool)

(assert (=> b!2238082 m!2671323))

(declare-fun m!2671325 () Bool)

(assert (=> b!2238082 m!2671325))

(declare-fun m!2671327 () Bool)

(assert (=> bm!134954 m!2671327))

(assert (=> b!2238041 d!665569))

(declare-fun bs!454247 () Bool)

(declare-fun b!2238096 () Bool)

(assert (= bs!454247 (and b!2238096 b!2238087)))

(declare-fun lambda!84599 () Int)

(assert (=> bs!454247 (= lambda!84599 lambda!84596)))

(declare-fun d!665571 () Bool)

(declare-fun res!957214 () Bool)

(declare-fun e!1430685 () Bool)

(assert (=> d!665571 (=> (not res!957214) (not e!1430685))))

(declare-fun valid!2354 (MutLongMap!3121) Bool)

(assert (=> d!665571 (= res!957214 (valid!2354 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))

(assert (=> d!665571 (= (valid!2353 (cache!3412 thiss!28743)) e!1430685)))

(declare-fun res!957215 () Bool)

(assert (=> b!2238096 (=> (not res!957215) (not e!1430685))))

(declare-fun forall!5416 (List!26452 Int) Bool)

(assert (=> b!2238096 (= res!957215 (forall!5416 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))) lambda!84599))))

(declare-fun b!2238097 () Bool)

(declare-fun allKeysSameHashInMap!110 (ListLongMap!335 Hashable!3031) Bool)

(assert (=> b!2238097 (= e!1430685 (allKeysSameHashInMap!110 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))) (hashF!4954 (cache!3412 thiss!28743))))))

(assert (= (and d!665571 res!957214) b!2238096))

(assert (= (and b!2238096 res!957215) b!2238097))

(declare-fun m!2671329 () Bool)

(assert (=> d!665571 m!2671329))

(assert (=> b!2238096 m!2671277))

(declare-fun m!2671331 () Bool)

(assert (=> b!2238096 m!2671331))

(assert (=> b!2238097 m!2671277))

(assert (=> b!2238097 m!2671277))

(declare-fun m!2671333 () Bool)

(assert (=> b!2238097 m!2671333))

(assert (=> b!2238037 d!665571))

(declare-fun b!2238116 () Bool)

(declare-fun res!957229 () Bool)

(declare-fun e!1430704 () Bool)

(assert (=> b!2238116 (=> (not res!957229) (not e!1430704))))

(declare-fun call!134971 () Bool)

(assert (=> b!2238116 (= res!957229 call!134971)))

(declare-fun e!1430706 () Bool)

(assert (=> b!2238116 (= e!1430706 e!1430704)))

(declare-fun b!2238117 () Bool)

(declare-fun e!1430700 () Bool)

(assert (=> b!2238117 (= e!1430700 e!1430706)))

(declare-fun c!356555 () Bool)

(assert (=> b!2238117 (= c!356555 ((_ is Union!6483) (_1!15367 lt!832538)))))

(declare-fun b!2238118 () Bool)

(declare-fun call!134973 () Bool)

(assert (=> b!2238118 (= e!1430704 call!134973)))

(declare-fun bm!134966 () Bool)

(assert (=> bm!134966 (= call!134971 (validRegex!2437 (ite c!356555 (regOne!13479 (_1!15367 lt!832538)) (regOne!13478 (_1!15367 lt!832538)))))))

(declare-fun b!2238119 () Bool)

(declare-fun e!1430705 () Bool)

(declare-fun e!1430701 () Bool)

(assert (=> b!2238119 (= e!1430705 e!1430701)))

(declare-fun res!957228 () Bool)

(assert (=> b!2238119 (=> (not res!957228) (not e!1430701))))

(assert (=> b!2238119 (= res!957228 call!134971)))

(declare-fun d!665573 () Bool)

(declare-fun res!957230 () Bool)

(declare-fun e!1430703 () Bool)

(assert (=> d!665573 (=> res!957230 e!1430703)))

(assert (=> d!665573 (= res!957230 ((_ is ElementMatch!6483) (_1!15367 lt!832538)))))

(assert (=> d!665573 (= (validRegex!2437 (_1!15367 lt!832538)) e!1430703)))

(declare-fun b!2238120 () Bool)

(declare-fun e!1430702 () Bool)

(assert (=> b!2238120 (= e!1430700 e!1430702)))

(declare-fun res!957226 () Bool)

(declare-fun nullable!1787 (Regex!6483) Bool)

(assert (=> b!2238120 (= res!957226 (not (nullable!1787 (reg!6812 (_1!15367 lt!832538)))))))

(assert (=> b!2238120 (=> (not res!957226) (not e!1430702))))

(declare-fun b!2238121 () Bool)

(assert (=> b!2238121 (= e!1430703 e!1430700)))

(declare-fun c!356556 () Bool)

(assert (=> b!2238121 (= c!356556 ((_ is Star!6483) (_1!15367 lt!832538)))))

(declare-fun bm!134967 () Bool)

(declare-fun call!134972 () Bool)

(assert (=> bm!134967 (= call!134972 (validRegex!2437 (ite c!356556 (reg!6812 (_1!15367 lt!832538)) (ite c!356555 (regTwo!13479 (_1!15367 lt!832538)) (regTwo!13478 (_1!15367 lt!832538))))))))

(declare-fun b!2238122 () Bool)

(declare-fun res!957227 () Bool)

(assert (=> b!2238122 (=> res!957227 e!1430705)))

(assert (=> b!2238122 (= res!957227 (not ((_ is Concat!10821) (_1!15367 lt!832538))))))

(assert (=> b!2238122 (= e!1430706 e!1430705)))

(declare-fun b!2238123 () Bool)

(assert (=> b!2238123 (= e!1430702 call!134972)))

(declare-fun bm!134968 () Bool)

(assert (=> bm!134968 (= call!134973 call!134972)))

(declare-fun b!2238124 () Bool)

(assert (=> b!2238124 (= e!1430701 call!134973)))

(assert (= (and d!665573 (not res!957230)) b!2238121))

(assert (= (and b!2238121 c!356556) b!2238120))

(assert (= (and b!2238121 (not c!356556)) b!2238117))

(assert (= (and b!2238120 res!957226) b!2238123))

(assert (= (and b!2238117 c!356555) b!2238116))

(assert (= (and b!2238117 (not c!356555)) b!2238122))

(assert (= (and b!2238116 res!957229) b!2238118))

(assert (= (and b!2238122 (not res!957227)) b!2238119))

(assert (= (and b!2238119 res!957228) b!2238124))

(assert (= (or b!2238116 b!2238119) bm!134966))

(assert (= (or b!2238118 b!2238124) bm!134968))

(assert (= (or b!2238123 bm!134968) bm!134967))

(declare-fun m!2671335 () Bool)

(assert (=> bm!134966 m!2671335))

(declare-fun m!2671337 () Bool)

(assert (=> b!2238120 m!2671337))

(declare-fun m!2671339 () Bool)

(assert (=> bm!134967 m!2671339))

(assert (=> b!2238036 d!665573))

(declare-fun bs!454248 () Bool)

(declare-fun b!2238141 () Bool)

(assert (= bs!454248 (and b!2238141 b!2238087)))

(declare-fun lambda!84606 () Int)

(assert (=> bs!454248 (= lambda!84606 lambda!84596)))

(declare-fun bs!454249 () Bool)

(assert (= bs!454249 (and b!2238141 b!2238096)))

(assert (=> bs!454249 (= lambda!84606 lambda!84599)))

(declare-fun b!2238137 () Bool)

(assert (=> b!2238137 false))

(declare-fun lt!832676 () Unit!39309)

(declare-fun lt!832687 () Unit!39309)

(assert (=> b!2238137 (= lt!832676 lt!832687)))

(declare-fun lt!832682 () List!26452)

(declare-fun lt!832667 () (_ BitVec 64))

(declare-fun lt!832668 () List!26451)

(assert (=> b!2238137 (contains!4419 lt!832682 (tuple2!25759 lt!832667 lt!832668))))

(assert (=> b!2238137 (= lt!832687 (lemmaGetValueByKeyImpliesContainsTuple!33 lt!832682 lt!832667 lt!832668))))

(assert (=> b!2238137 (= lt!832668 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832667))))

(assert (=> b!2238137 (= lt!832682 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))))

(declare-fun lt!832662 () Unit!39309)

(declare-fun lt!832677 () Unit!39309)

(assert (=> b!2238137 (= lt!832662 lt!832677)))

(declare-fun lt!832681 () List!26452)

(assert (=> b!2238137 (isDefined!4142 (getValueByKey!79 lt!832681 lt!832667))))

(assert (=> b!2238137 (= lt!832677 (lemmaContainsKeyImpliesGetValueByKeyDefined!50 lt!832681 lt!832667))))

(assert (=> b!2238137 (= lt!832681 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))))

(declare-fun e!1430715 () Unit!39309)

(declare-fun Unit!39316 () Unit!39309)

(assert (=> b!2238137 (= e!1430715 Unit!39316)))

(declare-fun b!2238139 () Bool)

(declare-fun e!1430714 () (InoxSet Context!4062))

(declare-fun dynLambda!11534 (Int tuple3!4038) (InoxSet Context!4062))

(assert (=> b!2238139 (= e!1430714 (dynLambda!11534 (defaultValue!3193 (cache!3412 thiss!28743)) lt!832538))))

(declare-fun lt!832678 () (InoxSet Context!4062))

(declare-fun e!1430713 () Bool)

(declare-fun b!2238140 () Bool)

(declare-datatypes ((Option!5133 0))(
  ( (None!5132) (Some!5132 (v!29974 (InoxSet Context!4062))) )
))
(declare-fun get!7972 (Option!5133) (InoxSet Context!4062))

(declare-fun getValueByKey!80 (List!26451 tuple3!4038) Option!5133)

(assert (=> b!2238140 (= e!1430713 (= lt!832678 (get!7972 (getValueByKey!80 (toList!1366 (map!5429 (cache!3412 thiss!28743))) lt!832538))))))

(declare-fun get!7973 (Option!5132) tuple2!25756)

(assert (=> b!2238141 (= e!1430714 (_2!15368 (get!7973 (getPair!32 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832667) lt!832538))))))

(assert (=> b!2238141 (= lt!832667 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538))))

(declare-fun c!356564 () Bool)

(assert (=> b!2238141 (= c!356564 (not (contains!4419 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))) (tuple2!25759 lt!832667 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832667)))))))

(declare-fun lt!832675 () Unit!39309)

(assert (=> b!2238141 (= lt!832675 e!1430715)))

(declare-fun lt!832672 () Unit!39309)

(assert (=> b!2238141 (= lt!832672 (forallContained!779 (toList!1367 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))) lambda!84606 (tuple2!25759 lt!832667 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832667))))))

(declare-fun lt!832686 () ListLongMap!335)

(assert (=> b!2238141 (= lt!832686 (map!5430 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))

(declare-fun lt!832671 () Unit!39309)

(declare-fun lemmaGetPairGetSameValueAsMap!20 (ListLongMap!335 tuple3!4038 (InoxSet Context!4062) Hashable!3031) Unit!39309)

(assert (=> b!2238141 (= lt!832671 (lemmaGetPairGetSameValueAsMap!20 lt!832686 lt!832538 (_2!15368 (get!7973 (getPair!32 (apply!6489 (v!29971 (underlying!6444 (cache!3412 thiss!28743))) lt!832667) lt!832538))) (hashF!4954 (cache!3412 thiss!28743))))))

(declare-fun lt!832660 () Unit!39309)

(declare-fun lemmaInGenMapThenLongMapContainsHash!20 (ListLongMap!335 tuple3!4038 Hashable!3031) Unit!39309)

(assert (=> b!2238141 (= lt!832660 (lemmaInGenMapThenLongMapContainsHash!20 lt!832686 lt!832538 (hashF!4954 (cache!3412 thiss!28743))))))

(assert (=> b!2238141 (contains!4421 lt!832686 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538))))

(declare-fun lt!832688 () Unit!39309)

(assert (=> b!2238141 (= lt!832688 lt!832660)))

(declare-fun lt!832680 () (_ BitVec 64))

(assert (=> b!2238141 (= lt!832680 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538))))

(declare-fun lt!832673 () List!26451)

(assert (=> b!2238141 (= lt!832673 (apply!6490 lt!832686 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538)))))

(declare-fun lt!832685 () Unit!39309)

(declare-fun lemmaGetValueImpliesTupleContained!21 (ListLongMap!335 (_ BitVec 64) List!26451) Unit!39309)

(assert (=> b!2238141 (= lt!832685 (lemmaGetValueImpliesTupleContained!21 lt!832686 lt!832680 lt!832673))))

(assert (=> b!2238141 (contains!4419 (toList!1367 lt!832686) (tuple2!25759 lt!832680 lt!832673))))

(declare-fun lt!832689 () Unit!39309)

(assert (=> b!2238141 (= lt!832689 lt!832685)))

(declare-fun lt!832674 () Unit!39309)

(assert (=> b!2238141 (= lt!832674 (forallContained!779 (toList!1367 lt!832686) lambda!84606 (tuple2!25759 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538) (apply!6490 lt!832686 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538)))))))

(declare-fun lt!832664 () Unit!39309)

(declare-fun lemmaInGenMapThenGetPairDefined!20 (ListLongMap!335 tuple3!4038 Hashable!3031) Unit!39309)

(assert (=> b!2238141 (= lt!832664 (lemmaInGenMapThenGetPairDefined!20 lt!832686 lt!832538 (hashF!4954 (cache!3412 thiss!28743))))))

(declare-fun lt!832684 () Unit!39309)

(assert (=> b!2238141 (= lt!832684 (lemmaInGenMapThenLongMapContainsHash!20 lt!832686 lt!832538 (hashF!4954 (cache!3412 thiss!28743))))))

(declare-fun lt!832663 () Unit!39309)

(assert (=> b!2238141 (= lt!832663 lt!832684)))

(declare-fun lt!832666 () (_ BitVec 64))

(assert (=> b!2238141 (= lt!832666 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538))))

(declare-fun lt!832661 () List!26451)

(assert (=> b!2238141 (= lt!832661 (apply!6490 lt!832686 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538)))))

(declare-fun lt!832669 () Unit!39309)

(assert (=> b!2238141 (= lt!832669 (lemmaGetValueImpliesTupleContained!21 lt!832686 lt!832666 lt!832661))))

(assert (=> b!2238141 (contains!4419 (toList!1367 lt!832686) (tuple2!25759 lt!832666 lt!832661))))

(declare-fun lt!832683 () Unit!39309)

(assert (=> b!2238141 (= lt!832683 lt!832669)))

(declare-fun lt!832665 () Unit!39309)

(assert (=> b!2238141 (= lt!832665 (forallContained!779 (toList!1367 lt!832686) lambda!84606 (tuple2!25759 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538) (apply!6490 lt!832686 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538)))))))

(assert (=> b!2238141 (isDefined!4143 (getPair!32 (apply!6490 lt!832686 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538)) lt!832538))))

(declare-fun lt!832670 () Unit!39309)

(assert (=> b!2238141 (= lt!832670 lt!832664)))

(assert (=> b!2238141 (= (_2!15368 (get!7973 (getPair!32 (apply!6490 lt!832686 (hash!579 (hashF!4954 (cache!3412 thiss!28743)) lt!832538)) lt!832538))) (get!7972 (getValueByKey!80 (toList!1366 (extractMap!112 (toList!1367 lt!832686))) lt!832538)))))

(declare-fun lt!832679 () Unit!39309)

(assert (=> b!2238141 (= lt!832679 lt!832671)))

(declare-fun b!2238142 () Bool)

(declare-fun Unit!39317 () Unit!39309)

(assert (=> b!2238142 (= e!1430715 Unit!39317)))

(declare-fun b!2238138 () Bool)

(assert (=> b!2238138 (= e!1430713 (= lt!832678 (dynLambda!11534 (defaultValue!3193 (cache!3412 thiss!28743)) lt!832538)))))

(declare-fun d!665575 () Bool)

(assert (=> d!665575 e!1430713))

(declare-fun c!356565 () Bool)

(assert (=> d!665575 (= c!356565 (contains!4418 (cache!3412 thiss!28743) lt!832538))))

(assert (=> d!665575 (= lt!832678 e!1430714)))

(declare-fun c!356563 () Bool)

(assert (=> d!665575 (= c!356563 (not (contains!4418 (cache!3412 thiss!28743) lt!832538)))))

(assert (=> d!665575 (valid!2353 (cache!3412 thiss!28743))))

(assert (=> d!665575 (= (apply!6488 (cache!3412 thiss!28743) lt!832538) lt!832678)))

(assert (= (and d!665575 c!356563) b!2238139))

(assert (= (and d!665575 (not c!356563)) b!2238141))

(assert (= (and b!2238141 c!356564) b!2238137))

(assert (= (and b!2238141 (not c!356564)) b!2238142))

(assert (= (and d!665575 c!356565) b!2238140))

(assert (= (and d!665575 (not c!356565)) b!2238138))

(declare-fun b_lambda!71717 () Bool)

(assert (=> (not b_lambda!71717) (not b!2238139)))

(declare-fun t!199879 () Bool)

(declare-fun tb!132857 () Bool)

(assert (=> (and b!2238039 (= (defaultValue!3193 (cache!3412 thiss!28743)) (defaultValue!3193 (cache!3412 thiss!28743))) t!199879) tb!132857))

(assert (=> b!2238139 t!199879))

(declare-fun result!161758 () Bool)

(declare-fun b_and!174949 () Bool)

(assert (= b_and!174945 (and (=> t!199879 result!161758) b_and!174949)))

(declare-fun b_lambda!71719 () Bool)

(assert (=> (not b_lambda!71719) (not b!2238138)))

(assert (=> b!2238138 t!199879))

(declare-fun b_and!174951 () Bool)

(assert (= b_and!174949 (and (=> t!199879 result!161758) b_and!174951)))

(declare-fun m!2671341 () Bool)

(assert (=> b!2238137 m!2671341))

(assert (=> b!2238137 m!2671277))

(declare-fun m!2671343 () Bool)

(assert (=> b!2238137 m!2671343))

(declare-fun m!2671345 () Bool)

(assert (=> b!2238137 m!2671345))

(assert (=> b!2238137 m!2671345))

(declare-fun m!2671347 () Bool)

(assert (=> b!2238137 m!2671347))

(declare-fun m!2671349 () Bool)

(assert (=> b!2238137 m!2671349))

(declare-fun m!2671351 () Bool)

(assert (=> b!2238137 m!2671351))

(declare-fun m!2671353 () Bool)

(assert (=> b!2238138 m!2671353))

(assert (=> d!665575 m!2671254))

(assert (=> d!665575 m!2671250))

(assert (=> b!2238139 m!2671353))

(assert (=> b!2238141 m!2671307))

(declare-fun m!2671355 () Bool)

(assert (=> b!2238141 m!2671355))

(assert (=> b!2238141 m!2671307))

(declare-fun m!2671357 () Bool)

(assert (=> b!2238141 m!2671357))

(declare-fun m!2671359 () Bool)

(assert (=> b!2238141 m!2671359))

(declare-fun m!2671361 () Bool)

(assert (=> b!2238141 m!2671361))

(declare-fun m!2671363 () Bool)

(assert (=> b!2238141 m!2671363))

(declare-fun m!2671365 () Bool)

(assert (=> b!2238141 m!2671365))

(assert (=> b!2238141 m!2671349))

(declare-fun m!2671367 () Bool)

(assert (=> b!2238141 m!2671367))

(assert (=> b!2238141 m!2671367))

(declare-fun m!2671369 () Bool)

(assert (=> b!2238141 m!2671369))

(assert (=> b!2238141 m!2671307))

(declare-fun m!2671371 () Bool)

(assert (=> b!2238141 m!2671371))

(declare-fun m!2671373 () Bool)

(assert (=> b!2238141 m!2671373))

(assert (=> b!2238141 m!2671357))

(declare-fun m!2671375 () Bool)

(assert (=> b!2238141 m!2671375))

(declare-fun m!2671377 () Bool)

(assert (=> b!2238141 m!2671377))

(declare-fun m!2671379 () Bool)

(assert (=> b!2238141 m!2671379))

(declare-fun m!2671381 () Bool)

(assert (=> b!2238141 m!2671381))

(declare-fun m!2671383 () Bool)

(assert (=> b!2238141 m!2671383))

(declare-fun m!2671385 () Bool)

(assert (=> b!2238141 m!2671385))

(declare-fun m!2671387 () Bool)

(assert (=> b!2238141 m!2671387))

(declare-fun m!2671389 () Bool)

(assert (=> b!2238141 m!2671389))

(assert (=> b!2238141 m!2671355))

(assert (=> b!2238141 m!2671357))

(assert (=> b!2238141 m!2671277))

(assert (=> b!2238141 m!2671383))

(declare-fun m!2671391 () Bool)

(assert (=> b!2238141 m!2671391))

(assert (=> b!2238141 m!2671373))

(declare-fun m!2671393 () Bool)

(assert (=> b!2238141 m!2671393))

(assert (=> b!2238141 m!2671349))

(assert (=> b!2238140 m!2671269))

(declare-fun m!2671395 () Bool)

(assert (=> b!2238140 m!2671395))

(assert (=> b!2238140 m!2671395))

(declare-fun m!2671397 () Bool)

(assert (=> b!2238140 m!2671397))

(assert (=> b!2238036 d!665575))

(declare-fun d!665577 () Bool)

(declare-fun dynLambda!11535 (Int tuple2!25756) Bool)

(assert (=> d!665577 (dynLambda!11535 lambda!84587 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538)))))

(declare-fun lt!832692 () Unit!39309)

(declare-fun choose!13139 (MutableMap!3031 tuple3!4038 Int) Unit!39309)

(assert (=> d!665577 (= lt!832692 (choose!13139 (cache!3412 thiss!28743) lt!832538 lambda!84587))))

(assert (=> d!665577 (valid!2353 (cache!3412 thiss!28743))))

(assert (=> d!665577 (= (lemmaForallPairsThenForLookup!26 (cache!3412 thiss!28743) lt!832538 lambda!84587) lt!832692)))

(declare-fun b_lambda!71721 () Bool)

(assert (=> (not b_lambda!71721) (not d!665577)))

(declare-fun bs!454250 () Bool)

(assert (= bs!454250 d!665577))

(assert (=> bs!454250 m!2671258))

(declare-fun m!2671399 () Bool)

(assert (=> bs!454250 m!2671399))

(declare-fun m!2671401 () Bool)

(assert (=> bs!454250 m!2671401))

(assert (=> bs!454250 m!2671250))

(assert (=> b!2238036 d!665577))

(declare-fun d!665579 () Bool)

(assert (=> d!665579 (= (array_inv!3469 (_keys!3418 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) (bvsge (size!20611 (_keys!3418 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2238033 d!665579))

(declare-fun d!665581 () Bool)

(assert (=> d!665581 (= (array_inv!3470 (_values!3401 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) (bvsge (size!20610 (_values!3401 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743))))))) #b00000000000000000000000000000000))))

(assert (=> b!2238033 d!665581))

(assert (=> b!2238047 d!665575))

(declare-fun b!2238165 () Bool)

(declare-fun e!1430731 () (InoxSet Context!4062))

(declare-fun e!1430729 () (InoxSet Context!4062))

(assert (=> b!2238165 (= e!1430731 e!1430729)))

(declare-fun c!356577 () Bool)

(assert (=> b!2238165 (= c!356577 ((_ is Union!6483) (_1!15367 lt!832538)))))

(declare-fun b!2238166 () Bool)

(declare-fun c!356579 () Bool)

(assert (=> b!2238166 (= c!356579 ((_ is Star!6483) (_1!15367 lt!832538)))))

(declare-fun e!1430733 () (InoxSet Context!4062))

(declare-fun e!1430732 () (InoxSet Context!4062))

(assert (=> b!2238166 (= e!1430733 e!1430732)))

(declare-fun bm!134981 () Bool)

(declare-fun call!134987 () (InoxSet Context!4062))

(declare-fun call!134988 () (InoxSet Context!4062))

(assert (=> bm!134981 (= call!134987 call!134988)))

(declare-fun b!2238167 () Bool)

(declare-fun e!1430728 () (InoxSet Context!4062))

(assert (=> b!2238167 (= e!1430728 e!1430733)))

(declare-fun c!356580 () Bool)

(assert (=> b!2238167 (= c!356580 ((_ is Concat!10821) (_1!15367 lt!832538)))))

(declare-fun b!2238168 () Bool)

(assert (=> b!2238168 (= e!1430732 ((as const (Array Context!4062 Bool)) false))))

(declare-fun d!665583 () Bool)

(declare-fun c!356578 () Bool)

(assert (=> d!665583 (= c!356578 (and ((_ is ElementMatch!6483) (_1!15367 lt!832538)) (= (c!356538 (_1!15367 lt!832538)) (_3!2489 lt!832538))))))

(assert (=> d!665583 (= (derivationStepZipperDown!75 (_1!15367 lt!832538) (_2!15367 lt!832538) (_3!2489 lt!832538)) e!1430731)))

(declare-fun b!2238169 () Bool)

(assert (=> b!2238169 (= e!1430731 (store ((as const (Array Context!4062 Bool)) false) (_2!15367 lt!832538) true))))

(declare-fun b!2238170 () Bool)

(declare-fun call!134991 () (InoxSet Context!4062))

(declare-fun call!134989 () (InoxSet Context!4062))

(assert (=> b!2238170 (= e!1430729 ((_ map or) call!134991 call!134989))))

(declare-fun b!2238171 () Bool)

(declare-fun c!356576 () Bool)

(declare-fun e!1430730 () Bool)

(assert (=> b!2238171 (= c!356576 e!1430730)))

(declare-fun res!957233 () Bool)

(assert (=> b!2238171 (=> (not res!957233) (not e!1430730))))

(assert (=> b!2238171 (= res!957233 ((_ is Concat!10821) (_1!15367 lt!832538)))))

(assert (=> b!2238171 (= e!1430729 e!1430728)))

(declare-fun b!2238172 () Bool)

(assert (=> b!2238172 (= e!1430732 call!134987)))

(declare-fun call!134986 () List!26450)

(declare-fun bm!134982 () Bool)

(declare-fun $colon$colon!533 (List!26450 Regex!6483) List!26450)

(assert (=> bm!134982 (= call!134986 ($colon$colon!533 (exprs!2531 (_2!15367 lt!832538)) (ite (or c!356576 c!356580) (regTwo!13478 (_1!15367 lt!832538)) (_1!15367 lt!832538))))))

(declare-fun bm!134983 () Bool)

(assert (=> bm!134983 (= call!134988 call!134989)))

(declare-fun bm!134984 () Bool)

(assert (=> bm!134984 (= call!134991 (derivationStepZipperDown!75 (ite c!356577 (regOne!13479 (_1!15367 lt!832538)) (regOne!13478 (_1!15367 lt!832538))) (ite c!356577 (_2!15367 lt!832538) (Context!4063 call!134986)) (_3!2489 lt!832538)))))

(declare-fun bm!134985 () Bool)

(declare-fun call!134990 () List!26450)

(assert (=> bm!134985 (= call!134990 call!134986)))

(declare-fun b!2238173 () Bool)

(assert (=> b!2238173 (= e!1430733 call!134987)))

(declare-fun b!2238174 () Bool)

(assert (=> b!2238174 (= e!1430728 ((_ map or) call!134991 call!134988))))

(declare-fun bm!134986 () Bool)

(assert (=> bm!134986 (= call!134989 (derivationStepZipperDown!75 (ite c!356577 (regTwo!13479 (_1!15367 lt!832538)) (ite c!356576 (regTwo!13478 (_1!15367 lt!832538)) (ite c!356580 (regOne!13478 (_1!15367 lt!832538)) (reg!6812 (_1!15367 lt!832538))))) (ite (or c!356577 c!356576) (_2!15367 lt!832538) (Context!4063 call!134990)) (_3!2489 lt!832538)))))

(declare-fun b!2238175 () Bool)

(assert (=> b!2238175 (= e!1430730 (nullable!1787 (regOne!13478 (_1!15367 lt!832538))))))

(assert (= (and d!665583 c!356578) b!2238169))

(assert (= (and d!665583 (not c!356578)) b!2238165))

(assert (= (and b!2238165 c!356577) b!2238170))

(assert (= (and b!2238165 (not c!356577)) b!2238171))

(assert (= (and b!2238171 res!957233) b!2238175))

(assert (= (and b!2238171 c!356576) b!2238174))

(assert (= (and b!2238171 (not c!356576)) b!2238167))

(assert (= (and b!2238167 c!356580) b!2238173))

(assert (= (and b!2238167 (not c!356580)) b!2238166))

(assert (= (and b!2238166 c!356579) b!2238172))

(assert (= (and b!2238166 (not c!356579)) b!2238168))

(assert (= (or b!2238173 b!2238172) bm!134985))

(assert (= (or b!2238173 b!2238172) bm!134981))

(assert (= (or b!2238174 bm!134981) bm!134983))

(assert (= (or b!2238174 bm!134985) bm!134982))

(assert (= (or b!2238170 bm!134983) bm!134986))

(assert (= (or b!2238170 b!2238174) bm!134984))

(declare-fun m!2671403 () Bool)

(assert (=> bm!134986 m!2671403))

(declare-fun m!2671405 () Bool)

(assert (=> bm!134984 m!2671405))

(declare-fun m!2671407 () Bool)

(assert (=> bm!134982 m!2671407))

(declare-fun m!2671409 () Bool)

(assert (=> b!2238169 m!2671409))

(declare-fun m!2671411 () Bool)

(assert (=> b!2238175 m!2671411))

(assert (=> b!2238047 d!665583))

(declare-fun e!1430736 () Bool)

(assert (=> b!2238043 (= tp!704298 e!1430736)))

(declare-fun b!2238189 () Bool)

(declare-fun tp!704317 () Bool)

(declare-fun tp!704318 () Bool)

(assert (=> b!2238189 (= e!1430736 (and tp!704317 tp!704318))))

(declare-fun b!2238188 () Bool)

(declare-fun tp!704320 () Bool)

(assert (=> b!2238188 (= e!1430736 tp!704320)))

(declare-fun b!2238186 () Bool)

(assert (=> b!2238186 (= e!1430736 tp_is_empty!10187)))

(declare-fun b!2238187 () Bool)

(declare-fun tp!704321 () Bool)

(declare-fun tp!704319 () Bool)

(assert (=> b!2238187 (= e!1430736 (and tp!704321 tp!704319))))

(assert (= (and b!2238043 ((_ is ElementMatch!6483) (regOne!13478 r!4750))) b!2238186))

(assert (= (and b!2238043 ((_ is Concat!10821) (regOne!13478 r!4750))) b!2238187))

(assert (= (and b!2238043 ((_ is Star!6483) (regOne!13478 r!4750))) b!2238188))

(assert (= (and b!2238043 ((_ is Union!6483) (regOne!13478 r!4750))) b!2238189))

(declare-fun e!1430737 () Bool)

(assert (=> b!2238043 (= tp!704296 e!1430737)))

(declare-fun b!2238193 () Bool)

(declare-fun tp!704322 () Bool)

(declare-fun tp!704323 () Bool)

(assert (=> b!2238193 (= e!1430737 (and tp!704322 tp!704323))))

(declare-fun b!2238192 () Bool)

(declare-fun tp!704325 () Bool)

(assert (=> b!2238192 (= e!1430737 tp!704325)))

(declare-fun b!2238190 () Bool)

(assert (=> b!2238190 (= e!1430737 tp_is_empty!10187)))

(declare-fun b!2238191 () Bool)

(declare-fun tp!704326 () Bool)

(declare-fun tp!704324 () Bool)

(assert (=> b!2238191 (= e!1430737 (and tp!704326 tp!704324))))

(assert (= (and b!2238043 ((_ is ElementMatch!6483) (regTwo!13478 r!4750))) b!2238190))

(assert (= (and b!2238043 ((_ is Concat!10821) (regTwo!13478 r!4750))) b!2238191))

(assert (= (and b!2238043 ((_ is Star!6483) (regTwo!13478 r!4750))) b!2238192))

(assert (= (and b!2238043 ((_ is Union!6483) (regTwo!13478 r!4750))) b!2238193))

(declare-fun setIsEmpty!20458 () Bool)

(declare-fun setRes!20458 () Bool)

(assert (=> setIsEmpty!20458 setRes!20458))

(declare-fun b!2238202 () Bool)

(declare-fun e!1430746 () Bool)

(declare-fun tp!704338 () Bool)

(assert (=> b!2238202 (= e!1430746 tp!704338)))

(declare-fun b!2238203 () Bool)

(declare-fun e!1430744 () Bool)

(declare-fun tp!704337 () Bool)

(assert (=> b!2238203 (= e!1430744 tp!704337)))

(declare-fun e!1430745 () Bool)

(assert (=> b!2238038 (= tp!704301 e!1430745)))

(declare-fun tp!704339 () Bool)

(declare-fun setElem!20458 () Context!4062)

(declare-fun setNonEmpty!20458 () Bool)

(assert (=> setNonEmpty!20458 (= setRes!20458 (and tp!704339 (inv!35801 setElem!20458) e!1430746))))

(declare-fun setRest!20458 () (InoxSet Context!4062))

(assert (=> setNonEmpty!20458 (= (_2!15368 (h!31758 mapDefault!14648)) ((_ map or) (store ((as const (Array Context!4062 Bool)) false) setElem!20458 true) setRest!20458))))

(declare-fun tp!704340 () Bool)

(declare-fun tp!704341 () Bool)

(declare-fun b!2238204 () Bool)

(assert (=> b!2238204 (= e!1430745 (and tp!704340 (inv!35801 (_2!15367 (_1!15368 (h!31758 mapDefault!14648)))) e!1430744 tp_is_empty!10187 setRes!20458 tp!704341))))

(declare-fun condSetEmpty!20458 () Bool)

(assert (=> b!2238204 (= condSetEmpty!20458 (= (_2!15368 (h!31758 mapDefault!14648)) ((as const (Array Context!4062 Bool)) false)))))

(assert (= b!2238204 b!2238203))

(assert (= (and b!2238204 condSetEmpty!20458) setIsEmpty!20458))

(assert (= (and b!2238204 (not condSetEmpty!20458)) setNonEmpty!20458))

(assert (= setNonEmpty!20458 b!2238202))

(assert (= (and b!2238038 ((_ is Cons!26357) mapDefault!14648)) b!2238204))

(declare-fun m!2671413 () Bool)

(assert (=> setNonEmpty!20458 m!2671413))

(declare-fun m!2671415 () Bool)

(assert (=> b!2238204 m!2671415))

(declare-fun b!2238209 () Bool)

(declare-fun e!1430749 () Bool)

(declare-fun tp!704346 () Bool)

(declare-fun tp!704347 () Bool)

(assert (=> b!2238209 (= e!1430749 (and tp!704346 tp!704347))))

(assert (=> b!2238035 (= tp!704306 e!1430749)))

(assert (= (and b!2238035 ((_ is Cons!26356) (exprs!2531 ctx!48))) b!2238209))

(declare-fun e!1430750 () Bool)

(assert (=> b!2238032 (= tp!704304 e!1430750)))

(declare-fun b!2238213 () Bool)

(declare-fun tp!704348 () Bool)

(declare-fun tp!704349 () Bool)

(assert (=> b!2238213 (= e!1430750 (and tp!704348 tp!704349))))

(declare-fun b!2238212 () Bool)

(declare-fun tp!704351 () Bool)

(assert (=> b!2238212 (= e!1430750 tp!704351)))

(declare-fun b!2238210 () Bool)

(assert (=> b!2238210 (= e!1430750 tp_is_empty!10187)))

(declare-fun b!2238211 () Bool)

(declare-fun tp!704352 () Bool)

(declare-fun tp!704350 () Bool)

(assert (=> b!2238211 (= e!1430750 (and tp!704352 tp!704350))))

(assert (= (and b!2238032 ((_ is ElementMatch!6483) (regOne!13479 r!4750))) b!2238210))

(assert (= (and b!2238032 ((_ is Concat!10821) (regOne!13479 r!4750))) b!2238211))

(assert (= (and b!2238032 ((_ is Star!6483) (regOne!13479 r!4750))) b!2238212))

(assert (= (and b!2238032 ((_ is Union!6483) (regOne!13479 r!4750))) b!2238213))

(declare-fun e!1430751 () Bool)

(assert (=> b!2238032 (= tp!704297 e!1430751)))

(declare-fun b!2238217 () Bool)

(declare-fun tp!704353 () Bool)

(declare-fun tp!704354 () Bool)

(assert (=> b!2238217 (= e!1430751 (and tp!704353 tp!704354))))

(declare-fun b!2238216 () Bool)

(declare-fun tp!704356 () Bool)

(assert (=> b!2238216 (= e!1430751 tp!704356)))

(declare-fun b!2238214 () Bool)

(assert (=> b!2238214 (= e!1430751 tp_is_empty!10187)))

(declare-fun b!2238215 () Bool)

(declare-fun tp!704357 () Bool)

(declare-fun tp!704355 () Bool)

(assert (=> b!2238215 (= e!1430751 (and tp!704357 tp!704355))))

(assert (= (and b!2238032 ((_ is ElementMatch!6483) (regTwo!13479 r!4750))) b!2238214))

(assert (= (and b!2238032 ((_ is Concat!10821) (regTwo!13479 r!4750))) b!2238215))

(assert (= (and b!2238032 ((_ is Star!6483) (regTwo!13479 r!4750))) b!2238216))

(assert (= (and b!2238032 ((_ is Union!6483) (regTwo!13479 r!4750))) b!2238217))

(declare-fun e!1430752 () Bool)

(assert (=> b!2238046 (= tp!704302 e!1430752)))

(declare-fun b!2238221 () Bool)

(declare-fun tp!704358 () Bool)

(declare-fun tp!704359 () Bool)

(assert (=> b!2238221 (= e!1430752 (and tp!704358 tp!704359))))

(declare-fun b!2238220 () Bool)

(declare-fun tp!704361 () Bool)

(assert (=> b!2238220 (= e!1430752 tp!704361)))

(declare-fun b!2238218 () Bool)

(assert (=> b!2238218 (= e!1430752 tp_is_empty!10187)))

(declare-fun b!2238219 () Bool)

(declare-fun tp!704362 () Bool)

(declare-fun tp!704360 () Bool)

(assert (=> b!2238219 (= e!1430752 (and tp!704362 tp!704360))))

(assert (= (and b!2238046 ((_ is ElementMatch!6483) (reg!6812 r!4750))) b!2238218))

(assert (= (and b!2238046 ((_ is Concat!10821) (reg!6812 r!4750))) b!2238219))

(assert (= (and b!2238046 ((_ is Star!6483) (reg!6812 r!4750))) b!2238220))

(assert (= (and b!2238046 ((_ is Union!6483) (reg!6812 r!4750))) b!2238221))

(declare-fun setIsEmpty!20459 () Bool)

(declare-fun setRes!20459 () Bool)

(assert (=> setIsEmpty!20459 setRes!20459))

(declare-fun b!2238222 () Bool)

(declare-fun e!1430755 () Bool)

(declare-fun tp!704364 () Bool)

(assert (=> b!2238222 (= e!1430755 tp!704364)))

(declare-fun b!2238223 () Bool)

(declare-fun e!1430753 () Bool)

(declare-fun tp!704363 () Bool)

(assert (=> b!2238223 (= e!1430753 tp!704363)))

(declare-fun e!1430754 () Bool)

(assert (=> b!2238033 (= tp!704303 e!1430754)))

(declare-fun setElem!20459 () Context!4062)

(declare-fun setNonEmpty!20459 () Bool)

(declare-fun tp!704365 () Bool)

(assert (=> setNonEmpty!20459 (= setRes!20459 (and tp!704365 (inv!35801 setElem!20459) e!1430755))))

(declare-fun setRest!20459 () (InoxSet Context!4062))

(assert (=> setNonEmpty!20459 (= (_2!15368 (h!31758 (zeroValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4062 Bool)) false) setElem!20459 true) setRest!20459))))

(declare-fun b!2238224 () Bool)

(declare-fun tp!704367 () Bool)

(declare-fun tp!704366 () Bool)

(assert (=> b!2238224 (= e!1430754 (and tp!704366 (inv!35801 (_2!15367 (_1!15368 (h!31758 (zeroValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))))) e!1430753 tp_is_empty!10187 setRes!20459 tp!704367))))

(declare-fun condSetEmpty!20459 () Bool)

(assert (=> b!2238224 (= condSetEmpty!20459 (= (_2!15368 (h!31758 (zeroValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))) ((as const (Array Context!4062 Bool)) false)))))

(assert (= b!2238224 b!2238223))

(assert (= (and b!2238224 condSetEmpty!20459) setIsEmpty!20459))

(assert (= (and b!2238224 (not condSetEmpty!20459)) setNonEmpty!20459))

(assert (= setNonEmpty!20459 b!2238222))

(assert (= (and b!2238033 ((_ is Cons!26357) (zeroValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))) b!2238224))

(declare-fun m!2671417 () Bool)

(assert (=> setNonEmpty!20459 m!2671417))

(declare-fun m!2671419 () Bool)

(assert (=> b!2238224 m!2671419))

(declare-fun setIsEmpty!20460 () Bool)

(declare-fun setRes!20460 () Bool)

(assert (=> setIsEmpty!20460 setRes!20460))

(declare-fun b!2238225 () Bool)

(declare-fun e!1430758 () Bool)

(declare-fun tp!704369 () Bool)

(assert (=> b!2238225 (= e!1430758 tp!704369)))

(declare-fun b!2238226 () Bool)

(declare-fun e!1430756 () Bool)

(declare-fun tp!704368 () Bool)

(assert (=> b!2238226 (= e!1430756 tp!704368)))

(declare-fun e!1430757 () Bool)

(assert (=> b!2238033 (= tp!704294 e!1430757)))

(declare-fun setNonEmpty!20460 () Bool)

(declare-fun setElem!20460 () Context!4062)

(declare-fun tp!704370 () Bool)

(assert (=> setNonEmpty!20460 (= setRes!20460 (and tp!704370 (inv!35801 setElem!20460) e!1430758))))

(declare-fun setRest!20460 () (InoxSet Context!4062))

(assert (=> setNonEmpty!20460 (= (_2!15368 (h!31758 (minValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))) ((_ map or) (store ((as const (Array Context!4062 Bool)) false) setElem!20460 true) setRest!20460))))

(declare-fun tp!704372 () Bool)

(declare-fun tp!704371 () Bool)

(declare-fun b!2238227 () Bool)

(assert (=> b!2238227 (= e!1430757 (and tp!704371 (inv!35801 (_2!15367 (_1!15368 (h!31758 (minValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))))) e!1430756 tp_is_empty!10187 setRes!20460 tp!704372))))

(declare-fun condSetEmpty!20460 () Bool)

(assert (=> b!2238227 (= condSetEmpty!20460 (= (_2!15368 (h!31758 (minValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))) ((as const (Array Context!4062 Bool)) false)))))

(assert (= b!2238227 b!2238226))

(assert (= (and b!2238227 condSetEmpty!20460) setIsEmpty!20460))

(assert (= (and b!2238227 (not condSetEmpty!20460)) setNonEmpty!20460))

(assert (= setNonEmpty!20460 b!2238225))

(assert (= (and b!2238033 ((_ is Cons!26357) (minValue!3379 (v!29970 (underlying!6443 (v!29971 (underlying!6444 (cache!3412 thiss!28743)))))))) b!2238227))

(declare-fun m!2671421 () Bool)

(assert (=> setNonEmpty!20460 m!2671421))

(declare-fun m!2671423 () Bool)

(assert (=> b!2238227 m!2671423))

(declare-fun b!2238242 () Bool)

(declare-fun e!1430776 () Bool)

(declare-fun tp!704398 () Bool)

(assert (=> b!2238242 (= e!1430776 tp!704398)))

(declare-fun mapIsEmpty!14651 () Bool)

(declare-fun mapRes!14651 () Bool)

(assert (=> mapIsEmpty!14651 mapRes!14651))

(declare-fun tp!704404 () Bool)

(declare-fun mapValue!14651 () List!26451)

(declare-fun tp!704400 () Bool)

(declare-fun b!2238243 () Bool)

(declare-fun setRes!20466 () Bool)

(declare-fun e!1430774 () Bool)

(assert (=> b!2238243 (= e!1430774 (and tp!704400 (inv!35801 (_2!15367 (_1!15368 (h!31758 mapValue!14651)))) e!1430776 tp_is_empty!10187 setRes!20466 tp!704404))))

(declare-fun condSetEmpty!20466 () Bool)

(assert (=> b!2238243 (= condSetEmpty!20466 (= (_2!15368 (h!31758 mapValue!14651)) ((as const (Array Context!4062 Bool)) false)))))

(declare-fun b!2238244 () Bool)

(declare-fun e!1430773 () Bool)

(declare-fun tp!704395 () Bool)

(assert (=> b!2238244 (= e!1430773 tp!704395)))

(declare-fun tp!704401 () Bool)

(declare-fun setRes!20465 () Bool)

(declare-fun e!1430771 () Bool)

(declare-fun e!1430772 () Bool)

(declare-fun b!2238245 () Bool)

(declare-fun mapDefault!14651 () List!26451)

(declare-fun tp!704397 () Bool)

(assert (=> b!2238245 (= e!1430771 (and tp!704401 (inv!35801 (_2!15367 (_1!15368 (h!31758 mapDefault!14651)))) e!1430772 tp_is_empty!10187 setRes!20465 tp!704397))))

(declare-fun condSetEmpty!20465 () Bool)

(assert (=> b!2238245 (= condSetEmpty!20465 (= (_2!15368 (h!31758 mapDefault!14651)) ((as const (Array Context!4062 Bool)) false)))))

(declare-fun b!2238246 () Bool)

(declare-fun tp!704405 () Bool)

(assert (=> b!2238246 (= e!1430772 tp!704405)))

(declare-fun setIsEmpty!20465 () Bool)

(assert (=> setIsEmpty!20465 setRes!20465))

(declare-fun condMapEmpty!14651 () Bool)

(assert (=> mapNonEmpty!14648 (= condMapEmpty!14651 (= mapRest!14648 ((as const (Array (_ BitVec 32) List!26451)) mapDefault!14651)))))

(assert (=> mapNonEmpty!14648 (= tp!704299 (and e!1430771 mapRes!14651))))

(declare-fun b!2238247 () Bool)

(declare-fun e!1430775 () Bool)

(declare-fun tp!704403 () Bool)

(assert (=> b!2238247 (= e!1430775 tp!704403)))

(declare-fun setNonEmpty!20465 () Bool)

(declare-fun tp!704399 () Bool)

(declare-fun setElem!20466 () Context!4062)

(assert (=> setNonEmpty!20465 (= setRes!20465 (and tp!704399 (inv!35801 setElem!20466) e!1430775))))

(declare-fun setRest!20466 () (InoxSet Context!4062))

(assert (=> setNonEmpty!20465 (= (_2!15368 (h!31758 mapDefault!14651)) ((_ map or) (store ((as const (Array Context!4062 Bool)) false) setElem!20466 true) setRest!20466))))

(declare-fun setNonEmpty!20466 () Bool)

(declare-fun tp!704396 () Bool)

(declare-fun setElem!20465 () Context!4062)

(assert (=> setNonEmpty!20466 (= setRes!20466 (and tp!704396 (inv!35801 setElem!20465) e!1430773))))

(declare-fun setRest!20465 () (InoxSet Context!4062))

(assert (=> setNonEmpty!20466 (= (_2!15368 (h!31758 mapValue!14651)) ((_ map or) (store ((as const (Array Context!4062 Bool)) false) setElem!20465 true) setRest!20465))))

(declare-fun mapNonEmpty!14651 () Bool)

(declare-fun tp!704402 () Bool)

(assert (=> mapNonEmpty!14651 (= mapRes!14651 (and tp!704402 e!1430774))))

(declare-fun mapRest!14651 () (Array (_ BitVec 32) List!26451))

(declare-fun mapKey!14651 () (_ BitVec 32))

(assert (=> mapNonEmpty!14651 (= mapRest!14648 (store mapRest!14651 mapKey!14651 mapValue!14651))))

(declare-fun setIsEmpty!20466 () Bool)

(assert (=> setIsEmpty!20466 setRes!20466))

(assert (= (and mapNonEmpty!14648 condMapEmpty!14651) mapIsEmpty!14651))

(assert (= (and mapNonEmpty!14648 (not condMapEmpty!14651)) mapNonEmpty!14651))

(assert (= b!2238243 b!2238242))

(assert (= (and b!2238243 condSetEmpty!20466) setIsEmpty!20466))

(assert (= (and b!2238243 (not condSetEmpty!20466)) setNonEmpty!20466))

(assert (= setNonEmpty!20466 b!2238244))

(assert (= (and mapNonEmpty!14651 ((_ is Cons!26357) mapValue!14651)) b!2238243))

(assert (= b!2238245 b!2238246))

(assert (= (and b!2238245 condSetEmpty!20465) setIsEmpty!20465))

(assert (= (and b!2238245 (not condSetEmpty!20465)) setNonEmpty!20465))

(assert (= setNonEmpty!20465 b!2238247))

(assert (= (and mapNonEmpty!14648 ((_ is Cons!26357) mapDefault!14651)) b!2238245))

(declare-fun m!2671425 () Bool)

(assert (=> mapNonEmpty!14651 m!2671425))

(declare-fun m!2671427 () Bool)

(assert (=> setNonEmpty!20465 m!2671427))

(declare-fun m!2671429 () Bool)

(assert (=> b!2238245 m!2671429))

(declare-fun m!2671431 () Bool)

(assert (=> setNonEmpty!20466 m!2671431))

(declare-fun m!2671433 () Bool)

(assert (=> b!2238243 m!2671433))

(declare-fun setIsEmpty!20467 () Bool)

(declare-fun setRes!20467 () Bool)

(assert (=> setIsEmpty!20467 setRes!20467))

(declare-fun b!2238248 () Bool)

(declare-fun e!1430779 () Bool)

(declare-fun tp!704407 () Bool)

(assert (=> b!2238248 (= e!1430779 tp!704407)))

(declare-fun b!2238249 () Bool)

(declare-fun e!1430777 () Bool)

(declare-fun tp!704406 () Bool)

(assert (=> b!2238249 (= e!1430777 tp!704406)))

(declare-fun e!1430778 () Bool)

(assert (=> mapNonEmpty!14648 (= tp!704295 e!1430778)))

(declare-fun tp!704408 () Bool)

(declare-fun setNonEmpty!20467 () Bool)

(declare-fun setElem!20467 () Context!4062)

(assert (=> setNonEmpty!20467 (= setRes!20467 (and tp!704408 (inv!35801 setElem!20467) e!1430779))))

(declare-fun setRest!20467 () (InoxSet Context!4062))

(assert (=> setNonEmpty!20467 (= (_2!15368 (h!31758 mapValue!14648)) ((_ map or) (store ((as const (Array Context!4062 Bool)) false) setElem!20467 true) setRest!20467))))

(declare-fun tp!704410 () Bool)

(declare-fun b!2238250 () Bool)

(declare-fun tp!704409 () Bool)

(assert (=> b!2238250 (= e!1430778 (and tp!704409 (inv!35801 (_2!15367 (_1!15368 (h!31758 mapValue!14648)))) e!1430777 tp_is_empty!10187 setRes!20467 tp!704410))))

(declare-fun condSetEmpty!20467 () Bool)

(assert (=> b!2238250 (= condSetEmpty!20467 (= (_2!15368 (h!31758 mapValue!14648)) ((as const (Array Context!4062 Bool)) false)))))

(assert (= b!2238250 b!2238249))

(assert (= (and b!2238250 condSetEmpty!20467) setIsEmpty!20467))

(assert (= (and b!2238250 (not condSetEmpty!20467)) setNonEmpty!20467))

(assert (= setNonEmpty!20467 b!2238248))

(assert (= (and mapNonEmpty!14648 ((_ is Cons!26357) mapValue!14648)) b!2238250))

(declare-fun m!2671435 () Bool)

(assert (=> setNonEmpty!20467 m!2671435))

(declare-fun m!2671437 () Bool)

(assert (=> b!2238250 m!2671437))

(declare-fun b_lambda!71723 () Bool)

(assert (= b_lambda!71719 (or (and b!2238039 b_free!64945) b_lambda!71723)))

(declare-fun b_lambda!71725 () Bool)

(assert (= b_lambda!71717 (or (and b!2238039 b_free!64945) b_lambda!71725)))

(declare-fun b_lambda!71727 () Bool)

(assert (= b_lambda!71721 (or b!2238036 b_lambda!71727)))

(declare-fun bs!454251 () Bool)

(declare-fun d!665585 () Bool)

(assert (= bs!454251 (and d!665585 b!2238036)))

(declare-fun res!957234 () Bool)

(declare-fun e!1430780 () Bool)

(assert (=> bs!454251 (=> (not res!957234) (not e!1430780))))

(assert (=> bs!454251 (= res!957234 (validRegex!2437 (_1!15367 (_1!15368 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538))))))))

(assert (=> bs!454251 (= (dynLambda!11535 lambda!84587 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538))) e!1430780)))

(declare-fun b!2238251 () Bool)

(assert (=> b!2238251 (= e!1430780 (= (_2!15368 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538))) (derivationStepZipperDown!75 (_1!15367 (_1!15368 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538)))) (_2!15367 (_1!15368 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538)))) (_3!2489 (_1!15368 (tuple2!25757 lt!832538 (apply!6488 (cache!3412 thiss!28743) lt!832538)))))))))

(assert (= (and bs!454251 res!957234) b!2238251))

(declare-fun m!2671439 () Bool)

(assert (=> bs!454251 m!2671439))

(declare-fun m!2671441 () Bool)

(assert (=> b!2238251 m!2671441))

(assert (=> d!665577 d!665585))

(check-sat (not b_next!65649) (not b!2238249) (not b!2238137) tp_is_empty!10187 (not tb!132857) (not d!665577) (not bm!134986) (not b!2238217) (not b!2238187) (not bm!134957) (not d!665563) (not b!2238246) (not b_lambda!71727) (not b!2238054) (not bm!134958) (not b!2238221) (not b!2238081) b_and!174947 (not b!2238227) (not bm!134959) (not setNonEmpty!20460) (not setNonEmpty!20466) (not b!2238222) (not b!2238202) (not d!665567) (not b_next!65651) (not b!2238141) (not d!665571) (not bm!134966) (not b!2238209) (not b!2238224) (not b!2238083) (not b!2238243) (not b!2238120) (not b!2238215) (not bm!134984) (not b!2238192) (not b!2238216) (not b!2238087) (not b!2238225) (not b!2238248) (not b!2238097) (not b!2238189) (not bs!454251) (not b_lambda!71723) (not b!2238203) (not b!2238251) (not b!2238245) (not b!2238247) (not mapNonEmpty!14651) (not b!2238193) (not d!665575) (not b!2238188) (not bm!134954) (not setNonEmpty!20459) (not b!2238090) (not b!2238096) (not b!2238213) (not setNonEmpty!20458) (not bm!134967) (not bm!134956) (not b!2238211) (not b!2238250) (not b!2238140) (not d!665569) (not b!2238244) (not b!2238055) (not b!2238242) b_and!174951 (not b!2238212) (not b!2238191) (not bm!134982) (not setNonEmpty!20467) (not b!2238219) (not b!2238175) (not setNonEmpty!20465) (not b!2238058) (not b!2238082) (not b!2238223) (not bm!134955) (not b!2238220) (not b!2238204) (not b!2238226) (not b_lambda!71725))
(check-sat b_and!174947 b_and!174951 (not b_next!65649) (not b_next!65651))
