; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2118 () Bool)

(assert start!2118)

(declare-fun b!37876 () Bool)

(declare-fun b_free!597 () Bool)

(declare-fun b_next!597 () Bool)

(assert (=> b!37876 (= b_free!597 (not b_next!597))))

(declare-fun tp!26329 () Bool)

(declare-fun b_and!631 () Bool)

(assert (=> b!37876 (= tp!26329 b_and!631)))

(declare-fun b!37873 () Bool)

(declare-fun b_free!599 () Bool)

(declare-fun b_next!599 () Bool)

(assert (=> b!37873 (= b_free!599 (not b_next!599))))

(declare-fun tp!26328 () Bool)

(declare-fun b_and!633 () Bool)

(assert (=> b!37873 (= tp!26328 b_and!633)))

(declare-fun b!37867 () Bool)

(declare-fun e!18725 () Bool)

(declare-fun tp!26319 () Bool)

(declare-fun tp!26317 () Bool)

(assert (=> b!37867 (= e!18725 (and tp!26319 tp!26317))))

(declare-fun b!37868 () Bool)

(declare-fun res!28449 () Bool)

(declare-fun e!18717 () Bool)

(assert (=> b!37868 (=> (not res!28449) (not e!18717))))

(declare-datatypes ((C!1404 0))(
  ( (C!1405 (val!221 Int)) )
))
(declare-datatypes ((List!427 0))(
  ( (Nil!425) (Cons!425 (h!5821 C!1404) (t!15263 List!427)) )
))
(declare-fun input!6011 () List!427)

(declare-fun isEmpty!98 (List!427) Bool)

(assert (=> b!37868 (= res!28449 (not (isEmpty!98 input!6011)))))

(declare-fun b!37869 () Bool)

(declare-fun e!18722 () Bool)

(declare-fun e!18720 () Bool)

(assert (=> b!37869 (= e!18722 e!18720)))

(declare-fun b!37870 () Bool)

(declare-fun size!478 (List!427) Int)

(declare-fun tail!25 (List!427) List!427)

(assert (=> b!37870 (= e!18717 (>= (size!478 (tail!25 input!6011)) (size!478 input!6011)))))

(declare-datatypes ((Regex!185 0))(
  ( (ElementMatch!185 (c!15666 C!1404)) (Concat!304 (regOne!882 Regex!185) (regTwo!882 Regex!185)) (EmptyExpr!185) (Star!185 (reg!514 Regex!185)) (EmptyLang!185) (Union!185 (regOne!883 Regex!185) (regTwo!883 Regex!185)) )
))
(declare-datatypes ((tuple2!434 0))(
  ( (tuple2!435 (_1!283 Regex!185) (_2!283 C!1404)) )
))
(declare-datatypes ((tuple2!436 0))(
  ( (tuple2!437 (_1!284 tuple2!434) (_2!284 Regex!185)) )
))
(declare-datatypes ((List!428 0))(
  ( (Nil!426) (Cons!426 (h!5822 tuple2!436) (t!15264 List!428)) )
))
(declare-datatypes ((array!422 0))(
  ( (array!423 (arr!220 (Array (_ BitVec 32) List!428)) (size!479 (_ BitVec 32))) )
))
(declare-datatypes ((array!424 0))(
  ( (array!425 (arr!221 (Array (_ BitVec 32) (_ BitVec 64))) (size!480 (_ BitVec 32))) )
))
(declare-datatypes ((LongMapFixedSize!242 0))(
  ( (LongMapFixedSize!243 (defaultEntry!459 Int) (mask!815 (_ BitVec 32)) (extraKeys!367 (_ BitVec 32)) (zeroValue!377 List!428) (minValue!377 List!428) (_size!374 (_ BitVec 32)) (_keys!412 array!424) (_values!399 array!422) (_vacant!181 (_ BitVec 32))) )
))
(declare-datatypes ((Hashable!117 0))(
  ( (HashableExt!116 (__x!785 Int)) )
))
(declare-datatypes ((Cell!473 0))(
  ( (Cell!474 (v!12213 LongMapFixedSize!242)) )
))
(declare-datatypes ((MutLongMap!121 0))(
  ( (LongMap!121 (underlying!437 Cell!473)) (MutLongMapExt!120 (__x!786 Int)) )
))
(declare-datatypes ((Cell!475 0))(
  ( (Cell!476 (v!12214 MutLongMap!121)) )
))
(declare-datatypes ((MutableMap!117 0))(
  ( (MutableMapExt!116 (__x!787 Int)) (HashMap!117 (underlying!438 Cell!475) (hashF!1985 Hashable!117) (_size!375 (_ BitVec 32)) (defaultValue!266 Int)) )
))
(declare-datatypes ((Cache!42 0))(
  ( (Cache!43 (cache!599 MutableMap!117)) )
))
(declare-datatypes ((tuple2!438 0))(
  ( (tuple2!439 (_1!285 Regex!185) (_2!285 Cache!42)) )
))
(declare-fun lt!3243 () tuple2!438)

(declare-fun r!13380 () Regex!185)

(declare-fun cache!443 () Cache!42)

(declare-fun derivativeStepMem!8 (Regex!185 C!1404 Cache!42) tuple2!438)

(declare-fun head!337 (List!427) C!1404)

(assert (=> b!37870 (= lt!3243 (derivativeStepMem!8 r!13380 (head!337 input!6011) cache!443))))

(declare-fun b!37871 () Bool)

(declare-fun e!18723 () Bool)

(declare-fun e!18716 () Bool)

(assert (=> b!37871 (= e!18723 e!18716)))

(declare-fun b!37872 () Bool)

(declare-fun tp_is_empty!395 () Bool)

(assert (=> b!37872 (= e!18725 tp_is_empty!395)))

(declare-fun mapIsEmpty!417 () Bool)

(declare-fun mapRes!417 () Bool)

(assert (=> mapIsEmpty!417 mapRes!417))

(declare-fun e!18724 () Bool)

(assert (=> b!37873 (= e!18716 (and e!18724 tp!26328))))

(declare-fun b!37875 () Bool)

(declare-fun e!18718 () Bool)

(assert (=> b!37875 (= e!18718 e!18722)))

(declare-fun mapNonEmpty!417 () Bool)

(declare-fun tp!26325 () Bool)

(declare-fun tp!26323 () Bool)

(assert (=> mapNonEmpty!417 (= mapRes!417 (and tp!26325 tp!26323))))

(declare-fun mapRest!417 () (Array (_ BitVec 32) List!428))

(declare-fun mapKey!417 () (_ BitVec 32))

(declare-fun mapValue!417 () List!428)

(assert (=> mapNonEmpty!417 (= (arr!220 (_values!399 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) (store mapRest!417 mapKey!417 mapValue!417))))

(declare-fun e!18721 () Bool)

(declare-fun tp!26324 () Bool)

(declare-fun tp!26321 () Bool)

(declare-fun array_inv!136 (array!424) Bool)

(declare-fun array_inv!137 (array!422) Bool)

(assert (=> b!37876 (= e!18720 (and tp!26329 tp!26324 tp!26321 (array_inv!136 (_keys!412 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) (array_inv!137 (_values!399 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) e!18721))))

(declare-fun b!37877 () Bool)

(declare-fun tp!26320 () Bool)

(assert (=> b!37877 (= e!18725 tp!26320)))

(declare-fun b!37878 () Bool)

(declare-fun lt!3242 () MutLongMap!121)

(get-info :version)

(assert (=> b!37878 (= e!18724 (and e!18718 ((_ is LongMap!121) lt!3242)))))

(assert (=> b!37878 (= lt!3242 (v!12214 (underlying!438 (cache!599 cache!443))))))

(declare-fun res!28451 () Bool)

(assert (=> start!2118 (=> (not res!28451) (not e!18717))))

(declare-fun validRegex!21 (Regex!185) Bool)

(assert (=> start!2118 (= res!28451 (validRegex!21 r!13380))))

(assert (=> start!2118 e!18717))

(assert (=> start!2118 e!18725))

(declare-fun inv!735 (Cache!42) Bool)

(assert (=> start!2118 (and (inv!735 cache!443) e!18723)))

(declare-fun e!18719 () Bool)

(assert (=> start!2118 e!18719))

(declare-fun b!37874 () Bool)

(declare-fun tp!26327 () Bool)

(assert (=> b!37874 (= e!18721 (and tp!26327 mapRes!417))))

(declare-fun condMapEmpty!417 () Bool)

(declare-fun mapDefault!417 () List!428)

(assert (=> b!37874 (= condMapEmpty!417 (= (arr!220 (_values!399 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) ((as const (Array (_ BitVec 32) List!428)) mapDefault!417)))))

(declare-fun b!37879 () Bool)

(declare-fun res!28450 () Bool)

(assert (=> b!37879 (=> (not res!28450) (not e!18717))))

(declare-fun valid!130 (Cache!42) Bool)

(assert (=> b!37879 (= res!28450 (valid!130 cache!443))))

(declare-fun b!37880 () Bool)

(declare-fun tp!26326 () Bool)

(declare-fun tp!26318 () Bool)

(assert (=> b!37880 (= e!18725 (and tp!26326 tp!26318))))

(declare-fun b!37881 () Bool)

(declare-fun tp!26322 () Bool)

(assert (=> b!37881 (= e!18719 (and tp_is_empty!395 tp!26322))))

(assert (= (and start!2118 res!28451) b!37879))

(assert (= (and b!37879 res!28450) b!37868))

(assert (= (and b!37868 res!28449) b!37870))

(assert (= (and start!2118 ((_ is ElementMatch!185) r!13380)) b!37872))

(assert (= (and start!2118 ((_ is Concat!304) r!13380)) b!37880))

(assert (= (and start!2118 ((_ is Star!185) r!13380)) b!37877))

(assert (= (and start!2118 ((_ is Union!185) r!13380)) b!37867))

(assert (= (and b!37874 condMapEmpty!417) mapIsEmpty!417))

(assert (= (and b!37874 (not condMapEmpty!417)) mapNonEmpty!417))

(assert (= b!37876 b!37874))

(assert (= b!37869 b!37876))

(assert (= b!37875 b!37869))

(assert (= (and b!37878 ((_ is LongMap!121) (v!12214 (underlying!438 (cache!599 cache!443))))) b!37875))

(assert (= b!37873 b!37878))

(assert (= (and b!37871 ((_ is HashMap!117) (cache!599 cache!443))) b!37873))

(assert (= start!2118 b!37871))

(assert (= (and start!2118 ((_ is Cons!425) input!6011)) b!37881))

(declare-fun m!12318 () Bool)

(assert (=> b!37879 m!12318))

(declare-fun m!12320 () Bool)

(assert (=> b!37876 m!12320))

(declare-fun m!12322 () Bool)

(assert (=> b!37876 m!12322))

(declare-fun m!12324 () Bool)

(assert (=> b!37870 m!12324))

(assert (=> b!37870 m!12324))

(declare-fun m!12326 () Bool)

(assert (=> b!37870 m!12326))

(declare-fun m!12328 () Bool)

(assert (=> b!37870 m!12328))

(declare-fun m!12330 () Bool)

(assert (=> b!37870 m!12330))

(assert (=> b!37870 m!12328))

(declare-fun m!12332 () Bool)

(assert (=> b!37870 m!12332))

(declare-fun m!12334 () Bool)

(assert (=> start!2118 m!12334))

(declare-fun m!12336 () Bool)

(assert (=> start!2118 m!12336))

(declare-fun m!12338 () Bool)

(assert (=> mapNonEmpty!417 m!12338))

(declare-fun m!12340 () Bool)

(assert (=> b!37868 m!12340))

(check-sat (not b!37874) (not mapNonEmpty!417) (not b_next!599) (not b!37868) tp_is_empty!395 (not b_next!597) (not b!37881) (not b!37877) b_and!633 (not start!2118) (not b!37867) (not b!37870) (not b!37879) (not b!37876) (not b!37880) b_and!631)
(check-sat b_and!631 b_and!633 (not b_next!597) (not b_next!599))
(get-model)

(declare-fun d!4019 () Bool)

(assert (=> d!4019 (= (isEmpty!98 input!6011) ((_ is Nil!425) input!6011))))

(assert (=> b!37868 d!4019))

(declare-fun d!4021 () Bool)

(assert (=> d!4021 (= (array_inv!136 (_keys!412 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) (bvsge (size!480 (_keys!412 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!37876 d!4021))

(declare-fun d!4023 () Bool)

(assert (=> d!4023 (= (array_inv!137 (_values!399 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) (bvsge (size!479 (_values!399 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443))))))) #b00000000000000000000000000000000))))

(assert (=> b!37876 d!4023))

(declare-fun d!4025 () Bool)

(declare-fun validCacheMap!7 (MutableMap!117) Bool)

(assert (=> d!4025 (= (valid!130 cache!443) (validCacheMap!7 (cache!599 cache!443)))))

(declare-fun bs!4996 () Bool)

(assert (= bs!4996 d!4025))

(declare-fun m!12342 () Bool)

(assert (=> bs!4996 m!12342))

(assert (=> b!37879 d!4025))

(declare-fun d!4027 () Bool)

(declare-fun lt!3246 () Int)

(assert (=> d!4027 (>= lt!3246 0)))

(declare-fun e!18728 () Int)

(assert (=> d!4027 (= lt!3246 e!18728)))

(declare-fun c!15669 () Bool)

(assert (=> d!4027 (= c!15669 ((_ is Nil!425) (tail!25 input!6011)))))

(assert (=> d!4027 (= (size!478 (tail!25 input!6011)) lt!3246)))

(declare-fun b!37886 () Bool)

(assert (=> b!37886 (= e!18728 0)))

(declare-fun b!37887 () Bool)

(assert (=> b!37887 (= e!18728 (+ 1 (size!478 (t!15263 (tail!25 input!6011)))))))

(assert (= (and d!4027 c!15669) b!37886))

(assert (= (and d!4027 (not c!15669)) b!37887))

(declare-fun m!12344 () Bool)

(assert (=> b!37887 m!12344))

(assert (=> b!37870 d!4027))

(declare-fun b!37912 () Bool)

(declare-fun e!18743 () tuple2!438)

(declare-fun lt!3268 () tuple2!438)

(assert (=> b!37912 (= e!18743 (tuple2!439 (Concat!304 (_1!285 lt!3268) (Star!185 (reg!514 r!13380))) (_2!285 lt!3268)))))

(declare-fun call!2841 () tuple2!438)

(assert (=> b!37912 (= lt!3268 call!2841)))

(declare-fun b!37913 () Bool)

(declare-fun c!15687 () Bool)

(assert (=> b!37913 (= c!15687 ((_ is Star!185) r!13380))))

(declare-fun e!18742 () tuple2!438)

(assert (=> b!37913 (= e!18742 e!18743)))

(declare-fun b!37914 () Bool)

(declare-fun lt!3271 () tuple2!438)

(declare-fun call!2842 () tuple2!438)

(assert (=> b!37914 (= lt!3271 call!2842)))

(declare-fun lt!3272 () tuple2!438)

(declare-fun call!2843 () tuple2!438)

(assert (=> b!37914 (= lt!3272 call!2843)))

(declare-fun e!18745 () tuple2!438)

(assert (=> b!37914 (= e!18745 (tuple2!439 (Union!185 (Concat!304 (_1!285 lt!3272) (regTwo!882 r!13380)) (_1!285 lt!3271)) (_2!285 lt!3271)))))

(declare-fun d!4029 () Bool)

(declare-fun lt!3267 () tuple2!438)

(declare-fun derivativeStep!5 (Regex!185 C!1404) Regex!185)

(assert (=> d!4029 (= (_1!285 lt!3267) (derivativeStep!5 r!13380 (head!337 input!6011)))))

(declare-fun e!18746 () tuple2!438)

(assert (=> d!4029 (= lt!3267 e!18746)))

(declare-fun c!15685 () Bool)

(declare-datatypes ((Option!49 0))(
  ( (None!48) (Some!48 (v!12215 Regex!185)) )
))
(declare-fun lt!3265 () Option!49)

(assert (=> d!4029 (= c!15685 ((_ is Some!48) lt!3265))))

(declare-fun get!197 (Cache!42 Regex!185 C!1404) Option!49)

(assert (=> d!4029 (= lt!3265 (get!197 cache!443 r!13380 (head!337 input!6011)))))

(assert (=> d!4029 (validRegex!21 r!13380)))

(assert (=> d!4029 (= (derivativeStepMem!8 r!13380 (head!337 input!6011) cache!443) lt!3267)))

(declare-fun bm!2836 () Bool)

(declare-fun call!2844 () tuple2!438)

(assert (=> bm!2836 (= call!2841 call!2844)))

(declare-fun c!15682 () Bool)

(declare-fun bm!2837 () Bool)

(assert (=> bm!2837 (= call!2842 (derivativeStepMem!8 (ite c!15682 (regOne!883 r!13380) (regTwo!882 r!13380)) (head!337 input!6011) (ite c!15682 cache!443 (_2!285 lt!3272))))))

(declare-fun b!37915 () Bool)

(assert (=> b!37915 (= e!18746 (tuple2!439 (v!12215 lt!3265) cache!443))))

(declare-fun e!18741 () tuple2!438)

(declare-fun b!37916 () Bool)

(assert (=> b!37916 (= e!18741 (tuple2!439 (ite (= (head!337 input!6011) (c!15666 r!13380)) EmptyExpr!185 EmptyLang!185) cache!443))))

(declare-fun b!37917 () Bool)

(assert (=> b!37917 (= e!18743 e!18745)))

(declare-fun c!15686 () Bool)

(declare-fun nullable!15 (Regex!185) Bool)

(assert (=> b!37917 (= c!15686 (nullable!15 (regOne!882 r!13380)))))

(declare-fun b!37918 () Bool)

(declare-fun e!18744 () tuple2!438)

(assert (=> b!37918 (= e!18744 (tuple2!439 EmptyLang!185 cache!443))))

(declare-fun b!37919 () Bool)

(declare-fun c!15684 () Bool)

(assert (=> b!37919 (= c!15684 ((_ is ElementMatch!185) r!13380))))

(assert (=> b!37919 (= e!18744 e!18741)))

(declare-fun b!37920 () Bool)

(declare-fun lt!3273 () tuple2!438)

(declare-datatypes ((Unit!207 0))(
  ( (Unit!208) )
))
(declare-datatypes ((tuple2!440 0))(
  ( (tuple2!441 (_1!286 Unit!207) (_2!286 Cache!42)) )
))
(declare-fun update!17 (Cache!42 Regex!185 C!1404 Regex!185) tuple2!440)

(assert (=> b!37920 (= e!18746 (tuple2!439 (_1!285 lt!3273) (_2!286 (update!17 (_2!285 lt!3273) r!13380 (head!337 input!6011) (_1!285 lt!3273)))))))

(declare-fun c!15683 () Bool)

(assert (=> b!37920 (= c!15683 (or ((_ is EmptyExpr!185) r!13380) ((_ is EmptyLang!185) r!13380)))))

(assert (=> b!37920 (= lt!3273 e!18744)))

(declare-fun b!37921 () Bool)

(declare-fun lt!3270 () tuple2!438)

(assert (=> b!37921 (= lt!3270 call!2844)))

(declare-fun lt!3266 () tuple2!438)

(assert (=> b!37921 (= lt!3266 call!2842)))

(assert (=> b!37921 (= e!18742 (tuple2!439 (Union!185 (_1!285 lt!3266) (_1!285 lt!3270)) (_2!285 lt!3270)))))

(declare-fun bm!2838 () Bool)

(assert (=> bm!2838 (= call!2844 (derivativeStepMem!8 (ite c!15682 (regTwo!883 r!13380) (ite c!15687 (reg!514 r!13380) (regOne!882 r!13380))) (head!337 input!6011) (ite c!15682 (_2!285 lt!3266) cache!443)))))

(declare-fun b!37922 () Bool)

(assert (=> b!37922 (= e!18741 e!18742)))

(assert (=> b!37922 (= c!15682 ((_ is Union!185) r!13380))))

(declare-fun bm!2839 () Bool)

(assert (=> bm!2839 (= call!2843 call!2841)))

(declare-fun b!37923 () Bool)

(declare-fun lt!3269 () tuple2!438)

(assert (=> b!37923 (= lt!3269 call!2843)))

(assert (=> b!37923 (= e!18745 (tuple2!439 (Union!185 (Concat!304 (_1!285 lt!3269) (regTwo!882 r!13380)) EmptyLang!185) (_2!285 lt!3269)))))

(assert (= (and d!4029 c!15685) b!37915))

(assert (= (and d!4029 (not c!15685)) b!37920))

(assert (= (and b!37920 c!15683) b!37918))

(assert (= (and b!37920 (not c!15683)) b!37919))

(assert (= (and b!37919 c!15684) b!37916))

(assert (= (and b!37919 (not c!15684)) b!37922))

(assert (= (and b!37922 c!15682) b!37921))

(assert (= (and b!37922 (not c!15682)) b!37913))

(assert (= (and b!37913 c!15687) b!37912))

(assert (= (and b!37913 (not c!15687)) b!37917))

(assert (= (and b!37917 c!15686) b!37914))

(assert (= (and b!37917 (not c!15686)) b!37923))

(assert (= (or b!37914 b!37923) bm!2839))

(assert (= (or b!37912 bm!2839) bm!2836))

(assert (= (or b!37921 bm!2836) bm!2838))

(assert (= (or b!37921 b!37914) bm!2837))

(assert (=> bm!2838 m!12324))

(declare-fun m!12346 () Bool)

(assert (=> bm!2838 m!12346))

(assert (=> bm!2837 m!12324))

(declare-fun m!12348 () Bool)

(assert (=> bm!2837 m!12348))

(assert (=> b!37920 m!12324))

(declare-fun m!12350 () Bool)

(assert (=> b!37920 m!12350))

(assert (=> d!4029 m!12324))

(declare-fun m!12352 () Bool)

(assert (=> d!4029 m!12352))

(assert (=> d!4029 m!12324))

(declare-fun m!12354 () Bool)

(assert (=> d!4029 m!12354))

(assert (=> d!4029 m!12334))

(declare-fun m!12356 () Bool)

(assert (=> b!37917 m!12356))

(assert (=> b!37870 d!4029))

(declare-fun d!4031 () Bool)

(assert (=> d!4031 (= (tail!25 input!6011) (t!15263 input!6011))))

(assert (=> b!37870 d!4031))

(declare-fun d!4033 () Bool)

(assert (=> d!4033 (= (head!337 input!6011) (h!5821 input!6011))))

(assert (=> b!37870 d!4033))

(declare-fun d!4035 () Bool)

(declare-fun lt!3274 () Int)

(assert (=> d!4035 (>= lt!3274 0)))

(declare-fun e!18747 () Int)

(assert (=> d!4035 (= lt!3274 e!18747)))

(declare-fun c!15688 () Bool)

(assert (=> d!4035 (= c!15688 ((_ is Nil!425) input!6011))))

(assert (=> d!4035 (= (size!478 input!6011) lt!3274)))

(declare-fun b!37924 () Bool)

(assert (=> b!37924 (= e!18747 0)))

(declare-fun b!37925 () Bool)

(assert (=> b!37925 (= e!18747 (+ 1 (size!478 (t!15263 input!6011))))))

(assert (= (and d!4035 c!15688) b!37924))

(assert (= (and d!4035 (not c!15688)) b!37925))

(declare-fun m!12358 () Bool)

(assert (=> b!37925 m!12358))

(assert (=> b!37870 d!4035))

(declare-fun b!37944 () Bool)

(declare-fun e!18766 () Bool)

(declare-fun call!2852 () Bool)

(assert (=> b!37944 (= e!18766 call!2852)))

(declare-fun d!4037 () Bool)

(declare-fun res!28462 () Bool)

(declare-fun e!18767 () Bool)

(assert (=> d!4037 (=> res!28462 e!18767)))

(assert (=> d!4037 (= res!28462 ((_ is ElementMatch!185) r!13380))))

(assert (=> d!4037 (= (validRegex!21 r!13380) e!18767)))

(declare-fun b!37945 () Bool)

(declare-fun res!28466 () Bool)

(declare-fun e!18768 () Bool)

(assert (=> b!37945 (=> res!28466 e!18768)))

(assert (=> b!37945 (= res!28466 (not ((_ is Concat!304) r!13380)))))

(declare-fun e!18764 () Bool)

(assert (=> b!37945 (= e!18764 e!18768)))

(declare-fun b!37946 () Bool)

(declare-fun e!18765 () Bool)

(assert (=> b!37946 (= e!18768 e!18765)))

(declare-fun res!28464 () Bool)

(assert (=> b!37946 (=> (not res!28464) (not e!18765))))

(declare-fun call!2851 () Bool)

(assert (=> b!37946 (= res!28464 call!2851)))

(declare-fun b!37947 () Bool)

(declare-fun res!28465 () Bool)

(assert (=> b!37947 (=> (not res!28465) (not e!18766))))

(assert (=> b!37947 (= res!28465 call!2851)))

(assert (=> b!37947 (= e!18764 e!18766)))

(declare-fun bm!2846 () Bool)

(declare-fun c!15693 () Bool)

(declare-fun c!15694 () Bool)

(declare-fun call!2853 () Bool)

(assert (=> bm!2846 (= call!2853 (validRegex!21 (ite c!15694 (reg!514 r!13380) (ite c!15693 (regOne!883 r!13380) (regOne!882 r!13380)))))))

(declare-fun b!37948 () Bool)

(declare-fun e!18762 () Bool)

(assert (=> b!37948 (= e!18767 e!18762)))

(assert (=> b!37948 (= c!15694 ((_ is Star!185) r!13380))))

(declare-fun b!37949 () Bool)

(assert (=> b!37949 (= e!18765 call!2852)))

(declare-fun bm!2847 () Bool)

(assert (=> bm!2847 (= call!2851 call!2853)))

(declare-fun b!37950 () Bool)

(assert (=> b!37950 (= e!18762 e!18764)))

(assert (=> b!37950 (= c!15693 ((_ is Union!185) r!13380))))

(declare-fun b!37951 () Bool)

(declare-fun e!18763 () Bool)

(assert (=> b!37951 (= e!18763 call!2853)))

(declare-fun bm!2848 () Bool)

(assert (=> bm!2848 (= call!2852 (validRegex!21 (ite c!15693 (regTwo!883 r!13380) (regTwo!882 r!13380))))))

(declare-fun b!37952 () Bool)

(assert (=> b!37952 (= e!18762 e!18763)))

(declare-fun res!28463 () Bool)

(assert (=> b!37952 (= res!28463 (not (nullable!15 (reg!514 r!13380))))))

(assert (=> b!37952 (=> (not res!28463) (not e!18763))))

(assert (= (and d!4037 (not res!28462)) b!37948))

(assert (= (and b!37948 c!15694) b!37952))

(assert (= (and b!37948 (not c!15694)) b!37950))

(assert (= (and b!37952 res!28463) b!37951))

(assert (= (and b!37950 c!15693) b!37947))

(assert (= (and b!37950 (not c!15693)) b!37945))

(assert (= (and b!37947 res!28465) b!37944))

(assert (= (and b!37945 (not res!28466)) b!37946))

(assert (= (and b!37946 res!28464) b!37949))

(assert (= (or b!37947 b!37946) bm!2847))

(assert (= (or b!37944 b!37949) bm!2848))

(assert (= (or b!37951 bm!2847) bm!2846))

(declare-fun m!12360 () Bool)

(assert (=> bm!2846 m!12360))

(declare-fun m!12362 () Bool)

(assert (=> bm!2848 m!12362))

(declare-fun m!12364 () Bool)

(assert (=> b!37952 m!12364))

(assert (=> start!2118 d!4037))

(declare-fun d!4039 () Bool)

(declare-fun res!28469 () Bool)

(declare-fun e!18771 () Bool)

(assert (=> d!4039 (=> (not res!28469) (not e!18771))))

(assert (=> d!4039 (= res!28469 ((_ is HashMap!117) (cache!599 cache!443)))))

(assert (=> d!4039 (= (inv!735 cache!443) e!18771)))

(declare-fun b!37955 () Bool)

(assert (=> b!37955 (= e!18771 (validCacheMap!7 (cache!599 cache!443)))))

(assert (= (and d!4039 res!28469) b!37955))

(assert (=> b!37955 m!12342))

(assert (=> start!2118 d!4039))

(declare-fun b!37968 () Bool)

(declare-fun e!18774 () Bool)

(declare-fun tp!26342 () Bool)

(assert (=> b!37968 (= e!18774 tp!26342)))

(declare-fun b!37969 () Bool)

(declare-fun tp!26344 () Bool)

(declare-fun tp!26343 () Bool)

(assert (=> b!37969 (= e!18774 (and tp!26344 tp!26343))))

(declare-fun b!37967 () Bool)

(declare-fun tp!26340 () Bool)

(declare-fun tp!26341 () Bool)

(assert (=> b!37967 (= e!18774 (and tp!26340 tp!26341))))

(assert (=> b!37877 (= tp!26320 e!18774)))

(declare-fun b!37966 () Bool)

(assert (=> b!37966 (= e!18774 tp_is_empty!395)))

(assert (= (and b!37877 ((_ is ElementMatch!185) (reg!514 r!13380))) b!37966))

(assert (= (and b!37877 ((_ is Concat!304) (reg!514 r!13380))) b!37967))

(assert (= (and b!37877 ((_ is Star!185) (reg!514 r!13380))) b!37968))

(assert (= (and b!37877 ((_ is Union!185) (reg!514 r!13380))) b!37969))

(declare-fun b!37974 () Bool)

(declare-fun e!18777 () Bool)

(declare-fun tp!26347 () Bool)

(assert (=> b!37974 (= e!18777 (and tp_is_empty!395 tp!26347))))

(assert (=> b!37881 (= tp!26322 e!18777)))

(assert (= (and b!37881 ((_ is Cons!425) (t!15263 input!6011))) b!37974))

(declare-fun b!37977 () Bool)

(declare-fun e!18778 () Bool)

(declare-fun tp!26350 () Bool)

(assert (=> b!37977 (= e!18778 tp!26350)))

(declare-fun b!37978 () Bool)

(declare-fun tp!26352 () Bool)

(declare-fun tp!26351 () Bool)

(assert (=> b!37978 (= e!18778 (and tp!26352 tp!26351))))

(declare-fun b!37976 () Bool)

(declare-fun tp!26348 () Bool)

(declare-fun tp!26349 () Bool)

(assert (=> b!37976 (= e!18778 (and tp!26348 tp!26349))))

(assert (=> b!37867 (= tp!26319 e!18778)))

(declare-fun b!37975 () Bool)

(assert (=> b!37975 (= e!18778 tp_is_empty!395)))

(assert (= (and b!37867 ((_ is ElementMatch!185) (regOne!883 r!13380))) b!37975))

(assert (= (and b!37867 ((_ is Concat!304) (regOne!883 r!13380))) b!37976))

(assert (= (and b!37867 ((_ is Star!185) (regOne!883 r!13380))) b!37977))

(assert (= (and b!37867 ((_ is Union!185) (regOne!883 r!13380))) b!37978))

(declare-fun b!37981 () Bool)

(declare-fun e!18779 () Bool)

(declare-fun tp!26355 () Bool)

(assert (=> b!37981 (= e!18779 tp!26355)))

(declare-fun b!37982 () Bool)

(declare-fun tp!26357 () Bool)

(declare-fun tp!26356 () Bool)

(assert (=> b!37982 (= e!18779 (and tp!26357 tp!26356))))

(declare-fun b!37980 () Bool)

(declare-fun tp!26353 () Bool)

(declare-fun tp!26354 () Bool)

(assert (=> b!37980 (= e!18779 (and tp!26353 tp!26354))))

(assert (=> b!37867 (= tp!26317 e!18779)))

(declare-fun b!37979 () Bool)

(assert (=> b!37979 (= e!18779 tp_is_empty!395)))

(assert (= (and b!37867 ((_ is ElementMatch!185) (regTwo!883 r!13380))) b!37979))

(assert (= (and b!37867 ((_ is Concat!304) (regTwo!883 r!13380))) b!37980))

(assert (= (and b!37867 ((_ is Star!185) (regTwo!883 r!13380))) b!37981))

(assert (= (and b!37867 ((_ is Union!185) (regTwo!883 r!13380))) b!37982))

(declare-fun b!37987 () Bool)

(declare-fun tp!26365 () Bool)

(declare-fun e!18782 () Bool)

(declare-fun tp!26364 () Bool)

(declare-fun tp!26366 () Bool)

(assert (=> b!37987 (= e!18782 (and tp!26364 tp_is_empty!395 tp!26365 tp!26366))))

(assert (=> b!37876 (= tp!26324 e!18782)))

(assert (= (and b!37876 ((_ is Cons!426) (zeroValue!377 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443)))))))) b!37987))

(declare-fun tp!26368 () Bool)

(declare-fun e!18783 () Bool)

(declare-fun tp!26367 () Bool)

(declare-fun tp!26369 () Bool)

(declare-fun b!37988 () Bool)

(assert (=> b!37988 (= e!18783 (and tp!26367 tp_is_empty!395 tp!26368 tp!26369))))

(assert (=> b!37876 (= tp!26321 e!18783)))

(assert (= (and b!37876 ((_ is Cons!426) (minValue!377 (v!12213 (underlying!437 (v!12214 (underlying!438 (cache!599 cache!443)))))))) b!37988))

(declare-fun condMapEmpty!420 () Bool)

(declare-fun mapDefault!420 () List!428)

(assert (=> mapNonEmpty!417 (= condMapEmpty!420 (= mapRest!417 ((as const (Array (_ BitVec 32) List!428)) mapDefault!420)))))

(declare-fun e!18789 () Bool)

(declare-fun mapRes!420 () Bool)

(assert (=> mapNonEmpty!417 (= tp!26325 (and e!18789 mapRes!420))))

(declare-fun tp!26385 () Bool)

(declare-fun b!37996 () Bool)

(declare-fun tp!26388 () Bool)

(declare-fun tp!26390 () Bool)

(assert (=> b!37996 (= e!18789 (and tp!26388 tp_is_empty!395 tp!26390 tp!26385))))

(declare-fun mapNonEmpty!420 () Bool)

(declare-fun tp!26386 () Bool)

(declare-fun e!18788 () Bool)

(assert (=> mapNonEmpty!420 (= mapRes!420 (and tp!26386 e!18788))))

(declare-fun mapRest!420 () (Array (_ BitVec 32) List!428))

(declare-fun mapKey!420 () (_ BitVec 32))

(declare-fun mapValue!420 () List!428)

(assert (=> mapNonEmpty!420 (= mapRest!417 (store mapRest!420 mapKey!420 mapValue!420))))

(declare-fun mapIsEmpty!420 () Bool)

(assert (=> mapIsEmpty!420 mapRes!420))

(declare-fun tp!26387 () Bool)

(declare-fun b!37995 () Bool)

(declare-fun tp!26384 () Bool)

(declare-fun tp!26389 () Bool)

(assert (=> b!37995 (= e!18788 (and tp!26389 tp_is_empty!395 tp!26384 tp!26387))))

(assert (= (and mapNonEmpty!417 condMapEmpty!420) mapIsEmpty!420))

(assert (= (and mapNonEmpty!417 (not condMapEmpty!420)) mapNonEmpty!420))

(assert (= (and mapNonEmpty!420 ((_ is Cons!426) mapValue!420)) b!37995))

(assert (= (and mapNonEmpty!417 ((_ is Cons!426) mapDefault!420)) b!37996))

(declare-fun m!12366 () Bool)

(assert (=> mapNonEmpty!420 m!12366))

(declare-fun e!18790 () Bool)

(declare-fun b!37997 () Bool)

(declare-fun tp!26392 () Bool)

(declare-fun tp!26391 () Bool)

(declare-fun tp!26393 () Bool)

(assert (=> b!37997 (= e!18790 (and tp!26391 tp_is_empty!395 tp!26392 tp!26393))))

(assert (=> mapNonEmpty!417 (= tp!26323 e!18790)))

(assert (= (and mapNonEmpty!417 ((_ is Cons!426) mapValue!417)) b!37997))

(declare-fun b!38000 () Bool)

(declare-fun e!18791 () Bool)

(declare-fun tp!26396 () Bool)

(assert (=> b!38000 (= e!18791 tp!26396)))

(declare-fun b!38001 () Bool)

(declare-fun tp!26398 () Bool)

(declare-fun tp!26397 () Bool)

(assert (=> b!38001 (= e!18791 (and tp!26398 tp!26397))))

(declare-fun b!37999 () Bool)

(declare-fun tp!26394 () Bool)

(declare-fun tp!26395 () Bool)

(assert (=> b!37999 (= e!18791 (and tp!26394 tp!26395))))

(assert (=> b!37880 (= tp!26326 e!18791)))

(declare-fun b!37998 () Bool)

(assert (=> b!37998 (= e!18791 tp_is_empty!395)))

(assert (= (and b!37880 ((_ is ElementMatch!185) (regOne!882 r!13380))) b!37998))

(assert (= (and b!37880 ((_ is Concat!304) (regOne!882 r!13380))) b!37999))

(assert (= (and b!37880 ((_ is Star!185) (regOne!882 r!13380))) b!38000))

(assert (= (and b!37880 ((_ is Union!185) (regOne!882 r!13380))) b!38001))

(declare-fun b!38004 () Bool)

(declare-fun e!18792 () Bool)

(declare-fun tp!26401 () Bool)

(assert (=> b!38004 (= e!18792 tp!26401)))

(declare-fun b!38005 () Bool)

(declare-fun tp!26403 () Bool)

(declare-fun tp!26402 () Bool)

(assert (=> b!38005 (= e!18792 (and tp!26403 tp!26402))))

(declare-fun b!38003 () Bool)

(declare-fun tp!26399 () Bool)

(declare-fun tp!26400 () Bool)

(assert (=> b!38003 (= e!18792 (and tp!26399 tp!26400))))

(assert (=> b!37880 (= tp!26318 e!18792)))

(declare-fun b!38002 () Bool)

(assert (=> b!38002 (= e!18792 tp_is_empty!395)))

(assert (= (and b!37880 ((_ is ElementMatch!185) (regTwo!882 r!13380))) b!38002))

(assert (= (and b!37880 ((_ is Concat!304) (regTwo!882 r!13380))) b!38003))

(assert (= (and b!37880 ((_ is Star!185) (regTwo!882 r!13380))) b!38004))

(assert (= (and b!37880 ((_ is Union!185) (regTwo!882 r!13380))) b!38005))

(declare-fun tp!26406 () Bool)

(declare-fun e!18793 () Bool)

(declare-fun tp!26405 () Bool)

(declare-fun tp!26404 () Bool)

(declare-fun b!38006 () Bool)

(assert (=> b!38006 (= e!18793 (and tp!26404 tp_is_empty!395 tp!26405 tp!26406))))

(assert (=> b!37874 (= tp!26327 e!18793)))

(assert (= (and b!37874 ((_ is Cons!426) mapDefault!417)) b!38006))

(check-sat (not b!37976) (not d!4025) (not b!38006) b_and!631 b_and!633 (not b!37978) (not d!4029) (not b!37977) (not bm!2837) (not b!37996) (not b!37982) (not b!37997) (not b!38005) (not b!38001) (not bm!2838) (not b!37917) (not b!38004) (not b!37988) (not b!37980) (not b!38003) (not b!37952) (not mapNonEmpty!420) (not b_next!599) (not bm!2846) (not b!38000) (not b!37955) tp_is_empty!395 (not b!37974) (not b!37968) (not b!37999) (not b_next!597) (not b!37995) (not b!37967) (not b!37981) (not bm!2848) (not b!37969) (not b!37987) (not b!37925) (not b!37887) (not b!37920))
(check-sat b_and!631 b_and!633 (not b_next!597) (not b_next!599))
