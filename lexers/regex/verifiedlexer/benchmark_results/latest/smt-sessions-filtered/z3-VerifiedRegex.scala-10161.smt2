; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531018 () Bool)

(assert start!531018)

(declare-fun b!5023900 () Bool)

(declare-fun e!3138432 () Bool)

(declare-fun tp!1408420 () Bool)

(assert (=> b!5023900 (= e!3138432 tp!1408420)))

(declare-fun setRes!28814 () Bool)

(declare-datatypes ((C!28044 0))(
  ( (C!28045 (val!23398 Int)) )
))
(declare-datatypes ((Regex!13897 0))(
  ( (ElementMatch!13897 (c!858993 C!28044)) (Concat!22690 (regOne!28306 Regex!13897) (regTwo!28306 Regex!13897)) (EmptyExpr!13897) (Star!13897 (reg!14226 Regex!13897)) (EmptyLang!13897) (Union!13897 (regOne!28307 Regex!13897) (regTwo!28307 Regex!13897)) )
))
(declare-datatypes ((List!58240 0))(
  ( (Nil!58116) (Cons!58116 (h!64564 Regex!13897) (t!370632 List!58240)) )
))
(declare-datatypes ((Context!6644 0))(
  ( (Context!6645 (exprs!3822 List!58240)) )
))
(declare-fun setElem!28814 () Context!6644)

(declare-fun setNonEmpty!28814 () Bool)

(declare-fun tp!1408419 () Bool)

(declare-fun inv!76584 (Context!6644) Bool)

(assert (=> setNonEmpty!28814 (= setRes!28814 (and tp!1408419 (inv!76584 setElem!28814) e!3138432))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6644))

(declare-fun setRest!28814 () (InoxSet Context!6644))

(assert (=> setNonEmpty!28814 (= z!4747 ((_ map or) (store ((as const (Array Context!6644 Bool)) false) setElem!28814 true) setRest!28814))))

(declare-fun b!5023901 () Bool)

(declare-fun res!2142000 () Bool)

(declare-fun e!3138433 () Bool)

(assert (=> b!5023901 (=> (not res!2142000) (not e!3138433))))

(declare-fun lostCauseZipper!911 ((InoxSet Context!6644)) Bool)

(assert (=> b!5023901 (= res!2142000 (not (lostCauseZipper!911 z!4747)))))

(declare-fun b!5023902 () Bool)

(declare-fun e!3138436 () Bool)

(declare-datatypes ((List!58241 0))(
  ( (Nil!58117) (Cons!58117 (h!64565 C!28044) (t!370633 List!58241)) )
))
(declare-datatypes ((IArray!30893 0))(
  ( (IArray!30894 (innerList!15504 List!58241)) )
))
(declare-datatypes ((Conc!15416 0))(
  ( (Node!15416 (left!42499 Conc!15416) (right!42829 Conc!15416) (csize!31062 Int) (cheight!15627 Int)) (Leaf!25578 (xs!18742 IArray!30893) (csize!31063 Int)) (Empty!15416) )
))
(declare-datatypes ((BalanceConc!30262 0))(
  ( (BalanceConc!30263 (c!858994 Conc!15416)) )
))
(declare-fun totalInput!1141 () BalanceConc!30262)

(declare-fun tp!1408418 () Bool)

(declare-fun inv!76585 (Conc!15416) Bool)

(assert (=> b!5023902 (= e!3138436 (and (inv!76585 (c!858994 totalInput!1141)) tp!1408418))))

(declare-fun b!5023904 () Bool)

(declare-fun res!2141999 () Bool)

(declare-fun e!3138435 () Bool)

(assert (=> b!5023904 (=> res!2141999 e!3138435)))

(declare-fun lt!2079263 () (InoxSet Context!6644))

(declare-fun nullableZipper!914 ((InoxSet Context!6644)) Bool)

(assert (=> b!5023904 (= res!2141999 (not (nullableZipper!914 lt!2079263)))))

(declare-fun e!3138434 () Bool)

(declare-fun b!5023905 () Bool)

(declare-fun from!1228 () Int)

(declare-fun lt!2079258 () Int)

(declare-fun matchZipper!651 ((InoxSet Context!6644) List!58241) Bool)

(declare-fun take!748 (List!58241 Int) List!58241)

(declare-fun drop!2548 (List!58241 Int) List!58241)

(declare-fun list!18750 (BalanceConc!30262) List!58241)

(assert (=> b!5023905 (= e!3138434 (matchZipper!651 lt!2079263 (take!748 (drop!2548 (list!18750 totalInput!1141) (+ 1 from!1228)) lt!2079258)))))

(declare-fun b!5023906 () Bool)

(declare-fun e!3138437 () Bool)

(assert (=> b!5023906 (= e!3138437 e!3138433)))

(declare-fun res!2142003 () Bool)

(assert (=> b!5023906 (=> (not res!2142003) (not e!3138433))))

(declare-fun lt!2079264 () Int)

(assert (=> b!5023906 (= res!2142003 (<= from!1228 lt!2079264))))

(declare-fun size!38672 (BalanceConc!30262) Int)

(assert (=> b!5023906 (= lt!2079264 (size!38672 totalInput!1141))))

(declare-fun b!5023907 () Bool)

(assert (=> b!5023907 (= e!3138435 (and (<= 0 from!1228) (< from!1228 lt!2079264)))))

(declare-fun lt!2079257 () List!58241)

(declare-fun lt!2079259 () List!58241)

(declare-fun lt!2079261 () List!58241)

(declare-fun apply!14116 (List!58241 Int) C!28044)

(assert (=> b!5023907 (= (Cons!58117 (apply!14116 lt!2079257 from!1228) (take!748 lt!2079261 0)) lt!2079259)))

(declare-datatypes ((Unit!149299 0))(
  ( (Unit!149300) )
))
(declare-fun lt!2079260 () Unit!149299)

(declare-fun lemmaDropTakeAddOneLeft!82 (List!58241 Int Int) Unit!149299)

(assert (=> b!5023907 (= lt!2079260 (lemmaDropTakeAddOneLeft!82 lt!2079257 from!1228 0))))

(assert (=> b!5023907 (= lt!2079259 (take!748 (drop!2548 lt!2079257 from!1228) 1))))

(declare-fun b!5023903 () Bool)

(declare-fun res!2142005 () Bool)

(assert (=> b!5023903 (=> (not res!2142005) (not e!3138433))))

(assert (=> b!5023903 (= res!2142005 (not (= from!1228 lt!2079264)))))

(declare-fun res!2142001 () Bool)

(assert (=> start!531018 (=> (not res!2142001) (not e!3138437))))

(assert (=> start!531018 (= res!2142001 (>= from!1228 0))))

(assert (=> start!531018 e!3138437))

(assert (=> start!531018 true))

(declare-fun inv!76586 (BalanceConc!30262) Bool)

(assert (=> start!531018 (and (inv!76586 totalInput!1141) e!3138436)))

(declare-fun condSetEmpty!28814 () Bool)

(assert (=> start!531018 (= condSetEmpty!28814 (= z!4747 ((as const (Array Context!6644 Bool)) false)))))

(assert (=> start!531018 setRes!28814))

(declare-fun b!5023908 () Bool)

(assert (=> b!5023908 (= e!3138433 (not e!3138435))))

(declare-fun res!2142004 () Bool)

(assert (=> b!5023908 (=> res!2142004 e!3138435)))

(assert (=> b!5023908 (= res!2142004 (> lt!2079258 0))))

(declare-fun lt!2079262 () List!58241)

(assert (=> b!5023908 (= lt!2079262 (take!748 lt!2079261 lt!2079258))))

(assert (=> b!5023908 (= lt!2079261 (drop!2548 lt!2079257 (+ 1 from!1228)))))

(assert (=> b!5023908 (= lt!2079257 (list!18750 totalInput!1141))))

(assert (=> b!5023908 e!3138434))

(declare-fun res!2142002 () Bool)

(assert (=> b!5023908 (=> res!2142002 e!3138434)))

(assert (=> b!5023908 (= res!2142002 (= lt!2079258 0))))

(declare-fun lt!2079256 () Unit!149299)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!94 ((InoxSet Context!6644) Int BalanceConc!30262) Unit!149299)

(assert (=> b!5023908 (= lt!2079256 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!94 lt!2079263 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!211 ((InoxSet Context!6644) Int BalanceConc!30262 Int) Int)

(assert (=> b!5023908 (= lt!2079258 (findLongestMatchInnerZipperFastV2!211 lt!2079263 (+ 1 from!1228) totalInput!1141 lt!2079264))))

(declare-fun derivationStepZipper!693 ((InoxSet Context!6644) C!28044) (InoxSet Context!6644))

(declare-fun apply!14117 (BalanceConc!30262 Int) C!28044)

(assert (=> b!5023908 (= lt!2079263 (derivationStepZipper!693 z!4747 (apply!14117 totalInput!1141 from!1228)))))

(declare-fun setIsEmpty!28814 () Bool)

(assert (=> setIsEmpty!28814 setRes!28814))

(assert (= (and start!531018 res!2142001) b!5023906))

(assert (= (and b!5023906 res!2142003) b!5023901))

(assert (= (and b!5023901 res!2142000) b!5023903))

(assert (= (and b!5023903 res!2142005) b!5023908))

(assert (= (and b!5023908 (not res!2142002)) b!5023905))

(assert (= (and b!5023908 (not res!2142004)) b!5023904))

(assert (= (and b!5023904 (not res!2141999)) b!5023907))

(assert (= start!531018 b!5023902))

(assert (= (and start!531018 condSetEmpty!28814) setIsEmpty!28814))

(assert (= (and start!531018 (not condSetEmpty!28814)) setNonEmpty!28814))

(assert (= setNonEmpty!28814 b!5023900))

(declare-fun m!6059084 () Bool)

(assert (=> start!531018 m!6059084))

(declare-fun m!6059086 () Bool)

(assert (=> b!5023901 m!6059086))

(declare-fun m!6059088 () Bool)

(assert (=> b!5023905 m!6059088))

(assert (=> b!5023905 m!6059088))

(declare-fun m!6059090 () Bool)

(assert (=> b!5023905 m!6059090))

(assert (=> b!5023905 m!6059090))

(declare-fun m!6059092 () Bool)

(assert (=> b!5023905 m!6059092))

(assert (=> b!5023905 m!6059092))

(declare-fun m!6059094 () Bool)

(assert (=> b!5023905 m!6059094))

(declare-fun m!6059096 () Bool)

(assert (=> b!5023906 m!6059096))

(declare-fun m!6059098 () Bool)

(assert (=> b!5023902 m!6059098))

(declare-fun m!6059100 () Bool)

(assert (=> b!5023908 m!6059100))

(declare-fun m!6059102 () Bool)

(assert (=> b!5023908 m!6059102))

(declare-fun m!6059104 () Bool)

(assert (=> b!5023908 m!6059104))

(assert (=> b!5023908 m!6059100))

(declare-fun m!6059106 () Bool)

(assert (=> b!5023908 m!6059106))

(assert (=> b!5023908 m!6059088))

(declare-fun m!6059108 () Bool)

(assert (=> b!5023908 m!6059108))

(declare-fun m!6059110 () Bool)

(assert (=> b!5023908 m!6059110))

(declare-fun m!6059112 () Bool)

(assert (=> b!5023907 m!6059112))

(declare-fun m!6059114 () Bool)

(assert (=> b!5023907 m!6059114))

(declare-fun m!6059116 () Bool)

(assert (=> b!5023907 m!6059116))

(assert (=> b!5023907 m!6059112))

(declare-fun m!6059118 () Bool)

(assert (=> b!5023907 m!6059118))

(declare-fun m!6059120 () Bool)

(assert (=> b!5023907 m!6059120))

(declare-fun m!6059122 () Bool)

(assert (=> setNonEmpty!28814 m!6059122))

(declare-fun m!6059124 () Bool)

(assert (=> b!5023904 m!6059124))

(check-sat (not b!5023907) (not setNonEmpty!28814) (not start!531018) (not b!5023901) (not b!5023902) (not b!5023905) (not b!5023904) (not b!5023900) (not b!5023906) (not b!5023908))
(check-sat)
