; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212458 () Bool)

(assert start!212458)

(declare-fun b!2189964 () Bool)

(declare-fun e!1399435 () Bool)

(declare-fun tp!682731 () Bool)

(assert (=> b!2189964 (= e!1399435 tp!682731)))

(declare-fun b!2189965 () Bool)

(declare-fun res!940907 () Bool)

(declare-fun e!1399431 () Bool)

(assert (=> b!2189965 (=> (not res!940907) (not e!1399431))))

(declare-fun from!1114 () Int)

(declare-fun lt!818120 () Int)

(assert (=> b!2189965 (= res!940907 (not (= from!1114 lt!818120)))))

(declare-fun b!2189966 () Bool)

(declare-fun e!1399434 () Bool)

(assert (=> b!2189966 (= e!1399434 e!1399431)))

(declare-fun res!940911 () Bool)

(assert (=> b!2189966 (=> (not res!940911) (not e!1399431))))

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2189966 (= res!940911 (and (<= from!1114 lt!818120) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((C!12288 0))(
  ( (C!12289 (val!7130 Int)) )
))
(declare-datatypes ((List!25415 0))(
  ( (Nil!25331) (Cons!25331 (h!30732 C!12288) (t!198013 List!25415)) )
))
(declare-datatypes ((IArray!16419 0))(
  ( (IArray!16420 (innerList!8267 List!25415)) )
))
(declare-datatypes ((Conc!8207 0))(
  ( (Node!8207 (left!19437 Conc!8207) (right!19767 Conc!8207) (csize!16644 Int) (cheight!8418 Int)) (Leaf!12010 (xs!11149 IArray!16419) (csize!16645 Int)) (Empty!8207) )
))
(declare-datatypes ((BalanceConc!16176 0))(
  ( (BalanceConc!16177 (c!348394 Conc!8207)) )
))
(declare-fun totalInput!923 () BalanceConc!16176)

(declare-fun size!19787 (BalanceConc!16176) Int)

(assert (=> b!2189966 (= lt!818120 (size!19787 totalInput!923))))

(declare-fun b!2189967 () Bool)

(declare-fun e!1399432 () Bool)

(assert (=> b!2189967 (= e!1399432 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2189968 () Bool)

(declare-fun res!940908 () Bool)

(assert (=> b!2189968 (=> (not res!940908) (not e!1399431))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6071 0))(
  ( (ElementMatch!6071 (c!348395 C!12288)) (Concat!10373 (regOne!12654 Regex!6071) (regTwo!12654 Regex!6071)) (EmptyExpr!6071) (Star!6071 (reg!6400 Regex!6071)) (EmptyLang!6071) (Union!6071 (regOne!12655 Regex!6071) (regTwo!12655 Regex!6071)) )
))
(declare-datatypes ((List!25416 0))(
  ( (Nil!25332) (Cons!25332 (h!30733 Regex!6071) (t!198014 List!25416)) )
))
(declare-datatypes ((Context!3282 0))(
  ( (Context!3283 (exprs!2141 List!25416)) )
))
(declare-fun z!3955 () (InoxSet Context!3282))

(declare-fun lostCauseZipper!189 ((InoxSet Context!3282)) Bool)

(assert (=> b!2189968 (= res!940908 (not (lostCauseZipper!189 z!3955)))))

(declare-fun b!2189969 () Bool)

(declare-fun res!940909 () Bool)

(assert (=> b!2189969 (=> (not res!940909) (not e!1399431))))

(assert (=> b!2189969 (= res!940909 e!1399432)))

(declare-fun res!940910 () Bool)

(assert (=> b!2189969 (=> res!940910 e!1399432)))

(declare-fun nullableZipper!351 ((InoxSet Context!3282)) Bool)

(assert (=> b!2189969 (= res!940910 (not (nullableZipper!351 z!3955)))))

(declare-fun b!2189970 () Bool)

(assert (=> b!2189970 (= e!1399431 (or (< (+ 1 from!1114) 0) (> (+ 1 from!1114) lt!818120)))))

(declare-fun lt!818119 () Bool)

(declare-fun derivationStepZipper!148 ((InoxSet Context!3282) C!12288) (InoxSet Context!3282))

(declare-fun apply!6104 (BalanceConc!16176 Int) C!12288)

(assert (=> b!2189970 (= lt!818119 (nullableZipper!351 (derivationStepZipper!148 z!3955 (apply!6104 totalInput!923 from!1114))))))

(declare-fun res!940906 () Bool)

(assert (=> start!212458 (=> (not res!940906) (not e!1399434))))

(assert (=> start!212458 (= res!940906 (>= from!1114 0))))

(assert (=> start!212458 e!1399434))

(assert (=> start!212458 true))

(declare-fun e!1399433 () Bool)

(declare-fun inv!33720 (BalanceConc!16176) Bool)

(assert (=> start!212458 (and (inv!33720 totalInput!923) e!1399433)))

(declare-fun condSetEmpty!18438 () Bool)

(assert (=> start!212458 (= condSetEmpty!18438 (= z!3955 ((as const (Array Context!3282 Bool)) false)))))

(declare-fun setRes!18438 () Bool)

(assert (=> start!212458 setRes!18438))

(declare-fun setIsEmpty!18438 () Bool)

(assert (=> setIsEmpty!18438 setRes!18438))

(declare-fun b!2189971 () Bool)

(declare-fun tp!682732 () Bool)

(declare-fun inv!33721 (Conc!8207) Bool)

(assert (=> b!2189971 (= e!1399433 (and (inv!33721 (c!348394 totalInput!923)) tp!682732))))

(declare-fun setElem!18438 () Context!3282)

(declare-fun setNonEmpty!18438 () Bool)

(declare-fun tp!682730 () Bool)

(declare-fun inv!33722 (Context!3282) Bool)

(assert (=> setNonEmpty!18438 (= setRes!18438 (and tp!682730 (inv!33722 setElem!18438) e!1399435))))

(declare-fun setRest!18438 () (InoxSet Context!3282))

(assert (=> setNonEmpty!18438 (= z!3955 ((_ map or) (store ((as const (Array Context!3282 Bool)) false) setElem!18438 true) setRest!18438))))

(assert (= (and start!212458 res!940906) b!2189966))

(assert (= (and b!2189966 res!940911) b!2189969))

(assert (= (and b!2189969 (not res!940910)) b!2189967))

(assert (= (and b!2189969 res!940909) b!2189965))

(assert (= (and b!2189965 res!940907) b!2189968))

(assert (= (and b!2189968 res!940908) b!2189970))

(assert (= start!212458 b!2189971))

(assert (= (and start!212458 condSetEmpty!18438) setIsEmpty!18438))

(assert (= (and start!212458 (not condSetEmpty!18438)) setNonEmpty!18438))

(assert (= setNonEmpty!18438 b!2189964))

(declare-fun m!2632925 () Bool)

(assert (=> b!2189969 m!2632925))

(declare-fun m!2632927 () Bool)

(assert (=> b!2189971 m!2632927))

(declare-fun m!2632929 () Bool)

(assert (=> setNonEmpty!18438 m!2632929))

(declare-fun m!2632931 () Bool)

(assert (=> b!2189970 m!2632931))

(assert (=> b!2189970 m!2632931))

(declare-fun m!2632933 () Bool)

(assert (=> b!2189970 m!2632933))

(assert (=> b!2189970 m!2632933))

(declare-fun m!2632935 () Bool)

(assert (=> b!2189970 m!2632935))

(declare-fun m!2632937 () Bool)

(assert (=> b!2189968 m!2632937))

(declare-fun m!2632939 () Bool)

(assert (=> start!212458 m!2632939))

(declare-fun m!2632941 () Bool)

(assert (=> b!2189966 m!2632941))

(check-sat (not setNonEmpty!18438) (not b!2189970) (not b!2189968) (not b!2189966) (not start!212458) (not b!2189969) (not b!2189971) (not b!2189964))
(check-sat)
