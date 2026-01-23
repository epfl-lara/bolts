; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530994 () Bool)

(assert start!530994)

(declare-fun setRes!28778 () Bool)

(declare-fun setNonEmpty!28778 () Bool)

(declare-datatypes ((C!28020 0))(
  ( (C!28021 (val!23386 Int)) )
))
(declare-datatypes ((Regex!13885 0))(
  ( (ElementMatch!13885 (c!858969 C!28020)) (Concat!22678 (regOne!28282 Regex!13885) (regTwo!28282 Regex!13885)) (EmptyExpr!13885) (Star!13885 (reg!14214 Regex!13885)) (EmptyLang!13885) (Union!13885 (regOne!28283 Regex!13885) (regTwo!28283 Regex!13885)) )
))
(declare-datatypes ((List!58216 0))(
  ( (Nil!58092) (Cons!58092 (h!64540 Regex!13885) (t!370608 List!58216)) )
))
(declare-datatypes ((Context!6620 0))(
  ( (Context!6621 (exprs!3810 List!58216)) )
))
(declare-fun setElem!28778 () Context!6620)

(declare-fun tp!1408311 () Bool)

(declare-fun e!3138200 () Bool)

(declare-fun inv!76530 (Context!6620) Bool)

(assert (=> setNonEmpty!28778 (= setRes!28778 (and tp!1408311 (inv!76530 setElem!28778) e!3138200))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4747 () (InoxSet Context!6620))

(declare-fun setRest!28778 () (InoxSet Context!6620))

(assert (=> setNonEmpty!28778 (= z!4747 ((_ map or) (store ((as const (Array Context!6620 Bool)) false) setElem!28778 true) setRest!28778))))

(declare-fun setIsEmpty!28778 () Bool)

(assert (=> setIsEmpty!28778 setRes!28778))

(declare-fun b!5023559 () Bool)

(declare-fun res!2141734 () Bool)

(declare-fun e!3138203 () Bool)

(assert (=> b!5023559 (=> (not res!2141734) (not e!3138203))))

(declare-fun lostCauseZipper!899 ((InoxSet Context!6620)) Bool)

(assert (=> b!5023559 (= res!2141734 (not (lostCauseZipper!899 z!4747)))))

(declare-fun b!5023560 () Bool)

(declare-fun e!3138199 () Bool)

(declare-datatypes ((List!58217 0))(
  ( (Nil!58093) (Cons!58093 (h!64541 C!28020) (t!370609 List!58217)) )
))
(declare-datatypes ((IArray!30869 0))(
  ( (IArray!30870 (innerList!15492 List!58217)) )
))
(declare-datatypes ((Conc!15404 0))(
  ( (Node!15404 (left!42481 Conc!15404) (right!42811 Conc!15404) (csize!31038 Int) (cheight!15615 Int)) (Leaf!25560 (xs!18730 IArray!30869) (csize!31039 Int)) (Empty!15404) )
))
(declare-datatypes ((BalanceConc!30238 0))(
  ( (BalanceConc!30239 (c!858970 Conc!15404)) )
))
(declare-fun totalInput!1141 () BalanceConc!30238)

(declare-fun tp!1408312 () Bool)

(declare-fun inv!76531 (Conc!15404) Bool)

(assert (=> b!5023560 (= e!3138199 (and (inv!76531 (c!858970 totalInput!1141)) tp!1408312))))

(declare-fun b!5023561 () Bool)

(declare-fun e!3138198 () Bool)

(assert (=> b!5023561 (= e!3138198 e!3138203)))

(declare-fun res!2141732 () Bool)

(assert (=> b!5023561 (=> (not res!2141732) (not e!3138203))))

(declare-fun from!1228 () Int)

(declare-fun lt!2078921 () Int)

(assert (=> b!5023561 (= res!2141732 (<= from!1228 lt!2078921))))

(declare-fun size!38657 (BalanceConc!30238) Int)

(assert (=> b!5023561 (= lt!2078921 (size!38657 totalInput!1141))))

(declare-fun b!5023562 () Bool)

(declare-fun lt!2078928 () (InoxSet Context!6620))

(declare-fun e!3138202 () Bool)

(declare-fun lt!2078922 () Int)

(declare-fun matchZipper!639 ((InoxSet Context!6620) List!58217) Bool)

(declare-fun take!736 (List!58217 Int) List!58217)

(declare-fun drop!2536 (List!58217 Int) List!58217)

(declare-fun list!18738 (BalanceConc!30238) List!58217)

(assert (=> b!5023562 (= e!3138202 (matchZipper!639 lt!2078928 (take!736 (drop!2536 (list!18738 totalInput!1141) (+ 1 from!1228)) lt!2078922)))))

(declare-fun b!5023563 () Bool)

(declare-fun tp!1408310 () Bool)

(assert (=> b!5023563 (= e!3138200 tp!1408310)))

(declare-fun b!5023564 () Bool)

(declare-fun e!3138201 () Bool)

(assert (=> b!5023564 (= e!3138203 (not e!3138201))))

(declare-fun res!2141735 () Bool)

(assert (=> b!5023564 (=> res!2141735 e!3138201)))

(assert (=> b!5023564 (= res!2141735 (<= lt!2078922 0))))

(declare-fun lt!2078923 () List!58217)

(declare-fun lt!2078925 () List!58217)

(assert (=> b!5023564 (= lt!2078923 (take!736 (drop!2536 lt!2078925 (+ 1 from!1228)) lt!2078922))))

(assert (=> b!5023564 (= lt!2078925 (list!18738 totalInput!1141))))

(assert (=> b!5023564 e!3138202))

(declare-fun res!2141730 () Bool)

(assert (=> b!5023564 (=> res!2141730 e!3138202)))

(assert (=> b!5023564 (= res!2141730 (= lt!2078922 0))))

(declare-datatypes ((Unit!149275 0))(
  ( (Unit!149276) )
))
(declare-fun lt!2078926 () Unit!149275)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV2!82 ((InoxSet Context!6620) Int BalanceConc!30238) Unit!149275)

(assert (=> b!5023564 (= lt!2078926 (longestMatchIsAcceptedByMatchOrIsEmptyRecV2!82 lt!2078928 (+ 1 from!1228) totalInput!1141))))

(declare-fun findLongestMatchInnerZipperFastV2!199 ((InoxSet Context!6620) Int BalanceConc!30238 Int) Int)

(assert (=> b!5023564 (= lt!2078922 (findLongestMatchInnerZipperFastV2!199 lt!2078928 (+ 1 from!1228) totalInput!1141 lt!2078921))))

(declare-fun derivationStepZipper!681 ((InoxSet Context!6620) C!28020) (InoxSet Context!6620))

(declare-fun apply!14095 (BalanceConc!30238 Int) C!28020)

(assert (=> b!5023564 (= lt!2078928 (derivationStepZipper!681 z!4747 (apply!14095 totalInput!1141 from!1228)))))

(declare-fun b!5023565 () Bool)

(declare-fun res!2141731 () Bool)

(assert (=> b!5023565 (=> (not res!2141731) (not e!3138203))))

(assert (=> b!5023565 (= res!2141731 (not (= from!1228 lt!2078921)))))

(declare-fun b!5023566 () Bool)

(assert (=> b!5023566 (= e!3138201 true)))

(declare-fun lt!2078927 () Int)

(declare-fun size!38658 (List!58217) Int)

(assert (=> b!5023566 (= lt!2078927 (size!38658 lt!2078925))))

(declare-fun lt!2078924 () List!58217)

(assert (=> b!5023566 (= lt!2078924 (take!736 (drop!2536 lt!2078925 from!1228) (+ 1 lt!2078922)))))

(declare-fun res!2141733 () Bool)

(assert (=> start!530994 (=> (not res!2141733) (not e!3138198))))

(assert (=> start!530994 (= res!2141733 (>= from!1228 0))))

(assert (=> start!530994 e!3138198))

(assert (=> start!530994 true))

(declare-fun inv!76532 (BalanceConc!30238) Bool)

(assert (=> start!530994 (and (inv!76532 totalInput!1141) e!3138199)))

(declare-fun condSetEmpty!28778 () Bool)

(assert (=> start!530994 (= condSetEmpty!28778 (= z!4747 ((as const (Array Context!6620 Bool)) false)))))

(assert (=> start!530994 setRes!28778))

(assert (= (and start!530994 res!2141733) b!5023561))

(assert (= (and b!5023561 res!2141732) b!5023559))

(assert (= (and b!5023559 res!2141734) b!5023565))

(assert (= (and b!5023565 res!2141731) b!5023564))

(assert (= (and b!5023564 (not res!2141730)) b!5023562))

(assert (= (and b!5023564 (not res!2141735)) b!5023566))

(assert (= start!530994 b!5023560))

(assert (= (and start!530994 condSetEmpty!28778) setIsEmpty!28778))

(assert (= (and start!530994 (not condSetEmpty!28778)) setNonEmpty!28778))

(assert (= setNonEmpty!28778 b!5023563))

(declare-fun m!6058602 () Bool)

(assert (=> b!5023561 m!6058602))

(declare-fun m!6058604 () Bool)

(assert (=> b!5023564 m!6058604))

(declare-fun m!6058606 () Bool)

(assert (=> b!5023564 m!6058606))

(assert (=> b!5023564 m!6058604))

(declare-fun m!6058608 () Bool)

(assert (=> b!5023564 m!6058608))

(declare-fun m!6058610 () Bool)

(assert (=> b!5023564 m!6058610))

(declare-fun m!6058612 () Bool)

(assert (=> b!5023564 m!6058612))

(assert (=> b!5023564 m!6058606))

(declare-fun m!6058614 () Bool)

(assert (=> b!5023564 m!6058614))

(declare-fun m!6058616 () Bool)

(assert (=> b!5023564 m!6058616))

(declare-fun m!6058618 () Bool)

(assert (=> start!530994 m!6058618))

(declare-fun m!6058620 () Bool)

(assert (=> b!5023566 m!6058620))

(declare-fun m!6058622 () Bool)

(assert (=> b!5023566 m!6058622))

(assert (=> b!5023566 m!6058622))

(declare-fun m!6058624 () Bool)

(assert (=> b!5023566 m!6058624))

(declare-fun m!6058626 () Bool)

(assert (=> b!5023560 m!6058626))

(declare-fun m!6058628 () Bool)

(assert (=> setNonEmpty!28778 m!6058628))

(declare-fun m!6058630 () Bool)

(assert (=> b!5023559 m!6058630))

(assert (=> b!5023562 m!6058612))

(assert (=> b!5023562 m!6058612))

(declare-fun m!6058632 () Bool)

(assert (=> b!5023562 m!6058632))

(assert (=> b!5023562 m!6058632))

(declare-fun m!6058634 () Bool)

(assert (=> b!5023562 m!6058634))

(assert (=> b!5023562 m!6058634))

(declare-fun m!6058636 () Bool)

(assert (=> b!5023562 m!6058636))

(check-sat (not b!5023564) (not setNonEmpty!28778) (not b!5023562) (not b!5023559) (not b!5023560) (not b!5023566) (not start!530994) (not b!5023563) (not b!5023561))
(check-sat)
