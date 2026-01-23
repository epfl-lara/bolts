; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691290 () Bool)

(assert start!691290)

(declare-fun b!7101305 () Bool)

(declare-fun res!2899503 () Bool)

(declare-fun e!4268328 () Bool)

(assert (=> b!7101305 (=> (not res!2899503) (not e!4268328))))

(declare-datatypes ((C!36034 0))(
  ( (C!36035 (val!27723 Int)) )
))
(declare-datatypes ((Regex!17882 0))(
  ( (ElementMatch!17882 (c!1325027 C!36034)) (Concat!26727 (regOne!36276 Regex!17882) (regTwo!36276 Regex!17882)) (EmptyExpr!17882) (Star!17882 (reg!18211 Regex!17882)) (EmptyLang!17882) (Union!17882 (regOne!36277 Regex!17882) (regTwo!36277 Regex!17882)) )
))
(declare-fun r!11554 () Regex!17882)

(declare-fun nullable!7520 (Regex!17882) Bool)

(assert (=> b!7101305 (= res!2899503 (nullable!7520 (regOne!36276 r!11554)))))

(declare-datatypes ((List!68843 0))(
  ( (Nil!68719) (Cons!68719 (h!75167 Regex!17882) (t!382654 List!68843)) )
))
(declare-datatypes ((Context!13752 0))(
  ( (Context!13753 (exprs!7376 List!68843)) )
))
(declare-fun lt!2558174 () Context!13752)

(declare-fun b!7101306 () Bool)

(declare-fun a!1901 () C!36034)

(declare-fun lt!2558175 () List!68843)

(declare-fun e!4268327 () Bool)

(declare-fun derivationStepZipperDown!2411 (Regex!17882 Context!13752 C!36034) (Set Context!13752))

(declare-fun $colon$colon!2753 (List!68843 Regex!17882) List!68843)

(assert (=> b!7101306 (= e!4268327 (not (= (derivationStepZipperDown!2411 r!11554 lt!2558174 a!1901) (set.union (derivationStepZipperDown!2411 (regOne!36276 r!11554) (Context!13753 ($colon$colon!2753 lt!2558175 (regTwo!36276 r!11554))) a!1901) (derivationStepZipperDown!2411 (regTwo!36276 r!11554) lt!2558174 a!1901)))))))

(declare-fun b!7101307 () Bool)

(declare-fun e!4268329 () Bool)

(declare-fun tp!1952289 () Bool)

(assert (=> b!7101307 (= e!4268329 tp!1952289)))

(declare-fun b!7101308 () Bool)

(declare-fun tp!1952290 () Bool)

(declare-fun tp!1952295 () Bool)

(assert (=> b!7101308 (= e!4268329 (and tp!1952290 tp!1952295))))

(declare-fun res!2899506 () Bool)

(assert (=> start!691290 (=> (not res!2899506) (not e!4268328))))

(declare-fun validRegex!9155 (Regex!17882) Bool)

(assert (=> start!691290 (= res!2899506 (validRegex!9155 r!11554))))

(assert (=> start!691290 e!4268328))

(assert (=> start!691290 e!4268329))

(declare-fun tp_is_empty!44997 () Bool)

(assert (=> start!691290 tp_is_empty!44997))

(declare-fun c!9994 () Context!13752)

(declare-fun e!4268326 () Bool)

(declare-fun inv!87569 (Context!13752) Bool)

(assert (=> start!691290 (and (inv!87569 c!9994) e!4268326)))

(declare-fun auxCtx!45 () Context!13752)

(declare-fun e!4268325 () Bool)

(assert (=> start!691290 (and (inv!87569 auxCtx!45) e!4268325)))

(declare-fun b!7101309 () Bool)

(assert (=> b!7101309 (= e!4268329 tp_is_empty!44997)))

(declare-fun b!7101310 () Bool)

(assert (=> b!7101310 (= e!4268328 e!4268327)))

(declare-fun res!2899505 () Bool)

(assert (=> b!7101310 (=> (not res!2899505) (not e!4268327))))

(assert (=> b!7101310 (= res!2899505 (validRegex!9155 (regTwo!36276 r!11554)))))

(declare-fun lambda!431070 () Int)

(declare-datatypes ((Unit!162435 0))(
  ( (Unit!162436) )
))
(declare-fun lt!2558177 () Unit!162435)

(declare-fun lemmaConcatPreservesForall!1167 (List!68843 List!68843 Int) Unit!162435)

(assert (=> b!7101310 (= lt!2558177 (lemmaConcatPreservesForall!1167 (exprs!7376 c!9994) (exprs!7376 auxCtx!45) lambda!431070))))

(assert (=> b!7101310 (= lt!2558174 (Context!13753 lt!2558175))))

(declare-fun ++!16034 (List!68843 List!68843) List!68843)

(assert (=> b!7101310 (= lt!2558175 (++!16034 (exprs!7376 c!9994) (exprs!7376 auxCtx!45)))))

(declare-fun lt!2558176 () Unit!162435)

(assert (=> b!7101310 (= lt!2558176 (lemmaConcatPreservesForall!1167 (exprs!7376 c!9994) (exprs!7376 auxCtx!45) lambda!431070))))

(declare-fun lt!2558173 () Unit!162435)

(assert (=> b!7101310 (= lt!2558173 (lemmaConcatPreservesForall!1167 (exprs!7376 c!9994) (exprs!7376 auxCtx!45) lambda!431070))))

(declare-fun b!7101311 () Bool)

(declare-fun res!2899504 () Bool)

(assert (=> b!7101311 (=> (not res!2899504) (not e!4268328))))

(assert (=> b!7101311 (= res!2899504 (and (or (not (is-ElementMatch!17882 r!11554)) (not (= (c!1325027 r!11554) a!1901))) (not (is-Union!17882 r!11554)) (is-Concat!26727 r!11554)))))

(declare-fun b!7101312 () Bool)

(declare-fun tp!1952291 () Bool)

(declare-fun tp!1952293 () Bool)

(assert (=> b!7101312 (= e!4268329 (and tp!1952291 tp!1952293))))

(declare-fun b!7101313 () Bool)

(declare-fun tp!1952292 () Bool)

(assert (=> b!7101313 (= e!4268325 tp!1952292)))

(declare-fun b!7101314 () Bool)

(declare-fun tp!1952294 () Bool)

(assert (=> b!7101314 (= e!4268326 tp!1952294)))

(assert (= (and start!691290 res!2899506) b!7101311))

(assert (= (and b!7101311 res!2899504) b!7101305))

(assert (= (and b!7101305 res!2899503) b!7101310))

(assert (= (and b!7101310 res!2899505) b!7101306))

(assert (= (and start!691290 (is-ElementMatch!17882 r!11554)) b!7101309))

(assert (= (and start!691290 (is-Concat!26727 r!11554)) b!7101312))

(assert (= (and start!691290 (is-Star!17882 r!11554)) b!7101307))

(assert (= (and start!691290 (is-Union!17882 r!11554)) b!7101308))

(assert (= start!691290 b!7101314))

(assert (= start!691290 b!7101313))

(declare-fun m!7826572 () Bool)

(assert (=> b!7101305 m!7826572))

(declare-fun m!7826574 () Bool)

(assert (=> b!7101306 m!7826574))

(declare-fun m!7826576 () Bool)

(assert (=> b!7101306 m!7826576))

(declare-fun m!7826578 () Bool)

(assert (=> b!7101306 m!7826578))

(declare-fun m!7826580 () Bool)

(assert (=> b!7101306 m!7826580))

(declare-fun m!7826582 () Bool)

(assert (=> start!691290 m!7826582))

(declare-fun m!7826584 () Bool)

(assert (=> start!691290 m!7826584))

(declare-fun m!7826586 () Bool)

(assert (=> start!691290 m!7826586))

(declare-fun m!7826588 () Bool)

(assert (=> b!7101310 m!7826588))

(assert (=> b!7101310 m!7826588))

(declare-fun m!7826590 () Bool)

(assert (=> b!7101310 m!7826590))

(declare-fun m!7826592 () Bool)

(assert (=> b!7101310 m!7826592))

(assert (=> b!7101310 m!7826588))

(push 1)

(assert (not b!7101314))

(assert (not b!7101306))

(assert (not start!691290))

(assert (not b!7101305))

(assert (not b!7101312))

(assert (not b!7101313))

(assert (not b!7101308))

(assert (not b!7101307))

(assert tp_is_empty!44997)

(assert (not b!7101310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!646639 () Bool)

(declare-fun call!646644 () List!68843)

(declare-fun call!646645 () List!68843)

(assert (=> bm!646639 (= call!646644 call!646645)))

(declare-fun b!7101367 () Bool)

(declare-fun e!4268361 () Bool)

(assert (=> b!7101367 (= e!4268361 (nullable!7520 (regOne!36276 r!11554)))))

(declare-fun b!7101368 () Bool)

(declare-fun e!4268358 () (Set Context!13752))

(declare-fun call!646648 () (Set Context!13752))

(declare-fun call!646646 () (Set Context!13752))

(assert (=> b!7101368 (= e!4268358 (set.union call!646648 call!646646))))

(declare-fun b!7101369 () Bool)

(declare-fun e!4268357 () (Set Context!13752))

(declare-fun call!646647 () (Set Context!13752))

(assert (=> b!7101369 (= e!4268357 call!646647)))

(declare-fun bm!646640 () Bool)

(declare-fun c!1325043 () Bool)

(declare-fun c!1325041 () Bool)

(declare-fun c!1325039 () Bool)

(assert (=> bm!646640 (= call!646648 (derivationStepZipperDown!2411 (ite c!1325041 (regOne!36277 r!11554) (ite c!1325043 (regTwo!36276 r!11554) (ite c!1325039 (regOne!36276 r!11554) (reg!18211 r!11554)))) (ite (or c!1325041 c!1325043) lt!2558174 (Context!13753 call!646644)) a!1901))))

(declare-fun b!7101370 () Bool)

(declare-fun e!4268362 () (Set Context!13752))

(declare-fun e!4268359 () (Set Context!13752))

(assert (=> b!7101370 (= e!4268362 e!4268359)))

(assert (=> b!7101370 (= c!1325039 (is-Concat!26727 r!11554))))

(declare-fun bm!646641 () Bool)

(assert (=> bm!646641 (= call!646645 ($colon$colon!2753 (exprs!7376 lt!2558174) (ite (or c!1325043 c!1325039) (regTwo!36276 r!11554) r!11554)))))

(declare-fun bm!646642 () Bool)

(declare-fun call!646649 () (Set Context!13752))

(assert (=> bm!646642 (= call!646649 call!646648)))

(declare-fun d!2218635 () Bool)

(declare-fun c!1325042 () Bool)

(assert (=> d!2218635 (= c!1325042 (and (is-ElementMatch!17882 r!11554) (= (c!1325027 r!11554) a!1901)))))

(declare-fun e!4268360 () (Set Context!13752))

(assert (=> d!2218635 (= (derivationStepZipperDown!2411 r!11554 lt!2558174 a!1901) e!4268360)))

(declare-fun b!7101371 () Bool)

(assert (=> b!7101371 (= c!1325043 e!4268361)))

(declare-fun res!2899521 () Bool)

(assert (=> b!7101371 (=> (not res!2899521) (not e!4268361))))

(assert (=> b!7101371 (= res!2899521 (is-Concat!26727 r!11554))))

(assert (=> b!7101371 (= e!4268358 e!4268362)))

(declare-fun b!7101372 () Bool)

(assert (=> b!7101372 (= e!4268360 (set.insert lt!2558174 (as set.empty (Set Context!13752))))))

(declare-fun b!7101373 () Bool)

(assert (=> b!7101373 (= e!4268359 call!646647)))

(declare-fun b!7101374 () Bool)

(assert (=> b!7101374 (= e!4268360 e!4268358)))

(assert (=> b!7101374 (= c!1325041 (is-Union!17882 r!11554))))

(declare-fun b!7101375 () Bool)

(assert (=> b!7101375 (= e!4268362 (set.union call!646646 call!646649))))

(declare-fun b!7101376 () Bool)

(declare-fun c!1325040 () Bool)

(assert (=> b!7101376 (= c!1325040 (is-Star!17882 r!11554))))

(assert (=> b!7101376 (= e!4268359 e!4268357)))

(declare-fun bm!646643 () Bool)

(assert (=> bm!646643 (= call!646647 call!646649)))

(declare-fun bm!646644 () Bool)

(assert (=> bm!646644 (= call!646646 (derivationStepZipperDown!2411 (ite c!1325041 (regTwo!36277 r!11554) (regOne!36276 r!11554)) (ite c!1325041 lt!2558174 (Context!13753 call!646645)) a!1901))))

(declare-fun b!7101377 () Bool)

(assert (=> b!7101377 (= e!4268357 (as set.empty (Set Context!13752)))))

(assert (= (and d!2218635 c!1325042) b!7101372))

(assert (= (and d!2218635 (not c!1325042)) b!7101374))

(assert (= (and b!7101374 c!1325041) b!7101368))

(assert (= (and b!7101374 (not c!1325041)) b!7101371))

(assert (= (and b!7101371 res!2899521) b!7101367))

(assert (= (and b!7101371 c!1325043) b!7101375))

(assert (= (and b!7101371 (not c!1325043)) b!7101370))

(assert (= (and b!7101370 c!1325039) b!7101373))

(assert (= (and b!7101370 (not c!1325039)) b!7101376))

(assert (= (and b!7101376 c!1325040) b!7101369))

(assert (= (and b!7101376 (not c!1325040)) b!7101377))

(assert (= (or b!7101373 b!7101369) bm!646639))

(assert (= (or b!7101373 b!7101369) bm!646643))

(assert (= (or b!7101375 bm!646643) bm!646642))

(assert (= (or b!7101375 bm!646639) bm!646641))

(assert (= (or b!7101368 b!7101375) bm!646644))

(assert (= (or b!7101368 bm!646642) bm!646640))

(declare-fun m!7826622 () Bool)

(assert (=> bm!646641 m!7826622))

(declare-fun m!7826624 () Bool)

(assert (=> b!7101372 m!7826624))

(declare-fun m!7826626 () Bool)

(assert (=> bm!646640 m!7826626))

(assert (=> b!7101367 m!7826572))

(declare-fun m!7826628 () Bool)

(assert (=> bm!646644 m!7826628))

(assert (=> b!7101306 d!2218635))

(declare-fun bm!646645 () Bool)

(declare-fun call!646650 () List!68843)

(declare-fun call!646651 () List!68843)

(assert (=> bm!646645 (= call!646650 call!646651)))

(declare-fun b!7101378 () Bool)

(declare-fun e!4268367 () Bool)

(assert (=> b!7101378 (= e!4268367 (nullable!7520 (regOne!36276 (regOne!36276 r!11554))))))

(declare-fun b!7101379 () Bool)

(declare-fun e!4268364 () (Set Context!13752))

(declare-fun call!646654 () (Set Context!13752))

(declare-fun call!646652 () (Set Context!13752))

(assert (=> b!7101379 (= e!4268364 (set.union call!646654 call!646652))))

(declare-fun b!7101380 () Bool)

(declare-fun e!4268363 () (Set Context!13752))

(declare-fun call!646653 () (Set Context!13752))

(assert (=> b!7101380 (= e!4268363 call!646653)))

(declare-fun c!1325048 () Bool)

(declare-fun c!1325046 () Bool)

(declare-fun bm!646646 () Bool)

(declare-fun c!1325044 () Bool)

(assert (=> bm!646646 (= call!646654 (derivationStepZipperDown!2411 (ite c!1325046 (regOne!36277 (regOne!36276 r!11554)) (ite c!1325048 (regTwo!36276 (regOne!36276 r!11554)) (ite c!1325044 (regOne!36276 (regOne!36276 r!11554)) (reg!18211 (regOne!36276 r!11554))))) (ite (or c!1325046 c!1325048) (Context!13753 ($colon$colon!2753 lt!2558175 (regTwo!36276 r!11554))) (Context!13753 call!646650)) a!1901))))

(declare-fun b!7101381 () Bool)

(declare-fun e!4268368 () (Set Context!13752))

(declare-fun e!4268365 () (Set Context!13752))

(assert (=> b!7101381 (= e!4268368 e!4268365)))

(assert (=> b!7101381 (= c!1325044 (is-Concat!26727 (regOne!36276 r!11554)))))

(declare-fun bm!646647 () Bool)

(assert (=> bm!646647 (= call!646651 ($colon$colon!2753 (exprs!7376 (Context!13753 ($colon$colon!2753 lt!2558175 (regTwo!36276 r!11554)))) (ite (or c!1325048 c!1325044) (regTwo!36276 (regOne!36276 r!11554)) (regOne!36276 r!11554))))))

(declare-fun bm!646648 () Bool)

(declare-fun call!646655 () (Set Context!13752))

(assert (=> bm!646648 (= call!646655 call!646654)))

(declare-fun d!2218641 () Bool)

(declare-fun c!1325047 () Bool)

(assert (=> d!2218641 (= c!1325047 (and (is-ElementMatch!17882 (regOne!36276 r!11554)) (= (c!1325027 (regOne!36276 r!11554)) a!1901)))))

(declare-fun e!4268366 () (Set Context!13752))

(assert (=> d!2218641 (= (derivationStepZipperDown!2411 (regOne!36276 r!11554) (Context!13753 ($colon$colon!2753 lt!2558175 (regTwo!36276 r!11554))) a!1901) e!4268366)))

(declare-fun b!7101382 () Bool)

(assert (=> b!7101382 (= c!1325048 e!4268367)))

(declare-fun res!2899522 () Bool)

(assert (=> b!7101382 (=> (not res!2899522) (not e!4268367))))

(assert (=> b!7101382 (= res!2899522 (is-Concat!26727 (regOne!36276 r!11554)))))

(assert (=> b!7101382 (= e!4268364 e!4268368)))

(declare-fun b!7101383 () Bool)

(assert (=> b!7101383 (= e!4268366 (set.insert (Context!13753 ($colon$colon!2753 lt!2558175 (regTwo!36276 r!11554))) (as set.empty (Set Context!13752))))))

(declare-fun b!7101384 () Bool)

(assert (=> b!7101384 (= e!4268365 call!646653)))

(declare-fun b!7101385 () Bool)

(assert (=> b!7101385 (= e!4268366 e!4268364)))

(assert (=> b!7101385 (= c!1325046 (is-Union!17882 (regOne!36276 r!11554)))))

(declare-fun b!7101386 () Bool)

(assert (=> b!7101386 (= e!4268368 (set.union call!646652 call!646655))))

(declare-fun b!7101387 () Bool)

(declare-fun c!1325045 () Bool)

(assert (=> b!7101387 (= c!1325045 (is-Star!17882 (regOne!36276 r!11554)))))

(assert (=> b!7101387 (= e!4268365 e!4268363)))

(declare-fun bm!646649 () Bool)

(assert (=> bm!646649 (= call!646653 call!646655)))

(declare-fun bm!646650 () Bool)

(assert (=> bm!646650 (= call!646652 (derivationStepZipperDown!2411 (ite c!1325046 (regTwo!36277 (regOne!36276 r!11554)) (regOne!36276 (regOne!36276 r!11554))) (ite c!1325046 (Context!13753 ($colon$colon!2753 lt!2558175 (regTwo!36276 r!11554))) (Context!13753 call!646651)) a!1901))))

(declare-fun b!7101388 () Bool)

(assert (=> b!7101388 (= e!4268363 (as set.empty (Set Context!13752)))))

(assert (= (and d!2218641 c!1325047) b!7101383))

(assert (= (and d!2218641 (not c!1325047)) b!7101385))

(assert (= (and b!7101385 c!1325046) b!7101379))

(assert (= (and b!7101385 (not c!1325046)) b!7101382))

(assert (= (and b!7101382 res!2899522) b!7101378))

(assert (= (and b!7101382 c!1325048) b!7101386))

(assert (= (and b!7101382 (not c!1325048)) b!7101381))

(assert (= (and b!7101381 c!1325044) b!7101384))

(assert (= (and b!7101381 (not c!1325044)) b!7101387))

(assert (= (and b!7101387 c!1325045) b!7101380))

(assert (= (and b!7101387 (not c!1325045)) b!7101388))

(assert (= (or b!7101384 b!7101380) bm!646645))

(assert (= (or b!7101384 b!7101380) bm!646649))

(assert (= (or b!7101386 bm!646649) bm!646648))

(assert (= (or b!7101386 bm!646645) bm!646647))

(assert (= (or b!7101379 b!7101386) bm!646650))

(assert (= (or b!7101379 bm!646648) bm!646646))

(declare-fun m!7826630 () Bool)

(assert (=> bm!646647 m!7826630))

(declare-fun m!7826632 () Bool)

(assert (=> b!7101383 m!7826632))

(declare-fun m!7826634 () Bool)

(assert (=> bm!646646 m!7826634))

(declare-fun m!7826636 () Bool)

(assert (=> b!7101378 m!7826636))

(declare-fun m!7826638 () Bool)

(assert (=> bm!646650 m!7826638))

(assert (=> b!7101306 d!2218641))

(declare-fun d!2218643 () Bool)

(assert (=> d!2218643 (= ($colon$colon!2753 lt!2558175 (regTwo!36276 r!11554)) (Cons!68719 (regTwo!36276 r!11554) lt!2558175))))

(assert (=> b!7101306 d!2218643))

(declare-fun bm!646651 () Bool)

(declare-fun call!646656 () List!68843)

(declare-fun call!646657 () List!68843)

(assert (=> bm!646651 (= call!646656 call!646657)))

(declare-fun b!7101397 () Bool)

(declare-fun e!4268379 () Bool)

(assert (=> b!7101397 (= e!4268379 (nullable!7520 (regOne!36276 (regTwo!36276 r!11554))))))

(declare-fun b!7101398 () Bool)

(declare-fun e!4268376 () (Set Context!13752))

(declare-fun call!646660 () (Set Context!13752))

(declare-fun call!646658 () (Set Context!13752))

(assert (=> b!7101398 (= e!4268376 (set.union call!646660 call!646658))))

(declare-fun b!7101399 () Bool)

(declare-fun e!4268375 () (Set Context!13752))

(declare-fun call!646659 () (Set Context!13752))

(assert (=> b!7101399 (= e!4268375 call!646659)))

(declare-fun c!1325055 () Bool)

(declare-fun bm!646652 () Bool)

(declare-fun c!1325053 () Bool)

(declare-fun c!1325051 () Bool)

(assert (=> bm!646652 (= call!646660 (derivationStepZipperDown!2411 (ite c!1325053 (regOne!36277 (regTwo!36276 r!11554)) (ite c!1325055 (regTwo!36276 (regTwo!36276 r!11554)) (ite c!1325051 (regOne!36276 (regTwo!36276 r!11554)) (reg!18211 (regTwo!36276 r!11554))))) (ite (or c!1325053 c!1325055) lt!2558174 (Context!13753 call!646656)) a!1901))))

(declare-fun b!7101400 () Bool)

(declare-fun e!4268380 () (Set Context!13752))

(declare-fun e!4268377 () (Set Context!13752))

(assert (=> b!7101400 (= e!4268380 e!4268377)))

(assert (=> b!7101400 (= c!1325051 (is-Concat!26727 (regTwo!36276 r!11554)))))

(declare-fun bm!646653 () Bool)

(assert (=> bm!646653 (= call!646657 ($colon$colon!2753 (exprs!7376 lt!2558174) (ite (or c!1325055 c!1325051) (regTwo!36276 (regTwo!36276 r!11554)) (regTwo!36276 r!11554))))))

(declare-fun bm!646654 () Bool)

(declare-fun call!646661 () (Set Context!13752))

(assert (=> bm!646654 (= call!646661 call!646660)))

(declare-fun d!2218645 () Bool)

(declare-fun c!1325054 () Bool)

(assert (=> d!2218645 (= c!1325054 (and (is-ElementMatch!17882 (regTwo!36276 r!11554)) (= (c!1325027 (regTwo!36276 r!11554)) a!1901)))))

(declare-fun e!4268378 () (Set Context!13752))

(assert (=> d!2218645 (= (derivationStepZipperDown!2411 (regTwo!36276 r!11554) lt!2558174 a!1901) e!4268378)))

(declare-fun b!7101401 () Bool)

(assert (=> b!7101401 (= c!1325055 e!4268379)))

(declare-fun res!2899527 () Bool)

(assert (=> b!7101401 (=> (not res!2899527) (not e!4268379))))

(assert (=> b!7101401 (= res!2899527 (is-Concat!26727 (regTwo!36276 r!11554)))))

(assert (=> b!7101401 (= e!4268376 e!4268380)))

(declare-fun b!7101402 () Bool)

(assert (=> b!7101402 (= e!4268378 (set.insert lt!2558174 (as set.empty (Set Context!13752))))))

(declare-fun b!7101403 () Bool)

(assert (=> b!7101403 (= e!4268377 call!646659)))

(declare-fun b!7101404 () Bool)

(assert (=> b!7101404 (= e!4268378 e!4268376)))

(assert (=> b!7101404 (= c!1325053 (is-Union!17882 (regTwo!36276 r!11554)))))

(declare-fun b!7101405 () Bool)

(assert (=> b!7101405 (= e!4268380 (set.union call!646658 call!646661))))

(declare-fun b!7101406 () Bool)

(declare-fun c!1325052 () Bool)

(assert (=> b!7101406 (= c!1325052 (is-Star!17882 (regTwo!36276 r!11554)))))

(assert (=> b!7101406 (= e!4268377 e!4268375)))

(declare-fun bm!646655 () Bool)

(assert (=> bm!646655 (= call!646659 call!646661)))

(declare-fun bm!646656 () Bool)

(assert (=> bm!646656 (= call!646658 (derivationStepZipperDown!2411 (ite c!1325053 (regTwo!36277 (regTwo!36276 r!11554)) (regOne!36276 (regTwo!36276 r!11554))) (ite c!1325053 lt!2558174 (Context!13753 call!646657)) a!1901))))

(declare-fun b!7101407 () Bool)

(assert (=> b!7101407 (= e!4268375 (as set.empty (Set Context!13752)))))

(assert (= (and d!2218645 c!1325054) b!7101402))

(assert (= (and d!2218645 (not c!1325054)) b!7101404))

(assert (= (and b!7101404 c!1325053) b!7101398))

(assert (= (and b!7101404 (not c!1325053)) b!7101401))

(assert (= (and b!7101401 res!2899527) b!7101397))

(assert (= (and b!7101401 c!1325055) b!7101405))

(assert (= (and b!7101401 (not c!1325055)) b!7101400))

(assert (= (and b!7101400 c!1325051) b!7101403))

(assert (= (and b!7101400 (not c!1325051)) b!7101406))

(assert (= (and b!7101406 c!1325052) b!7101399))

(assert (= (and b!7101406 (not c!1325052)) b!7101407))

(assert (= (or b!7101403 b!7101399) bm!646651))

(assert (= (or b!7101403 b!7101399) bm!646655))

(assert (= (or b!7101405 bm!646655) bm!646654))

(assert (= (or b!7101405 bm!646651) bm!646653))

(assert (= (or b!7101398 b!7101405) bm!646656))

(assert (= (or b!7101398 bm!646654) bm!646652))

(declare-fun m!7826640 () Bool)

(assert (=> bm!646653 m!7826640))

(assert (=> b!7101402 m!7826624))

(declare-fun m!7826642 () Bool)

(assert (=> bm!646652 m!7826642))

(declare-fun m!7826644 () Bool)

(assert (=> b!7101397 m!7826644))

(declare-fun m!7826646 () Bool)

(assert (=> bm!646656 m!7826646))

(assert (=> b!7101306 d!2218645))

(declare-fun d!2218647 () Bool)

(declare-fun nullableFct!2900 (Regex!17882) Bool)

(assert (=> d!2218647 (= (nullable!7520 (regOne!36276 r!11554)) (nullableFct!2900 (regOne!36276 r!11554)))))

(declare-fun bs!1884314 () Bool)

(assert (= bs!1884314 d!2218647))

(declare-fun m!7826648 () Bool)

(assert (=> bs!1884314 m!7826648))

(assert (=> b!7101305 d!2218647))

(declare-fun d!2218649 () Bool)

(declare-fun res!2899545 () Bool)

(declare-fun e!4268404 () Bool)

(assert (=> d!2218649 (=> res!2899545 e!4268404)))

(assert (=> d!2218649 (= res!2899545 (is-ElementMatch!17882 (regTwo!36276 r!11554)))))

(assert (=> d!2218649 (= (validRegex!9155 (regTwo!36276 r!11554)) e!4268404)))

(declare-fun bm!646669 () Bool)

(declare-fun call!646674 () Bool)

(declare-fun call!646676 () Bool)

(assert (=> bm!646669 (= call!646674 call!646676)))

(declare-fun b!7101436 () Bool)

(declare-fun e!4268405 () Bool)

(declare-fun call!646675 () Bool)

(assert (=> b!7101436 (= e!4268405 call!646675)))

(declare-fun b!7101437 () Bool)

(declare-fun e!4268408 () Bool)

(assert (=> b!7101437 (= e!4268408 call!646676)))

(declare-fun b!7101438 () Bool)

(declare-fun e!4268403 () Bool)

(assert (=> b!7101438 (= e!4268403 e!4268408)))

(declare-fun res!2899546 () Bool)

(assert (=> b!7101438 (= res!2899546 (not (nullable!7520 (reg!18211 (regTwo!36276 r!11554)))))))

(assert (=> b!7101438 (=> (not res!2899546) (not e!4268408))))

(declare-fun b!7101439 () Bool)

(assert (=> b!7101439 (= e!4268404 e!4268403)))

(declare-fun c!1325063 () Bool)

(assert (=> b!7101439 (= c!1325063 (is-Star!17882 (regTwo!36276 r!11554)))))

(declare-fun b!7101440 () Bool)

(declare-fun e!4268406 () Bool)

(assert (=> b!7101440 (= e!4268406 call!646674)))

(declare-fun b!7101441 () Bool)

(declare-fun e!4268409 () Bool)

(assert (=> b!7101441 (= e!4268403 e!4268409)))

(declare-fun c!1325062 () Bool)

(assert (=> b!7101441 (= c!1325062 (is-Union!17882 (regTwo!36276 r!11554)))))

(declare-fun bm!646670 () Bool)

(assert (=> bm!646670 (= call!646675 (validRegex!9155 (ite c!1325062 (regOne!36277 (regTwo!36276 r!11554)) (regTwo!36276 (regTwo!36276 r!11554)))))))

(declare-fun b!7101442 () Bool)

(declare-fun res!2899544 () Bool)

(assert (=> b!7101442 (=> (not res!2899544) (not e!4268406))))

(assert (=> b!7101442 (= res!2899544 call!646675)))

(assert (=> b!7101442 (= e!4268409 e!4268406)))

(declare-fun b!7101443 () Bool)

(declare-fun e!4268407 () Bool)

(assert (=> b!7101443 (= e!4268407 e!4268405)))

(declare-fun res!2899547 () Bool)

(assert (=> b!7101443 (=> (not res!2899547) (not e!4268405))))

(assert (=> b!7101443 (= res!2899547 call!646674)))

(declare-fun b!7101444 () Bool)

(declare-fun res!2899548 () Bool)

(assert (=> b!7101444 (=> res!2899548 e!4268407)))

(assert (=> b!7101444 (= res!2899548 (not (is-Concat!26727 (regTwo!36276 r!11554))))))

(assert (=> b!7101444 (= e!4268409 e!4268407)))

(declare-fun bm!646671 () Bool)

(assert (=> bm!646671 (= call!646676 (validRegex!9155 (ite c!1325063 (reg!18211 (regTwo!36276 r!11554)) (ite c!1325062 (regTwo!36277 (regTwo!36276 r!11554)) (regOne!36276 (regTwo!36276 r!11554))))))))

(assert (= (and d!2218649 (not res!2899545)) b!7101439))

(assert (= (and b!7101439 c!1325063) b!7101438))

(assert (= (and b!7101439 (not c!1325063)) b!7101441))

(assert (= (and b!7101438 res!2899546) b!7101437))

(assert (= (and b!7101441 c!1325062) b!7101442))

(assert (= (and b!7101441 (not c!1325062)) b!7101444))

(assert (= (and b!7101442 res!2899544) b!7101440))

(assert (= (and b!7101444 (not res!2899548)) b!7101443))

(assert (= (and b!7101443 res!2899547) b!7101436))

(assert (= (or b!7101442 b!7101436) bm!646670))

(assert (= (or b!7101440 b!7101443) bm!646669))

(assert (= (or b!7101437 bm!646669) bm!646671))

(declare-fun m!7826650 () Bool)

(assert (=> b!7101438 m!7826650))

(declare-fun m!7826652 () Bool)

(assert (=> bm!646670 m!7826652))

(declare-fun m!7826654 () Bool)

(assert (=> bm!646671 m!7826654))

(assert (=> b!7101310 d!2218649))

(declare-fun b!7101462 () Bool)

(declare-fun e!4268422 () List!68843)

(assert (=> b!7101462 (= e!4268422 (exprs!7376 auxCtx!45))))

(declare-fun d!2218651 () Bool)

(declare-fun e!4268421 () Bool)

(assert (=> d!2218651 e!4268421))

(declare-fun res!2899559 () Bool)

(assert (=> d!2218651 (=> (not res!2899559) (not e!4268421))))

(declare-fun lt!2558198 () List!68843)

(declare-fun content!13973 (List!68843) (Set Regex!17882))

(assert (=> d!2218651 (= res!2899559 (= (content!13973 lt!2558198) (set.union (content!13973 (exprs!7376 c!9994)) (content!13973 (exprs!7376 auxCtx!45)))))))

(assert (=> d!2218651 (= lt!2558198 e!4268422)))

(declare-fun c!1325068 () Bool)

(assert (=> d!2218651 (= c!1325068 (is-Nil!68719 (exprs!7376 c!9994)))))

(assert (=> d!2218651 (= (++!16034 (exprs!7376 c!9994) (exprs!7376 auxCtx!45)) lt!2558198)))

(declare-fun b!7101464 () Bool)

(declare-fun res!2899558 () Bool)

(assert (=> b!7101464 (=> (not res!2899558) (not e!4268421))))

(declare-fun size!41348 (List!68843) Int)

(assert (=> b!7101464 (= res!2899558 (= (size!41348 lt!2558198) (+ (size!41348 (exprs!7376 c!9994)) (size!41348 (exprs!7376 auxCtx!45)))))))

(declare-fun b!7101465 () Bool)

(assert (=> b!7101465 (= e!4268421 (or (not (= (exprs!7376 auxCtx!45) Nil!68719)) (= lt!2558198 (exprs!7376 c!9994))))))

(declare-fun b!7101463 () Bool)

(assert (=> b!7101463 (= e!4268422 (Cons!68719 (h!75167 (exprs!7376 c!9994)) (++!16034 (t!382654 (exprs!7376 c!9994)) (exprs!7376 auxCtx!45))))))

(assert (= (and d!2218651 c!1325068) b!7101462))

(assert (= (and d!2218651 (not c!1325068)) b!7101463))

(assert (= (and d!2218651 res!2899559) b!7101464))

(assert (= (and b!7101464 res!2899558) b!7101465))

(declare-fun m!7826662 () Bool)

(assert (=> d!2218651 m!7826662))

(declare-fun m!7826664 () Bool)

(assert (=> d!2218651 m!7826664))

(declare-fun m!7826666 () Bool)

(assert (=> d!2218651 m!7826666))

(declare-fun m!7826668 () Bool)

(assert (=> b!7101464 m!7826668))

(declare-fun m!7826670 () Bool)

(assert (=> b!7101464 m!7826670))

(declare-fun m!7826672 () Bool)

(assert (=> b!7101464 m!7826672))

(declare-fun m!7826674 () Bool)

(assert (=> b!7101463 m!7826674))

(assert (=> b!7101310 d!2218651))

(declare-fun d!2218655 () Bool)

(declare-fun forall!16786 (List!68843 Int) Bool)

(assert (=> d!2218655 (forall!16786 (++!16034 (exprs!7376 c!9994) (exprs!7376 auxCtx!45)) lambda!431070)))

(declare-fun lt!2558203 () Unit!162435)

(declare-fun choose!54763 (List!68843 List!68843 Int) Unit!162435)

(assert (=> d!2218655 (= lt!2558203 (choose!54763 (exprs!7376 c!9994) (exprs!7376 auxCtx!45) lambda!431070))))

(assert (=> d!2218655 (forall!16786 (exprs!7376 c!9994) lambda!431070)))

(assert (=> d!2218655 (= (lemmaConcatPreservesForall!1167 (exprs!7376 c!9994) (exprs!7376 auxCtx!45) lambda!431070) lt!2558203)))

(declare-fun bs!1884315 () Bool)

(assert (= bs!1884315 d!2218655))

(assert (=> bs!1884315 m!7826590))

(assert (=> bs!1884315 m!7826590))

(declare-fun m!7826676 () Bool)

(assert (=> bs!1884315 m!7826676))

(declare-fun m!7826678 () Bool)

(assert (=> bs!1884315 m!7826678))

(declare-fun m!7826680 () Bool)

(assert (=> bs!1884315 m!7826680))

(assert (=> b!7101310 d!2218655))

(declare-fun d!2218657 () Bool)

(declare-fun res!2899563 () Bool)

(declare-fun e!4268428 () Bool)

(assert (=> d!2218657 (=> res!2899563 e!4268428)))

(assert (=> d!2218657 (= res!2899563 (is-ElementMatch!17882 r!11554))))

(assert (=> d!2218657 (= (validRegex!9155 r!11554) e!4268428)))

(declare-fun bm!646675 () Bool)

(declare-fun call!646680 () Bool)

(declare-fun call!646682 () Bool)

(assert (=> bm!646675 (= call!646680 call!646682)))

(declare-fun b!7101472 () Bool)

(declare-fun e!4268429 () Bool)

(declare-fun call!646681 () Bool)

(assert (=> b!7101472 (= e!4268429 call!646681)))

(declare-fun b!7101473 () Bool)

(declare-fun e!4268432 () Bool)

(assert (=> b!7101473 (= e!4268432 call!646682)))

(declare-fun b!7101474 () Bool)

(declare-fun e!4268427 () Bool)

(assert (=> b!7101474 (= e!4268427 e!4268432)))

(declare-fun res!2899564 () Bool)

(assert (=> b!7101474 (= res!2899564 (not (nullable!7520 (reg!18211 r!11554))))))

(assert (=> b!7101474 (=> (not res!2899564) (not e!4268432))))

(declare-fun b!7101475 () Bool)

(assert (=> b!7101475 (= e!4268428 e!4268427)))

(declare-fun c!1325072 () Bool)

(assert (=> b!7101475 (= c!1325072 (is-Star!17882 r!11554))))

(declare-fun b!7101476 () Bool)

(declare-fun e!4268430 () Bool)

(assert (=> b!7101476 (= e!4268430 call!646680)))

(declare-fun b!7101477 () Bool)

(declare-fun e!4268433 () Bool)

(assert (=> b!7101477 (= e!4268427 e!4268433)))

(declare-fun c!1325071 () Bool)

(assert (=> b!7101477 (= c!1325071 (is-Union!17882 r!11554))))

(declare-fun bm!646676 () Bool)

(assert (=> bm!646676 (= call!646681 (validRegex!9155 (ite c!1325071 (regOne!36277 r!11554) (regTwo!36276 r!11554))))))

(declare-fun b!7101478 () Bool)

(declare-fun res!2899562 () Bool)

(assert (=> b!7101478 (=> (not res!2899562) (not e!4268430))))

(assert (=> b!7101478 (= res!2899562 call!646681)))

(assert (=> b!7101478 (= e!4268433 e!4268430)))

(declare-fun b!7101479 () Bool)

(declare-fun e!4268431 () Bool)

(assert (=> b!7101479 (= e!4268431 e!4268429)))

(declare-fun res!2899567 () Bool)

(assert (=> b!7101479 (=> (not res!2899567) (not e!4268429))))

(assert (=> b!7101479 (= res!2899567 call!646680)))

(declare-fun b!7101480 () Bool)

(declare-fun res!2899568 () Bool)

(assert (=> b!7101480 (=> res!2899568 e!4268431)))

(assert (=> b!7101480 (= res!2899568 (not (is-Concat!26727 r!11554)))))

(assert (=> b!7101480 (= e!4268433 e!4268431)))

(declare-fun bm!646677 () Bool)

(assert (=> bm!646677 (= call!646682 (validRegex!9155 (ite c!1325072 (reg!18211 r!11554) (ite c!1325071 (regTwo!36277 r!11554) (regOne!36276 r!11554)))))))

(assert (= (and d!2218657 (not res!2899563)) b!7101475))

(assert (= (and b!7101475 c!1325072) b!7101474))

(assert (= (and b!7101475 (not c!1325072)) b!7101477))

(assert (= (and b!7101474 res!2899564) b!7101473))

(assert (= (and b!7101477 c!1325071) b!7101478))

(assert (= (and b!7101477 (not c!1325071)) b!7101480))

(assert (= (and b!7101478 res!2899562) b!7101476))

(assert (= (and b!7101480 (not res!2899568)) b!7101479))

(assert (= (and b!7101479 res!2899567) b!7101472))

(assert (= (or b!7101478 b!7101472) bm!646676))

(assert (= (or b!7101476 b!7101479) bm!646675))

(assert (= (or b!7101473 bm!646675) bm!646677))

(declare-fun m!7826682 () Bool)

(assert (=> b!7101474 m!7826682))

(declare-fun m!7826684 () Bool)

(assert (=> bm!646676 m!7826684))

(declare-fun m!7826686 () Bool)

(assert (=> bm!646677 m!7826686))

(assert (=> start!691290 d!2218657))

(declare-fun bs!1884316 () Bool)

(declare-fun d!2218659 () Bool)

(assert (= bs!1884316 (and d!2218659 b!7101310)))

(declare-fun lambda!431080 () Int)

(assert (=> bs!1884316 (= lambda!431080 lambda!431070)))

(assert (=> d!2218659 (= (inv!87569 c!9994) (forall!16786 (exprs!7376 c!9994) lambda!431080))))

(declare-fun bs!1884317 () Bool)

(assert (= bs!1884317 d!2218659))

(declare-fun m!7826688 () Bool)

(assert (=> bs!1884317 m!7826688))

(assert (=> start!691290 d!2218659))

(declare-fun bs!1884318 () Bool)

(declare-fun d!2218661 () Bool)

(assert (= bs!1884318 (and d!2218661 b!7101310)))

(declare-fun lambda!431081 () Int)

(assert (=> bs!1884318 (= lambda!431081 lambda!431070)))

(declare-fun bs!1884319 () Bool)

(assert (= bs!1884319 (and d!2218661 d!2218659)))

(assert (=> bs!1884319 (= lambda!431081 lambda!431080)))

(assert (=> d!2218661 (= (inv!87569 auxCtx!45) (forall!16786 (exprs!7376 auxCtx!45) lambda!431081))))

(declare-fun bs!1884320 () Bool)

(assert (= bs!1884320 d!2218661))

(declare-fun m!7826690 () Bool)

(assert (=> bs!1884320 m!7826690))

(assert (=> start!691290 d!2218661))

(declare-fun b!7101497 () Bool)

(declare-fun e!4268438 () Bool)

(assert (=> b!7101497 (= e!4268438 tp_is_empty!44997)))

(declare-fun b!7101498 () Bool)

(declare-fun tp!1952330 () Bool)

(declare-fun tp!1952329 () Bool)

(assert (=> b!7101498 (= e!4268438 (and tp!1952330 tp!1952329))))

(declare-fun b!7101499 () Bool)

(declare-fun tp!1952328 () Bool)

(assert (=> b!7101499 (= e!4268438 tp!1952328)))

(assert (=> b!7101312 (= tp!1952291 e!4268438)))

(declare-fun b!7101500 () Bool)

(declare-fun tp!1952327 () Bool)

(declare-fun tp!1952331 () Bool)

(assert (=> b!7101500 (= e!4268438 (and tp!1952327 tp!1952331))))

(assert (= (and b!7101312 (is-ElementMatch!17882 (regOne!36276 r!11554))) b!7101497))

(assert (= (and b!7101312 (is-Concat!26727 (regOne!36276 r!11554))) b!7101498))

(assert (= (and b!7101312 (is-Star!17882 (regOne!36276 r!11554))) b!7101499))

(assert (= (and b!7101312 (is-Union!17882 (regOne!36276 r!11554))) b!7101500))

(declare-fun b!7101501 () Bool)

(declare-fun e!4268439 () Bool)

(assert (=> b!7101501 (= e!4268439 tp_is_empty!44997)))

(declare-fun b!7101502 () Bool)

(declare-fun tp!1952335 () Bool)

(declare-fun tp!1952334 () Bool)

(assert (=> b!7101502 (= e!4268439 (and tp!1952335 tp!1952334))))

(declare-fun b!7101503 () Bool)

(declare-fun tp!1952333 () Bool)

(assert (=> b!7101503 (= e!4268439 tp!1952333)))

(assert (=> b!7101312 (= tp!1952293 e!4268439)))

(declare-fun b!7101504 () Bool)

(declare-fun tp!1952332 () Bool)

(declare-fun tp!1952336 () Bool)

(assert (=> b!7101504 (= e!4268439 (and tp!1952332 tp!1952336))))

(assert (= (and b!7101312 (is-ElementMatch!17882 (regTwo!36276 r!11554))) b!7101501))

(assert (= (and b!7101312 (is-Concat!26727 (regTwo!36276 r!11554))) b!7101502))

(assert (= (and b!7101312 (is-Star!17882 (regTwo!36276 r!11554))) b!7101503))

(assert (= (and b!7101312 (is-Union!17882 (regTwo!36276 r!11554))) b!7101504))

(declare-fun b!7101505 () Bool)

(declare-fun e!4268440 () Bool)

(assert (=> b!7101505 (= e!4268440 tp_is_empty!44997)))

(declare-fun b!7101506 () Bool)

(declare-fun tp!1952340 () Bool)

(declare-fun tp!1952339 () Bool)

(assert (=> b!7101506 (= e!4268440 (and tp!1952340 tp!1952339))))

(declare-fun b!7101507 () Bool)

(declare-fun tp!1952338 () Bool)

(assert (=> b!7101507 (= e!4268440 tp!1952338)))

(assert (=> b!7101308 (= tp!1952290 e!4268440)))

(declare-fun b!7101508 () Bool)

(declare-fun tp!1952337 () Bool)

(declare-fun tp!1952341 () Bool)

(assert (=> b!7101508 (= e!4268440 (and tp!1952337 tp!1952341))))

(assert (= (and b!7101308 (is-ElementMatch!17882 (regOne!36277 r!11554))) b!7101505))

(assert (= (and b!7101308 (is-Concat!26727 (regOne!36277 r!11554))) b!7101506))

(assert (= (and b!7101308 (is-Star!17882 (regOne!36277 r!11554))) b!7101507))

(assert (= (and b!7101308 (is-Union!17882 (regOne!36277 r!11554))) b!7101508))

(declare-fun b!7101509 () Bool)

(declare-fun e!4268444 () Bool)

(assert (=> b!7101509 (= e!4268444 tp_is_empty!44997)))

(declare-fun b!7101510 () Bool)

(declare-fun tp!1952345 () Bool)

(declare-fun tp!1952344 () Bool)

(assert (=> b!7101510 (= e!4268444 (and tp!1952345 tp!1952344))))

(declare-fun b!7101511 () Bool)

(declare-fun tp!1952343 () Bool)

(assert (=> b!7101511 (= e!4268444 tp!1952343)))

(assert (=> b!7101308 (= tp!1952295 e!4268444)))

(declare-fun b!7101512 () Bool)

(declare-fun tp!1952342 () Bool)

(declare-fun tp!1952346 () Bool)

(assert (=> b!7101512 (= e!4268444 (and tp!1952342 tp!1952346))))

(assert (= (and b!7101308 (is-ElementMatch!17882 (regTwo!36277 r!11554))) b!7101509))

(assert (= (and b!7101308 (is-Concat!26727 (regTwo!36277 r!11554))) b!7101510))

(assert (= (and b!7101308 (is-Star!17882 (regTwo!36277 r!11554))) b!7101511))

(assert (= (and b!7101308 (is-Union!17882 (regTwo!36277 r!11554))) b!7101512))

(declare-fun b!7101526 () Bool)

(declare-fun e!4268451 () Bool)

(declare-fun tp!1952351 () Bool)

(declare-fun tp!1952352 () Bool)

(assert (=> b!7101526 (= e!4268451 (and tp!1952351 tp!1952352))))

(assert (=> b!7101313 (= tp!1952292 e!4268451)))

(assert (= (and b!7101313 (is-Cons!68719 (exprs!7376 auxCtx!45))) b!7101526))

(declare-fun b!7101527 () Bool)

(declare-fun e!4268452 () Bool)

(assert (=> b!7101527 (= e!4268452 tp_is_empty!44997)))

(declare-fun b!7101528 () Bool)

(declare-fun tp!1952356 () Bool)

(declare-fun tp!1952355 () Bool)

(assert (=> b!7101528 (= e!4268452 (and tp!1952356 tp!1952355))))

(declare-fun b!7101529 () Bool)

(declare-fun tp!1952354 () Bool)

(assert (=> b!7101529 (= e!4268452 tp!1952354)))

(assert (=> b!7101307 (= tp!1952289 e!4268452)))

(declare-fun b!7101530 () Bool)

(declare-fun tp!1952353 () Bool)

(declare-fun tp!1952357 () Bool)

(assert (=> b!7101530 (= e!4268452 (and tp!1952353 tp!1952357))))

(assert (= (and b!7101307 (is-ElementMatch!17882 (reg!18211 r!11554))) b!7101527))

(assert (= (and b!7101307 (is-Concat!26727 (reg!18211 r!11554))) b!7101528))

(assert (= (and b!7101307 (is-Star!17882 (reg!18211 r!11554))) b!7101529))

(assert (= (and b!7101307 (is-Union!17882 (reg!18211 r!11554))) b!7101530))

(declare-fun b!7101531 () Bool)

(declare-fun e!4268453 () Bool)

(declare-fun tp!1952358 () Bool)

(declare-fun tp!1952359 () Bool)

(assert (=> b!7101531 (= e!4268453 (and tp!1952358 tp!1952359))))

(assert (=> b!7101314 (= tp!1952294 e!4268453)))

(assert (= (and b!7101314 (is-Cons!68719 (exprs!7376 c!9994))) b!7101531))

(push 1)

(assert tp_is_empty!44997)

(assert (not b!7101510))

(assert (not b!7101397))

(assert (not bm!646640))

(assert (not b!7101474))

(assert (not bm!646670))

(assert (not b!7101529))

(assert (not b!7101507))

(assert (not b!7101511))

(assert (not d!2218655))

(assert (not b!7101499))

(assert (not b!7101512))

(assert (not bm!646671))

(assert (not b!7101500))

(assert (not b!7101504))

(assert (not bm!646656))

(assert (not b!7101508))

(assert (not b!7101506))

(assert (not bm!646644))

(assert (not d!2218651))

(assert (not bm!646647))

(assert (not b!7101498))

(assert (not b!7101464))

(assert (not bm!646652))

(assert (not bm!646650))

(assert (not b!7101438))

(assert (not b!7101503))

(assert (not b!7101526))

(assert (not bm!646677))

(assert (not d!2218647))

(assert (not bm!646653))

(assert (not b!7101528))

(assert (not b!7101530))

(assert (not bm!646646))

(assert (not b!7101378))

(assert (not b!7101502))

(assert (not bm!646676))

(assert (not b!7101463))

(assert (not b!7101367))

(assert (not d!2218661))

(assert (not b!7101531))

(assert (not d!2218659))

(assert (not bm!646641))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

