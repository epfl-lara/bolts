; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690662 () Bool)

(assert start!690662)

(declare-fun res!2897451 () Bool)

(declare-fun e!4265081 () Bool)

(assert (=> start!690662 (=> (not res!2897451) (not e!4265081))))

(declare-datatypes ((C!35926 0))(
  ( (C!35927 (val!27669 Int)) )
))
(declare-datatypes ((Regex!17828 0))(
  ( (ElementMatch!17828 (c!1324051 C!35926)) (Concat!26673 (regOne!36168 Regex!17828) (regTwo!36168 Regex!17828)) (EmptyExpr!17828) (Star!17828 (reg!18157 Regex!17828)) (EmptyLang!17828) (Union!17828 (regOne!36169 Regex!17828) (regTwo!36169 Regex!17828)) )
))
(declare-fun r!11554 () Regex!17828)

(declare-fun validRegex!9103 (Regex!17828) Bool)

(assert (=> start!690662 (= res!2897451 (validRegex!9103 r!11554))))

(assert (=> start!690662 e!4265081))

(declare-fun e!4265077 () Bool)

(assert (=> start!690662 e!4265077))

(declare-fun tp_is_empty!44889 () Bool)

(assert (=> start!690662 tp_is_empty!44889))

(declare-datatypes ((List!68791 0))(
  ( (Nil!68667) (Cons!68667 (h!75115 Regex!17828) (t!382588 List!68791)) )
))
(declare-datatypes ((Context!13648 0))(
  ( (Context!13649 (exprs!7324 List!68791)) )
))
(declare-fun c!9994 () Context!13648)

(declare-fun e!4265078 () Bool)

(declare-fun inv!87436 (Context!13648) Bool)

(assert (=> start!690662 (and (inv!87436 c!9994) e!4265078)))

(declare-fun auxCtx!45 () Context!13648)

(declare-fun e!4265080 () Bool)

(assert (=> start!690662 (and (inv!87436 auxCtx!45) e!4265080)))

(declare-fun b!7095247 () Bool)

(declare-fun res!2897454 () Bool)

(assert (=> b!7095247 (=> (not res!2897454) (not e!4265081))))

(declare-fun a!1901 () C!35926)

(assert (=> b!7095247 (= res!2897454 (and (or (not (is-ElementMatch!17828 r!11554)) (not (= (c!1324051 r!11554) a!1901))) (not (is-Union!17828 r!11554))))))

(declare-fun b!7095248 () Bool)

(declare-fun tp!1949718 () Bool)

(assert (=> b!7095248 (= e!4265080 tp!1949718)))

(declare-fun b!7095249 () Bool)

(declare-fun e!4265079 () Bool)

(declare-fun e!4265075 () Bool)

(assert (=> b!7095249 (= e!4265079 (not e!4265075))))

(declare-fun res!2897452 () Bool)

(assert (=> b!7095249 (=> res!2897452 e!4265075)))

(declare-fun lambda!430376 () Int)

(declare-fun forall!16752 (List!68791 Int) Bool)

(assert (=> b!7095249 (= res!2897452 (not (forall!16752 (exprs!7324 c!9994) lambda!430376)))))

(declare-fun lt!2557106 () List!68791)

(declare-fun lt!2557103 () Context!13648)

(declare-fun derivationStepZipperDown!2379 (Regex!17828 Context!13648 C!35926) (Set Context!13648))

(declare-fun ++!15992 (List!68791 List!68791) List!68791)

(declare-fun appendTo!885 ((Set Context!13648) Context!13648) (Set Context!13648))

(assert (=> b!7095249 (= (derivationStepZipperDown!2379 (regOne!36168 r!11554) (Context!13649 (++!15992 lt!2557106 (exprs!7324 auxCtx!45))) a!1901) (appendTo!885 (derivationStepZipperDown!2379 (regOne!36168 r!11554) lt!2557103 a!1901) auxCtx!45))))

(declare-datatypes ((Unit!162339 0))(
  ( (Unit!162340) )
))
(declare-fun lt!2557101 () Unit!162339)

(declare-fun lemmaConcatPreservesForall!1123 (List!68791 List!68791 Int) Unit!162339)

(assert (=> b!7095249 (= lt!2557101 (lemmaConcatPreservesForall!1123 lt!2557106 (exprs!7324 auxCtx!45) lambda!430376))))

(declare-fun lt!2557102 () Unit!162339)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!193 (Context!13648 Regex!17828 C!35926 Context!13648) Unit!162339)

(assert (=> b!7095249 (= lt!2557102 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!193 lt!2557103 (regOne!36168 r!11554) a!1901 auxCtx!45))))

(assert (=> b!7095249 (= lt!2557103 (Context!13649 lt!2557106))))

(declare-fun $colon$colon!2723 (List!68791 Regex!17828) List!68791)

(assert (=> b!7095249 (= lt!2557106 ($colon$colon!2723 (exprs!7324 c!9994) (regTwo!36168 r!11554)))))

(declare-fun b!7095250 () Bool)

(assert (=> b!7095250 (= e!4265077 tp_is_empty!44889)))

(declare-fun b!7095251 () Bool)

(declare-fun res!2897449 () Bool)

(assert (=> b!7095251 (=> (not res!2897449) (not e!4265079))))

(declare-fun lt!2557104 () List!68791)

(assert (=> b!7095251 (= res!2897449 (= (derivationStepZipperDown!2379 r!11554 (Context!13649 lt!2557104) a!1901) (derivationStepZipperDown!2379 (regOne!36168 r!11554) (Context!13649 ($colon$colon!2723 lt!2557104 (regTwo!36168 r!11554))) a!1901)))))

(declare-fun b!7095252 () Bool)

(declare-fun tp!1949721 () Bool)

(declare-fun tp!1949717 () Bool)

(assert (=> b!7095252 (= e!4265077 (and tp!1949721 tp!1949717))))

(declare-fun b!7095253 () Bool)

(assert (=> b!7095253 (= e!4265075 (forall!16752 (exprs!7324 auxCtx!45) lambda!430376))))

(declare-fun b!7095254 () Bool)

(declare-fun tp!1949720 () Bool)

(assert (=> b!7095254 (= e!4265077 tp!1949720)))

(declare-fun b!7095255 () Bool)

(declare-fun res!2897453 () Bool)

(assert (=> b!7095255 (=> (not res!2897453) (not e!4265081))))

(assert (=> b!7095255 (= res!2897453 (is-Concat!26673 r!11554))))

(declare-fun b!7095256 () Bool)

(declare-fun tp!1949719 () Bool)

(declare-fun tp!1949716 () Bool)

(assert (=> b!7095256 (= e!4265077 (and tp!1949719 tp!1949716))))

(declare-fun b!7095257 () Bool)

(assert (=> b!7095257 (= e!4265081 e!4265079)))

(declare-fun res!2897455 () Bool)

(assert (=> b!7095257 (=> (not res!2897455) (not e!4265079))))

(assert (=> b!7095257 (= res!2897455 (validRegex!9103 (regTwo!36168 r!11554)))))

(assert (=> b!7095257 (= lt!2557104 (++!15992 (exprs!7324 c!9994) (exprs!7324 auxCtx!45)))))

(declare-fun lt!2557107 () Unit!162339)

(assert (=> b!7095257 (= lt!2557107 (lemmaConcatPreservesForall!1123 (exprs!7324 c!9994) (exprs!7324 auxCtx!45) lambda!430376))))

(declare-fun lt!2557105 () Unit!162339)

(assert (=> b!7095257 (= lt!2557105 (lemmaConcatPreservesForall!1123 (exprs!7324 c!9994) (exprs!7324 auxCtx!45) lambda!430376))))

(declare-fun b!7095258 () Bool)

(declare-fun res!2897456 () Bool)

(assert (=> b!7095258 (=> (not res!2897456) (not e!4265081))))

(declare-fun e!4265076 () Bool)

(assert (=> b!7095258 (= res!2897456 e!4265076)))

(declare-fun res!2897450 () Bool)

(assert (=> b!7095258 (=> res!2897450 e!4265076)))

(assert (=> b!7095258 (= res!2897450 (not (is-Concat!26673 r!11554)))))

(declare-fun b!7095259 () Bool)

(declare-fun nullable!7468 (Regex!17828) Bool)

(assert (=> b!7095259 (= e!4265076 (not (nullable!7468 (regOne!36168 r!11554))))))

(declare-fun b!7095260 () Bool)

(declare-fun tp!1949715 () Bool)

(assert (=> b!7095260 (= e!4265078 tp!1949715)))

(assert (= (and start!690662 res!2897451) b!7095247))

(assert (= (and b!7095247 res!2897454) b!7095258))

(assert (= (and b!7095258 (not res!2897450)) b!7095259))

(assert (= (and b!7095258 res!2897456) b!7095255))

(assert (= (and b!7095255 res!2897453) b!7095257))

(assert (= (and b!7095257 res!2897455) b!7095251))

(assert (= (and b!7095251 res!2897449) b!7095249))

(assert (= (and b!7095249 (not res!2897452)) b!7095253))

(assert (= (and start!690662 (is-ElementMatch!17828 r!11554)) b!7095250))

(assert (= (and start!690662 (is-Concat!26673 r!11554)) b!7095256))

(assert (= (and start!690662 (is-Star!17828 r!11554)) b!7095254))

(assert (= (and start!690662 (is-Union!17828 r!11554)) b!7095252))

(assert (= start!690662 b!7095260))

(assert (= start!690662 b!7095248))

(declare-fun m!7823024 () Bool)

(assert (=> b!7095251 m!7823024))

(declare-fun m!7823026 () Bool)

(assert (=> b!7095251 m!7823026))

(declare-fun m!7823028 () Bool)

(assert (=> b!7095251 m!7823028))

(declare-fun m!7823030 () Bool)

(assert (=> b!7095259 m!7823030))

(declare-fun m!7823032 () Bool)

(assert (=> b!7095257 m!7823032))

(declare-fun m!7823034 () Bool)

(assert (=> b!7095257 m!7823034))

(declare-fun m!7823036 () Bool)

(assert (=> b!7095257 m!7823036))

(assert (=> b!7095257 m!7823036))

(declare-fun m!7823038 () Bool)

(assert (=> b!7095253 m!7823038))

(declare-fun m!7823040 () Bool)

(assert (=> start!690662 m!7823040))

(declare-fun m!7823042 () Bool)

(assert (=> start!690662 m!7823042))

(declare-fun m!7823044 () Bool)

(assert (=> start!690662 m!7823044))

(declare-fun m!7823046 () Bool)

(assert (=> b!7095249 m!7823046))

(declare-fun m!7823048 () Bool)

(assert (=> b!7095249 m!7823048))

(declare-fun m!7823050 () Bool)

(assert (=> b!7095249 m!7823050))

(declare-fun m!7823052 () Bool)

(assert (=> b!7095249 m!7823052))

(declare-fun m!7823054 () Bool)

(assert (=> b!7095249 m!7823054))

(declare-fun m!7823056 () Bool)

(assert (=> b!7095249 m!7823056))

(declare-fun m!7823058 () Bool)

(assert (=> b!7095249 m!7823058))

(assert (=> b!7095249 m!7823054))

(declare-fun m!7823060 () Bool)

(assert (=> b!7095249 m!7823060))

(push 1)

(assert (not b!7095260))

(assert (not b!7095251))

(assert (not b!7095252))

(assert (not b!7095249))

(assert (not b!7095257))

(assert tp_is_empty!44889)

(assert (not b!7095254))

(assert (not start!690662))

(assert (not b!7095259))

(assert (not b!7095256))

(assert (not b!7095253))

(assert (not b!7095248))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!645595 () Bool)

(declare-fun call!645602 () Bool)

(declare-fun c!1324057 () Bool)

(assert (=> bm!645595 (= call!645602 (validRegex!9103 (ite c!1324057 (regTwo!36169 (regTwo!36168 r!11554)) (regOne!36168 (regTwo!36168 r!11554)))))))

(declare-fun b!7095321 () Bool)

(declare-fun res!2897492 () Bool)

(declare-fun e!4265122 () Bool)

(assert (=> b!7095321 (=> (not res!2897492) (not e!4265122))))

(declare-fun call!645601 () Bool)

(assert (=> b!7095321 (= res!2897492 call!645601)))

(declare-fun e!4265117 () Bool)

(assert (=> b!7095321 (= e!4265117 e!4265122)))

(declare-fun bm!645596 () Bool)

(declare-fun c!1324058 () Bool)

(declare-fun call!645600 () Bool)

(assert (=> bm!645596 (= call!645600 (validRegex!9103 (ite c!1324058 (reg!18157 (regTwo!36168 r!11554)) (ite c!1324057 (regOne!36169 (regTwo!36168 r!11554)) (regTwo!36168 (regTwo!36168 r!11554))))))))

(declare-fun b!7095322 () Bool)

(declare-fun e!4265119 () Bool)

(assert (=> b!7095322 (= e!4265119 call!645600)))

(declare-fun b!7095323 () Bool)

(declare-fun e!4265120 () Bool)

(assert (=> b!7095323 (= e!4265120 e!4265119)))

(declare-fun res!2897494 () Bool)

(assert (=> b!7095323 (= res!2897494 (not (nullable!7468 (reg!18157 (regTwo!36168 r!11554)))))))

(assert (=> b!7095323 (=> (not res!2897494) (not e!4265119))))

(declare-fun b!7095324 () Bool)

(declare-fun res!2897495 () Bool)

(declare-fun e!4265123 () Bool)

(assert (=> b!7095324 (=> res!2897495 e!4265123)))

(assert (=> b!7095324 (= res!2897495 (not (is-Concat!26673 (regTwo!36168 r!11554))))))

(assert (=> b!7095324 (= e!4265117 e!4265123)))

(declare-fun d!2217668 () Bool)

(declare-fun res!2897493 () Bool)

(declare-fun e!4265118 () Bool)

(assert (=> d!2217668 (=> res!2897493 e!4265118)))

(assert (=> d!2217668 (= res!2897493 (is-ElementMatch!17828 (regTwo!36168 r!11554)))))

(assert (=> d!2217668 (= (validRegex!9103 (regTwo!36168 r!11554)) e!4265118)))

(declare-fun b!7095325 () Bool)

(assert (=> b!7095325 (= e!4265120 e!4265117)))

(assert (=> b!7095325 (= c!1324057 (is-Union!17828 (regTwo!36168 r!11554)))))

(declare-fun b!7095326 () Bool)

(assert (=> b!7095326 (= e!4265122 call!645602)))

(declare-fun b!7095327 () Bool)

(declare-fun e!4265121 () Bool)

(assert (=> b!7095327 (= e!4265123 e!4265121)))

(declare-fun res!2897491 () Bool)

(assert (=> b!7095327 (=> (not res!2897491) (not e!4265121))))

(assert (=> b!7095327 (= res!2897491 call!645602)))

(declare-fun b!7095328 () Bool)

(assert (=> b!7095328 (= e!4265121 call!645601)))

(declare-fun bm!645597 () Bool)

(assert (=> bm!645597 (= call!645601 call!645600)))

(declare-fun b!7095329 () Bool)

(assert (=> b!7095329 (= e!4265118 e!4265120)))

(assert (=> b!7095329 (= c!1324058 (is-Star!17828 (regTwo!36168 r!11554)))))

(assert (= (and d!2217668 (not res!2897493)) b!7095329))

(assert (= (and b!7095329 c!1324058) b!7095323))

(assert (= (and b!7095329 (not c!1324058)) b!7095325))

(assert (= (and b!7095323 res!2897494) b!7095322))

(assert (= (and b!7095325 c!1324057) b!7095321))

(assert (= (and b!7095325 (not c!1324057)) b!7095324))

(assert (= (and b!7095321 res!2897492) b!7095326))

(assert (= (and b!7095324 (not res!2897495)) b!7095327))

(assert (= (and b!7095327 res!2897491) b!7095328))

(assert (= (or b!7095321 b!7095328) bm!645597))

(assert (= (or b!7095326 b!7095327) bm!645595))

(assert (= (or b!7095322 bm!645597) bm!645596))

(declare-fun m!7823100 () Bool)

(assert (=> bm!645595 m!7823100))

(declare-fun m!7823102 () Bool)

(assert (=> bm!645596 m!7823102))

(declare-fun m!7823104 () Bool)

(assert (=> b!7095323 m!7823104))

(assert (=> b!7095257 d!2217668))

(declare-fun b!7095356 () Bool)

(declare-fun e!4265143 () List!68791)

(assert (=> b!7095356 (= e!4265143 (exprs!7324 auxCtx!45))))

(declare-fun lt!2557131 () List!68791)

(declare-fun b!7095359 () Bool)

(declare-fun e!4265142 () Bool)

(assert (=> b!7095359 (= e!4265142 (or (not (= (exprs!7324 auxCtx!45) Nil!68667)) (= lt!2557131 (exprs!7324 c!9994))))))

(declare-fun b!7095358 () Bool)

(declare-fun res!2897511 () Bool)

(assert (=> b!7095358 (=> (not res!2897511) (not e!4265142))))

(declare-fun size!41326 (List!68791) Int)

(assert (=> b!7095358 (= res!2897511 (= (size!41326 lt!2557131) (+ (size!41326 (exprs!7324 c!9994)) (size!41326 (exprs!7324 auxCtx!45)))))))

(declare-fun b!7095357 () Bool)

(assert (=> b!7095357 (= e!4265143 (Cons!68667 (h!75115 (exprs!7324 c!9994)) (++!15992 (t!382588 (exprs!7324 c!9994)) (exprs!7324 auxCtx!45))))))

(declare-fun d!2217672 () Bool)

(assert (=> d!2217672 e!4265142))

(declare-fun res!2897510 () Bool)

(assert (=> d!2217672 (=> (not res!2897510) (not e!4265142))))

(declare-fun content!13951 (List!68791) (Set Regex!17828))

(assert (=> d!2217672 (= res!2897510 (= (content!13951 lt!2557131) (set.union (content!13951 (exprs!7324 c!9994)) (content!13951 (exprs!7324 auxCtx!45)))))))

(assert (=> d!2217672 (= lt!2557131 e!4265143)))

(declare-fun c!1324065 () Bool)

(assert (=> d!2217672 (= c!1324065 (is-Nil!68667 (exprs!7324 c!9994)))))

(assert (=> d!2217672 (= (++!15992 (exprs!7324 c!9994) (exprs!7324 auxCtx!45)) lt!2557131)))

(assert (= (and d!2217672 c!1324065) b!7095356))

(assert (= (and d!2217672 (not c!1324065)) b!7095357))

(assert (= (and d!2217672 res!2897510) b!7095358))

(assert (= (and b!7095358 res!2897511) b!7095359))

(declare-fun m!7823106 () Bool)

(assert (=> b!7095358 m!7823106))

(declare-fun m!7823108 () Bool)

(assert (=> b!7095358 m!7823108))

(declare-fun m!7823110 () Bool)

(assert (=> b!7095358 m!7823110))

(declare-fun m!7823112 () Bool)

(assert (=> b!7095357 m!7823112))

(declare-fun m!7823114 () Bool)

(assert (=> d!2217672 m!7823114))

(declare-fun m!7823116 () Bool)

(assert (=> d!2217672 m!7823116))

(declare-fun m!7823118 () Bool)

(assert (=> d!2217672 m!7823118))

(assert (=> b!7095257 d!2217672))

(declare-fun d!2217674 () Bool)

(assert (=> d!2217674 (forall!16752 (++!15992 (exprs!7324 c!9994) (exprs!7324 auxCtx!45)) lambda!430376)))

(declare-fun lt!2557134 () Unit!162339)

(declare-fun choose!54709 (List!68791 List!68791 Int) Unit!162339)

(assert (=> d!2217674 (= lt!2557134 (choose!54709 (exprs!7324 c!9994) (exprs!7324 auxCtx!45) lambda!430376))))

(assert (=> d!2217674 (forall!16752 (exprs!7324 c!9994) lambda!430376)))

(assert (=> d!2217674 (= (lemmaConcatPreservesForall!1123 (exprs!7324 c!9994) (exprs!7324 auxCtx!45) lambda!430376) lt!2557134)))

(declare-fun bs!1883867 () Bool)

(assert (= bs!1883867 d!2217674))

(assert (=> bs!1883867 m!7823034))

(assert (=> bs!1883867 m!7823034))

(declare-fun m!7823120 () Bool)

(assert (=> bs!1883867 m!7823120))

(declare-fun m!7823122 () Bool)

(assert (=> bs!1883867 m!7823122))

(assert (=> bs!1883867 m!7823052))

(assert (=> b!7095257 d!2217674))

(declare-fun b!7095391 () Bool)

(declare-fun e!4265165 () (Set Context!13648))

(declare-fun call!645625 () (Set Context!13648))

(assert (=> b!7095391 (= e!4265165 call!645625)))

(declare-fun c!1324079 () Bool)

(declare-fun c!1324082 () Bool)

(declare-fun call!645628 () List!68791)

(declare-fun call!645629 () (Set Context!13648))

(declare-fun bm!645619 () Bool)

(declare-fun c!1324081 () Bool)

(assert (=> bm!645619 (= call!645629 (derivationStepZipperDown!2379 (ite c!1324082 (regOne!36169 r!11554) (ite c!1324081 (regTwo!36168 r!11554) (ite c!1324079 (regOne!36168 r!11554) (reg!18157 r!11554)))) (ite (or c!1324082 c!1324081) (Context!13649 lt!2557104) (Context!13649 call!645628)) a!1901))))

(declare-fun bm!645620 () Bool)

(declare-fun call!645627 () List!68791)

(assert (=> bm!645620 (= call!645627 ($colon$colon!2723 (exprs!7324 (Context!13649 lt!2557104)) (ite (or c!1324081 c!1324079) (regTwo!36168 r!11554) r!11554)))))

(declare-fun b!7095392 () Bool)

(declare-fun e!4265166 () (Set Context!13648))

(declare-fun call!645626 () (Set Context!13648))

(declare-fun call!645624 () (Set Context!13648))

(assert (=> b!7095392 (= e!4265166 (set.union call!645626 call!645624))))

(declare-fun bm!645621 () Bool)

(assert (=> bm!645621 (= call!645625 call!645624)))

(declare-fun b!7095393 () Bool)

(declare-fun e!4265164 () Bool)

(assert (=> b!7095393 (= e!4265164 (nullable!7468 (regOne!36168 r!11554)))))

(declare-fun b!7095394 () Bool)

(declare-fun c!1324080 () Bool)

(assert (=> b!7095394 (= c!1324080 (is-Star!17828 r!11554))))

(declare-fun e!4265168 () (Set Context!13648))

(assert (=> b!7095394 (= e!4265168 e!4265165)))

(declare-fun d!2217676 () Bool)

(declare-fun c!1324078 () Bool)

(assert (=> d!2217676 (= c!1324078 (and (is-ElementMatch!17828 r!11554) (= (c!1324051 r!11554) a!1901)))))

(declare-fun e!4265167 () (Set Context!13648))

(assert (=> d!2217676 (= (derivationStepZipperDown!2379 r!11554 (Context!13649 lt!2557104) a!1901) e!4265167)))

(declare-fun b!7095395 () Bool)

(declare-fun e!4265163 () (Set Context!13648))

(assert (=> b!7095395 (= e!4265163 (set.union call!645629 call!645626))))

(declare-fun bm!645622 () Bool)

(assert (=> bm!645622 (= call!645628 call!645627)))

(declare-fun b!7095396 () Bool)

(assert (=> b!7095396 (= e!4265167 e!4265163)))

(assert (=> b!7095396 (= c!1324082 (is-Union!17828 r!11554))))

(declare-fun bm!645623 () Bool)

(assert (=> bm!645623 (= call!645626 (derivationStepZipperDown!2379 (ite c!1324082 (regTwo!36169 r!11554) (regOne!36168 r!11554)) (ite c!1324082 (Context!13649 lt!2557104) (Context!13649 call!645627)) a!1901))))

(declare-fun b!7095397 () Bool)

(assert (=> b!7095397 (= c!1324081 e!4265164)))

(declare-fun res!2897519 () Bool)

(assert (=> b!7095397 (=> (not res!2897519) (not e!4265164))))

(assert (=> b!7095397 (= res!2897519 (is-Concat!26673 r!11554))))

(assert (=> b!7095397 (= e!4265163 e!4265166)))

(declare-fun b!7095398 () Bool)

(assert (=> b!7095398 (= e!4265167 (set.insert (Context!13649 lt!2557104) (as set.empty (Set Context!13648))))))

(declare-fun b!7095399 () Bool)

(assert (=> b!7095399 (= e!4265168 call!645625)))

(declare-fun b!7095400 () Bool)

(assert (=> b!7095400 (= e!4265165 (as set.empty (Set Context!13648)))))

(declare-fun bm!645624 () Bool)

(assert (=> bm!645624 (= call!645624 call!645629)))

(declare-fun b!7095401 () Bool)

(assert (=> b!7095401 (= e!4265166 e!4265168)))

(assert (=> b!7095401 (= c!1324079 (is-Concat!26673 r!11554))))

(assert (= (and d!2217676 c!1324078) b!7095398))

(assert (= (and d!2217676 (not c!1324078)) b!7095396))

(assert (= (and b!7095396 c!1324082) b!7095395))

(assert (= (and b!7095396 (not c!1324082)) b!7095397))

(assert (= (and b!7095397 res!2897519) b!7095393))

(assert (= (and b!7095397 c!1324081) b!7095392))

(assert (= (and b!7095397 (not c!1324081)) b!7095401))

(assert (= (and b!7095401 c!1324079) b!7095399))

(assert (= (and b!7095401 (not c!1324079)) b!7095394))

(assert (= (and b!7095394 c!1324080) b!7095391))

(assert (= (and b!7095394 (not c!1324080)) b!7095400))

(assert (= (or b!7095399 b!7095391) bm!645622))

(assert (= (or b!7095399 b!7095391) bm!645621))

(assert (= (or b!7095392 bm!645621) bm!645624))

(assert (= (or b!7095392 bm!645622) bm!645620))

(assert (= (or b!7095395 b!7095392) bm!645623))

(assert (= (or b!7095395 bm!645624) bm!645619))

(assert (=> b!7095393 m!7823030))

(declare-fun m!7823136 () Bool)

(assert (=> bm!645623 m!7823136))

(declare-fun m!7823138 () Bool)

(assert (=> bm!645619 m!7823138))

(declare-fun m!7823140 () Bool)

(assert (=> bm!645620 m!7823140))

(declare-fun m!7823142 () Bool)

(assert (=> b!7095398 m!7823142))

(assert (=> b!7095251 d!2217676))

(declare-fun b!7095404 () Bool)

(declare-fun e!4265173 () (Set Context!13648))

(declare-fun call!645631 () (Set Context!13648))

(assert (=> b!7095404 (= e!4265173 call!645631)))

(declare-fun c!1324087 () Bool)

(declare-fun c!1324084 () Bool)

(declare-fun bm!645625 () Bool)

(declare-fun call!645634 () List!68791)

(declare-fun c!1324086 () Bool)

(declare-fun call!645635 () (Set Context!13648))

(assert (=> bm!645625 (= call!645635 (derivationStepZipperDown!2379 (ite c!1324087 (regOne!36169 (regOne!36168 r!11554)) (ite c!1324086 (regTwo!36168 (regOne!36168 r!11554)) (ite c!1324084 (regOne!36168 (regOne!36168 r!11554)) (reg!18157 (regOne!36168 r!11554))))) (ite (or c!1324087 c!1324086) (Context!13649 ($colon$colon!2723 lt!2557104 (regTwo!36168 r!11554))) (Context!13649 call!645634)) a!1901))))

(declare-fun call!645633 () List!68791)

(declare-fun bm!645626 () Bool)

(assert (=> bm!645626 (= call!645633 ($colon$colon!2723 (exprs!7324 (Context!13649 ($colon$colon!2723 lt!2557104 (regTwo!36168 r!11554)))) (ite (or c!1324086 c!1324084) (regTwo!36168 (regOne!36168 r!11554)) (regOne!36168 r!11554))))))

(declare-fun b!7095405 () Bool)

(declare-fun e!4265174 () (Set Context!13648))

(declare-fun call!645632 () (Set Context!13648))

(declare-fun call!645630 () (Set Context!13648))

(assert (=> b!7095405 (= e!4265174 (set.union call!645632 call!645630))))

(declare-fun bm!645627 () Bool)

(assert (=> bm!645627 (= call!645631 call!645630)))

(declare-fun b!7095406 () Bool)

(declare-fun e!4265172 () Bool)

(assert (=> b!7095406 (= e!4265172 (nullable!7468 (regOne!36168 (regOne!36168 r!11554))))))

(declare-fun b!7095407 () Bool)

(declare-fun c!1324085 () Bool)

(assert (=> b!7095407 (= c!1324085 (is-Star!17828 (regOne!36168 r!11554)))))

(declare-fun e!4265176 () (Set Context!13648))

(assert (=> b!7095407 (= e!4265176 e!4265173)))

(declare-fun d!2217686 () Bool)

(declare-fun c!1324083 () Bool)

(assert (=> d!2217686 (= c!1324083 (and (is-ElementMatch!17828 (regOne!36168 r!11554)) (= (c!1324051 (regOne!36168 r!11554)) a!1901)))))

(declare-fun e!4265175 () (Set Context!13648))

(assert (=> d!2217686 (= (derivationStepZipperDown!2379 (regOne!36168 r!11554) (Context!13649 ($colon$colon!2723 lt!2557104 (regTwo!36168 r!11554))) a!1901) e!4265175)))

(declare-fun b!7095408 () Bool)

(declare-fun e!4265171 () (Set Context!13648))

(assert (=> b!7095408 (= e!4265171 (set.union call!645635 call!645632))))

(declare-fun bm!645628 () Bool)

(assert (=> bm!645628 (= call!645634 call!645633)))

(declare-fun b!7095409 () Bool)

(assert (=> b!7095409 (= e!4265175 e!4265171)))

(assert (=> b!7095409 (= c!1324087 (is-Union!17828 (regOne!36168 r!11554)))))

(declare-fun bm!645629 () Bool)

(assert (=> bm!645629 (= call!645632 (derivationStepZipperDown!2379 (ite c!1324087 (regTwo!36169 (regOne!36168 r!11554)) (regOne!36168 (regOne!36168 r!11554))) (ite c!1324087 (Context!13649 ($colon$colon!2723 lt!2557104 (regTwo!36168 r!11554))) (Context!13649 call!645633)) a!1901))))

(declare-fun b!7095410 () Bool)

(assert (=> b!7095410 (= c!1324086 e!4265172)))

(declare-fun res!2897522 () Bool)

(assert (=> b!7095410 (=> (not res!2897522) (not e!4265172))))

(assert (=> b!7095410 (= res!2897522 (is-Concat!26673 (regOne!36168 r!11554)))))

(assert (=> b!7095410 (= e!4265171 e!4265174)))

(declare-fun b!7095411 () Bool)

(assert (=> b!7095411 (= e!4265175 (set.insert (Context!13649 ($colon$colon!2723 lt!2557104 (regTwo!36168 r!11554))) (as set.empty (Set Context!13648))))))

(declare-fun b!7095412 () Bool)

(assert (=> b!7095412 (= e!4265176 call!645631)))

(declare-fun b!7095413 () Bool)

(assert (=> b!7095413 (= e!4265173 (as set.empty (Set Context!13648)))))

(declare-fun bm!645630 () Bool)

(assert (=> bm!645630 (= call!645630 call!645635)))

(declare-fun b!7095414 () Bool)

(assert (=> b!7095414 (= e!4265174 e!4265176)))

(assert (=> b!7095414 (= c!1324084 (is-Concat!26673 (regOne!36168 r!11554)))))

(assert (= (and d!2217686 c!1324083) b!7095411))

(assert (= (and d!2217686 (not c!1324083)) b!7095409))

(assert (= (and b!7095409 c!1324087) b!7095408))

(assert (= (and b!7095409 (not c!1324087)) b!7095410))

(assert (= (and b!7095410 res!2897522) b!7095406))

(assert (= (and b!7095410 c!1324086) b!7095405))

(assert (= (and b!7095410 (not c!1324086)) b!7095414))

(assert (= (and b!7095414 c!1324084) b!7095412))

(assert (= (and b!7095414 (not c!1324084)) b!7095407))

(assert (= (and b!7095407 c!1324085) b!7095404))

(assert (= (and b!7095407 (not c!1324085)) b!7095413))

(assert (= (or b!7095412 b!7095404) bm!645628))

(assert (= (or b!7095412 b!7095404) bm!645627))

(assert (= (or b!7095405 bm!645627) bm!645630))

(assert (= (or b!7095405 bm!645628) bm!645626))

(assert (= (or b!7095408 b!7095405) bm!645629))

(assert (= (or b!7095408 bm!645630) bm!645625))

(declare-fun m!7823144 () Bool)

(assert (=> b!7095406 m!7823144))

(declare-fun m!7823146 () Bool)

(assert (=> bm!645629 m!7823146))

(declare-fun m!7823148 () Bool)

(assert (=> bm!645625 m!7823148))

(declare-fun m!7823150 () Bool)

(assert (=> bm!645626 m!7823150))

(declare-fun m!7823152 () Bool)

(assert (=> b!7095411 m!7823152))

(assert (=> b!7095251 d!2217686))

(declare-fun d!2217688 () Bool)

(assert (=> d!2217688 (= ($colon$colon!2723 lt!2557104 (regTwo!36168 r!11554)) (Cons!68667 (regTwo!36168 r!11554) lt!2557104))))

(assert (=> b!7095251 d!2217688))

(declare-fun d!2217690 () Bool)

(declare-fun res!2897531 () Bool)

(declare-fun e!4265185 () Bool)

(assert (=> d!2217690 (=> res!2897531 e!4265185)))

(assert (=> d!2217690 (= res!2897531 (is-Nil!68667 (exprs!7324 c!9994)))))

(assert (=> d!2217690 (= (forall!16752 (exprs!7324 c!9994) lambda!430376) e!4265185)))

(declare-fun b!7095423 () Bool)

(declare-fun e!4265186 () Bool)

(assert (=> b!7095423 (= e!4265185 e!4265186)))

(declare-fun res!2897532 () Bool)

(assert (=> b!7095423 (=> (not res!2897532) (not e!4265186))))

(declare-fun dynLambda!28017 (Int Regex!17828) Bool)

(assert (=> b!7095423 (= res!2897532 (dynLambda!28017 lambda!430376 (h!75115 (exprs!7324 c!9994))))))

(declare-fun b!7095424 () Bool)

(assert (=> b!7095424 (= e!4265186 (forall!16752 (t!382588 (exprs!7324 c!9994)) lambda!430376))))

(assert (= (and d!2217690 (not res!2897531)) b!7095423))

(assert (= (and b!7095423 res!2897532) b!7095424))

(declare-fun b_lambda!271131 () Bool)

(assert (=> (not b_lambda!271131) (not b!7095423)))

(declare-fun m!7823158 () Bool)

(assert (=> b!7095423 m!7823158))

(declare-fun m!7823160 () Bool)

(assert (=> b!7095424 m!7823160))

(assert (=> b!7095249 d!2217690))

(declare-fun d!2217694 () Bool)

(assert (=> d!2217694 (forall!16752 (++!15992 lt!2557106 (exprs!7324 auxCtx!45)) lambda!430376)))

(declare-fun lt!2557135 () Unit!162339)

(assert (=> d!2217694 (= lt!2557135 (choose!54709 lt!2557106 (exprs!7324 auxCtx!45) lambda!430376))))

(assert (=> d!2217694 (forall!16752 lt!2557106 lambda!430376)))

(assert (=> d!2217694 (= (lemmaConcatPreservesForall!1123 lt!2557106 (exprs!7324 auxCtx!45) lambda!430376) lt!2557135)))

(declare-fun bs!1883874 () Bool)

(assert (= bs!1883874 d!2217694))

(assert (=> bs!1883874 m!7823050))

(assert (=> bs!1883874 m!7823050))

(declare-fun m!7823162 () Bool)

(assert (=> bs!1883874 m!7823162))

(declare-fun m!7823164 () Bool)

(assert (=> bs!1883874 m!7823164))

(declare-fun m!7823166 () Bool)

(assert (=> bs!1883874 m!7823166))

(assert (=> b!7095249 d!2217694))

(declare-fun d!2217696 () Bool)

(assert (=> d!2217696 true))

(declare-fun lambda!430394 () Int)

(declare-fun map!16175 ((Set Context!13648) Int) (Set Context!13648))

(assert (=> d!2217696 (= (appendTo!885 (derivationStepZipperDown!2379 (regOne!36168 r!11554) lt!2557103 a!1901) auxCtx!45) (map!16175 (derivationStepZipperDown!2379 (regOne!36168 r!11554) lt!2557103 a!1901) lambda!430394))))

(declare-fun bs!1883875 () Bool)

(assert (= bs!1883875 d!2217696))

(assert (=> bs!1883875 m!7823054))

(declare-fun m!7823168 () Bool)

(assert (=> bs!1883875 m!7823168))

(assert (=> b!7095249 d!2217696))

(declare-fun b!7095427 () Bool)

(declare-fun e!4265189 () (Set Context!13648))

(declare-fun call!645637 () (Set Context!13648))

(assert (=> b!7095427 (= e!4265189 call!645637)))

(declare-fun c!1324094 () Bool)

(declare-fun bm!645631 () Bool)

(declare-fun c!1324093 () Bool)

(declare-fun c!1324091 () Bool)

(declare-fun call!645640 () List!68791)

(declare-fun call!645641 () (Set Context!13648))

(assert (=> bm!645631 (= call!645641 (derivationStepZipperDown!2379 (ite c!1324094 (regOne!36169 (regOne!36168 r!11554)) (ite c!1324093 (regTwo!36168 (regOne!36168 r!11554)) (ite c!1324091 (regOne!36168 (regOne!36168 r!11554)) (reg!18157 (regOne!36168 r!11554))))) (ite (or c!1324094 c!1324093) (Context!13649 (++!15992 lt!2557106 (exprs!7324 auxCtx!45))) (Context!13649 call!645640)) a!1901))))

(declare-fun call!645639 () List!68791)

(declare-fun bm!645632 () Bool)

(assert (=> bm!645632 (= call!645639 ($colon$colon!2723 (exprs!7324 (Context!13649 (++!15992 lt!2557106 (exprs!7324 auxCtx!45)))) (ite (or c!1324093 c!1324091) (regTwo!36168 (regOne!36168 r!11554)) (regOne!36168 r!11554))))))

(declare-fun b!7095428 () Bool)

(declare-fun e!4265190 () (Set Context!13648))

(declare-fun call!645638 () (Set Context!13648))

(declare-fun call!645636 () (Set Context!13648))

(assert (=> b!7095428 (= e!4265190 (set.union call!645638 call!645636))))

(declare-fun bm!645633 () Bool)

(assert (=> bm!645633 (= call!645637 call!645636)))

(declare-fun b!7095429 () Bool)

(declare-fun e!4265188 () Bool)

(assert (=> b!7095429 (= e!4265188 (nullable!7468 (regOne!36168 (regOne!36168 r!11554))))))

(declare-fun b!7095430 () Bool)

(declare-fun c!1324092 () Bool)

(assert (=> b!7095430 (= c!1324092 (is-Star!17828 (regOne!36168 r!11554)))))

(declare-fun e!4265192 () (Set Context!13648))

(assert (=> b!7095430 (= e!4265192 e!4265189)))

(declare-fun d!2217698 () Bool)

(declare-fun c!1324090 () Bool)

(assert (=> d!2217698 (= c!1324090 (and (is-ElementMatch!17828 (regOne!36168 r!11554)) (= (c!1324051 (regOne!36168 r!11554)) a!1901)))))

(declare-fun e!4265191 () (Set Context!13648))

(assert (=> d!2217698 (= (derivationStepZipperDown!2379 (regOne!36168 r!11554) (Context!13649 (++!15992 lt!2557106 (exprs!7324 auxCtx!45))) a!1901) e!4265191)))

(declare-fun b!7095431 () Bool)

(declare-fun e!4265187 () (Set Context!13648))

(assert (=> b!7095431 (= e!4265187 (set.union call!645641 call!645638))))

(declare-fun bm!645634 () Bool)

(assert (=> bm!645634 (= call!645640 call!645639)))

(declare-fun b!7095432 () Bool)

(assert (=> b!7095432 (= e!4265191 e!4265187)))

(assert (=> b!7095432 (= c!1324094 (is-Union!17828 (regOne!36168 r!11554)))))

(declare-fun bm!645635 () Bool)

(assert (=> bm!645635 (= call!645638 (derivationStepZipperDown!2379 (ite c!1324094 (regTwo!36169 (regOne!36168 r!11554)) (regOne!36168 (regOne!36168 r!11554))) (ite c!1324094 (Context!13649 (++!15992 lt!2557106 (exprs!7324 auxCtx!45))) (Context!13649 call!645639)) a!1901))))

(declare-fun b!7095433 () Bool)

(assert (=> b!7095433 (= c!1324093 e!4265188)))

(declare-fun res!2897533 () Bool)

(assert (=> b!7095433 (=> (not res!2897533) (not e!4265188))))

(assert (=> b!7095433 (= res!2897533 (is-Concat!26673 (regOne!36168 r!11554)))))

(assert (=> b!7095433 (= e!4265187 e!4265190)))

(declare-fun b!7095434 () Bool)

(assert (=> b!7095434 (= e!4265191 (set.insert (Context!13649 (++!15992 lt!2557106 (exprs!7324 auxCtx!45))) (as set.empty (Set Context!13648))))))

(declare-fun b!7095435 () Bool)

(assert (=> b!7095435 (= e!4265192 call!645637)))

(declare-fun b!7095436 () Bool)

(assert (=> b!7095436 (= e!4265189 (as set.empty (Set Context!13648)))))

(declare-fun bm!645636 () Bool)

(assert (=> bm!645636 (= call!645636 call!645641)))

(declare-fun b!7095437 () Bool)

(assert (=> b!7095437 (= e!4265190 e!4265192)))

(assert (=> b!7095437 (= c!1324091 (is-Concat!26673 (regOne!36168 r!11554)))))

(assert (= (and d!2217698 c!1324090) b!7095434))

(assert (= (and d!2217698 (not c!1324090)) b!7095432))

(assert (= (and b!7095432 c!1324094) b!7095431))

(assert (= (and b!7095432 (not c!1324094)) b!7095433))

(assert (= (and b!7095433 res!2897533) b!7095429))

(assert (= (and b!7095433 c!1324093) b!7095428))

(assert (= (and b!7095433 (not c!1324093)) b!7095437))

(assert (= (and b!7095437 c!1324091) b!7095435))

(assert (= (and b!7095437 (not c!1324091)) b!7095430))

(assert (= (and b!7095430 c!1324092) b!7095427))

(assert (= (and b!7095430 (not c!1324092)) b!7095436))

(assert (= (or b!7095435 b!7095427) bm!645634))

(assert (= (or b!7095435 b!7095427) bm!645633))

(assert (= (or b!7095428 bm!645633) bm!645636))

(assert (= (or b!7095428 bm!645634) bm!645632))

(assert (= (or b!7095431 b!7095428) bm!645635))

(assert (= (or b!7095431 bm!645636) bm!645631))

(assert (=> b!7095429 m!7823144))

(declare-fun m!7823170 () Bool)

(assert (=> bm!645635 m!7823170))

(declare-fun m!7823172 () Bool)

(assert (=> bm!645631 m!7823172))

(declare-fun m!7823174 () Bool)

(assert (=> bm!645632 m!7823174))

(declare-fun m!7823176 () Bool)

(assert (=> b!7095434 m!7823176))

(assert (=> b!7095249 d!2217698))

(declare-fun b!7095438 () Bool)

(declare-fun e!4265194 () List!68791)

(assert (=> b!7095438 (= e!4265194 (exprs!7324 auxCtx!45))))

(declare-fun lt!2557140 () List!68791)

(declare-fun e!4265193 () Bool)

(declare-fun b!7095441 () Bool)

(assert (=> b!7095441 (= e!4265193 (or (not (= (exprs!7324 auxCtx!45) Nil!68667)) (= lt!2557140 lt!2557106)))))

(declare-fun b!7095440 () Bool)

(declare-fun res!2897535 () Bool)

(assert (=> b!7095440 (=> (not res!2897535) (not e!4265193))))

(assert (=> b!7095440 (= res!2897535 (= (size!41326 lt!2557140) (+ (size!41326 lt!2557106) (size!41326 (exprs!7324 auxCtx!45)))))))

(declare-fun b!7095439 () Bool)

(assert (=> b!7095439 (= e!4265194 (Cons!68667 (h!75115 lt!2557106) (++!15992 (t!382588 lt!2557106) (exprs!7324 auxCtx!45))))))

(declare-fun d!2217700 () Bool)

(assert (=> d!2217700 e!4265193))

(declare-fun res!2897534 () Bool)

(assert (=> d!2217700 (=> (not res!2897534) (not e!4265193))))

(assert (=> d!2217700 (= res!2897534 (= (content!13951 lt!2557140) (set.union (content!13951 lt!2557106) (content!13951 (exprs!7324 auxCtx!45)))))))

(assert (=> d!2217700 (= lt!2557140 e!4265194)))

(declare-fun c!1324095 () Bool)

(assert (=> d!2217700 (= c!1324095 (is-Nil!68667 lt!2557106))))

(assert (=> d!2217700 (= (++!15992 lt!2557106 (exprs!7324 auxCtx!45)) lt!2557140)))

(assert (= (and d!2217700 c!1324095) b!7095438))

(assert (= (and d!2217700 (not c!1324095)) b!7095439))

(assert (= (and d!2217700 res!2897534) b!7095440))

(assert (= (and b!7095440 res!2897535) b!7095441))

(declare-fun m!7823178 () Bool)

(assert (=> b!7095440 m!7823178))

(declare-fun m!7823180 () Bool)

(assert (=> b!7095440 m!7823180))

(assert (=> b!7095440 m!7823110))

(declare-fun m!7823182 () Bool)

(assert (=> b!7095439 m!7823182))

(declare-fun m!7823184 () Bool)

(assert (=> d!2217700 m!7823184))

(declare-fun m!7823186 () Bool)

(assert (=> d!2217700 m!7823186))

(assert (=> d!2217700 m!7823118))

(assert (=> b!7095249 d!2217700))

(declare-fun bs!1883877 () Bool)

(declare-fun d!2217702 () Bool)

(assert (= bs!1883877 (and d!2217702 b!7095257)))

(declare-fun lambda!430402 () Int)

(assert (=> bs!1883877 (= lambda!430402 lambda!430376)))

(assert (=> d!2217702 (= (derivationStepZipperDown!2379 (regOne!36168 r!11554) (Context!13649 (++!15992 (exprs!7324 lt!2557103) (exprs!7324 auxCtx!45))) a!1901) (appendTo!885 (derivationStepZipperDown!2379 (regOne!36168 r!11554) lt!2557103 a!1901) auxCtx!45))))

(declare-fun lt!2557146 () Unit!162339)

(assert (=> d!2217702 (= lt!2557146 (lemmaConcatPreservesForall!1123 (exprs!7324 lt!2557103) (exprs!7324 auxCtx!45) lambda!430402))))

(declare-fun lt!2557145 () Unit!162339)

(declare-fun choose!54710 (Context!13648 Regex!17828 C!35926 Context!13648) Unit!162339)

(assert (=> d!2217702 (= lt!2557145 (choose!54710 lt!2557103 (regOne!36168 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2217702 (validRegex!9103 (regOne!36168 r!11554))))

(assert (=> d!2217702 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!193 lt!2557103 (regOne!36168 r!11554) a!1901 auxCtx!45) lt!2557145)))

(declare-fun bs!1883878 () Bool)

(assert (= bs!1883878 d!2217702))

(assert (=> bs!1883878 m!7823054))

(assert (=> bs!1883878 m!7823054))

(assert (=> bs!1883878 m!7823056))

(declare-fun m!7823190 () Bool)

(assert (=> bs!1883878 m!7823190))

(declare-fun m!7823192 () Bool)

(assert (=> bs!1883878 m!7823192))

(declare-fun m!7823194 () Bool)

(assert (=> bs!1883878 m!7823194))

(declare-fun m!7823196 () Bool)

(assert (=> bs!1883878 m!7823196))

(declare-fun m!7823198 () Bool)

(assert (=> bs!1883878 m!7823198))

(assert (=> b!7095249 d!2217702))

(declare-fun b!7095444 () Bool)

(declare-fun e!4265197 () (Set Context!13648))

(declare-fun call!645643 () (Set Context!13648))

(assert (=> b!7095444 (= e!4265197 call!645643)))

(declare-fun c!1324100 () Bool)

(declare-fun c!1324101 () Bool)

(declare-fun call!645647 () (Set Context!13648))

(declare-fun bm!645637 () Bool)

(declare-fun call!645646 () List!68791)

(declare-fun c!1324098 () Bool)

(assert (=> bm!645637 (= call!645647 (derivationStepZipperDown!2379 (ite c!1324101 (regOne!36169 (regOne!36168 r!11554)) (ite c!1324100 (regTwo!36168 (regOne!36168 r!11554)) (ite c!1324098 (regOne!36168 (regOne!36168 r!11554)) (reg!18157 (regOne!36168 r!11554))))) (ite (or c!1324101 c!1324100) lt!2557103 (Context!13649 call!645646)) a!1901))))

(declare-fun bm!645638 () Bool)

(declare-fun call!645645 () List!68791)

(assert (=> bm!645638 (= call!645645 ($colon$colon!2723 (exprs!7324 lt!2557103) (ite (or c!1324100 c!1324098) (regTwo!36168 (regOne!36168 r!11554)) (regOne!36168 r!11554))))))

(declare-fun b!7095445 () Bool)

(declare-fun e!4265198 () (Set Context!13648))

(declare-fun call!645644 () (Set Context!13648))

(declare-fun call!645642 () (Set Context!13648))

(assert (=> b!7095445 (= e!4265198 (set.union call!645644 call!645642))))

(declare-fun bm!645639 () Bool)

(assert (=> bm!645639 (= call!645643 call!645642)))

(declare-fun b!7095446 () Bool)

(declare-fun e!4265196 () Bool)

(assert (=> b!7095446 (= e!4265196 (nullable!7468 (regOne!36168 (regOne!36168 r!11554))))))

(declare-fun b!7095447 () Bool)

(declare-fun c!1324099 () Bool)

(assert (=> b!7095447 (= c!1324099 (is-Star!17828 (regOne!36168 r!11554)))))

(declare-fun e!4265200 () (Set Context!13648))

(assert (=> b!7095447 (= e!4265200 e!4265197)))

(declare-fun d!2217706 () Bool)

(declare-fun c!1324097 () Bool)

(assert (=> d!2217706 (= c!1324097 (and (is-ElementMatch!17828 (regOne!36168 r!11554)) (= (c!1324051 (regOne!36168 r!11554)) a!1901)))))

(declare-fun e!4265199 () (Set Context!13648))

(assert (=> d!2217706 (= (derivationStepZipperDown!2379 (regOne!36168 r!11554) lt!2557103 a!1901) e!4265199)))

(declare-fun b!7095448 () Bool)

(declare-fun e!4265195 () (Set Context!13648))

(assert (=> b!7095448 (= e!4265195 (set.union call!645647 call!645644))))

(declare-fun bm!645640 () Bool)

(assert (=> bm!645640 (= call!645646 call!645645)))

(declare-fun b!7095449 () Bool)

(assert (=> b!7095449 (= e!4265199 e!4265195)))

(assert (=> b!7095449 (= c!1324101 (is-Union!17828 (regOne!36168 r!11554)))))

(declare-fun bm!645641 () Bool)

(assert (=> bm!645641 (= call!645644 (derivationStepZipperDown!2379 (ite c!1324101 (regTwo!36169 (regOne!36168 r!11554)) (regOne!36168 (regOne!36168 r!11554))) (ite c!1324101 lt!2557103 (Context!13649 call!645645)) a!1901))))

(declare-fun b!7095450 () Bool)

(assert (=> b!7095450 (= c!1324100 e!4265196)))

(declare-fun res!2897536 () Bool)

(assert (=> b!7095450 (=> (not res!2897536) (not e!4265196))))

(assert (=> b!7095450 (= res!2897536 (is-Concat!26673 (regOne!36168 r!11554)))))

(assert (=> b!7095450 (= e!4265195 e!4265198)))

(declare-fun b!7095451 () Bool)

(assert (=> b!7095451 (= e!4265199 (set.insert lt!2557103 (as set.empty (Set Context!13648))))))

(declare-fun b!7095452 () Bool)

(assert (=> b!7095452 (= e!4265200 call!645643)))

(declare-fun b!7095453 () Bool)

(assert (=> b!7095453 (= e!4265197 (as set.empty (Set Context!13648)))))

(declare-fun bm!645642 () Bool)

(assert (=> bm!645642 (= call!645642 call!645647)))

(declare-fun b!7095454 () Bool)

(assert (=> b!7095454 (= e!4265198 e!4265200)))

(assert (=> b!7095454 (= c!1324098 (is-Concat!26673 (regOne!36168 r!11554)))))

(assert (= (and d!2217706 c!1324097) b!7095451))

(assert (= (and d!2217706 (not c!1324097)) b!7095449))

(assert (= (and b!7095449 c!1324101) b!7095448))

(assert (= (and b!7095449 (not c!1324101)) b!7095450))

(assert (= (and b!7095450 res!2897536) b!7095446))

(assert (= (and b!7095450 c!1324100) b!7095445))

(assert (= (and b!7095450 (not c!1324100)) b!7095454))

(assert (= (and b!7095454 c!1324098) b!7095452))

(assert (= (and b!7095454 (not c!1324098)) b!7095447))

(assert (= (and b!7095447 c!1324099) b!7095444))

(assert (= (and b!7095447 (not c!1324099)) b!7095453))

(assert (= (or b!7095452 b!7095444) bm!645640))

(assert (= (or b!7095452 b!7095444) bm!645639))

(assert (= (or b!7095445 bm!645639) bm!645642))

(assert (= (or b!7095445 bm!645640) bm!645638))

(assert (= (or b!7095448 b!7095445) bm!645641))

(assert (= (or b!7095448 bm!645642) bm!645637))

(assert (=> b!7095446 m!7823144))

(declare-fun m!7823200 () Bool)

(assert (=> bm!645641 m!7823200))

(declare-fun m!7823202 () Bool)

(assert (=> bm!645637 m!7823202))

(declare-fun m!7823204 () Bool)

(assert (=> bm!645638 m!7823204))

(declare-fun m!7823206 () Bool)

(assert (=> b!7095451 m!7823206))

(assert (=> b!7095249 d!2217706))

(declare-fun d!2217708 () Bool)

(assert (=> d!2217708 (= ($colon$colon!2723 (exprs!7324 c!9994) (regTwo!36168 r!11554)) (Cons!68667 (regTwo!36168 r!11554) (exprs!7324 c!9994)))))

(assert (=> b!7095249 d!2217708))

(declare-fun d!2217710 () Bool)

(declare-fun nullableFct!2869 (Regex!17828) Bool)

(assert (=> d!2217710 (= (nullable!7468 (regOne!36168 r!11554)) (nullableFct!2869 (regOne!36168 r!11554)))))

(declare-fun bs!1883879 () Bool)

(assert (= bs!1883879 d!2217710))

(declare-fun m!7823208 () Bool)

(assert (=> bs!1883879 m!7823208))

(assert (=> b!7095259 d!2217710))

(declare-fun bm!645643 () Bool)

(declare-fun call!645650 () Bool)

(declare-fun c!1324102 () Bool)

(assert (=> bm!645643 (= call!645650 (validRegex!9103 (ite c!1324102 (regTwo!36169 r!11554) (regOne!36168 r!11554))))))

(declare-fun b!7095455 () Bool)

(declare-fun res!2897538 () Bool)

(declare-fun e!4265206 () Bool)

(assert (=> b!7095455 (=> (not res!2897538) (not e!4265206))))

(declare-fun call!645649 () Bool)

(assert (=> b!7095455 (= res!2897538 call!645649)))

(declare-fun e!4265201 () Bool)

(assert (=> b!7095455 (= e!4265201 e!4265206)))

(declare-fun c!1324103 () Bool)

(declare-fun call!645648 () Bool)

(declare-fun bm!645644 () Bool)

(assert (=> bm!645644 (= call!645648 (validRegex!9103 (ite c!1324103 (reg!18157 r!11554) (ite c!1324102 (regOne!36169 r!11554) (regTwo!36168 r!11554)))))))

(declare-fun b!7095456 () Bool)

(declare-fun e!4265203 () Bool)

(assert (=> b!7095456 (= e!4265203 call!645648)))

(declare-fun b!7095457 () Bool)

(declare-fun e!4265204 () Bool)

(assert (=> b!7095457 (= e!4265204 e!4265203)))

(declare-fun res!2897540 () Bool)

(assert (=> b!7095457 (= res!2897540 (not (nullable!7468 (reg!18157 r!11554))))))

(assert (=> b!7095457 (=> (not res!2897540) (not e!4265203))))

(declare-fun b!7095458 () Bool)

(declare-fun res!2897541 () Bool)

(declare-fun e!4265207 () Bool)

(assert (=> b!7095458 (=> res!2897541 e!4265207)))

(assert (=> b!7095458 (= res!2897541 (not (is-Concat!26673 r!11554)))))

(assert (=> b!7095458 (= e!4265201 e!4265207)))

(declare-fun d!2217712 () Bool)

(declare-fun res!2897539 () Bool)

(declare-fun e!4265202 () Bool)

(assert (=> d!2217712 (=> res!2897539 e!4265202)))

(assert (=> d!2217712 (= res!2897539 (is-ElementMatch!17828 r!11554))))

(assert (=> d!2217712 (= (validRegex!9103 r!11554) e!4265202)))

(declare-fun b!7095459 () Bool)

(assert (=> b!7095459 (= e!4265204 e!4265201)))

(assert (=> b!7095459 (= c!1324102 (is-Union!17828 r!11554))))

(declare-fun b!7095460 () Bool)

(assert (=> b!7095460 (= e!4265206 call!645650)))

(declare-fun b!7095461 () Bool)

(declare-fun e!4265205 () Bool)

(assert (=> b!7095461 (= e!4265207 e!4265205)))

(declare-fun res!2897537 () Bool)

(assert (=> b!7095461 (=> (not res!2897537) (not e!4265205))))

(assert (=> b!7095461 (= res!2897537 call!645650)))

(declare-fun b!7095462 () Bool)

(assert (=> b!7095462 (= e!4265205 call!645649)))

(declare-fun bm!645645 () Bool)

(assert (=> bm!645645 (= call!645649 call!645648)))

(declare-fun b!7095463 () Bool)

(assert (=> b!7095463 (= e!4265202 e!4265204)))

(assert (=> b!7095463 (= c!1324103 (is-Star!17828 r!11554))))

(assert (= (and d!2217712 (not res!2897539)) b!7095463))

(assert (= (and b!7095463 c!1324103) b!7095457))

(assert (= (and b!7095463 (not c!1324103)) b!7095459))

(assert (= (and b!7095457 res!2897540) b!7095456))

(assert (= (and b!7095459 c!1324102) b!7095455))

(assert (= (and b!7095459 (not c!1324102)) b!7095458))

(assert (= (and b!7095455 res!2897538) b!7095460))

(assert (= (and b!7095458 (not res!2897541)) b!7095461))

(assert (= (and b!7095461 res!2897537) b!7095462))

(assert (= (or b!7095455 b!7095462) bm!645645))

(assert (= (or b!7095460 b!7095461) bm!645643))

(assert (= (or b!7095456 bm!645645) bm!645644))

(declare-fun m!7823210 () Bool)

(assert (=> bm!645643 m!7823210))

(declare-fun m!7823212 () Bool)

(assert (=> bm!645644 m!7823212))

(declare-fun m!7823214 () Bool)

(assert (=> b!7095457 m!7823214))

(assert (=> start!690662 d!2217712))

(declare-fun bs!1883881 () Bool)

(declare-fun d!2217714 () Bool)

(assert (= bs!1883881 (and d!2217714 b!7095257)))

(declare-fun lambda!430405 () Int)

(assert (=> bs!1883881 (= lambda!430405 lambda!430376)))

(declare-fun bs!1883882 () Bool)

(assert (= bs!1883882 (and d!2217714 d!2217702)))

(assert (=> bs!1883882 (= lambda!430405 lambda!430402)))

(assert (=> d!2217714 (= (inv!87436 c!9994) (forall!16752 (exprs!7324 c!9994) lambda!430405))))

(declare-fun bs!1883883 () Bool)

(assert (= bs!1883883 d!2217714))

(declare-fun m!7823222 () Bool)

(assert (=> bs!1883883 m!7823222))

(assert (=> start!690662 d!2217714))

(declare-fun bs!1883884 () Bool)

(declare-fun d!2217720 () Bool)

(assert (= bs!1883884 (and d!2217720 b!7095257)))

(declare-fun lambda!430406 () Int)

(assert (=> bs!1883884 (= lambda!430406 lambda!430376)))

(declare-fun bs!1883885 () Bool)

(assert (= bs!1883885 (and d!2217720 d!2217702)))

(assert (=> bs!1883885 (= lambda!430406 lambda!430402)))

(declare-fun bs!1883886 () Bool)

(assert (= bs!1883886 (and d!2217720 d!2217714)))

(assert (=> bs!1883886 (= lambda!430406 lambda!430405)))

(assert (=> d!2217720 (= (inv!87436 auxCtx!45) (forall!16752 (exprs!7324 auxCtx!45) lambda!430406))))

(declare-fun bs!1883887 () Bool)

(assert (= bs!1883887 d!2217720))

(declare-fun m!7823224 () Bool)

(assert (=> bs!1883887 m!7823224))

(assert (=> start!690662 d!2217720))

(declare-fun d!2217722 () Bool)

(declare-fun res!2897542 () Bool)

(declare-fun e!4265208 () Bool)

(assert (=> d!2217722 (=> res!2897542 e!4265208)))

(assert (=> d!2217722 (= res!2897542 (is-Nil!68667 (exprs!7324 auxCtx!45)))))

(assert (=> d!2217722 (= (forall!16752 (exprs!7324 auxCtx!45) lambda!430376) e!4265208)))

(declare-fun b!7095464 () Bool)

(declare-fun e!4265209 () Bool)

(assert (=> b!7095464 (= e!4265208 e!4265209)))

(declare-fun res!2897543 () Bool)

(assert (=> b!7095464 (=> (not res!2897543) (not e!4265209))))

(assert (=> b!7095464 (= res!2897543 (dynLambda!28017 lambda!430376 (h!75115 (exprs!7324 auxCtx!45))))))

(declare-fun b!7095465 () Bool)

(assert (=> b!7095465 (= e!4265209 (forall!16752 (t!382588 (exprs!7324 auxCtx!45)) lambda!430376))))

(assert (= (and d!2217722 (not res!2897542)) b!7095464))

(assert (= (and b!7095464 res!2897543) b!7095465))

(declare-fun b_lambda!271133 () Bool)

(assert (=> (not b_lambda!271133) (not b!7095464)))

(declare-fun m!7823226 () Bool)

(assert (=> b!7095464 m!7823226))

(declare-fun m!7823228 () Bool)

(assert (=> b!7095465 m!7823228))

(assert (=> b!7095253 d!2217722))

(declare-fun b!7095477 () Bool)

(declare-fun e!4265212 () Bool)

(declare-fun tp!1949754 () Bool)

(declare-fun tp!1949753 () Bool)

(assert (=> b!7095477 (= e!4265212 (and tp!1949754 tp!1949753))))

(declare-fun b!7095478 () Bool)

(declare-fun tp!1949755 () Bool)

(assert (=> b!7095478 (= e!4265212 tp!1949755)))

(declare-fun b!7095476 () Bool)

(assert (=> b!7095476 (= e!4265212 tp_is_empty!44889)))

(assert (=> b!7095252 (= tp!1949721 e!4265212)))

(declare-fun b!7095479 () Bool)

(declare-fun tp!1949757 () Bool)

(declare-fun tp!1949756 () Bool)

(assert (=> b!7095479 (= e!4265212 (and tp!1949757 tp!1949756))))

(assert (= (and b!7095252 (is-ElementMatch!17828 (regOne!36169 r!11554))) b!7095476))

(assert (= (and b!7095252 (is-Concat!26673 (regOne!36169 r!11554))) b!7095477))

(assert (= (and b!7095252 (is-Star!17828 (regOne!36169 r!11554))) b!7095478))

(assert (= (and b!7095252 (is-Union!17828 (regOne!36169 r!11554))) b!7095479))

(declare-fun b!7095481 () Bool)

(declare-fun e!4265213 () Bool)

(declare-fun tp!1949759 () Bool)

(declare-fun tp!1949758 () Bool)

(assert (=> b!7095481 (= e!4265213 (and tp!1949759 tp!1949758))))

(declare-fun b!7095482 () Bool)

(declare-fun tp!1949760 () Bool)

(assert (=> b!7095482 (= e!4265213 tp!1949760)))

(declare-fun b!7095480 () Bool)

(assert (=> b!7095480 (= e!4265213 tp_is_empty!44889)))

(assert (=> b!7095252 (= tp!1949717 e!4265213)))

(declare-fun b!7095483 () Bool)

(declare-fun tp!1949762 () Bool)

(declare-fun tp!1949761 () Bool)

(assert (=> b!7095483 (= e!4265213 (and tp!1949762 tp!1949761))))

(assert (= (and b!7095252 (is-ElementMatch!17828 (regTwo!36169 r!11554))) b!7095480))

(assert (= (and b!7095252 (is-Concat!26673 (regTwo!36169 r!11554))) b!7095481))

(assert (= (and b!7095252 (is-Star!17828 (regTwo!36169 r!11554))) b!7095482))

(assert (= (and b!7095252 (is-Union!17828 (regTwo!36169 r!11554))) b!7095483))

(declare-fun b!7095485 () Bool)

(declare-fun e!4265214 () Bool)

(declare-fun tp!1949764 () Bool)

(declare-fun tp!1949763 () Bool)

(assert (=> b!7095485 (= e!4265214 (and tp!1949764 tp!1949763))))

(declare-fun b!7095486 () Bool)

(declare-fun tp!1949765 () Bool)

(assert (=> b!7095486 (= e!4265214 tp!1949765)))

(declare-fun b!7095484 () Bool)

(assert (=> b!7095484 (= e!4265214 tp_is_empty!44889)))

(assert (=> b!7095256 (= tp!1949719 e!4265214)))

(declare-fun b!7095487 () Bool)

(declare-fun tp!1949767 () Bool)

(declare-fun tp!1949766 () Bool)

(assert (=> b!7095487 (= e!4265214 (and tp!1949767 tp!1949766))))

(assert (= (and b!7095256 (is-ElementMatch!17828 (regOne!36168 r!11554))) b!7095484))

(assert (= (and b!7095256 (is-Concat!26673 (regOne!36168 r!11554))) b!7095485))

(assert (= (and b!7095256 (is-Star!17828 (regOne!36168 r!11554))) b!7095486))

(assert (= (and b!7095256 (is-Union!17828 (regOne!36168 r!11554))) b!7095487))

(declare-fun b!7095489 () Bool)

(declare-fun e!4265215 () Bool)

(declare-fun tp!1949769 () Bool)

(declare-fun tp!1949768 () Bool)

(assert (=> b!7095489 (= e!4265215 (and tp!1949769 tp!1949768))))

(declare-fun b!7095490 () Bool)

(declare-fun tp!1949770 () Bool)

(assert (=> b!7095490 (= e!4265215 tp!1949770)))

(declare-fun b!7095488 () Bool)

(assert (=> b!7095488 (= e!4265215 tp_is_empty!44889)))

(assert (=> b!7095256 (= tp!1949716 e!4265215)))

(declare-fun b!7095491 () Bool)

(declare-fun tp!1949772 () Bool)

(declare-fun tp!1949771 () Bool)

(assert (=> b!7095491 (= e!4265215 (and tp!1949772 tp!1949771))))

(assert (= (and b!7095256 (is-ElementMatch!17828 (regTwo!36168 r!11554))) b!7095488))

(assert (= (and b!7095256 (is-Concat!26673 (regTwo!36168 r!11554))) b!7095489))

(assert (= (and b!7095256 (is-Star!17828 (regTwo!36168 r!11554))) b!7095490))

(assert (= (and b!7095256 (is-Union!17828 (regTwo!36168 r!11554))) b!7095491))

(declare-fun b!7095496 () Bool)

(declare-fun e!4265218 () Bool)

(declare-fun tp!1949777 () Bool)

(declare-fun tp!1949778 () Bool)

(assert (=> b!7095496 (= e!4265218 (and tp!1949777 tp!1949778))))

(assert (=> b!7095260 (= tp!1949715 e!4265218)))

(assert (= (and b!7095260 (is-Cons!68667 (exprs!7324 c!9994))) b!7095496))

(declare-fun b!7095498 () Bool)

(declare-fun e!4265219 () Bool)

(declare-fun tp!1949780 () Bool)

(declare-fun tp!1949779 () Bool)

(assert (=> b!7095498 (= e!4265219 (and tp!1949780 tp!1949779))))

(declare-fun b!7095499 () Bool)

(declare-fun tp!1949781 () Bool)

(assert (=> b!7095499 (= e!4265219 tp!1949781)))

(declare-fun b!7095497 () Bool)

(assert (=> b!7095497 (= e!4265219 tp_is_empty!44889)))

(assert (=> b!7095254 (= tp!1949720 e!4265219)))

(declare-fun b!7095500 () Bool)

(declare-fun tp!1949783 () Bool)

(declare-fun tp!1949782 () Bool)

(assert (=> b!7095500 (= e!4265219 (and tp!1949783 tp!1949782))))

(assert (= (and b!7095254 (is-ElementMatch!17828 (reg!18157 r!11554))) b!7095497))

(assert (= (and b!7095254 (is-Concat!26673 (reg!18157 r!11554))) b!7095498))

(assert (= (and b!7095254 (is-Star!17828 (reg!18157 r!11554))) b!7095499))

(assert (= (and b!7095254 (is-Union!17828 (reg!18157 r!11554))) b!7095500))

(declare-fun b!7095501 () Bool)

(declare-fun e!4265220 () Bool)

(declare-fun tp!1949784 () Bool)

(declare-fun tp!1949785 () Bool)

(assert (=> b!7095501 (= e!4265220 (and tp!1949784 tp!1949785))))

(assert (=> b!7095248 (= tp!1949718 e!4265220)))

(assert (= (and b!7095248 (is-Cons!68667 (exprs!7324 auxCtx!45))) b!7095501))

(declare-fun b_lambda!271135 () Bool)

(assert (= b_lambda!271131 (or b!7095257 b_lambda!271135)))

(declare-fun bs!1883888 () Bool)

(declare-fun d!2217724 () Bool)

(assert (= bs!1883888 (and d!2217724 b!7095257)))

(assert (=> bs!1883888 (= (dynLambda!28017 lambda!430376 (h!75115 (exprs!7324 c!9994))) (validRegex!9103 (h!75115 (exprs!7324 c!9994))))))

(declare-fun m!7823230 () Bool)

(assert (=> bs!1883888 m!7823230))

(assert (=> b!7095423 d!2217724))

(declare-fun b_lambda!271137 () Bool)

(assert (= b_lambda!271133 (or b!7095257 b_lambda!271137)))

(declare-fun bs!1883889 () Bool)

(declare-fun d!2217726 () Bool)

(assert (= bs!1883889 (and d!2217726 b!7095257)))

(assert (=> bs!1883889 (= (dynLambda!28017 lambda!430376 (h!75115 (exprs!7324 auxCtx!45))) (validRegex!9103 (h!75115 (exprs!7324 auxCtx!45))))))

(declare-fun m!7823232 () Bool)

(assert (=> bs!1883889 m!7823232))

(assert (=> b!7095464 d!2217726))

(push 1)

(assert (not b!7095358))

(assert (not d!2217720))

(assert (not bs!1883888))

(assert (not b!7095393))

(assert (not b!7095490))

(assert (not b_lambda!271137))

(assert (not b!7095485))

(assert (not b!7095424))

(assert (not b!7095440))

(assert (not b!7095465))

(assert (not b!7095486))

(assert (not bm!645596))

(assert (not bm!645635))

(assert (not d!2217672))

(assert (not d!2217674))

(assert (not b!7095478))

(assert (not bm!645632))

(assert (not bm!645644))

(assert (not b!7095446))

(assert (not b!7095439))

(assert (not b_lambda!271135))

(assert (not b!7095496))

(assert (not b!7095457))

(assert (not bm!645638))

(assert (not bm!645620))

(assert (not b!7095501))

(assert (not b!7095481))

(assert (not d!2217696))

(assert (not bm!645595))

(assert (not bm!645619))

(assert (not d!2217700))

(assert (not b!7095498))

(assert (not d!2217714))

(assert (not bm!645625))

(assert (not b!7095491))

(assert (not bm!645626))

(assert (not bm!645629))

(assert (not b!7095483))

(assert (not d!2217694))

(assert (not b!7095482))

(assert (not b!7095406))

(assert (not b!7095357))

(assert (not d!2217702))

(assert (not bm!645631))

(assert tp_is_empty!44889)

(assert (not d!2217710))

(assert (not b!7095487))

(assert (not b!7095477))

(assert (not bm!645623))

(assert (not b!7095429))

(assert (not b!7095479))

(assert (not bm!645641))

(assert (not bm!645637))

(assert (not bs!1883889))

(assert (not b!7095489))

(assert (not b!7095500))

(assert (not b!7095499))

(assert (not b!7095323))

(assert (not bm!645643))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

