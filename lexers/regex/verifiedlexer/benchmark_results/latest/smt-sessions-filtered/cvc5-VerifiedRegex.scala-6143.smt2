; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!297380 () Bool)

(assert start!297380)

(declare-fun b!3175809 () Bool)

(declare-fun res!1290321 () Bool)

(declare-fun e!1978130 () Bool)

(assert (=> b!3175809 (=> (not res!1290321) (not e!1978130))))

(declare-fun from!1034 () Int)

(declare-fun totalInputSize!287 () Int)

(assert (=> b!3175809 (= res!1290321 (not (= from!1034 totalInputSize!287)))))

(declare-fun b!3175810 () Bool)

(declare-fun e!1978128 () Bool)

(declare-fun tp!1004400 () Bool)

(assert (=> b!3175810 (= e!1978128 tp!1004400)))

(declare-datatypes ((C!19858 0))(
  ( (C!19859 (val!11965 Int)) )
))
(declare-datatypes ((Regex!9836 0))(
  ( (ElementMatch!9836 (c!533635 C!19858)) (Concat!15157 (regOne!20184 Regex!9836) (regTwo!20184 Regex!9836)) (EmptyExpr!9836) (Star!9836 (reg!10165 Regex!9836)) (EmptyLang!9836) (Union!9836 (regOne!20185 Regex!9836) (regTwo!20185 Regex!9836)) )
))
(declare-datatypes ((List!35698 0))(
  ( (Nil!35574) (Cons!35574 (h!40994 Regex!9836) (t!234789 List!35698)) )
))
(declare-datatypes ((Context!5548 0))(
  ( (Context!5549 (exprs!3274 List!35698)) )
))
(declare-fun setElem!25964 () Context!5548)

(declare-fun tp!1004399 () Bool)

(declare-fun setNonEmpty!25964 () Bool)

(declare-fun setRes!25964 () Bool)

(declare-fun inv!48345 (Context!5548) Bool)

(assert (=> setNonEmpty!25964 (= setRes!25964 (and tp!1004399 (inv!48345 setElem!25964) e!1978128))))

(declare-fun z!3818 () (Set Context!5548))

(declare-fun setRest!25964 () (Set Context!5548))

(assert (=> setNonEmpty!25964 (= z!3818 (set.union (set.insert setElem!25964 (as set.empty (Set Context!5548))) setRest!25964))))

(declare-fun b!3175811 () Bool)

(declare-fun res!1290319 () Bool)

(assert (=> b!3175811 (=> (not res!1290319) (not e!1978130))))

(declare-datatypes ((List!35699 0))(
  ( (Nil!35575) (Cons!35575 (h!40995 C!19858) (t!234790 List!35699)) )
))
(declare-datatypes ((IArray!21067 0))(
  ( (IArray!21068 (innerList!10591 List!35699)) )
))
(declare-datatypes ((Conc!10531 0))(
  ( (Node!10531 (left!27670 Conc!10531) (right!28000 Conc!10531) (csize!21292 Int) (cheight!10742 Int)) (Leaf!16675 (xs!13649 IArray!21067) (csize!21293 Int)) (Empty!10531) )
))
(declare-datatypes ((BalanceConc!20700 0))(
  ( (BalanceConc!20701 (c!533636 Conc!10531)) )
))
(declare-fun totalInput!842 () BalanceConc!20700)

(declare-fun size!26884 (BalanceConc!20700) Int)

(assert (=> b!3175811 (= res!1290319 (= totalInputSize!287 (size!26884 totalInput!842)))))

(declare-fun b!3175812 () Bool)

(declare-fun e!1978129 () Bool)

(declare-fun lastNullablePos!114 () Int)

(assert (=> b!3175812 (= e!1978129 (= lastNullablePos!114 (- from!1034 1)))))

(declare-fun b!3175813 () Bool)

(declare-fun e!1978127 () Bool)

(declare-fun tp!1004401 () Bool)

(declare-fun inv!48346 (Conc!10531) Bool)

(assert (=> b!3175813 (= e!1978127 (and (inv!48346 (c!533636 totalInput!842)) tp!1004401))))

(declare-fun b!3175814 () Bool)

(declare-fun res!1290322 () Bool)

(assert (=> b!3175814 (=> (not res!1290322) (not e!1978130))))

(declare-fun lostCauseZipper!624 ((Set Context!5548)) Bool)

(assert (=> b!3175814 (= res!1290322 (not (lostCauseZipper!624 z!3818)))))

(declare-fun b!3175815 () Bool)

(declare-fun res!1290317 () Bool)

(assert (=> b!3175815 (=> (not res!1290317) (not e!1978130))))

(assert (=> b!3175815 (= res!1290317 (and (>= lastNullablePos!114 (- 1)) (< lastNullablePos!114 from!1034)))))

(declare-fun b!3175816 () Bool)

(declare-fun res!1290316 () Bool)

(assert (=> b!3175816 (=> (not res!1290316) (not e!1978130))))

(assert (=> b!3175816 (= res!1290316 e!1978129)))

(declare-fun res!1290320 () Bool)

(assert (=> b!3175816 (=> res!1290320 e!1978129)))

(declare-fun nullableZipper!745 ((Set Context!5548)) Bool)

(assert (=> b!3175816 (= res!1290320 (not (nullableZipper!745 z!3818)))))

(declare-fun setIsEmpty!25964 () Bool)

(assert (=> setIsEmpty!25964 setRes!25964))

(declare-fun res!1290318 () Bool)

(assert (=> start!297380 (=> (not res!1290318) (not e!1978130))))

(assert (=> start!297380 (= res!1290318 (and (>= from!1034 0) (<= from!1034 totalInputSize!287)))))

(assert (=> start!297380 e!1978130))

(assert (=> start!297380 true))

(declare-fun condSetEmpty!25964 () Bool)

(assert (=> start!297380 (= condSetEmpty!25964 (= z!3818 (as set.empty (Set Context!5548))))))

(assert (=> start!297380 setRes!25964))

(declare-fun inv!48347 (BalanceConc!20700) Bool)

(assert (=> start!297380 (and (inv!48347 totalInput!842) e!1978127)))

(declare-fun b!3175817 () Bool)

(assert (=> b!3175817 (= e!1978130 false)))

(declare-fun lt!1067873 () Bool)

(declare-fun derivationStepZipper!530 ((Set Context!5548) C!19858) (Set Context!5548))

(declare-fun apply!8005 (BalanceConc!20700 Int) C!19858)

(assert (=> b!3175817 (= lt!1067873 (nullableZipper!745 (derivationStepZipper!530 z!3818 (apply!8005 totalInput!842 from!1034))))))

(assert (= (and start!297380 res!1290318) b!3175811))

(assert (= (and b!3175811 res!1290319) b!3175815))

(assert (= (and b!3175815 res!1290317) b!3175816))

(assert (= (and b!3175816 (not res!1290320)) b!3175812))

(assert (= (and b!3175816 res!1290316) b!3175809))

(assert (= (and b!3175809 res!1290321) b!3175814))

(assert (= (and b!3175814 res!1290322) b!3175817))

(assert (= (and start!297380 condSetEmpty!25964) setIsEmpty!25964))

(assert (= (and start!297380 (not condSetEmpty!25964)) setNonEmpty!25964))

(assert (= setNonEmpty!25964 b!3175810))

(assert (= start!297380 b!3175813))

(declare-fun m!3432403 () Bool)

(assert (=> start!297380 m!3432403))

(declare-fun m!3432405 () Bool)

(assert (=> b!3175817 m!3432405))

(assert (=> b!3175817 m!3432405))

(declare-fun m!3432407 () Bool)

(assert (=> b!3175817 m!3432407))

(assert (=> b!3175817 m!3432407))

(declare-fun m!3432409 () Bool)

(assert (=> b!3175817 m!3432409))

(declare-fun m!3432411 () Bool)

(assert (=> b!3175814 m!3432411))

(declare-fun m!3432413 () Bool)

(assert (=> b!3175816 m!3432413))

(declare-fun m!3432415 () Bool)

(assert (=> setNonEmpty!25964 m!3432415))

(declare-fun m!3432417 () Bool)

(assert (=> b!3175813 m!3432417))

(declare-fun m!3432419 () Bool)

(assert (=> b!3175811 m!3432419))

(push 1)

(assert (not b!3175813))

(assert (not b!3175811))

(assert (not start!297380))

(assert (not b!3175814))

(assert (not setNonEmpty!25964))

(assert (not b!3175817))

(assert (not b!3175810))

(assert (not b!3175816))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

