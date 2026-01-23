; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!677690 () Bool)

(assert start!677690)

(declare-fun b!7022909 () Bool)

(assert (=> b!7022909 true))

(declare-fun bs!1868026 () Bool)

(declare-fun b!7022913 () Bool)

(assert (= bs!1868026 (and b!7022913 b!7022909)))

(declare-fun lambda!412027 () Int)

(declare-fun lambda!412026 () Int)

(assert (=> bs!1868026 (not (= lambda!412027 lambda!412026))))

(declare-fun b!7022905 () Bool)

(declare-fun e!4221734 () Bool)

(declare-fun e!4221737 () Bool)

(assert (=> b!7022905 (= e!4221734 e!4221737)))

(declare-fun res!2866846 () Bool)

(assert (=> b!7022905 (=> (not res!2866846) (not e!4221737))))

(declare-datatypes ((C!35096 0))(
  ( (C!35097 (val!27250 Int)) )
))
(declare-datatypes ((Regex!17413 0))(
  ( (ElementMatch!17413 (c!1305230 C!35096)) (Concat!26258 (regOne!35338 Regex!17413) (regTwo!35338 Regex!17413)) (EmptyExpr!17413) (Star!17413 (reg!17742 Regex!17413)) (EmptyLang!17413) (Union!17413 (regOne!35339 Regex!17413) (regTwo!35339 Regex!17413)) )
))
(declare-datatypes ((List!67776 0))(
  ( (Nil!67652) (Cons!67652 (h!74100 Regex!17413) (t!381531 List!67776)) )
))
(declare-datatypes ((Context!12818 0))(
  ( (Context!12819 (exprs!6909 List!67776)) )
))
(declare-fun lt!2512780 () Context!12818)

(declare-fun nullableContext!73 (Context!12818) Bool)

(assert (=> b!7022905 (= res!2866846 (nullableContext!73 lt!2512780))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun lt!2512778 () (InoxSet Context!12818))

(declare-fun lambda!412024 () Int)

(declare-fun getWitness!1393 ((InoxSet Context!12818) Int) Context!12818)

(assert (=> b!7022905 (= lt!2512780 (getWitness!1393 lt!2512778 lambda!412024))))

(declare-fun b!7022906 () Bool)

(declare-fun res!2866843 () Bool)

(assert (=> b!7022906 (=> (not res!2866843) (not e!4221734))))

(declare-fun exists!3312 ((InoxSet Context!12818) Int) Bool)

(assert (=> b!7022906 (= res!2866843 (exists!3312 lt!2512778 lambda!412024))))

(declare-fun setRes!48830 () Bool)

(declare-fun tp!1934723 () Bool)

(declare-fun setNonEmpty!48830 () Bool)

(declare-fun e!4221735 () Bool)

(declare-fun setElem!48830 () Context!12818)

(declare-fun inv!86391 (Context!12818) Bool)

(assert (=> setNonEmpty!48830 (= setRes!48830 (and tp!1934723 (inv!86391 setElem!48830) e!4221735))))

(declare-fun z1!570 () (InoxSet Context!12818))

(declare-fun setRest!48830 () (InoxSet Context!12818))

(assert (=> setNonEmpty!48830 (= z1!570 ((_ map or) (store ((as const (Array Context!12818 Bool)) false) setElem!48830 true) setRest!48830))))

(declare-fun b!7022907 () Bool)

(declare-fun e!4221733 () Bool)

(declare-fun tp!1934725 () Bool)

(assert (=> b!7022907 (= e!4221733 tp!1934725)))

(declare-fun b!7022908 () Bool)

(declare-fun e!4221736 () Bool)

(declare-fun tp_is_empty!44051 () Bool)

(declare-fun tp!1934722 () Bool)

(assert (=> b!7022908 (= e!4221736 (and tp_is_empty!44051 tp!1934722))))

(declare-fun e!4221738 () Bool)

(assert (=> b!7022909 (= e!4221737 e!4221738)))

(declare-fun res!2866844 () Bool)

(assert (=> b!7022909 (=> (not res!2866844) (not e!4221738))))

(declare-fun lt!2512782 () List!67776)

(assert (=> b!7022909 (= res!2866844 (= (Context!12819 lt!2512782) lt!2512780))))

(declare-fun lt!2512779 () Context!12818)

(declare-fun ct2!306 () Context!12818)

(declare-fun ++!15448 (List!67776 List!67776) List!67776)

(assert (=> b!7022909 (= lt!2512782 (++!15448 (exprs!6909 lt!2512779) (exprs!6909 ct2!306)))))

(declare-datatypes ((Unit!161492 0))(
  ( (Unit!161493) )
))
(declare-fun lt!2512784 () Unit!161492)

(declare-fun lemmaConcatPreservesForall!740 (List!67776 List!67776 Int) Unit!161492)

(assert (=> b!7022909 (= lt!2512784 (lemmaConcatPreservesForall!740 (exprs!6909 lt!2512779) (exprs!6909 ct2!306) lambda!412026))))

(declare-fun lambda!412025 () Int)

(declare-fun mapPost2!260 ((InoxSet Context!12818) Int Context!12818) Context!12818)

(assert (=> b!7022909 (= lt!2512779 (mapPost2!260 z1!570 lambda!412025 lt!2512780))))

(declare-fun b!7022910 () Bool)

(declare-fun tp!1934724 () Bool)

(assert (=> b!7022910 (= e!4221735 tp!1934724)))

(declare-fun b!7022904 () Bool)

(declare-fun res!2866845 () Bool)

(assert (=> b!7022904 (=> (not res!2866845) (not e!4221734))))

(declare-fun nullableZipper!2542 ((InoxSet Context!12818)) Bool)

(assert (=> b!7022904 (= res!2866845 (nullableZipper!2542 lt!2512778))))

(declare-fun res!2866847 () Bool)

(assert (=> start!677690 (=> (not res!2866847) (not e!4221734))))

(declare-datatypes ((List!67777 0))(
  ( (Nil!67653) (Cons!67653 (h!74101 C!35096) (t!381532 List!67777)) )
))
(declare-fun s!7408 () List!67777)

(declare-fun matchZipper!2953 ((InoxSet Context!12818) List!67777) Bool)

(assert (=> start!677690 (= res!2866847 (matchZipper!2953 lt!2512778 s!7408))))

(declare-fun appendTo!534 ((InoxSet Context!12818) Context!12818) (InoxSet Context!12818))

(assert (=> start!677690 (= lt!2512778 (appendTo!534 z1!570 ct2!306))))

(assert (=> start!677690 e!4221734))

(declare-fun condSetEmpty!48830 () Bool)

(assert (=> start!677690 (= condSetEmpty!48830 (= z1!570 ((as const (Array Context!12818 Bool)) false)))))

(assert (=> start!677690 setRes!48830))

(assert (=> start!677690 (and (inv!86391 ct2!306) e!4221733)))

(assert (=> start!677690 e!4221736))

(declare-fun b!7022911 () Bool)

(declare-fun e!4221732 () Bool)

(assert (=> b!7022911 (= e!4221732 true)))

(declare-fun lt!2512776 () Bool)

(assert (=> b!7022911 (= lt!2512776 (nullableContext!73 ct2!306))))

(declare-fun b!7022912 () Bool)

(declare-fun res!2866842 () Bool)

(assert (=> b!7022912 (=> (not res!2866842) (not e!4221734))))

(get-info :version)

(assert (=> b!7022912 (= res!2866842 (not ((_ is Cons!67653) s!7408)))))

(declare-fun setIsEmpty!48830 () Bool)

(assert (=> setIsEmpty!48830 setRes!48830))

(assert (=> b!7022913 (= e!4221738 (not e!4221732))))

(declare-fun res!2866841 () Bool)

(assert (=> b!7022913 (=> res!2866841 e!4221732)))

(assert (=> b!7022913 (= res!2866841 (not (nullableContext!73 lt!2512779)))))

(declare-fun lt!2512783 () Unit!161492)

(declare-fun lemmaContentSubsetPreservesForall!340 (List!67776 List!67776 Int) Unit!161492)

(assert (=> b!7022913 (= lt!2512783 (lemmaContentSubsetPreservesForall!340 lt!2512782 (exprs!6909 ct2!306) lambda!412027))))

(declare-fun lt!2512785 () Unit!161492)

(assert (=> b!7022913 (= lt!2512785 (lemmaContentSubsetPreservesForall!340 lt!2512782 (exprs!6909 lt!2512779) lambda!412027))))

(declare-fun subseq!689 (List!67776 List!67776) Bool)

(assert (=> b!7022913 (subseq!689 (exprs!6909 ct2!306) lt!2512782)))

(declare-fun lt!2512781 () Unit!161492)

(declare-fun lemmaConcatThenSecondSubseqOfTot!10 (List!67776 List!67776) Unit!161492)

(assert (=> b!7022913 (= lt!2512781 (lemmaConcatThenSecondSubseqOfTot!10 (exprs!6909 lt!2512779) (exprs!6909 ct2!306)))))

(assert (=> b!7022913 (subseq!689 (exprs!6909 lt!2512779) lt!2512782)))

(declare-fun lt!2512777 () Unit!161492)

(declare-fun lemmaConcatThenFirstSubseqOfTot!10 (List!67776 List!67776) Unit!161492)

(assert (=> b!7022913 (= lt!2512777 (lemmaConcatThenFirstSubseqOfTot!10 (exprs!6909 lt!2512779) (exprs!6909 ct2!306)))))

(assert (= (and start!677690 res!2866847) b!7022912))

(assert (= (and b!7022912 res!2866842) b!7022904))

(assert (= (and b!7022904 res!2866845) b!7022906))

(assert (= (and b!7022906 res!2866843) b!7022905))

(assert (= (and b!7022905 res!2866846) b!7022909))

(assert (= (and b!7022909 res!2866844) b!7022913))

(assert (= (and b!7022913 (not res!2866841)) b!7022911))

(assert (= (and start!677690 condSetEmpty!48830) setIsEmpty!48830))

(assert (= (and start!677690 (not condSetEmpty!48830)) setNonEmpty!48830))

(assert (= setNonEmpty!48830 b!7022910))

(assert (= start!677690 b!7022907))

(assert (= (and start!677690 ((_ is Cons!67653) s!7408)) b!7022908))

(declare-fun m!7725156 () Bool)

(assert (=> b!7022911 m!7725156))

(declare-fun m!7725158 () Bool)

(assert (=> b!7022913 m!7725158))

(declare-fun m!7725160 () Bool)

(assert (=> b!7022913 m!7725160))

(declare-fun m!7725162 () Bool)

(assert (=> b!7022913 m!7725162))

(declare-fun m!7725164 () Bool)

(assert (=> b!7022913 m!7725164))

(declare-fun m!7725166 () Bool)

(assert (=> b!7022913 m!7725166))

(declare-fun m!7725168 () Bool)

(assert (=> b!7022913 m!7725168))

(declare-fun m!7725170 () Bool)

(assert (=> b!7022913 m!7725170))

(declare-fun m!7725172 () Bool)

(assert (=> b!7022905 m!7725172))

(declare-fun m!7725174 () Bool)

(assert (=> b!7022905 m!7725174))

(declare-fun m!7725176 () Bool)

(assert (=> b!7022906 m!7725176))

(declare-fun m!7725178 () Bool)

(assert (=> setNonEmpty!48830 m!7725178))

(declare-fun m!7725180 () Bool)

(assert (=> b!7022909 m!7725180))

(declare-fun m!7725182 () Bool)

(assert (=> b!7022909 m!7725182))

(declare-fun m!7725184 () Bool)

(assert (=> b!7022909 m!7725184))

(declare-fun m!7725186 () Bool)

(assert (=> b!7022904 m!7725186))

(declare-fun m!7725188 () Bool)

(assert (=> start!677690 m!7725188))

(declare-fun m!7725190 () Bool)

(assert (=> start!677690 m!7725190))

(declare-fun m!7725192 () Bool)

(assert (=> start!677690 m!7725192))

(check-sat (not b!7022904) (not b!7022911) (not b!7022913) tp_is_empty!44051 (not b!7022905) (not b!7022908) (not b!7022910) (not b!7022906) (not start!677690) (not b!7022907) (not b!7022909) (not setNonEmpty!48830))
(check-sat)
