; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214154 () Bool)

(assert start!214154)

(declare-fun b!2203762 () Bool)

(declare-fun e!1407995 () Bool)

(declare-fun e!1407991 () Bool)

(assert (=> b!2203762 (= e!1407995 e!1407991)))

(declare-fun res!947375 () Bool)

(assert (=> b!2203762 (=> (not res!947375) (not e!1407991))))

(declare-fun knownSize!10 () Int)

(declare-fun from!1082 () Int)

(declare-fun lt!823989 () Int)

(assert (=> b!2203762 (= res!947375 (and (<= from!1082 lt!823989) (>= knownSize!10 0) (<= knownSize!10 (- lt!823989 from!1082))))))

(declare-datatypes ((C!12656 0))(
  ( (C!12657 (val!7314 Int)) )
))
(declare-datatypes ((List!25808 0))(
  ( (Nil!25724) (Cons!25724 (h!31125 C!12656) (t!198442 List!25808)) )
))
(declare-datatypes ((IArray!16787 0))(
  ( (IArray!16788 (innerList!8451 List!25808)) )
))
(declare-datatypes ((Conc!8391 0))(
  ( (Node!8391 (left!19761 Conc!8391) (right!20091 Conc!8391) (csize!17012 Int) (cheight!8602 Int)) (Leaf!12286 (xs!11333 IArray!16787) (csize!17013 Int)) (Empty!8391) )
))
(declare-datatypes ((BalanceConc!16544 0))(
  ( (BalanceConc!16545 (c!351658 Conc!8391)) )
))
(declare-fun totalInput!891 () BalanceConc!16544)

(declare-fun size!20046 (BalanceConc!16544) Int)

(assert (=> b!2203762 (= lt!823989 (size!20046 totalInput!891))))

(declare-fun res!947370 () Bool)

(assert (=> start!214154 (=> (not res!947370) (not e!1407995))))

(assert (=> start!214154 (= res!947370 (>= from!1082 0))))

(assert (=> start!214154 e!1407995))

(assert (=> start!214154 true))

(declare-fun e!1407996 () Bool)

(declare-fun inv!34646 (BalanceConc!16544) Bool)

(assert (=> start!214154 (and (inv!34646 totalInput!891) e!1407996)))

(declare-fun condSetEmpty!19114 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6255 0))(
  ( (ElementMatch!6255 (c!351659 C!12656)) (Concat!10557 (regOne!13022 Regex!6255) (regTwo!13022 Regex!6255)) (EmptyExpr!6255) (Star!6255 (reg!6584 Regex!6255)) (EmptyLang!6255) (Union!6255 (regOne!13023 Regex!6255) (regTwo!13023 Regex!6255)) )
))
(declare-datatypes ((List!25809 0))(
  ( (Nil!25725) (Cons!25725 (h!31126 Regex!6255) (t!198443 List!25809)) )
))
(declare-datatypes ((Context!3650 0))(
  ( (Context!3651 (exprs!2325 List!25809)) )
))
(declare-fun z!3888 () (InoxSet Context!3650))

(assert (=> start!214154 (= condSetEmpty!19114 (= z!3888 ((as const (Array Context!3650 Bool)) false)))))

(declare-fun setRes!19114 () Bool)

(assert (=> start!214154 setRes!19114))

(declare-fun tp!685524 () Bool)

(declare-fun e!1407999 () Bool)

(declare-fun setElem!19114 () Context!3650)

(declare-fun setNonEmpty!19114 () Bool)

(declare-fun inv!34647 (Context!3650) Bool)

(assert (=> setNonEmpty!19114 (= setRes!19114 (and tp!685524 (inv!34647 setElem!19114) e!1407999))))

(declare-fun setRest!19114 () (InoxSet Context!3650))

(assert (=> setNonEmpty!19114 (= z!3888 ((_ map or) (store ((as const (Array Context!3650 Bool)) false) setElem!19114 true) setRest!19114))))

(declare-fun b!2203763 () Bool)

(declare-fun e!1407992 () Bool)

(declare-fun lostCauseZipper!355 ((InoxSet Context!3650)) Bool)

(assert (=> b!2203763 (= e!1407992 (lostCauseZipper!355 z!3888))))

(declare-fun b!2203764 () Bool)

(declare-fun e!1407997 () Bool)

(assert (=> b!2203764 (= e!1407991 e!1407997)))

(declare-fun res!947367 () Bool)

(assert (=> b!2203764 (=> (not res!947367) (not e!1407997))))

(declare-fun lt!823990 () List!25808)

(declare-fun matchZipper!341 ((InoxSet Context!3650) List!25808) Bool)

(assert (=> b!2203764 (= res!947367 (matchZipper!341 z!3888 lt!823990))))

(declare-fun lt!823991 () List!25808)

(declare-fun take!433 (List!25808 Int) List!25808)

(assert (=> b!2203764 (= lt!823990 (take!433 lt!823991 knownSize!10))))

(declare-fun drop!1443 (List!25808 Int) List!25808)

(declare-fun list!9929 (BalanceConc!16544) List!25808)

(assert (=> b!2203764 (= lt!823991 (drop!1443 (list!9929 totalInput!891) from!1082))))

(declare-fun b!2203765 () Bool)

(declare-datatypes ((Unit!38805 0))(
  ( (Unit!38806) )
))
(declare-fun e!1407990 () Unit!38805)

(declare-fun Unit!38807 () Unit!38805)

(assert (=> b!2203765 (= e!1407990 Unit!38807)))

(declare-fun b!2203766 () Bool)

(declare-fun tp!685522 () Bool)

(assert (=> b!2203766 (= e!1407999 tp!685522)))

(declare-fun b!2203767 () Bool)

(declare-fun res!947373 () Bool)

(declare-fun e!1407993 () Bool)

(assert (=> b!2203767 (=> (not res!947373) (not e!1407993))))

(declare-fun isEmpty!14701 (List!25808) Bool)

(assert (=> b!2203767 (= res!947373 (isEmpty!14701 lt!823991))))

(declare-fun setIsEmpty!19114 () Bool)

(assert (=> setIsEmpty!19114 setRes!19114))

(declare-fun b!2203768 () Bool)

(declare-fun e!1407989 () Bool)

(assert (=> b!2203768 (= e!1407989 e!1407993)))

(declare-fun res!947369 () Bool)

(assert (=> b!2203768 (=> (not res!947369) (not e!1407993))))

(declare-fun lt!823987 () Bool)

(declare-fun lt!823992 () Bool)

(assert (=> b!2203768 (= res!947369 (and (not lt!823987) lt!823992))))

(declare-fun lt!823985 () Unit!38805)

(assert (=> b!2203768 (= lt!823985 e!1407990)))

(declare-fun c!351657 () Bool)

(assert (=> b!2203768 (= c!351657 lt!823987)))

(assert (=> b!2203768 (= lt!823987 (lostCauseZipper!355 z!3888))))

(declare-fun b!2203769 () Bool)

(declare-fun e!1407994 () Bool)

(assert (=> b!2203769 (= e!1407997 e!1407994)))

(declare-fun res!947372 () Bool)

(assert (=> b!2203769 (=> (not res!947372) (not e!1407994))))

(declare-fun lt!823986 () Bool)

(assert (=> b!2203769 (= res!947372 lt!823986)))

(declare-fun e!1407998 () Bool)

(assert (=> b!2203769 (= lt!823986 e!1407998)))

(declare-fun res!947374 () Bool)

(assert (=> b!2203769 (=> res!947374 e!1407998)))

(declare-fun nullableZipper!535 ((InoxSet Context!3650)) Bool)

(assert (=> b!2203769 (= res!947374 (not (nullableZipper!535 z!3888)))))

(declare-fun b!2203770 () Bool)

(declare-fun res!947365 () Bool)

(assert (=> b!2203770 (=> (not res!947365) (not e!1407994))))

(declare-fun isEmpty!14702 (BalanceConc!16544) Bool)

(assert (=> b!2203770 (= res!947365 (not (isEmpty!14702 totalInput!891)))))

(declare-fun b!2203771 () Bool)

(declare-fun res!947364 () Bool)

(assert (=> b!2203771 (=> (not res!947364) (not e!1407994))))

(assert (=> b!2203771 (= res!947364 (and (not (= knownSize!10 0)) (> knownSize!10 0)))))

(declare-fun b!2203772 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2203772 (= e!1407998 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2203773 () Bool)

(declare-fun Unit!38808 () Unit!38805)

(assert (=> b!2203773 (= e!1407990 Unit!38808)))

(declare-fun lt!823988 () Unit!38805)

(declare-fun lemmaLostCauseCannotMatch!35 ((InoxSet Context!3650) List!25808) Unit!38805)

(assert (=> b!2203773 (= lt!823988 (lemmaLostCauseCannotMatch!35 z!3888 lt!823990))))

(assert (=> b!2203773 false))

(declare-fun b!2203774 () Bool)

(assert (=> b!2203774 (= e!1407994 e!1407989)))

(declare-fun res!947366 () Bool)

(assert (=> b!2203774 (=> (not res!947366) (not e!1407989))))

(assert (=> b!2203774 (= res!947366 e!1407992)))

(declare-fun res!947371 () Bool)

(assert (=> b!2203774 (=> res!947371 e!1407992)))

(assert (=> b!2203774 (= res!947371 lt!823992)))

(assert (=> b!2203774 (= lt!823992 (= from!1082 lt!823989))))

(declare-fun b!2203775 () Bool)

(assert (=> b!2203775 (= e!1407993 (not lt!823986))))

(declare-fun b!2203776 () Bool)

(declare-fun res!947368 () Bool)

(assert (=> b!2203776 (=> (not res!947368) (not e!1407997))))

(assert (=> b!2203776 (= res!947368 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2203777 () Bool)

(declare-fun tp!685523 () Bool)

(declare-fun inv!34648 (Conc!8391) Bool)

(assert (=> b!2203777 (= e!1407996 (and (inv!34648 (c!351658 totalInput!891)) tp!685523))))

(assert (= (and start!214154 res!947370) b!2203762))

(assert (= (and b!2203762 res!947375) b!2203764))

(assert (= (and b!2203764 res!947367) b!2203776))

(assert (= (and b!2203776 res!947368) b!2203769))

(assert (= (and b!2203769 (not res!947374)) b!2203772))

(assert (= (and b!2203769 res!947372) b!2203770))

(assert (= (and b!2203770 res!947365) b!2203771))

(assert (= (and b!2203771 res!947364) b!2203774))

(assert (= (and b!2203774 (not res!947371)) b!2203763))

(assert (= (and b!2203774 res!947366) b!2203768))

(assert (= (and b!2203768 c!351657) b!2203773))

(assert (= (and b!2203768 (not c!351657)) b!2203765))

(assert (= (and b!2203768 res!947369) b!2203767))

(assert (= (and b!2203767 res!947373) b!2203775))

(assert (= start!214154 b!2203777))

(assert (= (and start!214154 condSetEmpty!19114) setIsEmpty!19114))

(assert (= (and start!214154 (not condSetEmpty!19114)) setNonEmpty!19114))

(assert (= setNonEmpty!19114 b!2203766))

(declare-fun m!2645605 () Bool)

(assert (=> b!2203763 m!2645605))

(declare-fun m!2645607 () Bool)

(assert (=> b!2203769 m!2645607))

(declare-fun m!2645609 () Bool)

(assert (=> start!214154 m!2645609))

(declare-fun m!2645611 () Bool)

(assert (=> b!2203767 m!2645611))

(declare-fun m!2645613 () Bool)

(assert (=> b!2203764 m!2645613))

(declare-fun m!2645615 () Bool)

(assert (=> b!2203764 m!2645615))

(declare-fun m!2645617 () Bool)

(assert (=> b!2203764 m!2645617))

(assert (=> b!2203764 m!2645617))

(declare-fun m!2645619 () Bool)

(assert (=> b!2203764 m!2645619))

(assert (=> b!2203768 m!2645605))

(declare-fun m!2645621 () Bool)

(assert (=> setNonEmpty!19114 m!2645621))

(declare-fun m!2645623 () Bool)

(assert (=> b!2203773 m!2645623))

(declare-fun m!2645625 () Bool)

(assert (=> b!2203770 m!2645625))

(declare-fun m!2645627 () Bool)

(assert (=> b!2203777 m!2645627))

(declare-fun m!2645629 () Bool)

(assert (=> b!2203762 m!2645629))

(check-sat (not b!2203767) (not b!2203773) (not b!2203764) (not b!2203769) (not b!2203763) (not b!2203770) (not b!2203762) (not b!2203766) (not setNonEmpty!19114) (not start!214154) (not b!2203768) (not b!2203777))
(check-sat)
