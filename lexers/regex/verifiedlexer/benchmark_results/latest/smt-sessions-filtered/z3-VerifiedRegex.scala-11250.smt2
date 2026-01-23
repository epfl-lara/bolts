; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!590440 () Bool)

(assert start!590440)

(declare-fun b!5738004 () Bool)

(assert (=> b!5738004 true))

(assert (=> b!5738004 true))

(declare-fun lambda!311097 () Int)

(declare-fun lambda!311096 () Int)

(assert (=> b!5738004 (not (= lambda!311097 lambda!311096))))

(assert (=> b!5738004 true))

(assert (=> b!5738004 true))

(declare-fun b!5738029 () Bool)

(assert (=> b!5738029 true))

(declare-fun b!5738037 () Bool)

(assert (=> b!5738037 true))

(declare-fun bs!1341200 () Bool)

(declare-fun b!5738008 () Bool)

(assert (= bs!1341200 (and b!5738008 b!5738004)))

(declare-datatypes ((C!31764 0))(
  ( (C!31765 (val!25584 Int)) )
))
(declare-datatypes ((Regex!15747 0))(
  ( (ElementMatch!15747 (c!1012627 C!31764)) (Concat!24592 (regOne!32006 Regex!15747) (regTwo!32006 Regex!15747)) (EmptyExpr!15747) (Star!15747 (reg!16076 Regex!15747)) (EmptyLang!15747) (Union!15747 (regOne!32007 Regex!15747) (regTwo!32007 Regex!15747)) )
))
(declare-fun r!7292 () Regex!15747)

(declare-fun lambda!311101 () Int)

(declare-fun lt!2284510 () Regex!15747)

(assert (=> bs!1341200 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311101 lambda!311096))))

(assert (=> bs!1341200 (not (= lambda!311101 lambda!311097))))

(assert (=> b!5738008 true))

(assert (=> b!5738008 true))

(assert (=> b!5738008 true))

(declare-fun lambda!311102 () Int)

(assert (=> bs!1341200 (not (= lambda!311102 lambda!311096))))

(assert (=> bs!1341200 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311102 lambda!311097))))

(assert (=> b!5738008 (not (= lambda!311102 lambda!311101))))

(assert (=> b!5738008 true))

(assert (=> b!5738008 true))

(assert (=> b!5738008 true))

(declare-fun bs!1341201 () Bool)

(declare-fun b!5738039 () Bool)

(assert (= bs!1341201 (and b!5738039 b!5738004)))

(declare-datatypes ((List!63540 0))(
  ( (Nil!63416) (Cons!63416 (h!69864 C!31764) (t!376868 List!63540)) )
))
(declare-fun s!2326 () List!63540)

(declare-fun lt!2284493 () Regex!15747)

(declare-fun lambda!311103 () Int)

(declare-datatypes ((tuple2!65688 0))(
  ( (tuple2!65689 (_1!36147 List!63540) (_2!36147 List!63540)) )
))
(declare-fun lt!2284515 () tuple2!65688)

(assert (=> bs!1341201 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 r!7292)) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311103 lambda!311096))))

(assert (=> bs!1341201 (not (= lambda!311103 lambda!311097))))

(declare-fun bs!1341202 () Bool)

(assert (= bs!1341202 (and b!5738039 b!5738008)))

(assert (=> bs!1341202 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) lt!2284510) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311103 lambda!311101))))

(assert (=> bs!1341202 (not (= lambda!311103 lambda!311102))))

(assert (=> b!5738039 true))

(assert (=> b!5738039 true))

(assert (=> b!5738039 true))

(declare-fun lambda!311104 () Int)

(assert (=> bs!1341202 (not (= lambda!311104 lambda!311101))))

(assert (=> b!5738039 (not (= lambda!311104 lambda!311103))))

(assert (=> bs!1341202 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) lt!2284510) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311104 lambda!311102))))

(assert (=> bs!1341201 (not (= lambda!311104 lambda!311096))))

(assert (=> bs!1341201 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 r!7292)) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311104 lambda!311097))))

(assert (=> b!5738039 true))

(assert (=> b!5738039 true))

(assert (=> b!5738039 true))

(declare-fun lambda!311105 () Int)

(assert (=> b!5738039 (not (= lambda!311105 lambda!311104))))

(assert (=> bs!1341202 (not (= lambda!311105 lambda!311101))))

(assert (=> b!5738039 (not (= lambda!311105 lambda!311103))))

(assert (=> bs!1341202 (not (= lambda!311105 lambda!311102))))

(assert (=> bs!1341201 (not (= lambda!311105 lambda!311096))))

(assert (=> bs!1341201 (not (= lambda!311105 lambda!311097))))

(assert (=> b!5738039 true))

(assert (=> b!5738039 true))

(assert (=> b!5738039 true))

(declare-fun res!2423432 () Bool)

(declare-fun e!3527337 () Bool)

(assert (=> start!590440 (=> (not res!2423432) (not e!3527337))))

(declare-fun validRegex!7483 (Regex!15747) Bool)

(assert (=> start!590440 (= res!2423432 (validRegex!7483 r!7292))))

(assert (=> start!590440 e!3527337))

(declare-fun e!3527361 () Bool)

(assert (=> start!590440 e!3527361))

(declare-fun condSetEmpty!38509 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!63541 0))(
  ( (Nil!63417) (Cons!63417 (h!69865 Regex!15747) (t!376869 List!63541)) )
))
(declare-datatypes ((Context!10262 0))(
  ( (Context!10263 (exprs!5631 List!63541)) )
))
(declare-fun z!1189 () (InoxSet Context!10262))

(assert (=> start!590440 (= condSetEmpty!38509 (= z!1189 ((as const (Array Context!10262 Bool)) false)))))

(declare-fun setRes!38509 () Bool)

(assert (=> start!590440 setRes!38509))

(declare-fun e!3527336 () Bool)

(assert (=> start!590440 e!3527336))

(declare-fun e!3527360 () Bool)

(assert (=> start!590440 e!3527360))

(declare-fun b!5737999 () Bool)

(declare-fun e!3527362 () Bool)

(declare-fun e!3527346 () Bool)

(assert (=> b!5737999 (= e!3527362 (not e!3527346))))

(declare-fun res!2423429 () Bool)

(assert (=> b!5737999 (=> res!2423429 e!3527346)))

(declare-datatypes ((List!63542 0))(
  ( (Nil!63418) (Cons!63418 (h!69866 Context!10262) (t!376870 List!63542)) )
))
(declare-fun zl!343 () List!63542)

(get-info :version)

(assert (=> b!5737999 (= res!2423429 (not ((_ is Cons!63418) zl!343)))))

(declare-fun lt!2284524 () Bool)

(declare-fun matchRSpec!2850 (Regex!15747 List!63540) Bool)

(assert (=> b!5737999 (= lt!2284524 (matchRSpec!2850 r!7292 s!2326))))

(declare-fun matchR!7932 (Regex!15747 List!63540) Bool)

(assert (=> b!5737999 (= lt!2284524 (matchR!7932 r!7292 s!2326))))

(declare-datatypes ((Unit!156520 0))(
  ( (Unit!156521) )
))
(declare-fun lt!2284535 () Unit!156520)

(declare-fun mainMatchTheorem!2850 (Regex!15747 List!63540) Unit!156520)

(assert (=> b!5737999 (= lt!2284535 (mainMatchTheorem!2850 r!7292 s!2326))))

(declare-fun b!5738000 () Bool)

(declare-fun e!3527341 () Bool)

(declare-fun e!3527348 () Bool)

(assert (=> b!5738000 (= e!3527341 e!3527348)))

(declare-fun res!2423412 () Bool)

(assert (=> b!5738000 (=> res!2423412 e!3527348)))

(declare-fun lt!2284484 () Bool)

(declare-fun lt!2284533 () (InoxSet Context!10262))

(declare-fun matchZipper!1885 ((InoxSet Context!10262) List!63540) Bool)

(assert (=> b!5738000 (= res!2423412 (not (= lt!2284484 (matchZipper!1885 lt!2284533 (t!376868 s!2326)))))))

(declare-fun lt!2284473 () (InoxSet Context!10262))

(assert (=> b!5738000 (= lt!2284484 (matchZipper!1885 lt!2284473 s!2326))))

(declare-fun b!5738001 () Bool)

(declare-fun e!3527349 () Bool)

(assert (=> b!5738001 (= e!3527348 e!3527349)))

(declare-fun res!2423433 () Bool)

(assert (=> b!5738001 (=> res!2423433 e!3527349)))

(declare-fun lt!2284525 () Regex!15747)

(assert (=> b!5738001 (= res!2423433 (not (= r!7292 lt!2284525)))))

(assert (=> b!5738001 (= lt!2284525 (Concat!24592 lt!2284493 (regTwo!32006 r!7292)))))

(declare-fun b!5738002 () Bool)

(declare-fun res!2423438 () Bool)

(declare-fun e!3527353 () Bool)

(assert (=> b!5738002 (=> res!2423438 e!3527353)))

(declare-fun e!3527355 () Bool)

(assert (=> b!5738002 (= res!2423438 e!3527355)))

(declare-fun res!2423417 () Bool)

(assert (=> b!5738002 (=> (not res!2423417) (not e!3527355))))

(assert (=> b!5738002 (= res!2423417 ((_ is Concat!24592) (regOne!32006 r!7292)))))

(declare-fun b!5738003 () Bool)

(declare-fun e!3527358 () Bool)

(declare-fun lt!2284476 () (InoxSet Context!10262))

(assert (=> b!5738003 (= e!3527358 (matchZipper!1885 lt!2284476 (t!376868 s!2326)))))

(declare-fun e!3527350 () Bool)

(assert (=> b!5738004 (= e!3527346 e!3527350)))

(declare-fun res!2423439 () Bool)

(assert (=> b!5738004 (=> res!2423439 e!3527350)))

(declare-fun lt!2284474 () Bool)

(assert (=> b!5738004 (= res!2423439 (or (not (= lt!2284524 lt!2284474)) ((_ is Nil!63416) s!2326)))))

(declare-fun Exists!2847 (Int) Bool)

(assert (=> b!5738004 (= (Exists!2847 lambda!311096) (Exists!2847 lambda!311097))))

(declare-fun lt!2284523 () Unit!156520)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1476 (Regex!15747 Regex!15747 List!63540) Unit!156520)

(assert (=> b!5738004 (= lt!2284523 (lemmaExistCutMatchRandMatchRSpecEquivalent!1476 (regOne!32006 r!7292) (regTwo!32006 r!7292) s!2326))))

(assert (=> b!5738004 (= lt!2284474 (Exists!2847 lambda!311096))))

(declare-datatypes ((Option!15756 0))(
  ( (None!15755) (Some!15755 (v!51810 tuple2!65688)) )
))
(declare-fun isDefined!12459 (Option!15756) Bool)

(declare-fun findConcatSeparation!2170 (Regex!15747 Regex!15747 List!63540 List!63540 List!63540) Option!15756)

(assert (=> b!5738004 (= lt!2284474 (isDefined!12459 (findConcatSeparation!2170 (regOne!32006 r!7292) (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326)))))

(declare-fun lt!2284489 () Unit!156520)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1934 (Regex!15747 Regex!15747 List!63540) Unit!156520)

(assert (=> b!5738004 (= lt!2284489 (lemmaFindConcatSeparationEquivalentToExists!1934 (regOne!32006 r!7292) (regTwo!32006 r!7292) s!2326))))

(declare-fun b!5738005 () Bool)

(declare-fun res!2423427 () Bool)

(assert (=> b!5738005 (=> res!2423427 e!3527353)))

(assert (=> b!5738005 (= res!2423427 (or ((_ is Concat!24592) (regOne!32006 r!7292)) (not ((_ is Star!15747) (regOne!32006 r!7292)))))))

(declare-fun b!5738006 () Bool)

(declare-fun res!2423416 () Bool)

(assert (=> b!5738006 (=> res!2423416 e!3527346)))

(assert (=> b!5738006 (= res!2423416 (not ((_ is Cons!63417) (exprs!5631 (h!69866 zl!343)))))))

(declare-fun b!5738007 () Bool)

(declare-fun e!3527345 () Bool)

(declare-fun lt!2284495 () List!63540)

(assert (=> b!5738007 (= e!3527345 (= s!2326 lt!2284495))))

(assert (=> b!5738007 (matchR!7932 lt!2284525 lt!2284495)))

(declare-fun lt!2284531 () List!63540)

(declare-fun lt!2284532 () Unit!156520)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!284 (Regex!15747 Regex!15747 List!63540 List!63540) Unit!156520)

(assert (=> b!5738007 (= lt!2284532 (lemmaTwoRegexMatchThenConcatMatchesConcatString!284 lt!2284493 (regTwo!32006 r!7292) lt!2284531 (_2!36147 lt!2284515)))))

(declare-fun e!3527347 () Bool)

(declare-fun e!3527338 () Bool)

(assert (=> b!5738008 (= e!3527347 e!3527338)))

(declare-fun res!2423425 () Bool)

(assert (=> b!5738008 (=> res!2423425 e!3527338)))

(assert (=> b!5738008 (= res!2423425 (not (matchR!7932 lt!2284510 (_1!36147 lt!2284515))))))

(declare-fun lt!2284503 () Option!15756)

(declare-fun get!21876 (Option!15756) tuple2!65688)

(assert (=> b!5738008 (= lt!2284515 (get!21876 lt!2284503))))

(assert (=> b!5738008 (= (Exists!2847 lambda!311101) (Exists!2847 lambda!311102))))

(declare-fun lt!2284487 () Unit!156520)

(assert (=> b!5738008 (= lt!2284487 (lemmaExistCutMatchRandMatchRSpecEquivalent!1476 lt!2284510 (regTwo!32006 r!7292) s!2326))))

(assert (=> b!5738008 (= (isDefined!12459 lt!2284503) (Exists!2847 lambda!311101))))

(assert (=> b!5738008 (= lt!2284503 (findConcatSeparation!2170 lt!2284510 (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326))))

(declare-fun lt!2284494 () Unit!156520)

(assert (=> b!5738008 (= lt!2284494 (lemmaFindConcatSeparationEquivalentToExists!1934 lt!2284510 (regTwo!32006 r!7292) s!2326))))

(declare-fun lt!2284501 () Regex!15747)

(assert (=> b!5738008 (matchRSpec!2850 lt!2284501 s!2326)))

(declare-fun lt!2284500 () Unit!156520)

(assert (=> b!5738008 (= lt!2284500 (mainMatchTheorem!2850 lt!2284501 s!2326))))

(assert (=> b!5738008 (matchR!7932 lt!2284501 s!2326)))

(assert (=> b!5738008 (= lt!2284501 (Concat!24592 lt!2284510 (regTwo!32006 r!7292)))))

(assert (=> b!5738008 (= lt!2284510 (Concat!24592 (reg!16076 (regOne!32006 r!7292)) lt!2284493))))

(declare-fun lt!2284498 () Unit!156520)

(declare-fun lemmaConcatAssociative!100 (Regex!15747 Regex!15747 Regex!15747 List!63540) Unit!156520)

(assert (=> b!5738008 (= lt!2284498 (lemmaConcatAssociative!100 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (regTwo!32006 r!7292) s!2326))))

(declare-fun e!3527354 () Bool)

(assert (=> b!5738008 e!3527354))

(declare-fun res!2423410 () Bool)

(assert (=> b!5738008 (=> (not res!2423410) (not e!3527354))))

(declare-fun lt!2284521 () Regex!15747)

(declare-fun lt!2284517 () List!63540)

(assert (=> b!5738008 (= res!2423410 (matchR!7932 lt!2284521 lt!2284517))))

(declare-fun lt!2284497 () Unit!156520)

(declare-fun lt!2284469 () tuple2!65688)

(assert (=> b!5738008 (= lt!2284497 (lemmaTwoRegexMatchThenConcatMatchesConcatString!284 (reg!16076 (regOne!32006 r!7292)) lt!2284525 (_1!36147 lt!2284469) (_2!36147 lt!2284469)))))

(assert (=> b!5738008 (matchR!7932 lt!2284525 (_2!36147 lt!2284469))))

(declare-fun lt!2284478 () Unit!156520)

(declare-fun lt!2284492 () List!63542)

(declare-fun lt!2284530 () (InoxSet Context!10262))

(declare-fun theoremZipperRegexEquiv!667 ((InoxSet Context!10262) List!63542 Regex!15747 List!63540) Unit!156520)

(assert (=> b!5738008 (= lt!2284478 (theoremZipperRegexEquiv!667 lt!2284530 lt!2284492 lt!2284525 (_2!36147 lt!2284469)))))

(assert (=> b!5738008 (matchR!7932 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284469))))

(declare-fun lt!2284485 () (InoxSet Context!10262))

(declare-fun lt!2284499 () Unit!156520)

(declare-fun lt!2284472 () List!63542)

(assert (=> b!5738008 (= lt!2284499 (theoremZipperRegexEquiv!667 lt!2284485 lt!2284472 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284469)))))

(declare-fun lt!2284511 () List!63541)

(declare-fun lt!2284480 () List!63541)

(declare-fun ++!13966 (List!63541 List!63541) List!63541)

(assert (=> b!5738008 (matchZipper!1885 (store ((as const (Array Context!10262 Bool)) false) (Context!10263 (++!13966 lt!2284511 lt!2284480)) true) lt!2284517)))

(declare-fun lt!2284505 () Unit!156520)

(declare-fun lambda!311100 () Int)

(declare-fun lemmaConcatPreservesForall!316 (List!63541 List!63541 Int) Unit!156520)

(assert (=> b!5738008 (= lt!2284505 (lemmaConcatPreservesForall!316 lt!2284511 lt!2284480 lambda!311100))))

(declare-fun lt!2284516 () Unit!156520)

(declare-fun lt!2284528 () Context!10262)

(declare-fun lt!2284522 () Context!10262)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!146 (Context!10262 Context!10262 List!63540 List!63540) Unit!156520)

(assert (=> b!5738008 (= lt!2284516 (lemmaConcatenateContextMatchesConcatOfStrings!146 lt!2284528 lt!2284522 (_1!36147 lt!2284469) (_2!36147 lt!2284469)))))

(declare-fun b!5738009 () Bool)

(declare-fun tp!1587044 () Bool)

(declare-fun tp!1587048 () Bool)

(assert (=> b!5738009 (= e!3527361 (and tp!1587044 tp!1587048))))

(declare-fun b!5738010 () Bool)

(declare-fun tp!1587041 () Bool)

(assert (=> b!5738010 (= e!3527361 tp!1587041)))

(declare-fun b!5738011 () Bool)

(declare-fun e!3527342 () Bool)

(declare-fun e!3527359 () Bool)

(assert (=> b!5738011 (= e!3527342 e!3527359)))

(declare-fun res!2423435 () Bool)

(assert (=> b!5738011 (=> res!2423435 e!3527359)))

(declare-fun unfocusZipper!1489 (List!63542) Regex!15747)

(assert (=> b!5738011 (= res!2423435 (not (= (unfocusZipper!1489 lt!2284472) (reg!16076 (regOne!32006 r!7292)))))))

(assert (=> b!5738011 (= lt!2284472 (Cons!63418 lt!2284528 Nil!63418))))

(declare-fun lambda!311098 () Int)

(declare-fun flatMap!1360 ((InoxSet Context!10262) Int) (InoxSet Context!10262))

(declare-fun derivationStepZipperUp!1015 (Context!10262 C!31764) (InoxSet Context!10262))

(assert (=> b!5738011 (= (flatMap!1360 lt!2284530 lambda!311098) (derivationStepZipperUp!1015 lt!2284522 (h!69864 s!2326)))))

(declare-fun lt!2284482 () Unit!156520)

(declare-fun lemmaFlatMapOnSingletonSet!892 ((InoxSet Context!10262) Context!10262 Int) Unit!156520)

(assert (=> b!5738011 (= lt!2284482 (lemmaFlatMapOnSingletonSet!892 lt!2284530 lt!2284522 lambda!311098))))

(assert (=> b!5738011 (= (flatMap!1360 lt!2284485 lambda!311098) (derivationStepZipperUp!1015 lt!2284528 (h!69864 s!2326)))))

(declare-fun lt!2284529 () Unit!156520)

(assert (=> b!5738011 (= lt!2284529 (lemmaFlatMapOnSingletonSet!892 lt!2284485 lt!2284528 lambda!311098))))

(declare-fun lt!2284508 () (InoxSet Context!10262))

(assert (=> b!5738011 (= lt!2284508 (derivationStepZipperUp!1015 lt!2284522 (h!69864 s!2326)))))

(declare-fun lt!2284477 () (InoxSet Context!10262))

(assert (=> b!5738011 (= lt!2284477 (derivationStepZipperUp!1015 lt!2284528 (h!69864 s!2326)))))

(assert (=> b!5738011 (= lt!2284530 (store ((as const (Array Context!10262 Bool)) false) lt!2284522 true))))

(assert (=> b!5738011 (= lt!2284485 (store ((as const (Array Context!10262 Bool)) false) lt!2284528 true))))

(assert (=> b!5738011 (= lt!2284528 (Context!10263 lt!2284511))))

(assert (=> b!5738011 (= lt!2284511 (Cons!63417 (reg!16076 (regOne!32006 r!7292)) Nil!63417))))

(declare-fun b!5738012 () Bool)

(declare-fun e!3527363 () Unit!156520)

(declare-fun Unit!156522 () Unit!156520)

(assert (=> b!5738012 (= e!3527363 Unit!156522)))

(declare-fun lt!2284475 () (InoxSet Context!10262))

(declare-fun lt!2284471 () Unit!156520)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!772 ((InoxSet Context!10262) (InoxSet Context!10262) List!63540) Unit!156520)

(assert (=> b!5738012 (= lt!2284471 (lemmaZipperConcatMatchesSameAsBothZippers!772 lt!2284475 lt!2284476 (t!376868 s!2326)))))

(declare-fun res!2423403 () Bool)

(assert (=> b!5738012 (= res!2423403 (matchZipper!1885 lt!2284475 (t!376868 s!2326)))))

(assert (=> b!5738012 (=> res!2423403 e!3527358)))

(assert (=> b!5738012 (= (matchZipper!1885 ((_ map or) lt!2284475 lt!2284476) (t!376868 s!2326)) e!3527358)))

(declare-fun b!5738013 () Bool)

(declare-fun tp!1587046 () Bool)

(declare-fun tp!1587050 () Bool)

(assert (=> b!5738013 (= e!3527361 (and tp!1587046 tp!1587050))))

(declare-fun b!5738014 () Bool)

(declare-fun e!3527356 () Bool)

(declare-fun tp!1587045 () Bool)

(assert (=> b!5738014 (= e!3527356 tp!1587045)))

(declare-fun setElem!38509 () Context!10262)

(declare-fun setNonEmpty!38509 () Bool)

(declare-fun e!3527339 () Bool)

(declare-fun tp!1587043 () Bool)

(declare-fun inv!82614 (Context!10262) Bool)

(assert (=> setNonEmpty!38509 (= setRes!38509 (and tp!1587043 (inv!82614 setElem!38509) e!3527339))))

(declare-fun setRest!38509 () (InoxSet Context!10262))

(assert (=> setNonEmpty!38509 (= z!1189 ((_ map or) (store ((as const (Array Context!10262 Bool)) false) setElem!38509 true) setRest!38509))))

(declare-fun b!5738015 () Bool)

(declare-fun e!3527351 () Bool)

(assert (=> b!5738015 (= e!3527351 e!3527347)))

(declare-fun res!2423434 () Bool)

(assert (=> b!5738015 (=> res!2423434 e!3527347)))

(assert (=> b!5738015 (= res!2423434 (not (= s!2326 lt!2284517)))))

(declare-fun ++!13967 (List!63540 List!63540) List!63540)

(assert (=> b!5738015 (= lt!2284517 (++!13967 (_1!36147 lt!2284469) (_2!36147 lt!2284469)))))

(declare-fun lt!2284483 () Option!15756)

(assert (=> b!5738015 (= lt!2284469 (get!21876 lt!2284483))))

(assert (=> b!5738015 (isDefined!12459 lt!2284483)))

(declare-fun findConcatSeparationZippers!134 ((InoxSet Context!10262) (InoxSet Context!10262) List!63540 List!63540 List!63540) Option!15756)

(assert (=> b!5738015 (= lt!2284483 (findConcatSeparationZippers!134 lt!2284485 lt!2284530 Nil!63416 s!2326 s!2326))))

(declare-fun lt!2284481 () Unit!156520)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!134 ((InoxSet Context!10262) Context!10262 List!63540) Unit!156520)

(assert (=> b!5738015 (= lt!2284481 (lemmaConcatZipperMatchesStringThenFindConcatDefined!134 lt!2284485 lt!2284522 s!2326))))

(declare-fun b!5738016 () Bool)

(declare-fun nullable!5779 (Regex!15747) Bool)

(assert (=> b!5738016 (= e!3527355 (nullable!5779 (regOne!32006 (regOne!32006 r!7292))))))

(declare-fun b!5738017 () Bool)

(declare-fun res!2423441 () Bool)

(assert (=> b!5738017 (=> res!2423441 e!3527347)))

(assert (=> b!5738017 (= res!2423441 (not (matchZipper!1885 lt!2284530 (_2!36147 lt!2284469))))))

(declare-fun b!5738018 () Bool)

(declare-fun tp!1587047 () Bool)

(assert (=> b!5738018 (= e!3527336 (and (inv!82614 (h!69866 zl!343)) e!3527356 tp!1587047))))

(declare-fun b!5738019 () Bool)

(declare-fun tp_is_empty!40747 () Bool)

(assert (=> b!5738019 (= e!3527361 tp_is_empty!40747)))

(declare-fun b!5738020 () Bool)

(declare-fun res!2423420 () Bool)

(assert (=> b!5738020 (=> (not res!2423420) (not e!3527337))))

(declare-fun toList!9531 ((InoxSet Context!10262)) List!63542)

(assert (=> b!5738020 (= res!2423420 (= (toList!9531 z!1189) zl!343))))

(declare-fun b!5738021 () Bool)

(declare-fun e!3527364 () Bool)

(assert (=> b!5738021 (= e!3527364 e!3527341)))

(declare-fun res!2423418 () Bool)

(assert (=> b!5738021 (=> res!2423418 e!3527341)))

(declare-fun lt!2284491 () (InoxSet Context!10262))

(assert (=> b!5738021 (= res!2423418 (not (= lt!2284533 lt!2284491)))))

(declare-fun lt!2284509 () Context!10262)

(assert (=> b!5738021 (= (flatMap!1360 lt!2284473 lambda!311098) (derivationStepZipperUp!1015 lt!2284509 (h!69864 s!2326)))))

(declare-fun lt!2284496 () Unit!156520)

(assert (=> b!5738021 (= lt!2284496 (lemmaFlatMapOnSingletonSet!892 lt!2284473 lt!2284509 lambda!311098))))

(declare-fun lt!2284488 () (InoxSet Context!10262))

(assert (=> b!5738021 (= lt!2284488 (derivationStepZipperUp!1015 lt!2284509 (h!69864 s!2326)))))

(declare-fun derivationStepZipper!1830 ((InoxSet Context!10262) C!31764) (InoxSet Context!10262))

(assert (=> b!5738021 (= lt!2284533 (derivationStepZipper!1830 lt!2284473 (h!69864 s!2326)))))

(assert (=> b!5738021 (= lt!2284473 (store ((as const (Array Context!10262 Bool)) false) lt!2284509 true))))

(assert (=> b!5738021 (= lt!2284509 (Context!10263 (Cons!63417 (reg!16076 (regOne!32006 r!7292)) lt!2284480)))))

(declare-fun b!5738022 () Bool)

(declare-fun res!2423413 () Bool)

(assert (=> b!5738022 (=> res!2423413 e!3527348)))

(declare-fun lt!2284513 () Regex!15747)

(assert (=> b!5738022 (= res!2423413 (not (= lt!2284513 r!7292)))))

(declare-fun b!5738023 () Bool)

(declare-fun res!2423436 () Bool)

(assert (=> b!5738023 (=> res!2423436 e!3527346)))

(declare-fun generalisedUnion!1610 (List!63541) Regex!15747)

(declare-fun unfocusZipperList!1175 (List!63542) List!63541)

(assert (=> b!5738023 (= res!2423436 (not (= r!7292 (generalisedUnion!1610 (unfocusZipperList!1175 zl!343)))))))

(declare-fun b!5738024 () Bool)

(declare-fun Unit!156523 () Unit!156520)

(assert (=> b!5738024 (= e!3527363 Unit!156523)))

(declare-fun b!5738025 () Bool)

(assert (=> b!5738025 (= e!3527353 e!3527364)))

(declare-fun res!2423405 () Bool)

(assert (=> b!5738025 (=> res!2423405 e!3527364)))

(assert (=> b!5738025 (= res!2423405 (not (= lt!2284475 lt!2284491)))))

(declare-fun derivationStepZipperDown!1089 (Regex!15747 Context!10262 C!31764) (InoxSet Context!10262))

(assert (=> b!5738025 (= lt!2284491 (derivationStepZipperDown!1089 (reg!16076 (regOne!32006 r!7292)) lt!2284522 (h!69864 s!2326)))))

(assert (=> b!5738025 (= lt!2284522 (Context!10263 lt!2284480))))

(assert (=> b!5738025 (= lt!2284480 (Cons!63417 lt!2284493 (t!376869 (exprs!5631 (h!69866 zl!343)))))))

(assert (=> b!5738025 (= lt!2284493 (Star!15747 (reg!16076 (regOne!32006 r!7292))))))

(declare-fun b!5738026 () Bool)

(declare-fun lt!2284526 () Bool)

(assert (=> b!5738026 (= e!3527354 lt!2284526)))

(declare-fun b!5738027 () Bool)

(declare-fun e!3527344 () Bool)

(assert (=> b!5738027 (= e!3527344 e!3527345)))

(declare-fun res!2423423 () Bool)

(assert (=> b!5738027 (=> res!2423423 e!3527345)))

(assert (=> b!5738027 (= res!2423423 (not (matchR!7932 (regTwo!32006 r!7292) (_2!36147 lt!2284515))))))

(assert (=> b!5738027 (matchR!7932 lt!2284493 lt!2284531)))

(declare-fun lt!2284520 () Unit!156520)

(declare-fun lt!2284479 () tuple2!65688)

(declare-fun lemmaStarApp!98 (Regex!15747 List!63540 List!63540) Unit!156520)

(assert (=> b!5738027 (= lt!2284520 (lemmaStarApp!98 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284479) (_2!36147 lt!2284479)))))

(declare-fun b!5738028 () Bool)

(declare-fun res!2423437 () Bool)

(assert (=> b!5738028 (=> res!2423437 e!3527346)))

(assert (=> b!5738028 (= res!2423437 (or ((_ is EmptyExpr!15747) r!7292) ((_ is EmptyLang!15747) r!7292) ((_ is ElementMatch!15747) r!7292) ((_ is Union!15747) r!7292) (not ((_ is Concat!24592) r!7292))))))

(assert (=> b!5738029 (= e!3527350 e!3527353)))

(declare-fun res!2423426 () Bool)

(assert (=> b!5738029 (=> res!2423426 e!3527353)))

(assert (=> b!5738029 (= res!2423426 (or (and ((_ is ElementMatch!15747) (regOne!32006 r!7292)) (= (c!1012627 (regOne!32006 r!7292)) (h!69864 s!2326))) ((_ is Union!15747) (regOne!32006 r!7292))))))

(declare-fun lt!2284512 () Unit!156520)

(assert (=> b!5738029 (= lt!2284512 e!3527363)))

(declare-fun c!1012626 () Bool)

(declare-fun lt!2284534 () Bool)

(assert (=> b!5738029 (= c!1012626 lt!2284534)))

(assert (=> b!5738029 (= lt!2284534 (nullable!5779 (h!69865 (exprs!5631 (h!69866 zl!343)))))))

(assert (=> b!5738029 (= (flatMap!1360 z!1189 lambda!311098) (derivationStepZipperUp!1015 (h!69866 zl!343) (h!69864 s!2326)))))

(declare-fun lt!2284490 () Unit!156520)

(assert (=> b!5738029 (= lt!2284490 (lemmaFlatMapOnSingletonSet!892 z!1189 (h!69866 zl!343) lambda!311098))))

(declare-fun lt!2284518 () Context!10262)

(assert (=> b!5738029 (= lt!2284476 (derivationStepZipperUp!1015 lt!2284518 (h!69864 s!2326)))))

(assert (=> b!5738029 (= lt!2284475 (derivationStepZipperDown!1089 (h!69865 (exprs!5631 (h!69866 zl!343))) lt!2284518 (h!69864 s!2326)))))

(assert (=> b!5738029 (= lt!2284518 (Context!10263 (t!376869 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun lt!2284536 () (InoxSet Context!10262))

(assert (=> b!5738029 (= lt!2284536 (derivationStepZipperUp!1015 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343))))) (h!69864 s!2326)))))

(declare-fun b!5738030 () Bool)

(declare-fun res!2423440 () Bool)

(declare-fun e!3527352 () Bool)

(assert (=> b!5738030 (=> res!2423440 e!3527352)))

(assert (=> b!5738030 (= res!2423440 (not lt!2284534))))

(declare-fun b!5738031 () Bool)

(declare-fun e!3527343 () Bool)

(assert (=> b!5738031 (= e!3527343 (not (matchZipper!1885 lt!2284476 (t!376868 s!2326))))))

(declare-fun b!5738032 () Bool)

(assert (=> b!5738032 (= e!3527349 e!3527342)))

(declare-fun res!2423407 () Bool)

(assert (=> b!5738032 (=> res!2423407 e!3527342)))

(assert (=> b!5738032 (= res!2423407 (not (= (unfocusZipper!1489 (Cons!63418 lt!2284509 Nil!63418)) lt!2284521)))))

(assert (=> b!5738032 (= lt!2284521 (Concat!24592 (reg!16076 (regOne!32006 r!7292)) lt!2284525))))

(declare-fun b!5738033 () Bool)

(declare-fun e!3527357 () Bool)

(assert (=> b!5738033 (= e!3527352 e!3527357)))

(declare-fun res!2423406 () Bool)

(assert (=> b!5738033 (=> res!2423406 e!3527357)))

(assert (=> b!5738033 (= res!2423406 e!3527343)))

(declare-fun res!2423414 () Bool)

(assert (=> b!5738033 (=> (not res!2423414) (not e!3527343))))

(declare-fun lt!2284527 () Bool)

(assert (=> b!5738033 (= res!2423414 (not lt!2284527))))

(assert (=> b!5738033 (= lt!2284527 (matchZipper!1885 lt!2284475 (t!376868 s!2326)))))

(declare-fun b!5738034 () Bool)

(assert (=> b!5738034 (= e!3527337 e!3527362)))

(declare-fun res!2423430 () Bool)

(assert (=> b!5738034 (=> (not res!2423430) (not e!3527362))))

(assert (=> b!5738034 (= res!2423430 (= r!7292 lt!2284513))))

(assert (=> b!5738034 (= lt!2284513 (unfocusZipper!1489 zl!343))))

(declare-fun b!5738035 () Bool)

(declare-fun e!3527340 () Bool)

(assert (=> b!5738035 (= e!3527340 e!3527352)))

(declare-fun res!2423408 () Bool)

(assert (=> b!5738035 (=> res!2423408 e!3527352)))

(assert (=> b!5738035 (= res!2423408 lt!2284524)))

(assert (=> b!5738035 (= lt!2284526 (matchRSpec!2850 lt!2284521 s!2326))))

(assert (=> b!5738035 (= lt!2284526 (matchR!7932 lt!2284521 s!2326))))

(declare-fun lt!2284470 () Unit!156520)

(assert (=> b!5738035 (= lt!2284470 (mainMatchTheorem!2850 lt!2284521 s!2326))))

(declare-fun b!5738036 () Bool)

(declare-fun tp!1587049 () Bool)

(assert (=> b!5738036 (= e!3527339 tp!1587049)))

(declare-fun setIsEmpty!38509 () Bool)

(assert (=> setIsEmpty!38509 setRes!38509))

(assert (=> b!5738037 (= e!3527357 e!3527351)))

(declare-fun res!2423431 () Bool)

(assert (=> b!5738037 (=> res!2423431 e!3527351)))

(declare-fun appendTo!126 ((InoxSet Context!10262) Context!10262) (InoxSet Context!10262))

(assert (=> b!5738037 (= res!2423431 (not (= (appendTo!126 lt!2284485 lt!2284522) lt!2284473)))))

(declare-fun lambda!311099 () Int)

(declare-fun map!14541 ((InoxSet Context!10262) Int) (InoxSet Context!10262))

(assert (=> b!5738037 (= (map!14541 lt!2284485 lambda!311099) (store ((as const (Array Context!10262 Bool)) false) (Context!10263 (++!13966 lt!2284511 lt!2284480)) true))))

(declare-fun lt!2284507 () Unit!156520)

(assert (=> b!5738037 (= lt!2284507 (lemmaConcatPreservesForall!316 lt!2284511 lt!2284480 lambda!311100))))

(declare-fun lt!2284486 () Unit!156520)

(declare-fun lemmaMapOnSingletonSet!142 ((InoxSet Context!10262) Context!10262 Int) Unit!156520)

(assert (=> b!5738037 (= lt!2284486 (lemmaMapOnSingletonSet!142 lt!2284485 lt!2284528 lambda!311099))))

(declare-fun b!5738038 () Bool)

(declare-fun res!2423415 () Bool)

(assert (=> b!5738038 (=> res!2423415 e!3527352)))

(assert (=> b!5738038 (= res!2423415 (not (matchZipper!1885 z!1189 s!2326)))))

(assert (=> b!5738039 (= e!3527338 e!3527344)))

(declare-fun res!2423409 () Bool)

(assert (=> b!5738039 (=> res!2423409 e!3527344)))

(assert (=> b!5738039 (= res!2423409 (not (matchR!7932 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284479))))))

(declare-fun lt!2284519 () List!63540)

(assert (=> b!5738039 (= lt!2284495 (++!13967 (_1!36147 lt!2284479) lt!2284519))))

(assert (=> b!5738039 (= lt!2284495 (++!13967 lt!2284531 (_2!36147 lt!2284515)))))

(assert (=> b!5738039 (= lt!2284519 (++!13967 (_2!36147 lt!2284479) (_2!36147 lt!2284515)))))

(assert (=> b!5738039 (= lt!2284531 (++!13967 (_1!36147 lt!2284479) (_2!36147 lt!2284479)))))

(declare-fun lt!2284506 () Unit!156520)

(declare-fun lemmaConcatAssociativity!2890 (List!63540 List!63540 List!63540) Unit!156520)

(assert (=> b!5738039 (= lt!2284506 (lemmaConcatAssociativity!2890 (_1!36147 lt!2284479) (_2!36147 lt!2284479) (_2!36147 lt!2284515)))))

(declare-fun lt!2284504 () Option!15756)

(assert (=> b!5738039 (= lt!2284479 (get!21876 lt!2284504))))

(assert (=> b!5738039 (= (Exists!2847 lambda!311103) (Exists!2847 lambda!311105))))

(declare-fun lt!2284537 () Unit!156520)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!560 (Regex!15747 List!63540) Unit!156520)

(assert (=> b!5738039 (= lt!2284537 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!560 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284515)))))

(assert (=> b!5738039 (= (Exists!2847 lambda!311103) (Exists!2847 lambda!311104))))

(declare-fun lt!2284538 () Unit!156520)

(assert (=> b!5738039 (= lt!2284538 (lemmaExistCutMatchRandMatchRSpecEquivalent!1476 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (_1!36147 lt!2284515)))))

(assert (=> b!5738039 (= (isDefined!12459 lt!2284504) (Exists!2847 lambda!311103))))

(assert (=> b!5738039 (= lt!2284504 (findConcatSeparation!2170 (reg!16076 (regOne!32006 r!7292)) lt!2284493 Nil!63416 (_1!36147 lt!2284515) (_1!36147 lt!2284515)))))

(declare-fun lt!2284502 () Unit!156520)

(assert (=> b!5738039 (= lt!2284502 (lemmaFindConcatSeparationEquivalentToExists!1934 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (_1!36147 lt!2284515)))))

(assert (=> b!5738039 (matchRSpec!2850 lt!2284510 (_1!36147 lt!2284515))))

(declare-fun lt!2284514 () Unit!156520)

(assert (=> b!5738039 (= lt!2284514 (mainMatchTheorem!2850 lt!2284510 (_1!36147 lt!2284515)))))

(declare-fun b!5738040 () Bool)

(assert (=> b!5738040 (= e!3527359 e!3527340)))

(declare-fun res!2423411 () Bool)

(assert (=> b!5738040 (=> res!2423411 e!3527340)))

(assert (=> b!5738040 (= res!2423411 (not (= (unfocusZipper!1489 lt!2284492) lt!2284525)))))

(assert (=> b!5738040 (= lt!2284492 (Cons!63418 lt!2284522 Nil!63418))))

(declare-fun b!5738041 () Bool)

(declare-fun res!2423424 () Bool)

(assert (=> b!5738041 (=> res!2423424 e!3527346)))

(declare-fun isEmpty!35297 (List!63542) Bool)

(assert (=> b!5738041 (= res!2423424 (not (isEmpty!35297 (t!376870 zl!343))))))

(declare-fun b!5738042 () Bool)

(declare-fun res!2423404 () Bool)

(assert (=> b!5738042 (=> res!2423404 e!3527346)))

(declare-fun generalisedConcat!1362 (List!63541) Regex!15747)

(assert (=> b!5738042 (= res!2423404 (not (= r!7292 (generalisedConcat!1362 (exprs!5631 (h!69866 zl!343))))))))

(declare-fun b!5738043 () Bool)

(declare-fun res!2423421 () Bool)

(assert (=> b!5738043 (=> res!2423421 e!3527344)))

(assert (=> b!5738043 (= res!2423421 (not (matchR!7932 lt!2284493 (_2!36147 lt!2284479))))))

(declare-fun b!5738044 () Bool)

(declare-fun res!2423419 () Bool)

(assert (=> b!5738044 (=> res!2423419 e!3527357)))

(assert (=> b!5738044 (= res!2423419 (or (not lt!2284527) (not lt!2284484)))))

(declare-fun b!5738045 () Bool)

(declare-fun res!2423422 () Bool)

(assert (=> b!5738045 (=> res!2423422 e!3527347)))

(assert (=> b!5738045 (= res!2423422 (not (matchZipper!1885 lt!2284485 (_1!36147 lt!2284469))))))

(declare-fun b!5738046 () Bool)

(declare-fun tp!1587042 () Bool)

(assert (=> b!5738046 (= e!3527360 (and tp_is_empty!40747 tp!1587042))))

(declare-fun b!5738047 () Bool)

(declare-fun res!2423428 () Bool)

(assert (=> b!5738047 (=> res!2423428 e!3527350)))

(declare-fun isEmpty!35298 (List!63541) Bool)

(assert (=> b!5738047 (= res!2423428 (isEmpty!35298 (t!376869 (exprs!5631 (h!69866 zl!343)))))))

(assert (= (and start!590440 res!2423432) b!5738020))

(assert (= (and b!5738020 res!2423420) b!5738034))

(assert (= (and b!5738034 res!2423430) b!5737999))

(assert (= (and b!5737999 (not res!2423429)) b!5738041))

(assert (= (and b!5738041 (not res!2423424)) b!5738042))

(assert (= (and b!5738042 (not res!2423404)) b!5738006))

(assert (= (and b!5738006 (not res!2423416)) b!5738023))

(assert (= (and b!5738023 (not res!2423436)) b!5738028))

(assert (= (and b!5738028 (not res!2423437)) b!5738004))

(assert (= (and b!5738004 (not res!2423439)) b!5738047))

(assert (= (and b!5738047 (not res!2423428)) b!5738029))

(assert (= (and b!5738029 c!1012626) b!5738012))

(assert (= (and b!5738029 (not c!1012626)) b!5738024))

(assert (= (and b!5738012 (not res!2423403)) b!5738003))

(assert (= (and b!5738029 (not res!2423426)) b!5738002))

(assert (= (and b!5738002 res!2423417) b!5738016))

(assert (= (and b!5738002 (not res!2423438)) b!5738005))

(assert (= (and b!5738005 (not res!2423427)) b!5738025))

(assert (= (and b!5738025 (not res!2423405)) b!5738021))

(assert (= (and b!5738021 (not res!2423418)) b!5738000))

(assert (= (and b!5738000 (not res!2423412)) b!5738022))

(assert (= (and b!5738022 (not res!2423413)) b!5738001))

(assert (= (and b!5738001 (not res!2423433)) b!5738032))

(assert (= (and b!5738032 (not res!2423407)) b!5738011))

(assert (= (and b!5738011 (not res!2423435)) b!5738040))

(assert (= (and b!5738040 (not res!2423411)) b!5738035))

(assert (= (and b!5738035 (not res!2423408)) b!5738038))

(assert (= (and b!5738038 (not res!2423415)) b!5738030))

(assert (= (and b!5738030 (not res!2423440)) b!5738033))

(assert (= (and b!5738033 res!2423414) b!5738031))

(assert (= (and b!5738033 (not res!2423406)) b!5738044))

(assert (= (and b!5738044 (not res!2423419)) b!5738037))

(assert (= (and b!5738037 (not res!2423431)) b!5738015))

(assert (= (and b!5738015 (not res!2423434)) b!5738045))

(assert (= (and b!5738045 (not res!2423422)) b!5738017))

(assert (= (and b!5738017 (not res!2423441)) b!5738008))

(assert (= (and b!5738008 res!2423410) b!5738026))

(assert (= (and b!5738008 (not res!2423425)) b!5738039))

(assert (= (and b!5738039 (not res!2423409)) b!5738043))

(assert (= (and b!5738043 (not res!2423421)) b!5738027))

(assert (= (and b!5738027 (not res!2423423)) b!5738007))

(assert (= (and start!590440 ((_ is ElementMatch!15747) r!7292)) b!5738019))

(assert (= (and start!590440 ((_ is Concat!24592) r!7292)) b!5738009))

(assert (= (and start!590440 ((_ is Star!15747) r!7292)) b!5738010))

(assert (= (and start!590440 ((_ is Union!15747) r!7292)) b!5738013))

(assert (= (and start!590440 condSetEmpty!38509) setIsEmpty!38509))

(assert (= (and start!590440 (not condSetEmpty!38509)) setNonEmpty!38509))

(assert (= setNonEmpty!38509 b!5738036))

(assert (= b!5738018 b!5738014))

(assert (= (and start!590440 ((_ is Cons!63418) zl!343)) b!5738018))

(assert (= (and start!590440 ((_ is Cons!63416) s!2326)) b!5738046))

(declare-fun m!6690030 () Bool)

(assert (=> b!5738025 m!6690030))

(declare-fun m!6690032 () Bool)

(assert (=> b!5738007 m!6690032))

(declare-fun m!6690034 () Bool)

(assert (=> b!5738007 m!6690034))

(declare-fun m!6690036 () Bool)

(assert (=> b!5738032 m!6690036))

(declare-fun m!6690038 () Bool)

(assert (=> b!5738029 m!6690038))

(declare-fun m!6690040 () Bool)

(assert (=> b!5738029 m!6690040))

(declare-fun m!6690042 () Bool)

(assert (=> b!5738029 m!6690042))

(declare-fun m!6690044 () Bool)

(assert (=> b!5738029 m!6690044))

(declare-fun m!6690046 () Bool)

(assert (=> b!5738029 m!6690046))

(declare-fun m!6690048 () Bool)

(assert (=> b!5738029 m!6690048))

(declare-fun m!6690050 () Bool)

(assert (=> b!5738029 m!6690050))

(declare-fun m!6690052 () Bool)

(assert (=> b!5738016 m!6690052))

(declare-fun m!6690054 () Bool)

(assert (=> b!5738008 m!6690054))

(declare-fun m!6690056 () Bool)

(assert (=> b!5738008 m!6690056))

(declare-fun m!6690058 () Bool)

(assert (=> b!5738008 m!6690058))

(declare-fun m!6690060 () Bool)

(assert (=> b!5738008 m!6690060))

(declare-fun m!6690062 () Bool)

(assert (=> b!5738008 m!6690062))

(declare-fun m!6690064 () Bool)

(assert (=> b!5738008 m!6690064))

(declare-fun m!6690066 () Bool)

(assert (=> b!5738008 m!6690066))

(declare-fun m!6690068 () Bool)

(assert (=> b!5738008 m!6690068))

(declare-fun m!6690070 () Bool)

(assert (=> b!5738008 m!6690070))

(declare-fun m!6690072 () Bool)

(assert (=> b!5738008 m!6690072))

(declare-fun m!6690074 () Bool)

(assert (=> b!5738008 m!6690074))

(declare-fun m!6690076 () Bool)

(assert (=> b!5738008 m!6690076))

(declare-fun m!6690078 () Bool)

(assert (=> b!5738008 m!6690078))

(assert (=> b!5738008 m!6690064))

(declare-fun m!6690080 () Bool)

(assert (=> b!5738008 m!6690080))

(declare-fun m!6690082 () Bool)

(assert (=> b!5738008 m!6690082))

(assert (=> b!5738008 m!6690068))

(declare-fun m!6690084 () Bool)

(assert (=> b!5738008 m!6690084))

(declare-fun m!6690086 () Bool)

(assert (=> b!5738008 m!6690086))

(declare-fun m!6690088 () Bool)

(assert (=> b!5738008 m!6690088))

(declare-fun m!6690090 () Bool)

(assert (=> b!5738008 m!6690090))

(declare-fun m!6690092 () Bool)

(assert (=> b!5738008 m!6690092))

(declare-fun m!6690094 () Bool)

(assert (=> b!5738008 m!6690094))

(declare-fun m!6690096 () Bool)

(assert (=> b!5738008 m!6690096))

(declare-fun m!6690098 () Bool)

(assert (=> b!5738008 m!6690098))

(declare-fun m!6690100 () Bool)

(assert (=> b!5738038 m!6690100))

(declare-fun m!6690102 () Bool)

(assert (=> b!5738017 m!6690102))

(declare-fun m!6690104 () Bool)

(assert (=> b!5738045 m!6690104))

(declare-fun m!6690106 () Bool)

(assert (=> b!5738027 m!6690106))

(declare-fun m!6690108 () Bool)

(assert (=> b!5738027 m!6690108))

(declare-fun m!6690110 () Bool)

(assert (=> b!5738027 m!6690110))

(assert (=> b!5738037 m!6690056))

(declare-fun m!6690112 () Bool)

(assert (=> b!5738037 m!6690112))

(assert (=> b!5738037 m!6690064))

(assert (=> b!5738037 m!6690088))

(declare-fun m!6690114 () Bool)

(assert (=> b!5738037 m!6690114))

(declare-fun m!6690116 () Bool)

(assert (=> b!5738037 m!6690116))

(declare-fun m!6690118 () Bool)

(assert (=> b!5738018 m!6690118))

(declare-fun m!6690120 () Bool)

(assert (=> setNonEmpty!38509 m!6690120))

(declare-fun m!6690122 () Bool)

(assert (=> b!5738011 m!6690122))

(declare-fun m!6690124 () Bool)

(assert (=> b!5738011 m!6690124))

(declare-fun m!6690126 () Bool)

(assert (=> b!5738011 m!6690126))

(declare-fun m!6690128 () Bool)

(assert (=> b!5738011 m!6690128))

(declare-fun m!6690130 () Bool)

(assert (=> b!5738011 m!6690130))

(declare-fun m!6690132 () Bool)

(assert (=> b!5738011 m!6690132))

(declare-fun m!6690134 () Bool)

(assert (=> b!5738011 m!6690134))

(declare-fun m!6690136 () Bool)

(assert (=> b!5738011 m!6690136))

(declare-fun m!6690138 () Bool)

(assert (=> b!5738011 m!6690138))

(declare-fun m!6690140 () Bool)

(assert (=> b!5738035 m!6690140))

(declare-fun m!6690142 () Bool)

(assert (=> b!5738035 m!6690142))

(declare-fun m!6690144 () Bool)

(assert (=> b!5738035 m!6690144))

(declare-fun m!6690146 () Bool)

(assert (=> b!5738000 m!6690146))

(declare-fun m!6690148 () Bool)

(assert (=> b!5738000 m!6690148))

(declare-fun m!6690150 () Bool)

(assert (=> b!5738031 m!6690150))

(declare-fun m!6690152 () Bool)

(assert (=> b!5738021 m!6690152))

(declare-fun m!6690154 () Bool)

(assert (=> b!5738021 m!6690154))

(declare-fun m!6690156 () Bool)

(assert (=> b!5738021 m!6690156))

(declare-fun m!6690158 () Bool)

(assert (=> b!5738021 m!6690158))

(declare-fun m!6690160 () Bool)

(assert (=> b!5738021 m!6690160))

(declare-fun m!6690162 () Bool)

(assert (=> b!5738020 m!6690162))

(declare-fun m!6690164 () Bool)

(assert (=> b!5738023 m!6690164))

(assert (=> b!5738023 m!6690164))

(declare-fun m!6690166 () Bool)

(assert (=> b!5738023 m!6690166))

(declare-fun m!6690168 () Bool)

(assert (=> b!5738039 m!6690168))

(declare-fun m!6690170 () Bool)

(assert (=> b!5738039 m!6690170))

(declare-fun m!6690172 () Bool)

(assert (=> b!5738039 m!6690172))

(declare-fun m!6690174 () Bool)

(assert (=> b!5738039 m!6690174))

(declare-fun m!6690176 () Bool)

(assert (=> b!5738039 m!6690176))

(declare-fun m!6690178 () Bool)

(assert (=> b!5738039 m!6690178))

(declare-fun m!6690180 () Bool)

(assert (=> b!5738039 m!6690180))

(declare-fun m!6690182 () Bool)

(assert (=> b!5738039 m!6690182))

(declare-fun m!6690184 () Bool)

(assert (=> b!5738039 m!6690184))

(assert (=> b!5738039 m!6690184))

(declare-fun m!6690186 () Bool)

(assert (=> b!5738039 m!6690186))

(declare-fun m!6690188 () Bool)

(assert (=> b!5738039 m!6690188))

(declare-fun m!6690190 () Bool)

(assert (=> b!5738039 m!6690190))

(declare-fun m!6690192 () Bool)

(assert (=> b!5738039 m!6690192))

(declare-fun m!6690194 () Bool)

(assert (=> b!5738039 m!6690194))

(declare-fun m!6690196 () Bool)

(assert (=> b!5738039 m!6690196))

(declare-fun m!6690198 () Bool)

(assert (=> b!5738039 m!6690198))

(declare-fun m!6690200 () Bool)

(assert (=> b!5738039 m!6690200))

(assert (=> b!5738039 m!6690184))

(declare-fun m!6690202 () Bool)

(assert (=> b!5738004 m!6690202))

(declare-fun m!6690204 () Bool)

(assert (=> b!5738004 m!6690204))

(declare-fun m!6690206 () Bool)

(assert (=> b!5738004 m!6690206))

(assert (=> b!5738004 m!6690202))

(declare-fun m!6690208 () Bool)

(assert (=> b!5738004 m!6690208))

(declare-fun m!6690210 () Bool)

(assert (=> b!5738004 m!6690210))

(assert (=> b!5738004 m!6690204))

(declare-fun m!6690212 () Bool)

(assert (=> b!5738004 m!6690212))

(declare-fun m!6690214 () Bool)

(assert (=> b!5738041 m!6690214))

(declare-fun m!6690216 () Bool)

(assert (=> b!5738047 m!6690216))

(declare-fun m!6690218 () Bool)

(assert (=> b!5738015 m!6690218))

(declare-fun m!6690220 () Bool)

(assert (=> b!5738015 m!6690220))

(declare-fun m!6690222 () Bool)

(assert (=> b!5738015 m!6690222))

(declare-fun m!6690224 () Bool)

(assert (=> b!5738015 m!6690224))

(declare-fun m!6690226 () Bool)

(assert (=> b!5738015 m!6690226))

(declare-fun m!6690228 () Bool)

(assert (=> b!5738040 m!6690228))

(declare-fun m!6690230 () Bool)

(assert (=> b!5738033 m!6690230))

(declare-fun m!6690232 () Bool)

(assert (=> b!5738034 m!6690232))

(declare-fun m!6690234 () Bool)

(assert (=> start!590440 m!6690234))

(assert (=> b!5738003 m!6690150))

(declare-fun m!6690236 () Bool)

(assert (=> b!5738042 m!6690236))

(declare-fun m!6690238 () Bool)

(assert (=> b!5737999 m!6690238))

(declare-fun m!6690240 () Bool)

(assert (=> b!5737999 m!6690240))

(declare-fun m!6690242 () Bool)

(assert (=> b!5737999 m!6690242))

(declare-fun m!6690244 () Bool)

(assert (=> b!5738043 m!6690244))

(declare-fun m!6690246 () Bool)

(assert (=> b!5738012 m!6690246))

(assert (=> b!5738012 m!6690230))

(declare-fun m!6690248 () Bool)

(assert (=> b!5738012 m!6690248))

(check-sat (not b!5738014) (not b!5738031) (not b!5738000) (not b!5738011) (not b!5738029) (not b!5738016) (not b!5738008) (not b!5738033) (not b!5738045) (not b!5738027) (not b!5738015) (not b!5738012) (not b!5738017) (not b!5738046) (not b!5737999) (not b!5738009) (not setNonEmpty!38509) (not b!5738035) (not start!590440) (not b!5738023) (not b!5738039) (not b!5738043) (not b!5738025) (not b!5738040) (not b!5738047) (not b!5738010) (not b!5738032) (not b!5738007) (not b!5738034) tp_is_empty!40747 (not b!5738021) (not b!5738003) (not b!5738020) (not b!5738042) (not b!5738037) (not b!5738038) (not b!5738036) (not b!5738013) (not b!5738004) (not b!5738018) (not b!5738041))
(check-sat)
(get-model)

(declare-fun d!1808859 () Bool)

(declare-fun e!3527376 () Bool)

(assert (=> d!1808859 e!3527376))

(declare-fun res!2423452 () Bool)

(assert (=> d!1808859 (=> (not res!2423452) (not e!3527376))))

(declare-fun lt!2284552 () List!63542)

(declare-fun noDuplicate!1664 (List!63542) Bool)

(assert (=> d!1808859 (= res!2423452 (noDuplicate!1664 lt!2284552))))

(declare-fun choose!43509 ((InoxSet Context!10262)) List!63542)

(assert (=> d!1808859 (= lt!2284552 (choose!43509 z!1189))))

(assert (=> d!1808859 (= (toList!9531 z!1189) lt!2284552)))

(declare-fun b!5738080 () Bool)

(declare-fun content!11560 (List!63542) (InoxSet Context!10262))

(assert (=> b!5738080 (= e!3527376 (= (content!11560 lt!2284552) z!1189))))

(assert (= (and d!1808859 res!2423452) b!5738080))

(declare-fun m!6690294 () Bool)

(assert (=> d!1808859 m!6690294))

(declare-fun m!6690296 () Bool)

(assert (=> d!1808859 m!6690296))

(declare-fun m!6690298 () Bool)

(assert (=> b!5738080 m!6690298))

(assert (=> b!5738020 d!1808859))

(declare-fun d!1808863 () Bool)

(declare-fun lt!2284557 () Regex!15747)

(assert (=> d!1808863 (validRegex!7483 lt!2284557)))

(assert (=> d!1808863 (= lt!2284557 (generalisedUnion!1610 (unfocusZipperList!1175 lt!2284492)))))

(assert (=> d!1808863 (= (unfocusZipper!1489 lt!2284492) lt!2284557)))

(declare-fun bs!1341210 () Bool)

(assert (= bs!1341210 d!1808863))

(declare-fun m!6690300 () Bool)

(assert (=> bs!1341210 m!6690300))

(declare-fun m!6690302 () Bool)

(assert (=> bs!1341210 m!6690302))

(assert (=> bs!1341210 m!6690302))

(declare-fun m!6690304 () Bool)

(assert (=> bs!1341210 m!6690304))

(assert (=> b!5738040 d!1808863))

(declare-fun bs!1341217 () Bool)

(declare-fun b!5738196 () Bool)

(assert (= bs!1341217 (and b!5738196 b!5738039)))

(declare-fun lambda!311121 () Int)

(assert (=> bs!1341217 (not (= lambda!311121 lambda!311104))))

(declare-fun bs!1341218 () Bool)

(assert (= bs!1341218 (and b!5738196 b!5738008)))

(assert (=> bs!1341218 (not (= lambda!311121 lambda!311101))))

(assert (=> bs!1341217 (not (= lambda!311121 lambda!311103))))

(assert (=> bs!1341218 (not (= lambda!311121 lambda!311102))))

(assert (=> bs!1341217 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (reg!16076 r!7292) (reg!16076 (regOne!32006 r!7292))) (= r!7292 lt!2284493)) (= lambda!311121 lambda!311105))))

(declare-fun bs!1341219 () Bool)

(assert (= bs!1341219 (and b!5738196 b!5738004)))

(assert (=> bs!1341219 (not (= lambda!311121 lambda!311096))))

(assert (=> bs!1341219 (not (= lambda!311121 lambda!311097))))

(assert (=> b!5738196 true))

(assert (=> b!5738196 true))

(declare-fun bs!1341220 () Bool)

(declare-fun b!5738190 () Bool)

(assert (= bs!1341220 (and b!5738190 b!5738039)))

(declare-fun lambda!311122 () Int)

(assert (=> bs!1341220 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311122 lambda!311104))))

(declare-fun bs!1341221 () Bool)

(assert (= bs!1341221 (and b!5738190 b!5738008)))

(assert (=> bs!1341221 (not (= lambda!311122 lambda!311101))))

(assert (=> bs!1341220 (not (= lambda!311122 lambda!311103))))

(assert (=> bs!1341221 (= (= (regOne!32006 r!7292) lt!2284510) (= lambda!311122 lambda!311102))))

(declare-fun bs!1341222 () Bool)

(assert (= bs!1341222 (and b!5738190 b!5738196)))

(assert (=> bs!1341222 (not (= lambda!311122 lambda!311121))))

(assert (=> bs!1341220 (not (= lambda!311122 lambda!311105))))

(declare-fun bs!1341223 () Bool)

(assert (= bs!1341223 (and b!5738190 b!5738004)))

(assert (=> bs!1341223 (not (= lambda!311122 lambda!311096))))

(assert (=> bs!1341223 (= lambda!311122 lambda!311097)))

(assert (=> b!5738190 true))

(assert (=> b!5738190 true))

(declare-fun b!5738186 () Bool)

(declare-fun e!3527434 () Bool)

(assert (=> b!5738186 (= e!3527434 (matchRSpec!2850 (regTwo!32007 r!7292) s!2326))))

(declare-fun b!5738187 () Bool)

(declare-fun res!2423512 () Bool)

(declare-fun e!3527433 () Bool)

(assert (=> b!5738187 (=> res!2423512 e!3527433)))

(declare-fun call!438634 () Bool)

(assert (=> b!5738187 (= res!2423512 call!438634)))

(declare-fun e!3527438 () Bool)

(assert (=> b!5738187 (= e!3527438 e!3527433)))

(declare-fun b!5738188 () Bool)

(declare-fun c!1012660 () Bool)

(assert (=> b!5738188 (= c!1012660 ((_ is Union!15747) r!7292))))

(declare-fun e!3527436 () Bool)

(declare-fun e!3527435 () Bool)

(assert (=> b!5738188 (= e!3527436 e!3527435)))

(declare-fun b!5738189 () Bool)

(assert (=> b!5738189 (= e!3527435 e!3527438)))

(declare-fun c!1012661 () Bool)

(assert (=> b!5738189 (= c!1012661 ((_ is Star!15747) r!7292))))

(declare-fun call!438633 () Bool)

(assert (=> b!5738190 (= e!3527438 call!438633)))

(declare-fun b!5738191 () Bool)

(declare-fun e!3527437 () Bool)

(declare-fun e!3527439 () Bool)

(assert (=> b!5738191 (= e!3527437 e!3527439)))

(declare-fun res!2423514 () Bool)

(assert (=> b!5738191 (= res!2423514 (not ((_ is EmptyLang!15747) r!7292)))))

(assert (=> b!5738191 (=> (not res!2423514) (not e!3527439))))

(declare-fun b!5738192 () Bool)

(assert (=> b!5738192 (= e!3527437 call!438634)))

(declare-fun d!1808865 () Bool)

(declare-fun c!1012658 () Bool)

(assert (=> d!1808865 (= c!1012658 ((_ is EmptyExpr!15747) r!7292))))

(assert (=> d!1808865 (= (matchRSpec!2850 r!7292 s!2326) e!3527437)))

(declare-fun b!5738193 () Bool)

(assert (=> b!5738193 (= e!3527436 (= s!2326 (Cons!63416 (c!1012627 r!7292) Nil!63416)))))

(declare-fun bm!438628 () Bool)

(assert (=> bm!438628 (= call!438633 (Exists!2847 (ite c!1012661 lambda!311121 lambda!311122)))))

(declare-fun bm!438629 () Bool)

(declare-fun isEmpty!35300 (List!63540) Bool)

(assert (=> bm!438629 (= call!438634 (isEmpty!35300 s!2326))))

(declare-fun b!5738194 () Bool)

(assert (=> b!5738194 (= e!3527435 e!3527434)))

(declare-fun res!2423513 () Bool)

(assert (=> b!5738194 (= res!2423513 (matchRSpec!2850 (regOne!32007 r!7292) s!2326))))

(assert (=> b!5738194 (=> res!2423513 e!3527434)))

(declare-fun b!5738195 () Bool)

(declare-fun c!1012659 () Bool)

(assert (=> b!5738195 (= c!1012659 ((_ is ElementMatch!15747) r!7292))))

(assert (=> b!5738195 (= e!3527439 e!3527436)))

(assert (=> b!5738196 (= e!3527433 call!438633)))

(assert (= (and d!1808865 c!1012658) b!5738192))

(assert (= (and d!1808865 (not c!1012658)) b!5738191))

(assert (= (and b!5738191 res!2423514) b!5738195))

(assert (= (and b!5738195 c!1012659) b!5738193))

(assert (= (and b!5738195 (not c!1012659)) b!5738188))

(assert (= (and b!5738188 c!1012660) b!5738194))

(assert (= (and b!5738188 (not c!1012660)) b!5738189))

(assert (= (and b!5738194 (not res!2423513)) b!5738186))

(assert (= (and b!5738189 c!1012661) b!5738187))

(assert (= (and b!5738189 (not c!1012661)) b!5738190))

(assert (= (and b!5738187 (not res!2423512)) b!5738196))

(assert (= (or b!5738196 b!5738190) bm!438628))

(assert (= (or b!5738192 b!5738187) bm!438629))

(declare-fun m!6690390 () Bool)

(assert (=> b!5738186 m!6690390))

(declare-fun m!6690392 () Bool)

(assert (=> bm!438628 m!6690392))

(declare-fun m!6690394 () Bool)

(assert (=> bm!438629 m!6690394))

(declare-fun m!6690396 () Bool)

(assert (=> b!5738194 m!6690396))

(assert (=> b!5737999 d!1808865))

(declare-fun b!5738263 () Bool)

(declare-fun e!3527479 () Bool)

(declare-fun e!3527473 () Bool)

(assert (=> b!5738263 (= e!3527479 e!3527473)))

(declare-fun res!2423557 () Bool)

(assert (=> b!5738263 (=> (not res!2423557) (not e!3527473))))

(declare-fun lt!2284581 () Bool)

(assert (=> b!5738263 (= res!2423557 (not lt!2284581))))

(declare-fun b!5738264 () Bool)

(declare-fun e!3527478 () Bool)

(declare-fun head!12149 (List!63540) C!31764)

(assert (=> b!5738264 (= e!3527478 (not (= (head!12149 s!2326) (c!1012627 r!7292))))))

(declare-fun b!5738265 () Bool)

(declare-fun res!2423560 () Bool)

(assert (=> b!5738265 (=> res!2423560 e!3527479)))

(declare-fun e!3527476 () Bool)

(assert (=> b!5738265 (= res!2423560 e!3527476)))

(declare-fun res!2423561 () Bool)

(assert (=> b!5738265 (=> (not res!2423561) (not e!3527476))))

(assert (=> b!5738265 (= res!2423561 lt!2284581)))

(declare-fun d!1808887 () Bool)

(declare-fun e!3527475 () Bool)

(assert (=> d!1808887 e!3527475))

(declare-fun c!1012676 () Bool)

(assert (=> d!1808887 (= c!1012676 ((_ is EmptyExpr!15747) r!7292))))

(declare-fun e!3527474 () Bool)

(assert (=> d!1808887 (= lt!2284581 e!3527474)))

(declare-fun c!1012675 () Bool)

(assert (=> d!1808887 (= c!1012675 (isEmpty!35300 s!2326))))

(assert (=> d!1808887 (validRegex!7483 r!7292)))

(assert (=> d!1808887 (= (matchR!7932 r!7292 s!2326) lt!2284581)))

(declare-fun b!5738266 () Bool)

(declare-fun derivativeStep!4538 (Regex!15747 C!31764) Regex!15747)

(declare-fun tail!11244 (List!63540) List!63540)

(assert (=> b!5738266 (= e!3527474 (matchR!7932 (derivativeStep!4538 r!7292 (head!12149 s!2326)) (tail!11244 s!2326)))))

(declare-fun b!5738267 () Bool)

(declare-fun res!2423558 () Bool)

(assert (=> b!5738267 (=> res!2423558 e!3527478)))

(assert (=> b!5738267 (= res!2423558 (not (isEmpty!35300 (tail!11244 s!2326))))))

(declare-fun b!5738268 () Bool)

(declare-fun e!3527477 () Bool)

(assert (=> b!5738268 (= e!3527475 e!3527477)))

(declare-fun c!1012677 () Bool)

(assert (=> b!5738268 (= c!1012677 ((_ is EmptyLang!15747) r!7292))))

(declare-fun b!5738269 () Bool)

(declare-fun res!2423556 () Bool)

(assert (=> b!5738269 (=> (not res!2423556) (not e!3527476))))

(assert (=> b!5738269 (= res!2423556 (isEmpty!35300 (tail!11244 s!2326)))))

(declare-fun b!5738270 () Bool)

(assert (=> b!5738270 (= e!3527473 e!3527478)))

(declare-fun res!2423555 () Bool)

(assert (=> b!5738270 (=> res!2423555 e!3527478)))

(declare-fun call!438638 () Bool)

(assert (=> b!5738270 (= res!2423555 call!438638)))

(declare-fun b!5738271 () Bool)

(assert (=> b!5738271 (= e!3527475 (= lt!2284581 call!438638))))

(declare-fun b!5738272 () Bool)

(declare-fun res!2423562 () Bool)

(assert (=> b!5738272 (=> (not res!2423562) (not e!3527476))))

(assert (=> b!5738272 (= res!2423562 (not call!438638))))

(declare-fun b!5738273 () Bool)

(assert (=> b!5738273 (= e!3527476 (= (head!12149 s!2326) (c!1012627 r!7292)))))

(declare-fun b!5738274 () Bool)

(assert (=> b!5738274 (= e!3527477 (not lt!2284581))))

(declare-fun bm!438633 () Bool)

(assert (=> bm!438633 (= call!438638 (isEmpty!35300 s!2326))))

(declare-fun b!5738275 () Bool)

(assert (=> b!5738275 (= e!3527474 (nullable!5779 r!7292))))

(declare-fun b!5738276 () Bool)

(declare-fun res!2423559 () Bool)

(assert (=> b!5738276 (=> res!2423559 e!3527479)))

(assert (=> b!5738276 (= res!2423559 (not ((_ is ElementMatch!15747) r!7292)))))

(assert (=> b!5738276 (= e!3527477 e!3527479)))

(assert (= (and d!1808887 c!1012675) b!5738275))

(assert (= (and d!1808887 (not c!1012675)) b!5738266))

(assert (= (and d!1808887 c!1012676) b!5738271))

(assert (= (and d!1808887 (not c!1012676)) b!5738268))

(assert (= (and b!5738268 c!1012677) b!5738274))

(assert (= (and b!5738268 (not c!1012677)) b!5738276))

(assert (= (and b!5738276 (not res!2423559)) b!5738265))

(assert (= (and b!5738265 res!2423561) b!5738272))

(assert (= (and b!5738272 res!2423562) b!5738269))

(assert (= (and b!5738269 res!2423556) b!5738273))

(assert (= (and b!5738265 (not res!2423560)) b!5738263))

(assert (= (and b!5738263 res!2423557) b!5738270))

(assert (= (and b!5738270 (not res!2423555)) b!5738267))

(assert (= (and b!5738267 (not res!2423558)) b!5738264))

(assert (= (or b!5738271 b!5738270 b!5738272) bm!438633))

(declare-fun m!6690436 () Bool)

(assert (=> b!5738266 m!6690436))

(assert (=> b!5738266 m!6690436))

(declare-fun m!6690438 () Bool)

(assert (=> b!5738266 m!6690438))

(declare-fun m!6690440 () Bool)

(assert (=> b!5738266 m!6690440))

(assert (=> b!5738266 m!6690438))

(assert (=> b!5738266 m!6690440))

(declare-fun m!6690442 () Bool)

(assert (=> b!5738266 m!6690442))

(assert (=> b!5738267 m!6690440))

(assert (=> b!5738267 m!6690440))

(declare-fun m!6690444 () Bool)

(assert (=> b!5738267 m!6690444))

(assert (=> b!5738269 m!6690440))

(assert (=> b!5738269 m!6690440))

(assert (=> b!5738269 m!6690444))

(assert (=> b!5738264 m!6690436))

(assert (=> b!5738273 m!6690436))

(assert (=> d!1808887 m!6690394))

(assert (=> d!1808887 m!6690234))

(assert (=> bm!438633 m!6690394))

(declare-fun m!6690446 () Bool)

(assert (=> b!5738275 m!6690446))

(assert (=> b!5737999 d!1808887))

(declare-fun d!1808899 () Bool)

(assert (=> d!1808899 (= (matchR!7932 r!7292 s!2326) (matchRSpec!2850 r!7292 s!2326))))

(declare-fun lt!2284593 () Unit!156520)

(declare-fun choose!43514 (Regex!15747 List!63540) Unit!156520)

(assert (=> d!1808899 (= lt!2284593 (choose!43514 r!7292 s!2326))))

(assert (=> d!1808899 (validRegex!7483 r!7292)))

(assert (=> d!1808899 (= (mainMatchTheorem!2850 r!7292 s!2326) lt!2284593)))

(declare-fun bs!1341230 () Bool)

(assert (= bs!1341230 d!1808899))

(assert (=> bs!1341230 m!6690240))

(assert (=> bs!1341230 m!6690238))

(declare-fun m!6690448 () Bool)

(assert (=> bs!1341230 m!6690448))

(assert (=> bs!1341230 m!6690234))

(assert (=> b!5737999 d!1808899))

(declare-fun d!1808901 () Bool)

(declare-fun choose!43515 ((InoxSet Context!10262) Int) (InoxSet Context!10262))

(assert (=> d!1808901 (= (flatMap!1360 lt!2284473 lambda!311098) (choose!43515 lt!2284473 lambda!311098))))

(declare-fun bs!1341231 () Bool)

(assert (= bs!1341231 d!1808901))

(declare-fun m!6690460 () Bool)

(assert (=> bs!1341231 m!6690460))

(assert (=> b!5738021 d!1808901))

(declare-fun b!5738314 () Bool)

(declare-fun e!3527501 () (InoxSet Context!10262))

(assert (=> b!5738314 (= e!3527501 ((as const (Array Context!10262 Bool)) false))))

(declare-fun call!438641 () (InoxSet Context!10262))

(declare-fun e!3527502 () (InoxSet Context!10262))

(declare-fun b!5738315 () Bool)

(assert (=> b!5738315 (= e!3527502 ((_ map or) call!438641 (derivationStepZipperUp!1015 (Context!10263 (t!376869 (exprs!5631 lt!2284509))) (h!69864 s!2326))))))

(declare-fun b!5738316 () Bool)

(declare-fun e!3527503 () Bool)

(assert (=> b!5738316 (= e!3527503 (nullable!5779 (h!69865 (exprs!5631 lt!2284509))))))

(declare-fun d!1808903 () Bool)

(declare-fun c!1012688 () Bool)

(assert (=> d!1808903 (= c!1012688 e!3527503)))

(declare-fun res!2423580 () Bool)

(assert (=> d!1808903 (=> (not res!2423580) (not e!3527503))))

(assert (=> d!1808903 (= res!2423580 ((_ is Cons!63417) (exprs!5631 lt!2284509)))))

(assert (=> d!1808903 (= (derivationStepZipperUp!1015 lt!2284509 (h!69864 s!2326)) e!3527502)))

(declare-fun b!5738317 () Bool)

(assert (=> b!5738317 (= e!3527501 call!438641)))

(declare-fun b!5738318 () Bool)

(assert (=> b!5738318 (= e!3527502 e!3527501)))

(declare-fun c!1012689 () Bool)

(assert (=> b!5738318 (= c!1012689 ((_ is Cons!63417) (exprs!5631 lt!2284509)))))

(declare-fun bm!438636 () Bool)

(assert (=> bm!438636 (= call!438641 (derivationStepZipperDown!1089 (h!69865 (exprs!5631 lt!2284509)) (Context!10263 (t!376869 (exprs!5631 lt!2284509))) (h!69864 s!2326)))))

(assert (= (and d!1808903 res!2423580) b!5738316))

(assert (= (and d!1808903 c!1012688) b!5738315))

(assert (= (and d!1808903 (not c!1012688)) b!5738318))

(assert (= (and b!5738318 c!1012689) b!5738317))

(assert (= (and b!5738318 (not c!1012689)) b!5738314))

(assert (= (or b!5738315 b!5738317) bm!438636))

(declare-fun m!6690478 () Bool)

(assert (=> b!5738315 m!6690478))

(declare-fun m!6690480 () Bool)

(assert (=> b!5738316 m!6690480))

(declare-fun m!6690482 () Bool)

(assert (=> bm!438636 m!6690482))

(assert (=> b!5738021 d!1808903))

(declare-fun d!1808909 () Bool)

(declare-fun dynLambda!24818 (Int Context!10262) (InoxSet Context!10262))

(assert (=> d!1808909 (= (flatMap!1360 lt!2284473 lambda!311098) (dynLambda!24818 lambda!311098 lt!2284509))))

(declare-fun lt!2284599 () Unit!156520)

(declare-fun choose!43516 ((InoxSet Context!10262) Context!10262 Int) Unit!156520)

(assert (=> d!1808909 (= lt!2284599 (choose!43516 lt!2284473 lt!2284509 lambda!311098))))

(assert (=> d!1808909 (= lt!2284473 (store ((as const (Array Context!10262 Bool)) false) lt!2284509 true))))

(assert (=> d!1808909 (= (lemmaFlatMapOnSingletonSet!892 lt!2284473 lt!2284509 lambda!311098) lt!2284599)))

(declare-fun b_lambda!216689 () Bool)

(assert (=> (not b_lambda!216689) (not d!1808909)))

(declare-fun bs!1341233 () Bool)

(assert (= bs!1341233 d!1808909))

(assert (=> bs!1341233 m!6690156))

(declare-fun m!6690484 () Bool)

(assert (=> bs!1341233 m!6690484))

(declare-fun m!6690486 () Bool)

(assert (=> bs!1341233 m!6690486))

(assert (=> bs!1341233 m!6690152))

(assert (=> b!5738021 d!1808909))

(declare-fun bs!1341234 () Bool)

(declare-fun d!1808911 () Bool)

(assert (= bs!1341234 (and d!1808911 b!5738029)))

(declare-fun lambda!311131 () Int)

(assert (=> bs!1341234 (= lambda!311131 lambda!311098)))

(assert (=> d!1808911 true))

(assert (=> d!1808911 (= (derivationStepZipper!1830 lt!2284473 (h!69864 s!2326)) (flatMap!1360 lt!2284473 lambda!311131))))

(declare-fun bs!1341235 () Bool)

(assert (= bs!1341235 d!1808911))

(declare-fun m!6690488 () Bool)

(assert (=> bs!1341235 m!6690488))

(assert (=> b!5738021 d!1808911))

(declare-fun d!1808913 () Bool)

(assert (=> d!1808913 (= (isEmpty!35297 (t!376870 zl!343)) ((_ is Nil!63418) (t!376870 zl!343)))))

(assert (=> b!5738041 d!1808913))

(declare-fun d!1808915 () Bool)

(declare-fun c!1012702 () Bool)

(assert (=> d!1808915 (= c!1012702 (isEmpty!35300 (t!376868 s!2326)))))

(declare-fun e!3527524 () Bool)

(assert (=> d!1808915 (= (matchZipper!1885 lt!2284533 (t!376868 s!2326)) e!3527524)))

(declare-fun b!5738357 () Bool)

(declare-fun nullableZipper!1685 ((InoxSet Context!10262)) Bool)

(assert (=> b!5738357 (= e!3527524 (nullableZipper!1685 lt!2284533))))

(declare-fun b!5738358 () Bool)

(assert (=> b!5738358 (= e!3527524 (matchZipper!1885 (derivationStepZipper!1830 lt!2284533 (head!12149 (t!376868 s!2326))) (tail!11244 (t!376868 s!2326))))))

(assert (= (and d!1808915 c!1012702) b!5738357))

(assert (= (and d!1808915 (not c!1012702)) b!5738358))

(declare-fun m!6690490 () Bool)

(assert (=> d!1808915 m!6690490))

(declare-fun m!6690492 () Bool)

(assert (=> b!5738357 m!6690492))

(declare-fun m!6690494 () Bool)

(assert (=> b!5738358 m!6690494))

(assert (=> b!5738358 m!6690494))

(declare-fun m!6690496 () Bool)

(assert (=> b!5738358 m!6690496))

(declare-fun m!6690498 () Bool)

(assert (=> b!5738358 m!6690498))

(assert (=> b!5738358 m!6690496))

(assert (=> b!5738358 m!6690498))

(declare-fun m!6690500 () Bool)

(assert (=> b!5738358 m!6690500))

(assert (=> b!5738000 d!1808915))

(declare-fun d!1808917 () Bool)

(declare-fun c!1012703 () Bool)

(assert (=> d!1808917 (= c!1012703 (isEmpty!35300 s!2326))))

(declare-fun e!3527525 () Bool)

(assert (=> d!1808917 (= (matchZipper!1885 lt!2284473 s!2326) e!3527525)))

(declare-fun b!5738359 () Bool)

(assert (=> b!5738359 (= e!3527525 (nullableZipper!1685 lt!2284473))))

(declare-fun b!5738360 () Bool)

(assert (=> b!5738360 (= e!3527525 (matchZipper!1885 (derivationStepZipper!1830 lt!2284473 (head!12149 s!2326)) (tail!11244 s!2326)))))

(assert (= (and d!1808917 c!1012703) b!5738359))

(assert (= (and d!1808917 (not c!1012703)) b!5738360))

(assert (=> d!1808917 m!6690394))

(declare-fun m!6690502 () Bool)

(assert (=> b!5738359 m!6690502))

(assert (=> b!5738360 m!6690436))

(assert (=> b!5738360 m!6690436))

(declare-fun m!6690504 () Bool)

(assert (=> b!5738360 m!6690504))

(assert (=> b!5738360 m!6690440))

(assert (=> b!5738360 m!6690504))

(assert (=> b!5738360 m!6690440))

(declare-fun m!6690506 () Bool)

(assert (=> b!5738360 m!6690506))

(assert (=> b!5738000 d!1808917))

(declare-fun d!1808919 () Bool)

(declare-fun c!1012704 () Bool)

(assert (=> d!1808919 (= c!1012704 (isEmpty!35300 (_2!36147 lt!2284469)))))

(declare-fun e!3527526 () Bool)

(assert (=> d!1808919 (= (matchZipper!1885 lt!2284530 (_2!36147 lt!2284469)) e!3527526)))

(declare-fun b!5738361 () Bool)

(assert (=> b!5738361 (= e!3527526 (nullableZipper!1685 lt!2284530))))

(declare-fun b!5738362 () Bool)

(assert (=> b!5738362 (= e!3527526 (matchZipper!1885 (derivationStepZipper!1830 lt!2284530 (head!12149 (_2!36147 lt!2284469))) (tail!11244 (_2!36147 lt!2284469))))))

(assert (= (and d!1808919 c!1012704) b!5738361))

(assert (= (and d!1808919 (not c!1012704)) b!5738362))

(declare-fun m!6690508 () Bool)

(assert (=> d!1808919 m!6690508))

(declare-fun m!6690510 () Bool)

(assert (=> b!5738361 m!6690510))

(declare-fun m!6690512 () Bool)

(assert (=> b!5738362 m!6690512))

(assert (=> b!5738362 m!6690512))

(declare-fun m!6690514 () Bool)

(assert (=> b!5738362 m!6690514))

(declare-fun m!6690516 () Bool)

(assert (=> b!5738362 m!6690516))

(assert (=> b!5738362 m!6690514))

(assert (=> b!5738362 m!6690516))

(declare-fun m!6690518 () Bool)

(assert (=> b!5738362 m!6690518))

(assert (=> b!5738017 d!1808919))

(declare-fun d!1808921 () Bool)

(declare-fun dynLambda!24819 (Int Context!10262) Context!10262)

(assert (=> d!1808921 (= (map!14541 lt!2284485 lambda!311099) (store ((as const (Array Context!10262 Bool)) false) (dynLambda!24819 lambda!311099 lt!2284528) true))))

(declare-fun lt!2284602 () Unit!156520)

(declare-fun choose!43518 ((InoxSet Context!10262) Context!10262 Int) Unit!156520)

(assert (=> d!1808921 (= lt!2284602 (choose!43518 lt!2284485 lt!2284528 lambda!311099))))

(assert (=> d!1808921 (= lt!2284485 (store ((as const (Array Context!10262 Bool)) false) lt!2284528 true))))

(assert (=> d!1808921 (= (lemmaMapOnSingletonSet!142 lt!2284485 lt!2284528 lambda!311099) lt!2284602)))

(declare-fun b_lambda!216691 () Bool)

(assert (=> (not b_lambda!216691) (not d!1808921)))

(declare-fun bs!1341236 () Bool)

(assert (= bs!1341236 d!1808921))

(assert (=> bs!1341236 m!6690138))

(declare-fun m!6690520 () Bool)

(assert (=> bs!1341236 m!6690520))

(declare-fun m!6690522 () Bool)

(assert (=> bs!1341236 m!6690522))

(assert (=> bs!1341236 m!6690522))

(declare-fun m!6690524 () Bool)

(assert (=> bs!1341236 m!6690524))

(assert (=> bs!1341236 m!6690114))

(assert (=> b!5738037 d!1808921))

(declare-fun d!1808923 () Bool)

(declare-fun forall!14870 (List!63541 Int) Bool)

(assert (=> d!1808923 (forall!14870 (++!13966 lt!2284511 lt!2284480) lambda!311100)))

(declare-fun lt!2284605 () Unit!156520)

(declare-fun choose!43519 (List!63541 List!63541 Int) Unit!156520)

(assert (=> d!1808923 (= lt!2284605 (choose!43519 lt!2284511 lt!2284480 lambda!311100))))

(assert (=> d!1808923 (forall!14870 lt!2284511 lambda!311100)))

(assert (=> d!1808923 (= (lemmaConcatPreservesForall!316 lt!2284511 lt!2284480 lambda!311100) lt!2284605)))

(declare-fun bs!1341242 () Bool)

(assert (= bs!1341242 d!1808923))

(assert (=> bs!1341242 m!6690056))

(assert (=> bs!1341242 m!6690056))

(declare-fun m!6690526 () Bool)

(assert (=> bs!1341242 m!6690526))

(declare-fun m!6690528 () Bool)

(assert (=> bs!1341242 m!6690528))

(declare-fun m!6690530 () Bool)

(assert (=> bs!1341242 m!6690530))

(assert (=> b!5738037 d!1808923))

(declare-fun d!1808925 () Bool)

(declare-fun choose!43520 ((InoxSet Context!10262) Int) (InoxSet Context!10262))

(assert (=> d!1808925 (= (map!14541 lt!2284485 lambda!311099) (choose!43520 lt!2284485 lambda!311099))))

(declare-fun bs!1341243 () Bool)

(assert (= bs!1341243 d!1808925))

(declare-fun m!6690532 () Bool)

(assert (=> bs!1341243 m!6690532))

(assert (=> b!5738037 d!1808925))

(declare-fun bs!1341250 () Bool)

(declare-fun d!1808927 () Bool)

(assert (= bs!1341250 (and d!1808927 b!5738037)))

(declare-fun lambda!311142 () Int)

(assert (=> bs!1341250 (= (= (exprs!5631 lt!2284522) lt!2284480) (= lambda!311142 lambda!311099))))

(assert (=> d!1808927 true))

(assert (=> d!1808927 (= (appendTo!126 lt!2284485 lt!2284522) (map!14541 lt!2284485 lambda!311142))))

(declare-fun bs!1341251 () Bool)

(assert (= bs!1341251 d!1808927))

(declare-fun m!6690542 () Bool)

(assert (=> bs!1341251 m!6690542))

(assert (=> b!5738037 d!1808927))

(declare-fun b!5738389 () Bool)

(declare-fun e!3527540 () List!63541)

(assert (=> b!5738389 (= e!3527540 (Cons!63417 (h!69865 lt!2284511) (++!13966 (t!376869 lt!2284511) lt!2284480)))))

(declare-fun d!1808931 () Bool)

(declare-fun e!3527541 () Bool)

(assert (=> d!1808931 e!3527541))

(declare-fun res!2423608 () Bool)

(assert (=> d!1808931 (=> (not res!2423608) (not e!3527541))))

(declare-fun lt!2284612 () List!63541)

(declare-fun content!11562 (List!63541) (InoxSet Regex!15747))

(assert (=> d!1808931 (= res!2423608 (= (content!11562 lt!2284612) ((_ map or) (content!11562 lt!2284511) (content!11562 lt!2284480))))))

(assert (=> d!1808931 (= lt!2284612 e!3527540)))

(declare-fun c!1012712 () Bool)

(assert (=> d!1808931 (= c!1012712 ((_ is Nil!63417) lt!2284511))))

(assert (=> d!1808931 (= (++!13966 lt!2284511 lt!2284480) lt!2284612)))

(declare-fun b!5738390 () Bool)

(declare-fun res!2423609 () Bool)

(assert (=> b!5738390 (=> (not res!2423609) (not e!3527541))))

(declare-fun size!40064 (List!63541) Int)

(assert (=> b!5738390 (= res!2423609 (= (size!40064 lt!2284612) (+ (size!40064 lt!2284511) (size!40064 lt!2284480))))))

(declare-fun b!5738388 () Bool)

(assert (=> b!5738388 (= e!3527540 lt!2284480)))

(declare-fun b!5738391 () Bool)

(assert (=> b!5738391 (= e!3527541 (or (not (= lt!2284480 Nil!63417)) (= lt!2284612 lt!2284511)))))

(assert (= (and d!1808931 c!1012712) b!5738388))

(assert (= (and d!1808931 (not c!1012712)) b!5738389))

(assert (= (and d!1808931 res!2423608) b!5738390))

(assert (= (and b!5738390 res!2423609) b!5738391))

(declare-fun m!6690544 () Bool)

(assert (=> b!5738389 m!6690544))

(declare-fun m!6690546 () Bool)

(assert (=> d!1808931 m!6690546))

(declare-fun m!6690548 () Bool)

(assert (=> d!1808931 m!6690548))

(declare-fun m!6690550 () Bool)

(assert (=> d!1808931 m!6690550))

(declare-fun m!6690552 () Bool)

(assert (=> b!5738390 m!6690552))

(declare-fun m!6690554 () Bool)

(assert (=> b!5738390 m!6690554))

(declare-fun m!6690556 () Bool)

(assert (=> b!5738390 m!6690556))

(assert (=> b!5738037 d!1808931))

(declare-fun d!1808933 () Bool)

(declare-fun choose!43521 (Int) Bool)

(assert (=> d!1808933 (= (Exists!2847 lambda!311105) (choose!43521 lambda!311105))))

(declare-fun bs!1341252 () Bool)

(assert (= bs!1341252 d!1808933))

(declare-fun m!6690558 () Bool)

(assert (=> bs!1341252 m!6690558))

(assert (=> b!5738039 d!1808933))

(declare-fun d!1808935 () Bool)

(declare-fun e!3527548 () Bool)

(assert (=> d!1808935 e!3527548))

(declare-fun res!2423621 () Bool)

(assert (=> d!1808935 (=> (not res!2423621) (not e!3527548))))

(declare-fun lt!2284616 () List!63540)

(declare-fun content!11563 (List!63540) (InoxSet C!31764))

(assert (=> d!1808935 (= res!2423621 (= (content!11563 lt!2284616) ((_ map or) (content!11563 (_1!36147 lt!2284479)) (content!11563 (_2!36147 lt!2284479)))))))

(declare-fun e!3527549 () List!63540)

(assert (=> d!1808935 (= lt!2284616 e!3527549)))

(declare-fun c!1012715 () Bool)

(assert (=> d!1808935 (= c!1012715 ((_ is Nil!63416) (_1!36147 lt!2284479)))))

(assert (=> d!1808935 (= (++!13967 (_1!36147 lt!2284479) (_2!36147 lt!2284479)) lt!2284616)))

(declare-fun b!5738408 () Bool)

(declare-fun res!2423620 () Bool)

(assert (=> b!5738408 (=> (not res!2423620) (not e!3527548))))

(declare-fun size!40065 (List!63540) Int)

(assert (=> b!5738408 (= res!2423620 (= (size!40065 lt!2284616) (+ (size!40065 (_1!36147 lt!2284479)) (size!40065 (_2!36147 lt!2284479)))))))

(declare-fun b!5738407 () Bool)

(assert (=> b!5738407 (= e!3527549 (Cons!63416 (h!69864 (_1!36147 lt!2284479)) (++!13967 (t!376868 (_1!36147 lt!2284479)) (_2!36147 lt!2284479))))))

(declare-fun b!5738406 () Bool)

(assert (=> b!5738406 (= e!3527549 (_2!36147 lt!2284479))))

(declare-fun b!5738409 () Bool)

(assert (=> b!5738409 (= e!3527548 (or (not (= (_2!36147 lt!2284479) Nil!63416)) (= lt!2284616 (_1!36147 lt!2284479))))))

(assert (= (and d!1808935 c!1012715) b!5738406))

(assert (= (and d!1808935 (not c!1012715)) b!5738407))

(assert (= (and d!1808935 res!2423621) b!5738408))

(assert (= (and b!5738408 res!2423620) b!5738409))

(declare-fun m!6690560 () Bool)

(assert (=> d!1808935 m!6690560))

(declare-fun m!6690562 () Bool)

(assert (=> d!1808935 m!6690562))

(declare-fun m!6690564 () Bool)

(assert (=> d!1808935 m!6690564))

(declare-fun m!6690566 () Bool)

(assert (=> b!5738408 m!6690566))

(declare-fun m!6690568 () Bool)

(assert (=> b!5738408 m!6690568))

(declare-fun m!6690570 () Bool)

(assert (=> b!5738408 m!6690570))

(declare-fun m!6690572 () Bool)

(assert (=> b!5738407 m!6690572))

(assert (=> b!5738039 d!1808935))

(declare-fun bs!1341265 () Bool)

(declare-fun d!1808937 () Bool)

(assert (= bs!1341265 (and d!1808937 b!5738190)))

(declare-fun lambda!311153 () Int)

(assert (=> bs!1341265 (not (= lambda!311153 lambda!311122))))

(declare-fun bs!1341266 () Bool)

(assert (= bs!1341266 (and d!1808937 b!5738039)))

(assert (=> bs!1341266 (not (= lambda!311153 lambda!311104))))

(declare-fun bs!1341267 () Bool)

(assert (= bs!1341267 (and d!1808937 b!5738008)))

(assert (=> bs!1341267 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) lt!2284510) (= (Star!15747 (reg!16076 (regOne!32006 r!7292))) (regTwo!32006 r!7292))) (= lambda!311153 lambda!311101))))

(assert (=> bs!1341266 (= (= (Star!15747 (reg!16076 (regOne!32006 r!7292))) lt!2284493) (= lambda!311153 lambda!311103))))

(assert (=> bs!1341267 (not (= lambda!311153 lambda!311102))))

(declare-fun bs!1341268 () Bool)

(assert (= bs!1341268 (and d!1808937 b!5738196)))

(assert (=> bs!1341268 (not (= lambda!311153 lambda!311121))))

(assert (=> bs!1341266 (not (= lambda!311153 lambda!311105))))

(declare-fun bs!1341269 () Bool)

(assert (= bs!1341269 (and d!1808937 b!5738004)))

(assert (=> bs!1341269 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 r!7292)) (= (Star!15747 (reg!16076 (regOne!32006 r!7292))) (regTwo!32006 r!7292))) (= lambda!311153 lambda!311096))))

(assert (=> bs!1341269 (not (= lambda!311153 lambda!311097))))

(assert (=> d!1808937 true))

(assert (=> d!1808937 true))

(declare-fun lambda!311154 () Int)

(assert (=> bs!1341265 (not (= lambda!311154 lambda!311122))))

(declare-fun bs!1341270 () Bool)

(assert (= bs!1341270 d!1808937))

(assert (=> bs!1341270 (not (= lambda!311154 lambda!311153))))

(assert (=> bs!1341266 (not (= lambda!311154 lambda!311104))))

(assert (=> bs!1341267 (not (= lambda!311154 lambda!311101))))

(assert (=> bs!1341266 (not (= lambda!311154 lambda!311103))))

(assert (=> bs!1341267 (not (= lambda!311154 lambda!311102))))

(assert (=> bs!1341268 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (reg!16076 r!7292)) (= (Star!15747 (reg!16076 (regOne!32006 r!7292))) r!7292)) (= lambda!311154 lambda!311121))))

(assert (=> bs!1341266 (= (= (Star!15747 (reg!16076 (regOne!32006 r!7292))) lt!2284493) (= lambda!311154 lambda!311105))))

(assert (=> bs!1341269 (not (= lambda!311154 lambda!311096))))

(assert (=> bs!1341269 (not (= lambda!311154 lambda!311097))))

(assert (=> d!1808937 true))

(assert (=> d!1808937 true))

(assert (=> d!1808937 (= (Exists!2847 lambda!311153) (Exists!2847 lambda!311154))))

(declare-fun lt!2284628 () Unit!156520)

(declare-fun choose!43523 (Regex!15747 List!63540) Unit!156520)

(assert (=> d!1808937 (= lt!2284628 (choose!43523 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284515)))))

(assert (=> d!1808937 (validRegex!7483 (reg!16076 (regOne!32006 r!7292)))))

(assert (=> d!1808937 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!560 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284515)) lt!2284628)))

(declare-fun m!6690602 () Bool)

(assert (=> bs!1341270 m!6690602))

(declare-fun m!6690604 () Bool)

(assert (=> bs!1341270 m!6690604))

(declare-fun m!6690606 () Bool)

(assert (=> bs!1341270 m!6690606))

(declare-fun m!6690608 () Bool)

(assert (=> bs!1341270 m!6690608))

(assert (=> b!5738039 d!1808937))

(declare-fun bs!1341271 () Bool)

(declare-fun b!5738443 () Bool)

(assert (= bs!1341271 (and b!5738443 b!5738190)))

(declare-fun lambda!311157 () Int)

(assert (=> bs!1341271 (not (= lambda!311157 lambda!311122))))

(declare-fun bs!1341272 () Bool)

(assert (= bs!1341272 (and b!5738443 d!1808937)))

(assert (=> bs!1341272 (not (= lambda!311157 lambda!311153))))

(declare-fun bs!1341273 () Bool)

(assert (= bs!1341273 (and b!5738443 b!5738039)))

(assert (=> bs!1341273 (not (= lambda!311157 lambda!311104))))

(declare-fun bs!1341274 () Bool)

(assert (= bs!1341274 (and b!5738443 b!5738008)))

(assert (=> bs!1341274 (not (= lambda!311157 lambda!311101))))

(assert (=> bs!1341273 (not (= lambda!311157 lambda!311103))))

(assert (=> bs!1341274 (not (= lambda!311157 lambda!311102))))

(declare-fun bs!1341275 () Bool)

(assert (= bs!1341275 (and b!5738443 b!5738196)))

(assert (=> bs!1341275 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 lt!2284510) (reg!16076 r!7292)) (= lt!2284510 r!7292)) (= lambda!311157 lambda!311121))))

(assert (=> bs!1341272 (= (and (= (reg!16076 lt!2284510) (reg!16076 (regOne!32006 r!7292))) (= lt!2284510 (Star!15747 (reg!16076 (regOne!32006 r!7292))))) (= lambda!311157 lambda!311154))))

(assert (=> bs!1341273 (= (and (= (reg!16076 lt!2284510) (reg!16076 (regOne!32006 r!7292))) (= lt!2284510 lt!2284493)) (= lambda!311157 lambda!311105))))

(declare-fun bs!1341276 () Bool)

(assert (= bs!1341276 (and b!5738443 b!5738004)))

(assert (=> bs!1341276 (not (= lambda!311157 lambda!311096))))

(assert (=> bs!1341276 (not (= lambda!311157 lambda!311097))))

(assert (=> b!5738443 true))

(assert (=> b!5738443 true))

(declare-fun bs!1341277 () Bool)

(declare-fun b!5738437 () Bool)

(assert (= bs!1341277 (and b!5738437 b!5738190)))

(declare-fun lambda!311158 () Int)

(assert (=> bs!1341277 (= (and (= (_1!36147 lt!2284515) s!2326) (= (regOne!32006 lt!2284510) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284510) (regTwo!32006 r!7292))) (= lambda!311158 lambda!311122))))

(declare-fun bs!1341278 () Bool)

(assert (= bs!1341278 (and b!5738437 b!5738039)))

(assert (=> bs!1341278 (= (and (= (regOne!32006 lt!2284510) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 lt!2284510) lt!2284493)) (= lambda!311158 lambda!311104))))

(declare-fun bs!1341279 () Bool)

(assert (= bs!1341279 (and b!5738437 b!5738008)))

(assert (=> bs!1341279 (not (= lambda!311158 lambda!311101))))

(assert (=> bs!1341278 (not (= lambda!311158 lambda!311103))))

(assert (=> bs!1341279 (= (and (= (_1!36147 lt!2284515) s!2326) (= (regOne!32006 lt!2284510) lt!2284510) (= (regTwo!32006 lt!2284510) (regTwo!32006 r!7292))) (= lambda!311158 lambda!311102))))

(declare-fun bs!1341280 () Bool)

(assert (= bs!1341280 (and b!5738437 b!5738196)))

(assert (=> bs!1341280 (not (= lambda!311158 lambda!311121))))

(declare-fun bs!1341282 () Bool)

(assert (= bs!1341282 (and b!5738437 d!1808937)))

(assert (=> bs!1341282 (not (= lambda!311158 lambda!311154))))

(assert (=> bs!1341278 (not (= lambda!311158 lambda!311105))))

(declare-fun bs!1341284 () Bool)

(assert (= bs!1341284 (and b!5738437 b!5738443)))

(assert (=> bs!1341284 (not (= lambda!311158 lambda!311157))))

(assert (=> bs!1341282 (not (= lambda!311158 lambda!311153))))

(declare-fun bs!1341285 () Bool)

(assert (= bs!1341285 (and b!5738437 b!5738004)))

(assert (=> bs!1341285 (not (= lambda!311158 lambda!311096))))

(assert (=> bs!1341285 (= (and (= (_1!36147 lt!2284515) s!2326) (= (regOne!32006 lt!2284510) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284510) (regTwo!32006 r!7292))) (= lambda!311158 lambda!311097))))

(assert (=> b!5738437 true))

(assert (=> b!5738437 true))

(declare-fun b!5738433 () Bool)

(declare-fun e!3527564 () Bool)

(assert (=> b!5738433 (= e!3527564 (matchRSpec!2850 (regTwo!32007 lt!2284510) (_1!36147 lt!2284515)))))

(declare-fun b!5738434 () Bool)

(declare-fun res!2423637 () Bool)

(declare-fun e!3527563 () Bool)

(assert (=> b!5738434 (=> res!2423637 e!3527563)))

(declare-fun call!438649 () Bool)

(assert (=> b!5738434 (= res!2423637 call!438649)))

(declare-fun e!3527568 () Bool)

(assert (=> b!5738434 (= e!3527568 e!3527563)))

(declare-fun b!5738435 () Bool)

(declare-fun c!1012722 () Bool)

(assert (=> b!5738435 (= c!1012722 ((_ is Union!15747) lt!2284510))))

(declare-fun e!3527566 () Bool)

(declare-fun e!3527565 () Bool)

(assert (=> b!5738435 (= e!3527566 e!3527565)))

(declare-fun b!5738436 () Bool)

(assert (=> b!5738436 (= e!3527565 e!3527568)))

(declare-fun c!1012723 () Bool)

(assert (=> b!5738436 (= c!1012723 ((_ is Star!15747) lt!2284510))))

(declare-fun call!438648 () Bool)

(assert (=> b!5738437 (= e!3527568 call!438648)))

(declare-fun b!5738438 () Bool)

(declare-fun e!3527567 () Bool)

(declare-fun e!3527569 () Bool)

(assert (=> b!5738438 (= e!3527567 e!3527569)))

(declare-fun res!2423639 () Bool)

(assert (=> b!5738438 (= res!2423639 (not ((_ is EmptyLang!15747) lt!2284510)))))

(assert (=> b!5738438 (=> (not res!2423639) (not e!3527569))))

(declare-fun b!5738439 () Bool)

(assert (=> b!5738439 (= e!3527567 call!438649)))

(declare-fun d!1808951 () Bool)

(declare-fun c!1012720 () Bool)

(assert (=> d!1808951 (= c!1012720 ((_ is EmptyExpr!15747) lt!2284510))))

(assert (=> d!1808951 (= (matchRSpec!2850 lt!2284510 (_1!36147 lt!2284515)) e!3527567)))

(declare-fun b!5738440 () Bool)

(assert (=> b!5738440 (= e!3527566 (= (_1!36147 lt!2284515) (Cons!63416 (c!1012627 lt!2284510) Nil!63416)))))

(declare-fun bm!438643 () Bool)

(assert (=> bm!438643 (= call!438648 (Exists!2847 (ite c!1012723 lambda!311157 lambda!311158)))))

(declare-fun bm!438644 () Bool)

(assert (=> bm!438644 (= call!438649 (isEmpty!35300 (_1!36147 lt!2284515)))))

(declare-fun b!5738441 () Bool)

(assert (=> b!5738441 (= e!3527565 e!3527564)))

(declare-fun res!2423638 () Bool)

(assert (=> b!5738441 (= res!2423638 (matchRSpec!2850 (regOne!32007 lt!2284510) (_1!36147 lt!2284515)))))

(assert (=> b!5738441 (=> res!2423638 e!3527564)))

(declare-fun b!5738442 () Bool)

(declare-fun c!1012721 () Bool)

(assert (=> b!5738442 (= c!1012721 ((_ is ElementMatch!15747) lt!2284510))))

(assert (=> b!5738442 (= e!3527569 e!3527566)))

(assert (=> b!5738443 (= e!3527563 call!438648)))

(assert (= (and d!1808951 c!1012720) b!5738439))

(assert (= (and d!1808951 (not c!1012720)) b!5738438))

(assert (= (and b!5738438 res!2423639) b!5738442))

(assert (= (and b!5738442 c!1012721) b!5738440))

(assert (= (and b!5738442 (not c!1012721)) b!5738435))

(assert (= (and b!5738435 c!1012722) b!5738441))

(assert (= (and b!5738435 (not c!1012722)) b!5738436))

(assert (= (and b!5738441 (not res!2423638)) b!5738433))

(assert (= (and b!5738436 c!1012723) b!5738434))

(assert (= (and b!5738436 (not c!1012723)) b!5738437))

(assert (= (and b!5738434 (not res!2423637)) b!5738443))

(assert (= (or b!5738443 b!5738437) bm!438643))

(assert (= (or b!5738439 b!5738434) bm!438644))

(declare-fun m!6690628 () Bool)

(assert (=> b!5738433 m!6690628))

(declare-fun m!6690630 () Bool)

(assert (=> bm!438643 m!6690630))

(declare-fun m!6690632 () Bool)

(assert (=> bm!438644 m!6690632))

(declare-fun m!6690634 () Bool)

(assert (=> b!5738441 m!6690634))

(assert (=> b!5738039 d!1808951))

(declare-fun d!1808955 () Bool)

(declare-fun e!3527582 () Bool)

(assert (=> d!1808955 e!3527582))

(declare-fun res!2423645 () Bool)

(assert (=> d!1808955 (=> (not res!2423645) (not e!3527582))))

(declare-fun lt!2284632 () List!63540)

(assert (=> d!1808955 (= res!2423645 (= (content!11563 lt!2284632) ((_ map or) (content!11563 (_1!36147 lt!2284479)) (content!11563 lt!2284519))))))

(declare-fun e!3527583 () List!63540)

(assert (=> d!1808955 (= lt!2284632 e!3527583)))

(declare-fun c!1012732 () Bool)

(assert (=> d!1808955 (= c!1012732 ((_ is Nil!63416) (_1!36147 lt!2284479)))))

(assert (=> d!1808955 (= (++!13967 (_1!36147 lt!2284479) lt!2284519) lt!2284632)))

(declare-fun b!5738466 () Bool)

(declare-fun res!2423644 () Bool)

(assert (=> b!5738466 (=> (not res!2423644) (not e!3527582))))

(assert (=> b!5738466 (= res!2423644 (= (size!40065 lt!2284632) (+ (size!40065 (_1!36147 lt!2284479)) (size!40065 lt!2284519))))))

(declare-fun b!5738465 () Bool)

(assert (=> b!5738465 (= e!3527583 (Cons!63416 (h!69864 (_1!36147 lt!2284479)) (++!13967 (t!376868 (_1!36147 lt!2284479)) lt!2284519)))))

(declare-fun b!5738464 () Bool)

(assert (=> b!5738464 (= e!3527583 lt!2284519)))

(declare-fun b!5738467 () Bool)

(assert (=> b!5738467 (= e!3527582 (or (not (= lt!2284519 Nil!63416)) (= lt!2284632 (_1!36147 lt!2284479))))))

(assert (= (and d!1808955 c!1012732) b!5738464))

(assert (= (and d!1808955 (not c!1012732)) b!5738465))

(assert (= (and d!1808955 res!2423645) b!5738466))

(assert (= (and b!5738466 res!2423644) b!5738467))

(declare-fun m!6690638 () Bool)

(assert (=> d!1808955 m!6690638))

(assert (=> d!1808955 m!6690562))

(declare-fun m!6690640 () Bool)

(assert (=> d!1808955 m!6690640))

(declare-fun m!6690642 () Bool)

(assert (=> b!5738466 m!6690642))

(assert (=> b!5738466 m!6690568))

(declare-fun m!6690644 () Bool)

(assert (=> b!5738466 m!6690644))

(declare-fun m!6690646 () Bool)

(assert (=> b!5738465 m!6690646))

(assert (=> b!5738039 d!1808955))

(declare-fun b!5738472 () Bool)

(declare-fun e!3527592 () Bool)

(declare-fun e!3527586 () Bool)

(assert (=> b!5738472 (= e!3527592 e!3527586)))

(declare-fun res!2423650 () Bool)

(assert (=> b!5738472 (=> (not res!2423650) (not e!3527586))))

(declare-fun lt!2284634 () Bool)

(assert (=> b!5738472 (= res!2423650 (not lt!2284634))))

(declare-fun b!5738473 () Bool)

(declare-fun e!3527591 () Bool)

(assert (=> b!5738473 (= e!3527591 (not (= (head!12149 (_1!36147 lt!2284479)) (c!1012627 (reg!16076 (regOne!32006 r!7292))))))))

(declare-fun b!5738474 () Bool)

(declare-fun res!2423653 () Bool)

(assert (=> b!5738474 (=> res!2423653 e!3527592)))

(declare-fun e!3527589 () Bool)

(assert (=> b!5738474 (= res!2423653 e!3527589)))

(declare-fun res!2423654 () Bool)

(assert (=> b!5738474 (=> (not res!2423654) (not e!3527589))))

(assert (=> b!5738474 (= res!2423654 lt!2284634)))

(declare-fun d!1808961 () Bool)

(declare-fun e!3527588 () Bool)

(assert (=> d!1808961 e!3527588))

(declare-fun c!1012735 () Bool)

(assert (=> d!1808961 (= c!1012735 ((_ is EmptyExpr!15747) (reg!16076 (regOne!32006 r!7292))))))

(declare-fun e!3527587 () Bool)

(assert (=> d!1808961 (= lt!2284634 e!3527587)))

(declare-fun c!1012734 () Bool)

(assert (=> d!1808961 (= c!1012734 (isEmpty!35300 (_1!36147 lt!2284479)))))

(assert (=> d!1808961 (validRegex!7483 (reg!16076 (regOne!32006 r!7292)))))

(assert (=> d!1808961 (= (matchR!7932 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284479)) lt!2284634)))

(declare-fun b!5738475 () Bool)

(assert (=> b!5738475 (= e!3527587 (matchR!7932 (derivativeStep!4538 (reg!16076 (regOne!32006 r!7292)) (head!12149 (_1!36147 lt!2284479))) (tail!11244 (_1!36147 lt!2284479))))))

(declare-fun b!5738476 () Bool)

(declare-fun res!2423651 () Bool)

(assert (=> b!5738476 (=> res!2423651 e!3527591)))

(assert (=> b!5738476 (= res!2423651 (not (isEmpty!35300 (tail!11244 (_1!36147 lt!2284479)))))))

(declare-fun b!5738477 () Bool)

(declare-fun e!3527590 () Bool)

(assert (=> b!5738477 (= e!3527588 e!3527590)))

(declare-fun c!1012736 () Bool)

(assert (=> b!5738477 (= c!1012736 ((_ is EmptyLang!15747) (reg!16076 (regOne!32006 r!7292))))))

(declare-fun b!5738478 () Bool)

(declare-fun res!2423649 () Bool)

(assert (=> b!5738478 (=> (not res!2423649) (not e!3527589))))

(assert (=> b!5738478 (= res!2423649 (isEmpty!35300 (tail!11244 (_1!36147 lt!2284479))))))

(declare-fun b!5738479 () Bool)

(assert (=> b!5738479 (= e!3527586 e!3527591)))

(declare-fun res!2423648 () Bool)

(assert (=> b!5738479 (=> res!2423648 e!3527591)))

(declare-fun call!438650 () Bool)

(assert (=> b!5738479 (= res!2423648 call!438650)))

(declare-fun b!5738480 () Bool)

(assert (=> b!5738480 (= e!3527588 (= lt!2284634 call!438650))))

(declare-fun b!5738481 () Bool)

(declare-fun res!2423655 () Bool)

(assert (=> b!5738481 (=> (not res!2423655) (not e!3527589))))

(assert (=> b!5738481 (= res!2423655 (not call!438650))))

(declare-fun b!5738482 () Bool)

(assert (=> b!5738482 (= e!3527589 (= (head!12149 (_1!36147 lt!2284479)) (c!1012627 (reg!16076 (regOne!32006 r!7292)))))))

(declare-fun b!5738483 () Bool)

(assert (=> b!5738483 (= e!3527590 (not lt!2284634))))

(declare-fun bm!438645 () Bool)

(assert (=> bm!438645 (= call!438650 (isEmpty!35300 (_1!36147 lt!2284479)))))

(declare-fun b!5738484 () Bool)

(assert (=> b!5738484 (= e!3527587 (nullable!5779 (reg!16076 (regOne!32006 r!7292))))))

(declare-fun b!5738485 () Bool)

(declare-fun res!2423652 () Bool)

(assert (=> b!5738485 (=> res!2423652 e!3527592)))

(assert (=> b!5738485 (= res!2423652 (not ((_ is ElementMatch!15747) (reg!16076 (regOne!32006 r!7292)))))))

(assert (=> b!5738485 (= e!3527590 e!3527592)))

(assert (= (and d!1808961 c!1012734) b!5738484))

(assert (= (and d!1808961 (not c!1012734)) b!5738475))

(assert (= (and d!1808961 c!1012735) b!5738480))

(assert (= (and d!1808961 (not c!1012735)) b!5738477))

(assert (= (and b!5738477 c!1012736) b!5738483))

(assert (= (and b!5738477 (not c!1012736)) b!5738485))

(assert (= (and b!5738485 (not res!2423652)) b!5738474))

(assert (= (and b!5738474 res!2423654) b!5738481))

(assert (= (and b!5738481 res!2423655) b!5738478))

(assert (= (and b!5738478 res!2423649) b!5738482))

(assert (= (and b!5738474 (not res!2423653)) b!5738472))

(assert (= (and b!5738472 res!2423650) b!5738479))

(assert (= (and b!5738479 (not res!2423648)) b!5738476))

(assert (= (and b!5738476 (not res!2423651)) b!5738473))

(assert (= (or b!5738480 b!5738479 b!5738481) bm!438645))

(declare-fun m!6690662 () Bool)

(assert (=> b!5738475 m!6690662))

(assert (=> b!5738475 m!6690662))

(declare-fun m!6690664 () Bool)

(assert (=> b!5738475 m!6690664))

(declare-fun m!6690666 () Bool)

(assert (=> b!5738475 m!6690666))

(assert (=> b!5738475 m!6690664))

(assert (=> b!5738475 m!6690666))

(declare-fun m!6690668 () Bool)

(assert (=> b!5738475 m!6690668))

(assert (=> b!5738476 m!6690666))

(assert (=> b!5738476 m!6690666))

(declare-fun m!6690670 () Bool)

(assert (=> b!5738476 m!6690670))

(assert (=> b!5738478 m!6690666))

(assert (=> b!5738478 m!6690666))

(assert (=> b!5738478 m!6690670))

(assert (=> b!5738473 m!6690662))

(assert (=> b!5738482 m!6690662))

(declare-fun m!6690672 () Bool)

(assert (=> d!1808961 m!6690672))

(assert (=> d!1808961 m!6690608))

(assert (=> bm!438645 m!6690672))

(declare-fun m!6690674 () Bool)

(assert (=> b!5738484 m!6690674))

(assert (=> b!5738039 d!1808961))

(declare-fun d!1808965 () Bool)

(declare-fun e!3527593 () Bool)

(assert (=> d!1808965 e!3527593))

(declare-fun res!2423657 () Bool)

(assert (=> d!1808965 (=> (not res!2423657) (not e!3527593))))

(declare-fun lt!2284635 () List!63540)

(assert (=> d!1808965 (= res!2423657 (= (content!11563 lt!2284635) ((_ map or) (content!11563 lt!2284531) (content!11563 (_2!36147 lt!2284515)))))))

(declare-fun e!3527594 () List!63540)

(assert (=> d!1808965 (= lt!2284635 e!3527594)))

(declare-fun c!1012737 () Bool)

(assert (=> d!1808965 (= c!1012737 ((_ is Nil!63416) lt!2284531))))

(assert (=> d!1808965 (= (++!13967 lt!2284531 (_2!36147 lt!2284515)) lt!2284635)))

(declare-fun b!5738488 () Bool)

(declare-fun res!2423656 () Bool)

(assert (=> b!5738488 (=> (not res!2423656) (not e!3527593))))

(assert (=> b!5738488 (= res!2423656 (= (size!40065 lt!2284635) (+ (size!40065 lt!2284531) (size!40065 (_2!36147 lt!2284515)))))))

(declare-fun b!5738487 () Bool)

(assert (=> b!5738487 (= e!3527594 (Cons!63416 (h!69864 lt!2284531) (++!13967 (t!376868 lt!2284531) (_2!36147 lt!2284515))))))

(declare-fun b!5738486 () Bool)

(assert (=> b!5738486 (= e!3527594 (_2!36147 lt!2284515))))

(declare-fun b!5738489 () Bool)

(assert (=> b!5738489 (= e!3527593 (or (not (= (_2!36147 lt!2284515) Nil!63416)) (= lt!2284635 lt!2284531)))))

(assert (= (and d!1808965 c!1012737) b!5738486))

(assert (= (and d!1808965 (not c!1012737)) b!5738487))

(assert (= (and d!1808965 res!2423657) b!5738488))

(assert (= (and b!5738488 res!2423656) b!5738489))

(declare-fun m!6690676 () Bool)

(assert (=> d!1808965 m!6690676))

(declare-fun m!6690678 () Bool)

(assert (=> d!1808965 m!6690678))

(declare-fun m!6690680 () Bool)

(assert (=> d!1808965 m!6690680))

(declare-fun m!6690682 () Bool)

(assert (=> b!5738488 m!6690682))

(declare-fun m!6690684 () Bool)

(assert (=> b!5738488 m!6690684))

(declare-fun m!6690686 () Bool)

(assert (=> b!5738488 m!6690686))

(declare-fun m!6690688 () Bool)

(assert (=> b!5738487 m!6690688))

(assert (=> b!5738039 d!1808965))

(declare-fun d!1808967 () Bool)

(assert (=> d!1808967 (= (matchR!7932 lt!2284510 (_1!36147 lt!2284515)) (matchRSpec!2850 lt!2284510 (_1!36147 lt!2284515)))))

(declare-fun lt!2284636 () Unit!156520)

(assert (=> d!1808967 (= lt!2284636 (choose!43514 lt!2284510 (_1!36147 lt!2284515)))))

(assert (=> d!1808967 (validRegex!7483 lt!2284510)))

(assert (=> d!1808967 (= (mainMatchTheorem!2850 lt!2284510 (_1!36147 lt!2284515)) lt!2284636)))

(declare-fun bs!1341287 () Bool)

(assert (= bs!1341287 d!1808967))

(assert (=> bs!1341287 m!6690070))

(assert (=> bs!1341287 m!6690198))

(declare-fun m!6690690 () Bool)

(assert (=> bs!1341287 m!6690690))

(declare-fun m!6690692 () Bool)

(assert (=> bs!1341287 m!6690692))

(assert (=> b!5738039 d!1808967))

(declare-fun b!5738508 () Bool)

(declare-fun res!2423669 () Bool)

(declare-fun e!3527608 () Bool)

(assert (=> b!5738508 (=> (not res!2423669) (not e!3527608))))

(declare-fun lt!2284647 () Option!15756)

(assert (=> b!5738508 (= res!2423669 (matchR!7932 (reg!16076 (regOne!32006 r!7292)) (_1!36147 (get!21876 lt!2284647))))))

(declare-fun b!5738509 () Bool)

(declare-fun e!3527605 () Option!15756)

(declare-fun e!3527607 () Option!15756)

(assert (=> b!5738509 (= e!3527605 e!3527607)))

(declare-fun c!1012742 () Bool)

(assert (=> b!5738509 (= c!1012742 ((_ is Nil!63416) (_1!36147 lt!2284515)))))

(declare-fun d!1808969 () Bool)

(declare-fun e!3527606 () Bool)

(assert (=> d!1808969 e!3527606))

(declare-fun res!2423671 () Bool)

(assert (=> d!1808969 (=> res!2423671 e!3527606)))

(assert (=> d!1808969 (= res!2423671 e!3527608)))

(declare-fun res!2423670 () Bool)

(assert (=> d!1808969 (=> (not res!2423670) (not e!3527608))))

(assert (=> d!1808969 (= res!2423670 (isDefined!12459 lt!2284647))))

(assert (=> d!1808969 (= lt!2284647 e!3527605)))

(declare-fun c!1012743 () Bool)

(declare-fun e!3527609 () Bool)

(assert (=> d!1808969 (= c!1012743 e!3527609)))

(declare-fun res!2423668 () Bool)

(assert (=> d!1808969 (=> (not res!2423668) (not e!3527609))))

(assert (=> d!1808969 (= res!2423668 (matchR!7932 (reg!16076 (regOne!32006 r!7292)) Nil!63416))))

(assert (=> d!1808969 (validRegex!7483 (reg!16076 (regOne!32006 r!7292)))))

(assert (=> d!1808969 (= (findConcatSeparation!2170 (reg!16076 (regOne!32006 r!7292)) lt!2284493 Nil!63416 (_1!36147 lt!2284515) (_1!36147 lt!2284515)) lt!2284647)))

(declare-fun b!5738510 () Bool)

(assert (=> b!5738510 (= e!3527609 (matchR!7932 lt!2284493 (_1!36147 lt!2284515)))))

(declare-fun b!5738511 () Bool)

(declare-fun res!2423672 () Bool)

(assert (=> b!5738511 (=> (not res!2423672) (not e!3527608))))

(assert (=> b!5738511 (= res!2423672 (matchR!7932 lt!2284493 (_2!36147 (get!21876 lt!2284647))))))

(declare-fun b!5738512 () Bool)

(assert (=> b!5738512 (= e!3527608 (= (++!13967 (_1!36147 (get!21876 lt!2284647)) (_2!36147 (get!21876 lt!2284647))) (_1!36147 lt!2284515)))))

(declare-fun b!5738513 () Bool)

(declare-fun lt!2284648 () Unit!156520)

(declare-fun lt!2284646 () Unit!156520)

(assert (=> b!5738513 (= lt!2284648 lt!2284646)))

(assert (=> b!5738513 (= (++!13967 (++!13967 Nil!63416 (Cons!63416 (h!69864 (_1!36147 lt!2284515)) Nil!63416)) (t!376868 (_1!36147 lt!2284515))) (_1!36147 lt!2284515))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2088 (List!63540 C!31764 List!63540 List!63540) Unit!156520)

(assert (=> b!5738513 (= lt!2284646 (lemmaMoveElementToOtherListKeepsConcatEq!2088 Nil!63416 (h!69864 (_1!36147 lt!2284515)) (t!376868 (_1!36147 lt!2284515)) (_1!36147 lt!2284515)))))

(assert (=> b!5738513 (= e!3527607 (findConcatSeparation!2170 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (++!13967 Nil!63416 (Cons!63416 (h!69864 (_1!36147 lt!2284515)) Nil!63416)) (t!376868 (_1!36147 lt!2284515)) (_1!36147 lt!2284515)))))

(declare-fun b!5738514 () Bool)

(assert (=> b!5738514 (= e!3527605 (Some!15755 (tuple2!65689 Nil!63416 (_1!36147 lt!2284515))))))

(declare-fun b!5738515 () Bool)

(assert (=> b!5738515 (= e!3527606 (not (isDefined!12459 lt!2284647)))))

(declare-fun b!5738516 () Bool)

(assert (=> b!5738516 (= e!3527607 None!15755)))

(assert (= (and d!1808969 res!2423668) b!5738510))

(assert (= (and d!1808969 c!1012743) b!5738514))

(assert (= (and d!1808969 (not c!1012743)) b!5738509))

(assert (= (and b!5738509 c!1012742) b!5738516))

(assert (= (and b!5738509 (not c!1012742)) b!5738513))

(assert (= (and d!1808969 res!2423670) b!5738508))

(assert (= (and b!5738508 res!2423669) b!5738511))

(assert (= (and b!5738511 res!2423672) b!5738512))

(assert (= (and d!1808969 (not res!2423671)) b!5738515))

(declare-fun m!6690702 () Bool)

(assert (=> b!5738511 m!6690702))

(declare-fun m!6690704 () Bool)

(assert (=> b!5738511 m!6690704))

(assert (=> b!5738508 m!6690702))

(declare-fun m!6690706 () Bool)

(assert (=> b!5738508 m!6690706))

(declare-fun m!6690708 () Bool)

(assert (=> d!1808969 m!6690708))

(declare-fun m!6690710 () Bool)

(assert (=> d!1808969 m!6690710))

(assert (=> d!1808969 m!6690608))

(assert (=> b!5738512 m!6690702))

(declare-fun m!6690712 () Bool)

(assert (=> b!5738512 m!6690712))

(declare-fun m!6690714 () Bool)

(assert (=> b!5738513 m!6690714))

(assert (=> b!5738513 m!6690714))

(declare-fun m!6690716 () Bool)

(assert (=> b!5738513 m!6690716))

(declare-fun m!6690718 () Bool)

(assert (=> b!5738513 m!6690718))

(assert (=> b!5738513 m!6690714))

(declare-fun m!6690720 () Bool)

(assert (=> b!5738513 m!6690720))

(assert (=> b!5738515 m!6690708))

(declare-fun m!6690722 () Bool)

(assert (=> b!5738510 m!6690722))

(assert (=> b!5738039 d!1808969))

(declare-fun d!1808975 () Bool)

(assert (=> d!1808975 (= (Exists!2847 lambda!311103) (choose!43521 lambda!311103))))

(declare-fun bs!1341289 () Bool)

(assert (= bs!1341289 d!1808975))

(declare-fun m!6690724 () Bool)

(assert (=> bs!1341289 m!6690724))

(assert (=> b!5738039 d!1808975))

(declare-fun d!1808977 () Bool)

(declare-fun e!3527616 () Bool)

(assert (=> d!1808977 e!3527616))

(declare-fun res!2423676 () Bool)

(assert (=> d!1808977 (=> (not res!2423676) (not e!3527616))))

(declare-fun lt!2284655 () List!63540)

(assert (=> d!1808977 (= res!2423676 (= (content!11563 lt!2284655) ((_ map or) (content!11563 (_2!36147 lt!2284479)) (content!11563 (_2!36147 lt!2284515)))))))

(declare-fun e!3527617 () List!63540)

(assert (=> d!1808977 (= lt!2284655 e!3527617)))

(declare-fun c!1012748 () Bool)

(assert (=> d!1808977 (= c!1012748 ((_ is Nil!63416) (_2!36147 lt!2284479)))))

(assert (=> d!1808977 (= (++!13967 (_2!36147 lt!2284479) (_2!36147 lt!2284515)) lt!2284655)))

(declare-fun b!5738529 () Bool)

(declare-fun res!2423675 () Bool)

(assert (=> b!5738529 (=> (not res!2423675) (not e!3527616))))

(assert (=> b!5738529 (= res!2423675 (= (size!40065 lt!2284655) (+ (size!40065 (_2!36147 lt!2284479)) (size!40065 (_2!36147 lt!2284515)))))))

(declare-fun b!5738528 () Bool)

(assert (=> b!5738528 (= e!3527617 (Cons!63416 (h!69864 (_2!36147 lt!2284479)) (++!13967 (t!376868 (_2!36147 lt!2284479)) (_2!36147 lt!2284515))))))

(declare-fun b!5738527 () Bool)

(assert (=> b!5738527 (= e!3527617 (_2!36147 lt!2284515))))

(declare-fun b!5738530 () Bool)

(assert (=> b!5738530 (= e!3527616 (or (not (= (_2!36147 lt!2284515) Nil!63416)) (= lt!2284655 (_2!36147 lt!2284479))))))

(assert (= (and d!1808977 c!1012748) b!5738527))

(assert (= (and d!1808977 (not c!1012748)) b!5738528))

(assert (= (and d!1808977 res!2423676) b!5738529))

(assert (= (and b!5738529 res!2423675) b!5738530))

(declare-fun m!6690726 () Bool)

(assert (=> d!1808977 m!6690726))

(assert (=> d!1808977 m!6690564))

(assert (=> d!1808977 m!6690680))

(declare-fun m!6690728 () Bool)

(assert (=> b!5738529 m!6690728))

(assert (=> b!5738529 m!6690570))

(assert (=> b!5738529 m!6690686))

(declare-fun m!6690730 () Bool)

(assert (=> b!5738528 m!6690730))

(assert (=> b!5738039 d!1808977))

(declare-fun d!1808979 () Bool)

(declare-fun isEmpty!35302 (Option!15756) Bool)

(assert (=> d!1808979 (= (isDefined!12459 lt!2284504) (not (isEmpty!35302 lt!2284504)))))

(declare-fun bs!1341290 () Bool)

(assert (= bs!1341290 d!1808979))

(declare-fun m!6690732 () Bool)

(assert (=> bs!1341290 m!6690732))

(assert (=> b!5738039 d!1808979))

(declare-fun d!1808981 () Bool)

(assert (=> d!1808981 (= (get!21876 lt!2284504) (v!51810 lt!2284504))))

(assert (=> b!5738039 d!1808981))

(declare-fun d!1808983 () Bool)

(assert (=> d!1808983 (= (++!13967 (++!13967 (_1!36147 lt!2284479) (_2!36147 lt!2284479)) (_2!36147 lt!2284515)) (++!13967 (_1!36147 lt!2284479) (++!13967 (_2!36147 lt!2284479) (_2!36147 lt!2284515))))))

(declare-fun lt!2284658 () Unit!156520)

(declare-fun choose!43528 (List!63540 List!63540 List!63540) Unit!156520)

(assert (=> d!1808983 (= lt!2284658 (choose!43528 (_1!36147 lt!2284479) (_2!36147 lt!2284479) (_2!36147 lt!2284515)))))

(assert (=> d!1808983 (= (lemmaConcatAssociativity!2890 (_1!36147 lt!2284479) (_2!36147 lt!2284479) (_2!36147 lt!2284515)) lt!2284658)))

(declare-fun bs!1341291 () Bool)

(assert (= bs!1341291 d!1808983))

(assert (=> bs!1341291 m!6690186))

(assert (=> bs!1341291 m!6690186))

(declare-fun m!6690734 () Bool)

(assert (=> bs!1341291 m!6690734))

(assert (=> bs!1341291 m!6690192))

(declare-fun m!6690736 () Bool)

(assert (=> bs!1341291 m!6690736))

(declare-fun m!6690738 () Bool)

(assert (=> bs!1341291 m!6690738))

(assert (=> bs!1341291 m!6690192))

(assert (=> b!5738039 d!1808983))

(declare-fun bs!1341293 () Bool)

(declare-fun d!1808985 () Bool)

(assert (= bs!1341293 (and d!1808985 b!5738190)))

(declare-fun lambda!311164 () Int)

(assert (=> bs!1341293 (not (= lambda!311164 lambda!311122))))

(declare-fun bs!1341294 () Bool)

(assert (= bs!1341294 (and d!1808985 b!5738039)))

(assert (=> bs!1341294 (not (= lambda!311164 lambda!311104))))

(assert (=> bs!1341294 (= lambda!311164 lambda!311103)))

(declare-fun bs!1341295 () Bool)

(assert (= bs!1341295 (and d!1808985 b!5738008)))

(assert (=> bs!1341295 (not (= lambda!311164 lambda!311102))))

(declare-fun bs!1341296 () Bool)

(assert (= bs!1341296 (and d!1808985 b!5738196)))

(assert (=> bs!1341296 (not (= lambda!311164 lambda!311121))))

(declare-fun bs!1341297 () Bool)

(assert (= bs!1341297 (and d!1808985 d!1808937)))

(assert (=> bs!1341297 (not (= lambda!311164 lambda!311154))))

(assert (=> bs!1341294 (not (= lambda!311164 lambda!311105))))

(declare-fun bs!1341298 () Bool)

(assert (= bs!1341298 (and d!1808985 b!5738443)))

(assert (=> bs!1341298 (not (= lambda!311164 lambda!311157))))

(assert (=> bs!1341297 (= (= lt!2284493 (Star!15747 (reg!16076 (regOne!32006 r!7292)))) (= lambda!311164 lambda!311153))))

(declare-fun bs!1341299 () Bool)

(assert (= bs!1341299 (and d!1808985 b!5738437)))

(assert (=> bs!1341299 (not (= lambda!311164 lambda!311158))))

(assert (=> bs!1341295 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) lt!2284510) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311164 lambda!311101))))

(declare-fun bs!1341300 () Bool)

(assert (= bs!1341300 (and d!1808985 b!5738004)))

(assert (=> bs!1341300 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 r!7292)) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311164 lambda!311096))))

(assert (=> bs!1341300 (not (= lambda!311164 lambda!311097))))

(assert (=> d!1808985 true))

(assert (=> d!1808985 true))

(assert (=> d!1808985 true))

(declare-fun lambda!311165 () Int)

(assert (=> bs!1341293 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 r!7292)) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311165 lambda!311122))))

(assert (=> bs!1341294 (= lambda!311165 lambda!311104)))

(assert (=> bs!1341294 (not (= lambda!311165 lambda!311103))))

(assert (=> bs!1341295 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) lt!2284510) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311165 lambda!311102))))

(declare-fun bs!1341301 () Bool)

(assert (= bs!1341301 d!1808985))

(assert (=> bs!1341301 (not (= lambda!311165 lambda!311164))))

(assert (=> bs!1341296 (not (= lambda!311165 lambda!311121))))

(assert (=> bs!1341297 (not (= lambda!311165 lambda!311154))))

(assert (=> bs!1341294 (not (= lambda!311165 lambda!311105))))

(assert (=> bs!1341298 (not (= lambda!311165 lambda!311157))))

(assert (=> bs!1341297 (not (= lambda!311165 lambda!311153))))

(assert (=> bs!1341299 (= (and (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 lt!2284510)) (= lt!2284493 (regTwo!32006 lt!2284510))) (= lambda!311165 lambda!311158))))

(assert (=> bs!1341295 (not (= lambda!311165 lambda!311101))))

(assert (=> bs!1341300 (not (= lambda!311165 lambda!311096))))

(assert (=> bs!1341300 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 r!7292)) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311165 lambda!311097))))

(assert (=> d!1808985 true))

(assert (=> d!1808985 true))

(assert (=> d!1808985 true))

(assert (=> d!1808985 (= (Exists!2847 lambda!311164) (Exists!2847 lambda!311165))))

(declare-fun lt!2284664 () Unit!156520)

(declare-fun choose!43529 (Regex!15747 Regex!15747 List!63540) Unit!156520)

(assert (=> d!1808985 (= lt!2284664 (choose!43529 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (_1!36147 lt!2284515)))))

(assert (=> d!1808985 (validRegex!7483 (reg!16076 (regOne!32006 r!7292)))))

(assert (=> d!1808985 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1476 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (_1!36147 lt!2284515)) lt!2284664)))

(declare-fun m!6690772 () Bool)

(assert (=> bs!1341301 m!6690772))

(declare-fun m!6690774 () Bool)

(assert (=> bs!1341301 m!6690774))

(declare-fun m!6690776 () Bool)

(assert (=> bs!1341301 m!6690776))

(assert (=> bs!1341301 m!6690608))

(assert (=> b!5738039 d!1808985))

(declare-fun bs!1341303 () Bool)

(declare-fun d!1808993 () Bool)

(assert (= bs!1341303 (and d!1808993 b!5738190)))

(declare-fun lambda!311168 () Int)

(assert (=> bs!1341303 (not (= lambda!311168 lambda!311122))))

(declare-fun bs!1341304 () Bool)

(assert (= bs!1341304 (and d!1808993 b!5738039)))

(assert (=> bs!1341304 (not (= lambda!311168 lambda!311104))))

(assert (=> bs!1341304 (= lambda!311168 lambda!311103)))

(declare-fun bs!1341305 () Bool)

(assert (= bs!1341305 (and d!1808993 b!5738008)))

(assert (=> bs!1341305 (not (= lambda!311168 lambda!311102))))

(declare-fun bs!1341306 () Bool)

(assert (= bs!1341306 (and d!1808993 d!1808985)))

(assert (=> bs!1341306 (= lambda!311168 lambda!311164)))

(declare-fun bs!1341307 () Bool)

(assert (= bs!1341307 (and d!1808993 b!5738196)))

(assert (=> bs!1341307 (not (= lambda!311168 lambda!311121))))

(declare-fun bs!1341308 () Bool)

(assert (= bs!1341308 (and d!1808993 d!1808937)))

(assert (=> bs!1341308 (not (= lambda!311168 lambda!311154))))

(assert (=> bs!1341304 (not (= lambda!311168 lambda!311105))))

(assert (=> bs!1341306 (not (= lambda!311168 lambda!311165))))

(declare-fun bs!1341309 () Bool)

(assert (= bs!1341309 (and d!1808993 b!5738443)))

(assert (=> bs!1341309 (not (= lambda!311168 lambda!311157))))

(assert (=> bs!1341308 (= (= lt!2284493 (Star!15747 (reg!16076 (regOne!32006 r!7292)))) (= lambda!311168 lambda!311153))))

(declare-fun bs!1341310 () Bool)

(assert (= bs!1341310 (and d!1808993 b!5738437)))

(assert (=> bs!1341310 (not (= lambda!311168 lambda!311158))))

(assert (=> bs!1341305 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) lt!2284510) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311168 lambda!311101))))

(declare-fun bs!1341311 () Bool)

(assert (= bs!1341311 (and d!1808993 b!5738004)))

(assert (=> bs!1341311 (= (and (= (_1!36147 lt!2284515) s!2326) (= (reg!16076 (regOne!32006 r!7292)) (regOne!32006 r!7292)) (= lt!2284493 (regTwo!32006 r!7292))) (= lambda!311168 lambda!311096))))

(assert (=> bs!1341311 (not (= lambda!311168 lambda!311097))))

(assert (=> d!1808993 true))

(assert (=> d!1808993 true))

(assert (=> d!1808993 true))

(assert (=> d!1808993 (= (isDefined!12459 (findConcatSeparation!2170 (reg!16076 (regOne!32006 r!7292)) lt!2284493 Nil!63416 (_1!36147 lt!2284515) (_1!36147 lt!2284515))) (Exists!2847 lambda!311168))))

(declare-fun lt!2284667 () Unit!156520)

(declare-fun choose!43530 (Regex!15747 Regex!15747 List!63540) Unit!156520)

(assert (=> d!1808993 (= lt!2284667 (choose!43530 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (_1!36147 lt!2284515)))))

(assert (=> d!1808993 (validRegex!7483 (reg!16076 (regOne!32006 r!7292)))))

(assert (=> d!1808993 (= (lemmaFindConcatSeparationEquivalentToExists!1934 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (_1!36147 lt!2284515)) lt!2284667)))

(declare-fun bs!1341312 () Bool)

(assert (= bs!1341312 d!1808993))

(assert (=> bs!1341312 m!6690608))

(declare-fun m!6690800 () Bool)

(assert (=> bs!1341312 m!6690800))

(assert (=> bs!1341312 m!6690182))

(assert (=> bs!1341312 m!6690182))

(declare-fun m!6690802 () Bool)

(assert (=> bs!1341312 m!6690802))

(declare-fun m!6690804 () Bool)

(assert (=> bs!1341312 m!6690804))

(assert (=> b!5738039 d!1808993))

(declare-fun d!1809003 () Bool)

(assert (=> d!1809003 (= (Exists!2847 lambda!311104) (choose!43521 lambda!311104))))

(declare-fun bs!1341314 () Bool)

(assert (= bs!1341314 d!1809003))

(declare-fun m!6690808 () Bool)

(assert (=> bs!1341314 m!6690808))

(assert (=> b!5738039 d!1809003))

(declare-fun bs!1341316 () Bool)

(declare-fun d!1809005 () Bool)

(assert (= bs!1341316 (and d!1809005 b!5738037)))

(declare-fun lambda!311171 () Int)

(assert (=> bs!1341316 (= lambda!311171 lambda!311100)))

(assert (=> d!1809005 (= (inv!82614 (h!69866 zl!343)) (forall!14870 (exprs!5631 (h!69866 zl!343)) lambda!311171))))

(declare-fun bs!1341317 () Bool)

(assert (= bs!1341317 d!1809005))

(declare-fun m!6690826 () Bool)

(assert (=> bs!1341317 m!6690826))

(assert (=> b!5738018 d!1809005))

(declare-fun d!1809013 () Bool)

(declare-fun c!1012778 () Bool)

(assert (=> d!1809013 (= c!1012778 (isEmpty!35300 s!2326))))

(declare-fun e!3527671 () Bool)

(assert (=> d!1809013 (= (matchZipper!1885 z!1189 s!2326) e!3527671)))

(declare-fun b!5738627 () Bool)

(assert (=> b!5738627 (= e!3527671 (nullableZipper!1685 z!1189))))

(declare-fun b!5738628 () Bool)

(assert (=> b!5738628 (= e!3527671 (matchZipper!1885 (derivationStepZipper!1830 z!1189 (head!12149 s!2326)) (tail!11244 s!2326)))))

(assert (= (and d!1809013 c!1012778) b!5738627))

(assert (= (and d!1809013 (not c!1012778)) b!5738628))

(assert (=> d!1809013 m!6690394))

(declare-fun m!6690834 () Bool)

(assert (=> b!5738627 m!6690834))

(assert (=> b!5738628 m!6690436))

(assert (=> b!5738628 m!6690436))

(declare-fun m!6690838 () Bool)

(assert (=> b!5738628 m!6690838))

(assert (=> b!5738628 m!6690440))

(assert (=> b!5738628 m!6690838))

(assert (=> b!5738628 m!6690440))

(declare-fun m!6690840 () Bool)

(assert (=> b!5738628 m!6690840))

(assert (=> b!5738038 d!1809013))

(declare-fun b!5738681 () Bool)

(declare-fun e!3527704 () (InoxSet Context!10262))

(declare-fun e!3527701 () (InoxSet Context!10262))

(assert (=> b!5738681 (= e!3527704 e!3527701)))

(declare-fun c!1012797 () Bool)

(assert (=> b!5738681 (= c!1012797 ((_ is Concat!24592) (reg!16076 (regOne!32006 r!7292))))))

(declare-fun b!5738682 () Bool)

(declare-fun e!3527699 () (InoxSet Context!10262))

(declare-fun e!3527702 () (InoxSet Context!10262))

(assert (=> b!5738682 (= e!3527699 e!3527702)))

(declare-fun c!1012799 () Bool)

(assert (=> b!5738682 (= c!1012799 ((_ is Union!15747) (reg!16076 (regOne!32006 r!7292))))))

(declare-fun b!5738683 () Bool)

(declare-fun call!438688 () (InoxSet Context!10262))

(assert (=> b!5738683 (= e!3527701 call!438688)))

(declare-fun bm!438683 () Bool)

(declare-fun call!438693 () (InoxSet Context!10262))

(assert (=> bm!438683 (= call!438688 call!438693)))

(declare-fun b!5738684 () Bool)

(declare-fun e!3527703 () (InoxSet Context!10262))

(assert (=> b!5738684 (= e!3527703 ((as const (Array Context!10262 Bool)) false))))

(declare-fun b!5738685 () Bool)

(declare-fun c!1012798 () Bool)

(assert (=> b!5738685 (= c!1012798 ((_ is Star!15747) (reg!16076 (regOne!32006 r!7292))))))

(assert (=> b!5738685 (= e!3527701 e!3527703)))

(declare-fun b!5738686 () Bool)

(declare-fun call!438689 () (InoxSet Context!10262))

(declare-fun call!438690 () (InoxSet Context!10262))

(assert (=> b!5738686 (= e!3527702 ((_ map or) call!438689 call!438690))))

(declare-fun b!5738687 () Bool)

(assert (=> b!5738687 (= e!3527704 ((_ map or) call!438689 call!438693))))

(declare-fun bm!438684 () Bool)

(assert (=> bm!438684 (= call!438693 call!438690)))

(declare-fun c!1012800 () Bool)

(declare-fun call!438692 () List!63541)

(declare-fun bm!438685 () Bool)

(assert (=> bm!438685 (= call!438690 (derivationStepZipperDown!1089 (ite c!1012799 (regTwo!32007 (reg!16076 (regOne!32006 r!7292))) (ite c!1012800 (regTwo!32006 (reg!16076 (regOne!32006 r!7292))) (ite c!1012797 (regOne!32006 (reg!16076 (regOne!32006 r!7292))) (reg!16076 (reg!16076 (regOne!32006 r!7292)))))) (ite (or c!1012799 c!1012800) lt!2284522 (Context!10263 call!438692)) (h!69864 s!2326)))))

(declare-fun b!5738688 () Bool)

(assert (=> b!5738688 (= e!3527699 (store ((as const (Array Context!10262 Bool)) false) lt!2284522 true))))

(declare-fun b!5738689 () Bool)

(declare-fun e!3527700 () Bool)

(assert (=> b!5738689 (= c!1012800 e!3527700)))

(declare-fun res!2423733 () Bool)

(assert (=> b!5738689 (=> (not res!2423733) (not e!3527700))))

(assert (=> b!5738689 (= res!2423733 ((_ is Concat!24592) (reg!16076 (regOne!32006 r!7292))))))

(assert (=> b!5738689 (= e!3527702 e!3527704)))

(declare-fun call!438691 () List!63541)

(declare-fun bm!438686 () Bool)

(assert (=> bm!438686 (= call!438689 (derivationStepZipperDown!1089 (ite c!1012799 (regOne!32007 (reg!16076 (regOne!32006 r!7292))) (regOne!32006 (reg!16076 (regOne!32006 r!7292)))) (ite c!1012799 lt!2284522 (Context!10263 call!438691)) (h!69864 s!2326)))))

(declare-fun bm!438687 () Bool)

(assert (=> bm!438687 (= call!438692 call!438691)))

(declare-fun d!1809017 () Bool)

(declare-fun c!1012796 () Bool)

(assert (=> d!1809017 (= c!1012796 (and ((_ is ElementMatch!15747) (reg!16076 (regOne!32006 r!7292))) (= (c!1012627 (reg!16076 (regOne!32006 r!7292))) (h!69864 s!2326))))))

(assert (=> d!1809017 (= (derivationStepZipperDown!1089 (reg!16076 (regOne!32006 r!7292)) lt!2284522 (h!69864 s!2326)) e!3527699)))

(declare-fun b!5738690 () Bool)

(assert (=> b!5738690 (= e!3527700 (nullable!5779 (regOne!32006 (reg!16076 (regOne!32006 r!7292)))))))

(declare-fun b!5738691 () Bool)

(assert (=> b!5738691 (= e!3527703 call!438688)))

(declare-fun bm!438688 () Bool)

(declare-fun $colon$colon!1752 (List!63541 Regex!15747) List!63541)

(assert (=> bm!438688 (= call!438691 ($colon$colon!1752 (exprs!5631 lt!2284522) (ite (or c!1012800 c!1012797) (regTwo!32006 (reg!16076 (regOne!32006 r!7292))) (reg!16076 (regOne!32006 r!7292)))))))

(assert (= (and d!1809017 c!1012796) b!5738688))

(assert (= (and d!1809017 (not c!1012796)) b!5738682))

(assert (= (and b!5738682 c!1012799) b!5738686))

(assert (= (and b!5738682 (not c!1012799)) b!5738689))

(assert (= (and b!5738689 res!2423733) b!5738690))

(assert (= (and b!5738689 c!1012800) b!5738687))

(assert (= (and b!5738689 (not c!1012800)) b!5738681))

(assert (= (and b!5738681 c!1012797) b!5738683))

(assert (= (and b!5738681 (not c!1012797)) b!5738685))

(assert (= (and b!5738685 c!1012798) b!5738691))

(assert (= (and b!5738685 (not c!1012798)) b!5738684))

(assert (= (or b!5738683 b!5738691) bm!438687))

(assert (= (or b!5738683 b!5738691) bm!438683))

(assert (= (or b!5738687 bm!438687) bm!438688))

(assert (= (or b!5738687 bm!438683) bm!438684))

(assert (= (or b!5738686 bm!438684) bm!438685))

(assert (= (or b!5738686 b!5738687) bm!438686))

(declare-fun m!6690890 () Bool)

(assert (=> bm!438688 m!6690890))

(assert (=> b!5738688 m!6690122))

(declare-fun m!6690892 () Bool)

(assert (=> bm!438686 m!6690892))

(declare-fun m!6690894 () Bool)

(assert (=> b!5738690 m!6690894))

(declare-fun m!6690896 () Bool)

(assert (=> bm!438685 m!6690896))

(assert (=> b!5738025 d!1809017))

(declare-fun d!1809029 () Bool)

(declare-fun c!1012801 () Bool)

(assert (=> d!1809029 (= c!1012801 (isEmpty!35300 (_1!36147 lt!2284469)))))

(declare-fun e!3527705 () Bool)

(assert (=> d!1809029 (= (matchZipper!1885 lt!2284485 (_1!36147 lt!2284469)) e!3527705)))

(declare-fun b!5738692 () Bool)

(assert (=> b!5738692 (= e!3527705 (nullableZipper!1685 lt!2284485))))

(declare-fun b!5738693 () Bool)

(assert (=> b!5738693 (= e!3527705 (matchZipper!1885 (derivationStepZipper!1830 lt!2284485 (head!12149 (_1!36147 lt!2284469))) (tail!11244 (_1!36147 lt!2284469))))))

(assert (= (and d!1809029 c!1012801) b!5738692))

(assert (= (and d!1809029 (not c!1012801)) b!5738693))

(declare-fun m!6690898 () Bool)

(assert (=> d!1809029 m!6690898))

(declare-fun m!6690900 () Bool)

(assert (=> b!5738692 m!6690900))

(declare-fun m!6690902 () Bool)

(assert (=> b!5738693 m!6690902))

(assert (=> b!5738693 m!6690902))

(declare-fun m!6690904 () Bool)

(assert (=> b!5738693 m!6690904))

(declare-fun m!6690906 () Bool)

(assert (=> b!5738693 m!6690906))

(assert (=> b!5738693 m!6690904))

(assert (=> b!5738693 m!6690906))

(declare-fun m!6690908 () Bool)

(assert (=> b!5738693 m!6690908))

(assert (=> b!5738045 d!1809029))

(declare-fun d!1809031 () Bool)

(assert (=> d!1809031 (= (Exists!2847 lambda!311096) (choose!43521 lambda!311096))))

(declare-fun bs!1341323 () Bool)

(assert (= bs!1341323 d!1809031))

(declare-fun m!6690910 () Bool)

(assert (=> bs!1341323 m!6690910))

(assert (=> b!5738004 d!1809031))

(declare-fun b!5738694 () Bool)

(declare-fun res!2423735 () Bool)

(declare-fun e!3527709 () Bool)

(assert (=> b!5738694 (=> (not res!2423735) (not e!3527709))))

(declare-fun lt!2284684 () Option!15756)

(assert (=> b!5738694 (= res!2423735 (matchR!7932 (regOne!32006 r!7292) (_1!36147 (get!21876 lt!2284684))))))

(declare-fun b!5738695 () Bool)

(declare-fun e!3527706 () Option!15756)

(declare-fun e!3527708 () Option!15756)

(assert (=> b!5738695 (= e!3527706 e!3527708)))

(declare-fun c!1012802 () Bool)

(assert (=> b!5738695 (= c!1012802 ((_ is Nil!63416) s!2326))))

(declare-fun d!1809033 () Bool)

(declare-fun e!3527707 () Bool)

(assert (=> d!1809033 e!3527707))

(declare-fun res!2423737 () Bool)

(assert (=> d!1809033 (=> res!2423737 e!3527707)))

(assert (=> d!1809033 (= res!2423737 e!3527709)))

(declare-fun res!2423736 () Bool)

(assert (=> d!1809033 (=> (not res!2423736) (not e!3527709))))

(assert (=> d!1809033 (= res!2423736 (isDefined!12459 lt!2284684))))

(assert (=> d!1809033 (= lt!2284684 e!3527706)))

(declare-fun c!1012803 () Bool)

(declare-fun e!3527710 () Bool)

(assert (=> d!1809033 (= c!1012803 e!3527710)))

(declare-fun res!2423734 () Bool)

(assert (=> d!1809033 (=> (not res!2423734) (not e!3527710))))

(assert (=> d!1809033 (= res!2423734 (matchR!7932 (regOne!32006 r!7292) Nil!63416))))

(assert (=> d!1809033 (validRegex!7483 (regOne!32006 r!7292))))

(assert (=> d!1809033 (= (findConcatSeparation!2170 (regOne!32006 r!7292) (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326) lt!2284684)))

(declare-fun b!5738696 () Bool)

(assert (=> b!5738696 (= e!3527710 (matchR!7932 (regTwo!32006 r!7292) s!2326))))

(declare-fun b!5738697 () Bool)

(declare-fun res!2423738 () Bool)

(assert (=> b!5738697 (=> (not res!2423738) (not e!3527709))))

(assert (=> b!5738697 (= res!2423738 (matchR!7932 (regTwo!32006 r!7292) (_2!36147 (get!21876 lt!2284684))))))

(declare-fun b!5738698 () Bool)

(assert (=> b!5738698 (= e!3527709 (= (++!13967 (_1!36147 (get!21876 lt!2284684)) (_2!36147 (get!21876 lt!2284684))) s!2326))))

(declare-fun b!5738699 () Bool)

(declare-fun lt!2284685 () Unit!156520)

(declare-fun lt!2284683 () Unit!156520)

(assert (=> b!5738699 (= lt!2284685 lt!2284683)))

(assert (=> b!5738699 (= (++!13967 (++!13967 Nil!63416 (Cons!63416 (h!69864 s!2326) Nil!63416)) (t!376868 s!2326)) s!2326)))

(assert (=> b!5738699 (= lt!2284683 (lemmaMoveElementToOtherListKeepsConcatEq!2088 Nil!63416 (h!69864 s!2326) (t!376868 s!2326) s!2326))))

(assert (=> b!5738699 (= e!3527708 (findConcatSeparation!2170 (regOne!32006 r!7292) (regTwo!32006 r!7292) (++!13967 Nil!63416 (Cons!63416 (h!69864 s!2326) Nil!63416)) (t!376868 s!2326) s!2326))))

(declare-fun b!5738700 () Bool)

(assert (=> b!5738700 (= e!3527706 (Some!15755 (tuple2!65689 Nil!63416 s!2326)))))

(declare-fun b!5738701 () Bool)

(assert (=> b!5738701 (= e!3527707 (not (isDefined!12459 lt!2284684)))))

(declare-fun b!5738702 () Bool)

(assert (=> b!5738702 (= e!3527708 None!15755)))

(assert (= (and d!1809033 res!2423734) b!5738696))

(assert (= (and d!1809033 c!1012803) b!5738700))

(assert (= (and d!1809033 (not c!1012803)) b!5738695))

(assert (= (and b!5738695 c!1012802) b!5738702))

(assert (= (and b!5738695 (not c!1012802)) b!5738699))

(assert (= (and d!1809033 res!2423736) b!5738694))

(assert (= (and b!5738694 res!2423735) b!5738697))

(assert (= (and b!5738697 res!2423738) b!5738698))

(assert (= (and d!1809033 (not res!2423737)) b!5738701))

(declare-fun m!6690912 () Bool)

(assert (=> b!5738697 m!6690912))

(declare-fun m!6690914 () Bool)

(assert (=> b!5738697 m!6690914))

(assert (=> b!5738694 m!6690912))

(declare-fun m!6690916 () Bool)

(assert (=> b!5738694 m!6690916))

(declare-fun m!6690918 () Bool)

(assert (=> d!1809033 m!6690918))

(declare-fun m!6690920 () Bool)

(assert (=> d!1809033 m!6690920))

(declare-fun m!6690922 () Bool)

(assert (=> d!1809033 m!6690922))

(assert (=> b!5738698 m!6690912))

(declare-fun m!6690924 () Bool)

(assert (=> b!5738698 m!6690924))

(declare-fun m!6690926 () Bool)

(assert (=> b!5738699 m!6690926))

(assert (=> b!5738699 m!6690926))

(declare-fun m!6690928 () Bool)

(assert (=> b!5738699 m!6690928))

(declare-fun m!6690930 () Bool)

(assert (=> b!5738699 m!6690930))

(assert (=> b!5738699 m!6690926))

(declare-fun m!6690932 () Bool)

(assert (=> b!5738699 m!6690932))

(assert (=> b!5738701 m!6690918))

(declare-fun m!6690934 () Bool)

(assert (=> b!5738696 m!6690934))

(assert (=> b!5738004 d!1809033))

(declare-fun d!1809035 () Bool)

(assert (=> d!1809035 (= (Exists!2847 lambda!311097) (choose!43521 lambda!311097))))

(declare-fun bs!1341324 () Bool)

(assert (= bs!1341324 d!1809035))

(declare-fun m!6690936 () Bool)

(assert (=> bs!1341324 m!6690936))

(assert (=> b!5738004 d!1809035))

(declare-fun bs!1341325 () Bool)

(declare-fun d!1809037 () Bool)

(assert (= bs!1341325 (and d!1809037 b!5738190)))

(declare-fun lambda!311175 () Int)

(assert (=> bs!1341325 (not (= lambda!311175 lambda!311122))))

(declare-fun bs!1341326 () Bool)

(assert (= bs!1341326 (and d!1809037 b!5738039)))

(assert (=> bs!1341326 (not (= lambda!311175 lambda!311104))))

(assert (=> bs!1341326 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311175 lambda!311103))))

(declare-fun bs!1341327 () Bool)

(assert (= bs!1341327 (and d!1809037 b!5738008)))

(assert (=> bs!1341327 (not (= lambda!311175 lambda!311102))))

(declare-fun bs!1341328 () Bool)

(assert (= bs!1341328 (and d!1809037 d!1808985)))

(assert (=> bs!1341328 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311175 lambda!311164))))

(declare-fun bs!1341329 () Bool)

(assert (= bs!1341329 (and d!1809037 b!5738196)))

(assert (=> bs!1341329 (not (= lambda!311175 lambda!311121))))

(declare-fun bs!1341330 () Bool)

(assert (= bs!1341330 (and d!1809037 d!1808993)))

(assert (=> bs!1341330 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311175 lambda!311168))))

(declare-fun bs!1341332 () Bool)

(assert (= bs!1341332 (and d!1809037 d!1808937)))

(assert (=> bs!1341332 (not (= lambda!311175 lambda!311154))))

(assert (=> bs!1341326 (not (= lambda!311175 lambda!311105))))

(assert (=> bs!1341328 (not (= lambda!311175 lambda!311165))))

(declare-fun bs!1341333 () Bool)

(assert (= bs!1341333 (and d!1809037 b!5738443)))

(assert (=> bs!1341333 (not (= lambda!311175 lambda!311157))))

(assert (=> bs!1341332 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) (Star!15747 (reg!16076 (regOne!32006 r!7292))))) (= lambda!311175 lambda!311153))))

(declare-fun bs!1341334 () Bool)

(assert (= bs!1341334 (and d!1809037 b!5738437)))

(assert (=> bs!1341334 (not (= lambda!311175 lambda!311158))))

(assert (=> bs!1341327 (= (= (regOne!32006 r!7292) lt!2284510) (= lambda!311175 lambda!311101))))

(declare-fun bs!1341335 () Bool)

(assert (= bs!1341335 (and d!1809037 b!5738004)))

(assert (=> bs!1341335 (= lambda!311175 lambda!311096)))

(assert (=> bs!1341335 (not (= lambda!311175 lambda!311097))))

(assert (=> d!1809037 true))

(assert (=> d!1809037 true))

(assert (=> d!1809037 true))

(assert (=> d!1809037 (= (isDefined!12459 (findConcatSeparation!2170 (regOne!32006 r!7292) (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326)) (Exists!2847 lambda!311175))))

(declare-fun lt!2284686 () Unit!156520)

(assert (=> d!1809037 (= lt!2284686 (choose!43530 (regOne!32006 r!7292) (regTwo!32006 r!7292) s!2326))))

(assert (=> d!1809037 (validRegex!7483 (regOne!32006 r!7292))))

(assert (=> d!1809037 (= (lemmaFindConcatSeparationEquivalentToExists!1934 (regOne!32006 r!7292) (regTwo!32006 r!7292) s!2326) lt!2284686)))

(declare-fun bs!1341339 () Bool)

(assert (= bs!1341339 d!1809037))

(assert (=> bs!1341339 m!6690922))

(declare-fun m!6690940 () Bool)

(assert (=> bs!1341339 m!6690940))

(assert (=> bs!1341339 m!6690204))

(assert (=> bs!1341339 m!6690204))

(assert (=> bs!1341339 m!6690206))

(declare-fun m!6690942 () Bool)

(assert (=> bs!1341339 m!6690942))

(assert (=> b!5738004 d!1809037))

(declare-fun bs!1341344 () Bool)

(declare-fun d!1809041 () Bool)

(assert (= bs!1341344 (and d!1809041 b!5738190)))

(declare-fun lambda!311177 () Int)

(assert (=> bs!1341344 (not (= lambda!311177 lambda!311122))))

(declare-fun bs!1341345 () Bool)

(assert (= bs!1341345 (and d!1809041 b!5738039)))

(assert (=> bs!1341345 (not (= lambda!311177 lambda!311104))))

(assert (=> bs!1341345 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311177 lambda!311103))))

(declare-fun bs!1341347 () Bool)

(assert (= bs!1341347 (and d!1809041 d!1809037)))

(assert (=> bs!1341347 (= lambda!311177 lambda!311175)))

(declare-fun bs!1341348 () Bool)

(assert (= bs!1341348 (and d!1809041 b!5738008)))

(assert (=> bs!1341348 (not (= lambda!311177 lambda!311102))))

(declare-fun bs!1341349 () Bool)

(assert (= bs!1341349 (and d!1809041 d!1808985)))

(assert (=> bs!1341349 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311177 lambda!311164))))

(declare-fun bs!1341350 () Bool)

(assert (= bs!1341350 (and d!1809041 b!5738196)))

(assert (=> bs!1341350 (not (= lambda!311177 lambda!311121))))

(declare-fun bs!1341352 () Bool)

(assert (= bs!1341352 (and d!1809041 d!1808993)))

(assert (=> bs!1341352 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311177 lambda!311168))))

(declare-fun bs!1341353 () Bool)

(assert (= bs!1341353 (and d!1809041 d!1808937)))

(assert (=> bs!1341353 (not (= lambda!311177 lambda!311154))))

(assert (=> bs!1341345 (not (= lambda!311177 lambda!311105))))

(assert (=> bs!1341349 (not (= lambda!311177 lambda!311165))))

(declare-fun bs!1341354 () Bool)

(assert (= bs!1341354 (and d!1809041 b!5738443)))

(assert (=> bs!1341354 (not (= lambda!311177 lambda!311157))))

(assert (=> bs!1341353 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) (Star!15747 (reg!16076 (regOne!32006 r!7292))))) (= lambda!311177 lambda!311153))))

(declare-fun bs!1341355 () Bool)

(assert (= bs!1341355 (and d!1809041 b!5738437)))

(assert (=> bs!1341355 (not (= lambda!311177 lambda!311158))))

(assert (=> bs!1341348 (= (= (regOne!32006 r!7292) lt!2284510) (= lambda!311177 lambda!311101))))

(declare-fun bs!1341356 () Bool)

(assert (= bs!1341356 (and d!1809041 b!5738004)))

(assert (=> bs!1341356 (= lambda!311177 lambda!311096)))

(assert (=> bs!1341356 (not (= lambda!311177 lambda!311097))))

(assert (=> d!1809041 true))

(assert (=> d!1809041 true))

(assert (=> d!1809041 true))

(declare-fun lambda!311178 () Int)

(assert (=> bs!1341344 (= lambda!311178 lambda!311122)))

(assert (=> bs!1341345 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311178 lambda!311104))))

(assert (=> bs!1341345 (not (= lambda!311178 lambda!311103))))

(assert (=> bs!1341347 (not (= lambda!311178 lambda!311175))))

(assert (=> bs!1341348 (= (= (regOne!32006 r!7292) lt!2284510) (= lambda!311178 lambda!311102))))

(assert (=> bs!1341349 (not (= lambda!311178 lambda!311164))))

(assert (=> bs!1341350 (not (= lambda!311178 lambda!311121))))

(assert (=> bs!1341352 (not (= lambda!311178 lambda!311168))))

(assert (=> bs!1341353 (not (= lambda!311178 lambda!311154))))

(declare-fun bs!1341357 () Bool)

(assert (= bs!1341357 d!1809041))

(assert (=> bs!1341357 (not (= lambda!311178 lambda!311177))))

(assert (=> bs!1341345 (not (= lambda!311178 lambda!311105))))

(assert (=> bs!1341349 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311178 lambda!311165))))

(assert (=> bs!1341354 (not (= lambda!311178 lambda!311157))))

(assert (=> bs!1341353 (not (= lambda!311178 lambda!311153))))

(assert (=> bs!1341355 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 r!7292) (regOne!32006 lt!2284510)) (= (regTwo!32006 r!7292) (regTwo!32006 lt!2284510))) (= lambda!311178 lambda!311158))))

(assert (=> bs!1341348 (not (= lambda!311178 lambda!311101))))

(assert (=> bs!1341356 (not (= lambda!311178 lambda!311096))))

(assert (=> bs!1341356 (= lambda!311178 lambda!311097)))

(assert (=> d!1809041 true))

(assert (=> d!1809041 true))

(assert (=> d!1809041 true))

(assert (=> d!1809041 (= (Exists!2847 lambda!311177) (Exists!2847 lambda!311178))))

(declare-fun lt!2284691 () Unit!156520)

(assert (=> d!1809041 (= lt!2284691 (choose!43529 (regOne!32006 r!7292) (regTwo!32006 r!7292) s!2326))))

(assert (=> d!1809041 (validRegex!7483 (regOne!32006 r!7292))))

(assert (=> d!1809041 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1476 (regOne!32006 r!7292) (regTwo!32006 r!7292) s!2326) lt!2284691)))

(declare-fun m!6690950 () Bool)

(assert (=> bs!1341357 m!6690950))

(declare-fun m!6690952 () Bool)

(assert (=> bs!1341357 m!6690952))

(declare-fun m!6690954 () Bool)

(assert (=> bs!1341357 m!6690954))

(assert (=> bs!1341357 m!6690922))

(assert (=> b!5738004 d!1809041))

(declare-fun d!1809045 () Bool)

(assert (=> d!1809045 (= (isDefined!12459 (findConcatSeparation!2170 (regOne!32006 r!7292) (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326)) (not (isEmpty!35302 (findConcatSeparation!2170 (regOne!32006 r!7292) (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326))))))

(declare-fun bs!1341358 () Bool)

(assert (= bs!1341358 d!1809045))

(assert (=> bs!1341358 m!6690204))

(declare-fun m!6690956 () Bool)

(assert (=> bs!1341358 m!6690956))

(assert (=> b!5738004 d!1809045))

(declare-fun d!1809047 () Bool)

(assert (=> d!1809047 (= (isEmpty!35298 (t!376869 (exprs!5631 (h!69866 zl!343)))) ((_ is Nil!63417) (t!376869 (exprs!5631 (h!69866 zl!343)))))))

(assert (=> b!5738047 d!1809047))

(declare-fun b!5738709 () Bool)

(declare-fun e!3527720 () Bool)

(declare-fun e!3527714 () Bool)

(assert (=> b!5738709 (= e!3527720 e!3527714)))

(declare-fun res!2423747 () Bool)

(assert (=> b!5738709 (=> (not res!2423747) (not e!3527714))))

(declare-fun lt!2284695 () Bool)

(assert (=> b!5738709 (= res!2423747 (not lt!2284695))))

(declare-fun b!5738710 () Bool)

(declare-fun e!3527719 () Bool)

(assert (=> b!5738710 (= e!3527719 (not (= (head!12149 (_2!36147 lt!2284479)) (c!1012627 lt!2284493))))))

(declare-fun b!5738711 () Bool)

(declare-fun res!2423750 () Bool)

(assert (=> b!5738711 (=> res!2423750 e!3527720)))

(declare-fun e!3527717 () Bool)

(assert (=> b!5738711 (= res!2423750 e!3527717)))

(declare-fun res!2423751 () Bool)

(assert (=> b!5738711 (=> (not res!2423751) (not e!3527717))))

(assert (=> b!5738711 (= res!2423751 lt!2284695)))

(declare-fun d!1809049 () Bool)

(declare-fun e!3527716 () Bool)

(assert (=> d!1809049 e!3527716))

(declare-fun c!1012805 () Bool)

(assert (=> d!1809049 (= c!1012805 ((_ is EmptyExpr!15747) lt!2284493))))

(declare-fun e!3527715 () Bool)

(assert (=> d!1809049 (= lt!2284695 e!3527715)))

(declare-fun c!1012804 () Bool)

(assert (=> d!1809049 (= c!1012804 (isEmpty!35300 (_2!36147 lt!2284479)))))

(assert (=> d!1809049 (validRegex!7483 lt!2284493)))

(assert (=> d!1809049 (= (matchR!7932 lt!2284493 (_2!36147 lt!2284479)) lt!2284695)))

(declare-fun b!5738712 () Bool)

(assert (=> b!5738712 (= e!3527715 (matchR!7932 (derivativeStep!4538 lt!2284493 (head!12149 (_2!36147 lt!2284479))) (tail!11244 (_2!36147 lt!2284479))))))

(declare-fun b!5738713 () Bool)

(declare-fun res!2423748 () Bool)

(assert (=> b!5738713 (=> res!2423748 e!3527719)))

(assert (=> b!5738713 (= res!2423748 (not (isEmpty!35300 (tail!11244 (_2!36147 lt!2284479)))))))

(declare-fun b!5738714 () Bool)

(declare-fun e!3527718 () Bool)

(assert (=> b!5738714 (= e!3527716 e!3527718)))

(declare-fun c!1012806 () Bool)

(assert (=> b!5738714 (= c!1012806 ((_ is EmptyLang!15747) lt!2284493))))

(declare-fun b!5738715 () Bool)

(declare-fun res!2423746 () Bool)

(assert (=> b!5738715 (=> (not res!2423746) (not e!3527717))))

(assert (=> b!5738715 (= res!2423746 (isEmpty!35300 (tail!11244 (_2!36147 lt!2284479))))))

(declare-fun b!5738716 () Bool)

(assert (=> b!5738716 (= e!3527714 e!3527719)))

(declare-fun res!2423745 () Bool)

(assert (=> b!5738716 (=> res!2423745 e!3527719)))

(declare-fun call!438694 () Bool)

(assert (=> b!5738716 (= res!2423745 call!438694)))

(declare-fun b!5738717 () Bool)

(assert (=> b!5738717 (= e!3527716 (= lt!2284695 call!438694))))

(declare-fun b!5738718 () Bool)

(declare-fun res!2423752 () Bool)

(assert (=> b!5738718 (=> (not res!2423752) (not e!3527717))))

(assert (=> b!5738718 (= res!2423752 (not call!438694))))

(declare-fun b!5738719 () Bool)

(assert (=> b!5738719 (= e!3527717 (= (head!12149 (_2!36147 lt!2284479)) (c!1012627 lt!2284493)))))

(declare-fun b!5738720 () Bool)

(assert (=> b!5738720 (= e!3527718 (not lt!2284695))))

(declare-fun bm!438689 () Bool)

(assert (=> bm!438689 (= call!438694 (isEmpty!35300 (_2!36147 lt!2284479)))))

(declare-fun b!5738721 () Bool)

(assert (=> b!5738721 (= e!3527715 (nullable!5779 lt!2284493))))

(declare-fun b!5738722 () Bool)

(declare-fun res!2423749 () Bool)

(assert (=> b!5738722 (=> res!2423749 e!3527720)))

(assert (=> b!5738722 (= res!2423749 (not ((_ is ElementMatch!15747) lt!2284493)))))

(assert (=> b!5738722 (= e!3527718 e!3527720)))

(assert (= (and d!1809049 c!1012804) b!5738721))

(assert (= (and d!1809049 (not c!1012804)) b!5738712))

(assert (= (and d!1809049 c!1012805) b!5738717))

(assert (= (and d!1809049 (not c!1012805)) b!5738714))

(assert (= (and b!5738714 c!1012806) b!5738720))

(assert (= (and b!5738714 (not c!1012806)) b!5738722))

(assert (= (and b!5738722 (not res!2423749)) b!5738711))

(assert (= (and b!5738711 res!2423751) b!5738718))

(assert (= (and b!5738718 res!2423752) b!5738715))

(assert (= (and b!5738715 res!2423746) b!5738719))

(assert (= (and b!5738711 (not res!2423750)) b!5738709))

(assert (= (and b!5738709 res!2423747) b!5738716))

(assert (= (and b!5738716 (not res!2423745)) b!5738713))

(assert (= (and b!5738713 (not res!2423748)) b!5738710))

(assert (= (or b!5738717 b!5738716 b!5738718) bm!438689))

(declare-fun m!6690964 () Bool)

(assert (=> b!5738712 m!6690964))

(assert (=> b!5738712 m!6690964))

(declare-fun m!6690966 () Bool)

(assert (=> b!5738712 m!6690966))

(declare-fun m!6690968 () Bool)

(assert (=> b!5738712 m!6690968))

(assert (=> b!5738712 m!6690966))

(assert (=> b!5738712 m!6690968))

(declare-fun m!6690970 () Bool)

(assert (=> b!5738712 m!6690970))

(assert (=> b!5738713 m!6690968))

(assert (=> b!5738713 m!6690968))

(declare-fun m!6690972 () Bool)

(assert (=> b!5738713 m!6690972))

(assert (=> b!5738715 m!6690968))

(assert (=> b!5738715 m!6690968))

(assert (=> b!5738715 m!6690972))

(assert (=> b!5738710 m!6690964))

(assert (=> b!5738719 m!6690964))

(declare-fun m!6690976 () Bool)

(assert (=> d!1809049 m!6690976))

(declare-fun m!6690980 () Bool)

(assert (=> d!1809049 m!6690980))

(assert (=> bm!438689 m!6690976))

(declare-fun m!6690984 () Bool)

(assert (=> b!5738721 m!6690984))

(assert (=> b!5738043 d!1809049))

(declare-fun bs!1341378 () Bool)

(declare-fun d!1809053 () Bool)

(assert (= bs!1341378 (and d!1809053 b!5738037)))

(declare-fun lambda!311183 () Int)

(assert (=> bs!1341378 (= lambda!311183 lambda!311100)))

(declare-fun bs!1341379 () Bool)

(assert (= bs!1341379 (and d!1809053 d!1809005)))

(assert (=> bs!1341379 (= lambda!311183 lambda!311171)))

(declare-fun b!5738796 () Bool)

(declare-fun e!3527761 () Bool)

(declare-fun lt!2284701 () Regex!15747)

(declare-fun isEmptyExpr!1243 (Regex!15747) Bool)

(assert (=> b!5738796 (= e!3527761 (isEmptyExpr!1243 lt!2284701))))

(declare-fun b!5738797 () Bool)

(declare-fun e!3527766 () Bool)

(assert (=> b!5738797 (= e!3527761 e!3527766)))

(declare-fun c!1012830 () Bool)

(declare-fun tail!11246 (List!63541) List!63541)

(assert (=> b!5738797 (= c!1012830 (isEmpty!35298 (tail!11246 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun b!5738798 () Bool)

(declare-fun e!3527762 () Regex!15747)

(declare-fun e!3527765 () Regex!15747)

(assert (=> b!5738798 (= e!3527762 e!3527765)))

(declare-fun c!1012831 () Bool)

(assert (=> b!5738798 (= c!1012831 ((_ is Cons!63417) (exprs!5631 (h!69866 zl!343))))))

(declare-fun e!3527764 () Bool)

(assert (=> d!1809053 e!3527764))

(declare-fun res!2423784 () Bool)

(assert (=> d!1809053 (=> (not res!2423784) (not e!3527764))))

(assert (=> d!1809053 (= res!2423784 (validRegex!7483 lt!2284701))))

(assert (=> d!1809053 (= lt!2284701 e!3527762)))

(declare-fun c!1012828 () Bool)

(declare-fun e!3527763 () Bool)

(assert (=> d!1809053 (= c!1012828 e!3527763)))

(declare-fun res!2423785 () Bool)

(assert (=> d!1809053 (=> (not res!2423785) (not e!3527763))))

(assert (=> d!1809053 (= res!2423785 ((_ is Cons!63417) (exprs!5631 (h!69866 zl!343))))))

(assert (=> d!1809053 (forall!14870 (exprs!5631 (h!69866 zl!343)) lambda!311183)))

(assert (=> d!1809053 (= (generalisedConcat!1362 (exprs!5631 (h!69866 zl!343))) lt!2284701)))

(declare-fun b!5738799 () Bool)

(assert (=> b!5738799 (= e!3527765 EmptyExpr!15747)))

(declare-fun b!5738800 () Bool)

(assert (=> b!5738800 (= e!3527762 (h!69865 (exprs!5631 (h!69866 zl!343))))))

(declare-fun b!5738801 () Bool)

(assert (=> b!5738801 (= e!3527764 e!3527761)))

(declare-fun c!1012829 () Bool)

(assert (=> b!5738801 (= c!1012829 (isEmpty!35298 (exprs!5631 (h!69866 zl!343))))))

(declare-fun b!5738802 () Bool)

(declare-fun head!12151 (List!63541) Regex!15747)

(assert (=> b!5738802 (= e!3527766 (= lt!2284701 (head!12151 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun b!5738803 () Bool)

(assert (=> b!5738803 (= e!3527763 (isEmpty!35298 (t!376869 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun b!5738804 () Bool)

(declare-fun isConcat!766 (Regex!15747) Bool)

(assert (=> b!5738804 (= e!3527766 (isConcat!766 lt!2284701))))

(declare-fun b!5738805 () Bool)

(assert (=> b!5738805 (= e!3527765 (Concat!24592 (h!69865 (exprs!5631 (h!69866 zl!343))) (generalisedConcat!1362 (t!376869 (exprs!5631 (h!69866 zl!343))))))))

(assert (= (and d!1809053 res!2423785) b!5738803))

(assert (= (and d!1809053 c!1012828) b!5738800))

(assert (= (and d!1809053 (not c!1012828)) b!5738798))

(assert (= (and b!5738798 c!1012831) b!5738805))

(assert (= (and b!5738798 (not c!1012831)) b!5738799))

(assert (= (and d!1809053 res!2423784) b!5738801))

(assert (= (and b!5738801 c!1012829) b!5738796))

(assert (= (and b!5738801 (not c!1012829)) b!5738797))

(assert (= (and b!5738797 c!1012830) b!5738802))

(assert (= (and b!5738797 (not c!1012830)) b!5738804))

(assert (=> b!5738803 m!6690216))

(declare-fun m!6691030 () Bool)

(assert (=> b!5738801 m!6691030))

(declare-fun m!6691032 () Bool)

(assert (=> b!5738805 m!6691032))

(declare-fun m!6691034 () Bool)

(assert (=> b!5738797 m!6691034))

(assert (=> b!5738797 m!6691034))

(declare-fun m!6691036 () Bool)

(assert (=> b!5738797 m!6691036))

(declare-fun m!6691038 () Bool)

(assert (=> d!1809053 m!6691038))

(declare-fun m!6691040 () Bool)

(assert (=> d!1809053 m!6691040))

(declare-fun m!6691042 () Bool)

(assert (=> b!5738804 m!6691042))

(declare-fun m!6691044 () Bool)

(assert (=> b!5738796 m!6691044))

(declare-fun m!6691046 () Bool)

(assert (=> b!5738802 m!6691046))

(assert (=> b!5738042 d!1809053))

(declare-fun d!1809065 () Bool)

(declare-fun c!1012832 () Bool)

(assert (=> d!1809065 (= c!1012832 (isEmpty!35300 (t!376868 s!2326)))))

(declare-fun e!3527767 () Bool)

(assert (=> d!1809065 (= (matchZipper!1885 lt!2284476 (t!376868 s!2326)) e!3527767)))

(declare-fun b!5738806 () Bool)

(assert (=> b!5738806 (= e!3527767 (nullableZipper!1685 lt!2284476))))

(declare-fun b!5738807 () Bool)

(assert (=> b!5738807 (= e!3527767 (matchZipper!1885 (derivationStepZipper!1830 lt!2284476 (head!12149 (t!376868 s!2326))) (tail!11244 (t!376868 s!2326))))))

(assert (= (and d!1809065 c!1012832) b!5738806))

(assert (= (and d!1809065 (not c!1012832)) b!5738807))

(assert (=> d!1809065 m!6690490))

(declare-fun m!6691048 () Bool)

(assert (=> b!5738806 m!6691048))

(assert (=> b!5738807 m!6690494))

(assert (=> b!5738807 m!6690494))

(declare-fun m!6691050 () Bool)

(assert (=> b!5738807 m!6691050))

(assert (=> b!5738807 m!6690498))

(assert (=> b!5738807 m!6691050))

(assert (=> b!5738807 m!6690498))

(declare-fun m!6691052 () Bool)

(assert (=> b!5738807 m!6691052))

(assert (=> b!5738003 d!1809065))

(declare-fun bs!1341394 () Bool)

(declare-fun d!1809067 () Bool)

(assert (= bs!1341394 (and d!1809067 b!5738037)))

(declare-fun lambda!311188 () Int)

(assert (=> bs!1341394 (= lambda!311188 lambda!311100)))

(declare-fun bs!1341395 () Bool)

(assert (= bs!1341395 (and d!1809067 d!1809005)))

(assert (=> bs!1341395 (= lambda!311188 lambda!311171)))

(declare-fun bs!1341396 () Bool)

(assert (= bs!1341396 (and d!1809067 d!1809053)))

(assert (=> bs!1341396 (= lambda!311188 lambda!311183)))

(declare-fun b!5738831 () Bool)

(declare-fun e!3527786 () Regex!15747)

(assert (=> b!5738831 (= e!3527786 (h!69865 (unfocusZipperList!1175 zl!343)))))

(declare-fun b!5738832 () Bool)

(declare-fun e!3527788 () Bool)

(declare-fun e!3527784 () Bool)

(assert (=> b!5738832 (= e!3527788 e!3527784)))

(declare-fun c!1012842 () Bool)

(assert (=> b!5738832 (= c!1012842 (isEmpty!35298 (tail!11246 (unfocusZipperList!1175 zl!343))))))

(declare-fun e!3527785 () Bool)

(assert (=> d!1809067 e!3527785))

(declare-fun res!2423793 () Bool)

(assert (=> d!1809067 (=> (not res!2423793) (not e!3527785))))

(declare-fun lt!2284709 () Regex!15747)

(assert (=> d!1809067 (= res!2423793 (validRegex!7483 lt!2284709))))

(assert (=> d!1809067 (= lt!2284709 e!3527786)))

(declare-fun c!1012844 () Bool)

(declare-fun e!3527787 () Bool)

(assert (=> d!1809067 (= c!1012844 e!3527787)))

(declare-fun res!2423794 () Bool)

(assert (=> d!1809067 (=> (not res!2423794) (not e!3527787))))

(assert (=> d!1809067 (= res!2423794 ((_ is Cons!63417) (unfocusZipperList!1175 zl!343)))))

(assert (=> d!1809067 (forall!14870 (unfocusZipperList!1175 zl!343) lambda!311188)))

(assert (=> d!1809067 (= (generalisedUnion!1610 (unfocusZipperList!1175 zl!343)) lt!2284709)))

(declare-fun b!5738833 () Bool)

(assert (=> b!5738833 (= e!3527785 e!3527788)))

(declare-fun c!1012841 () Bool)

(assert (=> b!5738833 (= c!1012841 (isEmpty!35298 (unfocusZipperList!1175 zl!343)))))

(declare-fun b!5738834 () Bool)

(declare-fun e!3527783 () Regex!15747)

(assert (=> b!5738834 (= e!3527786 e!3527783)))

(declare-fun c!1012843 () Bool)

(assert (=> b!5738834 (= c!1012843 ((_ is Cons!63417) (unfocusZipperList!1175 zl!343)))))

(declare-fun b!5738835 () Bool)

(assert (=> b!5738835 (= e!3527787 (isEmpty!35298 (t!376869 (unfocusZipperList!1175 zl!343))))))

(declare-fun b!5738836 () Bool)

(declare-fun isUnion!683 (Regex!15747) Bool)

(assert (=> b!5738836 (= e!3527784 (isUnion!683 lt!2284709))))

(declare-fun b!5738837 () Bool)

(assert (=> b!5738837 (= e!3527783 (Union!15747 (h!69865 (unfocusZipperList!1175 zl!343)) (generalisedUnion!1610 (t!376869 (unfocusZipperList!1175 zl!343)))))))

(declare-fun b!5738838 () Bool)

(assert (=> b!5738838 (= e!3527783 EmptyLang!15747)))

(declare-fun b!5738839 () Bool)

(assert (=> b!5738839 (= e!3527784 (= lt!2284709 (head!12151 (unfocusZipperList!1175 zl!343))))))

(declare-fun b!5738840 () Bool)

(declare-fun isEmptyLang!1253 (Regex!15747) Bool)

(assert (=> b!5738840 (= e!3527788 (isEmptyLang!1253 lt!2284709))))

(assert (= (and d!1809067 res!2423794) b!5738835))

(assert (= (and d!1809067 c!1012844) b!5738831))

(assert (= (and d!1809067 (not c!1012844)) b!5738834))

(assert (= (and b!5738834 c!1012843) b!5738837))

(assert (= (and b!5738834 (not c!1012843)) b!5738838))

(assert (= (and d!1809067 res!2423793) b!5738833))

(assert (= (and b!5738833 c!1012841) b!5738840))

(assert (= (and b!5738833 (not c!1012841)) b!5738832))

(assert (= (and b!5738832 c!1012842) b!5738839))

(assert (= (and b!5738832 (not c!1012842)) b!5738836))

(declare-fun m!6691074 () Bool)

(assert (=> b!5738840 m!6691074))

(declare-fun m!6691076 () Bool)

(assert (=> b!5738835 m!6691076))

(assert (=> b!5738839 m!6690164))

(declare-fun m!6691078 () Bool)

(assert (=> b!5738839 m!6691078))

(assert (=> b!5738833 m!6690164))

(declare-fun m!6691082 () Bool)

(assert (=> b!5738833 m!6691082))

(declare-fun m!6691084 () Bool)

(assert (=> b!5738837 m!6691084))

(declare-fun m!6691088 () Bool)

(assert (=> b!5738836 m!6691088))

(declare-fun m!6691090 () Bool)

(assert (=> d!1809067 m!6691090))

(assert (=> d!1809067 m!6690164))

(declare-fun m!6691094 () Bool)

(assert (=> d!1809067 m!6691094))

(assert (=> b!5738832 m!6690164))

(declare-fun m!6691096 () Bool)

(assert (=> b!5738832 m!6691096))

(assert (=> b!5738832 m!6691096))

(declare-fun m!6691098 () Bool)

(assert (=> b!5738832 m!6691098))

(assert (=> b!5738023 d!1809067))

(declare-fun bs!1341404 () Bool)

(declare-fun d!1809081 () Bool)

(assert (= bs!1341404 (and d!1809081 b!5738037)))

(declare-fun lambda!311191 () Int)

(assert (=> bs!1341404 (= lambda!311191 lambda!311100)))

(declare-fun bs!1341405 () Bool)

(assert (= bs!1341405 (and d!1809081 d!1809005)))

(assert (=> bs!1341405 (= lambda!311191 lambda!311171)))

(declare-fun bs!1341406 () Bool)

(assert (= bs!1341406 (and d!1809081 d!1809053)))

(assert (=> bs!1341406 (= lambda!311191 lambda!311183)))

(declare-fun bs!1341407 () Bool)

(assert (= bs!1341407 (and d!1809081 d!1809067)))

(assert (=> bs!1341407 (= lambda!311191 lambda!311188)))

(declare-fun lt!2284716 () List!63541)

(assert (=> d!1809081 (forall!14870 lt!2284716 lambda!311191)))

(declare-fun e!3527798 () List!63541)

(assert (=> d!1809081 (= lt!2284716 e!3527798)))

(declare-fun c!1012852 () Bool)

(assert (=> d!1809081 (= c!1012852 ((_ is Cons!63418) zl!343))))

(assert (=> d!1809081 (= (unfocusZipperList!1175 zl!343) lt!2284716)))

(declare-fun b!5738857 () Bool)

(assert (=> b!5738857 (= e!3527798 (Cons!63417 (generalisedConcat!1362 (exprs!5631 (h!69866 zl!343))) (unfocusZipperList!1175 (t!376870 zl!343))))))

(declare-fun b!5738858 () Bool)

(assert (=> b!5738858 (= e!3527798 Nil!63417)))

(assert (= (and d!1809081 c!1012852) b!5738857))

(assert (= (and d!1809081 (not c!1012852)) b!5738858))

(declare-fun m!6691130 () Bool)

(assert (=> d!1809081 m!6691130))

(assert (=> b!5738857 m!6690236))

(declare-fun m!6691132 () Bool)

(assert (=> b!5738857 m!6691132))

(assert (=> b!5738023 d!1809081))

(declare-fun d!1809097 () Bool)

(declare-fun lt!2284717 () Regex!15747)

(assert (=> d!1809097 (validRegex!7483 lt!2284717)))

(assert (=> d!1809097 (= lt!2284717 (generalisedUnion!1610 (unfocusZipperList!1175 (Cons!63418 lt!2284509 Nil!63418))))))

(assert (=> d!1809097 (= (unfocusZipper!1489 (Cons!63418 lt!2284509 Nil!63418)) lt!2284717)))

(declare-fun bs!1341408 () Bool)

(assert (= bs!1341408 d!1809097))

(declare-fun m!6691134 () Bool)

(assert (=> bs!1341408 m!6691134))

(declare-fun m!6691136 () Bool)

(assert (=> bs!1341408 m!6691136))

(assert (=> bs!1341408 m!6691136))

(declare-fun m!6691138 () Bool)

(assert (=> bs!1341408 m!6691138))

(assert (=> b!5738032 d!1809097))

(declare-fun d!1809099 () Bool)

(assert (=> d!1809099 (= (flatMap!1360 lt!2284530 lambda!311098) (choose!43515 lt!2284530 lambda!311098))))

(declare-fun bs!1341409 () Bool)

(assert (= bs!1341409 d!1809099))

(declare-fun m!6691140 () Bool)

(assert (=> bs!1341409 m!6691140))

(assert (=> b!5738011 d!1809099))

(declare-fun d!1809101 () Bool)

(declare-fun lt!2284718 () Regex!15747)

(assert (=> d!1809101 (validRegex!7483 lt!2284718)))

(assert (=> d!1809101 (= lt!2284718 (generalisedUnion!1610 (unfocusZipperList!1175 lt!2284472)))))

(assert (=> d!1809101 (= (unfocusZipper!1489 lt!2284472) lt!2284718)))

(declare-fun bs!1341410 () Bool)

(assert (= bs!1341410 d!1809101))

(declare-fun m!6691142 () Bool)

(assert (=> bs!1341410 m!6691142))

(declare-fun m!6691144 () Bool)

(assert (=> bs!1341410 m!6691144))

(assert (=> bs!1341410 m!6691144))

(declare-fun m!6691146 () Bool)

(assert (=> bs!1341410 m!6691146))

(assert (=> b!5738011 d!1809101))

(declare-fun d!1809103 () Bool)

(assert (=> d!1809103 (= (flatMap!1360 lt!2284530 lambda!311098) (dynLambda!24818 lambda!311098 lt!2284522))))

(declare-fun lt!2284719 () Unit!156520)

(assert (=> d!1809103 (= lt!2284719 (choose!43516 lt!2284530 lt!2284522 lambda!311098))))

(assert (=> d!1809103 (= lt!2284530 (store ((as const (Array Context!10262 Bool)) false) lt!2284522 true))))

(assert (=> d!1809103 (= (lemmaFlatMapOnSingletonSet!892 lt!2284530 lt!2284522 lambda!311098) lt!2284719)))

(declare-fun b_lambda!216699 () Bool)

(assert (=> (not b_lambda!216699) (not d!1809103)))

(declare-fun bs!1341411 () Bool)

(assert (= bs!1341411 d!1809103))

(assert (=> bs!1341411 m!6690134))

(declare-fun m!6691148 () Bool)

(assert (=> bs!1341411 m!6691148))

(declare-fun m!6691150 () Bool)

(assert (=> bs!1341411 m!6691150))

(assert (=> bs!1341411 m!6690122))

(assert (=> b!5738011 d!1809103))

(declare-fun b!5738859 () Bool)

(declare-fun e!3527799 () (InoxSet Context!10262))

(assert (=> b!5738859 (= e!3527799 ((as const (Array Context!10262 Bool)) false))))

(declare-fun call!438702 () (InoxSet Context!10262))

(declare-fun b!5738860 () Bool)

(declare-fun e!3527800 () (InoxSet Context!10262))

(assert (=> b!5738860 (= e!3527800 ((_ map or) call!438702 (derivationStepZipperUp!1015 (Context!10263 (t!376869 (exprs!5631 lt!2284522))) (h!69864 s!2326))))))

(declare-fun b!5738861 () Bool)

(declare-fun e!3527801 () Bool)

(assert (=> b!5738861 (= e!3527801 (nullable!5779 (h!69865 (exprs!5631 lt!2284522))))))

(declare-fun d!1809105 () Bool)

(declare-fun c!1012853 () Bool)

(assert (=> d!1809105 (= c!1012853 e!3527801)))

(declare-fun res!2423797 () Bool)

(assert (=> d!1809105 (=> (not res!2423797) (not e!3527801))))

(assert (=> d!1809105 (= res!2423797 ((_ is Cons!63417) (exprs!5631 lt!2284522)))))

(assert (=> d!1809105 (= (derivationStepZipperUp!1015 lt!2284522 (h!69864 s!2326)) e!3527800)))

(declare-fun b!5738862 () Bool)

(assert (=> b!5738862 (= e!3527799 call!438702)))

(declare-fun b!5738863 () Bool)

(assert (=> b!5738863 (= e!3527800 e!3527799)))

(declare-fun c!1012854 () Bool)

(assert (=> b!5738863 (= c!1012854 ((_ is Cons!63417) (exprs!5631 lt!2284522)))))

(declare-fun bm!438697 () Bool)

(assert (=> bm!438697 (= call!438702 (derivationStepZipperDown!1089 (h!69865 (exprs!5631 lt!2284522)) (Context!10263 (t!376869 (exprs!5631 lt!2284522))) (h!69864 s!2326)))))

(assert (= (and d!1809105 res!2423797) b!5738861))

(assert (= (and d!1809105 c!1012853) b!5738860))

(assert (= (and d!1809105 (not c!1012853)) b!5738863))

(assert (= (and b!5738863 c!1012854) b!5738862))

(assert (= (and b!5738863 (not c!1012854)) b!5738859))

(assert (= (or b!5738860 b!5738862) bm!438697))

(declare-fun m!6691152 () Bool)

(assert (=> b!5738860 m!6691152))

(declare-fun m!6691154 () Bool)

(assert (=> b!5738861 m!6691154))

(declare-fun m!6691156 () Bool)

(assert (=> bm!438697 m!6691156))

(assert (=> b!5738011 d!1809105))

(declare-fun d!1809107 () Bool)

(assert (=> d!1809107 (= (flatMap!1360 lt!2284485 lambda!311098) (choose!43515 lt!2284485 lambda!311098))))

(declare-fun bs!1341412 () Bool)

(assert (= bs!1341412 d!1809107))

(declare-fun m!6691158 () Bool)

(assert (=> bs!1341412 m!6691158))

(assert (=> b!5738011 d!1809107))

(declare-fun d!1809109 () Bool)

(assert (=> d!1809109 (= (flatMap!1360 lt!2284485 lambda!311098) (dynLambda!24818 lambda!311098 lt!2284528))))

(declare-fun lt!2284720 () Unit!156520)

(assert (=> d!1809109 (= lt!2284720 (choose!43516 lt!2284485 lt!2284528 lambda!311098))))

(assert (=> d!1809109 (= lt!2284485 (store ((as const (Array Context!10262 Bool)) false) lt!2284528 true))))

(assert (=> d!1809109 (= (lemmaFlatMapOnSingletonSet!892 lt!2284485 lt!2284528 lambda!311098) lt!2284720)))

(declare-fun b_lambda!216701 () Bool)

(assert (=> (not b_lambda!216701) (not d!1809109)))

(declare-fun bs!1341413 () Bool)

(assert (= bs!1341413 d!1809109))

(assert (=> bs!1341413 m!6690130))

(declare-fun m!6691160 () Bool)

(assert (=> bs!1341413 m!6691160))

(declare-fun m!6691162 () Bool)

(assert (=> bs!1341413 m!6691162))

(assert (=> bs!1341413 m!6690138))

(assert (=> b!5738011 d!1809109))

(declare-fun b!5738864 () Bool)

(declare-fun e!3527802 () (InoxSet Context!10262))

(assert (=> b!5738864 (= e!3527802 ((as const (Array Context!10262 Bool)) false))))

(declare-fun b!5738865 () Bool)

(declare-fun e!3527803 () (InoxSet Context!10262))

(declare-fun call!438703 () (InoxSet Context!10262))

(assert (=> b!5738865 (= e!3527803 ((_ map or) call!438703 (derivationStepZipperUp!1015 (Context!10263 (t!376869 (exprs!5631 lt!2284528))) (h!69864 s!2326))))))

(declare-fun b!5738866 () Bool)

(declare-fun e!3527804 () Bool)

(assert (=> b!5738866 (= e!3527804 (nullable!5779 (h!69865 (exprs!5631 lt!2284528))))))

(declare-fun d!1809111 () Bool)

(declare-fun c!1012855 () Bool)

(assert (=> d!1809111 (= c!1012855 e!3527804)))

(declare-fun res!2423798 () Bool)

(assert (=> d!1809111 (=> (not res!2423798) (not e!3527804))))

(assert (=> d!1809111 (= res!2423798 ((_ is Cons!63417) (exprs!5631 lt!2284528)))))

(assert (=> d!1809111 (= (derivationStepZipperUp!1015 lt!2284528 (h!69864 s!2326)) e!3527803)))

(declare-fun b!5738867 () Bool)

(assert (=> b!5738867 (= e!3527802 call!438703)))

(declare-fun b!5738868 () Bool)

(assert (=> b!5738868 (= e!3527803 e!3527802)))

(declare-fun c!1012856 () Bool)

(assert (=> b!5738868 (= c!1012856 ((_ is Cons!63417) (exprs!5631 lt!2284528)))))

(declare-fun bm!438698 () Bool)

(assert (=> bm!438698 (= call!438703 (derivationStepZipperDown!1089 (h!69865 (exprs!5631 lt!2284528)) (Context!10263 (t!376869 (exprs!5631 lt!2284528))) (h!69864 s!2326)))))

(assert (= (and d!1809111 res!2423798) b!5738866))

(assert (= (and d!1809111 c!1012855) b!5738865))

(assert (= (and d!1809111 (not c!1012855)) b!5738868))

(assert (= (and b!5738868 c!1012856) b!5738867))

(assert (= (and b!5738868 (not c!1012856)) b!5738864))

(assert (= (or b!5738865 b!5738867) bm!438698))

(declare-fun m!6691164 () Bool)

(assert (=> b!5738865 m!6691164))

(declare-fun m!6691166 () Bool)

(assert (=> b!5738866 m!6691166))

(declare-fun m!6691168 () Bool)

(assert (=> bm!438698 m!6691168))

(assert (=> b!5738011 d!1809111))

(assert (=> b!5738031 d!1809065))

(declare-fun b!5738879 () Bool)

(declare-fun e!3527817 () Bool)

(declare-fun e!3527811 () Bool)

(assert (=> b!5738879 (= e!3527817 e!3527811)))

(declare-fun res!2423803 () Bool)

(assert (=> b!5738879 (=> (not res!2423803) (not e!3527811))))

(declare-fun lt!2284723 () Bool)

(assert (=> b!5738879 (= res!2423803 (not lt!2284723))))

(declare-fun b!5738880 () Bool)

(declare-fun e!3527816 () Bool)

(assert (=> b!5738880 (= e!3527816 (not (= (head!12149 lt!2284495) (c!1012627 lt!2284525))))))

(declare-fun b!5738881 () Bool)

(declare-fun res!2423806 () Bool)

(assert (=> b!5738881 (=> res!2423806 e!3527817)))

(declare-fun e!3527814 () Bool)

(assert (=> b!5738881 (= res!2423806 e!3527814)))

(declare-fun res!2423807 () Bool)

(assert (=> b!5738881 (=> (not res!2423807) (not e!3527814))))

(assert (=> b!5738881 (= res!2423807 lt!2284723)))

(declare-fun d!1809113 () Bool)

(declare-fun e!3527813 () Bool)

(assert (=> d!1809113 e!3527813))

(declare-fun c!1012862 () Bool)

(assert (=> d!1809113 (= c!1012862 ((_ is EmptyExpr!15747) lt!2284525))))

(declare-fun e!3527812 () Bool)

(assert (=> d!1809113 (= lt!2284723 e!3527812)))

(declare-fun c!1012861 () Bool)

(assert (=> d!1809113 (= c!1012861 (isEmpty!35300 lt!2284495))))

(assert (=> d!1809113 (validRegex!7483 lt!2284525)))

(assert (=> d!1809113 (= (matchR!7932 lt!2284525 lt!2284495) lt!2284723)))

(declare-fun b!5738882 () Bool)

(assert (=> b!5738882 (= e!3527812 (matchR!7932 (derivativeStep!4538 lt!2284525 (head!12149 lt!2284495)) (tail!11244 lt!2284495)))))

(declare-fun b!5738883 () Bool)

(declare-fun res!2423804 () Bool)

(assert (=> b!5738883 (=> res!2423804 e!3527816)))

(assert (=> b!5738883 (= res!2423804 (not (isEmpty!35300 (tail!11244 lt!2284495))))))

(declare-fun b!5738884 () Bool)

(declare-fun e!3527815 () Bool)

(assert (=> b!5738884 (= e!3527813 e!3527815)))

(declare-fun c!1012863 () Bool)

(assert (=> b!5738884 (= c!1012863 ((_ is EmptyLang!15747) lt!2284525))))

(declare-fun b!5738885 () Bool)

(declare-fun res!2423802 () Bool)

(assert (=> b!5738885 (=> (not res!2423802) (not e!3527814))))

(assert (=> b!5738885 (= res!2423802 (isEmpty!35300 (tail!11244 lt!2284495)))))

(declare-fun b!5738886 () Bool)

(assert (=> b!5738886 (= e!3527811 e!3527816)))

(declare-fun res!2423801 () Bool)

(assert (=> b!5738886 (=> res!2423801 e!3527816)))

(declare-fun call!438704 () Bool)

(assert (=> b!5738886 (= res!2423801 call!438704)))

(declare-fun b!5738887 () Bool)

(assert (=> b!5738887 (= e!3527813 (= lt!2284723 call!438704))))

(declare-fun b!5738888 () Bool)

(declare-fun res!2423808 () Bool)

(assert (=> b!5738888 (=> (not res!2423808) (not e!3527814))))

(assert (=> b!5738888 (= res!2423808 (not call!438704))))

(declare-fun b!5738889 () Bool)

(assert (=> b!5738889 (= e!3527814 (= (head!12149 lt!2284495) (c!1012627 lt!2284525)))))

(declare-fun b!5738890 () Bool)

(assert (=> b!5738890 (= e!3527815 (not lt!2284723))))

(declare-fun bm!438699 () Bool)

(assert (=> bm!438699 (= call!438704 (isEmpty!35300 lt!2284495))))

(declare-fun b!5738891 () Bool)

(assert (=> b!5738891 (= e!3527812 (nullable!5779 lt!2284525))))

(declare-fun b!5738892 () Bool)

(declare-fun res!2423805 () Bool)

(assert (=> b!5738892 (=> res!2423805 e!3527817)))

(assert (=> b!5738892 (= res!2423805 (not ((_ is ElementMatch!15747) lt!2284525)))))

(assert (=> b!5738892 (= e!3527815 e!3527817)))

(assert (= (and d!1809113 c!1012861) b!5738891))

(assert (= (and d!1809113 (not c!1012861)) b!5738882))

(assert (= (and d!1809113 c!1012862) b!5738887))

(assert (= (and d!1809113 (not c!1012862)) b!5738884))

(assert (= (and b!5738884 c!1012863) b!5738890))

(assert (= (and b!5738884 (not c!1012863)) b!5738892))

(assert (= (and b!5738892 (not res!2423805)) b!5738881))

(assert (= (and b!5738881 res!2423807) b!5738888))

(assert (= (and b!5738888 res!2423808) b!5738885))

(assert (= (and b!5738885 res!2423802) b!5738889))

(assert (= (and b!5738881 (not res!2423806)) b!5738879))

(assert (= (and b!5738879 res!2423803) b!5738886))

(assert (= (and b!5738886 (not res!2423801)) b!5738883))

(assert (= (and b!5738883 (not res!2423804)) b!5738880))

(assert (= (or b!5738887 b!5738886 b!5738888) bm!438699))

(declare-fun m!6691170 () Bool)

(assert (=> b!5738882 m!6691170))

(assert (=> b!5738882 m!6691170))

(declare-fun m!6691172 () Bool)

(assert (=> b!5738882 m!6691172))

(declare-fun m!6691174 () Bool)

(assert (=> b!5738882 m!6691174))

(assert (=> b!5738882 m!6691172))

(assert (=> b!5738882 m!6691174))

(declare-fun m!6691176 () Bool)

(assert (=> b!5738882 m!6691176))

(assert (=> b!5738883 m!6691174))

(assert (=> b!5738883 m!6691174))

(declare-fun m!6691178 () Bool)

(assert (=> b!5738883 m!6691178))

(assert (=> b!5738885 m!6691174))

(assert (=> b!5738885 m!6691174))

(assert (=> b!5738885 m!6691178))

(assert (=> b!5738880 m!6691170))

(assert (=> b!5738889 m!6691170))

(declare-fun m!6691180 () Bool)

(assert (=> d!1809113 m!6691180))

(declare-fun m!6691182 () Bool)

(assert (=> d!1809113 m!6691182))

(assert (=> bm!438699 m!6691180))

(declare-fun m!6691184 () Bool)

(assert (=> b!5738891 m!6691184))

(assert (=> b!5738007 d!1809113))

(declare-fun d!1809115 () Bool)

(assert (=> d!1809115 (matchR!7932 (Concat!24592 lt!2284493 (regTwo!32006 r!7292)) (++!13967 lt!2284531 (_2!36147 lt!2284515)))))

(declare-fun lt!2284727 () Unit!156520)

(declare-fun choose!43536 (Regex!15747 Regex!15747 List!63540 List!63540) Unit!156520)

(assert (=> d!1809115 (= lt!2284727 (choose!43536 lt!2284493 (regTwo!32006 r!7292) lt!2284531 (_2!36147 lt!2284515)))))

(declare-fun e!3527832 () Bool)

(assert (=> d!1809115 e!3527832))

(declare-fun res!2423815 () Bool)

(assert (=> d!1809115 (=> (not res!2423815) (not e!3527832))))

(assert (=> d!1809115 (= res!2423815 (validRegex!7483 lt!2284493))))

(assert (=> d!1809115 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!284 lt!2284493 (regTwo!32006 r!7292) lt!2284531 (_2!36147 lt!2284515)) lt!2284727)))

(declare-fun b!5738915 () Bool)

(assert (=> b!5738915 (= e!3527832 (validRegex!7483 (regTwo!32006 r!7292)))))

(assert (= (and d!1809115 res!2423815) b!5738915))

(assert (=> d!1809115 m!6690170))

(assert (=> d!1809115 m!6690170))

(declare-fun m!6691206 () Bool)

(assert (=> d!1809115 m!6691206))

(declare-fun m!6691208 () Bool)

(assert (=> d!1809115 m!6691208))

(assert (=> d!1809115 m!6690980))

(declare-fun m!6691210 () Bool)

(assert (=> b!5738915 m!6691210))

(assert (=> b!5738007 d!1809115))

(declare-fun b!5738916 () Bool)

(declare-fun e!3527839 () Bool)

(declare-fun e!3527833 () Bool)

(assert (=> b!5738916 (= e!3527839 e!3527833)))

(declare-fun res!2423818 () Bool)

(assert (=> b!5738916 (=> (not res!2423818) (not e!3527833))))

(declare-fun lt!2284728 () Bool)

(assert (=> b!5738916 (= res!2423818 (not lt!2284728))))

(declare-fun b!5738917 () Bool)

(declare-fun e!3527838 () Bool)

(assert (=> b!5738917 (= e!3527838 (not (= (head!12149 (_2!36147 lt!2284515)) (c!1012627 (regTwo!32006 r!7292)))))))

(declare-fun b!5738918 () Bool)

(declare-fun res!2423821 () Bool)

(assert (=> b!5738918 (=> res!2423821 e!3527839)))

(declare-fun e!3527836 () Bool)

(assert (=> b!5738918 (= res!2423821 e!3527836)))

(declare-fun res!2423822 () Bool)

(assert (=> b!5738918 (=> (not res!2423822) (not e!3527836))))

(assert (=> b!5738918 (= res!2423822 lt!2284728)))

(declare-fun d!1809119 () Bool)

(declare-fun e!3527835 () Bool)

(assert (=> d!1809119 e!3527835))

(declare-fun c!1012873 () Bool)

(assert (=> d!1809119 (= c!1012873 ((_ is EmptyExpr!15747) (regTwo!32006 r!7292)))))

(declare-fun e!3527834 () Bool)

(assert (=> d!1809119 (= lt!2284728 e!3527834)))

(declare-fun c!1012872 () Bool)

(assert (=> d!1809119 (= c!1012872 (isEmpty!35300 (_2!36147 lt!2284515)))))

(assert (=> d!1809119 (validRegex!7483 (regTwo!32006 r!7292))))

(assert (=> d!1809119 (= (matchR!7932 (regTwo!32006 r!7292) (_2!36147 lt!2284515)) lt!2284728)))

(declare-fun b!5738919 () Bool)

(assert (=> b!5738919 (= e!3527834 (matchR!7932 (derivativeStep!4538 (regTwo!32006 r!7292) (head!12149 (_2!36147 lt!2284515))) (tail!11244 (_2!36147 lt!2284515))))))

(declare-fun b!5738920 () Bool)

(declare-fun res!2423819 () Bool)

(assert (=> b!5738920 (=> res!2423819 e!3527838)))

(assert (=> b!5738920 (= res!2423819 (not (isEmpty!35300 (tail!11244 (_2!36147 lt!2284515)))))))

(declare-fun b!5738921 () Bool)

(declare-fun e!3527837 () Bool)

(assert (=> b!5738921 (= e!3527835 e!3527837)))

(declare-fun c!1012874 () Bool)

(assert (=> b!5738921 (= c!1012874 ((_ is EmptyLang!15747) (regTwo!32006 r!7292)))))

(declare-fun b!5738922 () Bool)

(declare-fun res!2423817 () Bool)

(assert (=> b!5738922 (=> (not res!2423817) (not e!3527836))))

(assert (=> b!5738922 (= res!2423817 (isEmpty!35300 (tail!11244 (_2!36147 lt!2284515))))))

(declare-fun b!5738923 () Bool)

(assert (=> b!5738923 (= e!3527833 e!3527838)))

(declare-fun res!2423816 () Bool)

(assert (=> b!5738923 (=> res!2423816 e!3527838)))

(declare-fun call!438705 () Bool)

(assert (=> b!5738923 (= res!2423816 call!438705)))

(declare-fun b!5738924 () Bool)

(assert (=> b!5738924 (= e!3527835 (= lt!2284728 call!438705))))

(declare-fun b!5738925 () Bool)

(declare-fun res!2423823 () Bool)

(assert (=> b!5738925 (=> (not res!2423823) (not e!3527836))))

(assert (=> b!5738925 (= res!2423823 (not call!438705))))

(declare-fun b!5738926 () Bool)

(assert (=> b!5738926 (= e!3527836 (= (head!12149 (_2!36147 lt!2284515)) (c!1012627 (regTwo!32006 r!7292))))))

(declare-fun b!5738927 () Bool)

(assert (=> b!5738927 (= e!3527837 (not lt!2284728))))

(declare-fun bm!438700 () Bool)

(assert (=> bm!438700 (= call!438705 (isEmpty!35300 (_2!36147 lt!2284515)))))

(declare-fun b!5738928 () Bool)

(assert (=> b!5738928 (= e!3527834 (nullable!5779 (regTwo!32006 r!7292)))))

(declare-fun b!5738929 () Bool)

(declare-fun res!2423820 () Bool)

(assert (=> b!5738929 (=> res!2423820 e!3527839)))

(assert (=> b!5738929 (= res!2423820 (not ((_ is ElementMatch!15747) (regTwo!32006 r!7292))))))

(assert (=> b!5738929 (= e!3527837 e!3527839)))

(assert (= (and d!1809119 c!1012872) b!5738928))

(assert (= (and d!1809119 (not c!1012872)) b!5738919))

(assert (= (and d!1809119 c!1012873) b!5738924))

(assert (= (and d!1809119 (not c!1012873)) b!5738921))

(assert (= (and b!5738921 c!1012874) b!5738927))

(assert (= (and b!5738921 (not c!1012874)) b!5738929))

(assert (= (and b!5738929 (not res!2423820)) b!5738918))

(assert (= (and b!5738918 res!2423822) b!5738925))

(assert (= (and b!5738925 res!2423823) b!5738922))

(assert (= (and b!5738922 res!2423817) b!5738926))

(assert (= (and b!5738918 (not res!2423821)) b!5738916))

(assert (= (and b!5738916 res!2423818) b!5738923))

(assert (= (and b!5738923 (not res!2423816)) b!5738920))

(assert (= (and b!5738920 (not res!2423819)) b!5738917))

(assert (= (or b!5738924 b!5738923 b!5738925) bm!438700))

(declare-fun m!6691212 () Bool)

(assert (=> b!5738919 m!6691212))

(assert (=> b!5738919 m!6691212))

(declare-fun m!6691214 () Bool)

(assert (=> b!5738919 m!6691214))

(declare-fun m!6691216 () Bool)

(assert (=> b!5738919 m!6691216))

(assert (=> b!5738919 m!6691214))

(assert (=> b!5738919 m!6691216))

(declare-fun m!6691218 () Bool)

(assert (=> b!5738919 m!6691218))

(assert (=> b!5738920 m!6691216))

(assert (=> b!5738920 m!6691216))

(declare-fun m!6691220 () Bool)

(assert (=> b!5738920 m!6691220))

(assert (=> b!5738922 m!6691216))

(assert (=> b!5738922 m!6691216))

(assert (=> b!5738922 m!6691220))

(assert (=> b!5738917 m!6691212))

(assert (=> b!5738926 m!6691212))

(declare-fun m!6691222 () Bool)

(assert (=> d!1809119 m!6691222))

(assert (=> d!1809119 m!6691210))

(assert (=> bm!438700 m!6691222))

(declare-fun m!6691224 () Bool)

(assert (=> b!5738928 m!6691224))

(assert (=> b!5738027 d!1809119))

(declare-fun b!5738930 () Bool)

(declare-fun e!3527846 () Bool)

(declare-fun e!3527840 () Bool)

(assert (=> b!5738930 (= e!3527846 e!3527840)))

(declare-fun res!2423826 () Bool)

(assert (=> b!5738930 (=> (not res!2423826) (not e!3527840))))

(declare-fun lt!2284729 () Bool)

(assert (=> b!5738930 (= res!2423826 (not lt!2284729))))

(declare-fun b!5738931 () Bool)

(declare-fun e!3527845 () Bool)

(assert (=> b!5738931 (= e!3527845 (not (= (head!12149 lt!2284531) (c!1012627 lt!2284493))))))

(declare-fun b!5738932 () Bool)

(declare-fun res!2423829 () Bool)

(assert (=> b!5738932 (=> res!2423829 e!3527846)))

(declare-fun e!3527843 () Bool)

(assert (=> b!5738932 (= res!2423829 e!3527843)))

(declare-fun res!2423830 () Bool)

(assert (=> b!5738932 (=> (not res!2423830) (not e!3527843))))

(assert (=> b!5738932 (= res!2423830 lt!2284729)))

(declare-fun d!1809121 () Bool)

(declare-fun e!3527842 () Bool)

(assert (=> d!1809121 e!3527842))

(declare-fun c!1012876 () Bool)

(assert (=> d!1809121 (= c!1012876 ((_ is EmptyExpr!15747) lt!2284493))))

(declare-fun e!3527841 () Bool)

(assert (=> d!1809121 (= lt!2284729 e!3527841)))

(declare-fun c!1012875 () Bool)

(assert (=> d!1809121 (= c!1012875 (isEmpty!35300 lt!2284531))))

(assert (=> d!1809121 (validRegex!7483 lt!2284493)))

(assert (=> d!1809121 (= (matchR!7932 lt!2284493 lt!2284531) lt!2284729)))

(declare-fun b!5738933 () Bool)

(assert (=> b!5738933 (= e!3527841 (matchR!7932 (derivativeStep!4538 lt!2284493 (head!12149 lt!2284531)) (tail!11244 lt!2284531)))))

(declare-fun b!5738934 () Bool)

(declare-fun res!2423827 () Bool)

(assert (=> b!5738934 (=> res!2423827 e!3527845)))

(assert (=> b!5738934 (= res!2423827 (not (isEmpty!35300 (tail!11244 lt!2284531))))))

(declare-fun b!5738935 () Bool)

(declare-fun e!3527844 () Bool)

(assert (=> b!5738935 (= e!3527842 e!3527844)))

(declare-fun c!1012877 () Bool)

(assert (=> b!5738935 (= c!1012877 ((_ is EmptyLang!15747) lt!2284493))))

(declare-fun b!5738936 () Bool)

(declare-fun res!2423825 () Bool)

(assert (=> b!5738936 (=> (not res!2423825) (not e!3527843))))

(assert (=> b!5738936 (= res!2423825 (isEmpty!35300 (tail!11244 lt!2284531)))))

(declare-fun b!5738937 () Bool)

(assert (=> b!5738937 (= e!3527840 e!3527845)))

(declare-fun res!2423824 () Bool)

(assert (=> b!5738937 (=> res!2423824 e!3527845)))

(declare-fun call!438706 () Bool)

(assert (=> b!5738937 (= res!2423824 call!438706)))

(declare-fun b!5738938 () Bool)

(assert (=> b!5738938 (= e!3527842 (= lt!2284729 call!438706))))

(declare-fun b!5738939 () Bool)

(declare-fun res!2423831 () Bool)

(assert (=> b!5738939 (=> (not res!2423831) (not e!3527843))))

(assert (=> b!5738939 (= res!2423831 (not call!438706))))

(declare-fun b!5738940 () Bool)

(assert (=> b!5738940 (= e!3527843 (= (head!12149 lt!2284531) (c!1012627 lt!2284493)))))

(declare-fun b!5738941 () Bool)

(assert (=> b!5738941 (= e!3527844 (not lt!2284729))))

(declare-fun bm!438701 () Bool)

(assert (=> bm!438701 (= call!438706 (isEmpty!35300 lt!2284531))))

(declare-fun b!5738942 () Bool)

(assert (=> b!5738942 (= e!3527841 (nullable!5779 lt!2284493))))

(declare-fun b!5738943 () Bool)

(declare-fun res!2423828 () Bool)

(assert (=> b!5738943 (=> res!2423828 e!3527846)))

(assert (=> b!5738943 (= res!2423828 (not ((_ is ElementMatch!15747) lt!2284493)))))

(assert (=> b!5738943 (= e!3527844 e!3527846)))

(assert (= (and d!1809121 c!1012875) b!5738942))

(assert (= (and d!1809121 (not c!1012875)) b!5738933))

(assert (= (and d!1809121 c!1012876) b!5738938))

(assert (= (and d!1809121 (not c!1012876)) b!5738935))

(assert (= (and b!5738935 c!1012877) b!5738941))

(assert (= (and b!5738935 (not c!1012877)) b!5738943))

(assert (= (and b!5738943 (not res!2423828)) b!5738932))

(assert (= (and b!5738932 res!2423830) b!5738939))

(assert (= (and b!5738939 res!2423831) b!5738936))

(assert (= (and b!5738936 res!2423825) b!5738940))

(assert (= (and b!5738932 (not res!2423829)) b!5738930))

(assert (= (and b!5738930 res!2423826) b!5738937))

(assert (= (and b!5738937 (not res!2423824)) b!5738934))

(assert (= (and b!5738934 (not res!2423827)) b!5738931))

(assert (= (or b!5738938 b!5738937 b!5738939) bm!438701))

(declare-fun m!6691226 () Bool)

(assert (=> b!5738933 m!6691226))

(assert (=> b!5738933 m!6691226))

(declare-fun m!6691228 () Bool)

(assert (=> b!5738933 m!6691228))

(declare-fun m!6691230 () Bool)

(assert (=> b!5738933 m!6691230))

(assert (=> b!5738933 m!6691228))

(assert (=> b!5738933 m!6691230))

(declare-fun m!6691232 () Bool)

(assert (=> b!5738933 m!6691232))

(assert (=> b!5738934 m!6691230))

(assert (=> b!5738934 m!6691230))

(declare-fun m!6691234 () Bool)

(assert (=> b!5738934 m!6691234))

(assert (=> b!5738936 m!6691230))

(assert (=> b!5738936 m!6691230))

(assert (=> b!5738936 m!6691234))

(assert (=> b!5738931 m!6691226))

(assert (=> b!5738940 m!6691226))

(declare-fun m!6691236 () Bool)

(assert (=> d!1809121 m!6691236))

(assert (=> d!1809121 m!6690980))

(assert (=> bm!438701 m!6691236))

(assert (=> b!5738942 m!6690984))

(assert (=> b!5738027 d!1809121))

(declare-fun d!1809123 () Bool)

(assert (=> d!1809123 (matchR!7932 (Star!15747 (reg!16076 (regOne!32006 r!7292))) (++!13967 (_1!36147 lt!2284479) (_2!36147 lt!2284479)))))

(declare-fun lt!2284736 () Unit!156520)

(declare-fun choose!43537 (Regex!15747 List!63540 List!63540) Unit!156520)

(assert (=> d!1809123 (= lt!2284736 (choose!43537 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284479) (_2!36147 lt!2284479)))))

(assert (=> d!1809123 (validRegex!7483 (Star!15747 (reg!16076 (regOne!32006 r!7292))))))

(assert (=> d!1809123 (= (lemmaStarApp!98 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284479) (_2!36147 lt!2284479)) lt!2284736)))

(declare-fun bs!1341425 () Bool)

(assert (= bs!1341425 d!1809123))

(assert (=> bs!1341425 m!6690192))

(assert (=> bs!1341425 m!6690192))

(declare-fun m!6691254 () Bool)

(assert (=> bs!1341425 m!6691254))

(declare-fun m!6691256 () Bool)

(assert (=> bs!1341425 m!6691256))

(declare-fun m!6691258 () Bool)

(assert (=> bs!1341425 m!6691258))

(assert (=> b!5738027 d!1809123))

(declare-fun d!1809133 () Bool)

(assert (=> d!1809133 (= (flatMap!1360 z!1189 lambda!311098) (choose!43515 z!1189 lambda!311098))))

(declare-fun bs!1341426 () Bool)

(assert (= bs!1341426 d!1809133))

(declare-fun m!6691260 () Bool)

(assert (=> bs!1341426 m!6691260))

(assert (=> b!5738029 d!1809133))

(declare-fun b!5738955 () Bool)

(declare-fun e!3527853 () (InoxSet Context!10262))

(assert (=> b!5738955 (= e!3527853 ((as const (Array Context!10262 Bool)) false))))

(declare-fun b!5738956 () Bool)

(declare-fun e!3527854 () (InoxSet Context!10262))

(declare-fun call!438708 () (InoxSet Context!10262))

(assert (=> b!5738956 (= e!3527854 ((_ map or) call!438708 (derivationStepZipperUp!1015 (Context!10263 (t!376869 (exprs!5631 lt!2284518))) (h!69864 s!2326))))))

(declare-fun b!5738957 () Bool)

(declare-fun e!3527855 () Bool)

(assert (=> b!5738957 (= e!3527855 (nullable!5779 (h!69865 (exprs!5631 lt!2284518))))))

(declare-fun d!1809135 () Bool)

(declare-fun c!1012885 () Bool)

(assert (=> d!1809135 (= c!1012885 e!3527855)))

(declare-fun res!2423833 () Bool)

(assert (=> d!1809135 (=> (not res!2423833) (not e!3527855))))

(assert (=> d!1809135 (= res!2423833 ((_ is Cons!63417) (exprs!5631 lt!2284518)))))

(assert (=> d!1809135 (= (derivationStepZipperUp!1015 lt!2284518 (h!69864 s!2326)) e!3527854)))

(declare-fun b!5738958 () Bool)

(assert (=> b!5738958 (= e!3527853 call!438708)))

(declare-fun b!5738959 () Bool)

(assert (=> b!5738959 (= e!3527854 e!3527853)))

(declare-fun c!1012886 () Bool)

(assert (=> b!5738959 (= c!1012886 ((_ is Cons!63417) (exprs!5631 lt!2284518)))))

(declare-fun bm!438703 () Bool)

(assert (=> bm!438703 (= call!438708 (derivationStepZipperDown!1089 (h!69865 (exprs!5631 lt!2284518)) (Context!10263 (t!376869 (exprs!5631 lt!2284518))) (h!69864 s!2326)))))

(assert (= (and d!1809135 res!2423833) b!5738957))

(assert (= (and d!1809135 c!1012885) b!5738956))

(assert (= (and d!1809135 (not c!1012885)) b!5738959))

(assert (= (and b!5738959 c!1012886) b!5738958))

(assert (= (and b!5738959 (not c!1012886)) b!5738955))

(assert (= (or b!5738956 b!5738958) bm!438703))

(declare-fun m!6691262 () Bool)

(assert (=> b!5738956 m!6691262))

(declare-fun m!6691264 () Bool)

(assert (=> b!5738957 m!6691264))

(declare-fun m!6691266 () Bool)

(assert (=> bm!438703 m!6691266))

(assert (=> b!5738029 d!1809135))

(declare-fun d!1809137 () Bool)

(declare-fun nullableFct!1831 (Regex!15747) Bool)

(assert (=> d!1809137 (= (nullable!5779 (h!69865 (exprs!5631 (h!69866 zl!343)))) (nullableFct!1831 (h!69865 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun bs!1341428 () Bool)

(assert (= bs!1341428 d!1809137))

(declare-fun m!6691268 () Bool)

(assert (=> bs!1341428 m!6691268))

(assert (=> b!5738029 d!1809137))

(declare-fun b!5738962 () Bool)

(declare-fun e!3527856 () (InoxSet Context!10262))

(assert (=> b!5738962 (= e!3527856 ((as const (Array Context!10262 Bool)) false))))

(declare-fun e!3527857 () (InoxSet Context!10262))

(declare-fun b!5738963 () Bool)

(declare-fun call!438709 () (InoxSet Context!10262))

(assert (=> b!5738963 (= e!3527857 ((_ map or) call!438709 (derivationStepZipperUp!1015 (Context!10263 (t!376869 (exprs!5631 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343)))))))) (h!69864 s!2326))))))

(declare-fun b!5738964 () Bool)

(declare-fun e!3527858 () Bool)

(assert (=> b!5738964 (= e!3527858 (nullable!5779 (h!69865 (exprs!5631 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343)))))))))))

(declare-fun d!1809139 () Bool)

(declare-fun c!1012887 () Bool)

(assert (=> d!1809139 (= c!1012887 e!3527858)))

(declare-fun res!2423834 () Bool)

(assert (=> d!1809139 (=> (not res!2423834) (not e!3527858))))

(assert (=> d!1809139 (= res!2423834 ((_ is Cons!63417) (exprs!5631 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343))))))))))

(assert (=> d!1809139 (= (derivationStepZipperUp!1015 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343))))) (h!69864 s!2326)) e!3527857)))

(declare-fun b!5738965 () Bool)

(assert (=> b!5738965 (= e!3527856 call!438709)))

(declare-fun b!5738966 () Bool)

(assert (=> b!5738966 (= e!3527857 e!3527856)))

(declare-fun c!1012888 () Bool)

(assert (=> b!5738966 (= c!1012888 ((_ is Cons!63417) (exprs!5631 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343))))))))))

(declare-fun bm!438704 () Bool)

(assert (=> bm!438704 (= call!438709 (derivationStepZipperDown!1089 (h!69865 (exprs!5631 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343))))))) (Context!10263 (t!376869 (exprs!5631 (Context!10263 (Cons!63417 (h!69865 (exprs!5631 (h!69866 zl!343))) (t!376869 (exprs!5631 (h!69866 zl!343)))))))) (h!69864 s!2326)))))

(assert (= (and d!1809139 res!2423834) b!5738964))

(assert (= (and d!1809139 c!1012887) b!5738963))

(assert (= (and d!1809139 (not c!1012887)) b!5738966))

(assert (= (and b!5738966 c!1012888) b!5738965))

(assert (= (and b!5738966 (not c!1012888)) b!5738962))

(assert (= (or b!5738963 b!5738965) bm!438704))

(declare-fun m!6691278 () Bool)

(assert (=> b!5738963 m!6691278))

(declare-fun m!6691280 () Bool)

(assert (=> b!5738964 m!6691280))

(declare-fun m!6691282 () Bool)

(assert (=> bm!438704 m!6691282))

(assert (=> b!5738029 d!1809139))

(declare-fun d!1809145 () Bool)

(assert (=> d!1809145 (= (flatMap!1360 z!1189 lambda!311098) (dynLambda!24818 lambda!311098 (h!69866 zl!343)))))

(declare-fun lt!2284737 () Unit!156520)

(assert (=> d!1809145 (= lt!2284737 (choose!43516 z!1189 (h!69866 zl!343) lambda!311098))))

(assert (=> d!1809145 (= z!1189 (store ((as const (Array Context!10262 Bool)) false) (h!69866 zl!343) true))))

(assert (=> d!1809145 (= (lemmaFlatMapOnSingletonSet!892 z!1189 (h!69866 zl!343) lambda!311098) lt!2284737)))

(declare-fun b_lambda!216705 () Bool)

(assert (=> (not b_lambda!216705) (not d!1809145)))

(declare-fun bs!1341430 () Bool)

(assert (= bs!1341430 d!1809145))

(assert (=> bs!1341430 m!6690046))

(declare-fun m!6691290 () Bool)

(assert (=> bs!1341430 m!6691290))

(declare-fun m!6691292 () Bool)

(assert (=> bs!1341430 m!6691292))

(declare-fun m!6691294 () Bool)

(assert (=> bs!1341430 m!6691294))

(assert (=> b!5738029 d!1809145))

(declare-fun b!5738985 () Bool)

(declare-fun e!3527873 () (InoxSet Context!10262))

(declare-fun e!3527870 () (InoxSet Context!10262))

(assert (=> b!5738985 (= e!3527873 e!3527870)))

(declare-fun c!1012895 () Bool)

(assert (=> b!5738985 (= c!1012895 ((_ is Concat!24592) (h!69865 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun b!5738986 () Bool)

(declare-fun e!3527868 () (InoxSet Context!10262))

(declare-fun e!3527871 () (InoxSet Context!10262))

(assert (=> b!5738986 (= e!3527868 e!3527871)))

(declare-fun c!1012897 () Bool)

(assert (=> b!5738986 (= c!1012897 ((_ is Union!15747) (h!69865 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun b!5738987 () Bool)

(declare-fun call!438711 () (InoxSet Context!10262))

(assert (=> b!5738987 (= e!3527870 call!438711)))

(declare-fun bm!438706 () Bool)

(declare-fun call!438716 () (InoxSet Context!10262))

(assert (=> bm!438706 (= call!438711 call!438716)))

(declare-fun b!5738988 () Bool)

(declare-fun e!3527872 () (InoxSet Context!10262))

(assert (=> b!5738988 (= e!3527872 ((as const (Array Context!10262 Bool)) false))))

(declare-fun b!5738989 () Bool)

(declare-fun c!1012896 () Bool)

(assert (=> b!5738989 (= c!1012896 ((_ is Star!15747) (h!69865 (exprs!5631 (h!69866 zl!343)))))))

(assert (=> b!5738989 (= e!3527870 e!3527872)))

(declare-fun b!5738990 () Bool)

(declare-fun call!438712 () (InoxSet Context!10262))

(declare-fun call!438713 () (InoxSet Context!10262))

(assert (=> b!5738990 (= e!3527871 ((_ map or) call!438712 call!438713))))

(declare-fun b!5738991 () Bool)

(assert (=> b!5738991 (= e!3527873 ((_ map or) call!438712 call!438716))))

(declare-fun bm!438707 () Bool)

(assert (=> bm!438707 (= call!438716 call!438713)))

(declare-fun c!1012898 () Bool)

(declare-fun bm!438708 () Bool)

(declare-fun call!438715 () List!63541)

(assert (=> bm!438708 (= call!438713 (derivationStepZipperDown!1089 (ite c!1012897 (regTwo!32007 (h!69865 (exprs!5631 (h!69866 zl!343)))) (ite c!1012898 (regTwo!32006 (h!69865 (exprs!5631 (h!69866 zl!343)))) (ite c!1012895 (regOne!32006 (h!69865 (exprs!5631 (h!69866 zl!343)))) (reg!16076 (h!69865 (exprs!5631 (h!69866 zl!343))))))) (ite (or c!1012897 c!1012898) lt!2284518 (Context!10263 call!438715)) (h!69864 s!2326)))))

(declare-fun b!5738992 () Bool)

(assert (=> b!5738992 (= e!3527868 (store ((as const (Array Context!10262 Bool)) false) lt!2284518 true))))

(declare-fun b!5738993 () Bool)

(declare-fun e!3527869 () Bool)

(assert (=> b!5738993 (= c!1012898 e!3527869)))

(declare-fun res!2423843 () Bool)

(assert (=> b!5738993 (=> (not res!2423843) (not e!3527869))))

(assert (=> b!5738993 (= res!2423843 ((_ is Concat!24592) (h!69865 (exprs!5631 (h!69866 zl!343)))))))

(assert (=> b!5738993 (= e!3527871 e!3527873)))

(declare-fun call!438714 () List!63541)

(declare-fun bm!438709 () Bool)

(assert (=> bm!438709 (= call!438712 (derivationStepZipperDown!1089 (ite c!1012897 (regOne!32007 (h!69865 (exprs!5631 (h!69866 zl!343)))) (regOne!32006 (h!69865 (exprs!5631 (h!69866 zl!343))))) (ite c!1012897 lt!2284518 (Context!10263 call!438714)) (h!69864 s!2326)))))

(declare-fun bm!438710 () Bool)

(assert (=> bm!438710 (= call!438715 call!438714)))

(declare-fun d!1809149 () Bool)

(declare-fun c!1012894 () Bool)

(assert (=> d!1809149 (= c!1012894 (and ((_ is ElementMatch!15747) (h!69865 (exprs!5631 (h!69866 zl!343)))) (= (c!1012627 (h!69865 (exprs!5631 (h!69866 zl!343)))) (h!69864 s!2326))))))

(assert (=> d!1809149 (= (derivationStepZipperDown!1089 (h!69865 (exprs!5631 (h!69866 zl!343))) lt!2284518 (h!69864 s!2326)) e!3527868)))

(declare-fun b!5738994 () Bool)

(assert (=> b!5738994 (= e!3527869 (nullable!5779 (regOne!32006 (h!69865 (exprs!5631 (h!69866 zl!343))))))))

(declare-fun b!5738995 () Bool)

(assert (=> b!5738995 (= e!3527872 call!438711)))

(declare-fun bm!438711 () Bool)

(assert (=> bm!438711 (= call!438714 ($colon$colon!1752 (exprs!5631 lt!2284518) (ite (or c!1012898 c!1012895) (regTwo!32006 (h!69865 (exprs!5631 (h!69866 zl!343)))) (h!69865 (exprs!5631 (h!69866 zl!343))))))))

(assert (= (and d!1809149 c!1012894) b!5738992))

(assert (= (and d!1809149 (not c!1012894)) b!5738986))

(assert (= (and b!5738986 c!1012897) b!5738990))

(assert (= (and b!5738986 (not c!1012897)) b!5738993))

(assert (= (and b!5738993 res!2423843) b!5738994))

(assert (= (and b!5738993 c!1012898) b!5738991))

(assert (= (and b!5738993 (not c!1012898)) b!5738985))

(assert (= (and b!5738985 c!1012895) b!5738987))

(assert (= (and b!5738985 (not c!1012895)) b!5738989))

(assert (= (and b!5738989 c!1012896) b!5738995))

(assert (= (and b!5738989 (not c!1012896)) b!5738988))

(assert (= (or b!5738987 b!5738995) bm!438710))

(assert (= (or b!5738987 b!5738995) bm!438706))

(assert (= (or b!5738991 bm!438710) bm!438711))

(assert (= (or b!5738991 bm!438706) bm!438707))

(assert (= (or b!5738990 bm!438707) bm!438708))

(assert (= (or b!5738990 b!5738991) bm!438709))

(declare-fun m!6691308 () Bool)

(assert (=> bm!438711 m!6691308))

(declare-fun m!6691310 () Bool)

(assert (=> b!5738992 m!6691310))

(declare-fun m!6691312 () Bool)

(assert (=> bm!438709 m!6691312))

(declare-fun m!6691314 () Bool)

(assert (=> b!5738994 m!6691314))

(declare-fun m!6691316 () Bool)

(assert (=> bm!438708 m!6691316))

(assert (=> b!5738029 d!1809149))

(declare-fun b!5739007 () Bool)

(declare-fun e!3527881 () (InoxSet Context!10262))

(assert (=> b!5739007 (= e!3527881 ((as const (Array Context!10262 Bool)) false))))

(declare-fun call!438719 () (InoxSet Context!10262))

(declare-fun e!3527882 () (InoxSet Context!10262))

(declare-fun b!5739008 () Bool)

(assert (=> b!5739008 (= e!3527882 ((_ map or) call!438719 (derivationStepZipperUp!1015 (Context!10263 (t!376869 (exprs!5631 (h!69866 zl!343)))) (h!69864 s!2326))))))

(declare-fun b!5739009 () Bool)

(declare-fun e!3527883 () Bool)

(assert (=> b!5739009 (= e!3527883 (nullable!5779 (h!69865 (exprs!5631 (h!69866 zl!343)))))))

(declare-fun d!1809153 () Bool)

(declare-fun c!1012903 () Bool)

(assert (=> d!1809153 (= c!1012903 e!3527883)))

(declare-fun res!2423847 () Bool)

(assert (=> d!1809153 (=> (not res!2423847) (not e!3527883))))

(assert (=> d!1809153 (= res!2423847 ((_ is Cons!63417) (exprs!5631 (h!69866 zl!343))))))

(assert (=> d!1809153 (= (derivationStepZipperUp!1015 (h!69866 zl!343) (h!69864 s!2326)) e!3527882)))

(declare-fun b!5739010 () Bool)

(assert (=> b!5739010 (= e!3527881 call!438719)))

(declare-fun b!5739011 () Bool)

(assert (=> b!5739011 (= e!3527882 e!3527881)))

(declare-fun c!1012904 () Bool)

(assert (=> b!5739011 (= c!1012904 ((_ is Cons!63417) (exprs!5631 (h!69866 zl!343))))))

(declare-fun bm!438714 () Bool)

(assert (=> bm!438714 (= call!438719 (derivationStepZipperDown!1089 (h!69865 (exprs!5631 (h!69866 zl!343))) (Context!10263 (t!376869 (exprs!5631 (h!69866 zl!343)))) (h!69864 s!2326)))))

(assert (= (and d!1809153 res!2423847) b!5739009))

(assert (= (and d!1809153 c!1012903) b!5739008))

(assert (= (and d!1809153 (not c!1012903)) b!5739011))

(assert (= (and b!5739011 c!1012904) b!5739010))

(assert (= (and b!5739011 (not c!1012904)) b!5739007))

(assert (= (or b!5739008 b!5739010) bm!438714))

(declare-fun m!6691318 () Bool)

(assert (=> b!5739008 m!6691318))

(assert (=> b!5739009 m!6690048))

(declare-fun m!6691320 () Bool)

(assert (=> bm!438714 m!6691320))

(assert (=> b!5738029 d!1809153))

(declare-fun b!5739012 () Bool)

(declare-fun res!2423849 () Bool)

(declare-fun e!3527887 () Bool)

(assert (=> b!5739012 (=> (not res!2423849) (not e!3527887))))

(declare-fun lt!2284740 () Option!15756)

(assert (=> b!5739012 (= res!2423849 (matchR!7932 lt!2284510 (_1!36147 (get!21876 lt!2284740))))))

(declare-fun b!5739013 () Bool)

(declare-fun e!3527884 () Option!15756)

(declare-fun e!3527886 () Option!15756)

(assert (=> b!5739013 (= e!3527884 e!3527886)))

(declare-fun c!1012905 () Bool)

(assert (=> b!5739013 (= c!1012905 ((_ is Nil!63416) s!2326))))

(declare-fun d!1809155 () Bool)

(declare-fun e!3527885 () Bool)

(assert (=> d!1809155 e!3527885))

(declare-fun res!2423851 () Bool)

(assert (=> d!1809155 (=> res!2423851 e!3527885)))

(assert (=> d!1809155 (= res!2423851 e!3527887)))

(declare-fun res!2423850 () Bool)

(assert (=> d!1809155 (=> (not res!2423850) (not e!3527887))))

(assert (=> d!1809155 (= res!2423850 (isDefined!12459 lt!2284740))))

(assert (=> d!1809155 (= lt!2284740 e!3527884)))

(declare-fun c!1012906 () Bool)

(declare-fun e!3527888 () Bool)

(assert (=> d!1809155 (= c!1012906 e!3527888)))

(declare-fun res!2423848 () Bool)

(assert (=> d!1809155 (=> (not res!2423848) (not e!3527888))))

(assert (=> d!1809155 (= res!2423848 (matchR!7932 lt!2284510 Nil!63416))))

(assert (=> d!1809155 (validRegex!7483 lt!2284510)))

(assert (=> d!1809155 (= (findConcatSeparation!2170 lt!2284510 (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326) lt!2284740)))

(declare-fun b!5739014 () Bool)

(assert (=> b!5739014 (= e!3527888 (matchR!7932 (regTwo!32006 r!7292) s!2326))))

(declare-fun b!5739015 () Bool)

(declare-fun res!2423852 () Bool)

(assert (=> b!5739015 (=> (not res!2423852) (not e!3527887))))

(assert (=> b!5739015 (= res!2423852 (matchR!7932 (regTwo!32006 r!7292) (_2!36147 (get!21876 lt!2284740))))))

(declare-fun b!5739016 () Bool)

(assert (=> b!5739016 (= e!3527887 (= (++!13967 (_1!36147 (get!21876 lt!2284740)) (_2!36147 (get!21876 lt!2284740))) s!2326))))

(declare-fun b!5739017 () Bool)

(declare-fun lt!2284741 () Unit!156520)

(declare-fun lt!2284739 () Unit!156520)

(assert (=> b!5739017 (= lt!2284741 lt!2284739)))

(assert (=> b!5739017 (= (++!13967 (++!13967 Nil!63416 (Cons!63416 (h!69864 s!2326) Nil!63416)) (t!376868 s!2326)) s!2326)))

(assert (=> b!5739017 (= lt!2284739 (lemmaMoveElementToOtherListKeepsConcatEq!2088 Nil!63416 (h!69864 s!2326) (t!376868 s!2326) s!2326))))

(assert (=> b!5739017 (= e!3527886 (findConcatSeparation!2170 lt!2284510 (regTwo!32006 r!7292) (++!13967 Nil!63416 (Cons!63416 (h!69864 s!2326) Nil!63416)) (t!376868 s!2326) s!2326))))

(declare-fun b!5739018 () Bool)

(assert (=> b!5739018 (= e!3527884 (Some!15755 (tuple2!65689 Nil!63416 s!2326)))))

(declare-fun b!5739019 () Bool)

(assert (=> b!5739019 (= e!3527885 (not (isDefined!12459 lt!2284740)))))

(declare-fun b!5739020 () Bool)

(assert (=> b!5739020 (= e!3527886 None!15755)))

(assert (= (and d!1809155 res!2423848) b!5739014))

(assert (= (and d!1809155 c!1012906) b!5739018))

(assert (= (and d!1809155 (not c!1012906)) b!5739013))

(assert (= (and b!5739013 c!1012905) b!5739020))

(assert (= (and b!5739013 (not c!1012905)) b!5739017))

(assert (= (and d!1809155 res!2423850) b!5739012))

(assert (= (and b!5739012 res!2423849) b!5739015))

(assert (= (and b!5739015 res!2423852) b!5739016))

(assert (= (and d!1809155 (not res!2423851)) b!5739019))

(declare-fun m!6691322 () Bool)

(assert (=> b!5739015 m!6691322))

(declare-fun m!6691324 () Bool)

(assert (=> b!5739015 m!6691324))

(assert (=> b!5739012 m!6691322))

(declare-fun m!6691326 () Bool)

(assert (=> b!5739012 m!6691326))

(declare-fun m!6691328 () Bool)

(assert (=> d!1809155 m!6691328))

(declare-fun m!6691330 () Bool)

(assert (=> d!1809155 m!6691330))

(assert (=> d!1809155 m!6690692))

(assert (=> b!5739016 m!6691322))

(declare-fun m!6691332 () Bool)

(assert (=> b!5739016 m!6691332))

(assert (=> b!5739017 m!6690926))

(assert (=> b!5739017 m!6690926))

(assert (=> b!5739017 m!6690928))

(assert (=> b!5739017 m!6690930))

(assert (=> b!5739017 m!6690926))

(declare-fun m!6691334 () Bool)

(assert (=> b!5739017 m!6691334))

(assert (=> b!5739019 m!6691328))

(assert (=> b!5739014 m!6690934))

(assert (=> b!5738008 d!1809155))

(declare-fun d!1809157 () Bool)

(assert (=> d!1809157 (= (Exists!2847 lambda!311102) (choose!43521 lambda!311102))))

(declare-fun bs!1341442 () Bool)

(assert (= bs!1341442 d!1809157))

(declare-fun m!6691336 () Bool)

(assert (=> bs!1341442 m!6691336))

(assert (=> b!5738008 d!1809157))

(declare-fun bs!1341444 () Bool)

(declare-fun b!5739031 () Bool)

(assert (= bs!1341444 (and b!5739031 b!5738190)))

(declare-fun lambda!311202 () Int)

(assert (=> bs!1341444 (not (= lambda!311202 lambda!311122))))

(declare-fun bs!1341445 () Bool)

(assert (= bs!1341445 (and b!5739031 b!5738039)))

(assert (=> bs!1341445 (not (= lambda!311202 lambda!311104))))

(declare-fun bs!1341447 () Bool)

(assert (= bs!1341447 (and b!5739031 d!1809041)))

(assert (=> bs!1341447 (not (= lambda!311202 lambda!311178))))

(assert (=> bs!1341445 (not (= lambda!311202 lambda!311103))))

(declare-fun bs!1341449 () Bool)

(assert (= bs!1341449 (and b!5739031 d!1809037)))

(assert (=> bs!1341449 (not (= lambda!311202 lambda!311175))))

(declare-fun bs!1341451 () Bool)

(assert (= bs!1341451 (and b!5739031 b!5738008)))

(assert (=> bs!1341451 (not (= lambda!311202 lambda!311102))))

(declare-fun bs!1341452 () Bool)

(assert (= bs!1341452 (and b!5739031 d!1808985)))

(assert (=> bs!1341452 (not (= lambda!311202 lambda!311164))))

(declare-fun bs!1341454 () Bool)

(assert (= bs!1341454 (and b!5739031 b!5738196)))

(assert (=> bs!1341454 (= (and (= (reg!16076 lt!2284501) (reg!16076 r!7292)) (= lt!2284501 r!7292)) (= lambda!311202 lambda!311121))))

(declare-fun bs!1341456 () Bool)

(assert (= bs!1341456 (and b!5739031 d!1808993)))

(assert (=> bs!1341456 (not (= lambda!311202 lambda!311168))))

(declare-fun bs!1341458 () Bool)

(assert (= bs!1341458 (and b!5739031 d!1808937)))

(assert (=> bs!1341458 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (reg!16076 lt!2284501) (reg!16076 (regOne!32006 r!7292))) (= lt!2284501 (Star!15747 (reg!16076 (regOne!32006 r!7292))))) (= lambda!311202 lambda!311154))))

(assert (=> bs!1341447 (not (= lambda!311202 lambda!311177))))

(assert (=> bs!1341445 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (reg!16076 lt!2284501) (reg!16076 (regOne!32006 r!7292))) (= lt!2284501 lt!2284493)) (= lambda!311202 lambda!311105))))

(assert (=> bs!1341452 (not (= lambda!311202 lambda!311165))))

(declare-fun bs!1341462 () Bool)

(assert (= bs!1341462 (and b!5739031 b!5738443)))

(assert (=> bs!1341462 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (reg!16076 lt!2284501) (reg!16076 lt!2284510)) (= lt!2284501 lt!2284510)) (= lambda!311202 lambda!311157))))

(assert (=> bs!1341458 (not (= lambda!311202 lambda!311153))))

(declare-fun bs!1341465 () Bool)

(assert (= bs!1341465 (and b!5739031 b!5738437)))

(assert (=> bs!1341465 (not (= lambda!311202 lambda!311158))))

(assert (=> bs!1341451 (not (= lambda!311202 lambda!311101))))

(declare-fun bs!1341467 () Bool)

(assert (= bs!1341467 (and b!5739031 b!5738004)))

(assert (=> bs!1341467 (not (= lambda!311202 lambda!311096))))

(assert (=> bs!1341467 (not (= lambda!311202 lambda!311097))))

(assert (=> b!5739031 true))

(assert (=> b!5739031 true))

(declare-fun bs!1341469 () Bool)

(declare-fun b!5739025 () Bool)

(assert (= bs!1341469 (and b!5739025 b!5738190)))

(declare-fun lambda!311204 () Int)

(assert (=> bs!1341469 (= (and (= (regOne!32006 lt!2284501) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284501) (regTwo!32006 r!7292))) (= lambda!311204 lambda!311122))))

(declare-fun bs!1341470 () Bool)

(assert (= bs!1341470 (and b!5739025 b!5738039)))

(assert (=> bs!1341470 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 lt!2284501) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 lt!2284501) lt!2284493)) (= lambda!311204 lambda!311104))))

(declare-fun bs!1341471 () Bool)

(assert (= bs!1341471 (and b!5739025 d!1809041)))

(assert (=> bs!1341471 (= (and (= (regOne!32006 lt!2284501) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284501) (regTwo!32006 r!7292))) (= lambda!311204 lambda!311178))))

(declare-fun bs!1341472 () Bool)

(assert (= bs!1341472 (and b!5739025 b!5739031)))

(assert (=> bs!1341472 (not (= lambda!311204 lambda!311202))))

(assert (=> bs!1341470 (not (= lambda!311204 lambda!311103))))

(declare-fun bs!1341473 () Bool)

(assert (= bs!1341473 (and b!5739025 d!1809037)))

(assert (=> bs!1341473 (not (= lambda!311204 lambda!311175))))

(declare-fun bs!1341474 () Bool)

(assert (= bs!1341474 (and b!5739025 b!5738008)))

(assert (=> bs!1341474 (= (and (= (regOne!32006 lt!2284501) lt!2284510) (= (regTwo!32006 lt!2284501) (regTwo!32006 r!7292))) (= lambda!311204 lambda!311102))))

(declare-fun bs!1341475 () Bool)

(assert (= bs!1341475 (and b!5739025 d!1808985)))

(assert (=> bs!1341475 (not (= lambda!311204 lambda!311164))))

(declare-fun bs!1341476 () Bool)

(assert (= bs!1341476 (and b!5739025 b!5738196)))

(assert (=> bs!1341476 (not (= lambda!311204 lambda!311121))))

(declare-fun bs!1341477 () Bool)

(assert (= bs!1341477 (and b!5739025 d!1808993)))

(assert (=> bs!1341477 (not (= lambda!311204 lambda!311168))))

(declare-fun bs!1341478 () Bool)

(assert (= bs!1341478 (and b!5739025 d!1808937)))

(assert (=> bs!1341478 (not (= lambda!311204 lambda!311154))))

(assert (=> bs!1341471 (not (= lambda!311204 lambda!311177))))

(assert (=> bs!1341470 (not (= lambda!311204 lambda!311105))))

(assert (=> bs!1341475 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 lt!2284501) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 lt!2284501) lt!2284493)) (= lambda!311204 lambda!311165))))

(declare-fun bs!1341480 () Bool)

(assert (= bs!1341480 (and b!5739025 b!5738443)))

(assert (=> bs!1341480 (not (= lambda!311204 lambda!311157))))

(assert (=> bs!1341478 (not (= lambda!311204 lambda!311153))))

(declare-fun bs!1341482 () Bool)

(assert (= bs!1341482 (and b!5739025 b!5738437)))

(assert (=> bs!1341482 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 lt!2284501) (regOne!32006 lt!2284510)) (= (regTwo!32006 lt!2284501) (regTwo!32006 lt!2284510))) (= lambda!311204 lambda!311158))))

(assert (=> bs!1341474 (not (= lambda!311204 lambda!311101))))

(declare-fun bs!1341483 () Bool)

(assert (= bs!1341483 (and b!5739025 b!5738004)))

(assert (=> bs!1341483 (not (= lambda!311204 lambda!311096))))

(assert (=> bs!1341483 (= (and (= (regOne!32006 lt!2284501) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284501) (regTwo!32006 r!7292))) (= lambda!311204 lambda!311097))))

(assert (=> b!5739025 true))

(assert (=> b!5739025 true))

(declare-fun b!5739021 () Bool)

(declare-fun e!3527890 () Bool)

(assert (=> b!5739021 (= e!3527890 (matchRSpec!2850 (regTwo!32007 lt!2284501) s!2326))))

(declare-fun b!5739022 () Bool)

(declare-fun res!2423853 () Bool)

(declare-fun e!3527889 () Bool)

(assert (=> b!5739022 (=> res!2423853 e!3527889)))

(declare-fun call!438721 () Bool)

(assert (=> b!5739022 (= res!2423853 call!438721)))

(declare-fun e!3527894 () Bool)

(assert (=> b!5739022 (= e!3527894 e!3527889)))

(declare-fun b!5739023 () Bool)

(declare-fun c!1012909 () Bool)

(assert (=> b!5739023 (= c!1012909 ((_ is Union!15747) lt!2284501))))

(declare-fun e!3527892 () Bool)

(declare-fun e!3527891 () Bool)

(assert (=> b!5739023 (= e!3527892 e!3527891)))

(declare-fun b!5739024 () Bool)

(assert (=> b!5739024 (= e!3527891 e!3527894)))

(declare-fun c!1012910 () Bool)

(assert (=> b!5739024 (= c!1012910 ((_ is Star!15747) lt!2284501))))

(declare-fun call!438720 () Bool)

(assert (=> b!5739025 (= e!3527894 call!438720)))

(declare-fun b!5739026 () Bool)

(declare-fun e!3527893 () Bool)

(declare-fun e!3527895 () Bool)

(assert (=> b!5739026 (= e!3527893 e!3527895)))

(declare-fun res!2423855 () Bool)

(assert (=> b!5739026 (= res!2423855 (not ((_ is EmptyLang!15747) lt!2284501)))))

(assert (=> b!5739026 (=> (not res!2423855) (not e!3527895))))

(declare-fun b!5739027 () Bool)

(assert (=> b!5739027 (= e!3527893 call!438721)))

(declare-fun d!1809159 () Bool)

(declare-fun c!1012907 () Bool)

(assert (=> d!1809159 (= c!1012907 ((_ is EmptyExpr!15747) lt!2284501))))

(assert (=> d!1809159 (= (matchRSpec!2850 lt!2284501 s!2326) e!3527893)))

(declare-fun b!5739028 () Bool)

(assert (=> b!5739028 (= e!3527892 (= s!2326 (Cons!63416 (c!1012627 lt!2284501) Nil!63416)))))

(declare-fun bm!438715 () Bool)

(assert (=> bm!438715 (= call!438720 (Exists!2847 (ite c!1012910 lambda!311202 lambda!311204)))))

(declare-fun bm!438716 () Bool)

(assert (=> bm!438716 (= call!438721 (isEmpty!35300 s!2326))))

(declare-fun b!5739029 () Bool)

(assert (=> b!5739029 (= e!3527891 e!3527890)))

(declare-fun res!2423854 () Bool)

(assert (=> b!5739029 (= res!2423854 (matchRSpec!2850 (regOne!32007 lt!2284501) s!2326))))

(assert (=> b!5739029 (=> res!2423854 e!3527890)))

(declare-fun b!5739030 () Bool)

(declare-fun c!1012908 () Bool)

(assert (=> b!5739030 (= c!1012908 ((_ is ElementMatch!15747) lt!2284501))))

(assert (=> b!5739030 (= e!3527895 e!3527892)))

(assert (=> b!5739031 (= e!3527889 call!438720)))

(assert (= (and d!1809159 c!1012907) b!5739027))

(assert (= (and d!1809159 (not c!1012907)) b!5739026))

(assert (= (and b!5739026 res!2423855) b!5739030))

(assert (= (and b!5739030 c!1012908) b!5739028))

(assert (= (and b!5739030 (not c!1012908)) b!5739023))

(assert (= (and b!5739023 c!1012909) b!5739029))

(assert (= (and b!5739023 (not c!1012909)) b!5739024))

(assert (= (and b!5739029 (not res!2423854)) b!5739021))

(assert (= (and b!5739024 c!1012910) b!5739022))

(assert (= (and b!5739024 (not c!1012910)) b!5739025))

(assert (= (and b!5739022 (not res!2423853)) b!5739031))

(assert (= (or b!5739031 b!5739025) bm!438715))

(assert (= (or b!5739027 b!5739022) bm!438716))

(declare-fun m!6691358 () Bool)

(assert (=> b!5739021 m!6691358))

(declare-fun m!6691362 () Bool)

(assert (=> bm!438715 m!6691362))

(assert (=> bm!438716 m!6690394))

(declare-fun m!6691364 () Bool)

(assert (=> b!5739029 m!6691364))

(assert (=> b!5738008 d!1809159))

(declare-fun b!5739057 () Bool)

(declare-fun e!3527915 () Bool)

(declare-fun e!3527909 () Bool)

(assert (=> b!5739057 (= e!3527915 e!3527909)))

(declare-fun res!2423867 () Bool)

(assert (=> b!5739057 (=> (not res!2423867) (not e!3527909))))

(declare-fun lt!2284744 () Bool)

(assert (=> b!5739057 (= res!2423867 (not lt!2284744))))

(declare-fun b!5739058 () Bool)

(declare-fun e!3527914 () Bool)

(assert (=> b!5739058 (= e!3527914 (not (= (head!12149 s!2326) (c!1012627 lt!2284501))))))

(declare-fun b!5739059 () Bool)

(declare-fun res!2423870 () Bool)

(assert (=> b!5739059 (=> res!2423870 e!3527915)))

(declare-fun e!3527912 () Bool)

(assert (=> b!5739059 (= res!2423870 e!3527912)))

(declare-fun res!2423871 () Bool)

(assert (=> b!5739059 (=> (not res!2423871) (not e!3527912))))

(assert (=> b!5739059 (= res!2423871 lt!2284744)))

(declare-fun d!1809169 () Bool)

(declare-fun e!3527911 () Bool)

(assert (=> d!1809169 e!3527911))

(declare-fun c!1012920 () Bool)

(assert (=> d!1809169 (= c!1012920 ((_ is EmptyExpr!15747) lt!2284501))))

(declare-fun e!3527910 () Bool)

(assert (=> d!1809169 (= lt!2284744 e!3527910)))

(declare-fun c!1012919 () Bool)

(assert (=> d!1809169 (= c!1012919 (isEmpty!35300 s!2326))))

(assert (=> d!1809169 (validRegex!7483 lt!2284501)))

(assert (=> d!1809169 (= (matchR!7932 lt!2284501 s!2326) lt!2284744)))

(declare-fun b!5739060 () Bool)

(assert (=> b!5739060 (= e!3527910 (matchR!7932 (derivativeStep!4538 lt!2284501 (head!12149 s!2326)) (tail!11244 s!2326)))))

(declare-fun b!5739061 () Bool)

(declare-fun res!2423868 () Bool)

(assert (=> b!5739061 (=> res!2423868 e!3527914)))

(assert (=> b!5739061 (= res!2423868 (not (isEmpty!35300 (tail!11244 s!2326))))))

(declare-fun b!5739062 () Bool)

(declare-fun e!3527913 () Bool)

(assert (=> b!5739062 (= e!3527911 e!3527913)))

(declare-fun c!1012921 () Bool)

(assert (=> b!5739062 (= c!1012921 ((_ is EmptyLang!15747) lt!2284501))))

(declare-fun b!5739063 () Bool)

(declare-fun res!2423866 () Bool)

(assert (=> b!5739063 (=> (not res!2423866) (not e!3527912))))

(assert (=> b!5739063 (= res!2423866 (isEmpty!35300 (tail!11244 s!2326)))))

(declare-fun b!5739064 () Bool)

(assert (=> b!5739064 (= e!3527909 e!3527914)))

(declare-fun res!2423865 () Bool)

(assert (=> b!5739064 (=> res!2423865 e!3527914)))

(declare-fun call!438729 () Bool)

(assert (=> b!5739064 (= res!2423865 call!438729)))

(declare-fun b!5739065 () Bool)

(assert (=> b!5739065 (= e!3527911 (= lt!2284744 call!438729))))

(declare-fun b!5739066 () Bool)

(declare-fun res!2423872 () Bool)

(assert (=> b!5739066 (=> (not res!2423872) (not e!3527912))))

(assert (=> b!5739066 (= res!2423872 (not call!438729))))

(declare-fun b!5739067 () Bool)

(assert (=> b!5739067 (= e!3527912 (= (head!12149 s!2326) (c!1012627 lt!2284501)))))

(declare-fun b!5739068 () Bool)

(assert (=> b!5739068 (= e!3527913 (not lt!2284744))))

(declare-fun bm!438724 () Bool)

(assert (=> bm!438724 (= call!438729 (isEmpty!35300 s!2326))))

(declare-fun b!5739069 () Bool)

(assert (=> b!5739069 (= e!3527910 (nullable!5779 lt!2284501))))

(declare-fun b!5739070 () Bool)

(declare-fun res!2423869 () Bool)

(assert (=> b!5739070 (=> res!2423869 e!3527915)))

(assert (=> b!5739070 (= res!2423869 (not ((_ is ElementMatch!15747) lt!2284501)))))

(assert (=> b!5739070 (= e!3527913 e!3527915)))

(assert (= (and d!1809169 c!1012919) b!5739069))

(assert (= (and d!1809169 (not c!1012919)) b!5739060))

(assert (= (and d!1809169 c!1012920) b!5739065))

(assert (= (and d!1809169 (not c!1012920)) b!5739062))

(assert (= (and b!5739062 c!1012921) b!5739068))

(assert (= (and b!5739062 (not c!1012921)) b!5739070))

(assert (= (and b!5739070 (not res!2423869)) b!5739059))

(assert (= (and b!5739059 res!2423871) b!5739066))

(assert (= (and b!5739066 res!2423872) b!5739063))

(assert (= (and b!5739063 res!2423866) b!5739067))

(assert (= (and b!5739059 (not res!2423870)) b!5739057))

(assert (= (and b!5739057 res!2423867) b!5739064))

(assert (= (and b!5739064 (not res!2423865)) b!5739061))

(assert (= (and b!5739061 (not res!2423868)) b!5739058))

(assert (= (or b!5739065 b!5739064 b!5739066) bm!438724))

(assert (=> b!5739060 m!6690436))

(assert (=> b!5739060 m!6690436))

(declare-fun m!6691368 () Bool)

(assert (=> b!5739060 m!6691368))

(assert (=> b!5739060 m!6690440))

(assert (=> b!5739060 m!6691368))

(assert (=> b!5739060 m!6690440))

(declare-fun m!6691374 () Bool)

(assert (=> b!5739060 m!6691374))

(assert (=> b!5739061 m!6690440))

(assert (=> b!5739061 m!6690440))

(assert (=> b!5739061 m!6690444))

(assert (=> b!5739063 m!6690440))

(assert (=> b!5739063 m!6690440))

(assert (=> b!5739063 m!6690444))

(assert (=> b!5739058 m!6690436))

(assert (=> b!5739067 m!6690436))

(assert (=> d!1809169 m!6690394))

(declare-fun m!6691378 () Bool)

(assert (=> d!1809169 m!6691378))

(assert (=> bm!438724 m!6690394))

(declare-fun m!6691380 () Bool)

(assert (=> b!5739069 m!6691380))

(assert (=> b!5738008 d!1809169))

(declare-fun d!1809177 () Bool)

(assert (=> d!1809177 (= (matchR!7932 (Concat!24592 (Concat!24592 (reg!16076 (regOne!32006 r!7292)) lt!2284493) (regTwo!32006 r!7292)) s!2326) (matchR!7932 (Concat!24592 (reg!16076 (regOne!32006 r!7292)) (Concat!24592 lt!2284493 (regTwo!32006 r!7292))) s!2326))))

(declare-fun lt!2284748 () Unit!156520)

(declare-fun choose!43539 (Regex!15747 Regex!15747 Regex!15747 List!63540) Unit!156520)

(assert (=> d!1809177 (= lt!2284748 (choose!43539 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (regTwo!32006 r!7292) s!2326))))

(declare-fun e!3527927 () Bool)

(assert (=> d!1809177 e!3527927))

(declare-fun res!2423880 () Bool)

(assert (=> d!1809177 (=> (not res!2423880) (not e!3527927))))

(assert (=> d!1809177 (= res!2423880 (validRegex!7483 (reg!16076 (regOne!32006 r!7292))))))

(assert (=> d!1809177 (= (lemmaConcatAssociative!100 (reg!16076 (regOne!32006 r!7292)) lt!2284493 (regTwo!32006 r!7292) s!2326) lt!2284748)))

(declare-fun b!5739090 () Bool)

(declare-fun res!2423881 () Bool)

(assert (=> b!5739090 (=> (not res!2423881) (not e!3527927))))

(assert (=> b!5739090 (= res!2423881 (validRegex!7483 lt!2284493))))

(declare-fun b!5739091 () Bool)

(assert (=> b!5739091 (= e!3527927 (validRegex!7483 (regTwo!32006 r!7292)))))

(assert (= (and d!1809177 res!2423880) b!5739090))

(assert (= (and b!5739090 res!2423881) b!5739091))

(declare-fun m!6691392 () Bool)

(assert (=> d!1809177 m!6691392))

(declare-fun m!6691394 () Bool)

(assert (=> d!1809177 m!6691394))

(declare-fun m!6691396 () Bool)

(assert (=> d!1809177 m!6691396))

(assert (=> d!1809177 m!6690608))

(assert (=> b!5739090 m!6690980))

(assert (=> b!5739091 m!6691210))

(assert (=> b!5738008 d!1809177))

(assert (=> b!5738008 d!1808923))

(declare-fun b!5739092 () Bool)

(declare-fun e!3527934 () Bool)

(declare-fun e!3527928 () Bool)

(assert (=> b!5739092 (= e!3527934 e!3527928)))

(declare-fun res!2423884 () Bool)

(assert (=> b!5739092 (=> (not res!2423884) (not e!3527928))))

(declare-fun lt!2284749 () Bool)

(assert (=> b!5739092 (= res!2423884 (not lt!2284749))))

(declare-fun b!5739093 () Bool)

(declare-fun e!3527933 () Bool)

(assert (=> b!5739093 (= e!3527933 (not (= (head!12149 lt!2284517) (c!1012627 lt!2284521))))))

(declare-fun b!5739094 () Bool)

(declare-fun res!2423887 () Bool)

(assert (=> b!5739094 (=> res!2423887 e!3527934)))

(declare-fun e!3527931 () Bool)

(assert (=> b!5739094 (= res!2423887 e!3527931)))

(declare-fun res!2423888 () Bool)

(assert (=> b!5739094 (=> (not res!2423888) (not e!3527931))))

(assert (=> b!5739094 (= res!2423888 lt!2284749)))

(declare-fun d!1809185 () Bool)

(declare-fun e!3527930 () Bool)

(assert (=> d!1809185 e!3527930))

(declare-fun c!1012929 () Bool)

(assert (=> d!1809185 (= c!1012929 ((_ is EmptyExpr!15747) lt!2284521))))

(declare-fun e!3527929 () Bool)

(assert (=> d!1809185 (= lt!2284749 e!3527929)))

(declare-fun c!1012928 () Bool)

(assert (=> d!1809185 (= c!1012928 (isEmpty!35300 lt!2284517))))

(assert (=> d!1809185 (validRegex!7483 lt!2284521)))

(assert (=> d!1809185 (= (matchR!7932 lt!2284521 lt!2284517) lt!2284749)))

(declare-fun b!5739095 () Bool)

(assert (=> b!5739095 (= e!3527929 (matchR!7932 (derivativeStep!4538 lt!2284521 (head!12149 lt!2284517)) (tail!11244 lt!2284517)))))

(declare-fun b!5739096 () Bool)

(declare-fun res!2423885 () Bool)

(assert (=> b!5739096 (=> res!2423885 e!3527933)))

(assert (=> b!5739096 (= res!2423885 (not (isEmpty!35300 (tail!11244 lt!2284517))))))

(declare-fun b!5739097 () Bool)

(declare-fun e!3527932 () Bool)

(assert (=> b!5739097 (= e!3527930 e!3527932)))

(declare-fun c!1012930 () Bool)

(assert (=> b!5739097 (= c!1012930 ((_ is EmptyLang!15747) lt!2284521))))

(declare-fun b!5739098 () Bool)

(declare-fun res!2423883 () Bool)

(assert (=> b!5739098 (=> (not res!2423883) (not e!3527931))))

(assert (=> b!5739098 (= res!2423883 (isEmpty!35300 (tail!11244 lt!2284517)))))

(declare-fun b!5739099 () Bool)

(assert (=> b!5739099 (= e!3527928 e!3527933)))

(declare-fun res!2423882 () Bool)

(assert (=> b!5739099 (=> res!2423882 e!3527933)))

(declare-fun call!438732 () Bool)

(assert (=> b!5739099 (= res!2423882 call!438732)))

(declare-fun b!5739100 () Bool)

(assert (=> b!5739100 (= e!3527930 (= lt!2284749 call!438732))))

(declare-fun b!5739101 () Bool)

(declare-fun res!2423889 () Bool)

(assert (=> b!5739101 (=> (not res!2423889) (not e!3527931))))

(assert (=> b!5739101 (= res!2423889 (not call!438732))))

(declare-fun b!5739102 () Bool)

(assert (=> b!5739102 (= e!3527931 (= (head!12149 lt!2284517) (c!1012627 lt!2284521)))))

(declare-fun b!5739103 () Bool)

(assert (=> b!5739103 (= e!3527932 (not lt!2284749))))

(declare-fun bm!438727 () Bool)

(assert (=> bm!438727 (= call!438732 (isEmpty!35300 lt!2284517))))

(declare-fun b!5739104 () Bool)

(assert (=> b!5739104 (= e!3527929 (nullable!5779 lt!2284521))))

(declare-fun b!5739105 () Bool)

(declare-fun res!2423886 () Bool)

(assert (=> b!5739105 (=> res!2423886 e!3527934)))

(assert (=> b!5739105 (= res!2423886 (not ((_ is ElementMatch!15747) lt!2284521)))))

(assert (=> b!5739105 (= e!3527932 e!3527934)))

(assert (= (and d!1809185 c!1012928) b!5739104))

(assert (= (and d!1809185 (not c!1012928)) b!5739095))

(assert (= (and d!1809185 c!1012929) b!5739100))

(assert (= (and d!1809185 (not c!1012929)) b!5739097))

(assert (= (and b!5739097 c!1012930) b!5739103))

(assert (= (and b!5739097 (not c!1012930)) b!5739105))

(assert (= (and b!5739105 (not res!2423886)) b!5739094))

(assert (= (and b!5739094 res!2423888) b!5739101))

(assert (= (and b!5739101 res!2423889) b!5739098))

(assert (= (and b!5739098 res!2423883) b!5739102))

(assert (= (and b!5739094 (not res!2423887)) b!5739092))

(assert (= (and b!5739092 res!2423884) b!5739099))

(assert (= (and b!5739099 (not res!2423882)) b!5739096))

(assert (= (and b!5739096 (not res!2423885)) b!5739093))

(assert (= (or b!5739100 b!5739099 b!5739101) bm!438727))

(declare-fun m!6691398 () Bool)

(assert (=> b!5739095 m!6691398))

(assert (=> b!5739095 m!6691398))

(declare-fun m!6691400 () Bool)

(assert (=> b!5739095 m!6691400))

(declare-fun m!6691402 () Bool)

(assert (=> b!5739095 m!6691402))

(assert (=> b!5739095 m!6691400))

(assert (=> b!5739095 m!6691402))

(declare-fun m!6691404 () Bool)

(assert (=> b!5739095 m!6691404))

(assert (=> b!5739096 m!6691402))

(assert (=> b!5739096 m!6691402))

(declare-fun m!6691406 () Bool)

(assert (=> b!5739096 m!6691406))

(assert (=> b!5739098 m!6691402))

(assert (=> b!5739098 m!6691402))

(assert (=> b!5739098 m!6691406))

(assert (=> b!5739093 m!6691398))

(assert (=> b!5739102 m!6691398))

(declare-fun m!6691408 () Bool)

(assert (=> d!1809185 m!6691408))

(declare-fun m!6691410 () Bool)

(assert (=> d!1809185 m!6691410))

(assert (=> bm!438727 m!6691408))

(declare-fun m!6691412 () Bool)

(assert (=> b!5739104 m!6691412))

(assert (=> b!5738008 d!1809185))

(declare-fun d!1809187 () Bool)

(declare-fun c!1012931 () Bool)

(assert (=> d!1809187 (= c!1012931 (isEmpty!35300 lt!2284517))))

(declare-fun e!3527935 () Bool)

(assert (=> d!1809187 (= (matchZipper!1885 (store ((as const (Array Context!10262 Bool)) false) (Context!10263 (++!13966 lt!2284511 lt!2284480)) true) lt!2284517) e!3527935)))

(declare-fun b!5739106 () Bool)

(assert (=> b!5739106 (= e!3527935 (nullableZipper!1685 (store ((as const (Array Context!10262 Bool)) false) (Context!10263 (++!13966 lt!2284511 lt!2284480)) true)))))

(declare-fun b!5739107 () Bool)

(assert (=> b!5739107 (= e!3527935 (matchZipper!1885 (derivationStepZipper!1830 (store ((as const (Array Context!10262 Bool)) false) (Context!10263 (++!13966 lt!2284511 lt!2284480)) true) (head!12149 lt!2284517)) (tail!11244 lt!2284517)))))

(assert (= (and d!1809187 c!1012931) b!5739106))

(assert (= (and d!1809187 (not c!1012931)) b!5739107))

(assert (=> d!1809187 m!6691408))

(assert (=> b!5739106 m!6690064))

(declare-fun m!6691414 () Bool)

(assert (=> b!5739106 m!6691414))

(assert (=> b!5739107 m!6691398))

(assert (=> b!5739107 m!6690064))

(assert (=> b!5739107 m!6691398))

(declare-fun m!6691416 () Bool)

(assert (=> b!5739107 m!6691416))

(assert (=> b!5739107 m!6691402))

(assert (=> b!5739107 m!6691416))

(assert (=> b!5739107 m!6691402))

(declare-fun m!6691418 () Bool)

(assert (=> b!5739107 m!6691418))

(assert (=> b!5738008 d!1809187))

(declare-fun bs!1341521 () Bool)

(declare-fun d!1809189 () Bool)

(assert (= bs!1341521 (and d!1809189 b!5738190)))

(declare-fun lambda!311208 () Int)

(assert (=> bs!1341521 (not (= lambda!311208 lambda!311122))))

(declare-fun bs!1341522 () Bool)

(assert (= bs!1341522 (and d!1809189 b!5738039)))

(assert (=> bs!1341522 (not (= lambda!311208 lambda!311104))))

(declare-fun bs!1341523 () Bool)

(assert (= bs!1341523 (and d!1809189 d!1809041)))

(assert (=> bs!1341523 (not (= lambda!311208 lambda!311178))))

(declare-fun bs!1341524 () Bool)

(assert (= bs!1341524 (and d!1809189 b!5739031)))

(assert (=> bs!1341524 (not (= lambda!311208 lambda!311202))))

(assert (=> bs!1341522 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311208 lambda!311103))))

(declare-fun bs!1341525 () Bool)

(assert (= bs!1341525 (and d!1809189 d!1809037)))

(assert (=> bs!1341525 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311208 lambda!311175))))

(declare-fun bs!1341526 () Bool)

(assert (= bs!1341526 (and d!1809189 b!5738008)))

(assert (=> bs!1341526 (not (= lambda!311208 lambda!311102))))

(declare-fun bs!1341527 () Bool)

(assert (= bs!1341527 (and d!1809189 d!1808985)))

(assert (=> bs!1341527 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311208 lambda!311164))))

(declare-fun bs!1341528 () Bool)

(assert (= bs!1341528 (and d!1809189 b!5738196)))

(assert (=> bs!1341528 (not (= lambda!311208 lambda!311121))))

(declare-fun bs!1341529 () Bool)

(assert (= bs!1341529 (and d!1809189 d!1808993)))

(assert (=> bs!1341529 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311208 lambda!311168))))

(declare-fun bs!1341530 () Bool)

(assert (= bs!1341530 (and d!1809189 d!1808937)))

(assert (=> bs!1341530 (not (= lambda!311208 lambda!311154))))

(assert (=> bs!1341522 (not (= lambda!311208 lambda!311105))))

(assert (=> bs!1341527 (not (= lambda!311208 lambda!311165))))

(declare-fun bs!1341531 () Bool)

(assert (= bs!1341531 (and d!1809189 b!5738443)))

(assert (=> bs!1341531 (not (= lambda!311208 lambda!311157))))

(assert (=> bs!1341530 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) (Star!15747 (reg!16076 (regOne!32006 r!7292))))) (= lambda!311208 lambda!311153))))

(declare-fun bs!1341532 () Bool)

(assert (= bs!1341532 (and d!1809189 b!5738437)))

(assert (=> bs!1341532 (not (= lambda!311208 lambda!311158))))

(assert (=> bs!1341526 (= lambda!311208 lambda!311101)))

(declare-fun bs!1341533 () Bool)

(assert (= bs!1341533 (and d!1809189 b!5738004)))

(assert (=> bs!1341533 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311208 lambda!311096))))

(assert (=> bs!1341533 (not (= lambda!311208 lambda!311097))))

(declare-fun bs!1341535 () Bool)

(assert (= bs!1341535 (and d!1809189 b!5739025)))

(assert (=> bs!1341535 (not (= lambda!311208 lambda!311204))))

(assert (=> bs!1341523 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311208 lambda!311177))))

(assert (=> d!1809189 true))

(assert (=> d!1809189 true))

(assert (=> d!1809189 true))

(assert (=> d!1809189 (= (isDefined!12459 (findConcatSeparation!2170 lt!2284510 (regTwo!32006 r!7292) Nil!63416 s!2326 s!2326)) (Exists!2847 lambda!311208))))

(declare-fun lt!2284750 () Unit!156520)

(assert (=> d!1809189 (= lt!2284750 (choose!43530 lt!2284510 (regTwo!32006 r!7292) s!2326))))

(assert (=> d!1809189 (validRegex!7483 lt!2284510)))

(assert (=> d!1809189 (= (lemmaFindConcatSeparationEquivalentToExists!1934 lt!2284510 (regTwo!32006 r!7292) s!2326) lt!2284750)))

(declare-fun bs!1341536 () Bool)

(assert (= bs!1341536 d!1809189))

(assert (=> bs!1341536 m!6690692))

(declare-fun m!6691438 () Bool)

(assert (=> bs!1341536 m!6691438))

(assert (=> bs!1341536 m!6690076))

(assert (=> bs!1341536 m!6690076))

(declare-fun m!6691440 () Bool)

(assert (=> bs!1341536 m!6691440))

(declare-fun m!6691442 () Bool)

(assert (=> bs!1341536 m!6691442))

(assert (=> b!5738008 d!1809189))

(declare-fun d!1809199 () Bool)

(assert (=> d!1809199 (matchR!7932 (Concat!24592 (reg!16076 (regOne!32006 r!7292)) lt!2284525) (++!13967 (_1!36147 lt!2284469) (_2!36147 lt!2284469)))))

(declare-fun lt!2284753 () Unit!156520)

(assert (=> d!1809199 (= lt!2284753 (choose!43536 (reg!16076 (regOne!32006 r!7292)) lt!2284525 (_1!36147 lt!2284469) (_2!36147 lt!2284469)))))

(declare-fun e!3527944 () Bool)

(assert (=> d!1809199 e!3527944))

(declare-fun res!2423898 () Bool)

(assert (=> d!1809199 (=> (not res!2423898) (not e!3527944))))

(assert (=> d!1809199 (= res!2423898 (validRegex!7483 (reg!16076 (regOne!32006 r!7292))))))

(assert (=> d!1809199 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!284 (reg!16076 (regOne!32006 r!7292)) lt!2284525 (_1!36147 lt!2284469) (_2!36147 lt!2284469)) lt!2284753)))

(declare-fun b!5739124 () Bool)

(assert (=> b!5739124 (= e!3527944 (validRegex!7483 lt!2284525))))

(assert (= (and d!1809199 res!2423898) b!5739124))

(assert (=> d!1809199 m!6690218))

(assert (=> d!1809199 m!6690218))

(declare-fun m!6691444 () Bool)

(assert (=> d!1809199 m!6691444))

(declare-fun m!6691446 () Bool)

(assert (=> d!1809199 m!6691446))

(assert (=> d!1809199 m!6690608))

(assert (=> b!5739124 m!6691182))

(assert (=> b!5738008 d!1809199))

(declare-fun d!1809201 () Bool)

(assert (=> d!1809201 (= (Exists!2847 lambda!311101) (choose!43521 lambda!311101))))

(declare-fun bs!1341537 () Bool)

(assert (= bs!1341537 d!1809201))

(declare-fun m!6691448 () Bool)

(assert (=> bs!1341537 m!6691448))

(assert (=> b!5738008 d!1809201))

(declare-fun d!1809203 () Bool)

(assert (=> d!1809203 (= (matchR!7932 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284469)) (matchZipper!1885 lt!2284485 (_1!36147 lt!2284469)))))

(declare-fun lt!2284756 () Unit!156520)

(declare-fun choose!43540 ((InoxSet Context!10262) List!63542 Regex!15747 List!63540) Unit!156520)

(assert (=> d!1809203 (= lt!2284756 (choose!43540 lt!2284485 lt!2284472 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284469)))))

(assert (=> d!1809203 (validRegex!7483 (reg!16076 (regOne!32006 r!7292)))))

(assert (=> d!1809203 (= (theoremZipperRegexEquiv!667 lt!2284485 lt!2284472 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284469)) lt!2284756)))

(declare-fun bs!1341538 () Bool)

(assert (= bs!1341538 d!1809203))

(assert (=> bs!1341538 m!6690078))

(assert (=> bs!1341538 m!6690104))

(declare-fun m!6691450 () Bool)

(assert (=> bs!1341538 m!6691450))

(assert (=> bs!1341538 m!6690608))

(assert (=> b!5738008 d!1809203))

(declare-fun b!5739152 () Bool)

(declare-fun e!3527972 () Bool)

(declare-fun e!3527966 () Bool)

(assert (=> b!5739152 (= e!3527972 e!3527966)))

(declare-fun res!2423916 () Bool)

(assert (=> b!5739152 (=> (not res!2423916) (not e!3527966))))

(declare-fun lt!2284757 () Bool)

(assert (=> b!5739152 (= res!2423916 (not lt!2284757))))

(declare-fun b!5739153 () Bool)

(declare-fun e!3527971 () Bool)

(assert (=> b!5739153 (= e!3527971 (not (= (head!12149 (_1!36147 lt!2284469)) (c!1012627 (reg!16076 (regOne!32006 r!7292))))))))

(declare-fun b!5739154 () Bool)

(declare-fun res!2423919 () Bool)

(assert (=> b!5739154 (=> res!2423919 e!3527972)))

(declare-fun e!3527969 () Bool)

(assert (=> b!5739154 (= res!2423919 e!3527969)))

(declare-fun res!2423920 () Bool)

(assert (=> b!5739154 (=> (not res!2423920) (not e!3527969))))

(assert (=> b!5739154 (= res!2423920 lt!2284757)))

(declare-fun d!1809205 () Bool)

(declare-fun e!3527968 () Bool)

(assert (=> d!1809205 e!3527968))

(declare-fun c!1012943 () Bool)

(assert (=> d!1809205 (= c!1012943 ((_ is EmptyExpr!15747) (reg!16076 (regOne!32006 r!7292))))))

(declare-fun e!3527967 () Bool)

(assert (=> d!1809205 (= lt!2284757 e!3527967)))

(declare-fun c!1012942 () Bool)

(assert (=> d!1809205 (= c!1012942 (isEmpty!35300 (_1!36147 lt!2284469)))))

(assert (=> d!1809205 (validRegex!7483 (reg!16076 (regOne!32006 r!7292)))))

(assert (=> d!1809205 (= (matchR!7932 (reg!16076 (regOne!32006 r!7292)) (_1!36147 lt!2284469)) lt!2284757)))

(declare-fun b!5739155 () Bool)

(assert (=> b!5739155 (= e!3527967 (matchR!7932 (derivativeStep!4538 (reg!16076 (regOne!32006 r!7292)) (head!12149 (_1!36147 lt!2284469))) (tail!11244 (_1!36147 lt!2284469))))))

(declare-fun b!5739156 () Bool)

(declare-fun res!2423917 () Bool)

(assert (=> b!5739156 (=> res!2423917 e!3527971)))

(assert (=> b!5739156 (= res!2423917 (not (isEmpty!35300 (tail!11244 (_1!36147 lt!2284469)))))))

(declare-fun b!5739157 () Bool)

(declare-fun e!3527970 () Bool)

(assert (=> b!5739157 (= e!3527968 e!3527970)))

(declare-fun c!1012944 () Bool)

(assert (=> b!5739157 (= c!1012944 ((_ is EmptyLang!15747) (reg!16076 (regOne!32006 r!7292))))))

(declare-fun b!5739158 () Bool)

(declare-fun res!2423915 () Bool)

(assert (=> b!5739158 (=> (not res!2423915) (not e!3527969))))

(assert (=> b!5739158 (= res!2423915 (isEmpty!35300 (tail!11244 (_1!36147 lt!2284469))))))

(declare-fun b!5739159 () Bool)

(assert (=> b!5739159 (= e!3527966 e!3527971)))

(declare-fun res!2423914 () Bool)

(assert (=> b!5739159 (=> res!2423914 e!3527971)))

(declare-fun call!438743 () Bool)

(assert (=> b!5739159 (= res!2423914 call!438743)))

(declare-fun b!5739160 () Bool)

(assert (=> b!5739160 (= e!3527968 (= lt!2284757 call!438743))))

(declare-fun b!5739161 () Bool)

(declare-fun res!2423921 () Bool)

(assert (=> b!5739161 (=> (not res!2423921) (not e!3527969))))

(assert (=> b!5739161 (= res!2423921 (not call!438743))))

(declare-fun b!5739162 () Bool)

(assert (=> b!5739162 (= e!3527969 (= (head!12149 (_1!36147 lt!2284469)) (c!1012627 (reg!16076 (regOne!32006 r!7292)))))))

(declare-fun b!5739163 () Bool)

(assert (=> b!5739163 (= e!3527970 (not lt!2284757))))

(declare-fun bm!438738 () Bool)

(assert (=> bm!438738 (= call!438743 (isEmpty!35300 (_1!36147 lt!2284469)))))

(declare-fun b!5739164 () Bool)

(assert (=> b!5739164 (= e!3527967 (nullable!5779 (reg!16076 (regOne!32006 r!7292))))))

(declare-fun b!5739165 () Bool)

(declare-fun res!2423918 () Bool)

(assert (=> b!5739165 (=> res!2423918 e!3527972)))

(assert (=> b!5739165 (= res!2423918 (not ((_ is ElementMatch!15747) (reg!16076 (regOne!32006 r!7292)))))))

(assert (=> b!5739165 (= e!3527970 e!3527972)))

(assert (= (and d!1809205 c!1012942) b!5739164))

(assert (= (and d!1809205 (not c!1012942)) b!5739155))

(assert (= (and d!1809205 c!1012943) b!5739160))

(assert (= (and d!1809205 (not c!1012943)) b!5739157))

(assert (= (and b!5739157 c!1012944) b!5739163))

(assert (= (and b!5739157 (not c!1012944)) b!5739165))

(assert (= (and b!5739165 (not res!2423918)) b!5739154))

(assert (= (and b!5739154 res!2423920) b!5739161))

(assert (= (and b!5739161 res!2423921) b!5739158))

(assert (= (and b!5739158 res!2423915) b!5739162))

(assert (= (and b!5739154 (not res!2423919)) b!5739152))

(assert (= (and b!5739152 res!2423916) b!5739159))

(assert (= (and b!5739159 (not res!2423914)) b!5739156))

(assert (= (and b!5739156 (not res!2423917)) b!5739153))

(assert (= (or b!5739160 b!5739159 b!5739161) bm!438738))

(assert (=> b!5739155 m!6690902))

(assert (=> b!5739155 m!6690902))

(declare-fun m!6691458 () Bool)

(assert (=> b!5739155 m!6691458))

(assert (=> b!5739155 m!6690906))

(assert (=> b!5739155 m!6691458))

(assert (=> b!5739155 m!6690906))

(declare-fun m!6691460 () Bool)

(assert (=> b!5739155 m!6691460))

(assert (=> b!5739156 m!6690906))

(assert (=> b!5739156 m!6690906))

(declare-fun m!6691462 () Bool)

(assert (=> b!5739156 m!6691462))

(assert (=> b!5739158 m!6690906))

(assert (=> b!5739158 m!6690906))

(assert (=> b!5739158 m!6691462))

(assert (=> b!5739153 m!6690902))

(assert (=> b!5739162 m!6690902))

(assert (=> d!1809205 m!6690898))

(assert (=> d!1809205 m!6690608))

(assert (=> bm!438738 m!6690898))

(assert (=> b!5739164 m!6690674))

(assert (=> b!5738008 d!1809205))

(assert (=> b!5738008 d!1808931))

(declare-fun d!1809209 () Bool)

(assert (=> d!1809209 (= (get!21876 lt!2284503) (v!51810 lt!2284503))))

(assert (=> b!5738008 d!1809209))

(declare-fun b!5739180 () Bool)

(declare-fun e!3527986 () Bool)

(declare-fun e!3527980 () Bool)

(assert (=> b!5739180 (= e!3527986 e!3527980)))

(declare-fun res!2423932 () Bool)

(assert (=> b!5739180 (=> (not res!2423932) (not e!3527980))))

(declare-fun lt!2284759 () Bool)

(assert (=> b!5739180 (= res!2423932 (not lt!2284759))))

(declare-fun b!5739181 () Bool)

(declare-fun e!3527985 () Bool)

(assert (=> b!5739181 (= e!3527985 (not (= (head!12149 (_2!36147 lt!2284469)) (c!1012627 lt!2284525))))))

(declare-fun b!5739182 () Bool)

(declare-fun res!2423935 () Bool)

(assert (=> b!5739182 (=> res!2423935 e!3527986)))

(declare-fun e!3527983 () Bool)

(assert (=> b!5739182 (= res!2423935 e!3527983)))

(declare-fun res!2423936 () Bool)

(assert (=> b!5739182 (=> (not res!2423936) (not e!3527983))))

(assert (=> b!5739182 (= res!2423936 lt!2284759)))

(declare-fun d!1809211 () Bool)

(declare-fun e!3527982 () Bool)

(assert (=> d!1809211 e!3527982))

(declare-fun c!1012949 () Bool)

(assert (=> d!1809211 (= c!1012949 ((_ is EmptyExpr!15747) lt!2284525))))

(declare-fun e!3527981 () Bool)

(assert (=> d!1809211 (= lt!2284759 e!3527981)))

(declare-fun c!1012948 () Bool)

(assert (=> d!1809211 (= c!1012948 (isEmpty!35300 (_2!36147 lt!2284469)))))

(assert (=> d!1809211 (validRegex!7483 lt!2284525)))

(assert (=> d!1809211 (= (matchR!7932 lt!2284525 (_2!36147 lt!2284469)) lt!2284759)))

(declare-fun b!5739183 () Bool)

(assert (=> b!5739183 (= e!3527981 (matchR!7932 (derivativeStep!4538 lt!2284525 (head!12149 (_2!36147 lt!2284469))) (tail!11244 (_2!36147 lt!2284469))))))

(declare-fun b!5739184 () Bool)

(declare-fun res!2423933 () Bool)

(assert (=> b!5739184 (=> res!2423933 e!3527985)))

(assert (=> b!5739184 (= res!2423933 (not (isEmpty!35300 (tail!11244 (_2!36147 lt!2284469)))))))

(declare-fun b!5739185 () Bool)

(declare-fun e!3527984 () Bool)

(assert (=> b!5739185 (= e!3527982 e!3527984)))

(declare-fun c!1012950 () Bool)

(assert (=> b!5739185 (= c!1012950 ((_ is EmptyLang!15747) lt!2284525))))

(declare-fun b!5739186 () Bool)

(declare-fun res!2423931 () Bool)

(assert (=> b!5739186 (=> (not res!2423931) (not e!3527983))))

(assert (=> b!5739186 (= res!2423931 (isEmpty!35300 (tail!11244 (_2!36147 lt!2284469))))))

(declare-fun b!5739187 () Bool)

(assert (=> b!5739187 (= e!3527980 e!3527985)))

(declare-fun res!2423930 () Bool)

(assert (=> b!5739187 (=> res!2423930 e!3527985)))

(declare-fun call!438745 () Bool)

(assert (=> b!5739187 (= res!2423930 call!438745)))

(declare-fun b!5739188 () Bool)

(assert (=> b!5739188 (= e!3527982 (= lt!2284759 call!438745))))

(declare-fun b!5739189 () Bool)

(declare-fun res!2423937 () Bool)

(assert (=> b!5739189 (=> (not res!2423937) (not e!3527983))))

(assert (=> b!5739189 (= res!2423937 (not call!438745))))

(declare-fun b!5739190 () Bool)

(assert (=> b!5739190 (= e!3527983 (= (head!12149 (_2!36147 lt!2284469)) (c!1012627 lt!2284525)))))

(declare-fun b!5739191 () Bool)

(assert (=> b!5739191 (= e!3527984 (not lt!2284759))))

(declare-fun bm!438740 () Bool)

(assert (=> bm!438740 (= call!438745 (isEmpty!35300 (_2!36147 lt!2284469)))))

(declare-fun b!5739192 () Bool)

(assert (=> b!5739192 (= e!3527981 (nullable!5779 lt!2284525))))

(declare-fun b!5739193 () Bool)

(declare-fun res!2423934 () Bool)

(assert (=> b!5739193 (=> res!2423934 e!3527986)))

(assert (=> b!5739193 (= res!2423934 (not ((_ is ElementMatch!15747) lt!2284525)))))

(assert (=> b!5739193 (= e!3527984 e!3527986)))

(assert (= (and d!1809211 c!1012948) b!5739192))

(assert (= (and d!1809211 (not c!1012948)) b!5739183))

(assert (= (and d!1809211 c!1012949) b!5739188))

(assert (= (and d!1809211 (not c!1012949)) b!5739185))

(assert (= (and b!5739185 c!1012950) b!5739191))

(assert (= (and b!5739185 (not c!1012950)) b!5739193))

(assert (= (and b!5739193 (not res!2423934)) b!5739182))

(assert (= (and b!5739182 res!2423936) b!5739189))

(assert (= (and b!5739189 res!2423937) b!5739186))

(assert (= (and b!5739186 res!2423931) b!5739190))

(assert (= (and b!5739182 (not res!2423935)) b!5739180))

(assert (= (and b!5739180 res!2423932) b!5739187))

(assert (= (and b!5739187 (not res!2423930)) b!5739184))

(assert (= (and b!5739184 (not res!2423933)) b!5739181))

(assert (= (or b!5739188 b!5739187 b!5739189) bm!438740))

(assert (=> b!5739183 m!6690512))

(assert (=> b!5739183 m!6690512))

(declare-fun m!6691480 () Bool)

(assert (=> b!5739183 m!6691480))

(assert (=> b!5739183 m!6690516))

(assert (=> b!5739183 m!6691480))

(assert (=> b!5739183 m!6690516))

(declare-fun m!6691482 () Bool)

(assert (=> b!5739183 m!6691482))

(assert (=> b!5739184 m!6690516))

(assert (=> b!5739184 m!6690516))

(declare-fun m!6691484 () Bool)

(assert (=> b!5739184 m!6691484))

(assert (=> b!5739186 m!6690516))

(assert (=> b!5739186 m!6690516))

(assert (=> b!5739186 m!6691484))

(assert (=> b!5739181 m!6690512))

(assert (=> b!5739190 m!6690512))

(assert (=> d!1809211 m!6690508))

(assert (=> d!1809211 m!6691182))

(assert (=> bm!438740 m!6690508))

(assert (=> b!5739192 m!6691184))

(assert (=> b!5738008 d!1809211))

(declare-fun d!1809217 () Bool)

(assert (=> d!1809217 (= (matchR!7932 lt!2284501 s!2326) (matchRSpec!2850 lt!2284501 s!2326))))

(declare-fun lt!2284764 () Unit!156520)

(assert (=> d!1809217 (= lt!2284764 (choose!43514 lt!2284501 s!2326))))

(assert (=> d!1809217 (validRegex!7483 lt!2284501)))

(assert (=> d!1809217 (= (mainMatchTheorem!2850 lt!2284501 s!2326) lt!2284764)))

(declare-fun bs!1341539 () Bool)

(assert (= bs!1341539 d!1809217))

(assert (=> bs!1341539 m!6690058))

(assert (=> bs!1341539 m!6690072))

(declare-fun m!6691486 () Bool)

(assert (=> bs!1341539 m!6691486))

(assert (=> bs!1341539 m!6691378))

(assert (=> b!5738008 d!1809217))

(declare-fun d!1809219 () Bool)

(assert (=> d!1809219 (= (isDefined!12459 lt!2284503) (not (isEmpty!35302 lt!2284503)))))

(declare-fun bs!1341540 () Bool)

(assert (= bs!1341540 d!1809219))

(declare-fun m!6691488 () Bool)

(assert (=> bs!1341540 m!6691488))

(assert (=> b!5738008 d!1809219))

(declare-fun bs!1341559 () Bool)

(declare-fun d!1809221 () Bool)

(assert (= bs!1341559 (and d!1809221 b!5738037)))

(declare-fun lambda!311213 () Int)

(assert (=> bs!1341559 (= lambda!311213 lambda!311100)))

(declare-fun bs!1341560 () Bool)

(assert (= bs!1341560 (and d!1809221 d!1809081)))

(assert (=> bs!1341560 (= lambda!311213 lambda!311191)))

(declare-fun bs!1341561 () Bool)

(assert (= bs!1341561 (and d!1809221 d!1809067)))

(assert (=> bs!1341561 (= lambda!311213 lambda!311188)))

(declare-fun bs!1341562 () Bool)

(assert (= bs!1341562 (and d!1809221 d!1809053)))

(assert (=> bs!1341562 (= lambda!311213 lambda!311183)))

(declare-fun bs!1341563 () Bool)

(assert (= bs!1341563 (and d!1809221 d!1809005)))

(assert (=> bs!1341563 (= lambda!311213 lambda!311171)))

(assert (=> d!1809221 (matchZipper!1885 (store ((as const (Array Context!10262 Bool)) false) (Context!10263 (++!13966 (exprs!5631 lt!2284528) (exprs!5631 lt!2284522))) true) (++!13967 (_1!36147 lt!2284469) (_2!36147 lt!2284469)))))

(declare-fun lt!2284771 () Unit!156520)

(assert (=> d!1809221 (= lt!2284771 (lemmaConcatPreservesForall!316 (exprs!5631 lt!2284528) (exprs!5631 lt!2284522) lambda!311213))))

(declare-fun lt!2284770 () Unit!156520)

(declare-fun choose!43541 (Context!10262 Context!10262 List!63540 List!63540) Unit!156520)

(assert (=> d!1809221 (= lt!2284770 (choose!43541 lt!2284528 lt!2284522 (_1!36147 lt!2284469) (_2!36147 lt!2284469)))))

(assert (=> d!1809221 (matchZipper!1885 (store ((as const (Array Context!10262 Bool)) false) lt!2284528 true) (_1!36147 lt!2284469))))

(assert (=> d!1809221 (= (lemmaConcatenateContextMatchesConcatOfStrings!146 lt!2284528 lt!2284522 (_1!36147 lt!2284469) (_2!36147 lt!2284469)) lt!2284770)))

(declare-fun bs!1341564 () Bool)

(assert (= bs!1341564 d!1809221))

(declare-fun m!6691514 () Bool)

(assert (=> bs!1341564 m!6691514))

(declare-fun m!6691516 () Bool)

(assert (=> bs!1341564 m!6691516))

(assert (=> bs!1341564 m!6690218))

(assert (=> bs!1341564 m!6690138))

(declare-fun m!6691520 () Bool)

(assert (=> bs!1341564 m!6691520))

(assert (=> bs!1341564 m!6690138))

(declare-fun m!6691522 () Bool)

(assert (=> bs!1341564 m!6691522))

(assert (=> bs!1341564 m!6690218))

(declare-fun m!6691524 () Bool)

(assert (=> bs!1341564 m!6691524))

(declare-fun m!6691526 () Bool)

(assert (=> bs!1341564 m!6691526))

(assert (=> bs!1341564 m!6691522))

(assert (=> b!5738008 d!1809221))

(declare-fun b!5739204 () Bool)

(declare-fun e!3527999 () Bool)

(declare-fun e!3527993 () Bool)

(assert (=> b!5739204 (= e!3527999 e!3527993)))

(declare-fun res!2423946 () Bool)

(assert (=> b!5739204 (=> (not res!2423946) (not e!3527993))))

(declare-fun lt!2284773 () Bool)

(assert (=> b!5739204 (= res!2423946 (not lt!2284773))))

(declare-fun b!5739205 () Bool)

(declare-fun e!3527998 () Bool)

(assert (=> b!5739205 (= e!3527998 (not (= (head!12149 (_1!36147 lt!2284515)) (c!1012627 lt!2284510))))))

(declare-fun b!5739206 () Bool)

(declare-fun res!2423949 () Bool)

(assert (=> b!5739206 (=> res!2423949 e!3527999)))

(declare-fun e!3527996 () Bool)

(assert (=> b!5739206 (= res!2423949 e!3527996)))

(declare-fun res!2423950 () Bool)

(assert (=> b!5739206 (=> (not res!2423950) (not e!3527996))))

(assert (=> b!5739206 (= res!2423950 lt!2284773)))

(declare-fun d!1809231 () Bool)

(declare-fun e!3527995 () Bool)

(assert (=> d!1809231 e!3527995))

(declare-fun c!1012954 () Bool)

(assert (=> d!1809231 (= c!1012954 ((_ is EmptyExpr!15747) lt!2284510))))

(declare-fun e!3527994 () Bool)

(assert (=> d!1809231 (= lt!2284773 e!3527994)))

(declare-fun c!1012953 () Bool)

(assert (=> d!1809231 (= c!1012953 (isEmpty!35300 (_1!36147 lt!2284515)))))

(assert (=> d!1809231 (validRegex!7483 lt!2284510)))

(assert (=> d!1809231 (= (matchR!7932 lt!2284510 (_1!36147 lt!2284515)) lt!2284773)))

(declare-fun b!5739207 () Bool)

(assert (=> b!5739207 (= e!3527994 (matchR!7932 (derivativeStep!4538 lt!2284510 (head!12149 (_1!36147 lt!2284515))) (tail!11244 (_1!36147 lt!2284515))))))

(declare-fun b!5739208 () Bool)

(declare-fun res!2423947 () Bool)

(assert (=> b!5739208 (=> res!2423947 e!3527998)))

(assert (=> b!5739208 (= res!2423947 (not (isEmpty!35300 (tail!11244 (_1!36147 lt!2284515)))))))

(declare-fun b!5739209 () Bool)

(declare-fun e!3527997 () Bool)

(assert (=> b!5739209 (= e!3527995 e!3527997)))

(declare-fun c!1012955 () Bool)

(assert (=> b!5739209 (= c!1012955 ((_ is EmptyLang!15747) lt!2284510))))

(declare-fun b!5739210 () Bool)

(declare-fun res!2423945 () Bool)

(assert (=> b!5739210 (=> (not res!2423945) (not e!3527996))))

(assert (=> b!5739210 (= res!2423945 (isEmpty!35300 (tail!11244 (_1!36147 lt!2284515))))))

(declare-fun b!5739211 () Bool)

(assert (=> b!5739211 (= e!3527993 e!3527998)))

(declare-fun res!2423944 () Bool)

(assert (=> b!5739211 (=> res!2423944 e!3527998)))

(declare-fun call!438746 () Bool)

(assert (=> b!5739211 (= res!2423944 call!438746)))

(declare-fun b!5739212 () Bool)

(assert (=> b!5739212 (= e!3527995 (= lt!2284773 call!438746))))

(declare-fun b!5739213 () Bool)

(declare-fun res!2423951 () Bool)

(assert (=> b!5739213 (=> (not res!2423951) (not e!3527996))))

(assert (=> b!5739213 (= res!2423951 (not call!438746))))

(declare-fun b!5739214 () Bool)

(assert (=> b!5739214 (= e!3527996 (= (head!12149 (_1!36147 lt!2284515)) (c!1012627 lt!2284510)))))

(declare-fun b!5739215 () Bool)

(assert (=> b!5739215 (= e!3527997 (not lt!2284773))))

(declare-fun bm!438741 () Bool)

(assert (=> bm!438741 (= call!438746 (isEmpty!35300 (_1!36147 lt!2284515)))))

(declare-fun b!5739216 () Bool)

(assert (=> b!5739216 (= e!3527994 (nullable!5779 lt!2284510))))

(declare-fun b!5739217 () Bool)

(declare-fun res!2423948 () Bool)

(assert (=> b!5739217 (=> res!2423948 e!3527999)))

(assert (=> b!5739217 (= res!2423948 (not ((_ is ElementMatch!15747) lt!2284510)))))

(assert (=> b!5739217 (= e!3527997 e!3527999)))

(assert (= (and d!1809231 c!1012953) b!5739216))

(assert (= (and d!1809231 (not c!1012953)) b!5739207))

(assert (= (and d!1809231 c!1012954) b!5739212))

(assert (= (and d!1809231 (not c!1012954)) b!5739209))

(assert (= (and b!5739209 c!1012955) b!5739215))

(assert (= (and b!5739209 (not c!1012955)) b!5739217))

(assert (= (and b!5739217 (not res!2423948)) b!5739206))

(assert (= (and b!5739206 res!2423950) b!5739213))

(assert (= (and b!5739213 res!2423951) b!5739210))

(assert (= (and b!5739210 res!2423945) b!5739214))

(assert (= (and b!5739206 (not res!2423949)) b!5739204))

(assert (= (and b!5739204 res!2423946) b!5739211))

(assert (= (and b!5739211 (not res!2423944)) b!5739208))

(assert (= (and b!5739208 (not res!2423947)) b!5739205))

(assert (= (or b!5739212 b!5739211 b!5739213) bm!438741))

(declare-fun m!6691528 () Bool)

(assert (=> b!5739207 m!6691528))

(assert (=> b!5739207 m!6691528))

(declare-fun m!6691530 () Bool)

(assert (=> b!5739207 m!6691530))

(declare-fun m!6691532 () Bool)

(assert (=> b!5739207 m!6691532))

(assert (=> b!5739207 m!6691530))

(assert (=> b!5739207 m!6691532))

(declare-fun m!6691534 () Bool)

(assert (=> b!5739207 m!6691534))

(assert (=> b!5739208 m!6691532))

(assert (=> b!5739208 m!6691532))

(declare-fun m!6691536 () Bool)

(assert (=> b!5739208 m!6691536))

(assert (=> b!5739210 m!6691532))

(assert (=> b!5739210 m!6691532))

(assert (=> b!5739210 m!6691536))

(assert (=> b!5739205 m!6691528))

(assert (=> b!5739214 m!6691528))

(assert (=> d!1809231 m!6690632))

(assert (=> d!1809231 m!6690692))

(assert (=> bm!438741 m!6690632))

(declare-fun m!6691538 () Bool)

(assert (=> b!5739216 m!6691538))

(assert (=> b!5738008 d!1809231))

(declare-fun d!1809233 () Bool)

(assert (=> d!1809233 (= (matchR!7932 lt!2284525 (_2!36147 lt!2284469)) (matchZipper!1885 lt!2284530 (_2!36147 lt!2284469)))))

(declare-fun lt!2284774 () Unit!156520)

(assert (=> d!1809233 (= lt!2284774 (choose!43540 lt!2284530 lt!2284492 lt!2284525 (_2!36147 lt!2284469)))))

(assert (=> d!1809233 (validRegex!7483 lt!2284525)))

(assert (=> d!1809233 (= (theoremZipperRegexEquiv!667 lt!2284530 lt!2284492 lt!2284525 (_2!36147 lt!2284469)) lt!2284774)))

(declare-fun bs!1341575 () Bool)

(assert (= bs!1341575 d!1809233))

(assert (=> bs!1341575 m!6690082))

(assert (=> bs!1341575 m!6690102))

(declare-fun m!6691540 () Bool)

(assert (=> bs!1341575 m!6691540))

(assert (=> bs!1341575 m!6691182))

(assert (=> b!5738008 d!1809233))

(declare-fun bs!1341580 () Bool)

(declare-fun d!1809235 () Bool)

(assert (= bs!1341580 (and d!1809235 b!5738190)))

(declare-fun lambda!311215 () Int)

(assert (=> bs!1341580 (not (= lambda!311215 lambda!311122))))

(declare-fun bs!1341582 () Bool)

(assert (= bs!1341582 (and d!1809235 b!5738039)))

(assert (=> bs!1341582 (not (= lambda!311215 lambda!311104))))

(declare-fun bs!1341583 () Bool)

(assert (= bs!1341583 (and d!1809235 d!1809041)))

(assert (=> bs!1341583 (not (= lambda!311215 lambda!311178))))

(assert (=> bs!1341582 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311215 lambda!311103))))

(declare-fun bs!1341586 () Bool)

(assert (= bs!1341586 (and d!1809235 d!1809037)))

(assert (=> bs!1341586 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311215 lambda!311175))))

(declare-fun bs!1341587 () Bool)

(assert (= bs!1341587 (and d!1809235 b!5738008)))

(assert (=> bs!1341587 (not (= lambda!311215 lambda!311102))))

(declare-fun bs!1341589 () Bool)

(assert (= bs!1341589 (and d!1809235 d!1808985)))

(assert (=> bs!1341589 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311215 lambda!311164))))

(declare-fun bs!1341590 () Bool)

(assert (= bs!1341590 (and d!1809235 b!5738196)))

(assert (=> bs!1341590 (not (= lambda!311215 lambda!311121))))

(declare-fun bs!1341591 () Bool)

(assert (= bs!1341591 (and d!1809235 d!1808993)))

(assert (=> bs!1341591 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311215 lambda!311168))))

(declare-fun bs!1341592 () Bool)

(assert (= bs!1341592 (and d!1809235 d!1808937)))

(assert (=> bs!1341592 (not (= lambda!311215 lambda!311154))))

(assert (=> bs!1341582 (not (= lambda!311215 lambda!311105))))

(assert (=> bs!1341589 (not (= lambda!311215 lambda!311165))))

(declare-fun bs!1341594 () Bool)

(assert (= bs!1341594 (and d!1809235 b!5738443)))

(assert (=> bs!1341594 (not (= lambda!311215 lambda!311157))))

(assert (=> bs!1341592 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) (Star!15747 (reg!16076 (regOne!32006 r!7292))))) (= lambda!311215 lambda!311153))))

(declare-fun bs!1341596 () Bool)

(assert (= bs!1341596 (and d!1809235 d!1809189)))

(assert (=> bs!1341596 (= lambda!311215 lambda!311208)))

(declare-fun bs!1341597 () Bool)

(assert (= bs!1341597 (and d!1809235 b!5739031)))

(assert (=> bs!1341597 (not (= lambda!311215 lambda!311202))))

(declare-fun bs!1341598 () Bool)

(assert (= bs!1341598 (and d!1809235 b!5738437)))

(assert (=> bs!1341598 (not (= lambda!311215 lambda!311158))))

(assert (=> bs!1341587 (= lambda!311215 lambda!311101)))

(declare-fun bs!1341599 () Bool)

(assert (= bs!1341599 (and d!1809235 b!5738004)))

(assert (=> bs!1341599 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311215 lambda!311096))))

(assert (=> bs!1341599 (not (= lambda!311215 lambda!311097))))

(declare-fun bs!1341600 () Bool)

(assert (= bs!1341600 (and d!1809235 b!5739025)))

(assert (=> bs!1341600 (not (= lambda!311215 lambda!311204))))

(assert (=> bs!1341583 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311215 lambda!311177))))

(assert (=> d!1809235 true))

(assert (=> d!1809235 true))

(assert (=> d!1809235 true))

(declare-fun lambda!311216 () Int)

(assert (=> bs!1341580 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311216 lambda!311122))))

(assert (=> bs!1341582 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311216 lambda!311104))))

(assert (=> bs!1341583 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311216 lambda!311178))))

(assert (=> bs!1341582 (not (= lambda!311216 lambda!311103))))

(assert (=> bs!1341586 (not (= lambda!311216 lambda!311175))))

(assert (=> bs!1341587 (= lambda!311216 lambda!311102)))

(declare-fun bs!1341601 () Bool)

(assert (= bs!1341601 d!1809235))

(assert (=> bs!1341601 (not (= lambda!311216 lambda!311215))))

(assert (=> bs!1341589 (not (= lambda!311216 lambda!311164))))

(assert (=> bs!1341590 (not (= lambda!311216 lambda!311121))))

(assert (=> bs!1341591 (not (= lambda!311216 lambda!311168))))

(assert (=> bs!1341592 (not (= lambda!311216 lambda!311154))))

(assert (=> bs!1341582 (not (= lambda!311216 lambda!311105))))

(assert (=> bs!1341589 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 r!7292) lt!2284493)) (= lambda!311216 lambda!311165))))

(assert (=> bs!1341594 (not (= lambda!311216 lambda!311157))))

(assert (=> bs!1341592 (not (= lambda!311216 lambda!311153))))

(assert (=> bs!1341596 (not (= lambda!311216 lambda!311208))))

(assert (=> bs!1341597 (not (= lambda!311216 lambda!311202))))

(assert (=> bs!1341598 (= (and (= s!2326 (_1!36147 lt!2284515)) (= lt!2284510 (regOne!32006 lt!2284510)) (= (regTwo!32006 r!7292) (regTwo!32006 lt!2284510))) (= lambda!311216 lambda!311158))))

(assert (=> bs!1341587 (not (= lambda!311216 lambda!311101))))

(assert (=> bs!1341599 (not (= lambda!311216 lambda!311096))))

(assert (=> bs!1341599 (= (= lt!2284510 (regOne!32006 r!7292)) (= lambda!311216 lambda!311097))))

(assert (=> bs!1341600 (= (and (= lt!2284510 (regOne!32006 lt!2284501)) (= (regTwo!32006 r!7292) (regTwo!32006 lt!2284501))) (= lambda!311216 lambda!311204))))

(assert (=> bs!1341583 (not (= lambda!311216 lambda!311177))))

(assert (=> d!1809235 true))

(assert (=> d!1809235 true))

(assert (=> d!1809235 true))

(assert (=> d!1809235 (= (Exists!2847 lambda!311215) (Exists!2847 lambda!311216))))

(declare-fun lt!2284775 () Unit!156520)

(assert (=> d!1809235 (= lt!2284775 (choose!43529 lt!2284510 (regTwo!32006 r!7292) s!2326))))

(assert (=> d!1809235 (validRegex!7483 lt!2284510)))

(assert (=> d!1809235 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1476 lt!2284510 (regTwo!32006 r!7292) s!2326) lt!2284775)))

(declare-fun m!6691552 () Bool)

(assert (=> bs!1341601 m!6691552))

(declare-fun m!6691554 () Bool)

(assert (=> bs!1341601 m!6691554))

(declare-fun m!6691556 () Bool)

(assert (=> bs!1341601 m!6691556))

(assert (=> bs!1341601 m!6690692))

(assert (=> b!5738008 d!1809235))

(declare-fun bs!1341602 () Bool)

(declare-fun d!1809239 () Bool)

(assert (= bs!1341602 (and d!1809239 b!5738037)))

(declare-fun lambda!311217 () Int)

(assert (=> bs!1341602 (= lambda!311217 lambda!311100)))

(declare-fun bs!1341603 () Bool)

(assert (= bs!1341603 (and d!1809239 d!1809081)))

(assert (=> bs!1341603 (= lambda!311217 lambda!311191)))

(declare-fun bs!1341604 () Bool)

(assert (= bs!1341604 (and d!1809239 d!1809067)))

(assert (=> bs!1341604 (= lambda!311217 lambda!311188)))

(declare-fun bs!1341605 () Bool)

(assert (= bs!1341605 (and d!1809239 d!1809221)))

(assert (=> bs!1341605 (= lambda!311217 lambda!311213)))

(declare-fun bs!1341606 () Bool)

(assert (= bs!1341606 (and d!1809239 d!1809053)))

(assert (=> bs!1341606 (= lambda!311217 lambda!311183)))

(declare-fun bs!1341607 () Bool)

(assert (= bs!1341607 (and d!1809239 d!1809005)))

(assert (=> bs!1341607 (= lambda!311217 lambda!311171)))

(assert (=> d!1809239 (= (inv!82614 setElem!38509) (forall!14870 (exprs!5631 setElem!38509) lambda!311217))))

(declare-fun bs!1341608 () Bool)

(assert (= bs!1341608 d!1809239))

(declare-fun m!6691558 () Bool)

(assert (=> bs!1341608 m!6691558))

(assert (=> setNonEmpty!38509 d!1809239))

(declare-fun b!5739290 () Bool)

(declare-fun e!3528037 () Bool)

(declare-fun call!438754 () Bool)

(assert (=> b!5739290 (= e!3528037 call!438754)))

(declare-fun b!5739291 () Bool)

(declare-fun e!3528041 () Bool)

(declare-fun e!3528039 () Bool)

(assert (=> b!5739291 (= e!3528041 e!3528039)))

(declare-fun c!1012960 () Bool)

(assert (=> b!5739291 (= c!1012960 ((_ is Union!15747) r!7292))))

(declare-fun b!5739292 () Bool)

(declare-fun e!3528038 () Bool)

(assert (=> b!5739292 (= e!3528041 e!3528038)))

(declare-fun res!2423966 () Bool)

(assert (=> b!5739292 (= res!2423966 (not (nullable!5779 (reg!16076 r!7292))))))

(assert (=> b!5739292 (=> (not res!2423966) (not e!3528038))))

(declare-fun b!5739293 () Bool)

(declare-fun e!3528042 () Bool)

(declare-fun e!3528043 () Bool)

(assert (=> b!5739293 (= e!3528042 e!3528043)))

(declare-fun res!2423962 () Bool)

(assert (=> b!5739293 (=> (not res!2423962) (not e!3528043))))

(declare-fun call!438753 () Bool)

(assert (=> b!5739293 (= res!2423962 call!438753)))

(declare-fun b!5739294 () Bool)

(assert (=> b!5739294 (= e!3528043 call!438754)))

(declare-fun bm!438748 () Bool)

(declare-fun call!438755 () Bool)

(declare-fun c!1012961 () Bool)

(assert (=> bm!438748 (= call!438755 (validRegex!7483 (ite c!1012961 (reg!16076 r!7292) (ite c!1012960 (regOne!32007 r!7292) (regOne!32006 r!7292)))))))

(declare-fun b!5739295 () Bool)

(declare-fun res!2423964 () Bool)

(assert (=> b!5739295 (=> res!2423964 e!3528042)))

(assert (=> b!5739295 (= res!2423964 (not ((_ is Concat!24592) r!7292)))))

(assert (=> b!5739295 (= e!3528039 e!3528042)))

(declare-fun b!5739296 () Bool)

(declare-fun res!2423965 () Bool)

(assert (=> b!5739296 (=> (not res!2423965) (not e!3528037))))

(assert (=> b!5739296 (= res!2423965 call!438753)))

(assert (=> b!5739296 (= e!3528039 e!3528037)))

(declare-fun bm!438750 () Bool)

(assert (=> bm!438750 (= call!438754 (validRegex!7483 (ite c!1012960 (regTwo!32007 r!7292) (regTwo!32006 r!7292))))))

(declare-fun b!5739297 () Bool)

(declare-fun e!3528040 () Bool)

(assert (=> b!5739297 (= e!3528040 e!3528041)))

(assert (=> b!5739297 (= c!1012961 ((_ is Star!15747) r!7292))))

(declare-fun b!5739298 () Bool)

(assert (=> b!5739298 (= e!3528038 call!438755)))

(declare-fun bm!438749 () Bool)

(assert (=> bm!438749 (= call!438753 call!438755)))

(declare-fun d!1809241 () Bool)

(declare-fun res!2423963 () Bool)

(assert (=> d!1809241 (=> res!2423963 e!3528040)))

(assert (=> d!1809241 (= res!2423963 ((_ is ElementMatch!15747) r!7292))))

(assert (=> d!1809241 (= (validRegex!7483 r!7292) e!3528040)))

(assert (= (and d!1809241 (not res!2423963)) b!5739297))

(assert (= (and b!5739297 c!1012961) b!5739292))

(assert (= (and b!5739297 (not c!1012961)) b!5739291))

(assert (= (and b!5739292 res!2423966) b!5739298))

(assert (= (and b!5739291 c!1012960) b!5739296))

(assert (= (and b!5739291 (not c!1012960)) b!5739295))

(assert (= (and b!5739296 res!2423965) b!5739290))

(assert (= (and b!5739295 (not res!2423964)) b!5739293))

(assert (= (and b!5739293 res!2423962) b!5739294))

(assert (= (or b!5739290 b!5739294) bm!438750))

(assert (= (or b!5739296 b!5739293) bm!438749))

(assert (= (or b!5739298 bm!438749) bm!438748))

(declare-fun m!6691564 () Bool)

(assert (=> b!5739292 m!6691564))

(declare-fun m!6691566 () Bool)

(assert (=> bm!438748 m!6691566))

(declare-fun m!6691568 () Bool)

(assert (=> bm!438750 m!6691568))

(assert (=> start!590440 d!1809241))

(declare-fun bs!1341614 () Bool)

(declare-fun b!5739309 () Bool)

(assert (= bs!1341614 (and b!5739309 b!5738190)))

(declare-fun lambda!311218 () Int)

(assert (=> bs!1341614 (not (= lambda!311218 lambda!311122))))

(declare-fun bs!1341615 () Bool)

(assert (= bs!1341615 (and b!5739309 b!5738039)))

(assert (=> bs!1341615 (not (= lambda!311218 lambda!311104))))

(declare-fun bs!1341616 () Bool)

(assert (= bs!1341616 (and b!5739309 d!1809041)))

(assert (=> bs!1341616 (not (= lambda!311218 lambda!311178))))

(assert (=> bs!1341615 (not (= lambda!311218 lambda!311103))))

(declare-fun bs!1341617 () Bool)

(assert (= bs!1341617 (and b!5739309 d!1809037)))

(assert (=> bs!1341617 (not (= lambda!311218 lambda!311175))))

(declare-fun bs!1341618 () Bool)

(assert (= bs!1341618 (and b!5739309 b!5738008)))

(assert (=> bs!1341618 (not (= lambda!311218 lambda!311102))))

(declare-fun bs!1341619 () Bool)

(assert (= bs!1341619 (and b!5739309 d!1809235)))

(assert (=> bs!1341619 (not (= lambda!311218 lambda!311215))))

(declare-fun bs!1341620 () Bool)

(assert (= bs!1341620 (and b!5739309 d!1808985)))

(assert (=> bs!1341620 (not (= lambda!311218 lambda!311164))))

(declare-fun bs!1341621 () Bool)

(assert (= bs!1341621 (and b!5739309 b!5738196)))

(assert (=> bs!1341621 (= (and (= (reg!16076 lt!2284521) (reg!16076 r!7292)) (= lt!2284521 r!7292)) (= lambda!311218 lambda!311121))))

(declare-fun bs!1341622 () Bool)

(assert (= bs!1341622 (and b!5739309 d!1808993)))

(assert (=> bs!1341622 (not (= lambda!311218 lambda!311168))))

(declare-fun bs!1341623 () Bool)

(assert (= bs!1341623 (and b!5739309 d!1808937)))

(assert (=> bs!1341623 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (reg!16076 lt!2284521) (reg!16076 (regOne!32006 r!7292))) (= lt!2284521 (Star!15747 (reg!16076 (regOne!32006 r!7292))))) (= lambda!311218 lambda!311154))))

(assert (=> bs!1341615 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (reg!16076 lt!2284521) (reg!16076 (regOne!32006 r!7292))) (= lt!2284521 lt!2284493)) (= lambda!311218 lambda!311105))))

(assert (=> bs!1341620 (not (= lambda!311218 lambda!311165))))

(declare-fun bs!1341624 () Bool)

(assert (= bs!1341624 (and b!5739309 b!5738443)))

(assert (=> bs!1341624 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (reg!16076 lt!2284521) (reg!16076 lt!2284510)) (= lt!2284521 lt!2284510)) (= lambda!311218 lambda!311157))))

(assert (=> bs!1341623 (not (= lambda!311218 lambda!311153))))

(declare-fun bs!1341625 () Bool)

(assert (= bs!1341625 (and b!5739309 d!1809189)))

(assert (=> bs!1341625 (not (= lambda!311218 lambda!311208))))

(assert (=> bs!1341619 (not (= lambda!311218 lambda!311216))))

(declare-fun bs!1341626 () Bool)

(assert (= bs!1341626 (and b!5739309 b!5739031)))

(assert (=> bs!1341626 (= (and (= (reg!16076 lt!2284521) (reg!16076 lt!2284501)) (= lt!2284521 lt!2284501)) (= lambda!311218 lambda!311202))))

(declare-fun bs!1341627 () Bool)

(assert (= bs!1341627 (and b!5739309 b!5738437)))

(assert (=> bs!1341627 (not (= lambda!311218 lambda!311158))))

(assert (=> bs!1341618 (not (= lambda!311218 lambda!311101))))

(declare-fun bs!1341628 () Bool)

(assert (= bs!1341628 (and b!5739309 b!5738004)))

(assert (=> bs!1341628 (not (= lambda!311218 lambda!311096))))

(assert (=> bs!1341628 (not (= lambda!311218 lambda!311097))))

(declare-fun bs!1341629 () Bool)

(assert (= bs!1341629 (and b!5739309 b!5739025)))

(assert (=> bs!1341629 (not (= lambda!311218 lambda!311204))))

(assert (=> bs!1341616 (not (= lambda!311218 lambda!311177))))

(assert (=> b!5739309 true))

(assert (=> b!5739309 true))

(declare-fun bs!1341630 () Bool)

(declare-fun b!5739303 () Bool)

(assert (= bs!1341630 (and b!5739303 b!5738190)))

(declare-fun lambda!311219 () Int)

(assert (=> bs!1341630 (= (and (= (regOne!32006 lt!2284521) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284521) (regTwo!32006 r!7292))) (= lambda!311219 lambda!311122))))

(declare-fun bs!1341631 () Bool)

(assert (= bs!1341631 (and b!5739303 b!5738039)))

(assert (=> bs!1341631 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 lt!2284521) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 lt!2284521) lt!2284493)) (= lambda!311219 lambda!311104))))

(declare-fun bs!1341632 () Bool)

(assert (= bs!1341632 (and b!5739303 d!1809041)))

(assert (=> bs!1341632 (= (and (= (regOne!32006 lt!2284521) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284521) (regTwo!32006 r!7292))) (= lambda!311219 lambda!311178))))

(assert (=> bs!1341631 (not (= lambda!311219 lambda!311103))))

(declare-fun bs!1341633 () Bool)

(assert (= bs!1341633 (and b!5739303 d!1809037)))

(assert (=> bs!1341633 (not (= lambda!311219 lambda!311175))))

(declare-fun bs!1341634 () Bool)

(assert (= bs!1341634 (and b!5739303 b!5738008)))

(assert (=> bs!1341634 (= (and (= (regOne!32006 lt!2284521) lt!2284510) (= (regTwo!32006 lt!2284521) (regTwo!32006 r!7292))) (= lambda!311219 lambda!311102))))

(declare-fun bs!1341635 () Bool)

(assert (= bs!1341635 (and b!5739303 d!1809235)))

(assert (=> bs!1341635 (not (= lambda!311219 lambda!311215))))

(declare-fun bs!1341636 () Bool)

(assert (= bs!1341636 (and b!5739303 d!1808985)))

(assert (=> bs!1341636 (not (= lambda!311219 lambda!311164))))

(declare-fun bs!1341637 () Bool)

(assert (= bs!1341637 (and b!5739303 b!5738196)))

(assert (=> bs!1341637 (not (= lambda!311219 lambda!311121))))

(declare-fun bs!1341638 () Bool)

(assert (= bs!1341638 (and b!5739303 b!5739309)))

(assert (=> bs!1341638 (not (= lambda!311219 lambda!311218))))

(declare-fun bs!1341639 () Bool)

(assert (= bs!1341639 (and b!5739303 d!1808993)))

(assert (=> bs!1341639 (not (= lambda!311219 lambda!311168))))

(declare-fun bs!1341640 () Bool)

(assert (= bs!1341640 (and b!5739303 d!1808937)))

(assert (=> bs!1341640 (not (= lambda!311219 lambda!311154))))

(assert (=> bs!1341631 (not (= lambda!311219 lambda!311105))))

(assert (=> bs!1341636 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 lt!2284521) (reg!16076 (regOne!32006 r!7292))) (= (regTwo!32006 lt!2284521) lt!2284493)) (= lambda!311219 lambda!311165))))

(declare-fun bs!1341641 () Bool)

(assert (= bs!1341641 (and b!5739303 b!5738443)))

(assert (=> bs!1341641 (not (= lambda!311219 lambda!311157))))

(assert (=> bs!1341640 (not (= lambda!311219 lambda!311153))))

(declare-fun bs!1341642 () Bool)

(assert (= bs!1341642 (and b!5739303 d!1809189)))

(assert (=> bs!1341642 (not (= lambda!311219 lambda!311208))))

(assert (=> bs!1341635 (= (and (= (regOne!32006 lt!2284521) lt!2284510) (= (regTwo!32006 lt!2284521) (regTwo!32006 r!7292))) (= lambda!311219 lambda!311216))))

(declare-fun bs!1341643 () Bool)

(assert (= bs!1341643 (and b!5739303 b!5739031)))

(assert (=> bs!1341643 (not (= lambda!311219 lambda!311202))))

(declare-fun bs!1341644 () Bool)

(assert (= bs!1341644 (and b!5739303 b!5738437)))

(assert (=> bs!1341644 (= (and (= s!2326 (_1!36147 lt!2284515)) (= (regOne!32006 lt!2284521) (regOne!32006 lt!2284510)) (= (regTwo!32006 lt!2284521) (regTwo!32006 lt!2284510))) (= lambda!311219 lambda!311158))))

(assert (=> bs!1341634 (not (= lambda!311219 lambda!311101))))

(declare-fun bs!1341645 () Bool)

(assert (= bs!1341645 (and b!5739303 b!5738004)))

(assert (=> bs!1341645 (not (= lambda!311219 lambda!311096))))

(assert (=> bs!1341645 (= (and (= (regOne!32006 lt!2284521) (regOne!32006 r!7292)) (= (regTwo!32006 lt!2284521) (regTwo!32006 r!7292))) (= lambda!311219 lambda!311097))))

(declare-fun bs!1341646 () Bool)

(assert (= bs!1341646 (and b!5739303 b!5739025)))

(assert (=> bs!1341646 (= (and (= (regOne!32006 lt!2284521) (regOne!32006 lt!2284501)) (= (regTwo!32006 lt!2284521) (regTwo!32006 lt!2284501))) (= lambda!311219 lambda!311204))))

(assert (=> bs!1341632 (not (= lambda!311219 lambda!311177))))

(assert (=> b!5739303 true))

(assert (=> b!5739303 true))

(declare-fun b!5739299 () Bool)

(declare-fun e!3528045 () Bool)

(assert (=> b!5739299 (= e!3528045 (matchRSpec!2850 (regTwo!32007 lt!2284521) s!2326))))

(declare-fun b!5739300 () Bool)

(declare-fun res!2423967 () Bool)

(declare-fun e!3528044 () Bool)

(assert (=> b!5739300 (=> res!2423967 e!3528044)))

(declare-fun call!438757 () Bool)

(assert (=> b!5739300 (= res!2423967 call!438757)))

(declare-fun e!3528049 () Bool)

(assert (=> b!5739300 (= e!3528049 e!3528044)))

(declare-fun b!5739301 () Bool)

(declare-fun c!1012964 () Bool)

(assert (=> b!5739301 (= c!1012964 ((_ is Union!15747) lt!2284521))))

(declare-fun e!3528047 () Bool)

(declare-fun e!3528046 () Bool)

(assert (=> b!5739301 (= e!3528047 e!3528046)))

(declare-fun b!5739302 () Bool)

(assert (=> b!5739302 (= e!3528046 e!3528049)))

(declare-fun c!1012965 () Bool)

(assert (=> b!5739302 (= c!1012965 ((_ is Star!15747) lt!2284521))))

(declare-fun call!438756 () Bool)

(assert (=> b!5739303 (= e!3528049 call!438756)))

(declare-fun b!5739304 () Bool)

(declare-fun e!3528048 () Bool)

(declare-fun e!3528050 () Bool)

(assert (=> b!5739304 (= e!3528048 e!3528050)))

(declare-fun res!2423969 () Bool)

(assert (=> b!5739304 (= res!2423969 (not ((_ is EmptyLang!15747) lt!2284521)))))

(assert (=> b!5739304 (=> (not res!2423969) (not e!3528050))))

(declare-fun b!5739305 () Bool)

(assert (=> b!5739305 (= e!3528048 call!438757)))

(declare-fun d!1809253 () Bool)

(declare-fun c!1012962 () Bool)

(assert (=> d!1809253 (= c!1012962 ((_ is EmptyExpr!15747) lt!2284521))))

(assert (=> d!1809253 (= (matchRSpec!2850 lt!2284521 s!2326) e!3528048)))

(declare-fun b!5739306 () Bool)

(assert (=> b!5739306 (= e!3528047 (= s!2326 (Cons!63416 (c!1012627 lt!2284521) Nil!63416)))))

(declare-fun bm!438751 () Bool)

(assert (=> bm!438751 (= call!438756 (Exists!2847 (ite c!1012965 lambda!311218 lambda!311219)))))

(declare-fun bm!438752 () Bool)

(assert (=> bm!438752 (= call!438757 (isEmpty!35300 s!2326))))

(declare-fun b!5739307 () Bool)

(assert (=> b!5739307 (= e!3528046 e!3528045)))

(declare-fun res!2423968 () Bool)

(assert (=> b!5739307 (= res!2423968 (matchRSpec!2850 (regOne!32007 lt!2284521) s!2326))))

(assert (=> b!5739307 (=> res!2423968 e!3528045)))

(declare-fun b!5739308 () Bool)

(declare-fun c!1012963 () Bool)

(assert (=> b!5739308 (= c!1012963 ((_ is ElementMatch!15747) lt!2284521))))

(assert (=> b!5739308 (= e!3528050 e!3528047)))

(assert (=> b!5739309 (= e!3528044 call!438756)))

(assert (= (and d!1809253 c!1012962) b!5739305))

(assert (= (and d!1809253 (not c!1012962)) b!5739304))

(assert (= (and b!5739304 res!2423969) b!5739308))

(assert (= (and b!5739308 c!1012963) b!5739306))

(assert (= (and b!5739308 (not c!1012963)) b!5739301))

(assert (= (and b!5739301 c!1012964) b!5739307))

(assert (= (and b!5739301 (not c!1012964)) b!5739302))

(assert (= (and b!5739307 (not res!2423968)) b!5739299))

(assert (= (and b!5739302 c!1012965) b!5739300))

(assert (= (and b!5739302 (not c!1012965)) b!5739303))

(assert (= (and b!5739300 (not res!2423967)) b!5739309))

(assert (= (or b!5739309 b!5739303) bm!438751))

(assert (= (or b!5739305 b!5739300) bm!438752))

(declare-fun m!6691570 () Bool)

(assert (=> b!5739299 m!6691570))

(declare-fun m!6691572 () Bool)

(assert (=> bm!438751 m!6691572))

(assert (=> bm!438752 m!6690394))

(declare-fun m!6691574 () Bool)

(assert (=> b!5739307 m!6691574))

(assert (=> b!5738035 d!1809253))

(declare-fun b!5739310 () Bool)

(declare-fun e!3528057 () Bool)

(declare-fun e!3528051 () Bool)

(assert (=> b!5739310 (= e!3528057 e!3528051)))

(declare-fun res!2423972 () Bool)

(assert (=> b!5739310 (=> (not res!2423972) (not e!3528051))))

(declare-fun lt!2284777 () Bool)

(assert (=> b!5739310 (= res!2423972 (not lt!2284777))))

(declare-fun b!5739311 () Bool)

(declare-fun e!3528056 () Bool)

(assert (=> b!5739311 (= e!3528056 (not (= (head!12149 s!2326) (c!1012627 lt!2284521))))))

(declare-fun b!5739312 () Bool)

(declare-fun res!2423975 () Bool)

(assert (=> b!5739312 (=> res!2423975 e!3528057)))

(declare-fun e!3528054 () Bool)

(assert (=> b!5739312 (= res!2423975 e!3528054)))

(declare-fun res!2423976 () Bool)

(assert (=> b!5739312 (=> (not res!2423976) (not e!3528054))))

(assert (=> b!5739312 (= res!2423976 lt!2284777)))

(declare-fun d!1809255 () Bool)

(declare-fun e!3528053 () Bool)

(assert (=> d!1809255 e!3528053))

(declare-fun c!1012967 () Bool)

(assert (=> d!1809255 (= c!1012967 ((_ is EmptyExpr!15747) lt!2284521))))

(declare-fun e!3528052 () Bool)

(assert (=> d!1809255 (= lt!2284777 e!3528052)))

(declare-fun c!1012966 () Bool)

(assert (=> d!1809255 (= c!1012966 (isEmpty!35300 s!2326))))

(assert (=> d!1809255 (validRegex!7483 lt!2284521)))

(assert (=> d!1809255 (= (matchR!7932 lt!2284521 s!2326) lt!2284777)))

(declare-fun b!5739313 () Bool)

(assert (=> b!5739313 (= e!3528052 (matchR!7932 (derivativeStep!4538 lt!2284521 (head!12149 s!2326)) (tail!11244 s!2326)))))

(declare-fun b!5739314 () Bool)

(declare-fun res!2423973 () Bool)

(assert (=> b!5739314 (=> res!2423973 e!3528056)))

(assert (=> b!5739314 (= res!2423973 (not (isEmpty!35300 (tail!11244 s!2326))))))

(declare-fun b!5739315 () Bool)

(declare-fun e!3528055 () Bool)

(assert (=> b!5739315 (= e!3528053 e!3528055)))

(declare-fun c!1012968 () Bool)

(assert (=> b!5739315 (= c!1012968 ((_ is EmptyLang!15747) lt!2284521))))

(declare-fun b!5739316 () Bool)

(declare-fun res!2423971 () Bool)

(assert (=> b!5739316 (=> (not res!2423971) (not e!3528054))))

(assert (=> b!5739316 (= res!2423971 (isEmpty!35300 (tail!11244 s!2326)))))

(declare-fun b!5739317 () Bool)

(assert (=> b!5739317 (= e!3528051 e!3528056)))

(declare-fun res!2423970 () Bool)

(assert (=> b!5739317 (=> res!2423970 e!3528056)))

(declare-fun call!438758 () Bool)

(assert (=> b!5739317 (= res!2423970 call!438758)))

(declare-fun b!5739318 () Bool)

(assert (=> b!5739318 (= e!3528053 (= lt!2284777 call!438758))))

(declare-fun b!5739319 () Bool)

(declare-fun res!2423977 () Bool)

(assert (=> b!5739319 (=> (not res!2423977) (not e!3528054))))

(assert (=> b!5739319 (= res!2423977 (not call!438758))))

(declare-fun b!5739320 () Bool)

(assert (=> b!5739320 (= e!3528054 (= (head!12149 s!2326) (c!1012627 lt!2284521)))))

(declare-fun b!5739321 () Bool)

(assert (=> b!5739321 (= e!3528055 (not lt!2284777))))

(declare-fun bm!438753 () Bool)

(assert (=> bm!438753 (= call!438758 (isEmpty!35300 s!2326))))

(declare-fun b!5739322 () Bool)

(assert (=> b!5739322 (= e!3528052 (nullable!5779 lt!2284521))))

(declare-fun b!5739323 () Bool)

(declare-fun res!2423974 () Bool)

(assert (=> b!5739323 (=> res!2423974 e!3528057)))

(assert (=> b!5739323 (= res!2423974 (not ((_ is ElementMatch!15747) lt!2284521)))))

(assert (=> b!5739323 (= e!3528055 e!3528057)))

(assert (= (and d!1809255 c!1012966) b!5739322))

(assert (= (and d!1809255 (not c!1012966)) b!5739313))

(assert (= (and d!1809255 c!1012967) b!5739318))

(assert (= (and d!1809255 (not c!1012967)) b!5739315))

(assert (= (and b!5739315 c!1012968) b!5739321))

(assert (= (and b!5739315 (not c!1012968)) b!5739323))

(assert (= (and b!5739323 (not res!2423974)) b!5739312))

(assert (= (and b!5739312 res!2423976) b!5739319))

(assert (= (and b!5739319 res!2423977) b!5739316))

(assert (= (and b!5739316 res!2423971) b!5739320))

(assert (= (and b!5739312 (not res!2423975)) b!5739310))

(assert (= (and b!5739310 res!2423972) b!5739317))

(assert (= (and b!5739317 (not res!2423970)) b!5739314))

(assert (= (and b!5739314 (not res!2423973)) b!5739311))

(assert (= (or b!5739318 b!5739317 b!5739319) bm!438753))

(assert (=> b!5739313 m!6690436))

(assert (=> b!5739313 m!6690436))

(declare-fun m!6691576 () Bool)

(assert (=> b!5739313 m!6691576))

(assert (=> b!5739313 m!6690440))

(assert (=> b!5739313 m!6691576))

(assert (=> b!5739313 m!6690440))

(declare-fun m!6691578 () Bool)

(assert (=> b!5739313 m!6691578))

(assert (=> b!5739314 m!6690440))

(assert (=> b!5739314 m!6690440))

(assert (=> b!5739314 m!6690444))

(assert (=> b!5739316 m!6690440))

(assert (=> b!5739316 m!6690440))

(assert (=> b!5739316 m!6690444))

(assert (=> b!5739311 m!6690436))

(assert (=> b!5739320 m!6690436))

(assert (=> d!1809255 m!6690394))

(assert (=> d!1809255 m!6691410))

(assert (=> bm!438753 m!6690394))

(assert (=> b!5739322 m!6691412))

(assert (=> b!5738035 d!1809255))

(declare-fun d!1809257 () Bool)

(assert (=> d!1809257 (= (matchR!7932 lt!2284521 s!2326) (matchRSpec!2850 lt!2284521 s!2326))))

(declare-fun lt!2284778 () Unit!156520)

(assert (=> d!1809257 (= lt!2284778 (choose!43514 lt!2284521 s!2326))))

(assert (=> d!1809257 (validRegex!7483 lt!2284521)))

(assert (=> d!1809257 (= (mainMatchTheorem!2850 lt!2284521 s!2326) lt!2284778)))

(declare-fun bs!1341647 () Bool)

(assert (= bs!1341647 d!1809257))

(assert (=> bs!1341647 m!6690142))

(assert (=> bs!1341647 m!6690140))

(declare-fun m!6691580 () Bool)

(assert (=> bs!1341647 m!6691580))

(assert (=> bs!1341647 m!6691410))

(assert (=> b!5738035 d!1809257))

(declare-fun d!1809259 () Bool)

(assert (=> d!1809259 (= (nullable!5779 (regOne!32006 (regOne!32006 r!7292))) (nullableFct!1831 (regOne!32006 (regOne!32006 r!7292))))))

(declare-fun bs!1341648 () Bool)

(assert (= bs!1341648 d!1809259))

(declare-fun m!6691582 () Bool)

(assert (=> bs!1341648 m!6691582))

(assert (=> b!5738016 d!1809259))

(declare-fun b!5739342 () Bool)

(declare-fun res!2423988 () Bool)

(declare-fun e!3528069 () Bool)

(assert (=> b!5739342 (=> (not res!2423988) (not e!3528069))))

(declare-fun lt!2284785 () Option!15756)

(assert (=> b!5739342 (= res!2423988 (matchZipper!1885 lt!2284530 (_2!36147 (get!21876 lt!2284785))))))

(declare-fun b!5739343 () Bool)

(declare-fun e!3528071 () Option!15756)

(assert (=> b!5739343 (= e!3528071 None!15755)))

(declare-fun b!5739344 () Bool)

(declare-fun e!3528070 () Bool)

(assert (=> b!5739344 (= e!3528070 (not (isDefined!12459 lt!2284785)))))

(declare-fun d!1809261 () Bool)

(assert (=> d!1809261 e!3528070))

(declare-fun res!2423990 () Bool)

(assert (=> d!1809261 (=> res!2423990 e!3528070)))

(assert (=> d!1809261 (= res!2423990 e!3528069)))

(declare-fun res!2423991 () Bool)

(assert (=> d!1809261 (=> (not res!2423991) (not e!3528069))))

(assert (=> d!1809261 (= res!2423991 (isDefined!12459 lt!2284785))))

(declare-fun e!3528072 () Option!15756)

(assert (=> d!1809261 (= lt!2284785 e!3528072)))

(declare-fun c!1012974 () Bool)

(declare-fun e!3528068 () Bool)

(assert (=> d!1809261 (= c!1012974 e!3528068)))

(declare-fun res!2423989 () Bool)

(assert (=> d!1809261 (=> (not res!2423989) (not e!3528068))))

(assert (=> d!1809261 (= res!2423989 (matchZipper!1885 lt!2284485 Nil!63416))))

(assert (=> d!1809261 (= (++!13967 Nil!63416 s!2326) s!2326)))

(assert (=> d!1809261 (= (findConcatSeparationZippers!134 lt!2284485 lt!2284530 Nil!63416 s!2326 s!2326) lt!2284785)))

(declare-fun b!5739345 () Bool)

(assert (=> b!5739345 (= e!3528072 (Some!15755 (tuple2!65689 Nil!63416 s!2326)))))

(declare-fun b!5739346 () Bool)

(assert (=> b!5739346 (= e!3528068 (matchZipper!1885 lt!2284530 s!2326))))

(declare-fun b!5739347 () Bool)

(declare-fun res!2423992 () Bool)

(assert (=> b!5739347 (=> (not res!2423992) (not e!3528069))))

(assert (=> b!5739347 (= res!2423992 (matchZipper!1885 lt!2284485 (_1!36147 (get!21876 lt!2284785))))))

(declare-fun b!5739348 () Bool)

(assert (=> b!5739348 (= e!3528069 (= (++!13967 (_1!36147 (get!21876 lt!2284785)) (_2!36147 (get!21876 lt!2284785))) s!2326))))

(declare-fun b!5739349 () Bool)

(declare-fun lt!2284786 () Unit!156520)

(declare-fun lt!2284787 () Unit!156520)

(assert (=> b!5739349 (= lt!2284786 lt!2284787)))

(assert (=> b!5739349 (= (++!13967 (++!13967 Nil!63416 (Cons!63416 (h!69864 s!2326) Nil!63416)) (t!376868 s!2326)) s!2326)))

(assert (=> b!5739349 (= lt!2284787 (lemmaMoveElementToOtherListKeepsConcatEq!2088 Nil!63416 (h!69864 s!2326) (t!376868 s!2326) s!2326))))

(assert (=> b!5739349 (= e!3528071 (findConcatSeparationZippers!134 lt!2284485 lt!2284530 (++!13967 Nil!63416 (Cons!63416 (h!69864 s!2326) Nil!63416)) (t!376868 s!2326) s!2326))))

(declare-fun b!5739350 () Bool)

(assert (=> b!5739350 (= e!3528072 e!3528071)))

(declare-fun c!1012973 () Bool)

(assert (=> b!5739350 (= c!1012973 ((_ is Nil!63416) s!2326))))

(assert (= (and d!1809261 res!2423989) b!5739346))

(assert (= (and d!1809261 c!1012974) b!5739345))

(assert (= (and d!1809261 (not c!1012974)) b!5739350))

(assert (= (and b!5739350 c!1012973) b!5739343))

(assert (= (and b!5739350 (not c!1012973)) b!5739349))

(assert (= (and d!1809261 res!2423991) b!5739347))

(assert (= (and b!5739347 res!2423992) b!5739342))

(assert (= (and b!5739342 res!2423988) b!5739348))

(assert (= (and d!1809261 (not res!2423990)) b!5739344))

(declare-fun m!6691584 () Bool)

(assert (=> b!5739346 m!6691584))

(declare-fun m!6691586 () Bool)

(assert (=> d!1809261 m!6691586))

(declare-fun m!6691588 () Bool)

(assert (=> d!1809261 m!6691588))

(declare-fun m!6691590 () Bool)

(assert (=> d!1809261 m!6691590))

(declare-fun m!6691592 () Bool)

(assert (=> b!5739347 m!6691592))

(declare-fun m!6691594 () Bool)

(assert (=> b!5739347 m!6691594))

(assert (=> b!5739348 m!6691592))

(declare-fun m!6691596 () Bool)

(assert (=> b!5739348 m!6691596))

(assert (=> b!5739344 m!6691586))

(assert (=> b!5739349 m!6690926))

(assert (=> b!5739349 m!6690926))

(assert (=> b!5739349 m!6690928))

(assert (=> b!5739349 m!6690930))

(assert (=> b!5739349 m!6690926))

(declare-fun m!6691598 () Bool)

(assert (=> b!5739349 m!6691598))

(assert (=> b!5739342 m!6691592))

(declare-fun m!6691600 () Bool)

(assert (=> b!5739342 m!6691600))

(assert (=> b!5738015 d!1809261))

(declare-fun d!1809263 () Bool)

(assert (=> d!1809263 (isDefined!12459 (findConcatSeparationZippers!134 lt!2284485 (store ((as const (Array Context!10262 Bool)) false) lt!2284522 true) Nil!63416 s!2326 s!2326))))

(declare-fun lt!2284790 () Unit!156520)

(declare-fun choose!43542 ((InoxSet Context!10262) Context!10262 List!63540) Unit!156520)

(assert (=> d!1809263 (= lt!2284790 (choose!43542 lt!2284485 lt!2284522 s!2326))))

(assert (=> d!1809263 (matchZipper!1885 (appendTo!126 lt!2284485 lt!2284522) s!2326)))

(assert (=> d!1809263 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!134 lt!2284485 lt!2284522 s!2326) lt!2284790)))

(declare-fun bs!1341649 () Bool)

(assert (= bs!1341649 d!1809263))

(assert (=> bs!1341649 m!6690122))

(assert (=> bs!1341649 m!6690116))

(assert (=> bs!1341649 m!6690122))

(declare-fun m!6691602 () Bool)

(assert (=> bs!1341649 m!6691602))

(assert (=> bs!1341649 m!6690116))

(declare-fun m!6691604 () Bool)

(assert (=> bs!1341649 m!6691604))

(assert (=> bs!1341649 m!6691602))

(declare-fun m!6691606 () Bool)

(assert (=> bs!1341649 m!6691606))

(declare-fun m!6691608 () Bool)

(assert (=> bs!1341649 m!6691608))

(assert (=> b!5738015 d!1809263))

(declare-fun d!1809265 () Bool)

(declare-fun e!3528073 () Bool)

(assert (=> d!1809265 e!3528073))

(declare-fun res!2423994 () Bool)

(assert (=> d!1809265 (=> (not res!2423994) (not e!3528073))))

(declare-fun lt!2284791 () List!63540)

(assert (=> d!1809265 (= res!2423994 (= (content!11563 lt!2284791) ((_ map or) (content!11563 (_1!36147 lt!2284469)) (content!11563 (_2!36147 lt!2284469)))))))

(declare-fun e!3528074 () List!63540)

(assert (=> d!1809265 (= lt!2284791 e!3528074)))

(declare-fun c!1012975 () Bool)

(assert (=> d!1809265 (= c!1012975 ((_ is Nil!63416) (_1!36147 lt!2284469)))))

(assert (=> d!1809265 (= (++!13967 (_1!36147 lt!2284469) (_2!36147 lt!2284469)) lt!2284791)))

(declare-fun b!5739353 () Bool)

(declare-fun res!2423993 () Bool)

(assert (=> b!5739353 (=> (not res!2423993) (not e!3528073))))

(assert (=> b!5739353 (= res!2423993 (= (size!40065 lt!2284791) (+ (size!40065 (_1!36147 lt!2284469)) (size!40065 (_2!36147 lt!2284469)))))))

(declare-fun b!5739352 () Bool)

(assert (=> b!5739352 (= e!3528074 (Cons!63416 (h!69864 (_1!36147 lt!2284469)) (++!13967 (t!376868 (_1!36147 lt!2284469)) (_2!36147 lt!2284469))))))

(declare-fun b!5739351 () Bool)

(assert (=> b!5739351 (= e!3528074 (_2!36147 lt!2284469))))

(declare-fun b!5739354 () Bool)

(assert (=> b!5739354 (= e!3528073 (or (not (= (_2!36147 lt!2284469) Nil!63416)) (= lt!2284791 (_1!36147 lt!2284469))))))

(assert (= (and d!1809265 c!1012975) b!5739351))

(assert (= (and d!1809265 (not c!1012975)) b!5739352))

(assert (= (and d!1809265 res!2423994) b!5739353))

(assert (= (and b!5739353 res!2423993) b!5739354))

(declare-fun m!6691610 () Bool)

(assert (=> d!1809265 m!6691610))

(declare-fun m!6691612 () Bool)

(assert (=> d!1809265 m!6691612))

(declare-fun m!6691614 () Bool)

(assert (=> d!1809265 m!6691614))

(declare-fun m!6691616 () Bool)

(assert (=> b!5739353 m!6691616))

(declare-fun m!6691618 () Bool)

(assert (=> b!5739353 m!6691618))

(declare-fun m!6691620 () Bool)

(assert (=> b!5739353 m!6691620))

(declare-fun m!6691622 () Bool)

(assert (=> b!5739352 m!6691622))

(assert (=> b!5738015 d!1809265))

(declare-fun d!1809267 () Bool)

(assert (=> d!1809267 (= (get!21876 lt!2284483) (v!51810 lt!2284483))))

(assert (=> b!5738015 d!1809267))

(declare-fun d!1809269 () Bool)

(assert (=> d!1809269 (= (isDefined!12459 lt!2284483) (not (isEmpty!35302 lt!2284483)))))

(declare-fun bs!1341650 () Bool)

(assert (= bs!1341650 d!1809269))

(declare-fun m!6691624 () Bool)

(assert (=> bs!1341650 m!6691624))

(assert (=> b!5738015 d!1809269))

(declare-fun d!1809271 () Bool)

(declare-fun c!1012976 () Bool)

(assert (=> d!1809271 (= c!1012976 (isEmpty!35300 (t!376868 s!2326)))))

(declare-fun e!3528075 () Bool)

(assert (=> d!1809271 (= (matchZipper!1885 lt!2284475 (t!376868 s!2326)) e!3528075)))

(declare-fun b!5739355 () Bool)

(assert (=> b!5739355 (= e!3528075 (nullableZipper!1685 lt!2284475))))

(declare-fun b!5739356 () Bool)

(assert (=> b!5739356 (= e!3528075 (matchZipper!1885 (derivationStepZipper!1830 lt!2284475 (head!12149 (t!376868 s!2326))) (tail!11244 (t!376868 s!2326))))))

(assert (= (and d!1809271 c!1012976) b!5739355))

(assert (= (and d!1809271 (not c!1012976)) b!5739356))

(assert (=> d!1809271 m!6690490))

(declare-fun m!6691626 () Bool)

(assert (=> b!5739355 m!6691626))

(assert (=> b!5739356 m!6690494))

(assert (=> b!5739356 m!6690494))

(declare-fun m!6691628 () Bool)

(assert (=> b!5739356 m!6691628))

(assert (=> b!5739356 m!6690498))

(assert (=> b!5739356 m!6691628))

(assert (=> b!5739356 m!6690498))

(declare-fun m!6691630 () Bool)

(assert (=> b!5739356 m!6691630))

(assert (=> b!5738033 d!1809271))

(declare-fun e!3528078 () Bool)

(declare-fun d!1809273 () Bool)

(assert (=> d!1809273 (= (matchZipper!1885 ((_ map or) lt!2284475 lt!2284476) (t!376868 s!2326)) e!3528078)))

(declare-fun res!2423997 () Bool)

(assert (=> d!1809273 (=> res!2423997 e!3528078)))

(assert (=> d!1809273 (= res!2423997 (matchZipper!1885 lt!2284475 (t!376868 s!2326)))))

(declare-fun lt!2284794 () Unit!156520)

(declare-fun choose!43543 ((InoxSet Context!10262) (InoxSet Context!10262) List!63540) Unit!156520)

(assert (=> d!1809273 (= lt!2284794 (choose!43543 lt!2284475 lt!2284476 (t!376868 s!2326)))))

(assert (=> d!1809273 (= (lemmaZipperConcatMatchesSameAsBothZippers!772 lt!2284475 lt!2284476 (t!376868 s!2326)) lt!2284794)))

(declare-fun b!5739359 () Bool)

(assert (=> b!5739359 (= e!3528078 (matchZipper!1885 lt!2284476 (t!376868 s!2326)))))

(assert (= (and d!1809273 (not res!2423997)) b!5739359))

(assert (=> d!1809273 m!6690248))

(assert (=> d!1809273 m!6690230))

(declare-fun m!6691632 () Bool)

(assert (=> d!1809273 m!6691632))

(assert (=> b!5739359 m!6690150))

(assert (=> b!5738012 d!1809273))

(assert (=> b!5738012 d!1809271))

(declare-fun d!1809275 () Bool)

(declare-fun c!1012977 () Bool)

(assert (=> d!1809275 (= c!1012977 (isEmpty!35300 (t!376868 s!2326)))))

(declare-fun e!3528079 () Bool)

(assert (=> d!1809275 (= (matchZipper!1885 ((_ map or) lt!2284475 lt!2284476) (t!376868 s!2326)) e!3528079)))

(declare-fun b!5739360 () Bool)

(assert (=> b!5739360 (= e!3528079 (nullableZipper!1685 ((_ map or) lt!2284475 lt!2284476)))))

(declare-fun b!5739361 () Bool)

(assert (=> b!5739361 (= e!3528079 (matchZipper!1885 (derivationStepZipper!1830 ((_ map or) lt!2284475 lt!2284476) (head!12149 (t!376868 s!2326))) (tail!11244 (t!376868 s!2326))))))

(assert (= (and d!1809275 c!1012977) b!5739360))

(assert (= (and d!1809275 (not c!1012977)) b!5739361))

(assert (=> d!1809275 m!6690490))

(declare-fun m!6691634 () Bool)

(assert (=> b!5739360 m!6691634))

(assert (=> b!5739361 m!6690494))

(assert (=> b!5739361 m!6690494))

(declare-fun m!6691636 () Bool)

(assert (=> b!5739361 m!6691636))

(assert (=> b!5739361 m!6690498))

(assert (=> b!5739361 m!6691636))

(assert (=> b!5739361 m!6690498))

(declare-fun m!6691638 () Bool)

(assert (=> b!5739361 m!6691638))

(assert (=> b!5738012 d!1809275))

(declare-fun d!1809277 () Bool)

(declare-fun lt!2284795 () Regex!15747)

(assert (=> d!1809277 (validRegex!7483 lt!2284795)))

(assert (=> d!1809277 (= lt!2284795 (generalisedUnion!1610 (unfocusZipperList!1175 zl!343)))))

(assert (=> d!1809277 (= (unfocusZipper!1489 zl!343) lt!2284795)))

(declare-fun bs!1341651 () Bool)

(assert (= bs!1341651 d!1809277))

(declare-fun m!6691640 () Bool)

(assert (=> bs!1341651 m!6691640))

(assert (=> bs!1341651 m!6690164))

(assert (=> bs!1341651 m!6690164))

(assert (=> bs!1341651 m!6690166))

(assert (=> b!5738034 d!1809277))

(declare-fun b!5739366 () Bool)

(declare-fun e!3528082 () Bool)

(declare-fun tp!1587113 () Bool)

(declare-fun tp!1587114 () Bool)

(assert (=> b!5739366 (= e!3528082 (and tp!1587113 tp!1587114))))

(assert (=> b!5738036 (= tp!1587049 e!3528082)))

(assert (= (and b!5738036 ((_ is Cons!63417) (exprs!5631 setElem!38509))) b!5739366))

(declare-fun e!3528085 () Bool)

(assert (=> b!5738010 (= tp!1587041 e!3528085)))

(declare-fun b!5739378 () Bool)

(declare-fun tp!1587125 () Bool)

(declare-fun tp!1587128 () Bool)

(assert (=> b!5739378 (= e!3528085 (and tp!1587125 tp!1587128))))

(declare-fun b!5739377 () Bool)

(assert (=> b!5739377 (= e!3528085 tp_is_empty!40747)))

(declare-fun b!5739380 () Bool)

(declare-fun tp!1587126 () Bool)

(declare-fun tp!1587127 () Bool)

(assert (=> b!5739380 (= e!3528085 (and tp!1587126 tp!1587127))))

(declare-fun b!5739379 () Bool)

(declare-fun tp!1587129 () Bool)

(assert (=> b!5739379 (= e!3528085 tp!1587129)))

(assert (= (and b!5738010 ((_ is ElementMatch!15747) (reg!16076 r!7292))) b!5739377))

(assert (= (and b!5738010 ((_ is Concat!24592) (reg!16076 r!7292))) b!5739378))

(assert (= (and b!5738010 ((_ is Star!15747) (reg!16076 r!7292))) b!5739379))

(assert (= (and b!5738010 ((_ is Union!15747) (reg!16076 r!7292))) b!5739380))

(declare-fun condSetEmpty!38515 () Bool)

(assert (=> setNonEmpty!38509 (= condSetEmpty!38515 (= setRest!38509 ((as const (Array Context!10262 Bool)) false)))))

(declare-fun setRes!38515 () Bool)

(assert (=> setNonEmpty!38509 (= tp!1587043 setRes!38515)))

(declare-fun setIsEmpty!38515 () Bool)

(assert (=> setIsEmpty!38515 setRes!38515))

(declare-fun setElem!38515 () Context!10262)

(declare-fun setNonEmpty!38515 () Bool)

(declare-fun tp!1587135 () Bool)

(declare-fun e!3528088 () Bool)

(assert (=> setNonEmpty!38515 (= setRes!38515 (and tp!1587135 (inv!82614 setElem!38515) e!3528088))))

(declare-fun setRest!38515 () (InoxSet Context!10262))

(assert (=> setNonEmpty!38515 (= setRest!38509 ((_ map or) (store ((as const (Array Context!10262 Bool)) false) setElem!38515 true) setRest!38515))))

(declare-fun b!5739385 () Bool)

(declare-fun tp!1587134 () Bool)

(assert (=> b!5739385 (= e!3528088 tp!1587134)))

(assert (= (and setNonEmpty!38509 condSetEmpty!38515) setIsEmpty!38515))

(assert (= (and setNonEmpty!38509 (not condSetEmpty!38515)) setNonEmpty!38515))

(assert (= setNonEmpty!38515 b!5739385))

(declare-fun m!6691642 () Bool)

(assert (=> setNonEmpty!38515 m!6691642))

(declare-fun b!5739390 () Bool)

(declare-fun e!3528091 () Bool)

(declare-fun tp!1587138 () Bool)

(assert (=> b!5739390 (= e!3528091 (and tp_is_empty!40747 tp!1587138))))

(assert (=> b!5738046 (= tp!1587042 e!3528091)))

(assert (= (and b!5738046 ((_ is Cons!63416) (t!376868 s!2326))) b!5739390))

(declare-fun e!3528092 () Bool)

(assert (=> b!5738013 (= tp!1587046 e!3528092)))

(declare-fun b!5739392 () Bool)

(declare-fun tp!1587139 () Bool)

(declare-fun tp!1587142 () Bool)

(assert (=> b!5739392 (= e!3528092 (and tp!1587139 tp!1587142))))

(declare-fun b!5739391 () Bool)

(assert (=> b!5739391 (= e!3528092 tp_is_empty!40747)))

(declare-fun b!5739394 () Bool)

(declare-fun tp!1587140 () Bool)

(declare-fun tp!1587141 () Bool)

(assert (=> b!5739394 (= e!3528092 (and tp!1587140 tp!1587141))))

(declare-fun b!5739393 () Bool)

(declare-fun tp!1587143 () Bool)

(assert (=> b!5739393 (= e!3528092 tp!1587143)))

(assert (= (and b!5738013 ((_ is ElementMatch!15747) (regOne!32007 r!7292))) b!5739391))

(assert (= (and b!5738013 ((_ is Concat!24592) (regOne!32007 r!7292))) b!5739392))

(assert (= (and b!5738013 ((_ is Star!15747) (regOne!32007 r!7292))) b!5739393))

(assert (= (and b!5738013 ((_ is Union!15747) (regOne!32007 r!7292))) b!5739394))

(declare-fun e!3528093 () Bool)

(assert (=> b!5738013 (= tp!1587050 e!3528093)))

(declare-fun b!5739396 () Bool)

(declare-fun tp!1587144 () Bool)

(declare-fun tp!1587147 () Bool)

(assert (=> b!5739396 (= e!3528093 (and tp!1587144 tp!1587147))))

(declare-fun b!5739395 () Bool)

(assert (=> b!5739395 (= e!3528093 tp_is_empty!40747)))

(declare-fun b!5739398 () Bool)

(declare-fun tp!1587145 () Bool)

(declare-fun tp!1587146 () Bool)

(assert (=> b!5739398 (= e!3528093 (and tp!1587145 tp!1587146))))

(declare-fun b!5739397 () Bool)

(declare-fun tp!1587148 () Bool)

(assert (=> b!5739397 (= e!3528093 tp!1587148)))

(assert (= (and b!5738013 ((_ is ElementMatch!15747) (regTwo!32007 r!7292))) b!5739395))

(assert (= (and b!5738013 ((_ is Concat!24592) (regTwo!32007 r!7292))) b!5739396))

(assert (= (and b!5738013 ((_ is Star!15747) (regTwo!32007 r!7292))) b!5739397))

(assert (= (and b!5738013 ((_ is Union!15747) (regTwo!32007 r!7292))) b!5739398))

(declare-fun e!3528094 () Bool)

(assert (=> b!5738009 (= tp!1587044 e!3528094)))

(declare-fun b!5739400 () Bool)

(declare-fun tp!1587149 () Bool)

(declare-fun tp!1587152 () Bool)

(assert (=> b!5739400 (= e!3528094 (and tp!1587149 tp!1587152))))

(declare-fun b!5739399 () Bool)

(assert (=> b!5739399 (= e!3528094 tp_is_empty!40747)))

(declare-fun b!5739402 () Bool)

(declare-fun tp!1587150 () Bool)

(declare-fun tp!1587151 () Bool)

(assert (=> b!5739402 (= e!3528094 (and tp!1587150 tp!1587151))))

(declare-fun b!5739401 () Bool)

(declare-fun tp!1587153 () Bool)

(assert (=> b!5739401 (= e!3528094 tp!1587153)))

(assert (= (and b!5738009 ((_ is ElementMatch!15747) (regOne!32006 r!7292))) b!5739399))

(assert (= (and b!5738009 ((_ is Concat!24592) (regOne!32006 r!7292))) b!5739400))

(assert (= (and b!5738009 ((_ is Star!15747) (regOne!32006 r!7292))) b!5739401))

(assert (= (and b!5738009 ((_ is Union!15747) (regOne!32006 r!7292))) b!5739402))

(declare-fun e!3528095 () Bool)

(assert (=> b!5738009 (= tp!1587048 e!3528095)))

(declare-fun b!5739404 () Bool)

(declare-fun tp!1587154 () Bool)

(declare-fun tp!1587157 () Bool)

(assert (=> b!5739404 (= e!3528095 (and tp!1587154 tp!1587157))))

(declare-fun b!5739403 () Bool)

(assert (=> b!5739403 (= e!3528095 tp_is_empty!40747)))

(declare-fun b!5739406 () Bool)

(declare-fun tp!1587155 () Bool)

(declare-fun tp!1587156 () Bool)

(assert (=> b!5739406 (= e!3528095 (and tp!1587155 tp!1587156))))

(declare-fun b!5739405 () Bool)

(declare-fun tp!1587158 () Bool)

(assert (=> b!5739405 (= e!3528095 tp!1587158)))

(assert (= (and b!5738009 ((_ is ElementMatch!15747) (regTwo!32006 r!7292))) b!5739403))

(assert (= (and b!5738009 ((_ is Concat!24592) (regTwo!32006 r!7292))) b!5739404))

(assert (= (and b!5738009 ((_ is Star!15747) (regTwo!32006 r!7292))) b!5739405))

(assert (= (and b!5738009 ((_ is Union!15747) (regTwo!32006 r!7292))) b!5739406))

(declare-fun b!5739407 () Bool)

(declare-fun e!3528096 () Bool)

(declare-fun tp!1587159 () Bool)

(declare-fun tp!1587160 () Bool)

(assert (=> b!5739407 (= e!3528096 (and tp!1587159 tp!1587160))))

(assert (=> b!5738014 (= tp!1587045 e!3528096)))

(assert (= (and b!5738014 ((_ is Cons!63417) (exprs!5631 (h!69866 zl!343)))) b!5739407))

(declare-fun b!5739415 () Bool)

(declare-fun e!3528102 () Bool)

(declare-fun tp!1587165 () Bool)

(assert (=> b!5739415 (= e!3528102 tp!1587165)))

(declare-fun b!5739414 () Bool)

(declare-fun tp!1587166 () Bool)

(declare-fun e!3528101 () Bool)

(assert (=> b!5739414 (= e!3528101 (and (inv!82614 (h!69866 (t!376870 zl!343))) e!3528102 tp!1587166))))

(assert (=> b!5738018 (= tp!1587047 e!3528101)))

(assert (= b!5739414 b!5739415))

(assert (= (and b!5738018 ((_ is Cons!63418) (t!376870 zl!343))) b!5739414))

(declare-fun m!6691644 () Bool)

(assert (=> b!5739414 m!6691644))

(declare-fun b_lambda!216717 () Bool)

(assert (= b_lambda!216699 (or b!5738029 b_lambda!216717)))

(declare-fun bs!1341652 () Bool)

(declare-fun d!1809279 () Bool)

(assert (= bs!1341652 (and d!1809279 b!5738029)))

(assert (=> bs!1341652 (= (dynLambda!24818 lambda!311098 lt!2284522) (derivationStepZipperUp!1015 lt!2284522 (h!69864 s!2326)))))

(assert (=> bs!1341652 m!6690128))

(assert (=> d!1809103 d!1809279))

(declare-fun b_lambda!216719 () Bool)

(assert (= b_lambda!216701 (or b!5738029 b_lambda!216719)))

(declare-fun bs!1341653 () Bool)

(declare-fun d!1809281 () Bool)

(assert (= bs!1341653 (and d!1809281 b!5738029)))

(assert (=> bs!1341653 (= (dynLambda!24818 lambda!311098 lt!2284528) (derivationStepZipperUp!1015 lt!2284528 (h!69864 s!2326)))))

(assert (=> bs!1341653 m!6690124))

(assert (=> d!1809109 d!1809281))

(declare-fun b_lambda!216721 () Bool)

(assert (= b_lambda!216689 (or b!5738029 b_lambda!216721)))

(declare-fun bs!1341654 () Bool)

(declare-fun d!1809283 () Bool)

(assert (= bs!1341654 (and d!1809283 b!5738029)))

(assert (=> bs!1341654 (= (dynLambda!24818 lambda!311098 lt!2284509) (derivationStepZipperUp!1015 lt!2284509 (h!69864 s!2326)))))

(assert (=> bs!1341654 m!6690160))

(assert (=> d!1808909 d!1809283))

(declare-fun b_lambda!216723 () Bool)

(assert (= b_lambda!216705 (or b!5738029 b_lambda!216723)))

(declare-fun bs!1341655 () Bool)

(declare-fun d!1809285 () Bool)

(assert (= bs!1341655 (and d!1809285 b!5738029)))

(assert (=> bs!1341655 (= (dynLambda!24818 lambda!311098 (h!69866 zl!343)) (derivationStepZipperUp!1015 (h!69866 zl!343) (h!69864 s!2326)))))

(assert (=> bs!1341655 m!6690042))

(assert (=> d!1809145 d!1809285))

(declare-fun b_lambda!216725 () Bool)

(assert (= b_lambda!216691 (or b!5738037 b_lambda!216725)))

(declare-fun bs!1341656 () Bool)

(declare-fun d!1809287 () Bool)

(assert (= bs!1341656 (and d!1809287 b!5738037)))

(declare-fun lt!2284796 () Unit!156520)

(assert (=> bs!1341656 (= lt!2284796 (lemmaConcatPreservesForall!316 (exprs!5631 lt!2284528) lt!2284480 lambda!311100))))

(assert (=> bs!1341656 (= (dynLambda!24819 lambda!311099 lt!2284528) (Context!10263 (++!13966 (exprs!5631 lt!2284528) lt!2284480)))))

(declare-fun m!6691646 () Bool)

(assert (=> bs!1341656 m!6691646))

(declare-fun m!6691648 () Bool)

(assert (=> bs!1341656 m!6691648))

(assert (=> d!1808921 d!1809287))

(check-sat (not b!5739380) (not bm!438724) (not b!5739414) (not d!1809119) (not b!5738275) (not b!5738801) (not d!1808985) (not bm!438750) (not b!5738915) (not b!5739347) (not b!5739299) (not bm!438751) (not b!5739106) (not d!1808911) (not b!5739406) (not bm!438644) (not d!1809097) (not d!1809041) (not d!1809037) (not bm!438753) (not d!1809029) (not d!1809137) (not bm!438714) (not b!5739346) (not b!5738957) (not b!5739153) (not b!5739098) (not b!5738476) (not d!1808961) (not b!5738833) (not d!1808993) (not b!5739216) (not b!5739093) (not b!5739096) (not b!5739359) (not b!5739102) (not d!1809099) (not b!5739378) (not b!5738719) (not b!5739415) (not b!5738805) (not b!5738919) (not b!5739355) (not b!5739192) (not d!1809031) (not d!1808979) (not b!5738528) (not b!5739060) (not d!1808967) (not b!5739067) (not d!1808983) (not bm!438716) (not b!5739058) (not b!5738891) (not d!1809221) (not b!5738698) (not d!1809199) (not b!5738956) (not bm!438685) (not b!5739400) (not bm!438699) (not b!5739158) (not b!5738186) (not bs!1341656) (not d!1809049) (not b!5738273) (not d!1809265) (not b!5738713) (not d!1809033) (not b!5738964) (not d!1808859) (not b!5738936) (not b!5739385) (not d!1809185) (not b_lambda!216725) (not b!5738920) (not b!5739190) (not b!5738513) (not b!5739164) (not d!1808937) (not b!5738712) (not b!5739017) (not b!5738358) (not b!5738917) (not d!1809275) (not d!1808901) (not b!5739292) (not b!5739063) (not d!1809067) (not b!5738931) (not b!5739014) (not b!5738484) (not b!5738926) (not d!1808975) (not d!1809259) (not d!1808863) (not b!5739342) (not b!5739314) (not b!5739407) (not b!5738529) (not b!5739352) (not bm!438752) (not b!5739316) (not b!5738465) (not b!5738715) (not bm!438689) (not bm!438698) (not b!5739104) (not b_lambda!216719) (not b!5739090) (not b!5739019) (not b!5738692) (not b!5739390) (not d!1808919) (not b!5738508) (not b!5738264) (not d!1809065) (not d!1809277) (not d!1809133) (not b!5738475) (not d!1809145) (not d!1809157) (not b!5738478) (not b!5738194) (not d!1808925) (not d!1808915) (not b!5739402) (not bm!438741) (not b!5739210) (not d!1809239) (not b!5738802) (not b!5738942) (not d!1808917) (not b!5739012) (not bs!1341655) (not d!1808921) (not b!5738466) (not b!5738357) (not b!5739353) (not b!5739107) (not b!5738806) (not d!1809261) (not b!5738836) (not b!5739379) (not b!5738882) (not b!5739207) (not d!1809263) (not b!5739398) (not b!5738832) (not d!1809045) (not d!1809053) (not b!5738963) (not b!5738934) (not b!5738512) (not d!1809101) tp_is_empty!40747 (not d!1808965) (not b!5739361) (not b!5738701) (not d!1809155) (not b!5739313) (not d!1809269) (not d!1808927) (not d!1808933) (not b!5738390) (not d!1808923) (not d!1809203) (not b!5738407) (not bm!438727) (not b!5739307) (not b!5738940) (not b!5739183) (not d!1809121) (not b!5739095) (not bm!438709) (not bm!438643) (not b!5739401) (not b!5738266) (not b!5739156) (not b!5738433) (not d!1809123) (not b!5738487) (not b!5739155) (not d!1809005) (not b!5739394) (not d!1809113) (not b!5738804) (not b!5738803) (not b!5739091) (not b!5738694) (not b!5739009) (not b!5739397) (not d!1809231) (not d!1808899) (not bm!438636) (not b!5739029) (not bm!438628) (not d!1808977) (not b!5738315) (not bm!438701) (not bm!438711) (not d!1809187) (not d!1808909) (not bm!438645) (not d!1809217) (not d!1809211) (not d!1809003) (not b!5738628) (not bm!438629) (not bs!1341653) (not d!1809103) (not b!5739214) (not b!5739008) (not d!1809255) (not b!5739322) (not b!5738696) (not b!5738697) (not b!5738269) (not d!1809109) (not bm!438688) (not b!5739393) (not b!5738796) (not d!1809219) (not b!5738883) (not bm!438748) (not b!5739184) (not d!1809107) (not b!5738360) (not b!5738880) (not b!5739208) (not b!5739205) (not b!5738693) (not b!5739124) (not d!1809169) (not d!1809201) (not b!5739311) (not d!1809115) (not d!1809273) (not b!5738510) (not bm!438715) (not b!5738922) (not b!5738267) (not b!5739404) (not b!5738362) (not d!1808887) (not d!1809189) (not d!1808931) (not b!5739162) (not b!5738408) (not d!1809271) (not b!5739344) (not b!5738994) (not d!1809035) (not bm!438633) (not d!1808955) (not b!5738861) (not b!5738866) (not b!5739349) (not b!5738473) (not b!5738316) (not b!5739360) (not b!5738885) (not b!5738840) (not b!5738807) (not bm!438700) (not bm!438708) (not b!5739392) (not b!5738928) (not b!5739016) (not b!5738721) (not d!1809233) (not bs!1341652) (not b!5738857) (not b!5738710) (not b!5738488) (not b_lambda!216717) (not d!1808969) (not b!5738933) (not d!1809081) (not b!5738839) (not b!5738627) (not b!5739069) (not bm!438703) (not b!5739366) (not b!5738515) (not b!5738889) (not bm!438697) (not b!5739181) (not d!1809235) (not b!5738080) (not b!5738361) (not b!5738699) (not d!1809177) (not b!5738837) (not b!5739021) (not b!5739405) (not b!5739186) (not b!5738482) (not b!5739320) (not b!5738441) (not b!5738511) (not b!5738690) (not d!1809013) (not bm!438738) (not bm!438704) (not bm!438686) (not b!5738860) (not b!5739356) (not b_lambda!216723) (not bm!438740) (not b!5738835) (not b!5738389) (not d!1808935) (not d!1809257) (not bs!1341654) (not b!5739348) (not b!5739396) (not b!5739061) (not d!1809205) (not b!5738797) (not setNonEmpty!38515) (not b!5739015) (not b!5738865) (not b!5738359) (not b_lambda!216721))
(check-sat)
