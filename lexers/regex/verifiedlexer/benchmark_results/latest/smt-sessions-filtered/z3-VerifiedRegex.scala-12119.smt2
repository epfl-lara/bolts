; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!680930 () Bool)

(assert start!680930)

(declare-fun b!7039942 () Bool)

(assert (=> b!7039942 true))

(declare-fun b!7039939 () Bool)

(assert (=> b!7039939 true))

(declare-fun b!7039934 () Bool)

(assert (=> b!7039934 true))

(declare-fun b!7039930 () Bool)

(declare-fun e!4232147 () Bool)

(declare-fun tp_is_empty!44195 () Bool)

(declare-fun tp!1937261 () Bool)

(assert (=> b!7039930 (= e!4232147 (and tp_is_empty!44195 tp!1937261))))

(declare-fun b!7039931 () Bool)

(declare-fun e!4232139 () Bool)

(declare-fun e!4232148 () Bool)

(assert (=> b!7039931 (= e!4232139 e!4232148)))

(declare-fun res!2873973 () Bool)

(assert (=> b!7039931 (=> res!2873973 e!4232148)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35240 0))(
  ( (C!35241 (val!27322 Int)) )
))
(declare-datatypes ((Regex!17485 0))(
  ( (ElementMatch!17485 (c!1310265 C!35240)) (Concat!26330 (regOne!35482 Regex!17485) (regTwo!35482 Regex!17485)) (EmptyExpr!17485) (Star!17485 (reg!17814 Regex!17485)) (EmptyLang!17485) (Union!17485 (regOne!35483 Regex!17485) (regTwo!35483 Regex!17485)) )
))
(declare-datatypes ((List!67983 0))(
  ( (Nil!67859) (Cons!67859 (h!74307 Regex!17485) (t!381754 List!67983)) )
))
(declare-datatypes ((Context!12962 0))(
  ( (Context!12963 (exprs!6981 List!67983)) )
))
(declare-fun lt!2523587 () (InoxSet Context!12962))

(declare-datatypes ((List!67984 0))(
  ( (Nil!67860) (Cons!67860 (h!74308 C!35240) (t!381755 List!67984)) )
))
(declare-fun s!7408 () List!67984)

(declare-fun matchZipper!3025 ((InoxSet Context!12962) List!67984) Bool)

(assert (=> b!7039931 (= res!2873973 (matchZipper!3025 lt!2523587 (t!381755 s!7408)))))

(declare-fun lambda!416489 () Int)

(declare-fun lt!2523585 () List!67983)

(declare-datatypes ((Unit!161650 0))(
  ( (Unit!161651) )
))
(declare-fun lt!2523593 () Unit!161650)

(declare-fun ct2!306 () Context!12962)

(declare-fun lemmaConcatPreservesForall!806 (List!67983 List!67983 Int) Unit!161650)

(assert (=> b!7039931 (= lt!2523593 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun setIsEmpty!49318 () Bool)

(declare-fun setRes!49318 () Bool)

(assert (=> setIsEmpty!49318 setRes!49318))

(declare-fun b!7039932 () Bool)

(declare-fun e!4232134 () Bool)

(assert (=> b!7039932 (= e!4232148 e!4232134)))

(declare-fun res!2873988 () Bool)

(assert (=> b!7039932 (=> res!2873988 e!4232134)))

(declare-fun lt!2523592 () Bool)

(assert (=> b!7039932 (= res!2873988 (not lt!2523592))))

(declare-fun lt!2523572 () Unit!161650)

(assert (=> b!7039932 (= lt!2523572 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun lt!2523600 () Unit!161650)

(assert (=> b!7039932 (= lt!2523600 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun b!7039933 () Bool)

(declare-fun e!4232140 () Bool)

(declare-fun e!4232146 () Bool)

(assert (=> b!7039933 (= e!4232140 e!4232146)))

(declare-fun res!2873981 () Bool)

(assert (=> b!7039933 (=> res!2873981 e!4232146)))

(declare-fun lt!2523579 () (InoxSet Context!12962))

(declare-fun lt!2523588 () (InoxSet Context!12962))

(assert (=> b!7039933 (= res!2873981 (not (= lt!2523579 lt!2523588)))))

(declare-fun lt!2523567 () (InoxSet Context!12962))

(assert (=> b!7039933 (= lt!2523588 ((_ map or) lt!2523567 lt!2523587))))

(declare-fun lt!2523582 () Context!12962)

(declare-fun derivationStepZipperUp!2095 (Context!12962 C!35240) (InoxSet Context!12962))

(assert (=> b!7039933 (= lt!2523587 (derivationStepZipperUp!2095 lt!2523582 (h!74308 s!7408)))))

(declare-fun lt!2523597 () Context!12962)

(declare-fun derivationStepZipperDown!2149 (Regex!17485 Context!12962 C!35240) (InoxSet Context!12962))

(assert (=> b!7039933 (= lt!2523567 (derivationStepZipperDown!2149 (h!74307 (exprs!6981 lt!2523597)) lt!2523582 (h!74308 s!7408)))))

(declare-fun ++!15547 (List!67983 List!67983) List!67983)

(assert (=> b!7039933 (= lt!2523582 (Context!12963 (++!15547 lt!2523585 (exprs!6981 ct2!306))))))

(declare-fun lt!2523595 () Unit!161650)

(assert (=> b!7039933 (= lt!2523595 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun lt!2523577 () Unit!161650)

(assert (=> b!7039933 (= lt!2523577 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun e!4232144 () Bool)

(declare-fun e!4232137 () Bool)

(assert (=> b!7039934 (= e!4232144 e!4232137)))

(declare-fun res!2873972 () Bool)

(assert (=> b!7039934 (=> res!2873972 e!4232137)))

(declare-fun lt!2523594 () (InoxSet Context!12962))

(declare-fun derivationStepZipper!2941 ((InoxSet Context!12962) C!35240) (InoxSet Context!12962))

(assert (=> b!7039934 (= res!2873972 (not (= (derivationStepZipper!2941 lt!2523594 (h!74308 s!7408)) lt!2523579)))))

(declare-fun lambda!416490 () Int)

(declare-fun lt!2523575 () Context!12962)

(declare-fun flatMap!2432 ((InoxSet Context!12962) Int) (InoxSet Context!12962))

(assert (=> b!7039934 (= (flatMap!2432 lt!2523594 lambda!416490) (derivationStepZipperUp!2095 lt!2523575 (h!74308 s!7408)))))

(declare-fun lt!2523599 () Unit!161650)

(declare-fun lemmaFlatMapOnSingletonSet!1946 ((InoxSet Context!12962) Context!12962 Int) Unit!161650)

(assert (=> b!7039934 (= lt!2523599 (lemmaFlatMapOnSingletonSet!1946 lt!2523594 lt!2523575 lambda!416490))))

(assert (=> b!7039934 (= lt!2523579 (derivationStepZipperUp!2095 lt!2523575 (h!74308 s!7408)))))

(declare-fun lt!2523591 () Unit!161650)

(assert (=> b!7039934 (= lt!2523591 (lemmaConcatPreservesForall!806 (exprs!6981 lt!2523597) (exprs!6981 ct2!306) lambda!416489))))

(declare-fun b!7039935 () Bool)

(declare-fun res!2873982 () Bool)

(declare-fun e!4232142 () Bool)

(assert (=> b!7039935 (=> (not res!2873982) (not e!4232142))))

(get-info :version)

(assert (=> b!7039935 (= res!2873982 ((_ is Cons!67860) s!7408))))

(declare-fun b!7039936 () Bool)

(declare-fun res!2873978 () Bool)

(assert (=> b!7039936 (=> res!2873978 e!4232137)))

(declare-fun isEmpty!39593 (List!67983) Bool)

(assert (=> b!7039936 (= res!2873978 (isEmpty!39593 (exprs!6981 lt!2523597)))))

(declare-fun b!7039937 () Bool)

(assert (=> b!7039937 (= e!4232137 e!4232140)))

(declare-fun res!2873975 () Bool)

(assert (=> b!7039937 (=> res!2873975 e!4232140)))

(declare-fun nullable!7196 (Regex!17485) Bool)

(assert (=> b!7039937 (= res!2873975 (not (nullable!7196 (h!74307 (exprs!6981 lt!2523597)))))))

(declare-fun lt!2523571 () Context!12962)

(assert (=> b!7039937 (= lt!2523571 (Context!12963 lt!2523585))))

(declare-fun tail!13588 (List!67983) List!67983)

(assert (=> b!7039937 (= lt!2523585 (tail!13588 (exprs!6981 lt!2523597)))))

(declare-fun b!7039938 () Bool)

(declare-fun res!2873979 () Bool)

(assert (=> b!7039938 (=> res!2873979 e!4232139)))

(declare-fun lt!2523578 () Bool)

(assert (=> b!7039938 (= res!2873979 (not lt!2523578))))

(declare-fun e!4232141 () Bool)

(declare-fun e!4232143 () Bool)

(assert (=> b!7039939 (= e!4232141 e!4232143)))

(declare-fun res!2873977 () Bool)

(assert (=> b!7039939 (=> res!2873977 e!4232143)))

(declare-fun lt!2523569 () Context!12962)

(declare-fun z1!570 () (InoxSet Context!12962))

(assert (=> b!7039939 (= res!2873977 (or (not (= lt!2523575 lt!2523569)) (not (select z1!570 lt!2523597))))))

(assert (=> b!7039939 (= lt!2523575 (Context!12963 (++!15547 (exprs!6981 lt!2523597) (exprs!6981 ct2!306))))))

(declare-fun lt!2523596 () Unit!161650)

(assert (=> b!7039939 (= lt!2523596 (lemmaConcatPreservesForall!806 (exprs!6981 lt!2523597) (exprs!6981 ct2!306) lambda!416489))))

(declare-fun lambda!416488 () Int)

(declare-fun mapPost2!326 ((InoxSet Context!12962) Int Context!12962) Context!12962)

(assert (=> b!7039939 (= lt!2523597 (mapPost2!326 z1!570 lambda!416488 lt!2523569))))

(declare-fun b!7039940 () Bool)

(declare-fun e!4232135 () Bool)

(assert (=> b!7039940 (= e!4232135 (not (matchZipper!3025 lt!2523587 (t!381755 s!7408))))))

(declare-fun lt!2523574 () Unit!161650)

(assert (=> b!7039940 (= lt!2523574 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun res!2873986 () Bool)

(assert (=> start!680930 (=> (not res!2873986) (not e!4232142))))

(declare-fun lt!2523590 () (InoxSet Context!12962))

(assert (=> start!680930 (= res!2873986 (matchZipper!3025 lt!2523590 s!7408))))

(declare-fun appendTo!606 ((InoxSet Context!12962) Context!12962) (InoxSet Context!12962))

(assert (=> start!680930 (= lt!2523590 (appendTo!606 z1!570 ct2!306))))

(assert (=> start!680930 e!4232142))

(declare-fun condSetEmpty!49318 () Bool)

(assert (=> start!680930 (= condSetEmpty!49318 (= z1!570 ((as const (Array Context!12962 Bool)) false)))))

(assert (=> start!680930 setRes!49318))

(declare-fun e!4232138 () Bool)

(declare-fun inv!86571 (Context!12962) Bool)

(assert (=> start!680930 (and (inv!86571 ct2!306) e!4232138)))

(assert (=> start!680930 e!4232147))

(declare-fun b!7039941 () Bool)

(declare-fun e!4232136 () Bool)

(declare-fun tp!1937258 () Bool)

(assert (=> b!7039941 (= e!4232136 tp!1937258)))

(assert (=> b!7039942 (= e!4232142 (not e!4232141))))

(declare-fun res!2873987 () Bool)

(assert (=> b!7039942 (=> res!2873987 e!4232141)))

(declare-fun lt!2523573 () (InoxSet Context!12962))

(assert (=> b!7039942 (= res!2873987 (not (matchZipper!3025 lt!2523573 s!7408)))))

(assert (=> b!7039942 (= lt!2523573 (store ((as const (Array Context!12962 Bool)) false) lt!2523569 true))))

(declare-fun lambda!416487 () Int)

(declare-fun getWitness!1504 ((InoxSet Context!12962) Int) Context!12962)

(assert (=> b!7039942 (= lt!2523569 (getWitness!1504 lt!2523590 lambda!416487))))

(declare-datatypes ((List!67985 0))(
  ( (Nil!67861) (Cons!67861 (h!74309 Context!12962) (t!381756 List!67985)) )
))
(declare-fun lt!2523580 () List!67985)

(declare-fun exists!3425 (List!67985 Int) Bool)

(assert (=> b!7039942 (exists!3425 lt!2523580 lambda!416487)))

(declare-fun lt!2523589 () Unit!161650)

(declare-fun lemmaZipperMatchesExistsMatchingContext!424 (List!67985 List!67984) Unit!161650)

(assert (=> b!7039942 (= lt!2523589 (lemmaZipperMatchesExistsMatchingContext!424 lt!2523580 s!7408))))

(declare-fun toList!10828 ((InoxSet Context!12962)) List!67985)

(assert (=> b!7039942 (= lt!2523580 (toList!10828 lt!2523590))))

(declare-fun b!7039943 () Bool)

(declare-fun e!4232145 () Bool)

(assert (=> b!7039943 (= e!4232145 (matchZipper!3025 lt!2523587 (t!381755 s!7408)))))

(declare-fun b!7039944 () Bool)

(declare-fun res!2873974 () Bool)

(assert (=> b!7039944 (=> res!2873974 e!4232137)))

(assert (=> b!7039944 (= res!2873974 (not ((_ is Cons!67859) (exprs!6981 lt!2523597))))))

(declare-fun b!7039945 () Bool)

(declare-fun tp!1937259 () Bool)

(assert (=> b!7039945 (= e!4232138 tp!1937259)))

(declare-fun b!7039946 () Bool)

(assert (=> b!7039946 (= e!4232146 e!4232139)))

(declare-fun res!2873980 () Bool)

(assert (=> b!7039946 (=> res!2873980 e!4232139)))

(assert (=> b!7039946 (= res!2873980 e!4232135)))

(declare-fun res!2873985 () Bool)

(assert (=> b!7039946 (=> (not res!2873985) (not e!4232135))))

(assert (=> b!7039946 (= res!2873985 (not (= lt!2523578 lt!2523592)))))

(assert (=> b!7039946 (= lt!2523578 (matchZipper!3025 lt!2523579 (t!381755 s!7408)))))

(declare-fun lt!2523576 () Unit!161650)

(assert (=> b!7039946 (= lt!2523576 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(assert (=> b!7039946 (= (matchZipper!3025 lt!2523588 (t!381755 s!7408)) e!4232145)))

(declare-fun res!2873976 () Bool)

(assert (=> b!7039946 (=> res!2873976 e!4232145)))

(assert (=> b!7039946 (= res!2873976 lt!2523592)))

(assert (=> b!7039946 (= lt!2523592 (matchZipper!3025 lt!2523567 (t!381755 s!7408)))))

(declare-fun lt!2523584 () Unit!161650)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1558 ((InoxSet Context!12962) (InoxSet Context!12962) List!67984) Unit!161650)

(assert (=> b!7039946 (= lt!2523584 (lemmaZipperConcatMatchesSameAsBothZippers!1558 lt!2523567 lt!2523587 (t!381755 s!7408)))))

(declare-fun lt!2523581 () Unit!161650)

(assert (=> b!7039946 (= lt!2523581 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun lt!2523583 () Unit!161650)

(assert (=> b!7039946 (= lt!2523583 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun b!7039947 () Bool)

(declare-fun res!2873984 () Bool)

(assert (=> b!7039947 (=> res!2873984 e!4232141)))

(assert (=> b!7039947 (= res!2873984 (not (select lt!2523590 lt!2523569)))))

(declare-fun b!7039948 () Bool)

(assert (=> b!7039948 (= e!4232134 true)))

(declare-fun lt!2523570 () Unit!161650)

(assert (=> b!7039948 (= lt!2523570 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(assert (=> b!7039948 (= lt!2523567 (appendTo!606 (derivationStepZipperDown!2149 (h!74307 (exprs!6981 lt!2523597)) lt!2523571 (h!74308 s!7408)) ct2!306))))

(declare-fun lt!2523598 () Unit!161650)

(assert (=> b!7039948 (= lt!2523598 (lemmaConcatPreservesForall!806 lt!2523585 (exprs!6981 ct2!306) lambda!416489))))

(declare-fun lt!2523586 () Unit!161650)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!64 (Context!12962 Regex!17485 C!35240 Context!12962) Unit!161650)

(assert (=> b!7039948 (= lt!2523586 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!64 lt!2523571 (h!74307 (exprs!6981 lt!2523597)) (h!74308 s!7408) ct2!306))))

(declare-fun b!7039949 () Bool)

(assert (=> b!7039949 (= e!4232143 e!4232144)))

(declare-fun res!2873983 () Bool)

(assert (=> b!7039949 (=> res!2873983 e!4232144)))

(assert (=> b!7039949 (= res!2873983 (not (= lt!2523594 lt!2523573)))))

(assert (=> b!7039949 (= lt!2523594 (store ((as const (Array Context!12962 Bool)) false) lt!2523575 true))))

(declare-fun lt!2523568 () Unit!161650)

(assert (=> b!7039949 (= lt!2523568 (lemmaConcatPreservesForall!806 (exprs!6981 lt!2523597) (exprs!6981 ct2!306) lambda!416489))))

(declare-fun setNonEmpty!49318 () Bool)

(declare-fun setElem!49318 () Context!12962)

(declare-fun tp!1937260 () Bool)

(assert (=> setNonEmpty!49318 (= setRes!49318 (and tp!1937260 (inv!86571 setElem!49318) e!4232136))))

(declare-fun setRest!49318 () (InoxSet Context!12962))

(assert (=> setNonEmpty!49318 (= z1!570 ((_ map or) (store ((as const (Array Context!12962 Bool)) false) setElem!49318 true) setRest!49318))))

(assert (= (and start!680930 res!2873986) b!7039935))

(assert (= (and b!7039935 res!2873982) b!7039942))

(assert (= (and b!7039942 (not res!2873987)) b!7039947))

(assert (= (and b!7039947 (not res!2873984)) b!7039939))

(assert (= (and b!7039939 (not res!2873977)) b!7039949))

(assert (= (and b!7039949 (not res!2873983)) b!7039934))

(assert (= (and b!7039934 (not res!2873972)) b!7039944))

(assert (= (and b!7039944 (not res!2873974)) b!7039936))

(assert (= (and b!7039936 (not res!2873978)) b!7039937))

(assert (= (and b!7039937 (not res!2873975)) b!7039933))

(assert (= (and b!7039933 (not res!2873981)) b!7039946))

(assert (= (and b!7039946 (not res!2873976)) b!7039943))

(assert (= (and b!7039946 res!2873985) b!7039940))

(assert (= (and b!7039946 (not res!2873980)) b!7039938))

(assert (= (and b!7039938 (not res!2873979)) b!7039931))

(assert (= (and b!7039931 (not res!2873973)) b!7039932))

(assert (= (and b!7039932 (not res!2873988)) b!7039948))

(assert (= (and start!680930 condSetEmpty!49318) setIsEmpty!49318))

(assert (= (and start!680930 (not condSetEmpty!49318)) setNonEmpty!49318))

(assert (= setNonEmpty!49318 b!7039941))

(assert (= start!680930 b!7039945))

(assert (= (and start!680930 ((_ is Cons!67860) s!7408)) b!7039930))

(declare-fun m!7750836 () Bool)

(assert (=> b!7039932 m!7750836))

(assert (=> b!7039932 m!7750836))

(declare-fun m!7750838 () Bool)

(assert (=> b!7039948 m!7750838))

(declare-fun m!7750840 () Bool)

(assert (=> b!7039948 m!7750840))

(assert (=> b!7039948 m!7750838))

(declare-fun m!7750842 () Bool)

(assert (=> b!7039948 m!7750842))

(assert (=> b!7039948 m!7750836))

(assert (=> b!7039948 m!7750836))

(declare-fun m!7750844 () Bool)

(assert (=> b!7039949 m!7750844))

(declare-fun m!7750846 () Bool)

(assert (=> b!7039949 m!7750846))

(declare-fun m!7750848 () Bool)

(assert (=> b!7039947 m!7750848))

(declare-fun m!7750850 () Bool)

(assert (=> start!680930 m!7750850))

(declare-fun m!7750852 () Bool)

(assert (=> start!680930 m!7750852))

(declare-fun m!7750854 () Bool)

(assert (=> start!680930 m!7750854))

(declare-fun m!7750856 () Bool)

(assert (=> b!7039936 m!7750856))

(declare-fun m!7750858 () Bool)

(assert (=> b!7039946 m!7750858))

(assert (=> b!7039946 m!7750836))

(declare-fun m!7750860 () Bool)

(assert (=> b!7039946 m!7750860))

(assert (=> b!7039946 m!7750836))

(assert (=> b!7039946 m!7750836))

(declare-fun m!7750862 () Bool)

(assert (=> b!7039946 m!7750862))

(declare-fun m!7750864 () Bool)

(assert (=> b!7039946 m!7750864))

(declare-fun m!7750866 () Bool)

(assert (=> setNonEmpty!49318 m!7750866))

(declare-fun m!7750868 () Bool)

(assert (=> b!7039933 m!7750868))

(declare-fun m!7750870 () Bool)

(assert (=> b!7039933 m!7750870))

(assert (=> b!7039933 m!7750836))

(declare-fun m!7750872 () Bool)

(assert (=> b!7039933 m!7750872))

(assert (=> b!7039933 m!7750836))

(declare-fun m!7750874 () Bool)

(assert (=> b!7039940 m!7750874))

(assert (=> b!7039940 m!7750836))

(assert (=> b!7039934 m!7750846))

(declare-fun m!7750876 () Bool)

(assert (=> b!7039934 m!7750876))

(declare-fun m!7750878 () Bool)

(assert (=> b!7039934 m!7750878))

(declare-fun m!7750880 () Bool)

(assert (=> b!7039934 m!7750880))

(declare-fun m!7750882 () Bool)

(assert (=> b!7039934 m!7750882))

(declare-fun m!7750884 () Bool)

(assert (=> b!7039942 m!7750884))

(declare-fun m!7750886 () Bool)

(assert (=> b!7039942 m!7750886))

(declare-fun m!7750888 () Bool)

(assert (=> b!7039942 m!7750888))

(declare-fun m!7750890 () Bool)

(assert (=> b!7039942 m!7750890))

(declare-fun m!7750892 () Bool)

(assert (=> b!7039942 m!7750892))

(declare-fun m!7750894 () Bool)

(assert (=> b!7039942 m!7750894))

(assert (=> b!7039931 m!7750874))

(assert (=> b!7039931 m!7750836))

(assert (=> b!7039943 m!7750874))

(declare-fun m!7750896 () Bool)

(assert (=> b!7039939 m!7750896))

(declare-fun m!7750898 () Bool)

(assert (=> b!7039939 m!7750898))

(assert (=> b!7039939 m!7750846))

(declare-fun m!7750900 () Bool)

(assert (=> b!7039939 m!7750900))

(declare-fun m!7750902 () Bool)

(assert (=> b!7039937 m!7750902))

(declare-fun m!7750904 () Bool)

(assert (=> b!7039937 m!7750904))

(check-sat (not b!7039946) (not b!7039948) (not b!7039931) tp_is_empty!44195 (not b!7039943) (not start!680930) (not b!7039930) (not setNonEmpty!49318) (not b!7039949) (not b!7039945) (not b!7039939) (not b!7039933) (not b!7039942) (not b!7039937) (not b!7039936) (not b!7039932) (not b!7039940) (not b!7039934) (not b!7039941))
(check-sat)
