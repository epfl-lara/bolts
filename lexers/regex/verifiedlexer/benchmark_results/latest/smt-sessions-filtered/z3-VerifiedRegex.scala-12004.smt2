; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!672474 () Bool)

(assert start!672474)

(declare-fun b!6994587 () Bool)

(assert (=> b!6994587 true))

(declare-fun b!6994572 () Bool)

(assert (=> b!6994572 true))

(declare-fun b!6994594 () Bool)

(assert (=> b!6994594 true))

(declare-fun bs!1862768 () Bool)

(declare-fun b!6994580 () Bool)

(assert (= bs!1862768 (and b!6994580 b!6994587)))

(declare-fun lambda!404016 () Int)

(declare-fun lambda!404012 () Int)

(assert (=> bs!1862768 (not (= lambda!404016 lambda!404012))))

(declare-fun e!4204246 () Bool)

(declare-fun e!4204249 () Bool)

(assert (=> b!6994572 (= e!4204246 e!4204249)))

(declare-fun res!2853293 () Bool)

(assert (=> b!6994572 (=> res!2853293 e!4204249)))

(declare-datatypes ((C!34780 0))(
  ( (C!34781 (val!27092 Int)) )
))
(declare-datatypes ((Regex!17255 0))(
  ( (ElementMatch!17255 (c!1297674 C!34780)) (Concat!26100 (regOne!35022 Regex!17255) (regTwo!35022 Regex!17255)) (EmptyExpr!17255) (Star!17255 (reg!17584 Regex!17255)) (EmptyLang!17255) (Union!17255 (regOne!35023 Regex!17255) (regTwo!35023 Regex!17255)) )
))
(declare-datatypes ((List!67310 0))(
  ( (Nil!67186) (Cons!67186 (h!73634 Regex!17255) (t!381057 List!67310)) )
))
(declare-datatypes ((Context!12502 0))(
  ( (Context!12503 (exprs!6751 List!67310)) )
))
(declare-fun lt!2492378 () Context!12502)

(declare-fun lt!2492381 () Context!12502)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12502))

(declare-fun lt!2492393 () Context!12502)

(assert (=> b!6994572 (= res!2853293 (or (not (= lt!2492378 lt!2492393)) (not (select z1!570 lt!2492381))))))

(declare-fun ct2!306 () Context!12502)

(declare-fun ++!15211 (List!67310 List!67310) List!67310)

(assert (=> b!6994572 (= lt!2492378 (Context!12503 (++!15211 (exprs!6751 lt!2492381) (exprs!6751 ct2!306))))))

(declare-datatypes ((Unit!161165 0))(
  ( (Unit!161166) )
))
(declare-fun lt!2492388 () Unit!161165)

(declare-fun lambda!404014 () Int)

(declare-fun lemmaConcatPreservesForall!591 (List!67310 List!67310 Int) Unit!161165)

(assert (=> b!6994572 (= lt!2492388 (lemmaConcatPreservesForall!591 (exprs!6751 lt!2492381) (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lambda!404013 () Int)

(declare-fun mapPost2!110 ((InoxSet Context!12502) Int Context!12502) Context!12502)

(assert (=> b!6994572 (= lt!2492381 (mapPost2!110 z1!570 lambda!404013 lt!2492393))))

(declare-fun b!6994573 () Bool)

(declare-fun e!4204247 () Bool)

(assert (=> b!6994573 (= e!4204249 e!4204247)))

(declare-fun res!2853297 () Bool)

(assert (=> b!6994573 (=> res!2853297 e!4204247)))

(declare-fun lt!2492365 () (InoxSet Context!12502))

(declare-fun lt!2492352 () (InoxSet Context!12502))

(assert (=> b!6994573 (= res!2853297 (not (= lt!2492365 lt!2492352)))))

(assert (=> b!6994573 (= lt!2492365 (store ((as const (Array Context!12502 Bool)) false) lt!2492378 true))))

(declare-fun lt!2492340 () Unit!161165)

(assert (=> b!6994573 (= lt!2492340 (lemmaConcatPreservesForall!591 (exprs!6751 lt!2492381) (exprs!6751 ct2!306) lambda!404014))))

(declare-fun b!6994574 () Bool)

(declare-fun e!4204244 () Bool)

(declare-fun e!4204257 () Bool)

(assert (=> b!6994574 (= e!4204244 e!4204257)))

(declare-fun res!2853307 () Bool)

(assert (=> b!6994574 (=> res!2853307 e!4204257)))

(declare-fun nullable!7015 (Regex!17255) Bool)

(assert (=> b!6994574 (= res!2853307 (not (nullable!7015 (h!73634 (exprs!6751 lt!2492381)))))))

(declare-fun lt!2492376 () Context!12502)

(declare-fun lt!2492371 () List!67310)

(assert (=> b!6994574 (= lt!2492376 (Context!12503 lt!2492371))))

(declare-fun tail!13279 (List!67310) List!67310)

(assert (=> b!6994574 (= lt!2492371 (tail!13279 (exprs!6751 lt!2492381)))))

(declare-fun b!6994575 () Bool)

(declare-fun res!2853296 () Bool)

(declare-fun e!4204245 () Bool)

(assert (=> b!6994575 (=> (not res!2853296) (not e!4204245))))

(declare-datatypes ((List!67311 0))(
  ( (Nil!67187) (Cons!67187 (h!73635 C!34780) (t!381058 List!67311)) )
))
(declare-fun s!7408 () List!67311)

(get-info :version)

(assert (=> b!6994575 (= res!2853296 ((_ is Cons!67187) s!7408))))

(declare-fun b!6994576 () Bool)

(declare-fun res!2853289 () Bool)

(declare-fun e!4204242 () Bool)

(assert (=> b!6994576 (=> res!2853289 e!4204242)))

(declare-datatypes ((tuple2!67856 0))(
  ( (tuple2!67857 (_1!37231 List!67311) (_2!37231 List!67311)) )
))
(declare-fun lt!2492380 () tuple2!67856)

(declare-fun ++!15212 (List!67311 List!67311) List!67311)

(assert (=> b!6994576 (= res!2853289 (not (= (++!15212 (_1!37231 lt!2492380) (_2!37231 lt!2492380)) s!7408)))))

(declare-fun b!6994577 () Bool)

(declare-fun e!4204255 () Bool)

(declare-fun tp!1930416 () Bool)

(assert (=> b!6994577 (= e!4204255 tp!1930416)))

(declare-fun b!6994578 () Bool)

(declare-fun e!4204253 () Bool)

(declare-fun e!4204243 () Bool)

(assert (=> b!6994578 (= e!4204253 e!4204243)))

(declare-fun res!2853302 () Bool)

(assert (=> b!6994578 (=> res!2853302 e!4204243)))

(declare-fun e!4204258 () Bool)

(assert (=> b!6994578 (= res!2853302 e!4204258)))

(declare-fun res!2853304 () Bool)

(assert (=> b!6994578 (=> (not res!2853304) (not e!4204258))))

(declare-fun lt!2492353 () Bool)

(declare-fun lt!2492339 () Bool)

(assert (=> b!6994578 (= res!2853304 (not (= lt!2492353 lt!2492339)))))

(declare-fun lt!2492343 () (InoxSet Context!12502))

(declare-fun matchZipper!2795 ((InoxSet Context!12502) List!67311) Bool)

(assert (=> b!6994578 (= lt!2492353 (matchZipper!2795 lt!2492343 (t!381058 s!7408)))))

(declare-fun lt!2492358 () Unit!161165)

(assert (=> b!6994578 (= lt!2492358 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492344 () (InoxSet Context!12502))

(declare-fun e!4204241 () Bool)

(assert (=> b!6994578 (= (matchZipper!2795 lt!2492344 (t!381058 s!7408)) e!4204241)))

(declare-fun res!2853292 () Bool)

(assert (=> b!6994578 (=> res!2853292 e!4204241)))

(assert (=> b!6994578 (= res!2853292 lt!2492339)))

(declare-fun lt!2492362 () (InoxSet Context!12502))

(assert (=> b!6994578 (= lt!2492339 (matchZipper!2795 lt!2492362 (t!381058 s!7408)))))

(declare-fun lt!2492391 () Unit!161165)

(declare-fun lt!2492373 () (InoxSet Context!12502))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1428 ((InoxSet Context!12502) (InoxSet Context!12502) List!67311) Unit!161165)

(assert (=> b!6994578 (= lt!2492391 (lemmaZipperConcatMatchesSameAsBothZippers!1428 lt!2492362 lt!2492373 (t!381058 s!7408)))))

(declare-fun lt!2492360 () Unit!161165)

(assert (=> b!6994578 (= lt!2492360 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492363 () Unit!161165)

(assert (=> b!6994578 (= lt!2492363 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun res!2853310 () Bool)

(assert (=> start!672474 (=> (not res!2853310) (not e!4204245))))

(declare-fun lt!2492379 () (InoxSet Context!12502))

(assert (=> start!672474 (= res!2853310 (matchZipper!2795 lt!2492379 s!7408))))

(declare-fun appendTo!376 ((InoxSet Context!12502) Context!12502) (InoxSet Context!12502))

(assert (=> start!672474 (= lt!2492379 (appendTo!376 z1!570 ct2!306))))

(assert (=> start!672474 e!4204245))

(declare-fun condSetEmpty!47967 () Bool)

(assert (=> start!672474 (= condSetEmpty!47967 (= z1!570 ((as const (Array Context!12502 Bool)) false)))))

(declare-fun setRes!47967 () Bool)

(assert (=> start!672474 setRes!47967))

(declare-fun inv!85996 (Context!12502) Bool)

(assert (=> start!672474 (and (inv!85996 ct2!306) e!4204255)))

(declare-fun e!4204251 () Bool)

(assert (=> start!672474 e!4204251))

(declare-fun b!6994579 () Bool)

(declare-fun e!4204248 () Bool)

(declare-fun e!4204254 () Bool)

(assert (=> b!6994579 (= e!4204248 e!4204254)))

(declare-fun res!2853309 () Bool)

(assert (=> b!6994579 (=> res!2853309 e!4204254)))

(declare-fun lt!2492357 () (InoxSet Context!12502))

(assert (=> b!6994579 (= res!2853309 (not (matchZipper!2795 lt!2492357 (_1!37231 lt!2492380))))))

(declare-fun exists!3061 ((InoxSet Context!12502) Int) Bool)

(assert (=> b!6994579 (exists!3061 lt!2492357 lambda!404016)))

(declare-fun lt!2492338 () Unit!161165)

(declare-fun lemmaContainsThenExists!85 ((InoxSet Context!12502) Context!12502 Int) Unit!161165)

(assert (=> b!6994579 (= lt!2492338 (lemmaContainsThenExists!85 lt!2492357 lt!2492381 lambda!404016))))

(assert (=> b!6994579 (= lt!2492357 (store ((as const (Array Context!12502 Bool)) false) lt!2492381 true))))

(declare-fun lt!2492350 () (InoxSet Context!12502))

(assert (=> b!6994579 (exists!3061 lt!2492350 lambda!404016)))

(declare-fun lt!2492361 () Unit!161165)

(assert (=> b!6994579 (= lt!2492361 (lemmaContainsThenExists!85 lt!2492350 lt!2492376 lambda!404016))))

(declare-fun res!2853305 () Bool)

(assert (=> b!6994580 (=> res!2853305 e!4204242)))

(assert (=> b!6994580 (= res!2853305 (not (exists!3061 lt!2492350 lambda!404016)))))

(declare-fun b!6994581 () Bool)

(declare-fun e!4204250 () Bool)

(assert (=> b!6994581 (= e!4204250 e!4204242)))

(declare-fun res!2853290 () Bool)

(assert (=> b!6994581 (=> res!2853290 e!4204242)))

(assert (=> b!6994581 (= res!2853290 (not (matchZipper!2795 lt!2492350 (_1!37231 lt!2492380))))))

(declare-datatypes ((Option!16760 0))(
  ( (None!16759) (Some!16759 (v!53031 tuple2!67856)) )
))
(declare-fun lt!2492356 () Option!16760)

(declare-fun get!23552 (Option!16760) tuple2!67856)

(assert (=> b!6994581 (= lt!2492380 (get!23552 lt!2492356))))

(declare-fun isDefined!13461 (Option!16760) Bool)

(assert (=> b!6994581 (isDefined!13461 lt!2492356)))

(declare-fun lt!2492386 () (InoxSet Context!12502))

(declare-fun findConcatSeparationZippers!276 ((InoxSet Context!12502) (InoxSet Context!12502) List!67311 List!67311 List!67311) Option!16760)

(assert (=> b!6994581 (= lt!2492356 (findConcatSeparationZippers!276 lt!2492350 lt!2492386 Nil!67187 s!7408 s!7408))))

(assert (=> b!6994581 (= lt!2492386 (store ((as const (Array Context!12502 Bool)) false) ct2!306 true))))

(declare-fun lt!2492345 () Unit!161165)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!276 ((InoxSet Context!12502) Context!12502 List!67311) Unit!161165)

(assert (=> b!6994581 (= lt!2492345 (lemmaConcatZipperMatchesStringThenFindConcatDefined!276 lt!2492350 ct2!306 s!7408))))

(declare-fun b!6994582 () Bool)

(declare-fun res!2853299 () Bool)

(assert (=> b!6994582 (=> res!2853299 e!4204242)))

(assert (=> b!6994582 (= res!2853299 (not (matchZipper!2795 lt!2492386 (_2!37231 lt!2492380))))))

(declare-fun b!6994583 () Bool)

(assert (=> b!6994583 (= e!4204241 (matchZipper!2795 lt!2492373 (t!381058 s!7408)))))

(declare-fun b!6994584 () Bool)

(declare-fun tp_is_empty!43735 () Bool)

(declare-fun tp!1930413 () Bool)

(assert (=> b!6994584 (= e!4204251 (and tp_is_empty!43735 tp!1930413))))

(declare-fun b!6994585 () Bool)

(declare-fun res!2853301 () Bool)

(assert (=> b!6994585 (=> res!2853301 e!4204243)))

(assert (=> b!6994585 (= res!2853301 (not lt!2492353))))

(declare-fun b!6994586 () Bool)

(declare-fun e!4204256 () Bool)

(declare-fun tp!1930414 () Bool)

(assert (=> b!6994586 (= e!4204256 tp!1930414)))

(assert (=> b!6994587 (= e!4204245 (not e!4204246))))

(declare-fun res!2853312 () Bool)

(assert (=> b!6994587 (=> res!2853312 e!4204246)))

(assert (=> b!6994587 (= res!2853312 (not (matchZipper!2795 lt!2492352 s!7408)))))

(assert (=> b!6994587 (= lt!2492352 (store ((as const (Array Context!12502 Bool)) false) lt!2492393 true))))

(declare-fun getWitness!1164 ((InoxSet Context!12502) Int) Context!12502)

(assert (=> b!6994587 (= lt!2492393 (getWitness!1164 lt!2492379 lambda!404012))))

(declare-datatypes ((List!67312 0))(
  ( (Nil!67188) (Cons!67188 (h!73636 Context!12502) (t!381059 List!67312)) )
))
(declare-fun lt!2492370 () List!67312)

(declare-fun exists!3062 (List!67312 Int) Bool)

(assert (=> b!6994587 (exists!3062 lt!2492370 lambda!404012)))

(declare-fun lt!2492355 () Unit!161165)

(declare-fun lemmaZipperMatchesExistsMatchingContext!224 (List!67312 List!67311) Unit!161165)

(assert (=> b!6994587 (= lt!2492355 (lemmaZipperMatchesExistsMatchingContext!224 lt!2492370 s!7408))))

(declare-fun toList!10615 ((InoxSet Context!12502)) List!67312)

(assert (=> b!6994587 (= lt!2492370 (toList!10615 lt!2492379))))

(declare-fun tp!1930415 () Bool)

(declare-fun setElem!47967 () Context!12502)

(declare-fun setNonEmpty!47967 () Bool)

(assert (=> setNonEmpty!47967 (= setRes!47967 (and tp!1930415 (inv!85996 setElem!47967) e!4204256))))

(declare-fun setRest!47967 () (InoxSet Context!12502))

(assert (=> setNonEmpty!47967 (= z1!570 ((_ map or) (store ((as const (Array Context!12502 Bool)) false) setElem!47967 true) setRest!47967))))

(declare-fun b!6994588 () Bool)

(declare-fun res!2853300 () Bool)

(assert (=> b!6994588 (=> res!2853300 e!4204242)))

(declare-fun isEmpty!39213 (List!67311) Bool)

(assert (=> b!6994588 (= res!2853300 (not (isEmpty!39213 (_1!37231 lt!2492380))))))

(declare-fun b!6994589 () Bool)

(declare-fun e!4204240 () Bool)

(assert (=> b!6994589 (= e!4204243 e!4204240)))

(declare-fun res!2853308 () Bool)

(assert (=> b!6994589 (=> res!2853308 e!4204240)))

(assert (=> b!6994589 (= res!2853308 (not (matchZipper!2795 lt!2492373 (t!381058 s!7408))))))

(declare-fun lt!2492364 () Unit!161165)

(assert (=> b!6994589 (= lt!2492364 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun b!6994590 () Bool)

(assert (=> b!6994590 (= e!4204257 e!4204253)))

(declare-fun res!2853314 () Bool)

(assert (=> b!6994590 (=> res!2853314 e!4204253)))

(assert (=> b!6994590 (= res!2853314 (not (= lt!2492343 lt!2492344)))))

(assert (=> b!6994590 (= lt!2492344 ((_ map or) lt!2492362 lt!2492373))))

(declare-fun lt!2492372 () Context!12502)

(declare-fun derivationStepZipperUp!1905 (Context!12502 C!34780) (InoxSet Context!12502))

(assert (=> b!6994590 (= lt!2492373 (derivationStepZipperUp!1905 lt!2492372 (h!73635 s!7408)))))

(declare-fun derivationStepZipperDown!1973 (Regex!17255 Context!12502 C!34780) (InoxSet Context!12502))

(assert (=> b!6994590 (= lt!2492362 (derivationStepZipperDown!1973 (h!73634 (exprs!6751 lt!2492381)) lt!2492372 (h!73635 s!7408)))))

(assert (=> b!6994590 (= lt!2492372 (Context!12503 (++!15211 lt!2492371 (exprs!6751 ct2!306))))))

(declare-fun lt!2492389 () Unit!161165)

(assert (=> b!6994590 (= lt!2492389 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492351 () Unit!161165)

(assert (=> b!6994590 (= lt!2492351 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun b!6994591 () Bool)

(assert (=> b!6994591 (= e!4204254 (= (++!15212 Nil!67187 s!7408) s!7408))))

(assert (=> b!6994591 (isDefined!13461 (findConcatSeparationZippers!276 lt!2492357 lt!2492386 Nil!67187 s!7408 s!7408))))

(declare-fun lt!2492382 () Unit!161165)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!2 ((InoxSet Context!12502) (InoxSet Context!12502) List!67311 List!67311 List!67311 List!67311 List!67311) Unit!161165)

(assert (=> b!6994591 (= lt!2492382 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!2 lt!2492357 lt!2492386 (_1!37231 lt!2492380) (_2!37231 lt!2492380) s!7408 Nil!67187 s!7408))))

(declare-fun b!6994592 () Bool)

(declare-fun res!2853313 () Bool)

(assert (=> b!6994592 (=> res!2853313 e!4204248)))

(declare-fun nullableContext!52 (Context!12502) Bool)

(assert (=> b!6994592 (= res!2853313 (not (nullableContext!52 lt!2492381)))))

(declare-fun setIsEmpty!47967 () Bool)

(assert (=> setIsEmpty!47967 setRes!47967))

(declare-fun b!6994593 () Bool)

(declare-fun res!2853306 () Bool)

(assert (=> b!6994593 (=> res!2853306 e!4204244)))

(assert (=> b!6994593 (= res!2853306 (not ((_ is Cons!67186) (exprs!6751 lt!2492381))))))

(assert (=> b!6994594 (= e!4204247 e!4204244)))

(declare-fun res!2853311 () Bool)

(assert (=> b!6994594 (=> res!2853311 e!4204244)))

(declare-fun derivationStepZipper!2735 ((InoxSet Context!12502) C!34780) (InoxSet Context!12502))

(assert (=> b!6994594 (= res!2853311 (not (= (derivationStepZipper!2735 lt!2492365 (h!73635 s!7408)) lt!2492343)))))

(declare-fun lambda!404015 () Int)

(declare-fun flatMap!2241 ((InoxSet Context!12502) Int) (InoxSet Context!12502))

(assert (=> b!6994594 (= (flatMap!2241 lt!2492365 lambda!404015) (derivationStepZipperUp!1905 lt!2492378 (h!73635 s!7408)))))

(declare-fun lt!2492392 () Unit!161165)

(declare-fun lemmaFlatMapOnSingletonSet!1756 ((InoxSet Context!12502) Context!12502 Int) Unit!161165)

(assert (=> b!6994594 (= lt!2492392 (lemmaFlatMapOnSingletonSet!1756 lt!2492365 lt!2492378 lambda!404015))))

(assert (=> b!6994594 (= lt!2492343 (derivationStepZipperUp!1905 lt!2492378 (h!73635 s!7408)))))

(declare-fun lt!2492374 () Unit!161165)

(assert (=> b!6994594 (= lt!2492374 (lemmaConcatPreservesForall!591 (exprs!6751 lt!2492381) (exprs!6751 ct2!306) lambda!404014))))

(declare-fun b!6994595 () Bool)

(assert (=> b!6994595 (= e!4204258 (not (matchZipper!2795 lt!2492373 (t!381058 s!7408))))))

(declare-fun lt!2492366 () Unit!161165)

(assert (=> b!6994595 (= lt!2492366 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun b!6994596 () Bool)

(assert (=> b!6994596 (= e!4204242 e!4204248)))

(declare-fun res!2853295 () Bool)

(assert (=> b!6994596 (=> res!2853295 e!4204248)))

(assert (=> b!6994596 (= res!2853295 (not (nullableContext!52 lt!2492376)))))

(declare-fun lt!2492354 () Context!12502)

(assert (=> b!6994596 (= lt!2492354 (getWitness!1164 lt!2492350 lambda!404016))))

(declare-fun b!6994597 () Bool)

(declare-fun res!2853303 () Bool)

(assert (=> b!6994597 (=> res!2853303 e!4204250)))

(declare-fun lt!2492349 () Int)

(declare-fun zipperDepthTotal!476 (List!67312) Int)

(assert (=> b!6994597 (= res!2853303 (>= (zipperDepthTotal!476 (Cons!67188 lt!2492376 Nil!67188)) lt!2492349))))

(declare-fun b!6994598 () Bool)

(declare-fun res!2853315 () Bool)

(assert (=> b!6994598 (=> res!2853315 e!4204246)))

(assert (=> b!6994598 (= res!2853315 (not (select lt!2492379 lt!2492393)))))

(declare-fun b!6994599 () Bool)

(declare-fun e!4204252 () Bool)

(assert (=> b!6994599 (= e!4204252 e!4204250)))

(declare-fun res!2853316 () Bool)

(assert (=> b!6994599 (=> res!2853316 e!4204250)))

(declare-fun lt!2492367 () Int)

(declare-fun contextDepthTotal!448 (Context!12502) Int)

(assert (=> b!6994599 (= res!2853316 (<= lt!2492367 (contextDepthTotal!448 lt!2492376)))))

(assert (=> b!6994599 (<= lt!2492367 lt!2492349)))

(declare-fun lt!2492347 () List!67312)

(assert (=> b!6994599 (= lt!2492349 (zipperDepthTotal!476 lt!2492347))))

(assert (=> b!6994599 (= lt!2492367 (contextDepthTotal!448 lt!2492381))))

(declare-fun lt!2492377 () Unit!161165)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!16 (List!67312 Context!12502) Unit!161165)

(assert (=> b!6994599 (= lt!2492377 (lemmaTotalDepthZipperLargerThanOfAnyContext!16 lt!2492347 lt!2492381))))

(assert (=> b!6994599 (= lt!2492347 (toList!10615 z1!570))))

(declare-fun lt!2492369 () Unit!161165)

(assert (=> b!6994599 (= lt!2492369 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492346 () Unit!161165)

(assert (=> b!6994599 (= lt!2492346 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492384 () Unit!161165)

(assert (=> b!6994599 (= lt!2492384 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(assert (=> b!6994599 (= (flatMap!2241 lt!2492350 lambda!404015) (derivationStepZipperUp!1905 lt!2492376 (h!73635 s!7408)))))

(declare-fun lt!2492341 () Unit!161165)

(assert (=> b!6994599 (= lt!2492341 (lemmaFlatMapOnSingletonSet!1756 lt!2492350 lt!2492376 lambda!404015))))

(declare-fun map!15529 ((InoxSet Context!12502) Int) (InoxSet Context!12502))

(assert (=> b!6994599 (= (map!15529 lt!2492350 lambda!404013) (store ((as const (Array Context!12502 Bool)) false) (Context!12503 (++!15211 lt!2492371 (exprs!6751 ct2!306))) true))))

(declare-fun lt!2492387 () Unit!161165)

(assert (=> b!6994599 (= lt!2492387 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492390 () Unit!161165)

(declare-fun lemmaMapOnSingletonSet!320 ((InoxSet Context!12502) Context!12502 Int) Unit!161165)

(assert (=> b!6994599 (= lt!2492390 (lemmaMapOnSingletonSet!320 lt!2492350 lt!2492376 lambda!404013))))

(assert (=> b!6994599 (= lt!2492350 (store ((as const (Array Context!12502 Bool)) false) lt!2492376 true))))

(declare-fun b!6994600 () Bool)

(declare-fun e!4204239 () Bool)

(assert (=> b!6994600 (= e!4204239 e!4204252)))

(declare-fun res!2853298 () Bool)

(assert (=> b!6994600 (=> res!2853298 e!4204252)))

(declare-fun lt!2492383 () (InoxSet Context!12502))

(assert (=> b!6994600 (= res!2853298 (not (matchZipper!2795 lt!2492383 s!7408)))))

(declare-fun lt!2492385 () Unit!161165)

(assert (=> b!6994600 (= lt!2492385 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun b!6994601 () Bool)

(assert (=> b!6994601 (= e!4204240 e!4204239)))

(declare-fun res!2853291 () Bool)

(assert (=> b!6994601 (=> res!2853291 e!4204239)))

(assert (=> b!6994601 (= res!2853291 (not (= (derivationStepZipper!2735 lt!2492383 (h!73635 s!7408)) lt!2492373)))))

(declare-fun lt!2492342 () Unit!161165)

(assert (=> b!6994601 (= lt!2492342 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492359 () Unit!161165)

(assert (=> b!6994601 (= lt!2492359 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(assert (=> b!6994601 (= (flatMap!2241 lt!2492383 lambda!404015) (derivationStepZipperUp!1905 lt!2492372 (h!73635 s!7408)))))

(declare-fun lt!2492348 () Unit!161165)

(assert (=> b!6994601 (= lt!2492348 (lemmaFlatMapOnSingletonSet!1756 lt!2492383 lt!2492372 lambda!404015))))

(assert (=> b!6994601 (= lt!2492383 (store ((as const (Array Context!12502 Bool)) false) lt!2492372 true))))

(declare-fun lt!2492375 () Unit!161165)

(assert (=> b!6994601 (= lt!2492375 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun lt!2492368 () Unit!161165)

(assert (=> b!6994601 (= lt!2492368 (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(declare-fun b!6994602 () Bool)

(declare-fun res!2853294 () Bool)

(assert (=> b!6994602 (=> res!2853294 e!4204244)))

(declare-fun isEmpty!39214 (List!67310) Bool)

(assert (=> b!6994602 (= res!2853294 (isEmpty!39214 (exprs!6751 lt!2492381)))))

(assert (= (and start!672474 res!2853310) b!6994575))

(assert (= (and b!6994575 res!2853296) b!6994587))

(assert (= (and b!6994587 (not res!2853312)) b!6994598))

(assert (= (and b!6994598 (not res!2853315)) b!6994572))

(assert (= (and b!6994572 (not res!2853293)) b!6994573))

(assert (= (and b!6994573 (not res!2853297)) b!6994594))

(assert (= (and b!6994594 (not res!2853311)) b!6994593))

(assert (= (and b!6994593 (not res!2853306)) b!6994602))

(assert (= (and b!6994602 (not res!2853294)) b!6994574))

(assert (= (and b!6994574 (not res!2853307)) b!6994590))

(assert (= (and b!6994590 (not res!2853314)) b!6994578))

(assert (= (and b!6994578 (not res!2853292)) b!6994583))

(assert (= (and b!6994578 res!2853304) b!6994595))

(assert (= (and b!6994578 (not res!2853302)) b!6994585))

(assert (= (and b!6994585 (not res!2853301)) b!6994589))

(assert (= (and b!6994589 (not res!2853308)) b!6994601))

(assert (= (and b!6994601 (not res!2853291)) b!6994600))

(assert (= (and b!6994600 (not res!2853298)) b!6994599))

(assert (= (and b!6994599 (not res!2853316)) b!6994597))

(assert (= (and b!6994597 (not res!2853303)) b!6994581))

(assert (= (and b!6994581 (not res!2853290)) b!6994582))

(assert (= (and b!6994582 (not res!2853299)) b!6994576))

(assert (= (and b!6994576 (not res!2853289)) b!6994588))

(assert (= (and b!6994588 (not res!2853300)) b!6994580))

(assert (= (and b!6994580 (not res!2853305)) b!6994596))

(assert (= (and b!6994596 (not res!2853295)) b!6994592))

(assert (= (and b!6994592 (not res!2853313)) b!6994579))

(assert (= (and b!6994579 (not res!2853309)) b!6994591))

(assert (= (and start!672474 condSetEmpty!47967) setIsEmpty!47967))

(assert (= (and start!672474 (not condSetEmpty!47967)) setNonEmpty!47967))

(assert (= setNonEmpty!47967 b!6994586))

(assert (= start!672474 b!6994577))

(assert (= (and start!672474 ((_ is Cons!67187) s!7408)) b!6994584))

(declare-fun m!7685296 () Bool)

(assert (=> b!6994594 m!7685296))

(declare-fun m!7685298 () Bool)

(assert (=> b!6994594 m!7685298))

(declare-fun m!7685300 () Bool)

(assert (=> b!6994594 m!7685300))

(declare-fun m!7685302 () Bool)

(assert (=> b!6994594 m!7685302))

(declare-fun m!7685304 () Bool)

(assert (=> b!6994594 m!7685304))

(declare-fun m!7685306 () Bool)

(assert (=> b!6994599 m!7685306))

(declare-fun m!7685308 () Bool)

(assert (=> b!6994599 m!7685308))

(declare-fun m!7685310 () Bool)

(assert (=> b!6994599 m!7685310))

(declare-fun m!7685312 () Bool)

(assert (=> b!6994599 m!7685312))

(declare-fun m!7685314 () Bool)

(assert (=> b!6994599 m!7685314))

(declare-fun m!7685316 () Bool)

(assert (=> b!6994599 m!7685316))

(declare-fun m!7685318 () Bool)

(assert (=> b!6994599 m!7685318))

(assert (=> b!6994599 m!7685318))

(declare-fun m!7685320 () Bool)

(assert (=> b!6994599 m!7685320))

(assert (=> b!6994599 m!7685318))

(assert (=> b!6994599 m!7685318))

(declare-fun m!7685322 () Bool)

(assert (=> b!6994599 m!7685322))

(declare-fun m!7685324 () Bool)

(assert (=> b!6994599 m!7685324))

(declare-fun m!7685326 () Bool)

(assert (=> b!6994599 m!7685326))

(declare-fun m!7685328 () Bool)

(assert (=> b!6994599 m!7685328))

(declare-fun m!7685330 () Bool)

(assert (=> b!6994599 m!7685330))

(declare-fun m!7685332 () Bool)

(assert (=> b!6994599 m!7685332))

(declare-fun m!7685334 () Bool)

(assert (=> start!672474 m!7685334))

(declare-fun m!7685336 () Bool)

(assert (=> start!672474 m!7685336))

(declare-fun m!7685338 () Bool)

(assert (=> start!672474 m!7685338))

(declare-fun m!7685340 () Bool)

(assert (=> b!6994574 m!7685340))

(declare-fun m!7685342 () Bool)

(assert (=> b!6994574 m!7685342))

(declare-fun m!7685344 () Bool)

(assert (=> b!6994579 m!7685344))

(declare-fun m!7685346 () Bool)

(assert (=> b!6994579 m!7685346))

(declare-fun m!7685348 () Bool)

(assert (=> b!6994579 m!7685348))

(declare-fun m!7685350 () Bool)

(assert (=> b!6994579 m!7685350))

(declare-fun m!7685352 () Bool)

(assert (=> b!6994579 m!7685352))

(declare-fun m!7685354 () Bool)

(assert (=> b!6994579 m!7685354))

(declare-fun m!7685356 () Bool)

(assert (=> b!6994583 m!7685356))

(assert (=> b!6994590 m!7685326))

(declare-fun m!7685358 () Bool)

(assert (=> b!6994590 m!7685358))

(assert (=> b!6994590 m!7685318))

(declare-fun m!7685360 () Bool)

(assert (=> b!6994590 m!7685360))

(assert (=> b!6994590 m!7685318))

(declare-fun m!7685362 () Bool)

(assert (=> b!6994602 m!7685362))

(declare-fun m!7685364 () Bool)

(assert (=> b!6994596 m!7685364))

(declare-fun m!7685366 () Bool)

(assert (=> b!6994596 m!7685366))

(declare-fun m!7685368 () Bool)

(assert (=> b!6994591 m!7685368))

(declare-fun m!7685370 () Bool)

(assert (=> b!6994591 m!7685370))

(assert (=> b!6994591 m!7685370))

(declare-fun m!7685372 () Bool)

(assert (=> b!6994591 m!7685372))

(declare-fun m!7685374 () Bool)

(assert (=> b!6994591 m!7685374))

(declare-fun m!7685376 () Bool)

(assert (=> b!6994572 m!7685376))

(declare-fun m!7685378 () Bool)

(assert (=> b!6994572 m!7685378))

(assert (=> b!6994572 m!7685304))

(declare-fun m!7685380 () Bool)

(assert (=> b!6994572 m!7685380))

(declare-fun m!7685382 () Bool)

(assert (=> b!6994597 m!7685382))

(declare-fun m!7685384 () Bool)

(assert (=> b!6994576 m!7685384))

(declare-fun m!7685386 () Bool)

(assert (=> setNonEmpty!47967 m!7685386))

(assert (=> b!6994580 m!7685350))

(declare-fun m!7685388 () Bool)

(assert (=> b!6994588 m!7685388))

(declare-fun m!7685390 () Bool)

(assert (=> b!6994601 m!7685390))

(declare-fun m!7685392 () Bool)

(assert (=> b!6994601 m!7685392))

(declare-fun m!7685394 () Bool)

(assert (=> b!6994601 m!7685394))

(declare-fun m!7685396 () Bool)

(assert (=> b!6994601 m!7685396))

(assert (=> b!6994601 m!7685318))

(assert (=> b!6994601 m!7685360))

(assert (=> b!6994601 m!7685318))

(assert (=> b!6994601 m!7685318))

(assert (=> b!6994601 m!7685318))

(declare-fun m!7685398 () Bool)

(assert (=> b!6994573 m!7685398))

(assert (=> b!6994573 m!7685304))

(declare-fun m!7685400 () Bool)

(assert (=> b!6994581 m!7685400))

(declare-fun m!7685402 () Bool)

(assert (=> b!6994581 m!7685402))

(declare-fun m!7685404 () Bool)

(assert (=> b!6994581 m!7685404))

(declare-fun m!7685406 () Bool)

(assert (=> b!6994581 m!7685406))

(declare-fun m!7685408 () Bool)

(assert (=> b!6994581 m!7685408))

(declare-fun m!7685410 () Bool)

(assert (=> b!6994581 m!7685410))

(declare-fun m!7685412 () Bool)

(assert (=> b!6994600 m!7685412))

(assert (=> b!6994600 m!7685318))

(assert (=> b!6994589 m!7685356))

(assert (=> b!6994589 m!7685318))

(declare-fun m!7685414 () Bool)

(assert (=> b!6994592 m!7685414))

(declare-fun m!7685416 () Bool)

(assert (=> b!6994578 m!7685416))

(declare-fun m!7685418 () Bool)

(assert (=> b!6994578 m!7685418))

(declare-fun m!7685420 () Bool)

(assert (=> b!6994578 m!7685420))

(declare-fun m!7685422 () Bool)

(assert (=> b!6994578 m!7685422))

(assert (=> b!6994578 m!7685318))

(assert (=> b!6994578 m!7685318))

(assert (=> b!6994578 m!7685318))

(declare-fun m!7685424 () Bool)

(assert (=> b!6994587 m!7685424))

(declare-fun m!7685426 () Bool)

(assert (=> b!6994587 m!7685426))

(declare-fun m!7685428 () Bool)

(assert (=> b!6994587 m!7685428))

(declare-fun m!7685430 () Bool)

(assert (=> b!6994587 m!7685430))

(declare-fun m!7685432 () Bool)

(assert (=> b!6994587 m!7685432))

(declare-fun m!7685434 () Bool)

(assert (=> b!6994587 m!7685434))

(assert (=> b!6994595 m!7685356))

(assert (=> b!6994595 m!7685318))

(declare-fun m!7685436 () Bool)

(assert (=> b!6994598 m!7685436))

(declare-fun m!7685438 () Bool)

(assert (=> b!6994582 m!7685438))

(check-sat (not start!672474) (not b!6994583) (not b!6994576) (not b!6994592) (not b!6994590) (not b!6994584) (not b!6994588) (not b!6994574) (not b!6994580) (not b!6994582) (not b!6994587) (not b!6994597) (not b!6994596) (not b!6994579) (not b!6994594) (not b!6994600) tp_is_empty!43735 (not b!6994573) (not b!6994601) (not b!6994581) (not b!6994591) (not setNonEmpty!47967) (not b!6994586) (not b!6994599) (not b!6994589) (not b!6994578) (not b!6994595) (not b!6994577) (not b!6994602) (not b!6994572))
(check-sat)
(get-model)

(declare-fun d!2178713 () Bool)

(declare-fun e!4204291 () Bool)

(assert (=> d!2178713 e!4204291))

(declare-fun res!2853332 () Bool)

(assert (=> d!2178713 (=> (not res!2853332) (not e!4204291))))

(declare-fun lt!2492402 () List!67312)

(declare-fun noDuplicate!2534 (List!67312) Bool)

(assert (=> d!2178713 (= res!2853332 (noDuplicate!2534 lt!2492402))))

(declare-fun choose!52364 ((InoxSet Context!12502)) List!67312)

(assert (=> d!2178713 (= lt!2492402 (choose!52364 lt!2492379))))

(assert (=> d!2178713 (= (toList!10615 lt!2492379) lt!2492402)))

(declare-fun b!6994666 () Bool)

(declare-fun content!13285 (List!67312) (InoxSet Context!12502))

(assert (=> b!6994666 (= e!4204291 (= (content!13285 lt!2492402) lt!2492379))))

(assert (= (and d!2178713 res!2853332) b!6994666))

(declare-fun m!7685480 () Bool)

(assert (=> d!2178713 m!7685480))

(declare-fun m!7685482 () Bool)

(assert (=> d!2178713 m!7685482))

(declare-fun m!7685484 () Bool)

(assert (=> b!6994666 m!7685484))

(assert (=> b!6994587 d!2178713))

(declare-fun d!2178715 () Bool)

(declare-fun e!4204303 () Bool)

(assert (=> d!2178715 e!4204303))

(declare-fun res!2853337 () Bool)

(assert (=> d!2178715 (=> (not res!2853337) (not e!4204303))))

(declare-fun lt!2492406 () Context!12502)

(declare-fun dynLambda!26958 (Int Context!12502) Bool)

(assert (=> d!2178715 (= res!2853337 (dynLambda!26958 lambda!404012 lt!2492406))))

(declare-fun getWitness!1166 (List!67312 Int) Context!12502)

(assert (=> d!2178715 (= lt!2492406 (getWitness!1166 (toList!10615 lt!2492379) lambda!404012))))

(assert (=> d!2178715 (exists!3061 lt!2492379 lambda!404012)))

(assert (=> d!2178715 (= (getWitness!1164 lt!2492379 lambda!404012) lt!2492406)))

(declare-fun b!6994687 () Bool)

(assert (=> b!6994687 (= e!4204303 (select lt!2492379 lt!2492406))))

(assert (= (and d!2178715 res!2853337) b!6994687))

(declare-fun b_lambda!263003 () Bool)

(assert (=> (not b_lambda!263003) (not d!2178715)))

(declare-fun m!7685510 () Bool)

(assert (=> d!2178715 m!7685510))

(assert (=> d!2178715 m!7685430))

(assert (=> d!2178715 m!7685430))

(declare-fun m!7685512 () Bool)

(assert (=> d!2178715 m!7685512))

(declare-fun m!7685514 () Bool)

(assert (=> d!2178715 m!7685514))

(declare-fun m!7685516 () Bool)

(assert (=> b!6994687 m!7685516))

(assert (=> b!6994587 d!2178715))

(declare-fun d!2178729 () Bool)

(declare-fun c!1297712 () Bool)

(assert (=> d!2178729 (= c!1297712 (isEmpty!39213 s!7408))))

(declare-fun e!4204310 () Bool)

(assert (=> d!2178729 (= (matchZipper!2795 lt!2492352 s!7408) e!4204310)))

(declare-fun b!6994697 () Bool)

(declare-fun nullableZipper!2452 ((InoxSet Context!12502)) Bool)

(assert (=> b!6994697 (= e!4204310 (nullableZipper!2452 lt!2492352))))

(declare-fun b!6994698 () Bool)

(declare-fun head!14127 (List!67311) C!34780)

(declare-fun tail!13281 (List!67311) List!67311)

(assert (=> b!6994698 (= e!4204310 (matchZipper!2795 (derivationStepZipper!2735 lt!2492352 (head!14127 s!7408)) (tail!13281 s!7408)))))

(assert (= (and d!2178729 c!1297712) b!6994697))

(assert (= (and d!2178729 (not c!1297712)) b!6994698))

(declare-fun m!7685534 () Bool)

(assert (=> d!2178729 m!7685534))

(declare-fun m!7685536 () Bool)

(assert (=> b!6994697 m!7685536))

(declare-fun m!7685538 () Bool)

(assert (=> b!6994698 m!7685538))

(assert (=> b!6994698 m!7685538))

(declare-fun m!7685540 () Bool)

(assert (=> b!6994698 m!7685540))

(declare-fun m!7685542 () Bool)

(assert (=> b!6994698 m!7685542))

(assert (=> b!6994698 m!7685540))

(assert (=> b!6994698 m!7685542))

(declare-fun m!7685544 () Bool)

(assert (=> b!6994698 m!7685544))

(assert (=> b!6994587 d!2178729))

(declare-fun bs!1862784 () Bool)

(declare-fun d!2178737 () Bool)

(assert (= bs!1862784 (and d!2178737 b!6994587)))

(declare-fun lambda!404031 () Int)

(assert (=> bs!1862784 (not (= lambda!404031 lambda!404012))))

(declare-fun bs!1862785 () Bool)

(assert (= bs!1862785 (and d!2178737 b!6994580)))

(assert (=> bs!1862785 (not (= lambda!404031 lambda!404016))))

(assert (=> d!2178737 true))

(declare-fun order!27955 () Int)

(declare-fun dynLambda!26959 (Int Int) Int)

(assert (=> d!2178737 (< (dynLambda!26959 order!27955 lambda!404012) (dynLambda!26959 order!27955 lambda!404031))))

(declare-fun forall!16164 (List!67312 Int) Bool)

(assert (=> d!2178737 (= (exists!3062 lt!2492370 lambda!404012) (not (forall!16164 lt!2492370 lambda!404031)))))

(declare-fun bs!1862786 () Bool)

(assert (= bs!1862786 d!2178737))

(declare-fun m!7685556 () Bool)

(assert (=> bs!1862786 m!7685556))

(assert (=> b!6994587 d!2178737))

(declare-fun bs!1862792 () Bool)

(declare-fun d!2178743 () Bool)

(assert (= bs!1862792 (and d!2178743 b!6994587)))

(declare-fun lambda!404042 () Int)

(assert (=> bs!1862792 (= lambda!404042 lambda!404012)))

(declare-fun bs!1862793 () Bool)

(assert (= bs!1862793 (and d!2178743 b!6994580)))

(assert (=> bs!1862793 (not (= lambda!404042 lambda!404016))))

(declare-fun bs!1862794 () Bool)

(assert (= bs!1862794 (and d!2178743 d!2178737)))

(assert (=> bs!1862794 (not (= lambda!404042 lambda!404031))))

(assert (=> d!2178743 true))

(assert (=> d!2178743 (exists!3062 lt!2492370 lambda!404042)))

(declare-fun lt!2492425 () Unit!161165)

(declare-fun choose!52366 (List!67312 List!67311) Unit!161165)

(assert (=> d!2178743 (= lt!2492425 (choose!52366 lt!2492370 s!7408))))

(assert (=> d!2178743 (matchZipper!2795 (content!13285 lt!2492370) s!7408)))

(assert (=> d!2178743 (= (lemmaZipperMatchesExistsMatchingContext!224 lt!2492370 s!7408) lt!2492425)))

(declare-fun bs!1862795 () Bool)

(assert (= bs!1862795 d!2178743))

(declare-fun m!7685590 () Bool)

(assert (=> bs!1862795 m!7685590))

(declare-fun m!7685592 () Bool)

(assert (=> bs!1862795 m!7685592))

(declare-fun m!7685594 () Bool)

(assert (=> bs!1862795 m!7685594))

(assert (=> bs!1862795 m!7685594))

(declare-fun m!7685596 () Bool)

(assert (=> bs!1862795 m!7685596))

(assert (=> b!6994587 d!2178743))

(declare-fun d!2178759 () Bool)

(assert (=> d!2178759 (= (isEmpty!39214 (exprs!6751 lt!2492381)) ((_ is Nil!67186) (exprs!6751 lt!2492381)))))

(assert (=> b!6994602 d!2178759))

(declare-fun d!2178761 () Bool)

(declare-fun c!1297723 () Bool)

(assert (=> d!2178761 (= c!1297723 (isEmpty!39213 (t!381058 s!7408)))))

(declare-fun e!4204320 () Bool)

(assert (=> d!2178761 (= (matchZipper!2795 lt!2492373 (t!381058 s!7408)) e!4204320)))

(declare-fun b!6994717 () Bool)

(assert (=> b!6994717 (= e!4204320 (nullableZipper!2452 lt!2492373))))

(declare-fun b!6994718 () Bool)

(assert (=> b!6994718 (= e!4204320 (matchZipper!2795 (derivationStepZipper!2735 lt!2492373 (head!14127 (t!381058 s!7408))) (tail!13281 (t!381058 s!7408))))))

(assert (= (and d!2178761 c!1297723) b!6994717))

(assert (= (and d!2178761 (not c!1297723)) b!6994718))

(declare-fun m!7685602 () Bool)

(assert (=> d!2178761 m!7685602))

(declare-fun m!7685604 () Bool)

(assert (=> b!6994717 m!7685604))

(declare-fun m!7685606 () Bool)

(assert (=> b!6994718 m!7685606))

(assert (=> b!6994718 m!7685606))

(declare-fun m!7685608 () Bool)

(assert (=> b!6994718 m!7685608))

(declare-fun m!7685610 () Bool)

(assert (=> b!6994718 m!7685610))

(assert (=> b!6994718 m!7685608))

(assert (=> b!6994718 m!7685610))

(declare-fun m!7685612 () Bool)

(assert (=> b!6994718 m!7685612))

(assert (=> b!6994583 d!2178761))

(declare-fun d!2178765 () Bool)

(declare-fun c!1297724 () Bool)

(assert (=> d!2178765 (= c!1297724 (isEmpty!39213 (_1!37231 lt!2492380)))))

(declare-fun e!4204321 () Bool)

(assert (=> d!2178765 (= (matchZipper!2795 lt!2492350 (_1!37231 lt!2492380)) e!4204321)))

(declare-fun b!6994719 () Bool)

(assert (=> b!6994719 (= e!4204321 (nullableZipper!2452 lt!2492350))))

(declare-fun b!6994720 () Bool)

(assert (=> b!6994720 (= e!4204321 (matchZipper!2795 (derivationStepZipper!2735 lt!2492350 (head!14127 (_1!37231 lt!2492380))) (tail!13281 (_1!37231 lt!2492380))))))

(assert (= (and d!2178765 c!1297724) b!6994719))

(assert (= (and d!2178765 (not c!1297724)) b!6994720))

(assert (=> d!2178765 m!7685388))

(declare-fun m!7685614 () Bool)

(assert (=> b!6994719 m!7685614))

(declare-fun m!7685616 () Bool)

(assert (=> b!6994720 m!7685616))

(assert (=> b!6994720 m!7685616))

(declare-fun m!7685618 () Bool)

(assert (=> b!6994720 m!7685618))

(declare-fun m!7685620 () Bool)

(assert (=> b!6994720 m!7685620))

(assert (=> b!6994720 m!7685618))

(assert (=> b!6994720 m!7685620))

(declare-fun m!7685622 () Bool)

(assert (=> b!6994720 m!7685622))

(assert (=> b!6994581 d!2178765))

(declare-fun d!2178767 () Bool)

(assert (=> d!2178767 (isDefined!13461 (findConcatSeparationZippers!276 lt!2492350 (store ((as const (Array Context!12502 Bool)) false) ct2!306 true) Nil!67187 s!7408 s!7408))))

(declare-fun lt!2492444 () Unit!161165)

(declare-fun choose!52367 ((InoxSet Context!12502) Context!12502 List!67311) Unit!161165)

(assert (=> d!2178767 (= lt!2492444 (choose!52367 lt!2492350 ct2!306 s!7408))))

(assert (=> d!2178767 (matchZipper!2795 (appendTo!376 lt!2492350 ct2!306) s!7408)))

(assert (=> d!2178767 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!276 lt!2492350 ct2!306 s!7408) lt!2492444)))

(declare-fun bs!1862802 () Bool)

(assert (= bs!1862802 d!2178767))

(declare-fun m!7685688 () Bool)

(assert (=> bs!1862802 m!7685688))

(declare-fun m!7685690 () Bool)

(assert (=> bs!1862802 m!7685690))

(assert (=> bs!1862802 m!7685402))

(assert (=> bs!1862802 m!7685688))

(declare-fun m!7685692 () Bool)

(assert (=> bs!1862802 m!7685692))

(declare-fun m!7685694 () Bool)

(assert (=> bs!1862802 m!7685694))

(assert (=> bs!1862802 m!7685402))

(assert (=> bs!1862802 m!7685692))

(declare-fun m!7685696 () Bool)

(assert (=> bs!1862802 m!7685696))

(assert (=> b!6994581 d!2178767))

(declare-fun d!2178795 () Bool)

(assert (=> d!2178795 (= (get!23552 lt!2492356) (v!53031 lt!2492356))))

(assert (=> b!6994581 d!2178795))

(declare-fun b!6994813 () Bool)

(declare-fun lt!2492474 () Unit!161165)

(declare-fun lt!2492472 () Unit!161165)

(assert (=> b!6994813 (= lt!2492474 lt!2492472)))

(assert (=> b!6994813 (= (++!15212 (++!15212 Nil!67187 (Cons!67187 (h!73635 s!7408) Nil!67187)) (t!381058 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2872 (List!67311 C!34780 List!67311 List!67311) Unit!161165)

(assert (=> b!6994813 (= lt!2492472 (lemmaMoveElementToOtherListKeepsConcatEq!2872 Nil!67187 (h!73635 s!7408) (t!381058 s!7408) s!7408))))

(declare-fun e!4204376 () Option!16760)

(assert (=> b!6994813 (= e!4204376 (findConcatSeparationZippers!276 lt!2492350 lt!2492386 (++!15212 Nil!67187 (Cons!67187 (h!73635 s!7408) Nil!67187)) (t!381058 s!7408) s!7408))))

(declare-fun b!6994814 () Bool)

(declare-fun e!4204373 () Bool)

(declare-fun lt!2492473 () Option!16760)

(assert (=> b!6994814 (= e!4204373 (= (++!15212 (_1!37231 (get!23552 lt!2492473)) (_2!37231 (get!23552 lt!2492473))) s!7408))))

(declare-fun b!6994815 () Bool)

(declare-fun res!2853389 () Bool)

(assert (=> b!6994815 (=> (not res!2853389) (not e!4204373))))

(assert (=> b!6994815 (= res!2853389 (matchZipper!2795 lt!2492350 (_1!37231 (get!23552 lt!2492473))))))

(declare-fun b!6994817 () Bool)

(assert (=> b!6994817 (= e!4204376 None!16759)))

(declare-fun b!6994818 () Bool)

(declare-fun e!4204374 () Bool)

(assert (=> b!6994818 (= e!4204374 (matchZipper!2795 lt!2492386 s!7408))))

(declare-fun b!6994819 () Bool)

(declare-fun e!4204377 () Option!16760)

(assert (=> b!6994819 (= e!4204377 (Some!16759 (tuple2!67857 Nil!67187 s!7408)))))

(declare-fun d!2178797 () Bool)

(declare-fun e!4204375 () Bool)

(assert (=> d!2178797 e!4204375))

(declare-fun res!2853386 () Bool)

(assert (=> d!2178797 (=> res!2853386 e!4204375)))

(assert (=> d!2178797 (= res!2853386 e!4204373)))

(declare-fun res!2853387 () Bool)

(assert (=> d!2178797 (=> (not res!2853387) (not e!4204373))))

(assert (=> d!2178797 (= res!2853387 (isDefined!13461 lt!2492473))))

(assert (=> d!2178797 (= lt!2492473 e!4204377)))

(declare-fun c!1297752 () Bool)

(assert (=> d!2178797 (= c!1297752 e!4204374)))

(declare-fun res!2853385 () Bool)

(assert (=> d!2178797 (=> (not res!2853385) (not e!4204374))))

(assert (=> d!2178797 (= res!2853385 (matchZipper!2795 lt!2492350 Nil!67187))))

(assert (=> d!2178797 (= (++!15212 Nil!67187 s!7408) s!7408)))

(assert (=> d!2178797 (= (findConcatSeparationZippers!276 lt!2492350 lt!2492386 Nil!67187 s!7408 s!7408) lt!2492473)))

(declare-fun b!6994816 () Bool)

(assert (=> b!6994816 (= e!4204375 (not (isDefined!13461 lt!2492473)))))

(declare-fun b!6994820 () Bool)

(assert (=> b!6994820 (= e!4204377 e!4204376)))

(declare-fun c!1297751 () Bool)

(assert (=> b!6994820 (= c!1297751 ((_ is Nil!67187) s!7408))))

(declare-fun b!6994821 () Bool)

(declare-fun res!2853388 () Bool)

(assert (=> b!6994821 (=> (not res!2853388) (not e!4204373))))

(assert (=> b!6994821 (= res!2853388 (matchZipper!2795 lt!2492386 (_2!37231 (get!23552 lt!2492473))))))

(assert (= (and d!2178797 res!2853385) b!6994818))

(assert (= (and d!2178797 c!1297752) b!6994819))

(assert (= (and d!2178797 (not c!1297752)) b!6994820))

(assert (= (and b!6994820 c!1297751) b!6994817))

(assert (= (and b!6994820 (not c!1297751)) b!6994813))

(assert (= (and d!2178797 res!2853387) b!6994815))

(assert (= (and b!6994815 res!2853389) b!6994821))

(assert (= (and b!6994821 res!2853388) b!6994814))

(assert (= (and d!2178797 (not res!2853386)) b!6994816))

(declare-fun m!7685788 () Bool)

(assert (=> b!6994821 m!7685788))

(declare-fun m!7685790 () Bool)

(assert (=> b!6994821 m!7685790))

(assert (=> b!6994815 m!7685788))

(declare-fun m!7685792 () Bool)

(assert (=> b!6994815 m!7685792))

(assert (=> b!6994814 m!7685788))

(declare-fun m!7685804 () Bool)

(assert (=> b!6994814 m!7685804))

(declare-fun m!7685806 () Bool)

(assert (=> b!6994816 m!7685806))

(declare-fun m!7685808 () Bool)

(assert (=> b!6994818 m!7685808))

(declare-fun m!7685810 () Bool)

(assert (=> b!6994813 m!7685810))

(assert (=> b!6994813 m!7685810))

(declare-fun m!7685812 () Bool)

(assert (=> b!6994813 m!7685812))

(declare-fun m!7685814 () Bool)

(assert (=> b!6994813 m!7685814))

(assert (=> b!6994813 m!7685810))

(declare-fun m!7685816 () Bool)

(assert (=> b!6994813 m!7685816))

(assert (=> d!2178797 m!7685806))

(declare-fun m!7685818 () Bool)

(assert (=> d!2178797 m!7685818))

(assert (=> d!2178797 m!7685368))

(assert (=> b!6994581 d!2178797))

(declare-fun d!2178823 () Bool)

(declare-fun isEmpty!39216 (Option!16760) Bool)

(assert (=> d!2178823 (= (isDefined!13461 lt!2492356) (not (isEmpty!39216 lt!2492356)))))

(declare-fun bs!1862808 () Bool)

(assert (= bs!1862808 d!2178823))

(declare-fun m!7685820 () Bool)

(assert (=> bs!1862808 m!7685820))

(assert (=> b!6994581 d!2178823))

(declare-fun b!6994849 () Bool)

(declare-fun e!4204395 () (InoxSet Context!12502))

(declare-fun e!4204396 () (InoxSet Context!12502))

(assert (=> b!6994849 (= e!4204395 e!4204396)))

(declare-fun c!1297761 () Bool)

(assert (=> b!6994849 (= c!1297761 ((_ is Cons!67186) (exprs!6751 lt!2492372)))))

(declare-fun bm!634918 () Bool)

(declare-fun call!634923 () (InoxSet Context!12502))

(assert (=> bm!634918 (= call!634923 (derivationStepZipperDown!1973 (h!73634 (exprs!6751 lt!2492372)) (Context!12503 (t!381057 (exprs!6751 lt!2492372))) (h!73635 s!7408)))))

(declare-fun b!6994850 () Bool)

(assert (=> b!6994850 (= e!4204396 ((as const (Array Context!12502 Bool)) false))))

(declare-fun b!6994851 () Bool)

(assert (=> b!6994851 (= e!4204395 ((_ map or) call!634923 (derivationStepZipperUp!1905 (Context!12503 (t!381057 (exprs!6751 lt!2492372))) (h!73635 s!7408))))))

(declare-fun b!6994852 () Bool)

(declare-fun e!4204397 () Bool)

(assert (=> b!6994852 (= e!4204397 (nullable!7015 (h!73634 (exprs!6751 lt!2492372))))))

(declare-fun d!2178825 () Bool)

(declare-fun c!1297762 () Bool)

(assert (=> d!2178825 (= c!1297762 e!4204397)))

(declare-fun res!2853400 () Bool)

(assert (=> d!2178825 (=> (not res!2853400) (not e!4204397))))

(assert (=> d!2178825 (= res!2853400 ((_ is Cons!67186) (exprs!6751 lt!2492372)))))

(assert (=> d!2178825 (= (derivationStepZipperUp!1905 lt!2492372 (h!73635 s!7408)) e!4204395)))

(declare-fun b!6994853 () Bool)

(assert (=> b!6994853 (= e!4204396 call!634923)))

(assert (= (and d!2178825 res!2853400) b!6994852))

(assert (= (and d!2178825 c!1297762) b!6994851))

(assert (= (and d!2178825 (not c!1297762)) b!6994849))

(assert (= (and b!6994849 c!1297761) b!6994853))

(assert (= (and b!6994849 (not c!1297761)) b!6994850))

(assert (= (or b!6994851 b!6994853) bm!634918))

(declare-fun m!7685888 () Bool)

(assert (=> bm!634918 m!7685888))

(declare-fun m!7685890 () Bool)

(assert (=> b!6994851 m!7685890))

(declare-fun m!7685892 () Bool)

(assert (=> b!6994852 m!7685892))

(assert (=> b!6994601 d!2178825))

(declare-fun bs!1862833 () Bool)

(declare-fun d!2178853 () Bool)

(assert (= bs!1862833 (and d!2178853 b!6994594)))

(declare-fun lambda!404048 () Int)

(assert (=> bs!1862833 (= lambda!404048 lambda!404015)))

(assert (=> d!2178853 true))

(assert (=> d!2178853 (= (derivationStepZipper!2735 lt!2492383 (h!73635 s!7408)) (flatMap!2241 lt!2492383 lambda!404048))))

(declare-fun bs!1862834 () Bool)

(assert (= bs!1862834 d!2178853))

(declare-fun m!7685910 () Bool)

(assert (=> bs!1862834 m!7685910))

(assert (=> b!6994601 d!2178853))

(declare-fun d!2178869 () Bool)

(declare-fun choose!52368 ((InoxSet Context!12502) Int) (InoxSet Context!12502))

(assert (=> d!2178869 (= (flatMap!2241 lt!2492383 lambda!404015) (choose!52368 lt!2492383 lambda!404015))))

(declare-fun bs!1862835 () Bool)

(assert (= bs!1862835 d!2178869))

(declare-fun m!7685912 () Bool)

(assert (=> bs!1862835 m!7685912))

(assert (=> b!6994601 d!2178869))

(declare-fun d!2178871 () Bool)

(declare-fun dynLambda!26960 (Int Context!12502) (InoxSet Context!12502))

(assert (=> d!2178871 (= (flatMap!2241 lt!2492383 lambda!404015) (dynLambda!26960 lambda!404015 lt!2492372))))

(declare-fun lt!2492495 () Unit!161165)

(declare-fun choose!52369 ((InoxSet Context!12502) Context!12502 Int) Unit!161165)

(assert (=> d!2178871 (= lt!2492495 (choose!52369 lt!2492383 lt!2492372 lambda!404015))))

(assert (=> d!2178871 (= lt!2492383 (store ((as const (Array Context!12502 Bool)) false) lt!2492372 true))))

(assert (=> d!2178871 (= (lemmaFlatMapOnSingletonSet!1756 lt!2492383 lt!2492372 lambda!404015) lt!2492495)))

(declare-fun b_lambda!263033 () Bool)

(assert (=> (not b_lambda!263033) (not d!2178871)))

(declare-fun bs!1862836 () Bool)

(assert (= bs!1862836 d!2178871))

(assert (=> bs!1862836 m!7685394))

(declare-fun m!7685914 () Bool)

(assert (=> bs!1862836 m!7685914))

(declare-fun m!7685916 () Bool)

(assert (=> bs!1862836 m!7685916))

(assert (=> bs!1862836 m!7685390))

(assert (=> b!6994601 d!2178871))

(declare-fun d!2178873 () Bool)

(declare-fun forall!16165 (List!67310 Int) Bool)

(assert (=> d!2178873 (forall!16165 (++!15211 lt!2492371 (exprs!6751 ct2!306)) lambda!404014)))

(declare-fun lt!2492498 () Unit!161165)

(declare-fun choose!52370 (List!67310 List!67310 Int) Unit!161165)

(assert (=> d!2178873 (= lt!2492498 (choose!52370 lt!2492371 (exprs!6751 ct2!306) lambda!404014))))

(assert (=> d!2178873 (forall!16165 lt!2492371 lambda!404014)))

(assert (=> d!2178873 (= (lemmaConcatPreservesForall!591 lt!2492371 (exprs!6751 ct2!306) lambda!404014) lt!2492498)))

(declare-fun bs!1862837 () Bool)

(assert (= bs!1862837 d!2178873))

(assert (=> bs!1862837 m!7685326))

(assert (=> bs!1862837 m!7685326))

(declare-fun m!7685918 () Bool)

(assert (=> bs!1862837 m!7685918))

(declare-fun m!7685920 () Bool)

(assert (=> bs!1862837 m!7685920))

(declare-fun m!7685922 () Bool)

(assert (=> bs!1862837 m!7685922))

(assert (=> b!6994601 d!2178873))

(declare-fun d!2178875 () Bool)

(declare-fun c!1297765 () Bool)

(assert (=> d!2178875 (= c!1297765 (isEmpty!39213 (_2!37231 lt!2492380)))))

(declare-fun e!4204408 () Bool)

(assert (=> d!2178875 (= (matchZipper!2795 lt!2492386 (_2!37231 lt!2492380)) e!4204408)))

(declare-fun b!6994872 () Bool)

(assert (=> b!6994872 (= e!4204408 (nullableZipper!2452 lt!2492386))))

(declare-fun b!6994873 () Bool)

(assert (=> b!6994873 (= e!4204408 (matchZipper!2795 (derivationStepZipper!2735 lt!2492386 (head!14127 (_2!37231 lt!2492380))) (tail!13281 (_2!37231 lt!2492380))))))

(assert (= (and d!2178875 c!1297765) b!6994872))

(assert (= (and d!2178875 (not c!1297765)) b!6994873))

(declare-fun m!7685924 () Bool)

(assert (=> d!2178875 m!7685924))

(declare-fun m!7685926 () Bool)

(assert (=> b!6994872 m!7685926))

(declare-fun m!7685928 () Bool)

(assert (=> b!6994873 m!7685928))

(assert (=> b!6994873 m!7685928))

(declare-fun m!7685930 () Bool)

(assert (=> b!6994873 m!7685930))

(declare-fun m!7685932 () Bool)

(assert (=> b!6994873 m!7685932))

(assert (=> b!6994873 m!7685930))

(assert (=> b!6994873 m!7685932))

(declare-fun m!7685934 () Bool)

(assert (=> b!6994873 m!7685934))

(assert (=> b!6994582 d!2178875))

(declare-fun b!6994874 () Bool)

(declare-fun e!4204409 () (InoxSet Context!12502))

(declare-fun e!4204410 () (InoxSet Context!12502))

(assert (=> b!6994874 (= e!4204409 e!4204410)))

(declare-fun c!1297766 () Bool)

(assert (=> b!6994874 (= c!1297766 ((_ is Cons!67186) (exprs!6751 lt!2492376)))))

(declare-fun bm!634919 () Bool)

(declare-fun call!634924 () (InoxSet Context!12502))

(assert (=> bm!634919 (= call!634924 (derivationStepZipperDown!1973 (h!73634 (exprs!6751 lt!2492376)) (Context!12503 (t!381057 (exprs!6751 lt!2492376))) (h!73635 s!7408)))))

(declare-fun b!6994875 () Bool)

(assert (=> b!6994875 (= e!4204410 ((as const (Array Context!12502 Bool)) false))))

(declare-fun b!6994876 () Bool)

(assert (=> b!6994876 (= e!4204409 ((_ map or) call!634924 (derivationStepZipperUp!1905 (Context!12503 (t!381057 (exprs!6751 lt!2492376))) (h!73635 s!7408))))))

(declare-fun b!6994877 () Bool)

(declare-fun e!4204411 () Bool)

(assert (=> b!6994877 (= e!4204411 (nullable!7015 (h!73634 (exprs!6751 lt!2492376))))))

(declare-fun d!2178877 () Bool)

(declare-fun c!1297767 () Bool)

(assert (=> d!2178877 (= c!1297767 e!4204411)))

(declare-fun res!2853401 () Bool)

(assert (=> d!2178877 (=> (not res!2853401) (not e!4204411))))

(assert (=> d!2178877 (= res!2853401 ((_ is Cons!67186) (exprs!6751 lt!2492376)))))

(assert (=> d!2178877 (= (derivationStepZipperUp!1905 lt!2492376 (h!73635 s!7408)) e!4204409)))

(declare-fun b!6994878 () Bool)

(assert (=> b!6994878 (= e!4204410 call!634924)))

(assert (= (and d!2178877 res!2853401) b!6994877))

(assert (= (and d!2178877 c!1297767) b!6994876))

(assert (= (and d!2178877 (not c!1297767)) b!6994874))

(assert (= (and b!6994874 c!1297766) b!6994878))

(assert (= (and b!6994874 (not c!1297766)) b!6994875))

(assert (= (or b!6994876 b!6994878) bm!634919))

(declare-fun m!7685936 () Bool)

(assert (=> bm!634919 m!7685936))

(declare-fun m!7685938 () Bool)

(assert (=> b!6994876 m!7685938))

(declare-fun m!7685940 () Bool)

(assert (=> b!6994877 m!7685940))

(assert (=> b!6994599 d!2178877))

(declare-fun d!2178879 () Bool)

(assert (=> d!2178879 (<= (contextDepthTotal!448 lt!2492381) (zipperDepthTotal!476 lt!2492347))))

(declare-fun lt!2492501 () Unit!161165)

(declare-fun choose!52372 (List!67312 Context!12502) Unit!161165)

(assert (=> d!2178879 (= lt!2492501 (choose!52372 lt!2492347 lt!2492381))))

(declare-fun contains!20415 (List!67312 Context!12502) Bool)

(assert (=> d!2178879 (contains!20415 lt!2492347 lt!2492381)))

(assert (=> d!2178879 (= (lemmaTotalDepthZipperLargerThanOfAnyContext!16 lt!2492347 lt!2492381) lt!2492501)))

(declare-fun bs!1862838 () Bool)

(assert (= bs!1862838 d!2178879))

(assert (=> bs!1862838 m!7685322))

(assert (=> bs!1862838 m!7685332))

(declare-fun m!7685942 () Bool)

(assert (=> bs!1862838 m!7685942))

(declare-fun m!7685944 () Bool)

(assert (=> bs!1862838 m!7685944))

(assert (=> b!6994599 d!2178879))

(declare-fun d!2178881 () Bool)

(declare-fun choose!52374 ((InoxSet Context!12502) Int) (InoxSet Context!12502))

(assert (=> d!2178881 (= (map!15529 lt!2492350 lambda!404013) (choose!52374 lt!2492350 lambda!404013))))

(declare-fun bs!1862839 () Bool)

(assert (= bs!1862839 d!2178881))

(declare-fun m!7685946 () Bool)

(assert (=> bs!1862839 m!7685946))

(assert (=> b!6994599 d!2178881))

(declare-fun d!2178883 () Bool)

(declare-fun e!4204416 () Bool)

(assert (=> d!2178883 e!4204416))

(declare-fun res!2853407 () Bool)

(assert (=> d!2178883 (=> (not res!2853407) (not e!4204416))))

(declare-fun lt!2492504 () List!67310)

(declare-fun content!13287 (List!67310) (InoxSet Regex!17255))

(assert (=> d!2178883 (= res!2853407 (= (content!13287 lt!2492504) ((_ map or) (content!13287 lt!2492371) (content!13287 (exprs!6751 ct2!306)))))))

(declare-fun e!4204417 () List!67310)

(assert (=> d!2178883 (= lt!2492504 e!4204417)))

(declare-fun c!1297771 () Bool)

(assert (=> d!2178883 (= c!1297771 ((_ is Nil!67186) lt!2492371))))

(assert (=> d!2178883 (= (++!15211 lt!2492371 (exprs!6751 ct2!306)) lt!2492504)))

(declare-fun b!6994889 () Bool)

(declare-fun res!2853406 () Bool)

(assert (=> b!6994889 (=> (not res!2853406) (not e!4204416))))

(declare-fun size!40920 (List!67310) Int)

(assert (=> b!6994889 (= res!2853406 (= (size!40920 lt!2492504) (+ (size!40920 lt!2492371) (size!40920 (exprs!6751 ct2!306)))))))

(declare-fun b!6994890 () Bool)

(assert (=> b!6994890 (= e!4204416 (or (not (= (exprs!6751 ct2!306) Nil!67186)) (= lt!2492504 lt!2492371)))))

(declare-fun b!6994887 () Bool)

(assert (=> b!6994887 (= e!4204417 (exprs!6751 ct2!306))))

(declare-fun b!6994888 () Bool)

(assert (=> b!6994888 (= e!4204417 (Cons!67186 (h!73634 lt!2492371) (++!15211 (t!381057 lt!2492371) (exprs!6751 ct2!306))))))

(assert (= (and d!2178883 c!1297771) b!6994887))

(assert (= (and d!2178883 (not c!1297771)) b!6994888))

(assert (= (and d!2178883 res!2853407) b!6994889))

(assert (= (and b!6994889 res!2853406) b!6994890))

(declare-fun m!7685948 () Bool)

(assert (=> d!2178883 m!7685948))

(declare-fun m!7685950 () Bool)

(assert (=> d!2178883 m!7685950))

(declare-fun m!7685952 () Bool)

(assert (=> d!2178883 m!7685952))

(declare-fun m!7685954 () Bool)

(assert (=> b!6994889 m!7685954))

(declare-fun m!7685956 () Bool)

(assert (=> b!6994889 m!7685956))

(declare-fun m!7685958 () Bool)

(assert (=> b!6994889 m!7685958))

(declare-fun m!7685960 () Bool)

(assert (=> b!6994888 m!7685960))

(assert (=> b!6994599 d!2178883))

(declare-fun d!2178885 () Bool)

(declare-fun dynLambda!26961 (Int Context!12502) Context!12502)

(assert (=> d!2178885 (= (map!15529 lt!2492350 lambda!404013) (store ((as const (Array Context!12502 Bool)) false) (dynLambda!26961 lambda!404013 lt!2492376) true))))

(declare-fun lt!2492507 () Unit!161165)

(declare-fun choose!52375 ((InoxSet Context!12502) Context!12502 Int) Unit!161165)

(assert (=> d!2178885 (= lt!2492507 (choose!52375 lt!2492350 lt!2492376 lambda!404013))))

(assert (=> d!2178885 (= lt!2492350 (store ((as const (Array Context!12502 Bool)) false) lt!2492376 true))))

(assert (=> d!2178885 (= (lemmaMapOnSingletonSet!320 lt!2492350 lt!2492376 lambda!404013) lt!2492507)))

(declare-fun b_lambda!263035 () Bool)

(assert (=> (not b_lambda!263035) (not d!2178885)))

(declare-fun bs!1862840 () Bool)

(assert (= bs!1862840 d!2178885))

(declare-fun m!7685962 () Bool)

(assert (=> bs!1862840 m!7685962))

(declare-fun m!7685964 () Bool)

(assert (=> bs!1862840 m!7685964))

(assert (=> bs!1862840 m!7685962))

(declare-fun m!7685966 () Bool)

(assert (=> bs!1862840 m!7685966))

(assert (=> bs!1862840 m!7685312))

(assert (=> bs!1862840 m!7685328))

(assert (=> b!6994599 d!2178885))

(declare-fun d!2178887 () Bool)

(declare-fun lt!2492510 () Int)

(assert (=> d!2178887 (>= lt!2492510 0)))

(declare-fun e!4204420 () Int)

(assert (=> d!2178887 (= lt!2492510 e!4204420)))

(declare-fun c!1297774 () Bool)

(assert (=> d!2178887 (= c!1297774 ((_ is Cons!67188) lt!2492347))))

(assert (=> d!2178887 (= (zipperDepthTotal!476 lt!2492347) lt!2492510)))

(declare-fun b!6994895 () Bool)

(assert (=> b!6994895 (= e!4204420 (+ (contextDepthTotal!448 (h!73636 lt!2492347)) (zipperDepthTotal!476 (t!381059 lt!2492347))))))

(declare-fun b!6994896 () Bool)

(assert (=> b!6994896 (= e!4204420 0)))

(assert (= (and d!2178887 c!1297774) b!6994895))

(assert (= (and d!2178887 (not c!1297774)) b!6994896))

(declare-fun m!7685968 () Bool)

(assert (=> b!6994895 m!7685968))

(declare-fun m!7685970 () Bool)

(assert (=> b!6994895 m!7685970))

(assert (=> b!6994599 d!2178887))

(declare-fun d!2178889 () Bool)

(declare-fun lt!2492513 () Int)

(assert (=> d!2178889 (>= lt!2492513 0)))

(declare-fun e!4204423 () Int)

(assert (=> d!2178889 (= lt!2492513 e!4204423)))

(declare-fun c!1297778 () Bool)

(assert (=> d!2178889 (= c!1297778 ((_ is Cons!67186) (exprs!6751 lt!2492381)))))

(assert (=> d!2178889 (= (contextDepthTotal!448 lt!2492381) lt!2492513)))

(declare-fun b!6994901 () Bool)

(declare-fun regexDepthTotal!273 (Regex!17255) Int)

(assert (=> b!6994901 (= e!4204423 (+ (regexDepthTotal!273 (h!73634 (exprs!6751 lt!2492381))) (contextDepthTotal!448 (Context!12503 (t!381057 (exprs!6751 lt!2492381))))))))

(declare-fun b!6994902 () Bool)

(assert (=> b!6994902 (= e!4204423 1)))

(assert (= (and d!2178889 c!1297778) b!6994901))

(assert (= (and d!2178889 (not c!1297778)) b!6994902))

(declare-fun m!7685972 () Bool)

(assert (=> b!6994901 m!7685972))

(declare-fun m!7685974 () Bool)

(assert (=> b!6994901 m!7685974))

(assert (=> b!6994599 d!2178889))

(assert (=> b!6994599 d!2178873))

(declare-fun d!2178891 () Bool)

(assert (=> d!2178891 (= (flatMap!2241 lt!2492350 lambda!404015) (choose!52368 lt!2492350 lambda!404015))))

(declare-fun bs!1862841 () Bool)

(assert (= bs!1862841 d!2178891))

(declare-fun m!7685976 () Bool)

(assert (=> bs!1862841 m!7685976))

(assert (=> b!6994599 d!2178891))

(declare-fun d!2178893 () Bool)

(declare-fun lt!2492514 () Int)

(assert (=> d!2178893 (>= lt!2492514 0)))

(declare-fun e!4204424 () Int)

(assert (=> d!2178893 (= lt!2492514 e!4204424)))

(declare-fun c!1297779 () Bool)

(assert (=> d!2178893 (= c!1297779 ((_ is Cons!67186) (exprs!6751 lt!2492376)))))

(assert (=> d!2178893 (= (contextDepthTotal!448 lt!2492376) lt!2492514)))

(declare-fun b!6994903 () Bool)

(assert (=> b!6994903 (= e!4204424 (+ (regexDepthTotal!273 (h!73634 (exprs!6751 lt!2492376))) (contextDepthTotal!448 (Context!12503 (t!381057 (exprs!6751 lt!2492376))))))))

(declare-fun b!6994904 () Bool)

(assert (=> b!6994904 (= e!4204424 1)))

(assert (= (and d!2178893 c!1297779) b!6994903))

(assert (= (and d!2178893 (not c!1297779)) b!6994904))

(declare-fun m!7685978 () Bool)

(assert (=> b!6994903 m!7685978))

(declare-fun m!7685980 () Bool)

(assert (=> b!6994903 m!7685980))

(assert (=> b!6994599 d!2178893))

(declare-fun d!2178895 () Bool)

(assert (=> d!2178895 (= (flatMap!2241 lt!2492350 lambda!404015) (dynLambda!26960 lambda!404015 lt!2492376))))

(declare-fun lt!2492515 () Unit!161165)

(assert (=> d!2178895 (= lt!2492515 (choose!52369 lt!2492350 lt!2492376 lambda!404015))))

(assert (=> d!2178895 (= lt!2492350 (store ((as const (Array Context!12502 Bool)) false) lt!2492376 true))))

(assert (=> d!2178895 (= (lemmaFlatMapOnSingletonSet!1756 lt!2492350 lt!2492376 lambda!404015) lt!2492515)))

(declare-fun b_lambda!263037 () Bool)

(assert (=> (not b_lambda!263037) (not d!2178895)))

(declare-fun bs!1862842 () Bool)

(assert (= bs!1862842 d!2178895))

(assert (=> bs!1862842 m!7685320))

(declare-fun m!7685982 () Bool)

(assert (=> bs!1862842 m!7685982))

(declare-fun m!7685984 () Bool)

(assert (=> bs!1862842 m!7685984))

(assert (=> bs!1862842 m!7685328))

(assert (=> b!6994599 d!2178895))

(declare-fun d!2178897 () Bool)

(declare-fun e!4204425 () Bool)

(assert (=> d!2178897 e!4204425))

(declare-fun res!2853408 () Bool)

(assert (=> d!2178897 (=> (not res!2853408) (not e!4204425))))

(declare-fun lt!2492516 () List!67312)

(assert (=> d!2178897 (= res!2853408 (noDuplicate!2534 lt!2492516))))

(assert (=> d!2178897 (= lt!2492516 (choose!52364 z1!570))))

(assert (=> d!2178897 (= (toList!10615 z1!570) lt!2492516)))

(declare-fun b!6994905 () Bool)

(assert (=> b!6994905 (= e!4204425 (= (content!13285 lt!2492516) z1!570))))

(assert (= (and d!2178897 res!2853408) b!6994905))

(declare-fun m!7685986 () Bool)

(assert (=> d!2178897 m!7685986))

(declare-fun m!7685988 () Bool)

(assert (=> d!2178897 m!7685988))

(declare-fun m!7685990 () Bool)

(assert (=> b!6994905 m!7685990))

(assert (=> b!6994599 d!2178897))

(declare-fun d!2178899 () Bool)

(declare-fun lt!2492519 () Bool)

(assert (=> d!2178899 (= lt!2492519 (exists!3062 (toList!10615 lt!2492350) lambda!404016))))

(declare-fun choose!52377 ((InoxSet Context!12502) Int) Bool)

(assert (=> d!2178899 (= lt!2492519 (choose!52377 lt!2492350 lambda!404016))))

(assert (=> d!2178899 (= (exists!3061 lt!2492350 lambda!404016) lt!2492519)))

(declare-fun bs!1862843 () Bool)

(assert (= bs!1862843 d!2178899))

(declare-fun m!7685992 () Bool)

(assert (=> bs!1862843 m!7685992))

(assert (=> bs!1862843 m!7685992))

(declare-fun m!7685994 () Bool)

(assert (=> bs!1862843 m!7685994))

(declare-fun m!7685996 () Bool)

(assert (=> bs!1862843 m!7685996))

(assert (=> b!6994580 d!2178899))

(declare-fun d!2178901 () Bool)

(declare-fun c!1297780 () Bool)

(assert (=> d!2178901 (= c!1297780 (isEmpty!39213 s!7408))))

(declare-fun e!4204426 () Bool)

(assert (=> d!2178901 (= (matchZipper!2795 lt!2492379 s!7408) e!4204426)))

(declare-fun b!6994906 () Bool)

(assert (=> b!6994906 (= e!4204426 (nullableZipper!2452 lt!2492379))))

(declare-fun b!6994907 () Bool)

(assert (=> b!6994907 (= e!4204426 (matchZipper!2795 (derivationStepZipper!2735 lt!2492379 (head!14127 s!7408)) (tail!13281 s!7408)))))

(assert (= (and d!2178901 c!1297780) b!6994906))

(assert (= (and d!2178901 (not c!1297780)) b!6994907))

(assert (=> d!2178901 m!7685534))

(declare-fun m!7685998 () Bool)

(assert (=> b!6994906 m!7685998))

(assert (=> b!6994907 m!7685538))

(assert (=> b!6994907 m!7685538))

(declare-fun m!7686000 () Bool)

(assert (=> b!6994907 m!7686000))

(assert (=> b!6994907 m!7685542))

(assert (=> b!6994907 m!7686000))

(assert (=> b!6994907 m!7685542))

(declare-fun m!7686002 () Bool)

(assert (=> b!6994907 m!7686002))

(assert (=> start!672474 d!2178901))

(declare-fun bs!1862844 () Bool)

(declare-fun d!2178903 () Bool)

(assert (= bs!1862844 (and d!2178903 b!6994572)))

(declare-fun lambda!404053 () Int)

(assert (=> bs!1862844 (= lambda!404053 lambda!404013)))

(assert (=> d!2178903 true))

(assert (=> d!2178903 (= (appendTo!376 z1!570 ct2!306) (map!15529 z1!570 lambda!404053))))

(declare-fun bs!1862845 () Bool)

(assert (= bs!1862845 d!2178903))

(declare-fun m!7686004 () Bool)

(assert (=> bs!1862845 m!7686004))

(assert (=> start!672474 d!2178903))

(declare-fun bs!1862846 () Bool)

(declare-fun d!2178905 () Bool)

(assert (= bs!1862846 (and d!2178905 b!6994572)))

(declare-fun lambda!404056 () Int)

(assert (=> bs!1862846 (= lambda!404056 lambda!404014)))

(assert (=> d!2178905 (= (inv!85996 ct2!306) (forall!16165 (exprs!6751 ct2!306) lambda!404056))))

(declare-fun bs!1862847 () Bool)

(assert (= bs!1862847 d!2178905))

(declare-fun m!7686006 () Bool)

(assert (=> bs!1862847 m!7686006))

(assert (=> start!672474 d!2178905))

(declare-fun d!2178907 () Bool)

(declare-fun c!1297782 () Bool)

(assert (=> d!2178907 (= c!1297782 (isEmpty!39213 s!7408))))

(declare-fun e!4204427 () Bool)

(assert (=> d!2178907 (= (matchZipper!2795 lt!2492383 s!7408) e!4204427)))

(declare-fun b!6994908 () Bool)

(assert (=> b!6994908 (= e!4204427 (nullableZipper!2452 lt!2492383))))

(declare-fun b!6994909 () Bool)

(assert (=> b!6994909 (= e!4204427 (matchZipper!2795 (derivationStepZipper!2735 lt!2492383 (head!14127 s!7408)) (tail!13281 s!7408)))))

(assert (= (and d!2178907 c!1297782) b!6994908))

(assert (= (and d!2178907 (not c!1297782)) b!6994909))

(assert (=> d!2178907 m!7685534))

(declare-fun m!7686008 () Bool)

(assert (=> b!6994908 m!7686008))

(assert (=> b!6994909 m!7685538))

(assert (=> b!6994909 m!7685538))

(declare-fun m!7686010 () Bool)

(assert (=> b!6994909 m!7686010))

(assert (=> b!6994909 m!7685542))

(assert (=> b!6994909 m!7686010))

(assert (=> b!6994909 m!7685542))

(declare-fun m!7686012 () Bool)

(assert (=> b!6994909 m!7686012))

(assert (=> b!6994600 d!2178907))

(assert (=> b!6994600 d!2178873))

(assert (=> b!6994579 d!2178899))

(declare-fun d!2178909 () Bool)

(assert (=> d!2178909 (exists!3061 lt!2492350 lambda!404016)))

(declare-fun lt!2492524 () Unit!161165)

(declare-fun choose!52378 ((InoxSet Context!12502) Context!12502 Int) Unit!161165)

(assert (=> d!2178909 (= lt!2492524 (choose!52378 lt!2492350 lt!2492376 lambda!404016))))

(assert (=> d!2178909 (select lt!2492350 lt!2492376)))

(assert (=> d!2178909 (= (lemmaContainsThenExists!85 lt!2492350 lt!2492376 lambda!404016) lt!2492524)))

(declare-fun bs!1862848 () Bool)

(assert (= bs!1862848 d!2178909))

(assert (=> bs!1862848 m!7685350))

(declare-fun m!7686014 () Bool)

(assert (=> bs!1862848 m!7686014))

(declare-fun m!7686016 () Bool)

(assert (=> bs!1862848 m!7686016))

(assert (=> b!6994579 d!2178909))

(declare-fun d!2178911 () Bool)

(assert (=> d!2178911 (exists!3061 lt!2492357 lambda!404016)))

(declare-fun lt!2492525 () Unit!161165)

(assert (=> d!2178911 (= lt!2492525 (choose!52378 lt!2492357 lt!2492381 lambda!404016))))

(assert (=> d!2178911 (select lt!2492357 lt!2492381)))

(assert (=> d!2178911 (= (lemmaContainsThenExists!85 lt!2492357 lt!2492381 lambda!404016) lt!2492525)))

(declare-fun bs!1862849 () Bool)

(assert (= bs!1862849 d!2178911))

(assert (=> bs!1862849 m!7685354))

(declare-fun m!7686018 () Bool)

(assert (=> bs!1862849 m!7686018))

(declare-fun m!7686020 () Bool)

(assert (=> bs!1862849 m!7686020))

(assert (=> b!6994579 d!2178911))

(declare-fun d!2178913 () Bool)

(declare-fun lt!2492526 () Bool)

(assert (=> d!2178913 (= lt!2492526 (exists!3062 (toList!10615 lt!2492357) lambda!404016))))

(assert (=> d!2178913 (= lt!2492526 (choose!52377 lt!2492357 lambda!404016))))

(assert (=> d!2178913 (= (exists!3061 lt!2492357 lambda!404016) lt!2492526)))

(declare-fun bs!1862850 () Bool)

(assert (= bs!1862850 d!2178913))

(declare-fun m!7686022 () Bool)

(assert (=> bs!1862850 m!7686022))

(assert (=> bs!1862850 m!7686022))

(declare-fun m!7686024 () Bool)

(assert (=> bs!1862850 m!7686024))

(declare-fun m!7686026 () Bool)

(assert (=> bs!1862850 m!7686026))

(assert (=> b!6994579 d!2178913))

(declare-fun d!2178915 () Bool)

(declare-fun c!1297783 () Bool)

(assert (=> d!2178915 (= c!1297783 (isEmpty!39213 (_1!37231 lt!2492380)))))

(declare-fun e!4204429 () Bool)

(assert (=> d!2178915 (= (matchZipper!2795 lt!2492357 (_1!37231 lt!2492380)) e!4204429)))

(declare-fun b!6994910 () Bool)

(assert (=> b!6994910 (= e!4204429 (nullableZipper!2452 lt!2492357))))

(declare-fun b!6994911 () Bool)

(assert (=> b!6994911 (= e!4204429 (matchZipper!2795 (derivationStepZipper!2735 lt!2492357 (head!14127 (_1!37231 lt!2492380))) (tail!13281 (_1!37231 lt!2492380))))))

(assert (= (and d!2178915 c!1297783) b!6994910))

(assert (= (and d!2178915 (not c!1297783)) b!6994911))

(assert (=> d!2178915 m!7685388))

(declare-fun m!7686028 () Bool)

(assert (=> b!6994910 m!7686028))

(assert (=> b!6994911 m!7685616))

(assert (=> b!6994911 m!7685616))

(declare-fun m!7686030 () Bool)

(assert (=> b!6994911 m!7686030))

(assert (=> b!6994911 m!7685620))

(assert (=> b!6994911 m!7686030))

(assert (=> b!6994911 m!7685620))

(declare-fun m!7686032 () Bool)

(assert (=> b!6994911 m!7686032))

(assert (=> b!6994579 d!2178915))

(declare-fun d!2178917 () Bool)

(declare-fun lt!2492527 () Int)

(assert (=> d!2178917 (>= lt!2492527 0)))

(declare-fun e!4204430 () Int)

(assert (=> d!2178917 (= lt!2492527 e!4204430)))

(declare-fun c!1297784 () Bool)

(assert (=> d!2178917 (= c!1297784 ((_ is Cons!67188) (Cons!67188 lt!2492376 Nil!67188)))))

(assert (=> d!2178917 (= (zipperDepthTotal!476 (Cons!67188 lt!2492376 Nil!67188)) lt!2492527)))

(declare-fun b!6994912 () Bool)

(assert (=> b!6994912 (= e!4204430 (+ (contextDepthTotal!448 (h!73636 (Cons!67188 lt!2492376 Nil!67188))) (zipperDepthTotal!476 (t!381059 (Cons!67188 lt!2492376 Nil!67188)))))))

(declare-fun b!6994913 () Bool)

(assert (=> b!6994913 (= e!4204430 0)))

(assert (= (and d!2178917 c!1297784) b!6994912))

(assert (= (and d!2178917 (not c!1297784)) b!6994913))

(declare-fun m!7686034 () Bool)

(assert (=> b!6994912 m!7686034))

(declare-fun m!7686036 () Bool)

(assert (=> b!6994912 m!7686036))

(assert (=> b!6994597 d!2178917))

(declare-fun d!2178919 () Bool)

(declare-fun c!1297785 () Bool)

(assert (=> d!2178919 (= c!1297785 (isEmpty!39213 (t!381058 s!7408)))))

(declare-fun e!4204431 () Bool)

(assert (=> d!2178919 (= (matchZipper!2795 lt!2492362 (t!381058 s!7408)) e!4204431)))

(declare-fun b!6994914 () Bool)

(assert (=> b!6994914 (= e!4204431 (nullableZipper!2452 lt!2492362))))

(declare-fun b!6994915 () Bool)

(assert (=> b!6994915 (= e!4204431 (matchZipper!2795 (derivationStepZipper!2735 lt!2492362 (head!14127 (t!381058 s!7408))) (tail!13281 (t!381058 s!7408))))))

(assert (= (and d!2178919 c!1297785) b!6994914))

(assert (= (and d!2178919 (not c!1297785)) b!6994915))

(assert (=> d!2178919 m!7685602))

(declare-fun m!7686038 () Bool)

(assert (=> b!6994914 m!7686038))

(assert (=> b!6994915 m!7685606))

(assert (=> b!6994915 m!7685606))

(declare-fun m!7686040 () Bool)

(assert (=> b!6994915 m!7686040))

(assert (=> b!6994915 m!7685610))

(assert (=> b!6994915 m!7686040))

(assert (=> b!6994915 m!7685610))

(declare-fun m!7686042 () Bool)

(assert (=> b!6994915 m!7686042))

(assert (=> b!6994578 d!2178919))

(declare-fun d!2178921 () Bool)

(declare-fun c!1297786 () Bool)

(assert (=> d!2178921 (= c!1297786 (isEmpty!39213 (t!381058 s!7408)))))

(declare-fun e!4204432 () Bool)

(assert (=> d!2178921 (= (matchZipper!2795 lt!2492343 (t!381058 s!7408)) e!4204432)))

(declare-fun b!6994916 () Bool)

(assert (=> b!6994916 (= e!4204432 (nullableZipper!2452 lt!2492343))))

(declare-fun b!6994917 () Bool)

(assert (=> b!6994917 (= e!4204432 (matchZipper!2795 (derivationStepZipper!2735 lt!2492343 (head!14127 (t!381058 s!7408))) (tail!13281 (t!381058 s!7408))))))

(assert (= (and d!2178921 c!1297786) b!6994916))

(assert (= (and d!2178921 (not c!1297786)) b!6994917))

(assert (=> d!2178921 m!7685602))

(declare-fun m!7686044 () Bool)

(assert (=> b!6994916 m!7686044))

(assert (=> b!6994917 m!7685606))

(assert (=> b!6994917 m!7685606))

(declare-fun m!7686046 () Bool)

(assert (=> b!6994917 m!7686046))

(assert (=> b!6994917 m!7685610))

(assert (=> b!6994917 m!7686046))

(assert (=> b!6994917 m!7685610))

(declare-fun m!7686048 () Bool)

(assert (=> b!6994917 m!7686048))

(assert (=> b!6994578 d!2178921))

(declare-fun e!4204435 () Bool)

(declare-fun d!2178923 () Bool)

(assert (=> d!2178923 (= (matchZipper!2795 ((_ map or) lt!2492362 lt!2492373) (t!381058 s!7408)) e!4204435)))

(declare-fun res!2853411 () Bool)

(assert (=> d!2178923 (=> res!2853411 e!4204435)))

(assert (=> d!2178923 (= res!2853411 (matchZipper!2795 lt!2492362 (t!381058 s!7408)))))

(declare-fun lt!2492530 () Unit!161165)

(declare-fun choose!52380 ((InoxSet Context!12502) (InoxSet Context!12502) List!67311) Unit!161165)

(assert (=> d!2178923 (= lt!2492530 (choose!52380 lt!2492362 lt!2492373 (t!381058 s!7408)))))

(assert (=> d!2178923 (= (lemmaZipperConcatMatchesSameAsBothZippers!1428 lt!2492362 lt!2492373 (t!381058 s!7408)) lt!2492530)))

(declare-fun b!6994920 () Bool)

(assert (=> b!6994920 (= e!4204435 (matchZipper!2795 lt!2492373 (t!381058 s!7408)))))

(assert (= (and d!2178923 (not res!2853411)) b!6994920))

(declare-fun m!7686050 () Bool)

(assert (=> d!2178923 m!7686050))

(assert (=> d!2178923 m!7685416))

(declare-fun m!7686052 () Bool)

(assert (=> d!2178923 m!7686052))

(assert (=> b!6994920 m!7685356))

(assert (=> b!6994578 d!2178923))

(assert (=> b!6994578 d!2178873))

(declare-fun d!2178925 () Bool)

(declare-fun c!1297787 () Bool)

(assert (=> d!2178925 (= c!1297787 (isEmpty!39213 (t!381058 s!7408)))))

(declare-fun e!4204436 () Bool)

(assert (=> d!2178925 (= (matchZipper!2795 lt!2492344 (t!381058 s!7408)) e!4204436)))

(declare-fun b!6994921 () Bool)

(assert (=> b!6994921 (= e!4204436 (nullableZipper!2452 lt!2492344))))

(declare-fun b!6994922 () Bool)

(assert (=> b!6994922 (= e!4204436 (matchZipper!2795 (derivationStepZipper!2735 lt!2492344 (head!14127 (t!381058 s!7408))) (tail!13281 (t!381058 s!7408))))))

(assert (= (and d!2178925 c!1297787) b!6994921))

(assert (= (and d!2178925 (not c!1297787)) b!6994922))

(assert (=> d!2178925 m!7685602))

(declare-fun m!7686054 () Bool)

(assert (=> b!6994921 m!7686054))

(assert (=> b!6994922 m!7685606))

(assert (=> b!6994922 m!7685606))

(declare-fun m!7686056 () Bool)

(assert (=> b!6994922 m!7686056))

(assert (=> b!6994922 m!7685610))

(assert (=> b!6994922 m!7686056))

(assert (=> b!6994922 m!7685610))

(declare-fun m!7686058 () Bool)

(assert (=> b!6994922 m!7686058))

(assert (=> b!6994578 d!2178925))

(assert (=> b!6994595 d!2178761))

(assert (=> b!6994595 d!2178873))

(declare-fun b!6994933 () Bool)

(declare-fun res!2853416 () Bool)

(declare-fun e!4204442 () Bool)

(assert (=> b!6994933 (=> (not res!2853416) (not e!4204442))))

(declare-fun lt!2492533 () List!67311)

(declare-fun size!40921 (List!67311) Int)

(assert (=> b!6994933 (= res!2853416 (= (size!40921 lt!2492533) (+ (size!40921 (_1!37231 lt!2492380)) (size!40921 (_2!37231 lt!2492380)))))))

(declare-fun b!6994932 () Bool)

(declare-fun e!4204441 () List!67311)

(assert (=> b!6994932 (= e!4204441 (Cons!67187 (h!73635 (_1!37231 lt!2492380)) (++!15212 (t!381058 (_1!37231 lt!2492380)) (_2!37231 lt!2492380))))))

(declare-fun d!2178927 () Bool)

(assert (=> d!2178927 e!4204442))

(declare-fun res!2853417 () Bool)

(assert (=> d!2178927 (=> (not res!2853417) (not e!4204442))))

(declare-fun content!13288 (List!67311) (InoxSet C!34780))

(assert (=> d!2178927 (= res!2853417 (= (content!13288 lt!2492533) ((_ map or) (content!13288 (_1!37231 lt!2492380)) (content!13288 (_2!37231 lt!2492380)))))))

(assert (=> d!2178927 (= lt!2492533 e!4204441)))

(declare-fun c!1297790 () Bool)

(assert (=> d!2178927 (= c!1297790 ((_ is Nil!67187) (_1!37231 lt!2492380)))))

(assert (=> d!2178927 (= (++!15212 (_1!37231 lt!2492380) (_2!37231 lt!2492380)) lt!2492533)))

(declare-fun b!6994931 () Bool)

(assert (=> b!6994931 (= e!4204441 (_2!37231 lt!2492380))))

(declare-fun b!6994934 () Bool)

(assert (=> b!6994934 (= e!4204442 (or (not (= (_2!37231 lt!2492380) Nil!67187)) (= lt!2492533 (_1!37231 lt!2492380))))))

(assert (= (and d!2178927 c!1297790) b!6994931))

(assert (= (and d!2178927 (not c!1297790)) b!6994932))

(assert (= (and d!2178927 res!2853417) b!6994933))

(assert (= (and b!6994933 res!2853416) b!6994934))

(declare-fun m!7686060 () Bool)

(assert (=> b!6994933 m!7686060))

(declare-fun m!7686062 () Bool)

(assert (=> b!6994933 m!7686062))

(declare-fun m!7686064 () Bool)

(assert (=> b!6994933 m!7686064))

(declare-fun m!7686066 () Bool)

(assert (=> b!6994932 m!7686066))

(declare-fun m!7686068 () Bool)

(assert (=> d!2178927 m!7686068))

(declare-fun m!7686070 () Bool)

(assert (=> d!2178927 m!7686070))

(declare-fun m!7686072 () Bool)

(assert (=> d!2178927 m!7686072))

(assert (=> b!6994576 d!2178927))

(declare-fun bs!1862851 () Bool)

(declare-fun d!2178929 () Bool)

(assert (= bs!1862851 (and d!2178929 b!6994572)))

(declare-fun lambda!404059 () Int)

(assert (=> bs!1862851 (not (= lambda!404059 lambda!404014))))

(declare-fun bs!1862852 () Bool)

(assert (= bs!1862852 (and d!2178929 d!2178905)))

(assert (=> bs!1862852 (not (= lambda!404059 lambda!404056))))

(assert (=> d!2178929 (= (nullableContext!52 lt!2492376) (forall!16165 (exprs!6751 lt!2492376) lambda!404059))))

(declare-fun bs!1862853 () Bool)

(assert (= bs!1862853 d!2178929))

(declare-fun m!7686074 () Bool)

(assert (=> bs!1862853 m!7686074))

(assert (=> b!6994596 d!2178929))

(declare-fun d!2178931 () Bool)

(declare-fun e!4204443 () Bool)

(assert (=> d!2178931 e!4204443))

(declare-fun res!2853418 () Bool)

(assert (=> d!2178931 (=> (not res!2853418) (not e!4204443))))

(declare-fun lt!2492534 () Context!12502)

(assert (=> d!2178931 (= res!2853418 (dynLambda!26958 lambda!404016 lt!2492534))))

(assert (=> d!2178931 (= lt!2492534 (getWitness!1166 (toList!10615 lt!2492350) lambda!404016))))

(assert (=> d!2178931 (exists!3061 lt!2492350 lambda!404016)))

(assert (=> d!2178931 (= (getWitness!1164 lt!2492350 lambda!404016) lt!2492534)))

(declare-fun b!6994935 () Bool)

(assert (=> b!6994935 (= e!4204443 (select lt!2492350 lt!2492534))))

(assert (= (and d!2178931 res!2853418) b!6994935))

(declare-fun b_lambda!263039 () Bool)

(assert (=> (not b_lambda!263039) (not d!2178931)))

(declare-fun m!7686076 () Bool)

(assert (=> d!2178931 m!7686076))

(assert (=> d!2178931 m!7685992))

(assert (=> d!2178931 m!7685992))

(declare-fun m!7686078 () Bool)

(assert (=> d!2178931 m!7686078))

(assert (=> d!2178931 m!7685350))

(declare-fun m!7686080 () Bool)

(assert (=> b!6994935 m!7686080))

(assert (=> b!6994596 d!2178931))

(declare-fun b!6994936 () Bool)

(declare-fun e!4204444 () (InoxSet Context!12502))

(declare-fun e!4204445 () (InoxSet Context!12502))

(assert (=> b!6994936 (= e!4204444 e!4204445)))

(declare-fun c!1297792 () Bool)

(assert (=> b!6994936 (= c!1297792 ((_ is Cons!67186) (exprs!6751 lt!2492378)))))

(declare-fun bm!634920 () Bool)

(declare-fun call!634925 () (InoxSet Context!12502))

(assert (=> bm!634920 (= call!634925 (derivationStepZipperDown!1973 (h!73634 (exprs!6751 lt!2492378)) (Context!12503 (t!381057 (exprs!6751 lt!2492378))) (h!73635 s!7408)))))

(declare-fun b!6994937 () Bool)

(assert (=> b!6994937 (= e!4204445 ((as const (Array Context!12502 Bool)) false))))

(declare-fun b!6994938 () Bool)

(assert (=> b!6994938 (= e!4204444 ((_ map or) call!634925 (derivationStepZipperUp!1905 (Context!12503 (t!381057 (exprs!6751 lt!2492378))) (h!73635 s!7408))))))

(declare-fun b!6994939 () Bool)

(declare-fun e!4204446 () Bool)

(assert (=> b!6994939 (= e!4204446 (nullable!7015 (h!73634 (exprs!6751 lt!2492378))))))

(declare-fun d!2178933 () Bool)

(declare-fun c!1297793 () Bool)

(assert (=> d!2178933 (= c!1297793 e!4204446)))

(declare-fun res!2853419 () Bool)

(assert (=> d!2178933 (=> (not res!2853419) (not e!4204446))))

(assert (=> d!2178933 (= res!2853419 ((_ is Cons!67186) (exprs!6751 lt!2492378)))))

(assert (=> d!2178933 (= (derivationStepZipperUp!1905 lt!2492378 (h!73635 s!7408)) e!4204444)))

(declare-fun b!6994940 () Bool)

(assert (=> b!6994940 (= e!4204445 call!634925)))

(assert (= (and d!2178933 res!2853419) b!6994939))

(assert (= (and d!2178933 c!1297793) b!6994938))

(assert (= (and d!2178933 (not c!1297793)) b!6994936))

(assert (= (and b!6994936 c!1297792) b!6994940))

(assert (= (and b!6994936 (not c!1297792)) b!6994937))

(assert (= (or b!6994938 b!6994940) bm!634920))

(declare-fun m!7686082 () Bool)

(assert (=> bm!634920 m!7686082))

(declare-fun m!7686084 () Bool)

(assert (=> b!6994938 m!7686084))

(declare-fun m!7686086 () Bool)

(assert (=> b!6994939 m!7686086))

(assert (=> b!6994594 d!2178933))

(declare-fun d!2178935 () Bool)

(assert (=> d!2178935 (= (flatMap!2241 lt!2492365 lambda!404015) (dynLambda!26960 lambda!404015 lt!2492378))))

(declare-fun lt!2492535 () Unit!161165)

(assert (=> d!2178935 (= lt!2492535 (choose!52369 lt!2492365 lt!2492378 lambda!404015))))

(assert (=> d!2178935 (= lt!2492365 (store ((as const (Array Context!12502 Bool)) false) lt!2492378 true))))

(assert (=> d!2178935 (= (lemmaFlatMapOnSingletonSet!1756 lt!2492365 lt!2492378 lambda!404015) lt!2492535)))

(declare-fun b_lambda!263041 () Bool)

(assert (=> (not b_lambda!263041) (not d!2178935)))

(declare-fun bs!1862854 () Bool)

(assert (= bs!1862854 d!2178935))

(assert (=> bs!1862854 m!7685298))

(declare-fun m!7686088 () Bool)

(assert (=> bs!1862854 m!7686088))

(declare-fun m!7686090 () Bool)

(assert (=> bs!1862854 m!7686090))

(assert (=> bs!1862854 m!7685398))

(assert (=> b!6994594 d!2178935))

(declare-fun d!2178937 () Bool)

(assert (=> d!2178937 (= (flatMap!2241 lt!2492365 lambda!404015) (choose!52368 lt!2492365 lambda!404015))))

(declare-fun bs!1862855 () Bool)

(assert (= bs!1862855 d!2178937))

(declare-fun m!7686092 () Bool)

(assert (=> bs!1862855 m!7686092))

(assert (=> b!6994594 d!2178937))

(declare-fun bs!1862856 () Bool)

(declare-fun d!2178939 () Bool)

(assert (= bs!1862856 (and d!2178939 b!6994594)))

(declare-fun lambda!404060 () Int)

(assert (=> bs!1862856 (= lambda!404060 lambda!404015)))

(declare-fun bs!1862857 () Bool)

(assert (= bs!1862857 (and d!2178939 d!2178853)))

(assert (=> bs!1862857 (= lambda!404060 lambda!404048)))

(assert (=> d!2178939 true))

(assert (=> d!2178939 (= (derivationStepZipper!2735 lt!2492365 (h!73635 s!7408)) (flatMap!2241 lt!2492365 lambda!404060))))

(declare-fun bs!1862858 () Bool)

(assert (= bs!1862858 d!2178939))

(declare-fun m!7686094 () Bool)

(assert (=> bs!1862858 m!7686094))

(assert (=> b!6994594 d!2178939))

(declare-fun d!2178941 () Bool)

(assert (=> d!2178941 (forall!16165 (++!15211 (exprs!6751 lt!2492381) (exprs!6751 ct2!306)) lambda!404014)))

(declare-fun lt!2492536 () Unit!161165)

(assert (=> d!2178941 (= lt!2492536 (choose!52370 (exprs!6751 lt!2492381) (exprs!6751 ct2!306) lambda!404014))))

(assert (=> d!2178941 (forall!16165 (exprs!6751 lt!2492381) lambda!404014)))

(assert (=> d!2178941 (= (lemmaConcatPreservesForall!591 (exprs!6751 lt!2492381) (exprs!6751 ct2!306) lambda!404014) lt!2492536)))

(declare-fun bs!1862859 () Bool)

(assert (= bs!1862859 d!2178941))

(assert (=> bs!1862859 m!7685378))

(assert (=> bs!1862859 m!7685378))

(declare-fun m!7686096 () Bool)

(assert (=> bs!1862859 m!7686096))

(declare-fun m!7686098 () Bool)

(assert (=> bs!1862859 m!7686098))

(declare-fun m!7686100 () Bool)

(assert (=> bs!1862859 m!7686100))

(assert (=> b!6994594 d!2178941))

(assert (=> b!6994573 d!2178941))

(declare-fun d!2178943 () Bool)

(declare-fun nullableFct!2650 (Regex!17255) Bool)

(assert (=> d!2178943 (= (nullable!7015 (h!73634 (exprs!6751 lt!2492381))) (nullableFct!2650 (h!73634 (exprs!6751 lt!2492381))))))

(declare-fun bs!1862860 () Bool)

(assert (= bs!1862860 d!2178943))

(declare-fun m!7686102 () Bool)

(assert (=> bs!1862860 m!7686102))

(assert (=> b!6994574 d!2178943))

(declare-fun d!2178945 () Bool)

(assert (=> d!2178945 (= (tail!13279 (exprs!6751 lt!2492381)) (t!381057 (exprs!6751 lt!2492381)))))

(assert (=> b!6994574 d!2178945))

(declare-fun bs!1862861 () Bool)

(declare-fun d!2178947 () Bool)

(assert (= bs!1862861 (and d!2178947 b!6994572)))

(declare-fun lambda!404061 () Int)

(assert (=> bs!1862861 (not (= lambda!404061 lambda!404014))))

(declare-fun bs!1862862 () Bool)

(assert (= bs!1862862 (and d!2178947 d!2178905)))

(assert (=> bs!1862862 (not (= lambda!404061 lambda!404056))))

(declare-fun bs!1862863 () Bool)

(assert (= bs!1862863 (and d!2178947 d!2178929)))

(assert (=> bs!1862863 (= lambda!404061 lambda!404059)))

(assert (=> d!2178947 (= (nullableContext!52 lt!2492381) (forall!16165 (exprs!6751 lt!2492381) lambda!404061))))

(declare-fun bs!1862864 () Bool)

(assert (= bs!1862864 d!2178947))

(declare-fun m!7686104 () Bool)

(assert (=> bs!1862864 m!7686104))

(assert (=> b!6994592 d!2178947))

(declare-fun d!2178949 () Bool)

(declare-fun e!4204447 () Bool)

(assert (=> d!2178949 e!4204447))

(declare-fun res!2853421 () Bool)

(assert (=> d!2178949 (=> (not res!2853421) (not e!4204447))))

(declare-fun lt!2492537 () List!67310)

(assert (=> d!2178949 (= res!2853421 (= (content!13287 lt!2492537) ((_ map or) (content!13287 (exprs!6751 lt!2492381)) (content!13287 (exprs!6751 ct2!306)))))))

(declare-fun e!4204448 () List!67310)

(assert (=> d!2178949 (= lt!2492537 e!4204448)))

(declare-fun c!1297794 () Bool)

(assert (=> d!2178949 (= c!1297794 ((_ is Nil!67186) (exprs!6751 lt!2492381)))))

(assert (=> d!2178949 (= (++!15211 (exprs!6751 lt!2492381) (exprs!6751 ct2!306)) lt!2492537)))

(declare-fun b!6994943 () Bool)

(declare-fun res!2853420 () Bool)

(assert (=> b!6994943 (=> (not res!2853420) (not e!4204447))))

(assert (=> b!6994943 (= res!2853420 (= (size!40920 lt!2492537) (+ (size!40920 (exprs!6751 lt!2492381)) (size!40920 (exprs!6751 ct2!306)))))))

(declare-fun b!6994944 () Bool)

(assert (=> b!6994944 (= e!4204447 (or (not (= (exprs!6751 ct2!306) Nil!67186)) (= lt!2492537 (exprs!6751 lt!2492381))))))

(declare-fun b!6994941 () Bool)

(assert (=> b!6994941 (= e!4204448 (exprs!6751 ct2!306))))

(declare-fun b!6994942 () Bool)

(assert (=> b!6994942 (= e!4204448 (Cons!67186 (h!73634 (exprs!6751 lt!2492381)) (++!15211 (t!381057 (exprs!6751 lt!2492381)) (exprs!6751 ct2!306))))))

(assert (= (and d!2178949 c!1297794) b!6994941))

(assert (= (and d!2178949 (not c!1297794)) b!6994942))

(assert (= (and d!2178949 res!2853421) b!6994943))

(assert (= (and b!6994943 res!2853420) b!6994944))

(declare-fun m!7686106 () Bool)

(assert (=> d!2178949 m!7686106))

(declare-fun m!7686108 () Bool)

(assert (=> d!2178949 m!7686108))

(assert (=> d!2178949 m!7685952))

(declare-fun m!7686110 () Bool)

(assert (=> b!6994943 m!7686110))

(declare-fun m!7686112 () Bool)

(assert (=> b!6994943 m!7686112))

(assert (=> b!6994943 m!7685958))

(declare-fun m!7686114 () Bool)

(assert (=> b!6994942 m!7686114))

(assert (=> b!6994572 d!2178949))

(assert (=> b!6994572 d!2178941))

(declare-fun d!2178951 () Bool)

(declare-fun e!4204451 () Bool)

(assert (=> d!2178951 e!4204451))

(declare-fun res!2853424 () Bool)

(assert (=> d!2178951 (=> (not res!2853424) (not e!4204451))))

(declare-fun lt!2492540 () Context!12502)

(assert (=> d!2178951 (= res!2853424 (= lt!2492393 (dynLambda!26961 lambda!404013 lt!2492540)))))

(declare-fun choose!52381 ((InoxSet Context!12502) Int Context!12502) Context!12502)

(assert (=> d!2178951 (= lt!2492540 (choose!52381 z1!570 lambda!404013 lt!2492393))))

(assert (=> d!2178951 (select (map!15529 z1!570 lambda!404013) lt!2492393)))

(assert (=> d!2178951 (= (mapPost2!110 z1!570 lambda!404013 lt!2492393) lt!2492540)))

(declare-fun b!6994948 () Bool)

(assert (=> b!6994948 (= e!4204451 (select z1!570 lt!2492540))))

(assert (= (and d!2178951 res!2853424) b!6994948))

(declare-fun b_lambda!263043 () Bool)

(assert (=> (not b_lambda!263043) (not d!2178951)))

(declare-fun m!7686116 () Bool)

(assert (=> d!2178951 m!7686116))

(declare-fun m!7686118 () Bool)

(assert (=> d!2178951 m!7686118))

(declare-fun m!7686120 () Bool)

(assert (=> d!2178951 m!7686120))

(declare-fun m!7686122 () Bool)

(assert (=> d!2178951 m!7686122))

(declare-fun m!7686124 () Bool)

(assert (=> b!6994948 m!7686124))

(assert (=> b!6994572 d!2178951))

(declare-fun b!6994951 () Bool)

(declare-fun res!2853425 () Bool)

(declare-fun e!4204453 () Bool)

(assert (=> b!6994951 (=> (not res!2853425) (not e!4204453))))

(declare-fun lt!2492541 () List!67311)

(assert (=> b!6994951 (= res!2853425 (= (size!40921 lt!2492541) (+ (size!40921 Nil!67187) (size!40921 s!7408))))))

(declare-fun b!6994950 () Bool)

(declare-fun e!4204452 () List!67311)

(assert (=> b!6994950 (= e!4204452 (Cons!67187 (h!73635 Nil!67187) (++!15212 (t!381058 Nil!67187) s!7408)))))

(declare-fun d!2178953 () Bool)

(assert (=> d!2178953 e!4204453))

(declare-fun res!2853426 () Bool)

(assert (=> d!2178953 (=> (not res!2853426) (not e!4204453))))

(assert (=> d!2178953 (= res!2853426 (= (content!13288 lt!2492541) ((_ map or) (content!13288 Nil!67187) (content!13288 s!7408))))))

(assert (=> d!2178953 (= lt!2492541 e!4204452)))

(declare-fun c!1297795 () Bool)

(assert (=> d!2178953 (= c!1297795 ((_ is Nil!67187) Nil!67187))))

(assert (=> d!2178953 (= (++!15212 Nil!67187 s!7408) lt!2492541)))

(declare-fun b!6994949 () Bool)

(assert (=> b!6994949 (= e!4204452 s!7408)))

(declare-fun b!6994952 () Bool)

(assert (=> b!6994952 (= e!4204453 (or (not (= s!7408 Nil!67187)) (= lt!2492541 Nil!67187)))))

(assert (= (and d!2178953 c!1297795) b!6994949))

(assert (= (and d!2178953 (not c!1297795)) b!6994950))

(assert (= (and d!2178953 res!2853426) b!6994951))

(assert (= (and b!6994951 res!2853425) b!6994952))

(declare-fun m!7686126 () Bool)

(assert (=> b!6994951 m!7686126))

(declare-fun m!7686128 () Bool)

(assert (=> b!6994951 m!7686128))

(declare-fun m!7686130 () Bool)

(assert (=> b!6994951 m!7686130))

(declare-fun m!7686132 () Bool)

(assert (=> b!6994950 m!7686132))

(declare-fun m!7686134 () Bool)

(assert (=> d!2178953 m!7686134))

(declare-fun m!7686136 () Bool)

(assert (=> d!2178953 m!7686136))

(declare-fun m!7686138 () Bool)

(assert (=> d!2178953 m!7686138))

(assert (=> b!6994591 d!2178953))

(declare-fun d!2178955 () Bool)

(assert (=> d!2178955 (= (isDefined!13461 (findConcatSeparationZippers!276 lt!2492357 lt!2492386 Nil!67187 s!7408 s!7408)) (not (isEmpty!39216 (findConcatSeparationZippers!276 lt!2492357 lt!2492386 Nil!67187 s!7408 s!7408))))))

(declare-fun bs!1862865 () Bool)

(assert (= bs!1862865 d!2178955))

(assert (=> bs!1862865 m!7685370))

(declare-fun m!7686140 () Bool)

(assert (=> bs!1862865 m!7686140))

(assert (=> b!6994591 d!2178955))

(declare-fun b!6994953 () Bool)

(declare-fun lt!2492544 () Unit!161165)

(declare-fun lt!2492542 () Unit!161165)

(assert (=> b!6994953 (= lt!2492544 lt!2492542)))

(assert (=> b!6994953 (= (++!15212 (++!15212 Nil!67187 (Cons!67187 (h!73635 s!7408) Nil!67187)) (t!381058 s!7408)) s!7408)))

(assert (=> b!6994953 (= lt!2492542 (lemmaMoveElementToOtherListKeepsConcatEq!2872 Nil!67187 (h!73635 s!7408) (t!381058 s!7408) s!7408))))

(declare-fun e!4204457 () Option!16760)

(assert (=> b!6994953 (= e!4204457 (findConcatSeparationZippers!276 lt!2492357 lt!2492386 (++!15212 Nil!67187 (Cons!67187 (h!73635 s!7408) Nil!67187)) (t!381058 s!7408) s!7408))))

(declare-fun b!6994954 () Bool)

(declare-fun e!4204454 () Bool)

(declare-fun lt!2492543 () Option!16760)

(assert (=> b!6994954 (= e!4204454 (= (++!15212 (_1!37231 (get!23552 lt!2492543)) (_2!37231 (get!23552 lt!2492543))) s!7408))))

(declare-fun b!6994955 () Bool)

(declare-fun res!2853431 () Bool)

(assert (=> b!6994955 (=> (not res!2853431) (not e!4204454))))

(assert (=> b!6994955 (= res!2853431 (matchZipper!2795 lt!2492357 (_1!37231 (get!23552 lt!2492543))))))

(declare-fun b!6994957 () Bool)

(assert (=> b!6994957 (= e!4204457 None!16759)))

(declare-fun b!6994958 () Bool)

(declare-fun e!4204455 () Bool)

(assert (=> b!6994958 (= e!4204455 (matchZipper!2795 lt!2492386 s!7408))))

(declare-fun b!6994959 () Bool)

(declare-fun e!4204458 () Option!16760)

(assert (=> b!6994959 (= e!4204458 (Some!16759 (tuple2!67857 Nil!67187 s!7408)))))

(declare-fun d!2178957 () Bool)

(declare-fun e!4204456 () Bool)

(assert (=> d!2178957 e!4204456))

(declare-fun res!2853428 () Bool)

(assert (=> d!2178957 (=> res!2853428 e!4204456)))

(assert (=> d!2178957 (= res!2853428 e!4204454)))

(declare-fun res!2853429 () Bool)

(assert (=> d!2178957 (=> (not res!2853429) (not e!4204454))))

(assert (=> d!2178957 (= res!2853429 (isDefined!13461 lt!2492543))))

(assert (=> d!2178957 (= lt!2492543 e!4204458)))

(declare-fun c!1297797 () Bool)

(assert (=> d!2178957 (= c!1297797 e!4204455)))

(declare-fun res!2853427 () Bool)

(assert (=> d!2178957 (=> (not res!2853427) (not e!4204455))))

(assert (=> d!2178957 (= res!2853427 (matchZipper!2795 lt!2492357 Nil!67187))))

(assert (=> d!2178957 (= (++!15212 Nil!67187 s!7408) s!7408)))

(assert (=> d!2178957 (= (findConcatSeparationZippers!276 lt!2492357 lt!2492386 Nil!67187 s!7408 s!7408) lt!2492543)))

(declare-fun b!6994956 () Bool)

(assert (=> b!6994956 (= e!4204456 (not (isDefined!13461 lt!2492543)))))

(declare-fun b!6994960 () Bool)

(assert (=> b!6994960 (= e!4204458 e!4204457)))

(declare-fun c!1297796 () Bool)

(assert (=> b!6994960 (= c!1297796 ((_ is Nil!67187) s!7408))))

(declare-fun b!6994961 () Bool)

(declare-fun res!2853430 () Bool)

(assert (=> b!6994961 (=> (not res!2853430) (not e!4204454))))

(assert (=> b!6994961 (= res!2853430 (matchZipper!2795 lt!2492386 (_2!37231 (get!23552 lt!2492543))))))

(assert (= (and d!2178957 res!2853427) b!6994958))

(assert (= (and d!2178957 c!1297797) b!6994959))

(assert (= (and d!2178957 (not c!1297797)) b!6994960))

(assert (= (and b!6994960 c!1297796) b!6994957))

(assert (= (and b!6994960 (not c!1297796)) b!6994953))

(assert (= (and d!2178957 res!2853429) b!6994955))

(assert (= (and b!6994955 res!2853431) b!6994961))

(assert (= (and b!6994961 res!2853430) b!6994954))

(assert (= (and d!2178957 (not res!2853428)) b!6994956))

(declare-fun m!7686142 () Bool)

(assert (=> b!6994961 m!7686142))

(declare-fun m!7686144 () Bool)

(assert (=> b!6994961 m!7686144))

(assert (=> b!6994955 m!7686142))

(declare-fun m!7686146 () Bool)

(assert (=> b!6994955 m!7686146))

(assert (=> b!6994954 m!7686142))

(declare-fun m!7686148 () Bool)

(assert (=> b!6994954 m!7686148))

(declare-fun m!7686150 () Bool)

(assert (=> b!6994956 m!7686150))

(assert (=> b!6994958 m!7685808))

(assert (=> b!6994953 m!7685810))

(assert (=> b!6994953 m!7685810))

(assert (=> b!6994953 m!7685812))

(assert (=> b!6994953 m!7685814))

(assert (=> b!6994953 m!7685810))

(declare-fun m!7686152 () Bool)

(assert (=> b!6994953 m!7686152))

(assert (=> d!2178957 m!7686150))

(declare-fun m!7686154 () Bool)

(assert (=> d!2178957 m!7686154))

(assert (=> d!2178957 m!7685368))

(assert (=> b!6994591 d!2178957))

(declare-fun d!2178959 () Bool)

(assert (=> d!2178959 (isDefined!13461 (findConcatSeparationZippers!276 lt!2492357 lt!2492386 Nil!67187 s!7408 s!7408))))

(declare-fun lt!2492547 () Unit!161165)

(declare-fun choose!52382 ((InoxSet Context!12502) (InoxSet Context!12502) List!67311 List!67311 List!67311 List!67311 List!67311) Unit!161165)

(assert (=> d!2178959 (= lt!2492547 (choose!52382 lt!2492357 lt!2492386 (_1!37231 lt!2492380) (_2!37231 lt!2492380) s!7408 Nil!67187 s!7408))))

(assert (=> d!2178959 (matchZipper!2795 lt!2492357 (_1!37231 lt!2492380))))

(assert (=> d!2178959 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!2 lt!2492357 lt!2492386 (_1!37231 lt!2492380) (_2!37231 lt!2492380) s!7408 Nil!67187 s!7408) lt!2492547)))

(declare-fun bs!1862866 () Bool)

(assert (= bs!1862866 d!2178959))

(assert (=> bs!1862866 m!7685370))

(assert (=> bs!1862866 m!7685370))

(assert (=> bs!1862866 m!7685372))

(declare-fun m!7686156 () Bool)

(assert (=> bs!1862866 m!7686156))

(assert (=> bs!1862866 m!7685348))

(assert (=> b!6994591 d!2178959))

(assert (=> b!6994590 d!2178825))

(assert (=> b!6994590 d!2178873))

(declare-fun b!6994984 () Bool)

(declare-fun e!4204471 () Bool)

(assert (=> b!6994984 (= e!4204471 (nullable!7015 (regOne!35022 (h!73634 (exprs!6751 lt!2492381)))))))

(declare-fun b!6994985 () Bool)

(declare-fun e!4204474 () (InoxSet Context!12502))

(declare-fun e!4204472 () (InoxSet Context!12502))

(assert (=> b!6994985 (= e!4204474 e!4204472)))

(declare-fun c!1297812 () Bool)

(assert (=> b!6994985 (= c!1297812 ((_ is Concat!26100) (h!73634 (exprs!6751 lt!2492381))))))

(declare-fun bm!634933 () Bool)

(declare-fun call!634941 () (InoxSet Context!12502))

(declare-fun call!634942 () (InoxSet Context!12502))

(assert (=> bm!634933 (= call!634941 call!634942)))

(declare-fun b!6994986 () Bool)

(declare-fun e!4204473 () (InoxSet Context!12502))

(declare-fun call!634940 () (InoxSet Context!12502))

(assert (=> b!6994986 (= e!4204473 call!634940)))

(declare-fun bm!634934 () Bool)

(declare-fun call!634939 () (InoxSet Context!12502))

(declare-fun c!1297810 () Bool)

(declare-fun call!634938 () List!67310)

(assert (=> bm!634934 (= call!634939 (derivationStepZipperDown!1973 (ite c!1297810 (regOne!35023 (h!73634 (exprs!6751 lt!2492381))) (regOne!35022 (h!73634 (exprs!6751 lt!2492381)))) (ite c!1297810 lt!2492372 (Context!12503 call!634938)) (h!73635 s!7408)))))

(declare-fun b!6994987 () Bool)

(declare-fun c!1297809 () Bool)

(assert (=> b!6994987 (= c!1297809 e!4204471)))

(declare-fun res!2853434 () Bool)

(assert (=> b!6994987 (=> (not res!2853434) (not e!4204471))))

(assert (=> b!6994987 (= res!2853434 ((_ is Concat!26100) (h!73634 (exprs!6751 lt!2492381))))))

(declare-fun e!4204476 () (InoxSet Context!12502))

(assert (=> b!6994987 (= e!4204476 e!4204474)))

(declare-fun d!2178961 () Bool)

(declare-fun c!1297808 () Bool)

(assert (=> d!2178961 (= c!1297808 (and ((_ is ElementMatch!17255) (h!73634 (exprs!6751 lt!2492381))) (= (c!1297674 (h!73634 (exprs!6751 lt!2492381))) (h!73635 s!7408))))))

(declare-fun e!4204475 () (InoxSet Context!12502))

(assert (=> d!2178961 (= (derivationStepZipperDown!1973 (h!73634 (exprs!6751 lt!2492381)) lt!2492372 (h!73635 s!7408)) e!4204475)))

(declare-fun b!6994988 () Bool)

(assert (=> b!6994988 (= e!4204475 (store ((as const (Array Context!12502 Bool)) false) lt!2492372 true))))

(declare-fun bm!634935 () Bool)

(declare-fun $colon$colon!2496 (List!67310 Regex!17255) List!67310)

(assert (=> bm!634935 (= call!634938 ($colon$colon!2496 (exprs!6751 lt!2492372) (ite (or c!1297809 c!1297812) (regTwo!35022 (h!73634 (exprs!6751 lt!2492381))) (h!73634 (exprs!6751 lt!2492381)))))))

(declare-fun bm!634936 () Bool)

(assert (=> bm!634936 (= call!634940 call!634941)))

(declare-fun b!6994989 () Bool)

(assert (=> b!6994989 (= e!4204473 ((as const (Array Context!12502 Bool)) false))))

(declare-fun bm!634937 () Bool)

(declare-fun call!634943 () List!67310)

(assert (=> bm!634937 (= call!634942 (derivationStepZipperDown!1973 (ite c!1297810 (regTwo!35023 (h!73634 (exprs!6751 lt!2492381))) (ite c!1297809 (regTwo!35022 (h!73634 (exprs!6751 lt!2492381))) (ite c!1297812 (regOne!35022 (h!73634 (exprs!6751 lt!2492381))) (reg!17584 (h!73634 (exprs!6751 lt!2492381)))))) (ite (or c!1297810 c!1297809) lt!2492372 (Context!12503 call!634943)) (h!73635 s!7408)))))

(declare-fun b!6994990 () Bool)

(assert (=> b!6994990 (= e!4204474 ((_ map or) call!634939 call!634941))))

(declare-fun b!6994991 () Bool)

(declare-fun c!1297811 () Bool)

(assert (=> b!6994991 (= c!1297811 ((_ is Star!17255) (h!73634 (exprs!6751 lt!2492381))))))

(assert (=> b!6994991 (= e!4204472 e!4204473)))

(declare-fun b!6994992 () Bool)

(assert (=> b!6994992 (= e!4204475 e!4204476)))

(assert (=> b!6994992 (= c!1297810 ((_ is Union!17255) (h!73634 (exprs!6751 lt!2492381))))))

(declare-fun b!6994993 () Bool)

(assert (=> b!6994993 (= e!4204472 call!634940)))

(declare-fun bm!634938 () Bool)

(assert (=> bm!634938 (= call!634943 call!634938)))

(declare-fun b!6994994 () Bool)

(assert (=> b!6994994 (= e!4204476 ((_ map or) call!634939 call!634942))))

(assert (= (and d!2178961 c!1297808) b!6994988))

(assert (= (and d!2178961 (not c!1297808)) b!6994992))

(assert (= (and b!6994992 c!1297810) b!6994994))

(assert (= (and b!6994992 (not c!1297810)) b!6994987))

(assert (= (and b!6994987 res!2853434) b!6994984))

(assert (= (and b!6994987 c!1297809) b!6994990))

(assert (= (and b!6994987 (not c!1297809)) b!6994985))

(assert (= (and b!6994985 c!1297812) b!6994993))

(assert (= (and b!6994985 (not c!1297812)) b!6994991))

(assert (= (and b!6994991 c!1297811) b!6994986))

(assert (= (and b!6994991 (not c!1297811)) b!6994989))

(assert (= (or b!6994993 b!6994986) bm!634938))

(assert (= (or b!6994993 b!6994986) bm!634936))

(assert (= (or b!6994990 bm!634936) bm!634933))

(assert (= (or b!6994990 bm!634938) bm!634935))

(assert (= (or b!6994994 b!6994990) bm!634934))

(assert (= (or b!6994994 bm!634933) bm!634937))

(declare-fun m!7686158 () Bool)

(assert (=> bm!634934 m!7686158))

(declare-fun m!7686160 () Bool)

(assert (=> b!6994984 m!7686160))

(declare-fun m!7686162 () Bool)

(assert (=> bm!634937 m!7686162))

(declare-fun m!7686164 () Bool)

(assert (=> bm!634935 m!7686164))

(assert (=> b!6994988 m!7685390))

(assert (=> b!6994590 d!2178961))

(assert (=> b!6994590 d!2178883))

(declare-fun d!2178963 () Bool)

(assert (=> d!2178963 (= (isEmpty!39213 (_1!37231 lt!2492380)) ((_ is Nil!67187) (_1!37231 lt!2492380)))))

(assert (=> b!6994588 d!2178963))

(assert (=> b!6994589 d!2178761))

(assert (=> b!6994589 d!2178873))

(declare-fun bs!1862867 () Bool)

(declare-fun d!2178965 () Bool)

(assert (= bs!1862867 (and d!2178965 b!6994572)))

(declare-fun lambda!404062 () Int)

(assert (=> bs!1862867 (= lambda!404062 lambda!404014)))

(declare-fun bs!1862868 () Bool)

(assert (= bs!1862868 (and d!2178965 d!2178905)))

(assert (=> bs!1862868 (= lambda!404062 lambda!404056)))

(declare-fun bs!1862869 () Bool)

(assert (= bs!1862869 (and d!2178965 d!2178929)))

(assert (=> bs!1862869 (not (= lambda!404062 lambda!404059))))

(declare-fun bs!1862870 () Bool)

(assert (= bs!1862870 (and d!2178965 d!2178947)))

(assert (=> bs!1862870 (not (= lambda!404062 lambda!404061))))

(assert (=> d!2178965 (= (inv!85996 setElem!47967) (forall!16165 (exprs!6751 setElem!47967) lambda!404062))))

(declare-fun bs!1862871 () Bool)

(assert (= bs!1862871 d!2178965))

(declare-fun m!7686166 () Bool)

(assert (=> bs!1862871 m!7686166))

(assert (=> setNonEmpty!47967 d!2178965))

(declare-fun b!6994999 () Bool)

(declare-fun e!4204479 () Bool)

(declare-fun tp!1930438 () Bool)

(declare-fun tp!1930439 () Bool)

(assert (=> b!6994999 (= e!4204479 (and tp!1930438 tp!1930439))))

(assert (=> b!6994586 (= tp!1930414 e!4204479)))

(assert (= (and b!6994586 ((_ is Cons!67186) (exprs!6751 setElem!47967))) b!6994999))

(declare-fun b!6995004 () Bool)

(declare-fun e!4204482 () Bool)

(declare-fun tp!1930442 () Bool)

(assert (=> b!6995004 (= e!4204482 (and tp_is_empty!43735 tp!1930442))))

(assert (=> b!6994584 (= tp!1930413 e!4204482)))

(assert (= (and b!6994584 ((_ is Cons!67187) (t!381058 s!7408))) b!6995004))

(declare-fun b!6995005 () Bool)

(declare-fun e!4204483 () Bool)

(declare-fun tp!1930443 () Bool)

(declare-fun tp!1930444 () Bool)

(assert (=> b!6995005 (= e!4204483 (and tp!1930443 tp!1930444))))

(assert (=> b!6994577 (= tp!1930416 e!4204483)))

(assert (= (and b!6994577 ((_ is Cons!67186) (exprs!6751 ct2!306))) b!6995005))

(declare-fun condSetEmpty!47973 () Bool)

(assert (=> setNonEmpty!47967 (= condSetEmpty!47973 (= setRest!47967 ((as const (Array Context!12502 Bool)) false)))))

(declare-fun setRes!47973 () Bool)

(assert (=> setNonEmpty!47967 (= tp!1930415 setRes!47973)))

(declare-fun setIsEmpty!47973 () Bool)

(assert (=> setIsEmpty!47973 setRes!47973))

(declare-fun tp!1930450 () Bool)

(declare-fun e!4204486 () Bool)

(declare-fun setNonEmpty!47973 () Bool)

(declare-fun setElem!47973 () Context!12502)

(assert (=> setNonEmpty!47973 (= setRes!47973 (and tp!1930450 (inv!85996 setElem!47973) e!4204486))))

(declare-fun setRest!47973 () (InoxSet Context!12502))

(assert (=> setNonEmpty!47973 (= setRest!47967 ((_ map or) (store ((as const (Array Context!12502 Bool)) false) setElem!47973 true) setRest!47973))))

(declare-fun b!6995010 () Bool)

(declare-fun tp!1930449 () Bool)

(assert (=> b!6995010 (= e!4204486 tp!1930449)))

(assert (= (and setNonEmpty!47967 condSetEmpty!47973) setIsEmpty!47973))

(assert (= (and setNonEmpty!47967 (not condSetEmpty!47973)) setNonEmpty!47973))

(assert (= setNonEmpty!47973 b!6995010))

(declare-fun m!7686168 () Bool)

(assert (=> setNonEmpty!47973 m!7686168))

(declare-fun b_lambda!263045 () Bool)

(assert (= b_lambda!263033 (or b!6994594 b_lambda!263045)))

(declare-fun bs!1862872 () Bool)

(declare-fun d!2178967 () Bool)

(assert (= bs!1862872 (and d!2178967 b!6994594)))

(assert (=> bs!1862872 (= (dynLambda!26960 lambda!404015 lt!2492372) (derivationStepZipperUp!1905 lt!2492372 (h!73635 s!7408)))))

(assert (=> bs!1862872 m!7685360))

(assert (=> d!2178871 d!2178967))

(declare-fun b_lambda!263047 () Bool)

(assert (= b_lambda!263039 (or b!6994580 b_lambda!263047)))

(declare-fun bs!1862873 () Bool)

(declare-fun d!2178969 () Bool)

(assert (= bs!1862873 (and d!2178969 b!6994580)))

(assert (=> bs!1862873 (= (dynLambda!26958 lambda!404016 lt!2492534) (nullableContext!52 lt!2492534))))

(declare-fun m!7686170 () Bool)

(assert (=> bs!1862873 m!7686170))

(assert (=> d!2178931 d!2178969))

(declare-fun b_lambda!263049 () Bool)

(assert (= b_lambda!263035 (or b!6994572 b_lambda!263049)))

(declare-fun bs!1862874 () Bool)

(declare-fun d!2178971 () Bool)

(assert (= bs!1862874 (and d!2178971 b!6994572)))

(declare-fun lt!2492548 () Unit!161165)

(assert (=> bs!1862874 (= lt!2492548 (lemmaConcatPreservesForall!591 (exprs!6751 lt!2492376) (exprs!6751 ct2!306) lambda!404014))))

(assert (=> bs!1862874 (= (dynLambda!26961 lambda!404013 lt!2492376) (Context!12503 (++!15211 (exprs!6751 lt!2492376) (exprs!6751 ct2!306))))))

(declare-fun m!7686172 () Bool)

(assert (=> bs!1862874 m!7686172))

(declare-fun m!7686174 () Bool)

(assert (=> bs!1862874 m!7686174))

(assert (=> d!2178885 d!2178971))

(declare-fun b_lambda!263051 () Bool)

(assert (= b_lambda!263043 (or b!6994572 b_lambda!263051)))

(declare-fun bs!1862875 () Bool)

(declare-fun d!2178973 () Bool)

(assert (= bs!1862875 (and d!2178973 b!6994572)))

(declare-fun lt!2492549 () Unit!161165)

(assert (=> bs!1862875 (= lt!2492549 (lemmaConcatPreservesForall!591 (exprs!6751 lt!2492540) (exprs!6751 ct2!306) lambda!404014))))

(assert (=> bs!1862875 (= (dynLambda!26961 lambda!404013 lt!2492540) (Context!12503 (++!15211 (exprs!6751 lt!2492540) (exprs!6751 ct2!306))))))

(declare-fun m!7686176 () Bool)

(assert (=> bs!1862875 m!7686176))

(declare-fun m!7686178 () Bool)

(assert (=> bs!1862875 m!7686178))

(assert (=> d!2178951 d!2178973))

(declare-fun b_lambda!263053 () Bool)

(assert (= b_lambda!263003 (or b!6994587 b_lambda!263053)))

(declare-fun bs!1862876 () Bool)

(declare-fun d!2178975 () Bool)

(assert (= bs!1862876 (and d!2178975 b!6994587)))

(assert (=> bs!1862876 (= (dynLambda!26958 lambda!404012 lt!2492406) (matchZipper!2795 (store ((as const (Array Context!12502 Bool)) false) lt!2492406 true) s!7408))))

(declare-fun m!7686180 () Bool)

(assert (=> bs!1862876 m!7686180))

(assert (=> bs!1862876 m!7686180))

(declare-fun m!7686182 () Bool)

(assert (=> bs!1862876 m!7686182))

(assert (=> d!2178715 d!2178975))

(declare-fun b_lambda!263055 () Bool)

(assert (= b_lambda!263037 (or b!6994594 b_lambda!263055)))

(declare-fun bs!1862877 () Bool)

(declare-fun d!2178977 () Bool)

(assert (= bs!1862877 (and d!2178977 b!6994594)))

(assert (=> bs!1862877 (= (dynLambda!26960 lambda!404015 lt!2492376) (derivationStepZipperUp!1905 lt!2492376 (h!73635 s!7408)))))

(assert (=> bs!1862877 m!7685330))

(assert (=> d!2178895 d!2178977))

(declare-fun b_lambda!263057 () Bool)

(assert (= b_lambda!263041 (or b!6994594 b_lambda!263057)))

(declare-fun bs!1862878 () Bool)

(declare-fun d!2178979 () Bool)

(assert (= bs!1862878 (and d!2178979 b!6994594)))

(assert (=> bs!1862878 (= (dynLambda!26960 lambda!404015 lt!2492378) (derivationStepZipperUp!1905 lt!2492378 (h!73635 s!7408)))))

(assert (=> bs!1862878 m!7685300))

(assert (=> d!2178935 d!2178979))

(check-sat (not b!6994872) (not bm!634919) (not b!6994816) (not d!2178927) (not bm!634934) (not d!2178729) (not d!2178885) (not d!2178905) (not b!6994932) (not b!6994818) (not b!6994984) (not b!6994889) (not d!2178909) (not b!6994901) (not b!6994958) (not b!6994719) (not d!2178765) (not d!2178931) (not d!2178965) (not d!2178743) (not b!6994950) (not b_lambda!263053) (not d!2178949) (not bm!634918) (not d!2178869) (not b!6994873) (not b!6994922) (not b!6994933) (not d!2178767) (not d!2178797) (not d!2178943) (not d!2178715) (not b!6994698) (not d!2178761) tp_is_empty!43735 (not b!6994895) (not bs!1862874) (not b!6994717) (not b!6994903) (not b!6994718) (not d!2178921) (not b!6994955) (not d!2178947) (not b_lambda!263049) (not b!6995005) (not b_lambda!263055) (not b!6994910) (not b!6995010) (not b!6994908) (not setNonEmpty!47973) (not d!2178953) (not bs!1862878) (not d!2178957) (not bm!634937) (not d!2178823) (not b!6994911) (not d!2178941) (not b!6994905) (not d!2178911) (not d!2178913) (not b!6994697) (not b!6994906) (not d!2178879) (not bs!1862875) (not b_lambda!263051) (not d!2178895) (not b!6994852) (not b!6994813) (not b!6994921) (not d!2178923) (not d!2178929) (not d!2178901) (not d!2178915) (not d!2178903) (not d!2178891) (not d!2178883) (not b!6994666) (not b!6994851) (not b!6994888) (not b!6994912) (not d!2178951) (not b!6994916) (not b!6994876) (not b!6994951) (not b!6994915) (not d!2178955) (not d!2178959) (not b!6994954) (not bs!1862873) (not b_lambda!263057) (not d!2178713) (not d!2178853) (not d!2178871) (not b!6994917) (not bs!1862876) (not bs!1862872) (not bm!634920) (not d!2178939) (not d!2178925) (not d!2178881) (not d!2178935) (not b!6994909) (not b!6994943) (not b!6994999) (not b!6994920) (not b!6995004) (not d!2178875) (not d!2178737) (not b!6994939) (not b_lambda!263045) (not b!6994720) (not b!6994938) (not b!6994907) (not b_lambda!263047) (not d!2178897) (not b!6994953) (not d!2178907) (not b!6994877) (not b!6994815) (not bs!1862877) (not d!2178919) (not d!2178937) (not d!2178899) (not b!6994942) (not d!2178873) (not bm!634935) (not b!6994814) (not b!6994961) (not b!6994956) (not b!6994914) (not b!6994821))
(check-sat)
