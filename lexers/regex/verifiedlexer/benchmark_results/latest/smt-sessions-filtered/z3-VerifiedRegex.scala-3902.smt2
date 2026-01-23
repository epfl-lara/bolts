; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214490 () Bool)

(assert start!214490)

(declare-fun b!2205776 () Bool)

(declare-fun res!948128 () Bool)

(declare-fun e!1409184 () Bool)

(assert (=> b!2205776 (=> (not res!948128) (not e!1409184))))

(declare-datatypes ((C!12688 0))(
  ( (C!12689 (val!7330 Int)) )
))
(declare-datatypes ((List!25846 0))(
  ( (Nil!25762) (Cons!25762 (h!31163 C!12688) (t!198490 List!25846)) )
))
(declare-fun lt!824800 () List!25846)

(declare-fun isEmpty!14735 (List!25846) Bool)

(assert (=> b!2205776 (= res!948128 (isEmpty!14735 lt!824800))))

(declare-fun lastNullablePos!161 () Int)

(declare-datatypes ((IArray!16819 0))(
  ( (IArray!16820 (innerList!8467 List!25846)) )
))
(declare-datatypes ((Conc!8407 0))(
  ( (Node!8407 (left!19797 Conc!8407) (right!20127 Conc!8407) (csize!17044 Int) (cheight!8618 Int)) (Leaf!12310 (xs!11349 IArray!16819) (csize!17045 Int)) (Empty!8407) )
))
(declare-datatypes ((BalanceConc!16576 0))(
  ( (BalanceConc!16577 (c!352256 Conc!8407)) )
))
(declare-fun totalInput!891 () BalanceConc!16576)

(declare-fun lt!824795 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6271 0))(
  ( (ElementMatch!6271 (c!352257 C!12688)) (Concat!10573 (regOne!13054 Regex!6271) (regTwo!13054 Regex!6271)) (EmptyExpr!6271) (Star!6271 (reg!6600 Regex!6271)) (EmptyLang!6271) (Union!6271 (regOne!13055 Regex!6271) (regTwo!13055 Regex!6271)) )
))
(declare-datatypes ((List!25847 0))(
  ( (Nil!25763) (Cons!25763 (h!31164 Regex!6271) (t!198491 List!25847)) )
))
(declare-datatypes ((Context!3682 0))(
  ( (Context!3683 (exprs!2341 List!25847)) )
))
(declare-fun z!3888 () (InoxSet Context!3682))

(declare-fun b!2205777 () Bool)

(declare-fun from!1082 () Int)

(declare-fun furthestNullablePosition!405 ((InoxSet Context!3682) Int BalanceConc!16576 Int Int) Int)

(assert (=> b!2205777 (= e!1409184 (not (= (furthestNullablePosition!405 z!3888 from!1082 totalInput!891 lt!824795 lastNullablePos!161) lastNullablePos!161)))))

(declare-fun b!2205778 () Bool)

(declare-fun res!948123 () Bool)

(assert (=> b!2205778 (=> (not res!948123) (not e!1409184))))

(declare-fun lt!824794 () Bool)

(assert (=> b!2205778 (= res!948123 (and (not lt!824794) (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun b!2205779 () Bool)

(declare-fun e!1409187 () Bool)

(declare-fun e!1409179 () Bool)

(assert (=> b!2205779 (= e!1409187 e!1409179)))

(declare-fun res!948129 () Bool)

(assert (=> b!2205779 (=> (not res!948129) (not e!1409179))))

(declare-fun lt!824799 () List!25846)

(declare-fun matchZipper!357 ((InoxSet Context!3682) List!25846) Bool)

(assert (=> b!2205779 (= res!948129 (matchZipper!357 z!3888 lt!824799))))

(declare-fun knownSize!10 () Int)

(declare-fun take!449 (List!25846 Int) List!25846)

(assert (=> b!2205779 (= lt!824799 (take!449 lt!824800 knownSize!10))))

(declare-fun drop!1459 (List!25846 Int) List!25846)

(declare-fun list!9952 (BalanceConc!16576) List!25846)

(assert (=> b!2205779 (= lt!824800 (drop!1459 (list!9952 totalInput!891) from!1082))))

(declare-fun b!2205780 () Bool)

(declare-fun e!1409186 () Bool)

(declare-fun tp!685852 () Bool)

(declare-fun inv!34735 (Conc!8407) Bool)

(assert (=> b!2205780 (= e!1409186 (and (inv!34735 (c!352256 totalInput!891)) tp!685852))))

(declare-fun res!948125 () Bool)

(declare-fun e!1409183 () Bool)

(assert (=> start!214490 (=> (not res!948125) (not e!1409183))))

(assert (=> start!214490 (= res!948125 (>= from!1082 0))))

(assert (=> start!214490 e!1409183))

(assert (=> start!214490 true))

(declare-fun inv!34736 (BalanceConc!16576) Bool)

(assert (=> start!214490 (and (inv!34736 totalInput!891) e!1409186)))

(declare-fun condSetEmpty!19182 () Bool)

(assert (=> start!214490 (= condSetEmpty!19182 (= z!3888 ((as const (Array Context!3682 Bool)) false)))))

(declare-fun setRes!19182 () Bool)

(assert (=> start!214490 setRes!19182))

(declare-fun b!2205781 () Bool)

(declare-fun e!1409185 () Bool)

(assert (=> b!2205781 (= e!1409179 e!1409185)))

(declare-fun res!948124 () Bool)

(assert (=> b!2205781 (=> (not res!948124) (not e!1409185))))

(assert (=> b!2205781 (= res!948124 (or lt!824794 (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun nullableZipper!551 ((InoxSet Context!3682)) Bool)

(assert (=> b!2205781 (= lt!824794 (not (nullableZipper!551 z!3888)))))

(declare-fun b!2205782 () Bool)

(declare-fun e!1409178 () Bool)

(declare-fun tp!685854 () Bool)

(assert (=> b!2205782 (= e!1409178 tp!685854)))

(declare-fun b!2205783 () Bool)

(declare-fun res!948121 () Bool)

(assert (=> b!2205783 (=> (not res!948121) (not e!1409185))))

(assert (=> b!2205783 (= res!948121 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2205784 () Bool)

(declare-datatypes ((Unit!38847 0))(
  ( (Unit!38848) )
))
(declare-fun e!1409180 () Unit!38847)

(declare-fun Unit!38849 () Unit!38847)

(assert (=> b!2205784 (= e!1409180 Unit!38849)))

(declare-fun b!2205785 () Bool)

(declare-fun e!1409181 () Bool)

(assert (=> b!2205785 (= e!1409181 e!1409184)))

(declare-fun res!948126 () Bool)

(assert (=> b!2205785 (=> (not res!948126) (not e!1409184))))

(declare-fun lt!824796 () Bool)

(declare-fun lt!824797 () Bool)

(assert (=> b!2205785 (= res!948126 (and (not lt!824796) lt!824797))))

(declare-fun lt!824793 () Unit!38847)

(assert (=> b!2205785 (= lt!824793 e!1409180)))

(declare-fun c!352255 () Bool)

(assert (=> b!2205785 (= c!352255 lt!824796)))

(declare-fun lostCauseZipper!367 ((InoxSet Context!3682)) Bool)

(assert (=> b!2205785 (= lt!824796 (lostCauseZipper!367 z!3888))))

(declare-fun b!2205786 () Bool)

(assert (=> b!2205786 (= e!1409185 e!1409181)))

(declare-fun res!948122 () Bool)

(assert (=> b!2205786 (=> (not res!948122) (not e!1409181))))

(declare-fun e!1409182 () Bool)

(assert (=> b!2205786 (= res!948122 e!1409182)))

(declare-fun res!948131 () Bool)

(assert (=> b!2205786 (=> res!948131 e!1409182)))

(assert (=> b!2205786 (= res!948131 lt!824797)))

(assert (=> b!2205786 (= lt!824797 (= from!1082 lt!824795))))

(declare-fun b!2205787 () Bool)

(declare-fun res!948127 () Bool)

(assert (=> b!2205787 (=> (not res!948127) (not e!1409179))))

(assert (=> b!2205787 (= res!948127 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun setIsEmpty!19182 () Bool)

(assert (=> setIsEmpty!19182 setRes!19182))

(declare-fun b!2205788 () Bool)

(declare-fun Unit!38850 () Unit!38847)

(assert (=> b!2205788 (= e!1409180 Unit!38850)))

(declare-fun lt!824798 () Unit!38847)

(declare-fun lemmaLostCauseCannotMatch!39 ((InoxSet Context!3682) List!25846) Unit!38847)

(assert (=> b!2205788 (= lt!824798 (lemmaLostCauseCannotMatch!39 z!3888 lt!824799))))

(assert (=> b!2205788 false))

(declare-fun b!2205789 () Bool)

(declare-fun res!948130 () Bool)

(assert (=> b!2205789 (=> (not res!948130) (not e!1409185))))

(declare-fun isEmpty!14736 (BalanceConc!16576) Bool)

(assert (=> b!2205789 (= res!948130 (not (isEmpty!14736 totalInput!891)))))

(declare-fun b!2205790 () Bool)

(assert (=> b!2205790 (= e!1409182 (lostCauseZipper!367 z!3888))))

(declare-fun b!2205791 () Bool)

(assert (=> b!2205791 (= e!1409183 e!1409187)))

(declare-fun res!948120 () Bool)

(assert (=> b!2205791 (=> (not res!948120) (not e!1409187))))

(assert (=> b!2205791 (= res!948120 (and (<= from!1082 lt!824795) (>= knownSize!10 0) (<= knownSize!10 (- lt!824795 from!1082))))))

(declare-fun size!20074 (BalanceConc!16576) Int)

(assert (=> b!2205791 (= lt!824795 (size!20074 totalInput!891))))

(declare-fun setNonEmpty!19182 () Bool)

(declare-fun setElem!19182 () Context!3682)

(declare-fun tp!685853 () Bool)

(declare-fun inv!34737 (Context!3682) Bool)

(assert (=> setNonEmpty!19182 (= setRes!19182 (and tp!685853 (inv!34737 setElem!19182) e!1409178))))

(declare-fun setRest!19182 () (InoxSet Context!3682))

(assert (=> setNonEmpty!19182 (= z!3888 ((_ map or) (store ((as const (Array Context!3682 Bool)) false) setElem!19182 true) setRest!19182))))

(assert (= (and start!214490 res!948125) b!2205791))

(assert (= (and b!2205791 res!948120) b!2205779))

(assert (= (and b!2205779 res!948129) b!2205787))

(assert (= (and b!2205787 res!948127) b!2205781))

(assert (= (and b!2205781 res!948124) b!2205789))

(assert (= (and b!2205789 res!948130) b!2205783))

(assert (= (and b!2205783 res!948121) b!2205786))

(assert (= (and b!2205786 (not res!948131)) b!2205790))

(assert (= (and b!2205786 res!948122) b!2205785))

(assert (= (and b!2205785 c!352255) b!2205788))

(assert (= (and b!2205785 (not c!352255)) b!2205784))

(assert (= (and b!2205785 res!948126) b!2205776))

(assert (= (and b!2205776 res!948128) b!2205778))

(assert (= (and b!2205778 res!948123) b!2205777))

(assert (= start!214490 b!2205780))

(assert (= (and start!214490 condSetEmpty!19182) setIsEmpty!19182))

(assert (= (and start!214490 (not condSetEmpty!19182)) setNonEmpty!19182))

(assert (= setNonEmpty!19182 b!2205782))

(declare-fun m!2647567 () Bool)

(assert (=> b!2205780 m!2647567))

(declare-fun m!2647569 () Bool)

(assert (=> setNonEmpty!19182 m!2647569))

(declare-fun m!2647571 () Bool)

(assert (=> b!2205791 m!2647571))

(declare-fun m!2647573 () Bool)

(assert (=> b!2205776 m!2647573))

(declare-fun m!2647575 () Bool)

(assert (=> b!2205779 m!2647575))

(declare-fun m!2647577 () Bool)

(assert (=> b!2205779 m!2647577))

(declare-fun m!2647579 () Bool)

(assert (=> b!2205779 m!2647579))

(assert (=> b!2205779 m!2647579))

(declare-fun m!2647581 () Bool)

(assert (=> b!2205779 m!2647581))

(declare-fun m!2647583 () Bool)

(assert (=> b!2205789 m!2647583))

(declare-fun m!2647585 () Bool)

(assert (=> b!2205790 m!2647585))

(declare-fun m!2647587 () Bool)

(assert (=> b!2205788 m!2647587))

(declare-fun m!2647589 () Bool)

(assert (=> b!2205781 m!2647589))

(assert (=> b!2205785 m!2647585))

(declare-fun m!2647591 () Bool)

(assert (=> b!2205777 m!2647591))

(declare-fun m!2647593 () Bool)

(assert (=> start!214490 m!2647593))

(check-sat (not b!2205776) (not b!2205789) (not b!2205791) (not b!2205779) (not b!2205788) (not b!2205780) (not b!2205785) (not b!2205781) (not b!2205790) (not b!2205777) (not b!2205782) (not setNonEmpty!19182) (not start!214490))
(check-sat)
