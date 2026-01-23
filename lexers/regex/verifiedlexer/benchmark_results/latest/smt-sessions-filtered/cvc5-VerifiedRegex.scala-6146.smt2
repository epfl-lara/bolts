; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!297392 () Bool)

(assert start!297392)

(declare-fun b!3175979 () Bool)

(declare-fun e!1978206 () Bool)

(declare-fun tp!1004455 () Bool)

(assert (=> b!3175979 (= e!1978206 tp!1004455)))

(declare-fun setRes!25982 () Bool)

(declare-fun setNonEmpty!25982 () Bool)

(declare-fun tp!1004453 () Bool)

(declare-datatypes ((C!19870 0))(
  ( (C!19871 (val!11971 Int)) )
))
(declare-datatypes ((Regex!9842 0))(
  ( (ElementMatch!9842 (c!533653 C!19870)) (Concat!15163 (regOne!20196 Regex!9842) (regTwo!20196 Regex!9842)) (EmptyExpr!9842) (Star!9842 (reg!10171 Regex!9842)) (EmptyLang!9842) (Union!9842 (regOne!20197 Regex!9842) (regTwo!20197 Regex!9842)) )
))
(declare-datatypes ((List!35710 0))(
  ( (Nil!35586) (Cons!35586 (h!41006 Regex!9842) (t!234801 List!35710)) )
))
(declare-datatypes ((Context!5560 0))(
  ( (Context!5561 (exprs!3280 List!35710)) )
))
(declare-fun setElem!25982 () Context!5560)

(declare-fun inv!48372 (Context!5560) Bool)

(assert (=> setNonEmpty!25982 (= setRes!25982 (and tp!1004453 (inv!48372 setElem!25982) e!1978206))))

(declare-fun z!3818 () (Set Context!5560))

(declare-fun setRest!25982 () (Set Context!5560))

(assert (=> setNonEmpty!25982 (= z!3818 (set.union (set.insert setElem!25982 (as set.empty (Set Context!5560))) setRest!25982))))

(declare-fun b!3175980 () Bool)

(declare-fun e!1978207 () Bool)

(declare-fun lastNullablePos!114 () Int)

(declare-fun from!1034 () Int)

(assert (=> b!3175980 (= e!1978207 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun setIsEmpty!25982 () Bool)

(assert (=> setIsEmpty!25982 setRes!25982))

(declare-fun b!3175981 () Bool)

(declare-fun res!1290442 () Bool)

(declare-fun e!1978205 () Bool)

(assert (=> b!3175981 (=> (not res!1290442) (not e!1978205))))

(assert (=> b!3175981 (= res!1290442 e!1978207)))

(declare-fun res!1290440 () Bool)

(assert (=> b!3175981 (=> res!1290440 e!1978207)))

(declare-fun nullableZipper!751 ((Set Context!5560)) Bool)

(assert (=> b!3175981 (= res!1290440 (not (nullableZipper!751 z!3818)))))

(declare-fun res!1290441 () Bool)

(assert (=> start!297392 (=> (not res!1290441) (not e!1978205))))

(declare-fun totalInputSize!287 () Int)

(assert (=> start!297392 (= res!1290441 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297392 e!1978205))

(assert (=> start!297392 true))

(declare-fun condSetEmpty!25982 () Bool)

(assert (=> start!297392 (= condSetEmpty!25982 (= z!3818 (as set.empty (Set Context!5560))))))

(assert (=> start!297392 setRes!25982))

(declare-datatypes ((List!35711 0))(
  ( (Nil!35587) (Cons!35587 (h!41007 C!19870) (t!234802 List!35711)) )
))
(declare-datatypes ((IArray!21079 0))(
  ( (IArray!21080 (innerList!10597 List!35711)) )
))
(declare-datatypes ((Conc!10537 0))(
  ( (Node!10537 (left!27679 Conc!10537) (right!28009 Conc!10537) (csize!21304 Int) (cheight!10748 Int)) (Leaf!16684 (xs!13655 IArray!21079) (csize!21305 Int)) (Empty!10537) )
))
(declare-datatypes ((BalanceConc!20712 0))(
  ( (BalanceConc!20713 (c!533654 Conc!10537)) )
))
(declare-fun totalInput!842 () BalanceConc!20712)

(declare-fun e!1978208 () Bool)

(declare-fun inv!48373 (BalanceConc!20712) Bool)

(assert (=> start!297392 (and (inv!48373 totalInput!842) e!1978208)))

(declare-fun b!3175982 () Bool)

(declare-fun res!1290438 () Bool)

(assert (=> b!3175982 (=> (not res!1290438) (not e!1978205))))

(assert (=> b!3175982 (= res!1290438 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun b!3175983 () Bool)

(assert (=> b!3175983 (= e!1978205 (< (- totalInputSize!287 from!1034) 0))))

(declare-fun b!3175984 () Bool)

(declare-fun res!1290439 () Bool)

(assert (=> b!3175984 (=> (not res!1290439) (not e!1978205))))

(declare-fun size!26890 (BalanceConc!20712) Int)

(assert (=> b!3175984 (= res!1290439 (= totalInputSize!287 (size!26890 totalInput!842)))))

(declare-fun b!3175985 () Bool)

(declare-fun tp!1004454 () Bool)

(declare-fun inv!48374 (Conc!10537) Bool)

(assert (=> b!3175985 (= e!1978208 (and (inv!48374 (c!533654 totalInput!842)) tp!1004454))))

(assert (= (and start!297392 res!1290441) b!3175984))

(assert (= (and b!3175984 res!1290439) b!3175982))

(assert (= (and b!3175982 res!1290438) b!3175981))

(assert (= (and b!3175981 (not res!1290440)) b!3175980))

(assert (= (and b!3175981 res!1290442) b!3175983))

(assert (= (and start!297392 condSetEmpty!25982) setIsEmpty!25982))

(assert (= (and start!297392 (not condSetEmpty!25982)) setNonEmpty!25982))

(assert (= setNonEmpty!25982 b!3175979))

(assert (= start!297392 b!3175985))

(declare-fun m!3432511 () Bool)

(assert (=> setNonEmpty!25982 m!3432511))

(declare-fun m!3432513 () Bool)

(assert (=> b!3175985 m!3432513))

(declare-fun m!3432515 () Bool)

(assert (=> b!3175981 m!3432515))

(declare-fun m!3432517 () Bool)

(assert (=> start!297392 m!3432517))

(declare-fun m!3432519 () Bool)

(assert (=> b!3175984 m!3432519))

(push 1)

(assert (not b!3175984))

(assert (not setNonEmpty!25982))

(assert (not start!297392))

(assert (not b!3175985))

(assert (not b!3175979))

(assert (not b!3175981))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

