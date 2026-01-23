; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!530218 () Bool)

(assert start!530218)

(declare-fun b!5018560 () Bool)

(declare-fun res!2140078 () Bool)

(declare-fun e!3135178 () Bool)

(assert (=> b!5018560 (=> (not res!2140078) (not e!3135178))))

(declare-datatypes ((C!27920 0))(
  ( (C!27921 (val!23326 Int)) )
))
(declare-datatypes ((List!58094 0))(
  ( (Nil!57970) (Cons!57970 (h!64418 C!27920) (t!370470 List!58094)) )
))
(declare-fun lt!2077042 () List!58094)

(declare-fun knownSize!24 () Int)

(declare-fun size!38554 (List!58094) Int)

(assert (=> b!5018560 (= res!2140078 (= (size!38554 lt!2077042) knownSize!24))))

(declare-fun b!5018561 () Bool)

(declare-fun res!2140077 () Bool)

(assert (=> b!5018561 (=> (not res!2140077) (not e!3135178))))

(declare-fun from!1212 () Int)

(declare-fun lt!2077043 () Int)

(assert (=> b!5018561 (= res!2140077 (not (= from!1212 lt!2077043)))))

(declare-fun b!5018562 () Bool)

(declare-fun e!3135181 () Bool)

(declare-fun tp!1407356 () Bool)

(assert (=> b!5018562 (= e!3135181 tp!1407356)))

(declare-fun setNonEmpty!28576 () Bool)

(declare-fun setRes!28576 () Bool)

(declare-fun tp!1407355 () Bool)

(declare-datatypes ((Regex!13835 0))(
  ( (ElementMatch!13835 (c!857465 C!27920)) (Concat!22628 (regOne!28182 Regex!13835) (regTwo!28182 Regex!13835)) (EmptyExpr!13835) (Star!13835 (reg!14164 Regex!13835)) (EmptyLang!13835) (Union!13835 (regOne!28183 Regex!13835) (regTwo!28183 Regex!13835)) )
))
(declare-datatypes ((List!58095 0))(
  ( (Nil!57971) (Cons!57971 (h!64419 Regex!13835) (t!370471 List!58095)) )
))
(declare-datatypes ((Context!6520 0))(
  ( (Context!6521 (exprs!3760 List!58095)) )
))
(declare-fun setElem!28576 () Context!6520)

(declare-fun inv!76245 (Context!6520) Bool)

(assert (=> setNonEmpty!28576 (= setRes!28576 (and tp!1407355 (inv!76245 setElem!28576) e!3135181))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!4710 () (InoxSet Context!6520))

(declare-fun setRest!28576 () (InoxSet Context!6520))

(assert (=> setNonEmpty!28576 (= z!4710 ((_ map or) (store ((as const (Array Context!6520 Bool)) false) setElem!28576 true) setRest!28576))))

(declare-fun b!5018563 () Bool)

(declare-fun e!3135177 () Bool)

(declare-fun e!3135179 () Bool)

(assert (=> b!5018563 (= e!3135177 e!3135179)))

(declare-fun res!2140081 () Bool)

(assert (=> b!5018563 (=> (not res!2140081) (not e!3135179))))

(assert (=> b!5018563 (= res!2140081 (and (<= from!1212 lt!2077043) (>= knownSize!24 0) (<= knownSize!24 (- lt!2077043 from!1212))))))

(declare-datatypes ((IArray!30769 0))(
  ( (IArray!30770 (innerList!15442 List!58094)) )
))
(declare-datatypes ((Conc!15354 0))(
  ( (Node!15354 (left!42377 Conc!15354) (right!42707 Conc!15354) (csize!30938 Int) (cheight!15565 Int)) (Leaf!25480 (xs!18680 IArray!30769) (csize!30939 Int)) (Empty!15354) )
))
(declare-datatypes ((BalanceConc!30138 0))(
  ( (BalanceConc!30139 (c!857466 Conc!15354)) )
))
(declare-fun totalInput!1125 () BalanceConc!30138)

(declare-fun size!38555 (BalanceConc!30138) Int)

(assert (=> b!5018563 (= lt!2077043 (size!38555 totalInput!1125))))

(declare-fun b!5018564 () Bool)

(assert (=> b!5018564 (= e!3135179 e!3135178)))

(declare-fun res!2140083 () Bool)

(assert (=> b!5018564 (=> (not res!2140083) (not e!3135178))))

(declare-fun matchZipper!603 ((InoxSet Context!6520) List!58094) Bool)

(assert (=> b!5018564 (= res!2140083 (matchZipper!603 z!4710 lt!2077042))))

(declare-fun lt!2077040 () List!58094)

(declare-fun take!694 (List!58094 Int) List!58094)

(assert (=> b!5018564 (= lt!2077042 (take!694 lt!2077040 knownSize!24))))

(declare-fun lt!2077044 () List!58094)

(declare-fun drop!2498 (List!58094 Int) List!58094)

(assert (=> b!5018564 (= lt!2077040 (drop!2498 lt!2077044 from!1212))))

(declare-fun list!18682 (BalanceConc!30138) List!58094)

(assert (=> b!5018564 (= lt!2077044 (list!18682 totalInput!1125))))

(declare-fun b!5018565 () Bool)

(declare-fun res!2140080 () Bool)

(assert (=> b!5018565 (=> (not res!2140080) (not e!3135178))))

(declare-fun lostCauseZipper!854 ((InoxSet Context!6520)) Bool)

(assert (=> b!5018565 (= res!2140080 (not (lostCauseZipper!854 z!4710)))))

(declare-fun b!5018566 () Bool)

(declare-fun e!3135180 () Bool)

(declare-fun tp!1407354 () Bool)

(declare-fun inv!76246 (Conc!15354) Bool)

(assert (=> b!5018566 (= e!3135180 (and (inv!76246 (c!857466 totalInput!1125)) tp!1407354))))

(declare-fun b!5018567 () Bool)

(declare-fun res!2140079 () Bool)

(assert (=> b!5018567 (=> (not res!2140079) (not e!3135178))))

(assert (=> b!5018567 (= res!2140079 (and (not (= knownSize!24 0)) (> knownSize!24 0)))))

(declare-fun setIsEmpty!28576 () Bool)

(assert (=> setIsEmpty!28576 setRes!28576))

(declare-fun res!2140082 () Bool)

(assert (=> start!530218 (=> (not res!2140082) (not e!3135177))))

(assert (=> start!530218 (= res!2140082 (>= from!1212 0))))

(assert (=> start!530218 e!3135177))

(assert (=> start!530218 true))

(declare-fun inv!76247 (BalanceConc!30138) Bool)

(assert (=> start!530218 (and (inv!76247 totalInput!1125) e!3135180)))

(declare-fun condSetEmpty!28576 () Bool)

(assert (=> start!530218 (= condSetEmpty!28576 (= z!4710 ((as const (Array Context!6520 Bool)) false)))))

(assert (=> start!530218 setRes!28576))

(declare-fun b!5018568 () Bool)

(assert (=> b!5018568 (= e!3135178 (not true))))

(declare-fun lt!2077039 () Int)

(assert (=> b!5018568 (= lt!2077039 (size!38554 lt!2077044))))

(declare-fun lt!2077038 () Int)

(declare-fun apply!14023 (List!58094 Int) C!27920)

(assert (=> b!5018568 (= (Cons!57970 (apply!14023 lt!2077044 from!1212) (take!694 (drop!2498 lt!2077044 (+ 1 from!1212)) lt!2077038)) (take!694 lt!2077040 (+ 1 lt!2077038)))))

(declare-datatypes ((Unit!149183 0))(
  ( (Unit!149184) )
))
(declare-fun lt!2077041 () Unit!149183)

(declare-fun lemmaDropTakeAddOneLeft!54 (List!58094 Int Int) Unit!149183)

(assert (=> b!5018568 (= lt!2077041 (lemmaDropTakeAddOneLeft!54 lt!2077044 from!1212 lt!2077038))))

(declare-fun findLongestMatchInnerZipperFastV2!163 ((InoxSet Context!6520) Int BalanceConc!30138 Int) Int)

(declare-fun derivationStepZipper!647 ((InoxSet Context!6520) C!27920) (InoxSet Context!6520))

(declare-fun apply!14024 (BalanceConc!30138 Int) C!27920)

(assert (=> b!5018568 (= lt!2077038 (findLongestMatchInnerZipperFastV2!163 (derivationStepZipper!647 z!4710 (apply!14024 totalInput!1125 from!1212)) (+ 1 from!1212) totalInput!1125 lt!2077043))))

(assert (= (and start!530218 res!2140082) b!5018563))

(assert (= (and b!5018563 res!2140081) b!5018564))

(assert (= (and b!5018564 res!2140083) b!5018567))

(assert (= (and b!5018567 res!2140079) b!5018560))

(assert (= (and b!5018560 res!2140078) b!5018565))

(assert (= (and b!5018565 res!2140080) b!5018561))

(assert (= (and b!5018561 res!2140077) b!5018568))

(assert (= start!530218 b!5018566))

(assert (= (and start!530218 condSetEmpty!28576) setIsEmpty!28576))

(assert (= (and start!530218 (not condSetEmpty!28576)) setNonEmpty!28576))

(assert (= setNonEmpty!28576 b!5018562))

(declare-fun m!6053816 () Bool)

(assert (=> b!5018563 m!6053816))

(declare-fun m!6053818 () Bool)

(assert (=> b!5018565 m!6053818))

(declare-fun m!6053820 () Bool)

(assert (=> b!5018568 m!6053820))

(declare-fun m!6053822 () Bool)

(assert (=> b!5018568 m!6053822))

(declare-fun m!6053824 () Bool)

(assert (=> b!5018568 m!6053824))

(declare-fun m!6053826 () Bool)

(assert (=> b!5018568 m!6053826))

(declare-fun m!6053828 () Bool)

(assert (=> b!5018568 m!6053828))

(declare-fun m!6053830 () Bool)

(assert (=> b!5018568 m!6053830))

(assert (=> b!5018568 m!6053826))

(assert (=> b!5018568 m!6053822))

(declare-fun m!6053832 () Bool)

(assert (=> b!5018568 m!6053832))

(declare-fun m!6053834 () Bool)

(assert (=> b!5018568 m!6053834))

(assert (=> b!5018568 m!6053820))

(declare-fun m!6053836 () Bool)

(assert (=> b!5018568 m!6053836))

(declare-fun m!6053838 () Bool)

(assert (=> b!5018566 m!6053838))

(declare-fun m!6053840 () Bool)

(assert (=> start!530218 m!6053840))

(declare-fun m!6053842 () Bool)

(assert (=> setNonEmpty!28576 m!6053842))

(declare-fun m!6053844 () Bool)

(assert (=> b!5018564 m!6053844))

(declare-fun m!6053846 () Bool)

(assert (=> b!5018564 m!6053846))

(declare-fun m!6053848 () Bool)

(assert (=> b!5018564 m!6053848))

(declare-fun m!6053850 () Bool)

(assert (=> b!5018564 m!6053850))

(declare-fun m!6053852 () Bool)

(assert (=> b!5018560 m!6053852))

(check-sat (not b!5018566) (not setNonEmpty!28576) (not b!5018560) (not b!5018562) (not b!5018564) (not b!5018563) (not start!530218) (not b!5018568) (not b!5018565))
(check-sat)
