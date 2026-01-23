; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!675152 () Bool)

(assert start!675152)

(declare-fun b!7010066 () Bool)

(assert (=> b!7010066 true))

(declare-fun b!7010058 () Bool)

(assert (=> b!7010058 true))

(declare-fun b!7010064 () Bool)

(assert (=> b!7010064 true))

(declare-fun b!7010056 () Bool)

(declare-fun e!4213781 () Bool)

(declare-fun e!4213768 () Bool)

(assert (=> b!7010056 (= e!4213781 e!4213768)))

(declare-fun res!2860330 () Bool)

(assert (=> b!7010056 (=> res!2860330 e!4213768)))

(declare-datatypes ((C!34900 0))(
  ( (C!34901 (val!27152 Int)) )
))
(declare-datatypes ((Regex!17315 0))(
  ( (ElementMatch!17315 (c!1302097 C!34900)) (Concat!26160 (regOne!35142 Regex!17315) (regTwo!35142 Regex!17315)) (EmptyExpr!17315) (Star!17315 (reg!17644 Regex!17315)) (EmptyLang!17315) (Union!17315 (regOne!35143 Regex!17315) (regTwo!35143 Regex!17315)) )
))
(declare-datatypes ((List!67490 0))(
  ( (Nil!67366) (Cons!67366 (h!73814 Regex!17315) (t!381245 List!67490)) )
))
(declare-datatypes ((Context!12622 0))(
  ( (Context!12623 (exprs!6811 List!67490)) )
))
(declare-fun lt!2503699 () Context!12622)

(declare-fun nullable!7075 (Regex!17315) Bool)

(assert (=> b!7010056 (= res!2860330 (not (nullable!7075 (h!73814 (exprs!6811 lt!2503699)))))))

(declare-fun lt!2503689 () Context!12622)

(declare-fun lt!2503674 () List!67490)

(assert (=> b!7010056 (= lt!2503689 (Context!12623 lt!2503674))))

(declare-fun tail!13389 (List!67490) List!67490)

(assert (=> b!7010056 (= lt!2503674 (tail!13389 (exprs!6811 lt!2503699)))))

(declare-fun b!7010057 () Bool)

(declare-fun e!4213769 () Bool)

(declare-fun e!4213778 () Bool)

(assert (=> b!7010057 (= e!4213769 e!4213778)))

(declare-fun res!2860332 () Bool)

(assert (=> b!7010057 (=> res!2860332 e!4213778)))

(declare-fun lt!2503673 () Bool)

(assert (=> b!7010057 (= res!2860332 (not lt!2503673))))

(declare-fun lambda!408296 () Int)

(declare-fun ct2!306 () Context!12622)

(declare-datatypes ((Unit!161308 0))(
  ( (Unit!161309) )
))
(declare-fun lt!2503683 () Unit!161308)

(declare-fun lemmaConcatPreservesForall!651 (List!67490 List!67490 Int) Unit!161308)

(assert (=> b!7010057 (= lt!2503683 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun lt!2503696 () Unit!161308)

(assert (=> b!7010057 (= lt!2503696 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun e!4213774 () Bool)

(declare-fun e!4213772 () Bool)

(assert (=> b!7010058 (= e!4213774 e!4213772)))

(declare-fun res!2860326 () Bool)

(assert (=> b!7010058 (=> res!2860326 e!4213772)))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12622))

(declare-fun lt!2503690 () Context!12622)

(declare-fun lt!2503672 () Context!12622)

(assert (=> b!7010058 (= res!2860326 (or (not (= lt!2503690 lt!2503672)) (not (select z1!570 lt!2503699))))))

(declare-fun ++!15310 (List!67490 List!67490) List!67490)

(assert (=> b!7010058 (= lt!2503690 (Context!12623 (++!15310 (exprs!6811 lt!2503699) (exprs!6811 ct2!306))))))

(declare-fun lt!2503678 () Unit!161308)

(assert (=> b!7010058 (= lt!2503678 (lemmaConcatPreservesForall!651 (exprs!6811 lt!2503699) (exprs!6811 ct2!306) lambda!408296))))

(declare-fun lambda!408295 () Int)

(declare-fun mapPost2!170 ((InoxSet Context!12622) Int Context!12622) Context!12622)

(assert (=> b!7010058 (= lt!2503699 (mapPost2!170 z1!570 lambda!408295 lt!2503672))))

(declare-fun b!7010059 () Bool)

(declare-fun e!4213780 () Bool)

(declare-fun lt!2503671 () (InoxSet Context!12622))

(declare-datatypes ((List!67491 0))(
  ( (Nil!67367) (Cons!67367 (h!73815 C!34900) (t!381246 List!67491)) )
))
(declare-fun s!7408 () List!67491)

(declare-fun matchZipper!2855 ((InoxSet Context!12622) List!67491) Bool)

(assert (=> b!7010059 (= e!4213780 (not (matchZipper!2855 lt!2503671 (t!381246 s!7408))))))

(declare-fun lt!2503695 () Unit!161308)

(assert (=> b!7010059 (= lt!2503695 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun setIsEmpty!48347 () Bool)

(declare-fun setRes!48347 () Bool)

(assert (=> setIsEmpty!48347 setRes!48347))

(declare-fun b!7010061 () Bool)

(declare-fun res!2860324 () Bool)

(declare-fun e!4213771 () Bool)

(assert (=> b!7010061 (=> (not res!2860324) (not e!4213771))))

(get-info :version)

(assert (=> b!7010061 (= res!2860324 ((_ is Cons!67367) s!7408))))

(declare-fun b!7010062 () Bool)

(declare-fun res!2860325 () Bool)

(assert (=> b!7010062 (=> res!2860325 e!4213781)))

(declare-fun isEmpty!39345 (List!67490) Bool)

(assert (=> b!7010062 (= res!2860325 (isEmpty!39345 (exprs!6811 lt!2503699)))))

(declare-fun b!7010063 () Bool)

(declare-fun e!4213776 () Bool)

(declare-fun tp!1932320 () Bool)

(assert (=> b!7010063 (= e!4213776 tp!1932320)))

(declare-fun e!4213773 () Bool)

(assert (=> b!7010064 (= e!4213773 e!4213781)))

(declare-fun res!2860322 () Bool)

(assert (=> b!7010064 (=> res!2860322 e!4213781)))

(declare-fun lt!2503681 () (InoxSet Context!12622))

(declare-fun lt!2503687 () (InoxSet Context!12622))

(declare-fun derivationStepZipper!2795 ((InoxSet Context!12622) C!34900) (InoxSet Context!12622))

(assert (=> b!7010064 (= res!2860322 (not (= (derivationStepZipper!2795 lt!2503687 (h!73815 s!7408)) lt!2503681)))))

(declare-fun lambda!408297 () Int)

(declare-fun flatMap!2301 ((InoxSet Context!12622) Int) (InoxSet Context!12622))

(declare-fun derivationStepZipperUp!1965 (Context!12622 C!34900) (InoxSet Context!12622))

(assert (=> b!7010064 (= (flatMap!2301 lt!2503687 lambda!408297) (derivationStepZipperUp!1965 lt!2503690 (h!73815 s!7408)))))

(declare-fun lt!2503694 () Unit!161308)

(declare-fun lemmaFlatMapOnSingletonSet!1816 ((InoxSet Context!12622) Context!12622 Int) Unit!161308)

(assert (=> b!7010064 (= lt!2503694 (lemmaFlatMapOnSingletonSet!1816 lt!2503687 lt!2503690 lambda!408297))))

(assert (=> b!7010064 (= lt!2503681 (derivationStepZipperUp!1965 lt!2503690 (h!73815 s!7408)))))

(declare-fun lt!2503685 () Unit!161308)

(assert (=> b!7010064 (= lt!2503685 (lemmaConcatPreservesForall!651 (exprs!6811 lt!2503699) (exprs!6811 ct2!306) lambda!408296))))

(declare-fun b!7010060 () Bool)

(declare-fun res!2860334 () Bool)

(assert (=> b!7010060 (=> res!2860334 e!4213781)))

(assert (=> b!7010060 (= res!2860334 (not ((_ is Cons!67366) (exprs!6811 lt!2503699))))))

(declare-fun res!2860335 () Bool)

(assert (=> start!675152 (=> (not res!2860335) (not e!4213771))))

(declare-fun lt!2503677 () (InoxSet Context!12622))

(assert (=> start!675152 (= res!2860335 (matchZipper!2855 lt!2503677 s!7408))))

(declare-fun appendTo!436 ((InoxSet Context!12622) Context!12622) (InoxSet Context!12622))

(assert (=> start!675152 (= lt!2503677 (appendTo!436 z1!570 ct2!306))))

(assert (=> start!675152 e!4213771))

(declare-fun condSetEmpty!48347 () Bool)

(assert (=> start!675152 (= condSetEmpty!48347 (= z1!570 ((as const (Array Context!12622 Bool)) false)))))

(assert (=> start!675152 setRes!48347))

(declare-fun inv!86146 (Context!12622) Bool)

(assert (=> start!675152 (and (inv!86146 ct2!306) e!4213776)))

(declare-fun e!4213779 () Bool)

(assert (=> start!675152 e!4213779))

(declare-fun b!7010065 () Bool)

(declare-fun e!4213777 () Bool)

(declare-fun tp!1932318 () Bool)

(assert (=> b!7010065 (= e!4213777 tp!1932318)))

(assert (=> b!7010066 (= e!4213771 (not e!4213774))))

(declare-fun res!2860331 () Bool)

(assert (=> b!7010066 (=> res!2860331 e!4213774)))

(declare-fun lt!2503701 () (InoxSet Context!12622))

(assert (=> b!7010066 (= res!2860331 (not (matchZipper!2855 lt!2503701 s!7408)))))

(assert (=> b!7010066 (= lt!2503701 (store ((as const (Array Context!12622 Bool)) false) lt!2503672 true))))

(declare-fun lambda!408294 () Int)

(declare-fun getWitness!1257 ((InoxSet Context!12622) Int) Context!12622)

(assert (=> b!7010066 (= lt!2503672 (getWitness!1257 lt!2503677 lambda!408294))))

(declare-datatypes ((List!67492 0))(
  ( (Nil!67368) (Cons!67368 (h!73816 Context!12622) (t!381247 List!67492)) )
))
(declare-fun lt!2503692 () List!67492)

(declare-fun exists!3159 (List!67492 Int) Bool)

(assert (=> b!7010066 (exists!3159 lt!2503692 lambda!408294)))

(declare-fun lt!2503686 () Unit!161308)

(declare-fun lemmaZipperMatchesExistsMatchingContext!284 (List!67492 List!67491) Unit!161308)

(assert (=> b!7010066 (= lt!2503686 (lemmaZipperMatchesExistsMatchingContext!284 lt!2503692 s!7408))))

(declare-fun toList!10675 ((InoxSet Context!12622)) List!67492)

(assert (=> b!7010066 (= lt!2503692 (toList!10675 lt!2503677))))

(declare-fun b!7010067 () Bool)

(declare-fun res!2860338 () Bool)

(declare-fun e!4213775 () Bool)

(assert (=> b!7010067 (=> res!2860338 e!4213775)))

(declare-fun lt!2503670 () Bool)

(assert (=> b!7010067 (= res!2860338 (not lt!2503670))))

(declare-fun b!7010068 () Bool)

(declare-fun e!4213770 () Bool)

(assert (=> b!7010068 (= e!4213770 e!4213775)))

(declare-fun res!2860327 () Bool)

(assert (=> b!7010068 (=> res!2860327 e!4213775)))

(assert (=> b!7010068 (= res!2860327 e!4213780)))

(declare-fun res!2860323 () Bool)

(assert (=> b!7010068 (=> (not res!2860323) (not e!4213780))))

(assert (=> b!7010068 (= res!2860323 (not (= lt!2503670 lt!2503673)))))

(assert (=> b!7010068 (= lt!2503670 (matchZipper!2855 lt!2503681 (t!381246 s!7408)))))

(declare-fun lt!2503675 () Unit!161308)

(assert (=> b!7010068 (= lt!2503675 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun lt!2503668 () (InoxSet Context!12622))

(declare-fun e!4213767 () Bool)

(assert (=> b!7010068 (= (matchZipper!2855 lt!2503668 (t!381246 s!7408)) e!4213767)))

(declare-fun res!2860337 () Bool)

(assert (=> b!7010068 (=> res!2860337 e!4213767)))

(assert (=> b!7010068 (= res!2860337 lt!2503673)))

(declare-fun lt!2503680 () (InoxSet Context!12622))

(assert (=> b!7010068 (= lt!2503673 (matchZipper!2855 lt!2503680 (t!381246 s!7408)))))

(declare-fun lt!2503698 () Unit!161308)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1488 ((InoxSet Context!12622) (InoxSet Context!12622) List!67491) Unit!161308)

(assert (=> b!7010068 (= lt!2503698 (lemmaZipperConcatMatchesSameAsBothZippers!1488 lt!2503680 lt!2503671 (t!381246 s!7408)))))

(declare-fun lt!2503676 () Unit!161308)

(assert (=> b!7010068 (= lt!2503676 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun lt!2503702 () Unit!161308)

(assert (=> b!7010068 (= lt!2503702 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun b!7010069 () Bool)

(assert (=> b!7010069 (= e!4213768 e!4213770)))

(declare-fun res!2860328 () Bool)

(assert (=> b!7010069 (=> res!2860328 e!4213770)))

(assert (=> b!7010069 (= res!2860328 (not (= lt!2503681 lt!2503668)))))

(assert (=> b!7010069 (= lt!2503668 ((_ map or) lt!2503680 lt!2503671))))

(declare-fun lt!2503697 () Context!12622)

(assert (=> b!7010069 (= lt!2503671 (derivationStepZipperUp!1965 lt!2503697 (h!73815 s!7408)))))

(declare-fun derivationStepZipperDown!2033 (Regex!17315 Context!12622 C!34900) (InoxSet Context!12622))

(assert (=> b!7010069 (= lt!2503680 (derivationStepZipperDown!2033 (h!73814 (exprs!6811 lt!2503699)) lt!2503697 (h!73815 s!7408)))))

(assert (=> b!7010069 (= lt!2503697 (Context!12623 (++!15310 lt!2503674 (exprs!6811 ct2!306))))))

(declare-fun lt!2503691 () Unit!161308)

(assert (=> b!7010069 (= lt!2503691 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun lt!2503679 () Unit!161308)

(assert (=> b!7010069 (= lt!2503679 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun b!7010070 () Bool)

(assert (=> b!7010070 (= e!4213772 e!4213773)))

(declare-fun res!2860333 () Bool)

(assert (=> b!7010070 (=> res!2860333 e!4213773)))

(assert (=> b!7010070 (= res!2860333 (not (= lt!2503687 lt!2503701)))))

(assert (=> b!7010070 (= lt!2503687 (store ((as const (Array Context!12622 Bool)) false) lt!2503690 true))))

(declare-fun lt!2503693 () Unit!161308)

(assert (=> b!7010070 (= lt!2503693 (lemmaConcatPreservesForall!651 (exprs!6811 lt!2503699) (exprs!6811 ct2!306) lambda!408296))))

(declare-fun setNonEmpty!48347 () Bool)

(declare-fun setElem!48347 () Context!12622)

(declare-fun tp!1932317 () Bool)

(assert (=> setNonEmpty!48347 (= setRes!48347 (and tp!1932317 (inv!86146 setElem!48347) e!4213777))))

(declare-fun setRest!48347 () (InoxSet Context!12622))

(assert (=> setNonEmpty!48347 (= z1!570 ((_ map or) (store ((as const (Array Context!12622 Bool)) false) setElem!48347 true) setRest!48347))))

(declare-fun b!7010071 () Bool)

(declare-fun tp_is_empty!43855 () Bool)

(declare-fun tp!1932319 () Bool)

(assert (=> b!7010071 (= e!4213779 (and tp_is_empty!43855 tp!1932319))))

(declare-fun b!7010072 () Bool)

(assert (=> b!7010072 (= e!4213775 e!4213769)))

(declare-fun res!2860336 () Bool)

(assert (=> b!7010072 (=> res!2860336 e!4213769)))

(assert (=> b!7010072 (= res!2860336 (matchZipper!2855 lt!2503671 (t!381246 s!7408)))))

(declare-fun lt!2503669 () Unit!161308)

(assert (=> b!7010072 (= lt!2503669 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun b!7010073 () Bool)

(assert (=> b!7010073 (= e!4213767 (matchZipper!2855 lt!2503671 (t!381246 s!7408)))))

(declare-fun b!7010074 () Bool)

(assert (=> b!7010074 (= e!4213778 true)))

(declare-fun lt!2503688 () (InoxSet Context!12622))

(declare-datatypes ((tuple2!67936 0))(
  ( (tuple2!67937 (_1!37271 List!67491) (_2!37271 List!67491)) )
))
(declare-datatypes ((Option!16800 0))(
  ( (None!16799) (Some!16799 (v!53077 tuple2!67936)) )
))
(declare-fun isDefined!13501 (Option!16800) Bool)

(declare-fun findConcatSeparationZippers!316 ((InoxSet Context!12622) (InoxSet Context!12622) List!67491 List!67491 List!67491) Option!16800)

(assert (=> b!7010074 (isDefined!13501 (findConcatSeparationZippers!316 lt!2503688 (store ((as const (Array Context!12622 Bool)) false) ct2!306 true) Nil!67367 (t!381246 s!7408) (t!381246 s!7408)))))

(declare-fun lt!2503700 () Unit!161308)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!316 ((InoxSet Context!12622) Context!12622 List!67491) Unit!161308)

(assert (=> b!7010074 (= lt!2503700 (lemmaConcatZipperMatchesStringThenFindConcatDefined!316 lt!2503688 ct2!306 (t!381246 s!7408)))))

(declare-fun lt!2503684 () Unit!161308)

(assert (=> b!7010074 (= lt!2503684 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(assert (=> b!7010074 (= lt!2503680 (appendTo!436 lt!2503688 ct2!306))))

(assert (=> b!7010074 (= lt!2503688 (derivationStepZipperDown!2033 (h!73814 (exprs!6811 lt!2503699)) lt!2503689 (h!73815 s!7408)))))

(declare-fun lt!2503703 () Unit!161308)

(assert (=> b!7010074 (= lt!2503703 (lemmaConcatPreservesForall!651 lt!2503674 (exprs!6811 ct2!306) lambda!408296))))

(declare-fun lt!2503682 () Unit!161308)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!14 (Context!12622 Regex!17315 C!34900 Context!12622) Unit!161308)

(assert (=> b!7010074 (= lt!2503682 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!14 lt!2503689 (h!73814 (exprs!6811 lt!2503699)) (h!73815 s!7408) ct2!306))))

(declare-fun b!7010075 () Bool)

(declare-fun res!2860329 () Bool)

(assert (=> b!7010075 (=> res!2860329 e!4213774)))

(assert (=> b!7010075 (= res!2860329 (not (select lt!2503677 lt!2503672)))))

(assert (= (and start!675152 res!2860335) b!7010061))

(assert (= (and b!7010061 res!2860324) b!7010066))

(assert (= (and b!7010066 (not res!2860331)) b!7010075))

(assert (= (and b!7010075 (not res!2860329)) b!7010058))

(assert (= (and b!7010058 (not res!2860326)) b!7010070))

(assert (= (and b!7010070 (not res!2860333)) b!7010064))

(assert (= (and b!7010064 (not res!2860322)) b!7010060))

(assert (= (and b!7010060 (not res!2860334)) b!7010062))

(assert (= (and b!7010062 (not res!2860325)) b!7010056))

(assert (= (and b!7010056 (not res!2860330)) b!7010069))

(assert (= (and b!7010069 (not res!2860328)) b!7010068))

(assert (= (and b!7010068 (not res!2860337)) b!7010073))

(assert (= (and b!7010068 res!2860323) b!7010059))

(assert (= (and b!7010068 (not res!2860327)) b!7010067))

(assert (= (and b!7010067 (not res!2860338)) b!7010072))

(assert (= (and b!7010072 (not res!2860336)) b!7010057))

(assert (= (and b!7010057 (not res!2860332)) b!7010074))

(assert (= (and start!675152 condSetEmpty!48347) setIsEmpty!48347))

(assert (= (and start!675152 (not condSetEmpty!48347)) setNonEmpty!48347))

(assert (= setNonEmpty!48347 b!7010065))

(assert (= start!675152 b!7010063))

(assert (= (and start!675152 ((_ is Cons!67367) s!7408)) b!7010071))

(declare-fun m!7707828 () Bool)

(assert (=> b!7010059 m!7707828))

(declare-fun m!7707830 () Bool)

(assert (=> b!7010059 m!7707830))

(declare-fun m!7707832 () Bool)

(assert (=> b!7010062 m!7707832))

(declare-fun m!7707834 () Bool)

(assert (=> b!7010070 m!7707834))

(declare-fun m!7707836 () Bool)

(assert (=> b!7010070 m!7707836))

(declare-fun m!7707838 () Bool)

(assert (=> b!7010068 m!7707838))

(declare-fun m!7707840 () Bool)

(assert (=> b!7010068 m!7707840))

(assert (=> b!7010068 m!7707830))

(assert (=> b!7010068 m!7707830))

(assert (=> b!7010068 m!7707830))

(declare-fun m!7707842 () Bool)

(assert (=> b!7010068 m!7707842))

(declare-fun m!7707844 () Bool)

(assert (=> b!7010068 m!7707844))

(assert (=> b!7010069 m!7707830))

(declare-fun m!7707846 () Bool)

(assert (=> b!7010069 m!7707846))

(declare-fun m!7707848 () Bool)

(assert (=> b!7010069 m!7707848))

(assert (=> b!7010069 m!7707830))

(declare-fun m!7707850 () Bool)

(assert (=> b!7010069 m!7707850))

(declare-fun m!7707852 () Bool)

(assert (=> setNonEmpty!48347 m!7707852))

(assert (=> b!7010073 m!7707828))

(declare-fun m!7707854 () Bool)

(assert (=> b!7010058 m!7707854))

(declare-fun m!7707856 () Bool)

(assert (=> b!7010058 m!7707856))

(assert (=> b!7010058 m!7707836))

(declare-fun m!7707858 () Bool)

(assert (=> b!7010058 m!7707858))

(declare-fun m!7707860 () Bool)

(assert (=> b!7010074 m!7707860))

(assert (=> b!7010074 m!7707830))

(declare-fun m!7707862 () Bool)

(assert (=> b!7010074 m!7707862))

(declare-fun m!7707864 () Bool)

(assert (=> b!7010074 m!7707864))

(assert (=> b!7010074 m!7707862))

(assert (=> b!7010074 m!7707864))

(declare-fun m!7707866 () Bool)

(assert (=> b!7010074 m!7707866))

(declare-fun m!7707868 () Bool)

(assert (=> b!7010074 m!7707868))

(declare-fun m!7707870 () Bool)

(assert (=> b!7010074 m!7707870))

(declare-fun m!7707872 () Bool)

(assert (=> b!7010074 m!7707872))

(assert (=> b!7010074 m!7707830))

(declare-fun m!7707874 () Bool)

(assert (=> b!7010075 m!7707874))

(declare-fun m!7707876 () Bool)

(assert (=> b!7010056 m!7707876))

(declare-fun m!7707878 () Bool)

(assert (=> b!7010056 m!7707878))

(assert (=> b!7010064 m!7707836))

(declare-fun m!7707880 () Bool)

(assert (=> b!7010064 m!7707880))

(declare-fun m!7707882 () Bool)

(assert (=> b!7010064 m!7707882))

(declare-fun m!7707884 () Bool)

(assert (=> b!7010064 m!7707884))

(declare-fun m!7707886 () Bool)

(assert (=> b!7010064 m!7707886))

(assert (=> b!7010057 m!7707830))

(assert (=> b!7010057 m!7707830))

(assert (=> b!7010072 m!7707828))

(assert (=> b!7010072 m!7707830))

(declare-fun m!7707888 () Bool)

(assert (=> start!675152 m!7707888))

(declare-fun m!7707890 () Bool)

(assert (=> start!675152 m!7707890))

(declare-fun m!7707892 () Bool)

(assert (=> start!675152 m!7707892))

(declare-fun m!7707894 () Bool)

(assert (=> b!7010066 m!7707894))

(declare-fun m!7707896 () Bool)

(assert (=> b!7010066 m!7707896))

(declare-fun m!7707898 () Bool)

(assert (=> b!7010066 m!7707898))

(declare-fun m!7707900 () Bool)

(assert (=> b!7010066 m!7707900))

(declare-fun m!7707902 () Bool)

(assert (=> b!7010066 m!7707902))

(declare-fun m!7707904 () Bool)

(assert (=> b!7010066 m!7707904))

(check-sat (not b!7010071) (not start!675152) (not b!7010056) (not b!7010072) (not b!7010062) (not b!7010065) (not b!7010059) (not b!7010073) (not b!7010064) (not b!7010057) (not b!7010068) tp_is_empty!43855 (not b!7010058) (not b!7010063) (not b!7010070) (not setNonEmpty!48347) (not b!7010066) (not b!7010074) (not b!7010069))
(check-sat)
