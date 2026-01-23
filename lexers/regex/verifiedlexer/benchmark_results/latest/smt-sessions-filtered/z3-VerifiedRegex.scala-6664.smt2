; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!350446 () Bool)

(assert start!350446)

(declare-fun b!3721112 () Bool)

(declare-fun res!1512385 () Bool)

(declare-fun e!2303620 () Bool)

(assert (=> b!3721112 (=> (not res!1512385) (not e!2303620))))

(declare-datatypes ((C!21920 0))(
  ( (C!21921 (val!13008 Int)) )
))
(declare-datatypes ((Regex!10867 0))(
  ( (ElementMatch!10867 (c!643547 C!21920)) (Concat!17138 (regOne!22246 Regex!10867) (regTwo!22246 Regex!10867)) (EmptyExpr!10867) (Star!10867 (reg!11196 Regex!10867)) (EmptyLang!10867) (Union!10867 (regOne!22247 Regex!10867) (regTwo!22247 Regex!10867)) )
))
(declare-fun r!26968 () Regex!10867)

(declare-fun cNot!42 () C!21920)

(declare-datatypes ((List!39748 0))(
  ( (Nil!39624) (Cons!39624 (h!45044 C!21920) (t!302431 List!39748)) )
))
(declare-fun contains!7960 (List!39748 C!21920) Bool)

(declare-fun usedCharacters!1130 (Regex!10867) List!39748)

(assert (=> b!3721112 (= res!1512385 (not (contains!7960 (usedCharacters!1130 r!26968) cNot!42)))))

(declare-fun res!1512386 () Bool)

(assert (=> start!350446 (=> (not res!1512386) (not e!2303620))))

(declare-fun validRegex!4974 (Regex!10867) Bool)

(assert (=> start!350446 (= res!1512386 (validRegex!4974 r!26968))))

(assert (=> start!350446 e!2303620))

(declare-fun e!2303619 () Bool)

(assert (=> start!350446 e!2303619))

(declare-fun tp_is_empty!18749 () Bool)

(assert (=> start!350446 tp_is_empty!18749))

(declare-fun b!3721113 () Bool)

(assert (=> b!3721113 (= e!2303619 tp_is_empty!18749)))

(declare-fun b!3721114 () Bool)

(assert (=> b!3721114 (= e!2303620 (not (validRegex!4974 (regOne!22247 r!26968))))))

(declare-fun c!13797 () C!21920)

(declare-fun derivativeStep!3328 (Regex!10867 C!21920) Regex!10867)

(assert (=> b!3721114 (not (contains!7960 (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) cNot!42))))

(declare-datatypes ((Unit!57524 0))(
  ( (Unit!57525) )
))
(declare-fun lt!1297971 () Unit!57524)

(declare-fun lemmaDerivativeStepDoesNotAddCharToUsedCharacters!18 (Regex!10867 C!21920 C!21920) Unit!57524)

(assert (=> b!3721114 (= lt!1297971 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!18 (regTwo!22247 r!26968) c!13797 cNot!42))))

(assert (=> b!3721114 (not (contains!7960 (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1297972 () Unit!57524)

(assert (=> b!3721114 (= lt!1297972 (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!18 (regOne!22247 r!26968) c!13797 cNot!42))))

(declare-fun b!3721115 () Bool)

(declare-fun tp!1131684 () Bool)

(declare-fun tp!1131680 () Bool)

(assert (=> b!3721115 (= e!2303619 (and tp!1131684 tp!1131680))))

(declare-fun b!3721116 () Bool)

(declare-fun tp!1131683 () Bool)

(declare-fun tp!1131681 () Bool)

(assert (=> b!3721116 (= e!2303619 (and tp!1131683 tp!1131681))))

(declare-fun b!3721117 () Bool)

(declare-fun res!1512384 () Bool)

(assert (=> b!3721117 (=> (not res!1512384) (not e!2303620))))

(get-info :version)

(assert (=> b!3721117 (= res!1512384 (and (not ((_ is EmptyExpr!10867) r!26968)) (not ((_ is EmptyLang!10867) r!26968)) (not ((_ is ElementMatch!10867) r!26968)) ((_ is Union!10867) r!26968)))))

(declare-fun b!3721118 () Bool)

(declare-fun tp!1131682 () Bool)

(assert (=> b!3721118 (= e!2303619 tp!1131682)))

(assert (= (and start!350446 res!1512386) b!3721112))

(assert (= (and b!3721112 res!1512385) b!3721117))

(assert (= (and b!3721117 res!1512384) b!3721114))

(assert (= (and start!350446 ((_ is ElementMatch!10867) r!26968)) b!3721113))

(assert (= (and start!350446 ((_ is Concat!17138) r!26968)) b!3721115))

(assert (= (and start!350446 ((_ is Star!10867) r!26968)) b!3721118))

(assert (= (and start!350446 ((_ is Union!10867) r!26968)) b!3721116))

(declare-fun m!4225465 () Bool)

(assert (=> b!3721112 m!4225465))

(assert (=> b!3721112 m!4225465))

(declare-fun m!4225467 () Bool)

(assert (=> b!3721112 m!4225467))

(declare-fun m!4225469 () Bool)

(assert (=> start!350446 m!4225469))

(declare-fun m!4225471 () Bool)

(assert (=> b!3721114 m!4225471))

(declare-fun m!4225473 () Bool)

(assert (=> b!3721114 m!4225473))

(declare-fun m!4225475 () Bool)

(assert (=> b!3721114 m!4225475))

(declare-fun m!4225477 () Bool)

(assert (=> b!3721114 m!4225477))

(declare-fun m!4225479 () Bool)

(assert (=> b!3721114 m!4225479))

(declare-fun m!4225481 () Bool)

(assert (=> b!3721114 m!4225481))

(assert (=> b!3721114 m!4225471))

(declare-fun m!4225483 () Bool)

(assert (=> b!3721114 m!4225483))

(assert (=> b!3721114 m!4225481))

(declare-fun m!4225485 () Bool)

(assert (=> b!3721114 m!4225485))

(declare-fun m!4225487 () Bool)

(assert (=> b!3721114 m!4225487))

(assert (=> b!3721114 m!4225479))

(assert (=> b!3721114 m!4225485))

(check-sat (not b!3721115) (not b!3721114) (not start!350446) (not b!3721118) (not b!3721116) (not b!3721112) tp_is_empty!18749)
(check-sat)
(get-model)

(declare-fun d!1089339 () Bool)

(declare-fun c!643556 () Bool)

(assert (=> d!1089339 (= c!643556 (or ((_ is EmptyExpr!10867) (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) ((_ is EmptyLang!10867) (derivativeStep!3328 (regOne!22247 r!26968) c!13797))))))

(declare-fun e!2303635 () List!39748)

(assert (=> d!1089339 (= (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) e!2303635)))

(declare-fun b!3721141 () Bool)

(assert (=> b!3721141 (= e!2303635 Nil!39624)))

(declare-fun b!3721142 () Bool)

(declare-fun e!2303638 () List!39748)

(declare-fun call!270384 () List!39748)

(assert (=> b!3721142 (= e!2303638 call!270384)))

(declare-fun b!3721143 () Bool)

(declare-fun e!2303637 () List!39748)

(assert (=> b!3721143 (= e!2303638 e!2303637)))

(declare-fun c!643557 () Bool)

(assert (=> b!3721143 (= c!643557 ((_ is Union!10867) (derivativeStep!3328 (regOne!22247 r!26968) c!13797)))))

(declare-fun call!270381 () List!39748)

(declare-fun bm!270376 () Bool)

(assert (=> bm!270376 (= call!270381 (usedCharacters!1130 (ite c!643557 (regTwo!22247 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) (regOne!22246 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)))))))

(declare-fun b!3721144 () Bool)

(declare-fun e!2303636 () List!39748)

(assert (=> b!3721144 (= e!2303636 (Cons!39624 (c!643547 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) Nil!39624))))

(declare-fun b!3721145 () Bool)

(assert (=> b!3721145 (= e!2303635 e!2303636)))

(declare-fun c!643559 () Bool)

(assert (=> b!3721145 (= c!643559 ((_ is ElementMatch!10867) (derivativeStep!3328 (regOne!22247 r!26968) c!13797)))))

(declare-fun b!3721146 () Bool)

(declare-fun call!270382 () List!39748)

(assert (=> b!3721146 (= e!2303637 call!270382)))

(declare-fun bm!270377 () Bool)

(declare-fun c!643558 () Bool)

(assert (=> bm!270377 (= call!270384 (usedCharacters!1130 (ite c!643558 (reg!11196 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) (ite c!643557 (regOne!22247 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) (regTwo!22246 (derivativeStep!3328 (regOne!22247 r!26968) c!13797))))))))

(declare-fun bm!270378 () Bool)

(declare-fun call!270383 () List!39748)

(assert (=> bm!270378 (= call!270383 call!270384)))

(declare-fun b!3721147 () Bool)

(assert (=> b!3721147 (= c!643558 ((_ is Star!10867) (derivativeStep!3328 (regOne!22247 r!26968) c!13797)))))

(assert (=> b!3721147 (= e!2303636 e!2303638)))

(declare-fun bm!270379 () Bool)

(declare-fun ++!9806 (List!39748 List!39748) List!39748)

(assert (=> bm!270379 (= call!270382 (++!9806 (ite c!643557 call!270383 call!270381) (ite c!643557 call!270381 call!270383)))))

(declare-fun b!3721148 () Bool)

(assert (=> b!3721148 (= e!2303637 call!270382)))

(assert (= (and d!1089339 c!643556) b!3721141))

(assert (= (and d!1089339 (not c!643556)) b!3721145))

(assert (= (and b!3721145 c!643559) b!3721144))

(assert (= (and b!3721145 (not c!643559)) b!3721147))

(assert (= (and b!3721147 c!643558) b!3721142))

(assert (= (and b!3721147 (not c!643558)) b!3721143))

(assert (= (and b!3721143 c!643557) b!3721148))

(assert (= (and b!3721143 (not c!643557)) b!3721146))

(assert (= (or b!3721148 b!3721146) bm!270378))

(assert (= (or b!3721148 b!3721146) bm!270376))

(assert (= (or b!3721148 b!3721146) bm!270379))

(assert (= (or b!3721142 bm!270378) bm!270377))

(declare-fun m!4225495 () Bool)

(assert (=> bm!270376 m!4225495))

(declare-fun m!4225497 () Bool)

(assert (=> bm!270377 m!4225497))

(declare-fun m!4225499 () Bool)

(assert (=> bm!270379 m!4225499))

(assert (=> b!3721114 d!1089339))

(declare-fun b!3721221 () Bool)

(declare-fun c!643598 () Bool)

(assert (=> b!3721221 (= c!643598 ((_ is Union!10867) (regTwo!22247 r!26968)))))

(declare-fun e!2303679 () Regex!10867)

(declare-fun e!2303677 () Regex!10867)

(assert (=> b!3721221 (= e!2303679 e!2303677)))

(declare-fun b!3721222 () Bool)

(declare-fun e!2303678 () Regex!10867)

(declare-fun call!270412 () Regex!10867)

(assert (=> b!3721222 (= e!2303678 (Concat!17138 call!270412 (regTwo!22247 r!26968)))))

(declare-fun b!3721223 () Bool)

(declare-fun e!2303676 () Regex!10867)

(assert (=> b!3721223 (= e!2303676 EmptyLang!10867)))

(declare-fun b!3721224 () Bool)

(assert (=> b!3721224 (= e!2303676 e!2303679)))

(declare-fun c!643599 () Bool)

(assert (=> b!3721224 (= c!643599 ((_ is ElementMatch!10867) (regTwo!22247 r!26968)))))

(declare-fun d!1089345 () Bool)

(declare-fun lt!1297980 () Regex!10867)

(assert (=> d!1089345 (validRegex!4974 lt!1297980)))

(assert (=> d!1089345 (= lt!1297980 e!2303676)))

(declare-fun c!643596 () Bool)

(assert (=> d!1089345 (= c!643596 (or ((_ is EmptyExpr!10867) (regTwo!22247 r!26968)) ((_ is EmptyLang!10867) (regTwo!22247 r!26968))))))

(assert (=> d!1089345 (validRegex!4974 (regTwo!22247 r!26968))))

(assert (=> d!1089345 (= (derivativeStep!3328 (regTwo!22247 r!26968) c!13797) lt!1297980)))

(declare-fun b!3721225 () Bool)

(declare-fun e!2303675 () Regex!10867)

(declare-fun call!270409 () Regex!10867)

(assert (=> b!3721225 (= e!2303675 (Union!10867 (Concat!17138 call!270409 (regTwo!22246 (regTwo!22247 r!26968))) EmptyLang!10867))))

(declare-fun b!3721226 () Bool)

(declare-fun call!270410 () Regex!10867)

(assert (=> b!3721226 (= e!2303675 (Union!10867 (Concat!17138 call!270410 (regTwo!22246 (regTwo!22247 r!26968))) call!270409))))

(declare-fun b!3721227 () Bool)

(declare-fun call!270411 () Regex!10867)

(assert (=> b!3721227 (= e!2303677 (Union!10867 call!270411 call!270410))))

(declare-fun b!3721228 () Bool)

(declare-fun c!643597 () Bool)

(declare-fun nullable!3783 (Regex!10867) Bool)

(assert (=> b!3721228 (= c!643597 (nullable!3783 (regOne!22246 (regTwo!22247 r!26968))))))

(assert (=> b!3721228 (= e!2303678 e!2303675)))

(declare-fun c!643600 () Bool)

(declare-fun bm!270404 () Bool)

(assert (=> bm!270404 (= call!270411 (derivativeStep!3328 (ite c!643598 (regOne!22247 (regTwo!22247 r!26968)) (ite c!643600 (reg!11196 (regTwo!22247 r!26968)) (ite c!643597 (regTwo!22246 (regTwo!22247 r!26968)) (regOne!22246 (regTwo!22247 r!26968))))) c!13797))))

(declare-fun bm!270405 () Bool)

(assert (=> bm!270405 (= call!270410 (derivativeStep!3328 (ite c!643598 (regTwo!22247 (regTwo!22247 r!26968)) (regOne!22246 (regTwo!22247 r!26968))) c!13797))))

(declare-fun bm!270406 () Bool)

(assert (=> bm!270406 (= call!270409 call!270412)))

(declare-fun b!3721229 () Bool)

(assert (=> b!3721229 (= e!2303679 (ite (= c!13797 (c!643547 (regTwo!22247 r!26968))) EmptyExpr!10867 EmptyLang!10867))))

(declare-fun b!3721230 () Bool)

(assert (=> b!3721230 (= e!2303677 e!2303678)))

(assert (=> b!3721230 (= c!643600 ((_ is Star!10867) (regTwo!22247 r!26968)))))

(declare-fun bm!270407 () Bool)

(assert (=> bm!270407 (= call!270412 call!270411)))

(assert (= (and d!1089345 c!643596) b!3721223))

(assert (= (and d!1089345 (not c!643596)) b!3721224))

(assert (= (and b!3721224 c!643599) b!3721229))

(assert (= (and b!3721224 (not c!643599)) b!3721221))

(assert (= (and b!3721221 c!643598) b!3721227))

(assert (= (and b!3721221 (not c!643598)) b!3721230))

(assert (= (and b!3721230 c!643600) b!3721222))

(assert (= (and b!3721230 (not c!643600)) b!3721228))

(assert (= (and b!3721228 c!643597) b!3721226))

(assert (= (and b!3721228 (not c!643597)) b!3721225))

(assert (= (or b!3721226 b!3721225) bm!270406))

(assert (= (or b!3721222 bm!270406) bm!270407))

(assert (= (or b!3721227 bm!270407) bm!270404))

(assert (= (or b!3721227 b!3721226) bm!270405))

(declare-fun m!4225513 () Bool)

(assert (=> d!1089345 m!4225513))

(declare-fun m!4225515 () Bool)

(assert (=> d!1089345 m!4225515))

(declare-fun m!4225517 () Bool)

(assert (=> b!3721228 m!4225517))

(declare-fun m!4225519 () Bool)

(assert (=> bm!270404 m!4225519))

(declare-fun m!4225521 () Bool)

(assert (=> bm!270405 m!4225521))

(assert (=> b!3721114 d!1089345))

(declare-fun d!1089351 () Bool)

(declare-fun lt!1297983 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!5744 (List!39748) (InoxSet C!21920))

(assert (=> d!1089351 (= lt!1297983 (select (content!5744 (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797))) cNot!42))))

(declare-fun e!2303685 () Bool)

(assert (=> d!1089351 (= lt!1297983 e!2303685)))

(declare-fun res!1512397 () Bool)

(assert (=> d!1089351 (=> (not res!1512397) (not e!2303685))))

(assert (=> d!1089351 (= res!1512397 ((_ is Cons!39624) (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797))))))

(assert (=> d!1089351 (= (contains!7960 (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) cNot!42) lt!1297983)))

(declare-fun b!3721235 () Bool)

(declare-fun e!2303684 () Bool)

(assert (=> b!3721235 (= e!2303685 e!2303684)))

(declare-fun res!1512398 () Bool)

(assert (=> b!3721235 (=> res!1512398 e!2303684)))

(assert (=> b!3721235 (= res!1512398 (= (h!45044 (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797))) cNot!42))))

(declare-fun b!3721236 () Bool)

(assert (=> b!3721236 (= e!2303684 (contains!7960 (t!302431 (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089351 res!1512397) b!3721235))

(assert (= (and b!3721235 (not res!1512398)) b!3721236))

(assert (=> d!1089351 m!4225471))

(declare-fun m!4225523 () Bool)

(assert (=> d!1089351 m!4225523))

(declare-fun m!4225525 () Bool)

(assert (=> d!1089351 m!4225525))

(declare-fun m!4225527 () Bool)

(assert (=> b!3721236 m!4225527))

(assert (=> b!3721114 d!1089351))

(declare-fun b!3721285 () Bool)

(declare-fun e!2303721 () Bool)

(declare-fun call!270437 () Bool)

(assert (=> b!3721285 (= e!2303721 call!270437)))

(declare-fun b!3721286 () Bool)

(declare-fun e!2303727 () Bool)

(declare-fun e!2303725 () Bool)

(assert (=> b!3721286 (= e!2303727 e!2303725)))

(declare-fun c!643614 () Bool)

(assert (=> b!3721286 (= c!643614 ((_ is Star!10867) (regOne!22247 r!26968)))))

(declare-fun b!3721287 () Bool)

(declare-fun e!2303726 () Bool)

(assert (=> b!3721287 (= e!2303726 call!270437)))

(declare-fun b!3721288 () Bool)

(declare-fun e!2303722 () Bool)

(assert (=> b!3721288 (= e!2303725 e!2303722)))

(declare-fun c!643615 () Bool)

(assert (=> b!3721288 (= c!643615 ((_ is Union!10867) (regOne!22247 r!26968)))))

(declare-fun bm!270430 () Bool)

(declare-fun call!270435 () Bool)

(assert (=> bm!270430 (= call!270435 (validRegex!4974 (ite c!643615 (regOne!22247 (regOne!22247 r!26968)) (regOne!22246 (regOne!22247 r!26968)))))))

(declare-fun b!3721289 () Bool)

(declare-fun res!1512421 () Bool)

(assert (=> b!3721289 (=> (not res!1512421) (not e!2303726))))

(assert (=> b!3721289 (= res!1512421 call!270435)))

(assert (=> b!3721289 (= e!2303722 e!2303726)))

(declare-fun b!3721291 () Bool)

(declare-fun e!2303723 () Bool)

(declare-fun call!270436 () Bool)

(assert (=> b!3721291 (= e!2303723 call!270436)))

(declare-fun b!3721292 () Bool)

(assert (=> b!3721292 (= e!2303725 e!2303723)))

(declare-fun res!1512422 () Bool)

(assert (=> b!3721292 (= res!1512422 (not (nullable!3783 (reg!11196 (regOne!22247 r!26968)))))))

(assert (=> b!3721292 (=> (not res!1512422) (not e!2303723))))

(declare-fun bm!270431 () Bool)

(assert (=> bm!270431 (= call!270437 call!270436)))

(declare-fun b!3721293 () Bool)

(declare-fun e!2303724 () Bool)

(assert (=> b!3721293 (= e!2303724 e!2303721)))

(declare-fun res!1512424 () Bool)

(assert (=> b!3721293 (=> (not res!1512424) (not e!2303721))))

(assert (=> b!3721293 (= res!1512424 call!270435)))

(declare-fun bm!270432 () Bool)

(assert (=> bm!270432 (= call!270436 (validRegex!4974 (ite c!643614 (reg!11196 (regOne!22247 r!26968)) (ite c!643615 (regTwo!22247 (regOne!22247 r!26968)) (regTwo!22246 (regOne!22247 r!26968))))))))

(declare-fun d!1089353 () Bool)

(declare-fun res!1512423 () Bool)

(assert (=> d!1089353 (=> res!1512423 e!2303727)))

(assert (=> d!1089353 (= res!1512423 ((_ is ElementMatch!10867) (regOne!22247 r!26968)))))

(assert (=> d!1089353 (= (validRegex!4974 (regOne!22247 r!26968)) e!2303727)))

(declare-fun b!3721290 () Bool)

(declare-fun res!1512425 () Bool)

(assert (=> b!3721290 (=> res!1512425 e!2303724)))

(assert (=> b!3721290 (= res!1512425 (not ((_ is Concat!17138) (regOne!22247 r!26968))))))

(assert (=> b!3721290 (= e!2303722 e!2303724)))

(assert (= (and d!1089353 (not res!1512423)) b!3721286))

(assert (= (and b!3721286 c!643614) b!3721292))

(assert (= (and b!3721286 (not c!643614)) b!3721288))

(assert (= (and b!3721292 res!1512422) b!3721291))

(assert (= (and b!3721288 c!643615) b!3721289))

(assert (= (and b!3721288 (not c!643615)) b!3721290))

(assert (= (and b!3721289 res!1512421) b!3721287))

(assert (= (and b!3721290 (not res!1512425)) b!3721293))

(assert (= (and b!3721293 res!1512424) b!3721285))

(assert (= (or b!3721287 b!3721285) bm!270431))

(assert (= (or b!3721289 b!3721293) bm!270430))

(assert (= (or b!3721291 bm!270431) bm!270432))

(declare-fun m!4225545 () Bool)

(assert (=> bm!270430 m!4225545))

(declare-fun m!4225547 () Bool)

(assert (=> b!3721292 m!4225547))

(declare-fun m!4225549 () Bool)

(assert (=> bm!270432 m!4225549))

(assert (=> b!3721114 d!1089353))

(declare-fun d!1089359 () Bool)

(assert (=> d!1089359 (not (contains!7960 (usedCharacters!1130 (derivativeStep!3328 (regOne!22247 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1297988 () Unit!57524)

(declare-fun choose!22213 (Regex!10867 C!21920 C!21920) Unit!57524)

(assert (=> d!1089359 (= lt!1297988 (choose!22213 (regOne!22247 r!26968) c!13797 cNot!42))))

(assert (=> d!1089359 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!18 (regOne!22247 r!26968) c!13797 cNot!42) lt!1297988)))

(declare-fun bs!574960 () Bool)

(assert (= bs!574960 d!1089359))

(assert (=> bs!574960 m!4225481))

(assert (=> bs!574960 m!4225481))

(assert (=> bs!574960 m!4225471))

(assert (=> bs!574960 m!4225471))

(assert (=> bs!574960 m!4225473))

(declare-fun m!4225555 () Bool)

(assert (=> bs!574960 m!4225555))

(assert (=> b!3721114 d!1089359))

(declare-fun b!3721303 () Bool)

(declare-fun c!643621 () Bool)

(assert (=> b!3721303 (= c!643621 ((_ is Union!10867) (regOne!22247 r!26968)))))

(declare-fun e!2303739 () Regex!10867)

(declare-fun e!2303737 () Regex!10867)

(assert (=> b!3721303 (= e!2303739 e!2303737)))

(declare-fun b!3721304 () Bool)

(declare-fun e!2303738 () Regex!10867)

(declare-fun call!270446 () Regex!10867)

(assert (=> b!3721304 (= e!2303738 (Concat!17138 call!270446 (regOne!22247 r!26968)))))

(declare-fun b!3721305 () Bool)

(declare-fun e!2303736 () Regex!10867)

(assert (=> b!3721305 (= e!2303736 EmptyLang!10867)))

(declare-fun b!3721306 () Bool)

(assert (=> b!3721306 (= e!2303736 e!2303739)))

(declare-fun c!643622 () Bool)

(assert (=> b!3721306 (= c!643622 ((_ is ElementMatch!10867) (regOne!22247 r!26968)))))

(declare-fun d!1089361 () Bool)

(declare-fun lt!1297989 () Regex!10867)

(assert (=> d!1089361 (validRegex!4974 lt!1297989)))

(assert (=> d!1089361 (= lt!1297989 e!2303736)))

(declare-fun c!643619 () Bool)

(assert (=> d!1089361 (= c!643619 (or ((_ is EmptyExpr!10867) (regOne!22247 r!26968)) ((_ is EmptyLang!10867) (regOne!22247 r!26968))))))

(assert (=> d!1089361 (validRegex!4974 (regOne!22247 r!26968))))

(assert (=> d!1089361 (= (derivativeStep!3328 (regOne!22247 r!26968) c!13797) lt!1297989)))

(declare-fun b!3721307 () Bool)

(declare-fun e!2303735 () Regex!10867)

(declare-fun call!270443 () Regex!10867)

(assert (=> b!3721307 (= e!2303735 (Union!10867 (Concat!17138 call!270443 (regTwo!22246 (regOne!22247 r!26968))) EmptyLang!10867))))

(declare-fun b!3721308 () Bool)

(declare-fun call!270444 () Regex!10867)

(assert (=> b!3721308 (= e!2303735 (Union!10867 (Concat!17138 call!270444 (regTwo!22246 (regOne!22247 r!26968))) call!270443))))

(declare-fun b!3721309 () Bool)

(declare-fun call!270445 () Regex!10867)

(assert (=> b!3721309 (= e!2303737 (Union!10867 call!270445 call!270444))))

(declare-fun b!3721310 () Bool)

(declare-fun c!643620 () Bool)

(assert (=> b!3721310 (= c!643620 (nullable!3783 (regOne!22246 (regOne!22247 r!26968))))))

(assert (=> b!3721310 (= e!2303738 e!2303735)))

(declare-fun bm!270438 () Bool)

(declare-fun c!643623 () Bool)

(assert (=> bm!270438 (= call!270445 (derivativeStep!3328 (ite c!643621 (regOne!22247 (regOne!22247 r!26968)) (ite c!643623 (reg!11196 (regOne!22247 r!26968)) (ite c!643620 (regTwo!22246 (regOne!22247 r!26968)) (regOne!22246 (regOne!22247 r!26968))))) c!13797))))

(declare-fun bm!270439 () Bool)

(assert (=> bm!270439 (= call!270444 (derivativeStep!3328 (ite c!643621 (regTwo!22247 (regOne!22247 r!26968)) (regOne!22246 (regOne!22247 r!26968))) c!13797))))

(declare-fun bm!270440 () Bool)

(assert (=> bm!270440 (= call!270443 call!270446)))

(declare-fun b!3721311 () Bool)

(assert (=> b!3721311 (= e!2303739 (ite (= c!13797 (c!643547 (regOne!22247 r!26968))) EmptyExpr!10867 EmptyLang!10867))))

(declare-fun b!3721312 () Bool)

(assert (=> b!3721312 (= e!2303737 e!2303738)))

(assert (=> b!3721312 (= c!643623 ((_ is Star!10867) (regOne!22247 r!26968)))))

(declare-fun bm!270441 () Bool)

(assert (=> bm!270441 (= call!270446 call!270445)))

(assert (= (and d!1089361 c!643619) b!3721305))

(assert (= (and d!1089361 (not c!643619)) b!3721306))

(assert (= (and b!3721306 c!643622) b!3721311))

(assert (= (and b!3721306 (not c!643622)) b!3721303))

(assert (= (and b!3721303 c!643621) b!3721309))

(assert (= (and b!3721303 (not c!643621)) b!3721312))

(assert (= (and b!3721312 c!643623) b!3721304))

(assert (= (and b!3721312 (not c!643623)) b!3721310))

(assert (= (and b!3721310 c!643620) b!3721308))

(assert (= (and b!3721310 (not c!643620)) b!3721307))

(assert (= (or b!3721308 b!3721307) bm!270440))

(assert (= (or b!3721304 bm!270440) bm!270441))

(assert (= (or b!3721309 bm!270441) bm!270438))

(assert (= (or b!3721309 b!3721308) bm!270439))

(declare-fun m!4225559 () Bool)

(assert (=> d!1089361 m!4225559))

(assert (=> d!1089361 m!4225475))

(declare-fun m!4225561 () Bool)

(assert (=> b!3721310 m!4225561))

(declare-fun m!4225563 () Bool)

(assert (=> bm!270438 m!4225563))

(declare-fun m!4225565 () Bool)

(assert (=> bm!270439 m!4225565))

(assert (=> b!3721114 d!1089361))

(declare-fun d!1089365 () Bool)

(declare-fun lt!1297990 () Bool)

(assert (=> d!1089365 (= lt!1297990 (select (content!5744 (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797))) cNot!42))))

(declare-fun e!2303741 () Bool)

(assert (=> d!1089365 (= lt!1297990 e!2303741)))

(declare-fun res!1512431 () Bool)

(assert (=> d!1089365 (=> (not res!1512431) (not e!2303741))))

(assert (=> d!1089365 (= res!1512431 ((_ is Cons!39624) (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797))))))

(assert (=> d!1089365 (= (contains!7960 (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) cNot!42) lt!1297990)))

(declare-fun b!3721313 () Bool)

(declare-fun e!2303740 () Bool)

(assert (=> b!3721313 (= e!2303741 e!2303740)))

(declare-fun res!1512432 () Bool)

(assert (=> b!3721313 (=> res!1512432 e!2303740)))

(assert (=> b!3721313 (= res!1512432 (= (h!45044 (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797))) cNot!42))))

(declare-fun b!3721314 () Bool)

(assert (=> b!3721314 (= e!2303740 (contains!7960 (t!302431 (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797))) cNot!42))))

(assert (= (and d!1089365 res!1512431) b!3721313))

(assert (= (and b!3721313 (not res!1512432)) b!3721314))

(assert (=> d!1089365 m!4225485))

(declare-fun m!4225567 () Bool)

(assert (=> d!1089365 m!4225567))

(declare-fun m!4225569 () Bool)

(assert (=> d!1089365 m!4225569))

(declare-fun m!4225571 () Bool)

(assert (=> b!3721314 m!4225571))

(assert (=> b!3721114 d!1089365))

(declare-fun d!1089367 () Bool)

(declare-fun c!643624 () Bool)

(assert (=> d!1089367 (= c!643624 (or ((_ is EmptyExpr!10867) (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) ((_ is EmptyLang!10867) (derivativeStep!3328 (regTwo!22247 r!26968) c!13797))))))

(declare-fun e!2303742 () List!39748)

(assert (=> d!1089367 (= (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) e!2303742)))

(declare-fun b!3721315 () Bool)

(assert (=> b!3721315 (= e!2303742 Nil!39624)))

(declare-fun b!3721316 () Bool)

(declare-fun e!2303745 () List!39748)

(declare-fun call!270450 () List!39748)

(assert (=> b!3721316 (= e!2303745 call!270450)))

(declare-fun b!3721317 () Bool)

(declare-fun e!2303744 () List!39748)

(assert (=> b!3721317 (= e!2303745 e!2303744)))

(declare-fun c!643625 () Bool)

(assert (=> b!3721317 (= c!643625 ((_ is Union!10867) (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)))))

(declare-fun bm!270442 () Bool)

(declare-fun call!270447 () List!39748)

(assert (=> bm!270442 (= call!270447 (usedCharacters!1130 (ite c!643625 (regTwo!22247 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) (regOne!22246 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)))))))

(declare-fun b!3721318 () Bool)

(declare-fun e!2303743 () List!39748)

(assert (=> b!3721318 (= e!2303743 (Cons!39624 (c!643547 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) Nil!39624))))

(declare-fun b!3721319 () Bool)

(assert (=> b!3721319 (= e!2303742 e!2303743)))

(declare-fun c!643627 () Bool)

(assert (=> b!3721319 (= c!643627 ((_ is ElementMatch!10867) (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)))))

(declare-fun b!3721320 () Bool)

(declare-fun call!270448 () List!39748)

(assert (=> b!3721320 (= e!2303744 call!270448)))

(declare-fun c!643626 () Bool)

(declare-fun bm!270443 () Bool)

(assert (=> bm!270443 (= call!270450 (usedCharacters!1130 (ite c!643626 (reg!11196 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) (ite c!643625 (regOne!22247 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) (regTwo!22246 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797))))))))

(declare-fun bm!270444 () Bool)

(declare-fun call!270449 () List!39748)

(assert (=> bm!270444 (= call!270449 call!270450)))

(declare-fun b!3721321 () Bool)

(assert (=> b!3721321 (= c!643626 ((_ is Star!10867) (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)))))

(assert (=> b!3721321 (= e!2303743 e!2303745)))

(declare-fun bm!270445 () Bool)

(assert (=> bm!270445 (= call!270448 (++!9806 (ite c!643625 call!270449 call!270447) (ite c!643625 call!270447 call!270449)))))

(declare-fun b!3721322 () Bool)

(assert (=> b!3721322 (= e!2303744 call!270448)))

(assert (= (and d!1089367 c!643624) b!3721315))

(assert (= (and d!1089367 (not c!643624)) b!3721319))

(assert (= (and b!3721319 c!643627) b!3721318))

(assert (= (and b!3721319 (not c!643627)) b!3721321))

(assert (= (and b!3721321 c!643626) b!3721316))

(assert (= (and b!3721321 (not c!643626)) b!3721317))

(assert (= (and b!3721317 c!643625) b!3721322))

(assert (= (and b!3721317 (not c!643625)) b!3721320))

(assert (= (or b!3721322 b!3721320) bm!270444))

(assert (= (or b!3721322 b!3721320) bm!270442))

(assert (= (or b!3721322 b!3721320) bm!270445))

(assert (= (or b!3721316 bm!270444) bm!270443))

(declare-fun m!4225573 () Bool)

(assert (=> bm!270442 m!4225573))

(declare-fun m!4225575 () Bool)

(assert (=> bm!270443 m!4225575))

(declare-fun m!4225577 () Bool)

(assert (=> bm!270445 m!4225577))

(assert (=> b!3721114 d!1089367))

(declare-fun d!1089369 () Bool)

(assert (=> d!1089369 (not (contains!7960 (usedCharacters!1130 (derivativeStep!3328 (regTwo!22247 r!26968) c!13797)) cNot!42))))

(declare-fun lt!1297993 () Unit!57524)

(assert (=> d!1089369 (= lt!1297993 (choose!22213 (regTwo!22247 r!26968) c!13797 cNot!42))))

(assert (=> d!1089369 (= (lemmaDerivativeStepDoesNotAddCharToUsedCharacters!18 (regTwo!22247 r!26968) c!13797 cNot!42) lt!1297993)))

(declare-fun bs!574961 () Bool)

(assert (= bs!574961 d!1089369))

(assert (=> bs!574961 m!4225479))

(assert (=> bs!574961 m!4225479))

(assert (=> bs!574961 m!4225485))

(assert (=> bs!574961 m!4225485))

(assert (=> bs!574961 m!4225487))

(declare-fun m!4225579 () Bool)

(assert (=> bs!574961 m!4225579))

(assert (=> b!3721114 d!1089369))

(declare-fun d!1089371 () Bool)

(declare-fun lt!1297995 () Bool)

(assert (=> d!1089371 (= lt!1297995 (select (content!5744 (usedCharacters!1130 r!26968)) cNot!42))))

(declare-fun e!2303747 () Bool)

(assert (=> d!1089371 (= lt!1297995 e!2303747)))

(declare-fun res!1512433 () Bool)

(assert (=> d!1089371 (=> (not res!1512433) (not e!2303747))))

(assert (=> d!1089371 (= res!1512433 ((_ is Cons!39624) (usedCharacters!1130 r!26968)))))

(assert (=> d!1089371 (= (contains!7960 (usedCharacters!1130 r!26968) cNot!42) lt!1297995)))

(declare-fun b!3721323 () Bool)

(declare-fun e!2303746 () Bool)

(assert (=> b!3721323 (= e!2303747 e!2303746)))

(declare-fun res!1512434 () Bool)

(assert (=> b!3721323 (=> res!1512434 e!2303746)))

(assert (=> b!3721323 (= res!1512434 (= (h!45044 (usedCharacters!1130 r!26968)) cNot!42))))

(declare-fun b!3721324 () Bool)

(assert (=> b!3721324 (= e!2303746 (contains!7960 (t!302431 (usedCharacters!1130 r!26968)) cNot!42))))

(assert (= (and d!1089371 res!1512433) b!3721323))

(assert (= (and b!3721323 (not res!1512434)) b!3721324))

(assert (=> d!1089371 m!4225465))

(declare-fun m!4225581 () Bool)

(assert (=> d!1089371 m!4225581))

(declare-fun m!4225583 () Bool)

(assert (=> d!1089371 m!4225583))

(declare-fun m!4225585 () Bool)

(assert (=> b!3721324 m!4225585))

(assert (=> b!3721112 d!1089371))

(declare-fun d!1089373 () Bool)

(declare-fun c!643629 () Bool)

(assert (=> d!1089373 (= c!643629 (or ((_ is EmptyExpr!10867) r!26968) ((_ is EmptyLang!10867) r!26968)))))

(declare-fun e!2303748 () List!39748)

(assert (=> d!1089373 (= (usedCharacters!1130 r!26968) e!2303748)))

(declare-fun b!3721325 () Bool)

(assert (=> b!3721325 (= e!2303748 Nil!39624)))

(declare-fun b!3721326 () Bool)

(declare-fun e!2303751 () List!39748)

(declare-fun call!270454 () List!39748)

(assert (=> b!3721326 (= e!2303751 call!270454)))

(declare-fun b!3721327 () Bool)

(declare-fun e!2303750 () List!39748)

(assert (=> b!3721327 (= e!2303751 e!2303750)))

(declare-fun c!643630 () Bool)

(assert (=> b!3721327 (= c!643630 ((_ is Union!10867) r!26968))))

(declare-fun bm!270446 () Bool)

(declare-fun call!270451 () List!39748)

(assert (=> bm!270446 (= call!270451 (usedCharacters!1130 (ite c!643630 (regTwo!22247 r!26968) (regOne!22246 r!26968))))))

(declare-fun b!3721328 () Bool)

(declare-fun e!2303749 () List!39748)

(assert (=> b!3721328 (= e!2303749 (Cons!39624 (c!643547 r!26968) Nil!39624))))

(declare-fun b!3721329 () Bool)

(assert (=> b!3721329 (= e!2303748 e!2303749)))

(declare-fun c!643632 () Bool)

(assert (=> b!3721329 (= c!643632 ((_ is ElementMatch!10867) r!26968))))

(declare-fun b!3721330 () Bool)

(declare-fun call!270452 () List!39748)

(assert (=> b!3721330 (= e!2303750 call!270452)))

(declare-fun bm!270447 () Bool)

(declare-fun c!643631 () Bool)

(assert (=> bm!270447 (= call!270454 (usedCharacters!1130 (ite c!643631 (reg!11196 r!26968) (ite c!643630 (regOne!22247 r!26968) (regTwo!22246 r!26968)))))))

(declare-fun bm!270448 () Bool)

(declare-fun call!270453 () List!39748)

(assert (=> bm!270448 (= call!270453 call!270454)))

(declare-fun b!3721331 () Bool)

(assert (=> b!3721331 (= c!643631 ((_ is Star!10867) r!26968))))

(assert (=> b!3721331 (= e!2303749 e!2303751)))

(declare-fun bm!270449 () Bool)

(assert (=> bm!270449 (= call!270452 (++!9806 (ite c!643630 call!270453 call!270451) (ite c!643630 call!270451 call!270453)))))

(declare-fun b!3721332 () Bool)

(assert (=> b!3721332 (= e!2303750 call!270452)))

(assert (= (and d!1089373 c!643629) b!3721325))

(assert (= (and d!1089373 (not c!643629)) b!3721329))

(assert (= (and b!3721329 c!643632) b!3721328))

(assert (= (and b!3721329 (not c!643632)) b!3721331))

(assert (= (and b!3721331 c!643631) b!3721326))

(assert (= (and b!3721331 (not c!643631)) b!3721327))

(assert (= (and b!3721327 c!643630) b!3721332))

(assert (= (and b!3721327 (not c!643630)) b!3721330))

(assert (= (or b!3721332 b!3721330) bm!270448))

(assert (= (or b!3721332 b!3721330) bm!270446))

(assert (= (or b!3721332 b!3721330) bm!270449))

(assert (= (or b!3721326 bm!270448) bm!270447))

(declare-fun m!4225589 () Bool)

(assert (=> bm!270446 m!4225589))

(declare-fun m!4225591 () Bool)

(assert (=> bm!270447 m!4225591))

(declare-fun m!4225593 () Bool)

(assert (=> bm!270449 m!4225593))

(assert (=> b!3721112 d!1089373))

(declare-fun b!3721343 () Bool)

(declare-fun e!2303757 () Bool)

(declare-fun call!270461 () Bool)

(assert (=> b!3721343 (= e!2303757 call!270461)))

(declare-fun b!3721344 () Bool)

(declare-fun e!2303763 () Bool)

(declare-fun e!2303761 () Bool)

(assert (=> b!3721344 (= e!2303763 e!2303761)))

(declare-fun c!643638 () Bool)

(assert (=> b!3721344 (= c!643638 ((_ is Star!10867) r!26968))))

(declare-fun b!3721345 () Bool)

(declare-fun e!2303762 () Bool)

(assert (=> b!3721345 (= e!2303762 call!270461)))

(declare-fun b!3721346 () Bool)

(declare-fun e!2303758 () Bool)

(assert (=> b!3721346 (= e!2303761 e!2303758)))

(declare-fun c!643639 () Bool)

(assert (=> b!3721346 (= c!643639 ((_ is Union!10867) r!26968))))

(declare-fun bm!270454 () Bool)

(declare-fun call!270459 () Bool)

(assert (=> bm!270454 (= call!270459 (validRegex!4974 (ite c!643639 (regOne!22247 r!26968) (regOne!22246 r!26968))))))

(declare-fun b!3721347 () Bool)

(declare-fun res!1512435 () Bool)

(assert (=> b!3721347 (=> (not res!1512435) (not e!2303762))))

(assert (=> b!3721347 (= res!1512435 call!270459)))

(assert (=> b!3721347 (= e!2303758 e!2303762)))

(declare-fun b!3721349 () Bool)

(declare-fun e!2303759 () Bool)

(declare-fun call!270460 () Bool)

(assert (=> b!3721349 (= e!2303759 call!270460)))

(declare-fun b!3721350 () Bool)

(assert (=> b!3721350 (= e!2303761 e!2303759)))

(declare-fun res!1512436 () Bool)

(assert (=> b!3721350 (= res!1512436 (not (nullable!3783 (reg!11196 r!26968))))))

(assert (=> b!3721350 (=> (not res!1512436) (not e!2303759))))

(declare-fun bm!270455 () Bool)

(assert (=> bm!270455 (= call!270461 call!270460)))

(declare-fun b!3721351 () Bool)

(declare-fun e!2303760 () Bool)

(assert (=> b!3721351 (= e!2303760 e!2303757)))

(declare-fun res!1512438 () Bool)

(assert (=> b!3721351 (=> (not res!1512438) (not e!2303757))))

(assert (=> b!3721351 (= res!1512438 call!270459)))

(declare-fun bm!270456 () Bool)

(assert (=> bm!270456 (= call!270460 (validRegex!4974 (ite c!643638 (reg!11196 r!26968) (ite c!643639 (regTwo!22247 r!26968) (regTwo!22246 r!26968)))))))

(declare-fun d!1089377 () Bool)

(declare-fun res!1512437 () Bool)

(assert (=> d!1089377 (=> res!1512437 e!2303763)))

(assert (=> d!1089377 (= res!1512437 ((_ is ElementMatch!10867) r!26968))))

(assert (=> d!1089377 (= (validRegex!4974 r!26968) e!2303763)))

(declare-fun b!3721348 () Bool)

(declare-fun res!1512439 () Bool)

(assert (=> b!3721348 (=> res!1512439 e!2303760)))

(assert (=> b!3721348 (= res!1512439 (not ((_ is Concat!17138) r!26968)))))

(assert (=> b!3721348 (= e!2303758 e!2303760)))

(assert (= (and d!1089377 (not res!1512437)) b!3721344))

(assert (= (and b!3721344 c!643638) b!3721350))

(assert (= (and b!3721344 (not c!643638)) b!3721346))

(assert (= (and b!3721350 res!1512436) b!3721349))

(assert (= (and b!3721346 c!643639) b!3721347))

(assert (= (and b!3721346 (not c!643639)) b!3721348))

(assert (= (and b!3721347 res!1512435) b!3721345))

(assert (= (and b!3721348 (not res!1512439)) b!3721351))

(assert (= (and b!3721351 res!1512438) b!3721343))

(assert (= (or b!3721345 b!3721343) bm!270455))

(assert (= (or b!3721347 b!3721351) bm!270454))

(assert (= (or b!3721349 bm!270455) bm!270456))

(declare-fun m!4225605 () Bool)

(assert (=> bm!270454 m!4225605))

(declare-fun m!4225607 () Bool)

(assert (=> b!3721350 m!4225607))

(declare-fun m!4225613 () Bool)

(assert (=> bm!270456 m!4225613))

(assert (=> start!350446 d!1089377))

(declare-fun b!3721374 () Bool)

(declare-fun e!2303772 () Bool)

(declare-fun tp!1131696 () Bool)

(assert (=> b!3721374 (= e!2303772 tp!1131696)))

(declare-fun b!3721373 () Bool)

(declare-fun tp!1131695 () Bool)

(declare-fun tp!1131697 () Bool)

(assert (=> b!3721373 (= e!2303772 (and tp!1131695 tp!1131697))))

(declare-fun b!3721375 () Bool)

(declare-fun tp!1131699 () Bool)

(declare-fun tp!1131698 () Bool)

(assert (=> b!3721375 (= e!2303772 (and tp!1131699 tp!1131698))))

(assert (=> b!3721116 (= tp!1131683 e!2303772)))

(declare-fun b!3721372 () Bool)

(assert (=> b!3721372 (= e!2303772 tp_is_empty!18749)))

(assert (= (and b!3721116 ((_ is ElementMatch!10867) (regOne!22247 r!26968))) b!3721372))

(assert (= (and b!3721116 ((_ is Concat!17138) (regOne!22247 r!26968))) b!3721373))

(assert (= (and b!3721116 ((_ is Star!10867) (regOne!22247 r!26968))) b!3721374))

(assert (= (and b!3721116 ((_ is Union!10867) (regOne!22247 r!26968))) b!3721375))

(declare-fun b!3721387 () Bool)

(declare-fun e!2303780 () Bool)

(declare-fun tp!1131701 () Bool)

(assert (=> b!3721387 (= e!2303780 tp!1131701)))

(declare-fun b!3721386 () Bool)

(declare-fun tp!1131700 () Bool)

(declare-fun tp!1131702 () Bool)

(assert (=> b!3721386 (= e!2303780 (and tp!1131700 tp!1131702))))

(declare-fun b!3721388 () Bool)

(declare-fun tp!1131704 () Bool)

(declare-fun tp!1131703 () Bool)

(assert (=> b!3721388 (= e!2303780 (and tp!1131704 tp!1131703))))

(assert (=> b!3721116 (= tp!1131681 e!2303780)))

(declare-fun b!3721385 () Bool)

(assert (=> b!3721385 (= e!2303780 tp_is_empty!18749)))

(assert (= (and b!3721116 ((_ is ElementMatch!10867) (regTwo!22247 r!26968))) b!3721385))

(assert (= (and b!3721116 ((_ is Concat!17138) (regTwo!22247 r!26968))) b!3721386))

(assert (= (and b!3721116 ((_ is Star!10867) (regTwo!22247 r!26968))) b!3721387))

(assert (= (and b!3721116 ((_ is Union!10867) (regTwo!22247 r!26968))) b!3721388))

(declare-fun b!3721391 () Bool)

(declare-fun e!2303781 () Bool)

(declare-fun tp!1131706 () Bool)

(assert (=> b!3721391 (= e!2303781 tp!1131706)))

(declare-fun b!3721390 () Bool)

(declare-fun tp!1131705 () Bool)

(declare-fun tp!1131707 () Bool)

(assert (=> b!3721390 (= e!2303781 (and tp!1131705 tp!1131707))))

(declare-fun b!3721392 () Bool)

(declare-fun tp!1131709 () Bool)

(declare-fun tp!1131708 () Bool)

(assert (=> b!3721392 (= e!2303781 (and tp!1131709 tp!1131708))))

(assert (=> b!3721115 (= tp!1131684 e!2303781)))

(declare-fun b!3721389 () Bool)

(assert (=> b!3721389 (= e!2303781 tp_is_empty!18749)))

(assert (= (and b!3721115 ((_ is ElementMatch!10867) (regOne!22246 r!26968))) b!3721389))

(assert (= (and b!3721115 ((_ is Concat!17138) (regOne!22246 r!26968))) b!3721390))

(assert (= (and b!3721115 ((_ is Star!10867) (regOne!22246 r!26968))) b!3721391))

(assert (= (and b!3721115 ((_ is Union!10867) (regOne!22246 r!26968))) b!3721392))

(declare-fun b!3721395 () Bool)

(declare-fun e!2303782 () Bool)

(declare-fun tp!1131711 () Bool)

(assert (=> b!3721395 (= e!2303782 tp!1131711)))

(declare-fun b!3721394 () Bool)

(declare-fun tp!1131710 () Bool)

(declare-fun tp!1131712 () Bool)

(assert (=> b!3721394 (= e!2303782 (and tp!1131710 tp!1131712))))

(declare-fun b!3721396 () Bool)

(declare-fun tp!1131714 () Bool)

(declare-fun tp!1131713 () Bool)

(assert (=> b!3721396 (= e!2303782 (and tp!1131714 tp!1131713))))

(assert (=> b!3721115 (= tp!1131680 e!2303782)))

(declare-fun b!3721393 () Bool)

(assert (=> b!3721393 (= e!2303782 tp_is_empty!18749)))

(assert (= (and b!3721115 ((_ is ElementMatch!10867) (regTwo!22246 r!26968))) b!3721393))

(assert (= (and b!3721115 ((_ is Concat!17138) (regTwo!22246 r!26968))) b!3721394))

(assert (= (and b!3721115 ((_ is Star!10867) (regTwo!22246 r!26968))) b!3721395))

(assert (= (and b!3721115 ((_ is Union!10867) (regTwo!22246 r!26968))) b!3721396))

(declare-fun b!3721405 () Bool)

(declare-fun e!2303785 () Bool)

(declare-fun tp!1131718 () Bool)

(assert (=> b!3721405 (= e!2303785 tp!1131718)))

(declare-fun b!3721404 () Bool)

(declare-fun tp!1131717 () Bool)

(declare-fun tp!1131719 () Bool)

(assert (=> b!3721404 (= e!2303785 (and tp!1131717 tp!1131719))))

(declare-fun b!3721406 () Bool)

(declare-fun tp!1131721 () Bool)

(declare-fun tp!1131720 () Bool)

(assert (=> b!3721406 (= e!2303785 (and tp!1131721 tp!1131720))))

(assert (=> b!3721118 (= tp!1131682 e!2303785)))

(declare-fun b!3721403 () Bool)

(assert (=> b!3721403 (= e!2303785 tp_is_empty!18749)))

(assert (= (and b!3721118 ((_ is ElementMatch!10867) (reg!11196 r!26968))) b!3721403))

(assert (= (and b!3721118 ((_ is Concat!17138) (reg!11196 r!26968))) b!3721404))

(assert (= (and b!3721118 ((_ is Star!10867) (reg!11196 r!26968))) b!3721405))

(assert (= (and b!3721118 ((_ is Union!10867) (reg!11196 r!26968))) b!3721406))

(check-sat (not b!3721324) (not b!3721373) (not b!3721310) (not d!1089359) (not bm!270456) (not b!3721406) (not b!3721387) (not b!3721374) (not d!1089369) (not b!3721392) (not b!3721405) (not bm!270377) (not b!3721404) (not bm!270404) (not b!3721388) (not b!3721391) (not d!1089361) (not d!1089345) (not b!3721228) (not bm!270438) (not b!3721350) (not b!3721390) (not b!3721236) (not bm!270446) (not b!3721395) (not bm!270432) (not d!1089371) (not bm!270430) (not bm!270443) (not bm!270445) (not b!3721396) (not b!3721386) (not b!3721375) (not bm!270439) (not bm!270449) (not b!3721394) (not bm!270376) tp_is_empty!18749 (not bm!270454) (not b!3721314) (not bm!270379) (not d!1089365) (not bm!270442) (not d!1089351) (not bm!270447) (not b!3721292) (not bm!270405))
(check-sat)
