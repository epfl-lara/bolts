; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!581324 () Bool)

(assert start!581324)

(declare-fun b!5597514 () Bool)

(assert (=> b!5597514 true))

(assert (=> b!5597514 true))

(declare-fun lambda!300569 () Int)

(declare-fun lambda!300568 () Int)

(assert (=> b!5597514 (not (= lambda!300569 lambda!300568))))

(assert (=> b!5597514 true))

(assert (=> b!5597514 true))

(declare-fun b!5597513 () Bool)

(assert (=> b!5597513 true))

(declare-fun b!5597498 () Bool)

(declare-fun res!2374351 () Bool)

(declare-fun e!3452921 () Bool)

(assert (=> b!5597498 (=> (not res!2374351) (not e!3452921))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!31440 0))(
  ( (C!31441 (val!25422 Int)) )
))
(declare-datatypes ((Regex!15585 0))(
  ( (ElementMatch!15585 (c!981334 C!31440)) (Concat!24430 (regOne!31682 Regex!15585) (regTwo!31682 Regex!15585)) (EmptyExpr!15585) (Star!15585 (reg!15914 Regex!15585)) (EmptyLang!15585) (Union!15585 (regOne!31683 Regex!15585) (regTwo!31683 Regex!15585)) )
))
(declare-datatypes ((List!63054 0))(
  ( (Nil!62930) (Cons!62930 (h!69378 Regex!15585) (t!376338 List!63054)) )
))
(declare-datatypes ((Context!9938 0))(
  ( (Context!9939 (exprs!5469 List!63054)) )
))
(declare-fun z!1189 () (InoxSet Context!9938))

(declare-datatypes ((List!63055 0))(
  ( (Nil!62931) (Cons!62931 (h!69379 Context!9938) (t!376339 List!63055)) )
))
(declare-fun zl!343 () List!63055)

(declare-fun toList!9369 ((InoxSet Context!9938)) List!63055)

(assert (=> b!5597498 (= res!2374351 (= (toList!9369 z!1189) zl!343))))

(declare-fun b!5597499 () Bool)

(declare-fun e!3452919 () Bool)

(declare-fun tp!1547840 () Bool)

(assert (=> b!5597499 (= e!3452919 tp!1547840)))

(declare-fun b!5597500 () Bool)

(declare-datatypes ((Unit!155772 0))(
  ( (Unit!155773) )
))
(declare-fun e!3452924 () Unit!155772)

(declare-fun Unit!155774 () Unit!155772)

(assert (=> b!5597500 (= e!3452924 Unit!155774)))

(declare-fun b!5597501 () Bool)

(declare-fun e!3452922 () Unit!155772)

(declare-fun Unit!155775 () Unit!155772)

(assert (=> b!5597501 (= e!3452922 Unit!155775)))

(declare-fun b!5597502 () Bool)

(declare-fun res!2374343 () Bool)

(declare-fun e!3452937 () Bool)

(assert (=> b!5597502 (=> res!2374343 e!3452937)))

(declare-fun r!7292 () Regex!15585)

(declare-fun generalisedUnion!1448 (List!63054) Regex!15585)

(declare-fun unfocusZipperList!1013 (List!63055) List!63054)

(assert (=> b!5597502 (= res!2374343 (not (= r!7292 (generalisedUnion!1448 (unfocusZipperList!1013 zl!343)))))))

(declare-fun b!5597504 () Bool)

(declare-fun e!3452928 () Bool)

(declare-fun lt!2256516 () (InoxSet Context!9938))

(declare-datatypes ((List!63056 0))(
  ( (Nil!62932) (Cons!62932 (h!69380 C!31440) (t!376340 List!63056)) )
))
(declare-fun s!2326 () List!63056)

(declare-fun matchZipper!1723 ((InoxSet Context!9938) List!63056) Bool)

(assert (=> b!5597504 (= e!3452928 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(declare-fun b!5597505 () Bool)

(declare-fun res!2374353 () Bool)

(assert (=> b!5597505 (=> res!2374353 e!3452937)))

(declare-fun generalisedConcat!1200 (List!63054) Regex!15585)

(assert (=> b!5597505 (= res!2374353 (not (= r!7292 (generalisedConcat!1200 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun b!5597506 () Bool)

(declare-fun e!3452927 () Bool)

(declare-fun lt!2256505 () (InoxSet Context!9938))

(assert (=> b!5597506 (= e!3452927 (not (matchZipper!1723 lt!2256505 (t!376340 s!2326))))))

(declare-fun setIsEmpty!37333 () Bool)

(declare-fun setRes!37333 () Bool)

(assert (=> setIsEmpty!37333 setRes!37333))

(declare-fun b!5597507 () Bool)

(declare-fun e!3452929 () Bool)

(declare-fun lt!2256508 () (InoxSet Context!9938))

(assert (=> b!5597507 (= e!3452929 (matchZipper!1723 lt!2256508 s!2326))))

(declare-fun b!5597508 () Bool)

(declare-fun res!2374339 () Bool)

(declare-fun e!3452926 () Bool)

(assert (=> b!5597508 (=> res!2374339 e!3452926)))

(declare-fun isEmpty!34754 (List!63054) Bool)

(assert (=> b!5597508 (= res!2374339 (isEmpty!34754 (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5597509 () Bool)

(declare-fun e!3452920 () Bool)

(declare-fun e!3452931 () Bool)

(assert (=> b!5597509 (= e!3452920 e!3452931)))

(declare-fun res!2374357 () Bool)

(assert (=> b!5597509 (=> res!2374357 e!3452931)))

(declare-fun lt!2256521 () (InoxSet Context!9938))

(declare-fun lt!2256511 () (InoxSet Context!9938))

(assert (=> b!5597509 (= res!2374357 (not (= lt!2256521 lt!2256511)))))

(declare-fun lt!2256522 () (InoxSet Context!9938))

(assert (=> b!5597509 (= lt!2256511 ((_ map or) lt!2256522 lt!2256505))))

(declare-fun lt!2256515 () Context!9938)

(declare-fun derivationStepZipperDown!927 (Regex!15585 Context!9938 C!31440) (InoxSet Context!9938))

(assert (=> b!5597509 (= lt!2256505 (derivationStepZipperDown!927 (regTwo!31683 (regOne!31682 r!7292)) lt!2256515 (h!69380 s!2326)))))

(assert (=> b!5597509 (= lt!2256522 (derivationStepZipperDown!927 (regOne!31683 (regOne!31682 r!7292)) lt!2256515 (h!69380 s!2326)))))

(declare-fun b!5597510 () Bool)

(declare-fun e!3452930 () Unit!155772)

(declare-fun Unit!155776 () Unit!155772)

(assert (=> b!5597510 (= e!3452930 Unit!155776)))

(declare-fun lt!2256510 () Unit!155772)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!610 ((InoxSet Context!9938) (InoxSet Context!9938) List!63056) Unit!155772)

(assert (=> b!5597510 (= lt!2256510 (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256521 lt!2256516 (t!376340 s!2326)))))

(declare-fun res!2374348 () Bool)

(assert (=> b!5597510 (= res!2374348 (matchZipper!1723 lt!2256521 (t!376340 s!2326)))))

(declare-fun e!3452932 () Bool)

(assert (=> b!5597510 (=> res!2374348 e!3452932)))

(assert (=> b!5597510 (= (matchZipper!1723 ((_ map or) lt!2256521 lt!2256516) (t!376340 s!2326)) e!3452932)))

(declare-fun b!5597511 () Bool)

(declare-fun e!3452923 () Bool)

(declare-fun tp_is_empty!40423 () Bool)

(declare-fun tp!1547835 () Bool)

(assert (=> b!5597511 (= e!3452923 (and tp_is_empty!40423 tp!1547835))))

(declare-fun b!5597512 () Bool)

(assert (=> b!5597512 (= e!3452919 tp_is_empty!40423)))

(assert (=> b!5597513 (= e!3452926 e!3452920)))

(declare-fun res!2374345 () Bool)

(assert (=> b!5597513 (=> res!2374345 e!3452920)))

(get-info :version)

(assert (=> b!5597513 (= res!2374345 (or (and ((_ is ElementMatch!15585) (regOne!31682 r!7292)) (= (c!981334 (regOne!31682 r!7292)) (h!69380 s!2326))) (not ((_ is Union!15585) (regOne!31682 r!7292)))))))

(declare-fun lt!2256512 () Unit!155772)

(assert (=> b!5597513 (= lt!2256512 e!3452930)))

(declare-fun c!981331 () Bool)

(declare-fun nullable!5617 (Regex!15585) Bool)

(assert (=> b!5597513 (= c!981331 (nullable!5617 (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun lambda!300570 () Int)

(declare-fun flatMap!1198 ((InoxSet Context!9938) Int) (InoxSet Context!9938))

(declare-fun derivationStepZipperUp!853 (Context!9938 C!31440) (InoxSet Context!9938))

(assert (=> b!5597513 (= (flatMap!1198 z!1189 lambda!300570) (derivationStepZipperUp!853 (h!69379 zl!343) (h!69380 s!2326)))))

(declare-fun lt!2256517 () Unit!155772)

(declare-fun lemmaFlatMapOnSingletonSet!730 ((InoxSet Context!9938) Context!9938 Int) Unit!155772)

(assert (=> b!5597513 (= lt!2256517 (lemmaFlatMapOnSingletonSet!730 z!1189 (h!69379 zl!343) lambda!300570))))

(assert (=> b!5597513 (= lt!2256516 (derivationStepZipperUp!853 lt!2256515 (h!69380 s!2326)))))

(assert (=> b!5597513 (= lt!2256521 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (h!69379 zl!343))) lt!2256515 (h!69380 s!2326)))))

(assert (=> b!5597513 (= lt!2256515 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun lt!2256499 () (InoxSet Context!9938))

(assert (=> b!5597513 (= lt!2256499 (derivationStepZipperUp!853 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))) (h!69380 s!2326)))))

(declare-fun e!3452933 () Bool)

(declare-fun setElem!37333 () Context!9938)

(declare-fun tp!1547837 () Bool)

(declare-fun setNonEmpty!37333 () Bool)

(declare-fun inv!82209 (Context!9938) Bool)

(assert (=> setNonEmpty!37333 (= setRes!37333 (and tp!1547837 (inv!82209 setElem!37333) e!3452933))))

(declare-fun setRest!37333 () (InoxSet Context!9938))

(assert (=> setNonEmpty!37333 (= z!1189 ((_ map or) (store ((as const (Array Context!9938 Bool)) false) setElem!37333 true) setRest!37333))))

(declare-fun b!5597503 () Bool)

(declare-fun tp!1547834 () Bool)

(declare-fun tp!1547843 () Bool)

(assert (=> b!5597503 (= e!3452919 (and tp!1547834 tp!1547843))))

(declare-fun res!2374355 () Bool)

(assert (=> start!581324 (=> (not res!2374355) (not e!3452921))))

(declare-fun validRegex!7321 (Regex!15585) Bool)

(assert (=> start!581324 (= res!2374355 (validRegex!7321 r!7292))))

(assert (=> start!581324 e!3452921))

(assert (=> start!581324 e!3452919))

(declare-fun condSetEmpty!37333 () Bool)

(assert (=> start!581324 (= condSetEmpty!37333 (= z!1189 ((as const (Array Context!9938 Bool)) false)))))

(assert (=> start!581324 setRes!37333))

(declare-fun e!3452925 () Bool)

(assert (=> start!581324 e!3452925))

(assert (=> start!581324 e!3452923))

(assert (=> b!5597514 (= e!3452937 e!3452926)))

(declare-fun res!2374354 () Bool)

(assert (=> b!5597514 (=> res!2374354 e!3452926)))

(declare-fun lt!2256502 () Bool)

(declare-fun lt!2256518 () Bool)

(assert (=> b!5597514 (= res!2374354 (or (not (= lt!2256502 lt!2256518)) ((_ is Nil!62932) s!2326)))))

(declare-fun Exists!2685 (Int) Bool)

(assert (=> b!5597514 (= (Exists!2685 lambda!300568) (Exists!2685 lambda!300569))))

(declare-fun lt!2256519 () Unit!155772)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1314 (Regex!15585 Regex!15585 List!63056) Unit!155772)

(assert (=> b!5597514 (= lt!2256519 (lemmaExistCutMatchRandMatchRSpecEquivalent!1314 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326))))

(assert (=> b!5597514 (= lt!2256518 (Exists!2685 lambda!300568))))

(declare-datatypes ((tuple2!65364 0))(
  ( (tuple2!65365 (_1!35985 List!63056) (_2!35985 List!63056)) )
))
(declare-datatypes ((Option!15594 0))(
  ( (None!15593) (Some!15593 (v!51634 tuple2!65364)) )
))
(declare-fun isDefined!12297 (Option!15594) Bool)

(declare-fun findConcatSeparation!2008 (Regex!15585 Regex!15585 List!63056 List!63056 List!63056) Option!15594)

(assert (=> b!5597514 (= lt!2256518 (isDefined!12297 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326)))))

(declare-fun lt!2256509 () Unit!155772)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1772 (Regex!15585 Regex!15585 List!63056) Unit!155772)

(assert (=> b!5597514 (= lt!2256509 (lemmaFindConcatSeparationEquivalentToExists!1772 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326))))

(declare-fun b!5597515 () Bool)

(declare-fun res!2374352 () Bool)

(assert (=> b!5597515 (=> res!2374352 e!3452937)))

(declare-fun isEmpty!34755 (List!63055) Bool)

(assert (=> b!5597515 (= res!2374352 (not (isEmpty!34755 (t!376339 zl!343))))))

(declare-fun b!5597516 () Bool)

(declare-fun e!3452936 () Bool)

(assert (=> b!5597516 (= e!3452931 e!3452936)))

(declare-fun res!2374356 () Bool)

(assert (=> b!5597516 (=> res!2374356 e!3452936)))

(assert (=> b!5597516 (= res!2374356 e!3452927)))

(declare-fun res!2374342 () Bool)

(assert (=> b!5597516 (=> (not res!2374342) (not e!3452927))))

(declare-fun lt!2256507 () Bool)

(assert (=> b!5597516 (= res!2374342 (not (= (matchZipper!1723 lt!2256521 (t!376340 s!2326)) lt!2256507)))))

(declare-fun e!3452934 () Bool)

(assert (=> b!5597516 (= (matchZipper!1723 lt!2256511 (t!376340 s!2326)) e!3452934)))

(declare-fun res!2374341 () Bool)

(assert (=> b!5597516 (=> res!2374341 e!3452934)))

(assert (=> b!5597516 (= res!2374341 lt!2256507)))

(assert (=> b!5597516 (= lt!2256507 (matchZipper!1723 lt!2256522 (t!376340 s!2326)))))

(declare-fun lt!2256503 () Unit!155772)

(assert (=> b!5597516 (= lt!2256503 (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256522 lt!2256505 (t!376340 s!2326)))))

(declare-fun b!5597517 () Bool)

(assert (=> b!5597517 (= e!3452932 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(declare-fun b!5597518 () Bool)

(declare-fun tp!1547841 () Bool)

(assert (=> b!5597518 (= e!3452933 tp!1547841)))

(declare-fun b!5597519 () Bool)

(declare-fun Unit!155777 () Unit!155772)

(assert (=> b!5597519 (= e!3452922 Unit!155777)))

(declare-fun lt!2256494 () Unit!155772)

(assert (=> b!5597519 (= lt!2256494 (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256505 lt!2256516 (t!376340 s!2326)))))

(declare-fun res!2374346 () Bool)

(assert (=> b!5597519 (= res!2374346 (matchZipper!1723 lt!2256505 (t!376340 s!2326)))))

(declare-fun e!3452935 () Bool)

(assert (=> b!5597519 (=> res!2374346 e!3452935)))

(assert (=> b!5597519 (= (matchZipper!1723 ((_ map or) lt!2256505 lt!2256516) (t!376340 s!2326)) e!3452935)))

(declare-fun b!5597520 () Bool)

(assert (=> b!5597520 (= e!3452921 (not e!3452937))))

(declare-fun res!2374347 () Bool)

(assert (=> b!5597520 (=> res!2374347 e!3452937)))

(assert (=> b!5597520 (= res!2374347 (not ((_ is Cons!62931) zl!343)))))

(declare-fun matchRSpec!2688 (Regex!15585 List!63056) Bool)

(assert (=> b!5597520 (= lt!2256502 (matchRSpec!2688 r!7292 s!2326))))

(declare-fun matchR!7770 (Regex!15585 List!63056) Bool)

(assert (=> b!5597520 (= lt!2256502 (matchR!7770 r!7292 s!2326))))

(declare-fun lt!2256513 () Unit!155772)

(declare-fun mainMatchTheorem!2688 (Regex!15585 List!63056) Unit!155772)

(assert (=> b!5597520 (= lt!2256513 (mainMatchTheorem!2688 r!7292 s!2326))))

(declare-fun b!5597521 () Bool)

(declare-fun tp!1547842 () Bool)

(declare-fun e!3452938 () Bool)

(assert (=> b!5597521 (= e!3452925 (and (inv!82209 (h!69379 zl!343)) e!3452938 tp!1547842))))

(declare-fun b!5597522 () Bool)

(assert (=> b!5597522 (= e!3452935 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(declare-fun b!5597523 () Bool)

(declare-fun res!2374350 () Bool)

(assert (=> b!5597523 (=> res!2374350 e!3452937)))

(assert (=> b!5597523 (= res!2374350 (or ((_ is EmptyExpr!15585) r!7292) ((_ is EmptyLang!15585) r!7292) ((_ is ElementMatch!15585) r!7292) ((_ is Union!15585) r!7292) (not ((_ is Concat!24430) r!7292))))))

(declare-fun b!5597524 () Bool)

(declare-fun res!2374344 () Bool)

(assert (=> b!5597524 (=> (not res!2374344) (not e!3452921))))

(declare-fun unfocusZipper!1327 (List!63055) Regex!15585)

(assert (=> b!5597524 (= res!2374344 (= r!7292 (unfocusZipper!1327 zl!343)))))

(declare-fun b!5597525 () Bool)

(assert (=> b!5597525 (= e!3452936 (= (matchZipper!1723 z!1189 s!2326) e!3452929))))

(declare-fun res!2374358 () Bool)

(assert (=> b!5597525 (=> res!2374358 e!3452929)))

(declare-fun lt!2256501 () (InoxSet Context!9938))

(assert (=> b!5597525 (= res!2374358 (matchZipper!1723 lt!2256501 s!2326))))

(declare-fun lt!2256497 () Unit!155772)

(assert (=> b!5597525 (= lt!2256497 e!3452922)))

(declare-fun c!981332 () Bool)

(assert (=> b!5597525 (= c!981332 (nullable!5617 (regTwo!31683 (regOne!31682 r!7292))))))

(declare-fun lt!2256500 () Context!9938)

(assert (=> b!5597525 (= (flatMap!1198 lt!2256508 lambda!300570) (derivationStepZipperUp!853 lt!2256500 (h!69380 s!2326)))))

(declare-fun lt!2256495 () Unit!155772)

(assert (=> b!5597525 (= lt!2256495 (lemmaFlatMapOnSingletonSet!730 lt!2256508 lt!2256500 lambda!300570))))

(declare-fun lt!2256496 () (InoxSet Context!9938))

(assert (=> b!5597525 (= lt!2256496 (derivationStepZipperUp!853 lt!2256500 (h!69380 s!2326)))))

(declare-fun lt!2256506 () Unit!155772)

(assert (=> b!5597525 (= lt!2256506 e!3452924)))

(declare-fun c!981333 () Bool)

(assert (=> b!5597525 (= c!981333 (nullable!5617 (regOne!31683 (regOne!31682 r!7292))))))

(declare-fun lt!2256520 () Context!9938)

(assert (=> b!5597525 (= (flatMap!1198 lt!2256501 lambda!300570) (derivationStepZipperUp!853 lt!2256520 (h!69380 s!2326)))))

(declare-fun lt!2256498 () Unit!155772)

(assert (=> b!5597525 (= lt!2256498 (lemmaFlatMapOnSingletonSet!730 lt!2256501 lt!2256520 lambda!300570))))

(declare-fun lt!2256504 () (InoxSet Context!9938))

(assert (=> b!5597525 (= lt!2256504 (derivationStepZipperUp!853 lt!2256520 (h!69380 s!2326)))))

(assert (=> b!5597525 (= lt!2256508 (store ((as const (Array Context!9938 Bool)) false) lt!2256500 true))))

(assert (=> b!5597525 (= lt!2256500 (Context!9939 (Cons!62930 (regTwo!31683 (regOne!31682 r!7292)) (t!376338 (exprs!5469 (h!69379 zl!343))))))))

(assert (=> b!5597525 (= lt!2256501 (store ((as const (Array Context!9938 Bool)) false) lt!2256520 true))))

(assert (=> b!5597525 (= lt!2256520 (Context!9939 (Cons!62930 (regOne!31683 (regOne!31682 r!7292)) (t!376338 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun b!5597526 () Bool)

(declare-fun Unit!155778 () Unit!155772)

(assert (=> b!5597526 (= e!3452924 Unit!155778)))

(declare-fun lt!2256514 () Unit!155772)

(assert (=> b!5597526 (= lt!2256514 (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256522 lt!2256516 (t!376340 s!2326)))))

(declare-fun res!2374349 () Bool)

(assert (=> b!5597526 (= res!2374349 lt!2256507)))

(assert (=> b!5597526 (=> res!2374349 e!3452928)))

(assert (=> b!5597526 (= (matchZipper!1723 ((_ map or) lt!2256522 lt!2256516) (t!376340 s!2326)) e!3452928)))

(declare-fun b!5597527 () Bool)

(declare-fun Unit!155779 () Unit!155772)

(assert (=> b!5597527 (= e!3452930 Unit!155779)))

(declare-fun b!5597528 () Bool)

(declare-fun res!2374340 () Bool)

(assert (=> b!5597528 (=> res!2374340 e!3452937)))

(assert (=> b!5597528 (= res!2374340 (not ((_ is Cons!62930) (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5597529 () Bool)

(declare-fun tp!1547839 () Bool)

(assert (=> b!5597529 (= e!3452938 tp!1547839)))

(declare-fun b!5597530 () Bool)

(assert (=> b!5597530 (= e!3452934 (matchZipper!1723 lt!2256505 (t!376340 s!2326)))))

(declare-fun b!5597531 () Bool)

(declare-fun tp!1547836 () Bool)

(declare-fun tp!1547838 () Bool)

(assert (=> b!5597531 (= e!3452919 (and tp!1547836 tp!1547838))))

(assert (= (and start!581324 res!2374355) b!5597498))

(assert (= (and b!5597498 res!2374351) b!5597524))

(assert (= (and b!5597524 res!2374344) b!5597520))

(assert (= (and b!5597520 (not res!2374347)) b!5597515))

(assert (= (and b!5597515 (not res!2374352)) b!5597505))

(assert (= (and b!5597505 (not res!2374353)) b!5597528))

(assert (= (and b!5597528 (not res!2374340)) b!5597502))

(assert (= (and b!5597502 (not res!2374343)) b!5597523))

(assert (= (and b!5597523 (not res!2374350)) b!5597514))

(assert (= (and b!5597514 (not res!2374354)) b!5597508))

(assert (= (and b!5597508 (not res!2374339)) b!5597513))

(assert (= (and b!5597513 c!981331) b!5597510))

(assert (= (and b!5597513 (not c!981331)) b!5597527))

(assert (= (and b!5597510 (not res!2374348)) b!5597517))

(assert (= (and b!5597513 (not res!2374345)) b!5597509))

(assert (= (and b!5597509 (not res!2374357)) b!5597516))

(assert (= (and b!5597516 (not res!2374341)) b!5597530))

(assert (= (and b!5597516 res!2374342) b!5597506))

(assert (= (and b!5597516 (not res!2374356)) b!5597525))

(assert (= (and b!5597525 c!981333) b!5597526))

(assert (= (and b!5597525 (not c!981333)) b!5597500))

(assert (= (and b!5597526 (not res!2374349)) b!5597504))

(assert (= (and b!5597525 c!981332) b!5597519))

(assert (= (and b!5597525 (not c!981332)) b!5597501))

(assert (= (and b!5597519 (not res!2374346)) b!5597522))

(assert (= (and b!5597525 (not res!2374358)) b!5597507))

(assert (= (and start!581324 ((_ is ElementMatch!15585) r!7292)) b!5597512))

(assert (= (and start!581324 ((_ is Concat!24430) r!7292)) b!5597531))

(assert (= (and start!581324 ((_ is Star!15585) r!7292)) b!5597499))

(assert (= (and start!581324 ((_ is Union!15585) r!7292)) b!5597503))

(assert (= (and start!581324 condSetEmpty!37333) setIsEmpty!37333))

(assert (= (and start!581324 (not condSetEmpty!37333)) setNonEmpty!37333))

(assert (= setNonEmpty!37333 b!5597518))

(assert (= b!5597521 b!5597529))

(assert (= (and start!581324 ((_ is Cons!62931) zl!343)) b!5597521))

(assert (= (and start!581324 ((_ is Cons!62932) s!2326)) b!5597511))

(declare-fun m!6576452 () Bool)

(assert (=> b!5597530 m!6576452))

(declare-fun m!6576454 () Bool)

(assert (=> b!5597524 m!6576454))

(declare-fun m!6576456 () Bool)

(assert (=> b!5597513 m!6576456))

(declare-fun m!6576458 () Bool)

(assert (=> b!5597513 m!6576458))

(declare-fun m!6576460 () Bool)

(assert (=> b!5597513 m!6576460))

(declare-fun m!6576462 () Bool)

(assert (=> b!5597513 m!6576462))

(declare-fun m!6576464 () Bool)

(assert (=> b!5597513 m!6576464))

(declare-fun m!6576466 () Bool)

(assert (=> b!5597513 m!6576466))

(declare-fun m!6576468 () Bool)

(assert (=> b!5597513 m!6576468))

(declare-fun m!6576470 () Bool)

(assert (=> b!5597510 m!6576470))

(declare-fun m!6576472 () Bool)

(assert (=> b!5597510 m!6576472))

(declare-fun m!6576474 () Bool)

(assert (=> b!5597510 m!6576474))

(declare-fun m!6576476 () Bool)

(assert (=> setNonEmpty!37333 m!6576476))

(declare-fun m!6576478 () Bool)

(assert (=> b!5597517 m!6576478))

(assert (=> b!5597504 m!6576478))

(declare-fun m!6576480 () Bool)

(assert (=> b!5597505 m!6576480))

(declare-fun m!6576482 () Bool)

(assert (=> b!5597502 m!6576482))

(assert (=> b!5597502 m!6576482))

(declare-fun m!6576484 () Bool)

(assert (=> b!5597502 m!6576484))

(declare-fun m!6576486 () Bool)

(assert (=> b!5597508 m!6576486))

(declare-fun m!6576488 () Bool)

(assert (=> b!5597526 m!6576488))

(declare-fun m!6576490 () Bool)

(assert (=> b!5597526 m!6576490))

(declare-fun m!6576492 () Bool)

(assert (=> b!5597498 m!6576492))

(declare-fun m!6576494 () Bool)

(assert (=> b!5597515 m!6576494))

(declare-fun m!6576496 () Bool)

(assert (=> b!5597521 m!6576496))

(declare-fun m!6576498 () Bool)

(assert (=> start!581324 m!6576498))

(declare-fun m!6576500 () Bool)

(assert (=> b!5597509 m!6576500))

(declare-fun m!6576502 () Bool)

(assert (=> b!5597509 m!6576502))

(assert (=> b!5597522 m!6576478))

(assert (=> b!5597516 m!6576472))

(declare-fun m!6576504 () Bool)

(assert (=> b!5597516 m!6576504))

(declare-fun m!6576506 () Bool)

(assert (=> b!5597516 m!6576506))

(declare-fun m!6576508 () Bool)

(assert (=> b!5597516 m!6576508))

(declare-fun m!6576510 () Bool)

(assert (=> b!5597507 m!6576510))

(assert (=> b!5597506 m!6576452))

(declare-fun m!6576512 () Bool)

(assert (=> b!5597519 m!6576512))

(assert (=> b!5597519 m!6576452))

(declare-fun m!6576514 () Bool)

(assert (=> b!5597519 m!6576514))

(declare-fun m!6576516 () Bool)

(assert (=> b!5597514 m!6576516))

(declare-fun m!6576518 () Bool)

(assert (=> b!5597514 m!6576518))

(declare-fun m!6576520 () Bool)

(assert (=> b!5597514 m!6576520))

(declare-fun m!6576522 () Bool)

(assert (=> b!5597514 m!6576522))

(assert (=> b!5597514 m!6576516))

(declare-fun m!6576524 () Bool)

(assert (=> b!5597514 m!6576524))

(assert (=> b!5597514 m!6576520))

(declare-fun m!6576526 () Bool)

(assert (=> b!5597514 m!6576526))

(declare-fun m!6576528 () Bool)

(assert (=> b!5597520 m!6576528))

(declare-fun m!6576530 () Bool)

(assert (=> b!5597520 m!6576530))

(declare-fun m!6576532 () Bool)

(assert (=> b!5597520 m!6576532))

(declare-fun m!6576534 () Bool)

(assert (=> b!5597525 m!6576534))

(declare-fun m!6576536 () Bool)

(assert (=> b!5597525 m!6576536))

(declare-fun m!6576538 () Bool)

(assert (=> b!5597525 m!6576538))

(declare-fun m!6576540 () Bool)

(assert (=> b!5597525 m!6576540))

(declare-fun m!6576542 () Bool)

(assert (=> b!5597525 m!6576542))

(declare-fun m!6576544 () Bool)

(assert (=> b!5597525 m!6576544))

(declare-fun m!6576546 () Bool)

(assert (=> b!5597525 m!6576546))

(declare-fun m!6576548 () Bool)

(assert (=> b!5597525 m!6576548))

(declare-fun m!6576550 () Bool)

(assert (=> b!5597525 m!6576550))

(declare-fun m!6576552 () Bool)

(assert (=> b!5597525 m!6576552))

(declare-fun m!6576554 () Bool)

(assert (=> b!5597525 m!6576554))

(declare-fun m!6576556 () Bool)

(assert (=> b!5597525 m!6576556))

(check-sat (not b!5597522) (not b!5597517) (not b!5597519) (not b!5597499) (not b!5597531) (not b!5597520) (not b!5597513) (not b!5597511) (not b!5597508) (not setNonEmpty!37333) (not b!5597529) (not b!5597506) (not b!5597524) (not b!5597515) (not b!5597498) (not b!5597502) (not b!5597518) (not b!5597505) (not b!5597526) (not b!5597509) tp_is_empty!40423 (not start!581324) (not b!5597516) (not b!5597530) (not b!5597510) (not b!5597507) (not b!5597525) (not b!5597503) (not b!5597504) (not b!5597521) (not b!5597514))
(check-sat)
(get-model)

(declare-fun d!1769430 () Bool)

(declare-fun c!981449 () Bool)

(declare-fun isEmpty!34758 (List!63056) Bool)

(assert (=> d!1769430 (= c!981449 (isEmpty!34758 s!2326))))

(declare-fun e!3453164 () Bool)

(assert (=> d!1769430 (= (matchZipper!1723 lt!2256508 s!2326) e!3453164)))

(declare-fun b!5597938 () Bool)

(declare-fun nullableZipper!1580 ((InoxSet Context!9938)) Bool)

(assert (=> b!5597938 (= e!3453164 (nullableZipper!1580 lt!2256508))))

(declare-fun b!5597939 () Bool)

(declare-fun derivationStepZipper!1684 ((InoxSet Context!9938) C!31440) (InoxSet Context!9938))

(declare-fun head!11939 (List!63056) C!31440)

(declare-fun tail!11034 (List!63056) List!63056)

(assert (=> b!5597939 (= e!3453164 (matchZipper!1723 (derivationStepZipper!1684 lt!2256508 (head!11939 s!2326)) (tail!11034 s!2326)))))

(assert (= (and d!1769430 c!981449) b!5597938))

(assert (= (and d!1769430 (not c!981449)) b!5597939))

(declare-fun m!6576846 () Bool)

(assert (=> d!1769430 m!6576846))

(declare-fun m!6576848 () Bool)

(assert (=> b!5597938 m!6576848))

(declare-fun m!6576850 () Bool)

(assert (=> b!5597939 m!6576850))

(assert (=> b!5597939 m!6576850))

(declare-fun m!6576852 () Bool)

(assert (=> b!5597939 m!6576852))

(declare-fun m!6576854 () Bool)

(assert (=> b!5597939 m!6576854))

(assert (=> b!5597939 m!6576852))

(assert (=> b!5597939 m!6576854))

(declare-fun m!6576856 () Bool)

(assert (=> b!5597939 m!6576856))

(assert (=> b!5597507 d!1769430))

(declare-fun d!1769432 () Bool)

(declare-fun e!3453167 () Bool)

(assert (=> d!1769432 (= (matchZipper!1723 ((_ map or) lt!2256522 lt!2256516) (t!376340 s!2326)) e!3453167)))

(declare-fun res!2374479 () Bool)

(assert (=> d!1769432 (=> res!2374479 e!3453167)))

(assert (=> d!1769432 (= res!2374479 (matchZipper!1723 lt!2256522 (t!376340 s!2326)))))

(declare-fun lt!2256572 () Unit!155772)

(declare-fun choose!42454 ((InoxSet Context!9938) (InoxSet Context!9938) List!63056) Unit!155772)

(assert (=> d!1769432 (= lt!2256572 (choose!42454 lt!2256522 lt!2256516 (t!376340 s!2326)))))

(assert (=> d!1769432 (= (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256522 lt!2256516 (t!376340 s!2326)) lt!2256572)))

(declare-fun b!5597942 () Bool)

(assert (=> b!5597942 (= e!3453167 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(assert (= (and d!1769432 (not res!2374479)) b!5597942))

(assert (=> d!1769432 m!6576490))

(assert (=> d!1769432 m!6576506))

(declare-fun m!6576858 () Bool)

(assert (=> d!1769432 m!6576858))

(assert (=> b!5597942 m!6576478))

(assert (=> b!5597526 d!1769432))

(declare-fun d!1769434 () Bool)

(declare-fun c!981450 () Bool)

(assert (=> d!1769434 (= c!981450 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453168 () Bool)

(assert (=> d!1769434 (= (matchZipper!1723 ((_ map or) lt!2256522 lt!2256516) (t!376340 s!2326)) e!3453168)))

(declare-fun b!5597943 () Bool)

(assert (=> b!5597943 (= e!3453168 (nullableZipper!1580 ((_ map or) lt!2256522 lt!2256516)))))

(declare-fun b!5597944 () Bool)

(assert (=> b!5597944 (= e!3453168 (matchZipper!1723 (derivationStepZipper!1684 ((_ map or) lt!2256522 lt!2256516) (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769434 c!981450) b!5597943))

(assert (= (and d!1769434 (not c!981450)) b!5597944))

(declare-fun m!6576860 () Bool)

(assert (=> d!1769434 m!6576860))

(declare-fun m!6576862 () Bool)

(assert (=> b!5597943 m!6576862))

(declare-fun m!6576864 () Bool)

(assert (=> b!5597944 m!6576864))

(assert (=> b!5597944 m!6576864))

(declare-fun m!6576866 () Bool)

(assert (=> b!5597944 m!6576866))

(declare-fun m!6576868 () Bool)

(assert (=> b!5597944 m!6576868))

(assert (=> b!5597944 m!6576866))

(assert (=> b!5597944 m!6576868))

(declare-fun m!6576870 () Bool)

(assert (=> b!5597944 m!6576870))

(assert (=> b!5597526 d!1769434))

(declare-fun d!1769436 () Bool)

(declare-fun c!981451 () Bool)

(assert (=> d!1769436 (= c!981451 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453169 () Bool)

(assert (=> d!1769436 (= (matchZipper!1723 lt!2256505 (t!376340 s!2326)) e!3453169)))

(declare-fun b!5597945 () Bool)

(assert (=> b!5597945 (= e!3453169 (nullableZipper!1580 lt!2256505))))

(declare-fun b!5597946 () Bool)

(assert (=> b!5597946 (= e!3453169 (matchZipper!1723 (derivationStepZipper!1684 lt!2256505 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769436 c!981451) b!5597945))

(assert (= (and d!1769436 (not c!981451)) b!5597946))

(assert (=> d!1769436 m!6576860))

(declare-fun m!6576872 () Bool)

(assert (=> b!5597945 m!6576872))

(assert (=> b!5597946 m!6576864))

(assert (=> b!5597946 m!6576864))

(declare-fun m!6576874 () Bool)

(assert (=> b!5597946 m!6576874))

(assert (=> b!5597946 m!6576868))

(assert (=> b!5597946 m!6576874))

(assert (=> b!5597946 m!6576868))

(declare-fun m!6576876 () Bool)

(assert (=> b!5597946 m!6576876))

(assert (=> b!5597506 d!1769436))

(declare-fun b!5597957 () Bool)

(declare-fun e!3453178 () (InoxSet Context!9938))

(assert (=> b!5597957 (= e!3453178 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5597958 () Bool)

(declare-fun e!3453177 () Bool)

(assert (=> b!5597958 (= e!3453177 (nullable!5617 (h!69378 (exprs!5469 lt!2256500))))))

(declare-fun b!5597959 () Bool)

(declare-fun call!419868 () (InoxSet Context!9938))

(assert (=> b!5597959 (= e!3453178 call!419868)))

(declare-fun d!1769438 () Bool)

(declare-fun c!981457 () Bool)

(assert (=> d!1769438 (= c!981457 e!3453177)))

(declare-fun res!2374482 () Bool)

(assert (=> d!1769438 (=> (not res!2374482) (not e!3453177))))

(assert (=> d!1769438 (= res!2374482 ((_ is Cons!62930) (exprs!5469 lt!2256500)))))

(declare-fun e!3453176 () (InoxSet Context!9938))

(assert (=> d!1769438 (= (derivationStepZipperUp!853 lt!2256500 (h!69380 s!2326)) e!3453176)))

(declare-fun bm!419863 () Bool)

(assert (=> bm!419863 (= call!419868 (derivationStepZipperDown!927 (h!69378 (exprs!5469 lt!2256500)) (Context!9939 (t!376338 (exprs!5469 lt!2256500))) (h!69380 s!2326)))))

(declare-fun b!5597960 () Bool)

(assert (=> b!5597960 (= e!3453176 e!3453178)))

(declare-fun c!981456 () Bool)

(assert (=> b!5597960 (= c!981456 ((_ is Cons!62930) (exprs!5469 lt!2256500)))))

(declare-fun b!5597961 () Bool)

(assert (=> b!5597961 (= e!3453176 ((_ map or) call!419868 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 lt!2256500))) (h!69380 s!2326))))))

(assert (= (and d!1769438 res!2374482) b!5597958))

(assert (= (and d!1769438 c!981457) b!5597961))

(assert (= (and d!1769438 (not c!981457)) b!5597960))

(assert (= (and b!5597960 c!981456) b!5597959))

(assert (= (and b!5597960 (not c!981456)) b!5597957))

(assert (= (or b!5597961 b!5597959) bm!419863))

(declare-fun m!6576878 () Bool)

(assert (=> b!5597958 m!6576878))

(declare-fun m!6576880 () Bool)

(assert (=> bm!419863 m!6576880))

(declare-fun m!6576882 () Bool)

(assert (=> b!5597961 m!6576882))

(assert (=> b!5597525 d!1769438))

(declare-fun d!1769440 () Bool)

(declare-fun nullableFct!1726 (Regex!15585) Bool)

(assert (=> d!1769440 (= (nullable!5617 (regTwo!31683 (regOne!31682 r!7292))) (nullableFct!1726 (regTwo!31683 (regOne!31682 r!7292))))))

(declare-fun bs!1294243 () Bool)

(assert (= bs!1294243 d!1769440))

(declare-fun m!6576884 () Bool)

(assert (=> bs!1294243 m!6576884))

(assert (=> b!5597525 d!1769440))

(declare-fun d!1769442 () Bool)

(declare-fun c!981458 () Bool)

(assert (=> d!1769442 (= c!981458 (isEmpty!34758 s!2326))))

(declare-fun e!3453179 () Bool)

(assert (=> d!1769442 (= (matchZipper!1723 z!1189 s!2326) e!3453179)))

(declare-fun b!5597962 () Bool)

(assert (=> b!5597962 (= e!3453179 (nullableZipper!1580 z!1189))))

(declare-fun b!5597963 () Bool)

(assert (=> b!5597963 (= e!3453179 (matchZipper!1723 (derivationStepZipper!1684 z!1189 (head!11939 s!2326)) (tail!11034 s!2326)))))

(assert (= (and d!1769442 c!981458) b!5597962))

(assert (= (and d!1769442 (not c!981458)) b!5597963))

(assert (=> d!1769442 m!6576846))

(declare-fun m!6576886 () Bool)

(assert (=> b!5597962 m!6576886))

(assert (=> b!5597963 m!6576850))

(assert (=> b!5597963 m!6576850))

(declare-fun m!6576888 () Bool)

(assert (=> b!5597963 m!6576888))

(assert (=> b!5597963 m!6576854))

(assert (=> b!5597963 m!6576888))

(assert (=> b!5597963 m!6576854))

(declare-fun m!6576890 () Bool)

(assert (=> b!5597963 m!6576890))

(assert (=> b!5597525 d!1769442))

(declare-fun d!1769444 () Bool)

(declare-fun choose!42455 ((InoxSet Context!9938) Int) (InoxSet Context!9938))

(assert (=> d!1769444 (= (flatMap!1198 lt!2256508 lambda!300570) (choose!42455 lt!2256508 lambda!300570))))

(declare-fun bs!1294244 () Bool)

(assert (= bs!1294244 d!1769444))

(declare-fun m!6576892 () Bool)

(assert (=> bs!1294244 m!6576892))

(assert (=> b!5597525 d!1769444))

(declare-fun d!1769446 () Bool)

(assert (=> d!1769446 (= (flatMap!1198 lt!2256501 lambda!300570) (choose!42455 lt!2256501 lambda!300570))))

(declare-fun bs!1294245 () Bool)

(assert (= bs!1294245 d!1769446))

(declare-fun m!6576894 () Bool)

(assert (=> bs!1294245 m!6576894))

(assert (=> b!5597525 d!1769446))

(declare-fun d!1769448 () Bool)

(declare-fun c!981459 () Bool)

(assert (=> d!1769448 (= c!981459 (isEmpty!34758 s!2326))))

(declare-fun e!3453180 () Bool)

(assert (=> d!1769448 (= (matchZipper!1723 lt!2256501 s!2326) e!3453180)))

(declare-fun b!5597964 () Bool)

(assert (=> b!5597964 (= e!3453180 (nullableZipper!1580 lt!2256501))))

(declare-fun b!5597965 () Bool)

(assert (=> b!5597965 (= e!3453180 (matchZipper!1723 (derivationStepZipper!1684 lt!2256501 (head!11939 s!2326)) (tail!11034 s!2326)))))

(assert (= (and d!1769448 c!981459) b!5597964))

(assert (= (and d!1769448 (not c!981459)) b!5597965))

(assert (=> d!1769448 m!6576846))

(declare-fun m!6576896 () Bool)

(assert (=> b!5597964 m!6576896))

(assert (=> b!5597965 m!6576850))

(assert (=> b!5597965 m!6576850))

(declare-fun m!6576898 () Bool)

(assert (=> b!5597965 m!6576898))

(assert (=> b!5597965 m!6576854))

(assert (=> b!5597965 m!6576898))

(assert (=> b!5597965 m!6576854))

(declare-fun m!6576900 () Bool)

(assert (=> b!5597965 m!6576900))

(assert (=> b!5597525 d!1769448))

(declare-fun d!1769450 () Bool)

(declare-fun dynLambda!24617 (Int Context!9938) (InoxSet Context!9938))

(assert (=> d!1769450 (= (flatMap!1198 lt!2256508 lambda!300570) (dynLambda!24617 lambda!300570 lt!2256500))))

(declare-fun lt!2256575 () Unit!155772)

(declare-fun choose!42456 ((InoxSet Context!9938) Context!9938 Int) Unit!155772)

(assert (=> d!1769450 (= lt!2256575 (choose!42456 lt!2256508 lt!2256500 lambda!300570))))

(assert (=> d!1769450 (= lt!2256508 (store ((as const (Array Context!9938 Bool)) false) lt!2256500 true))))

(assert (=> d!1769450 (= (lemmaFlatMapOnSingletonSet!730 lt!2256508 lt!2256500 lambda!300570) lt!2256575)))

(declare-fun b_lambda!212127 () Bool)

(assert (=> (not b_lambda!212127) (not d!1769450)))

(declare-fun bs!1294246 () Bool)

(assert (= bs!1294246 d!1769450))

(assert (=> bs!1294246 m!6576542))

(declare-fun m!6576902 () Bool)

(assert (=> bs!1294246 m!6576902))

(declare-fun m!6576904 () Bool)

(assert (=> bs!1294246 m!6576904))

(assert (=> bs!1294246 m!6576552))

(assert (=> b!5597525 d!1769450))

(declare-fun b!5597966 () Bool)

(declare-fun e!3453183 () (InoxSet Context!9938))

(assert (=> b!5597966 (= e!3453183 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5597967 () Bool)

(declare-fun e!3453182 () Bool)

(assert (=> b!5597967 (= e!3453182 (nullable!5617 (h!69378 (exprs!5469 lt!2256520))))))

(declare-fun b!5597968 () Bool)

(declare-fun call!419869 () (InoxSet Context!9938))

(assert (=> b!5597968 (= e!3453183 call!419869)))

(declare-fun d!1769452 () Bool)

(declare-fun c!981461 () Bool)

(assert (=> d!1769452 (= c!981461 e!3453182)))

(declare-fun res!2374483 () Bool)

(assert (=> d!1769452 (=> (not res!2374483) (not e!3453182))))

(assert (=> d!1769452 (= res!2374483 ((_ is Cons!62930) (exprs!5469 lt!2256520)))))

(declare-fun e!3453181 () (InoxSet Context!9938))

(assert (=> d!1769452 (= (derivationStepZipperUp!853 lt!2256520 (h!69380 s!2326)) e!3453181)))

(declare-fun bm!419864 () Bool)

(assert (=> bm!419864 (= call!419869 (derivationStepZipperDown!927 (h!69378 (exprs!5469 lt!2256520)) (Context!9939 (t!376338 (exprs!5469 lt!2256520))) (h!69380 s!2326)))))

(declare-fun b!5597969 () Bool)

(assert (=> b!5597969 (= e!3453181 e!3453183)))

(declare-fun c!981460 () Bool)

(assert (=> b!5597969 (= c!981460 ((_ is Cons!62930) (exprs!5469 lt!2256520)))))

(declare-fun b!5597970 () Bool)

(assert (=> b!5597970 (= e!3453181 ((_ map or) call!419869 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 lt!2256520))) (h!69380 s!2326))))))

(assert (= (and d!1769452 res!2374483) b!5597967))

(assert (= (and d!1769452 c!981461) b!5597970))

(assert (= (and d!1769452 (not c!981461)) b!5597969))

(assert (= (and b!5597969 c!981460) b!5597968))

(assert (= (and b!5597969 (not c!981460)) b!5597966))

(assert (= (or b!5597970 b!5597968) bm!419864))

(declare-fun m!6576906 () Bool)

(assert (=> b!5597967 m!6576906))

(declare-fun m!6576908 () Bool)

(assert (=> bm!419864 m!6576908))

(declare-fun m!6576910 () Bool)

(assert (=> b!5597970 m!6576910))

(assert (=> b!5597525 d!1769452))

(declare-fun d!1769454 () Bool)

(assert (=> d!1769454 (= (flatMap!1198 lt!2256501 lambda!300570) (dynLambda!24617 lambda!300570 lt!2256520))))

(declare-fun lt!2256576 () Unit!155772)

(assert (=> d!1769454 (= lt!2256576 (choose!42456 lt!2256501 lt!2256520 lambda!300570))))

(assert (=> d!1769454 (= lt!2256501 (store ((as const (Array Context!9938 Bool)) false) lt!2256520 true))))

(assert (=> d!1769454 (= (lemmaFlatMapOnSingletonSet!730 lt!2256501 lt!2256520 lambda!300570) lt!2256576)))

(declare-fun b_lambda!212129 () Bool)

(assert (=> (not b_lambda!212129) (not d!1769454)))

(declare-fun bs!1294247 () Bool)

(assert (= bs!1294247 d!1769454))

(assert (=> bs!1294247 m!6576548))

(declare-fun m!6576912 () Bool)

(assert (=> bs!1294247 m!6576912))

(declare-fun m!6576914 () Bool)

(assert (=> bs!1294247 m!6576914))

(assert (=> bs!1294247 m!6576546))

(assert (=> b!5597525 d!1769454))

(declare-fun d!1769456 () Bool)

(assert (=> d!1769456 (= (nullable!5617 (regOne!31683 (regOne!31682 r!7292))) (nullableFct!1726 (regOne!31683 (regOne!31682 r!7292))))))

(declare-fun bs!1294248 () Bool)

(assert (= bs!1294248 d!1769456))

(declare-fun m!6576916 () Bool)

(assert (=> bs!1294248 m!6576916))

(assert (=> b!5597525 d!1769456))

(declare-fun b!5597991 () Bool)

(declare-fun e!3453201 () Bool)

(assert (=> b!5597991 (= e!3453201 (isEmpty!34754 (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5597992 () Bool)

(declare-fun e!3453200 () Bool)

(declare-fun lt!2256579 () Regex!15585)

(declare-fun isConcat!662 (Regex!15585) Bool)

(assert (=> b!5597992 (= e!3453200 (isConcat!662 lt!2256579))))

(declare-fun b!5597993 () Bool)

(declare-fun e!3453197 () Regex!15585)

(assert (=> b!5597993 (= e!3453197 EmptyExpr!15585)))

(declare-fun b!5597994 () Bool)

(declare-fun e!3453199 () Bool)

(assert (=> b!5597994 (= e!3453199 e!3453200)))

(declare-fun c!981471 () Bool)

(declare-fun tail!11035 (List!63054) List!63054)

(assert (=> b!5597994 (= c!981471 (isEmpty!34754 (tail!11035 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5597995 () Bool)

(declare-fun e!3453198 () Regex!15585)

(assert (=> b!5597995 (= e!3453198 e!3453197)))

(declare-fun c!981472 () Bool)

(assert (=> b!5597995 (= c!981472 ((_ is Cons!62930) (exprs!5469 (h!69379 zl!343))))))

(declare-fun b!5597997 () Bool)

(assert (=> b!5597997 (= e!3453198 (h!69378 (exprs!5469 (h!69379 zl!343))))))

(declare-fun b!5597998 () Bool)

(declare-fun e!3453196 () Bool)

(assert (=> b!5597998 (= e!3453196 e!3453199)))

(declare-fun c!981470 () Bool)

(assert (=> b!5597998 (= c!981470 (isEmpty!34754 (exprs!5469 (h!69379 zl!343))))))

(declare-fun b!5597996 () Bool)

(declare-fun head!11940 (List!63054) Regex!15585)

(assert (=> b!5597996 (= e!3453200 (= lt!2256579 (head!11940 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun d!1769458 () Bool)

(assert (=> d!1769458 e!3453196))

(declare-fun res!2374488 () Bool)

(assert (=> d!1769458 (=> (not res!2374488) (not e!3453196))))

(assert (=> d!1769458 (= res!2374488 (validRegex!7321 lt!2256579))))

(assert (=> d!1769458 (= lt!2256579 e!3453198)))

(declare-fun c!981473 () Bool)

(assert (=> d!1769458 (= c!981473 e!3453201)))

(declare-fun res!2374489 () Bool)

(assert (=> d!1769458 (=> (not res!2374489) (not e!3453201))))

(assert (=> d!1769458 (= res!2374489 ((_ is Cons!62930) (exprs!5469 (h!69379 zl!343))))))

(declare-fun lambda!300601 () Int)

(declare-fun forall!14751 (List!63054 Int) Bool)

(assert (=> d!1769458 (forall!14751 (exprs!5469 (h!69379 zl!343)) lambda!300601)))

(assert (=> d!1769458 (= (generalisedConcat!1200 (exprs!5469 (h!69379 zl!343))) lt!2256579)))

(declare-fun b!5597999 () Bool)

(declare-fun isEmptyExpr!1139 (Regex!15585) Bool)

(assert (=> b!5597999 (= e!3453199 (isEmptyExpr!1139 lt!2256579))))

(declare-fun b!5598000 () Bool)

(assert (=> b!5598000 (= e!3453197 (Concat!24430 (h!69378 (exprs!5469 (h!69379 zl!343))) (generalisedConcat!1200 (t!376338 (exprs!5469 (h!69379 zl!343))))))))

(assert (= (and d!1769458 res!2374489) b!5597991))

(assert (= (and d!1769458 c!981473) b!5597997))

(assert (= (and d!1769458 (not c!981473)) b!5597995))

(assert (= (and b!5597995 c!981472) b!5598000))

(assert (= (and b!5597995 (not c!981472)) b!5597993))

(assert (= (and d!1769458 res!2374488) b!5597998))

(assert (= (and b!5597998 c!981470) b!5597999))

(assert (= (and b!5597998 (not c!981470)) b!5597994))

(assert (= (and b!5597994 c!981471) b!5597996))

(assert (= (and b!5597994 (not c!981471)) b!5597992))

(declare-fun m!6576918 () Bool)

(assert (=> b!5597998 m!6576918))

(declare-fun m!6576920 () Bool)

(assert (=> b!5597999 m!6576920))

(declare-fun m!6576922 () Bool)

(assert (=> b!5598000 m!6576922))

(assert (=> b!5597991 m!6576486))

(declare-fun m!6576924 () Bool)

(assert (=> b!5597996 m!6576924))

(declare-fun m!6576926 () Bool)

(assert (=> b!5597994 m!6576926))

(assert (=> b!5597994 m!6576926))

(declare-fun m!6576928 () Bool)

(assert (=> b!5597994 m!6576928))

(declare-fun m!6576930 () Bool)

(assert (=> b!5597992 m!6576930))

(declare-fun m!6576932 () Bool)

(assert (=> d!1769458 m!6576932))

(declare-fun m!6576934 () Bool)

(assert (=> d!1769458 m!6576934))

(assert (=> b!5597505 d!1769458))

(declare-fun d!1769460 () Bool)

(declare-fun lt!2256582 () Regex!15585)

(assert (=> d!1769460 (validRegex!7321 lt!2256582)))

(assert (=> d!1769460 (= lt!2256582 (generalisedUnion!1448 (unfocusZipperList!1013 zl!343)))))

(assert (=> d!1769460 (= (unfocusZipper!1327 zl!343) lt!2256582)))

(declare-fun bs!1294249 () Bool)

(assert (= bs!1294249 d!1769460))

(declare-fun m!6576936 () Bool)

(assert (=> bs!1294249 m!6576936))

(assert (=> bs!1294249 m!6576482))

(assert (=> bs!1294249 m!6576482))

(assert (=> bs!1294249 m!6576484))

(assert (=> b!5597524 d!1769460))

(declare-fun d!1769462 () Bool)

(declare-fun c!981474 () Bool)

(assert (=> d!1769462 (= c!981474 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453202 () Bool)

(assert (=> d!1769462 (= (matchZipper!1723 lt!2256516 (t!376340 s!2326)) e!3453202)))

(declare-fun b!5598001 () Bool)

(assert (=> b!5598001 (= e!3453202 (nullableZipper!1580 lt!2256516))))

(declare-fun b!5598002 () Bool)

(assert (=> b!5598002 (= e!3453202 (matchZipper!1723 (derivationStepZipper!1684 lt!2256516 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769462 c!981474) b!5598001))

(assert (= (and d!1769462 (not c!981474)) b!5598002))

(assert (=> d!1769462 m!6576860))

(declare-fun m!6576938 () Bool)

(assert (=> b!5598001 m!6576938))

(assert (=> b!5598002 m!6576864))

(assert (=> b!5598002 m!6576864))

(declare-fun m!6576940 () Bool)

(assert (=> b!5598002 m!6576940))

(assert (=> b!5598002 m!6576868))

(assert (=> b!5598002 m!6576940))

(assert (=> b!5598002 m!6576868))

(declare-fun m!6576942 () Bool)

(assert (=> b!5598002 m!6576942))

(assert (=> b!5597504 d!1769462))

(declare-fun e!3453203 () Bool)

(declare-fun d!1769464 () Bool)

(assert (=> d!1769464 (= (matchZipper!1723 ((_ map or) lt!2256521 lt!2256516) (t!376340 s!2326)) e!3453203)))

(declare-fun res!2374490 () Bool)

(assert (=> d!1769464 (=> res!2374490 e!3453203)))

(assert (=> d!1769464 (= res!2374490 (matchZipper!1723 lt!2256521 (t!376340 s!2326)))))

(declare-fun lt!2256583 () Unit!155772)

(assert (=> d!1769464 (= lt!2256583 (choose!42454 lt!2256521 lt!2256516 (t!376340 s!2326)))))

(assert (=> d!1769464 (= (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256521 lt!2256516 (t!376340 s!2326)) lt!2256583)))

(declare-fun b!5598003 () Bool)

(assert (=> b!5598003 (= e!3453203 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(assert (= (and d!1769464 (not res!2374490)) b!5598003))

(assert (=> d!1769464 m!6576474))

(assert (=> d!1769464 m!6576472))

(declare-fun m!6576944 () Bool)

(assert (=> d!1769464 m!6576944))

(assert (=> b!5598003 m!6576478))

(assert (=> b!5597510 d!1769464))

(declare-fun d!1769466 () Bool)

(declare-fun c!981475 () Bool)

(assert (=> d!1769466 (= c!981475 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453204 () Bool)

(assert (=> d!1769466 (= (matchZipper!1723 lt!2256521 (t!376340 s!2326)) e!3453204)))

(declare-fun b!5598004 () Bool)

(assert (=> b!5598004 (= e!3453204 (nullableZipper!1580 lt!2256521))))

(declare-fun b!5598005 () Bool)

(assert (=> b!5598005 (= e!3453204 (matchZipper!1723 (derivationStepZipper!1684 lt!2256521 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769466 c!981475) b!5598004))

(assert (= (and d!1769466 (not c!981475)) b!5598005))

(assert (=> d!1769466 m!6576860))

(declare-fun m!6576946 () Bool)

(assert (=> b!5598004 m!6576946))

(assert (=> b!5598005 m!6576864))

(assert (=> b!5598005 m!6576864))

(declare-fun m!6576948 () Bool)

(assert (=> b!5598005 m!6576948))

(assert (=> b!5598005 m!6576868))

(assert (=> b!5598005 m!6576948))

(assert (=> b!5598005 m!6576868))

(declare-fun m!6576950 () Bool)

(assert (=> b!5598005 m!6576950))

(assert (=> b!5597510 d!1769466))

(declare-fun d!1769468 () Bool)

(declare-fun c!981476 () Bool)

(assert (=> d!1769468 (= c!981476 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453205 () Bool)

(assert (=> d!1769468 (= (matchZipper!1723 ((_ map or) lt!2256521 lt!2256516) (t!376340 s!2326)) e!3453205)))

(declare-fun b!5598006 () Bool)

(assert (=> b!5598006 (= e!3453205 (nullableZipper!1580 ((_ map or) lt!2256521 lt!2256516)))))

(declare-fun b!5598007 () Bool)

(assert (=> b!5598007 (= e!3453205 (matchZipper!1723 (derivationStepZipper!1684 ((_ map or) lt!2256521 lt!2256516) (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769468 c!981476) b!5598006))

(assert (= (and d!1769468 (not c!981476)) b!5598007))

(assert (=> d!1769468 m!6576860))

(declare-fun m!6576952 () Bool)

(assert (=> b!5598006 m!6576952))

(assert (=> b!5598007 m!6576864))

(assert (=> b!5598007 m!6576864))

(declare-fun m!6576954 () Bool)

(assert (=> b!5598007 m!6576954))

(assert (=> b!5598007 m!6576868))

(assert (=> b!5598007 m!6576954))

(assert (=> b!5598007 m!6576868))

(declare-fun m!6576956 () Bool)

(assert (=> b!5598007 m!6576956))

(assert (=> b!5597510 d!1769468))

(assert (=> b!5597530 d!1769436))

(declare-fun c!981491 () Bool)

(declare-fun call!419882 () List!63054)

(declare-fun bm!419877 () Bool)

(declare-fun c!981488 () Bool)

(declare-fun $colon$colon!1648 (List!63054 Regex!15585) List!63054)

(assert (=> bm!419877 (= call!419882 ($colon$colon!1648 (exprs!5469 lt!2256515) (ite (or c!981491 c!981488) (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (regTwo!31683 (regOne!31682 r!7292)))))))

(declare-fun b!5598030 () Bool)

(declare-fun e!3453223 () (InoxSet Context!9938))

(declare-fun e!3453219 () (InoxSet Context!9938))

(assert (=> b!5598030 (= e!3453223 e!3453219)))

(declare-fun c!981489 () Bool)

(assert (=> b!5598030 (= c!981489 ((_ is Union!15585) (regTwo!31683 (regOne!31682 r!7292))))))

(declare-fun b!5598031 () Bool)

(declare-fun e!3453221 () (InoxSet Context!9938))

(assert (=> b!5598031 (= e!3453221 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598032 () Bool)

(assert (=> b!5598032 (= e!3453223 (store ((as const (Array Context!9938 Bool)) false) lt!2256515 true))))

(declare-fun b!5598033 () Bool)

(declare-fun e!3453218 () (InoxSet Context!9938))

(declare-fun call!419886 () (InoxSet Context!9938))

(declare-fun call!419884 () (InoxSet Context!9938))

(assert (=> b!5598033 (= e!3453218 ((_ map or) call!419886 call!419884))))

(declare-fun bm!419878 () Bool)

(declare-fun call!419883 () List!63054)

(assert (=> bm!419878 (= call!419883 call!419882)))

(declare-fun b!5598034 () Bool)

(declare-fun c!981487 () Bool)

(assert (=> b!5598034 (= c!981487 ((_ is Star!15585) (regTwo!31683 (regOne!31682 r!7292))))))

(declare-fun e!3453222 () (InoxSet Context!9938))

(assert (=> b!5598034 (= e!3453222 e!3453221)))

(declare-fun bm!419879 () Bool)

(declare-fun call!419887 () (InoxSet Context!9938))

(assert (=> bm!419879 (= call!419884 call!419887)))

(declare-fun b!5598035 () Bool)

(declare-fun e!3453220 () Bool)

(assert (=> b!5598035 (= c!981491 e!3453220)))

(declare-fun res!2374493 () Bool)

(assert (=> b!5598035 (=> (not res!2374493) (not e!3453220))))

(assert (=> b!5598035 (= res!2374493 ((_ is Concat!24430) (regTwo!31683 (regOne!31682 r!7292))))))

(assert (=> b!5598035 (= e!3453219 e!3453218)))

(declare-fun b!5598036 () Bool)

(declare-fun call!419885 () (InoxSet Context!9938))

(assert (=> b!5598036 (= e!3453222 call!419885)))

(declare-fun bm!419881 () Bool)

(assert (=> bm!419881 (= call!419885 call!419884)))

(declare-fun bm!419882 () Bool)

(assert (=> bm!419882 (= call!419886 (derivationStepZipperDown!927 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))) (ite c!981489 lt!2256515 (Context!9939 call!419882)) (h!69380 s!2326)))))

(declare-fun b!5598037 () Bool)

(assert (=> b!5598037 (= e!3453219 ((_ map or) call!419886 call!419887))))

(declare-fun b!5598038 () Bool)

(assert (=> b!5598038 (= e!3453220 (nullable!5617 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))))))

(declare-fun d!1769470 () Bool)

(declare-fun c!981490 () Bool)

(assert (=> d!1769470 (= c!981490 (and ((_ is ElementMatch!15585) (regTwo!31683 (regOne!31682 r!7292))) (= (c!981334 (regTwo!31683 (regOne!31682 r!7292))) (h!69380 s!2326))))))

(assert (=> d!1769470 (= (derivationStepZipperDown!927 (regTwo!31683 (regOne!31682 r!7292)) lt!2256515 (h!69380 s!2326)) e!3453223)))

(declare-fun bm!419880 () Bool)

(assert (=> bm!419880 (= call!419887 (derivationStepZipperDown!927 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292)))))) (ite (or c!981489 c!981491) lt!2256515 (Context!9939 call!419883)) (h!69380 s!2326)))))

(declare-fun b!5598039 () Bool)

(assert (=> b!5598039 (= e!3453221 call!419885)))

(declare-fun b!5598040 () Bool)

(assert (=> b!5598040 (= e!3453218 e!3453222)))

(assert (=> b!5598040 (= c!981488 ((_ is Concat!24430) (regTwo!31683 (regOne!31682 r!7292))))))

(assert (= (and d!1769470 c!981490) b!5598032))

(assert (= (and d!1769470 (not c!981490)) b!5598030))

(assert (= (and b!5598030 c!981489) b!5598037))

(assert (= (and b!5598030 (not c!981489)) b!5598035))

(assert (= (and b!5598035 res!2374493) b!5598038))

(assert (= (and b!5598035 c!981491) b!5598033))

(assert (= (and b!5598035 (not c!981491)) b!5598040))

(assert (= (and b!5598040 c!981488) b!5598036))

(assert (= (and b!5598040 (not c!981488)) b!5598034))

(assert (= (and b!5598034 c!981487) b!5598039))

(assert (= (and b!5598034 (not c!981487)) b!5598031))

(assert (= (or b!5598036 b!5598039) bm!419878))

(assert (= (or b!5598036 b!5598039) bm!419881))

(assert (= (or b!5598033 bm!419878) bm!419877))

(assert (= (or b!5598033 bm!419881) bm!419879))

(assert (= (or b!5598037 bm!419879) bm!419880))

(assert (= (or b!5598037 b!5598033) bm!419882))

(declare-fun m!6576958 () Bool)

(assert (=> bm!419882 m!6576958))

(declare-fun m!6576960 () Bool)

(assert (=> bm!419877 m!6576960))

(declare-fun m!6576962 () Bool)

(assert (=> b!5598038 m!6576962))

(declare-fun m!6576964 () Bool)

(assert (=> b!5598032 m!6576964))

(declare-fun m!6576966 () Bool)

(assert (=> bm!419880 m!6576966))

(assert (=> b!5597509 d!1769470))

(declare-fun bm!419883 () Bool)

(declare-fun c!981493 () Bool)

(declare-fun c!981496 () Bool)

(declare-fun call!419888 () List!63054)

(assert (=> bm!419883 (= call!419888 ($colon$colon!1648 (exprs!5469 lt!2256515) (ite (or c!981496 c!981493) (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (regOne!31683 (regOne!31682 r!7292)))))))

(declare-fun b!5598041 () Bool)

(declare-fun e!3453229 () (InoxSet Context!9938))

(declare-fun e!3453225 () (InoxSet Context!9938))

(assert (=> b!5598041 (= e!3453229 e!3453225)))

(declare-fun c!981494 () Bool)

(assert (=> b!5598041 (= c!981494 ((_ is Union!15585) (regOne!31683 (regOne!31682 r!7292))))))

(declare-fun b!5598042 () Bool)

(declare-fun e!3453227 () (InoxSet Context!9938))

(assert (=> b!5598042 (= e!3453227 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598043 () Bool)

(assert (=> b!5598043 (= e!3453229 (store ((as const (Array Context!9938 Bool)) false) lt!2256515 true))))

(declare-fun b!5598044 () Bool)

(declare-fun e!3453224 () (InoxSet Context!9938))

(declare-fun call!419892 () (InoxSet Context!9938))

(declare-fun call!419890 () (InoxSet Context!9938))

(assert (=> b!5598044 (= e!3453224 ((_ map or) call!419892 call!419890))))

(declare-fun bm!419884 () Bool)

(declare-fun call!419889 () List!63054)

(assert (=> bm!419884 (= call!419889 call!419888)))

(declare-fun b!5598045 () Bool)

(declare-fun c!981492 () Bool)

(assert (=> b!5598045 (= c!981492 ((_ is Star!15585) (regOne!31683 (regOne!31682 r!7292))))))

(declare-fun e!3453228 () (InoxSet Context!9938))

(assert (=> b!5598045 (= e!3453228 e!3453227)))

(declare-fun bm!419885 () Bool)

(declare-fun call!419893 () (InoxSet Context!9938))

(assert (=> bm!419885 (= call!419890 call!419893)))

(declare-fun b!5598046 () Bool)

(declare-fun e!3453226 () Bool)

(assert (=> b!5598046 (= c!981496 e!3453226)))

(declare-fun res!2374494 () Bool)

(assert (=> b!5598046 (=> (not res!2374494) (not e!3453226))))

(assert (=> b!5598046 (= res!2374494 ((_ is Concat!24430) (regOne!31683 (regOne!31682 r!7292))))))

(assert (=> b!5598046 (= e!3453225 e!3453224)))

(declare-fun b!5598047 () Bool)

(declare-fun call!419891 () (InoxSet Context!9938))

(assert (=> b!5598047 (= e!3453228 call!419891)))

(declare-fun bm!419887 () Bool)

(assert (=> bm!419887 (= call!419891 call!419890)))

(declare-fun bm!419888 () Bool)

(assert (=> bm!419888 (= call!419892 (derivationStepZipperDown!927 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))) (ite c!981494 lt!2256515 (Context!9939 call!419888)) (h!69380 s!2326)))))

(declare-fun b!5598048 () Bool)

(assert (=> b!5598048 (= e!3453225 ((_ map or) call!419892 call!419893))))

(declare-fun b!5598049 () Bool)

(assert (=> b!5598049 (= e!3453226 (nullable!5617 (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))))))

(declare-fun d!1769472 () Bool)

(declare-fun c!981495 () Bool)

(assert (=> d!1769472 (= c!981495 (and ((_ is ElementMatch!15585) (regOne!31683 (regOne!31682 r!7292))) (= (c!981334 (regOne!31683 (regOne!31682 r!7292))) (h!69380 s!2326))))))

(assert (=> d!1769472 (= (derivationStepZipperDown!927 (regOne!31683 (regOne!31682 r!7292)) lt!2256515 (h!69380 s!2326)) e!3453229)))

(declare-fun bm!419886 () Bool)

(assert (=> bm!419886 (= call!419893 (derivationStepZipperDown!927 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292)))))) (ite (or c!981494 c!981496) lt!2256515 (Context!9939 call!419889)) (h!69380 s!2326)))))

(declare-fun b!5598050 () Bool)

(assert (=> b!5598050 (= e!3453227 call!419891)))

(declare-fun b!5598051 () Bool)

(assert (=> b!5598051 (= e!3453224 e!3453228)))

(assert (=> b!5598051 (= c!981493 ((_ is Concat!24430) (regOne!31683 (regOne!31682 r!7292))))))

(assert (= (and d!1769472 c!981495) b!5598043))

(assert (= (and d!1769472 (not c!981495)) b!5598041))

(assert (= (and b!5598041 c!981494) b!5598048))

(assert (= (and b!5598041 (not c!981494)) b!5598046))

(assert (= (and b!5598046 res!2374494) b!5598049))

(assert (= (and b!5598046 c!981496) b!5598044))

(assert (= (and b!5598046 (not c!981496)) b!5598051))

(assert (= (and b!5598051 c!981493) b!5598047))

(assert (= (and b!5598051 (not c!981493)) b!5598045))

(assert (= (and b!5598045 c!981492) b!5598050))

(assert (= (and b!5598045 (not c!981492)) b!5598042))

(assert (= (or b!5598047 b!5598050) bm!419884))

(assert (= (or b!5598047 b!5598050) bm!419887))

(assert (= (or b!5598044 bm!419884) bm!419883))

(assert (= (or b!5598044 bm!419887) bm!419885))

(assert (= (or b!5598048 bm!419885) bm!419886))

(assert (= (or b!5598048 b!5598044) bm!419888))

(declare-fun m!6576968 () Bool)

(assert (=> bm!419888 m!6576968))

(declare-fun m!6576970 () Bool)

(assert (=> bm!419883 m!6576970))

(declare-fun m!6576972 () Bool)

(assert (=> b!5598049 m!6576972))

(assert (=> b!5598043 m!6576964))

(declare-fun m!6576974 () Bool)

(assert (=> bm!419886 m!6576974))

(assert (=> b!5597509 d!1769472))

(declare-fun d!1769474 () Bool)

(assert (=> d!1769474 (= (isEmpty!34754 (t!376338 (exprs!5469 (h!69379 zl!343)))) ((_ is Nil!62930) (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(assert (=> b!5597508 d!1769474))

(assert (=> b!5597516 d!1769466))

(declare-fun d!1769476 () Bool)

(declare-fun c!981497 () Bool)

(assert (=> d!1769476 (= c!981497 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453230 () Bool)

(assert (=> d!1769476 (= (matchZipper!1723 lt!2256511 (t!376340 s!2326)) e!3453230)))

(declare-fun b!5598052 () Bool)

(assert (=> b!5598052 (= e!3453230 (nullableZipper!1580 lt!2256511))))

(declare-fun b!5598053 () Bool)

(assert (=> b!5598053 (= e!3453230 (matchZipper!1723 (derivationStepZipper!1684 lt!2256511 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769476 c!981497) b!5598052))

(assert (= (and d!1769476 (not c!981497)) b!5598053))

(assert (=> d!1769476 m!6576860))

(declare-fun m!6576976 () Bool)

(assert (=> b!5598052 m!6576976))

(assert (=> b!5598053 m!6576864))

(assert (=> b!5598053 m!6576864))

(declare-fun m!6576978 () Bool)

(assert (=> b!5598053 m!6576978))

(assert (=> b!5598053 m!6576868))

(assert (=> b!5598053 m!6576978))

(assert (=> b!5598053 m!6576868))

(declare-fun m!6576980 () Bool)

(assert (=> b!5598053 m!6576980))

(assert (=> b!5597516 d!1769476))

(declare-fun d!1769478 () Bool)

(declare-fun c!981498 () Bool)

(assert (=> d!1769478 (= c!981498 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453231 () Bool)

(assert (=> d!1769478 (= (matchZipper!1723 lt!2256522 (t!376340 s!2326)) e!3453231)))

(declare-fun b!5598054 () Bool)

(assert (=> b!5598054 (= e!3453231 (nullableZipper!1580 lt!2256522))))

(declare-fun b!5598055 () Bool)

(assert (=> b!5598055 (= e!3453231 (matchZipper!1723 (derivationStepZipper!1684 lt!2256522 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769478 c!981498) b!5598054))

(assert (= (and d!1769478 (not c!981498)) b!5598055))

(assert (=> d!1769478 m!6576860))

(declare-fun m!6576982 () Bool)

(assert (=> b!5598054 m!6576982))

(assert (=> b!5598055 m!6576864))

(assert (=> b!5598055 m!6576864))

(declare-fun m!6576984 () Bool)

(assert (=> b!5598055 m!6576984))

(assert (=> b!5598055 m!6576868))

(assert (=> b!5598055 m!6576984))

(assert (=> b!5598055 m!6576868))

(declare-fun m!6576986 () Bool)

(assert (=> b!5598055 m!6576986))

(assert (=> b!5597516 d!1769478))

(declare-fun e!3453232 () Bool)

(declare-fun d!1769480 () Bool)

(assert (=> d!1769480 (= (matchZipper!1723 ((_ map or) lt!2256522 lt!2256505) (t!376340 s!2326)) e!3453232)))

(declare-fun res!2374495 () Bool)

(assert (=> d!1769480 (=> res!2374495 e!3453232)))

(assert (=> d!1769480 (= res!2374495 (matchZipper!1723 lt!2256522 (t!376340 s!2326)))))

(declare-fun lt!2256584 () Unit!155772)

(assert (=> d!1769480 (= lt!2256584 (choose!42454 lt!2256522 lt!2256505 (t!376340 s!2326)))))

(assert (=> d!1769480 (= (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256522 lt!2256505 (t!376340 s!2326)) lt!2256584)))

(declare-fun b!5598056 () Bool)

(assert (=> b!5598056 (= e!3453232 (matchZipper!1723 lt!2256505 (t!376340 s!2326)))))

(assert (= (and d!1769480 (not res!2374495)) b!5598056))

(declare-fun m!6576988 () Bool)

(assert (=> d!1769480 m!6576988))

(assert (=> d!1769480 m!6576506))

(declare-fun m!6576990 () Bool)

(assert (=> d!1769480 m!6576990))

(assert (=> b!5598056 m!6576452))

(assert (=> b!5597516 d!1769480))

(declare-fun d!1769482 () Bool)

(assert (=> d!1769482 (= (isEmpty!34755 (t!376339 zl!343)) ((_ is Nil!62931) (t!376339 zl!343)))))

(assert (=> b!5597515 d!1769482))

(declare-fun b!5598075 () Bool)

(declare-fun e!3453252 () Bool)

(declare-fun call!419902 () Bool)

(assert (=> b!5598075 (= e!3453252 call!419902)))

(declare-fun d!1769484 () Bool)

(declare-fun res!2374507 () Bool)

(declare-fun e!3453253 () Bool)

(assert (=> d!1769484 (=> res!2374507 e!3453253)))

(assert (=> d!1769484 (= res!2374507 ((_ is ElementMatch!15585) r!7292))))

(assert (=> d!1769484 (= (validRegex!7321 r!7292) e!3453253)))

(declare-fun b!5598076 () Bool)

(declare-fun res!2374508 () Bool)

(declare-fun e!3453248 () Bool)

(assert (=> b!5598076 (=> (not res!2374508) (not e!3453248))))

(declare-fun call!419900 () Bool)

(assert (=> b!5598076 (= res!2374508 call!419900)))

(declare-fun e!3453250 () Bool)

(assert (=> b!5598076 (= e!3453250 e!3453248)))

(declare-fun b!5598077 () Bool)

(declare-fun res!2374506 () Bool)

(declare-fun e!3453247 () Bool)

(assert (=> b!5598077 (=> res!2374506 e!3453247)))

(assert (=> b!5598077 (= res!2374506 (not ((_ is Concat!24430) r!7292)))))

(assert (=> b!5598077 (= e!3453250 e!3453247)))

(declare-fun b!5598078 () Bool)

(declare-fun e!3453251 () Bool)

(assert (=> b!5598078 (= e!3453253 e!3453251)))

(declare-fun c!981504 () Bool)

(assert (=> b!5598078 (= c!981504 ((_ is Star!15585) r!7292))))

(declare-fun b!5598079 () Bool)

(declare-fun e!3453249 () Bool)

(declare-fun call!419901 () Bool)

(assert (=> b!5598079 (= e!3453249 call!419901)))

(declare-fun b!5598080 () Bool)

(assert (=> b!5598080 (= e!3453251 e!3453249)))

(declare-fun res!2374509 () Bool)

(assert (=> b!5598080 (= res!2374509 (not (nullable!5617 (reg!15914 r!7292))))))

(assert (=> b!5598080 (=> (not res!2374509) (not e!3453249))))

(declare-fun c!981503 () Bool)

(declare-fun bm!419895 () Bool)

(assert (=> bm!419895 (= call!419901 (validRegex!7321 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))))))

(declare-fun b!5598081 () Bool)

(assert (=> b!5598081 (= e!3453248 call!419902)))

(declare-fun b!5598082 () Bool)

(assert (=> b!5598082 (= e!3453247 e!3453252)))

(declare-fun res!2374510 () Bool)

(assert (=> b!5598082 (=> (not res!2374510) (not e!3453252))))

(assert (=> b!5598082 (= res!2374510 call!419900)))

(declare-fun bm!419896 () Bool)

(assert (=> bm!419896 (= call!419900 (validRegex!7321 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))))))

(declare-fun b!5598083 () Bool)

(assert (=> b!5598083 (= e!3453251 e!3453250)))

(assert (=> b!5598083 (= c!981503 ((_ is Union!15585) r!7292))))

(declare-fun bm!419897 () Bool)

(assert (=> bm!419897 (= call!419902 call!419901)))

(assert (= (and d!1769484 (not res!2374507)) b!5598078))

(assert (= (and b!5598078 c!981504) b!5598080))

(assert (= (and b!5598078 (not c!981504)) b!5598083))

(assert (= (and b!5598080 res!2374509) b!5598079))

(assert (= (and b!5598083 c!981503) b!5598076))

(assert (= (and b!5598083 (not c!981503)) b!5598077))

(assert (= (and b!5598076 res!2374508) b!5598081))

(assert (= (and b!5598077 (not res!2374506)) b!5598082))

(assert (= (and b!5598082 res!2374510) b!5598075))

(assert (= (or b!5598081 b!5598075) bm!419897))

(assert (= (or b!5598076 b!5598082) bm!419896))

(assert (= (or b!5598079 bm!419897) bm!419895))

(declare-fun m!6576992 () Bool)

(assert (=> b!5598080 m!6576992))

(declare-fun m!6576994 () Bool)

(assert (=> bm!419895 m!6576994))

(declare-fun m!6576996 () Bool)

(assert (=> bm!419896 m!6576996))

(assert (=> start!581324 d!1769484))

(declare-fun b!5598102 () Bool)

(declare-fun res!2374524 () Bool)

(declare-fun e!3453268 () Bool)

(assert (=> b!5598102 (=> (not res!2374524) (not e!3453268))))

(declare-fun lt!2256591 () Option!15594)

(declare-fun get!21674 (Option!15594) tuple2!65364)

(assert (=> b!5598102 (= res!2374524 (matchR!7770 (regOne!31682 r!7292) (_1!35985 (get!21674 lt!2256591))))))

(declare-fun b!5598103 () Bool)

(declare-fun res!2374525 () Bool)

(assert (=> b!5598103 (=> (not res!2374525) (not e!3453268))))

(assert (=> b!5598103 (= res!2374525 (matchR!7770 (regTwo!31682 r!7292) (_2!35985 (get!21674 lt!2256591))))))

(declare-fun b!5598104 () Bool)

(declare-fun ++!13814 (List!63056 List!63056) List!63056)

(assert (=> b!5598104 (= e!3453268 (= (++!13814 (_1!35985 (get!21674 lt!2256591)) (_2!35985 (get!21674 lt!2256591))) s!2326))))

(declare-fun b!5598105 () Bool)

(declare-fun e!3453266 () Bool)

(assert (=> b!5598105 (= e!3453266 (matchR!7770 (regTwo!31682 r!7292) s!2326))))

(declare-fun b!5598106 () Bool)

(declare-fun e!3453265 () Bool)

(assert (=> b!5598106 (= e!3453265 (not (isDefined!12297 lt!2256591)))))

(declare-fun b!5598107 () Bool)

(declare-fun e!3453264 () Option!15594)

(assert (=> b!5598107 (= e!3453264 (Some!15593 (tuple2!65365 Nil!62932 s!2326)))))

(declare-fun b!5598108 () Bool)

(declare-fun lt!2256593 () Unit!155772)

(declare-fun lt!2256592 () Unit!155772)

(assert (=> b!5598108 (= lt!2256593 lt!2256592)))

(assert (=> b!5598108 (= (++!13814 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (t!376340 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1983 (List!63056 C!31440 List!63056 List!63056) Unit!155772)

(assert (=> b!5598108 (= lt!2256592 (lemmaMoveElementToOtherListKeepsConcatEq!1983 Nil!62932 (h!69380 s!2326) (t!376340 s!2326) s!2326))))

(declare-fun e!3453267 () Option!15594)

(assert (=> b!5598108 (= e!3453267 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (t!376340 s!2326) s!2326))))

(declare-fun b!5598110 () Bool)

(assert (=> b!5598110 (= e!3453267 None!15593)))

(declare-fun b!5598109 () Bool)

(assert (=> b!5598109 (= e!3453264 e!3453267)))

(declare-fun c!981510 () Bool)

(assert (=> b!5598109 (= c!981510 ((_ is Nil!62932) s!2326))))

(declare-fun d!1769486 () Bool)

(assert (=> d!1769486 e!3453265))

(declare-fun res!2374522 () Bool)

(assert (=> d!1769486 (=> res!2374522 e!3453265)))

(assert (=> d!1769486 (= res!2374522 e!3453268)))

(declare-fun res!2374521 () Bool)

(assert (=> d!1769486 (=> (not res!2374521) (not e!3453268))))

(assert (=> d!1769486 (= res!2374521 (isDefined!12297 lt!2256591))))

(assert (=> d!1769486 (= lt!2256591 e!3453264)))

(declare-fun c!981509 () Bool)

(assert (=> d!1769486 (= c!981509 e!3453266)))

(declare-fun res!2374523 () Bool)

(assert (=> d!1769486 (=> (not res!2374523) (not e!3453266))))

(assert (=> d!1769486 (= res!2374523 (matchR!7770 (regOne!31682 r!7292) Nil!62932))))

(assert (=> d!1769486 (validRegex!7321 (regOne!31682 r!7292))))

(assert (=> d!1769486 (= (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326) lt!2256591)))

(assert (= (and d!1769486 res!2374523) b!5598105))

(assert (= (and d!1769486 c!981509) b!5598107))

(assert (= (and d!1769486 (not c!981509)) b!5598109))

(assert (= (and b!5598109 c!981510) b!5598110))

(assert (= (and b!5598109 (not c!981510)) b!5598108))

(assert (= (and d!1769486 res!2374521) b!5598102))

(assert (= (and b!5598102 res!2374524) b!5598103))

(assert (= (and b!5598103 res!2374525) b!5598104))

(assert (= (and d!1769486 (not res!2374522)) b!5598106))

(declare-fun m!6576998 () Bool)

(assert (=> b!5598106 m!6576998))

(declare-fun m!6577000 () Bool)

(assert (=> b!5598104 m!6577000))

(declare-fun m!6577002 () Bool)

(assert (=> b!5598104 m!6577002))

(assert (=> b!5598103 m!6577000))

(declare-fun m!6577004 () Bool)

(assert (=> b!5598103 m!6577004))

(declare-fun m!6577006 () Bool)

(assert (=> b!5598105 m!6577006))

(assert (=> d!1769486 m!6576998))

(declare-fun m!6577008 () Bool)

(assert (=> d!1769486 m!6577008))

(declare-fun m!6577010 () Bool)

(assert (=> d!1769486 m!6577010))

(declare-fun m!6577012 () Bool)

(assert (=> b!5598108 m!6577012))

(assert (=> b!5598108 m!6577012))

(declare-fun m!6577014 () Bool)

(assert (=> b!5598108 m!6577014))

(declare-fun m!6577016 () Bool)

(assert (=> b!5598108 m!6577016))

(assert (=> b!5598108 m!6577012))

(declare-fun m!6577018 () Bool)

(assert (=> b!5598108 m!6577018))

(assert (=> b!5598102 m!6577000))

(declare-fun m!6577020 () Bool)

(assert (=> b!5598102 m!6577020))

(assert (=> b!5597514 d!1769486))

(declare-fun d!1769488 () Bool)

(declare-fun choose!42457 (Int) Bool)

(assert (=> d!1769488 (= (Exists!2685 lambda!300569) (choose!42457 lambda!300569))))

(declare-fun bs!1294250 () Bool)

(assert (= bs!1294250 d!1769488))

(declare-fun m!6577022 () Bool)

(assert (=> bs!1294250 m!6577022))

(assert (=> b!5597514 d!1769488))

(declare-fun d!1769490 () Bool)

(assert (=> d!1769490 (= (Exists!2685 lambda!300568) (choose!42457 lambda!300568))))

(declare-fun bs!1294251 () Bool)

(assert (= bs!1294251 d!1769490))

(declare-fun m!6577024 () Bool)

(assert (=> bs!1294251 m!6577024))

(assert (=> b!5597514 d!1769490))

(declare-fun bs!1294252 () Bool)

(declare-fun d!1769492 () Bool)

(assert (= bs!1294252 (and d!1769492 b!5597514)))

(declare-fun lambda!300604 () Int)

(assert (=> bs!1294252 (= lambda!300604 lambda!300568)))

(assert (=> bs!1294252 (not (= lambda!300604 lambda!300569))))

(assert (=> d!1769492 true))

(assert (=> d!1769492 true))

(assert (=> d!1769492 true))

(assert (=> d!1769492 (= (isDefined!12297 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326)) (Exists!2685 lambda!300604))))

(declare-fun lt!2256596 () Unit!155772)

(declare-fun choose!42458 (Regex!15585 Regex!15585 List!63056) Unit!155772)

(assert (=> d!1769492 (= lt!2256596 (choose!42458 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326))))

(assert (=> d!1769492 (validRegex!7321 (regOne!31682 r!7292))))

(assert (=> d!1769492 (= (lemmaFindConcatSeparationEquivalentToExists!1772 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326) lt!2256596)))

(declare-fun bs!1294253 () Bool)

(assert (= bs!1294253 d!1769492))

(assert (=> bs!1294253 m!6577010))

(assert (=> bs!1294253 m!6576520))

(assert (=> bs!1294253 m!6576522))

(declare-fun m!6577026 () Bool)

(assert (=> bs!1294253 m!6577026))

(declare-fun m!6577028 () Bool)

(assert (=> bs!1294253 m!6577028))

(assert (=> bs!1294253 m!6576520))

(assert (=> b!5597514 d!1769492))

(declare-fun bs!1294254 () Bool)

(declare-fun d!1769494 () Bool)

(assert (= bs!1294254 (and d!1769494 b!5597514)))

(declare-fun lambda!300609 () Int)

(assert (=> bs!1294254 (= lambda!300609 lambda!300568)))

(assert (=> bs!1294254 (not (= lambda!300609 lambda!300569))))

(declare-fun bs!1294255 () Bool)

(assert (= bs!1294255 (and d!1769494 d!1769492)))

(assert (=> bs!1294255 (= lambda!300609 lambda!300604)))

(assert (=> d!1769494 true))

(assert (=> d!1769494 true))

(assert (=> d!1769494 true))

(declare-fun lambda!300610 () Int)

(assert (=> bs!1294254 (not (= lambda!300610 lambda!300568))))

(assert (=> bs!1294254 (= lambda!300610 lambda!300569)))

(assert (=> bs!1294255 (not (= lambda!300610 lambda!300604))))

(declare-fun bs!1294256 () Bool)

(assert (= bs!1294256 d!1769494))

(assert (=> bs!1294256 (not (= lambda!300610 lambda!300609))))

(assert (=> d!1769494 true))

(assert (=> d!1769494 true))

(assert (=> d!1769494 true))

(assert (=> d!1769494 (= (Exists!2685 lambda!300609) (Exists!2685 lambda!300610))))

(declare-fun lt!2256599 () Unit!155772)

(declare-fun choose!42459 (Regex!15585 Regex!15585 List!63056) Unit!155772)

(assert (=> d!1769494 (= lt!2256599 (choose!42459 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326))))

(assert (=> d!1769494 (validRegex!7321 (regOne!31682 r!7292))))

(assert (=> d!1769494 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1314 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326) lt!2256599)))

(declare-fun m!6577030 () Bool)

(assert (=> bs!1294256 m!6577030))

(declare-fun m!6577032 () Bool)

(assert (=> bs!1294256 m!6577032))

(declare-fun m!6577034 () Bool)

(assert (=> bs!1294256 m!6577034))

(assert (=> bs!1294256 m!6577010))

(assert (=> b!5597514 d!1769494))

(declare-fun d!1769496 () Bool)

(declare-fun isEmpty!34759 (Option!15594) Bool)

(assert (=> d!1769496 (= (isDefined!12297 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326)) (not (isEmpty!34759 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326))))))

(declare-fun bs!1294257 () Bool)

(assert (= bs!1294257 d!1769496))

(assert (=> bs!1294257 m!6576520))

(declare-fun m!6577036 () Bool)

(assert (=> bs!1294257 m!6577036))

(assert (=> b!5597514 d!1769496))

(declare-fun bs!1294258 () Bool)

(declare-fun d!1769498 () Bool)

(assert (= bs!1294258 (and d!1769498 d!1769458)))

(declare-fun lambda!300613 () Int)

(assert (=> bs!1294258 (= lambda!300613 lambda!300601)))

(assert (=> d!1769498 (= (inv!82209 setElem!37333) (forall!14751 (exprs!5469 setElem!37333) lambda!300613))))

(declare-fun bs!1294259 () Bool)

(assert (= bs!1294259 d!1769498))

(declare-fun m!6577038 () Bool)

(assert (=> bs!1294259 m!6577038))

(assert (=> setNonEmpty!37333 d!1769498))

(declare-fun d!1769500 () Bool)

(assert (=> d!1769500 (= (flatMap!1198 z!1189 lambda!300570) (dynLambda!24617 lambda!300570 (h!69379 zl!343)))))

(declare-fun lt!2256600 () Unit!155772)

(assert (=> d!1769500 (= lt!2256600 (choose!42456 z!1189 (h!69379 zl!343) lambda!300570))))

(assert (=> d!1769500 (= z!1189 (store ((as const (Array Context!9938 Bool)) false) (h!69379 zl!343) true))))

(assert (=> d!1769500 (= (lemmaFlatMapOnSingletonSet!730 z!1189 (h!69379 zl!343) lambda!300570) lt!2256600)))

(declare-fun b_lambda!212131 () Bool)

(assert (=> (not b_lambda!212131) (not d!1769500)))

(declare-fun bs!1294260 () Bool)

(assert (= bs!1294260 d!1769500))

(assert (=> bs!1294260 m!6576458))

(declare-fun m!6577040 () Bool)

(assert (=> bs!1294260 m!6577040))

(declare-fun m!6577042 () Bool)

(assert (=> bs!1294260 m!6577042))

(declare-fun m!6577044 () Bool)

(assert (=> bs!1294260 m!6577044))

(assert (=> b!5597513 d!1769500))

(declare-fun d!1769502 () Bool)

(assert (=> d!1769502 (= (nullable!5617 (h!69378 (exprs!5469 (h!69379 zl!343)))) (nullableFct!1726 (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun bs!1294261 () Bool)

(assert (= bs!1294261 d!1769502))

(declare-fun m!6577046 () Bool)

(assert (=> bs!1294261 m!6577046))

(assert (=> b!5597513 d!1769502))

(declare-fun b!5598123 () Bool)

(declare-fun e!3453277 () (InoxSet Context!9938))

(assert (=> b!5598123 (= e!3453277 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598124 () Bool)

(declare-fun e!3453276 () Bool)

(assert (=> b!5598124 (= e!3453276 (nullable!5617 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))

(declare-fun b!5598125 () Bool)

(declare-fun call!419903 () (InoxSet Context!9938))

(assert (=> b!5598125 (= e!3453277 call!419903)))

(declare-fun d!1769504 () Bool)

(declare-fun c!981512 () Bool)

(assert (=> d!1769504 (= c!981512 e!3453276)))

(declare-fun res!2374538 () Bool)

(assert (=> d!1769504 (=> (not res!2374538) (not e!3453276))))

(assert (=> d!1769504 (= res!2374538 ((_ is Cons!62930) (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))

(declare-fun e!3453275 () (InoxSet Context!9938))

(assert (=> d!1769504 (= (derivationStepZipperUp!853 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))) (h!69380 s!2326)) e!3453275)))

(declare-fun bm!419898 () Bool)

(assert (=> bm!419898 (= call!419903 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (h!69380 s!2326)))))

(declare-fun b!5598126 () Bool)

(assert (=> b!5598126 (= e!3453275 e!3453277)))

(declare-fun c!981511 () Bool)

(assert (=> b!5598126 (= c!981511 ((_ is Cons!62930) (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))

(declare-fun b!5598127 () Bool)

(assert (=> b!5598127 (= e!3453275 ((_ map or) call!419903 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (h!69380 s!2326))))))

(assert (= (and d!1769504 res!2374538) b!5598124))

(assert (= (and d!1769504 c!981512) b!5598127))

(assert (= (and d!1769504 (not c!981512)) b!5598126))

(assert (= (and b!5598126 c!981511) b!5598125))

(assert (= (and b!5598126 (not c!981511)) b!5598123))

(assert (= (or b!5598127 b!5598125) bm!419898))

(declare-fun m!6577048 () Bool)

(assert (=> b!5598124 m!6577048))

(declare-fun m!6577050 () Bool)

(assert (=> bm!419898 m!6577050))

(declare-fun m!6577052 () Bool)

(assert (=> b!5598127 m!6577052))

(assert (=> b!5597513 d!1769504))

(declare-fun d!1769506 () Bool)

(assert (=> d!1769506 (= (flatMap!1198 z!1189 lambda!300570) (choose!42455 z!1189 lambda!300570))))

(declare-fun bs!1294262 () Bool)

(assert (= bs!1294262 d!1769506))

(declare-fun m!6577054 () Bool)

(assert (=> bs!1294262 m!6577054))

(assert (=> b!5597513 d!1769506))

(declare-fun bm!419899 () Bool)

(declare-fun call!419904 () List!63054)

(declare-fun c!981517 () Bool)

(declare-fun c!981514 () Bool)

(assert (=> bm!419899 (= call!419904 ($colon$colon!1648 (exprs!5469 lt!2256515) (ite (or c!981517 c!981514) (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (h!69378 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun b!5598128 () Bool)

(declare-fun e!3453283 () (InoxSet Context!9938))

(declare-fun e!3453279 () (InoxSet Context!9938))

(assert (=> b!5598128 (= e!3453283 e!3453279)))

(declare-fun c!981515 () Bool)

(assert (=> b!5598128 (= c!981515 ((_ is Union!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5598129 () Bool)

(declare-fun e!3453281 () (InoxSet Context!9938))

(assert (=> b!5598129 (= e!3453281 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598130 () Bool)

(assert (=> b!5598130 (= e!3453283 (store ((as const (Array Context!9938 Bool)) false) lt!2256515 true))))

(declare-fun b!5598131 () Bool)

(declare-fun e!3453278 () (InoxSet Context!9938))

(declare-fun call!419908 () (InoxSet Context!9938))

(declare-fun call!419906 () (InoxSet Context!9938))

(assert (=> b!5598131 (= e!3453278 ((_ map or) call!419908 call!419906))))

(declare-fun bm!419900 () Bool)

(declare-fun call!419905 () List!63054)

(assert (=> bm!419900 (= call!419905 call!419904)))

(declare-fun b!5598132 () Bool)

(declare-fun c!981513 () Bool)

(assert (=> b!5598132 (= c!981513 ((_ is Star!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun e!3453282 () (InoxSet Context!9938))

(assert (=> b!5598132 (= e!3453282 e!3453281)))

(declare-fun bm!419901 () Bool)

(declare-fun call!419909 () (InoxSet Context!9938))

(assert (=> bm!419901 (= call!419906 call!419909)))

(declare-fun b!5598133 () Bool)

(declare-fun e!3453280 () Bool)

(assert (=> b!5598133 (= c!981517 e!3453280)))

(declare-fun res!2374539 () Bool)

(assert (=> b!5598133 (=> (not res!2374539) (not e!3453280))))

(assert (=> b!5598133 (= res!2374539 ((_ is Concat!24430) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(assert (=> b!5598133 (= e!3453279 e!3453278)))

(declare-fun b!5598134 () Bool)

(declare-fun call!419907 () (InoxSet Context!9938))

(assert (=> b!5598134 (= e!3453282 call!419907)))

(declare-fun bm!419903 () Bool)

(assert (=> bm!419903 (= call!419907 call!419906)))

(declare-fun bm!419904 () Bool)

(assert (=> bm!419904 (= call!419908 (derivationStepZipperDown!927 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))) (ite c!981515 lt!2256515 (Context!9939 call!419904)) (h!69380 s!2326)))))

(declare-fun b!5598135 () Bool)

(assert (=> b!5598135 (= e!3453279 ((_ map or) call!419908 call!419909))))

(declare-fun b!5598136 () Bool)

(assert (=> b!5598136 (= e!3453280 (nullable!5617 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun d!1769508 () Bool)

(declare-fun c!981516 () Bool)

(assert (=> d!1769508 (= c!981516 (and ((_ is ElementMatch!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))) (= (c!981334 (h!69378 (exprs!5469 (h!69379 zl!343)))) (h!69380 s!2326))))))

(assert (=> d!1769508 (= (derivationStepZipperDown!927 (h!69378 (exprs!5469 (h!69379 zl!343))) lt!2256515 (h!69380 s!2326)) e!3453283)))

(declare-fun bm!419902 () Bool)

(assert (=> bm!419902 (= call!419909 (derivationStepZipperDown!927 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343))))))) (ite (or c!981515 c!981517) lt!2256515 (Context!9939 call!419905)) (h!69380 s!2326)))))

(declare-fun b!5598137 () Bool)

(assert (=> b!5598137 (= e!3453281 call!419907)))

(declare-fun b!5598138 () Bool)

(assert (=> b!5598138 (= e!3453278 e!3453282)))

(assert (=> b!5598138 (= c!981514 ((_ is Concat!24430) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(assert (= (and d!1769508 c!981516) b!5598130))

(assert (= (and d!1769508 (not c!981516)) b!5598128))

(assert (= (and b!5598128 c!981515) b!5598135))

(assert (= (and b!5598128 (not c!981515)) b!5598133))

(assert (= (and b!5598133 res!2374539) b!5598136))

(assert (= (and b!5598133 c!981517) b!5598131))

(assert (= (and b!5598133 (not c!981517)) b!5598138))

(assert (= (and b!5598138 c!981514) b!5598134))

(assert (= (and b!5598138 (not c!981514)) b!5598132))

(assert (= (and b!5598132 c!981513) b!5598137))

(assert (= (and b!5598132 (not c!981513)) b!5598129))

(assert (= (or b!5598134 b!5598137) bm!419900))

(assert (= (or b!5598134 b!5598137) bm!419903))

(assert (= (or b!5598131 bm!419900) bm!419899))

(assert (= (or b!5598131 bm!419903) bm!419901))

(assert (= (or b!5598135 bm!419901) bm!419902))

(assert (= (or b!5598135 b!5598131) bm!419904))

(declare-fun m!6577056 () Bool)

(assert (=> bm!419904 m!6577056))

(declare-fun m!6577058 () Bool)

(assert (=> bm!419899 m!6577058))

(declare-fun m!6577060 () Bool)

(assert (=> b!5598136 m!6577060))

(assert (=> b!5598130 m!6576964))

(declare-fun m!6577062 () Bool)

(assert (=> bm!419902 m!6577062))

(assert (=> b!5597513 d!1769508))

(declare-fun b!5598139 () Bool)

(declare-fun e!3453286 () (InoxSet Context!9938))

(assert (=> b!5598139 (= e!3453286 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598140 () Bool)

(declare-fun e!3453285 () Bool)

(assert (=> b!5598140 (= e!3453285 (nullable!5617 (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5598141 () Bool)

(declare-fun call!419910 () (InoxSet Context!9938))

(assert (=> b!5598141 (= e!3453286 call!419910)))

(declare-fun d!1769510 () Bool)

(declare-fun c!981519 () Bool)

(assert (=> d!1769510 (= c!981519 e!3453285)))

(declare-fun res!2374540 () Bool)

(assert (=> d!1769510 (=> (not res!2374540) (not e!3453285))))

(assert (=> d!1769510 (= res!2374540 ((_ is Cons!62930) (exprs!5469 (h!69379 zl!343))))))

(declare-fun e!3453284 () (InoxSet Context!9938))

(assert (=> d!1769510 (= (derivationStepZipperUp!853 (h!69379 zl!343) (h!69380 s!2326)) e!3453284)))

(declare-fun bm!419905 () Bool)

(assert (=> bm!419905 (= call!419910 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (h!69379 zl!343))) (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))) (h!69380 s!2326)))))

(declare-fun b!5598142 () Bool)

(assert (=> b!5598142 (= e!3453284 e!3453286)))

(declare-fun c!981518 () Bool)

(assert (=> b!5598142 (= c!981518 ((_ is Cons!62930) (exprs!5469 (h!69379 zl!343))))))

(declare-fun b!5598143 () Bool)

(assert (=> b!5598143 (= e!3453284 ((_ map or) call!419910 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))) (h!69380 s!2326))))))

(assert (= (and d!1769510 res!2374540) b!5598140))

(assert (= (and d!1769510 c!981519) b!5598143))

(assert (= (and d!1769510 (not c!981519)) b!5598142))

(assert (= (and b!5598142 c!981518) b!5598141))

(assert (= (and b!5598142 (not c!981518)) b!5598139))

(assert (= (or b!5598143 b!5598141) bm!419905))

(assert (=> b!5598140 m!6576466))

(declare-fun m!6577064 () Bool)

(assert (=> bm!419905 m!6577064))

(declare-fun m!6577066 () Bool)

(assert (=> b!5598143 m!6577066))

(assert (=> b!5597513 d!1769510))

(declare-fun b!5598144 () Bool)

(declare-fun e!3453289 () (InoxSet Context!9938))

(assert (=> b!5598144 (= e!3453289 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598145 () Bool)

(declare-fun e!3453288 () Bool)

(assert (=> b!5598145 (= e!3453288 (nullable!5617 (h!69378 (exprs!5469 lt!2256515))))))

(declare-fun b!5598146 () Bool)

(declare-fun call!419911 () (InoxSet Context!9938))

(assert (=> b!5598146 (= e!3453289 call!419911)))

(declare-fun d!1769512 () Bool)

(declare-fun c!981521 () Bool)

(assert (=> d!1769512 (= c!981521 e!3453288)))

(declare-fun res!2374541 () Bool)

(assert (=> d!1769512 (=> (not res!2374541) (not e!3453288))))

(assert (=> d!1769512 (= res!2374541 ((_ is Cons!62930) (exprs!5469 lt!2256515)))))

(declare-fun e!3453287 () (InoxSet Context!9938))

(assert (=> d!1769512 (= (derivationStepZipperUp!853 lt!2256515 (h!69380 s!2326)) e!3453287)))

(declare-fun bm!419906 () Bool)

(assert (=> bm!419906 (= call!419911 (derivationStepZipperDown!927 (h!69378 (exprs!5469 lt!2256515)) (Context!9939 (t!376338 (exprs!5469 lt!2256515))) (h!69380 s!2326)))))

(declare-fun b!5598147 () Bool)

(assert (=> b!5598147 (= e!3453287 e!3453289)))

(declare-fun c!981520 () Bool)

(assert (=> b!5598147 (= c!981520 ((_ is Cons!62930) (exprs!5469 lt!2256515)))))

(declare-fun b!5598148 () Bool)

(assert (=> b!5598148 (= e!3453287 ((_ map or) call!419911 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 lt!2256515))) (h!69380 s!2326))))))

(assert (= (and d!1769512 res!2374541) b!5598145))

(assert (= (and d!1769512 c!981521) b!5598148))

(assert (= (and d!1769512 (not c!981521)) b!5598147))

(assert (= (and b!5598147 c!981520) b!5598146))

(assert (= (and b!5598147 (not c!981520)) b!5598144))

(assert (= (or b!5598148 b!5598146) bm!419906))

(declare-fun m!6577068 () Bool)

(assert (=> b!5598145 m!6577068))

(declare-fun m!6577070 () Bool)

(assert (=> bm!419906 m!6577070))

(declare-fun m!6577072 () Bool)

(assert (=> b!5598148 m!6577072))

(assert (=> b!5597513 d!1769512))

(assert (=> b!5597522 d!1769462))

(declare-fun bs!1294263 () Bool)

(declare-fun d!1769514 () Bool)

(assert (= bs!1294263 (and d!1769514 d!1769458)))

(declare-fun lambda!300616 () Int)

(assert (=> bs!1294263 (= lambda!300616 lambda!300601)))

(declare-fun bs!1294264 () Bool)

(assert (= bs!1294264 (and d!1769514 d!1769498)))

(assert (=> bs!1294264 (= lambda!300616 lambda!300613)))

(declare-fun b!5598169 () Bool)

(declare-fun e!3453302 () Bool)

(declare-fun e!3453307 () Bool)

(assert (=> b!5598169 (= e!3453302 e!3453307)))

(declare-fun c!981530 () Bool)

(assert (=> b!5598169 (= c!981530 (isEmpty!34754 (unfocusZipperList!1013 zl!343)))))

(assert (=> d!1769514 e!3453302))

(declare-fun res!2374547 () Bool)

(assert (=> d!1769514 (=> (not res!2374547) (not e!3453302))))

(declare-fun lt!2256603 () Regex!15585)

(assert (=> d!1769514 (= res!2374547 (validRegex!7321 lt!2256603))))

(declare-fun e!3453304 () Regex!15585)

(assert (=> d!1769514 (= lt!2256603 e!3453304)))

(declare-fun c!981533 () Bool)

(declare-fun e!3453305 () Bool)

(assert (=> d!1769514 (= c!981533 e!3453305)))

(declare-fun res!2374546 () Bool)

(assert (=> d!1769514 (=> (not res!2374546) (not e!3453305))))

(assert (=> d!1769514 (= res!2374546 ((_ is Cons!62930) (unfocusZipperList!1013 zl!343)))))

(assert (=> d!1769514 (forall!14751 (unfocusZipperList!1013 zl!343) lambda!300616)))

(assert (=> d!1769514 (= (generalisedUnion!1448 (unfocusZipperList!1013 zl!343)) lt!2256603)))

(declare-fun b!5598170 () Bool)

(declare-fun isEmptyLang!1149 (Regex!15585) Bool)

(assert (=> b!5598170 (= e!3453307 (isEmptyLang!1149 lt!2256603))))

(declare-fun b!5598171 () Bool)

(declare-fun e!3453303 () Regex!15585)

(assert (=> b!5598171 (= e!3453303 EmptyLang!15585)))

(declare-fun b!5598172 () Bool)

(assert (=> b!5598172 (= e!3453303 (Union!15585 (h!69378 (unfocusZipperList!1013 zl!343)) (generalisedUnion!1448 (t!376338 (unfocusZipperList!1013 zl!343)))))))

(declare-fun b!5598173 () Bool)

(assert (=> b!5598173 (= e!3453305 (isEmpty!34754 (t!376338 (unfocusZipperList!1013 zl!343))))))

(declare-fun b!5598174 () Bool)

(assert (=> b!5598174 (= e!3453304 (h!69378 (unfocusZipperList!1013 zl!343)))))

(declare-fun b!5598175 () Bool)

(assert (=> b!5598175 (= e!3453304 e!3453303)))

(declare-fun c!981532 () Bool)

(assert (=> b!5598175 (= c!981532 ((_ is Cons!62930) (unfocusZipperList!1013 zl!343)))))

(declare-fun b!5598176 () Bool)

(declare-fun e!3453306 () Bool)

(assert (=> b!5598176 (= e!3453306 (= lt!2256603 (head!11940 (unfocusZipperList!1013 zl!343))))))

(declare-fun b!5598177 () Bool)

(assert (=> b!5598177 (= e!3453307 e!3453306)))

(declare-fun c!981531 () Bool)

(assert (=> b!5598177 (= c!981531 (isEmpty!34754 (tail!11035 (unfocusZipperList!1013 zl!343))))))

(declare-fun b!5598178 () Bool)

(declare-fun isUnion!579 (Regex!15585) Bool)

(assert (=> b!5598178 (= e!3453306 (isUnion!579 lt!2256603))))

(assert (= (and d!1769514 res!2374546) b!5598173))

(assert (= (and d!1769514 c!981533) b!5598174))

(assert (= (and d!1769514 (not c!981533)) b!5598175))

(assert (= (and b!5598175 c!981532) b!5598172))

(assert (= (and b!5598175 (not c!981532)) b!5598171))

(assert (= (and d!1769514 res!2374547) b!5598169))

(assert (= (and b!5598169 c!981530) b!5598170))

(assert (= (and b!5598169 (not c!981530)) b!5598177))

(assert (= (and b!5598177 c!981531) b!5598176))

(assert (= (and b!5598177 (not c!981531)) b!5598178))

(assert (=> b!5598169 m!6576482))

(declare-fun m!6577074 () Bool)

(assert (=> b!5598169 m!6577074))

(declare-fun m!6577076 () Bool)

(assert (=> b!5598170 m!6577076))

(declare-fun m!6577078 () Bool)

(assert (=> d!1769514 m!6577078))

(assert (=> d!1769514 m!6576482))

(declare-fun m!6577080 () Bool)

(assert (=> d!1769514 m!6577080))

(declare-fun m!6577082 () Bool)

(assert (=> b!5598173 m!6577082))

(assert (=> b!5598177 m!6576482))

(declare-fun m!6577084 () Bool)

(assert (=> b!5598177 m!6577084))

(assert (=> b!5598177 m!6577084))

(declare-fun m!6577086 () Bool)

(assert (=> b!5598177 m!6577086))

(declare-fun m!6577088 () Bool)

(assert (=> b!5598178 m!6577088))

(declare-fun m!6577090 () Bool)

(assert (=> b!5598172 m!6577090))

(assert (=> b!5598176 m!6576482))

(declare-fun m!6577092 () Bool)

(assert (=> b!5598176 m!6577092))

(assert (=> b!5597502 d!1769514))

(declare-fun bs!1294265 () Bool)

(declare-fun d!1769516 () Bool)

(assert (= bs!1294265 (and d!1769516 d!1769458)))

(declare-fun lambda!300619 () Int)

(assert (=> bs!1294265 (= lambda!300619 lambda!300601)))

(declare-fun bs!1294266 () Bool)

(assert (= bs!1294266 (and d!1769516 d!1769498)))

(assert (=> bs!1294266 (= lambda!300619 lambda!300613)))

(declare-fun bs!1294267 () Bool)

(assert (= bs!1294267 (and d!1769516 d!1769514)))

(assert (=> bs!1294267 (= lambda!300619 lambda!300616)))

(declare-fun lt!2256606 () List!63054)

(assert (=> d!1769516 (forall!14751 lt!2256606 lambda!300619)))

(declare-fun e!3453310 () List!63054)

(assert (=> d!1769516 (= lt!2256606 e!3453310)))

(declare-fun c!981536 () Bool)

(assert (=> d!1769516 (= c!981536 ((_ is Cons!62931) zl!343))))

(assert (=> d!1769516 (= (unfocusZipperList!1013 zl!343) lt!2256606)))

(declare-fun b!5598183 () Bool)

(assert (=> b!5598183 (= e!3453310 (Cons!62930 (generalisedConcat!1200 (exprs!5469 (h!69379 zl!343))) (unfocusZipperList!1013 (t!376339 zl!343))))))

(declare-fun b!5598184 () Bool)

(assert (=> b!5598184 (= e!3453310 Nil!62930)))

(assert (= (and d!1769516 c!981536) b!5598183))

(assert (= (and d!1769516 (not c!981536)) b!5598184))

(declare-fun m!6577094 () Bool)

(assert (=> d!1769516 m!6577094))

(assert (=> b!5598183 m!6576480))

(declare-fun m!6577096 () Bool)

(assert (=> b!5598183 m!6577096))

(assert (=> b!5597502 d!1769516))

(declare-fun bs!1294268 () Bool)

(declare-fun d!1769518 () Bool)

(assert (= bs!1294268 (and d!1769518 d!1769458)))

(declare-fun lambda!300620 () Int)

(assert (=> bs!1294268 (= lambda!300620 lambda!300601)))

(declare-fun bs!1294269 () Bool)

(assert (= bs!1294269 (and d!1769518 d!1769498)))

(assert (=> bs!1294269 (= lambda!300620 lambda!300613)))

(declare-fun bs!1294270 () Bool)

(assert (= bs!1294270 (and d!1769518 d!1769514)))

(assert (=> bs!1294270 (= lambda!300620 lambda!300616)))

(declare-fun bs!1294271 () Bool)

(assert (= bs!1294271 (and d!1769518 d!1769516)))

(assert (=> bs!1294271 (= lambda!300620 lambda!300619)))

(assert (=> d!1769518 (= (inv!82209 (h!69379 zl!343)) (forall!14751 (exprs!5469 (h!69379 zl!343)) lambda!300620))))

(declare-fun bs!1294272 () Bool)

(assert (= bs!1294272 d!1769518))

(declare-fun m!6577098 () Bool)

(assert (=> bs!1294272 m!6577098))

(assert (=> b!5597521 d!1769518))

(declare-fun bs!1294273 () Bool)

(declare-fun b!5598222 () Bool)

(assert (= bs!1294273 (and b!5598222 b!5597514)))

(declare-fun lambda!300625 () Int)

(assert (=> bs!1294273 (not (= lambda!300625 lambda!300569))))

(declare-fun bs!1294274 () Bool)

(assert (= bs!1294274 (and b!5598222 d!1769492)))

(assert (=> bs!1294274 (not (= lambda!300625 lambda!300604))))

(declare-fun bs!1294275 () Bool)

(assert (= bs!1294275 (and b!5598222 d!1769494)))

(assert (=> bs!1294275 (not (= lambda!300625 lambda!300609))))

(assert (=> bs!1294275 (not (= lambda!300625 lambda!300610))))

(assert (=> bs!1294273 (not (= lambda!300625 lambda!300568))))

(assert (=> b!5598222 true))

(assert (=> b!5598222 true))

(declare-fun bs!1294276 () Bool)

(declare-fun b!5598224 () Bool)

(assert (= bs!1294276 (and b!5598224 b!5597514)))

(declare-fun lambda!300626 () Int)

(assert (=> bs!1294276 (= lambda!300626 lambda!300569)))

(declare-fun bs!1294277 () Bool)

(assert (= bs!1294277 (and b!5598224 d!1769492)))

(assert (=> bs!1294277 (not (= lambda!300626 lambda!300604))))

(declare-fun bs!1294278 () Bool)

(assert (= bs!1294278 (and b!5598224 d!1769494)))

(assert (=> bs!1294278 (not (= lambda!300626 lambda!300609))))

(declare-fun bs!1294279 () Bool)

(assert (= bs!1294279 (and b!5598224 b!5598222)))

(assert (=> bs!1294279 (not (= lambda!300626 lambda!300625))))

(assert (=> bs!1294278 (= lambda!300626 lambda!300610)))

(assert (=> bs!1294276 (not (= lambda!300626 lambda!300568))))

(assert (=> b!5598224 true))

(assert (=> b!5598224 true))

(declare-fun b!5598217 () Bool)

(declare-fun e!3453330 () Bool)

(declare-fun e!3453335 () Bool)

(assert (=> b!5598217 (= e!3453330 e!3453335)))

(declare-fun res!2374564 () Bool)

(assert (=> b!5598217 (= res!2374564 (matchRSpec!2688 (regOne!31683 r!7292) s!2326))))

(assert (=> b!5598217 (=> res!2374564 e!3453335)))

(declare-fun d!1769520 () Bool)

(declare-fun c!981548 () Bool)

(assert (=> d!1769520 (= c!981548 ((_ is EmptyExpr!15585) r!7292))))

(declare-fun e!3453334 () Bool)

(assert (=> d!1769520 (= (matchRSpec!2688 r!7292 s!2326) e!3453334)))

(declare-fun b!5598218 () Bool)

(declare-fun c!981546 () Bool)

(assert (=> b!5598218 (= c!981546 ((_ is Union!15585) r!7292))))

(declare-fun e!3453329 () Bool)

(assert (=> b!5598218 (= e!3453329 e!3453330)))

(declare-fun b!5598219 () Bool)

(declare-fun c!981545 () Bool)

(assert (=> b!5598219 (= c!981545 ((_ is ElementMatch!15585) r!7292))))

(declare-fun e!3453331 () Bool)

(assert (=> b!5598219 (= e!3453331 e!3453329)))

(declare-fun b!5598220 () Bool)

(assert (=> b!5598220 (= e!3453335 (matchRSpec!2688 (regTwo!31683 r!7292) s!2326))))

(declare-fun bm!419911 () Bool)

(declare-fun call!419917 () Bool)

(assert (=> bm!419911 (= call!419917 (isEmpty!34758 s!2326))))

(declare-fun b!5598221 () Bool)

(assert (=> b!5598221 (= e!3453329 (= s!2326 (Cons!62932 (c!981334 r!7292) Nil!62932)))))

(declare-fun e!3453333 () Bool)

(declare-fun call!419916 () Bool)

(assert (=> b!5598222 (= e!3453333 call!419916)))

(declare-fun b!5598223 () Bool)

(assert (=> b!5598223 (= e!3453334 call!419917)))

(declare-fun bm!419912 () Bool)

(declare-fun c!981547 () Bool)

(assert (=> bm!419912 (= call!419916 (Exists!2685 (ite c!981547 lambda!300625 lambda!300626)))))

(declare-fun e!3453332 () Bool)

(assert (=> b!5598224 (= e!3453332 call!419916)))

(declare-fun b!5598225 () Bool)

(assert (=> b!5598225 (= e!3453334 e!3453331)))

(declare-fun res!2374565 () Bool)

(assert (=> b!5598225 (= res!2374565 (not ((_ is EmptyLang!15585) r!7292)))))

(assert (=> b!5598225 (=> (not res!2374565) (not e!3453331))))

(declare-fun b!5598226 () Bool)

(declare-fun res!2374566 () Bool)

(assert (=> b!5598226 (=> res!2374566 e!3453333)))

(assert (=> b!5598226 (= res!2374566 call!419917)))

(assert (=> b!5598226 (= e!3453332 e!3453333)))

(declare-fun b!5598227 () Bool)

(assert (=> b!5598227 (= e!3453330 e!3453332)))

(assert (=> b!5598227 (= c!981547 ((_ is Star!15585) r!7292))))

(assert (= (and d!1769520 c!981548) b!5598223))

(assert (= (and d!1769520 (not c!981548)) b!5598225))

(assert (= (and b!5598225 res!2374565) b!5598219))

(assert (= (and b!5598219 c!981545) b!5598221))

(assert (= (and b!5598219 (not c!981545)) b!5598218))

(assert (= (and b!5598218 c!981546) b!5598217))

(assert (= (and b!5598218 (not c!981546)) b!5598227))

(assert (= (and b!5598217 (not res!2374564)) b!5598220))

(assert (= (and b!5598227 c!981547) b!5598226))

(assert (= (and b!5598227 (not c!981547)) b!5598224))

(assert (= (and b!5598226 (not res!2374566)) b!5598222))

(assert (= (or b!5598222 b!5598224) bm!419912))

(assert (= (or b!5598223 b!5598226) bm!419911))

(declare-fun m!6577100 () Bool)

(assert (=> b!5598217 m!6577100))

(declare-fun m!6577102 () Bool)

(assert (=> b!5598220 m!6577102))

(assert (=> bm!419911 m!6576846))

(declare-fun m!6577104 () Bool)

(assert (=> bm!419912 m!6577104))

(assert (=> b!5597520 d!1769520))

(declare-fun b!5598256 () Bool)

(declare-fun e!3453350 () Bool)

(declare-fun lt!2256609 () Bool)

(assert (=> b!5598256 (= e!3453350 (not lt!2256609))))

(declare-fun b!5598257 () Bool)

(declare-fun e!3453354 () Bool)

(assert (=> b!5598257 (= e!3453354 (= (head!11939 s!2326) (c!981334 r!7292)))))

(declare-fun b!5598259 () Bool)

(declare-fun e!3453353 () Bool)

(assert (=> b!5598259 (= e!3453353 (not (= (head!11939 s!2326) (c!981334 r!7292))))))

(declare-fun b!5598260 () Bool)

(declare-fun res!2374585 () Bool)

(declare-fun e!3453355 () Bool)

(assert (=> b!5598260 (=> res!2374585 e!3453355)))

(assert (=> b!5598260 (= res!2374585 e!3453354)))

(declare-fun res!2374588 () Bool)

(assert (=> b!5598260 (=> (not res!2374588) (not e!3453354))))

(assert (=> b!5598260 (= res!2374588 lt!2256609)))

(declare-fun b!5598261 () Bool)

(declare-fun e!3453352 () Bool)

(assert (=> b!5598261 (= e!3453352 e!3453353)))

(declare-fun res!2374583 () Bool)

(assert (=> b!5598261 (=> res!2374583 e!3453353)))

(declare-fun call!419920 () Bool)

(assert (=> b!5598261 (= res!2374583 call!419920)))

(declare-fun b!5598262 () Bool)

(assert (=> b!5598262 (= e!3453355 e!3453352)))

(declare-fun res!2374586 () Bool)

(assert (=> b!5598262 (=> (not res!2374586) (not e!3453352))))

(assert (=> b!5598262 (= res!2374586 (not lt!2256609))))

(declare-fun b!5598263 () Bool)

(declare-fun e!3453356 () Bool)

(assert (=> b!5598263 (= e!3453356 (= lt!2256609 call!419920))))

(declare-fun b!5598264 () Bool)

(declare-fun res!2374584 () Bool)

(assert (=> b!5598264 (=> res!2374584 e!3453355)))

(assert (=> b!5598264 (= res!2374584 (not ((_ is ElementMatch!15585) r!7292)))))

(assert (=> b!5598264 (= e!3453350 e!3453355)))

(declare-fun b!5598265 () Bool)

(declare-fun res!2374587 () Bool)

(assert (=> b!5598265 (=> (not res!2374587) (not e!3453354))))

(assert (=> b!5598265 (= res!2374587 (not call!419920))))

(declare-fun b!5598266 () Bool)

(declare-fun e!3453351 () Bool)

(assert (=> b!5598266 (= e!3453351 (nullable!5617 r!7292))))

(declare-fun b!5598267 () Bool)

(declare-fun derivativeStep!4433 (Regex!15585 C!31440) Regex!15585)

(assert (=> b!5598267 (= e!3453351 (matchR!7770 (derivativeStep!4433 r!7292 (head!11939 s!2326)) (tail!11034 s!2326)))))

(declare-fun bm!419915 () Bool)

(assert (=> bm!419915 (= call!419920 (isEmpty!34758 s!2326))))

(declare-fun d!1769522 () Bool)

(assert (=> d!1769522 e!3453356))

(declare-fun c!981556 () Bool)

(assert (=> d!1769522 (= c!981556 ((_ is EmptyExpr!15585) r!7292))))

(assert (=> d!1769522 (= lt!2256609 e!3453351)))

(declare-fun c!981555 () Bool)

(assert (=> d!1769522 (= c!981555 (isEmpty!34758 s!2326))))

(assert (=> d!1769522 (validRegex!7321 r!7292)))

(assert (=> d!1769522 (= (matchR!7770 r!7292 s!2326) lt!2256609)))

(declare-fun b!5598258 () Bool)

(declare-fun res!2374589 () Bool)

(assert (=> b!5598258 (=> (not res!2374589) (not e!3453354))))

(assert (=> b!5598258 (= res!2374589 (isEmpty!34758 (tail!11034 s!2326)))))

(declare-fun b!5598268 () Bool)

(declare-fun res!2374590 () Bool)

(assert (=> b!5598268 (=> res!2374590 e!3453353)))

(assert (=> b!5598268 (= res!2374590 (not (isEmpty!34758 (tail!11034 s!2326))))))

(declare-fun b!5598269 () Bool)

(assert (=> b!5598269 (= e!3453356 e!3453350)))

(declare-fun c!981557 () Bool)

(assert (=> b!5598269 (= c!981557 ((_ is EmptyLang!15585) r!7292))))

(assert (= (and d!1769522 c!981555) b!5598266))

(assert (= (and d!1769522 (not c!981555)) b!5598267))

(assert (= (and d!1769522 c!981556) b!5598263))

(assert (= (and d!1769522 (not c!981556)) b!5598269))

(assert (= (and b!5598269 c!981557) b!5598256))

(assert (= (and b!5598269 (not c!981557)) b!5598264))

(assert (= (and b!5598264 (not res!2374584)) b!5598260))

(assert (= (and b!5598260 res!2374588) b!5598265))

(assert (= (and b!5598265 res!2374587) b!5598258))

(assert (= (and b!5598258 res!2374589) b!5598257))

(assert (= (and b!5598260 (not res!2374585)) b!5598262))

(assert (= (and b!5598262 res!2374586) b!5598261))

(assert (= (and b!5598261 (not res!2374583)) b!5598268))

(assert (= (and b!5598268 (not res!2374590)) b!5598259))

(assert (= (or b!5598263 b!5598261 b!5598265) bm!419915))

(declare-fun m!6577106 () Bool)

(assert (=> b!5598266 m!6577106))

(assert (=> b!5598258 m!6576854))

(assert (=> b!5598258 m!6576854))

(declare-fun m!6577108 () Bool)

(assert (=> b!5598258 m!6577108))

(assert (=> d!1769522 m!6576846))

(assert (=> d!1769522 m!6576498))

(assert (=> b!5598268 m!6576854))

(assert (=> b!5598268 m!6576854))

(assert (=> b!5598268 m!6577108))

(assert (=> b!5598257 m!6576850))

(assert (=> b!5598267 m!6576850))

(assert (=> b!5598267 m!6576850))

(declare-fun m!6577110 () Bool)

(assert (=> b!5598267 m!6577110))

(assert (=> b!5598267 m!6576854))

(assert (=> b!5598267 m!6577110))

(assert (=> b!5598267 m!6576854))

(declare-fun m!6577112 () Bool)

(assert (=> b!5598267 m!6577112))

(assert (=> b!5598259 m!6576850))

(assert (=> bm!419915 m!6576846))

(assert (=> b!5597520 d!1769522))

(declare-fun d!1769524 () Bool)

(assert (=> d!1769524 (= (matchR!7770 r!7292 s!2326) (matchRSpec!2688 r!7292 s!2326))))

(declare-fun lt!2256612 () Unit!155772)

(declare-fun choose!42460 (Regex!15585 List!63056) Unit!155772)

(assert (=> d!1769524 (= lt!2256612 (choose!42460 r!7292 s!2326))))

(assert (=> d!1769524 (validRegex!7321 r!7292)))

(assert (=> d!1769524 (= (mainMatchTheorem!2688 r!7292 s!2326) lt!2256612)))

(declare-fun bs!1294280 () Bool)

(assert (= bs!1294280 d!1769524))

(assert (=> bs!1294280 m!6576530))

(assert (=> bs!1294280 m!6576528))

(declare-fun m!6577114 () Bool)

(assert (=> bs!1294280 m!6577114))

(assert (=> bs!1294280 m!6576498))

(assert (=> b!5597520 d!1769524))

(declare-fun d!1769526 () Bool)

(declare-fun e!3453357 () Bool)

(assert (=> d!1769526 (= (matchZipper!1723 ((_ map or) lt!2256505 lt!2256516) (t!376340 s!2326)) e!3453357)))

(declare-fun res!2374591 () Bool)

(assert (=> d!1769526 (=> res!2374591 e!3453357)))

(assert (=> d!1769526 (= res!2374591 (matchZipper!1723 lt!2256505 (t!376340 s!2326)))))

(declare-fun lt!2256613 () Unit!155772)

(assert (=> d!1769526 (= lt!2256613 (choose!42454 lt!2256505 lt!2256516 (t!376340 s!2326)))))

(assert (=> d!1769526 (= (lemmaZipperConcatMatchesSameAsBothZippers!610 lt!2256505 lt!2256516 (t!376340 s!2326)) lt!2256613)))

(declare-fun b!5598270 () Bool)

(assert (=> b!5598270 (= e!3453357 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(assert (= (and d!1769526 (not res!2374591)) b!5598270))

(assert (=> d!1769526 m!6576514))

(assert (=> d!1769526 m!6576452))

(declare-fun m!6577116 () Bool)

(assert (=> d!1769526 m!6577116))

(assert (=> b!5598270 m!6576478))

(assert (=> b!5597519 d!1769526))

(assert (=> b!5597519 d!1769436))

(declare-fun d!1769528 () Bool)

(declare-fun c!981558 () Bool)

(assert (=> d!1769528 (= c!981558 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453358 () Bool)

(assert (=> d!1769528 (= (matchZipper!1723 ((_ map or) lt!2256505 lt!2256516) (t!376340 s!2326)) e!3453358)))

(declare-fun b!5598271 () Bool)

(assert (=> b!5598271 (= e!3453358 (nullableZipper!1580 ((_ map or) lt!2256505 lt!2256516)))))

(declare-fun b!5598272 () Bool)

(assert (=> b!5598272 (= e!3453358 (matchZipper!1723 (derivationStepZipper!1684 ((_ map or) lt!2256505 lt!2256516) (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1769528 c!981558) b!5598271))

(assert (= (and d!1769528 (not c!981558)) b!5598272))

(assert (=> d!1769528 m!6576860))

(declare-fun m!6577118 () Bool)

(assert (=> b!5598271 m!6577118))

(assert (=> b!5598272 m!6576864))

(assert (=> b!5598272 m!6576864))

(declare-fun m!6577120 () Bool)

(assert (=> b!5598272 m!6577120))

(assert (=> b!5598272 m!6576868))

(assert (=> b!5598272 m!6577120))

(assert (=> b!5598272 m!6576868))

(declare-fun m!6577122 () Bool)

(assert (=> b!5598272 m!6577122))

(assert (=> b!5597519 d!1769528))

(declare-fun d!1769530 () Bool)

(declare-fun e!3453361 () Bool)

(assert (=> d!1769530 e!3453361))

(declare-fun res!2374594 () Bool)

(assert (=> d!1769530 (=> (not res!2374594) (not e!3453361))))

(declare-fun lt!2256616 () List!63055)

(declare-fun noDuplicate!1561 (List!63055) Bool)

(assert (=> d!1769530 (= res!2374594 (noDuplicate!1561 lt!2256616))))

(declare-fun choose!42461 ((InoxSet Context!9938)) List!63055)

(assert (=> d!1769530 (= lt!2256616 (choose!42461 z!1189))))

(assert (=> d!1769530 (= (toList!9369 z!1189) lt!2256616)))

(declare-fun b!5598275 () Bool)

(declare-fun content!11364 (List!63055) (InoxSet Context!9938))

(assert (=> b!5598275 (= e!3453361 (= (content!11364 lt!2256616) z!1189))))

(assert (= (and d!1769530 res!2374594) b!5598275))

(declare-fun m!6577124 () Bool)

(assert (=> d!1769530 m!6577124))

(declare-fun m!6577126 () Bool)

(assert (=> d!1769530 m!6577126))

(declare-fun m!6577128 () Bool)

(assert (=> b!5598275 m!6577128))

(assert (=> b!5597498 d!1769530))

(assert (=> b!5597517 d!1769462))

(declare-fun b!5598283 () Bool)

(declare-fun e!3453367 () Bool)

(declare-fun tp!1547906 () Bool)

(assert (=> b!5598283 (= e!3453367 tp!1547906)))

(declare-fun tp!1547907 () Bool)

(declare-fun e!3453366 () Bool)

(declare-fun b!5598282 () Bool)

(assert (=> b!5598282 (= e!3453366 (and (inv!82209 (h!69379 (t!376339 zl!343))) e!3453367 tp!1547907))))

(assert (=> b!5597521 (= tp!1547842 e!3453366)))

(assert (= b!5598282 b!5598283))

(assert (= (and b!5597521 ((_ is Cons!62931) (t!376339 zl!343))) b!5598282))

(declare-fun m!6577130 () Bool)

(assert (=> b!5598282 m!6577130))

(declare-fun b!5598288 () Bool)

(declare-fun e!3453370 () Bool)

(declare-fun tp!1547910 () Bool)

(assert (=> b!5598288 (= e!3453370 (and tp_is_empty!40423 tp!1547910))))

(assert (=> b!5597511 (= tp!1547835 e!3453370)))

(assert (= (and b!5597511 ((_ is Cons!62932) (t!376340 s!2326))) b!5598288))

(declare-fun b!5598299 () Bool)

(declare-fun e!3453373 () Bool)

(assert (=> b!5598299 (= e!3453373 tp_is_empty!40423)))

(declare-fun b!5598301 () Bool)

(declare-fun tp!1547924 () Bool)

(assert (=> b!5598301 (= e!3453373 tp!1547924)))

(declare-fun b!5598300 () Bool)

(declare-fun tp!1547923 () Bool)

(declare-fun tp!1547922 () Bool)

(assert (=> b!5598300 (= e!3453373 (and tp!1547923 tp!1547922))))

(assert (=> b!5597531 (= tp!1547836 e!3453373)))

(declare-fun b!5598302 () Bool)

(declare-fun tp!1547921 () Bool)

(declare-fun tp!1547925 () Bool)

(assert (=> b!5598302 (= e!3453373 (and tp!1547921 tp!1547925))))

(assert (= (and b!5597531 ((_ is ElementMatch!15585) (regOne!31682 r!7292))) b!5598299))

(assert (= (and b!5597531 ((_ is Concat!24430) (regOne!31682 r!7292))) b!5598300))

(assert (= (and b!5597531 ((_ is Star!15585) (regOne!31682 r!7292))) b!5598301))

(assert (= (and b!5597531 ((_ is Union!15585) (regOne!31682 r!7292))) b!5598302))

(declare-fun b!5598303 () Bool)

(declare-fun e!3453374 () Bool)

(assert (=> b!5598303 (= e!3453374 tp_is_empty!40423)))

(declare-fun b!5598305 () Bool)

(declare-fun tp!1547929 () Bool)

(assert (=> b!5598305 (= e!3453374 tp!1547929)))

(declare-fun b!5598304 () Bool)

(declare-fun tp!1547928 () Bool)

(declare-fun tp!1547927 () Bool)

(assert (=> b!5598304 (= e!3453374 (and tp!1547928 tp!1547927))))

(assert (=> b!5597531 (= tp!1547838 e!3453374)))

(declare-fun b!5598306 () Bool)

(declare-fun tp!1547926 () Bool)

(declare-fun tp!1547930 () Bool)

(assert (=> b!5598306 (= e!3453374 (and tp!1547926 tp!1547930))))

(assert (= (and b!5597531 ((_ is ElementMatch!15585) (regTwo!31682 r!7292))) b!5598303))

(assert (= (and b!5597531 ((_ is Concat!24430) (regTwo!31682 r!7292))) b!5598304))

(assert (= (and b!5597531 ((_ is Star!15585) (regTwo!31682 r!7292))) b!5598305))

(assert (= (and b!5597531 ((_ is Union!15585) (regTwo!31682 r!7292))) b!5598306))

(declare-fun b!5598311 () Bool)

(declare-fun e!3453377 () Bool)

(declare-fun tp!1547935 () Bool)

(declare-fun tp!1547936 () Bool)

(assert (=> b!5598311 (= e!3453377 (and tp!1547935 tp!1547936))))

(assert (=> b!5597529 (= tp!1547839 e!3453377)))

(assert (= (and b!5597529 ((_ is Cons!62930) (exprs!5469 (h!69379 zl!343)))) b!5598311))

(declare-fun condSetEmpty!37339 () Bool)

(assert (=> setNonEmpty!37333 (= condSetEmpty!37339 (= setRest!37333 ((as const (Array Context!9938 Bool)) false)))))

(declare-fun setRes!37339 () Bool)

(assert (=> setNonEmpty!37333 (= tp!1547837 setRes!37339)))

(declare-fun setIsEmpty!37339 () Bool)

(assert (=> setIsEmpty!37339 setRes!37339))

(declare-fun e!3453380 () Bool)

(declare-fun setElem!37339 () Context!9938)

(declare-fun setNonEmpty!37339 () Bool)

(declare-fun tp!1547941 () Bool)

(assert (=> setNonEmpty!37339 (= setRes!37339 (and tp!1547941 (inv!82209 setElem!37339) e!3453380))))

(declare-fun setRest!37339 () (InoxSet Context!9938))

(assert (=> setNonEmpty!37339 (= setRest!37333 ((_ map or) (store ((as const (Array Context!9938 Bool)) false) setElem!37339 true) setRest!37339))))

(declare-fun b!5598316 () Bool)

(declare-fun tp!1547942 () Bool)

(assert (=> b!5598316 (= e!3453380 tp!1547942)))

(assert (= (and setNonEmpty!37333 condSetEmpty!37339) setIsEmpty!37339))

(assert (= (and setNonEmpty!37333 (not condSetEmpty!37339)) setNonEmpty!37339))

(assert (= setNonEmpty!37339 b!5598316))

(declare-fun m!6577132 () Bool)

(assert (=> setNonEmpty!37339 m!6577132))

(declare-fun b!5598317 () Bool)

(declare-fun e!3453381 () Bool)

(assert (=> b!5598317 (= e!3453381 tp_is_empty!40423)))

(declare-fun b!5598319 () Bool)

(declare-fun tp!1547946 () Bool)

(assert (=> b!5598319 (= e!3453381 tp!1547946)))

(declare-fun b!5598318 () Bool)

(declare-fun tp!1547945 () Bool)

(declare-fun tp!1547944 () Bool)

(assert (=> b!5598318 (= e!3453381 (and tp!1547945 tp!1547944))))

(assert (=> b!5597499 (= tp!1547840 e!3453381)))

(declare-fun b!5598320 () Bool)

(declare-fun tp!1547943 () Bool)

(declare-fun tp!1547947 () Bool)

(assert (=> b!5598320 (= e!3453381 (and tp!1547943 tp!1547947))))

(assert (= (and b!5597499 ((_ is ElementMatch!15585) (reg!15914 r!7292))) b!5598317))

(assert (= (and b!5597499 ((_ is Concat!24430) (reg!15914 r!7292))) b!5598318))

(assert (= (and b!5597499 ((_ is Star!15585) (reg!15914 r!7292))) b!5598319))

(assert (= (and b!5597499 ((_ is Union!15585) (reg!15914 r!7292))) b!5598320))

(declare-fun b!5598321 () Bool)

(declare-fun e!3453382 () Bool)

(declare-fun tp!1547948 () Bool)

(declare-fun tp!1547949 () Bool)

(assert (=> b!5598321 (= e!3453382 (and tp!1547948 tp!1547949))))

(assert (=> b!5597518 (= tp!1547841 e!3453382)))

(assert (= (and b!5597518 ((_ is Cons!62930) (exprs!5469 setElem!37333))) b!5598321))

(declare-fun b!5598322 () Bool)

(declare-fun e!3453383 () Bool)

(assert (=> b!5598322 (= e!3453383 tp_is_empty!40423)))

(declare-fun b!5598324 () Bool)

(declare-fun tp!1547953 () Bool)

(assert (=> b!5598324 (= e!3453383 tp!1547953)))

(declare-fun b!5598323 () Bool)

(declare-fun tp!1547952 () Bool)

(declare-fun tp!1547951 () Bool)

(assert (=> b!5598323 (= e!3453383 (and tp!1547952 tp!1547951))))

(assert (=> b!5597503 (= tp!1547834 e!3453383)))

(declare-fun b!5598325 () Bool)

(declare-fun tp!1547950 () Bool)

(declare-fun tp!1547954 () Bool)

(assert (=> b!5598325 (= e!3453383 (and tp!1547950 tp!1547954))))

(assert (= (and b!5597503 ((_ is ElementMatch!15585) (regOne!31683 r!7292))) b!5598322))

(assert (= (and b!5597503 ((_ is Concat!24430) (regOne!31683 r!7292))) b!5598323))

(assert (= (and b!5597503 ((_ is Star!15585) (regOne!31683 r!7292))) b!5598324))

(assert (= (and b!5597503 ((_ is Union!15585) (regOne!31683 r!7292))) b!5598325))

(declare-fun b!5598326 () Bool)

(declare-fun e!3453384 () Bool)

(assert (=> b!5598326 (= e!3453384 tp_is_empty!40423)))

(declare-fun b!5598328 () Bool)

(declare-fun tp!1547958 () Bool)

(assert (=> b!5598328 (= e!3453384 tp!1547958)))

(declare-fun b!5598327 () Bool)

(declare-fun tp!1547957 () Bool)

(declare-fun tp!1547956 () Bool)

(assert (=> b!5598327 (= e!3453384 (and tp!1547957 tp!1547956))))

(assert (=> b!5597503 (= tp!1547843 e!3453384)))

(declare-fun b!5598329 () Bool)

(declare-fun tp!1547955 () Bool)

(declare-fun tp!1547959 () Bool)

(assert (=> b!5598329 (= e!3453384 (and tp!1547955 tp!1547959))))

(assert (= (and b!5597503 ((_ is ElementMatch!15585) (regTwo!31683 r!7292))) b!5598326))

(assert (= (and b!5597503 ((_ is Concat!24430) (regTwo!31683 r!7292))) b!5598327))

(assert (= (and b!5597503 ((_ is Star!15585) (regTwo!31683 r!7292))) b!5598328))

(assert (= (and b!5597503 ((_ is Union!15585) (regTwo!31683 r!7292))) b!5598329))

(declare-fun b_lambda!212133 () Bool)

(assert (= b_lambda!212127 (or b!5597513 b_lambda!212133)))

(declare-fun bs!1294281 () Bool)

(declare-fun d!1769532 () Bool)

(assert (= bs!1294281 (and d!1769532 b!5597513)))

(assert (=> bs!1294281 (= (dynLambda!24617 lambda!300570 lt!2256500) (derivationStepZipperUp!853 lt!2256500 (h!69380 s!2326)))))

(assert (=> bs!1294281 m!6576540))

(assert (=> d!1769450 d!1769532))

(declare-fun b_lambda!212135 () Bool)

(assert (= b_lambda!212129 (or b!5597513 b_lambda!212135)))

(declare-fun bs!1294282 () Bool)

(declare-fun d!1769534 () Bool)

(assert (= bs!1294282 (and d!1769534 b!5597513)))

(assert (=> bs!1294282 (= (dynLambda!24617 lambda!300570 lt!2256520) (derivationStepZipperUp!853 lt!2256520 (h!69380 s!2326)))))

(assert (=> bs!1294282 m!6576550))

(assert (=> d!1769454 d!1769534))

(declare-fun b_lambda!212137 () Bool)

(assert (= b_lambda!212131 (or b!5597513 b_lambda!212137)))

(declare-fun bs!1294283 () Bool)

(declare-fun d!1769536 () Bool)

(assert (= bs!1294283 (and d!1769536 b!5597513)))

(assert (=> bs!1294283 (= (dynLambda!24617 lambda!300570 (h!69379 zl!343)) (derivationStepZipperUp!853 (h!69379 zl!343) (h!69380 s!2326)))))

(assert (=> bs!1294283 m!6576462))

(assert (=> d!1769500 d!1769536))

(check-sat (not b!5598143) (not b!5598301) (not b!5598173) (not bm!419886) (not d!1769456) (not d!1769480) (not b!5598176) (not bm!419864) (not b!5598105) (not b!5598257) (not d!1769458) (not b!5598304) (not b!5598172) (not b!5597998) (not b!5598127) (not d!1769462) (not b!5597992) (not b!5598140) tp_is_empty!40423 (not d!1769526) (not d!1769468) (not b!5598054) (not d!1769514) (not b!5598268) (not b!5598052) (not b!5597967) (not d!1769524) (not b!5598080) (not bm!419911) (not d!1769530) (not d!1769522) (not d!1769434) (not d!1769460) (not b_lambda!212135) (not b!5598104) (not b!5598106) (not bm!419863) (not b!5598258) (not b!5598324) (not b!5598319) (not b!5598007) (not b!5598275) (not b!5597962) (not b!5598169) (not b!5598328) (not b!5597943) (not b!5598316) (not b!5598266) (not d!1769500) (not b!5598220) (not d!1769490) (not b!5598103) (not b!5597964) (not d!1769496) (not b!5598003) (not d!1769518) (not b!5598053) (not bm!419898) (not b!5598300) (not b!5598170) (not bm!419905) (not b!5598329) (not b!5598000) (not d!1769464) (not b!5597942) (not b!5598056) (not d!1769488) (not bm!419882) (not b!5598124) (not d!1769444) (not d!1769448) (not b!5598320) (not d!1769492) (not d!1769528) (not b!5598002) (not b!5598049) (not d!1769450) (not bm!419880) (not b!5598267) (not b!5598321) (not b!5598217) (not d!1769466) (not b!5598288) (not b!5597996) (not b!5598318) (not bm!419915) (not b!5598136) (not b!5598005) (not b!5598102) (not b!5598327) (not b!5597963) (not bm!419906) (not b!5597958) (not d!1769436) (not b_lambda!212133) (not bs!1294282) (not d!1769506) (not d!1769454) (not bs!1294283) (not bm!419883) (not b!5598271) (not b!5598305) (not b!5598183) (not b!5598038) (not d!1769498) (not bm!419877) (not b!5597991) (not bm!419902) (not b!5597961) (not d!1769478) (not b!5597946) (not b_lambda!212137) (not b!5598178) (not bm!419888) (not b!5598001) (not b!5598323) (not b!5598004) (not setNonEmpty!37339) (not d!1769440) (not bm!419904) (not bs!1294281) (not b!5598108) (not b!5598055) (not d!1769430) (not b!5598311) (not d!1769432) (not b!5597938) (not b!5598259) (not d!1769442) (not b!5598282) (not b!5597999) (not d!1769476) (not d!1769494) (not b!5598270) (not b!5597939) (not d!1769486) (not b!5597965) (not b!5598148) (not d!1769502) (not bm!419912) (not b!5598302) (not b!5598283) (not b!5598306) (not b!5597970) (not d!1769516) (not b!5598272) (not b!5597994) (not bm!419896) (not d!1769446) (not bm!419899) (not b!5598006) (not b!5597944) (not b!5597945) (not b!5598325) (not bm!419895) (not b!5598145) (not b!5598177))
(check-sat)
(get-model)

(assert (=> b!5597942 d!1769462))

(declare-fun d!1769826 () Bool)

(assert (=> d!1769826 (= (nullable!5617 (h!69378 (exprs!5469 lt!2256515))) (nullableFct!1726 (h!69378 (exprs!5469 lt!2256515))))))

(declare-fun bs!1294535 () Bool)

(assert (= bs!1294535 d!1769826))

(declare-fun m!6577720 () Bool)

(assert (=> bs!1294535 m!6577720))

(assert (=> b!5598145 d!1769826))

(declare-fun c!981718 () Bool)

(declare-fun call!420041 () List!63054)

(declare-fun bm!420036 () Bool)

(declare-fun c!981715 () Bool)

(assert (=> bm!420036 (= call!420041 ($colon$colon!1648 (exprs!5469 (ite c!981515 lt!2256515 (Context!9939 call!419904))) (ite (or c!981718 c!981715) (regTwo!31682 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))) (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))))))))

(declare-fun b!5598938 () Bool)

(declare-fun e!3453731 () (InoxSet Context!9938))

(declare-fun e!3453727 () (InoxSet Context!9938))

(assert (=> b!5598938 (= e!3453731 e!3453727)))

(declare-fun c!981716 () Bool)

(assert (=> b!5598938 (= c!981716 ((_ is Union!15585) (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))

(declare-fun b!5598939 () Bool)

(declare-fun e!3453729 () (InoxSet Context!9938))

(assert (=> b!5598939 (= e!3453729 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598940 () Bool)

(assert (=> b!5598940 (= e!3453731 (store ((as const (Array Context!9938 Bool)) false) (ite c!981515 lt!2256515 (Context!9939 call!419904)) true))))

(declare-fun b!5598941 () Bool)

(declare-fun e!3453726 () (InoxSet Context!9938))

(declare-fun call!420045 () (InoxSet Context!9938))

(declare-fun call!420043 () (InoxSet Context!9938))

(assert (=> b!5598941 (= e!3453726 ((_ map or) call!420045 call!420043))))

(declare-fun bm!420037 () Bool)

(declare-fun call!420042 () List!63054)

(assert (=> bm!420037 (= call!420042 call!420041)))

(declare-fun b!5598942 () Bool)

(declare-fun c!981714 () Bool)

(assert (=> b!5598942 (= c!981714 ((_ is Star!15585) (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))

(declare-fun e!3453730 () (InoxSet Context!9938))

(assert (=> b!5598942 (= e!3453730 e!3453729)))

(declare-fun bm!420038 () Bool)

(declare-fun call!420046 () (InoxSet Context!9938))

(assert (=> bm!420038 (= call!420043 call!420046)))

(declare-fun b!5598943 () Bool)

(declare-fun e!3453728 () Bool)

(assert (=> b!5598943 (= c!981718 e!3453728)))

(declare-fun res!2374784 () Bool)

(assert (=> b!5598943 (=> (not res!2374784) (not e!3453728))))

(assert (=> b!5598943 (= res!2374784 ((_ is Concat!24430) (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))

(assert (=> b!5598943 (= e!3453727 e!3453726)))

(declare-fun b!5598944 () Bool)

(declare-fun call!420044 () (InoxSet Context!9938))

(assert (=> b!5598944 (= e!3453730 call!420044)))

(declare-fun bm!420040 () Bool)

(assert (=> bm!420040 (= call!420044 call!420043)))

(declare-fun bm!420041 () Bool)

(assert (=> bm!420041 (= call!420045 (derivationStepZipperDown!927 (ite c!981716 (regOne!31683 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))) (regOne!31682 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))))) (ite c!981716 (ite c!981515 lt!2256515 (Context!9939 call!419904)) (Context!9939 call!420041)) (h!69380 s!2326)))))

(declare-fun b!5598945 () Bool)

(assert (=> b!5598945 (= e!3453727 ((_ map or) call!420045 call!420046))))

(declare-fun b!5598946 () Bool)

(assert (=> b!5598946 (= e!3453728 (nullable!5617 (regOne!31682 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))))))))

(declare-fun c!981717 () Bool)

(declare-fun d!1769828 () Bool)

(assert (=> d!1769828 (= c!981717 (and ((_ is ElementMatch!15585) (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))) (= (c!981334 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))) (h!69380 s!2326))))))

(assert (=> d!1769828 (= (derivationStepZipperDown!927 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))) (ite c!981515 lt!2256515 (Context!9939 call!419904)) (h!69380 s!2326)) e!3453731)))

(declare-fun bm!420039 () Bool)

(assert (=> bm!420039 (= call!420046 (derivationStepZipperDown!927 (ite c!981716 (regTwo!31683 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))) (ite c!981718 (regTwo!31682 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))) (ite c!981715 (regOne!31682 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))) (reg!15914 (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))))))) (ite (or c!981716 c!981718) (ite c!981515 lt!2256515 (Context!9939 call!419904)) (Context!9939 call!420042)) (h!69380 s!2326)))))

(declare-fun b!5598947 () Bool)

(assert (=> b!5598947 (= e!3453729 call!420044)))

(declare-fun b!5598948 () Bool)

(assert (=> b!5598948 (= e!3453726 e!3453730)))

(assert (=> b!5598948 (= c!981715 ((_ is Concat!24430) (ite c!981515 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))

(assert (= (and d!1769828 c!981717) b!5598940))

(assert (= (and d!1769828 (not c!981717)) b!5598938))

(assert (= (and b!5598938 c!981716) b!5598945))

(assert (= (and b!5598938 (not c!981716)) b!5598943))

(assert (= (and b!5598943 res!2374784) b!5598946))

(assert (= (and b!5598943 c!981718) b!5598941))

(assert (= (and b!5598943 (not c!981718)) b!5598948))

(assert (= (and b!5598948 c!981715) b!5598944))

(assert (= (and b!5598948 (not c!981715)) b!5598942))

(assert (= (and b!5598942 c!981714) b!5598947))

(assert (= (and b!5598942 (not c!981714)) b!5598939))

(assert (= (or b!5598944 b!5598947) bm!420037))

(assert (= (or b!5598944 b!5598947) bm!420040))

(assert (= (or b!5598941 bm!420037) bm!420036))

(assert (= (or b!5598941 bm!420040) bm!420038))

(assert (= (or b!5598945 bm!420038) bm!420039))

(assert (= (or b!5598945 b!5598941) bm!420041))

(declare-fun m!6577722 () Bool)

(assert (=> bm!420041 m!6577722))

(declare-fun m!6577724 () Bool)

(assert (=> bm!420036 m!6577724))

(declare-fun m!6577726 () Bool)

(assert (=> b!5598946 m!6577726))

(declare-fun m!6577728 () Bool)

(assert (=> b!5598940 m!6577728))

(declare-fun m!6577730 () Bool)

(assert (=> bm!420039 m!6577730))

(assert (=> bm!419904 d!1769828))

(declare-fun d!1769830 () Bool)

(assert (=> d!1769830 (= (Exists!2685 lambda!300609) (choose!42457 lambda!300609))))

(declare-fun bs!1294536 () Bool)

(assert (= bs!1294536 d!1769830))

(declare-fun m!6577732 () Bool)

(assert (=> bs!1294536 m!6577732))

(assert (=> d!1769494 d!1769830))

(declare-fun d!1769832 () Bool)

(assert (=> d!1769832 (= (Exists!2685 lambda!300610) (choose!42457 lambda!300610))))

(declare-fun bs!1294537 () Bool)

(assert (= bs!1294537 d!1769832))

(declare-fun m!6577734 () Bool)

(assert (=> bs!1294537 m!6577734))

(assert (=> d!1769494 d!1769832))

(declare-fun bs!1294538 () Bool)

(declare-fun d!1769834 () Bool)

(assert (= bs!1294538 (and d!1769834 b!5597514)))

(declare-fun lambda!300675 () Int)

(assert (=> bs!1294538 (not (= lambda!300675 lambda!300569))))

(declare-fun bs!1294539 () Bool)

(assert (= bs!1294539 (and d!1769834 d!1769492)))

(assert (=> bs!1294539 (= lambda!300675 lambda!300604)))

(declare-fun bs!1294540 () Bool)

(assert (= bs!1294540 (and d!1769834 d!1769494)))

(assert (=> bs!1294540 (= lambda!300675 lambda!300609)))

(declare-fun bs!1294541 () Bool)

(assert (= bs!1294541 (and d!1769834 b!5598222)))

(assert (=> bs!1294541 (not (= lambda!300675 lambda!300625))))

(assert (=> bs!1294540 (not (= lambda!300675 lambda!300610))))

(assert (=> bs!1294538 (= lambda!300675 lambda!300568)))

(declare-fun bs!1294542 () Bool)

(assert (= bs!1294542 (and d!1769834 b!5598224)))

(assert (=> bs!1294542 (not (= lambda!300675 lambda!300626))))

(assert (=> d!1769834 true))

(assert (=> d!1769834 true))

(assert (=> d!1769834 true))

(declare-fun lambda!300676 () Int)

(assert (=> bs!1294538 (= lambda!300676 lambda!300569)))

(assert (=> bs!1294539 (not (= lambda!300676 lambda!300604))))

(assert (=> bs!1294540 (not (= lambda!300676 lambda!300609))))

(assert (=> bs!1294541 (not (= lambda!300676 lambda!300625))))

(declare-fun bs!1294543 () Bool)

(assert (= bs!1294543 d!1769834))

(assert (=> bs!1294543 (not (= lambda!300676 lambda!300675))))

(assert (=> bs!1294540 (= lambda!300676 lambda!300610)))

(assert (=> bs!1294538 (not (= lambda!300676 lambda!300568))))

(assert (=> bs!1294542 (= lambda!300676 lambda!300626)))

(assert (=> d!1769834 true))

(assert (=> d!1769834 true))

(assert (=> d!1769834 true))

(assert (=> d!1769834 (= (Exists!2685 lambda!300675) (Exists!2685 lambda!300676))))

(assert (=> d!1769834 true))

(declare-fun _$90!1343 () Unit!155772)

(assert (=> d!1769834 (= (choose!42459 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326) _$90!1343)))

(declare-fun m!6577736 () Bool)

(assert (=> bs!1294543 m!6577736))

(declare-fun m!6577738 () Bool)

(assert (=> bs!1294543 m!6577738))

(assert (=> d!1769494 d!1769834))

(declare-fun b!5598957 () Bool)

(declare-fun e!3453741 () Bool)

(declare-fun call!420049 () Bool)

(assert (=> b!5598957 (= e!3453741 call!420049)))

(declare-fun d!1769836 () Bool)

(declare-fun res!2374794 () Bool)

(declare-fun e!3453742 () Bool)

(assert (=> d!1769836 (=> res!2374794 e!3453742)))

(assert (=> d!1769836 (= res!2374794 ((_ is ElementMatch!15585) (regOne!31682 r!7292)))))

(assert (=> d!1769836 (= (validRegex!7321 (regOne!31682 r!7292)) e!3453742)))

(declare-fun b!5598958 () Bool)

(declare-fun res!2374795 () Bool)

(declare-fun e!3453737 () Bool)

(assert (=> b!5598958 (=> (not res!2374795) (not e!3453737))))

(declare-fun call!420047 () Bool)

(assert (=> b!5598958 (= res!2374795 call!420047)))

(declare-fun e!3453739 () Bool)

(assert (=> b!5598958 (= e!3453739 e!3453737)))

(declare-fun b!5598959 () Bool)

(declare-fun res!2374793 () Bool)

(declare-fun e!3453736 () Bool)

(assert (=> b!5598959 (=> res!2374793 e!3453736)))

(assert (=> b!5598959 (= res!2374793 (not ((_ is Concat!24430) (regOne!31682 r!7292))))))

(assert (=> b!5598959 (= e!3453739 e!3453736)))

(declare-fun b!5598960 () Bool)

(declare-fun e!3453740 () Bool)

(assert (=> b!5598960 (= e!3453742 e!3453740)))

(declare-fun c!981720 () Bool)

(assert (=> b!5598960 (= c!981720 ((_ is Star!15585) (regOne!31682 r!7292)))))

(declare-fun b!5598961 () Bool)

(declare-fun e!3453738 () Bool)

(declare-fun call!420048 () Bool)

(assert (=> b!5598961 (= e!3453738 call!420048)))

(declare-fun b!5598962 () Bool)

(assert (=> b!5598962 (= e!3453740 e!3453738)))

(declare-fun res!2374796 () Bool)

(assert (=> b!5598962 (= res!2374796 (not (nullable!5617 (reg!15914 (regOne!31682 r!7292)))))))

(assert (=> b!5598962 (=> (not res!2374796) (not e!3453738))))

(declare-fun bm!420042 () Bool)

(declare-fun c!981719 () Bool)

(assert (=> bm!420042 (= call!420048 (validRegex!7321 (ite c!981720 (reg!15914 (regOne!31682 r!7292)) (ite c!981719 (regTwo!31683 (regOne!31682 r!7292)) (regTwo!31682 (regOne!31682 r!7292))))))))

(declare-fun b!5598963 () Bool)

(assert (=> b!5598963 (= e!3453737 call!420049)))

(declare-fun b!5598964 () Bool)

(assert (=> b!5598964 (= e!3453736 e!3453741)))

(declare-fun res!2374797 () Bool)

(assert (=> b!5598964 (=> (not res!2374797) (not e!3453741))))

(assert (=> b!5598964 (= res!2374797 call!420047)))

(declare-fun bm!420043 () Bool)

(assert (=> bm!420043 (= call!420047 (validRegex!7321 (ite c!981719 (regOne!31683 (regOne!31682 r!7292)) (regOne!31682 (regOne!31682 r!7292)))))))

(declare-fun b!5598965 () Bool)

(assert (=> b!5598965 (= e!3453740 e!3453739)))

(assert (=> b!5598965 (= c!981719 ((_ is Union!15585) (regOne!31682 r!7292)))))

(declare-fun bm!420044 () Bool)

(assert (=> bm!420044 (= call!420049 call!420048)))

(assert (= (and d!1769836 (not res!2374794)) b!5598960))

(assert (= (and b!5598960 c!981720) b!5598962))

(assert (= (and b!5598960 (not c!981720)) b!5598965))

(assert (= (and b!5598962 res!2374796) b!5598961))

(assert (= (and b!5598965 c!981719) b!5598958))

(assert (= (and b!5598965 (not c!981719)) b!5598959))

(assert (= (and b!5598958 res!2374795) b!5598963))

(assert (= (and b!5598959 (not res!2374793)) b!5598964))

(assert (= (and b!5598964 res!2374797) b!5598957))

(assert (= (or b!5598963 b!5598957) bm!420044))

(assert (= (or b!5598958 b!5598964) bm!420043))

(assert (= (or b!5598961 bm!420044) bm!420042))

(declare-fun m!6577740 () Bool)

(assert (=> b!5598962 m!6577740))

(declare-fun m!6577742 () Bool)

(assert (=> bm!420042 m!6577742))

(declare-fun m!6577744 () Bool)

(assert (=> bm!420043 m!6577744))

(assert (=> d!1769494 d!1769836))

(declare-fun c!981722 () Bool)

(declare-fun call!420050 () List!63054)

(declare-fun bm!420045 () Bool)

(declare-fun c!981725 () Bool)

(assert (=> bm!420045 (= call!420050 ($colon$colon!1648 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))) (ite (or c!981725 c!981722) (regTwo!31682 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))))

(declare-fun b!5598966 () Bool)

(declare-fun e!3453748 () (InoxSet Context!9938))

(declare-fun e!3453744 () (InoxSet Context!9938))

(assert (=> b!5598966 (= e!3453748 e!3453744)))

(declare-fun c!981723 () Bool)

(assert (=> b!5598966 (= c!981723 ((_ is Union!15585) (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))

(declare-fun b!5598967 () Bool)

(declare-fun e!3453746 () (InoxSet Context!9938))

(assert (=> b!5598967 (= e!3453746 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598968 () Bool)

(assert (=> b!5598968 (= e!3453748 (store ((as const (Array Context!9938 Bool)) false) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) true))))

(declare-fun b!5598969 () Bool)

(declare-fun e!3453743 () (InoxSet Context!9938))

(declare-fun call!420054 () (InoxSet Context!9938))

(declare-fun call!420052 () (InoxSet Context!9938))

(assert (=> b!5598969 (= e!3453743 ((_ map or) call!420054 call!420052))))

(declare-fun bm!420046 () Bool)

(declare-fun call!420051 () List!63054)

(assert (=> bm!420046 (= call!420051 call!420050)))

(declare-fun b!5598970 () Bool)

(declare-fun c!981721 () Bool)

(assert (=> b!5598970 (= c!981721 ((_ is Star!15585) (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))

(declare-fun e!3453747 () (InoxSet Context!9938))

(assert (=> b!5598970 (= e!3453747 e!3453746)))

(declare-fun bm!420047 () Bool)

(declare-fun call!420055 () (InoxSet Context!9938))

(assert (=> bm!420047 (= call!420052 call!420055)))

(declare-fun b!5598971 () Bool)

(declare-fun e!3453745 () Bool)

(assert (=> b!5598971 (= c!981725 e!3453745)))

(declare-fun res!2374798 () Bool)

(assert (=> b!5598971 (=> (not res!2374798) (not e!3453745))))

(assert (=> b!5598971 (= res!2374798 ((_ is Concat!24430) (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))

(assert (=> b!5598971 (= e!3453744 e!3453743)))

(declare-fun b!5598972 () Bool)

(declare-fun call!420053 () (InoxSet Context!9938))

(assert (=> b!5598972 (= e!3453747 call!420053)))

(declare-fun bm!420049 () Bool)

(assert (=> bm!420049 (= call!420053 call!420052)))

(declare-fun bm!420050 () Bool)

(assert (=> bm!420050 (= call!420054 (derivationStepZipperDown!927 (ite c!981723 (regOne!31683 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (regOne!31682 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))) (ite c!981723 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (Context!9939 call!420050)) (h!69380 s!2326)))))

(declare-fun b!5598973 () Bool)

(assert (=> b!5598973 (= e!3453744 ((_ map or) call!420054 call!420055))))

(declare-fun b!5598974 () Bool)

(assert (=> b!5598974 (= e!3453745 (nullable!5617 (regOne!31682 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))))

(declare-fun d!1769838 () Bool)

(declare-fun c!981724 () Bool)

(assert (=> d!1769838 (= c!981724 (and ((_ is ElementMatch!15585) (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (= (c!981334 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (h!69380 s!2326))))))

(assert (=> d!1769838 (= (derivationStepZipperDown!927 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (h!69380 s!2326)) e!3453748)))

(declare-fun bm!420048 () Bool)

(assert (=> bm!420048 (= call!420055 (derivationStepZipperDown!927 (ite c!981723 (regTwo!31683 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (ite c!981725 (regTwo!31682 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (ite c!981722 (regOne!31682 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (reg!15914 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))) (ite (or c!981723 c!981725) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (Context!9939 call!420051)) (h!69380 s!2326)))))

(declare-fun b!5598975 () Bool)

(assert (=> b!5598975 (= e!3453746 call!420053)))

(declare-fun b!5598976 () Bool)

(assert (=> b!5598976 (= e!3453743 e!3453747)))

(assert (=> b!5598976 (= c!981722 ((_ is Concat!24430) (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))

(assert (= (and d!1769838 c!981724) b!5598968))

(assert (= (and d!1769838 (not c!981724)) b!5598966))

(assert (= (and b!5598966 c!981723) b!5598973))

(assert (= (and b!5598966 (not c!981723)) b!5598971))

(assert (= (and b!5598971 res!2374798) b!5598974))

(assert (= (and b!5598971 c!981725) b!5598969))

(assert (= (and b!5598971 (not c!981725)) b!5598976))

(assert (= (and b!5598976 c!981722) b!5598972))

(assert (= (and b!5598976 (not c!981722)) b!5598970))

(assert (= (and b!5598970 c!981721) b!5598975))

(assert (= (and b!5598970 (not c!981721)) b!5598967))

(assert (= (or b!5598972 b!5598975) bm!420046))

(assert (= (or b!5598972 b!5598975) bm!420049))

(assert (= (or b!5598969 bm!420046) bm!420045))

(assert (= (or b!5598969 bm!420049) bm!420047))

(assert (= (or b!5598973 bm!420047) bm!420048))

(assert (= (or b!5598973 b!5598969) bm!420050))

(declare-fun m!6577746 () Bool)

(assert (=> bm!420050 m!6577746))

(declare-fun m!6577748 () Bool)

(assert (=> bm!420045 m!6577748))

(declare-fun m!6577750 () Bool)

(assert (=> b!5598974 m!6577750))

(declare-fun m!6577752 () Bool)

(assert (=> b!5598968 m!6577752))

(declare-fun m!6577754 () Bool)

(assert (=> bm!420048 m!6577754))

(assert (=> bm!419898 d!1769838))

(declare-fun d!1769840 () Bool)

(declare-fun res!2374803 () Bool)

(declare-fun e!3453753 () Bool)

(assert (=> d!1769840 (=> res!2374803 e!3453753)))

(assert (=> d!1769840 (= res!2374803 ((_ is Nil!62930) (exprs!5469 setElem!37333)))))

(assert (=> d!1769840 (= (forall!14751 (exprs!5469 setElem!37333) lambda!300613) e!3453753)))

(declare-fun b!5598981 () Bool)

(declare-fun e!3453754 () Bool)

(assert (=> b!5598981 (= e!3453753 e!3453754)))

(declare-fun res!2374804 () Bool)

(assert (=> b!5598981 (=> (not res!2374804) (not e!3453754))))

(declare-fun dynLambda!24619 (Int Regex!15585) Bool)

(assert (=> b!5598981 (= res!2374804 (dynLambda!24619 lambda!300613 (h!69378 (exprs!5469 setElem!37333))))))

(declare-fun b!5598982 () Bool)

(assert (=> b!5598982 (= e!3453754 (forall!14751 (t!376338 (exprs!5469 setElem!37333)) lambda!300613))))

(assert (= (and d!1769840 (not res!2374803)) b!5598981))

(assert (= (and b!5598981 res!2374804) b!5598982))

(declare-fun b_lambda!212171 () Bool)

(assert (=> (not b_lambda!212171) (not b!5598981)))

(declare-fun m!6577756 () Bool)

(assert (=> b!5598981 m!6577756))

(declare-fun m!6577758 () Bool)

(assert (=> b!5598982 m!6577758))

(assert (=> d!1769498 d!1769840))

(assert (=> bs!1294281 d!1769438))

(declare-fun bm!420051 () Bool)

(declare-fun c!981727 () Bool)

(declare-fun call!420056 () List!63054)

(declare-fun c!981730 () Bool)

(assert (=> bm!420051 (= call!420056 ($colon$colon!1648 (exprs!5469 (ite (or c!981515 c!981517) lt!2256515 (Context!9939 call!419905))) (ite (or c!981730 c!981727) (regTwo!31682 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))) (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343))))))))))))

(declare-fun b!5598983 () Bool)

(declare-fun e!3453760 () (InoxSet Context!9938))

(declare-fun e!3453756 () (InoxSet Context!9938))

(assert (=> b!5598983 (= e!3453760 e!3453756)))

(declare-fun c!981728 () Bool)

(assert (=> b!5598983 (= c!981728 ((_ is Union!15585) (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))))

(declare-fun b!5598984 () Bool)

(declare-fun e!3453758 () (InoxSet Context!9938))

(assert (=> b!5598984 (= e!3453758 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5598985 () Bool)

(assert (=> b!5598985 (= e!3453760 (store ((as const (Array Context!9938 Bool)) false) (ite (or c!981515 c!981517) lt!2256515 (Context!9939 call!419905)) true))))

(declare-fun b!5598986 () Bool)

(declare-fun e!3453755 () (InoxSet Context!9938))

(declare-fun call!420060 () (InoxSet Context!9938))

(declare-fun call!420058 () (InoxSet Context!9938))

(assert (=> b!5598986 (= e!3453755 ((_ map or) call!420060 call!420058))))

(declare-fun bm!420052 () Bool)

(declare-fun call!420057 () List!63054)

(assert (=> bm!420052 (= call!420057 call!420056)))

(declare-fun b!5598987 () Bool)

(declare-fun c!981726 () Bool)

(assert (=> b!5598987 (= c!981726 ((_ is Star!15585) (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))))

(declare-fun e!3453759 () (InoxSet Context!9938))

(assert (=> b!5598987 (= e!3453759 e!3453758)))

(declare-fun bm!420053 () Bool)

(declare-fun call!420061 () (InoxSet Context!9938))

(assert (=> bm!420053 (= call!420058 call!420061)))

(declare-fun b!5598988 () Bool)

(declare-fun e!3453757 () Bool)

(assert (=> b!5598988 (= c!981730 e!3453757)))

(declare-fun res!2374805 () Bool)

(assert (=> b!5598988 (=> (not res!2374805) (not e!3453757))))

(assert (=> b!5598988 (= res!2374805 ((_ is Concat!24430) (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))))

(assert (=> b!5598988 (= e!3453756 e!3453755)))

(declare-fun b!5598989 () Bool)

(declare-fun call!420059 () (InoxSet Context!9938))

(assert (=> b!5598989 (= e!3453759 call!420059)))

(declare-fun bm!420055 () Bool)

(assert (=> bm!420055 (= call!420059 call!420058)))

(declare-fun bm!420056 () Bool)

(assert (=> bm!420056 (= call!420060 (derivationStepZipperDown!927 (ite c!981728 (regOne!31683 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))) (regOne!31682 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343))))))))) (ite c!981728 (ite (or c!981515 c!981517) lt!2256515 (Context!9939 call!419905)) (Context!9939 call!420056)) (h!69380 s!2326)))))

(declare-fun b!5598990 () Bool)

(assert (=> b!5598990 (= e!3453756 ((_ map or) call!420060 call!420061))))

(declare-fun b!5598991 () Bool)

(assert (=> b!5598991 (= e!3453757 (nullable!5617 (regOne!31682 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343))))))))))))

(declare-fun d!1769842 () Bool)

(declare-fun c!981729 () Bool)

(assert (=> d!1769842 (= c!981729 (and ((_ is ElementMatch!15585) (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))) (= (c!981334 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))) (h!69380 s!2326))))))

(assert (=> d!1769842 (= (derivationStepZipperDown!927 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343))))))) (ite (or c!981515 c!981517) lt!2256515 (Context!9939 call!419905)) (h!69380 s!2326)) e!3453760)))

(declare-fun bm!420054 () Bool)

(assert (=> bm!420054 (= call!420061 (derivationStepZipperDown!927 (ite c!981728 (regTwo!31683 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))) (ite c!981730 (regTwo!31682 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))) (ite c!981727 (regOne!31682 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))) (reg!15914 (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343))))))))))) (ite (or c!981728 c!981730) (ite (or c!981515 c!981517) lt!2256515 (Context!9939 call!419905)) (Context!9939 call!420057)) (h!69380 s!2326)))))

(declare-fun b!5598992 () Bool)

(assert (=> b!5598992 (= e!3453758 call!420059)))

(declare-fun b!5598993 () Bool)

(assert (=> b!5598993 (= e!3453755 e!3453759)))

(assert (=> b!5598993 (= c!981727 ((_ is Concat!24430) (ite c!981515 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981517 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981514 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))))

(assert (= (and d!1769842 c!981729) b!5598985))

(assert (= (and d!1769842 (not c!981729)) b!5598983))

(assert (= (and b!5598983 c!981728) b!5598990))

(assert (= (and b!5598983 (not c!981728)) b!5598988))

(assert (= (and b!5598988 res!2374805) b!5598991))

(assert (= (and b!5598988 c!981730) b!5598986))

(assert (= (and b!5598988 (not c!981730)) b!5598993))

(assert (= (and b!5598993 c!981727) b!5598989))

(assert (= (and b!5598993 (not c!981727)) b!5598987))

(assert (= (and b!5598987 c!981726) b!5598992))

(assert (= (and b!5598987 (not c!981726)) b!5598984))

(assert (= (or b!5598989 b!5598992) bm!420052))

(assert (= (or b!5598989 b!5598992) bm!420055))

(assert (= (or b!5598986 bm!420052) bm!420051))

(assert (= (or b!5598986 bm!420055) bm!420053))

(assert (= (or b!5598990 bm!420053) bm!420054))

(assert (= (or b!5598990 b!5598986) bm!420056))

(declare-fun m!6577760 () Bool)

(assert (=> bm!420056 m!6577760))

(declare-fun m!6577762 () Bool)

(assert (=> bm!420051 m!6577762))

(declare-fun m!6577764 () Bool)

(assert (=> b!5598991 m!6577764))

(declare-fun m!6577766 () Bool)

(assert (=> b!5598985 m!6577766))

(declare-fun m!6577768 () Bool)

(assert (=> bm!420054 m!6577768))

(assert (=> bm!419902 d!1769842))

(assert (=> b!5598183 d!1769458))

(declare-fun bs!1294544 () Bool)

(declare-fun d!1769844 () Bool)

(assert (= bs!1294544 (and d!1769844 d!1769516)))

(declare-fun lambda!300677 () Int)

(assert (=> bs!1294544 (= lambda!300677 lambda!300619)))

(declare-fun bs!1294545 () Bool)

(assert (= bs!1294545 (and d!1769844 d!1769514)))

(assert (=> bs!1294545 (= lambda!300677 lambda!300616)))

(declare-fun bs!1294546 () Bool)

(assert (= bs!1294546 (and d!1769844 d!1769498)))

(assert (=> bs!1294546 (= lambda!300677 lambda!300613)))

(declare-fun bs!1294547 () Bool)

(assert (= bs!1294547 (and d!1769844 d!1769518)))

(assert (=> bs!1294547 (= lambda!300677 lambda!300620)))

(declare-fun bs!1294548 () Bool)

(assert (= bs!1294548 (and d!1769844 d!1769458)))

(assert (=> bs!1294548 (= lambda!300677 lambda!300601)))

(declare-fun lt!2256639 () List!63054)

(assert (=> d!1769844 (forall!14751 lt!2256639 lambda!300677)))

(declare-fun e!3453761 () List!63054)

(assert (=> d!1769844 (= lt!2256639 e!3453761)))

(declare-fun c!981731 () Bool)

(assert (=> d!1769844 (= c!981731 ((_ is Cons!62931) (t!376339 zl!343)))))

(assert (=> d!1769844 (= (unfocusZipperList!1013 (t!376339 zl!343)) lt!2256639)))

(declare-fun b!5598994 () Bool)

(assert (=> b!5598994 (= e!3453761 (Cons!62930 (generalisedConcat!1200 (exprs!5469 (h!69379 (t!376339 zl!343)))) (unfocusZipperList!1013 (t!376339 (t!376339 zl!343)))))))

(declare-fun b!5598995 () Bool)

(assert (=> b!5598995 (= e!3453761 Nil!62930)))

(assert (= (and d!1769844 c!981731) b!5598994))

(assert (= (and d!1769844 (not c!981731)) b!5598995))

(declare-fun m!6577770 () Bool)

(assert (=> d!1769844 m!6577770))

(declare-fun m!6577772 () Bool)

(assert (=> b!5598994 m!6577772))

(declare-fun m!6577774 () Bool)

(assert (=> b!5598994 m!6577774))

(assert (=> b!5598183 d!1769844))

(assert (=> d!1769432 d!1769434))

(assert (=> d!1769432 d!1769478))

(declare-fun d!1769846 () Bool)

(declare-fun e!3453764 () Bool)

(assert (=> d!1769846 (= (matchZipper!1723 ((_ map or) lt!2256522 lt!2256516) (t!376340 s!2326)) e!3453764)))

(declare-fun res!2374808 () Bool)

(assert (=> d!1769846 (=> res!2374808 e!3453764)))

(assert (=> d!1769846 (= res!2374808 (matchZipper!1723 lt!2256522 (t!376340 s!2326)))))

(assert (=> d!1769846 true))

(declare-fun _$48!1208 () Unit!155772)

(assert (=> d!1769846 (= (choose!42454 lt!2256522 lt!2256516 (t!376340 s!2326)) _$48!1208)))

(declare-fun b!5598998 () Bool)

(assert (=> b!5598998 (= e!3453764 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(assert (= (and d!1769846 (not res!2374808)) b!5598998))

(assert (=> d!1769846 m!6576490))

(assert (=> d!1769846 m!6576506))

(assert (=> b!5598998 m!6576478))

(assert (=> d!1769432 d!1769846))

(declare-fun d!1769848 () Bool)

(assert (=> d!1769848 (= (isConcat!662 lt!2256579) ((_ is Concat!24430) lt!2256579))))

(assert (=> b!5597992 d!1769848))

(declare-fun d!1769850 () Bool)

(assert (=> d!1769850 (= (isEmpty!34758 (t!376340 s!2326)) ((_ is Nil!62932) (t!376340 s!2326)))))

(assert (=> d!1769434 d!1769850))

(declare-fun b!5598999 () Bool)

(declare-fun e!3453767 () (InoxSet Context!9938))

(assert (=> b!5598999 (= e!3453767 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599000 () Bool)

(declare-fun e!3453766 () Bool)

(assert (=> b!5599000 (= e!3453766 (nullable!5617 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256515)))))))))

(declare-fun b!5599001 () Bool)

(declare-fun call!420062 () (InoxSet Context!9938))

(assert (=> b!5599001 (= e!3453767 call!420062)))

(declare-fun d!1769852 () Bool)

(declare-fun c!981733 () Bool)

(assert (=> d!1769852 (= c!981733 e!3453766)))

(declare-fun res!2374809 () Bool)

(assert (=> d!1769852 (=> (not res!2374809) (not e!3453766))))

(assert (=> d!1769852 (= res!2374809 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256515))))))))

(declare-fun e!3453765 () (InoxSet Context!9938))

(assert (=> d!1769852 (= (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 lt!2256515))) (h!69380 s!2326)) e!3453765)))

(declare-fun bm!420057 () Bool)

(assert (=> bm!420057 (= call!420062 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256515))))) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256515)))))) (h!69380 s!2326)))))

(declare-fun b!5599002 () Bool)

(assert (=> b!5599002 (= e!3453765 e!3453767)))

(declare-fun c!981732 () Bool)

(assert (=> b!5599002 (= c!981732 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256515))))))))

(declare-fun b!5599003 () Bool)

(assert (=> b!5599003 (= e!3453765 ((_ map or) call!420062 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256515)))))) (h!69380 s!2326))))))

(assert (= (and d!1769852 res!2374809) b!5599000))

(assert (= (and d!1769852 c!981733) b!5599003))

(assert (= (and d!1769852 (not c!981733)) b!5599002))

(assert (= (and b!5599002 c!981732) b!5599001))

(assert (= (and b!5599002 (not c!981732)) b!5598999))

(assert (= (or b!5599003 b!5599001) bm!420057))

(declare-fun m!6577776 () Bool)

(assert (=> b!5599000 m!6577776))

(declare-fun m!6577778 () Bool)

(assert (=> bm!420057 m!6577778))

(declare-fun m!6577780 () Bool)

(assert (=> b!5599003 m!6577780))

(assert (=> b!5598148 d!1769852))

(declare-fun b!5599015 () Bool)

(declare-fun e!3453772 () Bool)

(declare-fun lt!2256642 () List!63056)

(assert (=> b!5599015 (= e!3453772 (or (not (= (_2!35985 (get!21674 lt!2256591)) Nil!62932)) (= lt!2256642 (_1!35985 (get!21674 lt!2256591)))))))

(declare-fun b!5599014 () Bool)

(declare-fun res!2374814 () Bool)

(assert (=> b!5599014 (=> (not res!2374814) (not e!3453772))))

(declare-fun size!39971 (List!63056) Int)

(assert (=> b!5599014 (= res!2374814 (= (size!39971 lt!2256642) (+ (size!39971 (_1!35985 (get!21674 lt!2256591))) (size!39971 (_2!35985 (get!21674 lt!2256591))))))))

(declare-fun d!1769854 () Bool)

(assert (=> d!1769854 e!3453772))

(declare-fun res!2374815 () Bool)

(assert (=> d!1769854 (=> (not res!2374815) (not e!3453772))))

(declare-fun content!11366 (List!63056) (InoxSet C!31440))

(assert (=> d!1769854 (= res!2374815 (= (content!11366 lt!2256642) ((_ map or) (content!11366 (_1!35985 (get!21674 lt!2256591))) (content!11366 (_2!35985 (get!21674 lt!2256591))))))))

(declare-fun e!3453773 () List!63056)

(assert (=> d!1769854 (= lt!2256642 e!3453773)))

(declare-fun c!981736 () Bool)

(assert (=> d!1769854 (= c!981736 ((_ is Nil!62932) (_1!35985 (get!21674 lt!2256591))))))

(assert (=> d!1769854 (= (++!13814 (_1!35985 (get!21674 lt!2256591)) (_2!35985 (get!21674 lt!2256591))) lt!2256642)))

(declare-fun b!5599012 () Bool)

(assert (=> b!5599012 (= e!3453773 (_2!35985 (get!21674 lt!2256591)))))

(declare-fun b!5599013 () Bool)

(assert (=> b!5599013 (= e!3453773 (Cons!62932 (h!69380 (_1!35985 (get!21674 lt!2256591))) (++!13814 (t!376340 (_1!35985 (get!21674 lt!2256591))) (_2!35985 (get!21674 lt!2256591)))))))

(assert (= (and d!1769854 c!981736) b!5599012))

(assert (= (and d!1769854 (not c!981736)) b!5599013))

(assert (= (and d!1769854 res!2374815) b!5599014))

(assert (= (and b!5599014 res!2374814) b!5599015))

(declare-fun m!6577782 () Bool)

(assert (=> b!5599014 m!6577782))

(declare-fun m!6577784 () Bool)

(assert (=> b!5599014 m!6577784))

(declare-fun m!6577786 () Bool)

(assert (=> b!5599014 m!6577786))

(declare-fun m!6577788 () Bool)

(assert (=> d!1769854 m!6577788))

(declare-fun m!6577790 () Bool)

(assert (=> d!1769854 m!6577790))

(declare-fun m!6577792 () Bool)

(assert (=> d!1769854 m!6577792))

(declare-fun m!6577794 () Bool)

(assert (=> b!5599013 m!6577794))

(assert (=> b!5598104 d!1769854))

(declare-fun d!1769856 () Bool)

(assert (=> d!1769856 (= (get!21674 lt!2256591) (v!51634 lt!2256591))))

(assert (=> b!5598104 d!1769856))

(declare-fun call!420063 () List!63054)

(declare-fun c!981741 () Bool)

(declare-fun bm!420058 () Bool)

(declare-fun c!981738 () Bool)

(assert (=> bm!420058 (= call!420063 ($colon$colon!1648 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343))))) (ite (or c!981741 c!981738) (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (h!69378 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun b!5599016 () Bool)

(declare-fun e!3453779 () (InoxSet Context!9938))

(declare-fun e!3453775 () (InoxSet Context!9938))

(assert (=> b!5599016 (= e!3453779 e!3453775)))

(declare-fun c!981739 () Bool)

(assert (=> b!5599016 (= c!981739 ((_ is Union!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5599017 () Bool)

(declare-fun e!3453777 () (InoxSet Context!9938))

(assert (=> b!5599017 (= e!3453777 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599018 () Bool)

(assert (=> b!5599018 (= e!3453779 (store ((as const (Array Context!9938 Bool)) false) (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))) true))))

(declare-fun b!5599019 () Bool)

(declare-fun e!3453774 () (InoxSet Context!9938))

(declare-fun call!420067 () (InoxSet Context!9938))

(declare-fun call!420065 () (InoxSet Context!9938))

(assert (=> b!5599019 (= e!3453774 ((_ map or) call!420067 call!420065))))

(declare-fun bm!420059 () Bool)

(declare-fun call!420064 () List!63054)

(assert (=> bm!420059 (= call!420064 call!420063)))

(declare-fun b!5599020 () Bool)

(declare-fun c!981737 () Bool)

(assert (=> b!5599020 (= c!981737 ((_ is Star!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun e!3453778 () (InoxSet Context!9938))

(assert (=> b!5599020 (= e!3453778 e!3453777)))

(declare-fun bm!420060 () Bool)

(declare-fun call!420068 () (InoxSet Context!9938))

(assert (=> bm!420060 (= call!420065 call!420068)))

(declare-fun b!5599021 () Bool)

(declare-fun e!3453776 () Bool)

(assert (=> b!5599021 (= c!981741 e!3453776)))

(declare-fun res!2374816 () Bool)

(assert (=> b!5599021 (=> (not res!2374816) (not e!3453776))))

(assert (=> b!5599021 (= res!2374816 ((_ is Concat!24430) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(assert (=> b!5599021 (= e!3453775 e!3453774)))

(declare-fun b!5599022 () Bool)

(declare-fun call!420066 () (InoxSet Context!9938))

(assert (=> b!5599022 (= e!3453778 call!420066)))

(declare-fun bm!420062 () Bool)

(assert (=> bm!420062 (= call!420066 call!420065)))

(declare-fun bm!420063 () Bool)

(assert (=> bm!420063 (= call!420067 (derivationStepZipperDown!927 (ite c!981739 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))) (ite c!981739 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))) (Context!9939 call!420063)) (h!69380 s!2326)))))

(declare-fun b!5599023 () Bool)

(assert (=> b!5599023 (= e!3453775 ((_ map or) call!420067 call!420068))))

(declare-fun b!5599024 () Bool)

(assert (=> b!5599024 (= e!3453776 (nullable!5617 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun d!1769858 () Bool)

(declare-fun c!981740 () Bool)

(assert (=> d!1769858 (= c!981740 (and ((_ is ElementMatch!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))) (= (c!981334 (h!69378 (exprs!5469 (h!69379 zl!343)))) (h!69380 s!2326))))))

(assert (=> d!1769858 (= (derivationStepZipperDown!927 (h!69378 (exprs!5469 (h!69379 zl!343))) (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))) (h!69380 s!2326)) e!3453779)))

(declare-fun bm!420061 () Bool)

(assert (=> bm!420061 (= call!420068 (derivationStepZipperDown!927 (ite c!981739 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981741 (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (ite c!981738 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (reg!15914 (h!69378 (exprs!5469 (h!69379 zl!343))))))) (ite (or c!981739 c!981741) (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))) (Context!9939 call!420064)) (h!69380 s!2326)))))

(declare-fun b!5599025 () Bool)

(assert (=> b!5599025 (= e!3453777 call!420066)))

(declare-fun b!5599026 () Bool)

(assert (=> b!5599026 (= e!3453774 e!3453778)))

(assert (=> b!5599026 (= c!981738 ((_ is Concat!24430) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(assert (= (and d!1769858 c!981740) b!5599018))

(assert (= (and d!1769858 (not c!981740)) b!5599016))

(assert (= (and b!5599016 c!981739) b!5599023))

(assert (= (and b!5599016 (not c!981739)) b!5599021))

(assert (= (and b!5599021 res!2374816) b!5599024))

(assert (= (and b!5599021 c!981741) b!5599019))

(assert (= (and b!5599021 (not c!981741)) b!5599026))

(assert (= (and b!5599026 c!981738) b!5599022))

(assert (= (and b!5599026 (not c!981738)) b!5599020))

(assert (= (and b!5599020 c!981737) b!5599025))

(assert (= (and b!5599020 (not c!981737)) b!5599017))

(assert (= (or b!5599022 b!5599025) bm!420059))

(assert (= (or b!5599022 b!5599025) bm!420062))

(assert (= (or b!5599019 bm!420059) bm!420058))

(assert (= (or b!5599019 bm!420062) bm!420060))

(assert (= (or b!5599023 bm!420060) bm!420061))

(assert (= (or b!5599023 b!5599019) bm!420063))

(declare-fun m!6577796 () Bool)

(assert (=> bm!420063 m!6577796))

(declare-fun m!6577798 () Bool)

(assert (=> bm!420058 m!6577798))

(assert (=> b!5599024 m!6577060))

(declare-fun m!6577800 () Bool)

(assert (=> b!5599018 m!6577800))

(declare-fun m!6577802 () Bool)

(assert (=> bm!420061 m!6577802))

(assert (=> bm!419905 d!1769858))

(assert (=> d!1769526 d!1769528))

(assert (=> d!1769526 d!1769436))

(declare-fun d!1769860 () Bool)

(declare-fun e!3453780 () Bool)

(assert (=> d!1769860 (= (matchZipper!1723 ((_ map or) lt!2256505 lt!2256516) (t!376340 s!2326)) e!3453780)))

(declare-fun res!2374817 () Bool)

(assert (=> d!1769860 (=> res!2374817 e!3453780)))

(assert (=> d!1769860 (= res!2374817 (matchZipper!1723 lt!2256505 (t!376340 s!2326)))))

(assert (=> d!1769860 true))

(declare-fun _$48!1209 () Unit!155772)

(assert (=> d!1769860 (= (choose!42454 lt!2256505 lt!2256516 (t!376340 s!2326)) _$48!1209)))

(declare-fun b!5599027 () Bool)

(assert (=> b!5599027 (= e!3453780 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(assert (= (and d!1769860 (not res!2374817)) b!5599027))

(assert (=> d!1769860 m!6576514))

(assert (=> d!1769860 m!6576452))

(assert (=> b!5599027 m!6576478))

(assert (=> d!1769526 d!1769860))

(declare-fun d!1769862 () Bool)

(assert (=> d!1769862 (= (isUnion!579 lt!2256603) ((_ is Union!15585) lt!2256603))))

(assert (=> b!5598178 d!1769862))

(declare-fun d!1769864 () Bool)

(declare-fun lambda!300680 () Int)

(declare-fun exists!2174 ((InoxSet Context!9938) Int) Bool)

(assert (=> d!1769864 (= (nullableZipper!1580 lt!2256505) (exists!2174 lt!2256505 lambda!300680))))

(declare-fun bs!1294549 () Bool)

(assert (= bs!1294549 d!1769864))

(declare-fun m!6577804 () Bool)

(assert (=> bs!1294549 m!6577804))

(assert (=> b!5597945 d!1769864))

(declare-fun b!5599028 () Bool)

(declare-fun e!3453781 () Bool)

(declare-fun lt!2256643 () Bool)

(assert (=> b!5599028 (= e!3453781 (not lt!2256643))))

(declare-fun b!5599029 () Bool)

(declare-fun e!3453785 () Bool)

(assert (=> b!5599029 (= e!3453785 (= (head!11939 (tail!11034 s!2326)) (c!981334 (derivativeStep!4433 r!7292 (head!11939 s!2326)))))))

(declare-fun b!5599031 () Bool)

(declare-fun e!3453784 () Bool)

(assert (=> b!5599031 (= e!3453784 (not (= (head!11939 (tail!11034 s!2326)) (c!981334 (derivativeStep!4433 r!7292 (head!11939 s!2326))))))))

(declare-fun b!5599032 () Bool)

(declare-fun res!2374820 () Bool)

(declare-fun e!3453786 () Bool)

(assert (=> b!5599032 (=> res!2374820 e!3453786)))

(assert (=> b!5599032 (= res!2374820 e!3453785)))

(declare-fun res!2374823 () Bool)

(assert (=> b!5599032 (=> (not res!2374823) (not e!3453785))))

(assert (=> b!5599032 (= res!2374823 lt!2256643)))

(declare-fun b!5599033 () Bool)

(declare-fun e!3453783 () Bool)

(assert (=> b!5599033 (= e!3453783 e!3453784)))

(declare-fun res!2374818 () Bool)

(assert (=> b!5599033 (=> res!2374818 e!3453784)))

(declare-fun call!420069 () Bool)

(assert (=> b!5599033 (= res!2374818 call!420069)))

(declare-fun b!5599034 () Bool)

(assert (=> b!5599034 (= e!3453786 e!3453783)))

(declare-fun res!2374821 () Bool)

(assert (=> b!5599034 (=> (not res!2374821) (not e!3453783))))

(assert (=> b!5599034 (= res!2374821 (not lt!2256643))))

(declare-fun b!5599035 () Bool)

(declare-fun e!3453787 () Bool)

(assert (=> b!5599035 (= e!3453787 (= lt!2256643 call!420069))))

(declare-fun b!5599036 () Bool)

(declare-fun res!2374819 () Bool)

(assert (=> b!5599036 (=> res!2374819 e!3453786)))

(assert (=> b!5599036 (= res!2374819 (not ((_ is ElementMatch!15585) (derivativeStep!4433 r!7292 (head!11939 s!2326)))))))

(assert (=> b!5599036 (= e!3453781 e!3453786)))

(declare-fun b!5599037 () Bool)

(declare-fun res!2374822 () Bool)

(assert (=> b!5599037 (=> (not res!2374822) (not e!3453785))))

(assert (=> b!5599037 (= res!2374822 (not call!420069))))

(declare-fun b!5599038 () Bool)

(declare-fun e!3453782 () Bool)

(assert (=> b!5599038 (= e!3453782 (nullable!5617 (derivativeStep!4433 r!7292 (head!11939 s!2326))))))

(declare-fun b!5599039 () Bool)

(assert (=> b!5599039 (= e!3453782 (matchR!7770 (derivativeStep!4433 (derivativeStep!4433 r!7292 (head!11939 s!2326)) (head!11939 (tail!11034 s!2326))) (tail!11034 (tail!11034 s!2326))))))

(declare-fun bm!420064 () Bool)

(assert (=> bm!420064 (= call!420069 (isEmpty!34758 (tail!11034 s!2326)))))

(declare-fun d!1769866 () Bool)

(assert (=> d!1769866 e!3453787))

(declare-fun c!981745 () Bool)

(assert (=> d!1769866 (= c!981745 ((_ is EmptyExpr!15585) (derivativeStep!4433 r!7292 (head!11939 s!2326))))))

(assert (=> d!1769866 (= lt!2256643 e!3453782)))

(declare-fun c!981744 () Bool)

(assert (=> d!1769866 (= c!981744 (isEmpty!34758 (tail!11034 s!2326)))))

(assert (=> d!1769866 (validRegex!7321 (derivativeStep!4433 r!7292 (head!11939 s!2326)))))

(assert (=> d!1769866 (= (matchR!7770 (derivativeStep!4433 r!7292 (head!11939 s!2326)) (tail!11034 s!2326)) lt!2256643)))

(declare-fun b!5599030 () Bool)

(declare-fun res!2374824 () Bool)

(assert (=> b!5599030 (=> (not res!2374824) (not e!3453785))))

(assert (=> b!5599030 (= res!2374824 (isEmpty!34758 (tail!11034 (tail!11034 s!2326))))))

(declare-fun b!5599040 () Bool)

(declare-fun res!2374825 () Bool)

(assert (=> b!5599040 (=> res!2374825 e!3453784)))

(assert (=> b!5599040 (= res!2374825 (not (isEmpty!34758 (tail!11034 (tail!11034 s!2326)))))))

(declare-fun b!5599041 () Bool)

(assert (=> b!5599041 (= e!3453787 e!3453781)))

(declare-fun c!981746 () Bool)

(assert (=> b!5599041 (= c!981746 ((_ is EmptyLang!15585) (derivativeStep!4433 r!7292 (head!11939 s!2326))))))

(assert (= (and d!1769866 c!981744) b!5599038))

(assert (= (and d!1769866 (not c!981744)) b!5599039))

(assert (= (and d!1769866 c!981745) b!5599035))

(assert (= (and d!1769866 (not c!981745)) b!5599041))

(assert (= (and b!5599041 c!981746) b!5599028))

(assert (= (and b!5599041 (not c!981746)) b!5599036))

(assert (= (and b!5599036 (not res!2374819)) b!5599032))

(assert (= (and b!5599032 res!2374823) b!5599037))

(assert (= (and b!5599037 res!2374822) b!5599030))

(assert (= (and b!5599030 res!2374824) b!5599029))

(assert (= (and b!5599032 (not res!2374820)) b!5599034))

(assert (= (and b!5599034 res!2374821) b!5599033))

(assert (= (and b!5599033 (not res!2374818)) b!5599040))

(assert (= (and b!5599040 (not res!2374825)) b!5599031))

(assert (= (or b!5599035 b!5599033 b!5599037) bm!420064))

(assert (=> b!5599038 m!6577110))

(declare-fun m!6577806 () Bool)

(assert (=> b!5599038 m!6577806))

(assert (=> b!5599030 m!6576854))

(declare-fun m!6577808 () Bool)

(assert (=> b!5599030 m!6577808))

(assert (=> b!5599030 m!6577808))

(declare-fun m!6577810 () Bool)

(assert (=> b!5599030 m!6577810))

(assert (=> d!1769866 m!6576854))

(assert (=> d!1769866 m!6577108))

(assert (=> d!1769866 m!6577110))

(declare-fun m!6577812 () Bool)

(assert (=> d!1769866 m!6577812))

(assert (=> b!5599040 m!6576854))

(assert (=> b!5599040 m!6577808))

(assert (=> b!5599040 m!6577808))

(assert (=> b!5599040 m!6577810))

(assert (=> b!5599029 m!6576854))

(declare-fun m!6577814 () Bool)

(assert (=> b!5599029 m!6577814))

(assert (=> b!5599039 m!6576854))

(assert (=> b!5599039 m!6577814))

(assert (=> b!5599039 m!6577110))

(assert (=> b!5599039 m!6577814))

(declare-fun m!6577816 () Bool)

(assert (=> b!5599039 m!6577816))

(assert (=> b!5599039 m!6576854))

(assert (=> b!5599039 m!6577808))

(assert (=> b!5599039 m!6577816))

(assert (=> b!5599039 m!6577808))

(declare-fun m!6577818 () Bool)

(assert (=> b!5599039 m!6577818))

(assert (=> b!5599031 m!6576854))

(assert (=> b!5599031 m!6577814))

(assert (=> bm!420064 m!6576854))

(assert (=> bm!420064 m!6577108))

(assert (=> b!5598267 d!1769866))

(declare-fun b!5599062 () Bool)

(declare-fun e!3453801 () Regex!15585)

(declare-fun e!3453800 () Regex!15585)

(assert (=> b!5599062 (= e!3453801 e!3453800)))

(declare-fun c!981758 () Bool)

(assert (=> b!5599062 (= c!981758 ((_ is ElementMatch!15585) r!7292))))

(declare-fun b!5599063 () Bool)

(declare-fun e!3453802 () Regex!15585)

(declare-fun call!420081 () Regex!15585)

(assert (=> b!5599063 (= e!3453802 (Concat!24430 call!420081 r!7292))))

(declare-fun bm!420073 () Bool)

(declare-fun call!420080 () Regex!15585)

(assert (=> bm!420073 (= call!420081 call!420080)))

(declare-fun b!5599064 () Bool)

(declare-fun c!981759 () Bool)

(assert (=> b!5599064 (= c!981759 ((_ is Union!15585) r!7292))))

(declare-fun e!3453799 () Regex!15585)

(assert (=> b!5599064 (= e!3453800 e!3453799)))

(declare-fun c!981757 () Bool)

(declare-fun c!981761 () Bool)

(declare-fun bm!420074 () Bool)

(assert (=> bm!420074 (= call!420080 (derivativeStep!4433 (ite c!981759 (regTwo!31683 r!7292) (ite c!981757 (reg!15914 r!7292) (ite c!981761 (regTwo!31682 r!7292) (regOne!31682 r!7292)))) (head!11939 s!2326)))))

(declare-fun b!5599065 () Bool)

(declare-fun e!3453798 () Regex!15585)

(declare-fun call!420079 () Regex!15585)

(assert (=> b!5599065 (= e!3453798 (Union!15585 (Concat!24430 call!420079 (regTwo!31682 r!7292)) EmptyLang!15585))))

(declare-fun b!5599066 () Bool)

(assert (=> b!5599066 (= c!981761 (nullable!5617 (regOne!31682 r!7292)))))

(assert (=> b!5599066 (= e!3453802 e!3453798)))

(declare-fun d!1769868 () Bool)

(declare-fun lt!2256646 () Regex!15585)

(assert (=> d!1769868 (validRegex!7321 lt!2256646)))

(assert (=> d!1769868 (= lt!2256646 e!3453801)))

(declare-fun c!981760 () Bool)

(assert (=> d!1769868 (= c!981760 (or ((_ is EmptyExpr!15585) r!7292) ((_ is EmptyLang!15585) r!7292)))))

(assert (=> d!1769868 (validRegex!7321 r!7292)))

(assert (=> d!1769868 (= (derivativeStep!4433 r!7292 (head!11939 s!2326)) lt!2256646)))

(declare-fun bm!420075 () Bool)

(assert (=> bm!420075 (= call!420079 call!420081)))

(declare-fun b!5599067 () Bool)

(assert (=> b!5599067 (= e!3453800 (ite (= (head!11939 s!2326) (c!981334 r!7292)) EmptyExpr!15585 EmptyLang!15585))))

(declare-fun b!5599068 () Bool)

(declare-fun call!420078 () Regex!15585)

(assert (=> b!5599068 (= e!3453799 (Union!15585 call!420078 call!420080))))

(declare-fun bm!420076 () Bool)

(assert (=> bm!420076 (= call!420078 (derivativeStep!4433 (ite c!981759 (regOne!31683 r!7292) (regOne!31682 r!7292)) (head!11939 s!2326)))))

(declare-fun b!5599069 () Bool)

(assert (=> b!5599069 (= e!3453801 EmptyLang!15585)))

(declare-fun b!5599070 () Bool)

(assert (=> b!5599070 (= e!3453799 e!3453802)))

(assert (=> b!5599070 (= c!981757 ((_ is Star!15585) r!7292))))

(declare-fun b!5599071 () Bool)

(assert (=> b!5599071 (= e!3453798 (Union!15585 (Concat!24430 call!420078 (regTwo!31682 r!7292)) call!420079))))

(assert (= (and d!1769868 c!981760) b!5599069))

(assert (= (and d!1769868 (not c!981760)) b!5599062))

(assert (= (and b!5599062 c!981758) b!5599067))

(assert (= (and b!5599062 (not c!981758)) b!5599064))

(assert (= (and b!5599064 c!981759) b!5599068))

(assert (= (and b!5599064 (not c!981759)) b!5599070))

(assert (= (and b!5599070 c!981757) b!5599063))

(assert (= (and b!5599070 (not c!981757)) b!5599066))

(assert (= (and b!5599066 c!981761) b!5599071))

(assert (= (and b!5599066 (not c!981761)) b!5599065))

(assert (= (or b!5599071 b!5599065) bm!420075))

(assert (= (or b!5599063 bm!420075) bm!420073))

(assert (= (or b!5599068 bm!420073) bm!420074))

(assert (= (or b!5599068 b!5599071) bm!420076))

(assert (=> bm!420074 m!6576850))

(declare-fun m!6577820 () Bool)

(assert (=> bm!420074 m!6577820))

(declare-fun m!6577822 () Bool)

(assert (=> b!5599066 m!6577822))

(declare-fun m!6577824 () Bool)

(assert (=> d!1769868 m!6577824))

(assert (=> d!1769868 m!6576498))

(assert (=> bm!420076 m!6576850))

(declare-fun m!6577826 () Bool)

(assert (=> bm!420076 m!6577826))

(assert (=> b!5598267 d!1769868))

(declare-fun d!1769870 () Bool)

(assert (=> d!1769870 (= (head!11939 s!2326) (h!69380 s!2326))))

(assert (=> b!5598267 d!1769870))

(declare-fun d!1769872 () Bool)

(assert (=> d!1769872 (= (tail!11034 s!2326) (t!376340 s!2326))))

(assert (=> b!5598267 d!1769872))

(declare-fun bm!420077 () Bool)

(declare-fun c!981766 () Bool)

(declare-fun c!981763 () Bool)

(declare-fun call!420082 () List!63054)

(assert (=> bm!420077 (= call!420082 ($colon$colon!1648 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256520)))) (ite (or c!981766 c!981763) (regTwo!31682 (h!69378 (exprs!5469 lt!2256520))) (h!69378 (exprs!5469 lt!2256520)))))))

(declare-fun b!5599072 () Bool)

(declare-fun e!3453808 () (InoxSet Context!9938))

(declare-fun e!3453804 () (InoxSet Context!9938))

(assert (=> b!5599072 (= e!3453808 e!3453804)))

(declare-fun c!981764 () Bool)

(assert (=> b!5599072 (= c!981764 ((_ is Union!15585) (h!69378 (exprs!5469 lt!2256520))))))

(declare-fun b!5599073 () Bool)

(declare-fun e!3453806 () (InoxSet Context!9938))

(assert (=> b!5599073 (= e!3453806 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599074 () Bool)

(assert (=> b!5599074 (= e!3453808 (store ((as const (Array Context!9938 Bool)) false) (Context!9939 (t!376338 (exprs!5469 lt!2256520))) true))))

(declare-fun b!5599075 () Bool)

(declare-fun e!3453803 () (InoxSet Context!9938))

(declare-fun call!420086 () (InoxSet Context!9938))

(declare-fun call!420084 () (InoxSet Context!9938))

(assert (=> b!5599075 (= e!3453803 ((_ map or) call!420086 call!420084))))

(declare-fun bm!420078 () Bool)

(declare-fun call!420083 () List!63054)

(assert (=> bm!420078 (= call!420083 call!420082)))

(declare-fun b!5599076 () Bool)

(declare-fun c!981762 () Bool)

(assert (=> b!5599076 (= c!981762 ((_ is Star!15585) (h!69378 (exprs!5469 lt!2256520))))))

(declare-fun e!3453807 () (InoxSet Context!9938))

(assert (=> b!5599076 (= e!3453807 e!3453806)))

(declare-fun bm!420079 () Bool)

(declare-fun call!420087 () (InoxSet Context!9938))

(assert (=> bm!420079 (= call!420084 call!420087)))

(declare-fun b!5599077 () Bool)

(declare-fun e!3453805 () Bool)

(assert (=> b!5599077 (= c!981766 e!3453805)))

(declare-fun res!2374826 () Bool)

(assert (=> b!5599077 (=> (not res!2374826) (not e!3453805))))

(assert (=> b!5599077 (= res!2374826 ((_ is Concat!24430) (h!69378 (exprs!5469 lt!2256520))))))

(assert (=> b!5599077 (= e!3453804 e!3453803)))

(declare-fun b!5599078 () Bool)

(declare-fun call!420085 () (InoxSet Context!9938))

(assert (=> b!5599078 (= e!3453807 call!420085)))

(declare-fun bm!420081 () Bool)

(assert (=> bm!420081 (= call!420085 call!420084)))

(declare-fun bm!420082 () Bool)

(assert (=> bm!420082 (= call!420086 (derivationStepZipperDown!927 (ite c!981764 (regOne!31683 (h!69378 (exprs!5469 lt!2256520))) (regOne!31682 (h!69378 (exprs!5469 lt!2256520)))) (ite c!981764 (Context!9939 (t!376338 (exprs!5469 lt!2256520))) (Context!9939 call!420082)) (h!69380 s!2326)))))

(declare-fun b!5599079 () Bool)

(assert (=> b!5599079 (= e!3453804 ((_ map or) call!420086 call!420087))))

(declare-fun b!5599080 () Bool)

(assert (=> b!5599080 (= e!3453805 (nullable!5617 (regOne!31682 (h!69378 (exprs!5469 lt!2256520)))))))

(declare-fun d!1769874 () Bool)

(declare-fun c!981765 () Bool)

(assert (=> d!1769874 (= c!981765 (and ((_ is ElementMatch!15585) (h!69378 (exprs!5469 lt!2256520))) (= (c!981334 (h!69378 (exprs!5469 lt!2256520))) (h!69380 s!2326))))))

(assert (=> d!1769874 (= (derivationStepZipperDown!927 (h!69378 (exprs!5469 lt!2256520)) (Context!9939 (t!376338 (exprs!5469 lt!2256520))) (h!69380 s!2326)) e!3453808)))

(declare-fun bm!420080 () Bool)

(assert (=> bm!420080 (= call!420087 (derivationStepZipperDown!927 (ite c!981764 (regTwo!31683 (h!69378 (exprs!5469 lt!2256520))) (ite c!981766 (regTwo!31682 (h!69378 (exprs!5469 lt!2256520))) (ite c!981763 (regOne!31682 (h!69378 (exprs!5469 lt!2256520))) (reg!15914 (h!69378 (exprs!5469 lt!2256520)))))) (ite (or c!981764 c!981766) (Context!9939 (t!376338 (exprs!5469 lt!2256520))) (Context!9939 call!420083)) (h!69380 s!2326)))))

(declare-fun b!5599081 () Bool)

(assert (=> b!5599081 (= e!3453806 call!420085)))

(declare-fun b!5599082 () Bool)

(assert (=> b!5599082 (= e!3453803 e!3453807)))

(assert (=> b!5599082 (= c!981763 ((_ is Concat!24430) (h!69378 (exprs!5469 lt!2256520))))))

(assert (= (and d!1769874 c!981765) b!5599074))

(assert (= (and d!1769874 (not c!981765)) b!5599072))

(assert (= (and b!5599072 c!981764) b!5599079))

(assert (= (and b!5599072 (not c!981764)) b!5599077))

(assert (= (and b!5599077 res!2374826) b!5599080))

(assert (= (and b!5599077 c!981766) b!5599075))

(assert (= (and b!5599077 (not c!981766)) b!5599082))

(assert (= (and b!5599082 c!981763) b!5599078))

(assert (= (and b!5599082 (not c!981763)) b!5599076))

(assert (= (and b!5599076 c!981762) b!5599081))

(assert (= (and b!5599076 (not c!981762)) b!5599073))

(assert (= (or b!5599078 b!5599081) bm!420078))

(assert (= (or b!5599078 b!5599081) bm!420081))

(assert (= (or b!5599075 bm!420078) bm!420077))

(assert (= (or b!5599075 bm!420081) bm!420079))

(assert (= (or b!5599079 bm!420079) bm!420080))

(assert (= (or b!5599079 b!5599075) bm!420082))

(declare-fun m!6577828 () Bool)

(assert (=> bm!420082 m!6577828))

(declare-fun m!6577830 () Bool)

(assert (=> bm!420077 m!6577830))

(declare-fun m!6577832 () Bool)

(assert (=> b!5599080 m!6577832))

(declare-fun m!6577834 () Bool)

(assert (=> b!5599074 m!6577834))

(declare-fun m!6577836 () Bool)

(assert (=> bm!420080 m!6577836))

(assert (=> bm!419864 d!1769874))

(declare-fun bs!1294550 () Bool)

(declare-fun d!1769876 () Bool)

(assert (= bs!1294550 (and d!1769876 d!1769864)))

(declare-fun lambda!300681 () Int)

(assert (=> bs!1294550 (= lambda!300681 lambda!300680)))

(assert (=> d!1769876 (= (nullableZipper!1580 z!1189) (exists!2174 z!1189 lambda!300681))))

(declare-fun bs!1294551 () Bool)

(assert (= bs!1294551 d!1769876))

(declare-fun m!6577838 () Bool)

(assert (=> bs!1294551 m!6577838))

(assert (=> b!5597962 d!1769876))

(declare-fun d!1769878 () Bool)

(assert (=> d!1769878 (= (isEmpty!34759 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326)) (not ((_ is Some!15593) (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326))))))

(assert (=> d!1769496 d!1769878))

(declare-fun b!5599097 () Bool)

(declare-fun e!3453824 () Bool)

(declare-fun call!420092 () Bool)

(assert (=> b!5599097 (= e!3453824 call!420092)))

(declare-fun b!5599098 () Bool)

(declare-fun e!3453821 () Bool)

(assert (=> b!5599098 (= e!3453821 call!420092)))

(declare-fun b!5599099 () Bool)

(declare-fun e!3453826 () Bool)

(declare-fun e!3453823 () Bool)

(assert (=> b!5599099 (= e!3453826 e!3453823)))

(declare-fun res!2374839 () Bool)

(assert (=> b!5599099 (=> res!2374839 e!3453823)))

(assert (=> b!5599099 (= res!2374839 ((_ is Star!15585) (regOne!31683 (regOne!31682 r!7292))))))

(declare-fun b!5599100 () Bool)

(declare-fun e!3453822 () Bool)

(assert (=> b!5599100 (= e!3453822 e!3453826)))

(declare-fun res!2374838 () Bool)

(assert (=> b!5599100 (=> (not res!2374838) (not e!3453826))))

(assert (=> b!5599100 (= res!2374838 (and (not ((_ is EmptyLang!15585) (regOne!31683 (regOne!31682 r!7292)))) (not ((_ is ElementMatch!15585) (regOne!31683 (regOne!31682 r!7292))))))))

(declare-fun b!5599102 () Bool)

(declare-fun e!3453825 () Bool)

(assert (=> b!5599102 (= e!3453825 e!3453821)))

(declare-fun res!2374840 () Bool)

(declare-fun call!420093 () Bool)

(assert (=> b!5599102 (= res!2374840 call!420093)))

(assert (=> b!5599102 (=> res!2374840 e!3453821)))

(declare-fun bm!420087 () Bool)

(declare-fun c!981769 () Bool)

(assert (=> bm!420087 (= call!420092 (nullable!5617 (ite c!981769 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))))))))

(declare-fun b!5599101 () Bool)

(assert (=> b!5599101 (= e!3453823 e!3453825)))

(assert (=> b!5599101 (= c!981769 ((_ is Union!15585) (regOne!31683 (regOne!31682 r!7292))))))

(declare-fun d!1769880 () Bool)

(declare-fun res!2374841 () Bool)

(assert (=> d!1769880 (=> res!2374841 e!3453822)))

(assert (=> d!1769880 (= res!2374841 ((_ is EmptyExpr!15585) (regOne!31683 (regOne!31682 r!7292))))))

(assert (=> d!1769880 (= (nullableFct!1726 (regOne!31683 (regOne!31682 r!7292))) e!3453822)))

(declare-fun b!5599103 () Bool)

(assert (=> b!5599103 (= e!3453825 e!3453824)))

(declare-fun res!2374837 () Bool)

(assert (=> b!5599103 (= res!2374837 call!420093)))

(assert (=> b!5599103 (=> (not res!2374837) (not e!3453824))))

(declare-fun bm!420088 () Bool)

(assert (=> bm!420088 (= call!420093 (nullable!5617 (ite c!981769 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))))))

(assert (= (and d!1769880 (not res!2374841)) b!5599100))

(assert (= (and b!5599100 res!2374838) b!5599099))

(assert (= (and b!5599099 (not res!2374839)) b!5599101))

(assert (= (and b!5599101 c!981769) b!5599102))

(assert (= (and b!5599101 (not c!981769)) b!5599103))

(assert (= (and b!5599102 (not res!2374840)) b!5599098))

(assert (= (and b!5599103 res!2374837) b!5599097))

(assert (= (or b!5599098 b!5599097) bm!420087))

(assert (= (or b!5599102 b!5599103) bm!420088))

(declare-fun m!6577840 () Bool)

(assert (=> bm!420087 m!6577840))

(declare-fun m!6577842 () Bool)

(assert (=> bm!420088 m!6577842))

(assert (=> d!1769456 d!1769880))

(declare-fun d!1769882 () Bool)

(assert (=> d!1769882 (= ($colon$colon!1648 (exprs!5469 lt!2256515) (ite (or c!981517 c!981514) (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (h!69378 (exprs!5469 (h!69379 zl!343))))) (Cons!62930 (ite (or c!981517 c!981514) (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))) (h!69378 (exprs!5469 (h!69379 zl!343)))) (exprs!5469 lt!2256515)))))

(assert (=> bm!419899 d!1769882))

(declare-fun b!5599104 () Bool)

(declare-fun e!3453832 () Bool)

(declare-fun call!420096 () Bool)

(assert (=> b!5599104 (= e!3453832 call!420096)))

(declare-fun d!1769884 () Bool)

(declare-fun res!2374843 () Bool)

(declare-fun e!3453833 () Bool)

(assert (=> d!1769884 (=> res!2374843 e!3453833)))

(assert (=> d!1769884 (= res!2374843 ((_ is ElementMatch!15585) (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))))))

(assert (=> d!1769884 (= (validRegex!7321 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))) e!3453833)))

(declare-fun b!5599105 () Bool)

(declare-fun res!2374844 () Bool)

(declare-fun e!3453828 () Bool)

(assert (=> b!5599105 (=> (not res!2374844) (not e!3453828))))

(declare-fun call!420094 () Bool)

(assert (=> b!5599105 (= res!2374844 call!420094)))

(declare-fun e!3453830 () Bool)

(assert (=> b!5599105 (= e!3453830 e!3453828)))

(declare-fun b!5599106 () Bool)

(declare-fun res!2374842 () Bool)

(declare-fun e!3453827 () Bool)

(assert (=> b!5599106 (=> res!2374842 e!3453827)))

(assert (=> b!5599106 (= res!2374842 (not ((_ is Concat!24430) (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292)))))))

(assert (=> b!5599106 (= e!3453830 e!3453827)))

(declare-fun b!5599107 () Bool)

(declare-fun e!3453831 () Bool)

(assert (=> b!5599107 (= e!3453833 e!3453831)))

(declare-fun c!981771 () Bool)

(assert (=> b!5599107 (= c!981771 ((_ is Star!15585) (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))))))

(declare-fun b!5599108 () Bool)

(declare-fun e!3453829 () Bool)

(declare-fun call!420095 () Bool)

(assert (=> b!5599108 (= e!3453829 call!420095)))

(declare-fun b!5599109 () Bool)

(assert (=> b!5599109 (= e!3453831 e!3453829)))

(declare-fun res!2374845 () Bool)

(assert (=> b!5599109 (= res!2374845 (not (nullable!5617 (reg!15914 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))))))))

(assert (=> b!5599109 (=> (not res!2374845) (not e!3453829))))

(declare-fun c!981770 () Bool)

(declare-fun bm!420089 () Bool)

(assert (=> bm!420089 (= call!420095 (validRegex!7321 (ite c!981771 (reg!15914 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))) (ite c!981770 (regTwo!31683 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))) (regTwo!31682 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292)))))))))

(declare-fun b!5599110 () Bool)

(assert (=> b!5599110 (= e!3453828 call!420096)))

(declare-fun b!5599111 () Bool)

(assert (=> b!5599111 (= e!3453827 e!3453832)))

(declare-fun res!2374846 () Bool)

(assert (=> b!5599111 (=> (not res!2374846) (not e!3453832))))

(assert (=> b!5599111 (= res!2374846 call!420094)))

(declare-fun bm!420090 () Bool)

(assert (=> bm!420090 (= call!420094 (validRegex!7321 (ite c!981770 (regOne!31683 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))) (regOne!31682 (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))))))))

(declare-fun b!5599112 () Bool)

(assert (=> b!5599112 (= e!3453831 e!3453830)))

(assert (=> b!5599112 (= c!981770 ((_ is Union!15585) (ite c!981503 (regOne!31683 r!7292) (regOne!31682 r!7292))))))

(declare-fun bm!420091 () Bool)

(assert (=> bm!420091 (= call!420096 call!420095)))

(assert (= (and d!1769884 (not res!2374843)) b!5599107))

(assert (= (and b!5599107 c!981771) b!5599109))

(assert (= (and b!5599107 (not c!981771)) b!5599112))

(assert (= (and b!5599109 res!2374845) b!5599108))

(assert (= (and b!5599112 c!981770) b!5599105))

(assert (= (and b!5599112 (not c!981770)) b!5599106))

(assert (= (and b!5599105 res!2374844) b!5599110))

(assert (= (and b!5599106 (not res!2374842)) b!5599111))

(assert (= (and b!5599111 res!2374846) b!5599104))

(assert (= (or b!5599110 b!5599104) bm!420091))

(assert (= (or b!5599105 b!5599111) bm!420090))

(assert (= (or b!5599108 bm!420091) bm!420089))

(declare-fun m!6577844 () Bool)

(assert (=> b!5599109 m!6577844))

(declare-fun m!6577846 () Bool)

(assert (=> bm!420089 m!6577846))

(declare-fun m!6577848 () Bool)

(assert (=> bm!420090 m!6577848))

(assert (=> bm!419896 d!1769884))

(declare-fun d!1769886 () Bool)

(assert (=> d!1769886 (= (isEmptyLang!1149 lt!2256603) ((_ is EmptyLang!15585) lt!2256603))))

(assert (=> b!5598170 d!1769886))

(assert (=> d!1769524 d!1769522))

(assert (=> d!1769524 d!1769520))

(declare-fun d!1769888 () Bool)

(assert (=> d!1769888 (= (matchR!7770 r!7292 s!2326) (matchRSpec!2688 r!7292 s!2326))))

(assert (=> d!1769888 true))

(declare-fun _$88!3889 () Unit!155772)

(assert (=> d!1769888 (= (choose!42460 r!7292 s!2326) _$88!3889)))

(declare-fun bs!1294552 () Bool)

(assert (= bs!1294552 d!1769888))

(assert (=> bs!1294552 m!6576530))

(assert (=> bs!1294552 m!6576528))

(assert (=> d!1769524 d!1769888))

(assert (=> d!1769524 d!1769484))

(assert (=> b!5598259 d!1769870))

(declare-fun bs!1294553 () Bool)

(declare-fun d!1769890 () Bool)

(assert (= bs!1294553 (and d!1769890 d!1769516)))

(declare-fun lambda!300682 () Int)

(assert (=> bs!1294553 (= lambda!300682 lambda!300619)))

(declare-fun bs!1294554 () Bool)

(assert (= bs!1294554 (and d!1769890 d!1769514)))

(assert (=> bs!1294554 (= lambda!300682 lambda!300616)))

(declare-fun bs!1294555 () Bool)

(assert (= bs!1294555 (and d!1769890 d!1769844)))

(assert (=> bs!1294555 (= lambda!300682 lambda!300677)))

(declare-fun bs!1294556 () Bool)

(assert (= bs!1294556 (and d!1769890 d!1769498)))

(assert (=> bs!1294556 (= lambda!300682 lambda!300613)))

(declare-fun bs!1294557 () Bool)

(assert (= bs!1294557 (and d!1769890 d!1769518)))

(assert (=> bs!1294557 (= lambda!300682 lambda!300620)))

(declare-fun bs!1294558 () Bool)

(assert (= bs!1294558 (and d!1769890 d!1769458)))

(assert (=> bs!1294558 (= lambda!300682 lambda!300601)))

(assert (=> d!1769890 (= (inv!82209 setElem!37339) (forall!14751 (exprs!5469 setElem!37339) lambda!300682))))

(declare-fun bs!1294559 () Bool)

(assert (= bs!1294559 d!1769890))

(declare-fun m!6577850 () Bool)

(assert (=> bs!1294559 m!6577850))

(assert (=> setNonEmpty!37339 d!1769890))

(declare-fun c!981773 () Bool)

(declare-fun bm!420092 () Bool)

(declare-fun c!981776 () Bool)

(declare-fun call!420097 () List!63054)

(assert (=> bm!420092 (= call!420097 ($colon$colon!1648 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256500)))) (ite (or c!981776 c!981773) (regTwo!31682 (h!69378 (exprs!5469 lt!2256500))) (h!69378 (exprs!5469 lt!2256500)))))))

(declare-fun b!5599113 () Bool)

(declare-fun e!3453839 () (InoxSet Context!9938))

(declare-fun e!3453835 () (InoxSet Context!9938))

(assert (=> b!5599113 (= e!3453839 e!3453835)))

(declare-fun c!981774 () Bool)

(assert (=> b!5599113 (= c!981774 ((_ is Union!15585) (h!69378 (exprs!5469 lt!2256500))))))

(declare-fun b!5599114 () Bool)

(declare-fun e!3453837 () (InoxSet Context!9938))

(assert (=> b!5599114 (= e!3453837 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599115 () Bool)

(assert (=> b!5599115 (= e!3453839 (store ((as const (Array Context!9938 Bool)) false) (Context!9939 (t!376338 (exprs!5469 lt!2256500))) true))))

(declare-fun b!5599116 () Bool)

(declare-fun e!3453834 () (InoxSet Context!9938))

(declare-fun call!420101 () (InoxSet Context!9938))

(declare-fun call!420099 () (InoxSet Context!9938))

(assert (=> b!5599116 (= e!3453834 ((_ map or) call!420101 call!420099))))

(declare-fun bm!420093 () Bool)

(declare-fun call!420098 () List!63054)

(assert (=> bm!420093 (= call!420098 call!420097)))

(declare-fun b!5599117 () Bool)

(declare-fun c!981772 () Bool)

(assert (=> b!5599117 (= c!981772 ((_ is Star!15585) (h!69378 (exprs!5469 lt!2256500))))))

(declare-fun e!3453838 () (InoxSet Context!9938))

(assert (=> b!5599117 (= e!3453838 e!3453837)))

(declare-fun bm!420094 () Bool)

(declare-fun call!420102 () (InoxSet Context!9938))

(assert (=> bm!420094 (= call!420099 call!420102)))

(declare-fun b!5599118 () Bool)

(declare-fun e!3453836 () Bool)

(assert (=> b!5599118 (= c!981776 e!3453836)))

(declare-fun res!2374847 () Bool)

(assert (=> b!5599118 (=> (not res!2374847) (not e!3453836))))

(assert (=> b!5599118 (= res!2374847 ((_ is Concat!24430) (h!69378 (exprs!5469 lt!2256500))))))

(assert (=> b!5599118 (= e!3453835 e!3453834)))

(declare-fun b!5599119 () Bool)

(declare-fun call!420100 () (InoxSet Context!9938))

(assert (=> b!5599119 (= e!3453838 call!420100)))

(declare-fun bm!420096 () Bool)

(assert (=> bm!420096 (= call!420100 call!420099)))

(declare-fun bm!420097 () Bool)

(assert (=> bm!420097 (= call!420101 (derivationStepZipperDown!927 (ite c!981774 (regOne!31683 (h!69378 (exprs!5469 lt!2256500))) (regOne!31682 (h!69378 (exprs!5469 lt!2256500)))) (ite c!981774 (Context!9939 (t!376338 (exprs!5469 lt!2256500))) (Context!9939 call!420097)) (h!69380 s!2326)))))

(declare-fun b!5599120 () Bool)

(assert (=> b!5599120 (= e!3453835 ((_ map or) call!420101 call!420102))))

(declare-fun b!5599121 () Bool)

(assert (=> b!5599121 (= e!3453836 (nullable!5617 (regOne!31682 (h!69378 (exprs!5469 lt!2256500)))))))

(declare-fun d!1769892 () Bool)

(declare-fun c!981775 () Bool)

(assert (=> d!1769892 (= c!981775 (and ((_ is ElementMatch!15585) (h!69378 (exprs!5469 lt!2256500))) (= (c!981334 (h!69378 (exprs!5469 lt!2256500))) (h!69380 s!2326))))))

(assert (=> d!1769892 (= (derivationStepZipperDown!927 (h!69378 (exprs!5469 lt!2256500)) (Context!9939 (t!376338 (exprs!5469 lt!2256500))) (h!69380 s!2326)) e!3453839)))

(declare-fun bm!420095 () Bool)

(assert (=> bm!420095 (= call!420102 (derivationStepZipperDown!927 (ite c!981774 (regTwo!31683 (h!69378 (exprs!5469 lt!2256500))) (ite c!981776 (regTwo!31682 (h!69378 (exprs!5469 lt!2256500))) (ite c!981773 (regOne!31682 (h!69378 (exprs!5469 lt!2256500))) (reg!15914 (h!69378 (exprs!5469 lt!2256500)))))) (ite (or c!981774 c!981776) (Context!9939 (t!376338 (exprs!5469 lt!2256500))) (Context!9939 call!420098)) (h!69380 s!2326)))))

(declare-fun b!5599122 () Bool)

(assert (=> b!5599122 (= e!3453837 call!420100)))

(declare-fun b!5599123 () Bool)

(assert (=> b!5599123 (= e!3453834 e!3453838)))

(assert (=> b!5599123 (= c!981773 ((_ is Concat!24430) (h!69378 (exprs!5469 lt!2256500))))))

(assert (= (and d!1769892 c!981775) b!5599115))

(assert (= (and d!1769892 (not c!981775)) b!5599113))

(assert (= (and b!5599113 c!981774) b!5599120))

(assert (= (and b!5599113 (not c!981774)) b!5599118))

(assert (= (and b!5599118 res!2374847) b!5599121))

(assert (= (and b!5599118 c!981776) b!5599116))

(assert (= (and b!5599118 (not c!981776)) b!5599123))

(assert (= (and b!5599123 c!981773) b!5599119))

(assert (= (and b!5599123 (not c!981773)) b!5599117))

(assert (= (and b!5599117 c!981772) b!5599122))

(assert (= (and b!5599117 (not c!981772)) b!5599114))

(assert (= (or b!5599119 b!5599122) bm!420093))

(assert (= (or b!5599119 b!5599122) bm!420096))

(assert (= (or b!5599116 bm!420093) bm!420092))

(assert (= (or b!5599116 bm!420096) bm!420094))

(assert (= (or b!5599120 bm!420094) bm!420095))

(assert (= (or b!5599120 b!5599116) bm!420097))

(declare-fun m!6577852 () Bool)

(assert (=> bm!420097 m!6577852))

(declare-fun m!6577854 () Bool)

(assert (=> bm!420092 m!6577854))

(declare-fun m!6577856 () Bool)

(assert (=> b!5599121 m!6577856))

(declare-fun m!6577858 () Bool)

(assert (=> b!5599115 m!6577858))

(declare-fun m!6577860 () Bool)

(assert (=> bm!420095 m!6577860))

(assert (=> bm!419863 d!1769892))

(assert (=> d!1769454 d!1769446))

(declare-fun d!1769894 () Bool)

(assert (=> d!1769894 (= (flatMap!1198 lt!2256501 lambda!300570) (dynLambda!24617 lambda!300570 lt!2256520))))

(assert (=> d!1769894 true))

(declare-fun _$13!2221 () Unit!155772)

(assert (=> d!1769894 (= (choose!42456 lt!2256501 lt!2256520 lambda!300570) _$13!2221)))

(declare-fun b_lambda!212173 () Bool)

(assert (=> (not b_lambda!212173) (not d!1769894)))

(declare-fun bs!1294560 () Bool)

(assert (= bs!1294560 d!1769894))

(assert (=> bs!1294560 m!6576548))

(assert (=> bs!1294560 m!6576912))

(assert (=> d!1769454 d!1769894))

(declare-fun d!1769896 () Bool)

(assert (=> d!1769896 (= (nullable!5617 r!7292) (nullableFct!1726 r!7292))))

(declare-fun bs!1294561 () Bool)

(assert (= bs!1294561 d!1769896))

(declare-fun m!6577862 () Bool)

(assert (=> bs!1294561 m!6577862))

(assert (=> b!5598266 d!1769896))

(assert (=> d!1769478 d!1769850))

(assert (=> bs!1294282 d!1769452))

(declare-fun d!1769898 () Bool)

(assert (=> d!1769898 (= (isEmpty!34758 s!2326) ((_ is Nil!62932) s!2326))))

(assert (=> bm!419911 d!1769898))

(declare-fun d!1769900 () Bool)

(assert (=> d!1769900 (= (isEmpty!34754 (t!376338 (unfocusZipperList!1013 zl!343))) ((_ is Nil!62930) (t!376338 (unfocusZipperList!1013 zl!343))))))

(assert (=> b!5598173 d!1769900))

(declare-fun d!1769902 () Bool)

(declare-fun c!981777 () Bool)

(assert (=> d!1769902 (= c!981777 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453840 () Bool)

(assert (=> d!1769902 (= (matchZipper!1723 (derivationStepZipper!1684 ((_ map or) lt!2256505 lt!2256516) (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453840)))

(declare-fun b!5599124 () Bool)

(assert (=> b!5599124 (= e!3453840 (nullableZipper!1580 (derivationStepZipper!1684 ((_ map or) lt!2256505 lt!2256516) (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599125 () Bool)

(assert (=> b!5599125 (= e!3453840 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 ((_ map or) lt!2256505 lt!2256516) (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1769902 c!981777) b!5599124))

(assert (= (and d!1769902 (not c!981777)) b!5599125))

(assert (=> d!1769902 m!6576868))

(declare-fun m!6577864 () Bool)

(assert (=> d!1769902 m!6577864))

(assert (=> b!5599124 m!6577120))

(declare-fun m!6577866 () Bool)

(assert (=> b!5599124 m!6577866))

(assert (=> b!5599125 m!6576868))

(declare-fun m!6577868 () Bool)

(assert (=> b!5599125 m!6577868))

(assert (=> b!5599125 m!6577120))

(assert (=> b!5599125 m!6577868))

(declare-fun m!6577870 () Bool)

(assert (=> b!5599125 m!6577870))

(assert (=> b!5599125 m!6576868))

(declare-fun m!6577872 () Bool)

(assert (=> b!5599125 m!6577872))

(assert (=> b!5599125 m!6577870))

(assert (=> b!5599125 m!6577872))

(declare-fun m!6577874 () Bool)

(assert (=> b!5599125 m!6577874))

(assert (=> b!5598272 d!1769902))

(declare-fun bs!1294562 () Bool)

(declare-fun d!1769904 () Bool)

(assert (= bs!1294562 (and d!1769904 b!5597513)))

(declare-fun lambda!300685 () Int)

(assert (=> bs!1294562 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300685 lambda!300570))))

(assert (=> d!1769904 true))

(assert (=> d!1769904 (= (derivationStepZipper!1684 ((_ map or) lt!2256505 lt!2256516) (head!11939 (t!376340 s!2326))) (flatMap!1198 ((_ map or) lt!2256505 lt!2256516) lambda!300685))))

(declare-fun bs!1294563 () Bool)

(assert (= bs!1294563 d!1769904))

(declare-fun m!6577876 () Bool)

(assert (=> bs!1294563 m!6577876))

(assert (=> b!5598272 d!1769904))

(declare-fun d!1769906 () Bool)

(assert (=> d!1769906 (= (head!11939 (t!376340 s!2326)) (h!69380 (t!376340 s!2326)))))

(assert (=> b!5598272 d!1769906))

(declare-fun d!1769908 () Bool)

(assert (=> d!1769908 (= (tail!11034 (t!376340 s!2326)) (t!376340 (t!376340 s!2326)))))

(assert (=> b!5598272 d!1769908))

(declare-fun d!1769910 () Bool)

(declare-fun res!2374852 () Bool)

(declare-fun e!3453845 () Bool)

(assert (=> d!1769910 (=> res!2374852 e!3453845)))

(assert (=> d!1769910 (= res!2374852 ((_ is Nil!62931) lt!2256616))))

(assert (=> d!1769910 (= (noDuplicate!1561 lt!2256616) e!3453845)))

(declare-fun b!5599132 () Bool)

(declare-fun e!3453846 () Bool)

(assert (=> b!5599132 (= e!3453845 e!3453846)))

(declare-fun res!2374853 () Bool)

(assert (=> b!5599132 (=> (not res!2374853) (not e!3453846))))

(declare-fun contains!19818 (List!63055 Context!9938) Bool)

(assert (=> b!5599132 (= res!2374853 (not (contains!19818 (t!376339 lt!2256616) (h!69379 lt!2256616))))))

(declare-fun b!5599133 () Bool)

(assert (=> b!5599133 (= e!3453846 (noDuplicate!1561 (t!376339 lt!2256616)))))

(assert (= (and d!1769910 (not res!2374852)) b!5599132))

(assert (= (and b!5599132 res!2374853) b!5599133))

(declare-fun m!6577878 () Bool)

(assert (=> b!5599132 m!6577878))

(declare-fun m!6577880 () Bool)

(assert (=> b!5599133 m!6577880))

(assert (=> d!1769530 d!1769910))

(declare-fun d!1769912 () Bool)

(declare-fun e!3453855 () Bool)

(assert (=> d!1769912 e!3453855))

(declare-fun res!2374858 () Bool)

(assert (=> d!1769912 (=> (not res!2374858) (not e!3453855))))

(declare-fun res!2374859 () List!63055)

(assert (=> d!1769912 (= res!2374858 (noDuplicate!1561 res!2374859))))

(declare-fun e!3453853 () Bool)

(assert (=> d!1769912 e!3453853))

(assert (=> d!1769912 (= (choose!42461 z!1189) res!2374859)))

(declare-fun b!5599141 () Bool)

(declare-fun e!3453854 () Bool)

(declare-fun tp!1548128 () Bool)

(assert (=> b!5599141 (= e!3453854 tp!1548128)))

(declare-fun b!5599140 () Bool)

(declare-fun tp!1548129 () Bool)

(assert (=> b!5599140 (= e!3453853 (and (inv!82209 (h!69379 res!2374859)) e!3453854 tp!1548129))))

(declare-fun b!5599142 () Bool)

(assert (=> b!5599142 (= e!3453855 (= (content!11364 res!2374859) z!1189))))

(assert (= b!5599140 b!5599141))

(assert (= (and d!1769912 ((_ is Cons!62931) res!2374859)) b!5599140))

(assert (= (and d!1769912 res!2374858) b!5599142))

(declare-fun m!6577882 () Bool)

(assert (=> d!1769912 m!6577882))

(declare-fun m!6577884 () Bool)

(assert (=> b!5599140 m!6577884))

(declare-fun m!6577886 () Bool)

(assert (=> b!5599142 m!6577886))

(assert (=> d!1769530 d!1769912))

(declare-fun d!1769914 () Bool)

(declare-fun c!981780 () Bool)

(assert (=> d!1769914 (= c!981780 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453856 () Bool)

(assert (=> d!1769914 (= (matchZipper!1723 (derivationStepZipper!1684 lt!2256521 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453856)))

(declare-fun b!5599143 () Bool)

(assert (=> b!5599143 (= e!3453856 (nullableZipper!1580 (derivationStepZipper!1684 lt!2256521 (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599144 () Bool)

(assert (=> b!5599144 (= e!3453856 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 lt!2256521 (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1769914 c!981780) b!5599143))

(assert (= (and d!1769914 (not c!981780)) b!5599144))

(assert (=> d!1769914 m!6576868))

(assert (=> d!1769914 m!6577864))

(assert (=> b!5599143 m!6576948))

(declare-fun m!6577888 () Bool)

(assert (=> b!5599143 m!6577888))

(assert (=> b!5599144 m!6576868))

(assert (=> b!5599144 m!6577868))

(assert (=> b!5599144 m!6576948))

(assert (=> b!5599144 m!6577868))

(declare-fun m!6577890 () Bool)

(assert (=> b!5599144 m!6577890))

(assert (=> b!5599144 m!6576868))

(assert (=> b!5599144 m!6577872))

(assert (=> b!5599144 m!6577890))

(assert (=> b!5599144 m!6577872))

(declare-fun m!6577892 () Bool)

(assert (=> b!5599144 m!6577892))

(assert (=> b!5598005 d!1769914))

(declare-fun bs!1294564 () Bool)

(declare-fun d!1769916 () Bool)

(assert (= bs!1294564 (and d!1769916 b!5597513)))

(declare-fun lambda!300686 () Int)

(assert (=> bs!1294564 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300686 lambda!300570))))

(declare-fun bs!1294565 () Bool)

(assert (= bs!1294565 (and d!1769916 d!1769904)))

(assert (=> bs!1294565 (= lambda!300686 lambda!300685)))

(assert (=> d!1769916 true))

(assert (=> d!1769916 (= (derivationStepZipper!1684 lt!2256521 (head!11939 (t!376340 s!2326))) (flatMap!1198 lt!2256521 lambda!300686))))

(declare-fun bs!1294566 () Bool)

(assert (= bs!1294566 d!1769916))

(declare-fun m!6577894 () Bool)

(assert (=> bs!1294566 m!6577894))

(assert (=> b!5598005 d!1769916))

(assert (=> b!5598005 d!1769906))

(assert (=> b!5598005 d!1769908))

(assert (=> b!5597991 d!1769474))

(declare-fun d!1769918 () Bool)

(declare-fun c!981781 () Bool)

(assert (=> d!1769918 (= c!981781 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453857 () Bool)

(assert (=> d!1769918 (= (matchZipper!1723 (derivationStepZipper!1684 lt!2256522 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453857)))

(declare-fun b!5599145 () Bool)

(assert (=> b!5599145 (= e!3453857 (nullableZipper!1580 (derivationStepZipper!1684 lt!2256522 (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599146 () Bool)

(assert (=> b!5599146 (= e!3453857 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 lt!2256522 (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1769918 c!981781) b!5599145))

(assert (= (and d!1769918 (not c!981781)) b!5599146))

(assert (=> d!1769918 m!6576868))

(assert (=> d!1769918 m!6577864))

(assert (=> b!5599145 m!6576984))

(declare-fun m!6577896 () Bool)

(assert (=> b!5599145 m!6577896))

(assert (=> b!5599146 m!6576868))

(assert (=> b!5599146 m!6577868))

(assert (=> b!5599146 m!6576984))

(assert (=> b!5599146 m!6577868))

(declare-fun m!6577898 () Bool)

(assert (=> b!5599146 m!6577898))

(assert (=> b!5599146 m!6576868))

(assert (=> b!5599146 m!6577872))

(assert (=> b!5599146 m!6577898))

(assert (=> b!5599146 m!6577872))

(declare-fun m!6577900 () Bool)

(assert (=> b!5599146 m!6577900))

(assert (=> b!5598055 d!1769918))

(declare-fun bs!1294567 () Bool)

(declare-fun d!1769920 () Bool)

(assert (= bs!1294567 (and d!1769920 b!5597513)))

(declare-fun lambda!300687 () Int)

(assert (=> bs!1294567 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300687 lambda!300570))))

(declare-fun bs!1294568 () Bool)

(assert (= bs!1294568 (and d!1769920 d!1769904)))

(assert (=> bs!1294568 (= lambda!300687 lambda!300685)))

(declare-fun bs!1294569 () Bool)

(assert (= bs!1294569 (and d!1769920 d!1769916)))

(assert (=> bs!1294569 (= lambda!300687 lambda!300686)))

(assert (=> d!1769920 true))

(assert (=> d!1769920 (= (derivationStepZipper!1684 lt!2256522 (head!11939 (t!376340 s!2326))) (flatMap!1198 lt!2256522 lambda!300687))))

(declare-fun bs!1294570 () Bool)

(assert (= bs!1294570 d!1769920))

(declare-fun m!6577902 () Bool)

(assert (=> bs!1294570 m!6577902))

(assert (=> b!5598055 d!1769920))

(assert (=> b!5598055 d!1769906))

(assert (=> b!5598055 d!1769908))

(assert (=> d!1769522 d!1769898))

(assert (=> d!1769522 d!1769484))

(declare-fun d!1769922 () Bool)

(assert (=> d!1769922 (= (Exists!2685 (ite c!981547 lambda!300625 lambda!300626)) (choose!42457 (ite c!981547 lambda!300625 lambda!300626)))))

(declare-fun bs!1294571 () Bool)

(assert (= bs!1294571 d!1769922))

(declare-fun m!6577904 () Bool)

(assert (=> bs!1294571 m!6577904))

(assert (=> bm!419912 d!1769922))

(declare-fun b!5599147 () Bool)

(declare-fun e!3453858 () Bool)

(declare-fun lt!2256647 () Bool)

(assert (=> b!5599147 (= e!3453858 (not lt!2256647))))

(declare-fun b!5599148 () Bool)

(declare-fun e!3453862 () Bool)

(assert (=> b!5599148 (= e!3453862 (= (head!11939 (_2!35985 (get!21674 lt!2256591))) (c!981334 (regTwo!31682 r!7292))))))

(declare-fun b!5599150 () Bool)

(declare-fun e!3453861 () Bool)

(assert (=> b!5599150 (= e!3453861 (not (= (head!11939 (_2!35985 (get!21674 lt!2256591))) (c!981334 (regTwo!31682 r!7292)))))))

(declare-fun b!5599151 () Bool)

(declare-fun res!2374862 () Bool)

(declare-fun e!3453863 () Bool)

(assert (=> b!5599151 (=> res!2374862 e!3453863)))

(assert (=> b!5599151 (= res!2374862 e!3453862)))

(declare-fun res!2374865 () Bool)

(assert (=> b!5599151 (=> (not res!2374865) (not e!3453862))))

(assert (=> b!5599151 (= res!2374865 lt!2256647)))

(declare-fun b!5599152 () Bool)

(declare-fun e!3453860 () Bool)

(assert (=> b!5599152 (= e!3453860 e!3453861)))

(declare-fun res!2374860 () Bool)

(assert (=> b!5599152 (=> res!2374860 e!3453861)))

(declare-fun call!420103 () Bool)

(assert (=> b!5599152 (= res!2374860 call!420103)))

(declare-fun b!5599153 () Bool)

(assert (=> b!5599153 (= e!3453863 e!3453860)))

(declare-fun res!2374863 () Bool)

(assert (=> b!5599153 (=> (not res!2374863) (not e!3453860))))

(assert (=> b!5599153 (= res!2374863 (not lt!2256647))))

(declare-fun b!5599154 () Bool)

(declare-fun e!3453864 () Bool)

(assert (=> b!5599154 (= e!3453864 (= lt!2256647 call!420103))))

(declare-fun b!5599155 () Bool)

(declare-fun res!2374861 () Bool)

(assert (=> b!5599155 (=> res!2374861 e!3453863)))

(assert (=> b!5599155 (= res!2374861 (not ((_ is ElementMatch!15585) (regTwo!31682 r!7292))))))

(assert (=> b!5599155 (= e!3453858 e!3453863)))

(declare-fun b!5599156 () Bool)

(declare-fun res!2374864 () Bool)

(assert (=> b!5599156 (=> (not res!2374864) (not e!3453862))))

(assert (=> b!5599156 (= res!2374864 (not call!420103))))

(declare-fun b!5599157 () Bool)

(declare-fun e!3453859 () Bool)

(assert (=> b!5599157 (= e!3453859 (nullable!5617 (regTwo!31682 r!7292)))))

(declare-fun b!5599158 () Bool)

(assert (=> b!5599158 (= e!3453859 (matchR!7770 (derivativeStep!4433 (regTwo!31682 r!7292) (head!11939 (_2!35985 (get!21674 lt!2256591)))) (tail!11034 (_2!35985 (get!21674 lt!2256591)))))))

(declare-fun bm!420098 () Bool)

(assert (=> bm!420098 (= call!420103 (isEmpty!34758 (_2!35985 (get!21674 lt!2256591))))))

(declare-fun d!1769924 () Bool)

(assert (=> d!1769924 e!3453864))

(declare-fun c!981783 () Bool)

(assert (=> d!1769924 (= c!981783 ((_ is EmptyExpr!15585) (regTwo!31682 r!7292)))))

(assert (=> d!1769924 (= lt!2256647 e!3453859)))

(declare-fun c!981782 () Bool)

(assert (=> d!1769924 (= c!981782 (isEmpty!34758 (_2!35985 (get!21674 lt!2256591))))))

(assert (=> d!1769924 (validRegex!7321 (regTwo!31682 r!7292))))

(assert (=> d!1769924 (= (matchR!7770 (regTwo!31682 r!7292) (_2!35985 (get!21674 lt!2256591))) lt!2256647)))

(declare-fun b!5599149 () Bool)

(declare-fun res!2374866 () Bool)

(assert (=> b!5599149 (=> (not res!2374866) (not e!3453862))))

(assert (=> b!5599149 (= res!2374866 (isEmpty!34758 (tail!11034 (_2!35985 (get!21674 lt!2256591)))))))

(declare-fun b!5599159 () Bool)

(declare-fun res!2374867 () Bool)

(assert (=> b!5599159 (=> res!2374867 e!3453861)))

(assert (=> b!5599159 (= res!2374867 (not (isEmpty!34758 (tail!11034 (_2!35985 (get!21674 lt!2256591))))))))

(declare-fun b!5599160 () Bool)

(assert (=> b!5599160 (= e!3453864 e!3453858)))

(declare-fun c!981784 () Bool)

(assert (=> b!5599160 (= c!981784 ((_ is EmptyLang!15585) (regTwo!31682 r!7292)))))

(assert (= (and d!1769924 c!981782) b!5599157))

(assert (= (and d!1769924 (not c!981782)) b!5599158))

(assert (= (and d!1769924 c!981783) b!5599154))

(assert (= (and d!1769924 (not c!981783)) b!5599160))

(assert (= (and b!5599160 c!981784) b!5599147))

(assert (= (and b!5599160 (not c!981784)) b!5599155))

(assert (= (and b!5599155 (not res!2374861)) b!5599151))

(assert (= (and b!5599151 res!2374865) b!5599156))

(assert (= (and b!5599156 res!2374864) b!5599149))

(assert (= (and b!5599149 res!2374866) b!5599148))

(assert (= (and b!5599151 (not res!2374862)) b!5599153))

(assert (= (and b!5599153 res!2374863) b!5599152))

(assert (= (and b!5599152 (not res!2374860)) b!5599159))

(assert (= (and b!5599159 (not res!2374867)) b!5599150))

(assert (= (or b!5599154 b!5599152 b!5599156) bm!420098))

(declare-fun m!6577906 () Bool)

(assert (=> b!5599157 m!6577906))

(declare-fun m!6577908 () Bool)

(assert (=> b!5599149 m!6577908))

(assert (=> b!5599149 m!6577908))

(declare-fun m!6577910 () Bool)

(assert (=> b!5599149 m!6577910))

(declare-fun m!6577912 () Bool)

(assert (=> d!1769924 m!6577912))

(declare-fun m!6577914 () Bool)

(assert (=> d!1769924 m!6577914))

(assert (=> b!5599159 m!6577908))

(assert (=> b!5599159 m!6577908))

(assert (=> b!5599159 m!6577910))

(declare-fun m!6577916 () Bool)

(assert (=> b!5599148 m!6577916))

(assert (=> b!5599158 m!6577916))

(assert (=> b!5599158 m!6577916))

(declare-fun m!6577918 () Bool)

(assert (=> b!5599158 m!6577918))

(assert (=> b!5599158 m!6577908))

(assert (=> b!5599158 m!6577918))

(assert (=> b!5599158 m!6577908))

(declare-fun m!6577920 () Bool)

(assert (=> b!5599158 m!6577920))

(assert (=> b!5599150 m!6577916))

(assert (=> bm!420098 m!6577912))

(assert (=> b!5598103 d!1769924))

(assert (=> b!5598103 d!1769856))

(declare-fun d!1769926 () Bool)

(assert (=> d!1769926 (= (isEmpty!34754 (tail!11035 (unfocusZipperList!1013 zl!343))) ((_ is Nil!62930) (tail!11035 (unfocusZipperList!1013 zl!343))))))

(assert (=> b!5598177 d!1769926))

(declare-fun d!1769928 () Bool)

(assert (=> d!1769928 (= (tail!11035 (unfocusZipperList!1013 zl!343)) (t!376338 (unfocusZipperList!1013 zl!343)))))

(assert (=> b!5598177 d!1769928))

(assert (=> d!1769466 d!1769850))

(declare-fun b!5599161 () Bool)

(declare-fun e!3453870 () Bool)

(declare-fun call!420106 () Bool)

(assert (=> b!5599161 (= e!3453870 call!420106)))

(declare-fun d!1769930 () Bool)

(declare-fun res!2374869 () Bool)

(declare-fun e!3453871 () Bool)

(assert (=> d!1769930 (=> res!2374869 e!3453871)))

(assert (=> d!1769930 (= res!2374869 ((_ is ElementMatch!15585) lt!2256582))))

(assert (=> d!1769930 (= (validRegex!7321 lt!2256582) e!3453871)))

(declare-fun b!5599162 () Bool)

(declare-fun res!2374870 () Bool)

(declare-fun e!3453866 () Bool)

(assert (=> b!5599162 (=> (not res!2374870) (not e!3453866))))

(declare-fun call!420104 () Bool)

(assert (=> b!5599162 (= res!2374870 call!420104)))

(declare-fun e!3453868 () Bool)

(assert (=> b!5599162 (= e!3453868 e!3453866)))

(declare-fun b!5599163 () Bool)

(declare-fun res!2374868 () Bool)

(declare-fun e!3453865 () Bool)

(assert (=> b!5599163 (=> res!2374868 e!3453865)))

(assert (=> b!5599163 (= res!2374868 (not ((_ is Concat!24430) lt!2256582)))))

(assert (=> b!5599163 (= e!3453868 e!3453865)))

(declare-fun b!5599164 () Bool)

(declare-fun e!3453869 () Bool)

(assert (=> b!5599164 (= e!3453871 e!3453869)))

(declare-fun c!981786 () Bool)

(assert (=> b!5599164 (= c!981786 ((_ is Star!15585) lt!2256582))))

(declare-fun b!5599165 () Bool)

(declare-fun e!3453867 () Bool)

(declare-fun call!420105 () Bool)

(assert (=> b!5599165 (= e!3453867 call!420105)))

(declare-fun b!5599166 () Bool)

(assert (=> b!5599166 (= e!3453869 e!3453867)))

(declare-fun res!2374871 () Bool)

(assert (=> b!5599166 (= res!2374871 (not (nullable!5617 (reg!15914 lt!2256582))))))

(assert (=> b!5599166 (=> (not res!2374871) (not e!3453867))))

(declare-fun bm!420099 () Bool)

(declare-fun c!981785 () Bool)

(assert (=> bm!420099 (= call!420105 (validRegex!7321 (ite c!981786 (reg!15914 lt!2256582) (ite c!981785 (regTwo!31683 lt!2256582) (regTwo!31682 lt!2256582)))))))

(declare-fun b!5599167 () Bool)

(assert (=> b!5599167 (= e!3453866 call!420106)))

(declare-fun b!5599168 () Bool)

(assert (=> b!5599168 (= e!3453865 e!3453870)))

(declare-fun res!2374872 () Bool)

(assert (=> b!5599168 (=> (not res!2374872) (not e!3453870))))

(assert (=> b!5599168 (= res!2374872 call!420104)))

(declare-fun bm!420100 () Bool)

(assert (=> bm!420100 (= call!420104 (validRegex!7321 (ite c!981785 (regOne!31683 lt!2256582) (regOne!31682 lt!2256582))))))

(declare-fun b!5599169 () Bool)

(assert (=> b!5599169 (= e!3453869 e!3453868)))

(assert (=> b!5599169 (= c!981785 ((_ is Union!15585) lt!2256582))))

(declare-fun bm!420101 () Bool)

(assert (=> bm!420101 (= call!420106 call!420105)))

(assert (= (and d!1769930 (not res!2374869)) b!5599164))

(assert (= (and b!5599164 c!981786) b!5599166))

(assert (= (and b!5599164 (not c!981786)) b!5599169))

(assert (= (and b!5599166 res!2374871) b!5599165))

(assert (= (and b!5599169 c!981785) b!5599162))

(assert (= (and b!5599169 (not c!981785)) b!5599163))

(assert (= (and b!5599162 res!2374870) b!5599167))

(assert (= (and b!5599163 (not res!2374868)) b!5599168))

(assert (= (and b!5599168 res!2374872) b!5599161))

(assert (= (or b!5599167 b!5599161) bm!420101))

(assert (= (or b!5599162 b!5599168) bm!420100))

(assert (= (or b!5599165 bm!420101) bm!420099))

(declare-fun m!6577922 () Bool)

(assert (=> b!5599166 m!6577922))

(declare-fun m!6577924 () Bool)

(assert (=> bm!420099 m!6577924))

(declare-fun m!6577926 () Bool)

(assert (=> bm!420100 m!6577926))

(assert (=> d!1769460 d!1769930))

(assert (=> d!1769460 d!1769514))

(assert (=> d!1769460 d!1769516))

(assert (=> b!5598270 d!1769462))

(assert (=> d!1769476 d!1769850))

(declare-fun d!1769932 () Bool)

(assert (=> d!1769932 (= (head!11940 (exprs!5469 (h!69379 zl!343))) (h!69378 (exprs!5469 (h!69379 zl!343))))))

(assert (=> b!5597996 d!1769932))

(declare-fun d!1769934 () Bool)

(declare-fun c!981787 () Bool)

(assert (=> d!1769934 (= c!981787 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453872 () Bool)

(assert (=> d!1769934 (= (matchZipper!1723 (derivationStepZipper!1684 ((_ map or) lt!2256522 lt!2256516) (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453872)))

(declare-fun b!5599170 () Bool)

(assert (=> b!5599170 (= e!3453872 (nullableZipper!1580 (derivationStepZipper!1684 ((_ map or) lt!2256522 lt!2256516) (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599171 () Bool)

(assert (=> b!5599171 (= e!3453872 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 ((_ map or) lt!2256522 lt!2256516) (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1769934 c!981787) b!5599170))

(assert (= (and d!1769934 (not c!981787)) b!5599171))

(assert (=> d!1769934 m!6576868))

(assert (=> d!1769934 m!6577864))

(assert (=> b!5599170 m!6576866))

(declare-fun m!6577928 () Bool)

(assert (=> b!5599170 m!6577928))

(assert (=> b!5599171 m!6576868))

(assert (=> b!5599171 m!6577868))

(assert (=> b!5599171 m!6576866))

(assert (=> b!5599171 m!6577868))

(declare-fun m!6577930 () Bool)

(assert (=> b!5599171 m!6577930))

(assert (=> b!5599171 m!6576868))

(assert (=> b!5599171 m!6577872))

(assert (=> b!5599171 m!6577930))

(assert (=> b!5599171 m!6577872))

(declare-fun m!6577932 () Bool)

(assert (=> b!5599171 m!6577932))

(assert (=> b!5597944 d!1769934))

(declare-fun bs!1294572 () Bool)

(declare-fun d!1769936 () Bool)

(assert (= bs!1294572 (and d!1769936 b!5597513)))

(declare-fun lambda!300688 () Int)

(assert (=> bs!1294572 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300688 lambda!300570))))

(declare-fun bs!1294573 () Bool)

(assert (= bs!1294573 (and d!1769936 d!1769904)))

(assert (=> bs!1294573 (= lambda!300688 lambda!300685)))

(declare-fun bs!1294574 () Bool)

(assert (= bs!1294574 (and d!1769936 d!1769916)))

(assert (=> bs!1294574 (= lambda!300688 lambda!300686)))

(declare-fun bs!1294575 () Bool)

(assert (= bs!1294575 (and d!1769936 d!1769920)))

(assert (=> bs!1294575 (= lambda!300688 lambda!300687)))

(assert (=> d!1769936 true))

(assert (=> d!1769936 (= (derivationStepZipper!1684 ((_ map or) lt!2256522 lt!2256516) (head!11939 (t!376340 s!2326))) (flatMap!1198 ((_ map or) lt!2256522 lt!2256516) lambda!300688))))

(declare-fun bs!1294576 () Bool)

(assert (= bs!1294576 d!1769936))

(declare-fun m!6577934 () Bool)

(assert (=> bs!1294576 m!6577934))

(assert (=> b!5597944 d!1769936))

(assert (=> b!5597944 d!1769906))

(assert (=> b!5597944 d!1769908))

(declare-fun b!5599175 () Bool)

(declare-fun e!3453873 () Bool)

(declare-fun lt!2256648 () List!63056)

(assert (=> b!5599175 (= e!3453873 (or (not (= (t!376340 s!2326) Nil!62932)) (= lt!2256648 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)))))))

(declare-fun b!5599174 () Bool)

(declare-fun res!2374873 () Bool)

(assert (=> b!5599174 (=> (not res!2374873) (not e!3453873))))

(assert (=> b!5599174 (= res!2374873 (= (size!39971 lt!2256648) (+ (size!39971 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932))) (size!39971 (t!376340 s!2326)))))))

(declare-fun d!1769938 () Bool)

(assert (=> d!1769938 e!3453873))

(declare-fun res!2374874 () Bool)

(assert (=> d!1769938 (=> (not res!2374874) (not e!3453873))))

(assert (=> d!1769938 (= res!2374874 (= (content!11366 lt!2256648) ((_ map or) (content!11366 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932))) (content!11366 (t!376340 s!2326)))))))

(declare-fun e!3453874 () List!63056)

(assert (=> d!1769938 (= lt!2256648 e!3453874)))

(declare-fun c!981788 () Bool)

(assert (=> d!1769938 (= c!981788 ((_ is Nil!62932) (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932))))))

(assert (=> d!1769938 (= (++!13814 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (t!376340 s!2326)) lt!2256648)))

(declare-fun b!5599172 () Bool)

(assert (=> b!5599172 (= e!3453874 (t!376340 s!2326))))

(declare-fun b!5599173 () Bool)

(assert (=> b!5599173 (= e!3453874 (Cons!62932 (h!69380 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932))) (++!13814 (t!376340 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932))) (t!376340 s!2326))))))

(assert (= (and d!1769938 c!981788) b!5599172))

(assert (= (and d!1769938 (not c!981788)) b!5599173))

(assert (= (and d!1769938 res!2374874) b!5599174))

(assert (= (and b!5599174 res!2374873) b!5599175))

(declare-fun m!6577936 () Bool)

(assert (=> b!5599174 m!6577936))

(assert (=> b!5599174 m!6577012))

(declare-fun m!6577938 () Bool)

(assert (=> b!5599174 m!6577938))

(declare-fun m!6577940 () Bool)

(assert (=> b!5599174 m!6577940))

(declare-fun m!6577942 () Bool)

(assert (=> d!1769938 m!6577942))

(assert (=> d!1769938 m!6577012))

(declare-fun m!6577944 () Bool)

(assert (=> d!1769938 m!6577944))

(declare-fun m!6577946 () Bool)

(assert (=> d!1769938 m!6577946))

(declare-fun m!6577948 () Bool)

(assert (=> b!5599173 m!6577948))

(assert (=> b!5598108 d!1769938))

(declare-fun b!5599179 () Bool)

(declare-fun e!3453875 () Bool)

(declare-fun lt!2256649 () List!63056)

(assert (=> b!5599179 (= e!3453875 (or (not (= (Cons!62932 (h!69380 s!2326) Nil!62932) Nil!62932)) (= lt!2256649 Nil!62932)))))

(declare-fun b!5599178 () Bool)

(declare-fun res!2374875 () Bool)

(assert (=> b!5599178 (=> (not res!2374875) (not e!3453875))))

(assert (=> b!5599178 (= res!2374875 (= (size!39971 lt!2256649) (+ (size!39971 Nil!62932) (size!39971 (Cons!62932 (h!69380 s!2326) Nil!62932)))))))

(declare-fun d!1769940 () Bool)

(assert (=> d!1769940 e!3453875))

(declare-fun res!2374876 () Bool)

(assert (=> d!1769940 (=> (not res!2374876) (not e!3453875))))

(assert (=> d!1769940 (= res!2374876 (= (content!11366 lt!2256649) ((_ map or) (content!11366 Nil!62932) (content!11366 (Cons!62932 (h!69380 s!2326) Nil!62932)))))))

(declare-fun e!3453876 () List!63056)

(assert (=> d!1769940 (= lt!2256649 e!3453876)))

(declare-fun c!981789 () Bool)

(assert (=> d!1769940 (= c!981789 ((_ is Nil!62932) Nil!62932))))

(assert (=> d!1769940 (= (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) lt!2256649)))

(declare-fun b!5599176 () Bool)

(assert (=> b!5599176 (= e!3453876 (Cons!62932 (h!69380 s!2326) Nil!62932))))

(declare-fun b!5599177 () Bool)

(assert (=> b!5599177 (= e!3453876 (Cons!62932 (h!69380 Nil!62932) (++!13814 (t!376340 Nil!62932) (Cons!62932 (h!69380 s!2326) Nil!62932))))))

(assert (= (and d!1769940 c!981789) b!5599176))

(assert (= (and d!1769940 (not c!981789)) b!5599177))

(assert (= (and d!1769940 res!2374876) b!5599178))

(assert (= (and b!5599178 res!2374875) b!5599179))

(declare-fun m!6577950 () Bool)

(assert (=> b!5599178 m!6577950))

(declare-fun m!6577952 () Bool)

(assert (=> b!5599178 m!6577952))

(declare-fun m!6577954 () Bool)

(assert (=> b!5599178 m!6577954))

(declare-fun m!6577956 () Bool)

(assert (=> d!1769940 m!6577956))

(declare-fun m!6577958 () Bool)

(assert (=> d!1769940 m!6577958))

(declare-fun m!6577960 () Bool)

(assert (=> d!1769940 m!6577960))

(declare-fun m!6577962 () Bool)

(assert (=> b!5599177 m!6577962))

(assert (=> b!5598108 d!1769940))

(declare-fun d!1769942 () Bool)

(assert (=> d!1769942 (= (++!13814 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (t!376340 s!2326)) s!2326)))

(declare-fun lt!2256652 () Unit!155772)

(declare-fun choose!42463 (List!63056 C!31440 List!63056 List!63056) Unit!155772)

(assert (=> d!1769942 (= lt!2256652 (choose!42463 Nil!62932 (h!69380 s!2326) (t!376340 s!2326) s!2326))))

(assert (=> d!1769942 (= (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) (t!376340 s!2326))) s!2326)))

(assert (=> d!1769942 (= (lemmaMoveElementToOtherListKeepsConcatEq!1983 Nil!62932 (h!69380 s!2326) (t!376340 s!2326) s!2326) lt!2256652)))

(declare-fun bs!1294577 () Bool)

(assert (= bs!1294577 d!1769942))

(assert (=> bs!1294577 m!6577012))

(assert (=> bs!1294577 m!6577012))

(assert (=> bs!1294577 m!6577014))

(declare-fun m!6577964 () Bool)

(assert (=> bs!1294577 m!6577964))

(declare-fun m!6577966 () Bool)

(assert (=> bs!1294577 m!6577966))

(assert (=> b!5598108 d!1769942))

(declare-fun b!5599180 () Bool)

(declare-fun res!2374880 () Bool)

(declare-fun e!3453881 () Bool)

(assert (=> b!5599180 (=> (not res!2374880) (not e!3453881))))

(declare-fun lt!2256653 () Option!15594)

(assert (=> b!5599180 (= res!2374880 (matchR!7770 (regOne!31682 r!7292) (_1!35985 (get!21674 lt!2256653))))))

(declare-fun b!5599181 () Bool)

(declare-fun res!2374881 () Bool)

(assert (=> b!5599181 (=> (not res!2374881) (not e!3453881))))

(assert (=> b!5599181 (= res!2374881 (matchR!7770 (regTwo!31682 r!7292) (_2!35985 (get!21674 lt!2256653))))))

(declare-fun b!5599182 () Bool)

(assert (=> b!5599182 (= e!3453881 (= (++!13814 (_1!35985 (get!21674 lt!2256653)) (_2!35985 (get!21674 lt!2256653))) s!2326))))

(declare-fun b!5599183 () Bool)

(declare-fun e!3453879 () Bool)

(assert (=> b!5599183 (= e!3453879 (matchR!7770 (regTwo!31682 r!7292) (t!376340 s!2326)))))

(declare-fun b!5599184 () Bool)

(declare-fun e!3453878 () Bool)

(assert (=> b!5599184 (= e!3453878 (not (isDefined!12297 lt!2256653)))))

(declare-fun b!5599185 () Bool)

(declare-fun e!3453877 () Option!15594)

(assert (=> b!5599185 (= e!3453877 (Some!15593 (tuple2!65365 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (t!376340 s!2326))))))

(declare-fun b!5599186 () Bool)

(declare-fun lt!2256655 () Unit!155772)

(declare-fun lt!2256654 () Unit!155772)

(assert (=> b!5599186 (= lt!2256655 lt!2256654)))

(assert (=> b!5599186 (= (++!13814 (++!13814 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (Cons!62932 (h!69380 (t!376340 s!2326)) Nil!62932)) (t!376340 (t!376340 s!2326))) s!2326)))

(assert (=> b!5599186 (= lt!2256654 (lemmaMoveElementToOtherListKeepsConcatEq!1983 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (h!69380 (t!376340 s!2326)) (t!376340 (t!376340 s!2326)) s!2326))))

(declare-fun e!3453880 () Option!15594)

(assert (=> b!5599186 (= e!3453880 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) (++!13814 (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (Cons!62932 (h!69380 (t!376340 s!2326)) Nil!62932)) (t!376340 (t!376340 s!2326)) s!2326))))

(declare-fun b!5599188 () Bool)

(assert (=> b!5599188 (= e!3453880 None!15593)))

(declare-fun b!5599187 () Bool)

(assert (=> b!5599187 (= e!3453877 e!3453880)))

(declare-fun c!981791 () Bool)

(assert (=> b!5599187 (= c!981791 ((_ is Nil!62932) (t!376340 s!2326)))))

(declare-fun d!1769944 () Bool)

(assert (=> d!1769944 e!3453878))

(declare-fun res!2374878 () Bool)

(assert (=> d!1769944 (=> res!2374878 e!3453878)))

(assert (=> d!1769944 (= res!2374878 e!3453881)))

(declare-fun res!2374877 () Bool)

(assert (=> d!1769944 (=> (not res!2374877) (not e!3453881))))

(assert (=> d!1769944 (= res!2374877 (isDefined!12297 lt!2256653))))

(assert (=> d!1769944 (= lt!2256653 e!3453877)))

(declare-fun c!981790 () Bool)

(assert (=> d!1769944 (= c!981790 e!3453879)))

(declare-fun res!2374879 () Bool)

(assert (=> d!1769944 (=> (not res!2374879) (not e!3453879))))

(assert (=> d!1769944 (= res!2374879 (matchR!7770 (regOne!31682 r!7292) (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932))))))

(assert (=> d!1769944 (validRegex!7321 (regOne!31682 r!7292))))

(assert (=> d!1769944 (= (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) (++!13814 Nil!62932 (Cons!62932 (h!69380 s!2326) Nil!62932)) (t!376340 s!2326) s!2326) lt!2256653)))

(assert (= (and d!1769944 res!2374879) b!5599183))

(assert (= (and d!1769944 c!981790) b!5599185))

(assert (= (and d!1769944 (not c!981790)) b!5599187))

(assert (= (and b!5599187 c!981791) b!5599188))

(assert (= (and b!5599187 (not c!981791)) b!5599186))

(assert (= (and d!1769944 res!2374877) b!5599180))

(assert (= (and b!5599180 res!2374880) b!5599181))

(assert (= (and b!5599181 res!2374881) b!5599182))

(assert (= (and d!1769944 (not res!2374878)) b!5599184))

(declare-fun m!6577968 () Bool)

(assert (=> b!5599184 m!6577968))

(declare-fun m!6577970 () Bool)

(assert (=> b!5599182 m!6577970))

(declare-fun m!6577972 () Bool)

(assert (=> b!5599182 m!6577972))

(assert (=> b!5599181 m!6577970))

(declare-fun m!6577974 () Bool)

(assert (=> b!5599181 m!6577974))

(declare-fun m!6577976 () Bool)

(assert (=> b!5599183 m!6577976))

(assert (=> d!1769944 m!6577968))

(assert (=> d!1769944 m!6577012))

(declare-fun m!6577978 () Bool)

(assert (=> d!1769944 m!6577978))

(assert (=> d!1769944 m!6577010))

(assert (=> b!5599186 m!6577012))

(declare-fun m!6577980 () Bool)

(assert (=> b!5599186 m!6577980))

(assert (=> b!5599186 m!6577980))

(declare-fun m!6577982 () Bool)

(assert (=> b!5599186 m!6577982))

(assert (=> b!5599186 m!6577012))

(declare-fun m!6577984 () Bool)

(assert (=> b!5599186 m!6577984))

(assert (=> b!5599186 m!6577980))

(declare-fun m!6577986 () Bool)

(assert (=> b!5599186 m!6577986))

(assert (=> b!5599180 m!6577970))

(declare-fun m!6577988 () Bool)

(assert (=> b!5599180 m!6577988))

(assert (=> b!5598108 d!1769944))

(declare-fun d!1769946 () Bool)

(declare-fun res!2374882 () Bool)

(declare-fun e!3453882 () Bool)

(assert (=> d!1769946 (=> res!2374882 e!3453882)))

(assert (=> d!1769946 (= res!2374882 ((_ is Nil!62930) lt!2256606))))

(assert (=> d!1769946 (= (forall!14751 lt!2256606 lambda!300619) e!3453882)))

(declare-fun b!5599189 () Bool)

(declare-fun e!3453883 () Bool)

(assert (=> b!5599189 (= e!3453882 e!3453883)))

(declare-fun res!2374883 () Bool)

(assert (=> b!5599189 (=> (not res!2374883) (not e!3453883))))

(assert (=> b!5599189 (= res!2374883 (dynLambda!24619 lambda!300619 (h!69378 lt!2256606)))))

(declare-fun b!5599190 () Bool)

(assert (=> b!5599190 (= e!3453883 (forall!14751 (t!376338 lt!2256606) lambda!300619))))

(assert (= (and d!1769946 (not res!2374882)) b!5599189))

(assert (= (and b!5599189 res!2374883) b!5599190))

(declare-fun b_lambda!212175 () Bool)

(assert (=> (not b_lambda!212175) (not b!5599189)))

(declare-fun m!6577990 () Bool)

(assert (=> b!5599189 m!6577990))

(declare-fun m!6577992 () Bool)

(assert (=> b!5599190 m!6577992))

(assert (=> d!1769516 d!1769946))

(declare-fun bs!1294578 () Bool)

(declare-fun b!5599196 () Bool)

(assert (= bs!1294578 (and b!5599196 d!1769834)))

(declare-fun lambda!300689 () Int)

(assert (=> bs!1294578 (not (= lambda!300689 lambda!300676))))

(declare-fun bs!1294579 () Bool)

(assert (= bs!1294579 (and b!5599196 b!5597514)))

(assert (=> bs!1294579 (not (= lambda!300689 lambda!300569))))

(declare-fun bs!1294580 () Bool)

(assert (= bs!1294580 (and b!5599196 d!1769492)))

(assert (=> bs!1294580 (not (= lambda!300689 lambda!300604))))

(declare-fun bs!1294581 () Bool)

(assert (= bs!1294581 (and b!5599196 d!1769494)))

(assert (=> bs!1294581 (not (= lambda!300689 lambda!300609))))

(declare-fun bs!1294582 () Bool)

(assert (= bs!1294582 (and b!5599196 b!5598222)))

(assert (=> bs!1294582 (= (and (= (reg!15914 (regOne!31683 r!7292)) (reg!15914 r!7292)) (= (regOne!31683 r!7292) r!7292)) (= lambda!300689 lambda!300625))))

(assert (=> bs!1294578 (not (= lambda!300689 lambda!300675))))

(assert (=> bs!1294581 (not (= lambda!300689 lambda!300610))))

(assert (=> bs!1294579 (not (= lambda!300689 lambda!300568))))

(declare-fun bs!1294583 () Bool)

(assert (= bs!1294583 (and b!5599196 b!5598224)))

(assert (=> bs!1294583 (not (= lambda!300689 lambda!300626))))

(assert (=> b!5599196 true))

(assert (=> b!5599196 true))

(declare-fun bs!1294584 () Bool)

(declare-fun b!5599198 () Bool)

(assert (= bs!1294584 (and b!5599198 d!1769834)))

(declare-fun lambda!300690 () Int)

(assert (=> bs!1294584 (= (and (= (regOne!31682 (regOne!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regOne!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300690 lambda!300676))))

(declare-fun bs!1294585 () Bool)

(assert (= bs!1294585 (and b!5599198 b!5597514)))

(assert (=> bs!1294585 (= (and (= (regOne!31682 (regOne!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regOne!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300690 lambda!300569))))

(declare-fun bs!1294586 () Bool)

(assert (= bs!1294586 (and b!5599198 d!1769492)))

(assert (=> bs!1294586 (not (= lambda!300690 lambda!300604))))

(declare-fun bs!1294587 () Bool)

(assert (= bs!1294587 (and b!5599198 d!1769494)))

(assert (=> bs!1294587 (not (= lambda!300690 lambda!300609))))

(declare-fun bs!1294588 () Bool)

(assert (= bs!1294588 (and b!5599198 b!5599196)))

(assert (=> bs!1294588 (not (= lambda!300690 lambda!300689))))

(declare-fun bs!1294589 () Bool)

(assert (= bs!1294589 (and b!5599198 b!5598222)))

(assert (=> bs!1294589 (not (= lambda!300690 lambda!300625))))

(assert (=> bs!1294584 (not (= lambda!300690 lambda!300675))))

(assert (=> bs!1294587 (= (and (= (regOne!31682 (regOne!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regOne!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300690 lambda!300610))))

(assert (=> bs!1294585 (not (= lambda!300690 lambda!300568))))

(declare-fun bs!1294590 () Bool)

(assert (= bs!1294590 (and b!5599198 b!5598224)))

(assert (=> bs!1294590 (= (and (= (regOne!31682 (regOne!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regOne!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300690 lambda!300626))))

(assert (=> b!5599198 true))

(assert (=> b!5599198 true))

(declare-fun b!5599191 () Bool)

(declare-fun e!3453885 () Bool)

(declare-fun e!3453890 () Bool)

(assert (=> b!5599191 (= e!3453885 e!3453890)))

(declare-fun res!2374884 () Bool)

(assert (=> b!5599191 (= res!2374884 (matchRSpec!2688 (regOne!31683 (regOne!31683 r!7292)) s!2326))))

(assert (=> b!5599191 (=> res!2374884 e!3453890)))

(declare-fun d!1769948 () Bool)

(declare-fun c!981795 () Bool)

(assert (=> d!1769948 (= c!981795 ((_ is EmptyExpr!15585) (regOne!31683 r!7292)))))

(declare-fun e!3453889 () Bool)

(assert (=> d!1769948 (= (matchRSpec!2688 (regOne!31683 r!7292) s!2326) e!3453889)))

(declare-fun b!5599192 () Bool)

(declare-fun c!981793 () Bool)

(assert (=> b!5599192 (= c!981793 ((_ is Union!15585) (regOne!31683 r!7292)))))

(declare-fun e!3453884 () Bool)

(assert (=> b!5599192 (= e!3453884 e!3453885)))

(declare-fun b!5599193 () Bool)

(declare-fun c!981792 () Bool)

(assert (=> b!5599193 (= c!981792 ((_ is ElementMatch!15585) (regOne!31683 r!7292)))))

(declare-fun e!3453886 () Bool)

(assert (=> b!5599193 (= e!3453886 e!3453884)))

(declare-fun b!5599194 () Bool)

(assert (=> b!5599194 (= e!3453890 (matchRSpec!2688 (regTwo!31683 (regOne!31683 r!7292)) s!2326))))

(declare-fun bm!420102 () Bool)

(declare-fun call!420108 () Bool)

(assert (=> bm!420102 (= call!420108 (isEmpty!34758 s!2326))))

(declare-fun b!5599195 () Bool)

(assert (=> b!5599195 (= e!3453884 (= s!2326 (Cons!62932 (c!981334 (regOne!31683 r!7292)) Nil!62932)))))

(declare-fun e!3453888 () Bool)

(declare-fun call!420107 () Bool)

(assert (=> b!5599196 (= e!3453888 call!420107)))

(declare-fun b!5599197 () Bool)

(assert (=> b!5599197 (= e!3453889 call!420108)))

(declare-fun c!981794 () Bool)

(declare-fun bm!420103 () Bool)

(assert (=> bm!420103 (= call!420107 (Exists!2685 (ite c!981794 lambda!300689 lambda!300690)))))

(declare-fun e!3453887 () Bool)

(assert (=> b!5599198 (= e!3453887 call!420107)))

(declare-fun b!5599199 () Bool)

(assert (=> b!5599199 (= e!3453889 e!3453886)))

(declare-fun res!2374885 () Bool)

(assert (=> b!5599199 (= res!2374885 (not ((_ is EmptyLang!15585) (regOne!31683 r!7292))))))

(assert (=> b!5599199 (=> (not res!2374885) (not e!3453886))))

(declare-fun b!5599200 () Bool)

(declare-fun res!2374886 () Bool)

(assert (=> b!5599200 (=> res!2374886 e!3453888)))

(assert (=> b!5599200 (= res!2374886 call!420108)))

(assert (=> b!5599200 (= e!3453887 e!3453888)))

(declare-fun b!5599201 () Bool)

(assert (=> b!5599201 (= e!3453885 e!3453887)))

(assert (=> b!5599201 (= c!981794 ((_ is Star!15585) (regOne!31683 r!7292)))))

(assert (= (and d!1769948 c!981795) b!5599197))

(assert (= (and d!1769948 (not c!981795)) b!5599199))

(assert (= (and b!5599199 res!2374885) b!5599193))

(assert (= (and b!5599193 c!981792) b!5599195))

(assert (= (and b!5599193 (not c!981792)) b!5599192))

(assert (= (and b!5599192 c!981793) b!5599191))

(assert (= (and b!5599192 (not c!981793)) b!5599201))

(assert (= (and b!5599191 (not res!2374884)) b!5599194))

(assert (= (and b!5599201 c!981794) b!5599200))

(assert (= (and b!5599201 (not c!981794)) b!5599198))

(assert (= (and b!5599200 (not res!2374886)) b!5599196))

(assert (= (or b!5599196 b!5599198) bm!420103))

(assert (= (or b!5599197 b!5599200) bm!420102))

(declare-fun m!6577994 () Bool)

(assert (=> b!5599191 m!6577994))

(declare-fun m!6577996 () Bool)

(assert (=> b!5599194 m!6577996))

(assert (=> bm!420102 m!6576846))

(declare-fun m!6577998 () Bool)

(assert (=> bm!420103 m!6577998))

(assert (=> b!5598217 d!1769948))

(assert (=> d!1769430 d!1769898))

(declare-fun d!1769950 () Bool)

(assert (=> d!1769950 (= (isEmpty!34754 (unfocusZipperList!1013 zl!343)) ((_ is Nil!62930) (unfocusZipperList!1013 zl!343)))))

(assert (=> b!5598169 d!1769950))

(declare-fun d!1769952 () Bool)

(assert (=> d!1769952 (= (isEmpty!34758 (tail!11034 s!2326)) ((_ is Nil!62932) (tail!11034 s!2326)))))

(assert (=> b!5598258 d!1769952))

(assert (=> b!5598258 d!1769872))

(declare-fun d!1769954 () Bool)

(declare-fun c!981796 () Bool)

(assert (=> d!1769954 (= c!981796 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453891 () Bool)

(assert (=> d!1769954 (= (matchZipper!1723 (derivationStepZipper!1684 lt!2256511 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453891)))

(declare-fun b!5599202 () Bool)

(assert (=> b!5599202 (= e!3453891 (nullableZipper!1580 (derivationStepZipper!1684 lt!2256511 (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599203 () Bool)

(assert (=> b!5599203 (= e!3453891 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 lt!2256511 (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1769954 c!981796) b!5599202))

(assert (= (and d!1769954 (not c!981796)) b!5599203))

(assert (=> d!1769954 m!6576868))

(assert (=> d!1769954 m!6577864))

(assert (=> b!5599202 m!6576978))

(declare-fun m!6578000 () Bool)

(assert (=> b!5599202 m!6578000))

(assert (=> b!5599203 m!6576868))

(assert (=> b!5599203 m!6577868))

(assert (=> b!5599203 m!6576978))

(assert (=> b!5599203 m!6577868))

(declare-fun m!6578002 () Bool)

(assert (=> b!5599203 m!6578002))

(assert (=> b!5599203 m!6576868))

(assert (=> b!5599203 m!6577872))

(assert (=> b!5599203 m!6578002))

(assert (=> b!5599203 m!6577872))

(declare-fun m!6578004 () Bool)

(assert (=> b!5599203 m!6578004))

(assert (=> b!5598053 d!1769954))

(declare-fun bs!1294591 () Bool)

(declare-fun d!1769956 () Bool)

(assert (= bs!1294591 (and d!1769956 d!1769916)))

(declare-fun lambda!300691 () Int)

(assert (=> bs!1294591 (= lambda!300691 lambda!300686)))

(declare-fun bs!1294592 () Bool)

(assert (= bs!1294592 (and d!1769956 d!1769904)))

(assert (=> bs!1294592 (= lambda!300691 lambda!300685)))

(declare-fun bs!1294593 () Bool)

(assert (= bs!1294593 (and d!1769956 b!5597513)))

(assert (=> bs!1294593 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300691 lambda!300570))))

(declare-fun bs!1294594 () Bool)

(assert (= bs!1294594 (and d!1769956 d!1769936)))

(assert (=> bs!1294594 (= lambda!300691 lambda!300688)))

(declare-fun bs!1294595 () Bool)

(assert (= bs!1294595 (and d!1769956 d!1769920)))

(assert (=> bs!1294595 (= lambda!300691 lambda!300687)))

(assert (=> d!1769956 true))

(assert (=> d!1769956 (= (derivationStepZipper!1684 lt!2256511 (head!11939 (t!376340 s!2326))) (flatMap!1198 lt!2256511 lambda!300691))))

(declare-fun bs!1294596 () Bool)

(assert (= bs!1294596 d!1769956))

(declare-fun m!6578006 () Bool)

(assert (=> bs!1294596 m!6578006))

(assert (=> b!5598053 d!1769956))

(assert (=> b!5598053 d!1769906))

(assert (=> b!5598053 d!1769908))

(declare-fun bs!1294597 () Bool)

(declare-fun d!1769958 () Bool)

(assert (= bs!1294597 (and d!1769958 d!1769516)))

(declare-fun lambda!300692 () Int)

(assert (=> bs!1294597 (= lambda!300692 lambda!300619)))

(declare-fun bs!1294598 () Bool)

(assert (= bs!1294598 (and d!1769958 d!1769890)))

(assert (=> bs!1294598 (= lambda!300692 lambda!300682)))

(declare-fun bs!1294599 () Bool)

(assert (= bs!1294599 (and d!1769958 d!1769514)))

(assert (=> bs!1294599 (= lambda!300692 lambda!300616)))

(declare-fun bs!1294600 () Bool)

(assert (= bs!1294600 (and d!1769958 d!1769844)))

(assert (=> bs!1294600 (= lambda!300692 lambda!300677)))

(declare-fun bs!1294601 () Bool)

(assert (= bs!1294601 (and d!1769958 d!1769498)))

(assert (=> bs!1294601 (= lambda!300692 lambda!300613)))

(declare-fun bs!1294602 () Bool)

(assert (= bs!1294602 (and d!1769958 d!1769518)))

(assert (=> bs!1294602 (= lambda!300692 lambda!300620)))

(declare-fun bs!1294603 () Bool)

(assert (= bs!1294603 (and d!1769958 d!1769458)))

(assert (=> bs!1294603 (= lambda!300692 lambda!300601)))

(declare-fun b!5599204 () Bool)

(declare-fun e!3453897 () Bool)

(assert (=> b!5599204 (= e!3453897 (isEmpty!34754 (t!376338 (t!376338 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun b!5599205 () Bool)

(declare-fun e!3453896 () Bool)

(declare-fun lt!2256656 () Regex!15585)

(assert (=> b!5599205 (= e!3453896 (isConcat!662 lt!2256656))))

(declare-fun b!5599206 () Bool)

(declare-fun e!3453893 () Regex!15585)

(assert (=> b!5599206 (= e!3453893 EmptyExpr!15585)))

(declare-fun b!5599207 () Bool)

(declare-fun e!3453895 () Bool)

(assert (=> b!5599207 (= e!3453895 e!3453896)))

(declare-fun c!981798 () Bool)

(assert (=> b!5599207 (= c!981798 (isEmpty!34754 (tail!11035 (t!376338 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun b!5599208 () Bool)

(declare-fun e!3453894 () Regex!15585)

(assert (=> b!5599208 (= e!3453894 e!3453893)))

(declare-fun c!981799 () Bool)

(assert (=> b!5599208 (= c!981799 ((_ is Cons!62930) (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5599210 () Bool)

(assert (=> b!5599210 (= e!3453894 (h!69378 (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5599211 () Bool)

(declare-fun e!3453892 () Bool)

(assert (=> b!5599211 (= e!3453892 e!3453895)))

(declare-fun c!981797 () Bool)

(assert (=> b!5599211 (= c!981797 (isEmpty!34754 (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5599209 () Bool)

(assert (=> b!5599209 (= e!3453896 (= lt!2256656 (head!11940 (t!376338 (exprs!5469 (h!69379 zl!343))))))))

(assert (=> d!1769958 e!3453892))

(declare-fun res!2374887 () Bool)

(assert (=> d!1769958 (=> (not res!2374887) (not e!3453892))))

(assert (=> d!1769958 (= res!2374887 (validRegex!7321 lt!2256656))))

(assert (=> d!1769958 (= lt!2256656 e!3453894)))

(declare-fun c!981800 () Bool)

(assert (=> d!1769958 (= c!981800 e!3453897)))

(declare-fun res!2374888 () Bool)

(assert (=> d!1769958 (=> (not res!2374888) (not e!3453897))))

(assert (=> d!1769958 (= res!2374888 ((_ is Cons!62930) (t!376338 (exprs!5469 (h!69379 zl!343)))))))

(assert (=> d!1769958 (forall!14751 (t!376338 (exprs!5469 (h!69379 zl!343))) lambda!300692)))

(assert (=> d!1769958 (= (generalisedConcat!1200 (t!376338 (exprs!5469 (h!69379 zl!343)))) lt!2256656)))

(declare-fun b!5599212 () Bool)

(assert (=> b!5599212 (= e!3453895 (isEmptyExpr!1139 lt!2256656))))

(declare-fun b!5599213 () Bool)

(assert (=> b!5599213 (= e!3453893 (Concat!24430 (h!69378 (t!376338 (exprs!5469 (h!69379 zl!343)))) (generalisedConcat!1200 (t!376338 (t!376338 (exprs!5469 (h!69379 zl!343)))))))))

(assert (= (and d!1769958 res!2374888) b!5599204))

(assert (= (and d!1769958 c!981800) b!5599210))

(assert (= (and d!1769958 (not c!981800)) b!5599208))

(assert (= (and b!5599208 c!981799) b!5599213))

(assert (= (and b!5599208 (not c!981799)) b!5599206))

(assert (= (and d!1769958 res!2374887) b!5599211))

(assert (= (and b!5599211 c!981797) b!5599212))

(assert (= (and b!5599211 (not c!981797)) b!5599207))

(assert (= (and b!5599207 c!981798) b!5599209))

(assert (= (and b!5599207 (not c!981798)) b!5599205))

(assert (=> b!5599211 m!6576486))

(declare-fun m!6578008 () Bool)

(assert (=> b!5599212 m!6578008))

(declare-fun m!6578010 () Bool)

(assert (=> b!5599213 m!6578010))

(declare-fun m!6578012 () Bool)

(assert (=> b!5599204 m!6578012))

(declare-fun m!6578014 () Bool)

(assert (=> b!5599209 m!6578014))

(declare-fun m!6578016 () Bool)

(assert (=> b!5599207 m!6578016))

(assert (=> b!5599207 m!6578016))

(declare-fun m!6578018 () Bool)

(assert (=> b!5599207 m!6578018))

(declare-fun m!6578020 () Bool)

(assert (=> b!5599205 m!6578020))

(declare-fun m!6578022 () Bool)

(assert (=> d!1769958 m!6578022))

(declare-fun m!6578024 () Bool)

(assert (=> d!1769958 m!6578024))

(assert (=> b!5598000 d!1769958))

(declare-fun d!1769960 () Bool)

(assert (=> d!1769960 (= (nullable!5617 (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))) (nullableFct!1726 (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))))))

(declare-fun bs!1294604 () Bool)

(assert (= bs!1294604 d!1769960))

(declare-fun m!6578026 () Bool)

(assert (=> bs!1294604 m!6578026))

(assert (=> b!5598049 d!1769960))

(declare-fun b!5599214 () Bool)

(declare-fun e!3453903 () Bool)

(declare-fun call!420111 () Bool)

(assert (=> b!5599214 (= e!3453903 call!420111)))

(declare-fun d!1769962 () Bool)

(declare-fun res!2374890 () Bool)

(declare-fun e!3453904 () Bool)

(assert (=> d!1769962 (=> res!2374890 e!3453904)))

(assert (=> d!1769962 (= res!2374890 ((_ is ElementMatch!15585) lt!2256603))))

(assert (=> d!1769962 (= (validRegex!7321 lt!2256603) e!3453904)))

(declare-fun b!5599215 () Bool)

(declare-fun res!2374891 () Bool)

(declare-fun e!3453899 () Bool)

(assert (=> b!5599215 (=> (not res!2374891) (not e!3453899))))

(declare-fun call!420109 () Bool)

(assert (=> b!5599215 (= res!2374891 call!420109)))

(declare-fun e!3453901 () Bool)

(assert (=> b!5599215 (= e!3453901 e!3453899)))

(declare-fun b!5599216 () Bool)

(declare-fun res!2374889 () Bool)

(declare-fun e!3453898 () Bool)

(assert (=> b!5599216 (=> res!2374889 e!3453898)))

(assert (=> b!5599216 (= res!2374889 (not ((_ is Concat!24430) lt!2256603)))))

(assert (=> b!5599216 (= e!3453901 e!3453898)))

(declare-fun b!5599217 () Bool)

(declare-fun e!3453902 () Bool)

(assert (=> b!5599217 (= e!3453904 e!3453902)))

(declare-fun c!981802 () Bool)

(assert (=> b!5599217 (= c!981802 ((_ is Star!15585) lt!2256603))))

(declare-fun b!5599218 () Bool)

(declare-fun e!3453900 () Bool)

(declare-fun call!420110 () Bool)

(assert (=> b!5599218 (= e!3453900 call!420110)))

(declare-fun b!5599219 () Bool)

(assert (=> b!5599219 (= e!3453902 e!3453900)))

(declare-fun res!2374892 () Bool)

(assert (=> b!5599219 (= res!2374892 (not (nullable!5617 (reg!15914 lt!2256603))))))

(assert (=> b!5599219 (=> (not res!2374892) (not e!3453900))))

(declare-fun bm!420104 () Bool)

(declare-fun c!981801 () Bool)

(assert (=> bm!420104 (= call!420110 (validRegex!7321 (ite c!981802 (reg!15914 lt!2256603) (ite c!981801 (regTwo!31683 lt!2256603) (regTwo!31682 lt!2256603)))))))

(declare-fun b!5599220 () Bool)

(assert (=> b!5599220 (= e!3453899 call!420111)))

(declare-fun b!5599221 () Bool)

(assert (=> b!5599221 (= e!3453898 e!3453903)))

(declare-fun res!2374893 () Bool)

(assert (=> b!5599221 (=> (not res!2374893) (not e!3453903))))

(assert (=> b!5599221 (= res!2374893 call!420109)))

(declare-fun bm!420105 () Bool)

(assert (=> bm!420105 (= call!420109 (validRegex!7321 (ite c!981801 (regOne!31683 lt!2256603) (regOne!31682 lt!2256603))))))

(declare-fun b!5599222 () Bool)

(assert (=> b!5599222 (= e!3453902 e!3453901)))

(assert (=> b!5599222 (= c!981801 ((_ is Union!15585) lt!2256603))))

(declare-fun bm!420106 () Bool)

(assert (=> bm!420106 (= call!420111 call!420110)))

(assert (= (and d!1769962 (not res!2374890)) b!5599217))

(assert (= (and b!5599217 c!981802) b!5599219))

(assert (= (and b!5599217 (not c!981802)) b!5599222))

(assert (= (and b!5599219 res!2374892) b!5599218))

(assert (= (and b!5599222 c!981801) b!5599215))

(assert (= (and b!5599222 (not c!981801)) b!5599216))

(assert (= (and b!5599215 res!2374891) b!5599220))

(assert (= (and b!5599216 (not res!2374889)) b!5599221))

(assert (= (and b!5599221 res!2374893) b!5599214))

(assert (= (or b!5599220 b!5599214) bm!420106))

(assert (= (or b!5599215 b!5599221) bm!420105))

(assert (= (or b!5599218 bm!420106) bm!420104))

(declare-fun m!6578028 () Bool)

(assert (=> b!5599219 m!6578028))

(declare-fun m!6578030 () Bool)

(assert (=> bm!420104 m!6578030))

(declare-fun m!6578032 () Bool)

(assert (=> bm!420105 m!6578032))

(assert (=> d!1769514 d!1769962))

(declare-fun d!1769964 () Bool)

(declare-fun res!2374894 () Bool)

(declare-fun e!3453905 () Bool)

(assert (=> d!1769964 (=> res!2374894 e!3453905)))

(assert (=> d!1769964 (= res!2374894 ((_ is Nil!62930) (unfocusZipperList!1013 zl!343)))))

(assert (=> d!1769964 (= (forall!14751 (unfocusZipperList!1013 zl!343) lambda!300616) e!3453905)))

(declare-fun b!5599223 () Bool)

(declare-fun e!3453906 () Bool)

(assert (=> b!5599223 (= e!3453905 e!3453906)))

(declare-fun res!2374895 () Bool)

(assert (=> b!5599223 (=> (not res!2374895) (not e!3453906))))

(assert (=> b!5599223 (= res!2374895 (dynLambda!24619 lambda!300616 (h!69378 (unfocusZipperList!1013 zl!343))))))

(declare-fun b!5599224 () Bool)

(assert (=> b!5599224 (= e!3453906 (forall!14751 (t!376338 (unfocusZipperList!1013 zl!343)) lambda!300616))))

(assert (= (and d!1769964 (not res!2374894)) b!5599223))

(assert (= (and b!5599223 res!2374895) b!5599224))

(declare-fun b_lambda!212177 () Bool)

(assert (=> (not b_lambda!212177) (not b!5599223)))

(declare-fun m!6578034 () Bool)

(assert (=> b!5599223 m!6578034))

(declare-fun m!6578036 () Bool)

(assert (=> b!5599224 m!6578036))

(assert (=> d!1769514 d!1769964))

(assert (=> d!1769528 d!1769850))

(declare-fun b!5599225 () Bool)

(declare-fun e!3453910 () Bool)

(declare-fun call!420112 () Bool)

(assert (=> b!5599225 (= e!3453910 call!420112)))

(declare-fun b!5599226 () Bool)

(declare-fun e!3453907 () Bool)

(assert (=> b!5599226 (= e!3453907 call!420112)))

(declare-fun b!5599227 () Bool)

(declare-fun e!3453912 () Bool)

(declare-fun e!3453909 () Bool)

(assert (=> b!5599227 (= e!3453912 e!3453909)))

(declare-fun res!2374898 () Bool)

(assert (=> b!5599227 (=> res!2374898 e!3453909)))

(assert (=> b!5599227 (= res!2374898 ((_ is Star!15585) (regTwo!31683 (regOne!31682 r!7292))))))

(declare-fun b!5599228 () Bool)

(declare-fun e!3453908 () Bool)

(assert (=> b!5599228 (= e!3453908 e!3453912)))

(declare-fun res!2374897 () Bool)

(assert (=> b!5599228 (=> (not res!2374897) (not e!3453912))))

(assert (=> b!5599228 (= res!2374897 (and (not ((_ is EmptyLang!15585) (regTwo!31683 (regOne!31682 r!7292)))) (not ((_ is ElementMatch!15585) (regTwo!31683 (regOne!31682 r!7292))))))))

(declare-fun b!5599230 () Bool)

(declare-fun e!3453911 () Bool)

(assert (=> b!5599230 (= e!3453911 e!3453907)))

(declare-fun res!2374899 () Bool)

(declare-fun call!420113 () Bool)

(assert (=> b!5599230 (= res!2374899 call!420113)))

(assert (=> b!5599230 (=> res!2374899 e!3453907)))

(declare-fun bm!420107 () Bool)

(declare-fun c!981803 () Bool)

(assert (=> bm!420107 (= call!420112 (nullable!5617 (ite c!981803 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))))))))

(declare-fun b!5599229 () Bool)

(assert (=> b!5599229 (= e!3453909 e!3453911)))

(assert (=> b!5599229 (= c!981803 ((_ is Union!15585) (regTwo!31683 (regOne!31682 r!7292))))))

(declare-fun d!1769966 () Bool)

(declare-fun res!2374900 () Bool)

(assert (=> d!1769966 (=> res!2374900 e!3453908)))

(assert (=> d!1769966 (= res!2374900 ((_ is EmptyExpr!15585) (regTwo!31683 (regOne!31682 r!7292))))))

(assert (=> d!1769966 (= (nullableFct!1726 (regTwo!31683 (regOne!31682 r!7292))) e!3453908)))

(declare-fun b!5599231 () Bool)

(assert (=> b!5599231 (= e!3453911 e!3453910)))

(declare-fun res!2374896 () Bool)

(assert (=> b!5599231 (= res!2374896 call!420113)))

(assert (=> b!5599231 (=> (not res!2374896) (not e!3453910))))

(declare-fun bm!420108 () Bool)

(assert (=> bm!420108 (= call!420113 (nullable!5617 (ite c!981803 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))))))

(assert (= (and d!1769966 (not res!2374900)) b!5599228))

(assert (= (and b!5599228 res!2374897) b!5599227))

(assert (= (and b!5599227 (not res!2374898)) b!5599229))

(assert (= (and b!5599229 c!981803) b!5599230))

(assert (= (and b!5599229 (not c!981803)) b!5599231))

(assert (= (and b!5599230 (not res!2374899)) b!5599226))

(assert (= (and b!5599231 res!2374896) b!5599225))

(assert (= (or b!5599226 b!5599225) bm!420107))

(assert (= (or b!5599230 b!5599231) bm!420108))

(declare-fun m!6578038 () Bool)

(assert (=> bm!420107 m!6578038))

(declare-fun m!6578040 () Bool)

(assert (=> bm!420108 m!6578040))

(assert (=> d!1769440 d!1769966))

(declare-fun d!1769968 () Bool)

(assert (=> d!1769968 (= (head!11940 (unfocusZipperList!1013 zl!343)) (h!69378 (unfocusZipperList!1013 zl!343)))))

(assert (=> b!5598176 d!1769968))

(declare-fun b!5599232 () Bool)

(declare-fun e!3453915 () (InoxSet Context!9938))

(assert (=> b!5599232 (= e!3453915 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599233 () Bool)

(declare-fun e!3453914 () Bool)

(assert (=> b!5599233 (= e!3453914 (nullable!5617 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))))))

(declare-fun b!5599234 () Bool)

(declare-fun call!420114 () (InoxSet Context!9938))

(assert (=> b!5599234 (= e!3453915 call!420114)))

(declare-fun d!1769970 () Bool)

(declare-fun c!981805 () Bool)

(assert (=> d!1769970 (= c!981805 e!3453914)))

(declare-fun res!2374901 () Bool)

(assert (=> d!1769970 (=> (not res!2374901) (not e!3453914))))

(assert (=> d!1769970 (= res!2374901 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))))

(declare-fun e!3453913 () (InoxSet Context!9938))

(assert (=> d!1769970 (= (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (h!69380 s!2326)) e!3453913)))

(declare-fun bm!420109 () Bool)

(assert (=> bm!420109 (= call!420114 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))) (h!69380 s!2326)))))

(declare-fun b!5599235 () Bool)

(assert (=> b!5599235 (= e!3453913 e!3453915)))

(declare-fun c!981804 () Bool)

(assert (=> b!5599235 (= c!981804 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))))

(declare-fun b!5599236 () Bool)

(assert (=> b!5599236 (= e!3453913 ((_ map or) call!420114 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))))))) (h!69380 s!2326))))))

(assert (= (and d!1769970 res!2374901) b!5599233))

(assert (= (and d!1769970 c!981805) b!5599236))

(assert (= (and d!1769970 (not c!981805)) b!5599235))

(assert (= (and b!5599235 c!981804) b!5599234))

(assert (= (and b!5599235 (not c!981804)) b!5599232))

(assert (= (or b!5599236 b!5599234) bm!420109))

(declare-fun m!6578042 () Bool)

(assert (=> b!5599233 m!6578042))

(declare-fun m!6578044 () Bool)

(assert (=> bm!420109 m!6578044))

(declare-fun m!6578046 () Bool)

(assert (=> b!5599236 m!6578046))

(assert (=> b!5598127 d!1769970))

(declare-fun bs!1294605 () Bool)

(declare-fun b!5599242 () Bool)

(assert (= bs!1294605 (and b!5599242 d!1769834)))

(declare-fun lambda!300693 () Int)

(assert (=> bs!1294605 (not (= lambda!300693 lambda!300676))))

(declare-fun bs!1294606 () Bool)

(assert (= bs!1294606 (and b!5599242 b!5597514)))

(assert (=> bs!1294606 (not (= lambda!300693 lambda!300569))))

(declare-fun bs!1294607 () Bool)

(assert (= bs!1294607 (and b!5599242 d!1769492)))

(assert (=> bs!1294607 (not (= lambda!300693 lambda!300604))))

(declare-fun bs!1294608 () Bool)

(assert (= bs!1294608 (and b!5599242 d!1769494)))

(assert (=> bs!1294608 (not (= lambda!300693 lambda!300609))))

(declare-fun bs!1294609 () Bool)

(assert (= bs!1294609 (and b!5599242 b!5599198)))

(assert (=> bs!1294609 (not (= lambda!300693 lambda!300690))))

(declare-fun bs!1294610 () Bool)

(assert (= bs!1294610 (and b!5599242 b!5599196)))

(assert (=> bs!1294610 (= (and (= (reg!15914 (regTwo!31683 r!7292)) (reg!15914 (regOne!31683 r!7292))) (= (regTwo!31683 r!7292) (regOne!31683 r!7292))) (= lambda!300693 lambda!300689))))

(declare-fun bs!1294611 () Bool)

(assert (= bs!1294611 (and b!5599242 b!5598222)))

(assert (=> bs!1294611 (= (and (= (reg!15914 (regTwo!31683 r!7292)) (reg!15914 r!7292)) (= (regTwo!31683 r!7292) r!7292)) (= lambda!300693 lambda!300625))))

(assert (=> bs!1294605 (not (= lambda!300693 lambda!300675))))

(assert (=> bs!1294608 (not (= lambda!300693 lambda!300610))))

(assert (=> bs!1294606 (not (= lambda!300693 lambda!300568))))

(declare-fun bs!1294612 () Bool)

(assert (= bs!1294612 (and b!5599242 b!5598224)))

(assert (=> bs!1294612 (not (= lambda!300693 lambda!300626))))

(assert (=> b!5599242 true))

(assert (=> b!5599242 true))

(declare-fun bs!1294613 () Bool)

(declare-fun b!5599244 () Bool)

(assert (= bs!1294613 (and b!5599244 d!1769834)))

(declare-fun lambda!300694 () Int)

(assert (=> bs!1294613 (= (and (= (regOne!31682 (regTwo!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regTwo!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300694 lambda!300676))))

(declare-fun bs!1294614 () Bool)

(assert (= bs!1294614 (and b!5599244 b!5597514)))

(assert (=> bs!1294614 (= (and (= (regOne!31682 (regTwo!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regTwo!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300694 lambda!300569))))

(declare-fun bs!1294615 () Bool)

(assert (= bs!1294615 (and b!5599244 d!1769494)))

(assert (=> bs!1294615 (not (= lambda!300694 lambda!300609))))

(declare-fun bs!1294616 () Bool)

(assert (= bs!1294616 (and b!5599244 b!5599198)))

(assert (=> bs!1294616 (= (and (= (regOne!31682 (regTwo!31683 r!7292)) (regOne!31682 (regOne!31683 r!7292))) (= (regTwo!31682 (regTwo!31683 r!7292)) (regTwo!31682 (regOne!31683 r!7292)))) (= lambda!300694 lambda!300690))))

(declare-fun bs!1294617 () Bool)

(assert (= bs!1294617 (and b!5599244 b!5599196)))

(assert (=> bs!1294617 (not (= lambda!300694 lambda!300689))))

(declare-fun bs!1294618 () Bool)

(assert (= bs!1294618 (and b!5599244 b!5598222)))

(assert (=> bs!1294618 (not (= lambda!300694 lambda!300625))))

(assert (=> bs!1294613 (not (= lambda!300694 lambda!300675))))

(assert (=> bs!1294615 (= (and (= (regOne!31682 (regTwo!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regTwo!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300694 lambda!300610))))

(declare-fun bs!1294619 () Bool)

(assert (= bs!1294619 (and b!5599244 d!1769492)))

(assert (=> bs!1294619 (not (= lambda!300694 lambda!300604))))

(declare-fun bs!1294620 () Bool)

(assert (= bs!1294620 (and b!5599244 b!5599242)))

(assert (=> bs!1294620 (not (= lambda!300694 lambda!300693))))

(assert (=> bs!1294614 (not (= lambda!300694 lambda!300568))))

(declare-fun bs!1294621 () Bool)

(assert (= bs!1294621 (and b!5599244 b!5598224)))

(assert (=> bs!1294621 (= (and (= (regOne!31682 (regTwo!31683 r!7292)) (regOne!31682 r!7292)) (= (regTwo!31682 (regTwo!31683 r!7292)) (regTwo!31682 r!7292))) (= lambda!300694 lambda!300626))))

(assert (=> b!5599244 true))

(assert (=> b!5599244 true))

(declare-fun b!5599237 () Bool)

(declare-fun e!3453917 () Bool)

(declare-fun e!3453922 () Bool)

(assert (=> b!5599237 (= e!3453917 e!3453922)))

(declare-fun res!2374902 () Bool)

(assert (=> b!5599237 (= res!2374902 (matchRSpec!2688 (regOne!31683 (regTwo!31683 r!7292)) s!2326))))

(assert (=> b!5599237 (=> res!2374902 e!3453922)))

(declare-fun d!1769972 () Bool)

(declare-fun c!981809 () Bool)

(assert (=> d!1769972 (= c!981809 ((_ is EmptyExpr!15585) (regTwo!31683 r!7292)))))

(declare-fun e!3453921 () Bool)

(assert (=> d!1769972 (= (matchRSpec!2688 (regTwo!31683 r!7292) s!2326) e!3453921)))

(declare-fun b!5599238 () Bool)

(declare-fun c!981807 () Bool)

(assert (=> b!5599238 (= c!981807 ((_ is Union!15585) (regTwo!31683 r!7292)))))

(declare-fun e!3453916 () Bool)

(assert (=> b!5599238 (= e!3453916 e!3453917)))

(declare-fun b!5599239 () Bool)

(declare-fun c!981806 () Bool)

(assert (=> b!5599239 (= c!981806 ((_ is ElementMatch!15585) (regTwo!31683 r!7292)))))

(declare-fun e!3453918 () Bool)

(assert (=> b!5599239 (= e!3453918 e!3453916)))

(declare-fun b!5599240 () Bool)

(assert (=> b!5599240 (= e!3453922 (matchRSpec!2688 (regTwo!31683 (regTwo!31683 r!7292)) s!2326))))

(declare-fun bm!420110 () Bool)

(declare-fun call!420116 () Bool)

(assert (=> bm!420110 (= call!420116 (isEmpty!34758 s!2326))))

(declare-fun b!5599241 () Bool)

(assert (=> b!5599241 (= e!3453916 (= s!2326 (Cons!62932 (c!981334 (regTwo!31683 r!7292)) Nil!62932)))))

(declare-fun e!3453920 () Bool)

(declare-fun call!420115 () Bool)

(assert (=> b!5599242 (= e!3453920 call!420115)))

(declare-fun b!5599243 () Bool)

(assert (=> b!5599243 (= e!3453921 call!420116)))

(declare-fun bm!420111 () Bool)

(declare-fun c!981808 () Bool)

(assert (=> bm!420111 (= call!420115 (Exists!2685 (ite c!981808 lambda!300693 lambda!300694)))))

(declare-fun e!3453919 () Bool)

(assert (=> b!5599244 (= e!3453919 call!420115)))

(declare-fun b!5599245 () Bool)

(assert (=> b!5599245 (= e!3453921 e!3453918)))

(declare-fun res!2374903 () Bool)

(assert (=> b!5599245 (= res!2374903 (not ((_ is EmptyLang!15585) (regTwo!31683 r!7292))))))

(assert (=> b!5599245 (=> (not res!2374903) (not e!3453918))))

(declare-fun b!5599246 () Bool)

(declare-fun res!2374904 () Bool)

(assert (=> b!5599246 (=> res!2374904 e!3453920)))

(assert (=> b!5599246 (= res!2374904 call!420116)))

(assert (=> b!5599246 (= e!3453919 e!3453920)))

(declare-fun b!5599247 () Bool)

(assert (=> b!5599247 (= e!3453917 e!3453919)))

(assert (=> b!5599247 (= c!981808 ((_ is Star!15585) (regTwo!31683 r!7292)))))

(assert (= (and d!1769972 c!981809) b!5599243))

(assert (= (and d!1769972 (not c!981809)) b!5599245))

(assert (= (and b!5599245 res!2374903) b!5599239))

(assert (= (and b!5599239 c!981806) b!5599241))

(assert (= (and b!5599239 (not c!981806)) b!5599238))

(assert (= (and b!5599238 c!981807) b!5599237))

(assert (= (and b!5599238 (not c!981807)) b!5599247))

(assert (= (and b!5599237 (not res!2374902)) b!5599240))

(assert (= (and b!5599247 c!981808) b!5599246))

(assert (= (and b!5599247 (not c!981808)) b!5599244))

(assert (= (and b!5599246 (not res!2374904)) b!5599242))

(assert (= (or b!5599242 b!5599244) bm!420111))

(assert (= (or b!5599243 b!5599246) bm!420110))

(declare-fun m!6578048 () Bool)

(assert (=> b!5599237 m!6578048))

(declare-fun m!6578050 () Bool)

(assert (=> b!5599240 m!6578050))

(assert (=> bm!420110 m!6576846))

(declare-fun m!6578052 () Bool)

(assert (=> bm!420111 m!6578052))

(assert (=> b!5598220 d!1769972))

(declare-fun d!1769974 () Bool)

(assert (=> d!1769974 (= ($colon$colon!1648 (exprs!5469 lt!2256515) (ite (or c!981496 c!981493) (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (regOne!31683 (regOne!31682 r!7292)))) (Cons!62930 (ite (or c!981496 c!981493) (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (regOne!31683 (regOne!31682 r!7292))) (exprs!5469 lt!2256515)))))

(assert (=> bm!419883 d!1769974))

(declare-fun d!1769976 () Bool)

(declare-fun res!2374905 () Bool)

(declare-fun e!3453923 () Bool)

(assert (=> d!1769976 (=> res!2374905 e!3453923)))

(assert (=> d!1769976 (= res!2374905 ((_ is Nil!62930) (exprs!5469 (h!69379 zl!343))))))

(assert (=> d!1769976 (= (forall!14751 (exprs!5469 (h!69379 zl!343)) lambda!300620) e!3453923)))

(declare-fun b!5599248 () Bool)

(declare-fun e!3453924 () Bool)

(assert (=> b!5599248 (= e!3453923 e!3453924)))

(declare-fun res!2374906 () Bool)

(assert (=> b!5599248 (=> (not res!2374906) (not e!3453924))))

(assert (=> b!5599248 (= res!2374906 (dynLambda!24619 lambda!300620 (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5599249 () Bool)

(assert (=> b!5599249 (= e!3453924 (forall!14751 (t!376338 (exprs!5469 (h!69379 zl!343))) lambda!300620))))

(assert (= (and d!1769976 (not res!2374905)) b!5599248))

(assert (= (and b!5599248 res!2374906) b!5599249))

(declare-fun b_lambda!212179 () Bool)

(assert (=> (not b_lambda!212179) (not b!5599248)))

(declare-fun m!6578054 () Bool)

(assert (=> b!5599248 m!6578054))

(declare-fun m!6578056 () Bool)

(assert (=> b!5599249 m!6578056))

(assert (=> d!1769518 d!1769976))

(declare-fun d!1769978 () Bool)

(declare-fun c!981810 () Bool)

(assert (=> d!1769978 (= c!981810 (isEmpty!34758 (tail!11034 s!2326)))))

(declare-fun e!3453925 () Bool)

(assert (=> d!1769978 (= (matchZipper!1723 (derivationStepZipper!1684 lt!2256501 (head!11939 s!2326)) (tail!11034 s!2326)) e!3453925)))

(declare-fun b!5599250 () Bool)

(assert (=> b!5599250 (= e!3453925 (nullableZipper!1580 (derivationStepZipper!1684 lt!2256501 (head!11939 s!2326))))))

(declare-fun b!5599251 () Bool)

(assert (=> b!5599251 (= e!3453925 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 lt!2256501 (head!11939 s!2326)) (head!11939 (tail!11034 s!2326))) (tail!11034 (tail!11034 s!2326))))))

(assert (= (and d!1769978 c!981810) b!5599250))

(assert (= (and d!1769978 (not c!981810)) b!5599251))

(assert (=> d!1769978 m!6576854))

(assert (=> d!1769978 m!6577108))

(assert (=> b!5599250 m!6576898))

(declare-fun m!6578058 () Bool)

(assert (=> b!5599250 m!6578058))

(assert (=> b!5599251 m!6576854))

(assert (=> b!5599251 m!6577814))

(assert (=> b!5599251 m!6576898))

(assert (=> b!5599251 m!6577814))

(declare-fun m!6578060 () Bool)

(assert (=> b!5599251 m!6578060))

(assert (=> b!5599251 m!6576854))

(assert (=> b!5599251 m!6577808))

(assert (=> b!5599251 m!6578060))

(assert (=> b!5599251 m!6577808))

(declare-fun m!6578062 () Bool)

(assert (=> b!5599251 m!6578062))

(assert (=> b!5597965 d!1769978))

(declare-fun bs!1294622 () Bool)

(declare-fun d!1769980 () Bool)

(assert (= bs!1294622 (and d!1769980 d!1769916)))

(declare-fun lambda!300695 () Int)

(assert (=> bs!1294622 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300695 lambda!300686))))

(declare-fun bs!1294623 () Bool)

(assert (= bs!1294623 (and d!1769980 d!1769904)))

(assert (=> bs!1294623 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300695 lambda!300685))))

(declare-fun bs!1294624 () Bool)

(assert (= bs!1294624 (and d!1769980 b!5597513)))

(assert (=> bs!1294624 (= (= (head!11939 s!2326) (h!69380 s!2326)) (= lambda!300695 lambda!300570))))

(declare-fun bs!1294625 () Bool)

(assert (= bs!1294625 (and d!1769980 d!1769936)))

(assert (=> bs!1294625 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300695 lambda!300688))))

(declare-fun bs!1294626 () Bool)

(assert (= bs!1294626 (and d!1769980 d!1769920)))

(assert (=> bs!1294626 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300695 lambda!300687))))

(declare-fun bs!1294627 () Bool)

(assert (= bs!1294627 (and d!1769980 d!1769956)))

(assert (=> bs!1294627 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300695 lambda!300691))))

(assert (=> d!1769980 true))

(assert (=> d!1769980 (= (derivationStepZipper!1684 lt!2256501 (head!11939 s!2326)) (flatMap!1198 lt!2256501 lambda!300695))))

(declare-fun bs!1294628 () Bool)

(assert (= bs!1294628 d!1769980))

(declare-fun m!6578064 () Bool)

(assert (=> bs!1294628 m!6578064))

(assert (=> b!5597965 d!1769980))

(assert (=> b!5597965 d!1769870))

(assert (=> b!5597965 d!1769872))

(assert (=> b!5598003 d!1769462))

(declare-fun d!1769982 () Bool)

(declare-fun c!981811 () Bool)

(assert (=> d!1769982 (= c!981811 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453926 () Bool)

(assert (=> d!1769982 (= (matchZipper!1723 (derivationStepZipper!1684 ((_ map or) lt!2256521 lt!2256516) (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453926)))

(declare-fun b!5599252 () Bool)

(assert (=> b!5599252 (= e!3453926 (nullableZipper!1580 (derivationStepZipper!1684 ((_ map or) lt!2256521 lt!2256516) (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599253 () Bool)

(assert (=> b!5599253 (= e!3453926 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 ((_ map or) lt!2256521 lt!2256516) (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1769982 c!981811) b!5599252))

(assert (= (and d!1769982 (not c!981811)) b!5599253))

(assert (=> d!1769982 m!6576868))

(assert (=> d!1769982 m!6577864))

(assert (=> b!5599252 m!6576954))

(declare-fun m!6578066 () Bool)

(assert (=> b!5599252 m!6578066))

(assert (=> b!5599253 m!6576868))

(assert (=> b!5599253 m!6577868))

(assert (=> b!5599253 m!6576954))

(assert (=> b!5599253 m!6577868))

(declare-fun m!6578068 () Bool)

(assert (=> b!5599253 m!6578068))

(assert (=> b!5599253 m!6576868))

(assert (=> b!5599253 m!6577872))

(assert (=> b!5599253 m!6578068))

(assert (=> b!5599253 m!6577872))

(declare-fun m!6578070 () Bool)

(assert (=> b!5599253 m!6578070))

(assert (=> b!5598007 d!1769982))

(declare-fun bs!1294629 () Bool)

(declare-fun d!1769984 () Bool)

(assert (= bs!1294629 (and d!1769984 d!1769916)))

(declare-fun lambda!300696 () Int)

(assert (=> bs!1294629 (= lambda!300696 lambda!300686)))

(declare-fun bs!1294630 () Bool)

(assert (= bs!1294630 (and d!1769984 d!1769904)))

(assert (=> bs!1294630 (= lambda!300696 lambda!300685)))

(declare-fun bs!1294631 () Bool)

(assert (= bs!1294631 (and d!1769984 b!5597513)))

(assert (=> bs!1294631 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300696 lambda!300570))))

(declare-fun bs!1294632 () Bool)

(assert (= bs!1294632 (and d!1769984 d!1769936)))

(assert (=> bs!1294632 (= lambda!300696 lambda!300688)))

(declare-fun bs!1294633 () Bool)

(assert (= bs!1294633 (and d!1769984 d!1769980)))

(assert (=> bs!1294633 (= (= (head!11939 (t!376340 s!2326)) (head!11939 s!2326)) (= lambda!300696 lambda!300695))))

(declare-fun bs!1294634 () Bool)

(assert (= bs!1294634 (and d!1769984 d!1769920)))

(assert (=> bs!1294634 (= lambda!300696 lambda!300687)))

(declare-fun bs!1294635 () Bool)

(assert (= bs!1294635 (and d!1769984 d!1769956)))

(assert (=> bs!1294635 (= lambda!300696 lambda!300691)))

(assert (=> d!1769984 true))

(assert (=> d!1769984 (= (derivationStepZipper!1684 ((_ map or) lt!2256521 lt!2256516) (head!11939 (t!376340 s!2326))) (flatMap!1198 ((_ map or) lt!2256521 lt!2256516) lambda!300696))))

(declare-fun bs!1294636 () Bool)

(assert (= bs!1294636 d!1769984))

(declare-fun m!6578072 () Bool)

(assert (=> bs!1294636 m!6578072))

(assert (=> b!5598007 d!1769984))

(assert (=> b!5598007 d!1769906))

(assert (=> b!5598007 d!1769908))

(declare-fun bs!1294637 () Bool)

(declare-fun d!1769986 () Bool)

(assert (= bs!1294637 (and d!1769986 d!1769516)))

(declare-fun lambda!300697 () Int)

(assert (=> bs!1294637 (= lambda!300697 lambda!300619)))

(declare-fun bs!1294638 () Bool)

(assert (= bs!1294638 (and d!1769986 d!1769890)))

(assert (=> bs!1294638 (= lambda!300697 lambda!300682)))

(declare-fun bs!1294639 () Bool)

(assert (= bs!1294639 (and d!1769986 d!1769514)))

(assert (=> bs!1294639 (= lambda!300697 lambda!300616)))

(declare-fun bs!1294640 () Bool)

(assert (= bs!1294640 (and d!1769986 d!1769958)))

(assert (=> bs!1294640 (= lambda!300697 lambda!300692)))

(declare-fun bs!1294641 () Bool)

(assert (= bs!1294641 (and d!1769986 d!1769844)))

(assert (=> bs!1294641 (= lambda!300697 lambda!300677)))

(declare-fun bs!1294642 () Bool)

(assert (= bs!1294642 (and d!1769986 d!1769498)))

(assert (=> bs!1294642 (= lambda!300697 lambda!300613)))

(declare-fun bs!1294643 () Bool)

(assert (= bs!1294643 (and d!1769986 d!1769518)))

(assert (=> bs!1294643 (= lambda!300697 lambda!300620)))

(declare-fun bs!1294644 () Bool)

(assert (= bs!1294644 (and d!1769986 d!1769458)))

(assert (=> bs!1294644 (= lambda!300697 lambda!300601)))

(declare-fun b!5599254 () Bool)

(declare-fun e!3453927 () Bool)

(declare-fun e!3453932 () Bool)

(assert (=> b!5599254 (= e!3453927 e!3453932)))

(declare-fun c!981812 () Bool)

(assert (=> b!5599254 (= c!981812 (isEmpty!34754 (t!376338 (unfocusZipperList!1013 zl!343))))))

(assert (=> d!1769986 e!3453927))

(declare-fun res!2374908 () Bool)

(assert (=> d!1769986 (=> (not res!2374908) (not e!3453927))))

(declare-fun lt!2256657 () Regex!15585)

(assert (=> d!1769986 (= res!2374908 (validRegex!7321 lt!2256657))))

(declare-fun e!3453929 () Regex!15585)

(assert (=> d!1769986 (= lt!2256657 e!3453929)))

(declare-fun c!981815 () Bool)

(declare-fun e!3453930 () Bool)

(assert (=> d!1769986 (= c!981815 e!3453930)))

(declare-fun res!2374907 () Bool)

(assert (=> d!1769986 (=> (not res!2374907) (not e!3453930))))

(assert (=> d!1769986 (= res!2374907 ((_ is Cons!62930) (t!376338 (unfocusZipperList!1013 zl!343))))))

(assert (=> d!1769986 (forall!14751 (t!376338 (unfocusZipperList!1013 zl!343)) lambda!300697)))

(assert (=> d!1769986 (= (generalisedUnion!1448 (t!376338 (unfocusZipperList!1013 zl!343))) lt!2256657)))

(declare-fun b!5599255 () Bool)

(assert (=> b!5599255 (= e!3453932 (isEmptyLang!1149 lt!2256657))))

(declare-fun b!5599256 () Bool)

(declare-fun e!3453928 () Regex!15585)

(assert (=> b!5599256 (= e!3453928 EmptyLang!15585)))

(declare-fun b!5599257 () Bool)

(assert (=> b!5599257 (= e!3453928 (Union!15585 (h!69378 (t!376338 (unfocusZipperList!1013 zl!343))) (generalisedUnion!1448 (t!376338 (t!376338 (unfocusZipperList!1013 zl!343))))))))

(declare-fun b!5599258 () Bool)

(assert (=> b!5599258 (= e!3453930 (isEmpty!34754 (t!376338 (t!376338 (unfocusZipperList!1013 zl!343)))))))

(declare-fun b!5599259 () Bool)

(assert (=> b!5599259 (= e!3453929 (h!69378 (t!376338 (unfocusZipperList!1013 zl!343))))))

(declare-fun b!5599260 () Bool)

(assert (=> b!5599260 (= e!3453929 e!3453928)))

(declare-fun c!981814 () Bool)

(assert (=> b!5599260 (= c!981814 ((_ is Cons!62930) (t!376338 (unfocusZipperList!1013 zl!343))))))

(declare-fun b!5599261 () Bool)

(declare-fun e!3453931 () Bool)

(assert (=> b!5599261 (= e!3453931 (= lt!2256657 (head!11940 (t!376338 (unfocusZipperList!1013 zl!343)))))))

(declare-fun b!5599262 () Bool)

(assert (=> b!5599262 (= e!3453932 e!3453931)))

(declare-fun c!981813 () Bool)

(assert (=> b!5599262 (= c!981813 (isEmpty!34754 (tail!11035 (t!376338 (unfocusZipperList!1013 zl!343)))))))

(declare-fun b!5599263 () Bool)

(assert (=> b!5599263 (= e!3453931 (isUnion!579 lt!2256657))))

(assert (= (and d!1769986 res!2374907) b!5599258))

(assert (= (and d!1769986 c!981815) b!5599259))

(assert (= (and d!1769986 (not c!981815)) b!5599260))

(assert (= (and b!5599260 c!981814) b!5599257))

(assert (= (and b!5599260 (not c!981814)) b!5599256))

(assert (= (and d!1769986 res!2374908) b!5599254))

(assert (= (and b!5599254 c!981812) b!5599255))

(assert (= (and b!5599254 (not c!981812)) b!5599262))

(assert (= (and b!5599262 c!981813) b!5599261))

(assert (= (and b!5599262 (not c!981813)) b!5599263))

(assert (=> b!5599254 m!6577082))

(declare-fun m!6578074 () Bool)

(assert (=> b!5599255 m!6578074))

(declare-fun m!6578076 () Bool)

(assert (=> d!1769986 m!6578076))

(declare-fun m!6578078 () Bool)

(assert (=> d!1769986 m!6578078))

(declare-fun m!6578080 () Bool)

(assert (=> b!5599258 m!6578080))

(declare-fun m!6578082 () Bool)

(assert (=> b!5599262 m!6578082))

(assert (=> b!5599262 m!6578082))

(declare-fun m!6578084 () Bool)

(assert (=> b!5599262 m!6578084))

(declare-fun m!6578086 () Bool)

(assert (=> b!5599263 m!6578086))

(declare-fun m!6578088 () Bool)

(assert (=> b!5599257 m!6578088))

(declare-fun m!6578090 () Bool)

(assert (=> b!5599261 m!6578090))

(assert (=> b!5598172 d!1769986))

(declare-fun d!1769988 () Bool)

(declare-fun c!981816 () Bool)

(assert (=> d!1769988 (= c!981816 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453933 () Bool)

(assert (=> d!1769988 (= (matchZipper!1723 (derivationStepZipper!1684 lt!2256516 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453933)))

(declare-fun b!5599264 () Bool)

(assert (=> b!5599264 (= e!3453933 (nullableZipper!1580 (derivationStepZipper!1684 lt!2256516 (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599265 () Bool)

(assert (=> b!5599265 (= e!3453933 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 lt!2256516 (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1769988 c!981816) b!5599264))

(assert (= (and d!1769988 (not c!981816)) b!5599265))

(assert (=> d!1769988 m!6576868))

(assert (=> d!1769988 m!6577864))

(assert (=> b!5599264 m!6576940))

(declare-fun m!6578092 () Bool)

(assert (=> b!5599264 m!6578092))

(assert (=> b!5599265 m!6576868))

(assert (=> b!5599265 m!6577868))

(assert (=> b!5599265 m!6576940))

(assert (=> b!5599265 m!6577868))

(declare-fun m!6578094 () Bool)

(assert (=> b!5599265 m!6578094))

(assert (=> b!5599265 m!6576868))

(assert (=> b!5599265 m!6577872))

(assert (=> b!5599265 m!6578094))

(assert (=> b!5599265 m!6577872))

(declare-fun m!6578096 () Bool)

(assert (=> b!5599265 m!6578096))

(assert (=> b!5598002 d!1769988))

(declare-fun bs!1294645 () Bool)

(declare-fun d!1769990 () Bool)

(assert (= bs!1294645 (and d!1769990 d!1769916)))

(declare-fun lambda!300698 () Int)

(assert (=> bs!1294645 (= lambda!300698 lambda!300686)))

(declare-fun bs!1294646 () Bool)

(assert (= bs!1294646 (and d!1769990 d!1769904)))

(assert (=> bs!1294646 (= lambda!300698 lambda!300685)))

(declare-fun bs!1294647 () Bool)

(assert (= bs!1294647 (and d!1769990 b!5597513)))

(assert (=> bs!1294647 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300698 lambda!300570))))

(declare-fun bs!1294648 () Bool)

(assert (= bs!1294648 (and d!1769990 d!1769936)))

(assert (=> bs!1294648 (= lambda!300698 lambda!300688)))

(declare-fun bs!1294649 () Bool)

(assert (= bs!1294649 (and d!1769990 d!1769980)))

(assert (=> bs!1294649 (= (= (head!11939 (t!376340 s!2326)) (head!11939 s!2326)) (= lambda!300698 lambda!300695))))

(declare-fun bs!1294650 () Bool)

(assert (= bs!1294650 (and d!1769990 d!1769984)))

(assert (=> bs!1294650 (= lambda!300698 lambda!300696)))

(declare-fun bs!1294651 () Bool)

(assert (= bs!1294651 (and d!1769990 d!1769920)))

(assert (=> bs!1294651 (= lambda!300698 lambda!300687)))

(declare-fun bs!1294652 () Bool)

(assert (= bs!1294652 (and d!1769990 d!1769956)))

(assert (=> bs!1294652 (= lambda!300698 lambda!300691)))

(assert (=> d!1769990 true))

(assert (=> d!1769990 (= (derivationStepZipper!1684 lt!2256516 (head!11939 (t!376340 s!2326))) (flatMap!1198 lt!2256516 lambda!300698))))

(declare-fun bs!1294653 () Bool)

(assert (= bs!1294653 d!1769990))

(declare-fun m!6578098 () Bool)

(assert (=> bs!1294653 m!6578098))

(assert (=> b!5598002 d!1769990))

(assert (=> b!5598002 d!1769906))

(assert (=> b!5598002 d!1769908))

(declare-fun d!1769992 () Bool)

(assert (=> d!1769992 (= (isEmpty!34754 (tail!11035 (exprs!5469 (h!69379 zl!343)))) ((_ is Nil!62930) (tail!11035 (exprs!5469 (h!69379 zl!343)))))))

(assert (=> b!5597994 d!1769992))

(declare-fun d!1769994 () Bool)

(assert (=> d!1769994 (= (tail!11035 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343))))))

(assert (=> b!5597994 d!1769994))

(declare-fun bm!420112 () Bool)

(declare-fun call!420117 () List!63054)

(declare-fun c!981821 () Bool)

(declare-fun c!981818 () Bool)

(assert (=> bm!420112 (= call!420117 ($colon$colon!1648 (exprs!5469 (ite (or c!981494 c!981496) lt!2256515 (Context!9939 call!419889))) (ite (or c!981821 c!981818) (regTwo!31682 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))) (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292)))))))))))

(declare-fun b!5599266 () Bool)

(declare-fun e!3453939 () (InoxSet Context!9938))

(declare-fun e!3453935 () (InoxSet Context!9938))

(assert (=> b!5599266 (= e!3453939 e!3453935)))

(declare-fun c!981819 () Bool)

(assert (=> b!5599266 (= c!981819 ((_ is Union!15585) (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))))))

(declare-fun b!5599267 () Bool)

(declare-fun e!3453937 () (InoxSet Context!9938))

(assert (=> b!5599267 (= e!3453937 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599268 () Bool)

(assert (=> b!5599268 (= e!3453939 (store ((as const (Array Context!9938 Bool)) false) (ite (or c!981494 c!981496) lt!2256515 (Context!9939 call!419889)) true))))

(declare-fun b!5599269 () Bool)

(declare-fun e!3453934 () (InoxSet Context!9938))

(declare-fun call!420121 () (InoxSet Context!9938))

(declare-fun call!420119 () (InoxSet Context!9938))

(assert (=> b!5599269 (= e!3453934 ((_ map or) call!420121 call!420119))))

(declare-fun bm!420113 () Bool)

(declare-fun call!420118 () List!63054)

(assert (=> bm!420113 (= call!420118 call!420117)))

(declare-fun b!5599270 () Bool)

(declare-fun c!981817 () Bool)

(assert (=> b!5599270 (= c!981817 ((_ is Star!15585) (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))))))

(declare-fun e!3453938 () (InoxSet Context!9938))

(assert (=> b!5599270 (= e!3453938 e!3453937)))

(declare-fun bm!420114 () Bool)

(declare-fun call!420122 () (InoxSet Context!9938))

(assert (=> bm!420114 (= call!420119 call!420122)))

(declare-fun b!5599271 () Bool)

(declare-fun e!3453936 () Bool)

(assert (=> b!5599271 (= c!981821 e!3453936)))

(declare-fun res!2374909 () Bool)

(assert (=> b!5599271 (=> (not res!2374909) (not e!3453936))))

(assert (=> b!5599271 (= res!2374909 ((_ is Concat!24430) (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))))))

(assert (=> b!5599271 (= e!3453935 e!3453934)))

(declare-fun b!5599272 () Bool)

(declare-fun call!420120 () (InoxSet Context!9938))

(assert (=> b!5599272 (= e!3453938 call!420120)))

(declare-fun bm!420116 () Bool)

(assert (=> bm!420116 (= call!420120 call!420119)))

(declare-fun bm!420117 () Bool)

(assert (=> bm!420117 (= call!420121 (derivationStepZipperDown!927 (ite c!981819 (regOne!31683 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))) (regOne!31682 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292)))))))) (ite c!981819 (ite (or c!981494 c!981496) lt!2256515 (Context!9939 call!419889)) (Context!9939 call!420117)) (h!69380 s!2326)))))

(declare-fun b!5599273 () Bool)

(assert (=> b!5599273 (= e!3453935 ((_ map or) call!420121 call!420122))))

(declare-fun b!5599274 () Bool)

(assert (=> b!5599274 (= e!3453936 (nullable!5617 (regOne!31682 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292)))))))))))

(declare-fun c!981820 () Bool)

(declare-fun d!1769996 () Bool)

(assert (=> d!1769996 (= c!981820 (and ((_ is ElementMatch!15585) (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))) (= (c!981334 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))) (h!69380 s!2326))))))

(assert (=> d!1769996 (= (derivationStepZipperDown!927 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292)))))) (ite (or c!981494 c!981496) lt!2256515 (Context!9939 call!419889)) (h!69380 s!2326)) e!3453939)))

(declare-fun bm!420115 () Bool)

(assert (=> bm!420115 (= call!420122 (derivationStepZipperDown!927 (ite c!981819 (regTwo!31683 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))) (ite c!981821 (regTwo!31682 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))) (ite c!981818 (regOne!31682 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))) (reg!15914 (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292)))))))))) (ite (or c!981819 c!981821) (ite (or c!981494 c!981496) lt!2256515 (Context!9939 call!419889)) (Context!9939 call!420118)) (h!69380 s!2326)))))

(declare-fun b!5599275 () Bool)

(assert (=> b!5599275 (= e!3453937 call!420120)))

(declare-fun b!5599276 () Bool)

(assert (=> b!5599276 (= e!3453934 e!3453938)))

(assert (=> b!5599276 (= c!981818 ((_ is Concat!24430) (ite c!981494 (regTwo!31683 (regOne!31683 (regOne!31682 r!7292))) (ite c!981496 (regTwo!31682 (regOne!31683 (regOne!31682 r!7292))) (ite c!981493 (regOne!31682 (regOne!31683 (regOne!31682 r!7292))) (reg!15914 (regOne!31683 (regOne!31682 r!7292))))))))))

(assert (= (and d!1769996 c!981820) b!5599268))

(assert (= (and d!1769996 (not c!981820)) b!5599266))

(assert (= (and b!5599266 c!981819) b!5599273))

(assert (= (and b!5599266 (not c!981819)) b!5599271))

(assert (= (and b!5599271 res!2374909) b!5599274))

(assert (= (and b!5599271 c!981821) b!5599269))

(assert (= (and b!5599271 (not c!981821)) b!5599276))

(assert (= (and b!5599276 c!981818) b!5599272))

(assert (= (and b!5599276 (not c!981818)) b!5599270))

(assert (= (and b!5599270 c!981817) b!5599275))

(assert (= (and b!5599270 (not c!981817)) b!5599267))

(assert (= (or b!5599272 b!5599275) bm!420113))

(assert (= (or b!5599272 b!5599275) bm!420116))

(assert (= (or b!5599269 bm!420113) bm!420112))

(assert (= (or b!5599269 bm!420116) bm!420114))

(assert (= (or b!5599273 bm!420114) bm!420115))

(assert (= (or b!5599273 b!5599269) bm!420117))

(declare-fun m!6578100 () Bool)

(assert (=> bm!420117 m!6578100))

(declare-fun m!6578102 () Bool)

(assert (=> bm!420112 m!6578102))

(declare-fun m!6578104 () Bool)

(assert (=> b!5599274 m!6578104))

(declare-fun m!6578106 () Bool)

(assert (=> b!5599268 m!6578106))

(declare-fun m!6578108 () Bool)

(assert (=> bm!420115 m!6578108))

(assert (=> bm!419886 d!1769996))

(assert (=> bs!1294283 d!1769510))

(declare-fun b!5599277 () Bool)

(declare-fun e!3453945 () Bool)

(declare-fun call!420125 () Bool)

(assert (=> b!5599277 (= e!3453945 call!420125)))

(declare-fun d!1769998 () Bool)

(declare-fun res!2374911 () Bool)

(declare-fun e!3453946 () Bool)

(assert (=> d!1769998 (=> res!2374911 e!3453946)))

(assert (=> d!1769998 (= res!2374911 ((_ is ElementMatch!15585) (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))))))

(assert (=> d!1769998 (= (validRegex!7321 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))) e!3453946)))

(declare-fun b!5599278 () Bool)

(declare-fun res!2374912 () Bool)

(declare-fun e!3453941 () Bool)

(assert (=> b!5599278 (=> (not res!2374912) (not e!3453941))))

(declare-fun call!420123 () Bool)

(assert (=> b!5599278 (= res!2374912 call!420123)))

(declare-fun e!3453943 () Bool)

(assert (=> b!5599278 (= e!3453943 e!3453941)))

(declare-fun b!5599279 () Bool)

(declare-fun res!2374910 () Bool)

(declare-fun e!3453940 () Bool)

(assert (=> b!5599279 (=> res!2374910 e!3453940)))

(assert (=> b!5599279 (= res!2374910 (not ((_ is Concat!24430) (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292))))))))

(assert (=> b!5599279 (= e!3453943 e!3453940)))

(declare-fun b!5599280 () Bool)

(declare-fun e!3453944 () Bool)

(assert (=> b!5599280 (= e!3453946 e!3453944)))

(declare-fun c!981823 () Bool)

(assert (=> b!5599280 (= c!981823 ((_ is Star!15585) (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))))))

(declare-fun b!5599281 () Bool)

(declare-fun e!3453942 () Bool)

(declare-fun call!420124 () Bool)

(assert (=> b!5599281 (= e!3453942 call!420124)))

(declare-fun b!5599282 () Bool)

(assert (=> b!5599282 (= e!3453944 e!3453942)))

(declare-fun res!2374913 () Bool)

(assert (=> b!5599282 (= res!2374913 (not (nullable!5617 (reg!15914 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))))))))

(assert (=> b!5599282 (=> (not res!2374913) (not e!3453942))))

(declare-fun c!981822 () Bool)

(declare-fun bm!420118 () Bool)

(assert (=> bm!420118 (= call!420124 (validRegex!7321 (ite c!981823 (reg!15914 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))) (ite c!981822 (regTwo!31683 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))) (regTwo!31682 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292))))))))))

(declare-fun b!5599283 () Bool)

(assert (=> b!5599283 (= e!3453941 call!420125)))

(declare-fun b!5599284 () Bool)

(assert (=> b!5599284 (= e!3453940 e!3453945)))

(declare-fun res!2374914 () Bool)

(assert (=> b!5599284 (=> (not res!2374914) (not e!3453945))))

(assert (=> b!5599284 (= res!2374914 call!420123)))

(declare-fun bm!420119 () Bool)

(assert (=> bm!420119 (= call!420123 (validRegex!7321 (ite c!981822 (regOne!31683 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))) (regOne!31682 (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))))))))

(declare-fun b!5599285 () Bool)

(assert (=> b!5599285 (= e!3453944 e!3453943)))

(assert (=> b!5599285 (= c!981822 ((_ is Union!15585) (ite c!981504 (reg!15914 r!7292) (ite c!981503 (regTwo!31683 r!7292) (regTwo!31682 r!7292)))))))

(declare-fun bm!420120 () Bool)

(assert (=> bm!420120 (= call!420125 call!420124)))

(assert (= (and d!1769998 (not res!2374911)) b!5599280))

(assert (= (and b!5599280 c!981823) b!5599282))

(assert (= (and b!5599280 (not c!981823)) b!5599285))

(assert (= (and b!5599282 res!2374913) b!5599281))

(assert (= (and b!5599285 c!981822) b!5599278))

(assert (= (and b!5599285 (not c!981822)) b!5599279))

(assert (= (and b!5599278 res!2374912) b!5599283))

(assert (= (and b!5599279 (not res!2374910)) b!5599284))

(assert (= (and b!5599284 res!2374914) b!5599277))

(assert (= (or b!5599283 b!5599277) bm!420120))

(assert (= (or b!5599278 b!5599284) bm!420119))

(assert (= (or b!5599281 bm!420120) bm!420118))

(declare-fun m!6578110 () Bool)

(assert (=> b!5599282 m!6578110))

(declare-fun m!6578112 () Bool)

(assert (=> bm!420118 m!6578112))

(declare-fun m!6578114 () Bool)

(assert (=> bm!420119 m!6578114))

(assert (=> bm!419895 d!1769998))

(assert (=> b!5598268 d!1769952))

(assert (=> b!5598268 d!1769872))

(assert (=> d!1769450 d!1769444))

(declare-fun d!1770000 () Bool)

(assert (=> d!1770000 (= (flatMap!1198 lt!2256508 lambda!300570) (dynLambda!24617 lambda!300570 lt!2256500))))

(assert (=> d!1770000 true))

(declare-fun _$13!2222 () Unit!155772)

(assert (=> d!1770000 (= (choose!42456 lt!2256508 lt!2256500 lambda!300570) _$13!2222)))

(declare-fun b_lambda!212181 () Bool)

(assert (=> (not b_lambda!212181) (not d!1770000)))

(declare-fun bs!1294654 () Bool)

(assert (= bs!1294654 d!1770000))

(assert (=> bs!1294654 m!6576542))

(assert (=> bs!1294654 m!6576902))

(assert (=> d!1769450 d!1770000))

(declare-fun bs!1294655 () Bool)

(declare-fun d!1770002 () Bool)

(assert (= bs!1294655 (and d!1770002 d!1769864)))

(declare-fun lambda!300699 () Int)

(assert (=> bs!1294655 (= lambda!300699 lambda!300680)))

(declare-fun bs!1294656 () Bool)

(assert (= bs!1294656 (and d!1770002 d!1769876)))

(assert (=> bs!1294656 (= lambda!300699 lambda!300681)))

(assert (=> d!1770002 (= (nullableZipper!1580 lt!2256521) (exists!2174 lt!2256521 lambda!300699))))

(declare-fun bs!1294657 () Bool)

(assert (= bs!1294657 d!1770002))

(declare-fun m!6578116 () Bool)

(assert (=> bs!1294657 m!6578116))

(assert (=> b!5598004 d!1770002))

(declare-fun b!5599286 () Bool)

(declare-fun e!3453947 () Bool)

(declare-fun lt!2256658 () Bool)

(assert (=> b!5599286 (= e!3453947 (not lt!2256658))))

(declare-fun b!5599287 () Bool)

(declare-fun e!3453951 () Bool)

(assert (=> b!5599287 (= e!3453951 (= (head!11939 (_1!35985 (get!21674 lt!2256591))) (c!981334 (regOne!31682 r!7292))))))

(declare-fun b!5599289 () Bool)

(declare-fun e!3453950 () Bool)

(assert (=> b!5599289 (= e!3453950 (not (= (head!11939 (_1!35985 (get!21674 lt!2256591))) (c!981334 (regOne!31682 r!7292)))))))

(declare-fun b!5599290 () Bool)

(declare-fun res!2374917 () Bool)

(declare-fun e!3453952 () Bool)

(assert (=> b!5599290 (=> res!2374917 e!3453952)))

(assert (=> b!5599290 (= res!2374917 e!3453951)))

(declare-fun res!2374920 () Bool)

(assert (=> b!5599290 (=> (not res!2374920) (not e!3453951))))

(assert (=> b!5599290 (= res!2374920 lt!2256658)))

(declare-fun b!5599291 () Bool)

(declare-fun e!3453949 () Bool)

(assert (=> b!5599291 (= e!3453949 e!3453950)))

(declare-fun res!2374915 () Bool)

(assert (=> b!5599291 (=> res!2374915 e!3453950)))

(declare-fun call!420126 () Bool)

(assert (=> b!5599291 (= res!2374915 call!420126)))

(declare-fun b!5599292 () Bool)

(assert (=> b!5599292 (= e!3453952 e!3453949)))

(declare-fun res!2374918 () Bool)

(assert (=> b!5599292 (=> (not res!2374918) (not e!3453949))))

(assert (=> b!5599292 (= res!2374918 (not lt!2256658))))

(declare-fun b!5599293 () Bool)

(declare-fun e!3453953 () Bool)

(assert (=> b!5599293 (= e!3453953 (= lt!2256658 call!420126))))

(declare-fun b!5599294 () Bool)

(declare-fun res!2374916 () Bool)

(assert (=> b!5599294 (=> res!2374916 e!3453952)))

(assert (=> b!5599294 (= res!2374916 (not ((_ is ElementMatch!15585) (regOne!31682 r!7292))))))

(assert (=> b!5599294 (= e!3453947 e!3453952)))

(declare-fun b!5599295 () Bool)

(declare-fun res!2374919 () Bool)

(assert (=> b!5599295 (=> (not res!2374919) (not e!3453951))))

(assert (=> b!5599295 (= res!2374919 (not call!420126))))

(declare-fun b!5599296 () Bool)

(declare-fun e!3453948 () Bool)

(assert (=> b!5599296 (= e!3453948 (nullable!5617 (regOne!31682 r!7292)))))

(declare-fun b!5599297 () Bool)

(assert (=> b!5599297 (= e!3453948 (matchR!7770 (derivativeStep!4433 (regOne!31682 r!7292) (head!11939 (_1!35985 (get!21674 lt!2256591)))) (tail!11034 (_1!35985 (get!21674 lt!2256591)))))))

(declare-fun bm!420121 () Bool)

(assert (=> bm!420121 (= call!420126 (isEmpty!34758 (_1!35985 (get!21674 lt!2256591))))))

(declare-fun d!1770004 () Bool)

(assert (=> d!1770004 e!3453953))

(declare-fun c!981825 () Bool)

(assert (=> d!1770004 (= c!981825 ((_ is EmptyExpr!15585) (regOne!31682 r!7292)))))

(assert (=> d!1770004 (= lt!2256658 e!3453948)))

(declare-fun c!981824 () Bool)

(assert (=> d!1770004 (= c!981824 (isEmpty!34758 (_1!35985 (get!21674 lt!2256591))))))

(assert (=> d!1770004 (validRegex!7321 (regOne!31682 r!7292))))

(assert (=> d!1770004 (= (matchR!7770 (regOne!31682 r!7292) (_1!35985 (get!21674 lt!2256591))) lt!2256658)))

(declare-fun b!5599288 () Bool)

(declare-fun res!2374921 () Bool)

(assert (=> b!5599288 (=> (not res!2374921) (not e!3453951))))

(assert (=> b!5599288 (= res!2374921 (isEmpty!34758 (tail!11034 (_1!35985 (get!21674 lt!2256591)))))))

(declare-fun b!5599298 () Bool)

(declare-fun res!2374922 () Bool)

(assert (=> b!5599298 (=> res!2374922 e!3453950)))

(assert (=> b!5599298 (= res!2374922 (not (isEmpty!34758 (tail!11034 (_1!35985 (get!21674 lt!2256591))))))))

(declare-fun b!5599299 () Bool)

(assert (=> b!5599299 (= e!3453953 e!3453947)))

(declare-fun c!981826 () Bool)

(assert (=> b!5599299 (= c!981826 ((_ is EmptyLang!15585) (regOne!31682 r!7292)))))

(assert (= (and d!1770004 c!981824) b!5599296))

(assert (= (and d!1770004 (not c!981824)) b!5599297))

(assert (= (and d!1770004 c!981825) b!5599293))

(assert (= (and d!1770004 (not c!981825)) b!5599299))

(assert (= (and b!5599299 c!981826) b!5599286))

(assert (= (and b!5599299 (not c!981826)) b!5599294))

(assert (= (and b!5599294 (not res!2374916)) b!5599290))

(assert (= (and b!5599290 res!2374920) b!5599295))

(assert (= (and b!5599295 res!2374919) b!5599288))

(assert (= (and b!5599288 res!2374921) b!5599287))

(assert (= (and b!5599290 (not res!2374917)) b!5599292))

(assert (= (and b!5599292 res!2374918) b!5599291))

(assert (= (and b!5599291 (not res!2374915)) b!5599298))

(assert (= (and b!5599298 (not res!2374922)) b!5599289))

(assert (= (or b!5599293 b!5599291 b!5599295) bm!420121))

(assert (=> b!5599296 m!6577822))

(declare-fun m!6578118 () Bool)

(assert (=> b!5599288 m!6578118))

(assert (=> b!5599288 m!6578118))

(declare-fun m!6578120 () Bool)

(assert (=> b!5599288 m!6578120))

(declare-fun m!6578122 () Bool)

(assert (=> d!1770004 m!6578122))

(assert (=> d!1770004 m!6577010))

(assert (=> b!5599298 m!6578118))

(assert (=> b!5599298 m!6578118))

(assert (=> b!5599298 m!6578120))

(declare-fun m!6578124 () Bool)

(assert (=> b!5599287 m!6578124))

(assert (=> b!5599297 m!6578124))

(assert (=> b!5599297 m!6578124))

(declare-fun m!6578126 () Bool)

(assert (=> b!5599297 m!6578126))

(assert (=> b!5599297 m!6578118))

(assert (=> b!5599297 m!6578126))

(assert (=> b!5599297 m!6578118))

(declare-fun m!6578128 () Bool)

(assert (=> b!5599297 m!6578128))

(assert (=> b!5599289 m!6578124))

(assert (=> bm!420121 m!6578122))

(assert (=> b!5598102 d!1770004))

(assert (=> b!5598102 d!1769856))

(assert (=> b!5598140 d!1769502))

(declare-fun d!1770006 () Bool)

(assert (=> d!1770006 (= (nullable!5617 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))) (nullableFct!1726 (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343))))))))

(declare-fun bs!1294658 () Bool)

(assert (= bs!1294658 d!1770006))

(declare-fun m!6578130 () Bool)

(assert (=> bs!1294658 m!6578130))

(assert (=> b!5598136 d!1770006))

(assert (=> d!1769462 d!1769850))

(declare-fun bs!1294659 () Bool)

(declare-fun d!1770008 () Bool)

(assert (= bs!1294659 (and d!1770008 d!1769864)))

(declare-fun lambda!300700 () Int)

(assert (=> bs!1294659 (= lambda!300700 lambda!300680)))

(declare-fun bs!1294660 () Bool)

(assert (= bs!1294660 (and d!1770008 d!1769876)))

(assert (=> bs!1294660 (= lambda!300700 lambda!300681)))

(declare-fun bs!1294661 () Bool)

(assert (= bs!1294661 (and d!1770008 d!1770002)))

(assert (=> bs!1294661 (= lambda!300700 lambda!300699)))

(assert (=> d!1770008 (= (nullableZipper!1580 lt!2256522) (exists!2174 lt!2256522 lambda!300700))))

(declare-fun bs!1294662 () Bool)

(assert (= bs!1294662 d!1770008))

(declare-fun m!6578132 () Bool)

(assert (=> bs!1294662 m!6578132))

(assert (=> b!5598054 d!1770008))

(declare-fun d!1770010 () Bool)

(assert (=> d!1770010 true))

(assert (=> d!1770010 true))

(declare-fun res!2374925 () Bool)

(assert (=> d!1770010 (= (choose!42457 lambda!300568) res!2374925)))

(assert (=> d!1769490 d!1770010))

(declare-fun c!981828 () Bool)

(declare-fun bm!420122 () Bool)

(declare-fun call!420127 () List!63054)

(declare-fun c!981831 () Bool)

(assert (=> bm!420122 (= call!420127 ($colon$colon!1648 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256515)))) (ite (or c!981831 c!981828) (regTwo!31682 (h!69378 (exprs!5469 lt!2256515))) (h!69378 (exprs!5469 lt!2256515)))))))

(declare-fun b!5599300 () Bool)

(declare-fun e!3453959 () (InoxSet Context!9938))

(declare-fun e!3453955 () (InoxSet Context!9938))

(assert (=> b!5599300 (= e!3453959 e!3453955)))

(declare-fun c!981829 () Bool)

(assert (=> b!5599300 (= c!981829 ((_ is Union!15585) (h!69378 (exprs!5469 lt!2256515))))))

(declare-fun b!5599301 () Bool)

(declare-fun e!3453957 () (InoxSet Context!9938))

(assert (=> b!5599301 (= e!3453957 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599302 () Bool)

(assert (=> b!5599302 (= e!3453959 (store ((as const (Array Context!9938 Bool)) false) (Context!9939 (t!376338 (exprs!5469 lt!2256515))) true))))

(declare-fun b!5599303 () Bool)

(declare-fun e!3453954 () (InoxSet Context!9938))

(declare-fun call!420131 () (InoxSet Context!9938))

(declare-fun call!420129 () (InoxSet Context!9938))

(assert (=> b!5599303 (= e!3453954 ((_ map or) call!420131 call!420129))))

(declare-fun bm!420123 () Bool)

(declare-fun call!420128 () List!63054)

(assert (=> bm!420123 (= call!420128 call!420127)))

(declare-fun b!5599304 () Bool)

(declare-fun c!981827 () Bool)

(assert (=> b!5599304 (= c!981827 ((_ is Star!15585) (h!69378 (exprs!5469 lt!2256515))))))

(declare-fun e!3453958 () (InoxSet Context!9938))

(assert (=> b!5599304 (= e!3453958 e!3453957)))

(declare-fun bm!420124 () Bool)

(declare-fun call!420132 () (InoxSet Context!9938))

(assert (=> bm!420124 (= call!420129 call!420132)))

(declare-fun b!5599305 () Bool)

(declare-fun e!3453956 () Bool)

(assert (=> b!5599305 (= c!981831 e!3453956)))

(declare-fun res!2374926 () Bool)

(assert (=> b!5599305 (=> (not res!2374926) (not e!3453956))))

(assert (=> b!5599305 (= res!2374926 ((_ is Concat!24430) (h!69378 (exprs!5469 lt!2256515))))))

(assert (=> b!5599305 (= e!3453955 e!3453954)))

(declare-fun b!5599306 () Bool)

(declare-fun call!420130 () (InoxSet Context!9938))

(assert (=> b!5599306 (= e!3453958 call!420130)))

(declare-fun bm!420126 () Bool)

(assert (=> bm!420126 (= call!420130 call!420129)))

(declare-fun bm!420127 () Bool)

(assert (=> bm!420127 (= call!420131 (derivationStepZipperDown!927 (ite c!981829 (regOne!31683 (h!69378 (exprs!5469 lt!2256515))) (regOne!31682 (h!69378 (exprs!5469 lt!2256515)))) (ite c!981829 (Context!9939 (t!376338 (exprs!5469 lt!2256515))) (Context!9939 call!420127)) (h!69380 s!2326)))))

(declare-fun b!5599307 () Bool)

(assert (=> b!5599307 (= e!3453955 ((_ map or) call!420131 call!420132))))

(declare-fun b!5599308 () Bool)

(assert (=> b!5599308 (= e!3453956 (nullable!5617 (regOne!31682 (h!69378 (exprs!5469 lt!2256515)))))))

(declare-fun d!1770012 () Bool)

(declare-fun c!981830 () Bool)

(assert (=> d!1770012 (= c!981830 (and ((_ is ElementMatch!15585) (h!69378 (exprs!5469 lt!2256515))) (= (c!981334 (h!69378 (exprs!5469 lt!2256515))) (h!69380 s!2326))))))

(assert (=> d!1770012 (= (derivationStepZipperDown!927 (h!69378 (exprs!5469 lt!2256515)) (Context!9939 (t!376338 (exprs!5469 lt!2256515))) (h!69380 s!2326)) e!3453959)))

(declare-fun bm!420125 () Bool)

(assert (=> bm!420125 (= call!420132 (derivationStepZipperDown!927 (ite c!981829 (regTwo!31683 (h!69378 (exprs!5469 lt!2256515))) (ite c!981831 (regTwo!31682 (h!69378 (exprs!5469 lt!2256515))) (ite c!981828 (regOne!31682 (h!69378 (exprs!5469 lt!2256515))) (reg!15914 (h!69378 (exprs!5469 lt!2256515)))))) (ite (or c!981829 c!981831) (Context!9939 (t!376338 (exprs!5469 lt!2256515))) (Context!9939 call!420128)) (h!69380 s!2326)))))

(declare-fun b!5599309 () Bool)

(assert (=> b!5599309 (= e!3453957 call!420130)))

(declare-fun b!5599310 () Bool)

(assert (=> b!5599310 (= e!3453954 e!3453958)))

(assert (=> b!5599310 (= c!981828 ((_ is Concat!24430) (h!69378 (exprs!5469 lt!2256515))))))

(assert (= (and d!1770012 c!981830) b!5599302))

(assert (= (and d!1770012 (not c!981830)) b!5599300))

(assert (= (and b!5599300 c!981829) b!5599307))

(assert (= (and b!5599300 (not c!981829)) b!5599305))

(assert (= (and b!5599305 res!2374926) b!5599308))

(assert (= (and b!5599305 c!981831) b!5599303))

(assert (= (and b!5599305 (not c!981831)) b!5599310))

(assert (= (and b!5599310 c!981828) b!5599306))

(assert (= (and b!5599310 (not c!981828)) b!5599304))

(assert (= (and b!5599304 c!981827) b!5599309))

(assert (= (and b!5599304 (not c!981827)) b!5599301))

(assert (= (or b!5599306 b!5599309) bm!420123))

(assert (= (or b!5599306 b!5599309) bm!420126))

(assert (= (or b!5599303 bm!420123) bm!420122))

(assert (= (or b!5599303 bm!420126) bm!420124))

(assert (= (or b!5599307 bm!420124) bm!420125))

(assert (= (or b!5599307 b!5599303) bm!420127))

(declare-fun m!6578134 () Bool)

(assert (=> bm!420127 m!6578134))

(declare-fun m!6578136 () Bool)

(assert (=> bm!420122 m!6578136))

(declare-fun m!6578138 () Bool)

(assert (=> b!5599308 m!6578138))

(declare-fun m!6578140 () Bool)

(assert (=> b!5599302 m!6578140))

(declare-fun m!6578142 () Bool)

(assert (=> bm!420125 m!6578142))

(assert (=> bm!419906 d!1770012))

(declare-fun d!1770014 () Bool)

(assert (=> d!1770014 (= (isEmptyExpr!1139 lt!2256579) ((_ is EmptyExpr!15585) lt!2256579))))

(assert (=> b!5597999 d!1770014))

(declare-fun d!1770016 () Bool)

(declare-fun c!981832 () Bool)

(assert (=> d!1770016 (= c!981832 (isEmpty!34758 (t!376340 s!2326)))))

(declare-fun e!3453960 () Bool)

(assert (=> d!1770016 (= (matchZipper!1723 ((_ map or) lt!2256522 lt!2256505) (t!376340 s!2326)) e!3453960)))

(declare-fun b!5599311 () Bool)

(assert (=> b!5599311 (= e!3453960 (nullableZipper!1580 ((_ map or) lt!2256522 lt!2256505)))))

(declare-fun b!5599312 () Bool)

(assert (=> b!5599312 (= e!3453960 (matchZipper!1723 (derivationStepZipper!1684 ((_ map or) lt!2256522 lt!2256505) (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))))))

(assert (= (and d!1770016 c!981832) b!5599311))

(assert (= (and d!1770016 (not c!981832)) b!5599312))

(assert (=> d!1770016 m!6576860))

(declare-fun m!6578144 () Bool)

(assert (=> b!5599311 m!6578144))

(assert (=> b!5599312 m!6576864))

(assert (=> b!5599312 m!6576864))

(declare-fun m!6578146 () Bool)

(assert (=> b!5599312 m!6578146))

(assert (=> b!5599312 m!6576868))

(assert (=> b!5599312 m!6578146))

(assert (=> b!5599312 m!6576868))

(declare-fun m!6578148 () Bool)

(assert (=> b!5599312 m!6578148))

(assert (=> d!1769480 d!1770016))

(assert (=> d!1769480 d!1769478))

(declare-fun d!1770018 () Bool)

(declare-fun e!3453961 () Bool)

(assert (=> d!1770018 (= (matchZipper!1723 ((_ map or) lt!2256522 lt!2256505) (t!376340 s!2326)) e!3453961)))

(declare-fun res!2374927 () Bool)

(assert (=> d!1770018 (=> res!2374927 e!3453961)))

(assert (=> d!1770018 (= res!2374927 (matchZipper!1723 lt!2256522 (t!376340 s!2326)))))

(assert (=> d!1770018 true))

(declare-fun _$48!1210 () Unit!155772)

(assert (=> d!1770018 (= (choose!42454 lt!2256522 lt!2256505 (t!376340 s!2326)) _$48!1210)))

(declare-fun b!5599313 () Bool)

(assert (=> b!5599313 (= e!3453961 (matchZipper!1723 lt!2256505 (t!376340 s!2326)))))

(assert (= (and d!1770018 (not res!2374927)) b!5599313))

(assert (=> d!1770018 m!6576988))

(assert (=> d!1770018 m!6576506))

(assert (=> b!5599313 m!6576452))

(assert (=> d!1769480 d!1770018))

(declare-fun bs!1294663 () Bool)

(declare-fun d!1770020 () Bool)

(assert (= bs!1294663 (and d!1770020 d!1769864)))

(declare-fun lambda!300701 () Int)

(assert (=> bs!1294663 (= lambda!300701 lambda!300680)))

(declare-fun bs!1294664 () Bool)

(assert (= bs!1294664 (and d!1770020 d!1769876)))

(assert (=> bs!1294664 (= lambda!300701 lambda!300681)))

(declare-fun bs!1294665 () Bool)

(assert (= bs!1294665 (and d!1770020 d!1770002)))

(assert (=> bs!1294665 (= lambda!300701 lambda!300699)))

(declare-fun bs!1294666 () Bool)

(assert (= bs!1294666 (and d!1770020 d!1770008)))

(assert (=> bs!1294666 (= lambda!300701 lambda!300700)))

(assert (=> d!1770020 (= (nullableZipper!1580 lt!2256511) (exists!2174 lt!2256511 lambda!300701))))

(declare-fun bs!1294667 () Bool)

(assert (= bs!1294667 d!1770020))

(declare-fun m!6578150 () Bool)

(assert (=> bs!1294667 m!6578150))

(assert (=> b!5598052 d!1770020))

(declare-fun d!1770022 () Bool)

(declare-fun c!981833 () Bool)

(assert (=> d!1770022 (= c!981833 (isEmpty!34758 (tail!11034 s!2326)))))

(declare-fun e!3453962 () Bool)

(assert (=> d!1770022 (= (matchZipper!1723 (derivationStepZipper!1684 lt!2256508 (head!11939 s!2326)) (tail!11034 s!2326)) e!3453962)))

(declare-fun b!5599314 () Bool)

(assert (=> b!5599314 (= e!3453962 (nullableZipper!1580 (derivationStepZipper!1684 lt!2256508 (head!11939 s!2326))))))

(declare-fun b!5599315 () Bool)

(assert (=> b!5599315 (= e!3453962 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 lt!2256508 (head!11939 s!2326)) (head!11939 (tail!11034 s!2326))) (tail!11034 (tail!11034 s!2326))))))

(assert (= (and d!1770022 c!981833) b!5599314))

(assert (= (and d!1770022 (not c!981833)) b!5599315))

(assert (=> d!1770022 m!6576854))

(assert (=> d!1770022 m!6577108))

(assert (=> b!5599314 m!6576852))

(declare-fun m!6578152 () Bool)

(assert (=> b!5599314 m!6578152))

(assert (=> b!5599315 m!6576854))

(assert (=> b!5599315 m!6577814))

(assert (=> b!5599315 m!6576852))

(assert (=> b!5599315 m!6577814))

(declare-fun m!6578154 () Bool)

(assert (=> b!5599315 m!6578154))

(assert (=> b!5599315 m!6576854))

(assert (=> b!5599315 m!6577808))

(assert (=> b!5599315 m!6578154))

(assert (=> b!5599315 m!6577808))

(declare-fun m!6578156 () Bool)

(assert (=> b!5599315 m!6578156))

(assert (=> b!5597939 d!1770022))

(declare-fun bs!1294668 () Bool)

(declare-fun d!1770024 () Bool)

(assert (= bs!1294668 (and d!1770024 d!1769916)))

(declare-fun lambda!300702 () Int)

(assert (=> bs!1294668 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300702 lambda!300686))))

(declare-fun bs!1294669 () Bool)

(assert (= bs!1294669 (and d!1770024 d!1769904)))

(assert (=> bs!1294669 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300702 lambda!300685))))

(declare-fun bs!1294670 () Bool)

(assert (= bs!1294670 (and d!1770024 b!5597513)))

(assert (=> bs!1294670 (= (= (head!11939 s!2326) (h!69380 s!2326)) (= lambda!300702 lambda!300570))))

(declare-fun bs!1294671 () Bool)

(assert (= bs!1294671 (and d!1770024 d!1769936)))

(assert (=> bs!1294671 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300702 lambda!300688))))

(declare-fun bs!1294672 () Bool)

(assert (= bs!1294672 (and d!1770024 d!1769980)))

(assert (=> bs!1294672 (= lambda!300702 lambda!300695)))

(declare-fun bs!1294673 () Bool)

(assert (= bs!1294673 (and d!1770024 d!1769990)))

(assert (=> bs!1294673 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300702 lambda!300698))))

(declare-fun bs!1294674 () Bool)

(assert (= bs!1294674 (and d!1770024 d!1769984)))

(assert (=> bs!1294674 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300702 lambda!300696))))

(declare-fun bs!1294675 () Bool)

(assert (= bs!1294675 (and d!1770024 d!1769920)))

(assert (=> bs!1294675 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300702 lambda!300687))))

(declare-fun bs!1294676 () Bool)

(assert (= bs!1294676 (and d!1770024 d!1769956)))

(assert (=> bs!1294676 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300702 lambda!300691))))

(assert (=> d!1770024 true))

(assert (=> d!1770024 (= (derivationStepZipper!1684 lt!2256508 (head!11939 s!2326)) (flatMap!1198 lt!2256508 lambda!300702))))

(declare-fun bs!1294677 () Bool)

(assert (= bs!1294677 d!1770024))

(declare-fun m!6578158 () Bool)

(assert (=> bs!1294677 m!6578158))

(assert (=> b!5597939 d!1770024))

(assert (=> b!5597939 d!1769870))

(assert (=> b!5597939 d!1769872))

(declare-fun d!1770026 () Bool)

(assert (=> d!1770026 (= (nullable!5617 (h!69378 (exprs!5469 lt!2256500))) (nullableFct!1726 (h!69378 (exprs!5469 lt!2256500))))))

(declare-fun bs!1294678 () Bool)

(assert (= bs!1294678 d!1770026))

(declare-fun m!6578160 () Bool)

(assert (=> bs!1294678 m!6578160))

(assert (=> b!5597958 d!1770026))

(declare-fun d!1770028 () Bool)

(assert (=> d!1770028 (= (nullable!5617 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))) (nullableFct!1726 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))))))

(declare-fun bs!1294679 () Bool)

(assert (= bs!1294679 d!1770028))

(declare-fun m!6578162 () Bool)

(assert (=> bs!1294679 m!6578162))

(assert (=> b!5598038 d!1770028))

(declare-fun d!1770030 () Bool)

(assert (=> d!1770030 (= (nullable!5617 (h!69378 (exprs!5469 lt!2256520))) (nullableFct!1726 (h!69378 (exprs!5469 lt!2256520))))))

(declare-fun bs!1294680 () Bool)

(assert (= bs!1294680 d!1770030))

(declare-fun m!6578164 () Bool)

(assert (=> bs!1294680 m!6578164))

(assert (=> b!5597967 d!1770030))

(declare-fun bs!1294681 () Bool)

(declare-fun d!1770032 () Bool)

(assert (= bs!1294681 (and d!1770032 d!1770020)))

(declare-fun lambda!300703 () Int)

(assert (=> bs!1294681 (= lambda!300703 lambda!300701)))

(declare-fun bs!1294682 () Bool)

(assert (= bs!1294682 (and d!1770032 d!1769864)))

(assert (=> bs!1294682 (= lambda!300703 lambda!300680)))

(declare-fun bs!1294683 () Bool)

(assert (= bs!1294683 (and d!1770032 d!1770008)))

(assert (=> bs!1294683 (= lambda!300703 lambda!300700)))

(declare-fun bs!1294684 () Bool)

(assert (= bs!1294684 (and d!1770032 d!1770002)))

(assert (=> bs!1294684 (= lambda!300703 lambda!300699)))

(declare-fun bs!1294685 () Bool)

(assert (= bs!1294685 (and d!1770032 d!1769876)))

(assert (=> bs!1294685 (= lambda!300703 lambda!300681)))

(assert (=> d!1770032 (= (nullableZipper!1580 ((_ map or) lt!2256522 lt!2256516)) (exists!2174 ((_ map or) lt!2256522 lt!2256516) lambda!300703))))

(declare-fun bs!1294686 () Bool)

(assert (= bs!1294686 d!1770032))

(declare-fun m!6578166 () Bool)

(assert (=> bs!1294686 m!6578166))

(assert (=> b!5597943 d!1770032))

(assert (=> d!1769492 d!1769486))

(assert (=> d!1769492 d!1769836))

(assert (=> d!1769492 d!1769496))

(declare-fun d!1770034 () Bool)

(assert (=> d!1770034 (= (Exists!2685 lambda!300604) (choose!42457 lambda!300604))))

(declare-fun bs!1294687 () Bool)

(assert (= bs!1294687 d!1770034))

(declare-fun m!6578168 () Bool)

(assert (=> bs!1294687 m!6578168))

(assert (=> d!1769492 d!1770034))

(declare-fun bs!1294688 () Bool)

(declare-fun d!1770036 () Bool)

(assert (= bs!1294688 (and d!1770036 d!1769834)))

(declare-fun lambda!300706 () Int)

(assert (=> bs!1294688 (not (= lambda!300706 lambda!300676))))

(declare-fun bs!1294689 () Bool)

(assert (= bs!1294689 (and d!1770036 b!5597514)))

(assert (=> bs!1294689 (not (= lambda!300706 lambda!300569))))

(declare-fun bs!1294690 () Bool)

(assert (= bs!1294690 (and d!1770036 b!5599244)))

(assert (=> bs!1294690 (not (= lambda!300706 lambda!300694))))

(declare-fun bs!1294691 () Bool)

(assert (= bs!1294691 (and d!1770036 d!1769494)))

(assert (=> bs!1294691 (= lambda!300706 lambda!300609)))

(declare-fun bs!1294692 () Bool)

(assert (= bs!1294692 (and d!1770036 b!5599198)))

(assert (=> bs!1294692 (not (= lambda!300706 lambda!300690))))

(declare-fun bs!1294693 () Bool)

(assert (= bs!1294693 (and d!1770036 b!5599196)))

(assert (=> bs!1294693 (not (= lambda!300706 lambda!300689))))

(declare-fun bs!1294694 () Bool)

(assert (= bs!1294694 (and d!1770036 b!5598222)))

(assert (=> bs!1294694 (not (= lambda!300706 lambda!300625))))

(assert (=> bs!1294688 (= lambda!300706 lambda!300675)))

(assert (=> bs!1294691 (not (= lambda!300706 lambda!300610))))

(declare-fun bs!1294695 () Bool)

(assert (= bs!1294695 (and d!1770036 d!1769492)))

(assert (=> bs!1294695 (= lambda!300706 lambda!300604)))

(declare-fun bs!1294696 () Bool)

(assert (= bs!1294696 (and d!1770036 b!5599242)))

(assert (=> bs!1294696 (not (= lambda!300706 lambda!300693))))

(assert (=> bs!1294689 (= lambda!300706 lambda!300568)))

(declare-fun bs!1294697 () Bool)

(assert (= bs!1294697 (and d!1770036 b!5598224)))

(assert (=> bs!1294697 (not (= lambda!300706 lambda!300626))))

(assert (=> d!1770036 true))

(assert (=> d!1770036 true))

(assert (=> d!1770036 true))

(assert (=> d!1770036 (= (isDefined!12297 (findConcatSeparation!2008 (regOne!31682 r!7292) (regTwo!31682 r!7292) Nil!62932 s!2326 s!2326)) (Exists!2685 lambda!300706))))

(assert (=> d!1770036 true))

(declare-fun _$89!1719 () Unit!155772)

(assert (=> d!1770036 (= (choose!42458 (regOne!31682 r!7292) (regTwo!31682 r!7292) s!2326) _$89!1719)))

(declare-fun bs!1294698 () Bool)

(assert (= bs!1294698 d!1770036))

(assert (=> bs!1294698 m!6576520))

(assert (=> bs!1294698 m!6576520))

(assert (=> bs!1294698 m!6576522))

(declare-fun m!6578170 () Bool)

(assert (=> bs!1294698 m!6578170))

(assert (=> d!1769492 d!1770036))

(declare-fun d!1770038 () Bool)

(assert (=> d!1770038 (= (isDefined!12297 lt!2256591) (not (isEmpty!34759 lt!2256591)))))

(declare-fun bs!1294699 () Bool)

(assert (= bs!1294699 d!1770038))

(declare-fun m!6578172 () Bool)

(assert (=> bs!1294699 m!6578172))

(assert (=> d!1769486 d!1770038))

(declare-fun b!5599320 () Bool)

(declare-fun e!3453965 () Bool)

(declare-fun lt!2256659 () Bool)

(assert (=> b!5599320 (= e!3453965 (not lt!2256659))))

(declare-fun b!5599321 () Bool)

(declare-fun e!3453969 () Bool)

(assert (=> b!5599321 (= e!3453969 (= (head!11939 Nil!62932) (c!981334 (regOne!31682 r!7292))))))

(declare-fun b!5599323 () Bool)

(declare-fun e!3453968 () Bool)

(assert (=> b!5599323 (= e!3453968 (not (= (head!11939 Nil!62932) (c!981334 (regOne!31682 r!7292)))))))

(declare-fun b!5599324 () Bool)

(declare-fun res!2374934 () Bool)

(declare-fun e!3453970 () Bool)

(assert (=> b!5599324 (=> res!2374934 e!3453970)))

(assert (=> b!5599324 (= res!2374934 e!3453969)))

(declare-fun res!2374937 () Bool)

(assert (=> b!5599324 (=> (not res!2374937) (not e!3453969))))

(assert (=> b!5599324 (= res!2374937 lt!2256659)))

(declare-fun b!5599325 () Bool)

(declare-fun e!3453967 () Bool)

(assert (=> b!5599325 (= e!3453967 e!3453968)))

(declare-fun res!2374932 () Bool)

(assert (=> b!5599325 (=> res!2374932 e!3453968)))

(declare-fun call!420133 () Bool)

(assert (=> b!5599325 (= res!2374932 call!420133)))

(declare-fun b!5599326 () Bool)

(assert (=> b!5599326 (= e!3453970 e!3453967)))

(declare-fun res!2374935 () Bool)

(assert (=> b!5599326 (=> (not res!2374935) (not e!3453967))))

(assert (=> b!5599326 (= res!2374935 (not lt!2256659))))

(declare-fun b!5599327 () Bool)

(declare-fun e!3453971 () Bool)

(assert (=> b!5599327 (= e!3453971 (= lt!2256659 call!420133))))

(declare-fun b!5599328 () Bool)

(declare-fun res!2374933 () Bool)

(assert (=> b!5599328 (=> res!2374933 e!3453970)))

(assert (=> b!5599328 (= res!2374933 (not ((_ is ElementMatch!15585) (regOne!31682 r!7292))))))

(assert (=> b!5599328 (= e!3453965 e!3453970)))

(declare-fun b!5599329 () Bool)

(declare-fun res!2374936 () Bool)

(assert (=> b!5599329 (=> (not res!2374936) (not e!3453969))))

(assert (=> b!5599329 (= res!2374936 (not call!420133))))

(declare-fun b!5599330 () Bool)

(declare-fun e!3453966 () Bool)

(assert (=> b!5599330 (= e!3453966 (nullable!5617 (regOne!31682 r!7292)))))

(declare-fun b!5599331 () Bool)

(assert (=> b!5599331 (= e!3453966 (matchR!7770 (derivativeStep!4433 (regOne!31682 r!7292) (head!11939 Nil!62932)) (tail!11034 Nil!62932)))))

(declare-fun bm!420128 () Bool)

(assert (=> bm!420128 (= call!420133 (isEmpty!34758 Nil!62932))))

(declare-fun d!1770040 () Bool)

(assert (=> d!1770040 e!3453971))

(declare-fun c!981835 () Bool)

(assert (=> d!1770040 (= c!981835 ((_ is EmptyExpr!15585) (regOne!31682 r!7292)))))

(assert (=> d!1770040 (= lt!2256659 e!3453966)))

(declare-fun c!981834 () Bool)

(assert (=> d!1770040 (= c!981834 (isEmpty!34758 Nil!62932))))

(assert (=> d!1770040 (validRegex!7321 (regOne!31682 r!7292))))

(assert (=> d!1770040 (= (matchR!7770 (regOne!31682 r!7292) Nil!62932) lt!2256659)))

(declare-fun b!5599322 () Bool)

(declare-fun res!2374938 () Bool)

(assert (=> b!5599322 (=> (not res!2374938) (not e!3453969))))

(assert (=> b!5599322 (= res!2374938 (isEmpty!34758 (tail!11034 Nil!62932)))))

(declare-fun b!5599332 () Bool)

(declare-fun res!2374939 () Bool)

(assert (=> b!5599332 (=> res!2374939 e!3453968)))

(assert (=> b!5599332 (= res!2374939 (not (isEmpty!34758 (tail!11034 Nil!62932))))))

(declare-fun b!5599333 () Bool)

(assert (=> b!5599333 (= e!3453971 e!3453965)))

(declare-fun c!981836 () Bool)

(assert (=> b!5599333 (= c!981836 ((_ is EmptyLang!15585) (regOne!31682 r!7292)))))

(assert (= (and d!1770040 c!981834) b!5599330))

(assert (= (and d!1770040 (not c!981834)) b!5599331))

(assert (= (and d!1770040 c!981835) b!5599327))

(assert (= (and d!1770040 (not c!981835)) b!5599333))

(assert (= (and b!5599333 c!981836) b!5599320))

(assert (= (and b!5599333 (not c!981836)) b!5599328))

(assert (= (and b!5599328 (not res!2374933)) b!5599324))

(assert (= (and b!5599324 res!2374937) b!5599329))

(assert (= (and b!5599329 res!2374936) b!5599322))

(assert (= (and b!5599322 res!2374938) b!5599321))

(assert (= (and b!5599324 (not res!2374934)) b!5599326))

(assert (= (and b!5599326 res!2374935) b!5599325))

(assert (= (and b!5599325 (not res!2374932)) b!5599332))

(assert (= (and b!5599332 (not res!2374939)) b!5599323))

(assert (= (or b!5599327 b!5599325 b!5599329) bm!420128))

(assert (=> b!5599330 m!6577822))

(declare-fun m!6578174 () Bool)

(assert (=> b!5599322 m!6578174))

(assert (=> b!5599322 m!6578174))

(declare-fun m!6578176 () Bool)

(assert (=> b!5599322 m!6578176))

(declare-fun m!6578178 () Bool)

(assert (=> d!1770040 m!6578178))

(assert (=> d!1770040 m!6577010))

(assert (=> b!5599332 m!6578174))

(assert (=> b!5599332 m!6578174))

(assert (=> b!5599332 m!6578176))

(declare-fun m!6578180 () Bool)

(assert (=> b!5599321 m!6578180))

(assert (=> b!5599331 m!6578180))

(assert (=> b!5599331 m!6578180))

(declare-fun m!6578182 () Bool)

(assert (=> b!5599331 m!6578182))

(assert (=> b!5599331 m!6578174))

(assert (=> b!5599331 m!6578182))

(assert (=> b!5599331 m!6578174))

(declare-fun m!6578184 () Bool)

(assert (=> b!5599331 m!6578184))

(assert (=> b!5599323 m!6578180))

(assert (=> bm!420128 m!6578178))

(assert (=> d!1769486 d!1770040))

(assert (=> d!1769486 d!1769836))

(declare-fun d!1770042 () Bool)

(assert (=> d!1770042 (= (nullable!5617 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))) (nullableFct!1726 (h!69378 (exprs!5469 (Context!9939 (Cons!62930 (h!69378 (exprs!5469 (h!69379 zl!343))) (t!376338 (exprs!5469 (h!69379 zl!343)))))))))))

(declare-fun bs!1294700 () Bool)

(assert (= bs!1294700 d!1770042))

(declare-fun m!6578186 () Bool)

(assert (=> bs!1294700 m!6578186))

(assert (=> b!5598124 d!1770042))

(assert (=> b!5598056 d!1769436))

(declare-fun bs!1294701 () Bool)

(declare-fun d!1770044 () Bool)

(assert (= bs!1294701 (and d!1770044 d!1770020)))

(declare-fun lambda!300707 () Int)

(assert (=> bs!1294701 (= lambda!300707 lambda!300701)))

(declare-fun bs!1294702 () Bool)

(assert (= bs!1294702 (and d!1770044 d!1769864)))

(assert (=> bs!1294702 (= lambda!300707 lambda!300680)))

(declare-fun bs!1294703 () Bool)

(assert (= bs!1294703 (and d!1770044 d!1770032)))

(assert (=> bs!1294703 (= lambda!300707 lambda!300703)))

(declare-fun bs!1294704 () Bool)

(assert (= bs!1294704 (and d!1770044 d!1770008)))

(assert (=> bs!1294704 (= lambda!300707 lambda!300700)))

(declare-fun bs!1294705 () Bool)

(assert (= bs!1294705 (and d!1770044 d!1770002)))

(assert (=> bs!1294705 (= lambda!300707 lambda!300699)))

(declare-fun bs!1294706 () Bool)

(assert (= bs!1294706 (and d!1770044 d!1769876)))

(assert (=> bs!1294706 (= lambda!300707 lambda!300681)))

(assert (=> d!1770044 (= (nullableZipper!1580 ((_ map or) lt!2256505 lt!2256516)) (exists!2174 ((_ map or) lt!2256505 lt!2256516) lambda!300707))))

(declare-fun bs!1294707 () Bool)

(assert (= bs!1294707 d!1770044))

(declare-fun m!6578188 () Bool)

(assert (=> bs!1294707 m!6578188))

(assert (=> b!5598271 d!1770044))

(declare-fun d!1770046 () Bool)

(assert (=> d!1770046 true))

(assert (=> d!1770046 true))

(declare-fun res!2374940 () Bool)

(assert (=> d!1770046 (= (choose!42457 lambda!300569) res!2374940)))

(assert (=> d!1769488 d!1770046))

(assert (=> b!5598257 d!1769870))

(assert (=> d!1769448 d!1769898))

(assert (=> d!1769464 d!1769468))

(assert (=> d!1769464 d!1769466))

(declare-fun d!1770048 () Bool)

(declare-fun e!3453972 () Bool)

(assert (=> d!1770048 (= (matchZipper!1723 ((_ map or) lt!2256521 lt!2256516) (t!376340 s!2326)) e!3453972)))

(declare-fun res!2374941 () Bool)

(assert (=> d!1770048 (=> res!2374941 e!3453972)))

(assert (=> d!1770048 (= res!2374941 (matchZipper!1723 lt!2256521 (t!376340 s!2326)))))

(assert (=> d!1770048 true))

(declare-fun _$48!1211 () Unit!155772)

(assert (=> d!1770048 (= (choose!42454 lt!2256521 lt!2256516 (t!376340 s!2326)) _$48!1211)))

(declare-fun b!5599334 () Bool)

(assert (=> b!5599334 (= e!3453972 (matchZipper!1723 lt!2256516 (t!376340 s!2326)))))

(assert (= (and d!1770048 (not res!2374941)) b!5599334))

(assert (=> d!1770048 m!6576474))

(assert (=> d!1770048 m!6576472))

(assert (=> b!5599334 m!6576478))

(assert (=> d!1769464 d!1770048))

(assert (=> d!1769468 d!1769850))

(declare-fun b!5599335 () Bool)

(declare-fun e!3453975 () (InoxSet Context!9938))

(assert (=> b!5599335 (= e!3453975 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599336 () Bool)

(declare-fun e!3453974 () Bool)

(assert (=> b!5599336 (= e!3453974 (nullable!5617 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256500)))))))))

(declare-fun b!5599337 () Bool)

(declare-fun call!420134 () (InoxSet Context!9938))

(assert (=> b!5599337 (= e!3453975 call!420134)))

(declare-fun d!1770050 () Bool)

(declare-fun c!981838 () Bool)

(assert (=> d!1770050 (= c!981838 e!3453974)))

(declare-fun res!2374942 () Bool)

(assert (=> d!1770050 (=> (not res!2374942) (not e!3453974))))

(assert (=> d!1770050 (= res!2374942 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256500))))))))

(declare-fun e!3453973 () (InoxSet Context!9938))

(assert (=> d!1770050 (= (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 lt!2256500))) (h!69380 s!2326)) e!3453973)))

(declare-fun bm!420129 () Bool)

(assert (=> bm!420129 (= call!420134 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256500))))) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256500)))))) (h!69380 s!2326)))))

(declare-fun b!5599338 () Bool)

(assert (=> b!5599338 (= e!3453973 e!3453975)))

(declare-fun c!981837 () Bool)

(assert (=> b!5599338 (= c!981837 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256500))))))))

(declare-fun b!5599339 () Bool)

(assert (=> b!5599339 (= e!3453973 ((_ map or) call!420134 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256500)))))) (h!69380 s!2326))))))

(assert (= (and d!1770050 res!2374942) b!5599336))

(assert (= (and d!1770050 c!981838) b!5599339))

(assert (= (and d!1770050 (not c!981838)) b!5599338))

(assert (= (and b!5599338 c!981837) b!5599337))

(assert (= (and b!5599338 (not c!981837)) b!5599335))

(assert (= (or b!5599339 b!5599337) bm!420129))

(declare-fun m!6578190 () Bool)

(assert (=> b!5599336 m!6578190))

(declare-fun m!6578192 () Bool)

(assert (=> bm!420129 m!6578192))

(declare-fun m!6578194 () Bool)

(assert (=> b!5599339 m!6578194))

(assert (=> b!5597961 d!1770050))

(declare-fun b!5599340 () Bool)

(declare-fun e!3453978 () (InoxSet Context!9938))

(assert (=> b!5599340 (= e!3453978 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599341 () Bool)

(declare-fun e!3453977 () Bool)

(assert (=> b!5599341 (= e!3453977 (nullable!5617 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256520)))))))))

(declare-fun b!5599342 () Bool)

(declare-fun call!420135 () (InoxSet Context!9938))

(assert (=> b!5599342 (= e!3453978 call!420135)))

(declare-fun d!1770052 () Bool)

(declare-fun c!981840 () Bool)

(assert (=> d!1770052 (= c!981840 e!3453977)))

(declare-fun res!2374943 () Bool)

(assert (=> d!1770052 (=> (not res!2374943) (not e!3453977))))

(assert (=> d!1770052 (= res!2374943 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256520))))))))

(declare-fun e!3453976 () (InoxSet Context!9938))

(assert (=> d!1770052 (= (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 lt!2256520))) (h!69380 s!2326)) e!3453976)))

(declare-fun bm!420130 () Bool)

(assert (=> bm!420130 (= call!420135 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256520))))) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256520)))))) (h!69380 s!2326)))))

(declare-fun b!5599343 () Bool)

(assert (=> b!5599343 (= e!3453976 e!3453978)))

(declare-fun c!981839 () Bool)

(assert (=> b!5599343 (= c!981839 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256520))))))))

(declare-fun b!5599344 () Bool)

(assert (=> b!5599344 (= e!3453976 ((_ map or) call!420135 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 lt!2256520)))))) (h!69380 s!2326))))))

(assert (= (and d!1770052 res!2374943) b!5599341))

(assert (= (and d!1770052 c!981840) b!5599344))

(assert (= (and d!1770052 (not c!981840)) b!5599343))

(assert (= (and b!5599343 c!981839) b!5599342))

(assert (= (and b!5599343 (not c!981839)) b!5599340))

(assert (= (or b!5599344 b!5599342) bm!420130))

(declare-fun m!6578196 () Bool)

(assert (=> b!5599341 m!6578196))

(declare-fun m!6578198 () Bool)

(assert (=> bm!420130 m!6578198))

(declare-fun m!6578200 () Bool)

(assert (=> b!5599344 m!6578200))

(assert (=> b!5597970 d!1770052))

(assert (=> d!1769436 d!1769850))

(declare-fun d!1770054 () Bool)

(assert (=> d!1770054 true))

(declare-fun setRes!37348 () Bool)

(assert (=> d!1770054 setRes!37348))

(declare-fun condSetEmpty!37348 () Bool)

(declare-fun res!2374946 () (InoxSet Context!9938))

(assert (=> d!1770054 (= condSetEmpty!37348 (= res!2374946 ((as const (Array Context!9938 Bool)) false)))))

(assert (=> d!1770054 (= (choose!42455 lt!2256508 lambda!300570) res!2374946)))

(declare-fun setIsEmpty!37348 () Bool)

(assert (=> setIsEmpty!37348 setRes!37348))

(declare-fun setNonEmpty!37348 () Bool)

(declare-fun setElem!37348 () Context!9938)

(declare-fun e!3453981 () Bool)

(declare-fun tp!1548134 () Bool)

(assert (=> setNonEmpty!37348 (= setRes!37348 (and tp!1548134 (inv!82209 setElem!37348) e!3453981))))

(declare-fun setRest!37348 () (InoxSet Context!9938))

(assert (=> setNonEmpty!37348 (= res!2374946 ((_ map or) (store ((as const (Array Context!9938 Bool)) false) setElem!37348 true) setRest!37348))))

(declare-fun b!5599347 () Bool)

(declare-fun tp!1548135 () Bool)

(assert (=> b!5599347 (= e!3453981 tp!1548135)))

(assert (= (and d!1770054 condSetEmpty!37348) setIsEmpty!37348))

(assert (= (and d!1770054 (not condSetEmpty!37348)) setNonEmpty!37348))

(assert (= setNonEmpty!37348 b!5599347))

(declare-fun m!6578202 () Bool)

(assert (=> setNonEmpty!37348 m!6578202))

(assert (=> d!1769444 d!1770054))

(declare-fun d!1770056 () Bool)

(declare-fun c!981843 () Bool)

(assert (=> d!1770056 (= c!981843 ((_ is Nil!62931) lt!2256616))))

(declare-fun e!3453984 () (InoxSet Context!9938))

(assert (=> d!1770056 (= (content!11364 lt!2256616) e!3453984)))

(declare-fun b!5599352 () Bool)

(assert (=> b!5599352 (= e!3453984 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599353 () Bool)

(assert (=> b!5599353 (= e!3453984 ((_ map or) (store ((as const (Array Context!9938 Bool)) false) (h!69379 lt!2256616) true) (content!11364 (t!376339 lt!2256616))))))

(assert (= (and d!1770056 c!981843) b!5599352))

(assert (= (and d!1770056 (not c!981843)) b!5599353))

(declare-fun m!6578204 () Bool)

(assert (=> b!5599353 m!6578204))

(declare-fun m!6578206 () Bool)

(assert (=> b!5599353 m!6578206))

(assert (=> b!5598275 d!1770056))

(declare-fun b!5599354 () Bool)

(declare-fun e!3453985 () Bool)

(declare-fun lt!2256660 () Bool)

(assert (=> b!5599354 (= e!3453985 (not lt!2256660))))

(declare-fun b!5599355 () Bool)

(declare-fun e!3453989 () Bool)

(assert (=> b!5599355 (= e!3453989 (= (head!11939 s!2326) (c!981334 (regTwo!31682 r!7292))))))

(declare-fun b!5599357 () Bool)

(declare-fun e!3453988 () Bool)

(assert (=> b!5599357 (= e!3453988 (not (= (head!11939 s!2326) (c!981334 (regTwo!31682 r!7292)))))))

(declare-fun b!5599358 () Bool)

(declare-fun res!2374949 () Bool)

(declare-fun e!3453990 () Bool)

(assert (=> b!5599358 (=> res!2374949 e!3453990)))

(assert (=> b!5599358 (= res!2374949 e!3453989)))

(declare-fun res!2374952 () Bool)

(assert (=> b!5599358 (=> (not res!2374952) (not e!3453989))))

(assert (=> b!5599358 (= res!2374952 lt!2256660)))

(declare-fun b!5599359 () Bool)

(declare-fun e!3453987 () Bool)

(assert (=> b!5599359 (= e!3453987 e!3453988)))

(declare-fun res!2374947 () Bool)

(assert (=> b!5599359 (=> res!2374947 e!3453988)))

(declare-fun call!420136 () Bool)

(assert (=> b!5599359 (= res!2374947 call!420136)))

(declare-fun b!5599360 () Bool)

(assert (=> b!5599360 (= e!3453990 e!3453987)))

(declare-fun res!2374950 () Bool)

(assert (=> b!5599360 (=> (not res!2374950) (not e!3453987))))

(assert (=> b!5599360 (= res!2374950 (not lt!2256660))))

(declare-fun b!5599361 () Bool)

(declare-fun e!3453991 () Bool)

(assert (=> b!5599361 (= e!3453991 (= lt!2256660 call!420136))))

(declare-fun b!5599362 () Bool)

(declare-fun res!2374948 () Bool)

(assert (=> b!5599362 (=> res!2374948 e!3453990)))

(assert (=> b!5599362 (= res!2374948 (not ((_ is ElementMatch!15585) (regTwo!31682 r!7292))))))

(assert (=> b!5599362 (= e!3453985 e!3453990)))

(declare-fun b!5599363 () Bool)

(declare-fun res!2374951 () Bool)

(assert (=> b!5599363 (=> (not res!2374951) (not e!3453989))))

(assert (=> b!5599363 (= res!2374951 (not call!420136))))

(declare-fun b!5599364 () Bool)

(declare-fun e!3453986 () Bool)

(assert (=> b!5599364 (= e!3453986 (nullable!5617 (regTwo!31682 r!7292)))))

(declare-fun b!5599365 () Bool)

(assert (=> b!5599365 (= e!3453986 (matchR!7770 (derivativeStep!4433 (regTwo!31682 r!7292) (head!11939 s!2326)) (tail!11034 s!2326)))))

(declare-fun bm!420131 () Bool)

(assert (=> bm!420131 (= call!420136 (isEmpty!34758 s!2326))))

(declare-fun d!1770058 () Bool)

(assert (=> d!1770058 e!3453991))

(declare-fun c!981845 () Bool)

(assert (=> d!1770058 (= c!981845 ((_ is EmptyExpr!15585) (regTwo!31682 r!7292)))))

(assert (=> d!1770058 (= lt!2256660 e!3453986)))

(declare-fun c!981844 () Bool)

(assert (=> d!1770058 (= c!981844 (isEmpty!34758 s!2326))))

(assert (=> d!1770058 (validRegex!7321 (regTwo!31682 r!7292))))

(assert (=> d!1770058 (= (matchR!7770 (regTwo!31682 r!7292) s!2326) lt!2256660)))

(declare-fun b!5599356 () Bool)

(declare-fun res!2374953 () Bool)

(assert (=> b!5599356 (=> (not res!2374953) (not e!3453989))))

(assert (=> b!5599356 (= res!2374953 (isEmpty!34758 (tail!11034 s!2326)))))

(declare-fun b!5599366 () Bool)

(declare-fun res!2374954 () Bool)

(assert (=> b!5599366 (=> res!2374954 e!3453988)))

(assert (=> b!5599366 (= res!2374954 (not (isEmpty!34758 (tail!11034 s!2326))))))

(declare-fun b!5599367 () Bool)

(assert (=> b!5599367 (= e!3453991 e!3453985)))

(declare-fun c!981846 () Bool)

(assert (=> b!5599367 (= c!981846 ((_ is EmptyLang!15585) (regTwo!31682 r!7292)))))

(assert (= (and d!1770058 c!981844) b!5599364))

(assert (= (and d!1770058 (not c!981844)) b!5599365))

(assert (= (and d!1770058 c!981845) b!5599361))

(assert (= (and d!1770058 (not c!981845)) b!5599367))

(assert (= (and b!5599367 c!981846) b!5599354))

(assert (= (and b!5599367 (not c!981846)) b!5599362))

(assert (= (and b!5599362 (not res!2374948)) b!5599358))

(assert (= (and b!5599358 res!2374952) b!5599363))

(assert (= (and b!5599363 res!2374951) b!5599356))

(assert (= (and b!5599356 res!2374953) b!5599355))

(assert (= (and b!5599358 (not res!2374949)) b!5599360))

(assert (= (and b!5599360 res!2374950) b!5599359))

(assert (= (and b!5599359 (not res!2374947)) b!5599366))

(assert (= (and b!5599366 (not res!2374954)) b!5599357))

(assert (= (or b!5599361 b!5599359 b!5599363) bm!420131))

(assert (=> b!5599364 m!6577906))

(assert (=> b!5599356 m!6576854))

(assert (=> b!5599356 m!6576854))

(assert (=> b!5599356 m!6577108))

(assert (=> d!1770058 m!6576846))

(assert (=> d!1770058 m!6577914))

(assert (=> b!5599366 m!6576854))

(assert (=> b!5599366 m!6576854))

(assert (=> b!5599366 m!6577108))

(assert (=> b!5599355 m!6576850))

(assert (=> b!5599365 m!6576850))

(assert (=> b!5599365 m!6576850))

(declare-fun m!6578208 () Bool)

(assert (=> b!5599365 m!6578208))

(assert (=> b!5599365 m!6576854))

(assert (=> b!5599365 m!6578208))

(assert (=> b!5599365 m!6576854))

(declare-fun m!6578210 () Bool)

(assert (=> b!5599365 m!6578210))

(assert (=> b!5599357 m!6576850))

(assert (=> bm!420131 m!6576846))

(assert (=> b!5598105 d!1770058))

(declare-fun c!981848 () Bool)

(declare-fun c!981851 () Bool)

(declare-fun call!420137 () List!63054)

(declare-fun bm!420132 () Bool)

(assert (=> bm!420132 (= call!420137 ($colon$colon!1648 (exprs!5469 (ite c!981489 lt!2256515 (Context!9939 call!419882))) (ite (or c!981851 c!981848) (regTwo!31682 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))) (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))))))))

(declare-fun b!5599368 () Bool)

(declare-fun e!3453997 () (InoxSet Context!9938))

(declare-fun e!3453993 () (InoxSet Context!9938))

(assert (=> b!5599368 (= e!3453997 e!3453993)))

(declare-fun c!981849 () Bool)

(assert (=> b!5599368 (= c!981849 ((_ is Union!15585) (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))))))

(declare-fun b!5599369 () Bool)

(declare-fun e!3453995 () (InoxSet Context!9938))

(assert (=> b!5599369 (= e!3453995 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599370 () Bool)

(assert (=> b!5599370 (= e!3453997 (store ((as const (Array Context!9938 Bool)) false) (ite c!981489 lt!2256515 (Context!9939 call!419882)) true))))

(declare-fun b!5599371 () Bool)

(declare-fun e!3453992 () (InoxSet Context!9938))

(declare-fun call!420141 () (InoxSet Context!9938))

(declare-fun call!420139 () (InoxSet Context!9938))

(assert (=> b!5599371 (= e!3453992 ((_ map or) call!420141 call!420139))))

(declare-fun bm!420133 () Bool)

(declare-fun call!420138 () List!63054)

(assert (=> bm!420133 (= call!420138 call!420137)))

(declare-fun b!5599372 () Bool)

(declare-fun c!981847 () Bool)

(assert (=> b!5599372 (= c!981847 ((_ is Star!15585) (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))))))

(declare-fun e!3453996 () (InoxSet Context!9938))

(assert (=> b!5599372 (= e!3453996 e!3453995)))

(declare-fun bm!420134 () Bool)

(declare-fun call!420142 () (InoxSet Context!9938))

(assert (=> bm!420134 (= call!420139 call!420142)))

(declare-fun b!5599373 () Bool)

(declare-fun e!3453994 () Bool)

(assert (=> b!5599373 (= c!981851 e!3453994)))

(declare-fun res!2374955 () Bool)

(assert (=> b!5599373 (=> (not res!2374955) (not e!3453994))))

(assert (=> b!5599373 (= res!2374955 ((_ is Concat!24430) (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))))))

(assert (=> b!5599373 (= e!3453993 e!3453992)))

(declare-fun b!5599374 () Bool)

(declare-fun call!420140 () (InoxSet Context!9938))

(assert (=> b!5599374 (= e!3453996 call!420140)))

(declare-fun bm!420136 () Bool)

(assert (=> bm!420136 (= call!420140 call!420139)))

(declare-fun bm!420137 () Bool)

(assert (=> bm!420137 (= call!420141 (derivationStepZipperDown!927 (ite c!981849 (regOne!31683 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))) (regOne!31682 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))))) (ite c!981849 (ite c!981489 lt!2256515 (Context!9939 call!419882)) (Context!9939 call!420137)) (h!69380 s!2326)))))

(declare-fun b!5599375 () Bool)

(assert (=> b!5599375 (= e!3453993 ((_ map or) call!420141 call!420142))))

(declare-fun b!5599376 () Bool)

(assert (=> b!5599376 (= e!3453994 (nullable!5617 (regOne!31682 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))))))))

(declare-fun c!981850 () Bool)

(declare-fun d!1770060 () Bool)

(assert (=> d!1770060 (= c!981850 (and ((_ is ElementMatch!15585) (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))) (= (c!981334 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))) (h!69380 s!2326))))))

(assert (=> d!1770060 (= (derivationStepZipperDown!927 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))) (ite c!981489 lt!2256515 (Context!9939 call!419882)) (h!69380 s!2326)) e!3453997)))

(declare-fun bm!420135 () Bool)

(assert (=> bm!420135 (= call!420142 (derivationStepZipperDown!927 (ite c!981849 (regTwo!31683 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))) (ite c!981851 (regTwo!31682 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))) (ite c!981848 (regOne!31682 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))) (reg!15914 (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292)))))))) (ite (or c!981849 c!981851) (ite c!981489 lt!2256515 (Context!9939 call!419882)) (Context!9939 call!420138)) (h!69380 s!2326)))))

(declare-fun b!5599377 () Bool)

(assert (=> b!5599377 (= e!3453995 call!420140)))

(declare-fun b!5599378 () Bool)

(assert (=> b!5599378 (= e!3453992 e!3453996)))

(assert (=> b!5599378 (= c!981848 ((_ is Concat!24430) (ite c!981489 (regOne!31683 (regTwo!31683 (regOne!31682 r!7292))) (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))))))))

(assert (= (and d!1770060 c!981850) b!5599370))

(assert (= (and d!1770060 (not c!981850)) b!5599368))

(assert (= (and b!5599368 c!981849) b!5599375))

(assert (= (and b!5599368 (not c!981849)) b!5599373))

(assert (= (and b!5599373 res!2374955) b!5599376))

(assert (= (and b!5599373 c!981851) b!5599371))

(assert (= (and b!5599373 (not c!981851)) b!5599378))

(assert (= (and b!5599378 c!981848) b!5599374))

(assert (= (and b!5599378 (not c!981848)) b!5599372))

(assert (= (and b!5599372 c!981847) b!5599377))

(assert (= (and b!5599372 (not c!981847)) b!5599369))

(assert (= (or b!5599374 b!5599377) bm!420133))

(assert (= (or b!5599374 b!5599377) bm!420136))

(assert (= (or b!5599371 bm!420133) bm!420132))

(assert (= (or b!5599371 bm!420136) bm!420134))

(assert (= (or b!5599375 bm!420134) bm!420135))

(assert (= (or b!5599375 b!5599371) bm!420137))

(declare-fun m!6578212 () Bool)

(assert (=> bm!420137 m!6578212))

(declare-fun m!6578214 () Bool)

(assert (=> bm!420132 m!6578214))

(declare-fun m!6578216 () Bool)

(assert (=> b!5599376 m!6578216))

(declare-fun m!6578218 () Bool)

(assert (=> b!5599370 m!6578218))

(declare-fun m!6578220 () Bool)

(assert (=> bm!420135 m!6578220))

(assert (=> bm!419882 d!1770060))

(declare-fun bs!1294708 () Bool)

(declare-fun d!1770062 () Bool)

(assert (= bs!1294708 (and d!1770062 d!1770044)))

(declare-fun lambda!300708 () Int)

(assert (=> bs!1294708 (= lambda!300708 lambda!300707)))

(declare-fun bs!1294709 () Bool)

(assert (= bs!1294709 (and d!1770062 d!1770020)))

(assert (=> bs!1294709 (= lambda!300708 lambda!300701)))

(declare-fun bs!1294710 () Bool)

(assert (= bs!1294710 (and d!1770062 d!1769864)))

(assert (=> bs!1294710 (= lambda!300708 lambda!300680)))

(declare-fun bs!1294711 () Bool)

(assert (= bs!1294711 (and d!1770062 d!1770032)))

(assert (=> bs!1294711 (= lambda!300708 lambda!300703)))

(declare-fun bs!1294712 () Bool)

(assert (= bs!1294712 (and d!1770062 d!1770008)))

(assert (=> bs!1294712 (= lambda!300708 lambda!300700)))

(declare-fun bs!1294713 () Bool)

(assert (= bs!1294713 (and d!1770062 d!1770002)))

(assert (=> bs!1294713 (= lambda!300708 lambda!300699)))

(declare-fun bs!1294714 () Bool)

(assert (= bs!1294714 (and d!1770062 d!1769876)))

(assert (=> bs!1294714 (= lambda!300708 lambda!300681)))

(assert (=> d!1770062 (= (nullableZipper!1580 lt!2256516) (exists!2174 lt!2256516 lambda!300708))))

(declare-fun bs!1294715 () Bool)

(assert (= bs!1294715 d!1770062))

(declare-fun m!6578222 () Bool)

(assert (=> bs!1294715 m!6578222))

(assert (=> b!5598001 d!1770062))

(declare-fun bs!1294716 () Bool)

(declare-fun d!1770064 () Bool)

(assert (= bs!1294716 (and d!1770064 d!1769516)))

(declare-fun lambda!300709 () Int)

(assert (=> bs!1294716 (= lambda!300709 lambda!300619)))

(declare-fun bs!1294717 () Bool)

(assert (= bs!1294717 (and d!1770064 d!1769890)))

(assert (=> bs!1294717 (= lambda!300709 lambda!300682)))

(declare-fun bs!1294718 () Bool)

(assert (= bs!1294718 (and d!1770064 d!1769514)))

(assert (=> bs!1294718 (= lambda!300709 lambda!300616)))

(declare-fun bs!1294719 () Bool)

(assert (= bs!1294719 (and d!1770064 d!1769958)))

(assert (=> bs!1294719 (= lambda!300709 lambda!300692)))

(declare-fun bs!1294720 () Bool)

(assert (= bs!1294720 (and d!1770064 d!1769844)))

(assert (=> bs!1294720 (= lambda!300709 lambda!300677)))

(declare-fun bs!1294721 () Bool)

(assert (= bs!1294721 (and d!1770064 d!1769986)))

(assert (=> bs!1294721 (= lambda!300709 lambda!300697)))

(declare-fun bs!1294722 () Bool)

(assert (= bs!1294722 (and d!1770064 d!1769498)))

(assert (=> bs!1294722 (= lambda!300709 lambda!300613)))

(declare-fun bs!1294723 () Bool)

(assert (= bs!1294723 (and d!1770064 d!1769518)))

(assert (=> bs!1294723 (= lambda!300709 lambda!300620)))

(declare-fun bs!1294724 () Bool)

(assert (= bs!1294724 (and d!1770064 d!1769458)))

(assert (=> bs!1294724 (= lambda!300709 lambda!300601)))

(assert (=> d!1770064 (= (inv!82209 (h!69379 (t!376339 zl!343))) (forall!14751 (exprs!5469 (h!69379 (t!376339 zl!343))) lambda!300709))))

(declare-fun bs!1294725 () Bool)

(assert (= bs!1294725 d!1770064))

(declare-fun m!6578224 () Bool)

(assert (=> bs!1294725 m!6578224))

(assert (=> b!5598282 d!1770064))

(declare-fun d!1770066 () Bool)

(declare-fun c!981852 () Bool)

(assert (=> d!1770066 (= c!981852 (isEmpty!34758 (tail!11034 (t!376340 s!2326))))))

(declare-fun e!3453998 () Bool)

(assert (=> d!1770066 (= (matchZipper!1723 (derivationStepZipper!1684 lt!2256505 (head!11939 (t!376340 s!2326))) (tail!11034 (t!376340 s!2326))) e!3453998)))

(declare-fun b!5599379 () Bool)

(assert (=> b!5599379 (= e!3453998 (nullableZipper!1580 (derivationStepZipper!1684 lt!2256505 (head!11939 (t!376340 s!2326)))))))

(declare-fun b!5599380 () Bool)

(assert (=> b!5599380 (= e!3453998 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 lt!2256505 (head!11939 (t!376340 s!2326))) (head!11939 (tail!11034 (t!376340 s!2326)))) (tail!11034 (tail!11034 (t!376340 s!2326)))))))

(assert (= (and d!1770066 c!981852) b!5599379))

(assert (= (and d!1770066 (not c!981852)) b!5599380))

(assert (=> d!1770066 m!6576868))

(assert (=> d!1770066 m!6577864))

(assert (=> b!5599379 m!6576874))

(declare-fun m!6578226 () Bool)

(assert (=> b!5599379 m!6578226))

(assert (=> b!5599380 m!6576868))

(assert (=> b!5599380 m!6577868))

(assert (=> b!5599380 m!6576874))

(assert (=> b!5599380 m!6577868))

(declare-fun m!6578228 () Bool)

(assert (=> b!5599380 m!6578228))

(assert (=> b!5599380 m!6576868))

(assert (=> b!5599380 m!6577872))

(assert (=> b!5599380 m!6578228))

(assert (=> b!5599380 m!6577872))

(declare-fun m!6578230 () Bool)

(assert (=> b!5599380 m!6578230))

(assert (=> b!5597946 d!1770066))

(declare-fun bs!1294726 () Bool)

(declare-fun d!1770068 () Bool)

(assert (= bs!1294726 (and d!1770068 d!1769916)))

(declare-fun lambda!300710 () Int)

(assert (=> bs!1294726 (= lambda!300710 lambda!300686)))

(declare-fun bs!1294727 () Bool)

(assert (= bs!1294727 (and d!1770068 d!1770024)))

(assert (=> bs!1294727 (= (= (head!11939 (t!376340 s!2326)) (head!11939 s!2326)) (= lambda!300710 lambda!300702))))

(declare-fun bs!1294728 () Bool)

(assert (= bs!1294728 (and d!1770068 d!1769904)))

(assert (=> bs!1294728 (= lambda!300710 lambda!300685)))

(declare-fun bs!1294729 () Bool)

(assert (= bs!1294729 (and d!1770068 b!5597513)))

(assert (=> bs!1294729 (= (= (head!11939 (t!376340 s!2326)) (h!69380 s!2326)) (= lambda!300710 lambda!300570))))

(declare-fun bs!1294730 () Bool)

(assert (= bs!1294730 (and d!1770068 d!1769936)))

(assert (=> bs!1294730 (= lambda!300710 lambda!300688)))

(declare-fun bs!1294731 () Bool)

(assert (= bs!1294731 (and d!1770068 d!1769980)))

(assert (=> bs!1294731 (= (= (head!11939 (t!376340 s!2326)) (head!11939 s!2326)) (= lambda!300710 lambda!300695))))

(declare-fun bs!1294732 () Bool)

(assert (= bs!1294732 (and d!1770068 d!1769990)))

(assert (=> bs!1294732 (= lambda!300710 lambda!300698)))

(declare-fun bs!1294733 () Bool)

(assert (= bs!1294733 (and d!1770068 d!1769984)))

(assert (=> bs!1294733 (= lambda!300710 lambda!300696)))

(declare-fun bs!1294734 () Bool)

(assert (= bs!1294734 (and d!1770068 d!1769920)))

(assert (=> bs!1294734 (= lambda!300710 lambda!300687)))

(declare-fun bs!1294735 () Bool)

(assert (= bs!1294735 (and d!1770068 d!1769956)))

(assert (=> bs!1294735 (= lambda!300710 lambda!300691)))

(assert (=> d!1770068 true))

(assert (=> d!1770068 (= (derivationStepZipper!1684 lt!2256505 (head!11939 (t!376340 s!2326))) (flatMap!1198 lt!2256505 lambda!300710))))

(declare-fun bs!1294736 () Bool)

(assert (= bs!1294736 d!1770068))

(declare-fun m!6578232 () Bool)

(assert (=> bs!1294736 m!6578232))

(assert (=> b!5597946 d!1770068))

(assert (=> b!5597946 d!1769906))

(assert (=> b!5597946 d!1769908))

(declare-fun d!1770070 () Bool)

(assert (=> d!1770070 (= (nullable!5617 (reg!15914 r!7292)) (nullableFct!1726 (reg!15914 r!7292)))))

(declare-fun bs!1294737 () Bool)

(assert (= bs!1294737 d!1770070))

(declare-fun m!6578234 () Bool)

(assert (=> bs!1294737 m!6578234))

(assert (=> b!5598080 d!1770070))

(assert (=> bm!419915 d!1769898))

(declare-fun b!5599381 () Bool)

(declare-fun e!3454002 () Bool)

(declare-fun call!420143 () Bool)

(assert (=> b!5599381 (= e!3454002 call!420143)))

(declare-fun b!5599382 () Bool)

(declare-fun e!3453999 () Bool)

(assert (=> b!5599382 (= e!3453999 call!420143)))

(declare-fun b!5599383 () Bool)

(declare-fun e!3454004 () Bool)

(declare-fun e!3454001 () Bool)

(assert (=> b!5599383 (= e!3454004 e!3454001)))

(declare-fun res!2374958 () Bool)

(assert (=> b!5599383 (=> res!2374958 e!3454001)))

(assert (=> b!5599383 (= res!2374958 ((_ is Star!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5599384 () Bool)

(declare-fun e!3454000 () Bool)

(assert (=> b!5599384 (= e!3454000 e!3454004)))

(declare-fun res!2374957 () Bool)

(assert (=> b!5599384 (=> (not res!2374957) (not e!3454004))))

(assert (=> b!5599384 (= res!2374957 (and (not ((_ is EmptyLang!15585) (h!69378 (exprs!5469 (h!69379 zl!343))))) (not ((_ is ElementMatch!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))))

(declare-fun b!5599386 () Bool)

(declare-fun e!3454003 () Bool)

(assert (=> b!5599386 (= e!3454003 e!3453999)))

(declare-fun res!2374959 () Bool)

(declare-fun call!420144 () Bool)

(assert (=> b!5599386 (= res!2374959 call!420144)))

(assert (=> b!5599386 (=> res!2374959 e!3453999)))

(declare-fun bm!420138 () Bool)

(declare-fun c!981853 () Bool)

(assert (=> bm!420138 (= call!420143 (nullable!5617 (ite c!981853 (regTwo!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regTwo!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))

(declare-fun b!5599385 () Bool)

(assert (=> b!5599385 (= e!3454001 e!3454003)))

(assert (=> b!5599385 (= c!981853 ((_ is Union!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun d!1770072 () Bool)

(declare-fun res!2374960 () Bool)

(assert (=> d!1770072 (=> res!2374960 e!3454000)))

(assert (=> d!1770072 (= res!2374960 ((_ is EmptyExpr!15585) (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(assert (=> d!1770072 (= (nullableFct!1726 (h!69378 (exprs!5469 (h!69379 zl!343)))) e!3454000)))

(declare-fun b!5599387 () Bool)

(assert (=> b!5599387 (= e!3454003 e!3454002)))

(declare-fun res!2374956 () Bool)

(assert (=> b!5599387 (= res!2374956 call!420144)))

(assert (=> b!5599387 (=> (not res!2374956) (not e!3454002))))

(declare-fun bm!420139 () Bool)

(assert (=> bm!420139 (= call!420144 (nullable!5617 (ite c!981853 (regOne!31683 (h!69378 (exprs!5469 (h!69379 zl!343)))) (regOne!31682 (h!69378 (exprs!5469 (h!69379 zl!343)))))))))

(assert (= (and d!1770072 (not res!2374960)) b!5599384))

(assert (= (and b!5599384 res!2374957) b!5599383))

(assert (= (and b!5599383 (not res!2374958)) b!5599385))

(assert (= (and b!5599385 c!981853) b!5599386))

(assert (= (and b!5599385 (not c!981853)) b!5599387))

(assert (= (and b!5599386 (not res!2374959)) b!5599382))

(assert (= (and b!5599387 res!2374956) b!5599381))

(assert (= (or b!5599382 b!5599381) bm!420138))

(assert (= (or b!5599386 b!5599387) bm!420139))

(declare-fun m!6578236 () Bool)

(assert (=> bm!420138 m!6578236))

(declare-fun m!6578238 () Bool)

(assert (=> bm!420139 m!6578238))

(assert (=> d!1769502 d!1770072))

(declare-fun c!981858 () Bool)

(declare-fun bm!420140 () Bool)

(declare-fun c!981855 () Bool)

(declare-fun call!420145 () List!63054)

(assert (=> bm!420140 (= call!420145 ($colon$colon!1648 (exprs!5469 (ite (or c!981489 c!981491) lt!2256515 (Context!9939 call!419883))) (ite (or c!981858 c!981855) (regTwo!31682 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))) (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292)))))))))))

(declare-fun b!5599388 () Bool)

(declare-fun e!3454010 () (InoxSet Context!9938))

(declare-fun e!3454006 () (InoxSet Context!9938))

(assert (=> b!5599388 (= e!3454010 e!3454006)))

(declare-fun c!981856 () Bool)

(assert (=> b!5599388 (= c!981856 ((_ is Union!15585) (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))))))

(declare-fun b!5599389 () Bool)

(declare-fun e!3454008 () (InoxSet Context!9938))

(assert (=> b!5599389 (= e!3454008 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599390 () Bool)

(assert (=> b!5599390 (= e!3454010 (store ((as const (Array Context!9938 Bool)) false) (ite (or c!981489 c!981491) lt!2256515 (Context!9939 call!419883)) true))))

(declare-fun b!5599391 () Bool)

(declare-fun e!3454005 () (InoxSet Context!9938))

(declare-fun call!420149 () (InoxSet Context!9938))

(declare-fun call!420147 () (InoxSet Context!9938))

(assert (=> b!5599391 (= e!3454005 ((_ map or) call!420149 call!420147))))

(declare-fun bm!420141 () Bool)

(declare-fun call!420146 () List!63054)

(assert (=> bm!420141 (= call!420146 call!420145)))

(declare-fun c!981854 () Bool)

(declare-fun b!5599392 () Bool)

(assert (=> b!5599392 (= c!981854 ((_ is Star!15585) (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))))))

(declare-fun e!3454009 () (InoxSet Context!9938))

(assert (=> b!5599392 (= e!3454009 e!3454008)))

(declare-fun bm!420142 () Bool)

(declare-fun call!420150 () (InoxSet Context!9938))

(assert (=> bm!420142 (= call!420147 call!420150)))

(declare-fun b!5599393 () Bool)

(declare-fun e!3454007 () Bool)

(assert (=> b!5599393 (= c!981858 e!3454007)))

(declare-fun res!2374961 () Bool)

(assert (=> b!5599393 (=> (not res!2374961) (not e!3454007))))

(assert (=> b!5599393 (= res!2374961 ((_ is Concat!24430) (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))))))

(assert (=> b!5599393 (= e!3454006 e!3454005)))

(declare-fun b!5599394 () Bool)

(declare-fun call!420148 () (InoxSet Context!9938))

(assert (=> b!5599394 (= e!3454009 call!420148)))

(declare-fun bm!420144 () Bool)

(assert (=> bm!420144 (= call!420148 call!420147)))

(declare-fun bm!420145 () Bool)

(assert (=> bm!420145 (= call!420149 (derivationStepZipperDown!927 (ite c!981856 (regOne!31683 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))) (regOne!31682 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292)))))))) (ite c!981856 (ite (or c!981489 c!981491) lt!2256515 (Context!9939 call!419883)) (Context!9939 call!420145)) (h!69380 s!2326)))))

(declare-fun b!5599395 () Bool)

(assert (=> b!5599395 (= e!3454006 ((_ map or) call!420149 call!420150))))

(declare-fun b!5599396 () Bool)

(assert (=> b!5599396 (= e!3454007 (nullable!5617 (regOne!31682 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292)))))))))))

(declare-fun d!1770074 () Bool)

(declare-fun c!981857 () Bool)

(assert (=> d!1770074 (= c!981857 (and ((_ is ElementMatch!15585) (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))) (= (c!981334 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))) (h!69380 s!2326))))))

(assert (=> d!1770074 (= (derivationStepZipperDown!927 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292)))))) (ite (or c!981489 c!981491) lt!2256515 (Context!9939 call!419883)) (h!69380 s!2326)) e!3454010)))

(declare-fun bm!420143 () Bool)

(assert (=> bm!420143 (= call!420150 (derivationStepZipperDown!927 (ite c!981856 (regTwo!31683 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))) (ite c!981858 (regTwo!31682 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))) (ite c!981855 (regOne!31682 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))) (reg!15914 (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292)))))))))) (ite (or c!981856 c!981858) (ite (or c!981489 c!981491) lt!2256515 (Context!9939 call!419883)) (Context!9939 call!420146)) (h!69380 s!2326)))))

(declare-fun b!5599397 () Bool)

(assert (=> b!5599397 (= e!3454008 call!420148)))

(declare-fun b!5599398 () Bool)

(assert (=> b!5599398 (= e!3454005 e!3454009)))

(assert (=> b!5599398 (= c!981855 ((_ is Concat!24430) (ite c!981489 (regTwo!31683 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981491 (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (ite c!981488 (regOne!31682 (regTwo!31683 (regOne!31682 r!7292))) (reg!15914 (regTwo!31683 (regOne!31682 r!7292))))))))))

(assert (= (and d!1770074 c!981857) b!5599390))

(assert (= (and d!1770074 (not c!981857)) b!5599388))

(assert (= (and b!5599388 c!981856) b!5599395))

(assert (= (and b!5599388 (not c!981856)) b!5599393))

(assert (= (and b!5599393 res!2374961) b!5599396))

(assert (= (and b!5599393 c!981858) b!5599391))

(assert (= (and b!5599393 (not c!981858)) b!5599398))

(assert (= (and b!5599398 c!981855) b!5599394))

(assert (= (and b!5599398 (not c!981855)) b!5599392))

(assert (= (and b!5599392 c!981854) b!5599397))

(assert (= (and b!5599392 (not c!981854)) b!5599389))

(assert (= (or b!5599394 b!5599397) bm!420141))

(assert (= (or b!5599394 b!5599397) bm!420144))

(assert (= (or b!5599391 bm!420141) bm!420140))

(assert (= (or b!5599391 bm!420144) bm!420142))

(assert (= (or b!5599395 bm!420142) bm!420143))

(assert (= (or b!5599395 b!5599391) bm!420145))

(declare-fun m!6578240 () Bool)

(assert (=> bm!420145 m!6578240))

(declare-fun m!6578242 () Bool)

(assert (=> bm!420140 m!6578242))

(declare-fun m!6578244 () Bool)

(assert (=> b!5599396 m!6578244))

(declare-fun m!6578246 () Bool)

(assert (=> b!5599390 m!6578246))

(declare-fun m!6578248 () Bool)

(assert (=> bm!420143 m!6578248))

(assert (=> bm!419880 d!1770074))

(declare-fun bs!1294738 () Bool)

(declare-fun d!1770076 () Bool)

(assert (= bs!1294738 (and d!1770076 d!1770044)))

(declare-fun lambda!300711 () Int)

(assert (=> bs!1294738 (= lambda!300711 lambda!300707)))

(declare-fun bs!1294739 () Bool)

(assert (= bs!1294739 (and d!1770076 d!1770062)))

(assert (=> bs!1294739 (= lambda!300711 lambda!300708)))

(declare-fun bs!1294740 () Bool)

(assert (= bs!1294740 (and d!1770076 d!1770020)))

(assert (=> bs!1294740 (= lambda!300711 lambda!300701)))

(declare-fun bs!1294741 () Bool)

(assert (= bs!1294741 (and d!1770076 d!1769864)))

(assert (=> bs!1294741 (= lambda!300711 lambda!300680)))

(declare-fun bs!1294742 () Bool)

(assert (= bs!1294742 (and d!1770076 d!1770032)))

(assert (=> bs!1294742 (= lambda!300711 lambda!300703)))

(declare-fun bs!1294743 () Bool)

(assert (= bs!1294743 (and d!1770076 d!1770008)))

(assert (=> bs!1294743 (= lambda!300711 lambda!300700)))

(declare-fun bs!1294744 () Bool)

(assert (= bs!1294744 (and d!1770076 d!1770002)))

(assert (=> bs!1294744 (= lambda!300711 lambda!300699)))

(declare-fun bs!1294745 () Bool)

(assert (= bs!1294745 (and d!1770076 d!1769876)))

(assert (=> bs!1294745 (= lambda!300711 lambda!300681)))

(assert (=> d!1770076 (= (nullableZipper!1580 lt!2256508) (exists!2174 lt!2256508 lambda!300711))))

(declare-fun bs!1294746 () Bool)

(assert (= bs!1294746 d!1770076))

(declare-fun m!6578250 () Bool)

(assert (=> bs!1294746 m!6578250))

(assert (=> b!5597938 d!1770076))

(declare-fun d!1770078 () Bool)

(assert (=> d!1770078 (= (isEmpty!34754 (exprs!5469 (h!69379 zl!343))) ((_ is Nil!62930) (exprs!5469 (h!69379 zl!343))))))

(assert (=> b!5597998 d!1770078))

(declare-fun bm!420146 () Bool)

(declare-fun c!981863 () Bool)

(declare-fun call!420151 () List!63054)

(declare-fun c!981860 () Bool)

(assert (=> bm!420146 (= call!420151 ($colon$colon!1648 (exprs!5469 (ite c!981494 lt!2256515 (Context!9939 call!419888))) (ite (or c!981863 c!981860) (regTwo!31682 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))) (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))))))))

(declare-fun b!5599399 () Bool)

(declare-fun e!3454016 () (InoxSet Context!9938))

(declare-fun e!3454012 () (InoxSet Context!9938))

(assert (=> b!5599399 (= e!3454016 e!3454012)))

(declare-fun c!981861 () Bool)

(assert (=> b!5599399 (= c!981861 ((_ is Union!15585) (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))))))

(declare-fun b!5599400 () Bool)

(declare-fun e!3454014 () (InoxSet Context!9938))

(assert (=> b!5599400 (= e!3454014 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599401 () Bool)

(assert (=> b!5599401 (= e!3454016 (store ((as const (Array Context!9938 Bool)) false) (ite c!981494 lt!2256515 (Context!9939 call!419888)) true))))

(declare-fun b!5599402 () Bool)

(declare-fun e!3454011 () (InoxSet Context!9938))

(declare-fun call!420155 () (InoxSet Context!9938))

(declare-fun call!420153 () (InoxSet Context!9938))

(assert (=> b!5599402 (= e!3454011 ((_ map or) call!420155 call!420153))))

(declare-fun bm!420147 () Bool)

(declare-fun call!420152 () List!63054)

(assert (=> bm!420147 (= call!420152 call!420151)))

(declare-fun b!5599403 () Bool)

(declare-fun c!981859 () Bool)

(assert (=> b!5599403 (= c!981859 ((_ is Star!15585) (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))))))

(declare-fun e!3454015 () (InoxSet Context!9938))

(assert (=> b!5599403 (= e!3454015 e!3454014)))

(declare-fun bm!420148 () Bool)

(declare-fun call!420156 () (InoxSet Context!9938))

(assert (=> bm!420148 (= call!420153 call!420156)))

(declare-fun b!5599404 () Bool)

(declare-fun e!3454013 () Bool)

(assert (=> b!5599404 (= c!981863 e!3454013)))

(declare-fun res!2374962 () Bool)

(assert (=> b!5599404 (=> (not res!2374962) (not e!3454013))))

(assert (=> b!5599404 (= res!2374962 ((_ is Concat!24430) (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))))))

(assert (=> b!5599404 (= e!3454012 e!3454011)))

(declare-fun b!5599405 () Bool)

(declare-fun call!420154 () (InoxSet Context!9938))

(assert (=> b!5599405 (= e!3454015 call!420154)))

(declare-fun bm!420150 () Bool)

(assert (=> bm!420150 (= call!420154 call!420153)))

(declare-fun bm!420151 () Bool)

(assert (=> bm!420151 (= call!420155 (derivationStepZipperDown!927 (ite c!981861 (regOne!31683 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))) (regOne!31682 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))))) (ite c!981861 (ite c!981494 lt!2256515 (Context!9939 call!419888)) (Context!9939 call!420151)) (h!69380 s!2326)))))

(declare-fun b!5599406 () Bool)

(assert (=> b!5599406 (= e!3454012 ((_ map or) call!420155 call!420156))))

(declare-fun b!5599407 () Bool)

(assert (=> b!5599407 (= e!3454013 (nullable!5617 (regOne!31682 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))))))))

(declare-fun c!981862 () Bool)

(declare-fun d!1770080 () Bool)

(assert (=> d!1770080 (= c!981862 (and ((_ is ElementMatch!15585) (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))) (= (c!981334 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))) (h!69380 s!2326))))))

(assert (=> d!1770080 (= (derivationStepZipperDown!927 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))) (ite c!981494 lt!2256515 (Context!9939 call!419888)) (h!69380 s!2326)) e!3454016)))

(declare-fun bm!420149 () Bool)

(assert (=> bm!420149 (= call!420156 (derivationStepZipperDown!927 (ite c!981861 (regTwo!31683 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))) (ite c!981863 (regTwo!31682 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))) (ite c!981860 (regOne!31682 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))) (reg!15914 (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292)))))))) (ite (or c!981861 c!981863) (ite c!981494 lt!2256515 (Context!9939 call!419888)) (Context!9939 call!420152)) (h!69380 s!2326)))))

(declare-fun b!5599408 () Bool)

(assert (=> b!5599408 (= e!3454014 call!420154)))

(declare-fun b!5599409 () Bool)

(assert (=> b!5599409 (= e!3454011 e!3454015)))

(assert (=> b!5599409 (= c!981860 ((_ is Concat!24430) (ite c!981494 (regOne!31683 (regOne!31683 (regOne!31682 r!7292))) (regOne!31682 (regOne!31683 (regOne!31682 r!7292))))))))

(assert (= (and d!1770080 c!981862) b!5599401))

(assert (= (and d!1770080 (not c!981862)) b!5599399))

(assert (= (and b!5599399 c!981861) b!5599406))

(assert (= (and b!5599399 (not c!981861)) b!5599404))

(assert (= (and b!5599404 res!2374962) b!5599407))

(assert (= (and b!5599404 c!981863) b!5599402))

(assert (= (and b!5599404 (not c!981863)) b!5599409))

(assert (= (and b!5599409 c!981860) b!5599405))

(assert (= (and b!5599409 (not c!981860)) b!5599403))

(assert (= (and b!5599403 c!981859) b!5599408))

(assert (= (and b!5599403 (not c!981859)) b!5599400))

(assert (= (or b!5599405 b!5599408) bm!420147))

(assert (= (or b!5599405 b!5599408) bm!420150))

(assert (= (or b!5599402 bm!420147) bm!420146))

(assert (= (or b!5599402 bm!420150) bm!420148))

(assert (= (or b!5599406 bm!420148) bm!420149))

(assert (= (or b!5599406 b!5599402) bm!420151))

(declare-fun m!6578252 () Bool)

(assert (=> bm!420151 m!6578252))

(declare-fun m!6578254 () Bool)

(assert (=> bm!420146 m!6578254))

(declare-fun m!6578256 () Bool)

(assert (=> b!5599407 m!6578256))

(declare-fun m!6578258 () Bool)

(assert (=> b!5599401 m!6578258))

(declare-fun m!6578260 () Bool)

(assert (=> bm!420149 m!6578260))

(assert (=> bm!419888 d!1770080))

(declare-fun d!1770082 () Bool)

(assert (=> d!1770082 true))

(declare-fun setRes!37349 () Bool)

(assert (=> d!1770082 setRes!37349))

(declare-fun condSetEmpty!37349 () Bool)

(declare-fun res!2374963 () (InoxSet Context!9938))

(assert (=> d!1770082 (= condSetEmpty!37349 (= res!2374963 ((as const (Array Context!9938 Bool)) false)))))

(assert (=> d!1770082 (= (choose!42455 lt!2256501 lambda!300570) res!2374963)))

(declare-fun setIsEmpty!37349 () Bool)

(assert (=> setIsEmpty!37349 setRes!37349))

(declare-fun setNonEmpty!37349 () Bool)

(declare-fun e!3454017 () Bool)

(declare-fun setElem!37349 () Context!9938)

(declare-fun tp!1548136 () Bool)

(assert (=> setNonEmpty!37349 (= setRes!37349 (and tp!1548136 (inv!82209 setElem!37349) e!3454017))))

(declare-fun setRest!37349 () (InoxSet Context!9938))

(assert (=> setNonEmpty!37349 (= res!2374963 ((_ map or) (store ((as const (Array Context!9938 Bool)) false) setElem!37349 true) setRest!37349))))

(declare-fun b!5599410 () Bool)

(declare-fun tp!1548137 () Bool)

(assert (=> b!5599410 (= e!3454017 tp!1548137)))

(assert (= (and d!1770082 condSetEmpty!37349) setIsEmpty!37349))

(assert (= (and d!1770082 (not condSetEmpty!37349)) setNonEmpty!37349))

(assert (= setNonEmpty!37349 b!5599410))

(declare-fun m!6578262 () Bool)

(assert (=> setNonEmpty!37349 m!6578262))

(assert (=> d!1769446 d!1770082))

(assert (=> d!1769442 d!1769898))

(assert (=> b!5598106 d!1770038))

(declare-fun b!5599411 () Bool)

(declare-fun e!3454020 () (InoxSet Context!9938))

(assert (=> b!5599411 (= e!3454020 ((as const (Array Context!9938 Bool)) false))))

(declare-fun b!5599412 () Bool)

(declare-fun e!3454019 () Bool)

(assert (=> b!5599412 (= e!3454019 (nullable!5617 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343))))))))))

(declare-fun b!5599413 () Bool)

(declare-fun call!420157 () (InoxSet Context!9938))

(assert (=> b!5599413 (= e!3454020 call!420157)))

(declare-fun d!1770084 () Bool)

(declare-fun c!981865 () Bool)

(assert (=> d!1770084 (= c!981865 e!3454019)))

(declare-fun res!2374964 () Bool)

(assert (=> d!1770084 (=> (not res!2374964) (not e!3454019))))

(assert (=> d!1770084 (= res!2374964 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))))))))

(declare-fun e!3454018 () (InoxSet Context!9938))

(assert (=> d!1770084 (= (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))) (h!69380 s!2326)) e!3454018)))

(declare-fun bm!420152 () Bool)

(assert (=> bm!420152 (= call!420157 (derivationStepZipperDown!927 (h!69378 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))))) (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343))))))) (h!69380 s!2326)))))

(declare-fun b!5599414 () Bool)

(assert (=> b!5599414 (= e!3454018 e!3454020)))

(declare-fun c!981864 () Bool)

(assert (=> b!5599414 (= c!981864 ((_ is Cons!62930) (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343)))))))))

(declare-fun b!5599415 () Bool)

(assert (=> b!5599415 (= e!3454018 ((_ map or) call!420157 (derivationStepZipperUp!853 (Context!9939 (t!376338 (exprs!5469 (Context!9939 (t!376338 (exprs!5469 (h!69379 zl!343))))))) (h!69380 s!2326))))))

(assert (= (and d!1770084 res!2374964) b!5599412))

(assert (= (and d!1770084 c!981865) b!5599415))

(assert (= (and d!1770084 (not c!981865)) b!5599414))

(assert (= (and b!5599414 c!981864) b!5599413))

(assert (= (and b!5599414 (not c!981864)) b!5599411))

(assert (= (or b!5599415 b!5599413) bm!420152))

(declare-fun m!6578264 () Bool)

(assert (=> b!5599412 m!6578264))

(declare-fun m!6578266 () Bool)

(assert (=> bm!420152 m!6578266))

(declare-fun m!6578268 () Bool)

(assert (=> b!5599415 m!6578268))

(assert (=> b!5598143 d!1770084))

(declare-fun d!1770086 () Bool)

(assert (=> d!1770086 true))

(declare-fun setRes!37350 () Bool)

(assert (=> d!1770086 setRes!37350))

(declare-fun condSetEmpty!37350 () Bool)

(declare-fun res!2374965 () (InoxSet Context!9938))

(assert (=> d!1770086 (= condSetEmpty!37350 (= res!2374965 ((as const (Array Context!9938 Bool)) false)))))

(assert (=> d!1770086 (= (choose!42455 z!1189 lambda!300570) res!2374965)))

(declare-fun setIsEmpty!37350 () Bool)

(assert (=> setIsEmpty!37350 setRes!37350))

(declare-fun tp!1548138 () Bool)

(declare-fun e!3454021 () Bool)

(declare-fun setNonEmpty!37350 () Bool)

(declare-fun setElem!37350 () Context!9938)

(assert (=> setNonEmpty!37350 (= setRes!37350 (and tp!1548138 (inv!82209 setElem!37350) e!3454021))))

(declare-fun setRest!37350 () (InoxSet Context!9938))

(assert (=> setNonEmpty!37350 (= res!2374965 ((_ map or) (store ((as const (Array Context!9938 Bool)) false) setElem!37350 true) setRest!37350))))

(declare-fun b!5599416 () Bool)

(declare-fun tp!1548139 () Bool)

(assert (=> b!5599416 (= e!3454021 tp!1548139)))

(assert (= (and d!1770086 condSetEmpty!37350) setIsEmpty!37350))

(assert (= (and d!1770086 (not condSetEmpty!37350)) setNonEmpty!37350))

(assert (= setNonEmpty!37350 b!5599416))

(declare-fun m!6578270 () Bool)

(assert (=> setNonEmpty!37350 m!6578270))

(assert (=> d!1769506 d!1770086))

(declare-fun bs!1294747 () Bool)

(declare-fun d!1770088 () Bool)

(assert (= bs!1294747 (and d!1770088 d!1770044)))

(declare-fun lambda!300712 () Int)

(assert (=> bs!1294747 (= lambda!300712 lambda!300707)))

(declare-fun bs!1294748 () Bool)

(assert (= bs!1294748 (and d!1770088 d!1770062)))

(assert (=> bs!1294748 (= lambda!300712 lambda!300708)))

(declare-fun bs!1294749 () Bool)

(assert (= bs!1294749 (and d!1770088 d!1770020)))

(assert (=> bs!1294749 (= lambda!300712 lambda!300701)))

(declare-fun bs!1294750 () Bool)

(assert (= bs!1294750 (and d!1770088 d!1769864)))

(assert (=> bs!1294750 (= lambda!300712 lambda!300680)))

(declare-fun bs!1294751 () Bool)

(assert (= bs!1294751 (and d!1770088 d!1770032)))

(assert (=> bs!1294751 (= lambda!300712 lambda!300703)))

(declare-fun bs!1294752 () Bool)

(assert (= bs!1294752 (and d!1770088 d!1770008)))

(assert (=> bs!1294752 (= lambda!300712 lambda!300700)))

(declare-fun bs!1294753 () Bool)

(assert (= bs!1294753 (and d!1770088 d!1770076)))

(assert (=> bs!1294753 (= lambda!300712 lambda!300711)))

(declare-fun bs!1294754 () Bool)

(assert (= bs!1294754 (and d!1770088 d!1770002)))

(assert (=> bs!1294754 (= lambda!300712 lambda!300699)))

(declare-fun bs!1294755 () Bool)

(assert (= bs!1294755 (and d!1770088 d!1769876)))

(assert (=> bs!1294755 (= lambda!300712 lambda!300681)))

(assert (=> d!1770088 (= (nullableZipper!1580 lt!2256501) (exists!2174 lt!2256501 lambda!300712))))

(declare-fun bs!1294756 () Bool)

(assert (= bs!1294756 d!1770088))

(declare-fun m!6578272 () Bool)

(assert (=> bs!1294756 m!6578272))

(assert (=> b!5597964 d!1770088))

(declare-fun bs!1294757 () Bool)

(declare-fun d!1770090 () Bool)

(assert (= bs!1294757 (and d!1770090 d!1770044)))

(declare-fun lambda!300713 () Int)

(assert (=> bs!1294757 (= lambda!300713 lambda!300707)))

(declare-fun bs!1294758 () Bool)

(assert (= bs!1294758 (and d!1770090 d!1770062)))

(assert (=> bs!1294758 (= lambda!300713 lambda!300708)))

(declare-fun bs!1294759 () Bool)

(assert (= bs!1294759 (and d!1770090 d!1770020)))

(assert (=> bs!1294759 (= lambda!300713 lambda!300701)))

(declare-fun bs!1294760 () Bool)

(assert (= bs!1294760 (and d!1770090 d!1769864)))

(assert (=> bs!1294760 (= lambda!300713 lambda!300680)))

(declare-fun bs!1294761 () Bool)

(assert (= bs!1294761 (and d!1770090 d!1770032)))

(assert (=> bs!1294761 (= lambda!300713 lambda!300703)))

(declare-fun bs!1294762 () Bool)

(assert (= bs!1294762 (and d!1770090 d!1770008)))

(assert (=> bs!1294762 (= lambda!300713 lambda!300700)))

(declare-fun bs!1294763 () Bool)

(assert (= bs!1294763 (and d!1770090 d!1770076)))

(assert (=> bs!1294763 (= lambda!300713 lambda!300711)))

(declare-fun bs!1294764 () Bool)

(assert (= bs!1294764 (and d!1770090 d!1770088)))

(assert (=> bs!1294764 (= lambda!300713 lambda!300712)))

(declare-fun bs!1294765 () Bool)

(assert (= bs!1294765 (and d!1770090 d!1770002)))

(assert (=> bs!1294765 (= lambda!300713 lambda!300699)))

(declare-fun bs!1294766 () Bool)

(assert (= bs!1294766 (and d!1770090 d!1769876)))

(assert (=> bs!1294766 (= lambda!300713 lambda!300681)))

(assert (=> d!1770090 (= (nullableZipper!1580 ((_ map or) lt!2256521 lt!2256516)) (exists!2174 ((_ map or) lt!2256521 lt!2256516) lambda!300713))))

(declare-fun bs!1294767 () Bool)

(assert (= bs!1294767 d!1770090))

(declare-fun m!6578274 () Bool)

(assert (=> bs!1294767 m!6578274))

(assert (=> b!5598006 d!1770090))

(declare-fun d!1770092 () Bool)

(assert (=> d!1770092 (= ($colon$colon!1648 (exprs!5469 lt!2256515) (ite (or c!981491 c!981488) (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (regTwo!31683 (regOne!31682 r!7292)))) (Cons!62930 (ite (or c!981491 c!981488) (regTwo!31682 (regTwo!31683 (regOne!31682 r!7292))) (regTwo!31683 (regOne!31682 r!7292))) (exprs!5469 lt!2256515)))))

(assert (=> bm!419877 d!1770092))

(declare-fun b!5599417 () Bool)

(declare-fun e!3454027 () Bool)

(declare-fun call!420160 () Bool)

(assert (=> b!5599417 (= e!3454027 call!420160)))

(declare-fun d!1770094 () Bool)

(declare-fun res!2374967 () Bool)

(declare-fun e!3454028 () Bool)

(assert (=> d!1770094 (=> res!2374967 e!3454028)))

(assert (=> d!1770094 (= res!2374967 ((_ is ElementMatch!15585) lt!2256579))))

(assert (=> d!1770094 (= (validRegex!7321 lt!2256579) e!3454028)))

(declare-fun b!5599418 () Bool)

(declare-fun res!2374968 () Bool)

(declare-fun e!3454023 () Bool)

(assert (=> b!5599418 (=> (not res!2374968) (not e!3454023))))

(declare-fun call!420158 () Bool)

(assert (=> b!5599418 (= res!2374968 call!420158)))

(declare-fun e!3454025 () Bool)

(assert (=> b!5599418 (= e!3454025 e!3454023)))

(declare-fun b!5599419 () Bool)

(declare-fun res!2374966 () Bool)

(declare-fun e!3454022 () Bool)

(assert (=> b!5599419 (=> res!2374966 e!3454022)))

(assert (=> b!5599419 (= res!2374966 (not ((_ is Concat!24430) lt!2256579)))))

(assert (=> b!5599419 (= e!3454025 e!3454022)))

(declare-fun b!5599420 () Bool)

(declare-fun e!3454026 () Bool)

(assert (=> b!5599420 (= e!3454028 e!3454026)))

(declare-fun c!981867 () Bool)

(assert (=> b!5599420 (= c!981867 ((_ is Star!15585) lt!2256579))))

(declare-fun b!5599421 () Bool)

(declare-fun e!3454024 () Bool)

(declare-fun call!420159 () Bool)

(assert (=> b!5599421 (= e!3454024 call!420159)))

(declare-fun b!5599422 () Bool)

(assert (=> b!5599422 (= e!3454026 e!3454024)))

(declare-fun res!2374969 () Bool)

(assert (=> b!5599422 (= res!2374969 (not (nullable!5617 (reg!15914 lt!2256579))))))

(assert (=> b!5599422 (=> (not res!2374969) (not e!3454024))))

(declare-fun bm!420153 () Bool)

(declare-fun c!981866 () Bool)

(assert (=> bm!420153 (= call!420159 (validRegex!7321 (ite c!981867 (reg!15914 lt!2256579) (ite c!981866 (regTwo!31683 lt!2256579) (regTwo!31682 lt!2256579)))))))

(declare-fun b!5599423 () Bool)

(assert (=> b!5599423 (= e!3454023 call!420160)))

(declare-fun b!5599424 () Bool)

(assert (=> b!5599424 (= e!3454022 e!3454027)))

(declare-fun res!2374970 () Bool)

(assert (=> b!5599424 (=> (not res!2374970) (not e!3454027))))

(assert (=> b!5599424 (= res!2374970 call!420158)))

(declare-fun bm!420154 () Bool)

(assert (=> bm!420154 (= call!420158 (validRegex!7321 (ite c!981866 (regOne!31683 lt!2256579) (regOne!31682 lt!2256579))))))

(declare-fun b!5599425 () Bool)

(assert (=> b!5599425 (= e!3454026 e!3454025)))

(assert (=> b!5599425 (= c!981866 ((_ is Union!15585) lt!2256579))))

(declare-fun bm!420155 () Bool)

(assert (=> bm!420155 (= call!420160 call!420159)))

(assert (= (and d!1770094 (not res!2374967)) b!5599420))

(assert (= (and b!5599420 c!981867) b!5599422))

(assert (= (and b!5599420 (not c!981867)) b!5599425))

(assert (= (and b!5599422 res!2374969) b!5599421))

(assert (= (and b!5599425 c!981866) b!5599418))

(assert (= (and b!5599425 (not c!981866)) b!5599419))

(assert (= (and b!5599418 res!2374968) b!5599423))

(assert (= (and b!5599419 (not res!2374966)) b!5599424))

(assert (= (and b!5599424 res!2374970) b!5599417))

(assert (= (or b!5599423 b!5599417) bm!420155))

(assert (= (or b!5599418 b!5599424) bm!420154))

(assert (= (or b!5599421 bm!420155) bm!420153))

(declare-fun m!6578276 () Bool)

(assert (=> b!5599422 m!6578276))

(declare-fun m!6578278 () Bool)

(assert (=> bm!420153 m!6578278))

(declare-fun m!6578280 () Bool)

(assert (=> bm!420154 m!6578280))

(assert (=> d!1769458 d!1770094))

(declare-fun d!1770096 () Bool)

(declare-fun res!2374971 () Bool)

(declare-fun e!3454029 () Bool)

(assert (=> d!1770096 (=> res!2374971 e!3454029)))

(assert (=> d!1770096 (= res!2374971 ((_ is Nil!62930) (exprs!5469 (h!69379 zl!343))))))

(assert (=> d!1770096 (= (forall!14751 (exprs!5469 (h!69379 zl!343)) lambda!300601) e!3454029)))

(declare-fun b!5599426 () Bool)

(declare-fun e!3454030 () Bool)

(assert (=> b!5599426 (= e!3454029 e!3454030)))

(declare-fun res!2374972 () Bool)

(assert (=> b!5599426 (=> (not res!2374972) (not e!3454030))))

(assert (=> b!5599426 (= res!2374972 (dynLambda!24619 lambda!300601 (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun b!5599427 () Bool)

(assert (=> b!5599427 (= e!3454030 (forall!14751 (t!376338 (exprs!5469 (h!69379 zl!343))) lambda!300601))))

(assert (= (and d!1770096 (not res!2374971)) b!5599426))

(assert (= (and b!5599426 res!2374972) b!5599427))

(declare-fun b_lambda!212183 () Bool)

(assert (=> (not b_lambda!212183) (not b!5599426)))

(declare-fun m!6578282 () Bool)

(assert (=> b!5599426 m!6578282))

(declare-fun m!6578284 () Bool)

(assert (=> b!5599427 m!6578284))

(assert (=> d!1769458 d!1770096))

(assert (=> d!1769500 d!1769506))

(declare-fun d!1770098 () Bool)

(assert (=> d!1770098 (= (flatMap!1198 z!1189 lambda!300570) (dynLambda!24617 lambda!300570 (h!69379 zl!343)))))

(assert (=> d!1770098 true))

(declare-fun _$13!2223 () Unit!155772)

(assert (=> d!1770098 (= (choose!42456 z!1189 (h!69379 zl!343) lambda!300570) _$13!2223)))

(declare-fun b_lambda!212185 () Bool)

(assert (=> (not b_lambda!212185) (not d!1770098)))

(declare-fun bs!1294768 () Bool)

(assert (= bs!1294768 d!1770098))

(assert (=> bs!1294768 m!6576458))

(assert (=> bs!1294768 m!6577040))

(assert (=> d!1769500 d!1770098))

(declare-fun d!1770100 () Bool)

(declare-fun c!981868 () Bool)

(assert (=> d!1770100 (= c!981868 (isEmpty!34758 (tail!11034 s!2326)))))

(declare-fun e!3454031 () Bool)

(assert (=> d!1770100 (= (matchZipper!1723 (derivationStepZipper!1684 z!1189 (head!11939 s!2326)) (tail!11034 s!2326)) e!3454031)))

(declare-fun b!5599428 () Bool)

(assert (=> b!5599428 (= e!3454031 (nullableZipper!1580 (derivationStepZipper!1684 z!1189 (head!11939 s!2326))))))

(declare-fun b!5599429 () Bool)

(assert (=> b!5599429 (= e!3454031 (matchZipper!1723 (derivationStepZipper!1684 (derivationStepZipper!1684 z!1189 (head!11939 s!2326)) (head!11939 (tail!11034 s!2326))) (tail!11034 (tail!11034 s!2326))))))

(assert (= (and d!1770100 c!981868) b!5599428))

(assert (= (and d!1770100 (not c!981868)) b!5599429))

(assert (=> d!1770100 m!6576854))

(assert (=> d!1770100 m!6577108))

(assert (=> b!5599428 m!6576888))

(declare-fun m!6578286 () Bool)

(assert (=> b!5599428 m!6578286))

(assert (=> b!5599429 m!6576854))

(assert (=> b!5599429 m!6577814))

(assert (=> b!5599429 m!6576888))

(assert (=> b!5599429 m!6577814))

(declare-fun m!6578288 () Bool)

(assert (=> b!5599429 m!6578288))

(assert (=> b!5599429 m!6576854))

(assert (=> b!5599429 m!6577808))

(assert (=> b!5599429 m!6578288))

(assert (=> b!5599429 m!6577808))

(declare-fun m!6578290 () Bool)

(assert (=> b!5599429 m!6578290))

(assert (=> b!5597963 d!1770100))

(declare-fun bs!1294769 () Bool)

(declare-fun d!1770102 () Bool)

(assert (= bs!1294769 (and d!1770102 d!1770068)))

(declare-fun lambda!300714 () Int)

(assert (=> bs!1294769 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300710))))

(declare-fun bs!1294770 () Bool)

(assert (= bs!1294770 (and d!1770102 d!1769916)))

(assert (=> bs!1294770 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300686))))

(declare-fun bs!1294771 () Bool)

(assert (= bs!1294771 (and d!1770102 d!1770024)))

(assert (=> bs!1294771 (= lambda!300714 lambda!300702)))

(declare-fun bs!1294772 () Bool)

(assert (= bs!1294772 (and d!1770102 d!1769904)))

(assert (=> bs!1294772 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300685))))

(declare-fun bs!1294773 () Bool)

(assert (= bs!1294773 (and d!1770102 b!5597513)))

(assert (=> bs!1294773 (= (= (head!11939 s!2326) (h!69380 s!2326)) (= lambda!300714 lambda!300570))))

(declare-fun bs!1294774 () Bool)

(assert (= bs!1294774 (and d!1770102 d!1769936)))

(assert (=> bs!1294774 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300688))))

(declare-fun bs!1294775 () Bool)

(assert (= bs!1294775 (and d!1770102 d!1769980)))

(assert (=> bs!1294775 (= lambda!300714 lambda!300695)))

(declare-fun bs!1294776 () Bool)

(assert (= bs!1294776 (and d!1770102 d!1769990)))

(assert (=> bs!1294776 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300698))))

(declare-fun bs!1294777 () Bool)

(assert (= bs!1294777 (and d!1770102 d!1769984)))

(assert (=> bs!1294777 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300696))))

(declare-fun bs!1294778 () Bool)

(assert (= bs!1294778 (and d!1770102 d!1769920)))

(assert (=> bs!1294778 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300687))))

(declare-fun bs!1294779 () Bool)

(assert (= bs!1294779 (and d!1770102 d!1769956)))

(assert (=> bs!1294779 (= (= (head!11939 s!2326) (head!11939 (t!376340 s!2326))) (= lambda!300714 lambda!300691))))

(assert (=> d!1770102 true))

(assert (=> d!1770102 (= (derivationStepZipper!1684 z!1189 (head!11939 s!2326)) (flatMap!1198 z!1189 lambda!300714))))

(declare-fun bs!1294780 () Bool)

(assert (= bs!1294780 d!1770102))

(declare-fun m!6578292 () Bool)

(assert (=> bs!1294780 m!6578292))

(assert (=> b!5597963 d!1770102))

(assert (=> b!5597963 d!1769870))

(assert (=> b!5597963 d!1769872))

(declare-fun b!5599430 () Bool)

(declare-fun e!3454032 () Bool)

(assert (=> b!5599430 (= e!3454032 tp_is_empty!40423)))

(declare-fun b!5599432 () Bool)

(declare-fun tp!1548143 () Bool)

(assert (=> b!5599432 (= e!3454032 tp!1548143)))

(declare-fun b!5599431 () Bool)

(declare-fun tp!1548142 () Bool)

(declare-fun tp!1548141 () Bool)

(assert (=> b!5599431 (= e!3454032 (and tp!1548142 tp!1548141))))

(assert (=> b!5598324 (= tp!1547953 e!3454032)))

(declare-fun b!5599433 () Bool)

(declare-fun tp!1548140 () Bool)

(declare-fun tp!1548144 () Bool)

(assert (=> b!5599433 (= e!3454032 (and tp!1548140 tp!1548144))))

(assert (= (and b!5598324 ((_ is ElementMatch!15585) (reg!15914 (regOne!31683 r!7292)))) b!5599430))

(assert (= (and b!5598324 ((_ is Concat!24430) (reg!15914 (regOne!31683 r!7292)))) b!5599431))

(assert (= (and b!5598324 ((_ is Star!15585) (reg!15914 (regOne!31683 r!7292)))) b!5599432))

(assert (= (and b!5598324 ((_ is Union!15585) (reg!15914 (regOne!31683 r!7292)))) b!5599433))

(declare-fun b!5599434 () Bool)

(declare-fun e!3454033 () Bool)

(assert (=> b!5599434 (= e!3454033 tp_is_empty!40423)))

(declare-fun b!5599436 () Bool)

(declare-fun tp!1548148 () Bool)

(assert (=> b!5599436 (= e!3454033 tp!1548148)))

(declare-fun b!5599435 () Bool)

(declare-fun tp!1548147 () Bool)

(declare-fun tp!1548146 () Bool)

(assert (=> b!5599435 (= e!3454033 (and tp!1548147 tp!1548146))))

(assert (=> b!5598325 (= tp!1547950 e!3454033)))

(declare-fun b!5599437 () Bool)

(declare-fun tp!1548145 () Bool)

(declare-fun tp!1548149 () Bool)

(assert (=> b!5599437 (= e!3454033 (and tp!1548145 tp!1548149))))

(assert (= (and b!5598325 ((_ is ElementMatch!15585) (regOne!31683 (regOne!31683 r!7292)))) b!5599434))

(assert (= (and b!5598325 ((_ is Concat!24430) (regOne!31683 (regOne!31683 r!7292)))) b!5599435))

(assert (= (and b!5598325 ((_ is Star!15585) (regOne!31683 (regOne!31683 r!7292)))) b!5599436))

(assert (= (and b!5598325 ((_ is Union!15585) (regOne!31683 (regOne!31683 r!7292)))) b!5599437))

(declare-fun b!5599438 () Bool)

(declare-fun e!3454034 () Bool)

(assert (=> b!5599438 (= e!3454034 tp_is_empty!40423)))

(declare-fun b!5599440 () Bool)

(declare-fun tp!1548153 () Bool)

(assert (=> b!5599440 (= e!3454034 tp!1548153)))

(declare-fun b!5599439 () Bool)

(declare-fun tp!1548152 () Bool)

(declare-fun tp!1548151 () Bool)

(assert (=> b!5599439 (= e!3454034 (and tp!1548152 tp!1548151))))

(assert (=> b!5598325 (= tp!1547954 e!3454034)))

(declare-fun b!5599441 () Bool)

(declare-fun tp!1548150 () Bool)

(declare-fun tp!1548154 () Bool)

(assert (=> b!5599441 (= e!3454034 (and tp!1548150 tp!1548154))))

(assert (= (and b!5598325 ((_ is ElementMatch!15585) (regTwo!31683 (regOne!31683 r!7292)))) b!5599438))

(assert (= (and b!5598325 ((_ is Concat!24430) (regTwo!31683 (regOne!31683 r!7292)))) b!5599439))

(assert (= (and b!5598325 ((_ is Star!15585) (regTwo!31683 (regOne!31683 r!7292)))) b!5599440))

(assert (= (and b!5598325 ((_ is Union!15585) (regTwo!31683 (regOne!31683 r!7292)))) b!5599441))

(declare-fun b!5599442 () Bool)

(declare-fun e!3454035 () Bool)

(assert (=> b!5599442 (= e!3454035 tp_is_empty!40423)))

(declare-fun b!5599444 () Bool)

(declare-fun tp!1548158 () Bool)

(assert (=> b!5599444 (= e!3454035 tp!1548158)))

(declare-fun b!5599443 () Bool)

(declare-fun tp!1548157 () Bool)

(declare-fun tp!1548156 () Bool)

(assert (=> b!5599443 (= e!3454035 (and tp!1548157 tp!1548156))))

(assert (=> b!5598323 (= tp!1547952 e!3454035)))

(declare-fun b!5599445 () Bool)

(declare-fun tp!1548155 () Bool)

(declare-fun tp!1548159 () Bool)

(assert (=> b!5599445 (= e!3454035 (and tp!1548155 tp!1548159))))

(assert (= (and b!5598323 ((_ is ElementMatch!15585) (regOne!31682 (regOne!31683 r!7292)))) b!5599442))

(assert (= (and b!5598323 ((_ is Concat!24430) (regOne!31682 (regOne!31683 r!7292)))) b!5599443))

(assert (= (and b!5598323 ((_ is Star!15585) (regOne!31682 (regOne!31683 r!7292)))) b!5599444))

(assert (= (and b!5598323 ((_ is Union!15585) (regOne!31682 (regOne!31683 r!7292)))) b!5599445))

(declare-fun b!5599446 () Bool)

(declare-fun e!3454036 () Bool)

(assert (=> b!5599446 (= e!3454036 tp_is_empty!40423)))

(declare-fun b!5599448 () Bool)

(declare-fun tp!1548163 () Bool)

(assert (=> b!5599448 (= e!3454036 tp!1548163)))

(declare-fun b!5599447 () Bool)

(declare-fun tp!1548162 () Bool)

(declare-fun tp!1548161 () Bool)

(assert (=> b!5599447 (= e!3454036 (and tp!1548162 tp!1548161))))

(assert (=> b!5598323 (= tp!1547951 e!3454036)))

(declare-fun b!5599449 () Bool)

(declare-fun tp!1548160 () Bool)

(declare-fun tp!1548164 () Bool)

(assert (=> b!5599449 (= e!3454036 (and tp!1548160 tp!1548164))))

(assert (= (and b!5598323 ((_ is ElementMatch!15585) (regTwo!31682 (regOne!31683 r!7292)))) b!5599446))

(assert (= (and b!5598323 ((_ is Concat!24430) (regTwo!31682 (regOne!31683 r!7292)))) b!5599447))

(assert (= (and b!5598323 ((_ is Star!15585) (regTwo!31682 (regOne!31683 r!7292)))) b!5599448))

(assert (= (and b!5598323 ((_ is Union!15585) (regTwo!31682 (regOne!31683 r!7292)))) b!5599449))

(declare-fun b!5599450 () Bool)

(declare-fun e!3454037 () Bool)

(assert (=> b!5599450 (= e!3454037 tp_is_empty!40423)))

(declare-fun b!5599452 () Bool)

(declare-fun tp!1548168 () Bool)

(assert (=> b!5599452 (= e!3454037 tp!1548168)))

(declare-fun b!5599451 () Bool)

(declare-fun tp!1548167 () Bool)

(declare-fun tp!1548166 () Bool)

(assert (=> b!5599451 (= e!3454037 (and tp!1548167 tp!1548166))))

(assert (=> b!5598305 (= tp!1547929 e!3454037)))

(declare-fun b!5599453 () Bool)

(declare-fun tp!1548165 () Bool)

(declare-fun tp!1548169 () Bool)

(assert (=> b!5599453 (= e!3454037 (and tp!1548165 tp!1548169))))

(assert (= (and b!5598305 ((_ is ElementMatch!15585) (reg!15914 (regTwo!31682 r!7292)))) b!5599450))

(assert (= (and b!5598305 ((_ is Concat!24430) (reg!15914 (regTwo!31682 r!7292)))) b!5599451))

(assert (= (and b!5598305 ((_ is Star!15585) (reg!15914 (regTwo!31682 r!7292)))) b!5599452))

(assert (= (and b!5598305 ((_ is Union!15585) (reg!15914 (regTwo!31682 r!7292)))) b!5599453))

(declare-fun b!5599454 () Bool)

(declare-fun e!3454038 () Bool)

(assert (=> b!5599454 (= e!3454038 tp_is_empty!40423)))

(declare-fun b!5599456 () Bool)

(declare-fun tp!1548173 () Bool)

(assert (=> b!5599456 (= e!3454038 tp!1548173)))

(declare-fun b!5599455 () Bool)

(declare-fun tp!1548172 () Bool)

(declare-fun tp!1548171 () Bool)

(assert (=> b!5599455 (= e!3454038 (and tp!1548172 tp!1548171))))

(assert (=> b!5598306 (= tp!1547926 e!3454038)))

(declare-fun b!5599457 () Bool)

(declare-fun tp!1548170 () Bool)

(declare-fun tp!1548174 () Bool)

(assert (=> b!5599457 (= e!3454038 (and tp!1548170 tp!1548174))))

(assert (= (and b!5598306 ((_ is ElementMatch!15585) (regOne!31683 (regTwo!31682 r!7292)))) b!5599454))

(assert (= (and b!5598306 ((_ is Concat!24430) (regOne!31683 (regTwo!31682 r!7292)))) b!5599455))

(assert (= (and b!5598306 ((_ is Star!15585) (regOne!31683 (regTwo!31682 r!7292)))) b!5599456))

(assert (= (and b!5598306 ((_ is Union!15585) (regOne!31683 (regTwo!31682 r!7292)))) b!5599457))

(declare-fun b!5599458 () Bool)

(declare-fun e!3454039 () Bool)

(assert (=> b!5599458 (= e!3454039 tp_is_empty!40423)))

(declare-fun b!5599460 () Bool)

(declare-fun tp!1548178 () Bool)

(assert (=> b!5599460 (= e!3454039 tp!1548178)))

(declare-fun b!5599459 () Bool)

(declare-fun tp!1548177 () Bool)

(declare-fun tp!1548176 () Bool)

(assert (=> b!5599459 (= e!3454039 (and tp!1548177 tp!1548176))))

(assert (=> b!5598306 (= tp!1547930 e!3454039)))

(declare-fun b!5599461 () Bool)

(declare-fun tp!1548175 () Bool)

(declare-fun tp!1548179 () Bool)

(assert (=> b!5599461 (= e!3454039 (and tp!1548175 tp!1548179))))

(assert (= (and b!5598306 ((_ is ElementMatch!15585) (regTwo!31683 (regTwo!31682 r!7292)))) b!5599458))

(assert (= (and b!5598306 ((_ is Concat!24430) (regTwo!31683 (regTwo!31682 r!7292)))) b!5599459))

(assert (= (and b!5598306 ((_ is Star!15585) (regTwo!31683 (regTwo!31682 r!7292)))) b!5599460))

(assert (= (and b!5598306 ((_ is Union!15585) (regTwo!31683 (regTwo!31682 r!7292)))) b!5599461))

(declare-fun b!5599462 () Bool)

(declare-fun e!3454040 () Bool)

(assert (=> b!5599462 (= e!3454040 tp_is_empty!40423)))

(declare-fun b!5599464 () Bool)

(declare-fun tp!1548183 () Bool)

(assert (=> b!5599464 (= e!3454040 tp!1548183)))

(declare-fun b!5599463 () Bool)

(declare-fun tp!1548182 () Bool)

(declare-fun tp!1548181 () Bool)

(assert (=> b!5599463 (= e!3454040 (and tp!1548182 tp!1548181))))

(assert (=> b!5598318 (= tp!1547945 e!3454040)))

(declare-fun b!5599465 () Bool)

(declare-fun tp!1548180 () Bool)

(declare-fun tp!1548184 () Bool)

(assert (=> b!5599465 (= e!3454040 (and tp!1548180 tp!1548184))))

(assert (= (and b!5598318 ((_ is ElementMatch!15585) (regOne!31682 (reg!15914 r!7292)))) b!5599462))

(assert (= (and b!5598318 ((_ is Concat!24430) (regOne!31682 (reg!15914 r!7292)))) b!5599463))

(assert (= (and b!5598318 ((_ is Star!15585) (regOne!31682 (reg!15914 r!7292)))) b!5599464))

(assert (= (and b!5598318 ((_ is Union!15585) (regOne!31682 (reg!15914 r!7292)))) b!5599465))

(declare-fun b!5599466 () Bool)

(declare-fun e!3454041 () Bool)

(assert (=> b!5599466 (= e!3454041 tp_is_empty!40423)))

(declare-fun b!5599468 () Bool)

(declare-fun tp!1548188 () Bool)

(assert (=> b!5599468 (= e!3454041 tp!1548188)))

(declare-fun b!5599467 () Bool)

(declare-fun tp!1548187 () Bool)

(declare-fun tp!1548186 () Bool)

(assert (=> b!5599467 (= e!3454041 (and tp!1548187 tp!1548186))))

(assert (=> b!5598318 (= tp!1547944 e!3454041)))

(declare-fun b!5599469 () Bool)

(declare-fun tp!1548185 () Bool)

(declare-fun tp!1548189 () Bool)

(assert (=> b!5599469 (= e!3454041 (and tp!1548185 tp!1548189))))

(assert (= (and b!5598318 ((_ is ElementMatch!15585) (regTwo!31682 (reg!15914 r!7292)))) b!5599466))

(assert (= (and b!5598318 ((_ is Concat!24430) (regTwo!31682 (reg!15914 r!7292)))) b!5599467))

(assert (= (and b!5598318 ((_ is Star!15585) (regTwo!31682 (reg!15914 r!7292)))) b!5599468))

(assert (= (and b!5598318 ((_ is Union!15585) (regTwo!31682 (reg!15914 r!7292)))) b!5599469))

(declare-fun b!5599471 () Bool)

(declare-fun e!3454043 () Bool)

(declare-fun tp!1548190 () Bool)

(assert (=> b!5599471 (= e!3454043 tp!1548190)))

(declare-fun e!3454042 () Bool)

(declare-fun b!5599470 () Bool)

(declare-fun tp!1548191 () Bool)

(assert (=> b!5599470 (= e!3454042 (and (inv!82209 (h!69379 (t!376339 (t!376339 zl!343)))) e!3454043 tp!1548191))))

(assert (=> b!5598282 (= tp!1547907 e!3454042)))

(assert (= b!5599470 b!5599471))

(assert (= (and b!5598282 ((_ is Cons!62931) (t!376339 (t!376339 zl!343)))) b!5599470))

(declare-fun m!6578294 () Bool)

(assert (=> b!5599470 m!6578294))

(declare-fun b!5599472 () Bool)

(declare-fun e!3454044 () Bool)

(assert (=> b!5599472 (= e!3454044 tp_is_empty!40423)))

(declare-fun b!5599474 () Bool)

(declare-fun tp!1548195 () Bool)

(assert (=> b!5599474 (= e!3454044 tp!1548195)))

(declare-fun b!5599473 () Bool)

(declare-fun tp!1548194 () Bool)

(declare-fun tp!1548193 () Bool)

(assert (=> b!5599473 (= e!3454044 (and tp!1548194 tp!1548193))))

(assert (=> b!5598311 (= tp!1547935 e!3454044)))

(declare-fun b!5599475 () Bool)

(declare-fun tp!1548192 () Bool)

(declare-fun tp!1548196 () Bool)

(assert (=> b!5599475 (= e!3454044 (and tp!1548192 tp!1548196))))

(assert (= (and b!5598311 ((_ is ElementMatch!15585) (h!69378 (exprs!5469 (h!69379 zl!343))))) b!5599472))

(assert (= (and b!5598311 ((_ is Concat!24430) (h!69378 (exprs!5469 (h!69379 zl!343))))) b!5599473))

(assert (= (and b!5598311 ((_ is Star!15585) (h!69378 (exprs!5469 (h!69379 zl!343))))) b!5599474))

(assert (= (and b!5598311 ((_ is Union!15585) (h!69378 (exprs!5469 (h!69379 zl!343))))) b!5599475))

(declare-fun b!5599476 () Bool)

(declare-fun e!3454045 () Bool)

(declare-fun tp!1548197 () Bool)

(declare-fun tp!1548198 () Bool)

(assert (=> b!5599476 (= e!3454045 (and tp!1548197 tp!1548198))))

(assert (=> b!5598311 (= tp!1547936 e!3454045)))

(assert (= (and b!5598311 ((_ is Cons!62930) (t!376338 (exprs!5469 (h!69379 zl!343))))) b!5599476))

(declare-fun b!5599477 () Bool)

(declare-fun e!3454046 () Bool)

(declare-fun tp!1548199 () Bool)

(assert (=> b!5599477 (= e!3454046 (and tp_is_empty!40423 tp!1548199))))

(assert (=> b!5598288 (= tp!1547910 e!3454046)))

(assert (= (and b!5598288 ((_ is Cons!62932) (t!376340 (t!376340 s!2326)))) b!5599477))

(declare-fun b!5599478 () Bool)

(declare-fun e!3454047 () Bool)

(assert (=> b!5599478 (= e!3454047 tp_is_empty!40423)))

(declare-fun b!5599480 () Bool)

(declare-fun tp!1548203 () Bool)

(assert (=> b!5599480 (= e!3454047 tp!1548203)))

(declare-fun b!5599479 () Bool)

(declare-fun tp!1548202 () Bool)

(declare-fun tp!1548201 () Bool)

(assert (=> b!5599479 (= e!3454047 (and tp!1548202 tp!1548201))))

(assert (=> b!5598304 (= tp!1547928 e!3454047)))

(declare-fun b!5599481 () Bool)

(declare-fun tp!1548200 () Bool)

(declare-fun tp!1548204 () Bool)

(assert (=> b!5599481 (= e!3454047 (and tp!1548200 tp!1548204))))

(assert (= (and b!5598304 ((_ is ElementMatch!15585) (regOne!31682 (regTwo!31682 r!7292)))) b!5599478))

(assert (= (and b!5598304 ((_ is Concat!24430) (regOne!31682 (regTwo!31682 r!7292)))) b!5599479))

(assert (= (and b!5598304 ((_ is Star!15585) (regOne!31682 (regTwo!31682 r!7292)))) b!5599480))

(assert (= (and b!5598304 ((_ is Union!15585) (regOne!31682 (regTwo!31682 r!7292)))) b!5599481))

(declare-fun b!5599482 () Bool)

(declare-fun e!3454048 () Bool)

(assert (=> b!5599482 (= e!3454048 tp_is_empty!40423)))

(declare-fun b!5599484 () Bool)

(declare-fun tp!1548208 () Bool)

(assert (=> b!5599484 (= e!3454048 tp!1548208)))

(declare-fun b!5599483 () Bool)

(declare-fun tp!1548207 () Bool)

(declare-fun tp!1548206 () Bool)

(assert (=> b!5599483 (= e!3454048 (and tp!1548207 tp!1548206))))

(assert (=> b!5598304 (= tp!1547927 e!3454048)))

(declare-fun b!5599485 () Bool)

(declare-fun tp!1548205 () Bool)

(declare-fun tp!1548209 () Bool)

(assert (=> b!5599485 (= e!3454048 (and tp!1548205 tp!1548209))))

(assert (= (and b!5598304 ((_ is ElementMatch!15585) (regTwo!31682 (regTwo!31682 r!7292)))) b!5599482))

(assert (= (and b!5598304 ((_ is Concat!24430) (regTwo!31682 (regTwo!31682 r!7292)))) b!5599483))

(assert (= (and b!5598304 ((_ is Star!15585) (regTwo!31682 (regTwo!31682 r!7292)))) b!5599484))

(assert (= (and b!5598304 ((_ is Union!15585) (regTwo!31682 (regTwo!31682 r!7292)))) b!5599485))

(declare-fun b!5599486 () Bool)

(declare-fun e!3454049 () Bool)

(assert (=> b!5599486 (= e!3454049 tp_is_empty!40423)))

(declare-fun b!5599488 () Bool)

(declare-fun tp!1548213 () Bool)

(assert (=> b!5599488 (= e!3454049 tp!1548213)))

(declare-fun b!5599487 () Bool)

(declare-fun tp!1548212 () Bool)

(declare-fun tp!1548211 () Bool)

(assert (=> b!5599487 (= e!3454049 (and tp!1548212 tp!1548211))))

(assert (=> b!5598329 (= tp!1547955 e!3454049)))

(declare-fun b!5599489 () Bool)

(declare-fun tp!1548210 () Bool)

(declare-fun tp!1548214 () Bool)

(assert (=> b!5599489 (= e!3454049 (and tp!1548210 tp!1548214))))

(assert (= (and b!5598329 ((_ is ElementMatch!15585) (regOne!31683 (regTwo!31683 r!7292)))) b!5599486))

(assert (= (and b!5598329 ((_ is Concat!24430) (regOne!31683 (regTwo!31683 r!7292)))) b!5599487))

(assert (= (and b!5598329 ((_ is Star!15585) (regOne!31683 (regTwo!31683 r!7292)))) b!5599488))

(assert (= (and b!5598329 ((_ is Union!15585) (regOne!31683 (regTwo!31683 r!7292)))) b!5599489))

(declare-fun b!5599490 () Bool)

(declare-fun e!3454050 () Bool)

(assert (=> b!5599490 (= e!3454050 tp_is_empty!40423)))

(declare-fun b!5599492 () Bool)

(declare-fun tp!1548218 () Bool)

(assert (=> b!5599492 (= e!3454050 tp!1548218)))

(declare-fun b!5599491 () Bool)

(declare-fun tp!1548217 () Bool)

(declare-fun tp!1548216 () Bool)

(assert (=> b!5599491 (= e!3454050 (and tp!1548217 tp!1548216))))

(assert (=> b!5598329 (= tp!1547959 e!3454050)))

(declare-fun b!5599493 () Bool)

(declare-fun tp!1548215 () Bool)

(declare-fun tp!1548219 () Bool)

(assert (=> b!5599493 (= e!3454050 (and tp!1548215 tp!1548219))))

(assert (= (and b!5598329 ((_ is ElementMatch!15585) (regTwo!31683 (regTwo!31683 r!7292)))) b!5599490))

(assert (= (and b!5598329 ((_ is Concat!24430) (regTwo!31683 (regTwo!31683 r!7292)))) b!5599491))

(assert (= (and b!5598329 ((_ is Star!15585) (regTwo!31683 (regTwo!31683 r!7292)))) b!5599492))

(assert (= (and b!5598329 ((_ is Union!15585) (regTwo!31683 (regTwo!31683 r!7292)))) b!5599493))

(declare-fun b!5599494 () Bool)

(declare-fun e!3454051 () Bool)

(assert (=> b!5599494 (= e!3454051 tp_is_empty!40423)))

(declare-fun b!5599496 () Bool)

(declare-fun tp!1548223 () Bool)

(assert (=> b!5599496 (= e!3454051 tp!1548223)))

(declare-fun b!5599495 () Bool)

(declare-fun tp!1548222 () Bool)

(declare-fun tp!1548221 () Bool)

(assert (=> b!5599495 (= e!3454051 (and tp!1548222 tp!1548221))))

(assert (=> b!5598328 (= tp!1547958 e!3454051)))

(declare-fun b!5599497 () Bool)

(declare-fun tp!1548220 () Bool)

(declare-fun tp!1548224 () Bool)

(assert (=> b!5599497 (= e!3454051 (and tp!1548220 tp!1548224))))

(assert (= (and b!5598328 ((_ is ElementMatch!15585) (reg!15914 (regTwo!31683 r!7292)))) b!5599494))

(assert (= (and b!5598328 ((_ is Concat!24430) (reg!15914 (regTwo!31683 r!7292)))) b!5599495))

(assert (= (and b!5598328 ((_ is Star!15585) (reg!15914 (regTwo!31683 r!7292)))) b!5599496))

(assert (= (and b!5598328 ((_ is Union!15585) (reg!15914 (regTwo!31683 r!7292)))) b!5599497))

(declare-fun b!5599498 () Bool)

(declare-fun e!3454052 () Bool)

(assert (=> b!5599498 (= e!3454052 tp_is_empty!40423)))

(declare-fun b!5599500 () Bool)

(declare-fun tp!1548228 () Bool)

(assert (=> b!5599500 (= e!3454052 tp!1548228)))

(declare-fun b!5599499 () Bool)

(declare-fun tp!1548227 () Bool)

(declare-fun tp!1548226 () Bool)

(assert (=> b!5599499 (= e!3454052 (and tp!1548227 tp!1548226))))

(assert (=> b!5598321 (= tp!1547948 e!3454052)))

(declare-fun b!5599501 () Bool)

(declare-fun tp!1548225 () Bool)

(declare-fun tp!1548229 () Bool)

(assert (=> b!5599501 (= e!3454052 (and tp!1548225 tp!1548229))))

(assert (= (and b!5598321 ((_ is ElementMatch!15585) (h!69378 (exprs!5469 setElem!37333)))) b!5599498))

(assert (= (and b!5598321 ((_ is Concat!24430) (h!69378 (exprs!5469 setElem!37333)))) b!5599499))

(assert (= (and b!5598321 ((_ is Star!15585) (h!69378 (exprs!5469 setElem!37333)))) b!5599500))

(assert (= (and b!5598321 ((_ is Union!15585) (h!69378 (exprs!5469 setElem!37333)))) b!5599501))

(declare-fun b!5599502 () Bool)

(declare-fun e!3454053 () Bool)

(declare-fun tp!1548230 () Bool)

(declare-fun tp!1548231 () Bool)

(assert (=> b!5599502 (= e!3454053 (and tp!1548230 tp!1548231))))

(assert (=> b!5598321 (= tp!1547949 e!3454053)))

(assert (= (and b!5598321 ((_ is Cons!62930) (t!376338 (exprs!5469 setElem!37333)))) b!5599502))

(declare-fun b!5599503 () Bool)

(declare-fun e!3454054 () Bool)

(assert (=> b!5599503 (= e!3454054 tp_is_empty!40423)))

(declare-fun b!5599505 () Bool)

(declare-fun tp!1548235 () Bool)

(assert (=> b!5599505 (= e!3454054 tp!1548235)))

(declare-fun b!5599504 () Bool)

(declare-fun tp!1548234 () Bool)

(declare-fun tp!1548233 () Bool)

(assert (=> b!5599504 (= e!3454054 (and tp!1548234 tp!1548233))))

(assert (=> b!5598320 (= tp!1547943 e!3454054)))

(declare-fun b!5599506 () Bool)

(declare-fun tp!1548232 () Bool)

(declare-fun tp!1548236 () Bool)

(assert (=> b!5599506 (= e!3454054 (and tp!1548232 tp!1548236))))

(assert (= (and b!5598320 ((_ is ElementMatch!15585) (regOne!31683 (reg!15914 r!7292)))) b!5599503))

(assert (= (and b!5598320 ((_ is Concat!24430) (regOne!31683 (reg!15914 r!7292)))) b!5599504))

(assert (= (and b!5598320 ((_ is Star!15585) (regOne!31683 (reg!15914 r!7292)))) b!5599505))

(assert (= (and b!5598320 ((_ is Union!15585) (regOne!31683 (reg!15914 r!7292)))) b!5599506))

(declare-fun b!5599507 () Bool)

(declare-fun e!3454055 () Bool)

(assert (=> b!5599507 (= e!3454055 tp_is_empty!40423)))

(declare-fun b!5599509 () Bool)

(declare-fun tp!1548240 () Bool)

(assert (=> b!5599509 (= e!3454055 tp!1548240)))

(declare-fun b!5599508 () Bool)

(declare-fun tp!1548239 () Bool)

(declare-fun tp!1548238 () Bool)

(assert (=> b!5599508 (= e!3454055 (and tp!1548239 tp!1548238))))

(assert (=> b!5598320 (= tp!1547947 e!3454055)))

(declare-fun b!5599510 () Bool)

(declare-fun tp!1548237 () Bool)

(declare-fun tp!1548241 () Bool)

(assert (=> b!5599510 (= e!3454055 (and tp!1548237 tp!1548241))))

(assert (= (and b!5598320 ((_ is ElementMatch!15585) (regTwo!31683 (reg!15914 r!7292)))) b!5599507))

(assert (= (and b!5598320 ((_ is Concat!24430) (regTwo!31683 (reg!15914 r!7292)))) b!5599508))

(assert (= (and b!5598320 ((_ is Star!15585) (regTwo!31683 (reg!15914 r!7292)))) b!5599509))

(assert (= (and b!5598320 ((_ is Union!15585) (regTwo!31683 (reg!15914 r!7292)))) b!5599510))

(declare-fun b!5599511 () Bool)

(declare-fun e!3454056 () Bool)

(assert (=> b!5599511 (= e!3454056 tp_is_empty!40423)))

(declare-fun b!5599513 () Bool)

(declare-fun tp!1548245 () Bool)

(assert (=> b!5599513 (= e!3454056 tp!1548245)))

(declare-fun b!5599512 () Bool)

(declare-fun tp!1548244 () Bool)

(declare-fun tp!1548243 () Bool)

(assert (=> b!5599512 (= e!3454056 (and tp!1548244 tp!1548243))))

(assert (=> b!5598319 (= tp!1547946 e!3454056)))

(declare-fun b!5599514 () Bool)

(declare-fun tp!1548242 () Bool)

(declare-fun tp!1548246 () Bool)

(assert (=> b!5599514 (= e!3454056 (and tp!1548242 tp!1548246))))

(assert (= (and b!5598319 ((_ is ElementMatch!15585) (reg!15914 (reg!15914 r!7292)))) b!5599511))

(assert (= (and b!5598319 ((_ is Concat!24430) (reg!15914 (reg!15914 r!7292)))) b!5599512))

(assert (= (and b!5598319 ((_ is Star!15585) (reg!15914 (reg!15914 r!7292)))) b!5599513))

(assert (= (and b!5598319 ((_ is Union!15585) (reg!15914 (reg!15914 r!7292)))) b!5599514))

(declare-fun b!5599515 () Bool)

(declare-fun e!3454057 () Bool)

(declare-fun tp!1548247 () Bool)

(declare-fun tp!1548248 () Bool)

(assert (=> b!5599515 (= e!3454057 (and tp!1548247 tp!1548248))))

(assert (=> b!5598283 (= tp!1547906 e!3454057)))

(assert (= (and b!5598283 ((_ is Cons!62930) (exprs!5469 (h!69379 (t!376339 zl!343))))) b!5599515))

(declare-fun b!5599516 () Bool)

(declare-fun e!3454058 () Bool)

(assert (=> b!5599516 (= e!3454058 tp_is_empty!40423)))

(declare-fun b!5599518 () Bool)

(declare-fun tp!1548252 () Bool)

(assert (=> b!5599518 (= e!3454058 tp!1548252)))

(declare-fun b!5599517 () Bool)

(declare-fun tp!1548251 () Bool)

(declare-fun tp!1548250 () Bool)

(assert (=> b!5599517 (= e!3454058 (and tp!1548251 tp!1548250))))

(assert (=> b!5598327 (= tp!1547957 e!3454058)))

(declare-fun b!5599519 () Bool)

(declare-fun tp!1548249 () Bool)

(declare-fun tp!1548253 () Bool)

(assert (=> b!5599519 (= e!3454058 (and tp!1548249 tp!1548253))))

(assert (= (and b!5598327 ((_ is ElementMatch!15585) (regOne!31682 (regTwo!31683 r!7292)))) b!5599516))

(assert (= (and b!5598327 ((_ is Concat!24430) (regOne!31682 (regTwo!31683 r!7292)))) b!5599517))

(assert (= (and b!5598327 ((_ is Star!15585) (regOne!31682 (regTwo!31683 r!7292)))) b!5599518))

(assert (= (and b!5598327 ((_ is Union!15585) (regOne!31682 (regTwo!31683 r!7292)))) b!5599519))

(declare-fun b!5599520 () Bool)

(declare-fun e!3454059 () Bool)

(assert (=> b!5599520 (= e!3454059 tp_is_empty!40423)))

(declare-fun b!5599522 () Bool)

(declare-fun tp!1548257 () Bool)

(assert (=> b!5599522 (= e!3454059 tp!1548257)))

(declare-fun b!5599521 () Bool)

(declare-fun tp!1548256 () Bool)

(declare-fun tp!1548255 () Bool)

(assert (=> b!5599521 (= e!3454059 (and tp!1548256 tp!1548255))))

(assert (=> b!5598327 (= tp!1547956 e!3454059)))

(declare-fun b!5599523 () Bool)

(declare-fun tp!1548254 () Bool)

(declare-fun tp!1548258 () Bool)

(assert (=> b!5599523 (= e!3454059 (and tp!1548254 tp!1548258))))

(assert (= (and b!5598327 ((_ is ElementMatch!15585) (regTwo!31682 (regTwo!31683 r!7292)))) b!5599520))

(assert (= (and b!5598327 ((_ is Concat!24430) (regTwo!31682 (regTwo!31683 r!7292)))) b!5599521))

(assert (= (and b!5598327 ((_ is Star!15585) (regTwo!31682 (regTwo!31683 r!7292)))) b!5599522))

(assert (= (and b!5598327 ((_ is Union!15585) (regTwo!31682 (regTwo!31683 r!7292)))) b!5599523))

(declare-fun b!5599524 () Bool)

(declare-fun e!3454060 () Bool)

(assert (=> b!5599524 (= e!3454060 tp_is_empty!40423)))

(declare-fun b!5599526 () Bool)

(declare-fun tp!1548262 () Bool)

(assert (=> b!5599526 (= e!3454060 tp!1548262)))

(declare-fun b!5599525 () Bool)

(declare-fun tp!1548261 () Bool)

(declare-fun tp!1548260 () Bool)

(assert (=> b!5599525 (= e!3454060 (and tp!1548261 tp!1548260))))

(assert (=> b!5598300 (= tp!1547923 e!3454060)))

(declare-fun b!5599527 () Bool)

(declare-fun tp!1548259 () Bool)

(declare-fun tp!1548263 () Bool)

(assert (=> b!5599527 (= e!3454060 (and tp!1548259 tp!1548263))))

(assert (= (and b!5598300 ((_ is ElementMatch!15585) (regOne!31682 (regOne!31682 r!7292)))) b!5599524))

(assert (= (and b!5598300 ((_ is Concat!24430) (regOne!31682 (regOne!31682 r!7292)))) b!5599525))

(assert (= (and b!5598300 ((_ is Star!15585) (regOne!31682 (regOne!31682 r!7292)))) b!5599526))

(assert (= (and b!5598300 ((_ is Union!15585) (regOne!31682 (regOne!31682 r!7292)))) b!5599527))

(declare-fun b!5599528 () Bool)

(declare-fun e!3454061 () Bool)

(assert (=> b!5599528 (= e!3454061 tp_is_empty!40423)))

(declare-fun b!5599530 () Bool)

(declare-fun tp!1548267 () Bool)

(assert (=> b!5599530 (= e!3454061 tp!1548267)))

(declare-fun b!5599529 () Bool)

(declare-fun tp!1548266 () Bool)

(declare-fun tp!1548265 () Bool)

(assert (=> b!5599529 (= e!3454061 (and tp!1548266 tp!1548265))))

(assert (=> b!5598300 (= tp!1547922 e!3454061)))

(declare-fun b!5599531 () Bool)

(declare-fun tp!1548264 () Bool)

(declare-fun tp!1548268 () Bool)

(assert (=> b!5599531 (= e!3454061 (and tp!1548264 tp!1548268))))

(assert (= (and b!5598300 ((_ is ElementMatch!15585) (regTwo!31682 (regOne!31682 r!7292)))) b!5599528))

(assert (= (and b!5598300 ((_ is Concat!24430) (regTwo!31682 (regOne!31682 r!7292)))) b!5599529))

(assert (= (and b!5598300 ((_ is Star!15585) (regTwo!31682 (regOne!31682 r!7292)))) b!5599530))

(assert (= (and b!5598300 ((_ is Union!15585) (regTwo!31682 (regOne!31682 r!7292)))) b!5599531))

(declare-fun b!5599532 () Bool)

(declare-fun e!3454062 () Bool)

(declare-fun tp!1548269 () Bool)

(declare-fun tp!1548270 () Bool)

(assert (=> b!5599532 (= e!3454062 (and tp!1548269 tp!1548270))))

(assert (=> b!5598316 (= tp!1547942 e!3454062)))

(assert (= (and b!5598316 ((_ is Cons!62930) (exprs!5469 setElem!37339))) b!5599532))

(declare-fun b!5599533 () Bool)

(declare-fun e!3454063 () Bool)

(assert (=> b!5599533 (= e!3454063 tp_is_empty!40423)))

(declare-fun b!5599535 () Bool)

(declare-fun tp!1548274 () Bool)

(assert (=> b!5599535 (= e!3454063 tp!1548274)))

(declare-fun b!5599534 () Bool)

(declare-fun tp!1548273 () Bool)

(declare-fun tp!1548272 () Bool)

(assert (=> b!5599534 (= e!3454063 (and tp!1548273 tp!1548272))))

(assert (=> b!5598302 (= tp!1547921 e!3454063)))

(declare-fun b!5599536 () Bool)

(declare-fun tp!1548271 () Bool)

(declare-fun tp!1548275 () Bool)

(assert (=> b!5599536 (= e!3454063 (and tp!1548271 tp!1548275))))

(assert (= (and b!5598302 ((_ is ElementMatch!15585) (regOne!31683 (regOne!31682 r!7292)))) b!5599533))

(assert (= (and b!5598302 ((_ is Concat!24430) (regOne!31683 (regOne!31682 r!7292)))) b!5599534))

(assert (= (and b!5598302 ((_ is Star!15585) (regOne!31683 (regOne!31682 r!7292)))) b!5599535))

(assert (= (and b!5598302 ((_ is Union!15585) (regOne!31683 (regOne!31682 r!7292)))) b!5599536))

(declare-fun b!5599537 () Bool)

(declare-fun e!3454064 () Bool)

(assert (=> b!5599537 (= e!3454064 tp_is_empty!40423)))

(declare-fun b!5599539 () Bool)

(declare-fun tp!1548279 () Bool)

(assert (=> b!5599539 (= e!3454064 tp!1548279)))

(declare-fun b!5599538 () Bool)

(declare-fun tp!1548278 () Bool)

(declare-fun tp!1548277 () Bool)

(assert (=> b!5599538 (= e!3454064 (and tp!1548278 tp!1548277))))

(assert (=> b!5598302 (= tp!1547925 e!3454064)))

(declare-fun b!5599540 () Bool)

(declare-fun tp!1548276 () Bool)

(declare-fun tp!1548280 () Bool)

(assert (=> b!5599540 (= e!3454064 (and tp!1548276 tp!1548280))))

(assert (= (and b!5598302 ((_ is ElementMatch!15585) (regTwo!31683 (regOne!31682 r!7292)))) b!5599537))

(assert (= (and b!5598302 ((_ is Concat!24430) (regTwo!31683 (regOne!31682 r!7292)))) b!5599538))

(assert (= (and b!5598302 ((_ is Star!15585) (regTwo!31683 (regOne!31682 r!7292)))) b!5599539))

(assert (= (and b!5598302 ((_ is Union!15585) (regTwo!31683 (regOne!31682 r!7292)))) b!5599540))

(declare-fun condSetEmpty!37351 () Bool)

(assert (=> setNonEmpty!37339 (= condSetEmpty!37351 (= setRest!37339 ((as const (Array Context!9938 Bool)) false)))))

(declare-fun setRes!37351 () Bool)

(assert (=> setNonEmpty!37339 (= tp!1547941 setRes!37351)))

(declare-fun setIsEmpty!37351 () Bool)

(assert (=> setIsEmpty!37351 setRes!37351))

(declare-fun setElem!37351 () Context!9938)

(declare-fun setNonEmpty!37351 () Bool)

(declare-fun tp!1548281 () Bool)

(declare-fun e!3454065 () Bool)

(assert (=> setNonEmpty!37351 (= setRes!37351 (and tp!1548281 (inv!82209 setElem!37351) e!3454065))))

(declare-fun setRest!37351 () (InoxSet Context!9938))

(assert (=> setNonEmpty!37351 (= setRest!37339 ((_ map or) (store ((as const (Array Context!9938 Bool)) false) setElem!37351 true) setRest!37351))))

(declare-fun b!5599541 () Bool)

(declare-fun tp!1548282 () Bool)

(assert (=> b!5599541 (= e!3454065 tp!1548282)))

(assert (= (and setNonEmpty!37339 condSetEmpty!37351) setIsEmpty!37351))

(assert (= (and setNonEmpty!37339 (not condSetEmpty!37351)) setNonEmpty!37351))

(assert (= setNonEmpty!37351 b!5599541))

(declare-fun m!6578296 () Bool)

(assert (=> setNonEmpty!37351 m!6578296))

(declare-fun b!5599542 () Bool)

(declare-fun e!3454066 () Bool)

(assert (=> b!5599542 (= e!3454066 tp_is_empty!40423)))

(declare-fun b!5599544 () Bool)

(declare-fun tp!1548286 () Bool)

(assert (=> b!5599544 (= e!3454066 tp!1548286)))

(declare-fun b!5599543 () Bool)

(declare-fun tp!1548285 () Bool)

(declare-fun tp!1548284 () Bool)

(assert (=> b!5599543 (= e!3454066 (and tp!1548285 tp!1548284))))

(assert (=> b!5598301 (= tp!1547924 e!3454066)))

(declare-fun b!5599545 () Bool)

(declare-fun tp!1548283 () Bool)

(declare-fun tp!1548287 () Bool)

(assert (=> b!5599545 (= e!3454066 (and tp!1548283 tp!1548287))))

(assert (= (and b!5598301 ((_ is ElementMatch!15585) (reg!15914 (regOne!31682 r!7292)))) b!5599542))

(assert (= (and b!5598301 ((_ is Concat!24430) (reg!15914 (regOne!31682 r!7292)))) b!5599543))

(assert (= (and b!5598301 ((_ is Star!15585) (reg!15914 (regOne!31682 r!7292)))) b!5599544))

(assert (= (and b!5598301 ((_ is Union!15585) (reg!15914 (regOne!31682 r!7292)))) b!5599545))

(declare-fun b_lambda!212187 () Bool)

(assert (= b_lambda!212185 (or b!5597513 b_lambda!212187)))

(assert (=> d!1770098 d!1769536))

(declare-fun b_lambda!212189 () Bool)

(assert (= b_lambda!212175 (or d!1769516 b_lambda!212189)))

(declare-fun bs!1294781 () Bool)

(declare-fun d!1770104 () Bool)

(assert (= bs!1294781 (and d!1770104 d!1769516)))

(assert (=> bs!1294781 (= (dynLambda!24619 lambda!300619 (h!69378 lt!2256606)) (validRegex!7321 (h!69378 lt!2256606)))))

(declare-fun m!6578298 () Bool)

(assert (=> bs!1294781 m!6578298))

(assert (=> b!5599189 d!1770104))

(declare-fun b_lambda!212191 () Bool)

(assert (= b_lambda!212177 (or d!1769514 b_lambda!212191)))

(declare-fun bs!1294782 () Bool)

(declare-fun d!1770106 () Bool)

(assert (= bs!1294782 (and d!1770106 d!1769514)))

(assert (=> bs!1294782 (= (dynLambda!24619 lambda!300616 (h!69378 (unfocusZipperList!1013 zl!343))) (validRegex!7321 (h!69378 (unfocusZipperList!1013 zl!343))))))

(declare-fun m!6578300 () Bool)

(assert (=> bs!1294782 m!6578300))

(assert (=> b!5599223 d!1770106))

(declare-fun b_lambda!212193 () Bool)

(assert (= b_lambda!212179 (or d!1769518 b_lambda!212193)))

(declare-fun bs!1294783 () Bool)

(declare-fun d!1770108 () Bool)

(assert (= bs!1294783 (and d!1770108 d!1769518)))

(assert (=> bs!1294783 (= (dynLambda!24619 lambda!300620 (h!69378 (exprs!5469 (h!69379 zl!343)))) (validRegex!7321 (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(declare-fun m!6578302 () Bool)

(assert (=> bs!1294783 m!6578302))

(assert (=> b!5599248 d!1770108))

(declare-fun b_lambda!212195 () Bool)

(assert (= b_lambda!212171 (or d!1769498 b_lambda!212195)))

(declare-fun bs!1294784 () Bool)

(declare-fun d!1770110 () Bool)

(assert (= bs!1294784 (and d!1770110 d!1769498)))

(assert (=> bs!1294784 (= (dynLambda!24619 lambda!300613 (h!69378 (exprs!5469 setElem!37333))) (validRegex!7321 (h!69378 (exprs!5469 setElem!37333))))))

(declare-fun m!6578304 () Bool)

(assert (=> bs!1294784 m!6578304))

(assert (=> b!5598981 d!1770110))

(declare-fun b_lambda!212197 () Bool)

(assert (= b_lambda!212183 (or d!1769458 b_lambda!212197)))

(declare-fun bs!1294785 () Bool)

(declare-fun d!1770112 () Bool)

(assert (= bs!1294785 (and d!1770112 d!1769458)))

(assert (=> bs!1294785 (= (dynLambda!24619 lambda!300601 (h!69378 (exprs!5469 (h!69379 zl!343)))) (validRegex!7321 (h!69378 (exprs!5469 (h!69379 zl!343)))))))

(assert (=> bs!1294785 m!6578302))

(assert (=> b!5599426 d!1770112))

(declare-fun b_lambda!212199 () Bool)

(assert (= b_lambda!212181 (or b!5597513 b_lambda!212199)))

(assert (=> d!1770000 d!1769532))

(declare-fun b_lambda!212201 () Bool)

(assert (= b_lambda!212173 (or b!5597513 b_lambda!212201)))

(assert (=> d!1769894 d!1769534))

(check-sat (not bm!420149) (not b!5599038) (not b!5598998) (not b!5599444) (not bm!420119) (not b!5599209) (not b!5599313) (not bm!420077) (not bm!420145) (not d!1769984) (not b!5599027) (not d!1770016) (not d!1769844) (not bm!420137) (not b!5599502) (not bm!420115) (not b!5599186) (not d!1770018) (not b!5599265) (not b!5599143) (not b_lambda!212199) (not d!1770030) (not b!5599522) (not b!5599437) (not b!5599177) (not b!5599529) (not d!1769942) (not d!1770008) (not bs!1294782) (not bm!420132) (not b!5599540) (not b!5599366) (not bm!420076) (not b!5599013) (not bm!420090) (not b!5598974) (not b!5599459) (not bm!420135) (not d!1770098) (not b!5599539) (not b!5599356) (not b!5598991) (not b!5598962) (not bm!420039) tp_is_empty!40423 (not d!1770064) (not b!5599489) (not d!1769920) (not b!5599357) (not bm!420099) (not b!5599364) (not b!5599282) (not b!5599159) (not d!1770036) (not b!5599497) (not b!5599523) (not b!5599465) (not b!5599029) (not d!1769868) (not bm!420100) (not bm!420111) (not b!5599255) (not d!1769988) (not b!5599336) (not b!5599513) (not d!1769860) (not b!5599132) (not d!1769832) (not bm!420098) (not d!1770070) (not bm!420042) (not b!5599030) (not b!5599479) (not d!1770040) (not bm!420152) (not d!1770066) (not bm!420105) (not d!1770022) (not d!1769888) (not bm!420151) (not bm!420102) (not bm!420143) (not b!5599428) (not b!5599526) (not bm!420121) (not b!5599066) (not b!5599254) (not b!5599535) (not b!5599184) (not d!1770068) (not bm!420127) (not b!5599323) (not b!5599261) (not b!5599236) (not b!5599427) (not b!5599003) (not b_lambda!212135) (not b!5599376) (not bm!420140) (not bm!420088) (not b!5599080) (not b!5599331) (not b!5599515) (not b!5599496) (not bm!420103) (not bs!1294784) (not bm!420128) (not bm!420056) (not b!5599133) (not d!1769982) (not b!5599289) (not b!5599263) (not b!5599124) (not d!1769938) (not d!1769896) (not b!5599287) (not b!5598982) (not bm!420058) (not b!5599297) (not b!5599141) (not d!1769940) (not bs!1294785) (not b!5599487) (not b!5599142) (not b!5599500) (not d!1769924) (not b!5598994) (not b!5599495) (not b!5599541) (not b!5599510) (not d!1769834) (not b!5599453) (not b!5599545) (not b!5599252) (not bm!420041) (not d!1769866) (not b!5599308) (not b!5599344) (not b!5599463) (not bm!420125) (not b!5599314) (not b!5599499) (not bm!420130) (not b!5599298) (not setNonEmpty!37350) (not d!1770004) (not b!5599000) (not b!5599296) (not b!5599531) (not b!5599521) (not d!1769934) (not d!1769944) (not b!5599538) (not bm!420064) (not d!1770058) (not b!5599040) (not d!1769912) (not d!1770000) (not b!5599224) (not b!5599240) (not b!5599501) (not bm!420048) (not bm!420117) (not b!5599204) (not bm!420146) (not b!5599380) (not b!5599461) (not b!5599506) (not d!1770034) (not b!5599109) (not b_lambda!212201) (not b!5599440) (not d!1770006) (not b!5599431) (not b!5599452) (not b!5599157) (not b!5599514) (not b_lambda!212189) (not d!1769890) (not b!5599181) (not b!5599330) (not b!5599415) (not d!1769894) (not b!5599484) (not b!5599436) (not b!5599213) (not b!5599145) (not b!5599544) (not b!5599146) (not b!5599410) (not setNonEmpty!37349) (not b!5599182) (not b!5599512) (not b_lambda!212191) (not bm!420129) (not b!5599257) (not b!5599191) (not b!5599353) (not bm!420108) (not b!5599468) (not b!5599416) (not d!1770090) (not b!5599121) (not b!5599144) (not b!5599508) (not b!5599543) (not bm!420118) (not b!5599473) (not b!5599456) (not b!5599315) (not b!5599445) (not b!5599488) (not b!5599125) (not b!5599237) (not d!1770076) (not bm!420054) (not b!5599448) (not b!5599530) (not b!5599485) (not b!5599449) (not b!5599024) (not b!5599455) (not b!5599207) (not b!5599474) (not d!1770100) (not b!5599258) (not d!1769922) (not b!5599288) (not d!1770020) (not d!1770044) (not d!1769956) (not b!5599519) (not bm!420050) (not setNonEmpty!37348) (not bm!420063) (not b!5599509) (not bm!420089) (not b_lambda!212197) (not b!5599171) (not b!5599534) (not d!1770088) (not bm!420109) (not b_lambda!212133) (not b!5599441) (not b!5599219) (not b_lambda!212193) (not d!1770038) (not b!5599491) (not b!5599457) (not b!5599467) (not d!1769958) (not bm!420139) (not b!5599183) (not b!5599253) (not bm!420107) (not d!1769830) (not bm!420110) (not b!5599492) (not b!5599470) (not b!5599532) (not b!5599365) (not b!5599339) (not b!5599481) (not b!5599274) (not b!5599407) (not bm!420057) (not b_lambda!212187) (not d!1769918) (not d!1769936) (not d!1769864) (not b!5599031) (not bm!420153) (not b!5599321) (not d!1769980) (not setNonEmpty!37351) (not d!1769960) (not d!1770002) (not bs!1294781) (not d!1770042) (not b!5599158) (not d!1770062) (not b!5599178) (not bm!420122) (not bm!420051) (not bm!420095) (not b!5599341) (not bm!420087) (not b!5599312) (not b!5599262) (not b!5599422) (not b_lambda!212137) (not b!5599475) (not d!1770032) (not b!5599014) (not b!5599469) (not b_lambda!212195) (not d!1769990) (not b!5599149) (not b!5599518) (not b!5599464) (not b!5599250) (not b!5599173) (not b!5599443) (not b!5599379) (not b!5599433) (not d!1770048) (not bm!420082) (not b!5599480) (not bm!420138) (not b!5599439) (not b!5599477) (not bm!420131) (not d!1769846) (not d!1769902) (not b!5599170) (not b!5598946) (not bm!420097) (not b!5599322) (not b!5599451) (not b!5599203) (not b!5599233) (not d!1769986) (not b!5599332) (not b!5599264) (not b!5599150) (not b!5599334) (not b!5599460) (not d!1770028) (not d!1769904) (not b!5599212) (not bm!420154) (not b!5599536) (not b!5599525) (not bm!420074) (not d!1769854) (not bm!420043) (not bm!420061) (not b!5599396) (not bs!1294783) (not b!5599527) (not bm!420045) (not bm!420104) (not b!5599505) (not b!5599249) (not b!5599140) (not b!5599447) (not b!5599476) (not b!5599174) (not b!5599311) (not bm!420036) (not d!1770024) (not d!1769876) (not b!5599039) (not b!5599493) (not b!5599429) (not b!5599517) (not b!5599435) (not d!1769954) (not d!1770026) (not b!5599166) (not b!5599355) (not d!1769914) (not b!5599483) (not d!1769978) (not b!5599251) (not d!1769916) (not b!5599211) (not b!5599432) (not b!5599194) (not b!5599347) (not b!5599205) (not d!1770102) (not b!5599202) (not bm!420080) (not b!5599190) (not b!5599412) (not bm!420092) (not bm!420112) (not b!5599471) (not b!5599504) (not b!5599148) (not d!1769826) (not b!5599180))
(check-sat)
