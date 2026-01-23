; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!572170 () Bool)

(assert start!572170)

(declare-fun b!5465472 () Bool)

(assert (=> b!5465472 true))

(assert (=> b!5465472 true))

(declare-fun lambda!290362 () Int)

(declare-fun lambda!290361 () Int)

(assert (=> b!5465472 (not (= lambda!290362 lambda!290361))))

(assert (=> b!5465472 true))

(assert (=> b!5465472 true))

(declare-fun lambda!290363 () Int)

(assert (=> b!5465472 (not (= lambda!290363 lambda!290361))))

(assert (=> b!5465472 (not (= lambda!290363 lambda!290362))))

(assert (=> b!5465472 true))

(assert (=> b!5465472 true))

(declare-fun b!5465467 () Bool)

(declare-fun res!2328554 () Bool)

(declare-fun e!3383879 () Bool)

(assert (=> b!5465467 (=> (not res!2328554) (not e!3383879))))

(declare-datatypes ((C!30900 0))(
  ( (C!30901 (val!25152 Int)) )
))
(declare-datatypes ((Regex!15315 0))(
  ( (ElementMatch!15315 (c!954855 C!30900)) (Concat!24160 (regOne!31142 Regex!15315) (regTwo!31142 Regex!15315)) (EmptyExpr!15315) (Star!15315 (reg!15644 Regex!15315)) (EmptyLang!15315) (Union!15315 (regOne!31143 Regex!15315) (regTwo!31143 Regex!15315)) )
))
(declare-fun r!7292 () Regex!15315)

(declare-datatypes ((List!62244 0))(
  ( (Nil!62120) (Cons!62120 (h!68568 Regex!15315) (t!375473 List!62244)) )
))
(declare-datatypes ((Context!9398 0))(
  ( (Context!9399 (exprs!5199 List!62244)) )
))
(declare-datatypes ((List!62245 0))(
  ( (Nil!62121) (Cons!62121 (h!68569 Context!9398) (t!375474 List!62245)) )
))
(declare-fun zl!343 () List!62245)

(declare-fun unfocusZipper!1057 (List!62245) Regex!15315)

(assert (=> b!5465467 (= res!2328554 (= r!7292 (unfocusZipper!1057 zl!343)))))

(declare-fun b!5465468 () Bool)

(declare-fun e!3383876 () Bool)

(declare-fun tp_is_empty!39883 () Bool)

(assert (=> b!5465468 (= e!3383876 tp_is_empty!39883)))

(declare-fun b!5465469 () Bool)

(declare-fun e!3383878 () Bool)

(declare-fun tp!1503303 () Bool)

(assert (=> b!5465469 (= e!3383878 tp!1503303)))

(declare-fun setIsEmpty!35821 () Bool)

(declare-fun setRes!35821 () Bool)

(assert (=> setIsEmpty!35821 setRes!35821))

(declare-fun b!5465470 () Bool)

(declare-fun tp!1503302 () Bool)

(assert (=> b!5465470 (= e!3383876 tp!1503302)))

(declare-fun b!5465471 () Bool)

(declare-fun tp!1503304 () Bool)

(declare-fun tp!1503305 () Bool)

(assert (=> b!5465471 (= e!3383876 (and tp!1503304 tp!1503305))))

(declare-fun e!3383874 () Bool)

(declare-fun e!3383877 () Bool)

(assert (=> b!5465472 (= e!3383874 e!3383877)))

(declare-fun res!2328552 () Bool)

(assert (=> b!5465472 (=> res!2328552 e!3383877)))

(declare-fun lt!2233252 () Bool)

(declare-fun e!3383875 () Bool)

(assert (=> b!5465472 (= res!2328552 (not (= lt!2233252 e!3383875)))))

(declare-fun res!2328547 () Bool)

(assert (=> b!5465472 (=> res!2328547 e!3383875)))

(declare-datatypes ((List!62246 0))(
  ( (Nil!62122) (Cons!62122 (h!68570 C!30900) (t!375475 List!62246)) )
))
(declare-fun s!2326 () List!62246)

(declare-fun isEmpty!34086 (List!62246) Bool)

(assert (=> b!5465472 (= res!2328547 (isEmpty!34086 s!2326))))

(declare-fun Exists!2494 (Int) Bool)

(assert (=> b!5465472 (= (Exists!2494 lambda!290361) (Exists!2494 lambda!290363))))

(declare-datatypes ((Unit!155080 0))(
  ( (Unit!155081) )
))
(declare-fun lt!2233255 () Unit!155080)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1144 (Regex!15315 Regex!15315 List!62246) Unit!155080)

(assert (=> b!5465472 (= lt!2233255 (lemmaExistCutMatchRandMatchRSpecEquivalent!1144 (reg!15644 r!7292) r!7292 s!2326))))

(assert (=> b!5465472 (= (Exists!2494 lambda!290361) (Exists!2494 lambda!290362))))

(declare-fun lt!2233259 () Unit!155080)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!468 (Regex!15315 List!62246) Unit!155080)

(assert (=> b!5465472 (= lt!2233259 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!468 (reg!15644 r!7292) s!2326))))

(declare-fun lt!2233257 () Bool)

(assert (=> b!5465472 (= lt!2233257 (Exists!2494 lambda!290361))))

(declare-datatypes ((tuple2!65024 0))(
  ( (tuple2!65025 (_1!35815 List!62246) (_2!35815 List!62246)) )
))
(declare-datatypes ((Option!15424 0))(
  ( (None!15423) (Some!15423 (v!51452 tuple2!65024)) )
))
(declare-fun isDefined!12127 (Option!15424) Bool)

(declare-fun findConcatSeparation!1838 (Regex!15315 Regex!15315 List!62246 List!62246 List!62246) Option!15424)

(assert (=> b!5465472 (= lt!2233257 (isDefined!12127 (findConcatSeparation!1838 (reg!15644 r!7292) r!7292 Nil!62122 s!2326 s!2326)))))

(declare-fun lt!2233254 () Unit!155080)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1602 (Regex!15315 Regex!15315 List!62246) Unit!155080)

(assert (=> b!5465472 (= lt!2233254 (lemmaFindConcatSeparationEquivalentToExists!1602 (reg!15644 r!7292) r!7292 s!2326))))

(declare-fun b!5465473 () Bool)

(assert (=> b!5465473 (= e!3383875 lt!2233257)))

(declare-fun b!5465474 () Bool)

(declare-fun e!3383880 () Bool)

(declare-fun tp!1503296 () Bool)

(assert (=> b!5465474 (= e!3383880 tp!1503296)))

(declare-fun b!5465475 () Bool)

(declare-fun res!2328549 () Bool)

(assert (=> b!5465475 (=> res!2328549 e!3383874)))

(get-info :version)

(assert (=> b!5465475 (= res!2328549 (or ((_ is EmptyExpr!15315) r!7292) ((_ is EmptyLang!15315) r!7292) ((_ is ElementMatch!15315) r!7292) ((_ is Union!15315) r!7292) ((_ is Concat!24160) r!7292)))))

(declare-fun b!5465476 () Bool)

(declare-fun e!3383872 () Bool)

(declare-fun tp!1503301 () Bool)

(assert (=> b!5465476 (= e!3383872 (and tp_is_empty!39883 tp!1503301))))

(declare-fun tp!1503299 () Bool)

(declare-fun b!5465477 () Bool)

(declare-fun e!3383873 () Bool)

(declare-fun inv!81534 (Context!9398) Bool)

(assert (=> b!5465477 (= e!3383873 (and (inv!81534 (h!68569 zl!343)) e!3383878 tp!1503299))))

(declare-fun b!5465478 () Bool)

(declare-fun res!2328545 () Bool)

(assert (=> b!5465478 (=> res!2328545 e!3383877)))

(assert (=> b!5465478 (= res!2328545 ((_ is Nil!62122) s!2326))))

(declare-fun b!5465479 () Bool)

(declare-fun tp!1503300 () Bool)

(declare-fun tp!1503298 () Bool)

(assert (=> b!5465479 (= e!3383876 (and tp!1503300 tp!1503298))))

(declare-fun res!2328550 () Bool)

(assert (=> start!572170 (=> (not res!2328550) (not e!3383879))))

(declare-fun validRegex!7051 (Regex!15315) Bool)

(assert (=> start!572170 (= res!2328550 (validRegex!7051 r!7292))))

(assert (=> start!572170 e!3383879))

(assert (=> start!572170 e!3383876))

(declare-fun condSetEmpty!35821 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9398))

(assert (=> start!572170 (= condSetEmpty!35821 (= z!1189 ((as const (Array Context!9398 Bool)) false)))))

(assert (=> start!572170 setRes!35821))

(assert (=> start!572170 e!3383873))

(assert (=> start!572170 e!3383872))

(declare-fun b!5465480 () Bool)

(declare-fun res!2328548 () Bool)

(assert (=> b!5465480 (=> res!2328548 e!3383874)))

(declare-fun generalisedConcat!984 (List!62244) Regex!15315)

(assert (=> b!5465480 (= res!2328548 (not (= r!7292 (generalisedConcat!984 (exprs!5199 (h!68569 zl!343))))))))

(declare-fun b!5465481 () Bool)

(assert (=> b!5465481 (= e!3383877 true)))

(declare-fun lt!2233253 () (InoxSet Context!9398))

(declare-fun derivationStepZipperDown!741 (Regex!15315 Context!9398 C!30900) (InoxSet Context!9398))

(assert (=> b!5465481 (= lt!2233253 (derivationStepZipperDown!741 r!7292 (Context!9399 Nil!62120) (h!68570 s!2326)))))

(declare-fun lt!2233256 () (InoxSet Context!9398))

(declare-fun derivationStepZipperUp!667 (Context!9398 C!30900) (InoxSet Context!9398))

(assert (=> b!5465481 (= lt!2233256 (derivationStepZipperUp!667 (Context!9399 (Cons!62120 r!7292 Nil!62120)) (h!68570 s!2326)))))

(declare-fun b!5465482 () Bool)

(assert (=> b!5465482 (= e!3383879 (not e!3383874))))

(declare-fun res!2328546 () Bool)

(assert (=> b!5465482 (=> res!2328546 e!3383874)))

(assert (=> b!5465482 (= res!2328546 (not ((_ is Cons!62121) zl!343)))))

(declare-fun matchRSpec!2418 (Regex!15315 List!62246) Bool)

(assert (=> b!5465482 (= lt!2233252 (matchRSpec!2418 r!7292 s!2326))))

(declare-fun matchR!7500 (Regex!15315 List!62246) Bool)

(assert (=> b!5465482 (= lt!2233252 (matchR!7500 r!7292 s!2326))))

(declare-fun lt!2233258 () Unit!155080)

(declare-fun mainMatchTheorem!2418 (Regex!15315 List!62246) Unit!155080)

(assert (=> b!5465482 (= lt!2233258 (mainMatchTheorem!2418 r!7292 s!2326))))

(declare-fun b!5465483 () Bool)

(declare-fun res!2328543 () Bool)

(assert (=> b!5465483 (=> res!2328543 e!3383874)))

(declare-fun isEmpty!34087 (List!62245) Bool)

(assert (=> b!5465483 (= res!2328543 (not (isEmpty!34087 (t!375474 zl!343))))))

(declare-fun setNonEmpty!35821 () Bool)

(declare-fun setElem!35821 () Context!9398)

(declare-fun tp!1503297 () Bool)

(assert (=> setNonEmpty!35821 (= setRes!35821 (and tp!1503297 (inv!81534 setElem!35821) e!3383880))))

(declare-fun setRest!35821 () (InoxSet Context!9398))

(assert (=> setNonEmpty!35821 (= z!1189 ((_ map or) (store ((as const (Array Context!9398 Bool)) false) setElem!35821 true) setRest!35821))))

(declare-fun b!5465484 () Bool)

(declare-fun res!2328553 () Bool)

(assert (=> b!5465484 (=> (not res!2328553) (not e!3383879))))

(declare-fun toList!9099 ((InoxSet Context!9398)) List!62245)

(assert (=> b!5465484 (= res!2328553 (= (toList!9099 z!1189) zl!343))))

(declare-fun b!5465485 () Bool)

(declare-fun res!2328544 () Bool)

(assert (=> b!5465485 (=> res!2328544 e!3383874)))

(assert (=> b!5465485 (= res!2328544 (not ((_ is Cons!62120) (exprs!5199 (h!68569 zl!343)))))))

(declare-fun b!5465486 () Bool)

(declare-fun res!2328551 () Bool)

(assert (=> b!5465486 (=> res!2328551 e!3383874)))

(declare-fun generalisedUnion!1244 (List!62244) Regex!15315)

(declare-fun unfocusZipperList!757 (List!62245) List!62244)

(assert (=> b!5465486 (= res!2328551 (not (= r!7292 (generalisedUnion!1244 (unfocusZipperList!757 zl!343)))))))

(assert (= (and start!572170 res!2328550) b!5465484))

(assert (= (and b!5465484 res!2328553) b!5465467))

(assert (= (and b!5465467 res!2328554) b!5465482))

(assert (= (and b!5465482 (not res!2328546)) b!5465483))

(assert (= (and b!5465483 (not res!2328543)) b!5465480))

(assert (= (and b!5465480 (not res!2328548)) b!5465485))

(assert (= (and b!5465485 (not res!2328544)) b!5465486))

(assert (= (and b!5465486 (not res!2328551)) b!5465475))

(assert (= (and b!5465475 (not res!2328549)) b!5465472))

(assert (= (and b!5465472 (not res!2328547)) b!5465473))

(assert (= (and b!5465472 (not res!2328552)) b!5465478))

(assert (= (and b!5465478 (not res!2328545)) b!5465481))

(assert (= (and start!572170 ((_ is ElementMatch!15315) r!7292)) b!5465468))

(assert (= (and start!572170 ((_ is Concat!24160) r!7292)) b!5465471))

(assert (= (and start!572170 ((_ is Star!15315) r!7292)) b!5465470))

(assert (= (and start!572170 ((_ is Union!15315) r!7292)) b!5465479))

(assert (= (and start!572170 condSetEmpty!35821) setIsEmpty!35821))

(assert (= (and start!572170 (not condSetEmpty!35821)) setNonEmpty!35821))

(assert (= setNonEmpty!35821 b!5465474))

(assert (= b!5465477 b!5465469))

(assert (= (and start!572170 ((_ is Cons!62121) zl!343)) b!5465477))

(assert (= (and start!572170 ((_ is Cons!62122) s!2326)) b!5465476))

(declare-fun m!6485298 () Bool)

(assert (=> b!5465477 m!6485298))

(declare-fun m!6485300 () Bool)

(assert (=> start!572170 m!6485300))

(declare-fun m!6485302 () Bool)

(assert (=> b!5465483 m!6485302))

(declare-fun m!6485304 () Bool)

(assert (=> b!5465472 m!6485304))

(declare-fun m!6485306 () Bool)

(assert (=> b!5465472 m!6485306))

(declare-fun m!6485308 () Bool)

(assert (=> b!5465472 m!6485308))

(assert (=> b!5465472 m!6485304))

(declare-fun m!6485310 () Bool)

(assert (=> b!5465472 m!6485310))

(declare-fun m!6485312 () Bool)

(assert (=> b!5465472 m!6485312))

(assert (=> b!5465472 m!6485304))

(assert (=> b!5465472 m!6485312))

(declare-fun m!6485314 () Bool)

(assert (=> b!5465472 m!6485314))

(declare-fun m!6485316 () Bool)

(assert (=> b!5465472 m!6485316))

(declare-fun m!6485318 () Bool)

(assert (=> b!5465472 m!6485318))

(declare-fun m!6485320 () Bool)

(assert (=> b!5465472 m!6485320))

(declare-fun m!6485322 () Bool)

(assert (=> b!5465481 m!6485322))

(declare-fun m!6485324 () Bool)

(assert (=> b!5465481 m!6485324))

(declare-fun m!6485326 () Bool)

(assert (=> setNonEmpty!35821 m!6485326))

(declare-fun m!6485328 () Bool)

(assert (=> b!5465484 m!6485328))

(declare-fun m!6485330 () Bool)

(assert (=> b!5465467 m!6485330))

(declare-fun m!6485332 () Bool)

(assert (=> b!5465480 m!6485332))

(declare-fun m!6485334 () Bool)

(assert (=> b!5465486 m!6485334))

(assert (=> b!5465486 m!6485334))

(declare-fun m!6485336 () Bool)

(assert (=> b!5465486 m!6485336))

(declare-fun m!6485338 () Bool)

(assert (=> b!5465482 m!6485338))

(declare-fun m!6485340 () Bool)

(assert (=> b!5465482 m!6485340))

(declare-fun m!6485342 () Bool)

(assert (=> b!5465482 m!6485342))

(check-sat (not start!572170) (not b!5465477) (not b!5465482) (not b!5465476) (not b!5465467) (not b!5465484) (not b!5465481) (not b!5465469) (not setNonEmpty!35821) (not b!5465471) (not b!5465479) (not b!5465480) (not b!5465483) (not b!5465470) (not b!5465486) tp_is_empty!39883 (not b!5465474) (not b!5465472))
(check-sat)
