; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212734 () Bool)

(assert start!212734)

(declare-fun b!2193378 () Bool)

(declare-fun res!943037 () Bool)

(declare-fun e!1401738 () Bool)

(assert (=> b!2193378 (=> (not res!943037) (not e!1401738))))

(declare-fun e!1401741 () Bool)

(assert (=> b!2193378 (= res!943037 e!1401741)))

(declare-fun res!943038 () Bool)

(assert (=> b!2193378 (=> res!943038 e!1401741)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12444 0))(
  ( (C!12445 (val!7208 Int)) )
))
(declare-datatypes ((Regex!6149 0))(
  ( (ElementMatch!6149 (c!348962 C!12444)) (Concat!10451 (regOne!12810 Regex!6149) (regTwo!12810 Regex!6149)) (EmptyExpr!6149) (Star!6149 (reg!6478 Regex!6149)) (EmptyLang!6149) (Union!6149 (regOne!12811 Regex!6149) (regTwo!12811 Regex!6149)) )
))
(declare-datatypes ((List!25576 0))(
  ( (Nil!25492) (Cons!25492 (h!30893 Regex!6149) (t!198174 List!25576)) )
))
(declare-datatypes ((Context!3438 0))(
  ( (Context!3439 (exprs!2219 List!25576)) )
))
(declare-fun z!3955 () (InoxSet Context!3438))

(declare-fun nullableZipper!429 ((InoxSet Context!3438)) Bool)

(assert (=> b!2193378 (= res!943038 (not (nullableZipper!429 z!3955)))))

(declare-fun b!2193379 () Bool)

(declare-fun res!943033 () Bool)

(assert (=> b!2193379 (=> (not res!943033) (not e!1401738))))

(declare-fun from!1114 () Int)

(declare-fun lt!820196 () Int)

(assert (=> b!2193379 (= res!943033 (not (= from!1114 lt!820196)))))

(declare-fun b!2193380 () Bool)

(declare-fun res!943035 () Bool)

(assert (=> b!2193380 (=> (not res!943035) (not e!1401738))))

(declare-fun lostCauseZipper!267 ((InoxSet Context!3438)) Bool)

(assert (=> b!2193380 (= res!943035 (not (lostCauseZipper!267 z!3955)))))

(declare-fun b!2193381 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2193381 (= e!1401741 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun setElem!18690 () Context!3438)

(declare-fun setNonEmpty!18690 () Bool)

(declare-fun setRes!18690 () Bool)

(declare-fun tp!683558 () Bool)

(declare-fun e!1401745 () Bool)

(declare-fun inv!34088 (Context!3438) Bool)

(assert (=> setNonEmpty!18690 (= setRes!18690 (and tp!683558 (inv!34088 setElem!18690) e!1401745))))

(declare-fun setRest!18690 () (InoxSet Context!3438))

(assert (=> setNonEmpty!18690 (= z!3955 ((_ map or) (store ((as const (Array Context!3438 Bool)) false) setElem!18690 true) setRest!18690))))

(declare-fun b!2193382 () Bool)

(declare-fun e!1401742 () Int)

(assert (=> b!2193382 (= e!1401742 lastNullablePos!193)))

(declare-fun e!1401740 () Bool)

(declare-datatypes ((List!25577 0))(
  ( (Nil!25493) (Cons!25493 (h!30894 C!12444) (t!198175 List!25577)) )
))
(declare-datatypes ((IArray!16575 0))(
  ( (IArray!16576 (innerList!8345 List!25577)) )
))
(declare-datatypes ((Conc!8285 0))(
  ( (Node!8285 (left!19562 Conc!8285) (right!19892 Conc!8285) (csize!16800 Int) (cheight!8496 Int)) (Leaf!12127 (xs!11227 IArray!16575) (csize!16801 Int)) (Empty!8285) )
))
(declare-datatypes ((BalanceConc!16332 0))(
  ( (BalanceConc!16333 (c!348963 Conc!8285)) )
))
(declare-fun totalInput!923 () BalanceConc!16332)

(declare-fun b!2193383 () Bool)

(declare-fun lt!820197 () (InoxSet Context!3438))

(declare-fun lt!820193 () Int)

(declare-fun matchZipper!245 ((InoxSet Context!3438) List!25577) Bool)

(declare-fun take!337 (List!25577 Int) List!25577)

(declare-fun drop!1347 (List!25577 Int) List!25577)

(declare-fun list!9797 (BalanceConc!16332) List!25577)

(assert (=> b!2193383 (= e!1401740 (matchZipper!245 lt!820197 (take!337 (drop!1347 (list!9797 totalInput!923) (+ 1 from!1114)) lt!820193)))))

(declare-fun b!2193384 () Bool)

(assert (=> b!2193384 (= e!1401742 from!1114)))

(declare-fun res!943034 () Bool)

(declare-fun e!1401739 () Bool)

(assert (=> start!212734 (=> (not res!943034) (not e!1401739))))

(assert (=> start!212734 (= res!943034 (>= from!1114 0))))

(assert (=> start!212734 e!1401739))

(assert (=> start!212734 true))

(declare-fun e!1401743 () Bool)

(declare-fun inv!34089 (BalanceConc!16332) Bool)

(assert (=> start!212734 (and (inv!34089 totalInput!923) e!1401743)))

(declare-fun condSetEmpty!18690 () Bool)

(assert (=> start!212734 (= condSetEmpty!18690 (= z!3955 ((as const (Array Context!3438 Bool)) false)))))

(assert (=> start!212734 setRes!18690))

(declare-fun b!2193385 () Bool)

(declare-fun tp!683560 () Bool)

(assert (=> b!2193385 (= e!1401745 tp!683560)))

(declare-fun b!2193386 () Bool)

(assert (=> b!2193386 (= e!1401739 e!1401738)))

(declare-fun res!943032 () Bool)

(assert (=> b!2193386 (=> (not res!943032) (not e!1401738))))

(assert (=> b!2193386 (= res!943032 (and (<= from!1114 lt!820196) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19879 (BalanceConc!16332) Int)

(assert (=> b!2193386 (= lt!820196 (size!19879 totalInput!923))))

(declare-fun b!2193387 () Bool)

(declare-fun e!1401744 () Bool)

(assert (=> b!2193387 (= e!1401738 e!1401744)))

(declare-fun res!943039 () Bool)

(assert (=> b!2193387 (=> (not res!943039) (not e!1401744))))

(declare-fun lt!820194 () Int)

(declare-fun lt!820198 () Int)

(assert (=> b!2193387 (= res!943039 (= lt!820194 lt!820198))))

(declare-fun lt!820195 () Int)

(declare-fun furthestNullablePosition!319 ((InoxSet Context!3438) Int BalanceConc!16332 Int Int) Int)

(assert (=> b!2193387 (= lt!820198 (furthestNullablePosition!319 lt!820197 (+ 1 from!1114) totalInput!923 lt!820196 lt!820195))))

(assert (=> b!2193387 (= lt!820194 (furthestNullablePosition!319 z!3955 from!1114 totalInput!923 lt!820196 lastNullablePos!193))))

(assert (=> b!2193387 (= lt!820195 e!1401742)))

(declare-fun c!348961 () Bool)

(assert (=> b!2193387 (= c!348961 (nullableZipper!429 lt!820197))))

(declare-fun derivationStepZipper!223 ((InoxSet Context!3438) C!12444) (InoxSet Context!3438))

(declare-fun apply!6199 (BalanceConc!16332 Int) C!12444)

(assert (=> b!2193387 (= lt!820197 (derivationStepZipper!223 z!3955 (apply!6199 totalInput!923 from!1114)))))

(declare-fun b!2193388 () Bool)

(declare-fun tp!683559 () Bool)

(declare-fun inv!34090 (Conc!8285) Bool)

(assert (=> b!2193388 (= e!1401743 (and (inv!34090 (c!348963 totalInput!923)) tp!683559))))

(declare-fun setIsEmpty!18690 () Bool)

(assert (=> setIsEmpty!18690 setRes!18690))

(declare-fun b!2193389 () Bool)

(assert (=> b!2193389 (= e!1401744 (not (or (> lt!820193 0) (> lt!820198 from!1114) (< lt!820198 lt!820195) (< lt!820195 lastNullablePos!193) (> lt!820195 from!1114) (and (not (= lt!820195 from!1114)) (not (= lt!820195 lastNullablePos!193))) (not (= lt!820195 lastNullablePos!193)) (>= lt!820195 from!1114) (> lt!820194 from!1114) (<= (+ 1 (- lt!820194 from!1114)) 1))))))

(assert (=> b!2193389 e!1401740))

(declare-fun res!943036 () Bool)

(assert (=> b!2193389 (=> res!943036 e!1401740)))

(assert (=> b!2193389 (= res!943036 (<= lt!820193 0))))

(assert (=> b!2193389 (= lt!820193 (+ 1 (- lt!820198 (+ 1 from!1114))))))

(declare-datatypes ((Unit!38605 0))(
  ( (Unit!38606) )
))
(declare-fun lt!820192 () Unit!38605)

(declare-fun longestMatchIsAcceptedByMatchOrIsEmptyRecV3!148 ((InoxSet Context!3438) Int BalanceConc!16332 Int) Unit!38605)

(assert (=> b!2193389 (= lt!820192 (longestMatchIsAcceptedByMatchOrIsEmptyRecV3!148 lt!820197 (+ 1 from!1114) totalInput!923 lt!820195))))

(assert (= (and start!212734 res!943034) b!2193386))

(assert (= (and b!2193386 res!943032) b!2193378))

(assert (= (and b!2193378 (not res!943038)) b!2193381))

(assert (= (and b!2193378 res!943037) b!2193379))

(assert (= (and b!2193379 res!943033) b!2193380))

(assert (= (and b!2193380 res!943035) b!2193387))

(assert (= (and b!2193387 c!348961) b!2193384))

(assert (= (and b!2193387 (not c!348961)) b!2193382))

(assert (= (and b!2193387 res!943039) b!2193389))

(assert (= (and b!2193389 (not res!943036)) b!2193383))

(assert (= start!212734 b!2193388))

(assert (= (and start!212734 condSetEmpty!18690) setIsEmpty!18690))

(assert (= (and start!212734 (not condSetEmpty!18690)) setNonEmpty!18690))

(assert (= setNonEmpty!18690 b!2193385))

(declare-fun m!2635947 () Bool)

(assert (=> b!2193380 m!2635947))

(declare-fun m!2635949 () Bool)

(assert (=> b!2193386 m!2635949))

(declare-fun m!2635951 () Bool)

(assert (=> b!2193388 m!2635951))

(declare-fun m!2635953 () Bool)

(assert (=> start!212734 m!2635953))

(declare-fun m!2635955 () Bool)

(assert (=> b!2193387 m!2635955))

(declare-fun m!2635957 () Bool)

(assert (=> b!2193387 m!2635957))

(declare-fun m!2635959 () Bool)

(assert (=> b!2193387 m!2635959))

(declare-fun m!2635961 () Bool)

(assert (=> b!2193387 m!2635961))

(declare-fun m!2635963 () Bool)

(assert (=> b!2193387 m!2635963))

(assert (=> b!2193387 m!2635959))

(declare-fun m!2635965 () Bool)

(assert (=> b!2193378 m!2635965))

(declare-fun m!2635967 () Bool)

(assert (=> b!2193389 m!2635967))

(declare-fun m!2635969 () Bool)

(assert (=> b!2193383 m!2635969))

(assert (=> b!2193383 m!2635969))

(declare-fun m!2635971 () Bool)

(assert (=> b!2193383 m!2635971))

(assert (=> b!2193383 m!2635971))

(declare-fun m!2635973 () Bool)

(assert (=> b!2193383 m!2635973))

(assert (=> b!2193383 m!2635973))

(declare-fun m!2635975 () Bool)

(assert (=> b!2193383 m!2635975))

(declare-fun m!2635977 () Bool)

(assert (=> setNonEmpty!18690 m!2635977))

(check-sat (not b!2193380) (not b!2193386) (not b!2193389) (not b!2193387) (not b!2193383) (not b!2193388) (not b!2193385) (not start!212734) (not b!2193378) (not setNonEmpty!18690))
(check-sat)
