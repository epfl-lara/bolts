; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214130 () Bool)

(assert start!214130)

(declare-datatypes ((C!12632 0))(
  ( (C!12633 (val!7302 Int)) )
))
(declare-datatypes ((Regex!6243 0))(
  ( (ElementMatch!6243 (c!351604 C!12632)) (Concat!10545 (regOne!12998 Regex!6243) (regTwo!12998 Regex!6243)) (EmptyExpr!6243) (Star!6243 (reg!6572 Regex!6243)) (EmptyLang!6243) (Union!6243 (regOne!12999 Regex!6243) (regTwo!12999 Regex!6243)) )
))
(declare-datatypes ((List!25784 0))(
  ( (Nil!25700) (Cons!25700 (h!31101 Regex!6243) (t!198418 List!25784)) )
))
(declare-datatypes ((Context!3626 0))(
  ( (Context!3627 (exprs!2313 List!25784)) )
))
(declare-fun setElem!19078 () Context!3626)

(declare-fun setRes!19078 () Bool)

(declare-fun setNonEmpty!19078 () Bool)

(declare-fun e!1407677 () Bool)

(declare-fun tp!685415 () Bool)

(declare-fun inv!34592 (Context!3626) Bool)

(assert (=> setNonEmpty!19078 (= setRes!19078 (and tp!685415 (inv!34592 setElem!19078) e!1407677))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3888 () (InoxSet Context!3626))

(declare-fun setRest!19078 () (InoxSet Context!3626))

(assert (=> setNonEmpty!19078 (= z!3888 ((_ map or) (store ((as const (Array Context!3626 Bool)) false) setElem!19078 true) setRest!19078))))

(declare-fun b!2203268 () Bool)

(declare-fun res!947009 () Bool)

(declare-fun e!1407681 () Bool)

(assert (=> b!2203268 (=> (not res!947009) (not e!1407681))))

(declare-fun lastNullablePos!161 () Int)

(declare-datatypes ((List!25785 0))(
  ( (Nil!25701) (Cons!25701 (h!31102 C!12632) (t!198419 List!25785)) )
))
(declare-datatypes ((IArray!16763 0))(
  ( (IArray!16764 (innerList!8439 List!25785)) )
))
(declare-datatypes ((Conc!8379 0))(
  ( (Node!8379 (left!19743 Conc!8379) (right!20073 Conc!8379) (csize!16988 Int) (cheight!8590 Int)) (Leaf!12268 (xs!11321 IArray!16763) (csize!16989 Int)) (Empty!8379) )
))
(declare-datatypes ((BalanceConc!16520 0))(
  ( (BalanceConc!16521 (c!351605 Conc!8379)) )
))
(declare-fun totalInput!891 () BalanceConc!16520)

(declare-fun lt!823781 () Int)

(declare-fun from!1082 () Int)

(declare-fun furthestNullablePosition!393 ((InoxSet Context!3626) Int BalanceConc!16520 Int Int) Int)

(assert (=> b!2203268 (= res!947009 (>= (furthestNullablePosition!393 z!3888 from!1082 totalInput!891 lt!823781 lastNullablePos!161) lastNullablePos!161))))

(declare-fun b!2203269 () Bool)

(declare-fun res!947001 () Bool)

(declare-fun e!1407679 () Bool)

(assert (=> b!2203269 (=> (not res!947001) (not e!1407679))))

(assert (=> b!2203269 (= res!947001 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2203270 () Bool)

(declare-fun e!1407675 () Bool)

(assert (=> b!2203270 (= e!1407675 e!1407679)))

(declare-fun res!947003 () Bool)

(assert (=> b!2203270 (=> (not res!947003) (not e!1407679))))

(declare-fun lt!823782 () List!25785)

(declare-fun matchZipper!329 ((InoxSet Context!3626) List!25785) Bool)

(assert (=> b!2203270 (= res!947003 (matchZipper!329 z!3888 lt!823782))))

(declare-fun knownSize!10 () Int)

(declare-fun take!421 (List!25785 Int) List!25785)

(declare-fun drop!1431 (List!25785 Int) List!25785)

(declare-fun list!9917 (BalanceConc!16520) List!25785)

(assert (=> b!2203270 (= lt!823782 (take!421 (drop!1431 (list!9917 totalInput!891) from!1082) knownSize!10))))

(declare-fun b!2203271 () Bool)

(declare-fun e!1407680 () Bool)

(assert (=> b!2203271 (= e!1407680 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2203272 () Bool)

(declare-fun res!947008 () Bool)

(assert (=> b!2203272 (=> (not res!947008) (not e!1407681))))

(declare-fun isEmpty!14683 (List!25785) Bool)

(assert (=> b!2203272 (= res!947008 (isEmpty!14683 lt!823782))))

(declare-fun b!2203273 () Bool)

(declare-fun tp!685414 () Bool)

(assert (=> b!2203273 (= e!1407677 tp!685414)))

(declare-fun res!947004 () Bool)

(declare-fun e!1407678 () Bool)

(assert (=> start!214130 (=> (not res!947004) (not e!1407678))))

(assert (=> start!214130 (= res!947004 (>= from!1082 0))))

(assert (=> start!214130 e!1407678))

(assert (=> start!214130 true))

(declare-fun e!1407676 () Bool)

(declare-fun inv!34593 (BalanceConc!16520) Bool)

(assert (=> start!214130 (and (inv!34593 totalInput!891) e!1407676)))

(declare-fun condSetEmpty!19078 () Bool)

(assert (=> start!214130 (= condSetEmpty!19078 (= z!3888 ((as const (Array Context!3626 Bool)) false)))))

(assert (=> start!214130 setRes!19078))

(declare-fun b!2203274 () Bool)

(declare-fun res!947007 () Bool)

(assert (=> b!2203274 (=> (not res!947007) (not e!1407681))))

(assert (=> b!2203274 (= res!947007 (= knownSize!10 0))))

(declare-fun b!2203275 () Bool)

(declare-fun res!947002 () Bool)

(assert (=> b!2203275 (=> (not res!947002) (not e!1407681))))

(declare-fun isEmpty!14684 (BalanceConc!16520) Bool)

(assert (=> b!2203275 (= res!947002 (not (isEmpty!14684 totalInput!891)))))

(declare-fun b!2203276 () Bool)

(assert (=> b!2203276 (= e!1407678 e!1407675)))

(declare-fun res!947006 () Bool)

(assert (=> b!2203276 (=> (not res!947006) (not e!1407675))))

(assert (=> b!2203276 (= res!947006 (and (<= from!1082 lt!823781) (>= knownSize!10 0) (<= knownSize!10 (- lt!823781 from!1082))))))

(declare-fun size!20034 (BalanceConc!16520) Int)

(assert (=> b!2203276 (= lt!823781 (size!20034 totalInput!891))))

(declare-fun b!2203277 () Bool)

(declare-fun lt!823780 () Bool)

(assert (=> b!2203277 (= e!1407681 (not lt!823780))))

(declare-fun b!2203278 () Bool)

(assert (=> b!2203278 (= e!1407679 e!1407681)))

(declare-fun res!947000 () Bool)

(assert (=> b!2203278 (=> (not res!947000) (not e!1407681))))

(assert (=> b!2203278 (= res!947000 lt!823780)))

(assert (=> b!2203278 (= lt!823780 e!1407680)))

(declare-fun res!947005 () Bool)

(assert (=> b!2203278 (=> res!947005 e!1407680)))

(declare-fun nullableZipper!523 ((InoxSet Context!3626)) Bool)

(assert (=> b!2203278 (= res!947005 (not (nullableZipper!523 z!3888)))))

(declare-fun setIsEmpty!19078 () Bool)

(assert (=> setIsEmpty!19078 setRes!19078))

(declare-fun b!2203279 () Bool)

(declare-fun tp!685416 () Bool)

(declare-fun inv!34594 (Conc!8379) Bool)

(assert (=> b!2203279 (= e!1407676 (and (inv!34594 (c!351605 totalInput!891)) tp!685416))))

(assert (= (and start!214130 res!947004) b!2203276))

(assert (= (and b!2203276 res!947006) b!2203270))

(assert (= (and b!2203270 res!947003) b!2203269))

(assert (= (and b!2203269 res!947001) b!2203278))

(assert (= (and b!2203278 (not res!947005)) b!2203271))

(assert (= (and b!2203278 res!947000) b!2203275))

(assert (= (and b!2203275 res!947002) b!2203274))

(assert (= (and b!2203274 res!947007) b!2203268))

(assert (= (and b!2203268 res!947009) b!2203272))

(assert (= (and b!2203272 res!947008) b!2203277))

(assert (= start!214130 b!2203279))

(assert (= (and start!214130 condSetEmpty!19078) setIsEmpty!19078))

(assert (= (and start!214130 (not condSetEmpty!19078)) setNonEmpty!19078))

(assert (= setNonEmpty!19078 b!2203273))

(declare-fun m!2645315 () Bool)

(assert (=> setNonEmpty!19078 m!2645315))

(declare-fun m!2645317 () Bool)

(assert (=> b!2203279 m!2645317))

(declare-fun m!2645319 () Bool)

(assert (=> b!2203278 m!2645319))

(declare-fun m!2645321 () Bool)

(assert (=> b!2203270 m!2645321))

(declare-fun m!2645323 () Bool)

(assert (=> b!2203270 m!2645323))

(assert (=> b!2203270 m!2645323))

(declare-fun m!2645325 () Bool)

(assert (=> b!2203270 m!2645325))

(assert (=> b!2203270 m!2645325))

(declare-fun m!2645327 () Bool)

(assert (=> b!2203270 m!2645327))

(declare-fun m!2645329 () Bool)

(assert (=> b!2203272 m!2645329))

(declare-fun m!2645331 () Bool)

(assert (=> start!214130 m!2645331))

(declare-fun m!2645333 () Bool)

(assert (=> b!2203276 m!2645333))

(declare-fun m!2645335 () Bool)

(assert (=> b!2203275 m!2645335))

(declare-fun m!2645337 () Bool)

(assert (=> b!2203268 m!2645337))

(check-sat (not b!2203278) (not b!2203272) (not setNonEmpty!19078) (not b!2203270) (not b!2203279) (not b!2203273) (not start!214130) (not b!2203276) (not b!2203275) (not b!2203268))
(check-sat)
