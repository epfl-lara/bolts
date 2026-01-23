; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530974 () Bool)

(assert start!530974)

(declare-fun b!5023363 () Bool)

(declare-fun e!3138062 () Bool)

(declare-fun e!3138063 () Bool)

(assert (=> b!5023363 (= e!3138062 e!3138063)))

(declare-fun res!2141597 () Bool)

(assert (=> b!5023363 (=> (not res!2141597) (not e!3138063))))

(declare-fun from!1228 () Int)

(declare-fun lt!2078813 () Int)

(assert (=> b!5023363 (= res!2141597 (<= from!1228 lt!2078813))))

(declare-datatypes ((C!28000 0))(
  ( (C!28001 (val!23376 Int)) )
))
(declare-datatypes ((List!58196 0))(
  ( (Nil!58072) (Cons!58072 (h!64520 C!28000) (t!370588 List!58196)) )
))
(declare-datatypes ((IArray!30849 0))(
  ( (IArray!30850 (innerList!15482 List!58196)) )
))
(declare-datatypes ((Conc!15394 0))(
  ( (Node!15394 (left!42466 Conc!15394) (right!42796 Conc!15394) (csize!31018 Int) (cheight!15605 Int)) (Leaf!25545 (xs!18720 IArray!30849) (csize!31019 Int)) (Empty!15394) )
))
(declare-datatypes ((BalanceConc!30218 0))(
  ( (BalanceConc!30219 (c!858949 Conc!15394)) )
))
(declare-fun totalInput!1141 () BalanceConc!30218)

(declare-fun size!38646 (BalanceConc!30218) Int)

(assert (=> b!5023363 (= lt!2078813 (size!38646 totalInput!1141))))

(declare-fun b!5023364 () Bool)

(declare-fun e!3138065 () Bool)

(declare-fun tp!1408221 () Bool)

(declare-fun inv!76485 (Conc!15394) Bool)

(assert (=> b!5023364 (= e!3138065 (and (inv!76485 (c!858949 totalInput!1141)) tp!1408221))))

(declare-fun b!5023365 () Bool)

(declare-fun res!2141596 () Bool)

(assert (=> b!5023365 (=> (not res!2141596) (not e!3138063))))

(assert (=> b!5023365 (= res!2141596 (not (= from!1228 lt!2078813)))))

(declare-fun b!5023366 () Bool)

(assert (=> b!5023366 (= e!3138063 (or (< (+ 1 from!1228) 0) (> (+ 1 from!1228) lt!2078813)))))

(declare-fun lt!2078814 () C!28000)

(declare-fun apply!14085 (BalanceConc!30218 Int) C!28000)

(assert (=> b!5023366 (= lt!2078814 (apply!14085 totalInput!1141 from!1228))))

(declare-fun b!5023367 () Bool)

(declare-fun e!3138064 () Bool)

(declare-fun tp!1408222 () Bool)

(assert (=> b!5023367 (= e!3138064 tp!1408222)))

(declare-fun setIsEmpty!28748 () Bool)

(declare-fun setRes!28748 () Bool)

(assert (=> setIsEmpty!28748 setRes!28748))

(declare-fun res!2141594 () Bool)

(assert (=> start!530974 (=> (not res!2141594) (not e!3138062))))

(assert (=> start!530974 (= res!2141594 (>= from!1228 0))))

(assert (=> start!530974 e!3138062))

(assert (=> start!530974 true))

(declare-fun inv!76486 (BalanceConc!30218) Bool)

(assert (=> start!530974 (and (inv!76486 totalInput!1141) e!3138065)))

(declare-fun condSetEmpty!28748 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13875 0))(
  ( (ElementMatch!13875 (c!858950 C!28000)) (Concat!22668 (regOne!28262 Regex!13875) (regTwo!28262 Regex!13875)) (EmptyExpr!13875) (Star!13875 (reg!14204 Regex!13875)) (EmptyLang!13875) (Union!13875 (regOne!28263 Regex!13875) (regTwo!28263 Regex!13875)) )
))
(declare-datatypes ((List!58197 0))(
  ( (Nil!58073) (Cons!58073 (h!64521 Regex!13875) (t!370589 List!58197)) )
))
(declare-datatypes ((Context!6600 0))(
  ( (Context!6601 (exprs!3800 List!58197)) )
))
(declare-fun z!4747 () (InoxSet Context!6600))

(assert (=> start!530974 (= condSetEmpty!28748 (= z!4747 ((as const (Array Context!6600 Bool)) false)))))

(assert (=> start!530974 setRes!28748))

(declare-fun setNonEmpty!28748 () Bool)

(declare-fun setElem!28748 () Context!6600)

(declare-fun tp!1408220 () Bool)

(declare-fun inv!76487 (Context!6600) Bool)

(assert (=> setNonEmpty!28748 (= setRes!28748 (and tp!1408220 (inv!76487 setElem!28748) e!3138064))))

(declare-fun setRest!28748 () (InoxSet Context!6600))

(assert (=> setNonEmpty!28748 (= z!4747 ((_ map or) (store ((as const (Array Context!6600 Bool)) false) setElem!28748 true) setRest!28748))))

(declare-fun b!5023368 () Bool)

(declare-fun res!2141595 () Bool)

(assert (=> b!5023368 (=> (not res!2141595) (not e!3138063))))

(declare-fun lostCauseZipper!889 ((InoxSet Context!6600)) Bool)

(assert (=> b!5023368 (= res!2141595 (not (lostCauseZipper!889 z!4747)))))

(assert (= (and start!530974 res!2141594) b!5023363))

(assert (= (and b!5023363 res!2141597) b!5023368))

(assert (= (and b!5023368 res!2141595) b!5023365))

(assert (= (and b!5023365 res!2141596) b!5023366))

(assert (= start!530974 b!5023364))

(assert (= (and start!530974 condSetEmpty!28748) setIsEmpty!28748))

(assert (= (and start!530974 (not condSetEmpty!28748)) setNonEmpty!28748))

(assert (= setNonEmpty!28748 b!5023367))

(declare-fun m!6058414 () Bool)

(assert (=> start!530974 m!6058414))

(declare-fun m!6058416 () Bool)

(assert (=> b!5023363 m!6058416))

(declare-fun m!6058418 () Bool)

(assert (=> b!5023366 m!6058418))

(declare-fun m!6058420 () Bool)

(assert (=> setNonEmpty!28748 m!6058420))

(declare-fun m!6058422 () Bool)

(assert (=> b!5023368 m!6058422))

(declare-fun m!6058424 () Bool)

(assert (=> b!5023364 m!6058424))

(check-sat (not b!5023367) (not b!5023363) (not b!5023368) (not setNonEmpty!28748) (not start!530974) (not b!5023364) (not b!5023366))
(check-sat)
