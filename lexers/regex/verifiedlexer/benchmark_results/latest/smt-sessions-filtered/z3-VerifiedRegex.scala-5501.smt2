; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277846 () Bool)

(assert start!277846)

(declare-fun b!2852856 () Bool)

(assert (=> b!2852856 true))

(declare-fun condSetEmpty!25224 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17296 0))(
  ( (C!17297 (val!10682 Int)) )
))
(declare-datatypes ((Regex!8557 0))(
  ( (ElementMatch!8557 (c!459868 C!17296)) (Concat!13878 (regOne!17626 Regex!8557) (regTwo!17626 Regex!8557)) (EmptyExpr!8557) (Star!8557 (reg!8886 Regex!8557)) (EmptyLang!8557) (Union!8557 (regOne!17627 Regex!8557) (regTwo!17627 Regex!8557)) )
))
(declare-datatypes ((List!34136 0))(
  ( (Nil!34012) (Cons!34012 (h!39432 Regex!8557) (t!233167 List!34136)) )
))
(declare-datatypes ((Context!5134 0))(
  ( (Context!5135 (exprs!3067 List!34136)) )
))
(declare-fun z!809 () (InoxSet Context!5134))

(assert (=> b!2852856 (= condSetEmpty!25224 (= z!809 ((as const (Array Context!5134 Bool)) false)))))

(declare-fun setRes!25224 () Bool)

(assert (=> b!2852856 setRes!25224))

(declare-fun setIsEmpty!25224 () Bool)

(assert (=> setIsEmpty!25224 setRes!25224))

(declare-fun setNonEmpty!25224 () Bool)

(assert (=> setNonEmpty!25224 (= setRes!25224 true)))

(declare-fun setElem!25224 () Context!5134)

(declare-fun setRest!25224 () (InoxSet Context!5134))

(assert (=> setNonEmpty!25224 (= z!809 ((_ map or) (store ((as const (Array Context!5134 Bool)) false) setElem!25224 true) setRest!25224))))

(assert (= (and b!2852856 condSetEmpty!25224) setIsEmpty!25224))

(assert (= (and b!2852856 (not condSetEmpty!25224)) setNonEmpty!25224))

(declare-fun b!2852843 () Bool)

(declare-fun e!1807483 () Bool)

(declare-fun tp_is_empty!14851 () Bool)

(declare-fun tp!916909 () Bool)

(assert (=> b!2852843 (= e!1807483 (and tp_is_empty!14851 tp!916909))))

(declare-fun b!2852844 () Bool)

(declare-fun e!1807475 () Bool)

(declare-fun tp!916908 () Bool)

(assert (=> b!2852844 (= e!1807475 tp!916908)))

(declare-fun b!2852845 () Bool)

(declare-fun res!1185867 () Bool)

(declare-fun e!1807484 () Bool)

(assert (=> b!2852845 (=> (not res!1185867) (not e!1807484))))

(declare-datatypes ((List!34137 0))(
  ( (Nil!34013) (Cons!34013 (h!39433 C!17296) (t!233168 List!34137)) )
))
(declare-fun prefix!862 () List!34137)

(declare-fun prefixMatchZipper!289 ((InoxSet Context!5134) List!34137) Bool)

(assert (=> b!2852845 (= res!1185867 (prefixMatchZipper!289 z!809 prefix!862))))

(declare-fun b!2852846 () Bool)

(declare-fun e!1807477 () Bool)

(assert (=> b!2852846 (= e!1807477 tp_is_empty!14851)))

(declare-fun res!1185863 () Bool)

(declare-fun e!1807479 () Bool)

(assert (=> start!277846 (=> (not res!1185863) (not e!1807479))))

(declare-fun r!5723 () Regex!8557)

(declare-fun validRegex!3427 (Regex!8557) Bool)

(assert (=> start!277846 (= res!1185863 (validRegex!3427 r!5723))))

(assert (=> start!277846 e!1807479))

(assert (=> start!277846 e!1807477))

(declare-fun condSetEmpty!25221 () Bool)

(assert (=> start!277846 (= condSetEmpty!25221 (= z!809 ((as const (Array Context!5134 Bool)) false)))))

(declare-fun setRes!25221 () Bool)

(assert (=> start!277846 setRes!25221))

(declare-fun e!1807482 () Bool)

(assert (=> start!277846 e!1807482))

(assert (=> start!277846 e!1807483))

(declare-fun b!2852847 () Bool)

(declare-fun e!1807481 () Bool)

(declare-fun lt!1013689 () Bool)

(assert (=> b!2852847 (= e!1807481 (not lt!1013689))))

(declare-fun b!2852848 () Bool)

(declare-fun res!1185869 () Bool)

(assert (=> b!2852848 (=> (not res!1185869) (not e!1807479))))

(declare-datatypes ((List!34138 0))(
  ( (Nil!34014) (Cons!34014 (h!39434 Context!5134) (t!233169 List!34138)) )
))
(declare-fun zl!222 () List!34138)

(declare-fun unfocusZipper!229 (List!34138) Regex!8557)

(assert (=> b!2852848 (= res!1185869 (= r!5723 (unfocusZipper!229 zl!222)))))

(declare-fun b!2852849 () Bool)

(declare-fun e!1807476 () Bool)

(assert (=> b!2852849 (= e!1807476 e!1807481)))

(declare-fun res!1185864 () Bool)

(assert (=> b!2852849 (=> res!1185864 e!1807481)))

(declare-fun lt!1013687 () List!34137)

(declare-fun isPrefix!2659 (List!34137 List!34137) Bool)

(assert (=> b!2852849 (= res!1185864 (not (isPrefix!2659 prefix!862 lt!1013687)))))

(declare-fun matchR!3680 (Regex!8557 List!34137) Bool)

(assert (=> b!2852849 (matchR!3680 r!5723 lt!1013687)))

(declare-datatypes ((Unit!47681 0))(
  ( (Unit!47682) )
))
(declare-fun lt!1013688 () Unit!47681)

(declare-fun theoremZipperRegexEquiv!103 ((InoxSet Context!5134) List!34138 Regex!8557 List!34137) Unit!47681)

(assert (=> b!2852849 (= lt!1013688 (theoremZipperRegexEquiv!103 z!809 zl!222 r!5723 lt!1013687))))

(declare-fun setIsEmpty!25221 () Bool)

(assert (=> setIsEmpty!25221 setRes!25221))

(declare-fun b!2852850 () Bool)

(declare-fun e!1807478 () Bool)

(declare-fun tp!916907 () Bool)

(assert (=> b!2852850 (= e!1807478 tp!916907)))

(declare-fun setElem!25221 () Context!5134)

(declare-fun setNonEmpty!25221 () Bool)

(declare-fun tp!916906 () Bool)

(declare-fun inv!46029 (Context!5134) Bool)

(assert (=> setNonEmpty!25221 (= setRes!25221 (and tp!916906 (inv!46029 setElem!25221) e!1807478))))

(declare-fun setRest!25221 () (InoxSet Context!5134))

(assert (=> setNonEmpty!25221 (= z!809 ((_ map or) (store ((as const (Array Context!5134 Bool)) false) setElem!25221 true) setRest!25221))))

(declare-fun b!2852851 () Bool)

(declare-fun tp!916912 () Bool)

(assert (=> b!2852851 (= e!1807477 tp!916912)))

(declare-fun b!2852852 () Bool)

(declare-fun res!1185868 () Bool)

(assert (=> b!2852852 (=> (not res!1185868) (not e!1807479))))

(declare-fun toList!1970 ((InoxSet Context!5134)) List!34138)

(assert (=> b!2852852 (= res!1185868 (= (toList!1970 z!809) zl!222))))

(declare-fun b!2852853 () Bool)

(declare-fun tp!916905 () Bool)

(declare-fun tp!916910 () Bool)

(assert (=> b!2852853 (= e!1807477 (and tp!916905 tp!916910))))

(declare-fun b!2852854 () Bool)

(declare-fun e!1807480 () Bool)

(assert (=> b!2852854 (= e!1807480 e!1807476)))

(declare-fun res!1185865 () Bool)

(assert (=> b!2852854 (=> res!1185865 e!1807476)))

(declare-fun matchZipper!417 ((InoxSet Context!5134) List!34137) Bool)

(assert (=> b!2852854 (= res!1185865 (not (matchZipper!417 z!809 lt!1013687)))))

(declare-fun lambda!104973 () Int)

(declare-fun pickWitness!298 (Int) List!34137)

(assert (=> b!2852854 (= lt!1013687 (pickWitness!298 lambda!104973))))

(declare-fun b!2852855 () Bool)

(declare-fun tp!916911 () Bool)

(assert (=> b!2852855 (= e!1807482 (and (inv!46029 (h!39434 zl!222)) e!1807475 tp!916911))))

(assert (=> b!2852856 (= e!1807484 (not e!1807480))))

(declare-fun res!1185870 () Bool)

(assert (=> b!2852856 (=> res!1185870 e!1807480)))

(declare-fun Exists!1281 (Int) Bool)

(assert (=> b!2852856 (= res!1185870 (not (Exists!1281 lambda!104973)))))

(assert (=> b!2852856 (Exists!1281 lambda!104973)))

(declare-fun lt!1013686 () Unit!47681)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!329 ((InoxSet Context!5134) List!34137) Unit!47681)

(assert (=> b!2852856 (= lt!1013686 (lemmaPrefixMatchThenExistsStringThatMatches!329 z!809 prefix!862))))

(declare-fun b!2852857 () Bool)

(assert (=> b!2852857 (= e!1807479 e!1807484)))

(declare-fun res!1185866 () Bool)

(assert (=> b!2852857 (=> (not res!1185866) (not e!1807484))))

(assert (=> b!2852857 (= res!1185866 (not lt!1013689))))

(declare-fun prefixMatch!865 (Regex!8557 List!34137) Bool)

(assert (=> b!2852857 (= lt!1013689 (prefixMatch!865 r!5723 prefix!862))))

(declare-fun b!2852858 () Bool)

(declare-fun tp!916904 () Bool)

(declare-fun tp!916903 () Bool)

(assert (=> b!2852858 (= e!1807477 (and tp!916904 tp!916903))))

(assert (= (and start!277846 res!1185863) b!2852852))

(assert (= (and b!2852852 res!1185868) b!2852848))

(assert (= (and b!2852848 res!1185869) b!2852857))

(assert (= (and b!2852857 res!1185866) b!2852845))

(assert (= (and b!2852845 res!1185867) b!2852856))

(assert (= (and b!2852856 (not res!1185870)) b!2852854))

(assert (= (and b!2852854 (not res!1185865)) b!2852849))

(assert (= (and b!2852849 (not res!1185864)) b!2852847))

(get-info :version)

(assert (= (and start!277846 ((_ is ElementMatch!8557) r!5723)) b!2852846))

(assert (= (and start!277846 ((_ is Concat!13878) r!5723)) b!2852853))

(assert (= (and start!277846 ((_ is Star!8557) r!5723)) b!2852851))

(assert (= (and start!277846 ((_ is Union!8557) r!5723)) b!2852858))

(assert (= (and start!277846 condSetEmpty!25221) setIsEmpty!25221))

(assert (= (and start!277846 (not condSetEmpty!25221)) setNonEmpty!25221))

(assert (= setNonEmpty!25221 b!2852850))

(assert (= b!2852855 b!2852844))

(assert (= (and start!277846 ((_ is Cons!34014) zl!222)) b!2852855))

(assert (= (and start!277846 ((_ is Cons!34013) prefix!862)) b!2852843))

(declare-fun m!3277741 () Bool)

(assert (=> b!2852845 m!3277741))

(declare-fun m!3277743 () Bool)

(assert (=> b!2852854 m!3277743))

(declare-fun m!3277745 () Bool)

(assert (=> b!2852854 m!3277745))

(declare-fun m!3277747 () Bool)

(assert (=> b!2852856 m!3277747))

(assert (=> b!2852856 m!3277747))

(declare-fun m!3277749 () Bool)

(assert (=> b!2852856 m!3277749))

(declare-fun m!3277751 () Bool)

(assert (=> b!2852852 m!3277751))

(declare-fun m!3277753 () Bool)

(assert (=> b!2852848 m!3277753))

(declare-fun m!3277755 () Bool)

(assert (=> b!2852855 m!3277755))

(declare-fun m!3277757 () Bool)

(assert (=> b!2852849 m!3277757))

(declare-fun m!3277759 () Bool)

(assert (=> b!2852849 m!3277759))

(declare-fun m!3277761 () Bool)

(assert (=> b!2852849 m!3277761))

(declare-fun m!3277763 () Bool)

(assert (=> b!2852857 m!3277763))

(declare-fun m!3277765 () Bool)

(assert (=> start!277846 m!3277765))

(declare-fun m!3277767 () Bool)

(assert (=> setNonEmpty!25221 m!3277767))

(check-sat (not setNonEmpty!25224) (not b!2852850) (not setNonEmpty!25221) (not start!277846) (not b!2852857) (not b!2852858) (not b!2852849) (not b!2852843) (not b!2852845) (not b!2852851) (not b!2852856) (not b!2852848) (not b!2852844) (not b!2852855) tp_is_empty!14851 (not b!2852854) (not b!2852853) (not b!2852852))
(check-sat)
