; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!678420 () Bool)

(assert start!678420)

(declare-fun b!7026484 () Bool)

(assert (=> b!7026484 true))

(declare-fun b!7026497 () Bool)

(assert (=> b!7026497 true))

(declare-fun b!7026496 () Bool)

(assert (=> b!7026496 true))

(declare-fun b!7026483 () Bool)

(declare-fun res!2868357 () Bool)

(declare-fun e!4223972 () Bool)

(assert (=> b!7026483 (=> (not res!2868357) (not e!4223972))))

(declare-datatypes ((C!35160 0))(
  ( (C!35161 (val!27282 Int)) )
))
(declare-datatypes ((List!67863 0))(
  ( (Nil!67739) (Cons!67739 (h!74187 C!35160) (t!381622 List!67863)) )
))
(declare-fun s!7408 () List!67863)

(get-info :version)

(assert (=> b!7026483 (= res!2868357 ((_ is Cons!67739) s!7408))))

(declare-fun e!4223963 () Bool)

(assert (=> b!7026484 (= e!4223972 (not e!4223963))))

(declare-fun res!2868350 () Bool)

(assert (=> b!7026484 (=> res!2868350 e!4223963)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17445 0))(
  ( (ElementMatch!17445 (c!1306190 C!35160)) (Concat!26290 (regOne!35402 Regex!17445) (regTwo!35402 Regex!17445)) (EmptyExpr!17445) (Star!17445 (reg!17774 Regex!17445)) (EmptyLang!17445) (Union!17445 (regOne!35403 Regex!17445) (regTwo!35403 Regex!17445)) )
))
(declare-datatypes ((List!67864 0))(
  ( (Nil!67740) (Cons!67740 (h!74188 Regex!17445) (t!381623 List!67864)) )
))
(declare-datatypes ((Context!12882 0))(
  ( (Context!12883 (exprs!6941 List!67864)) )
))
(declare-fun lt!2514864 () (InoxSet Context!12882))

(declare-fun matchZipper!2985 ((InoxSet Context!12882) List!67863) Bool)

(assert (=> b!7026484 (= res!2868350 (not (matchZipper!2985 lt!2514864 s!7408)))))

(declare-fun lt!2514867 () Context!12882)

(assert (=> b!7026484 (= lt!2514864 (store ((as const (Array Context!12882 Bool)) false) lt!2514867 true))))

(declare-fun lt!2514836 () (InoxSet Context!12882))

(declare-fun lambda!413150 () Int)

(declare-fun getWitness!1438 ((InoxSet Context!12882) Int) Context!12882)

(assert (=> b!7026484 (= lt!2514867 (getWitness!1438 lt!2514836 lambda!413150))))

(declare-datatypes ((List!67865 0))(
  ( (Nil!67741) (Cons!67741 (h!74189 Context!12882) (t!381624 List!67865)) )
))
(declare-fun lt!2514853 () List!67865)

(declare-fun exists!3357 (List!67865 Int) Bool)

(assert (=> b!7026484 (exists!3357 lt!2514853 lambda!413150)))

(declare-datatypes ((Unit!161555 0))(
  ( (Unit!161556) )
))
(declare-fun lt!2514834 () Unit!161555)

(declare-fun lemmaZipperMatchesExistsMatchingContext!384 (List!67865 List!67863) Unit!161555)

(assert (=> b!7026484 (= lt!2514834 (lemmaZipperMatchesExistsMatchingContext!384 lt!2514853 s!7408))))

(declare-fun toList!10788 ((InoxSet Context!12882)) List!67865)

(assert (=> b!7026484 (= lt!2514853 (toList!10788 lt!2514836))))

(declare-fun b!7026485 () Bool)

(declare-fun e!4223965 () Bool)

(declare-fun e!4223968 () Bool)

(assert (=> b!7026485 (= e!4223965 e!4223968)))

(declare-fun res!2868351 () Bool)

(assert (=> b!7026485 (=> res!2868351 e!4223968)))

(declare-fun lt!2514844 () (InoxSet Context!12882))

(assert (=> b!7026485 (= res!2868351 (not (= lt!2514844 lt!2514864)))))

(declare-fun lt!2514848 () Context!12882)

(assert (=> b!7026485 (= lt!2514844 (store ((as const (Array Context!12882 Bool)) false) lt!2514848 true))))

(declare-fun lt!2514854 () Context!12882)

(declare-fun lambda!413152 () Int)

(declare-fun lt!2514875 () Unit!161555)

(declare-fun ct2!306 () Context!12882)

(declare-fun lemmaConcatPreservesForall!766 (List!67864 List!67864 Int) Unit!161555)

(assert (=> b!7026485 (= lt!2514875 (lemmaConcatPreservesForall!766 (exprs!6941 lt!2514854) (exprs!6941 ct2!306) lambda!413152))))

(declare-fun b!7026486 () Bool)

(declare-fun e!4223967 () Bool)

(declare-fun lt!2514862 () (InoxSet Context!12882))

(assert (=> b!7026486 (= e!4223967 (not (matchZipper!2985 lt!2514862 (t!381622 s!7408))))))

(declare-fun lt!2514870 () List!67864)

(declare-fun lt!2514843 () Unit!161555)

(assert (=> b!7026486 (= lt!2514843 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun b!7026487 () Bool)

(declare-fun e!4223960 () Bool)

(declare-fun e!4223974 () Bool)

(assert (=> b!7026487 (= e!4223960 e!4223974)))

(declare-fun res!2868346 () Bool)

(assert (=> b!7026487 (=> res!2868346 e!4223974)))

(declare-fun lt!2514835 () (InoxSet Context!12882))

(declare-fun derivationStepZipper!2901 ((InoxSet Context!12882) C!35160) (InoxSet Context!12882))

(assert (=> b!7026487 (= res!2868346 (not (= (derivationStepZipper!2901 lt!2514835 (h!74187 s!7408)) lt!2514862)))))

(declare-fun lt!2514855 () Unit!161555)

(assert (=> b!7026487 (= lt!2514855 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514841 () Unit!161555)

(assert (=> b!7026487 (= lt!2514841 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514873 () Context!12882)

(declare-fun lambda!413153 () Int)

(declare-fun flatMap!2392 ((InoxSet Context!12882) Int) (InoxSet Context!12882))

(declare-fun derivationStepZipperUp!2055 (Context!12882 C!35160) (InoxSet Context!12882))

(assert (=> b!7026487 (= (flatMap!2392 lt!2514835 lambda!413153) (derivationStepZipperUp!2055 lt!2514873 (h!74187 s!7408)))))

(declare-fun lt!2514852 () Unit!161555)

(declare-fun lemmaFlatMapOnSingletonSet!1906 ((InoxSet Context!12882) Context!12882 Int) Unit!161555)

(assert (=> b!7026487 (= lt!2514852 (lemmaFlatMapOnSingletonSet!1906 lt!2514835 lt!2514873 lambda!413153))))

(assert (=> b!7026487 (= lt!2514835 (store ((as const (Array Context!12882 Bool)) false) lt!2514873 true))))

(declare-fun lt!2514851 () Unit!161555)

(assert (=> b!7026487 (= lt!2514851 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514869 () Unit!161555)

(assert (=> b!7026487 (= lt!2514869 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun b!7026488 () Bool)

(declare-fun e!4223964 () Bool)

(declare-fun tp_is_empty!44115 () Bool)

(declare-fun tp!1935594 () Bool)

(assert (=> b!7026488 (= e!4223964 (and tp_is_empty!44115 tp!1935594))))

(declare-fun b!7026489 () Bool)

(declare-fun e!4223969 () Bool)

(assert (=> b!7026489 (= e!4223969 true)))

(declare-fun lt!2514868 () Unit!161555)

(assert (=> b!7026489 (= lt!2514868 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514840 () Unit!161555)

(assert (=> b!7026489 (= lt!2514840 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514842 () Context!12882)

(declare-fun lt!2514845 () (InoxSet Context!12882))

(assert (=> b!7026489 (= (flatMap!2392 lt!2514845 lambda!413153) (derivationStepZipperUp!2055 lt!2514842 (h!74187 s!7408)))))

(declare-fun lt!2514850 () Unit!161555)

(assert (=> b!7026489 (= lt!2514850 (lemmaFlatMapOnSingletonSet!1906 lt!2514845 lt!2514842 lambda!413153))))

(declare-fun lambda!413151 () Int)

(declare-fun map!15735 ((InoxSet Context!12882) Int) (InoxSet Context!12882))

(declare-fun ++!15478 (List!67864 List!67864) List!67864)

(assert (=> b!7026489 (= (map!15735 lt!2514845 lambda!413151) (store ((as const (Array Context!12882 Bool)) false) (Context!12883 (++!15478 lt!2514870 (exprs!6941 ct2!306))) true))))

(declare-fun lt!2514874 () Unit!161555)

(assert (=> b!7026489 (= lt!2514874 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514857 () Unit!161555)

(declare-fun lemmaMapOnSingletonSet!356 ((InoxSet Context!12882) Context!12882 Int) Unit!161555)

(assert (=> b!7026489 (= lt!2514857 (lemmaMapOnSingletonSet!356 lt!2514845 lt!2514842 lambda!413151))))

(assert (=> b!7026489 (= lt!2514845 (store ((as const (Array Context!12882 Bool)) false) lt!2514842 true))))

(declare-fun setNonEmpty!48998 () Bool)

(declare-fun e!4223975 () Bool)

(declare-fun setRes!48998 () Bool)

(declare-fun setElem!48998 () Context!12882)

(declare-fun tp!1935595 () Bool)

(declare-fun inv!86471 (Context!12882) Bool)

(assert (=> setNonEmpty!48998 (= setRes!48998 (and tp!1935595 (inv!86471 setElem!48998) e!4223975))))

(declare-fun z1!570 () (InoxSet Context!12882))

(declare-fun setRest!48998 () (InoxSet Context!12882))

(assert (=> setNonEmpty!48998 (= z1!570 ((_ map or) (store ((as const (Array Context!12882 Bool)) false) setElem!48998 true) setRest!48998))))

(declare-fun b!7026491 () Bool)

(declare-fun e!4223966 () Bool)

(assert (=> b!7026491 (= e!4223966 e!4223960)))

(declare-fun res!2868355 () Bool)

(assert (=> b!7026491 (=> res!2868355 e!4223960)))

(assert (=> b!7026491 (= res!2868355 (not (matchZipper!2985 lt!2514862 (t!381622 s!7408))))))

(declare-fun lt!2514872 () Unit!161555)

(assert (=> b!7026491 (= lt!2514872 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun b!7026492 () Bool)

(declare-fun res!2868348 () Bool)

(declare-fun e!4223962 () Bool)

(assert (=> b!7026492 (=> res!2868348 e!4223962)))

(assert (=> b!7026492 (= res!2868348 (not ((_ is Cons!67740) (exprs!6941 lt!2514854))))))

(declare-fun b!7026493 () Bool)

(declare-fun res!2868349 () Bool)

(assert (=> b!7026493 (=> res!2868349 e!4223962)))

(declare-fun isEmpty!39497 (List!67864) Bool)

(assert (=> b!7026493 (= res!2868349 (isEmpty!39497 (exprs!6941 lt!2514854)))))

(declare-fun b!7026494 () Bool)

(declare-fun e!4223973 () Bool)

(assert (=> b!7026494 (= e!4223962 e!4223973)))

(declare-fun res!2868353 () Bool)

(assert (=> b!7026494 (=> res!2868353 e!4223973)))

(declare-fun nullable!7156 (Regex!17445) Bool)

(assert (=> b!7026494 (= res!2868353 (not (nullable!7156 (h!74188 (exprs!6941 lt!2514854)))))))

(assert (=> b!7026494 (= lt!2514842 (Context!12883 lt!2514870))))

(declare-fun tail!13518 (List!67864) List!67864)

(assert (=> b!7026494 (= lt!2514870 (tail!13518 (exprs!6941 lt!2514854)))))

(declare-fun b!7026495 () Bool)

(declare-fun e!4223961 () Bool)

(assert (=> b!7026495 (= e!4223961 e!4223966)))

(declare-fun res!2868356 () Bool)

(assert (=> b!7026495 (=> res!2868356 e!4223966)))

(assert (=> b!7026495 (= res!2868356 e!4223967)))

(declare-fun res!2868344 () Bool)

(assert (=> b!7026495 (=> (not res!2868344) (not e!4223967))))

(declare-fun lt!2514861 () Bool)

(declare-fun lt!2514856 () Bool)

(assert (=> b!7026495 (= res!2868344 (not (= lt!2514861 lt!2514856)))))

(declare-fun lt!2514866 () (InoxSet Context!12882))

(assert (=> b!7026495 (= lt!2514861 (matchZipper!2985 lt!2514866 (t!381622 s!7408)))))

(declare-fun lt!2514837 () Unit!161555)

(assert (=> b!7026495 (= lt!2514837 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514860 () (InoxSet Context!12882))

(declare-fun e!4223971 () Bool)

(assert (=> b!7026495 (= (matchZipper!2985 lt!2514860 (t!381622 s!7408)) e!4223971)))

(declare-fun res!2868354 () Bool)

(assert (=> b!7026495 (=> res!2868354 e!4223971)))

(assert (=> b!7026495 (= res!2868354 lt!2514856)))

(declare-fun lt!2514865 () (InoxSet Context!12882))

(assert (=> b!7026495 (= lt!2514856 (matchZipper!2985 lt!2514865 (t!381622 s!7408)))))

(declare-fun lt!2514838 () Unit!161555)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1518 ((InoxSet Context!12882) (InoxSet Context!12882) List!67863) Unit!161555)

(assert (=> b!7026495 (= lt!2514838 (lemmaZipperConcatMatchesSameAsBothZippers!1518 lt!2514865 lt!2514862 (t!381622 s!7408)))))

(declare-fun lt!2514839 () Unit!161555)

(assert (=> b!7026495 (= lt!2514839 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514846 () Unit!161555)

(assert (=> b!7026495 (= lt!2514846 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(assert (=> b!7026496 (= e!4223968 e!4223962)))

(declare-fun res!2868343 () Bool)

(assert (=> b!7026496 (=> res!2868343 e!4223962)))

(assert (=> b!7026496 (= res!2868343 (not (= (derivationStepZipper!2901 lt!2514844 (h!74187 s!7408)) lt!2514866)))))

(assert (=> b!7026496 (= (flatMap!2392 lt!2514844 lambda!413153) (derivationStepZipperUp!2055 lt!2514848 (h!74187 s!7408)))))

(declare-fun lt!2514859 () Unit!161555)

(assert (=> b!7026496 (= lt!2514859 (lemmaFlatMapOnSingletonSet!1906 lt!2514844 lt!2514848 lambda!413153))))

(assert (=> b!7026496 (= lt!2514866 (derivationStepZipperUp!2055 lt!2514848 (h!74187 s!7408)))))

(declare-fun lt!2514858 () Unit!161555)

(assert (=> b!7026496 (= lt!2514858 (lemmaConcatPreservesForall!766 (exprs!6941 lt!2514854) (exprs!6941 ct2!306) lambda!413152))))

(assert (=> b!7026497 (= e!4223963 e!4223965)))

(declare-fun res!2868341 () Bool)

(assert (=> b!7026497 (=> res!2868341 e!4223965)))

(assert (=> b!7026497 (= res!2868341 (or (not (= lt!2514848 lt!2514867)) (not (select z1!570 lt!2514854))))))

(assert (=> b!7026497 (= lt!2514848 (Context!12883 (++!15478 (exprs!6941 lt!2514854) (exprs!6941 ct2!306))))))

(declare-fun lt!2514863 () Unit!161555)

(assert (=> b!7026497 (= lt!2514863 (lemmaConcatPreservesForall!766 (exprs!6941 lt!2514854) (exprs!6941 ct2!306) lambda!413152))))

(declare-fun mapPost2!286 ((InoxSet Context!12882) Int Context!12882) Context!12882)

(assert (=> b!7026497 (= lt!2514854 (mapPost2!286 z1!570 lambda!413151 lt!2514867))))

(declare-fun setIsEmpty!48998 () Bool)

(assert (=> setIsEmpty!48998 setRes!48998))

(declare-fun b!7026490 () Bool)

(declare-fun tp!1935592 () Bool)

(assert (=> b!7026490 (= e!4223975 tp!1935592)))

(declare-fun res!2868347 () Bool)

(assert (=> start!678420 (=> (not res!2868347) (not e!4223972))))

(assert (=> start!678420 (= res!2868347 (matchZipper!2985 lt!2514836 s!7408))))

(declare-fun appendTo!566 ((InoxSet Context!12882) Context!12882) (InoxSet Context!12882))

(assert (=> start!678420 (= lt!2514836 (appendTo!566 z1!570 ct2!306))))

(assert (=> start!678420 e!4223972))

(declare-fun condSetEmpty!48998 () Bool)

(assert (=> start!678420 (= condSetEmpty!48998 (= z1!570 ((as const (Array Context!12882 Bool)) false)))))

(assert (=> start!678420 setRes!48998))

(declare-fun e!4223970 () Bool)

(assert (=> start!678420 (and (inv!86471 ct2!306) e!4223970)))

(assert (=> start!678420 e!4223964))

(declare-fun b!7026498 () Bool)

(declare-fun res!2868358 () Bool)

(assert (=> b!7026498 (=> res!2868358 e!4223963)))

(assert (=> b!7026498 (= res!2868358 (not (select lt!2514836 lt!2514867)))))

(declare-fun b!7026499 () Bool)

(assert (=> b!7026499 (= e!4223971 (matchZipper!2985 lt!2514862 (t!381622 s!7408)))))

(declare-fun b!7026500 () Bool)

(declare-fun tp!1935593 () Bool)

(assert (=> b!7026500 (= e!4223970 tp!1935593)))

(declare-fun b!7026501 () Bool)

(declare-fun res!2868352 () Bool)

(assert (=> b!7026501 (=> res!2868352 e!4223966)))

(assert (=> b!7026501 (= res!2868352 (not lt!2514861))))

(declare-fun b!7026502 () Bool)

(assert (=> b!7026502 (= e!4223973 e!4223961)))

(declare-fun res!2868342 () Bool)

(assert (=> b!7026502 (=> res!2868342 e!4223961)))

(assert (=> b!7026502 (= res!2868342 (not (= lt!2514866 lt!2514860)))))

(assert (=> b!7026502 (= lt!2514860 ((_ map or) lt!2514865 lt!2514862))))

(assert (=> b!7026502 (= lt!2514862 (derivationStepZipperUp!2055 lt!2514873 (h!74187 s!7408)))))

(declare-fun derivationStepZipperDown!2109 (Regex!17445 Context!12882 C!35160) (InoxSet Context!12882))

(assert (=> b!7026502 (= lt!2514865 (derivationStepZipperDown!2109 (h!74188 (exprs!6941 lt!2514854)) lt!2514873 (h!74187 s!7408)))))

(assert (=> b!7026502 (= lt!2514873 (Context!12883 (++!15478 lt!2514870 (exprs!6941 ct2!306))))))

(declare-fun lt!2514871 () Unit!161555)

(assert (=> b!7026502 (= lt!2514871 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun lt!2514849 () Unit!161555)

(assert (=> b!7026502 (= lt!2514849 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(declare-fun b!7026503 () Bool)

(assert (=> b!7026503 (= e!4223974 e!4223969)))

(declare-fun res!2868345 () Bool)

(assert (=> b!7026503 (=> res!2868345 e!4223969)))

(assert (=> b!7026503 (= res!2868345 (not (matchZipper!2985 lt!2514835 s!7408)))))

(declare-fun lt!2514847 () Unit!161555)

(assert (=> b!7026503 (= lt!2514847 (lemmaConcatPreservesForall!766 lt!2514870 (exprs!6941 ct2!306) lambda!413152))))

(assert (= (and start!678420 res!2868347) b!7026483))

(assert (= (and b!7026483 res!2868357) b!7026484))

(assert (= (and b!7026484 (not res!2868350)) b!7026498))

(assert (= (and b!7026498 (not res!2868358)) b!7026497))

(assert (= (and b!7026497 (not res!2868341)) b!7026485))

(assert (= (and b!7026485 (not res!2868351)) b!7026496))

(assert (= (and b!7026496 (not res!2868343)) b!7026492))

(assert (= (and b!7026492 (not res!2868348)) b!7026493))

(assert (= (and b!7026493 (not res!2868349)) b!7026494))

(assert (= (and b!7026494 (not res!2868353)) b!7026502))

(assert (= (and b!7026502 (not res!2868342)) b!7026495))

(assert (= (and b!7026495 (not res!2868354)) b!7026499))

(assert (= (and b!7026495 res!2868344) b!7026486))

(assert (= (and b!7026495 (not res!2868356)) b!7026501))

(assert (= (and b!7026501 (not res!2868352)) b!7026491))

(assert (= (and b!7026491 (not res!2868355)) b!7026487))

(assert (= (and b!7026487 (not res!2868346)) b!7026503))

(assert (= (and b!7026503 (not res!2868345)) b!7026489))

(assert (= (and start!678420 condSetEmpty!48998) setIsEmpty!48998))

(assert (= (and start!678420 (not condSetEmpty!48998)) setNonEmpty!48998))

(assert (= setNonEmpty!48998 b!7026490))

(assert (= start!678420 b!7026500))

(assert (= (and start!678420 ((_ is Cons!67739) s!7408)) b!7026488))

(declare-fun m!7729988 () Bool)

(assert (=> setNonEmpty!48998 m!7729988))

(declare-fun m!7729990 () Bool)

(assert (=> b!7026497 m!7729990))

(declare-fun m!7729992 () Bool)

(assert (=> b!7026497 m!7729992))

(declare-fun m!7729994 () Bool)

(assert (=> b!7026497 m!7729994))

(declare-fun m!7729996 () Bool)

(assert (=> b!7026497 m!7729996))

(declare-fun m!7729998 () Bool)

(assert (=> b!7026498 m!7729998))

(declare-fun m!7730000 () Bool)

(assert (=> b!7026502 m!7730000))

(declare-fun m!7730002 () Bool)

(assert (=> b!7026502 m!7730002))

(assert (=> b!7026502 m!7730002))

(declare-fun m!7730004 () Bool)

(assert (=> b!7026502 m!7730004))

(declare-fun m!7730006 () Bool)

(assert (=> b!7026502 m!7730006))

(declare-fun m!7730008 () Bool)

(assert (=> b!7026489 m!7730008))

(assert (=> b!7026489 m!7730002))

(assert (=> b!7026489 m!7730002))

(declare-fun m!7730010 () Bool)

(assert (=> b!7026489 m!7730010))

(declare-fun m!7730012 () Bool)

(assert (=> b!7026489 m!7730012))

(assert (=> b!7026489 m!7730002))

(declare-fun m!7730014 () Bool)

(assert (=> b!7026489 m!7730014))

(declare-fun m!7730016 () Bool)

(assert (=> b!7026489 m!7730016))

(declare-fun m!7730018 () Bool)

(assert (=> b!7026489 m!7730018))

(declare-fun m!7730020 () Bool)

(assert (=> b!7026489 m!7730020))

(assert (=> b!7026489 m!7730004))

(declare-fun m!7730022 () Bool)

(assert (=> b!7026491 m!7730022))

(assert (=> b!7026491 m!7730002))

(declare-fun m!7730024 () Bool)

(assert (=> b!7026484 m!7730024))

(declare-fun m!7730026 () Bool)

(assert (=> b!7026484 m!7730026))

(declare-fun m!7730028 () Bool)

(assert (=> b!7026484 m!7730028))

(declare-fun m!7730030 () Bool)

(assert (=> b!7026484 m!7730030))

(declare-fun m!7730032 () Bool)

(assert (=> b!7026484 m!7730032))

(declare-fun m!7730034 () Bool)

(assert (=> b!7026484 m!7730034))

(declare-fun m!7730036 () Bool)

(assert (=> b!7026496 m!7730036))

(assert (=> b!7026496 m!7729994))

(declare-fun m!7730038 () Bool)

(assert (=> b!7026496 m!7730038))

(declare-fun m!7730040 () Bool)

(assert (=> b!7026496 m!7730040))

(declare-fun m!7730042 () Bool)

(assert (=> b!7026496 m!7730042))

(assert (=> b!7026486 m!7730022))

(assert (=> b!7026486 m!7730002))

(declare-fun m!7730044 () Bool)

(assert (=> b!7026495 m!7730044))

(assert (=> b!7026495 m!7730002))

(declare-fun m!7730046 () Bool)

(assert (=> b!7026495 m!7730046))

(assert (=> b!7026495 m!7730002))

(declare-fun m!7730048 () Bool)

(assert (=> b!7026495 m!7730048))

(declare-fun m!7730050 () Bool)

(assert (=> b!7026495 m!7730050))

(assert (=> b!7026495 m!7730002))

(declare-fun m!7730052 () Bool)

(assert (=> b!7026493 m!7730052))

(declare-fun m!7730054 () Bool)

(assert (=> b!7026485 m!7730054))

(assert (=> b!7026485 m!7729994))

(assert (=> b!7026499 m!7730022))

(declare-fun m!7730056 () Bool)

(assert (=> b!7026503 m!7730056))

(assert (=> b!7026503 m!7730002))

(declare-fun m!7730058 () Bool)

(assert (=> start!678420 m!7730058))

(declare-fun m!7730060 () Bool)

(assert (=> start!678420 m!7730060))

(declare-fun m!7730062 () Bool)

(assert (=> start!678420 m!7730062))

(declare-fun m!7730064 () Bool)

(assert (=> b!7026487 m!7730064))

(assert (=> b!7026487 m!7730002))

(declare-fun m!7730066 () Bool)

(assert (=> b!7026487 m!7730066))

(assert (=> b!7026487 m!7730000))

(assert (=> b!7026487 m!7730002))

(declare-fun m!7730068 () Bool)

(assert (=> b!7026487 m!7730068))

(declare-fun m!7730070 () Bool)

(assert (=> b!7026487 m!7730070))

(assert (=> b!7026487 m!7730002))

(assert (=> b!7026487 m!7730002))

(declare-fun m!7730072 () Bool)

(assert (=> b!7026494 m!7730072))

(declare-fun m!7730074 () Bool)

(assert (=> b!7026494 m!7730074))

(check-sat (not b!7026484) tp_is_empty!44115 (not b!7026489) (not start!678420) (not b!7026488) (not b!7026496) (not b!7026494) (not b!7026497) (not b!7026499) (not b!7026486) (not b!7026495) (not b!7026493) (not b!7026487) (not b!7026491) (not b!7026502) (not setNonEmpty!48998) (not b!7026485) (not b!7026503) (not b!7026500) (not b!7026490))
(check-sat)
