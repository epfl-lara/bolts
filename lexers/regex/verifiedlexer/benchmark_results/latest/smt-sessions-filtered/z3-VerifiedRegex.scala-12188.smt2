; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!686258 () Bool)

(assert start!686258)

(declare-fun b!7067557 () Bool)

(assert (=> b!7067557 true))

(declare-fun b!7067554 () Bool)

(assert (=> b!7067554 true))

(declare-fun b!7067540 () Bool)

(assert (=> b!7067540 true))

(declare-fun tp!1941736 () Bool)

(declare-fun setNonEmpty!50145 () Bool)

(declare-fun e!4248922 () Bool)

(declare-datatypes ((C!35516 0))(
  ( (C!35517 (val!27460 Int)) )
))
(declare-datatypes ((Regex!17623 0))(
  ( (ElementMatch!17623 (c!1318048 C!35516)) (Concat!26468 (regOne!35758 Regex!17623) (regTwo!35758 Regex!17623)) (EmptyExpr!17623) (Star!17623 (reg!17952 Regex!17623)) (EmptyLang!17623) (Union!17623 (regOne!35759 Regex!17623) (regTwo!35759 Regex!17623)) )
))
(declare-datatypes ((List!68395 0))(
  ( (Nil!68271) (Cons!68271 (h!74719 Regex!17623) (t!382176 List!68395)) )
))
(declare-datatypes ((Context!13238 0))(
  ( (Context!13239 (exprs!7119 List!68395)) )
))
(declare-fun setElem!50145 () Context!13238)

(declare-fun setRes!50145 () Bool)

(declare-fun inv!86916 (Context!13238) Bool)

(assert (=> setNonEmpty!50145 (= setRes!50145 (and tp!1941736 (inv!86916 setElem!50145) e!4248922))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!13238))

(declare-fun setRest!50145 () (InoxSet Context!13238))

(assert (=> setNonEmpty!50145 (= z1!570 ((_ map or) (store ((as const (Array Context!13238 Bool)) false) setElem!50145 true) setRest!50145))))

(declare-fun b!7067539 () Bool)

(declare-fun res!2886068 () Bool)

(declare-fun e!4248914 () Bool)

(assert (=> b!7067539 (=> res!2886068 e!4248914)))

(declare-fun lt!2542542 () Context!13238)

(declare-fun lt!2542525 () (InoxSet Context!13238))

(assert (=> b!7067539 (= res!2886068 (not (select lt!2542525 lt!2542542)))))

(declare-fun e!4248918 () Bool)

(declare-fun e!4248917 () Bool)

(assert (=> b!7067540 (= e!4248918 e!4248917)))

(declare-fun res!2886062 () Bool)

(assert (=> b!7067540 (=> res!2886062 e!4248917)))

(declare-fun lt!2542524 () (InoxSet Context!13238))

(declare-fun lt!2542544 () (InoxSet Context!13238))

(declare-datatypes ((List!68396 0))(
  ( (Nil!68272) (Cons!68272 (h!74720 C!35516) (t!382177 List!68396)) )
))
(declare-fun s!7408 () List!68396)

(declare-fun derivationStepZipper!3073 ((InoxSet Context!13238) C!35516) (InoxSet Context!13238))

(assert (=> b!7067540 (= res!2886062 (not (= (derivationStepZipper!3073 lt!2542544 (h!74720 s!7408)) lt!2542524)))))

(declare-fun lambda!424321 () Int)

(declare-fun lt!2542531 () Context!13238)

(declare-fun flatMap!2549 ((InoxSet Context!13238) Int) (InoxSet Context!13238))

(declare-fun derivationStepZipperUp!2207 (Context!13238 C!35516) (InoxSet Context!13238))

(assert (=> b!7067540 (= (flatMap!2549 lt!2542544 lambda!424321) (derivationStepZipperUp!2207 lt!2542531 (h!74720 s!7408)))))

(declare-datatypes ((Unit!161954 0))(
  ( (Unit!161955) )
))
(declare-fun lt!2542538 () Unit!161954)

(declare-fun lemmaFlatMapOnSingletonSet!2058 ((InoxSet Context!13238) Context!13238 Int) Unit!161954)

(assert (=> b!7067540 (= lt!2542538 (lemmaFlatMapOnSingletonSet!2058 lt!2542544 lt!2542531 lambda!424321))))

(assert (=> b!7067540 (= lt!2542524 (derivationStepZipperUp!2207 lt!2542531 (h!74720 s!7408)))))

(declare-fun lt!2542539 () Context!13238)

(declare-fun lt!2542517 () Unit!161954)

(declare-fun ct2!306 () Context!13238)

(declare-fun lambda!424320 () Int)

(declare-fun lemmaConcatPreservesForall!934 (List!68395 List!68395 Int) Unit!161954)

(assert (=> b!7067540 (= lt!2542517 (lemmaConcatPreservesForall!934 (exprs!7119 lt!2542539) (exprs!7119 ct2!306) lambda!424320))))

(declare-fun b!7067541 () Bool)

(declare-fun e!4248919 () Bool)

(declare-fun tp_is_empty!44471 () Bool)

(declare-fun tp!1941738 () Bool)

(assert (=> b!7067541 (= e!4248919 (and tp_is_empty!44471 tp!1941738))))

(declare-fun b!7067542 () Bool)

(declare-fun e!4248921 () Bool)

(declare-fun e!4248916 () Bool)

(assert (=> b!7067542 (= e!4248921 e!4248916)))

(declare-fun res!2886073 () Bool)

(assert (=> b!7067542 (=> res!2886073 e!4248916)))

(declare-fun lt!2542519 () (InoxSet Context!13238))

(declare-fun matchZipper!3163 ((InoxSet Context!13238) List!68396) Bool)

(assert (=> b!7067542 (= res!2886073 (matchZipper!3163 lt!2542519 (t!382177 s!7408)))))

(declare-fun lt!2542545 () List!68395)

(declare-fun lt!2542533 () Unit!161954)

(assert (=> b!7067542 (= lt!2542533 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(declare-fun b!7067543 () Bool)

(assert (=> b!7067543 (= e!4248916 true)))

(declare-fun lt!2542536 () Unit!161954)

(assert (=> b!7067543 (= lt!2542536 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(declare-fun setIsEmpty!50145 () Bool)

(assert (=> setIsEmpty!50145 setRes!50145))

(declare-fun b!7067544 () Bool)

(declare-fun e!4248925 () Bool)

(declare-fun tp!1941737 () Bool)

(assert (=> b!7067544 (= e!4248925 tp!1941737)))

(declare-fun b!7067545 () Bool)

(declare-fun e!4248924 () Bool)

(assert (=> b!7067545 (= e!4248917 e!4248924)))

(declare-fun res!2886074 () Bool)

(assert (=> b!7067545 (=> res!2886074 e!4248924)))

(declare-fun nullable!7306 (Regex!17623) Bool)

(assert (=> b!7067545 (= res!2886074 (not (nullable!7306 (h!74719 (exprs!7119 lt!2542539)))))))

(declare-fun tail!13793 (List!68395) List!68395)

(assert (=> b!7067545 (= lt!2542545 (tail!13793 (exprs!7119 lt!2542539)))))

(declare-fun b!7067546 () Bool)

(declare-fun e!4248920 () Bool)

(assert (=> b!7067546 (= e!4248920 e!4248918)))

(declare-fun res!2886070 () Bool)

(assert (=> b!7067546 (=> res!2886070 e!4248918)))

(declare-fun lt!2542535 () (InoxSet Context!13238))

(assert (=> b!7067546 (= res!2886070 (not (= lt!2542544 lt!2542535)))))

(assert (=> b!7067546 (= lt!2542544 (store ((as const (Array Context!13238 Bool)) false) lt!2542531 true))))

(declare-fun lt!2542523 () Unit!161954)

(assert (=> b!7067546 (= lt!2542523 (lemmaConcatPreservesForall!934 (exprs!7119 lt!2542539) (exprs!7119 ct2!306) lambda!424320))))

(declare-fun b!7067547 () Bool)

(declare-fun e!4248912 () Bool)

(assert (=> b!7067547 (= e!4248912 e!4248921)))

(declare-fun res!2886067 () Bool)

(assert (=> b!7067547 (=> res!2886067 e!4248921)))

(declare-fun e!4248923 () Bool)

(assert (=> b!7067547 (= res!2886067 e!4248923)))

(declare-fun res!2886071 () Bool)

(assert (=> b!7067547 (=> (not res!2886071) (not e!4248923))))

(declare-fun lt!2542530 () Bool)

(declare-fun lt!2542521 () Bool)

(assert (=> b!7067547 (= res!2886071 (not (= lt!2542530 lt!2542521)))))

(assert (=> b!7067547 (= lt!2542530 (matchZipper!3163 lt!2542524 (t!382177 s!7408)))))

(declare-fun lt!2542540 () Unit!161954)

(assert (=> b!7067547 (= lt!2542540 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(declare-fun lt!2542529 () (InoxSet Context!13238))

(declare-fun e!4248913 () Bool)

(assert (=> b!7067547 (= (matchZipper!3163 lt!2542529 (t!382177 s!7408)) e!4248913)))

(declare-fun res!2886069 () Bool)

(assert (=> b!7067547 (=> res!2886069 e!4248913)))

(assert (=> b!7067547 (= res!2886069 lt!2542521)))

(declare-fun lt!2542537 () (InoxSet Context!13238))

(assert (=> b!7067547 (= lt!2542521 (matchZipper!3163 lt!2542537 (t!382177 s!7408)))))

(declare-fun lt!2542518 () Unit!161954)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1636 ((InoxSet Context!13238) (InoxSet Context!13238) List!68396) Unit!161954)

(assert (=> b!7067547 (= lt!2542518 (lemmaZipperConcatMatchesSameAsBothZippers!1636 lt!2542537 lt!2542519 (t!382177 s!7408)))))

(declare-fun lt!2542528 () Unit!161954)

(assert (=> b!7067547 (= lt!2542528 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(declare-fun lt!2542534 () Unit!161954)

(assert (=> b!7067547 (= lt!2542534 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(declare-fun b!7067548 () Bool)

(assert (=> b!7067548 (= e!4248924 e!4248912)))

(declare-fun res!2886066 () Bool)

(assert (=> b!7067548 (=> res!2886066 e!4248912)))

(assert (=> b!7067548 (= res!2886066 (not (= lt!2542524 lt!2542529)))))

(assert (=> b!7067548 (= lt!2542529 ((_ map or) lt!2542537 lt!2542519))))

(declare-fun lt!2542520 () Context!13238)

(assert (=> b!7067548 (= lt!2542519 (derivationStepZipperUp!2207 lt!2542520 (h!74720 s!7408)))))

(declare-fun derivationStepZipperDown!2257 (Regex!17623 Context!13238 C!35516) (InoxSet Context!13238))

(assert (=> b!7067548 (= lt!2542537 (derivationStepZipperDown!2257 (h!74719 (exprs!7119 lt!2542539)) lt!2542520 (h!74720 s!7408)))))

(declare-fun ++!15740 (List!68395 List!68395) List!68395)

(assert (=> b!7067548 (= lt!2542520 (Context!13239 (++!15740 lt!2542545 (exprs!7119 ct2!306))))))

(declare-fun lt!2542532 () Unit!161954)

(assert (=> b!7067548 (= lt!2542532 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(declare-fun lt!2542527 () Unit!161954)

(assert (=> b!7067548 (= lt!2542527 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(declare-fun b!7067550 () Bool)

(declare-fun res!2886072 () Bool)

(assert (=> b!7067550 (=> res!2886072 e!4248917)))

(get-info :version)

(assert (=> b!7067550 (= res!2886072 (not ((_ is Cons!68271) (exprs!7119 lt!2542539))))))

(declare-fun b!7067551 () Bool)

(assert (=> b!7067551 (= e!4248913 (matchZipper!3163 lt!2542519 (t!382177 s!7408)))))

(declare-fun b!7067552 () Bool)

(declare-fun res!2886061 () Bool)

(declare-fun e!4248915 () Bool)

(assert (=> b!7067552 (=> (not res!2886061) (not e!4248915))))

(assert (=> b!7067552 (= res!2886061 ((_ is Cons!68272) s!7408))))

(declare-fun b!7067553 () Bool)

(declare-fun res!2886065 () Bool)

(assert (=> b!7067553 (=> res!2886065 e!4248921)))

(assert (=> b!7067553 (= res!2886065 (not lt!2542530))))

(assert (=> b!7067554 (= e!4248914 e!4248920)))

(declare-fun res!2886060 () Bool)

(assert (=> b!7067554 (=> res!2886060 e!4248920)))

(assert (=> b!7067554 (= res!2886060 (or (not (= lt!2542531 lt!2542542)) (not (select z1!570 lt!2542539))))))

(assert (=> b!7067554 (= lt!2542531 (Context!13239 (++!15740 (exprs!7119 lt!2542539) (exprs!7119 ct2!306))))))

(declare-fun lt!2542541 () Unit!161954)

(assert (=> b!7067554 (= lt!2542541 (lemmaConcatPreservesForall!934 (exprs!7119 lt!2542539) (exprs!7119 ct2!306) lambda!424320))))

(declare-fun lambda!424319 () Int)

(declare-fun mapPost2!452 ((InoxSet Context!13238) Int Context!13238) Context!13238)

(assert (=> b!7067554 (= lt!2542539 (mapPost2!452 z1!570 lambda!424319 lt!2542542))))

(declare-fun b!7067555 () Bool)

(declare-fun tp!1941735 () Bool)

(assert (=> b!7067555 (= e!4248922 tp!1941735)))

(declare-fun b!7067556 () Bool)

(assert (=> b!7067556 (= e!4248923 (not (matchZipper!3163 lt!2542519 (t!382177 s!7408))))))

(declare-fun lt!2542526 () Unit!161954)

(assert (=> b!7067556 (= lt!2542526 (lemmaConcatPreservesForall!934 lt!2542545 (exprs!7119 ct2!306) lambda!424320))))

(assert (=> b!7067557 (= e!4248915 (not e!4248914))))

(declare-fun res!2886059 () Bool)

(assert (=> b!7067557 (=> res!2886059 e!4248914)))

(assert (=> b!7067557 (= res!2886059 (not (matchZipper!3163 lt!2542535 s!7408)))))

(assert (=> b!7067557 (= lt!2542535 (store ((as const (Array Context!13238 Bool)) false) lt!2542542 true))))

(declare-fun lambda!424318 () Int)

(declare-fun getWitness!1712 ((InoxSet Context!13238) Int) Context!13238)

(assert (=> b!7067557 (= lt!2542542 (getWitness!1712 lt!2542525 lambda!424318))))

(declare-datatypes ((List!68397 0))(
  ( (Nil!68273) (Cons!68273 (h!74721 Context!13238) (t!382178 List!68397)) )
))
(declare-fun lt!2542543 () List!68397)

(declare-fun exists!3655 (List!68397 Int) Bool)

(assert (=> b!7067557 (exists!3655 lt!2542543 lambda!424318)))

(declare-fun lt!2542522 () Unit!161954)

(declare-fun lemmaZipperMatchesExistsMatchingContext!544 (List!68397 List!68396) Unit!161954)

(assert (=> b!7067557 (= lt!2542522 (lemmaZipperMatchesExistsMatchingContext!544 lt!2542543 s!7408))))

(declare-fun toList!10964 ((InoxSet Context!13238)) List!68397)

(assert (=> b!7067557 (= lt!2542543 (toList!10964 lt!2542525))))

(declare-fun b!7067549 () Bool)

(declare-fun res!2886063 () Bool)

(assert (=> b!7067549 (=> res!2886063 e!4248917)))

(declare-fun isEmpty!39843 (List!68395) Bool)

(assert (=> b!7067549 (= res!2886063 (isEmpty!39843 (exprs!7119 lt!2542539)))))

(declare-fun res!2886064 () Bool)

(assert (=> start!686258 (=> (not res!2886064) (not e!4248915))))

(assert (=> start!686258 (= res!2886064 (matchZipper!3163 lt!2542525 s!7408))))

(declare-fun appendTo!744 ((InoxSet Context!13238) Context!13238) (InoxSet Context!13238))

(assert (=> start!686258 (= lt!2542525 (appendTo!744 z1!570 ct2!306))))

(assert (=> start!686258 e!4248915))

(declare-fun condSetEmpty!50145 () Bool)

(assert (=> start!686258 (= condSetEmpty!50145 (= z1!570 ((as const (Array Context!13238 Bool)) false)))))

(assert (=> start!686258 setRes!50145))

(assert (=> start!686258 (and (inv!86916 ct2!306) e!4248925)))

(assert (=> start!686258 e!4248919))

(assert (= (and start!686258 res!2886064) b!7067552))

(assert (= (and b!7067552 res!2886061) b!7067557))

(assert (= (and b!7067557 (not res!2886059)) b!7067539))

(assert (= (and b!7067539 (not res!2886068)) b!7067554))

(assert (= (and b!7067554 (not res!2886060)) b!7067546))

(assert (= (and b!7067546 (not res!2886070)) b!7067540))

(assert (= (and b!7067540 (not res!2886062)) b!7067550))

(assert (= (and b!7067550 (not res!2886072)) b!7067549))

(assert (= (and b!7067549 (not res!2886063)) b!7067545))

(assert (= (and b!7067545 (not res!2886074)) b!7067548))

(assert (= (and b!7067548 (not res!2886066)) b!7067547))

(assert (= (and b!7067547 (not res!2886069)) b!7067551))

(assert (= (and b!7067547 res!2886071) b!7067556))

(assert (= (and b!7067547 (not res!2886067)) b!7067553))

(assert (= (and b!7067553 (not res!2886065)) b!7067542))

(assert (= (and b!7067542 (not res!2886073)) b!7067543))

(assert (= (and start!686258 condSetEmpty!50145) setIsEmpty!50145))

(assert (= (and start!686258 (not condSetEmpty!50145)) setNonEmpty!50145))

(assert (= setNonEmpty!50145 b!7067555))

(assert (= start!686258 b!7067544))

(assert (= (and start!686258 ((_ is Cons!68272) s!7408)) b!7067541))

(declare-fun m!7791810 () Bool)

(assert (=> setNonEmpty!50145 m!7791810))

(declare-fun m!7791812 () Bool)

(assert (=> b!7067557 m!7791812))

(declare-fun m!7791814 () Bool)

(assert (=> b!7067557 m!7791814))

(declare-fun m!7791816 () Bool)

(assert (=> b!7067557 m!7791816))

(declare-fun m!7791818 () Bool)

(assert (=> b!7067557 m!7791818))

(declare-fun m!7791820 () Bool)

(assert (=> b!7067557 m!7791820))

(declare-fun m!7791822 () Bool)

(assert (=> b!7067557 m!7791822))

(declare-fun m!7791824 () Bool)

(assert (=> b!7067547 m!7791824))

(declare-fun m!7791826 () Bool)

(assert (=> b!7067547 m!7791826))

(declare-fun m!7791828 () Bool)

(assert (=> b!7067547 m!7791828))

(assert (=> b!7067547 m!7791826))

(declare-fun m!7791830 () Bool)

(assert (=> b!7067547 m!7791830))

(declare-fun m!7791832 () Bool)

(assert (=> b!7067547 m!7791832))

(assert (=> b!7067547 m!7791826))

(declare-fun m!7791834 () Bool)

(assert (=> b!7067549 m!7791834))

(declare-fun m!7791836 () Bool)

(assert (=> b!7067554 m!7791836))

(declare-fun m!7791838 () Bool)

(assert (=> b!7067554 m!7791838))

(declare-fun m!7791840 () Bool)

(assert (=> b!7067554 m!7791840))

(declare-fun m!7791842 () Bool)

(assert (=> b!7067554 m!7791842))

(declare-fun m!7791844 () Bool)

(assert (=> b!7067542 m!7791844))

(assert (=> b!7067542 m!7791826))

(assert (=> b!7067548 m!7791826))

(assert (=> b!7067548 m!7791826))

(declare-fun m!7791846 () Bool)

(assert (=> b!7067548 m!7791846))

(declare-fun m!7791848 () Bool)

(assert (=> b!7067548 m!7791848))

(declare-fun m!7791850 () Bool)

(assert (=> b!7067548 m!7791850))

(declare-fun m!7791852 () Bool)

(assert (=> b!7067545 m!7791852))

(declare-fun m!7791854 () Bool)

(assert (=> b!7067545 m!7791854))

(assert (=> b!7067540 m!7791840))

(declare-fun m!7791856 () Bool)

(assert (=> b!7067540 m!7791856))

(declare-fun m!7791858 () Bool)

(assert (=> b!7067540 m!7791858))

(declare-fun m!7791860 () Bool)

(assert (=> b!7067540 m!7791860))

(declare-fun m!7791862 () Bool)

(assert (=> b!7067540 m!7791862))

(assert (=> b!7067543 m!7791826))

(assert (=> b!7067556 m!7791844))

(assert (=> b!7067556 m!7791826))

(assert (=> b!7067551 m!7791844))

(declare-fun m!7791864 () Bool)

(assert (=> b!7067539 m!7791864))

(declare-fun m!7791866 () Bool)

(assert (=> start!686258 m!7791866))

(declare-fun m!7791868 () Bool)

(assert (=> start!686258 m!7791868))

(declare-fun m!7791870 () Bool)

(assert (=> start!686258 m!7791870))

(declare-fun m!7791872 () Bool)

(assert (=> b!7067546 m!7791872))

(assert (=> b!7067546 m!7791840))

(check-sat (not b!7067556) (not setNonEmpty!50145) (not b!7067540) (not b!7067557) (not b!7067541) (not b!7067551) (not b!7067547) (not b!7067555) (not b!7067554) (not b!7067542) (not b!7067548) (not b!7067544) (not b!7067543) (not start!686258) (not b!7067546) (not b!7067549) tp_is_empty!44471 (not b!7067545))
(check-sat)
