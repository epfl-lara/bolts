; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212730 () Bool)

(assert start!212730)

(declare-fun b!2193306 () Bool)

(declare-fun e!1401691 () Bool)

(declare-datatypes ((C!12440 0))(
  ( (C!12441 (val!7206 Int)) )
))
(declare-datatypes ((List!25572 0))(
  ( (Nil!25488) (Cons!25488 (h!30889 C!12440) (t!198170 List!25572)) )
))
(declare-datatypes ((IArray!16571 0))(
  ( (IArray!16572 (innerList!8343 List!25572)) )
))
(declare-datatypes ((Conc!8283 0))(
  ( (Node!8283 (left!19559 Conc!8283) (right!19889 Conc!8283) (csize!16796 Int) (cheight!8494 Int)) (Leaf!12124 (xs!11225 IArray!16571) (csize!16797 Int)) (Empty!8283) )
))
(declare-datatypes ((BalanceConc!16328 0))(
  ( (BalanceConc!16329 (c!348952 Conc!8283)) )
))
(declare-fun totalInput!923 () BalanceConc!16328)

(declare-fun tp!683540 () Bool)

(declare-fun inv!34079 (Conc!8283) Bool)

(assert (=> b!2193306 (= e!1401691 (and (inv!34079 (c!348952 totalInput!923)) tp!683540))))

(declare-fun e!1401690 () Bool)

(declare-fun lt!820150 () Int)

(declare-fun from!1114 () Int)

(declare-fun b!2193307 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6147 0))(
  ( (ElementMatch!6147 (c!348953 C!12440)) (Concat!10449 (regOne!12806 Regex!6147) (regTwo!12806 Regex!6147)) (EmptyExpr!6147) (Star!6147 (reg!6476 Regex!6147)) (EmptyLang!6147) (Union!6147 (regOne!12807 Regex!6147) (regTwo!12807 Regex!6147)) )
))
(declare-datatypes ((List!25573 0))(
  ( (Nil!25489) (Cons!25489 (h!30890 Regex!6147) (t!198171 List!25573)) )
))
(declare-datatypes ((Context!3434 0))(
  ( (Context!3435 (exprs!2217 List!25573)) )
))
(declare-fun lt!820154 () (InoxSet Context!3434))

(declare-fun matchZipper!243 ((InoxSet Context!3434) List!25572) Bool)

(declare-fun take!335 (List!25572 Int) List!25572)

(declare-fun drop!1345 (List!25572 Int) List!25572)

(declare-fun list!9795 (BalanceConc!16328) List!25572)

(assert (=> b!2193307 (= e!1401690 (matchZipper!243 lt!820154 (take!335 (drop!1345 (list!9795 totalInput!923) (+ 1 from!1114)) lt!820150)))))

(declare-fun b!2193308 () Bool)

(declare-fun res!942984 () Bool)

(declare-fun e!1401697 () Bool)

(assert (=> b!2193308 (=> (not res!942984) (not e!1401697))))

(declare-fun z!3955 () (InoxSet Context!3434))

(declare-fun lostCauseZipper!265 ((InoxSet Context!3434)) Bool)

(assert (=> b!2193308 (= res!942984 (not (lostCauseZipper!265 z!3955)))))

(declare-fun setRes!18684 () Bool)

(declare-fun setElem!18684 () Context!3434)

(declare-fun e!1401692 () Bool)

(declare-fun tp!683541 () Bool)

(declare-fun setNonEmpty!18684 () Bool)

(declare-fun inv!34080 (Context!3434) Bool)

(assert (=> setNonEmpty!18684 (= setRes!18684 (and tp!683541 (inv!34080 setElem!18684) e!1401692))))

(declare-fun setRest!18684 () (InoxSet Context!3434))

(assert (=> setNonEmpty!18684 (= z!3955 ((_ map or) (store ((as const (Array Context!3434 Bool)) false) setElem!18684 true) setRest!18684))))

(declare-fun b!2193309 () Bool)

(declare-fun e!1401693 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2193309 (= e!1401693 lastNullablePos!193)))

(declare-fun b!2193310 () Bool)

(assert (=> b!2193310 (= e!1401693 from!1114)))

(declare-fun res!942990 () Bool)

(declare-fun e!1401694 () Bool)

(assert (=> start!212730 (=> (not res!942990) (not e!1401694))))

(assert (=> start!212730 (= res!942990 (>= from!1114 0))))

(assert (=> start!212730 e!1401694))

(assert (=> start!212730 true))

(declare-fun inv!34081 (BalanceConc!16328) Bool)

(assert (=> start!212730 (and (inv!34081 totalInput!923) e!1401691)))

(declare-fun condSetEmpty!18684 () Bool)

(assert (=> start!212730 (= condSetEmpty!18684 (= z!3955 ((as const (Array Context!3434 Bool)) false)))))

(assert (=> start!212730 setRes!18684))

(declare-fun b!2193311 () Bool)

(declare-fun e!1401695 () Bool)

(assert (=> b!2193311 (= e!1401695 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2193312 () Bool)

(declare-fun res!942991 () Bool)

(assert (=> b!2193312 (=> (not res!942991) (not e!1401697))))

(declare-fun lt!820156 () Int)

(assert (=> b!2193312 (= res!942991 (not (= from!1114 lt!820156)))))

(declare-fun b!2193313 () Bool)

(declare-fun tp!683542 () Bool)

(assert (=> b!2193313 (= e!1401692 tp!683542)))

(declare-fun b!2193314 () Bool)

(declare-fun res!942985 () Bool)

(assert (=> b!2193314 (=> (not res!942985) (not e!1401697))))

(assert (=> b!2193314 (= res!942985 e!1401695)))

(declare-fun res!942986 () Bool)

(assert (=> b!2193314 (=> res!942986 e!1401695)))

(declare-fun nullableZipper!427 ((InoxSet Context!3434)) Bool)

(assert (=> b!2193314 (= res!942986 (not (nullableZipper!427 z!3955)))))

(declare-fun b!2193315 () Bool)

(declare-fun e!1401696 () Bool)

(assert (=> b!2193315 (= e!1401697 e!1401696)))

(declare-fun res!942989 () Bool)

(assert (=> b!2193315 (=> (not res!942989) (not e!1401696))))

(declare-fun lt!820155 () Int)

(declare-fun lt!820151 () Int)

(assert (=> b!2193315 (= res!942989 (= lt!820155 lt!820151))))

(declare-fun lt!820153 () Int)

(declare-fun furthestNullablePosition!317 ((InoxSet Context!3434) Int BalanceConc!16328 Int Int) Int)

(assert (=> b!2193315 (= lt!820151 (furthestNullablePosition!317 lt!820154 (+ 1 from!1114) totalInput!923 lt!820156 lt!820153))))

(assert (=> b!2193315 (= lt!820155 (furthestNullablePosition!317 z!3955 from!1114 totalInput!923 lt!820156 lastNullablePos!193))))

(assert (=> b!2193315 (= lt!820153 e!1401693)))

(declare-fun c!348951 () Bool)

(assert (=> b!2193315 (= c!348951 (nullableZipper!427 lt!820154))))

(declare-fun derivationStepZipper!221 ((InoxSet Context!3434) C!12440) (InoxSet Context!3434))

(declare-fun apply!6197 (BalanceConc!16328 Int) C!12440)

(assert (=> b!2193315 (= lt!820154 (derivationStepZipper!221 z!3955 (apply!6197 totalInput!923 from!1114)))))

(declare-fun b!2193316 () Bool)

(assert (=> b!2193316 (= e!1401696 (not (or (> lt!820150 0) (> lt!820151 from!1114) (< lt!820151 lt!820153) (< lt!820153 lastNullablePos!193) (> lt!820153 from!1114) (and (not (= lt!820153 from!1114)) (not (= lt!820153 lastNullablePos!193))) (not (= lt!820153 lastNullablePos!193)) (>= lt!820153 from!1114) (<= lt!820155 from!1114))))))

(assert (=> b!2193316 e!1401690))

(declare-fun res!942988 () Bool)

(assert (=> b!2193316 (=> res!942988 e!1401690)))

(assert (=> b!2193316 (= res!942988 (<= lt!820150 0))))

(assert (=> b!2193316 (= lt!820150 (+ 1 (- lt!820151 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38601 0))(
  ( (Unit!38602) )
))
(declare-fun lt!820152 () Unit!38601)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!146 ((InoxSet Context!3434) Int BalanceConc!16328 Int) Unit!38601)

(assert (=> b!2193316 (= lt!820152 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!146 lt!820154 (+ 1 from!1114) totalInput!923 lt!820153))))

(declare-fun b!2193317 () Bool)

(assert (=> b!2193317 (= e!1401694 e!1401697)))

(declare-fun res!942987 () Bool)

(assert (=> b!2193317 (=> (not res!942987) (not e!1401697))))

(assert (=> b!2193317 (= res!942987 (and (<= from!1114 lt!820156) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19877 (BalanceConc!16328) Int)

(assert (=> b!2193317 (= lt!820156 (size!19877 totalInput!923))))

(declare-fun setIsEmpty!18684 () Bool)

(assert (=> setIsEmpty!18684 setRes!18684))

(assert (= (and start!212730 res!942990) b!2193317))

(assert (= (and b!2193317 res!942987) b!2193314))

(assert (= (and b!2193314 (not res!942986)) b!2193311))

(assert (= (and b!2193314 res!942985) b!2193312))

(assert (= (and b!2193312 res!942991) b!2193308))

(assert (= (and b!2193308 res!942984) b!2193315))

(assert (= (and b!2193315 c!348951) b!2193310))

(assert (= (and b!2193315 (not c!348951)) b!2193309))

(assert (= (and b!2193315 res!942989) b!2193316))

(assert (= (and b!2193316 (not res!942988)) b!2193307))

(assert (= start!212730 b!2193306))

(assert (= (and start!212730 condSetEmpty!18684) setIsEmpty!18684))

(assert (= (and start!212730 (not condSetEmpty!18684)) setNonEmpty!18684))

(assert (= setNonEmpty!18684 b!2193313))

(declare-fun m!2635883 () Bool)

(assert (=> start!212730 m!2635883))

(declare-fun m!2635885 () Bool)

(assert (=> b!2193316 m!2635885))

(declare-fun m!2635887 () Bool)

(assert (=> setNonEmpty!18684 m!2635887))

(declare-fun m!2635889 () Bool)

(assert (=> b!2193315 m!2635889))

(declare-fun m!2635891 () Bool)

(assert (=> b!2193315 m!2635891))

(declare-fun m!2635893 () Bool)

(assert (=> b!2193315 m!2635893))

(declare-fun m!2635895 () Bool)

(assert (=> b!2193315 m!2635895))

(assert (=> b!2193315 m!2635895))

(declare-fun m!2635897 () Bool)

(assert (=> b!2193315 m!2635897))

(declare-fun m!2635899 () Bool)

(assert (=> b!2193308 m!2635899))

(declare-fun m!2635901 () Bool)

(assert (=> b!2193306 m!2635901))

(declare-fun m!2635903 () Bool)

(assert (=> b!2193314 m!2635903))

(declare-fun m!2635905 () Bool)

(assert (=> b!2193307 m!2635905))

(assert (=> b!2193307 m!2635905))

(declare-fun m!2635907 () Bool)

(assert (=> b!2193307 m!2635907))

(assert (=> b!2193307 m!2635907))

(declare-fun m!2635909 () Bool)

(assert (=> b!2193307 m!2635909))

(assert (=> b!2193307 m!2635909))

(declare-fun m!2635911 () Bool)

(assert (=> b!2193307 m!2635911))

(declare-fun m!2635913 () Bool)

(assert (=> b!2193317 m!2635913))

(check-sat (not b!2193315) (not b!2193314) (not b!2193308) (not b!2193317) (not setNonEmpty!18684) (not b!2193316) (not b!2193306) (not b!2193307) (not start!212730) (not b!2193313))
(check-sat)
