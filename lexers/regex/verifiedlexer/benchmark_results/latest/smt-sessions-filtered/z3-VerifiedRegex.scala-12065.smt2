; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676902 () Bool)

(assert start!676902)

(declare-fun b!7019832 () Bool)

(assert (=> b!7019832 true))

(declare-fun b!7019835 () Bool)

(assert (=> b!7019835 true))

(declare-fun b!7019842 () Bool)

(assert (=> b!7019842 true))

(declare-fun e!4219746 () Bool)

(declare-fun e!4219747 () Bool)

(assert (=> b!7019832 (= e!4219746 (not e!4219747))))

(declare-fun res!2865283 () Bool)

(assert (=> b!7019832 (=> res!2865283 e!4219747)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!35024 0))(
  ( (C!35025 (val!27214 Int)) )
))
(declare-datatypes ((Regex!17377 0))(
  ( (ElementMatch!17377 (c!1304540 C!35024)) (Concat!26222 (regOne!35266 Regex!17377) (regTwo!35266 Regex!17377)) (EmptyExpr!17377) (Star!17377 (reg!17706 Regex!17377)) (EmptyLang!17377) (Union!17377 (regOne!35267 Regex!17377) (regTwo!35267 Regex!17377)) )
))
(declare-datatypes ((List!67676 0))(
  ( (Nil!67552) (Cons!67552 (h!74000 Regex!17377) (t!381431 List!67676)) )
))
(declare-datatypes ((Context!12746 0))(
  ( (Context!12747 (exprs!6873 List!67676)) )
))
(declare-fun lt!2510992 () (InoxSet Context!12746))

(declare-datatypes ((List!67677 0))(
  ( (Nil!67553) (Cons!67553 (h!74001 C!35024) (t!381432 List!67677)) )
))
(declare-fun s!7408 () List!67677)

(declare-fun matchZipper!2917 ((InoxSet Context!12746) List!67677) Bool)

(assert (=> b!7019832 (= res!2865283 (not (matchZipper!2917 lt!2510992 s!7408)))))

(declare-fun lt!2510993 () Context!12746)

(assert (=> b!7019832 (= lt!2510992 (store ((as const (Array Context!12746 Bool)) false) lt!2510993 true))))

(declare-fun lt!2510986 () (InoxSet Context!12746))

(declare-fun lambda!411002 () Int)

(declare-fun getWitness!1345 ((InoxSet Context!12746) Int) Context!12746)

(assert (=> b!7019832 (= lt!2510993 (getWitness!1345 lt!2510986 lambda!411002))))

(declare-datatypes ((List!67678 0))(
  ( (Nil!67554) (Cons!67554 (h!74002 Context!12746) (t!381433 List!67678)) )
))
(declare-fun lt!2510989 () List!67678)

(declare-fun exists!3256 (List!67678 Int) Bool)

(assert (=> b!7019832 (exists!3256 lt!2510989 lambda!411002)))

(declare-datatypes ((Unit!161436 0))(
  ( (Unit!161437) )
))
(declare-fun lt!2510984 () Unit!161436)

(declare-fun lemmaZipperMatchesExistsMatchingContext!346 (List!67678 List!67677) Unit!161436)

(assert (=> b!7019832 (= lt!2510984 (lemmaZipperMatchesExistsMatchingContext!346 lt!2510989 s!7408))))

(declare-fun toList!10737 ((InoxSet Context!12746)) List!67678)

(assert (=> b!7019832 (= lt!2510989 (toList!10737 lt!2510986))))

(declare-fun b!7019833 () Bool)

(declare-fun e!4219753 () Bool)

(declare-fun e!4219754 () Bool)

(assert (=> b!7019833 (= e!4219753 e!4219754)))

(declare-fun res!2865279 () Bool)

(assert (=> b!7019833 (=> res!2865279 e!4219754)))

(declare-fun lt!2510995 () (InoxSet Context!12746))

(assert (=> b!7019833 (= res!2865279 (not (= lt!2510995 lt!2510992)))))

(declare-fun lt!2510982 () Context!12746)

(assert (=> b!7019833 (= lt!2510995 (store ((as const (Array Context!12746 Bool)) false) lt!2510982 true))))

(declare-fun lt!2510988 () Context!12746)

(declare-fun ct2!306 () Context!12746)

(declare-fun lambda!411004 () Int)

(declare-fun lt!2510996 () Unit!161436)

(declare-fun lemmaConcatPreservesForall!713 (List!67676 List!67676 Int) Unit!161436)

(assert (=> b!7019833 (= lt!2510996 (lemmaConcatPreservesForall!713 (exprs!6873 lt!2510988) (exprs!6873 ct2!306) lambda!411004))))

(declare-fun b!7019834 () Bool)

(declare-fun res!2865286 () Bool)

(assert (=> b!7019834 (=> (not res!2865286) (not e!4219746))))

(get-info :version)

(assert (=> b!7019834 (= res!2865286 ((_ is Cons!67553) s!7408))))

(assert (=> b!7019835 (= e!4219747 e!4219753)))

(declare-fun res!2865285 () Bool)

(assert (=> b!7019835 (=> res!2865285 e!4219753)))

(declare-fun z1!570 () (InoxSet Context!12746))

(assert (=> b!7019835 (= res!2865285 (or (not (= lt!2510982 lt!2510993)) (not (select z1!570 lt!2510988))))))

(declare-fun ++!15413 (List!67676 List!67676) List!67676)

(assert (=> b!7019835 (= lt!2510982 (Context!12747 (++!15413 (exprs!6873 lt!2510988) (exprs!6873 ct2!306))))))

(declare-fun lt!2510990 () Unit!161436)

(assert (=> b!7019835 (= lt!2510990 (lemmaConcatPreservesForall!713 (exprs!6873 lt!2510988) (exprs!6873 ct2!306) lambda!411004))))

(declare-fun lambda!411003 () Int)

(declare-fun mapPost2!232 ((InoxSet Context!12746) Int Context!12746) Context!12746)

(assert (=> b!7019835 (= lt!2510988 (mapPost2!232 z1!570 lambda!411003 lt!2510993))))

(declare-fun b!7019836 () Bool)

(declare-fun e!4219748 () Bool)

(assert (=> b!7019836 (= e!4219748 true)))

(declare-fun lt!2510994 () Bool)

(assert (=> b!7019836 (= lt!2510994 (matchZipper!2917 (store ((as const (Array Context!12746 Bool)) false) ct2!306 true) s!7408))))

(declare-fun res!2865280 () Bool)

(assert (=> start!676902 (=> (not res!2865280) (not e!4219746))))

(assert (=> start!676902 (= res!2865280 (matchZipper!2917 lt!2510986 s!7408))))

(declare-fun appendTo!498 ((InoxSet Context!12746) Context!12746) (InoxSet Context!12746))

(assert (=> start!676902 (= lt!2510986 (appendTo!498 z1!570 ct2!306))))

(assert (=> start!676902 e!4219746))

(declare-fun condSetEmpty!48648 () Bool)

(assert (=> start!676902 (= condSetEmpty!48648 (= z1!570 ((as const (Array Context!12746 Bool)) false)))))

(declare-fun setRes!48648 () Bool)

(assert (=> start!676902 setRes!48648))

(declare-fun e!4219750 () Bool)

(declare-fun inv!86301 (Context!12746) Bool)

(assert (=> start!676902 (and (inv!86301 ct2!306) e!4219750)))

(declare-fun e!4219749 () Bool)

(assert (=> start!676902 e!4219749))

(declare-fun tp!1933799 () Bool)

(declare-fun setNonEmpty!48648 () Bool)

(declare-fun e!4219751 () Bool)

(declare-fun setElem!48648 () Context!12746)

(assert (=> setNonEmpty!48648 (= setRes!48648 (and tp!1933799 (inv!86301 setElem!48648) e!4219751))))

(declare-fun setRest!48648 () (InoxSet Context!12746))

(assert (=> setNonEmpty!48648 (= z1!570 ((_ map or) (store ((as const (Array Context!12746 Bool)) false) setElem!48648 true) setRest!48648))))

(declare-fun b!7019837 () Bool)

(declare-fun tp!1933801 () Bool)

(assert (=> b!7019837 (= e!4219751 tp!1933801)))

(declare-fun b!7019838 () Bool)

(declare-fun res!2865282 () Bool)

(declare-fun e!4219752 () Bool)

(assert (=> b!7019838 (=> res!2865282 e!4219752)))

(assert (=> b!7019838 (= res!2865282 ((_ is Cons!67552) (exprs!6873 lt!2510988)))))

(declare-fun b!7019839 () Bool)

(assert (=> b!7019839 (= e!4219752 e!4219748)))

(declare-fun res!2865287 () Bool)

(assert (=> b!7019839 (=> res!2865287 e!4219748)))

(assert (=> b!7019839 (= res!2865287 (not (= lt!2510982 ct2!306)))))

(declare-fun lt!2510983 () Unit!161436)

(assert (=> b!7019839 (= lt!2510983 (lemmaConcatPreservesForall!713 (exprs!6873 lt!2510988) (exprs!6873 ct2!306) lambda!411004))))

(declare-fun b!7019840 () Bool)

(declare-fun tp_is_empty!43979 () Bool)

(declare-fun tp!1933800 () Bool)

(assert (=> b!7019840 (= e!4219749 (and tp_is_empty!43979 tp!1933800))))

(declare-fun b!7019841 () Bool)

(declare-fun res!2865284 () Bool)

(assert (=> b!7019841 (=> res!2865284 e!4219747)))

(assert (=> b!7019841 (= res!2865284 (not (select lt!2510986 lt!2510993)))))

(declare-fun setIsEmpty!48648 () Bool)

(assert (=> setIsEmpty!48648 setRes!48648))

(assert (=> b!7019842 (= e!4219754 e!4219752)))

(declare-fun res!2865281 () Bool)

(assert (=> b!7019842 (=> res!2865281 e!4219752)))

(declare-fun lt!2510985 () (InoxSet Context!12746))

(declare-fun derivationStepZipper!2857 ((InoxSet Context!12746) C!35024) (InoxSet Context!12746))

(assert (=> b!7019842 (= res!2865281 (not (= (derivationStepZipper!2857 lt!2510995 (h!74001 s!7408)) lt!2510985)))))

(declare-fun lambda!411005 () Int)

(declare-fun flatMap!2363 ((InoxSet Context!12746) Int) (InoxSet Context!12746))

(declare-fun derivationStepZipperUp!2027 (Context!12746 C!35024) (InoxSet Context!12746))

(assert (=> b!7019842 (= (flatMap!2363 lt!2510995 lambda!411005) (derivationStepZipperUp!2027 lt!2510982 (h!74001 s!7408)))))

(declare-fun lt!2510991 () Unit!161436)

(declare-fun lemmaFlatMapOnSingletonSet!1878 ((InoxSet Context!12746) Context!12746 Int) Unit!161436)

(assert (=> b!7019842 (= lt!2510991 (lemmaFlatMapOnSingletonSet!1878 lt!2510995 lt!2510982 lambda!411005))))

(assert (=> b!7019842 (= lt!2510985 (derivationStepZipperUp!2027 lt!2510982 (h!74001 s!7408)))))

(declare-fun lt!2510987 () Unit!161436)

(assert (=> b!7019842 (= lt!2510987 (lemmaConcatPreservesForall!713 (exprs!6873 lt!2510988) (exprs!6873 ct2!306) lambda!411004))))

(declare-fun b!7019843 () Bool)

(declare-fun tp!1933798 () Bool)

(assert (=> b!7019843 (= e!4219750 tp!1933798)))

(assert (= (and start!676902 res!2865280) b!7019834))

(assert (= (and b!7019834 res!2865286) b!7019832))

(assert (= (and b!7019832 (not res!2865283)) b!7019841))

(assert (= (and b!7019841 (not res!2865284)) b!7019835))

(assert (= (and b!7019835 (not res!2865285)) b!7019833))

(assert (= (and b!7019833 (not res!2865279)) b!7019842))

(assert (= (and b!7019842 (not res!2865281)) b!7019838))

(assert (= (and b!7019838 (not res!2865282)) b!7019839))

(assert (= (and b!7019839 (not res!2865287)) b!7019836))

(assert (= (and start!676902 condSetEmpty!48648) setIsEmpty!48648))

(assert (= (and start!676902 (not condSetEmpty!48648)) setNonEmpty!48648))

(assert (= setNonEmpty!48648 b!7019837))

(assert (= start!676902 b!7019843))

(assert (= (and start!676902 ((_ is Cons!67553) s!7408)) b!7019840))

(declare-fun m!7721196 () Bool)

(assert (=> b!7019832 m!7721196))

(declare-fun m!7721198 () Bool)

(assert (=> b!7019832 m!7721198))

(declare-fun m!7721200 () Bool)

(assert (=> b!7019832 m!7721200))

(declare-fun m!7721202 () Bool)

(assert (=> b!7019832 m!7721202))

(declare-fun m!7721204 () Bool)

(assert (=> b!7019832 m!7721204))

(declare-fun m!7721206 () Bool)

(assert (=> b!7019832 m!7721206))

(declare-fun m!7721208 () Bool)

(assert (=> b!7019841 m!7721208))

(declare-fun m!7721210 () Bool)

(assert (=> b!7019836 m!7721210))

(assert (=> b!7019836 m!7721210))

(declare-fun m!7721212 () Bool)

(assert (=> b!7019836 m!7721212))

(declare-fun m!7721214 () Bool)

(assert (=> b!7019839 m!7721214))

(declare-fun m!7721216 () Bool)

(assert (=> b!7019842 m!7721216))

(declare-fun m!7721218 () Bool)

(assert (=> b!7019842 m!7721218))

(assert (=> b!7019842 m!7721214))

(declare-fun m!7721220 () Bool)

(assert (=> b!7019842 m!7721220))

(declare-fun m!7721222 () Bool)

(assert (=> b!7019842 m!7721222))

(declare-fun m!7721224 () Bool)

(assert (=> setNonEmpty!48648 m!7721224))

(declare-fun m!7721226 () Bool)

(assert (=> b!7019835 m!7721226))

(declare-fun m!7721228 () Bool)

(assert (=> b!7019835 m!7721228))

(assert (=> b!7019835 m!7721214))

(declare-fun m!7721230 () Bool)

(assert (=> b!7019835 m!7721230))

(declare-fun m!7721232 () Bool)

(assert (=> start!676902 m!7721232))

(declare-fun m!7721234 () Bool)

(assert (=> start!676902 m!7721234))

(declare-fun m!7721236 () Bool)

(assert (=> start!676902 m!7721236))

(declare-fun m!7721238 () Bool)

(assert (=> b!7019833 m!7721238))

(assert (=> b!7019833 m!7721214))

(check-sat (not b!7019837) (not b!7019835) (not b!7019833) (not setNonEmpty!48648) (not b!7019842) (not b!7019843) (not start!676902) (not b!7019836) (not b!7019832) (not b!7019840) (not b!7019839) tp_is_empty!43979)
(check-sat)
