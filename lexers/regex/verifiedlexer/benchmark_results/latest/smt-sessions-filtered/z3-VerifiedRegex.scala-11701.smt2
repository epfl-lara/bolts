; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!660624 () Bool)

(assert start!660624)

(declare-fun b!6835489 () Bool)

(assert (=> b!6835489 true))

(assert (=> b!6835489 true))

(declare-fun lambda!386415 () Int)

(declare-fun lambda!386414 () Int)

(assert (=> b!6835489 (not (= lambda!386415 lambda!386414))))

(assert (=> b!6835489 true))

(assert (=> b!6835489 true))

(declare-fun lambda!386416 () Int)

(assert (=> b!6835489 (not (= lambda!386416 lambda!386414))))

(assert (=> b!6835489 (not (= lambda!386416 lambda!386415))))

(assert (=> b!6835489 true))

(assert (=> b!6835489 true))

(declare-fun b!6835484 () Bool)

(assert (=> b!6835484 true))

(declare-fun b!6835460 () Bool)

(assert (=> b!6835460 true))

(declare-fun b!6835457 () Bool)

(declare-fun e!4123005 () Bool)

(declare-fun e!4123015 () Bool)

(assert (=> b!6835457 (= e!4123005 (not e!4123015))))

(declare-fun res!2791332 () Bool)

(assert (=> b!6835457 (=> res!2791332 e!4123015)))

(declare-datatypes ((C!33568 0))(
  ( (C!33569 (val!26486 Int)) )
))
(declare-datatypes ((Regex!16649 0))(
  ( (ElementMatch!16649 (c!1272781 C!33568)) (Concat!25494 (regOne!33810 Regex!16649) (regTwo!33810 Regex!16649)) (EmptyExpr!16649) (Star!16649 (reg!16978 Regex!16649)) (EmptyLang!16649) (Union!16649 (regOne!33811 Regex!16649) (regTwo!33811 Regex!16649)) )
))
(declare-datatypes ((List!66246 0))(
  ( (Nil!66122) (Cons!66122 (h!72570 Regex!16649) (t!379989 List!66246)) )
))
(declare-datatypes ((Context!12066 0))(
  ( (Context!12067 (exprs!6533 List!66246)) )
))
(declare-datatypes ((List!66247 0))(
  ( (Nil!66123) (Cons!66123 (h!72571 Context!12066) (t!379990 List!66247)) )
))
(declare-fun zl!343 () List!66247)

(get-info :version)

(assert (=> b!6835457 (= res!2791332 (not ((_ is Cons!66123) zl!343)))))

(declare-fun lt!2454325 () Bool)

(declare-fun r!7292 () Regex!16649)

(declare-datatypes ((List!66248 0))(
  ( (Nil!66124) (Cons!66124 (h!72572 C!33568) (t!379991 List!66248)) )
))
(declare-fun s!2326 () List!66248)

(declare-fun matchRSpec!3750 (Regex!16649 List!66248) Bool)

(assert (=> b!6835457 (= lt!2454325 (matchRSpec!3750 r!7292 s!2326))))

(declare-fun matchR!8832 (Regex!16649 List!66248) Bool)

(assert (=> b!6835457 (= lt!2454325 (matchR!8832 r!7292 s!2326))))

(declare-datatypes ((Unit!159989 0))(
  ( (Unit!159990) )
))
(declare-fun lt!2454336 () Unit!159989)

(declare-fun mainMatchTheorem!3750 (Regex!16649 List!66248) Unit!159989)

(assert (=> b!6835457 (= lt!2454336 (mainMatchTheorem!3750 r!7292 s!2326))))

(declare-fun b!6835458 () Bool)

(declare-fun e!4123009 () Bool)

(declare-fun e!4123008 () Bool)

(assert (=> b!6835458 (= e!4123009 e!4123008)))

(declare-fun res!2791338 () Bool)

(assert (=> b!6835458 (=> res!2791338 e!4123008)))

(declare-fun lt!2454307 () Context!12066)

(declare-fun lt!2454323 () Regex!16649)

(declare-fun unfocusZipper!2391 (List!66247) Regex!16649)

(assert (=> b!6835458 (= res!2791338 (not (= (unfocusZipper!2391 (Cons!66123 lt!2454307 Nil!66123)) lt!2454323)))))

(assert (=> b!6835458 (= lt!2454323 (Concat!25494 (reg!16978 r!7292) r!7292))))

(declare-fun b!6835459 () Bool)

(declare-fun res!2791323 () Bool)

(assert (=> b!6835459 (=> res!2791323 e!4123015)))

(declare-fun isEmpty!38513 (List!66247) Bool)

(assert (=> b!6835459 (= res!2791323 (not (isEmpty!38513 (t!379990 zl!343))))))

(declare-fun e!4123017 () Bool)

(declare-fun e!4123014 () Bool)

(assert (=> b!6835460 (= e!4123017 e!4123014)))

(declare-fun res!2791345 () Bool)

(assert (=> b!6835460 (=> res!2791345 e!4123014)))

(declare-fun lt!2454303 () Context!12066)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2454318 () (InoxSet Context!12066))

(declare-fun lt!2454335 () (InoxSet Context!12066))

(declare-fun appendTo!254 ((InoxSet Context!12066) Context!12066) (InoxSet Context!12066))

(assert (=> b!6835460 (= res!2791345 (not (= (appendTo!254 lt!2454335 lt!2454303) lt!2454318)))))

(declare-fun lambda!386418 () Int)

(declare-fun lt!2454306 () List!66246)

(declare-fun lt!2454304 () List!66246)

(declare-fun map!15134 ((InoxSet Context!12066) Int) (InoxSet Context!12066))

(declare-fun ++!14844 (List!66246 List!66246) List!66246)

(assert (=> b!6835460 (= (map!15134 lt!2454335 lambda!386418) (store ((as const (Array Context!12066 Bool)) false) (Context!12067 (++!14844 lt!2454304 lt!2454306)) true))))

(declare-fun lambda!386419 () Int)

(declare-fun lt!2454328 () Unit!159989)

(declare-fun lemmaConcatPreservesForall!478 (List!66246 List!66246 Int) Unit!159989)

(assert (=> b!6835460 (= lt!2454328 (lemmaConcatPreservesForall!478 lt!2454304 lt!2454306 lambda!386419))))

(declare-fun lt!2454319 () Unit!159989)

(declare-fun lt!2454305 () Context!12066)

(declare-fun lemmaMapOnSingletonSet!284 ((InoxSet Context!12066) Context!12066 Int) Unit!159989)

(assert (=> b!6835460 (= lt!2454319 (lemmaMapOnSingletonSet!284 lt!2454335 lt!2454305 lambda!386418))))

(declare-fun b!6835461 () Bool)

(declare-fun e!4123011 () Bool)

(declare-fun tp!1870678 () Bool)

(assert (=> b!6835461 (= e!4123011 tp!1870678)))

(declare-fun b!6835462 () Bool)

(declare-fun res!2791350 () Bool)

(assert (=> b!6835462 (=> res!2791350 e!4123017)))

(declare-fun z!1189 () (InoxSet Context!12066))

(declare-fun matchZipper!2635 ((InoxSet Context!12066) List!66248) Bool)

(assert (=> b!6835462 (= res!2791350 (not (matchZipper!2635 z!1189 s!2326)))))

(declare-fun b!6835463 () Bool)

(declare-fun res!2791336 () Bool)

(assert (=> b!6835463 (=> res!2791336 e!4123009)))

(declare-fun derivationStepZipper!2593 ((InoxSet Context!12066) C!33568) (InoxSet Context!12066))

(assert (=> b!6835463 (= res!2791336 (not (= (matchZipper!2635 lt!2454318 s!2326) (matchZipper!2635 (derivationStepZipper!2593 lt!2454318 (h!72572 s!2326)) (t!379991 s!2326)))))))

(declare-fun b!6835464 () Bool)

(declare-fun res!2791335 () Bool)

(assert (=> b!6835464 (=> res!2791335 e!4123015)))

(declare-fun generalisedConcat!2246 (List!66246) Regex!16649)

(assert (=> b!6835464 (= res!2791335 (not (= r!7292 (generalisedConcat!2246 (exprs!6533 (h!72571 zl!343))))))))

(declare-fun b!6835465 () Bool)

(declare-fun res!2791334 () Bool)

(assert (=> b!6835465 (=> res!2791334 e!4123015)))

(declare-fun generalisedUnion!2493 (List!66246) Regex!16649)

(declare-fun unfocusZipperList!2070 (List!66247) List!66246)

(assert (=> b!6835465 (= res!2791334 (not (= r!7292 (generalisedUnion!2493 (unfocusZipperList!2070 zl!343)))))))

(declare-fun b!6835466 () Bool)

(declare-fun res!2791348 () Bool)

(declare-fun e!4123007 () Bool)

(assert (=> b!6835466 (=> (not res!2791348) (not e!4123007))))

(declare-fun toList!10433 ((InoxSet Context!12066)) List!66247)

(assert (=> b!6835466 (= res!2791348 (= (toList!10433 z!1189) zl!343))))

(declare-fun res!2791329 () Bool)

(assert (=> start!660624 (=> (not res!2791329) (not e!4123007))))

(declare-fun validRegex!8385 (Regex!16649) Bool)

(assert (=> start!660624 (= res!2791329 (validRegex!8385 r!7292))))

(assert (=> start!660624 e!4123007))

(declare-fun e!4123001 () Bool)

(assert (=> start!660624 e!4123001))

(declare-fun condSetEmpty!46945 () Bool)

(assert (=> start!660624 (= condSetEmpty!46945 (= z!1189 ((as const (Array Context!12066 Bool)) false)))))

(declare-fun setRes!46945 () Bool)

(assert (=> start!660624 setRes!46945))

(declare-fun e!4123018 () Bool)

(assert (=> start!660624 e!4123018))

(declare-fun e!4123013 () Bool)

(assert (=> start!660624 e!4123013))

(declare-fun b!6835456 () Bool)

(declare-fun e!4123002 () Bool)

(assert (=> b!6835456 (= e!4123014 e!4123002)))

(declare-fun res!2791346 () Bool)

(assert (=> b!6835456 (=> res!2791346 e!4123002)))

(declare-fun lt!2454299 () List!66248)

(assert (=> b!6835456 (= res!2791346 (not (= s!2326 lt!2454299)))))

(declare-datatypes ((tuple2!67248 0))(
  ( (tuple2!67249 (_1!36927 List!66248) (_2!36927 List!66248)) )
))
(declare-fun lt!2454308 () tuple2!67248)

(declare-fun ++!14845 (List!66248 List!66248) List!66248)

(assert (=> b!6835456 (= lt!2454299 (++!14845 (_1!36927 lt!2454308) (_2!36927 lt!2454308)))))

(declare-datatypes ((Option!16536 0))(
  ( (None!16535) (Some!16535 (v!52747 tuple2!67248)) )
))
(declare-fun lt!2454309 () Option!16536)

(declare-fun get!23043 (Option!16536) tuple2!67248)

(assert (=> b!6835456 (= lt!2454308 (get!23043 lt!2454309))))

(declare-fun isDefined!13239 (Option!16536) Bool)

(assert (=> b!6835456 (isDefined!13239 lt!2454309)))

(declare-fun lt!2454300 () (InoxSet Context!12066))

(declare-fun findConcatSeparationZippers!258 ((InoxSet Context!12066) (InoxSet Context!12066) List!66248 List!66248 List!66248) Option!16536)

(assert (=> b!6835456 (= lt!2454309 (findConcatSeparationZippers!258 lt!2454335 lt!2454300 Nil!66124 s!2326 s!2326))))

(declare-fun lt!2454324 () Unit!159989)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!258 ((InoxSet Context!12066) Context!12066 List!66248) Unit!159989)

(assert (=> b!6835456 (= lt!2454324 (lemmaConcatZipperMatchesStringThenFindConcatDefined!258 lt!2454335 lt!2454303 s!2326))))

(declare-fun b!6835467 () Bool)

(declare-fun e!4122999 () Bool)

(assert (=> b!6835467 (= e!4122999 false)))

(declare-fun b!6835468 () Bool)

(declare-fun e!4123010 () Bool)

(assert (=> b!6835468 (= e!4123010 e!4123017)))

(declare-fun res!2791333 () Bool)

(assert (=> b!6835468 (=> res!2791333 e!4123017)))

(declare-fun lt!2454320 () Bool)

(assert (=> b!6835468 (= res!2791333 lt!2454320)))

(assert (=> b!6835468 (= lt!2454320 (matchRSpec!3750 lt!2454323 s!2326))))

(assert (=> b!6835468 (= lt!2454320 (matchR!8832 lt!2454323 s!2326))))

(declare-fun lt!2454301 () Unit!159989)

(assert (=> b!6835468 (= lt!2454301 (mainMatchTheorem!3750 lt!2454323 s!2326))))

(declare-fun b!6835469 () Bool)

(declare-fun tp_is_empty!42551 () Bool)

(assert (=> b!6835469 (= e!4123001 tp_is_empty!42551)))

(declare-fun b!6835470 () Bool)

(declare-fun res!2791341 () Bool)

(declare-fun e!4123000 () Bool)

(assert (=> b!6835470 (=> res!2791341 e!4123000)))

(assert (=> b!6835470 (= res!2791341 ((_ is Nil!66124) s!2326))))

(declare-fun b!6835471 () Bool)

(declare-fun tp!1870677 () Bool)

(declare-fun tp!1870674 () Bool)

(assert (=> b!6835471 (= e!4123001 (and tp!1870677 tp!1870674))))

(declare-fun b!6835472 () Bool)

(declare-fun res!2791344 () Bool)

(assert (=> b!6835472 (=> res!2791344 e!4123009)))

(declare-fun lt!2454327 () Regex!16649)

(assert (=> b!6835472 (= res!2791344 (or (not (= lt!2454327 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6835473 () Bool)

(declare-fun e!4123003 () Bool)

(assert (=> b!6835473 (= e!4123008 e!4123003)))

(declare-fun res!2791331 () Bool)

(assert (=> b!6835473 (=> res!2791331 e!4123003)))

(declare-fun lt!2454315 () (InoxSet Context!12066))

(assert (=> b!6835473 (= res!2791331 (not (= lt!2454315 (derivationStepZipper!2593 lt!2454300 (h!72572 s!2326)))))))

(declare-fun lambda!386417 () Int)

(declare-fun flatMap!2130 ((InoxSet Context!12066) Int) (InoxSet Context!12066))

(declare-fun derivationStepZipperUp!1803 (Context!12066 C!33568) (InoxSet Context!12066))

(assert (=> b!6835473 (= (flatMap!2130 lt!2454300 lambda!386417) (derivationStepZipperUp!1803 lt!2454303 (h!72572 s!2326)))))

(declare-fun lt!2454334 () Unit!159989)

(declare-fun lemmaFlatMapOnSingletonSet!1656 ((InoxSet Context!12066) Context!12066 Int) Unit!159989)

(assert (=> b!6835473 (= lt!2454334 (lemmaFlatMapOnSingletonSet!1656 lt!2454300 lt!2454303 lambda!386417))))

(assert (=> b!6835473 (= (flatMap!2130 lt!2454335 lambda!386417) (derivationStepZipperUp!1803 lt!2454305 (h!72572 s!2326)))))

(declare-fun lt!2454330 () Unit!159989)

(assert (=> b!6835473 (= lt!2454330 (lemmaFlatMapOnSingletonSet!1656 lt!2454335 lt!2454305 lambda!386417))))

(declare-fun lt!2454332 () (InoxSet Context!12066))

(assert (=> b!6835473 (= lt!2454332 (derivationStepZipperUp!1803 lt!2454303 (h!72572 s!2326)))))

(declare-fun lt!2454313 () (InoxSet Context!12066))

(assert (=> b!6835473 (= lt!2454313 (derivationStepZipperUp!1803 lt!2454305 (h!72572 s!2326)))))

(assert (=> b!6835473 (= lt!2454300 (store ((as const (Array Context!12066 Bool)) false) lt!2454303 true))))

(assert (=> b!6835473 (= lt!2454335 (store ((as const (Array Context!12066 Bool)) false) lt!2454305 true))))

(assert (=> b!6835473 (= lt!2454305 (Context!12067 lt!2454304))))

(assert (=> b!6835473 (= lt!2454304 (Cons!66122 (reg!16978 r!7292) Nil!66122))))

(declare-fun tp!1870681 () Bool)

(declare-fun setNonEmpty!46945 () Bool)

(declare-fun setElem!46945 () Context!12066)

(declare-fun e!4123004 () Bool)

(declare-fun inv!84869 (Context!12066) Bool)

(assert (=> setNonEmpty!46945 (= setRes!46945 (and tp!1870681 (inv!84869 setElem!46945) e!4123004))))

(declare-fun setRest!46945 () (InoxSet Context!12066))

(assert (=> setNonEmpty!46945 (= z!1189 ((_ map or) (store ((as const (Array Context!12066 Bool)) false) setElem!46945 true) setRest!46945))))

(declare-fun b!6835474 () Bool)

(declare-fun e!4123016 () Bool)

(assert (=> b!6835474 (= e!4123016 e!4123010)))

(declare-fun res!2791339 () Bool)

(assert (=> b!6835474 (=> res!2791339 e!4123010)))

(declare-fun lt!2454316 () List!66247)

(assert (=> b!6835474 (= res!2791339 (not (= (unfocusZipper!2391 lt!2454316) r!7292)))))

(assert (=> b!6835474 (= lt!2454316 (Cons!66123 lt!2454303 Nil!66123))))

(declare-fun setIsEmpty!46945 () Bool)

(assert (=> setIsEmpty!46945 setRes!46945))

(declare-fun b!6835475 () Bool)

(assert (=> b!6835475 (= e!4123007 e!4123005)))

(declare-fun res!2791340 () Bool)

(assert (=> b!6835475 (=> (not res!2791340) (not e!4123005))))

(assert (=> b!6835475 (= res!2791340 (= r!7292 lt!2454327))))

(assert (=> b!6835475 (= lt!2454327 (unfocusZipper!2391 zl!343))))

(declare-fun b!6835476 () Bool)

(declare-fun e!4123006 () Bool)

(declare-fun lt!2454317 () Bool)

(assert (=> b!6835476 (= e!4123006 lt!2454317)))

(declare-fun b!6835477 () Bool)

(assert (=> b!6835477 (= e!4123003 e!4123016)))

(declare-fun res!2791324 () Bool)

(assert (=> b!6835477 (=> res!2791324 e!4123016)))

(declare-fun lt!2454329 () List!66247)

(assert (=> b!6835477 (= res!2791324 (not (= (unfocusZipper!2391 lt!2454329) (reg!16978 r!7292))))))

(assert (=> b!6835477 (= lt!2454329 (Cons!66123 lt!2454305 Nil!66123))))

(declare-fun b!6835478 () Bool)

(declare-fun e!4122998 () Bool)

(assert (=> b!6835478 (= e!4122998 e!4123009)))

(declare-fun res!2791326 () Bool)

(assert (=> b!6835478 (=> res!2791326 e!4123009)))

(declare-fun derivationStepZipperDown!1877 (Regex!16649 Context!12066 C!33568) (InoxSet Context!12066))

(assert (=> b!6835478 (= res!2791326 (not (= lt!2454315 (derivationStepZipperDown!1877 (reg!16978 r!7292) lt!2454303 (h!72572 s!2326)))))))

(assert (=> b!6835478 (= lt!2454303 (Context!12067 lt!2454306))))

(assert (=> b!6835478 (= (flatMap!2130 lt!2454318 lambda!386417) (derivationStepZipperUp!1803 lt!2454307 (h!72572 s!2326)))))

(declare-fun lt!2454302 () Unit!159989)

(assert (=> b!6835478 (= lt!2454302 (lemmaFlatMapOnSingletonSet!1656 lt!2454318 lt!2454307 lambda!386417))))

(declare-fun lt!2454333 () (InoxSet Context!12066))

(assert (=> b!6835478 (= lt!2454333 (derivationStepZipperUp!1803 lt!2454307 (h!72572 s!2326)))))

(assert (=> b!6835478 (= lt!2454318 (store ((as const (Array Context!12066 Bool)) false) lt!2454307 true))))

(assert (=> b!6835478 (= lt!2454307 (Context!12067 (Cons!66122 (reg!16978 r!7292) lt!2454306)))))

(assert (=> b!6835478 (= lt!2454306 (Cons!66122 r!7292 Nil!66122))))

(declare-fun b!6835479 () Bool)

(declare-fun e!4123012 () Bool)

(assert (=> b!6835479 (= e!4123000 e!4123012)))

(declare-fun res!2791325 () Bool)

(assert (=> b!6835479 (=> res!2791325 e!4123012)))

(declare-fun lt!2454326 () (InoxSet Context!12066))

(declare-fun lt!2454310 () (InoxSet Context!12066))

(assert (=> b!6835479 (= res!2791325 (not (= lt!2454326 lt!2454310)))))

(assert (=> b!6835479 (= lt!2454310 (derivationStepZipperDown!1877 r!7292 (Context!12067 Nil!66122) (h!72572 s!2326)))))

(assert (=> b!6835479 (= lt!2454326 (derivationStepZipperUp!1803 (Context!12067 (Cons!66122 r!7292 Nil!66122)) (h!72572 s!2326)))))

(assert (=> b!6835479 (= lt!2454315 (derivationStepZipper!2593 z!1189 (h!72572 s!2326)))))

(declare-fun b!6835480 () Bool)

(declare-fun tp!1870679 () Bool)

(assert (=> b!6835480 (= e!4123001 tp!1870679)))

(declare-fun tp!1870683 () Bool)

(declare-fun b!6835481 () Bool)

(assert (=> b!6835481 (= e!4123018 (and (inv!84869 (h!72571 zl!343)) e!4123011 tp!1870683))))

(declare-fun b!6835482 () Bool)

(declare-fun tp!1870675 () Bool)

(assert (=> b!6835482 (= e!4123013 (and tp_is_empty!42551 tp!1870675))))

(declare-fun b!6835483 () Bool)

(declare-fun tp!1870682 () Bool)

(assert (=> b!6835483 (= e!4123004 tp!1870682)))

(assert (=> b!6835484 (= e!4123012 e!4122998)))

(declare-fun res!2791349 () Bool)

(assert (=> b!6835484 (=> res!2791349 e!4122998)))

(assert (=> b!6835484 (= res!2791349 (not (= lt!2454315 lt!2454310)))))

(assert (=> b!6835484 (= (flatMap!2130 z!1189 lambda!386417) (derivationStepZipperUp!1803 (h!72571 zl!343) (h!72572 s!2326)))))

(declare-fun lt!2454322 () Unit!159989)

(assert (=> b!6835484 (= lt!2454322 (lemmaFlatMapOnSingletonSet!1656 z!1189 (h!72571 zl!343) lambda!386417))))

(declare-fun b!6835485 () Bool)

(assert (=> b!6835485 (= e!4123002 true)))

(assert (=> b!6835485 e!4122999))

(declare-fun res!2791328 () Bool)

(assert (=> b!6835485 (=> (not res!2791328) (not e!4122999))))

(assert (=> b!6835485 (= res!2791328 (matchR!8832 lt!2454323 lt!2454299))))

(declare-fun lt!2454311 () Unit!159989)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!388 (Regex!16649 Regex!16649 List!66248 List!66248) Unit!159989)

(assert (=> b!6835485 (= lt!2454311 (lemmaTwoRegexMatchThenConcatMatchesConcatString!388 (reg!16978 r!7292) r!7292 (_1!36927 lt!2454308) (_2!36927 lt!2454308)))))

(assert (=> b!6835485 (matchR!8832 r!7292 (_2!36927 lt!2454308))))

(declare-fun lt!2454312 () Unit!159989)

(declare-fun theoremZipperRegexEquiv!951 ((InoxSet Context!12066) List!66247 Regex!16649 List!66248) Unit!159989)

(assert (=> b!6835485 (= lt!2454312 (theoremZipperRegexEquiv!951 lt!2454300 lt!2454316 r!7292 (_2!36927 lt!2454308)))))

(assert (=> b!6835485 (matchR!8832 (reg!16978 r!7292) (_1!36927 lt!2454308))))

(declare-fun lt!2454337 () Unit!159989)

(assert (=> b!6835485 (= lt!2454337 (theoremZipperRegexEquiv!951 lt!2454335 lt!2454329 (reg!16978 r!7292) (_1!36927 lt!2454308)))))

(assert (=> b!6835485 (matchZipper!2635 (store ((as const (Array Context!12066 Bool)) false) (Context!12067 (++!14844 lt!2454304 lt!2454306)) true) lt!2454299)))

(declare-fun lt!2454298 () Unit!159989)

(assert (=> b!6835485 (= lt!2454298 (lemmaConcatPreservesForall!478 lt!2454304 lt!2454306 lambda!386419))))

(declare-fun lt!2454338 () Unit!159989)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!272 (Context!12066 Context!12066 List!66248 List!66248) Unit!159989)

(assert (=> b!6835485 (= lt!2454338 (lemmaConcatenateContextMatchesConcatOfStrings!272 lt!2454305 lt!2454303 (_1!36927 lt!2454308) (_2!36927 lt!2454308)))))

(declare-fun b!6835486 () Bool)

(declare-fun res!2791347 () Bool)

(assert (=> b!6835486 (=> res!2791347 e!4123015)))

(assert (=> b!6835486 (= res!2791347 (not ((_ is Cons!66122) (exprs!6533 (h!72571 zl!343)))))))

(declare-fun b!6835487 () Bool)

(declare-fun tp!1870680 () Bool)

(declare-fun tp!1870676 () Bool)

(assert (=> b!6835487 (= e!4123001 (and tp!1870680 tp!1870676))))

(declare-fun b!6835488 () Bool)

(declare-fun res!2791343 () Bool)

(assert (=> b!6835488 (=> res!2791343 e!4123002)))

(assert (=> b!6835488 (= res!2791343 (not (matchZipper!2635 lt!2454300 (_2!36927 lt!2454308))))))

(assert (=> b!6835489 (= e!4123015 e!4123000)))

(declare-fun res!2791337 () Bool)

(assert (=> b!6835489 (=> res!2791337 e!4123000)))

(assert (=> b!6835489 (= res!2791337 (not (= lt!2454325 e!4123006)))))

(declare-fun res!2791330 () Bool)

(assert (=> b!6835489 (=> res!2791330 e!4123006)))

(declare-fun isEmpty!38514 (List!66248) Bool)

(assert (=> b!6835489 (= res!2791330 (isEmpty!38514 s!2326))))

(declare-fun Exists!3717 (Int) Bool)

(assert (=> b!6835489 (= (Exists!3717 lambda!386414) (Exists!3717 lambda!386416))))

(declare-fun lt!2454331 () Unit!159989)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2244 (Regex!16649 Regex!16649 List!66248) Unit!159989)

(assert (=> b!6835489 (= lt!2454331 (lemmaExistCutMatchRandMatchRSpecEquivalent!2244 (reg!16978 r!7292) r!7292 s!2326))))

(assert (=> b!6835489 (= (Exists!3717 lambda!386414) (Exists!3717 lambda!386415))))

(declare-fun lt!2454314 () Unit!159989)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!808 (Regex!16649 List!66248) Unit!159989)

(assert (=> b!6835489 (= lt!2454314 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!808 (reg!16978 r!7292) s!2326))))

(assert (=> b!6835489 (= lt!2454317 (Exists!3717 lambda!386414))))

(declare-fun findConcatSeparation!2950 (Regex!16649 Regex!16649 List!66248 List!66248 List!66248) Option!16536)

(assert (=> b!6835489 (= lt!2454317 (isDefined!13239 (findConcatSeparation!2950 (reg!16978 r!7292) r!7292 Nil!66124 s!2326 s!2326)))))

(declare-fun lt!2454321 () Unit!159989)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2714 (Regex!16649 Regex!16649 List!66248) Unit!159989)

(assert (=> b!6835489 (= lt!2454321 (lemmaFindConcatSeparationEquivalentToExists!2714 (reg!16978 r!7292) r!7292 s!2326))))

(declare-fun b!6835490 () Bool)

(declare-fun res!2791327 () Bool)

(assert (=> b!6835490 (=> res!2791327 e!4123015)))

(assert (=> b!6835490 (= res!2791327 (or ((_ is EmptyExpr!16649) r!7292) ((_ is EmptyLang!16649) r!7292) ((_ is ElementMatch!16649) r!7292) ((_ is Union!16649) r!7292) ((_ is Concat!25494) r!7292)))))

(declare-fun b!6835491 () Bool)

(declare-fun res!2791342 () Bool)

(assert (=> b!6835491 (=> res!2791342 e!4123002)))

(assert (=> b!6835491 (= res!2791342 (not (matchZipper!2635 lt!2454335 (_1!36927 lt!2454308))))))

(assert (= (and start!660624 res!2791329) b!6835466))

(assert (= (and b!6835466 res!2791348) b!6835475))

(assert (= (and b!6835475 res!2791340) b!6835457))

(assert (= (and b!6835457 (not res!2791332)) b!6835459))

(assert (= (and b!6835459 (not res!2791323)) b!6835464))

(assert (= (and b!6835464 (not res!2791335)) b!6835486))

(assert (= (and b!6835486 (not res!2791347)) b!6835465))

(assert (= (and b!6835465 (not res!2791334)) b!6835490))

(assert (= (and b!6835490 (not res!2791327)) b!6835489))

(assert (= (and b!6835489 (not res!2791330)) b!6835476))

(assert (= (and b!6835489 (not res!2791337)) b!6835470))

(assert (= (and b!6835470 (not res!2791341)) b!6835479))

(assert (= (and b!6835479 (not res!2791325)) b!6835484))

(assert (= (and b!6835484 (not res!2791349)) b!6835478))

(assert (= (and b!6835478 (not res!2791326)) b!6835463))

(assert (= (and b!6835463 (not res!2791336)) b!6835472))

(assert (= (and b!6835472 (not res!2791344)) b!6835458))

(assert (= (and b!6835458 (not res!2791338)) b!6835473))

(assert (= (and b!6835473 (not res!2791331)) b!6835477))

(assert (= (and b!6835477 (not res!2791324)) b!6835474))

(assert (= (and b!6835474 (not res!2791339)) b!6835468))

(assert (= (and b!6835468 (not res!2791333)) b!6835462))

(assert (= (and b!6835462 (not res!2791350)) b!6835460))

(assert (= (and b!6835460 (not res!2791345)) b!6835456))

(assert (= (and b!6835456 (not res!2791346)) b!6835491))

(assert (= (and b!6835491 (not res!2791342)) b!6835488))

(assert (= (and b!6835488 (not res!2791343)) b!6835485))

(assert (= (and b!6835485 res!2791328) b!6835467))

(assert (= (and start!660624 ((_ is ElementMatch!16649) r!7292)) b!6835469))

(assert (= (and start!660624 ((_ is Concat!25494) r!7292)) b!6835487))

(assert (= (and start!660624 ((_ is Star!16649) r!7292)) b!6835480))

(assert (= (and start!660624 ((_ is Union!16649) r!7292)) b!6835471))

(assert (= (and start!660624 condSetEmpty!46945) setIsEmpty!46945))

(assert (= (and start!660624 (not condSetEmpty!46945)) setNonEmpty!46945))

(assert (= setNonEmpty!46945 b!6835483))

(assert (= b!6835481 b!6835461))

(assert (= (and start!660624 ((_ is Cons!66123) zl!343)) b!6835481))

(assert (= (and start!660624 ((_ is Cons!66124) s!2326)) b!6835482))

(declare-fun m!7580820 () Bool)

(assert (=> b!6835489 m!7580820))

(assert (=> b!6835489 m!7580820))

(declare-fun m!7580822 () Bool)

(assert (=> b!6835489 m!7580822))

(declare-fun m!7580824 () Bool)

(assert (=> b!6835489 m!7580824))

(declare-fun m!7580826 () Bool)

(assert (=> b!6835489 m!7580826))

(declare-fun m!7580828 () Bool)

(assert (=> b!6835489 m!7580828))

(declare-fun m!7580830 () Bool)

(assert (=> b!6835489 m!7580830))

(assert (=> b!6835489 m!7580826))

(declare-fun m!7580832 () Bool)

(assert (=> b!6835489 m!7580832))

(declare-fun m!7580834 () Bool)

(assert (=> b!6835489 m!7580834))

(declare-fun m!7580836 () Bool)

(assert (=> b!6835489 m!7580836))

(assert (=> b!6835489 m!7580820))

(declare-fun m!7580838 () Bool)

(assert (=> setNonEmpty!46945 m!7580838))

(declare-fun m!7580840 () Bool)

(assert (=> b!6835475 m!7580840))

(declare-fun m!7580842 () Bool)

(assert (=> b!6835465 m!7580842))

(assert (=> b!6835465 m!7580842))

(declare-fun m!7580844 () Bool)

(assert (=> b!6835465 m!7580844))

(declare-fun m!7580846 () Bool)

(assert (=> b!6835456 m!7580846))

(declare-fun m!7580848 () Bool)

(assert (=> b!6835456 m!7580848))

(declare-fun m!7580850 () Bool)

(assert (=> b!6835456 m!7580850))

(declare-fun m!7580852 () Bool)

(assert (=> b!6835456 m!7580852))

(declare-fun m!7580854 () Bool)

(assert (=> b!6835456 m!7580854))

(declare-fun m!7580856 () Bool)

(assert (=> b!6835484 m!7580856))

(declare-fun m!7580858 () Bool)

(assert (=> b!6835484 m!7580858))

(declare-fun m!7580860 () Bool)

(assert (=> b!6835484 m!7580860))

(declare-fun m!7580862 () Bool)

(assert (=> b!6835473 m!7580862))

(declare-fun m!7580864 () Bool)

(assert (=> b!6835473 m!7580864))

(declare-fun m!7580866 () Bool)

(assert (=> b!6835473 m!7580866))

(declare-fun m!7580868 () Bool)

(assert (=> b!6835473 m!7580868))

(declare-fun m!7580870 () Bool)

(assert (=> b!6835473 m!7580870))

(declare-fun m!7580872 () Bool)

(assert (=> b!6835473 m!7580872))

(declare-fun m!7580874 () Bool)

(assert (=> b!6835473 m!7580874))

(declare-fun m!7580876 () Bool)

(assert (=> b!6835473 m!7580876))

(declare-fun m!7580878 () Bool)

(assert (=> b!6835473 m!7580878))

(declare-fun m!7580880 () Bool)

(assert (=> b!6835477 m!7580880))

(declare-fun m!7580882 () Bool)

(assert (=> start!660624 m!7580882))

(declare-fun m!7580884 () Bool)

(assert (=> b!6835464 m!7580884))

(declare-fun m!7580886 () Bool)

(assert (=> b!6835466 m!7580886))

(declare-fun m!7580888 () Bool)

(assert (=> b!6835479 m!7580888))

(declare-fun m!7580890 () Bool)

(assert (=> b!6835479 m!7580890))

(declare-fun m!7580892 () Bool)

(assert (=> b!6835479 m!7580892))

(declare-fun m!7580894 () Bool)

(assert (=> b!6835478 m!7580894))

(declare-fun m!7580896 () Bool)

(assert (=> b!6835478 m!7580896))

(declare-fun m!7580898 () Bool)

(assert (=> b!6835478 m!7580898))

(declare-fun m!7580900 () Bool)

(assert (=> b!6835478 m!7580900))

(declare-fun m!7580902 () Bool)

(assert (=> b!6835478 m!7580902))

(declare-fun m!7580904 () Bool)

(assert (=> b!6835460 m!7580904))

(declare-fun m!7580906 () Bool)

(assert (=> b!6835460 m!7580906))

(declare-fun m!7580908 () Bool)

(assert (=> b!6835460 m!7580908))

(declare-fun m!7580910 () Bool)

(assert (=> b!6835460 m!7580910))

(declare-fun m!7580912 () Bool)

(assert (=> b!6835460 m!7580912))

(declare-fun m!7580914 () Bool)

(assert (=> b!6835460 m!7580914))

(declare-fun m!7580916 () Bool)

(assert (=> b!6835459 m!7580916))

(declare-fun m!7580918 () Bool)

(assert (=> b!6835474 m!7580918))

(declare-fun m!7580920 () Bool)

(assert (=> b!6835481 m!7580920))

(declare-fun m!7580922 () Bool)

(assert (=> b!6835488 m!7580922))

(assert (=> b!6835485 m!7580906))

(assert (=> b!6835485 m!7580904))

(declare-fun m!7580924 () Bool)

(assert (=> b!6835485 m!7580924))

(declare-fun m!7580926 () Bool)

(assert (=> b!6835485 m!7580926))

(declare-fun m!7580928 () Bool)

(assert (=> b!6835485 m!7580928))

(declare-fun m!7580930 () Bool)

(assert (=> b!6835485 m!7580930))

(declare-fun m!7580932 () Bool)

(assert (=> b!6835485 m!7580932))

(declare-fun m!7580934 () Bool)

(assert (=> b!6835485 m!7580934))

(assert (=> b!6835485 m!7580914))

(declare-fun m!7580936 () Bool)

(assert (=> b!6835485 m!7580936))

(assert (=> b!6835485 m!7580914))

(declare-fun m!7580938 () Bool)

(assert (=> b!6835485 m!7580938))

(declare-fun m!7580940 () Bool)

(assert (=> b!6835463 m!7580940))

(declare-fun m!7580942 () Bool)

(assert (=> b!6835463 m!7580942))

(assert (=> b!6835463 m!7580942))

(declare-fun m!7580944 () Bool)

(assert (=> b!6835463 m!7580944))

(declare-fun m!7580946 () Bool)

(assert (=> b!6835458 m!7580946))

(declare-fun m!7580948 () Bool)

(assert (=> b!6835491 m!7580948))

(declare-fun m!7580950 () Bool)

(assert (=> b!6835468 m!7580950))

(declare-fun m!7580952 () Bool)

(assert (=> b!6835468 m!7580952))

(declare-fun m!7580954 () Bool)

(assert (=> b!6835468 m!7580954))

(declare-fun m!7580956 () Bool)

(assert (=> b!6835462 m!7580956))

(declare-fun m!7580958 () Bool)

(assert (=> b!6835457 m!7580958))

(declare-fun m!7580960 () Bool)

(assert (=> b!6835457 m!7580960))

(declare-fun m!7580962 () Bool)

(assert (=> b!6835457 m!7580962))

(check-sat (not b!6835477) (not b!6835480) (not b!6835465) (not b!6835483) (not start!660624) (not setNonEmpty!46945) (not b!6835458) (not b!6835488) (not b!6835460) (not b!6835468) (not b!6835479) (not b!6835457) (not b!6835466) (not b!6835474) (not b!6835489) (not b!6835491) (not b!6835487) (not b!6835462) (not b!6835485) (not b!6835475) (not b!6835459) (not b!6835456) (not b!6835484) (not b!6835464) (not b!6835473) (not b!6835461) tp_is_empty!42551 (not b!6835478) (not b!6835482) (not b!6835481) (not b!6835471) (not b!6835463))
(check-sat)
