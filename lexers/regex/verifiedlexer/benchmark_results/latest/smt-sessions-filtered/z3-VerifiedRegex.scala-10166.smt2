; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!531038 () Bool)

(assert start!531038)

(declare-fun setRes!28844 () Bool)

(declare-fun e!3138623 () Bool)

(declare-fun tp!1408510 () Bool)

(declare-datatypes ((C!28064 0))(
  ( (C!28065 (val!23408 Int)) )
))
(declare-datatypes ((Regex!13907 0))(
  ( (ElementMatch!13907 (c!859013 C!28064)) (Concat!22700 (regOne!28326 Regex!13907) (regTwo!28326 Regex!13907)) (EmptyExpr!13907) (Star!13907 (reg!14236 Regex!13907)) (EmptyLang!13907) (Union!13907 (regOne!28327 Regex!13907) (regTwo!28327 Regex!13907)) )
))
(declare-datatypes ((List!58260 0))(
  ( (Nil!58136) (Cons!58136 (h!64584 Regex!13907) (t!370652 List!58260)) )
))
(declare-datatypes ((Context!6664 0))(
  ( (Context!6665 (exprs!3832 List!58260)) )
))
(declare-fun setElem!28844 () Context!6664)

(declare-fun setNonEmpty!28844 () Bool)

(declare-fun inv!76629 (Context!6664) Bool)

(assert (=> setNonEmpty!28844 (= setRes!28844 (and tp!1408510 (inv!76629 setElem!28844) e!3138623))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6664))

(declare-fun setRest!28844 () (InoxSet Context!6664))

(assert (=> setNonEmpty!28844 (= z!4747 ((_ map or) (store ((as const (Array Context!6664 Bool)) false) setElem!28844 true) setRest!28844))))

(declare-fun b!5024178 () Bool)

(declare-fun e!3138619 () Bool)

(declare-datatypes ((List!58261 0))(
  ( (Nil!58137) (Cons!58137 (h!64585 C!28064) (t!370653 List!58261)) )
))
(declare-datatypes ((IArray!30913 0))(
  ( (IArray!30914 (innerList!15514 List!58261)) )
))
(declare-datatypes ((Conc!15426 0))(
  ( (Node!15426 (left!42514 Conc!15426) (right!42844 Conc!15426) (csize!31082 Int) (cheight!15637 Int)) (Leaf!25593 (xs!18752 IArray!30913) (csize!31083 Int)) (Empty!15426) )
))
(declare-datatypes ((BalanceConc!30282 0))(
  ( (BalanceConc!30283 (c!859014 Conc!15426)) )
))
(declare-fun totalInput!1141 () BalanceConc!30282)

(declare-fun tp!1408508 () Bool)

(declare-fun inv!76630 (Conc!15426) Bool)

(assert (=> b!5024178 (= e!3138619 (and (inv!76630 (c!859014 totalInput!1141)) tp!1408508))))

(declare-fun b!5024179 () Bool)

(declare-fun res!2142217 () Bool)

(declare-fun e!3138620 () Bool)

(assert (=> b!5024179 (=> (not res!2142217) (not e!3138620))))

(declare-fun from!1228 () Int)

(declare-fun lt!2079497 () Int)

(assert (=> b!5024179 (= res!2142217 (not (= from!1228 lt!2079497)))))

(declare-fun b!5024180 () Bool)

(assert (=> b!5024180 (= e!3138620 (not true))))

(declare-fun e!3138622 () Bool)

(assert (=> b!5024180 e!3138622))

(declare-fun res!2142218 () Bool)

(assert (=> b!5024180 (=> res!2142218 e!3138622)))

(declare-fun lt!2079495 () Int)

(assert (=> b!5024180 (= res!2142218 (= lt!2079495 0))))

(declare-datatypes ((Unit!149319 0))(
  ( (Unit!149320) )
))
(declare-fun lt!2079498 () Unit!149319)

(declare-fun lt!2079496 () (InoxSet Context!6664))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!104 ((InoxSet Context!6664) Int BalanceConc!30282) Unit!149319)

(assert (=> b!5024180 (= lt!2079498 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!104 lt!2079496 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!221 ((InoxSet Context!6664) Int BalanceConc!30282 Int) Int)

(assert (=> b!5024180 (= lt!2079495 (findLongestMatchInnerZipperFastV2!221 lt!2079496 (+ 1 from!1228) totalInput!1141 lt!2079497))))

(declare-fun derivationStepZipper!703 ((InoxSet Context!6664) C!28064) (InoxSet Context!6664))

(declare-fun apply!14131 (BalanceConc!30282 Int) C!28064)

(assert (=> b!5024180 (= lt!2079496 (derivationStepZipper!703 z!4747 (apply!14131 totalInput!1141 from!1228)))))

(declare-fun b!5024181 () Bool)

(declare-fun matchZipper!661 ((InoxSet Context!6664) List!58261) Bool)

(declare-fun take!758 (List!58261 Int) List!58261)

(declare-fun drop!2558 (List!58261 Int) List!58261)

(declare-fun list!18760 (BalanceConc!30282) List!58261)

(assert (=> b!5024181 (= e!3138622 (matchZipper!661 lt!2079496 (take!758 (drop!2558 (list!18760 totalInput!1141) (+ 1 from!1228)) lt!2079495)))))

(declare-fun setIsEmpty!28844 () Bool)

(assert (=> setIsEmpty!28844 setRes!28844))

(declare-fun b!5024182 () Bool)

(declare-fun e!3138621 () Bool)

(assert (=> b!5024182 (= e!3138621 e!3138620)))

(declare-fun res!2142221 () Bool)

(assert (=> b!5024182 (=> (not res!2142221) (not e!3138620))))

(assert (=> b!5024182 (= res!2142221 (<= from!1228 lt!2079497))))

(declare-fun size!38682 (BalanceConc!30282) Int)

(assert (=> b!5024182 (= lt!2079497 (size!38682 totalInput!1141))))

(declare-fun res!2142220 () Bool)

(assert (=> start!531038 (=> (not res!2142220) (not e!3138621))))

(assert (=> start!531038 (= res!2142220 (>= from!1228 0))))

(assert (=> start!531038 e!3138621))

(assert (=> start!531038 true))

(declare-fun inv!76631 (BalanceConc!30282) Bool)

(assert (=> start!531038 (and (inv!76631 totalInput!1141) e!3138619)))

(declare-fun condSetEmpty!28844 () Bool)

(assert (=> start!531038 (= condSetEmpty!28844 (= z!4747 ((as const (Array Context!6664 Bool)) false)))))

(assert (=> start!531038 setRes!28844))

(declare-fun b!5024183 () Bool)

(declare-fun tp!1408509 () Bool)

(assert (=> b!5024183 (= e!3138623 tp!1408509)))

(declare-fun b!5024184 () Bool)

(declare-fun res!2142219 () Bool)

(assert (=> b!5024184 (=> (not res!2142219) (not e!3138620))))

(declare-fun lostCauseZipper!921 ((InoxSet Context!6664)) Bool)

(assert (=> b!5024184 (= res!2142219 (not (lostCauseZipper!921 z!4747)))))

(assert (= (and start!531038 res!2142220) b!5024182))

(assert (= (and b!5024182 res!2142221) b!5024184))

(assert (= (and b!5024184 res!2142219) b!5024179))

(assert (= (and b!5024179 res!2142217) b!5024180))

(assert (= (and b!5024180 (not res!2142218)) b!5024181))

(assert (= start!531038 b!5024178))

(assert (= (and start!531038 condSetEmpty!28844) setIsEmpty!28844))

(assert (= (and start!531038 (not condSetEmpty!28844)) setNonEmpty!28844))

(assert (= setNonEmpty!28844 b!5024183))

(declare-fun m!6059460 () Bool)

(assert (=> b!5024178 m!6059460))

(declare-fun m!6059462 () Bool)

(assert (=> b!5024180 m!6059462))

(declare-fun m!6059464 () Bool)

(assert (=> b!5024180 m!6059464))

(declare-fun m!6059466 () Bool)

(assert (=> b!5024180 m!6059466))

(assert (=> b!5024180 m!6059466))

(declare-fun m!6059468 () Bool)

(assert (=> b!5024180 m!6059468))

(declare-fun m!6059470 () Bool)

(assert (=> setNonEmpty!28844 m!6059470))

(declare-fun m!6059472 () Bool)

(assert (=> b!5024184 m!6059472))

(declare-fun m!6059474 () Bool)

(assert (=> b!5024181 m!6059474))

(assert (=> b!5024181 m!6059474))

(declare-fun m!6059476 () Bool)

(assert (=> b!5024181 m!6059476))

(assert (=> b!5024181 m!6059476))

(declare-fun m!6059478 () Bool)

(assert (=> b!5024181 m!6059478))

(assert (=> b!5024181 m!6059478))

(declare-fun m!6059480 () Bool)

(assert (=> b!5024181 m!6059480))

(declare-fun m!6059482 () Bool)

(assert (=> start!531038 m!6059482))

(declare-fun m!6059484 () Bool)

(assert (=> b!5024182 m!6059484))

(check-sat (not b!5024181) (not b!5024178) (not b!5024182) (not start!531038) (not b!5024180) (not b!5024184) (not setNonEmpty!28844) (not b!5024183))
(check-sat)
