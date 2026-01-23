; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!229834 () Bool)

(assert start!229834)

(declare-fun b!2327980 () Bool)

(declare-fun e!1491531 () Bool)

(declare-fun tp_is_empty!10917 () Bool)

(declare-fun tp!737536 () Bool)

(assert (=> b!2327980 (= e!1491531 (and tp_is_empty!10917 tp!737536))))

(declare-fun b!2327981 () Bool)

(declare-fun e!1491529 () Bool)

(declare-fun tp!737537 () Bool)

(assert (=> b!2327981 (= e!1491529 tp!737537)))

(declare-fun b!2327982 () Bool)

(declare-fun tp!737534 () Bool)

(declare-fun tp!737535 () Bool)

(assert (=> b!2327982 (= e!1491529 (and tp!737534 tp!737535))))

(declare-fun b!2327983 () Bool)

(assert (=> b!2327983 (= e!1491529 tp_is_empty!10917)))

(declare-fun b!2327984 () Bool)

(declare-fun tp!737539 () Bool)

(declare-fun tp!737538 () Bool)

(assert (=> b!2327984 (= e!1491529 (and tp!737539 tp!737538))))

(declare-fun res!993978 () Bool)

(declare-fun e!1491530 () Bool)

(assert (=> start!229834 (=> (not res!993978) (not e!1491530))))

(declare-datatypes ((C!13748 0))(
  ( (C!13749 (val!8030 Int)) )
))
(declare-datatypes ((Regex!6795 0))(
  ( (ElementMatch!6795 (c!369875 C!13748)) (Concat!11385 (regOne!14102 Regex!6795) (regTwo!14102 Regex!6795)) (EmptyExpr!6795) (Star!6795 (reg!7124 Regex!6795)) (EmptyLang!6795) (Union!6795 (regOne!14103 Regex!6795) (regTwo!14103 Regex!6795)) )
))
(declare-fun r!13393 () Regex!6795)

(declare-fun validRegex!2562 (Regex!6795) Bool)

(assert (=> start!229834 (= res!993978 (validRegex!2562 r!13393))))

(assert (=> start!229834 e!1491530))

(assert (=> start!229834 e!1491529))

(assert (=> start!229834 e!1491531))

(declare-fun b!2327985 () Bool)

(declare-fun lt!861976 () Bool)

(declare-fun lt!861979 () Bool)

(assert (=> b!2327985 (= e!1491530 (not (= lt!861976 lt!861979)))))

(assert (=> b!2327985 (= lt!861979 lt!861976)))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((List!27828 0))(
  ( (Nil!27730) (Cons!27730 (h!33131 Regex!6795) (t!207550 List!27828)) )
))
(declare-datatypes ((Context!4230 0))(
  ( (Context!4231 (exprs!2615 List!27828)) )
))
(declare-fun lt!861978 () (InoxSet Context!4230))

(declare-datatypes ((List!27829 0))(
  ( (Nil!27731) (Cons!27731 (h!33132 C!13748) (t!207551 List!27829)) )
))
(declare-fun input!6019 () List!27829)

(declare-fun matchZipper!377 ((InoxSet Context!4230) List!27829) Bool)

(assert (=> b!2327985 (= lt!861976 (matchZipper!377 lt!861978 input!6019))))

(declare-fun matchR!3020 (Regex!6795 List!27829) Bool)

(assert (=> b!2327985 (= lt!861979 (matchR!3020 r!13393 input!6019))))

(declare-datatypes ((Unit!40560 0))(
  ( (Unit!40561) )
))
(declare-fun lt!861977 () Unit!40560)

(declare-datatypes ((List!27830 0))(
  ( (Nil!27732) (Cons!27732 (h!33133 Context!4230) (t!207552 List!27830)) )
))
(declare-fun theoremZipperRegexEquiv!87 ((InoxSet Context!4230) List!27830 Regex!6795 List!27829) Unit!40560)

(declare-fun toList!1409 ((InoxSet Context!4230)) List!27830)

(assert (=> b!2327985 (= lt!861977 (theoremZipperRegexEquiv!87 lt!861978 (toList!1409 lt!861978) r!13393 input!6019))))

(declare-fun focus!279 (Regex!6795) (InoxSet Context!4230))

(assert (=> b!2327985 (= lt!861978 (focus!279 r!13393))))

(assert (= (and start!229834 res!993978) b!2327985))

(get-info :version)

(assert (= (and start!229834 ((_ is ElementMatch!6795) r!13393)) b!2327983))

(assert (= (and start!229834 ((_ is Concat!11385) r!13393)) b!2327982))

(assert (= (and start!229834 ((_ is Star!6795) r!13393)) b!2327981))

(assert (= (and start!229834 ((_ is Union!6795) r!13393)) b!2327984))

(assert (= (and start!229834 ((_ is Cons!27731) input!6019)) b!2327980))

(declare-fun m!2758735 () Bool)

(assert (=> start!229834 m!2758735))

(declare-fun m!2758737 () Bool)

(assert (=> b!2327985 m!2758737))

(declare-fun m!2758739 () Bool)

(assert (=> b!2327985 m!2758739))

(declare-fun m!2758741 () Bool)

(assert (=> b!2327985 m!2758741))

(declare-fun m!2758743 () Bool)

(assert (=> b!2327985 m!2758743))

(assert (=> b!2327985 m!2758739))

(declare-fun m!2758745 () Bool)

(assert (=> b!2327985 m!2758745))

(check-sat (not b!2327985) (not b!2327980) tp_is_empty!10917 (not b!2327982) (not start!229834) (not b!2327984) (not b!2327981))
(check-sat)
