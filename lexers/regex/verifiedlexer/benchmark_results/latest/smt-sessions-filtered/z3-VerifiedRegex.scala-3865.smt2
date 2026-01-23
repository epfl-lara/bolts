; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213590 () Bool)

(assert start!213590)

(declare-fun b!2199714 () Bool)

(declare-fun res!945382 () Bool)

(declare-fun e!1405738 () Bool)

(assert (=> b!2199714 (=> (not res!945382) (not e!1405738))))

(declare-datatypes ((C!12540 0))(
  ( (C!12541 (val!7256 Int)) )
))
(declare-datatypes ((List!25688 0))(
  ( (Nil!25604) (Cons!25604 (h!31005 C!12540) (t!198306 List!25688)) )
))
(declare-datatypes ((IArray!16671 0))(
  ( (IArray!16672 (innerList!8393 List!25688)) )
))
(declare-datatypes ((Conc!8333 0))(
  ( (Node!8333 (left!19666 Conc!8333) (right!19996 Conc!8333) (csize!16896 Int) (cheight!8544 Int)) (Leaf!12199 (xs!11275 IArray!16671) (csize!16897 Int)) (Empty!8333) )
))
(declare-datatypes ((BalanceConc!16428 0))(
  ( (BalanceConc!16429 (c!350840 Conc!8333)) )
))
(declare-fun totalInput!891 () BalanceConc!16428)

(declare-fun isEmpty!14605 (BalanceConc!16428) Bool)

(assert (=> b!2199714 (= res!945382 (isEmpty!14605 totalInput!891))))

(declare-fun b!2199715 () Bool)

(assert (=> b!2199715 (= e!1405738 false)))

(declare-fun lastNullablePos!161 () Int)

(declare-fun lt!822870 () Int)

(declare-fun lt!822869 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6197 0))(
  ( (ElementMatch!6197 (c!350841 C!12540)) (Concat!10499 (regOne!12906 Regex!6197) (regTwo!12906 Regex!6197)) (EmptyExpr!6197) (Star!6197 (reg!6526 Regex!6197)) (EmptyLang!6197) (Union!6197 (regOne!12907 Regex!6197) (regTwo!12907 Regex!6197)) )
))
(declare-datatypes ((List!25689 0))(
  ( (Nil!25605) (Cons!25605 (h!31006 Regex!6197) (t!198307 List!25689)) )
))
(declare-datatypes ((Context!3534 0))(
  ( (Context!3535 (exprs!2267 List!25689)) )
))
(declare-fun z!3888 () (InoxSet Context!3534))

(declare-fun from!1082 () Int)

(declare-fun furthestNullablePosition!363 ((InoxSet Context!3534) Int BalanceConc!16428 Int Int) Int)

(assert (=> b!2199715 (= lt!822869 (furthestNullablePosition!363 z!3888 from!1082 totalInput!891 lt!822870 lastNullablePos!161))))

(declare-fun b!2199716 () Bool)

(declare-fun e!1405737 () Bool)

(declare-fun tp!684587 () Bool)

(assert (=> b!2199716 (= e!1405737 tp!684587)))

(declare-fun b!2199717 () Bool)

(declare-fun res!945377 () Bool)

(assert (=> b!2199717 (=> (not res!945377) (not e!1405738))))

(assert (=> b!2199717 (= res!945377 (= from!1082 0))))

(declare-fun b!2199718 () Bool)

(declare-fun res!945383 () Bool)

(assert (=> b!2199718 (=> (not res!945383) (not e!1405738))))

(declare-fun e!1405739 () Bool)

(assert (=> b!2199718 (= res!945383 e!1405739)))

(declare-fun res!945378 () Bool)

(assert (=> b!2199718 (=> res!945378 e!1405739)))

(declare-fun nullableZipper!477 ((InoxSet Context!3534)) Bool)

(assert (=> b!2199718 (= res!945378 (not (nullableZipper!477 z!3888)))))

(declare-fun b!2199719 () Bool)

(assert (=> b!2199719 (= e!1405739 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun res!945380 () Bool)

(declare-fun e!1405741 () Bool)

(assert (=> start!213590 (=> (not res!945380) (not e!1405741))))

(assert (=> start!213590 (= res!945380 (>= from!1082 0))))

(assert (=> start!213590 e!1405741))

(assert (=> start!213590 true))

(declare-fun e!1405740 () Bool)

(declare-fun inv!34345 (BalanceConc!16428) Bool)

(assert (=> start!213590 (and (inv!34345 totalInput!891) e!1405740)))

(declare-fun condSetEmpty!18894 () Bool)

(assert (=> start!213590 (= condSetEmpty!18894 (= z!3888 ((as const (Array Context!3534 Bool)) false)))))

(declare-fun setRes!18894 () Bool)

(assert (=> start!213590 setRes!18894))

(declare-fun setElem!18894 () Context!3534)

(declare-fun setNonEmpty!18894 () Bool)

(declare-fun tp!684588 () Bool)

(declare-fun inv!34346 (Context!3534) Bool)

(assert (=> setNonEmpty!18894 (= setRes!18894 (and tp!684588 (inv!34346 setElem!18894) e!1405737))))

(declare-fun setRest!18894 () (InoxSet Context!3534))

(assert (=> setNonEmpty!18894 (= z!3888 ((_ map or) (store ((as const (Array Context!3534 Bool)) false) setElem!18894 true) setRest!18894))))

(declare-fun b!2199720 () Bool)

(declare-fun tp!684586 () Bool)

(declare-fun inv!34347 (Conc!8333) Bool)

(assert (=> b!2199720 (= e!1405740 (and (inv!34347 (c!350840 totalInput!891)) tp!684586))))

(declare-fun b!2199721 () Bool)

(assert (=> b!2199721 (= e!1405741 e!1405738)))

(declare-fun res!945379 () Bool)

(assert (=> b!2199721 (=> (not res!945379) (not e!1405738))))

(declare-fun knownSize!10 () Int)

(assert (=> b!2199721 (= res!945379 (and (<= from!1082 lt!822870) (>= knownSize!10 0) (<= knownSize!10 (- lt!822870 from!1082))))))

(declare-fun size!19962 (BalanceConc!16428) Int)

(assert (=> b!2199721 (= lt!822870 (size!19962 totalInput!891))))

(declare-fun b!2199722 () Bool)

(declare-fun res!945376 () Bool)

(assert (=> b!2199722 (=> (not res!945376) (not e!1405738))))

(assert (=> b!2199722 (= res!945376 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2199723 () Bool)

(declare-fun res!945381 () Bool)

(assert (=> b!2199723 (=> (not res!945381) (not e!1405738))))

(declare-fun matchZipper!283 ((InoxSet Context!3534) List!25688) Bool)

(declare-fun take!375 (List!25688 Int) List!25688)

(declare-fun drop!1385 (List!25688 Int) List!25688)

(declare-fun list!9855 (BalanceConc!16428) List!25688)

(assert (=> b!2199723 (= res!945381 (matchZipper!283 z!3888 (take!375 (drop!1385 (list!9855 totalInput!891) from!1082) knownSize!10)))))

(declare-fun setIsEmpty!18894 () Bool)

(assert (=> setIsEmpty!18894 setRes!18894))

(assert (= (and start!213590 res!945380) b!2199721))

(assert (= (and b!2199721 res!945379) b!2199723))

(assert (= (and b!2199723 res!945381) b!2199722))

(assert (= (and b!2199722 res!945376) b!2199718))

(assert (= (and b!2199718 (not res!945378)) b!2199719))

(assert (= (and b!2199718 res!945383) b!2199714))

(assert (= (and b!2199714 res!945382) b!2199717))

(assert (= (and b!2199717 res!945377) b!2199715))

(assert (= start!213590 b!2199720))

(assert (= (and start!213590 condSetEmpty!18894) setIsEmpty!18894))

(assert (= (and start!213590 (not condSetEmpty!18894)) setNonEmpty!18894))

(assert (= setNonEmpty!18894 b!2199716))

(declare-fun m!2642577 () Bool)

(assert (=> b!2199723 m!2642577))

(assert (=> b!2199723 m!2642577))

(declare-fun m!2642579 () Bool)

(assert (=> b!2199723 m!2642579))

(assert (=> b!2199723 m!2642579))

(declare-fun m!2642581 () Bool)

(assert (=> b!2199723 m!2642581))

(assert (=> b!2199723 m!2642581))

(declare-fun m!2642583 () Bool)

(assert (=> b!2199723 m!2642583))

(declare-fun m!2642585 () Bool)

(assert (=> setNonEmpty!18894 m!2642585))

(declare-fun m!2642587 () Bool)

(assert (=> b!2199715 m!2642587))

(declare-fun m!2642589 () Bool)

(assert (=> start!213590 m!2642589))

(declare-fun m!2642591 () Bool)

(assert (=> b!2199714 m!2642591))

(declare-fun m!2642593 () Bool)

(assert (=> b!2199720 m!2642593))

(declare-fun m!2642595 () Bool)

(assert (=> b!2199721 m!2642595))

(declare-fun m!2642597 () Bool)

(assert (=> b!2199718 m!2642597))

(check-sat (not setNonEmpty!18894) (not b!2199716) (not b!2199721) (not start!213590) (not b!2199720) (not b!2199714) (not b!2199718) (not b!2199723) (not b!2199715))
(check-sat)
