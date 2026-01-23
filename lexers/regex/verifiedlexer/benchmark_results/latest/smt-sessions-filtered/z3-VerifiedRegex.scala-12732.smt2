; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!703896 () Bool)

(assert start!703896)

(declare-fun b!7242484 () Bool)

(assert (=> b!7242484 true))

(declare-fun b!7242482 () Bool)

(declare-fun e!4342297 () Bool)

(declare-fun tp_is_empty!46611 () Bool)

(declare-fun tp!2035683 () Bool)

(assert (=> b!7242482 (= e!4342297 (and tp_is_empty!46611 tp!2035683))))

(declare-fun b!7242483 () Bool)

(declare-fun e!4342301 () Bool)

(declare-fun tp!2035684 () Bool)

(assert (=> b!7242483 (= e!4342301 (and tp_is_empty!46611 tp!2035684))))

(declare-fun e!4342299 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!37420 0))(
  ( (C!37421 (val!28658 Int)) )
))
(declare-datatypes ((Regex!18573 0))(
  ( (ElementMatch!18573 (c!1345029 C!37420)) (Concat!27418 (regOne!37658 Regex!18573) (regTwo!37658 Regex!18573)) (EmptyExpr!18573) (Star!18573 (reg!18902 Regex!18573)) (EmptyLang!18573) (Union!18573 (regOne!37659 Regex!18573) (regTwo!37659 Regex!18573)) )
))
(declare-datatypes ((List!70316 0))(
  ( (Nil!70192) (Cons!70192 (h!76640 Regex!18573) (t!384367 List!70316)) )
))
(declare-datatypes ((Context!15026 0))(
  ( (Context!15027 (exprs!8013 List!70316)) )
))
(declare-fun lt!2580528 () (InoxSet Context!15026))

(declare-fun lambda!442231 () Int)

(declare-fun exists!4265 ((InoxSet Context!15026) Int) Bool)

(assert (=> b!7242484 (= e!4342299 (not (exists!4265 lt!2580528 lambda!442231)))))

(declare-datatypes ((List!70317 0))(
  ( (Nil!70193) (Cons!70193 (h!76641 Context!15026) (t!384368 List!70317)) )
))
(declare-fun lt!2580529 () List!70317)

(declare-fun exists!4266 (List!70317 Int) Bool)

(assert (=> b!7242484 (exists!4266 lt!2580529 lambda!442231)))

(declare-datatypes ((Unit!163732 0))(
  ( (Unit!163733) )
))
(declare-fun lt!2580531 () Unit!163732)

(declare-datatypes ((List!70318 0))(
  ( (Nil!70194) (Cons!70194 (h!76642 C!37420) (t!384369 List!70318)) )
))
(declare-fun s1!1971 () List!70318)

(declare-fun lemmaZipperMatchesExistsMatchingContext!700 (List!70317 List!70318) Unit!163732)

(assert (=> b!7242484 (= lt!2580531 (lemmaZipperMatchesExistsMatchingContext!700 lt!2580529 (t!384369 s1!1971)))))

(declare-fun toList!11419 ((InoxSet Context!15026)) List!70317)

(assert (=> b!7242484 (= lt!2580529 (toList!11419 lt!2580528))))

(declare-fun b!7242485 () Bool)

(declare-fun e!4342300 () Bool)

(declare-fun tp!2035681 () Bool)

(assert (=> b!7242485 (= e!4342300 tp!2035681)))

(declare-fun b!7242486 () Bool)

(declare-fun e!4342296 () Bool)

(declare-fun e!4342295 () Bool)

(assert (=> b!7242486 (= e!4342296 e!4342295)))

(declare-fun res!2937955 () Bool)

(assert (=> b!7242486 (=> (not res!2937955) (not e!4342295))))

(declare-fun ct1!232 () Context!15026)

(get-info :version)

(assert (=> b!7242486 (= res!2937955 (and (not ((_ is Nil!70192) (exprs!8013 ct1!232))) ((_ is Cons!70194) s1!1971)))))

(declare-fun lt!2580532 () List!70316)

(declare-fun ct2!328 () Context!15026)

(declare-fun ++!16431 (List!70316 List!70316) List!70316)

(assert (=> b!7242486 (= lt!2580532 (++!16431 (exprs!8013 ct1!232) (exprs!8013 ct2!328)))))

(declare-fun lambda!442230 () Int)

(declare-fun lt!2580530 () Unit!163732)

(declare-fun lemmaConcatPreservesForall!1382 (List!70316 List!70316 Int) Unit!163732)

(assert (=> b!7242486 (= lt!2580530 (lemmaConcatPreservesForall!1382 (exprs!8013 ct1!232) (exprs!8013 ct2!328) lambda!442230))))

(declare-fun b!7242487 () Bool)

(declare-fun res!2937956 () Bool)

(assert (=> b!7242487 (=> (not res!2937956) (not e!4342296))))

(declare-fun s2!1849 () List!70318)

(declare-fun matchZipper!3483 ((InoxSet Context!15026) List!70318) Bool)

(assert (=> b!7242487 (= res!2937956 (matchZipper!3483 (store ((as const (Array Context!15026 Bool)) false) ct2!328 true) s2!1849))))

(declare-fun b!7242488 () Bool)

(declare-fun e!4342298 () Bool)

(declare-fun tp!2035682 () Bool)

(assert (=> b!7242488 (= e!4342298 tp!2035682)))

(declare-fun res!2937953 () Bool)

(assert (=> start!703896 (=> (not res!2937953) (not e!4342296))))

(declare-fun lt!2580527 () (InoxSet Context!15026))

(assert (=> start!703896 (= res!2937953 (matchZipper!3483 lt!2580527 s1!1971))))

(assert (=> start!703896 (= lt!2580527 (store ((as const (Array Context!15026 Bool)) false) ct1!232 true))))

(assert (=> start!703896 e!4342296))

(declare-fun inv!89442 (Context!15026) Bool)

(assert (=> start!703896 (and (inv!89442 ct1!232) e!4342300)))

(assert (=> start!703896 e!4342297))

(assert (=> start!703896 e!4342301))

(assert (=> start!703896 (and (inv!89442 ct2!328) e!4342298)))

(declare-fun b!7242489 () Bool)

(assert (=> b!7242489 (= e!4342295 e!4342299)))

(declare-fun res!2937954 () Bool)

(assert (=> b!7242489 (=> (not res!2937954) (not e!4342299))))

(assert (=> b!7242489 (= res!2937954 (matchZipper!3483 lt!2580528 (t!384369 s1!1971)))))

(declare-fun derivationStepZipper!3361 ((InoxSet Context!15026) C!37420) (InoxSet Context!15026))

(assert (=> b!7242489 (= lt!2580528 (derivationStepZipper!3361 lt!2580527 (h!76642 s1!1971)))))

(assert (= (and start!703896 res!2937953) b!7242487))

(assert (= (and b!7242487 res!2937956) b!7242486))

(assert (= (and b!7242486 res!2937955) b!7242489))

(assert (= (and b!7242489 res!2937954) b!7242484))

(assert (= start!703896 b!7242485))

(assert (= (and start!703896 ((_ is Cons!70194) s1!1971)) b!7242482))

(assert (= (and start!703896 ((_ is Cons!70194) s2!1849)) b!7242483))

(assert (= start!703896 b!7242488))

(declare-fun m!7917336 () Bool)

(assert (=> b!7242489 m!7917336))

(declare-fun m!7917338 () Bool)

(assert (=> b!7242489 m!7917338))

(declare-fun m!7917340 () Bool)

(assert (=> b!7242484 m!7917340))

(declare-fun m!7917342 () Bool)

(assert (=> b!7242484 m!7917342))

(declare-fun m!7917344 () Bool)

(assert (=> b!7242484 m!7917344))

(declare-fun m!7917346 () Bool)

(assert (=> b!7242484 m!7917346))

(declare-fun m!7917348 () Bool)

(assert (=> b!7242487 m!7917348))

(assert (=> b!7242487 m!7917348))

(declare-fun m!7917350 () Bool)

(assert (=> b!7242487 m!7917350))

(declare-fun m!7917352 () Bool)

(assert (=> start!703896 m!7917352))

(declare-fun m!7917354 () Bool)

(assert (=> start!703896 m!7917354))

(declare-fun m!7917356 () Bool)

(assert (=> start!703896 m!7917356))

(declare-fun m!7917358 () Bool)

(assert (=> start!703896 m!7917358))

(declare-fun m!7917360 () Bool)

(assert (=> b!7242486 m!7917360))

(declare-fun m!7917362 () Bool)

(assert (=> b!7242486 m!7917362))

(check-sat (not b!7242484) (not b!7242488) (not b!7242487) (not b!7242486) (not b!7242482) tp_is_empty!46611 (not b!7242489) (not start!703896) (not b!7242485) (not b!7242483))
(check-sat)
(get-model)

(declare-fun d!2250283 () Bool)

(declare-fun lt!2580535 () Bool)

(assert (=> d!2250283 (= lt!2580535 (exists!4266 (toList!11419 lt!2580528) lambda!442231))))

(declare-fun choose!55807 ((InoxSet Context!15026) Int) Bool)

(assert (=> d!2250283 (= lt!2580535 (choose!55807 lt!2580528 lambda!442231))))

(assert (=> d!2250283 (= (exists!4265 lt!2580528 lambda!442231) lt!2580535)))

(declare-fun bs!1904417 () Bool)

(assert (= bs!1904417 d!2250283))

(assert (=> bs!1904417 m!7917346))

(assert (=> bs!1904417 m!7917346))

(declare-fun m!7917364 () Bool)

(assert (=> bs!1904417 m!7917364))

(declare-fun m!7917366 () Bool)

(assert (=> bs!1904417 m!7917366))

(assert (=> b!7242484 d!2250283))

(declare-fun bs!1904419 () Bool)

(declare-fun d!2250287 () Bool)

(assert (= bs!1904419 (and d!2250287 b!7242484)))

(declare-fun lambda!442236 () Int)

(assert (=> bs!1904419 (not (= lambda!442236 lambda!442231))))

(assert (=> d!2250287 true))

(declare-fun order!28903 () Int)

(declare-fun dynLambda!28650 (Int Int) Int)

(assert (=> d!2250287 (< (dynLambda!28650 order!28903 lambda!442231) (dynLambda!28650 order!28903 lambda!442236))))

(declare-fun forall!17411 (List!70317 Int) Bool)

(assert (=> d!2250287 (= (exists!4266 lt!2580529 lambda!442231) (not (forall!17411 lt!2580529 lambda!442236)))))

(declare-fun bs!1904420 () Bool)

(assert (= bs!1904420 d!2250287))

(declare-fun m!7917372 () Bool)

(assert (=> bs!1904420 m!7917372))

(assert (=> b!7242484 d!2250287))

(declare-fun bs!1904423 () Bool)

(declare-fun d!2250291 () Bool)

(assert (= bs!1904423 (and d!2250291 b!7242484)))

(declare-fun lambda!442242 () Int)

(assert (=> bs!1904423 (= lambda!442242 lambda!442231)))

(declare-fun bs!1904424 () Bool)

(assert (= bs!1904424 (and d!2250291 d!2250287)))

(assert (=> bs!1904424 (not (= lambda!442242 lambda!442236))))

(assert (=> d!2250291 true))

(assert (=> d!2250291 (exists!4266 lt!2580529 lambda!442242)))

(declare-fun lt!2580543 () Unit!163732)

(declare-fun choose!55808 (List!70317 List!70318) Unit!163732)

(assert (=> d!2250291 (= lt!2580543 (choose!55808 lt!2580529 (t!384369 s1!1971)))))

(declare-fun content!14503 (List!70317) (InoxSet Context!15026))

(assert (=> d!2250291 (matchZipper!3483 (content!14503 lt!2580529) (t!384369 s1!1971))))

(assert (=> d!2250291 (= (lemmaZipperMatchesExistsMatchingContext!700 lt!2580529 (t!384369 s1!1971)) lt!2580543)))

(declare-fun bs!1904427 () Bool)

(assert (= bs!1904427 d!2250291))

(declare-fun m!7917376 () Bool)

(assert (=> bs!1904427 m!7917376))

(declare-fun m!7917378 () Bool)

(assert (=> bs!1904427 m!7917378))

(declare-fun m!7917380 () Bool)

(assert (=> bs!1904427 m!7917380))

(assert (=> bs!1904427 m!7917380))

(declare-fun m!7917382 () Bool)

(assert (=> bs!1904427 m!7917382))

(assert (=> b!7242484 d!2250291))

(declare-fun d!2250295 () Bool)

(declare-fun e!4342306 () Bool)

(assert (=> d!2250295 e!4342306))

(declare-fun res!2937961 () Bool)

(assert (=> d!2250295 (=> (not res!2937961) (not e!4342306))))

(declare-fun lt!2580549 () List!70317)

(declare-fun noDuplicate!2957 (List!70317) Bool)

(assert (=> d!2250295 (= res!2937961 (noDuplicate!2957 lt!2580549))))

(declare-fun choose!55810 ((InoxSet Context!15026)) List!70317)

(assert (=> d!2250295 (= lt!2580549 (choose!55810 lt!2580528))))

(assert (=> d!2250295 (= (toList!11419 lt!2580528) lt!2580549)))

(declare-fun b!7242500 () Bool)

(assert (=> b!7242500 (= e!4342306 (= (content!14503 lt!2580549) lt!2580528))))

(assert (= (and d!2250295 res!2937961) b!7242500))

(declare-fun m!7917394 () Bool)

(assert (=> d!2250295 m!7917394))

(declare-fun m!7917398 () Bool)

(assert (=> d!2250295 m!7917398))

(declare-fun m!7917402 () Bool)

(assert (=> b!7242500 m!7917402))

(assert (=> b!7242484 d!2250295))

(declare-fun d!2250299 () Bool)

(declare-fun c!1345039 () Bool)

(declare-fun isEmpty!40441 (List!70318) Bool)

(assert (=> d!2250299 (= c!1345039 (isEmpty!40441 s1!1971))))

(declare-fun e!4342313 () Bool)

(assert (=> d!2250299 (= (matchZipper!3483 lt!2580527 s1!1971) e!4342313)))

(declare-fun b!7242512 () Bool)

(declare-fun nullableZipper!2864 ((InoxSet Context!15026)) Bool)

(assert (=> b!7242512 (= e!4342313 (nullableZipper!2864 lt!2580527))))

(declare-fun b!7242513 () Bool)

(declare-fun head!14851 (List!70318) C!37420)

(declare-fun tail!14234 (List!70318) List!70318)

(assert (=> b!7242513 (= e!4342313 (matchZipper!3483 (derivationStepZipper!3361 lt!2580527 (head!14851 s1!1971)) (tail!14234 s1!1971)))))

(assert (= (and d!2250299 c!1345039) b!7242512))

(assert (= (and d!2250299 (not c!1345039)) b!7242513))

(declare-fun m!7917406 () Bool)

(assert (=> d!2250299 m!7917406))

(declare-fun m!7917410 () Bool)

(assert (=> b!7242512 m!7917410))

(declare-fun m!7917414 () Bool)

(assert (=> b!7242513 m!7917414))

(assert (=> b!7242513 m!7917414))

(declare-fun m!7917418 () Bool)

(assert (=> b!7242513 m!7917418))

(declare-fun m!7917422 () Bool)

(assert (=> b!7242513 m!7917422))

(assert (=> b!7242513 m!7917418))

(assert (=> b!7242513 m!7917422))

(declare-fun m!7917426 () Bool)

(assert (=> b!7242513 m!7917426))

(assert (=> start!703896 d!2250299))

(declare-fun bs!1904429 () Bool)

(declare-fun d!2250303 () Bool)

(assert (= bs!1904429 (and d!2250303 b!7242486)))

(declare-fun lambda!442246 () Int)

(assert (=> bs!1904429 (= lambda!442246 lambda!442230)))

(declare-fun forall!17413 (List!70316 Int) Bool)

(assert (=> d!2250303 (= (inv!89442 ct1!232) (forall!17413 (exprs!8013 ct1!232) lambda!442246))))

(declare-fun bs!1904430 () Bool)

(assert (= bs!1904430 d!2250303))

(declare-fun m!7917428 () Bool)

(assert (=> bs!1904430 m!7917428))

(assert (=> start!703896 d!2250303))

(declare-fun bs!1904431 () Bool)

(declare-fun d!2250307 () Bool)

(assert (= bs!1904431 (and d!2250307 b!7242486)))

(declare-fun lambda!442247 () Int)

(assert (=> bs!1904431 (= lambda!442247 lambda!442230)))

(declare-fun bs!1904432 () Bool)

(assert (= bs!1904432 (and d!2250307 d!2250303)))

(assert (=> bs!1904432 (= lambda!442247 lambda!442246)))

(assert (=> d!2250307 (= (inv!89442 ct2!328) (forall!17413 (exprs!8013 ct2!328) lambda!442247))))

(declare-fun bs!1904433 () Bool)

(assert (= bs!1904433 d!2250307))

(declare-fun m!7917430 () Bool)

(assert (=> bs!1904433 m!7917430))

(assert (=> start!703896 d!2250307))

(declare-fun d!2250309 () Bool)

(declare-fun c!1345040 () Bool)

(assert (=> d!2250309 (= c!1345040 (isEmpty!40441 (t!384369 s1!1971)))))

(declare-fun e!4342314 () Bool)

(assert (=> d!2250309 (= (matchZipper!3483 lt!2580528 (t!384369 s1!1971)) e!4342314)))

(declare-fun b!7242514 () Bool)

(assert (=> b!7242514 (= e!4342314 (nullableZipper!2864 lt!2580528))))

(declare-fun b!7242515 () Bool)

(assert (=> b!7242515 (= e!4342314 (matchZipper!3483 (derivationStepZipper!3361 lt!2580528 (head!14851 (t!384369 s1!1971))) (tail!14234 (t!384369 s1!1971))))))

(assert (= (and d!2250309 c!1345040) b!7242514))

(assert (= (and d!2250309 (not c!1345040)) b!7242515))

(declare-fun m!7917432 () Bool)

(assert (=> d!2250309 m!7917432))

(declare-fun m!7917434 () Bool)

(assert (=> b!7242514 m!7917434))

(declare-fun m!7917436 () Bool)

(assert (=> b!7242515 m!7917436))

(assert (=> b!7242515 m!7917436))

(declare-fun m!7917438 () Bool)

(assert (=> b!7242515 m!7917438))

(declare-fun m!7917440 () Bool)

(assert (=> b!7242515 m!7917440))

(assert (=> b!7242515 m!7917438))

(assert (=> b!7242515 m!7917440))

(declare-fun m!7917442 () Bool)

(assert (=> b!7242515 m!7917442))

(assert (=> b!7242489 d!2250309))

(declare-fun d!2250311 () Bool)

(assert (=> d!2250311 true))

(declare-fun lambda!442250 () Int)

(declare-fun flatMap!2762 ((InoxSet Context!15026) Int) (InoxSet Context!15026))

(assert (=> d!2250311 (= (derivationStepZipper!3361 lt!2580527 (h!76642 s1!1971)) (flatMap!2762 lt!2580527 lambda!442250))))

(declare-fun bs!1904434 () Bool)

(assert (= bs!1904434 d!2250311))

(declare-fun m!7917444 () Bool)

(assert (=> bs!1904434 m!7917444))

(assert (=> b!7242489 d!2250311))

(declare-fun d!2250313 () Bool)

(declare-fun c!1345046 () Bool)

(assert (=> d!2250313 (= c!1345046 (isEmpty!40441 s2!1849))))

(declare-fun e!4342321 () Bool)

(assert (=> d!2250313 (= (matchZipper!3483 (store ((as const (Array Context!15026 Bool)) false) ct2!328 true) s2!1849) e!4342321)))

(declare-fun b!7242530 () Bool)

(assert (=> b!7242530 (= e!4342321 (nullableZipper!2864 (store ((as const (Array Context!15026 Bool)) false) ct2!328 true)))))

(declare-fun b!7242531 () Bool)

(assert (=> b!7242531 (= e!4342321 (matchZipper!3483 (derivationStepZipper!3361 (store ((as const (Array Context!15026 Bool)) false) ct2!328 true) (head!14851 s2!1849)) (tail!14234 s2!1849)))))

(assert (= (and d!2250313 c!1345046) b!7242530))

(assert (= (and d!2250313 (not c!1345046)) b!7242531))

(declare-fun m!7917460 () Bool)

(assert (=> d!2250313 m!7917460))

(assert (=> b!7242530 m!7917348))

(declare-fun m!7917462 () Bool)

(assert (=> b!7242530 m!7917462))

(declare-fun m!7917464 () Bool)

(assert (=> b!7242531 m!7917464))

(assert (=> b!7242531 m!7917348))

(assert (=> b!7242531 m!7917464))

(declare-fun m!7917466 () Bool)

(assert (=> b!7242531 m!7917466))

(declare-fun m!7917468 () Bool)

(assert (=> b!7242531 m!7917468))

(assert (=> b!7242531 m!7917466))

(assert (=> b!7242531 m!7917468))

(declare-fun m!7917470 () Bool)

(assert (=> b!7242531 m!7917470))

(assert (=> b!7242487 d!2250313))

(declare-fun d!2250317 () Bool)

(declare-fun e!4342328 () Bool)

(assert (=> d!2250317 e!4342328))

(declare-fun res!2937973 () Bool)

(assert (=> d!2250317 (=> (not res!2937973) (not e!4342328))))

(declare-fun lt!2580559 () List!70316)

(declare-fun content!14506 (List!70316) (InoxSet Regex!18573))

(assert (=> d!2250317 (= res!2937973 (= (content!14506 lt!2580559) ((_ map or) (content!14506 (exprs!8013 ct1!232)) (content!14506 (exprs!8013 ct2!328)))))))

(declare-fun e!4342327 () List!70316)

(assert (=> d!2250317 (= lt!2580559 e!4342327)))

(declare-fun c!1345050 () Bool)

(assert (=> d!2250317 (= c!1345050 ((_ is Nil!70192) (exprs!8013 ct1!232)))))

(assert (=> d!2250317 (= (++!16431 (exprs!8013 ct1!232) (exprs!8013 ct2!328)) lt!2580559)))

(declare-fun b!7242545 () Bool)

(assert (=> b!7242545 (= e!4342328 (or (not (= (exprs!8013 ct2!328) Nil!70192)) (= lt!2580559 (exprs!8013 ct1!232))))))

(declare-fun b!7242543 () Bool)

(assert (=> b!7242543 (= e!4342327 (Cons!70192 (h!76640 (exprs!8013 ct1!232)) (++!16431 (t!384367 (exprs!8013 ct1!232)) (exprs!8013 ct2!328))))))

(declare-fun b!7242544 () Bool)

(declare-fun res!2937974 () Bool)

(assert (=> b!7242544 (=> (not res!2937974) (not e!4342328))))

(declare-fun size!41640 (List!70316) Int)

(assert (=> b!7242544 (= res!2937974 (= (size!41640 lt!2580559) (+ (size!41640 (exprs!8013 ct1!232)) (size!41640 (exprs!8013 ct2!328)))))))

(declare-fun b!7242542 () Bool)

(assert (=> b!7242542 (= e!4342327 (exprs!8013 ct2!328))))

(assert (= (and d!2250317 c!1345050) b!7242542))

(assert (= (and d!2250317 (not c!1345050)) b!7242543))

(assert (= (and d!2250317 res!2937973) b!7242544))

(assert (= (and b!7242544 res!2937974) b!7242545))

(declare-fun m!7917502 () Bool)

(assert (=> d!2250317 m!7917502))

(declare-fun m!7917506 () Bool)

(assert (=> d!2250317 m!7917506))

(declare-fun m!7917508 () Bool)

(assert (=> d!2250317 m!7917508))

(declare-fun m!7917512 () Bool)

(assert (=> b!7242543 m!7917512))

(declare-fun m!7917514 () Bool)

(assert (=> b!7242544 m!7917514))

(declare-fun m!7917516 () Bool)

(assert (=> b!7242544 m!7917516))

(declare-fun m!7917518 () Bool)

(assert (=> b!7242544 m!7917518))

(assert (=> b!7242486 d!2250317))

(declare-fun d!2250329 () Bool)

(assert (=> d!2250329 (forall!17413 (++!16431 (exprs!8013 ct1!232) (exprs!8013 ct2!328)) lambda!442230)))

(declare-fun lt!2580562 () Unit!163732)

(declare-fun choose!55813 (List!70316 List!70316 Int) Unit!163732)

(assert (=> d!2250329 (= lt!2580562 (choose!55813 (exprs!8013 ct1!232) (exprs!8013 ct2!328) lambda!442230))))

(assert (=> d!2250329 (forall!17413 (exprs!8013 ct1!232) lambda!442230)))

(assert (=> d!2250329 (= (lemmaConcatPreservesForall!1382 (exprs!8013 ct1!232) (exprs!8013 ct2!328) lambda!442230) lt!2580562)))

(declare-fun bs!1904442 () Bool)

(assert (= bs!1904442 d!2250329))

(assert (=> bs!1904442 m!7917360))

(assert (=> bs!1904442 m!7917360))

(declare-fun m!7917522 () Bool)

(assert (=> bs!1904442 m!7917522))

(declare-fun m!7917524 () Bool)

(assert (=> bs!1904442 m!7917524))

(declare-fun m!7917526 () Bool)

(assert (=> bs!1904442 m!7917526))

(assert (=> b!7242486 d!2250329))

(declare-fun b!7242563 () Bool)

(declare-fun e!4342337 () Bool)

(declare-fun tp!2035697 () Bool)

(declare-fun tp!2035698 () Bool)

(assert (=> b!7242563 (= e!4342337 (and tp!2035697 tp!2035698))))

(assert (=> b!7242485 (= tp!2035681 e!4342337)))

(assert (= (and b!7242485 ((_ is Cons!70192) (exprs!8013 ct1!232))) b!7242563))

(declare-fun b!7242571 () Bool)

(declare-fun e!4342343 () Bool)

(declare-fun tp!2035705 () Bool)

(assert (=> b!7242571 (= e!4342343 (and tp_is_empty!46611 tp!2035705))))

(assert (=> b!7242483 (= tp!2035684 e!4342343)))

(assert (= (and b!7242483 ((_ is Cons!70194) (t!384369 s2!1849))) b!7242571))

(declare-fun b!7242572 () Bool)

(declare-fun e!4342344 () Bool)

(declare-fun tp!2035706 () Bool)

(declare-fun tp!2035707 () Bool)

(assert (=> b!7242572 (= e!4342344 (and tp!2035706 tp!2035707))))

(assert (=> b!7242488 (= tp!2035682 e!4342344)))

(assert (= (and b!7242488 ((_ is Cons!70192) (exprs!8013 ct2!328))) b!7242572))

(declare-fun b!7242573 () Bool)

(declare-fun e!4342345 () Bool)

(declare-fun tp!2035708 () Bool)

(assert (=> b!7242573 (= e!4342345 (and tp_is_empty!46611 tp!2035708))))

(assert (=> b!7242482 (= tp!2035683 e!4342345)))

(assert (= (and b!7242482 ((_ is Cons!70194) (t!384369 s1!1971))) b!7242573))

(check-sat (not b!7242563) tp_is_empty!46611 (not b!7242573) (not d!2250287) (not d!2250283) (not d!2250303) (not d!2250307) (not b!7242500) (not b!7242512) (not b!7242543) (not d!2250295) (not d!2250313) (not b!7242544) (not b!7242572) (not b!7242531) (not b!7242530) (not d!2250299) (not b!7242515) (not d!2250291) (not b!7242571) (not d!2250311) (not b!7242513) (not d!2250317) (not d!2250329) (not d!2250309) (not b!7242514))
(check-sat)
