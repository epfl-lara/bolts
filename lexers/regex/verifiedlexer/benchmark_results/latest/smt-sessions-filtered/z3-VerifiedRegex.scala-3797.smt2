; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212438 () Bool)

(assert start!212438)

(declare-fun b!2189713 () Bool)

(declare-fun e!1399259 () Bool)

(assert (=> b!2189713 (= e!1399259 false)))

(declare-fun lt!818053 () Bool)

(declare-fun e!1399258 () Bool)

(assert (=> b!2189713 (= lt!818053 e!1399258)))

(declare-fun res!940718 () Bool)

(assert (=> b!2189713 (=> res!940718 e!1399258)))

(declare-fun from!1114 () Int)

(declare-fun lt!818054 () Int)

(assert (=> b!2189713 (= res!940718 (= from!1114 lt!818054))))

(declare-fun res!940715 () Bool)

(declare-fun e!1399256 () Bool)

(assert (=> start!212438 (=> (not res!940715) (not e!1399256))))

(assert (=> start!212438 (= res!940715 (>= from!1114 0))))

(assert (=> start!212438 e!1399256))

(assert (=> start!212438 true))

(declare-datatypes ((C!12268 0))(
  ( (C!12269 (val!7120 Int)) )
))
(declare-datatypes ((List!25395 0))(
  ( (Nil!25311) (Cons!25311 (h!30712 C!12268) (t!197993 List!25395)) )
))
(declare-datatypes ((IArray!16399 0))(
  ( (IArray!16400 (innerList!8257 List!25395)) )
))
(declare-datatypes ((Conc!8197 0))(
  ( (Node!8197 (left!19422 Conc!8197) (right!19752 Conc!8197) (csize!16624 Int) (cheight!8408 Int)) (Leaf!11995 (xs!11139 IArray!16399) (csize!16625 Int)) (Empty!8197) )
))
(declare-datatypes ((BalanceConc!16156 0))(
  ( (BalanceConc!16157 (c!348374 Conc!8197)) )
))
(declare-fun totalInput!923 () BalanceConc!16156)

(declare-fun e!1399261 () Bool)

(declare-fun inv!33675 (BalanceConc!16156) Bool)

(assert (=> start!212438 (and (inv!33675 totalInput!923) e!1399261)))

(declare-fun condSetEmpty!18408 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((Regex!6061 0))(
  ( (ElementMatch!6061 (c!348375 C!12268)) (Concat!10363 (regOne!12634 Regex!6061) (regTwo!12634 Regex!6061)) (EmptyExpr!6061) (Star!6061 (reg!6390 Regex!6061)) (EmptyLang!6061) (Union!6061 (regOne!12635 Regex!6061) (regTwo!12635 Regex!6061)) )
))
(declare-datatypes ((List!25396 0))(
  ( (Nil!25312) (Cons!25312 (h!30713 Regex!6061) (t!197994 List!25396)) )
))
(declare-datatypes ((Context!3262 0))(
  ( (Context!3263 (exprs!2131 List!25396)) )
))
(declare-fun z!3955 () (InoxSet Context!3262))

(assert (=> start!212438 (= condSetEmpty!18408 (= z!3955 ((as const (Array Context!3262 Bool)) false)))))

(declare-fun setRes!18408 () Bool)

(assert (=> start!212438 setRes!18408))

(declare-fun b!2189714 () Bool)

(declare-fun e!1399260 () Bool)

(declare-fun tp!682641 () Bool)

(assert (=> b!2189714 (= e!1399260 tp!682641)))

(declare-fun setElem!18408 () Context!3262)

(declare-fun setNonEmpty!18408 () Bool)

(declare-fun tp!682642 () Bool)

(declare-fun inv!33676 (Context!3262) Bool)

(assert (=> setNonEmpty!18408 (= setRes!18408 (and tp!682642 (inv!33676 setElem!18408) e!1399260))))

(declare-fun setRest!18408 () (InoxSet Context!3262))

(assert (=> setNonEmpty!18408 (= z!3955 ((_ map or) (store ((as const (Array Context!3262 Bool)) false) setElem!18408 true) setRest!18408))))

(declare-fun b!2189715 () Bool)

(declare-fun lostCauseZipper!179 ((InoxSet Context!3262)) Bool)

(assert (=> b!2189715 (= e!1399258 (lostCauseZipper!179 z!3955))))

(declare-fun b!2189716 () Bool)

(declare-fun e!1399257 () Bool)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2189716 (= e!1399257 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2189717 () Bool)

(declare-fun tp!682640 () Bool)

(declare-fun inv!33677 (Conc!8197) Bool)

(assert (=> b!2189717 (= e!1399261 (and (inv!33677 (c!348374 totalInput!923)) tp!682640))))

(declare-fun setIsEmpty!18408 () Bool)

(assert (=> setIsEmpty!18408 setRes!18408))

(declare-fun b!2189718 () Bool)

(declare-fun res!940716 () Bool)

(assert (=> b!2189718 (=> (not res!940716) (not e!1399259))))

(assert (=> b!2189718 (= res!940716 e!1399257)))

(declare-fun res!940717 () Bool)

(assert (=> b!2189718 (=> res!940717 e!1399257)))

(declare-fun nullableZipper!341 ((InoxSet Context!3262)) Bool)

(assert (=> b!2189718 (= res!940717 (not (nullableZipper!341 z!3955)))))

(declare-fun b!2189719 () Bool)

(assert (=> b!2189719 (= e!1399256 e!1399259)))

(declare-fun res!940719 () Bool)

(assert (=> b!2189719 (=> (not res!940719) (not e!1399259))))

(assert (=> b!2189719 (= res!940719 (and (<= from!1114 lt!818054) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-fun size!19777 (BalanceConc!16156) Int)

(assert (=> b!2189719 (= lt!818054 (size!19777 totalInput!923))))

(assert (= (and start!212438 res!940715) b!2189719))

(assert (= (and b!2189719 res!940719) b!2189718))

(assert (= (and b!2189718 (not res!940717)) b!2189716))

(assert (= (and b!2189718 res!940716) b!2189713))

(assert (= (and b!2189713 (not res!940718)) b!2189715))

(assert (= start!212438 b!2189717))

(assert (= (and start!212438 condSetEmpty!18408) setIsEmpty!18408))

(assert (= (and start!212438 (not condSetEmpty!18408)) setNonEmpty!18408))

(assert (= setNonEmpty!18408 b!2189714))

(declare-fun m!2632763 () Bool)

(assert (=> b!2189719 m!2632763))

(declare-fun m!2632765 () Bool)

(assert (=> b!2189715 m!2632765))

(declare-fun m!2632767 () Bool)

(assert (=> start!212438 m!2632767))

(declare-fun m!2632769 () Bool)

(assert (=> setNonEmpty!18408 m!2632769))

(declare-fun m!2632771 () Bool)

(assert (=> b!2189718 m!2632771))

(declare-fun m!2632773 () Bool)

(assert (=> b!2189717 m!2632773))

(check-sat (not b!2189717) (not b!2189719) (not b!2189718) (not b!2189715) (not setNonEmpty!18408) (not b!2189714) (not start!212438))
(check-sat)
