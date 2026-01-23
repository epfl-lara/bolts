; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!277666 () Bool)

(assert start!277666)

(declare-fun b!2850751 () Bool)

(assert (=> b!2850751 true))

(assert (=> b!2850751 true))

(declare-fun b!2850743 () Bool)

(declare-fun res!1184983 () Bool)

(declare-fun e!1806304 () Bool)

(assert (=> b!2850743 (=> (not res!1184983) (not e!1806304))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!17248 0))(
  ( (C!17249 (val!10658 Int)) )
))
(declare-datatypes ((Regex!8533 0))(
  ( (ElementMatch!8533 (c!459724 C!17248)) (Concat!13854 (regOne!17578 Regex!8533) (regTwo!17578 Regex!8533)) (EmptyExpr!8533) (Star!8533 (reg!8862 Regex!8533)) (EmptyLang!8533) (Union!8533 (regOne!17579 Regex!8533) (regTwo!17579 Regex!8533)) )
))
(declare-datatypes ((List!34064 0))(
  ( (Nil!33940) (Cons!33940 (h!39360 Regex!8533) (t!233095 List!34064)) )
))
(declare-datatypes ((Context!5086 0))(
  ( (Context!5087 (exprs!3043 List!34064)) )
))
(declare-fun z!809 () (InoxSet Context!5086))

(declare-datatypes ((List!34065 0))(
  ( (Nil!33941) (Cons!33941 (h!39361 Context!5086) (t!233096 List!34065)) )
))
(declare-fun zl!222 () List!34065)

(declare-fun toList!1946 ((InoxSet Context!5086)) List!34065)

(assert (=> b!2850743 (= res!1184983 (= (toList!1946 z!809) zl!222))))

(declare-fun b!2850744 () Bool)

(declare-fun res!1184989 () Bool)

(declare-fun e!1806309 () Bool)

(assert (=> b!2850744 (=> (not res!1184989) (not e!1806309))))

(declare-fun lt!1013399 () Bool)

(assert (=> b!2850744 (= res!1184989 lt!1013399)))

(declare-fun b!2850745 () Bool)

(declare-fun e!1806303 () Bool)

(declare-fun tp!915839 () Bool)

(declare-fun tp!915840 () Bool)

(assert (=> b!2850745 (= e!1806303 (and tp!915839 tp!915840))))

(declare-fun b!2850746 () Bool)

(declare-fun tp!915843 () Bool)

(declare-fun tp!915836 () Bool)

(assert (=> b!2850746 (= e!1806303 (and tp!915843 tp!915836))))

(declare-fun b!2850747 () Bool)

(declare-fun e!1806302 () Bool)

(declare-fun tp_is_empty!14803 () Bool)

(declare-fun tp!915841 () Bool)

(assert (=> b!2850747 (= e!1806302 (and tp_is_empty!14803 tp!915841))))

(declare-fun b!2850748 () Bool)

(declare-fun tp!915835 () Bool)

(assert (=> b!2850748 (= e!1806303 tp!915835)))

(declare-fun b!2850749 () Bool)

(assert (=> b!2850749 (= e!1806304 e!1806309)))

(declare-fun res!1184984 () Bool)

(assert (=> b!2850749 (=> (not res!1184984) (not e!1806309))))

(declare-fun e!1806307 () Bool)

(assert (=> b!2850749 (= res!1184984 e!1806307)))

(declare-fun res!1184985 () Bool)

(assert (=> b!2850749 (=> res!1184985 e!1806307)))

(assert (=> b!2850749 (= res!1184985 lt!1013399)))

(declare-fun r!5723 () Regex!8533)

(declare-datatypes ((List!34066 0))(
  ( (Nil!33942) (Cons!33942 (h!39362 C!17248) (t!233097 List!34066)) )
))
(declare-fun prefix!862 () List!34066)

(declare-fun prefixMatch!841 (Regex!8533 List!34066) Bool)

(assert (=> b!2850749 (= lt!1013399 (prefixMatch!841 r!5723 prefix!862))))

(declare-fun b!2850750 () Bool)

(declare-fun e!1806310 () Bool)

(declare-fun tp!915837 () Bool)

(assert (=> b!2850750 (= e!1806310 tp!915837)))

(declare-fun e!1806306 () Bool)

(assert (=> b!2850751 (= e!1806309 (not e!1806306))))

(declare-fun res!1184988 () Bool)

(assert (=> b!2850751 (=> res!1184988 e!1806306)))

(declare-fun lambda!104799 () Int)

(declare-fun Exists!1261 (Int) Bool)

(assert (=> b!2850751 (= res!1184988 (not (Exists!1261 lambda!104799)))))

(assert (=> b!2850751 (Exists!1261 lambda!104799)))

(declare-datatypes ((Unit!47641 0))(
  ( (Unit!47642) )
))
(declare-fun lt!1013401 () Unit!47641)

(declare-fun lemmaPrefixMatchThenExistsStringThatMatches!309 (Regex!8533 List!34066) Unit!47641)

(assert (=> b!2850751 (= lt!1013401 (lemmaPrefixMatchThenExistsStringThatMatches!309 r!5723 prefix!862))))

(declare-fun b!2850753 () Bool)

(declare-fun res!1184986 () Bool)

(assert (=> b!2850753 (=> (not res!1184986) (not e!1806304))))

(declare-fun unfocusZipper!205 (List!34065) Regex!8533)

(assert (=> b!2850753 (= res!1184986 (= r!5723 (unfocusZipper!205 zl!222)))))

(declare-fun setIsEmpty!25102 () Bool)

(declare-fun setRes!25102 () Bool)

(assert (=> setIsEmpty!25102 setRes!25102))

(declare-fun setElem!25102 () Context!5086)

(declare-fun tp!915842 () Bool)

(declare-fun setNonEmpty!25102 () Bool)

(declare-fun inv!45969 (Context!5086) Bool)

(assert (=> setNonEmpty!25102 (= setRes!25102 (and tp!915842 (inv!45969 setElem!25102) e!1806310))))

(declare-fun setRest!25102 () (InoxSet Context!5086))

(assert (=> setNonEmpty!25102 (= z!809 ((_ map or) (store ((as const (Array Context!5086 Bool)) false) setElem!25102 true) setRest!25102))))

(declare-fun b!2850754 () Bool)

(assert (=> b!2850754 (= e!1806306 true)))

(declare-fun lt!1013400 () List!34066)

(declare-fun pickWitness!282 (Int) List!34066)

(assert (=> b!2850754 (= lt!1013400 (pickWitness!282 lambda!104799))))

(declare-fun b!2850755 () Bool)

(assert (=> b!2850755 (= e!1806303 tp_is_empty!14803)))

(declare-fun b!2850756 () Bool)

(declare-fun prefixMatchZipper!265 ((InoxSet Context!5086) List!34066) Bool)

(assert (=> b!2850756 (= e!1806307 (not (prefixMatchZipper!265 z!809 prefix!862)))))

(declare-fun b!2850757 () Bool)

(declare-fun res!1184987 () Bool)

(assert (=> b!2850757 (=> (not res!1184987) (not e!1806309))))

(assert (=> b!2850757 (= res!1184987 (not (prefixMatchZipper!265 z!809 prefix!862)))))

(declare-fun b!2850758 () Bool)

(declare-fun e!1806308 () Bool)

(declare-fun tp!915838 () Bool)

(assert (=> b!2850758 (= e!1806308 tp!915838)))

(declare-fun b!2850752 () Bool)

(declare-fun e!1806305 () Bool)

(declare-fun tp!915844 () Bool)

(assert (=> b!2850752 (= e!1806305 (and (inv!45969 (h!39361 zl!222)) e!1806308 tp!915844))))

(declare-fun res!1184990 () Bool)

(assert (=> start!277666 (=> (not res!1184990) (not e!1806304))))

(declare-fun validRegex!3403 (Regex!8533) Bool)

(assert (=> start!277666 (= res!1184990 (validRegex!3403 r!5723))))

(assert (=> start!277666 e!1806304))

(assert (=> start!277666 e!1806303))

(declare-fun condSetEmpty!25102 () Bool)

(assert (=> start!277666 (= condSetEmpty!25102 (= z!809 ((as const (Array Context!5086 Bool)) false)))))

(assert (=> start!277666 setRes!25102))

(assert (=> start!277666 e!1806305))

(assert (=> start!277666 e!1806302))

(assert (= (and start!277666 res!1184990) b!2850743))

(assert (= (and b!2850743 res!1184983) b!2850753))

(assert (= (and b!2850753 res!1184986) b!2850749))

(assert (= (and b!2850749 (not res!1184985)) b!2850756))

(assert (= (and b!2850749 res!1184984) b!2850744))

(assert (= (and b!2850744 res!1184989) b!2850757))

(assert (= (and b!2850757 res!1184987) b!2850751))

(assert (= (and b!2850751 (not res!1184988)) b!2850754))

(get-info :version)

(assert (= (and start!277666 ((_ is ElementMatch!8533) r!5723)) b!2850755))

(assert (= (and start!277666 ((_ is Concat!13854) r!5723)) b!2850746))

(assert (= (and start!277666 ((_ is Star!8533) r!5723)) b!2850748))

(assert (= (and start!277666 ((_ is Union!8533) r!5723)) b!2850745))

(assert (= (and start!277666 condSetEmpty!25102) setIsEmpty!25102))

(assert (= (and start!277666 (not condSetEmpty!25102)) setNonEmpty!25102))

(assert (= setNonEmpty!25102 b!2850750))

(assert (= b!2850752 b!2850758))

(assert (= (and start!277666 ((_ is Cons!33941) zl!222)) b!2850752))

(assert (= (and start!277666 ((_ is Cons!33942) prefix!862)) b!2850747))

(declare-fun m!3276757 () Bool)

(assert (=> start!277666 m!3276757))

(declare-fun m!3276759 () Bool)

(assert (=> b!2850754 m!3276759))

(declare-fun m!3276761 () Bool)

(assert (=> b!2850757 m!3276761))

(declare-fun m!3276763 () Bool)

(assert (=> setNonEmpty!25102 m!3276763))

(declare-fun m!3276765 () Bool)

(assert (=> b!2850752 m!3276765))

(declare-fun m!3276767 () Bool)

(assert (=> b!2850743 m!3276767))

(assert (=> b!2850756 m!3276761))

(declare-fun m!3276769 () Bool)

(assert (=> b!2850749 m!3276769))

(declare-fun m!3276771 () Bool)

(assert (=> b!2850751 m!3276771))

(assert (=> b!2850751 m!3276771))

(declare-fun m!3276773 () Bool)

(assert (=> b!2850751 m!3276773))

(declare-fun m!3276775 () Bool)

(assert (=> b!2850753 m!3276775))

(check-sat (not b!2850758) (not b!2850756) (not b!2850751) (not b!2850746) (not setNonEmpty!25102) (not b!2850752) (not b!2850749) (not b!2850743) (not b!2850747) (not b!2850750) (not b!2850757) tp_is_empty!14803 (not b!2850745) (not b!2850753) (not start!277666) (not b!2850748) (not b!2850754))
(check-sat)
