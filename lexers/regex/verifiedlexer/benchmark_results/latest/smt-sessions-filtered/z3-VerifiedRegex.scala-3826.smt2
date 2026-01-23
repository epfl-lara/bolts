; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212554 () Bool)

(assert start!212554)

(declare-fun b!2191788 () Bool)

(declare-fun res!942170 () Bool)

(declare-fun e!1400675 () Bool)

(assert (=> b!2191788 (=> (not res!942170) (not e!1400675))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12384 0))(
  ( (C!12385 (val!7178 Int)) )
))
(declare-datatypes ((Regex!6119 0))(
  ( (ElementMatch!6119 (c!348628 C!12384)) (Concat!10421 (regOne!12750 Regex!6119) (regTwo!12750 Regex!6119)) (EmptyExpr!6119) (Star!6119 (reg!6448 Regex!6119)) (EmptyLang!6119) (Union!6119 (regOne!12751 Regex!6119) (regTwo!12751 Regex!6119)) )
))
(declare-datatypes ((List!25511 0))(
  ( (Nil!25427) (Cons!25427 (h!30828 Regex!6119) (t!198109 List!25511)) )
))
(declare-datatypes ((Context!3378 0))(
  ( (Context!3379 (exprs!2189 List!25511)) )
))
(declare-fun z!3955 () (InoxSet Context!3378))

(declare-fun lostCauseZipper!237 ((InoxSet Context!3378)) Bool)

(assert (=> b!2191788 (= res!942170 (not (lostCauseZipper!237 z!3955)))))

(declare-datatypes ((List!25512 0))(
  ( (Nil!25428) (Cons!25428 (h!30829 C!12384) (t!198110 List!25512)) )
))
(declare-datatypes ((IArray!16515 0))(
  ( (IArray!16516 (innerList!8315 List!25512)) )
))
(declare-datatypes ((Conc!8255 0))(
  ( (Node!8255 (left!19509 Conc!8255) (right!19839 Conc!8255) (csize!16740 Int) (cheight!8466 Int)) (Leaf!12082 (xs!11197 IArray!16515) (csize!16741 Int)) (Empty!8255) )
))
(declare-datatypes ((BalanceConc!16272 0))(
  ( (BalanceConc!16273 (c!348629 Conc!8255)) )
))
(declare-fun totalInput!923 () BalanceConc!16272)

(declare-fun e!1400677 () Bool)

(declare-fun b!2191789 () Bool)

(declare-fun lt!819229 () (InoxSet Context!3378))

(declare-fun from!1114 () Int)

(declare-fun lt!819231 () Int)

(declare-fun matchZipper!219 ((InoxSet Context!3378) List!25512) Bool)

(declare-fun take!311 (List!25512 Int) List!25512)

(declare-fun drop!1321 (List!25512 Int) List!25512)

(declare-fun list!9766 (BalanceConc!16272) List!25512)

(assert (=> b!2191789 (= e!1400677 (matchZipper!219 lt!819229 (take!311 (drop!1321 (list!9766 totalInput!923) (+ 1 from!1114)) lt!819231)))))

(declare-fun res!942168 () Bool)

(declare-fun e!1400673 () Bool)

(assert (=> start!212554 (=> (not res!942168) (not e!1400673))))

(assert (=> start!212554 (= res!942168 (>= from!1114 0))))

(assert (=> start!212554 e!1400673))

(assert (=> start!212554 true))

(declare-fun e!1400674 () Bool)

(declare-fun inv!33936 (BalanceConc!16272) Bool)

(assert (=> start!212554 (and (inv!33936 totalInput!923) e!1400674)))

(declare-fun condSetEmpty!18582 () Bool)

(assert (=> start!212554 (= condSetEmpty!18582 (= z!3955 ((as const (Array Context!3378 Bool)) false)))))

(declare-fun setRes!18582 () Bool)

(assert (=> start!212554 setRes!18582))

(declare-fun b!2191790 () Bool)

(declare-fun e!1400671 () Int)

(assert (=> b!2191790 (= e!1400671 from!1114)))

(declare-fun b!2191791 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2191791 (= e!1400671 lastNullablePos!193)))

(declare-fun b!2191792 () Bool)

(declare-fun e!1400672 () Bool)

(declare-fun tp!683163 () Bool)

(assert (=> b!2191792 (= e!1400672 tp!683163)))

(declare-fun b!2191793 () Bool)

(declare-fun e!1400676 () Bool)

(declare-fun lt!819230 () Int)

(assert (=> b!2191793 (= e!1400676 (and (<= 0 from!1114) (< from!1114 lt!819230)))))

(declare-fun b!2191794 () Bool)

(declare-fun e!1400669 () Bool)

(assert (=> b!2191794 (= e!1400669 (not e!1400676))))

(declare-fun res!942176 () Bool)

(assert (=> b!2191794 (=> res!942176 e!1400676)))

(declare-fun lt!819234 () Bool)

(assert (=> b!2191794 (= res!942176 lt!819234)))

(assert (=> b!2191794 e!1400677))

(declare-fun res!942173 () Bool)

(assert (=> b!2191794 (=> res!942173 e!1400677)))

(assert (=> b!2191794 (= res!942173 lt!819234)))

(assert (=> b!2191794 (= lt!819234 (<= lt!819231 0))))

(declare-fun lt!819236 () Int)

(assert (=> b!2191794 (= lt!819231 (+ 1 (- lt!819236 (+ 1 from!1114))))))

(declare-fun lt!819235 () Int)

(declare-datatypes ((Unit!38541 0))(
  ( (Unit!38542) )
))
(declare-fun lt!819232 () Unit!38541)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!124 ((InoxSet Context!3378) Int BalanceConc!16272 Int) Unit!38541)

(assert (=> b!2191794 (= lt!819232 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!124 lt!819229 (+ 1 from!1114) totalInput!923 lt!819235))))

(declare-fun setIsEmpty!18582 () Bool)

(assert (=> setIsEmpty!18582 setRes!18582))

(declare-fun b!2191795 () Bool)

(declare-fun res!942175 () Bool)

(assert (=> b!2191795 (=> (not res!942175) (not e!1400675))))

(declare-fun e!1400670 () Bool)

(assert (=> b!2191795 (= res!942175 e!1400670)))

(declare-fun res!942174 () Bool)

(assert (=> b!2191795 (=> res!942174 e!1400670)))

(declare-fun nullableZipper!399 ((InoxSet Context!3378)) Bool)

(assert (=> b!2191795 (= res!942174 (not (nullableZipper!399 z!3955)))))

(declare-fun b!2191796 () Bool)

(assert (=> b!2191796 (= e!1400673 e!1400675)))

(declare-fun res!942169 () Bool)

(assert (=> b!2191796 (=> (not res!942169) (not e!1400675))))

(assert (=> b!2191796 (= res!942169 (and (<= from!1114 lt!819230) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19837 (BalanceConc!16272) Int)

(assert (=> b!2191796 (= lt!819230 (size!19837 totalInput!923))))

(declare-fun b!2191797 () Bool)

(declare-fun tp!683164 () Bool)

(declare-fun inv!33937 (Conc!8255) Bool)

(assert (=> b!2191797 (= e!1400674 (and (inv!33937 (c!348629 totalInput!923)) tp!683164))))

(declare-fun b!2191798 () Bool)

(declare-fun res!942177 () Bool)

(assert (=> b!2191798 (=> (not res!942177) (not e!1400675))))

(assert (=> b!2191798 (= res!942177 (not (= from!1114 lt!819230)))))

(declare-fun b!2191799 () Bool)

(assert (=> b!2191799 (= e!1400675 e!1400669)))

(declare-fun res!942171 () Bool)

(assert (=> b!2191799 (=> (not res!942171) (not e!1400669))))

(declare-fun lt!819233 () Int)

(assert (=> b!2191799 (= res!942171 (= lt!819233 lt!819236))))

(declare-fun furthestNullablePosition!289 ((InoxSet Context!3378) Int BalanceConc!16272 Int Int) Int)

(assert (=> b!2191799 (= lt!819236 (furthestNullablePosition!289 lt!819229 (+ 1 from!1114) totalInput!923 lt!819230 lt!819235))))

(assert (=> b!2191799 (= lt!819233 (furthestNullablePosition!289 z!3955 from!1114 totalInput!923 lt!819230 lastNullablePos!193))))

(assert (=> b!2191799 (= lt!819235 e!1400671)))

(declare-fun c!348627 () Bool)

(assert (=> b!2191799 (= c!348627 (nullableZipper!399 lt!819229))))

(declare-fun derivationStepZipper!196 ((InoxSet Context!3378) C!12384) (InoxSet Context!3378))

(declare-fun apply!6158 (BalanceConc!16272 Int) C!12384)

(assert (=> b!2191799 (= lt!819229 (derivationStepZipper!196 z!3955 (apply!6158 totalInput!923 from!1114)))))

(declare-fun setElem!18582 () Context!3378)

(declare-fun tp!683162 () Bool)

(declare-fun setNonEmpty!18582 () Bool)

(declare-fun inv!33938 (Context!3378) Bool)

(assert (=> setNonEmpty!18582 (= setRes!18582 (and tp!683162 (inv!33938 setElem!18582) e!1400672))))

(declare-fun setRest!18582 () (InoxSet Context!3378))

(assert (=> setNonEmpty!18582 (= z!3955 ((_ map or) (store ((as const (Array Context!3378 Bool)) false) setElem!18582 true) setRest!18582))))

(declare-fun b!2191800 () Bool)

(declare-fun res!942172 () Bool)

(assert (=> b!2191800 (=> res!942172 e!1400676)))

(assert (=> b!2191800 (= res!942172 (not (matchZipper!219 lt!819229 (take!311 (drop!1321 (list!9766 totalInput!923) (+ 1 from!1114)) lt!819231))))))

(declare-fun b!2191801 () Bool)

(assert (=> b!2191801 (= e!1400670 (= lastNullablePos!193 (- from!1114 1)))))

(assert (= (and start!212554 res!942168) b!2191796))

(assert (= (and b!2191796 res!942169) b!2191795))

(assert (= (and b!2191795 (not res!942174)) b!2191801))

(assert (= (and b!2191795 res!942175) b!2191798))

(assert (= (and b!2191798 res!942177) b!2191788))

(assert (= (and b!2191788 res!942170) b!2191799))

(assert (= (and b!2191799 c!348627) b!2191790))

(assert (= (and b!2191799 (not c!348627)) b!2191791))

(assert (= (and b!2191799 res!942171) b!2191794))

(assert (= (and b!2191794 (not res!942173)) b!2191789))

(assert (= (and b!2191794 (not res!942176)) b!2191800))

(assert (= (and b!2191800 (not res!942172)) b!2191793))

(assert (= start!212554 b!2191797))

(assert (= (and start!212554 condSetEmpty!18582) setIsEmpty!18582))

(assert (= (and start!212554 (not condSetEmpty!18582)) setNonEmpty!18582))

(assert (= setNonEmpty!18582 b!2191792))

(declare-fun m!2634535 () Bool)

(assert (=> b!2191800 m!2634535))

(assert (=> b!2191800 m!2634535))

(declare-fun m!2634537 () Bool)

(assert (=> b!2191800 m!2634537))

(assert (=> b!2191800 m!2634537))

(declare-fun m!2634539 () Bool)

(assert (=> b!2191800 m!2634539))

(assert (=> b!2191800 m!2634539))

(declare-fun m!2634541 () Bool)

(assert (=> b!2191800 m!2634541))

(declare-fun m!2634543 () Bool)

(assert (=> b!2191797 m!2634543))

(declare-fun m!2634545 () Bool)

(assert (=> b!2191794 m!2634545))

(declare-fun m!2634547 () Bool)

(assert (=> start!212554 m!2634547))

(declare-fun m!2634549 () Bool)

(assert (=> setNonEmpty!18582 m!2634549))

(declare-fun m!2634551 () Bool)

(assert (=> b!2191796 m!2634551))

(declare-fun m!2634553 () Bool)

(assert (=> b!2191799 m!2634553))

(declare-fun m!2634555 () Bool)

(assert (=> b!2191799 m!2634555))

(declare-fun m!2634557 () Bool)

(assert (=> b!2191799 m!2634557))

(assert (=> b!2191799 m!2634557))

(declare-fun m!2634559 () Bool)

(assert (=> b!2191799 m!2634559))

(declare-fun m!2634561 () Bool)

(assert (=> b!2191799 m!2634561))

(assert (=> b!2191789 m!2634535))

(assert (=> b!2191789 m!2634535))

(assert (=> b!2191789 m!2634537))

(assert (=> b!2191789 m!2634537))

(assert (=> b!2191789 m!2634539))

(assert (=> b!2191789 m!2634539))

(assert (=> b!2191789 m!2634541))

(declare-fun m!2634563 () Bool)

(assert (=> b!2191795 m!2634563))

(declare-fun m!2634565 () Bool)

(assert (=> b!2191788 m!2634565))

(check-sat (not start!212554) (not setNonEmpty!18582) (not b!2191794) (not b!2191788) (not b!2191800) (not b!2191799) (not b!2191792) (not b!2191789) (not b!2191797) (not b!2191795) (not b!2191796))
(check-sat)
