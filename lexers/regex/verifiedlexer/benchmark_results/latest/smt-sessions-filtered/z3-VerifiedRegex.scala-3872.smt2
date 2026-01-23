; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213618 () Bool)

(assert start!213618)

(declare-fun b!2200223 () Bool)

(declare-fun res!945784 () Bool)

(declare-fun e!1406005 () Bool)

(assert (=> b!2200223 (=> (not res!945784) (not e!1406005))))

(declare-datatypes ((C!12568 0))(
  ( (C!12569 (val!7270 Int)) )
))
(declare-datatypes ((List!25716 0))(
  ( (Nil!25632) (Cons!25632 (h!31033 C!12568) (t!198334 List!25716)) )
))
(declare-datatypes ((IArray!16699 0))(
  ( (IArray!16700 (innerList!8407 List!25716)) )
))
(declare-datatypes ((Conc!8347 0))(
  ( (Node!8347 (left!19687 Conc!8347) (right!20017 Conc!8347) (csize!16924 Int) (cheight!8558 Int)) (Leaf!12220 (xs!11289 IArray!16699) (csize!16925 Int)) (Empty!8347) )
))
(declare-datatypes ((BalanceConc!16456 0))(
  ( (BalanceConc!16457 (c!350880 Conc!8347)) )
))
(declare-fun totalInput!891 () BalanceConc!16456)

(declare-fun isEmpty!14621 (BalanceConc!16456) Bool)

(assert (=> b!2200223 (= res!945784 (not (isEmpty!14621 totalInput!891)))))

(declare-fun b!2200225 () Bool)

(declare-fun e!1406001 () Bool)

(assert (=> b!2200225 (= e!1406001 e!1406005)))

(declare-fun res!945782 () Bool)

(assert (=> b!2200225 (=> (not res!945782) (not e!1406005))))

(declare-fun knownSize!10 () Int)

(declare-fun from!1082 () Int)

(declare-fun lt!822995 () Int)

(assert (=> b!2200225 (= res!945782 (and (<= from!1082 lt!822995) (>= knownSize!10 0) (<= knownSize!10 (- lt!822995 from!1082))))))

(declare-fun size!19976 (BalanceConc!16456) Int)

(assert (=> b!2200225 (= lt!822995 (size!19976 totalInput!891))))

(declare-fun tp!684714 () Bool)

(declare-fun e!1406003 () Bool)

(declare-datatypes ((Regex!6211 0))(
  ( (ElementMatch!6211 (c!350881 C!12568)) (Concat!10513 (regOne!12934 Regex!6211) (regTwo!12934 Regex!6211)) (EmptyExpr!6211) (Star!6211 (reg!6540 Regex!6211)) (EmptyLang!6211) (Union!6211 (regOne!12935 Regex!6211) (regTwo!12935 Regex!6211)) )
))
(declare-datatypes ((List!25717 0))(
  ( (Nil!25633) (Cons!25633 (h!31034 Regex!6211) (t!198335 List!25717)) )
))
(declare-datatypes ((Context!3562 0))(
  ( (Context!3563 (exprs!2281 List!25717)) )
))
(declare-fun setElem!18936 () Context!3562)

(declare-fun setRes!18936 () Bool)

(declare-fun setNonEmpty!18936 () Bool)

(declare-fun inv!34408 (Context!3562) Bool)

(assert (=> setNonEmpty!18936 (= setRes!18936 (and tp!684714 (inv!34408 setElem!18936) e!1406003))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!3888 () (InoxSet Context!3562))

(declare-fun setRest!18936 () (InoxSet Context!3562))

(assert (=> setNonEmpty!18936 (= z!3888 ((_ map or) (store ((as const (Array Context!3562 Bool)) false) setElem!18936 true) setRest!18936))))

(declare-fun b!2200226 () Bool)

(assert (=> b!2200226 (= e!1406005 false)))

(declare-fun lt!822996 () Bool)

(declare-fun nullableZipper!491 ((InoxSet Context!3562)) Bool)

(declare-fun derivationStepZipper!269 ((InoxSet Context!3562) C!12568) (InoxSet Context!3562))

(declare-fun apply!6287 (BalanceConc!16456 Int) C!12568)

(assert (=> b!2200226 (= lt!822996 (nullableZipper!491 (derivationStepZipper!269 z!3888 (apply!6287 totalInput!891 from!1082))))))

(declare-fun b!2200227 () Bool)

(declare-fun res!945781 () Bool)

(assert (=> b!2200227 (=> (not res!945781) (not e!1406005))))

(assert (=> b!2200227 (= res!945781 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!822995))))))

(declare-fun b!2200228 () Bool)

(declare-fun e!1406004 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2200228 (= e!1406004 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200229 () Bool)

(declare-fun res!945780 () Bool)

(assert (=> b!2200229 (=> (not res!945780) (not e!1406005))))

(declare-fun lostCauseZipper!321 ((InoxSet Context!3562)) Bool)

(assert (=> b!2200229 (= res!945780 (not (lostCauseZipper!321 z!3888)))))

(declare-fun b!2200230 () Bool)

(declare-fun res!945778 () Bool)

(assert (=> b!2200230 (=> (not res!945778) (not e!1406005))))

(assert (=> b!2200230 (= res!945778 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200231 () Bool)

(declare-fun tp!684713 () Bool)

(assert (=> b!2200231 (= e!1406003 tp!684713)))

(declare-fun b!2200232 () Bool)

(declare-fun e!1406002 () Bool)

(declare-fun tp!684712 () Bool)

(declare-fun inv!34409 (Conc!8347) Bool)

(assert (=> b!2200232 (= e!1406002 (and (inv!34409 (c!350880 totalInput!891)) tp!684712))))

(declare-fun b!2200233 () Bool)

(declare-fun res!945779 () Bool)

(assert (=> b!2200233 (=> (not res!945779) (not e!1406005))))

(declare-fun matchZipper!297 ((InoxSet Context!3562) List!25716) Bool)

(declare-fun take!389 (List!25716 Int) List!25716)

(declare-fun drop!1399 (List!25716 Int) List!25716)

(declare-fun list!9869 (BalanceConc!16456) List!25716)

(assert (=> b!2200233 (= res!945779 (matchZipper!297 z!3888 (take!389 (drop!1399 (list!9869 totalInput!891) from!1082) knownSize!10)))))

(declare-fun setIsEmpty!18936 () Bool)

(assert (=> setIsEmpty!18936 setRes!18936))

(declare-fun res!945777 () Bool)

(assert (=> start!213618 (=> (not res!945777) (not e!1406001))))

(assert (=> start!213618 (= res!945777 (>= from!1082 0))))

(assert (=> start!213618 e!1406001))

(assert (=> start!213618 true))

(declare-fun inv!34410 (BalanceConc!16456) Bool)

(assert (=> start!213618 (and (inv!34410 totalInput!891) e!1406002)))

(declare-fun condSetEmpty!18936 () Bool)

(assert (=> start!213618 (= condSetEmpty!18936 (= z!3888 ((as const (Array Context!3562 Bool)) false)))))

(assert (=> start!213618 setRes!18936))

(declare-fun b!2200224 () Bool)

(declare-fun res!945783 () Bool)

(assert (=> b!2200224 (=> (not res!945783) (not e!1406005))))

(assert (=> b!2200224 (= res!945783 e!1406004)))

(declare-fun res!945785 () Bool)

(assert (=> b!2200224 (=> res!945785 e!1406004)))

(assert (=> b!2200224 (= res!945785 (not (nullableZipper!491 z!3888)))))

(assert (= (and start!213618 res!945777) b!2200225))

(assert (= (and b!2200225 res!945782) b!2200233))

(assert (= (and b!2200233 res!945779) b!2200230))

(assert (= (and b!2200230 res!945778) b!2200224))

(assert (= (and b!2200224 (not res!945785)) b!2200228))

(assert (= (and b!2200224 res!945783) b!2200223))

(assert (= (and b!2200223 res!945784) b!2200227))

(assert (= (and b!2200227 res!945781) b!2200229))

(assert (= (and b!2200229 res!945780) b!2200226))

(assert (= start!213618 b!2200232))

(assert (= (and start!213618 condSetEmpty!18936) setIsEmpty!18936))

(assert (= (and start!213618 (not condSetEmpty!18936)) setNonEmpty!18936))

(assert (= setNonEmpty!18936 b!2200231))

(declare-fun m!2642919 () Bool)

(assert (=> b!2200233 m!2642919))

(assert (=> b!2200233 m!2642919))

(declare-fun m!2642921 () Bool)

(assert (=> b!2200233 m!2642921))

(assert (=> b!2200233 m!2642921))

(declare-fun m!2642923 () Bool)

(assert (=> b!2200233 m!2642923))

(assert (=> b!2200233 m!2642923))

(declare-fun m!2642925 () Bool)

(assert (=> b!2200233 m!2642925))

(declare-fun m!2642927 () Bool)

(assert (=> b!2200229 m!2642927))

(declare-fun m!2642929 () Bool)

(assert (=> b!2200232 m!2642929))

(declare-fun m!2642931 () Bool)

(assert (=> b!2200224 m!2642931))

(declare-fun m!2642933 () Bool)

(assert (=> start!213618 m!2642933))

(declare-fun m!2642935 () Bool)

(assert (=> setNonEmpty!18936 m!2642935))

(declare-fun m!2642937 () Bool)

(assert (=> b!2200226 m!2642937))

(assert (=> b!2200226 m!2642937))

(declare-fun m!2642939 () Bool)

(assert (=> b!2200226 m!2642939))

(assert (=> b!2200226 m!2642939))

(declare-fun m!2642941 () Bool)

(assert (=> b!2200226 m!2642941))

(declare-fun m!2642943 () Bool)

(assert (=> b!2200225 m!2642943))

(declare-fun m!2642945 () Bool)

(assert (=> b!2200223 m!2642945))

(check-sat (not b!2200226) (not setNonEmpty!18936) (not b!2200233) (not b!2200224) (not b!2200231) (not b!2200223) (not b!2200225) (not b!2200232) (not b!2200229) (not start!213618))
(check-sat)
