; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213870 () Bool)

(assert start!213870)

(declare-fun b!2201878 () Bool)

(declare-fun e!1406879 () Bool)

(declare-fun lt!823506 () Int)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2201878 (= e!1406879 (and (= lt!823506 lastNullablePos!161) (not (= lt!823506 (- 1)))))))

(declare-datatypes ((C!12608 0))(
  ( (C!12609 (val!7290 Int)) )
))
(declare-datatypes ((List!25760 0))(
  ( (Nil!25676) (Cons!25676 (h!31077 C!12608) (t!198394 List!25760)) )
))
(declare-datatypes ((IArray!16739 0))(
  ( (IArray!16740 (innerList!8427 List!25760)) )
))
(declare-datatypes ((Conc!8367 0))(
  ( (Node!8367 (left!19725 Conc!8367) (right!20055 Conc!8367) (csize!16964 Int) (cheight!8578 Int)) (Leaf!12250 (xs!11309 IArray!16739) (csize!16965 Int)) (Empty!8367) )
))
(declare-datatypes ((BalanceConc!16496 0))(
  ( (BalanceConc!16497 (c!351230 Conc!8367)) )
))
(declare-fun totalInput!891 () BalanceConc!16496)

(declare-fun lt!823505 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6231 0))(
  ( (ElementMatch!6231 (c!351231 C!12608)) (Concat!10533 (regOne!12974 Regex!6231) (regTwo!12974 Regex!6231)) (EmptyExpr!6231) (Star!6231 (reg!6560 Regex!6231)) (EmptyLang!6231) (Union!6231 (regOne!12975 Regex!6231) (regTwo!12975 Regex!6231)) )
))
(declare-datatypes ((List!25761 0))(
  ( (Nil!25677) (Cons!25677 (h!31078 Regex!6231) (t!198395 List!25761)) )
))
(declare-datatypes ((Context!3602 0))(
  ( (Context!3603 (exprs!2301 List!25761)) )
))
(declare-fun z!3888 () (InoxSet Context!3602))

(declare-fun from!1082 () Int)

(declare-fun furthestNullablePosition!381 ((InoxSet Context!3602) Int BalanceConc!16496 Int Int) Int)

(assert (=> b!2201878 (= lt!823506 (furthestNullablePosition!381 z!3888 from!1082 totalInput!891 lt!823505 lastNullablePos!161))))

(declare-fun b!2201879 () Bool)

(declare-fun res!946556 () Bool)

(assert (=> b!2201879 (=> (not res!946556) (not e!1406879))))

(assert (=> b!2201879 (= res!946556 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun setIsEmpty!19012 () Bool)

(declare-fun setRes!19012 () Bool)

(assert (=> setIsEmpty!19012 setRes!19012))

(declare-fun b!2201880 () Bool)

(declare-fun res!946558 () Bool)

(assert (=> b!2201880 (=> (not res!946558) (not e!1406879))))

(assert (=> b!2201880 (= res!946558 (= from!1082 0))))

(declare-fun b!2201881 () Bool)

(declare-fun e!1406882 () Bool)

(declare-fun tp!685097 () Bool)

(assert (=> b!2201881 (= e!1406882 tp!685097)))

(declare-fun res!946553 () Bool)

(declare-fun e!1406880 () Bool)

(assert (=> start!213870 (=> (not res!946553) (not e!1406880))))

(assert (=> start!213870 (= res!946553 (>= from!1082 0))))

(assert (=> start!213870 e!1406880))

(assert (=> start!213870 true))

(declare-fun e!1406883 () Bool)

(declare-fun inv!34510 (BalanceConc!16496) Bool)

(assert (=> start!213870 (and (inv!34510 totalInput!891) e!1406883)))

(declare-fun condSetEmpty!19012 () Bool)

(assert (=> start!213870 (= condSetEmpty!19012 (= z!3888 ((as const (Array Context!3602 Bool)) false)))))

(assert (=> start!213870 setRes!19012))

(declare-fun b!2201882 () Bool)

(declare-fun res!946552 () Bool)

(assert (=> b!2201882 (=> (not res!946552) (not e!1406879))))

(declare-fun e!1406881 () Bool)

(assert (=> b!2201882 (= res!946552 e!1406881)))

(declare-fun res!946559 () Bool)

(assert (=> b!2201882 (=> res!946559 e!1406881)))

(declare-fun nullableZipper!511 ((InoxSet Context!3602)) Bool)

(assert (=> b!2201882 (= res!946559 (not (nullableZipper!511 z!3888)))))

(declare-fun b!2201883 () Bool)

(declare-fun res!946554 () Bool)

(assert (=> b!2201883 (=> (not res!946554) (not e!1406879))))

(declare-fun knownSize!10 () Int)

(declare-fun matchZipper!317 ((InoxSet Context!3602) List!25760) Bool)

(declare-fun take!409 (List!25760 Int) List!25760)

(declare-fun drop!1419 (List!25760 Int) List!25760)

(declare-fun list!9897 (BalanceConc!16496) List!25760)

(assert (=> b!2201883 (= res!946554 (matchZipper!317 z!3888 (take!409 (drop!1419 (list!9897 totalInput!891) from!1082) knownSize!10)))))

(declare-fun b!2201884 () Bool)

(assert (=> b!2201884 (= e!1406881 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2201885 () Bool)

(declare-fun res!946557 () Bool)

(assert (=> b!2201885 (=> (not res!946557) (not e!1406879))))

(declare-fun isEmpty!14651 (BalanceConc!16496) Bool)

(assert (=> b!2201885 (= res!946557 (isEmpty!14651 totalInput!891))))

(declare-fun b!2201886 () Bool)

(assert (=> b!2201886 (= e!1406880 e!1406879)))

(declare-fun res!946555 () Bool)

(assert (=> b!2201886 (=> (not res!946555) (not e!1406879))))

(assert (=> b!2201886 (= res!946555 (and (<= from!1082 lt!823505) (>= knownSize!10 0) (<= knownSize!10 (- lt!823505 from!1082))))))

(declare-fun size!20006 (BalanceConc!16496) Int)

(assert (=> b!2201886 (= lt!823505 (size!20006 totalInput!891))))

(declare-fun b!2201887 () Bool)

(declare-fun tp!685096 () Bool)

(declare-fun inv!34511 (Conc!8367) Bool)

(assert (=> b!2201887 (= e!1406883 (and (inv!34511 (c!351230 totalInput!891)) tp!685096))))

(declare-fun setElem!19012 () Context!3602)

(declare-fun setNonEmpty!19012 () Bool)

(declare-fun tp!685098 () Bool)

(declare-fun inv!34512 (Context!3602) Bool)

(assert (=> setNonEmpty!19012 (= setRes!19012 (and tp!685098 (inv!34512 setElem!19012) e!1406882))))

(declare-fun setRest!19012 () (InoxSet Context!3602))

(assert (=> setNonEmpty!19012 (= z!3888 ((_ map or) (store ((as const (Array Context!3602 Bool)) false) setElem!19012 true) setRest!19012))))

(assert (= (and start!213870 res!946553) b!2201886))

(assert (= (and b!2201886 res!946555) b!2201883))

(assert (= (and b!2201883 res!946554) b!2201879))

(assert (= (and b!2201879 res!946556) b!2201882))

(assert (= (and b!2201882 (not res!946559)) b!2201884))

(assert (= (and b!2201882 res!946552) b!2201885))

(assert (= (and b!2201885 res!946557) b!2201880))

(assert (= (and b!2201880 res!946558) b!2201878))

(assert (= start!213870 b!2201887))

(assert (= (and start!213870 condSetEmpty!19012) setIsEmpty!19012))

(assert (= (and start!213870 (not condSetEmpty!19012)) setNonEmpty!19012))

(assert (= setNonEmpty!19012 b!2201881))

(declare-fun m!2644369 () Bool)

(assert (=> b!2201878 m!2644369))

(declare-fun m!2644371 () Bool)

(assert (=> setNonEmpty!19012 m!2644371))

(declare-fun m!2644373 () Bool)

(assert (=> start!213870 m!2644373))

(declare-fun m!2644375 () Bool)

(assert (=> b!2201883 m!2644375))

(assert (=> b!2201883 m!2644375))

(declare-fun m!2644377 () Bool)

(assert (=> b!2201883 m!2644377))

(assert (=> b!2201883 m!2644377))

(declare-fun m!2644379 () Bool)

(assert (=> b!2201883 m!2644379))

(assert (=> b!2201883 m!2644379))

(declare-fun m!2644381 () Bool)

(assert (=> b!2201883 m!2644381))

(declare-fun m!2644383 () Bool)

(assert (=> b!2201886 m!2644383))

(declare-fun m!2644385 () Bool)

(assert (=> b!2201887 m!2644385))

(declare-fun m!2644387 () Bool)

(assert (=> b!2201885 m!2644387))

(declare-fun m!2644389 () Bool)

(assert (=> b!2201882 m!2644389))

(check-sat (not b!2201881) (not b!2201878) (not b!2201883) (not setNonEmpty!19012) (not start!213870) (not b!2201885) (not b!2201886) (not b!2201887) (not b!2201882))
(check-sat)
