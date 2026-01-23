; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214642 () Bool)

(assert start!214642)

(declare-fun b!2206921 () Bool)

(declare-fun e!1409833 () Bool)

(declare-datatypes ((C!12720 0))(
  ( (C!12721 (val!7346 Int)) )
))
(declare-datatypes ((List!25881 0))(
  ( (Nil!25797) (Cons!25797 (h!31198 C!12720) (t!198525 List!25881)) )
))
(declare-datatypes ((IArray!16851 0))(
  ( (IArray!16852 (innerList!8483 List!25881)) )
))
(declare-datatypes ((Conc!8423 0))(
  ( (Node!8423 (left!19829 Conc!8423) (right!20159 Conc!8423) (csize!17076 Int) (cheight!8634 Int)) (Leaf!12334 (xs!11365 IArray!16851) (csize!17077 Int)) (Empty!8423) )
))
(declare-datatypes ((BalanceConc!16608 0))(
  ( (BalanceConc!16609 (c!352528 Conc!8423)) )
))
(declare-fun totalInput!891 () BalanceConc!16608)

(declare-fun tp!686081 () Bool)

(declare-fun inv!34813 (Conc!8423) Bool)

(assert (=> b!2206921 (= e!1409833 (and (inv!34813 (c!352528 totalInput!891)) tp!686081))))

(declare-fun b!2206922 () Bool)

(declare-fun e!1409839 () Bool)

(declare-fun tp!686080 () Bool)

(assert (=> b!2206922 (= e!1409839 tp!686080)))

(declare-fun b!2206923 () Bool)

(declare-fun res!948692 () Bool)

(declare-fun e!1409838 () Bool)

(assert (=> b!2206923 (=> (not res!948692) (not e!1409838))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6287 0))(
  ( (ElementMatch!6287 (c!352529 C!12720)) (Concat!10589 (regOne!13086 Regex!6287) (regTwo!13086 Regex!6287)) (EmptyExpr!6287) (Star!6287 (reg!6616 Regex!6287)) (EmptyLang!6287) (Union!6287 (regOne!13087 Regex!6287) (regTwo!13087 Regex!6287)) )
))
(declare-datatypes ((List!25882 0))(
  ( (Nil!25798) (Cons!25798 (h!31199 Regex!6287) (t!198526 List!25882)) )
))
(declare-datatypes ((Context!3714 0))(
  ( (Context!3715 (exprs!2357 List!25882)) )
))
(declare-fun z!3888 () (InoxSet Context!3714))

(declare-fun lostCauseZipper!383 ((InoxSet Context!3714)) Bool)

(assert (=> b!2206923 (= res!948692 (not (lostCauseZipper!383 z!3888)))))

(declare-fun b!2206924 () Bool)

(declare-fun res!948695 () Bool)

(assert (=> b!2206924 (=> (not res!948695) (not e!1409838))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun from!1082 () Int)

(assert (=> b!2206924 (= res!948695 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun res!948696 () Bool)

(declare-fun e!1409836 () Bool)

(assert (=> start!214642 (=> (not res!948696) (not e!1409836))))

(assert (=> start!214642 (= res!948696 (>= from!1082 0))))

(assert (=> start!214642 e!1409836))

(assert (=> start!214642 true))

(declare-fun inv!34814 (BalanceConc!16608) Bool)

(assert (=> start!214642 (and (inv!34814 totalInput!891) e!1409833)))

(declare-fun condSetEmpty!19242 () Bool)

(assert (=> start!214642 (= condSetEmpty!19242 (= z!3888 ((as const (Array Context!3714 Bool)) false)))))

(declare-fun setRes!19242 () Bool)

(assert (=> start!214642 setRes!19242))

(declare-fun b!2206925 () Bool)

(declare-fun res!948699 () Bool)

(assert (=> b!2206925 (=> (not res!948699) (not e!1409838))))

(declare-fun e!1409837 () Bool)

(assert (=> b!2206925 (= res!948699 e!1409837)))

(declare-fun res!948700 () Bool)

(assert (=> b!2206925 (=> res!948700 e!1409837)))

(declare-fun nullableZipper!567 ((InoxSet Context!3714)) Bool)

(assert (=> b!2206925 (= res!948700 (not (nullableZipper!567 z!3888)))))

(declare-fun setIsEmpty!19242 () Bool)

(assert (=> setIsEmpty!19242 setRes!19242))

(declare-fun b!2206926 () Bool)

(declare-fun e!1409835 () Bool)

(assert (=> b!2206926 (= e!1409838 (not e!1409835))))

(declare-fun res!948698 () Bool)

(assert (=> b!2206926 (=> res!948698 e!1409835)))

(declare-fun lt!825397 () List!25881)

(declare-fun lt!825391 () List!25881)

(declare-fun tail!3205 (List!25881) List!25881)

(assert (=> b!2206926 (= res!948698 (not (= lt!825397 (tail!3205 lt!825391))))))

(declare-fun knownSize!10 () Int)

(declare-fun lt!825393 () List!25881)

(declare-fun lt!825392 () C!12720)

(declare-fun take!465 (List!25881 Int) List!25881)

(assert (=> b!2206926 (= (Cons!25797 lt!825392 lt!825397) (take!465 lt!825393 (+ 1 (- knownSize!10 1))))))

(declare-fun lt!825399 () List!25881)

(declare-fun drop!1475 (List!25881 Int) List!25881)

(assert (=> b!2206926 (= lt!825397 (take!465 (drop!1475 lt!825399 (+ 1 from!1082)) (- knownSize!10 1)))))

(declare-fun apply!6374 (List!25881 Int) C!12720)

(assert (=> b!2206926 (= lt!825392 (apply!6374 lt!825399 from!1082))))

(declare-datatypes ((Unit!38889 0))(
  ( (Unit!38890) )
))
(declare-fun lt!825390 () Unit!38889)

(declare-fun lemmaDropTakeAddOneLeft!50 (List!25881 Int Int) Unit!38889)

(assert (=> b!2206926 (= lt!825390 (lemmaDropTakeAddOneLeft!50 lt!825399 from!1082 (- knownSize!10 1)))))

(declare-fun lt!825396 () (InoxSet Context!3714))

(declare-fun lt!825398 () Int)

(declare-fun lt!825394 () Int)

(declare-fun lt!825400 () Int)

(declare-fun furthestNullablePosition!421 ((InoxSet Context!3714) Int BalanceConc!16608 Int Int) Int)

(assert (=> b!2206926 (= lt!825398 (furthestNullablePosition!421 lt!825396 (+ 1 from!1082) totalInput!891 lt!825394 lt!825400))))

(declare-fun lt!825395 () Bool)

(assert (=> b!2206926 (= lt!825400 (ite lt!825395 from!1082 lastNullablePos!161))))

(assert (=> b!2206926 (= lt!825395 (nullableZipper!567 lt!825396))))

(declare-fun derivationStepZipper!319 ((InoxSet Context!3714) C!12720) (InoxSet Context!3714))

(declare-fun apply!6375 (BalanceConc!16608 Int) C!12720)

(assert (=> b!2206926 (= lt!825396 (derivationStepZipper!319 z!3888 (apply!6375 totalInput!891 from!1082)))))

(declare-fun b!2206927 () Bool)

(declare-fun e!1409834 () Bool)

(assert (=> b!2206927 (= e!1409834 e!1409838)))

(declare-fun res!948701 () Bool)

(assert (=> b!2206927 (=> (not res!948701) (not e!1409838))))

(declare-fun matchZipper!373 ((InoxSet Context!3714) List!25881) Bool)

(assert (=> b!2206927 (= res!948701 (matchZipper!373 z!3888 lt!825391))))

(assert (=> b!2206927 (= lt!825391 (take!465 lt!825393 knownSize!10))))

(assert (=> b!2206927 (= lt!825393 (drop!1475 lt!825399 from!1082))))

(declare-fun list!9970 (BalanceConc!16608) List!25881)

(assert (=> b!2206927 (= lt!825399 (list!9970 totalInput!891))))

(declare-fun b!2206928 () Bool)

(declare-fun res!948693 () Bool)

(assert (=> b!2206928 (=> (not res!948693) (not e!1409838))))

(declare-fun isEmpty!14762 (BalanceConc!16608) Bool)

(assert (=> b!2206928 (= res!948693 (not (isEmpty!14762 totalInput!891)))))

(declare-fun b!2206929 () Bool)

(assert (=> b!2206929 (= e!1409837 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2206930 () Bool)

(declare-fun res!948691 () Bool)

(assert (=> b!2206930 (=> res!948691 e!1409835)))

(assert (=> b!2206930 (= res!948691 (not (matchZipper!373 lt!825396 lt!825397)))))

(declare-fun b!2206931 () Bool)

(assert (=> b!2206931 (= e!1409836 e!1409834)))

(declare-fun res!948697 () Bool)

(assert (=> b!2206931 (=> (not res!948697) (not e!1409834))))

(assert (=> b!2206931 (= res!948697 (and (<= from!1082 lt!825394) (>= knownSize!10 0) (<= knownSize!10 (- lt!825394 from!1082))))))

(declare-fun size!20097 (BalanceConc!16608) Int)

(assert (=> b!2206931 (= lt!825394 (size!20097 totalInput!891))))

(declare-fun setElem!19242 () Context!3714)

(declare-fun setNonEmpty!19242 () Bool)

(declare-fun tp!686082 () Bool)

(declare-fun inv!34815 (Context!3714) Bool)

(assert (=> setNonEmpty!19242 (= setRes!19242 (and tp!686082 (inv!34815 setElem!19242) e!1409839))))

(declare-fun setRest!19242 () (InoxSet Context!3714))

(assert (=> setNonEmpty!19242 (= z!3888 ((_ map or) (store ((as const (Array Context!3714 Bool)) false) setElem!19242 true) setRest!19242))))

(declare-fun b!2206932 () Bool)

(assert (=> b!2206932 (= e!1409835 (or (< (+ 1 from!1082) 0) (> (+ 1 from!1082) lt!825394) (< (- knownSize!10 1) 0) (> (- knownSize!10 1) (- lt!825394 (+ 1 from!1082))) (< lt!825400 (- 1)) (>= lt!825400 (+ 1 from!1082)) (and lt!825395 (not (= lt!825400 from!1082))) (< (- knownSize!10 1) knownSize!10)))))

(declare-fun b!2206933 () Bool)

(declare-fun res!948694 () Bool)

(assert (=> b!2206933 (=> (not res!948694) (not e!1409838))))

(assert (=> b!2206933 (= res!948694 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!825394))))))

(assert (= (and start!214642 res!948696) b!2206931))

(assert (= (and b!2206931 res!948697) b!2206927))

(assert (= (and b!2206927 res!948701) b!2206924))

(assert (= (and b!2206924 res!948695) b!2206925))

(assert (= (and b!2206925 (not res!948700)) b!2206929))

(assert (= (and b!2206925 res!948699) b!2206928))

(assert (= (and b!2206928 res!948693) b!2206933))

(assert (= (and b!2206933 res!948694) b!2206923))

(assert (= (and b!2206923 res!948692) b!2206926))

(assert (= (and b!2206926 (not res!948698)) b!2206930))

(assert (= (and b!2206930 (not res!948691)) b!2206932))

(assert (= start!214642 b!2206921))

(assert (= (and start!214642 condSetEmpty!19242) setIsEmpty!19242))

(assert (= (and start!214642 (not condSetEmpty!19242)) setNonEmpty!19242))

(assert (= setNonEmpty!19242 b!2206922))

(declare-fun m!2648535 () Bool)

(assert (=> b!2206931 m!2648535))

(declare-fun m!2648537 () Bool)

(assert (=> b!2206926 m!2648537))

(declare-fun m!2648539 () Bool)

(assert (=> b!2206926 m!2648539))

(declare-fun m!2648541 () Bool)

(assert (=> b!2206926 m!2648541))

(declare-fun m!2648543 () Bool)

(assert (=> b!2206926 m!2648543))

(assert (=> b!2206926 m!2648541))

(declare-fun m!2648545 () Bool)

(assert (=> b!2206926 m!2648545))

(declare-fun m!2648547 () Bool)

(assert (=> b!2206926 m!2648547))

(declare-fun m!2648549 () Bool)

(assert (=> b!2206926 m!2648549))

(declare-fun m!2648551 () Bool)

(assert (=> b!2206926 m!2648551))

(declare-fun m!2648553 () Bool)

(assert (=> b!2206926 m!2648553))

(assert (=> b!2206926 m!2648537))

(declare-fun m!2648555 () Bool)

(assert (=> b!2206926 m!2648555))

(declare-fun m!2648557 () Bool)

(assert (=> b!2206927 m!2648557))

(declare-fun m!2648559 () Bool)

(assert (=> b!2206927 m!2648559))

(declare-fun m!2648561 () Bool)

(assert (=> b!2206927 m!2648561))

(declare-fun m!2648563 () Bool)

(assert (=> b!2206927 m!2648563))

(declare-fun m!2648565 () Bool)

(assert (=> start!214642 m!2648565))

(declare-fun m!2648567 () Bool)

(assert (=> setNonEmpty!19242 m!2648567))

(declare-fun m!2648569 () Bool)

(assert (=> b!2206921 m!2648569))

(declare-fun m!2648571 () Bool)

(assert (=> b!2206930 m!2648571))

(declare-fun m!2648573 () Bool)

(assert (=> b!2206928 m!2648573))

(declare-fun m!2648575 () Bool)

(assert (=> b!2206925 m!2648575))

(declare-fun m!2648577 () Bool)

(assert (=> b!2206923 m!2648577))

(check-sat (not b!2206925) (not b!2206921) (not b!2206926) (not b!2206931) (not b!2206923) (not b!2206922) (not start!214642) (not setNonEmpty!19242) (not b!2206930) (not b!2206927) (not b!2206928))
(check-sat)
