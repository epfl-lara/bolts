; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!661436 () Bool)

(assert start!661436)

(declare-fun b!6847423 () Bool)

(assert (=> b!6847423 true))

(declare-fun b!6847411 () Bool)

(assert (=> b!6847411 true))

(declare-fun b!6847404 () Bool)

(declare-fun res!2795215 () Bool)

(declare-fun e!4129215 () Bool)

(assert (=> b!6847404 (=> res!2795215 e!4129215)))

(declare-datatypes ((C!33620 0))(
  ( (C!33621 (val!26512 Int)) )
))
(declare-datatypes ((Regex!16675 0))(
  ( (ElementMatch!16675 (c!1274613 C!33620)) (Concat!25520 (regOne!33862 Regex!16675) (regTwo!33862 Regex!16675)) (EmptyExpr!16675) (Star!16675 (reg!17004 Regex!16675)) (EmptyLang!16675) (Union!16675 (regOne!33863 Regex!16675) (regTwo!33863 Regex!16675)) )
))
(declare-datatypes ((List!66324 0))(
  ( (Nil!66200) (Cons!66200 (h!72648 Regex!16675) (t!380067 List!66324)) )
))
(declare-datatypes ((Context!12118 0))(
  ( (Context!12119 (exprs!6559 List!66324)) )
))
(declare-datatypes ((List!66325 0))(
  ( (Nil!66201) (Cons!66201 (h!72649 Context!12118) (t!380068 List!66325)) )
))
(declare-fun zl!343 () List!66325)

(declare-datatypes ((List!66326 0))(
  ( (Nil!66202) (Cons!66202 (h!72650 C!33620) (t!380069 List!66326)) )
))
(declare-fun s!2326 () List!66326)

(get-info :version)

(assert (=> b!6847404 (= res!2795215 (or (not ((_ is Cons!66201) zl!343)) ((_ is Nil!66202) s!2326) (not (= zl!343 (Cons!66201 (h!72649 zl!343) (t!380068 zl!343))))))))

(declare-fun res!2795228 () Bool)

(declare-fun e!4129208 () Bool)

(assert (=> start!661436 (=> (not res!2795228) (not e!4129208))))

(declare-fun r!7292 () Regex!16675)

(declare-fun validRegex!8411 (Regex!16675) Bool)

(assert (=> start!661436 (= res!2795228 (validRegex!8411 r!7292))))

(assert (=> start!661436 e!4129208))

(declare-fun e!4129211 () Bool)

(assert (=> start!661436 e!4129211))

(declare-fun condSetEmpty!47081 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!12118))

(assert (=> start!661436 (= condSetEmpty!47081 (= z!1189 ((as const (Array Context!12118 Bool)) false)))))

(declare-fun setRes!47081 () Bool)

(assert (=> start!661436 setRes!47081))

(declare-fun e!4129216 () Bool)

(assert (=> start!661436 e!4129216))

(declare-fun e!4129218 () Bool)

(assert (=> start!661436 e!4129218))

(declare-fun b!6847405 () Bool)

(declare-fun res!2795219 () Bool)

(assert (=> b!6847405 (=> (not res!2795219) (not e!4129208))))

(declare-fun unfocusZipper!2417 (List!66325) Regex!16675)

(assert (=> b!6847405 (= res!2795219 (= r!7292 (unfocusZipper!2417 zl!343)))))

(declare-fun b!6847406 () Bool)

(declare-fun e!4129210 () Bool)

(declare-fun e!4129207 () Bool)

(assert (=> b!6847406 (= e!4129210 e!4129207)))

(declare-fun res!2795226 () Bool)

(assert (=> b!6847406 (=> res!2795226 e!4129207)))

(declare-fun lt!2455886 () Int)

(declare-fun lt!2455887 () List!66325)

(declare-fun zipperDepthTotal!430 (List!66325) Int)

(assert (=> b!6847406 (= res!2795226 (<= lt!2455886 (zipperDepthTotal!430 lt!2455887)))))

(declare-fun lt!2455879 () Context!12118)

(assert (=> b!6847406 (= lt!2455887 (Cons!66201 lt!2455879 Nil!66201))))

(declare-fun lt!2455881 () Int)

(assert (=> b!6847406 (< lt!2455881 lt!2455886)))

(assert (=> b!6847406 (= lt!2455886 (zipperDepthTotal!430 zl!343))))

(declare-fun contextDepthTotal!402 (Context!12118) Int)

(assert (=> b!6847406 (= lt!2455881 (contextDepthTotal!402 lt!2455879))))

(declare-datatypes ((Unit!160065 0))(
  ( (Unit!160066) )
))
(declare-fun lt!2455880 () Unit!160065)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!34 (List!66325 Context!12118) Unit!160065)

(assert (=> b!6847406 (= lt!2455880 (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!34 zl!343 lt!2455879))))

(declare-fun lambda!387177 () Int)

(declare-fun getWitness!945 (List!66325 Int) Context!12118)

(assert (=> b!6847406 (= lt!2455879 (getWitness!945 zl!343 lambda!387177))))

(declare-fun tp!1876178 () Bool)

(declare-fun setNonEmpty!47081 () Bool)

(declare-fun setElem!47081 () Context!12118)

(declare-fun e!4129212 () Bool)

(declare-fun inv!84934 (Context!12118) Bool)

(assert (=> setNonEmpty!47081 (= setRes!47081 (and tp!1876178 (inv!84934 setElem!47081) e!4129212))))

(declare-fun setRest!47081 () (InoxSet Context!12118))

(assert (=> setNonEmpty!47081 (= z!1189 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) setElem!47081 true) setRest!47081))))

(declare-fun b!6847407 () Bool)

(declare-fun e!4129209 () Bool)

(declare-fun tp!1876173 () Bool)

(assert (=> b!6847407 (= e!4129209 tp!1876173)))

(declare-fun b!6847408 () Bool)

(declare-fun tp!1876172 () Bool)

(assert (=> b!6847408 (= e!4129211 tp!1876172)))

(declare-fun b!6847409 () Bool)

(declare-fun res!2795227 () Bool)

(assert (=> b!6847409 (=> res!2795227 e!4129215)))

(declare-fun isEmpty!38571 (List!66325) Bool)

(assert (=> b!6847409 (= res!2795227 (isEmpty!38571 (t!380068 zl!343)))))

(declare-fun b!6847410 () Bool)

(declare-fun res!2795223 () Bool)

(declare-fun e!4129217 () Bool)

(assert (=> b!6847410 (=> res!2795223 e!4129217)))

(declare-fun lt!2455888 () List!66324)

(declare-fun lambda!387176 () Int)

(declare-fun exists!2776 (List!66324 Int) Bool)

(assert (=> b!6847410 (= res!2795223 (not (exists!2776 lt!2455888 lambda!387176)))))

(declare-fun e!4129213 () Bool)

(assert (=> b!6847411 (= e!4129213 e!4129210)))

(declare-fun res!2795217 () Bool)

(assert (=> b!6847411 (=> res!2795217 e!4129210)))

(declare-fun exists!2777 (List!66325 Int) Bool)

(assert (=> b!6847411 (= res!2795217 (not (exists!2777 zl!343 lambda!387177)))))

(assert (=> b!6847411 (exists!2777 zl!343 lambda!387177)))

(declare-fun lt!2455878 () Unit!160065)

(declare-fun lt!2455885 () Regex!16675)

(declare-fun lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!30 (List!66325 Regex!16675) Unit!160065)

(assert (=> b!6847411 (= lt!2455878 (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!30 zl!343 lt!2455885))))

(declare-fun b!6847412 () Bool)

(declare-fun tp!1876174 () Bool)

(declare-fun tp!1876170 () Bool)

(assert (=> b!6847412 (= e!4129211 (and tp!1876174 tp!1876170))))

(declare-fun b!6847413 () Bool)

(declare-fun tp_is_empty!42603 () Bool)

(declare-fun tp!1876171 () Bool)

(assert (=> b!6847413 (= e!4129218 (and tp_is_empty!42603 tp!1876171))))

(declare-fun b!6847414 () Bool)

(declare-fun res!2795218 () Bool)

(assert (=> b!6847414 (=> res!2795218 e!4129213)))

(assert (=> b!6847414 (= res!2795218 (not (validRegex!8411 lt!2455885)))))

(declare-fun b!6847415 () Bool)

(declare-fun e!4129214 () Bool)

(assert (=> b!6847415 (= e!4129214 (isEmpty!38571 (t!380068 zl!343)))))

(declare-fun b!6847416 () Bool)

(assert (=> b!6847416 (= e!4129217 e!4129213)))

(declare-fun res!2795221 () Bool)

(assert (=> b!6847416 (=> res!2795221 e!4129213)))

(declare-fun contains!20325 (List!66324 Regex!16675) Bool)

(assert (=> b!6847416 (= res!2795221 (not (contains!20325 lt!2455888 lt!2455885)))))

(declare-fun getWitness!946 (List!66324 Int) Regex!16675)

(assert (=> b!6847416 (= lt!2455885 (getWitness!946 lt!2455888 lambda!387176))))

(declare-fun b!6847417 () Bool)

(declare-fun toList!10459 ((InoxSet Context!12118)) List!66325)

(assert (=> b!6847417 (= e!4129207 (= (toList!10459 (store ((as const (Array Context!12118 Bool)) false) lt!2455879 true)) lt!2455887))))

(declare-fun b!6847418 () Bool)

(assert (=> b!6847418 (= e!4129208 (not e!4129215))))

(declare-fun res!2795225 () Bool)

(assert (=> b!6847418 (=> res!2795225 e!4129215)))

(assert (=> b!6847418 (= res!2795225 e!4129214)))

(declare-fun res!2795220 () Bool)

(assert (=> b!6847418 (=> (not res!2795220) (not e!4129214))))

(assert (=> b!6847418 (= res!2795220 ((_ is Cons!66201) zl!343))))

(declare-fun lt!2455882 () Bool)

(declare-fun matchRSpec!3776 (Regex!16675 List!66326) Bool)

(assert (=> b!6847418 (= lt!2455882 (matchRSpec!3776 r!7292 s!2326))))

(declare-fun matchR!8858 (Regex!16675 List!66326) Bool)

(assert (=> b!6847418 (= lt!2455882 (matchR!8858 r!7292 s!2326))))

(declare-fun lt!2455884 () Unit!160065)

(declare-fun mainMatchTheorem!3776 (Regex!16675 List!66326) Unit!160065)

(assert (=> b!6847418 (= lt!2455884 (mainMatchTheorem!3776 r!7292 s!2326))))

(declare-fun b!6847419 () Bool)

(declare-fun res!2795224 () Bool)

(assert (=> b!6847419 (=> res!2795224 e!4129213)))

(assert (=> b!6847419 (= res!2795224 (not (matchR!8858 lt!2455885 s!2326)))))

(declare-fun b!6847420 () Bool)

(assert (=> b!6847420 (= e!4129211 tp_is_empty!42603)))

(declare-fun setIsEmpty!47081 () Bool)

(assert (=> setIsEmpty!47081 setRes!47081))

(declare-fun b!6847421 () Bool)

(declare-fun res!2795222 () Bool)

(assert (=> b!6847421 (=> (not res!2795222) (not e!4129208))))

(assert (=> b!6847421 (= res!2795222 (= (toList!10459 z!1189) zl!343))))

(declare-fun b!6847422 () Bool)

(declare-fun tp!1876179 () Bool)

(assert (=> b!6847422 (= e!4129216 (and (inv!84934 (h!72649 zl!343)) e!4129209 tp!1876179))))

(assert (=> b!6847423 (= e!4129215 e!4129217)))

(declare-fun res!2795216 () Bool)

(assert (=> b!6847423 (=> res!2795216 e!4129217)))

(assert (=> b!6847423 (= res!2795216 (not lt!2455882))))

(assert (=> b!6847423 (= lt!2455882 (exists!2776 lt!2455888 lambda!387176))))

(declare-fun lt!2455883 () Unit!160065)

(declare-fun matchRGenUnionSpec!314 (Regex!16675 List!66324 List!66326) Unit!160065)

(assert (=> b!6847423 (= lt!2455883 (matchRGenUnionSpec!314 r!7292 lt!2455888 s!2326))))

(declare-fun unfocusZipperList!2092 (List!66325) List!66324)

(assert (=> b!6847423 (= lt!2455888 (unfocusZipperList!2092 zl!343))))

(declare-fun b!6847424 () Bool)

(declare-fun tp!1876177 () Bool)

(declare-fun tp!1876176 () Bool)

(assert (=> b!6847424 (= e!4129211 (and tp!1876177 tp!1876176))))

(declare-fun b!6847425 () Bool)

(declare-fun tp!1876175 () Bool)

(assert (=> b!6847425 (= e!4129212 tp!1876175)))

(assert (= (and start!661436 res!2795228) b!6847421))

(assert (= (and b!6847421 res!2795222) b!6847405))

(assert (= (and b!6847405 res!2795219) b!6847418))

(assert (= (and b!6847418 res!2795220) b!6847415))

(assert (= (and b!6847418 (not res!2795225)) b!6847404))

(assert (= (and b!6847404 (not res!2795215)) b!6847409))

(assert (= (and b!6847409 (not res!2795227)) b!6847423))

(assert (= (and b!6847423 (not res!2795216)) b!6847410))

(assert (= (and b!6847410 (not res!2795223)) b!6847416))

(assert (= (and b!6847416 (not res!2795221)) b!6847414))

(assert (= (and b!6847414 (not res!2795218)) b!6847419))

(assert (= (and b!6847419 (not res!2795224)) b!6847411))

(assert (= (and b!6847411 (not res!2795217)) b!6847406))

(assert (= (and b!6847406 (not res!2795226)) b!6847417))

(assert (= (and start!661436 ((_ is ElementMatch!16675) r!7292)) b!6847420))

(assert (= (and start!661436 ((_ is Concat!25520) r!7292)) b!6847424))

(assert (= (and start!661436 ((_ is Star!16675) r!7292)) b!6847408))

(assert (= (and start!661436 ((_ is Union!16675) r!7292)) b!6847412))

(assert (= (and start!661436 condSetEmpty!47081) setIsEmpty!47081))

(assert (= (and start!661436 (not condSetEmpty!47081)) setNonEmpty!47081))

(assert (= setNonEmpty!47081 b!6847425))

(assert (= b!6847422 b!6847407))

(assert (= (and start!661436 ((_ is Cons!66201) zl!343)) b!6847422))

(assert (= (and start!661436 ((_ is Cons!66202) s!2326)) b!6847413))

(declare-fun m!7587202 () Bool)

(assert (=> b!6847417 m!7587202))

(assert (=> b!6847417 m!7587202))

(declare-fun m!7587204 () Bool)

(assert (=> b!6847417 m!7587204))

(declare-fun m!7587206 () Bool)

(assert (=> start!661436 m!7587206))

(declare-fun m!7587208 () Bool)

(assert (=> b!6847406 m!7587208))

(declare-fun m!7587210 () Bool)

(assert (=> b!6847406 m!7587210))

(declare-fun m!7587212 () Bool)

(assert (=> b!6847406 m!7587212))

(declare-fun m!7587214 () Bool)

(assert (=> b!6847406 m!7587214))

(declare-fun m!7587216 () Bool)

(assert (=> b!6847406 m!7587216))

(declare-fun m!7587218 () Bool)

(assert (=> b!6847421 m!7587218))

(declare-fun m!7587220 () Bool)

(assert (=> b!6847422 m!7587220))

(declare-fun m!7587222 () Bool)

(assert (=> b!6847418 m!7587222))

(declare-fun m!7587224 () Bool)

(assert (=> b!6847418 m!7587224))

(declare-fun m!7587226 () Bool)

(assert (=> b!6847418 m!7587226))

(declare-fun m!7587228 () Bool)

(assert (=> b!6847410 m!7587228))

(declare-fun m!7587230 () Bool)

(assert (=> b!6847416 m!7587230))

(declare-fun m!7587232 () Bool)

(assert (=> b!6847416 m!7587232))

(assert (=> b!6847423 m!7587228))

(declare-fun m!7587234 () Bool)

(assert (=> b!6847423 m!7587234))

(declare-fun m!7587236 () Bool)

(assert (=> b!6847423 m!7587236))

(declare-fun m!7587238 () Bool)

(assert (=> b!6847414 m!7587238))

(declare-fun m!7587240 () Bool)

(assert (=> b!6847415 m!7587240))

(assert (=> b!6847409 m!7587240))

(declare-fun m!7587242 () Bool)

(assert (=> b!6847419 m!7587242))

(declare-fun m!7587244 () Bool)

(assert (=> setNonEmpty!47081 m!7587244))

(declare-fun m!7587246 () Bool)

(assert (=> b!6847405 m!7587246))

(declare-fun m!7587248 () Bool)

(assert (=> b!6847411 m!7587248))

(assert (=> b!6847411 m!7587248))

(declare-fun m!7587250 () Bool)

(assert (=> b!6847411 m!7587250))

(check-sat (not b!6847415) (not b!6847412) (not setNonEmpty!47081) (not b!6847413) (not b!6847407) (not b!6847423) (not b!6847408) (not b!6847418) (not b!6847411) (not b!6847410) (not start!661436) (not b!6847421) (not b!6847425) (not b!6847419) (not b!6847405) (not b!6847406) (not b!6847417) (not b!6847416) (not b!6847409) (not b!6847422) (not b!6847414) tp_is_empty!42603 (not b!6847424))
(check-sat)
(get-model)

(declare-fun b!6847559 () Bool)

(assert (=> b!6847559 true))

(assert (=> b!6847559 true))

(declare-fun bs!1830324 () Bool)

(declare-fun b!6847556 () Bool)

(assert (= bs!1830324 (and b!6847556 b!6847559)))

(declare-fun lambda!387200 () Int)

(declare-fun lambda!387199 () Int)

(assert (=> bs!1830324 (not (= lambda!387200 lambda!387199))))

(assert (=> b!6847556 true))

(assert (=> b!6847556 true))

(declare-fun e!4129299 () Bool)

(declare-fun call!623609 () Bool)

(assert (=> b!6847556 (= e!4129299 call!623609)))

(declare-fun b!6847557 () Bool)

(declare-fun e!4129297 () Bool)

(assert (=> b!6847557 (= e!4129297 e!4129299)))

(declare-fun c!1274654 () Bool)

(assert (=> b!6847557 (= c!1274654 ((_ is Star!16675) r!7292))))

(declare-fun bm!623604 () Bool)

(declare-fun Exists!3737 (Int) Bool)

(assert (=> bm!623604 (= call!623609 (Exists!3737 (ite c!1274654 lambda!387199 lambda!387200)))))

(declare-fun b!6847558 () Bool)

(declare-fun res!2795283 () Bool)

(declare-fun e!4129298 () Bool)

(assert (=> b!6847558 (=> res!2795283 e!4129298)))

(declare-fun call!623610 () Bool)

(assert (=> b!6847558 (= res!2795283 call!623610)))

(assert (=> b!6847558 (= e!4129299 e!4129298)))

(declare-fun d!2152323 () Bool)

(declare-fun c!1274655 () Bool)

(assert (=> d!2152323 (= c!1274655 ((_ is EmptyExpr!16675) r!7292))))

(declare-fun e!4129296 () Bool)

(assert (=> d!2152323 (= (matchRSpec!3776 r!7292 s!2326) e!4129296)))

(declare-fun bm!623605 () Bool)

(declare-fun isEmpty!38573 (List!66326) Bool)

(assert (=> bm!623605 (= call!623610 (isEmpty!38573 s!2326))))

(assert (=> b!6847559 (= e!4129298 call!623609)))

(declare-fun b!6847560 () Bool)

(assert (=> b!6847560 (= e!4129296 call!623610)))

(declare-fun b!6847561 () Bool)

(declare-fun e!4129301 () Bool)

(assert (=> b!6847561 (= e!4129301 (matchRSpec!3776 (regTwo!33863 r!7292) s!2326))))

(declare-fun b!6847562 () Bool)

(declare-fun c!1274653 () Bool)

(assert (=> b!6847562 (= c!1274653 ((_ is ElementMatch!16675) r!7292))))

(declare-fun e!4129302 () Bool)

(declare-fun e!4129300 () Bool)

(assert (=> b!6847562 (= e!4129302 e!4129300)))

(declare-fun b!6847563 () Bool)

(declare-fun c!1274656 () Bool)

(assert (=> b!6847563 (= c!1274656 ((_ is Union!16675) r!7292))))

(assert (=> b!6847563 (= e!4129300 e!4129297)))

(declare-fun b!6847564 () Bool)

(assert (=> b!6847564 (= e!4129296 e!4129302)))

(declare-fun res!2795282 () Bool)

(assert (=> b!6847564 (= res!2795282 (not ((_ is EmptyLang!16675) r!7292)))))

(assert (=> b!6847564 (=> (not res!2795282) (not e!4129302))))

(declare-fun b!6847565 () Bool)

(assert (=> b!6847565 (= e!4129297 e!4129301)))

(declare-fun res!2795281 () Bool)

(assert (=> b!6847565 (= res!2795281 (matchRSpec!3776 (regOne!33863 r!7292) s!2326))))

(assert (=> b!6847565 (=> res!2795281 e!4129301)))

(declare-fun b!6847566 () Bool)

(assert (=> b!6847566 (= e!4129300 (= s!2326 (Cons!66202 (c!1274613 r!7292) Nil!66202)))))

(assert (= (and d!2152323 c!1274655) b!6847560))

(assert (= (and d!2152323 (not c!1274655)) b!6847564))

(assert (= (and b!6847564 res!2795282) b!6847562))

(assert (= (and b!6847562 c!1274653) b!6847566))

(assert (= (and b!6847562 (not c!1274653)) b!6847563))

(assert (= (and b!6847563 c!1274656) b!6847565))

(assert (= (and b!6847563 (not c!1274656)) b!6847557))

(assert (= (and b!6847565 (not res!2795281)) b!6847561))

(assert (= (and b!6847557 c!1274654) b!6847558))

(assert (= (and b!6847557 (not c!1274654)) b!6847556))

(assert (= (and b!6847558 (not res!2795283)) b!6847559))

(assert (= (or b!6847559 b!6847556) bm!623604))

(assert (= (or b!6847560 b!6847558) bm!623605))

(declare-fun m!7587308 () Bool)

(assert (=> bm!623604 m!7587308))

(declare-fun m!7587310 () Bool)

(assert (=> bm!623605 m!7587310))

(declare-fun m!7587312 () Bool)

(assert (=> b!6847561 m!7587312))

(declare-fun m!7587314 () Bool)

(assert (=> b!6847565 m!7587314))

(assert (=> b!6847418 d!2152323))

(declare-fun b!6847685 () Bool)

(declare-fun e!4129370 () Bool)

(declare-fun e!4129369 () Bool)

(assert (=> b!6847685 (= e!4129370 e!4129369)))

(declare-fun c!1274683 () Bool)

(assert (=> b!6847685 (= c!1274683 ((_ is EmptyLang!16675) r!7292))))

(declare-fun b!6847686 () Bool)

(declare-fun res!2795344 () Bool)

(declare-fun e!4129368 () Bool)

(assert (=> b!6847686 (=> res!2795344 e!4129368)))

(assert (=> b!6847686 (= res!2795344 (not ((_ is ElementMatch!16675) r!7292)))))

(assert (=> b!6847686 (= e!4129369 e!4129368)))

(declare-fun b!6847687 () Bool)

(declare-fun lt!2455932 () Bool)

(assert (=> b!6847687 (= e!4129369 (not lt!2455932))))

(declare-fun b!6847688 () Bool)

(declare-fun res!2795347 () Bool)

(declare-fun e!4129371 () Bool)

(assert (=> b!6847688 (=> (not res!2795347) (not e!4129371))))

(declare-fun call!623622 () Bool)

(assert (=> b!6847688 (= res!2795347 (not call!623622))))

(declare-fun b!6847689 () Bool)

(declare-fun e!4129372 () Bool)

(declare-fun head!13727 (List!66326) C!33620)

(assert (=> b!6847689 (= e!4129372 (not (= (head!13727 s!2326) (c!1274613 r!7292))))))

(declare-fun b!6847690 () Bool)

(declare-fun res!2795346 () Bool)

(assert (=> b!6847690 (=> (not res!2795346) (not e!4129371))))

(declare-fun tail!12804 (List!66326) List!66326)

(assert (=> b!6847690 (= res!2795346 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6847691 () Bool)

(declare-fun res!2795350 () Bool)

(assert (=> b!6847691 (=> res!2795350 e!4129368)))

(assert (=> b!6847691 (= res!2795350 e!4129371)))

(declare-fun res!2795348 () Bool)

(assert (=> b!6847691 (=> (not res!2795348) (not e!4129371))))

(assert (=> b!6847691 (= res!2795348 lt!2455932)))

(declare-fun b!6847692 () Bool)

(declare-fun e!4129366 () Bool)

(declare-fun nullable!6638 (Regex!16675) Bool)

(assert (=> b!6847692 (= e!4129366 (nullable!6638 r!7292))))

(declare-fun b!6847693 () Bool)

(assert (=> b!6847693 (= e!4129371 (= (head!13727 s!2326) (c!1274613 r!7292)))))

(declare-fun b!6847694 () Bool)

(declare-fun res!2795351 () Bool)

(assert (=> b!6847694 (=> res!2795351 e!4129372)))

(assert (=> b!6847694 (= res!2795351 (not (isEmpty!38573 (tail!12804 s!2326))))))

(declare-fun d!2152351 () Bool)

(assert (=> d!2152351 e!4129370))

(declare-fun c!1274682 () Bool)

(assert (=> d!2152351 (= c!1274682 ((_ is EmptyExpr!16675) r!7292))))

(assert (=> d!2152351 (= lt!2455932 e!4129366)))

(declare-fun c!1274684 () Bool)

(assert (=> d!2152351 (= c!1274684 (isEmpty!38573 s!2326))))

(assert (=> d!2152351 (validRegex!8411 r!7292)))

(assert (=> d!2152351 (= (matchR!8858 r!7292 s!2326) lt!2455932)))

(declare-fun bm!623617 () Bool)

(assert (=> bm!623617 (= call!623622 (isEmpty!38573 s!2326))))

(declare-fun b!6847695 () Bool)

(declare-fun e!4129367 () Bool)

(assert (=> b!6847695 (= e!4129367 e!4129372)))

(declare-fun res!2795345 () Bool)

(assert (=> b!6847695 (=> res!2795345 e!4129372)))

(assert (=> b!6847695 (= res!2795345 call!623622)))

(declare-fun b!6847696 () Bool)

(declare-fun derivativeStep!5321 (Regex!16675 C!33620) Regex!16675)

(assert (=> b!6847696 (= e!4129366 (matchR!8858 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (tail!12804 s!2326)))))

(declare-fun b!6847697 () Bool)

(assert (=> b!6847697 (= e!4129368 e!4129367)))

(declare-fun res!2795349 () Bool)

(assert (=> b!6847697 (=> (not res!2795349) (not e!4129367))))

(assert (=> b!6847697 (= res!2795349 (not lt!2455932))))

(declare-fun b!6847698 () Bool)

(assert (=> b!6847698 (= e!4129370 (= lt!2455932 call!623622))))

(assert (= (and d!2152351 c!1274684) b!6847692))

(assert (= (and d!2152351 (not c!1274684)) b!6847696))

(assert (= (and d!2152351 c!1274682) b!6847698))

(assert (= (and d!2152351 (not c!1274682)) b!6847685))

(assert (= (and b!6847685 c!1274683) b!6847687))

(assert (= (and b!6847685 (not c!1274683)) b!6847686))

(assert (= (and b!6847686 (not res!2795344)) b!6847691))

(assert (= (and b!6847691 res!2795348) b!6847688))

(assert (= (and b!6847688 res!2795347) b!6847690))

(assert (= (and b!6847690 res!2795346) b!6847693))

(assert (= (and b!6847691 (not res!2795350)) b!6847697))

(assert (= (and b!6847697 res!2795349) b!6847695))

(assert (= (and b!6847695 (not res!2795345)) b!6847694))

(assert (= (and b!6847694 (not res!2795351)) b!6847689))

(assert (= (or b!6847698 b!6847688 b!6847695) bm!623617))

(assert (=> bm!623617 m!7587310))

(declare-fun m!7587360 () Bool)

(assert (=> b!6847696 m!7587360))

(assert (=> b!6847696 m!7587360))

(declare-fun m!7587362 () Bool)

(assert (=> b!6847696 m!7587362))

(declare-fun m!7587364 () Bool)

(assert (=> b!6847696 m!7587364))

(assert (=> b!6847696 m!7587362))

(assert (=> b!6847696 m!7587364))

(declare-fun m!7587366 () Bool)

(assert (=> b!6847696 m!7587366))

(declare-fun m!7587368 () Bool)

(assert (=> b!6847692 m!7587368))

(assert (=> b!6847690 m!7587364))

(assert (=> b!6847690 m!7587364))

(declare-fun m!7587370 () Bool)

(assert (=> b!6847690 m!7587370))

(assert (=> b!6847694 m!7587364))

(assert (=> b!6847694 m!7587364))

(assert (=> b!6847694 m!7587370))

(assert (=> d!2152351 m!7587310))

(assert (=> d!2152351 m!7587206))

(assert (=> b!6847693 m!7587360))

(assert (=> b!6847689 m!7587360))

(assert (=> b!6847418 d!2152351))

(declare-fun d!2152365 () Bool)

(assert (=> d!2152365 (= (matchR!8858 r!7292 s!2326) (matchRSpec!3776 r!7292 s!2326))))

(declare-fun lt!2455941 () Unit!160065)

(declare-fun choose!51047 (Regex!16675 List!66326) Unit!160065)

(assert (=> d!2152365 (= lt!2455941 (choose!51047 r!7292 s!2326))))

(assert (=> d!2152365 (validRegex!8411 r!7292)))

(assert (=> d!2152365 (= (mainMatchTheorem!3776 r!7292 s!2326) lt!2455941)))

(declare-fun bs!1830337 () Bool)

(assert (= bs!1830337 d!2152365))

(assert (=> bs!1830337 m!7587224))

(assert (=> bs!1830337 m!7587222))

(declare-fun m!7587384 () Bool)

(assert (=> bs!1830337 m!7587384))

(assert (=> bs!1830337 m!7587206))

(assert (=> b!6847418 d!2152365))

(declare-fun d!2152371 () Bool)

(declare-fun e!4129406 () Bool)

(assert (=> d!2152371 e!4129406))

(declare-fun res!2795369 () Bool)

(assert (=> d!2152371 (=> (not res!2795369) (not e!4129406))))

(declare-fun lt!2455945 () List!66325)

(declare-fun noDuplicate!2441 (List!66325) Bool)

(assert (=> d!2152371 (= res!2795369 (noDuplicate!2441 lt!2455945))))

(declare-fun choose!51048 ((InoxSet Context!12118)) List!66325)

(assert (=> d!2152371 (= lt!2455945 (choose!51048 (store ((as const (Array Context!12118 Bool)) false) lt!2455879 true)))))

(assert (=> d!2152371 (= (toList!10459 (store ((as const (Array Context!12118 Bool)) false) lt!2455879 true)) lt!2455945)))

(declare-fun b!6847761 () Bool)

(declare-fun content!12981 (List!66325) (InoxSet Context!12118))

(assert (=> b!6847761 (= e!4129406 (= (content!12981 lt!2455945) (store ((as const (Array Context!12118 Bool)) false) lt!2455879 true)))))

(assert (= (and d!2152371 res!2795369) b!6847761))

(declare-fun m!7587400 () Bool)

(assert (=> d!2152371 m!7587400))

(assert (=> d!2152371 m!7587202))

(declare-fun m!7587402 () Bool)

(assert (=> d!2152371 m!7587402))

(declare-fun m!7587404 () Bool)

(assert (=> b!6847761 m!7587404))

(assert (=> b!6847417 d!2152371))

(declare-fun bs!1830342 () Bool)

(declare-fun d!2152375 () Bool)

(assert (= bs!1830342 (and d!2152375 b!6847423)))

(declare-fun lambda!387214 () Int)

(assert (=> bs!1830342 (not (= lambda!387214 lambda!387176))))

(declare-fun forall!15853 (List!66324 Int) Bool)

(assert (=> d!2152375 (= (inv!84934 setElem!47081) (forall!15853 (exprs!6559 setElem!47081) lambda!387214))))

(declare-fun bs!1830343 () Bool)

(assert (= bs!1830343 d!2152375))

(declare-fun m!7587418 () Bool)

(assert (=> bs!1830343 m!7587418))

(assert (=> setNonEmpty!47081 d!2152375))

(declare-fun d!2152385 () Bool)

(declare-fun lt!2455948 () Bool)

(declare-fun content!12982 (List!66324) (InoxSet Regex!16675))

(assert (=> d!2152385 (= lt!2455948 (select (content!12982 lt!2455888) lt!2455885))))

(declare-fun e!4129425 () Bool)

(assert (=> d!2152385 (= lt!2455948 e!4129425)))

(declare-fun res!2795376 () Bool)

(assert (=> d!2152385 (=> (not res!2795376) (not e!4129425))))

(assert (=> d!2152385 (= res!2795376 ((_ is Cons!66200) lt!2455888))))

(assert (=> d!2152385 (= (contains!20325 lt!2455888 lt!2455885) lt!2455948)))

(declare-fun b!6847793 () Bool)

(declare-fun e!4129424 () Bool)

(assert (=> b!6847793 (= e!4129425 e!4129424)))

(declare-fun res!2795377 () Bool)

(assert (=> b!6847793 (=> res!2795377 e!4129424)))

(assert (=> b!6847793 (= res!2795377 (= (h!72648 lt!2455888) lt!2455885))))

(declare-fun b!6847794 () Bool)

(assert (=> b!6847794 (= e!4129424 (contains!20325 (t!380067 lt!2455888) lt!2455885))))

(assert (= (and d!2152385 res!2795376) b!6847793))

(assert (= (and b!6847793 (not res!2795377)) b!6847794))

(declare-fun m!7587420 () Bool)

(assert (=> d!2152385 m!7587420))

(declare-fun m!7587422 () Bool)

(assert (=> d!2152385 m!7587422))

(declare-fun m!7587424 () Bool)

(assert (=> b!6847794 m!7587424))

(assert (=> b!6847416 d!2152385))

(declare-fun b!6847807 () Bool)

(declare-fun lt!2455954 () Unit!160065)

(declare-fun Unit!160069 () Unit!160065)

(assert (=> b!6847807 (= lt!2455954 Unit!160069)))

(assert (=> b!6847807 false))

(declare-fun e!4129435 () Regex!16675)

(declare-fun head!13728 (List!66324) Regex!16675)

(assert (=> b!6847807 (= e!4129435 (head!13728 lt!2455888))))

(declare-fun b!6847808 () Bool)

(declare-fun e!4129437 () Bool)

(declare-fun lt!2455953 () Regex!16675)

(assert (=> b!6847808 (= e!4129437 (contains!20325 lt!2455888 lt!2455953))))

(declare-fun b!6847809 () Bool)

(declare-fun e!4129436 () Bool)

(declare-fun dynLambda!26455 (Int Regex!16675) Bool)

(assert (=> b!6847809 (= e!4129436 (dynLambda!26455 lambda!387176 (h!72648 lt!2455888)))))

(declare-fun d!2152387 () Bool)

(assert (=> d!2152387 e!4129437))

(declare-fun res!2795383 () Bool)

(assert (=> d!2152387 (=> (not res!2795383) (not e!4129437))))

(assert (=> d!2152387 (= res!2795383 (dynLambda!26455 lambda!387176 lt!2455953))))

(declare-fun e!4129434 () Regex!16675)

(assert (=> d!2152387 (= lt!2455953 e!4129434)))

(declare-fun c!1274698 () Bool)

(assert (=> d!2152387 (= c!1274698 e!4129436)))

(declare-fun res!2795382 () Bool)

(assert (=> d!2152387 (=> (not res!2795382) (not e!4129436))))

(assert (=> d!2152387 (= res!2795382 ((_ is Cons!66200) lt!2455888))))

(assert (=> d!2152387 (exists!2776 lt!2455888 lambda!387176)))

(assert (=> d!2152387 (= (getWitness!946 lt!2455888 lambda!387176) lt!2455953)))

(declare-fun b!6847810 () Bool)

(assert (=> b!6847810 (= e!4129434 e!4129435)))

(declare-fun c!1274697 () Bool)

(assert (=> b!6847810 (= c!1274697 ((_ is Cons!66200) lt!2455888))))

(declare-fun b!6847811 () Bool)

(assert (=> b!6847811 (= e!4129434 (h!72648 lt!2455888))))

(declare-fun b!6847812 () Bool)

(assert (=> b!6847812 (= e!4129435 (getWitness!946 (t!380067 lt!2455888) lambda!387176))))

(assert (= (and d!2152387 res!2795382) b!6847809))

(assert (= (and d!2152387 c!1274698) b!6847811))

(assert (= (and d!2152387 (not c!1274698)) b!6847810))

(assert (= (and b!6847810 c!1274697) b!6847812))

(assert (= (and b!6847810 (not c!1274697)) b!6847807))

(assert (= (and d!2152387 res!2795383) b!6847808))

(declare-fun b_lambda!258379 () Bool)

(assert (=> (not b_lambda!258379) (not b!6847809)))

(declare-fun b_lambda!258381 () Bool)

(assert (=> (not b_lambda!258381) (not d!2152387)))

(declare-fun m!7587426 () Bool)

(assert (=> b!6847809 m!7587426))

(declare-fun m!7587428 () Bool)

(assert (=> b!6847808 m!7587428))

(declare-fun m!7587430 () Bool)

(assert (=> b!6847812 m!7587430))

(declare-fun m!7587432 () Bool)

(assert (=> b!6847807 m!7587432))

(declare-fun m!7587434 () Bool)

(assert (=> d!2152387 m!7587434))

(assert (=> d!2152387 m!7587228))

(assert (=> b!6847416 d!2152387))

(declare-fun b!6847825 () Bool)

(declare-fun e!4129448 () Context!12118)

(assert (=> b!6847825 (= e!4129448 (getWitness!945 (t!380068 zl!343) lambda!387177))))

(declare-fun b!6847826 () Bool)

(declare-fun e!4129447 () Context!12118)

(assert (=> b!6847826 (= e!4129447 e!4129448)))

(declare-fun c!1274703 () Bool)

(assert (=> b!6847826 (= c!1274703 ((_ is Cons!66201) zl!343))))

(declare-fun b!6847827 () Bool)

(assert (=> b!6847827 (= e!4129447 (h!72649 zl!343))))

(declare-fun b!6847828 () Bool)

(declare-fun e!4129446 () Bool)

(declare-fun lt!2455960 () Context!12118)

(declare-fun contains!20327 (List!66325 Context!12118) Bool)

(assert (=> b!6847828 (= e!4129446 (contains!20327 zl!343 lt!2455960))))

(declare-fun b!6847829 () Bool)

(declare-fun lt!2455959 () Unit!160065)

(declare-fun Unit!160070 () Unit!160065)

(assert (=> b!6847829 (= lt!2455959 Unit!160070)))

(assert (=> b!6847829 false))

(declare-fun head!13729 (List!66325) Context!12118)

(assert (=> b!6847829 (= e!4129448 (head!13729 zl!343))))

(declare-fun d!2152389 () Bool)

(assert (=> d!2152389 e!4129446))

(declare-fun res!2795388 () Bool)

(assert (=> d!2152389 (=> (not res!2795388) (not e!4129446))))

(declare-fun dynLambda!26456 (Int Context!12118) Bool)

(assert (=> d!2152389 (= res!2795388 (dynLambda!26456 lambda!387177 lt!2455960))))

(assert (=> d!2152389 (= lt!2455960 e!4129447)))

(declare-fun c!1274704 () Bool)

(declare-fun e!4129449 () Bool)

(assert (=> d!2152389 (= c!1274704 e!4129449)))

(declare-fun res!2795389 () Bool)

(assert (=> d!2152389 (=> (not res!2795389) (not e!4129449))))

(assert (=> d!2152389 (= res!2795389 ((_ is Cons!66201) zl!343))))

(assert (=> d!2152389 (exists!2777 zl!343 lambda!387177)))

(assert (=> d!2152389 (= (getWitness!945 zl!343 lambda!387177) lt!2455960)))

(declare-fun b!6847830 () Bool)

(assert (=> b!6847830 (= e!4129449 (dynLambda!26456 lambda!387177 (h!72649 zl!343)))))

(assert (= (and d!2152389 res!2795389) b!6847830))

(assert (= (and d!2152389 c!1274704) b!6847827))

(assert (= (and d!2152389 (not c!1274704)) b!6847826))

(assert (= (and b!6847826 c!1274703) b!6847825))

(assert (= (and b!6847826 (not c!1274703)) b!6847829))

(assert (= (and d!2152389 res!2795388) b!6847828))

(declare-fun b_lambda!258383 () Bool)

(assert (=> (not b_lambda!258383) (not d!2152389)))

(declare-fun b_lambda!258385 () Bool)

(assert (=> (not b_lambda!258385) (not b!6847830)))

(declare-fun m!7587436 () Bool)

(assert (=> d!2152389 m!7587436))

(assert (=> d!2152389 m!7587248))

(declare-fun m!7587438 () Bool)

(assert (=> b!6847830 m!7587438))

(declare-fun m!7587440 () Bool)

(assert (=> b!6847825 m!7587440))

(declare-fun m!7587442 () Bool)

(assert (=> b!6847829 m!7587442))

(declare-fun m!7587444 () Bool)

(assert (=> b!6847828 m!7587444))

(assert (=> b!6847406 d!2152389))

(declare-fun d!2152391 () Bool)

(declare-fun lt!2455963 () Int)

(assert (=> d!2152391 (>= lt!2455963 0)))

(declare-fun e!4129452 () Int)

(assert (=> d!2152391 (= lt!2455963 e!4129452)))

(declare-fun c!1274707 () Bool)

(assert (=> d!2152391 (= c!1274707 ((_ is Cons!66201) zl!343))))

(assert (=> d!2152391 (= (zipperDepthTotal!430 zl!343) lt!2455963)))

(declare-fun b!6847835 () Bool)

(assert (=> b!6847835 (= e!4129452 (+ (contextDepthTotal!402 (h!72649 zl!343)) (zipperDepthTotal!430 (t!380068 zl!343))))))

(declare-fun b!6847836 () Bool)

(assert (=> b!6847836 (= e!4129452 0)))

(assert (= (and d!2152391 c!1274707) b!6847835))

(assert (= (and d!2152391 (not c!1274707)) b!6847836))

(declare-fun m!7587446 () Bool)

(assert (=> b!6847835 m!7587446))

(declare-fun m!7587448 () Bool)

(assert (=> b!6847835 m!7587448))

(assert (=> b!6847406 d!2152391))

(declare-fun d!2152393 () Bool)

(assert (=> d!2152393 (< (contextDepthTotal!402 lt!2455879) (zipperDepthTotal!430 zl!343))))

(declare-fun lt!2455966 () Unit!160065)

(declare-fun choose!51049 (List!66325 Context!12118) Unit!160065)

(assert (=> d!2152393 (= lt!2455966 (choose!51049 zl!343 lt!2455879))))

(assert (=> d!2152393 (contains!20327 zl!343 lt!2455879)))

(assert (=> d!2152393 (= (lemmaTotalDepthZipperLargerThanOfAnyContextMoreThanOne!34 zl!343 lt!2455879) lt!2455966)))

(declare-fun bs!1830344 () Bool)

(assert (= bs!1830344 d!2152393))

(assert (=> bs!1830344 m!7587216))

(assert (=> bs!1830344 m!7587208))

(declare-fun m!7587450 () Bool)

(assert (=> bs!1830344 m!7587450))

(declare-fun m!7587452 () Bool)

(assert (=> bs!1830344 m!7587452))

(assert (=> b!6847406 d!2152393))

(declare-fun d!2152395 () Bool)

(declare-fun lt!2455967 () Int)

(assert (=> d!2152395 (>= lt!2455967 0)))

(declare-fun e!4129453 () Int)

(assert (=> d!2152395 (= lt!2455967 e!4129453)))

(declare-fun c!1274709 () Bool)

(assert (=> d!2152395 (= c!1274709 ((_ is Cons!66201) lt!2455887))))

(assert (=> d!2152395 (= (zipperDepthTotal!430 lt!2455887) lt!2455967)))

(declare-fun b!6847837 () Bool)

(assert (=> b!6847837 (= e!4129453 (+ (contextDepthTotal!402 (h!72649 lt!2455887)) (zipperDepthTotal!430 (t!380068 lt!2455887))))))

(declare-fun b!6847838 () Bool)

(assert (=> b!6847838 (= e!4129453 0)))

(assert (= (and d!2152395 c!1274709) b!6847837))

(assert (= (and d!2152395 (not c!1274709)) b!6847838))

(declare-fun m!7587454 () Bool)

(assert (=> b!6847837 m!7587454))

(declare-fun m!7587456 () Bool)

(assert (=> b!6847837 m!7587456))

(assert (=> b!6847406 d!2152395))

(declare-fun d!2152397 () Bool)

(declare-fun lt!2455970 () Int)

(assert (=> d!2152397 (>= lt!2455970 0)))

(declare-fun e!4129456 () Int)

(assert (=> d!2152397 (= lt!2455970 e!4129456)))

(declare-fun c!1274713 () Bool)

(assert (=> d!2152397 (= c!1274713 ((_ is Cons!66200) (exprs!6559 lt!2455879)))))

(assert (=> d!2152397 (= (contextDepthTotal!402 lt!2455879) lt!2455970)))

(declare-fun b!6847843 () Bool)

(declare-fun regexDepthTotal!249 (Regex!16675) Int)

(assert (=> b!6847843 (= e!4129456 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 lt!2455879))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 lt!2455879))))))))

(declare-fun b!6847844 () Bool)

(assert (=> b!6847844 (= e!4129456 1)))

(assert (= (and d!2152397 c!1274713) b!6847843))

(assert (= (and d!2152397 (not c!1274713)) b!6847844))

(declare-fun m!7587458 () Bool)

(assert (=> b!6847843 m!7587458))

(declare-fun m!7587460 () Bool)

(assert (=> b!6847843 m!7587460))

(assert (=> b!6847406 d!2152397))

(declare-fun d!2152399 () Bool)

(assert (=> d!2152399 (= (isEmpty!38571 (t!380068 zl!343)) ((_ is Nil!66201) (t!380068 zl!343)))))

(assert (=> b!6847415 d!2152399))

(declare-fun d!2152401 () Bool)

(declare-fun lt!2455973 () Regex!16675)

(assert (=> d!2152401 (validRegex!8411 lt!2455973)))

(declare-fun generalisedUnion!2513 (List!66324) Regex!16675)

(assert (=> d!2152401 (= lt!2455973 (generalisedUnion!2513 (unfocusZipperList!2092 zl!343)))))

(assert (=> d!2152401 (= (unfocusZipper!2417 zl!343) lt!2455973)))

(declare-fun bs!1830345 () Bool)

(assert (= bs!1830345 d!2152401))

(declare-fun m!7587462 () Bool)

(assert (=> bs!1830345 m!7587462))

(assert (=> bs!1830345 m!7587236))

(assert (=> bs!1830345 m!7587236))

(declare-fun m!7587464 () Bool)

(assert (=> bs!1830345 m!7587464))

(assert (=> b!6847405 d!2152401))

(declare-fun b!6847863 () Bool)

(declare-fun e!4129472 () Bool)

(declare-fun call!623633 () Bool)

(assert (=> b!6847863 (= e!4129472 call!623633)))

(declare-fun b!6847864 () Bool)

(declare-fun e!4129476 () Bool)

(declare-fun e!4129474 () Bool)

(assert (=> b!6847864 (= e!4129476 e!4129474)))

(declare-fun c!1274719 () Bool)

(assert (=> b!6847864 (= c!1274719 ((_ is Star!16675) lt!2455885))))

(declare-fun b!6847865 () Bool)

(declare-fun e!4129473 () Bool)

(declare-fun call!623634 () Bool)

(assert (=> b!6847865 (= e!4129473 call!623634)))

(declare-fun b!6847866 () Bool)

(declare-fun e!4129475 () Bool)

(assert (=> b!6847866 (= e!4129475 e!4129473)))

(declare-fun res!2795400 () Bool)

(assert (=> b!6847866 (=> (not res!2795400) (not e!4129473))))

(declare-fun call!623635 () Bool)

(assert (=> b!6847866 (= res!2795400 call!623635)))

(declare-fun bm!623628 () Bool)

(declare-fun c!1274718 () Bool)

(assert (=> bm!623628 (= call!623635 (validRegex!8411 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun b!6847867 () Bool)

(assert (=> b!6847867 (= e!4129474 e!4129472)))

(declare-fun res!2795403 () Bool)

(assert (=> b!6847867 (= res!2795403 (not (nullable!6638 (reg!17004 lt!2455885))))))

(assert (=> b!6847867 (=> (not res!2795403) (not e!4129472))))

(declare-fun bm!623629 () Bool)

(assert (=> bm!623629 (= call!623634 call!623633)))

(declare-fun b!6847868 () Bool)

(declare-fun e!4129471 () Bool)

(assert (=> b!6847868 (= e!4129474 e!4129471)))

(assert (=> b!6847868 (= c!1274718 ((_ is Union!16675) lt!2455885))))

(declare-fun b!6847869 () Bool)

(declare-fun e!4129477 () Bool)

(assert (=> b!6847869 (= e!4129477 call!623634)))

(declare-fun bm!623630 () Bool)

(assert (=> bm!623630 (= call!623633 (validRegex!8411 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))

(declare-fun b!6847870 () Bool)

(declare-fun res!2795402 () Bool)

(assert (=> b!6847870 (=> (not res!2795402) (not e!4129477))))

(assert (=> b!6847870 (= res!2795402 call!623635)))

(assert (=> b!6847870 (= e!4129471 e!4129477)))

(declare-fun d!2152403 () Bool)

(declare-fun res!2795404 () Bool)

(assert (=> d!2152403 (=> res!2795404 e!4129476)))

(assert (=> d!2152403 (= res!2795404 ((_ is ElementMatch!16675) lt!2455885))))

(assert (=> d!2152403 (= (validRegex!8411 lt!2455885) e!4129476)))

(declare-fun b!6847871 () Bool)

(declare-fun res!2795401 () Bool)

(assert (=> b!6847871 (=> res!2795401 e!4129475)))

(assert (=> b!6847871 (= res!2795401 (not ((_ is Concat!25520) lt!2455885)))))

(assert (=> b!6847871 (= e!4129471 e!4129475)))

(assert (= (and d!2152403 (not res!2795404)) b!6847864))

(assert (= (and b!6847864 c!1274719) b!6847867))

(assert (= (and b!6847864 (not c!1274719)) b!6847868))

(assert (= (and b!6847867 res!2795403) b!6847863))

(assert (= (and b!6847868 c!1274718) b!6847870))

(assert (= (and b!6847868 (not c!1274718)) b!6847871))

(assert (= (and b!6847870 res!2795402) b!6847869))

(assert (= (and b!6847871 (not res!2795401)) b!6847866))

(assert (= (and b!6847866 res!2795400) b!6847865))

(assert (= (or b!6847869 b!6847865) bm!623629))

(assert (= (or b!6847870 b!6847866) bm!623628))

(assert (= (or b!6847863 bm!623629) bm!623630))

(declare-fun m!7587466 () Bool)

(assert (=> bm!623628 m!7587466))

(declare-fun m!7587468 () Bool)

(assert (=> b!6847867 m!7587468))

(declare-fun m!7587470 () Bool)

(assert (=> bm!623630 m!7587470))

(assert (=> b!6847414 d!2152403))

(declare-fun bs!1830346 () Bool)

(declare-fun d!2152405 () Bool)

(assert (= bs!1830346 (and d!2152405 b!6847423)))

(declare-fun lambda!387217 () Int)

(assert (=> bs!1830346 (not (= lambda!387217 lambda!387176))))

(declare-fun bs!1830347 () Bool)

(assert (= bs!1830347 (and d!2152405 d!2152375)))

(assert (=> bs!1830347 (not (= lambda!387217 lambda!387214))))

(assert (=> d!2152405 true))

(declare-fun order!27653 () Int)

(declare-fun dynLambda!26457 (Int Int) Int)

(assert (=> d!2152405 (< (dynLambda!26457 order!27653 lambda!387176) (dynLambda!26457 order!27653 lambda!387217))))

(assert (=> d!2152405 (= (exists!2776 lt!2455888 lambda!387176) (not (forall!15853 lt!2455888 lambda!387217)))))

(declare-fun bs!1830348 () Bool)

(assert (= bs!1830348 d!2152405))

(declare-fun m!7587472 () Bool)

(assert (=> bs!1830348 m!7587472))

(assert (=> b!6847423 d!2152405))

(declare-fun bs!1830349 () Bool)

(declare-fun d!2152407 () Bool)

(assert (= bs!1830349 (and d!2152407 b!6847423)))

(declare-fun lambda!387222 () Int)

(assert (=> bs!1830349 (not (= lambda!387222 lambda!387176))))

(declare-fun bs!1830350 () Bool)

(assert (= bs!1830350 (and d!2152407 d!2152375)))

(assert (=> bs!1830350 (= lambda!387222 lambda!387214)))

(declare-fun bs!1830351 () Bool)

(assert (= bs!1830351 (and d!2152407 d!2152405)))

(assert (=> bs!1830351 (not (= lambda!387222 lambda!387217))))

(declare-fun lambda!387223 () Int)

(assert (=> bs!1830349 (= lambda!387223 lambda!387176)))

(assert (=> bs!1830350 (not (= lambda!387223 lambda!387214))))

(assert (=> bs!1830351 (not (= lambda!387223 lambda!387217))))

(declare-fun bs!1830352 () Bool)

(assert (= bs!1830352 d!2152407))

(assert (=> bs!1830352 (not (= lambda!387223 lambda!387222))))

(assert (=> d!2152407 true))

(assert (=> d!2152407 (= (matchR!8858 r!7292 s!2326) (exists!2776 lt!2455888 lambda!387223))))

(declare-fun lt!2455976 () Unit!160065)

(declare-fun choose!51050 (Regex!16675 List!66324 List!66326) Unit!160065)

(assert (=> d!2152407 (= lt!2455976 (choose!51050 r!7292 lt!2455888 s!2326))))

(assert (=> d!2152407 (forall!15853 lt!2455888 lambda!387222)))

(assert (=> d!2152407 (= (matchRGenUnionSpec!314 r!7292 lt!2455888 s!2326) lt!2455976)))

(assert (=> bs!1830352 m!7587224))

(declare-fun m!7587474 () Bool)

(assert (=> bs!1830352 m!7587474))

(declare-fun m!7587476 () Bool)

(assert (=> bs!1830352 m!7587476))

(declare-fun m!7587478 () Bool)

(assert (=> bs!1830352 m!7587478))

(assert (=> b!6847423 d!2152407))

(declare-fun bs!1830353 () Bool)

(declare-fun d!2152409 () Bool)

(assert (= bs!1830353 (and d!2152409 d!2152407)))

(declare-fun lambda!387226 () Int)

(assert (=> bs!1830353 (= lambda!387226 lambda!387222)))

(declare-fun bs!1830354 () Bool)

(assert (= bs!1830354 (and d!2152409 d!2152375)))

(assert (=> bs!1830354 (= lambda!387226 lambda!387214)))

(declare-fun bs!1830355 () Bool)

(assert (= bs!1830355 (and d!2152409 d!2152405)))

(assert (=> bs!1830355 (not (= lambda!387226 lambda!387217))))

(assert (=> bs!1830353 (not (= lambda!387226 lambda!387223))))

(declare-fun bs!1830356 () Bool)

(assert (= bs!1830356 (and d!2152409 b!6847423)))

(assert (=> bs!1830356 (not (= lambda!387226 lambda!387176))))

(declare-fun lt!2455979 () List!66324)

(assert (=> d!2152409 (forall!15853 lt!2455979 lambda!387226)))

(declare-fun e!4129482 () List!66324)

(assert (=> d!2152409 (= lt!2455979 e!4129482)))

(declare-fun c!1274722 () Bool)

(assert (=> d!2152409 (= c!1274722 ((_ is Cons!66201) zl!343))))

(assert (=> d!2152409 (= (unfocusZipperList!2092 zl!343) lt!2455979)))

(declare-fun b!6847880 () Bool)

(declare-fun generalisedConcat!2266 (List!66324) Regex!16675)

(assert (=> b!6847880 (= e!4129482 (Cons!66200 (generalisedConcat!2266 (exprs!6559 (h!72649 zl!343))) (unfocusZipperList!2092 (t!380068 zl!343))))))

(declare-fun b!6847881 () Bool)

(assert (=> b!6847881 (= e!4129482 Nil!66200)))

(assert (= (and d!2152409 c!1274722) b!6847880))

(assert (= (and d!2152409 (not c!1274722)) b!6847881))

(declare-fun m!7587480 () Bool)

(assert (=> d!2152409 m!7587480))

(declare-fun m!7587482 () Bool)

(assert (=> b!6847880 m!7587482))

(declare-fun m!7587484 () Bool)

(assert (=> b!6847880 m!7587484))

(assert (=> b!6847423 d!2152409))

(declare-fun bs!1830357 () Bool)

(declare-fun d!2152411 () Bool)

(assert (= bs!1830357 (and d!2152411 d!2152375)))

(declare-fun lambda!387227 () Int)

(assert (=> bs!1830357 (= lambda!387227 lambda!387214)))

(declare-fun bs!1830358 () Bool)

(assert (= bs!1830358 (and d!2152411 d!2152405)))

(assert (=> bs!1830358 (not (= lambda!387227 lambda!387217))))

(declare-fun bs!1830359 () Bool)

(assert (= bs!1830359 (and d!2152411 d!2152407)))

(assert (=> bs!1830359 (not (= lambda!387227 lambda!387223))))

(declare-fun bs!1830360 () Bool)

(assert (= bs!1830360 (and d!2152411 b!6847423)))

(assert (=> bs!1830360 (not (= lambda!387227 lambda!387176))))

(assert (=> bs!1830359 (= lambda!387227 lambda!387222)))

(declare-fun bs!1830361 () Bool)

(assert (= bs!1830361 (and d!2152411 d!2152409)))

(assert (=> bs!1830361 (= lambda!387227 lambda!387226)))

(assert (=> d!2152411 (= (inv!84934 (h!72649 zl!343)) (forall!15853 (exprs!6559 (h!72649 zl!343)) lambda!387227))))

(declare-fun bs!1830362 () Bool)

(assert (= bs!1830362 d!2152411))

(declare-fun m!7587486 () Bool)

(assert (=> bs!1830362 m!7587486))

(assert (=> b!6847422 d!2152411))

(declare-fun d!2152413 () Bool)

(declare-fun e!4129483 () Bool)

(assert (=> d!2152413 e!4129483))

(declare-fun res!2795407 () Bool)

(assert (=> d!2152413 (=> (not res!2795407) (not e!4129483))))

(declare-fun lt!2455980 () List!66325)

(assert (=> d!2152413 (= res!2795407 (noDuplicate!2441 lt!2455980))))

(assert (=> d!2152413 (= lt!2455980 (choose!51048 z!1189))))

(assert (=> d!2152413 (= (toList!10459 z!1189) lt!2455980)))

(declare-fun b!6847882 () Bool)

(assert (=> b!6847882 (= e!4129483 (= (content!12981 lt!2455980) z!1189))))

(assert (= (and d!2152413 res!2795407) b!6847882))

(declare-fun m!7587488 () Bool)

(assert (=> d!2152413 m!7587488))

(declare-fun m!7587490 () Bool)

(assert (=> d!2152413 m!7587490))

(declare-fun m!7587492 () Bool)

(assert (=> b!6847882 m!7587492))

(assert (=> b!6847421 d!2152413))

(declare-fun bs!1830363 () Bool)

(declare-fun d!2152415 () Bool)

(assert (= bs!1830363 (and d!2152415 b!6847411)))

(declare-fun lambda!387230 () Int)

(assert (=> bs!1830363 (not (= lambda!387230 lambda!387177))))

(assert (=> d!2152415 true))

(declare-fun order!27655 () Int)

(declare-fun dynLambda!26458 (Int Int) Int)

(assert (=> d!2152415 (< (dynLambda!26458 order!27655 lambda!387177) (dynLambda!26458 order!27655 lambda!387230))))

(declare-fun forall!15854 (List!66325 Int) Bool)

(assert (=> d!2152415 (= (exists!2777 zl!343 lambda!387177) (not (forall!15854 zl!343 lambda!387230)))))

(declare-fun bs!1830364 () Bool)

(assert (= bs!1830364 d!2152415))

(declare-fun m!7587494 () Bool)

(assert (=> bs!1830364 m!7587494))

(assert (=> b!6847411 d!2152415))

(declare-fun bs!1830365 () Bool)

(declare-fun d!2152417 () Bool)

(assert (= bs!1830365 (and d!2152417 b!6847411)))

(declare-fun lambda!387233 () Int)

(assert (=> bs!1830365 (= lambda!387233 lambda!387177)))

(declare-fun bs!1830366 () Bool)

(assert (= bs!1830366 (and d!2152417 d!2152415)))

(assert (=> bs!1830366 (not (= lambda!387233 lambda!387230))))

(assert (=> d!2152417 true))

(assert (=> d!2152417 (exists!2777 zl!343 lambda!387233)))

(declare-fun lt!2455983 () Unit!160065)

(declare-fun choose!51051 (List!66325 Regex!16675) Unit!160065)

(assert (=> d!2152417 (= lt!2455983 (choose!51051 zl!343 lt!2455885))))

(assert (=> d!2152417 (contains!20325 (unfocusZipperList!2092 zl!343) lt!2455885)))

(assert (=> d!2152417 (= (lemmaUnfocusListContainsConcatThenZipperExistsCorrespondingContext!30 zl!343 lt!2455885) lt!2455983)))

(declare-fun bs!1830367 () Bool)

(assert (= bs!1830367 d!2152417))

(declare-fun m!7587496 () Bool)

(assert (=> bs!1830367 m!7587496))

(declare-fun m!7587498 () Bool)

(assert (=> bs!1830367 m!7587498))

(assert (=> bs!1830367 m!7587236))

(assert (=> bs!1830367 m!7587236))

(declare-fun m!7587500 () Bool)

(assert (=> bs!1830367 m!7587500))

(assert (=> b!6847411 d!2152417))

(assert (=> b!6847410 d!2152405))

(declare-fun b!6847885 () Bool)

(declare-fun e!4129485 () Bool)

(declare-fun call!623636 () Bool)

(assert (=> b!6847885 (= e!4129485 call!623636)))

(declare-fun b!6847886 () Bool)

(declare-fun e!4129489 () Bool)

(declare-fun e!4129487 () Bool)

(assert (=> b!6847886 (= e!4129489 e!4129487)))

(declare-fun c!1274726 () Bool)

(assert (=> b!6847886 (= c!1274726 ((_ is Star!16675) r!7292))))

(declare-fun b!6847887 () Bool)

(declare-fun e!4129486 () Bool)

(declare-fun call!623637 () Bool)

(assert (=> b!6847887 (= e!4129486 call!623637)))

(declare-fun b!6847888 () Bool)

(declare-fun e!4129488 () Bool)

(assert (=> b!6847888 (= e!4129488 e!4129486)))

(declare-fun res!2795408 () Bool)

(assert (=> b!6847888 (=> (not res!2795408) (not e!4129486))))

(declare-fun call!623638 () Bool)

(assert (=> b!6847888 (= res!2795408 call!623638)))

(declare-fun bm!623631 () Bool)

(declare-fun c!1274725 () Bool)

(assert (=> bm!623631 (= call!623638 (validRegex!8411 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun b!6847889 () Bool)

(assert (=> b!6847889 (= e!4129487 e!4129485)))

(declare-fun res!2795411 () Bool)

(assert (=> b!6847889 (= res!2795411 (not (nullable!6638 (reg!17004 r!7292))))))

(assert (=> b!6847889 (=> (not res!2795411) (not e!4129485))))

(declare-fun bm!623632 () Bool)

(assert (=> bm!623632 (= call!623637 call!623636)))

(declare-fun b!6847890 () Bool)

(declare-fun e!4129484 () Bool)

(assert (=> b!6847890 (= e!4129487 e!4129484)))

(assert (=> b!6847890 (= c!1274725 ((_ is Union!16675) r!7292))))

(declare-fun b!6847891 () Bool)

(declare-fun e!4129490 () Bool)

(assert (=> b!6847891 (= e!4129490 call!623637)))

(declare-fun bm!623633 () Bool)

(assert (=> bm!623633 (= call!623636 (validRegex!8411 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))

(declare-fun b!6847892 () Bool)

(declare-fun res!2795410 () Bool)

(assert (=> b!6847892 (=> (not res!2795410) (not e!4129490))))

(assert (=> b!6847892 (= res!2795410 call!623638)))

(assert (=> b!6847892 (= e!4129484 e!4129490)))

(declare-fun d!2152419 () Bool)

(declare-fun res!2795412 () Bool)

(assert (=> d!2152419 (=> res!2795412 e!4129489)))

(assert (=> d!2152419 (= res!2795412 ((_ is ElementMatch!16675) r!7292))))

(assert (=> d!2152419 (= (validRegex!8411 r!7292) e!4129489)))

(declare-fun b!6847893 () Bool)

(declare-fun res!2795409 () Bool)

(assert (=> b!6847893 (=> res!2795409 e!4129488)))

(assert (=> b!6847893 (= res!2795409 (not ((_ is Concat!25520) r!7292)))))

(assert (=> b!6847893 (= e!4129484 e!4129488)))

(assert (= (and d!2152419 (not res!2795412)) b!6847886))

(assert (= (and b!6847886 c!1274726) b!6847889))

(assert (= (and b!6847886 (not c!1274726)) b!6847890))

(assert (= (and b!6847889 res!2795411) b!6847885))

(assert (= (and b!6847890 c!1274725) b!6847892))

(assert (= (and b!6847890 (not c!1274725)) b!6847893))

(assert (= (and b!6847892 res!2795410) b!6847891))

(assert (= (and b!6847893 (not res!2795409)) b!6847888))

(assert (= (and b!6847888 res!2795408) b!6847887))

(assert (= (or b!6847891 b!6847887) bm!623632))

(assert (= (or b!6847892 b!6847888) bm!623631))

(assert (= (or b!6847885 bm!623632) bm!623633))

(declare-fun m!7587502 () Bool)

(assert (=> bm!623631 m!7587502))

(declare-fun m!7587504 () Bool)

(assert (=> b!6847889 m!7587504))

(declare-fun m!7587506 () Bool)

(assert (=> bm!623633 m!7587506))

(assert (=> start!661436 d!2152419))

(assert (=> b!6847409 d!2152399))

(declare-fun b!6847894 () Bool)

(declare-fun e!4129495 () Bool)

(declare-fun e!4129494 () Bool)

(assert (=> b!6847894 (= e!4129495 e!4129494)))

(declare-fun c!1274728 () Bool)

(assert (=> b!6847894 (= c!1274728 ((_ is EmptyLang!16675) lt!2455885))))

(declare-fun b!6847895 () Bool)

(declare-fun res!2795413 () Bool)

(declare-fun e!4129493 () Bool)

(assert (=> b!6847895 (=> res!2795413 e!4129493)))

(assert (=> b!6847895 (= res!2795413 (not ((_ is ElementMatch!16675) lt!2455885)))))

(assert (=> b!6847895 (= e!4129494 e!4129493)))

(declare-fun b!6847896 () Bool)

(declare-fun lt!2455984 () Bool)

(assert (=> b!6847896 (= e!4129494 (not lt!2455984))))

(declare-fun b!6847897 () Bool)

(declare-fun res!2795416 () Bool)

(declare-fun e!4129496 () Bool)

(assert (=> b!6847897 (=> (not res!2795416) (not e!4129496))))

(declare-fun call!623639 () Bool)

(assert (=> b!6847897 (= res!2795416 (not call!623639))))

(declare-fun b!6847898 () Bool)

(declare-fun e!4129497 () Bool)

(assert (=> b!6847898 (= e!4129497 (not (= (head!13727 s!2326) (c!1274613 lt!2455885))))))

(declare-fun b!6847899 () Bool)

(declare-fun res!2795415 () Bool)

(assert (=> b!6847899 (=> (not res!2795415) (not e!4129496))))

(assert (=> b!6847899 (= res!2795415 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6847900 () Bool)

(declare-fun res!2795419 () Bool)

(assert (=> b!6847900 (=> res!2795419 e!4129493)))

(assert (=> b!6847900 (= res!2795419 e!4129496)))

(declare-fun res!2795417 () Bool)

(assert (=> b!6847900 (=> (not res!2795417) (not e!4129496))))

(assert (=> b!6847900 (= res!2795417 lt!2455984)))

(declare-fun b!6847901 () Bool)

(declare-fun e!4129491 () Bool)

(assert (=> b!6847901 (= e!4129491 (nullable!6638 lt!2455885))))

(declare-fun b!6847902 () Bool)

(assert (=> b!6847902 (= e!4129496 (= (head!13727 s!2326) (c!1274613 lt!2455885)))))

(declare-fun b!6847903 () Bool)

(declare-fun res!2795420 () Bool)

(assert (=> b!6847903 (=> res!2795420 e!4129497)))

(assert (=> b!6847903 (= res!2795420 (not (isEmpty!38573 (tail!12804 s!2326))))))

(declare-fun d!2152421 () Bool)

(assert (=> d!2152421 e!4129495))

(declare-fun c!1274727 () Bool)

(assert (=> d!2152421 (= c!1274727 ((_ is EmptyExpr!16675) lt!2455885))))

(assert (=> d!2152421 (= lt!2455984 e!4129491)))

(declare-fun c!1274729 () Bool)

(assert (=> d!2152421 (= c!1274729 (isEmpty!38573 s!2326))))

(assert (=> d!2152421 (validRegex!8411 lt!2455885)))

(assert (=> d!2152421 (= (matchR!8858 lt!2455885 s!2326) lt!2455984)))

(declare-fun bm!623634 () Bool)

(assert (=> bm!623634 (= call!623639 (isEmpty!38573 s!2326))))

(declare-fun b!6847904 () Bool)

(declare-fun e!4129492 () Bool)

(assert (=> b!6847904 (= e!4129492 e!4129497)))

(declare-fun res!2795414 () Bool)

(assert (=> b!6847904 (=> res!2795414 e!4129497)))

(assert (=> b!6847904 (= res!2795414 call!623639)))

(declare-fun b!6847905 () Bool)

(assert (=> b!6847905 (= e!4129491 (matchR!8858 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (tail!12804 s!2326)))))

(declare-fun b!6847906 () Bool)

(assert (=> b!6847906 (= e!4129493 e!4129492)))

(declare-fun res!2795418 () Bool)

(assert (=> b!6847906 (=> (not res!2795418) (not e!4129492))))

(assert (=> b!6847906 (= res!2795418 (not lt!2455984))))

(declare-fun b!6847907 () Bool)

(assert (=> b!6847907 (= e!4129495 (= lt!2455984 call!623639))))

(assert (= (and d!2152421 c!1274729) b!6847901))

(assert (= (and d!2152421 (not c!1274729)) b!6847905))

(assert (= (and d!2152421 c!1274727) b!6847907))

(assert (= (and d!2152421 (not c!1274727)) b!6847894))

(assert (= (and b!6847894 c!1274728) b!6847896))

(assert (= (and b!6847894 (not c!1274728)) b!6847895))

(assert (= (and b!6847895 (not res!2795413)) b!6847900))

(assert (= (and b!6847900 res!2795417) b!6847897))

(assert (= (and b!6847897 res!2795416) b!6847899))

(assert (= (and b!6847899 res!2795415) b!6847902))

(assert (= (and b!6847900 (not res!2795419)) b!6847906))

(assert (= (and b!6847906 res!2795418) b!6847904))

(assert (= (and b!6847904 (not res!2795414)) b!6847903))

(assert (= (and b!6847903 (not res!2795420)) b!6847898))

(assert (= (or b!6847907 b!6847897 b!6847904) bm!623634))

(assert (=> bm!623634 m!7587310))

(assert (=> b!6847905 m!7587360))

(assert (=> b!6847905 m!7587360))

(declare-fun m!7587508 () Bool)

(assert (=> b!6847905 m!7587508))

(assert (=> b!6847905 m!7587364))

(assert (=> b!6847905 m!7587508))

(assert (=> b!6847905 m!7587364))

(declare-fun m!7587510 () Bool)

(assert (=> b!6847905 m!7587510))

(declare-fun m!7587512 () Bool)

(assert (=> b!6847901 m!7587512))

(assert (=> b!6847899 m!7587364))

(assert (=> b!6847899 m!7587364))

(assert (=> b!6847899 m!7587370))

(assert (=> b!6847903 m!7587364))

(assert (=> b!6847903 m!7587364))

(assert (=> b!6847903 m!7587370))

(assert (=> d!2152421 m!7587310))

(assert (=> d!2152421 m!7587238))

(assert (=> b!6847902 m!7587360))

(assert (=> b!6847898 m!7587360))

(assert (=> b!6847419 d!2152421))

(declare-fun b!6847912 () Bool)

(declare-fun e!4129500 () Bool)

(declare-fun tp!1876240 () Bool)

(assert (=> b!6847912 (= e!4129500 (and tp_is_empty!42603 tp!1876240))))

(assert (=> b!6847413 (= tp!1876171 e!4129500)))

(assert (= (and b!6847413 ((_ is Cons!66202) (t!380069 s!2326))) b!6847912))

(declare-fun b!6847920 () Bool)

(declare-fun e!4129506 () Bool)

(declare-fun tp!1876245 () Bool)

(assert (=> b!6847920 (= e!4129506 tp!1876245)))

(declare-fun e!4129505 () Bool)

(declare-fun b!6847919 () Bool)

(declare-fun tp!1876246 () Bool)

(assert (=> b!6847919 (= e!4129505 (and (inv!84934 (h!72649 (t!380068 zl!343))) e!4129506 tp!1876246))))

(assert (=> b!6847422 (= tp!1876179 e!4129505)))

(assert (= b!6847919 b!6847920))

(assert (= (and b!6847422 ((_ is Cons!66201) (t!380068 zl!343))) b!6847919))

(declare-fun m!7587514 () Bool)

(assert (=> b!6847919 m!7587514))

(declare-fun b!6847925 () Bool)

(declare-fun e!4129509 () Bool)

(declare-fun tp!1876251 () Bool)

(declare-fun tp!1876252 () Bool)

(assert (=> b!6847925 (= e!4129509 (and tp!1876251 tp!1876252))))

(assert (=> b!6847407 (= tp!1876173 e!4129509)))

(assert (= (and b!6847407 ((_ is Cons!66200) (exprs!6559 (h!72649 zl!343)))) b!6847925))

(declare-fun b!6847936 () Bool)

(declare-fun e!4129512 () Bool)

(assert (=> b!6847936 (= e!4129512 tp_is_empty!42603)))

(declare-fun b!6847938 () Bool)

(declare-fun tp!1876266 () Bool)

(assert (=> b!6847938 (= e!4129512 tp!1876266)))

(declare-fun b!6847939 () Bool)

(declare-fun tp!1876264 () Bool)

(declare-fun tp!1876267 () Bool)

(assert (=> b!6847939 (= e!4129512 (and tp!1876264 tp!1876267))))

(declare-fun b!6847937 () Bool)

(declare-fun tp!1876265 () Bool)

(declare-fun tp!1876263 () Bool)

(assert (=> b!6847937 (= e!4129512 (and tp!1876265 tp!1876263))))

(assert (=> b!6847412 (= tp!1876174 e!4129512)))

(assert (= (and b!6847412 ((_ is ElementMatch!16675) (regOne!33863 r!7292))) b!6847936))

(assert (= (and b!6847412 ((_ is Concat!25520) (regOne!33863 r!7292))) b!6847937))

(assert (= (and b!6847412 ((_ is Star!16675) (regOne!33863 r!7292))) b!6847938))

(assert (= (and b!6847412 ((_ is Union!16675) (regOne!33863 r!7292))) b!6847939))

(declare-fun b!6847940 () Bool)

(declare-fun e!4129513 () Bool)

(assert (=> b!6847940 (= e!4129513 tp_is_empty!42603)))

(declare-fun b!6847942 () Bool)

(declare-fun tp!1876271 () Bool)

(assert (=> b!6847942 (= e!4129513 tp!1876271)))

(declare-fun b!6847943 () Bool)

(declare-fun tp!1876269 () Bool)

(declare-fun tp!1876272 () Bool)

(assert (=> b!6847943 (= e!4129513 (and tp!1876269 tp!1876272))))

(declare-fun b!6847941 () Bool)

(declare-fun tp!1876270 () Bool)

(declare-fun tp!1876268 () Bool)

(assert (=> b!6847941 (= e!4129513 (and tp!1876270 tp!1876268))))

(assert (=> b!6847412 (= tp!1876170 e!4129513)))

(assert (= (and b!6847412 ((_ is ElementMatch!16675) (regTwo!33863 r!7292))) b!6847940))

(assert (= (and b!6847412 ((_ is Concat!25520) (regTwo!33863 r!7292))) b!6847941))

(assert (= (and b!6847412 ((_ is Star!16675) (regTwo!33863 r!7292))) b!6847942))

(assert (= (and b!6847412 ((_ is Union!16675) (regTwo!33863 r!7292))) b!6847943))

(declare-fun condSetEmpty!47087 () Bool)

(assert (=> setNonEmpty!47081 (= condSetEmpty!47087 (= setRest!47081 ((as const (Array Context!12118 Bool)) false)))))

(declare-fun setRes!47087 () Bool)

(assert (=> setNonEmpty!47081 (= tp!1876178 setRes!47087)))

(declare-fun setIsEmpty!47087 () Bool)

(assert (=> setIsEmpty!47087 setRes!47087))

(declare-fun tp!1876277 () Bool)

(declare-fun setNonEmpty!47087 () Bool)

(declare-fun setElem!47087 () Context!12118)

(declare-fun e!4129516 () Bool)

(assert (=> setNonEmpty!47087 (= setRes!47087 (and tp!1876277 (inv!84934 setElem!47087) e!4129516))))

(declare-fun setRest!47087 () (InoxSet Context!12118))

(assert (=> setNonEmpty!47087 (= setRest!47081 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) setElem!47087 true) setRest!47087))))

(declare-fun b!6847948 () Bool)

(declare-fun tp!1876278 () Bool)

(assert (=> b!6847948 (= e!4129516 tp!1876278)))

(assert (= (and setNonEmpty!47081 condSetEmpty!47087) setIsEmpty!47087))

(assert (= (and setNonEmpty!47081 (not condSetEmpty!47087)) setNonEmpty!47087))

(assert (= setNonEmpty!47087 b!6847948))

(declare-fun m!7587516 () Bool)

(assert (=> setNonEmpty!47087 m!7587516))

(declare-fun b!6847949 () Bool)

(declare-fun e!4129517 () Bool)

(declare-fun tp!1876279 () Bool)

(declare-fun tp!1876280 () Bool)

(assert (=> b!6847949 (= e!4129517 (and tp!1876279 tp!1876280))))

(assert (=> b!6847425 (= tp!1876175 e!4129517)))

(assert (= (and b!6847425 ((_ is Cons!66200) (exprs!6559 setElem!47081))) b!6847949))

(declare-fun b!6847950 () Bool)

(declare-fun e!4129518 () Bool)

(assert (=> b!6847950 (= e!4129518 tp_is_empty!42603)))

(declare-fun b!6847952 () Bool)

(declare-fun tp!1876284 () Bool)

(assert (=> b!6847952 (= e!4129518 tp!1876284)))

(declare-fun b!6847953 () Bool)

(declare-fun tp!1876282 () Bool)

(declare-fun tp!1876285 () Bool)

(assert (=> b!6847953 (= e!4129518 (and tp!1876282 tp!1876285))))

(declare-fun b!6847951 () Bool)

(declare-fun tp!1876283 () Bool)

(declare-fun tp!1876281 () Bool)

(assert (=> b!6847951 (= e!4129518 (and tp!1876283 tp!1876281))))

(assert (=> b!6847424 (= tp!1876177 e!4129518)))

(assert (= (and b!6847424 ((_ is ElementMatch!16675) (regOne!33862 r!7292))) b!6847950))

(assert (= (and b!6847424 ((_ is Concat!25520) (regOne!33862 r!7292))) b!6847951))

(assert (= (and b!6847424 ((_ is Star!16675) (regOne!33862 r!7292))) b!6847952))

(assert (= (and b!6847424 ((_ is Union!16675) (regOne!33862 r!7292))) b!6847953))

(declare-fun b!6847954 () Bool)

(declare-fun e!4129519 () Bool)

(assert (=> b!6847954 (= e!4129519 tp_is_empty!42603)))

(declare-fun b!6847956 () Bool)

(declare-fun tp!1876289 () Bool)

(assert (=> b!6847956 (= e!4129519 tp!1876289)))

(declare-fun b!6847957 () Bool)

(declare-fun tp!1876287 () Bool)

(declare-fun tp!1876290 () Bool)

(assert (=> b!6847957 (= e!4129519 (and tp!1876287 tp!1876290))))

(declare-fun b!6847955 () Bool)

(declare-fun tp!1876288 () Bool)

(declare-fun tp!1876286 () Bool)

(assert (=> b!6847955 (= e!4129519 (and tp!1876288 tp!1876286))))

(assert (=> b!6847424 (= tp!1876176 e!4129519)))

(assert (= (and b!6847424 ((_ is ElementMatch!16675) (regTwo!33862 r!7292))) b!6847954))

(assert (= (and b!6847424 ((_ is Concat!25520) (regTwo!33862 r!7292))) b!6847955))

(assert (= (and b!6847424 ((_ is Star!16675) (regTwo!33862 r!7292))) b!6847956))

(assert (= (and b!6847424 ((_ is Union!16675) (regTwo!33862 r!7292))) b!6847957))

(declare-fun b!6847958 () Bool)

(declare-fun e!4129520 () Bool)

(assert (=> b!6847958 (= e!4129520 tp_is_empty!42603)))

(declare-fun b!6847960 () Bool)

(declare-fun tp!1876294 () Bool)

(assert (=> b!6847960 (= e!4129520 tp!1876294)))

(declare-fun b!6847961 () Bool)

(declare-fun tp!1876292 () Bool)

(declare-fun tp!1876295 () Bool)

(assert (=> b!6847961 (= e!4129520 (and tp!1876292 tp!1876295))))

(declare-fun b!6847959 () Bool)

(declare-fun tp!1876293 () Bool)

(declare-fun tp!1876291 () Bool)

(assert (=> b!6847959 (= e!4129520 (and tp!1876293 tp!1876291))))

(assert (=> b!6847408 (= tp!1876172 e!4129520)))

(assert (= (and b!6847408 ((_ is ElementMatch!16675) (reg!17004 r!7292))) b!6847958))

(assert (= (and b!6847408 ((_ is Concat!25520) (reg!17004 r!7292))) b!6847959))

(assert (= (and b!6847408 ((_ is Star!16675) (reg!17004 r!7292))) b!6847960))

(assert (= (and b!6847408 ((_ is Union!16675) (reg!17004 r!7292))) b!6847961))

(declare-fun b_lambda!258387 () Bool)

(assert (= b_lambda!258379 (or b!6847423 b_lambda!258387)))

(declare-fun bs!1830368 () Bool)

(declare-fun d!2152423 () Bool)

(assert (= bs!1830368 (and d!2152423 b!6847423)))

(declare-fun res!2795421 () Bool)

(declare-fun e!4129521 () Bool)

(assert (=> bs!1830368 (=> (not res!2795421) (not e!4129521))))

(assert (=> bs!1830368 (= res!2795421 (validRegex!8411 (h!72648 lt!2455888)))))

(assert (=> bs!1830368 (= (dynLambda!26455 lambda!387176 (h!72648 lt!2455888)) e!4129521)))

(declare-fun b!6847962 () Bool)

(assert (=> b!6847962 (= e!4129521 (matchR!8858 (h!72648 lt!2455888) s!2326))))

(assert (= (and bs!1830368 res!2795421) b!6847962))

(declare-fun m!7587518 () Bool)

(assert (=> bs!1830368 m!7587518))

(declare-fun m!7587520 () Bool)

(assert (=> b!6847962 m!7587520))

(assert (=> b!6847809 d!2152423))

(declare-fun b_lambda!258389 () Bool)

(assert (= b_lambda!258381 (or b!6847423 b_lambda!258389)))

(declare-fun bs!1830369 () Bool)

(declare-fun d!2152425 () Bool)

(assert (= bs!1830369 (and d!2152425 b!6847423)))

(declare-fun res!2795422 () Bool)

(declare-fun e!4129522 () Bool)

(assert (=> bs!1830369 (=> (not res!2795422) (not e!4129522))))

(assert (=> bs!1830369 (= res!2795422 (validRegex!8411 lt!2455953))))

(assert (=> bs!1830369 (= (dynLambda!26455 lambda!387176 lt!2455953) e!4129522)))

(declare-fun b!6847963 () Bool)

(assert (=> b!6847963 (= e!4129522 (matchR!8858 lt!2455953 s!2326))))

(assert (= (and bs!1830369 res!2795422) b!6847963))

(declare-fun m!7587522 () Bool)

(assert (=> bs!1830369 m!7587522))

(declare-fun m!7587524 () Bool)

(assert (=> b!6847963 m!7587524))

(assert (=> d!2152387 d!2152425))

(declare-fun b_lambda!258391 () Bool)

(assert (= b_lambda!258385 (or b!6847411 b_lambda!258391)))

(declare-fun bs!1830370 () Bool)

(declare-fun d!2152427 () Bool)

(assert (= bs!1830370 (and d!2152427 b!6847411)))

(assert (=> bs!1830370 (= (dynLambda!26456 lambda!387177 (h!72649 zl!343)) (= (generalisedConcat!2266 (exprs!6559 (h!72649 zl!343))) lt!2455885))))

(assert (=> bs!1830370 m!7587482))

(assert (=> b!6847830 d!2152427))

(declare-fun b_lambda!258393 () Bool)

(assert (= b_lambda!258383 (or b!6847411 b_lambda!258393)))

(declare-fun bs!1830371 () Bool)

(declare-fun d!2152429 () Bool)

(assert (= bs!1830371 (and d!2152429 b!6847411)))

(assert (=> bs!1830371 (= (dynLambda!26456 lambda!387177 lt!2455960) (= (generalisedConcat!2266 (exprs!6559 lt!2455960)) lt!2455885))))

(declare-fun m!7587526 () Bool)

(assert (=> bs!1830371 m!7587526))

(assert (=> d!2152389 d!2152429))

(check-sat (not b!6847561) (not d!2152415) (not b!6847807) (not bm!623628) (not b!6847959) (not b!6847689) (not b!6847912) (not bm!623634) (not b!6847925) (not b!6847690) (not b!6847843) (not b!6847948) (not b!6847899) (not b!6847898) (not d!2152421) (not bm!623633) (not d!2152387) (not d!2152389) (not b!6847889) (not b!6847903) (not d!2152393) (not b!6847880) (not b!6847692) (not b!6847962) (not b!6847693) (not b!6847957) (not b!6847867) (not d!2152409) (not b_lambda!258391) (not b!6847829) (not b_lambda!258387) (not b!6847812) (not b!6847919) (not b_lambda!258389) (not b!6847955) (not b!6847565) (not b!6847942) (not b!6847902) (not b!6847837) (not d!2152371) (not bm!623605) (not d!2152375) (not bs!1830371) (not b!6847960) (not b!6847905) (not d!2152411) (not d!2152405) (not d!2152417) (not b!6847949) (not b!6847961) (not b!6847761) (not b!6847882) (not b!6847956) (not bs!1830370) (not bm!623630) (not setNonEmpty!47087) (not b!6847943) (not d!2152351) (not d!2152365) (not b!6847938) (not bm!623617) (not b!6847696) (not b!6847937) (not b_lambda!258393) (not d!2152413) (not b!6847825) (not bm!623604) (not b!6847953) (not b!6847808) (not b!6847963) (not bs!1830369) (not b!6847939) (not bs!1830368) (not b!6847694) (not b!6847951) (not b!6847920) (not b!6847901) tp_is_empty!42603 (not b!6847952) (not d!2152385) (not b!6847835) (not d!2152407) (not b!6847941) (not b!6847828) (not b!6847794) (not d!2152401) (not bm!623631))
(check-sat)
(get-model)

(declare-fun d!2152579 () Bool)

(declare-fun nullableFct!2522 (Regex!16675) Bool)

(assert (=> d!2152579 (= (nullable!6638 (reg!17004 lt!2455885)) (nullableFct!2522 (reg!17004 lt!2455885)))))

(declare-fun bs!1830492 () Bool)

(assert (= bs!1830492 d!2152579))

(declare-fun m!7587868 () Bool)

(assert (=> bs!1830492 m!7587868))

(assert (=> b!6847867 d!2152579))

(declare-fun d!2152581 () Bool)

(assert (=> d!2152581 (= (isEmpty!38573 s!2326) ((_ is Nil!66202) s!2326))))

(assert (=> bm!623634 d!2152581))

(assert (=> bm!623617 d!2152581))

(declare-fun d!2152583 () Bool)

(declare-fun c!1274846 () Bool)

(assert (=> d!2152583 (= c!1274846 ((_ is Nil!66200) lt!2455888))))

(declare-fun e!4129804 () (InoxSet Regex!16675))

(assert (=> d!2152583 (= (content!12982 lt!2455888) e!4129804)))

(declare-fun b!6848455 () Bool)

(assert (=> b!6848455 (= e!4129804 ((as const (Array Regex!16675 Bool)) false))))

(declare-fun b!6848456 () Bool)

(assert (=> b!6848456 (= e!4129804 ((_ map or) (store ((as const (Array Regex!16675 Bool)) false) (h!72648 lt!2455888) true) (content!12982 (t!380067 lt!2455888))))))

(assert (= (and d!2152583 c!1274846) b!6848455))

(assert (= (and d!2152583 (not c!1274846)) b!6848456))

(declare-fun m!7587870 () Bool)

(assert (=> b!6848456 m!7587870))

(declare-fun m!7587872 () Bool)

(assert (=> b!6848456 m!7587872))

(assert (=> d!2152385 d!2152583))

(declare-fun bs!1830493 () Bool)

(declare-fun d!2152585 () Bool)

(assert (= bs!1830493 (and d!2152585 d!2152375)))

(declare-fun lambda!387258 () Int)

(assert (=> bs!1830493 (= lambda!387258 lambda!387214)))

(declare-fun bs!1830494 () Bool)

(assert (= bs!1830494 (and d!2152585 d!2152405)))

(assert (=> bs!1830494 (not (= lambda!387258 lambda!387217))))

(declare-fun bs!1830495 () Bool)

(assert (= bs!1830495 (and d!2152585 d!2152407)))

(assert (=> bs!1830495 (not (= lambda!387258 lambda!387223))))

(declare-fun bs!1830496 () Bool)

(assert (= bs!1830496 (and d!2152585 b!6847423)))

(assert (=> bs!1830496 (not (= lambda!387258 lambda!387176))))

(assert (=> bs!1830495 (= lambda!387258 lambda!387222)))

(declare-fun bs!1830497 () Bool)

(assert (= bs!1830497 (and d!2152585 d!2152409)))

(assert (=> bs!1830497 (= lambda!387258 lambda!387226)))

(declare-fun bs!1830498 () Bool)

(assert (= bs!1830498 (and d!2152585 d!2152411)))

(assert (=> bs!1830498 (= lambda!387258 lambda!387227)))

(declare-fun b!6848477 () Bool)

(declare-fun e!4129820 () Bool)

(declare-fun lt!2456022 () Regex!16675)

(declare-fun isEmptyExpr!2006 (Regex!16675) Bool)

(assert (=> b!6848477 (= e!4129820 (isEmptyExpr!2006 lt!2456022))))

(declare-fun b!6848478 () Bool)

(declare-fun e!4129819 () Bool)

(assert (=> b!6848478 (= e!4129820 e!4129819)))

(declare-fun c!1274855 () Bool)

(declare-fun isEmpty!38575 (List!66324) Bool)

(declare-fun tail!12805 (List!66324) List!66324)

(assert (=> b!6848478 (= c!1274855 (isEmpty!38575 (tail!12805 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6848479 () Bool)

(declare-fun isConcat!1529 (Regex!16675) Bool)

(assert (=> b!6848479 (= e!4129819 (isConcat!1529 lt!2456022))))

(declare-fun b!6848480 () Bool)

(declare-fun e!4129822 () Bool)

(assert (=> b!6848480 (= e!4129822 (isEmpty!38575 (t!380067 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6848481 () Bool)

(declare-fun e!4129818 () Regex!16675)

(declare-fun e!4129821 () Regex!16675)

(assert (=> b!6848481 (= e!4129818 e!4129821)))

(declare-fun c!1274856 () Bool)

(assert (=> b!6848481 (= c!1274856 ((_ is Cons!66200) (exprs!6559 (h!72649 zl!343))))))

(declare-fun b!6848482 () Bool)

(declare-fun e!4129817 () Bool)

(assert (=> b!6848482 (= e!4129817 e!4129820)))

(declare-fun c!1274857 () Bool)

(assert (=> b!6848482 (= c!1274857 (isEmpty!38575 (exprs!6559 (h!72649 zl!343))))))

(assert (=> d!2152585 e!4129817))

(declare-fun res!2795573 () Bool)

(assert (=> d!2152585 (=> (not res!2795573) (not e!4129817))))

(assert (=> d!2152585 (= res!2795573 (validRegex!8411 lt!2456022))))

(assert (=> d!2152585 (= lt!2456022 e!4129818)))

(declare-fun c!1274858 () Bool)

(assert (=> d!2152585 (= c!1274858 e!4129822)))

(declare-fun res!2795572 () Bool)

(assert (=> d!2152585 (=> (not res!2795572) (not e!4129822))))

(assert (=> d!2152585 (= res!2795572 ((_ is Cons!66200) (exprs!6559 (h!72649 zl!343))))))

(assert (=> d!2152585 (forall!15853 (exprs!6559 (h!72649 zl!343)) lambda!387258)))

(assert (=> d!2152585 (= (generalisedConcat!2266 (exprs!6559 (h!72649 zl!343))) lt!2456022)))

(declare-fun b!6848483 () Bool)

(assert (=> b!6848483 (= e!4129819 (= lt!2456022 (head!13728 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6848484 () Bool)

(assert (=> b!6848484 (= e!4129821 EmptyExpr!16675)))

(declare-fun b!6848485 () Bool)

(assert (=> b!6848485 (= e!4129818 (h!72648 (exprs!6559 (h!72649 zl!343))))))

(declare-fun b!6848486 () Bool)

(assert (=> b!6848486 (= e!4129821 (Concat!25520 (h!72648 (exprs!6559 (h!72649 zl!343))) (generalisedConcat!2266 (t!380067 (exprs!6559 (h!72649 zl!343))))))))

(assert (= (and d!2152585 res!2795572) b!6848480))

(assert (= (and d!2152585 c!1274858) b!6848485))

(assert (= (and d!2152585 (not c!1274858)) b!6848481))

(assert (= (and b!6848481 c!1274856) b!6848486))

(assert (= (and b!6848481 (not c!1274856)) b!6848484))

(assert (= (and d!2152585 res!2795573) b!6848482))

(assert (= (and b!6848482 c!1274857) b!6848477))

(assert (= (and b!6848482 (not c!1274857)) b!6848478))

(assert (= (and b!6848478 c!1274855) b!6848483))

(assert (= (and b!6848478 (not c!1274855)) b!6848479))

(declare-fun m!7587874 () Bool)

(assert (=> b!6848480 m!7587874))

(declare-fun m!7587876 () Bool)

(assert (=> b!6848486 m!7587876))

(declare-fun m!7587878 () Bool)

(assert (=> d!2152585 m!7587878))

(declare-fun m!7587880 () Bool)

(assert (=> d!2152585 m!7587880))

(declare-fun m!7587882 () Bool)

(assert (=> b!6848478 m!7587882))

(assert (=> b!6848478 m!7587882))

(declare-fun m!7587884 () Bool)

(assert (=> b!6848478 m!7587884))

(declare-fun m!7587886 () Bool)

(assert (=> b!6848477 m!7587886))

(declare-fun m!7587888 () Bool)

(assert (=> b!6848479 m!7587888))

(declare-fun m!7587890 () Bool)

(assert (=> b!6848483 m!7587890))

(declare-fun m!7587892 () Bool)

(assert (=> b!6848482 m!7587892))

(assert (=> b!6847880 d!2152585))

(declare-fun bs!1830499 () Bool)

(declare-fun d!2152587 () Bool)

(assert (= bs!1830499 (and d!2152587 d!2152585)))

(declare-fun lambda!387259 () Int)

(assert (=> bs!1830499 (= lambda!387259 lambda!387258)))

(declare-fun bs!1830500 () Bool)

(assert (= bs!1830500 (and d!2152587 d!2152375)))

(assert (=> bs!1830500 (= lambda!387259 lambda!387214)))

(declare-fun bs!1830501 () Bool)

(assert (= bs!1830501 (and d!2152587 d!2152405)))

(assert (=> bs!1830501 (not (= lambda!387259 lambda!387217))))

(declare-fun bs!1830502 () Bool)

(assert (= bs!1830502 (and d!2152587 d!2152407)))

(assert (=> bs!1830502 (not (= lambda!387259 lambda!387223))))

(declare-fun bs!1830503 () Bool)

(assert (= bs!1830503 (and d!2152587 b!6847423)))

(assert (=> bs!1830503 (not (= lambda!387259 lambda!387176))))

(assert (=> bs!1830502 (= lambda!387259 lambda!387222)))

(declare-fun bs!1830504 () Bool)

(assert (= bs!1830504 (and d!2152587 d!2152409)))

(assert (=> bs!1830504 (= lambda!387259 lambda!387226)))

(declare-fun bs!1830505 () Bool)

(assert (= bs!1830505 (and d!2152587 d!2152411)))

(assert (=> bs!1830505 (= lambda!387259 lambda!387227)))

(declare-fun lt!2456023 () List!66324)

(assert (=> d!2152587 (forall!15853 lt!2456023 lambda!387259)))

(declare-fun e!4129823 () List!66324)

(assert (=> d!2152587 (= lt!2456023 e!4129823)))

(declare-fun c!1274859 () Bool)

(assert (=> d!2152587 (= c!1274859 ((_ is Cons!66201) (t!380068 zl!343)))))

(assert (=> d!2152587 (= (unfocusZipperList!2092 (t!380068 zl!343)) lt!2456023)))

(declare-fun b!6848487 () Bool)

(assert (=> b!6848487 (= e!4129823 (Cons!66200 (generalisedConcat!2266 (exprs!6559 (h!72649 (t!380068 zl!343)))) (unfocusZipperList!2092 (t!380068 (t!380068 zl!343)))))))

(declare-fun b!6848488 () Bool)

(assert (=> b!6848488 (= e!4129823 Nil!66200)))

(assert (= (and d!2152587 c!1274859) b!6848487))

(assert (= (and d!2152587 (not c!1274859)) b!6848488))

(declare-fun m!7587894 () Bool)

(assert (=> d!2152587 m!7587894))

(declare-fun m!7587896 () Bool)

(assert (=> b!6848487 m!7587896))

(declare-fun m!7587898 () Bool)

(assert (=> b!6848487 m!7587898))

(assert (=> b!6847880 d!2152587))

(assert (=> d!2152351 d!2152581))

(assert (=> d!2152351 d!2152419))

(assert (=> d!2152407 d!2152351))

(declare-fun bs!1830506 () Bool)

(declare-fun d!2152589 () Bool)

(assert (= bs!1830506 (and d!2152589 d!2152585)))

(declare-fun lambda!387260 () Int)

(assert (=> bs!1830506 (not (= lambda!387260 lambda!387258))))

(declare-fun bs!1830507 () Bool)

(assert (= bs!1830507 (and d!2152589 d!2152375)))

(assert (=> bs!1830507 (not (= lambda!387260 lambda!387214))))

(declare-fun bs!1830508 () Bool)

(assert (= bs!1830508 (and d!2152589 d!2152405)))

(assert (=> bs!1830508 (= (= lambda!387223 lambda!387176) (= lambda!387260 lambda!387217))))

(declare-fun bs!1830509 () Bool)

(assert (= bs!1830509 (and d!2152589 d!2152407)))

(assert (=> bs!1830509 (not (= lambda!387260 lambda!387223))))

(assert (=> bs!1830509 (not (= lambda!387260 lambda!387222))))

(declare-fun bs!1830510 () Bool)

(assert (= bs!1830510 (and d!2152589 d!2152409)))

(assert (=> bs!1830510 (not (= lambda!387260 lambda!387226))))

(declare-fun bs!1830511 () Bool)

(assert (= bs!1830511 (and d!2152589 d!2152411)))

(assert (=> bs!1830511 (not (= lambda!387260 lambda!387227))))

(declare-fun bs!1830512 () Bool)

(assert (= bs!1830512 (and d!2152589 b!6847423)))

(assert (=> bs!1830512 (not (= lambda!387260 lambda!387176))))

(declare-fun bs!1830513 () Bool)

(assert (= bs!1830513 (and d!2152589 d!2152587)))

(assert (=> bs!1830513 (not (= lambda!387260 lambda!387259))))

(assert (=> d!2152589 true))

(assert (=> d!2152589 (< (dynLambda!26457 order!27653 lambda!387223) (dynLambda!26457 order!27653 lambda!387260))))

(assert (=> d!2152589 (= (exists!2776 lt!2455888 lambda!387223) (not (forall!15853 lt!2455888 lambda!387260)))))

(declare-fun bs!1830514 () Bool)

(assert (= bs!1830514 d!2152589))

(declare-fun m!7587900 () Bool)

(assert (=> bs!1830514 m!7587900))

(assert (=> d!2152407 d!2152589))

(declare-fun bs!1830515 () Bool)

(declare-fun d!2152591 () Bool)

(assert (= bs!1830515 (and d!2152591 d!2152589)))

(declare-fun lambda!387263 () Int)

(assert (=> bs!1830515 (not (= lambda!387263 lambda!387260))))

(declare-fun bs!1830516 () Bool)

(assert (= bs!1830516 (and d!2152591 d!2152585)))

(assert (=> bs!1830516 (not (= lambda!387263 lambda!387258))))

(declare-fun bs!1830517 () Bool)

(assert (= bs!1830517 (and d!2152591 d!2152375)))

(assert (=> bs!1830517 (not (= lambda!387263 lambda!387214))))

(declare-fun bs!1830518 () Bool)

(assert (= bs!1830518 (and d!2152591 d!2152405)))

(assert (=> bs!1830518 (not (= lambda!387263 lambda!387217))))

(declare-fun bs!1830519 () Bool)

(assert (= bs!1830519 (and d!2152591 d!2152407)))

(assert (=> bs!1830519 (= lambda!387263 lambda!387223)))

(assert (=> bs!1830519 (not (= lambda!387263 lambda!387222))))

(declare-fun bs!1830520 () Bool)

(assert (= bs!1830520 (and d!2152591 d!2152409)))

(assert (=> bs!1830520 (not (= lambda!387263 lambda!387226))))

(declare-fun bs!1830521 () Bool)

(assert (= bs!1830521 (and d!2152591 d!2152411)))

(assert (=> bs!1830521 (not (= lambda!387263 lambda!387227))))

(declare-fun bs!1830522 () Bool)

(assert (= bs!1830522 (and d!2152591 b!6847423)))

(assert (=> bs!1830522 (= lambda!387263 lambda!387176)))

(declare-fun bs!1830523 () Bool)

(assert (= bs!1830523 (and d!2152591 d!2152587)))

(assert (=> bs!1830523 (not (= lambda!387263 lambda!387259))))

(assert (=> d!2152591 true))

(assert (=> d!2152591 (= (matchR!8858 r!7292 s!2326) (exists!2776 lt!2455888 lambda!387263))))

(assert (=> d!2152591 true))

(declare-fun _$85!197 () Unit!160065)

(assert (=> d!2152591 (= (choose!51050 r!7292 lt!2455888 s!2326) _$85!197)))

(declare-fun bs!1830524 () Bool)

(assert (= bs!1830524 d!2152591))

(assert (=> bs!1830524 m!7587224))

(declare-fun m!7587902 () Bool)

(assert (=> bs!1830524 m!7587902))

(assert (=> d!2152407 d!2152591))

(declare-fun d!2152593 () Bool)

(declare-fun res!2795580 () Bool)

(declare-fun e!4129830 () Bool)

(assert (=> d!2152593 (=> res!2795580 e!4129830)))

(assert (=> d!2152593 (= res!2795580 ((_ is Nil!66200) lt!2455888))))

(assert (=> d!2152593 (= (forall!15853 lt!2455888 lambda!387222) e!4129830)))

(declare-fun b!6848495 () Bool)

(declare-fun e!4129831 () Bool)

(assert (=> b!6848495 (= e!4129830 e!4129831)))

(declare-fun res!2795581 () Bool)

(assert (=> b!6848495 (=> (not res!2795581) (not e!4129831))))

(assert (=> b!6848495 (= res!2795581 (dynLambda!26455 lambda!387222 (h!72648 lt!2455888)))))

(declare-fun b!6848496 () Bool)

(assert (=> b!6848496 (= e!4129831 (forall!15853 (t!380067 lt!2455888) lambda!387222))))

(assert (= (and d!2152593 (not res!2795580)) b!6848495))

(assert (= (and b!6848495 res!2795581) b!6848496))

(declare-fun b_lambda!258439 () Bool)

(assert (=> (not b_lambda!258439) (not b!6848495)))

(declare-fun m!7587904 () Bool)

(assert (=> b!6848495 m!7587904))

(declare-fun m!7587906 () Bool)

(assert (=> b!6848496 m!7587906))

(assert (=> d!2152407 d!2152593))

(declare-fun d!2152595 () Bool)

(declare-fun res!2795582 () Bool)

(declare-fun e!4129832 () Bool)

(assert (=> d!2152595 (=> res!2795582 e!4129832)))

(assert (=> d!2152595 (= res!2795582 ((_ is Nil!66200) (exprs!6559 setElem!47081)))))

(assert (=> d!2152595 (= (forall!15853 (exprs!6559 setElem!47081) lambda!387214) e!4129832)))

(declare-fun b!6848497 () Bool)

(declare-fun e!4129833 () Bool)

(assert (=> b!6848497 (= e!4129832 e!4129833)))

(declare-fun res!2795583 () Bool)

(assert (=> b!6848497 (=> (not res!2795583) (not e!4129833))))

(assert (=> b!6848497 (= res!2795583 (dynLambda!26455 lambda!387214 (h!72648 (exprs!6559 setElem!47081))))))

(declare-fun b!6848498 () Bool)

(assert (=> b!6848498 (= e!4129833 (forall!15853 (t!380067 (exprs!6559 setElem!47081)) lambda!387214))))

(assert (= (and d!2152595 (not res!2795582)) b!6848497))

(assert (= (and b!6848497 res!2795583) b!6848498))

(declare-fun b_lambda!258441 () Bool)

(assert (=> (not b_lambda!258441) (not b!6848497)))

(declare-fun m!7587908 () Bool)

(assert (=> b!6848497 m!7587908))

(declare-fun m!7587910 () Bool)

(assert (=> b!6848498 m!7587910))

(assert (=> d!2152375 d!2152595))

(declare-fun d!2152597 () Bool)

(assert (=> d!2152597 (= (head!13729 zl!343) (h!72649 zl!343))))

(assert (=> b!6847829 d!2152597))

(declare-fun b!6848499 () Bool)

(declare-fun e!4129838 () Bool)

(declare-fun e!4129837 () Bool)

(assert (=> b!6848499 (= e!4129838 e!4129837)))

(declare-fun c!1274861 () Bool)

(assert (=> b!6848499 (= c!1274861 ((_ is EmptyLang!16675) (h!72648 lt!2455888)))))

(declare-fun b!6848500 () Bool)

(declare-fun res!2795584 () Bool)

(declare-fun e!4129836 () Bool)

(assert (=> b!6848500 (=> res!2795584 e!4129836)))

(assert (=> b!6848500 (= res!2795584 (not ((_ is ElementMatch!16675) (h!72648 lt!2455888))))))

(assert (=> b!6848500 (= e!4129837 e!4129836)))

(declare-fun b!6848501 () Bool)

(declare-fun lt!2456024 () Bool)

(assert (=> b!6848501 (= e!4129837 (not lt!2456024))))

(declare-fun b!6848502 () Bool)

(declare-fun res!2795587 () Bool)

(declare-fun e!4129839 () Bool)

(assert (=> b!6848502 (=> (not res!2795587) (not e!4129839))))

(declare-fun call!623694 () Bool)

(assert (=> b!6848502 (= res!2795587 (not call!623694))))

(declare-fun b!6848503 () Bool)

(declare-fun e!4129840 () Bool)

(assert (=> b!6848503 (= e!4129840 (not (= (head!13727 s!2326) (c!1274613 (h!72648 lt!2455888)))))))

(declare-fun b!6848504 () Bool)

(declare-fun res!2795586 () Bool)

(assert (=> b!6848504 (=> (not res!2795586) (not e!4129839))))

(assert (=> b!6848504 (= res!2795586 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6848505 () Bool)

(declare-fun res!2795590 () Bool)

(assert (=> b!6848505 (=> res!2795590 e!4129836)))

(assert (=> b!6848505 (= res!2795590 e!4129839)))

(declare-fun res!2795588 () Bool)

(assert (=> b!6848505 (=> (not res!2795588) (not e!4129839))))

(assert (=> b!6848505 (= res!2795588 lt!2456024)))

(declare-fun b!6848506 () Bool)

(declare-fun e!4129834 () Bool)

(assert (=> b!6848506 (= e!4129834 (nullable!6638 (h!72648 lt!2455888)))))

(declare-fun b!6848507 () Bool)

(assert (=> b!6848507 (= e!4129839 (= (head!13727 s!2326) (c!1274613 (h!72648 lt!2455888))))))

(declare-fun b!6848508 () Bool)

(declare-fun res!2795591 () Bool)

(assert (=> b!6848508 (=> res!2795591 e!4129840)))

(assert (=> b!6848508 (= res!2795591 (not (isEmpty!38573 (tail!12804 s!2326))))))

(declare-fun d!2152599 () Bool)

(assert (=> d!2152599 e!4129838))

(declare-fun c!1274860 () Bool)

(assert (=> d!2152599 (= c!1274860 ((_ is EmptyExpr!16675) (h!72648 lt!2455888)))))

(assert (=> d!2152599 (= lt!2456024 e!4129834)))

(declare-fun c!1274862 () Bool)

(assert (=> d!2152599 (= c!1274862 (isEmpty!38573 s!2326))))

(assert (=> d!2152599 (validRegex!8411 (h!72648 lt!2455888))))

(assert (=> d!2152599 (= (matchR!8858 (h!72648 lt!2455888) s!2326) lt!2456024)))

(declare-fun bm!623689 () Bool)

(assert (=> bm!623689 (= call!623694 (isEmpty!38573 s!2326))))

(declare-fun b!6848509 () Bool)

(declare-fun e!4129835 () Bool)

(assert (=> b!6848509 (= e!4129835 e!4129840)))

(declare-fun res!2795585 () Bool)

(assert (=> b!6848509 (=> res!2795585 e!4129840)))

(assert (=> b!6848509 (= res!2795585 call!623694)))

(declare-fun b!6848510 () Bool)

(assert (=> b!6848510 (= e!4129834 (matchR!8858 (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326)) (tail!12804 s!2326)))))

(declare-fun b!6848511 () Bool)

(assert (=> b!6848511 (= e!4129836 e!4129835)))

(declare-fun res!2795589 () Bool)

(assert (=> b!6848511 (=> (not res!2795589) (not e!4129835))))

(assert (=> b!6848511 (= res!2795589 (not lt!2456024))))

(declare-fun b!6848512 () Bool)

(assert (=> b!6848512 (= e!4129838 (= lt!2456024 call!623694))))

(assert (= (and d!2152599 c!1274862) b!6848506))

(assert (= (and d!2152599 (not c!1274862)) b!6848510))

(assert (= (and d!2152599 c!1274860) b!6848512))

(assert (= (and d!2152599 (not c!1274860)) b!6848499))

(assert (= (and b!6848499 c!1274861) b!6848501))

(assert (= (and b!6848499 (not c!1274861)) b!6848500))

(assert (= (and b!6848500 (not res!2795584)) b!6848505))

(assert (= (and b!6848505 res!2795588) b!6848502))

(assert (= (and b!6848502 res!2795587) b!6848504))

(assert (= (and b!6848504 res!2795586) b!6848507))

(assert (= (and b!6848505 (not res!2795590)) b!6848511))

(assert (= (and b!6848511 res!2795589) b!6848509))

(assert (= (and b!6848509 (not res!2795585)) b!6848508))

(assert (= (and b!6848508 (not res!2795591)) b!6848503))

(assert (= (or b!6848512 b!6848502 b!6848509) bm!623689))

(assert (=> bm!623689 m!7587310))

(assert (=> b!6848510 m!7587360))

(assert (=> b!6848510 m!7587360))

(declare-fun m!7587912 () Bool)

(assert (=> b!6848510 m!7587912))

(assert (=> b!6848510 m!7587364))

(assert (=> b!6848510 m!7587912))

(assert (=> b!6848510 m!7587364))

(declare-fun m!7587914 () Bool)

(assert (=> b!6848510 m!7587914))

(declare-fun m!7587916 () Bool)

(assert (=> b!6848506 m!7587916))

(assert (=> b!6848504 m!7587364))

(assert (=> b!6848504 m!7587364))

(assert (=> b!6848504 m!7587370))

(assert (=> b!6848508 m!7587364))

(assert (=> b!6848508 m!7587364))

(assert (=> b!6848508 m!7587370))

(assert (=> d!2152599 m!7587310))

(assert (=> d!2152599 m!7587518))

(assert (=> b!6848507 m!7587360))

(assert (=> b!6848503 m!7587360))

(assert (=> b!6847962 d!2152599))

(declare-fun b!6848513 () Bool)

(declare-fun e!4129843 () Context!12118)

(assert (=> b!6848513 (= e!4129843 (getWitness!945 (t!380068 (t!380068 zl!343)) lambda!387177))))

(declare-fun b!6848514 () Bool)

(declare-fun e!4129842 () Context!12118)

(assert (=> b!6848514 (= e!4129842 e!4129843)))

(declare-fun c!1274863 () Bool)

(assert (=> b!6848514 (= c!1274863 ((_ is Cons!66201) (t!380068 zl!343)))))

(declare-fun b!6848515 () Bool)

(assert (=> b!6848515 (= e!4129842 (h!72649 (t!380068 zl!343)))))

(declare-fun b!6848516 () Bool)

(declare-fun e!4129841 () Bool)

(declare-fun lt!2456026 () Context!12118)

(assert (=> b!6848516 (= e!4129841 (contains!20327 (t!380068 zl!343) lt!2456026))))

(declare-fun b!6848517 () Bool)

(declare-fun lt!2456025 () Unit!160065)

(declare-fun Unit!160072 () Unit!160065)

(assert (=> b!6848517 (= lt!2456025 Unit!160072)))

(assert (=> b!6848517 false))

(assert (=> b!6848517 (= e!4129843 (head!13729 (t!380068 zl!343)))))

(declare-fun d!2152601 () Bool)

(assert (=> d!2152601 e!4129841))

(declare-fun res!2795592 () Bool)

(assert (=> d!2152601 (=> (not res!2795592) (not e!4129841))))

(assert (=> d!2152601 (= res!2795592 (dynLambda!26456 lambda!387177 lt!2456026))))

(assert (=> d!2152601 (= lt!2456026 e!4129842)))

(declare-fun c!1274864 () Bool)

(declare-fun e!4129844 () Bool)

(assert (=> d!2152601 (= c!1274864 e!4129844)))

(declare-fun res!2795593 () Bool)

(assert (=> d!2152601 (=> (not res!2795593) (not e!4129844))))

(assert (=> d!2152601 (= res!2795593 ((_ is Cons!66201) (t!380068 zl!343)))))

(assert (=> d!2152601 (exists!2777 (t!380068 zl!343) lambda!387177)))

(assert (=> d!2152601 (= (getWitness!945 (t!380068 zl!343) lambda!387177) lt!2456026)))

(declare-fun b!6848518 () Bool)

(assert (=> b!6848518 (= e!4129844 (dynLambda!26456 lambda!387177 (h!72649 (t!380068 zl!343))))))

(assert (= (and d!2152601 res!2795593) b!6848518))

(assert (= (and d!2152601 c!1274864) b!6848515))

(assert (= (and d!2152601 (not c!1274864)) b!6848514))

(assert (= (and b!6848514 c!1274863) b!6848513))

(assert (= (and b!6848514 (not c!1274863)) b!6848517))

(assert (= (and d!2152601 res!2795592) b!6848516))

(declare-fun b_lambda!258443 () Bool)

(assert (=> (not b_lambda!258443) (not d!2152601)))

(declare-fun b_lambda!258445 () Bool)

(assert (=> (not b_lambda!258445) (not b!6848518)))

(declare-fun m!7587918 () Bool)

(assert (=> d!2152601 m!7587918))

(declare-fun m!7587920 () Bool)

(assert (=> d!2152601 m!7587920))

(declare-fun m!7587922 () Bool)

(assert (=> b!6848518 m!7587922))

(declare-fun m!7587924 () Bool)

(assert (=> b!6848513 m!7587924))

(declare-fun m!7587926 () Bool)

(assert (=> b!6848517 m!7587926))

(declare-fun m!7587928 () Bool)

(assert (=> b!6848516 m!7587928))

(assert (=> b!6847825 d!2152601))

(declare-fun bs!1830525 () Bool)

(declare-fun d!2152603 () Bool)

(assert (= bs!1830525 (and d!2152603 d!2152589)))

(declare-fun lambda!387264 () Int)

(assert (=> bs!1830525 (not (= lambda!387264 lambda!387260))))

(declare-fun bs!1830526 () Bool)

(assert (= bs!1830526 (and d!2152603 d!2152585)))

(assert (=> bs!1830526 (= lambda!387264 lambda!387258)))

(declare-fun bs!1830527 () Bool)

(assert (= bs!1830527 (and d!2152603 d!2152375)))

(assert (=> bs!1830527 (= lambda!387264 lambda!387214)))

(declare-fun bs!1830528 () Bool)

(assert (= bs!1830528 (and d!2152603 d!2152405)))

(assert (=> bs!1830528 (not (= lambda!387264 lambda!387217))))

(declare-fun bs!1830529 () Bool)

(assert (= bs!1830529 (and d!2152603 d!2152407)))

(assert (=> bs!1830529 (not (= lambda!387264 lambda!387223))))

(declare-fun bs!1830530 () Bool)

(assert (= bs!1830530 (and d!2152603 d!2152591)))

(assert (=> bs!1830530 (not (= lambda!387264 lambda!387263))))

(assert (=> bs!1830529 (= lambda!387264 lambda!387222)))

(declare-fun bs!1830531 () Bool)

(assert (= bs!1830531 (and d!2152603 d!2152409)))

(assert (=> bs!1830531 (= lambda!387264 lambda!387226)))

(declare-fun bs!1830532 () Bool)

(assert (= bs!1830532 (and d!2152603 d!2152411)))

(assert (=> bs!1830532 (= lambda!387264 lambda!387227)))

(declare-fun bs!1830533 () Bool)

(assert (= bs!1830533 (and d!2152603 b!6847423)))

(assert (=> bs!1830533 (not (= lambda!387264 lambda!387176))))

(declare-fun bs!1830534 () Bool)

(assert (= bs!1830534 (and d!2152603 d!2152587)))

(assert (=> bs!1830534 (= lambda!387264 lambda!387259)))

(assert (=> d!2152603 (= (inv!84934 (h!72649 (t!380068 zl!343))) (forall!15853 (exprs!6559 (h!72649 (t!380068 zl!343))) lambda!387264))))

(declare-fun bs!1830535 () Bool)

(assert (= bs!1830535 d!2152603))

(declare-fun m!7587930 () Bool)

(assert (=> bs!1830535 m!7587930))

(assert (=> b!6847919 d!2152603))

(declare-fun b!6848519 () Bool)

(declare-fun e!4129849 () Bool)

(declare-fun e!4129848 () Bool)

(assert (=> b!6848519 (= e!4129849 e!4129848)))

(declare-fun c!1274866 () Bool)

(assert (=> b!6848519 (= c!1274866 ((_ is EmptyLang!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun b!6848520 () Bool)

(declare-fun res!2795594 () Bool)

(declare-fun e!4129847 () Bool)

(assert (=> b!6848520 (=> res!2795594 e!4129847)))

(assert (=> b!6848520 (= res!2795594 (not ((_ is ElementMatch!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326)))))))

(assert (=> b!6848520 (= e!4129848 e!4129847)))

(declare-fun b!6848521 () Bool)

(declare-fun lt!2456027 () Bool)

(assert (=> b!6848521 (= e!4129848 (not lt!2456027))))

(declare-fun b!6848522 () Bool)

(declare-fun res!2795597 () Bool)

(declare-fun e!4129850 () Bool)

(assert (=> b!6848522 (=> (not res!2795597) (not e!4129850))))

(declare-fun call!623695 () Bool)

(assert (=> b!6848522 (= res!2795597 (not call!623695))))

(declare-fun b!6848523 () Bool)

(declare-fun e!4129851 () Bool)

(assert (=> b!6848523 (= e!4129851 (not (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 r!7292 (head!13727 s!2326))))))))

(declare-fun b!6848524 () Bool)

(declare-fun res!2795596 () Bool)

(assert (=> b!6848524 (=> (not res!2795596) (not e!4129850))))

(assert (=> b!6848524 (= res!2795596 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6848525 () Bool)

(declare-fun res!2795600 () Bool)

(assert (=> b!6848525 (=> res!2795600 e!4129847)))

(assert (=> b!6848525 (= res!2795600 e!4129850)))

(declare-fun res!2795598 () Bool)

(assert (=> b!6848525 (=> (not res!2795598) (not e!4129850))))

(assert (=> b!6848525 (= res!2795598 lt!2456027)))

(declare-fun b!6848526 () Bool)

(declare-fun e!4129845 () Bool)

(assert (=> b!6848526 (= e!4129845 (nullable!6638 (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun b!6848527 () Bool)

(assert (=> b!6848527 (= e!4129850 (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 r!7292 (head!13727 s!2326)))))))

(declare-fun b!6848528 () Bool)

(declare-fun res!2795601 () Bool)

(assert (=> b!6848528 (=> res!2795601 e!4129851)))

(assert (=> b!6848528 (= res!2795601 (not (isEmpty!38573 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun d!2152605 () Bool)

(assert (=> d!2152605 e!4129849))

(declare-fun c!1274865 () Bool)

(assert (=> d!2152605 (= c!1274865 ((_ is EmptyExpr!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(assert (=> d!2152605 (= lt!2456027 e!4129845)))

(declare-fun c!1274867 () Bool)

(assert (=> d!2152605 (= c!1274867 (isEmpty!38573 (tail!12804 s!2326)))))

(assert (=> d!2152605 (validRegex!8411 (derivativeStep!5321 r!7292 (head!13727 s!2326)))))

(assert (=> d!2152605 (= (matchR!8858 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (tail!12804 s!2326)) lt!2456027)))

(declare-fun bm!623690 () Bool)

(assert (=> bm!623690 (= call!623695 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6848529 () Bool)

(declare-fun e!4129846 () Bool)

(assert (=> b!6848529 (= e!4129846 e!4129851)))

(declare-fun res!2795595 () Bool)

(assert (=> b!6848529 (=> res!2795595 e!4129851)))

(assert (=> b!6848529 (= res!2795595 call!623695)))

(declare-fun b!6848530 () Bool)

(assert (=> b!6848530 (= e!4129845 (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6848531 () Bool)

(assert (=> b!6848531 (= e!4129847 e!4129846)))

(declare-fun res!2795599 () Bool)

(assert (=> b!6848531 (=> (not res!2795599) (not e!4129846))))

(assert (=> b!6848531 (= res!2795599 (not lt!2456027))))

(declare-fun b!6848532 () Bool)

(assert (=> b!6848532 (= e!4129849 (= lt!2456027 call!623695))))

(assert (= (and d!2152605 c!1274867) b!6848526))

(assert (= (and d!2152605 (not c!1274867)) b!6848530))

(assert (= (and d!2152605 c!1274865) b!6848532))

(assert (= (and d!2152605 (not c!1274865)) b!6848519))

(assert (= (and b!6848519 c!1274866) b!6848521))

(assert (= (and b!6848519 (not c!1274866)) b!6848520))

(assert (= (and b!6848520 (not res!2795594)) b!6848525))

(assert (= (and b!6848525 res!2795598) b!6848522))

(assert (= (and b!6848522 res!2795597) b!6848524))

(assert (= (and b!6848524 res!2795596) b!6848527))

(assert (= (and b!6848525 (not res!2795600)) b!6848531))

(assert (= (and b!6848531 res!2795599) b!6848529))

(assert (= (and b!6848529 (not res!2795595)) b!6848528))

(assert (= (and b!6848528 (not res!2795601)) b!6848523))

(assert (= (or b!6848532 b!6848522 b!6848529) bm!623690))

(assert (=> bm!623690 m!7587364))

(assert (=> bm!623690 m!7587370))

(assert (=> b!6848530 m!7587364))

(declare-fun m!7587932 () Bool)

(assert (=> b!6848530 m!7587932))

(assert (=> b!6848530 m!7587362))

(assert (=> b!6848530 m!7587932))

(declare-fun m!7587934 () Bool)

(assert (=> b!6848530 m!7587934))

(assert (=> b!6848530 m!7587364))

(declare-fun m!7587936 () Bool)

(assert (=> b!6848530 m!7587936))

(assert (=> b!6848530 m!7587934))

(assert (=> b!6848530 m!7587936))

(declare-fun m!7587938 () Bool)

(assert (=> b!6848530 m!7587938))

(assert (=> b!6848526 m!7587362))

(declare-fun m!7587940 () Bool)

(assert (=> b!6848526 m!7587940))

(assert (=> b!6848524 m!7587364))

(assert (=> b!6848524 m!7587936))

(assert (=> b!6848524 m!7587936))

(declare-fun m!7587942 () Bool)

(assert (=> b!6848524 m!7587942))

(assert (=> b!6848528 m!7587364))

(assert (=> b!6848528 m!7587936))

(assert (=> b!6848528 m!7587936))

(assert (=> b!6848528 m!7587942))

(assert (=> d!2152605 m!7587364))

(assert (=> d!2152605 m!7587370))

(assert (=> d!2152605 m!7587362))

(declare-fun m!7587944 () Bool)

(assert (=> d!2152605 m!7587944))

(assert (=> b!6848527 m!7587364))

(assert (=> b!6848527 m!7587932))

(assert (=> b!6848523 m!7587364))

(assert (=> b!6848523 m!7587932))

(assert (=> b!6847696 d!2152605))

(declare-fun b!6848554 () Bool)

(declare-fun e!4129863 () Regex!16675)

(declare-fun call!623704 () Regex!16675)

(assert (=> b!6848554 (= e!4129863 (Union!16675 (Concat!25520 call!623704 (regTwo!33862 r!7292)) EmptyLang!16675))))

(declare-fun bm!623699 () Bool)

(declare-fun call!623707 () Regex!16675)

(assert (=> bm!623699 (= call!623704 call!623707)))

(declare-fun bm!623700 () Bool)

(declare-fun call!623706 () Regex!16675)

(assert (=> bm!623700 (= call!623707 call!623706)))

(declare-fun b!6848555 () Bool)

(declare-fun e!4129865 () Regex!16675)

(assert (=> b!6848555 (= e!4129865 EmptyLang!16675)))

(declare-fun b!6848556 () Bool)

(declare-fun e!4129866 () Regex!16675)

(assert (=> b!6848556 (= e!4129866 (Concat!25520 call!623707 r!7292))))

(declare-fun call!623705 () Regex!16675)

(declare-fun c!1274879 () Bool)

(declare-fun bm!623701 () Bool)

(assert (=> bm!623701 (= call!623705 (derivativeStep!5321 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)) (head!13727 s!2326)))))

(declare-fun b!6848557 () Bool)

(declare-fun e!4129862 () Regex!16675)

(assert (=> b!6848557 (= e!4129862 (Union!16675 call!623705 call!623706))))

(declare-fun b!6848558 () Bool)

(assert (=> b!6848558 (= e!4129863 (Union!16675 (Concat!25520 call!623705 (regTwo!33862 r!7292)) call!623704))))

(declare-fun b!6848559 () Bool)

(assert (=> b!6848559 (= c!1274879 ((_ is Union!16675) r!7292))))

(declare-fun e!4129864 () Regex!16675)

(assert (=> b!6848559 (= e!4129864 e!4129862)))

(declare-fun b!6848553 () Bool)

(assert (=> b!6848553 (= e!4129862 e!4129866)))

(declare-fun c!1274882 () Bool)

(assert (=> b!6848553 (= c!1274882 ((_ is Star!16675) r!7292))))

(declare-fun d!2152607 () Bool)

(declare-fun lt!2456030 () Regex!16675)

(assert (=> d!2152607 (validRegex!8411 lt!2456030)))

(assert (=> d!2152607 (= lt!2456030 e!4129865)))

(declare-fun c!1274878 () Bool)

(assert (=> d!2152607 (= c!1274878 (or ((_ is EmptyExpr!16675) r!7292) ((_ is EmptyLang!16675) r!7292)))))

(assert (=> d!2152607 (validRegex!8411 r!7292)))

(assert (=> d!2152607 (= (derivativeStep!5321 r!7292 (head!13727 s!2326)) lt!2456030)))

(declare-fun b!6848560 () Bool)

(declare-fun c!1274881 () Bool)

(assert (=> b!6848560 (= c!1274881 (nullable!6638 (regOne!33862 r!7292)))))

(assert (=> b!6848560 (= e!4129866 e!4129863)))

(declare-fun bm!623702 () Bool)

(assert (=> bm!623702 (= call!623706 (derivativeStep!5321 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))) (head!13727 s!2326)))))

(declare-fun b!6848561 () Bool)

(assert (=> b!6848561 (= e!4129865 e!4129864)))

(declare-fun c!1274880 () Bool)

(assert (=> b!6848561 (= c!1274880 ((_ is ElementMatch!16675) r!7292))))

(declare-fun b!6848562 () Bool)

(assert (=> b!6848562 (= e!4129864 (ite (= (head!13727 s!2326) (c!1274613 r!7292)) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2152607 c!1274878) b!6848555))

(assert (= (and d!2152607 (not c!1274878)) b!6848561))

(assert (= (and b!6848561 c!1274880) b!6848562))

(assert (= (and b!6848561 (not c!1274880)) b!6848559))

(assert (= (and b!6848559 c!1274879) b!6848557))

(assert (= (and b!6848559 (not c!1274879)) b!6848553))

(assert (= (and b!6848553 c!1274882) b!6848556))

(assert (= (and b!6848553 (not c!1274882)) b!6848560))

(assert (= (and b!6848560 c!1274881) b!6848558))

(assert (= (and b!6848560 (not c!1274881)) b!6848554))

(assert (= (or b!6848558 b!6848554) bm!623699))

(assert (= (or b!6848556 bm!623699) bm!623700))

(assert (= (or b!6848557 bm!623700) bm!623702))

(assert (= (or b!6848557 b!6848558) bm!623701))

(assert (=> bm!623701 m!7587360))

(declare-fun m!7587946 () Bool)

(assert (=> bm!623701 m!7587946))

(declare-fun m!7587948 () Bool)

(assert (=> d!2152607 m!7587948))

(assert (=> d!2152607 m!7587206))

(declare-fun m!7587950 () Bool)

(assert (=> b!6848560 m!7587950))

(assert (=> bm!623702 m!7587360))

(declare-fun m!7587952 () Bool)

(assert (=> bm!623702 m!7587952))

(assert (=> b!6847696 d!2152607))

(declare-fun d!2152609 () Bool)

(assert (=> d!2152609 (= (head!13727 s!2326) (h!72650 s!2326))))

(assert (=> b!6847696 d!2152609))

(declare-fun d!2152611 () Bool)

(assert (=> d!2152611 (= (tail!12804 s!2326) (t!380069 s!2326))))

(assert (=> b!6847696 d!2152611))

(assert (=> bs!1830370 d!2152585))

(declare-fun d!2152613 () Bool)

(declare-fun lt!2456031 () Int)

(assert (=> d!2152613 (>= lt!2456031 0)))

(declare-fun e!4129867 () Int)

(assert (=> d!2152613 (= lt!2456031 e!4129867)))

(declare-fun c!1274883 () Bool)

(assert (=> d!2152613 (= c!1274883 ((_ is Cons!66200) (exprs!6559 (h!72649 zl!343))))))

(assert (=> d!2152613 (= (contextDepthTotal!402 (h!72649 zl!343)) lt!2456031)))

(declare-fun b!6848563 () Bool)

(assert (=> b!6848563 (= e!4129867 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (h!72649 zl!343)))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (h!72649 zl!343)))))))))

(declare-fun b!6848564 () Bool)

(assert (=> b!6848564 (= e!4129867 1)))

(assert (= (and d!2152613 c!1274883) b!6848563))

(assert (= (and d!2152613 (not c!1274883)) b!6848564))

(declare-fun m!7587954 () Bool)

(assert (=> b!6848563 m!7587954))

(declare-fun m!7587956 () Bool)

(assert (=> b!6848563 m!7587956))

(assert (=> b!6847835 d!2152613))

(declare-fun d!2152615 () Bool)

(declare-fun lt!2456032 () Int)

(assert (=> d!2152615 (>= lt!2456032 0)))

(declare-fun e!4129868 () Int)

(assert (=> d!2152615 (= lt!2456032 e!4129868)))

(declare-fun c!1274884 () Bool)

(assert (=> d!2152615 (= c!1274884 ((_ is Cons!66201) (t!380068 zl!343)))))

(assert (=> d!2152615 (= (zipperDepthTotal!430 (t!380068 zl!343)) lt!2456032)))

(declare-fun b!6848565 () Bool)

(assert (=> b!6848565 (= e!4129868 (+ (contextDepthTotal!402 (h!72649 (t!380068 zl!343))) (zipperDepthTotal!430 (t!380068 (t!380068 zl!343)))))))

(declare-fun b!6848566 () Bool)

(assert (=> b!6848566 (= e!4129868 0)))

(assert (= (and d!2152615 c!1274884) b!6848565))

(assert (= (and d!2152615 (not c!1274884)) b!6848566))

(declare-fun m!7587958 () Bool)

(assert (=> b!6848565 m!7587958))

(declare-fun m!7587960 () Bool)

(assert (=> b!6848565 m!7587960))

(assert (=> b!6847835 d!2152615))

(declare-fun d!2152617 () Bool)

(assert (=> d!2152617 (= (isEmpty!38573 (tail!12804 s!2326)) ((_ is Nil!66202) (tail!12804 s!2326)))))

(assert (=> b!6847694 d!2152617))

(assert (=> b!6847694 d!2152611))

(declare-fun b!6848567 () Bool)

(declare-fun e!4129870 () Bool)

(declare-fun call!623708 () Bool)

(assert (=> b!6848567 (= e!4129870 call!623708)))

(declare-fun b!6848568 () Bool)

(declare-fun e!4129874 () Bool)

(declare-fun e!4129872 () Bool)

(assert (=> b!6848568 (= e!4129874 e!4129872)))

(declare-fun c!1274886 () Bool)

(assert (=> b!6848568 (= c!1274886 ((_ is Star!16675) lt!2455973))))

(declare-fun b!6848569 () Bool)

(declare-fun e!4129871 () Bool)

(declare-fun call!623709 () Bool)

(assert (=> b!6848569 (= e!4129871 call!623709)))

(declare-fun b!6848570 () Bool)

(declare-fun e!4129873 () Bool)

(assert (=> b!6848570 (= e!4129873 e!4129871)))

(declare-fun res!2795602 () Bool)

(assert (=> b!6848570 (=> (not res!2795602) (not e!4129871))))

(declare-fun call!623710 () Bool)

(assert (=> b!6848570 (= res!2795602 call!623710)))

(declare-fun bm!623703 () Bool)

(declare-fun c!1274885 () Bool)

(assert (=> bm!623703 (= call!623710 (validRegex!8411 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))))))

(declare-fun b!6848571 () Bool)

(assert (=> b!6848571 (= e!4129872 e!4129870)))

(declare-fun res!2795605 () Bool)

(assert (=> b!6848571 (= res!2795605 (not (nullable!6638 (reg!17004 lt!2455973))))))

(assert (=> b!6848571 (=> (not res!2795605) (not e!4129870))))

(declare-fun bm!623704 () Bool)

(assert (=> bm!623704 (= call!623709 call!623708)))

(declare-fun b!6848572 () Bool)

(declare-fun e!4129869 () Bool)

(assert (=> b!6848572 (= e!4129872 e!4129869)))

(assert (=> b!6848572 (= c!1274885 ((_ is Union!16675) lt!2455973))))

(declare-fun b!6848573 () Bool)

(declare-fun e!4129875 () Bool)

(assert (=> b!6848573 (= e!4129875 call!623709)))

(declare-fun bm!623705 () Bool)

(assert (=> bm!623705 (= call!623708 (validRegex!8411 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))))))

(declare-fun b!6848574 () Bool)

(declare-fun res!2795604 () Bool)

(assert (=> b!6848574 (=> (not res!2795604) (not e!4129875))))

(assert (=> b!6848574 (= res!2795604 call!623710)))

(assert (=> b!6848574 (= e!4129869 e!4129875)))

(declare-fun d!2152619 () Bool)

(declare-fun res!2795606 () Bool)

(assert (=> d!2152619 (=> res!2795606 e!4129874)))

(assert (=> d!2152619 (= res!2795606 ((_ is ElementMatch!16675) lt!2455973))))

(assert (=> d!2152619 (= (validRegex!8411 lt!2455973) e!4129874)))

(declare-fun b!6848575 () Bool)

(declare-fun res!2795603 () Bool)

(assert (=> b!6848575 (=> res!2795603 e!4129873)))

(assert (=> b!6848575 (= res!2795603 (not ((_ is Concat!25520) lt!2455973)))))

(assert (=> b!6848575 (= e!4129869 e!4129873)))

(assert (= (and d!2152619 (not res!2795606)) b!6848568))

(assert (= (and b!6848568 c!1274886) b!6848571))

(assert (= (and b!6848568 (not c!1274886)) b!6848572))

(assert (= (and b!6848571 res!2795605) b!6848567))

(assert (= (and b!6848572 c!1274885) b!6848574))

(assert (= (and b!6848572 (not c!1274885)) b!6848575))

(assert (= (and b!6848574 res!2795604) b!6848573))

(assert (= (and b!6848575 (not res!2795603)) b!6848570))

(assert (= (and b!6848570 res!2795602) b!6848569))

(assert (= (or b!6848573 b!6848569) bm!623704))

(assert (= (or b!6848574 b!6848570) bm!623703))

(assert (= (or b!6848567 bm!623704) bm!623705))

(declare-fun m!7587962 () Bool)

(assert (=> bm!623703 m!7587962))

(declare-fun m!7587964 () Bool)

(assert (=> b!6848571 m!7587964))

(declare-fun m!7587966 () Bool)

(assert (=> bm!623705 m!7587966))

(assert (=> d!2152401 d!2152619))

(declare-fun bs!1830536 () Bool)

(declare-fun d!2152621 () Bool)

(assert (= bs!1830536 (and d!2152621 d!2152589)))

(declare-fun lambda!387267 () Int)

(assert (=> bs!1830536 (not (= lambda!387267 lambda!387260))))

(declare-fun bs!1830537 () Bool)

(assert (= bs!1830537 (and d!2152621 d!2152585)))

(assert (=> bs!1830537 (= lambda!387267 lambda!387258)))

(declare-fun bs!1830538 () Bool)

(assert (= bs!1830538 (and d!2152621 d!2152603)))

(assert (=> bs!1830538 (= lambda!387267 lambda!387264)))

(declare-fun bs!1830539 () Bool)

(assert (= bs!1830539 (and d!2152621 d!2152375)))

(assert (=> bs!1830539 (= lambda!387267 lambda!387214)))

(declare-fun bs!1830540 () Bool)

(assert (= bs!1830540 (and d!2152621 d!2152405)))

(assert (=> bs!1830540 (not (= lambda!387267 lambda!387217))))

(declare-fun bs!1830541 () Bool)

(assert (= bs!1830541 (and d!2152621 d!2152407)))

(assert (=> bs!1830541 (not (= lambda!387267 lambda!387223))))

(declare-fun bs!1830542 () Bool)

(assert (= bs!1830542 (and d!2152621 d!2152591)))

(assert (=> bs!1830542 (not (= lambda!387267 lambda!387263))))

(assert (=> bs!1830541 (= lambda!387267 lambda!387222)))

(declare-fun bs!1830543 () Bool)

(assert (= bs!1830543 (and d!2152621 d!2152409)))

(assert (=> bs!1830543 (= lambda!387267 lambda!387226)))

(declare-fun bs!1830544 () Bool)

(assert (= bs!1830544 (and d!2152621 d!2152411)))

(assert (=> bs!1830544 (= lambda!387267 lambda!387227)))

(declare-fun bs!1830545 () Bool)

(assert (= bs!1830545 (and d!2152621 b!6847423)))

(assert (=> bs!1830545 (not (= lambda!387267 lambda!387176))))

(declare-fun bs!1830546 () Bool)

(assert (= bs!1830546 (and d!2152621 d!2152587)))

(assert (=> bs!1830546 (= lambda!387267 lambda!387259)))

(declare-fun b!6848596 () Bool)

(declare-fun e!4129892 () Bool)

(declare-fun lt!2456035 () Regex!16675)

(assert (=> b!6848596 (= e!4129892 (= lt!2456035 (head!13728 (unfocusZipperList!2092 zl!343))))))

(declare-fun b!6848597 () Bool)

(declare-fun e!4129888 () Bool)

(declare-fun e!4129893 () Bool)

(assert (=> b!6848597 (= e!4129888 e!4129893)))

(declare-fun c!1274896 () Bool)

(assert (=> b!6848597 (= c!1274896 (isEmpty!38575 (unfocusZipperList!2092 zl!343)))))

(declare-fun b!6848598 () Bool)

(declare-fun e!4129890 () Regex!16675)

(assert (=> b!6848598 (= e!4129890 EmptyLang!16675)))

(declare-fun b!6848599 () Bool)

(declare-fun e!4129891 () Bool)

(assert (=> b!6848599 (= e!4129891 (isEmpty!38575 (t!380067 (unfocusZipperList!2092 zl!343))))))

(declare-fun b!6848600 () Bool)

(declare-fun isUnion!1447 (Regex!16675) Bool)

(assert (=> b!6848600 (= e!4129892 (isUnion!1447 lt!2456035))))

(declare-fun b!6848601 () Bool)

(declare-fun e!4129889 () Regex!16675)

(assert (=> b!6848601 (= e!4129889 e!4129890)))

(declare-fun c!1274898 () Bool)

(assert (=> b!6848601 (= c!1274898 ((_ is Cons!66200) (unfocusZipperList!2092 zl!343)))))

(assert (=> d!2152621 e!4129888))

(declare-fun res!2795611 () Bool)

(assert (=> d!2152621 (=> (not res!2795611) (not e!4129888))))

(assert (=> d!2152621 (= res!2795611 (validRegex!8411 lt!2456035))))

(assert (=> d!2152621 (= lt!2456035 e!4129889)))

(declare-fun c!1274895 () Bool)

(assert (=> d!2152621 (= c!1274895 e!4129891)))

(declare-fun res!2795612 () Bool)

(assert (=> d!2152621 (=> (not res!2795612) (not e!4129891))))

(assert (=> d!2152621 (= res!2795612 ((_ is Cons!66200) (unfocusZipperList!2092 zl!343)))))

(assert (=> d!2152621 (forall!15853 (unfocusZipperList!2092 zl!343) lambda!387267)))

(assert (=> d!2152621 (= (generalisedUnion!2513 (unfocusZipperList!2092 zl!343)) lt!2456035)))

(declare-fun b!6848602 () Bool)

(declare-fun isEmptyLang!2017 (Regex!16675) Bool)

(assert (=> b!6848602 (= e!4129893 (isEmptyLang!2017 lt!2456035))))

(declare-fun b!6848603 () Bool)

(assert (=> b!6848603 (= e!4129889 (h!72648 (unfocusZipperList!2092 zl!343)))))

(declare-fun b!6848604 () Bool)

(assert (=> b!6848604 (= e!4129893 e!4129892)))

(declare-fun c!1274897 () Bool)

(assert (=> b!6848604 (= c!1274897 (isEmpty!38575 (tail!12805 (unfocusZipperList!2092 zl!343))))))

(declare-fun b!6848605 () Bool)

(assert (=> b!6848605 (= e!4129890 (Union!16675 (h!72648 (unfocusZipperList!2092 zl!343)) (generalisedUnion!2513 (t!380067 (unfocusZipperList!2092 zl!343)))))))

(assert (= (and d!2152621 res!2795612) b!6848599))

(assert (= (and d!2152621 c!1274895) b!6848603))

(assert (= (and d!2152621 (not c!1274895)) b!6848601))

(assert (= (and b!6848601 c!1274898) b!6848605))

(assert (= (and b!6848601 (not c!1274898)) b!6848598))

(assert (= (and d!2152621 res!2795611) b!6848597))

(assert (= (and b!6848597 c!1274896) b!6848602))

(assert (= (and b!6848597 (not c!1274896)) b!6848604))

(assert (= (and b!6848604 c!1274897) b!6848596))

(assert (= (and b!6848604 (not c!1274897)) b!6848600))

(declare-fun m!7587968 () Bool)

(assert (=> b!6848600 m!7587968))

(assert (=> b!6848596 m!7587236))

(declare-fun m!7587970 () Bool)

(assert (=> b!6848596 m!7587970))

(declare-fun m!7587972 () Bool)

(assert (=> b!6848602 m!7587972))

(assert (=> b!6848597 m!7587236))

(declare-fun m!7587974 () Bool)

(assert (=> b!6848597 m!7587974))

(assert (=> b!6848604 m!7587236))

(declare-fun m!7587976 () Bool)

(assert (=> b!6848604 m!7587976))

(assert (=> b!6848604 m!7587976))

(declare-fun m!7587978 () Bool)

(assert (=> b!6848604 m!7587978))

(declare-fun m!7587980 () Bool)

(assert (=> b!6848605 m!7587980))

(declare-fun m!7587982 () Bool)

(assert (=> d!2152621 m!7587982))

(assert (=> d!2152621 m!7587236))

(declare-fun m!7587984 () Bool)

(assert (=> d!2152621 m!7587984))

(declare-fun m!7587986 () Bool)

(assert (=> b!6848599 m!7587986))

(assert (=> d!2152401 d!2152621))

(assert (=> d!2152401 d!2152409))

(declare-fun b!6848606 () Bool)

(declare-fun lt!2456037 () Unit!160065)

(declare-fun Unit!160073 () Unit!160065)

(assert (=> b!6848606 (= lt!2456037 Unit!160073)))

(assert (=> b!6848606 false))

(declare-fun e!4129895 () Regex!16675)

(assert (=> b!6848606 (= e!4129895 (head!13728 (t!380067 lt!2455888)))))

(declare-fun b!6848607 () Bool)

(declare-fun e!4129897 () Bool)

(declare-fun lt!2456036 () Regex!16675)

(assert (=> b!6848607 (= e!4129897 (contains!20325 (t!380067 lt!2455888) lt!2456036))))

(declare-fun b!6848608 () Bool)

(declare-fun e!4129896 () Bool)

(assert (=> b!6848608 (= e!4129896 (dynLambda!26455 lambda!387176 (h!72648 (t!380067 lt!2455888))))))

(declare-fun d!2152623 () Bool)

(assert (=> d!2152623 e!4129897))

(declare-fun res!2795614 () Bool)

(assert (=> d!2152623 (=> (not res!2795614) (not e!4129897))))

(assert (=> d!2152623 (= res!2795614 (dynLambda!26455 lambda!387176 lt!2456036))))

(declare-fun e!4129894 () Regex!16675)

(assert (=> d!2152623 (= lt!2456036 e!4129894)))

(declare-fun c!1274900 () Bool)

(assert (=> d!2152623 (= c!1274900 e!4129896)))

(declare-fun res!2795613 () Bool)

(assert (=> d!2152623 (=> (not res!2795613) (not e!4129896))))

(assert (=> d!2152623 (= res!2795613 ((_ is Cons!66200) (t!380067 lt!2455888)))))

(assert (=> d!2152623 (exists!2776 (t!380067 lt!2455888) lambda!387176)))

(assert (=> d!2152623 (= (getWitness!946 (t!380067 lt!2455888) lambda!387176) lt!2456036)))

(declare-fun b!6848609 () Bool)

(assert (=> b!6848609 (= e!4129894 e!4129895)))

(declare-fun c!1274899 () Bool)

(assert (=> b!6848609 (= c!1274899 ((_ is Cons!66200) (t!380067 lt!2455888)))))

(declare-fun b!6848610 () Bool)

(assert (=> b!6848610 (= e!4129894 (h!72648 (t!380067 lt!2455888)))))

(declare-fun b!6848611 () Bool)

(assert (=> b!6848611 (= e!4129895 (getWitness!946 (t!380067 (t!380067 lt!2455888)) lambda!387176))))

(assert (= (and d!2152623 res!2795613) b!6848608))

(assert (= (and d!2152623 c!1274900) b!6848610))

(assert (= (and d!2152623 (not c!1274900)) b!6848609))

(assert (= (and b!6848609 c!1274899) b!6848611))

(assert (= (and b!6848609 (not c!1274899)) b!6848606))

(assert (= (and d!2152623 res!2795614) b!6848607))

(declare-fun b_lambda!258447 () Bool)

(assert (=> (not b_lambda!258447) (not b!6848608)))

(declare-fun b_lambda!258449 () Bool)

(assert (=> (not b_lambda!258449) (not d!2152623)))

(declare-fun m!7587988 () Bool)

(assert (=> b!6848608 m!7587988))

(declare-fun m!7587990 () Bool)

(assert (=> b!6848607 m!7587990))

(declare-fun m!7587992 () Bool)

(assert (=> b!6848611 m!7587992))

(declare-fun m!7587994 () Bool)

(assert (=> b!6848606 m!7587994))

(declare-fun m!7587996 () Bool)

(assert (=> d!2152623 m!7587996))

(declare-fun m!7587998 () Bool)

(assert (=> d!2152623 m!7587998))

(assert (=> b!6847812 d!2152623))

(declare-fun b!6848612 () Bool)

(declare-fun e!4129902 () Bool)

(declare-fun e!4129901 () Bool)

(assert (=> b!6848612 (= e!4129902 e!4129901)))

(declare-fun c!1274902 () Bool)

(assert (=> b!6848612 (= c!1274902 ((_ is EmptyLang!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun b!6848613 () Bool)

(declare-fun res!2795615 () Bool)

(declare-fun e!4129900 () Bool)

(assert (=> b!6848613 (=> res!2795615 e!4129900)))

(assert (=> b!6848613 (= res!2795615 (not ((_ is ElementMatch!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))))

(assert (=> b!6848613 (= e!4129901 e!4129900)))

(declare-fun b!6848614 () Bool)

(declare-fun lt!2456038 () Bool)

(assert (=> b!6848614 (= e!4129901 (not lt!2456038))))

(declare-fun b!6848615 () Bool)

(declare-fun res!2795618 () Bool)

(declare-fun e!4129903 () Bool)

(assert (=> b!6848615 (=> (not res!2795618) (not e!4129903))))

(declare-fun call!623711 () Bool)

(assert (=> b!6848615 (= res!2795618 (not call!623711))))

(declare-fun b!6848616 () Bool)

(declare-fun e!4129904 () Bool)

(assert (=> b!6848616 (= e!4129904 (not (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))))

(declare-fun b!6848617 () Bool)

(declare-fun res!2795617 () Bool)

(assert (=> b!6848617 (=> (not res!2795617) (not e!4129903))))

(assert (=> b!6848617 (= res!2795617 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6848618 () Bool)

(declare-fun res!2795621 () Bool)

(assert (=> b!6848618 (=> res!2795621 e!4129900)))

(assert (=> b!6848618 (= res!2795621 e!4129903)))

(declare-fun res!2795619 () Bool)

(assert (=> b!6848618 (=> (not res!2795619) (not e!4129903))))

(assert (=> b!6848618 (= res!2795619 lt!2456038)))

(declare-fun b!6848619 () Bool)

(declare-fun e!4129898 () Bool)

(assert (=> b!6848619 (= e!4129898 (nullable!6638 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun b!6848620 () Bool)

(assert (=> b!6848620 (= e!4129903 (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))))

(declare-fun b!6848621 () Bool)

(declare-fun res!2795622 () Bool)

(assert (=> b!6848621 (=> res!2795622 e!4129904)))

(assert (=> b!6848621 (= res!2795622 (not (isEmpty!38573 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun d!2152625 () Bool)

(assert (=> d!2152625 e!4129902))

(declare-fun c!1274901 () Bool)

(assert (=> d!2152625 (= c!1274901 ((_ is EmptyExpr!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(assert (=> d!2152625 (= lt!2456038 e!4129898)))

(declare-fun c!1274903 () Bool)

(assert (=> d!2152625 (= c!1274903 (isEmpty!38573 (tail!12804 s!2326)))))

(assert (=> d!2152625 (validRegex!8411 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))

(assert (=> d!2152625 (= (matchR!8858 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (tail!12804 s!2326)) lt!2456038)))

(declare-fun bm!623706 () Bool)

(assert (=> bm!623706 (= call!623711 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6848622 () Bool)

(declare-fun e!4129899 () Bool)

(assert (=> b!6848622 (= e!4129899 e!4129904)))

(declare-fun res!2795616 () Bool)

(assert (=> b!6848622 (=> res!2795616 e!4129904)))

(assert (=> b!6848622 (= res!2795616 call!623711)))

(declare-fun b!6848623 () Bool)

(assert (=> b!6848623 (= e!4129898 (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6848624 () Bool)

(assert (=> b!6848624 (= e!4129900 e!4129899)))

(declare-fun res!2795620 () Bool)

(assert (=> b!6848624 (=> (not res!2795620) (not e!4129899))))

(assert (=> b!6848624 (= res!2795620 (not lt!2456038))))

(declare-fun b!6848625 () Bool)

(assert (=> b!6848625 (= e!4129902 (= lt!2456038 call!623711))))

(assert (= (and d!2152625 c!1274903) b!6848619))

(assert (= (and d!2152625 (not c!1274903)) b!6848623))

(assert (= (and d!2152625 c!1274901) b!6848625))

(assert (= (and d!2152625 (not c!1274901)) b!6848612))

(assert (= (and b!6848612 c!1274902) b!6848614))

(assert (= (and b!6848612 (not c!1274902)) b!6848613))

(assert (= (and b!6848613 (not res!2795615)) b!6848618))

(assert (= (and b!6848618 res!2795619) b!6848615))

(assert (= (and b!6848615 res!2795618) b!6848617))

(assert (= (and b!6848617 res!2795617) b!6848620))

(assert (= (and b!6848618 (not res!2795621)) b!6848624))

(assert (= (and b!6848624 res!2795620) b!6848622))

(assert (= (and b!6848622 (not res!2795616)) b!6848621))

(assert (= (and b!6848621 (not res!2795622)) b!6848616))

(assert (= (or b!6848625 b!6848615 b!6848622) bm!623706))

(assert (=> bm!623706 m!7587364))

(assert (=> bm!623706 m!7587370))

(assert (=> b!6848623 m!7587364))

(assert (=> b!6848623 m!7587932))

(assert (=> b!6848623 m!7587508))

(assert (=> b!6848623 m!7587932))

(declare-fun m!7588000 () Bool)

(assert (=> b!6848623 m!7588000))

(assert (=> b!6848623 m!7587364))

(assert (=> b!6848623 m!7587936))

(assert (=> b!6848623 m!7588000))

(assert (=> b!6848623 m!7587936))

(declare-fun m!7588002 () Bool)

(assert (=> b!6848623 m!7588002))

(assert (=> b!6848619 m!7587508))

(declare-fun m!7588004 () Bool)

(assert (=> b!6848619 m!7588004))

(assert (=> b!6848617 m!7587364))

(assert (=> b!6848617 m!7587936))

(assert (=> b!6848617 m!7587936))

(assert (=> b!6848617 m!7587942))

(assert (=> b!6848621 m!7587364))

(assert (=> b!6848621 m!7587936))

(assert (=> b!6848621 m!7587936))

(assert (=> b!6848621 m!7587942))

(assert (=> d!2152625 m!7587364))

(assert (=> d!2152625 m!7587370))

(assert (=> d!2152625 m!7587508))

(declare-fun m!7588006 () Bool)

(assert (=> d!2152625 m!7588006))

(assert (=> b!6848620 m!7587364))

(assert (=> b!6848620 m!7587932))

(assert (=> b!6848616 m!7587364))

(assert (=> b!6848616 m!7587932))

(assert (=> b!6847905 d!2152625))

(declare-fun b!6848627 () Bool)

(declare-fun e!4129906 () Regex!16675)

(declare-fun call!623712 () Regex!16675)

(assert (=> b!6848627 (= e!4129906 (Union!16675 (Concat!25520 call!623712 (regTwo!33862 lt!2455885)) EmptyLang!16675))))

(declare-fun bm!623707 () Bool)

(declare-fun call!623715 () Regex!16675)

(assert (=> bm!623707 (= call!623712 call!623715)))

(declare-fun bm!623708 () Bool)

(declare-fun call!623714 () Regex!16675)

(assert (=> bm!623708 (= call!623715 call!623714)))

(declare-fun b!6848628 () Bool)

(declare-fun e!4129908 () Regex!16675)

(assert (=> b!6848628 (= e!4129908 EmptyLang!16675)))

(declare-fun b!6848629 () Bool)

(declare-fun e!4129909 () Regex!16675)

(assert (=> b!6848629 (= e!4129909 (Concat!25520 call!623715 lt!2455885))))

(declare-fun bm!623709 () Bool)

(declare-fun c!1274905 () Bool)

(declare-fun call!623713 () Regex!16675)

(assert (=> bm!623709 (= call!623713 (derivativeStep!5321 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)) (head!13727 s!2326)))))

(declare-fun b!6848630 () Bool)

(declare-fun e!4129905 () Regex!16675)

(assert (=> b!6848630 (= e!4129905 (Union!16675 call!623713 call!623714))))

(declare-fun b!6848631 () Bool)

(assert (=> b!6848631 (= e!4129906 (Union!16675 (Concat!25520 call!623713 (regTwo!33862 lt!2455885)) call!623712))))

(declare-fun b!6848632 () Bool)

(assert (=> b!6848632 (= c!1274905 ((_ is Union!16675) lt!2455885))))

(declare-fun e!4129907 () Regex!16675)

(assert (=> b!6848632 (= e!4129907 e!4129905)))

(declare-fun b!6848626 () Bool)

(assert (=> b!6848626 (= e!4129905 e!4129909)))

(declare-fun c!1274908 () Bool)

(assert (=> b!6848626 (= c!1274908 ((_ is Star!16675) lt!2455885))))

(declare-fun d!2152627 () Bool)

(declare-fun lt!2456039 () Regex!16675)

(assert (=> d!2152627 (validRegex!8411 lt!2456039)))

(assert (=> d!2152627 (= lt!2456039 e!4129908)))

(declare-fun c!1274904 () Bool)

(assert (=> d!2152627 (= c!1274904 (or ((_ is EmptyExpr!16675) lt!2455885) ((_ is EmptyLang!16675) lt!2455885)))))

(assert (=> d!2152627 (validRegex!8411 lt!2455885)))

(assert (=> d!2152627 (= (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) lt!2456039)))

(declare-fun b!6848633 () Bool)

(declare-fun c!1274907 () Bool)

(assert (=> b!6848633 (= c!1274907 (nullable!6638 (regOne!33862 lt!2455885)))))

(assert (=> b!6848633 (= e!4129909 e!4129906)))

(declare-fun bm!623710 () Bool)

(assert (=> bm!623710 (= call!623714 (derivativeStep!5321 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))) (head!13727 s!2326)))))

(declare-fun b!6848634 () Bool)

(assert (=> b!6848634 (= e!4129908 e!4129907)))

(declare-fun c!1274906 () Bool)

(assert (=> b!6848634 (= c!1274906 ((_ is ElementMatch!16675) lt!2455885))))

(declare-fun b!6848635 () Bool)

(assert (=> b!6848635 (= e!4129907 (ite (= (head!13727 s!2326) (c!1274613 lt!2455885)) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2152627 c!1274904) b!6848628))

(assert (= (and d!2152627 (not c!1274904)) b!6848634))

(assert (= (and b!6848634 c!1274906) b!6848635))

(assert (= (and b!6848634 (not c!1274906)) b!6848632))

(assert (= (and b!6848632 c!1274905) b!6848630))

(assert (= (and b!6848632 (not c!1274905)) b!6848626))

(assert (= (and b!6848626 c!1274908) b!6848629))

(assert (= (and b!6848626 (not c!1274908)) b!6848633))

(assert (= (and b!6848633 c!1274907) b!6848631))

(assert (= (and b!6848633 (not c!1274907)) b!6848627))

(assert (= (or b!6848631 b!6848627) bm!623707))

(assert (= (or b!6848629 bm!623707) bm!623708))

(assert (= (or b!6848630 bm!623708) bm!623710))

(assert (= (or b!6848630 b!6848631) bm!623709))

(assert (=> bm!623709 m!7587360))

(declare-fun m!7588008 () Bool)

(assert (=> bm!623709 m!7588008))

(declare-fun m!7588010 () Bool)

(assert (=> d!2152627 m!7588010))

(assert (=> d!2152627 m!7587238))

(declare-fun m!7588012 () Bool)

(assert (=> b!6848633 m!7588012))

(assert (=> bm!623710 m!7587360))

(declare-fun m!7588014 () Bool)

(assert (=> bm!623710 m!7588014))

(assert (=> b!6847905 d!2152627))

(assert (=> b!6847905 d!2152609))

(assert (=> b!6847905 d!2152611))

(assert (=> b!6847903 d!2152617))

(assert (=> b!6847903 d!2152611))

(declare-fun d!2152629 () Bool)

(assert (=> d!2152629 (= (nullable!6638 r!7292) (nullableFct!2522 r!7292))))

(declare-fun bs!1830547 () Bool)

(assert (= bs!1830547 d!2152629))

(declare-fun m!7588016 () Bool)

(assert (=> bs!1830547 m!7588016))

(assert (=> b!6847692 d!2152629))

(declare-fun d!2152631 () Bool)

(declare-fun res!2795627 () Bool)

(declare-fun e!4129914 () Bool)

(assert (=> d!2152631 (=> res!2795627 e!4129914)))

(assert (=> d!2152631 (= res!2795627 ((_ is Nil!66201) lt!2455945))))

(assert (=> d!2152631 (= (noDuplicate!2441 lt!2455945) e!4129914)))

(declare-fun b!6848640 () Bool)

(declare-fun e!4129915 () Bool)

(assert (=> b!6848640 (= e!4129914 e!4129915)))

(declare-fun res!2795628 () Bool)

(assert (=> b!6848640 (=> (not res!2795628) (not e!4129915))))

(assert (=> b!6848640 (= res!2795628 (not (contains!20327 (t!380068 lt!2455945) (h!72649 lt!2455945))))))

(declare-fun b!6848641 () Bool)

(assert (=> b!6848641 (= e!4129915 (noDuplicate!2441 (t!380068 lt!2455945)))))

(assert (= (and d!2152631 (not res!2795627)) b!6848640))

(assert (= (and b!6848640 res!2795628) b!6848641))

(declare-fun m!7588018 () Bool)

(assert (=> b!6848640 m!7588018))

(declare-fun m!7588020 () Bool)

(assert (=> b!6848641 m!7588020))

(assert (=> d!2152371 d!2152631))

(declare-fun d!2152633 () Bool)

(declare-fun e!4129922 () Bool)

(assert (=> d!2152633 e!4129922))

(declare-fun res!2795633 () Bool)

(assert (=> d!2152633 (=> (not res!2795633) (not e!4129922))))

(declare-fun res!2795634 () List!66325)

(assert (=> d!2152633 (= res!2795633 (noDuplicate!2441 res!2795634))))

(declare-fun e!4129923 () Bool)

(assert (=> d!2152633 e!4129923))

(assert (=> d!2152633 (= (choose!51048 (store ((as const (Array Context!12118 Bool)) false) lt!2455879 true)) res!2795634)))

(declare-fun b!6848649 () Bool)

(declare-fun e!4129924 () Bool)

(declare-fun tp!1876457 () Bool)

(assert (=> b!6848649 (= e!4129924 tp!1876457)))

(declare-fun b!6848648 () Bool)

(declare-fun tp!1876456 () Bool)

(assert (=> b!6848648 (= e!4129923 (and (inv!84934 (h!72649 res!2795634)) e!4129924 tp!1876456))))

(declare-fun b!6848650 () Bool)

(assert (=> b!6848650 (= e!4129922 (= (content!12981 res!2795634) (store ((as const (Array Context!12118 Bool)) false) lt!2455879 true)))))

(assert (= b!6848648 b!6848649))

(assert (= (and d!2152633 ((_ is Cons!66201) res!2795634)) b!6848648))

(assert (= (and d!2152633 res!2795633) b!6848650))

(declare-fun m!7588022 () Bool)

(assert (=> d!2152633 m!7588022))

(declare-fun m!7588024 () Bool)

(assert (=> b!6848648 m!7588024))

(declare-fun m!7588026 () Bool)

(assert (=> b!6848650 m!7588026))

(assert (=> d!2152371 d!2152633))

(declare-fun d!2152635 () Bool)

(declare-fun lt!2456040 () Bool)

(assert (=> d!2152635 (= lt!2456040 (select (content!12982 lt!2455888) lt!2455953))))

(declare-fun e!4129926 () Bool)

(assert (=> d!2152635 (= lt!2456040 e!4129926)))

(declare-fun res!2795635 () Bool)

(assert (=> d!2152635 (=> (not res!2795635) (not e!4129926))))

(assert (=> d!2152635 (= res!2795635 ((_ is Cons!66200) lt!2455888))))

(assert (=> d!2152635 (= (contains!20325 lt!2455888 lt!2455953) lt!2456040)))

(declare-fun b!6848651 () Bool)

(declare-fun e!4129925 () Bool)

(assert (=> b!6848651 (= e!4129926 e!4129925)))

(declare-fun res!2795636 () Bool)

(assert (=> b!6848651 (=> res!2795636 e!4129925)))

(assert (=> b!6848651 (= res!2795636 (= (h!72648 lt!2455888) lt!2455953))))

(declare-fun b!6848652 () Bool)

(assert (=> b!6848652 (= e!4129925 (contains!20325 (t!380067 lt!2455888) lt!2455953))))

(assert (= (and d!2152635 res!2795635) b!6848651))

(assert (= (and b!6848651 (not res!2795636)) b!6848652))

(assert (=> d!2152635 m!7587420))

(declare-fun m!7588028 () Bool)

(assert (=> d!2152635 m!7588028))

(declare-fun m!7588030 () Bool)

(assert (=> b!6848652 m!7588030))

(assert (=> b!6847808 d!2152635))

(declare-fun d!2152637 () Bool)

(assert (=> d!2152637 (= (nullable!6638 lt!2455885) (nullableFct!2522 lt!2455885))))

(declare-fun bs!1830548 () Bool)

(assert (= bs!1830548 d!2152637))

(declare-fun m!7588032 () Bool)

(assert (=> bs!1830548 m!7588032))

(assert (=> b!6847901 d!2152637))

(assert (=> b!6847690 d!2152617))

(assert (=> b!6847690 d!2152611))

(assert (=> b!6847899 d!2152617))

(assert (=> b!6847899 d!2152611))

(declare-fun b!6848653 () Bool)

(declare-fun e!4129928 () Bool)

(declare-fun call!623716 () Bool)

(assert (=> b!6848653 (= e!4129928 call!623716)))

(declare-fun b!6848654 () Bool)

(declare-fun e!4129932 () Bool)

(declare-fun e!4129930 () Bool)

(assert (=> b!6848654 (= e!4129932 e!4129930)))

(declare-fun c!1274910 () Bool)

(assert (=> b!6848654 (= c!1274910 ((_ is Star!16675) (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun b!6848655 () Bool)

(declare-fun e!4129929 () Bool)

(declare-fun call!623717 () Bool)

(assert (=> b!6848655 (= e!4129929 call!623717)))

(declare-fun b!6848656 () Bool)

(declare-fun e!4129931 () Bool)

(assert (=> b!6848656 (= e!4129931 e!4129929)))

(declare-fun res!2795637 () Bool)

(assert (=> b!6848656 (=> (not res!2795637) (not e!4129929))))

(declare-fun call!623718 () Bool)

(assert (=> b!6848656 (= res!2795637 call!623718)))

(declare-fun bm!623711 () Bool)

(declare-fun c!1274909 () Bool)

(assert (=> bm!623711 (= call!623718 (validRegex!8411 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))

(declare-fun b!6848657 () Bool)

(assert (=> b!6848657 (= e!4129930 e!4129928)))

(declare-fun res!2795640 () Bool)

(assert (=> b!6848657 (= res!2795640 (not (nullable!6638 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))

(assert (=> b!6848657 (=> (not res!2795640) (not e!4129928))))

(declare-fun bm!623712 () Bool)

(assert (=> bm!623712 (= call!623717 call!623716)))

(declare-fun b!6848658 () Bool)

(declare-fun e!4129927 () Bool)

(assert (=> b!6848658 (= e!4129930 e!4129927)))

(assert (=> b!6848658 (= c!1274909 ((_ is Union!16675) (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun b!6848659 () Bool)

(declare-fun e!4129933 () Bool)

(assert (=> b!6848659 (= e!4129933 call!623717)))

(declare-fun bm!623713 () Bool)

(assert (=> bm!623713 (= call!623716 (validRegex!8411 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))

(declare-fun b!6848660 () Bool)

(declare-fun res!2795639 () Bool)

(assert (=> b!6848660 (=> (not res!2795639) (not e!4129933))))

(assert (=> b!6848660 (= res!2795639 call!623718)))

(assert (=> b!6848660 (= e!4129927 e!4129933)))

(declare-fun d!2152639 () Bool)

(declare-fun res!2795641 () Bool)

(assert (=> d!2152639 (=> res!2795641 e!4129932)))

(assert (=> d!2152639 (= res!2795641 ((_ is ElementMatch!16675) (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(assert (=> d!2152639 (= (validRegex!8411 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) e!4129932)))

(declare-fun b!6848661 () Bool)

(declare-fun res!2795638 () Bool)

(assert (=> b!6848661 (=> res!2795638 e!4129931)))

(assert (=> b!6848661 (= res!2795638 (not ((_ is Concat!25520) (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))

(assert (=> b!6848661 (= e!4129927 e!4129931)))

(assert (= (and d!2152639 (not res!2795641)) b!6848654))

(assert (= (and b!6848654 c!1274910) b!6848657))

(assert (= (and b!6848654 (not c!1274910)) b!6848658))

(assert (= (and b!6848657 res!2795640) b!6848653))

(assert (= (and b!6848658 c!1274909) b!6848660))

(assert (= (and b!6848658 (not c!1274909)) b!6848661))

(assert (= (and b!6848660 res!2795639) b!6848659))

(assert (= (and b!6848661 (not res!2795638)) b!6848656))

(assert (= (and b!6848656 res!2795637) b!6848655))

(assert (= (or b!6848659 b!6848655) bm!623712))

(assert (= (or b!6848660 b!6848656) bm!623711))

(assert (= (or b!6848653 bm!623712) bm!623713))

(declare-fun m!7588034 () Bool)

(assert (=> bm!623711 m!7588034))

(declare-fun m!7588036 () Bool)

(assert (=> b!6848657 m!7588036))

(declare-fun m!7588038 () Bool)

(assert (=> bm!623713 m!7588038))

(assert (=> bm!623631 d!2152639))

(declare-fun b!6848662 () Bool)

(declare-fun e!4129935 () Bool)

(declare-fun call!623719 () Bool)

(assert (=> b!6848662 (= e!4129935 call!623719)))

(declare-fun b!6848663 () Bool)

(declare-fun e!4129939 () Bool)

(declare-fun e!4129937 () Bool)

(assert (=> b!6848663 (= e!4129939 e!4129937)))

(declare-fun c!1274912 () Bool)

(assert (=> b!6848663 (= c!1274912 ((_ is Star!16675) lt!2455953))))

(declare-fun b!6848664 () Bool)

(declare-fun e!4129936 () Bool)

(declare-fun call!623720 () Bool)

(assert (=> b!6848664 (= e!4129936 call!623720)))

(declare-fun b!6848665 () Bool)

(declare-fun e!4129938 () Bool)

(assert (=> b!6848665 (= e!4129938 e!4129936)))

(declare-fun res!2795642 () Bool)

(assert (=> b!6848665 (=> (not res!2795642) (not e!4129936))))

(declare-fun call!623721 () Bool)

(assert (=> b!6848665 (= res!2795642 call!623721)))

(declare-fun bm!623714 () Bool)

(declare-fun c!1274911 () Bool)

(assert (=> bm!623714 (= call!623721 (validRegex!8411 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))))))

(declare-fun b!6848666 () Bool)

(assert (=> b!6848666 (= e!4129937 e!4129935)))

(declare-fun res!2795645 () Bool)

(assert (=> b!6848666 (= res!2795645 (not (nullable!6638 (reg!17004 lt!2455953))))))

(assert (=> b!6848666 (=> (not res!2795645) (not e!4129935))))

(declare-fun bm!623715 () Bool)

(assert (=> bm!623715 (= call!623720 call!623719)))

(declare-fun b!6848667 () Bool)

(declare-fun e!4129934 () Bool)

(assert (=> b!6848667 (= e!4129937 e!4129934)))

(assert (=> b!6848667 (= c!1274911 ((_ is Union!16675) lt!2455953))))

(declare-fun b!6848668 () Bool)

(declare-fun e!4129940 () Bool)

(assert (=> b!6848668 (= e!4129940 call!623720)))

(declare-fun bm!623716 () Bool)

(assert (=> bm!623716 (= call!623719 (validRegex!8411 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))))))

(declare-fun b!6848669 () Bool)

(declare-fun res!2795644 () Bool)

(assert (=> b!6848669 (=> (not res!2795644) (not e!4129940))))

(assert (=> b!6848669 (= res!2795644 call!623721)))

(assert (=> b!6848669 (= e!4129934 e!4129940)))

(declare-fun d!2152641 () Bool)

(declare-fun res!2795646 () Bool)

(assert (=> d!2152641 (=> res!2795646 e!4129939)))

(assert (=> d!2152641 (= res!2795646 ((_ is ElementMatch!16675) lt!2455953))))

(assert (=> d!2152641 (= (validRegex!8411 lt!2455953) e!4129939)))

(declare-fun b!6848670 () Bool)

(declare-fun res!2795643 () Bool)

(assert (=> b!6848670 (=> res!2795643 e!4129938)))

(assert (=> b!6848670 (= res!2795643 (not ((_ is Concat!25520) lt!2455953)))))

(assert (=> b!6848670 (= e!4129934 e!4129938)))

(assert (= (and d!2152641 (not res!2795646)) b!6848663))

(assert (= (and b!6848663 c!1274912) b!6848666))

(assert (= (and b!6848663 (not c!1274912)) b!6848667))

(assert (= (and b!6848666 res!2795645) b!6848662))

(assert (= (and b!6848667 c!1274911) b!6848669))

(assert (= (and b!6848667 (not c!1274911)) b!6848670))

(assert (= (and b!6848669 res!2795644) b!6848668))

(assert (= (and b!6848670 (not res!2795643)) b!6848665))

(assert (= (and b!6848665 res!2795642) b!6848664))

(assert (= (or b!6848668 b!6848664) bm!623715))

(assert (= (or b!6848669 b!6848665) bm!623714))

(assert (= (or b!6848662 bm!623715) bm!623716))

(declare-fun m!7588040 () Bool)

(assert (=> bm!623714 m!7588040))

(declare-fun m!7588042 () Bool)

(assert (=> b!6848666 m!7588042))

(declare-fun m!7588044 () Bool)

(assert (=> bm!623716 m!7588044))

(assert (=> bs!1830369 d!2152641))

(assert (=> b!6847689 d!2152609))

(declare-fun d!2152643 () Bool)

(declare-fun c!1274915 () Bool)

(assert (=> d!2152643 (= c!1274915 ((_ is Nil!66201) lt!2455945))))

(declare-fun e!4129943 () (InoxSet Context!12118))

(assert (=> d!2152643 (= (content!12981 lt!2455945) e!4129943)))

(declare-fun b!6848675 () Bool)

(assert (=> b!6848675 (= e!4129943 ((as const (Array Context!12118 Bool)) false))))

(declare-fun b!6848676 () Bool)

(assert (=> b!6848676 (= e!4129943 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) (h!72649 lt!2455945) true) (content!12981 (t!380068 lt!2455945))))))

(assert (= (and d!2152643 c!1274915) b!6848675))

(assert (= (and d!2152643 (not c!1274915)) b!6848676))

(declare-fun m!7588046 () Bool)

(assert (=> b!6848676 m!7588046))

(declare-fun m!7588048 () Bool)

(assert (=> b!6848676 m!7588048))

(assert (=> b!6847761 d!2152643))

(declare-fun bs!1830549 () Bool)

(declare-fun d!2152645 () Bool)

(assert (= bs!1830549 (and d!2152645 b!6847411)))

(declare-fun lambda!387268 () Int)

(assert (=> bs!1830549 (not (= lambda!387268 lambda!387177))))

(declare-fun bs!1830550 () Bool)

(assert (= bs!1830550 (and d!2152645 d!2152415)))

(assert (=> bs!1830550 (= (= lambda!387233 lambda!387177) (= lambda!387268 lambda!387230))))

(declare-fun bs!1830551 () Bool)

(assert (= bs!1830551 (and d!2152645 d!2152417)))

(assert (=> bs!1830551 (not (= lambda!387268 lambda!387233))))

(assert (=> d!2152645 true))

(assert (=> d!2152645 (< (dynLambda!26458 order!27655 lambda!387233) (dynLambda!26458 order!27655 lambda!387268))))

(assert (=> d!2152645 (= (exists!2777 zl!343 lambda!387233) (not (forall!15854 zl!343 lambda!387268)))))

(declare-fun bs!1830552 () Bool)

(assert (= bs!1830552 d!2152645))

(declare-fun m!7588050 () Bool)

(assert (=> bs!1830552 m!7588050))

(assert (=> d!2152417 d!2152645))

(declare-fun bs!1830553 () Bool)

(declare-fun d!2152647 () Bool)

(assert (= bs!1830553 (and d!2152647 b!6847411)))

(declare-fun lambda!387271 () Int)

(assert (=> bs!1830553 (= lambda!387271 lambda!387177)))

(declare-fun bs!1830554 () Bool)

(assert (= bs!1830554 (and d!2152647 d!2152415)))

(assert (=> bs!1830554 (not (= lambda!387271 lambda!387230))))

(declare-fun bs!1830555 () Bool)

(assert (= bs!1830555 (and d!2152647 d!2152417)))

(assert (=> bs!1830555 (= lambda!387271 lambda!387233)))

(declare-fun bs!1830556 () Bool)

(assert (= bs!1830556 (and d!2152647 d!2152645)))

(assert (=> bs!1830556 (not (= lambda!387271 lambda!387268))))

(assert (=> d!2152647 true))

(assert (=> d!2152647 (exists!2777 zl!343 lambda!387271)))

(assert (=> d!2152647 true))

(declare-fun _$46!2033 () Unit!160065)

(assert (=> d!2152647 (= (choose!51051 zl!343 lt!2455885) _$46!2033)))

(declare-fun bs!1830557 () Bool)

(assert (= bs!1830557 d!2152647))

(declare-fun m!7588052 () Bool)

(assert (=> bs!1830557 m!7588052))

(assert (=> d!2152417 d!2152647))

(declare-fun d!2152649 () Bool)

(declare-fun lt!2456041 () Bool)

(assert (=> d!2152649 (= lt!2456041 (select (content!12982 (unfocusZipperList!2092 zl!343)) lt!2455885))))

(declare-fun e!4129945 () Bool)

(assert (=> d!2152649 (= lt!2456041 e!4129945)))

(declare-fun res!2795647 () Bool)

(assert (=> d!2152649 (=> (not res!2795647) (not e!4129945))))

(assert (=> d!2152649 (= res!2795647 ((_ is Cons!66200) (unfocusZipperList!2092 zl!343)))))

(assert (=> d!2152649 (= (contains!20325 (unfocusZipperList!2092 zl!343) lt!2455885) lt!2456041)))

(declare-fun b!6848677 () Bool)

(declare-fun e!4129944 () Bool)

(assert (=> b!6848677 (= e!4129945 e!4129944)))

(declare-fun res!2795648 () Bool)

(assert (=> b!6848677 (=> res!2795648 e!4129944)))

(assert (=> b!6848677 (= res!2795648 (= (h!72648 (unfocusZipperList!2092 zl!343)) lt!2455885))))

(declare-fun b!6848678 () Bool)

(assert (=> b!6848678 (= e!4129944 (contains!20325 (t!380067 (unfocusZipperList!2092 zl!343)) lt!2455885))))

(assert (= (and d!2152649 res!2795647) b!6848677))

(assert (= (and b!6848677 (not res!2795648)) b!6848678))

(assert (=> d!2152649 m!7587236))

(declare-fun m!7588054 () Bool)

(assert (=> d!2152649 m!7588054))

(declare-fun m!7588056 () Bool)

(assert (=> d!2152649 m!7588056))

(declare-fun m!7588058 () Bool)

(assert (=> b!6848678 m!7588058))

(assert (=> d!2152417 d!2152649))

(assert (=> d!2152417 d!2152409))

(assert (=> bm!623605 d!2152581))

(declare-fun b!6848679 () Bool)

(declare-fun e!4129947 () Bool)

(declare-fun call!623722 () Bool)

(assert (=> b!6848679 (= e!4129947 call!623722)))

(declare-fun b!6848680 () Bool)

(declare-fun e!4129951 () Bool)

(declare-fun e!4129949 () Bool)

(assert (=> b!6848680 (= e!4129951 e!4129949)))

(declare-fun c!1274919 () Bool)

(assert (=> b!6848680 (= c!1274919 ((_ is Star!16675) (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun b!6848681 () Bool)

(declare-fun e!4129948 () Bool)

(declare-fun call!623723 () Bool)

(assert (=> b!6848681 (= e!4129948 call!623723)))

(declare-fun b!6848682 () Bool)

(declare-fun e!4129950 () Bool)

(assert (=> b!6848682 (= e!4129950 e!4129948)))

(declare-fun res!2795649 () Bool)

(assert (=> b!6848682 (=> (not res!2795649) (not e!4129948))))

(declare-fun call!623724 () Bool)

(assert (=> b!6848682 (= res!2795649 call!623724)))

(declare-fun bm!623717 () Bool)

(declare-fun c!1274918 () Bool)

(assert (=> bm!623717 (= call!623724 (validRegex!8411 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))

(declare-fun b!6848683 () Bool)

(assert (=> b!6848683 (= e!4129949 e!4129947)))

(declare-fun res!2795652 () Bool)

(assert (=> b!6848683 (= res!2795652 (not (nullable!6638 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))

(assert (=> b!6848683 (=> (not res!2795652) (not e!4129947))))

(declare-fun bm!623718 () Bool)

(assert (=> bm!623718 (= call!623723 call!623722)))

(declare-fun b!6848684 () Bool)

(declare-fun e!4129946 () Bool)

(assert (=> b!6848684 (= e!4129949 e!4129946)))

(assert (=> b!6848684 (= c!1274918 ((_ is Union!16675) (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun b!6848685 () Bool)

(declare-fun e!4129952 () Bool)

(assert (=> b!6848685 (= e!4129952 call!623723)))

(declare-fun bm!623719 () Bool)

(assert (=> bm!623719 (= call!623722 (validRegex!8411 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))

(declare-fun b!6848686 () Bool)

(declare-fun res!2795651 () Bool)

(assert (=> b!6848686 (=> (not res!2795651) (not e!4129952))))

(assert (=> b!6848686 (= res!2795651 call!623724)))

(assert (=> b!6848686 (= e!4129946 e!4129952)))

(declare-fun d!2152651 () Bool)

(declare-fun res!2795653 () Bool)

(assert (=> d!2152651 (=> res!2795653 e!4129951)))

(assert (=> d!2152651 (= res!2795653 ((_ is ElementMatch!16675) (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(assert (=> d!2152651 (= (validRegex!8411 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) e!4129951)))

(declare-fun b!6848687 () Bool)

(declare-fun res!2795650 () Bool)

(assert (=> b!6848687 (=> res!2795650 e!4129950)))

(assert (=> b!6848687 (= res!2795650 (not ((_ is Concat!25520) (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))

(assert (=> b!6848687 (= e!4129946 e!4129950)))

(assert (= (and d!2152651 (not res!2795653)) b!6848680))

(assert (= (and b!6848680 c!1274919) b!6848683))

(assert (= (and b!6848680 (not c!1274919)) b!6848684))

(assert (= (and b!6848683 res!2795652) b!6848679))

(assert (= (and b!6848684 c!1274918) b!6848686))

(assert (= (and b!6848684 (not c!1274918)) b!6848687))

(assert (= (and b!6848686 res!2795651) b!6848685))

(assert (= (and b!6848687 (not res!2795650)) b!6848682))

(assert (= (and b!6848682 res!2795649) b!6848681))

(assert (= (or b!6848685 b!6848681) bm!623718))

(assert (= (or b!6848686 b!6848682) bm!623717))

(assert (= (or b!6848679 bm!623718) bm!623719))

(declare-fun m!7588060 () Bool)

(assert (=> bm!623717 m!7588060))

(declare-fun m!7588062 () Bool)

(assert (=> b!6848683 m!7588062))

(declare-fun m!7588064 () Bool)

(assert (=> bm!623719 m!7588064))

(assert (=> bm!623628 d!2152651))

(assert (=> b!6847898 d!2152609))

(declare-fun d!2152653 () Bool)

(declare-fun res!2795654 () Bool)

(declare-fun e!4129953 () Bool)

(assert (=> d!2152653 (=> res!2795654 e!4129953)))

(assert (=> d!2152653 (= res!2795654 ((_ is Nil!66200) lt!2455979))))

(assert (=> d!2152653 (= (forall!15853 lt!2455979 lambda!387226) e!4129953)))

(declare-fun b!6848688 () Bool)

(declare-fun e!4129954 () Bool)

(assert (=> b!6848688 (= e!4129953 e!4129954)))

(declare-fun res!2795655 () Bool)

(assert (=> b!6848688 (=> (not res!2795655) (not e!4129954))))

(assert (=> b!6848688 (= res!2795655 (dynLambda!26455 lambda!387226 (h!72648 lt!2455979)))))

(declare-fun b!6848689 () Bool)

(assert (=> b!6848689 (= e!4129954 (forall!15853 (t!380067 lt!2455979) lambda!387226))))

(assert (= (and d!2152653 (not res!2795654)) b!6848688))

(assert (= (and b!6848688 res!2795655) b!6848689))

(declare-fun b_lambda!258451 () Bool)

(assert (=> (not b_lambda!258451) (not b!6848688)))

(declare-fun m!7588066 () Bool)

(assert (=> b!6848688 m!7588066))

(declare-fun m!7588068 () Bool)

(assert (=> b!6848689 m!7588068))

(assert (=> d!2152409 d!2152653))

(declare-fun d!2152655 () Bool)

(declare-fun choose!51053 (Int) Bool)

(assert (=> d!2152655 (= (Exists!3737 (ite c!1274654 lambda!387199 lambda!387200)) (choose!51053 (ite c!1274654 lambda!387199 lambda!387200)))))

(declare-fun bs!1830558 () Bool)

(assert (= bs!1830558 d!2152655))

(declare-fun m!7588070 () Bool)

(assert (=> bs!1830558 m!7588070))

(assert (=> bm!623604 d!2152655))

(declare-fun b!6848706 () Bool)

(declare-fun e!4129965 () Int)

(declare-fun call!623731 () Int)

(assert (=> b!6848706 (= e!4129965 (+ 1 call!623731))))

(declare-fun d!2152657 () Bool)

(declare-fun lt!2456044 () Int)

(assert (=> d!2152657 (> lt!2456044 0)))

(declare-fun e!4129964 () Int)

(assert (=> d!2152657 (= lt!2456044 e!4129964)))

(declare-fun c!1274931 () Bool)

(assert (=> d!2152657 (= c!1274931 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 lt!2455879))))))

(assert (=> d!2152657 (= (regexDepthTotal!249 (h!72648 (exprs!6559 lt!2455879))) lt!2456044)))

(declare-fun b!6848707 () Bool)

(declare-fun e!4129963 () Int)

(declare-fun call!623733 () Int)

(declare-fun call!623732 () Int)

(assert (=> b!6848707 (= e!4129963 (+ 1 call!623733 call!623732))))

(declare-fun b!6848708 () Bool)

(declare-fun e!4129966 () Int)

(assert (=> b!6848708 (= e!4129963 e!4129966)))

(declare-fun c!1274929 () Bool)

(assert (=> b!6848708 (= c!1274929 ((_ is Concat!25520) (h!72648 (exprs!6559 lt!2455879))))))

(declare-fun c!1274930 () Bool)

(declare-fun c!1274928 () Bool)

(declare-fun bm!623726 () Bool)

(assert (=> bm!623726 (= call!623731 (regexDepthTotal!249 (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))))))

(declare-fun bm!623727 () Bool)

(assert (=> bm!623727 (= call!623733 (regexDepthTotal!249 (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))))))

(declare-fun b!6848709 () Bool)

(assert (=> b!6848709 (= e!4129964 1)))

(declare-fun bm!623728 () Bool)

(assert (=> bm!623728 (= call!623732 call!623731)))

(declare-fun b!6848710 () Bool)

(assert (=> b!6848710 (= e!4129964 e!4129965)))

(assert (=> b!6848710 (= c!1274930 ((_ is Star!16675) (h!72648 (exprs!6559 lt!2455879))))))

(declare-fun b!6848711 () Bool)

(assert (=> b!6848711 (= e!4129966 1)))

(declare-fun b!6848712 () Bool)

(assert (=> b!6848712 (= e!4129966 (+ 1 call!623733 call!623732))))

(declare-fun b!6848713 () Bool)

(assert (=> b!6848713 (= c!1274928 ((_ is Union!16675) (h!72648 (exprs!6559 lt!2455879))))))

(assert (=> b!6848713 (= e!4129965 e!4129963)))

(assert (= (and d!2152657 c!1274931) b!6848709))

(assert (= (and d!2152657 (not c!1274931)) b!6848710))

(assert (= (and b!6848710 c!1274930) b!6848706))

(assert (= (and b!6848710 (not c!1274930)) b!6848713))

(assert (= (and b!6848713 c!1274928) b!6848707))

(assert (= (and b!6848713 (not c!1274928)) b!6848708))

(assert (= (and b!6848708 c!1274929) b!6848712))

(assert (= (and b!6848708 (not c!1274929)) b!6848711))

(assert (= (or b!6848707 b!6848712) bm!623728))

(assert (= (or b!6848707 b!6848712) bm!623727))

(assert (= (or b!6848706 bm!623728) bm!623726))

(declare-fun m!7588072 () Bool)

(assert (=> bm!623726 m!7588072))

(declare-fun m!7588074 () Bool)

(assert (=> bm!623727 m!7588074))

(assert (=> b!6847843 d!2152657))

(declare-fun d!2152659 () Bool)

(declare-fun lt!2456045 () Int)

(assert (=> d!2152659 (>= lt!2456045 0)))

(declare-fun e!4129967 () Int)

(assert (=> d!2152659 (= lt!2456045 e!4129967)))

(declare-fun c!1274932 () Bool)

(assert (=> d!2152659 (= c!1274932 ((_ is Cons!66200) (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879))))))))

(assert (=> d!2152659 (= (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))) lt!2456045)))

(declare-fun b!6848714 () Bool)

(assert (=> b!6848714 (= e!4129967 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))))))))

(declare-fun b!6848715 () Bool)

(assert (=> b!6848715 (= e!4129967 1)))

(assert (= (and d!2152659 c!1274932) b!6848714))

(assert (= (and d!2152659 (not c!1274932)) b!6848715))

(declare-fun m!7588076 () Bool)

(assert (=> b!6848714 m!7588076))

(declare-fun m!7588078 () Bool)

(assert (=> b!6848714 m!7588078))

(assert (=> b!6847843 d!2152659))

(assert (=> d!2152421 d!2152581))

(assert (=> d!2152421 d!2152403))

(assert (=> d!2152393 d!2152397))

(assert (=> d!2152393 d!2152391))

(declare-fun d!2152661 () Bool)

(assert (=> d!2152661 (< (contextDepthTotal!402 lt!2455879) (zipperDepthTotal!430 zl!343))))

(assert (=> d!2152661 true))

(declare-fun _$54!198 () Unit!160065)

(assert (=> d!2152661 (= (choose!51049 zl!343 lt!2455879) _$54!198)))

(declare-fun bs!1830559 () Bool)

(assert (= bs!1830559 d!2152661))

(assert (=> bs!1830559 m!7587216))

(assert (=> bs!1830559 m!7587208))

(assert (=> d!2152393 d!2152661))

(declare-fun d!2152663 () Bool)

(declare-fun lt!2456048 () Bool)

(assert (=> d!2152663 (= lt!2456048 (select (content!12981 zl!343) lt!2455879))))

(declare-fun e!4129973 () Bool)

(assert (=> d!2152663 (= lt!2456048 e!4129973)))

(declare-fun res!2795661 () Bool)

(assert (=> d!2152663 (=> (not res!2795661) (not e!4129973))))

(assert (=> d!2152663 (= res!2795661 ((_ is Cons!66201) zl!343))))

(assert (=> d!2152663 (= (contains!20327 zl!343 lt!2455879) lt!2456048)))

(declare-fun b!6848720 () Bool)

(declare-fun e!4129972 () Bool)

(assert (=> b!6848720 (= e!4129973 e!4129972)))

(declare-fun res!2795660 () Bool)

(assert (=> b!6848720 (=> res!2795660 e!4129972)))

(assert (=> b!6848720 (= res!2795660 (= (h!72649 zl!343) lt!2455879))))

(declare-fun b!6848721 () Bool)

(assert (=> b!6848721 (= e!4129972 (contains!20327 (t!380068 zl!343) lt!2455879))))

(assert (= (and d!2152663 res!2795661) b!6848720))

(assert (= (and b!6848720 (not res!2795660)) b!6848721))

(declare-fun m!7588080 () Bool)

(assert (=> d!2152663 m!7588080))

(declare-fun m!7588082 () Bool)

(assert (=> d!2152663 m!7588082))

(declare-fun m!7588084 () Bool)

(assert (=> b!6848721 m!7588084))

(assert (=> d!2152393 d!2152663))

(declare-fun d!2152665 () Bool)

(declare-fun lt!2456049 () Bool)

(assert (=> d!2152665 (= lt!2456049 (select (content!12981 zl!343) lt!2455960))))

(declare-fun e!4129975 () Bool)

(assert (=> d!2152665 (= lt!2456049 e!4129975)))

(declare-fun res!2795663 () Bool)

(assert (=> d!2152665 (=> (not res!2795663) (not e!4129975))))

(assert (=> d!2152665 (= res!2795663 ((_ is Cons!66201) zl!343))))

(assert (=> d!2152665 (= (contains!20327 zl!343 lt!2455960) lt!2456049)))

(declare-fun b!6848722 () Bool)

(declare-fun e!4129974 () Bool)

(assert (=> b!6848722 (= e!4129975 e!4129974)))

(declare-fun res!2795662 () Bool)

(assert (=> b!6848722 (=> res!2795662 e!4129974)))

(assert (=> b!6848722 (= res!2795662 (= (h!72649 zl!343) lt!2455960))))

(declare-fun b!6848723 () Bool)

(assert (=> b!6848723 (= e!4129974 (contains!20327 (t!380068 zl!343) lt!2455960))))

(assert (= (and d!2152665 res!2795663) b!6848722))

(assert (= (and b!6848722 (not res!2795662)) b!6848723))

(assert (=> d!2152665 m!7588080))

(declare-fun m!7588086 () Bool)

(assert (=> d!2152665 m!7588086))

(declare-fun m!7588088 () Bool)

(assert (=> b!6848723 m!7588088))

(assert (=> b!6847828 d!2152665))

(assert (=> d!2152387 d!2152405))

(declare-fun d!2152667 () Bool)

(declare-fun res!2795664 () Bool)

(declare-fun e!4129976 () Bool)

(assert (=> d!2152667 (=> res!2795664 e!4129976)))

(assert (=> d!2152667 (= res!2795664 ((_ is Nil!66200) lt!2455888))))

(assert (=> d!2152667 (= (forall!15853 lt!2455888 lambda!387217) e!4129976)))

(declare-fun b!6848724 () Bool)

(declare-fun e!4129977 () Bool)

(assert (=> b!6848724 (= e!4129976 e!4129977)))

(declare-fun res!2795665 () Bool)

(assert (=> b!6848724 (=> (not res!2795665) (not e!4129977))))

(assert (=> b!6848724 (= res!2795665 (dynLambda!26455 lambda!387217 (h!72648 lt!2455888)))))

(declare-fun b!6848725 () Bool)

(assert (=> b!6848725 (= e!4129977 (forall!15853 (t!380067 lt!2455888) lambda!387217))))

(assert (= (and d!2152667 (not res!2795664)) b!6848724))

(assert (= (and b!6848724 res!2795665) b!6848725))

(declare-fun b_lambda!258453 () Bool)

(assert (=> (not b_lambda!258453) (not b!6848724)))

(declare-fun m!7588090 () Bool)

(assert (=> b!6848724 m!7588090))

(declare-fun m!7588092 () Bool)

(assert (=> b!6848725 m!7588092))

(assert (=> d!2152405 d!2152667))

(declare-fun d!2152669 () Bool)

(declare-fun res!2795670 () Bool)

(declare-fun e!4129982 () Bool)

(assert (=> d!2152669 (=> res!2795670 e!4129982)))

(assert (=> d!2152669 (= res!2795670 ((_ is Nil!66201) zl!343))))

(assert (=> d!2152669 (= (forall!15854 zl!343 lambda!387230) e!4129982)))

(declare-fun b!6848730 () Bool)

(declare-fun e!4129983 () Bool)

(assert (=> b!6848730 (= e!4129982 e!4129983)))

(declare-fun res!2795671 () Bool)

(assert (=> b!6848730 (=> (not res!2795671) (not e!4129983))))

(assert (=> b!6848730 (= res!2795671 (dynLambda!26456 lambda!387230 (h!72649 zl!343)))))

(declare-fun b!6848731 () Bool)

(assert (=> b!6848731 (= e!4129983 (forall!15854 (t!380068 zl!343) lambda!387230))))

(assert (= (and d!2152669 (not res!2795670)) b!6848730))

(assert (= (and b!6848730 res!2795671) b!6848731))

(declare-fun b_lambda!258455 () Bool)

(assert (=> (not b_lambda!258455) (not b!6848730)))

(declare-fun m!7588094 () Bool)

(assert (=> b!6848730 m!7588094))

(declare-fun m!7588096 () Bool)

(assert (=> b!6848731 m!7588096))

(assert (=> d!2152415 d!2152669))

(declare-fun bs!1830560 () Bool)

(declare-fun d!2152671 () Bool)

(assert (= bs!1830560 (and d!2152671 d!2152589)))

(declare-fun lambda!387272 () Int)

(assert (=> bs!1830560 (not (= lambda!387272 lambda!387260))))

(declare-fun bs!1830561 () Bool)

(assert (= bs!1830561 (and d!2152671 d!2152585)))

(assert (=> bs!1830561 (= lambda!387272 lambda!387258)))

(declare-fun bs!1830562 () Bool)

(assert (= bs!1830562 (and d!2152671 d!2152603)))

(assert (=> bs!1830562 (= lambda!387272 lambda!387264)))

(declare-fun bs!1830563 () Bool)

(assert (= bs!1830563 (and d!2152671 d!2152375)))

(assert (=> bs!1830563 (= lambda!387272 lambda!387214)))

(declare-fun bs!1830564 () Bool)

(assert (= bs!1830564 (and d!2152671 d!2152405)))

(assert (=> bs!1830564 (not (= lambda!387272 lambda!387217))))

(declare-fun bs!1830565 () Bool)

(assert (= bs!1830565 (and d!2152671 d!2152407)))

(assert (=> bs!1830565 (not (= lambda!387272 lambda!387223))))

(declare-fun bs!1830566 () Bool)

(assert (= bs!1830566 (and d!2152671 d!2152621)))

(assert (=> bs!1830566 (= lambda!387272 lambda!387267)))

(declare-fun bs!1830567 () Bool)

(assert (= bs!1830567 (and d!2152671 d!2152591)))

(assert (=> bs!1830567 (not (= lambda!387272 lambda!387263))))

(assert (=> bs!1830565 (= lambda!387272 lambda!387222)))

(declare-fun bs!1830568 () Bool)

(assert (= bs!1830568 (and d!2152671 d!2152409)))

(assert (=> bs!1830568 (= lambda!387272 lambda!387226)))

(declare-fun bs!1830569 () Bool)

(assert (= bs!1830569 (and d!2152671 d!2152411)))

(assert (=> bs!1830569 (= lambda!387272 lambda!387227)))

(declare-fun bs!1830570 () Bool)

(assert (= bs!1830570 (and d!2152671 b!6847423)))

(assert (=> bs!1830570 (not (= lambda!387272 lambda!387176))))

(declare-fun bs!1830571 () Bool)

(assert (= bs!1830571 (and d!2152671 d!2152587)))

(assert (=> bs!1830571 (= lambda!387272 lambda!387259)))

(declare-fun b!6848732 () Bool)

(declare-fun e!4129987 () Bool)

(declare-fun lt!2456050 () Regex!16675)

(assert (=> b!6848732 (= e!4129987 (isEmptyExpr!2006 lt!2456050))))

(declare-fun b!6848733 () Bool)

(declare-fun e!4129986 () Bool)

(assert (=> b!6848733 (= e!4129987 e!4129986)))

(declare-fun c!1274934 () Bool)

(assert (=> b!6848733 (= c!1274934 (isEmpty!38575 (tail!12805 (exprs!6559 lt!2455960))))))

(declare-fun b!6848734 () Bool)

(assert (=> b!6848734 (= e!4129986 (isConcat!1529 lt!2456050))))

(declare-fun b!6848735 () Bool)

(declare-fun e!4129989 () Bool)

(assert (=> b!6848735 (= e!4129989 (isEmpty!38575 (t!380067 (exprs!6559 lt!2455960))))))

(declare-fun b!6848736 () Bool)

(declare-fun e!4129985 () Regex!16675)

(declare-fun e!4129988 () Regex!16675)

(assert (=> b!6848736 (= e!4129985 e!4129988)))

(declare-fun c!1274935 () Bool)

(assert (=> b!6848736 (= c!1274935 ((_ is Cons!66200) (exprs!6559 lt!2455960)))))

(declare-fun b!6848737 () Bool)

(declare-fun e!4129984 () Bool)

(assert (=> b!6848737 (= e!4129984 e!4129987)))

(declare-fun c!1274936 () Bool)

(assert (=> b!6848737 (= c!1274936 (isEmpty!38575 (exprs!6559 lt!2455960)))))

(assert (=> d!2152671 e!4129984))

(declare-fun res!2795673 () Bool)

(assert (=> d!2152671 (=> (not res!2795673) (not e!4129984))))

(assert (=> d!2152671 (= res!2795673 (validRegex!8411 lt!2456050))))

(assert (=> d!2152671 (= lt!2456050 e!4129985)))

(declare-fun c!1274937 () Bool)

(assert (=> d!2152671 (= c!1274937 e!4129989)))

(declare-fun res!2795672 () Bool)

(assert (=> d!2152671 (=> (not res!2795672) (not e!4129989))))

(assert (=> d!2152671 (= res!2795672 ((_ is Cons!66200) (exprs!6559 lt!2455960)))))

(assert (=> d!2152671 (forall!15853 (exprs!6559 lt!2455960) lambda!387272)))

(assert (=> d!2152671 (= (generalisedConcat!2266 (exprs!6559 lt!2455960)) lt!2456050)))

(declare-fun b!6848738 () Bool)

(assert (=> b!6848738 (= e!4129986 (= lt!2456050 (head!13728 (exprs!6559 lt!2455960))))))

(declare-fun b!6848739 () Bool)

(assert (=> b!6848739 (= e!4129988 EmptyExpr!16675)))

(declare-fun b!6848740 () Bool)

(assert (=> b!6848740 (= e!4129985 (h!72648 (exprs!6559 lt!2455960)))))

(declare-fun b!6848741 () Bool)

(assert (=> b!6848741 (= e!4129988 (Concat!25520 (h!72648 (exprs!6559 lt!2455960)) (generalisedConcat!2266 (t!380067 (exprs!6559 lt!2455960)))))))

(assert (= (and d!2152671 res!2795672) b!6848735))

(assert (= (and d!2152671 c!1274937) b!6848740))

(assert (= (and d!2152671 (not c!1274937)) b!6848736))

(assert (= (and b!6848736 c!1274935) b!6848741))

(assert (= (and b!6848736 (not c!1274935)) b!6848739))

(assert (= (and d!2152671 res!2795673) b!6848737))

(assert (= (and b!6848737 c!1274936) b!6848732))

(assert (= (and b!6848737 (not c!1274936)) b!6848733))

(assert (= (and b!6848733 c!1274934) b!6848738))

(assert (= (and b!6848733 (not c!1274934)) b!6848734))

(declare-fun m!7588098 () Bool)

(assert (=> b!6848735 m!7588098))

(declare-fun m!7588100 () Bool)

(assert (=> b!6848741 m!7588100))

(declare-fun m!7588102 () Bool)

(assert (=> d!2152671 m!7588102))

(declare-fun m!7588104 () Bool)

(assert (=> d!2152671 m!7588104))

(declare-fun m!7588106 () Bool)

(assert (=> b!6848733 m!7588106))

(assert (=> b!6848733 m!7588106))

(declare-fun m!7588108 () Bool)

(assert (=> b!6848733 m!7588108))

(declare-fun m!7588110 () Bool)

(assert (=> b!6848732 m!7588110))

(declare-fun m!7588112 () Bool)

(assert (=> b!6848734 m!7588112))

(declare-fun m!7588114 () Bool)

(assert (=> b!6848738 m!7588114))

(declare-fun m!7588116 () Bool)

(assert (=> b!6848737 m!7588116))

(assert (=> bs!1830371 d!2152671))

(declare-fun d!2152673 () Bool)

(declare-fun res!2795674 () Bool)

(declare-fun e!4129990 () Bool)

(assert (=> d!2152673 (=> res!2795674 e!4129990)))

(assert (=> d!2152673 (= res!2795674 ((_ is Nil!66200) (exprs!6559 (h!72649 zl!343))))))

(assert (=> d!2152673 (= (forall!15853 (exprs!6559 (h!72649 zl!343)) lambda!387227) e!4129990)))

(declare-fun b!6848742 () Bool)

(declare-fun e!4129991 () Bool)

(assert (=> b!6848742 (= e!4129990 e!4129991)))

(declare-fun res!2795675 () Bool)

(assert (=> b!6848742 (=> (not res!2795675) (not e!4129991))))

(assert (=> b!6848742 (= res!2795675 (dynLambda!26455 lambda!387227 (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6848743 () Bool)

(assert (=> b!6848743 (= e!4129991 (forall!15853 (t!380067 (exprs!6559 (h!72649 zl!343))) lambda!387227))))

(assert (= (and d!2152673 (not res!2795674)) b!6848742))

(assert (= (and b!6848742 res!2795675) b!6848743))

(declare-fun b_lambda!258457 () Bool)

(assert (=> (not b_lambda!258457) (not b!6848742)))

(declare-fun m!7588118 () Bool)

(assert (=> b!6848742 m!7588118))

(declare-fun m!7588120 () Bool)

(assert (=> b!6848743 m!7588120))

(assert (=> d!2152411 d!2152673))

(declare-fun d!2152675 () Bool)

(declare-fun lt!2456051 () Int)

(assert (=> d!2152675 (>= lt!2456051 0)))

(declare-fun e!4129992 () Int)

(assert (=> d!2152675 (= lt!2456051 e!4129992)))

(declare-fun c!1274938 () Bool)

(assert (=> d!2152675 (= c!1274938 ((_ is Cons!66200) (exprs!6559 (h!72649 lt!2455887))))))

(assert (=> d!2152675 (= (contextDepthTotal!402 (h!72649 lt!2455887)) lt!2456051)))

(declare-fun b!6848744 () Bool)

(assert (=> b!6848744 (= e!4129992 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (h!72649 lt!2455887)))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (h!72649 lt!2455887)))))))))

(declare-fun b!6848745 () Bool)

(assert (=> b!6848745 (= e!4129992 1)))

(assert (= (and d!2152675 c!1274938) b!6848744))

(assert (= (and d!2152675 (not c!1274938)) b!6848745))

(declare-fun m!7588122 () Bool)

(assert (=> b!6848744 m!7588122))

(declare-fun m!7588124 () Bool)

(assert (=> b!6848744 m!7588124))

(assert (=> b!6847837 d!2152675))

(declare-fun d!2152677 () Bool)

(declare-fun lt!2456052 () Int)

(assert (=> d!2152677 (>= lt!2456052 0)))

(declare-fun e!4129993 () Int)

(assert (=> d!2152677 (= lt!2456052 e!4129993)))

(declare-fun c!1274939 () Bool)

(assert (=> d!2152677 (= c!1274939 ((_ is Cons!66201) (t!380068 lt!2455887)))))

(assert (=> d!2152677 (= (zipperDepthTotal!430 (t!380068 lt!2455887)) lt!2456052)))

(declare-fun b!6848746 () Bool)

(assert (=> b!6848746 (= e!4129993 (+ (contextDepthTotal!402 (h!72649 (t!380068 lt!2455887))) (zipperDepthTotal!430 (t!380068 (t!380068 lt!2455887)))))))

(declare-fun b!6848747 () Bool)

(assert (=> b!6848747 (= e!4129993 0)))

(assert (= (and d!2152677 c!1274939) b!6848746))

(assert (= (and d!2152677 (not c!1274939)) b!6848747))

(declare-fun m!7588126 () Bool)

(assert (=> b!6848746 m!7588126))

(declare-fun m!7588128 () Bool)

(assert (=> b!6848746 m!7588128))

(assert (=> b!6847837 d!2152677))

(assert (=> d!2152365 d!2152351))

(assert (=> d!2152365 d!2152323))

(declare-fun d!2152679 () Bool)

(assert (=> d!2152679 (= (matchR!8858 r!7292 s!2326) (matchRSpec!3776 r!7292 s!2326))))

(assert (=> d!2152679 true))

(declare-fun _$88!5702 () Unit!160065)

(assert (=> d!2152679 (= (choose!51047 r!7292 s!2326) _$88!5702)))

(declare-fun bs!1830572 () Bool)

(assert (= bs!1830572 d!2152679))

(assert (=> bs!1830572 m!7587224))

(assert (=> bs!1830572 m!7587222))

(assert (=> d!2152365 d!2152679))

(assert (=> d!2152365 d!2152419))

(declare-fun b!6848748 () Bool)

(declare-fun e!4129995 () Bool)

(declare-fun call!623734 () Bool)

(assert (=> b!6848748 (= e!4129995 call!623734)))

(declare-fun b!6848749 () Bool)

(declare-fun e!4129999 () Bool)

(declare-fun e!4129997 () Bool)

(assert (=> b!6848749 (= e!4129999 e!4129997)))

(declare-fun c!1274941 () Bool)

(assert (=> b!6848749 (= c!1274941 ((_ is Star!16675) (h!72648 lt!2455888)))))

(declare-fun b!6848750 () Bool)

(declare-fun e!4129996 () Bool)

(declare-fun call!623735 () Bool)

(assert (=> b!6848750 (= e!4129996 call!623735)))

(declare-fun b!6848751 () Bool)

(declare-fun e!4129998 () Bool)

(assert (=> b!6848751 (= e!4129998 e!4129996)))

(declare-fun res!2795676 () Bool)

(assert (=> b!6848751 (=> (not res!2795676) (not e!4129996))))

(declare-fun call!623736 () Bool)

(assert (=> b!6848751 (= res!2795676 call!623736)))

(declare-fun bm!623729 () Bool)

(declare-fun c!1274940 () Bool)

(assert (=> bm!623729 (= call!623736 (validRegex!8411 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))))))

(declare-fun b!6848752 () Bool)

(assert (=> b!6848752 (= e!4129997 e!4129995)))

(declare-fun res!2795679 () Bool)

(assert (=> b!6848752 (= res!2795679 (not (nullable!6638 (reg!17004 (h!72648 lt!2455888)))))))

(assert (=> b!6848752 (=> (not res!2795679) (not e!4129995))))

(declare-fun bm!623730 () Bool)

(assert (=> bm!623730 (= call!623735 call!623734)))

(declare-fun b!6848753 () Bool)

(declare-fun e!4129994 () Bool)

(assert (=> b!6848753 (= e!4129997 e!4129994)))

(assert (=> b!6848753 (= c!1274940 ((_ is Union!16675) (h!72648 lt!2455888)))))

(declare-fun b!6848754 () Bool)

(declare-fun e!4130000 () Bool)

(assert (=> b!6848754 (= e!4130000 call!623735)))

(declare-fun bm!623731 () Bool)

(assert (=> bm!623731 (= call!623734 (validRegex!8411 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))))))

(declare-fun b!6848755 () Bool)

(declare-fun res!2795678 () Bool)

(assert (=> b!6848755 (=> (not res!2795678) (not e!4130000))))

(assert (=> b!6848755 (= res!2795678 call!623736)))

(assert (=> b!6848755 (= e!4129994 e!4130000)))

(declare-fun d!2152681 () Bool)

(declare-fun res!2795680 () Bool)

(assert (=> d!2152681 (=> res!2795680 e!4129999)))

(assert (=> d!2152681 (= res!2795680 ((_ is ElementMatch!16675) (h!72648 lt!2455888)))))

(assert (=> d!2152681 (= (validRegex!8411 (h!72648 lt!2455888)) e!4129999)))

(declare-fun b!6848756 () Bool)

(declare-fun res!2795677 () Bool)

(assert (=> b!6848756 (=> res!2795677 e!4129998)))

(assert (=> b!6848756 (= res!2795677 (not ((_ is Concat!25520) (h!72648 lt!2455888))))))

(assert (=> b!6848756 (= e!4129994 e!4129998)))

(assert (= (and d!2152681 (not res!2795680)) b!6848749))

(assert (= (and b!6848749 c!1274941) b!6848752))

(assert (= (and b!6848749 (not c!1274941)) b!6848753))

(assert (= (and b!6848752 res!2795679) b!6848748))

(assert (= (and b!6848753 c!1274940) b!6848755))

(assert (= (and b!6848753 (not c!1274940)) b!6848756))

(assert (= (and b!6848755 res!2795678) b!6848754))

(assert (= (and b!6848756 (not res!2795677)) b!6848751))

(assert (= (and b!6848751 res!2795676) b!6848750))

(assert (= (or b!6848754 b!6848750) bm!623730))

(assert (= (or b!6848755 b!6848751) bm!623729))

(assert (= (or b!6848748 bm!623730) bm!623731))

(declare-fun m!7588130 () Bool)

(assert (=> bm!623729 m!7588130))

(declare-fun m!7588132 () Bool)

(assert (=> b!6848752 m!7588132))

(declare-fun m!7588134 () Bool)

(assert (=> bm!623731 m!7588134))

(assert (=> bs!1830368 d!2152681))

(declare-fun b!6848757 () Bool)

(declare-fun e!4130002 () Bool)

(declare-fun call!623737 () Bool)

(assert (=> b!6848757 (= e!4130002 call!623737)))

(declare-fun b!6848758 () Bool)

(declare-fun e!4130006 () Bool)

(declare-fun e!4130004 () Bool)

(assert (=> b!6848758 (= e!4130006 e!4130004)))

(declare-fun c!1274943 () Bool)

(assert (=> b!6848758 (= c!1274943 ((_ is Star!16675) (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))

(declare-fun b!6848759 () Bool)

(declare-fun e!4130003 () Bool)

(declare-fun call!623738 () Bool)

(assert (=> b!6848759 (= e!4130003 call!623738)))

(declare-fun b!6848760 () Bool)

(declare-fun e!4130005 () Bool)

(assert (=> b!6848760 (= e!4130005 e!4130003)))

(declare-fun res!2795681 () Bool)

(assert (=> b!6848760 (=> (not res!2795681) (not e!4130003))))

(declare-fun call!623739 () Bool)

(assert (=> b!6848760 (= res!2795681 call!623739)))

(declare-fun c!1274942 () Bool)

(declare-fun bm!623732 () Bool)

(assert (=> bm!623732 (= call!623739 (validRegex!8411 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))

(declare-fun b!6848761 () Bool)

(assert (=> b!6848761 (= e!4130004 e!4130002)))

(declare-fun res!2795684 () Bool)

(assert (=> b!6848761 (= res!2795684 (not (nullable!6638 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))

(assert (=> b!6848761 (=> (not res!2795684) (not e!4130002))))

(declare-fun bm!623733 () Bool)

(assert (=> bm!623733 (= call!623738 call!623737)))

(declare-fun b!6848762 () Bool)

(declare-fun e!4130001 () Bool)

(assert (=> b!6848762 (= e!4130004 e!4130001)))

(assert (=> b!6848762 (= c!1274942 ((_ is Union!16675) (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))

(declare-fun b!6848763 () Bool)

(declare-fun e!4130007 () Bool)

(assert (=> b!6848763 (= e!4130007 call!623738)))

(declare-fun bm!623734 () Bool)

(assert (=> bm!623734 (= call!623737 (validRegex!8411 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))

(declare-fun b!6848764 () Bool)

(declare-fun res!2795683 () Bool)

(assert (=> b!6848764 (=> (not res!2795683) (not e!4130007))))

(assert (=> b!6848764 (= res!2795683 call!623739)))

(assert (=> b!6848764 (= e!4130001 e!4130007)))

(declare-fun d!2152683 () Bool)

(declare-fun res!2795685 () Bool)

(assert (=> d!2152683 (=> res!2795685 e!4130006)))

(assert (=> d!2152683 (= res!2795685 ((_ is ElementMatch!16675) (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))

(assert (=> d!2152683 (= (validRegex!8411 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) e!4130006)))

(declare-fun b!6848765 () Bool)

(declare-fun res!2795682 () Bool)

(assert (=> b!6848765 (=> res!2795682 e!4130005)))

(assert (=> b!6848765 (= res!2795682 (not ((_ is Concat!25520) (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))

(assert (=> b!6848765 (= e!4130001 e!4130005)))

(assert (= (and d!2152683 (not res!2795685)) b!6848758))

(assert (= (and b!6848758 c!1274943) b!6848761))

(assert (= (and b!6848758 (not c!1274943)) b!6848762))

(assert (= (and b!6848761 res!2795684) b!6848757))

(assert (= (and b!6848762 c!1274942) b!6848764))

(assert (= (and b!6848762 (not c!1274942)) b!6848765))

(assert (= (and b!6848764 res!2795683) b!6848763))

(assert (= (and b!6848765 (not res!2795682)) b!6848760))

(assert (= (and b!6848760 res!2795681) b!6848759))

(assert (= (or b!6848763 b!6848759) bm!623733))

(assert (= (or b!6848764 b!6848760) bm!623732))

(assert (= (or b!6848757 bm!623733) bm!623734))

(declare-fun m!7588136 () Bool)

(assert (=> bm!623732 m!7588136))

(declare-fun m!7588138 () Bool)

(assert (=> b!6848761 m!7588138))

(declare-fun m!7588140 () Bool)

(assert (=> bm!623734 m!7588140))

(assert (=> bm!623633 d!2152683))

(declare-fun bs!1830573 () Bool)

(declare-fun b!6848769 () Bool)

(assert (= bs!1830573 (and b!6848769 b!6847559)))

(declare-fun lambda!387273 () Int)

(assert (=> bs!1830573 (= (and (= (reg!17004 (regOne!33863 r!7292)) (reg!17004 r!7292)) (= (regOne!33863 r!7292) r!7292)) (= lambda!387273 lambda!387199))))

(declare-fun bs!1830574 () Bool)

(assert (= bs!1830574 (and b!6848769 b!6847556)))

(assert (=> bs!1830574 (not (= lambda!387273 lambda!387200))))

(assert (=> b!6848769 true))

(assert (=> b!6848769 true))

(declare-fun bs!1830575 () Bool)

(declare-fun b!6848766 () Bool)

(assert (= bs!1830575 (and b!6848766 b!6847559)))

(declare-fun lambda!387274 () Int)

(assert (=> bs!1830575 (not (= lambda!387274 lambda!387199))))

(declare-fun bs!1830576 () Bool)

(assert (= bs!1830576 (and b!6848766 b!6847556)))

(assert (=> bs!1830576 (= (and (= (regOne!33862 (regOne!33863 r!7292)) (regOne!33862 r!7292)) (= (regTwo!33862 (regOne!33863 r!7292)) (regTwo!33862 r!7292))) (= lambda!387274 lambda!387200))))

(declare-fun bs!1830577 () Bool)

(assert (= bs!1830577 (and b!6848766 b!6848769)))

(assert (=> bs!1830577 (not (= lambda!387274 lambda!387273))))

(assert (=> b!6848766 true))

(assert (=> b!6848766 true))

(declare-fun e!4130011 () Bool)

(declare-fun call!623740 () Bool)

(assert (=> b!6848766 (= e!4130011 call!623740)))

(declare-fun b!6848767 () Bool)

(declare-fun e!4130009 () Bool)

(assert (=> b!6848767 (= e!4130009 e!4130011)))

(declare-fun c!1274945 () Bool)

(assert (=> b!6848767 (= c!1274945 ((_ is Star!16675) (regOne!33863 r!7292)))))

(declare-fun bm!623735 () Bool)

(assert (=> bm!623735 (= call!623740 (Exists!3737 (ite c!1274945 lambda!387273 lambda!387274)))))

(declare-fun b!6848768 () Bool)

(declare-fun res!2795688 () Bool)

(declare-fun e!4130010 () Bool)

(assert (=> b!6848768 (=> res!2795688 e!4130010)))

(declare-fun call!623741 () Bool)

(assert (=> b!6848768 (= res!2795688 call!623741)))

(assert (=> b!6848768 (= e!4130011 e!4130010)))

(declare-fun d!2152685 () Bool)

(declare-fun c!1274946 () Bool)

(assert (=> d!2152685 (= c!1274946 ((_ is EmptyExpr!16675) (regOne!33863 r!7292)))))

(declare-fun e!4130008 () Bool)

(assert (=> d!2152685 (= (matchRSpec!3776 (regOne!33863 r!7292) s!2326) e!4130008)))

(declare-fun bm!623736 () Bool)

(assert (=> bm!623736 (= call!623741 (isEmpty!38573 s!2326))))

(assert (=> b!6848769 (= e!4130010 call!623740)))

(declare-fun b!6848770 () Bool)

(assert (=> b!6848770 (= e!4130008 call!623741)))

(declare-fun b!6848771 () Bool)

(declare-fun e!4130013 () Bool)

(assert (=> b!6848771 (= e!4130013 (matchRSpec!3776 (regTwo!33863 (regOne!33863 r!7292)) s!2326))))

(declare-fun b!6848772 () Bool)

(declare-fun c!1274944 () Bool)

(assert (=> b!6848772 (= c!1274944 ((_ is ElementMatch!16675) (regOne!33863 r!7292)))))

(declare-fun e!4130014 () Bool)

(declare-fun e!4130012 () Bool)

(assert (=> b!6848772 (= e!4130014 e!4130012)))

(declare-fun b!6848773 () Bool)

(declare-fun c!1274947 () Bool)

(assert (=> b!6848773 (= c!1274947 ((_ is Union!16675) (regOne!33863 r!7292)))))

(assert (=> b!6848773 (= e!4130012 e!4130009)))

(declare-fun b!6848774 () Bool)

(assert (=> b!6848774 (= e!4130008 e!4130014)))

(declare-fun res!2795687 () Bool)

(assert (=> b!6848774 (= res!2795687 (not ((_ is EmptyLang!16675) (regOne!33863 r!7292))))))

(assert (=> b!6848774 (=> (not res!2795687) (not e!4130014))))

(declare-fun b!6848775 () Bool)

(assert (=> b!6848775 (= e!4130009 e!4130013)))

(declare-fun res!2795686 () Bool)

(assert (=> b!6848775 (= res!2795686 (matchRSpec!3776 (regOne!33863 (regOne!33863 r!7292)) s!2326))))

(assert (=> b!6848775 (=> res!2795686 e!4130013)))

(declare-fun b!6848776 () Bool)

(assert (=> b!6848776 (= e!4130012 (= s!2326 (Cons!66202 (c!1274613 (regOne!33863 r!7292)) Nil!66202)))))

(assert (= (and d!2152685 c!1274946) b!6848770))

(assert (= (and d!2152685 (not c!1274946)) b!6848774))

(assert (= (and b!6848774 res!2795687) b!6848772))

(assert (= (and b!6848772 c!1274944) b!6848776))

(assert (= (and b!6848772 (not c!1274944)) b!6848773))

(assert (= (and b!6848773 c!1274947) b!6848775))

(assert (= (and b!6848773 (not c!1274947)) b!6848767))

(assert (= (and b!6848775 (not res!2795686)) b!6848771))

(assert (= (and b!6848767 c!1274945) b!6848768))

(assert (= (and b!6848767 (not c!1274945)) b!6848766))

(assert (= (and b!6848768 (not res!2795688)) b!6848769))

(assert (= (or b!6848769 b!6848766) bm!623735))

(assert (= (or b!6848770 b!6848768) bm!623736))

(declare-fun m!7588142 () Bool)

(assert (=> bm!623735 m!7588142))

(assert (=> bm!623736 m!7587310))

(declare-fun m!7588144 () Bool)

(assert (=> b!6848771 m!7588144))

(declare-fun m!7588146 () Bool)

(assert (=> b!6848775 m!7588146))

(assert (=> b!6847565 d!2152685))

(declare-fun d!2152687 () Bool)

(declare-fun lt!2456053 () Bool)

(assert (=> d!2152687 (= lt!2456053 (select (content!12982 (t!380067 lt!2455888)) lt!2455885))))

(declare-fun e!4130016 () Bool)

(assert (=> d!2152687 (= lt!2456053 e!4130016)))

(declare-fun res!2795689 () Bool)

(assert (=> d!2152687 (=> (not res!2795689) (not e!4130016))))

(assert (=> d!2152687 (= res!2795689 ((_ is Cons!66200) (t!380067 lt!2455888)))))

(assert (=> d!2152687 (= (contains!20325 (t!380067 lt!2455888) lt!2455885) lt!2456053)))

(declare-fun b!6848777 () Bool)

(declare-fun e!4130015 () Bool)

(assert (=> b!6848777 (= e!4130016 e!4130015)))

(declare-fun res!2795690 () Bool)

(assert (=> b!6848777 (=> res!2795690 e!4130015)))

(assert (=> b!6848777 (= res!2795690 (= (h!72648 (t!380067 lt!2455888)) lt!2455885))))

(declare-fun b!6848778 () Bool)

(assert (=> b!6848778 (= e!4130015 (contains!20325 (t!380067 (t!380067 lt!2455888)) lt!2455885))))

(assert (= (and d!2152687 res!2795689) b!6848777))

(assert (= (and b!6848777 (not res!2795690)) b!6848778))

(assert (=> d!2152687 m!7587872))

(declare-fun m!7588148 () Bool)

(assert (=> d!2152687 m!7588148))

(declare-fun m!7588150 () Bool)

(assert (=> b!6848778 m!7588150))

(assert (=> b!6847794 d!2152687))

(declare-fun d!2152689 () Bool)

(declare-fun c!1274948 () Bool)

(assert (=> d!2152689 (= c!1274948 ((_ is Nil!66201) lt!2455980))))

(declare-fun e!4130017 () (InoxSet Context!12118))

(assert (=> d!2152689 (= (content!12981 lt!2455980) e!4130017)))

(declare-fun b!6848779 () Bool)

(assert (=> b!6848779 (= e!4130017 ((as const (Array Context!12118 Bool)) false))))

(declare-fun b!6848780 () Bool)

(assert (=> b!6848780 (= e!4130017 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) (h!72649 lt!2455980) true) (content!12981 (t!380068 lt!2455980))))))

(assert (= (and d!2152689 c!1274948) b!6848779))

(assert (= (and d!2152689 (not c!1274948)) b!6848780))

(declare-fun m!7588152 () Bool)

(assert (=> b!6848780 m!7588152))

(declare-fun m!7588154 () Bool)

(assert (=> b!6848780 m!7588154))

(assert (=> b!6847882 d!2152689))

(declare-fun bs!1830578 () Bool)

(declare-fun d!2152691 () Bool)

(assert (= bs!1830578 (and d!2152691 d!2152589)))

(declare-fun lambda!387275 () Int)

(assert (=> bs!1830578 (not (= lambda!387275 lambda!387260))))

(declare-fun bs!1830579 () Bool)

(assert (= bs!1830579 (and d!2152691 d!2152585)))

(assert (=> bs!1830579 (= lambda!387275 lambda!387258)))

(declare-fun bs!1830580 () Bool)

(assert (= bs!1830580 (and d!2152691 d!2152603)))

(assert (=> bs!1830580 (= lambda!387275 lambda!387264)))

(declare-fun bs!1830581 () Bool)

(assert (= bs!1830581 (and d!2152691 d!2152671)))

(assert (=> bs!1830581 (= lambda!387275 lambda!387272)))

(declare-fun bs!1830582 () Bool)

(assert (= bs!1830582 (and d!2152691 d!2152375)))

(assert (=> bs!1830582 (= lambda!387275 lambda!387214)))

(declare-fun bs!1830583 () Bool)

(assert (= bs!1830583 (and d!2152691 d!2152405)))

(assert (=> bs!1830583 (not (= lambda!387275 lambda!387217))))

(declare-fun bs!1830584 () Bool)

(assert (= bs!1830584 (and d!2152691 d!2152407)))

(assert (=> bs!1830584 (not (= lambda!387275 lambda!387223))))

(declare-fun bs!1830585 () Bool)

(assert (= bs!1830585 (and d!2152691 d!2152621)))

(assert (=> bs!1830585 (= lambda!387275 lambda!387267)))

(declare-fun bs!1830586 () Bool)

(assert (= bs!1830586 (and d!2152691 d!2152591)))

(assert (=> bs!1830586 (not (= lambda!387275 lambda!387263))))

(assert (=> bs!1830584 (= lambda!387275 lambda!387222)))

(declare-fun bs!1830587 () Bool)

(assert (= bs!1830587 (and d!2152691 d!2152409)))

(assert (=> bs!1830587 (= lambda!387275 lambda!387226)))

(declare-fun bs!1830588 () Bool)

(assert (= bs!1830588 (and d!2152691 d!2152411)))

(assert (=> bs!1830588 (= lambda!387275 lambda!387227)))

(declare-fun bs!1830589 () Bool)

(assert (= bs!1830589 (and d!2152691 b!6847423)))

(assert (=> bs!1830589 (not (= lambda!387275 lambda!387176))))

(declare-fun bs!1830590 () Bool)

(assert (= bs!1830590 (and d!2152691 d!2152587)))

(assert (=> bs!1830590 (= lambda!387275 lambda!387259)))

(assert (=> d!2152691 (= (inv!84934 setElem!47087) (forall!15853 (exprs!6559 setElem!47087) lambda!387275))))

(declare-fun bs!1830591 () Bool)

(assert (= bs!1830591 d!2152691))

(declare-fun m!7588156 () Bool)

(assert (=> bs!1830591 m!7588156))

(assert (=> setNonEmpty!47087 d!2152691))

(declare-fun b!6848781 () Bool)

(declare-fun e!4130019 () Bool)

(declare-fun call!623742 () Bool)

(assert (=> b!6848781 (= e!4130019 call!623742)))

(declare-fun b!6848782 () Bool)

(declare-fun e!4130023 () Bool)

(declare-fun e!4130021 () Bool)

(assert (=> b!6848782 (= e!4130023 e!4130021)))

(declare-fun c!1274950 () Bool)

(assert (=> b!6848782 (= c!1274950 ((_ is Star!16675) (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))

(declare-fun b!6848783 () Bool)

(declare-fun e!4130020 () Bool)

(declare-fun call!623743 () Bool)

(assert (=> b!6848783 (= e!4130020 call!623743)))

(declare-fun b!6848784 () Bool)

(declare-fun e!4130022 () Bool)

(assert (=> b!6848784 (= e!4130022 e!4130020)))

(declare-fun res!2795691 () Bool)

(assert (=> b!6848784 (=> (not res!2795691) (not e!4130020))))

(declare-fun call!623744 () Bool)

(assert (=> b!6848784 (= res!2795691 call!623744)))

(declare-fun bm!623737 () Bool)

(declare-fun c!1274949 () Bool)

(assert (=> bm!623737 (= call!623744 (validRegex!8411 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))

(declare-fun b!6848785 () Bool)

(assert (=> b!6848785 (= e!4130021 e!4130019)))

(declare-fun res!2795694 () Bool)

(assert (=> b!6848785 (= res!2795694 (not (nullable!6638 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))

(assert (=> b!6848785 (=> (not res!2795694) (not e!4130019))))

(declare-fun bm!623738 () Bool)

(assert (=> bm!623738 (= call!623743 call!623742)))

(declare-fun b!6848786 () Bool)

(declare-fun e!4130018 () Bool)

(assert (=> b!6848786 (= e!4130021 e!4130018)))

(assert (=> b!6848786 (= c!1274949 ((_ is Union!16675) (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))

(declare-fun b!6848787 () Bool)

(declare-fun e!4130024 () Bool)

(assert (=> b!6848787 (= e!4130024 call!623743)))

(declare-fun bm!623739 () Bool)

(assert (=> bm!623739 (= call!623742 (validRegex!8411 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))

(declare-fun b!6848788 () Bool)

(declare-fun res!2795693 () Bool)

(assert (=> b!6848788 (=> (not res!2795693) (not e!4130024))))

(assert (=> b!6848788 (= res!2795693 call!623744)))

(assert (=> b!6848788 (= e!4130018 e!4130024)))

(declare-fun d!2152693 () Bool)

(declare-fun res!2795695 () Bool)

(assert (=> d!2152693 (=> res!2795695 e!4130023)))

(assert (=> d!2152693 (= res!2795695 ((_ is ElementMatch!16675) (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))

(assert (=> d!2152693 (= (validRegex!8411 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) e!4130023)))

(declare-fun b!6848789 () Bool)

(declare-fun res!2795692 () Bool)

(assert (=> b!6848789 (=> res!2795692 e!4130022)))

(assert (=> b!6848789 (= res!2795692 (not ((_ is Concat!25520) (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))

(assert (=> b!6848789 (= e!4130018 e!4130022)))

(assert (= (and d!2152693 (not res!2795695)) b!6848782))

(assert (= (and b!6848782 c!1274950) b!6848785))

(assert (= (and b!6848782 (not c!1274950)) b!6848786))

(assert (= (and b!6848785 res!2795694) b!6848781))

(assert (= (and b!6848786 c!1274949) b!6848788))

(assert (= (and b!6848786 (not c!1274949)) b!6848789))

(assert (= (and b!6848788 res!2795693) b!6848787))

(assert (= (and b!6848789 (not res!2795692)) b!6848784))

(assert (= (and b!6848784 res!2795691) b!6848783))

(assert (= (or b!6848787 b!6848783) bm!623738))

(assert (= (or b!6848788 b!6848784) bm!623737))

(assert (= (or b!6848781 bm!623738) bm!623739))

(declare-fun m!7588158 () Bool)

(assert (=> bm!623737 m!7588158))

(declare-fun m!7588160 () Bool)

(assert (=> b!6848785 m!7588160))

(declare-fun m!7588162 () Bool)

(assert (=> bm!623739 m!7588162))

(assert (=> bm!623630 d!2152693))

(assert (=> b!6847902 d!2152609))

(assert (=> b!6847693 d!2152609))

(declare-fun d!2152695 () Bool)

(assert (=> d!2152695 (= (nullable!6638 (reg!17004 r!7292)) (nullableFct!2522 (reg!17004 r!7292)))))

(declare-fun bs!1830592 () Bool)

(assert (= bs!1830592 d!2152695))

(declare-fun m!7588164 () Bool)

(assert (=> bs!1830592 m!7588164))

(assert (=> b!6847889 d!2152695))

(declare-fun b!6848790 () Bool)

(declare-fun e!4130029 () Bool)

(declare-fun e!4130028 () Bool)

(assert (=> b!6848790 (= e!4130029 e!4130028)))

(declare-fun c!1274952 () Bool)

(assert (=> b!6848790 (= c!1274952 ((_ is EmptyLang!16675) lt!2455953))))

(declare-fun b!6848791 () Bool)

(declare-fun res!2795696 () Bool)

(declare-fun e!4130027 () Bool)

(assert (=> b!6848791 (=> res!2795696 e!4130027)))

(assert (=> b!6848791 (= res!2795696 (not ((_ is ElementMatch!16675) lt!2455953)))))

(assert (=> b!6848791 (= e!4130028 e!4130027)))

(declare-fun b!6848792 () Bool)

(declare-fun lt!2456054 () Bool)

(assert (=> b!6848792 (= e!4130028 (not lt!2456054))))

(declare-fun b!6848793 () Bool)

(declare-fun res!2795699 () Bool)

(declare-fun e!4130030 () Bool)

(assert (=> b!6848793 (=> (not res!2795699) (not e!4130030))))

(declare-fun call!623745 () Bool)

(assert (=> b!6848793 (= res!2795699 (not call!623745))))

(declare-fun b!6848794 () Bool)

(declare-fun e!4130031 () Bool)

(assert (=> b!6848794 (= e!4130031 (not (= (head!13727 s!2326) (c!1274613 lt!2455953))))))

(declare-fun b!6848795 () Bool)

(declare-fun res!2795698 () Bool)

(assert (=> b!6848795 (=> (not res!2795698) (not e!4130030))))

(assert (=> b!6848795 (= res!2795698 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6848796 () Bool)

(declare-fun res!2795702 () Bool)

(assert (=> b!6848796 (=> res!2795702 e!4130027)))

(assert (=> b!6848796 (= res!2795702 e!4130030)))

(declare-fun res!2795700 () Bool)

(assert (=> b!6848796 (=> (not res!2795700) (not e!4130030))))

(assert (=> b!6848796 (= res!2795700 lt!2456054)))

(declare-fun b!6848797 () Bool)

(declare-fun e!4130025 () Bool)

(assert (=> b!6848797 (= e!4130025 (nullable!6638 lt!2455953))))

(declare-fun b!6848798 () Bool)

(assert (=> b!6848798 (= e!4130030 (= (head!13727 s!2326) (c!1274613 lt!2455953)))))

(declare-fun b!6848799 () Bool)

(declare-fun res!2795703 () Bool)

(assert (=> b!6848799 (=> res!2795703 e!4130031)))

(assert (=> b!6848799 (= res!2795703 (not (isEmpty!38573 (tail!12804 s!2326))))))

(declare-fun d!2152697 () Bool)

(assert (=> d!2152697 e!4130029))

(declare-fun c!1274951 () Bool)

(assert (=> d!2152697 (= c!1274951 ((_ is EmptyExpr!16675) lt!2455953))))

(assert (=> d!2152697 (= lt!2456054 e!4130025)))

(declare-fun c!1274953 () Bool)

(assert (=> d!2152697 (= c!1274953 (isEmpty!38573 s!2326))))

(assert (=> d!2152697 (validRegex!8411 lt!2455953)))

(assert (=> d!2152697 (= (matchR!8858 lt!2455953 s!2326) lt!2456054)))

(declare-fun bm!623740 () Bool)

(assert (=> bm!623740 (= call!623745 (isEmpty!38573 s!2326))))

(declare-fun b!6848800 () Bool)

(declare-fun e!4130026 () Bool)

(assert (=> b!6848800 (= e!4130026 e!4130031)))

(declare-fun res!2795697 () Bool)

(assert (=> b!6848800 (=> res!2795697 e!4130031)))

(assert (=> b!6848800 (= res!2795697 call!623745)))

(declare-fun b!6848801 () Bool)

(assert (=> b!6848801 (= e!4130025 (matchR!8858 (derivativeStep!5321 lt!2455953 (head!13727 s!2326)) (tail!12804 s!2326)))))

(declare-fun b!6848802 () Bool)

(assert (=> b!6848802 (= e!4130027 e!4130026)))

(declare-fun res!2795701 () Bool)

(assert (=> b!6848802 (=> (not res!2795701) (not e!4130026))))

(assert (=> b!6848802 (= res!2795701 (not lt!2456054))))

(declare-fun b!6848803 () Bool)

(assert (=> b!6848803 (= e!4130029 (= lt!2456054 call!623745))))

(assert (= (and d!2152697 c!1274953) b!6848797))

(assert (= (and d!2152697 (not c!1274953)) b!6848801))

(assert (= (and d!2152697 c!1274951) b!6848803))

(assert (= (and d!2152697 (not c!1274951)) b!6848790))

(assert (= (and b!6848790 c!1274952) b!6848792))

(assert (= (and b!6848790 (not c!1274952)) b!6848791))

(assert (= (and b!6848791 (not res!2795696)) b!6848796))

(assert (= (and b!6848796 res!2795700) b!6848793))

(assert (= (and b!6848793 res!2795699) b!6848795))

(assert (= (and b!6848795 res!2795698) b!6848798))

(assert (= (and b!6848796 (not res!2795702)) b!6848802))

(assert (= (and b!6848802 res!2795701) b!6848800))

(assert (= (and b!6848800 (not res!2795697)) b!6848799))

(assert (= (and b!6848799 (not res!2795703)) b!6848794))

(assert (= (or b!6848803 b!6848793 b!6848800) bm!623740))

(assert (=> bm!623740 m!7587310))

(assert (=> b!6848801 m!7587360))

(assert (=> b!6848801 m!7587360))

(declare-fun m!7588166 () Bool)

(assert (=> b!6848801 m!7588166))

(assert (=> b!6848801 m!7587364))

(assert (=> b!6848801 m!7588166))

(assert (=> b!6848801 m!7587364))

(declare-fun m!7588168 () Bool)

(assert (=> b!6848801 m!7588168))

(declare-fun m!7588170 () Bool)

(assert (=> b!6848797 m!7588170))

(assert (=> b!6848795 m!7587364))

(assert (=> b!6848795 m!7587364))

(assert (=> b!6848795 m!7587370))

(assert (=> b!6848799 m!7587364))

(assert (=> b!6848799 m!7587364))

(assert (=> b!6848799 m!7587370))

(assert (=> d!2152697 m!7587310))

(assert (=> d!2152697 m!7587522))

(assert (=> b!6848798 m!7587360))

(assert (=> b!6848794 m!7587360))

(assert (=> b!6847963 d!2152697))

(declare-fun d!2152699 () Bool)

(assert (=> d!2152699 (= (head!13728 lt!2455888) (h!72648 lt!2455888))))

(assert (=> b!6847807 d!2152699))

(declare-fun bs!1830593 () Bool)

(declare-fun b!6848807 () Bool)

(assert (= bs!1830593 (and b!6848807 b!6847559)))

(declare-fun lambda!387276 () Int)

(assert (=> bs!1830593 (= (and (= (reg!17004 (regTwo!33863 r!7292)) (reg!17004 r!7292)) (= (regTwo!33863 r!7292) r!7292)) (= lambda!387276 lambda!387199))))

(declare-fun bs!1830594 () Bool)

(assert (= bs!1830594 (and b!6848807 b!6847556)))

(assert (=> bs!1830594 (not (= lambda!387276 lambda!387200))))

(declare-fun bs!1830595 () Bool)

(assert (= bs!1830595 (and b!6848807 b!6848769)))

(assert (=> bs!1830595 (= (and (= (reg!17004 (regTwo!33863 r!7292)) (reg!17004 (regOne!33863 r!7292))) (= (regTwo!33863 r!7292) (regOne!33863 r!7292))) (= lambda!387276 lambda!387273))))

(declare-fun bs!1830596 () Bool)

(assert (= bs!1830596 (and b!6848807 b!6848766)))

(assert (=> bs!1830596 (not (= lambda!387276 lambda!387274))))

(assert (=> b!6848807 true))

(assert (=> b!6848807 true))

(declare-fun bs!1830597 () Bool)

(declare-fun b!6848804 () Bool)

(assert (= bs!1830597 (and b!6848804 b!6848766)))

(declare-fun lambda!387277 () Int)

(assert (=> bs!1830597 (= (and (= (regOne!33862 (regTwo!33863 r!7292)) (regOne!33862 (regOne!33863 r!7292))) (= (regTwo!33862 (regTwo!33863 r!7292)) (regTwo!33862 (regOne!33863 r!7292)))) (= lambda!387277 lambda!387274))))

(declare-fun bs!1830598 () Bool)

(assert (= bs!1830598 (and b!6848804 b!6848769)))

(assert (=> bs!1830598 (not (= lambda!387277 lambda!387273))))

(declare-fun bs!1830599 () Bool)

(assert (= bs!1830599 (and b!6848804 b!6848807)))

(assert (=> bs!1830599 (not (= lambda!387277 lambda!387276))))

(declare-fun bs!1830600 () Bool)

(assert (= bs!1830600 (and b!6848804 b!6847556)))

(assert (=> bs!1830600 (= (and (= (regOne!33862 (regTwo!33863 r!7292)) (regOne!33862 r!7292)) (= (regTwo!33862 (regTwo!33863 r!7292)) (regTwo!33862 r!7292))) (= lambda!387277 lambda!387200))))

(declare-fun bs!1830601 () Bool)

(assert (= bs!1830601 (and b!6848804 b!6847559)))

(assert (=> bs!1830601 (not (= lambda!387277 lambda!387199))))

(assert (=> b!6848804 true))

(assert (=> b!6848804 true))

(declare-fun e!4130035 () Bool)

(declare-fun call!623746 () Bool)

(assert (=> b!6848804 (= e!4130035 call!623746)))

(declare-fun b!6848805 () Bool)

(declare-fun e!4130033 () Bool)

(assert (=> b!6848805 (= e!4130033 e!4130035)))

(declare-fun c!1274955 () Bool)

(assert (=> b!6848805 (= c!1274955 ((_ is Star!16675) (regTwo!33863 r!7292)))))

(declare-fun bm!623741 () Bool)

(assert (=> bm!623741 (= call!623746 (Exists!3737 (ite c!1274955 lambda!387276 lambda!387277)))))

(declare-fun b!6848806 () Bool)

(declare-fun res!2795706 () Bool)

(declare-fun e!4130034 () Bool)

(assert (=> b!6848806 (=> res!2795706 e!4130034)))

(declare-fun call!623747 () Bool)

(assert (=> b!6848806 (= res!2795706 call!623747)))

(assert (=> b!6848806 (= e!4130035 e!4130034)))

(declare-fun d!2152701 () Bool)

(declare-fun c!1274956 () Bool)

(assert (=> d!2152701 (= c!1274956 ((_ is EmptyExpr!16675) (regTwo!33863 r!7292)))))

(declare-fun e!4130032 () Bool)

(assert (=> d!2152701 (= (matchRSpec!3776 (regTwo!33863 r!7292) s!2326) e!4130032)))

(declare-fun bm!623742 () Bool)

(assert (=> bm!623742 (= call!623747 (isEmpty!38573 s!2326))))

(assert (=> b!6848807 (= e!4130034 call!623746)))

(declare-fun b!6848808 () Bool)

(assert (=> b!6848808 (= e!4130032 call!623747)))

(declare-fun b!6848809 () Bool)

(declare-fun e!4130037 () Bool)

(assert (=> b!6848809 (= e!4130037 (matchRSpec!3776 (regTwo!33863 (regTwo!33863 r!7292)) s!2326))))

(declare-fun b!6848810 () Bool)

(declare-fun c!1274954 () Bool)

(assert (=> b!6848810 (= c!1274954 ((_ is ElementMatch!16675) (regTwo!33863 r!7292)))))

(declare-fun e!4130038 () Bool)

(declare-fun e!4130036 () Bool)

(assert (=> b!6848810 (= e!4130038 e!4130036)))

(declare-fun b!6848811 () Bool)

(declare-fun c!1274957 () Bool)

(assert (=> b!6848811 (= c!1274957 ((_ is Union!16675) (regTwo!33863 r!7292)))))

(assert (=> b!6848811 (= e!4130036 e!4130033)))

(declare-fun b!6848812 () Bool)

(assert (=> b!6848812 (= e!4130032 e!4130038)))

(declare-fun res!2795705 () Bool)

(assert (=> b!6848812 (= res!2795705 (not ((_ is EmptyLang!16675) (regTwo!33863 r!7292))))))

(assert (=> b!6848812 (=> (not res!2795705) (not e!4130038))))

(declare-fun b!6848813 () Bool)

(assert (=> b!6848813 (= e!4130033 e!4130037)))

(declare-fun res!2795704 () Bool)

(assert (=> b!6848813 (= res!2795704 (matchRSpec!3776 (regOne!33863 (regTwo!33863 r!7292)) s!2326))))

(assert (=> b!6848813 (=> res!2795704 e!4130037)))

(declare-fun b!6848814 () Bool)

(assert (=> b!6848814 (= e!4130036 (= s!2326 (Cons!66202 (c!1274613 (regTwo!33863 r!7292)) Nil!66202)))))

(assert (= (and d!2152701 c!1274956) b!6848808))

(assert (= (and d!2152701 (not c!1274956)) b!6848812))

(assert (= (and b!6848812 res!2795705) b!6848810))

(assert (= (and b!6848810 c!1274954) b!6848814))

(assert (= (and b!6848810 (not c!1274954)) b!6848811))

(assert (= (and b!6848811 c!1274957) b!6848813))

(assert (= (and b!6848811 (not c!1274957)) b!6848805))

(assert (= (and b!6848813 (not res!2795704)) b!6848809))

(assert (= (and b!6848805 c!1274955) b!6848806))

(assert (= (and b!6848805 (not c!1274955)) b!6848804))

(assert (= (and b!6848806 (not res!2795706)) b!6848807))

(assert (= (or b!6848807 b!6848804) bm!623741))

(assert (= (or b!6848808 b!6848806) bm!623742))

(declare-fun m!7588172 () Bool)

(assert (=> bm!623741 m!7588172))

(assert (=> bm!623742 m!7587310))

(declare-fun m!7588174 () Bool)

(assert (=> b!6848809 m!7588174))

(declare-fun m!7588176 () Bool)

(assert (=> b!6848813 m!7588176))

(assert (=> b!6847561 d!2152701))

(declare-fun d!2152703 () Bool)

(declare-fun res!2795707 () Bool)

(declare-fun e!4130039 () Bool)

(assert (=> d!2152703 (=> res!2795707 e!4130039)))

(assert (=> d!2152703 (= res!2795707 ((_ is Nil!66201) lt!2455980))))

(assert (=> d!2152703 (= (noDuplicate!2441 lt!2455980) e!4130039)))

(declare-fun b!6848815 () Bool)

(declare-fun e!4130040 () Bool)

(assert (=> b!6848815 (= e!4130039 e!4130040)))

(declare-fun res!2795708 () Bool)

(assert (=> b!6848815 (=> (not res!2795708) (not e!4130040))))

(assert (=> b!6848815 (= res!2795708 (not (contains!20327 (t!380068 lt!2455980) (h!72649 lt!2455980))))))

(declare-fun b!6848816 () Bool)

(assert (=> b!6848816 (= e!4130040 (noDuplicate!2441 (t!380068 lt!2455980)))))

(assert (= (and d!2152703 (not res!2795707)) b!6848815))

(assert (= (and b!6848815 res!2795708) b!6848816))

(declare-fun m!7588178 () Bool)

(assert (=> b!6848815 m!7588178))

(declare-fun m!7588180 () Bool)

(assert (=> b!6848816 m!7588180))

(assert (=> d!2152413 d!2152703))

(declare-fun d!2152705 () Bool)

(declare-fun e!4130041 () Bool)

(assert (=> d!2152705 e!4130041))

(declare-fun res!2795709 () Bool)

(assert (=> d!2152705 (=> (not res!2795709) (not e!4130041))))

(declare-fun res!2795710 () List!66325)

(assert (=> d!2152705 (= res!2795709 (noDuplicate!2441 res!2795710))))

(declare-fun e!4130042 () Bool)

(assert (=> d!2152705 e!4130042))

(assert (=> d!2152705 (= (choose!51048 z!1189) res!2795710)))

(declare-fun b!6848818 () Bool)

(declare-fun e!4130043 () Bool)

(declare-fun tp!1876459 () Bool)

(assert (=> b!6848818 (= e!4130043 tp!1876459)))

(declare-fun b!6848817 () Bool)

(declare-fun tp!1876458 () Bool)

(assert (=> b!6848817 (= e!4130042 (and (inv!84934 (h!72649 res!2795710)) e!4130043 tp!1876458))))

(declare-fun b!6848819 () Bool)

(assert (=> b!6848819 (= e!4130041 (= (content!12981 res!2795710) z!1189))))

(assert (= b!6848817 b!6848818))

(assert (= (and d!2152705 ((_ is Cons!66201) res!2795710)) b!6848817))

(assert (= (and d!2152705 res!2795709) b!6848819))

(declare-fun m!7588182 () Bool)

(assert (=> d!2152705 m!7588182))

(declare-fun m!7588184 () Bool)

(assert (=> b!6848817 m!7588184))

(declare-fun m!7588186 () Bool)

(assert (=> b!6848819 m!7588186))

(assert (=> d!2152413 d!2152705))

(assert (=> d!2152389 d!2152415))

(declare-fun b!6848820 () Bool)

(declare-fun e!4130044 () Bool)

(assert (=> b!6848820 (= e!4130044 tp_is_empty!42603)))

(declare-fun b!6848822 () Bool)

(declare-fun tp!1876463 () Bool)

(assert (=> b!6848822 (= e!4130044 tp!1876463)))

(declare-fun b!6848823 () Bool)

(declare-fun tp!1876461 () Bool)

(declare-fun tp!1876464 () Bool)

(assert (=> b!6848823 (= e!4130044 (and tp!1876461 tp!1876464))))

(declare-fun b!6848821 () Bool)

(declare-fun tp!1876462 () Bool)

(declare-fun tp!1876460 () Bool)

(assert (=> b!6848821 (= e!4130044 (and tp!1876462 tp!1876460))))

(assert (=> b!6847961 (= tp!1876292 e!4130044)))

(assert (= (and b!6847961 ((_ is ElementMatch!16675) (regOne!33863 (reg!17004 r!7292)))) b!6848820))

(assert (= (and b!6847961 ((_ is Concat!25520) (regOne!33863 (reg!17004 r!7292)))) b!6848821))

(assert (= (and b!6847961 ((_ is Star!16675) (regOne!33863 (reg!17004 r!7292)))) b!6848822))

(assert (= (and b!6847961 ((_ is Union!16675) (regOne!33863 (reg!17004 r!7292)))) b!6848823))

(declare-fun b!6848824 () Bool)

(declare-fun e!4130045 () Bool)

(assert (=> b!6848824 (= e!4130045 tp_is_empty!42603)))

(declare-fun b!6848826 () Bool)

(declare-fun tp!1876468 () Bool)

(assert (=> b!6848826 (= e!4130045 tp!1876468)))

(declare-fun b!6848827 () Bool)

(declare-fun tp!1876466 () Bool)

(declare-fun tp!1876469 () Bool)

(assert (=> b!6848827 (= e!4130045 (and tp!1876466 tp!1876469))))

(declare-fun b!6848825 () Bool)

(declare-fun tp!1876467 () Bool)

(declare-fun tp!1876465 () Bool)

(assert (=> b!6848825 (= e!4130045 (and tp!1876467 tp!1876465))))

(assert (=> b!6847961 (= tp!1876295 e!4130045)))

(assert (= (and b!6847961 ((_ is ElementMatch!16675) (regTwo!33863 (reg!17004 r!7292)))) b!6848824))

(assert (= (and b!6847961 ((_ is Concat!25520) (regTwo!33863 (reg!17004 r!7292)))) b!6848825))

(assert (= (and b!6847961 ((_ is Star!16675) (regTwo!33863 (reg!17004 r!7292)))) b!6848826))

(assert (= (and b!6847961 ((_ is Union!16675) (regTwo!33863 (reg!17004 r!7292)))) b!6848827))

(declare-fun b!6848828 () Bool)

(declare-fun e!4130046 () Bool)

(assert (=> b!6848828 (= e!4130046 tp_is_empty!42603)))

(declare-fun b!6848830 () Bool)

(declare-fun tp!1876473 () Bool)

(assert (=> b!6848830 (= e!4130046 tp!1876473)))

(declare-fun b!6848831 () Bool)

(declare-fun tp!1876471 () Bool)

(declare-fun tp!1876474 () Bool)

(assert (=> b!6848831 (= e!4130046 (and tp!1876471 tp!1876474))))

(declare-fun b!6848829 () Bool)

(declare-fun tp!1876472 () Bool)

(declare-fun tp!1876470 () Bool)

(assert (=> b!6848829 (= e!4130046 (and tp!1876472 tp!1876470))))

(assert (=> b!6847952 (= tp!1876284 e!4130046)))

(assert (= (and b!6847952 ((_ is ElementMatch!16675) (reg!17004 (regOne!33862 r!7292)))) b!6848828))

(assert (= (and b!6847952 ((_ is Concat!25520) (reg!17004 (regOne!33862 r!7292)))) b!6848829))

(assert (= (and b!6847952 ((_ is Star!16675) (reg!17004 (regOne!33862 r!7292)))) b!6848830))

(assert (= (and b!6847952 ((_ is Union!16675) (reg!17004 (regOne!33862 r!7292)))) b!6848831))

(declare-fun b!6848832 () Bool)

(declare-fun e!4130047 () Bool)

(assert (=> b!6848832 (= e!4130047 tp_is_empty!42603)))

(declare-fun b!6848834 () Bool)

(declare-fun tp!1876478 () Bool)

(assert (=> b!6848834 (= e!4130047 tp!1876478)))

(declare-fun b!6848835 () Bool)

(declare-fun tp!1876476 () Bool)

(declare-fun tp!1876479 () Bool)

(assert (=> b!6848835 (= e!4130047 (and tp!1876476 tp!1876479))))

(declare-fun b!6848833 () Bool)

(declare-fun tp!1876477 () Bool)

(declare-fun tp!1876475 () Bool)

(assert (=> b!6848833 (= e!4130047 (and tp!1876477 tp!1876475))))

(assert (=> b!6847951 (= tp!1876283 e!4130047)))

(assert (= (and b!6847951 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33862 r!7292)))) b!6848832))

(assert (= (and b!6847951 ((_ is Concat!25520) (regOne!33862 (regOne!33862 r!7292)))) b!6848833))

(assert (= (and b!6847951 ((_ is Star!16675) (regOne!33862 (regOne!33862 r!7292)))) b!6848834))

(assert (= (and b!6847951 ((_ is Union!16675) (regOne!33862 (regOne!33862 r!7292)))) b!6848835))

(declare-fun b!6848836 () Bool)

(declare-fun e!4130048 () Bool)

(assert (=> b!6848836 (= e!4130048 tp_is_empty!42603)))

(declare-fun b!6848838 () Bool)

(declare-fun tp!1876483 () Bool)

(assert (=> b!6848838 (= e!4130048 tp!1876483)))

(declare-fun b!6848839 () Bool)

(declare-fun tp!1876481 () Bool)

(declare-fun tp!1876484 () Bool)

(assert (=> b!6848839 (= e!4130048 (and tp!1876481 tp!1876484))))

(declare-fun b!6848837 () Bool)

(declare-fun tp!1876482 () Bool)

(declare-fun tp!1876480 () Bool)

(assert (=> b!6848837 (= e!4130048 (and tp!1876482 tp!1876480))))

(assert (=> b!6847951 (= tp!1876281 e!4130048)))

(assert (= (and b!6847951 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33862 r!7292)))) b!6848836))

(assert (= (and b!6847951 ((_ is Concat!25520) (regTwo!33862 (regOne!33862 r!7292)))) b!6848837))

(assert (= (and b!6847951 ((_ is Star!16675) (regTwo!33862 (regOne!33862 r!7292)))) b!6848838))

(assert (= (and b!6847951 ((_ is Union!16675) (regTwo!33862 (regOne!33862 r!7292)))) b!6848839))

(declare-fun b!6848840 () Bool)

(declare-fun e!4130049 () Bool)

(assert (=> b!6848840 (= e!4130049 tp_is_empty!42603)))

(declare-fun b!6848842 () Bool)

(declare-fun tp!1876488 () Bool)

(assert (=> b!6848842 (= e!4130049 tp!1876488)))

(declare-fun b!6848843 () Bool)

(declare-fun tp!1876486 () Bool)

(declare-fun tp!1876489 () Bool)

(assert (=> b!6848843 (= e!4130049 (and tp!1876486 tp!1876489))))

(declare-fun b!6848841 () Bool)

(declare-fun tp!1876487 () Bool)

(declare-fun tp!1876485 () Bool)

(assert (=> b!6848841 (= e!4130049 (and tp!1876487 tp!1876485))))

(assert (=> b!6847960 (= tp!1876294 e!4130049)))

(assert (= (and b!6847960 ((_ is ElementMatch!16675) (reg!17004 (reg!17004 r!7292)))) b!6848840))

(assert (= (and b!6847960 ((_ is Concat!25520) (reg!17004 (reg!17004 r!7292)))) b!6848841))

(assert (= (and b!6847960 ((_ is Star!16675) (reg!17004 (reg!17004 r!7292)))) b!6848842))

(assert (= (and b!6847960 ((_ is Union!16675) (reg!17004 (reg!17004 r!7292)))) b!6848843))

(declare-fun b!6848844 () Bool)

(declare-fun e!4130050 () Bool)

(assert (=> b!6848844 (= e!4130050 tp_is_empty!42603)))

(declare-fun b!6848846 () Bool)

(declare-fun tp!1876493 () Bool)

(assert (=> b!6848846 (= e!4130050 tp!1876493)))

(declare-fun b!6848847 () Bool)

(declare-fun tp!1876491 () Bool)

(declare-fun tp!1876494 () Bool)

(assert (=> b!6848847 (= e!4130050 (and tp!1876491 tp!1876494))))

(declare-fun b!6848845 () Bool)

(declare-fun tp!1876492 () Bool)

(declare-fun tp!1876490 () Bool)

(assert (=> b!6848845 (= e!4130050 (and tp!1876492 tp!1876490))))

(assert (=> b!6847959 (= tp!1876293 e!4130050)))

(assert (= (and b!6847959 ((_ is ElementMatch!16675) (regOne!33862 (reg!17004 r!7292)))) b!6848844))

(assert (= (and b!6847959 ((_ is Concat!25520) (regOne!33862 (reg!17004 r!7292)))) b!6848845))

(assert (= (and b!6847959 ((_ is Star!16675) (regOne!33862 (reg!17004 r!7292)))) b!6848846))

(assert (= (and b!6847959 ((_ is Union!16675) (regOne!33862 (reg!17004 r!7292)))) b!6848847))

(declare-fun b!6848848 () Bool)

(declare-fun e!4130051 () Bool)

(assert (=> b!6848848 (= e!4130051 tp_is_empty!42603)))

(declare-fun b!6848850 () Bool)

(declare-fun tp!1876498 () Bool)

(assert (=> b!6848850 (= e!4130051 tp!1876498)))

(declare-fun b!6848851 () Bool)

(declare-fun tp!1876496 () Bool)

(declare-fun tp!1876499 () Bool)

(assert (=> b!6848851 (= e!4130051 (and tp!1876496 tp!1876499))))

(declare-fun b!6848849 () Bool)

(declare-fun tp!1876497 () Bool)

(declare-fun tp!1876495 () Bool)

(assert (=> b!6848849 (= e!4130051 (and tp!1876497 tp!1876495))))

(assert (=> b!6847959 (= tp!1876291 e!4130051)))

(assert (= (and b!6847959 ((_ is ElementMatch!16675) (regTwo!33862 (reg!17004 r!7292)))) b!6848848))

(assert (= (and b!6847959 ((_ is Concat!25520) (regTwo!33862 (reg!17004 r!7292)))) b!6848849))

(assert (= (and b!6847959 ((_ is Star!16675) (regTwo!33862 (reg!17004 r!7292)))) b!6848850))

(assert (= (and b!6847959 ((_ is Union!16675) (regTwo!33862 (reg!17004 r!7292)))) b!6848851))

(declare-fun b!6848852 () Bool)

(declare-fun e!4130052 () Bool)

(assert (=> b!6848852 (= e!4130052 tp_is_empty!42603)))

(declare-fun b!6848854 () Bool)

(declare-fun tp!1876503 () Bool)

(assert (=> b!6848854 (= e!4130052 tp!1876503)))

(declare-fun b!6848855 () Bool)

(declare-fun tp!1876501 () Bool)

(declare-fun tp!1876504 () Bool)

(assert (=> b!6848855 (= e!4130052 (and tp!1876501 tp!1876504))))

(declare-fun b!6848853 () Bool)

(declare-fun tp!1876502 () Bool)

(declare-fun tp!1876500 () Bool)

(assert (=> b!6848853 (= e!4130052 (and tp!1876502 tp!1876500))))

(assert (=> b!6847943 (= tp!1876269 e!4130052)))

(assert (= (and b!6847943 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33863 r!7292)))) b!6848852))

(assert (= (and b!6847943 ((_ is Concat!25520) (regOne!33863 (regTwo!33863 r!7292)))) b!6848853))

(assert (= (and b!6847943 ((_ is Star!16675) (regOne!33863 (regTwo!33863 r!7292)))) b!6848854))

(assert (= (and b!6847943 ((_ is Union!16675) (regOne!33863 (regTwo!33863 r!7292)))) b!6848855))

(declare-fun b!6848856 () Bool)

(declare-fun e!4130053 () Bool)

(assert (=> b!6848856 (= e!4130053 tp_is_empty!42603)))

(declare-fun b!6848858 () Bool)

(declare-fun tp!1876508 () Bool)

(assert (=> b!6848858 (= e!4130053 tp!1876508)))

(declare-fun b!6848859 () Bool)

(declare-fun tp!1876506 () Bool)

(declare-fun tp!1876509 () Bool)

(assert (=> b!6848859 (= e!4130053 (and tp!1876506 tp!1876509))))

(declare-fun b!6848857 () Bool)

(declare-fun tp!1876507 () Bool)

(declare-fun tp!1876505 () Bool)

(assert (=> b!6848857 (= e!4130053 (and tp!1876507 tp!1876505))))

(assert (=> b!6847943 (= tp!1876272 e!4130053)))

(assert (= (and b!6847943 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33863 r!7292)))) b!6848856))

(assert (= (and b!6847943 ((_ is Concat!25520) (regTwo!33863 (regTwo!33863 r!7292)))) b!6848857))

(assert (= (and b!6847943 ((_ is Star!16675) (regTwo!33863 (regTwo!33863 r!7292)))) b!6848858))

(assert (= (and b!6847943 ((_ is Union!16675) (regTwo!33863 (regTwo!33863 r!7292)))) b!6848859))

(declare-fun b!6848860 () Bool)

(declare-fun e!4130054 () Bool)

(assert (=> b!6848860 (= e!4130054 tp_is_empty!42603)))

(declare-fun b!6848862 () Bool)

(declare-fun tp!1876513 () Bool)

(assert (=> b!6848862 (= e!4130054 tp!1876513)))

(declare-fun b!6848863 () Bool)

(declare-fun tp!1876511 () Bool)

(declare-fun tp!1876514 () Bool)

(assert (=> b!6848863 (= e!4130054 (and tp!1876511 tp!1876514))))

(declare-fun b!6848861 () Bool)

(declare-fun tp!1876512 () Bool)

(declare-fun tp!1876510 () Bool)

(assert (=> b!6848861 (= e!4130054 (and tp!1876512 tp!1876510))))

(assert (=> b!6847949 (= tp!1876279 e!4130054)))

(assert (= (and b!6847949 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 setElem!47081)))) b!6848860))

(assert (= (and b!6847949 ((_ is Concat!25520) (h!72648 (exprs!6559 setElem!47081)))) b!6848861))

(assert (= (and b!6847949 ((_ is Star!16675) (h!72648 (exprs!6559 setElem!47081)))) b!6848862))

(assert (= (and b!6847949 ((_ is Union!16675) (h!72648 (exprs!6559 setElem!47081)))) b!6848863))

(declare-fun b!6848864 () Bool)

(declare-fun e!4130055 () Bool)

(declare-fun tp!1876515 () Bool)

(declare-fun tp!1876516 () Bool)

(assert (=> b!6848864 (= e!4130055 (and tp!1876515 tp!1876516))))

(assert (=> b!6847949 (= tp!1876280 e!4130055)))

(assert (= (and b!6847949 ((_ is Cons!66200) (t!380067 (exprs!6559 setElem!47081)))) b!6848864))

(declare-fun b!6848865 () Bool)

(declare-fun e!4130056 () Bool)

(assert (=> b!6848865 (= e!4130056 tp_is_empty!42603)))

(declare-fun b!6848867 () Bool)

(declare-fun tp!1876520 () Bool)

(assert (=> b!6848867 (= e!4130056 tp!1876520)))

(declare-fun b!6848868 () Bool)

(declare-fun tp!1876518 () Bool)

(declare-fun tp!1876521 () Bool)

(assert (=> b!6848868 (= e!4130056 (and tp!1876518 tp!1876521))))

(declare-fun b!6848866 () Bool)

(declare-fun tp!1876519 () Bool)

(declare-fun tp!1876517 () Bool)

(assert (=> b!6848866 (= e!4130056 (and tp!1876519 tp!1876517))))

(assert (=> b!6847942 (= tp!1876271 e!4130056)))

(assert (= (and b!6847942 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33863 r!7292)))) b!6848865))

(assert (= (and b!6847942 ((_ is Concat!25520) (reg!17004 (regTwo!33863 r!7292)))) b!6848866))

(assert (= (and b!6847942 ((_ is Star!16675) (reg!17004 (regTwo!33863 r!7292)))) b!6848867))

(assert (= (and b!6847942 ((_ is Union!16675) (reg!17004 (regTwo!33863 r!7292)))) b!6848868))

(declare-fun b!6848870 () Bool)

(declare-fun e!4130058 () Bool)

(declare-fun tp!1876522 () Bool)

(assert (=> b!6848870 (= e!4130058 tp!1876522)))

(declare-fun e!4130057 () Bool)

(declare-fun tp!1876523 () Bool)

(declare-fun b!6848869 () Bool)

(assert (=> b!6848869 (= e!4130057 (and (inv!84934 (h!72649 (t!380068 (t!380068 zl!343)))) e!4130058 tp!1876523))))

(assert (=> b!6847919 (= tp!1876246 e!4130057)))

(assert (= b!6848869 b!6848870))

(assert (= (and b!6847919 ((_ is Cons!66201) (t!380068 (t!380068 zl!343)))) b!6848869))

(declare-fun m!7588188 () Bool)

(assert (=> b!6848869 m!7588188))

(declare-fun b!6848871 () Bool)

(declare-fun e!4130059 () Bool)

(assert (=> b!6848871 (= e!4130059 tp_is_empty!42603)))

(declare-fun b!6848873 () Bool)

(declare-fun tp!1876527 () Bool)

(assert (=> b!6848873 (= e!4130059 tp!1876527)))

(declare-fun b!6848874 () Bool)

(declare-fun tp!1876525 () Bool)

(declare-fun tp!1876528 () Bool)

(assert (=> b!6848874 (= e!4130059 (and tp!1876525 tp!1876528))))

(declare-fun b!6848872 () Bool)

(declare-fun tp!1876526 () Bool)

(declare-fun tp!1876524 () Bool)

(assert (=> b!6848872 (= e!4130059 (and tp!1876526 tp!1876524))))

(assert (=> b!6847956 (= tp!1876289 e!4130059)))

(assert (= (and b!6847956 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33862 r!7292)))) b!6848871))

(assert (= (and b!6847956 ((_ is Concat!25520) (reg!17004 (regTwo!33862 r!7292)))) b!6848872))

(assert (= (and b!6847956 ((_ is Star!16675) (reg!17004 (regTwo!33862 r!7292)))) b!6848873))

(assert (= (and b!6847956 ((_ is Union!16675) (reg!17004 (regTwo!33862 r!7292)))) b!6848874))

(declare-fun b!6848875 () Bool)

(declare-fun e!4130060 () Bool)

(declare-fun tp!1876529 () Bool)

(declare-fun tp!1876530 () Bool)

(assert (=> b!6848875 (= e!4130060 (and tp!1876529 tp!1876530))))

(assert (=> b!6847920 (= tp!1876245 e!4130060)))

(assert (= (and b!6847920 ((_ is Cons!66200) (exprs!6559 (h!72649 (t!380068 zl!343))))) b!6848875))

(declare-fun b!6848876 () Bool)

(declare-fun e!4130061 () Bool)

(assert (=> b!6848876 (= e!4130061 tp_is_empty!42603)))

(declare-fun b!6848878 () Bool)

(declare-fun tp!1876534 () Bool)

(assert (=> b!6848878 (= e!4130061 tp!1876534)))

(declare-fun b!6848879 () Bool)

(declare-fun tp!1876532 () Bool)

(declare-fun tp!1876535 () Bool)

(assert (=> b!6848879 (= e!4130061 (and tp!1876532 tp!1876535))))

(declare-fun b!6848877 () Bool)

(declare-fun tp!1876533 () Bool)

(declare-fun tp!1876531 () Bool)

(assert (=> b!6848877 (= e!4130061 (and tp!1876533 tp!1876531))))

(assert (=> b!6847941 (= tp!1876270 e!4130061)))

(assert (= (and b!6847941 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33863 r!7292)))) b!6848876))

(assert (= (and b!6847941 ((_ is Concat!25520) (regOne!33862 (regTwo!33863 r!7292)))) b!6848877))

(assert (= (and b!6847941 ((_ is Star!16675) (regOne!33862 (regTwo!33863 r!7292)))) b!6848878))

(assert (= (and b!6847941 ((_ is Union!16675) (regOne!33862 (regTwo!33863 r!7292)))) b!6848879))

(declare-fun b!6848880 () Bool)

(declare-fun e!4130062 () Bool)

(assert (=> b!6848880 (= e!4130062 tp_is_empty!42603)))

(declare-fun b!6848882 () Bool)

(declare-fun tp!1876539 () Bool)

(assert (=> b!6848882 (= e!4130062 tp!1876539)))

(declare-fun b!6848883 () Bool)

(declare-fun tp!1876537 () Bool)

(declare-fun tp!1876540 () Bool)

(assert (=> b!6848883 (= e!4130062 (and tp!1876537 tp!1876540))))

(declare-fun b!6848881 () Bool)

(declare-fun tp!1876538 () Bool)

(declare-fun tp!1876536 () Bool)

(assert (=> b!6848881 (= e!4130062 (and tp!1876538 tp!1876536))))

(assert (=> b!6847941 (= tp!1876268 e!4130062)))

(assert (= (and b!6847941 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33863 r!7292)))) b!6848880))

(assert (= (and b!6847941 ((_ is Concat!25520) (regTwo!33862 (regTwo!33863 r!7292)))) b!6848881))

(assert (= (and b!6847941 ((_ is Star!16675) (regTwo!33862 (regTwo!33863 r!7292)))) b!6848882))

(assert (= (and b!6847941 ((_ is Union!16675) (regTwo!33862 (regTwo!33863 r!7292)))) b!6848883))

(declare-fun b!6848884 () Bool)

(declare-fun e!4130063 () Bool)

(assert (=> b!6848884 (= e!4130063 tp_is_empty!42603)))

(declare-fun b!6848886 () Bool)

(declare-fun tp!1876544 () Bool)

(assert (=> b!6848886 (= e!4130063 tp!1876544)))

(declare-fun b!6848887 () Bool)

(declare-fun tp!1876542 () Bool)

(declare-fun tp!1876545 () Bool)

(assert (=> b!6848887 (= e!4130063 (and tp!1876542 tp!1876545))))

(declare-fun b!6848885 () Bool)

(declare-fun tp!1876543 () Bool)

(declare-fun tp!1876541 () Bool)

(assert (=> b!6848885 (= e!4130063 (and tp!1876543 tp!1876541))))

(assert (=> b!6847957 (= tp!1876287 e!4130063)))

(assert (= (and b!6847957 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33862 r!7292)))) b!6848884))

(assert (= (and b!6847957 ((_ is Concat!25520) (regOne!33863 (regTwo!33862 r!7292)))) b!6848885))

(assert (= (and b!6847957 ((_ is Star!16675) (regOne!33863 (regTwo!33862 r!7292)))) b!6848886))

(assert (= (and b!6847957 ((_ is Union!16675) (regOne!33863 (regTwo!33862 r!7292)))) b!6848887))

(declare-fun b!6848888 () Bool)

(declare-fun e!4130064 () Bool)

(assert (=> b!6848888 (= e!4130064 tp_is_empty!42603)))

(declare-fun b!6848890 () Bool)

(declare-fun tp!1876549 () Bool)

(assert (=> b!6848890 (= e!4130064 tp!1876549)))

(declare-fun b!6848891 () Bool)

(declare-fun tp!1876547 () Bool)

(declare-fun tp!1876550 () Bool)

(assert (=> b!6848891 (= e!4130064 (and tp!1876547 tp!1876550))))

(declare-fun b!6848889 () Bool)

(declare-fun tp!1876548 () Bool)

(declare-fun tp!1876546 () Bool)

(assert (=> b!6848889 (= e!4130064 (and tp!1876548 tp!1876546))))

(assert (=> b!6847957 (= tp!1876290 e!4130064)))

(assert (= (and b!6847957 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33862 r!7292)))) b!6848888))

(assert (= (and b!6847957 ((_ is Concat!25520) (regTwo!33863 (regTwo!33862 r!7292)))) b!6848889))

(assert (= (and b!6847957 ((_ is Star!16675) (regTwo!33863 (regTwo!33862 r!7292)))) b!6848890))

(assert (= (and b!6847957 ((_ is Union!16675) (regTwo!33863 (regTwo!33862 r!7292)))) b!6848891))

(declare-fun b!6848892 () Bool)

(declare-fun e!4130065 () Bool)

(assert (=> b!6848892 (= e!4130065 tp_is_empty!42603)))

(declare-fun b!6848894 () Bool)

(declare-fun tp!1876554 () Bool)

(assert (=> b!6848894 (= e!4130065 tp!1876554)))

(declare-fun b!6848895 () Bool)

(declare-fun tp!1876552 () Bool)

(declare-fun tp!1876555 () Bool)

(assert (=> b!6848895 (= e!4130065 (and tp!1876552 tp!1876555))))

(declare-fun b!6848893 () Bool)

(declare-fun tp!1876553 () Bool)

(declare-fun tp!1876551 () Bool)

(assert (=> b!6848893 (= e!4130065 (and tp!1876553 tp!1876551))))

(assert (=> b!6847955 (= tp!1876288 e!4130065)))

(assert (= (and b!6847955 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33862 r!7292)))) b!6848892))

(assert (= (and b!6847955 ((_ is Concat!25520) (regOne!33862 (regTwo!33862 r!7292)))) b!6848893))

(assert (= (and b!6847955 ((_ is Star!16675) (regOne!33862 (regTwo!33862 r!7292)))) b!6848894))

(assert (= (and b!6847955 ((_ is Union!16675) (regOne!33862 (regTwo!33862 r!7292)))) b!6848895))

(declare-fun b!6848896 () Bool)

(declare-fun e!4130066 () Bool)

(assert (=> b!6848896 (= e!4130066 tp_is_empty!42603)))

(declare-fun b!6848898 () Bool)

(declare-fun tp!1876559 () Bool)

(assert (=> b!6848898 (= e!4130066 tp!1876559)))

(declare-fun b!6848899 () Bool)

(declare-fun tp!1876557 () Bool)

(declare-fun tp!1876560 () Bool)

(assert (=> b!6848899 (= e!4130066 (and tp!1876557 tp!1876560))))

(declare-fun b!6848897 () Bool)

(declare-fun tp!1876558 () Bool)

(declare-fun tp!1876556 () Bool)

(assert (=> b!6848897 (= e!4130066 (and tp!1876558 tp!1876556))))

(assert (=> b!6847955 (= tp!1876286 e!4130066)))

(assert (= (and b!6847955 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33862 r!7292)))) b!6848896))

(assert (= (and b!6847955 ((_ is Concat!25520) (regTwo!33862 (regTwo!33862 r!7292)))) b!6848897))

(assert (= (and b!6847955 ((_ is Star!16675) (regTwo!33862 (regTwo!33862 r!7292)))) b!6848898))

(assert (= (and b!6847955 ((_ is Union!16675) (regTwo!33862 (regTwo!33862 r!7292)))) b!6848899))

(declare-fun b!6848900 () Bool)

(declare-fun e!4130067 () Bool)

(assert (=> b!6848900 (= e!4130067 tp_is_empty!42603)))

(declare-fun b!6848902 () Bool)

(declare-fun tp!1876564 () Bool)

(assert (=> b!6848902 (= e!4130067 tp!1876564)))

(declare-fun b!6848903 () Bool)

(declare-fun tp!1876562 () Bool)

(declare-fun tp!1876565 () Bool)

(assert (=> b!6848903 (= e!4130067 (and tp!1876562 tp!1876565))))

(declare-fun b!6848901 () Bool)

(declare-fun tp!1876563 () Bool)

(declare-fun tp!1876561 () Bool)

(assert (=> b!6848901 (= e!4130067 (and tp!1876563 tp!1876561))))

(assert (=> b!6847925 (= tp!1876251 e!4130067)))

(assert (= (and b!6847925 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 (h!72649 zl!343))))) b!6848900))

(assert (= (and b!6847925 ((_ is Concat!25520) (h!72648 (exprs!6559 (h!72649 zl!343))))) b!6848901))

(assert (= (and b!6847925 ((_ is Star!16675) (h!72648 (exprs!6559 (h!72649 zl!343))))) b!6848902))

(assert (= (and b!6847925 ((_ is Union!16675) (h!72648 (exprs!6559 (h!72649 zl!343))))) b!6848903))

(declare-fun b!6848904 () Bool)

(declare-fun e!4130068 () Bool)

(declare-fun tp!1876566 () Bool)

(declare-fun tp!1876567 () Bool)

(assert (=> b!6848904 (= e!4130068 (and tp!1876566 tp!1876567))))

(assert (=> b!6847925 (= tp!1876252 e!4130068)))

(assert (= (and b!6847925 ((_ is Cons!66200) (t!380067 (exprs!6559 (h!72649 zl!343))))) b!6848904))

(declare-fun b!6848905 () Bool)

(declare-fun e!4130069 () Bool)

(declare-fun tp!1876568 () Bool)

(assert (=> b!6848905 (= e!4130069 (and tp_is_empty!42603 tp!1876568))))

(assert (=> b!6847912 (= tp!1876240 e!4130069)))

(assert (= (and b!6847912 ((_ is Cons!66202) (t!380069 (t!380069 s!2326)))) b!6848905))

(declare-fun b!6848906 () Bool)

(declare-fun e!4130070 () Bool)

(declare-fun tp!1876569 () Bool)

(declare-fun tp!1876570 () Bool)

(assert (=> b!6848906 (= e!4130070 (and tp!1876569 tp!1876570))))

(assert (=> b!6847948 (= tp!1876278 e!4130070)))

(assert (= (and b!6847948 ((_ is Cons!66200) (exprs!6559 setElem!47087))) b!6848906))

(declare-fun condSetEmpty!47089 () Bool)

(assert (=> setNonEmpty!47087 (= condSetEmpty!47089 (= setRest!47087 ((as const (Array Context!12118 Bool)) false)))))

(declare-fun setRes!47089 () Bool)

(assert (=> setNonEmpty!47087 (= tp!1876277 setRes!47089)))

(declare-fun setIsEmpty!47089 () Bool)

(assert (=> setIsEmpty!47089 setRes!47089))

(declare-fun e!4130071 () Bool)

(declare-fun setElem!47089 () Context!12118)

(declare-fun setNonEmpty!47089 () Bool)

(declare-fun tp!1876571 () Bool)

(assert (=> setNonEmpty!47089 (= setRes!47089 (and tp!1876571 (inv!84934 setElem!47089) e!4130071))))

(declare-fun setRest!47089 () (InoxSet Context!12118))

(assert (=> setNonEmpty!47089 (= setRest!47087 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) setElem!47089 true) setRest!47089))))

(declare-fun b!6848907 () Bool)

(declare-fun tp!1876572 () Bool)

(assert (=> b!6848907 (= e!4130071 tp!1876572)))

(assert (= (and setNonEmpty!47087 condSetEmpty!47089) setIsEmpty!47089))

(assert (= (and setNonEmpty!47087 (not condSetEmpty!47089)) setNonEmpty!47089))

(assert (= setNonEmpty!47089 b!6848907))

(declare-fun m!7588190 () Bool)

(assert (=> setNonEmpty!47089 m!7588190))

(declare-fun b!6848908 () Bool)

(declare-fun e!4130072 () Bool)

(assert (=> b!6848908 (= e!4130072 tp_is_empty!42603)))

(declare-fun b!6848910 () Bool)

(declare-fun tp!1876576 () Bool)

(assert (=> b!6848910 (= e!4130072 tp!1876576)))

(declare-fun b!6848911 () Bool)

(declare-fun tp!1876574 () Bool)

(declare-fun tp!1876577 () Bool)

(assert (=> b!6848911 (= e!4130072 (and tp!1876574 tp!1876577))))

(declare-fun b!6848909 () Bool)

(declare-fun tp!1876575 () Bool)

(declare-fun tp!1876573 () Bool)

(assert (=> b!6848909 (= e!4130072 (and tp!1876575 tp!1876573))))

(assert (=> b!6847938 (= tp!1876266 e!4130072)))

(assert (= (and b!6847938 ((_ is ElementMatch!16675) (reg!17004 (regOne!33863 r!7292)))) b!6848908))

(assert (= (and b!6847938 ((_ is Concat!25520) (reg!17004 (regOne!33863 r!7292)))) b!6848909))

(assert (= (and b!6847938 ((_ is Star!16675) (reg!17004 (regOne!33863 r!7292)))) b!6848910))

(assert (= (and b!6847938 ((_ is Union!16675) (reg!17004 (regOne!33863 r!7292)))) b!6848911))

(declare-fun b!6848912 () Bool)

(declare-fun e!4130073 () Bool)

(assert (=> b!6848912 (= e!4130073 tp_is_empty!42603)))

(declare-fun b!6848914 () Bool)

(declare-fun tp!1876581 () Bool)

(assert (=> b!6848914 (= e!4130073 tp!1876581)))

(declare-fun b!6848915 () Bool)

(declare-fun tp!1876579 () Bool)

(declare-fun tp!1876582 () Bool)

(assert (=> b!6848915 (= e!4130073 (and tp!1876579 tp!1876582))))

(declare-fun b!6848913 () Bool)

(declare-fun tp!1876580 () Bool)

(declare-fun tp!1876578 () Bool)

(assert (=> b!6848913 (= e!4130073 (and tp!1876580 tp!1876578))))

(assert (=> b!6847939 (= tp!1876264 e!4130073)))

(assert (= (and b!6847939 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33863 r!7292)))) b!6848912))

(assert (= (and b!6847939 ((_ is Concat!25520) (regOne!33863 (regOne!33863 r!7292)))) b!6848913))

(assert (= (and b!6847939 ((_ is Star!16675) (regOne!33863 (regOne!33863 r!7292)))) b!6848914))

(assert (= (and b!6847939 ((_ is Union!16675) (regOne!33863 (regOne!33863 r!7292)))) b!6848915))

(declare-fun b!6848916 () Bool)

(declare-fun e!4130074 () Bool)

(assert (=> b!6848916 (= e!4130074 tp_is_empty!42603)))

(declare-fun b!6848918 () Bool)

(declare-fun tp!1876586 () Bool)

(assert (=> b!6848918 (= e!4130074 tp!1876586)))

(declare-fun b!6848919 () Bool)

(declare-fun tp!1876584 () Bool)

(declare-fun tp!1876587 () Bool)

(assert (=> b!6848919 (= e!4130074 (and tp!1876584 tp!1876587))))

(declare-fun b!6848917 () Bool)

(declare-fun tp!1876585 () Bool)

(declare-fun tp!1876583 () Bool)

(assert (=> b!6848917 (= e!4130074 (and tp!1876585 tp!1876583))))

(assert (=> b!6847939 (= tp!1876267 e!4130074)))

(assert (= (and b!6847939 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33863 r!7292)))) b!6848916))

(assert (= (and b!6847939 ((_ is Concat!25520) (regTwo!33863 (regOne!33863 r!7292)))) b!6848917))

(assert (= (and b!6847939 ((_ is Star!16675) (regTwo!33863 (regOne!33863 r!7292)))) b!6848918))

(assert (= (and b!6847939 ((_ is Union!16675) (regTwo!33863 (regOne!33863 r!7292)))) b!6848919))

(declare-fun b!6848920 () Bool)

(declare-fun e!4130075 () Bool)

(assert (=> b!6848920 (= e!4130075 tp_is_empty!42603)))

(declare-fun b!6848922 () Bool)

(declare-fun tp!1876591 () Bool)

(assert (=> b!6848922 (= e!4130075 tp!1876591)))

(declare-fun b!6848923 () Bool)

(declare-fun tp!1876589 () Bool)

(declare-fun tp!1876592 () Bool)

(assert (=> b!6848923 (= e!4130075 (and tp!1876589 tp!1876592))))

(declare-fun b!6848921 () Bool)

(declare-fun tp!1876590 () Bool)

(declare-fun tp!1876588 () Bool)

(assert (=> b!6848921 (= e!4130075 (and tp!1876590 tp!1876588))))

(assert (=> b!6847937 (= tp!1876265 e!4130075)))

(assert (= (and b!6847937 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33863 r!7292)))) b!6848920))

(assert (= (and b!6847937 ((_ is Concat!25520) (regOne!33862 (regOne!33863 r!7292)))) b!6848921))

(assert (= (and b!6847937 ((_ is Star!16675) (regOne!33862 (regOne!33863 r!7292)))) b!6848922))

(assert (= (and b!6847937 ((_ is Union!16675) (regOne!33862 (regOne!33863 r!7292)))) b!6848923))

(declare-fun b!6848924 () Bool)

(declare-fun e!4130076 () Bool)

(assert (=> b!6848924 (= e!4130076 tp_is_empty!42603)))

(declare-fun b!6848926 () Bool)

(declare-fun tp!1876596 () Bool)

(assert (=> b!6848926 (= e!4130076 tp!1876596)))

(declare-fun b!6848927 () Bool)

(declare-fun tp!1876594 () Bool)

(declare-fun tp!1876597 () Bool)

(assert (=> b!6848927 (= e!4130076 (and tp!1876594 tp!1876597))))

(declare-fun b!6848925 () Bool)

(declare-fun tp!1876595 () Bool)

(declare-fun tp!1876593 () Bool)

(assert (=> b!6848925 (= e!4130076 (and tp!1876595 tp!1876593))))

(assert (=> b!6847937 (= tp!1876263 e!4130076)))

(assert (= (and b!6847937 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33863 r!7292)))) b!6848924))

(assert (= (and b!6847937 ((_ is Concat!25520) (regTwo!33862 (regOne!33863 r!7292)))) b!6848925))

(assert (= (and b!6847937 ((_ is Star!16675) (regTwo!33862 (regOne!33863 r!7292)))) b!6848926))

(assert (= (and b!6847937 ((_ is Union!16675) (regTwo!33862 (regOne!33863 r!7292)))) b!6848927))

(declare-fun b!6848928 () Bool)

(declare-fun e!4130077 () Bool)

(assert (=> b!6848928 (= e!4130077 tp_is_empty!42603)))

(declare-fun b!6848930 () Bool)

(declare-fun tp!1876601 () Bool)

(assert (=> b!6848930 (= e!4130077 tp!1876601)))

(declare-fun b!6848931 () Bool)

(declare-fun tp!1876599 () Bool)

(declare-fun tp!1876602 () Bool)

(assert (=> b!6848931 (= e!4130077 (and tp!1876599 tp!1876602))))

(declare-fun b!6848929 () Bool)

(declare-fun tp!1876600 () Bool)

(declare-fun tp!1876598 () Bool)

(assert (=> b!6848929 (= e!4130077 (and tp!1876600 tp!1876598))))

(assert (=> b!6847953 (= tp!1876282 e!4130077)))

(assert (= (and b!6847953 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33862 r!7292)))) b!6848928))

(assert (= (and b!6847953 ((_ is Concat!25520) (regOne!33863 (regOne!33862 r!7292)))) b!6848929))

(assert (= (and b!6847953 ((_ is Star!16675) (regOne!33863 (regOne!33862 r!7292)))) b!6848930))

(assert (= (and b!6847953 ((_ is Union!16675) (regOne!33863 (regOne!33862 r!7292)))) b!6848931))

(declare-fun b!6848932 () Bool)

(declare-fun e!4130078 () Bool)

(assert (=> b!6848932 (= e!4130078 tp_is_empty!42603)))

(declare-fun b!6848934 () Bool)

(declare-fun tp!1876606 () Bool)

(assert (=> b!6848934 (= e!4130078 tp!1876606)))

(declare-fun b!6848935 () Bool)

(declare-fun tp!1876604 () Bool)

(declare-fun tp!1876607 () Bool)

(assert (=> b!6848935 (= e!4130078 (and tp!1876604 tp!1876607))))

(declare-fun b!6848933 () Bool)

(declare-fun tp!1876605 () Bool)

(declare-fun tp!1876603 () Bool)

(assert (=> b!6848933 (= e!4130078 (and tp!1876605 tp!1876603))))

(assert (=> b!6847953 (= tp!1876285 e!4130078)))

(assert (= (and b!6847953 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33862 r!7292)))) b!6848932))

(assert (= (and b!6847953 ((_ is Concat!25520) (regTwo!33863 (regOne!33862 r!7292)))) b!6848933))

(assert (= (and b!6847953 ((_ is Star!16675) (regTwo!33863 (regOne!33862 r!7292)))) b!6848934))

(assert (= (and b!6847953 ((_ is Union!16675) (regTwo!33863 (regOne!33862 r!7292)))) b!6848935))

(declare-fun b_lambda!258459 () Bool)

(assert (= b_lambda!258449 (or b!6847423 b_lambda!258459)))

(declare-fun bs!1830602 () Bool)

(declare-fun d!2152707 () Bool)

(assert (= bs!1830602 (and d!2152707 b!6847423)))

(declare-fun res!2795711 () Bool)

(declare-fun e!4130079 () Bool)

(assert (=> bs!1830602 (=> (not res!2795711) (not e!4130079))))

(assert (=> bs!1830602 (= res!2795711 (validRegex!8411 lt!2456036))))

(assert (=> bs!1830602 (= (dynLambda!26455 lambda!387176 lt!2456036) e!4130079)))

(declare-fun b!6848936 () Bool)

(assert (=> b!6848936 (= e!4130079 (matchR!8858 lt!2456036 s!2326))))

(assert (= (and bs!1830602 res!2795711) b!6848936))

(declare-fun m!7588192 () Bool)

(assert (=> bs!1830602 m!7588192))

(declare-fun m!7588194 () Bool)

(assert (=> b!6848936 m!7588194))

(assert (=> d!2152623 d!2152707))

(declare-fun b_lambda!258461 () Bool)

(assert (= b_lambda!258455 (or d!2152415 b_lambda!258461)))

(declare-fun bs!1830603 () Bool)

(declare-fun d!2152709 () Bool)

(assert (= bs!1830603 (and d!2152709 d!2152415)))

(assert (=> bs!1830603 (= (dynLambda!26456 lambda!387230 (h!72649 zl!343)) (not (dynLambda!26456 lambda!387177 (h!72649 zl!343))))))

(declare-fun b_lambda!258479 () Bool)

(assert (=> (not b_lambda!258479) (not bs!1830603)))

(assert (=> bs!1830603 m!7587438))

(assert (=> b!6848730 d!2152709))

(declare-fun b_lambda!258463 () Bool)

(assert (= b_lambda!258457 (or d!2152411 b_lambda!258463)))

(declare-fun bs!1830604 () Bool)

(declare-fun d!2152711 () Bool)

(assert (= bs!1830604 (and d!2152711 d!2152411)))

(assert (=> bs!1830604 (= (dynLambda!26455 lambda!387227 (h!72648 (exprs!6559 (h!72649 zl!343)))) (validRegex!8411 (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun m!7588196 () Bool)

(assert (=> bs!1830604 m!7588196))

(assert (=> b!6848742 d!2152711))

(declare-fun b_lambda!258465 () Bool)

(assert (= b_lambda!258445 (or b!6847411 b_lambda!258465)))

(declare-fun bs!1830605 () Bool)

(declare-fun d!2152713 () Bool)

(assert (= bs!1830605 (and d!2152713 b!6847411)))

(assert (=> bs!1830605 (= (dynLambda!26456 lambda!387177 (h!72649 (t!380068 zl!343))) (= (generalisedConcat!2266 (exprs!6559 (h!72649 (t!380068 zl!343)))) lt!2455885))))

(assert (=> bs!1830605 m!7587896))

(assert (=> b!6848518 d!2152713))

(declare-fun b_lambda!258467 () Bool)

(assert (= b_lambda!258447 (or b!6847423 b_lambda!258467)))

(declare-fun bs!1830606 () Bool)

(declare-fun d!2152715 () Bool)

(assert (= bs!1830606 (and d!2152715 b!6847423)))

(declare-fun res!2795712 () Bool)

(declare-fun e!4130080 () Bool)

(assert (=> bs!1830606 (=> (not res!2795712) (not e!4130080))))

(assert (=> bs!1830606 (= res!2795712 (validRegex!8411 (h!72648 (t!380067 lt!2455888))))))

(assert (=> bs!1830606 (= (dynLambda!26455 lambda!387176 (h!72648 (t!380067 lt!2455888))) e!4130080)))

(declare-fun b!6848937 () Bool)

(assert (=> b!6848937 (= e!4130080 (matchR!8858 (h!72648 (t!380067 lt!2455888)) s!2326))))

(assert (= (and bs!1830606 res!2795712) b!6848937))

(declare-fun m!7588198 () Bool)

(assert (=> bs!1830606 m!7588198))

(declare-fun m!7588200 () Bool)

(assert (=> b!6848937 m!7588200))

(assert (=> b!6848608 d!2152715))

(declare-fun b_lambda!258469 () Bool)

(assert (= b_lambda!258441 (or d!2152375 b_lambda!258469)))

(declare-fun bs!1830607 () Bool)

(declare-fun d!2152717 () Bool)

(assert (= bs!1830607 (and d!2152717 d!2152375)))

(assert (=> bs!1830607 (= (dynLambda!26455 lambda!387214 (h!72648 (exprs!6559 setElem!47081))) (validRegex!8411 (h!72648 (exprs!6559 setElem!47081))))))

(declare-fun m!7588202 () Bool)

(assert (=> bs!1830607 m!7588202))

(assert (=> b!6848497 d!2152717))

(declare-fun b_lambda!258471 () Bool)

(assert (= b_lambda!258439 (or d!2152407 b_lambda!258471)))

(declare-fun bs!1830608 () Bool)

(declare-fun d!2152719 () Bool)

(assert (= bs!1830608 (and d!2152719 d!2152407)))

(assert (=> bs!1830608 (= (dynLambda!26455 lambda!387222 (h!72648 lt!2455888)) (validRegex!8411 (h!72648 lt!2455888)))))

(assert (=> bs!1830608 m!7587518))

(assert (=> b!6848495 d!2152719))

(declare-fun b_lambda!258473 () Bool)

(assert (= b_lambda!258443 (or b!6847411 b_lambda!258473)))

(declare-fun bs!1830609 () Bool)

(declare-fun d!2152721 () Bool)

(assert (= bs!1830609 (and d!2152721 b!6847411)))

(assert (=> bs!1830609 (= (dynLambda!26456 lambda!387177 lt!2456026) (= (generalisedConcat!2266 (exprs!6559 lt!2456026)) lt!2455885))))

(declare-fun m!7588204 () Bool)

(assert (=> bs!1830609 m!7588204))

(assert (=> d!2152601 d!2152721))

(declare-fun b_lambda!258475 () Bool)

(assert (= b_lambda!258453 (or d!2152405 b_lambda!258475)))

(declare-fun bs!1830610 () Bool)

(declare-fun d!2152723 () Bool)

(assert (= bs!1830610 (and d!2152723 d!2152405)))

(assert (=> bs!1830610 (= (dynLambda!26455 lambda!387217 (h!72648 lt!2455888)) (not (dynLambda!26455 lambda!387176 (h!72648 lt!2455888))))))

(declare-fun b_lambda!258481 () Bool)

(assert (=> (not b_lambda!258481) (not bs!1830610)))

(assert (=> bs!1830610 m!7587426))

(assert (=> b!6848724 d!2152723))

(declare-fun b_lambda!258477 () Bool)

(assert (= b_lambda!258451 (or d!2152409 b_lambda!258477)))

(declare-fun bs!1830611 () Bool)

(declare-fun d!2152725 () Bool)

(assert (= bs!1830611 (and d!2152725 d!2152409)))

(assert (=> bs!1830611 (= (dynLambda!26455 lambda!387226 (h!72648 lt!2455979)) (validRegex!8411 (h!72648 lt!2455979)))))

(declare-fun m!7588206 () Bool)

(assert (=> bs!1830611 m!7588206))

(assert (=> b!6848688 d!2152725))

(check-sat (not b_lambda!258481) (not b!6848827) (not b!6848918) (not b!6848830) (not bm!623732) (not b!6848839) (not b!6848905) (not b!6848743) (not bm!623716) (not b!6848666) (not b!6848829) (not b!6848882) (not b!6848771) (not bm!623713) (not d!2152629) (not b!6848602) (not b!6848676) (not b!6848910) (not bm!623741) (not b!6848621) (not b!6848813) (not b!6848738) (not b!6848689) (not b!6848915) (not b!6848498) (not b!6848930) (not d!2152661) (not b!6848862) (not b!6848735) (not b!6848732) (not b!6848877) (not bs!1830602) (not bm!623719) (not b!6848879) (not b!6848857) (not d!2152645) (not bm!623739) (not b!6848487) (not bs!1830604) (not b!6848935) (not b!6848478) (not b!6848854) (not b!6848778) (not b!6848503) (not b_lambda!258473) (not b!6848851) (not b!6848906) (not b!6848926) (not b!6848895) (not b_lambda!258461) (not b!6848893) (not b!6848714) (not b!6848611) (not b!6848922) (not b!6848596) (not b!6848847) (not bm!623734) (not b!6848809) (not b!6848526) (not b!6848909) (not setNonEmpty!47089) (not b!6848815) (not b!6848917) (not b!6848842) (not b_lambda!258479) (not b_lambda!258471) (not b!6848617) (not d!2152579) (not b!6848934) (not b!6848723) (not bm!623709) (not b_lambda!258391) (not b!6848870) (not b!6848923) (not b!6848504) (not b!6848927) (not d!2152679) (not b_lambda!258387) (not b!6848650) (not d!2152655) (not d!2152601) (not b!6848863) (not b!6848683) (not b!6848649) (not b!6848731) (not d!2152705) (not b!6848513) (not b_lambda!258465) (not bm!623705) (not b!6848510) (not b!6848858) (not b!6848936) (not b!6848523) (not b_lambda!258389) (not d!2152591) (not b!6848477) (not b!6848657) (not bm!623729) (not b!6848872) (not b!6848482) (not b!6848565) (not b!6848833) (not d!2152603) (not b!6848620) (not b!6848822) (not b!6848907) (not b!6848524) (not bm!623689) (not b!6848737) (not b!6848607) (not d!2152621) (not bm!623726) (not b!6848517) (not d!2152665) (not b!6848507) (not bm!623740) (not b!6848890) (not b!6848843) (not b!6848606) (not b!6848506) (not b!6848605) (not d!2152649) (not b!6848527) (not b!6848931) (not b!6848859) (not b_lambda!258469) (not b!6848867) (not b_lambda!258475) (not b!6848798) (not b!6848623) (not b!6848891) (not bm!623717) (not b!6848875) (not b!6848563) (not b!6848725) (not b!6848483) (not b!6848648) (not d!2152691) (not d!2152697) (not b!6848761) (not b!6848825) (not b!6848486) (not bm!623727) (not bm!623706) (not d!2152633) (not b!6848850) (not bm!623690) (not d!2152635) (not b!6848775) (not b!6848571) (not b!6848530) (not b!6848873) (not b!6848899) (not b!6848816) (not b!6848746) (not b!6848516) (not b!6848889) (not b!6848921) (not b!6848874) (not bm!623731) (not d!2152671) (not b!6848733) (not b!6848846) (not b!6848479) (not b_lambda!258467) (not b!6848834) (not b!6848914) (not b!6848826) (not b!6848887) (not bm!623736) (not b!6848898) (not b!6848797) (not b!6848560) (not b!6848640) (not d!2152647) (not b!6848818) (not b!6848894) (not d!2152687) (not b!6848855) (not bs!1830609) (not b!6848911) (not b!6848600) (not b!6848641) (not b!6848937) (not b!6848878) (not b!6848845) (not bm!623710) (not b!6848838) (not b!6848508) (not b!6848780) (not b!6848652) (not b!6848881) (not b!6848901) (not b!6848885) (not b!6848933) (not bm!623702) (not b!6848929) (not d!2152599) (not b!6848619) (not b!6848819) (not b!6848678) (not b!6848480) (not b!6848597) (not b!6848616) (not b_lambda!258459) (not b!6848604) (not bm!623701) (not b_lambda!258393) (not b!6848528) (not b!6848837) (not bs!1830607) (not b!6848913) (not b!6848869) (not b!6848799) (not d!2152587) (not d!2152627) (not b!6848841) (not d!2152637) (not bm!623735) (not bm!623742) (not b!6848919) (not d!2152695) (not b!6848897) (not bs!1830606) (not d!2152607) (not b!6848831) (not bm!623714) (not bm!623737) (not b!6848734) (not b_lambda!258477) (not b!6848794) (not d!2152605) (not bm!623711) (not b!6848883) (not b!6848861) (not bs!1830608) (not b!6848456) (not b!6848821) (not b!6848904) (not b!6848817) (not b!6848835) (not b!6848902) (not bm!623703) (not b!6848599) (not b!6848823) (not b!6848903) (not b!6848752) (not b!6848849) (not b!6848886) (not b!6848785) (not b!6848795) tp_is_empty!42603 (not d!2152623) (not b!6848868) (not b!6848866) (not b_lambda!258463) (not bs!1830605) (not d!2152625) (not d!2152585) (not b!6848496) (not b!6848925) (not b!6848741) (not b!6848801) (not bs!1830611) (not b!6848853) (not b!6848721) (not b!6848744) (not d!2152663) (not b!6848864) (not b!6848633) (not d!2152589))
(check-sat)
(get-model)

(declare-fun b_lambda!258487 () Bool)

(assert (= b_lambda!258481 (or b!6847423 b_lambda!258487)))

(assert (=> bs!1830610 d!2152423))

(declare-fun b_lambda!258489 () Bool)

(assert (= b_lambda!258479 (or b!6847411 b_lambda!258489)))

(assert (=> bs!1830603 d!2152427))

(check-sat (not b!6848827) (not b!6848918) (not b!6848830) (not bm!623732) (not b!6848839) (not b!6848905) (not b!6848743) (not bm!623716) (not b!6848666) (not b!6848829) (not b!6848882) (not b!6848771) (not bm!623713) (not d!2152629) (not b!6848602) (not b!6848676) (not b!6848910) (not bm!623741) (not b!6848621) (not b!6848813) (not b!6848738) (not b!6848689) (not b!6848915) (not b!6848498) (not b!6848930) (not d!2152661) (not b!6848862) (not b!6848735) (not b!6848732) (not b!6848877) (not bs!1830602) (not bm!623719) (not b!6848879) (not b!6848857) (not d!2152645) (not bm!623739) (not b!6848487) (not bs!1830604) (not b!6848935) (not b!6848478) (not b!6848854) (not b!6848778) (not b!6848503) (not b_lambda!258473) (not b!6848851) (not b!6848906) (not b!6848926) (not b!6848895) (not b_lambda!258461) (not b!6848893) (not b!6848714) (not b!6848611) (not b!6848922) (not b!6848596) (not b!6848847) (not bm!623734) (not b!6848809) (not b!6848526) (not b!6848909) (not setNonEmpty!47089) (not b!6848815) (not b!6848917) (not b!6848842) (not b_lambda!258471) (not b!6848617) (not d!2152579) (not b!6848934) (not b!6848723) (not bm!623709) (not b_lambda!258391) (not b!6848870) (not b!6848923) (not b!6848504) (not b!6848927) (not d!2152679) (not b_lambda!258387) (not b!6848650) (not d!2152655) (not d!2152601) (not b!6848863) (not b!6848683) (not b!6848649) (not b!6848731) (not d!2152705) (not b!6848513) (not b_lambda!258465) (not bm!623705) (not b!6848510) (not b!6848858) (not b!6848936) (not b!6848523) (not b_lambda!258389) (not d!2152591) (not b!6848477) (not b!6848657) (not bm!623729) (not b!6848872) (not b!6848482) (not b!6848565) (not b!6848833) (not d!2152603) (not b!6848620) (not b!6848822) (not b!6848907) (not b!6848524) (not bm!623689) (not b!6848737) (not b!6848607) (not d!2152621) (not bm!623726) (not b!6848517) (not d!2152665) (not b!6848507) (not bm!623740) (not b!6848890) (not b!6848843) (not b!6848606) (not b!6848506) (not b!6848605) (not d!2152649) (not b!6848527) (not b!6848931) (not b!6848859) (not b_lambda!258469) (not b!6848867) (not b_lambda!258475) (not b!6848798) (not b!6848623) (not b!6848891) (not bm!623717) (not b!6848875) (not b!6848563) (not b!6848725) (not b!6848483) (not b!6848648) (not d!2152691) (not d!2152697) (not b!6848761) (not b!6848825) (not b!6848486) (not bm!623727) (not bm!623706) (not d!2152633) (not b!6848850) (not bm!623690) (not d!2152635) (not b!6848775) (not b!6848571) (not b!6848530) (not b!6848873) (not b!6848899) (not b!6848816) (not b!6848746) (not b!6848516) (not b!6848889) (not b!6848921) (not b!6848874) (not bm!623731) (not d!2152671) (not b!6848733) (not b!6848846) (not b!6848479) (not b_lambda!258467) (not b!6848834) (not b!6848914) (not b!6848826) (not b!6848887) (not bm!623736) (not b!6848898) (not b!6848797) (not b!6848560) (not b!6848640) (not d!2152647) (not b!6848818) (not b!6848894) (not d!2152687) (not b!6848855) (not bs!1830609) (not b!6848911) (not b!6848600) (not b!6848641) (not b!6848937) (not b!6848878) (not b!6848845) (not bm!623710) (not b!6848838) (not b!6848508) (not b!6848780) (not b!6848652) (not b!6848881) (not b_lambda!258489) (not b!6848901) (not b!6848885) (not b!6848933) (not bm!623702) (not b!6848929) (not d!2152599) (not b!6848619) (not b!6848819) (not b!6848678) (not b!6848480) (not b!6848597) (not b!6848616) (not b_lambda!258459) (not b!6848604) (not bm!623701) (not b_lambda!258393) (not b!6848528) (not b!6848837) (not bs!1830607) (not b!6848913) (not b!6848869) (not b!6848799) (not d!2152587) (not d!2152627) (not b!6848841) (not d!2152637) (not b_lambda!258487) (not bm!623735) (not bm!623742) (not b!6848919) (not d!2152695) (not b!6848897) (not bs!1830606) (not d!2152607) (not b!6848831) (not bm!623714) (not bm!623737) (not b!6848734) (not b_lambda!258477) (not b!6848794) (not d!2152605) (not bm!623711) (not b!6848883) (not b!6848861) (not bs!1830608) (not b!6848456) (not b!6848821) (not b!6848904) (not b!6848817) (not b!6848835) (not b!6848902) (not bm!623703) (not b!6848599) (not b!6848823) (not b!6848903) (not b!6848752) (not b!6848849) (not b!6848886) (not b!6848785) (not b!6848795) tp_is_empty!42603 (not d!2152623) (not b!6848868) (not b!6848866) (not b_lambda!258463) (not bs!1830605) (not d!2152625) (not d!2152585) (not b!6848496) (not b!6848925) (not b!6848741) (not b!6848801) (not bs!1830611) (not b!6848853) (not b!6848721) (not b!6848744) (not d!2152663) (not b!6848864) (not b!6848633) (not d!2152589))
(check-sat)
(get-model)

(assert (=> bm!623706 d!2152617))

(declare-fun d!2152855 () Bool)

(assert (=> d!2152855 (= (isConcat!1529 lt!2456050) ((_ is Concat!25520) lt!2456050))))

(assert (=> b!6848734 d!2152855))

(declare-fun d!2152859 () Bool)

(assert (=> d!2152859 (= (nullable!6638 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))) (nullableFct!2522 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))

(declare-fun bs!1830694 () Bool)

(assert (= bs!1830694 d!2152859))

(declare-fun m!7588450 () Bool)

(assert (=> bs!1830694 m!7588450))

(assert (=> b!6848657 d!2152859))

(declare-fun b!6849160 () Bool)

(declare-fun e!4130237 () Bool)

(declare-fun call!623794 () Bool)

(assert (=> b!6849160 (= e!4130237 call!623794)))

(declare-fun b!6849161 () Bool)

(declare-fun e!4130241 () Bool)

(declare-fun e!4130239 () Bool)

(assert (=> b!6849161 (= e!4130241 e!4130239)))

(declare-fun c!1275018 () Bool)

(assert (=> b!6849161 (= c!1275018 ((_ is Star!16675) (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))

(declare-fun b!6849162 () Bool)

(declare-fun e!4130238 () Bool)

(declare-fun call!623795 () Bool)

(assert (=> b!6849162 (= e!4130238 call!623795)))

(declare-fun b!6849163 () Bool)

(declare-fun e!4130240 () Bool)

(assert (=> b!6849163 (= e!4130240 e!4130238)))

(declare-fun res!2795820 () Bool)

(assert (=> b!6849163 (=> (not res!2795820) (not e!4130238))))

(declare-fun call!623796 () Bool)

(assert (=> b!6849163 (= res!2795820 call!623796)))

(declare-fun c!1275017 () Bool)

(declare-fun bm!623789 () Bool)

(assert (=> bm!623789 (= call!623796 (validRegex!8411 (ite c!1275017 (regOne!33863 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))) (regOne!33862 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))))

(declare-fun b!6849164 () Bool)

(assert (=> b!6849164 (= e!4130239 e!4130237)))

(declare-fun res!2795823 () Bool)

(assert (=> b!6849164 (= res!2795823 (not (nullable!6638 (reg!17004 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))))

(assert (=> b!6849164 (=> (not res!2795823) (not e!4130237))))

(declare-fun bm!623790 () Bool)

(assert (=> bm!623790 (= call!623795 call!623794)))

(declare-fun b!6849165 () Bool)

(declare-fun e!4130236 () Bool)

(assert (=> b!6849165 (= e!4130239 e!4130236)))

(assert (=> b!6849165 (= c!1275017 ((_ is Union!16675) (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))

(declare-fun b!6849166 () Bool)

(declare-fun e!4130242 () Bool)

(assert (=> b!6849166 (= e!4130242 call!623795)))

(declare-fun bm!623791 () Bool)

(assert (=> bm!623791 (= call!623794 (validRegex!8411 (ite c!1275018 (reg!17004 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))) (ite c!1275017 (regTwo!33863 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))) (regTwo!33862 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))))

(declare-fun b!6849167 () Bool)

(declare-fun res!2795822 () Bool)

(assert (=> b!6849167 (=> (not res!2795822) (not e!4130242))))

(assert (=> b!6849167 (= res!2795822 call!623796)))

(assert (=> b!6849167 (= e!4130236 e!4130242)))

(declare-fun d!2152861 () Bool)

(declare-fun res!2795824 () Bool)

(assert (=> d!2152861 (=> res!2795824 e!4130241)))

(assert (=> d!2152861 (= res!2795824 ((_ is ElementMatch!16675) (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))

(assert (=> d!2152861 (= (validRegex!8411 (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))) e!4130241)))

(declare-fun b!6849168 () Bool)

(declare-fun res!2795821 () Bool)

(assert (=> b!6849168 (=> res!2795821 e!4130240)))

(assert (=> b!6849168 (= res!2795821 (not ((_ is Concat!25520) (ite c!1274942 (regOne!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regOne!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))

(assert (=> b!6849168 (= e!4130236 e!4130240)))

(assert (= (and d!2152861 (not res!2795824)) b!6849161))

(assert (= (and b!6849161 c!1275018) b!6849164))

(assert (= (and b!6849161 (not c!1275018)) b!6849165))

(assert (= (and b!6849164 res!2795823) b!6849160))

(assert (= (and b!6849165 c!1275017) b!6849167))

(assert (= (and b!6849165 (not c!1275017)) b!6849168))

(assert (= (and b!6849167 res!2795822) b!6849166))

(assert (= (and b!6849168 (not res!2795821)) b!6849163))

(assert (= (and b!6849163 res!2795820) b!6849162))

(assert (= (or b!6849166 b!6849162) bm!623790))

(assert (= (or b!6849167 b!6849163) bm!623789))

(assert (= (or b!6849160 bm!623790) bm!623791))

(declare-fun m!7588464 () Bool)

(assert (=> bm!623789 m!7588464))

(declare-fun m!7588466 () Bool)

(assert (=> b!6849164 m!7588466))

(declare-fun m!7588468 () Bool)

(assert (=> bm!623791 m!7588468))

(assert (=> bm!623732 d!2152861))

(declare-fun d!2152863 () Bool)

(declare-fun res!2795825 () Bool)

(declare-fun e!4130243 () Bool)

(assert (=> d!2152863 (=> res!2795825 e!4130243)))

(assert (=> d!2152863 (= res!2795825 ((_ is Nil!66201) (t!380068 lt!2455945)))))

(assert (=> d!2152863 (= (noDuplicate!2441 (t!380068 lt!2455945)) e!4130243)))

(declare-fun b!6849169 () Bool)

(declare-fun e!4130244 () Bool)

(assert (=> b!6849169 (= e!4130243 e!4130244)))

(declare-fun res!2795826 () Bool)

(assert (=> b!6849169 (=> (not res!2795826) (not e!4130244))))

(assert (=> b!6849169 (= res!2795826 (not (contains!20327 (t!380068 (t!380068 lt!2455945)) (h!72649 (t!380068 lt!2455945)))))))

(declare-fun b!6849170 () Bool)

(assert (=> b!6849170 (= e!4130244 (noDuplicate!2441 (t!380068 (t!380068 lt!2455945))))))

(assert (= (and d!2152863 (not res!2795825)) b!6849169))

(assert (= (and b!6849169 res!2795826) b!6849170))

(declare-fun m!7588472 () Bool)

(assert (=> b!6849169 m!7588472))

(declare-fun m!7588474 () Bool)

(assert (=> b!6849170 m!7588474))

(assert (=> b!6848641 d!2152863))

(declare-fun d!2152867 () Bool)

(assert (=> d!2152867 (= (head!13729 (t!380068 zl!343)) (h!72649 (t!380068 zl!343)))))

(assert (=> b!6848517 d!2152867))

(declare-fun d!2152869 () Bool)

(assert (=> d!2152869 (= (nullable!6638 lt!2455953) (nullableFct!2522 lt!2455953))))

(declare-fun bs!1830695 () Bool)

(assert (= bs!1830695 d!2152869))

(declare-fun m!7588476 () Bool)

(assert (=> bs!1830695 m!7588476))

(assert (=> b!6848797 d!2152869))

(declare-fun d!2152871 () Bool)

(assert (=> d!2152871 (= (isEmpty!38575 (tail!12805 (exprs!6559 (h!72649 zl!343)))) ((_ is Nil!66200) (tail!12805 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> b!6848478 d!2152871))

(declare-fun d!2152873 () Bool)

(assert (=> d!2152873 (= (tail!12805 (exprs!6559 (h!72649 zl!343))) (t!380067 (exprs!6559 (h!72649 zl!343))))))

(assert (=> b!6848478 d!2152873))

(declare-fun b!6849181 () Bool)

(declare-fun e!4130252 () Context!12118)

(assert (=> b!6849181 (= e!4130252 (getWitness!945 (t!380068 (t!380068 (t!380068 zl!343))) lambda!387177))))

(declare-fun b!6849182 () Bool)

(declare-fun e!4130251 () Context!12118)

(assert (=> b!6849182 (= e!4130251 e!4130252)))

(declare-fun c!1275024 () Bool)

(assert (=> b!6849182 (= c!1275024 ((_ is Cons!66201) (t!380068 (t!380068 zl!343))))))

(declare-fun b!6849183 () Bool)

(assert (=> b!6849183 (= e!4130251 (h!72649 (t!380068 (t!380068 zl!343))))))

(declare-fun b!6849184 () Bool)

(declare-fun e!4130250 () Bool)

(declare-fun lt!2456071 () Context!12118)

(assert (=> b!6849184 (= e!4130250 (contains!20327 (t!380068 (t!380068 zl!343)) lt!2456071))))

(declare-fun b!6849185 () Bool)

(declare-fun lt!2456070 () Unit!160065)

(declare-fun Unit!160075 () Unit!160065)

(assert (=> b!6849185 (= lt!2456070 Unit!160075)))

(assert (=> b!6849185 false))

(assert (=> b!6849185 (= e!4130252 (head!13729 (t!380068 (t!380068 zl!343))))))

(declare-fun d!2152875 () Bool)

(assert (=> d!2152875 e!4130250))

(declare-fun res!2795827 () Bool)

(assert (=> d!2152875 (=> (not res!2795827) (not e!4130250))))

(assert (=> d!2152875 (= res!2795827 (dynLambda!26456 lambda!387177 lt!2456071))))

(assert (=> d!2152875 (= lt!2456071 e!4130251)))

(declare-fun c!1275025 () Bool)

(declare-fun e!4130253 () Bool)

(assert (=> d!2152875 (= c!1275025 e!4130253)))

(declare-fun res!2795828 () Bool)

(assert (=> d!2152875 (=> (not res!2795828) (not e!4130253))))

(assert (=> d!2152875 (= res!2795828 ((_ is Cons!66201) (t!380068 (t!380068 zl!343))))))

(assert (=> d!2152875 (exists!2777 (t!380068 (t!380068 zl!343)) lambda!387177)))

(assert (=> d!2152875 (= (getWitness!945 (t!380068 (t!380068 zl!343)) lambda!387177) lt!2456071)))

(declare-fun b!6849186 () Bool)

(assert (=> b!6849186 (= e!4130253 (dynLambda!26456 lambda!387177 (h!72649 (t!380068 (t!380068 zl!343)))))))

(assert (= (and d!2152875 res!2795828) b!6849186))

(assert (= (and d!2152875 c!1275025) b!6849183))

(assert (= (and d!2152875 (not c!1275025)) b!6849182))

(assert (= (and b!6849182 c!1275024) b!6849181))

(assert (= (and b!6849182 (not c!1275024)) b!6849185))

(assert (= (and d!2152875 res!2795827) b!6849184))

(declare-fun b_lambda!258505 () Bool)

(assert (=> (not b_lambda!258505) (not d!2152875)))

(declare-fun b_lambda!258507 () Bool)

(assert (=> (not b_lambda!258507) (not b!6849186)))

(declare-fun m!7588486 () Bool)

(assert (=> d!2152875 m!7588486))

(declare-fun m!7588488 () Bool)

(assert (=> d!2152875 m!7588488))

(declare-fun m!7588490 () Bool)

(assert (=> b!6849186 m!7588490))

(declare-fun m!7588492 () Bool)

(assert (=> b!6849181 m!7588492))

(declare-fun m!7588494 () Bool)

(assert (=> b!6849185 m!7588494))

(declare-fun m!7588496 () Bool)

(assert (=> b!6849184 m!7588496))

(assert (=> b!6848513 d!2152875))

(assert (=> b!6848794 d!2152609))

(declare-fun b!6849194 () Bool)

(declare-fun e!4130264 () Bool)

(declare-fun e!4130263 () Bool)

(assert (=> b!6849194 (= e!4130264 e!4130263)))

(declare-fun c!1275028 () Bool)

(assert (=> b!6849194 (= c!1275028 ((_ is EmptyLang!16675) (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326))))))

(declare-fun b!6849195 () Bool)

(declare-fun res!2795834 () Bool)

(declare-fun e!4130262 () Bool)

(assert (=> b!6849195 (=> res!2795834 e!4130262)))

(assert (=> b!6849195 (= res!2795834 (not ((_ is ElementMatch!16675) (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326)))))))

(assert (=> b!6849195 (= e!4130263 e!4130262)))

(declare-fun b!6849196 () Bool)

(declare-fun lt!2456072 () Bool)

(assert (=> b!6849196 (= e!4130263 (not lt!2456072))))

(declare-fun b!6849197 () Bool)

(declare-fun res!2795837 () Bool)

(declare-fun e!4130265 () Bool)

(assert (=> b!6849197 (=> (not res!2795837) (not e!4130265))))

(declare-fun call!623803 () Bool)

(assert (=> b!6849197 (= res!2795837 (not call!623803))))

(declare-fun b!6849198 () Bool)

(declare-fun e!4130266 () Bool)

(assert (=> b!6849198 (= e!4130266 (not (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326))))))))

(declare-fun b!6849199 () Bool)

(declare-fun res!2795836 () Bool)

(assert (=> b!6849199 (=> (not res!2795836) (not e!4130265))))

(assert (=> b!6849199 (= res!2795836 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6849200 () Bool)

(declare-fun res!2795840 () Bool)

(assert (=> b!6849200 (=> res!2795840 e!4130262)))

(assert (=> b!6849200 (= res!2795840 e!4130265)))

(declare-fun res!2795838 () Bool)

(assert (=> b!6849200 (=> (not res!2795838) (not e!4130265))))

(assert (=> b!6849200 (= res!2795838 lt!2456072)))

(declare-fun b!6849201 () Bool)

(declare-fun e!4130260 () Bool)

(assert (=> b!6849201 (= e!4130260 (nullable!6638 (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326))))))

(declare-fun b!6849202 () Bool)

(assert (=> b!6849202 (= e!4130265 (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326)))))))

(declare-fun b!6849203 () Bool)

(declare-fun res!2795841 () Bool)

(assert (=> b!6849203 (=> res!2795841 e!4130266)))

(assert (=> b!6849203 (= res!2795841 (not (isEmpty!38573 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun d!2152879 () Bool)

(assert (=> d!2152879 e!4130264))

(declare-fun c!1275027 () Bool)

(assert (=> d!2152879 (= c!1275027 ((_ is EmptyExpr!16675) (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326))))))

(assert (=> d!2152879 (= lt!2456072 e!4130260)))

(declare-fun c!1275029 () Bool)

(assert (=> d!2152879 (= c!1275029 (isEmpty!38573 (tail!12804 s!2326)))))

(assert (=> d!2152879 (validRegex!8411 (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326)))))

(assert (=> d!2152879 (= (matchR!8858 (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326)) (tail!12804 s!2326)) lt!2456072)))

(declare-fun bm!623798 () Bool)

(assert (=> bm!623798 (= call!623803 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6849204 () Bool)

(declare-fun e!4130261 () Bool)

(assert (=> b!6849204 (= e!4130261 e!4130266)))

(declare-fun res!2795835 () Bool)

(assert (=> b!6849204 (=> res!2795835 e!4130266)))

(assert (=> b!6849204 (= res!2795835 call!623803)))

(declare-fun b!6849205 () Bool)

(assert (=> b!6849205 (= e!4130260 (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6849206 () Bool)

(assert (=> b!6849206 (= e!4130262 e!4130261)))

(declare-fun res!2795839 () Bool)

(assert (=> b!6849206 (=> (not res!2795839) (not e!4130261))))

(assert (=> b!6849206 (= res!2795839 (not lt!2456072))))

(declare-fun b!6849207 () Bool)

(assert (=> b!6849207 (= e!4130264 (= lt!2456072 call!623803))))

(assert (= (and d!2152879 c!1275029) b!6849201))

(assert (= (and d!2152879 (not c!1275029)) b!6849205))

(assert (= (and d!2152879 c!1275027) b!6849207))

(assert (= (and d!2152879 (not c!1275027)) b!6849194))

(assert (= (and b!6849194 c!1275028) b!6849196))

(assert (= (and b!6849194 (not c!1275028)) b!6849195))

(assert (= (and b!6849195 (not res!2795834)) b!6849200))

(assert (= (and b!6849200 res!2795838) b!6849197))

(assert (= (and b!6849197 res!2795837) b!6849199))

(assert (= (and b!6849199 res!2795836) b!6849202))

(assert (= (and b!6849200 (not res!2795840)) b!6849206))

(assert (= (and b!6849206 res!2795839) b!6849204))

(assert (= (and b!6849204 (not res!2795835)) b!6849203))

(assert (= (and b!6849203 (not res!2795841)) b!6849198))

(assert (= (or b!6849207 b!6849197 b!6849204) bm!623798))

(assert (=> bm!623798 m!7587364))

(assert (=> bm!623798 m!7587370))

(assert (=> b!6849205 m!7587364))

(assert (=> b!6849205 m!7587932))

(assert (=> b!6849205 m!7587912))

(assert (=> b!6849205 m!7587932))

(declare-fun m!7588502 () Bool)

(assert (=> b!6849205 m!7588502))

(assert (=> b!6849205 m!7587364))

(assert (=> b!6849205 m!7587936))

(assert (=> b!6849205 m!7588502))

(assert (=> b!6849205 m!7587936))

(declare-fun m!7588504 () Bool)

(assert (=> b!6849205 m!7588504))

(assert (=> b!6849201 m!7587912))

(declare-fun m!7588506 () Bool)

(assert (=> b!6849201 m!7588506))

(assert (=> b!6849199 m!7587364))

(assert (=> b!6849199 m!7587936))

(assert (=> b!6849199 m!7587936))

(assert (=> b!6849199 m!7587942))

(assert (=> b!6849203 m!7587364))

(assert (=> b!6849203 m!7587936))

(assert (=> b!6849203 m!7587936))

(assert (=> b!6849203 m!7587942))

(assert (=> d!2152879 m!7587364))

(assert (=> d!2152879 m!7587370))

(assert (=> d!2152879 m!7587912))

(declare-fun m!7588508 () Bool)

(assert (=> d!2152879 m!7588508))

(assert (=> b!6849202 m!7587364))

(assert (=> b!6849202 m!7587932))

(assert (=> b!6849198 m!7587364))

(assert (=> b!6849198 m!7587932))

(assert (=> b!6848510 d!2152879))

(declare-fun b!6849218 () Bool)

(declare-fun e!4130275 () Regex!16675)

(declare-fun call!623807 () Regex!16675)

(assert (=> b!6849218 (= e!4130275 (Union!16675 (Concat!25520 call!623807 (regTwo!33862 (h!72648 lt!2455888))) EmptyLang!16675))))

(declare-fun bm!623802 () Bool)

(declare-fun call!623810 () Regex!16675)

(assert (=> bm!623802 (= call!623807 call!623810)))

(declare-fun bm!623803 () Bool)

(declare-fun call!623809 () Regex!16675)

(assert (=> bm!623803 (= call!623810 call!623809)))

(declare-fun b!6849219 () Bool)

(declare-fun e!4130277 () Regex!16675)

(assert (=> b!6849219 (= e!4130277 EmptyLang!16675)))

(declare-fun b!6849220 () Bool)

(declare-fun e!4130278 () Regex!16675)

(assert (=> b!6849220 (= e!4130278 (Concat!25520 call!623810 (h!72648 lt!2455888)))))

(declare-fun bm!623804 () Bool)

(declare-fun call!623808 () Regex!16675)

(declare-fun c!1275033 () Bool)

(assert (=> bm!623804 (= call!623808 (derivativeStep!5321 (ite c!1275033 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888))) (head!13727 s!2326)))))

(declare-fun b!6849221 () Bool)

(declare-fun e!4130274 () Regex!16675)

(assert (=> b!6849221 (= e!4130274 (Union!16675 call!623808 call!623809))))

(declare-fun b!6849222 () Bool)

(assert (=> b!6849222 (= e!4130275 (Union!16675 (Concat!25520 call!623808 (regTwo!33862 (h!72648 lt!2455888))) call!623807))))

(declare-fun b!6849223 () Bool)

(assert (=> b!6849223 (= c!1275033 ((_ is Union!16675) (h!72648 lt!2455888)))))

(declare-fun e!4130276 () Regex!16675)

(assert (=> b!6849223 (= e!4130276 e!4130274)))

(declare-fun b!6849217 () Bool)

(assert (=> b!6849217 (= e!4130274 e!4130278)))

(declare-fun c!1275036 () Bool)

(assert (=> b!6849217 (= c!1275036 ((_ is Star!16675) (h!72648 lt!2455888)))))

(declare-fun d!2152883 () Bool)

(declare-fun lt!2456073 () Regex!16675)

(assert (=> d!2152883 (validRegex!8411 lt!2456073)))

(assert (=> d!2152883 (= lt!2456073 e!4130277)))

(declare-fun c!1275032 () Bool)

(assert (=> d!2152883 (= c!1275032 (or ((_ is EmptyExpr!16675) (h!72648 lt!2455888)) ((_ is EmptyLang!16675) (h!72648 lt!2455888))))))

(assert (=> d!2152883 (validRegex!8411 (h!72648 lt!2455888))))

(assert (=> d!2152883 (= (derivativeStep!5321 (h!72648 lt!2455888) (head!13727 s!2326)) lt!2456073)))

(declare-fun b!6849224 () Bool)

(declare-fun c!1275035 () Bool)

(assert (=> b!6849224 (= c!1275035 (nullable!6638 (regOne!33862 (h!72648 lt!2455888))))))

(assert (=> b!6849224 (= e!4130278 e!4130275)))

(declare-fun bm!623805 () Bool)

(assert (=> bm!623805 (= call!623809 (derivativeStep!5321 (ite c!1275033 (regTwo!33863 (h!72648 lt!2455888)) (ite c!1275036 (reg!17004 (h!72648 lt!2455888)) (ite c!1275035 (regTwo!33862 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888))))) (head!13727 s!2326)))))

(declare-fun b!6849225 () Bool)

(assert (=> b!6849225 (= e!4130277 e!4130276)))

(declare-fun c!1275034 () Bool)

(assert (=> b!6849225 (= c!1275034 ((_ is ElementMatch!16675) (h!72648 lt!2455888)))))

(declare-fun b!6849226 () Bool)

(assert (=> b!6849226 (= e!4130276 (ite (= (head!13727 s!2326) (c!1274613 (h!72648 lt!2455888))) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2152883 c!1275032) b!6849219))

(assert (= (and d!2152883 (not c!1275032)) b!6849225))

(assert (= (and b!6849225 c!1275034) b!6849226))

(assert (= (and b!6849225 (not c!1275034)) b!6849223))

(assert (= (and b!6849223 c!1275033) b!6849221))

(assert (= (and b!6849223 (not c!1275033)) b!6849217))

(assert (= (and b!6849217 c!1275036) b!6849220))

(assert (= (and b!6849217 (not c!1275036)) b!6849224))

(assert (= (and b!6849224 c!1275035) b!6849222))

(assert (= (and b!6849224 (not c!1275035)) b!6849218))

(assert (= (or b!6849222 b!6849218) bm!623802))

(assert (= (or b!6849220 bm!623802) bm!623803))

(assert (= (or b!6849221 bm!623803) bm!623805))

(assert (= (or b!6849221 b!6849222) bm!623804))

(assert (=> bm!623804 m!7587360))

(declare-fun m!7588516 () Bool)

(assert (=> bm!623804 m!7588516))

(declare-fun m!7588518 () Bool)

(assert (=> d!2152883 m!7588518))

(assert (=> d!2152883 m!7587518))

(declare-fun m!7588520 () Bool)

(assert (=> b!6849224 m!7588520))

(assert (=> bm!623805 m!7587360))

(declare-fun m!7588522 () Bool)

(assert (=> bm!623805 m!7588522))

(assert (=> b!6848510 d!2152883))

(assert (=> b!6848510 d!2152609))

(assert (=> b!6848510 d!2152611))

(declare-fun d!2152889 () Bool)

(declare-fun res!2795847 () Bool)

(declare-fun e!4130279 () Bool)

(assert (=> d!2152889 (=> res!2795847 e!4130279)))

(assert (=> d!2152889 (= res!2795847 ((_ is Nil!66200) (t!380067 (exprs!6559 setElem!47081))))))

(assert (=> d!2152889 (= (forall!15853 (t!380067 (exprs!6559 setElem!47081)) lambda!387214) e!4130279)))

(declare-fun b!6849227 () Bool)

(declare-fun e!4130280 () Bool)

(assert (=> b!6849227 (= e!4130279 e!4130280)))

(declare-fun res!2795848 () Bool)

(assert (=> b!6849227 (=> (not res!2795848) (not e!4130280))))

(assert (=> b!6849227 (= res!2795848 (dynLambda!26455 lambda!387214 (h!72648 (t!380067 (exprs!6559 setElem!47081)))))))

(declare-fun b!6849228 () Bool)

(assert (=> b!6849228 (= e!4130280 (forall!15853 (t!380067 (t!380067 (exprs!6559 setElem!47081))) lambda!387214))))

(assert (= (and d!2152889 (not res!2795847)) b!6849227))

(assert (= (and b!6849227 res!2795848) b!6849228))

(declare-fun b_lambda!258509 () Bool)

(assert (=> (not b_lambda!258509) (not b!6849227)))

(declare-fun m!7588524 () Bool)

(assert (=> b!6849227 m!7588524))

(declare-fun m!7588526 () Bool)

(assert (=> b!6849228 m!7588526))

(assert (=> b!6848498 d!2152889))

(declare-fun d!2152893 () Bool)

(declare-fun c!1275037 () Bool)

(assert (=> d!2152893 (= c!1275037 ((_ is Nil!66200) (t!380067 lt!2455888)))))

(declare-fun e!4130281 () (InoxSet Regex!16675))

(assert (=> d!2152893 (= (content!12982 (t!380067 lt!2455888)) e!4130281)))

(declare-fun b!6849229 () Bool)

(assert (=> b!6849229 (= e!4130281 ((as const (Array Regex!16675 Bool)) false))))

(declare-fun b!6849230 () Bool)

(assert (=> b!6849230 (= e!4130281 ((_ map or) (store ((as const (Array Regex!16675 Bool)) false) (h!72648 (t!380067 lt!2455888)) true) (content!12982 (t!380067 (t!380067 lt!2455888)))))))

(assert (= (and d!2152893 c!1275037) b!6849229))

(assert (= (and d!2152893 (not c!1275037)) b!6849230))

(declare-fun m!7588528 () Bool)

(assert (=> b!6849230 m!7588528))

(declare-fun m!7588530 () Bool)

(assert (=> b!6849230 m!7588530))

(assert (=> d!2152687 d!2152893))

(declare-fun d!2152899 () Bool)

(assert (=> d!2152899 (= (Exists!3737 (ite c!1274955 lambda!387276 lambda!387277)) (choose!51053 (ite c!1274955 lambda!387276 lambda!387277)))))

(declare-fun bs!1830696 () Bool)

(assert (= bs!1830696 d!2152899))

(declare-fun m!7588532 () Bool)

(assert (=> bs!1830696 m!7588532))

(assert (=> bm!623741 d!2152899))

(declare-fun d!2152901 () Bool)

(declare-fun res!2795852 () Bool)

(declare-fun e!4130289 () Bool)

(assert (=> d!2152901 (=> res!2795852 e!4130289)))

(assert (=> d!2152901 (= res!2795852 ((_ is Nil!66200) lt!2455888))))

(assert (=> d!2152901 (= (forall!15853 lt!2455888 lambda!387260) e!4130289)))

(declare-fun b!6849242 () Bool)

(declare-fun e!4130290 () Bool)

(assert (=> b!6849242 (= e!4130289 e!4130290)))

(declare-fun res!2795853 () Bool)

(assert (=> b!6849242 (=> (not res!2795853) (not e!4130290))))

(assert (=> b!6849242 (= res!2795853 (dynLambda!26455 lambda!387260 (h!72648 lt!2455888)))))

(declare-fun b!6849243 () Bool)

(assert (=> b!6849243 (= e!4130290 (forall!15853 (t!380067 lt!2455888) lambda!387260))))

(assert (= (and d!2152901 (not res!2795852)) b!6849242))

(assert (= (and b!6849242 res!2795853) b!6849243))

(declare-fun b_lambda!258511 () Bool)

(assert (=> (not b_lambda!258511) (not b!6849242)))

(declare-fun m!7588534 () Bool)

(assert (=> b!6849242 m!7588534))

(declare-fun m!7588536 () Bool)

(assert (=> b!6849243 m!7588536))

(assert (=> d!2152589 d!2152901))

(declare-fun b!6849244 () Bool)

(declare-fun e!4130292 () Bool)

(declare-fun call!623813 () Bool)

(assert (=> b!6849244 (= e!4130292 call!623813)))

(declare-fun b!6849245 () Bool)

(declare-fun e!4130296 () Bool)

(declare-fun e!4130294 () Bool)

(assert (=> b!6849245 (= e!4130296 e!4130294)))

(declare-fun c!1275043 () Bool)

(assert (=> b!6849245 (= c!1275043 ((_ is Star!16675) (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))))))

(declare-fun b!6849246 () Bool)

(declare-fun e!4130293 () Bool)

(declare-fun call!623814 () Bool)

(assert (=> b!6849246 (= e!4130293 call!623814)))

(declare-fun b!6849247 () Bool)

(declare-fun e!4130295 () Bool)

(assert (=> b!6849247 (= e!4130295 e!4130293)))

(declare-fun res!2795854 () Bool)

(assert (=> b!6849247 (=> (not res!2795854) (not e!4130293))))

(declare-fun call!623815 () Bool)

(assert (=> b!6849247 (= res!2795854 call!623815)))

(declare-fun c!1275042 () Bool)

(declare-fun bm!623808 () Bool)

(assert (=> bm!623808 (= call!623815 (validRegex!8411 (ite c!1275042 (regOne!33863 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))) (regOne!33862 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))))))))

(declare-fun b!6849248 () Bool)

(assert (=> b!6849248 (= e!4130294 e!4130292)))

(declare-fun res!2795857 () Bool)

(assert (=> b!6849248 (= res!2795857 (not (nullable!6638 (reg!17004 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))))))))

(assert (=> b!6849248 (=> (not res!2795857) (not e!4130292))))

(declare-fun bm!623809 () Bool)

(assert (=> bm!623809 (= call!623814 call!623813)))

(declare-fun b!6849249 () Bool)

(declare-fun e!4130291 () Bool)

(assert (=> b!6849249 (= e!4130294 e!4130291)))

(assert (=> b!6849249 (= c!1275042 ((_ is Union!16675) (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))))))

(declare-fun b!6849250 () Bool)

(declare-fun e!4130297 () Bool)

(assert (=> b!6849250 (= e!4130297 call!623814)))

(declare-fun bm!623810 () Bool)

(assert (=> bm!623810 (= call!623813 (validRegex!8411 (ite c!1275043 (reg!17004 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))) (ite c!1275042 (regTwo!33863 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))) (regTwo!33862 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973))))))))))

(declare-fun b!6849251 () Bool)

(declare-fun res!2795856 () Bool)

(assert (=> b!6849251 (=> (not res!2795856) (not e!4130297))))

(assert (=> b!6849251 (= res!2795856 call!623815)))

(assert (=> b!6849251 (= e!4130291 e!4130297)))

(declare-fun d!2152903 () Bool)

(declare-fun res!2795858 () Bool)

(assert (=> d!2152903 (=> res!2795858 e!4130296)))

(assert (=> d!2152903 (= res!2795858 ((_ is ElementMatch!16675) (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))))))

(assert (=> d!2152903 (= (validRegex!8411 (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973)))) e!4130296)))

(declare-fun b!6849252 () Bool)

(declare-fun res!2795855 () Bool)

(assert (=> b!6849252 (=> res!2795855 e!4130295)))

(assert (=> b!6849252 (= res!2795855 (not ((_ is Concat!25520) (ite c!1274886 (reg!17004 lt!2455973) (ite c!1274885 (regTwo!33863 lt!2455973) (regTwo!33862 lt!2455973))))))))

(assert (=> b!6849252 (= e!4130291 e!4130295)))

(assert (= (and d!2152903 (not res!2795858)) b!6849245))

(assert (= (and b!6849245 c!1275043) b!6849248))

(assert (= (and b!6849245 (not c!1275043)) b!6849249))

(assert (= (and b!6849248 res!2795857) b!6849244))

(assert (= (and b!6849249 c!1275042) b!6849251))

(assert (= (and b!6849249 (not c!1275042)) b!6849252))

(assert (= (and b!6849251 res!2795856) b!6849250))

(assert (= (and b!6849252 (not res!2795855)) b!6849247))

(assert (= (and b!6849247 res!2795854) b!6849246))

(assert (= (or b!6849250 b!6849246) bm!623809))

(assert (= (or b!6849251 b!6849247) bm!623808))

(assert (= (or b!6849244 bm!623809) bm!623810))

(declare-fun m!7588538 () Bool)

(assert (=> bm!623808 m!7588538))

(declare-fun m!7588540 () Bool)

(assert (=> b!6849248 m!7588540))

(declare-fun m!7588542 () Bool)

(assert (=> bm!623810 m!7588542))

(assert (=> bm!623705 d!2152903))

(declare-fun d!2152905 () Bool)

(assert (=> d!2152905 (= (nullable!6638 (h!72648 lt!2455888)) (nullableFct!2522 (h!72648 lt!2455888)))))

(declare-fun bs!1830701 () Bool)

(assert (= bs!1830701 d!2152905))

(declare-fun m!7588544 () Bool)

(assert (=> bs!1830701 m!7588544))

(assert (=> b!6848506 d!2152905))

(assert (=> d!2152697 d!2152581))

(assert (=> d!2152697 d!2152641))

(declare-fun d!2152907 () Bool)

(assert (=> d!2152907 (= (nullable!6638 (reg!17004 lt!2455973)) (nullableFct!2522 (reg!17004 lt!2455973)))))

(declare-fun bs!1830703 () Bool)

(assert (= bs!1830703 d!2152907))

(declare-fun m!7588546 () Bool)

(assert (=> bs!1830703 m!7588546))

(assert (=> b!6848571 d!2152907))

(assert (=> b!6848503 d!2152609))

(declare-fun d!2152909 () Bool)

(declare-fun c!1275044 () Bool)

(assert (=> d!2152909 (= c!1275044 ((_ is Nil!66201) (t!380068 lt!2455980)))))

(declare-fun e!4130298 () (InoxSet Context!12118))

(assert (=> d!2152909 (= (content!12981 (t!380068 lt!2455980)) e!4130298)))

(declare-fun b!6849253 () Bool)

(assert (=> b!6849253 (= e!4130298 ((as const (Array Context!12118 Bool)) false))))

(declare-fun b!6849254 () Bool)

(assert (=> b!6849254 (= e!4130298 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) (h!72649 (t!380068 lt!2455980)) true) (content!12981 (t!380068 (t!380068 lt!2455980)))))))

(assert (= (and d!2152909 c!1275044) b!6849253))

(assert (= (and d!2152909 (not c!1275044)) b!6849254))

(declare-fun m!7588548 () Bool)

(assert (=> b!6849254 m!7588548))

(declare-fun m!7588550 () Bool)

(assert (=> b!6849254 m!7588550))

(assert (=> b!6848780 d!2152909))

(declare-fun d!2152911 () Bool)

(assert (=> d!2152911 (= (Exists!3737 (ite c!1274945 lambda!387273 lambda!387274)) (choose!51053 (ite c!1274945 lambda!387273 lambda!387274)))))

(declare-fun bs!1830705 () Bool)

(assert (= bs!1830705 d!2152911))

(declare-fun m!7588552 () Bool)

(assert (=> bs!1830705 m!7588552))

(assert (=> bm!623735 d!2152911))

(declare-fun d!2152913 () Bool)

(declare-fun res!2795859 () Bool)

(declare-fun e!4130299 () Bool)

(assert (=> d!2152913 (=> res!2795859 e!4130299)))

(assert (=> d!2152913 (= res!2795859 ((_ is Nil!66201) zl!343))))

(assert (=> d!2152913 (= (forall!15854 zl!343 lambda!387268) e!4130299)))

(declare-fun b!6849255 () Bool)

(declare-fun e!4130300 () Bool)

(assert (=> b!6849255 (= e!4130299 e!4130300)))

(declare-fun res!2795860 () Bool)

(assert (=> b!6849255 (=> (not res!2795860) (not e!4130300))))

(assert (=> b!6849255 (= res!2795860 (dynLambda!26456 lambda!387268 (h!72649 zl!343)))))

(declare-fun b!6849256 () Bool)

(assert (=> b!6849256 (= e!4130300 (forall!15854 (t!380068 zl!343) lambda!387268))))

(assert (= (and d!2152913 (not res!2795859)) b!6849255))

(assert (= (and b!6849255 res!2795860) b!6849256))

(declare-fun b_lambda!258513 () Bool)

(assert (=> (not b_lambda!258513) (not b!6849255)))

(declare-fun m!7588554 () Bool)

(assert (=> b!6849255 m!7588554))

(declare-fun m!7588556 () Bool)

(assert (=> b!6849256 m!7588556))

(assert (=> d!2152645 d!2152913))

(declare-fun d!2152915 () Bool)

(declare-fun res!2795861 () Bool)

(declare-fun e!4130301 () Bool)

(assert (=> d!2152915 (=> res!2795861 e!4130301)))

(assert (=> d!2152915 (= res!2795861 ((_ is Nil!66200) (t!380067 lt!2455888)))))

(assert (=> d!2152915 (= (forall!15853 (t!380067 lt!2455888) lambda!387217) e!4130301)))

(declare-fun b!6849257 () Bool)

(declare-fun e!4130302 () Bool)

(assert (=> b!6849257 (= e!4130301 e!4130302)))

(declare-fun res!2795862 () Bool)

(assert (=> b!6849257 (=> (not res!2795862) (not e!4130302))))

(assert (=> b!6849257 (= res!2795862 (dynLambda!26455 lambda!387217 (h!72648 (t!380067 lt!2455888))))))

(declare-fun b!6849258 () Bool)

(assert (=> b!6849258 (= e!4130302 (forall!15853 (t!380067 (t!380067 lt!2455888)) lambda!387217))))

(assert (= (and d!2152915 (not res!2795861)) b!6849257))

(assert (= (and b!6849257 res!2795862) b!6849258))

(declare-fun b_lambda!258515 () Bool)

(assert (=> (not b_lambda!258515) (not b!6849257)))

(declare-fun m!7588558 () Bool)

(assert (=> b!6849257 m!7588558))

(declare-fun m!7588560 () Bool)

(assert (=> b!6849258 m!7588560))

(assert (=> b!6848725 d!2152915))

(declare-fun d!2152917 () Bool)

(declare-fun lt!2456074 () Bool)

(assert (=> d!2152917 (= lt!2456074 (select (content!12982 (t!380067 (unfocusZipperList!2092 zl!343))) lt!2455885))))

(declare-fun e!4130304 () Bool)

(assert (=> d!2152917 (= lt!2456074 e!4130304)))

(declare-fun res!2795863 () Bool)

(assert (=> d!2152917 (=> (not res!2795863) (not e!4130304))))

(assert (=> d!2152917 (= res!2795863 ((_ is Cons!66200) (t!380067 (unfocusZipperList!2092 zl!343))))))

(assert (=> d!2152917 (= (contains!20325 (t!380067 (unfocusZipperList!2092 zl!343)) lt!2455885) lt!2456074)))

(declare-fun b!6849259 () Bool)

(declare-fun e!4130303 () Bool)

(assert (=> b!6849259 (= e!4130304 e!4130303)))

(declare-fun res!2795864 () Bool)

(assert (=> b!6849259 (=> res!2795864 e!4130303)))

(assert (=> b!6849259 (= res!2795864 (= (h!72648 (t!380067 (unfocusZipperList!2092 zl!343))) lt!2455885))))

(declare-fun b!6849260 () Bool)

(assert (=> b!6849260 (= e!4130303 (contains!20325 (t!380067 (t!380067 (unfocusZipperList!2092 zl!343))) lt!2455885))))

(assert (= (and d!2152917 res!2795863) b!6849259))

(assert (= (and b!6849259 (not res!2795864)) b!6849260))

(declare-fun m!7588562 () Bool)

(assert (=> d!2152917 m!7588562))

(declare-fun m!7588564 () Bool)

(assert (=> d!2152917 m!7588564))

(declare-fun m!7588566 () Bool)

(assert (=> b!6849260 m!7588566))

(assert (=> b!6848678 d!2152917))

(declare-fun b!6849261 () Bool)

(declare-fun e!4130306 () Bool)

(declare-fun call!623816 () Bool)

(assert (=> b!6849261 (= e!4130306 call!623816)))

(declare-fun b!6849262 () Bool)

(declare-fun e!4130310 () Bool)

(declare-fun e!4130308 () Bool)

(assert (=> b!6849262 (= e!4130310 e!4130308)))

(declare-fun c!1275046 () Bool)

(assert (=> b!6849262 (= c!1275046 ((_ is Star!16675) lt!2456050))))

(declare-fun b!6849263 () Bool)

(declare-fun e!4130307 () Bool)

(declare-fun call!623817 () Bool)

(assert (=> b!6849263 (= e!4130307 call!623817)))

(declare-fun b!6849264 () Bool)

(declare-fun e!4130309 () Bool)

(assert (=> b!6849264 (= e!4130309 e!4130307)))

(declare-fun res!2795865 () Bool)

(assert (=> b!6849264 (=> (not res!2795865) (not e!4130307))))

(declare-fun call!623818 () Bool)

(assert (=> b!6849264 (= res!2795865 call!623818)))

(declare-fun bm!623811 () Bool)

(declare-fun c!1275045 () Bool)

(assert (=> bm!623811 (= call!623818 (validRegex!8411 (ite c!1275045 (regOne!33863 lt!2456050) (regOne!33862 lt!2456050))))))

(declare-fun b!6849265 () Bool)

(assert (=> b!6849265 (= e!4130308 e!4130306)))

(declare-fun res!2795868 () Bool)

(assert (=> b!6849265 (= res!2795868 (not (nullable!6638 (reg!17004 lt!2456050))))))

(assert (=> b!6849265 (=> (not res!2795868) (not e!4130306))))

(declare-fun bm!623812 () Bool)

(assert (=> bm!623812 (= call!623817 call!623816)))

(declare-fun b!6849266 () Bool)

(declare-fun e!4130305 () Bool)

(assert (=> b!6849266 (= e!4130308 e!4130305)))

(assert (=> b!6849266 (= c!1275045 ((_ is Union!16675) lt!2456050))))

(declare-fun b!6849267 () Bool)

(declare-fun e!4130311 () Bool)

(assert (=> b!6849267 (= e!4130311 call!623817)))

(declare-fun bm!623813 () Bool)

(assert (=> bm!623813 (= call!623816 (validRegex!8411 (ite c!1275046 (reg!17004 lt!2456050) (ite c!1275045 (regTwo!33863 lt!2456050) (regTwo!33862 lt!2456050)))))))

(declare-fun b!6849268 () Bool)

(declare-fun res!2795867 () Bool)

(assert (=> b!6849268 (=> (not res!2795867) (not e!4130311))))

(assert (=> b!6849268 (= res!2795867 call!623818)))

(assert (=> b!6849268 (= e!4130305 e!4130311)))

(declare-fun d!2152919 () Bool)

(declare-fun res!2795869 () Bool)

(assert (=> d!2152919 (=> res!2795869 e!4130310)))

(assert (=> d!2152919 (= res!2795869 ((_ is ElementMatch!16675) lt!2456050))))

(assert (=> d!2152919 (= (validRegex!8411 lt!2456050) e!4130310)))

(declare-fun b!6849269 () Bool)

(declare-fun res!2795866 () Bool)

(assert (=> b!6849269 (=> res!2795866 e!4130309)))

(assert (=> b!6849269 (= res!2795866 (not ((_ is Concat!25520) lt!2456050)))))

(assert (=> b!6849269 (= e!4130305 e!4130309)))

(assert (= (and d!2152919 (not res!2795869)) b!6849262))

(assert (= (and b!6849262 c!1275046) b!6849265))

(assert (= (and b!6849262 (not c!1275046)) b!6849266))

(assert (= (and b!6849265 res!2795868) b!6849261))

(assert (= (and b!6849266 c!1275045) b!6849268))

(assert (= (and b!6849266 (not c!1275045)) b!6849269))

(assert (= (and b!6849268 res!2795867) b!6849267))

(assert (= (and b!6849269 (not res!2795866)) b!6849264))

(assert (= (and b!6849264 res!2795865) b!6849263))

(assert (= (or b!6849267 b!6849263) bm!623812))

(assert (= (or b!6849268 b!6849264) bm!623811))

(assert (= (or b!6849261 bm!623812) bm!623813))

(declare-fun m!7588568 () Bool)

(assert (=> bm!623811 m!7588568))

(declare-fun m!7588570 () Bool)

(assert (=> b!6849265 m!7588570))

(declare-fun m!7588572 () Bool)

(assert (=> bm!623813 m!7588572))

(assert (=> d!2152671 d!2152919))

(declare-fun d!2152921 () Bool)

(declare-fun res!2795870 () Bool)

(declare-fun e!4130312 () Bool)

(assert (=> d!2152921 (=> res!2795870 e!4130312)))

(assert (=> d!2152921 (= res!2795870 ((_ is Nil!66200) (exprs!6559 lt!2455960)))))

(assert (=> d!2152921 (= (forall!15853 (exprs!6559 lt!2455960) lambda!387272) e!4130312)))

(declare-fun b!6849270 () Bool)

(declare-fun e!4130313 () Bool)

(assert (=> b!6849270 (= e!4130312 e!4130313)))

(declare-fun res!2795871 () Bool)

(assert (=> b!6849270 (=> (not res!2795871) (not e!4130313))))

(assert (=> b!6849270 (= res!2795871 (dynLambda!26455 lambda!387272 (h!72648 (exprs!6559 lt!2455960))))))

(declare-fun b!6849271 () Bool)

(assert (=> b!6849271 (= e!4130313 (forall!15853 (t!380067 (exprs!6559 lt!2455960)) lambda!387272))))

(assert (= (and d!2152921 (not res!2795870)) b!6849270))

(assert (= (and b!6849270 res!2795871) b!6849271))

(declare-fun b_lambda!258517 () Bool)

(assert (=> (not b_lambda!258517) (not b!6849270)))

(declare-fun m!7588580 () Bool)

(assert (=> b!6849270 m!7588580))

(declare-fun m!7588582 () Bool)

(assert (=> b!6849271 m!7588582))

(assert (=> d!2152671 d!2152921))

(assert (=> d!2152599 d!2152581))

(assert (=> d!2152599 d!2152681))

(declare-fun d!2152925 () Bool)

(assert (=> d!2152925 (= (isEmpty!38573 (tail!12804 (tail!12804 s!2326))) ((_ is Nil!66202) (tail!12804 (tail!12804 s!2326))))))

(assert (=> b!6848621 d!2152925))

(declare-fun d!2152927 () Bool)

(assert (=> d!2152927 (= (tail!12804 (tail!12804 s!2326)) (t!380069 (tail!12804 s!2326)))))

(assert (=> b!6848621 d!2152927))

(declare-fun d!2152929 () Bool)

(assert (=> d!2152929 (= (isEmpty!38575 (t!380067 (unfocusZipperList!2092 zl!343))) ((_ is Nil!66200) (t!380067 (unfocusZipperList!2092 zl!343))))))

(assert (=> b!6848599 d!2152929))

(declare-fun d!2152931 () Bool)

(declare-fun lt!2456076 () Bool)

(assert (=> d!2152931 (= lt!2456076 (select (content!12981 (t!380068 lt!2455980)) (h!72649 lt!2455980)))))

(declare-fun e!4130319 () Bool)

(assert (=> d!2152931 (= lt!2456076 e!4130319)))

(declare-fun res!2795873 () Bool)

(assert (=> d!2152931 (=> (not res!2795873) (not e!4130319))))

(assert (=> d!2152931 (= res!2795873 ((_ is Cons!66201) (t!380068 lt!2455980)))))

(assert (=> d!2152931 (= (contains!20327 (t!380068 lt!2455980) (h!72649 lt!2455980)) lt!2456076)))

(declare-fun b!6849280 () Bool)

(declare-fun e!4130318 () Bool)

(assert (=> b!6849280 (= e!4130319 e!4130318)))

(declare-fun res!2795872 () Bool)

(assert (=> b!6849280 (=> res!2795872 e!4130318)))

(assert (=> b!6849280 (= res!2795872 (= (h!72649 (t!380068 lt!2455980)) (h!72649 lt!2455980)))))

(declare-fun b!6849281 () Bool)

(assert (=> b!6849281 (= e!4130318 (contains!20327 (t!380068 (t!380068 lt!2455980)) (h!72649 lt!2455980)))))

(assert (= (and d!2152931 res!2795873) b!6849280))

(assert (= (and b!6849280 (not res!2795872)) b!6849281))

(assert (=> d!2152931 m!7588154))

(declare-fun m!7588584 () Bool)

(assert (=> d!2152931 m!7588584))

(declare-fun m!7588588 () Bool)

(assert (=> b!6849281 m!7588588))

(assert (=> b!6848815 d!2152931))

(declare-fun b!6849284 () Bool)

(declare-fun e!4130325 () Bool)

(declare-fun e!4130324 () Bool)

(assert (=> b!6849284 (= e!4130325 e!4130324)))

(declare-fun c!1275053 () Bool)

(assert (=> b!6849284 (= c!1275053 ((_ is EmptyLang!16675) (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))

(declare-fun b!6849285 () Bool)

(declare-fun res!2795874 () Bool)

(declare-fun e!4130323 () Bool)

(assert (=> b!6849285 (=> res!2795874 e!4130323)))

(assert (=> b!6849285 (= res!2795874 (not ((_ is ElementMatch!16675) (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))))))))

(assert (=> b!6849285 (= e!4130324 e!4130323)))

(declare-fun b!6849286 () Bool)

(declare-fun lt!2456078 () Bool)

(assert (=> b!6849286 (= e!4130324 (not lt!2456078))))

(declare-fun b!6849287 () Bool)

(declare-fun res!2795877 () Bool)

(declare-fun e!4130326 () Bool)

(assert (=> b!6849287 (=> (not res!2795877) (not e!4130326))))

(declare-fun call!623822 () Bool)

(assert (=> b!6849287 (= res!2795877 (not call!623822))))

(declare-fun b!6849288 () Bool)

(declare-fun e!4130327 () Bool)

(assert (=> b!6849288 (= e!4130327 (not (= (head!13727 (tail!12804 (tail!12804 s!2326))) (c!1274613 (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))))

(declare-fun b!6849289 () Bool)

(declare-fun res!2795876 () Bool)

(assert (=> b!6849289 (=> (not res!2795876) (not e!4130326))))

(assert (=> b!6849289 (= res!2795876 (isEmpty!38573 (tail!12804 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun b!6849290 () Bool)

(declare-fun res!2795880 () Bool)

(assert (=> b!6849290 (=> res!2795880 e!4130323)))

(assert (=> b!6849290 (= res!2795880 e!4130326)))

(declare-fun res!2795878 () Bool)

(assert (=> b!6849290 (=> (not res!2795878) (not e!4130326))))

(assert (=> b!6849290 (= res!2795878 lt!2456078)))

(declare-fun b!6849291 () Bool)

(declare-fun e!4130321 () Bool)

(assert (=> b!6849291 (= e!4130321 (nullable!6638 (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))

(declare-fun b!6849292 () Bool)

(assert (=> b!6849292 (= e!4130326 (= (head!13727 (tail!12804 (tail!12804 s!2326))) (c!1274613 (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))))))))

(declare-fun b!6849293 () Bool)

(declare-fun res!2795881 () Bool)

(assert (=> b!6849293 (=> res!2795881 e!4130327)))

(assert (=> b!6849293 (= res!2795881 (not (isEmpty!38573 (tail!12804 (tail!12804 (tail!12804 s!2326))))))))

(declare-fun d!2152935 () Bool)

(assert (=> d!2152935 e!4130325))

(declare-fun c!1275052 () Bool)

(assert (=> d!2152935 (= c!1275052 ((_ is EmptyExpr!16675) (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))

(assert (=> d!2152935 (= lt!2456078 e!4130321)))

(declare-fun c!1275054 () Bool)

(assert (=> d!2152935 (= c!1275054 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(assert (=> d!2152935 (validRegex!8411 (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))))))

(assert (=> d!2152935 (= (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (tail!12804 (tail!12804 s!2326))) lt!2456078)))

(declare-fun bm!623817 () Bool)

(assert (=> bm!623817 (= call!623822 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6849294 () Bool)

(declare-fun e!4130322 () Bool)

(assert (=> b!6849294 (= e!4130322 e!4130327)))

(declare-fun res!2795875 () Bool)

(assert (=> b!6849294 (=> res!2795875 e!4130327)))

(assert (=> b!6849294 (= res!2795875 call!623822)))

(declare-fun b!6849295 () Bool)

(assert (=> b!6849295 (= e!4130321 (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (head!13727 (tail!12804 (tail!12804 s!2326)))) (tail!12804 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun b!6849296 () Bool)

(assert (=> b!6849296 (= e!4130323 e!4130322)))

(declare-fun res!2795879 () Bool)

(assert (=> b!6849296 (=> (not res!2795879) (not e!4130322))))

(assert (=> b!6849296 (= res!2795879 (not lt!2456078))))

(declare-fun b!6849297 () Bool)

(assert (=> b!6849297 (= e!4130325 (= lt!2456078 call!623822))))

(assert (= (and d!2152935 c!1275054) b!6849291))

(assert (= (and d!2152935 (not c!1275054)) b!6849295))

(assert (= (and d!2152935 c!1275052) b!6849297))

(assert (= (and d!2152935 (not c!1275052)) b!6849284))

(assert (= (and b!6849284 c!1275053) b!6849286))

(assert (= (and b!6849284 (not c!1275053)) b!6849285))

(assert (= (and b!6849285 (not res!2795874)) b!6849290))

(assert (= (and b!6849290 res!2795878) b!6849287))

(assert (= (and b!6849287 res!2795877) b!6849289))

(assert (= (and b!6849289 res!2795876) b!6849292))

(assert (= (and b!6849290 (not res!2795880)) b!6849296))

(assert (= (and b!6849296 res!2795879) b!6849294))

(assert (= (and b!6849294 (not res!2795875)) b!6849293))

(assert (= (and b!6849293 (not res!2795881)) b!6849288))

(assert (= (or b!6849297 b!6849287 b!6849294) bm!623817))

(assert (=> bm!623817 m!7587936))

(assert (=> bm!623817 m!7587942))

(assert (=> b!6849295 m!7587936))

(declare-fun m!7588600 () Bool)

(assert (=> b!6849295 m!7588600))

(assert (=> b!6849295 m!7587934))

(assert (=> b!6849295 m!7588600))

(declare-fun m!7588604 () Bool)

(assert (=> b!6849295 m!7588604))

(assert (=> b!6849295 m!7587936))

(declare-fun m!7588606 () Bool)

(assert (=> b!6849295 m!7588606))

(assert (=> b!6849295 m!7588604))

(assert (=> b!6849295 m!7588606))

(declare-fun m!7588608 () Bool)

(assert (=> b!6849295 m!7588608))

(assert (=> b!6849291 m!7587934))

(declare-fun m!7588610 () Bool)

(assert (=> b!6849291 m!7588610))

(assert (=> b!6849289 m!7587936))

(assert (=> b!6849289 m!7588606))

(assert (=> b!6849289 m!7588606))

(declare-fun m!7588612 () Bool)

(assert (=> b!6849289 m!7588612))

(assert (=> b!6849293 m!7587936))

(assert (=> b!6849293 m!7588606))

(assert (=> b!6849293 m!7588606))

(assert (=> b!6849293 m!7588612))

(assert (=> d!2152935 m!7587936))

(assert (=> d!2152935 m!7587942))

(assert (=> d!2152935 m!7587934))

(declare-fun m!7588614 () Bool)

(assert (=> d!2152935 m!7588614))

(assert (=> b!6849292 m!7587936))

(assert (=> b!6849292 m!7588600))

(assert (=> b!6849288 m!7587936))

(assert (=> b!6849288 m!7588600))

(assert (=> b!6848530 d!2152935))

(declare-fun e!4130338 () Regex!16675)

(declare-fun b!6849310 () Bool)

(declare-fun call!623826 () Regex!16675)

(assert (=> b!6849310 (= e!4130338 (Union!16675 (Concat!25520 call!623826 (regTwo!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326)))) EmptyLang!16675))))

(declare-fun bm!623821 () Bool)

(declare-fun call!623829 () Regex!16675)

(assert (=> bm!623821 (= call!623826 call!623829)))

(declare-fun bm!623822 () Bool)

(declare-fun call!623828 () Regex!16675)

(assert (=> bm!623822 (= call!623829 call!623828)))

(declare-fun b!6849311 () Bool)

(declare-fun e!4130340 () Regex!16675)

(assert (=> b!6849311 (= e!4130340 EmptyLang!16675)))

(declare-fun b!6849312 () Bool)

(declare-fun e!4130341 () Regex!16675)

(assert (=> b!6849312 (= e!4130341 (Concat!25520 call!623829 (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun call!623827 () Regex!16675)

(declare-fun bm!623823 () Bool)

(declare-fun c!1275058 () Bool)

(assert (=> bm!623823 (= call!623827 (derivativeStep!5321 (ite c!1275058 (regOne!33863 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (regOne!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326)))) (head!13727 (tail!12804 s!2326))))))

(declare-fun b!6849313 () Bool)

(declare-fun e!4130337 () Regex!16675)

(assert (=> b!6849313 (= e!4130337 (Union!16675 call!623827 call!623828))))

(declare-fun b!6849314 () Bool)

(assert (=> b!6849314 (= e!4130338 (Union!16675 (Concat!25520 call!623827 (regTwo!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326)))) call!623826))))

(declare-fun b!6849315 () Bool)

(assert (=> b!6849315 (= c!1275058 ((_ is Union!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun e!4130339 () Regex!16675)

(assert (=> b!6849315 (= e!4130339 e!4130337)))

(declare-fun b!6849309 () Bool)

(assert (=> b!6849309 (= e!4130337 e!4130341)))

(declare-fun c!1275061 () Bool)

(assert (=> b!6849309 (= c!1275061 ((_ is Star!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun d!2152949 () Bool)

(declare-fun lt!2456080 () Regex!16675)

(assert (=> d!2152949 (validRegex!8411 lt!2456080)))

(assert (=> d!2152949 (= lt!2456080 e!4130340)))

(declare-fun c!1275057 () Bool)

(assert (=> d!2152949 (= c!1275057 (or ((_ is EmptyExpr!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))) ((_ is EmptyLang!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326)))))))

(assert (=> d!2152949 (validRegex!8411 (derivativeStep!5321 r!7292 (head!13727 s!2326)))))

(assert (=> d!2152949 (= (derivativeStep!5321 (derivativeStep!5321 r!7292 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) lt!2456080)))

(declare-fun b!6849316 () Bool)

(declare-fun c!1275060 () Bool)

(assert (=> b!6849316 (= c!1275060 (nullable!6638 (regOne!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326)))))))

(assert (=> b!6849316 (= e!4130341 e!4130338)))

(declare-fun bm!623824 () Bool)

(assert (=> bm!623824 (= call!623828 (derivativeStep!5321 (ite c!1275058 (regTwo!33863 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (ite c!1275061 (reg!17004 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (ite c!1275060 (regTwo!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (regOne!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326)))))) (head!13727 (tail!12804 s!2326))))))

(declare-fun b!6849317 () Bool)

(assert (=> b!6849317 (= e!4130340 e!4130339)))

(declare-fun c!1275059 () Bool)

(assert (=> b!6849317 (= c!1275059 ((_ is ElementMatch!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun b!6849318 () Bool)

(assert (=> b!6849318 (= e!4130339 (ite (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 r!7292 (head!13727 s!2326)))) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2152949 c!1275057) b!6849311))

(assert (= (and d!2152949 (not c!1275057)) b!6849317))

(assert (= (and b!6849317 c!1275059) b!6849318))

(assert (= (and b!6849317 (not c!1275059)) b!6849315))

(assert (= (and b!6849315 c!1275058) b!6849313))

(assert (= (and b!6849315 (not c!1275058)) b!6849309))

(assert (= (and b!6849309 c!1275061) b!6849312))

(assert (= (and b!6849309 (not c!1275061)) b!6849316))

(assert (= (and b!6849316 c!1275060) b!6849314))

(assert (= (and b!6849316 (not c!1275060)) b!6849310))

(assert (= (or b!6849314 b!6849310) bm!623821))

(assert (= (or b!6849312 bm!623821) bm!623822))

(assert (= (or b!6849313 bm!623822) bm!623824))

(assert (= (or b!6849313 b!6849314) bm!623823))

(assert (=> bm!623823 m!7587932))

(declare-fun m!7588626 () Bool)

(assert (=> bm!623823 m!7588626))

(declare-fun m!7588628 () Bool)

(assert (=> d!2152949 m!7588628))

(assert (=> d!2152949 m!7587362))

(assert (=> d!2152949 m!7587944))

(declare-fun m!7588630 () Bool)

(assert (=> b!6849316 m!7588630))

(assert (=> bm!623824 m!7587932))

(declare-fun m!7588632 () Bool)

(assert (=> bm!623824 m!7588632))

(assert (=> b!6848530 d!2152949))

(declare-fun d!2152955 () Bool)

(assert (=> d!2152955 (= (head!13727 (tail!12804 s!2326)) (h!72650 (tail!12804 s!2326)))))

(assert (=> b!6848530 d!2152955))

(assert (=> b!6848530 d!2152927))

(assert (=> d!2152635 d!2152583))

(declare-fun d!2152957 () Bool)

(assert (=> d!2152957 (= (head!13728 (exprs!6559 (h!72649 zl!343))) (h!72648 (exprs!6559 (h!72649 zl!343))))))

(assert (=> b!6848483 d!2152957))

(declare-fun d!2152959 () Bool)

(declare-fun c!1275064 () Bool)

(assert (=> d!2152959 (= c!1275064 ((_ is Nil!66201) res!2795710))))

(declare-fun e!4130351 () (InoxSet Context!12118))

(assert (=> d!2152959 (= (content!12981 res!2795710) e!4130351)))

(declare-fun b!6849330 () Bool)

(assert (=> b!6849330 (= e!4130351 ((as const (Array Context!12118 Bool)) false))))

(declare-fun b!6849331 () Bool)

(assert (=> b!6849331 (= e!4130351 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) (h!72649 res!2795710) true) (content!12981 (t!380068 res!2795710))))))

(assert (= (and d!2152959 c!1275064) b!6849330))

(assert (= (and d!2152959 (not c!1275064)) b!6849331))

(declare-fun m!7588634 () Bool)

(assert (=> b!6849331 m!7588634))

(declare-fun m!7588636 () Bool)

(assert (=> b!6849331 m!7588636))

(assert (=> b!6848819 d!2152959))

(declare-fun b!6849332 () Bool)

(declare-fun e!4130353 () Bool)

(declare-fun call!623833 () Bool)

(assert (=> b!6849332 (= e!4130353 call!623833)))

(declare-fun b!6849333 () Bool)

(declare-fun e!4130357 () Bool)

(declare-fun e!4130355 () Bool)

(assert (=> b!6849333 (= e!4130357 e!4130355)))

(declare-fun c!1275066 () Bool)

(assert (=> b!6849333 (= c!1275066 ((_ is Star!16675) (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))

(declare-fun b!6849334 () Bool)

(declare-fun e!4130354 () Bool)

(declare-fun call!623834 () Bool)

(assert (=> b!6849334 (= e!4130354 call!623834)))

(declare-fun b!6849335 () Bool)

(declare-fun e!4130356 () Bool)

(assert (=> b!6849335 (= e!4130356 e!4130354)))

(declare-fun res!2795896 () Bool)

(assert (=> b!6849335 (=> (not res!2795896) (not e!4130354))))

(declare-fun call!623835 () Bool)

(assert (=> b!6849335 (= res!2795896 call!623835)))

(declare-fun c!1275065 () Bool)

(declare-fun bm!623828 () Bool)

(assert (=> bm!623828 (= call!623835 (validRegex!8411 (ite c!1275065 (regOne!33863 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))) (regOne!33862 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))))

(declare-fun b!6849336 () Bool)

(assert (=> b!6849336 (= e!4130355 e!4130353)))

(declare-fun res!2795899 () Bool)

(assert (=> b!6849336 (= res!2795899 (not (nullable!6638 (reg!17004 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))))

(assert (=> b!6849336 (=> (not res!2795899) (not e!4130353))))

(declare-fun bm!623829 () Bool)

(assert (=> bm!623829 (= call!623834 call!623833)))

(declare-fun b!6849337 () Bool)

(declare-fun e!4130352 () Bool)

(assert (=> b!6849337 (= e!4130355 e!4130352)))

(assert (=> b!6849337 (= c!1275065 ((_ is Union!16675) (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))

(declare-fun b!6849338 () Bool)

(declare-fun e!4130358 () Bool)

(assert (=> b!6849338 (= e!4130358 call!623834)))

(declare-fun bm!623830 () Bool)

(assert (=> bm!623830 (= call!623833 (validRegex!8411 (ite c!1275066 (reg!17004 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))) (ite c!1275065 (regTwo!33863 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))) (regTwo!33862 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))))))

(declare-fun b!6849339 () Bool)

(declare-fun res!2795898 () Bool)

(assert (=> b!6849339 (=> (not res!2795898) (not e!4130358))))

(assert (=> b!6849339 (= res!2795898 call!623835)))

(assert (=> b!6849339 (= e!4130352 e!4130358)))

(declare-fun d!2152961 () Bool)

(declare-fun res!2795900 () Bool)

(assert (=> d!2152961 (=> res!2795900 e!4130357)))

(assert (=> d!2152961 (= res!2795900 ((_ is ElementMatch!16675) (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))))

(assert (=> d!2152961 (= (validRegex!8411 (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))) e!4130357)))

(declare-fun b!6849340 () Bool)

(declare-fun res!2795897 () Bool)

(assert (=> b!6849340 (=> res!2795897 e!4130356)))

(assert (=> b!6849340 (= res!2795897 (not ((_ is Concat!25520) (ite c!1274943 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (ite c!1274942 (regTwo!33863 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))) (regTwo!33862 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292)))))))))))

(assert (=> b!6849340 (= e!4130352 e!4130356)))

(assert (= (and d!2152961 (not res!2795900)) b!6849333))

(assert (= (and b!6849333 c!1275066) b!6849336))

(assert (= (and b!6849333 (not c!1275066)) b!6849337))

(assert (= (and b!6849336 res!2795899) b!6849332))

(assert (= (and b!6849337 c!1275065) b!6849339))

(assert (= (and b!6849337 (not c!1275065)) b!6849340))

(assert (= (and b!6849339 res!2795898) b!6849338))

(assert (= (and b!6849340 (not res!2795897)) b!6849335))

(assert (= (and b!6849335 res!2795896) b!6849334))

(assert (= (or b!6849338 b!6849334) bm!623829))

(assert (= (or b!6849339 b!6849335) bm!623828))

(assert (= (or b!6849332 bm!623829) bm!623830))

(declare-fun m!7588644 () Bool)

(assert (=> bm!623828 m!7588644))

(declare-fun m!7588646 () Bool)

(assert (=> b!6849336 m!7588646))

(declare-fun m!7588648 () Bool)

(assert (=> bm!623830 m!7588648))

(assert (=> bm!623734 d!2152961))

(declare-fun bs!1830722 () Bool)

(declare-fun b!6849355 () Bool)

(assert (= bs!1830722 (and b!6849355 b!6848804)))

(declare-fun lambda!387286 () Int)

(assert (=> bs!1830722 (not (= lambda!387286 lambda!387277))))

(declare-fun bs!1830723 () Bool)

(assert (= bs!1830723 (and b!6849355 b!6848766)))

(assert (=> bs!1830723 (not (= lambda!387286 lambda!387274))))

(declare-fun bs!1830725 () Bool)

(assert (= bs!1830725 (and b!6849355 b!6848769)))

(assert (=> bs!1830725 (= (and (= (reg!17004 (regOne!33863 (regTwo!33863 r!7292))) (reg!17004 (regOne!33863 r!7292))) (= (regOne!33863 (regTwo!33863 r!7292)) (regOne!33863 r!7292))) (= lambda!387286 lambda!387273))))

(declare-fun bs!1830728 () Bool)

(assert (= bs!1830728 (and b!6849355 b!6848807)))

(assert (=> bs!1830728 (= (and (= (reg!17004 (regOne!33863 (regTwo!33863 r!7292))) (reg!17004 (regTwo!33863 r!7292))) (= (regOne!33863 (regTwo!33863 r!7292)) (regTwo!33863 r!7292))) (= lambda!387286 lambda!387276))))

(declare-fun bs!1830730 () Bool)

(assert (= bs!1830730 (and b!6849355 b!6847556)))

(assert (=> bs!1830730 (not (= lambda!387286 lambda!387200))))

(declare-fun bs!1830732 () Bool)

(assert (= bs!1830732 (and b!6849355 b!6847559)))

(assert (=> bs!1830732 (= (and (= (reg!17004 (regOne!33863 (regTwo!33863 r!7292))) (reg!17004 r!7292)) (= (regOne!33863 (regTwo!33863 r!7292)) r!7292)) (= lambda!387286 lambda!387199))))

(assert (=> b!6849355 true))

(assert (=> b!6849355 true))

(declare-fun bs!1830737 () Bool)

(declare-fun b!6849352 () Bool)

(assert (= bs!1830737 (and b!6849352 b!6848804)))

(declare-fun lambda!387288 () Int)

(assert (=> bs!1830737 (= (and (= (regOne!33862 (regOne!33863 (regTwo!33863 r!7292))) (regOne!33862 (regTwo!33863 r!7292))) (= (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))) (regTwo!33862 (regTwo!33863 r!7292)))) (= lambda!387288 lambda!387277))))

(declare-fun bs!1830738 () Bool)

(assert (= bs!1830738 (and b!6849352 b!6848766)))

(assert (=> bs!1830738 (= (and (= (regOne!33862 (regOne!33863 (regTwo!33863 r!7292))) (regOne!33862 (regOne!33863 r!7292))) (= (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))) (regTwo!33862 (regOne!33863 r!7292)))) (= lambda!387288 lambda!387274))))

(declare-fun bs!1830739 () Bool)

(assert (= bs!1830739 (and b!6849352 b!6848769)))

(assert (=> bs!1830739 (not (= lambda!387288 lambda!387273))))

(declare-fun bs!1830740 () Bool)

(assert (= bs!1830740 (and b!6849352 b!6848807)))

(assert (=> bs!1830740 (not (= lambda!387288 lambda!387276))))

(declare-fun bs!1830741 () Bool)

(assert (= bs!1830741 (and b!6849352 b!6849355)))

(assert (=> bs!1830741 (not (= lambda!387288 lambda!387286))))

(declare-fun bs!1830742 () Bool)

(assert (= bs!1830742 (and b!6849352 b!6847556)))

(assert (=> bs!1830742 (= (and (= (regOne!33862 (regOne!33863 (regTwo!33863 r!7292))) (regOne!33862 r!7292)) (= (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))) (regTwo!33862 r!7292))) (= lambda!387288 lambda!387200))))

(declare-fun bs!1830743 () Bool)

(assert (= bs!1830743 (and b!6849352 b!6847559)))

(assert (=> bs!1830743 (not (= lambda!387288 lambda!387199))))

(assert (=> b!6849352 true))

(assert (=> b!6849352 true))

(declare-fun e!4130369 () Bool)

(declare-fun call!623838 () Bool)

(assert (=> b!6849352 (= e!4130369 call!623838)))

(declare-fun b!6849353 () Bool)

(declare-fun e!4130367 () Bool)

(assert (=> b!6849353 (= e!4130367 e!4130369)))

(declare-fun c!1275072 () Bool)

(assert (=> b!6849353 (= c!1275072 ((_ is Star!16675) (regOne!33863 (regTwo!33863 r!7292))))))

(declare-fun bm!623833 () Bool)

(assert (=> bm!623833 (= call!623838 (Exists!3737 (ite c!1275072 lambda!387286 lambda!387288)))))

(declare-fun b!6849354 () Bool)

(declare-fun res!2795906 () Bool)

(declare-fun e!4130368 () Bool)

(assert (=> b!6849354 (=> res!2795906 e!4130368)))

(declare-fun call!623839 () Bool)

(assert (=> b!6849354 (= res!2795906 call!623839)))

(assert (=> b!6849354 (= e!4130369 e!4130368)))

(declare-fun d!2152965 () Bool)

(declare-fun c!1275073 () Bool)

(assert (=> d!2152965 (= c!1275073 ((_ is EmptyExpr!16675) (regOne!33863 (regTwo!33863 r!7292))))))

(declare-fun e!4130366 () Bool)

(assert (=> d!2152965 (= (matchRSpec!3776 (regOne!33863 (regTwo!33863 r!7292)) s!2326) e!4130366)))

(declare-fun bm!623834 () Bool)

(assert (=> bm!623834 (= call!623839 (isEmpty!38573 s!2326))))

(assert (=> b!6849355 (= e!4130368 call!623838)))

(declare-fun b!6849356 () Bool)

(assert (=> b!6849356 (= e!4130366 call!623839)))

(declare-fun b!6849357 () Bool)

(declare-fun e!4130371 () Bool)

(assert (=> b!6849357 (= e!4130371 (matchRSpec!3776 (regTwo!33863 (regOne!33863 (regTwo!33863 r!7292))) s!2326))))

(declare-fun b!6849358 () Bool)

(declare-fun c!1275071 () Bool)

(assert (=> b!6849358 (= c!1275071 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33863 r!7292))))))

(declare-fun e!4130372 () Bool)

(declare-fun e!4130370 () Bool)

(assert (=> b!6849358 (= e!4130372 e!4130370)))

(declare-fun b!6849359 () Bool)

(declare-fun c!1275074 () Bool)

(assert (=> b!6849359 (= c!1275074 ((_ is Union!16675) (regOne!33863 (regTwo!33863 r!7292))))))

(assert (=> b!6849359 (= e!4130370 e!4130367)))

(declare-fun b!6849360 () Bool)

(assert (=> b!6849360 (= e!4130366 e!4130372)))

(declare-fun res!2795905 () Bool)

(assert (=> b!6849360 (= res!2795905 (not ((_ is EmptyLang!16675) (regOne!33863 (regTwo!33863 r!7292)))))))

(assert (=> b!6849360 (=> (not res!2795905) (not e!4130372))))

(declare-fun b!6849361 () Bool)

(assert (=> b!6849361 (= e!4130367 e!4130371)))

(declare-fun res!2795904 () Bool)

(assert (=> b!6849361 (= res!2795904 (matchRSpec!3776 (regOne!33863 (regOne!33863 (regTwo!33863 r!7292))) s!2326))))

(assert (=> b!6849361 (=> res!2795904 e!4130371)))

(declare-fun b!6849362 () Bool)

(assert (=> b!6849362 (= e!4130370 (= s!2326 (Cons!66202 (c!1274613 (regOne!33863 (regTwo!33863 r!7292))) Nil!66202)))))

(assert (= (and d!2152965 c!1275073) b!6849356))

(assert (= (and d!2152965 (not c!1275073)) b!6849360))

(assert (= (and b!6849360 res!2795905) b!6849358))

(assert (= (and b!6849358 c!1275071) b!6849362))

(assert (= (and b!6849358 (not c!1275071)) b!6849359))

(assert (= (and b!6849359 c!1275074) b!6849361))

(assert (= (and b!6849359 (not c!1275074)) b!6849353))

(assert (= (and b!6849361 (not res!2795904)) b!6849357))

(assert (= (and b!6849353 c!1275072) b!6849354))

(assert (= (and b!6849353 (not c!1275072)) b!6849352))

(assert (= (and b!6849354 (not res!2795906)) b!6849355))

(assert (= (or b!6849355 b!6849352) bm!623833))

(assert (= (or b!6849356 b!6849354) bm!623834))

(declare-fun m!7588662 () Bool)

(assert (=> bm!623833 m!7588662))

(assert (=> bm!623834 m!7587310))

(declare-fun m!7588664 () Bool)

(assert (=> b!6849357 m!7588664))

(declare-fun m!7588666 () Bool)

(assert (=> b!6849361 m!7588666))

(assert (=> b!6848813 d!2152965))

(declare-fun b!6849372 () Bool)

(declare-fun e!4130381 () Bool)

(declare-fun call!623843 () Bool)

(assert (=> b!6849372 (= e!4130381 call!623843)))

(declare-fun b!6849373 () Bool)

(declare-fun e!4130385 () Bool)

(declare-fun e!4130383 () Bool)

(assert (=> b!6849373 (= e!4130385 e!4130383)))

(declare-fun c!1275078 () Bool)

(assert (=> b!6849373 (= c!1275078 ((_ is Star!16675) (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))))))

(declare-fun b!6849374 () Bool)

(declare-fun e!4130382 () Bool)

(declare-fun call!623844 () Bool)

(assert (=> b!6849374 (= e!4130382 call!623844)))

(declare-fun b!6849375 () Bool)

(declare-fun e!4130384 () Bool)

(assert (=> b!6849375 (= e!4130384 e!4130382)))

(declare-fun res!2795912 () Bool)

(assert (=> b!6849375 (=> (not res!2795912) (not e!4130382))))

(declare-fun call!623845 () Bool)

(assert (=> b!6849375 (= res!2795912 call!623845)))

(declare-fun bm!623838 () Bool)

(declare-fun c!1275077 () Bool)

(assert (=> bm!623838 (= call!623845 (validRegex!8411 (ite c!1275077 (regOne!33863 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))) (regOne!33862 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))))))))

(declare-fun b!6849376 () Bool)

(assert (=> b!6849376 (= e!4130383 e!4130381)))

(declare-fun res!2795915 () Bool)

(assert (=> b!6849376 (= res!2795915 (not (nullable!6638 (reg!17004 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))))))))

(assert (=> b!6849376 (=> (not res!2795915) (not e!4130381))))

(declare-fun bm!623839 () Bool)

(assert (=> bm!623839 (= call!623844 call!623843)))

(declare-fun b!6849377 () Bool)

(declare-fun e!4130380 () Bool)

(assert (=> b!6849377 (= e!4130383 e!4130380)))

(assert (=> b!6849377 (= c!1275077 ((_ is Union!16675) (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))))))

(declare-fun b!6849378 () Bool)

(declare-fun e!4130386 () Bool)

(assert (=> b!6849378 (= e!4130386 call!623844)))

(declare-fun bm!623840 () Bool)

(assert (=> bm!623840 (= call!623843 (validRegex!8411 (ite c!1275078 (reg!17004 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))) (ite c!1275077 (regTwo!33863 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))) (regTwo!33862 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888))))))))))

(declare-fun b!6849379 () Bool)

(declare-fun res!2795914 () Bool)

(assert (=> b!6849379 (=> (not res!2795914) (not e!4130386))))

(assert (=> b!6849379 (= res!2795914 call!623845)))

(assert (=> b!6849379 (= e!4130380 e!4130386)))

(declare-fun d!2152971 () Bool)

(declare-fun res!2795916 () Bool)

(assert (=> d!2152971 (=> res!2795916 e!4130385)))

(assert (=> d!2152971 (= res!2795916 ((_ is ElementMatch!16675) (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))))))

(assert (=> d!2152971 (= (validRegex!8411 (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888)))) e!4130385)))

(declare-fun b!6849380 () Bool)

(declare-fun res!2795913 () Bool)

(assert (=> b!6849380 (=> res!2795913 e!4130384)))

(assert (=> b!6849380 (= res!2795913 (not ((_ is Concat!25520) (ite c!1274940 (regOne!33863 (h!72648 lt!2455888)) (regOne!33862 (h!72648 lt!2455888))))))))

(assert (=> b!6849380 (= e!4130380 e!4130384)))

(assert (= (and d!2152971 (not res!2795916)) b!6849373))

(assert (= (and b!6849373 c!1275078) b!6849376))

(assert (= (and b!6849373 (not c!1275078)) b!6849377))

(assert (= (and b!6849376 res!2795915) b!6849372))

(assert (= (and b!6849377 c!1275077) b!6849379))

(assert (= (and b!6849377 (not c!1275077)) b!6849380))

(assert (= (and b!6849379 res!2795914) b!6849378))

(assert (= (and b!6849380 (not res!2795913)) b!6849375))

(assert (= (and b!6849375 res!2795912) b!6849374))

(assert (= (or b!6849378 b!6849374) bm!623839))

(assert (= (or b!6849379 b!6849375) bm!623838))

(assert (= (or b!6849372 bm!623839) bm!623840))

(declare-fun m!7588668 () Bool)

(assert (=> bm!623838 m!7588668))

(declare-fun m!7588670 () Bool)

(assert (=> b!6849376 m!7588670))

(declare-fun m!7588672 () Bool)

(assert (=> bm!623840 m!7588672))

(assert (=> bm!623729 d!2152971))

(declare-fun d!2152973 () Bool)

(assert (=> d!2152973 true))

(assert (=> d!2152973 true))

(declare-fun res!2795924 () Bool)

(assert (=> d!2152973 (= (choose!51053 (ite c!1274654 lambda!387199 lambda!387200)) res!2795924)))

(assert (=> d!2152655 d!2152973))

(assert (=> b!6848798 d!2152609))

(declare-fun d!2152977 () Bool)

(assert (=> d!2152977 (= (isEmpty!38575 (t!380067 (exprs!6559 lt!2455960))) ((_ is Nil!66200) (t!380067 (exprs!6559 lt!2455960))))))

(assert (=> b!6848735 d!2152977))

(declare-fun b!6849390 () Bool)

(declare-fun e!4130395 () Bool)

(declare-fun call!623849 () Bool)

(assert (=> b!6849390 (= e!4130395 call!623849)))

(declare-fun b!6849391 () Bool)

(declare-fun e!4130399 () Bool)

(declare-fun e!4130397 () Bool)

(assert (=> b!6849391 (= e!4130399 e!4130397)))

(declare-fun c!1275082 () Bool)

(assert (=> b!6849391 (= c!1275082 ((_ is Star!16675) (h!72648 (t!380067 lt!2455888))))))

(declare-fun b!6849392 () Bool)

(declare-fun e!4130396 () Bool)

(declare-fun call!623850 () Bool)

(assert (=> b!6849392 (= e!4130396 call!623850)))

(declare-fun b!6849393 () Bool)

(declare-fun e!4130398 () Bool)

(assert (=> b!6849393 (= e!4130398 e!4130396)))

(declare-fun res!2795925 () Bool)

(assert (=> b!6849393 (=> (not res!2795925) (not e!4130396))))

(declare-fun call!623851 () Bool)

(assert (=> b!6849393 (= res!2795925 call!623851)))

(declare-fun bm!623844 () Bool)

(declare-fun c!1275081 () Bool)

(assert (=> bm!623844 (= call!623851 (validRegex!8411 (ite c!1275081 (regOne!33863 (h!72648 (t!380067 lt!2455888))) (regOne!33862 (h!72648 (t!380067 lt!2455888))))))))

(declare-fun b!6849394 () Bool)

(assert (=> b!6849394 (= e!4130397 e!4130395)))

(declare-fun res!2795928 () Bool)

(assert (=> b!6849394 (= res!2795928 (not (nullable!6638 (reg!17004 (h!72648 (t!380067 lt!2455888))))))))

(assert (=> b!6849394 (=> (not res!2795928) (not e!4130395))))

(declare-fun bm!623845 () Bool)

(assert (=> bm!623845 (= call!623850 call!623849)))

(declare-fun b!6849395 () Bool)

(declare-fun e!4130394 () Bool)

(assert (=> b!6849395 (= e!4130397 e!4130394)))

(assert (=> b!6849395 (= c!1275081 ((_ is Union!16675) (h!72648 (t!380067 lt!2455888))))))

(declare-fun b!6849396 () Bool)

(declare-fun e!4130400 () Bool)

(assert (=> b!6849396 (= e!4130400 call!623850)))

(declare-fun bm!623846 () Bool)

(assert (=> bm!623846 (= call!623849 (validRegex!8411 (ite c!1275082 (reg!17004 (h!72648 (t!380067 lt!2455888))) (ite c!1275081 (regTwo!33863 (h!72648 (t!380067 lt!2455888))) (regTwo!33862 (h!72648 (t!380067 lt!2455888)))))))))

(declare-fun b!6849397 () Bool)

(declare-fun res!2795927 () Bool)

(assert (=> b!6849397 (=> (not res!2795927) (not e!4130400))))

(assert (=> b!6849397 (= res!2795927 call!623851)))

(assert (=> b!6849397 (= e!4130394 e!4130400)))

(declare-fun d!2152979 () Bool)

(declare-fun res!2795929 () Bool)

(assert (=> d!2152979 (=> res!2795929 e!4130399)))

(assert (=> d!2152979 (= res!2795929 ((_ is ElementMatch!16675) (h!72648 (t!380067 lt!2455888))))))

(assert (=> d!2152979 (= (validRegex!8411 (h!72648 (t!380067 lt!2455888))) e!4130399)))

(declare-fun b!6849398 () Bool)

(declare-fun res!2795926 () Bool)

(assert (=> b!6849398 (=> res!2795926 e!4130398)))

(assert (=> b!6849398 (= res!2795926 (not ((_ is Concat!25520) (h!72648 (t!380067 lt!2455888)))))))

(assert (=> b!6849398 (= e!4130394 e!4130398)))

(assert (= (and d!2152979 (not res!2795929)) b!6849391))

(assert (= (and b!6849391 c!1275082) b!6849394))

(assert (= (and b!6849391 (not c!1275082)) b!6849395))

(assert (= (and b!6849394 res!2795928) b!6849390))

(assert (= (and b!6849395 c!1275081) b!6849397))

(assert (= (and b!6849395 (not c!1275081)) b!6849398))

(assert (= (and b!6849397 res!2795927) b!6849396))

(assert (= (and b!6849398 (not res!2795926)) b!6849393))

(assert (= (and b!6849393 res!2795925) b!6849392))

(assert (= (or b!6849396 b!6849392) bm!623845))

(assert (= (or b!6849397 b!6849393) bm!623844))

(assert (= (or b!6849390 bm!623845) bm!623846))

(declare-fun m!7588684 () Bool)

(assert (=> bm!623844 m!7588684))

(declare-fun m!7588688 () Bool)

(assert (=> b!6849394 m!7588688))

(declare-fun m!7588690 () Bool)

(assert (=> bm!623846 m!7588690))

(assert (=> bs!1830606 d!2152979))

(assert (=> b!6848617 d!2152925))

(assert (=> b!6848617 d!2152927))

(declare-fun bs!1830763 () Bool)

(declare-fun d!2152985 () Bool)

(assert (= bs!1830763 (and d!2152985 b!6847411)))

(declare-fun lambda!387290 () Int)

(assert (=> bs!1830763 (not (= lambda!387290 lambda!387177))))

(declare-fun bs!1830764 () Bool)

(assert (= bs!1830764 (and d!2152985 d!2152415)))

(assert (=> bs!1830764 (= (= lambda!387271 lambda!387177) (= lambda!387290 lambda!387230))))

(declare-fun bs!1830765 () Bool)

(assert (= bs!1830765 (and d!2152985 d!2152647)))

(assert (=> bs!1830765 (not (= lambda!387290 lambda!387271))))

(declare-fun bs!1830766 () Bool)

(assert (= bs!1830766 (and d!2152985 d!2152417)))

(assert (=> bs!1830766 (not (= lambda!387290 lambda!387233))))

(declare-fun bs!1830767 () Bool)

(assert (= bs!1830767 (and d!2152985 d!2152645)))

(assert (=> bs!1830767 (= (= lambda!387271 lambda!387233) (= lambda!387290 lambda!387268))))

(assert (=> d!2152985 true))

(assert (=> d!2152985 (< (dynLambda!26458 order!27655 lambda!387271) (dynLambda!26458 order!27655 lambda!387290))))

(assert (=> d!2152985 (= (exists!2777 zl!343 lambda!387271) (not (forall!15854 zl!343 lambda!387290)))))

(declare-fun bs!1830768 () Bool)

(assert (= bs!1830768 d!2152985))

(declare-fun m!7588700 () Bool)

(assert (=> bs!1830768 m!7588700))

(assert (=> d!2152647 d!2152985))

(declare-fun d!2152991 () Bool)

(declare-fun res!2795934 () Bool)

(declare-fun e!4130410 () Bool)

(assert (=> d!2152991 (=> res!2795934 e!4130410)))

(assert (=> d!2152991 (= res!2795934 ((_ is Nil!66201) (t!380068 zl!343)))))

(assert (=> d!2152991 (= (forall!15854 (t!380068 zl!343) lambda!387230) e!4130410)))

(declare-fun b!6849413 () Bool)

(declare-fun e!4130412 () Bool)

(assert (=> b!6849413 (= e!4130410 e!4130412)))

(declare-fun res!2795936 () Bool)

(assert (=> b!6849413 (=> (not res!2795936) (not e!4130412))))

(assert (=> b!6849413 (= res!2795936 (dynLambda!26456 lambda!387230 (h!72649 (t!380068 zl!343))))))

(declare-fun b!6849414 () Bool)

(assert (=> b!6849414 (= e!4130412 (forall!15854 (t!380068 (t!380068 zl!343)) lambda!387230))))

(assert (= (and d!2152991 (not res!2795934)) b!6849413))

(assert (= (and b!6849413 res!2795936) b!6849414))

(declare-fun b_lambda!258521 () Bool)

(assert (=> (not b_lambda!258521) (not b!6849413)))

(declare-fun m!7588708 () Bool)

(assert (=> b!6849413 m!7588708))

(declare-fun m!7588710 () Bool)

(assert (=> b!6849414 m!7588710))

(assert (=> b!6848731 d!2152991))

(declare-fun d!2152995 () Bool)

(declare-fun lt!2456085 () Bool)

(assert (=> d!2152995 (= lt!2456085 (select (content!12981 (t!380068 zl!343)) lt!2455960))))

(declare-fun e!4130415 () Bool)

(assert (=> d!2152995 (= lt!2456085 e!4130415)))

(declare-fun res!2795939 () Bool)

(assert (=> d!2152995 (=> (not res!2795939) (not e!4130415))))

(assert (=> d!2152995 (= res!2795939 ((_ is Cons!66201) (t!380068 zl!343)))))

(assert (=> d!2152995 (= (contains!20327 (t!380068 zl!343) lt!2455960) lt!2456085)))

(declare-fun b!6849417 () Bool)

(declare-fun e!4130414 () Bool)

(assert (=> b!6849417 (= e!4130415 e!4130414)))

(declare-fun res!2795938 () Bool)

(assert (=> b!6849417 (=> res!2795938 e!4130414)))

(assert (=> b!6849417 (= res!2795938 (= (h!72649 (t!380068 zl!343)) lt!2455960))))

(declare-fun b!6849418 () Bool)

(assert (=> b!6849418 (= e!4130414 (contains!20327 (t!380068 (t!380068 zl!343)) lt!2455960))))

(assert (= (and d!2152995 res!2795939) b!6849417))

(assert (= (and b!6849417 (not res!2795938)) b!6849418))

(declare-fun m!7588714 () Bool)

(assert (=> d!2152995 m!7588714))

(declare-fun m!7588716 () Bool)

(assert (=> d!2152995 m!7588716))

(declare-fun m!7588720 () Bool)

(assert (=> b!6849418 m!7588720))

(assert (=> b!6848723 d!2152995))

(declare-fun bs!1830769 () Bool)

(declare-fun b!6849424 () Bool)

(assert (= bs!1830769 (and b!6849424 b!6848804)))

(declare-fun lambda!387291 () Int)

(assert (=> bs!1830769 (not (= lambda!387291 lambda!387277))))

(declare-fun bs!1830770 () Bool)

(assert (= bs!1830770 (and b!6849424 b!6849352)))

(assert (=> bs!1830770 (not (= lambda!387291 lambda!387288))))

(declare-fun bs!1830771 () Bool)

(assert (= bs!1830771 (and b!6849424 b!6848766)))

(assert (=> bs!1830771 (not (= lambda!387291 lambda!387274))))

(declare-fun bs!1830772 () Bool)

(assert (= bs!1830772 (and b!6849424 b!6848769)))

(assert (=> bs!1830772 (= (and (= (reg!17004 (regOne!33863 (regOne!33863 r!7292))) (reg!17004 (regOne!33863 r!7292))) (= (regOne!33863 (regOne!33863 r!7292)) (regOne!33863 r!7292))) (= lambda!387291 lambda!387273))))

(declare-fun bs!1830773 () Bool)

(assert (= bs!1830773 (and b!6849424 b!6848807)))

(assert (=> bs!1830773 (= (and (= (reg!17004 (regOne!33863 (regOne!33863 r!7292))) (reg!17004 (regTwo!33863 r!7292))) (= (regOne!33863 (regOne!33863 r!7292)) (regTwo!33863 r!7292))) (= lambda!387291 lambda!387276))))

(declare-fun bs!1830774 () Bool)

(assert (= bs!1830774 (and b!6849424 b!6849355)))

(assert (=> bs!1830774 (= (and (= (reg!17004 (regOne!33863 (regOne!33863 r!7292))) (reg!17004 (regOne!33863 (regTwo!33863 r!7292)))) (= (regOne!33863 (regOne!33863 r!7292)) (regOne!33863 (regTwo!33863 r!7292)))) (= lambda!387291 lambda!387286))))

(declare-fun bs!1830775 () Bool)

(assert (= bs!1830775 (and b!6849424 b!6847556)))

(assert (=> bs!1830775 (not (= lambda!387291 lambda!387200))))

(declare-fun bs!1830776 () Bool)

(assert (= bs!1830776 (and b!6849424 b!6847559)))

(assert (=> bs!1830776 (= (and (= (reg!17004 (regOne!33863 (regOne!33863 r!7292))) (reg!17004 r!7292)) (= (regOne!33863 (regOne!33863 r!7292)) r!7292)) (= lambda!387291 lambda!387199))))

(assert (=> b!6849424 true))

(assert (=> b!6849424 true))

(declare-fun bs!1830777 () Bool)

(declare-fun b!6849421 () Bool)

(assert (= bs!1830777 (and b!6849421 b!6848804)))

(declare-fun lambda!387292 () Int)

(assert (=> bs!1830777 (= (and (= (regOne!33862 (regOne!33863 (regOne!33863 r!7292))) (regOne!33862 (regTwo!33863 r!7292))) (= (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))) (regTwo!33862 (regTwo!33863 r!7292)))) (= lambda!387292 lambda!387277))))

(declare-fun bs!1830778 () Bool)

(assert (= bs!1830778 (and b!6849421 b!6849352)))

(assert (=> bs!1830778 (= (and (= (regOne!33862 (regOne!33863 (regOne!33863 r!7292))) (regOne!33862 (regOne!33863 (regTwo!33863 r!7292)))) (= (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))) (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))))) (= lambda!387292 lambda!387288))))

(declare-fun bs!1830780 () Bool)

(assert (= bs!1830780 (and b!6849421 b!6848766)))

(assert (=> bs!1830780 (= (and (= (regOne!33862 (regOne!33863 (regOne!33863 r!7292))) (regOne!33862 (regOne!33863 r!7292))) (= (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))) (regTwo!33862 (regOne!33863 r!7292)))) (= lambda!387292 lambda!387274))))

(declare-fun bs!1830781 () Bool)

(assert (= bs!1830781 (and b!6849421 b!6848769)))

(assert (=> bs!1830781 (not (= lambda!387292 lambda!387273))))

(declare-fun bs!1830783 () Bool)

(assert (= bs!1830783 (and b!6849421 b!6848807)))

(assert (=> bs!1830783 (not (= lambda!387292 lambda!387276))))

(declare-fun bs!1830785 () Bool)

(assert (= bs!1830785 (and b!6849421 b!6849355)))

(assert (=> bs!1830785 (not (= lambda!387292 lambda!387286))))

(declare-fun bs!1830787 () Bool)

(assert (= bs!1830787 (and b!6849421 b!6849424)))

(assert (=> bs!1830787 (not (= lambda!387292 lambda!387291))))

(declare-fun bs!1830790 () Bool)

(assert (= bs!1830790 (and b!6849421 b!6847556)))

(assert (=> bs!1830790 (= (and (= (regOne!33862 (regOne!33863 (regOne!33863 r!7292))) (regOne!33862 r!7292)) (= (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))) (regTwo!33862 r!7292))) (= lambda!387292 lambda!387200))))

(declare-fun bs!1830792 () Bool)

(assert (= bs!1830792 (and b!6849421 b!6847559)))

(assert (=> bs!1830792 (not (= lambda!387292 lambda!387199))))

(assert (=> b!6849421 true))

(assert (=> b!6849421 true))

(declare-fun e!4130421 () Bool)

(declare-fun call!623855 () Bool)

(assert (=> b!6849421 (= e!4130421 call!623855)))

(declare-fun b!6849422 () Bool)

(declare-fun e!4130419 () Bool)

(assert (=> b!6849422 (= e!4130419 e!4130421)))

(declare-fun c!1275089 () Bool)

(assert (=> b!6849422 (= c!1275089 ((_ is Star!16675) (regOne!33863 (regOne!33863 r!7292))))))

(declare-fun bm!623850 () Bool)

(assert (=> bm!623850 (= call!623855 (Exists!3737 (ite c!1275089 lambda!387291 lambda!387292)))))

(declare-fun b!6849423 () Bool)

(declare-fun res!2795944 () Bool)

(declare-fun e!4130420 () Bool)

(assert (=> b!6849423 (=> res!2795944 e!4130420)))

(declare-fun call!623856 () Bool)

(assert (=> b!6849423 (= res!2795944 call!623856)))

(assert (=> b!6849423 (= e!4130421 e!4130420)))

(declare-fun d!2152999 () Bool)

(declare-fun c!1275090 () Bool)

(assert (=> d!2152999 (= c!1275090 ((_ is EmptyExpr!16675) (regOne!33863 (regOne!33863 r!7292))))))

(declare-fun e!4130418 () Bool)

(assert (=> d!2152999 (= (matchRSpec!3776 (regOne!33863 (regOne!33863 r!7292)) s!2326) e!4130418)))

(declare-fun bm!623851 () Bool)

(assert (=> bm!623851 (= call!623856 (isEmpty!38573 s!2326))))

(assert (=> b!6849424 (= e!4130420 call!623855)))

(declare-fun b!6849425 () Bool)

(assert (=> b!6849425 (= e!4130418 call!623856)))

(declare-fun b!6849426 () Bool)

(declare-fun e!4130423 () Bool)

(assert (=> b!6849426 (= e!4130423 (matchRSpec!3776 (regTwo!33863 (regOne!33863 (regOne!33863 r!7292))) s!2326))))

(declare-fun b!6849427 () Bool)

(declare-fun c!1275088 () Bool)

(assert (=> b!6849427 (= c!1275088 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33863 r!7292))))))

(declare-fun e!4130424 () Bool)

(declare-fun e!4130422 () Bool)

(assert (=> b!6849427 (= e!4130424 e!4130422)))

(declare-fun b!6849428 () Bool)

(declare-fun c!1275091 () Bool)

(assert (=> b!6849428 (= c!1275091 ((_ is Union!16675) (regOne!33863 (regOne!33863 r!7292))))))

(assert (=> b!6849428 (= e!4130422 e!4130419)))

(declare-fun b!6849429 () Bool)

(assert (=> b!6849429 (= e!4130418 e!4130424)))

(declare-fun res!2795943 () Bool)

(assert (=> b!6849429 (= res!2795943 (not ((_ is EmptyLang!16675) (regOne!33863 (regOne!33863 r!7292)))))))

(assert (=> b!6849429 (=> (not res!2795943) (not e!4130424))))

(declare-fun b!6849430 () Bool)

(assert (=> b!6849430 (= e!4130419 e!4130423)))

(declare-fun res!2795942 () Bool)

(assert (=> b!6849430 (= res!2795942 (matchRSpec!3776 (regOne!33863 (regOne!33863 (regOne!33863 r!7292))) s!2326))))

(assert (=> b!6849430 (=> res!2795942 e!4130423)))

(declare-fun b!6849431 () Bool)

(assert (=> b!6849431 (= e!4130422 (= s!2326 (Cons!66202 (c!1274613 (regOne!33863 (regOne!33863 r!7292))) Nil!66202)))))

(assert (= (and d!2152999 c!1275090) b!6849425))

(assert (= (and d!2152999 (not c!1275090)) b!6849429))

(assert (= (and b!6849429 res!2795943) b!6849427))

(assert (= (and b!6849427 c!1275088) b!6849431))

(assert (= (and b!6849427 (not c!1275088)) b!6849428))

(assert (= (and b!6849428 c!1275091) b!6849430))

(assert (= (and b!6849428 (not c!1275091)) b!6849422))

(assert (= (and b!6849430 (not res!2795942)) b!6849426))

(assert (= (and b!6849422 c!1275089) b!6849423))

(assert (= (and b!6849422 (not c!1275089)) b!6849421))

(assert (= (and b!6849423 (not res!2795944)) b!6849424))

(assert (= (or b!6849424 b!6849421) bm!623850))

(assert (= (or b!6849425 b!6849423) bm!623851))

(declare-fun m!7588734 () Bool)

(assert (=> bm!623850 m!7588734))

(assert (=> bm!623851 m!7587310))

(declare-fun m!7588736 () Bool)

(assert (=> b!6849426 m!7588736))

(declare-fun m!7588738 () Bool)

(assert (=> b!6849430 m!7588738))

(assert (=> b!6848775 d!2152999))

(declare-fun d!2153011 () Bool)

(assert (=> d!2153011 (= (nullable!6638 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (nullableFct!2522 (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun bs!1830796 () Bool)

(assert (= bs!1830796 d!2153011))

(assert (=> bs!1830796 m!7587362))

(declare-fun m!7588740 () Bool)

(assert (=> bs!1830796 m!7588740))

(assert (=> b!6848526 d!2153011))

(declare-fun d!2153013 () Bool)

(assert (=> d!2153013 (= (isConcat!1529 lt!2456022) ((_ is Concat!25520) lt!2456022))))

(assert (=> b!6848479 d!2153013))

(declare-fun d!2153015 () Bool)

(assert (=> d!2153015 (= (nullable!6638 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))) (nullableFct!2522 (reg!17004 (ite c!1274726 (reg!17004 r!7292) (ite c!1274725 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))))

(declare-fun bs!1830798 () Bool)

(assert (= bs!1830798 d!2153015))

(declare-fun m!7588742 () Bool)

(assert (=> bs!1830798 m!7588742))

(assert (=> b!6848761 d!2153015))

(declare-fun bs!1830805 () Bool)

(declare-fun b!6849463 () Bool)

(assert (= bs!1830805 (and b!6849463 b!6849421)))

(declare-fun lambda!387295 () Int)

(assert (=> bs!1830805 (not (= lambda!387295 lambda!387292))))

(declare-fun bs!1830807 () Bool)

(assert (= bs!1830807 (and b!6849463 b!6848804)))

(assert (=> bs!1830807 (not (= lambda!387295 lambda!387277))))

(declare-fun bs!1830809 () Bool)

(assert (= bs!1830809 (and b!6849463 b!6849352)))

(assert (=> bs!1830809 (not (= lambda!387295 lambda!387288))))

(declare-fun bs!1830811 () Bool)

(assert (= bs!1830811 (and b!6849463 b!6848766)))

(assert (=> bs!1830811 (not (= lambda!387295 lambda!387274))))

(declare-fun bs!1830813 () Bool)

(assert (= bs!1830813 (and b!6849463 b!6848769)))

(assert (=> bs!1830813 (= (and (= (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))) (reg!17004 (regOne!33863 r!7292))) (= (regTwo!33863 (regTwo!33863 r!7292)) (regOne!33863 r!7292))) (= lambda!387295 lambda!387273))))

(declare-fun bs!1830814 () Bool)

(assert (= bs!1830814 (and b!6849463 b!6848807)))

(assert (=> bs!1830814 (= (and (= (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))) (reg!17004 (regTwo!33863 r!7292))) (= (regTwo!33863 (regTwo!33863 r!7292)) (regTwo!33863 r!7292))) (= lambda!387295 lambda!387276))))

(declare-fun bs!1830815 () Bool)

(assert (= bs!1830815 (and b!6849463 b!6849355)))

(assert (=> bs!1830815 (= (and (= (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))) (reg!17004 (regOne!33863 (regTwo!33863 r!7292)))) (= (regTwo!33863 (regTwo!33863 r!7292)) (regOne!33863 (regTwo!33863 r!7292)))) (= lambda!387295 lambda!387286))))

(declare-fun bs!1830816 () Bool)

(assert (= bs!1830816 (and b!6849463 b!6849424)))

(assert (=> bs!1830816 (= (and (= (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))) (reg!17004 (regOne!33863 (regOne!33863 r!7292)))) (= (regTwo!33863 (regTwo!33863 r!7292)) (regOne!33863 (regOne!33863 r!7292)))) (= lambda!387295 lambda!387291))))

(declare-fun bs!1830817 () Bool)

(assert (= bs!1830817 (and b!6849463 b!6847556)))

(assert (=> bs!1830817 (not (= lambda!387295 lambda!387200))))

(declare-fun bs!1830818 () Bool)

(assert (= bs!1830818 (and b!6849463 b!6847559)))

(assert (=> bs!1830818 (= (and (= (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))) (reg!17004 r!7292)) (= (regTwo!33863 (regTwo!33863 r!7292)) r!7292)) (= lambda!387295 lambda!387199))))

(assert (=> b!6849463 true))

(assert (=> b!6849463 true))

(declare-fun bs!1830823 () Bool)

(declare-fun b!6849460 () Bool)

(assert (= bs!1830823 (and b!6849460 b!6849421)))

(declare-fun lambda!387297 () Int)

(assert (=> bs!1830823 (= (and (= (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regOne!33862 (regOne!33863 (regOne!33863 r!7292)))) (= (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))))) (= lambda!387297 lambda!387292))))

(declare-fun bs!1830825 () Bool)

(assert (= bs!1830825 (and b!6849460 b!6848804)))

(assert (=> bs!1830825 (= (and (= (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regOne!33862 (regTwo!33863 r!7292))) (= (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regTwo!33862 (regTwo!33863 r!7292)))) (= lambda!387297 lambda!387277))))

(declare-fun bs!1830828 () Bool)

(assert (= bs!1830828 (and b!6849460 b!6849352)))

(assert (=> bs!1830828 (= (and (= (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regOne!33862 (regOne!33863 (regTwo!33863 r!7292)))) (= (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))))) (= lambda!387297 lambda!387288))))

(declare-fun bs!1830830 () Bool)

(assert (= bs!1830830 (and b!6849460 b!6848766)))

(assert (=> bs!1830830 (= (and (= (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regOne!33862 (regOne!33863 r!7292))) (= (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regTwo!33862 (regOne!33863 r!7292)))) (= lambda!387297 lambda!387274))))

(declare-fun bs!1830833 () Bool)

(assert (= bs!1830833 (and b!6849460 b!6848769)))

(assert (=> bs!1830833 (not (= lambda!387297 lambda!387273))))

(declare-fun bs!1830836 () Bool)

(assert (= bs!1830836 (and b!6849460 b!6848807)))

(assert (=> bs!1830836 (not (= lambda!387297 lambda!387276))))

(declare-fun bs!1830839 () Bool)

(assert (= bs!1830839 (and b!6849460 b!6849355)))

(assert (=> bs!1830839 (not (= lambda!387297 lambda!387286))))

(declare-fun bs!1830841 () Bool)

(assert (= bs!1830841 (and b!6849460 b!6847556)))

(assert (=> bs!1830841 (= (and (= (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regOne!33862 r!7292)) (= (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))) (regTwo!33862 r!7292))) (= lambda!387297 lambda!387200))))

(declare-fun bs!1830843 () Bool)

(assert (= bs!1830843 (and b!6849460 b!6847559)))

(assert (=> bs!1830843 (not (= lambda!387297 lambda!387199))))

(declare-fun bs!1830846 () Bool)

(assert (= bs!1830846 (and b!6849460 b!6849424)))

(assert (=> bs!1830846 (not (= lambda!387297 lambda!387291))))

(declare-fun bs!1830848 () Bool)

(assert (= bs!1830848 (and b!6849460 b!6849463)))

(assert (=> bs!1830848 (not (= lambda!387297 lambda!387295))))

(assert (=> b!6849460 true))

(assert (=> b!6849460 true))

(declare-fun e!4130446 () Bool)

(declare-fun call!623865 () Bool)

(assert (=> b!6849460 (= e!4130446 call!623865)))

(declare-fun b!6849461 () Bool)

(declare-fun e!4130444 () Bool)

(assert (=> b!6849461 (= e!4130444 e!4130446)))

(declare-fun c!1275103 () Bool)

(assert (=> b!6849461 (= c!1275103 ((_ is Star!16675) (regTwo!33863 (regTwo!33863 r!7292))))))

(declare-fun bm!623860 () Bool)

(assert (=> bm!623860 (= call!623865 (Exists!3737 (ite c!1275103 lambda!387295 lambda!387297)))))

(declare-fun b!6849462 () Bool)

(declare-fun res!2795955 () Bool)

(declare-fun e!4130445 () Bool)

(assert (=> b!6849462 (=> res!2795955 e!4130445)))

(declare-fun call!623866 () Bool)

(assert (=> b!6849462 (= res!2795955 call!623866)))

(assert (=> b!6849462 (= e!4130446 e!4130445)))

(declare-fun d!2153017 () Bool)

(declare-fun c!1275104 () Bool)

(assert (=> d!2153017 (= c!1275104 ((_ is EmptyExpr!16675) (regTwo!33863 (regTwo!33863 r!7292))))))

(declare-fun e!4130443 () Bool)

(assert (=> d!2153017 (= (matchRSpec!3776 (regTwo!33863 (regTwo!33863 r!7292)) s!2326) e!4130443)))

(declare-fun bm!623861 () Bool)

(assert (=> bm!623861 (= call!623866 (isEmpty!38573 s!2326))))

(assert (=> b!6849463 (= e!4130445 call!623865)))

(declare-fun b!6849464 () Bool)

(assert (=> b!6849464 (= e!4130443 call!623866)))

(declare-fun b!6849465 () Bool)

(declare-fun e!4130448 () Bool)

(assert (=> b!6849465 (= e!4130448 (matchRSpec!3776 (regTwo!33863 (regTwo!33863 (regTwo!33863 r!7292))) s!2326))))

(declare-fun b!6849466 () Bool)

(declare-fun c!1275102 () Bool)

(assert (=> b!6849466 (= c!1275102 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33863 r!7292))))))

(declare-fun e!4130449 () Bool)

(declare-fun e!4130447 () Bool)

(assert (=> b!6849466 (= e!4130449 e!4130447)))

(declare-fun b!6849467 () Bool)

(declare-fun c!1275105 () Bool)

(assert (=> b!6849467 (= c!1275105 ((_ is Union!16675) (regTwo!33863 (regTwo!33863 r!7292))))))

(assert (=> b!6849467 (= e!4130447 e!4130444)))

(declare-fun b!6849468 () Bool)

(assert (=> b!6849468 (= e!4130443 e!4130449)))

(declare-fun res!2795954 () Bool)

(assert (=> b!6849468 (= res!2795954 (not ((_ is EmptyLang!16675) (regTwo!33863 (regTwo!33863 r!7292)))))))

(assert (=> b!6849468 (=> (not res!2795954) (not e!4130449))))

(declare-fun b!6849469 () Bool)

(assert (=> b!6849469 (= e!4130444 e!4130448)))

(declare-fun res!2795953 () Bool)

(assert (=> b!6849469 (= res!2795953 (matchRSpec!3776 (regOne!33863 (regTwo!33863 (regTwo!33863 r!7292))) s!2326))))

(assert (=> b!6849469 (=> res!2795953 e!4130448)))

(declare-fun b!6849470 () Bool)

(assert (=> b!6849470 (= e!4130447 (= s!2326 (Cons!66202 (c!1274613 (regTwo!33863 (regTwo!33863 r!7292))) Nil!66202)))))

(assert (= (and d!2153017 c!1275104) b!6849464))

(assert (= (and d!2153017 (not c!1275104)) b!6849468))

(assert (= (and b!6849468 res!2795954) b!6849466))

(assert (= (and b!6849466 c!1275102) b!6849470))

(assert (= (and b!6849466 (not c!1275102)) b!6849467))

(assert (= (and b!6849467 c!1275105) b!6849469))

(assert (= (and b!6849467 (not c!1275105)) b!6849461))

(assert (= (and b!6849469 (not res!2795953)) b!6849465))

(assert (= (and b!6849461 c!1275103) b!6849462))

(assert (= (and b!6849461 (not c!1275103)) b!6849460))

(assert (= (and b!6849462 (not res!2795955)) b!6849463))

(assert (= (or b!6849463 b!6849460) bm!623860))

(assert (= (or b!6849464 b!6849462) bm!623861))

(declare-fun m!7588754 () Bool)

(assert (=> bm!623860 m!7588754))

(assert (=> bm!623861 m!7587310))

(declare-fun m!7588760 () Bool)

(assert (=> b!6849465 m!7588760))

(declare-fun m!7588764 () Bool)

(assert (=> b!6849469 m!7588764))

(assert (=> b!6848809 d!2153017))

(declare-fun bm!623871 () Bool)

(declare-fun call!623877 () Bool)

(declare-fun c!1275122 () Bool)

(assert (=> bm!623871 (= call!623877 (nullable!6638 (ite c!1275122 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun b!6849530 () Bool)

(declare-fun e!4130487 () Bool)

(declare-fun e!4130490 () Bool)

(assert (=> b!6849530 (= e!4130487 e!4130490)))

(declare-fun res!2795984 () Bool)

(assert (=> b!6849530 (=> res!2795984 e!4130490)))

(assert (=> b!6849530 (= res!2795984 ((_ is Star!16675) lt!2455885))))

(declare-fun b!6849531 () Bool)

(declare-fun e!4130485 () Bool)

(declare-fun e!4130488 () Bool)

(assert (=> b!6849531 (= e!4130485 e!4130488)))

(declare-fun res!2795983 () Bool)

(assert (=> b!6849531 (= res!2795983 call!623877)))

(assert (=> b!6849531 (=> res!2795983 e!4130488)))

(declare-fun b!6849532 () Bool)

(declare-fun e!4130492 () Bool)

(assert (=> b!6849532 (= e!4130485 e!4130492)))

(declare-fun res!2795982 () Bool)

(assert (=> b!6849532 (= res!2795982 call!623877)))

(assert (=> b!6849532 (=> (not res!2795982) (not e!4130492))))

(declare-fun b!6849533 () Bool)

(declare-fun e!4130491 () Bool)

(assert (=> b!6849533 (= e!4130491 e!4130487)))

(declare-fun res!2795980 () Bool)

(assert (=> b!6849533 (=> (not res!2795980) (not e!4130487))))

(assert (=> b!6849533 (= res!2795980 (and (not ((_ is EmptyLang!16675) lt!2455885)) (not ((_ is ElementMatch!16675) lt!2455885))))))

(declare-fun b!6849534 () Bool)

(declare-fun call!623876 () Bool)

(assert (=> b!6849534 (= e!4130492 call!623876)))

(declare-fun bm!623872 () Bool)

(assert (=> bm!623872 (= call!623876 (nullable!6638 (ite c!1275122 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))

(declare-fun b!6849535 () Bool)

(assert (=> b!6849535 (= e!4130488 call!623876)))

(declare-fun b!6849528 () Bool)

(assert (=> b!6849528 (= e!4130490 e!4130485)))

(assert (=> b!6849528 (= c!1275122 ((_ is Union!16675) lt!2455885))))

(declare-fun d!2153023 () Bool)

(declare-fun res!2795979 () Bool)

(assert (=> d!2153023 (=> res!2795979 e!4130491)))

(assert (=> d!2153023 (= res!2795979 ((_ is EmptyExpr!16675) lt!2455885))))

(assert (=> d!2153023 (= (nullableFct!2522 lt!2455885) e!4130491)))

(assert (= (and d!2153023 (not res!2795979)) b!6849533))

(assert (= (and b!6849533 res!2795980) b!6849530))

(assert (= (and b!6849530 (not res!2795984)) b!6849528))

(assert (= (and b!6849528 c!1275122) b!6849531))

(assert (= (and b!6849528 (not c!1275122)) b!6849532))

(assert (= (and b!6849531 (not res!2795983)) b!6849535))

(assert (= (and b!6849532 res!2795982) b!6849534))

(assert (= (or b!6849535 b!6849534) bm!623872))

(assert (= (or b!6849531 b!6849532) bm!623871))

(declare-fun m!7588806 () Bool)

(assert (=> bm!623871 m!7588806))

(declare-fun m!7588812 () Bool)

(assert (=> bm!623872 m!7588812))

(assert (=> d!2152637 d!2153023))

(assert (=> b!6848523 d!2152955))

(declare-fun d!2153037 () Bool)

(declare-fun c!1275124 () Bool)

(assert (=> d!2153037 (= c!1275124 ((_ is Nil!66201) res!2795634))))

(declare-fun e!4130493 () (InoxSet Context!12118))

(assert (=> d!2153037 (= (content!12981 res!2795634) e!4130493)))

(declare-fun b!6849536 () Bool)

(assert (=> b!6849536 (= e!4130493 ((as const (Array Context!12118 Bool)) false))))

(declare-fun b!6849537 () Bool)

(assert (=> b!6849537 (= e!4130493 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) (h!72649 res!2795634) true) (content!12981 (t!380068 res!2795634))))))

(assert (= (and d!2153037 c!1275124) b!6849536))

(assert (= (and d!2153037 (not c!1275124)) b!6849537))

(declare-fun m!7588818 () Bool)

(assert (=> b!6849537 m!7588818))

(declare-fun m!7588820 () Bool)

(assert (=> b!6849537 m!7588820))

(assert (=> b!6848650 d!2153037))

(assert (=> bm!623740 d!2152581))

(declare-fun b!6849547 () Bool)

(declare-fun e!4130503 () Int)

(declare-fun call!623881 () Int)

(assert (=> b!6849547 (= e!4130503 (+ 1 call!623881))))

(declare-fun d!2153041 () Bool)

(declare-fun lt!2456093 () Int)

(assert (=> d!2153041 (> lt!2456093 0)))

(declare-fun e!4130502 () Int)

(assert (=> d!2153041 (= lt!2456093 e!4130502)))

(declare-fun c!1275130 () Bool)

(assert (=> d!2153041 (= c!1275130 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 (h!72649 lt!2455887)))))))

(assert (=> d!2153041 (= (regexDepthTotal!249 (h!72648 (exprs!6559 (h!72649 lt!2455887)))) lt!2456093)))

(declare-fun b!6849548 () Bool)

(declare-fun e!4130501 () Int)

(declare-fun call!623883 () Int)

(declare-fun call!623882 () Int)

(assert (=> b!6849548 (= e!4130501 (+ 1 call!623883 call!623882))))

(declare-fun b!6849549 () Bool)

(declare-fun e!4130504 () Int)

(assert (=> b!6849549 (= e!4130501 e!4130504)))

(declare-fun c!1275128 () Bool)

(assert (=> b!6849549 (= c!1275128 ((_ is Concat!25520) (h!72648 (exprs!6559 (h!72649 lt!2455887)))))))

(declare-fun c!1275129 () Bool)

(declare-fun bm!623876 () Bool)

(declare-fun c!1275127 () Bool)

(assert (=> bm!623876 (= call!623881 (regexDepthTotal!249 (ite c!1275129 (reg!17004 (h!72648 (exprs!6559 (h!72649 lt!2455887)))) (ite c!1275127 (regTwo!33863 (h!72648 (exprs!6559 (h!72649 lt!2455887)))) (regTwo!33862 (h!72648 (exprs!6559 (h!72649 lt!2455887))))))))))

(declare-fun bm!623877 () Bool)

(assert (=> bm!623877 (= call!623883 (regexDepthTotal!249 (ite c!1275127 (regOne!33863 (h!72648 (exprs!6559 (h!72649 lt!2455887)))) (regOne!33862 (h!72648 (exprs!6559 (h!72649 lt!2455887)))))))))

(declare-fun b!6849550 () Bool)

(assert (=> b!6849550 (= e!4130502 1)))

(declare-fun bm!623878 () Bool)

(assert (=> bm!623878 (= call!623882 call!623881)))

(declare-fun b!6849551 () Bool)

(assert (=> b!6849551 (= e!4130502 e!4130503)))

(assert (=> b!6849551 (= c!1275129 ((_ is Star!16675) (h!72648 (exprs!6559 (h!72649 lt!2455887)))))))

(declare-fun b!6849552 () Bool)

(assert (=> b!6849552 (= e!4130504 1)))

(declare-fun b!6849553 () Bool)

(assert (=> b!6849553 (= e!4130504 (+ 1 call!623883 call!623882))))

(declare-fun b!6849554 () Bool)

(assert (=> b!6849554 (= c!1275127 ((_ is Union!16675) (h!72648 (exprs!6559 (h!72649 lt!2455887)))))))

(assert (=> b!6849554 (= e!4130503 e!4130501)))

(assert (= (and d!2153041 c!1275130) b!6849550))

(assert (= (and d!2153041 (not c!1275130)) b!6849551))

(assert (= (and b!6849551 c!1275129) b!6849547))

(assert (= (and b!6849551 (not c!1275129)) b!6849554))

(assert (= (and b!6849554 c!1275127) b!6849548))

(assert (= (and b!6849554 (not c!1275127)) b!6849549))

(assert (= (and b!6849549 c!1275128) b!6849553))

(assert (= (and b!6849549 (not c!1275128)) b!6849552))

(assert (= (or b!6849548 b!6849553) bm!623878))

(assert (= (or b!6849548 b!6849553) bm!623877))

(assert (= (or b!6849547 bm!623878) bm!623876))

(declare-fun m!7588828 () Bool)

(assert (=> bm!623876 m!7588828))

(declare-fun m!7588830 () Bool)

(assert (=> bm!623877 m!7588830))

(assert (=> b!6848744 d!2153041))

(declare-fun d!2153045 () Bool)

(declare-fun lt!2456095 () Int)

(assert (=> d!2153045 (>= lt!2456095 0)))

(declare-fun e!4130511 () Int)

(assert (=> d!2153045 (= lt!2456095 e!4130511)))

(declare-fun c!1275135 () Bool)

(assert (=> d!2153045 (= c!1275135 ((_ is Cons!66200) (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (h!72649 lt!2455887)))))))))

(assert (=> d!2153045 (= (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (h!72649 lt!2455887))))) lt!2456095)))

(declare-fun b!6849565 () Bool)

(assert (=> b!6849565 (= e!4130511 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (h!72649 lt!2455887))))))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (h!72649 lt!2455887))))))))))))

(declare-fun b!6849566 () Bool)

(assert (=> b!6849566 (= e!4130511 1)))

(assert (= (and d!2153045 c!1275135) b!6849565))

(assert (= (and d!2153045 (not c!1275135)) b!6849566))

(declare-fun m!7588832 () Bool)

(assert (=> b!6849565 m!7588832))

(declare-fun m!7588834 () Bool)

(assert (=> b!6849565 m!7588834))

(assert (=> b!6848744 d!2153045))

(assert (=> b!6848507 d!2152609))

(declare-fun d!2153047 () Bool)

(declare-fun res!2795992 () Bool)

(declare-fun e!4130512 () Bool)

(assert (=> d!2153047 (=> res!2795992 e!4130512)))

(assert (=> d!2153047 (= res!2795992 ((_ is Nil!66200) (t!380067 lt!2455979)))))

(assert (=> d!2153047 (= (forall!15853 (t!380067 lt!2455979) lambda!387226) e!4130512)))

(declare-fun b!6849567 () Bool)

(declare-fun e!4130513 () Bool)

(assert (=> b!6849567 (= e!4130512 e!4130513)))

(declare-fun res!2795993 () Bool)

(assert (=> b!6849567 (=> (not res!2795993) (not e!4130513))))

(assert (=> b!6849567 (= res!2795993 (dynLambda!26455 lambda!387226 (h!72648 (t!380067 lt!2455979))))))

(declare-fun b!6849568 () Bool)

(assert (=> b!6849568 (= e!4130513 (forall!15853 (t!380067 (t!380067 lt!2455979)) lambda!387226))))

(assert (= (and d!2153047 (not res!2795992)) b!6849567))

(assert (= (and b!6849567 res!2795993) b!6849568))

(declare-fun b_lambda!258533 () Bool)

(assert (=> (not b_lambda!258533) (not b!6849567)))

(declare-fun m!7588836 () Bool)

(assert (=> b!6849567 m!7588836))

(declare-fun m!7588838 () Bool)

(assert (=> b!6849568 m!7588838))

(assert (=> b!6848689 d!2153047))

(declare-fun b!6849569 () Bool)

(declare-fun e!4130515 () Bool)

(declare-fun call!623884 () Bool)

(assert (=> b!6849569 (= e!4130515 call!623884)))

(declare-fun b!6849570 () Bool)

(declare-fun e!4130519 () Bool)

(declare-fun e!4130517 () Bool)

(assert (=> b!6849570 (= e!4130519 e!4130517)))

(declare-fun c!1275137 () Bool)

(assert (=> b!6849570 (= c!1275137 ((_ is Star!16675) (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))

(declare-fun b!6849571 () Bool)

(declare-fun e!4130516 () Bool)

(declare-fun call!623885 () Bool)

(assert (=> b!6849571 (= e!4130516 call!623885)))

(declare-fun b!6849572 () Bool)

(declare-fun e!4130518 () Bool)

(assert (=> b!6849572 (= e!4130518 e!4130516)))

(declare-fun res!2795994 () Bool)

(assert (=> b!6849572 (=> (not res!2795994) (not e!4130516))))

(declare-fun call!623886 () Bool)

(assert (=> b!6849572 (= res!2795994 call!623886)))

(declare-fun c!1275136 () Bool)

(declare-fun bm!623879 () Bool)

(assert (=> bm!623879 (= call!623886 (validRegex!8411 (ite c!1275136 (regOne!33863 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))) (regOne!33862 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))))

(declare-fun b!6849573 () Bool)

(assert (=> b!6849573 (= e!4130517 e!4130515)))

(declare-fun res!2795997 () Bool)

(assert (=> b!6849573 (= res!2795997 (not (nullable!6638 (reg!17004 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))))

(assert (=> b!6849573 (=> (not res!2795997) (not e!4130515))))

(declare-fun bm!623880 () Bool)

(assert (=> bm!623880 (= call!623885 call!623884)))

(declare-fun b!6849574 () Bool)

(declare-fun e!4130514 () Bool)

(assert (=> b!6849574 (= e!4130517 e!4130514)))

(assert (=> b!6849574 (= c!1275136 ((_ is Union!16675) (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))

(declare-fun b!6849575 () Bool)

(declare-fun e!4130520 () Bool)

(assert (=> b!6849575 (= e!4130520 call!623885)))

(declare-fun bm!623881 () Bool)

(assert (=> bm!623881 (= call!623884 (validRegex!8411 (ite c!1275137 (reg!17004 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))) (ite c!1275136 (regTwo!33863 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))) (regTwo!33862 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))))

(declare-fun b!6849576 () Bool)

(declare-fun res!2795996 () Bool)

(assert (=> b!6849576 (=> (not res!2795996) (not e!4130520))))

(assert (=> b!6849576 (= res!2795996 call!623886)))

(assert (=> b!6849576 (= e!4130514 e!4130520)))

(declare-fun d!2153049 () Bool)

(declare-fun res!2795998 () Bool)

(assert (=> d!2153049 (=> res!2795998 e!4130519)))

(assert (=> d!2153049 (= res!2795998 ((_ is ElementMatch!16675) (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))

(assert (=> d!2153049 (= (validRegex!8411 (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))) e!4130519)))

(declare-fun b!6849577 () Bool)

(declare-fun res!2795995 () Bool)

(assert (=> b!6849577 (=> res!2795995 e!4130518)))

(assert (=> b!6849577 (= res!2795995 (not ((_ is Concat!25520) (ite c!1274949 (regOne!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regOne!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))

(assert (=> b!6849577 (= e!4130514 e!4130518)))

(assert (= (and d!2153049 (not res!2795998)) b!6849570))

(assert (= (and b!6849570 c!1275137) b!6849573))

(assert (= (and b!6849570 (not c!1275137)) b!6849574))

(assert (= (and b!6849573 res!2795997) b!6849569))

(assert (= (and b!6849574 c!1275136) b!6849576))

(assert (= (and b!6849574 (not c!1275136)) b!6849577))

(assert (= (and b!6849576 res!2795996) b!6849575))

(assert (= (and b!6849577 (not res!2795995)) b!6849572))

(assert (= (and b!6849572 res!2795994) b!6849571))

(assert (= (or b!6849575 b!6849571) bm!623880))

(assert (= (or b!6849576 b!6849572) bm!623879))

(assert (= (or b!6849569 bm!623880) bm!623881))

(declare-fun m!7588840 () Bool)

(assert (=> bm!623879 m!7588840))

(declare-fun m!7588842 () Bool)

(assert (=> b!6849573 m!7588842))

(declare-fun m!7588844 () Bool)

(assert (=> bm!623881 m!7588844))

(assert (=> bm!623737 d!2153049))

(declare-fun b!6849578 () Bool)

(declare-fun e!4130522 () Bool)

(declare-fun call!623887 () Bool)

(assert (=> b!6849578 (= e!4130522 call!623887)))

(declare-fun b!6849579 () Bool)

(declare-fun e!4130526 () Bool)

(declare-fun e!4130524 () Bool)

(assert (=> b!6849579 (= e!4130526 e!4130524)))

(declare-fun c!1275139 () Bool)

(assert (=> b!6849579 (= c!1275139 ((_ is Star!16675) (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))

(declare-fun b!6849580 () Bool)

(declare-fun e!4130523 () Bool)

(declare-fun call!623888 () Bool)

(assert (=> b!6849580 (= e!4130523 call!623888)))

(declare-fun b!6849581 () Bool)

(declare-fun e!4130525 () Bool)

(assert (=> b!6849581 (= e!4130525 e!4130523)))

(declare-fun res!2795999 () Bool)

(assert (=> b!6849581 (=> (not res!2795999) (not e!4130523))))

(declare-fun call!623889 () Bool)

(assert (=> b!6849581 (= res!2795999 call!623889)))

(declare-fun bm!623882 () Bool)

(declare-fun c!1275138 () Bool)

(assert (=> bm!623882 (= call!623889 (validRegex!8411 (ite c!1275138 (regOne!33863 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))) (regOne!33862 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))))

(declare-fun b!6849582 () Bool)

(assert (=> b!6849582 (= e!4130524 e!4130522)))

(declare-fun res!2796002 () Bool)

(assert (=> b!6849582 (= res!2796002 (not (nullable!6638 (reg!17004 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))))

(assert (=> b!6849582 (=> (not res!2796002) (not e!4130522))))

(declare-fun bm!623883 () Bool)

(assert (=> bm!623883 (= call!623888 call!623887)))

(declare-fun b!6849583 () Bool)

(declare-fun e!4130521 () Bool)

(assert (=> b!6849583 (= e!4130524 e!4130521)))

(assert (=> b!6849583 (= c!1275138 ((_ is Union!16675) (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))

(declare-fun b!6849584 () Bool)

(declare-fun e!4130527 () Bool)

(assert (=> b!6849584 (= e!4130527 call!623888)))

(declare-fun bm!623884 () Bool)

(assert (=> bm!623884 (= call!623887 (validRegex!8411 (ite c!1275139 (reg!17004 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))) (ite c!1275138 (regTwo!33863 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))) (regTwo!33862 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))))

(declare-fun b!6849585 () Bool)

(declare-fun res!2796001 () Bool)

(assert (=> b!6849585 (=> (not res!2796001) (not e!4130527))))

(assert (=> b!6849585 (= res!2796001 call!623889)))

(assert (=> b!6849585 (= e!4130521 e!4130527)))

(declare-fun d!2153051 () Bool)

(declare-fun res!2796003 () Bool)

(assert (=> d!2153051 (=> res!2796003 e!4130526)))

(assert (=> d!2153051 (= res!2796003 ((_ is ElementMatch!16675) (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))

(assert (=> d!2153051 (= (validRegex!8411 (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))) e!4130526)))

(declare-fun b!6849586 () Bool)

(declare-fun res!2796000 () Bool)

(assert (=> b!6849586 (=> res!2796000 e!4130525)))

(assert (=> b!6849586 (= res!2796000 (not ((_ is Concat!25520) (ite c!1274918 (regOne!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))

(assert (=> b!6849586 (= e!4130521 e!4130525)))

(assert (= (and d!2153051 (not res!2796003)) b!6849579))

(assert (= (and b!6849579 c!1275139) b!6849582))

(assert (= (and b!6849579 (not c!1275139)) b!6849583))

(assert (= (and b!6849582 res!2796002) b!6849578))

(assert (= (and b!6849583 c!1275138) b!6849585))

(assert (= (and b!6849583 (not c!1275138)) b!6849586))

(assert (= (and b!6849585 res!2796001) b!6849584))

(assert (= (and b!6849586 (not res!2796000)) b!6849581))

(assert (= (and b!6849581 res!2795999) b!6849580))

(assert (= (or b!6849584 b!6849580) bm!623883))

(assert (= (or b!6849585 b!6849581) bm!623882))

(assert (= (or b!6849578 bm!623883) bm!623884))

(declare-fun m!7588864 () Bool)

(assert (=> bm!623882 m!7588864))

(declare-fun m!7588866 () Bool)

(assert (=> b!6849582 m!7588866))

(declare-fun m!7588868 () Bool)

(assert (=> bm!623884 m!7588868))

(assert (=> bm!623717 d!2153051))

(declare-fun b!6849596 () Bool)

(declare-fun e!4130536 () Bool)

(declare-fun call!623893 () Bool)

(assert (=> b!6849596 (= e!4130536 call!623893)))

(declare-fun b!6849597 () Bool)

(declare-fun e!4130540 () Bool)

(declare-fun e!4130538 () Bool)

(assert (=> b!6849597 (= e!4130540 e!4130538)))

(declare-fun c!1275143 () Bool)

(assert (=> b!6849597 (= c!1275143 ((_ is Star!16675) (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6849598 () Bool)

(declare-fun e!4130537 () Bool)

(declare-fun call!623894 () Bool)

(assert (=> b!6849598 (= e!4130537 call!623894)))

(declare-fun b!6849599 () Bool)

(declare-fun e!4130539 () Bool)

(assert (=> b!6849599 (= e!4130539 e!4130537)))

(declare-fun res!2796009 () Bool)

(assert (=> b!6849599 (=> (not res!2796009) (not e!4130537))))

(declare-fun call!623895 () Bool)

(assert (=> b!6849599 (= res!2796009 call!623895)))

(declare-fun bm!623888 () Bool)

(declare-fun c!1275142 () Bool)

(assert (=> bm!623888 (= call!623895 (validRegex!8411 (ite c!1275142 (regOne!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))) (regOne!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))))))

(declare-fun b!6849600 () Bool)

(assert (=> b!6849600 (= e!4130538 e!4130536)))

(declare-fun res!2796012 () Bool)

(assert (=> b!6849600 (= res!2796012 (not (nullable!6638 (reg!17004 (h!72648 (exprs!6559 (h!72649 zl!343)))))))))

(assert (=> b!6849600 (=> (not res!2796012) (not e!4130536))))

(declare-fun bm!623889 () Bool)

(assert (=> bm!623889 (= call!623894 call!623893)))

(declare-fun b!6849601 () Bool)

(declare-fun e!4130535 () Bool)

(assert (=> b!6849601 (= e!4130538 e!4130535)))

(assert (=> b!6849601 (= c!1275142 ((_ is Union!16675) (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6849602 () Bool)

(declare-fun e!4130541 () Bool)

(assert (=> b!6849602 (= e!4130541 call!623894)))

(declare-fun bm!623890 () Bool)

(assert (=> bm!623890 (= call!623893 (validRegex!8411 (ite c!1275143 (reg!17004 (h!72648 (exprs!6559 (h!72649 zl!343)))) (ite c!1275142 (regTwo!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))) (regTwo!33862 (h!72648 (exprs!6559 (h!72649 zl!343))))))))))

(declare-fun b!6849603 () Bool)

(declare-fun res!2796011 () Bool)

(assert (=> b!6849603 (=> (not res!2796011) (not e!4130541))))

(assert (=> b!6849603 (= res!2796011 call!623895)))

(assert (=> b!6849603 (= e!4130535 e!4130541)))

(declare-fun d!2153055 () Bool)

(declare-fun res!2796013 () Bool)

(assert (=> d!2153055 (=> res!2796013 e!4130540)))

(assert (=> d!2153055 (= res!2796013 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> d!2153055 (= (validRegex!8411 (h!72648 (exprs!6559 (h!72649 zl!343)))) e!4130540)))

(declare-fun b!6849604 () Bool)

(declare-fun res!2796010 () Bool)

(assert (=> b!6849604 (=> res!2796010 e!4130539)))

(assert (=> b!6849604 (= res!2796010 (not ((_ is Concat!25520) (h!72648 (exprs!6559 (h!72649 zl!343))))))))

(assert (=> b!6849604 (= e!4130535 e!4130539)))

(assert (= (and d!2153055 (not res!2796013)) b!6849597))

(assert (= (and b!6849597 c!1275143) b!6849600))

(assert (= (and b!6849597 (not c!1275143)) b!6849601))

(assert (= (and b!6849600 res!2796012) b!6849596))

(assert (= (and b!6849601 c!1275142) b!6849603))

(assert (= (and b!6849601 (not c!1275142)) b!6849604))

(assert (= (and b!6849603 res!2796011) b!6849602))

(assert (= (and b!6849604 (not res!2796010)) b!6849599))

(assert (= (and b!6849599 res!2796009) b!6849598))

(assert (= (or b!6849602 b!6849598) bm!623889))

(assert (= (or b!6849603 b!6849599) bm!623888))

(assert (= (or b!6849596 bm!623889) bm!623890))

(declare-fun m!7588876 () Bool)

(assert (=> bm!623888 m!7588876))

(declare-fun m!7588878 () Bool)

(assert (=> b!6849600 m!7588878))

(declare-fun m!7588880 () Bool)

(assert (=> bm!623890 m!7588880))

(assert (=> bs!1830604 d!2153055))

(declare-fun d!2153059 () Bool)

(assert (=> d!2153059 (= (head!13728 (t!380067 lt!2455888)) (h!72648 (t!380067 lt!2455888)))))

(assert (=> b!6848606 d!2153059))

(declare-fun bs!1830901 () Bool)

(declare-fun b!6849608 () Bool)

(assert (= bs!1830901 (and b!6849608 b!6849421)))

(declare-fun lambda!387301 () Int)

(assert (=> bs!1830901 (not (= lambda!387301 lambda!387292))))

(declare-fun bs!1830904 () Bool)

(assert (= bs!1830904 (and b!6849608 b!6848804)))

(assert (=> bs!1830904 (not (= lambda!387301 lambda!387277))))

(declare-fun bs!1830907 () Bool)

(assert (= bs!1830907 (and b!6849608 b!6849460)))

(assert (=> bs!1830907 (not (= lambda!387301 lambda!387297))))

(declare-fun bs!1830909 () Bool)

(assert (= bs!1830909 (and b!6849608 b!6849352)))

(assert (=> bs!1830909 (not (= lambda!387301 lambda!387288))))

(declare-fun bs!1830912 () Bool)

(assert (= bs!1830912 (and b!6849608 b!6848766)))

(assert (=> bs!1830912 (not (= lambda!387301 lambda!387274))))

(declare-fun bs!1830914 () Bool)

(assert (= bs!1830914 (and b!6849608 b!6848769)))

(assert (=> bs!1830914 (= (and (= (reg!17004 (regTwo!33863 (regOne!33863 r!7292))) (reg!17004 (regOne!33863 r!7292))) (= (regTwo!33863 (regOne!33863 r!7292)) (regOne!33863 r!7292))) (= lambda!387301 lambda!387273))))

(declare-fun bs!1830915 () Bool)

(assert (= bs!1830915 (and b!6849608 b!6848807)))

(assert (=> bs!1830915 (= (and (= (reg!17004 (regTwo!33863 (regOne!33863 r!7292))) (reg!17004 (regTwo!33863 r!7292))) (= (regTwo!33863 (regOne!33863 r!7292)) (regTwo!33863 r!7292))) (= lambda!387301 lambda!387276))))

(declare-fun bs!1830917 () Bool)

(assert (= bs!1830917 (and b!6849608 b!6849355)))

(assert (=> bs!1830917 (= (and (= (reg!17004 (regTwo!33863 (regOne!33863 r!7292))) (reg!17004 (regOne!33863 (regTwo!33863 r!7292)))) (= (regTwo!33863 (regOne!33863 r!7292)) (regOne!33863 (regTwo!33863 r!7292)))) (= lambda!387301 lambda!387286))))

(declare-fun bs!1830920 () Bool)

(assert (= bs!1830920 (and b!6849608 b!6847556)))

(assert (=> bs!1830920 (not (= lambda!387301 lambda!387200))))

(declare-fun bs!1830921 () Bool)

(assert (= bs!1830921 (and b!6849608 b!6847559)))

(assert (=> bs!1830921 (= (and (= (reg!17004 (regTwo!33863 (regOne!33863 r!7292))) (reg!17004 r!7292)) (= (regTwo!33863 (regOne!33863 r!7292)) r!7292)) (= lambda!387301 lambda!387199))))

(declare-fun bs!1830923 () Bool)

(assert (= bs!1830923 (and b!6849608 b!6849424)))

(assert (=> bs!1830923 (= (and (= (reg!17004 (regTwo!33863 (regOne!33863 r!7292))) (reg!17004 (regOne!33863 (regOne!33863 r!7292)))) (= (regTwo!33863 (regOne!33863 r!7292)) (regOne!33863 (regOne!33863 r!7292)))) (= lambda!387301 lambda!387291))))

(declare-fun bs!1830924 () Bool)

(assert (= bs!1830924 (and b!6849608 b!6849463)))

(assert (=> bs!1830924 (= (and (= (reg!17004 (regTwo!33863 (regOne!33863 r!7292))) (reg!17004 (regTwo!33863 (regTwo!33863 r!7292)))) (= (regTwo!33863 (regOne!33863 r!7292)) (regTwo!33863 (regTwo!33863 r!7292)))) (= lambda!387301 lambda!387295))))

(assert (=> b!6849608 true))

(assert (=> b!6849608 true))

(declare-fun bs!1830929 () Bool)

(declare-fun b!6849605 () Bool)

(assert (= bs!1830929 (and b!6849605 b!6849421)))

(declare-fun lambda!387303 () Int)

(assert (=> bs!1830929 (= (and (= (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))) (regOne!33862 (regOne!33863 (regOne!33863 r!7292)))) (= (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))) (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))))) (= lambda!387303 lambda!387292))))

(declare-fun bs!1830932 () Bool)

(assert (= bs!1830932 (and b!6849605 b!6848804)))

(assert (=> bs!1830932 (= (and (= (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))) (regOne!33862 (regTwo!33863 r!7292))) (= (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))) (regTwo!33862 (regTwo!33863 r!7292)))) (= lambda!387303 lambda!387277))))

(declare-fun bs!1830935 () Bool)

(assert (= bs!1830935 (and b!6849605 b!6849460)))

(assert (=> bs!1830935 (= (and (= (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))) (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292)))) (= (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))) (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))))) (= lambda!387303 lambda!387297))))

(declare-fun bs!1830938 () Bool)

(assert (= bs!1830938 (and b!6849605 b!6849352)))

(assert (=> bs!1830938 (= (and (= (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))) (regOne!33862 (regOne!33863 (regTwo!33863 r!7292)))) (= (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))) (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))))) (= lambda!387303 lambda!387288))))

(declare-fun bs!1830941 () Bool)

(assert (= bs!1830941 (and b!6849605 b!6849608)))

(assert (=> bs!1830941 (not (= lambda!387303 lambda!387301))))

(declare-fun bs!1830943 () Bool)

(assert (= bs!1830943 (and b!6849605 b!6848766)))

(assert (=> bs!1830943 (= (and (= (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))) (regOne!33862 (regOne!33863 r!7292))) (= (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))) (regTwo!33862 (regOne!33863 r!7292)))) (= lambda!387303 lambda!387274))))

(declare-fun bs!1830946 () Bool)

(assert (= bs!1830946 (and b!6849605 b!6848769)))

(assert (=> bs!1830946 (not (= lambda!387303 lambda!387273))))

(declare-fun bs!1830949 () Bool)

(assert (= bs!1830949 (and b!6849605 b!6848807)))

(assert (=> bs!1830949 (not (= lambda!387303 lambda!387276))))

(declare-fun bs!1830952 () Bool)

(assert (= bs!1830952 (and b!6849605 b!6849355)))

(assert (=> bs!1830952 (not (= lambda!387303 lambda!387286))))

(declare-fun bs!1830955 () Bool)

(assert (= bs!1830955 (and b!6849605 b!6847556)))

(assert (=> bs!1830955 (= (and (= (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))) (regOne!33862 r!7292)) (= (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))) (regTwo!33862 r!7292))) (= lambda!387303 lambda!387200))))

(declare-fun bs!1830957 () Bool)

(assert (= bs!1830957 (and b!6849605 b!6847559)))

(assert (=> bs!1830957 (not (= lambda!387303 lambda!387199))))

(declare-fun bs!1830959 () Bool)

(assert (= bs!1830959 (and b!6849605 b!6849424)))

(assert (=> bs!1830959 (not (= lambda!387303 lambda!387291))))

(declare-fun bs!1830960 () Bool)

(assert (= bs!1830960 (and b!6849605 b!6849463)))

(assert (=> bs!1830960 (not (= lambda!387303 lambda!387295))))

(assert (=> b!6849605 true))

(assert (=> b!6849605 true))

(declare-fun e!4130545 () Bool)

(declare-fun call!623896 () Bool)

(assert (=> b!6849605 (= e!4130545 call!623896)))

(declare-fun b!6849606 () Bool)

(declare-fun e!4130543 () Bool)

(assert (=> b!6849606 (= e!4130543 e!4130545)))

(declare-fun c!1275145 () Bool)

(assert (=> b!6849606 (= c!1275145 ((_ is Star!16675) (regTwo!33863 (regOne!33863 r!7292))))))

(declare-fun bm!623891 () Bool)

(assert (=> bm!623891 (= call!623896 (Exists!3737 (ite c!1275145 lambda!387301 lambda!387303)))))

(declare-fun b!6849607 () Bool)

(declare-fun res!2796016 () Bool)

(declare-fun e!4130544 () Bool)

(assert (=> b!6849607 (=> res!2796016 e!4130544)))

(declare-fun call!623897 () Bool)

(assert (=> b!6849607 (= res!2796016 call!623897)))

(assert (=> b!6849607 (= e!4130545 e!4130544)))

(declare-fun d!2153061 () Bool)

(declare-fun c!1275146 () Bool)

(assert (=> d!2153061 (= c!1275146 ((_ is EmptyExpr!16675) (regTwo!33863 (regOne!33863 r!7292))))))

(declare-fun e!4130542 () Bool)

(assert (=> d!2153061 (= (matchRSpec!3776 (regTwo!33863 (regOne!33863 r!7292)) s!2326) e!4130542)))

(declare-fun bm!623892 () Bool)

(assert (=> bm!623892 (= call!623897 (isEmpty!38573 s!2326))))

(assert (=> b!6849608 (= e!4130544 call!623896)))

(declare-fun b!6849609 () Bool)

(assert (=> b!6849609 (= e!4130542 call!623897)))

(declare-fun b!6849610 () Bool)

(declare-fun e!4130547 () Bool)

(assert (=> b!6849610 (= e!4130547 (matchRSpec!3776 (regTwo!33863 (regTwo!33863 (regOne!33863 r!7292))) s!2326))))

(declare-fun b!6849611 () Bool)

(declare-fun c!1275144 () Bool)

(assert (=> b!6849611 (= c!1275144 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33863 r!7292))))))

(declare-fun e!4130548 () Bool)

(declare-fun e!4130546 () Bool)

(assert (=> b!6849611 (= e!4130548 e!4130546)))

(declare-fun b!6849612 () Bool)

(declare-fun c!1275147 () Bool)

(assert (=> b!6849612 (= c!1275147 ((_ is Union!16675) (regTwo!33863 (regOne!33863 r!7292))))))

(assert (=> b!6849612 (= e!4130546 e!4130543)))

(declare-fun b!6849613 () Bool)

(assert (=> b!6849613 (= e!4130542 e!4130548)))

(declare-fun res!2796015 () Bool)

(assert (=> b!6849613 (= res!2796015 (not ((_ is EmptyLang!16675) (regTwo!33863 (regOne!33863 r!7292)))))))

(assert (=> b!6849613 (=> (not res!2796015) (not e!4130548))))

(declare-fun b!6849614 () Bool)

(assert (=> b!6849614 (= e!4130543 e!4130547)))

(declare-fun res!2796014 () Bool)

(assert (=> b!6849614 (= res!2796014 (matchRSpec!3776 (regOne!33863 (regTwo!33863 (regOne!33863 r!7292))) s!2326))))

(assert (=> b!6849614 (=> res!2796014 e!4130547)))

(declare-fun b!6849615 () Bool)

(assert (=> b!6849615 (= e!4130546 (= s!2326 (Cons!66202 (c!1274613 (regTwo!33863 (regOne!33863 r!7292))) Nil!66202)))))

(assert (= (and d!2153061 c!1275146) b!6849609))

(assert (= (and d!2153061 (not c!1275146)) b!6849613))

(assert (= (and b!6849613 res!2796015) b!6849611))

(assert (= (and b!6849611 c!1275144) b!6849615))

(assert (= (and b!6849611 (not c!1275144)) b!6849612))

(assert (= (and b!6849612 c!1275147) b!6849614))

(assert (= (and b!6849612 (not c!1275147)) b!6849606))

(assert (= (and b!6849614 (not res!2796014)) b!6849610))

(assert (= (and b!6849606 c!1275145) b!6849607))

(assert (= (and b!6849606 (not c!1275145)) b!6849605))

(assert (= (and b!6849607 (not res!2796016)) b!6849608))

(assert (= (or b!6849608 b!6849605) bm!623891))

(assert (= (or b!6849609 b!6849607) bm!623892))

(declare-fun m!7588908 () Bool)

(assert (=> bm!623891 m!7588908))

(assert (=> bm!623892 m!7587310))

(declare-fun m!7588910 () Bool)

(assert (=> b!6849610 m!7588910))

(declare-fun m!7588912 () Bool)

(assert (=> b!6849614 m!7588912))

(assert (=> b!6848771 d!2153061))

(assert (=> d!2152605 d!2152617))

(declare-fun b!6849628 () Bool)

(declare-fun e!4130558 () Bool)

(declare-fun call!623898 () Bool)

(assert (=> b!6849628 (= e!4130558 call!623898)))

(declare-fun b!6849629 () Bool)

(declare-fun e!4130562 () Bool)

(declare-fun e!4130560 () Bool)

(assert (=> b!6849629 (= e!4130562 e!4130560)))

(declare-fun c!1275153 () Bool)

(assert (=> b!6849629 (= c!1275153 ((_ is Star!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun b!6849630 () Bool)

(declare-fun e!4130559 () Bool)

(declare-fun call!623899 () Bool)

(assert (=> b!6849630 (= e!4130559 call!623899)))

(declare-fun b!6849631 () Bool)

(declare-fun e!4130561 () Bool)

(assert (=> b!6849631 (= e!4130561 e!4130559)))

(declare-fun res!2796021 () Bool)

(assert (=> b!6849631 (=> (not res!2796021) (not e!4130559))))

(declare-fun call!623900 () Bool)

(assert (=> b!6849631 (= res!2796021 call!623900)))

(declare-fun c!1275152 () Bool)

(declare-fun bm!623893 () Bool)

(assert (=> bm!623893 (= call!623900 (validRegex!8411 (ite c!1275152 (regOne!33863 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (regOne!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326))))))))

(declare-fun b!6849632 () Bool)

(assert (=> b!6849632 (= e!4130560 e!4130558)))

(declare-fun res!2796024 () Bool)

(assert (=> b!6849632 (= res!2796024 (not (nullable!6638 (reg!17004 (derivativeStep!5321 r!7292 (head!13727 s!2326))))))))

(assert (=> b!6849632 (=> (not res!2796024) (not e!4130558))))

(declare-fun bm!623894 () Bool)

(assert (=> bm!623894 (= call!623899 call!623898)))

(declare-fun b!6849633 () Bool)

(declare-fun e!4130557 () Bool)

(assert (=> b!6849633 (= e!4130560 e!4130557)))

(assert (=> b!6849633 (= c!1275152 ((_ is Union!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(declare-fun b!6849634 () Bool)

(declare-fun e!4130563 () Bool)

(assert (=> b!6849634 (= e!4130563 call!623899)))

(declare-fun bm!623895 () Bool)

(assert (=> bm!623895 (= call!623898 (validRegex!8411 (ite c!1275153 (reg!17004 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (ite c!1275152 (regTwo!33863 (derivativeStep!5321 r!7292 (head!13727 s!2326))) (regTwo!33862 (derivativeStep!5321 r!7292 (head!13727 s!2326)))))))))

(declare-fun b!6849635 () Bool)

(declare-fun res!2796023 () Bool)

(assert (=> b!6849635 (=> (not res!2796023) (not e!4130563))))

(assert (=> b!6849635 (= res!2796023 call!623900)))

(assert (=> b!6849635 (= e!4130557 e!4130563)))

(declare-fun d!2153071 () Bool)

(declare-fun res!2796025 () Bool)

(assert (=> d!2153071 (=> res!2796025 e!4130562)))

(assert (=> d!2153071 (= res!2796025 ((_ is ElementMatch!16675) (derivativeStep!5321 r!7292 (head!13727 s!2326))))))

(assert (=> d!2153071 (= (validRegex!8411 (derivativeStep!5321 r!7292 (head!13727 s!2326))) e!4130562)))

(declare-fun b!6849636 () Bool)

(declare-fun res!2796022 () Bool)

(assert (=> b!6849636 (=> res!2796022 e!4130561)))

(assert (=> b!6849636 (= res!2796022 (not ((_ is Concat!25520) (derivativeStep!5321 r!7292 (head!13727 s!2326)))))))

(assert (=> b!6849636 (= e!4130557 e!4130561)))

(assert (= (and d!2153071 (not res!2796025)) b!6849629))

(assert (= (and b!6849629 c!1275153) b!6849632))

(assert (= (and b!6849629 (not c!1275153)) b!6849633))

(assert (= (and b!6849632 res!2796024) b!6849628))

(assert (= (and b!6849633 c!1275152) b!6849635))

(assert (= (and b!6849633 (not c!1275152)) b!6849636))

(assert (= (and b!6849635 res!2796023) b!6849634))

(assert (= (and b!6849636 (not res!2796022)) b!6849631))

(assert (= (and b!6849631 res!2796021) b!6849630))

(assert (= (or b!6849634 b!6849630) bm!623894))

(assert (= (or b!6849635 b!6849631) bm!623893))

(assert (= (or b!6849628 bm!623894) bm!623895))

(declare-fun m!7588914 () Bool)

(assert (=> bm!623893 m!7588914))

(declare-fun m!7588916 () Bool)

(assert (=> b!6849632 m!7588916))

(declare-fun m!7588918 () Bool)

(assert (=> bm!623895 m!7588918))

(assert (=> d!2152605 d!2153071))

(assert (=> d!2152661 d!2152397))

(assert (=> d!2152661 d!2152391))

(declare-fun d!2153075 () Bool)

(assert (=> d!2153075 (= (isEmpty!38575 (tail!12805 (unfocusZipperList!2092 zl!343))) ((_ is Nil!66200) (tail!12805 (unfocusZipperList!2092 zl!343))))))

(assert (=> b!6848604 d!2153075))

(declare-fun d!2153077 () Bool)

(assert (=> d!2153077 (= (tail!12805 (unfocusZipperList!2092 zl!343)) (t!380067 (unfocusZipperList!2092 zl!343)))))

(assert (=> b!6848604 d!2153077))

(declare-fun b!6849651 () Bool)

(declare-fun e!4130572 () Bool)

(declare-fun call!623902 () Bool)

(assert (=> b!6849651 (= e!4130572 call!623902)))

(declare-fun b!6849652 () Bool)

(declare-fun e!4130576 () Bool)

(declare-fun e!4130574 () Bool)

(assert (=> b!6849652 (= e!4130576 e!4130574)))

(declare-fun c!1275158 () Bool)

(assert (=> b!6849652 (= c!1275158 ((_ is Star!16675) (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))))))

(declare-fun b!6849653 () Bool)

(declare-fun e!4130573 () Bool)

(declare-fun call!623903 () Bool)

(assert (=> b!6849653 (= e!4130573 call!623903)))

(declare-fun b!6849654 () Bool)

(declare-fun e!4130575 () Bool)

(assert (=> b!6849654 (= e!4130575 e!4130573)))

(declare-fun res!2796034 () Bool)

(assert (=> b!6849654 (=> (not res!2796034) (not e!4130573))))

(declare-fun call!623904 () Bool)

(assert (=> b!6849654 (= res!2796034 call!623904)))

(declare-fun bm!623897 () Bool)

(declare-fun c!1275157 () Bool)

(assert (=> bm!623897 (= call!623904 (validRegex!8411 (ite c!1275157 (regOne!33863 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))) (regOne!33862 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))))))))

(declare-fun b!6849655 () Bool)

(assert (=> b!6849655 (= e!4130574 e!4130572)))

(declare-fun res!2796037 () Bool)

(assert (=> b!6849655 (= res!2796037 (not (nullable!6638 (reg!17004 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))))))))

(assert (=> b!6849655 (=> (not res!2796037) (not e!4130572))))

(declare-fun bm!623898 () Bool)

(assert (=> bm!623898 (= call!623903 call!623902)))

(declare-fun b!6849656 () Bool)

(declare-fun e!4130571 () Bool)

(assert (=> b!6849656 (= e!4130574 e!4130571)))

(assert (=> b!6849656 (= c!1275157 ((_ is Union!16675) (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))))))

(declare-fun b!6849657 () Bool)

(declare-fun e!4130577 () Bool)

(assert (=> b!6849657 (= e!4130577 call!623903)))

(declare-fun bm!623899 () Bool)

(assert (=> bm!623899 (= call!623902 (validRegex!8411 (ite c!1275158 (reg!17004 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))) (ite c!1275157 (regTwo!33863 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))) (regTwo!33862 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888)))))))))))

(declare-fun b!6849658 () Bool)

(declare-fun res!2796036 () Bool)

(assert (=> b!6849658 (=> (not res!2796036) (not e!4130577))))

(assert (=> b!6849658 (= res!2796036 call!623904)))

(assert (=> b!6849658 (= e!4130571 e!4130577)))

(declare-fun d!2153079 () Bool)

(declare-fun res!2796038 () Bool)

(assert (=> d!2153079 (=> res!2796038 e!4130576)))

(assert (=> d!2153079 (= res!2796038 ((_ is ElementMatch!16675) (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))))))

(assert (=> d!2153079 (= (validRegex!8411 (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888))))) e!4130576)))

(declare-fun b!6849659 () Bool)

(declare-fun res!2796035 () Bool)

(assert (=> b!6849659 (=> res!2796035 e!4130575)))

(assert (=> b!6849659 (= res!2796035 (not ((_ is Concat!25520) (ite c!1274941 (reg!17004 (h!72648 lt!2455888)) (ite c!1274940 (regTwo!33863 (h!72648 lt!2455888)) (regTwo!33862 (h!72648 lt!2455888)))))))))

(assert (=> b!6849659 (= e!4130571 e!4130575)))

(assert (= (and d!2153079 (not res!2796038)) b!6849652))

(assert (= (and b!6849652 c!1275158) b!6849655))

(assert (= (and b!6849652 (not c!1275158)) b!6849656))

(assert (= (and b!6849655 res!2796037) b!6849651))

(assert (= (and b!6849656 c!1275157) b!6849658))

(assert (= (and b!6849656 (not c!1275157)) b!6849659))

(assert (= (and b!6849658 res!2796036) b!6849657))

(assert (= (and b!6849659 (not res!2796035)) b!6849654))

(assert (= (and b!6849654 res!2796034) b!6849653))

(assert (= (or b!6849657 b!6849653) bm!623898))

(assert (= (or b!6849658 b!6849654) bm!623897))

(assert (= (or b!6849651 bm!623898) bm!623899))

(declare-fun m!7588928 () Bool)

(assert (=> bm!623897 m!7588928))

(declare-fun m!7588930 () Bool)

(assert (=> b!6849655 m!7588930))

(declare-fun m!7588932 () Bool)

(assert (=> bm!623899 m!7588932))

(assert (=> bm!623731 d!2153079))

(declare-fun d!2153083 () Bool)

(declare-fun res!2796039 () Bool)

(declare-fun e!4130583 () Bool)

(assert (=> d!2153083 (=> res!2796039 e!4130583)))

(assert (=> d!2153083 (= res!2796039 ((_ is Nil!66201) (t!380068 lt!2455980)))))

(assert (=> d!2153083 (= (noDuplicate!2441 (t!380068 lt!2455980)) e!4130583)))

(declare-fun b!6849670 () Bool)

(declare-fun e!4130584 () Bool)

(assert (=> b!6849670 (= e!4130583 e!4130584)))

(declare-fun res!2796040 () Bool)

(assert (=> b!6849670 (=> (not res!2796040) (not e!4130584))))

(assert (=> b!6849670 (= res!2796040 (not (contains!20327 (t!380068 (t!380068 lt!2455980)) (h!72649 (t!380068 lt!2455980)))))))

(declare-fun b!6849671 () Bool)

(assert (=> b!6849671 (= e!4130584 (noDuplicate!2441 (t!380068 (t!380068 lt!2455980))))))

(assert (= (and d!2153083 (not res!2796039)) b!6849670))

(assert (= (and b!6849670 res!2796040) b!6849671))

(declare-fun m!7588934 () Bool)

(assert (=> b!6849670 m!7588934))

(declare-fun m!7588936 () Bool)

(assert (=> b!6849671 m!7588936))

(assert (=> b!6848816 d!2153083))

(declare-fun d!2153085 () Bool)

(assert (=> d!2153085 (= (isUnion!1447 lt!2456035) ((_ is Union!16675) lt!2456035))))

(assert (=> b!6848600 d!2153085))

(assert (=> b!6848456 d!2152893))

(assert (=> bm!623689 d!2152581))

(declare-fun bs!1830962 () Bool)

(declare-fun d!2153089 () Bool)

(assert (= bs!1830962 (and d!2153089 d!2152589)))

(declare-fun lambda!387304 () Int)

(assert (=> bs!1830962 (not (= lambda!387304 lambda!387260))))

(declare-fun bs!1830963 () Bool)

(assert (= bs!1830963 (and d!2153089 d!2152585)))

(assert (=> bs!1830963 (= lambda!387304 lambda!387258)))

(declare-fun bs!1830964 () Bool)

(assert (= bs!1830964 (and d!2153089 d!2152691)))

(assert (=> bs!1830964 (= lambda!387304 lambda!387275)))

(declare-fun bs!1830965 () Bool)

(assert (= bs!1830965 (and d!2153089 d!2152603)))

(assert (=> bs!1830965 (= lambda!387304 lambda!387264)))

(declare-fun bs!1830966 () Bool)

(assert (= bs!1830966 (and d!2153089 d!2152671)))

(assert (=> bs!1830966 (= lambda!387304 lambda!387272)))

(declare-fun bs!1830967 () Bool)

(assert (= bs!1830967 (and d!2153089 d!2152375)))

(assert (=> bs!1830967 (= lambda!387304 lambda!387214)))

(declare-fun bs!1830968 () Bool)

(assert (= bs!1830968 (and d!2153089 d!2152405)))

(assert (=> bs!1830968 (not (= lambda!387304 lambda!387217))))

(declare-fun bs!1830969 () Bool)

(assert (= bs!1830969 (and d!2153089 d!2152407)))

(assert (=> bs!1830969 (not (= lambda!387304 lambda!387223))))

(declare-fun bs!1830970 () Bool)

(assert (= bs!1830970 (and d!2153089 d!2152621)))

(assert (=> bs!1830970 (= lambda!387304 lambda!387267)))

(declare-fun bs!1830971 () Bool)

(assert (= bs!1830971 (and d!2153089 d!2152591)))

(assert (=> bs!1830971 (not (= lambda!387304 lambda!387263))))

(assert (=> bs!1830969 (= lambda!387304 lambda!387222)))

(declare-fun bs!1830972 () Bool)

(assert (= bs!1830972 (and d!2153089 d!2152409)))

(assert (=> bs!1830972 (= lambda!387304 lambda!387226)))

(declare-fun bs!1830973 () Bool)

(assert (= bs!1830973 (and d!2153089 d!2152411)))

(assert (=> bs!1830973 (= lambda!387304 lambda!387227)))

(declare-fun bs!1830974 () Bool)

(assert (= bs!1830974 (and d!2153089 b!6847423)))

(assert (=> bs!1830974 (not (= lambda!387304 lambda!387176))))

(declare-fun bs!1830975 () Bool)

(assert (= bs!1830975 (and d!2153089 d!2152587)))

(assert (=> bs!1830975 (= lambda!387304 lambda!387259)))

(assert (=> d!2153089 (= (inv!84934 (h!72649 (t!380068 (t!380068 zl!343)))) (forall!15853 (exprs!6559 (h!72649 (t!380068 (t!380068 zl!343)))) lambda!387304))))

(declare-fun bs!1830976 () Bool)

(assert (= bs!1830976 d!2153089))

(declare-fun m!7588954 () Bool)

(assert (=> bs!1830976 m!7588954))

(assert (=> b!6848869 d!2153089))

(declare-fun d!2153095 () Bool)

(declare-fun res!2796051 () Bool)

(declare-fun e!4130599 () Bool)

(assert (=> d!2153095 (=> res!2796051 e!4130599)))

(assert (=> d!2153095 (= res!2796051 ((_ is Nil!66200) (t!380067 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> d!2153095 (= (forall!15853 (t!380067 (exprs!6559 (h!72649 zl!343))) lambda!387227) e!4130599)))

(declare-fun b!6849690 () Bool)

(declare-fun e!4130600 () Bool)

(assert (=> b!6849690 (= e!4130599 e!4130600)))

(declare-fun res!2796052 () Bool)

(assert (=> b!6849690 (=> (not res!2796052) (not e!4130600))))

(assert (=> b!6849690 (= res!2796052 (dynLambda!26455 lambda!387227 (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343))))))))

(declare-fun b!6849691 () Bool)

(assert (=> b!6849691 (= e!4130600 (forall!15853 (t!380067 (t!380067 (exprs!6559 (h!72649 zl!343)))) lambda!387227))))

(assert (= (and d!2153095 (not res!2796051)) b!6849690))

(assert (= (and b!6849690 res!2796052) b!6849691))

(declare-fun b_lambda!258535 () Bool)

(assert (=> (not b_lambda!258535) (not b!6849690)))

(declare-fun m!7588962 () Bool)

(assert (=> b!6849690 m!7588962))

(declare-fun m!7588964 () Bool)

(assert (=> b!6849691 m!7588964))

(assert (=> b!6848743 d!2153095))

(declare-fun d!2153099 () Bool)

(declare-fun res!2796055 () Bool)

(declare-fun e!4130605 () Bool)

(assert (=> d!2153099 (=> res!2796055 e!4130605)))

(assert (=> d!2153099 (= res!2796055 ((_ is Nil!66201) res!2795634))))

(assert (=> d!2153099 (= (noDuplicate!2441 res!2795634) e!4130605)))

(declare-fun b!6849698 () Bool)

(declare-fun e!4130606 () Bool)

(assert (=> b!6849698 (= e!4130605 e!4130606)))

(declare-fun res!2796056 () Bool)

(assert (=> b!6849698 (=> (not res!2796056) (not e!4130606))))

(assert (=> b!6849698 (= res!2796056 (not (contains!20327 (t!380068 res!2795634) (h!72649 res!2795634))))))

(declare-fun b!6849699 () Bool)

(assert (=> b!6849699 (= e!4130606 (noDuplicate!2441 (t!380068 res!2795634)))))

(assert (= (and d!2153099 (not res!2796055)) b!6849698))

(assert (= (and b!6849698 res!2796056) b!6849699))

(declare-fun m!7588966 () Bool)

(assert (=> b!6849698 m!7588966))

(declare-fun m!7588968 () Bool)

(assert (=> b!6849699 m!7588968))

(assert (=> d!2152633 d!2153099))

(declare-fun bs!1830977 () Bool)

(declare-fun d!2153101 () Bool)

(assert (= bs!1830977 (and d!2153101 b!6847411)))

(declare-fun lambda!387305 () Int)

(assert (=> bs!1830977 (not (= lambda!387305 lambda!387177))))

(declare-fun bs!1830978 () Bool)

(assert (= bs!1830978 (and d!2153101 d!2152415)))

(assert (=> bs!1830978 (= lambda!387305 lambda!387230)))

(declare-fun bs!1830979 () Bool)

(assert (= bs!1830979 (and d!2153101 d!2152985)))

(assert (=> bs!1830979 (= (= lambda!387177 lambda!387271) (= lambda!387305 lambda!387290))))

(declare-fun bs!1830980 () Bool)

(assert (= bs!1830980 (and d!2153101 d!2152647)))

(assert (=> bs!1830980 (not (= lambda!387305 lambda!387271))))

(declare-fun bs!1830981 () Bool)

(assert (= bs!1830981 (and d!2153101 d!2152417)))

(assert (=> bs!1830981 (not (= lambda!387305 lambda!387233))))

(declare-fun bs!1830982 () Bool)

(assert (= bs!1830982 (and d!2153101 d!2152645)))

(assert (=> bs!1830982 (= (= lambda!387177 lambda!387233) (= lambda!387305 lambda!387268))))

(assert (=> d!2153101 true))

(assert (=> d!2153101 (< (dynLambda!26458 order!27655 lambda!387177) (dynLambda!26458 order!27655 lambda!387305))))

(assert (=> d!2153101 (= (exists!2777 (t!380068 zl!343) lambda!387177) (not (forall!15854 (t!380068 zl!343) lambda!387305)))))

(declare-fun bs!1830983 () Bool)

(assert (= bs!1830983 d!2153101))

(declare-fun m!7588982 () Bool)

(assert (=> bs!1830983 m!7588982))

(assert (=> d!2152601 d!2153101))

(assert (=> d!2152591 d!2152351))

(declare-fun bs!1830984 () Bool)

(declare-fun d!2153105 () Bool)

(assert (= bs!1830984 (and d!2153105 d!2152589)))

(declare-fun lambda!387306 () Int)

(assert (=> bs!1830984 (= (= lambda!387263 lambda!387223) (= lambda!387306 lambda!387260))))

(declare-fun bs!1830985 () Bool)

(assert (= bs!1830985 (and d!2153105 d!2152691)))

(assert (=> bs!1830985 (not (= lambda!387306 lambda!387275))))

(declare-fun bs!1830986 () Bool)

(assert (= bs!1830986 (and d!2153105 d!2152603)))

(assert (=> bs!1830986 (not (= lambda!387306 lambda!387264))))

(declare-fun bs!1830987 () Bool)

(assert (= bs!1830987 (and d!2153105 d!2152671)))

(assert (=> bs!1830987 (not (= lambda!387306 lambda!387272))))

(declare-fun bs!1830988 () Bool)

(assert (= bs!1830988 (and d!2153105 d!2152375)))

(assert (=> bs!1830988 (not (= lambda!387306 lambda!387214))))

(declare-fun bs!1830989 () Bool)

(assert (= bs!1830989 (and d!2153105 d!2152405)))

(assert (=> bs!1830989 (= (= lambda!387263 lambda!387176) (= lambda!387306 lambda!387217))))

(declare-fun bs!1830990 () Bool)

(assert (= bs!1830990 (and d!2153105 d!2152407)))

(assert (=> bs!1830990 (not (= lambda!387306 lambda!387223))))

(declare-fun bs!1830991 () Bool)

(assert (= bs!1830991 (and d!2153105 d!2152621)))

(assert (=> bs!1830991 (not (= lambda!387306 lambda!387267))))

(declare-fun bs!1830992 () Bool)

(assert (= bs!1830992 (and d!2153105 d!2152591)))

(assert (=> bs!1830992 (not (= lambda!387306 lambda!387263))))

(declare-fun bs!1830993 () Bool)

(assert (= bs!1830993 (and d!2153105 d!2153089)))

(assert (=> bs!1830993 (not (= lambda!387306 lambda!387304))))

(declare-fun bs!1830994 () Bool)

(assert (= bs!1830994 (and d!2153105 d!2152585)))

(assert (=> bs!1830994 (not (= lambda!387306 lambda!387258))))

(assert (=> bs!1830990 (not (= lambda!387306 lambda!387222))))

(declare-fun bs!1830995 () Bool)

(assert (= bs!1830995 (and d!2153105 d!2152409)))

(assert (=> bs!1830995 (not (= lambda!387306 lambda!387226))))

(declare-fun bs!1830996 () Bool)

(assert (= bs!1830996 (and d!2153105 d!2152411)))

(assert (=> bs!1830996 (not (= lambda!387306 lambda!387227))))

(declare-fun bs!1830997 () Bool)

(assert (= bs!1830997 (and d!2153105 b!6847423)))

(assert (=> bs!1830997 (not (= lambda!387306 lambda!387176))))

(declare-fun bs!1830998 () Bool)

(assert (= bs!1830998 (and d!2153105 d!2152587)))

(assert (=> bs!1830998 (not (= lambda!387306 lambda!387259))))

(assert (=> d!2153105 true))

(assert (=> d!2153105 (< (dynLambda!26457 order!27653 lambda!387263) (dynLambda!26457 order!27653 lambda!387306))))

(assert (=> d!2153105 (= (exists!2776 lt!2455888 lambda!387263) (not (forall!15853 lt!2455888 lambda!387306)))))

(declare-fun bs!1830999 () Bool)

(assert (= bs!1830999 d!2153105))

(declare-fun m!7588994 () Bool)

(assert (=> bs!1830999 m!7588994))

(assert (=> d!2152591 d!2153105))

(declare-fun d!2153109 () Bool)

(assert (=> d!2153109 (= (nullable!6638 (regOne!33862 r!7292)) (nullableFct!2522 (regOne!33862 r!7292)))))

(declare-fun bs!1831000 () Bool)

(assert (= bs!1831000 d!2153109))

(declare-fun m!7588998 () Bool)

(assert (=> bs!1831000 m!7588998))

(assert (=> b!6848560 d!2153109))

(declare-fun d!2153113 () Bool)

(assert (=> d!2153113 (= (nullable!6638 (reg!17004 (h!72648 lt!2455888))) (nullableFct!2522 (reg!17004 (h!72648 lt!2455888))))))

(declare-fun bs!1831001 () Bool)

(assert (= bs!1831001 d!2153113))

(declare-fun m!7589000 () Bool)

(assert (=> bs!1831001 m!7589000))

(assert (=> b!6848752 d!2153113))

(declare-fun d!2153115 () Bool)

(assert (=> d!2153115 (= (head!13728 (unfocusZipperList!2092 zl!343)) (h!72648 (unfocusZipperList!2092 zl!343)))))

(assert (=> b!6848596 d!2153115))

(declare-fun d!2153117 () Bool)

(assert (=> d!2153117 (= (isEmpty!38575 (t!380067 (exprs!6559 (h!72649 zl!343)))) ((_ is Nil!66200) (t!380067 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> b!6848480 d!2153117))

(declare-fun b!6849732 () Bool)

(declare-fun e!4130624 () Bool)

(declare-fun call!623923 () Bool)

(assert (=> b!6849732 (= e!4130624 call!623923)))

(declare-fun b!6849733 () Bool)

(declare-fun e!4130628 () Bool)

(declare-fun e!4130626 () Bool)

(assert (=> b!6849733 (= e!4130628 e!4130626)))

(declare-fun c!1275183 () Bool)

(assert (=> b!6849733 (= c!1275183 ((_ is Star!16675) lt!2456030))))

(declare-fun b!6849734 () Bool)

(declare-fun e!4130625 () Bool)

(declare-fun call!623924 () Bool)

(assert (=> b!6849734 (= e!4130625 call!623924)))

(declare-fun b!6849735 () Bool)

(declare-fun e!4130627 () Bool)

(assert (=> b!6849735 (= e!4130627 e!4130625)))

(declare-fun res!2796065 () Bool)

(assert (=> b!6849735 (=> (not res!2796065) (not e!4130625))))

(declare-fun call!623925 () Bool)

(assert (=> b!6849735 (= res!2796065 call!623925)))

(declare-fun bm!623918 () Bool)

(declare-fun c!1275182 () Bool)

(assert (=> bm!623918 (= call!623925 (validRegex!8411 (ite c!1275182 (regOne!33863 lt!2456030) (regOne!33862 lt!2456030))))))

(declare-fun b!6849736 () Bool)

(assert (=> b!6849736 (= e!4130626 e!4130624)))

(declare-fun res!2796068 () Bool)

(assert (=> b!6849736 (= res!2796068 (not (nullable!6638 (reg!17004 lt!2456030))))))

(assert (=> b!6849736 (=> (not res!2796068) (not e!4130624))))

(declare-fun bm!623919 () Bool)

(assert (=> bm!623919 (= call!623924 call!623923)))

(declare-fun b!6849737 () Bool)

(declare-fun e!4130623 () Bool)

(assert (=> b!6849737 (= e!4130626 e!4130623)))

(assert (=> b!6849737 (= c!1275182 ((_ is Union!16675) lt!2456030))))

(declare-fun b!6849738 () Bool)

(declare-fun e!4130629 () Bool)

(assert (=> b!6849738 (= e!4130629 call!623924)))

(declare-fun bm!623920 () Bool)

(assert (=> bm!623920 (= call!623923 (validRegex!8411 (ite c!1275183 (reg!17004 lt!2456030) (ite c!1275182 (regTwo!33863 lt!2456030) (regTwo!33862 lt!2456030)))))))

(declare-fun b!6849739 () Bool)

(declare-fun res!2796067 () Bool)

(assert (=> b!6849739 (=> (not res!2796067) (not e!4130629))))

(assert (=> b!6849739 (= res!2796067 call!623925)))

(assert (=> b!6849739 (= e!4130623 e!4130629)))

(declare-fun d!2153119 () Bool)

(declare-fun res!2796069 () Bool)

(assert (=> d!2153119 (=> res!2796069 e!4130628)))

(assert (=> d!2153119 (= res!2796069 ((_ is ElementMatch!16675) lt!2456030))))

(assert (=> d!2153119 (= (validRegex!8411 lt!2456030) e!4130628)))

(declare-fun b!6849740 () Bool)

(declare-fun res!2796066 () Bool)

(assert (=> b!6849740 (=> res!2796066 e!4130627)))

(assert (=> b!6849740 (= res!2796066 (not ((_ is Concat!25520) lt!2456030)))))

(assert (=> b!6849740 (= e!4130623 e!4130627)))

(assert (= (and d!2153119 (not res!2796069)) b!6849733))

(assert (= (and b!6849733 c!1275183) b!6849736))

(assert (= (and b!6849733 (not c!1275183)) b!6849737))

(assert (= (and b!6849736 res!2796068) b!6849732))

(assert (= (and b!6849737 c!1275182) b!6849739))

(assert (= (and b!6849737 (not c!1275182)) b!6849740))

(assert (= (and b!6849739 res!2796067) b!6849738))

(assert (= (and b!6849740 (not res!2796066)) b!6849735))

(assert (= (and b!6849735 res!2796065) b!6849734))

(assert (= (or b!6849738 b!6849734) bm!623919))

(assert (= (or b!6849739 b!6849735) bm!623918))

(assert (= (or b!6849732 bm!623919) bm!623920))

(declare-fun m!7589010 () Bool)

(assert (=> bm!623918 m!7589010))

(declare-fun m!7589012 () Bool)

(assert (=> b!6849736 m!7589012))

(declare-fun m!7589014 () Bool)

(assert (=> bm!623920 m!7589014))

(assert (=> d!2152607 d!2153119))

(assert (=> d!2152607 d!2152419))

(assert (=> b!6848799 d!2152617))

(assert (=> b!6848799 d!2152611))

(assert (=> b!6848527 d!2152955))

(declare-fun b!6849750 () Bool)

(declare-fun e!4130638 () Bool)

(declare-fun call!623929 () Bool)

(assert (=> b!6849750 (= e!4130638 call!623929)))

(declare-fun b!6849751 () Bool)

(declare-fun e!4130642 () Bool)

(declare-fun e!4130640 () Bool)

(assert (=> b!6849751 (= e!4130642 e!4130640)))

(declare-fun c!1275187 () Bool)

(assert (=> b!6849751 (= c!1275187 ((_ is Star!16675) lt!2456035))))

(declare-fun b!6849752 () Bool)

(declare-fun e!4130639 () Bool)

(declare-fun call!623930 () Bool)

(assert (=> b!6849752 (= e!4130639 call!623930)))

(declare-fun b!6849753 () Bool)

(declare-fun e!4130641 () Bool)

(assert (=> b!6849753 (= e!4130641 e!4130639)))

(declare-fun res!2796075 () Bool)

(assert (=> b!6849753 (=> (not res!2796075) (not e!4130639))))

(declare-fun call!623931 () Bool)

(assert (=> b!6849753 (= res!2796075 call!623931)))

(declare-fun bm!623924 () Bool)

(declare-fun c!1275186 () Bool)

(assert (=> bm!623924 (= call!623931 (validRegex!8411 (ite c!1275186 (regOne!33863 lt!2456035) (regOne!33862 lt!2456035))))))

(declare-fun b!6849754 () Bool)

(assert (=> b!6849754 (= e!4130640 e!4130638)))

(declare-fun res!2796078 () Bool)

(assert (=> b!6849754 (= res!2796078 (not (nullable!6638 (reg!17004 lt!2456035))))))

(assert (=> b!6849754 (=> (not res!2796078) (not e!4130638))))

(declare-fun bm!623925 () Bool)

(assert (=> bm!623925 (= call!623930 call!623929)))

(declare-fun b!6849755 () Bool)

(declare-fun e!4130637 () Bool)

(assert (=> b!6849755 (= e!4130640 e!4130637)))

(assert (=> b!6849755 (= c!1275186 ((_ is Union!16675) lt!2456035))))

(declare-fun b!6849756 () Bool)

(declare-fun e!4130643 () Bool)

(assert (=> b!6849756 (= e!4130643 call!623930)))

(declare-fun bm!623926 () Bool)

(assert (=> bm!623926 (= call!623929 (validRegex!8411 (ite c!1275187 (reg!17004 lt!2456035) (ite c!1275186 (regTwo!33863 lt!2456035) (regTwo!33862 lt!2456035)))))))

(declare-fun b!6849757 () Bool)

(declare-fun res!2796077 () Bool)

(assert (=> b!6849757 (=> (not res!2796077) (not e!4130643))))

(assert (=> b!6849757 (= res!2796077 call!623931)))

(assert (=> b!6849757 (= e!4130637 e!4130643)))

(declare-fun d!2153123 () Bool)

(declare-fun res!2796079 () Bool)

(assert (=> d!2153123 (=> res!2796079 e!4130642)))

(assert (=> d!2153123 (= res!2796079 ((_ is ElementMatch!16675) lt!2456035))))

(assert (=> d!2153123 (= (validRegex!8411 lt!2456035) e!4130642)))

(declare-fun b!6849758 () Bool)

(declare-fun res!2796076 () Bool)

(assert (=> b!6849758 (=> res!2796076 e!4130641)))

(assert (=> b!6849758 (= res!2796076 (not ((_ is Concat!25520) lt!2456035)))))

(assert (=> b!6849758 (= e!4130637 e!4130641)))

(assert (= (and d!2153123 (not res!2796079)) b!6849751))

(assert (= (and b!6849751 c!1275187) b!6849754))

(assert (= (and b!6849751 (not c!1275187)) b!6849755))

(assert (= (and b!6849754 res!2796078) b!6849750))

(assert (= (and b!6849755 c!1275186) b!6849757))

(assert (= (and b!6849755 (not c!1275186)) b!6849758))

(assert (= (and b!6849757 res!2796077) b!6849756))

(assert (= (and b!6849758 (not res!2796076)) b!6849753))

(assert (= (and b!6849753 res!2796075) b!6849752))

(assert (= (or b!6849756 b!6849752) bm!623925))

(assert (= (or b!6849757 b!6849753) bm!623924))

(assert (= (or b!6849750 bm!623925) bm!623926))

(declare-fun m!7589016 () Bool)

(assert (=> bm!623924 m!7589016))

(declare-fun m!7589018 () Bool)

(assert (=> b!6849754 m!7589018))

(declare-fun m!7589022 () Bool)

(assert (=> bm!623926 m!7589022))

(assert (=> d!2152621 d!2153123))

(declare-fun d!2153125 () Bool)

(declare-fun res!2796080 () Bool)

(declare-fun e!4130644 () Bool)

(assert (=> d!2153125 (=> res!2796080 e!4130644)))

(assert (=> d!2153125 (= res!2796080 ((_ is Nil!66200) (unfocusZipperList!2092 zl!343)))))

(assert (=> d!2153125 (= (forall!15853 (unfocusZipperList!2092 zl!343) lambda!387267) e!4130644)))

(declare-fun b!6849759 () Bool)

(declare-fun e!4130645 () Bool)

(assert (=> b!6849759 (= e!4130644 e!4130645)))

(declare-fun res!2796081 () Bool)

(assert (=> b!6849759 (=> (not res!2796081) (not e!4130645))))

(assert (=> b!6849759 (= res!2796081 (dynLambda!26455 lambda!387267 (h!72648 (unfocusZipperList!2092 zl!343))))))

(declare-fun b!6849760 () Bool)

(assert (=> b!6849760 (= e!4130645 (forall!15853 (t!380067 (unfocusZipperList!2092 zl!343)) lambda!387267))))

(assert (= (and d!2153125 (not res!2796080)) b!6849759))

(assert (= (and b!6849759 res!2796081) b!6849760))

(declare-fun b_lambda!258541 () Bool)

(assert (=> (not b_lambda!258541) (not b!6849759)))

(declare-fun m!7589028 () Bool)

(assert (=> b!6849759 m!7589028))

(declare-fun m!7589030 () Bool)

(assert (=> b!6849760 m!7589030))

(assert (=> d!2152621 d!2153125))

(declare-fun b!6849772 () Bool)

(declare-fun e!4130657 () Bool)

(declare-fun e!4130656 () Bool)

(assert (=> b!6849772 (= e!4130657 e!4130656)))

(declare-fun c!1275193 () Bool)

(assert (=> b!6849772 (= c!1275193 ((_ is EmptyLang!16675) lt!2456036))))

(declare-fun b!6849773 () Bool)

(declare-fun res!2796085 () Bool)

(declare-fun e!4130655 () Bool)

(assert (=> b!6849773 (=> res!2796085 e!4130655)))

(assert (=> b!6849773 (= res!2796085 (not ((_ is ElementMatch!16675) lt!2456036)))))

(assert (=> b!6849773 (= e!4130656 e!4130655)))

(declare-fun b!6849774 () Bool)

(declare-fun lt!2456105 () Bool)

(assert (=> b!6849774 (= e!4130656 (not lt!2456105))))

(declare-fun b!6849775 () Bool)

(declare-fun res!2796088 () Bool)

(declare-fun e!4130658 () Bool)

(assert (=> b!6849775 (=> (not res!2796088) (not e!4130658))))

(declare-fun call!623934 () Bool)

(assert (=> b!6849775 (= res!2796088 (not call!623934))))

(declare-fun b!6849776 () Bool)

(declare-fun e!4130659 () Bool)

(assert (=> b!6849776 (= e!4130659 (not (= (head!13727 s!2326) (c!1274613 lt!2456036))))))

(declare-fun b!6849777 () Bool)

(declare-fun res!2796087 () Bool)

(assert (=> b!6849777 (=> (not res!2796087) (not e!4130658))))

(assert (=> b!6849777 (= res!2796087 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6849778 () Bool)

(declare-fun res!2796091 () Bool)

(assert (=> b!6849778 (=> res!2796091 e!4130655)))

(assert (=> b!6849778 (= res!2796091 e!4130658)))

(declare-fun res!2796089 () Bool)

(assert (=> b!6849778 (=> (not res!2796089) (not e!4130658))))

(assert (=> b!6849778 (= res!2796089 lt!2456105)))

(declare-fun b!6849779 () Bool)

(declare-fun e!4130653 () Bool)

(assert (=> b!6849779 (= e!4130653 (nullable!6638 lt!2456036))))

(declare-fun b!6849780 () Bool)

(assert (=> b!6849780 (= e!4130658 (= (head!13727 s!2326) (c!1274613 lt!2456036)))))

(declare-fun b!6849781 () Bool)

(declare-fun res!2796092 () Bool)

(assert (=> b!6849781 (=> res!2796092 e!4130659)))

(assert (=> b!6849781 (= res!2796092 (not (isEmpty!38573 (tail!12804 s!2326))))))

(declare-fun d!2153129 () Bool)

(assert (=> d!2153129 e!4130657))

(declare-fun c!1275192 () Bool)

(assert (=> d!2153129 (= c!1275192 ((_ is EmptyExpr!16675) lt!2456036))))

(assert (=> d!2153129 (= lt!2456105 e!4130653)))

(declare-fun c!1275194 () Bool)

(assert (=> d!2153129 (= c!1275194 (isEmpty!38573 s!2326))))

(assert (=> d!2153129 (validRegex!8411 lt!2456036)))

(assert (=> d!2153129 (= (matchR!8858 lt!2456036 s!2326) lt!2456105)))

(declare-fun bm!623929 () Bool)

(assert (=> bm!623929 (= call!623934 (isEmpty!38573 s!2326))))

(declare-fun b!6849782 () Bool)

(declare-fun e!4130654 () Bool)

(assert (=> b!6849782 (= e!4130654 e!4130659)))

(declare-fun res!2796086 () Bool)

(assert (=> b!6849782 (=> res!2796086 e!4130659)))

(assert (=> b!6849782 (= res!2796086 call!623934)))

(declare-fun b!6849783 () Bool)

(assert (=> b!6849783 (= e!4130653 (matchR!8858 (derivativeStep!5321 lt!2456036 (head!13727 s!2326)) (tail!12804 s!2326)))))

(declare-fun b!6849784 () Bool)

(assert (=> b!6849784 (= e!4130655 e!4130654)))

(declare-fun res!2796090 () Bool)

(assert (=> b!6849784 (=> (not res!2796090) (not e!4130654))))

(assert (=> b!6849784 (= res!2796090 (not lt!2456105))))

(declare-fun b!6849785 () Bool)

(assert (=> b!6849785 (= e!4130657 (= lt!2456105 call!623934))))

(assert (= (and d!2153129 c!1275194) b!6849779))

(assert (= (and d!2153129 (not c!1275194)) b!6849783))

(assert (= (and d!2153129 c!1275192) b!6849785))

(assert (= (and d!2153129 (not c!1275192)) b!6849772))

(assert (= (and b!6849772 c!1275193) b!6849774))

(assert (= (and b!6849772 (not c!1275193)) b!6849773))

(assert (= (and b!6849773 (not res!2796085)) b!6849778))

(assert (= (and b!6849778 res!2796089) b!6849775))

(assert (= (and b!6849775 res!2796088) b!6849777))

(assert (= (and b!6849777 res!2796087) b!6849780))

(assert (= (and b!6849778 (not res!2796091)) b!6849784))

(assert (= (and b!6849784 res!2796090) b!6849782))

(assert (= (and b!6849782 (not res!2796086)) b!6849781))

(assert (= (and b!6849781 (not res!2796092)) b!6849776))

(assert (= (or b!6849785 b!6849775 b!6849782) bm!623929))

(assert (=> bm!623929 m!7587310))

(assert (=> b!6849783 m!7587360))

(assert (=> b!6849783 m!7587360))

(declare-fun m!7589032 () Bool)

(assert (=> b!6849783 m!7589032))

(assert (=> b!6849783 m!7587364))

(assert (=> b!6849783 m!7589032))

(assert (=> b!6849783 m!7587364))

(declare-fun m!7589034 () Bool)

(assert (=> b!6849783 m!7589034))

(declare-fun m!7589036 () Bool)

(assert (=> b!6849779 m!7589036))

(assert (=> b!6849777 m!7587364))

(assert (=> b!6849777 m!7587364))

(assert (=> b!6849777 m!7587370))

(assert (=> b!6849781 m!7587364))

(assert (=> b!6849781 m!7587364))

(assert (=> b!6849781 m!7587370))

(assert (=> d!2153129 m!7587310))

(assert (=> d!2153129 m!7588192))

(assert (=> b!6849780 m!7587360))

(assert (=> b!6849776 m!7587360))

(assert (=> b!6848936 d!2153129))

(declare-fun d!2153131 () Bool)

(declare-fun lt!2456106 () Int)

(assert (=> d!2153131 (>= lt!2456106 0)))

(declare-fun e!4130660 () Int)

(assert (=> d!2153131 (= lt!2456106 e!4130660)))

(declare-fun c!1275195 () Bool)

(assert (=> d!2153131 (= c!1275195 ((_ is Cons!66200) (exprs!6559 (h!72649 (t!380068 zl!343)))))))

(assert (=> d!2153131 (= (contextDepthTotal!402 (h!72649 (t!380068 zl!343))) lt!2456106)))

(declare-fun b!6849786 () Bool)

(assert (=> b!6849786 (= e!4130660 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343))))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (h!72649 (t!380068 zl!343))))))))))

(declare-fun b!6849787 () Bool)

(assert (=> b!6849787 (= e!4130660 1)))

(assert (= (and d!2153131 c!1275195) b!6849786))

(assert (= (and d!2153131 (not c!1275195)) b!6849787))

(declare-fun m!7589038 () Bool)

(assert (=> b!6849786 m!7589038))

(declare-fun m!7589040 () Bool)

(assert (=> b!6849786 m!7589040))

(assert (=> b!6848565 d!2153131))

(declare-fun d!2153133 () Bool)

(declare-fun lt!2456107 () Int)

(assert (=> d!2153133 (>= lt!2456107 0)))

(declare-fun e!4130661 () Int)

(assert (=> d!2153133 (= lt!2456107 e!4130661)))

(declare-fun c!1275196 () Bool)

(assert (=> d!2153133 (= c!1275196 ((_ is Cons!66201) (t!380068 (t!380068 zl!343))))))

(assert (=> d!2153133 (= (zipperDepthTotal!430 (t!380068 (t!380068 zl!343))) lt!2456107)))

(declare-fun b!6849788 () Bool)

(assert (=> b!6849788 (= e!4130661 (+ (contextDepthTotal!402 (h!72649 (t!380068 (t!380068 zl!343)))) (zipperDepthTotal!430 (t!380068 (t!380068 (t!380068 zl!343))))))))

(declare-fun b!6849789 () Bool)

(assert (=> b!6849789 (= e!4130661 0)))

(assert (= (and d!2153133 c!1275196) b!6849788))

(assert (= (and d!2153133 (not c!1275196)) b!6849789))

(declare-fun m!7589042 () Bool)

(assert (=> b!6849788 m!7589042))

(declare-fun m!7589044 () Bool)

(assert (=> b!6849788 m!7589044))

(assert (=> b!6848565 d!2153133))

(declare-fun b!6849790 () Bool)

(declare-fun e!4130663 () Bool)

(declare-fun call!623935 () Bool)

(assert (=> b!6849790 (= e!4130663 call!623935)))

(declare-fun b!6849791 () Bool)

(declare-fun e!4130667 () Bool)

(declare-fun e!4130665 () Bool)

(assert (=> b!6849791 (= e!4130667 e!4130665)))

(declare-fun c!1275198 () Bool)

(assert (=> b!6849791 (= c!1275198 ((_ is Star!16675) (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))

(declare-fun b!6849792 () Bool)

(declare-fun e!4130664 () Bool)

(declare-fun call!623936 () Bool)

(assert (=> b!6849792 (= e!4130664 call!623936)))

(declare-fun b!6849793 () Bool)

(declare-fun e!4130666 () Bool)

(assert (=> b!6849793 (= e!4130666 e!4130664)))

(declare-fun res!2796093 () Bool)

(assert (=> b!6849793 (=> (not res!2796093) (not e!4130664))))

(declare-fun call!623937 () Bool)

(assert (=> b!6849793 (= res!2796093 call!623937)))

(declare-fun bm!623930 () Bool)

(declare-fun c!1275197 () Bool)

(assert (=> bm!623930 (= call!623937 (validRegex!8411 (ite c!1275197 (regOne!33863 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))) (regOne!33862 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))))

(declare-fun b!6849794 () Bool)

(assert (=> b!6849794 (= e!4130665 e!4130663)))

(declare-fun res!2796096 () Bool)

(assert (=> b!6849794 (= res!2796096 (not (nullable!6638 (reg!17004 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))))

(assert (=> b!6849794 (=> (not res!2796096) (not e!4130663))))

(declare-fun bm!623931 () Bool)

(assert (=> bm!623931 (= call!623936 call!623935)))

(declare-fun b!6849795 () Bool)

(declare-fun e!4130662 () Bool)

(assert (=> b!6849795 (= e!4130665 e!4130662)))

(assert (=> b!6849795 (= c!1275197 ((_ is Union!16675) (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))

(declare-fun b!6849796 () Bool)

(declare-fun e!4130668 () Bool)

(assert (=> b!6849796 (= e!4130668 call!623936)))

(declare-fun bm!623932 () Bool)

(assert (=> bm!623932 (= call!623935 (validRegex!8411 (ite c!1275198 (reg!17004 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))) (ite c!1275197 (regTwo!33863 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))) (regTwo!33862 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))))))

(declare-fun b!6849797 () Bool)

(declare-fun res!2796095 () Bool)

(assert (=> b!6849797 (=> (not res!2796095) (not e!4130668))))

(assert (=> b!6849797 (= res!2796095 call!623937)))

(assert (=> b!6849797 (= e!4130662 e!4130668)))

(declare-fun d!2153135 () Bool)

(declare-fun res!2796097 () Bool)

(assert (=> d!2153135 (=> res!2796097 e!4130667)))

(assert (=> d!2153135 (= res!2796097 ((_ is ElementMatch!16675) (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))))

(assert (=> d!2153135 (= (validRegex!8411 (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))) e!4130667)))

(declare-fun b!6849798 () Bool)

(declare-fun res!2796094 () Bool)

(assert (=> b!6849798 (=> res!2796094 e!4130666)))

(assert (=> b!6849798 (= res!2796094 (not ((_ is Concat!25520) (ite c!1274950 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (ite c!1274949 (regTwo!33863 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))) (regTwo!33862 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885)))))))))))

(assert (=> b!6849798 (= e!4130662 e!4130666)))

(assert (= (and d!2153135 (not res!2796097)) b!6849791))

(assert (= (and b!6849791 c!1275198) b!6849794))

(assert (= (and b!6849791 (not c!1275198)) b!6849795))

(assert (= (and b!6849794 res!2796096) b!6849790))

(assert (= (and b!6849795 c!1275197) b!6849797))

(assert (= (and b!6849795 (not c!1275197)) b!6849798))

(assert (= (and b!6849797 res!2796095) b!6849796))

(assert (= (and b!6849798 (not res!2796094)) b!6849793))

(assert (= (and b!6849793 res!2796093) b!6849792))

(assert (= (or b!6849796 b!6849792) bm!623931))

(assert (= (or b!6849797 b!6849793) bm!623930))

(assert (= (or b!6849790 bm!623931) bm!623932))

(declare-fun m!7589046 () Bool)

(assert (=> bm!623930 m!7589046))

(declare-fun m!7589048 () Bool)

(assert (=> b!6849794 m!7589048))

(declare-fun m!7589050 () Bool)

(assert (=> bm!623932 m!7589050))

(assert (=> bm!623739 d!2153135))

(declare-fun b!6849799 () Bool)

(declare-fun e!4130670 () Bool)

(declare-fun call!623938 () Bool)

(assert (=> b!6849799 (= e!4130670 call!623938)))

(declare-fun b!6849800 () Bool)

(declare-fun e!4130674 () Bool)

(declare-fun e!4130672 () Bool)

(assert (=> b!6849800 (= e!4130674 e!4130672)))

(declare-fun c!1275200 () Bool)

(assert (=> b!6849800 (= c!1275200 ((_ is Star!16675) (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))

(declare-fun b!6849801 () Bool)

(declare-fun e!4130671 () Bool)

(declare-fun call!623939 () Bool)

(assert (=> b!6849801 (= e!4130671 call!623939)))

(declare-fun b!6849802 () Bool)

(declare-fun e!4130673 () Bool)

(assert (=> b!6849802 (= e!4130673 e!4130671)))

(declare-fun res!2796098 () Bool)

(assert (=> b!6849802 (=> (not res!2796098) (not e!4130671))))

(declare-fun call!623940 () Bool)

(assert (=> b!6849802 (= res!2796098 call!623940)))

(declare-fun bm!623933 () Bool)

(declare-fun c!1275199 () Bool)

(assert (=> bm!623933 (= call!623940 (validRegex!8411 (ite c!1275199 (regOne!33863 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))) (regOne!33862 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))))

(declare-fun b!6849803 () Bool)

(assert (=> b!6849803 (= e!4130672 e!4130670)))

(declare-fun res!2796101 () Bool)

(assert (=> b!6849803 (= res!2796101 (not (nullable!6638 (reg!17004 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))))

(assert (=> b!6849803 (=> (not res!2796101) (not e!4130670))))

(declare-fun bm!623934 () Bool)

(assert (=> bm!623934 (= call!623939 call!623938)))

(declare-fun b!6849804 () Bool)

(declare-fun e!4130669 () Bool)

(assert (=> b!6849804 (= e!4130672 e!4130669)))

(assert (=> b!6849804 (= c!1275199 ((_ is Union!16675) (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))

(declare-fun b!6849805 () Bool)

(declare-fun e!4130675 () Bool)

(assert (=> b!6849805 (= e!4130675 call!623939)))

(declare-fun bm!623935 () Bool)

(assert (=> bm!623935 (= call!623938 (validRegex!8411 (ite c!1275200 (reg!17004 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))) (ite c!1275199 (regTwo!33863 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))) (regTwo!33862 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))))))

(declare-fun b!6849806 () Bool)

(declare-fun res!2796100 () Bool)

(assert (=> b!6849806 (=> (not res!2796100) (not e!4130675))))

(assert (=> b!6849806 (= res!2796100 call!623940)))

(assert (=> b!6849806 (= e!4130669 e!4130675)))

(declare-fun d!2153137 () Bool)

(declare-fun res!2796102 () Bool)

(assert (=> d!2153137 (=> res!2796102 e!4130674)))

(assert (=> d!2153137 (= res!2796102 ((_ is ElementMatch!16675) (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))))

(assert (=> d!2153137 (= (validRegex!8411 (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))) e!4130674)))

(declare-fun b!6849807 () Bool)

(declare-fun res!2796099 () Bool)

(assert (=> b!6849807 (=> res!2796099 e!4130673)))

(assert (=> b!6849807 (= res!2796099 (not ((_ is Concat!25520) (ite c!1274919 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1274918 (regTwo!33863 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regTwo!33862 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))))))

(assert (=> b!6849807 (= e!4130669 e!4130673)))

(assert (= (and d!2153137 (not res!2796102)) b!6849800))

(assert (= (and b!6849800 c!1275200) b!6849803))

(assert (= (and b!6849800 (not c!1275200)) b!6849804))

(assert (= (and b!6849803 res!2796101) b!6849799))

(assert (= (and b!6849804 c!1275199) b!6849806))

(assert (= (and b!6849804 (not c!1275199)) b!6849807))

(assert (= (and b!6849806 res!2796100) b!6849805))

(assert (= (and b!6849807 (not res!2796099)) b!6849802))

(assert (= (and b!6849802 res!2796098) b!6849801))

(assert (= (or b!6849805 b!6849801) bm!623934))

(assert (= (or b!6849806 b!6849802) bm!623933))

(assert (= (or b!6849799 bm!623934) bm!623935))

(declare-fun m!7589052 () Bool)

(assert (=> bm!623933 m!7589052))

(declare-fun m!7589054 () Bool)

(assert (=> b!6849803 m!7589054))

(declare-fun m!7589056 () Bool)

(assert (=> bm!623935 m!7589056))

(assert (=> bm!623719 d!2153137))

(declare-fun b!6849808 () Bool)

(declare-fun e!4130677 () Bool)

(declare-fun call!623941 () Bool)

(assert (=> b!6849808 (= e!4130677 call!623941)))

(declare-fun b!6849809 () Bool)

(declare-fun e!4130681 () Bool)

(declare-fun e!4130679 () Bool)

(assert (=> b!6849809 (= e!4130681 e!4130679)))

(declare-fun c!1275202 () Bool)

(assert (=> b!6849809 (= c!1275202 ((_ is Star!16675) lt!2456039))))

(declare-fun b!6849810 () Bool)

(declare-fun e!4130678 () Bool)

(declare-fun call!623942 () Bool)

(assert (=> b!6849810 (= e!4130678 call!623942)))

(declare-fun b!6849811 () Bool)

(declare-fun e!4130680 () Bool)

(assert (=> b!6849811 (= e!4130680 e!4130678)))

(declare-fun res!2796103 () Bool)

(assert (=> b!6849811 (=> (not res!2796103) (not e!4130678))))

(declare-fun call!623943 () Bool)

(assert (=> b!6849811 (= res!2796103 call!623943)))

(declare-fun bm!623936 () Bool)

(declare-fun c!1275201 () Bool)

(assert (=> bm!623936 (= call!623943 (validRegex!8411 (ite c!1275201 (regOne!33863 lt!2456039) (regOne!33862 lt!2456039))))))

(declare-fun b!6849812 () Bool)

(assert (=> b!6849812 (= e!4130679 e!4130677)))

(declare-fun res!2796106 () Bool)

(assert (=> b!6849812 (= res!2796106 (not (nullable!6638 (reg!17004 lt!2456039))))))

(assert (=> b!6849812 (=> (not res!2796106) (not e!4130677))))

(declare-fun bm!623937 () Bool)

(assert (=> bm!623937 (= call!623942 call!623941)))

(declare-fun b!6849813 () Bool)

(declare-fun e!4130676 () Bool)

(assert (=> b!6849813 (= e!4130679 e!4130676)))

(assert (=> b!6849813 (= c!1275201 ((_ is Union!16675) lt!2456039))))

(declare-fun b!6849814 () Bool)

(declare-fun e!4130682 () Bool)

(assert (=> b!6849814 (= e!4130682 call!623942)))

(declare-fun bm!623938 () Bool)

(assert (=> bm!623938 (= call!623941 (validRegex!8411 (ite c!1275202 (reg!17004 lt!2456039) (ite c!1275201 (regTwo!33863 lt!2456039) (regTwo!33862 lt!2456039)))))))

(declare-fun b!6849815 () Bool)

(declare-fun res!2796105 () Bool)

(assert (=> b!6849815 (=> (not res!2796105) (not e!4130682))))

(assert (=> b!6849815 (= res!2796105 call!623943)))

(assert (=> b!6849815 (= e!4130676 e!4130682)))

(declare-fun d!2153139 () Bool)

(declare-fun res!2796107 () Bool)

(assert (=> d!2153139 (=> res!2796107 e!4130681)))

(assert (=> d!2153139 (= res!2796107 ((_ is ElementMatch!16675) lt!2456039))))

(assert (=> d!2153139 (= (validRegex!8411 lt!2456039) e!4130681)))

(declare-fun b!6849816 () Bool)

(declare-fun res!2796104 () Bool)

(assert (=> b!6849816 (=> res!2796104 e!4130680)))

(assert (=> b!6849816 (= res!2796104 (not ((_ is Concat!25520) lt!2456039)))))

(assert (=> b!6849816 (= e!4130676 e!4130680)))

(assert (= (and d!2153139 (not res!2796107)) b!6849809))

(assert (= (and b!6849809 c!1275202) b!6849812))

(assert (= (and b!6849809 (not c!1275202)) b!6849813))

(assert (= (and b!6849812 res!2796106) b!6849808))

(assert (= (and b!6849813 c!1275201) b!6849815))

(assert (= (and b!6849813 (not c!1275201)) b!6849816))

(assert (= (and b!6849815 res!2796105) b!6849814))

(assert (= (and b!6849816 (not res!2796104)) b!6849811))

(assert (= (and b!6849811 res!2796103) b!6849810))

(assert (= (or b!6849814 b!6849810) bm!623937))

(assert (= (or b!6849815 b!6849811) bm!623936))

(assert (= (or b!6849808 bm!623937) bm!623938))

(declare-fun m!7589058 () Bool)

(assert (=> bm!623936 m!7589058))

(declare-fun m!7589060 () Bool)

(assert (=> b!6849812 m!7589060))

(declare-fun m!7589062 () Bool)

(assert (=> bm!623938 m!7589062))

(assert (=> d!2152627 d!2153139))

(assert (=> d!2152627 d!2152403))

(declare-fun bs!1831027 () Bool)

(declare-fun d!2153141 () Bool)

(assert (= bs!1831027 (and d!2153141 d!2152589)))

(declare-fun lambda!387309 () Int)

(assert (=> bs!1831027 (not (= lambda!387309 lambda!387260))))

(declare-fun bs!1831028 () Bool)

(assert (= bs!1831028 (and d!2153141 d!2152691)))

(assert (=> bs!1831028 (= lambda!387309 lambda!387275)))

(declare-fun bs!1831029 () Bool)

(assert (= bs!1831029 (and d!2153141 d!2152603)))

(assert (=> bs!1831029 (= lambda!387309 lambda!387264)))

(declare-fun bs!1831030 () Bool)

(assert (= bs!1831030 (and d!2153141 d!2152671)))

(assert (=> bs!1831030 (= lambda!387309 lambda!387272)))

(declare-fun bs!1831031 () Bool)

(assert (= bs!1831031 (and d!2153141 d!2152375)))

(assert (=> bs!1831031 (= lambda!387309 lambda!387214)))

(declare-fun bs!1831032 () Bool)

(assert (= bs!1831032 (and d!2153141 d!2152405)))

(assert (=> bs!1831032 (not (= lambda!387309 lambda!387217))))

(declare-fun bs!1831033 () Bool)

(assert (= bs!1831033 (and d!2153141 d!2152621)))

(assert (=> bs!1831033 (= lambda!387309 lambda!387267)))

(declare-fun bs!1831034 () Bool)

(assert (= bs!1831034 (and d!2153141 d!2152591)))

(assert (=> bs!1831034 (not (= lambda!387309 lambda!387263))))

(declare-fun bs!1831035 () Bool)

(assert (= bs!1831035 (and d!2153141 d!2153089)))

(assert (=> bs!1831035 (= lambda!387309 lambda!387304)))

(declare-fun bs!1831036 () Bool)

(assert (= bs!1831036 (and d!2153141 d!2152585)))

(assert (=> bs!1831036 (= lambda!387309 lambda!387258)))

(declare-fun bs!1831037 () Bool)

(assert (= bs!1831037 (and d!2153141 d!2152407)))

(assert (=> bs!1831037 (= lambda!387309 lambda!387222)))

(declare-fun bs!1831038 () Bool)

(assert (= bs!1831038 (and d!2153141 d!2152409)))

(assert (=> bs!1831038 (= lambda!387309 lambda!387226)))

(declare-fun bs!1831039 () Bool)

(assert (= bs!1831039 (and d!2153141 d!2152411)))

(assert (=> bs!1831039 (= lambda!387309 lambda!387227)))

(declare-fun bs!1831040 () Bool)

(assert (= bs!1831040 (and d!2153141 d!2153105)))

(assert (=> bs!1831040 (not (= lambda!387309 lambda!387306))))

(assert (=> bs!1831037 (not (= lambda!387309 lambda!387223))))

(declare-fun bs!1831041 () Bool)

(assert (= bs!1831041 (and d!2153141 b!6847423)))

(assert (=> bs!1831041 (not (= lambda!387309 lambda!387176))))

(declare-fun bs!1831042 () Bool)

(assert (= bs!1831042 (and d!2153141 d!2152587)))

(assert (=> bs!1831042 (= lambda!387309 lambda!387259)))

(declare-fun b!6849817 () Bool)

(declare-fun e!4130686 () Bool)

(declare-fun lt!2456108 () Regex!16675)

(assert (=> b!6849817 (= e!4130686 (isEmptyExpr!2006 lt!2456108))))

(declare-fun b!6849818 () Bool)

(declare-fun e!4130685 () Bool)

(assert (=> b!6849818 (= e!4130686 e!4130685)))

(declare-fun c!1275203 () Bool)

(assert (=> b!6849818 (= c!1275203 (isEmpty!38575 (tail!12805 (exprs!6559 lt!2456026))))))

(declare-fun b!6849819 () Bool)

(assert (=> b!6849819 (= e!4130685 (isConcat!1529 lt!2456108))))

(declare-fun b!6849820 () Bool)

(declare-fun e!4130688 () Bool)

(assert (=> b!6849820 (= e!4130688 (isEmpty!38575 (t!380067 (exprs!6559 lt!2456026))))))

(declare-fun b!6849821 () Bool)

(declare-fun e!4130684 () Regex!16675)

(declare-fun e!4130687 () Regex!16675)

(assert (=> b!6849821 (= e!4130684 e!4130687)))

(declare-fun c!1275204 () Bool)

(assert (=> b!6849821 (= c!1275204 ((_ is Cons!66200) (exprs!6559 lt!2456026)))))

(declare-fun b!6849822 () Bool)

(declare-fun e!4130683 () Bool)

(assert (=> b!6849822 (= e!4130683 e!4130686)))

(declare-fun c!1275205 () Bool)

(assert (=> b!6849822 (= c!1275205 (isEmpty!38575 (exprs!6559 lt!2456026)))))

(assert (=> d!2153141 e!4130683))

(declare-fun res!2796109 () Bool)

(assert (=> d!2153141 (=> (not res!2796109) (not e!4130683))))

(assert (=> d!2153141 (= res!2796109 (validRegex!8411 lt!2456108))))

(assert (=> d!2153141 (= lt!2456108 e!4130684)))

(declare-fun c!1275206 () Bool)

(assert (=> d!2153141 (= c!1275206 e!4130688)))

(declare-fun res!2796108 () Bool)

(assert (=> d!2153141 (=> (not res!2796108) (not e!4130688))))

(assert (=> d!2153141 (= res!2796108 ((_ is Cons!66200) (exprs!6559 lt!2456026)))))

(assert (=> d!2153141 (forall!15853 (exprs!6559 lt!2456026) lambda!387309)))

(assert (=> d!2153141 (= (generalisedConcat!2266 (exprs!6559 lt!2456026)) lt!2456108)))

(declare-fun b!6849823 () Bool)

(assert (=> b!6849823 (= e!4130685 (= lt!2456108 (head!13728 (exprs!6559 lt!2456026))))))

(declare-fun b!6849824 () Bool)

(assert (=> b!6849824 (= e!4130687 EmptyExpr!16675)))

(declare-fun b!6849825 () Bool)

(assert (=> b!6849825 (= e!4130684 (h!72648 (exprs!6559 lt!2456026)))))

(declare-fun b!6849826 () Bool)

(assert (=> b!6849826 (= e!4130687 (Concat!25520 (h!72648 (exprs!6559 lt!2456026)) (generalisedConcat!2266 (t!380067 (exprs!6559 lt!2456026)))))))

(assert (= (and d!2153141 res!2796108) b!6849820))

(assert (= (and d!2153141 c!1275206) b!6849825))

(assert (= (and d!2153141 (not c!1275206)) b!6849821))

(assert (= (and b!6849821 c!1275204) b!6849826))

(assert (= (and b!6849821 (not c!1275204)) b!6849824))

(assert (= (and d!2153141 res!2796109) b!6849822))

(assert (= (and b!6849822 c!1275205) b!6849817))

(assert (= (and b!6849822 (not c!1275205)) b!6849818))

(assert (= (and b!6849818 c!1275203) b!6849823))

(assert (= (and b!6849818 (not c!1275203)) b!6849819))

(declare-fun m!7589076 () Bool)

(assert (=> b!6849820 m!7589076))

(declare-fun m!7589078 () Bool)

(assert (=> b!6849826 m!7589078))

(declare-fun m!7589080 () Bool)

(assert (=> d!2153141 m!7589080))

(declare-fun m!7589082 () Bool)

(assert (=> d!2153141 m!7589082))

(declare-fun m!7589084 () Bool)

(assert (=> b!6849818 m!7589084))

(assert (=> b!6849818 m!7589084))

(declare-fun m!7589086 () Bool)

(assert (=> b!6849818 m!7589086))

(declare-fun m!7589088 () Bool)

(assert (=> b!6849817 m!7589088))

(declare-fun m!7589090 () Bool)

(assert (=> b!6849819 m!7589090))

(declare-fun m!7589092 () Bool)

(assert (=> b!6849823 m!7589092))

(declare-fun m!7589094 () Bool)

(assert (=> b!6849822 m!7589094))

(assert (=> bs!1830609 d!2153141))

(declare-fun d!2153149 () Bool)

(declare-fun c!1275209 () Bool)

(assert (=> d!2153149 (= c!1275209 ((_ is Nil!66200) (unfocusZipperList!2092 zl!343)))))

(declare-fun e!4130698 () (InoxSet Regex!16675))

(assert (=> d!2153149 (= (content!12982 (unfocusZipperList!2092 zl!343)) e!4130698)))

(declare-fun b!6849838 () Bool)

(assert (=> b!6849838 (= e!4130698 ((as const (Array Regex!16675 Bool)) false))))

(declare-fun b!6849839 () Bool)

(assert (=> b!6849839 (= e!4130698 ((_ map or) (store ((as const (Array Regex!16675 Bool)) false) (h!72648 (unfocusZipperList!2092 zl!343)) true) (content!12982 (t!380067 (unfocusZipperList!2092 zl!343)))))))

(assert (= (and d!2153149 c!1275209) b!6849838))

(assert (= (and d!2153149 (not c!1275209)) b!6849839))

(declare-fun m!7589100 () Bool)

(assert (=> b!6849839 m!7589100))

(assert (=> b!6849839 m!7588562))

(assert (=> d!2152649 d!2153149))

(declare-fun bs!1831043 () Bool)

(declare-fun d!2153155 () Bool)

(assert (= bs!1831043 (and d!2153155 d!2152589)))

(declare-fun lambda!387310 () Int)

(assert (=> bs!1831043 (not (= lambda!387310 lambda!387260))))

(declare-fun bs!1831044 () Bool)

(assert (= bs!1831044 (and d!2153155 d!2152691)))

(assert (=> bs!1831044 (= lambda!387310 lambda!387275)))

(declare-fun bs!1831045 () Bool)

(assert (= bs!1831045 (and d!2153155 d!2152603)))

(assert (=> bs!1831045 (= lambda!387310 lambda!387264)))

(declare-fun bs!1831046 () Bool)

(assert (= bs!1831046 (and d!2153155 d!2152671)))

(assert (=> bs!1831046 (= lambda!387310 lambda!387272)))

(declare-fun bs!1831047 () Bool)

(assert (= bs!1831047 (and d!2153155 d!2152375)))

(assert (=> bs!1831047 (= lambda!387310 lambda!387214)))

(declare-fun bs!1831048 () Bool)

(assert (= bs!1831048 (and d!2153155 d!2152405)))

(assert (=> bs!1831048 (not (= lambda!387310 lambda!387217))))

(declare-fun bs!1831049 () Bool)

(assert (= bs!1831049 (and d!2153155 d!2152621)))

(assert (=> bs!1831049 (= lambda!387310 lambda!387267)))

(declare-fun bs!1831050 () Bool)

(assert (= bs!1831050 (and d!2153155 d!2152591)))

(assert (=> bs!1831050 (not (= lambda!387310 lambda!387263))))

(declare-fun bs!1831051 () Bool)

(assert (= bs!1831051 (and d!2153155 d!2153089)))

(assert (=> bs!1831051 (= lambda!387310 lambda!387304)))

(declare-fun bs!1831052 () Bool)

(assert (= bs!1831052 (and d!2153155 d!2152585)))

(assert (=> bs!1831052 (= lambda!387310 lambda!387258)))

(declare-fun bs!1831053 () Bool)

(assert (= bs!1831053 (and d!2153155 d!2152407)))

(assert (=> bs!1831053 (= lambda!387310 lambda!387222)))

(declare-fun bs!1831054 () Bool)

(assert (= bs!1831054 (and d!2153155 d!2152409)))

(assert (=> bs!1831054 (= lambda!387310 lambda!387226)))

(declare-fun bs!1831055 () Bool)

(assert (= bs!1831055 (and d!2153155 d!2152411)))

(assert (=> bs!1831055 (= lambda!387310 lambda!387227)))

(declare-fun bs!1831056 () Bool)

(assert (= bs!1831056 (and d!2153155 d!2153105)))

(assert (=> bs!1831056 (not (= lambda!387310 lambda!387306))))

(assert (=> bs!1831053 (not (= lambda!387310 lambda!387223))))

(declare-fun bs!1831057 () Bool)

(assert (= bs!1831057 (and d!2153155 d!2153141)))

(assert (=> bs!1831057 (= lambda!387310 lambda!387309)))

(declare-fun bs!1831058 () Bool)

(assert (= bs!1831058 (and d!2153155 b!6847423)))

(assert (=> bs!1831058 (not (= lambda!387310 lambda!387176))))

(declare-fun bs!1831059 () Bool)

(assert (= bs!1831059 (and d!2153155 d!2152587)))

(assert (=> bs!1831059 (= lambda!387310 lambda!387259)))

(declare-fun b!6849847 () Bool)

(declare-fun e!4130708 () Bool)

(declare-fun lt!2456109 () Regex!16675)

(assert (=> b!6849847 (= e!4130708 (isEmptyExpr!2006 lt!2456109))))

(declare-fun b!6849848 () Bool)

(declare-fun e!4130707 () Bool)

(assert (=> b!6849848 (= e!4130708 e!4130707)))

(declare-fun c!1275211 () Bool)

(assert (=> b!6849848 (= c!1275211 (isEmpty!38575 (tail!12805 (exprs!6559 (h!72649 (t!380068 zl!343))))))))

(declare-fun b!6849849 () Bool)

(assert (=> b!6849849 (= e!4130707 (isConcat!1529 lt!2456109))))

(declare-fun b!6849850 () Bool)

(declare-fun e!4130710 () Bool)

(assert (=> b!6849850 (= e!4130710 (isEmpty!38575 (t!380067 (exprs!6559 (h!72649 (t!380068 zl!343))))))))

(declare-fun b!6849851 () Bool)

(declare-fun e!4130706 () Regex!16675)

(declare-fun e!4130709 () Regex!16675)

(assert (=> b!6849851 (= e!4130706 e!4130709)))

(declare-fun c!1275212 () Bool)

(assert (=> b!6849851 (= c!1275212 ((_ is Cons!66200) (exprs!6559 (h!72649 (t!380068 zl!343)))))))

(declare-fun b!6849852 () Bool)

(declare-fun e!4130705 () Bool)

(assert (=> b!6849852 (= e!4130705 e!4130708)))

(declare-fun c!1275213 () Bool)

(assert (=> b!6849852 (= c!1275213 (isEmpty!38575 (exprs!6559 (h!72649 (t!380068 zl!343)))))))

(assert (=> d!2153155 e!4130705))

(declare-fun res!2796123 () Bool)

(assert (=> d!2153155 (=> (not res!2796123) (not e!4130705))))

(assert (=> d!2153155 (= res!2796123 (validRegex!8411 lt!2456109))))

(assert (=> d!2153155 (= lt!2456109 e!4130706)))

(declare-fun c!1275214 () Bool)

(assert (=> d!2153155 (= c!1275214 e!4130710)))

(declare-fun res!2796122 () Bool)

(assert (=> d!2153155 (=> (not res!2796122) (not e!4130710))))

(assert (=> d!2153155 (= res!2796122 ((_ is Cons!66200) (exprs!6559 (h!72649 (t!380068 zl!343)))))))

(assert (=> d!2153155 (forall!15853 (exprs!6559 (h!72649 (t!380068 zl!343))) lambda!387310)))

(assert (=> d!2153155 (= (generalisedConcat!2266 (exprs!6559 (h!72649 (t!380068 zl!343)))) lt!2456109)))

(declare-fun b!6849853 () Bool)

(assert (=> b!6849853 (= e!4130707 (= lt!2456109 (head!13728 (exprs!6559 (h!72649 (t!380068 zl!343))))))))

(declare-fun b!6849854 () Bool)

(assert (=> b!6849854 (= e!4130709 EmptyExpr!16675)))

(declare-fun b!6849855 () Bool)

(assert (=> b!6849855 (= e!4130706 (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343)))))))

(declare-fun b!6849856 () Bool)

(assert (=> b!6849856 (= e!4130709 (Concat!25520 (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343)))) (generalisedConcat!2266 (t!380067 (exprs!6559 (h!72649 (t!380068 zl!343)))))))))

(assert (= (and d!2153155 res!2796122) b!6849850))

(assert (= (and d!2153155 c!1275214) b!6849855))

(assert (= (and d!2153155 (not c!1275214)) b!6849851))

(assert (= (and b!6849851 c!1275212) b!6849856))

(assert (= (and b!6849851 (not c!1275212)) b!6849854))

(assert (= (and d!2153155 res!2796123) b!6849852))

(assert (= (and b!6849852 c!1275213) b!6849847))

(assert (= (and b!6849852 (not c!1275213)) b!6849848))

(assert (= (and b!6849848 c!1275211) b!6849853))

(assert (= (and b!6849848 (not c!1275211)) b!6849849))

(declare-fun m!7589114 () Bool)

(assert (=> b!6849850 m!7589114))

(declare-fun m!7589116 () Bool)

(assert (=> b!6849856 m!7589116))

(declare-fun m!7589118 () Bool)

(assert (=> d!2153155 m!7589118))

(declare-fun m!7589122 () Bool)

(assert (=> d!2153155 m!7589122))

(declare-fun m!7589124 () Bool)

(assert (=> b!6849848 m!7589124))

(assert (=> b!6849848 m!7589124))

(declare-fun m!7589128 () Bool)

(assert (=> b!6849848 m!7589128))

(declare-fun m!7589130 () Bool)

(assert (=> b!6849847 m!7589130))

(declare-fun m!7589132 () Bool)

(assert (=> b!6849849 m!7589132))

(declare-fun m!7589134 () Bool)

(assert (=> b!6849853 m!7589134))

(declare-fun m!7589136 () Bool)

(assert (=> b!6849852 m!7589136))

(assert (=> bs!1830605 d!2153155))

(declare-fun d!2153163 () Bool)

(assert (=> d!2153163 (= (isEmptyExpr!2006 lt!2456050) ((_ is EmptyExpr!16675) lt!2456050))))

(assert (=> b!6848732 d!2153163))

(declare-fun b!6849881 () Bool)

(declare-fun lt!2456111 () Unit!160065)

(declare-fun Unit!160076 () Unit!160065)

(assert (=> b!6849881 (= lt!2456111 Unit!160076)))

(assert (=> b!6849881 false))

(declare-fun e!4130730 () Regex!16675)

(assert (=> b!6849881 (= e!4130730 (head!13728 (t!380067 (t!380067 lt!2455888))))))

(declare-fun b!6849882 () Bool)

(declare-fun e!4130732 () Bool)

(declare-fun lt!2456110 () Regex!16675)

(assert (=> b!6849882 (= e!4130732 (contains!20325 (t!380067 (t!380067 lt!2455888)) lt!2456110))))

(declare-fun b!6849883 () Bool)

(declare-fun e!4130731 () Bool)

(assert (=> b!6849883 (= e!4130731 (dynLambda!26455 lambda!387176 (h!72648 (t!380067 (t!380067 lt!2455888)))))))

(declare-fun d!2153169 () Bool)

(assert (=> d!2153169 e!4130732))

(declare-fun res!2796137 () Bool)

(assert (=> d!2153169 (=> (not res!2796137) (not e!4130732))))

(assert (=> d!2153169 (= res!2796137 (dynLambda!26455 lambda!387176 lt!2456110))))

(declare-fun e!4130729 () Regex!16675)

(assert (=> d!2153169 (= lt!2456110 e!4130729)))

(declare-fun c!1275222 () Bool)

(assert (=> d!2153169 (= c!1275222 e!4130731)))

(declare-fun res!2796136 () Bool)

(assert (=> d!2153169 (=> (not res!2796136) (not e!4130731))))

(assert (=> d!2153169 (= res!2796136 ((_ is Cons!66200) (t!380067 (t!380067 lt!2455888))))))

(assert (=> d!2153169 (exists!2776 (t!380067 (t!380067 lt!2455888)) lambda!387176)))

(assert (=> d!2153169 (= (getWitness!946 (t!380067 (t!380067 lt!2455888)) lambda!387176) lt!2456110)))

(declare-fun b!6849884 () Bool)

(assert (=> b!6849884 (= e!4130729 e!4130730)))

(declare-fun c!1275221 () Bool)

(assert (=> b!6849884 (= c!1275221 ((_ is Cons!66200) (t!380067 (t!380067 lt!2455888))))))

(declare-fun b!6849885 () Bool)

(assert (=> b!6849885 (= e!4130729 (h!72648 (t!380067 (t!380067 lt!2455888))))))

(declare-fun b!6849886 () Bool)

(assert (=> b!6849886 (= e!4130730 (getWitness!946 (t!380067 (t!380067 (t!380067 lt!2455888))) lambda!387176))))

(assert (= (and d!2153169 res!2796136) b!6849883))

(assert (= (and d!2153169 c!1275222) b!6849885))

(assert (= (and d!2153169 (not c!1275222)) b!6849884))

(assert (= (and b!6849884 c!1275221) b!6849886))

(assert (= (and b!6849884 (not c!1275221)) b!6849881))

(assert (= (and d!2153169 res!2796137) b!6849882))

(declare-fun b_lambda!258547 () Bool)

(assert (=> (not b_lambda!258547) (not b!6849883)))

(declare-fun b_lambda!258549 () Bool)

(assert (=> (not b_lambda!258549) (not d!2153169)))

(declare-fun m!7589148 () Bool)

(assert (=> b!6849883 m!7589148))

(declare-fun m!7589152 () Bool)

(assert (=> b!6849882 m!7589152))

(declare-fun m!7589154 () Bool)

(assert (=> b!6849886 m!7589154))

(declare-fun m!7589156 () Bool)

(assert (=> b!6849881 m!7589156))

(declare-fun m!7589158 () Bool)

(assert (=> d!2153169 m!7589158))

(declare-fun m!7589160 () Bool)

(assert (=> d!2153169 m!7589160))

(assert (=> b!6848611 d!2153169))

(declare-fun e!4130741 () Regex!16675)

(declare-fun call!623956 () Regex!16675)

(declare-fun b!6849902 () Bool)

(assert (=> b!6849902 (= e!4130741 (Union!16675 (Concat!25520 call!623956 (regTwo!33862 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))) EmptyLang!16675))))

(declare-fun bm!623951 () Bool)

(declare-fun call!623959 () Regex!16675)

(assert (=> bm!623951 (= call!623956 call!623959)))

(declare-fun bm!623952 () Bool)

(declare-fun call!623958 () Regex!16675)

(assert (=> bm!623952 (= call!623959 call!623958)))

(declare-fun b!6849903 () Bool)

(declare-fun e!4130743 () Regex!16675)

(assert (=> b!6849903 (= e!4130743 EmptyLang!16675)))

(declare-fun e!4130744 () Regex!16675)

(declare-fun b!6849904 () Bool)

(assert (=> b!6849904 (= e!4130744 (Concat!25520 call!623959 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun call!623957 () Regex!16675)

(declare-fun c!1275227 () Bool)

(declare-fun bm!623953 () Bool)

(assert (=> bm!623953 (= call!623957 (derivativeStep!5321 (ite c!1275227 (regOne!33863 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))) (head!13727 s!2326)))))

(declare-fun b!6849905 () Bool)

(declare-fun e!4130740 () Regex!16675)

(assert (=> b!6849905 (= e!4130740 (Union!16675 call!623957 call!623958))))

(declare-fun b!6849906 () Bool)

(assert (=> b!6849906 (= e!4130741 (Union!16675 (Concat!25520 call!623957 (regTwo!33862 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))) call!623956))))

(declare-fun b!6849907 () Bool)

(assert (=> b!6849907 (= c!1275227 ((_ is Union!16675) (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun e!4130742 () Regex!16675)

(assert (=> b!6849907 (= e!4130742 e!4130740)))

(declare-fun b!6849901 () Bool)

(assert (=> b!6849901 (= e!4130740 e!4130744)))

(declare-fun c!1275230 () Bool)

(assert (=> b!6849901 (= c!1275230 ((_ is Star!16675) (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun d!2153173 () Bool)

(declare-fun lt!2456113 () Regex!16675)

(assert (=> d!2153173 (validRegex!8411 lt!2456113)))

(assert (=> d!2153173 (= lt!2456113 e!4130743)))

(declare-fun c!1275226 () Bool)

(assert (=> d!2153173 (= c!1275226 (or ((_ is EmptyExpr!16675) (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))) ((_ is EmptyLang!16675) (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))

(assert (=> d!2153173 (validRegex!8411 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))))

(assert (=> d!2153173 (= (derivativeStep!5321 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)) (head!13727 s!2326)) lt!2456113)))

(declare-fun b!6849908 () Bool)

(declare-fun c!1275229 () Bool)

(assert (=> b!6849908 (= c!1275229 (nullable!6638 (regOne!33862 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))

(assert (=> b!6849908 (= e!4130744 e!4130741)))

(declare-fun bm!623954 () Bool)

(assert (=> bm!623954 (= call!623958 (derivativeStep!5321 (ite c!1275227 (regTwo!33863 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1275230 (reg!17004 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1275229 (regTwo!33862 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))))) (head!13727 s!2326)))))

(declare-fun b!6849909 () Bool)

(assert (=> b!6849909 (= e!4130743 e!4130742)))

(declare-fun c!1275228 () Bool)

(assert (=> b!6849909 (= c!1275228 ((_ is ElementMatch!16675) (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun b!6849910 () Bool)

(assert (=> b!6849910 (= e!4130742 (ite (= (head!13727 s!2326) (c!1274613 (ite c!1274879 (regOne!33863 r!7292) (regOne!33862 r!7292)))) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2153173 c!1275226) b!6849903))

(assert (= (and d!2153173 (not c!1275226)) b!6849909))

(assert (= (and b!6849909 c!1275228) b!6849910))

(assert (= (and b!6849909 (not c!1275228)) b!6849907))

(assert (= (and b!6849907 c!1275227) b!6849905))

(assert (= (and b!6849907 (not c!1275227)) b!6849901))

(assert (= (and b!6849901 c!1275230) b!6849904))

(assert (= (and b!6849901 (not c!1275230)) b!6849908))

(assert (= (and b!6849908 c!1275229) b!6849906))

(assert (= (and b!6849908 (not c!1275229)) b!6849902))

(assert (= (or b!6849906 b!6849902) bm!623951))

(assert (= (or b!6849904 bm!623951) bm!623952))

(assert (= (or b!6849905 bm!623952) bm!623954))

(assert (= (or b!6849905 b!6849906) bm!623953))

(assert (=> bm!623953 m!7587360))

(declare-fun m!7589164 () Bool)

(assert (=> bm!623953 m!7589164))

(declare-fun m!7589166 () Bool)

(assert (=> d!2153173 m!7589166))

(declare-fun m!7589168 () Bool)

(assert (=> d!2153173 m!7589168))

(declare-fun m!7589170 () Bool)

(assert (=> b!6849908 m!7589170))

(assert (=> bm!623954 m!7587360))

(declare-fun m!7589174 () Bool)

(assert (=> bm!623954 m!7589174))

(assert (=> bm!623701 d!2153173))

(declare-fun d!2153175 () Bool)

(declare-fun lt!2456114 () Bool)

(assert (=> d!2153175 (= lt!2456114 (select (content!12982 (t!380067 lt!2455888)) lt!2456036))))

(declare-fun e!4130746 () Bool)

(assert (=> d!2153175 (= lt!2456114 e!4130746)))

(declare-fun res!2796146 () Bool)

(assert (=> d!2153175 (=> (not res!2796146) (not e!4130746))))

(assert (=> d!2153175 (= res!2796146 ((_ is Cons!66200) (t!380067 lt!2455888)))))

(assert (=> d!2153175 (= (contains!20325 (t!380067 lt!2455888) lt!2456036) lt!2456114)))

(declare-fun b!6849911 () Bool)

(declare-fun e!4130745 () Bool)

(assert (=> b!6849911 (= e!4130746 e!4130745)))

(declare-fun res!2796147 () Bool)

(assert (=> b!6849911 (=> res!2796147 e!4130745)))

(assert (=> b!6849911 (= res!2796147 (= (h!72648 (t!380067 lt!2455888)) lt!2456036))))

(declare-fun b!6849912 () Bool)

(assert (=> b!6849912 (= e!4130745 (contains!20325 (t!380067 (t!380067 lt!2455888)) lt!2456036))))

(assert (= (and d!2153175 res!2796146) b!6849911))

(assert (= (and b!6849911 (not res!2796147)) b!6849912))

(assert (=> d!2153175 m!7587872))

(declare-fun m!7589178 () Bool)

(assert (=> d!2153175 m!7589178))

(declare-fun m!7589182 () Bool)

(assert (=> b!6849912 m!7589182))

(assert (=> b!6848607 d!2153175))

(declare-fun b!6849917 () Bool)

(declare-fun e!4130750 () Bool)

(declare-fun call!623960 () Bool)

(assert (=> b!6849917 (= e!4130750 call!623960)))

(declare-fun b!6849918 () Bool)

(declare-fun e!4130756 () Bool)

(declare-fun e!4130754 () Bool)

(assert (=> b!6849918 (= e!4130756 e!4130754)))

(declare-fun c!1275232 () Bool)

(assert (=> b!6849918 (= c!1275232 ((_ is Star!16675) (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))))))

(declare-fun b!6849919 () Bool)

(declare-fun e!4130751 () Bool)

(declare-fun call!623961 () Bool)

(assert (=> b!6849919 (= e!4130751 call!623961)))

(declare-fun b!6849920 () Bool)

(declare-fun e!4130755 () Bool)

(assert (=> b!6849920 (= e!4130755 e!4130751)))

(declare-fun res!2796150 () Bool)

(assert (=> b!6849920 (=> (not res!2796150) (not e!4130751))))

(declare-fun call!623962 () Bool)

(assert (=> b!6849920 (= res!2796150 call!623962)))

(declare-fun bm!623955 () Bool)

(declare-fun c!1275231 () Bool)

(assert (=> bm!623955 (= call!623962 (validRegex!8411 (ite c!1275231 (regOne!33863 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))) (regOne!33862 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))))))))

(declare-fun b!6849921 () Bool)

(assert (=> b!6849921 (= e!4130754 e!4130750)))

(declare-fun res!2796153 () Bool)

(assert (=> b!6849921 (= res!2796153 (not (nullable!6638 (reg!17004 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))))))))

(assert (=> b!6849921 (=> (not res!2796153) (not e!4130750))))

(declare-fun bm!623956 () Bool)

(assert (=> bm!623956 (= call!623961 call!623960)))

(declare-fun b!6849922 () Bool)

(declare-fun e!4130749 () Bool)

(assert (=> b!6849922 (= e!4130754 e!4130749)))

(assert (=> b!6849922 (= c!1275231 ((_ is Union!16675) (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))))))

(declare-fun b!6849923 () Bool)

(declare-fun e!4130757 () Bool)

(assert (=> b!6849923 (= e!4130757 call!623961)))

(declare-fun bm!623957 () Bool)

(assert (=> bm!623957 (= call!623960 (validRegex!8411 (ite c!1275232 (reg!17004 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))) (ite c!1275231 (regTwo!33863 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))) (regTwo!33862 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953)))))))))

(declare-fun b!6849924 () Bool)

(declare-fun res!2796152 () Bool)

(assert (=> b!6849924 (=> (not res!2796152) (not e!4130757))))

(assert (=> b!6849924 (= res!2796152 call!623962)))

(assert (=> b!6849924 (= e!4130749 e!4130757)))

(declare-fun d!2153179 () Bool)

(declare-fun res!2796154 () Bool)

(assert (=> d!2153179 (=> res!2796154 e!4130756)))

(assert (=> d!2153179 (= res!2796154 ((_ is ElementMatch!16675) (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))))))

(assert (=> d!2153179 (= (validRegex!8411 (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953))) e!4130756)))

(declare-fun b!6849925 () Bool)

(declare-fun res!2796151 () Bool)

(assert (=> b!6849925 (=> res!2796151 e!4130755)))

(assert (=> b!6849925 (= res!2796151 (not ((_ is Concat!25520) (ite c!1274911 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953)))))))

(assert (=> b!6849925 (= e!4130749 e!4130755)))

(assert (= (and d!2153179 (not res!2796154)) b!6849918))

(assert (= (and b!6849918 c!1275232) b!6849921))

(assert (= (and b!6849918 (not c!1275232)) b!6849922))

(assert (= (and b!6849921 res!2796153) b!6849917))

(assert (= (and b!6849922 c!1275231) b!6849924))

(assert (= (and b!6849922 (not c!1275231)) b!6849925))

(assert (= (and b!6849924 res!2796152) b!6849923))

(assert (= (and b!6849925 (not res!2796151)) b!6849920))

(assert (= (and b!6849920 res!2796150) b!6849919))

(assert (= (or b!6849923 b!6849919) bm!623956))

(assert (= (or b!6849924 b!6849920) bm!623955))

(assert (= (or b!6849917 bm!623956) bm!623957))

(declare-fun m!7589190 () Bool)

(assert (=> bm!623955 m!7589190))

(declare-fun m!7589192 () Bool)

(assert (=> b!6849921 m!7589192))

(declare-fun m!7589194 () Bool)

(assert (=> bm!623957 m!7589194))

(assert (=> bm!623714 d!2153179))

(assert (=> bm!623742 d!2152581))

(declare-fun d!2153185 () Bool)

(declare-fun res!2796157 () Bool)

(declare-fun e!4130758 () Bool)

(assert (=> d!2153185 (=> res!2796157 e!4130758)))

(assert (=> d!2153185 (= res!2796157 ((_ is Nil!66200) (exprs!6559 (h!72649 (t!380068 zl!343)))))))

(assert (=> d!2153185 (= (forall!15853 (exprs!6559 (h!72649 (t!380068 zl!343))) lambda!387264) e!4130758)))

(declare-fun b!6849926 () Bool)

(declare-fun e!4130759 () Bool)

(assert (=> b!6849926 (= e!4130758 e!4130759)))

(declare-fun res!2796158 () Bool)

(assert (=> b!6849926 (=> (not res!2796158) (not e!4130759))))

(assert (=> b!6849926 (= res!2796158 (dynLambda!26455 lambda!387264 (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343))))))))

(declare-fun b!6849927 () Bool)

(assert (=> b!6849927 (= e!4130759 (forall!15853 (t!380067 (exprs!6559 (h!72649 (t!380068 zl!343)))) lambda!387264))))

(assert (= (and d!2153185 (not res!2796157)) b!6849926))

(assert (= (and b!6849926 res!2796158) b!6849927))

(declare-fun b_lambda!258551 () Bool)

(assert (=> (not b_lambda!258551) (not b!6849926)))

(declare-fun m!7589196 () Bool)

(assert (=> b!6849926 m!7589196))

(declare-fun m!7589198 () Bool)

(assert (=> b!6849927 m!7589198))

(assert (=> d!2152603 d!2153185))

(assert (=> b!6848795 d!2152617))

(assert (=> b!6848795 d!2152611))

(assert (=> bm!623690 d!2152617))

(declare-fun bs!1831076 () Bool)

(declare-fun d!2153187 () Bool)

(assert (= bs!1831076 (and d!2153187 d!2152589)))

(declare-fun lambda!387312 () Int)

(assert (=> bs!1831076 (not (= lambda!387312 lambda!387260))))

(declare-fun bs!1831079 () Bool)

(assert (= bs!1831079 (and d!2153187 d!2152691)))

(assert (=> bs!1831079 (= lambda!387312 lambda!387275)))

(declare-fun bs!1831081 () Bool)

(assert (= bs!1831081 (and d!2153187 d!2152603)))

(assert (=> bs!1831081 (= lambda!387312 lambda!387264)))

(declare-fun bs!1831083 () Bool)

(assert (= bs!1831083 (and d!2153187 d!2152671)))

(assert (=> bs!1831083 (= lambda!387312 lambda!387272)))

(declare-fun bs!1831085 () Bool)

(assert (= bs!1831085 (and d!2153187 d!2152375)))

(assert (=> bs!1831085 (= lambda!387312 lambda!387214)))

(declare-fun bs!1831087 () Bool)

(assert (= bs!1831087 (and d!2153187 d!2152405)))

(assert (=> bs!1831087 (not (= lambda!387312 lambda!387217))))

(declare-fun bs!1831089 () Bool)

(assert (= bs!1831089 (and d!2153187 d!2153155)))

(assert (=> bs!1831089 (= lambda!387312 lambda!387310)))

(declare-fun bs!1831091 () Bool)

(assert (= bs!1831091 (and d!2153187 d!2152621)))

(assert (=> bs!1831091 (= lambda!387312 lambda!387267)))

(declare-fun bs!1831092 () Bool)

(assert (= bs!1831092 (and d!2153187 d!2152591)))

(assert (=> bs!1831092 (not (= lambda!387312 lambda!387263))))

(declare-fun bs!1831093 () Bool)

(assert (= bs!1831093 (and d!2153187 d!2153089)))

(assert (=> bs!1831093 (= lambda!387312 lambda!387304)))

(declare-fun bs!1831095 () Bool)

(assert (= bs!1831095 (and d!2153187 d!2152585)))

(assert (=> bs!1831095 (= lambda!387312 lambda!387258)))

(declare-fun bs!1831096 () Bool)

(assert (= bs!1831096 (and d!2153187 d!2152407)))

(assert (=> bs!1831096 (= lambda!387312 lambda!387222)))

(declare-fun bs!1831097 () Bool)

(assert (= bs!1831097 (and d!2153187 d!2152409)))

(assert (=> bs!1831097 (= lambda!387312 lambda!387226)))

(declare-fun bs!1831098 () Bool)

(assert (= bs!1831098 (and d!2153187 d!2152411)))

(assert (=> bs!1831098 (= lambda!387312 lambda!387227)))

(declare-fun bs!1831099 () Bool)

(assert (= bs!1831099 (and d!2153187 d!2153105)))

(assert (=> bs!1831099 (not (= lambda!387312 lambda!387306))))

(assert (=> bs!1831096 (not (= lambda!387312 lambda!387223))))

(declare-fun bs!1831100 () Bool)

(assert (= bs!1831100 (and d!2153187 d!2153141)))

(assert (=> bs!1831100 (= lambda!387312 lambda!387309)))

(declare-fun bs!1831101 () Bool)

(assert (= bs!1831101 (and d!2153187 b!6847423)))

(assert (=> bs!1831101 (not (= lambda!387312 lambda!387176))))

(declare-fun bs!1831102 () Bool)

(assert (= bs!1831102 (and d!2153187 d!2152587)))

(assert (=> bs!1831102 (= lambda!387312 lambda!387259)))

(declare-fun b!6849928 () Bool)

(declare-fun e!4130764 () Bool)

(declare-fun lt!2456116 () Regex!16675)

(assert (=> b!6849928 (= e!4130764 (= lt!2456116 (head!13728 (t!380067 (unfocusZipperList!2092 zl!343)))))))

(declare-fun b!6849929 () Bool)

(declare-fun e!4130760 () Bool)

(declare-fun e!4130765 () Bool)

(assert (=> b!6849929 (= e!4130760 e!4130765)))

(declare-fun c!1275234 () Bool)

(assert (=> b!6849929 (= c!1275234 (isEmpty!38575 (t!380067 (unfocusZipperList!2092 zl!343))))))

(declare-fun b!6849930 () Bool)

(declare-fun e!4130762 () Regex!16675)

(assert (=> b!6849930 (= e!4130762 EmptyLang!16675)))

(declare-fun b!6849931 () Bool)

(declare-fun e!4130763 () Bool)

(assert (=> b!6849931 (= e!4130763 (isEmpty!38575 (t!380067 (t!380067 (unfocusZipperList!2092 zl!343)))))))

(declare-fun b!6849932 () Bool)

(assert (=> b!6849932 (= e!4130764 (isUnion!1447 lt!2456116))))

(declare-fun b!6849933 () Bool)

(declare-fun e!4130761 () Regex!16675)

(assert (=> b!6849933 (= e!4130761 e!4130762)))

(declare-fun c!1275236 () Bool)

(assert (=> b!6849933 (= c!1275236 ((_ is Cons!66200) (t!380067 (unfocusZipperList!2092 zl!343))))))

(assert (=> d!2153187 e!4130760))

(declare-fun res!2796159 () Bool)

(assert (=> d!2153187 (=> (not res!2796159) (not e!4130760))))

(assert (=> d!2153187 (= res!2796159 (validRegex!8411 lt!2456116))))

(assert (=> d!2153187 (= lt!2456116 e!4130761)))

(declare-fun c!1275233 () Bool)

(assert (=> d!2153187 (= c!1275233 e!4130763)))

(declare-fun res!2796160 () Bool)

(assert (=> d!2153187 (=> (not res!2796160) (not e!4130763))))

(assert (=> d!2153187 (= res!2796160 ((_ is Cons!66200) (t!380067 (unfocusZipperList!2092 zl!343))))))

(assert (=> d!2153187 (forall!15853 (t!380067 (unfocusZipperList!2092 zl!343)) lambda!387312)))

(assert (=> d!2153187 (= (generalisedUnion!2513 (t!380067 (unfocusZipperList!2092 zl!343))) lt!2456116)))

(declare-fun b!6849934 () Bool)

(assert (=> b!6849934 (= e!4130765 (isEmptyLang!2017 lt!2456116))))

(declare-fun b!6849935 () Bool)

(assert (=> b!6849935 (= e!4130761 (h!72648 (t!380067 (unfocusZipperList!2092 zl!343))))))

(declare-fun b!6849936 () Bool)

(assert (=> b!6849936 (= e!4130765 e!4130764)))

(declare-fun c!1275235 () Bool)

(assert (=> b!6849936 (= c!1275235 (isEmpty!38575 (tail!12805 (t!380067 (unfocusZipperList!2092 zl!343)))))))

(declare-fun b!6849937 () Bool)

(assert (=> b!6849937 (= e!4130762 (Union!16675 (h!72648 (t!380067 (unfocusZipperList!2092 zl!343))) (generalisedUnion!2513 (t!380067 (t!380067 (unfocusZipperList!2092 zl!343))))))))

(assert (= (and d!2153187 res!2796160) b!6849931))

(assert (= (and d!2153187 c!1275233) b!6849935))

(assert (= (and d!2153187 (not c!1275233)) b!6849933))

(assert (= (and b!6849933 c!1275236) b!6849937))

(assert (= (and b!6849933 (not c!1275236)) b!6849930))

(assert (= (and d!2153187 res!2796159) b!6849929))

(assert (= (and b!6849929 c!1275234) b!6849934))

(assert (= (and b!6849929 (not c!1275234)) b!6849936))

(assert (= (and b!6849936 c!1275235) b!6849928))

(assert (= (and b!6849936 (not c!1275235)) b!6849932))

(declare-fun m!7589212 () Bool)

(assert (=> b!6849932 m!7589212))

(declare-fun m!7589214 () Bool)

(assert (=> b!6849928 m!7589214))

(declare-fun m!7589216 () Bool)

(assert (=> b!6849934 m!7589216))

(assert (=> b!6849929 m!7587986))

(declare-fun m!7589218 () Bool)

(assert (=> b!6849936 m!7589218))

(assert (=> b!6849936 m!7589218))

(declare-fun m!7589222 () Bool)

(assert (=> b!6849936 m!7589222))

(declare-fun m!7589226 () Bool)

(assert (=> b!6849937 m!7589226))

(declare-fun m!7589228 () Bool)

(assert (=> d!2153187 m!7589228))

(declare-fun m!7589230 () Bool)

(assert (=> d!2153187 m!7589230))

(declare-fun m!7589232 () Bool)

(assert (=> b!6849931 m!7589232))

(assert (=> b!6848605 d!2153187))

(assert (=> d!2152679 d!2152351))

(assert (=> d!2152679 d!2152323))

(declare-fun d!2153197 () Bool)

(assert (=> d!2153197 (= (nullable!6638 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))) (nullableFct!2522 (reg!17004 (ite c!1274719 (reg!17004 lt!2455885) (ite c!1274718 (regTwo!33863 lt!2455885) (regTwo!33862 lt!2455885))))))))

(declare-fun bs!1831103 () Bool)

(assert (= bs!1831103 d!2153197))

(declare-fun m!7589234 () Bool)

(assert (=> bs!1831103 m!7589234))

(assert (=> b!6848785 d!2153197))

(declare-fun d!2153199 () Bool)

(assert (=> d!2153199 (= (nullable!6638 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))) (nullableFct!2522 (reg!17004 (ite c!1274718 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))

(declare-fun bs!1831104 () Bool)

(assert (= bs!1831104 d!2153199))

(declare-fun m!7589236 () Bool)

(assert (=> bs!1831104 m!7589236))

(assert (=> b!6848683 d!2153199))

(declare-fun d!2153201 () Bool)

(declare-fun res!2796175 () Bool)

(declare-fun e!4130783 () Bool)

(assert (=> d!2153201 (=> res!2796175 e!4130783)))

(assert (=> d!2153201 (= res!2796175 ((_ is Nil!66200) (exprs!6559 setElem!47087)))))

(assert (=> d!2153201 (= (forall!15853 (exprs!6559 setElem!47087) lambda!387275) e!4130783)))

(declare-fun b!6849958 () Bool)

(declare-fun e!4130784 () Bool)

(assert (=> b!6849958 (= e!4130783 e!4130784)))

(declare-fun res!2796176 () Bool)

(assert (=> b!6849958 (=> (not res!2796176) (not e!4130784))))

(assert (=> b!6849958 (= res!2796176 (dynLambda!26455 lambda!387275 (h!72648 (exprs!6559 setElem!47087))))))

(declare-fun b!6849959 () Bool)

(assert (=> b!6849959 (= e!4130784 (forall!15853 (t!380067 (exprs!6559 setElem!47087)) lambda!387275))))

(assert (= (and d!2153201 (not res!2796175)) b!6849958))

(assert (= (and b!6849958 res!2796176) b!6849959))

(declare-fun b_lambda!258555 () Bool)

(assert (=> (not b_lambda!258555) (not b!6849958)))

(declare-fun m!7589242 () Bool)

(assert (=> b!6849958 m!7589242))

(declare-fun m!7589244 () Bool)

(assert (=> b!6849959 m!7589244))

(assert (=> d!2152691 d!2153201))

(assert (=> b!6848508 d!2152617))

(assert (=> b!6848508 d!2152611))

(declare-fun b!6849962 () Bool)

(declare-fun e!4130788 () Bool)

(declare-fun call!623968 () Bool)

(assert (=> b!6849962 (= e!4130788 call!623968)))

(declare-fun b!6849963 () Bool)

(declare-fun e!4130792 () Bool)

(declare-fun e!4130790 () Bool)

(assert (=> b!6849963 (= e!4130792 e!4130790)))

(declare-fun c!1275241 () Bool)

(assert (=> b!6849963 (= c!1275241 ((_ is Star!16675) (h!72648 (exprs!6559 setElem!47081))))))

(declare-fun b!6849964 () Bool)

(declare-fun e!4130789 () Bool)

(declare-fun call!623969 () Bool)

(assert (=> b!6849964 (= e!4130789 call!623969)))

(declare-fun b!6849965 () Bool)

(declare-fun e!4130791 () Bool)

(assert (=> b!6849965 (= e!4130791 e!4130789)))

(declare-fun res!2796179 () Bool)

(assert (=> b!6849965 (=> (not res!2796179) (not e!4130789))))

(declare-fun call!623970 () Bool)

(assert (=> b!6849965 (= res!2796179 call!623970)))

(declare-fun bm!623963 () Bool)

(declare-fun c!1275240 () Bool)

(assert (=> bm!623963 (= call!623970 (validRegex!8411 (ite c!1275240 (regOne!33863 (h!72648 (exprs!6559 setElem!47081))) (regOne!33862 (h!72648 (exprs!6559 setElem!47081))))))))

(declare-fun b!6849966 () Bool)

(assert (=> b!6849966 (= e!4130790 e!4130788)))

(declare-fun res!2796182 () Bool)

(assert (=> b!6849966 (= res!2796182 (not (nullable!6638 (reg!17004 (h!72648 (exprs!6559 setElem!47081))))))))

(assert (=> b!6849966 (=> (not res!2796182) (not e!4130788))))

(declare-fun bm!623964 () Bool)

(assert (=> bm!623964 (= call!623969 call!623968)))

(declare-fun b!6849967 () Bool)

(declare-fun e!4130787 () Bool)

(assert (=> b!6849967 (= e!4130790 e!4130787)))

(assert (=> b!6849967 (= c!1275240 ((_ is Union!16675) (h!72648 (exprs!6559 setElem!47081))))))

(declare-fun b!6849968 () Bool)

(declare-fun e!4130793 () Bool)

(assert (=> b!6849968 (= e!4130793 call!623969)))

(declare-fun bm!623965 () Bool)

(assert (=> bm!623965 (= call!623968 (validRegex!8411 (ite c!1275241 (reg!17004 (h!72648 (exprs!6559 setElem!47081))) (ite c!1275240 (regTwo!33863 (h!72648 (exprs!6559 setElem!47081))) (regTwo!33862 (h!72648 (exprs!6559 setElem!47081)))))))))

(declare-fun b!6849969 () Bool)

(declare-fun res!2796181 () Bool)

(assert (=> b!6849969 (=> (not res!2796181) (not e!4130793))))

(assert (=> b!6849969 (= res!2796181 call!623970)))

(assert (=> b!6849969 (= e!4130787 e!4130793)))

(declare-fun d!2153205 () Bool)

(declare-fun res!2796183 () Bool)

(assert (=> d!2153205 (=> res!2796183 e!4130792)))

(assert (=> d!2153205 (= res!2796183 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 setElem!47081))))))

(assert (=> d!2153205 (= (validRegex!8411 (h!72648 (exprs!6559 setElem!47081))) e!4130792)))

(declare-fun b!6849970 () Bool)

(declare-fun res!2796180 () Bool)

(assert (=> b!6849970 (=> res!2796180 e!4130791)))

(assert (=> b!6849970 (= res!2796180 (not ((_ is Concat!25520) (h!72648 (exprs!6559 setElem!47081)))))))

(assert (=> b!6849970 (= e!4130787 e!4130791)))

(assert (= (and d!2153205 (not res!2796183)) b!6849963))

(assert (= (and b!6849963 c!1275241) b!6849966))

(assert (= (and b!6849963 (not c!1275241)) b!6849967))

(assert (= (and b!6849966 res!2796182) b!6849962))

(assert (= (and b!6849967 c!1275240) b!6849969))

(assert (= (and b!6849967 (not c!1275240)) b!6849970))

(assert (= (and b!6849969 res!2796181) b!6849968))

(assert (= (and b!6849970 (not res!2796180)) b!6849965))

(assert (= (and b!6849965 res!2796179) b!6849964))

(assert (= (or b!6849968 b!6849964) bm!623964))

(assert (= (or b!6849969 b!6849965) bm!623963))

(assert (= (or b!6849962 bm!623964) bm!623965))

(declare-fun m!7589250 () Bool)

(assert (=> bm!623963 m!7589250))

(declare-fun m!7589252 () Bool)

(assert (=> b!6849966 m!7589252))

(declare-fun m!7589254 () Bool)

(assert (=> bm!623965 m!7589254))

(assert (=> bs!1830607 d!2153205))

(assert (=> b!6848504 d!2152617))

(assert (=> b!6848504 d!2152611))

(declare-fun d!2153209 () Bool)

(declare-fun c!1275242 () Bool)

(assert (=> d!2153209 (= c!1275242 ((_ is Nil!66201) zl!343))))

(declare-fun e!4130794 () (InoxSet Context!12118))

(assert (=> d!2153209 (= (content!12981 zl!343) e!4130794)))

(declare-fun b!6849971 () Bool)

(assert (=> b!6849971 (= e!4130794 ((as const (Array Context!12118 Bool)) false))))

(declare-fun b!6849972 () Bool)

(assert (=> b!6849972 (= e!4130794 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) (h!72649 zl!343) true) (content!12981 (t!380068 zl!343))))))

(assert (= (and d!2153209 c!1275242) b!6849971))

(assert (= (and d!2153209 (not c!1275242)) b!6849972))

(declare-fun m!7589256 () Bool)

(assert (=> b!6849972 m!7589256))

(assert (=> b!6849972 m!7588714))

(assert (=> d!2152665 d!2153209))

(assert (=> bm!623736 d!2152581))

(declare-fun b!6849973 () Bool)

(declare-fun e!4130797 () Int)

(declare-fun call!623971 () Int)

(assert (=> b!6849973 (= e!4130797 (+ 1 call!623971))))

(declare-fun d!2153211 () Bool)

(declare-fun lt!2456119 () Int)

(assert (=> d!2153211 (> lt!2456119 0)))

(declare-fun e!4130796 () Int)

(assert (=> d!2153211 (= lt!2456119 e!4130796)))

(declare-fun c!1275246 () Bool)

(assert (=> d!2153211 (= c!1275246 ((_ is ElementMatch!16675) (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))))))

(assert (=> d!2153211 (= (regexDepthTotal!249 (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))) lt!2456119)))

(declare-fun b!6849974 () Bool)

(declare-fun e!4130795 () Int)

(declare-fun call!623973 () Int)

(declare-fun call!623972 () Int)

(assert (=> b!6849974 (= e!4130795 (+ 1 call!623973 call!623972))))

(declare-fun b!6849975 () Bool)

(declare-fun e!4130798 () Int)

(assert (=> b!6849975 (= e!4130795 e!4130798)))

(declare-fun c!1275244 () Bool)

(assert (=> b!6849975 (= c!1275244 ((_ is Concat!25520) (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))))))

(declare-fun bm!623966 () Bool)

(declare-fun c!1275243 () Bool)

(declare-fun c!1275245 () Bool)

(assert (=> bm!623966 (= call!623971 (regexDepthTotal!249 (ite c!1275245 (reg!17004 (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))) (ite c!1275243 (regTwo!33863 (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))) (regTwo!33862 (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879))))))))))))

(declare-fun bm!623967 () Bool)

(assert (=> bm!623967 (= call!623973 (regexDepthTotal!249 (ite c!1275243 (regOne!33863 (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))) (regOne!33862 (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))))))))

(declare-fun b!6849976 () Bool)

(assert (=> b!6849976 (= e!4130796 1)))

(declare-fun bm!623968 () Bool)

(assert (=> bm!623968 (= call!623972 call!623971)))

(declare-fun b!6849977 () Bool)

(assert (=> b!6849977 (= e!4130796 e!4130797)))

(assert (=> b!6849977 (= c!1275245 ((_ is Star!16675) (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))))))

(declare-fun b!6849978 () Bool)

(assert (=> b!6849978 (= e!4130798 1)))

(declare-fun b!6849979 () Bool)

(assert (=> b!6849979 (= e!4130798 (+ 1 call!623973 call!623972))))

(declare-fun b!6849980 () Bool)

(assert (=> b!6849980 (= c!1275243 ((_ is Union!16675) (ite c!1274930 (reg!17004 (h!72648 (exprs!6559 lt!2455879))) (ite c!1274928 (regTwo!33863 (h!72648 (exprs!6559 lt!2455879))) (regTwo!33862 (h!72648 (exprs!6559 lt!2455879)))))))))

(assert (=> b!6849980 (= e!4130797 e!4130795)))

(assert (= (and d!2153211 c!1275246) b!6849976))

(assert (= (and d!2153211 (not c!1275246)) b!6849977))

(assert (= (and b!6849977 c!1275245) b!6849973))

(assert (= (and b!6849977 (not c!1275245)) b!6849980))

(assert (= (and b!6849980 c!1275243) b!6849974))

(assert (= (and b!6849980 (not c!1275243)) b!6849975))

(assert (= (and b!6849975 c!1275244) b!6849979))

(assert (= (and b!6849975 (not c!1275244)) b!6849978))

(assert (= (or b!6849974 b!6849979) bm!623968))

(assert (= (or b!6849974 b!6849979) bm!623967))

(assert (= (or b!6849973 bm!623968) bm!623966))

(declare-fun m!7589258 () Bool)

(assert (=> bm!623966 m!7589258))

(declare-fun m!7589260 () Bool)

(assert (=> bm!623967 m!7589260))

(assert (=> bm!623726 d!2153211))

(declare-fun d!2153213 () Bool)

(assert (=> d!2153213 (= (isEmpty!38575 (unfocusZipperList!2092 zl!343)) ((_ is Nil!66200) (unfocusZipperList!2092 zl!343)))))

(assert (=> b!6848597 d!2153213))

(declare-fun bs!1831130 () Bool)

(declare-fun d!2153215 () Bool)

(assert (= bs!1831130 (and d!2153215 d!2152589)))

(declare-fun lambda!387314 () Int)

(assert (=> bs!1831130 (not (= lambda!387314 lambda!387260))))

(declare-fun bs!1831131 () Bool)

(assert (= bs!1831131 (and d!2153215 d!2152691)))

(assert (=> bs!1831131 (= lambda!387314 lambda!387275)))

(declare-fun bs!1831133 () Bool)

(assert (= bs!1831133 (and d!2153215 d!2152603)))

(assert (=> bs!1831133 (= lambda!387314 lambda!387264)))

(declare-fun bs!1831134 () Bool)

(assert (= bs!1831134 (and d!2153215 d!2152671)))

(assert (=> bs!1831134 (= lambda!387314 lambda!387272)))

(declare-fun bs!1831135 () Bool)

(assert (= bs!1831135 (and d!2153215 d!2152375)))

(assert (=> bs!1831135 (= lambda!387314 lambda!387214)))

(declare-fun bs!1831136 () Bool)

(assert (= bs!1831136 (and d!2153215 d!2152405)))

(assert (=> bs!1831136 (not (= lambda!387314 lambda!387217))))

(declare-fun bs!1831137 () Bool)

(assert (= bs!1831137 (and d!2153215 d!2152621)))

(assert (=> bs!1831137 (= lambda!387314 lambda!387267)))

(declare-fun bs!1831138 () Bool)

(assert (= bs!1831138 (and d!2153215 d!2152591)))

(assert (=> bs!1831138 (not (= lambda!387314 lambda!387263))))

(declare-fun bs!1831139 () Bool)

(assert (= bs!1831139 (and d!2153215 d!2153089)))

(assert (=> bs!1831139 (= lambda!387314 lambda!387304)))

(declare-fun bs!1831140 () Bool)

(assert (= bs!1831140 (and d!2153215 d!2152585)))

(assert (=> bs!1831140 (= lambda!387314 lambda!387258)))

(declare-fun bs!1831141 () Bool)

(assert (= bs!1831141 (and d!2153215 d!2152407)))

(assert (=> bs!1831141 (= lambda!387314 lambda!387222)))

(declare-fun bs!1831142 () Bool)

(assert (= bs!1831142 (and d!2153215 d!2152409)))

(assert (=> bs!1831142 (= lambda!387314 lambda!387226)))

(declare-fun bs!1831143 () Bool)

(assert (= bs!1831143 (and d!2153215 d!2152411)))

(assert (=> bs!1831143 (= lambda!387314 lambda!387227)))

(declare-fun bs!1831144 () Bool)

(assert (= bs!1831144 (and d!2153215 d!2153105)))

(assert (=> bs!1831144 (not (= lambda!387314 lambda!387306))))

(assert (=> bs!1831141 (not (= lambda!387314 lambda!387223))))

(declare-fun bs!1831145 () Bool)

(assert (= bs!1831145 (and d!2153215 d!2153141)))

(assert (=> bs!1831145 (= lambda!387314 lambda!387309)))

(declare-fun bs!1831146 () Bool)

(assert (= bs!1831146 (and d!2153215 d!2153187)))

(assert (=> bs!1831146 (= lambda!387314 lambda!387312)))

(declare-fun bs!1831147 () Bool)

(assert (= bs!1831147 (and d!2153215 d!2153155)))

(assert (=> bs!1831147 (= lambda!387314 lambda!387310)))

(declare-fun bs!1831148 () Bool)

(assert (= bs!1831148 (and d!2153215 b!6847423)))

(assert (=> bs!1831148 (not (= lambda!387314 lambda!387176))))

(declare-fun bs!1831149 () Bool)

(assert (= bs!1831149 (and d!2153215 d!2152587)))

(assert (=> bs!1831149 (= lambda!387314 lambda!387259)))

(declare-fun b!6849981 () Bool)

(declare-fun e!4130802 () Bool)

(declare-fun lt!2456120 () Regex!16675)

(assert (=> b!6849981 (= e!4130802 (isEmptyExpr!2006 lt!2456120))))

(declare-fun b!6849982 () Bool)

(declare-fun e!4130801 () Bool)

(assert (=> b!6849982 (= e!4130802 e!4130801)))

(declare-fun c!1275247 () Bool)

(assert (=> b!6849982 (= c!1275247 (isEmpty!38575 (tail!12805 (t!380067 (exprs!6559 lt!2455960)))))))

(declare-fun b!6849983 () Bool)

(assert (=> b!6849983 (= e!4130801 (isConcat!1529 lt!2456120))))

(declare-fun b!6849984 () Bool)

(declare-fun e!4130804 () Bool)

(assert (=> b!6849984 (= e!4130804 (isEmpty!38575 (t!380067 (t!380067 (exprs!6559 lt!2455960)))))))

(declare-fun b!6849985 () Bool)

(declare-fun e!4130800 () Regex!16675)

(declare-fun e!4130803 () Regex!16675)

(assert (=> b!6849985 (= e!4130800 e!4130803)))

(declare-fun c!1275248 () Bool)

(assert (=> b!6849985 (= c!1275248 ((_ is Cons!66200) (t!380067 (exprs!6559 lt!2455960))))))

(declare-fun b!6849986 () Bool)

(declare-fun e!4130799 () Bool)

(assert (=> b!6849986 (= e!4130799 e!4130802)))

(declare-fun c!1275249 () Bool)

(assert (=> b!6849986 (= c!1275249 (isEmpty!38575 (t!380067 (exprs!6559 lt!2455960))))))

(assert (=> d!2153215 e!4130799))

(declare-fun res!2796185 () Bool)

(assert (=> d!2153215 (=> (not res!2796185) (not e!4130799))))

(assert (=> d!2153215 (= res!2796185 (validRegex!8411 lt!2456120))))

(assert (=> d!2153215 (= lt!2456120 e!4130800)))

(declare-fun c!1275250 () Bool)

(assert (=> d!2153215 (= c!1275250 e!4130804)))

(declare-fun res!2796184 () Bool)

(assert (=> d!2153215 (=> (not res!2796184) (not e!4130804))))

(assert (=> d!2153215 (= res!2796184 ((_ is Cons!66200) (t!380067 (exprs!6559 lt!2455960))))))

(assert (=> d!2153215 (forall!15853 (t!380067 (exprs!6559 lt!2455960)) lambda!387314)))

(assert (=> d!2153215 (= (generalisedConcat!2266 (t!380067 (exprs!6559 lt!2455960))) lt!2456120)))

(declare-fun b!6849987 () Bool)

(assert (=> b!6849987 (= e!4130801 (= lt!2456120 (head!13728 (t!380067 (exprs!6559 lt!2455960)))))))

(declare-fun b!6849988 () Bool)

(assert (=> b!6849988 (= e!4130803 EmptyExpr!16675)))

(declare-fun b!6849989 () Bool)

(assert (=> b!6849989 (= e!4130800 (h!72648 (t!380067 (exprs!6559 lt!2455960))))))

(declare-fun b!6849990 () Bool)

(assert (=> b!6849990 (= e!4130803 (Concat!25520 (h!72648 (t!380067 (exprs!6559 lt!2455960))) (generalisedConcat!2266 (t!380067 (t!380067 (exprs!6559 lt!2455960))))))))

(assert (= (and d!2153215 res!2796184) b!6849984))

(assert (= (and d!2153215 c!1275250) b!6849989))

(assert (= (and d!2153215 (not c!1275250)) b!6849985))

(assert (= (and b!6849985 c!1275248) b!6849990))

(assert (= (and b!6849985 (not c!1275248)) b!6849988))

(assert (= (and d!2153215 res!2796185) b!6849986))

(assert (= (and b!6849986 c!1275249) b!6849981))

(assert (= (and b!6849986 (not c!1275249)) b!6849982))

(assert (= (and b!6849982 c!1275247) b!6849987))

(assert (= (and b!6849982 (not c!1275247)) b!6849983))

(declare-fun m!7589274 () Bool)

(assert (=> b!6849984 m!7589274))

(declare-fun m!7589276 () Bool)

(assert (=> b!6849990 m!7589276))

(declare-fun m!7589278 () Bool)

(assert (=> d!2153215 m!7589278))

(declare-fun m!7589280 () Bool)

(assert (=> d!2153215 m!7589280))

(declare-fun m!7589284 () Bool)

(assert (=> b!6849982 m!7589284))

(assert (=> b!6849982 m!7589284))

(declare-fun m!7589288 () Bool)

(assert (=> b!6849982 m!7589288))

(declare-fun m!7589290 () Bool)

(assert (=> b!6849981 m!7589290))

(declare-fun m!7589294 () Bool)

(assert (=> b!6849983 m!7589294))

(declare-fun m!7589296 () Bool)

(assert (=> b!6849987 m!7589296))

(assert (=> b!6849986 m!7588098))

(assert (=> b!6848741 d!2153215))

(declare-fun b!6850010 () Bool)

(declare-fun e!4130821 () Bool)

(declare-fun e!4130820 () Bool)

(assert (=> b!6850010 (= e!4130821 e!4130820)))

(declare-fun c!1275259 () Bool)

(assert (=> b!6850010 (= c!1275259 ((_ is EmptyLang!16675) (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))

(declare-fun b!6850011 () Bool)

(declare-fun res!2796191 () Bool)

(declare-fun e!4130819 () Bool)

(assert (=> b!6850011 (=> res!2796191 e!4130819)))

(assert (=> b!6850011 (= res!2796191 (not ((_ is ElementMatch!16675) (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))))))))

(assert (=> b!6850011 (= e!4130820 e!4130819)))

(declare-fun b!6850012 () Bool)

(declare-fun lt!2456122 () Bool)

(assert (=> b!6850012 (= e!4130820 (not lt!2456122))))

(declare-fun b!6850013 () Bool)

(declare-fun res!2796194 () Bool)

(declare-fun e!4130822 () Bool)

(assert (=> b!6850013 (=> (not res!2796194) (not e!4130822))))

(declare-fun call!623981 () Bool)

(assert (=> b!6850013 (= res!2796194 (not call!623981))))

(declare-fun b!6850014 () Bool)

(declare-fun e!4130823 () Bool)

(assert (=> b!6850014 (= e!4130823 (not (= (head!13727 (tail!12804 (tail!12804 s!2326))) (c!1274613 (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))))

(declare-fun b!6850015 () Bool)

(declare-fun res!2796193 () Bool)

(assert (=> b!6850015 (=> (not res!2796193) (not e!4130822))))

(assert (=> b!6850015 (= res!2796193 (isEmpty!38573 (tail!12804 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun b!6850016 () Bool)

(declare-fun res!2796197 () Bool)

(assert (=> b!6850016 (=> res!2796197 e!4130819)))

(assert (=> b!6850016 (= res!2796197 e!4130822)))

(declare-fun res!2796195 () Bool)

(assert (=> b!6850016 (=> (not res!2796195) (not e!4130822))))

(assert (=> b!6850016 (= res!2796195 lt!2456122)))

(declare-fun b!6850017 () Bool)

(declare-fun e!4130817 () Bool)

(assert (=> b!6850017 (= e!4130817 (nullable!6638 (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))

(declare-fun b!6850018 () Bool)

(assert (=> b!6850018 (= e!4130822 (= (head!13727 (tail!12804 (tail!12804 s!2326))) (c!1274613 (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))))))))

(declare-fun b!6850019 () Bool)

(declare-fun res!2796198 () Bool)

(assert (=> b!6850019 (=> res!2796198 e!4130823)))

(assert (=> b!6850019 (= res!2796198 (not (isEmpty!38573 (tail!12804 (tail!12804 (tail!12804 s!2326))))))))

(declare-fun d!2153223 () Bool)

(assert (=> d!2153223 e!4130821))

(declare-fun c!1275258 () Bool)

(assert (=> d!2153223 (= c!1275258 ((_ is EmptyExpr!16675) (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326)))))))

(assert (=> d!2153223 (= lt!2456122 e!4130817)))

(declare-fun c!1275260 () Bool)

(assert (=> d!2153223 (= c!1275260 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(assert (=> d!2153223 (validRegex!8411 (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))))))

(assert (=> d!2153223 (= (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (tail!12804 (tail!12804 s!2326))) lt!2456122)))

(declare-fun bm!623976 () Bool)

(assert (=> bm!623976 (= call!623981 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6850020 () Bool)

(declare-fun e!4130818 () Bool)

(assert (=> b!6850020 (= e!4130818 e!4130823)))

(declare-fun res!2796192 () Bool)

(assert (=> b!6850020 (=> res!2796192 e!4130823)))

(assert (=> b!6850020 (= res!2796192 call!623981)))

(declare-fun b!6850021 () Bool)

(assert (=> b!6850021 (= e!4130817 (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (head!13727 (tail!12804 (tail!12804 s!2326)))) (tail!12804 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun b!6850022 () Bool)

(assert (=> b!6850022 (= e!4130819 e!4130818)))

(declare-fun res!2796196 () Bool)

(assert (=> b!6850022 (=> (not res!2796196) (not e!4130818))))

(assert (=> b!6850022 (= res!2796196 (not lt!2456122))))

(declare-fun b!6850023 () Bool)

(assert (=> b!6850023 (= e!4130821 (= lt!2456122 call!623981))))

(assert (= (and d!2153223 c!1275260) b!6850017))

(assert (= (and d!2153223 (not c!1275260)) b!6850021))

(assert (= (and d!2153223 c!1275258) b!6850023))

(assert (= (and d!2153223 (not c!1275258)) b!6850010))

(assert (= (and b!6850010 c!1275259) b!6850012))

(assert (= (and b!6850010 (not c!1275259)) b!6850011))

(assert (= (and b!6850011 (not res!2796191)) b!6850016))

(assert (= (and b!6850016 res!2796195) b!6850013))

(assert (= (and b!6850013 res!2796194) b!6850015))

(assert (= (and b!6850015 res!2796193) b!6850018))

(assert (= (and b!6850016 (not res!2796197)) b!6850022))

(assert (= (and b!6850022 res!2796196) b!6850020))

(assert (= (and b!6850020 (not res!2796192)) b!6850019))

(assert (= (and b!6850019 (not res!2796198)) b!6850014))

(assert (= (or b!6850023 b!6850013 b!6850020) bm!623976))

(assert (=> bm!623976 m!7587936))

(assert (=> bm!623976 m!7587942))

(assert (=> b!6850021 m!7587936))

(assert (=> b!6850021 m!7588600))

(assert (=> b!6850021 m!7588000))

(assert (=> b!6850021 m!7588600))

(declare-fun m!7589300 () Bool)

(assert (=> b!6850021 m!7589300))

(assert (=> b!6850021 m!7587936))

(assert (=> b!6850021 m!7588606))

(assert (=> b!6850021 m!7589300))

(assert (=> b!6850021 m!7588606))

(declare-fun m!7589302 () Bool)

(assert (=> b!6850021 m!7589302))

(assert (=> b!6850017 m!7588000))

(declare-fun m!7589304 () Bool)

(assert (=> b!6850017 m!7589304))

(assert (=> b!6850015 m!7587936))

(assert (=> b!6850015 m!7588606))

(assert (=> b!6850015 m!7588606))

(assert (=> b!6850015 m!7588612))

(assert (=> b!6850019 m!7587936))

(assert (=> b!6850019 m!7588606))

(assert (=> b!6850019 m!7588606))

(assert (=> b!6850019 m!7588612))

(assert (=> d!2153223 m!7587936))

(assert (=> d!2153223 m!7587942))

(assert (=> d!2153223 m!7588000))

(declare-fun m!7589306 () Bool)

(assert (=> d!2153223 m!7589306))

(assert (=> b!6850018 m!7587936))

(assert (=> b!6850018 m!7588600))

(assert (=> b!6850014 m!7587936))

(assert (=> b!6850014 m!7588600))

(assert (=> b!6848623 d!2153223))

(declare-fun call!623986 () Regex!16675)

(declare-fun e!4130830 () Regex!16675)

(declare-fun b!6850035 () Bool)

(assert (=> b!6850035 (= e!4130830 (Union!16675 (Concat!25520 call!623986 (regTwo!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))) EmptyLang!16675))))

(declare-fun bm!623981 () Bool)

(declare-fun call!623989 () Regex!16675)

(assert (=> bm!623981 (= call!623986 call!623989)))

(declare-fun bm!623982 () Bool)

(declare-fun call!623988 () Regex!16675)

(assert (=> bm!623982 (= call!623989 call!623988)))

(declare-fun b!6850036 () Bool)

(declare-fun e!4130832 () Regex!16675)

(assert (=> b!6850036 (= e!4130832 EmptyLang!16675)))

(declare-fun b!6850037 () Bool)

(declare-fun e!4130833 () Regex!16675)

(assert (=> b!6850037 (= e!4130833 (Concat!25520 call!623989 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun c!1275267 () Bool)

(declare-fun call!623987 () Regex!16675)

(declare-fun bm!623983 () Bool)

(assert (=> bm!623983 (= call!623987 (derivativeStep!5321 (ite c!1275267 (regOne!33863 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (regOne!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))) (head!13727 (tail!12804 s!2326))))))

(declare-fun b!6850038 () Bool)

(declare-fun e!4130829 () Regex!16675)

(assert (=> b!6850038 (= e!4130829 (Union!16675 call!623987 call!623988))))

(declare-fun b!6850039 () Bool)

(assert (=> b!6850039 (= e!4130830 (Union!16675 (Concat!25520 call!623987 (regTwo!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))) call!623986))))

(declare-fun b!6850040 () Bool)

(assert (=> b!6850040 (= c!1275267 ((_ is Union!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun e!4130831 () Regex!16675)

(assert (=> b!6850040 (= e!4130831 e!4130829)))

(declare-fun b!6850034 () Bool)

(assert (=> b!6850034 (= e!4130829 e!4130833)))

(declare-fun c!1275270 () Bool)

(assert (=> b!6850034 (= c!1275270 ((_ is Star!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun d!2153227 () Bool)

(declare-fun lt!2456124 () Regex!16675)

(assert (=> d!2153227 (validRegex!8411 lt!2456124)))

(assert (=> d!2153227 (= lt!2456124 e!4130832)))

(declare-fun c!1275266 () Bool)

(assert (=> d!2153227 (= c!1275266 (or ((_ is EmptyExpr!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) ((_ is EmptyLang!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))))

(assert (=> d!2153227 (validRegex!8411 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))

(assert (=> d!2153227 (= (derivativeStep!5321 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) lt!2456124)))

(declare-fun b!6850041 () Bool)

(declare-fun c!1275269 () Bool)

(assert (=> b!6850041 (= c!1275269 (nullable!6638 (regOne!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))))

(assert (=> b!6850041 (= e!4130833 e!4130830)))

(declare-fun bm!623984 () Bool)

(assert (=> bm!623984 (= call!623988 (derivativeStep!5321 (ite c!1275267 (regTwo!33863 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (ite c!1275270 (reg!17004 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (ite c!1275269 (regTwo!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (regOne!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))) (head!13727 (tail!12804 s!2326))))))

(declare-fun b!6850042 () Bool)

(assert (=> b!6850042 (= e!4130832 e!4130831)))

(declare-fun c!1275268 () Bool)

(assert (=> b!6850042 (= c!1275268 ((_ is ElementMatch!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun b!6850043 () Bool)

(assert (=> b!6850043 (= e!4130831 (ite (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2153227 c!1275266) b!6850036))

(assert (= (and d!2153227 (not c!1275266)) b!6850042))

(assert (= (and b!6850042 c!1275268) b!6850043))

(assert (= (and b!6850042 (not c!1275268)) b!6850040))

(assert (= (and b!6850040 c!1275267) b!6850038))

(assert (= (and b!6850040 (not c!1275267)) b!6850034))

(assert (= (and b!6850034 c!1275270) b!6850037))

(assert (= (and b!6850034 (not c!1275270)) b!6850041))

(assert (= (and b!6850041 c!1275269) b!6850039))

(assert (= (and b!6850041 (not c!1275269)) b!6850035))

(assert (= (or b!6850039 b!6850035) bm!623981))

(assert (= (or b!6850037 bm!623981) bm!623982))

(assert (= (or b!6850038 bm!623982) bm!623984))

(assert (= (or b!6850038 b!6850039) bm!623983))

(assert (=> bm!623983 m!7587932))

(declare-fun m!7589320 () Bool)

(assert (=> bm!623983 m!7589320))

(declare-fun m!7589322 () Bool)

(assert (=> d!2153227 m!7589322))

(assert (=> d!2153227 m!7587508))

(assert (=> d!2153227 m!7588006))

(declare-fun m!7589324 () Bool)

(assert (=> b!6850041 m!7589324))

(assert (=> bm!623984 m!7587932))

(declare-fun m!7589326 () Bool)

(assert (=> bm!623984 m!7589326))

(assert (=> b!6848623 d!2153227))

(assert (=> b!6848623 d!2152955))

(assert (=> b!6848623 d!2152927))

(declare-fun bm!623988 () Bool)

(declare-fun call!623994 () Bool)

(declare-fun c!1275273 () Bool)

(assert (=> bm!623988 (= call!623994 (nullable!6638 (ite c!1275273 (regOne!33863 (reg!17004 lt!2455885)) (regOne!33862 (reg!17004 lt!2455885)))))))

(declare-fun b!6850054 () Bool)

(declare-fun e!4130842 () Bool)

(declare-fun e!4130844 () Bool)

(assert (=> b!6850054 (= e!4130842 e!4130844)))

(declare-fun res!2796208 () Bool)

(assert (=> b!6850054 (=> res!2796208 e!4130844)))

(assert (=> b!6850054 (= res!2796208 ((_ is Star!16675) (reg!17004 lt!2455885)))))

(declare-fun b!6850055 () Bool)

(declare-fun e!4130841 () Bool)

(declare-fun e!4130843 () Bool)

(assert (=> b!6850055 (= e!4130841 e!4130843)))

(declare-fun res!2796207 () Bool)

(assert (=> b!6850055 (= res!2796207 call!623994)))

(assert (=> b!6850055 (=> res!2796207 e!4130843)))

(declare-fun b!6850056 () Bool)

(declare-fun e!4130846 () Bool)

(assert (=> b!6850056 (= e!4130841 e!4130846)))

(declare-fun res!2796206 () Bool)

(assert (=> b!6850056 (= res!2796206 call!623994)))

(assert (=> b!6850056 (=> (not res!2796206) (not e!4130846))))

(declare-fun b!6850057 () Bool)

(declare-fun e!4130845 () Bool)

(assert (=> b!6850057 (= e!4130845 e!4130842)))

(declare-fun res!2796205 () Bool)

(assert (=> b!6850057 (=> (not res!2796205) (not e!4130842))))

(assert (=> b!6850057 (= res!2796205 (and (not ((_ is EmptyLang!16675) (reg!17004 lt!2455885))) (not ((_ is ElementMatch!16675) (reg!17004 lt!2455885)))))))

(declare-fun b!6850058 () Bool)

(declare-fun call!623993 () Bool)

(assert (=> b!6850058 (= e!4130846 call!623993)))

(declare-fun bm!623989 () Bool)

(assert (=> bm!623989 (= call!623993 (nullable!6638 (ite c!1275273 (regTwo!33863 (reg!17004 lt!2455885)) (regTwo!33862 (reg!17004 lt!2455885)))))))

(declare-fun b!6850059 () Bool)

(assert (=> b!6850059 (= e!4130843 call!623993)))

(declare-fun b!6850053 () Bool)

(assert (=> b!6850053 (= e!4130844 e!4130841)))

(assert (=> b!6850053 (= c!1275273 ((_ is Union!16675) (reg!17004 lt!2455885)))))

(declare-fun d!2153235 () Bool)

(declare-fun res!2796204 () Bool)

(assert (=> d!2153235 (=> res!2796204 e!4130845)))

(assert (=> d!2153235 (= res!2796204 ((_ is EmptyExpr!16675) (reg!17004 lt!2455885)))))

(assert (=> d!2153235 (= (nullableFct!2522 (reg!17004 lt!2455885)) e!4130845)))

(assert (= (and d!2153235 (not res!2796204)) b!6850057))

(assert (= (and b!6850057 res!2796205) b!6850054))

(assert (= (and b!6850054 (not res!2796208)) b!6850053))

(assert (= (and b!6850053 c!1275273) b!6850055))

(assert (= (and b!6850053 (not c!1275273)) b!6850056))

(assert (= (and b!6850055 (not res!2796207)) b!6850059))

(assert (= (and b!6850056 res!2796206) b!6850058))

(assert (= (or b!6850059 b!6850058) bm!623989))

(assert (= (or b!6850055 b!6850056) bm!623988))

(declare-fun m!7589334 () Bool)

(assert (=> bm!623988 m!7589334))

(declare-fun m!7589336 () Bool)

(assert (=> bm!623989 m!7589336))

(assert (=> d!2152579 d!2153235))

(declare-fun d!2153237 () Bool)

(assert (=> d!2153237 (= (isEmpty!38575 (exprs!6559 lt!2455960)) ((_ is Nil!66200) (exprs!6559 lt!2455960)))))

(assert (=> b!6848737 d!2153237))

(declare-fun call!623995 () Regex!16675)

(declare-fun e!4130848 () Regex!16675)

(declare-fun b!6850061 () Bool)

(assert (=> b!6850061 (= e!4130848 (Union!16675 (Concat!25520 call!623995 (regTwo!33862 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))) EmptyLang!16675))))

(declare-fun bm!623990 () Bool)

(declare-fun call!623998 () Regex!16675)

(assert (=> bm!623990 (= call!623995 call!623998)))

(declare-fun bm!623991 () Bool)

(declare-fun call!623997 () Regex!16675)

(assert (=> bm!623991 (= call!623998 call!623997)))

(declare-fun b!6850062 () Bool)

(declare-fun e!4130850 () Regex!16675)

(assert (=> b!6850062 (= e!4130850 EmptyLang!16675)))

(declare-fun b!6850063 () Bool)

(declare-fun e!4130851 () Regex!16675)

(assert (=> b!6850063 (= e!4130851 (Concat!25520 call!623998 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))))))

(declare-fun call!623996 () Regex!16675)

(declare-fun bm!623992 () Bool)

(declare-fun c!1275275 () Bool)

(assert (=> bm!623992 (= call!623996 (derivativeStep!5321 (ite c!1275275 (regOne!33863 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))) (regOne!33862 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))) (head!13727 s!2326)))))

(declare-fun b!6850064 () Bool)

(declare-fun e!4130847 () Regex!16675)

(assert (=> b!6850064 (= e!4130847 (Union!16675 call!623996 call!623997))))

(declare-fun b!6850065 () Bool)

(assert (=> b!6850065 (= e!4130848 (Union!16675 (Concat!25520 call!623996 (regTwo!33862 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))) call!623995))))

(declare-fun b!6850066 () Bool)

(assert (=> b!6850066 (= c!1275275 ((_ is Union!16675) (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))))))

(declare-fun e!4130849 () Regex!16675)

(assert (=> b!6850066 (= e!4130849 e!4130847)))

(declare-fun b!6850060 () Bool)

(assert (=> b!6850060 (= e!4130847 e!4130851)))

(declare-fun c!1275278 () Bool)

(assert (=> b!6850060 (= c!1275278 ((_ is Star!16675) (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))))))

(declare-fun d!2153239 () Bool)

(declare-fun lt!2456125 () Regex!16675)

(assert (=> d!2153239 (validRegex!8411 lt!2456125)))

(assert (=> d!2153239 (= lt!2456125 e!4130850)))

(declare-fun c!1275274 () Bool)

(assert (=> d!2153239 (= c!1275274 (or ((_ is EmptyExpr!16675) (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))) ((_ is EmptyLang!16675) (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))))))

(assert (=> d!2153239 (validRegex!8411 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))))

(assert (=> d!2153239 (= (derivativeStep!5321 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))) (head!13727 s!2326)) lt!2456125)))

(declare-fun c!1275277 () Bool)

(declare-fun b!6850067 () Bool)

(assert (=> b!6850067 (= c!1275277 (nullable!6638 (regOne!33862 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))))))

(assert (=> b!6850067 (= e!4130851 e!4130848)))

(declare-fun bm!623993 () Bool)

(assert (=> bm!623993 (= call!623997 (derivativeStep!5321 (ite c!1275275 (regTwo!33863 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))) (ite c!1275278 (reg!17004 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))) (ite c!1275277 (regTwo!33862 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))) (regOne!33862 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))))) (head!13727 s!2326)))))

(declare-fun b!6850068 () Bool)

(assert (=> b!6850068 (= e!4130850 e!4130849)))

(declare-fun c!1275276 () Bool)

(assert (=> b!6850068 (= c!1275276 ((_ is ElementMatch!16675) (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292))))))))

(declare-fun b!6850069 () Bool)

(assert (=> b!6850069 (= e!4130849 (ite (= (head!13727 s!2326) (c!1274613 (ite c!1274879 (regTwo!33863 r!7292) (ite c!1274882 (reg!17004 r!7292) (ite c!1274881 (regTwo!33862 r!7292) (regOne!33862 r!7292)))))) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2153239 c!1275274) b!6850062))

(assert (= (and d!2153239 (not c!1275274)) b!6850068))

(assert (= (and b!6850068 c!1275276) b!6850069))

(assert (= (and b!6850068 (not c!1275276)) b!6850066))

(assert (= (and b!6850066 c!1275275) b!6850064))

(assert (= (and b!6850066 (not c!1275275)) b!6850060))

(assert (= (and b!6850060 c!1275278) b!6850063))

(assert (= (and b!6850060 (not c!1275278)) b!6850067))

(assert (= (and b!6850067 c!1275277) b!6850065))

(assert (= (and b!6850067 (not c!1275277)) b!6850061))

(assert (= (or b!6850065 b!6850061) bm!623990))

(assert (= (or b!6850063 bm!623990) bm!623991))

(assert (= (or b!6850064 bm!623991) bm!623993))

(assert (= (or b!6850064 b!6850065) bm!623992))

(assert (=> bm!623992 m!7587360))

(declare-fun m!7589338 () Bool)

(assert (=> bm!623992 m!7589338))

(declare-fun m!7589340 () Bool)

(assert (=> d!2153239 m!7589340))

(declare-fun m!7589342 () Bool)

(assert (=> d!2153239 m!7589342))

(declare-fun m!7589344 () Bool)

(assert (=> b!6850067 m!7589344))

(assert (=> bm!623993 m!7587360))

(declare-fun m!7589346 () Bool)

(assert (=> bm!623993 m!7589346))

(assert (=> bm!623702 d!2153239))

(declare-fun d!2153241 () Bool)

(assert (=> d!2153241 (= (nullable!6638 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (nullableFct!2522 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun bs!1831158 () Bool)

(assert (= bs!1831158 d!2153241))

(assert (=> bs!1831158 m!7587508))

(declare-fun m!7589348 () Bool)

(assert (=> bs!1831158 m!7589348))

(assert (=> b!6848619 d!2153241))

(declare-fun d!2153243 () Bool)

(assert (=> d!2153243 (= (nullable!6638 (regOne!33862 lt!2455885)) (nullableFct!2522 (regOne!33862 lt!2455885)))))

(declare-fun bs!1831159 () Bool)

(assert (= bs!1831159 d!2153243))

(declare-fun m!7589350 () Bool)

(assert (=> bs!1831159 m!7589350))

(assert (=> b!6848633 d!2153243))

(declare-fun bs!1831160 () Bool)

(declare-fun d!2153245 () Bool)

(assert (= bs!1831160 (and d!2153245 d!2152589)))

(declare-fun lambda!387316 () Int)

(assert (=> bs!1831160 (= (= lambda!387176 lambda!387223) (= lambda!387316 lambda!387260))))

(declare-fun bs!1831161 () Bool)

(assert (= bs!1831161 (and d!2153245 d!2152691)))

(assert (=> bs!1831161 (not (= lambda!387316 lambda!387275))))

(declare-fun bs!1831162 () Bool)

(assert (= bs!1831162 (and d!2153245 d!2152603)))

(assert (=> bs!1831162 (not (= lambda!387316 lambda!387264))))

(declare-fun bs!1831163 () Bool)

(assert (= bs!1831163 (and d!2153245 d!2153215)))

(assert (=> bs!1831163 (not (= lambda!387316 lambda!387314))))

(declare-fun bs!1831164 () Bool)

(assert (= bs!1831164 (and d!2153245 d!2152671)))

(assert (=> bs!1831164 (not (= lambda!387316 lambda!387272))))

(declare-fun bs!1831165 () Bool)

(assert (= bs!1831165 (and d!2153245 d!2152375)))

(assert (=> bs!1831165 (not (= lambda!387316 lambda!387214))))

(declare-fun bs!1831166 () Bool)

(assert (= bs!1831166 (and d!2153245 d!2152405)))

(assert (=> bs!1831166 (= lambda!387316 lambda!387217)))

(declare-fun bs!1831167 () Bool)

(assert (= bs!1831167 (and d!2153245 d!2152621)))

(assert (=> bs!1831167 (not (= lambda!387316 lambda!387267))))

(declare-fun bs!1831168 () Bool)

(assert (= bs!1831168 (and d!2153245 d!2152591)))

(assert (=> bs!1831168 (not (= lambda!387316 lambda!387263))))

(declare-fun bs!1831169 () Bool)

(assert (= bs!1831169 (and d!2153245 d!2153089)))

(assert (=> bs!1831169 (not (= lambda!387316 lambda!387304))))

(declare-fun bs!1831170 () Bool)

(assert (= bs!1831170 (and d!2153245 d!2152585)))

(assert (=> bs!1831170 (not (= lambda!387316 lambda!387258))))

(declare-fun bs!1831171 () Bool)

(assert (= bs!1831171 (and d!2153245 d!2152407)))

(assert (=> bs!1831171 (not (= lambda!387316 lambda!387222))))

(declare-fun bs!1831172 () Bool)

(assert (= bs!1831172 (and d!2153245 d!2152409)))

(assert (=> bs!1831172 (not (= lambda!387316 lambda!387226))))

(declare-fun bs!1831173 () Bool)

(assert (= bs!1831173 (and d!2153245 d!2152411)))

(assert (=> bs!1831173 (not (= lambda!387316 lambda!387227))))

(declare-fun bs!1831174 () Bool)

(assert (= bs!1831174 (and d!2153245 d!2153105)))

(assert (=> bs!1831174 (= (= lambda!387176 lambda!387263) (= lambda!387316 lambda!387306))))

(assert (=> bs!1831171 (not (= lambda!387316 lambda!387223))))

(declare-fun bs!1831175 () Bool)

(assert (= bs!1831175 (and d!2153245 d!2153141)))

(assert (=> bs!1831175 (not (= lambda!387316 lambda!387309))))

(declare-fun bs!1831176 () Bool)

(assert (= bs!1831176 (and d!2153245 d!2153187)))

(assert (=> bs!1831176 (not (= lambda!387316 lambda!387312))))

(declare-fun bs!1831177 () Bool)

(assert (= bs!1831177 (and d!2153245 d!2153155)))

(assert (=> bs!1831177 (not (= lambda!387316 lambda!387310))))

(declare-fun bs!1831178 () Bool)

(assert (= bs!1831178 (and d!2153245 b!6847423)))

(assert (=> bs!1831178 (not (= lambda!387316 lambda!387176))))

(declare-fun bs!1831179 () Bool)

(assert (= bs!1831179 (and d!2153245 d!2152587)))

(assert (=> bs!1831179 (not (= lambda!387316 lambda!387259))))

(assert (=> d!2153245 true))

(assert (=> d!2153245 (< (dynLambda!26457 order!27653 lambda!387176) (dynLambda!26457 order!27653 lambda!387316))))

(assert (=> d!2153245 (= (exists!2776 (t!380067 lt!2455888) lambda!387176) (not (forall!15853 (t!380067 lt!2455888) lambda!387316)))))

(declare-fun bs!1831180 () Bool)

(assert (= bs!1831180 d!2153245))

(declare-fun m!7589352 () Bool)

(assert (=> bs!1831180 m!7589352))

(assert (=> d!2152623 d!2153245))

(declare-fun d!2153247 () Bool)

(declare-fun lt!2456126 () Bool)

(assert (=> d!2153247 (= lt!2456126 (select (content!12981 (t!380068 zl!343)) lt!2455879))))

(declare-fun e!4130871 () Bool)

(assert (=> d!2153247 (= lt!2456126 e!4130871)))

(declare-fun res!2796210 () Bool)

(assert (=> d!2153247 (=> (not res!2796210) (not e!4130871))))

(assert (=> d!2153247 (= res!2796210 ((_ is Cons!66201) (t!380068 zl!343)))))

(assert (=> d!2153247 (= (contains!20327 (t!380068 zl!343) lt!2455879) lt!2456126)))

(declare-fun b!6850136 () Bool)

(declare-fun e!4130870 () Bool)

(assert (=> b!6850136 (= e!4130871 e!4130870)))

(declare-fun res!2796209 () Bool)

(assert (=> b!6850136 (=> res!2796209 e!4130870)))

(assert (=> b!6850136 (= res!2796209 (= (h!72649 (t!380068 zl!343)) lt!2455879))))

(declare-fun b!6850137 () Bool)

(assert (=> b!6850137 (= e!4130870 (contains!20327 (t!380068 (t!380068 zl!343)) lt!2455879))))

(assert (= (and d!2153247 res!2796210) b!6850136))

(assert (= (and b!6850136 (not res!2796209)) b!6850137))

(assert (=> d!2153247 m!7588714))

(declare-fun m!7589354 () Bool)

(assert (=> d!2153247 m!7589354))

(declare-fun m!7589356 () Bool)

(assert (=> b!6850137 m!7589356))

(assert (=> b!6848721 d!2153247))

(declare-fun d!2153249 () Bool)

(declare-fun c!1275279 () Bool)

(assert (=> d!2153249 (= c!1275279 ((_ is Nil!66201) (t!380068 lt!2455945)))))

(declare-fun e!4130875 () (InoxSet Context!12118))

(assert (=> d!2153249 (= (content!12981 (t!380068 lt!2455945)) e!4130875)))

(declare-fun b!6850147 () Bool)

(assert (=> b!6850147 (= e!4130875 ((as const (Array Context!12118 Bool)) false))))

(declare-fun b!6850148 () Bool)

(assert (=> b!6850148 (= e!4130875 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) (h!72649 (t!380068 lt!2455945)) true) (content!12981 (t!380068 (t!380068 lt!2455945)))))))

(assert (= (and d!2153249 c!1275279) b!6850147))

(assert (= (and d!2153249 (not c!1275279)) b!6850148))

(declare-fun m!7589358 () Bool)

(assert (=> b!6850148 m!7589358))

(declare-fun m!7589360 () Bool)

(assert (=> b!6850148 m!7589360))

(assert (=> b!6848676 d!2153249))

(declare-fun b!6850157 () Bool)

(declare-fun e!4130880 () Int)

(declare-fun call!623999 () Int)

(assert (=> b!6850157 (= e!4130880 (+ 1 call!623999))))

(declare-fun d!2153251 () Bool)

(declare-fun lt!2456127 () Int)

(assert (=> d!2153251 (> lt!2456127 0)))

(declare-fun e!4130879 () Int)

(assert (=> d!2153251 (= lt!2456127 e!4130879)))

(declare-fun c!1275283 () Bool)

(assert (=> d!2153251 (= c!1275283 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))))))

(assert (=> d!2153251 (= (regexDepthTotal!249 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))) lt!2456127)))

(declare-fun b!6850158 () Bool)

(declare-fun e!4130878 () Int)

(declare-fun call!624001 () Int)

(declare-fun call!624000 () Int)

(assert (=> b!6850158 (= e!4130878 (+ 1 call!624001 call!624000))))

(declare-fun b!6850159 () Bool)

(declare-fun e!4130881 () Int)

(assert (=> b!6850159 (= e!4130878 e!4130881)))

(declare-fun c!1275281 () Bool)

(assert (=> b!6850159 (= c!1275281 ((_ is Concat!25520) (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))))))

(declare-fun bm!623994 () Bool)

(declare-fun c!1275280 () Bool)

(declare-fun c!1275282 () Bool)

(assert (=> bm!623994 (= call!623999 (regexDepthTotal!249 (ite c!1275282 (reg!17004 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))) (ite c!1275280 (regTwo!33863 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))) (regTwo!33862 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879))))))))))))

(declare-fun bm!623995 () Bool)

(assert (=> bm!623995 (= call!624001 (regexDepthTotal!249 (ite c!1275280 (regOne!33863 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))) (regOne!33862 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))))))))

(declare-fun b!6850160 () Bool)

(assert (=> b!6850160 (= e!4130879 1)))

(declare-fun bm!623996 () Bool)

(assert (=> bm!623996 (= call!624000 call!623999)))

(declare-fun b!6850161 () Bool)

(assert (=> b!6850161 (= e!4130879 e!4130880)))

(assert (=> b!6850161 (= c!1275282 ((_ is Star!16675) (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))))))

(declare-fun b!6850162 () Bool)

(assert (=> b!6850162 (= e!4130881 1)))

(declare-fun b!6850163 () Bool)

(assert (=> b!6850163 (= e!4130881 (+ 1 call!624001 call!624000))))

(declare-fun b!6850164 () Bool)

(assert (=> b!6850164 (= c!1275280 ((_ is Union!16675) (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))))))

(assert (=> b!6850164 (= e!4130880 e!4130878)))

(assert (= (and d!2153251 c!1275283) b!6850160))

(assert (= (and d!2153251 (not c!1275283)) b!6850161))

(assert (= (and b!6850161 c!1275282) b!6850157))

(assert (= (and b!6850161 (not c!1275282)) b!6850164))

(assert (= (and b!6850164 c!1275280) b!6850158))

(assert (= (and b!6850164 (not c!1275280)) b!6850159))

(assert (= (and b!6850159 c!1275281) b!6850163))

(assert (= (and b!6850159 (not c!1275281)) b!6850162))

(assert (= (or b!6850158 b!6850163) bm!623996))

(assert (= (or b!6850158 b!6850163) bm!623995))

(assert (= (or b!6850157 bm!623996) bm!623994))

(declare-fun m!7589362 () Bool)

(assert (=> bm!623994 m!7589362))

(declare-fun m!7589364 () Bool)

(assert (=> bm!623995 m!7589364))

(assert (=> b!6848714 d!2153251))

(declare-fun d!2153253 () Bool)

(declare-fun lt!2456128 () Int)

(assert (=> d!2153253 (>= lt!2456128 0)))

(declare-fun e!4130886 () Int)

(assert (=> d!2153253 (= lt!2456128 e!4130886)))

(declare-fun c!1275284 () Bool)

(assert (=> d!2153253 (= c!1275284 ((_ is Cons!66200) (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879)))))))))))

(assert (=> d!2153253 (= (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879))))))) lt!2456128)))

(declare-fun b!6850181 () Bool)

(assert (=> b!6850181 (= e!4130886 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879))))))))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 lt!2455879))))))))))))))

(declare-fun b!6850182 () Bool)

(assert (=> b!6850182 (= e!4130886 1)))

(assert (= (and d!2153253 c!1275284) b!6850181))

(assert (= (and d!2153253 (not c!1275284)) b!6850182))

(declare-fun m!7589366 () Bool)

(assert (=> b!6850181 m!7589366))

(declare-fun m!7589368 () Bool)

(assert (=> b!6850181 m!7589368))

(assert (=> b!6848714 d!2153253))

(declare-fun b!6850191 () Bool)

(declare-fun e!4130890 () Bool)

(declare-fun call!624002 () Bool)

(assert (=> b!6850191 (= e!4130890 call!624002)))

(declare-fun b!6850192 () Bool)

(declare-fun e!4130894 () Bool)

(declare-fun e!4130892 () Bool)

(assert (=> b!6850192 (= e!4130894 e!4130892)))

(declare-fun c!1275286 () Bool)

(assert (=> b!6850192 (= c!1275286 ((_ is Star!16675) (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))

(declare-fun b!6850193 () Bool)

(declare-fun e!4130891 () Bool)

(declare-fun call!624003 () Bool)

(assert (=> b!6850193 (= e!4130891 call!624003)))

(declare-fun b!6850194 () Bool)

(declare-fun e!4130893 () Bool)

(assert (=> b!6850194 (= e!4130893 e!4130891)))

(declare-fun res!2796211 () Bool)

(assert (=> b!6850194 (=> (not res!2796211) (not e!4130891))))

(declare-fun call!624004 () Bool)

(assert (=> b!6850194 (= res!2796211 call!624004)))

(declare-fun c!1275285 () Bool)

(declare-fun bm!623997 () Bool)

(assert (=> bm!623997 (= call!624004 (validRegex!8411 (ite c!1275285 (regOne!33863 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))) (regOne!33862 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))))

(declare-fun b!6850195 () Bool)

(assert (=> b!6850195 (= e!4130892 e!4130890)))

(declare-fun res!2796214 () Bool)

(assert (=> b!6850195 (= res!2796214 (not (nullable!6638 (reg!17004 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))))

(assert (=> b!6850195 (=> (not res!2796214) (not e!4130890))))

(declare-fun bm!623998 () Bool)

(assert (=> bm!623998 (= call!624003 call!624002)))

(declare-fun b!6850196 () Bool)

(declare-fun e!4130889 () Bool)

(assert (=> b!6850196 (= e!4130892 e!4130889)))

(assert (=> b!6850196 (= c!1275285 ((_ is Union!16675) (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))

(declare-fun b!6850197 () Bool)

(declare-fun e!4130895 () Bool)

(assert (=> b!6850197 (= e!4130895 call!624003)))

(declare-fun bm!623999 () Bool)

(assert (=> bm!623999 (= call!624002 (validRegex!8411 (ite c!1275286 (reg!17004 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))) (ite c!1275285 (regTwo!33863 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))) (regTwo!33862 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))))

(declare-fun b!6850198 () Bool)

(declare-fun res!2796213 () Bool)

(assert (=> b!6850198 (=> (not res!2796213) (not e!4130895))))

(assert (=> b!6850198 (= res!2796213 call!624004)))

(assert (=> b!6850198 (= e!4130889 e!4130895)))

(declare-fun d!2153255 () Bool)

(declare-fun res!2796215 () Bool)

(assert (=> d!2153255 (=> res!2796215 e!4130894)))

(assert (=> d!2153255 (= res!2796215 ((_ is ElementMatch!16675) (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))

(assert (=> d!2153255 (= (validRegex!8411 (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))) e!4130894)))

(declare-fun b!6850199 () Bool)

(declare-fun res!2796212 () Bool)

(assert (=> b!6850199 (=> res!2796212 e!4130893)))

(assert (=> b!6850199 (= res!2796212 (not ((_ is Concat!25520) (ite c!1274909 (regOne!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regOne!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))

(assert (=> b!6850199 (= e!4130889 e!4130893)))

(assert (= (and d!2153255 (not res!2796215)) b!6850192))

(assert (= (and b!6850192 c!1275286) b!6850195))

(assert (= (and b!6850192 (not c!1275286)) b!6850196))

(assert (= (and b!6850195 res!2796214) b!6850191))

(assert (= (and b!6850196 c!1275285) b!6850198))

(assert (= (and b!6850196 (not c!1275285)) b!6850199))

(assert (= (and b!6850198 res!2796213) b!6850197))

(assert (= (and b!6850199 (not res!2796212)) b!6850194))

(assert (= (and b!6850194 res!2796211) b!6850193))

(assert (= (or b!6850197 b!6850193) bm!623998))

(assert (= (or b!6850198 b!6850194) bm!623997))

(assert (= (or b!6850191 bm!623998) bm!623999))

(declare-fun m!7589370 () Bool)

(assert (=> bm!623997 m!7589370))

(declare-fun m!7589372 () Bool)

(assert (=> b!6850195 m!7589372))

(declare-fun m!7589374 () Bool)

(assert (=> bm!623999 m!7589374))

(assert (=> bm!623711 d!2153255))

(declare-fun b!6850220 () Bool)

(declare-fun e!4130902 () Bool)

(declare-fun call!624005 () Bool)

(assert (=> b!6850220 (= e!4130902 call!624005)))

(declare-fun b!6850221 () Bool)

(declare-fun e!4130906 () Bool)

(declare-fun e!4130904 () Bool)

(assert (=> b!6850221 (= e!4130906 e!4130904)))

(declare-fun c!1275288 () Bool)

(assert (=> b!6850221 (= c!1275288 ((_ is Star!16675) (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))))))

(declare-fun b!6850222 () Bool)

(declare-fun e!4130903 () Bool)

(declare-fun call!624006 () Bool)

(assert (=> b!6850222 (= e!4130903 call!624006)))

(declare-fun b!6850223 () Bool)

(declare-fun e!4130905 () Bool)

(assert (=> b!6850223 (= e!4130905 e!4130903)))

(declare-fun res!2796216 () Bool)

(assert (=> b!6850223 (=> (not res!2796216) (not e!4130903))))

(declare-fun call!624007 () Bool)

(assert (=> b!6850223 (= res!2796216 call!624007)))

(declare-fun bm!624000 () Bool)

(declare-fun c!1275287 () Bool)

(assert (=> bm!624000 (= call!624007 (validRegex!8411 (ite c!1275287 (regOne!33863 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))) (regOne!33862 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))))))))

(declare-fun b!6850224 () Bool)

(assert (=> b!6850224 (= e!4130904 e!4130902)))

(declare-fun res!2796219 () Bool)

(assert (=> b!6850224 (= res!2796219 (not (nullable!6638 (reg!17004 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))))))))

(assert (=> b!6850224 (=> (not res!2796219) (not e!4130902))))

(declare-fun bm!624001 () Bool)

(assert (=> bm!624001 (= call!624006 call!624005)))

(declare-fun b!6850225 () Bool)

(declare-fun e!4130901 () Bool)

(assert (=> b!6850225 (= e!4130904 e!4130901)))

(assert (=> b!6850225 (= c!1275287 ((_ is Union!16675) (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))))))

(declare-fun b!6850226 () Bool)

(declare-fun e!4130907 () Bool)

(assert (=> b!6850226 (= e!4130907 call!624006)))

(declare-fun bm!624002 () Bool)

(assert (=> bm!624002 (= call!624005 (validRegex!8411 (ite c!1275288 (reg!17004 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))) (ite c!1275287 (regTwo!33863 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))) (regTwo!33862 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953))))))))))

(declare-fun b!6850227 () Bool)

(declare-fun res!2796218 () Bool)

(assert (=> b!6850227 (=> (not res!2796218) (not e!4130907))))

(assert (=> b!6850227 (= res!2796218 call!624007)))

(assert (=> b!6850227 (= e!4130901 e!4130907)))

(declare-fun d!2153257 () Bool)

(declare-fun res!2796220 () Bool)

(assert (=> d!2153257 (=> res!2796220 e!4130906)))

(assert (=> d!2153257 (= res!2796220 ((_ is ElementMatch!16675) (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))))))

(assert (=> d!2153257 (= (validRegex!8411 (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953)))) e!4130906)))

(declare-fun b!6850228 () Bool)

(declare-fun res!2796217 () Bool)

(assert (=> b!6850228 (=> res!2796217 e!4130905)))

(assert (=> b!6850228 (= res!2796217 (not ((_ is Concat!25520) (ite c!1274912 (reg!17004 lt!2455953) (ite c!1274911 (regTwo!33863 lt!2455953) (regTwo!33862 lt!2455953))))))))

(assert (=> b!6850228 (= e!4130901 e!4130905)))

(assert (= (and d!2153257 (not res!2796220)) b!6850221))

(assert (= (and b!6850221 c!1275288) b!6850224))

(assert (= (and b!6850221 (not c!1275288)) b!6850225))

(assert (= (and b!6850224 res!2796219) b!6850220))

(assert (= (and b!6850225 c!1275287) b!6850227))

(assert (= (and b!6850225 (not c!1275287)) b!6850228))

(assert (= (and b!6850227 res!2796218) b!6850226))

(assert (= (and b!6850228 (not res!2796217)) b!6850223))

(assert (= (and b!6850223 res!2796216) b!6850222))

(assert (= (or b!6850226 b!6850222) bm!624001))

(assert (= (or b!6850227 b!6850223) bm!624000))

(assert (= (or b!6850220 bm!624001) bm!624002))

(declare-fun m!7589376 () Bool)

(assert (=> bm!624000 m!7589376))

(declare-fun m!7589378 () Bool)

(assert (=> b!6850224 m!7589378))

(declare-fun m!7589380 () Bool)

(assert (=> bm!624002 m!7589380))

(assert (=> bm!623716 d!2153257))

(declare-fun bs!1831181 () Bool)

(declare-fun d!2153259 () Bool)

(assert (= bs!1831181 (and d!2153259 d!2152589)))

(declare-fun lambda!387317 () Int)

(assert (=> bs!1831181 (not (= lambda!387317 lambda!387260))))

(declare-fun bs!1831182 () Bool)

(assert (= bs!1831182 (and d!2153259 d!2152691)))

(assert (=> bs!1831182 (= lambda!387317 lambda!387275)))

(declare-fun bs!1831183 () Bool)

(assert (= bs!1831183 (and d!2153259 d!2152603)))

(assert (=> bs!1831183 (= lambda!387317 lambda!387264)))

(declare-fun bs!1831184 () Bool)

(assert (= bs!1831184 (and d!2153259 d!2153215)))

(assert (=> bs!1831184 (= lambda!387317 lambda!387314)))

(declare-fun bs!1831185 () Bool)

(assert (= bs!1831185 (and d!2153259 d!2152671)))

(assert (=> bs!1831185 (= lambda!387317 lambda!387272)))

(declare-fun bs!1831186 () Bool)

(assert (= bs!1831186 (and d!2153259 d!2152375)))

(assert (=> bs!1831186 (= lambda!387317 lambda!387214)))

(declare-fun bs!1831187 () Bool)

(assert (= bs!1831187 (and d!2153259 d!2152405)))

(assert (=> bs!1831187 (not (= lambda!387317 lambda!387217))))

(declare-fun bs!1831188 () Bool)

(assert (= bs!1831188 (and d!2153259 d!2152621)))

(assert (=> bs!1831188 (= lambda!387317 lambda!387267)))

(declare-fun bs!1831189 () Bool)

(assert (= bs!1831189 (and d!2153259 d!2152591)))

(assert (=> bs!1831189 (not (= lambda!387317 lambda!387263))))

(declare-fun bs!1831190 () Bool)

(assert (= bs!1831190 (and d!2153259 d!2153089)))

(assert (=> bs!1831190 (= lambda!387317 lambda!387304)))

(declare-fun bs!1831191 () Bool)

(assert (= bs!1831191 (and d!2153259 d!2152585)))

(assert (=> bs!1831191 (= lambda!387317 lambda!387258)))

(declare-fun bs!1831192 () Bool)

(assert (= bs!1831192 (and d!2153259 d!2152407)))

(assert (=> bs!1831192 (= lambda!387317 lambda!387222)))

(declare-fun bs!1831193 () Bool)

(assert (= bs!1831193 (and d!2153259 d!2152409)))

(assert (=> bs!1831193 (= lambda!387317 lambda!387226)))

(declare-fun bs!1831194 () Bool)

(assert (= bs!1831194 (and d!2153259 d!2152411)))

(assert (=> bs!1831194 (= lambda!387317 lambda!387227)))

(declare-fun bs!1831195 () Bool)

(assert (= bs!1831195 (and d!2153259 d!2153105)))

(assert (=> bs!1831195 (not (= lambda!387317 lambda!387306))))

(assert (=> bs!1831192 (not (= lambda!387317 lambda!387223))))

(declare-fun bs!1831196 () Bool)

(assert (= bs!1831196 (and d!2153259 d!2153141)))

(assert (=> bs!1831196 (= lambda!387317 lambda!387309)))

(declare-fun bs!1831197 () Bool)

(assert (= bs!1831197 (and d!2153259 d!2153187)))

(assert (=> bs!1831197 (= lambda!387317 lambda!387312)))

(declare-fun bs!1831198 () Bool)

(assert (= bs!1831198 (and d!2153259 d!2153155)))

(assert (=> bs!1831198 (= lambda!387317 lambda!387310)))

(declare-fun bs!1831199 () Bool)

(assert (= bs!1831199 (and d!2153259 b!6847423)))

(assert (=> bs!1831199 (not (= lambda!387317 lambda!387176))))

(declare-fun bs!1831200 () Bool)

(assert (= bs!1831200 (and d!2153259 d!2153245)))

(assert (=> bs!1831200 (not (= lambda!387317 lambda!387316))))

(declare-fun bs!1831201 () Bool)

(assert (= bs!1831201 (and d!2153259 d!2152587)))

(assert (=> bs!1831201 (= lambda!387317 lambda!387259)))

(assert (=> d!2153259 (= (inv!84934 (h!72649 res!2795710)) (forall!15853 (exprs!6559 (h!72649 res!2795710)) lambda!387317))))

(declare-fun bs!1831202 () Bool)

(assert (= bs!1831202 d!2153259))

(declare-fun m!7589384 () Bool)

(assert (=> bs!1831202 m!7589384))

(assert (=> b!6848817 d!2153259))

(assert (=> d!2152663 d!2153209))

(assert (=> b!6848528 d!2152925))

(assert (=> b!6848528 d!2152927))

(declare-fun d!2153261 () Bool)

(declare-fun lt!2456129 () Bool)

(assert (=> d!2153261 (= lt!2456129 (select (content!12981 (t!380068 lt!2455945)) (h!72649 lt!2455945)))))

(declare-fun e!4130923 () Bool)

(assert (=> d!2153261 (= lt!2456129 e!4130923)))

(declare-fun res!2796222 () Bool)

(assert (=> d!2153261 (=> (not res!2796222) (not e!4130923))))

(assert (=> d!2153261 (= res!2796222 ((_ is Cons!66201) (t!380068 lt!2455945)))))

(assert (=> d!2153261 (= (contains!20327 (t!380068 lt!2455945) (h!72649 lt!2455945)) lt!2456129)))

(declare-fun b!6850279 () Bool)

(declare-fun e!4130922 () Bool)

(assert (=> b!6850279 (= e!4130923 e!4130922)))

(declare-fun res!2796221 () Bool)

(assert (=> b!6850279 (=> res!2796221 e!4130922)))

(assert (=> b!6850279 (= res!2796221 (= (h!72649 (t!380068 lt!2455945)) (h!72649 lt!2455945)))))

(declare-fun b!6850280 () Bool)

(assert (=> b!6850280 (= e!4130922 (contains!20327 (t!380068 (t!380068 lt!2455945)) (h!72649 lt!2455945)))))

(assert (= (and d!2153261 res!2796222) b!6850279))

(assert (= (and b!6850279 (not res!2796221)) b!6850280))

(assert (=> d!2153261 m!7588048))

(declare-fun m!7589386 () Bool)

(assert (=> d!2153261 m!7589386))

(declare-fun m!7589388 () Bool)

(assert (=> b!6850280 m!7589388))

(assert (=> b!6848640 d!2153261))

(declare-fun d!2153263 () Bool)

(declare-fun lt!2456130 () Bool)

(assert (=> d!2153263 (= lt!2456130 (select (content!12981 (t!380068 zl!343)) lt!2456026))))

(declare-fun e!4130927 () Bool)

(assert (=> d!2153263 (= lt!2456130 e!4130927)))

(declare-fun res!2796224 () Bool)

(assert (=> d!2153263 (=> (not res!2796224) (not e!4130927))))

(assert (=> d!2153263 (= res!2796224 ((_ is Cons!66201) (t!380068 zl!343)))))

(assert (=> d!2153263 (= (contains!20327 (t!380068 zl!343) lt!2456026) lt!2456130)))

(declare-fun b!6850289 () Bool)

(declare-fun e!4130926 () Bool)

(assert (=> b!6850289 (= e!4130927 e!4130926)))

(declare-fun res!2796223 () Bool)

(assert (=> b!6850289 (=> res!2796223 e!4130926)))

(assert (=> b!6850289 (= res!2796223 (= (h!72649 (t!380068 zl!343)) lt!2456026))))

(declare-fun b!6850290 () Bool)

(assert (=> b!6850290 (= e!4130926 (contains!20327 (t!380068 (t!380068 zl!343)) lt!2456026))))

(assert (= (and d!2153263 res!2796224) b!6850289))

(assert (= (and b!6850289 (not res!2796223)) b!6850290))

(assert (=> d!2153263 m!7588714))

(declare-fun m!7589390 () Bool)

(assert (=> d!2153263 m!7589390))

(declare-fun m!7589392 () Bool)

(assert (=> b!6850290 m!7589392))

(assert (=> b!6848516 d!2153263))

(assert (=> b!6848524 d!2152925))

(assert (=> b!6848524 d!2152927))

(declare-fun d!2153265 () Bool)

(assert (=> d!2153265 (= (isEmptyExpr!2006 lt!2456022) ((_ is EmptyExpr!16675) lt!2456022))))

(assert (=> b!6848477 d!2153265))

(declare-fun d!2153267 () Bool)

(assert (=> d!2153267 (= (isEmpty!38575 (tail!12805 (exprs!6559 lt!2455960))) ((_ is Nil!66200) (tail!12805 (exprs!6559 lt!2455960))))))

(assert (=> b!6848733 d!2153267))

(declare-fun d!2153269 () Bool)

(assert (=> d!2153269 (= (tail!12805 (exprs!6559 lt!2455960)) (t!380067 (exprs!6559 lt!2455960)))))

(assert (=> b!6848733 d!2153269))

(assert (=> b!6848616 d!2152955))

(declare-fun d!2153271 () Bool)

(declare-fun res!2796225 () Bool)

(declare-fun e!4130931 () Bool)

(assert (=> d!2153271 (=> res!2796225 e!4130931)))

(assert (=> d!2153271 (= res!2796225 ((_ is Nil!66200) (t!380067 lt!2455888)))))

(assert (=> d!2153271 (= (forall!15853 (t!380067 lt!2455888) lambda!387222) e!4130931)))

(declare-fun b!6850303 () Bool)

(declare-fun e!4130932 () Bool)

(assert (=> b!6850303 (= e!4130931 e!4130932)))

(declare-fun res!2796226 () Bool)

(assert (=> b!6850303 (=> (not res!2796226) (not e!4130932))))

(assert (=> b!6850303 (= res!2796226 (dynLambda!26455 lambda!387222 (h!72648 (t!380067 lt!2455888))))))

(declare-fun b!6850304 () Bool)

(assert (=> b!6850304 (= e!4130932 (forall!15853 (t!380067 (t!380067 lt!2455888)) lambda!387222))))

(assert (= (and d!2153271 (not res!2796225)) b!6850303))

(assert (= (and b!6850303 res!2796226) b!6850304))

(declare-fun b_lambda!258557 () Bool)

(assert (=> (not b_lambda!258557) (not b!6850303)))

(declare-fun m!7589394 () Bool)

(assert (=> b!6850303 m!7589394))

(declare-fun m!7589396 () Bool)

(assert (=> b!6850304 m!7589396))

(assert (=> b!6848496 d!2153271))

(declare-fun d!2153273 () Bool)

(declare-fun lt!2456131 () Bool)

(assert (=> d!2153273 (= lt!2456131 (select (content!12982 (t!380067 (t!380067 lt!2455888))) lt!2455885))))

(declare-fun e!4130936 () Bool)

(assert (=> d!2153273 (= lt!2456131 e!4130936)))

(declare-fun res!2796227 () Bool)

(assert (=> d!2153273 (=> (not res!2796227) (not e!4130936))))

(assert (=> d!2153273 (= res!2796227 ((_ is Cons!66200) (t!380067 (t!380067 lt!2455888))))))

(assert (=> d!2153273 (= (contains!20325 (t!380067 (t!380067 lt!2455888)) lt!2455885) lt!2456131)))

(declare-fun b!6850313 () Bool)

(declare-fun e!4130935 () Bool)

(assert (=> b!6850313 (= e!4130936 e!4130935)))

(declare-fun res!2796228 () Bool)

(assert (=> b!6850313 (=> res!2796228 e!4130935)))

(assert (=> b!6850313 (= res!2796228 (= (h!72648 (t!380067 (t!380067 lt!2455888))) lt!2455885))))

(declare-fun b!6850314 () Bool)

(assert (=> b!6850314 (= e!4130935 (contains!20325 (t!380067 (t!380067 (t!380067 lt!2455888))) lt!2455885))))

(assert (= (and d!2153273 res!2796227) b!6850313))

(assert (= (and b!6850313 (not res!2796228)) b!6850314))

(assert (=> d!2153273 m!7588530))

(declare-fun m!7589398 () Bool)

(assert (=> d!2153273 m!7589398))

(declare-fun m!7589400 () Bool)

(assert (=> b!6850314 m!7589400))

(assert (=> b!6848778 d!2153273))

(declare-fun call!624008 () Regex!16675)

(declare-fun b!6850324 () Bool)

(declare-fun e!4130940 () Regex!16675)

(assert (=> b!6850324 (= e!4130940 (Union!16675 (Concat!25520 call!624008 (regTwo!33862 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))) EmptyLang!16675))))

(declare-fun bm!624003 () Bool)

(declare-fun call!624011 () Regex!16675)

(assert (=> bm!624003 (= call!624008 call!624011)))

(declare-fun bm!624004 () Bool)

(declare-fun call!624010 () Regex!16675)

(assert (=> bm!624004 (= call!624011 call!624010)))

(declare-fun b!6850325 () Bool)

(declare-fun e!4130942 () Regex!16675)

(assert (=> b!6850325 (= e!4130942 EmptyLang!16675)))

(declare-fun e!4130943 () Regex!16675)

(declare-fun b!6850326 () Bool)

(assert (=> b!6850326 (= e!4130943 (Concat!25520 call!624011 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun c!1275290 () Bool)

(declare-fun bm!624005 () Bool)

(declare-fun call!624009 () Regex!16675)

(assert (=> bm!624005 (= call!624009 (derivativeStep!5321 (ite c!1275290 (regOne!33863 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))) (head!13727 s!2326)))))

(declare-fun b!6850327 () Bool)

(declare-fun e!4130939 () Regex!16675)

(assert (=> b!6850327 (= e!4130939 (Union!16675 call!624009 call!624010))))

(declare-fun b!6850328 () Bool)

(assert (=> b!6850328 (= e!4130940 (Union!16675 (Concat!25520 call!624009 (regTwo!33862 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))) call!624008))))

(declare-fun b!6850329 () Bool)

(assert (=> b!6850329 (= c!1275290 ((_ is Union!16675) (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun e!4130941 () Regex!16675)

(assert (=> b!6850329 (= e!4130941 e!4130939)))

(declare-fun b!6850323 () Bool)

(assert (=> b!6850323 (= e!4130939 e!4130943)))

(declare-fun c!1275293 () Bool)

(assert (=> b!6850323 (= c!1275293 ((_ is Star!16675) (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun d!2153275 () Bool)

(declare-fun lt!2456132 () Regex!16675)

(assert (=> d!2153275 (validRegex!8411 lt!2456132)))

(assert (=> d!2153275 (= lt!2456132 e!4130942)))

(declare-fun c!1275289 () Bool)

(assert (=> d!2153275 (= c!1275289 (or ((_ is EmptyExpr!16675) (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) ((_ is EmptyLang!16675) (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))

(assert (=> d!2153275 (validRegex!8411 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))

(assert (=> d!2153275 (= (derivativeStep!5321 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)) (head!13727 s!2326)) lt!2456132)))

(declare-fun b!6850330 () Bool)

(declare-fun c!1275292 () Bool)

(assert (=> b!6850330 (= c!1275292 (nullable!6638 (regOne!33862 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))))

(assert (=> b!6850330 (= e!4130943 e!4130940)))

(declare-fun bm!624006 () Bool)

(assert (=> bm!624006 (= call!624010 (derivativeStep!5321 (ite c!1275290 (regTwo!33863 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1275293 (reg!17004 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (ite c!1275292 (regTwo!33862 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))) (regOne!33862 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))))) (head!13727 s!2326)))))

(declare-fun b!6850331 () Bool)

(assert (=> b!6850331 (= e!4130942 e!4130941)))

(declare-fun c!1275291 () Bool)

(assert (=> b!6850331 (= c!1275291 ((_ is ElementMatch!16675) (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885))))))

(declare-fun b!6850332 () Bool)

(assert (=> b!6850332 (= e!4130941 (ite (= (head!13727 s!2326) (c!1274613 (ite c!1274905 (regOne!33863 lt!2455885) (regOne!33862 lt!2455885)))) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2153275 c!1275289) b!6850325))

(assert (= (and d!2153275 (not c!1275289)) b!6850331))

(assert (= (and b!6850331 c!1275291) b!6850332))

(assert (= (and b!6850331 (not c!1275291)) b!6850329))

(assert (= (and b!6850329 c!1275290) b!6850327))

(assert (= (and b!6850329 (not c!1275290)) b!6850323))

(assert (= (and b!6850323 c!1275293) b!6850326))

(assert (= (and b!6850323 (not c!1275293)) b!6850330))

(assert (= (and b!6850330 c!1275292) b!6850328))

(assert (= (and b!6850330 (not c!1275292)) b!6850324))

(assert (= (or b!6850328 b!6850324) bm!624003))

(assert (= (or b!6850326 bm!624003) bm!624004))

(assert (= (or b!6850327 bm!624004) bm!624006))

(assert (= (or b!6850327 b!6850328) bm!624005))

(assert (=> bm!624005 m!7587360))

(declare-fun m!7589402 () Bool)

(assert (=> bm!624005 m!7589402))

(declare-fun m!7589404 () Bool)

(assert (=> d!2153275 m!7589404))

(declare-fun m!7589406 () Bool)

(assert (=> d!2153275 m!7589406))

(declare-fun m!7589408 () Bool)

(assert (=> b!6850330 m!7589408))

(assert (=> bm!624006 m!7587360))

(declare-fun m!7589410 () Bool)

(assert (=> bm!624006 m!7589410))

(assert (=> bm!623709 d!2153275))

(declare-fun b!6850357 () Bool)

(declare-fun e!4130951 () Bool)

(declare-fun call!624012 () Bool)

(assert (=> b!6850357 (= e!4130951 call!624012)))

(declare-fun b!6850358 () Bool)

(declare-fun e!4130955 () Bool)

(declare-fun e!4130953 () Bool)

(assert (=> b!6850358 (= e!4130955 e!4130953)))

(declare-fun c!1275295 () Bool)

(assert (=> b!6850358 (= c!1275295 ((_ is Star!16675) lt!2456036))))

(declare-fun b!6850359 () Bool)

(declare-fun e!4130952 () Bool)

(declare-fun call!624013 () Bool)

(assert (=> b!6850359 (= e!4130952 call!624013)))

(declare-fun b!6850360 () Bool)

(declare-fun e!4130954 () Bool)

(assert (=> b!6850360 (= e!4130954 e!4130952)))

(declare-fun res!2796229 () Bool)

(assert (=> b!6850360 (=> (not res!2796229) (not e!4130952))))

(declare-fun call!624014 () Bool)

(assert (=> b!6850360 (= res!2796229 call!624014)))

(declare-fun bm!624007 () Bool)

(declare-fun c!1275294 () Bool)

(assert (=> bm!624007 (= call!624014 (validRegex!8411 (ite c!1275294 (regOne!33863 lt!2456036) (regOne!33862 lt!2456036))))))

(declare-fun b!6850361 () Bool)

(assert (=> b!6850361 (= e!4130953 e!4130951)))

(declare-fun res!2796232 () Bool)

(assert (=> b!6850361 (= res!2796232 (not (nullable!6638 (reg!17004 lt!2456036))))))

(assert (=> b!6850361 (=> (not res!2796232) (not e!4130951))))

(declare-fun bm!624008 () Bool)

(assert (=> bm!624008 (= call!624013 call!624012)))

(declare-fun b!6850362 () Bool)

(declare-fun e!4130950 () Bool)

(assert (=> b!6850362 (= e!4130953 e!4130950)))

(assert (=> b!6850362 (= c!1275294 ((_ is Union!16675) lt!2456036))))

(declare-fun b!6850363 () Bool)

(declare-fun e!4130956 () Bool)

(assert (=> b!6850363 (= e!4130956 call!624013)))

(declare-fun bm!624009 () Bool)

(assert (=> bm!624009 (= call!624012 (validRegex!8411 (ite c!1275295 (reg!17004 lt!2456036) (ite c!1275294 (regTwo!33863 lt!2456036) (regTwo!33862 lt!2456036)))))))

(declare-fun b!6850364 () Bool)

(declare-fun res!2796231 () Bool)

(assert (=> b!6850364 (=> (not res!2796231) (not e!4130956))))

(assert (=> b!6850364 (= res!2796231 call!624014)))

(assert (=> b!6850364 (= e!4130950 e!4130956)))

(declare-fun d!2153277 () Bool)

(declare-fun res!2796233 () Bool)

(assert (=> d!2153277 (=> res!2796233 e!4130955)))

(assert (=> d!2153277 (= res!2796233 ((_ is ElementMatch!16675) lt!2456036))))

(assert (=> d!2153277 (= (validRegex!8411 lt!2456036) e!4130955)))

(declare-fun b!6850365 () Bool)

(declare-fun res!2796230 () Bool)

(assert (=> b!6850365 (=> res!2796230 e!4130954)))

(assert (=> b!6850365 (= res!2796230 (not ((_ is Concat!25520) lt!2456036)))))

(assert (=> b!6850365 (= e!4130950 e!4130954)))

(assert (= (and d!2153277 (not res!2796233)) b!6850358))

(assert (= (and b!6850358 c!1275295) b!6850361))

(assert (= (and b!6850358 (not c!1275295)) b!6850362))

(assert (= (and b!6850361 res!2796232) b!6850357))

(assert (= (and b!6850362 c!1275294) b!6850364))

(assert (= (and b!6850362 (not c!1275294)) b!6850365))

(assert (= (and b!6850364 res!2796231) b!6850363))

(assert (= (and b!6850365 (not res!2796230)) b!6850360))

(assert (= (and b!6850360 res!2796229) b!6850359))

(assert (= (or b!6850363 b!6850359) bm!624008))

(assert (= (or b!6850364 b!6850360) bm!624007))

(assert (= (or b!6850357 bm!624008) bm!624009))

(declare-fun m!7589412 () Bool)

(assert (=> bm!624007 m!7589412))

(declare-fun m!7589414 () Bool)

(assert (=> b!6850361 m!7589414))

(declare-fun m!7589416 () Bool)

(assert (=> bm!624009 m!7589416))

(assert (=> bs!1830602 d!2153277))

(assert (=> bs!1830608 d!2152681))

(declare-fun bm!624010 () Bool)

(declare-fun call!624016 () Bool)

(declare-fun c!1275296 () Bool)

(assert (=> bm!624010 (= call!624016 (nullable!6638 (ite c!1275296 (regOne!33863 r!7292) (regOne!33862 r!7292))))))

(declare-fun b!6850379 () Bool)

(declare-fun e!4130961 () Bool)

(declare-fun e!4130963 () Bool)

(assert (=> b!6850379 (= e!4130961 e!4130963)))

(declare-fun res!2796238 () Bool)

(assert (=> b!6850379 (=> res!2796238 e!4130963)))

(assert (=> b!6850379 (= res!2796238 ((_ is Star!16675) r!7292))))

(declare-fun b!6850380 () Bool)

(declare-fun e!4130960 () Bool)

(declare-fun e!4130962 () Bool)

(assert (=> b!6850380 (= e!4130960 e!4130962)))

(declare-fun res!2796237 () Bool)

(assert (=> b!6850380 (= res!2796237 call!624016)))

(assert (=> b!6850380 (=> res!2796237 e!4130962)))

(declare-fun b!6850381 () Bool)

(declare-fun e!4130965 () Bool)

(assert (=> b!6850381 (= e!4130960 e!4130965)))

(declare-fun res!2796236 () Bool)

(assert (=> b!6850381 (= res!2796236 call!624016)))

(assert (=> b!6850381 (=> (not res!2796236) (not e!4130965))))

(declare-fun b!6850382 () Bool)

(declare-fun e!4130964 () Bool)

(assert (=> b!6850382 (= e!4130964 e!4130961)))

(declare-fun res!2796235 () Bool)

(assert (=> b!6850382 (=> (not res!2796235) (not e!4130961))))

(assert (=> b!6850382 (= res!2796235 (and (not ((_ is EmptyLang!16675) r!7292)) (not ((_ is ElementMatch!16675) r!7292))))))

(declare-fun b!6850383 () Bool)

(declare-fun call!624015 () Bool)

(assert (=> b!6850383 (= e!4130965 call!624015)))

(declare-fun bm!624011 () Bool)

(assert (=> bm!624011 (= call!624015 (nullable!6638 (ite c!1275296 (regTwo!33863 r!7292) (regTwo!33862 r!7292))))))

(declare-fun b!6850388 () Bool)

(assert (=> b!6850388 (= e!4130962 call!624015)))

(declare-fun b!6850378 () Bool)

(assert (=> b!6850378 (= e!4130963 e!4130960)))

(assert (=> b!6850378 (= c!1275296 ((_ is Union!16675) r!7292))))

(declare-fun d!2153279 () Bool)

(declare-fun res!2796234 () Bool)

(assert (=> d!2153279 (=> res!2796234 e!4130964)))

(assert (=> d!2153279 (= res!2796234 ((_ is EmptyExpr!16675) r!7292))))

(assert (=> d!2153279 (= (nullableFct!2522 r!7292) e!4130964)))

(assert (= (and d!2153279 (not res!2796234)) b!6850382))

(assert (= (and b!6850382 res!2796235) b!6850379))

(assert (= (and b!6850379 (not res!2796238)) b!6850378))

(assert (= (and b!6850378 c!1275296) b!6850380))

(assert (= (and b!6850378 (not c!1275296)) b!6850381))

(assert (= (and b!6850380 (not res!2796237)) b!6850388))

(assert (= (and b!6850381 res!2796236) b!6850383))

(assert (= (or b!6850388 b!6850383) bm!624011))

(assert (= (or b!6850380 b!6850381) bm!624010))

(declare-fun m!7589418 () Bool)

(assert (=> bm!624010 m!7589418))

(declare-fun m!7589420 () Bool)

(assert (=> bm!624011 m!7589420))

(assert (=> d!2152629 d!2153279))

(declare-fun b!6850397 () Bool)

(declare-fun e!4130970 () Bool)

(declare-fun call!624017 () Bool)

(assert (=> b!6850397 (= e!4130970 call!624017)))

(declare-fun b!6850398 () Bool)

(declare-fun e!4130974 () Bool)

(declare-fun e!4130972 () Bool)

(assert (=> b!6850398 (= e!4130974 e!4130972)))

(declare-fun c!1275298 () Bool)

(assert (=> b!6850398 (= c!1275298 ((_ is Star!16675) lt!2456022))))

(declare-fun b!6850399 () Bool)

(declare-fun e!4130971 () Bool)

(declare-fun call!624018 () Bool)

(assert (=> b!6850399 (= e!4130971 call!624018)))

(declare-fun b!6850400 () Bool)

(declare-fun e!4130973 () Bool)

(assert (=> b!6850400 (= e!4130973 e!4130971)))

(declare-fun res!2796239 () Bool)

(assert (=> b!6850400 (=> (not res!2796239) (not e!4130971))))

(declare-fun call!624019 () Bool)

(assert (=> b!6850400 (= res!2796239 call!624019)))

(declare-fun bm!624012 () Bool)

(declare-fun c!1275297 () Bool)

(assert (=> bm!624012 (= call!624019 (validRegex!8411 (ite c!1275297 (regOne!33863 lt!2456022) (regOne!33862 lt!2456022))))))

(declare-fun b!6850401 () Bool)

(assert (=> b!6850401 (= e!4130972 e!4130970)))

(declare-fun res!2796242 () Bool)

(assert (=> b!6850401 (= res!2796242 (not (nullable!6638 (reg!17004 lt!2456022))))))

(assert (=> b!6850401 (=> (not res!2796242) (not e!4130970))))

(declare-fun bm!624013 () Bool)

(assert (=> bm!624013 (= call!624018 call!624017)))

(declare-fun b!6850402 () Bool)

(declare-fun e!4130969 () Bool)

(assert (=> b!6850402 (= e!4130972 e!4130969)))

(assert (=> b!6850402 (= c!1275297 ((_ is Union!16675) lt!2456022))))

(declare-fun b!6850403 () Bool)

(declare-fun e!4130975 () Bool)

(assert (=> b!6850403 (= e!4130975 call!624018)))

(declare-fun bm!624014 () Bool)

(assert (=> bm!624014 (= call!624017 (validRegex!8411 (ite c!1275298 (reg!17004 lt!2456022) (ite c!1275297 (regTwo!33863 lt!2456022) (regTwo!33862 lt!2456022)))))))

(declare-fun b!6850404 () Bool)

(declare-fun res!2796241 () Bool)

(assert (=> b!6850404 (=> (not res!2796241) (not e!4130975))))

(assert (=> b!6850404 (= res!2796241 call!624019)))

(assert (=> b!6850404 (= e!4130969 e!4130975)))

(declare-fun d!2153281 () Bool)

(declare-fun res!2796243 () Bool)

(assert (=> d!2153281 (=> res!2796243 e!4130974)))

(assert (=> d!2153281 (= res!2796243 ((_ is ElementMatch!16675) lt!2456022))))

(assert (=> d!2153281 (= (validRegex!8411 lt!2456022) e!4130974)))

(declare-fun b!6850405 () Bool)

(declare-fun res!2796240 () Bool)

(assert (=> b!6850405 (=> res!2796240 e!4130973)))

(assert (=> b!6850405 (= res!2796240 (not ((_ is Concat!25520) lt!2456022)))))

(assert (=> b!6850405 (= e!4130969 e!4130973)))

(assert (= (and d!2153281 (not res!2796243)) b!6850398))

(assert (= (and b!6850398 c!1275298) b!6850401))

(assert (= (and b!6850398 (not c!1275298)) b!6850402))

(assert (= (and b!6850401 res!2796242) b!6850397))

(assert (= (and b!6850402 c!1275297) b!6850404))

(assert (= (and b!6850402 (not c!1275297)) b!6850405))

(assert (= (and b!6850404 res!2796241) b!6850403))

(assert (= (and b!6850405 (not res!2796240)) b!6850400))

(assert (= (and b!6850400 res!2796239) b!6850399))

(assert (= (or b!6850403 b!6850399) bm!624013))

(assert (= (or b!6850404 b!6850400) bm!624012))

(assert (= (or b!6850397 bm!624013) bm!624014))

(declare-fun m!7589422 () Bool)

(assert (=> bm!624012 m!7589422))

(declare-fun m!7589424 () Bool)

(assert (=> b!6850401 m!7589424))

(declare-fun m!7589426 () Bool)

(assert (=> bm!624014 m!7589426))

(assert (=> d!2152585 d!2153281))

(declare-fun d!2153283 () Bool)

(declare-fun res!2796244 () Bool)

(declare-fun e!4130980 () Bool)

(assert (=> d!2153283 (=> res!2796244 e!4130980)))

(assert (=> d!2153283 (= res!2796244 ((_ is Nil!66200) (exprs!6559 (h!72649 zl!343))))))

(assert (=> d!2153283 (= (forall!15853 (exprs!6559 (h!72649 zl!343)) lambda!387258) e!4130980)))

(declare-fun b!6850422 () Bool)

(declare-fun e!4130981 () Bool)

(assert (=> b!6850422 (= e!4130980 e!4130981)))

(declare-fun res!2796245 () Bool)

(assert (=> b!6850422 (=> (not res!2796245) (not e!4130981))))

(assert (=> b!6850422 (= res!2796245 (dynLambda!26455 lambda!387258 (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6850423 () Bool)

(assert (=> b!6850423 (= e!4130981 (forall!15853 (t!380067 (exprs!6559 (h!72649 zl!343))) lambda!387258))))

(assert (= (and d!2153283 (not res!2796244)) b!6850422))

(assert (= (and b!6850422 res!2796245) b!6850423))

(declare-fun b_lambda!258559 () Bool)

(assert (=> (not b_lambda!258559) (not b!6850422)))

(declare-fun m!7589428 () Bool)

(assert (=> b!6850422 m!7589428))

(declare-fun m!7589430 () Bool)

(assert (=> b!6850423 m!7589430))

(assert (=> d!2152585 d!2153283))

(assert (=> b!6848487 d!2153155))

(declare-fun bs!1831203 () Bool)

(declare-fun d!2153285 () Bool)

(assert (= bs!1831203 (and d!2153285 d!2152589)))

(declare-fun lambda!387318 () Int)

(assert (=> bs!1831203 (not (= lambda!387318 lambda!387260))))

(declare-fun bs!1831204 () Bool)

(assert (= bs!1831204 (and d!2153285 d!2152691)))

(assert (=> bs!1831204 (= lambda!387318 lambda!387275)))

(declare-fun bs!1831205 () Bool)

(assert (= bs!1831205 (and d!2153285 d!2152603)))

(assert (=> bs!1831205 (= lambda!387318 lambda!387264)))

(declare-fun bs!1831206 () Bool)

(assert (= bs!1831206 (and d!2153285 d!2153215)))

(assert (=> bs!1831206 (= lambda!387318 lambda!387314)))

(declare-fun bs!1831207 () Bool)

(assert (= bs!1831207 (and d!2153285 d!2152671)))

(assert (=> bs!1831207 (= lambda!387318 lambda!387272)))

(declare-fun bs!1831208 () Bool)

(assert (= bs!1831208 (and d!2153285 d!2152405)))

(assert (=> bs!1831208 (not (= lambda!387318 lambda!387217))))

(declare-fun bs!1831209 () Bool)

(assert (= bs!1831209 (and d!2153285 d!2152621)))

(assert (=> bs!1831209 (= lambda!387318 lambda!387267)))

(declare-fun bs!1831210 () Bool)

(assert (= bs!1831210 (and d!2153285 d!2152591)))

(assert (=> bs!1831210 (not (= lambda!387318 lambda!387263))))

(declare-fun bs!1831211 () Bool)

(assert (= bs!1831211 (and d!2153285 d!2153089)))

(assert (=> bs!1831211 (= lambda!387318 lambda!387304)))

(declare-fun bs!1831212 () Bool)

(assert (= bs!1831212 (and d!2153285 d!2152585)))

(assert (=> bs!1831212 (= lambda!387318 lambda!387258)))

(declare-fun bs!1831213 () Bool)

(assert (= bs!1831213 (and d!2153285 d!2152407)))

(assert (=> bs!1831213 (= lambda!387318 lambda!387222)))

(declare-fun bs!1831214 () Bool)

(assert (= bs!1831214 (and d!2153285 d!2152409)))

(assert (=> bs!1831214 (= lambda!387318 lambda!387226)))

(declare-fun bs!1831215 () Bool)

(assert (= bs!1831215 (and d!2153285 d!2152411)))

(assert (=> bs!1831215 (= lambda!387318 lambda!387227)))

(declare-fun bs!1831216 () Bool)

(assert (= bs!1831216 (and d!2153285 d!2152375)))

(assert (=> bs!1831216 (= lambda!387318 lambda!387214)))

(declare-fun bs!1831217 () Bool)

(assert (= bs!1831217 (and d!2153285 d!2153259)))

(assert (=> bs!1831217 (= lambda!387318 lambda!387317)))

(declare-fun bs!1831218 () Bool)

(assert (= bs!1831218 (and d!2153285 d!2153105)))

(assert (=> bs!1831218 (not (= lambda!387318 lambda!387306))))

(assert (=> bs!1831213 (not (= lambda!387318 lambda!387223))))

(declare-fun bs!1831219 () Bool)

(assert (= bs!1831219 (and d!2153285 d!2153141)))

(assert (=> bs!1831219 (= lambda!387318 lambda!387309)))

(declare-fun bs!1831220 () Bool)

(assert (= bs!1831220 (and d!2153285 d!2153187)))

(assert (=> bs!1831220 (= lambda!387318 lambda!387312)))

(declare-fun bs!1831221 () Bool)

(assert (= bs!1831221 (and d!2153285 d!2153155)))

(assert (=> bs!1831221 (= lambda!387318 lambda!387310)))

(declare-fun bs!1831222 () Bool)

(assert (= bs!1831222 (and d!2153285 b!6847423)))

(assert (=> bs!1831222 (not (= lambda!387318 lambda!387176))))

(declare-fun bs!1831223 () Bool)

(assert (= bs!1831223 (and d!2153285 d!2153245)))

(assert (=> bs!1831223 (not (= lambda!387318 lambda!387316))))

(declare-fun bs!1831224 () Bool)

(assert (= bs!1831224 (and d!2153285 d!2152587)))

(assert (=> bs!1831224 (= lambda!387318 lambda!387259)))

(declare-fun lt!2456133 () List!66324)

(assert (=> d!2153285 (forall!15853 lt!2456133 lambda!387318)))

(declare-fun e!4130986 () List!66324)

(assert (=> d!2153285 (= lt!2456133 e!4130986)))

(declare-fun c!1275299 () Bool)

(assert (=> d!2153285 (= c!1275299 ((_ is Cons!66201) (t!380068 (t!380068 zl!343))))))

(assert (=> d!2153285 (= (unfocusZipperList!2092 (t!380068 (t!380068 zl!343))) lt!2456133)))

(declare-fun b!6850437 () Bool)

(assert (=> b!6850437 (= e!4130986 (Cons!66200 (generalisedConcat!2266 (exprs!6559 (h!72649 (t!380068 (t!380068 zl!343))))) (unfocusZipperList!2092 (t!380068 (t!380068 (t!380068 zl!343))))))))

(declare-fun b!6850438 () Bool)

(assert (=> b!6850438 (= e!4130986 Nil!66200)))

(assert (= (and d!2153285 c!1275299) b!6850437))

(assert (= (and d!2153285 (not c!1275299)) b!6850438))

(declare-fun m!7589432 () Bool)

(assert (=> d!2153285 m!7589432))

(declare-fun m!7589434 () Bool)

(assert (=> b!6850437 m!7589434))

(declare-fun m!7589436 () Bool)

(assert (=> b!6850437 m!7589436))

(assert (=> b!6848487 d!2153285))

(assert (=> d!2152625 d!2152617))

(declare-fun b!6850488 () Bool)

(declare-fun e!4131001 () Bool)

(declare-fun call!624020 () Bool)

(assert (=> b!6850488 (= e!4131001 call!624020)))

(declare-fun b!6850489 () Bool)

(declare-fun e!4131005 () Bool)

(declare-fun e!4131003 () Bool)

(assert (=> b!6850489 (= e!4131005 e!4131003)))

(declare-fun c!1275301 () Bool)

(assert (=> b!6850489 (= c!1275301 ((_ is Star!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun b!6850490 () Bool)

(declare-fun e!4131002 () Bool)

(declare-fun call!624021 () Bool)

(assert (=> b!6850490 (= e!4131002 call!624021)))

(declare-fun b!6850491 () Bool)

(declare-fun e!4131004 () Bool)

(assert (=> b!6850491 (= e!4131004 e!4131002)))

(declare-fun res!2796246 () Bool)

(assert (=> b!6850491 (=> (not res!2796246) (not e!4131002))))

(declare-fun call!624022 () Bool)

(assert (=> b!6850491 (= res!2796246 call!624022)))

(declare-fun c!1275300 () Bool)

(declare-fun bm!624015 () Bool)

(assert (=> bm!624015 (= call!624022 (validRegex!8411 (ite c!1275300 (regOne!33863 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (regOne!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))))

(declare-fun b!6850492 () Bool)

(assert (=> b!6850492 (= e!4131003 e!4131001)))

(declare-fun res!2796249 () Bool)

(assert (=> b!6850492 (= res!2796249 (not (nullable!6638 (reg!17004 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))))

(assert (=> b!6850492 (=> (not res!2796249) (not e!4131001))))

(declare-fun bm!624016 () Bool)

(assert (=> bm!624016 (= call!624021 call!624020)))

(declare-fun b!6850493 () Bool)

(declare-fun e!4131000 () Bool)

(assert (=> b!6850493 (= e!4131003 e!4131000)))

(assert (=> b!6850493 (= c!1275300 ((_ is Union!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(declare-fun b!6850494 () Bool)

(declare-fun e!4131006 () Bool)

(assert (=> b!6850494 (= e!4131006 call!624021)))

(declare-fun bm!624017 () Bool)

(assert (=> bm!624017 (= call!624020 (validRegex!8411 (ite c!1275301 (reg!17004 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (ite c!1275300 (regTwo!33863 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) (regTwo!33862 (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))))))

(declare-fun b!6850495 () Bool)

(declare-fun res!2796248 () Bool)

(assert (=> b!6850495 (=> (not res!2796248) (not e!4131006))))

(assert (=> b!6850495 (= res!2796248 call!624022)))

(assert (=> b!6850495 (= e!4131000 e!4131006)))

(declare-fun d!2153287 () Bool)

(declare-fun res!2796250 () Bool)

(assert (=> d!2153287 (=> res!2796250 e!4131005)))

(assert (=> d!2153287 (= res!2796250 ((_ is ElementMatch!16675) (derivativeStep!5321 lt!2455885 (head!13727 s!2326))))))

(assert (=> d!2153287 (= (validRegex!8411 (derivativeStep!5321 lt!2455885 (head!13727 s!2326))) e!4131005)))

(declare-fun b!6850496 () Bool)

(declare-fun res!2796247 () Bool)

(assert (=> b!6850496 (=> res!2796247 e!4131004)))

(assert (=> b!6850496 (= res!2796247 (not ((_ is Concat!25520) (derivativeStep!5321 lt!2455885 (head!13727 s!2326)))))))

(assert (=> b!6850496 (= e!4131000 e!4131004)))

(assert (= (and d!2153287 (not res!2796250)) b!6850489))

(assert (= (and b!6850489 c!1275301) b!6850492))

(assert (= (and b!6850489 (not c!1275301)) b!6850493))

(assert (= (and b!6850492 res!2796249) b!6850488))

(assert (= (and b!6850493 c!1275300) b!6850495))

(assert (= (and b!6850493 (not c!1275300)) b!6850496))

(assert (= (and b!6850495 res!2796248) b!6850494))

(assert (= (and b!6850496 (not res!2796247)) b!6850491))

(assert (= (and b!6850491 res!2796246) b!6850490))

(assert (= (or b!6850494 b!6850490) bm!624016))

(assert (= (or b!6850495 b!6850491) bm!624015))

(assert (= (or b!6850488 bm!624016) bm!624017))

(declare-fun m!7589438 () Bool)

(assert (=> bm!624015 m!7589438))

(declare-fun m!7589440 () Bool)

(assert (=> b!6850492 m!7589440))

(declare-fun m!7589442 () Bool)

(assert (=> bm!624017 m!7589442))

(assert (=> d!2152625 d!2153287))

(declare-fun d!2153289 () Bool)

(assert (=> d!2153289 (= (nullable!6638 (reg!17004 lt!2455953)) (nullableFct!2522 (reg!17004 lt!2455953)))))

(declare-fun bs!1831225 () Bool)

(assert (= bs!1831225 d!2153289))

(declare-fun m!7589444 () Bool)

(assert (=> bs!1831225 m!7589444))

(assert (=> b!6848666 d!2153289))

(declare-fun d!2153291 () Bool)

(declare-fun res!2796251 () Bool)

(declare-fun e!4131012 () Bool)

(assert (=> d!2153291 (=> res!2796251 e!4131012)))

(assert (=> d!2153291 (= res!2796251 ((_ is Nil!66200) lt!2456023))))

(assert (=> d!2153291 (= (forall!15853 lt!2456023 lambda!387259) e!4131012)))

(declare-fun b!6850517 () Bool)

(declare-fun e!4131013 () Bool)

(assert (=> b!6850517 (= e!4131012 e!4131013)))

(declare-fun res!2796252 () Bool)

(assert (=> b!6850517 (=> (not res!2796252) (not e!4131013))))

(assert (=> b!6850517 (= res!2796252 (dynLambda!26455 lambda!387259 (h!72648 lt!2456023)))))

(declare-fun b!6850518 () Bool)

(assert (=> b!6850518 (= e!4131013 (forall!15853 (t!380067 lt!2456023) lambda!387259))))

(assert (= (and d!2153291 (not res!2796251)) b!6850517))

(assert (= (and b!6850517 res!2796252) b!6850518))

(declare-fun b_lambda!258561 () Bool)

(assert (=> (not b_lambda!258561) (not b!6850517)))

(declare-fun m!7589446 () Bool)

(assert (=> b!6850517 m!7589446))

(declare-fun m!7589448 () Bool)

(assert (=> b!6850518 m!7589448))

(assert (=> d!2152587 d!2153291))

(declare-fun d!2153293 () Bool)

(declare-fun res!2796253 () Bool)

(declare-fun e!4131016 () Bool)

(assert (=> d!2153293 (=> res!2796253 e!4131016)))

(assert (=> d!2153293 (= res!2796253 ((_ is Nil!66201) res!2795710))))

(assert (=> d!2153293 (= (noDuplicate!2441 res!2795710) e!4131016)))

(declare-fun b!6850527 () Bool)

(declare-fun e!4131017 () Bool)

(assert (=> b!6850527 (= e!4131016 e!4131017)))

(declare-fun res!2796254 () Bool)

(assert (=> b!6850527 (=> (not res!2796254) (not e!4131017))))

(assert (=> b!6850527 (= res!2796254 (not (contains!20327 (t!380068 res!2795710) (h!72649 res!2795710))))))

(declare-fun b!6850528 () Bool)

(assert (=> b!6850528 (= e!4131017 (noDuplicate!2441 (t!380068 res!2795710)))))

(assert (= (and d!2153293 (not res!2796253)) b!6850527))

(assert (= (and b!6850527 res!2796254) b!6850528))

(declare-fun m!7589450 () Bool)

(assert (=> b!6850527 m!7589450))

(declare-fun m!7589452 () Bool)

(assert (=> b!6850528 m!7589452))

(assert (=> d!2152705 d!2153293))

(declare-fun bs!1831226 () Bool)

(declare-fun d!2153295 () Bool)

(assert (= bs!1831226 (and d!2153295 d!2152589)))

(declare-fun lambda!387319 () Int)

(assert (=> bs!1831226 (not (= lambda!387319 lambda!387260))))

(declare-fun bs!1831227 () Bool)

(assert (= bs!1831227 (and d!2153295 d!2152691)))

(assert (=> bs!1831227 (= lambda!387319 lambda!387275)))

(declare-fun bs!1831228 () Bool)

(assert (= bs!1831228 (and d!2153295 d!2153285)))

(assert (=> bs!1831228 (= lambda!387319 lambda!387318)))

(declare-fun bs!1831229 () Bool)

(assert (= bs!1831229 (and d!2153295 d!2152603)))

(assert (=> bs!1831229 (= lambda!387319 lambda!387264)))

(declare-fun bs!1831230 () Bool)

(assert (= bs!1831230 (and d!2153295 d!2153215)))

(assert (=> bs!1831230 (= lambda!387319 lambda!387314)))

(declare-fun bs!1831231 () Bool)

(assert (= bs!1831231 (and d!2153295 d!2152671)))

(assert (=> bs!1831231 (= lambda!387319 lambda!387272)))

(declare-fun bs!1831232 () Bool)

(assert (= bs!1831232 (and d!2153295 d!2152405)))

(assert (=> bs!1831232 (not (= lambda!387319 lambda!387217))))

(declare-fun bs!1831233 () Bool)

(assert (= bs!1831233 (and d!2153295 d!2152621)))

(assert (=> bs!1831233 (= lambda!387319 lambda!387267)))

(declare-fun bs!1831234 () Bool)

(assert (= bs!1831234 (and d!2153295 d!2152591)))

(assert (=> bs!1831234 (not (= lambda!387319 lambda!387263))))

(declare-fun bs!1831235 () Bool)

(assert (= bs!1831235 (and d!2153295 d!2153089)))

(assert (=> bs!1831235 (= lambda!387319 lambda!387304)))

(declare-fun bs!1831236 () Bool)

(assert (= bs!1831236 (and d!2153295 d!2152585)))

(assert (=> bs!1831236 (= lambda!387319 lambda!387258)))

(declare-fun bs!1831237 () Bool)

(assert (= bs!1831237 (and d!2153295 d!2152407)))

(assert (=> bs!1831237 (= lambda!387319 lambda!387222)))

(declare-fun bs!1831238 () Bool)

(assert (= bs!1831238 (and d!2153295 d!2152409)))

(assert (=> bs!1831238 (= lambda!387319 lambda!387226)))

(declare-fun bs!1831239 () Bool)

(assert (= bs!1831239 (and d!2153295 d!2152411)))

(assert (=> bs!1831239 (= lambda!387319 lambda!387227)))

(declare-fun bs!1831240 () Bool)

(assert (= bs!1831240 (and d!2153295 d!2152375)))

(assert (=> bs!1831240 (= lambda!387319 lambda!387214)))

(declare-fun bs!1831241 () Bool)

(assert (= bs!1831241 (and d!2153295 d!2153259)))

(assert (=> bs!1831241 (= lambda!387319 lambda!387317)))

(declare-fun bs!1831242 () Bool)

(assert (= bs!1831242 (and d!2153295 d!2153105)))

(assert (=> bs!1831242 (not (= lambda!387319 lambda!387306))))

(assert (=> bs!1831237 (not (= lambda!387319 lambda!387223))))

(declare-fun bs!1831243 () Bool)

(assert (= bs!1831243 (and d!2153295 d!2153141)))

(assert (=> bs!1831243 (= lambda!387319 lambda!387309)))

(declare-fun bs!1831244 () Bool)

(assert (= bs!1831244 (and d!2153295 d!2153187)))

(assert (=> bs!1831244 (= lambda!387319 lambda!387312)))

(declare-fun bs!1831245 () Bool)

(assert (= bs!1831245 (and d!2153295 d!2153155)))

(assert (=> bs!1831245 (= lambda!387319 lambda!387310)))

(declare-fun bs!1831246 () Bool)

(assert (= bs!1831246 (and d!2153295 b!6847423)))

(assert (=> bs!1831246 (not (= lambda!387319 lambda!387176))))

(declare-fun bs!1831247 () Bool)

(assert (= bs!1831247 (and d!2153295 d!2153245)))

(assert (=> bs!1831247 (not (= lambda!387319 lambda!387316))))

(declare-fun bs!1831248 () Bool)

(assert (= bs!1831248 (and d!2153295 d!2152587)))

(assert (=> bs!1831248 (= lambda!387319 lambda!387259)))

(assert (=> d!2153295 (= (inv!84934 (h!72649 res!2795634)) (forall!15853 (exprs!6559 (h!72649 res!2795634)) lambda!387319))))

(declare-fun bs!1831249 () Bool)

(assert (= bs!1831249 d!2153295))

(declare-fun m!7589454 () Bool)

(assert (=> bs!1831249 m!7589454))

(assert (=> b!6848648 d!2153295))

(declare-fun d!2153297 () Bool)

(declare-fun lt!2456134 () Bool)

(assert (=> d!2153297 (= lt!2456134 (select (content!12982 (t!380067 lt!2455888)) lt!2455953))))

(declare-fun e!4131033 () Bool)

(assert (=> d!2153297 (= lt!2456134 e!4131033)))

(declare-fun res!2796255 () Bool)

(assert (=> d!2153297 (=> (not res!2796255) (not e!4131033))))

(assert (=> d!2153297 (= res!2796255 ((_ is Cons!66200) (t!380067 lt!2455888)))))

(assert (=> d!2153297 (= (contains!20325 (t!380067 lt!2455888) lt!2455953) lt!2456134)))

(declare-fun b!6850579 () Bool)

(declare-fun e!4131032 () Bool)

(assert (=> b!6850579 (= e!4131033 e!4131032)))

(declare-fun res!2796256 () Bool)

(assert (=> b!6850579 (=> res!2796256 e!4131032)))

(assert (=> b!6850579 (= res!2796256 (= (h!72648 (t!380067 lt!2455888)) lt!2455953))))

(declare-fun b!6850580 () Bool)

(assert (=> b!6850580 (= e!4131032 (contains!20325 (t!380067 (t!380067 lt!2455888)) lt!2455953))))

(assert (= (and d!2153297 res!2796255) b!6850579))

(assert (= (and b!6850579 (not res!2796256)) b!6850580))

(assert (=> d!2153297 m!7587872))

(declare-fun m!7589458 () Bool)

(assert (=> d!2153297 m!7589458))

(declare-fun m!7589460 () Bool)

(assert (=> b!6850580 m!7589460))

(assert (=> b!6848652 d!2153297))

(declare-fun b!6850589 () Bool)

(declare-fun e!4131038 () Int)

(declare-fun call!624023 () Int)

(assert (=> b!6850589 (= e!4131038 (+ 1 call!624023))))

(declare-fun d!2153299 () Bool)

(declare-fun lt!2456135 () Int)

(assert (=> d!2153299 (> lt!2456135 0)))

(declare-fun e!4131037 () Int)

(assert (=> d!2153299 (= lt!2456135 e!4131037)))

(declare-fun c!1275305 () Bool)

(assert (=> d!2153299 (= c!1275305 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> d!2153299 (= (regexDepthTotal!249 (h!72648 (exprs!6559 (h!72649 zl!343)))) lt!2456135)))

(declare-fun b!6850590 () Bool)

(declare-fun e!4131036 () Int)

(declare-fun call!624025 () Int)

(declare-fun call!624024 () Int)

(assert (=> b!6850590 (= e!4131036 (+ 1 call!624025 call!624024))))

(declare-fun b!6850591 () Bool)

(declare-fun e!4131039 () Int)

(assert (=> b!6850591 (= e!4131036 e!4131039)))

(declare-fun c!1275303 () Bool)

(assert (=> b!6850591 (= c!1275303 ((_ is Concat!25520) (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun bm!624018 () Bool)

(declare-fun c!1275304 () Bool)

(declare-fun c!1275302 () Bool)

(assert (=> bm!624018 (= call!624023 (regexDepthTotal!249 (ite c!1275304 (reg!17004 (h!72648 (exprs!6559 (h!72649 zl!343)))) (ite c!1275302 (regTwo!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))) (regTwo!33862 (h!72648 (exprs!6559 (h!72649 zl!343))))))))))

(declare-fun bm!624019 () Bool)

(assert (=> bm!624019 (= call!624025 (regexDepthTotal!249 (ite c!1275302 (regOne!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))) (regOne!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))))))

(declare-fun b!6850592 () Bool)

(assert (=> b!6850592 (= e!4131037 1)))

(declare-fun bm!624020 () Bool)

(assert (=> bm!624020 (= call!624024 call!624023)))

(declare-fun b!6850593 () Bool)

(assert (=> b!6850593 (= e!4131037 e!4131038)))

(assert (=> b!6850593 (= c!1275304 ((_ is Star!16675) (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6850594 () Bool)

(assert (=> b!6850594 (= e!4131039 1)))

(declare-fun b!6850595 () Bool)

(assert (=> b!6850595 (= e!4131039 (+ 1 call!624025 call!624024))))

(declare-fun b!6850596 () Bool)

(assert (=> b!6850596 (= c!1275302 ((_ is Union!16675) (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> b!6850596 (= e!4131038 e!4131036)))

(assert (= (and d!2153299 c!1275305) b!6850592))

(assert (= (and d!2153299 (not c!1275305)) b!6850593))

(assert (= (and b!6850593 c!1275304) b!6850589))

(assert (= (and b!6850593 (not c!1275304)) b!6850596))

(assert (= (and b!6850596 c!1275302) b!6850590))

(assert (= (and b!6850596 (not c!1275302)) b!6850591))

(assert (= (and b!6850591 c!1275303) b!6850595))

(assert (= (and b!6850591 (not c!1275303)) b!6850594))

(assert (= (or b!6850590 b!6850595) bm!624020))

(assert (= (or b!6850590 b!6850595) bm!624019))

(assert (= (or b!6850589 bm!624020) bm!624018))

(declare-fun m!7589462 () Bool)

(assert (=> bm!624018 m!7589462))

(declare-fun m!7589464 () Bool)

(assert (=> bm!624019 m!7589464))

(assert (=> b!6848563 d!2153299))

(declare-fun d!2153301 () Bool)

(declare-fun lt!2456136 () Int)

(assert (=> d!2153301 (>= lt!2456136 0)))

(declare-fun e!4131043 () Int)

(assert (=> d!2153301 (= lt!2456136 e!4131043)))

(declare-fun c!1275306 () Bool)

(assert (=> d!2153301 (= c!1275306 ((_ is Cons!66200) (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (h!72649 zl!343)))))))))

(assert (=> d!2153301 (= (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (h!72649 zl!343))))) lt!2456136)))

(declare-fun b!6850609 () Bool)

(assert (=> b!6850609 (= e!4131043 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (h!72649 zl!343))))))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (Context!12119 (t!380067 (exprs!6559 (h!72649 zl!343))))))))))))

(declare-fun b!6850610 () Bool)

(assert (=> b!6850610 (= e!4131043 1)))

(assert (= (and d!2153301 c!1275306) b!6850609))

(assert (= (and d!2153301 (not c!1275306)) b!6850610))

(declare-fun m!7589466 () Bool)

(assert (=> b!6850609 m!7589466))

(declare-fun m!7589468 () Bool)

(assert (=> b!6850609 m!7589468))

(assert (=> b!6848563 d!2153301))

(declare-fun d!2153303 () Bool)

(assert (=> d!2153303 (= (isEmptyLang!2017 lt!2456035) ((_ is EmptyLang!16675) lt!2456035))))

(assert (=> b!6848602 d!2153303))

(declare-fun b!6850633 () Bool)

(declare-fun e!4131053 () Int)

(declare-fun call!624026 () Int)

(assert (=> b!6850633 (= e!4131053 (+ 1 call!624026))))

(declare-fun d!2153305 () Bool)

(declare-fun lt!2456137 () Int)

(assert (=> d!2153305 (> lt!2456137 0)))

(declare-fun e!4131052 () Int)

(assert (=> d!2153305 (= lt!2456137 e!4131052)))

(declare-fun c!1275310 () Bool)

(assert (=> d!2153305 (= c!1275310 ((_ is ElementMatch!16675) (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))))))

(assert (=> d!2153305 (= (regexDepthTotal!249 (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))) lt!2456137)))

(declare-fun b!6850634 () Bool)

(declare-fun e!4131051 () Int)

(declare-fun call!624028 () Int)

(declare-fun call!624027 () Int)

(assert (=> b!6850634 (= e!4131051 (+ 1 call!624028 call!624027))))

(declare-fun b!6850635 () Bool)

(declare-fun e!4131054 () Int)

(assert (=> b!6850635 (= e!4131051 e!4131054)))

(declare-fun c!1275308 () Bool)

(assert (=> b!6850635 (= c!1275308 ((_ is Concat!25520) (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))))))

(declare-fun c!1275307 () Bool)

(declare-fun c!1275309 () Bool)

(declare-fun bm!624021 () Bool)

(assert (=> bm!624021 (= call!624026 (regexDepthTotal!249 (ite c!1275309 (reg!17004 (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))) (ite c!1275307 (regTwo!33863 (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))) (regTwo!33862 (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879)))))))))))

(declare-fun bm!624022 () Bool)

(assert (=> bm!624022 (= call!624028 (regexDepthTotal!249 (ite c!1275307 (regOne!33863 (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))) (regOne!33862 (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))))))))

(declare-fun b!6850636 () Bool)

(assert (=> b!6850636 (= e!4131052 1)))

(declare-fun bm!624023 () Bool)

(assert (=> bm!624023 (= call!624027 call!624026)))

(declare-fun b!6850637 () Bool)

(assert (=> b!6850637 (= e!4131052 e!4131053)))

(assert (=> b!6850637 (= c!1275309 ((_ is Star!16675) (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))))))

(declare-fun b!6850638 () Bool)

(assert (=> b!6850638 (= e!4131054 1)))

(declare-fun b!6850639 () Bool)

(assert (=> b!6850639 (= e!4131054 (+ 1 call!624028 call!624027))))

(declare-fun b!6850640 () Bool)

(assert (=> b!6850640 (= c!1275307 ((_ is Union!16675) (ite c!1274928 (regOne!33863 (h!72648 (exprs!6559 lt!2455879))) (regOne!33862 (h!72648 (exprs!6559 lt!2455879))))))))

(assert (=> b!6850640 (= e!4131053 e!4131051)))

(assert (= (and d!2153305 c!1275310) b!6850636))

(assert (= (and d!2153305 (not c!1275310)) b!6850637))

(assert (= (and b!6850637 c!1275309) b!6850633))

(assert (= (and b!6850637 (not c!1275309)) b!6850640))

(assert (= (and b!6850640 c!1275307) b!6850634))

(assert (= (and b!6850640 (not c!1275307)) b!6850635))

(assert (= (and b!6850635 c!1275308) b!6850639))

(assert (= (and b!6850635 (not c!1275308)) b!6850638))

(assert (= (or b!6850634 b!6850639) bm!624023))

(assert (= (or b!6850634 b!6850639) bm!624022))

(assert (= (or b!6850633 bm!624023) bm!624021))

(declare-fun m!7589472 () Bool)

(assert (=> bm!624021 m!7589472))

(declare-fun m!7589474 () Bool)

(assert (=> bm!624022 m!7589474))

(assert (=> bm!623727 d!2153305))

(declare-fun bs!1831250 () Bool)

(declare-fun d!2153307 () Bool)

(assert (= bs!1831250 (and d!2153307 d!2152589)))

(declare-fun lambda!387320 () Int)

(assert (=> bs!1831250 (not (= lambda!387320 lambda!387260))))

(declare-fun bs!1831251 () Bool)

(assert (= bs!1831251 (and d!2153307 d!2152691)))

(assert (=> bs!1831251 (= lambda!387320 lambda!387275)))

(declare-fun bs!1831252 () Bool)

(assert (= bs!1831252 (and d!2153307 d!2153285)))

(assert (=> bs!1831252 (= lambda!387320 lambda!387318)))

(declare-fun bs!1831253 () Bool)

(assert (= bs!1831253 (and d!2153307 d!2152603)))

(assert (=> bs!1831253 (= lambda!387320 lambda!387264)))

(declare-fun bs!1831254 () Bool)

(assert (= bs!1831254 (and d!2153307 d!2152671)))

(assert (=> bs!1831254 (= lambda!387320 lambda!387272)))

(declare-fun bs!1831255 () Bool)

(assert (= bs!1831255 (and d!2153307 d!2152405)))

(assert (=> bs!1831255 (not (= lambda!387320 lambda!387217))))

(declare-fun bs!1831256 () Bool)

(assert (= bs!1831256 (and d!2153307 d!2152621)))

(assert (=> bs!1831256 (= lambda!387320 lambda!387267)))

(declare-fun bs!1831257 () Bool)

(assert (= bs!1831257 (and d!2153307 d!2152591)))

(assert (=> bs!1831257 (not (= lambda!387320 lambda!387263))))

(declare-fun bs!1831258 () Bool)

(assert (= bs!1831258 (and d!2153307 d!2153089)))

(assert (=> bs!1831258 (= lambda!387320 lambda!387304)))

(declare-fun bs!1831259 () Bool)

(assert (= bs!1831259 (and d!2153307 d!2152585)))

(assert (=> bs!1831259 (= lambda!387320 lambda!387258)))

(declare-fun bs!1831260 () Bool)

(assert (= bs!1831260 (and d!2153307 d!2152407)))

(assert (=> bs!1831260 (= lambda!387320 lambda!387222)))

(declare-fun bs!1831261 () Bool)

(assert (= bs!1831261 (and d!2153307 d!2152409)))

(assert (=> bs!1831261 (= lambda!387320 lambda!387226)))

(declare-fun bs!1831262 () Bool)

(assert (= bs!1831262 (and d!2153307 d!2152411)))

(assert (=> bs!1831262 (= lambda!387320 lambda!387227)))

(declare-fun bs!1831263 () Bool)

(assert (= bs!1831263 (and d!2153307 d!2153295)))

(assert (=> bs!1831263 (= lambda!387320 lambda!387319)))

(declare-fun bs!1831264 () Bool)

(assert (= bs!1831264 (and d!2153307 d!2153215)))

(assert (=> bs!1831264 (= lambda!387320 lambda!387314)))

(declare-fun bs!1831265 () Bool)

(assert (= bs!1831265 (and d!2153307 d!2152375)))

(assert (=> bs!1831265 (= lambda!387320 lambda!387214)))

(declare-fun bs!1831266 () Bool)

(assert (= bs!1831266 (and d!2153307 d!2153259)))

(assert (=> bs!1831266 (= lambda!387320 lambda!387317)))

(declare-fun bs!1831267 () Bool)

(assert (= bs!1831267 (and d!2153307 d!2153105)))

(assert (=> bs!1831267 (not (= lambda!387320 lambda!387306))))

(assert (=> bs!1831260 (not (= lambda!387320 lambda!387223))))

(declare-fun bs!1831268 () Bool)

(assert (= bs!1831268 (and d!2153307 d!2153141)))

(assert (=> bs!1831268 (= lambda!387320 lambda!387309)))

(declare-fun bs!1831269 () Bool)

(assert (= bs!1831269 (and d!2153307 d!2153187)))

(assert (=> bs!1831269 (= lambda!387320 lambda!387312)))

(declare-fun bs!1831270 () Bool)

(assert (= bs!1831270 (and d!2153307 d!2153155)))

(assert (=> bs!1831270 (= lambda!387320 lambda!387310)))

(declare-fun bs!1831271 () Bool)

(assert (= bs!1831271 (and d!2153307 b!6847423)))

(assert (=> bs!1831271 (not (= lambda!387320 lambda!387176))))

(declare-fun bs!1831272 () Bool)

(assert (= bs!1831272 (and d!2153307 d!2153245)))

(assert (=> bs!1831272 (not (= lambda!387320 lambda!387316))))

(declare-fun bs!1831273 () Bool)

(assert (= bs!1831273 (and d!2153307 d!2152587)))

(assert (=> bs!1831273 (= lambda!387320 lambda!387259)))

(assert (=> d!2153307 (= (inv!84934 setElem!47089) (forall!15853 (exprs!6559 setElem!47089) lambda!387320))))

(declare-fun bs!1831274 () Bool)

(assert (= bs!1831274 d!2153307))

(declare-fun m!7589476 () Bool)

(assert (=> bs!1831274 m!7589476))

(assert (=> setNonEmpty!47089 d!2153307))

(declare-fun b!6850700 () Bool)

(declare-fun e!4131073 () Bool)

(declare-fun call!624029 () Bool)

(assert (=> b!6850700 (= e!4131073 call!624029)))

(declare-fun b!6850701 () Bool)

(declare-fun e!4131077 () Bool)

(declare-fun e!4131075 () Bool)

(assert (=> b!6850701 (= e!4131077 e!4131075)))

(declare-fun c!1275312 () Bool)

(assert (=> b!6850701 (= c!1275312 ((_ is Star!16675) (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))

(declare-fun b!6850702 () Bool)

(declare-fun e!4131074 () Bool)

(declare-fun call!624030 () Bool)

(assert (=> b!6850702 (= e!4131074 call!624030)))

(declare-fun b!6850703 () Bool)

(declare-fun e!4131076 () Bool)

(assert (=> b!6850703 (= e!4131076 e!4131074)))

(declare-fun res!2796257 () Bool)

(assert (=> b!6850703 (=> (not res!2796257) (not e!4131074))))

(declare-fun call!624031 () Bool)

(assert (=> b!6850703 (= res!2796257 call!624031)))

(declare-fun c!1275311 () Bool)

(declare-fun bm!624024 () Bool)

(assert (=> bm!624024 (= call!624031 (validRegex!8411 (ite c!1275311 (regOne!33863 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))) (regOne!33862 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))))

(declare-fun b!6850704 () Bool)

(assert (=> b!6850704 (= e!4131075 e!4131073)))

(declare-fun res!2796260 () Bool)

(assert (=> b!6850704 (= res!2796260 (not (nullable!6638 (reg!17004 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))))

(assert (=> b!6850704 (=> (not res!2796260) (not e!4131073))))

(declare-fun bm!624025 () Bool)

(assert (=> bm!624025 (= call!624030 call!624029)))

(declare-fun b!6850705 () Bool)

(declare-fun e!4131071 () Bool)

(assert (=> b!6850705 (= e!4131075 e!4131071)))

(assert (=> b!6850705 (= c!1275311 ((_ is Union!16675) (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))

(declare-fun b!6850706 () Bool)

(declare-fun e!4131078 () Bool)

(assert (=> b!6850706 (= e!4131078 call!624030)))

(declare-fun bm!624026 () Bool)

(assert (=> bm!624026 (= call!624029 (validRegex!8411 (ite c!1275312 (reg!17004 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))) (ite c!1275311 (regTwo!33863 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))) (regTwo!33862 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))))))

(declare-fun b!6850707 () Bool)

(declare-fun res!2796259 () Bool)

(assert (=> b!6850707 (=> (not res!2796259) (not e!4131078))))

(assert (=> b!6850707 (= res!2796259 call!624031)))

(assert (=> b!6850707 (= e!4131071 e!4131078)))

(declare-fun d!2153309 () Bool)

(declare-fun res!2796261 () Bool)

(assert (=> d!2153309 (=> res!2796261 e!4131077)))

(assert (=> d!2153309 (= res!2796261 ((_ is ElementMatch!16675) (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))))))

(assert (=> d!2153309 (= (validRegex!8411 (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292)))))) e!4131077)))

(declare-fun b!6850708 () Bool)

(declare-fun res!2796258 () Bool)

(assert (=> b!6850708 (=> res!2796258 e!4131076)))

(assert (=> b!6850708 (= res!2796258 (not ((_ is Concat!25520) (ite c!1274910 (reg!17004 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (ite c!1274909 (regTwo!33863 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))) (regTwo!33862 (ite c!1274725 (regOne!33863 r!7292) (regOne!33862 r!7292))))))))))

(assert (=> b!6850708 (= e!4131071 e!4131076)))

(assert (= (and d!2153309 (not res!2796261)) b!6850701))

(assert (= (and b!6850701 c!1275312) b!6850704))

(assert (= (and b!6850701 (not c!1275312)) b!6850705))

(assert (= (and b!6850704 res!2796260) b!6850700))

(assert (= (and b!6850705 c!1275311) b!6850707))

(assert (= (and b!6850705 (not c!1275311)) b!6850708))

(assert (= (and b!6850707 res!2796259) b!6850706))

(assert (= (and b!6850708 (not res!2796258)) b!6850703))

(assert (= (and b!6850703 res!2796257) b!6850702))

(assert (= (or b!6850706 b!6850702) bm!624025))

(assert (= (or b!6850707 b!6850703) bm!624024))

(assert (= (or b!6850700 bm!624025) bm!624026))

(declare-fun m!7589480 () Bool)

(assert (=> bm!624024 m!7589480))

(declare-fun m!7589482 () Bool)

(assert (=> b!6850704 m!7589482))

(declare-fun m!7589484 () Bool)

(assert (=> bm!624026 m!7589484))

(assert (=> bm!623713 d!2153309))

(declare-fun d!2153311 () Bool)

(declare-fun lt!2456138 () Int)

(assert (=> d!2153311 (>= lt!2456138 0)))

(declare-fun e!4131085 () Int)

(assert (=> d!2153311 (= lt!2456138 e!4131085)))

(declare-fun c!1275313 () Bool)

(assert (=> d!2153311 (= c!1275313 ((_ is Cons!66200) (exprs!6559 (h!72649 (t!380068 lt!2455887)))))))

(assert (=> d!2153311 (= (contextDepthTotal!402 (h!72649 (t!380068 lt!2455887))) lt!2456138)))

(declare-fun b!6850727 () Bool)

(assert (=> b!6850727 (= e!4131085 (+ (regexDepthTotal!249 (h!72648 (exprs!6559 (h!72649 (t!380068 lt!2455887))))) (contextDepthTotal!402 (Context!12119 (t!380067 (exprs!6559 (h!72649 (t!380068 lt!2455887))))))))))

(declare-fun b!6850728 () Bool)

(assert (=> b!6850728 (= e!4131085 1)))

(assert (= (and d!2153311 c!1275313) b!6850727))

(assert (= (and d!2153311 (not c!1275313)) b!6850728))

(declare-fun m!7589486 () Bool)

(assert (=> b!6850727 m!7589486))

(declare-fun m!7589488 () Bool)

(assert (=> b!6850727 m!7589488))

(assert (=> b!6848746 d!2153311))

(declare-fun d!2153313 () Bool)

(declare-fun lt!2456139 () Int)

(assert (=> d!2153313 (>= lt!2456139 0)))

(declare-fun e!4131088 () Int)

(assert (=> d!2153313 (= lt!2456139 e!4131088)))

(declare-fun c!1275314 () Bool)

(assert (=> d!2153313 (= c!1275314 ((_ is Cons!66201) (t!380068 (t!380068 lt!2455887))))))

(assert (=> d!2153313 (= (zipperDepthTotal!430 (t!380068 (t!380068 lt!2455887))) lt!2456139)))

(declare-fun b!6850737 () Bool)

(assert (=> b!6850737 (= e!4131088 (+ (contextDepthTotal!402 (h!72649 (t!380068 (t!380068 lt!2455887)))) (zipperDepthTotal!430 (t!380068 (t!380068 (t!380068 lt!2455887))))))))

(declare-fun b!6850738 () Bool)

(assert (=> b!6850738 (= e!4131088 0)))

(assert (= (and d!2153313 c!1275314) b!6850737))

(assert (= (and d!2153313 (not c!1275314)) b!6850738))

(declare-fun m!7589490 () Bool)

(assert (=> b!6850737 m!7589490))

(declare-fun m!7589492 () Bool)

(assert (=> b!6850737 m!7589492))

(assert (=> b!6848746 d!2153313))

(declare-fun b!6850747 () Bool)

(declare-fun e!4131091 () Bool)

(declare-fun call!624032 () Bool)

(assert (=> b!6850747 (= e!4131091 call!624032)))

(declare-fun b!6850748 () Bool)

(declare-fun e!4131096 () Bool)

(declare-fun e!4131093 () Bool)

(assert (=> b!6850748 (= e!4131096 e!4131093)))

(declare-fun c!1275316 () Bool)

(assert (=> b!6850748 (= c!1275316 ((_ is Star!16675) (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))))))

(declare-fun b!6850749 () Bool)

(declare-fun e!4131092 () Bool)

(declare-fun call!624033 () Bool)

(assert (=> b!6850749 (= e!4131092 call!624033)))

(declare-fun b!6850750 () Bool)

(declare-fun e!4131094 () Bool)

(assert (=> b!6850750 (= e!4131094 e!4131092)))

(declare-fun res!2796262 () Bool)

(assert (=> b!6850750 (=> (not res!2796262) (not e!4131092))))

(declare-fun call!624034 () Bool)

(assert (=> b!6850750 (= res!2796262 call!624034)))

(declare-fun c!1275315 () Bool)

(declare-fun bm!624027 () Bool)

(assert (=> bm!624027 (= call!624034 (validRegex!8411 (ite c!1275315 (regOne!33863 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))) (regOne!33862 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))))))))

(declare-fun b!6850751 () Bool)

(assert (=> b!6850751 (= e!4131093 e!4131091)))

(declare-fun res!2796265 () Bool)

(assert (=> b!6850751 (= res!2796265 (not (nullable!6638 (reg!17004 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))))))))

(assert (=> b!6850751 (=> (not res!2796265) (not e!4131091))))

(declare-fun bm!624028 () Bool)

(assert (=> bm!624028 (= call!624033 call!624032)))

(declare-fun b!6850752 () Bool)

(declare-fun e!4131090 () Bool)

(assert (=> b!6850752 (= e!4131093 e!4131090)))

(assert (=> b!6850752 (= c!1275315 ((_ is Union!16675) (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))))))

(declare-fun b!6850753 () Bool)

(declare-fun e!4131097 () Bool)

(assert (=> b!6850753 (= e!4131097 call!624033)))

(declare-fun bm!624029 () Bool)

(assert (=> bm!624029 (= call!624032 (validRegex!8411 (ite c!1275316 (reg!17004 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))) (ite c!1275315 (regTwo!33863 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))) (regTwo!33862 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973)))))))))

(declare-fun b!6850754 () Bool)

(declare-fun res!2796264 () Bool)

(assert (=> b!6850754 (=> (not res!2796264) (not e!4131097))))

(assert (=> b!6850754 (= res!2796264 call!624034)))

(assert (=> b!6850754 (= e!4131090 e!4131097)))

(declare-fun d!2153315 () Bool)

(declare-fun res!2796266 () Bool)

(assert (=> d!2153315 (=> res!2796266 e!4131096)))

(assert (=> d!2153315 (= res!2796266 ((_ is ElementMatch!16675) (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))))))

(assert (=> d!2153315 (= (validRegex!8411 (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973))) e!4131096)))

(declare-fun b!6850755 () Bool)

(declare-fun res!2796263 () Bool)

(assert (=> b!6850755 (=> res!2796263 e!4131094)))

(assert (=> b!6850755 (= res!2796263 (not ((_ is Concat!25520) (ite c!1274885 (regOne!33863 lt!2455973) (regOne!33862 lt!2455973)))))))

(assert (=> b!6850755 (= e!4131090 e!4131094)))

(assert (= (and d!2153315 (not res!2796266)) b!6850748))

(assert (= (and b!6850748 c!1275316) b!6850751))

(assert (= (and b!6850748 (not c!1275316)) b!6850752))

(assert (= (and b!6850751 res!2796265) b!6850747))

(assert (= (and b!6850752 c!1275315) b!6850754))

(assert (= (and b!6850752 (not c!1275315)) b!6850755))

(assert (= (and b!6850754 res!2796264) b!6850753))

(assert (= (and b!6850755 (not res!2796263)) b!6850750))

(assert (= (and b!6850750 res!2796262) b!6850749))

(assert (= (or b!6850753 b!6850749) bm!624028))

(assert (= (or b!6850754 b!6850750) bm!624027))

(assert (= (or b!6850747 bm!624028) bm!624029))

(declare-fun m!7589494 () Bool)

(assert (=> bm!624027 m!7589494))

(declare-fun m!7589496 () Bool)

(assert (=> b!6850751 m!7589496))

(declare-fun m!7589498 () Bool)

(assert (=> bm!624029 m!7589498))

(assert (=> bm!623703 d!2153315))

(declare-fun bs!1831275 () Bool)

(declare-fun d!2153317 () Bool)

(assert (= bs!1831275 (and d!2153317 d!2152589)))

(declare-fun lambda!387321 () Int)

(assert (=> bs!1831275 (not (= lambda!387321 lambda!387260))))

(declare-fun bs!1831276 () Bool)

(assert (= bs!1831276 (and d!2153317 d!2152691)))

(assert (=> bs!1831276 (= lambda!387321 lambda!387275)))

(declare-fun bs!1831277 () Bool)

(assert (= bs!1831277 (and d!2153317 d!2153285)))

(assert (=> bs!1831277 (= lambda!387321 lambda!387318)))

(declare-fun bs!1831278 () Bool)

(assert (= bs!1831278 (and d!2153317 d!2152603)))

(assert (=> bs!1831278 (= lambda!387321 lambda!387264)))

(declare-fun bs!1831279 () Bool)

(assert (= bs!1831279 (and d!2153317 d!2152671)))

(assert (=> bs!1831279 (= lambda!387321 lambda!387272)))

(declare-fun bs!1831280 () Bool)

(assert (= bs!1831280 (and d!2153317 d!2152405)))

(assert (=> bs!1831280 (not (= lambda!387321 lambda!387217))))

(declare-fun bs!1831281 () Bool)

(assert (= bs!1831281 (and d!2153317 d!2152621)))

(assert (=> bs!1831281 (= lambda!387321 lambda!387267)))

(declare-fun bs!1831282 () Bool)

(assert (= bs!1831282 (and d!2153317 d!2152591)))

(assert (=> bs!1831282 (not (= lambda!387321 lambda!387263))))

(declare-fun bs!1831283 () Bool)

(assert (= bs!1831283 (and d!2153317 d!2153089)))

(assert (=> bs!1831283 (= lambda!387321 lambda!387304)))

(declare-fun bs!1831284 () Bool)

(assert (= bs!1831284 (and d!2153317 d!2152585)))

(assert (=> bs!1831284 (= lambda!387321 lambda!387258)))

(declare-fun bs!1831285 () Bool)

(assert (= bs!1831285 (and d!2153317 d!2152407)))

(assert (=> bs!1831285 (= lambda!387321 lambda!387222)))

(declare-fun bs!1831286 () Bool)

(assert (= bs!1831286 (and d!2153317 d!2152409)))

(assert (=> bs!1831286 (= lambda!387321 lambda!387226)))

(declare-fun bs!1831287 () Bool)

(assert (= bs!1831287 (and d!2153317 d!2152411)))

(assert (=> bs!1831287 (= lambda!387321 lambda!387227)))

(declare-fun bs!1831288 () Bool)

(assert (= bs!1831288 (and d!2153317 d!2153295)))

(assert (=> bs!1831288 (= lambda!387321 lambda!387319)))

(declare-fun bs!1831289 () Bool)

(assert (= bs!1831289 (and d!2153317 d!2153215)))

(assert (=> bs!1831289 (= lambda!387321 lambda!387314)))

(declare-fun bs!1831290 () Bool)

(assert (= bs!1831290 (and d!2153317 d!2152375)))

(assert (=> bs!1831290 (= lambda!387321 lambda!387214)))

(declare-fun bs!1831291 () Bool)

(assert (= bs!1831291 (and d!2153317 d!2153259)))

(assert (=> bs!1831291 (= lambda!387321 lambda!387317)))

(assert (=> bs!1831285 (not (= lambda!387321 lambda!387223))))

(declare-fun bs!1831293 () Bool)

(assert (= bs!1831293 (and d!2153317 d!2153141)))

(assert (=> bs!1831293 (= lambda!387321 lambda!387309)))

(declare-fun bs!1831294 () Bool)

(assert (= bs!1831294 (and d!2153317 d!2153105)))

(assert (=> bs!1831294 (not (= lambda!387321 lambda!387306))))

(declare-fun bs!1831296 () Bool)

(assert (= bs!1831296 (and d!2153317 d!2153307)))

(assert (=> bs!1831296 (= lambda!387321 lambda!387320)))

(declare-fun bs!1831297 () Bool)

(assert (= bs!1831297 (and d!2153317 d!2153187)))

(assert (=> bs!1831297 (= lambda!387321 lambda!387312)))

(declare-fun bs!1831298 () Bool)

(assert (= bs!1831298 (and d!2153317 d!2153155)))

(assert (=> bs!1831298 (= lambda!387321 lambda!387310)))

(declare-fun bs!1831299 () Bool)

(assert (= bs!1831299 (and d!2153317 b!6847423)))

(assert (=> bs!1831299 (not (= lambda!387321 lambda!387176))))

(declare-fun bs!1831300 () Bool)

(assert (= bs!1831300 (and d!2153317 d!2153245)))

(assert (=> bs!1831300 (not (= lambda!387321 lambda!387316))))

(declare-fun bs!1831302 () Bool)

(assert (= bs!1831302 (and d!2153317 d!2152587)))

(assert (=> bs!1831302 (= lambda!387321 lambda!387259)))

(declare-fun b!6850770 () Bool)

(declare-fun e!4131104 () Bool)

(declare-fun lt!2456140 () Regex!16675)

(assert (=> b!6850770 (= e!4131104 (isEmptyExpr!2006 lt!2456140))))

(declare-fun b!6850772 () Bool)

(declare-fun e!4131103 () Bool)

(assert (=> b!6850772 (= e!4131104 e!4131103)))

(declare-fun c!1275317 () Bool)

(assert (=> b!6850772 (= c!1275317 (isEmpty!38575 (tail!12805 (t!380067 (exprs!6559 (h!72649 zl!343))))))))

(declare-fun b!6850774 () Bool)

(assert (=> b!6850774 (= e!4131103 (isConcat!1529 lt!2456140))))

(declare-fun b!6850775 () Bool)

(declare-fun e!4131107 () Bool)

(assert (=> b!6850775 (= e!4131107 (isEmpty!38575 (t!380067 (t!380067 (exprs!6559 (h!72649 zl!343))))))))

(declare-fun b!6850776 () Bool)

(declare-fun e!4131102 () Regex!16675)

(declare-fun e!4131105 () Regex!16675)

(assert (=> b!6850776 (= e!4131102 e!4131105)))

(declare-fun c!1275318 () Bool)

(assert (=> b!6850776 (= c!1275318 ((_ is Cons!66200) (t!380067 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6850777 () Bool)

(declare-fun e!4131101 () Bool)

(assert (=> b!6850777 (= e!4131101 e!4131104)))

(declare-fun c!1275319 () Bool)

(assert (=> b!6850777 (= c!1275319 (isEmpty!38575 (t!380067 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> d!2153317 e!4131101))

(declare-fun res!2796268 () Bool)

(assert (=> d!2153317 (=> (not res!2796268) (not e!4131101))))

(assert (=> d!2153317 (= res!2796268 (validRegex!8411 lt!2456140))))

(assert (=> d!2153317 (= lt!2456140 e!4131102)))

(declare-fun c!1275320 () Bool)

(assert (=> d!2153317 (= c!1275320 e!4131107)))

(declare-fun res!2796267 () Bool)

(assert (=> d!2153317 (=> (not res!2796267) (not e!4131107))))

(assert (=> d!2153317 (= res!2796267 ((_ is Cons!66200) (t!380067 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> d!2153317 (forall!15853 (t!380067 (exprs!6559 (h!72649 zl!343))) lambda!387321)))

(assert (=> d!2153317 (= (generalisedConcat!2266 (t!380067 (exprs!6559 (h!72649 zl!343)))) lt!2456140)))

(declare-fun b!6850778 () Bool)

(assert (=> b!6850778 (= e!4131103 (= lt!2456140 (head!13728 (t!380067 (exprs!6559 (h!72649 zl!343))))))))

(declare-fun b!6850779 () Bool)

(assert (=> b!6850779 (= e!4131105 EmptyExpr!16675)))

(declare-fun b!6850780 () Bool)

(assert (=> b!6850780 (= e!4131102 (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343)))))))

(declare-fun b!6850781 () Bool)

(assert (=> b!6850781 (= e!4131105 (Concat!25520 (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343)))) (generalisedConcat!2266 (t!380067 (t!380067 (exprs!6559 (h!72649 zl!343)))))))))

(assert (= (and d!2153317 res!2796267) b!6850775))

(assert (= (and d!2153317 c!1275320) b!6850780))

(assert (= (and d!2153317 (not c!1275320)) b!6850776))

(assert (= (and b!6850776 c!1275318) b!6850781))

(assert (= (and b!6850776 (not c!1275318)) b!6850779))

(assert (= (and d!2153317 res!2796268) b!6850777))

(assert (= (and b!6850777 c!1275319) b!6850770))

(assert (= (and b!6850777 (not c!1275319)) b!6850772))

(assert (= (and b!6850772 c!1275317) b!6850778))

(assert (= (and b!6850772 (not c!1275317)) b!6850774))

(declare-fun m!7589514 () Bool)

(assert (=> b!6850775 m!7589514))

(declare-fun m!7589516 () Bool)

(assert (=> b!6850781 m!7589516))

(declare-fun m!7589518 () Bool)

(assert (=> d!2153317 m!7589518))

(declare-fun m!7589520 () Bool)

(assert (=> d!2153317 m!7589520))

(declare-fun m!7589522 () Bool)

(assert (=> b!6850772 m!7589522))

(assert (=> b!6850772 m!7589522))

(declare-fun m!7589526 () Bool)

(assert (=> b!6850772 m!7589526))

(declare-fun m!7589528 () Bool)

(assert (=> b!6850770 m!7589528))

(declare-fun m!7589530 () Bool)

(assert (=> b!6850774 m!7589530))

(declare-fun m!7589532 () Bool)

(assert (=> b!6850778 m!7589532))

(assert (=> b!6850777 m!7587874))

(assert (=> b!6848486 d!2153317))

(declare-fun bm!624030 () Bool)

(declare-fun call!624036 () Bool)

(declare-fun c!1275321 () Bool)

(assert (=> bm!624030 (= call!624036 (nullable!6638 (ite c!1275321 (regOne!33863 (reg!17004 r!7292)) (regOne!33862 (reg!17004 r!7292)))))))

(declare-fun b!6850788 () Bool)

(declare-fun e!4131111 () Bool)

(declare-fun e!4131113 () Bool)

(assert (=> b!6850788 (= e!4131111 e!4131113)))

(declare-fun res!2796274 () Bool)

(assert (=> b!6850788 (=> res!2796274 e!4131113)))

(assert (=> b!6850788 (= res!2796274 ((_ is Star!16675) (reg!17004 r!7292)))))

(declare-fun b!6850789 () Bool)

(declare-fun e!4131110 () Bool)

(declare-fun e!4131112 () Bool)

(assert (=> b!6850789 (= e!4131110 e!4131112)))

(declare-fun res!2796273 () Bool)

(assert (=> b!6850789 (= res!2796273 call!624036)))

(assert (=> b!6850789 (=> res!2796273 e!4131112)))

(declare-fun b!6850790 () Bool)

(declare-fun e!4131115 () Bool)

(assert (=> b!6850790 (= e!4131110 e!4131115)))

(declare-fun res!2796272 () Bool)

(assert (=> b!6850790 (= res!2796272 call!624036)))

(assert (=> b!6850790 (=> (not res!2796272) (not e!4131115))))

(declare-fun b!6850791 () Bool)

(declare-fun e!4131114 () Bool)

(assert (=> b!6850791 (= e!4131114 e!4131111)))

(declare-fun res!2796271 () Bool)

(assert (=> b!6850791 (=> (not res!2796271) (not e!4131111))))

(assert (=> b!6850791 (= res!2796271 (and (not ((_ is EmptyLang!16675) (reg!17004 r!7292))) (not ((_ is ElementMatch!16675) (reg!17004 r!7292)))))))

(declare-fun b!6850792 () Bool)

(declare-fun call!624035 () Bool)

(assert (=> b!6850792 (= e!4131115 call!624035)))

(declare-fun bm!624031 () Bool)

(assert (=> bm!624031 (= call!624035 (nullable!6638 (ite c!1275321 (regTwo!33863 (reg!17004 r!7292)) (regTwo!33862 (reg!17004 r!7292)))))))

(declare-fun b!6850793 () Bool)

(assert (=> b!6850793 (= e!4131112 call!624035)))

(declare-fun b!6850787 () Bool)

(assert (=> b!6850787 (= e!4131113 e!4131110)))

(assert (=> b!6850787 (= c!1275321 ((_ is Union!16675) (reg!17004 r!7292)))))

(declare-fun d!2153341 () Bool)

(declare-fun res!2796270 () Bool)

(assert (=> d!2153341 (=> res!2796270 e!4131114)))

(assert (=> d!2153341 (= res!2796270 ((_ is EmptyExpr!16675) (reg!17004 r!7292)))))

(assert (=> d!2153341 (= (nullableFct!2522 (reg!17004 r!7292)) e!4131114)))

(assert (= (and d!2153341 (not res!2796270)) b!6850791))

(assert (= (and b!6850791 res!2796271) b!6850788))

(assert (= (and b!6850788 (not res!2796274)) b!6850787))

(assert (= (and b!6850787 c!1275321) b!6850789))

(assert (= (and b!6850787 (not c!1275321)) b!6850790))

(assert (= (and b!6850789 (not res!2796273)) b!6850793))

(assert (= (and b!6850790 res!2796272) b!6850792))

(assert (= (or b!6850793 b!6850792) bm!624031))

(assert (= (or b!6850789 b!6850790) bm!624030))

(declare-fun m!7589544 () Bool)

(assert (=> bm!624030 m!7589544))

(declare-fun m!7589546 () Bool)

(assert (=> bm!624031 m!7589546))

(assert (=> d!2152695 d!2153341))

(declare-fun b!6850795 () Bool)

(declare-fun e!4131118 () Bool)

(declare-fun call!624037 () Bool)

(assert (=> b!6850795 (= e!4131118 call!624037)))

(declare-fun b!6850796 () Bool)

(declare-fun e!4131122 () Bool)

(declare-fun e!4131120 () Bool)

(assert (=> b!6850796 (= e!4131122 e!4131120)))

(declare-fun c!1275323 () Bool)

(assert (=> b!6850796 (= c!1275323 ((_ is Star!16675) (h!72648 lt!2455979)))))

(declare-fun b!6850797 () Bool)

(declare-fun e!4131119 () Bool)

(declare-fun call!624038 () Bool)

(assert (=> b!6850797 (= e!4131119 call!624038)))

(declare-fun b!6850798 () Bool)

(declare-fun e!4131121 () Bool)

(assert (=> b!6850798 (= e!4131121 e!4131119)))

(declare-fun res!2796276 () Bool)

(assert (=> b!6850798 (=> (not res!2796276) (not e!4131119))))

(declare-fun call!624039 () Bool)

(assert (=> b!6850798 (= res!2796276 call!624039)))

(declare-fun bm!624032 () Bool)

(declare-fun c!1275322 () Bool)

(assert (=> bm!624032 (= call!624039 (validRegex!8411 (ite c!1275322 (regOne!33863 (h!72648 lt!2455979)) (regOne!33862 (h!72648 lt!2455979)))))))

(declare-fun b!6850799 () Bool)

(assert (=> b!6850799 (= e!4131120 e!4131118)))

(declare-fun res!2796279 () Bool)

(assert (=> b!6850799 (= res!2796279 (not (nullable!6638 (reg!17004 (h!72648 lt!2455979)))))))

(assert (=> b!6850799 (=> (not res!2796279) (not e!4131118))))

(declare-fun bm!624033 () Bool)

(assert (=> bm!624033 (= call!624038 call!624037)))

(declare-fun b!6850800 () Bool)

(declare-fun e!4131117 () Bool)

(assert (=> b!6850800 (= e!4131120 e!4131117)))

(assert (=> b!6850800 (= c!1275322 ((_ is Union!16675) (h!72648 lt!2455979)))))

(declare-fun b!6850801 () Bool)

(declare-fun e!4131123 () Bool)

(assert (=> b!6850801 (= e!4131123 call!624038)))

(declare-fun bm!624034 () Bool)

(assert (=> bm!624034 (= call!624037 (validRegex!8411 (ite c!1275323 (reg!17004 (h!72648 lt!2455979)) (ite c!1275322 (regTwo!33863 (h!72648 lt!2455979)) (regTwo!33862 (h!72648 lt!2455979))))))))

(declare-fun b!6850802 () Bool)

(declare-fun res!2796278 () Bool)

(assert (=> b!6850802 (=> (not res!2796278) (not e!4131123))))

(assert (=> b!6850802 (= res!2796278 call!624039)))

(assert (=> b!6850802 (= e!4131117 e!4131123)))

(declare-fun d!2153357 () Bool)

(declare-fun res!2796280 () Bool)

(assert (=> d!2153357 (=> res!2796280 e!4131122)))

(assert (=> d!2153357 (= res!2796280 ((_ is ElementMatch!16675) (h!72648 lt!2455979)))))

(assert (=> d!2153357 (= (validRegex!8411 (h!72648 lt!2455979)) e!4131122)))

(declare-fun b!6850803 () Bool)

(declare-fun res!2796277 () Bool)

(assert (=> b!6850803 (=> res!2796277 e!4131121)))

(assert (=> b!6850803 (= res!2796277 (not ((_ is Concat!25520) (h!72648 lt!2455979))))))

(assert (=> b!6850803 (= e!4131117 e!4131121)))

(assert (= (and d!2153357 (not res!2796280)) b!6850796))

(assert (= (and b!6850796 c!1275323) b!6850799))

(assert (= (and b!6850796 (not c!1275323)) b!6850800))

(assert (= (and b!6850799 res!2796279) b!6850795))

(assert (= (and b!6850800 c!1275322) b!6850802))

(assert (= (and b!6850800 (not c!1275322)) b!6850803))

(assert (= (and b!6850802 res!2796278) b!6850801))

(assert (= (and b!6850803 (not res!2796277)) b!6850798))

(assert (= (and b!6850798 res!2796276) b!6850797))

(assert (= (or b!6850801 b!6850797) bm!624033))

(assert (= (or b!6850802 b!6850798) bm!624032))

(assert (= (or b!6850795 bm!624033) bm!624034))

(declare-fun m!7589552 () Bool)

(assert (=> bm!624032 m!7589552))

(declare-fun m!7589554 () Bool)

(assert (=> b!6850799 m!7589554))

(declare-fun m!7589556 () Bool)

(assert (=> bm!624034 m!7589556))

(assert (=> bs!1830611 d!2153357))

(declare-fun b!6850804 () Bool)

(declare-fun e!4131128 () Bool)

(declare-fun e!4131127 () Bool)

(assert (=> b!6850804 (= e!4131128 e!4131127)))

(declare-fun c!1275325 () Bool)

(assert (=> b!6850804 (= c!1275325 ((_ is EmptyLang!16675) (derivativeStep!5321 lt!2455953 (head!13727 s!2326))))))

(declare-fun b!6850805 () Bool)

(declare-fun res!2796281 () Bool)

(declare-fun e!4131126 () Bool)

(assert (=> b!6850805 (=> res!2796281 e!4131126)))

(assert (=> b!6850805 (= res!2796281 (not ((_ is ElementMatch!16675) (derivativeStep!5321 lt!2455953 (head!13727 s!2326)))))))

(assert (=> b!6850805 (= e!4131127 e!4131126)))

(declare-fun b!6850806 () Bool)

(declare-fun lt!2456141 () Bool)

(assert (=> b!6850806 (= e!4131127 (not lt!2456141))))

(declare-fun b!6850807 () Bool)

(declare-fun res!2796284 () Bool)

(declare-fun e!4131129 () Bool)

(assert (=> b!6850807 (=> (not res!2796284) (not e!4131129))))

(declare-fun call!624040 () Bool)

(assert (=> b!6850807 (= res!2796284 (not call!624040))))

(declare-fun b!6850808 () Bool)

(declare-fun e!4131130 () Bool)

(assert (=> b!6850808 (= e!4131130 (not (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 lt!2455953 (head!13727 s!2326))))))))

(declare-fun b!6850809 () Bool)

(declare-fun res!2796283 () Bool)

(assert (=> b!6850809 (=> (not res!2796283) (not e!4131129))))

(assert (=> b!6850809 (= res!2796283 (isEmpty!38573 (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6850810 () Bool)

(declare-fun res!2796287 () Bool)

(assert (=> b!6850810 (=> res!2796287 e!4131126)))

(assert (=> b!6850810 (= res!2796287 e!4131129)))

(declare-fun res!2796285 () Bool)

(assert (=> b!6850810 (=> (not res!2796285) (not e!4131129))))

(assert (=> b!6850810 (= res!2796285 lt!2456141)))

(declare-fun b!6850811 () Bool)

(declare-fun e!4131124 () Bool)

(assert (=> b!6850811 (= e!4131124 (nullable!6638 (derivativeStep!5321 lt!2455953 (head!13727 s!2326))))))

(declare-fun b!6850812 () Bool)

(assert (=> b!6850812 (= e!4131129 (= (head!13727 (tail!12804 s!2326)) (c!1274613 (derivativeStep!5321 lt!2455953 (head!13727 s!2326)))))))

(declare-fun b!6850813 () Bool)

(declare-fun res!2796288 () Bool)

(assert (=> b!6850813 (=> res!2796288 e!4131130)))

(assert (=> b!6850813 (= res!2796288 (not (isEmpty!38573 (tail!12804 (tail!12804 s!2326)))))))

(declare-fun d!2153359 () Bool)

(assert (=> d!2153359 e!4131128))

(declare-fun c!1275324 () Bool)

(assert (=> d!2153359 (= c!1275324 ((_ is EmptyExpr!16675) (derivativeStep!5321 lt!2455953 (head!13727 s!2326))))))

(assert (=> d!2153359 (= lt!2456141 e!4131124)))

(declare-fun c!1275326 () Bool)

(assert (=> d!2153359 (= c!1275326 (isEmpty!38573 (tail!12804 s!2326)))))

(assert (=> d!2153359 (validRegex!8411 (derivativeStep!5321 lt!2455953 (head!13727 s!2326)))))

(assert (=> d!2153359 (= (matchR!8858 (derivativeStep!5321 lt!2455953 (head!13727 s!2326)) (tail!12804 s!2326)) lt!2456141)))

(declare-fun bm!624035 () Bool)

(assert (=> bm!624035 (= call!624040 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6850814 () Bool)

(declare-fun e!4131125 () Bool)

(assert (=> b!6850814 (= e!4131125 e!4131130)))

(declare-fun res!2796282 () Bool)

(assert (=> b!6850814 (=> res!2796282 e!4131130)))

(assert (=> b!6850814 (= res!2796282 call!624040)))

(declare-fun b!6850815 () Bool)

(assert (=> b!6850815 (= e!4131124 (matchR!8858 (derivativeStep!5321 (derivativeStep!5321 lt!2455953 (head!13727 s!2326)) (head!13727 (tail!12804 s!2326))) (tail!12804 (tail!12804 s!2326))))))

(declare-fun b!6850816 () Bool)

(assert (=> b!6850816 (= e!4131126 e!4131125)))

(declare-fun res!2796286 () Bool)

(assert (=> b!6850816 (=> (not res!2796286) (not e!4131125))))

(assert (=> b!6850816 (= res!2796286 (not lt!2456141))))

(declare-fun b!6850817 () Bool)

(assert (=> b!6850817 (= e!4131128 (= lt!2456141 call!624040))))

(assert (= (and d!2153359 c!1275326) b!6850811))

(assert (= (and d!2153359 (not c!1275326)) b!6850815))

(assert (= (and d!2153359 c!1275324) b!6850817))

(assert (= (and d!2153359 (not c!1275324)) b!6850804))

(assert (= (and b!6850804 c!1275325) b!6850806))

(assert (= (and b!6850804 (not c!1275325)) b!6850805))

(assert (= (and b!6850805 (not res!2796281)) b!6850810))

(assert (= (and b!6850810 res!2796285) b!6850807))

(assert (= (and b!6850807 res!2796284) b!6850809))

(assert (= (and b!6850809 res!2796283) b!6850812))

(assert (= (and b!6850810 (not res!2796287)) b!6850816))

(assert (= (and b!6850816 res!2796286) b!6850814))

(assert (= (and b!6850814 (not res!2796282)) b!6850813))

(assert (= (and b!6850813 (not res!2796288)) b!6850808))

(assert (= (or b!6850817 b!6850807 b!6850814) bm!624035))

(assert (=> bm!624035 m!7587364))

(assert (=> bm!624035 m!7587370))

(assert (=> b!6850815 m!7587364))

(assert (=> b!6850815 m!7587932))

(assert (=> b!6850815 m!7588166))

(assert (=> b!6850815 m!7587932))

(declare-fun m!7589558 () Bool)

(assert (=> b!6850815 m!7589558))

(assert (=> b!6850815 m!7587364))

(assert (=> b!6850815 m!7587936))

(assert (=> b!6850815 m!7589558))

(assert (=> b!6850815 m!7587936))

(declare-fun m!7589560 () Bool)

(assert (=> b!6850815 m!7589560))

(assert (=> b!6850811 m!7588166))

(declare-fun m!7589562 () Bool)

(assert (=> b!6850811 m!7589562))

(assert (=> b!6850809 m!7587364))

(assert (=> b!6850809 m!7587936))

(assert (=> b!6850809 m!7587936))

(assert (=> b!6850809 m!7587942))

(assert (=> b!6850813 m!7587364))

(assert (=> b!6850813 m!7587936))

(assert (=> b!6850813 m!7587936))

(assert (=> b!6850813 m!7587942))

(assert (=> d!2153359 m!7587364))

(assert (=> d!2153359 m!7587370))

(assert (=> d!2153359 m!7588166))

(declare-fun m!7589564 () Bool)

(assert (=> d!2153359 m!7589564))

(assert (=> b!6850812 m!7587364))

(assert (=> b!6850812 m!7587932))

(assert (=> b!6850808 m!7587364))

(assert (=> b!6850808 m!7587932))

(assert (=> b!6848801 d!2153359))

(declare-fun b!6850819 () Bool)

(declare-fun e!4131132 () Regex!16675)

(declare-fun call!624041 () Regex!16675)

(assert (=> b!6850819 (= e!4131132 (Union!16675 (Concat!25520 call!624041 (regTwo!33862 lt!2455953)) EmptyLang!16675))))

(declare-fun bm!624036 () Bool)

(declare-fun call!624044 () Regex!16675)

(assert (=> bm!624036 (= call!624041 call!624044)))

(declare-fun bm!624037 () Bool)

(declare-fun call!624043 () Regex!16675)

(assert (=> bm!624037 (= call!624044 call!624043)))

(declare-fun b!6850820 () Bool)

(declare-fun e!4131134 () Regex!16675)

(assert (=> b!6850820 (= e!4131134 EmptyLang!16675)))

(declare-fun b!6850821 () Bool)

(declare-fun e!4131135 () Regex!16675)

(assert (=> b!6850821 (= e!4131135 (Concat!25520 call!624044 lt!2455953))))

(declare-fun c!1275328 () Bool)

(declare-fun bm!624038 () Bool)

(declare-fun call!624042 () Regex!16675)

(assert (=> bm!624038 (= call!624042 (derivativeStep!5321 (ite c!1275328 (regOne!33863 lt!2455953) (regOne!33862 lt!2455953)) (head!13727 s!2326)))))

(declare-fun b!6850822 () Bool)

(declare-fun e!4131131 () Regex!16675)

(assert (=> b!6850822 (= e!4131131 (Union!16675 call!624042 call!624043))))

(declare-fun b!6850823 () Bool)

(assert (=> b!6850823 (= e!4131132 (Union!16675 (Concat!25520 call!624042 (regTwo!33862 lt!2455953)) call!624041))))

(declare-fun b!6850824 () Bool)

(assert (=> b!6850824 (= c!1275328 ((_ is Union!16675) lt!2455953))))

(declare-fun e!4131133 () Regex!16675)

(assert (=> b!6850824 (= e!4131133 e!4131131)))

(declare-fun b!6850818 () Bool)

(assert (=> b!6850818 (= e!4131131 e!4131135)))

(declare-fun c!1275331 () Bool)

(assert (=> b!6850818 (= c!1275331 ((_ is Star!16675) lt!2455953))))

(declare-fun d!2153361 () Bool)

(declare-fun lt!2456142 () Regex!16675)

(assert (=> d!2153361 (validRegex!8411 lt!2456142)))

(assert (=> d!2153361 (= lt!2456142 e!4131134)))

(declare-fun c!1275327 () Bool)

(assert (=> d!2153361 (= c!1275327 (or ((_ is EmptyExpr!16675) lt!2455953) ((_ is EmptyLang!16675) lt!2455953)))))

(assert (=> d!2153361 (validRegex!8411 lt!2455953)))

(assert (=> d!2153361 (= (derivativeStep!5321 lt!2455953 (head!13727 s!2326)) lt!2456142)))

(declare-fun b!6850825 () Bool)

(declare-fun c!1275330 () Bool)

(assert (=> b!6850825 (= c!1275330 (nullable!6638 (regOne!33862 lt!2455953)))))

(assert (=> b!6850825 (= e!4131135 e!4131132)))

(declare-fun bm!624039 () Bool)

(assert (=> bm!624039 (= call!624043 (derivativeStep!5321 (ite c!1275328 (regTwo!33863 lt!2455953) (ite c!1275331 (reg!17004 lt!2455953) (ite c!1275330 (regTwo!33862 lt!2455953) (regOne!33862 lt!2455953)))) (head!13727 s!2326)))))

(declare-fun b!6850826 () Bool)

(assert (=> b!6850826 (= e!4131134 e!4131133)))

(declare-fun c!1275329 () Bool)

(assert (=> b!6850826 (= c!1275329 ((_ is ElementMatch!16675) lt!2455953))))

(declare-fun b!6850827 () Bool)

(assert (=> b!6850827 (= e!4131133 (ite (= (head!13727 s!2326) (c!1274613 lt!2455953)) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2153361 c!1275327) b!6850820))

(assert (= (and d!2153361 (not c!1275327)) b!6850826))

(assert (= (and b!6850826 c!1275329) b!6850827))

(assert (= (and b!6850826 (not c!1275329)) b!6850824))

(assert (= (and b!6850824 c!1275328) b!6850822))

(assert (= (and b!6850824 (not c!1275328)) b!6850818))

(assert (= (and b!6850818 c!1275331) b!6850821))

(assert (= (and b!6850818 (not c!1275331)) b!6850825))

(assert (= (and b!6850825 c!1275330) b!6850823))

(assert (= (and b!6850825 (not c!1275330)) b!6850819))

(assert (= (or b!6850823 b!6850819) bm!624036))

(assert (= (or b!6850821 bm!624036) bm!624037))

(assert (= (or b!6850822 bm!624037) bm!624039))

(assert (= (or b!6850822 b!6850823) bm!624038))

(assert (=> bm!624038 m!7587360))

(declare-fun m!7589566 () Bool)

(assert (=> bm!624038 m!7589566))

(declare-fun m!7589568 () Bool)

(assert (=> d!2153361 m!7589568))

(assert (=> d!2153361 m!7587522))

(declare-fun m!7589570 () Bool)

(assert (=> b!6850825 m!7589570))

(assert (=> bm!624039 m!7587360))

(declare-fun m!7589572 () Bool)

(assert (=> bm!624039 m!7589572))

(assert (=> b!6848801 d!2153361))

(assert (=> b!6848801 d!2152609))

(assert (=> b!6848801 d!2152611))

(declare-fun d!2153363 () Bool)

(assert (=> d!2153363 (= (isEmpty!38575 (exprs!6559 (h!72649 zl!343))) ((_ is Nil!66200) (exprs!6559 (h!72649 zl!343))))))

(assert (=> b!6848482 d!2153363))

(assert (=> b!6848620 d!2152955))

(declare-fun b!6850828 () Bool)

(declare-fun e!4131140 () Bool)

(declare-fun e!4131139 () Bool)

(assert (=> b!6850828 (= e!4131140 e!4131139)))

(declare-fun c!1275333 () Bool)

(assert (=> b!6850828 (= c!1275333 ((_ is EmptyLang!16675) (h!72648 (t!380067 lt!2455888))))))

(declare-fun b!6850829 () Bool)

(declare-fun res!2796289 () Bool)

(declare-fun e!4131138 () Bool)

(assert (=> b!6850829 (=> res!2796289 e!4131138)))

(assert (=> b!6850829 (= res!2796289 (not ((_ is ElementMatch!16675) (h!72648 (t!380067 lt!2455888)))))))

(assert (=> b!6850829 (= e!4131139 e!4131138)))

(declare-fun b!6850830 () Bool)

(declare-fun lt!2456143 () Bool)

(assert (=> b!6850830 (= e!4131139 (not lt!2456143))))

(declare-fun b!6850831 () Bool)

(declare-fun res!2796292 () Bool)

(declare-fun e!4131141 () Bool)

(assert (=> b!6850831 (=> (not res!2796292) (not e!4131141))))

(declare-fun call!624045 () Bool)

(assert (=> b!6850831 (= res!2796292 (not call!624045))))

(declare-fun b!6850832 () Bool)

(declare-fun e!4131142 () Bool)

(assert (=> b!6850832 (= e!4131142 (not (= (head!13727 s!2326) (c!1274613 (h!72648 (t!380067 lt!2455888))))))))

(declare-fun b!6850833 () Bool)

(declare-fun res!2796291 () Bool)

(assert (=> b!6850833 (=> (not res!2796291) (not e!4131141))))

(assert (=> b!6850833 (= res!2796291 (isEmpty!38573 (tail!12804 s!2326)))))

(declare-fun b!6850834 () Bool)

(declare-fun res!2796295 () Bool)

(assert (=> b!6850834 (=> res!2796295 e!4131138)))

(assert (=> b!6850834 (= res!2796295 e!4131141)))

(declare-fun res!2796293 () Bool)

(assert (=> b!6850834 (=> (not res!2796293) (not e!4131141))))

(assert (=> b!6850834 (= res!2796293 lt!2456143)))

(declare-fun b!6850835 () Bool)

(declare-fun e!4131136 () Bool)

(assert (=> b!6850835 (= e!4131136 (nullable!6638 (h!72648 (t!380067 lt!2455888))))))

(declare-fun b!6850836 () Bool)

(assert (=> b!6850836 (= e!4131141 (= (head!13727 s!2326) (c!1274613 (h!72648 (t!380067 lt!2455888)))))))

(declare-fun b!6850837 () Bool)

(declare-fun res!2796296 () Bool)

(assert (=> b!6850837 (=> res!2796296 e!4131142)))

(assert (=> b!6850837 (= res!2796296 (not (isEmpty!38573 (tail!12804 s!2326))))))

(declare-fun d!2153365 () Bool)

(assert (=> d!2153365 e!4131140))

(declare-fun c!1275332 () Bool)

(assert (=> d!2153365 (= c!1275332 ((_ is EmptyExpr!16675) (h!72648 (t!380067 lt!2455888))))))

(assert (=> d!2153365 (= lt!2456143 e!4131136)))

(declare-fun c!1275334 () Bool)

(assert (=> d!2153365 (= c!1275334 (isEmpty!38573 s!2326))))

(assert (=> d!2153365 (validRegex!8411 (h!72648 (t!380067 lt!2455888)))))

(assert (=> d!2153365 (= (matchR!8858 (h!72648 (t!380067 lt!2455888)) s!2326) lt!2456143)))

(declare-fun bm!624040 () Bool)

(assert (=> bm!624040 (= call!624045 (isEmpty!38573 s!2326))))

(declare-fun b!6850838 () Bool)

(declare-fun e!4131137 () Bool)

(assert (=> b!6850838 (= e!4131137 e!4131142)))

(declare-fun res!2796290 () Bool)

(assert (=> b!6850838 (=> res!2796290 e!4131142)))

(assert (=> b!6850838 (= res!2796290 call!624045)))

(declare-fun b!6850839 () Bool)

(assert (=> b!6850839 (= e!4131136 (matchR!8858 (derivativeStep!5321 (h!72648 (t!380067 lt!2455888)) (head!13727 s!2326)) (tail!12804 s!2326)))))

(declare-fun b!6850840 () Bool)

(assert (=> b!6850840 (= e!4131138 e!4131137)))

(declare-fun res!2796294 () Bool)

(assert (=> b!6850840 (=> (not res!2796294) (not e!4131137))))

(assert (=> b!6850840 (= res!2796294 (not lt!2456143))))

(declare-fun b!6850841 () Bool)

(assert (=> b!6850841 (= e!4131140 (= lt!2456143 call!624045))))

(assert (= (and d!2153365 c!1275334) b!6850835))

(assert (= (and d!2153365 (not c!1275334)) b!6850839))

(assert (= (and d!2153365 c!1275332) b!6850841))

(assert (= (and d!2153365 (not c!1275332)) b!6850828))

(assert (= (and b!6850828 c!1275333) b!6850830))

(assert (= (and b!6850828 (not c!1275333)) b!6850829))

(assert (= (and b!6850829 (not res!2796289)) b!6850834))

(assert (= (and b!6850834 res!2796293) b!6850831))

(assert (= (and b!6850831 res!2796292) b!6850833))

(assert (= (and b!6850833 res!2796291) b!6850836))

(assert (= (and b!6850834 (not res!2796295)) b!6850840))

(assert (= (and b!6850840 res!2796294) b!6850838))

(assert (= (and b!6850838 (not res!2796290)) b!6850837))

(assert (= (and b!6850837 (not res!2796296)) b!6850832))

(assert (= (or b!6850841 b!6850831 b!6850838) bm!624040))

(assert (=> bm!624040 m!7587310))

(assert (=> b!6850839 m!7587360))

(assert (=> b!6850839 m!7587360))

(declare-fun m!7589574 () Bool)

(assert (=> b!6850839 m!7589574))

(assert (=> b!6850839 m!7587364))

(assert (=> b!6850839 m!7589574))

(assert (=> b!6850839 m!7587364))

(declare-fun m!7589576 () Bool)

(assert (=> b!6850839 m!7589576))

(declare-fun m!7589578 () Bool)

(assert (=> b!6850835 m!7589578))

(assert (=> b!6850833 m!7587364))

(assert (=> b!6850833 m!7587364))

(assert (=> b!6850833 m!7587370))

(assert (=> b!6850837 m!7587364))

(assert (=> b!6850837 m!7587364))

(assert (=> b!6850837 m!7587370))

(assert (=> d!2153365 m!7587310))

(assert (=> d!2153365 m!7588198))

(assert (=> b!6850836 m!7587360))

(assert (=> b!6850832 m!7587360))

(assert (=> b!6848937 d!2153365))

(declare-fun d!2153367 () Bool)

(assert (=> d!2153367 (= (head!13728 (exprs!6559 lt!2455960)) (h!72648 (exprs!6559 lt!2455960)))))

(assert (=> b!6848738 d!2153367))

(declare-fun e!4131144 () Regex!16675)

(declare-fun call!624046 () Regex!16675)

(declare-fun b!6850843 () Bool)

(assert (=> b!6850843 (= e!4131144 (Union!16675 (Concat!25520 call!624046 (regTwo!33862 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))) EmptyLang!16675))))

(declare-fun bm!624041 () Bool)

(declare-fun call!624049 () Regex!16675)

(assert (=> bm!624041 (= call!624046 call!624049)))

(declare-fun bm!624042 () Bool)

(declare-fun call!624048 () Regex!16675)

(assert (=> bm!624042 (= call!624049 call!624048)))

(declare-fun b!6850844 () Bool)

(declare-fun e!4131146 () Regex!16675)

(assert (=> b!6850844 (= e!4131146 EmptyLang!16675)))

(declare-fun b!6850845 () Bool)

(declare-fun e!4131147 () Regex!16675)

(assert (=> b!6850845 (= e!4131147 (Concat!25520 call!624049 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))))))

(declare-fun call!624047 () Regex!16675)

(declare-fun bm!624043 () Bool)

(declare-fun c!1275336 () Bool)

(assert (=> bm!624043 (= call!624047 (derivativeStep!5321 (ite c!1275336 (regOne!33863 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))) (regOne!33862 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))) (head!13727 s!2326)))))

(declare-fun b!6850846 () Bool)

(declare-fun e!4131143 () Regex!16675)

(assert (=> b!6850846 (= e!4131143 (Union!16675 call!624047 call!624048))))

(declare-fun b!6850847 () Bool)

(assert (=> b!6850847 (= e!4131144 (Union!16675 (Concat!25520 call!624047 (regTwo!33862 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))) call!624046))))

(declare-fun b!6850848 () Bool)

(assert (=> b!6850848 (= c!1275336 ((_ is Union!16675) (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))))))

(declare-fun e!4131145 () Regex!16675)

(assert (=> b!6850848 (= e!4131145 e!4131143)))

(declare-fun b!6850842 () Bool)

(assert (=> b!6850842 (= e!4131143 e!4131147)))

(declare-fun c!1275339 () Bool)

(assert (=> b!6850842 (= c!1275339 ((_ is Star!16675) (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))))))

(declare-fun d!2153369 () Bool)

(declare-fun lt!2456144 () Regex!16675)

(assert (=> d!2153369 (validRegex!8411 lt!2456144)))

(assert (=> d!2153369 (= lt!2456144 e!4131146)))

(declare-fun c!1275335 () Bool)

(assert (=> d!2153369 (= c!1275335 (or ((_ is EmptyExpr!16675) (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))) ((_ is EmptyLang!16675) (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))))))

(assert (=> d!2153369 (validRegex!8411 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))))

(assert (=> d!2153369 (= (derivativeStep!5321 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))) (head!13727 s!2326)) lt!2456144)))

(declare-fun c!1275338 () Bool)

(declare-fun b!6850849 () Bool)

(assert (=> b!6850849 (= c!1275338 (nullable!6638 (regOne!33862 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))))))

(assert (=> b!6850849 (= e!4131147 e!4131144)))

(declare-fun bm!624044 () Bool)

(assert (=> bm!624044 (= call!624048 (derivativeStep!5321 (ite c!1275336 (regTwo!33863 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))) (ite c!1275339 (reg!17004 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))) (ite c!1275338 (regTwo!33862 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))) (regOne!33862 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))))) (head!13727 s!2326)))))

(declare-fun b!6850850 () Bool)

(assert (=> b!6850850 (= e!4131146 e!4131145)))

(declare-fun c!1275337 () Bool)

(assert (=> b!6850850 (= c!1275337 ((_ is ElementMatch!16675) (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885))))))))

(declare-fun b!6850851 () Bool)

(assert (=> b!6850851 (= e!4131145 (ite (= (head!13727 s!2326) (c!1274613 (ite c!1274905 (regTwo!33863 lt!2455885) (ite c!1274908 (reg!17004 lt!2455885) (ite c!1274907 (regTwo!33862 lt!2455885) (regOne!33862 lt!2455885)))))) EmptyExpr!16675 EmptyLang!16675))))

(assert (= (and d!2153369 c!1275335) b!6850844))

(assert (= (and d!2153369 (not c!1275335)) b!6850850))

(assert (= (and b!6850850 c!1275337) b!6850851))

(assert (= (and b!6850850 (not c!1275337)) b!6850848))

(assert (= (and b!6850848 c!1275336) b!6850846))

(assert (= (and b!6850848 (not c!1275336)) b!6850842))

(assert (= (and b!6850842 c!1275339) b!6850845))

(assert (= (and b!6850842 (not c!1275339)) b!6850849))

(assert (= (and b!6850849 c!1275338) b!6850847))

(assert (= (and b!6850849 (not c!1275338)) b!6850843))

(assert (= (or b!6850847 b!6850843) bm!624041))

(assert (= (or b!6850845 bm!624041) bm!624042))

(assert (= (or b!6850846 bm!624042) bm!624044))

(assert (= (or b!6850846 b!6850847) bm!624043))

(assert (=> bm!624043 m!7587360))

(declare-fun m!7589580 () Bool)

(assert (=> bm!624043 m!7589580))

(declare-fun m!7589582 () Bool)

(assert (=> d!2153369 m!7589582))

(declare-fun m!7589584 () Bool)

(assert (=> d!2153369 m!7589584))

(declare-fun m!7589586 () Bool)

(assert (=> b!6850849 m!7589586))

(assert (=> bm!624044 m!7587360))

(declare-fun m!7589588 () Bool)

(assert (=> bm!624044 m!7589588))

(assert (=> bm!623710 d!2153369))

(declare-fun b!6850852 () Bool)

(declare-fun e!4131148 () Bool)

(assert (=> b!6850852 (= e!4131148 tp_is_empty!42603)))

(declare-fun b!6850854 () Bool)

(declare-fun tp!1877331 () Bool)

(assert (=> b!6850854 (= e!4131148 tp!1877331)))

(declare-fun b!6850855 () Bool)

(declare-fun tp!1877329 () Bool)

(declare-fun tp!1877332 () Bool)

(assert (=> b!6850855 (= e!4131148 (and tp!1877329 tp!1877332))))

(declare-fun b!6850853 () Bool)

(declare-fun tp!1877330 () Bool)

(declare-fun tp!1877328 () Bool)

(assert (=> b!6850853 (= e!4131148 (and tp!1877330 tp!1877328))))

(assert (=> b!6848898 (= tp!1876559 e!4131148)))

(assert (= (and b!6848898 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33862 (regTwo!33862 r!7292))))) b!6850852))

(assert (= (and b!6848898 ((_ is Concat!25520) (reg!17004 (regTwo!33862 (regTwo!33862 r!7292))))) b!6850853))

(assert (= (and b!6848898 ((_ is Star!16675) (reg!17004 (regTwo!33862 (regTwo!33862 r!7292))))) b!6850854))

(assert (= (and b!6848898 ((_ is Union!16675) (reg!17004 (regTwo!33862 (regTwo!33862 r!7292))))) b!6850855))

(declare-fun b!6850856 () Bool)

(declare-fun e!4131149 () Bool)

(assert (=> b!6850856 (= e!4131149 tp_is_empty!42603)))

(declare-fun b!6850858 () Bool)

(declare-fun tp!1877336 () Bool)

(assert (=> b!6850858 (= e!4131149 tp!1877336)))

(declare-fun b!6850859 () Bool)

(declare-fun tp!1877334 () Bool)

(declare-fun tp!1877337 () Bool)

(assert (=> b!6850859 (= e!4131149 (and tp!1877334 tp!1877337))))

(declare-fun b!6850857 () Bool)

(declare-fun tp!1877335 () Bool)

(declare-fun tp!1877333 () Bool)

(assert (=> b!6850857 (= e!4131149 (and tp!1877335 tp!1877333))))

(assert (=> b!6848857 (= tp!1876507 e!4131149)))

(assert (= (and b!6848857 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850856))

(assert (= (and b!6848857 ((_ is Concat!25520) (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850857))

(assert (= (and b!6848857 ((_ is Star!16675) (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850858))

(assert (= (and b!6848857 ((_ is Union!16675) (regOne!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850859))

(declare-fun b!6850860 () Bool)

(declare-fun e!4131150 () Bool)

(assert (=> b!6850860 (= e!4131150 tp_is_empty!42603)))

(declare-fun b!6850862 () Bool)

(declare-fun tp!1877341 () Bool)

(assert (=> b!6850862 (= e!4131150 tp!1877341)))

(declare-fun b!6850863 () Bool)

(declare-fun tp!1877339 () Bool)

(declare-fun tp!1877342 () Bool)

(assert (=> b!6850863 (= e!4131150 (and tp!1877339 tp!1877342))))

(declare-fun b!6850861 () Bool)

(declare-fun tp!1877340 () Bool)

(declare-fun tp!1877338 () Bool)

(assert (=> b!6850861 (= e!4131150 (and tp!1877340 tp!1877338))))

(assert (=> b!6848857 (= tp!1876505 e!4131150)))

(assert (= (and b!6848857 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850860))

(assert (= (and b!6848857 ((_ is Concat!25520) (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850861))

(assert (= (and b!6848857 ((_ is Star!16675) (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850862))

(assert (= (and b!6848857 ((_ is Union!16675) (regTwo!33862 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850863))

(declare-fun b!6850864 () Bool)

(declare-fun e!4131151 () Bool)

(assert (=> b!6850864 (= e!4131151 tp_is_empty!42603)))

(declare-fun b!6850866 () Bool)

(declare-fun tp!1877346 () Bool)

(assert (=> b!6850866 (= e!4131151 tp!1877346)))

(declare-fun b!6850867 () Bool)

(declare-fun tp!1877344 () Bool)

(declare-fun tp!1877347 () Bool)

(assert (=> b!6850867 (= e!4131151 (and tp!1877344 tp!1877347))))

(declare-fun b!6850865 () Bool)

(declare-fun tp!1877345 () Bool)

(declare-fun tp!1877343 () Bool)

(assert (=> b!6850865 (= e!4131151 (and tp!1877345 tp!1877343))))

(assert (=> b!6848889 (= tp!1876548 e!4131151)))

(assert (= (and b!6848889 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850864))

(assert (= (and b!6848889 ((_ is Concat!25520) (regOne!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850865))

(assert (= (and b!6848889 ((_ is Star!16675) (regOne!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850866))

(assert (= (and b!6848889 ((_ is Union!16675) (regOne!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850867))

(declare-fun b!6850868 () Bool)

(declare-fun e!4131152 () Bool)

(assert (=> b!6850868 (= e!4131152 tp_is_empty!42603)))

(declare-fun b!6850870 () Bool)

(declare-fun tp!1877351 () Bool)

(assert (=> b!6850870 (= e!4131152 tp!1877351)))

(declare-fun b!6850871 () Bool)

(declare-fun tp!1877349 () Bool)

(declare-fun tp!1877352 () Bool)

(assert (=> b!6850871 (= e!4131152 (and tp!1877349 tp!1877352))))

(declare-fun b!6850869 () Bool)

(declare-fun tp!1877350 () Bool)

(declare-fun tp!1877348 () Bool)

(assert (=> b!6850869 (= e!4131152 (and tp!1877350 tp!1877348))))

(assert (=> b!6848889 (= tp!1876546 e!4131152)))

(assert (= (and b!6848889 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850868))

(assert (= (and b!6848889 ((_ is Concat!25520) (regTwo!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850869))

(assert (= (and b!6848889 ((_ is Star!16675) (regTwo!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850870))

(assert (= (and b!6848889 ((_ is Union!16675) (regTwo!33862 (regTwo!33863 (regTwo!33862 r!7292))))) b!6850871))

(declare-fun b!6850872 () Bool)

(declare-fun e!4131153 () Bool)

(declare-fun tp!1877353 () Bool)

(declare-fun tp!1877354 () Bool)

(assert (=> b!6850872 (= e!4131153 (and tp!1877353 tp!1877354))))

(assert (=> b!6848818 (= tp!1876459 e!4131153)))

(assert (= (and b!6848818 ((_ is Cons!66200) (exprs!6559 (h!72649 res!2795710)))) b!6850872))

(declare-fun b!6850873 () Bool)

(declare-fun e!4131154 () Bool)

(assert (=> b!6850873 (= e!4131154 tp_is_empty!42603)))

(declare-fun b!6850875 () Bool)

(declare-fun tp!1877358 () Bool)

(assert (=> b!6850875 (= e!4131154 tp!1877358)))

(declare-fun b!6850876 () Bool)

(declare-fun tp!1877356 () Bool)

(declare-fun tp!1877359 () Bool)

(assert (=> b!6850876 (= e!4131154 (and tp!1877356 tp!1877359))))

(declare-fun b!6850874 () Bool)

(declare-fun tp!1877357 () Bool)

(declare-fun tp!1877355 () Bool)

(assert (=> b!6850874 (= e!4131154 (and tp!1877357 tp!1877355))))

(assert (=> b!6848911 (= tp!1876574 e!4131154)))

(assert (= (and b!6848911 ((_ is ElementMatch!16675) (regOne!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850873))

(assert (= (and b!6848911 ((_ is Concat!25520) (regOne!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850874))

(assert (= (and b!6848911 ((_ is Star!16675) (regOne!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850875))

(assert (= (and b!6848911 ((_ is Union!16675) (regOne!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850876))

(declare-fun b!6850877 () Bool)

(declare-fun e!4131155 () Bool)

(assert (=> b!6850877 (= e!4131155 tp_is_empty!42603)))

(declare-fun b!6850879 () Bool)

(declare-fun tp!1877363 () Bool)

(assert (=> b!6850879 (= e!4131155 tp!1877363)))

(declare-fun b!6850880 () Bool)

(declare-fun tp!1877361 () Bool)

(declare-fun tp!1877364 () Bool)

(assert (=> b!6850880 (= e!4131155 (and tp!1877361 tp!1877364))))

(declare-fun b!6850878 () Bool)

(declare-fun tp!1877362 () Bool)

(declare-fun tp!1877360 () Bool)

(assert (=> b!6850878 (= e!4131155 (and tp!1877362 tp!1877360))))

(assert (=> b!6848911 (= tp!1876577 e!4131155)))

(assert (= (and b!6848911 ((_ is ElementMatch!16675) (regTwo!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850877))

(assert (= (and b!6848911 ((_ is Concat!25520) (regTwo!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850878))

(assert (= (and b!6848911 ((_ is Star!16675) (regTwo!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850879))

(assert (= (and b!6848911 ((_ is Union!16675) (regTwo!33863 (reg!17004 (regOne!33863 r!7292))))) b!6850880))

(declare-fun b!6850881 () Bool)

(declare-fun e!4131156 () Bool)

(assert (=> b!6850881 (= e!4131156 tp_is_empty!42603)))

(declare-fun b!6850883 () Bool)

(declare-fun tp!1877368 () Bool)

(assert (=> b!6850883 (= e!4131156 tp!1877368)))

(declare-fun b!6850884 () Bool)

(declare-fun tp!1877366 () Bool)

(declare-fun tp!1877369 () Bool)

(assert (=> b!6850884 (= e!4131156 (and tp!1877366 tp!1877369))))

(declare-fun b!6850882 () Bool)

(declare-fun tp!1877367 () Bool)

(declare-fun tp!1877365 () Bool)

(assert (=> b!6850882 (= e!4131156 (and tp!1877367 tp!1877365))))

(assert (=> b!6848874 (= tp!1876525 e!4131156)))

(assert (= (and b!6848874 ((_ is ElementMatch!16675) (regOne!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850881))

(assert (= (and b!6848874 ((_ is Concat!25520) (regOne!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850882))

(assert (= (and b!6848874 ((_ is Star!16675) (regOne!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850883))

(assert (= (and b!6848874 ((_ is Union!16675) (regOne!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850884))

(declare-fun b!6850885 () Bool)

(declare-fun e!4131157 () Bool)

(assert (=> b!6850885 (= e!4131157 tp_is_empty!42603)))

(declare-fun b!6850887 () Bool)

(declare-fun tp!1877373 () Bool)

(assert (=> b!6850887 (= e!4131157 tp!1877373)))

(declare-fun b!6850888 () Bool)

(declare-fun tp!1877371 () Bool)

(declare-fun tp!1877374 () Bool)

(assert (=> b!6850888 (= e!4131157 (and tp!1877371 tp!1877374))))

(declare-fun b!6850886 () Bool)

(declare-fun tp!1877372 () Bool)

(declare-fun tp!1877370 () Bool)

(assert (=> b!6850886 (= e!4131157 (and tp!1877372 tp!1877370))))

(assert (=> b!6848874 (= tp!1876528 e!4131157)))

(assert (= (and b!6848874 ((_ is ElementMatch!16675) (regTwo!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850885))

(assert (= (and b!6848874 ((_ is Concat!25520) (regTwo!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850886))

(assert (= (and b!6848874 ((_ is Star!16675) (regTwo!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850887))

(assert (= (and b!6848874 ((_ is Union!16675) (regTwo!33863 (reg!17004 (regTwo!33862 r!7292))))) b!6850888))

(declare-fun b!6850889 () Bool)

(declare-fun e!4131158 () Bool)

(assert (=> b!6850889 (= e!4131158 tp_is_empty!42603)))

(declare-fun b!6850891 () Bool)

(declare-fun tp!1877378 () Bool)

(assert (=> b!6850891 (= e!4131158 tp!1877378)))

(declare-fun b!6850892 () Bool)

(declare-fun tp!1877376 () Bool)

(declare-fun tp!1877379 () Bool)

(assert (=> b!6850892 (= e!4131158 (and tp!1877376 tp!1877379))))

(declare-fun b!6850890 () Bool)

(declare-fun tp!1877377 () Bool)

(declare-fun tp!1877375 () Bool)

(assert (=> b!6850890 (= e!4131158 (and tp!1877377 tp!1877375))))

(assert (=> b!6848850 (= tp!1876498 e!4131158)))

(assert (= (and b!6848850 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33862 (reg!17004 r!7292))))) b!6850889))

(assert (= (and b!6848850 ((_ is Concat!25520) (reg!17004 (regTwo!33862 (reg!17004 r!7292))))) b!6850890))

(assert (= (and b!6848850 ((_ is Star!16675) (reg!17004 (regTwo!33862 (reg!17004 r!7292))))) b!6850891))

(assert (= (and b!6848850 ((_ is Union!16675) (reg!17004 (regTwo!33862 (reg!17004 r!7292))))) b!6850892))

(declare-fun b!6850893 () Bool)

(declare-fun e!4131159 () Bool)

(assert (=> b!6850893 (= e!4131159 tp_is_empty!42603)))

(declare-fun b!6850895 () Bool)

(declare-fun tp!1877383 () Bool)

(assert (=> b!6850895 (= e!4131159 tp!1877383)))

(declare-fun b!6850896 () Bool)

(declare-fun tp!1877381 () Bool)

(declare-fun tp!1877384 () Bool)

(assert (=> b!6850896 (= e!4131159 (and tp!1877381 tp!1877384))))

(declare-fun b!6850894 () Bool)

(declare-fun tp!1877382 () Bool)

(declare-fun tp!1877380 () Bool)

(assert (=> b!6850894 (= e!4131159 (and tp!1877382 tp!1877380))))

(assert (=> b!6848859 (= tp!1876506 e!4131159)))

(assert (= (and b!6848859 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850893))

(assert (= (and b!6848859 ((_ is Concat!25520) (regOne!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850894))

(assert (= (and b!6848859 ((_ is Star!16675) (regOne!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850895))

(assert (= (and b!6848859 ((_ is Union!16675) (regOne!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850896))

(declare-fun b!6850897 () Bool)

(declare-fun e!4131160 () Bool)

(assert (=> b!6850897 (= e!4131160 tp_is_empty!42603)))

(declare-fun b!6850899 () Bool)

(declare-fun tp!1877388 () Bool)

(assert (=> b!6850899 (= e!4131160 tp!1877388)))

(declare-fun b!6850900 () Bool)

(declare-fun tp!1877386 () Bool)

(declare-fun tp!1877389 () Bool)

(assert (=> b!6850900 (= e!4131160 (and tp!1877386 tp!1877389))))

(declare-fun b!6850898 () Bool)

(declare-fun tp!1877387 () Bool)

(declare-fun tp!1877385 () Bool)

(assert (=> b!6850898 (= e!4131160 (and tp!1877387 tp!1877385))))

(assert (=> b!6848859 (= tp!1876509 e!4131160)))

(assert (= (and b!6848859 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850897))

(assert (= (and b!6848859 ((_ is Concat!25520) (regTwo!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850898))

(assert (= (and b!6848859 ((_ is Star!16675) (regTwo!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850899))

(assert (= (and b!6848859 ((_ is Union!16675) (regTwo!33863 (regTwo!33863 (regTwo!33863 r!7292))))) b!6850900))

(declare-fun b!6850901 () Bool)

(declare-fun e!4131161 () Bool)

(assert (=> b!6850901 (= e!4131161 tp_is_empty!42603)))

(declare-fun b!6850903 () Bool)

(declare-fun tp!1877393 () Bool)

(assert (=> b!6850903 (= e!4131161 tp!1877393)))

(declare-fun b!6850904 () Bool)

(declare-fun tp!1877391 () Bool)

(declare-fun tp!1877394 () Bool)

(assert (=> b!6850904 (= e!4131161 (and tp!1877391 tp!1877394))))

(declare-fun b!6850902 () Bool)

(declare-fun tp!1877392 () Bool)

(declare-fun tp!1877390 () Bool)

(assert (=> b!6850902 (= e!4131161 (and tp!1877392 tp!1877390))))

(assert (=> b!6848823 (= tp!1876461 e!4131161)))

(assert (= (and b!6848823 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850901))

(assert (= (and b!6848823 ((_ is Concat!25520) (regOne!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850902))

(assert (= (and b!6848823 ((_ is Star!16675) (regOne!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850903))

(assert (= (and b!6848823 ((_ is Union!16675) (regOne!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850904))

(declare-fun b!6850905 () Bool)

(declare-fun e!4131162 () Bool)

(assert (=> b!6850905 (= e!4131162 tp_is_empty!42603)))

(declare-fun b!6850907 () Bool)

(declare-fun tp!1877398 () Bool)

(assert (=> b!6850907 (= e!4131162 tp!1877398)))

(declare-fun b!6850908 () Bool)

(declare-fun tp!1877396 () Bool)

(declare-fun tp!1877399 () Bool)

(assert (=> b!6850908 (= e!4131162 (and tp!1877396 tp!1877399))))

(declare-fun b!6850906 () Bool)

(declare-fun tp!1877397 () Bool)

(declare-fun tp!1877395 () Bool)

(assert (=> b!6850906 (= e!4131162 (and tp!1877397 tp!1877395))))

(assert (=> b!6848823 (= tp!1876464 e!4131162)))

(assert (= (and b!6848823 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850905))

(assert (= (and b!6848823 ((_ is Concat!25520) (regTwo!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850906))

(assert (= (and b!6848823 ((_ is Star!16675) (regTwo!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850907))

(assert (= (and b!6848823 ((_ is Union!16675) (regTwo!33863 (regOne!33863 (reg!17004 r!7292))))) b!6850908))

(declare-fun b!6850909 () Bool)

(declare-fun e!4131163 () Bool)

(assert (=> b!6850909 (= e!4131163 tp_is_empty!42603)))

(declare-fun b!6850911 () Bool)

(declare-fun tp!1877403 () Bool)

(assert (=> b!6850911 (= e!4131163 tp!1877403)))

(declare-fun b!6850912 () Bool)

(declare-fun tp!1877401 () Bool)

(declare-fun tp!1877404 () Bool)

(assert (=> b!6850912 (= e!4131163 (and tp!1877401 tp!1877404))))

(declare-fun b!6850910 () Bool)

(declare-fun tp!1877402 () Bool)

(declare-fun tp!1877400 () Bool)

(assert (=> b!6850910 (= e!4131163 (and tp!1877402 tp!1877400))))

(assert (=> b!6848927 (= tp!1876594 e!4131163)))

(assert (= (and b!6848927 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850909))

(assert (= (and b!6848927 ((_ is Concat!25520) (regOne!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850910))

(assert (= (and b!6848927 ((_ is Star!16675) (regOne!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850911))

(assert (= (and b!6848927 ((_ is Union!16675) (regOne!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850912))

(declare-fun b!6850913 () Bool)

(declare-fun e!4131164 () Bool)

(assert (=> b!6850913 (= e!4131164 tp_is_empty!42603)))

(declare-fun b!6850915 () Bool)

(declare-fun tp!1877408 () Bool)

(assert (=> b!6850915 (= e!4131164 tp!1877408)))

(declare-fun b!6850916 () Bool)

(declare-fun tp!1877406 () Bool)

(declare-fun tp!1877409 () Bool)

(assert (=> b!6850916 (= e!4131164 (and tp!1877406 tp!1877409))))

(declare-fun b!6850914 () Bool)

(declare-fun tp!1877407 () Bool)

(declare-fun tp!1877405 () Bool)

(assert (=> b!6850914 (= e!4131164 (and tp!1877407 tp!1877405))))

(assert (=> b!6848927 (= tp!1876597 e!4131164)))

(assert (= (and b!6848927 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850913))

(assert (= (and b!6848927 ((_ is Concat!25520) (regTwo!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850914))

(assert (= (and b!6848927 ((_ is Star!16675) (regTwo!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850915))

(assert (= (and b!6848927 ((_ is Union!16675) (regTwo!33863 (regTwo!33862 (regOne!33863 r!7292))))) b!6850916))

(declare-fun b!6850917 () Bool)

(declare-fun e!4131165 () Bool)

(assert (=> b!6850917 (= e!4131165 tp_is_empty!42603)))

(declare-fun b!6850919 () Bool)

(declare-fun tp!1877413 () Bool)

(assert (=> b!6850919 (= e!4131165 tp!1877413)))

(declare-fun b!6850920 () Bool)

(declare-fun tp!1877411 () Bool)

(declare-fun tp!1877414 () Bool)

(assert (=> b!6850920 (= e!4131165 (and tp!1877411 tp!1877414))))

(declare-fun b!6850918 () Bool)

(declare-fun tp!1877412 () Bool)

(declare-fun tp!1877410 () Bool)

(assert (=> b!6850918 (= e!4131165 (and tp!1877412 tp!1877410))))

(assert (=> b!6848909 (= tp!1876575 e!4131165)))

(assert (= (and b!6848909 ((_ is ElementMatch!16675) (regOne!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850917))

(assert (= (and b!6848909 ((_ is Concat!25520) (regOne!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850918))

(assert (= (and b!6848909 ((_ is Star!16675) (regOne!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850919))

(assert (= (and b!6848909 ((_ is Union!16675) (regOne!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850920))

(declare-fun b!6850921 () Bool)

(declare-fun e!4131166 () Bool)

(assert (=> b!6850921 (= e!4131166 tp_is_empty!42603)))

(declare-fun b!6850923 () Bool)

(declare-fun tp!1877418 () Bool)

(assert (=> b!6850923 (= e!4131166 tp!1877418)))

(declare-fun b!6850924 () Bool)

(declare-fun tp!1877416 () Bool)

(declare-fun tp!1877419 () Bool)

(assert (=> b!6850924 (= e!4131166 (and tp!1877416 tp!1877419))))

(declare-fun b!6850922 () Bool)

(declare-fun tp!1877417 () Bool)

(declare-fun tp!1877415 () Bool)

(assert (=> b!6850922 (= e!4131166 (and tp!1877417 tp!1877415))))

(assert (=> b!6848909 (= tp!1876573 e!4131166)))

(assert (= (and b!6848909 ((_ is ElementMatch!16675) (regTwo!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850921))

(assert (= (and b!6848909 ((_ is Concat!25520) (regTwo!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850922))

(assert (= (and b!6848909 ((_ is Star!16675) (regTwo!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850923))

(assert (= (and b!6848909 ((_ is Union!16675) (regTwo!33862 (reg!17004 (regOne!33863 r!7292))))) b!6850924))

(declare-fun b!6850925 () Bool)

(declare-fun e!4131167 () Bool)

(assert (=> b!6850925 (= e!4131167 tp_is_empty!42603)))

(declare-fun b!6850927 () Bool)

(declare-fun tp!1877423 () Bool)

(assert (=> b!6850927 (= e!4131167 tp!1877423)))

(declare-fun b!6850928 () Bool)

(declare-fun tp!1877421 () Bool)

(declare-fun tp!1877424 () Bool)

(assert (=> b!6850928 (= e!4131167 (and tp!1877421 tp!1877424))))

(declare-fun b!6850926 () Bool)

(declare-fun tp!1877422 () Bool)

(declare-fun tp!1877420 () Bool)

(assert (=> b!6850926 (= e!4131167 (and tp!1877422 tp!1877420))))

(assert (=> b!6848872 (= tp!1876526 e!4131167)))

(assert (= (and b!6848872 ((_ is ElementMatch!16675) (regOne!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850925))

(assert (= (and b!6848872 ((_ is Concat!25520) (regOne!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850926))

(assert (= (and b!6848872 ((_ is Star!16675) (regOne!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850927))

(assert (= (and b!6848872 ((_ is Union!16675) (regOne!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850928))

(declare-fun b!6850929 () Bool)

(declare-fun e!4131168 () Bool)

(assert (=> b!6850929 (= e!4131168 tp_is_empty!42603)))

(declare-fun b!6850931 () Bool)

(declare-fun tp!1877428 () Bool)

(assert (=> b!6850931 (= e!4131168 tp!1877428)))

(declare-fun b!6850932 () Bool)

(declare-fun tp!1877426 () Bool)

(declare-fun tp!1877429 () Bool)

(assert (=> b!6850932 (= e!4131168 (and tp!1877426 tp!1877429))))

(declare-fun b!6850930 () Bool)

(declare-fun tp!1877427 () Bool)

(declare-fun tp!1877425 () Bool)

(assert (=> b!6850930 (= e!4131168 (and tp!1877427 tp!1877425))))

(assert (=> b!6848872 (= tp!1876524 e!4131168)))

(assert (= (and b!6848872 ((_ is ElementMatch!16675) (regTwo!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850929))

(assert (= (and b!6848872 ((_ is Concat!25520) (regTwo!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850930))

(assert (= (and b!6848872 ((_ is Star!16675) (regTwo!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850931))

(assert (= (and b!6848872 ((_ is Union!16675) (regTwo!33862 (reg!17004 (regTwo!33862 r!7292))))) b!6850932))

(declare-fun b!6850933 () Bool)

(declare-fun e!4131169 () Bool)

(assert (=> b!6850933 (= e!4131169 tp_is_empty!42603)))

(declare-fun b!6850935 () Bool)

(declare-fun tp!1877433 () Bool)

(assert (=> b!6850935 (= e!4131169 tp!1877433)))

(declare-fun b!6850936 () Bool)

(declare-fun tp!1877431 () Bool)

(declare-fun tp!1877434 () Bool)

(assert (=> b!6850936 (= e!4131169 (and tp!1877431 tp!1877434))))

(declare-fun b!6850934 () Bool)

(declare-fun tp!1877432 () Bool)

(declare-fun tp!1877430 () Bool)

(assert (=> b!6850934 (= e!4131169 (and tp!1877432 tp!1877430))))

(assert (=> b!6848918 (= tp!1876586 e!4131169)))

(assert (= (and b!6848918 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33863 (regOne!33863 r!7292))))) b!6850933))

(assert (= (and b!6848918 ((_ is Concat!25520) (reg!17004 (regTwo!33863 (regOne!33863 r!7292))))) b!6850934))

(assert (= (and b!6848918 ((_ is Star!16675) (reg!17004 (regTwo!33863 (regOne!33863 r!7292))))) b!6850935))

(assert (= (and b!6848918 ((_ is Union!16675) (reg!17004 (regTwo!33863 (regOne!33863 r!7292))))) b!6850936))

(declare-fun b!6850937 () Bool)

(declare-fun e!4131170 () Bool)

(assert (=> b!6850937 (= e!4131170 tp_is_empty!42603)))

(declare-fun b!6850939 () Bool)

(declare-fun tp!1877438 () Bool)

(assert (=> b!6850939 (= e!4131170 tp!1877438)))

(declare-fun b!6850940 () Bool)

(declare-fun tp!1877436 () Bool)

(declare-fun tp!1877439 () Bool)

(assert (=> b!6850940 (= e!4131170 (and tp!1877436 tp!1877439))))

(declare-fun b!6850938 () Bool)

(declare-fun tp!1877437 () Bool)

(declare-fun tp!1877435 () Bool)

(assert (=> b!6850938 (= e!4131170 (and tp!1877437 tp!1877435))))

(assert (=> b!6848830 (= tp!1876473 e!4131170)))

(assert (= (and b!6848830 ((_ is ElementMatch!16675) (reg!17004 (reg!17004 (regOne!33862 r!7292))))) b!6850937))

(assert (= (and b!6848830 ((_ is Concat!25520) (reg!17004 (reg!17004 (regOne!33862 r!7292))))) b!6850938))

(assert (= (and b!6848830 ((_ is Star!16675) (reg!17004 (reg!17004 (regOne!33862 r!7292))))) b!6850939))

(assert (= (and b!6848830 ((_ is Union!16675) (reg!17004 (reg!17004 (regOne!33862 r!7292))))) b!6850940))

(declare-fun b!6850941 () Bool)

(declare-fun e!4131171 () Bool)

(assert (=> b!6850941 (= e!4131171 tp_is_empty!42603)))

(declare-fun b!6850943 () Bool)

(declare-fun tp!1877443 () Bool)

(assert (=> b!6850943 (= e!4131171 tp!1877443)))

(declare-fun b!6850944 () Bool)

(declare-fun tp!1877441 () Bool)

(declare-fun tp!1877444 () Bool)

(assert (=> b!6850944 (= e!4131171 (and tp!1877441 tp!1877444))))

(declare-fun b!6850942 () Bool)

(declare-fun tp!1877442 () Bool)

(declare-fun tp!1877440 () Bool)

(assert (=> b!6850942 (= e!4131171 (and tp!1877442 tp!1877440))))

(assert (=> b!6848839 (= tp!1876481 e!4131171)))

(assert (= (and b!6848839 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850941))

(assert (= (and b!6848839 ((_ is Concat!25520) (regOne!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850942))

(assert (= (and b!6848839 ((_ is Star!16675) (regOne!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850943))

(assert (= (and b!6848839 ((_ is Union!16675) (regOne!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850944))

(declare-fun b!6850945 () Bool)

(declare-fun e!4131172 () Bool)

(assert (=> b!6850945 (= e!4131172 tp_is_empty!42603)))

(declare-fun b!6850947 () Bool)

(declare-fun tp!1877448 () Bool)

(assert (=> b!6850947 (= e!4131172 tp!1877448)))

(declare-fun b!6850948 () Bool)

(declare-fun tp!1877446 () Bool)

(declare-fun tp!1877449 () Bool)

(assert (=> b!6850948 (= e!4131172 (and tp!1877446 tp!1877449))))

(declare-fun b!6850946 () Bool)

(declare-fun tp!1877447 () Bool)

(declare-fun tp!1877445 () Bool)

(assert (=> b!6850946 (= e!4131172 (and tp!1877447 tp!1877445))))

(assert (=> b!6848839 (= tp!1876484 e!4131172)))

(assert (= (and b!6848839 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850945))

(assert (= (and b!6848839 ((_ is Concat!25520) (regTwo!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850946))

(assert (= (and b!6848839 ((_ is Star!16675) (regTwo!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850947))

(assert (= (and b!6848839 ((_ is Union!16675) (regTwo!33863 (regTwo!33862 (regOne!33862 r!7292))))) b!6850948))

(declare-fun b!6850949 () Bool)

(declare-fun e!4131173 () Bool)

(declare-fun tp!1877450 () Bool)

(declare-fun tp!1877451 () Bool)

(assert (=> b!6850949 (= e!4131173 (and tp!1877450 tp!1877451))))

(assert (=> b!6848649 (= tp!1876457 e!4131173)))

(assert (= (and b!6848649 ((_ is Cons!66200) (exprs!6559 (h!72649 res!2795634)))) b!6850949))

(declare-fun b!6850950 () Bool)

(declare-fun e!4131174 () Bool)

(assert (=> b!6850950 (= e!4131174 tp_is_empty!42603)))

(declare-fun b!6850952 () Bool)

(declare-fun tp!1877455 () Bool)

(assert (=> b!6850952 (= e!4131174 tp!1877455)))

(declare-fun b!6850953 () Bool)

(declare-fun tp!1877453 () Bool)

(declare-fun tp!1877456 () Bool)

(assert (=> b!6850953 (= e!4131174 (and tp!1877453 tp!1877456))))

(declare-fun b!6850951 () Bool)

(declare-fun tp!1877454 () Bool)

(declare-fun tp!1877452 () Bool)

(assert (=> b!6850951 (= e!4131174 (and tp!1877454 tp!1877452))))

(assert (=> b!6848821 (= tp!1876462 e!4131174)))

(assert (= (and b!6848821 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850950))

(assert (= (and b!6848821 ((_ is Concat!25520) (regOne!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850951))

(assert (= (and b!6848821 ((_ is Star!16675) (regOne!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850952))

(assert (= (and b!6848821 ((_ is Union!16675) (regOne!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850953))

(declare-fun b!6850954 () Bool)

(declare-fun e!4131175 () Bool)

(assert (=> b!6850954 (= e!4131175 tp_is_empty!42603)))

(declare-fun b!6850956 () Bool)

(declare-fun tp!1877460 () Bool)

(assert (=> b!6850956 (= e!4131175 tp!1877460)))

(declare-fun b!6850957 () Bool)

(declare-fun tp!1877458 () Bool)

(declare-fun tp!1877461 () Bool)

(assert (=> b!6850957 (= e!4131175 (and tp!1877458 tp!1877461))))

(declare-fun b!6850955 () Bool)

(declare-fun tp!1877459 () Bool)

(declare-fun tp!1877457 () Bool)

(assert (=> b!6850955 (= e!4131175 (and tp!1877459 tp!1877457))))

(assert (=> b!6848821 (= tp!1876460 e!4131175)))

(assert (= (and b!6848821 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850954))

(assert (= (and b!6848821 ((_ is Concat!25520) (regTwo!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850955))

(assert (= (and b!6848821 ((_ is Star!16675) (regTwo!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850956))

(assert (= (and b!6848821 ((_ is Union!16675) (regTwo!33862 (regOne!33863 (reg!17004 r!7292))))) b!6850957))

(declare-fun b!6850958 () Bool)

(declare-fun e!4131176 () Bool)

(assert (=> b!6850958 (= e!4131176 tp_is_empty!42603)))

(declare-fun b!6850960 () Bool)

(declare-fun tp!1877465 () Bool)

(assert (=> b!6850960 (= e!4131176 tp!1877465)))

(declare-fun b!6850961 () Bool)

(declare-fun tp!1877463 () Bool)

(declare-fun tp!1877466 () Bool)

(assert (=> b!6850961 (= e!4131176 (and tp!1877463 tp!1877466))))

(declare-fun b!6850959 () Bool)

(declare-fun tp!1877464 () Bool)

(declare-fun tp!1877462 () Bool)

(assert (=> b!6850959 (= e!4131176 (and tp!1877464 tp!1877462))))

(assert (=> b!6848925 (= tp!1876595 e!4131176)))

(assert (= (and b!6848925 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850958))

(assert (= (and b!6848925 ((_ is Concat!25520) (regOne!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850959))

(assert (= (and b!6848925 ((_ is Star!16675) (regOne!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850960))

(assert (= (and b!6848925 ((_ is Union!16675) (regOne!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850961))

(declare-fun b!6850962 () Bool)

(declare-fun e!4131177 () Bool)

(assert (=> b!6850962 (= e!4131177 tp_is_empty!42603)))

(declare-fun b!6850964 () Bool)

(declare-fun tp!1877470 () Bool)

(assert (=> b!6850964 (= e!4131177 tp!1877470)))

(declare-fun b!6850965 () Bool)

(declare-fun tp!1877468 () Bool)

(declare-fun tp!1877471 () Bool)

(assert (=> b!6850965 (= e!4131177 (and tp!1877468 tp!1877471))))

(declare-fun b!6850963 () Bool)

(declare-fun tp!1877469 () Bool)

(declare-fun tp!1877467 () Bool)

(assert (=> b!6850963 (= e!4131177 (and tp!1877469 tp!1877467))))

(assert (=> b!6848925 (= tp!1876593 e!4131177)))

(assert (= (and b!6848925 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850962))

(assert (= (and b!6848925 ((_ is Concat!25520) (regTwo!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850963))

(assert (= (and b!6848925 ((_ is Star!16675) (regTwo!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850964))

(assert (= (and b!6848925 ((_ is Union!16675) (regTwo!33862 (regTwo!33862 (regOne!33863 r!7292))))) b!6850965))

(declare-fun b!6850966 () Bool)

(declare-fun e!4131178 () Bool)

(assert (=> b!6850966 (= e!4131178 tp_is_empty!42603)))

(declare-fun b!6850968 () Bool)

(declare-fun tp!1877475 () Bool)

(assert (=> b!6850968 (= e!4131178 tp!1877475)))

(declare-fun b!6850969 () Bool)

(declare-fun tp!1877473 () Bool)

(declare-fun tp!1877476 () Bool)

(assert (=> b!6850969 (= e!4131178 (and tp!1877473 tp!1877476))))

(declare-fun b!6850967 () Bool)

(declare-fun tp!1877474 () Bool)

(declare-fun tp!1877472 () Bool)

(assert (=> b!6850967 (= e!4131178 (and tp!1877474 tp!1877472))))

(assert (=> b!6848934 (= tp!1876606 e!4131178)))

(assert (= (and b!6848934 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33863 (regOne!33862 r!7292))))) b!6850966))

(assert (= (and b!6848934 ((_ is Concat!25520) (reg!17004 (regTwo!33863 (regOne!33862 r!7292))))) b!6850967))

(assert (= (and b!6848934 ((_ is Star!16675) (reg!17004 (regTwo!33863 (regOne!33862 r!7292))))) b!6850968))

(assert (= (and b!6848934 ((_ is Union!16675) (reg!17004 (regTwo!33863 (regOne!33862 r!7292))))) b!6850969))

(declare-fun b!6850970 () Bool)

(declare-fun e!4131179 () Bool)

(assert (=> b!6850970 (= e!4131179 tp_is_empty!42603)))

(declare-fun b!6850972 () Bool)

(declare-fun tp!1877480 () Bool)

(assert (=> b!6850972 (= e!4131179 tp!1877480)))

(declare-fun b!6850973 () Bool)

(declare-fun tp!1877478 () Bool)

(declare-fun tp!1877481 () Bool)

(assert (=> b!6850973 (= e!4131179 (and tp!1877478 tp!1877481))))

(declare-fun b!6850971 () Bool)

(declare-fun tp!1877479 () Bool)

(declare-fun tp!1877477 () Bool)

(assert (=> b!6850971 (= e!4131179 (and tp!1877479 tp!1877477))))

(assert (=> b!6848846 (= tp!1876493 e!4131179)))

(assert (= (and b!6848846 ((_ is ElementMatch!16675) (reg!17004 (regOne!33862 (reg!17004 r!7292))))) b!6850970))

(assert (= (and b!6848846 ((_ is Concat!25520) (reg!17004 (regOne!33862 (reg!17004 r!7292))))) b!6850971))

(assert (= (and b!6848846 ((_ is Star!16675) (reg!17004 (regOne!33862 (reg!17004 r!7292))))) b!6850972))

(assert (= (and b!6848846 ((_ is Union!16675) (reg!17004 (regOne!33862 (reg!17004 r!7292))))) b!6850973))

(declare-fun b!6850974 () Bool)

(declare-fun e!4131180 () Bool)

(assert (=> b!6850974 (= e!4131180 tp_is_empty!42603)))

(declare-fun b!6850976 () Bool)

(declare-fun tp!1877485 () Bool)

(assert (=> b!6850976 (= e!4131180 tp!1877485)))

(declare-fun b!6850977 () Bool)

(declare-fun tp!1877483 () Bool)

(declare-fun tp!1877486 () Bool)

(assert (=> b!6850977 (= e!4131180 (and tp!1877483 tp!1877486))))

(declare-fun b!6850975 () Bool)

(declare-fun tp!1877484 () Bool)

(declare-fun tp!1877482 () Bool)

(assert (=> b!6850975 (= e!4131180 (and tp!1877484 tp!1877482))))

(assert (=> b!6848855 (= tp!1876501 e!4131180)))

(assert (= (and b!6848855 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850974))

(assert (= (and b!6848855 ((_ is Concat!25520) (regOne!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850975))

(assert (= (and b!6848855 ((_ is Star!16675) (regOne!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850976))

(assert (= (and b!6848855 ((_ is Union!16675) (regOne!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850977))

(declare-fun b!6850978 () Bool)

(declare-fun e!4131181 () Bool)

(assert (=> b!6850978 (= e!4131181 tp_is_empty!42603)))

(declare-fun b!6850980 () Bool)

(declare-fun tp!1877490 () Bool)

(assert (=> b!6850980 (= e!4131181 tp!1877490)))

(declare-fun b!6850981 () Bool)

(declare-fun tp!1877488 () Bool)

(declare-fun tp!1877491 () Bool)

(assert (=> b!6850981 (= e!4131181 (and tp!1877488 tp!1877491))))

(declare-fun b!6850979 () Bool)

(declare-fun tp!1877489 () Bool)

(declare-fun tp!1877487 () Bool)

(assert (=> b!6850979 (= e!4131181 (and tp!1877489 tp!1877487))))

(assert (=> b!6848855 (= tp!1876504 e!4131181)))

(assert (= (and b!6848855 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850978))

(assert (= (and b!6848855 ((_ is Concat!25520) (regTwo!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850979))

(assert (= (and b!6848855 ((_ is Star!16675) (regTwo!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850980))

(assert (= (and b!6848855 ((_ is Union!16675) (regTwo!33863 (regOne!33863 (regTwo!33863 r!7292))))) b!6850981))

(declare-fun b!6850982 () Bool)

(declare-fun e!4131182 () Bool)

(assert (=> b!6850982 (= e!4131182 tp_is_empty!42603)))

(declare-fun b!6850984 () Bool)

(declare-fun tp!1877495 () Bool)

(assert (=> b!6850984 (= e!4131182 tp!1877495)))

(declare-fun b!6850985 () Bool)

(declare-fun tp!1877493 () Bool)

(declare-fun tp!1877496 () Bool)

(assert (=> b!6850985 (= e!4131182 (and tp!1877493 tp!1877496))))

(declare-fun b!6850983 () Bool)

(declare-fun tp!1877494 () Bool)

(declare-fun tp!1877492 () Bool)

(assert (=> b!6850983 (= e!4131182 (and tp!1877494 tp!1877492))))

(assert (=> b!6848878 (= tp!1876534 e!4131182)))

(assert (= (and b!6848878 ((_ is ElementMatch!16675) (reg!17004 (regOne!33862 (regTwo!33863 r!7292))))) b!6850982))

(assert (= (and b!6848878 ((_ is Concat!25520) (reg!17004 (regOne!33862 (regTwo!33863 r!7292))))) b!6850983))

(assert (= (and b!6848878 ((_ is Star!16675) (reg!17004 (regOne!33862 (regTwo!33863 r!7292))))) b!6850984))

(assert (= (and b!6848878 ((_ is Union!16675) (reg!17004 (regOne!33862 (regTwo!33863 r!7292))))) b!6850985))

(declare-fun b!6850986 () Bool)

(declare-fun e!4131183 () Bool)

(assert (=> b!6850986 (= e!4131183 tp_is_empty!42603)))

(declare-fun b!6850988 () Bool)

(declare-fun tp!1877500 () Bool)

(assert (=> b!6850988 (= e!4131183 tp!1877500)))

(declare-fun b!6850989 () Bool)

(declare-fun tp!1877498 () Bool)

(declare-fun tp!1877501 () Bool)

(assert (=> b!6850989 (= e!4131183 (and tp!1877498 tp!1877501))))

(declare-fun b!6850987 () Bool)

(declare-fun tp!1877499 () Bool)

(declare-fun tp!1877497 () Bool)

(assert (=> b!6850987 (= e!4131183 (and tp!1877499 tp!1877497))))

(assert (=> b!6848837 (= tp!1876482 e!4131183)))

(assert (= (and b!6848837 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850986))

(assert (= (and b!6848837 ((_ is Concat!25520) (regOne!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850987))

(assert (= (and b!6848837 ((_ is Star!16675) (regOne!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850988))

(assert (= (and b!6848837 ((_ is Union!16675) (regOne!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850989))

(declare-fun b!6850990 () Bool)

(declare-fun e!4131184 () Bool)

(assert (=> b!6850990 (= e!4131184 tp_is_empty!42603)))

(declare-fun b!6850992 () Bool)

(declare-fun tp!1877505 () Bool)

(assert (=> b!6850992 (= e!4131184 tp!1877505)))

(declare-fun b!6850993 () Bool)

(declare-fun tp!1877503 () Bool)

(declare-fun tp!1877506 () Bool)

(assert (=> b!6850993 (= e!4131184 (and tp!1877503 tp!1877506))))

(declare-fun b!6850991 () Bool)

(declare-fun tp!1877504 () Bool)

(declare-fun tp!1877502 () Bool)

(assert (=> b!6850991 (= e!4131184 (and tp!1877504 tp!1877502))))

(assert (=> b!6848837 (= tp!1876480 e!4131184)))

(assert (= (and b!6848837 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850990))

(assert (= (and b!6848837 ((_ is Concat!25520) (regTwo!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850991))

(assert (= (and b!6848837 ((_ is Star!16675) (regTwo!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850992))

(assert (= (and b!6848837 ((_ is Union!16675) (regTwo!33862 (regTwo!33862 (regOne!33862 r!7292))))) b!6850993))

(declare-fun b!6850994 () Bool)

(declare-fun e!4131185 () Bool)

(assert (=> b!6850994 (= e!4131185 tp_is_empty!42603)))

(declare-fun b!6850996 () Bool)

(declare-fun tp!1877510 () Bool)

(assert (=> b!6850996 (= e!4131185 tp!1877510)))

(declare-fun b!6850997 () Bool)

(declare-fun tp!1877508 () Bool)

(declare-fun tp!1877511 () Bool)

(assert (=> b!6850997 (= e!4131185 (and tp!1877508 tp!1877511))))

(declare-fun b!6850995 () Bool)

(declare-fun tp!1877509 () Bool)

(declare-fun tp!1877507 () Bool)

(assert (=> b!6850995 (= e!4131185 (and tp!1877509 tp!1877507))))

(assert (=> b!6848887 (= tp!1876542 e!4131185)))

(assert (= (and b!6848887 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6850994))

(assert (= (and b!6848887 ((_ is Concat!25520) (regOne!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6850995))

(assert (= (and b!6848887 ((_ is Star!16675) (regOne!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6850996))

(assert (= (and b!6848887 ((_ is Union!16675) (regOne!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6850997))

(declare-fun b!6850998 () Bool)

(declare-fun e!4131186 () Bool)

(assert (=> b!6850998 (= e!4131186 tp_is_empty!42603)))

(declare-fun b!6851000 () Bool)

(declare-fun tp!1877515 () Bool)

(assert (=> b!6851000 (= e!4131186 tp!1877515)))

(declare-fun b!6851001 () Bool)

(declare-fun tp!1877513 () Bool)

(declare-fun tp!1877516 () Bool)

(assert (=> b!6851001 (= e!4131186 (and tp!1877513 tp!1877516))))

(declare-fun b!6850999 () Bool)

(declare-fun tp!1877514 () Bool)

(declare-fun tp!1877512 () Bool)

(assert (=> b!6850999 (= e!4131186 (and tp!1877514 tp!1877512))))

(assert (=> b!6848887 (= tp!1876545 e!4131186)))

(assert (= (and b!6848887 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6850998))

(assert (= (and b!6848887 ((_ is Concat!25520) (regTwo!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6850999))

(assert (= (and b!6848887 ((_ is Star!16675) (regTwo!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6851000))

(assert (= (and b!6848887 ((_ is Union!16675) (regTwo!33863 (regOne!33863 (regTwo!33862 r!7292))))) b!6851001))

(declare-fun b!6851002 () Bool)

(declare-fun e!4131187 () Bool)

(assert (=> b!6851002 (= e!4131187 tp_is_empty!42603)))

(declare-fun b!6851004 () Bool)

(declare-fun tp!1877520 () Bool)

(assert (=> b!6851004 (= e!4131187 tp!1877520)))

(declare-fun b!6851005 () Bool)

(declare-fun tp!1877518 () Bool)

(declare-fun tp!1877521 () Bool)

(assert (=> b!6851005 (= e!4131187 (and tp!1877518 tp!1877521))))

(declare-fun b!6851003 () Bool)

(declare-fun tp!1877519 () Bool)

(declare-fun tp!1877517 () Bool)

(assert (=> b!6851003 (= e!4131187 (and tp!1877519 tp!1877517))))

(assert (=> b!6848904 (= tp!1876566 e!4131187)))

(assert (= (and b!6848904 ((_ is ElementMatch!16675) (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343)))))) b!6851002))

(assert (= (and b!6848904 ((_ is Concat!25520) (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343)))))) b!6851003))

(assert (= (and b!6848904 ((_ is Star!16675) (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343)))))) b!6851004))

(assert (= (and b!6848904 ((_ is Union!16675) (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343)))))) b!6851005))

(declare-fun b!6851006 () Bool)

(declare-fun e!4131188 () Bool)

(declare-fun tp!1877522 () Bool)

(declare-fun tp!1877523 () Bool)

(assert (=> b!6851006 (= e!4131188 (and tp!1877522 tp!1877523))))

(assert (=> b!6848904 (= tp!1876567 e!4131188)))

(assert (= (and b!6848904 ((_ is Cons!66200) (t!380067 (t!380067 (exprs!6559 (h!72649 zl!343)))))) b!6851006))

(declare-fun b!6851007 () Bool)

(declare-fun e!4131189 () Bool)

(assert (=> b!6851007 (= e!4131189 tp_is_empty!42603)))

(declare-fun b!6851009 () Bool)

(declare-fun tp!1877527 () Bool)

(assert (=> b!6851009 (= e!4131189 tp!1877527)))

(declare-fun b!6851010 () Bool)

(declare-fun tp!1877525 () Bool)

(declare-fun tp!1877528 () Bool)

(assert (=> b!6851010 (= e!4131189 (and tp!1877525 tp!1877528))))

(declare-fun b!6851008 () Bool)

(declare-fun tp!1877526 () Bool)

(declare-fun tp!1877524 () Bool)

(assert (=> b!6851008 (= e!4131189 (and tp!1877526 tp!1877524))))

(assert (=> b!6848862 (= tp!1876513 e!4131189)))

(assert (= (and b!6848862 ((_ is ElementMatch!16675) (reg!17004 (h!72648 (exprs!6559 setElem!47081))))) b!6851007))

(assert (= (and b!6848862 ((_ is Concat!25520) (reg!17004 (h!72648 (exprs!6559 setElem!47081))))) b!6851008))

(assert (= (and b!6848862 ((_ is Star!16675) (reg!17004 (h!72648 (exprs!6559 setElem!47081))))) b!6851009))

(assert (= (and b!6848862 ((_ is Union!16675) (reg!17004 (h!72648 (exprs!6559 setElem!47081))))) b!6851010))

(declare-fun b!6851011 () Bool)

(declare-fun e!4131190 () Bool)

(declare-fun tp!1877529 () Bool)

(declare-fun tp!1877530 () Bool)

(assert (=> b!6851011 (= e!4131190 (and tp!1877529 tp!1877530))))

(assert (=> b!6848907 (= tp!1876572 e!4131190)))

(assert (= (and b!6848907 ((_ is Cons!66200) (exprs!6559 setElem!47089))) b!6851011))

(declare-fun b!6851012 () Bool)

(declare-fun e!4131191 () Bool)

(declare-fun tp!1877531 () Bool)

(declare-fun tp!1877532 () Bool)

(assert (=> b!6851012 (= e!4131191 (and tp!1877531 tp!1877532))))

(assert (=> b!6848870 (= tp!1876522 e!4131191)))

(assert (= (and b!6848870 ((_ is Cons!66200) (exprs!6559 (h!72649 (t!380068 (t!380068 zl!343)))))) b!6851012))

(declare-fun b!6851013 () Bool)

(declare-fun e!4131192 () Bool)

(assert (=> b!6851013 (= e!4131192 tp_is_empty!42603)))

(declare-fun b!6851015 () Bool)

(declare-fun tp!1877536 () Bool)

(assert (=> b!6851015 (= e!4131192 tp!1877536)))

(declare-fun b!6851016 () Bool)

(declare-fun tp!1877534 () Bool)

(declare-fun tp!1877537 () Bool)

(assert (=> b!6851016 (= e!4131192 (and tp!1877534 tp!1877537))))

(declare-fun b!6851014 () Bool)

(declare-fun tp!1877535 () Bool)

(declare-fun tp!1877533 () Bool)

(assert (=> b!6851014 (= e!4131192 (and tp!1877535 tp!1877533))))

(assert (=> b!6848914 (= tp!1876581 e!4131192)))

(assert (= (and b!6848914 ((_ is ElementMatch!16675) (reg!17004 (regOne!33863 (regOne!33863 r!7292))))) b!6851013))

(assert (= (and b!6848914 ((_ is Concat!25520) (reg!17004 (regOne!33863 (regOne!33863 r!7292))))) b!6851014))

(assert (= (and b!6848914 ((_ is Star!16675) (reg!17004 (regOne!33863 (regOne!33863 r!7292))))) b!6851015))

(assert (= (and b!6848914 ((_ is Union!16675) (reg!17004 (regOne!33863 (regOne!33863 r!7292))))) b!6851016))

(declare-fun b!6851017 () Bool)

(declare-fun e!4131193 () Bool)

(assert (=> b!6851017 (= e!4131193 tp_is_empty!42603)))

(declare-fun b!6851019 () Bool)

(declare-fun tp!1877541 () Bool)

(assert (=> b!6851019 (= e!4131193 tp!1877541)))

(declare-fun b!6851020 () Bool)

(declare-fun tp!1877539 () Bool)

(declare-fun tp!1877542 () Bool)

(assert (=> b!6851020 (= e!4131193 (and tp!1877539 tp!1877542))))

(declare-fun b!6851018 () Bool)

(declare-fun tp!1877540 () Bool)

(declare-fun tp!1877538 () Bool)

(assert (=> b!6851018 (= e!4131193 (and tp!1877540 tp!1877538))))

(assert (=> b!6848894 (= tp!1876554 e!4131193)))

(assert (= (and b!6848894 ((_ is ElementMatch!16675) (reg!17004 (regOne!33862 (regTwo!33862 r!7292))))) b!6851017))

(assert (= (and b!6848894 ((_ is Concat!25520) (reg!17004 (regOne!33862 (regTwo!33862 r!7292))))) b!6851018))

(assert (= (and b!6848894 ((_ is Star!16675) (reg!17004 (regOne!33862 (regTwo!33862 r!7292))))) b!6851019))

(assert (= (and b!6848894 ((_ is Union!16675) (reg!17004 (regOne!33862 (regTwo!33862 r!7292))))) b!6851020))

(declare-fun b!6851021 () Bool)

(declare-fun e!4131194 () Bool)

(assert (=> b!6851021 (= e!4131194 tp_is_empty!42603)))

(declare-fun b!6851023 () Bool)

(declare-fun tp!1877546 () Bool)

(assert (=> b!6851023 (= e!4131194 tp!1877546)))

(declare-fun b!6851024 () Bool)

(declare-fun tp!1877544 () Bool)

(declare-fun tp!1877547 () Bool)

(assert (=> b!6851024 (= e!4131194 (and tp!1877544 tp!1877547))))

(declare-fun b!6851022 () Bool)

(declare-fun tp!1877545 () Bool)

(declare-fun tp!1877543 () Bool)

(assert (=> b!6851022 (= e!4131194 (and tp!1877545 tp!1877543))))

(assert (=> b!6848853 (= tp!1876502 e!4131194)))

(assert (= (and b!6848853 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851021))

(assert (= (and b!6848853 ((_ is Concat!25520) (regOne!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851022))

(assert (= (and b!6848853 ((_ is Star!16675) (regOne!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851023))

(assert (= (and b!6848853 ((_ is Union!16675) (regOne!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851024))

(declare-fun b!6851025 () Bool)

(declare-fun e!4131195 () Bool)

(assert (=> b!6851025 (= e!4131195 tp_is_empty!42603)))

(declare-fun b!6851027 () Bool)

(declare-fun tp!1877551 () Bool)

(assert (=> b!6851027 (= e!4131195 tp!1877551)))

(declare-fun b!6851028 () Bool)

(declare-fun tp!1877549 () Bool)

(declare-fun tp!1877552 () Bool)

(assert (=> b!6851028 (= e!4131195 (and tp!1877549 tp!1877552))))

(declare-fun b!6851026 () Bool)

(declare-fun tp!1877550 () Bool)

(declare-fun tp!1877548 () Bool)

(assert (=> b!6851026 (= e!4131195 (and tp!1877550 tp!1877548))))

(assert (=> b!6848853 (= tp!1876500 e!4131195)))

(assert (= (and b!6848853 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851025))

(assert (= (and b!6848853 ((_ is Concat!25520) (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851026))

(assert (= (and b!6848853 ((_ is Star!16675) (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851027))

(assert (= (and b!6848853 ((_ is Union!16675) (regTwo!33862 (regOne!33863 (regTwo!33863 r!7292))))) b!6851028))

(declare-fun b!6851029 () Bool)

(declare-fun e!4131196 () Bool)

(assert (=> b!6851029 (= e!4131196 tp_is_empty!42603)))

(declare-fun b!6851031 () Bool)

(declare-fun tp!1877556 () Bool)

(assert (=> b!6851031 (= e!4131196 tp!1877556)))

(declare-fun b!6851032 () Bool)

(declare-fun tp!1877554 () Bool)

(declare-fun tp!1877557 () Bool)

(assert (=> b!6851032 (= e!4131196 (and tp!1877554 tp!1877557))))

(declare-fun b!6851030 () Bool)

(declare-fun tp!1877555 () Bool)

(declare-fun tp!1877553 () Bool)

(assert (=> b!6851030 (= e!4131196 (and tp!1877555 tp!1877553))))

(assert (=> b!6848903 (= tp!1876562 e!4131196)))

(assert (= (and b!6848903 ((_ is ElementMatch!16675) (regOne!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851029))

(assert (= (and b!6848903 ((_ is Concat!25520) (regOne!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851030))

(assert (= (and b!6848903 ((_ is Star!16675) (regOne!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851031))

(assert (= (and b!6848903 ((_ is Union!16675) (regOne!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851032))

(declare-fun b!6851033 () Bool)

(declare-fun e!4131197 () Bool)

(assert (=> b!6851033 (= e!4131197 tp_is_empty!42603)))

(declare-fun b!6851035 () Bool)

(declare-fun tp!1877561 () Bool)

(assert (=> b!6851035 (= e!4131197 tp!1877561)))

(declare-fun b!6851036 () Bool)

(declare-fun tp!1877559 () Bool)

(declare-fun tp!1877562 () Bool)

(assert (=> b!6851036 (= e!4131197 (and tp!1877559 tp!1877562))))

(declare-fun b!6851034 () Bool)

(declare-fun tp!1877560 () Bool)

(declare-fun tp!1877558 () Bool)

(assert (=> b!6851034 (= e!4131197 (and tp!1877560 tp!1877558))))

(assert (=> b!6848903 (= tp!1876565 e!4131197)))

(assert (= (and b!6848903 ((_ is ElementMatch!16675) (regTwo!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851033))

(assert (= (and b!6848903 ((_ is Concat!25520) (regTwo!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851034))

(assert (= (and b!6848903 ((_ is Star!16675) (regTwo!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851035))

(assert (= (and b!6848903 ((_ is Union!16675) (regTwo!33863 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851036))

(declare-fun b!6851037 () Bool)

(declare-fun e!4131198 () Bool)

(assert (=> b!6851037 (= e!4131198 tp_is_empty!42603)))

(declare-fun b!6851039 () Bool)

(declare-fun tp!1877566 () Bool)

(assert (=> b!6851039 (= e!4131198 tp!1877566)))

(declare-fun b!6851040 () Bool)

(declare-fun tp!1877564 () Bool)

(declare-fun tp!1877567 () Bool)

(assert (=> b!6851040 (= e!4131198 (and tp!1877564 tp!1877567))))

(declare-fun b!6851038 () Bool)

(declare-fun tp!1877565 () Bool)

(declare-fun tp!1877563 () Bool)

(assert (=> b!6851038 (= e!4131198 (and tp!1877565 tp!1877563))))

(assert (=> b!6848885 (= tp!1876543 e!4131198)))

(assert (= (and b!6848885 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851037))

(assert (= (and b!6848885 ((_ is Concat!25520) (regOne!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851038))

(assert (= (and b!6848885 ((_ is Star!16675) (regOne!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851039))

(assert (= (and b!6848885 ((_ is Union!16675) (regOne!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851040))

(declare-fun b!6851041 () Bool)

(declare-fun e!4131199 () Bool)

(assert (=> b!6851041 (= e!4131199 tp_is_empty!42603)))

(declare-fun b!6851043 () Bool)

(declare-fun tp!1877571 () Bool)

(assert (=> b!6851043 (= e!4131199 tp!1877571)))

(declare-fun b!6851044 () Bool)

(declare-fun tp!1877569 () Bool)

(declare-fun tp!1877572 () Bool)

(assert (=> b!6851044 (= e!4131199 (and tp!1877569 tp!1877572))))

(declare-fun b!6851042 () Bool)

(declare-fun tp!1877570 () Bool)

(declare-fun tp!1877568 () Bool)

(assert (=> b!6851042 (= e!4131199 (and tp!1877570 tp!1877568))))

(assert (=> b!6848885 (= tp!1876541 e!4131199)))

(assert (= (and b!6848885 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851041))

(assert (= (and b!6848885 ((_ is Concat!25520) (regTwo!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851042))

(assert (= (and b!6848885 ((_ is Star!16675) (regTwo!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851043))

(assert (= (and b!6848885 ((_ is Union!16675) (regTwo!33862 (regOne!33863 (regTwo!33862 r!7292))))) b!6851044))

(declare-fun b!6851045 () Bool)

(declare-fun e!4131200 () Bool)

(assert (=> b!6851045 (= e!4131200 tp_is_empty!42603)))

(declare-fun b!6851047 () Bool)

(declare-fun tp!1877576 () Bool)

(assert (=> b!6851047 (= e!4131200 tp!1877576)))

(declare-fun b!6851048 () Bool)

(declare-fun tp!1877574 () Bool)

(declare-fun tp!1877577 () Bool)

(assert (=> b!6851048 (= e!4131200 (and tp!1877574 tp!1877577))))

(declare-fun b!6851046 () Bool)

(declare-fun tp!1877575 () Bool)

(declare-fun tp!1877573 () Bool)

(assert (=> b!6851046 (= e!4131200 (and tp!1877575 tp!1877573))))

(assert (=> b!6848921 (= tp!1876590 e!4131200)))

(assert (= (and b!6848921 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851045))

(assert (= (and b!6848921 ((_ is Concat!25520) (regOne!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851046))

(assert (= (and b!6848921 ((_ is Star!16675) (regOne!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851047))

(assert (= (and b!6848921 ((_ is Union!16675) (regOne!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851048))

(declare-fun b!6851049 () Bool)

(declare-fun e!4131201 () Bool)

(assert (=> b!6851049 (= e!4131201 tp_is_empty!42603)))

(declare-fun b!6851051 () Bool)

(declare-fun tp!1877581 () Bool)

(assert (=> b!6851051 (= e!4131201 tp!1877581)))

(declare-fun b!6851052 () Bool)

(declare-fun tp!1877579 () Bool)

(declare-fun tp!1877582 () Bool)

(assert (=> b!6851052 (= e!4131201 (and tp!1877579 tp!1877582))))

(declare-fun b!6851050 () Bool)

(declare-fun tp!1877580 () Bool)

(declare-fun tp!1877578 () Bool)

(assert (=> b!6851050 (= e!4131201 (and tp!1877580 tp!1877578))))

(assert (=> b!6848921 (= tp!1876588 e!4131201)))

(assert (= (and b!6848921 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851049))

(assert (= (and b!6848921 ((_ is Concat!25520) (regTwo!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851050))

(assert (= (and b!6848921 ((_ is Star!16675) (regTwo!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851051))

(assert (= (and b!6848921 ((_ is Union!16675) (regTwo!33862 (regOne!33862 (regOne!33863 r!7292))))) b!6851052))

(declare-fun b!6851053 () Bool)

(declare-fun e!4131202 () Bool)

(assert (=> b!6851053 (= e!4131202 tp_is_empty!42603)))

(declare-fun b!6851055 () Bool)

(declare-fun tp!1877586 () Bool)

(assert (=> b!6851055 (= e!4131202 tp!1877586)))

(declare-fun b!6851056 () Bool)

(declare-fun tp!1877584 () Bool)

(declare-fun tp!1877587 () Bool)

(assert (=> b!6851056 (= e!4131202 (and tp!1877584 tp!1877587))))

(declare-fun b!6851054 () Bool)

(declare-fun tp!1877585 () Bool)

(declare-fun tp!1877583 () Bool)

(assert (=> b!6851054 (= e!4131202 (and tp!1877585 tp!1877583))))

(assert (=> b!6848930 (= tp!1876601 e!4131202)))

(assert (= (and b!6848930 ((_ is ElementMatch!16675) (reg!17004 (regOne!33863 (regOne!33862 r!7292))))) b!6851053))

(assert (= (and b!6848930 ((_ is Concat!25520) (reg!17004 (regOne!33863 (regOne!33862 r!7292))))) b!6851054))

(assert (= (and b!6848930 ((_ is Star!16675) (reg!17004 (regOne!33863 (regOne!33862 r!7292))))) b!6851055))

(assert (= (and b!6848930 ((_ is Union!16675) (reg!17004 (regOne!33863 (regOne!33862 r!7292))))) b!6851056))

(declare-fun b!6851057 () Bool)

(declare-fun e!4131203 () Bool)

(assert (=> b!6851057 (= e!4131203 tp_is_empty!42603)))

(declare-fun b!6851059 () Bool)

(declare-fun tp!1877591 () Bool)

(assert (=> b!6851059 (= e!4131203 tp!1877591)))

(declare-fun b!6851060 () Bool)

(declare-fun tp!1877589 () Bool)

(declare-fun tp!1877592 () Bool)

(assert (=> b!6851060 (= e!4131203 (and tp!1877589 tp!1877592))))

(declare-fun b!6851058 () Bool)

(declare-fun tp!1877590 () Bool)

(declare-fun tp!1877588 () Bool)

(assert (=> b!6851058 (= e!4131203 (and tp!1877590 tp!1877588))))

(assert (=> b!6848901 (= tp!1876563 e!4131203)))

(assert (= (and b!6848901 ((_ is ElementMatch!16675) (regOne!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851057))

(assert (= (and b!6848901 ((_ is Concat!25520) (regOne!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851058))

(assert (= (and b!6848901 ((_ is Star!16675) (regOne!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851059))

(assert (= (and b!6848901 ((_ is Union!16675) (regOne!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851060))

(declare-fun b!6851061 () Bool)

(declare-fun e!4131204 () Bool)

(assert (=> b!6851061 (= e!4131204 tp_is_empty!42603)))

(declare-fun b!6851063 () Bool)

(declare-fun tp!1877596 () Bool)

(assert (=> b!6851063 (= e!4131204 tp!1877596)))

(declare-fun b!6851064 () Bool)

(declare-fun tp!1877594 () Bool)

(declare-fun tp!1877597 () Bool)

(assert (=> b!6851064 (= e!4131204 (and tp!1877594 tp!1877597))))

(declare-fun b!6851062 () Bool)

(declare-fun tp!1877595 () Bool)

(declare-fun tp!1877593 () Bool)

(assert (=> b!6851062 (= e!4131204 (and tp!1877595 tp!1877593))))

(assert (=> b!6848901 (= tp!1876561 e!4131204)))

(assert (= (and b!6848901 ((_ is ElementMatch!16675) (regTwo!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851061))

(assert (= (and b!6848901 ((_ is Concat!25520) (regTwo!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851062))

(assert (= (and b!6848901 ((_ is Star!16675) (regTwo!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851063))

(assert (= (and b!6848901 ((_ is Union!16675) (regTwo!33862 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851064))

(declare-fun b!6851065 () Bool)

(declare-fun e!4131205 () Bool)

(assert (=> b!6851065 (= e!4131205 tp_is_empty!42603)))

(declare-fun b!6851067 () Bool)

(declare-fun tp!1877601 () Bool)

(assert (=> b!6851067 (= e!4131205 tp!1877601)))

(declare-fun b!6851068 () Bool)

(declare-fun tp!1877599 () Bool)

(declare-fun tp!1877602 () Bool)

(assert (=> b!6851068 (= e!4131205 (and tp!1877599 tp!1877602))))

(declare-fun b!6851066 () Bool)

(declare-fun tp!1877600 () Bool)

(declare-fun tp!1877598 () Bool)

(assert (=> b!6851066 (= e!4131205 (and tp!1877600 tp!1877598))))

(assert (=> b!6848923 (= tp!1876589 e!4131205)))

(assert (= (and b!6848923 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851065))

(assert (= (and b!6848923 ((_ is Concat!25520) (regOne!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851066))

(assert (= (and b!6848923 ((_ is Star!16675) (regOne!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851067))

(assert (= (and b!6848923 ((_ is Union!16675) (regOne!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851068))

(declare-fun b!6851069 () Bool)

(declare-fun e!4131206 () Bool)

(assert (=> b!6851069 (= e!4131206 tp_is_empty!42603)))

(declare-fun b!6851071 () Bool)

(declare-fun tp!1877606 () Bool)

(assert (=> b!6851071 (= e!4131206 tp!1877606)))

(declare-fun b!6851072 () Bool)

(declare-fun tp!1877604 () Bool)

(declare-fun tp!1877607 () Bool)

(assert (=> b!6851072 (= e!4131206 (and tp!1877604 tp!1877607))))

(declare-fun b!6851070 () Bool)

(declare-fun tp!1877605 () Bool)

(declare-fun tp!1877603 () Bool)

(assert (=> b!6851070 (= e!4131206 (and tp!1877605 tp!1877603))))

(assert (=> b!6848923 (= tp!1876592 e!4131206)))

(assert (= (and b!6848923 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851069))

(assert (= (and b!6848923 ((_ is Concat!25520) (regTwo!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851070))

(assert (= (and b!6848923 ((_ is Star!16675) (regTwo!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851071))

(assert (= (and b!6848923 ((_ is Union!16675) (regTwo!33863 (regOne!33862 (regOne!33863 r!7292))))) b!6851072))

(declare-fun b!6851073 () Bool)

(declare-fun e!4131207 () Bool)

(assert (=> b!6851073 (= e!4131207 tp_is_empty!42603)))

(declare-fun b!6851075 () Bool)

(declare-fun tp!1877611 () Bool)

(assert (=> b!6851075 (= e!4131207 tp!1877611)))

(declare-fun b!6851076 () Bool)

(declare-fun tp!1877609 () Bool)

(declare-fun tp!1877612 () Bool)

(assert (=> b!6851076 (= e!4131207 (and tp!1877609 tp!1877612))))

(declare-fun b!6851074 () Bool)

(declare-fun tp!1877610 () Bool)

(declare-fun tp!1877608 () Bool)

(assert (=> b!6851074 (= e!4131207 (and tp!1877610 tp!1877608))))

(assert (=> b!6848826 (= tp!1876468 e!4131207)))

(assert (= (and b!6848826 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33863 (reg!17004 r!7292))))) b!6851073))

(assert (= (and b!6848826 ((_ is Concat!25520) (reg!17004 (regTwo!33863 (reg!17004 r!7292))))) b!6851074))

(assert (= (and b!6848826 ((_ is Star!16675) (reg!17004 (regTwo!33863 (reg!17004 r!7292))))) b!6851075))

(assert (= (and b!6848826 ((_ is Union!16675) (reg!17004 (regTwo!33863 (reg!17004 r!7292))))) b!6851076))

(declare-fun b!6851077 () Bool)

(declare-fun e!4131208 () Bool)

(assert (=> b!6851077 (= e!4131208 tp_is_empty!42603)))

(declare-fun b!6851079 () Bool)

(declare-fun tp!1877616 () Bool)

(assert (=> b!6851079 (= e!4131208 tp!1877616)))

(declare-fun b!6851080 () Bool)

(declare-fun tp!1877614 () Bool)

(declare-fun tp!1877617 () Bool)

(assert (=> b!6851080 (= e!4131208 (and tp!1877614 tp!1877617))))

(declare-fun b!6851078 () Bool)

(declare-fun tp!1877615 () Bool)

(declare-fun tp!1877613 () Bool)

(assert (=> b!6851078 (= e!4131208 (and tp!1877615 tp!1877613))))

(assert (=> b!6848835 (= tp!1876476 e!4131208)))

(assert (= (and b!6848835 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851077))

(assert (= (and b!6848835 ((_ is Concat!25520) (regOne!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851078))

(assert (= (and b!6848835 ((_ is Star!16675) (regOne!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851079))

(assert (= (and b!6848835 ((_ is Union!16675) (regOne!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851080))

(declare-fun b!6851081 () Bool)

(declare-fun e!4131209 () Bool)

(assert (=> b!6851081 (= e!4131209 tp_is_empty!42603)))

(declare-fun b!6851083 () Bool)

(declare-fun tp!1877621 () Bool)

(assert (=> b!6851083 (= e!4131209 tp!1877621)))

(declare-fun b!6851084 () Bool)

(declare-fun tp!1877619 () Bool)

(declare-fun tp!1877622 () Bool)

(assert (=> b!6851084 (= e!4131209 (and tp!1877619 tp!1877622))))

(declare-fun b!6851082 () Bool)

(declare-fun tp!1877620 () Bool)

(declare-fun tp!1877618 () Bool)

(assert (=> b!6851082 (= e!4131209 (and tp!1877620 tp!1877618))))

(assert (=> b!6848835 (= tp!1876479 e!4131209)))

(assert (= (and b!6848835 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851081))

(assert (= (and b!6848835 ((_ is Concat!25520) (regTwo!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851082))

(assert (= (and b!6848835 ((_ is Star!16675) (regTwo!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851083))

(assert (= (and b!6848835 ((_ is Union!16675) (regTwo!33863 (regOne!33862 (regOne!33862 r!7292))))) b!6851084))

(declare-fun b!6851085 () Bool)

(declare-fun e!4131210 () Bool)

(assert (=> b!6851085 (= e!4131210 tp_is_empty!42603)))

(declare-fun b!6851087 () Bool)

(declare-fun tp!1877626 () Bool)

(assert (=> b!6851087 (= e!4131210 tp!1877626)))

(declare-fun b!6851088 () Bool)

(declare-fun tp!1877624 () Bool)

(declare-fun tp!1877627 () Bool)

(assert (=> b!6851088 (= e!4131210 (and tp!1877624 tp!1877627))))

(declare-fun b!6851086 () Bool)

(declare-fun tp!1877625 () Bool)

(declare-fun tp!1877623 () Bool)

(assert (=> b!6851086 (= e!4131210 (and tp!1877625 tp!1877623))))

(assert (=> b!6848866 (= tp!1876519 e!4131210)))

(assert (= (and b!6848866 ((_ is ElementMatch!16675) (regOne!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851085))

(assert (= (and b!6848866 ((_ is Concat!25520) (regOne!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851086))

(assert (= (and b!6848866 ((_ is Star!16675) (regOne!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851087))

(assert (= (and b!6848866 ((_ is Union!16675) (regOne!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851088))

(declare-fun b!6851089 () Bool)

(declare-fun e!4131211 () Bool)

(assert (=> b!6851089 (= e!4131211 tp_is_empty!42603)))

(declare-fun b!6851091 () Bool)

(declare-fun tp!1877631 () Bool)

(assert (=> b!6851091 (= e!4131211 tp!1877631)))

(declare-fun b!6851092 () Bool)

(declare-fun tp!1877629 () Bool)

(declare-fun tp!1877632 () Bool)

(assert (=> b!6851092 (= e!4131211 (and tp!1877629 tp!1877632))))

(declare-fun b!6851090 () Bool)

(declare-fun tp!1877630 () Bool)

(declare-fun tp!1877628 () Bool)

(assert (=> b!6851090 (= e!4131211 (and tp!1877630 tp!1877628))))

(assert (=> b!6848866 (= tp!1876517 e!4131211)))

(assert (= (and b!6848866 ((_ is ElementMatch!16675) (regTwo!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851089))

(assert (= (and b!6848866 ((_ is Concat!25520) (regTwo!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851090))

(assert (= (and b!6848866 ((_ is Star!16675) (regTwo!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851091))

(assert (= (and b!6848866 ((_ is Union!16675) (regTwo!33862 (reg!17004 (regTwo!33863 r!7292))))) b!6851092))

(declare-fun b!6851093 () Bool)

(declare-fun e!4131212 () Bool)

(assert (=> b!6851093 (= e!4131212 tp_is_empty!42603)))

(declare-fun b!6851095 () Bool)

(declare-fun tp!1877636 () Bool)

(assert (=> b!6851095 (= e!4131212 tp!1877636)))

(declare-fun b!6851096 () Bool)

(declare-fun tp!1877634 () Bool)

(declare-fun tp!1877637 () Bool)

(assert (=> b!6851096 (= e!4131212 (and tp!1877634 tp!1877637))))

(declare-fun b!6851094 () Bool)

(declare-fun tp!1877635 () Bool)

(declare-fun tp!1877633 () Bool)

(assert (=> b!6851094 (= e!4131212 (and tp!1877635 tp!1877633))))

(assert (=> b!6848842 (= tp!1876488 e!4131212)))

(assert (= (and b!6848842 ((_ is ElementMatch!16675) (reg!17004 (reg!17004 (reg!17004 r!7292))))) b!6851093))

(assert (= (and b!6848842 ((_ is Concat!25520) (reg!17004 (reg!17004 (reg!17004 r!7292))))) b!6851094))

(assert (= (and b!6848842 ((_ is Star!16675) (reg!17004 (reg!17004 (reg!17004 r!7292))))) b!6851095))

(assert (= (and b!6848842 ((_ is Union!16675) (reg!17004 (reg!17004 (reg!17004 r!7292))))) b!6851096))

(declare-fun b!6851097 () Bool)

(declare-fun e!4131213 () Bool)

(assert (=> b!6851097 (= e!4131213 tp_is_empty!42603)))

(declare-fun b!6851099 () Bool)

(declare-fun tp!1877641 () Bool)

(assert (=> b!6851099 (= e!4131213 tp!1877641)))

(declare-fun b!6851100 () Bool)

(declare-fun tp!1877639 () Bool)

(declare-fun tp!1877642 () Bool)

(assert (=> b!6851100 (= e!4131213 (and tp!1877639 tp!1877642))))

(declare-fun b!6851098 () Bool)

(declare-fun tp!1877640 () Bool)

(declare-fun tp!1877638 () Bool)

(assert (=> b!6851098 (= e!4131213 (and tp!1877640 tp!1877638))))

(assert (=> b!6848851 (= tp!1876496 e!4131213)))

(assert (= (and b!6848851 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851097))

(assert (= (and b!6848851 ((_ is Concat!25520) (regOne!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851098))

(assert (= (and b!6848851 ((_ is Star!16675) (regOne!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851099))

(assert (= (and b!6848851 ((_ is Union!16675) (regOne!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851100))

(declare-fun b!6851101 () Bool)

(declare-fun e!4131214 () Bool)

(assert (=> b!6851101 (= e!4131214 tp_is_empty!42603)))

(declare-fun b!6851103 () Bool)

(declare-fun tp!1877646 () Bool)

(assert (=> b!6851103 (= e!4131214 tp!1877646)))

(declare-fun b!6851104 () Bool)

(declare-fun tp!1877644 () Bool)

(declare-fun tp!1877647 () Bool)

(assert (=> b!6851104 (= e!4131214 (and tp!1877644 tp!1877647))))

(declare-fun b!6851102 () Bool)

(declare-fun tp!1877645 () Bool)

(declare-fun tp!1877643 () Bool)

(assert (=> b!6851102 (= e!4131214 (and tp!1877645 tp!1877643))))

(assert (=> b!6848851 (= tp!1876499 e!4131214)))

(assert (= (and b!6848851 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851101))

(assert (= (and b!6848851 ((_ is Concat!25520) (regTwo!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851102))

(assert (= (and b!6848851 ((_ is Star!16675) (regTwo!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851103))

(assert (= (and b!6848851 ((_ is Union!16675) (regTwo!33863 (regTwo!33862 (reg!17004 r!7292))))) b!6851104))

(declare-fun b!6851105 () Bool)

(declare-fun e!4131215 () Bool)

(assert (=> b!6851105 (= e!4131215 tp_is_empty!42603)))

(declare-fun b!6851107 () Bool)

(declare-fun tp!1877651 () Bool)

(assert (=> b!6851107 (= e!4131215 tp!1877651)))

(declare-fun b!6851108 () Bool)

(declare-fun tp!1877649 () Bool)

(declare-fun tp!1877652 () Bool)

(assert (=> b!6851108 (= e!4131215 (and tp!1877649 tp!1877652))))

(declare-fun b!6851106 () Bool)

(declare-fun tp!1877650 () Bool)

(declare-fun tp!1877648 () Bool)

(assert (=> b!6851106 (= e!4131215 (and tp!1877650 tp!1877648))))

(assert (=> b!6848833 (= tp!1876477 e!4131215)))

(assert (= (and b!6848833 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851105))

(assert (= (and b!6848833 ((_ is Concat!25520) (regOne!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851106))

(assert (= (and b!6848833 ((_ is Star!16675) (regOne!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851107))

(assert (= (and b!6848833 ((_ is Union!16675) (regOne!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851108))

(declare-fun b!6851109 () Bool)

(declare-fun e!4131216 () Bool)

(assert (=> b!6851109 (= e!4131216 tp_is_empty!42603)))

(declare-fun b!6851111 () Bool)

(declare-fun tp!1877656 () Bool)

(assert (=> b!6851111 (= e!4131216 tp!1877656)))

(declare-fun b!6851112 () Bool)

(declare-fun tp!1877654 () Bool)

(declare-fun tp!1877657 () Bool)

(assert (=> b!6851112 (= e!4131216 (and tp!1877654 tp!1877657))))

(declare-fun b!6851110 () Bool)

(declare-fun tp!1877655 () Bool)

(declare-fun tp!1877653 () Bool)

(assert (=> b!6851110 (= e!4131216 (and tp!1877655 tp!1877653))))

(assert (=> b!6848833 (= tp!1876475 e!4131216)))

(assert (= (and b!6848833 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851109))

(assert (= (and b!6848833 ((_ is Concat!25520) (regTwo!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851110))

(assert (= (and b!6848833 ((_ is Star!16675) (regTwo!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851111))

(assert (= (and b!6848833 ((_ is Union!16675) (regTwo!33862 (regOne!33862 (regOne!33862 r!7292))))) b!6851112))

(declare-fun b!6851113 () Bool)

(declare-fun e!4131217 () Bool)

(assert (=> b!6851113 (= e!4131217 tp_is_empty!42603)))

(declare-fun b!6851115 () Bool)

(declare-fun tp!1877661 () Bool)

(assert (=> b!6851115 (= e!4131217 tp!1877661)))

(declare-fun b!6851116 () Bool)

(declare-fun tp!1877659 () Bool)

(declare-fun tp!1877662 () Bool)

(assert (=> b!6851116 (= e!4131217 (and tp!1877659 tp!1877662))))

(declare-fun b!6851114 () Bool)

(declare-fun tp!1877660 () Bool)

(declare-fun tp!1877658 () Bool)

(assert (=> b!6851114 (= e!4131217 (and tp!1877660 tp!1877658))))

(assert (=> b!6848883 (= tp!1876537 e!4131217)))

(assert (= (and b!6848883 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851113))

(assert (= (and b!6848883 ((_ is Concat!25520) (regOne!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851114))

(assert (= (and b!6848883 ((_ is Star!16675) (regOne!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851115))

(assert (= (and b!6848883 ((_ is Union!16675) (regOne!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851116))

(declare-fun b!6851117 () Bool)

(declare-fun e!4131218 () Bool)

(assert (=> b!6851117 (= e!4131218 tp_is_empty!42603)))

(declare-fun b!6851119 () Bool)

(declare-fun tp!1877666 () Bool)

(assert (=> b!6851119 (= e!4131218 tp!1877666)))

(declare-fun b!6851120 () Bool)

(declare-fun tp!1877664 () Bool)

(declare-fun tp!1877667 () Bool)

(assert (=> b!6851120 (= e!4131218 (and tp!1877664 tp!1877667))))

(declare-fun b!6851118 () Bool)

(declare-fun tp!1877665 () Bool)

(declare-fun tp!1877663 () Bool)

(assert (=> b!6851118 (= e!4131218 (and tp!1877665 tp!1877663))))

(assert (=> b!6848883 (= tp!1876540 e!4131218)))

(assert (= (and b!6848883 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851117))

(assert (= (and b!6848883 ((_ is Concat!25520) (regTwo!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851118))

(assert (= (and b!6848883 ((_ is Star!16675) (regTwo!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851119))

(assert (= (and b!6848883 ((_ is Union!16675) (regTwo!33863 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851120))

(declare-fun b!6851121 () Bool)

(declare-fun e!4131219 () Bool)

(assert (=> b!6851121 (= e!4131219 tp_is_empty!42603)))

(declare-fun b!6851123 () Bool)

(declare-fun tp!1877671 () Bool)

(assert (=> b!6851123 (= e!4131219 tp!1877671)))

(declare-fun b!6851124 () Bool)

(declare-fun tp!1877669 () Bool)

(declare-fun tp!1877672 () Bool)

(assert (=> b!6851124 (= e!4131219 (and tp!1877669 tp!1877672))))

(declare-fun b!6851122 () Bool)

(declare-fun tp!1877670 () Bool)

(declare-fun tp!1877668 () Bool)

(assert (=> b!6851122 (= e!4131219 (and tp!1877670 tp!1877668))))

(assert (=> b!6848868 (= tp!1876518 e!4131219)))

(assert (= (and b!6848868 ((_ is ElementMatch!16675) (regOne!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851121))

(assert (= (and b!6848868 ((_ is Concat!25520) (regOne!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851122))

(assert (= (and b!6848868 ((_ is Star!16675) (regOne!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851123))

(assert (= (and b!6848868 ((_ is Union!16675) (regOne!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851124))

(declare-fun b!6851125 () Bool)

(declare-fun e!4131220 () Bool)

(assert (=> b!6851125 (= e!4131220 tp_is_empty!42603)))

(declare-fun b!6851127 () Bool)

(declare-fun tp!1877676 () Bool)

(assert (=> b!6851127 (= e!4131220 tp!1877676)))

(declare-fun b!6851128 () Bool)

(declare-fun tp!1877674 () Bool)

(declare-fun tp!1877677 () Bool)

(assert (=> b!6851128 (= e!4131220 (and tp!1877674 tp!1877677))))

(declare-fun b!6851126 () Bool)

(declare-fun tp!1877675 () Bool)

(declare-fun tp!1877673 () Bool)

(assert (=> b!6851126 (= e!4131220 (and tp!1877675 tp!1877673))))

(assert (=> b!6848868 (= tp!1876521 e!4131220)))

(assert (= (and b!6848868 ((_ is ElementMatch!16675) (regTwo!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851125))

(assert (= (and b!6848868 ((_ is Concat!25520) (regTwo!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851126))

(assert (= (and b!6848868 ((_ is Star!16675) (regTwo!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851127))

(assert (= (and b!6848868 ((_ is Union!16675) (regTwo!33863 (reg!17004 (regTwo!33863 r!7292))))) b!6851128))

(declare-fun b!6851129 () Bool)

(declare-fun e!4131221 () Bool)

(assert (=> b!6851129 (= e!4131221 tp_is_empty!42603)))

(declare-fun b!6851131 () Bool)

(declare-fun tp!1877681 () Bool)

(assert (=> b!6851131 (= e!4131221 tp!1877681)))

(declare-fun b!6851132 () Bool)

(declare-fun tp!1877679 () Bool)

(declare-fun tp!1877682 () Bool)

(assert (=> b!6851132 (= e!4131221 (and tp!1877679 tp!1877682))))

(declare-fun b!6851130 () Bool)

(declare-fun tp!1877680 () Bool)

(declare-fun tp!1877678 () Bool)

(assert (=> b!6851130 (= e!4131221 (and tp!1877680 tp!1877678))))

(assert (=> b!6848873 (= tp!1876527 e!4131221)))

(assert (= (and b!6848873 ((_ is ElementMatch!16675) (reg!17004 (reg!17004 (regTwo!33862 r!7292))))) b!6851129))

(assert (= (and b!6848873 ((_ is Concat!25520) (reg!17004 (reg!17004 (regTwo!33862 r!7292))))) b!6851130))

(assert (= (and b!6848873 ((_ is Star!16675) (reg!17004 (reg!17004 (regTwo!33862 r!7292))))) b!6851131))

(assert (= (and b!6848873 ((_ is Union!16675) (reg!17004 (reg!17004 (regTwo!33862 r!7292))))) b!6851132))

(declare-fun b!6851133 () Bool)

(declare-fun e!4131222 () Bool)

(assert (=> b!6851133 (= e!4131222 tp_is_empty!42603)))

(declare-fun b!6851135 () Bool)

(declare-fun tp!1877686 () Bool)

(assert (=> b!6851135 (= e!4131222 tp!1877686)))

(declare-fun b!6851136 () Bool)

(declare-fun tp!1877684 () Bool)

(declare-fun tp!1877687 () Bool)

(assert (=> b!6851136 (= e!4131222 (and tp!1877684 tp!1877687))))

(declare-fun b!6851134 () Bool)

(declare-fun tp!1877685 () Bool)

(declare-fun tp!1877683 () Bool)

(assert (=> b!6851134 (= e!4131222 (and tp!1877685 tp!1877683))))

(assert (=> b!6848919 (= tp!1876584 e!4131222)))

(assert (= (and b!6848919 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851133))

(assert (= (and b!6848919 ((_ is Concat!25520) (regOne!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851134))

(assert (= (and b!6848919 ((_ is Star!16675) (regOne!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851135))

(assert (= (and b!6848919 ((_ is Union!16675) (regOne!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851136))

(declare-fun b!6851137 () Bool)

(declare-fun e!4131223 () Bool)

(assert (=> b!6851137 (= e!4131223 tp_is_empty!42603)))

(declare-fun b!6851139 () Bool)

(declare-fun tp!1877691 () Bool)

(assert (=> b!6851139 (= e!4131223 tp!1877691)))

(declare-fun b!6851140 () Bool)

(declare-fun tp!1877689 () Bool)

(declare-fun tp!1877692 () Bool)

(assert (=> b!6851140 (= e!4131223 (and tp!1877689 tp!1877692))))

(declare-fun b!6851138 () Bool)

(declare-fun tp!1877690 () Bool)

(declare-fun tp!1877688 () Bool)

(assert (=> b!6851138 (= e!4131223 (and tp!1877690 tp!1877688))))

(assert (=> b!6848919 (= tp!1876587 e!4131223)))

(assert (= (and b!6848919 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851137))

(assert (= (and b!6848919 ((_ is Concat!25520) (regTwo!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851138))

(assert (= (and b!6848919 ((_ is Star!16675) (regTwo!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851139))

(assert (= (and b!6848919 ((_ is Union!16675) (regTwo!33863 (regTwo!33863 (regOne!33863 r!7292))))) b!6851140))

(declare-fun b!6851141 () Bool)

(declare-fun e!4131224 () Bool)

(assert (=> b!6851141 (= e!4131224 tp_is_empty!42603)))

(declare-fun b!6851143 () Bool)

(declare-fun tp!1877696 () Bool)

(assert (=> b!6851143 (= e!4131224 tp!1877696)))

(declare-fun b!6851144 () Bool)

(declare-fun tp!1877694 () Bool)

(declare-fun tp!1877697 () Bool)

(assert (=> b!6851144 (= e!4131224 (and tp!1877694 tp!1877697))))

(declare-fun b!6851142 () Bool)

(declare-fun tp!1877695 () Bool)

(declare-fun tp!1877693 () Bool)

(assert (=> b!6851142 (= e!4131224 (and tp!1877695 tp!1877693))))

(assert (=> b!6848858 (= tp!1876508 e!4131224)))

(assert (= (and b!6848858 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))))) b!6851141))

(assert (= (and b!6848858 ((_ is Concat!25520) (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))))) b!6851142))

(assert (= (and b!6848858 ((_ is Star!16675) (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))))) b!6851143))

(assert (= (and b!6848858 ((_ is Union!16675) (reg!17004 (regTwo!33863 (regTwo!33863 r!7292))))) b!6851144))

(declare-fun b!6851145 () Bool)

(declare-fun e!4131225 () Bool)

(assert (=> b!6851145 (= e!4131225 tp_is_empty!42603)))

(declare-fun b!6851147 () Bool)

(declare-fun tp!1877701 () Bool)

(assert (=> b!6851147 (= e!4131225 tp!1877701)))

(declare-fun b!6851148 () Bool)

(declare-fun tp!1877699 () Bool)

(declare-fun tp!1877702 () Bool)

(assert (=> b!6851148 (= e!4131225 (and tp!1877699 tp!1877702))))

(declare-fun b!6851146 () Bool)

(declare-fun tp!1877700 () Bool)

(declare-fun tp!1877698 () Bool)

(assert (=> b!6851146 (= e!4131225 (and tp!1877700 tp!1877698))))

(assert (=> b!6848906 (= tp!1876569 e!4131225)))

(assert (= (and b!6848906 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 setElem!47087)))) b!6851145))

(assert (= (and b!6848906 ((_ is Concat!25520) (h!72648 (exprs!6559 setElem!47087)))) b!6851146))

(assert (= (and b!6848906 ((_ is Star!16675) (h!72648 (exprs!6559 setElem!47087)))) b!6851147))

(assert (= (and b!6848906 ((_ is Union!16675) (h!72648 (exprs!6559 setElem!47087)))) b!6851148))

(declare-fun b!6851149 () Bool)

(declare-fun e!4131226 () Bool)

(declare-fun tp!1877703 () Bool)

(declare-fun tp!1877704 () Bool)

(assert (=> b!6851149 (= e!4131226 (and tp!1877703 tp!1877704))))

(assert (=> b!6848906 (= tp!1876570 e!4131226)))

(assert (= (and b!6848906 ((_ is Cons!66200) (t!380067 (exprs!6559 setElem!47087)))) b!6851149))

(declare-fun b!6851151 () Bool)

(declare-fun e!4131228 () Bool)

(declare-fun tp!1877705 () Bool)

(assert (=> b!6851151 (= e!4131228 tp!1877705)))

(declare-fun e!4131227 () Bool)

(declare-fun tp!1877706 () Bool)

(declare-fun b!6851150 () Bool)

(assert (=> b!6851150 (= e!4131227 (and (inv!84934 (h!72649 (t!380068 res!2795710))) e!4131228 tp!1877706))))

(assert (=> b!6848817 (= tp!1876458 e!4131227)))

(assert (= b!6851150 b!6851151))

(assert (= (and b!6848817 ((_ is Cons!66201) (t!380068 res!2795710))) b!6851150))

(declare-fun m!7589590 () Bool)

(assert (=> b!6851150 m!7589590))

(declare-fun b!6851152 () Bool)

(declare-fun e!4131229 () Bool)

(assert (=> b!6851152 (= e!4131229 tp_is_empty!42603)))

(declare-fun b!6851154 () Bool)

(declare-fun tp!1877710 () Bool)

(assert (=> b!6851154 (= e!4131229 tp!1877710)))

(declare-fun b!6851155 () Bool)

(declare-fun tp!1877708 () Bool)

(declare-fun tp!1877711 () Bool)

(assert (=> b!6851155 (= e!4131229 (and tp!1877708 tp!1877711))))

(declare-fun b!6851153 () Bool)

(declare-fun tp!1877709 () Bool)

(declare-fun tp!1877707 () Bool)

(assert (=> b!6851153 (= e!4131229 (and tp!1877709 tp!1877707))))

(assert (=> b!6848910 (= tp!1876576 e!4131229)))

(assert (= (and b!6848910 ((_ is ElementMatch!16675) (reg!17004 (reg!17004 (regOne!33863 r!7292))))) b!6851152))

(assert (= (and b!6848910 ((_ is Concat!25520) (reg!17004 (reg!17004 (regOne!33863 r!7292))))) b!6851153))

(assert (= (and b!6848910 ((_ is Star!16675) (reg!17004 (reg!17004 (regOne!33863 r!7292))))) b!6851154))

(assert (= (and b!6848910 ((_ is Union!16675) (reg!17004 (reg!17004 (regOne!33863 r!7292))))) b!6851155))

(declare-fun b!6851156 () Bool)

(declare-fun e!4131230 () Bool)

(assert (=> b!6851156 (= e!4131230 tp_is_empty!42603)))

(declare-fun b!6851158 () Bool)

(declare-fun tp!1877715 () Bool)

(assert (=> b!6851158 (= e!4131230 tp!1877715)))

(declare-fun b!6851159 () Bool)

(declare-fun tp!1877713 () Bool)

(declare-fun tp!1877716 () Bool)

(assert (=> b!6851159 (= e!4131230 (and tp!1877713 tp!1877716))))

(declare-fun b!6851157 () Bool)

(declare-fun tp!1877714 () Bool)

(declare-fun tp!1877712 () Bool)

(assert (=> b!6851157 (= e!4131230 (and tp!1877714 tp!1877712))))

(assert (=> b!6848890 (= tp!1876549 e!4131230)))

(assert (= (and b!6848890 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851156))

(assert (= (and b!6848890 ((_ is Concat!25520) (reg!17004 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851157))

(assert (= (and b!6848890 ((_ is Star!16675) (reg!17004 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851158))

(assert (= (and b!6848890 ((_ is Union!16675) (reg!17004 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851159))

(declare-fun b!6851160 () Bool)

(declare-fun e!4131231 () Bool)

(assert (=> b!6851160 (= e!4131231 tp_is_empty!42603)))

(declare-fun b!6851162 () Bool)

(declare-fun tp!1877720 () Bool)

(assert (=> b!6851162 (= e!4131231 tp!1877720)))

(declare-fun b!6851163 () Bool)

(declare-fun tp!1877718 () Bool)

(declare-fun tp!1877721 () Bool)

(assert (=> b!6851163 (= e!4131231 (and tp!1877718 tp!1877721))))

(declare-fun b!6851161 () Bool)

(declare-fun tp!1877719 () Bool)

(declare-fun tp!1877717 () Bool)

(assert (=> b!6851161 (= e!4131231 (and tp!1877719 tp!1877717))))

(assert (=> b!6848849 (= tp!1876497 e!4131231)))

(assert (= (and b!6848849 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851160))

(assert (= (and b!6848849 ((_ is Concat!25520) (regOne!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851161))

(assert (= (and b!6848849 ((_ is Star!16675) (regOne!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851162))

(assert (= (and b!6848849 ((_ is Union!16675) (regOne!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851163))

(declare-fun b!6851164 () Bool)

(declare-fun e!4131232 () Bool)

(assert (=> b!6851164 (= e!4131232 tp_is_empty!42603)))

(declare-fun b!6851166 () Bool)

(declare-fun tp!1877725 () Bool)

(assert (=> b!6851166 (= e!4131232 tp!1877725)))

(declare-fun b!6851167 () Bool)

(declare-fun tp!1877723 () Bool)

(declare-fun tp!1877726 () Bool)

(assert (=> b!6851167 (= e!4131232 (and tp!1877723 tp!1877726))))

(declare-fun b!6851165 () Bool)

(declare-fun tp!1877724 () Bool)

(declare-fun tp!1877722 () Bool)

(assert (=> b!6851165 (= e!4131232 (and tp!1877724 tp!1877722))))

(assert (=> b!6848849 (= tp!1876495 e!4131232)))

(assert (= (and b!6848849 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851164))

(assert (= (and b!6848849 ((_ is Concat!25520) (regTwo!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851165))

(assert (= (and b!6848849 ((_ is Star!16675) (regTwo!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851166))

(assert (= (and b!6848849 ((_ is Union!16675) (regTwo!33862 (regTwo!33862 (reg!17004 r!7292))))) b!6851167))

(declare-fun b!6851168 () Bool)

(declare-fun e!4131233 () Bool)

(assert (=> b!6851168 (= e!4131233 tp_is_empty!42603)))

(declare-fun b!6851170 () Bool)

(declare-fun tp!1877730 () Bool)

(assert (=> b!6851170 (= e!4131233 tp!1877730)))

(declare-fun b!6851171 () Bool)

(declare-fun tp!1877728 () Bool)

(declare-fun tp!1877731 () Bool)

(assert (=> b!6851171 (= e!4131233 (and tp!1877728 tp!1877731))))

(declare-fun b!6851169 () Bool)

(declare-fun tp!1877729 () Bool)

(declare-fun tp!1877727 () Bool)

(assert (=> b!6851169 (= e!4131233 (and tp!1877729 tp!1877727))))

(assert (=> b!6848899 (= tp!1876557 e!4131233)))

(assert (= (and b!6848899 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851168))

(assert (= (and b!6848899 ((_ is Concat!25520) (regOne!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851169))

(assert (= (and b!6848899 ((_ is Star!16675) (regOne!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851170))

(assert (= (and b!6848899 ((_ is Union!16675) (regOne!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851171))

(declare-fun b!6851172 () Bool)

(declare-fun e!4131234 () Bool)

(assert (=> b!6851172 (= e!4131234 tp_is_empty!42603)))

(declare-fun b!6851174 () Bool)

(declare-fun tp!1877735 () Bool)

(assert (=> b!6851174 (= e!4131234 tp!1877735)))

(declare-fun b!6851175 () Bool)

(declare-fun tp!1877733 () Bool)

(declare-fun tp!1877736 () Bool)

(assert (=> b!6851175 (= e!4131234 (and tp!1877733 tp!1877736))))

(declare-fun b!6851173 () Bool)

(declare-fun tp!1877734 () Bool)

(declare-fun tp!1877732 () Bool)

(assert (=> b!6851173 (= e!4131234 (and tp!1877734 tp!1877732))))

(assert (=> b!6848899 (= tp!1876560 e!4131234)))

(assert (= (and b!6848899 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851172))

(assert (= (and b!6848899 ((_ is Concat!25520) (regTwo!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851173))

(assert (= (and b!6848899 ((_ is Star!16675) (regTwo!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851174))

(assert (= (and b!6848899 ((_ is Union!16675) (regTwo!33863 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851175))

(declare-fun b!6851176 () Bool)

(declare-fun e!4131235 () Bool)

(assert (=> b!6851176 (= e!4131235 tp_is_empty!42603)))

(declare-fun b!6851178 () Bool)

(declare-fun tp!1877740 () Bool)

(assert (=> b!6851178 (= e!4131235 tp!1877740)))

(declare-fun b!6851179 () Bool)

(declare-fun tp!1877738 () Bool)

(declare-fun tp!1877741 () Bool)

(assert (=> b!6851179 (= e!4131235 (and tp!1877738 tp!1877741))))

(declare-fun b!6851177 () Bool)

(declare-fun tp!1877739 () Bool)

(declare-fun tp!1877737 () Bool)

(assert (=> b!6851177 (= e!4131235 (and tp!1877739 tp!1877737))))

(assert (=> b!6848881 (= tp!1876538 e!4131235)))

(assert (= (and b!6848881 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851176))

(assert (= (and b!6848881 ((_ is Concat!25520) (regOne!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851177))

(assert (= (and b!6848881 ((_ is Star!16675) (regOne!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851178))

(assert (= (and b!6848881 ((_ is Union!16675) (regOne!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851179))

(declare-fun b!6851180 () Bool)

(declare-fun e!4131236 () Bool)

(assert (=> b!6851180 (= e!4131236 tp_is_empty!42603)))

(declare-fun b!6851182 () Bool)

(declare-fun tp!1877745 () Bool)

(assert (=> b!6851182 (= e!4131236 tp!1877745)))

(declare-fun b!6851183 () Bool)

(declare-fun tp!1877743 () Bool)

(declare-fun tp!1877746 () Bool)

(assert (=> b!6851183 (= e!4131236 (and tp!1877743 tp!1877746))))

(declare-fun b!6851181 () Bool)

(declare-fun tp!1877744 () Bool)

(declare-fun tp!1877742 () Bool)

(assert (=> b!6851181 (= e!4131236 (and tp!1877744 tp!1877742))))

(assert (=> b!6848881 (= tp!1876536 e!4131236)))

(assert (= (and b!6848881 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851180))

(assert (= (and b!6848881 ((_ is Concat!25520) (regTwo!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851181))

(assert (= (and b!6848881 ((_ is Star!16675) (regTwo!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851182))

(assert (= (and b!6848881 ((_ is Union!16675) (regTwo!33862 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851183))

(declare-fun b!6851184 () Bool)

(declare-fun e!4131237 () Bool)

(assert (=> b!6851184 (= e!4131237 tp_is_empty!42603)))

(declare-fun b!6851186 () Bool)

(declare-fun tp!1877750 () Bool)

(assert (=> b!6851186 (= e!4131237 tp!1877750)))

(declare-fun b!6851187 () Bool)

(declare-fun tp!1877748 () Bool)

(declare-fun tp!1877751 () Bool)

(assert (=> b!6851187 (= e!4131237 (and tp!1877748 tp!1877751))))

(declare-fun b!6851185 () Bool)

(declare-fun tp!1877749 () Bool)

(declare-fun tp!1877747 () Bool)

(assert (=> b!6851185 (= e!4131237 (and tp!1877749 tp!1877747))))

(assert (=> b!6848935 (= tp!1876604 e!4131237)))

(assert (= (and b!6848935 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851184))

(assert (= (and b!6848935 ((_ is Concat!25520) (regOne!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851185))

(assert (= (and b!6848935 ((_ is Star!16675) (regOne!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851186))

(assert (= (and b!6848935 ((_ is Union!16675) (regOne!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851187))

(declare-fun b!6851188 () Bool)

(declare-fun e!4131238 () Bool)

(assert (=> b!6851188 (= e!4131238 tp_is_empty!42603)))

(declare-fun b!6851190 () Bool)

(declare-fun tp!1877755 () Bool)

(assert (=> b!6851190 (= e!4131238 tp!1877755)))

(declare-fun b!6851191 () Bool)

(declare-fun tp!1877753 () Bool)

(declare-fun tp!1877756 () Bool)

(assert (=> b!6851191 (= e!4131238 (and tp!1877753 tp!1877756))))

(declare-fun b!6851189 () Bool)

(declare-fun tp!1877754 () Bool)

(declare-fun tp!1877752 () Bool)

(assert (=> b!6851189 (= e!4131238 (and tp!1877754 tp!1877752))))

(assert (=> b!6848935 (= tp!1876607 e!4131238)))

(assert (= (and b!6848935 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851188))

(assert (= (and b!6848935 ((_ is Concat!25520) (regTwo!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851189))

(assert (= (and b!6848935 ((_ is Star!16675) (regTwo!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851190))

(assert (= (and b!6848935 ((_ is Union!16675) (regTwo!33863 (regTwo!33863 (regOne!33862 r!7292))))) b!6851191))

(declare-fun b!6851192 () Bool)

(declare-fun e!4131239 () Bool)

(assert (=> b!6851192 (= e!4131239 tp_is_empty!42603)))

(declare-fun b!6851194 () Bool)

(declare-fun tp!1877760 () Bool)

(assert (=> b!6851194 (= e!4131239 tp!1877760)))

(declare-fun b!6851195 () Bool)

(declare-fun tp!1877758 () Bool)

(declare-fun tp!1877761 () Bool)

(assert (=> b!6851195 (= e!4131239 (and tp!1877758 tp!1877761))))

(declare-fun b!6851193 () Bool)

(declare-fun tp!1877759 () Bool)

(declare-fun tp!1877757 () Bool)

(assert (=> b!6851193 (= e!4131239 (and tp!1877759 tp!1877757))))

(assert (=> b!6848917 (= tp!1876585 e!4131239)))

(assert (= (and b!6848917 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851192))

(assert (= (and b!6848917 ((_ is Concat!25520) (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851193))

(assert (= (and b!6848917 ((_ is Star!16675) (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851194))

(assert (= (and b!6848917 ((_ is Union!16675) (regOne!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851195))

(declare-fun b!6851196 () Bool)

(declare-fun e!4131240 () Bool)

(assert (=> b!6851196 (= e!4131240 tp_is_empty!42603)))

(declare-fun b!6851198 () Bool)

(declare-fun tp!1877765 () Bool)

(assert (=> b!6851198 (= e!4131240 tp!1877765)))

(declare-fun b!6851199 () Bool)

(declare-fun tp!1877763 () Bool)

(declare-fun tp!1877766 () Bool)

(assert (=> b!6851199 (= e!4131240 (and tp!1877763 tp!1877766))))

(declare-fun b!6851197 () Bool)

(declare-fun tp!1877764 () Bool)

(declare-fun tp!1877762 () Bool)

(assert (=> b!6851197 (= e!4131240 (and tp!1877764 tp!1877762))))

(assert (=> b!6848917 (= tp!1876583 e!4131240)))

(assert (= (and b!6848917 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851196))

(assert (= (and b!6848917 ((_ is Concat!25520) (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851197))

(assert (= (and b!6848917 ((_ is Star!16675) (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851198))

(assert (= (and b!6848917 ((_ is Union!16675) (regTwo!33862 (regTwo!33863 (regOne!33863 r!7292))))) b!6851199))

(declare-fun b!6851200 () Bool)

(declare-fun e!4131241 () Bool)

(assert (=> b!6851200 (= e!4131241 tp_is_empty!42603)))

(declare-fun b!6851202 () Bool)

(declare-fun tp!1877770 () Bool)

(assert (=> b!6851202 (= e!4131241 tp!1877770)))

(declare-fun b!6851203 () Bool)

(declare-fun tp!1877768 () Bool)

(declare-fun tp!1877771 () Bool)

(assert (=> b!6851203 (= e!4131241 (and tp!1877768 tp!1877771))))

(declare-fun b!6851201 () Bool)

(declare-fun tp!1877769 () Bool)

(declare-fun tp!1877767 () Bool)

(assert (=> b!6851201 (= e!4131241 (and tp!1877769 tp!1877767))))

(assert (=> b!6848926 (= tp!1876596 e!4131241)))

(assert (= (and b!6848926 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33862 (regOne!33863 r!7292))))) b!6851200))

(assert (= (and b!6848926 ((_ is Concat!25520) (reg!17004 (regTwo!33862 (regOne!33863 r!7292))))) b!6851201))

(assert (= (and b!6848926 ((_ is Star!16675) (reg!17004 (regTwo!33862 (regOne!33863 r!7292))))) b!6851202))

(assert (= (and b!6848926 ((_ is Union!16675) (reg!17004 (regTwo!33862 (regOne!33863 r!7292))))) b!6851203))

(declare-fun b!6851204 () Bool)

(declare-fun e!4131242 () Bool)

(assert (=> b!6851204 (= e!4131242 tp_is_empty!42603)))

(declare-fun b!6851206 () Bool)

(declare-fun tp!1877775 () Bool)

(assert (=> b!6851206 (= e!4131242 tp!1877775)))

(declare-fun b!6851207 () Bool)

(declare-fun tp!1877773 () Bool)

(declare-fun tp!1877776 () Bool)

(assert (=> b!6851207 (= e!4131242 (and tp!1877773 tp!1877776))))

(declare-fun b!6851205 () Bool)

(declare-fun tp!1877774 () Bool)

(declare-fun tp!1877772 () Bool)

(assert (=> b!6851205 (= e!4131242 (and tp!1877774 tp!1877772))))

(assert (=> b!6848897 (= tp!1876558 e!4131242)))

(assert (= (and b!6848897 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851204))

(assert (= (and b!6848897 ((_ is Concat!25520) (regOne!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851205))

(assert (= (and b!6848897 ((_ is Star!16675) (regOne!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851206))

(assert (= (and b!6848897 ((_ is Union!16675) (regOne!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851207))

(declare-fun b!6851208 () Bool)

(declare-fun e!4131243 () Bool)

(assert (=> b!6851208 (= e!4131243 tp_is_empty!42603)))

(declare-fun b!6851210 () Bool)

(declare-fun tp!1877780 () Bool)

(assert (=> b!6851210 (= e!4131243 tp!1877780)))

(declare-fun b!6851211 () Bool)

(declare-fun tp!1877778 () Bool)

(declare-fun tp!1877781 () Bool)

(assert (=> b!6851211 (= e!4131243 (and tp!1877778 tp!1877781))))

(declare-fun b!6851209 () Bool)

(declare-fun tp!1877779 () Bool)

(declare-fun tp!1877777 () Bool)

(assert (=> b!6851209 (= e!4131243 (and tp!1877779 tp!1877777))))

(assert (=> b!6848897 (= tp!1876556 e!4131243)))

(assert (= (and b!6848897 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851208))

(assert (= (and b!6848897 ((_ is Concat!25520) (regTwo!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851209))

(assert (= (and b!6848897 ((_ is Star!16675) (regTwo!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851210))

(assert (= (and b!6848897 ((_ is Union!16675) (regTwo!33862 (regTwo!33862 (regTwo!33862 r!7292))))) b!6851211))

(declare-fun b!6851212 () Bool)

(declare-fun e!4131244 () Bool)

(assert (=> b!6851212 (= e!4131244 tp_is_empty!42603)))

(declare-fun b!6851214 () Bool)

(declare-fun tp!1877785 () Bool)

(assert (=> b!6851214 (= e!4131244 tp!1877785)))

(declare-fun b!6851215 () Bool)

(declare-fun tp!1877783 () Bool)

(declare-fun tp!1877786 () Bool)

(assert (=> b!6851215 (= e!4131244 (and tp!1877783 tp!1877786))))

(declare-fun b!6851213 () Bool)

(declare-fun tp!1877784 () Bool)

(declare-fun tp!1877782 () Bool)

(assert (=> b!6851213 (= e!4131244 (and tp!1877784 tp!1877782))))

(assert (=> b!6848864 (= tp!1876515 e!4131244)))

(assert (= (and b!6848864 ((_ is ElementMatch!16675) (h!72648 (t!380067 (exprs!6559 setElem!47081))))) b!6851212))

(assert (= (and b!6848864 ((_ is Concat!25520) (h!72648 (t!380067 (exprs!6559 setElem!47081))))) b!6851213))

(assert (= (and b!6848864 ((_ is Star!16675) (h!72648 (t!380067 (exprs!6559 setElem!47081))))) b!6851214))

(assert (= (and b!6848864 ((_ is Union!16675) (h!72648 (t!380067 (exprs!6559 setElem!47081))))) b!6851215))

(declare-fun b!6851216 () Bool)

(declare-fun e!4131245 () Bool)

(declare-fun tp!1877787 () Bool)

(declare-fun tp!1877788 () Bool)

(assert (=> b!6851216 (= e!4131245 (and tp!1877787 tp!1877788))))

(assert (=> b!6848864 (= tp!1876516 e!4131245)))

(assert (= (and b!6848864 ((_ is Cons!66200) (t!380067 (t!380067 (exprs!6559 setElem!47081))))) b!6851216))

(declare-fun b!6851217 () Bool)

(declare-fun e!4131246 () Bool)

(assert (=> b!6851217 (= e!4131246 tp_is_empty!42603)))

(declare-fun b!6851219 () Bool)

(declare-fun tp!1877792 () Bool)

(assert (=> b!6851219 (= e!4131246 tp!1877792)))

(declare-fun b!6851220 () Bool)

(declare-fun tp!1877790 () Bool)

(declare-fun tp!1877793 () Bool)

(assert (=> b!6851220 (= e!4131246 (and tp!1877790 tp!1877793))))

(declare-fun b!6851218 () Bool)

(declare-fun tp!1877791 () Bool)

(declare-fun tp!1877789 () Bool)

(assert (=> b!6851218 (= e!4131246 (and tp!1877791 tp!1877789))))

(assert (=> b!6848933 (= tp!1876605 e!4131246)))

(assert (= (and b!6848933 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851217))

(assert (= (and b!6848933 ((_ is Concat!25520) (regOne!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851218))

(assert (= (and b!6848933 ((_ is Star!16675) (regOne!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851219))

(assert (= (and b!6848933 ((_ is Union!16675) (regOne!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851220))

(declare-fun b!6851221 () Bool)

(declare-fun e!4131247 () Bool)

(assert (=> b!6851221 (= e!4131247 tp_is_empty!42603)))

(declare-fun b!6851223 () Bool)

(declare-fun tp!1877797 () Bool)

(assert (=> b!6851223 (= e!4131247 tp!1877797)))

(declare-fun b!6851224 () Bool)

(declare-fun tp!1877795 () Bool)

(declare-fun tp!1877798 () Bool)

(assert (=> b!6851224 (= e!4131247 (and tp!1877795 tp!1877798))))

(declare-fun b!6851222 () Bool)

(declare-fun tp!1877796 () Bool)

(declare-fun tp!1877794 () Bool)

(assert (=> b!6851222 (= e!4131247 (and tp!1877796 tp!1877794))))

(assert (=> b!6848933 (= tp!1876603 e!4131247)))

(assert (= (and b!6848933 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851221))

(assert (= (and b!6848933 ((_ is Concat!25520) (regTwo!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851222))

(assert (= (and b!6848933 ((_ is Star!16675) (regTwo!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851223))

(assert (= (and b!6848933 ((_ is Union!16675) (regTwo!33862 (regTwo!33863 (regOne!33862 r!7292))))) b!6851224))

(declare-fun b!6851225 () Bool)

(declare-fun e!4131248 () Bool)

(assert (=> b!6851225 (= e!4131248 tp_is_empty!42603)))

(declare-fun b!6851227 () Bool)

(declare-fun tp!1877802 () Bool)

(assert (=> b!6851227 (= e!4131248 tp!1877802)))

(declare-fun b!6851228 () Bool)

(declare-fun tp!1877800 () Bool)

(declare-fun tp!1877803 () Bool)

(assert (=> b!6851228 (= e!4131248 (and tp!1877800 tp!1877803))))

(declare-fun b!6851226 () Bool)

(declare-fun tp!1877801 () Bool)

(declare-fun tp!1877799 () Bool)

(assert (=> b!6851226 (= e!4131248 (and tp!1877801 tp!1877799))))

(assert (=> b!6848822 (= tp!1876463 e!4131248)))

(assert (= (and b!6848822 ((_ is ElementMatch!16675) (reg!17004 (regOne!33863 (reg!17004 r!7292))))) b!6851225))

(assert (= (and b!6848822 ((_ is Concat!25520) (reg!17004 (regOne!33863 (reg!17004 r!7292))))) b!6851226))

(assert (= (and b!6848822 ((_ is Star!16675) (reg!17004 (regOne!33863 (reg!17004 r!7292))))) b!6851227))

(assert (= (and b!6848822 ((_ is Union!16675) (reg!17004 (regOne!33863 (reg!17004 r!7292))))) b!6851228))

(declare-fun b!6851229 () Bool)

(declare-fun e!4131249 () Bool)

(assert (=> b!6851229 (= e!4131249 tp_is_empty!42603)))

(declare-fun b!6851231 () Bool)

(declare-fun tp!1877807 () Bool)

(assert (=> b!6851231 (= e!4131249 tp!1877807)))

(declare-fun b!6851232 () Bool)

(declare-fun tp!1877805 () Bool)

(declare-fun tp!1877808 () Bool)

(assert (=> b!6851232 (= e!4131249 (and tp!1877805 tp!1877808))))

(declare-fun b!6851230 () Bool)

(declare-fun tp!1877806 () Bool)

(declare-fun tp!1877804 () Bool)

(assert (=> b!6851230 (= e!4131249 (and tp!1877806 tp!1877804))))

(assert (=> b!6848831 (= tp!1876471 e!4131249)))

(assert (= (and b!6848831 ((_ is ElementMatch!16675) (regOne!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851229))

(assert (= (and b!6848831 ((_ is Concat!25520) (regOne!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851230))

(assert (= (and b!6848831 ((_ is Star!16675) (regOne!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851231))

(assert (= (and b!6848831 ((_ is Union!16675) (regOne!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851232))

(declare-fun b!6851233 () Bool)

(declare-fun e!4131250 () Bool)

(assert (=> b!6851233 (= e!4131250 tp_is_empty!42603)))

(declare-fun b!6851235 () Bool)

(declare-fun tp!1877812 () Bool)

(assert (=> b!6851235 (= e!4131250 tp!1877812)))

(declare-fun b!6851236 () Bool)

(declare-fun tp!1877810 () Bool)

(declare-fun tp!1877813 () Bool)

(assert (=> b!6851236 (= e!4131250 (and tp!1877810 tp!1877813))))

(declare-fun b!6851234 () Bool)

(declare-fun tp!1877811 () Bool)

(declare-fun tp!1877809 () Bool)

(assert (=> b!6851234 (= e!4131250 (and tp!1877811 tp!1877809))))

(assert (=> b!6848831 (= tp!1876474 e!4131250)))

(assert (= (and b!6848831 ((_ is ElementMatch!16675) (regTwo!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851233))

(assert (= (and b!6848831 ((_ is Concat!25520) (regTwo!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851234))

(assert (= (and b!6848831 ((_ is Star!16675) (regTwo!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851235))

(assert (= (and b!6848831 ((_ is Union!16675) (regTwo!33863 (reg!17004 (regOne!33862 r!7292))))) b!6851236))

(declare-fun b!6851237 () Bool)

(declare-fun e!4131251 () Bool)

(declare-fun tp!1877814 () Bool)

(assert (=> b!6851237 (= e!4131251 (and tp_is_empty!42603 tp!1877814))))

(assert (=> b!6848905 (= tp!1876568 e!4131251)))

(assert (= (and b!6848905 ((_ is Cons!66202) (t!380069 (t!380069 (t!380069 s!2326))))) b!6851237))

(declare-fun b!6851238 () Bool)

(declare-fun e!4131252 () Bool)

(assert (=> b!6851238 (= e!4131252 tp_is_empty!42603)))

(declare-fun b!6851240 () Bool)

(declare-fun tp!1877818 () Bool)

(assert (=> b!6851240 (= e!4131252 tp!1877818)))

(declare-fun b!6851241 () Bool)

(declare-fun tp!1877816 () Bool)

(declare-fun tp!1877819 () Bool)

(assert (=> b!6851241 (= e!4131252 (and tp!1877816 tp!1877819))))

(declare-fun b!6851239 () Bool)

(declare-fun tp!1877817 () Bool)

(declare-fun tp!1877815 () Bool)

(assert (=> b!6851239 (= e!4131252 (and tp!1877817 tp!1877815))))

(assert (=> b!6848877 (= tp!1876533 e!4131252)))

(assert (= (and b!6848877 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851238))

(assert (= (and b!6848877 ((_ is Concat!25520) (regOne!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851239))

(assert (= (and b!6848877 ((_ is Star!16675) (regOne!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851240))

(assert (= (and b!6848877 ((_ is Union!16675) (regOne!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851241))

(declare-fun b!6851242 () Bool)

(declare-fun e!4131253 () Bool)

(assert (=> b!6851242 (= e!4131253 tp_is_empty!42603)))

(declare-fun b!6851244 () Bool)

(declare-fun tp!1877823 () Bool)

(assert (=> b!6851244 (= e!4131253 tp!1877823)))

(declare-fun b!6851245 () Bool)

(declare-fun tp!1877821 () Bool)

(declare-fun tp!1877824 () Bool)

(assert (=> b!6851245 (= e!4131253 (and tp!1877821 tp!1877824))))

(declare-fun b!6851243 () Bool)

(declare-fun tp!1877822 () Bool)

(declare-fun tp!1877820 () Bool)

(assert (=> b!6851243 (= e!4131253 (and tp!1877822 tp!1877820))))

(assert (=> b!6848877 (= tp!1876531 e!4131253)))

(assert (= (and b!6848877 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851242))

(assert (= (and b!6848877 ((_ is Concat!25520) (regTwo!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851243))

(assert (= (and b!6848877 ((_ is Star!16675) (regTwo!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851244))

(assert (= (and b!6848877 ((_ is Union!16675) (regTwo!33862 (regOne!33862 (regTwo!33863 r!7292))))) b!6851245))

(declare-fun b!6851246 () Bool)

(declare-fun e!4131254 () Bool)

(assert (=> b!6851246 (= e!4131254 tp_is_empty!42603)))

(declare-fun b!6851248 () Bool)

(declare-fun tp!1877828 () Bool)

(assert (=> b!6851248 (= e!4131254 tp!1877828)))

(declare-fun b!6851249 () Bool)

(declare-fun tp!1877826 () Bool)

(declare-fun tp!1877829 () Bool)

(assert (=> b!6851249 (= e!4131254 (and tp!1877826 tp!1877829))))

(declare-fun b!6851247 () Bool)

(declare-fun tp!1877827 () Bool)

(declare-fun tp!1877825 () Bool)

(assert (=> b!6851247 (= e!4131254 (and tp!1877827 tp!1877825))))

(assert (=> b!6848838 (= tp!1876483 e!4131254)))

(assert (= (and b!6848838 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33862 (regOne!33862 r!7292))))) b!6851246))

(assert (= (and b!6848838 ((_ is Concat!25520) (reg!17004 (regTwo!33862 (regOne!33862 r!7292))))) b!6851247))

(assert (= (and b!6848838 ((_ is Star!16675) (reg!17004 (regTwo!33862 (regOne!33862 r!7292))))) b!6851248))

(assert (= (and b!6848838 ((_ is Union!16675) (reg!17004 (regTwo!33862 (regOne!33862 r!7292))))) b!6851249))

(declare-fun b!6851250 () Bool)

(declare-fun e!4131255 () Bool)

(assert (=> b!6851250 (= e!4131255 tp_is_empty!42603)))

(declare-fun b!6851252 () Bool)

(declare-fun tp!1877833 () Bool)

(assert (=> b!6851252 (= e!4131255 tp!1877833)))

(declare-fun b!6851253 () Bool)

(declare-fun tp!1877831 () Bool)

(declare-fun tp!1877834 () Bool)

(assert (=> b!6851253 (= e!4131255 (and tp!1877831 tp!1877834))))

(declare-fun b!6851251 () Bool)

(declare-fun tp!1877832 () Bool)

(declare-fun tp!1877830 () Bool)

(assert (=> b!6851251 (= e!4131255 (and tp!1877832 tp!1877830))))

(assert (=> b!6848847 (= tp!1876491 e!4131255)))

(assert (= (and b!6848847 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851250))

(assert (= (and b!6848847 ((_ is Concat!25520) (regOne!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851251))

(assert (= (and b!6848847 ((_ is Star!16675) (regOne!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851252))

(assert (= (and b!6848847 ((_ is Union!16675) (regOne!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851253))

(declare-fun b!6851254 () Bool)

(declare-fun e!4131256 () Bool)

(assert (=> b!6851254 (= e!4131256 tp_is_empty!42603)))

(declare-fun b!6851256 () Bool)

(declare-fun tp!1877838 () Bool)

(assert (=> b!6851256 (= e!4131256 tp!1877838)))

(declare-fun b!6851257 () Bool)

(declare-fun tp!1877836 () Bool)

(declare-fun tp!1877839 () Bool)

(assert (=> b!6851257 (= e!4131256 (and tp!1877836 tp!1877839))))

(declare-fun b!6851255 () Bool)

(declare-fun tp!1877837 () Bool)

(declare-fun tp!1877835 () Bool)

(assert (=> b!6851255 (= e!4131256 (and tp!1877837 tp!1877835))))

(assert (=> b!6848847 (= tp!1876494 e!4131256)))

(assert (= (and b!6848847 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851254))

(assert (= (and b!6848847 ((_ is Concat!25520) (regTwo!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851255))

(assert (= (and b!6848847 ((_ is Star!16675) (regTwo!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851256))

(assert (= (and b!6848847 ((_ is Union!16675) (regTwo!33863 (regOne!33862 (reg!17004 r!7292))))) b!6851257))

(declare-fun b!6851259 () Bool)

(declare-fun e!4131258 () Bool)

(declare-fun tp!1877840 () Bool)

(assert (=> b!6851259 (= e!4131258 tp!1877840)))

(declare-fun b!6851258 () Bool)

(declare-fun tp!1877841 () Bool)

(declare-fun e!4131257 () Bool)

(assert (=> b!6851258 (= e!4131257 (and (inv!84934 (h!72649 (t!380068 res!2795634))) e!4131258 tp!1877841))))

(assert (=> b!6848648 (= tp!1876456 e!4131257)))

(assert (= b!6851258 b!6851259))

(assert (= (and b!6848648 ((_ is Cons!66201) (t!380068 res!2795634))) b!6851258))

(declare-fun m!7589592 () Bool)

(assert (=> b!6851258 m!7589592))

(declare-fun b!6851260 () Bool)

(declare-fun e!4131259 () Bool)

(assert (=> b!6851260 (= e!4131259 tp_is_empty!42603)))

(declare-fun b!6851262 () Bool)

(declare-fun tp!1877845 () Bool)

(assert (=> b!6851262 (= e!4131259 tp!1877845)))

(declare-fun b!6851263 () Bool)

(declare-fun tp!1877843 () Bool)

(declare-fun tp!1877846 () Bool)

(assert (=> b!6851263 (= e!4131259 (and tp!1877843 tp!1877846))))

(declare-fun b!6851261 () Bool)

(declare-fun tp!1877844 () Bool)

(declare-fun tp!1877842 () Bool)

(assert (=> b!6851261 (= e!4131259 (and tp!1877844 tp!1877842))))

(assert (=> b!6848829 (= tp!1876472 e!4131259)))

(assert (= (and b!6848829 ((_ is ElementMatch!16675) (regOne!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851260))

(assert (= (and b!6848829 ((_ is Concat!25520) (regOne!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851261))

(assert (= (and b!6848829 ((_ is Star!16675) (regOne!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851262))

(assert (= (and b!6848829 ((_ is Union!16675) (regOne!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851263))

(declare-fun b!6851264 () Bool)

(declare-fun e!4131260 () Bool)

(assert (=> b!6851264 (= e!4131260 tp_is_empty!42603)))

(declare-fun b!6851266 () Bool)

(declare-fun tp!1877850 () Bool)

(assert (=> b!6851266 (= e!4131260 tp!1877850)))

(declare-fun b!6851267 () Bool)

(declare-fun tp!1877848 () Bool)

(declare-fun tp!1877851 () Bool)

(assert (=> b!6851267 (= e!4131260 (and tp!1877848 tp!1877851))))

(declare-fun b!6851265 () Bool)

(declare-fun tp!1877849 () Bool)

(declare-fun tp!1877847 () Bool)

(assert (=> b!6851265 (= e!4131260 (and tp!1877849 tp!1877847))))

(assert (=> b!6848829 (= tp!1876470 e!4131260)))

(assert (= (and b!6848829 ((_ is ElementMatch!16675) (regTwo!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851264))

(assert (= (and b!6848829 ((_ is Concat!25520) (regTwo!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851265))

(assert (= (and b!6848829 ((_ is Star!16675) (regTwo!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851266))

(assert (= (and b!6848829 ((_ is Union!16675) (regTwo!33862 (reg!17004 (regOne!33862 r!7292))))) b!6851267))

(declare-fun b!6851268 () Bool)

(declare-fun e!4131261 () Bool)

(assert (=> b!6851268 (= e!4131261 tp_is_empty!42603)))

(declare-fun b!6851270 () Bool)

(declare-fun tp!1877855 () Bool)

(assert (=> b!6851270 (= e!4131261 tp!1877855)))

(declare-fun b!6851271 () Bool)

(declare-fun tp!1877853 () Bool)

(declare-fun tp!1877856 () Bool)

(assert (=> b!6851271 (= e!4131261 (and tp!1877853 tp!1877856))))

(declare-fun b!6851269 () Bool)

(declare-fun tp!1877854 () Bool)

(declare-fun tp!1877852 () Bool)

(assert (=> b!6851269 (= e!4131261 (and tp!1877854 tp!1877852))))

(assert (=> b!6848879 (= tp!1876532 e!4131261)))

(assert (= (and b!6848879 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851268))

(assert (= (and b!6848879 ((_ is Concat!25520) (regOne!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851269))

(assert (= (and b!6848879 ((_ is Star!16675) (regOne!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851270))

(assert (= (and b!6848879 ((_ is Union!16675) (regOne!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851271))

(declare-fun b!6851272 () Bool)

(declare-fun e!4131262 () Bool)

(assert (=> b!6851272 (= e!4131262 tp_is_empty!42603)))

(declare-fun b!6851274 () Bool)

(declare-fun tp!1877860 () Bool)

(assert (=> b!6851274 (= e!4131262 tp!1877860)))

(declare-fun b!6851275 () Bool)

(declare-fun tp!1877858 () Bool)

(declare-fun tp!1877861 () Bool)

(assert (=> b!6851275 (= e!4131262 (and tp!1877858 tp!1877861))))

(declare-fun b!6851273 () Bool)

(declare-fun tp!1877859 () Bool)

(declare-fun tp!1877857 () Bool)

(assert (=> b!6851273 (= e!4131262 (and tp!1877859 tp!1877857))))

(assert (=> b!6848879 (= tp!1876535 e!4131262)))

(assert (= (and b!6848879 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851272))

(assert (= (and b!6848879 ((_ is Concat!25520) (regTwo!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851273))

(assert (= (and b!6848879 ((_ is Star!16675) (regTwo!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851274))

(assert (= (and b!6848879 ((_ is Union!16675) (regTwo!33863 (regOne!33862 (regTwo!33863 r!7292))))) b!6851275))

(declare-fun b!6851276 () Bool)

(declare-fun e!4131263 () Bool)

(assert (=> b!6851276 (= e!4131263 tp_is_empty!42603)))

(declare-fun b!6851278 () Bool)

(declare-fun tp!1877865 () Bool)

(assert (=> b!6851278 (= e!4131263 tp!1877865)))

(declare-fun b!6851279 () Bool)

(declare-fun tp!1877863 () Bool)

(declare-fun tp!1877866 () Bool)

(assert (=> b!6851279 (= e!4131263 (and tp!1877863 tp!1877866))))

(declare-fun b!6851277 () Bool)

(declare-fun tp!1877864 () Bool)

(declare-fun tp!1877862 () Bool)

(assert (=> b!6851277 (= e!4131263 (and tp!1877864 tp!1877862))))

(assert (=> b!6848893 (= tp!1876553 e!4131263)))

(assert (= (and b!6848893 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851276))

(assert (= (and b!6848893 ((_ is Concat!25520) (regOne!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851277))

(assert (= (and b!6848893 ((_ is Star!16675) (regOne!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851278))

(assert (= (and b!6848893 ((_ is Union!16675) (regOne!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851279))

(declare-fun b!6851280 () Bool)

(declare-fun e!4131264 () Bool)

(assert (=> b!6851280 (= e!4131264 tp_is_empty!42603)))

(declare-fun b!6851282 () Bool)

(declare-fun tp!1877870 () Bool)

(assert (=> b!6851282 (= e!4131264 tp!1877870)))

(declare-fun b!6851283 () Bool)

(declare-fun tp!1877868 () Bool)

(declare-fun tp!1877871 () Bool)

(assert (=> b!6851283 (= e!4131264 (and tp!1877868 tp!1877871))))

(declare-fun b!6851281 () Bool)

(declare-fun tp!1877869 () Bool)

(declare-fun tp!1877867 () Bool)

(assert (=> b!6851281 (= e!4131264 (and tp!1877869 tp!1877867))))

(assert (=> b!6848893 (= tp!1876551 e!4131264)))

(assert (= (and b!6848893 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851280))

(assert (= (and b!6848893 ((_ is Concat!25520) (regTwo!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851281))

(assert (= (and b!6848893 ((_ is Star!16675) (regTwo!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851282))

(assert (= (and b!6848893 ((_ is Union!16675) (regTwo!33862 (regOne!33862 (regTwo!33862 r!7292))))) b!6851283))

(declare-fun b!6851284 () Bool)

(declare-fun e!4131265 () Bool)

(assert (=> b!6851284 (= e!4131265 tp_is_empty!42603)))

(declare-fun b!6851286 () Bool)

(declare-fun tp!1877875 () Bool)

(assert (=> b!6851286 (= e!4131265 tp!1877875)))

(declare-fun b!6851287 () Bool)

(declare-fun tp!1877873 () Bool)

(declare-fun tp!1877876 () Bool)

(assert (=> b!6851287 (= e!4131265 (and tp!1877873 tp!1877876))))

(declare-fun b!6851285 () Bool)

(declare-fun tp!1877874 () Bool)

(declare-fun tp!1877872 () Bool)

(assert (=> b!6851285 (= e!4131265 (and tp!1877874 tp!1877872))))

(assert (=> b!6848915 (= tp!1876579 e!4131265)))

(assert (= (and b!6848915 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851284))

(assert (= (and b!6848915 ((_ is Concat!25520) (regOne!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851285))

(assert (= (and b!6848915 ((_ is Star!16675) (regOne!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851286))

(assert (= (and b!6848915 ((_ is Union!16675) (regOne!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851287))

(declare-fun b!6851288 () Bool)

(declare-fun e!4131266 () Bool)

(assert (=> b!6851288 (= e!4131266 tp_is_empty!42603)))

(declare-fun b!6851290 () Bool)

(declare-fun tp!1877880 () Bool)

(assert (=> b!6851290 (= e!4131266 tp!1877880)))

(declare-fun b!6851291 () Bool)

(declare-fun tp!1877878 () Bool)

(declare-fun tp!1877881 () Bool)

(assert (=> b!6851291 (= e!4131266 (and tp!1877878 tp!1877881))))

(declare-fun b!6851289 () Bool)

(declare-fun tp!1877879 () Bool)

(declare-fun tp!1877877 () Bool)

(assert (=> b!6851289 (= e!4131266 (and tp!1877879 tp!1877877))))

(assert (=> b!6848915 (= tp!1876582 e!4131266)))

(assert (= (and b!6848915 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851288))

(assert (= (and b!6848915 ((_ is Concat!25520) (regTwo!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851289))

(assert (= (and b!6848915 ((_ is Star!16675) (regTwo!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851290))

(assert (= (and b!6848915 ((_ is Union!16675) (regTwo!33863 (regOne!33863 (regOne!33863 r!7292))))) b!6851291))

(declare-fun b!6851292 () Bool)

(declare-fun e!4131267 () Bool)

(assert (=> b!6851292 (= e!4131267 tp_is_empty!42603)))

(declare-fun b!6851294 () Bool)

(declare-fun tp!1877885 () Bool)

(assert (=> b!6851294 (= e!4131267 tp!1877885)))

(declare-fun b!6851295 () Bool)

(declare-fun tp!1877883 () Bool)

(declare-fun tp!1877886 () Bool)

(assert (=> b!6851295 (= e!4131267 (and tp!1877883 tp!1877886))))

(declare-fun b!6851293 () Bool)

(declare-fun tp!1877884 () Bool)

(declare-fun tp!1877882 () Bool)

(assert (=> b!6851293 (= e!4131267 (and tp!1877884 tp!1877882))))

(assert (=> b!6848854 (= tp!1876503 e!4131267)))

(assert (= (and b!6848854 ((_ is ElementMatch!16675) (reg!17004 (regOne!33863 (regTwo!33863 r!7292))))) b!6851292))

(assert (= (and b!6848854 ((_ is Concat!25520) (reg!17004 (regOne!33863 (regTwo!33863 r!7292))))) b!6851293))

(assert (= (and b!6848854 ((_ is Star!16675) (reg!17004 (regOne!33863 (regTwo!33863 r!7292))))) b!6851294))

(assert (= (and b!6848854 ((_ is Union!16675) (reg!17004 (regOne!33863 (regTwo!33863 r!7292))))) b!6851295))

(declare-fun b!6851296 () Bool)

(declare-fun e!4131268 () Bool)

(assert (=> b!6851296 (= e!4131268 tp_is_empty!42603)))

(declare-fun b!6851298 () Bool)

(declare-fun tp!1877890 () Bool)

(assert (=> b!6851298 (= e!4131268 tp!1877890)))

(declare-fun b!6851299 () Bool)

(declare-fun tp!1877888 () Bool)

(declare-fun tp!1877891 () Bool)

(assert (=> b!6851299 (= e!4131268 (and tp!1877888 tp!1877891))))

(declare-fun b!6851297 () Bool)

(declare-fun tp!1877889 () Bool)

(declare-fun tp!1877887 () Bool)

(assert (=> b!6851297 (= e!4131268 (and tp!1877889 tp!1877887))))

(assert (=> b!6848863 (= tp!1876511 e!4131268)))

(assert (= (and b!6848863 ((_ is ElementMatch!16675) (regOne!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851296))

(assert (= (and b!6848863 ((_ is Concat!25520) (regOne!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851297))

(assert (= (and b!6848863 ((_ is Star!16675) (regOne!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851298))

(assert (= (and b!6848863 ((_ is Union!16675) (regOne!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851299))

(declare-fun b!6851300 () Bool)

(declare-fun e!4131269 () Bool)

(assert (=> b!6851300 (= e!4131269 tp_is_empty!42603)))

(declare-fun b!6851302 () Bool)

(declare-fun tp!1877895 () Bool)

(assert (=> b!6851302 (= e!4131269 tp!1877895)))

(declare-fun b!6851303 () Bool)

(declare-fun tp!1877893 () Bool)

(declare-fun tp!1877896 () Bool)

(assert (=> b!6851303 (= e!4131269 (and tp!1877893 tp!1877896))))

(declare-fun b!6851301 () Bool)

(declare-fun tp!1877894 () Bool)

(declare-fun tp!1877892 () Bool)

(assert (=> b!6851301 (= e!4131269 (and tp!1877894 tp!1877892))))

(assert (=> b!6848863 (= tp!1876514 e!4131269)))

(assert (= (and b!6848863 ((_ is ElementMatch!16675) (regTwo!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851300))

(assert (= (and b!6848863 ((_ is Concat!25520) (regTwo!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851301))

(assert (= (and b!6848863 ((_ is Star!16675) (regTwo!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851302))

(assert (= (and b!6848863 ((_ is Union!16675) (regTwo!33863 (h!72648 (exprs!6559 setElem!47081))))) b!6851303))

(declare-fun b!6851304 () Bool)

(declare-fun e!4131270 () Bool)

(assert (=> b!6851304 (= e!4131270 tp_is_empty!42603)))

(declare-fun b!6851306 () Bool)

(declare-fun tp!1877900 () Bool)

(assert (=> b!6851306 (= e!4131270 tp!1877900)))

(declare-fun b!6851307 () Bool)

(declare-fun tp!1877898 () Bool)

(declare-fun tp!1877901 () Bool)

(assert (=> b!6851307 (= e!4131270 (and tp!1877898 tp!1877901))))

(declare-fun b!6851305 () Bool)

(declare-fun tp!1877899 () Bool)

(declare-fun tp!1877897 () Bool)

(assert (=> b!6851305 (= e!4131270 (and tp!1877899 tp!1877897))))

(assert (=> b!6848886 (= tp!1876544 e!4131270)))

(assert (= (and b!6848886 ((_ is ElementMatch!16675) (reg!17004 (regOne!33863 (regTwo!33862 r!7292))))) b!6851304))

(assert (= (and b!6848886 ((_ is Concat!25520) (reg!17004 (regOne!33863 (regTwo!33862 r!7292))))) b!6851305))

(assert (= (and b!6848886 ((_ is Star!16675) (reg!17004 (regOne!33863 (regTwo!33862 r!7292))))) b!6851306))

(assert (= (and b!6848886 ((_ is Union!16675) (reg!17004 (regOne!33863 (regTwo!33862 r!7292))))) b!6851307))

(declare-fun b!6851308 () Bool)

(declare-fun e!4131271 () Bool)

(assert (=> b!6851308 (= e!4131271 tp_is_empty!42603)))

(declare-fun b!6851310 () Bool)

(declare-fun tp!1877905 () Bool)

(assert (=> b!6851310 (= e!4131271 tp!1877905)))

(declare-fun b!6851311 () Bool)

(declare-fun tp!1877903 () Bool)

(declare-fun tp!1877906 () Bool)

(assert (=> b!6851311 (= e!4131271 (and tp!1877903 tp!1877906))))

(declare-fun b!6851309 () Bool)

(declare-fun tp!1877904 () Bool)

(declare-fun tp!1877902 () Bool)

(assert (=> b!6851309 (= e!4131271 (and tp!1877904 tp!1877902))))

(assert (=> b!6848845 (= tp!1876492 e!4131271)))

(assert (= (and b!6848845 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851308))

(assert (= (and b!6848845 ((_ is Concat!25520) (regOne!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851309))

(assert (= (and b!6848845 ((_ is Star!16675) (regOne!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851310))

(assert (= (and b!6848845 ((_ is Union!16675) (regOne!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851311))

(declare-fun b!6851312 () Bool)

(declare-fun e!4131272 () Bool)

(assert (=> b!6851312 (= e!4131272 tp_is_empty!42603)))

(declare-fun b!6851314 () Bool)

(declare-fun tp!1877910 () Bool)

(assert (=> b!6851314 (= e!4131272 tp!1877910)))

(declare-fun b!6851315 () Bool)

(declare-fun tp!1877908 () Bool)

(declare-fun tp!1877911 () Bool)

(assert (=> b!6851315 (= e!4131272 (and tp!1877908 tp!1877911))))

(declare-fun b!6851313 () Bool)

(declare-fun tp!1877909 () Bool)

(declare-fun tp!1877907 () Bool)

(assert (=> b!6851313 (= e!4131272 (and tp!1877909 tp!1877907))))

(assert (=> b!6848845 (= tp!1876490 e!4131272)))

(assert (= (and b!6848845 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851312))

(assert (= (and b!6848845 ((_ is Concat!25520) (regTwo!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851313))

(assert (= (and b!6848845 ((_ is Star!16675) (regTwo!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851314))

(assert (= (and b!6848845 ((_ is Union!16675) (regTwo!33862 (regOne!33862 (reg!17004 r!7292))))) b!6851315))

(declare-fun b!6851316 () Bool)

(declare-fun e!4131273 () Bool)

(assert (=> b!6851316 (= e!4131273 tp_is_empty!42603)))

(declare-fun b!6851318 () Bool)

(declare-fun tp!1877915 () Bool)

(assert (=> b!6851318 (= e!4131273 tp!1877915)))

(declare-fun b!6851319 () Bool)

(declare-fun tp!1877913 () Bool)

(declare-fun tp!1877916 () Bool)

(assert (=> b!6851319 (= e!4131273 (and tp!1877913 tp!1877916))))

(declare-fun b!6851317 () Bool)

(declare-fun tp!1877914 () Bool)

(declare-fun tp!1877912 () Bool)

(assert (=> b!6851317 (= e!4131273 (and tp!1877914 tp!1877912))))

(assert (=> b!6848895 (= tp!1876552 e!4131273)))

(assert (= (and b!6848895 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851316))

(assert (= (and b!6848895 ((_ is Concat!25520) (regOne!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851317))

(assert (= (and b!6848895 ((_ is Star!16675) (regOne!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851318))

(assert (= (and b!6848895 ((_ is Union!16675) (regOne!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851319))

(declare-fun b!6851320 () Bool)

(declare-fun e!4131274 () Bool)

(assert (=> b!6851320 (= e!4131274 tp_is_empty!42603)))

(declare-fun b!6851322 () Bool)

(declare-fun tp!1877920 () Bool)

(assert (=> b!6851322 (= e!4131274 tp!1877920)))

(declare-fun b!6851323 () Bool)

(declare-fun tp!1877918 () Bool)

(declare-fun tp!1877921 () Bool)

(assert (=> b!6851323 (= e!4131274 (and tp!1877918 tp!1877921))))

(declare-fun b!6851321 () Bool)

(declare-fun tp!1877919 () Bool)

(declare-fun tp!1877917 () Bool)

(assert (=> b!6851321 (= e!4131274 (and tp!1877919 tp!1877917))))

(assert (=> b!6848895 (= tp!1876555 e!4131274)))

(assert (= (and b!6848895 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851320))

(assert (= (and b!6848895 ((_ is Concat!25520) (regTwo!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851321))

(assert (= (and b!6848895 ((_ is Star!16675) (regTwo!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851322))

(assert (= (and b!6848895 ((_ is Union!16675) (regTwo!33863 (regOne!33862 (regTwo!33862 r!7292))))) b!6851323))

(declare-fun b!6851324 () Bool)

(declare-fun e!4131275 () Bool)

(assert (=> b!6851324 (= e!4131275 tp_is_empty!42603)))

(declare-fun b!6851326 () Bool)

(declare-fun tp!1877925 () Bool)

(assert (=> b!6851326 (= e!4131275 tp!1877925)))

(declare-fun b!6851327 () Bool)

(declare-fun tp!1877923 () Bool)

(declare-fun tp!1877926 () Bool)

(assert (=> b!6851327 (= e!4131275 (and tp!1877923 tp!1877926))))

(declare-fun b!6851325 () Bool)

(declare-fun tp!1877924 () Bool)

(declare-fun tp!1877922 () Bool)

(assert (=> b!6851325 (= e!4131275 (and tp!1877924 tp!1877922))))

(assert (=> b!6848931 (= tp!1876599 e!4131275)))

(assert (= (and b!6848931 ((_ is ElementMatch!16675) (regOne!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851324))

(assert (= (and b!6848931 ((_ is Concat!25520) (regOne!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851325))

(assert (= (and b!6848931 ((_ is Star!16675) (regOne!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851326))

(assert (= (and b!6848931 ((_ is Union!16675) (regOne!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851327))

(declare-fun b!6851328 () Bool)

(declare-fun e!4131276 () Bool)

(assert (=> b!6851328 (= e!4131276 tp_is_empty!42603)))

(declare-fun b!6851330 () Bool)

(declare-fun tp!1877930 () Bool)

(assert (=> b!6851330 (= e!4131276 tp!1877930)))

(declare-fun b!6851331 () Bool)

(declare-fun tp!1877928 () Bool)

(declare-fun tp!1877931 () Bool)

(assert (=> b!6851331 (= e!4131276 (and tp!1877928 tp!1877931))))

(declare-fun b!6851329 () Bool)

(declare-fun tp!1877929 () Bool)

(declare-fun tp!1877927 () Bool)

(assert (=> b!6851329 (= e!4131276 (and tp!1877929 tp!1877927))))

(assert (=> b!6848931 (= tp!1876602 e!4131276)))

(assert (= (and b!6848931 ((_ is ElementMatch!16675) (regTwo!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851328))

(assert (= (and b!6848931 ((_ is Concat!25520) (regTwo!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851329))

(assert (= (and b!6848931 ((_ is Star!16675) (regTwo!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851330))

(assert (= (and b!6848931 ((_ is Union!16675) (regTwo!33863 (regOne!33863 (regOne!33862 r!7292))))) b!6851331))

(declare-fun b!6851333 () Bool)

(declare-fun e!4131278 () Bool)

(declare-fun tp!1877932 () Bool)

(assert (=> b!6851333 (= e!4131278 tp!1877932)))

(declare-fun tp!1877933 () Bool)

(declare-fun e!4131277 () Bool)

(declare-fun b!6851332 () Bool)

(assert (=> b!6851332 (= e!4131277 (and (inv!84934 (h!72649 (t!380068 (t!380068 (t!380068 zl!343))))) e!4131278 tp!1877933))))

(assert (=> b!6848869 (= tp!1876523 e!4131277)))

(assert (= b!6851332 b!6851333))

(assert (= (and b!6848869 ((_ is Cons!66201) (t!380068 (t!380068 (t!380068 zl!343))))) b!6851332))

(declare-fun m!7589594 () Bool)

(assert (=> b!6851332 m!7589594))

(declare-fun b!6851334 () Bool)

(declare-fun e!4131279 () Bool)

(assert (=> b!6851334 (= e!4131279 tp_is_empty!42603)))

(declare-fun b!6851336 () Bool)

(declare-fun tp!1877937 () Bool)

(assert (=> b!6851336 (= e!4131279 tp!1877937)))

(declare-fun b!6851337 () Bool)

(declare-fun tp!1877935 () Bool)

(declare-fun tp!1877938 () Bool)

(assert (=> b!6851337 (= e!4131279 (and tp!1877935 tp!1877938))))

(declare-fun b!6851335 () Bool)

(declare-fun tp!1877936 () Bool)

(declare-fun tp!1877934 () Bool)

(assert (=> b!6851335 (= e!4131279 (and tp!1877936 tp!1877934))))

(assert (=> b!6848913 (= tp!1876580 e!4131279)))

(assert (= (and b!6848913 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851334))

(assert (= (and b!6848913 ((_ is Concat!25520) (regOne!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851335))

(assert (= (and b!6848913 ((_ is Star!16675) (regOne!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851336))

(assert (= (and b!6848913 ((_ is Union!16675) (regOne!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851337))

(declare-fun b!6851338 () Bool)

(declare-fun e!4131280 () Bool)

(assert (=> b!6851338 (= e!4131280 tp_is_empty!42603)))

(declare-fun b!6851340 () Bool)

(declare-fun tp!1877942 () Bool)

(assert (=> b!6851340 (= e!4131280 tp!1877942)))

(declare-fun b!6851341 () Bool)

(declare-fun tp!1877940 () Bool)

(declare-fun tp!1877943 () Bool)

(assert (=> b!6851341 (= e!4131280 (and tp!1877940 tp!1877943))))

(declare-fun b!6851339 () Bool)

(declare-fun tp!1877941 () Bool)

(declare-fun tp!1877939 () Bool)

(assert (=> b!6851339 (= e!4131280 (and tp!1877941 tp!1877939))))

(assert (=> b!6848913 (= tp!1876578 e!4131280)))

(assert (= (and b!6848913 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851338))

(assert (= (and b!6848913 ((_ is Concat!25520) (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851339))

(assert (= (and b!6848913 ((_ is Star!16675) (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851340))

(assert (= (and b!6848913 ((_ is Union!16675) (regTwo!33862 (regOne!33863 (regOne!33863 r!7292))))) b!6851341))

(declare-fun b!6851342 () Bool)

(declare-fun e!4131281 () Bool)

(assert (=> b!6851342 (= e!4131281 tp_is_empty!42603)))

(declare-fun b!6851344 () Bool)

(declare-fun tp!1877947 () Bool)

(assert (=> b!6851344 (= e!4131281 tp!1877947)))

(declare-fun b!6851345 () Bool)

(declare-fun tp!1877945 () Bool)

(declare-fun tp!1877948 () Bool)

(assert (=> b!6851345 (= e!4131281 (and tp!1877945 tp!1877948))))

(declare-fun b!6851343 () Bool)

(declare-fun tp!1877946 () Bool)

(declare-fun tp!1877944 () Bool)

(assert (=> b!6851343 (= e!4131281 (and tp!1877946 tp!1877944))))

(assert (=> b!6848922 (= tp!1876591 e!4131281)))

(assert (= (and b!6848922 ((_ is ElementMatch!16675) (reg!17004 (regOne!33862 (regOne!33863 r!7292))))) b!6851342))

(assert (= (and b!6848922 ((_ is Concat!25520) (reg!17004 (regOne!33862 (regOne!33863 r!7292))))) b!6851343))

(assert (= (and b!6848922 ((_ is Star!16675) (reg!17004 (regOne!33862 (regOne!33863 r!7292))))) b!6851344))

(assert (= (and b!6848922 ((_ is Union!16675) (reg!17004 (regOne!33862 (regOne!33863 r!7292))))) b!6851345))

(declare-fun b!6851346 () Bool)

(declare-fun e!4131282 () Bool)

(assert (=> b!6851346 (= e!4131282 tp_is_empty!42603)))

(declare-fun b!6851348 () Bool)

(declare-fun tp!1877952 () Bool)

(assert (=> b!6851348 (= e!4131282 tp!1877952)))

(declare-fun b!6851349 () Bool)

(declare-fun tp!1877950 () Bool)

(declare-fun tp!1877953 () Bool)

(assert (=> b!6851349 (= e!4131282 (and tp!1877950 tp!1877953))))

(declare-fun b!6851347 () Bool)

(declare-fun tp!1877951 () Bool)

(declare-fun tp!1877949 () Bool)

(assert (=> b!6851347 (= e!4131282 (and tp!1877951 tp!1877949))))

(assert (=> b!6848902 (= tp!1876564 e!4131282)))

(assert (= (and b!6848902 ((_ is ElementMatch!16675) (reg!17004 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851346))

(assert (= (and b!6848902 ((_ is Concat!25520) (reg!17004 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851347))

(assert (= (and b!6848902 ((_ is Star!16675) (reg!17004 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851348))

(assert (= (and b!6848902 ((_ is Union!16675) (reg!17004 (h!72648 (exprs!6559 (h!72649 zl!343)))))) b!6851349))

(declare-fun b!6851350 () Bool)

(declare-fun e!4131283 () Bool)

(assert (=> b!6851350 (= e!4131283 tp_is_empty!42603)))

(declare-fun b!6851352 () Bool)

(declare-fun tp!1877957 () Bool)

(assert (=> b!6851352 (= e!4131283 tp!1877957)))

(declare-fun b!6851353 () Bool)

(declare-fun tp!1877955 () Bool)

(declare-fun tp!1877958 () Bool)

(assert (=> b!6851353 (= e!4131283 (and tp!1877955 tp!1877958))))

(declare-fun b!6851351 () Bool)

(declare-fun tp!1877956 () Bool)

(declare-fun tp!1877954 () Bool)

(assert (=> b!6851351 (= e!4131283 (and tp!1877956 tp!1877954))))

(assert (=> b!6848861 (= tp!1876512 e!4131283)))

(assert (= (and b!6848861 ((_ is ElementMatch!16675) (regOne!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851350))

(assert (= (and b!6848861 ((_ is Concat!25520) (regOne!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851351))

(assert (= (and b!6848861 ((_ is Star!16675) (regOne!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851352))

(assert (= (and b!6848861 ((_ is Union!16675) (regOne!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851353))

(declare-fun b!6851354 () Bool)

(declare-fun e!4131284 () Bool)

(assert (=> b!6851354 (= e!4131284 tp_is_empty!42603)))

(declare-fun b!6851356 () Bool)

(declare-fun tp!1877962 () Bool)

(assert (=> b!6851356 (= e!4131284 tp!1877962)))

(declare-fun b!6851357 () Bool)

(declare-fun tp!1877960 () Bool)

(declare-fun tp!1877963 () Bool)

(assert (=> b!6851357 (= e!4131284 (and tp!1877960 tp!1877963))))

(declare-fun b!6851355 () Bool)

(declare-fun tp!1877961 () Bool)

(declare-fun tp!1877959 () Bool)

(assert (=> b!6851355 (= e!4131284 (and tp!1877961 tp!1877959))))

(assert (=> b!6848861 (= tp!1876510 e!4131284)))

(assert (= (and b!6848861 ((_ is ElementMatch!16675) (regTwo!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851354))

(assert (= (and b!6848861 ((_ is Concat!25520) (regTwo!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851355))

(assert (= (and b!6848861 ((_ is Star!16675) (regTwo!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851356))

(assert (= (and b!6848861 ((_ is Union!16675) (regTwo!33862 (h!72648 (exprs!6559 setElem!47081))))) b!6851357))

(declare-fun condSetEmpty!47091 () Bool)

(assert (=> setNonEmpty!47089 (= condSetEmpty!47091 (= setRest!47089 ((as const (Array Context!12118 Bool)) false)))))

(declare-fun setRes!47091 () Bool)

(assert (=> setNonEmpty!47089 (= tp!1876571 setRes!47091)))

(declare-fun setIsEmpty!47091 () Bool)

(assert (=> setIsEmpty!47091 setRes!47091))

(declare-fun tp!1877964 () Bool)

(declare-fun setNonEmpty!47091 () Bool)

(declare-fun e!4131285 () Bool)

(declare-fun setElem!47091 () Context!12118)

(assert (=> setNonEmpty!47091 (= setRes!47091 (and tp!1877964 (inv!84934 setElem!47091) e!4131285))))

(declare-fun setRest!47091 () (InoxSet Context!12118))

(assert (=> setNonEmpty!47091 (= setRest!47089 ((_ map or) (store ((as const (Array Context!12118 Bool)) false) setElem!47091 true) setRest!47091))))

(declare-fun b!6851358 () Bool)

(declare-fun tp!1877965 () Bool)

(assert (=> b!6851358 (= e!4131285 tp!1877965)))

(assert (= (and setNonEmpty!47089 condSetEmpty!47091) setIsEmpty!47091))

(assert (= (and setNonEmpty!47089 (not condSetEmpty!47091)) setNonEmpty!47091))

(assert (= setNonEmpty!47091 b!6851358))

(declare-fun m!7589596 () Bool)

(assert (=> setNonEmpty!47091 m!7589596))

(declare-fun b!6851359 () Bool)

(declare-fun e!4131286 () Bool)

(assert (=> b!6851359 (= e!4131286 tp_is_empty!42603)))

(declare-fun b!6851361 () Bool)

(declare-fun tp!1877969 () Bool)

(assert (=> b!6851361 (= e!4131286 tp!1877969)))

(declare-fun b!6851362 () Bool)

(declare-fun tp!1877967 () Bool)

(declare-fun tp!1877970 () Bool)

(assert (=> b!6851362 (= e!4131286 (and tp!1877967 tp!1877970))))

(declare-fun b!6851360 () Bool)

(declare-fun tp!1877968 () Bool)

(declare-fun tp!1877966 () Bool)

(assert (=> b!6851360 (= e!4131286 (and tp!1877968 tp!1877966))))

(assert (=> b!6848825 (= tp!1876467 e!4131286)))

(assert (= (and b!6848825 ((_ is ElementMatch!16675) (regOne!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851359))

(assert (= (and b!6848825 ((_ is Concat!25520) (regOne!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851360))

(assert (= (and b!6848825 ((_ is Star!16675) (regOne!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851361))

(assert (= (and b!6848825 ((_ is Union!16675) (regOne!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851362))

(declare-fun b!6851363 () Bool)

(declare-fun e!4131287 () Bool)

(assert (=> b!6851363 (= e!4131287 tp_is_empty!42603)))

(declare-fun b!6851365 () Bool)

(declare-fun tp!1877974 () Bool)

(assert (=> b!6851365 (= e!4131287 tp!1877974)))

(declare-fun b!6851366 () Bool)

(declare-fun tp!1877972 () Bool)

(declare-fun tp!1877975 () Bool)

(assert (=> b!6851366 (= e!4131287 (and tp!1877972 tp!1877975))))

(declare-fun b!6851364 () Bool)

(declare-fun tp!1877973 () Bool)

(declare-fun tp!1877971 () Bool)

(assert (=> b!6851364 (= e!4131287 (and tp!1877973 tp!1877971))))

(assert (=> b!6848825 (= tp!1876465 e!4131287)))

(assert (= (and b!6848825 ((_ is ElementMatch!16675) (regTwo!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851363))

(assert (= (and b!6848825 ((_ is Concat!25520) (regTwo!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851364))

(assert (= (and b!6848825 ((_ is Star!16675) (regTwo!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851365))

(assert (= (and b!6848825 ((_ is Union!16675) (regTwo!33862 (regTwo!33863 (reg!17004 r!7292))))) b!6851366))

(declare-fun b!6851367 () Bool)

(declare-fun e!4131288 () Bool)

(assert (=> b!6851367 (= e!4131288 tp_is_empty!42603)))

(declare-fun b!6851369 () Bool)

(declare-fun tp!1877979 () Bool)

(assert (=> b!6851369 (= e!4131288 tp!1877979)))

(declare-fun b!6851370 () Bool)

(declare-fun tp!1877977 () Bool)

(declare-fun tp!1877980 () Bool)

(assert (=> b!6851370 (= e!4131288 (and tp!1877977 tp!1877980))))

(declare-fun b!6851368 () Bool)

(declare-fun tp!1877978 () Bool)

(declare-fun tp!1877976 () Bool)

(assert (=> b!6851368 (= e!4131288 (and tp!1877978 tp!1877976))))

(assert (=> b!6848875 (= tp!1876529 e!4131288)))

(assert (= (and b!6848875 ((_ is ElementMatch!16675) (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343)))))) b!6851367))

(assert (= (and b!6848875 ((_ is Concat!25520) (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343)))))) b!6851368))

(assert (= (and b!6848875 ((_ is Star!16675) (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343)))))) b!6851369))

(assert (= (and b!6848875 ((_ is Union!16675) (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343)))))) b!6851370))

(declare-fun b!6851371 () Bool)

(declare-fun e!4131289 () Bool)

(declare-fun tp!1877981 () Bool)

(declare-fun tp!1877982 () Bool)

(assert (=> b!6851371 (= e!4131289 (and tp!1877981 tp!1877982))))

(assert (=> b!6848875 (= tp!1876530 e!4131289)))

(assert (= (and b!6848875 ((_ is Cons!66200) (t!380067 (exprs!6559 (h!72649 (t!380068 zl!343)))))) b!6851371))

(declare-fun b!6851372 () Bool)

(declare-fun e!4131290 () Bool)

(assert (=> b!6851372 (= e!4131290 tp_is_empty!42603)))

(declare-fun b!6851374 () Bool)

(declare-fun tp!1877986 () Bool)

(assert (=> b!6851374 (= e!4131290 tp!1877986)))

(declare-fun b!6851375 () Bool)

(declare-fun tp!1877984 () Bool)

(declare-fun tp!1877987 () Bool)

(assert (=> b!6851375 (= e!4131290 (and tp!1877984 tp!1877987))))

(declare-fun b!6851373 () Bool)

(declare-fun tp!1877985 () Bool)

(declare-fun tp!1877983 () Bool)

(assert (=> b!6851373 (= e!4131290 (and tp!1877985 tp!1877983))))

(assert (=> b!6848929 (= tp!1876600 e!4131290)))

(assert (= (and b!6848929 ((_ is ElementMatch!16675) (regOne!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851372))

(assert (= (and b!6848929 ((_ is Concat!25520) (regOne!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851373))

(assert (= (and b!6848929 ((_ is Star!16675) (regOne!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851374))

(assert (= (and b!6848929 ((_ is Union!16675) (regOne!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851375))

(declare-fun b!6851376 () Bool)

(declare-fun e!4131291 () Bool)

(assert (=> b!6851376 (= e!4131291 tp_is_empty!42603)))

(declare-fun b!6851378 () Bool)

(declare-fun tp!1877991 () Bool)

(assert (=> b!6851378 (= e!4131291 tp!1877991)))

(declare-fun b!6851379 () Bool)

(declare-fun tp!1877989 () Bool)

(declare-fun tp!1877992 () Bool)

(assert (=> b!6851379 (= e!4131291 (and tp!1877989 tp!1877992))))

(declare-fun b!6851377 () Bool)

(declare-fun tp!1877990 () Bool)

(declare-fun tp!1877988 () Bool)

(assert (=> b!6851377 (= e!4131291 (and tp!1877990 tp!1877988))))

(assert (=> b!6848929 (= tp!1876598 e!4131291)))

(assert (= (and b!6848929 ((_ is ElementMatch!16675) (regTwo!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851376))

(assert (= (and b!6848929 ((_ is Concat!25520) (regTwo!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851377))

(assert (= (and b!6848929 ((_ is Star!16675) (regTwo!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851378))

(assert (= (and b!6848929 ((_ is Union!16675) (regTwo!33862 (regOne!33863 (regOne!33862 r!7292))))) b!6851379))

(declare-fun b!6851380 () Bool)

(declare-fun e!4131292 () Bool)

(assert (=> b!6851380 (= e!4131292 tp_is_empty!42603)))

(declare-fun b!6851382 () Bool)

(declare-fun tp!1877996 () Bool)

(assert (=> b!6851382 (= e!4131292 tp!1877996)))

(declare-fun b!6851383 () Bool)

(declare-fun tp!1877994 () Bool)

(declare-fun tp!1877997 () Bool)

(assert (=> b!6851383 (= e!4131292 (and tp!1877994 tp!1877997))))

(declare-fun b!6851381 () Bool)

(declare-fun tp!1877995 () Bool)

(declare-fun tp!1877993 () Bool)

(assert (=> b!6851381 (= e!4131292 (and tp!1877995 tp!1877993))))

(assert (=> b!6848827 (= tp!1876466 e!4131292)))

(assert (= (and b!6848827 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851380))

(assert (= (and b!6848827 ((_ is Concat!25520) (regOne!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851381))

(assert (= (and b!6848827 ((_ is Star!16675) (regOne!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851382))

(assert (= (and b!6848827 ((_ is Union!16675) (regOne!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851383))

(declare-fun b!6851384 () Bool)

(declare-fun e!4131293 () Bool)

(assert (=> b!6851384 (= e!4131293 tp_is_empty!42603)))

(declare-fun b!6851386 () Bool)

(declare-fun tp!1878001 () Bool)

(assert (=> b!6851386 (= e!4131293 tp!1878001)))

(declare-fun b!6851387 () Bool)

(declare-fun tp!1877999 () Bool)

(declare-fun tp!1878002 () Bool)

(assert (=> b!6851387 (= e!4131293 (and tp!1877999 tp!1878002))))

(declare-fun b!6851385 () Bool)

(declare-fun tp!1878000 () Bool)

(declare-fun tp!1877998 () Bool)

(assert (=> b!6851385 (= e!4131293 (and tp!1878000 tp!1877998))))

(assert (=> b!6848827 (= tp!1876469 e!4131293)))

(assert (= (and b!6848827 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851384))

(assert (= (and b!6848827 ((_ is Concat!25520) (regTwo!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851385))

(assert (= (and b!6848827 ((_ is Star!16675) (regTwo!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851386))

(assert (= (and b!6848827 ((_ is Union!16675) (regTwo!33863 (regTwo!33863 (reg!17004 r!7292))))) b!6851387))

(declare-fun b!6851388 () Bool)

(declare-fun e!4131294 () Bool)

(assert (=> b!6851388 (= e!4131294 tp_is_empty!42603)))

(declare-fun b!6851390 () Bool)

(declare-fun tp!1878006 () Bool)

(assert (=> b!6851390 (= e!4131294 tp!1878006)))

(declare-fun b!6851391 () Bool)

(declare-fun tp!1878004 () Bool)

(declare-fun tp!1878007 () Bool)

(assert (=> b!6851391 (= e!4131294 (and tp!1878004 tp!1878007))))

(declare-fun b!6851389 () Bool)

(declare-fun tp!1878005 () Bool)

(declare-fun tp!1878003 () Bool)

(assert (=> b!6851389 (= e!4131294 (and tp!1878005 tp!1878003))))

(assert (=> b!6848882 (= tp!1876539 e!4131294)))

(assert (= (and b!6848882 ((_ is ElementMatch!16675) (reg!17004 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851388))

(assert (= (and b!6848882 ((_ is Concat!25520) (reg!17004 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851389))

(assert (= (and b!6848882 ((_ is Star!16675) (reg!17004 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851390))

(assert (= (and b!6848882 ((_ is Union!16675) (reg!17004 (regTwo!33862 (regTwo!33863 r!7292))))) b!6851391))

(declare-fun b!6851392 () Bool)

(declare-fun e!4131295 () Bool)

(assert (=> b!6851392 (= e!4131295 tp_is_empty!42603)))

(declare-fun b!6851394 () Bool)

(declare-fun tp!1878011 () Bool)

(assert (=> b!6851394 (= e!4131295 tp!1878011)))

(declare-fun b!6851395 () Bool)

(declare-fun tp!1878009 () Bool)

(declare-fun tp!1878012 () Bool)

(assert (=> b!6851395 (= e!4131295 (and tp!1878009 tp!1878012))))

(declare-fun b!6851393 () Bool)

(declare-fun tp!1878010 () Bool)

(declare-fun tp!1878008 () Bool)

(assert (=> b!6851393 (= e!4131295 (and tp!1878010 tp!1878008))))

(assert (=> b!6848841 (= tp!1876487 e!4131295)))

(assert (= (and b!6848841 ((_ is ElementMatch!16675) (regOne!33862 (reg!17004 (reg!17004 r!7292))))) b!6851392))

(assert (= (and b!6848841 ((_ is Concat!25520) (regOne!33862 (reg!17004 (reg!17004 r!7292))))) b!6851393))

(assert (= (and b!6848841 ((_ is Star!16675) (regOne!33862 (reg!17004 (reg!17004 r!7292))))) b!6851394))

(assert (= (and b!6848841 ((_ is Union!16675) (regOne!33862 (reg!17004 (reg!17004 r!7292))))) b!6851395))

(declare-fun b!6851396 () Bool)

(declare-fun e!4131296 () Bool)

(assert (=> b!6851396 (= e!4131296 tp_is_empty!42603)))

(declare-fun b!6851398 () Bool)

(declare-fun tp!1878016 () Bool)

(assert (=> b!6851398 (= e!4131296 tp!1878016)))

(declare-fun b!6851399 () Bool)

(declare-fun tp!1878014 () Bool)

(declare-fun tp!1878017 () Bool)

(assert (=> b!6851399 (= e!4131296 (and tp!1878014 tp!1878017))))

(declare-fun b!6851397 () Bool)

(declare-fun tp!1878015 () Bool)

(declare-fun tp!1878013 () Bool)

(assert (=> b!6851397 (= e!4131296 (and tp!1878015 tp!1878013))))

(assert (=> b!6848841 (= tp!1876485 e!4131296)))

(assert (= (and b!6848841 ((_ is ElementMatch!16675) (regTwo!33862 (reg!17004 (reg!17004 r!7292))))) b!6851396))

(assert (= (and b!6848841 ((_ is Concat!25520) (regTwo!33862 (reg!17004 (reg!17004 r!7292))))) b!6851397))

(assert (= (and b!6848841 ((_ is Star!16675) (regTwo!33862 (reg!17004 (reg!17004 r!7292))))) b!6851398))

(assert (= (and b!6848841 ((_ is Union!16675) (regTwo!33862 (reg!17004 (reg!17004 r!7292))))) b!6851399))

(declare-fun b!6851400 () Bool)

(declare-fun e!4131297 () Bool)

(assert (=> b!6851400 (= e!4131297 tp_is_empty!42603)))

(declare-fun b!6851402 () Bool)

(declare-fun tp!1878021 () Bool)

(assert (=> b!6851402 (= e!4131297 tp!1878021)))

(declare-fun b!6851403 () Bool)

(declare-fun tp!1878019 () Bool)

(declare-fun tp!1878022 () Bool)

(assert (=> b!6851403 (= e!4131297 (and tp!1878019 tp!1878022))))

(declare-fun b!6851401 () Bool)

(declare-fun tp!1878020 () Bool)

(declare-fun tp!1878018 () Bool)

(assert (=> b!6851401 (= e!4131297 (and tp!1878020 tp!1878018))))

(assert (=> b!6848891 (= tp!1876547 e!4131297)))

(assert (= (and b!6848891 ((_ is ElementMatch!16675) (regOne!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851400))

(assert (= (and b!6848891 ((_ is Concat!25520) (regOne!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851401))

(assert (= (and b!6848891 ((_ is Star!16675) (regOne!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851402))

(assert (= (and b!6848891 ((_ is Union!16675) (regOne!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851403))

(declare-fun b!6851404 () Bool)

(declare-fun e!4131298 () Bool)

(assert (=> b!6851404 (= e!4131298 tp_is_empty!42603)))

(declare-fun b!6851406 () Bool)

(declare-fun tp!1878026 () Bool)

(assert (=> b!6851406 (= e!4131298 tp!1878026)))

(declare-fun b!6851407 () Bool)

(declare-fun tp!1878024 () Bool)

(declare-fun tp!1878027 () Bool)

(assert (=> b!6851407 (= e!4131298 (and tp!1878024 tp!1878027))))

(declare-fun b!6851405 () Bool)

(declare-fun tp!1878025 () Bool)

(declare-fun tp!1878023 () Bool)

(assert (=> b!6851405 (= e!4131298 (and tp!1878025 tp!1878023))))

(assert (=> b!6848891 (= tp!1876550 e!4131298)))

(assert (= (and b!6848891 ((_ is ElementMatch!16675) (regTwo!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851404))

(assert (= (and b!6848891 ((_ is Concat!25520) (regTwo!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851405))

(assert (= (and b!6848891 ((_ is Star!16675) (regTwo!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851406))

(assert (= (and b!6848891 ((_ is Union!16675) (regTwo!33863 (regTwo!33863 (regTwo!33862 r!7292))))) b!6851407))

(declare-fun b!6851408 () Bool)

(declare-fun e!4131299 () Bool)

(assert (=> b!6851408 (= e!4131299 tp_is_empty!42603)))

(declare-fun b!6851410 () Bool)

(declare-fun tp!1878031 () Bool)

(assert (=> b!6851410 (= e!4131299 tp!1878031)))

(declare-fun b!6851411 () Bool)

(declare-fun tp!1878029 () Bool)

(declare-fun tp!1878032 () Bool)

(assert (=> b!6851411 (= e!4131299 (and tp!1878029 tp!1878032))))

(declare-fun b!6851409 () Bool)

(declare-fun tp!1878030 () Bool)

(declare-fun tp!1878028 () Bool)

(assert (=> b!6851409 (= e!4131299 (and tp!1878030 tp!1878028))))

(assert (=> b!6848867 (= tp!1876520 e!4131299)))

(assert (= (and b!6848867 ((_ is ElementMatch!16675) (reg!17004 (reg!17004 (regTwo!33863 r!7292))))) b!6851408))

(assert (= (and b!6848867 ((_ is Concat!25520) (reg!17004 (reg!17004 (regTwo!33863 r!7292))))) b!6851409))

(assert (= (and b!6848867 ((_ is Star!16675) (reg!17004 (reg!17004 (regTwo!33863 r!7292))))) b!6851410))

(assert (= (and b!6848867 ((_ is Union!16675) (reg!17004 (reg!17004 (regTwo!33863 r!7292))))) b!6851411))

(declare-fun b!6851412 () Bool)

(declare-fun e!4131300 () Bool)

(assert (=> b!6851412 (= e!4131300 tp_is_empty!42603)))

(declare-fun b!6851414 () Bool)

(declare-fun tp!1878036 () Bool)

(assert (=> b!6851414 (= e!4131300 tp!1878036)))

(declare-fun b!6851415 () Bool)

(declare-fun tp!1878034 () Bool)

(declare-fun tp!1878037 () Bool)

(assert (=> b!6851415 (= e!4131300 (and tp!1878034 tp!1878037))))

(declare-fun b!6851413 () Bool)

(declare-fun tp!1878035 () Bool)

(declare-fun tp!1878033 () Bool)

(assert (=> b!6851413 (= e!4131300 (and tp!1878035 tp!1878033))))

(assert (=> b!6848834 (= tp!1876478 e!4131300)))

(assert (= (and b!6848834 ((_ is ElementMatch!16675) (reg!17004 (regOne!33862 (regOne!33862 r!7292))))) b!6851412))

(assert (= (and b!6848834 ((_ is Concat!25520) (reg!17004 (regOne!33862 (regOne!33862 r!7292))))) b!6851413))

(assert (= (and b!6848834 ((_ is Star!16675) (reg!17004 (regOne!33862 (regOne!33862 r!7292))))) b!6851414))

(assert (= (and b!6848834 ((_ is Union!16675) (reg!17004 (regOne!33862 (regOne!33862 r!7292))))) b!6851415))

(declare-fun b!6851416 () Bool)

(declare-fun e!4131301 () Bool)

(assert (=> b!6851416 (= e!4131301 tp_is_empty!42603)))

(declare-fun b!6851418 () Bool)

(declare-fun tp!1878041 () Bool)

(assert (=> b!6851418 (= e!4131301 tp!1878041)))

(declare-fun b!6851419 () Bool)

(declare-fun tp!1878039 () Bool)

(declare-fun tp!1878042 () Bool)

(assert (=> b!6851419 (= e!4131301 (and tp!1878039 tp!1878042))))

(declare-fun b!6851417 () Bool)

(declare-fun tp!1878040 () Bool)

(declare-fun tp!1878038 () Bool)

(assert (=> b!6851417 (= e!4131301 (and tp!1878040 tp!1878038))))

(assert (=> b!6848843 (= tp!1876486 e!4131301)))

(assert (= (and b!6848843 ((_ is ElementMatch!16675) (regOne!33863 (reg!17004 (reg!17004 r!7292))))) b!6851416))

(assert (= (and b!6848843 ((_ is Concat!25520) (regOne!33863 (reg!17004 (reg!17004 r!7292))))) b!6851417))

(assert (= (and b!6848843 ((_ is Star!16675) (regOne!33863 (reg!17004 (reg!17004 r!7292))))) b!6851418))

(assert (= (and b!6848843 ((_ is Union!16675) (regOne!33863 (reg!17004 (reg!17004 r!7292))))) b!6851419))

(declare-fun b!6851420 () Bool)

(declare-fun e!4131302 () Bool)

(assert (=> b!6851420 (= e!4131302 tp_is_empty!42603)))

(declare-fun b!6851422 () Bool)

(declare-fun tp!1878046 () Bool)

(assert (=> b!6851422 (= e!4131302 tp!1878046)))

(declare-fun b!6851423 () Bool)

(declare-fun tp!1878044 () Bool)

(declare-fun tp!1878047 () Bool)

(assert (=> b!6851423 (= e!4131302 (and tp!1878044 tp!1878047))))

(declare-fun b!6851421 () Bool)

(declare-fun tp!1878045 () Bool)

(declare-fun tp!1878043 () Bool)

(assert (=> b!6851421 (= e!4131302 (and tp!1878045 tp!1878043))))

(assert (=> b!6848843 (= tp!1876489 e!4131302)))

(assert (= (and b!6848843 ((_ is ElementMatch!16675) (regTwo!33863 (reg!17004 (reg!17004 r!7292))))) b!6851420))

(assert (= (and b!6848843 ((_ is Concat!25520) (regTwo!33863 (reg!17004 (reg!17004 r!7292))))) b!6851421))

(assert (= (and b!6848843 ((_ is Star!16675) (regTwo!33863 (reg!17004 (reg!17004 r!7292))))) b!6851422))

(assert (= (and b!6848843 ((_ is Union!16675) (regTwo!33863 (reg!17004 (reg!17004 r!7292))))) b!6851423))

(declare-fun b_lambda!258607 () Bool)

(assert (= b_lambda!258535 (or d!2152411 b_lambda!258607)))

(declare-fun bs!1831318 () Bool)

(declare-fun d!2153371 () Bool)

(assert (= bs!1831318 (and d!2153371 d!2152411)))

(assert (=> bs!1831318 (= (dynLambda!26455 lambda!387227 (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343))))) (validRegex!8411 (h!72648 (t!380067 (exprs!6559 (h!72649 zl!343))))))))

(declare-fun m!7589598 () Bool)

(assert (=> bs!1831318 m!7589598))

(assert (=> b!6849690 d!2153371))

(declare-fun b_lambda!258609 () Bool)

(assert (= b_lambda!258513 (or d!2152645 b_lambda!258609)))

(declare-fun bs!1831319 () Bool)

(declare-fun d!2153373 () Bool)

(assert (= bs!1831319 (and d!2153373 d!2152645)))

(assert (=> bs!1831319 (= (dynLambda!26456 lambda!387268 (h!72649 zl!343)) (not (dynLambda!26456 lambda!387233 (h!72649 zl!343))))))

(declare-fun b_lambda!258643 () Bool)

(assert (=> (not b_lambda!258643) (not bs!1831319)))

(declare-fun m!7589600 () Bool)

(assert (=> bs!1831319 m!7589600))

(assert (=> b!6849255 d!2153373))

(declare-fun b_lambda!258611 () Bool)

(assert (= b_lambda!258547 (or b!6847423 b_lambda!258611)))

(declare-fun bs!1831320 () Bool)

(declare-fun d!2153375 () Bool)

(assert (= bs!1831320 (and d!2153375 b!6847423)))

(declare-fun res!2796297 () Bool)

(declare-fun e!4131303 () Bool)

(assert (=> bs!1831320 (=> (not res!2796297) (not e!4131303))))

(assert (=> bs!1831320 (= res!2796297 (validRegex!8411 (h!72648 (t!380067 (t!380067 lt!2455888)))))))

(assert (=> bs!1831320 (= (dynLambda!26455 lambda!387176 (h!72648 (t!380067 (t!380067 lt!2455888)))) e!4131303)))

(declare-fun b!6851424 () Bool)

(assert (=> b!6851424 (= e!4131303 (matchR!8858 (h!72648 (t!380067 (t!380067 lt!2455888))) s!2326))))

(assert (= (and bs!1831320 res!2796297) b!6851424))

(declare-fun m!7589602 () Bool)

(assert (=> bs!1831320 m!7589602))

(declare-fun m!7589604 () Bool)

(assert (=> b!6851424 m!7589604))

(assert (=> b!6849883 d!2153375))

(declare-fun b_lambda!258613 () Bool)

(assert (= b_lambda!258533 (or d!2152409 b_lambda!258613)))

(declare-fun bs!1831321 () Bool)

(declare-fun d!2153377 () Bool)

(assert (= bs!1831321 (and d!2153377 d!2152409)))

(assert (=> bs!1831321 (= (dynLambda!26455 lambda!387226 (h!72648 (t!380067 lt!2455979))) (validRegex!8411 (h!72648 (t!380067 lt!2455979))))))

(declare-fun m!7589606 () Bool)

(assert (=> bs!1831321 m!7589606))

(assert (=> b!6849567 d!2153377))

(declare-fun b_lambda!258615 () Bool)

(assert (= b_lambda!258517 (or d!2152671 b_lambda!258615)))

(declare-fun bs!1831322 () Bool)

(declare-fun d!2153379 () Bool)

(assert (= bs!1831322 (and d!2153379 d!2152671)))

(assert (=> bs!1831322 (= (dynLambda!26455 lambda!387272 (h!72648 (exprs!6559 lt!2455960))) (validRegex!8411 (h!72648 (exprs!6559 lt!2455960))))))

(declare-fun m!7589608 () Bool)

(assert (=> bs!1831322 m!7589608))

(assert (=> b!6849270 d!2153379))

(declare-fun b_lambda!258617 () Bool)

(assert (= b_lambda!258509 (or d!2152375 b_lambda!258617)))

(declare-fun bs!1831323 () Bool)

(declare-fun d!2153381 () Bool)

(assert (= bs!1831323 (and d!2153381 d!2152375)))

(assert (=> bs!1831323 (= (dynLambda!26455 lambda!387214 (h!72648 (t!380067 (exprs!6559 setElem!47081)))) (validRegex!8411 (h!72648 (t!380067 (exprs!6559 setElem!47081)))))))

(declare-fun m!7589610 () Bool)

(assert (=> bs!1831323 m!7589610))

(assert (=> b!6849227 d!2153381))

(declare-fun b_lambda!258619 () Bool)

(assert (= b_lambda!258505 (or b!6847411 b_lambda!258619)))

(declare-fun bs!1831324 () Bool)

(declare-fun d!2153383 () Bool)

(assert (= bs!1831324 (and d!2153383 b!6847411)))

(assert (=> bs!1831324 (= (dynLambda!26456 lambda!387177 lt!2456071) (= (generalisedConcat!2266 (exprs!6559 lt!2456071)) lt!2455885))))

(declare-fun m!7589612 () Bool)

(assert (=> bs!1831324 m!7589612))

(assert (=> d!2152875 d!2153383))

(declare-fun b_lambda!258621 () Bool)

(assert (= b_lambda!258551 (or d!2152603 b_lambda!258621)))

(declare-fun bs!1831325 () Bool)

(declare-fun d!2153385 () Bool)

(assert (= bs!1831325 (and d!2153385 d!2152603)))

(assert (=> bs!1831325 (= (dynLambda!26455 lambda!387264 (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343))))) (validRegex!8411 (h!72648 (exprs!6559 (h!72649 (t!380068 zl!343))))))))

(declare-fun m!7589614 () Bool)

(assert (=> bs!1831325 m!7589614))

(assert (=> b!6849926 d!2153385))

(declare-fun b_lambda!258623 () Bool)

(assert (= b_lambda!258541 (or d!2152621 b_lambda!258623)))

(declare-fun bs!1831326 () Bool)

(declare-fun d!2153387 () Bool)

(assert (= bs!1831326 (and d!2153387 d!2152621)))

(assert (=> bs!1831326 (= (dynLambda!26455 lambda!387267 (h!72648 (unfocusZipperList!2092 zl!343))) (validRegex!8411 (h!72648 (unfocusZipperList!2092 zl!343))))))

(declare-fun m!7589616 () Bool)

(assert (=> bs!1831326 m!7589616))

(assert (=> b!6849759 d!2153387))

(declare-fun b_lambda!258625 () Bool)

(assert (= b_lambda!258515 (or d!2152405 b_lambda!258625)))

(declare-fun bs!1831327 () Bool)

(declare-fun d!2153389 () Bool)

(assert (= bs!1831327 (and d!2153389 d!2152405)))

(assert (=> bs!1831327 (= (dynLambda!26455 lambda!387217 (h!72648 (t!380067 lt!2455888))) (not (dynLambda!26455 lambda!387176 (h!72648 (t!380067 lt!2455888)))))))

(declare-fun b_lambda!258645 () Bool)

(assert (=> (not b_lambda!258645) (not bs!1831327)))

(assert (=> bs!1831327 m!7587988))

(assert (=> b!6849257 d!2153389))

(declare-fun b_lambda!258627 () Bool)

(assert (= b_lambda!258557 (or d!2152407 b_lambda!258627)))

(declare-fun bs!1831328 () Bool)

(declare-fun d!2153391 () Bool)

(assert (= bs!1831328 (and d!2153391 d!2152407)))

(assert (=> bs!1831328 (= (dynLambda!26455 lambda!387222 (h!72648 (t!380067 lt!2455888))) (validRegex!8411 (h!72648 (t!380067 lt!2455888))))))

(assert (=> bs!1831328 m!7588198))

(assert (=> b!6850303 d!2153391))

(declare-fun b_lambda!258629 () Bool)

(assert (= b_lambda!258559 (or d!2152585 b_lambda!258629)))

(declare-fun bs!1831329 () Bool)

(declare-fun d!2153393 () Bool)

(assert (= bs!1831329 (and d!2153393 d!2152585)))

(assert (=> bs!1831329 (= (dynLambda!26455 lambda!387258 (h!72648 (exprs!6559 (h!72649 zl!343)))) (validRegex!8411 (h!72648 (exprs!6559 (h!72649 zl!343)))))))

(assert (=> bs!1831329 m!7588196))

(assert (=> b!6850422 d!2153393))

(declare-fun b_lambda!258631 () Bool)

(assert (= b_lambda!258561 (or d!2152587 b_lambda!258631)))

(declare-fun bs!1831330 () Bool)

(declare-fun d!2153395 () Bool)

(assert (= bs!1831330 (and d!2153395 d!2152587)))

(assert (=> bs!1831330 (= (dynLambda!26455 lambda!387259 (h!72648 lt!2456023)) (validRegex!8411 (h!72648 lt!2456023)))))

(declare-fun m!7589618 () Bool)

(assert (=> bs!1831330 m!7589618))

(assert (=> b!6850517 d!2153395))

(declare-fun b_lambda!258633 () Bool)

(assert (= b_lambda!258555 (or d!2152691 b_lambda!258633)))

(declare-fun bs!1831331 () Bool)

(declare-fun d!2153397 () Bool)

(assert (= bs!1831331 (and d!2153397 d!2152691)))

(assert (=> bs!1831331 (= (dynLambda!26455 lambda!387275 (h!72648 (exprs!6559 setElem!47087))) (validRegex!8411 (h!72648 (exprs!6559 setElem!47087))))))

(declare-fun m!7589620 () Bool)

(assert (=> bs!1831331 m!7589620))

(assert (=> b!6849958 d!2153397))

(declare-fun b_lambda!258635 () Bool)

(assert (= b_lambda!258521 (or d!2152415 b_lambda!258635)))

(declare-fun bs!1831332 () Bool)

(declare-fun d!2153399 () Bool)

(assert (= bs!1831332 (and d!2153399 d!2152415)))

(assert (=> bs!1831332 (= (dynLambda!26456 lambda!387230 (h!72649 (t!380068 zl!343))) (not (dynLambda!26456 lambda!387177 (h!72649 (t!380068 zl!343)))))))

(declare-fun b_lambda!258647 () Bool)

(assert (=> (not b_lambda!258647) (not bs!1831332)))

(assert (=> bs!1831332 m!7587922))

(assert (=> b!6849413 d!2153399))

(declare-fun b_lambda!258637 () Bool)

(assert (= b_lambda!258549 (or b!6847423 b_lambda!258637)))

(declare-fun bs!1831333 () Bool)

(declare-fun d!2153401 () Bool)

(assert (= bs!1831333 (and d!2153401 b!6847423)))

(declare-fun res!2796298 () Bool)

(declare-fun e!4131304 () Bool)

(assert (=> bs!1831333 (=> (not res!2796298) (not e!4131304))))

(assert (=> bs!1831333 (= res!2796298 (validRegex!8411 lt!2456110))))

(assert (=> bs!1831333 (= (dynLambda!26455 lambda!387176 lt!2456110) e!4131304)))

(declare-fun b!6851425 () Bool)

(assert (=> b!6851425 (= e!4131304 (matchR!8858 lt!2456110 s!2326))))

(assert (= (and bs!1831333 res!2796298) b!6851425))

(declare-fun m!7589622 () Bool)

(assert (=> bs!1831333 m!7589622))

(declare-fun m!7589624 () Bool)

(assert (=> b!6851425 m!7589624))

(assert (=> d!2153169 d!2153401))

(declare-fun b_lambda!258639 () Bool)

(assert (= b_lambda!258507 (or b!6847411 b_lambda!258639)))

(declare-fun bs!1831334 () Bool)

(declare-fun d!2153403 () Bool)

(assert (= bs!1831334 (and d!2153403 b!6847411)))

(assert (=> bs!1831334 (= (dynLambda!26456 lambda!387177 (h!72649 (t!380068 (t!380068 zl!343)))) (= (generalisedConcat!2266 (exprs!6559 (h!72649 (t!380068 (t!380068 zl!343))))) lt!2455885))))

(assert (=> bs!1831334 m!7589434))

(assert (=> b!6849186 d!2153403))

(declare-fun b_lambda!258641 () Bool)

(assert (= b_lambda!258511 (or d!2152589 b_lambda!258641)))

(declare-fun bs!1831335 () Bool)

(declare-fun d!2153405 () Bool)

(assert (= bs!1831335 (and d!2153405 d!2152589)))

(assert (=> bs!1831335 (= (dynLambda!26455 lambda!387260 (h!72648 lt!2455888)) (not (dynLambda!26455 lambda!387223 (h!72648 lt!2455888))))))

(declare-fun b_lambda!258649 () Bool)

(assert (=> (not b_lambda!258649) (not bs!1831335)))

(declare-fun m!7589626 () Bool)

(assert (=> bs!1831335 m!7589626))

(assert (=> b!6849242 d!2153405))

(check-sat (not b!6851122) (not b!6850330) (not b!6850799) (not b!6850867) (not setNonEmpty!47091) (not b!6849632) (not b!6851154) (not b!6850891) (not b!6851202) (not b!6850988) (not b!6851034) (not b!6851414) (not b!6851203) (not b!6851155) (not b!6851345) (not b!6850896) (not bm!623882) (not bm!623997) (not b!6851261) (not bm!623789) (not d!2152949) (not bm!623936) (not bm!623872) (not b!6849288) (not bm!623890) (not b!6851022) (not b!6851060) (not b!6849848) (not b!6849610) (not bm!623999) (not b!6851239) (not b!6851230) (not b!6851370) (not b_lambda!258629) (not b!6851079) (not d!2153275) (not b!6851194) (not b!6851092) (not b!6850940) (not b!6851385) (not b!6850932) (not b!6851018) (not b!6850890) (not b!6849293) (not bm!623893) (not b!6851191) (not b!6851248) (not b!6850836) (not b!6850401) (not b!6851377) (not b!6849812) (not b!6851305) (not b!6851282) (not b!6851302) (not b!6850878) (not b!6851423) (not b!6850019) (not b!6851126) (not b!6850956) (not b!6850887) (not b!6851256) (not b!6850949) (not b!6851285) (not bm!624035) (not b!6850857) (not bm!623851) (not b!6849565) (not b!6851149) (not b!6850961) (not bm!623876) (not b!6851224) (not bm!623984) (not b!6850912) (not bm!623965) (not b!6851299) (not bm!623804) (not b!6851398) (not b!6851424) (not b_lambda!258643) (not d!2153169) (not b!6850880) (not bs!1831330) (not b!6849568) (not b!6851000) (not b!6849847) (not b!6851144) (not bs!1831320) (not b!6850528) (not b!6850920) (not b!6849936) (not b!6851158) (not b!6850017) (not b!6851315) (not b!6851008) (not b!6851193) (not b!6851347) (not b!6851393) (not d!2152879) (not b!6850930) (not b!6851270) (not b!6851258) (not b!6850423) (not b!6851120) (not bm!624012) (not d!2152917) (not b!6851027) (not b!6850832) (not b!6851232) (not b!6851399) (not bm!624043) (not b!6851394) (not b!6851381) (not b!6851361) (not b!6851237) (not b!6850904) (not b!6851201) (not d!2153129) (not b!6851240) (not b!6851266) (not b!6849573) (not d!2152905) (not b!6851383) (not bs!1831321) (not b!6851050) (not d!2153187) (not b!6850996) (not b!6851425) (not b!6851055) (not b!6851020) (not bm!624030) (not b!6850926) (not b!6850944) (not b!6849699) (not b_lambda!258473) (not b!6849271) (not b!6851150) (not b!6851147) (not b!6851151) (not b!6851135) (not b!6850778) (not b!6850993) (not bm!623966) (not b_lambda!258625) (not b!6851182) (not b!6851175) (not b!6851319) (not b!6851318) (not b!6851046) (not d!2153365) (not bm!623983) (not b!6851075) (not b!6850884) (not b!6851031) (not bm!624006) (not b_lambda!258461) (not bm!623989) (not b!6850888) (not b!6851226) (not b!6851084) (not b!6851146) (not b!6851039) (not b!6849777) (not d!2153105) (not bm!623791) (not b!6851186) (not bm!623884) (not b!6850875) (not d!2153307) (not b!6851249) (not b!6850972) (not b!6849850) (not b!6849199) (not b!6850911) (not b!6850870) (not d!2153101) (not b!6851058) (not b!6849803) (not b!6851297) (not b!6851108) (not b!6850931) (not b!6851181) (not b!6851365) (not b!6851123) (not b!6850992) (not b!6851373) (not bm!623808) (not b!6851387) (not b!6850580) (not b!6850280) (not b!6849776) (not b!6850809) (not b!6851267) (not b!6850015) (not b!6851209) (not b!6850936) (not d!2152869) (not b!6851206) (not b!6851066) (not b!6850935) (not b!6851010) (not b_lambda!258471) (not b!6851068) (not b!6851409) (not bm!623920) (not b!6851048) (not b!6851301) (not b!6851106) (not b!6850952) (not b!6851139) (not d!2152907) (not b!6850862) (not b!6850934) (not bs!1831322) (not b!6850907) (not bm!623850) (not d!2152931) (not b!6851071) (not b!6850813) (not b!6849928) (not d!2153113) (not b!6851140) (not b!6851054) (not b!6851247) (not b_lambda!258615) (not b!6850928) (not b!6849469) (not b!6850859) (not b!6849849) (not b!6849198) (not b!6849201) (not b!6851038) (not bm!624038) (not bm!623957) (not bm!623877) (not bm!623929) (not b!6851317) (not d!2152899) (not b!6849754) (not b!6851062) (not d!2153295) (not d!2153215) (not b!6850957) (not b!6851082) (not bm!623861) (not b!6850991) (not b!6851255) (not b!6850195) (not b!6851357) (not b!6851004) (not b!6851178) (not b_lambda!258391) (not b!6851358) (not b!6850975) (not b!6849394) (not b!6851207) (not bm!623988) (not b!6850942) (not b!6851179) (not b!6851142) (not b_lambda!258387) (not b!6850999) (not b!6850946) (not b!6850727) (not b!6851265) (not bs!1831323) (not b!6850969) (not b!6851330) (not bm!623967) (not b!6851190) (not bm!624024) (not b!6849670) (not b!6850882) (not b!6849256) (not b!6849336) (not bm!624005) (not b!6851337) (not b!6849881) (not b!6850967) (not b!6849736) (not b!6850781) (not d!2153241) (not b!6851173) (not d!2153359) (not d!2153289) (not d!2153259) (not d!2153173) (not b!6851295) (not b!6849852) (not b!6850018) (not b!6850775) (not b!6850916) (not bm!624000) (not b_lambda!258465) (not b!6851220) (not d!2152935) (not b!6851243) (not b!6851087) (not d!2153015) (not b!6850751) (not b!6849185) (not b!6850915) (not b_lambda!258389) (not b!6850861) (not b!6850902) (not b!6851111) (not b!6851257) (not b!6850964) (not b!6850839) (not b!6850871) (not b!6850943) (not bm!623930) (not b!6851413) (not b!6851099) (not b!6850947) (not b!6851253) (not b!6851014) (not b!6850997) (not bm!623824) (not b!6850849) (not b!6849932) (not b!6850987) (not b!6851231) (not b!6850900) (not bm!623926) (not b!6849426) (not b!6851131) (not b!6851309) (not b!6849927) (not b!6851283) (not b!6851143) (not b!6851403) (not d!2153245) (not b!6849912) (not b!6851169) (not b!6850704) (not b!6849966) (not b!6851189) (not b!6851036) (not bm!623805) (not bm!623976) (not b_lambda!258623) (not b!6851401) (not b!6850067) (not bs!1831333) (not b!6849316) (not d!2153089) (not b!6851340) (not b!6849959) (not bm!623992) (not b!6850980) (not bm!623888) (not b!6851205) (not b!6849430) (not bm!624022) (not bm!624039) (not b!6851386) (not bm!624026) (not b!6851174) (not b!6851287) (not b!6851210) (not d!2153109) (not b!6850854) (not d!2153243) (not b!6849292) (not d!2153141) (not b!6849224) (not b!6851130) (not b_lambda!258621) (not bm!623895) (not b!6851153) (not b!6850955) (not b!6851244) (not b!6851136) (not b!6850855) (not d!2153361) (not b!6850014) (not b!6850922) (not b!6851311) (not b!6851011) (not b!6850919) (not b!6851162) (not b!6850960) (not b!6851415) (not b!6851274) (not b!6850148) (not b!6851167) (not b!6851044) (not b!6851353) (not b!6851166) (not bm!623995) (not b!6851293) (not b_lambda!258469) (not b!6849783) (not bm!624002) (not b!6850989) (not b_lambda!258475) (not b!6851279) (not b!6851303) (not b!6851118) (not b!6851138) (not b!6851390) (not b!6851228) (not b!6851348) (not b!6849937) (not b!6850879) (not b!6851197) (not bm!623924) (not bm!624021) (not b!6851185) (not d!2153227) (not b!6850774) (not b!6849295) (not b!6851351) (not b!6851006) (not b!6851419) (not b!6851362) (not b!6849908) (not b_lambda!258639) (not b!6850948) (not b!6849817) (not b!6851281) (not d!2153261) (not bm!624044) (not bm!623811) (not b!6851003) (not b!6849987) (not b!6850835) (not b!6851114) (not b!6850527) (not b!6851132) (not b!6850837) (not b!6851177) (not b!6851019) (not b!6851378) (not d!2153369) (not b!6851369) (not b!6850812) (not b!6849254) (not b!6851271) (not bm!624014) (not d!2152883) (not b!6850833) (not b!6850869) (not b!6851418) (not b!6851322) (not b!6851024) (not b_lambda!258627) (not bm!623899) (not b!6849698) (not bs!1831329) (not bm!624009) (not b!6851364) (not b!6849986) (not b!6849203) (not b!6851170) (not b!6851026) (not b!6850883) (not b!6851032) (not d!2153273) (not b!6850876) (not b_lambda!258611) (not b!6849886) (not b_lambda!258645) (not b!6851277) (not b!6851213) (not b!6851094) (not b!6851278) (not b!6851379) (not b!6851023) (not b!6850995) (not b!6849671) (not b!6850976) (not b!6849822) (not b!6851332) (not d!2153317) (not b!6851339) (not d!2152859) (not bm!623871) (not b!6851110) (not b!6850811) (not b!6850903) (not b!6850021) (not b!6851389) (not b!6849202) (not b!6851134) (not b!6851088) (not bs!1831334) (not b!6851214) (not b!6850777) (not bm!623810) (not bm!623933) (not b!6851222) (not b!6850898) (not b_lambda!258609) (not d!2153223) (not b!6851368) (not b!6851171) (not b!6851298) (not b!6851115) (not b!6849779) (not b!6851366) (not b!6849181) (not d!2153155) (not b!6851078) (not b!6851102) (not b!6851070) (not b!6851072) (not b_lambda!258467) (not b!6849981) (not b!6850983) (not bm!624019) (not b!6849931) (not bm!623830) (not bs!1831326) (not b_lambda!258617) (not b!6849414) (not bm!623817) (not b!6851148) (not b!6851343) (not bm!623833) (not b_lambda!258641) (not b!6850858) (not b!6850938) (not b!6851091) (not b!6849856) (not b!6849230) (not b!6851015) (not b_lambda!258613) (not b!6851235) (not b!6851074) (not b!6850825) (not b!6850872) (not b!6849418) (not b!6849921) (not bm!624034) (not bm!623881) (not b!6850977) (not b!6851411) (not d!2153285) (not d!2153247) (not b!6851042) (not b!6849205) (not b!6850908) (not bm!624040) (not b!6851349) (not b!6851286) (not b!6849465) (not b!6851030) (not b!6850518) (not b_lambda!258489) (not b!6849537) (not b!6849614) (not d!2153199) (not b!6851009) (not b!6851012) (not b!6851107) (not b!6851273) (not b!6851382) (not b!6851104) (not b!6851310) (not b!6851236) (not b!6850886) (not bs!1831328) (not b!6851215) (not b!6849655) (not bm!624017) (not b!6851336) (not b!6851116) (not b!6849882) (not bm!623932) (not b!6851344) (not b!6849600) (not b!6851321) (not bm!623813) (not b!6851028) (not b!6849228) (not b!6849818) (not b!6851327) (not b!6851333) (not b!6851195) (not b!6850770) (not bm!623798) (not b!6850609) (not b!6851051) (not bm!623860) (not bm!623938) (not b!6849331) (not b!6851064) (not b!6851124) (not b!6850815) (not b!6849788) (not b!6849786) (not d!2153239) (not bm!624027) (not bm!624011) (not b!6851325) (not b!6849582) (not b!6850923) (not b_lambda!258459) (not b!6851290) (not b!6851095) (not b!6849258) (not b!6850927) (not b!6851086) (not b!6849972) (not b!6849281) (not b!6849170) (not b!6851306) (not b!6849984) (not b!6851016) (not b_lambda!258393) (not b!6850981) (not b!6851103) (not b!6851421) (not b!6851395) (not bm!623846) (not b!6850772) (not d!2153175) (not b!6851251) (not bs!1831318) (not b_lambda!258487) (not bm!623953) (not b!6851252) (not b!6851165) (not b_lambda!258631) (not b!6851352) (not b!6851355) (not b!6851410) (not b!6851183) (not b!6851098) (not b!6850865) (not b!6850984) (not d!2152995) (not b!6850924) (not b!6849243) (not b!6851090) (not b!6851005) (not b!6851307) (not bm!623879) (not b!6851119) (not b!6850965) (not b!6851417) (not d!2152875) (not b!6851157) (not bm!623838) (not b_lambda!258633) (not b!6851083) (not b!6851223) (not d!2153197) (not bm!624032) (not b_lambda!258649) (not bm!623892) (not b!6851422) (not b!6850041) (not b!6851294) (not b!6851371) (not bm!624018) (not b!6851035) (not b_lambda!258619) (not b!6850899) (not b!6849823) (not d!2152911) (not b!6851341) (not b!6851227) (not b!6849760) (not b!6850953) (not b!6851289) (not b_lambda!258635) (not b!6850894) (not b!6851263) (not b!6849929) (not bs!1831331) (not b!6851043) (not bs!1831324) (not b!6850914) (not bm!623844) (not b!6849794) (not b!6849169) (not b!6851406) (not b!6851241) (not b_lambda!258477) (not b!6849361) (not b!6851161) (not bm!623891) (not b!6849289) (not b!6850492) (not b!6851198) (not b!6851329) (not b!6851163) (not b!6851397) (not b!6850895) (not b!6851059) (not b!6849983) (not b!6851076) (not bm!623994) (not b!6851040) (not b!6850137) (not b!6851331) (not b!6850971) (not bm!623823) (not b!6850985) (not b!6850918) (not bm!624029) (not b!6850863) (not b!6850224) (not b!6851405) (not b!6849990) (not b!6851056) (not b!6851313) (not b!6850951) (not b!6849781) (not b!6850973) (not b!6851291) (not b!6851375) (not b!6850874) (not b!6851216) (not b!6851067) (not b_lambda!258647) (not b!6849819) (not b!6849780) (not bm!624031) (not b!6851128) (not b!6850808) (not b!6849260) (not bm!623963) (not b!6849839) (not b!6851326) (not d!2153297) (not bm!624015) (not b!6851100) (not b!6849934) (not b!6849820) (not b!6849357) (not bm!623834) (not bm!624007) (not b!6850304) (not bm!623840) (not bm!623897) (not b!6850892) (not b!6851219) (not b!6851259) (not bm!623993) (not b!6851323) (not b!6851001) (not b!6849164) (not bm!623935) (not bm!623955) (not b!6849826) (not bm!623828) (not b!6851211) (not b!6849291) (not b!6850959) (not b!6849184) (not b!6851063) tp_is_empty!42603 (not b!6851374) (not b!6850361) (not d!2153263) (not b!6851269) (not b!6850853) (not b!6849691) (not b!6850290) (not b_lambda!258463) (not b!6850968) (not b!6851275) (not d!2153011) (not b!6850737) (not b!6851314) (not b!6851245) (not b!6849982) (not bm!623954) (not b!6850906) (not b!6851234) (not b!6850910) (not b!6850963) (not b_lambda!258637) (not b_lambda!258607) (not b!6849248) (not b!6851391) (not d!2152985) (not b!6850866) (not b!6850181) (not b!6849265) (not b!6849853) (not b!6851187) (not b!6851159) (not b!6851127) (not b!6851052) (not b!6851080) (not b!6851360) (not bm!624010) (not b!6850939) (not b!6851356) (not b!6851218) (not b!6849376) (not b!6850979) (not b!6851112) (not bm!623918) (not b!6851047) (not b!6851402) (not b!6851262) (not b!6851199) (not b!6850314) (not b!6851407) (not b!6850437) (not b!6851335) (not b!6851096) (not bs!1831325))
(check-sat)
