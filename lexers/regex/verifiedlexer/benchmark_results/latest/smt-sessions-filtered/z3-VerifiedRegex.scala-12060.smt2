; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676646 () Bool)

(assert start!676646)

(declare-fun b!7018629 () Bool)

(assert (=> b!7018629 true))

(declare-fun b!7018635 () Bool)

(assert (=> b!7018635 true))

(declare-fun b!7018636 () Bool)

(assert (=> b!7018636 true))

(declare-fun bs!1867190 () Bool)

(declare-fun b!7018643 () Bool)

(assert (= bs!1867190 (and b!7018643 b!7018629)))

(declare-fun lambda!410629 () Int)

(declare-datatypes ((C!35004 0))(
  ( (C!35005 (val!27204 Int)) )
))
(declare-datatypes ((List!67646 0))(
  ( (Nil!67522) (Cons!67522 (h!73970 C!35004) (t!381401 List!67646)) )
))
(declare-fun lt!2510063 () List!67646)

(declare-fun lambda!410633 () Int)

(declare-fun s!7408 () List!67646)

(assert (=> bs!1867190 (= (= lt!2510063 s!7408) (= lambda!410633 lambda!410629))))

(assert (=> b!7018643 true))

(declare-fun b!7018628 () Bool)

(declare-fun e!4219027 () Bool)

(declare-fun tp!1933577 () Bool)

(assert (=> b!7018628 (= e!4219027 tp!1933577)))

(declare-fun e!4219034 () Bool)

(declare-fun e!4219025 () Bool)

(assert (=> b!7018629 (= e!4219034 (not e!4219025))))

(declare-fun res!2864691 () Bool)

(assert (=> b!7018629 (=> res!2864691 e!4219025)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!17367 0))(
  ( (ElementMatch!17367 (c!1304230 C!35004)) (Concat!26212 (regOne!35246 Regex!17367) (regTwo!35246 Regex!17367)) (EmptyExpr!17367) (Star!17367 (reg!17696 Regex!17367)) (EmptyLang!17367) (Union!17367 (regOne!35247 Regex!17367) (regTwo!35247 Regex!17367)) )
))
(declare-datatypes ((List!67647 0))(
  ( (Nil!67523) (Cons!67523 (h!73971 Regex!17367) (t!381402 List!67647)) )
))
(declare-datatypes ((Context!12726 0))(
  ( (Context!12727 (exprs!6863 List!67647)) )
))
(declare-fun lt!2510062 () (InoxSet Context!12726))

(declare-fun matchZipper!2907 ((InoxSet Context!12726) List!67646) Bool)

(assert (=> b!7018629 (= res!2864691 (not (matchZipper!2907 lt!2510062 s!7408)))))

(declare-fun lt!2510068 () Context!12726)

(assert (=> b!7018629 (= lt!2510062 (store ((as const (Array Context!12726 Bool)) false) lt!2510068 true))))

(declare-fun lt!2510057 () (InoxSet Context!12726))

(declare-fun getWitness!1331 ((InoxSet Context!12726) Int) Context!12726)

(assert (=> b!7018629 (= lt!2510068 (getWitness!1331 lt!2510057 lambda!410629))))

(declare-datatypes ((List!67648 0))(
  ( (Nil!67524) (Cons!67524 (h!73972 Context!12726) (t!381403 List!67648)) )
))
(declare-fun lt!2510085 () List!67648)

(declare-fun exists!3239 (List!67648 Int) Bool)

(assert (=> b!7018629 (exists!3239 lt!2510085 lambda!410629)))

(declare-datatypes ((Unit!161416 0))(
  ( (Unit!161417) )
))
(declare-fun lt!2510060 () Unit!161416)

(declare-fun lemmaZipperMatchesExistsMatchingContext!336 (List!67648 List!67646) Unit!161416)

(assert (=> b!7018629 (= lt!2510060 (lemmaZipperMatchesExistsMatchingContext!336 lt!2510085 s!7408))))

(declare-fun toList!10727 ((InoxSet Context!12726)) List!67648)

(assert (=> b!7018629 (= lt!2510085 (toList!10727 lt!2510057))))

(declare-fun b!7018630 () Bool)

(declare-fun e!4219035 () Bool)

(declare-fun e!4219028 () Bool)

(assert (=> b!7018630 (= e!4219035 e!4219028)))

(declare-fun res!2864690 () Bool)

(assert (=> b!7018630 (=> res!2864690 e!4219028)))

(declare-fun lt!2510058 () (InoxSet Context!12726))

(declare-fun lt!2510076 () (InoxSet Context!12726))

(declare-fun lt!2510067 () (InoxSet Context!12726))

(assert (=> b!7018630 (= res!2864690 (or (not (= lt!2510058 lt!2510076)) (not (= lt!2510058 lt!2510067))))))

(declare-fun lt!2510084 () (InoxSet Context!12726))

(declare-fun lt!2510075 () Context!12726)

(declare-fun lambda!410632 () Int)

(declare-fun flatMap!2353 ((InoxSet Context!12726) Int) (InoxSet Context!12726))

(declare-fun derivationStepZipperUp!2017 (Context!12726 C!35004) (InoxSet Context!12726))

(assert (=> b!7018630 (= (flatMap!2353 lt!2510084 lambda!410632) (derivationStepZipperUp!2017 lt!2510075 (h!73970 s!7408)))))

(declare-fun lt!2510080 () Unit!161416)

(declare-fun lemmaFlatMapOnSingletonSet!1868 ((InoxSet Context!12726) Context!12726 Int) Unit!161416)

(assert (=> b!7018630 (= lt!2510080 (lemmaFlatMapOnSingletonSet!1868 lt!2510084 lt!2510075 lambda!410632))))

(assert (=> b!7018630 (= lt!2510076 (derivationStepZipperUp!2017 lt!2510075 (h!73970 s!7408)))))

(declare-fun derivationStepZipper!2847 ((InoxSet Context!12726) C!35004) (InoxSet Context!12726))

(assert (=> b!7018630 (= lt!2510058 (derivationStepZipper!2847 lt!2510084 (h!73970 s!7408)))))

(assert (=> b!7018630 (= lt!2510084 (store ((as const (Array Context!12726 Bool)) false) lt!2510075 true))))

(declare-fun b!7018631 () Bool)

(declare-fun res!2864696 () Bool)

(assert (=> b!7018631 (=> res!2864696 e!4219035)))

(declare-datatypes ((tuple2!68016 0))(
  ( (tuple2!68017 (_1!37311 List!67646) (_2!37311 List!67646)) )
))
(declare-fun lt!2510074 () tuple2!68016)

(declare-fun ++!15398 (List!67646 List!67646) List!67646)

(assert (=> b!7018631 (= res!2864696 (not (= (++!15398 (_1!37311 lt!2510074) (_2!37311 lt!2510074)) (t!381401 s!7408))))))

(declare-fun setElem!48600 () Context!12726)

(declare-fun setRes!48600 () Bool)

(declare-fun e!4219029 () Bool)

(declare-fun tp!1933578 () Bool)

(declare-fun setNonEmpty!48600 () Bool)

(declare-fun inv!86276 (Context!12726) Bool)

(assert (=> setNonEmpty!48600 (= setRes!48600 (and tp!1933578 (inv!86276 setElem!48600) e!4219029))))

(declare-fun z1!570 () (InoxSet Context!12726))

(declare-fun setRest!48600 () (InoxSet Context!12726))

(assert (=> setNonEmpty!48600 (= z1!570 ((_ map or) (store ((as const (Array Context!12726 Bool)) false) setElem!48600 true) setRest!48600))))

(declare-fun b!7018632 () Bool)

(declare-fun res!2864684 () Bool)

(assert (=> b!7018632 (=> (not res!2864684) (not e!4219034))))

(get-info :version)

(assert (=> b!7018632 (= res!2864684 ((_ is Cons!67522) s!7408))))

(declare-fun b!7018633 () Bool)

(declare-fun e!4219036 () Bool)

(declare-fun e!4219033 () Bool)

(assert (=> b!7018633 (= e!4219036 e!4219033)))

(declare-fun res!2864681 () Bool)

(assert (=> b!7018633 (=> res!2864681 e!4219033)))

(declare-fun lt!2510072 () (InoxSet Context!12726))

(assert (=> b!7018633 (= res!2864681 (not (matchZipper!2907 lt!2510072 (t!381401 s!7408))))))

(declare-fun lt!2510088 () List!67647)

(declare-fun ct2!306 () Context!12726)

(declare-fun derivationStepZipperDown!2085 (Regex!17367 Context!12726 C!35004) (InoxSet Context!12726))

(declare-fun ++!15399 (List!67647 List!67647) List!67647)

(assert (=> b!7018633 (= lt!2510072 (derivationStepZipperDown!2085 (h!73971 (exprs!6863 lt!2510075)) (Context!12727 (++!15399 lt!2510088 (exprs!6863 ct2!306))) (h!73970 s!7408)))))

(declare-fun lt!2510069 () Unit!161416)

(declare-fun lambda!410631 () Int)

(declare-fun lemmaConcatPreservesForall!703 (List!67647 List!67647 Int) Unit!161416)

(assert (=> b!7018633 (= lt!2510069 (lemmaConcatPreservesForall!703 lt!2510088 (exprs!6863 ct2!306) lambda!410631))))

(declare-fun b!7018634 () Bool)

(assert (=> b!7018634 (= e!4219033 e!4219035)))

(declare-fun res!2864686 () Bool)

(assert (=> b!7018634 (=> res!2864686 e!4219035)))

(assert (=> b!7018634 (= res!2864686 (not (matchZipper!2907 lt!2510067 (_1!37311 lt!2510074))))))

(declare-datatypes ((Option!16840 0))(
  ( (None!16839) (Some!16839 (v!53117 tuple2!68016)) )
))
(declare-fun lt!2510073 () Option!16840)

(declare-fun get!23682 (Option!16840) tuple2!68016)

(assert (=> b!7018634 (= lt!2510074 (get!23682 lt!2510073))))

(declare-fun isDefined!13541 (Option!16840) Bool)

(assert (=> b!7018634 (isDefined!13541 lt!2510073)))

(declare-fun lt!2510066 () (InoxSet Context!12726))

(declare-fun findConcatSeparationZippers!356 ((InoxSet Context!12726) (InoxSet Context!12726) List!67646 List!67646 List!67646) Option!16840)

(assert (=> b!7018634 (= lt!2510073 (findConcatSeparationZippers!356 lt!2510067 lt!2510066 Nil!67522 (t!381401 s!7408) (t!381401 s!7408)))))

(assert (=> b!7018634 (= lt!2510066 (store ((as const (Array Context!12726 Bool)) false) ct2!306 true))))

(declare-fun lt!2510079 () Unit!161416)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!356 ((InoxSet Context!12726) Context!12726 List!67646) Unit!161416)

(assert (=> b!7018634 (= lt!2510079 (lemmaConcatZipperMatchesStringThenFindConcatDefined!356 lt!2510067 ct2!306 (t!381401 s!7408)))))

(declare-fun appendTo!488 ((InoxSet Context!12726) Context!12726) (InoxSet Context!12726))

(assert (=> b!7018634 (= lt!2510072 (appendTo!488 lt!2510067 ct2!306))))

(declare-fun lt!2510081 () Context!12726)

(assert (=> b!7018634 (= lt!2510067 (derivationStepZipperDown!2085 (h!73971 (exprs!6863 lt!2510075)) lt!2510081 (h!73970 s!7408)))))

(declare-fun lt!2510077 () Unit!161416)

(assert (=> b!7018634 (= lt!2510077 (lemmaConcatPreservesForall!703 lt!2510088 (exprs!6863 ct2!306) lambda!410631))))

(declare-fun lt!2510064 () Unit!161416)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!58 (Context!12726 Regex!17367 C!35004 Context!12726) Unit!161416)

(assert (=> b!7018634 (= lt!2510064 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!58 lt!2510081 (h!73971 (exprs!6863 lt!2510075)) (h!73970 s!7408) ct2!306))))

(declare-fun e!4219023 () Bool)

(assert (=> b!7018635 (= e!4219025 e!4219023)))

(declare-fun res!2864692 () Bool)

(assert (=> b!7018635 (=> res!2864692 e!4219023)))

(declare-fun lt!2510059 () Context!12726)

(assert (=> b!7018635 (= res!2864692 (or (not (= lt!2510059 lt!2510068)) (not (select z1!570 lt!2510075))))))

(assert (=> b!7018635 (= lt!2510059 (Context!12727 (++!15399 (exprs!6863 lt!2510075) (exprs!6863 ct2!306))))))

(declare-fun lt!2510078 () Unit!161416)

(assert (=> b!7018635 (= lt!2510078 (lemmaConcatPreservesForall!703 (exprs!6863 lt!2510075) (exprs!6863 ct2!306) lambda!410631))))

(declare-fun lambda!410630 () Int)

(declare-fun mapPost2!222 ((InoxSet Context!12726) Int Context!12726) Context!12726)

(assert (=> b!7018635 (= lt!2510075 (mapPost2!222 z1!570 lambda!410630 lt!2510068))))

(declare-fun e!4219032 () Bool)

(declare-fun e!4219030 () Bool)

(assert (=> b!7018636 (= e!4219032 e!4219030)))

(declare-fun res!2864688 () Bool)

(assert (=> b!7018636 (=> res!2864688 e!4219030)))

(declare-fun lt!2510082 () (InoxSet Context!12726))

(declare-fun lt!2510087 () (InoxSet Context!12726))

(assert (=> b!7018636 (= res!2864688 (not (= (derivationStepZipper!2847 lt!2510087 (h!73970 s!7408)) lt!2510082)))))

(assert (=> b!7018636 (= (flatMap!2353 lt!2510087 lambda!410632) (derivationStepZipperUp!2017 lt!2510059 (h!73970 s!7408)))))

(declare-fun lt!2510086 () Unit!161416)

(assert (=> b!7018636 (= lt!2510086 (lemmaFlatMapOnSingletonSet!1868 lt!2510087 lt!2510059 lambda!410632))))

(assert (=> b!7018636 (= lt!2510082 (derivationStepZipperUp!2017 lt!2510059 (h!73970 s!7408)))))

(declare-fun lt!2510071 () Unit!161416)

(assert (=> b!7018636 (= lt!2510071 (lemmaConcatPreservesForall!703 (exprs!6863 lt!2510075) (exprs!6863 ct2!306) lambda!410631))))

(declare-fun b!7018638 () Bool)

(declare-fun res!2864689 () Bool)

(assert (=> b!7018638 (=> res!2864689 e!4219025)))

(assert (=> b!7018638 (= res!2864689 (not (select lt!2510057 lt!2510068)))))

(declare-fun b!7018639 () Bool)

(declare-fun e!4219031 () Bool)

(declare-fun lt!2510061 () List!67648)

(assert (=> b!7018639 (= e!4219031 (exists!3239 lt!2510061 lambda!410633))))

(declare-fun setIsEmpty!48600 () Bool)

(assert (=> setIsEmpty!48600 setRes!48600))

(declare-fun b!7018640 () Bool)

(declare-fun e!4219026 () Bool)

(assert (=> b!7018640 (= e!4219028 e!4219026)))

(declare-fun res!2864697 () Bool)

(assert (=> b!7018640 (=> res!2864697 e!4219026)))

(assert (=> b!7018640 (= res!2864697 (not (matchZipper!2907 lt!2510084 lt!2510063)))))

(assert (=> b!7018640 (= lt!2510063 (Cons!67522 (h!73970 s!7408) (_1!37311 lt!2510074)))))

(declare-fun b!7018641 () Bool)

(declare-fun res!2864687 () Bool)

(assert (=> b!7018641 (=> res!2864687 e!4219030)))

(declare-fun isEmpty!39436 (List!67647) Bool)

(assert (=> b!7018641 (= res!2864687 (isEmpty!39436 (exprs!6863 lt!2510075)))))

(declare-fun b!7018642 () Bool)

(declare-fun res!2864682 () Bool)

(assert (=> b!7018642 (=> res!2864682 e!4219030)))

(assert (=> b!7018642 (= res!2864682 (not ((_ is Cons!67523) (exprs!6863 lt!2510075))))))

(assert (=> b!7018643 (= e!4219026 e!4219031)))

(declare-fun res!2864694 () Bool)

(assert (=> b!7018643 (=> res!2864694 e!4219031)))

(assert (=> b!7018643 (= res!2864694 (not (exists!3239 lt!2510061 lambda!410633)))))

(assert (=> b!7018643 (= lt!2510061 (toList!10727 z1!570))))

(declare-fun exists!3240 ((InoxSet Context!12726) Int) Bool)

(assert (=> b!7018643 (exists!3240 z1!570 lambda!410633)))

(declare-fun lt!2510083 () Unit!161416)

(declare-fun lemmaContainsThenExists!101 ((InoxSet Context!12726) Context!12726 Int) Unit!161416)

(assert (=> b!7018643 (= lt!2510083 (lemmaContainsThenExists!101 z1!570 lt!2510075 lambda!410633))))

(assert (=> b!7018643 (isDefined!13541 (findConcatSeparationZippers!356 lt!2510084 lt!2510066 Nil!67522 s!7408 s!7408))))

(declare-fun lt!2510070 () Unit!161416)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!28 ((InoxSet Context!12726) (InoxSet Context!12726) List!67646 List!67646 List!67646 List!67646 List!67646) Unit!161416)

(assert (=> b!7018643 (= lt!2510070 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!28 lt!2510084 lt!2510066 lt!2510063 (_2!37311 lt!2510074) s!7408 Nil!67522 s!7408))))

(declare-fun b!7018644 () Bool)

(assert (=> b!7018644 (= e!4219030 e!4219036)))

(declare-fun res!2864685 () Bool)

(assert (=> b!7018644 (=> res!2864685 e!4219036)))

(declare-fun nullable!7127 (Regex!17367) Bool)

(assert (=> b!7018644 (= res!2864685 (nullable!7127 (h!73971 (exprs!6863 lt!2510075))))))

(assert (=> b!7018644 (= lt!2510081 (Context!12727 lt!2510088))))

(declare-fun tail!13465 (List!67647) List!67647)

(assert (=> b!7018644 (= lt!2510088 (tail!13465 (exprs!6863 lt!2510075)))))

(declare-fun b!7018645 () Bool)

(assert (=> b!7018645 (= e!4219023 e!4219032)))

(declare-fun res!2864695 () Bool)

(assert (=> b!7018645 (=> res!2864695 e!4219032)))

(assert (=> b!7018645 (= res!2864695 (not (= lt!2510087 lt!2510062)))))

(assert (=> b!7018645 (= lt!2510087 (store ((as const (Array Context!12726 Bool)) false) lt!2510059 true))))

(declare-fun lt!2510065 () Unit!161416)

(assert (=> b!7018645 (= lt!2510065 (lemmaConcatPreservesForall!703 (exprs!6863 lt!2510075) (exprs!6863 ct2!306) lambda!410631))))

(declare-fun res!2864693 () Bool)

(assert (=> start!676646 (=> (not res!2864693) (not e!4219034))))

(assert (=> start!676646 (= res!2864693 (matchZipper!2907 lt!2510057 s!7408))))

(assert (=> start!676646 (= lt!2510057 (appendTo!488 z1!570 ct2!306))))

(assert (=> start!676646 e!4219034))

(declare-fun condSetEmpty!48600 () Bool)

(assert (=> start!676646 (= condSetEmpty!48600 (= z1!570 ((as const (Array Context!12726 Bool)) false)))))

(assert (=> start!676646 setRes!48600))

(assert (=> start!676646 (and (inv!86276 ct2!306) e!4219027)))

(declare-fun e!4219024 () Bool)

(assert (=> start!676646 e!4219024))

(declare-fun b!7018637 () Bool)

(declare-fun res!2864683 () Bool)

(assert (=> b!7018637 (=> res!2864683 e!4219035)))

(assert (=> b!7018637 (= res!2864683 (not (matchZipper!2907 lt!2510066 (_2!37311 lt!2510074))))))

(declare-fun b!7018646 () Bool)

(declare-fun tp_is_empty!43959 () Bool)

(declare-fun tp!1933579 () Bool)

(assert (=> b!7018646 (= e!4219024 (and tp_is_empty!43959 tp!1933579))))

(declare-fun b!7018647 () Bool)

(declare-fun tp!1933576 () Bool)

(assert (=> b!7018647 (= e!4219029 tp!1933576)))

(assert (= (and start!676646 res!2864693) b!7018632))

(assert (= (and b!7018632 res!2864684) b!7018629))

(assert (= (and b!7018629 (not res!2864691)) b!7018638))

(assert (= (and b!7018638 (not res!2864689)) b!7018635))

(assert (= (and b!7018635 (not res!2864692)) b!7018645))

(assert (= (and b!7018645 (not res!2864695)) b!7018636))

(assert (= (and b!7018636 (not res!2864688)) b!7018642))

(assert (= (and b!7018642 (not res!2864682)) b!7018641))

(assert (= (and b!7018641 (not res!2864687)) b!7018644))

(assert (= (and b!7018644 (not res!2864685)) b!7018633))

(assert (= (and b!7018633 (not res!2864681)) b!7018634))

(assert (= (and b!7018634 (not res!2864686)) b!7018637))

(assert (= (and b!7018637 (not res!2864683)) b!7018631))

(assert (= (and b!7018631 (not res!2864696)) b!7018630))

(assert (= (and b!7018630 (not res!2864690)) b!7018640))

(assert (= (and b!7018640 (not res!2864697)) b!7018643))

(assert (= (and b!7018643 (not res!2864694)) b!7018639))

(assert (= (and start!676646 condSetEmpty!48600) setIsEmpty!48600))

(assert (= (and start!676646 (not condSetEmpty!48600)) setNonEmpty!48600))

(assert (= setNonEmpty!48600 b!7018647))

(assert (= start!676646 b!7018628))

(assert (= (and start!676646 ((_ is Cons!67522) s!7408)) b!7018646))

(declare-fun m!7719294 () Bool)

(assert (=> b!7018633 m!7719294))

(declare-fun m!7719296 () Bool)

(assert (=> b!7018633 m!7719296))

(declare-fun m!7719298 () Bool)

(assert (=> b!7018633 m!7719298))

(declare-fun m!7719300 () Bool)

(assert (=> b!7018633 m!7719300))

(declare-fun m!7719302 () Bool)

(assert (=> b!7018639 m!7719302))

(declare-fun m!7719304 () Bool)

(assert (=> b!7018640 m!7719304))

(declare-fun m!7719306 () Bool)

(assert (=> b!7018630 m!7719306))

(declare-fun m!7719308 () Bool)

(assert (=> b!7018630 m!7719308))

(declare-fun m!7719310 () Bool)

(assert (=> b!7018630 m!7719310))

(declare-fun m!7719312 () Bool)

(assert (=> b!7018630 m!7719312))

(declare-fun m!7719314 () Bool)

(assert (=> b!7018630 m!7719314))

(declare-fun m!7719316 () Bool)

(assert (=> b!7018635 m!7719316))

(declare-fun m!7719318 () Bool)

(assert (=> b!7018635 m!7719318))

(declare-fun m!7719320 () Bool)

(assert (=> b!7018635 m!7719320))

(declare-fun m!7719322 () Bool)

(assert (=> b!7018635 m!7719322))

(declare-fun m!7719324 () Bool)

(assert (=> b!7018636 m!7719324))

(declare-fun m!7719326 () Bool)

(assert (=> b!7018636 m!7719326))

(declare-fun m!7719328 () Bool)

(assert (=> b!7018636 m!7719328))

(declare-fun m!7719330 () Bool)

(assert (=> b!7018636 m!7719330))

(assert (=> b!7018636 m!7719320))

(declare-fun m!7719332 () Bool)

(assert (=> b!7018629 m!7719332))

(declare-fun m!7719334 () Bool)

(assert (=> b!7018629 m!7719334))

(declare-fun m!7719336 () Bool)

(assert (=> b!7018629 m!7719336))

(declare-fun m!7719338 () Bool)

(assert (=> b!7018629 m!7719338))

(declare-fun m!7719340 () Bool)

(assert (=> b!7018629 m!7719340))

(declare-fun m!7719342 () Bool)

(assert (=> b!7018629 m!7719342))

(assert (=> b!7018634 m!7719300))

(declare-fun m!7719344 () Bool)

(assert (=> b!7018634 m!7719344))

(declare-fun m!7719346 () Bool)

(assert (=> b!7018634 m!7719346))

(declare-fun m!7719348 () Bool)

(assert (=> b!7018634 m!7719348))

(declare-fun m!7719350 () Bool)

(assert (=> b!7018634 m!7719350))

(declare-fun m!7719352 () Bool)

(assert (=> b!7018634 m!7719352))

(declare-fun m!7719354 () Bool)

(assert (=> b!7018634 m!7719354))

(declare-fun m!7719356 () Bool)

(assert (=> b!7018634 m!7719356))

(declare-fun m!7719358 () Bool)

(assert (=> b!7018634 m!7719358))

(declare-fun m!7719360 () Bool)

(assert (=> b!7018634 m!7719360))

(declare-fun m!7719362 () Bool)

(assert (=> b!7018641 m!7719362))

(declare-fun m!7719364 () Bool)

(assert (=> b!7018631 m!7719364))

(declare-fun m!7719366 () Bool)

(assert (=> b!7018645 m!7719366))

(assert (=> b!7018645 m!7719320))

(declare-fun m!7719368 () Bool)

(assert (=> b!7018644 m!7719368))

(declare-fun m!7719370 () Bool)

(assert (=> b!7018644 m!7719370))

(declare-fun m!7719372 () Bool)

(assert (=> b!7018637 m!7719372))

(declare-fun m!7719374 () Bool)

(assert (=> start!676646 m!7719374))

(declare-fun m!7719376 () Bool)

(assert (=> start!676646 m!7719376))

(declare-fun m!7719378 () Bool)

(assert (=> start!676646 m!7719378))

(declare-fun m!7719380 () Bool)

(assert (=> setNonEmpty!48600 m!7719380))

(declare-fun m!7719382 () Bool)

(assert (=> b!7018638 m!7719382))

(declare-fun m!7719384 () Bool)

(assert (=> b!7018643 m!7719384))

(assert (=> b!7018643 m!7719302))

(declare-fun m!7719386 () Bool)

(assert (=> b!7018643 m!7719386))

(declare-fun m!7719388 () Bool)

(assert (=> b!7018643 m!7719388))

(declare-fun m!7719390 () Bool)

(assert (=> b!7018643 m!7719390))

(declare-fun m!7719392 () Bool)

(assert (=> b!7018643 m!7719392))

(assert (=> b!7018643 m!7719386))

(declare-fun m!7719394 () Bool)

(assert (=> b!7018643 m!7719394))

(check-sat (not setNonEmpty!48600) tp_is_empty!43959 (not b!7018647) (not b!7018628) (not b!7018645) (not b!7018629) (not b!7018637) (not b!7018633) (not b!7018630) (not b!7018639) (not b!7018636) (not start!676646) (not b!7018641) (not b!7018646) (not b!7018644) (not b!7018643) (not b!7018631) (not b!7018640) (not b!7018634) (not b!7018635))
(check-sat)
