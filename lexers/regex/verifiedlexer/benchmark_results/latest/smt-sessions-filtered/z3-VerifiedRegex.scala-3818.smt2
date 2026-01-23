; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212522 () Bool)

(assert start!212522)

(declare-datatypes ((C!12352 0))(
  ( (C!12353 (val!7162 Int)) )
))
(declare-datatypes ((Regex!6103 0))(
  ( (ElementMatch!6103 (c!348518 C!12352)) (Concat!10405 (regOne!12718 Regex!6103) (regTwo!12718 Regex!6103)) (EmptyExpr!6103) (Star!6103 (reg!6432 Regex!6103)) (EmptyLang!6103) (Union!6103 (regOne!12719 Regex!6103) (regTwo!12719 Regex!6103)) )
))
(declare-datatypes ((List!25479 0))(
  ( (Nil!25395) (Cons!25395 (h!30796 Regex!6103) (t!198077 List!25479)) )
))
(declare-datatypes ((Context!3346 0))(
  ( (Context!3347 (exprs!2173 List!25479)) )
))
(declare-fun setElem!18534 () Context!3346)

(declare-fun setNonEmpty!18534 () Bool)

(declare-fun e!1400129 () Bool)

(declare-fun setRes!18534 () Bool)

(declare-fun tp!683020 () Bool)

(declare-fun inv!33864 (Context!3346) Bool)

(assert (=> setNonEmpty!18534 (= setRes!18534 (and tp!683020 (inv!33864 setElem!18534) e!1400129))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3955 () (InoxSet Context!3346))

(declare-fun setRest!18534 () (InoxSet Context!3346))

(assert (=> setNonEmpty!18534 (= z!3955 ((_ map or) (store ((as const (Array Context!3346 Bool)) false) setElem!18534 true) setRest!18534))))

(declare-fun res!941639 () Bool)

(declare-fun e!1400127 () Bool)

(assert (=> start!212522 (=> (not res!941639) (not e!1400127))))

(declare-fun from!1114 () Int)

(assert (=> start!212522 (= res!941639 (>= from!1114 0))))

(assert (=> start!212522 e!1400127))

(assert (=> start!212522 true))

(declare-datatypes ((List!25480 0))(
  ( (Nil!25396) (Cons!25396 (h!30797 C!12352) (t!198078 List!25480)) )
))
(declare-datatypes ((IArray!16483 0))(
  ( (IArray!16484 (innerList!8299 List!25480)) )
))
(declare-datatypes ((Conc!8239 0))(
  ( (Node!8239 (left!19485 Conc!8239) (right!19815 Conc!8239) (csize!16708 Int) (cheight!8450 Int)) (Leaf!12058 (xs!11181 IArray!16483) (csize!16709 Int)) (Empty!8239) )
))
(declare-datatypes ((BalanceConc!16240 0))(
  ( (BalanceConc!16241 (c!348519 Conc!8239)) )
))
(declare-fun totalInput!923 () BalanceConc!16240)

(declare-fun e!1400128 () Bool)

(declare-fun inv!33865 (BalanceConc!16240) Bool)

(assert (=> start!212522 (and (inv!33865 totalInput!923) e!1400128)))

(declare-fun condSetEmpty!18534 () Bool)

(assert (=> start!212522 (= condSetEmpty!18534 (= z!3955 ((as const (Array Context!3346 Bool)) false)))))

(assert (=> start!212522 setRes!18534))

(declare-fun b!2191006 () Bool)

(declare-fun res!941640 () Bool)

(declare-fun e!1400125 () Bool)

(assert (=> b!2191006 (=> (not res!941640) (not e!1400125))))

(declare-fun e!1400131 () Bool)

(assert (=> b!2191006 (= res!941640 e!1400131)))

(declare-fun res!941642 () Bool)

(assert (=> b!2191006 (=> res!941642 e!1400131)))

(declare-fun nullableZipper!383 ((InoxSet Context!3346)) Bool)

(assert (=> b!2191006 (= res!941642 (not (nullableZipper!383 z!3955)))))

(declare-fun b!2191007 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191007 (= e!1400131 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setIsEmpty!18534 () Bool)

(assert (=> setIsEmpty!18534 setRes!18534))

(declare-fun b!2191008 () Bool)

(declare-fun tp!683019 () Bool)

(declare-fun inv!33866 (Conc!8239) Bool)

(assert (=> b!2191008 (= e!1400128 (and (inv!33866 (c!348519 totalInput!923)) tp!683019))))

(declare-fun b!2191009 () Bool)

(declare-fun res!941638 () Bool)

(assert (=> b!2191009 (=> (not res!941638) (not e!1400125))))

(declare-fun lostCauseZipper!221 ((InoxSet Context!3346)) Bool)

(assert (=> b!2191009 (= res!941638 (not (lostCauseZipper!221 z!3955)))))

(declare-fun b!2191010 () Bool)

(declare-fun res!941641 () Bool)

(assert (=> b!2191010 (=> (not res!941641) (not e!1400125))))

(declare-fun lt!818746 () Int)

(assert (=> b!2191010 (= res!941641 (not (= from!1114 lt!818746)))))

(declare-fun b!2191011 () Bool)

(declare-fun tp!683018 () Bool)

(assert (=> b!2191011 (= e!1400129 tp!683018)))

(declare-fun b!2191012 () Bool)

(assert (=> b!2191012 (= e!1400127 e!1400125)))

(declare-fun res!941643 () Bool)

(assert (=> b!2191012 (=> (not res!941643) (not e!1400125))))

(assert (=> b!2191012 (= res!941643 (and (<= from!1114 lt!818746) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19819 (BalanceConc!16240) Int)

(assert (=> b!2191012 (= lt!818746 (size!19819 totalInput!923))))

(declare-fun lt!818749 () Int)

(declare-fun lt!818748 () Bool)

(declare-fun e!1400130 () Bool)

(declare-fun lt!818743 () Int)

(declare-fun b!2191013 () Bool)

(declare-fun lt!818747 () Int)

(assert (=> b!2191013 (= e!1400130 (not (or (> lt!818747 0) (> lt!818749 from!1114) (< lt!818749 lt!818743) (< lt!818743 lastNullablePos!193) (> lt!818743 from!1114) (let ((bdg!82351 (= lt!818743 from!1114))) (or (and (not bdg!82351) (not (= lt!818743 lastNullablePos!193))) (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818746) (< lt!818743 (- 1)) (>= lt!818743 (+ 1 from!1114)) (not lt!818748) bdg!82351)))))))

(declare-fun e!1400126 () Bool)

(assert (=> b!2191013 e!1400126))

(declare-fun res!941636 () Bool)

(assert (=> b!2191013 (=> res!941636 e!1400126)))

(assert (=> b!2191013 (= res!941636 (<= lt!818747 0))))

(assert (=> b!2191013 (= lt!818747 (+ 1 (- lt!818749 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38501 0))(
  ( (Unit!38502) )
))
(declare-fun lt!818750 () Unit!38501)

(declare-fun lt!818745 () (InoxSet Context!3346))

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!108 ((InoxSet Context!3346) Int BalanceConc!16240 Int) Unit!38501)

(assert (=> b!2191013 (= lt!818750 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!108 lt!818745 (+ 1 from!1114) totalInput!923 lt!818743))))

(declare-fun b!2191014 () Bool)

(declare-fun matchZipper!203 ((InoxSet Context!3346) List!25480) Bool)

(declare-fun take!295 (List!25480 Int) List!25480)

(declare-fun drop!1305 (List!25480 Int) List!25480)

(declare-fun list!9750 (BalanceConc!16240) List!25480)

(assert (=> b!2191014 (= e!1400126 (matchZipper!203 lt!818745 (take!295 (drop!1305 (list!9750 totalInput!923) (+ 1 from!1114)) lt!818747)))))

(declare-fun b!2191015 () Bool)

(assert (=> b!2191015 (= e!1400125 e!1400130)))

(declare-fun res!941637 () Bool)

(assert (=> b!2191015 (=> (not res!941637) (not e!1400130))))

(declare-fun lt!818744 () Int)

(assert (=> b!2191015 (= res!941637 (= lt!818744 lt!818749))))

(declare-fun furthestNullablePosition!273 ((InoxSet Context!3346) Int BalanceConc!16240 Int Int) Int)

(assert (=> b!2191015 (= lt!818749 (furthestNullablePosition!273 lt!818745 (+ 1 from!1114) totalInput!923 lt!818746 lt!818743))))

(assert (=> b!2191015 (= lt!818744 (furthestNullablePosition!273 z!3955 from!1114 totalInput!923 lt!818746 lastNullablePos!193))))

(assert (=> b!2191015 (= lt!818743 (ite lt!818748 from!1114 lastNullablePos!193))))

(assert (=> b!2191015 (= lt!818748 (nullableZipper!383 lt!818745))))

(declare-fun derivationStepZipper!180 ((InoxSet Context!3346) C!12352) (InoxSet Context!3346))

(declare-fun apply!6136 (BalanceConc!16240 Int) C!12352)

(assert (=> b!2191015 (= lt!818745 (derivationStepZipper!180 z!3955 (apply!6136 totalInput!923 from!1114)))))

(assert (= (and start!212522 res!941639) b!2191012))

(assert (= (and b!2191012 res!941643) b!2191006))

(assert (= (and b!2191006 (not res!941642)) b!2191007))

(assert (= (and b!2191006 res!941640) b!2191010))

(assert (= (and b!2191010 res!941641) b!2191009))

(assert (= (and b!2191009 res!941638) b!2191015))

(assert (= (and b!2191015 res!941637) b!2191013))

(assert (= (and b!2191013 (not res!941636)) b!2191014))

(assert (= start!212522 b!2191008))

(assert (= (and start!212522 condSetEmpty!18534) setIsEmpty!18534))

(assert (= (and start!212522 (not condSetEmpty!18534)) setNonEmpty!18534))

(assert (= setNonEmpty!18534 b!2191011))

(declare-fun m!2633859 () Bool)

(assert (=> b!2191014 m!2633859))

(assert (=> b!2191014 m!2633859))

(declare-fun m!2633861 () Bool)

(assert (=> b!2191014 m!2633861))

(assert (=> b!2191014 m!2633861))

(declare-fun m!2633863 () Bool)

(assert (=> b!2191014 m!2633863))

(assert (=> b!2191014 m!2633863))

(declare-fun m!2633865 () Bool)

(assert (=> b!2191014 m!2633865))

(declare-fun m!2633867 () Bool)

(assert (=> b!2191015 m!2633867))

(declare-fun m!2633869 () Bool)

(assert (=> b!2191015 m!2633869))

(declare-fun m!2633871 () Bool)

(assert (=> b!2191015 m!2633871))

(declare-fun m!2633873 () Bool)

(assert (=> b!2191015 m!2633873))

(assert (=> b!2191015 m!2633871))

(declare-fun m!2633875 () Bool)

(assert (=> b!2191015 m!2633875))

(declare-fun m!2633877 () Bool)

(assert (=> b!2191009 m!2633877))

(declare-fun m!2633879 () Bool)

(assert (=> start!212522 m!2633879))

(declare-fun m!2633881 () Bool)

(assert (=> b!2191006 m!2633881))

(declare-fun m!2633883 () Bool)

(assert (=> setNonEmpty!18534 m!2633883))

(declare-fun m!2633885 () Bool)

(assert (=> b!2191012 m!2633885))

(declare-fun m!2633887 () Bool)

(assert (=> b!2191008 m!2633887))

(declare-fun m!2633889 () Bool)

(assert (=> b!2191013 m!2633889))

(check-sat (not b!2191009) (not b!2191008) (not b!2191013) (not start!212522) (not b!2191015) (not b!2191014) (not b!2191012) (not setNonEmpty!18534) (not b!2191011) (not b!2191006))
(check-sat)
