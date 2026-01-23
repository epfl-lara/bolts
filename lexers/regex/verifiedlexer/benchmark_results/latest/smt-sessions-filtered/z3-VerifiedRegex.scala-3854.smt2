; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213122 () Bool)

(assert start!213122)

(declare-fun b!2195915 () Bool)

(declare-fun res!944029 () Bool)

(declare-fun e!1403359 () Bool)

(assert (=> b!2195915 (=> (not res!944029) (not e!1403359))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12496 0))(
  ( (C!12497 (val!7234 Int)) )
))
(declare-datatypes ((Regex!6175 0))(
  ( (ElementMatch!6175 (c!349692 C!12496)) (Concat!10477 (regOne!12862 Regex!6175) (regTwo!12862 Regex!6175)) (EmptyExpr!6175) (Star!6175 (reg!6504 Regex!6175)) (EmptyLang!6175) (Union!6175 (regOne!12863 Regex!6175) (regTwo!12863 Regex!6175)) )
))
(declare-datatypes ((List!25636 0))(
  ( (Nil!25552) (Cons!25552 (h!30953 Regex!6175) (t!198242 List!25636)) )
))
(declare-datatypes ((Context!3490 0))(
  ( (Context!3491 (exprs!2245 List!25636)) )
))
(declare-fun z!3955 () (InoxSet Context!3490))

(declare-fun lostCauseZipper!291 ((InoxSet Context!3490)) Bool)

(assert (=> b!2195915 (= res!944029 (not (lostCauseZipper!291 z!3955)))))

(declare-fun b!2195916 () Bool)

(declare-fun res!944028 () Bool)

(assert (=> b!2195916 (=> (not res!944028) (not e!1403359))))

(declare-fun from!1114 () Int)

(declare-fun lt!821375 () Int)

(assert (=> b!2195916 (= res!944028 (not (= from!1114 lt!821375)))))

(declare-fun b!2195917 () Bool)

(declare-fun e!1403361 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2195917 (= e!1403361 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2195918 () Bool)

(declare-fun e!1403362 () Bool)

(declare-fun lt!821373 () Bool)

(declare-fun lt!821376 () Int)

(assert (=> b!2195918 (= e!1403362 (and (>= (+ 1 from!1114) 0) (<= (+ 1 from!1114) lt!821375) (>= lt!821376 (- 1)) (< lt!821376 (+ 1 from!1114)) (or (not lt!821373) (= lt!821376 from!1114)) (>= (- lt!821375 (+ 1 from!1114)) (- lt!821375 from!1114))))))

(declare-fun b!2195919 () Bool)

(declare-fun e!1403360 () Bool)

(declare-fun tp!684020 () Bool)

(assert (=> b!2195919 (= e!1403360 tp!684020)))

(declare-fun b!2195921 () Bool)

(declare-fun e!1403363 () Bool)

(declare-datatypes ((List!25637 0))(
  ( (Nil!25553) (Cons!25553 (h!30954 C!12496) (t!198243 List!25637)) )
))
(declare-datatypes ((IArray!16627 0))(
  ( (IArray!16628 (innerList!8371 List!25637)) )
))
(declare-datatypes ((Conc!8311 0))(
  ( (Node!8311 (left!19617 Conc!8311) (right!19947 Conc!8311) (csize!16852 Int) (cheight!8522 Int)) (Leaf!12166 (xs!11253 IArray!16627) (csize!16853 Int)) (Empty!8311) )
))
(declare-datatypes ((BalanceConc!16384 0))(
  ( (BalanceConc!16385 (c!349693 Conc!8311)) )
))
(declare-fun totalInput!923 () BalanceConc!16384)

(declare-fun tp!684021 () Bool)

(declare-fun inv!34225 (Conc!8311) Bool)

(assert (=> b!2195921 (= e!1403363 (and (inv!34225 (c!349693 totalInput!923)) tp!684021))))

(declare-fun setNonEmpty!18794 () Bool)

(declare-fun setRes!18794 () Bool)

(declare-fun setElem!18794 () Context!3490)

(declare-fun tp!684022 () Bool)

(declare-fun inv!34226 (Context!3490) Bool)

(assert (=> setNonEmpty!18794 (= setRes!18794 (and tp!684022 (inv!34226 setElem!18794) e!1403360))))

(declare-fun setRest!18794 () (InoxSet Context!3490))

(assert (=> setNonEmpty!18794 (= z!3955 ((_ map or) (store ((as const (Array Context!3490 Bool)) false) setElem!18794 true) setRest!18794))))

(declare-fun setIsEmpty!18794 () Bool)

(assert (=> setIsEmpty!18794 setRes!18794))

(declare-fun res!944030 () Bool)

(declare-fun e!1403358 () Bool)

(assert (=> start!213122 (=> (not res!944030) (not e!1403358))))

(assert (=> start!213122 (= res!944030 (>= from!1114 0))))

(assert (=> start!213122 e!1403358))

(assert (=> start!213122 true))

(declare-fun inv!34227 (BalanceConc!16384) Bool)

(assert (=> start!213122 (and (inv!34227 totalInput!923) e!1403363)))

(declare-fun condSetEmpty!18794 () Bool)

(assert (=> start!213122 (= condSetEmpty!18794 (= z!3955 ((as const (Array Context!3490 Bool)) false)))))

(assert (=> start!213122 setRes!18794))

(declare-fun b!2195920 () Bool)

(assert (=> b!2195920 (= e!1403359 e!1403362)))

(declare-fun res!944027 () Bool)

(assert (=> b!2195920 (=> (not res!944027) (not e!1403362))))

(declare-fun lt!821374 () (InoxSet Context!3490))

(declare-fun furthestNullablePosition!343 ((InoxSet Context!3490) Int BalanceConc!16384 Int Int) Int)

(assert (=> b!2195920 (= res!944027 (= (furthestNullablePosition!343 z!3955 from!1114 totalInput!923 lt!821375 lastNullablePos!193) (furthestNullablePosition!343 lt!821374 (+ 1 from!1114) totalInput!923 lt!821375 lt!821376)))))

(assert (=> b!2195920 (= lt!821376 (ite lt!821373 from!1114 lastNullablePos!193))))

(declare-fun nullableZipper!455 ((InoxSet Context!3490)) Bool)

(assert (=> b!2195920 (= lt!821373 (nullableZipper!455 lt!821374))))

(declare-fun derivationStepZipper!247 ((InoxSet Context!3490) C!12496) (InoxSet Context!3490))

(declare-fun apply!6243 (BalanceConc!16384 Int) C!12496)

(assert (=> b!2195920 (= lt!821374 (derivationStepZipper!247 z!3955 (apply!6243 totalInput!923 from!1114)))))

(declare-fun b!2195922 () Bool)

(declare-fun res!944032 () Bool)

(assert (=> b!2195922 (=> (not res!944032) (not e!1403359))))

(assert (=> b!2195922 (= res!944032 e!1403361)))

(declare-fun res!944031 () Bool)

(assert (=> b!2195922 (=> res!944031 e!1403361)))

(assert (=> b!2195922 (= res!944031 (not (nullableZipper!455 z!3955)))))

(declare-fun b!2195923 () Bool)

(assert (=> b!2195923 (= e!1403358 e!1403359)))

(declare-fun res!944033 () Bool)

(assert (=> b!2195923 (=> (not res!944033) (not e!1403359))))

(assert (=> b!2195923 (= res!944033 (and (<= from!1114 lt!821375) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19921 (BalanceConc!16384) Int)

(assert (=> b!2195923 (= lt!821375 (size!19921 totalInput!923))))

(assert (= (and start!213122 res!944030) b!2195923))

(assert (= (and b!2195923 res!944033) b!2195922))

(assert (= (and b!2195922 (not res!944031)) b!2195917))

(assert (= (and b!2195922 res!944032) b!2195916))

(assert (= (and b!2195916 res!944028) b!2195915))

(assert (= (and b!2195915 res!944029) b!2195920))

(assert (= (and b!2195920 res!944027) b!2195918))

(assert (= start!213122 b!2195921))

(assert (= (and start!213122 condSetEmpty!18794) setIsEmpty!18794))

(assert (= (and start!213122 (not condSetEmpty!18794)) setNonEmpty!18794))

(assert (= setNonEmpty!18794 b!2195919))

(declare-fun m!2638437 () Bool)

(assert (=> b!2195920 m!2638437))

(declare-fun m!2638439 () Bool)

(assert (=> b!2195920 m!2638439))

(declare-fun m!2638441 () Bool)

(assert (=> b!2195920 m!2638441))

(declare-fun m!2638443 () Bool)

(assert (=> b!2195920 m!2638443))

(assert (=> b!2195920 m!2638441))

(declare-fun m!2638445 () Bool)

(assert (=> b!2195920 m!2638445))

(declare-fun m!2638447 () Bool)

(assert (=> b!2195922 m!2638447))

(declare-fun m!2638449 () Bool)

(assert (=> b!2195921 m!2638449))

(declare-fun m!2638451 () Bool)

(assert (=> b!2195915 m!2638451))

(declare-fun m!2638453 () Bool)

(assert (=> b!2195923 m!2638453))

(declare-fun m!2638455 () Bool)

(assert (=> setNonEmpty!18794 m!2638455))

(declare-fun m!2638457 () Bool)

(assert (=> start!213122 m!2638457))

(check-sat (not setNonEmpty!18794) (not b!2195923) (not b!2195919) (not b!2195921) (not start!213122) (not b!2195920) (not b!2195915) (not b!2195922))
(check-sat)
