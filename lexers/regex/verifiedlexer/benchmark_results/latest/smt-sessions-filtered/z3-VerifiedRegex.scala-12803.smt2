; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!707776 () Bool)

(assert start!707776)

(declare-fun lt!2591020 () Bool)

(declare-datatypes ((C!37704 0))(
  ( (C!37705 (val!28800 Int)) )
))
(declare-datatypes ((Regex!18715 0))(
  ( (ElementMatch!18715 (c!1350957 C!37704)) (Concat!27560 (regOne!37942 Regex!18715) (regTwo!37942 Regex!18715)) (EmptyExpr!18715) (Star!18715 (reg!19044 Regex!18715)) (EmptyLang!18715) (Union!18715 (regOne!37943 Regex!18715) (regTwo!37943 Regex!18715)) )
))
(declare-datatypes ((List!70724 0))(
  ( (Nil!70600) (Cons!70600 (h!77048 Regex!18715) (t!384790 List!70724)) )
))
(declare-datatypes ((Context!15310 0))(
  ( (Context!15311 (exprs!8155 List!70724)) )
))
(declare-datatypes ((List!70725 0))(
  ( (Nil!70601) (Cons!70601 (h!77049 Context!15310) (t!384791 List!70725)) )
))
(declare-fun zl!1658 () List!70725)

(declare-datatypes ((List!70726 0))(
  ( (Nil!70602) (Cons!70602 (h!77050 C!37704) (t!384792 List!70726)) )
))
(declare-fun s!7887 () List!70726)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun matchZipper!3619 ((InoxSet Context!15310) List!70726) Bool)

(declare-fun content!14709 (List!70725) (InoxSet Context!15310))

(assert (=> start!707776 (= lt!2591020 (matchZipper!3619 (content!14709 zl!1658) s!7887))))

(assert (=> start!707776 false))

(declare-fun e!4354623 () Bool)

(assert (=> start!707776 e!4354623))

(declare-fun e!4354624 () Bool)

(assert (=> start!707776 e!4354624))

(declare-fun b!7261827 () Bool)

(declare-fun e!4354622 () Bool)

(declare-fun tp!2039343 () Bool)

(assert (=> b!7261827 (= e!4354622 tp!2039343)))

(declare-fun tp!2039344 () Bool)

(declare-fun b!7261826 () Bool)

(declare-fun inv!89797 (Context!15310) Bool)

(assert (=> b!7261826 (= e!4354623 (and (inv!89797 (h!77049 zl!1658)) e!4354622 tp!2039344))))

(declare-fun b!7261828 () Bool)

(declare-fun tp_is_empty!46895 () Bool)

(declare-fun tp!2039342 () Bool)

(assert (=> b!7261828 (= e!4354624 (and tp_is_empty!46895 tp!2039342))))

(assert (= b!7261826 b!7261827))

(get-info :version)

(assert (= (and start!707776 ((_ is Cons!70601) zl!1658)) b!7261826))

(assert (= (and start!707776 ((_ is Cons!70602) s!7887)) b!7261828))

(declare-fun m!7946440 () Bool)

(assert (=> start!707776 m!7946440))

(assert (=> start!707776 m!7946440))

(declare-fun m!7946442 () Bool)

(assert (=> start!707776 m!7946442))

(declare-fun m!7946444 () Bool)

(assert (=> b!7261826 m!7946444))

(check-sat tp_is_empty!46895 (not b!7261828) (not b!7261826) (not b!7261827) (not start!707776))
(check-sat)
