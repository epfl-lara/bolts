; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!214482 () Bool)

(assert start!214482)

(declare-fun b!2205607 () Bool)

(declare-fun e!1409081 () Bool)

(declare-fun e!1409080 () Bool)

(assert (=> b!2205607 (= e!1409081 e!1409080)))

(declare-fun res!947989 () Bool)

(assert (=> b!2205607 (=> (not res!947989) (not e!1409080))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12680 0))(
  ( (C!12681 (val!7326 Int)) )
))
(declare-datatypes ((Regex!6267 0))(
  ( (ElementMatch!6267 (c!352242 C!12680)) (Concat!10569 (regOne!13046 Regex!6267) (regTwo!13046 Regex!6267)) (EmptyExpr!6267) (Star!6267 (reg!6596 Regex!6267)) (EmptyLang!6267) (Union!6267 (regOne!13047 Regex!6267) (regTwo!13047 Regex!6267)) )
))
(declare-datatypes ((List!25838 0))(
  ( (Nil!25754) (Cons!25754 (h!31155 Regex!6267) (t!198482 List!25838)) )
))
(declare-datatypes ((Context!3674 0))(
  ( (Context!3675 (exprs!2337 List!25838)) )
))
(declare-fun z!3888 () (InoxSet Context!3674))

(declare-datatypes ((List!25839 0))(
  ( (Nil!25755) (Cons!25755 (h!31156 C!12680) (t!198483 List!25839)) )
))
(declare-fun lt!824734 () List!25839)

(declare-fun matchZipper!353 ((InoxSet Context!3674) List!25839) Bool)

(assert (=> b!2205607 (= res!947989 (matchZipper!353 z!3888 lt!824734))))

(declare-fun knownSize!10 () Int)

(declare-fun from!1082 () Int)

(declare-datatypes ((IArray!16811 0))(
  ( (IArray!16812 (innerList!8463 List!25839)) )
))
(declare-datatypes ((Conc!8403 0))(
  ( (Node!8403 (left!19791 Conc!8403) (right!20121 Conc!8403) (csize!17036 Int) (cheight!8614 Int)) (Leaf!12304 (xs!11345 IArray!16811) (csize!17037 Int)) (Empty!8403) )
))
(declare-datatypes ((BalanceConc!16568 0))(
  ( (BalanceConc!16569 (c!352243 Conc!8403)) )
))
(declare-fun totalInput!891 () BalanceConc!16568)

(declare-fun take!445 (List!25839 Int) List!25839)

(declare-fun drop!1455 (List!25839 Int) List!25839)

(declare-fun list!9948 (BalanceConc!16568) List!25839)

(assert (=> b!2205607 (= lt!824734 (take!445 (drop!1455 (list!9948 totalInput!891) from!1082) knownSize!10))))

(declare-fun b!2205608 () Bool)

(declare-fun e!1409082 () Bool)

(declare-fun tp!685816 () Bool)

(declare-fun inv!34717 (Conc!8403) Bool)

(assert (=> b!2205608 (= e!1409082 (and (inv!34717 (c!352243 totalInput!891)) tp!685816))))

(declare-fun b!2205609 () Bool)

(declare-fun res!947990 () Bool)

(declare-fun e!1409083 () Bool)

(assert (=> b!2205609 (=> (not res!947990) (not e!1409083))))

(declare-fun isEmpty!14729 (List!25839) Bool)

(assert (=> b!2205609 (= res!947990 (isEmpty!14729 lt!824734))))

(declare-fun res!947986 () Bool)

(declare-fun e!1409079 () Bool)

(assert (=> start!214482 (=> (not res!947986) (not e!1409079))))

(assert (=> start!214482 (= res!947986 (>= from!1082 0))))

(assert (=> start!214482 e!1409079))

(assert (=> start!214482 true))

(declare-fun inv!34718 (BalanceConc!16568) Bool)

(assert (=> start!214482 (and (inv!34718 totalInput!891) e!1409082)))

(declare-fun condSetEmpty!19170 () Bool)

(assert (=> start!214482 (= condSetEmpty!19170 (= z!3888 ((as const (Array Context!3674 Bool)) false)))))

(declare-fun setRes!19170 () Bool)

(assert (=> start!214482 setRes!19170))

(declare-fun b!2205610 () Bool)

(assert (=> b!2205610 (= e!1409079 e!1409081)))

(declare-fun res!947987 () Bool)

(assert (=> b!2205610 (=> (not res!947987) (not e!1409081))))

(declare-fun lt!824733 () Int)

(assert (=> b!2205610 (= res!947987 (and (<= from!1082 lt!824733) (>= knownSize!10 0) (<= knownSize!10 (- lt!824733 from!1082))))))

(declare-fun size!20070 (BalanceConc!16568) Int)

(assert (=> b!2205610 (= lt!824733 (size!20070 totalInput!891))))

(declare-fun setIsEmpty!19170 () Bool)

(assert (=> setIsEmpty!19170 setRes!19170))

(declare-fun b!2205611 () Bool)

(declare-fun e!1409085 () Bool)

(assert (=> b!2205611 (= e!1409080 e!1409085)))

(declare-fun res!947988 () Bool)

(assert (=> b!2205611 (=> (not res!947988) (not e!1409085))))

(declare-fun lastNullablePos!161 () Int)

(declare-fun lt!824732 () Bool)

(assert (=> b!2205611 (= res!947988 (or lt!824732 (= lastNullablePos!161 (- from!1082 1))))))

(declare-fun nullableZipper!547 ((InoxSet Context!3674)) Bool)

(assert (=> b!2205611 (= lt!824732 (not (nullableZipper!547 z!3888)))))

(declare-fun lt!824731 () Int)

(declare-fun b!2205612 () Bool)

(assert (=> b!2205612 (= e!1409083 (and (not lt!824732) (= lastNullablePos!161 (- from!1082 1)) (< lt!824731 (+ (- from!1082 1) knownSize!10))))))

(declare-fun b!2205613 () Bool)

(declare-fun res!947993 () Bool)

(assert (=> b!2205613 (=> (not res!947993) (not e!1409085))))

(declare-fun isEmpty!14730 (BalanceConc!16568) Bool)

(assert (=> b!2205613 (= res!947993 (not (isEmpty!14730 totalInput!891)))))

(declare-fun b!2205614 () Bool)

(declare-fun res!947992 () Bool)

(assert (=> b!2205614 (=> (not res!947992) (not e!1409080))))

(assert (=> b!2205614 (= res!947992 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2205615 () Bool)

(assert (=> b!2205615 (= e!1409085 e!1409083)))

(declare-fun res!947985 () Bool)

(assert (=> b!2205615 (=> (not res!947985) (not e!1409083))))

(assert (=> b!2205615 (= res!947985 (>= lt!824731 lastNullablePos!161))))

(declare-fun furthestNullablePosition!403 ((InoxSet Context!3674) Int BalanceConc!16568 Int Int) Int)

(assert (=> b!2205615 (= lt!824731 (furthestNullablePosition!403 z!3888 from!1082 totalInput!891 lt!824733 lastNullablePos!161))))

(declare-fun b!2205616 () Bool)

(declare-fun e!1409084 () Bool)

(declare-fun tp!685818 () Bool)

(assert (=> b!2205616 (= e!1409084 tp!685818)))

(declare-fun b!2205617 () Bool)

(declare-fun res!947991 () Bool)

(assert (=> b!2205617 (=> (not res!947991) (not e!1409085))))

(assert (=> b!2205617 (= res!947991 (= knownSize!10 0))))

(declare-fun setNonEmpty!19170 () Bool)

(declare-fun tp!685817 () Bool)

(declare-fun setElem!19170 () Context!3674)

(declare-fun inv!34719 (Context!3674) Bool)

(assert (=> setNonEmpty!19170 (= setRes!19170 (and tp!685817 (inv!34719 setElem!19170) e!1409084))))

(declare-fun setRest!19170 () (InoxSet Context!3674))

(assert (=> setNonEmpty!19170 (= z!3888 ((_ map or) (store ((as const (Array Context!3674 Bool)) false) setElem!19170 true) setRest!19170))))

(assert (= (and start!214482 res!947986) b!2205610))

(assert (= (and b!2205610 res!947987) b!2205607))

(assert (= (and b!2205607 res!947989) b!2205614))

(assert (= (and b!2205614 res!947992) b!2205611))

(assert (= (and b!2205611 res!947988) b!2205613))

(assert (= (and b!2205613 res!947993) b!2205617))

(assert (= (and b!2205617 res!947991) b!2205615))

(assert (= (and b!2205615 res!947985) b!2205609))

(assert (= (and b!2205609 res!947990) b!2205612))

(assert (= start!214482 b!2205608))

(assert (= (and start!214482 condSetEmpty!19170) setIsEmpty!19170))

(assert (= (and start!214482 (not condSetEmpty!19170)) setNonEmpty!19170))

(assert (= setNonEmpty!19170 b!2205616))

(declare-fun m!2647467 () Bool)

(assert (=> b!2205613 m!2647467))

(declare-fun m!2647469 () Bool)

(assert (=> start!214482 m!2647469))

(declare-fun m!2647471 () Bool)

(assert (=> b!2205611 m!2647471))

(declare-fun m!2647473 () Bool)

(assert (=> b!2205608 m!2647473))

(declare-fun m!2647475 () Bool)

(assert (=> b!2205615 m!2647475))

(declare-fun m!2647477 () Bool)

(assert (=> b!2205609 m!2647477))

(declare-fun m!2647479 () Bool)

(assert (=> b!2205610 m!2647479))

(declare-fun m!2647481 () Bool)

(assert (=> setNonEmpty!19170 m!2647481))

(declare-fun m!2647483 () Bool)

(assert (=> b!2205607 m!2647483))

(declare-fun m!2647485 () Bool)

(assert (=> b!2205607 m!2647485))

(assert (=> b!2205607 m!2647485))

(declare-fun m!2647487 () Bool)

(assert (=> b!2205607 m!2647487))

(assert (=> b!2205607 m!2647487))

(declare-fun m!2647489 () Bool)

(assert (=> b!2205607 m!2647489))

(check-sat (not setNonEmpty!19170) (not b!2205615) (not b!2205616) (not b!2205608) (not b!2205609) (not b!2205607) (not start!214482) (not b!2205613) (not b!2205611) (not b!2205610))
(check-sat)
