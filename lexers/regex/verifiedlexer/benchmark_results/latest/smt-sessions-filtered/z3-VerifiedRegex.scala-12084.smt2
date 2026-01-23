; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677694 () Bool)

(assert start!677694)

(declare-fun b!7022977 () Bool)

(assert (=> b!7022977 true))

(declare-fun bs!1868030 () Bool)

(declare-fun b!7022976 () Bool)

(assert (= bs!1868030 (and b!7022976 b!7022977)))

(declare-fun lambda!412067 () Int)

(declare-fun lambda!412066 () Int)

(assert (=> bs!1868030 (not (= lambda!412067 lambda!412066))))

(declare-fun b!7022973 () Bool)

(declare-fun e!4221774 () Bool)

(declare-fun tp!1934747 () Bool)

(assert (=> b!7022973 (= e!4221774 tp!1934747)))

(declare-fun b!7022974 () Bool)

(declare-fun res!2866892 () Bool)

(declare-fun e!4221778 () Bool)

(assert (=> b!7022974 (=> res!2866892 e!4221778)))

(declare-datatypes ((C!35100 0))(
  ( (C!35101 (val!27252 Int)) )
))
(declare-datatypes ((Regex!17415 0))(
  ( (ElementMatch!17415 (c!1305248 C!35100)) (Concat!26260 (regOne!35342 Regex!17415) (regTwo!35342 Regex!17415)) (EmptyExpr!17415) (Star!17415 (reg!17744 Regex!17415)) (EmptyLang!17415) (Union!17415 (regOne!35343 Regex!17415) (regTwo!35343 Regex!17415)) )
))
(declare-datatypes ((List!67780 0))(
  ( (Nil!67656) (Cons!67656 (h!74104 Regex!17415) (t!381535 List!67780)) )
))
(declare-datatypes ((Context!12822 0))(
  ( (Context!12823 (exprs!6911 List!67780)) )
))
(declare-fun ct2!306 () Context!12822)

(declare-fun nullableContext!75 (Context!12822) Bool)

(assert (=> b!7022974 (= res!2866892 (not (nullableContext!75 ct2!306)))))

(declare-fun b!7022975 () Bool)

(declare-fun res!2866889 () Bool)

(declare-fun e!4221775 () Bool)

(assert (=> b!7022975 (=> (not res!2866889) (not e!4221775))))

(declare-datatypes ((List!67781 0))(
  ( (Nil!67657) (Cons!67657 (h!74105 C!35100) (t!381536 List!67781)) )
))
(declare-fun s!7408 () List!67781)

(get-info :version)

(assert (=> b!7022975 (= res!2866889 (not ((_ is Cons!67657) s!7408)))))

(declare-fun setIsEmpty!48836 () Bool)

(declare-fun setRes!48836 () Bool)

(assert (=> setIsEmpty!48836 setRes!48836))

(declare-fun e!4221780 () Bool)

(assert (=> b!7022976 (= e!4221780 (not e!4221778))))

(declare-fun res!2866890 () Bool)

(assert (=> b!7022976 (=> res!2866890 e!4221778)))

(declare-fun lt!2512844 () Context!12822)

(assert (=> b!7022976 (= res!2866890 (not (nullableContext!75 lt!2512844)))))

(declare-datatypes ((Unit!161496 0))(
  ( (Unit!161497) )
))
(declare-fun lt!2512848 () Unit!161496)

(declare-fun lt!2512842 () List!67780)

(declare-fun lemmaContentSubsetPreservesForall!342 (List!67780 List!67780 Int) Unit!161496)

(assert (=> b!7022976 (= lt!2512848 (lemmaContentSubsetPreservesForall!342 lt!2512842 (exprs!6911 ct2!306) lambda!412067))))

(declare-fun lt!2512847 () Unit!161496)

(assert (=> b!7022976 (= lt!2512847 (lemmaContentSubsetPreservesForall!342 lt!2512842 (exprs!6911 lt!2512844) lambda!412067))))

(declare-fun subseq!691 (List!67780 List!67780) Bool)

(assert (=> b!7022976 (subseq!691 (exprs!6911 ct2!306) lt!2512842)))

(declare-fun lt!2512840 () Unit!161496)

(declare-fun lemmaConcatThenSecondSubseqOfTot!12 (List!67780 List!67780) Unit!161496)

(assert (=> b!7022976 (= lt!2512840 (lemmaConcatThenSecondSubseqOfTot!12 (exprs!6911 lt!2512844) (exprs!6911 ct2!306)))))

(assert (=> b!7022976 (subseq!691 (exprs!6911 lt!2512844) lt!2512842)))

(declare-fun lt!2512845 () Unit!161496)

(declare-fun lemmaConcatThenFirstSubseqOfTot!12 (List!67780 List!67780) Unit!161496)

(assert (=> b!7022976 (= lt!2512845 (lemmaConcatThenFirstSubseqOfTot!12 (exprs!6911 lt!2512844) (exprs!6911 ct2!306)))))

(declare-fun e!4221776 () Bool)

(assert (=> b!7022977 (= e!4221776 e!4221780)))

(declare-fun res!2866893 () Bool)

(assert (=> b!7022977 (=> (not res!2866893) (not e!4221780))))

(declare-fun lt!2512843 () Context!12822)

(assert (=> b!7022977 (= res!2866893 (= (Context!12823 lt!2512842) lt!2512843))))

(declare-fun ++!15450 (List!67780 List!67780) List!67780)

(assert (=> b!7022977 (= lt!2512842 (++!15450 (exprs!6911 lt!2512844) (exprs!6911 ct2!306)))))

(declare-fun lt!2512849 () Unit!161496)

(declare-fun lemmaConcatPreservesForall!742 (List!67780 List!67780 Int) Unit!161496)

(assert (=> b!7022977 (= lt!2512849 (lemmaConcatPreservesForall!742 (exprs!6911 lt!2512844) (exprs!6911 ct2!306) lambda!412066))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z1!570 () (InoxSet Context!12822))

(declare-fun lambda!412065 () Int)

(declare-fun mapPost2!262 ((InoxSet Context!12822) Int Context!12822) Context!12822)

(assert (=> b!7022977 (= lt!2512844 (mapPost2!262 z1!570 lambda!412065 lt!2512843))))

(declare-fun b!7022978 () Bool)

(declare-fun e!4221779 () Bool)

(declare-fun tp!1934749 () Bool)

(assert (=> b!7022978 (= e!4221779 tp!1934749)))

(declare-fun b!7022980 () Bool)

(declare-fun res!2866895 () Bool)

(assert (=> b!7022980 (=> (not res!2866895) (not e!4221775))))

(declare-fun lt!2512841 () (InoxSet Context!12822))

(declare-fun nullableZipper!2544 ((InoxSet Context!12822)) Bool)

(assert (=> b!7022980 (= res!2866895 (nullableZipper!2544 lt!2512841))))

(declare-fun b!7022981 () Bool)

(declare-fun e!4221777 () Bool)

(declare-fun tp_is_empty!44055 () Bool)

(declare-fun tp!1934746 () Bool)

(assert (=> b!7022981 (= e!4221777 (and tp_is_empty!44055 tp!1934746))))

(declare-fun b!7022982 () Bool)

(declare-fun res!2866891 () Bool)

(assert (=> b!7022982 (=> (not res!2866891) (not e!4221775))))

(declare-fun lambda!412064 () Int)

(declare-fun exists!3314 ((InoxSet Context!12822) Int) Bool)

(assert (=> b!7022982 (= res!2866891 (exists!3314 lt!2512841 lambda!412064))))

(declare-fun setElem!48836 () Context!12822)

(declare-fun tp!1934748 () Bool)

(declare-fun setNonEmpty!48836 () Bool)

(declare-fun inv!86396 (Context!12822) Bool)

(assert (=> setNonEmpty!48836 (= setRes!48836 (and tp!1934748 (inv!86396 setElem!48836) e!4221779))))

(declare-fun setRest!48836 () (InoxSet Context!12822))

(assert (=> setNonEmpty!48836 (= z1!570 ((_ map or) (store ((as const (Array Context!12822 Bool)) false) setElem!48836 true) setRest!48836))))

(declare-fun b!7022983 () Bool)

(assert (=> b!7022983 (= e!4221778 true)))

(assert (=> b!7022983 (exists!3314 z1!570 lambda!412064)))

(declare-fun lt!2512846 () Unit!161496)

(declare-fun lemmaContainsThenExists!113 ((InoxSet Context!12822) Context!12822 Int) Unit!161496)

(assert (=> b!7022983 (= lt!2512846 (lemmaContainsThenExists!113 z1!570 lt!2512844 lambda!412064))))

(declare-fun b!7022979 () Bool)

(assert (=> b!7022979 (= e!4221775 e!4221776)))

(declare-fun res!2866888 () Bool)

(assert (=> b!7022979 (=> (not res!2866888) (not e!4221776))))

(assert (=> b!7022979 (= res!2866888 (nullableContext!75 lt!2512843))))

(declare-fun getWitness!1395 ((InoxSet Context!12822) Int) Context!12822)

(assert (=> b!7022979 (= lt!2512843 (getWitness!1395 lt!2512841 lambda!412064))))

(declare-fun res!2866894 () Bool)

(assert (=> start!677694 (=> (not res!2866894) (not e!4221775))))

(declare-fun matchZipper!2955 ((InoxSet Context!12822) List!67781) Bool)

(assert (=> start!677694 (= res!2866894 (matchZipper!2955 lt!2512841 s!7408))))

(declare-fun appendTo!536 ((InoxSet Context!12822) Context!12822) (InoxSet Context!12822))

(assert (=> start!677694 (= lt!2512841 (appendTo!536 z1!570 ct2!306))))

(assert (=> start!677694 e!4221775))

(declare-fun condSetEmpty!48836 () Bool)

(assert (=> start!677694 (= condSetEmpty!48836 (= z1!570 ((as const (Array Context!12822 Bool)) false)))))

(assert (=> start!677694 setRes!48836))

(assert (=> start!677694 (and (inv!86396 ct2!306) e!4221774)))

(assert (=> start!677694 e!4221777))

(assert (= (and start!677694 res!2866894) b!7022975))

(assert (= (and b!7022975 res!2866889) b!7022980))

(assert (= (and b!7022980 res!2866895) b!7022982))

(assert (= (and b!7022982 res!2866891) b!7022979))

(assert (= (and b!7022979 res!2866888) b!7022977))

(assert (= (and b!7022977 res!2866893) b!7022976))

(assert (= (and b!7022976 (not res!2866890)) b!7022974))

(assert (= (and b!7022974 (not res!2866892)) b!7022983))

(assert (= (and start!677694 condSetEmpty!48836) setIsEmpty!48836))

(assert (= (and start!677694 (not condSetEmpty!48836)) setNonEmpty!48836))

(assert (= setNonEmpty!48836 b!7022978))

(assert (= start!677694 b!7022973))

(assert (= (and start!677694 ((_ is Cons!67657) s!7408)) b!7022981))

(declare-fun m!7725236 () Bool)

(assert (=> b!7022979 m!7725236))

(declare-fun m!7725238 () Bool)

(assert (=> b!7022979 m!7725238))

(declare-fun m!7725240 () Bool)

(assert (=> b!7022982 m!7725240))

(declare-fun m!7725242 () Bool)

(assert (=> b!7022983 m!7725242))

(declare-fun m!7725244 () Bool)

(assert (=> b!7022983 m!7725244))

(declare-fun m!7725246 () Bool)

(assert (=> b!7022976 m!7725246))

(declare-fun m!7725248 () Bool)

(assert (=> b!7022976 m!7725248))

(declare-fun m!7725250 () Bool)

(assert (=> b!7022976 m!7725250))

(declare-fun m!7725252 () Bool)

(assert (=> b!7022976 m!7725252))

(declare-fun m!7725254 () Bool)

(assert (=> b!7022976 m!7725254))

(declare-fun m!7725256 () Bool)

(assert (=> b!7022976 m!7725256))

(declare-fun m!7725258 () Bool)

(assert (=> b!7022976 m!7725258))

(declare-fun m!7725260 () Bool)

(assert (=> b!7022974 m!7725260))

(declare-fun m!7725262 () Bool)

(assert (=> start!677694 m!7725262))

(declare-fun m!7725264 () Bool)

(assert (=> start!677694 m!7725264))

(declare-fun m!7725266 () Bool)

(assert (=> start!677694 m!7725266))

(declare-fun m!7725268 () Bool)

(assert (=> b!7022980 m!7725268))

(declare-fun m!7725270 () Bool)

(assert (=> setNonEmpty!48836 m!7725270))

(declare-fun m!7725272 () Bool)

(assert (=> b!7022977 m!7725272))

(declare-fun m!7725274 () Bool)

(assert (=> b!7022977 m!7725274))

(declare-fun m!7725276 () Bool)

(assert (=> b!7022977 m!7725276))

(check-sat (not b!7022982) (not b!7022979) tp_is_empty!44055 (not b!7022976) (not b!7022981) (not start!677694) (not b!7022977) (not b!7022980) (not b!7022974) (not b!7022973) (not setNonEmpty!48836) (not b!7022983) (not b!7022978))
(check-sat)
