; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!212442 () Bool)

(assert start!212442)

(declare-fun b!2189760 () Bool)

(declare-fun e!1399297 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!12272 0))(
  ( (C!12273 (val!7122 Int)) )
))
(declare-datatypes ((Regex!6063 0))(
  ( (ElementMatch!6063 (c!348378 C!12272)) (Concat!10365 (regOne!12638 Regex!6063) (regTwo!12638 Regex!6063)) (EmptyExpr!6063) (Star!6063 (reg!6392 Regex!6063)) (EmptyLang!6063) (Union!6063 (regOne!12639 Regex!6063) (regTwo!12639 Regex!6063)) )
))
(declare-datatypes ((List!25399 0))(
  ( (Nil!25315) (Cons!25315 (h!30716 Regex!6063) (t!197997 List!25399)) )
))
(declare-datatypes ((Context!3266 0))(
  ( (Context!3267 (exprs!2133 List!25399)) )
))
(declare-fun z!3955 () (InoxSet Context!3266))

(declare-fun lostCauseZipper!181 ((InoxSet Context!3266)) Bool)

(assert (=> b!2189760 (= e!1399297 (lostCauseZipper!181 z!3955))))

(declare-fun b!2189761 () Bool)

(declare-fun e!1399293 () Bool)

(declare-fun e!1399294 () Bool)

(assert (=> b!2189761 (= e!1399293 e!1399294)))

(declare-fun res!940753 () Bool)

(assert (=> b!2189761 (=> (not res!940753) (not e!1399294))))

(declare-fun from!1114 () Int)

(declare-fun lt!818066 () Int)

(declare-fun lastNullablePos!193 () Int)

(assert (=> b!2189761 (= res!940753 (and (<= from!1114 lt!818066) (>= lastNullablePos!193 (- 1)) (< lastNullablePos!193 from!1114)))))

(declare-datatypes ((List!25400 0))(
  ( (Nil!25316) (Cons!25316 (h!30717 C!12272) (t!197998 List!25400)) )
))
(declare-datatypes ((IArray!16403 0))(
  ( (IArray!16404 (innerList!8259 List!25400)) )
))
(declare-datatypes ((Conc!8199 0))(
  ( (Node!8199 (left!19425 Conc!8199) (right!19755 Conc!8199) (csize!16628 Int) (cheight!8410 Int)) (Leaf!11998 (xs!11141 IArray!16403) (csize!16629 Int)) (Empty!8199) )
))
(declare-datatypes ((BalanceConc!16160 0))(
  ( (BalanceConc!16161 (c!348379 Conc!8199)) )
))
(declare-fun totalInput!923 () BalanceConc!16160)

(declare-fun size!19779 (BalanceConc!16160) Int)

(assert (=> b!2189761 (= lt!818066 (size!19779 totalInput!923))))

(declare-fun res!940754 () Bool)

(assert (=> start!212442 (=> (not res!940754) (not e!1399293))))

(assert (=> start!212442 (= res!940754 (>= from!1114 0))))

(assert (=> start!212442 e!1399293))

(assert (=> start!212442 true))

(declare-fun e!1399296 () Bool)

(declare-fun inv!33684 (BalanceConc!16160) Bool)

(assert (=> start!212442 (and (inv!33684 totalInput!923) e!1399296)))

(declare-fun condSetEmpty!18414 () Bool)

(assert (=> start!212442 (= condSetEmpty!18414 (= z!3955 ((as const (Array Context!3266 Bool)) false)))))

(declare-fun setRes!18414 () Bool)

(assert (=> start!212442 setRes!18414))

(declare-fun b!2189762 () Bool)

(declare-fun tp!682660 () Bool)

(declare-fun inv!33685 (Conc!8199) Bool)

(assert (=> b!2189762 (= e!1399296 (and (inv!33685 (c!348379 totalInput!923)) tp!682660))))

(declare-fun b!2189763 () Bool)

(assert (=> b!2189763 (= e!1399294 false)))

(declare-fun lt!818065 () Int)

(declare-fun furthestNullablePosition!243 ((InoxSet Context!3266) Int BalanceConc!16160 Int Int) Int)

(assert (=> b!2189763 (= lt!818065 (furthestNullablePosition!243 z!3955 from!1114 totalInput!923 lt!818066 lastNullablePos!193))))

(declare-fun setIsEmpty!18414 () Bool)

(assert (=> setIsEmpty!18414 setRes!18414))

(declare-fun b!2189764 () Bool)

(declare-fun res!940751 () Bool)

(assert (=> b!2189764 (=> (not res!940751) (not e!1399294))))

(declare-fun e!1399295 () Bool)

(assert (=> b!2189764 (= res!940751 e!1399295)))

(declare-fun res!940750 () Bool)

(assert (=> b!2189764 (=> res!940750 e!1399295)))

(declare-fun nullableZipper!343 ((InoxSet Context!3266)) Bool)

(assert (=> b!2189764 (= res!940750 (not (nullableZipper!343 z!3955)))))

(declare-fun b!2189765 () Bool)

(declare-fun res!940752 () Bool)

(assert (=> b!2189765 (=> (not res!940752) (not e!1399294))))

(assert (=> b!2189765 (= res!940752 e!1399297)))

(declare-fun res!940755 () Bool)

(assert (=> b!2189765 (=> res!940755 e!1399297)))

(assert (=> b!2189765 (= res!940755 (= from!1114 lt!818066))))

(declare-fun b!2189766 () Bool)

(assert (=> b!2189766 (= e!1399295 (= lastNullablePos!193 (- from!1114 1)))))

(declare-fun b!2189767 () Bool)

(declare-fun e!1399292 () Bool)

(declare-fun tp!682658 () Bool)

(assert (=> b!2189767 (= e!1399292 tp!682658)))

(declare-fun tp!682659 () Bool)

(declare-fun setNonEmpty!18414 () Bool)

(declare-fun setElem!18414 () Context!3266)

(declare-fun inv!33686 (Context!3266) Bool)

(assert (=> setNonEmpty!18414 (= setRes!18414 (and tp!682659 (inv!33686 setElem!18414) e!1399292))))

(declare-fun setRest!18414 () (InoxSet Context!3266))

(assert (=> setNonEmpty!18414 (= z!3955 ((_ map or) (store ((as const (Array Context!3266 Bool)) false) setElem!18414 true) setRest!18414))))

(assert (= (and start!212442 res!940754) b!2189761))

(assert (= (and b!2189761 res!940753) b!2189764))

(assert (= (and b!2189764 (not res!940750)) b!2189766))

(assert (= (and b!2189764 res!940751) b!2189765))

(assert (= (and b!2189765 (not res!940755)) b!2189760))

(assert (= (and b!2189765 res!940752) b!2189763))

(assert (= start!212442 b!2189762))

(assert (= (and start!212442 condSetEmpty!18414) setIsEmpty!18414))

(assert (= (and start!212442 (not condSetEmpty!18414)) setNonEmpty!18414))

(assert (= setNonEmpty!18414 b!2189767))

(declare-fun m!2632789 () Bool)

(assert (=> b!2189762 m!2632789))

(declare-fun m!2632791 () Bool)

(assert (=> b!2189763 m!2632791))

(declare-fun m!2632793 () Bool)

(assert (=> setNonEmpty!18414 m!2632793))

(declare-fun m!2632795 () Bool)

(assert (=> b!2189761 m!2632795))

(declare-fun m!2632797 () Bool)

(assert (=> b!2189764 m!2632797))

(declare-fun m!2632799 () Bool)

(assert (=> start!212442 m!2632799))

(declare-fun m!2632801 () Bool)

(assert (=> b!2189760 m!2632801))

(check-sat (not b!2189763) (not b!2189762) (not b!2189767) (not b!2189761) (not start!212442) (not b!2189764) (not b!2189760) (not setNonEmpty!18414))
(check-sat)
