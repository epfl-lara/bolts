; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!690336 () Bool)

(assert start!690336)

(declare-fun b!7092134 () Bool)

(assert (=> b!7092134 true))

(declare-fun b!7092125 () Bool)

(declare-fun e!4263372 () Bool)

(declare-fun tp!1948426 () Bool)

(declare-fun tp!1948431 () Bool)

(assert (=> b!7092125 (= e!4263372 (and tp!1948426 tp!1948431))))

(declare-fun b!7092126 () Bool)

(declare-fun e!4263374 () Bool)

(declare-datatypes ((C!35876 0))(
  ( (C!35877 (val!27644 Int)) )
))
(declare-datatypes ((Regex!17803 0))(
  ( (ElementMatch!17803 (c!1323520 C!35876)) (Concat!26648 (regOne!36118 Regex!17803) (regTwo!36118 Regex!17803)) (EmptyExpr!17803) (Star!17803 (reg!18132 Regex!17803)) (EmptyLang!17803) (Union!17803 (regOne!36119 Regex!17803) (regTwo!36119 Regex!17803)) )
))
(declare-datatypes ((List!68766 0))(
  ( (Nil!68642) (Cons!68642 (h!75090 Regex!17803) (t!382555 List!68766)) )
))
(declare-datatypes ((Context!13598 0))(
  ( (Context!13599 (exprs!7299 List!68766)) )
))
(declare-fun auxCtx!45 () Context!13598)

(declare-fun lambda!429981 () Int)

(declare-fun forall!16735 (List!68766 Int) Bool)

(assert (=> b!7092126 (= e!4263374 (forall!16735 (exprs!7299 auxCtx!45) lambda!429981))))

(declare-fun b!7092127 () Bool)

(declare-fun e!4263371 () Bool)

(declare-fun tp!1948432 () Bool)

(assert (=> b!7092127 (= e!4263371 tp!1948432)))

(declare-fun b!7092128 () Bool)

(declare-fun e!4263373 () Bool)

(declare-fun e!4263368 () Bool)

(assert (=> b!7092128 (= e!4263373 e!4263368)))

(declare-fun res!2896417 () Bool)

(assert (=> b!7092128 (=> (not res!2896417) (not e!4263368))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2556320 () (InoxSet Context!13598))

(declare-fun a!1901 () C!35876)

(declare-fun r!11554 () Regex!17803)

(declare-fun lt!2556310 () (InoxSet Context!13598))

(declare-fun lt!2556324 () Context!13598)

(declare-fun derivationStepZipperDown!2366 (Regex!17803 Context!13598 C!35876) (InoxSet Context!13598))

(assert (=> b!7092128 (= res!2896417 (= (derivationStepZipperDown!2366 r!11554 lt!2556324 a!1901) ((_ map or) lt!2556310 lt!2556320)))))

(assert (=> b!7092128 (= lt!2556320 (derivationStepZipperDown!2366 (regTwo!36118 r!11554) lt!2556324 a!1901))))

(declare-fun lt!2556317 () List!68766)

(declare-fun $colon$colon!2710 (List!68766 Regex!17803) List!68766)

(assert (=> b!7092128 (= lt!2556310 (derivationStepZipperDown!2366 (regOne!36118 r!11554) (Context!13599 ($colon$colon!2710 lt!2556317 (regTwo!36118 r!11554))) a!1901))))

(declare-fun b!7092129 () Bool)

(declare-fun tp_is_empty!44839 () Bool)

(assert (=> b!7092129 (= e!4263372 tp_is_empty!44839)))

(declare-fun b!7092130 () Bool)

(declare-fun e!4263370 () Bool)

(declare-fun tp!1948430 () Bool)

(assert (=> b!7092130 (= e!4263370 tp!1948430)))

(declare-fun res!2896415 () Bool)

(declare-fun e!4263369 () Bool)

(assert (=> start!690336 (=> (not res!2896415) (not e!4263369))))

(declare-fun validRegex!9078 (Regex!17803) Bool)

(assert (=> start!690336 (= res!2896415 (validRegex!9078 r!11554))))

(assert (=> start!690336 e!4263369))

(assert (=> start!690336 e!4263372))

(declare-fun c!9994 () Context!13598)

(declare-fun inv!87372 (Context!13598) Bool)

(assert (=> start!690336 (and (inv!87372 c!9994) e!4263370)))

(assert (=> start!690336 tp_is_empty!44839))

(assert (=> start!690336 (and (inv!87372 auxCtx!45) e!4263371)))

(declare-fun b!7092131 () Bool)

(declare-fun res!2896416 () Bool)

(declare-fun e!4263367 () Bool)

(assert (=> b!7092131 (=> (not res!2896416) (not e!4263367))))

(declare-fun nullable!7443 (Regex!17803) Bool)

(assert (=> b!7092131 (= res!2896416 (nullable!7443 (regOne!36118 r!11554)))))

(declare-fun b!7092132 () Bool)

(assert (=> b!7092132 (= e!4263367 e!4263373)))

(declare-fun res!2896413 () Bool)

(assert (=> b!7092132 (=> (not res!2896413) (not e!4263373))))

(assert (=> b!7092132 (= res!2896413 (validRegex!9078 (regTwo!36118 r!11554)))))

(declare-datatypes ((Unit!162297 0))(
  ( (Unit!162298) )
))
(declare-fun lt!2556323 () Unit!162297)

(declare-fun lemmaConcatPreservesForall!1102 (List!68766 List!68766 Int) Unit!162297)

(assert (=> b!7092132 (= lt!2556323 (lemmaConcatPreservesForall!1102 (exprs!7299 c!9994) (exprs!7299 auxCtx!45) lambda!429981))))

(assert (=> b!7092132 (= lt!2556324 (Context!13599 lt!2556317))))

(declare-fun ++!15972 (List!68766 List!68766) List!68766)

(assert (=> b!7092132 (= lt!2556317 (++!15972 (exprs!7299 c!9994) (exprs!7299 auxCtx!45)))))

(declare-fun lt!2556311 () Unit!162297)

(assert (=> b!7092132 (= lt!2556311 (lemmaConcatPreservesForall!1102 (exprs!7299 c!9994) (exprs!7299 auxCtx!45) lambda!429981))))

(declare-fun lt!2556316 () Unit!162297)

(assert (=> b!7092132 (= lt!2556316 (lemmaConcatPreservesForall!1102 (exprs!7299 c!9994) (exprs!7299 auxCtx!45) lambda!429981))))

(declare-fun b!7092133 () Bool)

(declare-fun tp!1948427 () Bool)

(assert (=> b!7092133 (= e!4263372 tp!1948427)))

(assert (=> b!7092134 (= e!4263369 e!4263367)))

(declare-fun res!2896414 () Bool)

(assert (=> b!7092134 (=> (not res!2896414) (not e!4263367))))

(get-info :version)

(assert (=> b!7092134 (= res!2896414 (and (or (not ((_ is ElementMatch!17803) r!11554)) (not (= (c!1323520 r!11554) a!1901))) (not ((_ is Union!17803) r!11554)) ((_ is Concat!26648) r!11554)))))

(declare-fun b!7092135 () Bool)

(assert (=> b!7092135 (= e!4263368 (not e!4263374))))

(declare-fun res!2896418 () Bool)

(assert (=> b!7092135 (=> res!2896418 e!4263374)))

(assert (=> b!7092135 (= res!2896418 (not (forall!16735 (exprs!7299 c!9994) lambda!429981)))))

(declare-fun lt!2556308 () (InoxSet Context!13598))

(declare-fun lambda!429980 () Int)

(declare-fun lt!2556314 () (InoxSet Context!13598))

(declare-fun map!16151 ((InoxSet Context!13598) Int) (InoxSet Context!13598))

(assert (=> b!7092135 (= ((_ map or) (map!16151 lt!2556308 lambda!429980) (map!16151 lt!2556314 lambda!429980)) (map!16151 ((_ map or) lt!2556308 lt!2556314) lambda!429980))))

(declare-fun lt!2556312 () Unit!162297)

(declare-fun lemmaMapAssociative!16 ((InoxSet Context!13598) (InoxSet Context!13598) Int) Unit!162297)

(assert (=> b!7092135 (= lt!2556312 (lemmaMapAssociative!16 lt!2556308 lt!2556314 lambda!429980))))

(declare-fun appendTo!874 ((InoxSet Context!13598) Context!13598) (InoxSet Context!13598))

(assert (=> b!7092135 (= lt!2556320 (appendTo!874 lt!2556314 auxCtx!45))))

(assert (=> b!7092135 (= lt!2556314 (derivationStepZipperDown!2366 (regTwo!36118 r!11554) c!9994 a!1901))))

(declare-fun lt!2556318 () Unit!162297)

(assert (=> b!7092135 (= lt!2556318 (lemmaConcatPreservesForall!1102 (exprs!7299 c!9994) (exprs!7299 auxCtx!45) lambda!429981))))

(declare-fun lt!2556322 () Unit!162297)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!182 (Context!13598 Regex!17803 C!35876 Context!13598) Unit!162297)

(assert (=> b!7092135 (= lt!2556322 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!182 c!9994 (regTwo!36118 r!11554) a!1901 auxCtx!45))))

(declare-fun lt!2556319 () List!68766)

(assert (=> b!7092135 (= (derivationStepZipperDown!2366 (regOne!36118 r!11554) (Context!13599 lt!2556319) a!1901) (appendTo!874 lt!2556308 auxCtx!45))))

(declare-fun lt!2556309 () Context!13598)

(assert (=> b!7092135 (= lt!2556308 (derivationStepZipperDown!2366 (regOne!36118 r!11554) lt!2556309 a!1901))))

(declare-fun lt!2556313 () List!68766)

(assert (=> b!7092135 (= lt!2556319 (++!15972 lt!2556313 (exprs!7299 auxCtx!45)))))

(declare-fun lt!2556315 () Unit!162297)

(assert (=> b!7092135 (= lt!2556315 (lemmaConcatPreservesForall!1102 lt!2556313 (exprs!7299 auxCtx!45) lambda!429981))))

(declare-fun lt!2556321 () Unit!162297)

(assert (=> b!7092135 (= lt!2556321 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!182 lt!2556309 (regOne!36118 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7092135 (= lt!2556309 (Context!13599 lt!2556313))))

(assert (=> b!7092135 (= lt!2556313 ($colon$colon!2710 (exprs!7299 c!9994) (regTwo!36118 r!11554)))))

(declare-fun b!7092136 () Bool)

(declare-fun tp!1948429 () Bool)

(declare-fun tp!1948428 () Bool)

(assert (=> b!7092136 (= e!4263372 (and tp!1948429 tp!1948428))))

(assert (= (and start!690336 res!2896415) b!7092134))

(assert (= (and b!7092134 res!2896414) b!7092131))

(assert (= (and b!7092131 res!2896416) b!7092132))

(assert (= (and b!7092132 res!2896413) b!7092128))

(assert (= (and b!7092128 res!2896417) b!7092135))

(assert (= (and b!7092135 (not res!2896418)) b!7092126))

(assert (= (and start!690336 ((_ is ElementMatch!17803) r!11554)) b!7092129))

(assert (= (and start!690336 ((_ is Concat!26648) r!11554)) b!7092125))

(assert (= (and start!690336 ((_ is Star!17803) r!11554)) b!7092133))

(assert (= (and start!690336 ((_ is Union!17803) r!11554)) b!7092136))

(assert (= start!690336 b!7092130))

(assert (= start!690336 b!7092127))

(declare-fun m!7820894 () Bool)

(assert (=> b!7092126 m!7820894))

(declare-fun m!7820896 () Bool)

(assert (=> b!7092128 m!7820896))

(declare-fun m!7820898 () Bool)

(assert (=> b!7092128 m!7820898))

(declare-fun m!7820900 () Bool)

(assert (=> b!7092128 m!7820900))

(declare-fun m!7820902 () Bool)

(assert (=> b!7092128 m!7820902))

(declare-fun m!7820904 () Bool)

(assert (=> b!7092131 m!7820904))

(declare-fun m!7820906 () Bool)

(assert (=> b!7092135 m!7820906))

(declare-fun m!7820908 () Bool)

(assert (=> b!7092135 m!7820908))

(declare-fun m!7820910 () Bool)

(assert (=> b!7092135 m!7820910))

(declare-fun m!7820912 () Bool)

(assert (=> b!7092135 m!7820912))

(declare-fun m!7820914 () Bool)

(assert (=> b!7092135 m!7820914))

(declare-fun m!7820916 () Bool)

(assert (=> b!7092135 m!7820916))

(declare-fun m!7820918 () Bool)

(assert (=> b!7092135 m!7820918))

(declare-fun m!7820920 () Bool)

(assert (=> b!7092135 m!7820920))

(declare-fun m!7820922 () Bool)

(assert (=> b!7092135 m!7820922))

(declare-fun m!7820924 () Bool)

(assert (=> b!7092135 m!7820924))

(declare-fun m!7820926 () Bool)

(assert (=> b!7092135 m!7820926))

(declare-fun m!7820928 () Bool)

(assert (=> b!7092135 m!7820928))

(declare-fun m!7820930 () Bool)

(assert (=> b!7092135 m!7820930))

(declare-fun m!7820932 () Bool)

(assert (=> b!7092135 m!7820932))

(declare-fun m!7820934 () Bool)

(assert (=> b!7092135 m!7820934))

(declare-fun m!7820936 () Bool)

(assert (=> b!7092135 m!7820936))

(assert (=> b!7092132 m!7820918))

(declare-fun m!7820938 () Bool)

(assert (=> b!7092132 m!7820938))

(declare-fun m!7820940 () Bool)

(assert (=> b!7092132 m!7820940))

(assert (=> b!7092132 m!7820918))

(assert (=> b!7092132 m!7820918))

(declare-fun m!7820942 () Bool)

(assert (=> start!690336 m!7820942))

(declare-fun m!7820944 () Bool)

(assert (=> start!690336 m!7820944))

(declare-fun m!7820946 () Bool)

(assert (=> start!690336 m!7820946))

(check-sat (not b!7092132) tp_is_empty!44839 (not b!7092126) (not b!7092128) (not b!7092125) (not b!7092135) (not b!7092131) (not b!7092127) (not b!7092130) (not b!7092136) (not start!690336) (not b!7092133))
(check-sat)
(get-model)

(declare-fun b!7092157 () Bool)

(declare-fun e!4263394 () Bool)

(declare-fun e!4263390 () Bool)

(assert (=> b!7092157 (= e!4263394 e!4263390)))

(declare-fun c!1323526 () Bool)

(assert (=> b!7092157 (= c!1323526 ((_ is Star!17803) (regTwo!36118 r!11554)))))

(declare-fun b!7092158 () Bool)

(declare-fun e!4263389 () Bool)

(assert (=> b!7092158 (= e!4263390 e!4263389)))

(declare-fun c!1323527 () Bool)

(assert (=> b!7092158 (= c!1323527 ((_ is Union!17803) (regTwo!36118 r!11554)))))

(declare-fun call!645020 () Bool)

(declare-fun bm!645013 () Bool)

(assert (=> bm!645013 (= call!645020 (validRegex!9078 (ite c!1323526 (reg!18132 (regTwo!36118 r!11554)) (ite c!1323527 (regOne!36119 (regTwo!36118 r!11554)) (regTwo!36118 (regTwo!36118 r!11554))))))))

(declare-fun d!2217077 () Bool)

(declare-fun res!2896432 () Bool)

(assert (=> d!2217077 (=> res!2896432 e!4263394)))

(assert (=> d!2217077 (= res!2896432 ((_ is ElementMatch!17803) (regTwo!36118 r!11554)))))

(assert (=> d!2217077 (= (validRegex!9078 (regTwo!36118 r!11554)) e!4263394)))

(declare-fun b!7092159 () Bool)

(declare-fun e!4263391 () Bool)

(declare-fun call!645018 () Bool)

(assert (=> b!7092159 (= e!4263391 call!645018)))

(declare-fun b!7092160 () Bool)

(declare-fun res!2896434 () Bool)

(declare-fun e!4263395 () Bool)

(assert (=> b!7092160 (=> res!2896434 e!4263395)))

(assert (=> b!7092160 (= res!2896434 (not ((_ is Concat!26648) (regTwo!36118 r!11554))))))

(assert (=> b!7092160 (= e!4263389 e!4263395)))

(declare-fun b!7092161 () Bool)

(declare-fun e!4263392 () Bool)

(declare-fun call!645019 () Bool)

(assert (=> b!7092161 (= e!4263392 call!645019)))

(declare-fun b!7092162 () Bool)

(declare-fun e!4263393 () Bool)

(assert (=> b!7092162 (= e!4263393 call!645020)))

(declare-fun b!7092163 () Bool)

(declare-fun res!2896435 () Bool)

(assert (=> b!7092163 (=> (not res!2896435) (not e!4263392))))

(assert (=> b!7092163 (= res!2896435 call!645018)))

(assert (=> b!7092163 (= e!4263389 e!4263392)))

(declare-fun bm!645014 () Bool)

(assert (=> bm!645014 (= call!645019 (validRegex!9078 (ite c!1323527 (regTwo!36119 (regTwo!36118 r!11554)) (regOne!36118 (regTwo!36118 r!11554)))))))

(declare-fun bm!645015 () Bool)

(assert (=> bm!645015 (= call!645018 call!645020)))

(declare-fun b!7092164 () Bool)

(assert (=> b!7092164 (= e!4263395 e!4263391)))

(declare-fun res!2896433 () Bool)

(assert (=> b!7092164 (=> (not res!2896433) (not e!4263391))))

(assert (=> b!7092164 (= res!2896433 call!645019)))

(declare-fun b!7092165 () Bool)

(assert (=> b!7092165 (= e!4263390 e!4263393)))

(declare-fun res!2896431 () Bool)

(assert (=> b!7092165 (= res!2896431 (not (nullable!7443 (reg!18132 (regTwo!36118 r!11554)))))))

(assert (=> b!7092165 (=> (not res!2896431) (not e!4263393))))

(assert (= (and d!2217077 (not res!2896432)) b!7092157))

(assert (= (and b!7092157 c!1323526) b!7092165))

(assert (= (and b!7092157 (not c!1323526)) b!7092158))

(assert (= (and b!7092165 res!2896431) b!7092162))

(assert (= (and b!7092158 c!1323527) b!7092163))

(assert (= (and b!7092158 (not c!1323527)) b!7092160))

(assert (= (and b!7092163 res!2896435) b!7092161))

(assert (= (and b!7092160 (not res!2896434)) b!7092164))

(assert (= (and b!7092164 res!2896433) b!7092159))

(assert (= (or b!7092163 b!7092159) bm!645015))

(assert (= (or b!7092161 b!7092164) bm!645014))

(assert (= (or b!7092162 bm!645015) bm!645013))

(declare-fun m!7820952 () Bool)

(assert (=> bm!645013 m!7820952))

(declare-fun m!7820954 () Bool)

(assert (=> bm!645014 m!7820954))

(declare-fun m!7820956 () Bool)

(assert (=> b!7092165 m!7820956))

(assert (=> b!7092132 d!2217077))

(declare-fun d!2217083 () Bool)

(assert (=> d!2217083 (forall!16735 (++!15972 (exprs!7299 c!9994) (exprs!7299 auxCtx!45)) lambda!429981)))

(declare-fun lt!2556332 () Unit!162297)

(declare-fun choose!54680 (List!68766 List!68766 Int) Unit!162297)

(assert (=> d!2217083 (= lt!2556332 (choose!54680 (exprs!7299 c!9994) (exprs!7299 auxCtx!45) lambda!429981))))

(assert (=> d!2217083 (forall!16735 (exprs!7299 c!9994) lambda!429981)))

(assert (=> d!2217083 (= (lemmaConcatPreservesForall!1102 (exprs!7299 c!9994) (exprs!7299 auxCtx!45) lambda!429981) lt!2556332)))

(declare-fun bs!1883562 () Bool)

(assert (= bs!1883562 d!2217083))

(assert (=> bs!1883562 m!7820938))

(assert (=> bs!1883562 m!7820938))

(declare-fun m!7820958 () Bool)

(assert (=> bs!1883562 m!7820958))

(declare-fun m!7820960 () Bool)

(assert (=> bs!1883562 m!7820960))

(assert (=> bs!1883562 m!7820922))

(assert (=> b!7092132 d!2217083))

(declare-fun b!7092198 () Bool)

(declare-fun res!2896443 () Bool)

(declare-fun e!4263413 () Bool)

(assert (=> b!7092198 (=> (not res!2896443) (not e!4263413))))

(declare-fun lt!2556335 () List!68766)

(declare-fun size!41316 (List!68766) Int)

(assert (=> b!7092198 (= res!2896443 (= (size!41316 lt!2556335) (+ (size!41316 (exprs!7299 c!9994)) (size!41316 (exprs!7299 auxCtx!45)))))))

(declare-fun b!7092196 () Bool)

(declare-fun e!4263412 () List!68766)

(assert (=> b!7092196 (= e!4263412 (exprs!7299 auxCtx!45))))

(declare-fun d!2217085 () Bool)

(assert (=> d!2217085 e!4263413))

(declare-fun res!2896442 () Bool)

(assert (=> d!2217085 (=> (not res!2896442) (not e!4263413))))

(declare-fun content!13941 (List!68766) (InoxSet Regex!17803))

(assert (=> d!2217085 (= res!2896442 (= (content!13941 lt!2556335) ((_ map or) (content!13941 (exprs!7299 c!9994)) (content!13941 (exprs!7299 auxCtx!45)))))))

(assert (=> d!2217085 (= lt!2556335 e!4263412)))

(declare-fun c!1323540 () Bool)

(assert (=> d!2217085 (= c!1323540 ((_ is Nil!68642) (exprs!7299 c!9994)))))

(assert (=> d!2217085 (= (++!15972 (exprs!7299 c!9994) (exprs!7299 auxCtx!45)) lt!2556335)))

(declare-fun b!7092199 () Bool)

(assert (=> b!7092199 (= e!4263413 (or (not (= (exprs!7299 auxCtx!45) Nil!68642)) (= lt!2556335 (exprs!7299 c!9994))))))

(declare-fun b!7092197 () Bool)

(assert (=> b!7092197 (= e!4263412 (Cons!68642 (h!75090 (exprs!7299 c!9994)) (++!15972 (t!382555 (exprs!7299 c!9994)) (exprs!7299 auxCtx!45))))))

(assert (= (and d!2217085 c!1323540) b!7092196))

(assert (= (and d!2217085 (not c!1323540)) b!7092197))

(assert (= (and d!2217085 res!2896442) b!7092198))

(assert (= (and b!7092198 res!2896443) b!7092199))

(declare-fun m!7820962 () Bool)

(assert (=> b!7092198 m!7820962))

(declare-fun m!7820964 () Bool)

(assert (=> b!7092198 m!7820964))

(declare-fun m!7820966 () Bool)

(assert (=> b!7092198 m!7820966))

(declare-fun m!7820968 () Bool)

(assert (=> d!2217085 m!7820968))

(declare-fun m!7820970 () Bool)

(assert (=> d!2217085 m!7820970))

(declare-fun m!7820972 () Bool)

(assert (=> d!2217085 m!7820972))

(declare-fun m!7820974 () Bool)

(assert (=> b!7092197 m!7820974))

(assert (=> b!7092132 d!2217085))

(declare-fun d!2217087 () Bool)

(declare-fun res!2896449 () Bool)

(declare-fun e!4263424 () Bool)

(assert (=> d!2217087 (=> res!2896449 e!4263424)))

(assert (=> d!2217087 (= res!2896449 ((_ is Nil!68642) (exprs!7299 auxCtx!45)))))

(assert (=> d!2217087 (= (forall!16735 (exprs!7299 auxCtx!45) lambda!429981) e!4263424)))

(declare-fun b!7092215 () Bool)

(declare-fun e!4263425 () Bool)

(assert (=> b!7092215 (= e!4263424 e!4263425)))

(declare-fun res!2896450 () Bool)

(assert (=> b!7092215 (=> (not res!2896450) (not e!4263425))))

(declare-fun dynLambda!28002 (Int Regex!17803) Bool)

(assert (=> b!7092215 (= res!2896450 (dynLambda!28002 lambda!429981 (h!75090 (exprs!7299 auxCtx!45))))))

(declare-fun b!7092216 () Bool)

(assert (=> b!7092216 (= e!4263425 (forall!16735 (t!382555 (exprs!7299 auxCtx!45)) lambda!429981))))

(assert (= (and d!2217087 (not res!2896449)) b!7092215))

(assert (= (and b!7092215 res!2896450) b!7092216))

(declare-fun b_lambda!271033 () Bool)

(assert (=> (not b_lambda!271033) (not b!7092215)))

(declare-fun m!7820982 () Bool)

(assert (=> b!7092215 m!7820982))

(declare-fun m!7820986 () Bool)

(assert (=> b!7092216 m!7820986))

(assert (=> b!7092126 d!2217087))

(declare-fun d!2217089 () Bool)

(declare-fun nullableFct!2855 (Regex!17803) Bool)

(assert (=> d!2217089 (= (nullable!7443 (regOne!36118 r!11554)) (nullableFct!2855 (regOne!36118 r!11554)))))

(declare-fun bs!1883563 () Bool)

(assert (= bs!1883563 d!2217089))

(declare-fun m!7820990 () Bool)

(assert (=> bs!1883563 m!7820990))

(assert (=> b!7092131 d!2217089))

(declare-fun b!7092217 () Bool)

(declare-fun e!4263431 () Bool)

(declare-fun e!4263427 () Bool)

(assert (=> b!7092217 (= e!4263431 e!4263427)))

(declare-fun c!1323546 () Bool)

(assert (=> b!7092217 (= c!1323546 ((_ is Star!17803) r!11554))))

(declare-fun b!7092218 () Bool)

(declare-fun e!4263426 () Bool)

(assert (=> b!7092218 (= e!4263427 e!4263426)))

(declare-fun c!1323547 () Bool)

(assert (=> b!7092218 (= c!1323547 ((_ is Union!17803) r!11554))))

(declare-fun call!645041 () Bool)

(declare-fun bm!645034 () Bool)

(assert (=> bm!645034 (= call!645041 (validRegex!9078 (ite c!1323546 (reg!18132 r!11554) (ite c!1323547 (regOne!36119 r!11554) (regTwo!36118 r!11554)))))))

(declare-fun d!2217093 () Bool)

(declare-fun res!2896452 () Bool)

(assert (=> d!2217093 (=> res!2896452 e!4263431)))

(assert (=> d!2217093 (= res!2896452 ((_ is ElementMatch!17803) r!11554))))

(assert (=> d!2217093 (= (validRegex!9078 r!11554) e!4263431)))

(declare-fun b!7092219 () Bool)

(declare-fun e!4263428 () Bool)

(declare-fun call!645039 () Bool)

(assert (=> b!7092219 (= e!4263428 call!645039)))

(declare-fun b!7092220 () Bool)

(declare-fun res!2896454 () Bool)

(declare-fun e!4263432 () Bool)

(assert (=> b!7092220 (=> res!2896454 e!4263432)))

(assert (=> b!7092220 (= res!2896454 (not ((_ is Concat!26648) r!11554)))))

(assert (=> b!7092220 (= e!4263426 e!4263432)))

(declare-fun b!7092221 () Bool)

(declare-fun e!4263429 () Bool)

(declare-fun call!645040 () Bool)

(assert (=> b!7092221 (= e!4263429 call!645040)))

(declare-fun b!7092222 () Bool)

(declare-fun e!4263430 () Bool)

(assert (=> b!7092222 (= e!4263430 call!645041)))

(declare-fun b!7092223 () Bool)

(declare-fun res!2896455 () Bool)

(assert (=> b!7092223 (=> (not res!2896455) (not e!4263429))))

(assert (=> b!7092223 (= res!2896455 call!645039)))

(assert (=> b!7092223 (= e!4263426 e!4263429)))

(declare-fun bm!645035 () Bool)

(assert (=> bm!645035 (= call!645040 (validRegex!9078 (ite c!1323547 (regTwo!36119 r!11554) (regOne!36118 r!11554))))))

(declare-fun bm!645036 () Bool)

(assert (=> bm!645036 (= call!645039 call!645041)))

(declare-fun b!7092224 () Bool)

(assert (=> b!7092224 (= e!4263432 e!4263428)))

(declare-fun res!2896453 () Bool)

(assert (=> b!7092224 (=> (not res!2896453) (not e!4263428))))

(assert (=> b!7092224 (= res!2896453 call!645040)))

(declare-fun b!7092225 () Bool)

(assert (=> b!7092225 (= e!4263427 e!4263430)))

(declare-fun res!2896451 () Bool)

(assert (=> b!7092225 (= res!2896451 (not (nullable!7443 (reg!18132 r!11554))))))

(assert (=> b!7092225 (=> (not res!2896451) (not e!4263430))))

(assert (= (and d!2217093 (not res!2896452)) b!7092217))

(assert (= (and b!7092217 c!1323546) b!7092225))

(assert (= (and b!7092217 (not c!1323546)) b!7092218))

(assert (= (and b!7092225 res!2896451) b!7092222))

(assert (= (and b!7092218 c!1323547) b!7092223))

(assert (= (and b!7092218 (not c!1323547)) b!7092220))

(assert (= (and b!7092223 res!2896455) b!7092221))

(assert (= (and b!7092220 (not res!2896454)) b!7092224))

(assert (= (and b!7092224 res!2896453) b!7092219))

(assert (= (or b!7092223 b!7092219) bm!645036))

(assert (= (or b!7092221 b!7092224) bm!645035))

(assert (= (or b!7092222 bm!645036) bm!645034))

(declare-fun m!7820992 () Bool)

(assert (=> bm!645034 m!7820992))

(declare-fun m!7820994 () Bool)

(assert (=> bm!645035 m!7820994))

(declare-fun m!7820996 () Bool)

(assert (=> b!7092225 m!7820996))

(assert (=> start!690336 d!2217093))

(declare-fun bs!1883564 () Bool)

(declare-fun d!2217095 () Bool)

(assert (= bs!1883564 (and d!2217095 b!7092132)))

(declare-fun lambda!429989 () Int)

(assert (=> bs!1883564 (= lambda!429989 lambda!429981)))

(assert (=> d!2217095 (= (inv!87372 c!9994) (forall!16735 (exprs!7299 c!9994) lambda!429989))))

(declare-fun bs!1883565 () Bool)

(assert (= bs!1883565 d!2217095))

(declare-fun m!7820998 () Bool)

(assert (=> bs!1883565 m!7820998))

(assert (=> start!690336 d!2217095))

(declare-fun bs!1883566 () Bool)

(declare-fun d!2217097 () Bool)

(assert (= bs!1883566 (and d!2217097 b!7092132)))

(declare-fun lambda!429990 () Int)

(assert (=> bs!1883566 (= lambda!429990 lambda!429981)))

(declare-fun bs!1883567 () Bool)

(assert (= bs!1883567 (and d!2217097 d!2217095)))

(assert (=> bs!1883567 (= lambda!429990 lambda!429989)))

(assert (=> d!2217097 (= (inv!87372 auxCtx!45) (forall!16735 (exprs!7299 auxCtx!45) lambda!429990))))

(declare-fun bs!1883568 () Bool)

(assert (= bs!1883568 d!2217097))

(declare-fun m!7821000 () Bool)

(assert (=> bs!1883568 m!7821000))

(assert (=> start!690336 d!2217097))

(declare-fun b!7092228 () Bool)

(declare-fun res!2896457 () Bool)

(declare-fun e!4263434 () Bool)

(assert (=> b!7092228 (=> (not res!2896457) (not e!4263434))))

(declare-fun lt!2556336 () List!68766)

(assert (=> b!7092228 (= res!2896457 (= (size!41316 lt!2556336) (+ (size!41316 lt!2556313) (size!41316 (exprs!7299 auxCtx!45)))))))

(declare-fun b!7092226 () Bool)

(declare-fun e!4263433 () List!68766)

(assert (=> b!7092226 (= e!4263433 (exprs!7299 auxCtx!45))))

(declare-fun d!2217099 () Bool)

(assert (=> d!2217099 e!4263434))

(declare-fun res!2896456 () Bool)

(assert (=> d!2217099 (=> (not res!2896456) (not e!4263434))))

(assert (=> d!2217099 (= res!2896456 (= (content!13941 lt!2556336) ((_ map or) (content!13941 lt!2556313) (content!13941 (exprs!7299 auxCtx!45)))))))

(assert (=> d!2217099 (= lt!2556336 e!4263433)))

(declare-fun c!1323548 () Bool)

(assert (=> d!2217099 (= c!1323548 ((_ is Nil!68642) lt!2556313))))

(assert (=> d!2217099 (= (++!15972 lt!2556313 (exprs!7299 auxCtx!45)) lt!2556336)))

(declare-fun b!7092229 () Bool)

(assert (=> b!7092229 (= e!4263434 (or (not (= (exprs!7299 auxCtx!45) Nil!68642)) (= lt!2556336 lt!2556313)))))

(declare-fun b!7092227 () Bool)

(assert (=> b!7092227 (= e!4263433 (Cons!68642 (h!75090 lt!2556313) (++!15972 (t!382555 lt!2556313) (exprs!7299 auxCtx!45))))))

(assert (= (and d!2217099 c!1323548) b!7092226))

(assert (= (and d!2217099 (not c!1323548)) b!7092227))

(assert (= (and d!2217099 res!2896456) b!7092228))

(assert (= (and b!7092228 res!2896457) b!7092229))

(declare-fun m!7821002 () Bool)

(assert (=> b!7092228 m!7821002))

(declare-fun m!7821004 () Bool)

(assert (=> b!7092228 m!7821004))

(assert (=> b!7092228 m!7820966))

(declare-fun m!7821006 () Bool)

(assert (=> d!2217099 m!7821006))

(declare-fun m!7821008 () Bool)

(assert (=> d!2217099 m!7821008))

(assert (=> d!2217099 m!7820972))

(declare-fun m!7821010 () Bool)

(assert (=> b!7092227 m!7821010))

(assert (=> b!7092135 d!2217099))

(declare-fun d!2217101 () Bool)

(assert (=> d!2217101 (forall!16735 (++!15972 lt!2556313 (exprs!7299 auxCtx!45)) lambda!429981)))

(declare-fun lt!2556337 () Unit!162297)

(assert (=> d!2217101 (= lt!2556337 (choose!54680 lt!2556313 (exprs!7299 auxCtx!45) lambda!429981))))

(assert (=> d!2217101 (forall!16735 lt!2556313 lambda!429981)))

(assert (=> d!2217101 (= (lemmaConcatPreservesForall!1102 lt!2556313 (exprs!7299 auxCtx!45) lambda!429981) lt!2556337)))

(declare-fun bs!1883569 () Bool)

(assert (= bs!1883569 d!2217101))

(assert (=> bs!1883569 m!7820934))

(assert (=> bs!1883569 m!7820934))

(declare-fun m!7821012 () Bool)

(assert (=> bs!1883569 m!7821012))

(declare-fun m!7821014 () Bool)

(assert (=> bs!1883569 m!7821014))

(declare-fun m!7821016 () Bool)

(assert (=> bs!1883569 m!7821016))

(assert (=> b!7092135 d!2217101))

(declare-fun bs!1883572 () Bool)

(declare-fun d!2217103 () Bool)

(assert (= bs!1883572 (and d!2217103 b!7092134)))

(declare-fun lambda!429998 () Int)

(assert (=> bs!1883572 (= lambda!429998 lambda!429980)))

(assert (=> d!2217103 true))

(assert (=> d!2217103 (= (appendTo!874 lt!2556308 auxCtx!45) (map!16151 lt!2556308 lambda!429998))))

(declare-fun bs!1883574 () Bool)

(assert (= bs!1883574 d!2217103))

(declare-fun m!7821030 () Bool)

(assert (=> bs!1883574 m!7821030))

(assert (=> b!7092135 d!2217103))

(declare-fun d!2217107 () Bool)

(declare-fun choose!54684 ((InoxSet Context!13598) Int) (InoxSet Context!13598))

(assert (=> d!2217107 (= (map!16151 lt!2556308 lambda!429980) (choose!54684 lt!2556308 lambda!429980))))

(declare-fun bs!1883576 () Bool)

(assert (= bs!1883576 d!2217107))

(declare-fun m!7821034 () Bool)

(assert (=> bs!1883576 m!7821034))

(assert (=> b!7092135 d!2217107))

(declare-fun b!7092290 () Bool)

(declare-fun e!4263469 () (InoxSet Context!13598))

(declare-fun call!645066 () (InoxSet Context!13598))

(assert (=> b!7092290 (= e!4263469 call!645066)))

(declare-fun b!7092291 () Bool)

(declare-fun e!4263472 () (InoxSet Context!13598))

(assert (=> b!7092291 (= e!4263472 call!645066)))

(declare-fun b!7092292 () Bool)

(declare-fun e!4263471 () (InoxSet Context!13598))

(declare-fun call!645069 () (InoxSet Context!13598))

(declare-fun call!645070 () (InoxSet Context!13598))

(assert (=> b!7092292 (= e!4263471 ((_ map or) call!645069 call!645070))))

(declare-fun b!7092293 () Bool)

(declare-fun c!1323578 () Bool)

(assert (=> b!7092293 (= c!1323578 ((_ is Star!17803) (regOne!36118 r!11554)))))

(assert (=> b!7092293 (= e!4263472 e!4263469)))

(declare-fun bm!645061 () Bool)

(declare-fun c!1323574 () Bool)

(declare-fun call!645071 () List!68766)

(declare-fun c!1323575 () Bool)

(assert (=> bm!645061 (= call!645071 ($colon$colon!2710 (exprs!7299 (Context!13599 lt!2556319)) (ite (or c!1323574 c!1323575) (regTwo!36118 (regOne!36118 r!11554)) (regOne!36118 r!11554))))))

(declare-fun c!1323577 () Bool)

(declare-fun bm!645062 () Bool)

(assert (=> bm!645062 (= call!645070 (derivationStepZipperDown!2366 (ite c!1323577 (regTwo!36119 (regOne!36118 r!11554)) (regOne!36118 (regOne!36118 r!11554))) (ite c!1323577 (Context!13599 lt!2556319) (Context!13599 call!645071)) a!1901))))

(declare-fun bm!645063 () Bool)

(declare-fun call!645068 () List!68766)

(assert (=> bm!645063 (= call!645069 (derivationStepZipperDown!2366 (ite c!1323577 (regOne!36119 (regOne!36118 r!11554)) (ite c!1323574 (regTwo!36118 (regOne!36118 r!11554)) (ite c!1323575 (regOne!36118 (regOne!36118 r!11554)) (reg!18132 (regOne!36118 r!11554))))) (ite (or c!1323577 c!1323574) (Context!13599 lt!2556319) (Context!13599 call!645068)) a!1901))))

(declare-fun bm!645064 () Bool)

(declare-fun call!645067 () (InoxSet Context!13598))

(assert (=> bm!645064 (= call!645066 call!645067)))

(declare-fun b!7092294 () Bool)

(declare-fun e!4263470 () (InoxSet Context!13598))

(assert (=> b!7092294 (= e!4263470 e!4263472)))

(assert (=> b!7092294 (= c!1323575 ((_ is Concat!26648) (regOne!36118 r!11554)))))

(declare-fun bm!645066 () Bool)

(assert (=> bm!645066 (= call!645068 call!645071)))

(declare-fun b!7092295 () Bool)

(declare-fun e!4263474 () (InoxSet Context!13598))

(assert (=> b!7092295 (= e!4263474 e!4263471)))

(assert (=> b!7092295 (= c!1323577 ((_ is Union!17803) (regOne!36118 r!11554)))))

(declare-fun b!7092296 () Bool)

(declare-fun e!4263473 () Bool)

(assert (=> b!7092296 (= c!1323574 e!4263473)))

(declare-fun res!2896472 () Bool)

(assert (=> b!7092296 (=> (not res!2896472) (not e!4263473))))

(assert (=> b!7092296 (= res!2896472 ((_ is Concat!26648) (regOne!36118 r!11554)))))

(assert (=> b!7092296 (= e!4263471 e!4263470)))

(declare-fun b!7092297 () Bool)

(assert (=> b!7092297 (= e!4263469 ((as const (Array Context!13598 Bool)) false))))

(declare-fun b!7092298 () Bool)

(assert (=> b!7092298 (= e!4263473 (nullable!7443 (regOne!36118 (regOne!36118 r!11554))))))

(declare-fun bm!645065 () Bool)

(assert (=> bm!645065 (= call!645067 call!645069)))

(declare-fun d!2217113 () Bool)

(declare-fun c!1323576 () Bool)

(assert (=> d!2217113 (= c!1323576 (and ((_ is ElementMatch!17803) (regOne!36118 r!11554)) (= (c!1323520 (regOne!36118 r!11554)) a!1901)))))

(assert (=> d!2217113 (= (derivationStepZipperDown!2366 (regOne!36118 r!11554) (Context!13599 lt!2556319) a!1901) e!4263474)))

(declare-fun b!7092299 () Bool)

(assert (=> b!7092299 (= e!4263470 ((_ map or) call!645070 call!645067))))

(declare-fun b!7092300 () Bool)

(assert (=> b!7092300 (= e!4263474 (store ((as const (Array Context!13598 Bool)) false) (Context!13599 lt!2556319) true))))

(assert (= (and d!2217113 c!1323576) b!7092300))

(assert (= (and d!2217113 (not c!1323576)) b!7092295))

(assert (= (and b!7092295 c!1323577) b!7092292))

(assert (= (and b!7092295 (not c!1323577)) b!7092296))

(assert (= (and b!7092296 res!2896472) b!7092298))

(assert (= (and b!7092296 c!1323574) b!7092299))

(assert (= (and b!7092296 (not c!1323574)) b!7092294))

(assert (= (and b!7092294 c!1323575) b!7092291))

(assert (= (and b!7092294 (not c!1323575)) b!7092293))

(assert (= (and b!7092293 c!1323578) b!7092290))

(assert (= (and b!7092293 (not c!1323578)) b!7092297))

(assert (= (or b!7092291 b!7092290) bm!645066))

(assert (= (or b!7092291 b!7092290) bm!645064))

(assert (= (or b!7092299 bm!645064) bm!645065))

(assert (= (or b!7092299 bm!645066) bm!645061))

(assert (= (or b!7092292 b!7092299) bm!645062))

(assert (= (or b!7092292 bm!645065) bm!645063))

(declare-fun m!7821092 () Bool)

(assert (=> bm!645063 m!7821092))

(declare-fun m!7821094 () Bool)

(assert (=> b!7092298 m!7821094))

(declare-fun m!7821098 () Bool)

(assert (=> bm!645061 m!7821098))

(declare-fun m!7821102 () Bool)

(assert (=> bm!645062 m!7821102))

(declare-fun m!7821104 () Bool)

(assert (=> b!7092300 m!7821104))

(assert (=> b!7092135 d!2217113))

(declare-fun b!7092307 () Bool)

(declare-fun e!4263479 () (InoxSet Context!13598))

(declare-fun call!645072 () (InoxSet Context!13598))

(assert (=> b!7092307 (= e!4263479 call!645072)))

(declare-fun b!7092308 () Bool)

(declare-fun e!4263482 () (InoxSet Context!13598))

(assert (=> b!7092308 (= e!4263482 call!645072)))

(declare-fun b!7092309 () Bool)

(declare-fun e!4263481 () (InoxSet Context!13598))

(declare-fun call!645075 () (InoxSet Context!13598))

(declare-fun call!645076 () (InoxSet Context!13598))

(assert (=> b!7092309 (= e!4263481 ((_ map or) call!645075 call!645076))))

(declare-fun b!7092310 () Bool)

(declare-fun c!1323584 () Bool)

(assert (=> b!7092310 (= c!1323584 ((_ is Star!17803) (regTwo!36118 r!11554)))))

(assert (=> b!7092310 (= e!4263482 e!4263479)))

(declare-fun c!1323580 () Bool)

(declare-fun call!645077 () List!68766)

(declare-fun bm!645067 () Bool)

(declare-fun c!1323581 () Bool)

(assert (=> bm!645067 (= call!645077 ($colon$colon!2710 (exprs!7299 c!9994) (ite (or c!1323580 c!1323581) (regTwo!36118 (regTwo!36118 r!11554)) (regTwo!36118 r!11554))))))

(declare-fun bm!645068 () Bool)

(declare-fun c!1323583 () Bool)

(assert (=> bm!645068 (= call!645076 (derivationStepZipperDown!2366 (ite c!1323583 (regTwo!36119 (regTwo!36118 r!11554)) (regOne!36118 (regTwo!36118 r!11554))) (ite c!1323583 c!9994 (Context!13599 call!645077)) a!1901))))

(declare-fun bm!645069 () Bool)

(declare-fun call!645074 () List!68766)

(assert (=> bm!645069 (= call!645075 (derivationStepZipperDown!2366 (ite c!1323583 (regOne!36119 (regTwo!36118 r!11554)) (ite c!1323580 (regTwo!36118 (regTwo!36118 r!11554)) (ite c!1323581 (regOne!36118 (regTwo!36118 r!11554)) (reg!18132 (regTwo!36118 r!11554))))) (ite (or c!1323583 c!1323580) c!9994 (Context!13599 call!645074)) a!1901))))

(declare-fun bm!645070 () Bool)

(declare-fun call!645073 () (InoxSet Context!13598))

(assert (=> bm!645070 (= call!645072 call!645073)))

(declare-fun b!7092311 () Bool)

(declare-fun e!4263480 () (InoxSet Context!13598))

(assert (=> b!7092311 (= e!4263480 e!4263482)))

(assert (=> b!7092311 (= c!1323581 ((_ is Concat!26648) (regTwo!36118 r!11554)))))

(declare-fun bm!645072 () Bool)

(assert (=> bm!645072 (= call!645074 call!645077)))

(declare-fun b!7092312 () Bool)

(declare-fun e!4263484 () (InoxSet Context!13598))

(assert (=> b!7092312 (= e!4263484 e!4263481)))

(assert (=> b!7092312 (= c!1323583 ((_ is Union!17803) (regTwo!36118 r!11554)))))

(declare-fun b!7092313 () Bool)

(declare-fun e!4263483 () Bool)

(assert (=> b!7092313 (= c!1323580 e!4263483)))

(declare-fun res!2896477 () Bool)

(assert (=> b!7092313 (=> (not res!2896477) (not e!4263483))))

(assert (=> b!7092313 (= res!2896477 ((_ is Concat!26648) (regTwo!36118 r!11554)))))

(assert (=> b!7092313 (= e!4263481 e!4263480)))

(declare-fun b!7092314 () Bool)

(assert (=> b!7092314 (= e!4263479 ((as const (Array Context!13598 Bool)) false))))

(declare-fun b!7092315 () Bool)

(assert (=> b!7092315 (= e!4263483 (nullable!7443 (regOne!36118 (regTwo!36118 r!11554))))))

(declare-fun bm!645071 () Bool)

(assert (=> bm!645071 (= call!645073 call!645075)))

(declare-fun d!2217135 () Bool)

(declare-fun c!1323582 () Bool)

(assert (=> d!2217135 (= c!1323582 (and ((_ is ElementMatch!17803) (regTwo!36118 r!11554)) (= (c!1323520 (regTwo!36118 r!11554)) a!1901)))))

(assert (=> d!2217135 (= (derivationStepZipperDown!2366 (regTwo!36118 r!11554) c!9994 a!1901) e!4263484)))

(declare-fun b!7092316 () Bool)

(assert (=> b!7092316 (= e!4263480 ((_ map or) call!645076 call!645073))))

(declare-fun b!7092317 () Bool)

(assert (=> b!7092317 (= e!4263484 (store ((as const (Array Context!13598 Bool)) false) c!9994 true))))

(assert (= (and d!2217135 c!1323582) b!7092317))

(assert (= (and d!2217135 (not c!1323582)) b!7092312))

(assert (= (and b!7092312 c!1323583) b!7092309))

(assert (= (and b!7092312 (not c!1323583)) b!7092313))

(assert (= (and b!7092313 res!2896477) b!7092315))

(assert (= (and b!7092313 c!1323580) b!7092316))

(assert (= (and b!7092313 (not c!1323580)) b!7092311))

(assert (= (and b!7092311 c!1323581) b!7092308))

(assert (= (and b!7092311 (not c!1323581)) b!7092310))

(assert (= (and b!7092310 c!1323584) b!7092307))

(assert (= (and b!7092310 (not c!1323584)) b!7092314))

(assert (= (or b!7092308 b!7092307) bm!645072))

(assert (= (or b!7092308 b!7092307) bm!645070))

(assert (= (or b!7092316 bm!645070) bm!645071))

(assert (= (or b!7092316 bm!645072) bm!645067))

(assert (= (or b!7092309 b!7092316) bm!645068))

(assert (= (or b!7092309 bm!645071) bm!645069))

(declare-fun m!7821116 () Bool)

(assert (=> bm!645069 m!7821116))

(declare-fun m!7821118 () Bool)

(assert (=> b!7092315 m!7821118))

(declare-fun m!7821120 () Bool)

(assert (=> bm!645067 m!7821120))

(declare-fun m!7821122 () Bool)

(assert (=> bm!645068 m!7821122))

(declare-fun m!7821124 () Bool)

(assert (=> b!7092317 m!7821124))

(assert (=> b!7092135 d!2217135))

(declare-fun bs!1883586 () Bool)

(declare-fun d!2217139 () Bool)

(assert (= bs!1883586 (and d!2217139 b!7092132)))

(declare-fun lambda!430003 () Int)

(assert (=> bs!1883586 (= lambda!430003 lambda!429981)))

(declare-fun bs!1883587 () Bool)

(assert (= bs!1883587 (and d!2217139 d!2217095)))

(assert (=> bs!1883587 (= lambda!430003 lambda!429989)))

(declare-fun bs!1883588 () Bool)

(assert (= bs!1883588 (and d!2217139 d!2217097)))

(assert (=> bs!1883588 (= lambda!430003 lambda!429990)))

(assert (=> d!2217139 (= (derivationStepZipperDown!2366 (regTwo!36118 r!11554) (Context!13599 (++!15972 (exprs!7299 c!9994) (exprs!7299 auxCtx!45))) a!1901) (appendTo!874 (derivationStepZipperDown!2366 (regTwo!36118 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2556361 () Unit!162297)

(assert (=> d!2217139 (= lt!2556361 (lemmaConcatPreservesForall!1102 (exprs!7299 c!9994) (exprs!7299 auxCtx!45) lambda!430003))))

(declare-fun lt!2556360 () Unit!162297)

(declare-fun choose!54685 (Context!13598 Regex!17803 C!35876 Context!13598) Unit!162297)

(assert (=> d!2217139 (= lt!2556360 (choose!54685 c!9994 (regTwo!36118 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217139 (validRegex!9078 (regTwo!36118 r!11554))))

(assert (=> d!2217139 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!182 c!9994 (regTwo!36118 r!11554) a!1901 auxCtx!45) lt!2556360)))

(declare-fun bs!1883589 () Bool)

(assert (= bs!1883589 d!2217139))

(declare-fun m!7821134 () Bool)

(assert (=> bs!1883589 m!7821134))

(assert (=> bs!1883589 m!7820930))

(declare-fun m!7821138 () Bool)

(assert (=> bs!1883589 m!7821138))

(declare-fun m!7821142 () Bool)

(assert (=> bs!1883589 m!7821142))

(assert (=> bs!1883589 m!7820930))

(assert (=> bs!1883589 m!7820938))

(assert (=> bs!1883589 m!7820940))

(declare-fun m!7821146 () Bool)

(assert (=> bs!1883589 m!7821146))

(assert (=> b!7092135 d!2217139))

(declare-fun bs!1883590 () Bool)

(declare-fun d!2217145 () Bool)

(assert (= bs!1883590 (and d!2217145 b!7092132)))

(declare-fun lambda!430004 () Int)

(assert (=> bs!1883590 (= lambda!430004 lambda!429981)))

(declare-fun bs!1883591 () Bool)

(assert (= bs!1883591 (and d!2217145 d!2217095)))

(assert (=> bs!1883591 (= lambda!430004 lambda!429989)))

(declare-fun bs!1883592 () Bool)

(assert (= bs!1883592 (and d!2217145 d!2217097)))

(assert (=> bs!1883592 (= lambda!430004 lambda!429990)))

(declare-fun bs!1883593 () Bool)

(assert (= bs!1883593 (and d!2217145 d!2217139)))

(assert (=> bs!1883593 (= lambda!430004 lambda!430003)))

(assert (=> d!2217145 (= (derivationStepZipperDown!2366 (regOne!36118 r!11554) (Context!13599 (++!15972 (exprs!7299 lt!2556309) (exprs!7299 auxCtx!45))) a!1901) (appendTo!874 (derivationStepZipperDown!2366 (regOne!36118 r!11554) lt!2556309 a!1901) auxCtx!45))))

(declare-fun lt!2556363 () Unit!162297)

(assert (=> d!2217145 (= lt!2556363 (lemmaConcatPreservesForall!1102 (exprs!7299 lt!2556309) (exprs!7299 auxCtx!45) lambda!430004))))

(declare-fun lt!2556362 () Unit!162297)

(assert (=> d!2217145 (= lt!2556362 (choose!54685 lt!2556309 (regOne!36118 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217145 (validRegex!9078 (regOne!36118 r!11554))))

(assert (=> d!2217145 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!182 lt!2556309 (regOne!36118 r!11554) a!1901 auxCtx!45) lt!2556362)))

(declare-fun bs!1883594 () Bool)

(assert (= bs!1883594 d!2217145))

(declare-fun m!7821148 () Bool)

(assert (=> bs!1883594 m!7821148))

(assert (=> bs!1883594 m!7820908))

(declare-fun m!7821150 () Bool)

(assert (=> bs!1883594 m!7821150))

(declare-fun m!7821152 () Bool)

(assert (=> bs!1883594 m!7821152))

(assert (=> bs!1883594 m!7820908))

(declare-fun m!7821156 () Bool)

(assert (=> bs!1883594 m!7821156))

(declare-fun m!7821158 () Bool)

(assert (=> bs!1883594 m!7821158))

(declare-fun m!7821162 () Bool)

(assert (=> bs!1883594 m!7821162))

(assert (=> b!7092135 d!2217145))

(declare-fun d!2217147 () Bool)

(assert (=> d!2217147 (= (map!16151 ((_ map or) lt!2556308 lt!2556314) lambda!429980) (choose!54684 ((_ map or) lt!2556308 lt!2556314) lambda!429980))))

(declare-fun bs!1883595 () Bool)

(assert (= bs!1883595 d!2217147))

(declare-fun m!7821166 () Bool)

(assert (=> bs!1883595 m!7821166))

(assert (=> b!7092135 d!2217147))

(declare-fun d!2217151 () Bool)

(assert (=> d!2217151 (= ($colon$colon!2710 (exprs!7299 c!9994) (regTwo!36118 r!11554)) (Cons!68642 (regTwo!36118 r!11554) (exprs!7299 c!9994)))))

(assert (=> b!7092135 d!2217151))

(declare-fun d!2217153 () Bool)

(assert (=> d!2217153 (= ((_ map or) (map!16151 lt!2556308 lambda!429980) (map!16151 lt!2556314 lambda!429980)) (map!16151 ((_ map or) lt!2556308 lt!2556314) lambda!429980))))

(declare-fun lt!2556366 () Unit!162297)

(declare-fun choose!54686 ((InoxSet Context!13598) (InoxSet Context!13598) Int) Unit!162297)

(assert (=> d!2217153 (= lt!2556366 (choose!54686 lt!2556308 lt!2556314 lambda!429980))))

(assert (=> d!2217153 (= (lemmaMapAssociative!16 lt!2556308 lt!2556314 lambda!429980) lt!2556366)))

(declare-fun bs!1883596 () Bool)

(assert (= bs!1883596 d!2217153))

(assert (=> bs!1883596 m!7820912))

(assert (=> bs!1883596 m!7820920))

(assert (=> bs!1883596 m!7820916))

(declare-fun m!7821182 () Bool)

(assert (=> bs!1883596 m!7821182))

(assert (=> b!7092135 d!2217153))

(declare-fun bs!1883597 () Bool)

(declare-fun d!2217161 () Bool)

(assert (= bs!1883597 (and d!2217161 b!7092134)))

(declare-fun lambda!430007 () Int)

(assert (=> bs!1883597 (= lambda!430007 lambda!429980)))

(declare-fun bs!1883598 () Bool)

(assert (= bs!1883598 (and d!2217161 d!2217103)))

(assert (=> bs!1883598 (= lambda!430007 lambda!429998)))

(assert (=> d!2217161 true))

(assert (=> d!2217161 (= (appendTo!874 lt!2556314 auxCtx!45) (map!16151 lt!2556314 lambda!430007))))

(declare-fun bs!1883600 () Bool)

(assert (= bs!1883600 d!2217161))

(declare-fun m!7821184 () Bool)

(assert (=> bs!1883600 m!7821184))

(assert (=> b!7092135 d!2217161))

(declare-fun b!7092387 () Bool)

(declare-fun e!4263531 () (InoxSet Context!13598))

(declare-fun call!645108 () (InoxSet Context!13598))

(assert (=> b!7092387 (= e!4263531 call!645108)))

(declare-fun b!7092388 () Bool)

(declare-fun e!4263534 () (InoxSet Context!13598))

(assert (=> b!7092388 (= e!4263534 call!645108)))

(declare-fun b!7092389 () Bool)

(declare-fun e!4263533 () (InoxSet Context!13598))

(declare-fun call!645111 () (InoxSet Context!13598))

(declare-fun call!645112 () (InoxSet Context!13598))

(assert (=> b!7092389 (= e!4263533 ((_ map or) call!645111 call!645112))))

(declare-fun b!7092390 () Bool)

(declare-fun c!1323613 () Bool)

(assert (=> b!7092390 (= c!1323613 ((_ is Star!17803) (regOne!36118 r!11554)))))

(assert (=> b!7092390 (= e!4263534 e!4263531)))

(declare-fun c!1323609 () Bool)

(declare-fun c!1323610 () Bool)

(declare-fun call!645113 () List!68766)

(declare-fun bm!645103 () Bool)

(assert (=> bm!645103 (= call!645113 ($colon$colon!2710 (exprs!7299 lt!2556309) (ite (or c!1323609 c!1323610) (regTwo!36118 (regOne!36118 r!11554)) (regOne!36118 r!11554))))))

(declare-fun bm!645104 () Bool)

(declare-fun c!1323612 () Bool)

(assert (=> bm!645104 (= call!645112 (derivationStepZipperDown!2366 (ite c!1323612 (regTwo!36119 (regOne!36118 r!11554)) (regOne!36118 (regOne!36118 r!11554))) (ite c!1323612 lt!2556309 (Context!13599 call!645113)) a!1901))))

(declare-fun call!645110 () List!68766)

(declare-fun bm!645105 () Bool)

(assert (=> bm!645105 (= call!645111 (derivationStepZipperDown!2366 (ite c!1323612 (regOne!36119 (regOne!36118 r!11554)) (ite c!1323609 (regTwo!36118 (regOne!36118 r!11554)) (ite c!1323610 (regOne!36118 (regOne!36118 r!11554)) (reg!18132 (regOne!36118 r!11554))))) (ite (or c!1323612 c!1323609) lt!2556309 (Context!13599 call!645110)) a!1901))))

(declare-fun bm!645106 () Bool)

(declare-fun call!645109 () (InoxSet Context!13598))

(assert (=> bm!645106 (= call!645108 call!645109)))

(declare-fun b!7092391 () Bool)

(declare-fun e!4263532 () (InoxSet Context!13598))

(assert (=> b!7092391 (= e!4263532 e!4263534)))

(assert (=> b!7092391 (= c!1323610 ((_ is Concat!26648) (regOne!36118 r!11554)))))

(declare-fun bm!645108 () Bool)

(assert (=> bm!645108 (= call!645110 call!645113)))

(declare-fun b!7092392 () Bool)

(declare-fun e!4263536 () (InoxSet Context!13598))

(assert (=> b!7092392 (= e!4263536 e!4263533)))

(assert (=> b!7092392 (= c!1323612 ((_ is Union!17803) (regOne!36118 r!11554)))))

(declare-fun b!7092393 () Bool)

(declare-fun e!4263535 () Bool)

(assert (=> b!7092393 (= c!1323609 e!4263535)))

(declare-fun res!2896501 () Bool)

(assert (=> b!7092393 (=> (not res!2896501) (not e!4263535))))

(assert (=> b!7092393 (= res!2896501 ((_ is Concat!26648) (regOne!36118 r!11554)))))

(assert (=> b!7092393 (= e!4263533 e!4263532)))

(declare-fun b!7092394 () Bool)

(assert (=> b!7092394 (= e!4263531 ((as const (Array Context!13598 Bool)) false))))

(declare-fun b!7092395 () Bool)

(assert (=> b!7092395 (= e!4263535 (nullable!7443 (regOne!36118 (regOne!36118 r!11554))))))

(declare-fun bm!645107 () Bool)

(assert (=> bm!645107 (= call!645109 call!645111)))

(declare-fun d!2217163 () Bool)

(declare-fun c!1323611 () Bool)

(assert (=> d!2217163 (= c!1323611 (and ((_ is ElementMatch!17803) (regOne!36118 r!11554)) (= (c!1323520 (regOne!36118 r!11554)) a!1901)))))

(assert (=> d!2217163 (= (derivationStepZipperDown!2366 (regOne!36118 r!11554) lt!2556309 a!1901) e!4263536)))

(declare-fun b!7092396 () Bool)

(assert (=> b!7092396 (= e!4263532 ((_ map or) call!645112 call!645109))))

(declare-fun b!7092397 () Bool)

(assert (=> b!7092397 (= e!4263536 (store ((as const (Array Context!13598 Bool)) false) lt!2556309 true))))

(assert (= (and d!2217163 c!1323611) b!7092397))

(assert (= (and d!2217163 (not c!1323611)) b!7092392))

(assert (= (and b!7092392 c!1323612) b!7092389))

(assert (= (and b!7092392 (not c!1323612)) b!7092393))

(assert (= (and b!7092393 res!2896501) b!7092395))

(assert (= (and b!7092393 c!1323609) b!7092396))

(assert (= (and b!7092393 (not c!1323609)) b!7092391))

(assert (= (and b!7092391 c!1323610) b!7092388))

(assert (= (and b!7092391 (not c!1323610)) b!7092390))

(assert (= (and b!7092390 c!1323613) b!7092387))

(assert (= (and b!7092390 (not c!1323613)) b!7092394))

(assert (= (or b!7092388 b!7092387) bm!645108))

(assert (= (or b!7092388 b!7092387) bm!645106))

(assert (= (or b!7092396 bm!645106) bm!645107))

(assert (= (or b!7092396 bm!645108) bm!645103))

(assert (= (or b!7092389 b!7092396) bm!645104))

(assert (= (or b!7092389 bm!645107) bm!645105))

(declare-fun m!7821190 () Bool)

(assert (=> bm!645105 m!7821190))

(assert (=> b!7092395 m!7821094))

(declare-fun m!7821192 () Bool)

(assert (=> bm!645103 m!7821192))

(declare-fun m!7821194 () Bool)

(assert (=> bm!645104 m!7821194))

(declare-fun m!7821196 () Bool)

(assert (=> b!7092397 m!7821196))

(assert (=> b!7092135 d!2217163))

(declare-fun d!2217169 () Bool)

(declare-fun res!2896502 () Bool)

(declare-fun e!4263537 () Bool)

(assert (=> d!2217169 (=> res!2896502 e!4263537)))

(assert (=> d!2217169 (= res!2896502 ((_ is Nil!68642) (exprs!7299 c!9994)))))

(assert (=> d!2217169 (= (forall!16735 (exprs!7299 c!9994) lambda!429981) e!4263537)))

(declare-fun b!7092398 () Bool)

(declare-fun e!4263538 () Bool)

(assert (=> b!7092398 (= e!4263537 e!4263538)))

(declare-fun res!2896503 () Bool)

(assert (=> b!7092398 (=> (not res!2896503) (not e!4263538))))

(assert (=> b!7092398 (= res!2896503 (dynLambda!28002 lambda!429981 (h!75090 (exprs!7299 c!9994))))))

(declare-fun b!7092399 () Bool)

(assert (=> b!7092399 (= e!4263538 (forall!16735 (t!382555 (exprs!7299 c!9994)) lambda!429981))))

(assert (= (and d!2217169 (not res!2896502)) b!7092398))

(assert (= (and b!7092398 res!2896503) b!7092399))

(declare-fun b_lambda!271037 () Bool)

(assert (=> (not b_lambda!271037) (not b!7092398)))

(declare-fun m!7821200 () Bool)

(assert (=> b!7092398 m!7821200))

(declare-fun m!7821202 () Bool)

(assert (=> b!7092399 m!7821202))

(assert (=> b!7092135 d!2217169))

(assert (=> b!7092135 d!2217083))

(declare-fun d!2217173 () Bool)

(assert (=> d!2217173 (= (map!16151 lt!2556314 lambda!429980) (choose!54684 lt!2556314 lambda!429980))))

(declare-fun bs!1883610 () Bool)

(assert (= bs!1883610 d!2217173))

(declare-fun m!7821204 () Bool)

(assert (=> bs!1883610 m!7821204))

(assert (=> b!7092135 d!2217173))

(declare-fun b!7092402 () Bool)

(declare-fun e!4263541 () (InoxSet Context!13598))

(declare-fun call!645114 () (InoxSet Context!13598))

(assert (=> b!7092402 (= e!4263541 call!645114)))

(declare-fun b!7092403 () Bool)

(declare-fun e!4263544 () (InoxSet Context!13598))

(assert (=> b!7092403 (= e!4263544 call!645114)))

(declare-fun b!7092404 () Bool)

(declare-fun e!4263543 () (InoxSet Context!13598))

(declare-fun call!645117 () (InoxSet Context!13598))

(declare-fun call!645118 () (InoxSet Context!13598))

(assert (=> b!7092404 (= e!4263543 ((_ map or) call!645117 call!645118))))

(declare-fun b!7092405 () Bool)

(declare-fun c!1323618 () Bool)

(assert (=> b!7092405 (= c!1323618 ((_ is Star!17803) r!11554))))

(assert (=> b!7092405 (= e!4263544 e!4263541)))

(declare-fun call!645119 () List!68766)

(declare-fun c!1323615 () Bool)

(declare-fun bm!645109 () Bool)

(declare-fun c!1323614 () Bool)

(assert (=> bm!645109 (= call!645119 ($colon$colon!2710 (exprs!7299 lt!2556324) (ite (or c!1323614 c!1323615) (regTwo!36118 r!11554) r!11554)))))

(declare-fun c!1323617 () Bool)

(declare-fun bm!645110 () Bool)

(assert (=> bm!645110 (= call!645118 (derivationStepZipperDown!2366 (ite c!1323617 (regTwo!36119 r!11554) (regOne!36118 r!11554)) (ite c!1323617 lt!2556324 (Context!13599 call!645119)) a!1901))))

(declare-fun call!645116 () List!68766)

(declare-fun bm!645111 () Bool)

(assert (=> bm!645111 (= call!645117 (derivationStepZipperDown!2366 (ite c!1323617 (regOne!36119 r!11554) (ite c!1323614 (regTwo!36118 r!11554) (ite c!1323615 (regOne!36118 r!11554) (reg!18132 r!11554)))) (ite (or c!1323617 c!1323614) lt!2556324 (Context!13599 call!645116)) a!1901))))

(declare-fun bm!645112 () Bool)

(declare-fun call!645115 () (InoxSet Context!13598))

(assert (=> bm!645112 (= call!645114 call!645115)))

(declare-fun b!7092406 () Bool)

(declare-fun e!4263542 () (InoxSet Context!13598))

(assert (=> b!7092406 (= e!4263542 e!4263544)))

(assert (=> b!7092406 (= c!1323615 ((_ is Concat!26648) r!11554))))

(declare-fun bm!645114 () Bool)

(assert (=> bm!645114 (= call!645116 call!645119)))

(declare-fun b!7092407 () Bool)

(declare-fun e!4263546 () (InoxSet Context!13598))

(assert (=> b!7092407 (= e!4263546 e!4263543)))

(assert (=> b!7092407 (= c!1323617 ((_ is Union!17803) r!11554))))

(declare-fun b!7092408 () Bool)

(declare-fun e!4263545 () Bool)

(assert (=> b!7092408 (= c!1323614 e!4263545)))

(declare-fun res!2896506 () Bool)

(assert (=> b!7092408 (=> (not res!2896506) (not e!4263545))))

(assert (=> b!7092408 (= res!2896506 ((_ is Concat!26648) r!11554))))

(assert (=> b!7092408 (= e!4263543 e!4263542)))

(declare-fun b!7092409 () Bool)

(assert (=> b!7092409 (= e!4263541 ((as const (Array Context!13598 Bool)) false))))

(declare-fun b!7092410 () Bool)

(assert (=> b!7092410 (= e!4263545 (nullable!7443 (regOne!36118 r!11554)))))

(declare-fun bm!645113 () Bool)

(assert (=> bm!645113 (= call!645115 call!645117)))

(declare-fun d!2217175 () Bool)

(declare-fun c!1323616 () Bool)

(assert (=> d!2217175 (= c!1323616 (and ((_ is ElementMatch!17803) r!11554) (= (c!1323520 r!11554) a!1901)))))

(assert (=> d!2217175 (= (derivationStepZipperDown!2366 r!11554 lt!2556324 a!1901) e!4263546)))

(declare-fun b!7092411 () Bool)

(assert (=> b!7092411 (= e!4263542 ((_ map or) call!645118 call!645115))))

(declare-fun b!7092412 () Bool)

(assert (=> b!7092412 (= e!4263546 (store ((as const (Array Context!13598 Bool)) false) lt!2556324 true))))

(assert (= (and d!2217175 c!1323616) b!7092412))

(assert (= (and d!2217175 (not c!1323616)) b!7092407))

(assert (= (and b!7092407 c!1323617) b!7092404))

(assert (= (and b!7092407 (not c!1323617)) b!7092408))

(assert (= (and b!7092408 res!2896506) b!7092410))

(assert (= (and b!7092408 c!1323614) b!7092411))

(assert (= (and b!7092408 (not c!1323614)) b!7092406))

(assert (= (and b!7092406 c!1323615) b!7092403))

(assert (= (and b!7092406 (not c!1323615)) b!7092405))

(assert (= (and b!7092405 c!1323618) b!7092402))

(assert (= (and b!7092405 (not c!1323618)) b!7092409))

(assert (= (or b!7092403 b!7092402) bm!645114))

(assert (= (or b!7092403 b!7092402) bm!645112))

(assert (= (or b!7092411 bm!645112) bm!645113))

(assert (= (or b!7092411 bm!645114) bm!645109))

(assert (= (or b!7092404 b!7092411) bm!645110))

(assert (= (or b!7092404 bm!645113) bm!645111))

(declare-fun m!7821210 () Bool)

(assert (=> bm!645111 m!7821210))

(assert (=> b!7092410 m!7820904))

(declare-fun m!7821212 () Bool)

(assert (=> bm!645109 m!7821212))

(declare-fun m!7821214 () Bool)

(assert (=> bm!645110 m!7821214))

(declare-fun m!7821216 () Bool)

(assert (=> b!7092412 m!7821216))

(assert (=> b!7092128 d!2217175))

(declare-fun b!7092428 () Bool)

(declare-fun e!4263552 () (InoxSet Context!13598))

(declare-fun call!645120 () (InoxSet Context!13598))

(assert (=> b!7092428 (= e!4263552 call!645120)))

(declare-fun b!7092429 () Bool)

(declare-fun e!4263555 () (InoxSet Context!13598))

(assert (=> b!7092429 (= e!4263555 call!645120)))

(declare-fun b!7092430 () Bool)

(declare-fun e!4263554 () (InoxSet Context!13598))

(declare-fun call!645123 () (InoxSet Context!13598))

(declare-fun call!645124 () (InoxSet Context!13598))

(assert (=> b!7092430 (= e!4263554 ((_ map or) call!645123 call!645124))))

(declare-fun b!7092431 () Bool)

(declare-fun c!1323623 () Bool)

(assert (=> b!7092431 (= c!1323623 ((_ is Star!17803) (regTwo!36118 r!11554)))))

(assert (=> b!7092431 (= e!4263555 e!4263552)))

(declare-fun bm!645115 () Bool)

(declare-fun c!1323619 () Bool)

(declare-fun c!1323620 () Bool)

(declare-fun call!645125 () List!68766)

(assert (=> bm!645115 (= call!645125 ($colon$colon!2710 (exprs!7299 lt!2556324) (ite (or c!1323619 c!1323620) (regTwo!36118 (regTwo!36118 r!11554)) (regTwo!36118 r!11554))))))

(declare-fun bm!645116 () Bool)

(declare-fun c!1323622 () Bool)

(assert (=> bm!645116 (= call!645124 (derivationStepZipperDown!2366 (ite c!1323622 (regTwo!36119 (regTwo!36118 r!11554)) (regOne!36118 (regTwo!36118 r!11554))) (ite c!1323622 lt!2556324 (Context!13599 call!645125)) a!1901))))

(declare-fun call!645122 () List!68766)

(declare-fun bm!645117 () Bool)

(assert (=> bm!645117 (= call!645123 (derivationStepZipperDown!2366 (ite c!1323622 (regOne!36119 (regTwo!36118 r!11554)) (ite c!1323619 (regTwo!36118 (regTwo!36118 r!11554)) (ite c!1323620 (regOne!36118 (regTwo!36118 r!11554)) (reg!18132 (regTwo!36118 r!11554))))) (ite (or c!1323622 c!1323619) lt!2556324 (Context!13599 call!645122)) a!1901))))

(declare-fun bm!645118 () Bool)

(declare-fun call!645121 () (InoxSet Context!13598))

(assert (=> bm!645118 (= call!645120 call!645121)))

(declare-fun b!7092432 () Bool)

(declare-fun e!4263553 () (InoxSet Context!13598))

(assert (=> b!7092432 (= e!4263553 e!4263555)))

(assert (=> b!7092432 (= c!1323620 ((_ is Concat!26648) (regTwo!36118 r!11554)))))

(declare-fun bm!645120 () Bool)

(assert (=> bm!645120 (= call!645122 call!645125)))

(declare-fun b!7092433 () Bool)

(declare-fun e!4263557 () (InoxSet Context!13598))

(assert (=> b!7092433 (= e!4263557 e!4263554)))

(assert (=> b!7092433 (= c!1323622 ((_ is Union!17803) (regTwo!36118 r!11554)))))

(declare-fun b!7092434 () Bool)

(declare-fun e!4263556 () Bool)

(assert (=> b!7092434 (= c!1323619 e!4263556)))

(declare-fun res!2896507 () Bool)

(assert (=> b!7092434 (=> (not res!2896507) (not e!4263556))))

(assert (=> b!7092434 (= res!2896507 ((_ is Concat!26648) (regTwo!36118 r!11554)))))

(assert (=> b!7092434 (= e!4263554 e!4263553)))

(declare-fun b!7092435 () Bool)

(assert (=> b!7092435 (= e!4263552 ((as const (Array Context!13598 Bool)) false))))

(declare-fun b!7092436 () Bool)

(assert (=> b!7092436 (= e!4263556 (nullable!7443 (regOne!36118 (regTwo!36118 r!11554))))))

(declare-fun bm!645119 () Bool)

(assert (=> bm!645119 (= call!645121 call!645123)))

(declare-fun d!2217177 () Bool)

(declare-fun c!1323621 () Bool)

(assert (=> d!2217177 (= c!1323621 (and ((_ is ElementMatch!17803) (regTwo!36118 r!11554)) (= (c!1323520 (regTwo!36118 r!11554)) a!1901)))))

(assert (=> d!2217177 (= (derivationStepZipperDown!2366 (regTwo!36118 r!11554) lt!2556324 a!1901) e!4263557)))

(declare-fun b!7092437 () Bool)

(assert (=> b!7092437 (= e!4263553 ((_ map or) call!645124 call!645121))))

(declare-fun b!7092438 () Bool)

(assert (=> b!7092438 (= e!4263557 (store ((as const (Array Context!13598 Bool)) false) lt!2556324 true))))

(assert (= (and d!2217177 c!1323621) b!7092438))

(assert (= (and d!2217177 (not c!1323621)) b!7092433))

(assert (= (and b!7092433 c!1323622) b!7092430))

(assert (= (and b!7092433 (not c!1323622)) b!7092434))

(assert (= (and b!7092434 res!2896507) b!7092436))

(assert (= (and b!7092434 c!1323619) b!7092437))

(assert (= (and b!7092434 (not c!1323619)) b!7092432))

(assert (= (and b!7092432 c!1323620) b!7092429))

(assert (= (and b!7092432 (not c!1323620)) b!7092431))

(assert (= (and b!7092431 c!1323623) b!7092428))

(assert (= (and b!7092431 (not c!1323623)) b!7092435))

(assert (= (or b!7092429 b!7092428) bm!645120))

(assert (= (or b!7092429 b!7092428) bm!645118))

(assert (= (or b!7092437 bm!645118) bm!645119))

(assert (= (or b!7092437 bm!645120) bm!645115))

(assert (= (or b!7092430 b!7092437) bm!645116))

(assert (= (or b!7092430 bm!645119) bm!645117))

(declare-fun m!7821218 () Bool)

(assert (=> bm!645117 m!7821218))

(assert (=> b!7092436 m!7821118))

(declare-fun m!7821220 () Bool)

(assert (=> bm!645115 m!7821220))

(declare-fun m!7821222 () Bool)

(assert (=> bm!645116 m!7821222))

(assert (=> b!7092438 m!7821216))

(assert (=> b!7092128 d!2217177))

(declare-fun b!7092455 () Bool)

(declare-fun e!4263562 () (InoxSet Context!13598))

(declare-fun call!645126 () (InoxSet Context!13598))

(assert (=> b!7092455 (= e!4263562 call!645126)))

(declare-fun b!7092456 () Bool)

(declare-fun e!4263565 () (InoxSet Context!13598))

(assert (=> b!7092456 (= e!4263565 call!645126)))

(declare-fun b!7092457 () Bool)

(declare-fun e!4263564 () (InoxSet Context!13598))

(declare-fun call!645129 () (InoxSet Context!13598))

(declare-fun call!645130 () (InoxSet Context!13598))

(assert (=> b!7092457 (= e!4263564 ((_ map or) call!645129 call!645130))))

(declare-fun b!7092458 () Bool)

(declare-fun c!1323628 () Bool)

(assert (=> b!7092458 (= c!1323628 ((_ is Star!17803) (regOne!36118 r!11554)))))

(assert (=> b!7092458 (= e!4263565 e!4263562)))

(declare-fun c!1323624 () Bool)

(declare-fun call!645131 () List!68766)

(declare-fun bm!645121 () Bool)

(declare-fun c!1323625 () Bool)

(assert (=> bm!645121 (= call!645131 ($colon$colon!2710 (exprs!7299 (Context!13599 ($colon$colon!2710 lt!2556317 (regTwo!36118 r!11554)))) (ite (or c!1323624 c!1323625) (regTwo!36118 (regOne!36118 r!11554)) (regOne!36118 r!11554))))))

(declare-fun c!1323627 () Bool)

(declare-fun bm!645122 () Bool)

(assert (=> bm!645122 (= call!645130 (derivationStepZipperDown!2366 (ite c!1323627 (regTwo!36119 (regOne!36118 r!11554)) (regOne!36118 (regOne!36118 r!11554))) (ite c!1323627 (Context!13599 ($colon$colon!2710 lt!2556317 (regTwo!36118 r!11554))) (Context!13599 call!645131)) a!1901))))

(declare-fun bm!645123 () Bool)

(declare-fun call!645128 () List!68766)

(assert (=> bm!645123 (= call!645129 (derivationStepZipperDown!2366 (ite c!1323627 (regOne!36119 (regOne!36118 r!11554)) (ite c!1323624 (regTwo!36118 (regOne!36118 r!11554)) (ite c!1323625 (regOne!36118 (regOne!36118 r!11554)) (reg!18132 (regOne!36118 r!11554))))) (ite (or c!1323627 c!1323624) (Context!13599 ($colon$colon!2710 lt!2556317 (regTwo!36118 r!11554))) (Context!13599 call!645128)) a!1901))))

(declare-fun bm!645124 () Bool)

(declare-fun call!645127 () (InoxSet Context!13598))

(assert (=> bm!645124 (= call!645126 call!645127)))

(declare-fun b!7092459 () Bool)

(declare-fun e!4263563 () (InoxSet Context!13598))

(assert (=> b!7092459 (= e!4263563 e!4263565)))

(assert (=> b!7092459 (= c!1323625 ((_ is Concat!26648) (regOne!36118 r!11554)))))

(declare-fun bm!645126 () Bool)

(assert (=> bm!645126 (= call!645128 call!645131)))

(declare-fun b!7092460 () Bool)

(declare-fun e!4263567 () (InoxSet Context!13598))

(assert (=> b!7092460 (= e!4263567 e!4263564)))

(assert (=> b!7092460 (= c!1323627 ((_ is Union!17803) (regOne!36118 r!11554)))))

(declare-fun b!7092461 () Bool)

(declare-fun e!4263566 () Bool)

(assert (=> b!7092461 (= c!1323624 e!4263566)))

(declare-fun res!2896508 () Bool)

(assert (=> b!7092461 (=> (not res!2896508) (not e!4263566))))

(assert (=> b!7092461 (= res!2896508 ((_ is Concat!26648) (regOne!36118 r!11554)))))

(assert (=> b!7092461 (= e!4263564 e!4263563)))

(declare-fun b!7092462 () Bool)

(assert (=> b!7092462 (= e!4263562 ((as const (Array Context!13598 Bool)) false))))

(declare-fun b!7092463 () Bool)

(assert (=> b!7092463 (= e!4263566 (nullable!7443 (regOne!36118 (regOne!36118 r!11554))))))

(declare-fun bm!645125 () Bool)

(assert (=> bm!645125 (= call!645127 call!645129)))

(declare-fun d!2217179 () Bool)

(declare-fun c!1323626 () Bool)

(assert (=> d!2217179 (= c!1323626 (and ((_ is ElementMatch!17803) (regOne!36118 r!11554)) (= (c!1323520 (regOne!36118 r!11554)) a!1901)))))

(assert (=> d!2217179 (= (derivationStepZipperDown!2366 (regOne!36118 r!11554) (Context!13599 ($colon$colon!2710 lt!2556317 (regTwo!36118 r!11554))) a!1901) e!4263567)))

(declare-fun b!7092464 () Bool)

(assert (=> b!7092464 (= e!4263563 ((_ map or) call!645130 call!645127))))

(declare-fun b!7092465 () Bool)

(assert (=> b!7092465 (= e!4263567 (store ((as const (Array Context!13598 Bool)) false) (Context!13599 ($colon$colon!2710 lt!2556317 (regTwo!36118 r!11554))) true))))

(assert (= (and d!2217179 c!1323626) b!7092465))

(assert (= (and d!2217179 (not c!1323626)) b!7092460))

(assert (= (and b!7092460 c!1323627) b!7092457))

(assert (= (and b!7092460 (not c!1323627)) b!7092461))

(assert (= (and b!7092461 res!2896508) b!7092463))

(assert (= (and b!7092461 c!1323624) b!7092464))

(assert (= (and b!7092461 (not c!1323624)) b!7092459))

(assert (= (and b!7092459 c!1323625) b!7092456))

(assert (= (and b!7092459 (not c!1323625)) b!7092458))

(assert (= (and b!7092458 c!1323628) b!7092455))

(assert (= (and b!7092458 (not c!1323628)) b!7092462))

(assert (= (or b!7092456 b!7092455) bm!645126))

(assert (= (or b!7092456 b!7092455) bm!645124))

(assert (= (or b!7092464 bm!645124) bm!645125))

(assert (= (or b!7092464 bm!645126) bm!645121))

(assert (= (or b!7092457 b!7092464) bm!645122))

(assert (= (or b!7092457 bm!645125) bm!645123))

(declare-fun m!7821228 () Bool)

(assert (=> bm!645123 m!7821228))

(assert (=> b!7092463 m!7821094))

(declare-fun m!7821230 () Bool)

(assert (=> bm!645121 m!7821230))

(declare-fun m!7821232 () Bool)

(assert (=> bm!645122 m!7821232))

(declare-fun m!7821234 () Bool)

(assert (=> b!7092465 m!7821234))

(assert (=> b!7092128 d!2217179))

(declare-fun d!2217185 () Bool)

(assert (=> d!2217185 (= ($colon$colon!2710 lt!2556317 (regTwo!36118 r!11554)) (Cons!68642 (regTwo!36118 r!11554) lt!2556317))))

(assert (=> b!7092128 d!2217185))

(declare-fun b!7092483 () Bool)

(declare-fun e!4263572 () Bool)

(declare-fun tp!1948487 () Bool)

(assert (=> b!7092483 (= e!4263572 tp!1948487)))

(declare-fun b!7092482 () Bool)

(declare-fun tp!1948489 () Bool)

(declare-fun tp!1948488 () Bool)

(assert (=> b!7092482 (= e!4263572 (and tp!1948489 tp!1948488))))

(declare-fun b!7092481 () Bool)

(assert (=> b!7092481 (= e!4263572 tp_is_empty!44839)))

(declare-fun b!7092484 () Bool)

(declare-fun tp!1948486 () Bool)

(declare-fun tp!1948490 () Bool)

(assert (=> b!7092484 (= e!4263572 (and tp!1948486 tp!1948490))))

(assert (=> b!7092133 (= tp!1948427 e!4263572)))

(assert (= (and b!7092133 ((_ is ElementMatch!17803) (reg!18132 r!11554))) b!7092481))

(assert (= (and b!7092133 ((_ is Concat!26648) (reg!18132 r!11554))) b!7092482))

(assert (= (and b!7092133 ((_ is Star!17803) (reg!18132 r!11554))) b!7092483))

(assert (= (and b!7092133 ((_ is Union!17803) (reg!18132 r!11554))) b!7092484))

(declare-fun b!7092489 () Bool)

(declare-fun e!4263575 () Bool)

(declare-fun tp!1948495 () Bool)

(declare-fun tp!1948496 () Bool)

(assert (=> b!7092489 (= e!4263575 (and tp!1948495 tp!1948496))))

(assert (=> b!7092127 (= tp!1948432 e!4263575)))

(assert (= (and b!7092127 ((_ is Cons!68642) (exprs!7299 auxCtx!45))) b!7092489))

(declare-fun b!7092492 () Bool)

(declare-fun e!4263576 () Bool)

(declare-fun tp!1948498 () Bool)

(assert (=> b!7092492 (= e!4263576 tp!1948498)))

(declare-fun b!7092491 () Bool)

(declare-fun tp!1948500 () Bool)

(declare-fun tp!1948499 () Bool)

(assert (=> b!7092491 (= e!4263576 (and tp!1948500 tp!1948499))))

(declare-fun b!7092490 () Bool)

(assert (=> b!7092490 (= e!4263576 tp_is_empty!44839)))

(declare-fun b!7092493 () Bool)

(declare-fun tp!1948497 () Bool)

(declare-fun tp!1948501 () Bool)

(assert (=> b!7092493 (= e!4263576 (and tp!1948497 tp!1948501))))

(assert (=> b!7092136 (= tp!1948429 e!4263576)))

(assert (= (and b!7092136 ((_ is ElementMatch!17803) (regOne!36119 r!11554))) b!7092490))

(assert (= (and b!7092136 ((_ is Concat!26648) (regOne!36119 r!11554))) b!7092491))

(assert (= (and b!7092136 ((_ is Star!17803) (regOne!36119 r!11554))) b!7092492))

(assert (= (and b!7092136 ((_ is Union!17803) (regOne!36119 r!11554))) b!7092493))

(declare-fun b!7092496 () Bool)

(declare-fun e!4263577 () Bool)

(declare-fun tp!1948503 () Bool)

(assert (=> b!7092496 (= e!4263577 tp!1948503)))

(declare-fun b!7092495 () Bool)

(declare-fun tp!1948505 () Bool)

(declare-fun tp!1948504 () Bool)

(assert (=> b!7092495 (= e!4263577 (and tp!1948505 tp!1948504))))

(declare-fun b!7092494 () Bool)

(assert (=> b!7092494 (= e!4263577 tp_is_empty!44839)))

(declare-fun b!7092497 () Bool)

(declare-fun tp!1948502 () Bool)

(declare-fun tp!1948506 () Bool)

(assert (=> b!7092497 (= e!4263577 (and tp!1948502 tp!1948506))))

(assert (=> b!7092136 (= tp!1948428 e!4263577)))

(assert (= (and b!7092136 ((_ is ElementMatch!17803) (regTwo!36119 r!11554))) b!7092494))

(assert (= (and b!7092136 ((_ is Concat!26648) (regTwo!36119 r!11554))) b!7092495))

(assert (= (and b!7092136 ((_ is Star!17803) (regTwo!36119 r!11554))) b!7092496))

(assert (= (and b!7092136 ((_ is Union!17803) (regTwo!36119 r!11554))) b!7092497))

(declare-fun b!7092500 () Bool)

(declare-fun e!4263578 () Bool)

(declare-fun tp!1948508 () Bool)

(assert (=> b!7092500 (= e!4263578 tp!1948508)))

(declare-fun b!7092499 () Bool)

(declare-fun tp!1948510 () Bool)

(declare-fun tp!1948509 () Bool)

(assert (=> b!7092499 (= e!4263578 (and tp!1948510 tp!1948509))))

(declare-fun b!7092498 () Bool)

(assert (=> b!7092498 (= e!4263578 tp_is_empty!44839)))

(declare-fun b!7092501 () Bool)

(declare-fun tp!1948507 () Bool)

(declare-fun tp!1948511 () Bool)

(assert (=> b!7092501 (= e!4263578 (and tp!1948507 tp!1948511))))

(assert (=> b!7092125 (= tp!1948426 e!4263578)))

(assert (= (and b!7092125 ((_ is ElementMatch!17803) (regOne!36118 r!11554))) b!7092498))

(assert (= (and b!7092125 ((_ is Concat!26648) (regOne!36118 r!11554))) b!7092499))

(assert (= (and b!7092125 ((_ is Star!17803) (regOne!36118 r!11554))) b!7092500))

(assert (= (and b!7092125 ((_ is Union!17803) (regOne!36118 r!11554))) b!7092501))

(declare-fun b!7092504 () Bool)

(declare-fun e!4263579 () Bool)

(declare-fun tp!1948513 () Bool)

(assert (=> b!7092504 (= e!4263579 tp!1948513)))

(declare-fun b!7092503 () Bool)

(declare-fun tp!1948515 () Bool)

(declare-fun tp!1948514 () Bool)

(assert (=> b!7092503 (= e!4263579 (and tp!1948515 tp!1948514))))

(declare-fun b!7092502 () Bool)

(assert (=> b!7092502 (= e!4263579 tp_is_empty!44839)))

(declare-fun b!7092505 () Bool)

(declare-fun tp!1948512 () Bool)

(declare-fun tp!1948516 () Bool)

(assert (=> b!7092505 (= e!4263579 (and tp!1948512 tp!1948516))))

(assert (=> b!7092125 (= tp!1948431 e!4263579)))

(assert (= (and b!7092125 ((_ is ElementMatch!17803) (regTwo!36118 r!11554))) b!7092502))

(assert (= (and b!7092125 ((_ is Concat!26648) (regTwo!36118 r!11554))) b!7092503))

(assert (= (and b!7092125 ((_ is Star!17803) (regTwo!36118 r!11554))) b!7092504))

(assert (= (and b!7092125 ((_ is Union!17803) (regTwo!36118 r!11554))) b!7092505))

(declare-fun b!7092506 () Bool)

(declare-fun e!4263580 () Bool)

(declare-fun tp!1948517 () Bool)

(declare-fun tp!1948518 () Bool)

(assert (=> b!7092506 (= e!4263580 (and tp!1948517 tp!1948518))))

(assert (=> b!7092130 (= tp!1948430 e!4263580)))

(assert (= (and b!7092130 ((_ is Cons!68642) (exprs!7299 c!9994))) b!7092506))

(declare-fun b_lambda!271045 () Bool)

(assert (= b_lambda!271033 (or b!7092132 b_lambda!271045)))

(declare-fun bs!1883613 () Bool)

(declare-fun d!2217187 () Bool)

(assert (= bs!1883613 (and d!2217187 b!7092132)))

(assert (=> bs!1883613 (= (dynLambda!28002 lambda!429981 (h!75090 (exprs!7299 auxCtx!45))) (validRegex!9078 (h!75090 (exprs!7299 auxCtx!45))))))

(declare-fun m!7821236 () Bool)

(assert (=> bs!1883613 m!7821236))

(assert (=> b!7092215 d!2217187))

(declare-fun b_lambda!271047 () Bool)

(assert (= b_lambda!271037 (or b!7092132 b_lambda!271047)))

(declare-fun bs!1883614 () Bool)

(declare-fun d!2217189 () Bool)

(assert (= bs!1883614 (and d!2217189 b!7092132)))

(assert (=> bs!1883614 (= (dynLambda!28002 lambda!429981 (h!75090 (exprs!7299 c!9994))) (validRegex!9078 (h!75090 (exprs!7299 c!9994))))))

(declare-fun m!7821238 () Bool)

(assert (=> bs!1883614 m!7821238))

(assert (=> b!7092398 d!2217189))

(check-sat (not bm!645068) (not b!7092495) (not bm!645035) (not d!2217097) (not d!2217103) (not d!2217101) (not b!7092410) (not d!2217107) (not b!7092225) (not b!7092482) (not bs!1883613) (not b!7092496) (not b!7092503) (not d!2217161) tp_is_empty!44839 (not bm!645014) (not bm!645110) (not bm!645109) (not b!7092506) (not d!2217085) (not d!2217139) (not b!7092484) (not bm!645115) (not b!7092491) (not b_lambda!271045) (not bs!1883614) (not b!7092298) (not bm!645063) (not d!2217083) (not bm!645034) (not bm!645123) (not d!2217145) (not bm!645105) (not b!7092492) (not b!7092501) (not b_lambda!271047) (not d!2217099) (not b!7092497) (not bm!645103) (not bm!645121) (not bm!645117) (not b!7092489) (not d!2217089) (not b!7092504) (not d!2217173) (not b!7092315) (not b!7092197) (not b!7092500) (not bm!645111) (not b!7092227) (not b!7092399) (not d!2217095) (not bm!645067) (not b!7092463) (not b!7092395) (not bm!645013) (not b!7092436) (not b!7092483) (not bm!645104) (not d!2217153) (not b!7092228) (not b!7092499) (not bm!645062) (not bm!645061) (not b!7092198) (not bm!645069) (not b!7092216) (not bm!645122) (not d!2217147) (not bm!645116) (not b!7092493) (not b!7092165) (not b!7092505))
(check-sat)
