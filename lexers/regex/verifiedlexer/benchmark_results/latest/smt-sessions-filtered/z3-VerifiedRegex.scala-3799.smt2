; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212446 () Bool)

(assert start!212446)

(declare-fun b!2189818 () Bool)

(declare-fun e!1399338 () Bool)

(declare-fun e!1399345 () Bool)

(assert (=> b!2189818 (= e!1399338 e!1399345)))

(declare-fun res!940797 () Bool)

(assert (=> b!2189818 (=> (not res!940797) (not e!1399345))))

(declare-fun lastNullablePos!193 () Int)

(declare-fun lt!818087 () Int)

(declare-fun from!1114 () Int)

(assert (=> b!2189818 (= res!940797 (and (<= from!1114 lt!818087) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12276 0))(
  ( (C!12277 (val!7124 Int)) )
))
(declare-datatypes ((List!25403 0))(
  ( (Nil!25319) (Cons!25319 (h!30720 C!12276) (t!198001 List!25403)) )
))
(declare-datatypes ((IArray!16407 0))(
  ( (IArray!16408 (innerList!8261 List!25403)) )
))
(declare-datatypes ((Conc!8201 0))(
  ( (Node!8201 (left!19428 Conc!8201) (right!19758 Conc!8201) (csize!16632 Int) (cheight!8412 Int)) (Leaf!12001 (xs!11143 IArray!16407) (csize!16633 Int)) (Empty!8201) )
))
(declare-datatypes ((BalanceConc!16164 0))(
  ( (BalanceConc!16165 (c!348382 Conc!8201)) )
))
(declare-fun totalInput!923 () BalanceConc!16164)

(declare-fun size!19781 (BalanceConc!16164) Int)

(assert (=> b!2189818 (= lt!818087 (size!19781 totalInput!923))))

(declare-fun b!2189819 () Bool)

(declare-fun e!1399340 () Bool)

(assert (=> b!2189819 (= e!1399340 false)))

(declare-fun lt!818088 () Bool)

(declare-fun e!1399339 () Bool)

(assert (=> b!2189819 (= lt!818088 e!1399339)))

(declare-fun res!940796 () Bool)

(assert (=> b!2189819 (=> res!940796 e!1399339)))

(declare-fun lt!818090 () Int)

(assert (=> b!2189819 (= res!940796 (<= lt!818090 0))))

(declare-fun lt!818089 () Int)

(assert (=> b!2189819 (= lt!818090 (+ 1 (- lt!818089 from!1114)))))

(declare-fun b!2189820 () Bool)

(declare-fun e!1399341 () Bool)

(assert (=> b!2189820 (= e!1399341 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2189821 () Bool)

(declare-fun res!940800 () Bool)

(assert (=> b!2189821 (=> (not res!940800) (not e!1399345))))

(declare-fun e!1399343 () Bool)

(assert (=> b!2189821 (= res!940800 e!1399343)))

(declare-fun res!940801 () Bool)

(assert (=> b!2189821 (=> res!940801 e!1399343)))

(assert (=> b!2189821 (= res!940801 (= from!1114 lt!818087))))

(declare-fun b!2189822 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6065 0))(
  ( (ElementMatch!6065 (c!348383 C!12276)) (Concat!10367 (regOne!12642 Regex!6065) (regTwo!12642 Regex!6065)) (EmptyExpr!6065) (Star!6065 (reg!6394 Regex!6065)) (EmptyLang!6065) (Union!6065 (regOne!12643 Regex!6065) (regTwo!12643 Regex!6065)) )
))
(declare-datatypes ((List!25404 0))(
  ( (Nil!25320) (Cons!25320 (h!30721 Regex!6065) (t!198002 List!25404)) )
))
(declare-datatypes ((Context!3270 0))(
  ( (Context!3271 (exprs!2135 List!25404)) )
))
(declare-fun z!3955 () (InoxSet Context!3270))

(declare-fun lostCauseZipper!183 ((InoxSet Context!3270)) Bool)

(assert (=> b!2189822 (= e!1399343 (lostCauseZipper!183 z!3955))))

(declare-fun setIsEmpty!18420 () Bool)

(declare-fun setRes!18420 () Bool)

(assert (=> setIsEmpty!18420 setRes!18420))

(declare-fun b!2189823 () Bool)

(declare-fun e!1399344 () Bool)

(declare-fun tp!682678 () Bool)

(declare-fun inv!33693 (Conc!8201) Bool)

(assert (=> b!2189823 (= e!1399344 (and (inv!33693 (c!348382 totalInput!923)) tp!682678))))

(declare-fun res!940798 () Bool)

(assert (=> start!212446 (=> (not res!940798) (not e!1399338))))

(assert (=> start!212446 (= res!940798 (>= from!1114 0))))

(assert (=> start!212446 e!1399338))

(assert (=> start!212446 true))

(declare-fun inv!33694 (BalanceConc!16164) Bool)

(assert (=> start!212446 (and (inv!33694 totalInput!923) e!1399344)))

(declare-fun condSetEmpty!18420 () Bool)

(assert (=> start!212446 (= condSetEmpty!18420 (= z!3955 ((as const (Array Context!3270 Bool)) false)))))

(assert (=> start!212446 setRes!18420))

(declare-fun b!2189824 () Bool)

(declare-fun e!1399342 () Bool)

(declare-fun tp!682676 () Bool)

(assert (=> b!2189824 (= e!1399342 tp!682676)))

(declare-fun tp!682677 () Bool)

(declare-fun setElem!18420 () Context!3270)

(declare-fun setNonEmpty!18420 () Bool)

(declare-fun inv!33695 (Context!3270) Bool)

(assert (=> setNonEmpty!18420 (= setRes!18420 (and tp!682677 (inv!33695 setElem!18420) e!1399342))))

(declare-fun setRest!18420 () (InoxSet Context!3270))

(assert (=> setNonEmpty!18420 (= z!3955 ((_ map or) (store ((as const (Array Context!3270 Bool)) false) setElem!18420 true) setRest!18420))))

(declare-fun b!2189825 () Bool)

(assert (=> b!2189825 (= e!1399345 e!1399340)))

(declare-fun res!940799 () Bool)

(assert (=> b!2189825 (=> (not res!940799) (not e!1399340))))

(assert (=> b!2189825 (= res!940799 (= lt!818089 lastNullablePos!193))))

(declare-fun furthestNullablePosition!245 ((InoxSet Context!3270) Int BalanceConc!16164 Int Int) Int)

(assert (=> b!2189825 (= lt!818089 (furthestNullablePosition!245 z!3955 from!1114 totalInput!923 lt!818087 lastNullablePos!193))))

(declare-fun b!2189826 () Bool)

(declare-fun matchZipper!177 ((InoxSet Context!3270) List!25403) Bool)

(declare-fun take!269 (List!25403 Int) List!25403)

(declare-fun drop!1279 (List!25403 Int) List!25403)

(declare-fun list!9724 (BalanceConc!16164) List!25403)

(assert (=> b!2189826 (= e!1399339 (matchZipper!177 z!3955 (take!269 (drop!1279 (list!9724 totalInput!923) from!1114) lt!818090)))))

(declare-fun b!2189827 () Bool)

(declare-fun res!940802 () Bool)

(assert (=> b!2189827 (=> (not res!940802) (not e!1399345))))

(assert (=> b!2189827 (= res!940802 e!1399341)))

(declare-fun res!940803 () Bool)

(assert (=> b!2189827 (=> res!940803 e!1399341)))

(declare-fun nullableZipper!345 ((InoxSet Context!3270)) Bool)

(assert (=> b!2189827 (= res!940803 (not (nullableZipper!345 z!3955)))))

(assert (= (and start!212446 res!940798) b!2189818))

(assert (= (and b!2189818 res!940797) b!2189827))

(assert (= (and b!2189827 (not res!940803)) b!2189820))

(assert (= (and b!2189827 res!940802) b!2189821))

(assert (= (and b!2189821 (not res!940801)) b!2189822))

(assert (= (and b!2189821 res!940800) b!2189825))

(assert (= (and b!2189825 res!940799) b!2189819))

(assert (= (and b!2189819 (not res!940796)) b!2189826))

(assert (= start!212446 b!2189823))

(assert (= (and start!212446 condSetEmpty!18420) setIsEmpty!18420))

(assert (= (and start!212446 (not condSetEmpty!18420)) setNonEmpty!18420))

(assert (= setNonEmpty!18420 b!2189824))

(declare-fun m!2632825 () Bool)

(assert (=> b!2189826 m!2632825))

(assert (=> b!2189826 m!2632825))

(declare-fun m!2632827 () Bool)

(assert (=> b!2189826 m!2632827))

(assert (=> b!2189826 m!2632827))

(declare-fun m!2632829 () Bool)

(assert (=> b!2189826 m!2632829))

(assert (=> b!2189826 m!2632829))

(declare-fun m!2632831 () Bool)

(assert (=> b!2189826 m!2632831))

(declare-fun m!2632833 () Bool)

(assert (=> b!2189822 m!2632833))

(declare-fun m!2632835 () Bool)

(assert (=> b!2189823 m!2632835))

(declare-fun m!2632837 () Bool)

(assert (=> setNonEmpty!18420 m!2632837))

(declare-fun m!2632839 () Bool)

(assert (=> b!2189827 m!2632839))

(declare-fun m!2632841 () Bool)

(assert (=> start!212446 m!2632841))

(declare-fun m!2632843 () Bool)

(assert (=> b!2189825 m!2632843))

(declare-fun m!2632845 () Bool)

(assert (=> b!2189818 m!2632845))

(check-sat (not b!2189824) (not b!2189825) (not b!2189822) (not b!2189823) (not setNonEmpty!18420) (not b!2189827) (not b!2189818) (not start!212446) (not b!2189826))
(check-sat)
