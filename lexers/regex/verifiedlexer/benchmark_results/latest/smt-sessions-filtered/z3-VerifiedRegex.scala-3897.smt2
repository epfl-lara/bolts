; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214398 () Bool)

(assert start!214398)

(declare-fun b!2205089 () Bool)

(declare-fun res!947773 () Bool)

(declare-fun e!1408760 () Bool)

(assert (=> b!2205089 (=> res!947773 e!1408760)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12668 0))(
  ( (C!12669 (val!7320 Int)) )
))
(declare-datatypes ((Regex!6261 0))(
  ( (ElementMatch!6261 (c!352096 C!12668)) (Concat!10563 (regOne!13034 Regex!6261) (regTwo!13034 Regex!6261)) (EmptyExpr!6261) (Star!6261 (reg!6590 Regex!6261)) (EmptyLang!6261) (Union!6261 (regOne!13035 Regex!6261) (regTwo!13035 Regex!6261)) )
))
(declare-datatypes ((List!25824 0))(
  ( (Nil!25740) (Cons!25740 (h!31141 Regex!6261) (t!198468 List!25824)) )
))
(declare-datatypes ((Context!3662 0))(
  ( (Context!3663 (exprs!2331 List!25824)) )
))
(declare-fun lt!824504 () (InoxSet Context!3662))

(declare-datatypes ((List!25825 0))(
  ( (Nil!25741) (Cons!25741 (h!31142 C!12668) (t!198469 List!25825)) )
))
(declare-fun lt!824508 () List!25825)

(declare-fun matchZipper!347 ((InoxSet Context!3662) List!25825) Bool)

(assert (=> b!2205089 (= res!947773 (not (matchZipper!347 lt!824504 lt!824508)))))

(declare-fun b!2205090 () Bool)

(declare-fun res!947771 () Bool)

(declare-fun e!1408761 () Bool)

(assert (=> b!2205090 (=> (not res!947771) (not e!1408761))))

(declare-fun e!1408767 () Bool)

(assert (=> b!2205090 (= res!947771 e!1408767)))

(declare-fun res!947780 () Bool)

(assert (=> b!2205090 (=> res!947780 e!1408767)))

(declare-fun z!3888 () (InoxSet Context!3662))

(declare-fun nullableZipper!541 ((InoxSet Context!3662)) Bool)

(assert (=> b!2205090 (= res!947780 (not (nullableZipper!541 z!3888)))))

(declare-fun res!947775 () Bool)

(declare-fun e!1408765 () Bool)

(assert (=> start!214398 (=> (not res!947775) (not e!1408765))))

(declare-fun from!1082 () Int)

(assert (=> start!214398 (= res!947775 (>= from!1082 0))))

(assert (=> start!214398 e!1408765))

(assert (=> start!214398 true))

(declare-datatypes ((IArray!16799 0))(
  ( (IArray!16800 (innerList!8457 List!25825)) )
))
(declare-datatypes ((Conc!8397 0))(
  ( (Node!8397 (left!19778 Conc!8397) (right!20108 Conc!8397) (csize!17024 Int) (cheight!8608 Int)) (Leaf!12295 (xs!11339 IArray!16799) (csize!17025 Int)) (Empty!8397) )
))
(declare-datatypes ((BalanceConc!16556 0))(
  ( (BalanceConc!16557 (c!352097 Conc!8397)) )
))
(declare-fun totalInput!891 () BalanceConc!16556)

(declare-fun e!1408762 () Bool)

(declare-fun inv!34685 (BalanceConc!16556) Bool)

(assert (=> start!214398 (and (inv!34685 totalInput!891) e!1408762)))

(declare-fun condSetEmpty!19146 () Bool)

(assert (=> start!214398 (= condSetEmpty!19146 (= z!3888 ((as const (Array Context!3662 Bool)) false)))))

(declare-fun setRes!19146 () Bool)

(assert (=> start!214398 setRes!19146))

(declare-fun b!2205091 () Bool)

(declare-fun res!947772 () Bool)

(assert (=> b!2205091 (=> (not res!947772) (not e!1408761))))

(declare-fun lostCauseZipper!361 ((InoxSet Context!3662)) Bool)

(assert (=> b!2205091 (= res!947772 (not (lostCauseZipper!361 z!3888)))))

(declare-fun b!2205092 () Bool)

(declare-fun res!947778 () Bool)

(assert (=> b!2205092 (=> (not res!947778) (not e!1408761))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2205092 (= res!947778 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2205093 () Bool)

(assert (=> b!2205093 (= e!1408767 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2205094 () Bool)

(declare-fun e!1408764 () Int)

(assert (=> b!2205094 (= e!1408764 lastNullablePos!161)))

(declare-fun b!2205095 () Bool)

(assert (=> b!2205095 (= e!1408764 from!1082)))

(declare-fun b!2205096 () Bool)

(declare-fun res!947781 () Bool)

(assert (=> b!2205096 (=> (not res!947781) (not e!1408761))))

(declare-fun isEmpty!14720 (BalanceConc!16556) Bool)

(assert (=> b!2205096 (= res!947781 (not (isEmpty!14720 totalInput!891)))))

(declare-fun b!2205097 () Bool)

(assert (=> b!2205097 (= e!1408761 (not e!1408760))))

(declare-fun res!947777 () Bool)

(assert (=> b!2205097 (=> res!947777 e!1408760)))

(declare-fun lt!824510 () List!25825)

(declare-fun tail!3190 (List!25825) List!25825)

(assert (=> b!2205097 (= res!947777 (not (= lt!824508 (tail!3190 lt!824510))))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!824506 () List!25825)

(declare-fun lt!824507 () C!12668)

(declare-fun take!439 (List!25825 Int) List!25825)

(assert (=> b!2205097 (= (Cons!25741 lt!824507 lt!824508) (take!439 lt!824506 (+ 1 (- knownSize!10 1))))))

(declare-fun lt!824509 () List!25825)

(declare-fun drop!1449 (List!25825 Int) List!25825)

(assert (=> b!2205097 (= lt!824508 (take!439 (drop!1449 lt!824509 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6340 (List!25825 Int) C!12668)

(assert (=> b!2205097 (= lt!824507 (apply!6340 lt!824509 from!1082))))

(declare-datatypes ((Unit!38829 0))(
  ( (Unit!38830) )
))
(declare-fun lt!824513 () Unit!38829)

(declare-fun lemmaDropTakeAddOneLeft!38 (List!25825 Int Int) Unit!38829)

(assert (=> b!2205097 (= lt!824513 (lemmaDropTakeAddOneLeft!38 lt!824509 from!1082 (- knownSize!10 1)))))

(declare-fun lt!824512 () Int)

(declare-fun lt!824505 () Int)

(declare-fun lt!824511 () Int)

(declare-fun furthestNullablePosition!399 ((InoxSet Context!3662) Int BalanceConc!16556 Int Int) Int)

(assert (=> b!2205097 (= lt!824505 (furthestNullablePosition!399 lt!824504 (+ 1 from!1082) totalInput!891 lt!824511 lt!824512))))

(assert (=> b!2205097 (= lt!824512 e!1408764)))

(declare-fun c!352095 () Bool)

(assert (=> b!2205097 (= c!352095 (nullableZipper!541 lt!824504))))

(declare-fun derivationStepZipper!303 ((InoxSet Context!3662) C!12668) (InoxSet Context!3662))

(declare-fun apply!6341 (BalanceConc!16556 Int) C!12668)

(assert (=> b!2205097 (= lt!824504 (derivationStepZipper!303 z!3888 (apply!6341 totalInput!891 from!1082)))))

(declare-fun b!2205098 () Bool)

(declare-fun tp!685722 () Bool)

(declare-fun inv!34686 (Conc!8397) Bool)

(assert (=> b!2205098 (= e!1408762 (and (inv!34686 (c!352097 totalInput!891)) tp!685722))))

(declare-fun b!2205099 () Bool)

(declare-fun e!1408766 () Bool)

(assert (=> b!2205099 (= e!1408765 e!1408766)))

(declare-fun res!947774 () Bool)

(assert (=> b!2205099 (=> (not res!947774) (not e!1408766))))

(assert (=> b!2205099 (= res!947774 (and (<= from!1082 lt!824511) (>= knownSize!10 0) (<= knownSize!10 (- lt!824511 from!1082))))))

(declare-fun size!20060 (BalanceConc!16556) Int)

(assert (=> b!2205099 (= lt!824511 (size!20060 totalInput!891))))

(declare-fun b!2205100 () Bool)

(assert (=> b!2205100 (= e!1408766 e!1408761)))

(declare-fun res!947779 () Bool)

(assert (=> b!2205100 (=> (not res!947779) (not e!1408761))))

(assert (=> b!2205100 (= res!947779 (matchZipper!347 z!3888 lt!824510))))

(assert (=> b!2205100 (= lt!824510 (take!439 lt!824506 knownSize!10))))

(assert (=> b!2205100 (= lt!824506 (drop!1449 lt!824509 from!1082))))

(declare-fun list!9941 (BalanceConc!16556) List!25825)

(assert (=> b!2205100 (= lt!824509 (list!9941 totalInput!891))))

(declare-fun b!2205101 () Bool)

(assert (=> b!2205101 (= e!1408760 (>= lt!824505 (+ (- from!1082 1) knownSize!10)))))

(assert (=> b!2205101 (>= lt!824505 (+ from!1082 (- knownSize!10 1)))))

(declare-fun lt!824514 () Unit!38829)

(declare-fun lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!10 ((InoxSet Context!3662) Int BalanceConc!16556 Int Int) Unit!38829)

(assert (=> b!2205101 (= lt!824514 (lemmaKnownAcceptedStringThenFromSmallPAtLeastThatV3!10 lt!824504 (+ 1 from!1082) totalInput!891 (- knownSize!10 1) lt!824512))))

(declare-fun e!1408763 () Bool)

(declare-fun setNonEmpty!19146 () Bool)

(declare-fun setElem!19146 () Context!3662)

(declare-fun tp!685721 () Bool)

(declare-fun inv!34687 (Context!3662) Bool)

(assert (=> setNonEmpty!19146 (= setRes!19146 (and tp!685721 (inv!34687 setElem!19146) e!1408763))))

(declare-fun setRest!19146 () (InoxSet Context!3662))

(assert (=> setNonEmpty!19146 (= z!3888 ((_ map or) (store ((as const (Array Context!3662 Bool)) false) setElem!19146 true) setRest!19146))))

(declare-fun b!2205102 () Bool)

(declare-fun res!947776 () Bool)

(assert (=> b!2205102 (=> (not res!947776) (not e!1408761))))

(assert (=> b!2205102 (= res!947776 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!824511))))))

(declare-fun b!2205103 () Bool)

(declare-fun tp!685720 () Bool)

(assert (=> b!2205103 (= e!1408763 tp!685720)))

(declare-fun setIsEmpty!19146 () Bool)

(assert (=> setIsEmpty!19146 setRes!19146))

(assert (= (and start!214398 res!947775) b!2205099))

(assert (= (and b!2205099 res!947774) b!2205100))

(assert (= (and b!2205100 res!947779) b!2205092))

(assert (= (and b!2205092 res!947778) b!2205090))

(assert (= (and b!2205090 (not res!947780)) b!2205093))

(assert (= (and b!2205090 res!947771) b!2205096))

(assert (= (and b!2205096 res!947781) b!2205102))

(assert (= (and b!2205102 res!947776) b!2205091))

(assert (= (and b!2205091 res!947772) b!2205097))

(assert (= (and b!2205097 c!352095) b!2205095))

(assert (= (and b!2205097 (not c!352095)) b!2205094))

(assert (= (and b!2205097 (not res!947777)) b!2205089))

(assert (= (and b!2205089 (not res!947773)) b!2205101))

(assert (= start!214398 b!2205098))

(assert (= (and start!214398 condSetEmpty!19146) setIsEmpty!19146))

(assert (= (and start!214398 (not condSetEmpty!19146)) setNonEmpty!19146))

(assert (= setNonEmpty!19146 b!2205103))

(declare-fun m!2646977 () Bool)

(assert (=> b!2205099 m!2646977))

(declare-fun m!2646979 () Bool)

(assert (=> b!2205100 m!2646979))

(declare-fun m!2646981 () Bool)

(assert (=> b!2205100 m!2646981))

(declare-fun m!2646983 () Bool)

(assert (=> b!2205100 m!2646983))

(declare-fun m!2646985 () Bool)

(assert (=> b!2205100 m!2646985))

(declare-fun m!2646987 () Bool)

(assert (=> b!2205096 m!2646987))

(declare-fun m!2646989 () Bool)

(assert (=> setNonEmpty!19146 m!2646989))

(declare-fun m!2646991 () Bool)

(assert (=> b!2205090 m!2646991))

(declare-fun m!2646993 () Bool)

(assert (=> b!2205097 m!2646993))

(declare-fun m!2646995 () Bool)

(assert (=> b!2205097 m!2646995))

(declare-fun m!2646997 () Bool)

(assert (=> b!2205097 m!2646997))

(declare-fun m!2646999 () Bool)

(assert (=> b!2205097 m!2646999))

(assert (=> b!2205097 m!2646995))

(declare-fun m!2647001 () Bool)

(assert (=> b!2205097 m!2647001))

(declare-fun m!2647003 () Bool)

(assert (=> b!2205097 m!2647003))

(declare-fun m!2647005 () Bool)

(assert (=> b!2205097 m!2647005))

(declare-fun m!2647007 () Bool)

(assert (=> b!2205097 m!2647007))

(assert (=> b!2205097 m!2646999))

(declare-fun m!2647009 () Bool)

(assert (=> b!2205097 m!2647009))

(declare-fun m!2647011 () Bool)

(assert (=> b!2205097 m!2647011))

(declare-fun m!2647013 () Bool)

(assert (=> start!214398 m!2647013))

(declare-fun m!2647015 () Bool)

(assert (=> b!2205101 m!2647015))

(declare-fun m!2647017 () Bool)

(assert (=> b!2205089 m!2647017))

(declare-fun m!2647019 () Bool)

(assert (=> b!2205091 m!2647019))

(declare-fun m!2647021 () Bool)

(assert (=> b!2205098 m!2647021))

(check-sat (not b!2205100) (not b!2205096) (not b!2205090) (not b!2205103) (not b!2205099) (not b!2205097) (not b!2205101) (not b!2205089) (not b!2205098) (not b!2205091) (not setNonEmpty!19146) (not start!214398))
(check-sat)
