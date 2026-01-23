; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!674102 () Bool)

(assert start!674102)

(declare-fun b!7004583 () Bool)

(assert (=> b!7004583 true))

(declare-fun b!7004601 () Bool)

(assert (=> b!7004601 true))

(declare-fun b!7004578 () Bool)

(assert (=> b!7004578 true))

(declare-fun bs!1865203 () Bool)

(declare-fun b!7004589 () Bool)

(assert (= bs!1865203 (and b!7004589 b!7004583)))

(declare-fun lambda!406663 () Int)

(declare-fun lambda!406659 () Int)

(assert (=> bs!1865203 (not (= lambda!406663 lambda!406659))))

(declare-fun bs!1865204 () Bool)

(declare-fun b!7004595 () Bool)

(assert (= bs!1865204 (and b!7004595 b!7004583)))

(declare-fun lambda!406664 () Int)

(declare-datatypes ((C!34844 0))(
  ( (C!34845 (val!27124 Int)) )
))
(declare-datatypes ((List!67406 0))(
  ( (Nil!67282) (Cons!67282 (h!73730 C!34844) (t!381159 List!67406)) )
))
(declare-fun s!7408 () List!67406)

(declare-datatypes ((tuple2!67920 0))(
  ( (tuple2!67921 (_1!37263 List!67406) (_2!37263 List!67406)) )
))
(declare-fun lt!2499864 () tuple2!67920)

(assert (=> bs!1865204 (= (= (_1!37263 lt!2499864) s!7408) (= lambda!406664 lambda!406659))))

(declare-fun bs!1865205 () Bool)

(assert (= bs!1865205 (and b!7004595 b!7004589)))

(assert (=> bs!1865205 (not (= lambda!406664 lambda!406663))))

(assert (=> b!7004595 true))

(declare-fun res!2857841 () Bool)

(declare-fun e!4210345 () Bool)

(assert (=> start!674102 (=> (not res!2857841) (not e!4210345))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17287 0))(
  ( (ElementMatch!17287 (c!1300649 C!34844)) (Concat!26132 (regOne!35086 Regex!17287) (regTwo!35086 Regex!17287)) (EmptyExpr!17287) (Star!17287 (reg!17616 Regex!17287)) (EmptyLang!17287) (Union!17287 (regOne!35087 Regex!17287) (regTwo!35087 Regex!17287)) )
))
(declare-datatypes ((List!67407 0))(
  ( (Nil!67283) (Cons!67283 (h!73731 Regex!17287) (t!381160 List!67407)) )
))
(declare-datatypes ((Context!12566 0))(
  ( (Context!12567 (exprs!6783 List!67407)) )
))
(declare-fun lt!2499830 () (InoxSet Context!12566))

(declare-fun matchZipper!2827 ((InoxSet Context!12566) List!67406) Bool)

(assert (=> start!674102 (= res!2857841 (matchZipper!2827 lt!2499830 s!7408))))

(declare-fun z1!570 () (InoxSet Context!12566))

(declare-fun ct2!306 () Context!12566)

(declare-fun appendTo!408 ((InoxSet Context!12566) Context!12566) (InoxSet Context!12566))

(assert (=> start!674102 (= lt!2499830 (appendTo!408 z1!570 ct2!306))))

(assert (=> start!674102 e!4210345))

(declare-fun condSetEmpty!48189 () Bool)

(assert (=> start!674102 (= condSetEmpty!48189 (= z1!570 ((as const (Array Context!12566 Bool)) false)))))

(declare-fun setRes!48189 () Bool)

(assert (=> start!674102 setRes!48189))

(declare-fun e!4210343 () Bool)

(declare-fun inv!86076 (Context!12566) Bool)

(assert (=> start!674102 (and (inv!86076 ct2!306) e!4210343)))

(declare-fun e!4210338 () Bool)

(assert (=> start!674102 e!4210338))

(declare-fun b!7004571 () Bool)

(declare-fun e!4210341 () Bool)

(declare-fun e!4210337 () Bool)

(assert (=> b!7004571 (= e!4210341 e!4210337)))

(declare-fun res!2857833 () Bool)

(assert (=> b!7004571 (=> res!2857833 e!4210337)))

(declare-fun lt!2499874 () (InoxSet Context!12566))

(assert (=> b!7004571 (= res!2857833 (not (matchZipper!2827 lt!2499874 s!7408)))))

(declare-fun lt!2499890 () List!67407)

(declare-fun lambda!406661 () Int)

(declare-datatypes ((Unit!161244 0))(
  ( (Unit!161245) )
))
(declare-fun lt!2499836 () Unit!161244)

(declare-fun lemmaConcatPreservesForall!623 (List!67407 List!67407 Int) Unit!161244)

(assert (=> b!7004571 (= lt!2499836 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun b!7004572 () Bool)

(declare-fun res!2857845 () Bool)

(declare-fun e!4210328 () Bool)

(assert (=> b!7004572 (=> res!2857845 e!4210328)))

(declare-fun ++!15275 (List!67406 List!67406) List!67406)

(assert (=> b!7004572 (= res!2857845 (not (= (++!15275 (_1!37263 lt!2499864) (_2!37263 lt!2499864)) s!7408)))))

(declare-fun b!7004573 () Bool)

(declare-fun res!2857831 () Bool)

(declare-fun e!4210342 () Bool)

(assert (=> b!7004573 (=> res!2857831 e!4210342)))

(declare-fun lt!2499873 () Context!12566)

(assert (=> b!7004573 (= res!2857831 (not (select lt!2499830 lt!2499873)))))

(declare-fun e!4210330 () Bool)

(declare-fun tp!1931522 () Bool)

(declare-fun setNonEmpty!48189 () Bool)

(declare-fun setElem!48189 () Context!12566)

(assert (=> setNonEmpty!48189 (= setRes!48189 (and tp!1931522 (inv!86076 setElem!48189) e!4210330))))

(declare-fun setRest!48189 () (InoxSet Context!12566))

(assert (=> setNonEmpty!48189 (= z1!570 ((_ map or) (store ((as const (Array Context!12566 Bool)) false) setElem!48189 true) setRest!48189))))

(declare-fun b!7004574 () Bool)

(declare-fun e!4210346 () Bool)

(declare-fun lt!2499837 () (InoxSet Context!12566))

(declare-fun lt!2499861 () List!67406)

(assert (=> b!7004574 (= e!4210346 (matchZipper!2827 lt!2499837 lt!2499861))))

(declare-fun bm!636015 () Bool)

(declare-fun call!636020 () Bool)

(declare-datatypes ((Option!16792 0))(
  ( (None!16791) (Some!16791 (v!53069 tuple2!67920)) )
))
(declare-fun call!636022 () Option!16792)

(declare-fun isDefined!13493 (Option!16792) Bool)

(assert (=> bm!636015 (= call!636020 (isDefined!13493 call!636022))))

(declare-fun b!7004575 () Bool)

(declare-fun e!4210333 () Bool)

(declare-fun e!4210344 () Bool)

(assert (=> b!7004575 (= e!4210333 e!4210344)))

(declare-fun res!2857825 () Bool)

(assert (=> b!7004575 (=> res!2857825 e!4210344)))

(declare-fun lt!2499851 () (InoxSet Context!12566))

(assert (=> b!7004575 (= res!2857825 (not (matchZipper!2827 lt!2499851 (t!381159 s!7408))))))

(declare-fun lt!2499892 () Unit!161244)

(assert (=> b!7004575 (= lt!2499892 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun b!7004576 () Bool)

(declare-fun e!4210334 () Bool)

(assert (=> b!7004576 (= e!4210334 e!4210333)))

(declare-fun res!2857835 () Bool)

(assert (=> b!7004576 (=> res!2857835 e!4210333)))

(declare-fun e!4210327 () Bool)

(assert (=> b!7004576 (= res!2857835 e!4210327)))

(declare-fun res!2857842 () Bool)

(assert (=> b!7004576 (=> (not res!2857842) (not e!4210327))))

(declare-fun lt!2499884 () Bool)

(declare-fun lt!2499867 () Bool)

(assert (=> b!7004576 (= res!2857842 (not (= lt!2499884 lt!2499867)))))

(declare-fun lt!2499843 () (InoxSet Context!12566))

(assert (=> b!7004576 (= lt!2499884 (matchZipper!2827 lt!2499843 (t!381159 s!7408)))))

(declare-fun lt!2499894 () Unit!161244)

(assert (=> b!7004576 (= lt!2499894 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499835 () (InoxSet Context!12566))

(declare-fun e!4210336 () Bool)

(assert (=> b!7004576 (= (matchZipper!2827 lt!2499835 (t!381159 s!7408)) e!4210336)))

(declare-fun res!2857828 () Bool)

(assert (=> b!7004576 (=> res!2857828 e!4210336)))

(assert (=> b!7004576 (= res!2857828 lt!2499867)))

(declare-fun lt!2499889 () (InoxSet Context!12566))

(assert (=> b!7004576 (= lt!2499867 (matchZipper!2827 lt!2499889 (t!381159 s!7408)))))

(declare-fun lt!2499885 () Unit!161244)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1460 ((InoxSet Context!12566) (InoxSet Context!12566) List!67406) Unit!161244)

(assert (=> b!7004576 (= lt!2499885 (lemmaZipperConcatMatchesSameAsBothZippers!1460 lt!2499889 lt!2499851 (t!381159 s!7408)))))

(declare-fun lt!2499879 () Unit!161244)

(assert (=> b!7004576 (= lt!2499879 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499863 () Unit!161244)

(assert (=> b!7004576 (= lt!2499863 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun b!7004577 () Bool)

(declare-fun e!4210340 () Unit!161244)

(declare-fun Unit!161246 () Unit!161244)

(assert (=> b!7004577 (= e!4210340 Unit!161246)))

(declare-fun lt!2499865 () (InoxSet Context!12566))

(declare-fun lt!2499840 () Context!12566)

(assert (=> b!7004577 (= lt!2499865 (store ((as const (Array Context!12566 Bool)) false) lt!2499840 true))))

(declare-fun lambda!406662 () Int)

(declare-fun lt!2499859 () Unit!161244)

(declare-fun lemmaFlatMapOnSingletonSet!1788 ((InoxSet Context!12566) Context!12566 Int) Unit!161244)

(assert (=> b!7004577 (= lt!2499859 (lemmaFlatMapOnSingletonSet!1788 lt!2499865 lt!2499840 lambda!406662))))

(declare-fun flatMap!2273 ((InoxSet Context!12566) Int) (InoxSet Context!12566))

(declare-fun derivationStepZipperUp!1937 (Context!12566 C!34844) (InoxSet Context!12566))

(assert (=> b!7004577 (= (flatMap!2273 lt!2499865 lambda!406662) (derivationStepZipperUp!1937 lt!2499840 (h!73730 s!7408)))))

(declare-fun lt!2499838 () (InoxSet Context!12566))

(declare-fun lt!2499871 () Context!12566)

(declare-fun derivationStepZipperDown!2005 (Regex!17287 Context!12566 C!34844) (InoxSet Context!12566))

(assert (=> b!7004577 (= lt!2499838 (derivationStepZipperDown!2005 (h!73731 (exprs!6783 lt!2499840)) lt!2499871 (h!73730 s!7408)))))

(assert (=> b!7004577 (= lt!2499837 (derivationStepZipperUp!1937 lt!2499871 (h!73730 s!7408)))))

(declare-fun tail!13342 (List!67406) List!67406)

(assert (=> b!7004577 (= lt!2499861 (tail!13342 (_1!37263 lt!2499864)))))

(declare-fun lt!2499853 () Unit!161244)

(assert (=> b!7004577 (= lt!2499853 (lemmaZipperConcatMatchesSameAsBothZippers!1460 lt!2499838 lt!2499837 lt!2499861))))

(declare-fun res!2857827 () Bool)

(assert (=> b!7004577 (= res!2857827 (matchZipper!2827 lt!2499838 lt!2499861))))

(assert (=> b!7004577 (=> res!2857827 e!4210346)))

(assert (=> b!7004577 (= (matchZipper!2827 ((_ map or) lt!2499838 lt!2499837) lt!2499861) e!4210346)))

(declare-fun lt!2499870 () Unit!161244)

(declare-fun lt!2499848 () (InoxSet Context!12566))

(assert (=> b!7004577 (= lt!2499870 (lemmaFlatMapOnSingletonSet!1788 lt!2499848 lt!2499871 lambda!406662))))

(assert (=> b!7004577 (= (flatMap!2273 lt!2499848 lambda!406662) (derivationStepZipperUp!1937 lt!2499871 (h!73730 s!7408)))))

(declare-fun lt!2499833 () Unit!161244)

(declare-fun call!636021 () Unit!161244)

(assert (=> b!7004577 (= lt!2499833 call!636021)))

(assert (=> b!7004577 call!636020))

(declare-fun e!4210326 () Bool)

(declare-fun e!4210335 () Bool)

(assert (=> b!7004578 (= e!4210326 e!4210335)))

(declare-fun res!2857826 () Bool)

(assert (=> b!7004578 (=> res!2857826 e!4210335)))

(declare-fun lt!2499858 () (InoxSet Context!12566))

(declare-fun derivationStepZipper!2767 ((InoxSet Context!12566) C!34844) (InoxSet Context!12566))

(assert (=> b!7004578 (= res!2857826 (not (= (derivationStepZipper!2767 lt!2499858 (h!73730 s!7408)) lt!2499843)))))

(declare-fun lt!2499842 () Context!12566)

(assert (=> b!7004578 (= (flatMap!2273 lt!2499858 lambda!406662) (derivationStepZipperUp!1937 lt!2499842 (h!73730 s!7408)))))

(declare-fun lt!2499866 () Unit!161244)

(assert (=> b!7004578 (= lt!2499866 (lemmaFlatMapOnSingletonSet!1788 lt!2499858 lt!2499842 lambda!406662))))

(assert (=> b!7004578 (= lt!2499843 (derivationStepZipperUp!1937 lt!2499842 (h!73730 s!7408)))))

(declare-fun lt!2499829 () Unit!161244)

(assert (=> b!7004578 (= lt!2499829 (lemmaConcatPreservesForall!623 (exprs!6783 lt!2499840) (exprs!6783 ct2!306) lambda!406661))))

(declare-fun setIsEmpty!48189 () Bool)

(assert (=> setIsEmpty!48189 setRes!48189))

(declare-fun b!7004579 () Bool)

(declare-fun res!2857836 () Bool)

(assert (=> b!7004579 (=> res!2857836 e!4210328)))

(declare-fun lt!2499882 () (InoxSet Context!12566))

(assert (=> b!7004579 (= res!2857836 (not (matchZipper!2827 lt!2499882 (_2!37263 lt!2499864))))))

(declare-fun b!7004580 () Bool)

(declare-fun e!4210332 () Bool)

(assert (=> b!7004580 (= e!4210337 e!4210332)))

(declare-fun res!2857850 () Bool)

(assert (=> b!7004580 (=> res!2857850 e!4210332)))

(declare-fun lt!2499856 () Int)

(declare-fun contextDepthTotal!480 (Context!12566) Int)

(assert (=> b!7004580 (= res!2857850 (<= lt!2499856 (contextDepthTotal!480 lt!2499871)))))

(declare-fun lt!2499886 () Int)

(assert (=> b!7004580 (<= lt!2499856 lt!2499886)))

(declare-datatypes ((List!67408 0))(
  ( (Nil!67284) (Cons!67284 (h!73732 Context!12566) (t!381161 List!67408)) )
))
(declare-fun lt!2499844 () List!67408)

(declare-fun zipperDepthTotal!508 (List!67408) Int)

(assert (=> b!7004580 (= lt!2499886 (zipperDepthTotal!508 lt!2499844))))

(assert (=> b!7004580 (= lt!2499856 (contextDepthTotal!480 lt!2499840))))

(declare-fun lt!2499846 () Unit!161244)

(declare-fun lemmaTotalDepthZipperLargerThanOfAnyContext!48 (List!67408 Context!12566) Unit!161244)

(assert (=> b!7004580 (= lt!2499846 (lemmaTotalDepthZipperLargerThanOfAnyContext!48 lt!2499844 lt!2499840))))

(declare-fun toList!10647 ((InoxSet Context!12566)) List!67408)

(assert (=> b!7004580 (= lt!2499844 (toList!10647 z1!570))))

(declare-fun lt!2499876 () Unit!161244)

(assert (=> b!7004580 (= lt!2499876 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499869 () Unit!161244)

(assert (=> b!7004580 (= lt!2499869 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499834 () Unit!161244)

(assert (=> b!7004580 (= lt!2499834 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(assert (=> b!7004580 (= (flatMap!2273 lt!2499848 lambda!406662) (derivationStepZipperUp!1937 lt!2499871 (h!73730 s!7408)))))

(declare-fun lt!2499850 () Unit!161244)

(assert (=> b!7004580 (= lt!2499850 (lemmaFlatMapOnSingletonSet!1788 lt!2499848 lt!2499871 lambda!406662))))

(declare-fun lambda!406660 () Int)

(declare-fun map!15577 ((InoxSet Context!12566) Int) (InoxSet Context!12566))

(declare-fun ++!15276 (List!67407 List!67407) List!67407)

(assert (=> b!7004580 (= (map!15577 lt!2499848 lambda!406660) (store ((as const (Array Context!12566 Bool)) false) (Context!12567 (++!15276 lt!2499890 (exprs!6783 ct2!306))) true))))

(declare-fun lt!2499868 () Unit!161244)

(assert (=> b!7004580 (= lt!2499868 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499845 () Unit!161244)

(declare-fun lemmaMapOnSingletonSet!352 ((InoxSet Context!12566) Context!12566 Int) Unit!161244)

(assert (=> b!7004580 (= lt!2499845 (lemmaMapOnSingletonSet!352 lt!2499848 lt!2499871 lambda!406660))))

(assert (=> b!7004580 (= lt!2499848 (store ((as const (Array Context!12566 Bool)) false) lt!2499871 true))))

(declare-fun bm!636016 () Bool)

(declare-fun c!1300648 () Bool)

(declare-fun lt!2499832 () (InoxSet Context!12566))

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!10 ((InoxSet Context!12566) (InoxSet Context!12566) List!67406 List!67406 List!67406 List!67406 List!67406) Unit!161244)

(assert (=> bm!636016 (= call!636021 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!10 (ite c!1300648 lt!2499832 lt!2499865) lt!2499882 (_1!37263 lt!2499864) (_2!37263 lt!2499864) s!7408 Nil!67282 s!7408))))

(declare-fun b!7004581 () Bool)

(declare-fun res!2857844 () Bool)

(declare-fun e!4210331 () Bool)

(assert (=> b!7004581 (=> res!2857844 e!4210331)))

(declare-fun isPrefix!5824 (List!67406 List!67406) Bool)

(assert (=> b!7004581 (= res!2857844 (not (isPrefix!5824 Nil!67282 (_1!37263 lt!2499864))))))

(declare-fun b!7004582 () Bool)

(declare-fun res!2857847 () Bool)

(assert (=> b!7004582 (=> (not res!2857847) (not e!4210345))))

(get-info :version)

(assert (=> b!7004582 (= res!2857847 ((_ is Cons!67282) s!7408))))

(assert (=> b!7004583 (= e!4210345 (not e!4210342))))

(declare-fun res!2857840 () Bool)

(assert (=> b!7004583 (=> res!2857840 e!4210342)))

(declare-fun lt!2499883 () (InoxSet Context!12566))

(assert (=> b!7004583 (= res!2857840 (not (matchZipper!2827 lt!2499883 s!7408)))))

(assert (=> b!7004583 (= lt!2499883 (store ((as const (Array Context!12566 Bool)) false) lt!2499873 true))))

(declare-fun getWitness!1213 ((InoxSet Context!12566) Int) Context!12566)

(assert (=> b!7004583 (= lt!2499873 (getWitness!1213 lt!2499830 lambda!406659))))

(declare-fun lt!2499839 () List!67408)

(declare-fun exists!3114 (List!67408 Int) Bool)

(assert (=> b!7004583 (exists!3114 lt!2499839 lambda!406659)))

(declare-fun lt!2499878 () Unit!161244)

(declare-fun lemmaZipperMatchesExistsMatchingContext!256 (List!67408 List!67406) Unit!161244)

(assert (=> b!7004583 (= lt!2499878 (lemmaZipperMatchesExistsMatchingContext!256 lt!2499839 s!7408))))

(assert (=> b!7004583 (= lt!2499839 (toList!10647 lt!2499830))))

(declare-fun b!7004584 () Bool)

(declare-fun e!4210329 () Bool)

(assert (=> b!7004584 (= e!4210329 e!4210326)))

(declare-fun res!2857837 () Bool)

(assert (=> b!7004584 (=> res!2857837 e!4210326)))

(assert (=> b!7004584 (= res!2857837 (not (= lt!2499858 lt!2499883)))))

(assert (=> b!7004584 (= lt!2499858 (store ((as const (Array Context!12566 Bool)) false) lt!2499842 true))))

(declare-fun lt!2499827 () Unit!161244)

(assert (=> b!7004584 (= lt!2499827 (lemmaConcatPreservesForall!623 (exprs!6783 lt!2499840) (exprs!6783 ct2!306) lambda!406661))))

(declare-fun b!7004585 () Bool)

(declare-fun res!2857834 () Bool)

(assert (=> b!7004585 (=> res!2857834 e!4210332)))

(assert (=> b!7004585 (= res!2857834 (>= (zipperDepthTotal!508 (Cons!67284 lt!2499871 Nil!67284)) lt!2499886))))

(declare-fun b!7004586 () Bool)

(assert (=> b!7004586 (= e!4210336 (matchZipper!2827 lt!2499851 (t!381159 s!7408)))))

(declare-fun b!7004587 () Bool)

(declare-fun e!4210339 () Bool)

(assert (=> b!7004587 (= e!4210339 e!4210334)))

(declare-fun res!2857846 () Bool)

(assert (=> b!7004587 (=> res!2857846 e!4210334)))

(assert (=> b!7004587 (= res!2857846 (not (= lt!2499843 lt!2499835)))))

(assert (=> b!7004587 (= lt!2499835 ((_ map or) lt!2499889 lt!2499851))))

(declare-fun lt!2499852 () Context!12566)

(assert (=> b!7004587 (= lt!2499851 (derivationStepZipperUp!1937 lt!2499852 (h!73730 s!7408)))))

(assert (=> b!7004587 (= lt!2499889 (derivationStepZipperDown!2005 (h!73731 (exprs!6783 lt!2499840)) lt!2499852 (h!73730 s!7408)))))

(assert (=> b!7004587 (= lt!2499852 (Context!12567 (++!15276 lt!2499890 (exprs!6783 ct2!306))))))

(declare-fun lt!2499872 () Unit!161244)

(assert (=> b!7004587 (= lt!2499872 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499831 () Unit!161244)

(assert (=> b!7004587 (= lt!2499831 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun b!7004588 () Bool)

(declare-fun tp_is_empty!43799 () Bool)

(declare-fun tp!1931520 () Bool)

(assert (=> b!7004588 (= e!4210338 (and tp_is_empty!43799 tp!1931520))))

(declare-fun Unit!161247 () Unit!161244)

(assert (=> b!7004589 (= e!4210340 Unit!161247)))

(declare-fun lt!2499880 () Context!12566)

(assert (=> b!7004589 (= lt!2499880 (getWitness!1213 lt!2499848 lambda!406663))))

(declare-fun lt!2499855 () Unit!161244)

(declare-fun lemmaContainsThenExists!91 ((InoxSet Context!12566) Context!12566 Int) Unit!161244)

(assert (=> b!7004589 (= lt!2499855 (lemmaContainsThenExists!91 lt!2499848 lt!2499871 lambda!406663))))

(declare-fun exists!3115 ((InoxSet Context!12566) Int) Bool)

(assert (=> b!7004589 (exists!3115 lt!2499848 lambda!406663)))

(assert (=> b!7004589 (= lt!2499832 (store ((as const (Array Context!12566 Bool)) false) lt!2499840 true))))

(declare-fun lt!2499857 () Unit!161244)

(assert (=> b!7004589 (= lt!2499857 (lemmaContainsThenExists!91 lt!2499832 lt!2499840 lambda!406663))))

(assert (=> b!7004589 (exists!3115 lt!2499832 lambda!406663)))

(declare-fun lt!2499881 () Unit!161244)

(assert (=> b!7004589 (= lt!2499881 call!636021)))

(assert (=> b!7004589 call!636020))

(declare-fun b!7004590 () Bool)

(assert (=> b!7004590 (= e!4210344 e!4210341)))

(declare-fun res!2857849 () Bool)

(assert (=> b!7004590 (=> res!2857849 e!4210341)))

(assert (=> b!7004590 (= res!2857849 (not (= (derivationStepZipper!2767 lt!2499874 (h!73730 s!7408)) lt!2499851)))))

(declare-fun lt!2499877 () Unit!161244)

(assert (=> b!7004590 (= lt!2499877 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499862 () Unit!161244)

(assert (=> b!7004590 (= lt!2499862 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(assert (=> b!7004590 (= (flatMap!2273 lt!2499874 lambda!406662) (derivationStepZipperUp!1937 lt!2499852 (h!73730 s!7408)))))

(declare-fun lt!2499860 () Unit!161244)

(assert (=> b!7004590 (= lt!2499860 (lemmaFlatMapOnSingletonSet!1788 lt!2499874 lt!2499852 lambda!406662))))

(assert (=> b!7004590 (= lt!2499874 (store ((as const (Array Context!12566 Bool)) false) lt!2499852 true))))

(declare-fun lt!2499893 () Unit!161244)

(assert (=> b!7004590 (= lt!2499893 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun lt!2499847 () Unit!161244)

(assert (=> b!7004590 (= lt!2499847 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun b!7004591 () Bool)

(declare-fun res!2857830 () Bool)

(assert (=> b!7004591 (=> res!2857830 e!4210333)))

(assert (=> b!7004591 (= res!2857830 (not lt!2499884))))

(declare-fun b!7004592 () Bool)

(declare-fun res!2857832 () Bool)

(assert (=> b!7004592 (=> res!2857832 e!4210335)))

(declare-fun isEmpty!39293 (List!67407) Bool)

(assert (=> b!7004592 (= res!2857832 (isEmpty!39293 (exprs!6783 lt!2499840)))))

(declare-fun b!7004593 () Bool)

(assert (=> b!7004593 (= e!4210327 (not (matchZipper!2827 lt!2499851 (t!381159 s!7408))))))

(declare-fun lt!2499888 () Unit!161244)

(assert (=> b!7004593 (= lt!2499888 (lemmaConcatPreservesForall!623 lt!2499890 (exprs!6783 ct2!306) lambda!406661))))

(declare-fun b!7004594 () Bool)

(declare-fun res!2857843 () Bool)

(assert (=> b!7004594 (=> res!2857843 e!4210335)))

(assert (=> b!7004594 (= res!2857843 (not ((_ is Cons!67283) (exprs!6783 lt!2499840))))))

(assert (=> b!7004595 (= e!4210328 e!4210331)))

(declare-fun res!2857848 () Bool)

(assert (=> b!7004595 (=> res!2857848 e!4210331)))

(assert (=> b!7004595 (= res!2857848 (not (matchZipper!2827 z1!570 (_1!37263 lt!2499864))))))

(declare-fun content!13334 (List!67408) (InoxSet Context!12566))

(assert (=> b!7004595 (matchZipper!2827 (content!13334 lt!2499844) (_1!37263 lt!2499864))))

(declare-fun lt!2499841 () Unit!161244)

(declare-fun lemmaExistsMatchingContextThenMatchingString!24 (List!67408 List!67406) Unit!161244)

(assert (=> b!7004595 (= lt!2499841 (lemmaExistsMatchingContextThenMatchingString!24 lt!2499844 (_1!37263 lt!2499864)))))

(assert (=> b!7004595 (exists!3115 z1!570 lambda!406664)))

(declare-fun lt!2499887 () Unit!161244)

(assert (=> b!7004595 (= lt!2499887 (lemmaContainsThenExists!91 z1!570 lt!2499840 lambda!406664))))

(declare-fun lt!2499828 () Unit!161244)

(assert (=> b!7004595 (= lt!2499828 e!4210340)))

(declare-fun isEmpty!39294 (List!67406) Bool)

(assert (=> b!7004595 (= c!1300648 (isEmpty!39294 (_1!37263 lt!2499864)))))

(declare-fun b!7004596 () Bool)

(declare-fun tp!1931521 () Bool)

(assert (=> b!7004596 (= e!4210330 tp!1931521)))

(declare-fun b!7004597 () Bool)

(assert (=> b!7004597 (= e!4210331 true)))

(declare-fun lt!2499875 () List!67406)

(assert (=> b!7004597 (= lt!2499875 (++!15275 Nil!67282 s!7408))))

(declare-fun b!7004598 () Bool)

(assert (=> b!7004598 (= e!4210335 e!4210339)))

(declare-fun res!2857829 () Bool)

(assert (=> b!7004598 (=> res!2857829 e!4210339)))

(declare-fun nullable!7047 (Regex!17287) Bool)

(assert (=> b!7004598 (= res!2857829 (not (nullable!7047 (h!73731 (exprs!6783 lt!2499840)))))))

(assert (=> b!7004598 (= lt!2499871 (Context!12567 lt!2499890))))

(declare-fun tail!13343 (List!67407) List!67407)

(assert (=> b!7004598 (= lt!2499890 (tail!13343 (exprs!6783 lt!2499840)))))

(declare-fun b!7004599 () Bool)

(declare-fun tp!1931519 () Bool)

(assert (=> b!7004599 (= e!4210343 tp!1931519)))

(declare-fun b!7004600 () Bool)

(assert (=> b!7004600 (= e!4210332 e!4210328)))

(declare-fun res!2857839 () Bool)

(assert (=> b!7004600 (=> res!2857839 e!4210328)))

(assert (=> b!7004600 (= res!2857839 (not (matchZipper!2827 lt!2499848 (_1!37263 lt!2499864))))))

(declare-fun lt!2499891 () Option!16792)

(declare-fun get!23600 (Option!16792) tuple2!67920)

(assert (=> b!7004600 (= lt!2499864 (get!23600 lt!2499891))))

(assert (=> b!7004600 (isDefined!13493 lt!2499891)))

(declare-fun findConcatSeparationZippers!308 ((InoxSet Context!12566) (InoxSet Context!12566) List!67406 List!67406 List!67406) Option!16792)

(assert (=> b!7004600 (= lt!2499891 (findConcatSeparationZippers!308 lt!2499848 lt!2499882 Nil!67282 s!7408 s!7408))))

(assert (=> b!7004600 (= lt!2499882 (store ((as const (Array Context!12566 Bool)) false) ct2!306 true))))

(declare-fun lt!2499849 () Unit!161244)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!308 ((InoxSet Context!12566) Context!12566 List!67406) Unit!161244)

(assert (=> b!7004600 (= lt!2499849 (lemmaConcatZipperMatchesStringThenFindConcatDefined!308 lt!2499848 ct2!306 s!7408))))

(assert (=> b!7004601 (= e!4210342 e!4210329)))

(declare-fun res!2857838 () Bool)

(assert (=> b!7004601 (=> res!2857838 e!4210329)))

(assert (=> b!7004601 (= res!2857838 (or (not (= lt!2499842 lt!2499873)) (not (select z1!570 lt!2499840))))))

(assert (=> b!7004601 (= lt!2499842 (Context!12567 (++!15276 (exprs!6783 lt!2499840) (exprs!6783 ct2!306))))))

(declare-fun lt!2499854 () Unit!161244)

(assert (=> b!7004601 (= lt!2499854 (lemmaConcatPreservesForall!623 (exprs!6783 lt!2499840) (exprs!6783 ct2!306) lambda!406661))))

(declare-fun mapPost2!142 ((InoxSet Context!12566) Int Context!12566) Context!12566)

(assert (=> b!7004601 (= lt!2499840 (mapPost2!142 z1!570 lambda!406660 lt!2499873))))

(declare-fun bm!636017 () Bool)

(assert (=> bm!636017 (= call!636022 (findConcatSeparationZippers!308 (ite c!1300648 lt!2499832 lt!2499865) lt!2499882 Nil!67282 s!7408 s!7408))))

(assert (= (and start!674102 res!2857841) b!7004582))

(assert (= (and b!7004582 res!2857847) b!7004583))

(assert (= (and b!7004583 (not res!2857840)) b!7004573))

(assert (= (and b!7004573 (not res!2857831)) b!7004601))

(assert (= (and b!7004601 (not res!2857838)) b!7004584))

(assert (= (and b!7004584 (not res!2857837)) b!7004578))

(assert (= (and b!7004578 (not res!2857826)) b!7004594))

(assert (= (and b!7004594 (not res!2857843)) b!7004592))

(assert (= (and b!7004592 (not res!2857832)) b!7004598))

(assert (= (and b!7004598 (not res!2857829)) b!7004587))

(assert (= (and b!7004587 (not res!2857846)) b!7004576))

(assert (= (and b!7004576 (not res!2857828)) b!7004586))

(assert (= (and b!7004576 res!2857842) b!7004593))

(assert (= (and b!7004576 (not res!2857835)) b!7004591))

(assert (= (and b!7004591 (not res!2857830)) b!7004575))

(assert (= (and b!7004575 (not res!2857825)) b!7004590))

(assert (= (and b!7004590 (not res!2857849)) b!7004571))

(assert (= (and b!7004571 (not res!2857833)) b!7004580))

(assert (= (and b!7004580 (not res!2857850)) b!7004585))

(assert (= (and b!7004585 (not res!2857834)) b!7004600))

(assert (= (and b!7004600 (not res!2857839)) b!7004579))

(assert (= (and b!7004579 (not res!2857836)) b!7004572))

(assert (= (and b!7004572 (not res!2857845)) b!7004595))

(assert (= (and b!7004595 c!1300648) b!7004589))

(assert (= (and b!7004595 (not c!1300648)) b!7004577))

(assert (= (and b!7004577 (not res!2857827)) b!7004574))

(assert (= (or b!7004589 b!7004577) bm!636016))

(assert (= (or b!7004589 b!7004577) bm!636017))

(assert (= (or b!7004589 b!7004577) bm!636015))

(assert (= (and b!7004595 (not res!2857848)) b!7004581))

(assert (= (and b!7004581 (not res!2857844)) b!7004597))

(assert (= (and start!674102 condSetEmpty!48189) setIsEmpty!48189))

(assert (= (and start!674102 (not condSetEmpty!48189)) setNonEmpty!48189))

(assert (= setNonEmpty!48189 b!7004596))

(assert (= start!674102 b!7004599))

(assert (= (and start!674102 ((_ is Cons!67282) s!7408)) b!7004588))

(declare-fun m!7700574 () Bool)

(assert (=> b!7004574 m!7700574))

(declare-fun m!7700576 () Bool)

(assert (=> bm!636017 m!7700576))

(declare-fun m!7700578 () Bool)

(assert (=> b!7004597 m!7700578))

(declare-fun m!7700580 () Bool)

(assert (=> b!7004576 m!7700580))

(declare-fun m!7700582 () Bool)

(assert (=> b!7004576 m!7700582))

(declare-fun m!7700584 () Bool)

(assert (=> b!7004576 m!7700584))

(assert (=> b!7004576 m!7700580))

(declare-fun m!7700586 () Bool)

(assert (=> b!7004576 m!7700586))

(assert (=> b!7004576 m!7700580))

(declare-fun m!7700588 () Bool)

(assert (=> b!7004576 m!7700588))

(declare-fun m!7700590 () Bool)

(assert (=> b!7004589 m!7700590))

(declare-fun m!7700592 () Bool)

(assert (=> b!7004589 m!7700592))

(declare-fun m!7700594 () Bool)

(assert (=> b!7004589 m!7700594))

(declare-fun m!7700596 () Bool)

(assert (=> b!7004589 m!7700596))

(declare-fun m!7700598 () Bool)

(assert (=> b!7004589 m!7700598))

(declare-fun m!7700600 () Bool)

(assert (=> b!7004589 m!7700600))

(declare-fun m!7700602 () Bool)

(assert (=> b!7004592 m!7700602))

(declare-fun m!7700604 () Bool)

(assert (=> b!7004600 m!7700604))

(declare-fun m!7700606 () Bool)

(assert (=> b!7004600 m!7700606))

(declare-fun m!7700608 () Bool)

(assert (=> b!7004600 m!7700608))

(declare-fun m!7700610 () Bool)

(assert (=> b!7004600 m!7700610))

(declare-fun m!7700612 () Bool)

(assert (=> b!7004600 m!7700612))

(declare-fun m!7700614 () Bool)

(assert (=> b!7004600 m!7700614))

(declare-fun m!7700616 () Bool)

(assert (=> start!674102 m!7700616))

(declare-fun m!7700618 () Bool)

(assert (=> start!674102 m!7700618))

(declare-fun m!7700620 () Bool)

(assert (=> start!674102 m!7700620))

(declare-fun m!7700622 () Bool)

(assert (=> b!7004598 m!7700622))

(declare-fun m!7700624 () Bool)

(assert (=> b!7004598 m!7700624))

(declare-fun m!7700626 () Bool)

(assert (=> b!7004587 m!7700626))

(declare-fun m!7700628 () Bool)

(assert (=> b!7004587 m!7700628))

(assert (=> b!7004587 m!7700580))

(declare-fun m!7700630 () Bool)

(assert (=> b!7004587 m!7700630))

(assert (=> b!7004587 m!7700580))

(declare-fun m!7700632 () Bool)

(assert (=> b!7004593 m!7700632))

(assert (=> b!7004593 m!7700580))

(assert (=> b!7004575 m!7700632))

(assert (=> b!7004575 m!7700580))

(assert (=> b!7004586 m!7700632))

(declare-fun m!7700634 () Bool)

(assert (=> b!7004573 m!7700634))

(declare-fun m!7700636 () Bool)

(assert (=> b!7004581 m!7700636))

(declare-fun m!7700638 () Bool)

(assert (=> b!7004571 m!7700638))

(assert (=> b!7004571 m!7700580))

(assert (=> b!7004580 m!7700626))

(assert (=> b!7004580 m!7700580))

(declare-fun m!7700640 () Bool)

(assert (=> b!7004580 m!7700640))

(assert (=> b!7004580 m!7700580))

(declare-fun m!7700642 () Bool)

(assert (=> b!7004580 m!7700642))

(declare-fun m!7700644 () Bool)

(assert (=> b!7004580 m!7700644))

(declare-fun m!7700646 () Bool)

(assert (=> b!7004580 m!7700646))

(declare-fun m!7700648 () Bool)

(assert (=> b!7004580 m!7700648))

(declare-fun m!7700650 () Bool)

(assert (=> b!7004580 m!7700650))

(declare-fun m!7700652 () Bool)

(assert (=> b!7004580 m!7700652))

(declare-fun m!7700654 () Bool)

(assert (=> b!7004580 m!7700654))

(declare-fun m!7700656 () Bool)

(assert (=> b!7004580 m!7700656))

(assert (=> b!7004580 m!7700580))

(declare-fun m!7700658 () Bool)

(assert (=> b!7004580 m!7700658))

(declare-fun m!7700660 () Bool)

(assert (=> b!7004580 m!7700660))

(declare-fun m!7700662 () Bool)

(assert (=> b!7004580 m!7700662))

(assert (=> b!7004580 m!7700580))

(declare-fun m!7700664 () Bool)

(assert (=> b!7004578 m!7700664))

(declare-fun m!7700666 () Bool)

(assert (=> b!7004578 m!7700666))

(declare-fun m!7700668 () Bool)

(assert (=> b!7004578 m!7700668))

(declare-fun m!7700670 () Bool)

(assert (=> b!7004578 m!7700670))

(declare-fun m!7700672 () Bool)

(assert (=> b!7004578 m!7700672))

(declare-fun m!7700674 () Bool)

(assert (=> b!7004595 m!7700674))

(declare-fun m!7700676 () Bool)

(assert (=> b!7004595 m!7700676))

(declare-fun m!7700678 () Bool)

(assert (=> b!7004595 m!7700678))

(assert (=> b!7004595 m!7700674))

(declare-fun m!7700680 () Bool)

(assert (=> b!7004595 m!7700680))

(declare-fun m!7700682 () Bool)

(assert (=> b!7004595 m!7700682))

(declare-fun m!7700684 () Bool)

(assert (=> b!7004595 m!7700684))

(declare-fun m!7700686 () Bool)

(assert (=> b!7004595 m!7700686))

(declare-fun m!7700688 () Bool)

(assert (=> b!7004579 m!7700688))

(declare-fun m!7700690 () Bool)

(assert (=> b!7004577 m!7700690))

(declare-fun m!7700692 () Bool)

(assert (=> b!7004577 m!7700692))

(assert (=> b!7004577 m!7700594))

(declare-fun m!7700694 () Bool)

(assert (=> b!7004577 m!7700694))

(assert (=> b!7004577 m!7700662))

(assert (=> b!7004577 m!7700660))

(declare-fun m!7700696 () Bool)

(assert (=> b!7004577 m!7700696))

(declare-fun m!7700698 () Bool)

(assert (=> b!7004577 m!7700698))

(declare-fun m!7700700 () Bool)

(assert (=> b!7004577 m!7700700))

(declare-fun m!7700702 () Bool)

(assert (=> b!7004577 m!7700702))

(declare-fun m!7700704 () Bool)

(assert (=> b!7004577 m!7700704))

(assert (=> b!7004577 m!7700658))

(declare-fun m!7700706 () Bool)

(assert (=> b!7004583 m!7700706))

(declare-fun m!7700708 () Bool)

(assert (=> b!7004583 m!7700708))

(declare-fun m!7700710 () Bool)

(assert (=> b!7004583 m!7700710))

(declare-fun m!7700712 () Bool)

(assert (=> b!7004583 m!7700712))

(declare-fun m!7700714 () Bool)

(assert (=> b!7004583 m!7700714))

(declare-fun m!7700716 () Bool)

(assert (=> b!7004583 m!7700716))

(declare-fun m!7700718 () Bool)

(assert (=> b!7004601 m!7700718))

(declare-fun m!7700720 () Bool)

(assert (=> b!7004601 m!7700720))

(assert (=> b!7004601 m!7700672))

(declare-fun m!7700722 () Bool)

(assert (=> b!7004601 m!7700722))

(declare-fun m!7700724 () Bool)

(assert (=> b!7004584 m!7700724))

(assert (=> b!7004584 m!7700672))

(declare-fun m!7700726 () Bool)

(assert (=> b!7004585 m!7700726))

(assert (=> b!7004590 m!7700628))

(assert (=> b!7004590 m!7700580))

(assert (=> b!7004590 m!7700580))

(assert (=> b!7004590 m!7700580))

(declare-fun m!7700728 () Bool)

(assert (=> b!7004590 m!7700728))

(declare-fun m!7700730 () Bool)

(assert (=> b!7004590 m!7700730))

(declare-fun m!7700732 () Bool)

(assert (=> b!7004590 m!7700732))

(assert (=> b!7004590 m!7700580))

(declare-fun m!7700734 () Bool)

(assert (=> b!7004590 m!7700734))

(declare-fun m!7700736 () Bool)

(assert (=> bm!636015 m!7700736))

(declare-fun m!7700738 () Bool)

(assert (=> setNonEmpty!48189 m!7700738))

(declare-fun m!7700740 () Bool)

(assert (=> b!7004572 m!7700740))

(declare-fun m!7700742 () Bool)

(assert (=> bm!636016 m!7700742))

(check-sat (not b!7004578) (not b!7004595) (not b!7004584) (not b!7004589) (not b!7004590) (not setNonEmpty!48189) (not b!7004592) (not bm!636017) (not b!7004583) (not b!7004579) tp_is_empty!43799 (not b!7004588) (not b!7004587) (not bm!636015) (not b!7004580) (not bm!636016) (not b!7004596) (not b!7004581) (not b!7004574) (not b!7004599) (not b!7004585) (not b!7004593) (not b!7004577) (not b!7004586) (not b!7004597) (not b!7004576) (not b!7004571) (not start!674102) (not b!7004575) (not b!7004598) (not b!7004600) (not b!7004572) (not b!7004601))
(check-sat)
