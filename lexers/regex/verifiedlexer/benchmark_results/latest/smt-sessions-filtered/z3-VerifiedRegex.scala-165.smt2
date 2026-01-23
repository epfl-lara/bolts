; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2018 () Bool)

(assert start!2018)

(declare-fun b!36410 () Bool)

(declare-fun b_free!557 () Bool)

(declare-fun b_next!557 () Bool)

(assert (=> b!36410 (= b_free!557 (not b_next!557))))

(declare-fun tp!25202 () Bool)

(declare-fun b_and!591 () Bool)

(assert (=> b!36410 (= tp!25202 b_and!591)))

(declare-fun b!36401 () Bool)

(declare-fun b_free!559 () Bool)

(declare-fun b_next!559 () Bool)

(assert (=> b!36401 (= b_free!559 (not b_next!559))))

(declare-fun tp!25204 () Bool)

(declare-fun b_and!593 () Bool)

(assert (=> b!36401 (= tp!25204 b_and!593)))

(declare-datatypes ((C!1384 0))(
  ( (C!1385 (val!211 Int)) )
))
(declare-datatypes ((Regex!175 0))(
  ( (ElementMatch!175 (c!15500 C!1384)) (Concat!294 (regOne!862 Regex!175) (regTwo!862 Regex!175)) (EmptyExpr!175) (Star!175 (reg!504 Regex!175)) (EmptyLang!175) (Union!175 (regOne!863 Regex!175) (regTwo!863 Regex!175)) )
))
(declare-datatypes ((tuple2!376 0))(
  ( (tuple2!377 (_1!254 Regex!175) (_2!254 C!1384)) )
))
(declare-datatypes ((tuple2!378 0))(
  ( (tuple2!379 (_1!255 tuple2!376) (_2!255 Regex!175)) )
))
(declare-datatypes ((List!409 0))(
  ( (Nil!407) (Cons!407 (h!5803 tuple2!378) (t!15245 List!409)) )
))
(declare-datatypes ((array!374 0))(
  ( (array!375 (arr!200 (Array (_ BitVec 32) List!409)) (size!456 (_ BitVec 32))) )
))
(declare-datatypes ((array!376 0))(
  ( (array!377 (arr!201 (Array (_ BitVec 32) (_ BitVec 64))) (size!457 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!222 0))(
  ( (LongMapFixedSize!223 (defaultEntry!449 Int) (mask!800 (_ BitVec 32)) (extraKeys!357 (_ BitVec 32)) (zeroValue!367 List!409) (minValue!367 List!409) (_size!354 (_ BitVec 32)) (_keys!402 array!376) (_values!389 array!374) (_vacant!171 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!107 0))(
  ( (HashableExt!106 (__x!755 Int)) )
))
(declare-datatypes ((Cell!433 0))(
  ( (Cell!434 (v!12191 LongMapFixedSize!222)) )
))
(declare-datatypes ((MutLongMap!111 0))(
  ( (LongMap!111 (underlying!417 Cell!433)) (MutLongMapExt!110 (__x!756 Int)) )
))
(declare-datatypes ((Cell!435 0))(
  ( (Cell!436 (v!12192 MutLongMap!111)) )
))
(declare-datatypes ((MutableMap!107 0))(
  ( (MutableMapExt!106 (__x!757 Int)) (HashMap!107 (underlying!418 Cell!435) (hashF!1975 Hashable!107) (_size!355 (_ BitVec 32)) (defaultValue!256 Int)) )
))
(declare-datatypes ((Cache!22 0))(
  ( (Cache!23 (cache!587 MutableMap!107)) )
))
(declare-fun cache!443 () Cache!22)

(declare-datatypes ((List!410 0))(
  ( (Nil!408) (Cons!408 (h!5804 C!1384) (t!15246 List!410)) )
))
(declare-fun input!6011 () List!410)

(declare-fun e!17877 () Bool)

(declare-fun b!36399 () Bool)

(declare-fun r!13380 () Regex!175)

(declare-fun validRegex!12 (Regex!175) Bool)

(declare-datatypes ((tuple2!380 0))(
  ( (tuple2!381 (_1!256 Regex!175) (_2!256 Cache!22)) )
))
(declare-fun derivativeStepMem!4 (Regex!175 C!1384 Cache!22) tuple2!380)

(declare-fun head!332 (List!410) C!1384)

(assert (=> b!36399 (= e!17877 (not (validRegex!12 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))

(declare-fun b!36400 () Bool)

(declare-fun e!17875 () Bool)

(declare-fun tp_is_empty!375 () Bool)

(declare-fun tp!25208 () Bool)

(assert (=> b!36400 (= e!17875 (and tp_is_empty!375 tp!25208))))

(declare-fun e!17878 () Bool)

(declare-fun e!17879 () Bool)

(assert (=> b!36401 (= e!17878 (and e!17879 tp!25204))))

(declare-fun b!36402 () Bool)

(declare-fun e!17883 () Bool)

(assert (=> b!36402 (= e!17883 tp_is_empty!375)))

(declare-fun b!36403 () Bool)

(declare-fun res!28184 () Bool)

(assert (=> b!36403 (=> (not res!28184) (not e!17877))))

(declare-fun valid!119 (Cache!22) Bool)

(assert (=> b!36403 (= res!28184 (valid!119 cache!443))))

(declare-fun b!36405 () Bool)

(declare-fun tp!25207 () Bool)

(declare-fun tp!25205 () Bool)

(assert (=> b!36405 (= e!17883 (and tp!25207 tp!25205))))

(declare-fun b!36406 () Bool)

(declare-fun e!17884 () Bool)

(declare-fun e!17880 () Bool)

(assert (=> b!36406 (= e!17884 e!17880)))

(declare-fun b!36407 () Bool)

(declare-fun e!17882 () Bool)

(assert (=> b!36407 (= e!17882 e!17884)))

(declare-fun mapNonEmpty!373 () Bool)

(declare-fun mapRes!373 () Bool)

(declare-fun tp!25206 () Bool)

(declare-fun tp!25201 () Bool)

(assert (=> mapNonEmpty!373 (= mapRes!373 (and tp!25206 tp!25201))))

(declare-fun mapValue!373 () List!409)

(declare-fun mapKey!373 () (_ BitVec 32))

(declare-fun mapRest!373 () (Array (_ BitVec 32) List!409))

(assert (=> mapNonEmpty!373 (= (arr!200 (_values!389 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) (store mapRest!373 mapKey!373 mapValue!373))))

(declare-fun b!36408 () Bool)

(declare-fun tp!25199 () Bool)

(declare-fun tp!25209 () Bool)

(assert (=> b!36408 (= e!17883 (and tp!25199 tp!25209))))

(declare-fun b!36409 () Bool)

(declare-fun e!17876 () Bool)

(declare-fun tp!25198 () Bool)

(assert (=> b!36409 (= e!17876 (and tp!25198 mapRes!373))))

(declare-fun condMapEmpty!373 () Bool)

(declare-fun mapDefault!373 () List!409)

(assert (=> b!36409 (= condMapEmpty!373 (= (arr!200 (_values!389 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) ((as const (Array (_ BitVec 32) List!409)) mapDefault!373)))))

(declare-fun tp!25197 () Bool)

(declare-fun tp!25200 () Bool)

(declare-fun array_inv!120 (array!376) Bool)

(declare-fun array_inv!121 (array!374) Bool)

(assert (=> b!36410 (= e!17880 (and tp!25202 tp!25197 tp!25200 (array_inv!120 (_keys!402 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) (array_inv!121 (_values!389 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) e!17876))))

(declare-fun b!36411 () Bool)

(declare-fun tp!25203 () Bool)

(assert (=> b!36411 (= e!17883 tp!25203)))

(declare-fun mapIsEmpty!373 () Bool)

(assert (=> mapIsEmpty!373 mapRes!373))

(declare-fun res!28183 () Bool)

(assert (=> start!2018 (=> (not res!28183) (not e!17877))))

(assert (=> start!2018 (= res!28183 (validRegex!12 r!13380))))

(assert (=> start!2018 e!17877))

(assert (=> start!2018 e!17883))

(declare-fun e!17874 () Bool)

(declare-fun inv!712 (Cache!22) Bool)

(assert (=> start!2018 (and (inv!712 cache!443) e!17874)))

(assert (=> start!2018 e!17875))

(declare-fun b!36404 () Bool)

(declare-fun lt!3045 () MutLongMap!111)

(get-info :version)

(assert (=> b!36404 (= e!17879 (and e!17882 ((_ is LongMap!111) lt!3045)))))

(assert (=> b!36404 (= lt!3045 (v!12192 (underlying!418 (cache!587 cache!443))))))

(declare-fun b!36412 () Bool)

(assert (=> b!36412 (= e!17874 e!17878)))

(declare-fun b!36413 () Bool)

(declare-fun res!28185 () Bool)

(assert (=> b!36413 (=> (not res!28185) (not e!17877))))

(declare-fun isEmpty!91 (List!410) Bool)

(assert (=> b!36413 (= res!28185 (not (isEmpty!91 input!6011)))))

(assert (= (and start!2018 res!28183) b!36403))

(assert (= (and b!36403 res!28184) b!36413))

(assert (= (and b!36413 res!28185) b!36399))

(assert (= (and start!2018 ((_ is ElementMatch!175) r!13380)) b!36402))

(assert (= (and start!2018 ((_ is Concat!294) r!13380)) b!36408))

(assert (= (and start!2018 ((_ is Star!175) r!13380)) b!36411))

(assert (= (and start!2018 ((_ is Union!175) r!13380)) b!36405))

(assert (= (and b!36409 condMapEmpty!373) mapIsEmpty!373))

(assert (= (and b!36409 (not condMapEmpty!373)) mapNonEmpty!373))

(assert (= b!36410 b!36409))

(assert (= b!36406 b!36410))

(assert (= b!36407 b!36406))

(assert (= (and b!36404 ((_ is LongMap!111) (v!12192 (underlying!418 (cache!587 cache!443))))) b!36407))

(assert (= b!36401 b!36404))

(assert (= (and b!36412 ((_ is HashMap!107) (cache!587 cache!443))) b!36401))

(assert (= start!2018 b!36412))

(assert (= (and start!2018 ((_ is Cons!408) input!6011)) b!36400))

(declare-fun m!11824 () Bool)

(assert (=> b!36413 m!11824))

(declare-fun m!11826 () Bool)

(assert (=> b!36410 m!11826))

(declare-fun m!11828 () Bool)

(assert (=> b!36410 m!11828))

(declare-fun m!11830 () Bool)

(assert (=> start!2018 m!11830))

(declare-fun m!11832 () Bool)

(assert (=> start!2018 m!11832))

(declare-fun m!11834 () Bool)

(assert (=> b!36399 m!11834))

(assert (=> b!36399 m!11834))

(declare-fun m!11836 () Bool)

(assert (=> b!36399 m!11836))

(declare-fun m!11838 () Bool)

(assert (=> b!36399 m!11838))

(declare-fun m!11840 () Bool)

(assert (=> b!36403 m!11840))

(declare-fun m!11842 () Bool)

(assert (=> mapNonEmpty!373 m!11842))

(check-sat (not b!36413) (not b_next!559) (not b!36399) b_and!593 (not b!36405) (not mapNonEmpty!373) (not b!36410) (not b!36411) (not b!36408) b_and!591 (not b!36409) (not b!36403) tp_is_empty!375 (not b!36400) (not start!2018) (not b_next!557))
(check-sat b_and!591 b_and!593 (not b_next!557) (not b_next!559))
(get-model)

(declare-fun d!3894 () Bool)

(declare-fun validCacheMap!3 (MutableMap!107) Bool)

(assert (=> d!3894 (= (valid!119 cache!443) (validCacheMap!3 (cache!587 cache!443)))))

(declare-fun bs!4968 () Bool)

(assert (= bs!4968 d!3894))

(declare-fun m!11844 () Bool)

(assert (=> bs!4968 m!11844))

(assert (=> b!36403 d!3894))

(declare-fun d!3896 () Bool)

(assert (=> d!3896 (= (array_inv!120 (_keys!402 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) (bvsge (size!457 (_keys!402 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!36410 d!3896))

(declare-fun d!3898 () Bool)

(assert (=> d!3898 (= (array_inv!121 (_values!389 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) (bvsge (size!456 (_values!389 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!36410 d!3898))

(declare-fun c!15505 () Bool)

(declare-fun c!15506 () Bool)

(declare-fun bm!2701 () Bool)

(declare-fun call!2708 () Bool)

(assert (=> bm!2701 (= call!2708 (validRegex!12 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))

(declare-fun b!36432 () Bool)

(declare-fun e!17899 () Bool)

(declare-fun call!2707 () Bool)

(assert (=> b!36432 (= e!17899 call!2707)))

(declare-fun bm!2702 () Bool)

(assert (=> bm!2702 (= call!2707 (validRegex!12 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))

(declare-fun b!36434 () Bool)

(declare-fun e!17901 () Bool)

(declare-fun e!17902 () Bool)

(assert (=> b!36434 (= e!17901 e!17902)))

(assert (=> b!36434 (= c!15506 ((_ is Star!175) (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))

(declare-fun bm!2703 () Bool)

(declare-fun call!2706 () Bool)

(assert (=> bm!2703 (= call!2706 call!2708)))

(declare-fun b!36435 () Bool)

(declare-fun e!17905 () Bool)

(assert (=> b!36435 (= e!17902 e!17905)))

(declare-fun res!28196 () Bool)

(declare-fun nullable!10 (Regex!175) Bool)

(assert (=> b!36435 (= res!28196 (not (nullable!10 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))

(assert (=> b!36435 (=> (not res!28196) (not e!17905))))

(declare-fun b!36436 () Bool)

(declare-fun res!28199 () Bool)

(declare-fun e!17903 () Bool)

(assert (=> b!36436 (=> res!28199 e!17903)))

(assert (=> b!36436 (= res!28199 (not ((_ is Concat!294) (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))

(declare-fun e!17904 () Bool)

(assert (=> b!36436 (= e!17904 e!17903)))

(declare-fun b!36437 () Bool)

(declare-fun e!17900 () Bool)

(assert (=> b!36437 (= e!17900 call!2707)))

(declare-fun b!36438 () Bool)

(declare-fun res!28200 () Bool)

(assert (=> b!36438 (=> (not res!28200) (not e!17899))))

(assert (=> b!36438 (= res!28200 call!2706)))

(assert (=> b!36438 (= e!17904 e!17899)))

(declare-fun d!3900 () Bool)

(declare-fun res!28197 () Bool)

(assert (=> d!3900 (=> res!28197 e!17901)))

(assert (=> d!3900 (= res!28197 ((_ is ElementMatch!175) (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))

(assert (=> d!3900 (= (validRegex!12 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) e!17901)))

(declare-fun b!36433 () Bool)

(assert (=> b!36433 (= e!17902 e!17904)))

(assert (=> b!36433 (= c!15505 ((_ is Union!175) (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))

(declare-fun b!36439 () Bool)

(assert (=> b!36439 (= e!17905 call!2708)))

(declare-fun b!36440 () Bool)

(assert (=> b!36440 (= e!17903 e!17900)))

(declare-fun res!28198 () Bool)

(assert (=> b!36440 (=> (not res!28198) (not e!17900))))

(assert (=> b!36440 (= res!28198 call!2706)))

(assert (= (and d!3900 (not res!28197)) b!36434))

(assert (= (and b!36434 c!15506) b!36435))

(assert (= (and b!36434 (not c!15506)) b!36433))

(assert (= (and b!36435 res!28196) b!36439))

(assert (= (and b!36433 c!15505) b!36438))

(assert (= (and b!36433 (not c!15505)) b!36436))

(assert (= (and b!36438 res!28200) b!36432))

(assert (= (and b!36436 (not res!28199)) b!36440))

(assert (= (and b!36440 res!28198) b!36437))

(assert (= (or b!36438 b!36440) bm!2703))

(assert (= (or b!36432 b!36437) bm!2702))

(assert (= (or b!36439 bm!2703) bm!2701))

(declare-fun m!11846 () Bool)

(assert (=> bm!2701 m!11846))

(declare-fun m!11848 () Bool)

(assert (=> bm!2702 m!11848))

(declare-fun m!11850 () Bool)

(assert (=> b!36435 m!11850))

(assert (=> b!36399 d!3900))

(declare-fun bm!2712 () Bool)

(declare-fun call!2720 () tuple2!380)

(declare-fun call!2719 () tuple2!380)

(assert (=> bm!2712 (= call!2720 call!2719)))

(declare-fun c!15520 () Bool)

(declare-fun lt!3067 () tuple2!380)

(declare-fun c!15523 () Bool)

(declare-fun bm!2713 () Bool)

(assert (=> bm!2713 (= call!2719 (derivativeStepMem!4 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))) (head!332 input!6011) (ite c!15523 (_2!256 lt!3067) cache!443)))))

(declare-fun bm!2714 () Bool)

(declare-fun call!2717 () tuple2!380)

(assert (=> bm!2714 (= call!2717 call!2720)))

(declare-fun e!17919 () tuple2!380)

(declare-fun b!36465 () Bool)

(assert (=> b!36465 (= e!17919 (tuple2!381 (ite (= (head!332 input!6011) (c!15500 r!13380)) EmptyExpr!175 EmptyLang!175) cache!443))))

(declare-fun b!36466 () Bool)

(declare-fun lt!3070 () tuple2!380)

(assert (=> b!36466 (= lt!3070 call!2719)))

(declare-fun call!2718 () tuple2!380)

(assert (=> b!36466 (= lt!3067 call!2718)))

(declare-fun e!17918 () tuple2!380)

(assert (=> b!36466 (= e!17918 (tuple2!381 (Union!175 (_1!256 lt!3067) (_1!256 lt!3070)) (_2!256 lt!3070)))))

(declare-fun b!36467 () Bool)

(assert (=> b!36467 (= c!15520 ((_ is Star!175) r!13380))))

(declare-fun e!17922 () tuple2!380)

(assert (=> b!36467 (= e!17918 e!17922)))

(declare-fun b!36469 () Bool)

(declare-fun e!17923 () tuple2!380)

(assert (=> b!36469 (= e!17923 (tuple2!381 EmptyLang!175 cache!443))))

(declare-fun b!36470 () Bool)

(declare-fun e!17920 () tuple2!380)

(declare-datatypes ((Option!47 0))(
  ( (None!46) (Some!46 (v!12193 Regex!175)) )
))
(declare-fun lt!3064 () Option!47)

(assert (=> b!36470 (= e!17920 (tuple2!381 (v!12193 lt!3064) cache!443))))

(declare-fun b!36471 () Bool)

(declare-fun c!15524 () Bool)

(assert (=> b!36471 (= c!15524 ((_ is ElementMatch!175) r!13380))))

(assert (=> b!36471 (= e!17923 e!17919)))

(declare-fun b!36472 () Bool)

(declare-fun lt!3068 () tuple2!380)

(declare-datatypes ((Unit!201 0))(
  ( (Unit!202) )
))
(declare-datatypes ((tuple2!382 0))(
  ( (tuple2!383 (_1!257 Unit!201) (_2!257 Cache!22)) )
))
(declare-fun update!13 (Cache!22 Regex!175 C!1384 Regex!175) tuple2!382)

(assert (=> b!36472 (= e!17920 (tuple2!381 (_1!256 lt!3068) (_2!257 (update!13 (_2!256 lt!3068) r!13380 (head!332 input!6011) (_1!256 lt!3068)))))))

(declare-fun c!15521 () Bool)

(assert (=> b!36472 (= c!15521 (or ((_ is EmptyExpr!175) r!13380) ((_ is EmptyLang!175) r!13380)))))

(assert (=> b!36472 (= lt!3068 e!17923)))

(declare-fun b!36473 () Bool)

(declare-fun e!17921 () tuple2!380)

(assert (=> b!36473 (= e!17922 e!17921)))

(declare-fun c!15519 () Bool)

(assert (=> b!36473 (= c!15519 (nullable!10 (regOne!862 r!13380)))))

(declare-fun b!36474 () Bool)

(declare-fun lt!3069 () tuple2!380)

(assert (=> b!36474 (= e!17922 (tuple2!381 (Concat!294 (_1!256 lt!3069) (Star!175 (reg!504 r!13380))) (_2!256 lt!3069)))))

(assert (=> b!36474 (= lt!3069 call!2720)))

(declare-fun bm!2715 () Bool)

(declare-fun lt!3071 () tuple2!380)

(assert (=> bm!2715 (= call!2718 (derivativeStepMem!4 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)) (head!332 input!6011) (ite c!15523 cache!443 (_2!256 lt!3071))))))

(declare-fun b!36475 () Bool)

(assert (=> b!36475 (= e!17919 e!17918)))

(assert (=> b!36475 (= c!15523 ((_ is Union!175) r!13380))))

(declare-fun b!36476 () Bool)

(declare-fun lt!3066 () tuple2!380)

(assert (=> b!36476 (= lt!3066 call!2717)))

(assert (=> b!36476 (= e!17921 (tuple2!381 (Union!175 (Concat!294 (_1!256 lt!3066) (regTwo!862 r!13380)) EmptyLang!175) (_2!256 lt!3066)))))

(declare-fun d!3902 () Bool)

(declare-fun lt!3072 () tuple2!380)

(declare-fun derivativeStep!2 (Regex!175 C!1384) Regex!175)

(assert (=> d!3902 (= (_1!256 lt!3072) (derivativeStep!2 r!13380 (head!332 input!6011)))))

(assert (=> d!3902 (= lt!3072 e!17920)))

(declare-fun c!15522 () Bool)

(assert (=> d!3902 (= c!15522 ((_ is Some!46) lt!3064))))

(declare-fun get!188 (Cache!22 Regex!175 C!1384) Option!47)

(assert (=> d!3902 (= lt!3064 (get!188 cache!443 r!13380 (head!332 input!6011)))))

(assert (=> d!3902 (validRegex!12 r!13380)))

(assert (=> d!3902 (= (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443) lt!3072)))

(declare-fun b!36468 () Bool)

(declare-fun lt!3065 () tuple2!380)

(assert (=> b!36468 (= lt!3065 call!2718)))

(assert (=> b!36468 (= lt!3071 call!2717)))

(assert (=> b!36468 (= e!17921 (tuple2!381 (Union!175 (Concat!294 (_1!256 lt!3071) (regTwo!862 r!13380)) (_1!256 lt!3065)) (_2!256 lt!3065)))))

(assert (= (and d!3902 c!15522) b!36470))

(assert (= (and d!3902 (not c!15522)) b!36472))

(assert (= (and b!36472 c!15521) b!36469))

(assert (= (and b!36472 (not c!15521)) b!36471))

(assert (= (and b!36471 c!15524) b!36465))

(assert (= (and b!36471 (not c!15524)) b!36475))

(assert (= (and b!36475 c!15523) b!36466))

(assert (= (and b!36475 (not c!15523)) b!36467))

(assert (= (and b!36467 c!15520) b!36474))

(assert (= (and b!36467 (not c!15520)) b!36473))

(assert (= (and b!36473 c!15519) b!36468))

(assert (= (and b!36473 (not c!15519)) b!36476))

(assert (= (or b!36468 b!36476) bm!2714))

(assert (= (or b!36474 bm!2714) bm!2712))

(assert (= (or b!36466 bm!2712) bm!2713))

(assert (= (or b!36466 b!36468) bm!2715))

(assert (=> bm!2713 m!11834))

(declare-fun m!11852 () Bool)

(assert (=> bm!2713 m!11852))

(declare-fun m!11854 () Bool)

(assert (=> b!36473 m!11854))

(assert (=> bm!2715 m!11834))

(declare-fun m!11856 () Bool)

(assert (=> bm!2715 m!11856))

(assert (=> d!3902 m!11834))

(declare-fun m!11858 () Bool)

(assert (=> d!3902 m!11858))

(assert (=> d!3902 m!11834))

(declare-fun m!11860 () Bool)

(assert (=> d!3902 m!11860))

(assert (=> d!3902 m!11830))

(assert (=> b!36472 m!11834))

(declare-fun m!11862 () Bool)

(assert (=> b!36472 m!11862))

(assert (=> b!36399 d!3902))

(declare-fun d!3904 () Bool)

(assert (=> d!3904 (= (head!332 input!6011) (h!5804 input!6011))))

(assert (=> b!36399 d!3904))

(declare-fun d!3906 () Bool)

(assert (=> d!3906 (= (isEmpty!91 input!6011) ((_ is Nil!408) input!6011))))

(assert (=> b!36413 d!3906))

(declare-fun c!15525 () Bool)

(declare-fun c!15526 () Bool)

(declare-fun call!2723 () Bool)

(declare-fun bm!2716 () Bool)

(assert (=> bm!2716 (= call!2723 (validRegex!12 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))))))

(declare-fun b!36477 () Bool)

(declare-fun e!17924 () Bool)

(declare-fun call!2722 () Bool)

(assert (=> b!36477 (= e!17924 call!2722)))

(declare-fun bm!2717 () Bool)

(assert (=> bm!2717 (= call!2722 (validRegex!12 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))))))

(declare-fun b!36479 () Bool)

(declare-fun e!17926 () Bool)

(declare-fun e!17927 () Bool)

(assert (=> b!36479 (= e!17926 e!17927)))

(assert (=> b!36479 (= c!15526 ((_ is Star!175) r!13380))))

(declare-fun bm!2718 () Bool)

(declare-fun call!2721 () Bool)

(assert (=> bm!2718 (= call!2721 call!2723)))

(declare-fun b!36480 () Bool)

(declare-fun e!17930 () Bool)

(assert (=> b!36480 (= e!17927 e!17930)))

(declare-fun res!28201 () Bool)

(assert (=> b!36480 (= res!28201 (not (nullable!10 (reg!504 r!13380))))))

(assert (=> b!36480 (=> (not res!28201) (not e!17930))))

(declare-fun b!36481 () Bool)

(declare-fun res!28204 () Bool)

(declare-fun e!17928 () Bool)

(assert (=> b!36481 (=> res!28204 e!17928)))

(assert (=> b!36481 (= res!28204 (not ((_ is Concat!294) r!13380)))))

(declare-fun e!17929 () Bool)

(assert (=> b!36481 (= e!17929 e!17928)))

(declare-fun b!36482 () Bool)

(declare-fun e!17925 () Bool)

(assert (=> b!36482 (= e!17925 call!2722)))

(declare-fun b!36483 () Bool)

(declare-fun res!28205 () Bool)

(assert (=> b!36483 (=> (not res!28205) (not e!17924))))

(assert (=> b!36483 (= res!28205 call!2721)))

(assert (=> b!36483 (= e!17929 e!17924)))

(declare-fun d!3908 () Bool)

(declare-fun res!28202 () Bool)

(assert (=> d!3908 (=> res!28202 e!17926)))

(assert (=> d!3908 (= res!28202 ((_ is ElementMatch!175) r!13380))))

(assert (=> d!3908 (= (validRegex!12 r!13380) e!17926)))

(declare-fun b!36478 () Bool)

(assert (=> b!36478 (= e!17927 e!17929)))

(assert (=> b!36478 (= c!15525 ((_ is Union!175) r!13380))))

(declare-fun b!36484 () Bool)

(assert (=> b!36484 (= e!17930 call!2723)))

(declare-fun b!36485 () Bool)

(assert (=> b!36485 (= e!17928 e!17925)))

(declare-fun res!28203 () Bool)

(assert (=> b!36485 (=> (not res!28203) (not e!17925))))

(assert (=> b!36485 (= res!28203 call!2721)))

(assert (= (and d!3908 (not res!28202)) b!36479))

(assert (= (and b!36479 c!15526) b!36480))

(assert (= (and b!36479 (not c!15526)) b!36478))

(assert (= (and b!36480 res!28201) b!36484))

(assert (= (and b!36478 c!15525) b!36483))

(assert (= (and b!36478 (not c!15525)) b!36481))

(assert (= (and b!36483 res!28205) b!36477))

(assert (= (and b!36481 (not res!28204)) b!36485))

(assert (= (and b!36485 res!28203) b!36482))

(assert (= (or b!36483 b!36485) bm!2718))

(assert (= (or b!36477 b!36482) bm!2717))

(assert (= (or b!36484 bm!2718) bm!2716))

(declare-fun m!11864 () Bool)

(assert (=> bm!2716 m!11864))

(declare-fun m!11866 () Bool)

(assert (=> bm!2717 m!11866))

(declare-fun m!11868 () Bool)

(assert (=> b!36480 m!11868))

(assert (=> start!2018 d!3908))

(declare-fun d!3910 () Bool)

(declare-fun res!28208 () Bool)

(declare-fun e!17933 () Bool)

(assert (=> d!3910 (=> (not res!28208) (not e!17933))))

(assert (=> d!3910 (= res!28208 ((_ is HashMap!107) (cache!587 cache!443)))))

(assert (=> d!3910 (= (inv!712 cache!443) e!17933)))

(declare-fun b!36488 () Bool)

(assert (=> b!36488 (= e!17933 (validCacheMap!3 (cache!587 cache!443)))))

(assert (= (and d!3910 res!28208) b!36488))

(assert (=> b!36488 m!11844))

(assert (=> start!2018 d!3910))

(declare-fun tp!25226 () Bool)

(declare-fun b!36496 () Bool)

(declare-fun e!17939 () Bool)

(declare-fun tp!25230 () Bool)

(declare-fun tp!25229 () Bool)

(assert (=> b!36496 (= e!17939 (and tp!25229 tp_is_empty!375 tp!25226 tp!25230))))

(declare-fun b!36495 () Bool)

(declare-fun tp!25224 () Bool)

(declare-fun tp!25227 () Bool)

(declare-fun tp!25228 () Bool)

(declare-fun e!17938 () Bool)

(assert (=> b!36495 (= e!17938 (and tp!25228 tp_is_empty!375 tp!25224 tp!25227))))

(declare-fun mapNonEmpty!376 () Bool)

(declare-fun mapRes!376 () Bool)

(declare-fun tp!25225 () Bool)

(assert (=> mapNonEmpty!376 (= mapRes!376 (and tp!25225 e!17938))))

(declare-fun mapRest!376 () (Array (_ BitVec 32) List!409))

(declare-fun mapKey!376 () (_ BitVec 32))

(declare-fun mapValue!376 () List!409)

(assert (=> mapNonEmpty!376 (= mapRest!373 (store mapRest!376 mapKey!376 mapValue!376))))

(declare-fun mapIsEmpty!376 () Bool)

(assert (=> mapIsEmpty!376 mapRes!376))

(declare-fun condMapEmpty!376 () Bool)

(declare-fun mapDefault!376 () List!409)

(assert (=> mapNonEmpty!373 (= condMapEmpty!376 (= mapRest!373 ((as const (Array (_ BitVec 32) List!409)) mapDefault!376)))))

(assert (=> mapNonEmpty!373 (= tp!25206 (and e!17939 mapRes!376))))

(assert (= (and mapNonEmpty!373 condMapEmpty!376) mapIsEmpty!376))

(assert (= (and mapNonEmpty!373 (not condMapEmpty!376)) mapNonEmpty!376))

(assert (= (and mapNonEmpty!376 ((_ is Cons!407) mapValue!376)) b!36495))

(assert (= (and mapNonEmpty!373 ((_ is Cons!407) mapDefault!376)) b!36496))

(declare-fun m!11870 () Bool)

(assert (=> mapNonEmpty!376 m!11870))

(declare-fun b!36501 () Bool)

(declare-fun tp!25237 () Bool)

(declare-fun e!17942 () Bool)

(declare-fun tp!25239 () Bool)

(declare-fun tp!25238 () Bool)

(assert (=> b!36501 (= e!17942 (and tp!25237 tp_is_empty!375 tp!25238 tp!25239))))

(assert (=> mapNonEmpty!373 (= tp!25201 e!17942)))

(assert (= (and mapNonEmpty!373 ((_ is Cons!407) mapValue!373)) b!36501))

(declare-fun b!36512 () Bool)

(declare-fun e!17945 () Bool)

(assert (=> b!36512 (= e!17945 tp_is_empty!375)))

(assert (=> b!36408 (= tp!25199 e!17945)))

(declare-fun b!36515 () Bool)

(declare-fun tp!25251 () Bool)

(declare-fun tp!25250 () Bool)

(assert (=> b!36515 (= e!17945 (and tp!25251 tp!25250))))

(declare-fun b!36513 () Bool)

(declare-fun tp!25253 () Bool)

(declare-fun tp!25252 () Bool)

(assert (=> b!36513 (= e!17945 (and tp!25253 tp!25252))))

(declare-fun b!36514 () Bool)

(declare-fun tp!25254 () Bool)

(assert (=> b!36514 (= e!17945 tp!25254)))

(assert (= (and b!36408 ((_ is ElementMatch!175) (regOne!862 r!13380))) b!36512))

(assert (= (and b!36408 ((_ is Concat!294) (regOne!862 r!13380))) b!36513))

(assert (= (and b!36408 ((_ is Star!175) (regOne!862 r!13380))) b!36514))

(assert (= (and b!36408 ((_ is Union!175) (regOne!862 r!13380))) b!36515))

(declare-fun b!36516 () Bool)

(declare-fun e!17946 () Bool)

(assert (=> b!36516 (= e!17946 tp_is_empty!375)))

(assert (=> b!36408 (= tp!25209 e!17946)))

(declare-fun b!36519 () Bool)

(declare-fun tp!25256 () Bool)

(declare-fun tp!25255 () Bool)

(assert (=> b!36519 (= e!17946 (and tp!25256 tp!25255))))

(declare-fun b!36517 () Bool)

(declare-fun tp!25258 () Bool)

(declare-fun tp!25257 () Bool)

(assert (=> b!36517 (= e!17946 (and tp!25258 tp!25257))))

(declare-fun b!36518 () Bool)

(declare-fun tp!25259 () Bool)

(assert (=> b!36518 (= e!17946 tp!25259)))

(assert (= (and b!36408 ((_ is ElementMatch!175) (regTwo!862 r!13380))) b!36516))

(assert (= (and b!36408 ((_ is Concat!294) (regTwo!862 r!13380))) b!36517))

(assert (= (and b!36408 ((_ is Star!175) (regTwo!862 r!13380))) b!36518))

(assert (= (and b!36408 ((_ is Union!175) (regTwo!862 r!13380))) b!36519))

(declare-fun b!36520 () Bool)

(declare-fun e!17947 () Bool)

(assert (=> b!36520 (= e!17947 tp_is_empty!375)))

(assert (=> b!36411 (= tp!25203 e!17947)))

(declare-fun b!36523 () Bool)

(declare-fun tp!25261 () Bool)

(declare-fun tp!25260 () Bool)

(assert (=> b!36523 (= e!17947 (and tp!25261 tp!25260))))

(declare-fun b!36521 () Bool)

(declare-fun tp!25263 () Bool)

(declare-fun tp!25262 () Bool)

(assert (=> b!36521 (= e!17947 (and tp!25263 tp!25262))))

(declare-fun b!36522 () Bool)

(declare-fun tp!25264 () Bool)

(assert (=> b!36522 (= e!17947 tp!25264)))

(assert (= (and b!36411 ((_ is ElementMatch!175) (reg!504 r!13380))) b!36520))

(assert (= (and b!36411 ((_ is Concat!294) (reg!504 r!13380))) b!36521))

(assert (= (and b!36411 ((_ is Star!175) (reg!504 r!13380))) b!36522))

(assert (= (and b!36411 ((_ is Union!175) (reg!504 r!13380))) b!36523))

(declare-fun tp!25266 () Bool)

(declare-fun tp!25267 () Bool)

(declare-fun e!17948 () Bool)

(declare-fun tp!25265 () Bool)

(declare-fun b!36524 () Bool)

(assert (=> b!36524 (= e!17948 (and tp!25265 tp_is_empty!375 tp!25266 tp!25267))))

(assert (=> b!36410 (= tp!25197 e!17948)))

(assert (= (and b!36410 ((_ is Cons!407) (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))) b!36524))

(declare-fun tp!25268 () Bool)

(declare-fun tp!25270 () Bool)

(declare-fun b!36525 () Bool)

(declare-fun e!17949 () Bool)

(declare-fun tp!25269 () Bool)

(assert (=> b!36525 (= e!17949 (and tp!25268 tp_is_empty!375 tp!25269 tp!25270))))

(assert (=> b!36410 (= tp!25200 e!17949)))

(assert (= (and b!36410 ((_ is Cons!407) (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))) b!36525))

(declare-fun b!36530 () Bool)

(declare-fun e!17952 () Bool)

(declare-fun tp!25273 () Bool)

(assert (=> b!36530 (= e!17952 (and tp_is_empty!375 tp!25273))))

(assert (=> b!36400 (= tp!25208 e!17952)))

(assert (= (and b!36400 ((_ is Cons!408) (t!15246 input!6011))) b!36530))

(declare-fun b!36531 () Bool)

(declare-fun e!17953 () Bool)

(assert (=> b!36531 (= e!17953 tp_is_empty!375)))

(assert (=> b!36405 (= tp!25207 e!17953)))

(declare-fun b!36534 () Bool)

(declare-fun tp!25275 () Bool)

(declare-fun tp!25274 () Bool)

(assert (=> b!36534 (= e!17953 (and tp!25275 tp!25274))))

(declare-fun b!36532 () Bool)

(declare-fun tp!25277 () Bool)

(declare-fun tp!25276 () Bool)

(assert (=> b!36532 (= e!17953 (and tp!25277 tp!25276))))

(declare-fun b!36533 () Bool)

(declare-fun tp!25278 () Bool)

(assert (=> b!36533 (= e!17953 tp!25278)))

(assert (= (and b!36405 ((_ is ElementMatch!175) (regOne!863 r!13380))) b!36531))

(assert (= (and b!36405 ((_ is Concat!294) (regOne!863 r!13380))) b!36532))

(assert (= (and b!36405 ((_ is Star!175) (regOne!863 r!13380))) b!36533))

(assert (= (and b!36405 ((_ is Union!175) (regOne!863 r!13380))) b!36534))

(declare-fun b!36535 () Bool)

(declare-fun e!17954 () Bool)

(assert (=> b!36535 (= e!17954 tp_is_empty!375)))

(assert (=> b!36405 (= tp!25205 e!17954)))

(declare-fun b!36538 () Bool)

(declare-fun tp!25280 () Bool)

(declare-fun tp!25279 () Bool)

(assert (=> b!36538 (= e!17954 (and tp!25280 tp!25279))))

(declare-fun b!36536 () Bool)

(declare-fun tp!25282 () Bool)

(declare-fun tp!25281 () Bool)

(assert (=> b!36536 (= e!17954 (and tp!25282 tp!25281))))

(declare-fun b!36537 () Bool)

(declare-fun tp!25283 () Bool)

(assert (=> b!36537 (= e!17954 tp!25283)))

(assert (= (and b!36405 ((_ is ElementMatch!175) (regTwo!863 r!13380))) b!36535))

(assert (= (and b!36405 ((_ is Concat!294) (regTwo!863 r!13380))) b!36536))

(assert (= (and b!36405 ((_ is Star!175) (regTwo!863 r!13380))) b!36537))

(assert (= (and b!36405 ((_ is Union!175) (regTwo!863 r!13380))) b!36538))

(declare-fun tp!25286 () Bool)

(declare-fun e!17955 () Bool)

(declare-fun tp!25285 () Bool)

(declare-fun b!36539 () Bool)

(declare-fun tp!25284 () Bool)

(assert (=> b!36539 (= e!17955 (and tp!25284 tp_is_empty!375 tp!25285 tp!25286))))

(assert (=> b!36409 (= tp!25198 e!17955)))

(assert (= (and b!36409 ((_ is Cons!407) mapDefault!373)) b!36539))

(check-sat (not b!36538) (not b!36536) b_and!593 (not b!36473) (not b!36514) (not bm!2702) (not bm!2701) b_and!591 (not b!36480) tp_is_empty!375 (not b_next!559) (not b!36537) (not mapNonEmpty!376) (not bm!2715) (not b!36519) (not b!36435) (not b!36488) (not b!36534) (not b!36501) (not d!3902) (not b!36539) (not b!36513) (not d!3894) (not bm!2713) (not b!36524) (not b!36495) (not bm!2717) (not b!36533) (not b!36518) (not b!36532) (not b!36521) (not b!36515) (not b!36517) (not b!36496) (not b!36523) (not b!36530) (not b!36525) (not b!36472) (not bm!2716) (not b_next!557) (not b!36522))
(check-sat b_and!591 b_and!593 (not b_next!557) (not b_next!559))
(get-model)

(declare-fun bm!2719 () Bool)

(declare-fun call!2727 () tuple2!380)

(declare-fun call!2726 () tuple2!380)

(assert (=> bm!2719 (= call!2727 call!2726)))

(declare-fun c!15531 () Bool)

(declare-fun bm!2720 () Bool)

(declare-fun lt!3076 () tuple2!380)

(declare-fun c!15528 () Bool)

(assert (=> bm!2720 (= call!2726 (derivativeStepMem!4 (ite c!15531 (regTwo!863 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))) (ite c!15528 (reg!504 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))) (regOne!862 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))))) (head!332 input!6011) (ite c!15531 (_2!256 lt!3076) (ite c!15523 cache!443 (_2!256 lt!3071)))))))

(declare-fun bm!2721 () Bool)

(declare-fun call!2724 () tuple2!380)

(assert (=> bm!2721 (= call!2724 call!2727)))

(declare-fun b!36540 () Bool)

(declare-fun e!17957 () tuple2!380)

(assert (=> b!36540 (= e!17957 (tuple2!381 (ite (= (head!332 input!6011) (c!15500 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)))) EmptyExpr!175 EmptyLang!175) (ite c!15523 cache!443 (_2!256 lt!3071))))))

(declare-fun b!36541 () Bool)

(declare-fun lt!3079 () tuple2!380)

(assert (=> b!36541 (= lt!3079 call!2726)))

(declare-fun call!2725 () tuple2!380)

(assert (=> b!36541 (= lt!3076 call!2725)))

(declare-fun e!17956 () tuple2!380)

(assert (=> b!36541 (= e!17956 (tuple2!381 (Union!175 (_1!256 lt!3076) (_1!256 lt!3079)) (_2!256 lt!3079)))))

(declare-fun b!36542 () Bool)

(assert (=> b!36542 (= c!15528 ((_ is Star!175) (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))))))

(declare-fun e!17960 () tuple2!380)

(assert (=> b!36542 (= e!17956 e!17960)))

(declare-fun b!36544 () Bool)

(declare-fun e!17961 () tuple2!380)

(assert (=> b!36544 (= e!17961 (tuple2!381 EmptyLang!175 (ite c!15523 cache!443 (_2!256 lt!3071))))))

(declare-fun b!36545 () Bool)

(declare-fun lt!3073 () Option!47)

(declare-fun e!17958 () tuple2!380)

(assert (=> b!36545 (= e!17958 (tuple2!381 (v!12193 lt!3073) (ite c!15523 cache!443 (_2!256 lt!3071))))))

(declare-fun b!36546 () Bool)

(declare-fun c!15532 () Bool)

(assert (=> b!36546 (= c!15532 ((_ is ElementMatch!175) (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))))))

(assert (=> b!36546 (= e!17961 e!17957)))

(declare-fun lt!3077 () tuple2!380)

(declare-fun b!36547 () Bool)

(assert (=> b!36547 (= e!17958 (tuple2!381 (_1!256 lt!3077) (_2!257 (update!13 (_2!256 lt!3077) (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)) (head!332 input!6011) (_1!256 lt!3077)))))))

(declare-fun c!15529 () Bool)

(assert (=> b!36547 (= c!15529 (or ((_ is EmptyExpr!175) (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))) ((_ is EmptyLang!175) (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)))))))

(assert (=> b!36547 (= lt!3077 e!17961)))

(declare-fun b!36548 () Bool)

(declare-fun e!17959 () tuple2!380)

(assert (=> b!36548 (= e!17960 e!17959)))

(declare-fun c!15527 () Bool)

(assert (=> b!36548 (= c!15527 (nullable!10 (regOne!862 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)))))))

(declare-fun b!36549 () Bool)

(declare-fun lt!3078 () tuple2!380)

(assert (=> b!36549 (= e!17960 (tuple2!381 (Concat!294 (_1!256 lt!3078) (Star!175 (reg!504 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))))) (_2!256 lt!3078)))))

(assert (=> b!36549 (= lt!3078 call!2727)))

(declare-fun bm!2722 () Bool)

(declare-fun lt!3080 () tuple2!380)

(assert (=> bm!2722 (= call!2725 (derivativeStepMem!4 (ite c!15531 (regOne!863 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))) (regTwo!862 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)))) (head!332 input!6011) (ite c!15531 (ite c!15523 cache!443 (_2!256 lt!3071)) (_2!256 lt!3080))))))

(declare-fun b!36550 () Bool)

(assert (=> b!36550 (= e!17957 e!17956)))

(assert (=> b!36550 (= c!15531 ((_ is Union!175) (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380))))))

(declare-fun b!36551 () Bool)

(declare-fun lt!3075 () tuple2!380)

(assert (=> b!36551 (= lt!3075 call!2724)))

(assert (=> b!36551 (= e!17959 (tuple2!381 (Union!175 (Concat!294 (_1!256 lt!3075) (regTwo!862 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)))) EmptyLang!175) (_2!256 lt!3075)))))

(declare-fun d!3912 () Bool)

(declare-fun lt!3081 () tuple2!380)

(assert (=> d!3912 (= (_1!256 lt!3081) (derivativeStep!2 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)) (head!332 input!6011)))))

(assert (=> d!3912 (= lt!3081 e!17958)))

(declare-fun c!15530 () Bool)

(assert (=> d!3912 (= c!15530 ((_ is Some!46) lt!3073))))

(assert (=> d!3912 (= lt!3073 (get!188 (ite c!15523 cache!443 (_2!256 lt!3071)) (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)) (head!332 input!6011)))))

(assert (=> d!3912 (validRegex!12 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)))))

(assert (=> d!3912 (= (derivativeStepMem!4 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)) (head!332 input!6011) (ite c!15523 cache!443 (_2!256 lt!3071))) lt!3081)))

(declare-fun b!36543 () Bool)

(declare-fun lt!3074 () tuple2!380)

(assert (=> b!36543 (= lt!3074 call!2725)))

(assert (=> b!36543 (= lt!3080 call!2724)))

(assert (=> b!36543 (= e!17959 (tuple2!381 (Union!175 (Concat!294 (_1!256 lt!3080) (regTwo!862 (ite c!15523 (regOne!863 r!13380) (regTwo!862 r!13380)))) (_1!256 lt!3074)) (_2!256 lt!3074)))))

(assert (= (and d!3912 c!15530) b!36545))

(assert (= (and d!3912 (not c!15530)) b!36547))

(assert (= (and b!36547 c!15529) b!36544))

(assert (= (and b!36547 (not c!15529)) b!36546))

(assert (= (and b!36546 c!15532) b!36540))

(assert (= (and b!36546 (not c!15532)) b!36550))

(assert (= (and b!36550 c!15531) b!36541))

(assert (= (and b!36550 (not c!15531)) b!36542))

(assert (= (and b!36542 c!15528) b!36549))

(assert (= (and b!36542 (not c!15528)) b!36548))

(assert (= (and b!36548 c!15527) b!36543))

(assert (= (and b!36548 (not c!15527)) b!36551))

(assert (= (or b!36543 b!36551) bm!2721))

(assert (= (or b!36549 bm!2721) bm!2719))

(assert (= (or b!36541 bm!2719) bm!2720))

(assert (= (or b!36541 b!36543) bm!2722))

(assert (=> bm!2720 m!11834))

(declare-fun m!11872 () Bool)

(assert (=> bm!2720 m!11872))

(declare-fun m!11874 () Bool)

(assert (=> b!36548 m!11874))

(assert (=> bm!2722 m!11834))

(declare-fun m!11876 () Bool)

(assert (=> bm!2722 m!11876))

(assert (=> d!3912 m!11834))

(declare-fun m!11878 () Bool)

(assert (=> d!3912 m!11878))

(assert (=> d!3912 m!11834))

(declare-fun m!11880 () Bool)

(assert (=> d!3912 m!11880))

(declare-fun m!11882 () Bool)

(assert (=> d!3912 m!11882))

(assert (=> b!36547 m!11834))

(declare-fun m!11884 () Bool)

(assert (=> b!36547 m!11884))

(assert (=> bm!2715 d!3912))

(declare-fun d!3914 () Bool)

(declare-fun res!28215 () Bool)

(declare-fun e!17966 () Bool)

(assert (=> d!3914 (=> (not res!28215) (not e!17966))))

(declare-fun valid!120 (MutableMap!107) Bool)

(assert (=> d!3914 (= res!28215 (valid!120 (cache!587 cache!443)))))

(assert (=> d!3914 (= (validCacheMap!3 (cache!587 cache!443)) e!17966)))

(declare-fun b!36558 () Bool)

(declare-fun res!28216 () Bool)

(assert (=> b!36558 (=> (not res!28216) (not e!17966))))

(declare-fun invariantList!19 (List!409) Bool)

(declare-datatypes ((ListMap!39 0))(
  ( (ListMap!40 (toList!170 List!409)) )
))
(declare-fun map!215 (MutableMap!107) ListMap!39)

(assert (=> b!36558 (= res!28216 (invariantList!19 (toList!170 (map!215 (cache!587 cache!443)))))))

(declare-fun b!36559 () Bool)

(declare-fun lambda!625 () Int)

(declare-fun forall!50 (List!409 Int) Bool)

(assert (=> b!36559 (= e!17966 (forall!50 (toList!170 (map!215 (cache!587 cache!443))) lambda!625))))

(assert (= (and d!3914 res!28215) b!36558))

(assert (= (and b!36558 res!28216) b!36559))

(declare-fun m!11887 () Bool)

(assert (=> d!3914 m!11887))

(declare-fun m!11889 () Bool)

(assert (=> b!36558 m!11889))

(declare-fun m!11891 () Bool)

(assert (=> b!36558 m!11891))

(assert (=> b!36559 m!11889))

(declare-fun m!11893 () Bool)

(assert (=> b!36559 m!11893))

(assert (=> b!36488 d!3914))

(declare-fun c!15534 () Bool)

(declare-fun bm!2723 () Bool)

(declare-fun c!15533 () Bool)

(declare-fun call!2730 () Bool)

(assert (=> bm!2723 (= call!2730 (validRegex!12 (ite c!15534 (reg!504 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))) (ite c!15533 (regOne!863 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))) (regOne!862 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))))))

(declare-fun b!36560 () Bool)

(declare-fun e!17967 () Bool)

(declare-fun call!2729 () Bool)

(assert (=> b!36560 (= e!17967 call!2729)))

(declare-fun bm!2724 () Bool)

(assert (=> bm!2724 (= call!2729 (validRegex!12 (ite c!15533 (regTwo!863 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))) (regTwo!862 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))))

(declare-fun b!36562 () Bool)

(declare-fun e!17969 () Bool)

(declare-fun e!17970 () Bool)

(assert (=> b!36562 (= e!17969 e!17970)))

(assert (=> b!36562 (= c!15534 ((_ is Star!175) (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))

(declare-fun bm!2725 () Bool)

(declare-fun call!2728 () Bool)

(assert (=> bm!2725 (= call!2728 call!2730)))

(declare-fun b!36563 () Bool)

(declare-fun e!17973 () Bool)

(assert (=> b!36563 (= e!17970 e!17973)))

(declare-fun res!28217 () Bool)

(assert (=> b!36563 (= res!28217 (not (nullable!10 (reg!504 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))))

(assert (=> b!36563 (=> (not res!28217) (not e!17973))))

(declare-fun b!36564 () Bool)

(declare-fun res!28220 () Bool)

(declare-fun e!17971 () Bool)

(assert (=> b!36564 (=> res!28220 e!17971)))

(assert (=> b!36564 (= res!28220 (not ((_ is Concat!294) (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))))

(declare-fun e!17972 () Bool)

(assert (=> b!36564 (= e!17972 e!17971)))

(declare-fun b!36565 () Bool)

(declare-fun e!17968 () Bool)

(assert (=> b!36565 (= e!17968 call!2729)))

(declare-fun b!36566 () Bool)

(declare-fun res!28221 () Bool)

(assert (=> b!36566 (=> (not res!28221) (not e!17967))))

(assert (=> b!36566 (= res!28221 call!2728)))

(assert (=> b!36566 (= e!17972 e!17967)))

(declare-fun d!3916 () Bool)

(declare-fun res!28218 () Bool)

(assert (=> d!3916 (=> res!28218 e!17969)))

(assert (=> d!3916 (= res!28218 ((_ is ElementMatch!175) (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))

(assert (=> d!3916 (= (validRegex!12 (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))) e!17969)))

(declare-fun b!36561 () Bool)

(assert (=> b!36561 (= e!17970 e!17972)))

(assert (=> b!36561 (= c!15533 ((_ is Union!175) (ite c!15506 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (ite c!15505 (regOne!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regOne!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))

(declare-fun b!36567 () Bool)

(assert (=> b!36567 (= e!17973 call!2730)))

(declare-fun b!36568 () Bool)

(assert (=> b!36568 (= e!17971 e!17968)))

(declare-fun res!28219 () Bool)

(assert (=> b!36568 (=> (not res!28219) (not e!17968))))

(assert (=> b!36568 (= res!28219 call!2728)))

(assert (= (and d!3916 (not res!28218)) b!36562))

(assert (= (and b!36562 c!15534) b!36563))

(assert (= (and b!36562 (not c!15534)) b!36561))

(assert (= (and b!36563 res!28217) b!36567))

(assert (= (and b!36561 c!15533) b!36566))

(assert (= (and b!36561 (not c!15533)) b!36564))

(assert (= (and b!36566 res!28221) b!36560))

(assert (= (and b!36564 (not res!28220)) b!36568))

(assert (= (and b!36568 res!28219) b!36565))

(assert (= (or b!36566 b!36568) bm!2725))

(assert (= (or b!36560 b!36565) bm!2724))

(assert (= (or b!36567 bm!2725) bm!2723))

(declare-fun m!11895 () Bool)

(assert (=> bm!2723 m!11895))

(declare-fun m!11897 () Bool)

(assert (=> bm!2724 m!11897))

(declare-fun m!11899 () Bool)

(assert (=> b!36563 m!11899))

(assert (=> bm!2701 d!3916))

(declare-fun bm!2726 () Bool)

(declare-fun call!2734 () tuple2!380)

(declare-fun call!2733 () tuple2!380)

(assert (=> bm!2726 (= call!2734 call!2733)))

(declare-fun c!15539 () Bool)

(declare-fun lt!3085 () tuple2!380)

(declare-fun bm!2727 () Bool)

(declare-fun c!15536 () Bool)

(assert (=> bm!2727 (= call!2733 (derivativeStepMem!4 (ite c!15539 (regTwo!863 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))) (ite c!15536 (reg!504 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))) (regOne!862 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))))) (head!332 input!6011) (ite c!15539 (_2!256 lt!3085) (ite c!15523 (_2!256 lt!3067) cache!443))))))

(declare-fun bm!2728 () Bool)

(declare-fun call!2731 () tuple2!380)

(assert (=> bm!2728 (= call!2731 call!2734)))

(declare-fun e!17975 () tuple2!380)

(declare-fun b!36569 () Bool)

(assert (=> b!36569 (= e!17975 (tuple2!381 (ite (= (head!332 input!6011) (c!15500 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))))) EmptyExpr!175 EmptyLang!175) (ite c!15523 (_2!256 lt!3067) cache!443)))))

(declare-fun b!36570 () Bool)

(declare-fun lt!3088 () tuple2!380)

(assert (=> b!36570 (= lt!3088 call!2733)))

(declare-fun call!2732 () tuple2!380)

(assert (=> b!36570 (= lt!3085 call!2732)))

(declare-fun e!17974 () tuple2!380)

(assert (=> b!36570 (= e!17974 (tuple2!381 (Union!175 (_1!256 lt!3085) (_1!256 lt!3088)) (_2!256 lt!3088)))))

(declare-fun b!36571 () Bool)

(assert (=> b!36571 (= c!15536 ((_ is Star!175) (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))))))

(declare-fun e!17978 () tuple2!380)

(assert (=> b!36571 (= e!17974 e!17978)))

(declare-fun b!36573 () Bool)

(declare-fun e!17979 () tuple2!380)

(assert (=> b!36573 (= e!17979 (tuple2!381 EmptyLang!175 (ite c!15523 (_2!256 lt!3067) cache!443)))))

(declare-fun e!17976 () tuple2!380)

(declare-fun lt!3082 () Option!47)

(declare-fun b!36574 () Bool)

(assert (=> b!36574 (= e!17976 (tuple2!381 (v!12193 lt!3082) (ite c!15523 (_2!256 lt!3067) cache!443)))))

(declare-fun c!15540 () Bool)

(declare-fun b!36575 () Bool)

(assert (=> b!36575 (= c!15540 ((_ is ElementMatch!175) (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))))))

(assert (=> b!36575 (= e!17979 e!17975)))

(declare-fun lt!3086 () tuple2!380)

(declare-fun b!36576 () Bool)

(assert (=> b!36576 (= e!17976 (tuple2!381 (_1!256 lt!3086) (_2!257 (update!13 (_2!256 lt!3086) (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))) (head!332 input!6011) (_1!256 lt!3086)))))))

(declare-fun c!15537 () Bool)

(assert (=> b!36576 (= c!15537 (or ((_ is EmptyExpr!175) (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))) ((_ is EmptyLang!175) (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))))))))

(assert (=> b!36576 (= lt!3086 e!17979)))

(declare-fun b!36577 () Bool)

(declare-fun e!17977 () tuple2!380)

(assert (=> b!36577 (= e!17978 e!17977)))

(declare-fun c!15535 () Bool)

(assert (=> b!36577 (= c!15535 (nullable!10 (regOne!862 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))))))))

(declare-fun b!36578 () Bool)

(declare-fun lt!3087 () tuple2!380)

(assert (=> b!36578 (= e!17978 (tuple2!381 (Concat!294 (_1!256 lt!3087) (Star!175 (reg!504 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))))) (_2!256 lt!3087)))))

(assert (=> b!36578 (= lt!3087 call!2734)))

(declare-fun lt!3089 () tuple2!380)

(declare-fun bm!2729 () Bool)

(assert (=> bm!2729 (= call!2732 (derivativeStepMem!4 (ite c!15539 (regOne!863 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))) (regTwo!862 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))))) (head!332 input!6011) (ite c!15539 (ite c!15523 (_2!256 lt!3067) cache!443) (_2!256 lt!3089))))))

(declare-fun b!36579 () Bool)

(assert (=> b!36579 (= e!17975 e!17974)))

(assert (=> b!36579 (= c!15539 ((_ is Union!175) (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380)))))))

(declare-fun b!36580 () Bool)

(declare-fun lt!3084 () tuple2!380)

(assert (=> b!36580 (= lt!3084 call!2731)))

(assert (=> b!36580 (= e!17977 (tuple2!381 (Union!175 (Concat!294 (_1!256 lt!3084) (regTwo!862 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))))) EmptyLang!175) (_2!256 lt!3084)))))

(declare-fun d!3918 () Bool)

(declare-fun lt!3090 () tuple2!380)

(assert (=> d!3918 (= (_1!256 lt!3090) (derivativeStep!2 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))) (head!332 input!6011)))))

(assert (=> d!3918 (= lt!3090 e!17976)))

(declare-fun c!15538 () Bool)

(assert (=> d!3918 (= c!15538 ((_ is Some!46) lt!3082))))

(assert (=> d!3918 (= lt!3082 (get!188 (ite c!15523 (_2!256 lt!3067) cache!443) (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))) (head!332 input!6011)))))

(assert (=> d!3918 (validRegex!12 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))))))

(assert (=> d!3918 (= (derivativeStepMem!4 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))) (head!332 input!6011) (ite c!15523 (_2!256 lt!3067) cache!443)) lt!3090)))

(declare-fun b!36572 () Bool)

(declare-fun lt!3083 () tuple2!380)

(assert (=> b!36572 (= lt!3083 call!2732)))

(assert (=> b!36572 (= lt!3089 call!2731)))

(assert (=> b!36572 (= e!17977 (tuple2!381 (Union!175 (Concat!294 (_1!256 lt!3089) (regTwo!862 (ite c!15523 (regTwo!863 r!13380) (ite c!15520 (reg!504 r!13380) (regOne!862 r!13380))))) (_1!256 lt!3083)) (_2!256 lt!3083)))))

(assert (= (and d!3918 c!15538) b!36574))

(assert (= (and d!3918 (not c!15538)) b!36576))

(assert (= (and b!36576 c!15537) b!36573))

(assert (= (and b!36576 (not c!15537)) b!36575))

(assert (= (and b!36575 c!15540) b!36569))

(assert (= (and b!36575 (not c!15540)) b!36579))

(assert (= (and b!36579 c!15539) b!36570))

(assert (= (and b!36579 (not c!15539)) b!36571))

(assert (= (and b!36571 c!15536) b!36578))

(assert (= (and b!36571 (not c!15536)) b!36577))

(assert (= (and b!36577 c!15535) b!36572))

(assert (= (and b!36577 (not c!15535)) b!36580))

(assert (= (or b!36572 b!36580) bm!2728))

(assert (= (or b!36578 bm!2728) bm!2726))

(assert (= (or b!36570 bm!2726) bm!2727))

(assert (= (or b!36570 b!36572) bm!2729))

(assert (=> bm!2727 m!11834))

(declare-fun m!11901 () Bool)

(assert (=> bm!2727 m!11901))

(declare-fun m!11903 () Bool)

(assert (=> b!36577 m!11903))

(assert (=> bm!2729 m!11834))

(declare-fun m!11905 () Bool)

(assert (=> bm!2729 m!11905))

(assert (=> d!3918 m!11834))

(declare-fun m!11907 () Bool)

(assert (=> d!3918 m!11907))

(assert (=> d!3918 m!11834))

(declare-fun m!11909 () Bool)

(assert (=> d!3918 m!11909))

(declare-fun m!11911 () Bool)

(assert (=> d!3918 m!11911))

(assert (=> b!36576 m!11834))

(declare-fun m!11913 () Bool)

(assert (=> b!36576 m!11913))

(assert (=> bm!2713 d!3918))

(declare-fun call!2737 () Bool)

(declare-fun bm!2730 () Bool)

(declare-fun c!15541 () Bool)

(declare-fun c!15542 () Bool)

(assert (=> bm!2730 (= call!2737 (validRegex!12 (ite c!15542 (reg!504 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))) (ite c!15541 (regOne!863 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))) (regOne!862 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380))))))))))

(declare-fun b!36581 () Bool)

(declare-fun e!17980 () Bool)

(declare-fun call!2736 () Bool)

(assert (=> b!36581 (= e!17980 call!2736)))

(declare-fun bm!2731 () Bool)

(assert (=> bm!2731 (= call!2736 (validRegex!12 (ite c!15541 (regTwo!863 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))) (regTwo!862 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))))))))

(declare-fun b!36583 () Bool)

(declare-fun e!17982 () Bool)

(declare-fun e!17983 () Bool)

(assert (=> b!36583 (= e!17982 e!17983)))

(assert (=> b!36583 (= c!15542 ((_ is Star!175) (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))))))

(declare-fun bm!2732 () Bool)

(declare-fun call!2735 () Bool)

(assert (=> bm!2732 (= call!2735 call!2737)))

(declare-fun b!36584 () Bool)

(declare-fun e!17986 () Bool)

(assert (=> b!36584 (= e!17983 e!17986)))

(declare-fun res!28222 () Bool)

(assert (=> b!36584 (= res!28222 (not (nullable!10 (reg!504 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))))))))

(assert (=> b!36584 (=> (not res!28222) (not e!17986))))

(declare-fun b!36585 () Bool)

(declare-fun res!28225 () Bool)

(declare-fun e!17984 () Bool)

(assert (=> b!36585 (=> res!28225 e!17984)))

(assert (=> b!36585 (= res!28225 (not ((_ is Concat!294) (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380))))))))

(declare-fun e!17985 () Bool)

(assert (=> b!36585 (= e!17985 e!17984)))

(declare-fun b!36586 () Bool)

(declare-fun e!17981 () Bool)

(assert (=> b!36586 (= e!17981 call!2736)))

(declare-fun b!36587 () Bool)

(declare-fun res!28226 () Bool)

(assert (=> b!36587 (=> (not res!28226) (not e!17980))))

(assert (=> b!36587 (= res!28226 call!2735)))

(assert (=> b!36587 (= e!17985 e!17980)))

(declare-fun d!3920 () Bool)

(declare-fun res!28223 () Bool)

(assert (=> d!3920 (=> res!28223 e!17982)))

(assert (=> d!3920 (= res!28223 ((_ is ElementMatch!175) (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))))))

(assert (=> d!3920 (= (validRegex!12 (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))) e!17982)))

(declare-fun b!36582 () Bool)

(assert (=> b!36582 (= e!17983 e!17985)))

(assert (=> b!36582 (= c!15541 ((_ is Union!175) (ite c!15526 (reg!504 r!13380) (ite c!15525 (regOne!863 r!13380) (regOne!862 r!13380)))))))

(declare-fun b!36588 () Bool)

(assert (=> b!36588 (= e!17986 call!2737)))

(declare-fun b!36589 () Bool)

(assert (=> b!36589 (= e!17984 e!17981)))

(declare-fun res!28224 () Bool)

(assert (=> b!36589 (=> (not res!28224) (not e!17981))))

(assert (=> b!36589 (= res!28224 call!2735)))

(assert (= (and d!3920 (not res!28223)) b!36583))

(assert (= (and b!36583 c!15542) b!36584))

(assert (= (and b!36583 (not c!15542)) b!36582))

(assert (= (and b!36584 res!28222) b!36588))

(assert (= (and b!36582 c!15541) b!36587))

(assert (= (and b!36582 (not c!15541)) b!36585))

(assert (= (and b!36587 res!28226) b!36581))

(assert (= (and b!36585 (not res!28225)) b!36589))

(assert (= (and b!36589 res!28224) b!36586))

(assert (= (or b!36587 b!36589) bm!2732))

(assert (= (or b!36581 b!36586) bm!2731))

(assert (= (or b!36588 bm!2732) bm!2730))

(declare-fun m!11915 () Bool)

(assert (=> bm!2730 m!11915))

(declare-fun m!11917 () Bool)

(assert (=> bm!2731 m!11917))

(declare-fun m!11919 () Bool)

(assert (=> b!36584 m!11919))

(assert (=> bm!2716 d!3920))

(declare-fun c!15544 () Bool)

(declare-fun call!2740 () Bool)

(declare-fun c!15543 () Bool)

(declare-fun bm!2733 () Bool)

(assert (=> bm!2733 (= call!2740 (validRegex!12 (ite c!15544 (reg!504 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))) (ite c!15543 (regOne!863 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))) (regOne!862 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))))

(declare-fun b!36590 () Bool)

(declare-fun e!17987 () Bool)

(declare-fun call!2739 () Bool)

(assert (=> b!36590 (= e!17987 call!2739)))

(declare-fun bm!2734 () Bool)

(assert (=> bm!2734 (= call!2739 (validRegex!12 (ite c!15543 (regTwo!863 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))) (regTwo!862 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))))

(declare-fun b!36592 () Bool)

(declare-fun e!17989 () Bool)

(declare-fun e!17990 () Bool)

(assert (=> b!36592 (= e!17989 e!17990)))

(assert (=> b!36592 (= c!15544 ((_ is Star!175) (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))

(declare-fun bm!2735 () Bool)

(declare-fun call!2738 () Bool)

(assert (=> bm!2735 (= call!2738 call!2740)))

(declare-fun b!36593 () Bool)

(declare-fun e!17993 () Bool)

(assert (=> b!36593 (= e!17990 e!17993)))

(declare-fun res!28227 () Bool)

(assert (=> b!36593 (= res!28227 (not (nullable!10 (reg!504 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))))

(assert (=> b!36593 (=> (not res!28227) (not e!17993))))

(declare-fun b!36594 () Bool)

(declare-fun res!28230 () Bool)

(declare-fun e!17991 () Bool)

(assert (=> b!36594 (=> res!28230 e!17991)))

(assert (=> b!36594 (= res!28230 (not ((_ is Concat!294) (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))))

(declare-fun e!17992 () Bool)

(assert (=> b!36594 (= e!17992 e!17991)))

(declare-fun b!36595 () Bool)

(declare-fun e!17988 () Bool)

(assert (=> b!36595 (= e!17988 call!2739)))

(declare-fun b!36596 () Bool)

(declare-fun res!28231 () Bool)

(assert (=> b!36596 (=> (not res!28231) (not e!17987))))

(assert (=> b!36596 (= res!28231 call!2738)))

(assert (=> b!36596 (= e!17992 e!17987)))

(declare-fun d!3922 () Bool)

(declare-fun res!28228 () Bool)

(assert (=> d!3922 (=> res!28228 e!17989)))

(assert (=> d!3922 (= res!28228 ((_ is ElementMatch!175) (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))

(assert (=> d!3922 (= (validRegex!12 (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))) e!17989)))

(declare-fun b!36591 () Bool)

(assert (=> b!36591 (= e!17990 e!17992)))

(assert (=> b!36591 (= c!15543 ((_ is Union!175) (ite c!15505 (regTwo!863 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))) (regTwo!862 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))

(declare-fun b!36597 () Bool)

(assert (=> b!36597 (= e!17993 call!2740)))

(declare-fun b!36598 () Bool)

(assert (=> b!36598 (= e!17991 e!17988)))

(declare-fun res!28229 () Bool)

(assert (=> b!36598 (=> (not res!28229) (not e!17988))))

(assert (=> b!36598 (= res!28229 call!2738)))

(assert (= (and d!3922 (not res!28228)) b!36592))

(assert (= (and b!36592 c!15544) b!36593))

(assert (= (and b!36592 (not c!15544)) b!36591))

(assert (= (and b!36593 res!28227) b!36597))

(assert (= (and b!36591 c!15543) b!36596))

(assert (= (and b!36591 (not c!15543)) b!36594))

(assert (= (and b!36596 res!28231) b!36590))

(assert (= (and b!36594 (not res!28230)) b!36598))

(assert (= (and b!36598 res!28229) b!36595))

(assert (= (or b!36596 b!36598) bm!2735))

(assert (= (or b!36590 b!36595) bm!2734))

(assert (= (or b!36597 bm!2735) bm!2733))

(declare-fun m!11921 () Bool)

(assert (=> bm!2733 m!11921))

(declare-fun m!11923 () Bool)

(assert (=> bm!2734 m!11923))

(declare-fun m!11925 () Bool)

(assert (=> b!36593 m!11925))

(assert (=> bm!2702 d!3922))

(declare-fun c!15546 () Bool)

(declare-fun c!15545 () Bool)

(declare-fun call!2743 () Bool)

(declare-fun bm!2736 () Bool)

(assert (=> bm!2736 (= call!2743 (validRegex!12 (ite c!15546 (reg!504 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))) (ite c!15545 (regOne!863 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))) (regOne!862 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380)))))))))

(declare-fun b!36599 () Bool)

(declare-fun e!17994 () Bool)

(declare-fun call!2742 () Bool)

(assert (=> b!36599 (= e!17994 call!2742)))

(declare-fun bm!2737 () Bool)

(assert (=> bm!2737 (= call!2742 (validRegex!12 (ite c!15545 (regTwo!863 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))) (regTwo!862 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))))))))

(declare-fun b!36601 () Bool)

(declare-fun e!17996 () Bool)

(declare-fun e!17997 () Bool)

(assert (=> b!36601 (= e!17996 e!17997)))

(assert (=> b!36601 (= c!15546 ((_ is Star!175) (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))))))

(declare-fun bm!2738 () Bool)

(declare-fun call!2741 () Bool)

(assert (=> bm!2738 (= call!2741 call!2743)))

(declare-fun b!36602 () Bool)

(declare-fun e!18000 () Bool)

(assert (=> b!36602 (= e!17997 e!18000)))

(declare-fun res!28232 () Bool)

(assert (=> b!36602 (= res!28232 (not (nullable!10 (reg!504 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))))))))

(assert (=> b!36602 (=> (not res!28232) (not e!18000))))

(declare-fun b!36603 () Bool)

(declare-fun res!28235 () Bool)

(declare-fun e!17998 () Bool)

(assert (=> b!36603 (=> res!28235 e!17998)))

(assert (=> b!36603 (= res!28235 (not ((_ is Concat!294) (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380)))))))

(declare-fun e!17999 () Bool)

(assert (=> b!36603 (= e!17999 e!17998)))

(declare-fun b!36604 () Bool)

(declare-fun e!17995 () Bool)

(assert (=> b!36604 (= e!17995 call!2742)))

(declare-fun b!36605 () Bool)

(declare-fun res!28236 () Bool)

(assert (=> b!36605 (=> (not res!28236) (not e!17994))))

(assert (=> b!36605 (= res!28236 call!2741)))

(assert (=> b!36605 (= e!17999 e!17994)))

(declare-fun d!3924 () Bool)

(declare-fun res!28233 () Bool)

(assert (=> d!3924 (=> res!28233 e!17996)))

(assert (=> d!3924 (= res!28233 ((_ is ElementMatch!175) (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))))))

(assert (=> d!3924 (= (validRegex!12 (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))) e!17996)))

(declare-fun b!36600 () Bool)

(assert (=> b!36600 (= e!17997 e!17999)))

(assert (=> b!36600 (= c!15545 ((_ is Union!175) (ite c!15525 (regTwo!863 r!13380) (regTwo!862 r!13380))))))

(declare-fun b!36606 () Bool)

(assert (=> b!36606 (= e!18000 call!2743)))

(declare-fun b!36607 () Bool)

(assert (=> b!36607 (= e!17998 e!17995)))

(declare-fun res!28234 () Bool)

(assert (=> b!36607 (=> (not res!28234) (not e!17995))))

(assert (=> b!36607 (= res!28234 call!2741)))

(assert (= (and d!3924 (not res!28233)) b!36601))

(assert (= (and b!36601 c!15546) b!36602))

(assert (= (and b!36601 (not c!15546)) b!36600))

(assert (= (and b!36602 res!28232) b!36606))

(assert (= (and b!36600 c!15545) b!36605))

(assert (= (and b!36600 (not c!15545)) b!36603))

(assert (= (and b!36605 res!28236) b!36599))

(assert (= (and b!36603 (not res!28235)) b!36607))

(assert (= (and b!36607 res!28234) b!36604))

(assert (= (or b!36605 b!36607) bm!2738))

(assert (= (or b!36599 b!36604) bm!2737))

(assert (= (or b!36606 bm!2738) bm!2736))

(declare-fun m!11927 () Bool)

(assert (=> bm!2736 m!11927))

(declare-fun m!11929 () Bool)

(assert (=> bm!2737 m!11929))

(declare-fun m!11931 () Bool)

(assert (=> b!36602 m!11931))

(assert (=> bm!2717 d!3924))

(declare-fun d!3926 () Bool)

(declare-fun nullableFct!7 (Regex!175) Bool)

(assert (=> d!3926 (= (nullable!10 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))) (nullableFct!7 (reg!504 (_1!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443)))))))

(declare-fun bs!4969 () Bool)

(assert (= bs!4969 d!3926))

(declare-fun m!11933 () Bool)

(assert (=> bs!4969 m!11933))

(assert (=> b!36435 d!3926))

(assert (=> d!3894 d!3914))

(declare-fun bs!4970 () Bool)

(declare-fun d!3928 () Bool)

(assert (= bs!4970 (and d!3928 b!36559)))

(declare-fun lambda!628 () Int)

(assert (=> bs!4970 (= lambda!628 lambda!625)))

(declare-fun lt!3099 () tuple2!382)

(assert (=> d!3928 (validCacheMap!3 (cache!587 (_2!257 lt!3099)))))

(declare-fun Unit!203 () Unit!201)

(declare-datatypes ((tuple2!384 0))(
  ( (tuple2!385 (_1!258 Bool) (_2!258 MutableMap!107)) )
))
(declare-fun update!14 (MutableMap!107 tuple2!376 Regex!175) tuple2!384)

(assert (=> d!3928 (= lt!3099 (tuple2!383 Unit!203 (Cache!23 (_2!258 (update!14 (cache!587 (_2!256 lt!3068)) (tuple2!377 r!13380 (head!332 input!6011)) (_1!256 lt!3068))))))))

(declare-fun lt!3100 () Unit!201)

(declare-fun lt!3102 () Unit!201)

(assert (=> d!3928 (= lt!3100 lt!3102)))

(declare-fun lt!3101 () tuple2!376)

(assert (=> d!3928 (forall!50 (toList!170 (map!215 (_2!258 (update!14 (cache!587 (_2!256 lt!3068)) lt!3101 (_1!256 lt!3068))))) lambda!628)))

(declare-fun lemmaUpdatePreservesForallPairs!1 (MutableMap!107 tuple2!376 Regex!175 Int) Unit!201)

(assert (=> d!3928 (= lt!3102 (lemmaUpdatePreservesForallPairs!1 (cache!587 (_2!256 lt!3068)) lt!3101 (_1!256 lt!3068) lambda!628))))

(assert (=> d!3928 (= lt!3101 (tuple2!377 r!13380 (head!332 input!6011)))))

(assert (=> d!3928 (validCacheMap!3 (cache!587 (_2!256 lt!3068)))))

(assert (=> d!3928 (= (update!13 (_2!256 lt!3068) r!13380 (head!332 input!6011) (_1!256 lt!3068)) lt!3099)))

(declare-fun bs!4971 () Bool)

(assert (= bs!4971 d!3928))

(declare-fun m!11935 () Bool)

(assert (=> bs!4971 m!11935))

(declare-fun m!11937 () Bool)

(assert (=> bs!4971 m!11937))

(declare-fun m!11939 () Bool)

(assert (=> bs!4971 m!11939))

(declare-fun m!11941 () Bool)

(assert (=> bs!4971 m!11941))

(declare-fun m!11943 () Bool)

(assert (=> bs!4971 m!11943))

(declare-fun m!11945 () Bool)

(assert (=> bs!4971 m!11945))

(declare-fun m!11947 () Bool)

(assert (=> bs!4971 m!11947))

(assert (=> b!36472 d!3928))

(declare-fun d!3930 () Bool)

(assert (=> d!3930 (= (nullable!10 (regOne!862 r!13380)) (nullableFct!7 (regOne!862 r!13380)))))

(declare-fun bs!4972 () Bool)

(assert (= bs!4972 d!3930))

(declare-fun m!11949 () Bool)

(assert (=> bs!4972 m!11949))

(assert (=> b!36473 d!3930))

(declare-fun b!36630 () Bool)

(declare-fun e!18017 () Regex!175)

(declare-fun e!18014 () Regex!175)

(assert (=> b!36630 (= e!18017 e!18014)))

(declare-fun c!15560 () Bool)

(assert (=> b!36630 (= c!15560 ((_ is Star!175) r!13380))))

(declare-fun c!15562 () Bool)

(declare-fun bm!2747 () Bool)

(declare-fun call!2754 () Regex!175)

(assert (=> bm!2747 (= call!2754 (derivativeStep!2 (ite c!15562 (regOne!863 r!13380) (regOne!862 r!13380)) (head!332 input!6011)))))

(declare-fun b!36632 () Bool)

(assert (=> b!36632 (= c!15562 ((_ is Union!175) r!13380))))

(declare-fun e!18016 () Regex!175)

(assert (=> b!36632 (= e!18016 e!18017)))

(declare-fun b!36633 () Bool)

(declare-fun e!18015 () Regex!175)

(declare-fun call!2752 () Regex!175)

(assert (=> b!36633 (= e!18015 (Union!175 (Concat!294 call!2752 (regTwo!862 r!13380)) EmptyLang!175))))

(declare-fun b!36634 () Bool)

(declare-fun e!18013 () Regex!175)

(assert (=> b!36634 (= e!18013 e!18016)))

(declare-fun c!15561 () Bool)

(assert (=> b!36634 (= c!15561 ((_ is ElementMatch!175) r!13380))))

(declare-fun b!36635 () Bool)

(declare-fun call!2753 () Regex!175)

(assert (=> b!36635 (= e!18014 (Concat!294 call!2753 r!13380))))

(declare-fun bm!2748 () Bool)

(declare-fun call!2755 () Regex!175)

(assert (=> bm!2748 (= call!2753 call!2755)))

(declare-fun b!36631 () Bool)

(assert (=> b!36631 (= e!18015 (Union!175 (Concat!294 call!2754 (regTwo!862 r!13380)) call!2752))))

(declare-fun d!3932 () Bool)

(declare-fun lt!3105 () Regex!175)

(assert (=> d!3932 (validRegex!12 lt!3105)))

(assert (=> d!3932 (= lt!3105 e!18013)))

(declare-fun c!15559 () Bool)

(assert (=> d!3932 (= c!15559 (or ((_ is EmptyExpr!175) r!13380) ((_ is EmptyLang!175) r!13380)))))

(assert (=> d!3932 (validRegex!12 r!13380)))

(assert (=> d!3932 (= (derivativeStep!2 r!13380 (head!332 input!6011)) lt!3105)))

(declare-fun bm!2749 () Bool)

(assert (=> bm!2749 (= call!2752 call!2753)))

(declare-fun b!36636 () Bool)

(assert (=> b!36636 (= e!18013 EmptyLang!175)))

(declare-fun c!15558 () Bool)

(declare-fun bm!2750 () Bool)

(assert (=> bm!2750 (= call!2755 (derivativeStep!2 (ite c!15562 (regTwo!863 r!13380) (ite c!15560 (reg!504 r!13380) (ite c!15558 (regTwo!862 r!13380) (regOne!862 r!13380)))) (head!332 input!6011)))))

(declare-fun b!36637 () Bool)

(assert (=> b!36637 (= c!15558 (nullable!10 (regOne!862 r!13380)))))

(assert (=> b!36637 (= e!18014 e!18015)))

(declare-fun b!36638 () Bool)

(assert (=> b!36638 (= e!18017 (Union!175 call!2754 call!2755))))

(declare-fun b!36639 () Bool)

(assert (=> b!36639 (= e!18016 (ite (= (head!332 input!6011) (c!15500 r!13380)) EmptyExpr!175 EmptyLang!175))))

(assert (= (and d!3932 c!15559) b!36636))

(assert (= (and d!3932 (not c!15559)) b!36634))

(assert (= (and b!36634 c!15561) b!36639))

(assert (= (and b!36634 (not c!15561)) b!36632))

(assert (= (and b!36632 c!15562) b!36638))

(assert (= (and b!36632 (not c!15562)) b!36630))

(assert (= (and b!36630 c!15560) b!36635))

(assert (= (and b!36630 (not c!15560)) b!36637))

(assert (= (and b!36637 c!15558) b!36631))

(assert (= (and b!36637 (not c!15558)) b!36633))

(assert (= (or b!36631 b!36633) bm!2749))

(assert (= (or b!36635 bm!2749) bm!2748))

(assert (= (or b!36638 bm!2748) bm!2750))

(assert (= (or b!36638 b!36631) bm!2747))

(assert (=> bm!2747 m!11834))

(declare-fun m!11951 () Bool)

(assert (=> bm!2747 m!11951))

(declare-fun m!11953 () Bool)

(assert (=> d!3932 m!11953))

(assert (=> d!3932 m!11830))

(assert (=> bm!2750 m!11834))

(declare-fun m!11955 () Bool)

(assert (=> bm!2750 m!11955))

(assert (=> b!36637 m!11854))

(assert (=> d!3902 d!3932))

(declare-fun d!3934 () Bool)

(declare-fun e!18022 () Bool)

(assert (=> d!3934 e!18022))

(declare-fun res!28242 () Bool)

(assert (=> d!3934 (=> res!28242 e!18022)))

(declare-fun lt!3110 () Option!47)

(declare-fun isEmpty!92 (Option!47) Bool)

(assert (=> d!3934 (= res!28242 (isEmpty!92 lt!3110))))

(declare-fun e!18023 () Option!47)

(assert (=> d!3934 (= lt!3110 e!18023)))

(declare-fun c!15566 () Bool)

(declare-fun contains!28 (MutableMap!107 tuple2!376) Bool)

(assert (=> d!3934 (= c!15566 (contains!28 (cache!587 cache!443) (tuple2!377 r!13380 (head!332 input!6011))))))

(assert (=> d!3934 (validRegex!12 r!13380)))

(assert (=> d!3934 (= (get!188 cache!443 r!13380 (head!332 input!6011)) lt!3110)))

(declare-fun b!36646 () Bool)

(declare-fun apply!19 (MutableMap!107 tuple2!376) Regex!175)

(assert (=> b!36646 (= e!18023 (Some!46 (apply!19 (cache!587 cache!443) (tuple2!377 r!13380 (head!332 input!6011)))))))

(declare-fun lt!3111 () Unit!201)

(declare-fun lemmaIfInCacheThenValid!5 (Cache!22 Regex!175 C!1384) Unit!201)

(assert (=> b!36646 (= lt!3111 (lemmaIfInCacheThenValid!5 cache!443 r!13380 (head!332 input!6011)))))

(declare-fun b!36647 () Bool)

(assert (=> b!36647 (= e!18023 None!46)))

(declare-fun b!36648 () Bool)

(declare-fun get!189 (Option!47) Regex!175)

(assert (=> b!36648 (= e!18022 (= (get!189 lt!3110) (derivativeStep!2 r!13380 (head!332 input!6011))))))

(assert (= (and d!3934 c!15566) b!36646))

(assert (= (and d!3934 (not c!15566)) b!36647))

(assert (= (and d!3934 (not res!28242)) b!36648))

(declare-fun m!11957 () Bool)

(assert (=> d!3934 m!11957))

(declare-fun m!11959 () Bool)

(assert (=> d!3934 m!11959))

(assert (=> d!3934 m!11830))

(declare-fun m!11961 () Bool)

(assert (=> b!36646 m!11961))

(assert (=> b!36646 m!11834))

(declare-fun m!11963 () Bool)

(assert (=> b!36646 m!11963))

(declare-fun m!11965 () Bool)

(assert (=> b!36648 m!11965))

(assert (=> b!36648 m!11834))

(assert (=> b!36648 m!11858))

(assert (=> d!3902 d!3934))

(assert (=> d!3902 d!3908))

(declare-fun d!3936 () Bool)

(assert (=> d!3936 (= (nullable!10 (reg!504 r!13380)) (nullableFct!7 (reg!504 r!13380)))))

(declare-fun bs!4973 () Bool)

(assert (= bs!4973 d!3936))

(declare-fun m!11967 () Bool)

(assert (=> bs!4973 m!11967))

(assert (=> b!36480 d!3936))

(declare-fun b!36649 () Bool)

(declare-fun e!18024 () Bool)

(assert (=> b!36649 (= e!18024 tp_is_empty!375)))

(assert (=> b!36522 (= tp!25264 e!18024)))

(declare-fun b!36652 () Bool)

(declare-fun tp!25288 () Bool)

(declare-fun tp!25287 () Bool)

(assert (=> b!36652 (= e!18024 (and tp!25288 tp!25287))))

(declare-fun b!36650 () Bool)

(declare-fun tp!25290 () Bool)

(declare-fun tp!25289 () Bool)

(assert (=> b!36650 (= e!18024 (and tp!25290 tp!25289))))

(declare-fun b!36651 () Bool)

(declare-fun tp!25291 () Bool)

(assert (=> b!36651 (= e!18024 tp!25291)))

(assert (= (and b!36522 ((_ is ElementMatch!175) (reg!504 (reg!504 r!13380)))) b!36649))

(assert (= (and b!36522 ((_ is Concat!294) (reg!504 (reg!504 r!13380)))) b!36650))

(assert (= (and b!36522 ((_ is Star!175) (reg!504 (reg!504 r!13380)))) b!36651))

(assert (= (and b!36522 ((_ is Union!175) (reg!504 (reg!504 r!13380)))) b!36652))

(declare-fun b!36653 () Bool)

(declare-fun e!18025 () Bool)

(assert (=> b!36653 (= e!18025 tp_is_empty!375)))

(assert (=> b!36513 (= tp!25253 e!18025)))

(declare-fun b!36656 () Bool)

(declare-fun tp!25293 () Bool)

(declare-fun tp!25292 () Bool)

(assert (=> b!36656 (= e!18025 (and tp!25293 tp!25292))))

(declare-fun b!36654 () Bool)

(declare-fun tp!25295 () Bool)

(declare-fun tp!25294 () Bool)

(assert (=> b!36654 (= e!18025 (and tp!25295 tp!25294))))

(declare-fun b!36655 () Bool)

(declare-fun tp!25296 () Bool)

(assert (=> b!36655 (= e!18025 tp!25296)))

(assert (= (and b!36513 ((_ is ElementMatch!175) (regOne!862 (regOne!862 r!13380)))) b!36653))

(assert (= (and b!36513 ((_ is Concat!294) (regOne!862 (regOne!862 r!13380)))) b!36654))

(assert (= (and b!36513 ((_ is Star!175) (regOne!862 (regOne!862 r!13380)))) b!36655))

(assert (= (and b!36513 ((_ is Union!175) (regOne!862 (regOne!862 r!13380)))) b!36656))

(declare-fun b!36657 () Bool)

(declare-fun e!18026 () Bool)

(assert (=> b!36657 (= e!18026 tp_is_empty!375)))

(assert (=> b!36513 (= tp!25252 e!18026)))

(declare-fun b!36660 () Bool)

(declare-fun tp!25298 () Bool)

(declare-fun tp!25297 () Bool)

(assert (=> b!36660 (= e!18026 (and tp!25298 tp!25297))))

(declare-fun b!36658 () Bool)

(declare-fun tp!25300 () Bool)

(declare-fun tp!25299 () Bool)

(assert (=> b!36658 (= e!18026 (and tp!25300 tp!25299))))

(declare-fun b!36659 () Bool)

(declare-fun tp!25301 () Bool)

(assert (=> b!36659 (= e!18026 tp!25301)))

(assert (= (and b!36513 ((_ is ElementMatch!175) (regTwo!862 (regOne!862 r!13380)))) b!36657))

(assert (= (and b!36513 ((_ is Concat!294) (regTwo!862 (regOne!862 r!13380)))) b!36658))

(assert (= (and b!36513 ((_ is Star!175) (regTwo!862 (regOne!862 r!13380)))) b!36659))

(assert (= (and b!36513 ((_ is Union!175) (regTwo!862 (regOne!862 r!13380)))) b!36660))

(declare-fun b!36661 () Bool)

(declare-fun e!18027 () Bool)

(assert (=> b!36661 (= e!18027 tp_is_empty!375)))

(assert (=> b!36521 (= tp!25263 e!18027)))

(declare-fun b!36664 () Bool)

(declare-fun tp!25303 () Bool)

(declare-fun tp!25302 () Bool)

(assert (=> b!36664 (= e!18027 (and tp!25303 tp!25302))))

(declare-fun b!36662 () Bool)

(declare-fun tp!25305 () Bool)

(declare-fun tp!25304 () Bool)

(assert (=> b!36662 (= e!18027 (and tp!25305 tp!25304))))

(declare-fun b!36663 () Bool)

(declare-fun tp!25306 () Bool)

(assert (=> b!36663 (= e!18027 tp!25306)))

(assert (= (and b!36521 ((_ is ElementMatch!175) (regOne!862 (reg!504 r!13380)))) b!36661))

(assert (= (and b!36521 ((_ is Concat!294) (regOne!862 (reg!504 r!13380)))) b!36662))

(assert (= (and b!36521 ((_ is Star!175) (regOne!862 (reg!504 r!13380)))) b!36663))

(assert (= (and b!36521 ((_ is Union!175) (regOne!862 (reg!504 r!13380)))) b!36664))

(declare-fun b!36665 () Bool)

(declare-fun e!18028 () Bool)

(assert (=> b!36665 (= e!18028 tp_is_empty!375)))

(assert (=> b!36521 (= tp!25262 e!18028)))

(declare-fun b!36668 () Bool)

(declare-fun tp!25308 () Bool)

(declare-fun tp!25307 () Bool)

(assert (=> b!36668 (= e!18028 (and tp!25308 tp!25307))))

(declare-fun b!36666 () Bool)

(declare-fun tp!25310 () Bool)

(declare-fun tp!25309 () Bool)

(assert (=> b!36666 (= e!18028 (and tp!25310 tp!25309))))

(declare-fun b!36667 () Bool)

(declare-fun tp!25311 () Bool)

(assert (=> b!36667 (= e!18028 tp!25311)))

(assert (= (and b!36521 ((_ is ElementMatch!175) (regTwo!862 (reg!504 r!13380)))) b!36665))

(assert (= (and b!36521 ((_ is Concat!294) (regTwo!862 (reg!504 r!13380)))) b!36666))

(assert (= (and b!36521 ((_ is Star!175) (regTwo!862 (reg!504 r!13380)))) b!36667))

(assert (= (and b!36521 ((_ is Union!175) (regTwo!862 (reg!504 r!13380)))) b!36668))

(declare-fun b!36669 () Bool)

(declare-fun e!18029 () Bool)

(assert (=> b!36669 (= e!18029 tp_is_empty!375)))

(assert (=> b!36537 (= tp!25283 e!18029)))

(declare-fun b!36672 () Bool)

(declare-fun tp!25313 () Bool)

(declare-fun tp!25312 () Bool)

(assert (=> b!36672 (= e!18029 (and tp!25313 tp!25312))))

(declare-fun b!36670 () Bool)

(declare-fun tp!25315 () Bool)

(declare-fun tp!25314 () Bool)

(assert (=> b!36670 (= e!18029 (and tp!25315 tp!25314))))

(declare-fun b!36671 () Bool)

(declare-fun tp!25316 () Bool)

(assert (=> b!36671 (= e!18029 tp!25316)))

(assert (= (and b!36537 ((_ is ElementMatch!175) (reg!504 (regTwo!863 r!13380)))) b!36669))

(assert (= (and b!36537 ((_ is Concat!294) (reg!504 (regTwo!863 r!13380)))) b!36670))

(assert (= (and b!36537 ((_ is Star!175) (reg!504 (regTwo!863 r!13380)))) b!36671))

(assert (= (and b!36537 ((_ is Union!175) (reg!504 (regTwo!863 r!13380)))) b!36672))

(declare-fun b!36673 () Bool)

(declare-fun e!18030 () Bool)

(assert (=> b!36673 (= e!18030 tp_is_empty!375)))

(assert (=> b!36515 (= tp!25251 e!18030)))

(declare-fun b!36676 () Bool)

(declare-fun tp!25318 () Bool)

(declare-fun tp!25317 () Bool)

(assert (=> b!36676 (= e!18030 (and tp!25318 tp!25317))))

(declare-fun b!36674 () Bool)

(declare-fun tp!25320 () Bool)

(declare-fun tp!25319 () Bool)

(assert (=> b!36674 (= e!18030 (and tp!25320 tp!25319))))

(declare-fun b!36675 () Bool)

(declare-fun tp!25321 () Bool)

(assert (=> b!36675 (= e!18030 tp!25321)))

(assert (= (and b!36515 ((_ is ElementMatch!175) (regOne!863 (regOne!862 r!13380)))) b!36673))

(assert (= (and b!36515 ((_ is Concat!294) (regOne!863 (regOne!862 r!13380)))) b!36674))

(assert (= (and b!36515 ((_ is Star!175) (regOne!863 (regOne!862 r!13380)))) b!36675))

(assert (= (and b!36515 ((_ is Union!175) (regOne!863 (regOne!862 r!13380)))) b!36676))

(declare-fun b!36677 () Bool)

(declare-fun e!18031 () Bool)

(assert (=> b!36677 (= e!18031 tp_is_empty!375)))

(assert (=> b!36515 (= tp!25250 e!18031)))

(declare-fun b!36680 () Bool)

(declare-fun tp!25323 () Bool)

(declare-fun tp!25322 () Bool)

(assert (=> b!36680 (= e!18031 (and tp!25323 tp!25322))))

(declare-fun b!36678 () Bool)

(declare-fun tp!25325 () Bool)

(declare-fun tp!25324 () Bool)

(assert (=> b!36678 (= e!18031 (and tp!25325 tp!25324))))

(declare-fun b!36679 () Bool)

(declare-fun tp!25326 () Bool)

(assert (=> b!36679 (= e!18031 tp!25326)))

(assert (= (and b!36515 ((_ is ElementMatch!175) (regTwo!863 (regOne!862 r!13380)))) b!36677))

(assert (= (and b!36515 ((_ is Concat!294) (regTwo!863 (regOne!862 r!13380)))) b!36678))

(assert (= (and b!36515 ((_ is Star!175) (regTwo!863 (regOne!862 r!13380)))) b!36679))

(assert (= (and b!36515 ((_ is Union!175) (regTwo!863 (regOne!862 r!13380)))) b!36680))

(declare-fun b!36681 () Bool)

(declare-fun e!18032 () Bool)

(assert (=> b!36681 (= e!18032 tp_is_empty!375)))

(assert (=> b!36538 (= tp!25280 e!18032)))

(declare-fun b!36684 () Bool)

(declare-fun tp!25328 () Bool)

(declare-fun tp!25327 () Bool)

(assert (=> b!36684 (= e!18032 (and tp!25328 tp!25327))))

(declare-fun b!36682 () Bool)

(declare-fun tp!25330 () Bool)

(declare-fun tp!25329 () Bool)

(assert (=> b!36682 (= e!18032 (and tp!25330 tp!25329))))

(declare-fun b!36683 () Bool)

(declare-fun tp!25331 () Bool)

(assert (=> b!36683 (= e!18032 tp!25331)))

(assert (= (and b!36538 ((_ is ElementMatch!175) (regOne!863 (regTwo!863 r!13380)))) b!36681))

(assert (= (and b!36538 ((_ is Concat!294) (regOne!863 (regTwo!863 r!13380)))) b!36682))

(assert (= (and b!36538 ((_ is Star!175) (regOne!863 (regTwo!863 r!13380)))) b!36683))

(assert (= (and b!36538 ((_ is Union!175) (regOne!863 (regTwo!863 r!13380)))) b!36684))

(declare-fun b!36685 () Bool)

(declare-fun e!18033 () Bool)

(assert (=> b!36685 (= e!18033 tp_is_empty!375)))

(assert (=> b!36538 (= tp!25279 e!18033)))

(declare-fun b!36688 () Bool)

(declare-fun tp!25333 () Bool)

(declare-fun tp!25332 () Bool)

(assert (=> b!36688 (= e!18033 (and tp!25333 tp!25332))))

(declare-fun b!36686 () Bool)

(declare-fun tp!25335 () Bool)

(declare-fun tp!25334 () Bool)

(assert (=> b!36686 (= e!18033 (and tp!25335 tp!25334))))

(declare-fun b!36687 () Bool)

(declare-fun tp!25336 () Bool)

(assert (=> b!36687 (= e!18033 tp!25336)))

(assert (= (and b!36538 ((_ is ElementMatch!175) (regTwo!863 (regTwo!863 r!13380)))) b!36685))

(assert (= (and b!36538 ((_ is Concat!294) (regTwo!863 (regTwo!863 r!13380)))) b!36686))

(assert (= (and b!36538 ((_ is Star!175) (regTwo!863 (regTwo!863 r!13380)))) b!36687))

(assert (= (and b!36538 ((_ is Union!175) (regTwo!863 (regTwo!863 r!13380)))) b!36688))

(declare-fun b!36689 () Bool)

(declare-fun e!18034 () Bool)

(assert (=> b!36689 (= e!18034 tp_is_empty!375)))

(assert (=> b!36523 (= tp!25261 e!18034)))

(declare-fun b!36692 () Bool)

(declare-fun tp!25338 () Bool)

(declare-fun tp!25337 () Bool)

(assert (=> b!36692 (= e!18034 (and tp!25338 tp!25337))))

(declare-fun b!36690 () Bool)

(declare-fun tp!25340 () Bool)

(declare-fun tp!25339 () Bool)

(assert (=> b!36690 (= e!18034 (and tp!25340 tp!25339))))

(declare-fun b!36691 () Bool)

(declare-fun tp!25341 () Bool)

(assert (=> b!36691 (= e!18034 tp!25341)))

(assert (= (and b!36523 ((_ is ElementMatch!175) (regOne!863 (reg!504 r!13380)))) b!36689))

(assert (= (and b!36523 ((_ is Concat!294) (regOne!863 (reg!504 r!13380)))) b!36690))

(assert (= (and b!36523 ((_ is Star!175) (regOne!863 (reg!504 r!13380)))) b!36691))

(assert (= (and b!36523 ((_ is Union!175) (regOne!863 (reg!504 r!13380)))) b!36692))

(declare-fun b!36693 () Bool)

(declare-fun e!18035 () Bool)

(assert (=> b!36693 (= e!18035 tp_is_empty!375)))

(assert (=> b!36523 (= tp!25260 e!18035)))

(declare-fun b!36696 () Bool)

(declare-fun tp!25343 () Bool)

(declare-fun tp!25342 () Bool)

(assert (=> b!36696 (= e!18035 (and tp!25343 tp!25342))))

(declare-fun b!36694 () Bool)

(declare-fun tp!25345 () Bool)

(declare-fun tp!25344 () Bool)

(assert (=> b!36694 (= e!18035 (and tp!25345 tp!25344))))

(declare-fun b!36695 () Bool)

(declare-fun tp!25346 () Bool)

(assert (=> b!36695 (= e!18035 tp!25346)))

(assert (= (and b!36523 ((_ is ElementMatch!175) (regTwo!863 (reg!504 r!13380)))) b!36693))

(assert (= (and b!36523 ((_ is Concat!294) (regTwo!863 (reg!504 r!13380)))) b!36694))

(assert (= (and b!36523 ((_ is Star!175) (regTwo!863 (reg!504 r!13380)))) b!36695))

(assert (= (and b!36523 ((_ is Union!175) (regTwo!863 (reg!504 r!13380)))) b!36696))

(declare-fun b!36697 () Bool)

(declare-fun e!18036 () Bool)

(assert (=> b!36697 (= e!18036 tp_is_empty!375)))

(assert (=> b!36536 (= tp!25282 e!18036)))

(declare-fun b!36700 () Bool)

(declare-fun tp!25348 () Bool)

(declare-fun tp!25347 () Bool)

(assert (=> b!36700 (= e!18036 (and tp!25348 tp!25347))))

(declare-fun b!36698 () Bool)

(declare-fun tp!25350 () Bool)

(declare-fun tp!25349 () Bool)

(assert (=> b!36698 (= e!18036 (and tp!25350 tp!25349))))

(declare-fun b!36699 () Bool)

(declare-fun tp!25351 () Bool)

(assert (=> b!36699 (= e!18036 tp!25351)))

(assert (= (and b!36536 ((_ is ElementMatch!175) (regOne!862 (regTwo!863 r!13380)))) b!36697))

(assert (= (and b!36536 ((_ is Concat!294) (regOne!862 (regTwo!863 r!13380)))) b!36698))

(assert (= (and b!36536 ((_ is Star!175) (regOne!862 (regTwo!863 r!13380)))) b!36699))

(assert (= (and b!36536 ((_ is Union!175) (regOne!862 (regTwo!863 r!13380)))) b!36700))

(declare-fun b!36701 () Bool)

(declare-fun e!18037 () Bool)

(assert (=> b!36701 (= e!18037 tp_is_empty!375)))

(assert (=> b!36536 (= tp!25281 e!18037)))

(declare-fun b!36704 () Bool)

(declare-fun tp!25353 () Bool)

(declare-fun tp!25352 () Bool)

(assert (=> b!36704 (= e!18037 (and tp!25353 tp!25352))))

(declare-fun b!36702 () Bool)

(declare-fun tp!25355 () Bool)

(declare-fun tp!25354 () Bool)

(assert (=> b!36702 (= e!18037 (and tp!25355 tp!25354))))

(declare-fun b!36703 () Bool)

(declare-fun tp!25356 () Bool)

(assert (=> b!36703 (= e!18037 tp!25356)))

(assert (= (and b!36536 ((_ is ElementMatch!175) (regTwo!862 (regTwo!863 r!13380)))) b!36701))

(assert (= (and b!36536 ((_ is Concat!294) (regTwo!862 (regTwo!863 r!13380)))) b!36702))

(assert (= (and b!36536 ((_ is Star!175) (regTwo!862 (regTwo!863 r!13380)))) b!36703))

(assert (= (and b!36536 ((_ is Union!175) (regTwo!862 (regTwo!863 r!13380)))) b!36704))

(declare-fun b!36705 () Bool)

(declare-fun e!18038 () Bool)

(assert (=> b!36705 (= e!18038 tp_is_empty!375)))

(assert (=> b!36514 (= tp!25254 e!18038)))

(declare-fun b!36708 () Bool)

(declare-fun tp!25358 () Bool)

(declare-fun tp!25357 () Bool)

(assert (=> b!36708 (= e!18038 (and tp!25358 tp!25357))))

(declare-fun b!36706 () Bool)

(declare-fun tp!25360 () Bool)

(declare-fun tp!25359 () Bool)

(assert (=> b!36706 (= e!18038 (and tp!25360 tp!25359))))

(declare-fun b!36707 () Bool)

(declare-fun tp!25361 () Bool)

(assert (=> b!36707 (= e!18038 tp!25361)))

(assert (= (and b!36514 ((_ is ElementMatch!175) (reg!504 (regOne!862 r!13380)))) b!36705))

(assert (= (and b!36514 ((_ is Concat!294) (reg!504 (regOne!862 r!13380)))) b!36706))

(assert (= (and b!36514 ((_ is Star!175) (reg!504 (regOne!862 r!13380)))) b!36707))

(assert (= (and b!36514 ((_ is Union!175) (reg!504 (regOne!862 r!13380)))) b!36708))

(declare-fun tp!25367 () Bool)

(declare-fun e!18040 () Bool)

(declare-fun tp!25368 () Bool)

(declare-fun b!36710 () Bool)

(declare-fun tp!25364 () Bool)

(assert (=> b!36710 (= e!18040 (and tp!25367 tp_is_empty!375 tp!25364 tp!25368))))

(declare-fun b!36709 () Bool)

(declare-fun tp!25365 () Bool)

(declare-fun tp!25366 () Bool)

(declare-fun tp!25362 () Bool)

(declare-fun e!18039 () Bool)

(assert (=> b!36709 (= e!18039 (and tp!25366 tp_is_empty!375 tp!25362 tp!25365))))

(declare-fun mapNonEmpty!377 () Bool)

(declare-fun mapRes!377 () Bool)

(declare-fun tp!25363 () Bool)

(assert (=> mapNonEmpty!377 (= mapRes!377 (and tp!25363 e!18039))))

(declare-fun mapRest!377 () (Array (_ BitVec 32) List!409))

(declare-fun mapValue!377 () List!409)

(declare-fun mapKey!377 () (_ BitVec 32))

(assert (=> mapNonEmpty!377 (= mapRest!376 (store mapRest!377 mapKey!377 mapValue!377))))

(declare-fun mapIsEmpty!377 () Bool)

(assert (=> mapIsEmpty!377 mapRes!377))

(declare-fun condMapEmpty!377 () Bool)

(declare-fun mapDefault!377 () List!409)

(assert (=> mapNonEmpty!376 (= condMapEmpty!377 (= mapRest!376 ((as const (Array (_ BitVec 32) List!409)) mapDefault!377)))))

(assert (=> mapNonEmpty!376 (= tp!25225 (and e!18040 mapRes!377))))

(assert (= (and mapNonEmpty!376 condMapEmpty!377) mapIsEmpty!377))

(assert (= (and mapNonEmpty!376 (not condMapEmpty!377)) mapNonEmpty!377))

(assert (= (and mapNonEmpty!377 ((_ is Cons!407) mapValue!377)) b!36709))

(assert (= (and mapNonEmpty!376 ((_ is Cons!407) mapDefault!377)) b!36710))

(declare-fun m!11969 () Bool)

(assert (=> mapNonEmpty!377 m!11969))

(declare-fun b!36711 () Bool)

(declare-fun e!18041 () Bool)

(assert (=> b!36711 (= e!18041 tp_is_empty!375)))

(assert (=> b!36524 (= tp!25265 e!18041)))

(declare-fun b!36714 () Bool)

(declare-fun tp!25370 () Bool)

(declare-fun tp!25369 () Bool)

(assert (=> b!36714 (= e!18041 (and tp!25370 tp!25369))))

(declare-fun b!36712 () Bool)

(declare-fun tp!25372 () Bool)

(declare-fun tp!25371 () Bool)

(assert (=> b!36712 (= e!18041 (and tp!25372 tp!25371))))

(declare-fun b!36713 () Bool)

(declare-fun tp!25373 () Bool)

(assert (=> b!36713 (= e!18041 tp!25373)))

(assert (= (and b!36524 ((_ is ElementMatch!175) (_1!254 (_1!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36711))

(assert (= (and b!36524 ((_ is Concat!294) (_1!254 (_1!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36712))

(assert (= (and b!36524 ((_ is Star!175) (_1!254 (_1!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36713))

(assert (= (and b!36524 ((_ is Union!175) (_1!254 (_1!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36714))

(declare-fun b!36715 () Bool)

(declare-fun e!18042 () Bool)

(assert (=> b!36715 (= e!18042 tp_is_empty!375)))

(assert (=> b!36524 (= tp!25266 e!18042)))

(declare-fun b!36718 () Bool)

(declare-fun tp!25375 () Bool)

(declare-fun tp!25374 () Bool)

(assert (=> b!36718 (= e!18042 (and tp!25375 tp!25374))))

(declare-fun b!36716 () Bool)

(declare-fun tp!25377 () Bool)

(declare-fun tp!25376 () Bool)

(assert (=> b!36716 (= e!18042 (and tp!25377 tp!25376))))

(declare-fun b!36717 () Bool)

(declare-fun tp!25378 () Bool)

(assert (=> b!36717 (= e!18042 tp!25378)))

(assert (= (and b!36524 ((_ is ElementMatch!175) (_2!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36715))

(assert (= (and b!36524 ((_ is Concat!294) (_2!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36716))

(assert (= (and b!36524 ((_ is Star!175) (_2!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36717))

(assert (= (and b!36524 ((_ is Union!175) (_2!255 (h!5803 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36718))

(declare-fun b!36719 () Bool)

(declare-fun e!18043 () Bool)

(declare-fun tp!25381 () Bool)

(declare-fun tp!25380 () Bool)

(declare-fun tp!25379 () Bool)

(assert (=> b!36719 (= e!18043 (and tp!25379 tp_is_empty!375 tp!25380 tp!25381))))

(assert (=> b!36524 (= tp!25267 e!18043)))

(assert (= (and b!36524 ((_ is Cons!407) (t!15245 (zeroValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))) b!36719))

(declare-fun b!36720 () Bool)

(declare-fun e!18044 () Bool)

(declare-fun tp!25382 () Bool)

(assert (=> b!36720 (= e!18044 (and tp_is_empty!375 tp!25382))))

(assert (=> b!36530 (= tp!25273 e!18044)))

(assert (= (and b!36530 ((_ is Cons!408) (t!15246 (t!15246 input!6011)))) b!36720))

(declare-fun b!36721 () Bool)

(declare-fun e!18045 () Bool)

(assert (=> b!36721 (= e!18045 tp_is_empty!375)))

(assert (=> b!36539 (= tp!25284 e!18045)))

(declare-fun b!36724 () Bool)

(declare-fun tp!25384 () Bool)

(declare-fun tp!25383 () Bool)

(assert (=> b!36724 (= e!18045 (and tp!25384 tp!25383))))

(declare-fun b!36722 () Bool)

(declare-fun tp!25386 () Bool)

(declare-fun tp!25385 () Bool)

(assert (=> b!36722 (= e!18045 (and tp!25386 tp!25385))))

(declare-fun b!36723 () Bool)

(declare-fun tp!25387 () Bool)

(assert (=> b!36723 (= e!18045 tp!25387)))

(assert (= (and b!36539 ((_ is ElementMatch!175) (_1!254 (_1!255 (h!5803 mapDefault!373))))) b!36721))

(assert (= (and b!36539 ((_ is Concat!294) (_1!254 (_1!255 (h!5803 mapDefault!373))))) b!36722))

(assert (= (and b!36539 ((_ is Star!175) (_1!254 (_1!255 (h!5803 mapDefault!373))))) b!36723))

(assert (= (and b!36539 ((_ is Union!175) (_1!254 (_1!255 (h!5803 mapDefault!373))))) b!36724))

(declare-fun b!36725 () Bool)

(declare-fun e!18046 () Bool)

(assert (=> b!36725 (= e!18046 tp_is_empty!375)))

(assert (=> b!36539 (= tp!25285 e!18046)))

(declare-fun b!36728 () Bool)

(declare-fun tp!25389 () Bool)

(declare-fun tp!25388 () Bool)

(assert (=> b!36728 (= e!18046 (and tp!25389 tp!25388))))

(declare-fun b!36726 () Bool)

(declare-fun tp!25391 () Bool)

(declare-fun tp!25390 () Bool)

(assert (=> b!36726 (= e!18046 (and tp!25391 tp!25390))))

(declare-fun b!36727 () Bool)

(declare-fun tp!25392 () Bool)

(assert (=> b!36727 (= e!18046 tp!25392)))

(assert (= (and b!36539 ((_ is ElementMatch!175) (_2!255 (h!5803 mapDefault!373)))) b!36725))

(assert (= (and b!36539 ((_ is Concat!294) (_2!255 (h!5803 mapDefault!373)))) b!36726))

(assert (= (and b!36539 ((_ is Star!175) (_2!255 (h!5803 mapDefault!373)))) b!36727))

(assert (= (and b!36539 ((_ is Union!175) (_2!255 (h!5803 mapDefault!373)))) b!36728))

(declare-fun tp!25395 () Bool)

(declare-fun tp!25394 () Bool)

(declare-fun e!18047 () Bool)

(declare-fun b!36729 () Bool)

(declare-fun tp!25393 () Bool)

(assert (=> b!36729 (= e!18047 (and tp!25393 tp_is_empty!375 tp!25394 tp!25395))))

(assert (=> b!36539 (= tp!25286 e!18047)))

(assert (= (and b!36539 ((_ is Cons!407) (t!15245 mapDefault!373))) b!36729))

(declare-fun b!36730 () Bool)

(declare-fun e!18048 () Bool)

(assert (=> b!36730 (= e!18048 tp_is_empty!375)))

(assert (=> b!36495 (= tp!25228 e!18048)))

(declare-fun b!36733 () Bool)

(declare-fun tp!25397 () Bool)

(declare-fun tp!25396 () Bool)

(assert (=> b!36733 (= e!18048 (and tp!25397 tp!25396))))

(declare-fun b!36731 () Bool)

(declare-fun tp!25399 () Bool)

(declare-fun tp!25398 () Bool)

(assert (=> b!36731 (= e!18048 (and tp!25399 tp!25398))))

(declare-fun b!36732 () Bool)

(declare-fun tp!25400 () Bool)

(assert (=> b!36732 (= e!18048 tp!25400)))

(assert (= (and b!36495 ((_ is ElementMatch!175) (_1!254 (_1!255 (h!5803 mapValue!376))))) b!36730))

(assert (= (and b!36495 ((_ is Concat!294) (_1!254 (_1!255 (h!5803 mapValue!376))))) b!36731))

(assert (= (and b!36495 ((_ is Star!175) (_1!254 (_1!255 (h!5803 mapValue!376))))) b!36732))

(assert (= (and b!36495 ((_ is Union!175) (_1!254 (_1!255 (h!5803 mapValue!376))))) b!36733))

(declare-fun b!36734 () Bool)

(declare-fun e!18049 () Bool)

(assert (=> b!36734 (= e!18049 tp_is_empty!375)))

(assert (=> b!36495 (= tp!25224 e!18049)))

(declare-fun b!36737 () Bool)

(declare-fun tp!25402 () Bool)

(declare-fun tp!25401 () Bool)

(assert (=> b!36737 (= e!18049 (and tp!25402 tp!25401))))

(declare-fun b!36735 () Bool)

(declare-fun tp!25404 () Bool)

(declare-fun tp!25403 () Bool)

(assert (=> b!36735 (= e!18049 (and tp!25404 tp!25403))))

(declare-fun b!36736 () Bool)

(declare-fun tp!25405 () Bool)

(assert (=> b!36736 (= e!18049 tp!25405)))

(assert (= (and b!36495 ((_ is ElementMatch!175) (_2!255 (h!5803 mapValue!376)))) b!36734))

(assert (= (and b!36495 ((_ is Concat!294) (_2!255 (h!5803 mapValue!376)))) b!36735))

(assert (= (and b!36495 ((_ is Star!175) (_2!255 (h!5803 mapValue!376)))) b!36736))

(assert (= (and b!36495 ((_ is Union!175) (_2!255 (h!5803 mapValue!376)))) b!36737))

(declare-fun tp!25406 () Bool)

(declare-fun tp!25408 () Bool)

(declare-fun b!36738 () Bool)

(declare-fun tp!25407 () Bool)

(declare-fun e!18050 () Bool)

(assert (=> b!36738 (= e!18050 (and tp!25406 tp_is_empty!375 tp!25407 tp!25408))))

(assert (=> b!36495 (= tp!25227 e!18050)))

(assert (= (and b!36495 ((_ is Cons!407) (t!15245 mapValue!376))) b!36738))

(declare-fun b!36739 () Bool)

(declare-fun e!18051 () Bool)

(assert (=> b!36739 (= e!18051 tp_is_empty!375)))

(assert (=> b!36496 (= tp!25229 e!18051)))

(declare-fun b!36742 () Bool)

(declare-fun tp!25410 () Bool)

(declare-fun tp!25409 () Bool)

(assert (=> b!36742 (= e!18051 (and tp!25410 tp!25409))))

(declare-fun b!36740 () Bool)

(declare-fun tp!25412 () Bool)

(declare-fun tp!25411 () Bool)

(assert (=> b!36740 (= e!18051 (and tp!25412 tp!25411))))

(declare-fun b!36741 () Bool)

(declare-fun tp!25413 () Bool)

(assert (=> b!36741 (= e!18051 tp!25413)))

(assert (= (and b!36496 ((_ is ElementMatch!175) (_1!254 (_1!255 (h!5803 mapDefault!376))))) b!36739))

(assert (= (and b!36496 ((_ is Concat!294) (_1!254 (_1!255 (h!5803 mapDefault!376))))) b!36740))

(assert (= (and b!36496 ((_ is Star!175) (_1!254 (_1!255 (h!5803 mapDefault!376))))) b!36741))

(assert (= (and b!36496 ((_ is Union!175) (_1!254 (_1!255 (h!5803 mapDefault!376))))) b!36742))

(declare-fun b!36743 () Bool)

(declare-fun e!18052 () Bool)

(assert (=> b!36743 (= e!18052 tp_is_empty!375)))

(assert (=> b!36496 (= tp!25226 e!18052)))

(declare-fun b!36746 () Bool)

(declare-fun tp!25415 () Bool)

(declare-fun tp!25414 () Bool)

(assert (=> b!36746 (= e!18052 (and tp!25415 tp!25414))))

(declare-fun b!36744 () Bool)

(declare-fun tp!25417 () Bool)

(declare-fun tp!25416 () Bool)

(assert (=> b!36744 (= e!18052 (and tp!25417 tp!25416))))

(declare-fun b!36745 () Bool)

(declare-fun tp!25418 () Bool)

(assert (=> b!36745 (= e!18052 tp!25418)))

(assert (= (and b!36496 ((_ is ElementMatch!175) (_2!255 (h!5803 mapDefault!376)))) b!36743))

(assert (= (and b!36496 ((_ is Concat!294) (_2!255 (h!5803 mapDefault!376)))) b!36744))

(assert (= (and b!36496 ((_ is Star!175) (_2!255 (h!5803 mapDefault!376)))) b!36745))

(assert (= (and b!36496 ((_ is Union!175) (_2!255 (h!5803 mapDefault!376)))) b!36746))

(declare-fun tp!25420 () Bool)

(declare-fun e!18053 () Bool)

(declare-fun tp!25419 () Bool)

(declare-fun b!36747 () Bool)

(declare-fun tp!25421 () Bool)

(assert (=> b!36747 (= e!18053 (and tp!25419 tp_is_empty!375 tp!25420 tp!25421))))

(assert (=> b!36496 (= tp!25230 e!18053)))

(assert (= (and b!36496 ((_ is Cons!407) (t!15245 mapDefault!376))) b!36747))

(declare-fun b!36748 () Bool)

(declare-fun e!18054 () Bool)

(assert (=> b!36748 (= e!18054 tp_is_empty!375)))

(assert (=> b!36517 (= tp!25258 e!18054)))

(declare-fun b!36751 () Bool)

(declare-fun tp!25423 () Bool)

(declare-fun tp!25422 () Bool)

(assert (=> b!36751 (= e!18054 (and tp!25423 tp!25422))))

(declare-fun b!36749 () Bool)

(declare-fun tp!25425 () Bool)

(declare-fun tp!25424 () Bool)

(assert (=> b!36749 (= e!18054 (and tp!25425 tp!25424))))

(declare-fun b!36750 () Bool)

(declare-fun tp!25426 () Bool)

(assert (=> b!36750 (= e!18054 tp!25426)))

(assert (= (and b!36517 ((_ is ElementMatch!175) (regOne!862 (regTwo!862 r!13380)))) b!36748))

(assert (= (and b!36517 ((_ is Concat!294) (regOne!862 (regTwo!862 r!13380)))) b!36749))

(assert (= (and b!36517 ((_ is Star!175) (regOne!862 (regTwo!862 r!13380)))) b!36750))

(assert (= (and b!36517 ((_ is Union!175) (regOne!862 (regTwo!862 r!13380)))) b!36751))

(declare-fun b!36752 () Bool)

(declare-fun e!18055 () Bool)

(assert (=> b!36752 (= e!18055 tp_is_empty!375)))

(assert (=> b!36517 (= tp!25257 e!18055)))

(declare-fun b!36755 () Bool)

(declare-fun tp!25428 () Bool)

(declare-fun tp!25427 () Bool)

(assert (=> b!36755 (= e!18055 (and tp!25428 tp!25427))))

(declare-fun b!36753 () Bool)

(declare-fun tp!25430 () Bool)

(declare-fun tp!25429 () Bool)

(assert (=> b!36753 (= e!18055 (and tp!25430 tp!25429))))

(declare-fun b!36754 () Bool)

(declare-fun tp!25431 () Bool)

(assert (=> b!36754 (= e!18055 tp!25431)))

(assert (= (and b!36517 ((_ is ElementMatch!175) (regTwo!862 (regTwo!862 r!13380)))) b!36752))

(assert (= (and b!36517 ((_ is Concat!294) (regTwo!862 (regTwo!862 r!13380)))) b!36753))

(assert (= (and b!36517 ((_ is Star!175) (regTwo!862 (regTwo!862 r!13380)))) b!36754))

(assert (= (and b!36517 ((_ is Union!175) (regTwo!862 (regTwo!862 r!13380)))) b!36755))

(declare-fun b!36756 () Bool)

(declare-fun e!18056 () Bool)

(assert (=> b!36756 (= e!18056 tp_is_empty!375)))

(assert (=> b!36525 (= tp!25268 e!18056)))

(declare-fun b!36759 () Bool)

(declare-fun tp!25433 () Bool)

(declare-fun tp!25432 () Bool)

(assert (=> b!36759 (= e!18056 (and tp!25433 tp!25432))))

(declare-fun b!36757 () Bool)

(declare-fun tp!25435 () Bool)

(declare-fun tp!25434 () Bool)

(assert (=> b!36757 (= e!18056 (and tp!25435 tp!25434))))

(declare-fun b!36758 () Bool)

(declare-fun tp!25436 () Bool)

(assert (=> b!36758 (= e!18056 tp!25436)))

(assert (= (and b!36525 ((_ is ElementMatch!175) (_1!254 (_1!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36756))

(assert (= (and b!36525 ((_ is Concat!294) (_1!254 (_1!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36757))

(assert (= (and b!36525 ((_ is Star!175) (_1!254 (_1!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36758))

(assert (= (and b!36525 ((_ is Union!175) (_1!254 (_1!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))))) b!36759))

(declare-fun b!36760 () Bool)

(declare-fun e!18057 () Bool)

(assert (=> b!36760 (= e!18057 tp_is_empty!375)))

(assert (=> b!36525 (= tp!25269 e!18057)))

(declare-fun b!36763 () Bool)

(declare-fun tp!25438 () Bool)

(declare-fun tp!25437 () Bool)

(assert (=> b!36763 (= e!18057 (and tp!25438 tp!25437))))

(declare-fun b!36761 () Bool)

(declare-fun tp!25440 () Bool)

(declare-fun tp!25439 () Bool)

(assert (=> b!36761 (= e!18057 (and tp!25440 tp!25439))))

(declare-fun b!36762 () Bool)

(declare-fun tp!25441 () Bool)

(assert (=> b!36762 (= e!18057 tp!25441)))

(assert (= (and b!36525 ((_ is ElementMatch!175) (_2!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36760))

(assert (= (and b!36525 ((_ is Concat!294) (_2!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36761))

(assert (= (and b!36525 ((_ is Star!175) (_2!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36762))

(assert (= (and b!36525 ((_ is Union!175) (_2!255 (h!5803 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443)))))))))) b!36763))

(declare-fun tp!25444 () Bool)

(declare-fun tp!25443 () Bool)

(declare-fun e!18058 () Bool)

(declare-fun tp!25442 () Bool)

(declare-fun b!36764 () Bool)

(assert (=> b!36764 (= e!18058 (and tp!25442 tp_is_empty!375 tp!25443 tp!25444))))

(assert (=> b!36525 (= tp!25270 e!18058)))

(assert (= (and b!36525 ((_ is Cons!407) (t!15245 (minValue!367 (v!12191 (underlying!417 (v!12192 (underlying!418 (cache!587 cache!443))))))))) b!36764))

(declare-fun b!36765 () Bool)

(declare-fun e!18059 () Bool)

(assert (=> b!36765 (= e!18059 tp_is_empty!375)))

(assert (=> b!36518 (= tp!25259 e!18059)))

(declare-fun b!36768 () Bool)

(declare-fun tp!25446 () Bool)

(declare-fun tp!25445 () Bool)

(assert (=> b!36768 (= e!18059 (and tp!25446 tp!25445))))

(declare-fun b!36766 () Bool)

(declare-fun tp!25448 () Bool)

(declare-fun tp!25447 () Bool)

(assert (=> b!36766 (= e!18059 (and tp!25448 tp!25447))))

(declare-fun b!36767 () Bool)

(declare-fun tp!25449 () Bool)

(assert (=> b!36767 (= e!18059 tp!25449)))

(assert (= (and b!36518 ((_ is ElementMatch!175) (reg!504 (regTwo!862 r!13380)))) b!36765))

(assert (= (and b!36518 ((_ is Concat!294) (reg!504 (regTwo!862 r!13380)))) b!36766))

(assert (= (and b!36518 ((_ is Star!175) (reg!504 (regTwo!862 r!13380)))) b!36767))

(assert (= (and b!36518 ((_ is Union!175) (reg!504 (regTwo!862 r!13380)))) b!36768))

(declare-fun b!36769 () Bool)

(declare-fun e!18060 () Bool)

(assert (=> b!36769 (= e!18060 tp_is_empty!375)))

(assert (=> b!36501 (= tp!25237 e!18060)))

(declare-fun b!36772 () Bool)

(declare-fun tp!25451 () Bool)

(declare-fun tp!25450 () Bool)

(assert (=> b!36772 (= e!18060 (and tp!25451 tp!25450))))

(declare-fun b!36770 () Bool)

(declare-fun tp!25453 () Bool)

(declare-fun tp!25452 () Bool)

(assert (=> b!36770 (= e!18060 (and tp!25453 tp!25452))))

(declare-fun b!36771 () Bool)

(declare-fun tp!25454 () Bool)

(assert (=> b!36771 (= e!18060 tp!25454)))

(assert (= (and b!36501 ((_ is ElementMatch!175) (_1!254 (_1!255 (h!5803 mapValue!373))))) b!36769))

(assert (= (and b!36501 ((_ is Concat!294) (_1!254 (_1!255 (h!5803 mapValue!373))))) b!36770))

(assert (= (and b!36501 ((_ is Star!175) (_1!254 (_1!255 (h!5803 mapValue!373))))) b!36771))

(assert (= (and b!36501 ((_ is Union!175) (_1!254 (_1!255 (h!5803 mapValue!373))))) b!36772))

(declare-fun b!36773 () Bool)

(declare-fun e!18061 () Bool)

(assert (=> b!36773 (= e!18061 tp_is_empty!375)))

(assert (=> b!36501 (= tp!25238 e!18061)))

(declare-fun b!36776 () Bool)

(declare-fun tp!25456 () Bool)

(declare-fun tp!25455 () Bool)

(assert (=> b!36776 (= e!18061 (and tp!25456 tp!25455))))

(declare-fun b!36774 () Bool)

(declare-fun tp!25458 () Bool)

(declare-fun tp!25457 () Bool)

(assert (=> b!36774 (= e!18061 (and tp!25458 tp!25457))))

(declare-fun b!36775 () Bool)

(declare-fun tp!25459 () Bool)

(assert (=> b!36775 (= e!18061 tp!25459)))

(assert (= (and b!36501 ((_ is ElementMatch!175) (_2!255 (h!5803 mapValue!373)))) b!36773))

(assert (= (and b!36501 ((_ is Concat!294) (_2!255 (h!5803 mapValue!373)))) b!36774))

(assert (= (and b!36501 ((_ is Star!175) (_2!255 (h!5803 mapValue!373)))) b!36775))

(assert (= (and b!36501 ((_ is Union!175) (_2!255 (h!5803 mapValue!373)))) b!36776))

(declare-fun tp!25462 () Bool)

(declare-fun b!36777 () Bool)

(declare-fun tp!25460 () Bool)

(declare-fun tp!25461 () Bool)

(declare-fun e!18062 () Bool)

(assert (=> b!36777 (= e!18062 (and tp!25460 tp_is_empty!375 tp!25461 tp!25462))))

(assert (=> b!36501 (= tp!25239 e!18062)))

(assert (= (and b!36501 ((_ is Cons!407) (t!15245 mapValue!373))) b!36777))

(declare-fun b!36778 () Bool)

(declare-fun e!18063 () Bool)

(assert (=> b!36778 (= e!18063 tp_is_empty!375)))

(assert (=> b!36533 (= tp!25278 e!18063)))

(declare-fun b!36781 () Bool)

(declare-fun tp!25464 () Bool)

(declare-fun tp!25463 () Bool)

(assert (=> b!36781 (= e!18063 (and tp!25464 tp!25463))))

(declare-fun b!36779 () Bool)

(declare-fun tp!25466 () Bool)

(declare-fun tp!25465 () Bool)

(assert (=> b!36779 (= e!18063 (and tp!25466 tp!25465))))

(declare-fun b!36780 () Bool)

(declare-fun tp!25467 () Bool)

(assert (=> b!36780 (= e!18063 tp!25467)))

(assert (= (and b!36533 ((_ is ElementMatch!175) (reg!504 (regOne!863 r!13380)))) b!36778))

(assert (= (and b!36533 ((_ is Concat!294) (reg!504 (regOne!863 r!13380)))) b!36779))

(assert (= (and b!36533 ((_ is Star!175) (reg!504 (regOne!863 r!13380)))) b!36780))

(assert (= (and b!36533 ((_ is Union!175) (reg!504 (regOne!863 r!13380)))) b!36781))

(declare-fun b!36782 () Bool)

(declare-fun e!18064 () Bool)

(assert (=> b!36782 (= e!18064 tp_is_empty!375)))

(assert (=> b!36519 (= tp!25256 e!18064)))

(declare-fun b!36785 () Bool)

(declare-fun tp!25469 () Bool)

(declare-fun tp!25468 () Bool)

(assert (=> b!36785 (= e!18064 (and tp!25469 tp!25468))))

(declare-fun b!36783 () Bool)

(declare-fun tp!25471 () Bool)

(declare-fun tp!25470 () Bool)

(assert (=> b!36783 (= e!18064 (and tp!25471 tp!25470))))

(declare-fun b!36784 () Bool)

(declare-fun tp!25472 () Bool)

(assert (=> b!36784 (= e!18064 tp!25472)))

(assert (= (and b!36519 ((_ is ElementMatch!175) (regOne!863 (regTwo!862 r!13380)))) b!36782))

(assert (= (and b!36519 ((_ is Concat!294) (regOne!863 (regTwo!862 r!13380)))) b!36783))

(assert (= (and b!36519 ((_ is Star!175) (regOne!863 (regTwo!862 r!13380)))) b!36784))

(assert (= (and b!36519 ((_ is Union!175) (regOne!863 (regTwo!862 r!13380)))) b!36785))

(declare-fun b!36786 () Bool)

(declare-fun e!18065 () Bool)

(assert (=> b!36786 (= e!18065 tp_is_empty!375)))

(assert (=> b!36519 (= tp!25255 e!18065)))

(declare-fun b!36789 () Bool)

(declare-fun tp!25474 () Bool)

(declare-fun tp!25473 () Bool)

(assert (=> b!36789 (= e!18065 (and tp!25474 tp!25473))))

(declare-fun b!36787 () Bool)

(declare-fun tp!25476 () Bool)

(declare-fun tp!25475 () Bool)

(assert (=> b!36787 (= e!18065 (and tp!25476 tp!25475))))

(declare-fun b!36788 () Bool)

(declare-fun tp!25477 () Bool)

(assert (=> b!36788 (= e!18065 tp!25477)))

(assert (= (and b!36519 ((_ is ElementMatch!175) (regTwo!863 (regTwo!862 r!13380)))) b!36786))

(assert (= (and b!36519 ((_ is Concat!294) (regTwo!863 (regTwo!862 r!13380)))) b!36787))

(assert (= (and b!36519 ((_ is Star!175) (regTwo!863 (regTwo!862 r!13380)))) b!36788))

(assert (= (and b!36519 ((_ is Union!175) (regTwo!863 (regTwo!862 r!13380)))) b!36789))

(declare-fun b!36790 () Bool)

(declare-fun e!18066 () Bool)

(assert (=> b!36790 (= e!18066 tp_is_empty!375)))

(assert (=> b!36532 (= tp!25277 e!18066)))

(declare-fun b!36793 () Bool)

(declare-fun tp!25479 () Bool)

(declare-fun tp!25478 () Bool)

(assert (=> b!36793 (= e!18066 (and tp!25479 tp!25478))))

(declare-fun b!36791 () Bool)

(declare-fun tp!25481 () Bool)

(declare-fun tp!25480 () Bool)

(assert (=> b!36791 (= e!18066 (and tp!25481 tp!25480))))

(declare-fun b!36792 () Bool)

(declare-fun tp!25482 () Bool)

(assert (=> b!36792 (= e!18066 tp!25482)))

(assert (= (and b!36532 ((_ is ElementMatch!175) (regOne!862 (regOne!863 r!13380)))) b!36790))

(assert (= (and b!36532 ((_ is Concat!294) (regOne!862 (regOne!863 r!13380)))) b!36791))

(assert (= (and b!36532 ((_ is Star!175) (regOne!862 (regOne!863 r!13380)))) b!36792))

(assert (= (and b!36532 ((_ is Union!175) (regOne!862 (regOne!863 r!13380)))) b!36793))

(declare-fun b!36794 () Bool)

(declare-fun e!18067 () Bool)

(assert (=> b!36794 (= e!18067 tp_is_empty!375)))

(assert (=> b!36532 (= tp!25276 e!18067)))

(declare-fun b!36797 () Bool)

(declare-fun tp!25484 () Bool)

(declare-fun tp!25483 () Bool)

(assert (=> b!36797 (= e!18067 (and tp!25484 tp!25483))))

(declare-fun b!36795 () Bool)

(declare-fun tp!25486 () Bool)

(declare-fun tp!25485 () Bool)

(assert (=> b!36795 (= e!18067 (and tp!25486 tp!25485))))

(declare-fun b!36796 () Bool)

(declare-fun tp!25487 () Bool)

(assert (=> b!36796 (= e!18067 tp!25487)))

(assert (= (and b!36532 ((_ is ElementMatch!175) (regTwo!862 (regOne!863 r!13380)))) b!36794))

(assert (= (and b!36532 ((_ is Concat!294) (regTwo!862 (regOne!863 r!13380)))) b!36795))

(assert (= (and b!36532 ((_ is Star!175) (regTwo!862 (regOne!863 r!13380)))) b!36796))

(assert (= (and b!36532 ((_ is Union!175) (regTwo!862 (regOne!863 r!13380)))) b!36797))

(declare-fun b!36798 () Bool)

(declare-fun e!18068 () Bool)

(assert (=> b!36798 (= e!18068 tp_is_empty!375)))

(assert (=> b!36534 (= tp!25275 e!18068)))

(declare-fun b!36801 () Bool)

(declare-fun tp!25489 () Bool)

(declare-fun tp!25488 () Bool)

(assert (=> b!36801 (= e!18068 (and tp!25489 tp!25488))))

(declare-fun b!36799 () Bool)

(declare-fun tp!25491 () Bool)

(declare-fun tp!25490 () Bool)

(assert (=> b!36799 (= e!18068 (and tp!25491 tp!25490))))

(declare-fun b!36800 () Bool)

(declare-fun tp!25492 () Bool)

(assert (=> b!36800 (= e!18068 tp!25492)))

(assert (= (and b!36534 ((_ is ElementMatch!175) (regOne!863 (regOne!863 r!13380)))) b!36798))

(assert (= (and b!36534 ((_ is Concat!294) (regOne!863 (regOne!863 r!13380)))) b!36799))

(assert (= (and b!36534 ((_ is Star!175) (regOne!863 (regOne!863 r!13380)))) b!36800))

(assert (= (and b!36534 ((_ is Union!175) (regOne!863 (regOne!863 r!13380)))) b!36801))

(declare-fun b!36802 () Bool)

(declare-fun e!18069 () Bool)

(assert (=> b!36802 (= e!18069 tp_is_empty!375)))

(assert (=> b!36534 (= tp!25274 e!18069)))

(declare-fun b!36805 () Bool)

(declare-fun tp!25494 () Bool)

(declare-fun tp!25493 () Bool)

(assert (=> b!36805 (= e!18069 (and tp!25494 tp!25493))))

(declare-fun b!36803 () Bool)

(declare-fun tp!25496 () Bool)

(declare-fun tp!25495 () Bool)

(assert (=> b!36803 (= e!18069 (and tp!25496 tp!25495))))

(declare-fun b!36804 () Bool)

(declare-fun tp!25497 () Bool)

(assert (=> b!36804 (= e!18069 tp!25497)))

(assert (= (and b!36534 ((_ is ElementMatch!175) (regTwo!863 (regOne!863 r!13380)))) b!36802))

(assert (= (and b!36534 ((_ is Concat!294) (regTwo!863 (regOne!863 r!13380)))) b!36803))

(assert (= (and b!36534 ((_ is Star!175) (regTwo!863 (regOne!863 r!13380)))) b!36804))

(assert (= (and b!36534 ((_ is Union!175) (regTwo!863 (regOne!863 r!13380)))) b!36805))

(declare-fun b!36816 () Bool)

(declare-fun e!18078 () Bool)

(declare-fun lt!3114 () MutLongMap!111)

(assert (=> b!36816 (= e!18078 ((_ is LongMap!111) lt!3114))))

(assert (=> b!36816 (= lt!3114 (v!12192 (underlying!418 (cache!587 (_2!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))))))

(declare-fun b!36815 () Bool)

(declare-fun e!18077 () Bool)

(assert (=> b!36815 (= e!18077 e!18078)))

(declare-fun b!36814 () Bool)

(declare-fun e!18076 () Bool)

(assert (=> b!36814 (= e!18076 e!18077)))

(assert (=> d!3902 (= true e!18076)))

(assert (= b!36815 b!36816))

(assert (= (and b!36814 ((_ is HashMap!107) (cache!587 (_2!256 (derivativeStepMem!4 r!13380 (head!332 input!6011) cache!443))))) b!36815))

(assert (= d!3902 b!36814))

(check-sat (not b!36793) (not b!36678) (not b!36733) (not b!36805) (not b!36804) (not b!36770) (not b!36679) (not b!36732) (not b!36768) (not b!36696) (not b!36738) (not b!36789) (not b!36799) (not b!36717) (not b_next!559) (not b!36772) (not b!36747) (not b!36709) (not b!36548) (not b!36650) (not b!36684) (not b!36803) (not b!36745) (not b!36714) (not b!36723) (not bm!2729) b_and!593 (not b!36744) (not b!36646) (not b!36690) (not b!36774) (not b!36800) (not bm!2731) (not b!36576) (not b!36694) (not d!3926) (not b!36593) (not b!36736) (not b!36695) (not b!36761) (not b!36781) (not b!36686) (not b!36663) (not b!36787) (not b!36547) (not bm!2720) (not b!36655) (not b!36749) (not b!36670) (not b!36664) (not bm!2737) (not b!36750) (not b!36683) (not b!36755) (not d!3912) (not b!36767) (not d!3914) (not b!36753) (not b!36728) (not b!36792) (not b!36559) (not b!36785) (not b!36710) (not d!3918) (not b!36776) (not d!3930) (not b!36771) (not b!36716) (not b!36687) (not b!36797) (not b!36724) (not b!36740) (not b!36801) (not b!36719) (not b!36726) (not b!36651) (not b!36742) (not b!36780) (not b!36754) (not b!36706) (not b!36688) (not b!36682) (not b!36703) (not b!36729) (not mapNonEmpty!377) (not bm!2730) (not bm!2723) (not b!36796) (not b!36704) (not b!36777) (not d!3928) (not b!36658) (not bm!2750) (not b!36727) (not d!3936) (not b!36783) (not b!36791) (not b!36795) (not b!36708) (not bm!2734) (not b!36788) (not b!36577) (not b!36666) (not b!36648) (not b!36584) (not b!36779) (not b!36667) (not b!36720) (not b!36762) (not b!36722) (not b!36731) (not b!36558) (not bm!2733) (not b!36660) (not b!36637) (not b!36763) (not bm!2727) (not b!36764) (not b!36652) (not b!36775) (not b!36759) (not b!36698) (not bm!2747) (not b!36654) (not d!3934) (not b!36713) b_and!591 (not b!36758) (not d!3932) (not bm!2724) (not b!36699) (not b!36746) (not b!36563) (not b!36757) (not b!36737) (not b!36766) (not b!36602) (not b!36656) (not b!36680) (not b!36674) (not b!36671) (not b!36675) (not b!36700) (not bm!2736) (not b!36751) tp_is_empty!375 (not b!36735) (not bm!2722) (not b!36692) (not b!36702) (not b!36659) (not b!36707) (not b!36676) (not b!36691) (not b!36712) (not b!36741) (not b!36718) (not b!36662) (not b!36668) (not b!36672) (not b_next!557) (not b!36784))
(check-sat b_and!591 b_and!593 (not b_next!557) (not b_next!559))
