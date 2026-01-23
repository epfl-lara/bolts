; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531034 () Bool)

(assert start!531034)

(declare-fun b!5024133 () Bool)

(declare-fun res!2142186 () Bool)

(declare-fun e!3138590 () Bool)

(assert (=> b!5024133 (=> (not res!2142186) (not e!3138590))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079470 () Int)

(assert (=> b!5024133 (= res!2142186 (not (= from!1228 lt!2079470)))))

(declare-fun b!5024134 () Bool)

(declare-fun e!3138588 () Bool)

(declare-fun tp!1408491 () Bool)

(assert (=> b!5024134 (= e!3138588 tp!1408491)))

(declare-fun b!5024135 () Bool)

(declare-fun res!2142184 () Bool)

(declare-fun e!3138593 () Bool)

(assert (=> b!5024135 (=> res!2142184 e!3138593)))

(declare-datatypes ((C!28060 0))(
  ( (C!28061 (val!23406 Int)) )
))
(declare-datatypes ((List!58256 0))(
  ( (Nil!58132) (Cons!58132 (h!64580 C!28060) (t!370648 List!58256)) )
))
(declare-datatypes ((IArray!30909 0))(
  ( (IArray!30910 (innerList!15512 List!58256)) )
))
(declare-datatypes ((Conc!15424 0))(
  ( (Node!15424 (left!42511 Conc!15424) (right!42841 Conc!15424) (csize!31078 Int) (cheight!15635 Int)) (Leaf!25590 (xs!18750 IArray!30909) (csize!31079 Int)) (Empty!15424) )
))
(declare-datatypes ((BalanceConc!30278 0))(
  ( (BalanceConc!30279 (c!859009 Conc!15424)) )
))
(declare-fun totalInput!1141 () BalanceConc!30278)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13905 0))(
  ( (ElementMatch!13905 (c!859010 C!28060)) (Concat!22698 (regOne!28322 Regex!13905) (regTwo!28322 Regex!13905)) (EmptyExpr!13905) (Star!13905 (reg!14234 Regex!13905)) (EmptyLang!13905) (Union!13905 (regOne!28323 Regex!13905) (regTwo!28323 Regex!13905)) )
))
(declare-datatypes ((List!58257 0))(
  ( (Nil!58133) (Cons!58133 (h!64581 Regex!13905) (t!370649 List!58257)) )
))
(declare-datatypes ((Context!6660 0))(
  ( (Context!6661 (exprs!3830 List!58257)) )
))
(declare-fun z!4747 () (InoxSet Context!6660))

(declare-fun findLongestMatchInnerZipperFastV2!219 ((InoxSet Context!6660) Int BalanceConc!30278 Int) Int)

(assert (=> b!5024135 (= res!2142184 (= (findLongestMatchInnerZipperFastV2!219 z!4747 from!1228 totalInput!1141 lt!2079470) 0))))

(declare-fun setNonEmpty!28838 () Bool)

(declare-fun setRes!28838 () Bool)

(declare-fun tp!1408490 () Bool)

(declare-fun setElem!28838 () Context!6660)

(declare-fun inv!76620 (Context!6660) Bool)

(assert (=> setNonEmpty!28838 (= setRes!28838 (and tp!1408490 (inv!76620 setElem!28838) e!3138588))))

(declare-fun setRest!28838 () (InoxSet Context!6660))

(assert (=> setNonEmpty!28838 (= z!4747 ((_ map or) (store ((as const (Array Context!6660 Bool)) false) setElem!28838 true) setRest!28838))))

(declare-fun lt!2079468 () (InoxSet Context!6660))

(declare-fun b!5024136 () Bool)

(declare-fun e!3138592 () Bool)

(declare-fun lt!2079471 () Int)

(declare-fun matchZipper!659 ((InoxSet Context!6660) List!58256) Bool)

(declare-fun take!756 (List!58256 Int) List!58256)

(declare-fun drop!2556 (List!58256 Int) List!58256)

(declare-fun list!18758 (BalanceConc!30278) List!58256)

(assert (=> b!5024136 (= e!3138592 (matchZipper!659 lt!2079468 (take!756 (drop!2556 (list!18758 totalInput!1141) (+ 1 from!1228)) lt!2079471)))))

(declare-fun b!5024137 () Bool)

(declare-fun res!2142191 () Bool)

(assert (=> b!5024137 (=> (not res!2142191) (not e!3138590))))

(declare-fun lostCauseZipper!919 ((InoxSet Context!6660)) Bool)

(assert (=> b!5024137 (= res!2142191 (not (lostCauseZipper!919 z!4747)))))

(declare-fun b!5024138 () Bool)

(assert (=> b!5024138 (= e!3138593 true)))

(declare-fun lt!2079473 () List!58256)

(declare-fun lt!2079474 () List!58256)

(assert (=> b!5024138 (= lt!2079473 (drop!2556 lt!2079474 from!1228))))

(declare-fun b!5024139 () Bool)

(declare-fun e!3138591 () Bool)

(declare-fun tp!1408492 () Bool)

(declare-fun inv!76621 (Conc!15424) Bool)

(assert (=> b!5024139 (= e!3138591 (and (inv!76621 (c!859009 totalInput!1141)) tp!1408492))))

(declare-fun setIsEmpty!28838 () Bool)

(assert (=> setIsEmpty!28838 setRes!28838))

(declare-fun b!5024141 () Bool)

(declare-fun e!3138589 () Bool)

(assert (=> b!5024141 (= e!3138589 e!3138590)))

(declare-fun res!2142190 () Bool)

(assert (=> b!5024141 (=> (not res!2142190) (not e!3138590))))

(assert (=> b!5024141 (= res!2142190 (<= from!1228 lt!2079470))))

(declare-fun size!38680 (BalanceConc!30278) Int)

(assert (=> b!5024141 (= lt!2079470 (size!38680 totalInput!1141))))

(declare-fun b!5024142 () Bool)

(declare-fun res!2142185 () Bool)

(assert (=> b!5024142 (=> res!2142185 e!3138593)))

(declare-fun nullableZipper!922 ((InoxSet Context!6660)) Bool)

(assert (=> b!5024142 (= res!2142185 (nullableZipper!922 lt!2079468))))

(declare-fun res!2142187 () Bool)

(assert (=> start!531034 (=> (not res!2142187) (not e!3138589))))

(assert (=> start!531034 (= res!2142187 (>= from!1228 0))))

(assert (=> start!531034 e!3138589))

(assert (=> start!531034 true))

(declare-fun inv!76622 (BalanceConc!30278) Bool)

(assert (=> start!531034 (and (inv!76622 totalInput!1141) e!3138591)))

(declare-fun condSetEmpty!28838 () Bool)

(assert (=> start!531034 (= condSetEmpty!28838 (= z!4747 ((as const (Array Context!6660 Bool)) false)))))

(assert (=> start!531034 setRes!28838))

(declare-fun b!5024140 () Bool)

(assert (=> b!5024140 (= e!3138590 (not e!3138593))))

(declare-fun res!2142189 () Bool)

(assert (=> b!5024140 (=> res!2142189 e!3138593)))

(assert (=> b!5024140 (= res!2142189 (> lt!2079471 0))))

(declare-fun lt!2079472 () List!58256)

(assert (=> b!5024140 (= lt!2079472 (take!756 (drop!2556 lt!2079474 (+ 1 from!1228)) lt!2079471))))

(assert (=> b!5024140 (= lt!2079474 (list!18758 totalInput!1141))))

(assert (=> b!5024140 e!3138592))

(declare-fun res!2142188 () Bool)

(assert (=> b!5024140 (=> res!2142188 e!3138592)))

(assert (=> b!5024140 (= res!2142188 (= lt!2079471 0))))

(declare-datatypes ((Unit!149315 0))(
  ( (Unit!149316) )
))
(declare-fun lt!2079469 () Unit!149315)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!102 ((InoxSet Context!6660) Int BalanceConc!30278) Unit!149315)

(assert (=> b!5024140 (= lt!2079469 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!102 lt!2079468 (+ 1 from!1228) totalInput!1141))))

(assert (=> b!5024140 (= lt!2079471 (findLongestMatchInnerZipperFastV2!219 lt!2079468 (+ 1 from!1228) totalInput!1141 lt!2079470))))

(declare-fun derivationStepZipper!701 ((InoxSet Context!6660) C!28060) (InoxSet Context!6660))

(declare-fun apply!14129 (BalanceConc!30278 Int) C!28060)

(assert (=> b!5024140 (= lt!2079468 (derivationStepZipper!701 z!4747 (apply!14129 totalInput!1141 from!1228)))))

(assert (= (and start!531034 res!2142187) b!5024141))

(assert (= (and b!5024141 res!2142190) b!5024137))

(assert (= (and b!5024137 res!2142191) b!5024133))

(assert (= (and b!5024133 res!2142186) b!5024140))

(assert (= (and b!5024140 (not res!2142188)) b!5024136))

(assert (= (and b!5024140 (not res!2142189)) b!5024142))

(assert (= (and b!5024142 (not res!2142185)) b!5024135))

(assert (= (and b!5024135 (not res!2142184)) b!5024138))

(assert (= start!531034 b!5024139))

(assert (= (and start!531034 condSetEmpty!28838) setIsEmpty!28838))

(assert (= (and start!531034 (not condSetEmpty!28838)) setNonEmpty!28838))

(assert (= setNonEmpty!28838 b!5024134))

(declare-fun m!6059398 () Bool)

(assert (=> b!5024141 m!6059398))

(declare-fun m!6059400 () Bool)

(assert (=> setNonEmpty!28838 m!6059400))

(declare-fun m!6059402 () Bool)

(assert (=> b!5024140 m!6059402))

(declare-fun m!6059404 () Bool)

(assert (=> b!5024140 m!6059404))

(declare-fun m!6059406 () Bool)

(assert (=> b!5024140 m!6059406))

(assert (=> b!5024140 m!6059404))

(assert (=> b!5024140 m!6059402))

(declare-fun m!6059408 () Bool)

(assert (=> b!5024140 m!6059408))

(declare-fun m!6059410 () Bool)

(assert (=> b!5024140 m!6059410))

(declare-fun m!6059412 () Bool)

(assert (=> b!5024140 m!6059412))

(declare-fun m!6059414 () Bool)

(assert (=> b!5024140 m!6059414))

(declare-fun m!6059416 () Bool)

(assert (=> b!5024137 m!6059416))

(declare-fun m!6059418 () Bool)

(assert (=> start!531034 m!6059418))

(declare-fun m!6059420 () Bool)

(assert (=> b!5024139 m!6059420))

(declare-fun m!6059422 () Bool)

(assert (=> b!5024142 m!6059422))

(assert (=> b!5024136 m!6059412))

(assert (=> b!5024136 m!6059412))

(declare-fun m!6059424 () Bool)

(assert (=> b!5024136 m!6059424))

(assert (=> b!5024136 m!6059424))

(declare-fun m!6059426 () Bool)

(assert (=> b!5024136 m!6059426))

(assert (=> b!5024136 m!6059426))

(declare-fun m!6059428 () Bool)

(assert (=> b!5024136 m!6059428))

(declare-fun m!6059430 () Bool)

(assert (=> b!5024138 m!6059430))

(declare-fun m!6059432 () Bool)

(assert (=> b!5024135 m!6059432))

(check-sat (not b!5024142) (not b!5024136) (not b!5024134) (not start!531034) (not b!5024141) (not b!5024139) (not b!5024138) (not b!5024140) (not setNonEmpty!28838) (not b!5024135) (not b!5024137))
(check-sat)
