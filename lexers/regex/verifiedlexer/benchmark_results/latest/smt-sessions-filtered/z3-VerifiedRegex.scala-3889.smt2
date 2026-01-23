; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214134 () Bool)

(assert start!214134)

(declare-fun b!2203325 () Bool)

(declare-fun res!947050 () Bool)

(declare-fun e!1407708 () Bool)

(assert (=> b!2203325 (=> (not res!947050) (not e!1407708))))

(declare-fun e!1407710 () Bool)

(assert (=> b!2203325 (= res!947050 e!1407710)))

(declare-fun res!947048 () Bool)

(assert (=> b!2203325 (=> res!947048 e!1407710)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12636 0))(
  ( (C!12637 (val!7304 Int)) )
))
(declare-datatypes ((Regex!6245 0))(
  ( (ElementMatch!6245 (c!351608 C!12636)) (Concat!10547 (regOne!13002 Regex!6245) (regTwo!13002 Regex!6245)) (EmptyExpr!6245) (Star!6245 (reg!6574 Regex!6245)) (EmptyLang!6245) (Union!6245 (regOne!13003 Regex!6245) (regTwo!13003 Regex!6245)) )
))
(declare-datatypes ((List!25788 0))(
  ( (Nil!25704) (Cons!25704 (h!31105 Regex!6245) (t!198422 List!25788)) )
))
(declare-datatypes ((Context!3630 0))(
  ( (Context!3631 (exprs!2315 List!25788)) )
))
(declare-fun z!3888 () (InoxSet Context!3630))

(declare-fun nullableZipper!525 ((InoxSet Context!3630)) Bool)

(assert (=> b!2203325 (= res!947048 (not (nullableZipper!525 z!3888)))))

(declare-fun res!947046 () Bool)

(declare-fun e!1407709 () Bool)

(assert (=> start!214134 (=> (not res!947046) (not e!1407709))))

(declare-fun from!1082 () Int)

(assert (=> start!214134 (= res!947046 (>= from!1082 0))))

(assert (=> start!214134 e!1407709))

(assert (=> start!214134 true))

(declare-datatypes ((List!25789 0))(
  ( (Nil!25705) (Cons!25705 (h!31106 C!12636) (t!198423 List!25789)) )
))
(declare-datatypes ((IArray!16767 0))(
  ( (IArray!16768 (innerList!8441 List!25789)) )
))
(declare-datatypes ((Conc!8381 0))(
  ( (Node!8381 (left!19746 Conc!8381) (right!20076 Conc!8381) (csize!16992 Int) (cheight!8592 Int)) (Leaf!12271 (xs!11323 IArray!16767) (csize!16993 Int)) (Empty!8381) )
))
(declare-datatypes ((BalanceConc!16524 0))(
  ( (BalanceConc!16525 (c!351609 Conc!8381)) )
))
(declare-fun totalInput!891 () BalanceConc!16524)

(declare-fun e!1407707 () Bool)

(declare-fun inv!34601 (BalanceConc!16524) Bool)

(assert (=> start!214134 (and (inv!34601 totalInput!891) e!1407707)))

(declare-fun condSetEmpty!19084 () Bool)

(assert (=> start!214134 (= condSetEmpty!19084 (= z!3888 ((as const (Array Context!3630 Bool)) false)))))

(declare-fun setRes!19084 () Bool)

(assert (=> start!214134 setRes!19084))

(declare-fun b!2203326 () Bool)

(declare-fun res!947045 () Bool)

(assert (=> b!2203326 (=> (not res!947045) (not e!1407708))))

(declare-fun knownSize!10 () Int)

(declare-fun matchZipper!331 ((InoxSet Context!3630) List!25789) Bool)

(declare-fun take!423 (List!25789 Int) List!25789)

(declare-fun drop!1433 (List!25789 Int) List!25789)

(declare-fun list!9919 (BalanceConc!16524) List!25789)

(assert (=> b!2203326 (= res!947045 (matchZipper!331 z!3888 (take!423 (drop!1433 (list!9919 totalInput!891) from!1082) knownSize!10)))))

(declare-fun b!2203327 () Bool)

(declare-fun tp!685434 () Bool)

(declare-fun inv!34602 (Conc!8381) Bool)

(assert (=> b!2203327 (= e!1407707 (and (inv!34602 (c!351609 totalInput!891)) tp!685434))))

(declare-fun b!2203328 () Bool)

(declare-fun res!947051 () Bool)

(assert (=> b!2203328 (=> (not res!947051) (not e!1407708))))

(declare-fun isEmpty!14686 (BalanceConc!16524) Bool)

(assert (=> b!2203328 (= res!947051 (not (isEmpty!14686 totalInput!891)))))

(declare-fun b!2203329 () Bool)

(declare-fun res!947047 () Bool)

(assert (=> b!2203329 (=> (not res!947047) (not e!1407708))))

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2203329 (= res!947047 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun e!1407711 () Bool)

(declare-fun setElem!19084 () Context!3630)

(declare-fun setNonEmpty!19084 () Bool)

(declare-fun tp!685432 () Bool)

(declare-fun inv!34603 (Context!3630) Bool)

(assert (=> setNonEmpty!19084 (= setRes!19084 (and tp!685432 (inv!34603 setElem!19084) e!1407711))))

(declare-fun setRest!19084 () (InoxSet Context!3630))

(assert (=> setNonEmpty!19084 (= z!3888 ((_ map or) (store ((as const (Array Context!3630 Bool)) false) setElem!19084 true) setRest!19084))))

(declare-fun setIsEmpty!19084 () Bool)

(assert (=> setIsEmpty!19084 setRes!19084))

(declare-fun b!2203330 () Bool)

(assert (=> b!2203330 (= e!1407708 (and (not (= knownSize!10 0)) (<= knownSize!10 0)))))

(declare-fun b!2203331 () Bool)

(declare-fun tp!685433 () Bool)

(assert (=> b!2203331 (= e!1407711 tp!685433)))

(declare-fun b!2203332 () Bool)

(assert (=> b!2203332 (= e!1407709 e!1407708)))

(declare-fun res!947049 () Bool)

(assert (=> b!2203332 (=> (not res!947049) (not e!1407708))))

(declare-fun lt!823788 () Int)

(assert (=> b!2203332 (= res!947049 (and (<= from!1082 lt!823788) (>= knownSize!10 0) (<= knownSize!10 (- lt!823788 from!1082))))))

(declare-fun size!20036 (BalanceConc!16524) Int)

(assert (=> b!2203332 (= lt!823788 (size!20036 totalInput!891))))

(declare-fun b!2203333 () Bool)

(assert (=> b!2203333 (= e!1407710 (= lastNullablePos!161 (- from!1082 1)))))

(assert (= (and start!214134 res!947046) b!2203332))

(assert (= (and b!2203332 res!947049) b!2203326))

(assert (= (and b!2203326 res!947045) b!2203329))

(assert (= (and b!2203329 res!947047) b!2203325))

(assert (= (and b!2203325 (not res!947048)) b!2203333))

(assert (= (and b!2203325 res!947050) b!2203328))

(assert (= (and b!2203328 res!947051) b!2203330))

(assert (= start!214134 b!2203327))

(assert (= (and start!214134 condSetEmpty!19084) setIsEmpty!19084))

(assert (= (and start!214134 (not condSetEmpty!19084)) setNonEmpty!19084))

(assert (= setNonEmpty!19084 b!2203331))

(declare-fun m!2645359 () Bool)

(assert (=> setNonEmpty!19084 m!2645359))

(declare-fun m!2645361 () Bool)

(assert (=> start!214134 m!2645361))

(declare-fun m!2645363 () Bool)

(assert (=> b!2203326 m!2645363))

(assert (=> b!2203326 m!2645363))

(declare-fun m!2645365 () Bool)

(assert (=> b!2203326 m!2645365))

(assert (=> b!2203326 m!2645365))

(declare-fun m!2645367 () Bool)

(assert (=> b!2203326 m!2645367))

(assert (=> b!2203326 m!2645367))

(declare-fun m!2645369 () Bool)

(assert (=> b!2203326 m!2645369))

(declare-fun m!2645371 () Bool)

(assert (=> b!2203332 m!2645371))

(declare-fun m!2645373 () Bool)

(assert (=> b!2203328 m!2645373))

(declare-fun m!2645375 () Bool)

(assert (=> b!2203325 m!2645375))

(declare-fun m!2645377 () Bool)

(assert (=> b!2203327 m!2645377))

(check-sat (not start!214134) (not b!2203325) (not b!2203332) (not b!2203326) (not b!2203328) (not b!2203331) (not setNonEmpty!19084) (not b!2203327))
(check-sat)
