; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!544448 () Bool)

(assert start!544448)

(declare-fun b!5143418 () Bool)

(declare-fun e!3207355 () Bool)

(declare-fun tp_is_empty!38091 () Bool)

(assert (=> b!5143418 (= e!3207355 tp_is_empty!38091)))

(declare-fun b!5143419 () Bool)

(declare-fun tp!1436235 () Bool)

(declare-fun tp!1436237 () Bool)

(assert (=> b!5143419 (= e!3207355 (and tp!1436235 tp!1436237))))

(declare-fun b!5143420 () Bool)

(declare-fun res!2189883 () Bool)

(declare-fun e!3207356 () Bool)

(assert (=> b!5143420 (=> (not res!2189883) (not e!3207356))))

(declare-fun e!3207354 () Bool)

(assert (=> b!5143420 (= res!2189883 e!3207354)))

(declare-fun res!2189884 () Bool)

(assert (=> b!5143420 (=> res!2189884 e!3207354)))

(declare-datatypes ((C!29208 0))(
  ( (C!29209 (val!24256 Int)) )
))
(declare-datatypes ((Regex!14471 0))(
  ( (ElementMatch!14471 (c!885434 C!29208)) (Concat!23316 (regOne!29454 Regex!14471) (regTwo!29454 Regex!14471)) (EmptyExpr!14471) (Star!14471 (reg!14800 Regex!14471)) (EmptyLang!14471) (Union!14471 (regOne!29455 Regex!14471) (regTwo!29455 Regex!14471)) )
))
(declare-fun expr!117 () Regex!14471)

(declare-fun lostCause!1494 (Regex!14471) Bool)

(assert (=> b!5143420 (= res!2189884 (lostCause!1494 expr!117))))

(declare-fun b!5143422 () Bool)

(declare-fun tp!1436233 () Bool)

(assert (=> b!5143422 (= e!3207355 tp!1436233)))

(declare-fun b!5143423 () Bool)

(declare-fun e!3207357 () Bool)

(declare-fun tp!1436236 () Bool)

(assert (=> b!5143423 (= e!3207357 tp!1436236)))

(declare-fun b!5143424 () Bool)

(declare-fun res!2189885 () Bool)

(assert (=> b!5143424 (=> (not res!2189885) (not e!3207356))))

(declare-fun a!1296 () C!29208)

(get-info :version)

(assert (=> b!5143424 (= res!2189885 (and (or (not ((_ is ElementMatch!14471) expr!117)) (not (= (c!885434 expr!117) a!1296))) ((_ is Union!14471) expr!117)))))

(declare-fun b!5143425 () Bool)

(declare-fun tp!1436234 () Bool)

(declare-fun tp!1436232 () Bool)

(assert (=> b!5143425 (= e!3207355 (and tp!1436234 tp!1436232))))

(declare-fun b!5143426 () Bool)

(declare-fun validRegex!6326 (Regex!14471) Bool)

(assert (=> b!5143426 (= e!3207356 (not (validRegex!6326 (regTwo!29455 expr!117))))))

(declare-datatypes ((List!59851 0))(
  ( (Nil!59727) (Cons!59727 (h!66175 Regex!14471) (t!372886 List!59851)) )
))
(declare-datatypes ((Context!7710 0))(
  ( (Context!7711 (exprs!4355 List!59851)) )
))
(declare-fun ctx!100 () Context!7710)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lostCauseZipper!1269 ((InoxSet Context!7710)) Bool)

(declare-fun derivationStepZipperDown!150 (Regex!14471 Context!7710 C!29208) (InoxSet Context!7710))

(assert (=> b!5143426 (lostCauseZipper!1269 (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296))))

(declare-datatypes ((Unit!151109 0))(
  ( (Unit!151110) )
))
(declare-fun lt!2120515 () Unit!151109)

(declare-fun lemmaLostCauseFixPointDerivDown!40 (Regex!14471 Context!7710 C!29208) Unit!151109)

(assert (=> b!5143426 (= lt!2120515 (lemmaLostCauseFixPointDerivDown!40 (regOne!29455 expr!117) ctx!100 a!1296))))

(declare-fun b!5143421 () Bool)

(declare-fun lostCause!1495 (Context!7710) Bool)

(assert (=> b!5143421 (= e!3207354 (lostCause!1495 ctx!100))))

(declare-fun res!2189882 () Bool)

(assert (=> start!544448 (=> (not res!2189882) (not e!3207356))))

(assert (=> start!544448 (= res!2189882 (validRegex!6326 expr!117))))

(assert (=> start!544448 e!3207356))

(assert (=> start!544448 e!3207355))

(declare-fun inv!79358 (Context!7710) Bool)

(assert (=> start!544448 (and (inv!79358 ctx!100) e!3207357)))

(assert (=> start!544448 tp_is_empty!38091))

(assert (= (and start!544448 res!2189882) b!5143420))

(assert (= (and b!5143420 (not res!2189884)) b!5143421))

(assert (= (and b!5143420 res!2189883) b!5143424))

(assert (= (and b!5143424 res!2189885) b!5143426))

(assert (= (and start!544448 ((_ is ElementMatch!14471) expr!117)) b!5143418))

(assert (= (and start!544448 ((_ is Concat!23316) expr!117)) b!5143419))

(assert (= (and start!544448 ((_ is Star!14471) expr!117)) b!5143422))

(assert (= (and start!544448 ((_ is Union!14471) expr!117)) b!5143425))

(assert (= start!544448 b!5143423))

(declare-fun m!6205250 () Bool)

(assert (=> b!5143420 m!6205250))

(declare-fun m!6205252 () Bool)

(assert (=> b!5143426 m!6205252))

(declare-fun m!6205254 () Bool)

(assert (=> b!5143426 m!6205254))

(assert (=> b!5143426 m!6205254))

(declare-fun m!6205256 () Bool)

(assert (=> b!5143426 m!6205256))

(declare-fun m!6205258 () Bool)

(assert (=> b!5143426 m!6205258))

(declare-fun m!6205260 () Bool)

(assert (=> b!5143421 m!6205260))

(declare-fun m!6205262 () Bool)

(assert (=> start!544448 m!6205262))

(declare-fun m!6205264 () Bool)

(assert (=> start!544448 m!6205264))

(check-sat tp_is_empty!38091 (not b!5143421) (not b!5143419) (not start!544448) (not b!5143423) (not b!5143422) (not b!5143420) (not b!5143426) (not b!5143425))
(check-sat)
(get-model)

(declare-fun d!1663043 () Bool)

(declare-fun lostCauseFct!353 (Regex!14471) Bool)

(assert (=> d!1663043 (= (lostCause!1494 expr!117) (lostCauseFct!353 expr!117))))

(declare-fun bs!1200900 () Bool)

(assert (= bs!1200900 d!1663043))

(declare-fun m!6205268 () Bool)

(assert (=> bs!1200900 m!6205268))

(assert (=> b!5143420 d!1663043))

(declare-fun b!5143472 () Bool)

(declare-fun e!3207399 () Bool)

(declare-fun call!359112 () Bool)

(assert (=> b!5143472 (= e!3207399 call!359112)))

(declare-fun bm!359107 () Bool)

(declare-fun call!359114 () Bool)

(declare-fun c!885446 () Bool)

(assert (=> bm!359107 (= call!359114 (validRegex!6326 (ite c!885446 (regOne!29455 (regTwo!29455 expr!117)) (regOne!29454 (regTwo!29455 expr!117)))))))

(declare-fun d!1663047 () Bool)

(declare-fun res!2189911 () Bool)

(declare-fun e!3207395 () Bool)

(assert (=> d!1663047 (=> res!2189911 e!3207395)))

(assert (=> d!1663047 (= res!2189911 ((_ is ElementMatch!14471) (regTwo!29455 expr!117)))))

(assert (=> d!1663047 (= (validRegex!6326 (regTwo!29455 expr!117)) e!3207395)))

(declare-fun bm!359108 () Bool)

(declare-fun c!885445 () Bool)

(assert (=> bm!359108 (= call!359112 (validRegex!6326 (ite c!885445 (reg!14800 (regTwo!29455 expr!117)) (ite c!885446 (regTwo!29455 (regTwo!29455 expr!117)) (regTwo!29454 (regTwo!29455 expr!117))))))))

(declare-fun b!5143473 () Bool)

(declare-fun res!2189915 () Bool)

(declare-fun e!3207396 () Bool)

(assert (=> b!5143473 (=> (not res!2189915) (not e!3207396))))

(assert (=> b!5143473 (= res!2189915 call!359114)))

(declare-fun e!3207397 () Bool)

(assert (=> b!5143473 (= e!3207397 e!3207396)))

(declare-fun bm!359109 () Bool)

(declare-fun call!359113 () Bool)

(assert (=> bm!359109 (= call!359113 call!359112)))

(declare-fun b!5143474 () Bool)

(declare-fun e!3207393 () Bool)

(assert (=> b!5143474 (= e!3207393 e!3207397)))

(assert (=> b!5143474 (= c!885446 ((_ is Union!14471) (regTwo!29455 expr!117)))))

(declare-fun b!5143475 () Bool)

(assert (=> b!5143475 (= e!3207395 e!3207393)))

(assert (=> b!5143475 (= c!885445 ((_ is Star!14471) (regTwo!29455 expr!117)))))

(declare-fun b!5143476 () Bool)

(assert (=> b!5143476 (= e!3207396 call!359113)))

(declare-fun b!5143477 () Bool)

(assert (=> b!5143477 (= e!3207393 e!3207399)))

(declare-fun res!2189914 () Bool)

(declare-fun nullable!4827 (Regex!14471) Bool)

(assert (=> b!5143477 (= res!2189914 (not (nullable!4827 (reg!14800 (regTwo!29455 expr!117)))))))

(assert (=> b!5143477 (=> (not res!2189914) (not e!3207399))))

(declare-fun b!5143478 () Bool)

(declare-fun e!3207398 () Bool)

(assert (=> b!5143478 (= e!3207398 call!359113)))

(declare-fun b!5143479 () Bool)

(declare-fun res!2189912 () Bool)

(declare-fun e!3207394 () Bool)

(assert (=> b!5143479 (=> res!2189912 e!3207394)))

(assert (=> b!5143479 (= res!2189912 (not ((_ is Concat!23316) (regTwo!29455 expr!117))))))

(assert (=> b!5143479 (= e!3207397 e!3207394)))

(declare-fun b!5143480 () Bool)

(assert (=> b!5143480 (= e!3207394 e!3207398)))

(declare-fun res!2189913 () Bool)

(assert (=> b!5143480 (=> (not res!2189913) (not e!3207398))))

(assert (=> b!5143480 (= res!2189913 call!359114)))

(assert (= (and d!1663047 (not res!2189911)) b!5143475))

(assert (= (and b!5143475 c!885445) b!5143477))

(assert (= (and b!5143475 (not c!885445)) b!5143474))

(assert (= (and b!5143477 res!2189914) b!5143472))

(assert (= (and b!5143474 c!885446) b!5143473))

(assert (= (and b!5143474 (not c!885446)) b!5143479))

(assert (= (and b!5143473 res!2189915) b!5143476))

(assert (= (and b!5143479 (not res!2189912)) b!5143480))

(assert (= (and b!5143480 res!2189913) b!5143478))

(assert (= (or b!5143476 b!5143478) bm!359109))

(assert (= (or b!5143473 b!5143480) bm!359107))

(assert (= (or b!5143472 bm!359109) bm!359108))

(declare-fun m!6205276 () Bool)

(assert (=> bm!359107 m!6205276))

(declare-fun m!6205278 () Bool)

(assert (=> bm!359108 m!6205278))

(declare-fun m!6205280 () Bool)

(assert (=> b!5143477 m!6205280))

(assert (=> b!5143426 d!1663047))

(declare-fun bs!1200908 () Bool)

(declare-fun b!5143568 () Bool)

(declare-fun d!1663051 () Bool)

(assert (= bs!1200908 (and b!5143568 d!1663051)))

(declare-fun lambda!256563 () Int)

(declare-fun lambda!256562 () Int)

(assert (=> bs!1200908 (not (= lambda!256563 lambda!256562))))

(declare-fun bs!1200909 () Bool)

(declare-fun b!5143569 () Bool)

(assert (= bs!1200909 (and b!5143569 d!1663051)))

(declare-fun lambda!256564 () Int)

(assert (=> bs!1200909 (not (= lambda!256564 lambda!256562))))

(declare-fun bs!1200910 () Bool)

(assert (= bs!1200910 (and b!5143569 b!5143568)))

(assert (=> bs!1200910 (= lambda!256564 lambda!256563)))

(declare-datatypes ((List!59854 0))(
  ( (Nil!59730) (Cons!59730 (h!66178 Context!7710) (t!372889 List!59854)) )
))
(declare-fun call!359147 () List!59854)

(declare-fun bm!359142 () Bool)

(declare-fun toList!8385 ((InoxSet Context!7710)) List!59854)

(assert (=> bm!359142 (= call!359147 (toList!8385 (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296)))))

(declare-fun c!885485 () Bool)

(declare-fun bm!359141 () Bool)

(declare-fun lt!2120565 () List!59854)

(declare-fun call!359146 () Bool)

(declare-fun lt!2120560 () List!59854)

(declare-fun exists!1790 (List!59854 Int) Bool)

(assert (=> bm!359141 (= call!359146 (exists!1790 (ite c!885485 lt!2120565 lt!2120560) (ite c!885485 lambda!256563 lambda!256564)))))

(declare-fun e!3207448 () Unit!151109)

(declare-fun Unit!151113 () Unit!151109)

(assert (=> b!5143568 (= e!3207448 Unit!151113)))

(assert (=> b!5143568 (= lt!2120565 call!359147)))

(declare-fun lt!2120563 () Unit!151109)

(declare-fun lemmaNotForallThenExists!432 (List!59854 Int) Unit!151109)

(assert (=> b!5143568 (= lt!2120563 (lemmaNotForallThenExists!432 lt!2120565 lambda!256562))))

(assert (=> b!5143568 call!359146))

(declare-fun lt!2120559 () Unit!151109)

(assert (=> b!5143568 (= lt!2120559 lt!2120563)))

(declare-fun lt!2120562 () Bool)

(declare-datatypes ((List!59855 0))(
  ( (Nil!59731) (Cons!59731 (h!66179 C!29208) (t!372890 List!59855)) )
))
(declare-datatypes ((Option!14785 0))(
  ( (None!14784) (Some!14784 (v!50813 List!59855)) )
))
(declare-fun isEmpty!32046 (Option!14785) Bool)

(declare-fun getLanguageWitness!938 ((InoxSet Context!7710)) Option!14785)

(assert (=> d!1663051 (= lt!2120562 (isEmpty!32046 (getLanguageWitness!938 (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296))))))

(declare-fun forall!13929 ((InoxSet Context!7710) Int) Bool)

(assert (=> d!1663051 (= lt!2120562 (forall!13929 (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296) lambda!256562))))

(declare-fun lt!2120561 () Unit!151109)

(assert (=> d!1663051 (= lt!2120561 e!3207448)))

(assert (=> d!1663051 (= c!885485 (not (forall!13929 (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296) lambda!256562)))))

(assert (=> d!1663051 (= (lostCauseZipper!1269 (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296)) lt!2120562)))

(declare-fun Unit!151114 () Unit!151109)

(assert (=> b!5143569 (= e!3207448 Unit!151114)))

(assert (=> b!5143569 (= lt!2120560 call!359147)))

(declare-fun lt!2120566 () Unit!151109)

(declare-fun lemmaForallThenNotExists!399 (List!59854 Int) Unit!151109)

(assert (=> b!5143569 (= lt!2120566 (lemmaForallThenNotExists!399 lt!2120560 lambda!256562))))

(assert (=> b!5143569 (not call!359146)))

(declare-fun lt!2120564 () Unit!151109)

(assert (=> b!5143569 (= lt!2120564 lt!2120566)))

(assert (= (and d!1663051 c!885485) b!5143568))

(assert (= (and d!1663051 (not c!885485)) b!5143569))

(assert (= (or b!5143568 b!5143569) bm!359141))

(assert (= (or b!5143568 b!5143569) bm!359142))

(declare-fun m!6205320 () Bool)

(assert (=> b!5143569 m!6205320))

(declare-fun m!6205322 () Bool)

(assert (=> bm!359141 m!6205322))

(assert (=> bm!359142 m!6205254))

(declare-fun m!6205324 () Bool)

(assert (=> bm!359142 m!6205324))

(assert (=> d!1663051 m!6205254))

(declare-fun m!6205326 () Bool)

(assert (=> d!1663051 m!6205326))

(assert (=> d!1663051 m!6205326))

(declare-fun m!6205328 () Bool)

(assert (=> d!1663051 m!6205328))

(assert (=> d!1663051 m!6205254))

(declare-fun m!6205330 () Bool)

(assert (=> d!1663051 m!6205330))

(assert (=> d!1663051 m!6205254))

(assert (=> d!1663051 m!6205330))

(declare-fun m!6205332 () Bool)

(assert (=> b!5143568 m!6205332))

(assert (=> b!5143426 d!1663051))

(declare-fun bm!359155 () Bool)

(declare-fun call!359165 () List!59851)

(declare-fun call!359163 () List!59851)

(assert (=> bm!359155 (= call!359165 call!359163)))

(declare-fun b!5143592 () Bool)

(declare-fun c!885498 () Bool)

(assert (=> b!5143592 (= c!885498 ((_ is Star!14471) (regOne!29455 expr!117)))))

(declare-fun e!3207461 () (InoxSet Context!7710))

(declare-fun e!3207462 () (InoxSet Context!7710))

(assert (=> b!5143592 (= e!3207461 e!3207462)))

(declare-fun b!5143593 () Bool)

(assert (=> b!5143593 (= e!3207462 ((as const (Array Context!7710 Bool)) false))))

(declare-fun b!5143594 () Bool)

(declare-fun call!359161 () (InoxSet Context!7710))

(assert (=> b!5143594 (= e!3207462 call!359161)))

(declare-fun b!5143595 () Bool)

(declare-fun e!3207463 () Bool)

(assert (=> b!5143595 (= e!3207463 (nullable!4827 (regOne!29454 (regOne!29455 expr!117))))))

(declare-fun bm!359157 () Bool)

(declare-fun call!359164 () (InoxSet Context!7710))

(assert (=> bm!359157 (= call!359161 call!359164)))

(declare-fun b!5143596 () Bool)

(declare-fun e!3207464 () (InoxSet Context!7710))

(declare-fun call!359162 () (InoxSet Context!7710))

(declare-fun call!359160 () (InoxSet Context!7710))

(assert (=> b!5143596 (= e!3207464 ((_ map or) call!359162 call!359160))))

(declare-fun b!5143597 () Bool)

(declare-fun e!3207465 () (InoxSet Context!7710))

(assert (=> b!5143597 (= e!3207465 (store ((as const (Array Context!7710 Bool)) false) ctx!100 true))))

(declare-fun bm!359158 () Bool)

(declare-fun c!885499 () Bool)

(declare-fun c!885496 () Bool)

(declare-fun c!885500 () Bool)

(assert (=> bm!359158 (= call!359160 (derivationStepZipperDown!150 (ite c!885496 (regTwo!29455 (regOne!29455 expr!117)) (ite c!885499 (regTwo!29454 (regOne!29455 expr!117)) (ite c!885500 (regOne!29454 (regOne!29455 expr!117)) (reg!14800 (regOne!29455 expr!117))))) (ite (or c!885496 c!885499) ctx!100 (Context!7711 call!359165)) a!1296))))

(declare-fun b!5143598 () Bool)

(declare-fun e!3207466 () (InoxSet Context!7710))

(assert (=> b!5143598 (= e!3207466 e!3207461)))

(assert (=> b!5143598 (= c!885500 ((_ is Concat!23316) (regOne!29455 expr!117)))))

(declare-fun b!5143599 () Bool)

(assert (=> b!5143599 (= e!3207465 e!3207464)))

(assert (=> b!5143599 (= c!885496 ((_ is Union!14471) (regOne!29455 expr!117)))))

(declare-fun b!5143600 () Bool)

(assert (=> b!5143600 (= e!3207461 call!359161)))

(declare-fun b!5143601 () Bool)

(assert (=> b!5143601 (= c!885499 e!3207463)))

(declare-fun res!2189926 () Bool)

(assert (=> b!5143601 (=> (not res!2189926) (not e!3207463))))

(assert (=> b!5143601 (= res!2189926 ((_ is Concat!23316) (regOne!29455 expr!117)))))

(assert (=> b!5143601 (= e!3207464 e!3207466)))

(declare-fun b!5143602 () Bool)

(assert (=> b!5143602 (= e!3207466 ((_ map or) call!359162 call!359164))))

(declare-fun d!1663063 () Bool)

(declare-fun c!885497 () Bool)

(assert (=> d!1663063 (= c!885497 (and ((_ is ElementMatch!14471) (regOne!29455 expr!117)) (= (c!885434 (regOne!29455 expr!117)) a!1296)))))

(assert (=> d!1663063 (= (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296) e!3207465)))

(declare-fun bm!359156 () Bool)

(assert (=> bm!359156 (= call!359162 (derivationStepZipperDown!150 (ite c!885496 (regOne!29455 (regOne!29455 expr!117)) (regOne!29454 (regOne!29455 expr!117))) (ite c!885496 ctx!100 (Context!7711 call!359163)) a!1296))))

(declare-fun bm!359159 () Bool)

(declare-fun $colon$colon!1199 (List!59851 Regex!14471) List!59851)

(assert (=> bm!359159 (= call!359163 ($colon$colon!1199 (exprs!4355 ctx!100) (ite (or c!885499 c!885500) (regTwo!29454 (regOne!29455 expr!117)) (regOne!29455 expr!117))))))

(declare-fun bm!359160 () Bool)

(assert (=> bm!359160 (= call!359164 call!359160)))

(assert (= (and d!1663063 c!885497) b!5143597))

(assert (= (and d!1663063 (not c!885497)) b!5143599))

(assert (= (and b!5143599 c!885496) b!5143596))

(assert (= (and b!5143599 (not c!885496)) b!5143601))

(assert (= (and b!5143601 res!2189926) b!5143595))

(assert (= (and b!5143601 c!885499) b!5143602))

(assert (= (and b!5143601 (not c!885499)) b!5143598))

(assert (= (and b!5143598 c!885500) b!5143600))

(assert (= (and b!5143598 (not c!885500)) b!5143592))

(assert (= (and b!5143592 c!885498) b!5143594))

(assert (= (and b!5143592 (not c!885498)) b!5143593))

(assert (= (or b!5143600 b!5143594) bm!359155))

(assert (= (or b!5143600 b!5143594) bm!359157))

(assert (= (or b!5143602 bm!359155) bm!359159))

(assert (= (or b!5143602 bm!359157) bm!359160))

(assert (= (or b!5143596 bm!359160) bm!359158))

(assert (= (or b!5143596 b!5143602) bm!359156))

(declare-fun m!6205334 () Bool)

(assert (=> bm!359158 m!6205334))

(declare-fun m!6205336 () Bool)

(assert (=> bm!359156 m!6205336))

(declare-fun m!6205338 () Bool)

(assert (=> bm!359159 m!6205338))

(declare-fun m!6205340 () Bool)

(assert (=> b!5143595 m!6205340))

(declare-fun m!6205342 () Bool)

(assert (=> b!5143597 m!6205342))

(assert (=> b!5143426 d!1663063))

(declare-fun d!1663065 () Bool)

(assert (=> d!1663065 (lostCauseZipper!1269 (derivationStepZipperDown!150 (regOne!29455 expr!117) ctx!100 a!1296))))

(declare-fun lt!2120569 () Unit!151109)

(declare-fun choose!38050 (Regex!14471 Context!7710 C!29208) Unit!151109)

(assert (=> d!1663065 (= lt!2120569 (choose!38050 (regOne!29455 expr!117) ctx!100 a!1296))))

(assert (=> d!1663065 (validRegex!6326 (regOne!29455 expr!117))))

(assert (=> d!1663065 (= (lemmaLostCauseFixPointDerivDown!40 (regOne!29455 expr!117) ctx!100 a!1296) lt!2120569)))

(declare-fun bs!1200911 () Bool)

(assert (= bs!1200911 d!1663065))

(assert (=> bs!1200911 m!6205254))

(assert (=> bs!1200911 m!6205254))

(assert (=> bs!1200911 m!6205256))

(declare-fun m!6205344 () Bool)

(assert (=> bs!1200911 m!6205344))

(declare-fun m!6205346 () Bool)

(assert (=> bs!1200911 m!6205346))

(assert (=> b!5143426 d!1663065))

(declare-fun b!5143603 () Bool)

(declare-fun e!3207473 () Bool)

(declare-fun call!359166 () Bool)

(assert (=> b!5143603 (= e!3207473 call!359166)))

(declare-fun bm!359161 () Bool)

(declare-fun call!359168 () Bool)

(declare-fun c!885502 () Bool)

(assert (=> bm!359161 (= call!359168 (validRegex!6326 (ite c!885502 (regOne!29455 expr!117) (regOne!29454 expr!117))))))

(declare-fun d!1663067 () Bool)

(declare-fun res!2189927 () Bool)

(declare-fun e!3207469 () Bool)

(assert (=> d!1663067 (=> res!2189927 e!3207469)))

(assert (=> d!1663067 (= res!2189927 ((_ is ElementMatch!14471) expr!117))))

(assert (=> d!1663067 (= (validRegex!6326 expr!117) e!3207469)))

(declare-fun c!885501 () Bool)

(declare-fun bm!359162 () Bool)

(assert (=> bm!359162 (= call!359166 (validRegex!6326 (ite c!885501 (reg!14800 expr!117) (ite c!885502 (regTwo!29455 expr!117) (regTwo!29454 expr!117)))))))

(declare-fun b!5143604 () Bool)

(declare-fun res!2189931 () Bool)

(declare-fun e!3207470 () Bool)

(assert (=> b!5143604 (=> (not res!2189931) (not e!3207470))))

(assert (=> b!5143604 (= res!2189931 call!359168)))

(declare-fun e!3207471 () Bool)

(assert (=> b!5143604 (= e!3207471 e!3207470)))

(declare-fun bm!359163 () Bool)

(declare-fun call!359167 () Bool)

(assert (=> bm!359163 (= call!359167 call!359166)))

(declare-fun b!5143605 () Bool)

(declare-fun e!3207467 () Bool)

(assert (=> b!5143605 (= e!3207467 e!3207471)))

(assert (=> b!5143605 (= c!885502 ((_ is Union!14471) expr!117))))

(declare-fun b!5143606 () Bool)

(assert (=> b!5143606 (= e!3207469 e!3207467)))

(assert (=> b!5143606 (= c!885501 ((_ is Star!14471) expr!117))))

(declare-fun b!5143607 () Bool)

(assert (=> b!5143607 (= e!3207470 call!359167)))

(declare-fun b!5143608 () Bool)

(assert (=> b!5143608 (= e!3207467 e!3207473)))

(declare-fun res!2189930 () Bool)

(assert (=> b!5143608 (= res!2189930 (not (nullable!4827 (reg!14800 expr!117))))))

(assert (=> b!5143608 (=> (not res!2189930) (not e!3207473))))

(declare-fun b!5143609 () Bool)

(declare-fun e!3207472 () Bool)

(assert (=> b!5143609 (= e!3207472 call!359167)))

(declare-fun b!5143610 () Bool)

(declare-fun res!2189928 () Bool)

(declare-fun e!3207468 () Bool)

(assert (=> b!5143610 (=> res!2189928 e!3207468)))

(assert (=> b!5143610 (= res!2189928 (not ((_ is Concat!23316) expr!117)))))

(assert (=> b!5143610 (= e!3207471 e!3207468)))

(declare-fun b!5143611 () Bool)

(assert (=> b!5143611 (= e!3207468 e!3207472)))

(declare-fun res!2189929 () Bool)

(assert (=> b!5143611 (=> (not res!2189929) (not e!3207472))))

(assert (=> b!5143611 (= res!2189929 call!359168)))

(assert (= (and d!1663067 (not res!2189927)) b!5143606))

(assert (= (and b!5143606 c!885501) b!5143608))

(assert (= (and b!5143606 (not c!885501)) b!5143605))

(assert (= (and b!5143608 res!2189930) b!5143603))

(assert (= (and b!5143605 c!885502) b!5143604))

(assert (= (and b!5143605 (not c!885502)) b!5143610))

(assert (= (and b!5143604 res!2189931) b!5143607))

(assert (= (and b!5143610 (not res!2189928)) b!5143611))

(assert (= (and b!5143611 res!2189929) b!5143609))

(assert (= (or b!5143607 b!5143609) bm!359163))

(assert (= (or b!5143604 b!5143611) bm!359161))

(assert (= (or b!5143603 bm!359163) bm!359162))

(declare-fun m!6205348 () Bool)

(assert (=> bm!359161 m!6205348))

(declare-fun m!6205350 () Bool)

(assert (=> bm!359162 m!6205350))

(declare-fun m!6205352 () Bool)

(assert (=> b!5143608 m!6205352))

(assert (=> start!544448 d!1663067))

(declare-fun d!1663069 () Bool)

(declare-fun lambda!256567 () Int)

(declare-fun forall!13930 (List!59851 Int) Bool)

(assert (=> d!1663069 (= (inv!79358 ctx!100) (forall!13930 (exprs!4355 ctx!100) lambda!256567))))

(declare-fun bs!1200912 () Bool)

(assert (= bs!1200912 d!1663069))

(declare-fun m!6205354 () Bool)

(assert (=> bs!1200912 m!6205354))

(assert (=> start!544448 d!1663069))

(declare-fun bs!1200913 () Bool)

(declare-fun d!1663071 () Bool)

(assert (= bs!1200913 (and d!1663071 d!1663069)))

(declare-fun lambda!256570 () Int)

(assert (=> bs!1200913 (not (= lambda!256570 lambda!256567))))

(declare-fun exists!1791 (List!59851 Int) Bool)

(assert (=> d!1663071 (= (lostCause!1495 ctx!100) (exists!1791 (exprs!4355 ctx!100) lambda!256570))))

(declare-fun bs!1200914 () Bool)

(assert (= bs!1200914 d!1663071))

(declare-fun m!6205356 () Bool)

(assert (=> bs!1200914 m!6205356))

(assert (=> b!5143421 d!1663071))

(declare-fun e!3207476 () Bool)

(assert (=> b!5143425 (= tp!1436234 e!3207476)))

(declare-fun b!5143625 () Bool)

(declare-fun tp!1436289 () Bool)

(declare-fun tp!1436290 () Bool)

(assert (=> b!5143625 (= e!3207476 (and tp!1436289 tp!1436290))))

(declare-fun b!5143624 () Bool)

(declare-fun tp!1436293 () Bool)

(assert (=> b!5143624 (= e!3207476 tp!1436293)))

(declare-fun b!5143622 () Bool)

(assert (=> b!5143622 (= e!3207476 tp_is_empty!38091)))

(declare-fun b!5143623 () Bool)

(declare-fun tp!1436292 () Bool)

(declare-fun tp!1436291 () Bool)

(assert (=> b!5143623 (= e!3207476 (and tp!1436292 tp!1436291))))

(assert (= (and b!5143425 ((_ is ElementMatch!14471) (regOne!29455 expr!117))) b!5143622))

(assert (= (and b!5143425 ((_ is Concat!23316) (regOne!29455 expr!117))) b!5143623))

(assert (= (and b!5143425 ((_ is Star!14471) (regOne!29455 expr!117))) b!5143624))

(assert (= (and b!5143425 ((_ is Union!14471) (regOne!29455 expr!117))) b!5143625))

(declare-fun e!3207477 () Bool)

(assert (=> b!5143425 (= tp!1436232 e!3207477)))

(declare-fun b!5143629 () Bool)

(declare-fun tp!1436294 () Bool)

(declare-fun tp!1436295 () Bool)

(assert (=> b!5143629 (= e!3207477 (and tp!1436294 tp!1436295))))

(declare-fun b!5143628 () Bool)

(declare-fun tp!1436298 () Bool)

(assert (=> b!5143628 (= e!3207477 tp!1436298)))

(declare-fun b!5143626 () Bool)

(assert (=> b!5143626 (= e!3207477 tp_is_empty!38091)))

(declare-fun b!5143627 () Bool)

(declare-fun tp!1436297 () Bool)

(declare-fun tp!1436296 () Bool)

(assert (=> b!5143627 (= e!3207477 (and tp!1436297 tp!1436296))))

(assert (= (and b!5143425 ((_ is ElementMatch!14471) (regTwo!29455 expr!117))) b!5143626))

(assert (= (and b!5143425 ((_ is Concat!23316) (regTwo!29455 expr!117))) b!5143627))

(assert (= (and b!5143425 ((_ is Star!14471) (regTwo!29455 expr!117))) b!5143628))

(assert (= (and b!5143425 ((_ is Union!14471) (regTwo!29455 expr!117))) b!5143629))

(declare-fun e!3207478 () Bool)

(assert (=> b!5143419 (= tp!1436235 e!3207478)))

(declare-fun b!5143633 () Bool)

(declare-fun tp!1436299 () Bool)

(declare-fun tp!1436300 () Bool)

(assert (=> b!5143633 (= e!3207478 (and tp!1436299 tp!1436300))))

(declare-fun b!5143632 () Bool)

(declare-fun tp!1436303 () Bool)

(assert (=> b!5143632 (= e!3207478 tp!1436303)))

(declare-fun b!5143630 () Bool)

(assert (=> b!5143630 (= e!3207478 tp_is_empty!38091)))

(declare-fun b!5143631 () Bool)

(declare-fun tp!1436302 () Bool)

(declare-fun tp!1436301 () Bool)

(assert (=> b!5143631 (= e!3207478 (and tp!1436302 tp!1436301))))

(assert (= (and b!5143419 ((_ is ElementMatch!14471) (regOne!29454 expr!117))) b!5143630))

(assert (= (and b!5143419 ((_ is Concat!23316) (regOne!29454 expr!117))) b!5143631))

(assert (= (and b!5143419 ((_ is Star!14471) (regOne!29454 expr!117))) b!5143632))

(assert (= (and b!5143419 ((_ is Union!14471) (regOne!29454 expr!117))) b!5143633))

(declare-fun e!3207479 () Bool)

(assert (=> b!5143419 (= tp!1436237 e!3207479)))

(declare-fun b!5143637 () Bool)

(declare-fun tp!1436304 () Bool)

(declare-fun tp!1436305 () Bool)

(assert (=> b!5143637 (= e!3207479 (and tp!1436304 tp!1436305))))

(declare-fun b!5143636 () Bool)

(declare-fun tp!1436308 () Bool)

(assert (=> b!5143636 (= e!3207479 tp!1436308)))

(declare-fun b!5143634 () Bool)

(assert (=> b!5143634 (= e!3207479 tp_is_empty!38091)))

(declare-fun b!5143635 () Bool)

(declare-fun tp!1436307 () Bool)

(declare-fun tp!1436306 () Bool)

(assert (=> b!5143635 (= e!3207479 (and tp!1436307 tp!1436306))))

(assert (= (and b!5143419 ((_ is ElementMatch!14471) (regTwo!29454 expr!117))) b!5143634))

(assert (= (and b!5143419 ((_ is Concat!23316) (regTwo!29454 expr!117))) b!5143635))

(assert (= (and b!5143419 ((_ is Star!14471) (regTwo!29454 expr!117))) b!5143636))

(assert (= (and b!5143419 ((_ is Union!14471) (regTwo!29454 expr!117))) b!5143637))

(declare-fun b!5143642 () Bool)

(declare-fun e!3207482 () Bool)

(declare-fun tp!1436313 () Bool)

(declare-fun tp!1436314 () Bool)

(assert (=> b!5143642 (= e!3207482 (and tp!1436313 tp!1436314))))

(assert (=> b!5143423 (= tp!1436236 e!3207482)))

(assert (= (and b!5143423 ((_ is Cons!59727) (exprs!4355 ctx!100))) b!5143642))

(declare-fun e!3207483 () Bool)

(assert (=> b!5143422 (= tp!1436233 e!3207483)))

(declare-fun b!5143646 () Bool)

(declare-fun tp!1436315 () Bool)

(declare-fun tp!1436316 () Bool)

(assert (=> b!5143646 (= e!3207483 (and tp!1436315 tp!1436316))))

(declare-fun b!5143645 () Bool)

(declare-fun tp!1436319 () Bool)

(assert (=> b!5143645 (= e!3207483 tp!1436319)))

(declare-fun b!5143643 () Bool)

(assert (=> b!5143643 (= e!3207483 tp_is_empty!38091)))

(declare-fun b!5143644 () Bool)

(declare-fun tp!1436318 () Bool)

(declare-fun tp!1436317 () Bool)

(assert (=> b!5143644 (= e!3207483 (and tp!1436318 tp!1436317))))

(assert (= (and b!5143422 ((_ is ElementMatch!14471) (reg!14800 expr!117))) b!5143643))

(assert (= (and b!5143422 ((_ is Concat!23316) (reg!14800 expr!117))) b!5143644))

(assert (= (and b!5143422 ((_ is Star!14471) (reg!14800 expr!117))) b!5143645))

(assert (= (and b!5143422 ((_ is Union!14471) (reg!14800 expr!117))) b!5143646))

(check-sat (not d!1663071) (not b!5143628) (not b!5143636) (not b!5143633) (not b!5143477) (not b!5143624) (not b!5143635) (not b!5143569) (not b!5143646) (not d!1663065) (not d!1663069) (not b!5143568) (not bm!359107) tp_is_empty!38091 (not b!5143629) (not d!1663043) (not b!5143645) (not bm!359161) (not b!5143623) (not bm!359141) (not b!5143632) (not bm!359156) (not b!5143627) (not b!5143642) (not bm!359142) (not b!5143595) (not d!1663051) (not b!5143644) (not b!5143608) (not b!5143637) (not bm!359162) (not bm!359108) (not b!5143625) (not bm!359158) (not bm!359159) (not b!5143631))
(check-sat)
