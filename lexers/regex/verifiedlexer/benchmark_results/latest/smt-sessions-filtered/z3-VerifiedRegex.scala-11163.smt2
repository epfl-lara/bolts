; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!580202 () Bool)

(assert start!580202)

(declare-fun b!5585924 () Bool)

(assert (=> b!5585924 true))

(assert (=> b!5585924 true))

(declare-fun lambda!299703 () Int)

(declare-fun lambda!299702 () Int)

(assert (=> b!5585924 (not (= lambda!299703 lambda!299702))))

(assert (=> b!5585924 true))

(assert (=> b!5585924 true))

(declare-fun b!5585923 () Bool)

(assert (=> b!5585923 true))

(declare-fun b!5585894 () Bool)

(declare-datatypes ((Unit!155682 0))(
  ( (Unit!155683) )
))
(declare-fun e!3446410 () Unit!155682)

(declare-fun Unit!155684 () Unit!155682)

(assert (=> b!5585894 (= e!3446410 Unit!155684)))

(declare-fun tp!1545306 () Bool)

(declare-datatypes ((C!31416 0))(
  ( (C!31417 (val!25410 Int)) )
))
(declare-datatypes ((Regex!15573 0))(
  ( (ElementMatch!15573 (c!978446 C!31416)) (Concat!24418 (regOne!31658 Regex!15573) (regTwo!31658 Regex!15573)) (EmptyExpr!15573) (Star!15573 (reg!15902 Regex!15573)) (EmptyLang!15573) (Union!15573 (regOne!31659 Regex!15573) (regTwo!31659 Regex!15573)) )
))
(declare-datatypes ((List!63018 0))(
  ( (Nil!62894) (Cons!62894 (h!69342 Regex!15573) (t!376293 List!63018)) )
))
(declare-datatypes ((Context!9914 0))(
  ( (Context!9915 (exprs!5457 List!63018)) )
))
(declare-fun setElem!37207 () Context!9914)

(declare-fun setNonEmpty!37207 () Bool)

(declare-fun setRes!37207 () Bool)

(declare-fun e!3446414 () Bool)

(declare-fun inv!82179 (Context!9914) Bool)

(assert (=> setNonEmpty!37207 (= setRes!37207 (and tp!1545306 (inv!82179 setElem!37207) e!3446414))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!9914))

(declare-fun setRest!37207 () (InoxSet Context!9914))

(assert (=> setNonEmpty!37207 (= z!1189 ((_ map or) (store ((as const (Array Context!9914 Bool)) false) setElem!37207 true) setRest!37207))))

(declare-fun b!5585895 () Bool)

(declare-fun res!2370317 () Bool)

(declare-fun e!3446420 () Bool)

(assert (=> b!5585895 (=> res!2370317 e!3446420)))

(declare-datatypes ((List!63019 0))(
  ( (Nil!62895) (Cons!62895 (h!69343 Context!9914) (t!376294 List!63019)) )
))
(declare-fun zl!343 () List!63019)

(declare-fun isEmpty!34706 (List!63018) Bool)

(assert (=> b!5585895 (= res!2370317 (isEmpty!34706 (t!376293 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun b!5585896 () Bool)

(declare-fun e!3446404 () Bool)

(declare-fun lt!2254652 () (InoxSet Context!9914))

(declare-fun lt!2254640 () (InoxSet Context!9914))

(assert (=> b!5585896 (= e!3446404 (= lt!2254652 lt!2254640))))

(declare-fun b!5585897 () Bool)

(declare-fun res!2370313 () Bool)

(declare-fun e!3446405 () Bool)

(assert (=> b!5585897 (=> (not res!2370313) (not e!3446405))))

(declare-fun toList!9357 ((InoxSet Context!9914)) List!63019)

(assert (=> b!5585897 (= res!2370313 (= (toList!9357 z!1189) zl!343))))

(declare-fun b!5585898 () Bool)

(declare-fun res!2370307 () Bool)

(declare-fun e!3446408 () Bool)

(assert (=> b!5585898 (=> res!2370307 e!3446408)))

(declare-fun isEmpty!34707 (List!63019) Bool)

(assert (=> b!5585898 (= res!2370307 (not (isEmpty!34707 (t!376294 zl!343))))))

(declare-fun b!5585899 () Bool)

(declare-fun e!3446409 () Unit!155682)

(declare-fun Unit!155685 () Unit!155682)

(assert (=> b!5585899 (= e!3446409 Unit!155685)))

(declare-fun b!5585900 () Bool)

(declare-fun e!3446417 () Bool)

(declare-fun tp_is_empty!40399 () Bool)

(declare-fun tp!1545311 () Bool)

(assert (=> b!5585900 (= e!3446417 (and tp_is_empty!40399 tp!1545311))))

(declare-fun b!5585901 () Bool)

(declare-fun e!3446421 () Bool)

(assert (=> b!5585901 (= e!3446421 tp_is_empty!40399)))

(declare-fun b!5585902 () Bool)

(declare-fun res!2370322 () Bool)

(assert (=> b!5585902 (=> res!2370322 e!3446408)))

(declare-fun r!7292 () Regex!15573)

(get-info :version)

(assert (=> b!5585902 (= res!2370322 (or ((_ is EmptyExpr!15573) r!7292) ((_ is EmptyLang!15573) r!7292) ((_ is ElementMatch!15573) r!7292) ((_ is Union!15573) r!7292) (not ((_ is Concat!24418) r!7292))))))

(declare-fun b!5585903 () Bool)

(declare-fun e!3446418 () Bool)

(declare-datatypes ((List!63020 0))(
  ( (Nil!62896) (Cons!62896 (h!69344 C!31416) (t!376295 List!63020)) )
))
(declare-fun s!2326 () List!63020)

(declare-fun matchZipper!1711 ((InoxSet Context!9914) List!63020) Bool)

(assert (=> b!5585903 (= e!3446418 (matchZipper!1711 lt!2254640 (t!376295 s!2326)))))

(declare-fun b!5585904 () Bool)

(declare-fun res!2370310 () Bool)

(assert (=> b!5585904 (=> res!2370310 e!3446408)))

(assert (=> b!5585904 (= res!2370310 (not ((_ is Cons!62894) (exprs!5457 (h!69343 zl!343)))))))

(declare-fun b!5585905 () Bool)

(declare-fun tp!1545310 () Bool)

(declare-fun tp!1545305 () Bool)

(assert (=> b!5585905 (= e!3446421 (and tp!1545310 tp!1545305))))

(declare-fun b!5585906 () Bool)

(declare-fun Unit!155686 () Unit!155682)

(assert (=> b!5585906 (= e!3446409 Unit!155686)))

(declare-fun lt!2254660 () Unit!155682)

(declare-fun lt!2254643 () (InoxSet Context!9914))

(declare-fun lt!2254657 () (InoxSet Context!9914))

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!598 ((InoxSet Context!9914) (InoxSet Context!9914) List!63020) Unit!155682)

(assert (=> b!5585906 (= lt!2254660 (lemmaZipperConcatMatchesSameAsBothZippers!598 lt!2254643 lt!2254657 (t!376295 s!2326)))))

(declare-fun res!2370316 () Bool)

(assert (=> b!5585906 (= res!2370316 (matchZipper!1711 lt!2254643 (t!376295 s!2326)))))

(declare-fun e!3446413 () Bool)

(assert (=> b!5585906 (=> res!2370316 e!3446413)))

(assert (=> b!5585906 (= (matchZipper!1711 ((_ map or) lt!2254643 lt!2254657) (t!376295 s!2326)) e!3446413)))

(declare-fun b!5585907 () Bool)

(assert (=> b!5585907 (= e!3446405 (not e!3446408))))

(declare-fun res!2370314 () Bool)

(assert (=> b!5585907 (=> res!2370314 e!3446408)))

(assert (=> b!5585907 (= res!2370314 (not ((_ is Cons!62895) zl!343)))))

(declare-fun lt!2254654 () Bool)

(declare-fun matchRSpec!2676 (Regex!15573 List!63020) Bool)

(assert (=> b!5585907 (= lt!2254654 (matchRSpec!2676 r!7292 s!2326))))

(declare-fun matchR!7758 (Regex!15573 List!63020) Bool)

(assert (=> b!5585907 (= lt!2254654 (matchR!7758 r!7292 s!2326))))

(declare-fun lt!2254645 () Unit!155682)

(declare-fun mainMatchTheorem!2676 (Regex!15573 List!63020) Unit!155682)

(assert (=> b!5585907 (= lt!2254645 (mainMatchTheorem!2676 r!7292 s!2326))))

(declare-fun b!5585908 () Bool)

(declare-fun tp!1545308 () Bool)

(assert (=> b!5585908 (= e!3446414 tp!1545308)))

(declare-fun b!5585910 () Bool)

(declare-fun e!3446407 () Bool)

(assert (=> b!5585910 (= e!3446407 e!3446404)))

(declare-fun res!2370315 () Bool)

(assert (=> b!5585910 (=> res!2370315 e!3446404)))

(declare-fun nullable!5605 (Regex!15573) Bool)

(assert (=> b!5585910 (= res!2370315 (nullable!5605 (regTwo!31659 (regOne!31658 r!7292))))))

(declare-fun lt!2254646 () (InoxSet Context!9914))

(declare-fun lt!2254659 () Context!9914)

(declare-fun lambda!299704 () Int)

(declare-fun flatMap!1186 ((InoxSet Context!9914) Int) (InoxSet Context!9914))

(declare-fun derivationStepZipperUp!841 (Context!9914 C!31416) (InoxSet Context!9914))

(assert (=> b!5585910 (= (flatMap!1186 lt!2254646 lambda!299704) (derivationStepZipperUp!841 lt!2254659 (h!69344 s!2326)))))

(declare-fun lt!2254636 () Unit!155682)

(declare-fun lemmaFlatMapOnSingletonSet!718 ((InoxSet Context!9914) Context!9914 Int) Unit!155682)

(assert (=> b!5585910 (= lt!2254636 (lemmaFlatMapOnSingletonSet!718 lt!2254646 lt!2254659 lambda!299704))))

(assert (=> b!5585910 (= lt!2254652 (derivationStepZipperUp!841 lt!2254659 (h!69344 s!2326)))))

(declare-fun lt!2254644 () Unit!155682)

(assert (=> b!5585910 (= lt!2254644 e!3446410)))

(declare-fun c!978445 () Bool)

(assert (=> b!5585910 (= c!978445 (nullable!5605 (regOne!31659 (regOne!31658 r!7292))))))

(declare-fun lt!2254651 () (InoxSet Context!9914))

(declare-fun lt!2254653 () Context!9914)

(assert (=> b!5585910 (= (flatMap!1186 lt!2254651 lambda!299704) (derivationStepZipperUp!841 lt!2254653 (h!69344 s!2326)))))

(declare-fun lt!2254639 () Unit!155682)

(assert (=> b!5585910 (= lt!2254639 (lemmaFlatMapOnSingletonSet!718 lt!2254651 lt!2254653 lambda!299704))))

(declare-fun lt!2254658 () (InoxSet Context!9914))

(assert (=> b!5585910 (= lt!2254658 (derivationStepZipperUp!841 lt!2254653 (h!69344 s!2326)))))

(assert (=> b!5585910 (= lt!2254646 (store ((as const (Array Context!9914 Bool)) false) lt!2254659 true))))

(assert (=> b!5585910 (= lt!2254659 (Context!9915 (Cons!62894 (regTwo!31659 (regOne!31658 r!7292)) (t!376293 (exprs!5457 (h!69343 zl!343))))))))

(assert (=> b!5585910 (= lt!2254651 (store ((as const (Array Context!9914 Bool)) false) lt!2254653 true))))

(assert (=> b!5585910 (= lt!2254653 (Context!9915 (Cons!62894 (regOne!31659 (regOne!31658 r!7292)) (t!376293 (exprs!5457 (h!69343 zl!343))))))))

(declare-fun b!5585911 () Bool)

(declare-fun e!3446415 () Bool)

(declare-fun e!3446406 () Bool)

(assert (=> b!5585911 (= e!3446415 e!3446406)))

(declare-fun res!2370309 () Bool)

(assert (=> b!5585911 (=> res!2370309 e!3446406)))

(declare-fun lt!2254637 () (InoxSet Context!9914))

(assert (=> b!5585911 (= res!2370309 (not (= lt!2254643 lt!2254637)))))

(declare-fun lt!2254641 () (InoxSet Context!9914))

(assert (=> b!5585911 (= lt!2254637 ((_ map or) lt!2254641 lt!2254640))))

(declare-fun lt!2254638 () Context!9914)

(declare-fun derivationStepZipperDown!915 (Regex!15573 Context!9914 C!31416) (InoxSet Context!9914))

(assert (=> b!5585911 (= lt!2254640 (derivationStepZipperDown!915 (regTwo!31659 (regOne!31658 r!7292)) lt!2254638 (h!69344 s!2326)))))

(assert (=> b!5585911 (= lt!2254641 (derivationStepZipperDown!915 (regOne!31659 (regOne!31658 r!7292)) lt!2254638 (h!69344 s!2326)))))

(declare-fun res!2370324 () Bool)

(assert (=> start!580202 (=> (not res!2370324) (not e!3446405))))

(declare-fun validRegex!7309 (Regex!15573) Bool)

(assert (=> start!580202 (= res!2370324 (validRegex!7309 r!7292))))

(assert (=> start!580202 e!3446405))

(assert (=> start!580202 e!3446421))

(declare-fun condSetEmpty!37207 () Bool)

(assert (=> start!580202 (= condSetEmpty!37207 (= z!1189 ((as const (Array Context!9914 Bool)) false)))))

(assert (=> start!580202 setRes!37207))

(declare-fun e!3446412 () Bool)

(assert (=> start!580202 e!3446412))

(assert (=> start!580202 e!3446417))

(declare-fun b!5585909 () Bool)

(assert (=> b!5585909 (= e!3446406 e!3446407)))

(declare-fun res!2370306 () Bool)

(assert (=> b!5585909 (=> res!2370306 e!3446407)))

(declare-fun e!3446416 () Bool)

(assert (=> b!5585909 (= res!2370306 e!3446416)))

(declare-fun res!2370312 () Bool)

(assert (=> b!5585909 (=> (not res!2370312) (not e!3446416))))

(declare-fun lt!2254650 () Bool)

(assert (=> b!5585909 (= res!2370312 (not (= (matchZipper!1711 lt!2254643 (t!376295 s!2326)) lt!2254650)))))

(assert (=> b!5585909 (= (matchZipper!1711 lt!2254637 (t!376295 s!2326)) e!3446418)))

(declare-fun res!2370320 () Bool)

(assert (=> b!5585909 (=> res!2370320 e!3446418)))

(assert (=> b!5585909 (= res!2370320 lt!2254650)))

(assert (=> b!5585909 (= lt!2254650 (matchZipper!1711 lt!2254641 (t!376295 s!2326)))))

(declare-fun lt!2254649 () Unit!155682)

(assert (=> b!5585909 (= lt!2254649 (lemmaZipperConcatMatchesSameAsBothZippers!598 lt!2254641 lt!2254640 (t!376295 s!2326)))))

(declare-fun b!5585912 () Bool)

(assert (=> b!5585912 (= e!3446413 (matchZipper!1711 lt!2254657 (t!376295 s!2326)))))

(declare-fun b!5585913 () Bool)

(declare-fun Unit!155687 () Unit!155682)

(assert (=> b!5585913 (= e!3446410 Unit!155687)))

(declare-fun lt!2254648 () Unit!155682)

(assert (=> b!5585913 (= lt!2254648 (lemmaZipperConcatMatchesSameAsBothZippers!598 lt!2254641 lt!2254657 (t!376295 s!2326)))))

(declare-fun res!2370308 () Bool)

(assert (=> b!5585913 (= res!2370308 lt!2254650)))

(declare-fun e!3446411 () Bool)

(assert (=> b!5585913 (=> res!2370308 e!3446411)))

(assert (=> b!5585913 (= (matchZipper!1711 ((_ map or) lt!2254641 lt!2254657) (t!376295 s!2326)) e!3446411)))

(declare-fun b!5585914 () Bool)

(declare-fun tp!1545302 () Bool)

(declare-fun tp!1545304 () Bool)

(assert (=> b!5585914 (= e!3446421 (and tp!1545302 tp!1545304))))

(declare-fun b!5585915 () Bool)

(declare-fun tp!1545307 () Bool)

(declare-fun e!3446419 () Bool)

(assert (=> b!5585915 (= e!3446412 (and (inv!82179 (h!69343 zl!343)) e!3446419 tp!1545307))))

(declare-fun b!5585916 () Bool)

(declare-fun res!2370321 () Bool)

(assert (=> b!5585916 (=> (not res!2370321) (not e!3446405))))

(declare-fun unfocusZipper!1315 (List!63019) Regex!15573)

(assert (=> b!5585916 (= res!2370321 (= r!7292 (unfocusZipper!1315 zl!343)))))

(declare-fun b!5585917 () Bool)

(assert (=> b!5585917 (= e!3446411 (matchZipper!1711 lt!2254657 (t!376295 s!2326)))))

(declare-fun b!5585918 () Bool)

(declare-fun res!2370319 () Bool)

(assert (=> b!5585918 (=> res!2370319 e!3446408)))

(declare-fun generalisedUnion!1436 (List!63018) Regex!15573)

(declare-fun unfocusZipperList!1001 (List!63019) List!63018)

(assert (=> b!5585918 (= res!2370319 (not (= r!7292 (generalisedUnion!1436 (unfocusZipperList!1001 zl!343)))))))

(declare-fun b!5585919 () Bool)

(assert (=> b!5585919 (= e!3446416 (not (matchZipper!1711 lt!2254640 (t!376295 s!2326))))))

(declare-fun b!5585920 () Bool)

(declare-fun res!2370311 () Bool)

(assert (=> b!5585920 (=> res!2370311 e!3446408)))

(declare-fun generalisedConcat!1188 (List!63018) Regex!15573)

(assert (=> b!5585920 (= res!2370311 (not (= r!7292 (generalisedConcat!1188 (exprs!5457 (h!69343 zl!343))))))))

(declare-fun setIsEmpty!37207 () Bool)

(assert (=> setIsEmpty!37207 setRes!37207))

(declare-fun b!5585921 () Bool)

(declare-fun tp!1545303 () Bool)

(assert (=> b!5585921 (= e!3446421 tp!1545303)))

(declare-fun b!5585922 () Bool)

(declare-fun tp!1545309 () Bool)

(assert (=> b!5585922 (= e!3446419 tp!1545309)))

(assert (=> b!5585923 (= e!3446420 e!3446415)))

(declare-fun res!2370323 () Bool)

(assert (=> b!5585923 (=> res!2370323 e!3446415)))

(assert (=> b!5585923 (= res!2370323 (or (and ((_ is ElementMatch!15573) (regOne!31658 r!7292)) (= (c!978446 (regOne!31658 r!7292)) (h!69344 s!2326))) (not ((_ is Union!15573) (regOne!31658 r!7292)))))))

(declare-fun lt!2254635 () Unit!155682)

(assert (=> b!5585923 (= lt!2254635 e!3446409)))

(declare-fun c!978444 () Bool)

(assert (=> b!5585923 (= c!978444 (nullable!5605 (h!69342 (exprs!5457 (h!69343 zl!343)))))))

(assert (=> b!5585923 (= (flatMap!1186 z!1189 lambda!299704) (derivationStepZipperUp!841 (h!69343 zl!343) (h!69344 s!2326)))))

(declare-fun lt!2254655 () Unit!155682)

(assert (=> b!5585923 (= lt!2254655 (lemmaFlatMapOnSingletonSet!718 z!1189 (h!69343 zl!343) lambda!299704))))

(assert (=> b!5585923 (= lt!2254657 (derivationStepZipperUp!841 lt!2254638 (h!69344 s!2326)))))

(assert (=> b!5585923 (= lt!2254643 (derivationStepZipperDown!915 (h!69342 (exprs!5457 (h!69343 zl!343))) lt!2254638 (h!69344 s!2326)))))

(assert (=> b!5585923 (= lt!2254638 (Context!9915 (t!376293 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun lt!2254634 () (InoxSet Context!9914))

(assert (=> b!5585923 (= lt!2254634 (derivationStepZipperUp!841 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343))))) (h!69344 s!2326)))))

(assert (=> b!5585924 (= e!3446408 e!3446420)))

(declare-fun res!2370318 () Bool)

(assert (=> b!5585924 (=> res!2370318 e!3446420)))

(declare-fun lt!2254647 () Bool)

(assert (=> b!5585924 (= res!2370318 (or (not (= lt!2254654 lt!2254647)) ((_ is Nil!62896) s!2326)))))

(declare-fun Exists!2673 (Int) Bool)

(assert (=> b!5585924 (= (Exists!2673 lambda!299702) (Exists!2673 lambda!299703))))

(declare-fun lt!2254656 () Unit!155682)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1302 (Regex!15573 Regex!15573 List!63020) Unit!155682)

(assert (=> b!5585924 (= lt!2254656 (lemmaExistCutMatchRandMatchRSpecEquivalent!1302 (regOne!31658 r!7292) (regTwo!31658 r!7292) s!2326))))

(assert (=> b!5585924 (= lt!2254647 (Exists!2673 lambda!299702))))

(declare-datatypes ((tuple2!65340 0))(
  ( (tuple2!65341 (_1!35973 List!63020) (_2!35973 List!63020)) )
))
(declare-datatypes ((Option!15582 0))(
  ( (None!15581) (Some!15581 (v!51622 tuple2!65340)) )
))
(declare-fun isDefined!12285 (Option!15582) Bool)

(declare-fun findConcatSeparation!1996 (Regex!15573 Regex!15573 List!63020 List!63020 List!63020) Option!15582)

(assert (=> b!5585924 (= lt!2254647 (isDefined!12285 (findConcatSeparation!1996 (regOne!31658 r!7292) (regTwo!31658 r!7292) Nil!62896 s!2326 s!2326)))))

(declare-fun lt!2254642 () Unit!155682)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!1760 (Regex!15573 Regex!15573 List!63020) Unit!155682)

(assert (=> b!5585924 (= lt!2254642 (lemmaFindConcatSeparationEquivalentToExists!1760 (regOne!31658 r!7292) (regTwo!31658 r!7292) s!2326))))

(assert (= (and start!580202 res!2370324) b!5585897))

(assert (= (and b!5585897 res!2370313) b!5585916))

(assert (= (and b!5585916 res!2370321) b!5585907))

(assert (= (and b!5585907 (not res!2370314)) b!5585898))

(assert (= (and b!5585898 (not res!2370307)) b!5585920))

(assert (= (and b!5585920 (not res!2370311)) b!5585904))

(assert (= (and b!5585904 (not res!2370310)) b!5585918))

(assert (= (and b!5585918 (not res!2370319)) b!5585902))

(assert (= (and b!5585902 (not res!2370322)) b!5585924))

(assert (= (and b!5585924 (not res!2370318)) b!5585895))

(assert (= (and b!5585895 (not res!2370317)) b!5585923))

(assert (= (and b!5585923 c!978444) b!5585906))

(assert (= (and b!5585923 (not c!978444)) b!5585899))

(assert (= (and b!5585906 (not res!2370316)) b!5585912))

(assert (= (and b!5585923 (not res!2370323)) b!5585911))

(assert (= (and b!5585911 (not res!2370309)) b!5585909))

(assert (= (and b!5585909 (not res!2370320)) b!5585903))

(assert (= (and b!5585909 res!2370312) b!5585919))

(assert (= (and b!5585909 (not res!2370306)) b!5585910))

(assert (= (and b!5585910 c!978445) b!5585913))

(assert (= (and b!5585910 (not c!978445)) b!5585894))

(assert (= (and b!5585913 (not res!2370308)) b!5585917))

(assert (= (and b!5585910 (not res!2370315)) b!5585896))

(assert (= (and start!580202 ((_ is ElementMatch!15573) r!7292)) b!5585901))

(assert (= (and start!580202 ((_ is Concat!24418) r!7292)) b!5585914))

(assert (= (and start!580202 ((_ is Star!15573) r!7292)) b!5585921))

(assert (= (and start!580202 ((_ is Union!15573) r!7292)) b!5585905))

(assert (= (and start!580202 condSetEmpty!37207) setIsEmpty!37207))

(assert (= (and start!580202 (not condSetEmpty!37207)) setNonEmpty!37207))

(assert (= setNonEmpty!37207 b!5585908))

(assert (= b!5585915 b!5585922))

(assert (= (and start!580202 ((_ is Cons!62895) zl!343)) b!5585915))

(assert (= (and start!580202 ((_ is Cons!62896) s!2326)) b!5585900))

(declare-fun m!6566910 () Bool)

(assert (=> b!5585918 m!6566910))

(assert (=> b!5585918 m!6566910))

(declare-fun m!6566912 () Bool)

(assert (=> b!5585918 m!6566912))

(declare-fun m!6566914 () Bool)

(assert (=> b!5585924 m!6566914))

(declare-fun m!6566916 () Bool)

(assert (=> b!5585924 m!6566916))

(declare-fun m!6566918 () Bool)

(assert (=> b!5585924 m!6566918))

(declare-fun m!6566920 () Bool)

(assert (=> b!5585924 m!6566920))

(declare-fun m!6566922 () Bool)

(assert (=> b!5585924 m!6566922))

(assert (=> b!5585924 m!6566914))

(assert (=> b!5585924 m!6566916))

(declare-fun m!6566924 () Bool)

(assert (=> b!5585924 m!6566924))

(declare-fun m!6566926 () Bool)

(assert (=> b!5585912 m!6566926))

(declare-fun m!6566928 () Bool)

(assert (=> b!5585907 m!6566928))

(declare-fun m!6566930 () Bool)

(assert (=> b!5585907 m!6566930))

(declare-fun m!6566932 () Bool)

(assert (=> b!5585907 m!6566932))

(declare-fun m!6566934 () Bool)

(assert (=> b!5585920 m!6566934))

(declare-fun m!6566936 () Bool)

(assert (=> b!5585897 m!6566936))

(declare-fun m!6566938 () Bool)

(assert (=> b!5585906 m!6566938))

(declare-fun m!6566940 () Bool)

(assert (=> b!5585906 m!6566940))

(declare-fun m!6566942 () Bool)

(assert (=> b!5585906 m!6566942))

(declare-fun m!6566944 () Bool)

(assert (=> setNonEmpty!37207 m!6566944))

(declare-fun m!6566946 () Bool)

(assert (=> b!5585916 m!6566946))

(declare-fun m!6566948 () Bool)

(assert (=> b!5585895 m!6566948))

(declare-fun m!6566950 () Bool)

(assert (=> b!5585923 m!6566950))

(declare-fun m!6566952 () Bool)

(assert (=> b!5585923 m!6566952))

(declare-fun m!6566954 () Bool)

(assert (=> b!5585923 m!6566954))

(declare-fun m!6566956 () Bool)

(assert (=> b!5585923 m!6566956))

(declare-fun m!6566958 () Bool)

(assert (=> b!5585923 m!6566958))

(declare-fun m!6566960 () Bool)

(assert (=> b!5585923 m!6566960))

(declare-fun m!6566962 () Bool)

(assert (=> b!5585923 m!6566962))

(declare-fun m!6566964 () Bool)

(assert (=> b!5585903 m!6566964))

(declare-fun m!6566966 () Bool)

(assert (=> b!5585915 m!6566966))

(assert (=> b!5585909 m!6566940))

(declare-fun m!6566968 () Bool)

(assert (=> b!5585909 m!6566968))

(declare-fun m!6566970 () Bool)

(assert (=> b!5585909 m!6566970))

(declare-fun m!6566972 () Bool)

(assert (=> b!5585909 m!6566972))

(assert (=> b!5585917 m!6566926))

(declare-fun m!6566974 () Bool)

(assert (=> start!580202 m!6566974))

(declare-fun m!6566976 () Bool)

(assert (=> b!5585911 m!6566976))

(declare-fun m!6566978 () Bool)

(assert (=> b!5585911 m!6566978))

(declare-fun m!6566980 () Bool)

(assert (=> b!5585913 m!6566980))

(declare-fun m!6566982 () Bool)

(assert (=> b!5585913 m!6566982))

(declare-fun m!6566984 () Bool)

(assert (=> b!5585898 m!6566984))

(assert (=> b!5585919 m!6566964))

(declare-fun m!6566986 () Bool)

(assert (=> b!5585910 m!6566986))

(declare-fun m!6566988 () Bool)

(assert (=> b!5585910 m!6566988))

(declare-fun m!6566990 () Bool)

(assert (=> b!5585910 m!6566990))

(declare-fun m!6566992 () Bool)

(assert (=> b!5585910 m!6566992))

(declare-fun m!6566994 () Bool)

(assert (=> b!5585910 m!6566994))

(declare-fun m!6566996 () Bool)

(assert (=> b!5585910 m!6566996))

(declare-fun m!6566998 () Bool)

(assert (=> b!5585910 m!6566998))

(declare-fun m!6567000 () Bool)

(assert (=> b!5585910 m!6567000))

(declare-fun m!6567002 () Bool)

(assert (=> b!5585910 m!6567002))

(declare-fun m!6567004 () Bool)

(assert (=> b!5585910 m!6567004))

(check-sat (not b!5585912) (not b!5585920) (not b!5585924) (not b!5585921) (not start!580202) (not b!5585911) (not b!5585917) (not b!5585913) (not b!5585903) (not b!5585905) (not b!5585923) (not b!5585914) (not b!5585918) (not b!5585910) (not b!5585895) (not b!5585908) (not b!5585907) (not b!5585922) (not b!5585919) (not b!5585897) (not b!5585915) (not setNonEmpty!37207) (not b!5585898) tp_is_empty!40399 (not b!5585916) (not b!5585900) (not b!5585909) (not b!5585906))
(check-sat)
(get-model)

(declare-fun bs!1291934 () Bool)

(declare-fun b!5586131 () Bool)

(assert (= bs!1291934 (and b!5586131 b!5585924)))

(declare-fun lambda!299718 () Int)

(assert (=> bs!1291934 (not (= lambda!299718 lambda!299702))))

(assert (=> bs!1291934 (not (= lambda!299718 lambda!299703))))

(assert (=> b!5586131 true))

(assert (=> b!5586131 true))

(declare-fun bs!1291939 () Bool)

(declare-fun b!5586125 () Bool)

(assert (= bs!1291939 (and b!5586125 b!5585924)))

(declare-fun lambda!299722 () Int)

(assert (=> bs!1291939 (not (= lambda!299722 lambda!299702))))

(assert (=> bs!1291939 (= lambda!299722 lambda!299703)))

(declare-fun bs!1291940 () Bool)

(assert (= bs!1291940 (and b!5586125 b!5586131)))

(assert (=> bs!1291940 (not (= lambda!299722 lambda!299718))))

(assert (=> b!5586125 true))

(assert (=> b!5586125 true))

(declare-fun b!5586123 () Bool)

(declare-fun e!3446533 () Bool)

(declare-fun call!418097 () Bool)

(assert (=> b!5586123 (= e!3446533 call!418097)))

(declare-fun b!5586124 () Bool)

(declare-fun e!3446536 () Bool)

(assert (=> b!5586124 (= e!3446536 (= s!2326 (Cons!62896 (c!978446 r!7292) Nil!62896)))))

(declare-fun e!3446538 () Bool)

(declare-fun call!418096 () Bool)

(assert (=> b!5586125 (= e!3446538 call!418096)))

(declare-fun bm!418091 () Bool)

(declare-fun isEmpty!34708 (List!63020) Bool)

(assert (=> bm!418091 (= call!418097 (isEmpty!34708 s!2326))))

(declare-fun b!5586126 () Bool)

(declare-fun c!978524 () Bool)

(assert (=> b!5586126 (= c!978524 ((_ is Union!15573) r!7292))))

(declare-fun e!3446532 () Bool)

(assert (=> b!5586126 (= e!3446536 e!3446532)))

(declare-fun b!5586127 () Bool)

(declare-fun res!2370366 () Bool)

(declare-fun e!3446537 () Bool)

(assert (=> b!5586127 (=> res!2370366 e!3446537)))

(assert (=> b!5586127 (= res!2370366 call!418097)))

(assert (=> b!5586127 (= e!3446538 e!3446537)))

(declare-fun b!5586129 () Bool)

(declare-fun c!978523 () Bool)

(assert (=> b!5586129 (= c!978523 ((_ is ElementMatch!15573) r!7292))))

(declare-fun e!3446535 () Bool)

(assert (=> b!5586129 (= e!3446535 e!3446536)))

(declare-fun b!5586130 () Bool)

(assert (=> b!5586130 (= e!3446532 e!3446538)))

(declare-fun c!978526 () Bool)

(assert (=> b!5586130 (= c!978526 ((_ is Star!15573) r!7292))))

(assert (=> b!5586131 (= e!3446537 call!418096)))

(declare-fun b!5586132 () Bool)

(assert (=> b!5586132 (= e!3446533 e!3446535)))

(declare-fun res!2370367 () Bool)

(assert (=> b!5586132 (= res!2370367 (not ((_ is EmptyLang!15573) r!7292)))))

(assert (=> b!5586132 (=> (not res!2370367) (not e!3446535))))

(declare-fun bm!418092 () Bool)

(assert (=> bm!418092 (= call!418096 (Exists!2673 (ite c!978526 lambda!299718 lambda!299722)))))

(declare-fun b!5586133 () Bool)

(declare-fun e!3446534 () Bool)

(assert (=> b!5586133 (= e!3446532 e!3446534)))

(declare-fun res!2370365 () Bool)

(assert (=> b!5586133 (= res!2370365 (matchRSpec!2676 (regOne!31659 r!7292) s!2326))))

(assert (=> b!5586133 (=> res!2370365 e!3446534)))

(declare-fun d!1765616 () Bool)

(declare-fun c!978525 () Bool)

(assert (=> d!1765616 (= c!978525 ((_ is EmptyExpr!15573) r!7292))))

(assert (=> d!1765616 (= (matchRSpec!2676 r!7292 s!2326) e!3446533)))

(declare-fun b!5586128 () Bool)

(assert (=> b!5586128 (= e!3446534 (matchRSpec!2676 (regTwo!31659 r!7292) s!2326))))

(assert (= (and d!1765616 c!978525) b!5586123))

(assert (= (and d!1765616 (not c!978525)) b!5586132))

(assert (= (and b!5586132 res!2370367) b!5586129))

(assert (= (and b!5586129 c!978523) b!5586124))

(assert (= (and b!5586129 (not c!978523)) b!5586126))

(assert (= (and b!5586126 c!978524) b!5586133))

(assert (= (and b!5586126 (not c!978524)) b!5586130))

(assert (= (and b!5586133 (not res!2370365)) b!5586128))

(assert (= (and b!5586130 c!978526) b!5586127))

(assert (= (and b!5586130 (not c!978526)) b!5586125))

(assert (= (and b!5586127 (not res!2370366)) b!5586131))

(assert (= (or b!5586131 b!5586125) bm!418092))

(assert (= (or b!5586123 b!5586127) bm!418091))

(declare-fun m!6567142 () Bool)

(assert (=> bm!418091 m!6567142))

(declare-fun m!6567144 () Bool)

(assert (=> bm!418092 m!6567144))

(declare-fun m!6567146 () Bool)

(assert (=> b!5586133 m!6567146))

(declare-fun m!6567148 () Bool)

(assert (=> b!5586128 m!6567148))

(assert (=> b!5585907 d!1765616))

(declare-fun b!5586202 () Bool)

(declare-fun e!3446577 () Bool)

(declare-fun head!11915 (List!63020) C!31416)

(assert (=> b!5586202 (= e!3446577 (not (= (head!11915 s!2326) (c!978446 r!7292))))))

(declare-fun b!5586203 () Bool)

(declare-fun e!3446582 () Bool)

(assert (=> b!5586203 (= e!3446582 e!3446577)))

(declare-fun res!2370412 () Bool)

(assert (=> b!5586203 (=> res!2370412 e!3446577)))

(declare-fun call!418100 () Bool)

(assert (=> b!5586203 (= res!2370412 call!418100)))

(declare-fun b!5586204 () Bool)

(declare-fun e!3446580 () Bool)

(assert (=> b!5586204 (= e!3446580 (nullable!5605 r!7292))))

(declare-fun b!5586205 () Bool)

(declare-fun e!3446576 () Bool)

(assert (=> b!5586205 (= e!3446576 e!3446582)))

(declare-fun res!2370409 () Bool)

(assert (=> b!5586205 (=> (not res!2370409) (not e!3446582))))

(declare-fun lt!2254694 () Bool)

(assert (=> b!5586205 (= res!2370409 (not lt!2254694))))

(declare-fun b!5586206 () Bool)

(declare-fun e!3446581 () Bool)

(assert (=> b!5586206 (= e!3446581 (= (head!11915 s!2326) (c!978446 r!7292)))))

(declare-fun b!5586207 () Bool)

(declare-fun res!2370408 () Bool)

(assert (=> b!5586207 (=> res!2370408 e!3446576)))

(assert (=> b!5586207 (= res!2370408 e!3446581)))

(declare-fun res!2370413 () Bool)

(assert (=> b!5586207 (=> (not res!2370413) (not e!3446581))))

(assert (=> b!5586207 (= res!2370413 lt!2254694)))

(declare-fun b!5586208 () Bool)

(declare-fun res!2370406 () Bool)

(assert (=> b!5586208 (=> (not res!2370406) (not e!3446581))))

(assert (=> b!5586208 (= res!2370406 (not call!418100))))

(declare-fun b!5586209 () Bool)

(declare-fun res!2370410 () Bool)

(assert (=> b!5586209 (=> res!2370410 e!3446577)))

(declare-fun tail!11010 (List!63020) List!63020)

(assert (=> b!5586209 (= res!2370410 (not (isEmpty!34708 (tail!11010 s!2326))))))

(declare-fun d!1765660 () Bool)

(declare-fun e!3446578 () Bool)

(assert (=> d!1765660 e!3446578))

(declare-fun c!978543 () Bool)

(assert (=> d!1765660 (= c!978543 ((_ is EmptyExpr!15573) r!7292))))

(assert (=> d!1765660 (= lt!2254694 e!3446580)))

(declare-fun c!978542 () Bool)

(assert (=> d!1765660 (= c!978542 (isEmpty!34708 s!2326))))

(assert (=> d!1765660 (validRegex!7309 r!7292)))

(assert (=> d!1765660 (= (matchR!7758 r!7292 s!2326) lt!2254694)))

(declare-fun bm!418095 () Bool)

(assert (=> bm!418095 (= call!418100 (isEmpty!34708 s!2326))))

(declare-fun b!5586210 () Bool)

(declare-fun derivativeStep!4420 (Regex!15573 C!31416) Regex!15573)

(assert (=> b!5586210 (= e!3446580 (matchR!7758 (derivativeStep!4420 r!7292 (head!11915 s!2326)) (tail!11010 s!2326)))))

(declare-fun b!5586211 () Bool)

(declare-fun res!2370407 () Bool)

(assert (=> b!5586211 (=> (not res!2370407) (not e!3446581))))

(assert (=> b!5586211 (= res!2370407 (isEmpty!34708 (tail!11010 s!2326)))))

(declare-fun b!5586212 () Bool)

(assert (=> b!5586212 (= e!3446578 (= lt!2254694 call!418100))))

(declare-fun b!5586213 () Bool)

(declare-fun e!3446579 () Bool)

(assert (=> b!5586213 (= e!3446578 e!3446579)))

(declare-fun c!978544 () Bool)

(assert (=> b!5586213 (= c!978544 ((_ is EmptyLang!15573) r!7292))))

(declare-fun b!5586214 () Bool)

(assert (=> b!5586214 (= e!3446579 (not lt!2254694))))

(declare-fun b!5586215 () Bool)

(declare-fun res!2370411 () Bool)

(assert (=> b!5586215 (=> res!2370411 e!3446576)))

(assert (=> b!5586215 (= res!2370411 (not ((_ is ElementMatch!15573) r!7292)))))

(assert (=> b!5586215 (= e!3446579 e!3446576)))

(assert (= (and d!1765660 c!978542) b!5586204))

(assert (= (and d!1765660 (not c!978542)) b!5586210))

(assert (= (and d!1765660 c!978543) b!5586212))

(assert (= (and d!1765660 (not c!978543)) b!5586213))

(assert (= (and b!5586213 c!978544) b!5586214))

(assert (= (and b!5586213 (not c!978544)) b!5586215))

(assert (= (and b!5586215 (not res!2370411)) b!5586207))

(assert (= (and b!5586207 res!2370413) b!5586208))

(assert (= (and b!5586208 res!2370406) b!5586211))

(assert (= (and b!5586211 res!2370407) b!5586206))

(assert (= (and b!5586207 (not res!2370408)) b!5586205))

(assert (= (and b!5586205 res!2370409) b!5586203))

(assert (= (and b!5586203 (not res!2370412)) b!5586209))

(assert (= (and b!5586209 (not res!2370410)) b!5586202))

(assert (= (or b!5586212 b!5586203 b!5586208) bm!418095))

(declare-fun m!6567194 () Bool)

(assert (=> b!5586204 m!6567194))

(declare-fun m!6567196 () Bool)

(assert (=> b!5586211 m!6567196))

(assert (=> b!5586211 m!6567196))

(declare-fun m!6567198 () Bool)

(assert (=> b!5586211 m!6567198))

(assert (=> bm!418095 m!6567142))

(declare-fun m!6567204 () Bool)

(assert (=> b!5586210 m!6567204))

(assert (=> b!5586210 m!6567204))

(declare-fun m!6567206 () Bool)

(assert (=> b!5586210 m!6567206))

(assert (=> b!5586210 m!6567196))

(assert (=> b!5586210 m!6567206))

(assert (=> b!5586210 m!6567196))

(declare-fun m!6567208 () Bool)

(assert (=> b!5586210 m!6567208))

(assert (=> b!5586202 m!6567204))

(assert (=> d!1765660 m!6567142))

(assert (=> d!1765660 m!6566974))

(assert (=> b!5586209 m!6567196))

(assert (=> b!5586209 m!6567196))

(assert (=> b!5586209 m!6567198))

(assert (=> b!5586206 m!6567204))

(assert (=> b!5585907 d!1765660))

(declare-fun d!1765678 () Bool)

(assert (=> d!1765678 (= (matchR!7758 r!7292 s!2326) (matchRSpec!2676 r!7292 s!2326))))

(declare-fun lt!2254700 () Unit!155682)

(declare-fun choose!42343 (Regex!15573 List!63020) Unit!155682)

(assert (=> d!1765678 (= lt!2254700 (choose!42343 r!7292 s!2326))))

(assert (=> d!1765678 (validRegex!7309 r!7292)))

(assert (=> d!1765678 (= (mainMatchTheorem!2676 r!7292 s!2326) lt!2254700)))

(declare-fun bs!1291946 () Bool)

(assert (= bs!1291946 d!1765678))

(assert (=> bs!1291946 m!6566930))

(assert (=> bs!1291946 m!6566928))

(declare-fun m!6567210 () Bool)

(assert (=> bs!1291946 m!6567210))

(assert (=> bs!1291946 m!6566974))

(assert (=> b!5585907 d!1765678))

(declare-fun b!5586281 () Bool)

(declare-fun e!3446628 () Bool)

(declare-fun e!3446631 () Bool)

(assert (=> b!5586281 (= e!3446628 e!3446631)))

(declare-fun c!978565 () Bool)

(assert (=> b!5586281 (= c!978565 (isEmpty!34706 (unfocusZipperList!1001 zl!343)))))

(declare-fun d!1765680 () Bool)

(assert (=> d!1765680 e!3446628))

(declare-fun res!2370443 () Bool)

(assert (=> d!1765680 (=> (not res!2370443) (not e!3446628))))

(declare-fun lt!2254706 () Regex!15573)

(assert (=> d!1765680 (= res!2370443 (validRegex!7309 lt!2254706))))

(declare-fun e!3446626 () Regex!15573)

(assert (=> d!1765680 (= lt!2254706 e!3446626)))

(declare-fun c!978563 () Bool)

(declare-fun e!3446627 () Bool)

(assert (=> d!1765680 (= c!978563 e!3446627)))

(declare-fun res!2370444 () Bool)

(assert (=> d!1765680 (=> (not res!2370444) (not e!3446627))))

(assert (=> d!1765680 (= res!2370444 ((_ is Cons!62894) (unfocusZipperList!1001 zl!343)))))

(declare-fun lambda!299735 () Int)

(declare-fun forall!14739 (List!63018 Int) Bool)

(assert (=> d!1765680 (forall!14739 (unfocusZipperList!1001 zl!343) lambda!299735)))

(assert (=> d!1765680 (= (generalisedUnion!1436 (unfocusZipperList!1001 zl!343)) lt!2254706)))

(declare-fun b!5586282 () Bool)

(declare-fun e!3446629 () Bool)

(assert (=> b!5586282 (= e!3446631 e!3446629)))

(declare-fun c!978566 () Bool)

(declare-fun tail!11011 (List!63018) List!63018)

(assert (=> b!5586282 (= c!978566 (isEmpty!34706 (tail!11011 (unfocusZipperList!1001 zl!343))))))

(declare-fun b!5586283 () Bool)

(declare-fun isUnion!567 (Regex!15573) Bool)

(assert (=> b!5586283 (= e!3446629 (isUnion!567 lt!2254706))))

(declare-fun b!5586284 () Bool)

(declare-fun e!3446630 () Regex!15573)

(assert (=> b!5586284 (= e!3446626 e!3446630)))

(declare-fun c!978564 () Bool)

(assert (=> b!5586284 (= c!978564 ((_ is Cons!62894) (unfocusZipperList!1001 zl!343)))))

(declare-fun b!5586285 () Bool)

(assert (=> b!5586285 (= e!3446630 (Union!15573 (h!69342 (unfocusZipperList!1001 zl!343)) (generalisedUnion!1436 (t!376293 (unfocusZipperList!1001 zl!343)))))))

(declare-fun b!5586286 () Bool)

(declare-fun isEmptyLang!1137 (Regex!15573) Bool)

(assert (=> b!5586286 (= e!3446631 (isEmptyLang!1137 lt!2254706))))

(declare-fun b!5586287 () Bool)

(assert (=> b!5586287 (= e!3446627 (isEmpty!34706 (t!376293 (unfocusZipperList!1001 zl!343))))))

(declare-fun b!5586288 () Bool)

(declare-fun head!11916 (List!63018) Regex!15573)

(assert (=> b!5586288 (= e!3446629 (= lt!2254706 (head!11916 (unfocusZipperList!1001 zl!343))))))

(declare-fun b!5586289 () Bool)

(assert (=> b!5586289 (= e!3446626 (h!69342 (unfocusZipperList!1001 zl!343)))))

(declare-fun b!5586290 () Bool)

(assert (=> b!5586290 (= e!3446630 EmptyLang!15573)))

(assert (= (and d!1765680 res!2370444) b!5586287))

(assert (= (and d!1765680 c!978563) b!5586289))

(assert (= (and d!1765680 (not c!978563)) b!5586284))

(assert (= (and b!5586284 c!978564) b!5586285))

(assert (= (and b!5586284 (not c!978564)) b!5586290))

(assert (= (and d!1765680 res!2370443) b!5586281))

(assert (= (and b!5586281 c!978565) b!5586286))

(assert (= (and b!5586281 (not c!978565)) b!5586282))

(assert (= (and b!5586282 c!978566) b!5586288))

(assert (= (and b!5586282 (not c!978566)) b!5586283))

(declare-fun m!6567258 () Bool)

(assert (=> b!5586285 m!6567258))

(declare-fun m!6567260 () Bool)

(assert (=> b!5586283 m!6567260))

(declare-fun m!6567262 () Bool)

(assert (=> d!1765680 m!6567262))

(assert (=> d!1765680 m!6566910))

(declare-fun m!6567264 () Bool)

(assert (=> d!1765680 m!6567264))

(assert (=> b!5586288 m!6566910))

(declare-fun m!6567266 () Bool)

(assert (=> b!5586288 m!6567266))

(declare-fun m!6567268 () Bool)

(assert (=> b!5586286 m!6567268))

(assert (=> b!5586282 m!6566910))

(declare-fun m!6567270 () Bool)

(assert (=> b!5586282 m!6567270))

(assert (=> b!5586282 m!6567270))

(declare-fun m!6567272 () Bool)

(assert (=> b!5586282 m!6567272))

(assert (=> b!5586281 m!6566910))

(declare-fun m!6567274 () Bool)

(assert (=> b!5586281 m!6567274))

(declare-fun m!6567276 () Bool)

(assert (=> b!5586287 m!6567276))

(assert (=> b!5585918 d!1765680))

(declare-fun bs!1291956 () Bool)

(declare-fun d!1765704 () Bool)

(assert (= bs!1291956 (and d!1765704 d!1765680)))

(declare-fun lambda!299740 () Int)

(assert (=> bs!1291956 (= lambda!299740 lambda!299735)))

(declare-fun lt!2254709 () List!63018)

(assert (=> d!1765704 (forall!14739 lt!2254709 lambda!299740)))

(declare-fun e!3446650 () List!63018)

(assert (=> d!1765704 (= lt!2254709 e!3446650)))

(declare-fun c!978577 () Bool)

(assert (=> d!1765704 (= c!978577 ((_ is Cons!62895) zl!343))))

(assert (=> d!1765704 (= (unfocusZipperList!1001 zl!343) lt!2254709)))

(declare-fun b!5586323 () Bool)

(assert (=> b!5586323 (= e!3446650 (Cons!62894 (generalisedConcat!1188 (exprs!5457 (h!69343 zl!343))) (unfocusZipperList!1001 (t!376294 zl!343))))))

(declare-fun b!5586324 () Bool)

(assert (=> b!5586324 (= e!3446650 Nil!62894)))

(assert (= (and d!1765704 c!978577) b!5586323))

(assert (= (and d!1765704 (not c!978577)) b!5586324))

(declare-fun m!6567278 () Bool)

(assert (=> d!1765704 m!6567278))

(assert (=> b!5586323 m!6566934))

(declare-fun m!6567280 () Bool)

(assert (=> b!5586323 m!6567280))

(assert (=> b!5585918 d!1765704))

(declare-fun d!1765706 () Bool)

(declare-fun e!3446655 () Bool)

(assert (=> d!1765706 e!3446655))

(declare-fun res!2370463 () Bool)

(assert (=> d!1765706 (=> (not res!2370463) (not e!3446655))))

(declare-fun lt!2254712 () List!63019)

(declare-fun noDuplicate!1548 (List!63019) Bool)

(assert (=> d!1765706 (= res!2370463 (noDuplicate!1548 lt!2254712))))

(declare-fun choose!42345 ((InoxSet Context!9914)) List!63019)

(assert (=> d!1765706 (= lt!2254712 (choose!42345 z!1189))))

(assert (=> d!1765706 (= (toList!9357 z!1189) lt!2254712)))

(declare-fun b!5586331 () Bool)

(declare-fun content!11342 (List!63019) (InoxSet Context!9914))

(assert (=> b!5586331 (= e!3446655 (= (content!11342 lt!2254712) z!1189))))

(assert (= (and d!1765706 res!2370463) b!5586331))

(declare-fun m!6567282 () Bool)

(assert (=> d!1765706 m!6567282))

(declare-fun m!6567284 () Bool)

(assert (=> d!1765706 m!6567284))

(declare-fun m!6567286 () Bool)

(assert (=> b!5586331 m!6567286))

(assert (=> b!5585897 d!1765706))

(declare-fun d!1765708 () Bool)

(declare-fun lt!2254715 () Regex!15573)

(assert (=> d!1765708 (validRegex!7309 lt!2254715)))

(assert (=> d!1765708 (= lt!2254715 (generalisedUnion!1436 (unfocusZipperList!1001 zl!343)))))

(assert (=> d!1765708 (= (unfocusZipper!1315 zl!343) lt!2254715)))

(declare-fun bs!1291964 () Bool)

(assert (= bs!1291964 d!1765708))

(declare-fun m!6567288 () Bool)

(assert (=> bs!1291964 m!6567288))

(assert (=> bs!1291964 m!6566910))

(assert (=> bs!1291964 m!6566910))

(assert (=> bs!1291964 m!6566912))

(assert (=> b!5585916 d!1765708))

(declare-fun d!1765710 () Bool)

(assert (=> d!1765710 (= (isEmpty!34706 (t!376293 (exprs!5457 (h!69343 zl!343)))) ((_ is Nil!62894) (t!376293 (exprs!5457 (h!69343 zl!343)))))))

(assert (=> b!5585895 d!1765710))

(declare-fun d!1765714 () Bool)

(declare-fun e!3446679 () Bool)

(assert (=> d!1765714 (= (matchZipper!1711 ((_ map or) lt!2254643 lt!2254657) (t!376295 s!2326)) e!3446679)))

(declare-fun res!2370485 () Bool)

(assert (=> d!1765714 (=> res!2370485 e!3446679)))

(assert (=> d!1765714 (= res!2370485 (matchZipper!1711 lt!2254643 (t!376295 s!2326)))))

(declare-fun lt!2254720 () Unit!155682)

(declare-fun choose!42346 ((InoxSet Context!9914) (InoxSet Context!9914) List!63020) Unit!155682)

(assert (=> d!1765714 (= lt!2254720 (choose!42346 lt!2254643 lt!2254657 (t!376295 s!2326)))))

(assert (=> d!1765714 (= (lemmaZipperConcatMatchesSameAsBothZippers!598 lt!2254643 lt!2254657 (t!376295 s!2326)) lt!2254720)))

(declare-fun b!5586373 () Bool)

(assert (=> b!5586373 (= e!3446679 (matchZipper!1711 lt!2254657 (t!376295 s!2326)))))

(assert (= (and d!1765714 (not res!2370485)) b!5586373))

(assert (=> d!1765714 m!6566942))

(assert (=> d!1765714 m!6566940))

(declare-fun m!6567298 () Bool)

(assert (=> d!1765714 m!6567298))

(assert (=> b!5586373 m!6566926))

(assert (=> b!5585906 d!1765714))

(declare-fun d!1765716 () Bool)

(declare-fun c!978593 () Bool)

(assert (=> d!1765716 (= c!978593 (isEmpty!34708 (t!376295 s!2326)))))

(declare-fun e!3446689 () Bool)

(assert (=> d!1765716 (= (matchZipper!1711 lt!2254643 (t!376295 s!2326)) e!3446689)))

(declare-fun b!5586392 () Bool)

(declare-fun nullableZipper!1568 ((InoxSet Context!9914)) Bool)

(assert (=> b!5586392 (= e!3446689 (nullableZipper!1568 lt!2254643))))

(declare-fun b!5586393 () Bool)

(declare-fun derivationStepZipper!1672 ((InoxSet Context!9914) C!31416) (InoxSet Context!9914))

(assert (=> b!5586393 (= e!3446689 (matchZipper!1711 (derivationStepZipper!1672 lt!2254643 (head!11915 (t!376295 s!2326))) (tail!11010 (t!376295 s!2326))))))

(assert (= (and d!1765716 c!978593) b!5586392))

(assert (= (and d!1765716 (not c!978593)) b!5586393))

(declare-fun m!6567312 () Bool)

(assert (=> d!1765716 m!6567312))

(declare-fun m!6567314 () Bool)

(assert (=> b!5586392 m!6567314))

(declare-fun m!6567316 () Bool)

(assert (=> b!5586393 m!6567316))

(assert (=> b!5586393 m!6567316))

(declare-fun m!6567318 () Bool)

(assert (=> b!5586393 m!6567318))

(declare-fun m!6567320 () Bool)

(assert (=> b!5586393 m!6567320))

(assert (=> b!5586393 m!6567318))

(assert (=> b!5586393 m!6567320))

(declare-fun m!6567322 () Bool)

(assert (=> b!5586393 m!6567322))

(assert (=> b!5585906 d!1765716))

(declare-fun d!1765720 () Bool)

(declare-fun c!978594 () Bool)

(assert (=> d!1765720 (= c!978594 (isEmpty!34708 (t!376295 s!2326)))))

(declare-fun e!3446690 () Bool)

(assert (=> d!1765720 (= (matchZipper!1711 ((_ map or) lt!2254643 lt!2254657) (t!376295 s!2326)) e!3446690)))

(declare-fun b!5586394 () Bool)

(assert (=> b!5586394 (= e!3446690 (nullableZipper!1568 ((_ map or) lt!2254643 lt!2254657)))))

(declare-fun b!5586395 () Bool)

(assert (=> b!5586395 (= e!3446690 (matchZipper!1711 (derivationStepZipper!1672 ((_ map or) lt!2254643 lt!2254657) (head!11915 (t!376295 s!2326))) (tail!11010 (t!376295 s!2326))))))

(assert (= (and d!1765720 c!978594) b!5586394))

(assert (= (and d!1765720 (not c!978594)) b!5586395))

(assert (=> d!1765720 m!6567312))

(declare-fun m!6567326 () Bool)

(assert (=> b!5586394 m!6567326))

(assert (=> b!5586395 m!6567316))

(assert (=> b!5586395 m!6567316))

(declare-fun m!6567328 () Bool)

(assert (=> b!5586395 m!6567328))

(assert (=> b!5586395 m!6567320))

(assert (=> b!5586395 m!6567328))

(assert (=> b!5586395 m!6567320))

(declare-fun m!6567330 () Bool)

(assert (=> b!5586395 m!6567330))

(assert (=> b!5585906 d!1765720))

(declare-fun d!1765724 () Bool)

(declare-fun c!978595 () Bool)

(assert (=> d!1765724 (= c!978595 (isEmpty!34708 (t!376295 s!2326)))))

(declare-fun e!3446691 () Bool)

(assert (=> d!1765724 (= (matchZipper!1711 lt!2254657 (t!376295 s!2326)) e!3446691)))

(declare-fun b!5586396 () Bool)

(assert (=> b!5586396 (= e!3446691 (nullableZipper!1568 lt!2254657))))

(declare-fun b!5586397 () Bool)

(assert (=> b!5586397 (= e!3446691 (matchZipper!1711 (derivationStepZipper!1672 lt!2254657 (head!11915 (t!376295 s!2326))) (tail!11010 (t!376295 s!2326))))))

(assert (= (and d!1765724 c!978595) b!5586396))

(assert (= (and d!1765724 (not c!978595)) b!5586397))

(assert (=> d!1765724 m!6567312))

(declare-fun m!6567332 () Bool)

(assert (=> b!5586396 m!6567332))

(assert (=> b!5586397 m!6567316))

(assert (=> b!5586397 m!6567316))

(declare-fun m!6567334 () Bool)

(assert (=> b!5586397 m!6567334))

(assert (=> b!5586397 m!6567320))

(assert (=> b!5586397 m!6567334))

(assert (=> b!5586397 m!6567320))

(declare-fun m!6567336 () Bool)

(assert (=> b!5586397 m!6567336))

(assert (=> b!5585917 d!1765724))

(declare-fun bs!1291969 () Bool)

(declare-fun d!1765728 () Bool)

(assert (= bs!1291969 (and d!1765728 d!1765680)))

(declare-fun lambda!299747 () Int)

(assert (=> bs!1291969 (= lambda!299747 lambda!299735)))

(declare-fun bs!1291970 () Bool)

(assert (= bs!1291970 (and d!1765728 d!1765704)))

(assert (=> bs!1291970 (= lambda!299747 lambda!299740)))

(declare-fun b!5586475 () Bool)

(declare-fun e!3446732 () Bool)

(declare-fun lt!2254730 () Regex!15573)

(declare-fun isConcat!650 (Regex!15573) Bool)

(assert (=> b!5586475 (= e!3446732 (isConcat!650 lt!2254730))))

(declare-fun b!5586476 () Bool)

(declare-fun e!3446734 () Bool)

(assert (=> b!5586476 (= e!3446734 e!3446732)))

(declare-fun c!978606 () Bool)

(assert (=> b!5586476 (= c!978606 (isEmpty!34706 (tail!11011 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun b!5586477 () Bool)

(declare-fun e!3446735 () Bool)

(assert (=> b!5586477 (= e!3446735 (isEmpty!34706 (t!376293 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun b!5586478 () Bool)

(declare-fun e!3446733 () Regex!15573)

(assert (=> b!5586478 (= e!3446733 EmptyExpr!15573)))

(declare-fun b!5586479 () Bool)

(declare-fun isEmptyExpr!1127 (Regex!15573) Bool)

(assert (=> b!5586479 (= e!3446734 (isEmptyExpr!1127 lt!2254730))))

(declare-fun b!5586480 () Bool)

(assert (=> b!5586480 (= e!3446733 (Concat!24418 (h!69342 (exprs!5457 (h!69343 zl!343))) (generalisedConcat!1188 (t!376293 (exprs!5457 (h!69343 zl!343))))))))

(declare-fun b!5586481 () Bool)

(assert (=> b!5586481 (= e!3446732 (= lt!2254730 (head!11916 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun e!3446730 () Bool)

(assert (=> d!1765728 e!3446730))

(declare-fun res!2370502 () Bool)

(assert (=> d!1765728 (=> (not res!2370502) (not e!3446730))))

(assert (=> d!1765728 (= res!2370502 (validRegex!7309 lt!2254730))))

(declare-fun e!3446731 () Regex!15573)

(assert (=> d!1765728 (= lt!2254730 e!3446731)))

(declare-fun c!978604 () Bool)

(assert (=> d!1765728 (= c!978604 e!3446735)))

(declare-fun res!2370501 () Bool)

(assert (=> d!1765728 (=> (not res!2370501) (not e!3446735))))

(assert (=> d!1765728 (= res!2370501 ((_ is Cons!62894) (exprs!5457 (h!69343 zl!343))))))

(assert (=> d!1765728 (forall!14739 (exprs!5457 (h!69343 zl!343)) lambda!299747)))

(assert (=> d!1765728 (= (generalisedConcat!1188 (exprs!5457 (h!69343 zl!343))) lt!2254730)))

(declare-fun b!5586482 () Bool)

(assert (=> b!5586482 (= e!3446731 (h!69342 (exprs!5457 (h!69343 zl!343))))))

(declare-fun b!5586483 () Bool)

(assert (=> b!5586483 (= e!3446730 e!3446734)))

(declare-fun c!978605 () Bool)

(assert (=> b!5586483 (= c!978605 (isEmpty!34706 (exprs!5457 (h!69343 zl!343))))))

(declare-fun b!5586484 () Bool)

(assert (=> b!5586484 (= e!3446731 e!3446733)))

(declare-fun c!978607 () Bool)

(assert (=> b!5586484 (= c!978607 ((_ is Cons!62894) (exprs!5457 (h!69343 zl!343))))))

(assert (= (and d!1765728 res!2370501) b!5586477))

(assert (= (and d!1765728 c!978604) b!5586482))

(assert (= (and d!1765728 (not c!978604)) b!5586484))

(assert (= (and b!5586484 c!978607) b!5586480))

(assert (= (and b!5586484 (not c!978607)) b!5586478))

(assert (= (and d!1765728 res!2370502) b!5586483))

(assert (= (and b!5586483 c!978605) b!5586479))

(assert (= (and b!5586483 (not c!978605)) b!5586476))

(assert (= (and b!5586476 c!978606) b!5586481))

(assert (= (and b!5586476 (not c!978606)) b!5586475))

(declare-fun m!6567348 () Bool)

(assert (=> b!5586481 m!6567348))

(assert (=> b!5586477 m!6566948))

(declare-fun m!6567350 () Bool)

(assert (=> b!5586479 m!6567350))

(declare-fun m!6567352 () Bool)

(assert (=> b!5586480 m!6567352))

(declare-fun m!6567354 () Bool)

(assert (=> d!1765728 m!6567354))

(declare-fun m!6567356 () Bool)

(assert (=> d!1765728 m!6567356))

(declare-fun m!6567358 () Bool)

(assert (=> b!5586475 m!6567358))

(declare-fun m!6567360 () Bool)

(assert (=> b!5586483 m!6567360))

(declare-fun m!6567362 () Bool)

(assert (=> b!5586476 m!6567362))

(assert (=> b!5586476 m!6567362))

(declare-fun m!6567364 () Bool)

(assert (=> b!5586476 m!6567364))

(assert (=> b!5585920 d!1765728))

(declare-fun d!1765736 () Bool)

(declare-fun dynLambda!24596 (Int Context!9914) (InoxSet Context!9914))

(assert (=> d!1765736 (= (flatMap!1186 lt!2254646 lambda!299704) (dynLambda!24596 lambda!299704 lt!2254659))))

(declare-fun lt!2254733 () Unit!155682)

(declare-fun choose!42350 ((InoxSet Context!9914) Context!9914 Int) Unit!155682)

(assert (=> d!1765736 (= lt!2254733 (choose!42350 lt!2254646 lt!2254659 lambda!299704))))

(assert (=> d!1765736 (= lt!2254646 (store ((as const (Array Context!9914 Bool)) false) lt!2254659 true))))

(assert (=> d!1765736 (= (lemmaFlatMapOnSingletonSet!718 lt!2254646 lt!2254659 lambda!299704) lt!2254733)))

(declare-fun b_lambda!211695 () Bool)

(assert (=> (not b_lambda!211695) (not d!1765736)))

(declare-fun bs!1291971 () Bool)

(assert (= bs!1291971 d!1765736))

(assert (=> bs!1291971 m!6566990))

(declare-fun m!6567366 () Bool)

(assert (=> bs!1291971 m!6567366))

(declare-fun m!6567368 () Bool)

(assert (=> bs!1291971 m!6567368))

(assert (=> bs!1291971 m!6566994))

(assert (=> b!5585910 d!1765736))

(declare-fun b!5586495 () Bool)

(declare-fun e!3446744 () (InoxSet Context!9914))

(declare-fun call!418121 () (InoxSet Context!9914))

(assert (=> b!5586495 (= e!3446744 call!418121)))

(declare-fun d!1765738 () Bool)

(declare-fun c!978613 () Bool)

(declare-fun e!3446742 () Bool)

(assert (=> d!1765738 (= c!978613 e!3446742)))

(declare-fun res!2370505 () Bool)

(assert (=> d!1765738 (=> (not res!2370505) (not e!3446742))))

(assert (=> d!1765738 (= res!2370505 ((_ is Cons!62894) (exprs!5457 lt!2254653)))))

(declare-fun e!3446743 () (InoxSet Context!9914))

(assert (=> d!1765738 (= (derivationStepZipperUp!841 lt!2254653 (h!69344 s!2326)) e!3446743)))

(declare-fun b!5586496 () Bool)

(assert (=> b!5586496 (= e!3446743 e!3446744)))

(declare-fun c!978612 () Bool)

(assert (=> b!5586496 (= c!978612 ((_ is Cons!62894) (exprs!5457 lt!2254653)))))

(declare-fun b!5586497 () Bool)

(assert (=> b!5586497 (= e!3446743 ((_ map or) call!418121 (derivationStepZipperUp!841 (Context!9915 (t!376293 (exprs!5457 lt!2254653))) (h!69344 s!2326))))))

(declare-fun b!5586498 () Bool)

(assert (=> b!5586498 (= e!3446742 (nullable!5605 (h!69342 (exprs!5457 lt!2254653))))))

(declare-fun bm!418116 () Bool)

(assert (=> bm!418116 (= call!418121 (derivationStepZipperDown!915 (h!69342 (exprs!5457 lt!2254653)) (Context!9915 (t!376293 (exprs!5457 lt!2254653))) (h!69344 s!2326)))))

(declare-fun b!5586499 () Bool)

(assert (=> b!5586499 (= e!3446744 ((as const (Array Context!9914 Bool)) false))))

(assert (= (and d!1765738 res!2370505) b!5586498))

(assert (= (and d!1765738 c!978613) b!5586497))

(assert (= (and d!1765738 (not c!978613)) b!5586496))

(assert (= (and b!5586496 c!978612) b!5586495))

(assert (= (and b!5586496 (not c!978612)) b!5586499))

(assert (= (or b!5586497 b!5586495) bm!418116))

(declare-fun m!6567370 () Bool)

(assert (=> b!5586497 m!6567370))

(declare-fun m!6567372 () Bool)

(assert (=> b!5586498 m!6567372))

(declare-fun m!6567374 () Bool)

(assert (=> bm!418116 m!6567374))

(assert (=> b!5585910 d!1765738))

(declare-fun b!5586500 () Bool)

(declare-fun e!3446747 () (InoxSet Context!9914))

(declare-fun call!418122 () (InoxSet Context!9914))

(assert (=> b!5586500 (= e!3446747 call!418122)))

(declare-fun d!1765740 () Bool)

(declare-fun c!978615 () Bool)

(declare-fun e!3446745 () Bool)

(assert (=> d!1765740 (= c!978615 e!3446745)))

(declare-fun res!2370506 () Bool)

(assert (=> d!1765740 (=> (not res!2370506) (not e!3446745))))

(assert (=> d!1765740 (= res!2370506 ((_ is Cons!62894) (exprs!5457 lt!2254659)))))

(declare-fun e!3446746 () (InoxSet Context!9914))

(assert (=> d!1765740 (= (derivationStepZipperUp!841 lt!2254659 (h!69344 s!2326)) e!3446746)))

(declare-fun b!5586501 () Bool)

(assert (=> b!5586501 (= e!3446746 e!3446747)))

(declare-fun c!978614 () Bool)

(assert (=> b!5586501 (= c!978614 ((_ is Cons!62894) (exprs!5457 lt!2254659)))))

(declare-fun b!5586502 () Bool)

(assert (=> b!5586502 (= e!3446746 ((_ map or) call!418122 (derivationStepZipperUp!841 (Context!9915 (t!376293 (exprs!5457 lt!2254659))) (h!69344 s!2326))))))

(declare-fun b!5586503 () Bool)

(assert (=> b!5586503 (= e!3446745 (nullable!5605 (h!69342 (exprs!5457 lt!2254659))))))

(declare-fun bm!418117 () Bool)

(assert (=> bm!418117 (= call!418122 (derivationStepZipperDown!915 (h!69342 (exprs!5457 lt!2254659)) (Context!9915 (t!376293 (exprs!5457 lt!2254659))) (h!69344 s!2326)))))

(declare-fun b!5586504 () Bool)

(assert (=> b!5586504 (= e!3446747 ((as const (Array Context!9914 Bool)) false))))

(assert (= (and d!1765740 res!2370506) b!5586503))

(assert (= (and d!1765740 c!978615) b!5586502))

(assert (= (and d!1765740 (not c!978615)) b!5586501))

(assert (= (and b!5586501 c!978614) b!5586500))

(assert (= (and b!5586501 (not c!978614)) b!5586504))

(assert (= (or b!5586502 b!5586500) bm!418117))

(declare-fun m!6567376 () Bool)

(assert (=> b!5586502 m!6567376))

(declare-fun m!6567378 () Bool)

(assert (=> b!5586503 m!6567378))

(declare-fun m!6567380 () Bool)

(assert (=> bm!418117 m!6567380))

(assert (=> b!5585910 d!1765740))

(declare-fun d!1765742 () Bool)

(declare-fun nullableFct!1714 (Regex!15573) Bool)

(assert (=> d!1765742 (= (nullable!5605 (regOne!31659 (regOne!31658 r!7292))) (nullableFct!1714 (regOne!31659 (regOne!31658 r!7292))))))

(declare-fun bs!1291972 () Bool)

(assert (= bs!1291972 d!1765742))

(declare-fun m!6567382 () Bool)

(assert (=> bs!1291972 m!6567382))

(assert (=> b!5585910 d!1765742))

(declare-fun d!1765744 () Bool)

(assert (=> d!1765744 (= (flatMap!1186 lt!2254651 lambda!299704) (dynLambda!24596 lambda!299704 lt!2254653))))

(declare-fun lt!2254734 () Unit!155682)

(assert (=> d!1765744 (= lt!2254734 (choose!42350 lt!2254651 lt!2254653 lambda!299704))))

(assert (=> d!1765744 (= lt!2254651 (store ((as const (Array Context!9914 Bool)) false) lt!2254653 true))))

(assert (=> d!1765744 (= (lemmaFlatMapOnSingletonSet!718 lt!2254651 lt!2254653 lambda!299704) lt!2254734)))

(declare-fun b_lambda!211697 () Bool)

(assert (=> (not b_lambda!211697) (not d!1765744)))

(declare-fun bs!1291973 () Bool)

(assert (= bs!1291973 d!1765744))

(assert (=> bs!1291973 m!6566998))

(declare-fun m!6567384 () Bool)

(assert (=> bs!1291973 m!6567384))

(declare-fun m!6567386 () Bool)

(assert (=> bs!1291973 m!6567386))

(assert (=> bs!1291973 m!6567002))

(assert (=> b!5585910 d!1765744))

(declare-fun d!1765746 () Bool)

(assert (=> d!1765746 (= (nullable!5605 (regTwo!31659 (regOne!31658 r!7292))) (nullableFct!1714 (regTwo!31659 (regOne!31658 r!7292))))))

(declare-fun bs!1291974 () Bool)

(assert (= bs!1291974 d!1765746))

(declare-fun m!6567388 () Bool)

(assert (=> bs!1291974 m!6567388))

(assert (=> b!5585910 d!1765746))

(declare-fun d!1765748 () Bool)

(declare-fun choose!42351 ((InoxSet Context!9914) Int) (InoxSet Context!9914))

(assert (=> d!1765748 (= (flatMap!1186 lt!2254651 lambda!299704) (choose!42351 lt!2254651 lambda!299704))))

(declare-fun bs!1291975 () Bool)

(assert (= bs!1291975 d!1765748))

(declare-fun m!6567390 () Bool)

(assert (=> bs!1291975 m!6567390))

(assert (=> b!5585910 d!1765748))

(declare-fun d!1765750 () Bool)

(assert (=> d!1765750 (= (flatMap!1186 lt!2254646 lambda!299704) (choose!42351 lt!2254646 lambda!299704))))

(declare-fun bs!1291976 () Bool)

(assert (= bs!1291976 d!1765750))

(declare-fun m!6567392 () Bool)

(assert (=> bs!1291976 m!6567392))

(assert (=> b!5585910 d!1765750))

(declare-fun d!1765752 () Bool)

(declare-fun c!978616 () Bool)

(assert (=> d!1765752 (= c!978616 (isEmpty!34708 (t!376295 s!2326)))))

(declare-fun e!3446748 () Bool)

(assert (=> d!1765752 (= (matchZipper!1711 lt!2254640 (t!376295 s!2326)) e!3446748)))

(declare-fun b!5586505 () Bool)

(assert (=> b!5586505 (= e!3446748 (nullableZipper!1568 lt!2254640))))

(declare-fun b!5586506 () Bool)

(assert (=> b!5586506 (= e!3446748 (matchZipper!1711 (derivationStepZipper!1672 lt!2254640 (head!11915 (t!376295 s!2326))) (tail!11010 (t!376295 s!2326))))))

(assert (= (and d!1765752 c!978616) b!5586505))

(assert (= (and d!1765752 (not c!978616)) b!5586506))

(assert (=> d!1765752 m!6567312))

(declare-fun m!6567394 () Bool)

(assert (=> b!5586505 m!6567394))

(assert (=> b!5586506 m!6567316))

(assert (=> b!5586506 m!6567316))

(declare-fun m!6567396 () Bool)

(assert (=> b!5586506 m!6567396))

(assert (=> b!5586506 m!6567320))

(assert (=> b!5586506 m!6567396))

(assert (=> b!5586506 m!6567320))

(declare-fun m!6567398 () Bool)

(assert (=> b!5586506 m!6567398))

(assert (=> b!5585919 d!1765752))

(declare-fun d!1765754 () Bool)

(assert (=> d!1765754 (= (isEmpty!34707 (t!376294 zl!343)) ((_ is Nil!62895) (t!376294 zl!343)))))

(assert (=> b!5585898 d!1765754))

(assert (=> b!5585909 d!1765716))

(declare-fun d!1765756 () Bool)

(declare-fun c!978617 () Bool)

(assert (=> d!1765756 (= c!978617 (isEmpty!34708 (t!376295 s!2326)))))

(declare-fun e!3446749 () Bool)

(assert (=> d!1765756 (= (matchZipper!1711 lt!2254637 (t!376295 s!2326)) e!3446749)))

(declare-fun b!5586507 () Bool)

(assert (=> b!5586507 (= e!3446749 (nullableZipper!1568 lt!2254637))))

(declare-fun b!5586508 () Bool)

(assert (=> b!5586508 (= e!3446749 (matchZipper!1711 (derivationStepZipper!1672 lt!2254637 (head!11915 (t!376295 s!2326))) (tail!11010 (t!376295 s!2326))))))

(assert (= (and d!1765756 c!978617) b!5586507))

(assert (= (and d!1765756 (not c!978617)) b!5586508))

(assert (=> d!1765756 m!6567312))

(declare-fun m!6567400 () Bool)

(assert (=> b!5586507 m!6567400))

(assert (=> b!5586508 m!6567316))

(assert (=> b!5586508 m!6567316))

(declare-fun m!6567402 () Bool)

(assert (=> b!5586508 m!6567402))

(assert (=> b!5586508 m!6567320))

(assert (=> b!5586508 m!6567402))

(assert (=> b!5586508 m!6567320))

(declare-fun m!6567404 () Bool)

(assert (=> b!5586508 m!6567404))

(assert (=> b!5585909 d!1765756))

(declare-fun d!1765758 () Bool)

(declare-fun c!978618 () Bool)

(assert (=> d!1765758 (= c!978618 (isEmpty!34708 (t!376295 s!2326)))))

(declare-fun e!3446750 () Bool)

(assert (=> d!1765758 (= (matchZipper!1711 lt!2254641 (t!376295 s!2326)) e!3446750)))

(declare-fun b!5586509 () Bool)

(assert (=> b!5586509 (= e!3446750 (nullableZipper!1568 lt!2254641))))

(declare-fun b!5586510 () Bool)

(assert (=> b!5586510 (= e!3446750 (matchZipper!1711 (derivationStepZipper!1672 lt!2254641 (head!11915 (t!376295 s!2326))) (tail!11010 (t!376295 s!2326))))))

(assert (= (and d!1765758 c!978618) b!5586509))

(assert (= (and d!1765758 (not c!978618)) b!5586510))

(assert (=> d!1765758 m!6567312))

(declare-fun m!6567406 () Bool)

(assert (=> b!5586509 m!6567406))

(assert (=> b!5586510 m!6567316))

(assert (=> b!5586510 m!6567316))

(declare-fun m!6567408 () Bool)

(assert (=> b!5586510 m!6567408))

(assert (=> b!5586510 m!6567320))

(assert (=> b!5586510 m!6567408))

(assert (=> b!5586510 m!6567320))

(declare-fun m!6567410 () Bool)

(assert (=> b!5586510 m!6567410))

(assert (=> b!5585909 d!1765758))

(declare-fun e!3446751 () Bool)

(declare-fun d!1765760 () Bool)

(assert (=> d!1765760 (= (matchZipper!1711 ((_ map or) lt!2254641 lt!2254640) (t!376295 s!2326)) e!3446751)))

(declare-fun res!2370507 () Bool)

(assert (=> d!1765760 (=> res!2370507 e!3446751)))

(assert (=> d!1765760 (= res!2370507 (matchZipper!1711 lt!2254641 (t!376295 s!2326)))))

(declare-fun lt!2254735 () Unit!155682)

(assert (=> d!1765760 (= lt!2254735 (choose!42346 lt!2254641 lt!2254640 (t!376295 s!2326)))))

(assert (=> d!1765760 (= (lemmaZipperConcatMatchesSameAsBothZippers!598 lt!2254641 lt!2254640 (t!376295 s!2326)) lt!2254735)))

(declare-fun b!5586511 () Bool)

(assert (=> b!5586511 (= e!3446751 (matchZipper!1711 lt!2254640 (t!376295 s!2326)))))

(assert (= (and d!1765760 (not res!2370507)) b!5586511))

(declare-fun m!6567412 () Bool)

(assert (=> d!1765760 m!6567412))

(assert (=> d!1765760 m!6566970))

(declare-fun m!6567414 () Bool)

(assert (=> d!1765760 m!6567414))

(assert (=> b!5586511 m!6566964))

(assert (=> b!5585909 d!1765760))

(assert (=> b!5585912 d!1765724))

(declare-fun d!1765762 () Bool)

(declare-fun e!3446752 () Bool)

(assert (=> d!1765762 (= (matchZipper!1711 ((_ map or) lt!2254641 lt!2254657) (t!376295 s!2326)) e!3446752)))

(declare-fun res!2370508 () Bool)

(assert (=> d!1765762 (=> res!2370508 e!3446752)))

(assert (=> d!1765762 (= res!2370508 (matchZipper!1711 lt!2254641 (t!376295 s!2326)))))

(declare-fun lt!2254736 () Unit!155682)

(assert (=> d!1765762 (= lt!2254736 (choose!42346 lt!2254641 lt!2254657 (t!376295 s!2326)))))

(assert (=> d!1765762 (= (lemmaZipperConcatMatchesSameAsBothZippers!598 lt!2254641 lt!2254657 (t!376295 s!2326)) lt!2254736)))

(declare-fun b!5586512 () Bool)

(assert (=> b!5586512 (= e!3446752 (matchZipper!1711 lt!2254657 (t!376295 s!2326)))))

(assert (= (and d!1765762 (not res!2370508)) b!5586512))

(assert (=> d!1765762 m!6566982))

(assert (=> d!1765762 m!6566970))

(declare-fun m!6567416 () Bool)

(assert (=> d!1765762 m!6567416))

(assert (=> b!5586512 m!6566926))

(assert (=> b!5585913 d!1765762))

(declare-fun d!1765764 () Bool)

(declare-fun c!978619 () Bool)

(assert (=> d!1765764 (= c!978619 (isEmpty!34708 (t!376295 s!2326)))))

(declare-fun e!3446753 () Bool)

(assert (=> d!1765764 (= (matchZipper!1711 ((_ map or) lt!2254641 lt!2254657) (t!376295 s!2326)) e!3446753)))

(declare-fun b!5586513 () Bool)

(assert (=> b!5586513 (= e!3446753 (nullableZipper!1568 ((_ map or) lt!2254641 lt!2254657)))))

(declare-fun b!5586514 () Bool)

(assert (=> b!5586514 (= e!3446753 (matchZipper!1711 (derivationStepZipper!1672 ((_ map or) lt!2254641 lt!2254657) (head!11915 (t!376295 s!2326))) (tail!11010 (t!376295 s!2326))))))

(assert (= (and d!1765764 c!978619) b!5586513))

(assert (= (and d!1765764 (not c!978619)) b!5586514))

(assert (=> d!1765764 m!6567312))

(declare-fun m!6567418 () Bool)

(assert (=> b!5586513 m!6567418))

(assert (=> b!5586514 m!6567316))

(assert (=> b!5586514 m!6567316))

(declare-fun m!6567420 () Bool)

(assert (=> b!5586514 m!6567420))

(assert (=> b!5586514 m!6567320))

(assert (=> b!5586514 m!6567420))

(assert (=> b!5586514 m!6567320))

(declare-fun m!6567422 () Bool)

(assert (=> b!5586514 m!6567422))

(assert (=> b!5585913 d!1765764))

(declare-fun b!5586537 () Bool)

(declare-fun c!978634 () Bool)

(declare-fun e!3446766 () Bool)

(assert (=> b!5586537 (= c!978634 e!3446766)))

(declare-fun res!2370511 () Bool)

(assert (=> b!5586537 (=> (not res!2370511) (not e!3446766))))

(assert (=> b!5586537 (= res!2370511 ((_ is Concat!24418) (regTwo!31659 (regOne!31658 r!7292))))))

(declare-fun e!3446771 () (InoxSet Context!9914))

(declare-fun e!3446767 () (InoxSet Context!9914))

(assert (=> b!5586537 (= e!3446771 e!3446767)))

(declare-fun call!418140 () List!63018)

(declare-fun bm!418130 () Bool)

(declare-fun c!978633 () Bool)

(declare-fun call!418139 () (InoxSet Context!9914))

(assert (=> bm!418130 (= call!418139 (derivationStepZipperDown!915 (ite c!978633 (regOne!31659 (regTwo!31659 (regOne!31658 r!7292))) (regOne!31658 (regTwo!31659 (regOne!31658 r!7292)))) (ite c!978633 lt!2254638 (Context!9915 call!418140)) (h!69344 s!2326)))))

(declare-fun bm!418131 () Bool)

(declare-fun c!978631 () Bool)

(declare-fun $colon$colon!1636 (List!63018 Regex!15573) List!63018)

(assert (=> bm!418131 (= call!418140 ($colon$colon!1636 (exprs!5457 lt!2254638) (ite (or c!978634 c!978631) (regTwo!31658 (regTwo!31659 (regOne!31658 r!7292))) (regTwo!31659 (regOne!31658 r!7292)))))))

(declare-fun b!5586538 () Bool)

(declare-fun c!978630 () Bool)

(assert (=> b!5586538 (= c!978630 ((_ is Star!15573) (regTwo!31659 (regOne!31658 r!7292))))))

(declare-fun e!3446770 () (InoxSet Context!9914))

(declare-fun e!3446768 () (InoxSet Context!9914))

(assert (=> b!5586538 (= e!3446770 e!3446768)))

(declare-fun b!5586539 () Bool)

(declare-fun call!418136 () (InoxSet Context!9914))

(assert (=> b!5586539 (= e!3446767 ((_ map or) call!418139 call!418136))))

(declare-fun b!5586540 () Bool)

(assert (=> b!5586540 (= e!3446766 (nullable!5605 (regOne!31658 (regTwo!31659 (regOne!31658 r!7292)))))))

(declare-fun b!5586541 () Bool)

(declare-fun call!418138 () (InoxSet Context!9914))

(assert (=> b!5586541 (= e!3446768 call!418138)))

(declare-fun b!5586542 () Bool)

(declare-fun e!3446769 () (InoxSet Context!9914))

(assert (=> b!5586542 (= e!3446769 e!3446771)))

(assert (=> b!5586542 (= c!978633 ((_ is Union!15573) (regTwo!31659 (regOne!31658 r!7292))))))

(declare-fun b!5586543 () Bool)

(assert (=> b!5586543 (= e!3446769 (store ((as const (Array Context!9914 Bool)) false) lt!2254638 true))))

(declare-fun bm!418132 () Bool)

(declare-fun call!418135 () (InoxSet Context!9914))

(assert (=> bm!418132 (= call!418136 call!418135)))

(declare-fun b!5586544 () Bool)

(assert (=> b!5586544 (= e!3446768 ((as const (Array Context!9914 Bool)) false))))

(declare-fun b!5586545 () Bool)

(assert (=> b!5586545 (= e!3446770 call!418138)))

(declare-fun bm!418134 () Bool)

(assert (=> bm!418134 (= call!418138 call!418136)))

(declare-fun b!5586546 () Bool)

(assert (=> b!5586546 (= e!3446767 e!3446770)))

(assert (=> b!5586546 (= c!978631 ((_ is Concat!24418) (regTwo!31659 (regOne!31658 r!7292))))))

(declare-fun bm!418135 () Bool)

(declare-fun call!418137 () List!63018)

(assert (=> bm!418135 (= call!418137 call!418140)))

(declare-fun b!5586547 () Bool)

(assert (=> b!5586547 (= e!3446771 ((_ map or) call!418139 call!418135))))

(declare-fun d!1765766 () Bool)

(declare-fun c!978632 () Bool)

(assert (=> d!1765766 (= c!978632 (and ((_ is ElementMatch!15573) (regTwo!31659 (regOne!31658 r!7292))) (= (c!978446 (regTwo!31659 (regOne!31658 r!7292))) (h!69344 s!2326))))))

(assert (=> d!1765766 (= (derivationStepZipperDown!915 (regTwo!31659 (regOne!31658 r!7292)) lt!2254638 (h!69344 s!2326)) e!3446769)))

(declare-fun bm!418133 () Bool)

(assert (=> bm!418133 (= call!418135 (derivationStepZipperDown!915 (ite c!978633 (regTwo!31659 (regTwo!31659 (regOne!31658 r!7292))) (ite c!978634 (regTwo!31658 (regTwo!31659 (regOne!31658 r!7292))) (ite c!978631 (regOne!31658 (regTwo!31659 (regOne!31658 r!7292))) (reg!15902 (regTwo!31659 (regOne!31658 r!7292)))))) (ite (or c!978633 c!978634) lt!2254638 (Context!9915 call!418137)) (h!69344 s!2326)))))

(assert (= (and d!1765766 c!978632) b!5586543))

(assert (= (and d!1765766 (not c!978632)) b!5586542))

(assert (= (and b!5586542 c!978633) b!5586547))

(assert (= (and b!5586542 (not c!978633)) b!5586537))

(assert (= (and b!5586537 res!2370511) b!5586540))

(assert (= (and b!5586537 c!978634) b!5586539))

(assert (= (and b!5586537 (not c!978634)) b!5586546))

(assert (= (and b!5586546 c!978631) b!5586545))

(assert (= (and b!5586546 (not c!978631)) b!5586538))

(assert (= (and b!5586538 c!978630) b!5586541))

(assert (= (and b!5586538 (not c!978630)) b!5586544))

(assert (= (or b!5586545 b!5586541) bm!418135))

(assert (= (or b!5586545 b!5586541) bm!418134))

(assert (= (or b!5586539 bm!418135) bm!418131))

(assert (= (or b!5586539 bm!418134) bm!418132))

(assert (= (or b!5586547 bm!418132) bm!418133))

(assert (= (or b!5586547 b!5586539) bm!418130))

(declare-fun m!6567424 () Bool)

(assert (=> b!5586540 m!6567424))

(declare-fun m!6567426 () Bool)

(assert (=> b!5586543 m!6567426))

(declare-fun m!6567428 () Bool)

(assert (=> bm!418130 m!6567428))

(declare-fun m!6567430 () Bool)

(assert (=> bm!418131 m!6567430))

(declare-fun m!6567432 () Bool)

(assert (=> bm!418133 m!6567432))

(assert (=> b!5585911 d!1765766))

(declare-fun b!5586548 () Bool)

(declare-fun c!978639 () Bool)

(declare-fun e!3446772 () Bool)

(assert (=> b!5586548 (= c!978639 e!3446772)))

(declare-fun res!2370512 () Bool)

(assert (=> b!5586548 (=> (not res!2370512) (not e!3446772))))

(assert (=> b!5586548 (= res!2370512 ((_ is Concat!24418) (regOne!31659 (regOne!31658 r!7292))))))

(declare-fun e!3446777 () (InoxSet Context!9914))

(declare-fun e!3446773 () (InoxSet Context!9914))

(assert (=> b!5586548 (= e!3446777 e!3446773)))

(declare-fun call!418146 () List!63018)

(declare-fun c!978638 () Bool)

(declare-fun bm!418136 () Bool)

(declare-fun call!418145 () (InoxSet Context!9914))

(assert (=> bm!418136 (= call!418145 (derivationStepZipperDown!915 (ite c!978638 (regOne!31659 (regOne!31659 (regOne!31658 r!7292))) (regOne!31658 (regOne!31659 (regOne!31658 r!7292)))) (ite c!978638 lt!2254638 (Context!9915 call!418146)) (h!69344 s!2326)))))

(declare-fun bm!418137 () Bool)

(declare-fun c!978636 () Bool)

(assert (=> bm!418137 (= call!418146 ($colon$colon!1636 (exprs!5457 lt!2254638) (ite (or c!978639 c!978636) (regTwo!31658 (regOne!31659 (regOne!31658 r!7292))) (regOne!31659 (regOne!31658 r!7292)))))))

(declare-fun b!5586549 () Bool)

(declare-fun c!978635 () Bool)

(assert (=> b!5586549 (= c!978635 ((_ is Star!15573) (regOne!31659 (regOne!31658 r!7292))))))

(declare-fun e!3446776 () (InoxSet Context!9914))

(declare-fun e!3446774 () (InoxSet Context!9914))

(assert (=> b!5586549 (= e!3446776 e!3446774)))

(declare-fun b!5586550 () Bool)

(declare-fun call!418142 () (InoxSet Context!9914))

(assert (=> b!5586550 (= e!3446773 ((_ map or) call!418145 call!418142))))

(declare-fun b!5586551 () Bool)

(assert (=> b!5586551 (= e!3446772 (nullable!5605 (regOne!31658 (regOne!31659 (regOne!31658 r!7292)))))))

(declare-fun b!5586552 () Bool)

(declare-fun call!418144 () (InoxSet Context!9914))

(assert (=> b!5586552 (= e!3446774 call!418144)))

(declare-fun b!5586553 () Bool)

(declare-fun e!3446775 () (InoxSet Context!9914))

(assert (=> b!5586553 (= e!3446775 e!3446777)))

(assert (=> b!5586553 (= c!978638 ((_ is Union!15573) (regOne!31659 (regOne!31658 r!7292))))))

(declare-fun b!5586554 () Bool)

(assert (=> b!5586554 (= e!3446775 (store ((as const (Array Context!9914 Bool)) false) lt!2254638 true))))

(declare-fun bm!418138 () Bool)

(declare-fun call!418141 () (InoxSet Context!9914))

(assert (=> bm!418138 (= call!418142 call!418141)))

(declare-fun b!5586555 () Bool)

(assert (=> b!5586555 (= e!3446774 ((as const (Array Context!9914 Bool)) false))))

(declare-fun b!5586556 () Bool)

(assert (=> b!5586556 (= e!3446776 call!418144)))

(declare-fun bm!418140 () Bool)

(assert (=> bm!418140 (= call!418144 call!418142)))

(declare-fun b!5586557 () Bool)

(assert (=> b!5586557 (= e!3446773 e!3446776)))

(assert (=> b!5586557 (= c!978636 ((_ is Concat!24418) (regOne!31659 (regOne!31658 r!7292))))))

(declare-fun bm!418141 () Bool)

(declare-fun call!418143 () List!63018)

(assert (=> bm!418141 (= call!418143 call!418146)))

(declare-fun b!5586558 () Bool)

(assert (=> b!5586558 (= e!3446777 ((_ map or) call!418145 call!418141))))

(declare-fun d!1765768 () Bool)

(declare-fun c!978637 () Bool)

(assert (=> d!1765768 (= c!978637 (and ((_ is ElementMatch!15573) (regOne!31659 (regOne!31658 r!7292))) (= (c!978446 (regOne!31659 (regOne!31658 r!7292))) (h!69344 s!2326))))))

(assert (=> d!1765768 (= (derivationStepZipperDown!915 (regOne!31659 (regOne!31658 r!7292)) lt!2254638 (h!69344 s!2326)) e!3446775)))

(declare-fun bm!418139 () Bool)

(assert (=> bm!418139 (= call!418141 (derivationStepZipperDown!915 (ite c!978638 (regTwo!31659 (regOne!31659 (regOne!31658 r!7292))) (ite c!978639 (regTwo!31658 (regOne!31659 (regOne!31658 r!7292))) (ite c!978636 (regOne!31658 (regOne!31659 (regOne!31658 r!7292))) (reg!15902 (regOne!31659 (regOne!31658 r!7292)))))) (ite (or c!978638 c!978639) lt!2254638 (Context!9915 call!418143)) (h!69344 s!2326)))))

(assert (= (and d!1765768 c!978637) b!5586554))

(assert (= (and d!1765768 (not c!978637)) b!5586553))

(assert (= (and b!5586553 c!978638) b!5586558))

(assert (= (and b!5586553 (not c!978638)) b!5586548))

(assert (= (and b!5586548 res!2370512) b!5586551))

(assert (= (and b!5586548 c!978639) b!5586550))

(assert (= (and b!5586548 (not c!978639)) b!5586557))

(assert (= (and b!5586557 c!978636) b!5586556))

(assert (= (and b!5586557 (not c!978636)) b!5586549))

(assert (= (and b!5586549 c!978635) b!5586552))

(assert (= (and b!5586549 (not c!978635)) b!5586555))

(assert (= (or b!5586556 b!5586552) bm!418141))

(assert (= (or b!5586556 b!5586552) bm!418140))

(assert (= (or b!5586550 bm!418141) bm!418137))

(assert (= (or b!5586550 bm!418140) bm!418138))

(assert (= (or b!5586558 bm!418138) bm!418139))

(assert (= (or b!5586558 b!5586550) bm!418136))

(declare-fun m!6567434 () Bool)

(assert (=> b!5586551 m!6567434))

(assert (=> b!5586554 m!6567426))

(declare-fun m!6567436 () Bool)

(assert (=> bm!418136 m!6567436))

(declare-fun m!6567438 () Bool)

(assert (=> bm!418137 m!6567438))

(declare-fun m!6567440 () Bool)

(assert (=> bm!418139 m!6567440))

(assert (=> b!5585911 d!1765768))

(declare-fun bs!1291977 () Bool)

(declare-fun d!1765770 () Bool)

(assert (= bs!1291977 (and d!1765770 d!1765680)))

(declare-fun lambda!299750 () Int)

(assert (=> bs!1291977 (= lambda!299750 lambda!299735)))

(declare-fun bs!1291978 () Bool)

(assert (= bs!1291978 (and d!1765770 d!1765704)))

(assert (=> bs!1291978 (= lambda!299750 lambda!299740)))

(declare-fun bs!1291979 () Bool)

(assert (= bs!1291979 (and d!1765770 d!1765728)))

(assert (=> bs!1291979 (= lambda!299750 lambda!299747)))

(assert (=> d!1765770 (= (inv!82179 (h!69343 zl!343)) (forall!14739 (exprs!5457 (h!69343 zl!343)) lambda!299750))))

(declare-fun bs!1291980 () Bool)

(assert (= bs!1291980 d!1765770))

(declare-fun m!6567442 () Bool)

(assert (=> bs!1291980 m!6567442))

(assert (=> b!5585915 d!1765770))

(declare-fun bs!1291981 () Bool)

(declare-fun d!1765772 () Bool)

(assert (= bs!1291981 (and d!1765772 d!1765680)))

(declare-fun lambda!299751 () Int)

(assert (=> bs!1291981 (= lambda!299751 lambda!299735)))

(declare-fun bs!1291982 () Bool)

(assert (= bs!1291982 (and d!1765772 d!1765704)))

(assert (=> bs!1291982 (= lambda!299751 lambda!299740)))

(declare-fun bs!1291983 () Bool)

(assert (= bs!1291983 (and d!1765772 d!1765728)))

(assert (=> bs!1291983 (= lambda!299751 lambda!299747)))

(declare-fun bs!1291984 () Bool)

(assert (= bs!1291984 (and d!1765772 d!1765770)))

(assert (=> bs!1291984 (= lambda!299751 lambda!299750)))

(assert (=> d!1765772 (= (inv!82179 setElem!37207) (forall!14739 (exprs!5457 setElem!37207) lambda!299751))))

(declare-fun bs!1291985 () Bool)

(assert (= bs!1291985 d!1765772))

(declare-fun m!6567444 () Bool)

(assert (=> bs!1291985 m!6567444))

(assert (=> setNonEmpty!37207 d!1765772))

(declare-fun b!5586559 () Bool)

(declare-fun c!978644 () Bool)

(declare-fun e!3446778 () Bool)

(assert (=> b!5586559 (= c!978644 e!3446778)))

(declare-fun res!2370513 () Bool)

(assert (=> b!5586559 (=> (not res!2370513) (not e!3446778))))

(assert (=> b!5586559 (= res!2370513 ((_ is Concat!24418) (h!69342 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun e!3446783 () (InoxSet Context!9914))

(declare-fun e!3446779 () (InoxSet Context!9914))

(assert (=> b!5586559 (= e!3446783 e!3446779)))

(declare-fun call!418152 () List!63018)

(declare-fun bm!418142 () Bool)

(declare-fun call!418151 () (InoxSet Context!9914))

(declare-fun c!978643 () Bool)

(assert (=> bm!418142 (= call!418151 (derivationStepZipperDown!915 (ite c!978643 (regOne!31659 (h!69342 (exprs!5457 (h!69343 zl!343)))) (regOne!31658 (h!69342 (exprs!5457 (h!69343 zl!343))))) (ite c!978643 lt!2254638 (Context!9915 call!418152)) (h!69344 s!2326)))))

(declare-fun bm!418143 () Bool)

(declare-fun c!978641 () Bool)

(assert (=> bm!418143 (= call!418152 ($colon$colon!1636 (exprs!5457 lt!2254638) (ite (or c!978644 c!978641) (regTwo!31658 (h!69342 (exprs!5457 (h!69343 zl!343)))) (h!69342 (exprs!5457 (h!69343 zl!343))))))))

(declare-fun b!5586560 () Bool)

(declare-fun c!978640 () Bool)

(assert (=> b!5586560 (= c!978640 ((_ is Star!15573) (h!69342 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun e!3446782 () (InoxSet Context!9914))

(declare-fun e!3446780 () (InoxSet Context!9914))

(assert (=> b!5586560 (= e!3446782 e!3446780)))

(declare-fun b!5586561 () Bool)

(declare-fun call!418148 () (InoxSet Context!9914))

(assert (=> b!5586561 (= e!3446779 ((_ map or) call!418151 call!418148))))

(declare-fun b!5586562 () Bool)

(assert (=> b!5586562 (= e!3446778 (nullable!5605 (regOne!31658 (h!69342 (exprs!5457 (h!69343 zl!343))))))))

(declare-fun b!5586563 () Bool)

(declare-fun call!418150 () (InoxSet Context!9914))

(assert (=> b!5586563 (= e!3446780 call!418150)))

(declare-fun b!5586564 () Bool)

(declare-fun e!3446781 () (InoxSet Context!9914))

(assert (=> b!5586564 (= e!3446781 e!3446783)))

(assert (=> b!5586564 (= c!978643 ((_ is Union!15573) (h!69342 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun b!5586565 () Bool)

(assert (=> b!5586565 (= e!3446781 (store ((as const (Array Context!9914 Bool)) false) lt!2254638 true))))

(declare-fun bm!418144 () Bool)

(declare-fun call!418147 () (InoxSet Context!9914))

(assert (=> bm!418144 (= call!418148 call!418147)))

(declare-fun b!5586566 () Bool)

(assert (=> b!5586566 (= e!3446780 ((as const (Array Context!9914 Bool)) false))))

(declare-fun b!5586567 () Bool)

(assert (=> b!5586567 (= e!3446782 call!418150)))

(declare-fun bm!418146 () Bool)

(assert (=> bm!418146 (= call!418150 call!418148)))

(declare-fun b!5586568 () Bool)

(assert (=> b!5586568 (= e!3446779 e!3446782)))

(assert (=> b!5586568 (= c!978641 ((_ is Concat!24418) (h!69342 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun bm!418147 () Bool)

(declare-fun call!418149 () List!63018)

(assert (=> bm!418147 (= call!418149 call!418152)))

(declare-fun b!5586569 () Bool)

(assert (=> b!5586569 (= e!3446783 ((_ map or) call!418151 call!418147))))

(declare-fun d!1765774 () Bool)

(declare-fun c!978642 () Bool)

(assert (=> d!1765774 (= c!978642 (and ((_ is ElementMatch!15573) (h!69342 (exprs!5457 (h!69343 zl!343)))) (= (c!978446 (h!69342 (exprs!5457 (h!69343 zl!343)))) (h!69344 s!2326))))))

(assert (=> d!1765774 (= (derivationStepZipperDown!915 (h!69342 (exprs!5457 (h!69343 zl!343))) lt!2254638 (h!69344 s!2326)) e!3446781)))

(declare-fun bm!418145 () Bool)

(assert (=> bm!418145 (= call!418147 (derivationStepZipperDown!915 (ite c!978643 (regTwo!31659 (h!69342 (exprs!5457 (h!69343 zl!343)))) (ite c!978644 (regTwo!31658 (h!69342 (exprs!5457 (h!69343 zl!343)))) (ite c!978641 (regOne!31658 (h!69342 (exprs!5457 (h!69343 zl!343)))) (reg!15902 (h!69342 (exprs!5457 (h!69343 zl!343))))))) (ite (or c!978643 c!978644) lt!2254638 (Context!9915 call!418149)) (h!69344 s!2326)))))

(assert (= (and d!1765774 c!978642) b!5586565))

(assert (= (and d!1765774 (not c!978642)) b!5586564))

(assert (= (and b!5586564 c!978643) b!5586569))

(assert (= (and b!5586564 (not c!978643)) b!5586559))

(assert (= (and b!5586559 res!2370513) b!5586562))

(assert (= (and b!5586559 c!978644) b!5586561))

(assert (= (and b!5586559 (not c!978644)) b!5586568))

(assert (= (and b!5586568 c!978641) b!5586567))

(assert (= (and b!5586568 (not c!978641)) b!5586560))

(assert (= (and b!5586560 c!978640) b!5586563))

(assert (= (and b!5586560 (not c!978640)) b!5586566))

(assert (= (or b!5586567 b!5586563) bm!418147))

(assert (= (or b!5586567 b!5586563) bm!418146))

(assert (= (or b!5586561 bm!418147) bm!418143))

(assert (= (or b!5586561 bm!418146) bm!418144))

(assert (= (or b!5586569 bm!418144) bm!418145))

(assert (= (or b!5586569 b!5586561) bm!418142))

(declare-fun m!6567446 () Bool)

(assert (=> b!5586562 m!6567446))

(assert (=> b!5586565 m!6567426))

(declare-fun m!6567448 () Bool)

(assert (=> bm!418142 m!6567448))

(declare-fun m!6567450 () Bool)

(assert (=> bm!418143 m!6567450))

(declare-fun m!6567452 () Bool)

(assert (=> bm!418145 m!6567452))

(assert (=> b!5585923 d!1765774))

(declare-fun d!1765776 () Bool)

(assert (=> d!1765776 (= (nullable!5605 (h!69342 (exprs!5457 (h!69343 zl!343)))) (nullableFct!1714 (h!69342 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun bs!1291986 () Bool)

(assert (= bs!1291986 d!1765776))

(declare-fun m!6567454 () Bool)

(assert (=> bs!1291986 m!6567454))

(assert (=> b!5585923 d!1765776))

(declare-fun b!5586570 () Bool)

(declare-fun e!3446786 () (InoxSet Context!9914))

(declare-fun call!418153 () (InoxSet Context!9914))

(assert (=> b!5586570 (= e!3446786 call!418153)))

(declare-fun d!1765778 () Bool)

(declare-fun c!978646 () Bool)

(declare-fun e!3446784 () Bool)

(assert (=> d!1765778 (= c!978646 e!3446784)))

(declare-fun res!2370514 () Bool)

(assert (=> d!1765778 (=> (not res!2370514) (not e!3446784))))

(assert (=> d!1765778 (= res!2370514 ((_ is Cons!62894) (exprs!5457 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343))))))))))

(declare-fun e!3446785 () (InoxSet Context!9914))

(assert (=> d!1765778 (= (derivationStepZipperUp!841 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343))))) (h!69344 s!2326)) e!3446785)))

(declare-fun b!5586571 () Bool)

(assert (=> b!5586571 (= e!3446785 e!3446786)))

(declare-fun c!978645 () Bool)

(assert (=> b!5586571 (= c!978645 ((_ is Cons!62894) (exprs!5457 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343))))))))))

(declare-fun b!5586572 () Bool)

(assert (=> b!5586572 (= e!3446785 ((_ map or) call!418153 (derivationStepZipperUp!841 (Context!9915 (t!376293 (exprs!5457 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343)))))))) (h!69344 s!2326))))))

(declare-fun b!5586573 () Bool)

(assert (=> b!5586573 (= e!3446784 (nullable!5605 (h!69342 (exprs!5457 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343)))))))))))

(declare-fun bm!418148 () Bool)

(assert (=> bm!418148 (= call!418153 (derivationStepZipperDown!915 (h!69342 (exprs!5457 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343))))))) (Context!9915 (t!376293 (exprs!5457 (Context!9915 (Cons!62894 (h!69342 (exprs!5457 (h!69343 zl!343))) (t!376293 (exprs!5457 (h!69343 zl!343)))))))) (h!69344 s!2326)))))

(declare-fun b!5586574 () Bool)

(assert (=> b!5586574 (= e!3446786 ((as const (Array Context!9914 Bool)) false))))

(assert (= (and d!1765778 res!2370514) b!5586573))

(assert (= (and d!1765778 c!978646) b!5586572))

(assert (= (and d!1765778 (not c!978646)) b!5586571))

(assert (= (and b!5586571 c!978645) b!5586570))

(assert (= (and b!5586571 (not c!978645)) b!5586574))

(assert (= (or b!5586572 b!5586570) bm!418148))

(declare-fun m!6567456 () Bool)

(assert (=> b!5586572 m!6567456))

(declare-fun m!6567458 () Bool)

(assert (=> b!5586573 m!6567458))

(declare-fun m!6567460 () Bool)

(assert (=> bm!418148 m!6567460))

(assert (=> b!5585923 d!1765778))

(declare-fun d!1765780 () Bool)

(assert (=> d!1765780 (= (flatMap!1186 z!1189 lambda!299704) (dynLambda!24596 lambda!299704 (h!69343 zl!343)))))

(declare-fun lt!2254737 () Unit!155682)

(assert (=> d!1765780 (= lt!2254737 (choose!42350 z!1189 (h!69343 zl!343) lambda!299704))))

(assert (=> d!1765780 (= z!1189 (store ((as const (Array Context!9914 Bool)) false) (h!69343 zl!343) true))))

(assert (=> d!1765780 (= (lemmaFlatMapOnSingletonSet!718 z!1189 (h!69343 zl!343) lambda!299704) lt!2254737)))

(declare-fun b_lambda!211699 () Bool)

(assert (=> (not b_lambda!211699) (not d!1765780)))

(declare-fun bs!1291987 () Bool)

(assert (= bs!1291987 d!1765780))

(assert (=> bs!1291987 m!6566952))

(declare-fun m!6567462 () Bool)

(assert (=> bs!1291987 m!6567462))

(declare-fun m!6567464 () Bool)

(assert (=> bs!1291987 m!6567464))

(declare-fun m!6567466 () Bool)

(assert (=> bs!1291987 m!6567466))

(assert (=> b!5585923 d!1765780))

(declare-fun b!5586575 () Bool)

(declare-fun e!3446789 () (InoxSet Context!9914))

(declare-fun call!418154 () (InoxSet Context!9914))

(assert (=> b!5586575 (= e!3446789 call!418154)))

(declare-fun d!1765782 () Bool)

(declare-fun c!978648 () Bool)

(declare-fun e!3446787 () Bool)

(assert (=> d!1765782 (= c!978648 e!3446787)))

(declare-fun res!2370515 () Bool)

(assert (=> d!1765782 (=> (not res!2370515) (not e!3446787))))

(assert (=> d!1765782 (= res!2370515 ((_ is Cons!62894) (exprs!5457 (h!69343 zl!343))))))

(declare-fun e!3446788 () (InoxSet Context!9914))

(assert (=> d!1765782 (= (derivationStepZipperUp!841 (h!69343 zl!343) (h!69344 s!2326)) e!3446788)))

(declare-fun b!5586576 () Bool)

(assert (=> b!5586576 (= e!3446788 e!3446789)))

(declare-fun c!978647 () Bool)

(assert (=> b!5586576 (= c!978647 ((_ is Cons!62894) (exprs!5457 (h!69343 zl!343))))))

(declare-fun b!5586577 () Bool)

(assert (=> b!5586577 (= e!3446788 ((_ map or) call!418154 (derivationStepZipperUp!841 (Context!9915 (t!376293 (exprs!5457 (h!69343 zl!343)))) (h!69344 s!2326))))))

(declare-fun b!5586578 () Bool)

(assert (=> b!5586578 (= e!3446787 (nullable!5605 (h!69342 (exprs!5457 (h!69343 zl!343)))))))

(declare-fun bm!418149 () Bool)

(assert (=> bm!418149 (= call!418154 (derivationStepZipperDown!915 (h!69342 (exprs!5457 (h!69343 zl!343))) (Context!9915 (t!376293 (exprs!5457 (h!69343 zl!343)))) (h!69344 s!2326)))))

(declare-fun b!5586579 () Bool)

(assert (=> b!5586579 (= e!3446789 ((as const (Array Context!9914 Bool)) false))))

(assert (= (and d!1765782 res!2370515) b!5586578))

(assert (= (and d!1765782 c!978648) b!5586577))

(assert (= (and d!1765782 (not c!978648)) b!5586576))

(assert (= (and b!5586576 c!978647) b!5586575))

(assert (= (and b!5586576 (not c!978647)) b!5586579))

(assert (= (or b!5586577 b!5586575) bm!418149))

(declare-fun m!6567468 () Bool)

(assert (=> b!5586577 m!6567468))

(assert (=> b!5586578 m!6566958))

(declare-fun m!6567470 () Bool)

(assert (=> bm!418149 m!6567470))

(assert (=> b!5585923 d!1765782))

(declare-fun d!1765784 () Bool)

(assert (=> d!1765784 (= (flatMap!1186 z!1189 lambda!299704) (choose!42351 z!1189 lambda!299704))))

(declare-fun bs!1291988 () Bool)

(assert (= bs!1291988 d!1765784))

(declare-fun m!6567472 () Bool)

(assert (=> bs!1291988 m!6567472))

(assert (=> b!5585923 d!1765784))

(declare-fun b!5586580 () Bool)

(declare-fun e!3446792 () (InoxSet Context!9914))

(declare-fun call!418155 () (InoxSet Context!9914))

(assert (=> b!5586580 (= e!3446792 call!418155)))

(declare-fun d!1765786 () Bool)

(declare-fun c!978650 () Bool)

(declare-fun e!3446790 () Bool)

(assert (=> d!1765786 (= c!978650 e!3446790)))

(declare-fun res!2370516 () Bool)

(assert (=> d!1765786 (=> (not res!2370516) (not e!3446790))))

(assert (=> d!1765786 (= res!2370516 ((_ is Cons!62894) (exprs!5457 lt!2254638)))))

(declare-fun e!3446791 () (InoxSet Context!9914))

(assert (=> d!1765786 (= (derivationStepZipperUp!841 lt!2254638 (h!69344 s!2326)) e!3446791)))

(declare-fun b!5586581 () Bool)

(assert (=> b!5586581 (= e!3446791 e!3446792)))

(declare-fun c!978649 () Bool)

(assert (=> b!5586581 (= c!978649 ((_ is Cons!62894) (exprs!5457 lt!2254638)))))

(declare-fun b!5586582 () Bool)

(assert (=> b!5586582 (= e!3446791 ((_ map or) call!418155 (derivationStepZipperUp!841 (Context!9915 (t!376293 (exprs!5457 lt!2254638))) (h!69344 s!2326))))))

(declare-fun b!5586583 () Bool)

(assert (=> b!5586583 (= e!3446790 (nullable!5605 (h!69342 (exprs!5457 lt!2254638))))))

(declare-fun bm!418150 () Bool)

(assert (=> bm!418150 (= call!418155 (derivationStepZipperDown!915 (h!69342 (exprs!5457 lt!2254638)) (Context!9915 (t!376293 (exprs!5457 lt!2254638))) (h!69344 s!2326)))))

(declare-fun b!5586584 () Bool)

(assert (=> b!5586584 (= e!3446792 ((as const (Array Context!9914 Bool)) false))))

(assert (= (and d!1765786 res!2370516) b!5586583))

(assert (= (and d!1765786 c!978650) b!5586582))

(assert (= (and d!1765786 (not c!978650)) b!5586581))

(assert (= (and b!5586581 c!978649) b!5586580))

(assert (= (and b!5586581 (not c!978649)) b!5586584))

(assert (= (or b!5586582 b!5586580) bm!418150))

(declare-fun m!6567474 () Bool)

(assert (=> b!5586582 m!6567474))

(declare-fun m!6567476 () Bool)

(assert (=> b!5586583 m!6567476))

(declare-fun m!6567478 () Bool)

(assert (=> bm!418150 m!6567478))

(assert (=> b!5585923 d!1765786))

(assert (=> b!5585903 d!1765752))

(declare-fun b!5586603 () Bool)

(declare-fun e!3446808 () Bool)

(declare-fun e!3446813 () Bool)

(assert (=> b!5586603 (= e!3446808 e!3446813)))

(declare-fun res!2370530 () Bool)

(assert (=> b!5586603 (=> (not res!2370530) (not e!3446813))))

(declare-fun call!418163 () Bool)

(assert (=> b!5586603 (= res!2370530 call!418163)))

(declare-fun b!5586604 () Bool)

(declare-fun call!418162 () Bool)

(assert (=> b!5586604 (= e!3446813 call!418162)))

(declare-fun b!5586605 () Bool)

(declare-fun e!3446807 () Bool)

(declare-fun call!418164 () Bool)

(assert (=> b!5586605 (= e!3446807 call!418164)))

(declare-fun b!5586606 () Bool)

(declare-fun e!3446811 () Bool)

(assert (=> b!5586606 (= e!3446811 e!3446807)))

(declare-fun res!2370527 () Bool)

(assert (=> b!5586606 (= res!2370527 (not (nullable!5605 (reg!15902 r!7292))))))

(assert (=> b!5586606 (=> (not res!2370527) (not e!3446807))))

(declare-fun b!5586607 () Bool)

(declare-fun e!3446812 () Bool)

(assert (=> b!5586607 (= e!3446812 e!3446811)))

(declare-fun c!978656 () Bool)

(assert (=> b!5586607 (= c!978656 ((_ is Star!15573) r!7292))))

(declare-fun bm!418158 () Bool)

(assert (=> bm!418158 (= call!418162 call!418164)))

(declare-fun b!5586608 () Bool)

(declare-fun e!3446809 () Bool)

(assert (=> b!5586608 (= e!3446811 e!3446809)))

(declare-fun c!978655 () Bool)

(assert (=> b!5586608 (= c!978655 ((_ is Union!15573) r!7292))))

(declare-fun bm!418157 () Bool)

(assert (=> bm!418157 (= call!418164 (validRegex!7309 (ite c!978656 (reg!15902 r!7292) (ite c!978655 (regTwo!31659 r!7292) (regTwo!31658 r!7292)))))))

(declare-fun d!1765788 () Bool)

(declare-fun res!2370531 () Bool)

(assert (=> d!1765788 (=> res!2370531 e!3446812)))

(assert (=> d!1765788 (= res!2370531 ((_ is ElementMatch!15573) r!7292))))

(assert (=> d!1765788 (= (validRegex!7309 r!7292) e!3446812)))

(declare-fun bm!418159 () Bool)

(assert (=> bm!418159 (= call!418163 (validRegex!7309 (ite c!978655 (regOne!31659 r!7292) (regOne!31658 r!7292))))))

(declare-fun b!5586609 () Bool)

(declare-fun e!3446810 () Bool)

(assert (=> b!5586609 (= e!3446810 call!418162)))

(declare-fun b!5586610 () Bool)

(declare-fun res!2370529 () Bool)

(assert (=> b!5586610 (=> res!2370529 e!3446808)))

(assert (=> b!5586610 (= res!2370529 (not ((_ is Concat!24418) r!7292)))))

(assert (=> b!5586610 (= e!3446809 e!3446808)))

(declare-fun b!5586611 () Bool)

(declare-fun res!2370528 () Bool)

(assert (=> b!5586611 (=> (not res!2370528) (not e!3446810))))

(assert (=> b!5586611 (= res!2370528 call!418163)))

(assert (=> b!5586611 (= e!3446809 e!3446810)))

(assert (= (and d!1765788 (not res!2370531)) b!5586607))

(assert (= (and b!5586607 c!978656) b!5586606))

(assert (= (and b!5586607 (not c!978656)) b!5586608))

(assert (= (and b!5586606 res!2370527) b!5586605))

(assert (= (and b!5586608 c!978655) b!5586611))

(assert (= (and b!5586608 (not c!978655)) b!5586610))

(assert (= (and b!5586611 res!2370528) b!5586609))

(assert (= (and b!5586610 (not res!2370529)) b!5586603))

(assert (= (and b!5586603 res!2370530) b!5586604))

(assert (= (or b!5586609 b!5586604) bm!418158))

(assert (= (or b!5586611 b!5586603) bm!418159))

(assert (= (or b!5586605 bm!418158) bm!418157))

(declare-fun m!6567480 () Bool)

(assert (=> b!5586606 m!6567480))

(declare-fun m!6567482 () Bool)

(assert (=> bm!418157 m!6567482))

(declare-fun m!6567484 () Bool)

(assert (=> bm!418159 m!6567484))

(assert (=> start!580202 d!1765788))

(declare-fun b!5586630 () Bool)

(declare-fun e!3446824 () Option!15582)

(assert (=> b!5586630 (= e!3446824 None!15581)))

(declare-fun b!5586631 () Bool)

(declare-fun lt!2254744 () Unit!155682)

(declare-fun lt!2254745 () Unit!155682)

(assert (=> b!5586631 (= lt!2254744 lt!2254745)))

(declare-fun ++!13802 (List!63020 List!63020) List!63020)

(assert (=> b!5586631 (= (++!13802 (++!13802 Nil!62896 (Cons!62896 (h!69344 s!2326) Nil!62896)) (t!376295 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!1971 (List!63020 C!31416 List!63020 List!63020) Unit!155682)

(assert (=> b!5586631 (= lt!2254745 (lemmaMoveElementToOtherListKeepsConcatEq!1971 Nil!62896 (h!69344 s!2326) (t!376295 s!2326) s!2326))))

(assert (=> b!5586631 (= e!3446824 (findConcatSeparation!1996 (regOne!31658 r!7292) (regTwo!31658 r!7292) (++!13802 Nil!62896 (Cons!62896 (h!69344 s!2326) Nil!62896)) (t!376295 s!2326) s!2326))))

(declare-fun b!5586632 () Bool)

(declare-fun e!3446826 () Bool)

(assert (=> b!5586632 (= e!3446826 (matchR!7758 (regTwo!31658 r!7292) s!2326))))

(declare-fun b!5586633 () Bool)

(declare-fun e!3446827 () Bool)

(declare-fun lt!2254746 () Option!15582)

(declare-fun get!21656 (Option!15582) tuple2!65340)

(assert (=> b!5586633 (= e!3446827 (= (++!13802 (_1!35973 (get!21656 lt!2254746)) (_2!35973 (get!21656 lt!2254746))) s!2326))))

(declare-fun b!5586634 () Bool)

(declare-fun e!3446825 () Bool)

(assert (=> b!5586634 (= e!3446825 (not (isDefined!12285 lt!2254746)))))

(declare-fun b!5586635 () Bool)

(declare-fun e!3446828 () Option!15582)

(assert (=> b!5586635 (= e!3446828 e!3446824)))

(declare-fun c!978662 () Bool)

(assert (=> b!5586635 (= c!978662 ((_ is Nil!62896) s!2326))))

(declare-fun d!1765790 () Bool)

(assert (=> d!1765790 e!3446825))

(declare-fun res!2370542 () Bool)

(assert (=> d!1765790 (=> res!2370542 e!3446825)))

(assert (=> d!1765790 (= res!2370542 e!3446827)))

(declare-fun res!2370545 () Bool)

(assert (=> d!1765790 (=> (not res!2370545) (not e!3446827))))

(assert (=> d!1765790 (= res!2370545 (isDefined!12285 lt!2254746))))

(assert (=> d!1765790 (= lt!2254746 e!3446828)))

(declare-fun c!978661 () Bool)

(assert (=> d!1765790 (= c!978661 e!3446826)))

(declare-fun res!2370546 () Bool)

(assert (=> d!1765790 (=> (not res!2370546) (not e!3446826))))

(assert (=> d!1765790 (= res!2370546 (matchR!7758 (regOne!31658 r!7292) Nil!62896))))

(assert (=> d!1765790 (validRegex!7309 (regOne!31658 r!7292))))

(assert (=> d!1765790 (= (findConcatSeparation!1996 (regOne!31658 r!7292) (regTwo!31658 r!7292) Nil!62896 s!2326 s!2326) lt!2254746)))

(declare-fun b!5586636 () Bool)

(declare-fun res!2370543 () Bool)

(assert (=> b!5586636 (=> (not res!2370543) (not e!3446827))))

(assert (=> b!5586636 (= res!2370543 (matchR!7758 (regTwo!31658 r!7292) (_2!35973 (get!21656 lt!2254746))))))

(declare-fun b!5586637 () Bool)

(declare-fun res!2370544 () Bool)

(assert (=> b!5586637 (=> (not res!2370544) (not e!3446827))))

(assert (=> b!5586637 (= res!2370544 (matchR!7758 (regOne!31658 r!7292) (_1!35973 (get!21656 lt!2254746))))))

(declare-fun b!5586638 () Bool)

(assert (=> b!5586638 (= e!3446828 (Some!15581 (tuple2!65341 Nil!62896 s!2326)))))

(assert (= (and d!1765790 res!2370546) b!5586632))

(assert (= (and d!1765790 c!978661) b!5586638))

(assert (= (and d!1765790 (not c!978661)) b!5586635))

(assert (= (and b!5586635 c!978662) b!5586630))

(assert (= (and b!5586635 (not c!978662)) b!5586631))

(assert (= (and d!1765790 res!2370545) b!5586637))

(assert (= (and b!5586637 res!2370544) b!5586636))

(assert (= (and b!5586636 res!2370543) b!5586633))

(assert (= (and d!1765790 (not res!2370542)) b!5586634))

(declare-fun m!6567486 () Bool)

(assert (=> b!5586636 m!6567486))

(declare-fun m!6567488 () Bool)

(assert (=> b!5586636 m!6567488))

(declare-fun m!6567490 () Bool)

(assert (=> b!5586632 m!6567490))

(assert (=> b!5586637 m!6567486))

(declare-fun m!6567492 () Bool)

(assert (=> b!5586637 m!6567492))

(assert (=> b!5586633 m!6567486))

(declare-fun m!6567494 () Bool)

(assert (=> b!5586633 m!6567494))

(declare-fun m!6567496 () Bool)

(assert (=> b!5586631 m!6567496))

(assert (=> b!5586631 m!6567496))

(declare-fun m!6567498 () Bool)

(assert (=> b!5586631 m!6567498))

(declare-fun m!6567500 () Bool)

(assert (=> b!5586631 m!6567500))

(assert (=> b!5586631 m!6567496))

(declare-fun m!6567502 () Bool)

(assert (=> b!5586631 m!6567502))

(declare-fun m!6567504 () Bool)

(assert (=> b!5586634 m!6567504))

(assert (=> d!1765790 m!6567504))

(declare-fun m!6567506 () Bool)

(assert (=> d!1765790 m!6567506))

(declare-fun m!6567508 () Bool)

(assert (=> d!1765790 m!6567508))

(assert (=> b!5585924 d!1765790))

(declare-fun d!1765792 () Bool)

(declare-fun choose!42354 (Int) Bool)

(assert (=> d!1765792 (= (Exists!2673 lambda!299702) (choose!42354 lambda!299702))))

(declare-fun bs!1291989 () Bool)

(assert (= bs!1291989 d!1765792))

(declare-fun m!6567510 () Bool)

(assert (=> bs!1291989 m!6567510))

(assert (=> b!5585924 d!1765792))

(declare-fun d!1765794 () Bool)

(assert (=> d!1765794 (= (Exists!2673 lambda!299703) (choose!42354 lambda!299703))))

(declare-fun bs!1291990 () Bool)

(assert (= bs!1291990 d!1765794))

(declare-fun m!6567512 () Bool)

(assert (=> bs!1291990 m!6567512))

(assert (=> b!5585924 d!1765794))

(declare-fun bs!1291991 () Bool)

(declare-fun d!1765796 () Bool)

(assert (= bs!1291991 (and d!1765796 b!5585924)))

(declare-fun lambda!299754 () Int)

(assert (=> bs!1291991 (= lambda!299754 lambda!299702)))

(assert (=> bs!1291991 (not (= lambda!299754 lambda!299703))))

(declare-fun bs!1291992 () Bool)

(assert (= bs!1291992 (and d!1765796 b!5586131)))

(assert (=> bs!1291992 (not (= lambda!299754 lambda!299718))))

(declare-fun bs!1291993 () Bool)

(assert (= bs!1291993 (and d!1765796 b!5586125)))

(assert (=> bs!1291993 (not (= lambda!299754 lambda!299722))))

(assert (=> d!1765796 true))

(assert (=> d!1765796 true))

(assert (=> d!1765796 true))

(assert (=> d!1765796 (= (isDefined!12285 (findConcatSeparation!1996 (regOne!31658 r!7292) (regTwo!31658 r!7292) Nil!62896 s!2326 s!2326)) (Exists!2673 lambda!299754))))

(declare-fun lt!2254749 () Unit!155682)

(declare-fun choose!42355 (Regex!15573 Regex!15573 List!63020) Unit!155682)

(assert (=> d!1765796 (= lt!2254749 (choose!42355 (regOne!31658 r!7292) (regTwo!31658 r!7292) s!2326))))

(assert (=> d!1765796 (validRegex!7309 (regOne!31658 r!7292))))

(assert (=> d!1765796 (= (lemmaFindConcatSeparationEquivalentToExists!1760 (regOne!31658 r!7292) (regTwo!31658 r!7292) s!2326) lt!2254749)))

(declare-fun bs!1291994 () Bool)

(assert (= bs!1291994 d!1765796))

(declare-fun m!6567514 () Bool)

(assert (=> bs!1291994 m!6567514))

(assert (=> bs!1291994 m!6566916))

(assert (=> bs!1291994 m!6567508))

(declare-fun m!6567516 () Bool)

(assert (=> bs!1291994 m!6567516))

(assert (=> bs!1291994 m!6566916))

(assert (=> bs!1291994 m!6566918))

(assert (=> b!5585924 d!1765796))

(declare-fun bs!1291995 () Bool)

(declare-fun d!1765798 () Bool)

(assert (= bs!1291995 (and d!1765798 b!5585924)))

(declare-fun lambda!299759 () Int)

(assert (=> bs!1291995 (not (= lambda!299759 lambda!299703))))

(declare-fun bs!1291996 () Bool)

(assert (= bs!1291996 (and d!1765798 b!5586131)))

(assert (=> bs!1291996 (not (= lambda!299759 lambda!299718))))

(declare-fun bs!1291997 () Bool)

(assert (= bs!1291997 (and d!1765798 b!5586125)))

(assert (=> bs!1291997 (not (= lambda!299759 lambda!299722))))

(declare-fun bs!1291998 () Bool)

(assert (= bs!1291998 (and d!1765798 d!1765796)))

(assert (=> bs!1291998 (= lambda!299759 lambda!299754)))

(assert (=> bs!1291995 (= lambda!299759 lambda!299702)))

(assert (=> d!1765798 true))

(assert (=> d!1765798 true))

(assert (=> d!1765798 true))

(declare-fun lambda!299760 () Int)

(assert (=> bs!1291995 (= lambda!299760 lambda!299703)))

(assert (=> bs!1291996 (not (= lambda!299760 lambda!299718))))

(assert (=> bs!1291997 (= lambda!299760 lambda!299722)))

(declare-fun bs!1291999 () Bool)

(assert (= bs!1291999 d!1765798))

(assert (=> bs!1291999 (not (= lambda!299760 lambda!299759))))

(assert (=> bs!1291998 (not (= lambda!299760 lambda!299754))))

(assert (=> bs!1291995 (not (= lambda!299760 lambda!299702))))

(assert (=> d!1765798 true))

(assert (=> d!1765798 true))

(assert (=> d!1765798 true))

(assert (=> d!1765798 (= (Exists!2673 lambda!299759) (Exists!2673 lambda!299760))))

(declare-fun lt!2254752 () Unit!155682)

(declare-fun choose!42356 (Regex!15573 Regex!15573 List!63020) Unit!155682)

(assert (=> d!1765798 (= lt!2254752 (choose!42356 (regOne!31658 r!7292) (regTwo!31658 r!7292) s!2326))))

(assert (=> d!1765798 (validRegex!7309 (regOne!31658 r!7292))))

(assert (=> d!1765798 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1302 (regOne!31658 r!7292) (regTwo!31658 r!7292) s!2326) lt!2254752)))

(declare-fun m!6567518 () Bool)

(assert (=> bs!1291999 m!6567518))

(declare-fun m!6567520 () Bool)

(assert (=> bs!1291999 m!6567520))

(declare-fun m!6567522 () Bool)

(assert (=> bs!1291999 m!6567522))

(assert (=> bs!1291999 m!6567508))

(assert (=> b!5585924 d!1765798))

(declare-fun d!1765800 () Bool)

(declare-fun isEmpty!34711 (Option!15582) Bool)

(assert (=> d!1765800 (= (isDefined!12285 (findConcatSeparation!1996 (regOne!31658 r!7292) (regTwo!31658 r!7292) Nil!62896 s!2326 s!2326)) (not (isEmpty!34711 (findConcatSeparation!1996 (regOne!31658 r!7292) (regTwo!31658 r!7292) Nil!62896 s!2326 s!2326))))))

(declare-fun bs!1292000 () Bool)

(assert (= bs!1292000 d!1765800))

(assert (=> bs!1292000 m!6566916))

(declare-fun m!6567524 () Bool)

(assert (=> bs!1292000 m!6567524))

(assert (=> b!5585924 d!1765800))

(declare-fun b!5586655 () Bool)

(declare-fun e!3446837 () Bool)

(declare-fun tp!1545374 () Bool)

(declare-fun tp!1545375 () Bool)

(assert (=> b!5586655 (= e!3446837 (and tp!1545374 tp!1545375))))

(assert (=> b!5585922 (= tp!1545309 e!3446837)))

(assert (= (and b!5585922 ((_ is Cons!62894) (exprs!5457 (h!69343 zl!343)))) b!5586655))

(declare-fun b!5586660 () Bool)

(declare-fun e!3446840 () Bool)

(declare-fun tp!1545378 () Bool)

(assert (=> b!5586660 (= e!3446840 (and tp_is_empty!40399 tp!1545378))))

(assert (=> b!5585900 (= tp!1545311 e!3446840)))

(assert (= (and b!5585900 ((_ is Cons!62896) (t!376295 s!2326))) b!5586660))

(declare-fun b!5586674 () Bool)

(declare-fun e!3446843 () Bool)

(declare-fun tp!1545393 () Bool)

(declare-fun tp!1545390 () Bool)

(assert (=> b!5586674 (= e!3446843 (and tp!1545393 tp!1545390))))

(assert (=> b!5585921 (= tp!1545303 e!3446843)))

(declare-fun b!5586671 () Bool)

(assert (=> b!5586671 (= e!3446843 tp_is_empty!40399)))

(declare-fun b!5586673 () Bool)

(declare-fun tp!1545389 () Bool)

(assert (=> b!5586673 (= e!3446843 tp!1545389)))

(declare-fun b!5586672 () Bool)

(declare-fun tp!1545391 () Bool)

(declare-fun tp!1545392 () Bool)

(assert (=> b!5586672 (= e!3446843 (and tp!1545391 tp!1545392))))

(assert (= (and b!5585921 ((_ is ElementMatch!15573) (reg!15902 r!7292))) b!5586671))

(assert (= (and b!5585921 ((_ is Concat!24418) (reg!15902 r!7292))) b!5586672))

(assert (= (and b!5585921 ((_ is Star!15573) (reg!15902 r!7292))) b!5586673))

(assert (= (and b!5585921 ((_ is Union!15573) (reg!15902 r!7292))) b!5586674))

(declare-fun b!5586682 () Bool)

(declare-fun e!3446849 () Bool)

(declare-fun tp!1545398 () Bool)

(assert (=> b!5586682 (= e!3446849 tp!1545398)))

(declare-fun tp!1545399 () Bool)

(declare-fun e!3446848 () Bool)

(declare-fun b!5586681 () Bool)

(assert (=> b!5586681 (= e!3446848 (and (inv!82179 (h!69343 (t!376294 zl!343))) e!3446849 tp!1545399))))

(assert (=> b!5585915 (= tp!1545307 e!3446848)))

(assert (= b!5586681 b!5586682))

(assert (= (and b!5585915 ((_ is Cons!62895) (t!376294 zl!343))) b!5586681))

(declare-fun m!6567526 () Bool)

(assert (=> b!5586681 m!6567526))

(declare-fun condSetEmpty!37213 () Bool)

(assert (=> setNonEmpty!37207 (= condSetEmpty!37213 (= setRest!37207 ((as const (Array Context!9914 Bool)) false)))))

(declare-fun setRes!37213 () Bool)

(assert (=> setNonEmpty!37207 (= tp!1545306 setRes!37213)))

(declare-fun setIsEmpty!37213 () Bool)

(assert (=> setIsEmpty!37213 setRes!37213))

(declare-fun e!3446852 () Bool)

(declare-fun setElem!37213 () Context!9914)

(declare-fun setNonEmpty!37213 () Bool)

(declare-fun tp!1545405 () Bool)

(assert (=> setNonEmpty!37213 (= setRes!37213 (and tp!1545405 (inv!82179 setElem!37213) e!3446852))))

(declare-fun setRest!37213 () (InoxSet Context!9914))

(assert (=> setNonEmpty!37213 (= setRest!37207 ((_ map or) (store ((as const (Array Context!9914 Bool)) false) setElem!37213 true) setRest!37213))))

(declare-fun b!5586687 () Bool)

(declare-fun tp!1545404 () Bool)

(assert (=> b!5586687 (= e!3446852 tp!1545404)))

(assert (= (and setNonEmpty!37207 condSetEmpty!37213) setIsEmpty!37213))

(assert (= (and setNonEmpty!37207 (not condSetEmpty!37213)) setNonEmpty!37213))

(assert (= setNonEmpty!37213 b!5586687))

(declare-fun m!6567528 () Bool)

(assert (=> setNonEmpty!37213 m!6567528))

(declare-fun b!5586691 () Bool)

(declare-fun e!3446853 () Bool)

(declare-fun tp!1545410 () Bool)

(declare-fun tp!1545407 () Bool)

(assert (=> b!5586691 (= e!3446853 (and tp!1545410 tp!1545407))))

(assert (=> b!5585905 (= tp!1545310 e!3446853)))

(declare-fun b!5586688 () Bool)

(assert (=> b!5586688 (= e!3446853 tp_is_empty!40399)))

(declare-fun b!5586690 () Bool)

(declare-fun tp!1545406 () Bool)

(assert (=> b!5586690 (= e!3446853 tp!1545406)))

(declare-fun b!5586689 () Bool)

(declare-fun tp!1545408 () Bool)

(declare-fun tp!1545409 () Bool)

(assert (=> b!5586689 (= e!3446853 (and tp!1545408 tp!1545409))))

(assert (= (and b!5585905 ((_ is ElementMatch!15573) (regOne!31659 r!7292))) b!5586688))

(assert (= (and b!5585905 ((_ is Concat!24418) (regOne!31659 r!7292))) b!5586689))

(assert (= (and b!5585905 ((_ is Star!15573) (regOne!31659 r!7292))) b!5586690))

(assert (= (and b!5585905 ((_ is Union!15573) (regOne!31659 r!7292))) b!5586691))

(declare-fun b!5586695 () Bool)

(declare-fun e!3446854 () Bool)

(declare-fun tp!1545415 () Bool)

(declare-fun tp!1545412 () Bool)

(assert (=> b!5586695 (= e!3446854 (and tp!1545415 tp!1545412))))

(assert (=> b!5585905 (= tp!1545305 e!3446854)))

(declare-fun b!5586692 () Bool)

(assert (=> b!5586692 (= e!3446854 tp_is_empty!40399)))

(declare-fun b!5586694 () Bool)

(declare-fun tp!1545411 () Bool)

(assert (=> b!5586694 (= e!3446854 tp!1545411)))

(declare-fun b!5586693 () Bool)

(declare-fun tp!1545413 () Bool)

(declare-fun tp!1545414 () Bool)

(assert (=> b!5586693 (= e!3446854 (and tp!1545413 tp!1545414))))

(assert (= (and b!5585905 ((_ is ElementMatch!15573) (regTwo!31659 r!7292))) b!5586692))

(assert (= (and b!5585905 ((_ is Concat!24418) (regTwo!31659 r!7292))) b!5586693))

(assert (= (and b!5585905 ((_ is Star!15573) (regTwo!31659 r!7292))) b!5586694))

(assert (= (and b!5585905 ((_ is Union!15573) (regTwo!31659 r!7292))) b!5586695))

(declare-fun b!5586696 () Bool)

(declare-fun e!3446855 () Bool)

(declare-fun tp!1545416 () Bool)

(declare-fun tp!1545417 () Bool)

(assert (=> b!5586696 (= e!3446855 (and tp!1545416 tp!1545417))))

(assert (=> b!5585908 (= tp!1545308 e!3446855)))

(assert (= (and b!5585908 ((_ is Cons!62894) (exprs!5457 setElem!37207))) b!5586696))

(declare-fun b!5586700 () Bool)

(declare-fun e!3446856 () Bool)

(declare-fun tp!1545422 () Bool)

(declare-fun tp!1545419 () Bool)

(assert (=> b!5586700 (= e!3446856 (and tp!1545422 tp!1545419))))

(assert (=> b!5585914 (= tp!1545302 e!3446856)))

(declare-fun b!5586697 () Bool)

(assert (=> b!5586697 (= e!3446856 tp_is_empty!40399)))

(declare-fun b!5586699 () Bool)

(declare-fun tp!1545418 () Bool)

(assert (=> b!5586699 (= e!3446856 tp!1545418)))

(declare-fun b!5586698 () Bool)

(declare-fun tp!1545420 () Bool)

(declare-fun tp!1545421 () Bool)

(assert (=> b!5586698 (= e!3446856 (and tp!1545420 tp!1545421))))

(assert (= (and b!5585914 ((_ is ElementMatch!15573) (regOne!31658 r!7292))) b!5586697))

(assert (= (and b!5585914 ((_ is Concat!24418) (regOne!31658 r!7292))) b!5586698))

(assert (= (and b!5585914 ((_ is Star!15573) (regOne!31658 r!7292))) b!5586699))

(assert (= (and b!5585914 ((_ is Union!15573) (regOne!31658 r!7292))) b!5586700))

(declare-fun b!5586704 () Bool)

(declare-fun e!3446857 () Bool)

(declare-fun tp!1545427 () Bool)

(declare-fun tp!1545424 () Bool)

(assert (=> b!5586704 (= e!3446857 (and tp!1545427 tp!1545424))))

(assert (=> b!5585914 (= tp!1545304 e!3446857)))

(declare-fun b!5586701 () Bool)

(assert (=> b!5586701 (= e!3446857 tp_is_empty!40399)))

(declare-fun b!5586703 () Bool)

(declare-fun tp!1545423 () Bool)

(assert (=> b!5586703 (= e!3446857 tp!1545423)))

(declare-fun b!5586702 () Bool)

(declare-fun tp!1545425 () Bool)

(declare-fun tp!1545426 () Bool)

(assert (=> b!5586702 (= e!3446857 (and tp!1545425 tp!1545426))))

(assert (= (and b!5585914 ((_ is ElementMatch!15573) (regTwo!31658 r!7292))) b!5586701))

(assert (= (and b!5585914 ((_ is Concat!24418) (regTwo!31658 r!7292))) b!5586702))

(assert (= (and b!5585914 ((_ is Star!15573) (regTwo!31658 r!7292))) b!5586703))

(assert (= (and b!5585914 ((_ is Union!15573) (regTwo!31658 r!7292))) b!5586704))

(declare-fun b_lambda!211701 () Bool)

(assert (= b_lambda!211699 (or b!5585923 b_lambda!211701)))

(declare-fun bs!1292001 () Bool)

(declare-fun d!1765802 () Bool)

(assert (= bs!1292001 (and d!1765802 b!5585923)))

(assert (=> bs!1292001 (= (dynLambda!24596 lambda!299704 (h!69343 zl!343)) (derivationStepZipperUp!841 (h!69343 zl!343) (h!69344 s!2326)))))

(assert (=> bs!1292001 m!6566956))

(assert (=> d!1765780 d!1765802))

(declare-fun b_lambda!211703 () Bool)

(assert (= b_lambda!211695 (or b!5585923 b_lambda!211703)))

(declare-fun bs!1292002 () Bool)

(declare-fun d!1765804 () Bool)

(assert (= bs!1292002 (and d!1765804 b!5585923)))

(assert (=> bs!1292002 (= (dynLambda!24596 lambda!299704 lt!2254659) (derivationStepZipperUp!841 lt!2254659 (h!69344 s!2326)))))

(assert (=> bs!1292002 m!6567000))

(assert (=> d!1765736 d!1765804))

(declare-fun b_lambda!211705 () Bool)

(assert (= b_lambda!211697 (or b!5585923 b_lambda!211705)))

(declare-fun bs!1292003 () Bool)

(declare-fun d!1765806 () Bool)

(assert (= bs!1292003 (and d!1765806 b!5585923)))

(assert (=> bs!1292003 (= (dynLambda!24596 lambda!299704 lt!2254653) (derivationStepZipperUp!841 lt!2254653 (h!69344 s!2326)))))

(assert (=> bs!1292003 m!6566986))

(assert (=> d!1765744 d!1765806))

(check-sat (not d!1765678) (not b!5586479) (not d!1765752) (not b!5586373) (not d!1765736) (not bm!418133) (not b!5586703) (not b!5586498) (not d!1765716) (not b!5586704) (not bs!1292002) (not b!5586698) (not bm!418092) (not d!1765770) (not b!5586660) (not b!5586282) (not b!5586508) (not b!5586631) (not d!1765784) (not b!5586475) (not b!5586505) (not b_lambda!211703) (not b!5586209) (not b!5586694) (not b!5586551) (not b!5586687) (not b!5586396) (not d!1765720) (not bm!418116) (not b!5586637) (not b!5586497) (not b!5586483) (not b!5586512) (not bm!418159) (not d!1765704) (not d!1765756) (not d!1765724) (not b!5586632) (not b!5586672) (not b!5586281) (not b!5586206) (not bm!418117) (not b!5586503) (not d!1765728) (not b!5586393) (not b!5586582) (not b!5586285) (not b!5586507) (not b!5586695) (not b!5586696) (not b!5586673) (not b!5586577) (not b!5586572) (not b!5586682) (not bm!418150) (not d!1765762) (not b!5586634) (not b_lambda!211705) (not d!1765776) (not b!5586700) (not d!1765800) (not d!1765780) (not b!5586202) (not b!5586476) (not bm!418131) (not b!5586210) (not d!1765660) (not b!5586133) (not b!5586395) (not d!1765706) (not b!5586286) (not b!5586506) (not b!5586690) (not b!5586502) (not bm!418142) (not d!1765708) (not b!5586204) (not d!1765764) (not b!5586636) (not b!5586477) (not b!5586283) (not bm!418095) (not d!1765714) (not b!5586681) (not d!1765742) (not bm!418137) (not b!5586573) (not b!5586655) (not bm!418148) (not b!5586674) (not d!1765744) (not d!1765796) (not bm!418157) (not bm!418091) (not bm!418149) (not bm!418139) (not b!5586509) (not b!5586699) (not b_lambda!211701) (not d!1765748) (not b!5586691) (not b!5586540) (not d!1765760) (not bm!418143) (not b!5586606) (not b!5586510) (not b!5586583) (not b!5586397) (not b!5586633) (not bm!418136) (not b!5586392) (not b!5586394) tp_is_empty!40399 (not b!5586513) (not b!5586578) (not setNonEmpty!37213) (not bs!1292001) (not b!5586287) (not b!5586480) (not bm!418130) (not b!5586331) (not b!5586211) (not b!5586514) (not d!1765746) (not d!1765798) (not b!5586323) (not b!5586288) (not d!1765758) (not b!5586702) (not b!5586693) (not b!5586689) (not d!1765794) (not d!1765792) (not b!5586562) (not b!5586511) (not d!1765680) (not b!5586481) (not d!1765772) (not d!1765750) (not bs!1292003) (not d!1765790) (not bm!418145) (not b!5586128))
(check-sat)
