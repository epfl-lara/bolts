; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531548 () Bool)

(assert start!531548)

(declare-fun res!2143107 () Bool)

(declare-fun e!3140539 () Bool)

(assert (=> start!531548 (=> (not res!2143107) (not e!3140539))))

(declare-fun from!1228 () Int)

(assert (=> start!531548 (= res!2143107 (>= from!1228 0))))

(assert (=> start!531548 e!3140539))

(assert (=> start!531548 true))

(declare-datatypes ((C!28096 0))(
  ( (C!28097 (val!23424 Int)) )
))
(declare-datatypes ((List!58301 0))(
  ( (Nil!58177) (Cons!58177 (h!64625 C!28096) (t!370709 List!58301)) )
))
(declare-datatypes ((IArray!30945 0))(
  ( (IArray!30946 (innerList!15530 List!58301)) )
))
(declare-datatypes ((Conc!15442 0))(
  ( (Node!15442 (left!42554 Conc!15442) (right!42884 Conc!15442) (csize!31114 Int) (cheight!15653 Int)) (Leaf!25617 (xs!18768 IArray!30945) (csize!31115 Int)) (Empty!15442) )
))
(declare-datatypes ((BalanceConc!30314 0))(
  ( (BalanceConc!30315 (c!860075 Conc!15442)) )
))
(declare-fun totalInput!1141 () BalanceConc!30314)

(declare-fun e!3140541 () Bool)

(declare-fun inv!76728 (BalanceConc!30314) Bool)

(assert (=> start!531548 (and (inv!76728 totalInput!1141) e!3140541)))

(declare-fun condSetEmpty!28926 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13923 0))(
  ( (ElementMatch!13923 (c!860076 C!28096)) (Concat!22716 (regOne!28358 Regex!13923) (regTwo!28358 Regex!13923)) (EmptyExpr!13923) (Star!13923 (reg!14252 Regex!13923)) (EmptyLang!13923) (Union!13923 (regOne!28359 Regex!13923) (regTwo!28359 Regex!13923)) )
))
(declare-datatypes ((List!58302 0))(
  ( (Nil!58178) (Cons!58178 (h!64626 Regex!13923) (t!370710 List!58302)) )
))
(declare-datatypes ((Context!6696 0))(
  ( (Context!6697 (exprs!3848 List!58302)) )
))
(declare-fun z!4747 () (InoxSet Context!6696))

(assert (=> start!531548 (= condSetEmpty!28926 (= z!4747 ((as const (Array Context!6696 Bool)) false)))))

(declare-fun setRes!28926 () Bool)

(assert (=> start!531548 setRes!28926))

(declare-fun b!5027305 () Bool)

(declare-fun e!3140540 () Bool)

(declare-fun lt!2080642 () Int)

(assert (=> b!5027305 (= e!3140540 (and (>= (+ 1 from!1228) 0) (<= (+ 1 from!1228) lt!2080642) (>= (- lt!2080642 (+ 1 from!1228)) (- lt!2080642 from!1228))))))

(declare-fun lt!2080643 () Int)

(declare-fun findLongestMatchInnerZipperFastV2!237 ((InoxSet Context!6696) Int BalanceConc!30314 Int) Int)

(declare-fun derivationStepZipper!718 ((InoxSet Context!6696) C!28096) (InoxSet Context!6696))

(declare-fun apply!14168 (BalanceConc!30314 Int) C!28096)

(assert (=> b!5027305 (= lt!2080643 (findLongestMatchInnerZipperFastV2!237 (derivationStepZipper!718 z!4747 (apply!14168 totalInput!1141 from!1228)) (+ 1 from!1228) totalInput!1141 lt!2080642))))

(declare-fun b!5027306 () Bool)

(declare-fun tp!1408984 () Bool)

(declare-fun inv!76729 (Conc!15442) Bool)

(assert (=> b!5027306 (= e!3140541 (and (inv!76729 (c!860075 totalInput!1141)) tp!1408984))))

(declare-fun b!5027307 () Bool)

(assert (=> b!5027307 (= e!3140539 e!3140540)))

(declare-fun res!2143109 () Bool)

(assert (=> b!5027307 (=> (not res!2143109) (not e!3140540))))

(assert (=> b!5027307 (= res!2143109 (<= from!1228 lt!2080642))))

(declare-fun size!38716 (BalanceConc!30314) Int)

(assert (=> b!5027307 (= lt!2080642 (size!38716 totalInput!1141))))

(declare-fun setNonEmpty!28926 () Bool)

(declare-fun setElem!28926 () Context!6696)

(declare-fun e!3140538 () Bool)

(declare-fun tp!1408982 () Bool)

(declare-fun inv!76730 (Context!6696) Bool)

(assert (=> setNonEmpty!28926 (= setRes!28926 (and tp!1408982 (inv!76730 setElem!28926) e!3140538))))

(declare-fun setRest!28926 () (InoxSet Context!6696))

(assert (=> setNonEmpty!28926 (= z!4747 ((_ map or) (store ((as const (Array Context!6696 Bool)) false) setElem!28926 true) setRest!28926))))

(declare-fun b!5027308 () Bool)

(declare-fun res!2143106 () Bool)

(assert (=> b!5027308 (=> (not res!2143106) (not e!3140540))))

(declare-fun lostCauseZipper!937 ((InoxSet Context!6696)) Bool)

(assert (=> b!5027308 (= res!2143106 (not (lostCauseZipper!937 z!4747)))))

(declare-fun b!5027309 () Bool)

(declare-fun res!2143108 () Bool)

(assert (=> b!5027309 (=> (not res!2143108) (not e!3140540))))

(assert (=> b!5027309 (= res!2143108 (not (= from!1228 lt!2080642)))))

(declare-fun setIsEmpty!28926 () Bool)

(assert (=> setIsEmpty!28926 setRes!28926))

(declare-fun b!5027310 () Bool)

(declare-fun tp!1408983 () Bool)

(assert (=> b!5027310 (= e!3140538 tp!1408983)))

(assert (= (and start!531548 res!2143107) b!5027307))

(assert (= (and b!5027307 res!2143109) b!5027308))

(assert (= (and b!5027308 res!2143106) b!5027309))

(assert (= (and b!5027309 res!2143108) b!5027305))

(assert (= start!531548 b!5027306))

(assert (= (and start!531548 condSetEmpty!28926) setIsEmpty!28926))

(assert (= (and start!531548 (not condSetEmpty!28926)) setNonEmpty!28926))

(assert (= setNonEmpty!28926 b!5027310))

(declare-fun m!6062666 () Bool)

(assert (=> start!531548 m!6062666))

(declare-fun m!6062668 () Bool)

(assert (=> b!5027306 m!6062668))

(declare-fun m!6062670 () Bool)

(assert (=> b!5027308 m!6062670))

(declare-fun m!6062672 () Bool)

(assert (=> setNonEmpty!28926 m!6062672))

(declare-fun m!6062674 () Bool)

(assert (=> b!5027307 m!6062674))

(declare-fun m!6062676 () Bool)

(assert (=> b!5027305 m!6062676))

(assert (=> b!5027305 m!6062676))

(declare-fun m!6062678 () Bool)

(assert (=> b!5027305 m!6062678))

(assert (=> b!5027305 m!6062678))

(declare-fun m!6062680 () Bool)

(assert (=> b!5027305 m!6062680))

(check-sat (not setNonEmpty!28926) (not b!5027310) (not b!5027305) (not start!531548) (not b!5027307) (not b!5027306) (not b!5027308))
(check-sat)
