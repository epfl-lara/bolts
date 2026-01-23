; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!213622 () Bool)

(assert start!213622)

(declare-fun b!2200299 () Bool)

(declare-fun res!945835 () Bool)

(declare-fun e!1406040 () Bool)

(assert (=> b!2200299 (=> (not res!945835) (not e!1406040))))

(declare-fun knownSize!10 () Int)

(declare-datatypes ((C!12572 0))(
  ( (C!12573 (val!7272 Int)) )
))
(declare-datatypes ((List!25720 0))(
  ( (Nil!25636) (Cons!25636 (h!31037 C!12572) (t!198338 List!25720)) )
))
(declare-datatypes ((IArray!16703 0))(
  ( (IArray!16704 (innerList!8409 List!25720)) )
))
(declare-datatypes ((Conc!8349 0))(
  ( (Node!8349 (left!19690 Conc!8349) (right!20020 Conc!8349) (csize!16928 Int) (cheight!8560 Int)) (Leaf!12223 (xs!11291 IArray!16703) (csize!16929 Int)) (Empty!8349) )
))
(declare-datatypes ((BalanceConc!16460 0))(
  ( (BalanceConc!16461 (c!350890 Conc!8349)) )
))
(declare-fun totalInput!891 () BalanceConc!16460)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6213 0))(
  ( (ElementMatch!6213 (c!350891 C!12572)) (Concat!10515 (regOne!12938 Regex!6213) (regTwo!12938 Regex!6213)) (EmptyExpr!6213) (Star!6213 (reg!6542 Regex!6213)) (EmptyLang!6213) (Union!6213 (regOne!12939 Regex!6213) (regTwo!12939 Regex!6213)) )
))
(declare-datatypes ((List!25721 0))(
  ( (Nil!25637) (Cons!25637 (h!31038 Regex!6213) (t!198339 List!25721)) )
))
(declare-datatypes ((Context!3566 0))(
  ( (Context!3567 (exprs!2283 List!25721)) )
))
(declare-fun z!3888 () (InoxSet Context!3566))

(declare-fun from!1082 () Int)

(declare-fun matchZipper!299 ((InoxSet Context!3566) List!25720) Bool)

(declare-fun take!391 (List!25720 Int) List!25720)

(declare-fun drop!1401 (List!25720 Int) List!25720)

(declare-fun list!9871 (BalanceConc!16460) List!25720)

(assert (=> b!2200299 (= res!945835 (matchZipper!299 z!3888 (take!391 (drop!1401 (list!9871 totalInput!891) from!1082) knownSize!10)))))

(declare-fun setIsEmpty!18942 () Bool)

(declare-fun setRes!18942 () Bool)

(assert (=> setIsEmpty!18942 setRes!18942))

(declare-fun b!2200300 () Bool)

(declare-fun e!1406037 () Bool)

(declare-fun lastNullablePos!161 () Int)

(assert (=> b!2200300 (= e!1406037 (= lastNullablePos!161 (- from!1082 1)))))

(declare-fun b!2200301 () Bool)

(declare-fun res!945834 () Bool)

(assert (=> b!2200301 (=> (not res!945834) (not e!1406040))))

(assert (=> b!2200301 (= res!945834 e!1406037)))

(declare-fun res!945839 () Bool)

(assert (=> b!2200301 (=> res!945839 e!1406037)))

(declare-fun nullableZipper!493 ((InoxSet Context!3566)) Bool)

(assert (=> b!2200301 (= res!945839 (not (nullableZipper!493 z!3888)))))

(declare-fun tp!684730 () Bool)

(declare-fun e!1406038 () Bool)

(declare-fun setElem!18942 () Context!3566)

(declare-fun setNonEmpty!18942 () Bool)

(declare-fun inv!34417 (Context!3566) Bool)

(assert (=> setNonEmpty!18942 (= setRes!18942 (and tp!684730 (inv!34417 setElem!18942) e!1406038))))

(declare-fun setRest!18942 () (InoxSet Context!3566))

(assert (=> setNonEmpty!18942 (= z!3888 ((_ map or) (store ((as const (Array Context!3566 Bool)) false) setElem!18942 true) setRest!18942))))

(declare-fun b!2200302 () Bool)

(declare-fun tp!684731 () Bool)

(assert (=> b!2200302 (= e!1406038 tp!684731)))

(declare-fun b!2200303 () Bool)

(declare-fun e!1406039 () Bool)

(declare-fun tp!684732 () Bool)

(declare-fun inv!34418 (Conc!8349) Bool)

(assert (=> b!2200303 (= e!1406039 (and (inv!34418 (c!350890 totalInput!891)) tp!684732))))

(declare-fun res!945838 () Bool)

(declare-fun e!1406036 () Bool)

(assert (=> start!213622 (=> (not res!945838) (not e!1406036))))

(assert (=> start!213622 (= res!945838 (>= from!1082 0))))

(assert (=> start!213622 e!1406036))

(assert (=> start!213622 true))

(declare-fun inv!34419 (BalanceConc!16460) Bool)

(assert (=> start!213622 (and (inv!34419 totalInput!891) e!1406039)))

(declare-fun condSetEmpty!18942 () Bool)

(assert (=> start!213622 (= condSetEmpty!18942 (= z!3888 ((as const (Array Context!3566 Bool)) false)))))

(assert (=> start!213622 setRes!18942))

(declare-fun b!2200304 () Bool)

(assert (=> b!2200304 (= e!1406036 e!1406040)))

(declare-fun res!945831 () Bool)

(assert (=> b!2200304 (=> (not res!945831) (not e!1406040))))

(declare-fun lt!823008 () Int)

(assert (=> b!2200304 (= res!945831 (and (<= from!1082 lt!823008) (>= knownSize!10 0) (<= knownSize!10 (- lt!823008 from!1082))))))

(declare-fun size!19978 (BalanceConc!16460) Int)

(assert (=> b!2200304 (= lt!823008 (size!19978 totalInput!891))))

(declare-fun b!2200305 () Bool)

(declare-fun res!945837 () Bool)

(assert (=> b!2200305 (=> (not res!945837) (not e!1406040))))

(assert (=> b!2200305 (= res!945837 (and (>= lastNullablePos!161 (- 1)) (< lastNullablePos!161 from!1082)))))

(declare-fun b!2200306 () Bool)

(declare-fun res!945832 () Bool)

(assert (=> b!2200306 (=> (not res!945832) (not e!1406040))))

(declare-fun lostCauseZipper!323 ((InoxSet Context!3566)) Bool)

(assert (=> b!2200306 (= res!945832 (not (lostCauseZipper!323 z!3888)))))

(declare-fun b!2200307 () Bool)

(declare-fun e!1406041 () Int)

(assert (=> b!2200307 (= e!1406041 from!1082)))

(declare-fun b!2200308 () Bool)

(declare-fun res!945833 () Bool)

(assert (=> b!2200308 (=> (not res!945833) (not e!1406040))))

(declare-fun isEmpty!14623 (BalanceConc!16460) Bool)

(assert (=> b!2200308 (= res!945833 (not (isEmpty!14623 totalInput!891)))))

(declare-fun b!2200309 () Bool)

(assert (=> b!2200309 (= e!1406041 lastNullablePos!161)))

(declare-fun lt!823007 () Int)

(declare-fun b!2200310 () Bool)

(assert (=> b!2200310 (= e!1406040 (and (>= (+ 1 from!1082) 0) (<= (+ 1 from!1082) lt!823008) (or (< lt!823007 (- 1)) (>= lt!823007 (+ 1 from!1082)))))))

(assert (=> b!2200310 (= lt!823007 e!1406041)))

(declare-fun c!350889 () Bool)

(declare-fun derivationStepZipper!271 ((InoxSet Context!3566) C!12572) (InoxSet Context!3566))

(declare-fun apply!6289 (BalanceConc!16460 Int) C!12572)

(assert (=> b!2200310 (= c!350889 (nullableZipper!493 (derivationStepZipper!271 z!3888 (apply!6289 totalInput!891 from!1082))))))

(declare-fun b!2200311 () Bool)

(declare-fun res!945836 () Bool)

(assert (=> b!2200311 (=> (not res!945836) (not e!1406040))))

(assert (=> b!2200311 (= res!945836 (and (not (= knownSize!10 0)) (> knownSize!10 0) (not (= from!1082 lt!823008))))))

(assert (= (and start!213622 res!945838) b!2200304))

(assert (= (and b!2200304 res!945831) b!2200299))

(assert (= (and b!2200299 res!945835) b!2200305))

(assert (= (and b!2200305 res!945837) b!2200301))

(assert (= (and b!2200301 (not res!945839)) b!2200300))

(assert (= (and b!2200301 res!945834) b!2200308))

(assert (= (and b!2200308 res!945833) b!2200311))

(assert (= (and b!2200311 res!945836) b!2200306))

(assert (= (and b!2200306 res!945832) b!2200310))

(assert (= (and b!2200310 c!350889) b!2200307))

(assert (= (and b!2200310 (not c!350889)) b!2200309))

(assert (= start!213622 b!2200303))

(assert (= (and start!213622 condSetEmpty!18942) setIsEmpty!18942))

(assert (= (and start!213622 (not condSetEmpty!18942)) setNonEmpty!18942))

(assert (= setNonEmpty!18942 b!2200302))

(declare-fun m!2642975 () Bool)

(assert (=> setNonEmpty!18942 m!2642975))

(declare-fun m!2642977 () Bool)

(assert (=> start!213622 m!2642977))

(declare-fun m!2642979 () Bool)

(assert (=> b!2200304 m!2642979))

(declare-fun m!2642981 () Bool)

(assert (=> b!2200299 m!2642981))

(assert (=> b!2200299 m!2642981))

(declare-fun m!2642983 () Bool)

(assert (=> b!2200299 m!2642983))

(assert (=> b!2200299 m!2642983))

(declare-fun m!2642985 () Bool)

(assert (=> b!2200299 m!2642985))

(assert (=> b!2200299 m!2642985))

(declare-fun m!2642987 () Bool)

(assert (=> b!2200299 m!2642987))

(declare-fun m!2642989 () Bool)

(assert (=> b!2200303 m!2642989))

(declare-fun m!2642991 () Bool)

(assert (=> b!2200310 m!2642991))

(assert (=> b!2200310 m!2642991))

(declare-fun m!2642993 () Bool)

(assert (=> b!2200310 m!2642993))

(assert (=> b!2200310 m!2642993))

(declare-fun m!2642995 () Bool)

(assert (=> b!2200310 m!2642995))

(declare-fun m!2642997 () Bool)

(assert (=> b!2200301 m!2642997))

(declare-fun m!2642999 () Bool)

(assert (=> b!2200308 m!2642999))

(declare-fun m!2643001 () Bool)

(assert (=> b!2200306 m!2643001))

(check-sat (not b!2200301) (not b!2200308) (not b!2200306) (not start!213622) (not b!2200303) (not b!2200304) (not setNonEmpty!18942) (not b!2200302) (not b!2200310) (not b!2200299))
(check-sat)
