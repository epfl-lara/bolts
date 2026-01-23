; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212542 () Bool)

(assert start!212542)

(declare-fun b!2191363 () Bool)

(declare-fun e!1400377 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2191363 (= e!1400377 from!1114)))

(declare-fun setIsEmpty!18564 () Bool)

(declare-fun setRes!18564 () Bool)

(assert (=> setIsEmpty!18564 setRes!18564))

(declare-fun b!2191364 () Bool)

(declare-fun e!1400376 () Bool)

(declare-fun e!1400375 () Bool)

(assert (=> b!2191364 (= e!1400376 e!1400375)))

(declare-fun res!941893 () Bool)

(assert (=> b!2191364 (=> (not res!941893) (not e!1400375))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun lt!818977 () Int)

(assert (=> b!2191364 (= res!941893 (and (<= from!1114 lt!818977) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12372 0))(
  ( (C!12373 (val!7172 Int)) )
))
(declare-datatypes ((List!25499 0))(
  ( (Nil!25415) (Cons!25415 (h!30816 C!12372) (t!198097 List!25499)) )
))
(declare-datatypes ((IArray!16503 0))(
  ( (IArray!16504 (innerList!8309 List!25499)) )
))
(declare-datatypes ((Conc!8249 0))(
  ( (Node!8249 (left!19500 Conc!8249) (right!19830 Conc!8249) (csize!16728 Int) (cheight!8460 Int)) (Leaf!12073 (xs!11191 IArray!16503) (csize!16729 Int)) (Empty!8249) )
))
(declare-datatypes ((BalanceConc!16260 0))(
  ( (BalanceConc!16261 (c!348562 Conc!8249)) )
))
(declare-fun totalInput!923 () BalanceConc!16260)

(declare-fun size!19831 (BalanceConc!16260) Int)

(assert (=> b!2191364 (= lt!818977 (size!19831 totalInput!923))))

(declare-fun b!2191365 () Bool)

(declare-fun res!941892 () Bool)

(assert (=> b!2191365 (=> (not res!941892) (not e!1400375))))

(declare-fun e!1400370 () Bool)

(assert (=> b!2191365 (= res!941892 e!1400370)))

(declare-fun res!941894 () Bool)

(assert (=> b!2191365 (=> res!941894 e!1400370)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6113 0))(
  ( (ElementMatch!6113 (c!348563 C!12372)) (Concat!10415 (regOne!12738 Regex!6113) (regTwo!12738 Regex!6113)) (EmptyExpr!6113) (Star!6113 (reg!6442 Regex!6113)) (EmptyLang!6113) (Union!6113 (regOne!12739 Regex!6113) (regTwo!12739 Regex!6113)) )
))
(declare-datatypes ((List!25500 0))(
  ( (Nil!25416) (Cons!25416 (h!30817 Regex!6113) (t!198098 List!25500)) )
))
(declare-datatypes ((Context!3366 0))(
  ( (Context!3367 (exprs!2183 List!25500)) )
))
(declare-fun z!3955 () (InoxSet Context!3366))

(declare-fun nullableZipper!393 ((InoxSet Context!3366)) Bool)

(assert (=> b!2191365 (= res!941894 (not (nullableZipper!393 z!3955)))))

(declare-fun b!2191366 () Bool)

(declare-fun e!1400371 () Bool)

(declare-fun tp!683110 () Bool)

(declare-fun inv!33909 (Conc!8249) Bool)

(assert (=> b!2191366 (= e!1400371 (and (inv!33909 (c!348562 totalInput!923)) tp!683110))))

(declare-fun b!2191367 () Bool)

(declare-fun e!1400372 () Bool)

(assert (=> b!2191367 (= e!1400375 e!1400372)))

(declare-fun res!941888 () Bool)

(assert (=> b!2191367 (=> (not res!941888) (not e!1400372))))

(declare-fun lt!818978 () Int)

(declare-fun lt!818983 () Int)

(assert (=> b!2191367 (= res!941888 (= lt!818978 lt!818983))))

(declare-fun lt!818979 () Int)

(declare-fun lt!818976 () (InoxSet Context!3366))

(declare-fun furthestNullablePosition!283 ((InoxSet Context!3366) Int BalanceConc!16260 Int Int) Int)

(assert (=> b!2191367 (= lt!818983 (furthestNullablePosition!283 lt!818976 (+ 1 from!1114) totalInput!923 lt!818977 lt!818979))))

(assert (=> b!2191367 (= lt!818978 (furthestNullablePosition!283 z!3955 from!1114 totalInput!923 lt!818977 lastNullablePos!193))))

(assert (=> b!2191367 (= lt!818979 e!1400377)))

(declare-fun c!348561 () Bool)

(assert (=> b!2191367 (= c!348561 (nullableZipper!393 lt!818976))))

(declare-fun derivationStepZipper!190 ((InoxSet Context!3366) C!12372) (InoxSet Context!3366))

(declare-fun apply!6147 (BalanceConc!16260 Int) C!12372)

(assert (=> b!2191367 (= lt!818976 (derivationStepZipper!190 z!3955 (apply!6147 totalInput!923 from!1114)))))

(declare-fun b!2191368 () Bool)

(assert (=> b!2191368 (= e!1400377 lastNullablePos!193)))

(declare-fun e!1400373 () Bool)

(declare-fun tp!683109 () Bool)

(declare-fun setNonEmpty!18564 () Bool)

(declare-fun setElem!18564 () Context!3366)

(declare-fun inv!33910 (Context!3366) Bool)

(assert (=> setNonEmpty!18564 (= setRes!18564 (and tp!683109 (inv!33910 setElem!18564) e!1400373))))

(declare-fun setRest!18564 () (InoxSet Context!3366))

(assert (=> setNonEmpty!18564 (= z!3955 ((_ map or) (store ((as const (Array Context!3366 Bool)) false) setElem!18564 true) setRest!18564))))

(declare-fun b!2191369 () Bool)

(declare-fun e!1400374 () Bool)

(assert (=> b!2191369 (= e!1400372 (not e!1400374))))

(declare-fun res!941889 () Bool)

(assert (=> b!2191369 (=> res!941889 e!1400374)))

(declare-fun lt!818980 () Int)

(assert (=> b!2191369 (= res!941889 (or (> lt!818980 0) (> lt!818983 from!1114) (< lt!818983 lt!818979) (< lt!818979 lastNullablePos!193) (> lt!818979 from!1114) (and (not (= lt!818979 from!1114)) (not (= lt!818979 lastNullablePos!193))) (= lt!818979 lastNullablePos!193) (not (= (+ 1 (- lt!818978 from!1114)) 1))))))

(declare-fun e!1400369 () Bool)

(assert (=> b!2191369 e!1400369))

(declare-fun res!941895 () Bool)

(assert (=> b!2191369 (=> res!941895 e!1400369)))

(assert (=> b!2191369 (= res!941895 (<= lt!818980 0))))

(assert (=> b!2191369 (= lt!818980 (+ 1 (- lt!818983 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38521 0))(
  ( (Unit!38522) )
))
(declare-fun lt!818981 () Unit!38521)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!118 ((InoxSet Context!3366) Int BalanceConc!16260 Int) Unit!38521)

(assert (=> b!2191369 (= lt!818981 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!118 lt!818976 (+ 1 from!1114) totalInput!923 lt!818979))))

(declare-fun res!941887 () Bool)

(assert (=> start!212542 (=> (not res!941887) (not e!1400376))))

(assert (=> start!212542 (= res!941887 (>= from!1114 0))))

(assert (=> start!212542 e!1400376))

(assert (=> start!212542 true))

(declare-fun inv!33911 (BalanceConc!16260) Bool)

(assert (=> start!212542 (and (inv!33911 totalInput!923) e!1400371)))

(declare-fun condSetEmpty!18564 () Bool)

(assert (=> start!212542 (= condSetEmpty!18564 (= z!3955 ((as const (Array Context!3366 Bool)) false)))))

(assert (=> start!212542 setRes!18564))

(declare-fun b!2191370 () Bool)

(declare-fun res!941890 () Bool)

(assert (=> b!2191370 (=> (not res!941890) (not e!1400375))))

(declare-fun lostCauseZipper!231 ((InoxSet Context!3366)) Bool)

(assert (=> b!2191370 (= res!941890 (not (lostCauseZipper!231 z!3955)))))

(declare-fun b!2191371 () Bool)

(declare-fun tp!683108 () Bool)

(assert (=> b!2191371 (= e!1400373 tp!683108)))

(declare-fun b!2191372 () Bool)

(assert (=> b!2191372 (= e!1400370 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2191373 () Bool)

(assert (=> b!2191373 (= e!1400374 (and (<= 0 from!1114) (< from!1114 lt!818977)))))

(declare-fun lt!818982 () List!25499)

(declare-fun apply!6148 (List!25499 Int) C!12372)

(declare-fun take!305 (List!25499 Int) List!25499)

(declare-fun drop!1315 (List!25499 Int) List!25499)

(assert (=> b!2191373 (= (Cons!25415 (apply!6148 lt!818982 from!1114) (take!305 (drop!1315 lt!818982 (+ 1 from!1114)) 0)) (take!305 (drop!1315 lt!818982 from!1114) 1))))

(declare-fun lt!818984 () Unit!38521)

(declare-fun lemmaDropTakeAddOneLeft!2 (List!25499 Int Int) Unit!38521)

(assert (=> b!2191373 (= lt!818984 (lemmaDropTakeAddOneLeft!2 lt!818982 from!1114 0))))

(declare-fun list!9760 (BalanceConc!16260) List!25499)

(assert (=> b!2191373 (= lt!818982 (list!9760 totalInput!923))))

(declare-fun b!2191374 () Bool)

(declare-fun res!941891 () Bool)

(assert (=> b!2191374 (=> (not res!941891) (not e!1400375))))

(assert (=> b!2191374 (= res!941891 (not (= from!1114 lt!818977)))))

(declare-fun b!2191375 () Bool)

(declare-fun matchZipper!213 ((InoxSet Context!3366) List!25499) Bool)

(assert (=> b!2191375 (= e!1400369 (matchZipper!213 lt!818976 (take!305 (drop!1315 (list!9760 totalInput!923) (+ 1 from!1114)) lt!818980)))))

(assert (= (and start!212542 res!941887) b!2191364))

(assert (= (and b!2191364 res!941893) b!2191365))

(assert (= (and b!2191365 (not res!941894)) b!2191372))

(assert (= (and b!2191365 res!941892) b!2191374))

(assert (= (and b!2191374 res!941891) b!2191370))

(assert (= (and b!2191370 res!941890) b!2191367))

(assert (= (and b!2191367 c!348561) b!2191363))

(assert (= (and b!2191367 (not c!348561)) b!2191368))

(assert (= (and b!2191367 res!941888) b!2191369))

(assert (= (and b!2191369 (not res!941895)) b!2191375))

(assert (= (and b!2191369 (not res!941889)) b!2191373))

(assert (= start!212542 b!2191366))

(assert (= (and start!212542 condSetEmpty!18564) setIsEmpty!18564))

(assert (= (and start!212542 (not condSetEmpty!18564)) setNonEmpty!18564))

(assert (= setNonEmpty!18564 b!2191371))

(declare-fun m!2634195 () Bool)

(assert (=> b!2191375 m!2634195))

(assert (=> b!2191375 m!2634195))

(declare-fun m!2634197 () Bool)

(assert (=> b!2191375 m!2634197))

(assert (=> b!2191375 m!2634197))

(declare-fun m!2634199 () Bool)

(assert (=> b!2191375 m!2634199))

(assert (=> b!2191375 m!2634199))

(declare-fun m!2634201 () Bool)

(assert (=> b!2191375 m!2634201))

(declare-fun m!2634203 () Bool)

(assert (=> b!2191373 m!2634203))

(declare-fun m!2634205 () Bool)

(assert (=> b!2191373 m!2634205))

(declare-fun m!2634207 () Bool)

(assert (=> b!2191373 m!2634207))

(declare-fun m!2634209 () Bool)

(assert (=> b!2191373 m!2634209))

(assert (=> b!2191373 m!2634195))

(assert (=> b!2191373 m!2634205))

(assert (=> b!2191373 m!2634209))

(declare-fun m!2634211 () Bool)

(assert (=> b!2191373 m!2634211))

(declare-fun m!2634213 () Bool)

(assert (=> b!2191373 m!2634213))

(declare-fun m!2634215 () Bool)

(assert (=> b!2191367 m!2634215))

(declare-fun m!2634217 () Bool)

(assert (=> b!2191367 m!2634217))

(assert (=> b!2191367 m!2634215))

(declare-fun m!2634219 () Bool)

(assert (=> b!2191367 m!2634219))

(declare-fun m!2634221 () Bool)

(assert (=> b!2191367 m!2634221))

(declare-fun m!2634223 () Bool)

(assert (=> b!2191367 m!2634223))

(declare-fun m!2634225 () Bool)

(assert (=> b!2191366 m!2634225))

(declare-fun m!2634227 () Bool)

(assert (=> b!2191369 m!2634227))

(declare-fun m!2634229 () Bool)

(assert (=> b!2191365 m!2634229))

(declare-fun m!2634231 () Bool)

(assert (=> start!212542 m!2634231))

(declare-fun m!2634233 () Bool)

(assert (=> b!2191364 m!2634233))

(declare-fun m!2634235 () Bool)

(assert (=> b!2191370 m!2634235))

(declare-fun m!2634237 () Bool)

(assert (=> setNonEmpty!18564 m!2634237))

(check-sat (not b!2191366) (not b!2191364) (not b!2191375) (not start!212542) (not setNonEmpty!18564) (not b!2191373) (not b!2191367) (not b!2191370) (not b!2191371) (not b!2191369) (not b!2191365))
(check-sat)
