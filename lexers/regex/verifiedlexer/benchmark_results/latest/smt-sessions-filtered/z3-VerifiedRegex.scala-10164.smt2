; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531030 () Bool)

(assert start!531030)

(declare-fun b!5024076 () Bool)

(declare-fun e!3138554 () Bool)

(declare-fun tp!1408474 () Bool)

(assert (=> b!5024076 (= e!3138554 tp!1408474)))

(declare-fun b!5024077 () Bool)

(declare-fun e!3138553 () Bool)

(declare-fun e!3138557 () Bool)

(assert (=> b!5024077 (= e!3138553 e!3138557)))

(declare-fun res!2142139 () Bool)

(assert (=> b!5024077 (=> (not res!2142139) (not e!3138557))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079428 () Int)

(assert (=> b!5024077 (= res!2142139 (<= from!1228 lt!2079428))))

(declare-datatypes ((C!28056 0))(
  ( (C!28057 (val!23404 Int)) )
))
(declare-datatypes ((List!58252 0))(
  ( (Nil!58128) (Cons!58128 (h!64576 C!28056) (t!370644 List!58252)) )
))
(declare-datatypes ((IArray!30905 0))(
  ( (IArray!30906 (innerList!15510 List!58252)) )
))
(declare-datatypes ((Conc!15422 0))(
  ( (Node!15422 (left!42508 Conc!15422) (right!42838 Conc!15422) (csize!31074 Int) (cheight!15633 Int)) (Leaf!25587 (xs!18748 IArray!30905) (csize!31075 Int)) (Empty!15422) )
))
(declare-datatypes ((BalanceConc!30274 0))(
  ( (BalanceConc!30275 (c!859005 Conc!15422)) )
))
(declare-fun totalInput!1141 () BalanceConc!30274)

(declare-fun size!38678 (BalanceConc!30274) Int)

(assert (=> b!5024077 (= lt!2079428 (size!38678 totalInput!1141))))

(declare-fun b!5024078 () Bool)

(declare-fun e!3138556 () Bool)

(assert (=> b!5024078 (= e!3138556 true)))

(declare-fun lt!2079427 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13903 0))(
  ( (ElementMatch!13903 (c!859006 C!28056)) (Concat!22696 (regOne!28318 Regex!13903) (regTwo!28318 Regex!13903)) (EmptyExpr!13903) (Star!13903 (reg!14232 Regex!13903)) (EmptyLang!13903) (Union!13903 (regOne!28319 Regex!13903) (regTwo!28319 Regex!13903)) )
))
(declare-datatypes ((List!58253 0))(
  ( (Nil!58129) (Cons!58129 (h!64577 Regex!13903) (t!370645 List!58253)) )
))
(declare-datatypes ((Context!6656 0))(
  ( (Context!6657 (exprs!3828 List!58253)) )
))
(declare-fun lt!2079432 () (InoxSet Context!6656))

(declare-fun nullableZipper!920 ((InoxSet Context!6656)) Bool)

(assert (=> b!5024078 (= lt!2079427 (nullableZipper!920 lt!2079432))))

(declare-fun b!5024079 () Bool)

(assert (=> b!5024079 (= e!3138557 (not e!3138556))))

(declare-fun res!2142140 () Bool)

(assert (=> b!5024079 (=> res!2142140 e!3138556)))

(declare-fun lt!2079429 () Int)

(assert (=> b!5024079 (= res!2142140 (> lt!2079429 0))))

(declare-fun lt!2079431 () List!58252)

(declare-fun take!754 (List!58252 Int) List!58252)

(declare-fun drop!2554 (List!58252 Int) List!58252)

(declare-fun list!18756 (BalanceConc!30274) List!58252)

(assert (=> b!5024079 (= lt!2079431 (take!754 (drop!2554 (list!18756 totalInput!1141) (+ 1 from!1228)) lt!2079429))))

(declare-fun e!3138552 () Bool)

(assert (=> b!5024079 e!3138552))

(declare-fun res!2142141 () Bool)

(assert (=> b!5024079 (=> res!2142141 e!3138552)))

(assert (=> b!5024079 (= res!2142141 (= lt!2079429 0))))

(declare-datatypes ((Unit!149311 0))(
  ( (Unit!149312) )
))
(declare-fun lt!2079430 () Unit!149311)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!100 ((InoxSet Context!6656) Int BalanceConc!30274) Unit!149311)

(assert (=> b!5024079 (= lt!2079430 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!100 lt!2079432 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!217 ((InoxSet Context!6656) Int BalanceConc!30274 Int) Int)

(assert (=> b!5024079 (= lt!2079429 (findLongestMatchInnerZipperFastV2!217 lt!2079432 (+ 1 from!1228) totalInput!1141 lt!2079428))))

(declare-fun z!4747 () (InoxSet Context!6656))

(declare-fun derivationStepZipper!699 ((InoxSet Context!6656) C!28056) (InoxSet Context!6656))

(declare-fun apply!14127 (BalanceConc!30274 Int) C!28056)

(assert (=> b!5024079 (= lt!2079432 (derivationStepZipper!699 z!4747 (apply!14127 totalInput!1141 from!1228)))))

(declare-fun b!5024080 () Bool)

(declare-fun matchZipper!657 ((InoxSet Context!6656) List!58252) Bool)

(assert (=> b!5024080 (= e!3138552 (matchZipper!657 lt!2079432 (take!754 (drop!2554 (list!18756 totalInput!1141) (+ 1 from!1228)) lt!2079429)))))

(declare-fun setIsEmpty!28832 () Bool)

(declare-fun setRes!28832 () Bool)

(assert (=> setIsEmpty!28832 setRes!28832))

(declare-fun setNonEmpty!28832 () Bool)

(declare-fun tp!1408472 () Bool)

(declare-fun setElem!28832 () Context!6656)

(declare-fun inv!76611 (Context!6656) Bool)

(assert (=> setNonEmpty!28832 (= setRes!28832 (and tp!1408472 (inv!76611 setElem!28832) e!3138554))))

(declare-fun setRest!28832 () (InoxSet Context!6656))

(assert (=> setNonEmpty!28832 (= z!4747 ((_ map or) (store ((as const (Array Context!6656 Bool)) false) setElem!28832 true) setRest!28832))))

(declare-fun b!5024081 () Bool)

(declare-fun e!3138555 () Bool)

(declare-fun tp!1408473 () Bool)

(declare-fun inv!76612 (Conc!15422) Bool)

(assert (=> b!5024081 (= e!3138555 (and (inv!76612 (c!859005 totalInput!1141)) tp!1408473))))

(declare-fun b!5024082 () Bool)

(declare-fun res!2142142 () Bool)

(assert (=> b!5024082 (=> (not res!2142142) (not e!3138557))))

(assert (=> b!5024082 (= res!2142142 (not (= from!1228 lt!2079428)))))

(declare-fun b!5024075 () Bool)

(declare-fun res!2142138 () Bool)

(assert (=> b!5024075 (=> (not res!2142138) (not e!3138557))))

(declare-fun lostCauseZipper!917 ((InoxSet Context!6656)) Bool)

(assert (=> b!5024075 (= res!2142138 (not (lostCauseZipper!917 z!4747)))))

(declare-fun res!2142143 () Bool)

(assert (=> start!531030 (=> (not res!2142143) (not e!3138553))))

(assert (=> start!531030 (= res!2142143 (>= from!1228 0))))

(assert (=> start!531030 e!3138553))

(assert (=> start!531030 true))

(declare-fun inv!76613 (BalanceConc!30274) Bool)

(assert (=> start!531030 (and (inv!76613 totalInput!1141) e!3138555)))

(declare-fun condSetEmpty!28832 () Bool)

(assert (=> start!531030 (= condSetEmpty!28832 (= z!4747 ((as const (Array Context!6656 Bool)) false)))))

(assert (=> start!531030 setRes!28832))

(assert (= (and start!531030 res!2142143) b!5024077))

(assert (= (and b!5024077 res!2142139) b!5024075))

(assert (= (and b!5024075 res!2142138) b!5024082))

(assert (= (and b!5024082 res!2142142) b!5024079))

(assert (= (and b!5024079 (not res!2142141)) b!5024080))

(assert (= (and b!5024079 (not res!2142140)) b!5024078))

(assert (= start!531030 b!5024081))

(assert (= (and start!531030 condSetEmpty!28832) setIsEmpty!28832))

(assert (= (and start!531030 (not condSetEmpty!28832)) setNonEmpty!28832))

(assert (= setNonEmpty!28832 b!5024076))

(declare-fun m!6059334 () Bool)

(assert (=> setNonEmpty!28832 m!6059334))

(declare-fun m!6059336 () Bool)

(assert (=> b!5024077 m!6059336))

(declare-fun m!6059338 () Bool)

(assert (=> b!5024079 m!6059338))

(declare-fun m!6059340 () Bool)

(assert (=> b!5024079 m!6059340))

(declare-fun m!6059342 () Bool)

(assert (=> b!5024079 m!6059342))

(declare-fun m!6059344 () Bool)

(assert (=> b!5024079 m!6059344))

(declare-fun m!6059346 () Bool)

(assert (=> b!5024079 m!6059346))

(assert (=> b!5024079 m!6059340))

(declare-fun m!6059348 () Bool)

(assert (=> b!5024079 m!6059348))

(declare-fun m!6059350 () Bool)

(assert (=> b!5024079 m!6059350))

(assert (=> b!5024079 m!6059344))

(assert (=> b!5024079 m!6059350))

(declare-fun m!6059352 () Bool)

(assert (=> b!5024075 m!6059352))

(declare-fun m!6059354 () Bool)

(assert (=> b!5024078 m!6059354))

(declare-fun m!6059356 () Bool)

(assert (=> b!5024081 m!6059356))

(assert (=> b!5024080 m!6059350))

(assert (=> b!5024080 m!6059350))

(assert (=> b!5024080 m!6059344))

(assert (=> b!5024080 m!6059344))

(assert (=> b!5024080 m!6059346))

(assert (=> b!5024080 m!6059346))

(declare-fun m!6059358 () Bool)

(assert (=> b!5024080 m!6059358))

(declare-fun m!6059360 () Bool)

(assert (=> start!531030 m!6059360))

(check-sat (not b!5024077) (not b!5024079) (not b!5024078) (not b!5024080) (not setNonEmpty!28832) (not b!5024076) (not start!531030) (not b!5024075) (not b!5024081))
(check-sat)
