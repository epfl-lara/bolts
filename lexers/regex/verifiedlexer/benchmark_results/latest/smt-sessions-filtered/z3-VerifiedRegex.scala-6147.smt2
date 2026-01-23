; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!297398 () Bool)

(assert start!297398)

(declare-fun b!3176052 () Bool)

(declare-fun e!1978249 () Bool)

(declare-fun lastNullablePos!114 () Int)

(declare-fun totalInputSize!287 () Int)

(assert (=> b!3176052 (= e!1978249 (>= lastNullablePos!114 totalInputSize!287))))

(declare-fun b!3176053 () Bool)

(declare-fun e!1978246 () Bool)

(declare-fun tp!1004480 () Bool)

(assert (=> b!3176053 (= e!1978246 tp!1004480)))

(declare-fun setNonEmpty!25991 () Bool)

(declare-fun setRes!25991 () Bool)

(declare-fun tp!1004481 () Bool)

(declare-datatypes ((C!19876 0))(
  ( (C!19877 (val!11974 Int)) )
))
(declare-datatypes ((Regex!9845 0))(
  ( (ElementMatch!9845 (c!533659 C!19876)) (Concat!15166 (regOne!20202 Regex!9845) (regTwo!20202 Regex!9845)) (EmptyExpr!9845) (Star!9845 (reg!10174 Regex!9845)) (EmptyLang!9845) (Union!9845 (regOne!20203 Regex!9845) (regTwo!20203 Regex!9845)) )
))
(declare-datatypes ((List!35716 0))(
  ( (Nil!35592) (Cons!35592 (h!41012 Regex!9845) (t!234807 List!35716)) )
))
(declare-datatypes ((Context!5566 0))(
  ( (Context!5567 (exprs!3283 List!35716)) )
))
(declare-fun setElem!25991 () Context!5566)

(declare-fun inv!48384 (Context!5566) Bool)

(assert (=> setNonEmpty!25991 (= setRes!25991 (and tp!1004481 (inv!48384 setElem!25991) e!1978246))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3818 () (InoxSet Context!5566))

(declare-fun setRest!25991 () (InoxSet Context!5566))

(assert (=> setNonEmpty!25991 (= z!3818 ((_ map or) (store ((as const (Array Context!5566 Bool)) false) setElem!25991 true) setRest!25991))))

(declare-fun b!3176054 () Bool)

(declare-fun e!1978248 () Bool)

(declare-datatypes ((List!35717 0))(
  ( (Nil!35593) (Cons!35593 (h!41013 C!19876) (t!234808 List!35717)) )
))
(declare-datatypes ((IArray!21085 0))(
  ( (IArray!21086 (innerList!10600 List!35717)) )
))
(declare-datatypes ((Conc!10540 0))(
  ( (Node!10540 (left!27683 Conc!10540) (right!28013 Conc!10540) (csize!21310 Int) (cheight!10751 Int)) (Leaf!16688 (xs!13658 IArray!21085) (csize!21311 Int)) (Empty!10540) )
))
(declare-datatypes ((BalanceConc!20718 0))(
  ( (BalanceConc!20719 (c!533660 Conc!10540)) )
))
(declare-fun totalInput!842 () BalanceConc!20718)

(declare-fun tp!1004482 () Bool)

(declare-fun inv!48385 (Conc!10540) Bool)

(assert (=> b!3176054 (= e!1978248 (and (inv!48385 (c!533660 totalInput!842)) tp!1004482))))

(declare-fun b!3176055 () Bool)

(declare-fun res!1290498 () Bool)

(assert (=> b!3176055 (=> (not res!1290498) (not e!1978249))))

(declare-fun e!1978247 () Bool)

(assert (=> b!3176055 (= res!1290498 e!1978247)))

(declare-fun res!1290499 () Bool)

(assert (=> b!3176055 (=> res!1290499 e!1978247)))

(declare-fun nullableZipper!754 ((InoxSet Context!5566)) Bool)

(assert (=> b!3176055 (= res!1290499 (not (nullableZipper!754 z!3818)))))

(declare-fun b!3176056 () Bool)

(declare-fun e!1978250 () Bool)

(declare-fun lostCauseZipper!631 ((InoxSet Context!5566)) Bool)

(assert (=> b!3176056 (= e!1978250 (lostCauseZipper!631 z!3818))))

(declare-fun res!1290493 () Bool)

(assert (=> start!297398 (=> (not res!1290493) (not e!1978249))))

(declare-fun from!1034 () Int)

(assert (=> start!297398 (= res!1290493 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297398 e!1978249))

(assert (=> start!297398 true))

(declare-fun condSetEmpty!25991 () Bool)

(assert (=> start!297398 (= condSetEmpty!25991 (= z!3818 ((as const (Array Context!5566 Bool)) false)))))

(assert (=> start!297398 setRes!25991))

(declare-fun inv!48386 (BalanceConc!20718) Bool)

(assert (=> start!297398 (and (inv!48386 totalInput!842) e!1978248)))

(declare-fun b!3176057 () Bool)

(assert (=> b!3176057 (= e!1978247 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3176058 () Bool)

(declare-fun res!1290497 () Bool)

(assert (=> b!3176058 (=> (not res!1290497) (not e!1978249))))

(assert (=> b!3176058 (= res!1290497 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun b!3176059 () Bool)

(declare-fun res!1290494 () Bool)

(assert (=> b!3176059 (=> (not res!1290494) (not e!1978249))))

(assert (=> b!3176059 (= res!1290494 e!1978250)))

(declare-fun res!1290496 () Bool)

(assert (=> b!3176059 (=> res!1290496 e!1978250)))

(assert (=> b!3176059 (= res!1290496 (= from!1034 totalInputSize!287))))

(declare-fun b!3176060 () Bool)

(declare-fun res!1290495 () Bool)

(assert (=> b!3176060 (=> (not res!1290495) (not e!1978249))))

(declare-fun size!26893 (BalanceConc!20718) Int)

(assert (=> b!3176060 (= res!1290495 (= totalInputSize!287 (size!26893 totalInput!842)))))

(declare-fun setIsEmpty!25991 () Bool)

(assert (=> setIsEmpty!25991 setRes!25991))

(assert (= (and start!297398 res!1290493) b!3176060))

(assert (= (and b!3176060 res!1290495) b!3176058))

(assert (= (and b!3176058 res!1290497) b!3176055))

(assert (= (and b!3176055 (not res!1290499)) b!3176057))

(assert (= (and b!3176055 res!1290498) b!3176059))

(assert (= (and b!3176059 (not res!1290496)) b!3176056))

(assert (= (and b!3176059 res!1290494) b!3176052))

(assert (= (and start!297398 condSetEmpty!25991) setIsEmpty!25991))

(assert (= (and start!297398 (not condSetEmpty!25991)) setNonEmpty!25991))

(assert (= setNonEmpty!25991 b!3176053))

(assert (= start!297398 b!3176054))

(declare-fun m!3432543 () Bool)

(assert (=> b!3176054 m!3432543))

(declare-fun m!3432545 () Bool)

(assert (=> setNonEmpty!25991 m!3432545))

(declare-fun m!3432547 () Bool)

(assert (=> start!297398 m!3432547))

(declare-fun m!3432549 () Bool)

(assert (=> b!3176060 m!3432549))

(declare-fun m!3432551 () Bool)

(assert (=> b!3176056 m!3432551))

(declare-fun m!3432553 () Bool)

(assert (=> b!3176055 m!3432553))

(check-sat (not start!297398) (not b!3176053) (not b!3176060) (not b!3176056) (not b!3176055) (not b!3176054) (not setNonEmpty!25991))
(check-sat)
