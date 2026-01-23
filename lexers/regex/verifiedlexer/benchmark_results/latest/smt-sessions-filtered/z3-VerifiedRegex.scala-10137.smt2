; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530562 () Bool)

(assert start!530562)

(declare-fun b!5020706 () Bool)

(declare-fun res!2140758 () Bool)

(declare-fun e!3136477 () Bool)

(assert (=> b!5020706 (=> (not res!2140758) (not e!3136477))))

(declare-fun from!1212 () Int)

(declare-fun lt!2077921 () Int)

(assert (=> b!5020706 (= res!2140758 (not (= from!1212 lt!2077921)))))

(declare-fun res!2140759 () Bool)

(declare-fun e!3136475 () Bool)

(assert (=> start!530562 (=> (not res!2140759) (not e!3136475))))

(assert (=> start!530562 (= res!2140759 (>= from!1212 0))))

(assert (=> start!530562 e!3136475))

(assert (=> start!530562 true))

(declare-datatypes ((C!27968 0))(
  ( (C!27969 (val!23350 Int)) )
))
(declare-datatypes ((List!58150 0))(
  ( (Nil!58026) (Cons!58026 (h!64474 C!27968) (t!370526 List!58150)) )
))
(declare-datatypes ((IArray!30817 0))(
  ( (IArray!30818 (innerList!15466 List!58150)) )
))
(declare-datatypes ((Conc!15378 0))(
  ( (Node!15378 (left!42429 Conc!15378) (right!42759 Conc!15378) (csize!30986 Int) (cheight!15589 Int)) (Leaf!25516 (xs!18704 IArray!30817) (csize!30987 Int)) (Empty!15378) )
))
(declare-datatypes ((BalanceConc!30186 0))(
  ( (BalanceConc!30187 (c!858121 Conc!15378)) )
))
(declare-fun totalInput!1125 () BalanceConc!30186)

(declare-fun e!3136478 () Bool)

(declare-fun inv!76386 (BalanceConc!30186) Bool)

(assert (=> start!530562 (and (inv!76386 totalInput!1125) e!3136478)))

(declare-fun condSetEmpty!28684 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!13859 0))(
  ( (ElementMatch!13859 (c!858122 C!27968)) (Concat!22652 (regOne!28230 Regex!13859) (regTwo!28230 Regex!13859)) (EmptyExpr!13859) (Star!13859 (reg!14188 Regex!13859)) (EmptyLang!13859) (Union!13859 (regOne!28231 Regex!13859) (regTwo!28231 Regex!13859)) )
))
(declare-datatypes ((List!58151 0))(
  ( (Nil!58027) (Cons!58027 (h!64475 Regex!13859) (t!370527 List!58151)) )
))
(declare-datatypes ((Context!6568 0))(
  ( (Context!6569 (exprs!3784 List!58151)) )
))
(declare-fun z!4710 () (InoxSet Context!6568))

(assert (=> start!530562 (= condSetEmpty!28684 (= z!4710 ((as const (Array Context!6568 Bool)) false)))))

(declare-fun setRes!28684 () Bool)

(assert (=> start!530562 setRes!28684))

(declare-fun setIsEmpty!28684 () Bool)

(assert (=> setIsEmpty!28684 setRes!28684))

(declare-fun b!5020707 () Bool)

(declare-fun e!3136476 () Bool)

(assert (=> b!5020707 (= e!3136475 e!3136476)))

(declare-fun res!2140757 () Bool)

(assert (=> b!5020707 (=> (not res!2140757) (not e!3136476))))

(declare-fun knownSize!24 () Int)

(assert (=> b!5020707 (= res!2140757 (and (<= from!1212 lt!2077921) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077921 from!1212))))))

(declare-fun size!38611 (BalanceConc!30186) Int)

(assert (=> b!5020707 (= lt!2077921 (size!38611 totalInput!1125))))

(declare-fun b!5020708 () Bool)

(assert (=> b!5020708 (= e!3136476 e!3136477)))

(declare-fun res!2140756 () Bool)

(assert (=> b!5020708 (=> (not res!2140756) (not e!3136477))))

(declare-fun lt!2077917 () List!58150)

(declare-fun matchZipper!627 ((InoxSet Context!6568) List!58150) Bool)

(assert (=> b!5020708 (= res!2140756 (matchZipper!627 z!4710 lt!2077917))))

(declare-fun lt!2077918 () List!58150)

(declare-fun take!718 (List!58150 Int) List!58150)

(assert (=> b!5020708 (= lt!2077917 (take!718 lt!2077918 knownSize!24))))

(declare-fun lt!2077922 () List!58150)

(declare-fun drop!2522 (List!58150 Int) List!58150)

(assert (=> b!5020708 (= lt!2077918 (drop!2522 lt!2077922 from!1212))))

(declare-fun list!18716 (BalanceConc!30186) List!58150)

(assert (=> b!5020708 (= lt!2077922 (list!18716 totalInput!1125))))

(declare-fun b!5020709 () Bool)

(declare-fun e!3136479 () Bool)

(declare-fun tp!1407823 () Bool)

(assert (=> b!5020709 (= e!3136479 tp!1407823)))

(declare-fun b!5020710 () Bool)

(assert (=> b!5020710 (= e!3136477 (not (and (>= (+ 1 from!1212) 0) (<= (+ 1 from!1212) lt!2077921))))))

(declare-fun lt!2077914 () C!27968)

(declare-fun lt!2077916 () List!58150)

(assert (=> b!5020710 (= (Cons!58026 lt!2077914 (take!718 lt!2077916 (- knownSize!24 1))) (take!718 lt!2077918 (+ 1 (- knownSize!24 1))))))

(declare-datatypes ((Unit!149231 0))(
  ( (Unit!149232) )
))
(declare-fun lt!2077920 () Unit!149231)

(declare-fun lemmaDropTakeAddOneLeft!64 (List!58150 Int Int) Unit!149231)

(assert (=> b!5020710 (= lt!2077920 (lemmaDropTakeAddOneLeft!64 lt!2077922 from!1212 (- knownSize!24 1)))))

(declare-fun lt!2077919 () Int)

(assert (=> b!5020710 (= (Cons!58026 lt!2077914 (take!718 lt!2077916 lt!2077919)) (take!718 lt!2077918 (+ 1 lt!2077919)))))

(assert (=> b!5020710 (= lt!2077916 (drop!2522 lt!2077922 (+ 1 from!1212)))))

(declare-fun apply!14058 (List!58150 Int) C!27968)

(assert (=> b!5020710 (= lt!2077914 (apply!14058 lt!2077922 from!1212))))

(declare-fun lt!2077915 () Unit!149231)

(assert (=> b!5020710 (= lt!2077915 (lemmaDropTakeAddOneLeft!64 lt!2077922 from!1212 lt!2077919))))

(declare-fun findLongestMatchInnerZipperFastV2!181 ((InoxSet Context!6568) Int BalanceConc!30186 Int) Int)

(declare-fun derivationStepZipper!665 ((InoxSet Context!6568) C!27968) (InoxSet Context!6568))

(declare-fun apply!14059 (BalanceConc!30186 Int) C!27968)

(assert (=> b!5020710 (= lt!2077919 (findLongestMatchInnerZipperFastV2!181 (derivationStepZipper!665 z!4710 (apply!14059 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077921))))

(declare-fun b!5020711 () Bool)

(declare-fun res!2140761 () Bool)

(assert (=> b!5020711 (=> (not res!2140761) (not e!3136477))))

(declare-fun lostCauseZipper!873 ((InoxSet Context!6568)) Bool)

(assert (=> b!5020711 (= res!2140761 (not (lostCauseZipper!873 z!4710)))))

(declare-fun setElem!28684 () Context!6568)

(declare-fun setNonEmpty!28684 () Bool)

(declare-fun tp!1407824 () Bool)

(declare-fun inv!76387 (Context!6568) Bool)

(assert (=> setNonEmpty!28684 (= setRes!28684 (and tp!1407824 (inv!76387 setElem!28684) e!3136479))))

(declare-fun setRest!28684 () (InoxSet Context!6568))

(assert (=> setNonEmpty!28684 (= z!4710 ((_ map or) (store ((as const (Array Context!6568 Bool)) false) setElem!28684 true) setRest!28684))))

(declare-fun b!5020712 () Bool)

(declare-fun res!2140755 () Bool)

(assert (=> b!5020712 (=> (not res!2140755) (not e!3136477))))

(assert (=> b!5020712 (= res!2140755 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun b!5020713 () Bool)

(declare-fun res!2140760 () Bool)

(assert (=> b!5020713 (=> (not res!2140760) (not e!3136477))))

(declare-fun size!38612 (List!58150) Int)

(assert (=> b!5020713 (= res!2140760 (= (size!38612 lt!2077917) knownSize!24))))

(declare-fun b!5020714 () Bool)

(declare-fun tp!1407822 () Bool)

(declare-fun inv!76388 (Conc!15378) Bool)

(assert (=> b!5020714 (= e!3136478 (and (inv!76388 (c!858121 totalInput!1125)) tp!1407822))))

(assert (= (and start!530562 res!2140759) b!5020707))

(assert (= (and b!5020707 res!2140757) b!5020708))

(assert (= (and b!5020708 res!2140756) b!5020712))

(assert (= (and b!5020712 res!2140755) b!5020713))

(assert (= (and b!5020713 res!2140760) b!5020711))

(assert (= (and b!5020711 res!2140761) b!5020706))

(assert (= (and b!5020706 res!2140758) b!5020710))

(assert (= start!530562 b!5020714))

(assert (= (and start!530562 condSetEmpty!28684) setIsEmpty!28684))

(assert (= (and start!530562 (not condSetEmpty!28684)) setNonEmpty!28684))

(assert (= setNonEmpty!28684 b!5020709))

(declare-fun m!6055604 () Bool)

(assert (=> b!5020707 m!6055604))

(declare-fun m!6055606 () Bool)

(assert (=> b!5020713 m!6055606))

(declare-fun m!6055608 () Bool)

(assert (=> b!5020711 m!6055608))

(declare-fun m!6055610 () Bool)

(assert (=> b!5020714 m!6055610))

(declare-fun m!6055612 () Bool)

(assert (=> b!5020708 m!6055612))

(declare-fun m!6055614 () Bool)

(assert (=> b!5020708 m!6055614))

(declare-fun m!6055616 () Bool)

(assert (=> b!5020708 m!6055616))

(declare-fun m!6055618 () Bool)

(assert (=> b!5020708 m!6055618))

(declare-fun m!6055620 () Bool)

(assert (=> setNonEmpty!28684 m!6055620))

(declare-fun m!6055622 () Bool)

(assert (=> start!530562 m!6055622))

(declare-fun m!6055624 () Bool)

(assert (=> b!5020710 m!6055624))

(declare-fun m!6055626 () Bool)

(assert (=> b!5020710 m!6055626))

(declare-fun m!6055628 () Bool)

(assert (=> b!5020710 m!6055628))

(assert (=> b!5020710 m!6055624))

(declare-fun m!6055630 () Bool)

(assert (=> b!5020710 m!6055630))

(declare-fun m!6055632 () Bool)

(assert (=> b!5020710 m!6055632))

(declare-fun m!6055634 () Bool)

(assert (=> b!5020710 m!6055634))

(declare-fun m!6055636 () Bool)

(assert (=> b!5020710 m!6055636))

(declare-fun m!6055638 () Bool)

(assert (=> b!5020710 m!6055638))

(assert (=> b!5020710 m!6055626))

(declare-fun m!6055640 () Bool)

(assert (=> b!5020710 m!6055640))

(declare-fun m!6055642 () Bool)

(assert (=> b!5020710 m!6055642))

(declare-fun m!6055644 () Bool)

(assert (=> b!5020710 m!6055644))

(check-sat (not b!5020708) (not b!5020714) (not b!5020711) (not b!5020707) (not setNonEmpty!28684) (not b!5020713) (not start!530562) (not b!5020710) (not b!5020709))
(check-sat)
