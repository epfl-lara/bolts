; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!536054 () Bool)

(assert start!536054)

(declare-fun b!5088176 () Bool)

(declare-fun e!3173384 () Bool)

(declare-datatypes ((C!28164 0))(
  ( (C!28165 (val!23690 Int)) )
))
(declare-datatypes ((List!58614 0))(
  ( (Nil!58490) (Cons!58490 (h!64938 C!28164) (t!371477 List!58614)) )
))
(declare-datatypes ((IArray!31273 0))(
  ( (IArray!31274 (innerList!15694 List!58614)) )
))
(declare-datatypes ((Conc!15606 0))(
  ( (Node!15606 (left!42881 Conc!15606) (right!43211 Conc!15606) (csize!31442 Int) (cheight!15817 Int)) (Leaf!25914 (xs!18988 IArray!31273) (csize!31443 Int)) (Empty!15606) )
))
(declare-datatypes ((BalanceConc!30402 0))(
  ( (BalanceConc!30403 (c!874273 Conc!15606)) )
))
(declare-fun totalInput!789 () BalanceConc!30402)

(declare-fun tp!1418513 () Bool)

(declare-fun inv!77778 (Conc!15606) Bool)

(assert (=> b!5088176 (= e!3173384 (and (inv!77778 (c!874273 totalInput!789)) tp!1418513))))

(declare-fun e!3173386 () Bool)

(declare-fun tp!1418511 () Bool)

(declare-datatypes ((Regex!13957 0))(
  ( (ElementMatch!13957 (c!874274 C!28164)) (Concat!22750 (regOne!28426 Regex!13957) (regTwo!28426 Regex!13957)) (EmptyExpr!13957) (Star!13957 (reg!14286 Regex!13957)) (EmptyLang!13957) (Union!13957 (regOne!28427 Regex!13957) (regTwo!28427 Regex!13957)) )
))
(declare-datatypes ((List!58615 0))(
  ( (Nil!58491) (Cons!58491 (h!64939 Regex!13957) (t!371478 List!58615)) )
))
(declare-datatypes ((Context!6764 0))(
  ( (Context!6765 (exprs!3882 List!58615)) )
))
(declare-fun setElem!29092 () Context!6764)

(declare-fun setNonEmpty!29092 () Bool)

(declare-fun setRes!29092 () Bool)

(declare-fun inv!77779 (Context!6764) Bool)

(assert (=> setNonEmpty!29092 (= setRes!29092 (and tp!1418511 (inv!77779 setElem!29092) e!3173386))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3736 () (InoxSet Context!6764))

(declare-fun setRest!29092 () (InoxSet Context!6764))

(assert (=> setNonEmpty!29092 (= z!3736 ((_ map or) (store ((as const (Array Context!6764 Bool)) false) setElem!29092 true) setRest!29092))))

(declare-fun setIsEmpty!29092 () Bool)

(assert (=> setIsEmpty!29092 setRes!29092))

(declare-fun b!5088178 () Bool)

(declare-fun tp!1418512 () Bool)

(assert (=> b!5088178 (= e!3173386 tp!1418512)))

(declare-fun b!5088177 () Bool)

(declare-fun e!3173382 () Bool)

(declare-fun e!3173383 () Bool)

(assert (=> b!5088177 (= e!3173382 e!3173383)))

(declare-fun res!2166077 () Bool)

(assert (=> b!5088177 (=> (not res!2166077) (not e!3173383))))

(declare-fun totalInputSize!236 () Int)

(declare-fun from!978 () Int)

(declare-fun lt!2092030 () Int)

(assert (=> b!5088177 (= res!2166077 (and (<= from!978 lt!2092030) (= totalInputSize!236 lt!2092030) (not (= from!978 totalInputSize!236))))))

(declare-fun size!39147 (BalanceConc!30402) Int)

(assert (=> b!5088177 (= lt!2092030 (size!39147 totalInput!789))))

(declare-fun res!2166080 () Bool)

(assert (=> start!536054 (=> (not res!2166080) (not e!3173382))))

(assert (=> start!536054 (= res!2166080 (>= from!978 0))))

(assert (=> start!536054 e!3173382))

(assert (=> start!536054 true))

(declare-fun condSetEmpty!29092 () Bool)

(assert (=> start!536054 (= condSetEmpty!29092 (= z!3736 ((as const (Array Context!6764 Bool)) false)))))

(assert (=> start!536054 setRes!29092))

(declare-fun inv!77780 (BalanceConc!30402) Bool)

(assert (=> start!536054 (and (inv!77780 totalInput!789) e!3173384)))

(declare-fun b!5088179 () Bool)

(declare-fun res!2166078 () Bool)

(assert (=> b!5088179 (=> (not res!2166078) (not e!3173383))))

(declare-fun lostCauseZipper!969 ((InoxSet Context!6764)) Bool)

(assert (=> b!5088179 (= res!2166078 (not (lostCauseZipper!969 z!3736)))))

(declare-fun b!5088180 () Bool)

(declare-fun e!3173385 () Bool)

(assert (=> b!5088180 (= e!3173385 (> 0 (- totalInputSize!236 from!978)))))

(declare-fun b!5088181 () Bool)

(assert (=> b!5088181 (= e!3173383 e!3173385)))

(declare-fun res!2166079 () Bool)

(assert (=> b!5088181 (=> (not res!2166079) (not e!3173385))))

(declare-fun lt!2092029 () (InoxSet Context!6764))

(declare-fun findLongestMatchInnerZipperFastV2!263 ((InoxSet Context!6764) Int BalanceConc!30402 Int) Int)

(assert (=> b!5088181 (= res!2166079 (<= (findLongestMatchInnerZipperFastV2!263 lt!2092029 (+ 1 from!978) totalInput!789 totalInputSize!236) 0))))

(declare-fun derivationStepZipper!742 ((InoxSet Context!6764) C!28164) (InoxSet Context!6764))

(declare-fun apply!14234 (BalanceConc!30402 Int) C!28164)

(assert (=> b!5088181 (= lt!2092029 (derivationStepZipper!742 z!3736 (apply!14234 totalInput!789 from!978)))))

(declare-fun b!5088182 () Bool)

(declare-fun res!2166076 () Bool)

(assert (=> b!5088182 (=> (not res!2166076) (not e!3173385))))

(declare-fun nullableZipper!954 ((InoxSet Context!6764)) Bool)

(assert (=> b!5088182 (= res!2166076 (not (nullableZipper!954 lt!2092029)))))

(assert (= (and start!536054 res!2166080) b!5088177))

(assert (= (and b!5088177 res!2166077) b!5088179))

(assert (= (and b!5088179 res!2166078) b!5088181))

(assert (= (and b!5088181 res!2166079) b!5088182))

(assert (= (and b!5088182 res!2166076) b!5088180))

(assert (= (and start!536054 condSetEmpty!29092) setIsEmpty!29092))

(assert (= (and start!536054 (not condSetEmpty!29092)) setNonEmpty!29092))

(assert (= setNonEmpty!29092 b!5088178))

(assert (= start!536054 b!5088176))

(declare-fun m!6146100 () Bool)

(assert (=> b!5088179 m!6146100))

(declare-fun m!6146102 () Bool)

(assert (=> setNonEmpty!29092 m!6146102))

(declare-fun m!6146104 () Bool)

(assert (=> b!5088177 m!6146104))

(declare-fun m!6146106 () Bool)

(assert (=> b!5088182 m!6146106))

(declare-fun m!6146108 () Bool)

(assert (=> start!536054 m!6146108))

(declare-fun m!6146110 () Bool)

(assert (=> b!5088181 m!6146110))

(declare-fun m!6146112 () Bool)

(assert (=> b!5088181 m!6146112))

(assert (=> b!5088181 m!6146112))

(declare-fun m!6146114 () Bool)

(assert (=> b!5088181 m!6146114))

(declare-fun m!6146116 () Bool)

(assert (=> b!5088176 m!6146116))

(check-sat (not b!5088176) (not b!5088178) (not b!5088177) (not b!5088179) (not b!5088181) (not start!536054) (not setNonEmpty!29092) (not b!5088182))
(check-sat)
