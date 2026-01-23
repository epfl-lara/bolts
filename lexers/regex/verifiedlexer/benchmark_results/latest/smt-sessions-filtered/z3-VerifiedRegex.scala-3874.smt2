; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213626 () Bool)

(assert start!213626)

(declare-fun b!2200367 () Bool)

(declare-fun e!1406071 () Bool)

(declare-fun e!1406067 () Bool)

(assert (=> b!2200367 (= e!1406071 e!1406067)))

(declare-fun res!945888 () Bool)

(assert (=> b!2200367 (=> (not res!945888) (not e!1406067))))

(declare-fun knownSize!10 () Int)

(declare-fun from!1082 () Int)

(declare-fun lt!823026 () Int)

(assert (=> b!2200367 (= res!945888 (and (<= from!1082 lt!823026) (>= knownSize!10 0) (<= knownSize!10 (- lt!823026 from!1082))))))

(declare-datatypes ((C!12576 0))(
  ( (C!12577 (val!7274 Int)) )
))
(declare-datatypes ((List!25724 0))(
  ( (Nil!25640) (Cons!25640 (h!31041 C!12576) (t!198342 List!25724)) )
))
(declare-datatypes ((IArray!16707 0))(
  ( (IArray!16708 (innerList!8411 List!25724)) )
))
(declare-datatypes ((Conc!8351 0))(
  ( (Node!8351 (left!19693 Conc!8351) (right!20023 Conc!8351) (csize!16932 Int) (cheight!8562 Int)) (Leaf!12226 (xs!11293 IArray!16707) (csize!16933 Int)) (Empty!8351) )
))
(declare-datatypes ((BalanceConc!16464 0))(
  ( (BalanceConc!16465 (c!350894 Conc!8351)) )
))
(declare-fun totalInput!891 () BalanceConc!16464)

(declare-fun size!19980 (BalanceConc!16464) Int)

(assert (=> b!2200367 (= lt!823026 (size!19980 totalInput!891))))

(declare-fun b!2200368 () Bool)

(declare-fun res!945885 () Bool)

(assert (=> b!2200368 (=> (not res!945885) (not e!1406067))))

(assert (=> b!2200368 (= res!945885 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!823026))))))

(declare-fun b!2200369 () Bool)

(declare-fun res!945890 () Bool)

(assert (=> b!2200369 (=> (not res!945890) (not e!1406067))))

(declare-fun e!1406068 () Bool)

(assert (=> b!2200369 (= res!945890 e!1406068)))

(declare-fun res!945893 () Bool)

(assert (=> b!2200369 (=> res!945893 e!1406068)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6215 0))(
  ( (ElementMatch!6215 (c!350895 C!12576)) (Concat!10517 (regOne!12942 Regex!6215) (regTwo!12942 Regex!6215)) (EmptyExpr!6215) (Star!6215 (reg!6544 Regex!6215)) (EmptyLang!6215) (Union!6215 (regOne!12943 Regex!6215) (regTwo!12943 Regex!6215)) )
))
(declare-datatypes ((List!25725 0))(
  ( (Nil!25641) (Cons!25641 (h!31042 Regex!6215) (t!198343 List!25725)) )
))
(declare-datatypes ((Context!3570 0))(
  ( (Context!3571 (exprs!2285 List!25725)) )
))
(declare-fun z!3888 () (InoxSet Context!3570))

(declare-fun nullableZipper!495 ((InoxSet Context!3570)) Bool)

(assert (=> b!2200369 (= res!945893 (not (nullableZipper!495 z!3888)))))

(declare-fun b!2200370 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2200370 (= e!1406068 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun res!945891 () Bool)

(assert (=> start!213626 (=> (not res!945891) (not e!1406071))))

(assert (=> start!213626 (= res!945891 (>= from!1082 0))))

(assert (=> start!213626 e!1406071))

(assert (=> start!213626 true))

(declare-fun e!1406069 () Bool)

(declare-fun inv!34426 (BalanceConc!16464) Bool)

(assert (=> start!213626 (and (inv!34426 totalInput!891) e!1406069)))

(declare-fun condSetEmpty!18948 () Bool)

(assert (=> start!213626 (= condSetEmpty!18948 (= z!3888 ((as const (Array Context!3570 Bool)) false)))))

(declare-fun setRes!18948 () Bool)

(assert (=> start!213626 setRes!18948))

(declare-fun b!2200371 () Bool)

(declare-fun tp!684750 () Bool)

(declare-fun inv!34427 (Conc!8351) Bool)

(assert (=> b!2200371 (= e!1406069 (and (inv!34427 (c!350894 totalInput!891)) tp!684750))))

(declare-fun b!2200372 () Bool)

(declare-fun res!945892 () Bool)

(assert (=> b!2200372 (=> (not res!945892) (not e!1406067))))

(declare-fun matchZipper!301 ((InoxSet Context!3570) List!25724) Bool)

(declare-fun take!393 (List!25724 Int) List!25724)

(declare-fun drop!1403 (List!25724 Int) List!25724)

(declare-fun list!9873 (BalanceConc!16464) List!25724)

(assert (=> b!2200372 (= res!945892 (matchZipper!301 z!3888 (take!393 (drop!1403 (list!9873 totalInput!891) from!1082) knownSize!10)))))

(declare-fun setNonEmpty!18948 () Bool)

(declare-fun setElem!18948 () Context!3570)

(declare-fun e!1406070 () Bool)

(declare-fun tp!684748 () Bool)

(declare-fun inv!34428 (Context!3570) Bool)

(assert (=> setNonEmpty!18948 (= setRes!18948 (and tp!684748 (inv!34428 setElem!18948) e!1406070))))

(declare-fun setRest!18948 () (InoxSet Context!3570))

(assert (=> setNonEmpty!18948 (= z!3888 ((_ map or) (store ((as const (Array Context!3570 Bool)) false) setElem!18948 true) setRest!18948))))

(declare-fun b!2200373 () Bool)

(declare-fun res!945889 () Bool)

(assert (=> b!2200373 (=> (not res!945889) (not e!1406067))))

(declare-fun isEmpty!14625 (BalanceConc!16464) Bool)

(assert (=> b!2200373 (= res!945889 (not (isEmpty!14625 totalInput!891)))))

(declare-fun b!2200374 () Bool)

(declare-fun res!945887 () Bool)

(assert (=> b!2200374 (=> (not res!945887) (not e!1406067))))

(declare-fun lostCauseZipper!325 ((InoxSet Context!3570)) Bool)

(assert (=> b!2200374 (= res!945887 (not (lostCauseZipper!325 z!3888)))))

(declare-fun setIsEmpty!18948 () Bool)

(assert (=> setIsEmpty!18948 setRes!18948))

(declare-fun b!2200375 () Bool)

(declare-fun res!945886 () Bool)

(assert (=> b!2200375 (=> (not res!945886) (not e!1406067))))

(assert (=> b!2200375 (= res!945886 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200376 () Bool)

(declare-fun lt!823024 () Bool)

(declare-fun lt!823025 () Int)

(assert (=> b!2200376 (= e!1406067 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!823026) (>= lt!823025 (- 1)) (< lt!823025 (+ 1 from!1082)) lt!823024 (not (= lt!823025 from!1082))))))

(assert (=> b!2200376 (= lt!823025 (ite lt!823024 from!1082 lastNullablePos!161))))

(declare-fun derivationStepZipper!273 ((InoxSet Context!3570) C!12576) (InoxSet Context!3570))

(declare-fun apply!6291 (BalanceConc!16464 Int) C!12576)

(assert (=> b!2200376 (= lt!823024 (nullableZipper!495 (derivationStepZipper!273 z!3888 (apply!6291 totalInput!891 from!1082))))))

(declare-fun b!2200377 () Bool)

(declare-fun tp!684749 () Bool)

(assert (=> b!2200377 (= e!1406070 tp!684749)))

(assert (= (and start!213626 res!945891) b!2200367))

(assert (= (and b!2200367 res!945888) b!2200372))

(assert (= (and b!2200372 res!945892) b!2200375))

(assert (= (and b!2200375 res!945886) b!2200369))

(assert (= (and b!2200369 (not res!945893)) b!2200370))

(assert (= (and b!2200369 res!945890) b!2200373))

(assert (= (and b!2200373 res!945889) b!2200368))

(assert (= (and b!2200368 res!945885) b!2200374))

(assert (= (and b!2200374 res!945887) b!2200376))

(assert (= start!213626 b!2200371))

(assert (= (and start!213626 condSetEmpty!18948) setIsEmpty!18948))

(assert (= (and start!213626 (not condSetEmpty!18948)) setNonEmpty!18948))

(assert (= setNonEmpty!18948 b!2200377))

(declare-fun m!2643031 () Bool)

(assert (=> b!2200372 m!2643031))

(assert (=> b!2200372 m!2643031))

(declare-fun m!2643033 () Bool)

(assert (=> b!2200372 m!2643033))

(assert (=> b!2200372 m!2643033))

(declare-fun m!2643035 () Bool)

(assert (=> b!2200372 m!2643035))

(assert (=> b!2200372 m!2643035))

(declare-fun m!2643037 () Bool)

(assert (=> b!2200372 m!2643037))

(declare-fun m!2643039 () Bool)

(assert (=> b!2200369 m!2643039))

(declare-fun m!2643041 () Bool)

(assert (=> b!2200376 m!2643041))

(assert (=> b!2200376 m!2643041))

(declare-fun m!2643043 () Bool)

(assert (=> b!2200376 m!2643043))

(assert (=> b!2200376 m!2643043))

(declare-fun m!2643045 () Bool)

(assert (=> b!2200376 m!2643045))

(declare-fun m!2643047 () Bool)

(assert (=> b!2200373 m!2643047))

(declare-fun m!2643049 () Bool)

(assert (=> start!213626 m!2643049))

(declare-fun m!2643051 () Bool)

(assert (=> b!2200367 m!2643051))

(declare-fun m!2643053 () Bool)

(assert (=> setNonEmpty!18948 m!2643053))

(declare-fun m!2643055 () Bool)

(assert (=> b!2200374 m!2643055))

(declare-fun m!2643057 () Bool)

(assert (=> b!2200371 m!2643057))

(check-sat (not b!2200376) (not start!213626) (not b!2200374) (not b!2200371) (not b!2200373) (not b!2200369) (not b!2200372) (not b!2200377) (not b!2200367) (not setNonEmpty!18948))
(check-sat)
