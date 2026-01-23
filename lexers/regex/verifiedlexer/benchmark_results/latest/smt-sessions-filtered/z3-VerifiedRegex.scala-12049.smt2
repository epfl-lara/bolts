; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!676038 () Bool)

(assert start!676038)

(declare-fun b!7015333 () Bool)

(assert (=> b!7015333 true))

(declare-fun b!7015329 () Bool)

(assert (=> b!7015329 true))

(declare-fun b!7015339 () Bool)

(assert (=> b!7015339 true))

(declare-fun b!7015328 () Bool)

(declare-fun res!2863128 () Bool)

(declare-fun e!4217073 () Bool)

(assert (=> b!7015328 (=> (not res!2863128) (not e!4217073))))

(declare-datatypes ((C!34960 0))(
  ( (C!34961 (val!27182 Int)) )
))
(declare-datatypes ((List!67580 0))(
  ( (Nil!67456) (Cons!67456 (h!73904 C!34960) (t!381335 List!67580)) )
))
(declare-fun s!7408 () List!67580)

(get-info :version)

(assert (=> b!7015328 (= res!2863128 ((_ is Cons!67456) s!7408))))

(declare-fun setRes!48498 () Bool)

(declare-fun e!4217075 () Bool)

(declare-fun setNonEmpty!48498 () Bool)

(declare-datatypes ((Regex!17345 0))(
  ( (ElementMatch!17345 (c!1303332 C!34960)) (Concat!26190 (regOne!35202 Regex!17345) (regTwo!35202 Regex!17345)) (EmptyExpr!17345) (Star!17345 (reg!17674 Regex!17345)) (EmptyLang!17345) (Union!17345 (regOne!35203 Regex!17345) (regTwo!35203 Regex!17345)) )
))
(declare-datatypes ((List!67581 0))(
  ( (Nil!67457) (Cons!67457 (h!73905 Regex!17345) (t!381336 List!67581)) )
))
(declare-datatypes ((Context!12682 0))(
  ( (Context!12683 (exprs!6841 List!67581)) )
))
(declare-fun setElem!48498 () Context!12682)

(declare-fun tp!1933111 () Bool)

(declare-fun inv!86221 (Context!12682) Bool)

(assert (=> setNonEmpty!48498 (= setRes!48498 (and tp!1933111 (inv!86221 setElem!48498) e!4217075))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12682))

(declare-fun setRest!48498 () (InoxSet Context!12682))

(assert (=> setNonEmpty!48498 (= z1!570 ((_ map or) (store ((as const (Array Context!12682 Bool)) false) setElem!48498 true) setRest!48498))))

(declare-fun e!4217070 () Bool)

(declare-fun e!4217069 () Bool)

(assert (=> b!7015329 (= e!4217070 e!4217069)))

(declare-fun res!2863129 () Bool)

(assert (=> b!7015329 (=> res!2863129 e!4217069)))

(declare-fun lt!2507764 () Context!12682)

(declare-fun lt!2507765 () Context!12682)

(declare-fun lt!2507757 () Context!12682)

(assert (=> b!7015329 (= res!2863129 (or (not (= lt!2507765 lt!2507764)) (not (select z1!570 lt!2507757))))))

(declare-fun ct2!306 () Context!12682)

(declare-fun ++!15360 (List!67581 List!67581) List!67581)

(assert (=> b!7015329 (= lt!2507765 (Context!12683 (++!15360 (exprs!6841 lt!2507757) (exprs!6841 ct2!306))))))

(declare-datatypes ((Unit!161372 0))(
  ( (Unit!161373) )
))
(declare-fun lt!2507760 () Unit!161372)

(declare-fun lambda!409780 () Int)

(declare-fun lemmaConcatPreservesForall!681 (List!67581 List!67581 Int) Unit!161372)

(assert (=> b!7015329 (= lt!2507760 (lemmaConcatPreservesForall!681 (exprs!6841 lt!2507757) (exprs!6841 ct2!306) lambda!409780))))

(declare-fun lambda!409779 () Int)

(declare-fun mapPost2!200 ((InoxSet Context!12682) Int Context!12682) Context!12682)

(assert (=> b!7015329 (= lt!2507757 (mapPost2!200 z1!570 lambda!409779 lt!2507764))))

(declare-fun b!7015330 () Bool)

(declare-fun res!2863119 () Bool)

(declare-fun e!4217071 () Bool)

(assert (=> b!7015330 (=> res!2863119 e!4217071)))

(declare-fun isEmpty!39394 (List!67581) Bool)

(assert (=> b!7015330 (= res!2863119 (isEmpty!39394 (exprs!6841 lt!2507757)))))

(declare-fun b!7015331 () Bool)

(declare-fun e!4217076 () Bool)

(assert (=> b!7015331 (= e!4217071 e!4217076)))

(declare-fun res!2863124 () Bool)

(assert (=> b!7015331 (=> res!2863124 e!4217076)))

(declare-fun nullable!7105 (Regex!17345) Bool)

(assert (=> b!7015331 (= res!2863124 (nullable!7105 (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun lt!2507763 () Context!12682)

(declare-fun lt!2507755 () List!67581)

(assert (=> b!7015331 (= lt!2507763 (Context!12683 lt!2507755))))

(declare-fun tail!13431 (List!67581) List!67581)

(assert (=> b!7015331 (= lt!2507755 (tail!13431 (exprs!6841 lt!2507757)))))

(declare-fun b!7015332 () Bool)

(declare-fun e!4217067 () Bool)

(assert (=> b!7015332 (= e!4217069 e!4217067)))

(declare-fun res!2863122 () Bool)

(assert (=> b!7015332 (=> res!2863122 e!4217067)))

(declare-fun lt!2507750 () (InoxSet Context!12682))

(declare-fun lt!2507754 () (InoxSet Context!12682))

(assert (=> b!7015332 (= res!2863122 (not (= lt!2507750 lt!2507754)))))

(assert (=> b!7015332 (= lt!2507750 (store ((as const (Array Context!12682 Bool)) false) lt!2507765 true))))

(declare-fun lt!2507751 () Unit!161372)

(assert (=> b!7015332 (= lt!2507751 (lemmaConcatPreservesForall!681 (exprs!6841 lt!2507757) (exprs!6841 ct2!306) lambda!409780))))

(declare-fun setIsEmpty!48498 () Bool)

(assert (=> setIsEmpty!48498 setRes!48498))

(assert (=> b!7015333 (= e!4217073 (not e!4217070))))

(declare-fun res!2863126 () Bool)

(assert (=> b!7015333 (=> res!2863126 e!4217070)))

(declare-fun matchZipper!2885 ((InoxSet Context!12682) List!67580) Bool)

(assert (=> b!7015333 (= res!2863126 (not (matchZipper!2885 lt!2507754 s!7408)))))

(assert (=> b!7015333 (= lt!2507754 (store ((as const (Array Context!12682 Bool)) false) lt!2507764 true))))

(declare-fun lt!2507753 () (InoxSet Context!12682))

(declare-fun lambda!409778 () Int)

(declare-fun getWitness!1298 ((InoxSet Context!12682) Int) Context!12682)

(assert (=> b!7015333 (= lt!2507764 (getWitness!1298 lt!2507753 lambda!409778))))

(declare-datatypes ((List!67582 0))(
  ( (Nil!67458) (Cons!67458 (h!73906 Context!12682) (t!381337 List!67582)) )
))
(declare-fun lt!2507766 () List!67582)

(declare-fun exists!3205 (List!67582 Int) Bool)

(assert (=> b!7015333 (exists!3205 lt!2507766 lambda!409778)))

(declare-fun lt!2507752 () Unit!161372)

(declare-fun lemmaZipperMatchesExistsMatchingContext!314 (List!67582 List!67580) Unit!161372)

(assert (=> b!7015333 (= lt!2507752 (lemmaZipperMatchesExistsMatchingContext!314 lt!2507766 s!7408))))

(declare-fun toList!10705 ((InoxSet Context!12682)) List!67582)

(assert (=> b!7015333 (= lt!2507766 (toList!10705 lt!2507753))))

(declare-fun b!7015334 () Bool)

(declare-fun e!4217072 () Bool)

(declare-fun tp!1933109 () Bool)

(assert (=> b!7015334 (= e!4217072 tp!1933109)))

(declare-fun b!7015335 () Bool)

(declare-fun e!4217068 () Bool)

(assert (=> b!7015335 (= e!4217076 e!4217068)))

(declare-fun res!2863127 () Bool)

(assert (=> b!7015335 (=> res!2863127 e!4217068)))

(declare-fun lt!2507762 () (InoxSet Context!12682))

(assert (=> b!7015335 (= res!2863127 (not (matchZipper!2885 lt!2507762 (t!381335 s!7408))))))

(declare-fun derivationStepZipperDown!2063 (Regex!17345 Context!12682 C!34960) (InoxSet Context!12682))

(assert (=> b!7015335 (= lt!2507762 (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) (Context!12683 (++!15360 lt!2507755 (exprs!6841 ct2!306))) (h!73904 s!7408)))))

(declare-fun lt!2507749 () Unit!161372)

(assert (=> b!7015335 (= lt!2507749 (lemmaConcatPreservesForall!681 lt!2507755 (exprs!6841 ct2!306) lambda!409780))))

(declare-fun b!7015336 () Bool)

(declare-fun e!4217074 () Bool)

(declare-fun tp_is_empty!43915 () Bool)

(declare-fun tp!1933110 () Bool)

(assert (=> b!7015336 (= e!4217074 (and tp_is_empty!43915 tp!1933110))))

(declare-fun b!7015337 () Bool)

(declare-fun validRegex!8902 (Regex!17345) Bool)

(assert (=> b!7015337 (= e!4217068 (validRegex!8902 (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun appendTo!466 ((InoxSet Context!12682) Context!12682) (InoxSet Context!12682))

(assert (=> b!7015337 (= lt!2507762 (appendTo!466 (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) lt!2507763 (h!73904 s!7408)) ct2!306))))

(declare-fun lt!2507748 () Unit!161372)

(assert (=> b!7015337 (= lt!2507748 (lemmaConcatPreservesForall!681 lt!2507755 (exprs!6841 ct2!306) lambda!409780))))

(declare-fun lt!2507758 () Unit!161372)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!36 (Context!12682 Regex!17345 C!34960 Context!12682) Unit!161372)

(assert (=> b!7015337 (= lt!2507758 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!36 lt!2507763 (h!73905 (exprs!6841 lt!2507757)) (h!73904 s!7408) ct2!306))))

(declare-fun b!7015338 () Bool)

(declare-fun tp!1933108 () Bool)

(assert (=> b!7015338 (= e!4217075 tp!1933108)))

(assert (=> b!7015339 (= e!4217067 e!4217071)))

(declare-fun res!2863125 () Bool)

(assert (=> b!7015339 (=> res!2863125 e!4217071)))

(declare-fun lt!2507759 () (InoxSet Context!12682))

(declare-fun derivationStepZipper!2825 ((InoxSet Context!12682) C!34960) (InoxSet Context!12682))

(assert (=> b!7015339 (= res!2863125 (not (= (derivationStepZipper!2825 lt!2507750 (h!73904 s!7408)) lt!2507759)))))

(declare-fun lambda!409781 () Int)

(declare-fun flatMap!2331 ((InoxSet Context!12682) Int) (InoxSet Context!12682))

(declare-fun derivationStepZipperUp!1995 (Context!12682 C!34960) (InoxSet Context!12682))

(assert (=> b!7015339 (= (flatMap!2331 lt!2507750 lambda!409781) (derivationStepZipperUp!1995 lt!2507765 (h!73904 s!7408)))))

(declare-fun lt!2507756 () Unit!161372)

(declare-fun lemmaFlatMapOnSingletonSet!1846 ((InoxSet Context!12682) Context!12682 Int) Unit!161372)

(assert (=> b!7015339 (= lt!2507756 (lemmaFlatMapOnSingletonSet!1846 lt!2507750 lt!2507765 lambda!409781))))

(assert (=> b!7015339 (= lt!2507759 (derivationStepZipperUp!1995 lt!2507765 (h!73904 s!7408)))))

(declare-fun lt!2507761 () Unit!161372)

(assert (=> b!7015339 (= lt!2507761 (lemmaConcatPreservesForall!681 (exprs!6841 lt!2507757) (exprs!6841 ct2!306) lambda!409780))))

(declare-fun res!2863120 () Bool)

(assert (=> start!676038 (=> (not res!2863120) (not e!4217073))))

(assert (=> start!676038 (= res!2863120 (matchZipper!2885 lt!2507753 s!7408))))

(assert (=> start!676038 (= lt!2507753 (appendTo!466 z1!570 ct2!306))))

(assert (=> start!676038 e!4217073))

(declare-fun condSetEmpty!48498 () Bool)

(assert (=> start!676038 (= condSetEmpty!48498 (= z1!570 ((as const (Array Context!12682 Bool)) false)))))

(assert (=> start!676038 setRes!48498))

(assert (=> start!676038 (and (inv!86221 ct2!306) e!4217072)))

(assert (=> start!676038 e!4217074))

(declare-fun b!7015340 () Bool)

(declare-fun res!2863121 () Bool)

(assert (=> b!7015340 (=> res!2863121 e!4217071)))

(assert (=> b!7015340 (= res!2863121 (not ((_ is Cons!67457) (exprs!6841 lt!2507757))))))

(declare-fun b!7015341 () Bool)

(declare-fun res!2863123 () Bool)

(assert (=> b!7015341 (=> res!2863123 e!4217070)))

(assert (=> b!7015341 (= res!2863123 (not (select lt!2507753 lt!2507764)))))

(assert (= (and start!676038 res!2863120) b!7015328))

(assert (= (and b!7015328 res!2863128) b!7015333))

(assert (= (and b!7015333 (not res!2863126)) b!7015341))

(assert (= (and b!7015341 (not res!2863123)) b!7015329))

(assert (= (and b!7015329 (not res!2863129)) b!7015332))

(assert (= (and b!7015332 (not res!2863122)) b!7015339))

(assert (= (and b!7015339 (not res!2863125)) b!7015340))

(assert (= (and b!7015340 (not res!2863121)) b!7015330))

(assert (= (and b!7015330 (not res!2863119)) b!7015331))

(assert (= (and b!7015331 (not res!2863124)) b!7015335))

(assert (= (and b!7015335 (not res!2863127)) b!7015337))

(assert (= (and start!676038 condSetEmpty!48498) setIsEmpty!48498))

(assert (= (and start!676038 (not condSetEmpty!48498)) setNonEmpty!48498))

(assert (= setNonEmpty!48498 b!7015338))

(assert (= start!676038 b!7015334))

(assert (= (and start!676038 ((_ is Cons!67456) s!7408)) b!7015336))

(declare-fun m!7714746 () Bool)

(assert (=> b!7015339 m!7714746))

(declare-fun m!7714748 () Bool)

(assert (=> b!7015339 m!7714748))

(declare-fun m!7714750 () Bool)

(assert (=> b!7015339 m!7714750))

(declare-fun m!7714752 () Bool)

(assert (=> b!7015339 m!7714752))

(declare-fun m!7714754 () Bool)

(assert (=> b!7015339 m!7714754))

(declare-fun m!7714756 () Bool)

(assert (=> b!7015333 m!7714756))

(declare-fun m!7714758 () Bool)

(assert (=> b!7015333 m!7714758))

(declare-fun m!7714760 () Bool)

(assert (=> b!7015333 m!7714760))

(declare-fun m!7714762 () Bool)

(assert (=> b!7015333 m!7714762))

(declare-fun m!7714764 () Bool)

(assert (=> b!7015333 m!7714764))

(declare-fun m!7714766 () Bool)

(assert (=> b!7015333 m!7714766))

(declare-fun m!7714768 () Bool)

(assert (=> setNonEmpty!48498 m!7714768))

(declare-fun m!7714770 () Bool)

(assert (=> b!7015329 m!7714770))

(declare-fun m!7714772 () Bool)

(assert (=> b!7015329 m!7714772))

(assert (=> b!7015329 m!7714750))

(declare-fun m!7714774 () Bool)

(assert (=> b!7015329 m!7714774))

(declare-fun m!7714776 () Bool)

(assert (=> start!676038 m!7714776))

(declare-fun m!7714778 () Bool)

(assert (=> start!676038 m!7714778))

(declare-fun m!7714780 () Bool)

(assert (=> start!676038 m!7714780))

(declare-fun m!7714782 () Bool)

(assert (=> b!7015337 m!7714782))

(declare-fun m!7714784 () Bool)

(assert (=> b!7015337 m!7714784))

(declare-fun m!7714786 () Bool)

(assert (=> b!7015337 m!7714786))

(declare-fun m!7714788 () Bool)

(assert (=> b!7015337 m!7714788))

(assert (=> b!7015337 m!7714786))

(declare-fun m!7714790 () Bool)

(assert (=> b!7015337 m!7714790))

(declare-fun m!7714792 () Bool)

(assert (=> b!7015332 m!7714792))

(assert (=> b!7015332 m!7714750))

(declare-fun m!7714794 () Bool)

(assert (=> b!7015335 m!7714794))

(declare-fun m!7714796 () Bool)

(assert (=> b!7015335 m!7714796))

(declare-fun m!7714798 () Bool)

(assert (=> b!7015335 m!7714798))

(assert (=> b!7015335 m!7714784))

(declare-fun m!7714800 () Bool)

(assert (=> b!7015330 m!7714800))

(declare-fun m!7714802 () Bool)

(assert (=> b!7015341 m!7714802))

(declare-fun m!7714804 () Bool)

(assert (=> b!7015331 m!7714804))

(declare-fun m!7714806 () Bool)

(assert (=> b!7015331 m!7714806))

(check-sat (not b!7015336) (not b!7015329) (not b!7015330) tp_is_empty!43915 (not b!7015333) (not b!7015339) (not b!7015335) (not b!7015337) (not b!7015338) (not b!7015334) (not setNonEmpty!48498) (not start!676038) (not b!7015332) (not b!7015331))
(check-sat)
(get-model)

(declare-fun d!2186882 () Bool)

(declare-fun e!4217079 () Bool)

(assert (=> d!2186882 e!4217079))

(declare-fun res!2863133 () Bool)

(assert (=> d!2186882 (=> (not res!2863133) (not e!4217079))))

(declare-fun lt!2507769 () Context!12682)

(declare-fun dynLambda!27153 (Int Context!12682) Bool)

(assert (=> d!2186882 (= res!2863133 (dynLambda!27153 lambda!409778 lt!2507769))))

(declare-fun getWitness!1299 (List!67582 Int) Context!12682)

(assert (=> d!2186882 (= lt!2507769 (getWitness!1299 (toList!10705 lt!2507753) lambda!409778))))

(declare-fun exists!3206 ((InoxSet Context!12682) Int) Bool)

(assert (=> d!2186882 (exists!3206 lt!2507753 lambda!409778)))

(assert (=> d!2186882 (= (getWitness!1298 lt!2507753 lambda!409778) lt!2507769)))

(declare-fun b!7015350 () Bool)

(assert (=> b!7015350 (= e!4217079 (select lt!2507753 lt!2507769))))

(assert (= (and d!2186882 res!2863133) b!7015350))

(declare-fun b_lambda!264747 () Bool)

(assert (=> (not b_lambda!264747) (not d!2186882)))

(declare-fun m!7714808 () Bool)

(assert (=> d!2186882 m!7714808))

(assert (=> d!2186882 m!7714764))

(assert (=> d!2186882 m!7714764))

(declare-fun m!7714810 () Bool)

(assert (=> d!2186882 m!7714810))

(declare-fun m!7714812 () Bool)

(assert (=> d!2186882 m!7714812))

(declare-fun m!7714814 () Bool)

(assert (=> b!7015350 m!7714814))

(assert (=> b!7015333 d!2186882))

(declare-fun bs!1866759 () Bool)

(declare-fun d!2186884 () Bool)

(assert (= bs!1866759 (and d!2186884 b!7015333)))

(declare-fun lambda!409784 () Int)

(assert (=> bs!1866759 (not (= lambda!409784 lambda!409778))))

(assert (=> d!2186884 true))

(declare-fun order!28057 () Int)

(declare-fun dynLambda!27154 (Int Int) Int)

(assert (=> d!2186884 (< (dynLambda!27154 order!28057 lambda!409778) (dynLambda!27154 order!28057 lambda!409784))))

(declare-fun forall!16258 (List!67582 Int) Bool)

(assert (=> d!2186884 (= (exists!3205 lt!2507766 lambda!409778) (not (forall!16258 lt!2507766 lambda!409784)))))

(declare-fun bs!1866760 () Bool)

(assert (= bs!1866760 d!2186884))

(declare-fun m!7714816 () Bool)

(assert (=> bs!1866760 m!7714816))

(assert (=> b!7015333 d!2186884))

(declare-fun d!2186886 () Bool)

(declare-fun c!1303335 () Bool)

(declare-fun isEmpty!39395 (List!67580) Bool)

(assert (=> d!2186886 (= c!1303335 (isEmpty!39395 s!7408))))

(declare-fun e!4217082 () Bool)

(assert (=> d!2186886 (= (matchZipper!2885 lt!2507754 s!7408) e!4217082)))

(declare-fun b!7015357 () Bool)

(declare-fun nullableZipper!2499 ((InoxSet Context!12682)) Bool)

(assert (=> b!7015357 (= e!4217082 (nullableZipper!2499 lt!2507754))))

(declare-fun b!7015358 () Bool)

(declare-fun head!14189 (List!67580) C!34960)

(declare-fun tail!13432 (List!67580) List!67580)

(assert (=> b!7015358 (= e!4217082 (matchZipper!2885 (derivationStepZipper!2825 lt!2507754 (head!14189 s!7408)) (tail!13432 s!7408)))))

(assert (= (and d!2186886 c!1303335) b!7015357))

(assert (= (and d!2186886 (not c!1303335)) b!7015358))

(declare-fun m!7714818 () Bool)

(assert (=> d!2186886 m!7714818))

(declare-fun m!7714820 () Bool)

(assert (=> b!7015357 m!7714820))

(declare-fun m!7714822 () Bool)

(assert (=> b!7015358 m!7714822))

(assert (=> b!7015358 m!7714822))

(declare-fun m!7714824 () Bool)

(assert (=> b!7015358 m!7714824))

(declare-fun m!7714826 () Bool)

(assert (=> b!7015358 m!7714826))

(assert (=> b!7015358 m!7714824))

(assert (=> b!7015358 m!7714826))

(declare-fun m!7714828 () Bool)

(assert (=> b!7015358 m!7714828))

(assert (=> b!7015333 d!2186886))

(declare-fun d!2186890 () Bool)

(declare-fun e!4217089 () Bool)

(assert (=> d!2186890 e!4217089))

(declare-fun res!2863141 () Bool)

(assert (=> d!2186890 (=> (not res!2863141) (not e!4217089))))

(declare-fun lt!2507774 () List!67582)

(declare-fun noDuplicate!2577 (List!67582) Bool)

(assert (=> d!2186890 (= res!2863141 (noDuplicate!2577 lt!2507774))))

(declare-fun choose!52802 ((InoxSet Context!12682)) List!67582)

(assert (=> d!2186890 (= lt!2507774 (choose!52802 lt!2507753))))

(assert (=> d!2186890 (= (toList!10705 lt!2507753) lt!2507774)))

(declare-fun b!7015369 () Bool)

(declare-fun content!13405 (List!67582) (InoxSet Context!12682))

(assert (=> b!7015369 (= e!4217089 (= (content!13405 lt!2507774) lt!2507753))))

(assert (= (and d!2186890 res!2863141) b!7015369))

(declare-fun m!7714830 () Bool)

(assert (=> d!2186890 m!7714830))

(declare-fun m!7714832 () Bool)

(assert (=> d!2186890 m!7714832))

(declare-fun m!7714834 () Bool)

(assert (=> b!7015369 m!7714834))

(assert (=> b!7015333 d!2186890))

(declare-fun bs!1866762 () Bool)

(declare-fun d!2186892 () Bool)

(assert (= bs!1866762 (and d!2186892 b!7015333)))

(declare-fun lambda!409787 () Int)

(assert (=> bs!1866762 (= lambda!409787 lambda!409778)))

(declare-fun bs!1866763 () Bool)

(assert (= bs!1866763 (and d!2186892 d!2186884)))

(assert (=> bs!1866763 (not (= lambda!409787 lambda!409784))))

(assert (=> d!2186892 true))

(assert (=> d!2186892 (exists!3205 lt!2507766 lambda!409787)))

(declare-fun lt!2507781 () Unit!161372)

(declare-fun choose!52803 (List!67582 List!67580) Unit!161372)

(assert (=> d!2186892 (= lt!2507781 (choose!52803 lt!2507766 s!7408))))

(assert (=> d!2186892 (matchZipper!2885 (content!13405 lt!2507766) s!7408)))

(assert (=> d!2186892 (= (lemmaZipperMatchesExistsMatchingContext!314 lt!2507766 s!7408) lt!2507781)))

(declare-fun bs!1866764 () Bool)

(assert (= bs!1866764 d!2186892))

(declare-fun m!7714856 () Bool)

(assert (=> bs!1866764 m!7714856))

(declare-fun m!7714858 () Bool)

(assert (=> bs!1866764 m!7714858))

(declare-fun m!7714860 () Bool)

(assert (=> bs!1866764 m!7714860))

(assert (=> bs!1866764 m!7714860))

(declare-fun m!7714862 () Bool)

(assert (=> bs!1866764 m!7714862))

(assert (=> b!7015333 d!2186892))

(declare-fun d!2186898 () Bool)

(declare-fun forall!16259 (List!67581 Int) Bool)

(assert (=> d!2186898 (forall!16259 (++!15360 (exprs!6841 lt!2507757) (exprs!6841 ct2!306)) lambda!409780)))

(declare-fun lt!2507787 () Unit!161372)

(declare-fun choose!52804 (List!67581 List!67581 Int) Unit!161372)

(assert (=> d!2186898 (= lt!2507787 (choose!52804 (exprs!6841 lt!2507757) (exprs!6841 ct2!306) lambda!409780))))

(assert (=> d!2186898 (forall!16259 (exprs!6841 lt!2507757) lambda!409780)))

(assert (=> d!2186898 (= (lemmaConcatPreservesForall!681 (exprs!6841 lt!2507757) (exprs!6841 ct2!306) lambda!409780) lt!2507787)))

(declare-fun bs!1866765 () Bool)

(assert (= bs!1866765 d!2186898))

(assert (=> bs!1866765 m!7714772))

(assert (=> bs!1866765 m!7714772))

(declare-fun m!7714874 () Bool)

(assert (=> bs!1866765 m!7714874))

(declare-fun m!7714876 () Bool)

(assert (=> bs!1866765 m!7714876))

(declare-fun m!7714878 () Bool)

(assert (=> bs!1866765 m!7714878))

(assert (=> b!7015339 d!2186898))

(declare-fun d!2186902 () Bool)

(declare-fun dynLambda!27155 (Int Context!12682) (InoxSet Context!12682))

(assert (=> d!2186902 (= (flatMap!2331 lt!2507750 lambda!409781) (dynLambda!27155 lambda!409781 lt!2507765))))

(declare-fun lt!2507790 () Unit!161372)

(declare-fun choose!52805 ((InoxSet Context!12682) Context!12682 Int) Unit!161372)

(assert (=> d!2186902 (= lt!2507790 (choose!52805 lt!2507750 lt!2507765 lambda!409781))))

(assert (=> d!2186902 (= lt!2507750 (store ((as const (Array Context!12682 Bool)) false) lt!2507765 true))))

(assert (=> d!2186902 (= (lemmaFlatMapOnSingletonSet!1846 lt!2507750 lt!2507765 lambda!409781) lt!2507790)))

(declare-fun b_lambda!264751 () Bool)

(assert (=> (not b_lambda!264751) (not d!2186902)))

(declare-fun bs!1866768 () Bool)

(assert (= bs!1866768 d!2186902))

(assert (=> bs!1866768 m!7714748))

(declare-fun m!7714882 () Bool)

(assert (=> bs!1866768 m!7714882))

(declare-fun m!7714884 () Bool)

(assert (=> bs!1866768 m!7714884))

(assert (=> bs!1866768 m!7714792))

(assert (=> b!7015339 d!2186902))

(declare-fun bs!1866771 () Bool)

(declare-fun d!2186906 () Bool)

(assert (= bs!1866771 (and d!2186906 b!7015339)))

(declare-fun lambda!409796 () Int)

(assert (=> bs!1866771 (= lambda!409796 lambda!409781)))

(assert (=> d!2186906 true))

(assert (=> d!2186906 (= (derivationStepZipper!2825 lt!2507750 (h!73904 s!7408)) (flatMap!2331 lt!2507750 lambda!409796))))

(declare-fun bs!1866772 () Bool)

(assert (= bs!1866772 d!2186906))

(declare-fun m!7714888 () Bool)

(assert (=> bs!1866772 m!7714888))

(assert (=> b!7015339 d!2186906))

(declare-fun b!7015398 () Bool)

(declare-fun e!4217109 () (InoxSet Context!12682))

(declare-fun call!637143 () (InoxSet Context!12682))

(assert (=> b!7015398 (= e!4217109 call!637143)))

(declare-fun b!7015399 () Bool)

(declare-fun e!4217108 () (InoxSet Context!12682))

(assert (=> b!7015399 (= e!4217108 ((_ map or) call!637143 (derivationStepZipperUp!1995 (Context!12683 (t!381336 (exprs!6841 lt!2507765))) (h!73904 s!7408))))))

(declare-fun bm!637138 () Bool)

(assert (=> bm!637138 (= call!637143 (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507765)) (Context!12683 (t!381336 (exprs!6841 lt!2507765))) (h!73904 s!7408)))))

(declare-fun b!7015400 () Bool)

(declare-fun e!4217107 () Bool)

(assert (=> b!7015400 (= e!4217107 (nullable!7105 (h!73905 (exprs!6841 lt!2507765))))))

(declare-fun b!7015401 () Bool)

(assert (=> b!7015401 (= e!4217108 e!4217109)))

(declare-fun c!1303347 () Bool)

(assert (=> b!7015401 (= c!1303347 ((_ is Cons!67457) (exprs!6841 lt!2507765)))))

(declare-fun d!2186910 () Bool)

(declare-fun c!1303348 () Bool)

(assert (=> d!2186910 (= c!1303348 e!4217107)))

(declare-fun res!2863155 () Bool)

(assert (=> d!2186910 (=> (not res!2863155) (not e!4217107))))

(assert (=> d!2186910 (= res!2863155 ((_ is Cons!67457) (exprs!6841 lt!2507765)))))

(assert (=> d!2186910 (= (derivationStepZipperUp!1995 lt!2507765 (h!73904 s!7408)) e!4217108)))

(declare-fun b!7015402 () Bool)

(assert (=> b!7015402 (= e!4217109 ((as const (Array Context!12682 Bool)) false))))

(assert (= (and d!2186910 res!2863155) b!7015400))

(assert (= (and d!2186910 c!1303348) b!7015399))

(assert (= (and d!2186910 (not c!1303348)) b!7015401))

(assert (= (and b!7015401 c!1303347) b!7015398))

(assert (= (and b!7015401 (not c!1303347)) b!7015402))

(assert (= (or b!7015399 b!7015398) bm!637138))

(declare-fun m!7714904 () Bool)

(assert (=> b!7015399 m!7714904))

(declare-fun m!7714906 () Bool)

(assert (=> bm!637138 m!7714906))

(declare-fun m!7714908 () Bool)

(assert (=> b!7015400 m!7714908))

(assert (=> b!7015339 d!2186910))

(declare-fun d!2186916 () Bool)

(declare-fun choose!52808 ((InoxSet Context!12682) Int) (InoxSet Context!12682))

(assert (=> d!2186916 (= (flatMap!2331 lt!2507750 lambda!409781) (choose!52808 lt!2507750 lambda!409781))))

(declare-fun bs!1866773 () Bool)

(assert (= bs!1866773 d!2186916))

(declare-fun m!7714910 () Bool)

(assert (=> bs!1866773 m!7714910))

(assert (=> b!7015339 d!2186916))

(declare-fun b!7015414 () Bool)

(declare-fun e!4217115 () Bool)

(declare-fun lt!2507802 () List!67581)

(assert (=> b!7015414 (= e!4217115 (or (not (= (exprs!6841 ct2!306) Nil!67457)) (= lt!2507802 (exprs!6841 lt!2507757))))))

(declare-fun d!2186918 () Bool)

(assert (=> d!2186918 e!4217115))

(declare-fun res!2863161 () Bool)

(assert (=> d!2186918 (=> (not res!2863161) (not e!4217115))))

(declare-fun content!13407 (List!67581) (InoxSet Regex!17345))

(assert (=> d!2186918 (= res!2863161 (= (content!13407 lt!2507802) ((_ map or) (content!13407 (exprs!6841 lt!2507757)) (content!13407 (exprs!6841 ct2!306)))))))

(declare-fun e!4217114 () List!67581)

(assert (=> d!2186918 (= lt!2507802 e!4217114)))

(declare-fun c!1303353 () Bool)

(assert (=> d!2186918 (= c!1303353 ((_ is Nil!67457) (exprs!6841 lt!2507757)))))

(assert (=> d!2186918 (= (++!15360 (exprs!6841 lt!2507757) (exprs!6841 ct2!306)) lt!2507802)))

(declare-fun b!7015413 () Bool)

(declare-fun res!2863160 () Bool)

(assert (=> b!7015413 (=> (not res!2863160) (not e!4217115))))

(declare-fun size!40992 (List!67581) Int)

(assert (=> b!7015413 (= res!2863160 (= (size!40992 lt!2507802) (+ (size!40992 (exprs!6841 lt!2507757)) (size!40992 (exprs!6841 ct2!306)))))))

(declare-fun b!7015411 () Bool)

(assert (=> b!7015411 (= e!4217114 (exprs!6841 ct2!306))))

(declare-fun b!7015412 () Bool)

(assert (=> b!7015412 (= e!4217114 (Cons!67457 (h!73905 (exprs!6841 lt!2507757)) (++!15360 (t!381336 (exprs!6841 lt!2507757)) (exprs!6841 ct2!306))))))

(assert (= (and d!2186918 c!1303353) b!7015411))

(assert (= (and d!2186918 (not c!1303353)) b!7015412))

(assert (= (and d!2186918 res!2863161) b!7015413))

(assert (= (and b!7015413 res!2863160) b!7015414))

(declare-fun m!7714920 () Bool)

(assert (=> d!2186918 m!7714920))

(declare-fun m!7714922 () Bool)

(assert (=> d!2186918 m!7714922))

(declare-fun m!7714924 () Bool)

(assert (=> d!2186918 m!7714924))

(declare-fun m!7714926 () Bool)

(assert (=> b!7015413 m!7714926))

(declare-fun m!7714928 () Bool)

(assert (=> b!7015413 m!7714928))

(declare-fun m!7714930 () Bool)

(assert (=> b!7015413 m!7714930))

(declare-fun m!7714932 () Bool)

(assert (=> b!7015412 m!7714932))

(assert (=> b!7015329 d!2186918))

(assert (=> b!7015329 d!2186898))

(declare-fun d!2186922 () Bool)

(declare-fun e!4217120 () Bool)

(assert (=> d!2186922 e!4217120))

(declare-fun res!2863164 () Bool)

(assert (=> d!2186922 (=> (not res!2863164) (not e!4217120))))

(declare-fun lt!2507805 () Context!12682)

(declare-fun dynLambda!27159 (Int Context!12682) Context!12682)

(assert (=> d!2186922 (= res!2863164 (= lt!2507764 (dynLambda!27159 lambda!409779 lt!2507805)))))

(declare-fun choose!52810 ((InoxSet Context!12682) Int Context!12682) Context!12682)

(assert (=> d!2186922 (= lt!2507805 (choose!52810 z1!570 lambda!409779 lt!2507764))))

(declare-fun map!15637 ((InoxSet Context!12682) Int) (InoxSet Context!12682))

(assert (=> d!2186922 (select (map!15637 z1!570 lambda!409779) lt!2507764)))

(assert (=> d!2186922 (= (mapPost2!200 z1!570 lambda!409779 lt!2507764) lt!2507805)))

(declare-fun b!7015422 () Bool)

(assert (=> b!7015422 (= e!4217120 (select z1!570 lt!2507805))))

(assert (= (and d!2186922 res!2863164) b!7015422))

(declare-fun b_lambda!264755 () Bool)

(assert (=> (not b_lambda!264755) (not d!2186922)))

(declare-fun m!7714934 () Bool)

(assert (=> d!2186922 m!7714934))

(declare-fun m!7714936 () Bool)

(assert (=> d!2186922 m!7714936))

(declare-fun m!7714938 () Bool)

(assert (=> d!2186922 m!7714938))

(declare-fun m!7714940 () Bool)

(assert (=> d!2186922 m!7714940))

(declare-fun m!7714942 () Bool)

(assert (=> b!7015422 m!7714942))

(assert (=> b!7015329 d!2186922))

(declare-fun d!2186924 () Bool)

(assert (=> d!2186924 (= (isEmpty!39394 (exprs!6841 lt!2507757)) ((_ is Nil!67457) (exprs!6841 lt!2507757)))))

(assert (=> b!7015330 d!2186924))

(declare-fun d!2186928 () Bool)

(declare-fun c!1303358 () Bool)

(assert (=> d!2186928 (= c!1303358 (isEmpty!39395 (t!381335 s!7408)))))

(declare-fun e!4217123 () Bool)

(assert (=> d!2186928 (= (matchZipper!2885 lt!2507762 (t!381335 s!7408)) e!4217123)))

(declare-fun b!7015427 () Bool)

(assert (=> b!7015427 (= e!4217123 (nullableZipper!2499 lt!2507762))))

(declare-fun b!7015428 () Bool)

(assert (=> b!7015428 (= e!4217123 (matchZipper!2885 (derivationStepZipper!2825 lt!2507762 (head!14189 (t!381335 s!7408))) (tail!13432 (t!381335 s!7408))))))

(assert (= (and d!2186928 c!1303358) b!7015427))

(assert (= (and d!2186928 (not c!1303358)) b!7015428))

(declare-fun m!7714962 () Bool)

(assert (=> d!2186928 m!7714962))

(declare-fun m!7714964 () Bool)

(assert (=> b!7015427 m!7714964))

(declare-fun m!7714966 () Bool)

(assert (=> b!7015428 m!7714966))

(assert (=> b!7015428 m!7714966))

(declare-fun m!7714968 () Bool)

(assert (=> b!7015428 m!7714968))

(declare-fun m!7714970 () Bool)

(assert (=> b!7015428 m!7714970))

(assert (=> b!7015428 m!7714968))

(assert (=> b!7015428 m!7714970))

(declare-fun m!7714972 () Bool)

(assert (=> b!7015428 m!7714972))

(assert (=> b!7015335 d!2186928))

(declare-fun b!7015451 () Bool)

(declare-fun e!4217138 () (InoxSet Context!12682))

(declare-fun call!637158 () (InoxSet Context!12682))

(declare-fun call!637160 () (InoxSet Context!12682))

(assert (=> b!7015451 (= e!4217138 ((_ map or) call!637158 call!637160))))

(declare-fun b!7015452 () Bool)

(declare-fun e!4217139 () (InoxSet Context!12682))

(assert (=> b!7015452 (= e!4217139 (store ((as const (Array Context!12682 Bool)) false) (Context!12683 (++!15360 lt!2507755 (exprs!6841 ct2!306))) true))))

(declare-fun bm!637151 () Bool)

(declare-fun call!637157 () List!67581)

(declare-fun call!637161 () List!67581)

(assert (=> bm!637151 (= call!637157 call!637161)))

(declare-fun b!7015453 () Bool)

(declare-fun e!4217136 () Bool)

(assert (=> b!7015453 (= e!4217136 (nullable!7105 (regOne!35202 (h!73905 (exprs!6841 lt!2507757)))))))

(declare-fun b!7015454 () Bool)

(declare-fun e!4217137 () (InoxSet Context!12682))

(declare-fun call!637159 () (InoxSet Context!12682))

(assert (=> b!7015454 (= e!4217137 call!637159)))

(declare-fun bm!637152 () Bool)

(declare-fun call!637156 () (InoxSet Context!12682))

(assert (=> bm!637152 (= call!637159 call!637156)))

(declare-fun d!2186932 () Bool)

(declare-fun c!1303375 () Bool)

(assert (=> d!2186932 (= c!1303375 (and ((_ is ElementMatch!17345) (h!73905 (exprs!6841 lt!2507757))) (= (c!1303332 (h!73905 (exprs!6841 lt!2507757))) (h!73904 s!7408))))))

(assert (=> d!2186932 (= (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) (Context!12683 (++!15360 lt!2507755 (exprs!6841 ct2!306))) (h!73904 s!7408)) e!4217139)))

(declare-fun b!7015455 () Bool)

(declare-fun e!4217141 () (InoxSet Context!12682))

(assert (=> b!7015455 (= e!4217141 e!4217137)))

(declare-fun c!1303373 () Bool)

(assert (=> b!7015455 (= c!1303373 ((_ is Concat!26190) (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun b!7015456 () Bool)

(declare-fun e!4217140 () (InoxSet Context!12682))

(assert (=> b!7015456 (= e!4217140 call!637159)))

(declare-fun bm!637153 () Bool)

(declare-fun c!1303374 () Bool)

(declare-fun $colon$colon!2539 (List!67581 Regex!17345) List!67581)

(assert (=> bm!637153 (= call!637161 ($colon$colon!2539 (exprs!6841 (Context!12683 (++!15360 lt!2507755 (exprs!6841 ct2!306)))) (ite (or c!1303374 c!1303373) (regTwo!35202 (h!73905 (exprs!6841 lt!2507757))) (h!73905 (exprs!6841 lt!2507757)))))))

(declare-fun b!7015457 () Bool)

(assert (=> b!7015457 (= e!4217140 ((as const (Array Context!12682 Bool)) false))))

(declare-fun bm!637154 () Bool)

(assert (=> bm!637154 (= call!637156 call!637160)))

(declare-fun b!7015458 () Bool)

(assert (=> b!7015458 (= e!4217139 e!4217138)))

(declare-fun c!1303372 () Bool)

(assert (=> b!7015458 (= c!1303372 ((_ is Union!17345) (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun bm!637155 () Bool)

(assert (=> bm!637155 (= call!637158 (derivationStepZipperDown!2063 (ite c!1303372 (regOne!35203 (h!73905 (exprs!6841 lt!2507757))) (regOne!35202 (h!73905 (exprs!6841 lt!2507757)))) (ite c!1303372 (Context!12683 (++!15360 lt!2507755 (exprs!6841 ct2!306))) (Context!12683 call!637161)) (h!73904 s!7408)))))

(declare-fun bm!637156 () Bool)

(assert (=> bm!637156 (= call!637160 (derivationStepZipperDown!2063 (ite c!1303372 (regTwo!35203 (h!73905 (exprs!6841 lt!2507757))) (ite c!1303374 (regTwo!35202 (h!73905 (exprs!6841 lt!2507757))) (ite c!1303373 (regOne!35202 (h!73905 (exprs!6841 lt!2507757))) (reg!17674 (h!73905 (exprs!6841 lt!2507757)))))) (ite (or c!1303372 c!1303374) (Context!12683 (++!15360 lt!2507755 (exprs!6841 ct2!306))) (Context!12683 call!637157)) (h!73904 s!7408)))))

(declare-fun b!7015459 () Bool)

(declare-fun c!1303371 () Bool)

(assert (=> b!7015459 (= c!1303371 ((_ is Star!17345) (h!73905 (exprs!6841 lt!2507757))))))

(assert (=> b!7015459 (= e!4217137 e!4217140)))

(declare-fun b!7015460 () Bool)

(assert (=> b!7015460 (= c!1303374 e!4217136)))

(declare-fun res!2863167 () Bool)

(assert (=> b!7015460 (=> (not res!2863167) (not e!4217136))))

(assert (=> b!7015460 (= res!2863167 ((_ is Concat!26190) (h!73905 (exprs!6841 lt!2507757))))))

(assert (=> b!7015460 (= e!4217138 e!4217141)))

(declare-fun b!7015461 () Bool)

(assert (=> b!7015461 (= e!4217141 ((_ map or) call!637158 call!637156))))

(assert (= (and d!2186932 c!1303375) b!7015452))

(assert (= (and d!2186932 (not c!1303375)) b!7015458))

(assert (= (and b!7015458 c!1303372) b!7015451))

(assert (= (and b!7015458 (not c!1303372)) b!7015460))

(assert (= (and b!7015460 res!2863167) b!7015453))

(assert (= (and b!7015460 c!1303374) b!7015461))

(assert (= (and b!7015460 (not c!1303374)) b!7015455))

(assert (= (and b!7015455 c!1303373) b!7015454))

(assert (= (and b!7015455 (not c!1303373)) b!7015459))

(assert (= (and b!7015459 c!1303371) b!7015456))

(assert (= (and b!7015459 (not c!1303371)) b!7015457))

(assert (= (or b!7015454 b!7015456) bm!637151))

(assert (= (or b!7015454 b!7015456) bm!637152))

(assert (= (or b!7015461 bm!637152) bm!637154))

(assert (= (or b!7015461 bm!637151) bm!637153))

(assert (= (or b!7015451 b!7015461) bm!637155))

(assert (= (or b!7015451 bm!637154) bm!637156))

(declare-fun m!7714986 () Bool)

(assert (=> b!7015453 m!7714986))

(declare-fun m!7714988 () Bool)

(assert (=> bm!637155 m!7714988))

(declare-fun m!7714990 () Bool)

(assert (=> bm!637156 m!7714990))

(declare-fun m!7714992 () Bool)

(assert (=> b!7015452 m!7714992))

(declare-fun m!7714994 () Bool)

(assert (=> bm!637153 m!7714994))

(assert (=> b!7015335 d!2186932))

(declare-fun lt!2507815 () List!67581)

(declare-fun b!7015465 () Bool)

(declare-fun e!4217143 () Bool)

(assert (=> b!7015465 (= e!4217143 (or (not (= (exprs!6841 ct2!306) Nil!67457)) (= lt!2507815 lt!2507755)))))

(declare-fun d!2186942 () Bool)

(assert (=> d!2186942 e!4217143))

(declare-fun res!2863169 () Bool)

(assert (=> d!2186942 (=> (not res!2863169) (not e!4217143))))

(assert (=> d!2186942 (= res!2863169 (= (content!13407 lt!2507815) ((_ map or) (content!13407 lt!2507755) (content!13407 (exprs!6841 ct2!306)))))))

(declare-fun e!4217142 () List!67581)

(assert (=> d!2186942 (= lt!2507815 e!4217142)))

(declare-fun c!1303376 () Bool)

(assert (=> d!2186942 (= c!1303376 ((_ is Nil!67457) lt!2507755))))

(assert (=> d!2186942 (= (++!15360 lt!2507755 (exprs!6841 ct2!306)) lt!2507815)))

(declare-fun b!7015464 () Bool)

(declare-fun res!2863168 () Bool)

(assert (=> b!7015464 (=> (not res!2863168) (not e!4217143))))

(assert (=> b!7015464 (= res!2863168 (= (size!40992 lt!2507815) (+ (size!40992 lt!2507755) (size!40992 (exprs!6841 ct2!306)))))))

(declare-fun b!7015462 () Bool)

(assert (=> b!7015462 (= e!4217142 (exprs!6841 ct2!306))))

(declare-fun b!7015463 () Bool)

(assert (=> b!7015463 (= e!4217142 (Cons!67457 (h!73905 lt!2507755) (++!15360 (t!381336 lt!2507755) (exprs!6841 ct2!306))))))

(assert (= (and d!2186942 c!1303376) b!7015462))

(assert (= (and d!2186942 (not c!1303376)) b!7015463))

(assert (= (and d!2186942 res!2863169) b!7015464))

(assert (= (and b!7015464 res!2863168) b!7015465))

(declare-fun m!7714998 () Bool)

(assert (=> d!2186942 m!7714998))

(declare-fun m!7715002 () Bool)

(assert (=> d!2186942 m!7715002))

(assert (=> d!2186942 m!7714924))

(declare-fun m!7715006 () Bool)

(assert (=> b!7015464 m!7715006))

(declare-fun m!7715008 () Bool)

(assert (=> b!7015464 m!7715008))

(assert (=> b!7015464 m!7714930))

(declare-fun m!7715012 () Bool)

(assert (=> b!7015463 m!7715012))

(assert (=> b!7015335 d!2186942))

(declare-fun d!2186946 () Bool)

(assert (=> d!2186946 (forall!16259 (++!15360 lt!2507755 (exprs!6841 ct2!306)) lambda!409780)))

(declare-fun lt!2507816 () Unit!161372)

(assert (=> d!2186946 (= lt!2507816 (choose!52804 lt!2507755 (exprs!6841 ct2!306) lambda!409780))))

(assert (=> d!2186946 (forall!16259 lt!2507755 lambda!409780)))

(assert (=> d!2186946 (= (lemmaConcatPreservesForall!681 lt!2507755 (exprs!6841 ct2!306) lambda!409780) lt!2507816)))

(declare-fun bs!1866790 () Bool)

(assert (= bs!1866790 d!2186946))

(assert (=> bs!1866790 m!7714796))

(assert (=> bs!1866790 m!7714796))

(declare-fun m!7715014 () Bool)

(assert (=> bs!1866790 m!7715014))

(declare-fun m!7715016 () Bool)

(assert (=> bs!1866790 m!7715016))

(declare-fun m!7715018 () Bool)

(assert (=> bs!1866790 m!7715018))

(assert (=> b!7015335 d!2186946))

(declare-fun d!2186948 () Bool)

(declare-fun nullableFct!2693 (Regex!17345) Bool)

(assert (=> d!2186948 (= (nullable!7105 (h!73905 (exprs!6841 lt!2507757))) (nullableFct!2693 (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun bs!1866791 () Bool)

(assert (= bs!1866791 d!2186948))

(declare-fun m!7715020 () Bool)

(assert (=> bs!1866791 m!7715020))

(assert (=> b!7015331 d!2186948))

(declare-fun d!2186950 () Bool)

(assert (=> d!2186950 (= (tail!13431 (exprs!6841 lt!2507757)) (t!381336 (exprs!6841 lt!2507757)))))

(assert (=> b!7015331 d!2186950))

(assert (=> b!7015332 d!2186898))

(declare-fun d!2186952 () Bool)

(declare-fun c!1303377 () Bool)

(assert (=> d!2186952 (= c!1303377 (isEmpty!39395 s!7408))))

(declare-fun e!4217144 () Bool)

(assert (=> d!2186952 (= (matchZipper!2885 lt!2507753 s!7408) e!4217144)))

(declare-fun b!7015466 () Bool)

(assert (=> b!7015466 (= e!4217144 (nullableZipper!2499 lt!2507753))))

(declare-fun b!7015467 () Bool)

(assert (=> b!7015467 (= e!4217144 (matchZipper!2885 (derivationStepZipper!2825 lt!2507753 (head!14189 s!7408)) (tail!13432 s!7408)))))

(assert (= (and d!2186952 c!1303377) b!7015466))

(assert (= (and d!2186952 (not c!1303377)) b!7015467))

(assert (=> d!2186952 m!7714818))

(declare-fun m!7715022 () Bool)

(assert (=> b!7015466 m!7715022))

(assert (=> b!7015467 m!7714822))

(assert (=> b!7015467 m!7714822))

(declare-fun m!7715024 () Bool)

(assert (=> b!7015467 m!7715024))

(assert (=> b!7015467 m!7714826))

(assert (=> b!7015467 m!7715024))

(assert (=> b!7015467 m!7714826))

(declare-fun m!7715026 () Bool)

(assert (=> b!7015467 m!7715026))

(assert (=> start!676038 d!2186952))

(declare-fun bs!1866792 () Bool)

(declare-fun d!2186954 () Bool)

(assert (= bs!1866792 (and d!2186954 b!7015329)))

(declare-fun lambda!409814 () Int)

(assert (=> bs!1866792 (= lambda!409814 lambda!409779)))

(assert (=> d!2186954 true))

(assert (=> d!2186954 (= (appendTo!466 z1!570 ct2!306) (map!15637 z1!570 lambda!409814))))

(declare-fun bs!1866793 () Bool)

(assert (= bs!1866793 d!2186954))

(declare-fun m!7715028 () Bool)

(assert (=> bs!1866793 m!7715028))

(assert (=> start!676038 d!2186954))

(declare-fun bs!1866794 () Bool)

(declare-fun d!2186956 () Bool)

(assert (= bs!1866794 (and d!2186956 b!7015329)))

(declare-fun lambda!409817 () Int)

(assert (=> bs!1866794 (= lambda!409817 lambda!409780)))

(assert (=> d!2186956 (= (inv!86221 ct2!306) (forall!16259 (exprs!6841 ct2!306) lambda!409817))))

(declare-fun bs!1866795 () Bool)

(assert (= bs!1866795 d!2186956))

(declare-fun m!7715036 () Bool)

(assert (=> bs!1866795 m!7715036))

(assert (=> start!676038 d!2186956))

(declare-fun b!7015495 () Bool)

(declare-fun e!4217168 () (InoxSet Context!12682))

(declare-fun call!637173 () (InoxSet Context!12682))

(declare-fun call!637175 () (InoxSet Context!12682))

(assert (=> b!7015495 (= e!4217168 ((_ map or) call!637173 call!637175))))

(declare-fun b!7015496 () Bool)

(declare-fun e!4217169 () (InoxSet Context!12682))

(assert (=> b!7015496 (= e!4217169 (store ((as const (Array Context!12682 Bool)) false) lt!2507763 true))))

(declare-fun bm!637166 () Bool)

(declare-fun call!637172 () List!67581)

(declare-fun call!637176 () List!67581)

(assert (=> bm!637166 (= call!637172 call!637176)))

(declare-fun b!7015497 () Bool)

(declare-fun e!4217166 () Bool)

(assert (=> b!7015497 (= e!4217166 (nullable!7105 (regOne!35202 (h!73905 (exprs!6841 lt!2507757)))))))

(declare-fun b!7015498 () Bool)

(declare-fun e!4217167 () (InoxSet Context!12682))

(declare-fun call!637174 () (InoxSet Context!12682))

(assert (=> b!7015498 (= e!4217167 call!637174)))

(declare-fun bm!637167 () Bool)

(declare-fun call!637171 () (InoxSet Context!12682))

(assert (=> bm!637167 (= call!637174 call!637171)))

(declare-fun d!2186960 () Bool)

(declare-fun c!1303389 () Bool)

(assert (=> d!2186960 (= c!1303389 (and ((_ is ElementMatch!17345) (h!73905 (exprs!6841 lt!2507757))) (= (c!1303332 (h!73905 (exprs!6841 lt!2507757))) (h!73904 s!7408))))))

(assert (=> d!2186960 (= (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) lt!2507763 (h!73904 s!7408)) e!4217169)))

(declare-fun b!7015499 () Bool)

(declare-fun e!4217171 () (InoxSet Context!12682))

(assert (=> b!7015499 (= e!4217171 e!4217167)))

(declare-fun c!1303387 () Bool)

(assert (=> b!7015499 (= c!1303387 ((_ is Concat!26190) (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun b!7015500 () Bool)

(declare-fun e!4217170 () (InoxSet Context!12682))

(assert (=> b!7015500 (= e!4217170 call!637174)))

(declare-fun c!1303388 () Bool)

(declare-fun bm!637168 () Bool)

(assert (=> bm!637168 (= call!637176 ($colon$colon!2539 (exprs!6841 lt!2507763) (ite (or c!1303388 c!1303387) (regTwo!35202 (h!73905 (exprs!6841 lt!2507757))) (h!73905 (exprs!6841 lt!2507757)))))))

(declare-fun b!7015501 () Bool)

(assert (=> b!7015501 (= e!4217170 ((as const (Array Context!12682 Bool)) false))))

(declare-fun bm!637169 () Bool)

(assert (=> bm!637169 (= call!637171 call!637175)))

(declare-fun b!7015502 () Bool)

(assert (=> b!7015502 (= e!4217169 e!4217168)))

(declare-fun c!1303386 () Bool)

(assert (=> b!7015502 (= c!1303386 ((_ is Union!17345) (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun bm!637170 () Bool)

(assert (=> bm!637170 (= call!637173 (derivationStepZipperDown!2063 (ite c!1303386 (regOne!35203 (h!73905 (exprs!6841 lt!2507757))) (regOne!35202 (h!73905 (exprs!6841 lt!2507757)))) (ite c!1303386 lt!2507763 (Context!12683 call!637176)) (h!73904 s!7408)))))

(declare-fun bm!637171 () Bool)

(assert (=> bm!637171 (= call!637175 (derivationStepZipperDown!2063 (ite c!1303386 (regTwo!35203 (h!73905 (exprs!6841 lt!2507757))) (ite c!1303388 (regTwo!35202 (h!73905 (exprs!6841 lt!2507757))) (ite c!1303387 (regOne!35202 (h!73905 (exprs!6841 lt!2507757))) (reg!17674 (h!73905 (exprs!6841 lt!2507757)))))) (ite (or c!1303386 c!1303388) lt!2507763 (Context!12683 call!637172)) (h!73904 s!7408)))))

(declare-fun b!7015503 () Bool)

(declare-fun c!1303385 () Bool)

(assert (=> b!7015503 (= c!1303385 ((_ is Star!17345) (h!73905 (exprs!6841 lt!2507757))))))

(assert (=> b!7015503 (= e!4217167 e!4217170)))

(declare-fun b!7015504 () Bool)

(assert (=> b!7015504 (= c!1303388 e!4217166)))

(declare-fun res!2863185 () Bool)

(assert (=> b!7015504 (=> (not res!2863185) (not e!4217166))))

(assert (=> b!7015504 (= res!2863185 ((_ is Concat!26190) (h!73905 (exprs!6841 lt!2507757))))))

(assert (=> b!7015504 (= e!4217168 e!4217171)))

(declare-fun b!7015505 () Bool)

(assert (=> b!7015505 (= e!4217171 ((_ map or) call!637173 call!637171))))

(assert (= (and d!2186960 c!1303389) b!7015496))

(assert (= (and d!2186960 (not c!1303389)) b!7015502))

(assert (= (and b!7015502 c!1303386) b!7015495))

(assert (= (and b!7015502 (not c!1303386)) b!7015504))

(assert (= (and b!7015504 res!2863185) b!7015497))

(assert (= (and b!7015504 c!1303388) b!7015505))

(assert (= (and b!7015504 (not c!1303388)) b!7015499))

(assert (= (and b!7015499 c!1303387) b!7015498))

(assert (= (and b!7015499 (not c!1303387)) b!7015503))

(assert (= (and b!7015503 c!1303385) b!7015500))

(assert (= (and b!7015503 (not c!1303385)) b!7015501))

(assert (= (or b!7015498 b!7015500) bm!637166))

(assert (= (or b!7015498 b!7015500) bm!637167))

(assert (= (or b!7015505 bm!637167) bm!637169))

(assert (= (or b!7015505 bm!637166) bm!637168))

(assert (= (or b!7015495 b!7015505) bm!637170))

(assert (= (or b!7015495 bm!637169) bm!637171))

(assert (=> b!7015497 m!7714986))

(declare-fun m!7715038 () Bool)

(assert (=> bm!637170 m!7715038))

(declare-fun m!7715040 () Bool)

(assert (=> bm!637171 m!7715040))

(declare-fun m!7715042 () Bool)

(assert (=> b!7015496 m!7715042))

(declare-fun m!7715044 () Bool)

(assert (=> bm!637168 m!7715044))

(assert (=> b!7015337 d!2186960))

(declare-fun b!7015546 () Bool)

(declare-fun e!4217200 () Bool)

(declare-fun e!4217201 () Bool)

(assert (=> b!7015546 (= e!4217200 e!4217201)))

(declare-fun res!2863200 () Bool)

(assert (=> b!7015546 (= res!2863200 (not (nullable!7105 (reg!17674 (h!73905 (exprs!6841 lt!2507757))))))))

(assert (=> b!7015546 (=> (not res!2863200) (not e!4217201))))

(declare-fun b!7015547 () Bool)

(declare-fun res!2863199 () Bool)

(declare-fun e!4217204 () Bool)

(assert (=> b!7015547 (=> (not res!2863199) (not e!4217204))))

(declare-fun call!637197 () Bool)

(assert (=> b!7015547 (= res!2863199 call!637197)))

(declare-fun e!4217203 () Bool)

(assert (=> b!7015547 (= e!4217203 e!4217204)))

(declare-fun d!2186962 () Bool)

(declare-fun res!2863201 () Bool)

(declare-fun e!4217199 () Bool)

(assert (=> d!2186962 (=> res!2863201 e!4217199)))

(assert (=> d!2186962 (= res!2863201 ((_ is ElementMatch!17345) (h!73905 (exprs!6841 lt!2507757))))))

(assert (=> d!2186962 (= (validRegex!8902 (h!73905 (exprs!6841 lt!2507757))) e!4217199)))

(declare-fun b!7015548 () Bool)

(declare-fun res!2863202 () Bool)

(declare-fun e!4217198 () Bool)

(assert (=> b!7015548 (=> res!2863202 e!4217198)))

(assert (=> b!7015548 (= res!2863202 (not ((_ is Concat!26190) (h!73905 (exprs!6841 lt!2507757)))))))

(assert (=> b!7015548 (= e!4217203 e!4217198)))

(declare-fun bm!637190 () Bool)

(declare-fun call!637196 () Bool)

(declare-fun c!1303405 () Bool)

(assert (=> bm!637190 (= call!637196 (validRegex!8902 (ite c!1303405 (regTwo!35203 (h!73905 (exprs!6841 lt!2507757))) (regTwo!35202 (h!73905 (exprs!6841 lt!2507757))))))))

(declare-fun b!7015549 () Bool)

(assert (=> b!7015549 (= e!4217199 e!4217200)))

(declare-fun c!1303404 () Bool)

(assert (=> b!7015549 (= c!1303404 ((_ is Star!17345) (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun bm!637191 () Bool)

(declare-fun call!637195 () Bool)

(assert (=> bm!637191 (= call!637197 call!637195)))

(declare-fun b!7015550 () Bool)

(assert (=> b!7015550 (= e!4217204 call!637196)))

(declare-fun bm!637192 () Bool)

(assert (=> bm!637192 (= call!637195 (validRegex!8902 (ite c!1303404 (reg!17674 (h!73905 (exprs!6841 lt!2507757))) (ite c!1303405 (regOne!35203 (h!73905 (exprs!6841 lt!2507757))) (regOne!35202 (h!73905 (exprs!6841 lt!2507757)))))))))

(declare-fun b!7015551 () Bool)

(assert (=> b!7015551 (= e!4217201 call!637195)))

(declare-fun b!7015552 () Bool)

(assert (=> b!7015552 (= e!4217200 e!4217203)))

(assert (=> b!7015552 (= c!1303405 ((_ is Union!17345) (h!73905 (exprs!6841 lt!2507757))))))

(declare-fun b!7015553 () Bool)

(declare-fun e!4217202 () Bool)

(assert (=> b!7015553 (= e!4217202 call!637196)))

(declare-fun b!7015554 () Bool)

(assert (=> b!7015554 (= e!4217198 e!4217202)))

(declare-fun res!2863198 () Bool)

(assert (=> b!7015554 (=> (not res!2863198) (not e!4217202))))

(assert (=> b!7015554 (= res!2863198 call!637197)))

(assert (= (and d!2186962 (not res!2863201)) b!7015549))

(assert (= (and b!7015549 c!1303404) b!7015546))

(assert (= (and b!7015549 (not c!1303404)) b!7015552))

(assert (= (and b!7015546 res!2863200) b!7015551))

(assert (= (and b!7015552 c!1303405) b!7015547))

(assert (= (and b!7015552 (not c!1303405)) b!7015548))

(assert (= (and b!7015547 res!2863199) b!7015550))

(assert (= (and b!7015548 (not res!2863202)) b!7015554))

(assert (= (and b!7015554 res!2863198) b!7015553))

(assert (= (or b!7015550 b!7015553) bm!637190))

(assert (= (or b!7015547 b!7015554) bm!637191))

(assert (= (or b!7015551 bm!637191) bm!637192))

(declare-fun m!7715046 () Bool)

(assert (=> b!7015546 m!7715046))

(declare-fun m!7715048 () Bool)

(assert (=> bm!637190 m!7715048))

(declare-fun m!7715050 () Bool)

(assert (=> bm!637192 m!7715050))

(assert (=> b!7015337 d!2186962))

(assert (=> b!7015337 d!2186946))

(declare-fun bs!1866796 () Bool)

(declare-fun d!2186964 () Bool)

(assert (= bs!1866796 (and d!2186964 b!7015329)))

(declare-fun lambda!409818 () Int)

(assert (=> bs!1866796 (= lambda!409818 lambda!409779)))

(declare-fun bs!1866797 () Bool)

(assert (= bs!1866797 (and d!2186964 d!2186954)))

(assert (=> bs!1866797 (= lambda!409818 lambda!409814)))

(assert (=> d!2186964 true))

(assert (=> d!2186964 (= (appendTo!466 (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) lt!2507763 (h!73904 s!7408)) ct2!306) (map!15637 (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) lt!2507763 (h!73904 s!7408)) lambda!409818))))

(declare-fun bs!1866798 () Bool)

(assert (= bs!1866798 d!2186964))

(assert (=> bs!1866798 m!7714786))

(declare-fun m!7715052 () Bool)

(assert (=> bs!1866798 m!7715052))

(assert (=> b!7015337 d!2186964))

(declare-fun bs!1866801 () Bool)

(declare-fun d!2186966 () Bool)

(assert (= bs!1866801 (and d!2186966 b!7015329)))

(declare-fun lambda!409821 () Int)

(assert (=> bs!1866801 (= lambda!409821 lambda!409780)))

(declare-fun bs!1866802 () Bool)

(assert (= bs!1866802 (and d!2186966 d!2186956)))

(assert (=> bs!1866802 (= lambda!409821 lambda!409817)))

(assert (=> d!2186966 (= (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) (Context!12683 (++!15360 (exprs!6841 lt!2507763) (exprs!6841 ct2!306))) (h!73904 s!7408)) (appendTo!466 (derivationStepZipperDown!2063 (h!73905 (exprs!6841 lt!2507757)) lt!2507763 (h!73904 s!7408)) ct2!306))))

(declare-fun lt!2507827 () Unit!161372)

(assert (=> d!2186966 (= lt!2507827 (lemmaConcatPreservesForall!681 (exprs!6841 lt!2507763) (exprs!6841 ct2!306) lambda!409821))))

(declare-fun lt!2507826 () Unit!161372)

(declare-fun choose!52815 (Context!12682 Regex!17345 C!34960 Context!12682) Unit!161372)

(assert (=> d!2186966 (= lt!2507826 (choose!52815 lt!2507763 (h!73905 (exprs!6841 lt!2507757)) (h!73904 s!7408) ct2!306))))

(assert (=> d!2186966 (validRegex!8902 (h!73905 (exprs!6841 lt!2507757)))))

(assert (=> d!2186966 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!36 lt!2507763 (h!73905 (exprs!6841 lt!2507757)) (h!73904 s!7408) ct2!306) lt!2507826)))

(declare-fun bs!1866803 () Bool)

(assert (= bs!1866803 d!2186966))

(declare-fun m!7715070 () Bool)

(assert (=> bs!1866803 m!7715070))

(declare-fun m!7715072 () Bool)

(assert (=> bs!1866803 m!7715072))

(assert (=> bs!1866803 m!7714786))

(assert (=> bs!1866803 m!7714790))

(assert (=> bs!1866803 m!7714786))

(assert (=> bs!1866803 m!7714788))

(declare-fun m!7715074 () Bool)

(assert (=> bs!1866803 m!7715074))

(declare-fun m!7715078 () Bool)

(assert (=> bs!1866803 m!7715078))

(assert (=> b!7015337 d!2186966))

(declare-fun bs!1866805 () Bool)

(declare-fun d!2186978 () Bool)

(assert (= bs!1866805 (and d!2186978 b!7015329)))

(declare-fun lambda!409822 () Int)

(assert (=> bs!1866805 (= lambda!409822 lambda!409780)))

(declare-fun bs!1866806 () Bool)

(assert (= bs!1866806 (and d!2186978 d!2186956)))

(assert (=> bs!1866806 (= lambda!409822 lambda!409817)))

(declare-fun bs!1866807 () Bool)

(assert (= bs!1866807 (and d!2186978 d!2186966)))

(assert (=> bs!1866807 (= lambda!409822 lambda!409821)))

(assert (=> d!2186978 (= (inv!86221 setElem!48498) (forall!16259 (exprs!6841 setElem!48498) lambda!409822))))

(declare-fun bs!1866808 () Bool)

(assert (= bs!1866808 d!2186978))

(declare-fun m!7715080 () Bool)

(assert (=> bs!1866808 m!7715080))

(assert (=> setNonEmpty!48498 d!2186978))

(declare-fun b!7015570 () Bool)

(declare-fun e!4217213 () Bool)

(declare-fun tp!1933116 () Bool)

(declare-fun tp!1933117 () Bool)

(assert (=> b!7015570 (= e!4217213 (and tp!1933116 tp!1933117))))

(assert (=> b!7015338 (= tp!1933108 e!4217213)))

(assert (= (and b!7015338 ((_ is Cons!67457) (exprs!6841 setElem!48498))) b!7015570))

(declare-fun b!7015571 () Bool)

(declare-fun e!4217214 () Bool)

(declare-fun tp!1933118 () Bool)

(declare-fun tp!1933119 () Bool)

(assert (=> b!7015571 (= e!4217214 (and tp!1933118 tp!1933119))))

(assert (=> b!7015334 (= tp!1933109 e!4217214)))

(assert (= (and b!7015334 ((_ is Cons!67457) (exprs!6841 ct2!306))) b!7015571))

(declare-fun b!7015576 () Bool)

(declare-fun e!4217217 () Bool)

(declare-fun tp!1933122 () Bool)

(assert (=> b!7015576 (= e!4217217 (and tp_is_empty!43915 tp!1933122))))

(assert (=> b!7015336 (= tp!1933110 e!4217217)))

(assert (= (and b!7015336 ((_ is Cons!67456) (t!381335 s!7408))) b!7015576))

(declare-fun condSetEmpty!48501 () Bool)

(assert (=> setNonEmpty!48498 (= condSetEmpty!48501 (= setRest!48498 ((as const (Array Context!12682 Bool)) false)))))

(declare-fun setRes!48501 () Bool)

(assert (=> setNonEmpty!48498 (= tp!1933111 setRes!48501)))

(declare-fun setIsEmpty!48501 () Bool)

(assert (=> setIsEmpty!48501 setRes!48501))

(declare-fun tp!1933127 () Bool)

(declare-fun setNonEmpty!48501 () Bool)

(declare-fun e!4217226 () Bool)

(declare-fun setElem!48501 () Context!12682)

(assert (=> setNonEmpty!48501 (= setRes!48501 (and tp!1933127 (inv!86221 setElem!48501) e!4217226))))

(declare-fun setRest!48501 () (InoxSet Context!12682))

(assert (=> setNonEmpty!48501 (= setRest!48498 ((_ map or) (store ((as const (Array Context!12682 Bool)) false) setElem!48501 true) setRest!48501))))

(declare-fun b!7015591 () Bool)

(declare-fun tp!1933128 () Bool)

(assert (=> b!7015591 (= e!4217226 tp!1933128)))

(assert (= (and setNonEmpty!48498 condSetEmpty!48501) setIsEmpty!48501))

(assert (= (and setNonEmpty!48498 (not condSetEmpty!48501)) setNonEmpty!48501))

(assert (= setNonEmpty!48501 b!7015591))

(declare-fun m!7715082 () Bool)

(assert (=> setNonEmpty!48501 m!7715082))

(declare-fun b_lambda!264759 () Bool)

(assert (= b_lambda!264751 (or b!7015339 b_lambda!264759)))

(declare-fun bs!1866809 () Bool)

(declare-fun d!2186980 () Bool)

(assert (= bs!1866809 (and d!2186980 b!7015339)))

(assert (=> bs!1866809 (= (dynLambda!27155 lambda!409781 lt!2507765) (derivationStepZipperUp!1995 lt!2507765 (h!73904 s!7408)))))

(assert (=> bs!1866809 m!7714754))

(assert (=> d!2186902 d!2186980))

(declare-fun b_lambda!264761 () Bool)

(assert (= b_lambda!264747 (or b!7015333 b_lambda!264761)))

(declare-fun bs!1866810 () Bool)

(declare-fun d!2186982 () Bool)

(assert (= bs!1866810 (and d!2186982 b!7015333)))

(assert (=> bs!1866810 (= (dynLambda!27153 lambda!409778 lt!2507769) (matchZipper!2885 (store ((as const (Array Context!12682 Bool)) false) lt!2507769 true) s!7408))))

(declare-fun m!7715084 () Bool)

(assert (=> bs!1866810 m!7715084))

(assert (=> bs!1866810 m!7715084))

(declare-fun m!7715086 () Bool)

(assert (=> bs!1866810 m!7715086))

(assert (=> d!2186882 d!2186982))

(declare-fun b_lambda!264763 () Bool)

(assert (= b_lambda!264755 (or b!7015329 b_lambda!264763)))

(declare-fun bs!1866811 () Bool)

(declare-fun d!2186984 () Bool)

(assert (= bs!1866811 (and d!2186984 b!7015329)))

(declare-fun lt!2507828 () Unit!161372)

(assert (=> bs!1866811 (= lt!2507828 (lemmaConcatPreservesForall!681 (exprs!6841 lt!2507805) (exprs!6841 ct2!306) lambda!409780))))

(assert (=> bs!1866811 (= (dynLambda!27159 lambda!409779 lt!2507805) (Context!12683 (++!15360 (exprs!6841 lt!2507805) (exprs!6841 ct2!306))))))

(declare-fun m!7715088 () Bool)

(assert (=> bs!1866811 m!7715088))

(declare-fun m!7715090 () Bool)

(assert (=> bs!1866811 m!7715090))

(assert (=> d!2186922 d!2186984))

(check-sat (not b!7015357) (not bs!1866810) (not d!2186886) (not d!2186902) (not bm!637155) (not d!2186946) (not b!7015399) (not bm!637156) (not bm!637153) (not d!2186890) (not b!7015464) (not d!2186948) (not b!7015546) (not bm!637190) (not d!2186942) (not bm!637192) (not d!2186966) (not b!7015412) (not setNonEmpty!48501) (not b_lambda!264763) (not d!2186954) (not d!2186952) (not d!2186964) (not b!7015400) (not d!2186882) (not b!7015570) (not b!7015591) (not b!7015427) (not d!2186978) (not b!7015369) (not d!2186898) (not b!7015576) tp_is_empty!43915 (not d!2186928) (not b!7015453) (not d!2186892) (not d!2186922) (not d!2186916) (not b_lambda!264761) (not d!2186956) (not b!7015497) (not b!7015463) (not b!7015428) (not b!7015571) (not bm!637138) (not d!2186884) (not b!7015466) (not b!7015467) (not b_lambda!264759) (not d!2186906) (not d!2186918) (not bs!1866811) (not b!7015413) (not bs!1866809) (not bm!637168) (not bm!637170) (not bm!637171) (not b!7015358))
(check-sat)
