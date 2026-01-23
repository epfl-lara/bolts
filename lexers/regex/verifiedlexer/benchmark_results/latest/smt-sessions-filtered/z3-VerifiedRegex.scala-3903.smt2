; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214494 () Bool)

(assert start!214494)

(declare-fun b!2205872 () Bool)

(declare-datatypes ((Unit!38855 0))(
  ( (Unit!38856) )
))
(declare-fun e!1409247 () Unit!38855)

(declare-fun Unit!38857 () Unit!38855)

(assert (=> b!2205872 (= e!1409247 Unit!38857)))

(declare-fun lt!824852 () Unit!38855)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12692 0))(
  ( (C!12693 (val!7332 Int)) )
))
(declare-datatypes ((Regex!6273 0))(
  ( (ElementMatch!6273 (c!352266 C!12692)) (Concat!10575 (regOne!13058 Regex!6273) (regTwo!13058 Regex!6273)) (EmptyExpr!6273) (Star!6273 (reg!6602 Regex!6273)) (EmptyLang!6273) (Union!6273 (regOne!13059 Regex!6273) (regTwo!13059 Regex!6273)) )
))
(declare-datatypes ((List!25850 0))(
  ( (Nil!25766) (Cons!25766 (h!31167 Regex!6273) (t!198494 List!25850)) )
))
(declare-datatypes ((Context!3686 0))(
  ( (Context!3687 (exprs!2343 List!25850)) )
))
(declare-fun z!3888 () (InoxSet Context!3686))

(declare-datatypes ((List!25851 0))(
  ( (Nil!25767) (Cons!25767 (h!31168 C!12692) (t!198495 List!25851)) )
))
(declare-fun lt!824848 () List!25851)

(declare-fun lemmaLostCauseCannotMatch!41 ((InoxSet Context!3686) List!25851) Unit!38855)

(assert (=> b!2205872 (= lt!824852 (lemmaLostCauseCannotMatch!41 z!3888 lt!824848))))

(assert (=> b!2205872 false))

(declare-fun b!2205873 () Bool)

(declare-fun res!948196 () Bool)

(declare-fun e!1409238 () Bool)

(assert (=> b!2205873 (=> (not res!948196) (not e!1409238))))

(declare-fun lt!824850 () List!25851)

(declare-fun isEmpty!14739 (List!25851) Bool)

(assert (=> b!2205873 (= res!948196 (isEmpty!14739 lt!824850))))

(declare-fun b!2205874 () Bool)

(declare-fun Unit!38858 () Unit!38855)

(assert (=> b!2205874 (= e!1409247 Unit!38858)))

(declare-fun b!2205875 () Bool)

(declare-fun e!1409244 () Bool)

(declare-fun lostCauseZipper!369 ((InoxSet Context!3686)) Bool)

(assert (=> b!2205875 (= e!1409244 (lostCauseZipper!369 z!3888))))

(declare-fun b!2205876 () Bool)

(declare-fun e!1409242 () Bool)

(declare-fun e!1409243 () Bool)

(assert (=> b!2205876 (= e!1409242 e!1409243)))

(declare-fun res!948200 () Bool)

(assert (=> b!2205876 (=> (not res!948200) (not e!1409243))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun lt!824846 () Bool)

(declare-fun from!1082 () Int)

(assert (=> b!2205876 (= res!948200 (or lt!824846 (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun nullableZipper!553 ((InoxSet Context!3686)) Bool)

(assert (=> b!2205876 (= lt!824846 (not (nullableZipper!553 z!3888)))))

(declare-fun b!2205877 () Bool)

(declare-fun e!1409245 () Bool)

(assert (=> b!2205877 (= e!1409245 e!1409242)))

(declare-fun res!948194 () Bool)

(assert (=> b!2205877 (=> (not res!948194) (not e!1409242))))

(declare-fun matchZipper!359 ((InoxSet Context!3686) List!25851) Bool)

(assert (=> b!2205877 (= res!948194 (matchZipper!359 z!3888 lt!824848))))

(declare-fun knownSize!10 () Int)

(declare-fun take!451 (List!25851 Int) List!25851)

(assert (=> b!2205877 (= lt!824848 (take!451 lt!824850 knownSize!10))))

(declare-datatypes ((IArray!16823 0))(
  ( (IArray!16824 (innerList!8469 List!25851)) )
))
(declare-datatypes ((Conc!8409 0))(
  ( (Node!8409 (left!19800 Conc!8409) (right!20130 Conc!8409) (csize!17048 Int) (cheight!8620 Int)) (Leaf!12313 (xs!11351 IArray!16823) (csize!17049 Int)) (Empty!8409) )
))
(declare-datatypes ((BalanceConc!16580 0))(
  ( (BalanceConc!16581 (c!352267 Conc!8409)) )
))
(declare-fun totalInput!891 () BalanceConc!16580)

(declare-fun drop!1461 (List!25851 Int) List!25851)

(declare-fun list!9954 (BalanceConc!16580) List!25851)

(assert (=> b!2205877 (= lt!824850 (drop!1461 (list!9954 totalInput!891) from!1082))))

(declare-fun b!2205878 () Bool)

(declare-fun e!1409246 () Bool)

(declare-fun tp!685871 () Bool)

(assert (=> b!2205878 (= e!1409246 tp!685871)))

(declare-fun b!2205879 () Bool)

(declare-fun res!948201 () Bool)

(assert (=> b!2205879 (=> (not res!948201) (not e!1409238))))

(assert (=> b!2205879 (= res!948201 (and (not lt!824846) (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun b!2205880 () Bool)

(declare-fun e!1409241 () Bool)

(assert (=> b!2205880 (= e!1409241 e!1409245)))

(declare-fun res!948195 () Bool)

(assert (=> b!2205880 (=> (not res!948195) (not e!1409245))))

(declare-fun lt!824849 () Int)

(assert (=> b!2205880 (= res!948195 (and (<= from!1082 lt!824849) (>= knownSize!10 0) (<= knownSize!10 (- lt!824849 from!1082))))))

(declare-fun size!20076 (BalanceConc!16580) Int)

(assert (=> b!2205880 (= lt!824849 (size!20076 totalInput!891))))

(declare-fun b!2205881 () Bool)

(declare-fun e!1409239 () Bool)

(declare-fun tp!685870 () Bool)

(declare-fun inv!34744 (Conc!8409) Bool)

(assert (=> b!2205881 (= e!1409239 (and (inv!34744 (c!352267 totalInput!891)) tp!685870))))

(declare-fun b!2205882 () Bool)

(declare-fun e!1409240 () Bool)

(assert (=> b!2205882 (= e!1409243 e!1409240)))

(declare-fun res!948199 () Bool)

(assert (=> b!2205882 (=> (not res!948199) (not e!1409240))))

(assert (=> b!2205882 (= res!948199 e!1409244)))

(declare-fun res!948193 () Bool)

(assert (=> b!2205882 (=> res!948193 e!1409244)))

(declare-fun lt!824851 () Bool)

(assert (=> b!2205882 (= res!948193 lt!824851)))

(assert (=> b!2205882 (= lt!824851 (= from!1082 lt!824849))))

(declare-fun lt!824854 () Int)

(declare-fun b!2205883 () Bool)

(assert (=> b!2205883 (= e!1409238 (not (>= lt!824854 (+ (- from!1082 1) knownSize!10))))))

(assert (=> b!2205883 (= lt!824854 lastNullablePos!161)))

(declare-fun furthestNullablePosition!407 ((InoxSet Context!3686) Int BalanceConc!16580 Int Int) Int)

(assert (=> b!2205883 (= lt!824854 (furthestNullablePosition!407 z!3888 from!1082 totalInput!891 lt!824849 lastNullablePos!161))))

(declare-fun b!2205884 () Bool)

(declare-fun res!948197 () Bool)

(assert (=> b!2205884 (=> (not res!948197) (not e!1409242))))

(assert (=> b!2205884 (= res!948197 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2205885 () Bool)

(declare-fun res!948202 () Bool)

(assert (=> b!2205885 (=> (not res!948202) (not e!1409243))))

(declare-fun isEmpty!14740 (BalanceConc!16580) Bool)

(assert (=> b!2205885 (= res!948202 (not (isEmpty!14740 totalInput!891)))))

(declare-fun setIsEmpty!19188 () Bool)

(declare-fun setRes!19188 () Bool)

(assert (=> setIsEmpty!19188 setRes!19188))

(declare-fun b!2205886 () Bool)

(declare-fun res!948198 () Bool)

(assert (=> b!2205886 (=> (not res!948198) (not e!1409243))))

(assert (=> b!2205886 (= res!948198 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun res!948192 () Bool)

(assert (=> start!214494 (=> (not res!948192) (not e!1409241))))

(assert (=> start!214494 (= res!948192 (>= from!1082 0))))

(assert (=> start!214494 e!1409241))

(assert (=> start!214494 true))

(declare-fun inv!34745 (BalanceConc!16580) Bool)

(assert (=> start!214494 (and (inv!34745 totalInput!891) e!1409239)))

(declare-fun condSetEmpty!19188 () Bool)

(assert (=> start!214494 (= condSetEmpty!19188 (= z!3888 ((as const (Array Context!3686 Bool)) false)))))

(assert (=> start!214494 setRes!19188))

(declare-fun setElem!19188 () Context!3686)

(declare-fun setNonEmpty!19188 () Bool)

(declare-fun tp!685872 () Bool)

(declare-fun inv!34746 (Context!3686) Bool)

(assert (=> setNonEmpty!19188 (= setRes!19188 (and tp!685872 (inv!34746 setElem!19188) e!1409246))))

(declare-fun setRest!19188 () (InoxSet Context!3686))

(assert (=> setNonEmpty!19188 (= z!3888 ((_ map or) (store ((as const (Array Context!3686 Bool)) false) setElem!19188 true) setRest!19188))))

(declare-fun b!2205887 () Bool)

(assert (=> b!2205887 (= e!1409240 e!1409238)))

(declare-fun res!948203 () Bool)

(assert (=> b!2205887 (=> (not res!948203) (not e!1409238))))

(declare-fun lt!824853 () Bool)

(assert (=> b!2205887 (= res!948203 (and (not lt!824853) lt!824851))))

(declare-fun lt!824847 () Unit!38855)

(assert (=> b!2205887 (= lt!824847 e!1409247)))

(declare-fun c!352265 () Bool)

(assert (=> b!2205887 (= c!352265 lt!824853)))

(assert (=> b!2205887 (= lt!824853 (lostCauseZipper!369 z!3888))))

(assert (= (and start!214494 res!948192) b!2205880))

(assert (= (and b!2205880 res!948195) b!2205877))

(assert (= (and b!2205877 res!948194) b!2205884))

(assert (= (and b!2205884 res!948197) b!2205876))

(assert (= (and b!2205876 res!948200) b!2205885))

(assert (= (and b!2205885 res!948202) b!2205886))

(assert (= (and b!2205886 res!948198) b!2205882))

(assert (= (and b!2205882 (not res!948193)) b!2205875))

(assert (= (and b!2205882 res!948199) b!2205887))

(assert (= (and b!2205887 c!352265) b!2205872))

(assert (= (and b!2205887 (not c!352265)) b!2205874))

(assert (= (and b!2205887 res!948203) b!2205873))

(assert (= (and b!2205873 res!948196) b!2205879))

(assert (= (and b!2205879 res!948201) b!2205883))

(assert (= start!214494 b!2205881))

(assert (= (and start!214494 condSetEmpty!19188) setIsEmpty!19188))

(assert (= (and start!214494 (not condSetEmpty!19188)) setNonEmpty!19188))

(assert (= setNonEmpty!19188 b!2205878))

(declare-fun m!2647623 () Bool)

(assert (=> b!2205873 m!2647623))

(declare-fun m!2647625 () Bool)

(assert (=> b!2205876 m!2647625))

(declare-fun m!2647627 () Bool)

(assert (=> b!2205887 m!2647627))

(declare-fun m!2647629 () Bool)

(assert (=> b!2205883 m!2647629))

(declare-fun m!2647631 () Bool)

(assert (=> b!2205877 m!2647631))

(declare-fun m!2647633 () Bool)

(assert (=> b!2205877 m!2647633))

(declare-fun m!2647635 () Bool)

(assert (=> b!2205877 m!2647635))

(assert (=> b!2205877 m!2647635))

(declare-fun m!2647637 () Bool)

(assert (=> b!2205877 m!2647637))

(assert (=> b!2205875 m!2647627))

(declare-fun m!2647639 () Bool)

(assert (=> b!2205885 m!2647639))

(declare-fun m!2647641 () Bool)

(assert (=> start!214494 m!2647641))

(declare-fun m!2647643 () Bool)

(assert (=> b!2205881 m!2647643))

(declare-fun m!2647645 () Bool)

(assert (=> setNonEmpty!19188 m!2647645))

(declare-fun m!2647647 () Bool)

(assert (=> b!2205880 m!2647647))

(declare-fun m!2647649 () Bool)

(assert (=> b!2205872 m!2647649))

(check-sat (not b!2205873) (not b!2205875) (not b!2205885) (not b!2205878) (not b!2205880) (not start!214494) (not setNonEmpty!19188) (not b!2205881) (not b!2205876) (not b!2205887) (not b!2205877) (not b!2205872) (not b!2205883))
(check-sat)
