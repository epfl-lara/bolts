; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531006 () Bool)

(assert start!531006)

(declare-fun tp!1408364 () Bool)

(declare-fun setRes!28796 () Bool)

(declare-fun setNonEmpty!28796 () Bool)

(declare-fun e!3138320 () Bool)

(declare-datatypes ((C!28032 0))(
  ( (C!28033 (val!23392 Int)) )
))
(declare-datatypes ((Regex!13891 0))(
  ( (ElementMatch!13891 (c!858981 C!28032)) (Concat!22684 (regOne!28294 Regex!13891) (regTwo!28294 Regex!13891)) (EmptyExpr!13891) (Star!13891 (reg!14220 Regex!13891)) (EmptyLang!13891) (Union!13891 (regOne!28295 Regex!13891) (regTwo!28295 Regex!13891)) )
))
(declare-datatypes ((List!58228 0))(
  ( (Nil!58104) (Cons!58104 (h!64552 Regex!13891) (t!370620 List!58228)) )
))
(declare-datatypes ((Context!6632 0))(
  ( (Context!6633 (exprs!3816 List!58228)) )
))
(declare-fun setElem!28796 () Context!6632)

(declare-fun inv!76557 (Context!6632) Bool)

(assert (=> setNonEmpty!28796 (= setRes!28796 (and tp!1408364 (inv!76557 setElem!28796) e!3138320))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6632))

(declare-fun setRest!28796 () (InoxSet Context!6632))

(assert (=> setNonEmpty!28796 (= z!4747 ((_ map or) (store ((as const (Array Context!6632 Bool)) false) setElem!28796 true) setRest!28796))))

(declare-fun b!5023725 () Bool)

(declare-fun e!3138323 () Bool)

(declare-fun e!3138321 () Bool)

(assert (=> b!5023725 (= e!3138323 e!3138321)))

(declare-fun res!2141864 () Bool)

(assert (=> b!5023725 (=> (not res!2141864) (not e!3138321))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079093 () Int)

(assert (=> b!5023725 (= res!2141864 (<= from!1228 lt!2079093))))

(declare-datatypes ((List!58229 0))(
  ( (Nil!58105) (Cons!58105 (h!64553 C!28032) (t!370621 List!58229)) )
))
(declare-datatypes ((IArray!30881 0))(
  ( (IArray!30882 (innerList!15498 List!58229)) )
))
(declare-datatypes ((Conc!15410 0))(
  ( (Node!15410 (left!42490 Conc!15410) (right!42820 Conc!15410) (csize!31050 Int) (cheight!15621 Int)) (Leaf!25569 (xs!18736 IArray!30881) (csize!31051 Int)) (Empty!15410) )
))
(declare-datatypes ((BalanceConc!30250 0))(
  ( (BalanceConc!30251 (c!858982 Conc!15410)) )
))
(declare-fun totalInput!1141 () BalanceConc!30250)

(declare-fun size!38664 (BalanceConc!30250) Int)

(assert (=> b!5023725 (= lt!2079093 (size!38664 totalInput!1141))))

(declare-fun lt!2079086 () (InoxSet Context!6632))

(declare-fun b!5023726 () Bool)

(declare-fun e!3138319 () Bool)

(declare-fun lt!2079094 () Int)

(declare-fun matchZipper!645 ((InoxSet Context!6632) List!58229) Bool)

(declare-fun take!742 (List!58229 Int) List!58229)

(declare-fun drop!2542 (List!58229 Int) List!58229)

(declare-fun list!18744 (BalanceConc!30250) List!58229)

(assert (=> b!5023726 (= e!3138319 (matchZipper!645 lt!2079086 (take!742 (drop!2542 (list!18744 totalInput!1141) (+ 1 from!1228)) lt!2079094)))))

(declare-fun b!5023727 () Bool)

(declare-fun res!2141862 () Bool)

(declare-fun e!3138322 () Bool)

(assert (=> b!5023727 (=> res!2141862 e!3138322)))

(declare-fun lt!2079095 () List!58229)

(assert (=> b!5023727 (= res!2141862 (not (matchZipper!645 lt!2079086 lt!2079095)))))

(declare-fun b!5023728 () Bool)

(declare-fun tp!1408366 () Bool)

(assert (=> b!5023728 (= e!3138320 tp!1408366)))

(declare-fun b!5023730 () Bool)

(assert (=> b!5023730 (= e!3138322 true)))

(declare-fun lt!2079089 () Bool)

(declare-fun lt!2079091 () List!58229)

(assert (=> b!5023730 (= lt!2079089 (matchZipper!645 z!4747 lt!2079091))))

(declare-fun b!5023731 () Bool)

(declare-fun e!3138318 () Bool)

(assert (=> b!5023731 (= e!3138318 e!3138322)))

(declare-fun res!2141860 () Bool)

(assert (=> b!5023731 (=> res!2141860 e!3138322)))

(declare-fun lt!2079087 () List!58229)

(assert (=> b!5023731 (= res!2141860 (not (= lt!2079087 lt!2079091)))))

(declare-fun lt!2079088 () C!28032)

(assert (=> b!5023731 (= lt!2079091 (Cons!58105 lt!2079088 lt!2079095))))

(declare-fun lt!2079092 () List!58229)

(declare-fun apply!14106 (List!58229 Int) C!28032)

(assert (=> b!5023731 (= (Cons!58105 (apply!14106 lt!2079092 from!1228) lt!2079095) lt!2079087)))

(declare-datatypes ((Unit!149287 0))(
  ( (Unit!149288) )
))
(declare-fun lt!2079096 () Unit!149287)

(declare-fun lemmaDropTakeAddOneLeft!78 (List!58229 Int Int) Unit!149287)

(assert (=> b!5023731 (= lt!2079096 (lemmaDropTakeAddOneLeft!78 lt!2079092 from!1228 lt!2079094))))

(assert (=> b!5023731 (= lt!2079087 (take!742 (drop!2542 lt!2079092 from!1228) (+ 1 lt!2079094)))))

(declare-fun b!5023732 () Bool)

(declare-fun res!2141866 () Bool)

(assert (=> b!5023732 (=> (not res!2141866) (not e!3138321))))

(assert (=> b!5023732 (= res!2141866 (not (= from!1228 lt!2079093)))))

(declare-fun b!5023733 () Bool)

(declare-fun res!2141861 () Bool)

(assert (=> b!5023733 (=> (not res!2141861) (not e!3138321))))

(declare-fun lostCauseZipper!905 ((InoxSet Context!6632)) Bool)

(assert (=> b!5023733 (= res!2141861 (not (lostCauseZipper!905 z!4747)))))

(declare-fun setIsEmpty!28796 () Bool)

(assert (=> setIsEmpty!28796 setRes!28796))

(declare-fun b!5023734 () Bool)

(declare-fun e!3138317 () Bool)

(declare-fun tp!1408365 () Bool)

(declare-fun inv!76558 (Conc!15410) Bool)

(assert (=> b!5023734 (= e!3138317 (and (inv!76558 (c!858982 totalInput!1141)) tp!1408365))))

(declare-fun res!2141865 () Bool)

(assert (=> start!531006 (=> (not res!2141865) (not e!3138323))))

(assert (=> start!531006 (= res!2141865 (>= from!1228 0))))

(assert (=> start!531006 e!3138323))

(assert (=> start!531006 true))

(declare-fun inv!76559 (BalanceConc!30250) Bool)

(assert (=> start!531006 (and (inv!76559 totalInput!1141) e!3138317)))

(declare-fun condSetEmpty!28796 () Bool)

(assert (=> start!531006 (= condSetEmpty!28796 (= z!4747 ((as const (Array Context!6632 Bool)) false)))))

(assert (=> start!531006 setRes!28796))

(declare-fun b!5023729 () Bool)

(assert (=> b!5023729 (= e!3138321 (not e!3138318))))

(declare-fun res!2141867 () Bool)

(assert (=> b!5023729 (=> res!2141867 e!3138318)))

(assert (=> b!5023729 (= res!2141867 (<= lt!2079094 0))))

(assert (=> b!5023729 (= lt!2079095 (take!742 (drop!2542 lt!2079092 (+ 1 from!1228)) lt!2079094))))

(assert (=> b!5023729 (= lt!2079092 (list!18744 totalInput!1141))))

(assert (=> b!5023729 e!3138319))

(declare-fun res!2141863 () Bool)

(assert (=> b!5023729 (=> res!2141863 e!3138319)))

(assert (=> b!5023729 (= res!2141863 (= lt!2079094 0))))

(declare-fun lt!2079090 () Unit!149287)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!88 ((InoxSet Context!6632) Int BalanceConc!30250) Unit!149287)

(assert (=> b!5023729 (= lt!2079090 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!88 lt!2079086 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!205 ((InoxSet Context!6632) Int BalanceConc!30250 Int) Int)

(assert (=> b!5023729 (= lt!2079094 (findLongestMatchInnerZipperFastV2!205 lt!2079086 (+ 1 from!1228) totalInput!1141 lt!2079093))))

(declare-fun derivationStepZipper!687 ((InoxSet Context!6632) C!28032) (InoxSet Context!6632))

(assert (=> b!5023729 (= lt!2079086 (derivationStepZipper!687 z!4747 lt!2079088))))

(declare-fun apply!14107 (BalanceConc!30250 Int) C!28032)

(assert (=> b!5023729 (= lt!2079088 (apply!14107 totalInput!1141 from!1228))))

(assert (= (and start!531006 res!2141865) b!5023725))

(assert (= (and b!5023725 res!2141864) b!5023733))

(assert (= (and b!5023733 res!2141861) b!5023732))

(assert (= (and b!5023732 res!2141866) b!5023729))

(assert (= (and b!5023729 (not res!2141863)) b!5023726))

(assert (= (and b!5023729 (not res!2141867)) b!5023731))

(assert (= (and b!5023731 (not res!2141860)) b!5023727))

(assert (= (and b!5023727 (not res!2141862)) b!5023730))

(assert (= start!531006 b!5023734))

(assert (= (and start!531006 condSetEmpty!28796) setIsEmpty!28796))

(assert (= (and start!531006 (not condSetEmpty!28796)) setNonEmpty!28796))

(assert (= setNonEmpty!28796 b!5023728))

(declare-fun m!6058836 () Bool)

(assert (=> b!5023727 m!6058836))

(declare-fun m!6058838 () Bool)

(assert (=> b!5023729 m!6058838))

(declare-fun m!6058840 () Bool)

(assert (=> b!5023729 m!6058840))

(declare-fun m!6058842 () Bool)

(assert (=> b!5023729 m!6058842))

(declare-fun m!6058844 () Bool)

(assert (=> b!5023729 m!6058844))

(assert (=> b!5023729 m!6058842))

(declare-fun m!6058846 () Bool)

(assert (=> b!5023729 m!6058846))

(declare-fun m!6058848 () Bool)

(assert (=> b!5023729 m!6058848))

(declare-fun m!6058850 () Bool)

(assert (=> b!5023729 m!6058850))

(declare-fun m!6058852 () Bool)

(assert (=> setNonEmpty!28796 m!6058852))

(declare-fun m!6058854 () Bool)

(assert (=> start!531006 m!6058854))

(declare-fun m!6058856 () Bool)

(assert (=> b!5023731 m!6058856))

(declare-fun m!6058858 () Bool)

(assert (=> b!5023731 m!6058858))

(declare-fun m!6058860 () Bool)

(assert (=> b!5023731 m!6058860))

(assert (=> b!5023731 m!6058860))

(declare-fun m!6058862 () Bool)

(assert (=> b!5023731 m!6058862))

(declare-fun m!6058864 () Bool)

(assert (=> b!5023725 m!6058864))

(declare-fun m!6058866 () Bool)

(assert (=> b!5023733 m!6058866))

(assert (=> b!5023726 m!6058846))

(assert (=> b!5023726 m!6058846))

(declare-fun m!6058868 () Bool)

(assert (=> b!5023726 m!6058868))

(assert (=> b!5023726 m!6058868))

(declare-fun m!6058870 () Bool)

(assert (=> b!5023726 m!6058870))

(assert (=> b!5023726 m!6058870))

(declare-fun m!6058872 () Bool)

(assert (=> b!5023726 m!6058872))

(declare-fun m!6058874 () Bool)

(assert (=> b!5023734 m!6058874))

(declare-fun m!6058876 () Bool)

(assert (=> b!5023730 m!6058876))

(check-sat (not b!5023733) (not b!5023728) (not start!531006) (not setNonEmpty!28796) (not b!5023727) (not b!5023726) (not b!5023729) (not b!5023730) (not b!5023734) (not b!5023725) (not b!5023731))
(check-sat)
