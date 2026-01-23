; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707578 () Bool)

(assert start!707578)

(assert (=> start!707578 true))

(declare-fun res!2944050 () Bool)

(declare-fun e!4353888 () Bool)

(assert (=> start!707578 (=> (not res!2944050) (not e!4353888))))

(declare-datatypes ((C!37654 0))(
  ( (C!37655 (val!28775 Int)) )
))
(declare-datatypes ((Regex!18690 0))(
  ( (ElementMatch!18690 (c!1350780 C!37654)) (Concat!27535 (regOne!37892 Regex!18690) (regTwo!37892 Regex!18690)) (EmptyExpr!18690) (Star!18690 (reg!19019 Regex!18690)) (EmptyLang!18690) (Union!18690 (regOne!37893 Regex!18690) (regTwo!37893 Regex!18690)) )
))
(declare-datatypes ((List!70649 0))(
  ( (Nil!70525) (Cons!70525 (h!76973 Regex!18690) (t!384715 List!70649)) )
))
(declare-datatypes ((Context!15260 0))(
  ( (Context!15261 (exprs!8130 List!70649)) )
))
(declare-datatypes ((List!70650 0))(
  ( (Nil!70526) (Cons!70526 (h!76974 Context!15260) (t!384716 List!70650)) )
))
(declare-fun zl!1664 () List!70650)

(declare-fun lambda!446548 () Int)

(declare-fun exists!4454 (List!70650 Int) Bool)

(assert (=> start!707578 (= res!2944050 (exists!4454 zl!1664 lambda!446548))))

(assert (=> start!707578 e!4353888))

(declare-fun e!4353886 () Bool)

(assert (=> start!707578 e!4353886))

(declare-fun e!4353885 () Bool)

(assert (=> start!707578 e!4353885))

(declare-fun b!7260751 () Bool)

(declare-fun e!4353884 () Bool)

(assert (=> b!7260751 (= e!4353884 (exists!4454 (t!384716 zl!1664) lambda!446548))))

(declare-fun b!7260752 () Bool)

(declare-fun tp_is_empty!46845 () Bool)

(declare-fun tp!2038850 () Bool)

(assert (=> b!7260752 (= e!4353885 (and tp_is_empty!46845 tp!2038850))))

(declare-fun b!7260753 () Bool)

(declare-fun e!4353883 () Bool)

(declare-fun tp!2038849 () Bool)

(assert (=> b!7260753 (= e!4353883 tp!2038849)))

(declare-fun tp!2038851 () Bool)

(declare-fun b!7260754 () Bool)

(declare-fun inv!89736 (Context!15260) Bool)

(assert (=> b!7260754 (= e!4353886 (and (inv!89736 (h!76974 zl!1664)) e!4353883 tp!2038851))))

(declare-fun b!7260755 () Bool)

(declare-fun res!2944051 () Bool)

(assert (=> b!7260755 (=> res!2944051 e!4353884)))

(assert (=> b!7260755 (= res!2944051 (not (exists!4454 (t!384716 zl!1664) lambda!446548)))))

(declare-fun b!7260756 () Bool)

(assert (=> b!7260756 (= e!4353888 (not e!4353884))))

(declare-fun res!2944052 () Bool)

(assert (=> b!7260756 (=> res!2944052 e!4353884)))

(declare-fun lt!2590727 () Bool)

(assert (=> b!7260756 (= res!2944052 lt!2590727)))

(declare-fun lt!2590728 () (Set Context!15260))

(declare-fun lt!2590729 () (Set Context!15260))

(declare-fun e!4353887 () Bool)

(declare-datatypes ((List!70651 0))(
  ( (Nil!70527) (Cons!70527 (h!76975 C!37654) (t!384717 List!70651)) )
))
(declare-fun s!7912 () List!70651)

(declare-fun matchZipper!3600 ((Set Context!15260) List!70651) Bool)

(assert (=> b!7260756 (= (matchZipper!3600 (set.union lt!2590729 lt!2590728) s!7912) e!4353887)))

(declare-fun res!2944053 () Bool)

(assert (=> b!7260756 (=> res!2944053 e!4353887)))

(assert (=> b!7260756 (= res!2944053 lt!2590727)))

(assert (=> b!7260756 (= lt!2590727 (matchZipper!3600 lt!2590729 s!7912))))

(declare-datatypes ((Unit!164022 0))(
  ( (Unit!164023) )
))
(declare-fun lt!2590730 () Unit!164022)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1741 ((Set Context!15260) (Set Context!15260) List!70651) Unit!164022)

(assert (=> b!7260756 (= lt!2590730 (lemmaZipperConcatMatchesSameAsBothZippers!1741 lt!2590729 lt!2590728 s!7912))))

(declare-fun content!14690 (List!70650) (Set Context!15260))

(assert (=> b!7260756 (= lt!2590728 (content!14690 (t!384716 zl!1664)))))

(assert (=> b!7260756 (= lt!2590729 (set.insert (h!76974 zl!1664) (as set.empty (Set Context!15260))))))

(declare-fun b!7260757 () Bool)

(declare-fun res!2944049 () Bool)

(assert (=> b!7260757 (=> (not res!2944049) (not e!4353888))))

(assert (=> b!7260757 (= res!2944049 (is-Cons!70526 zl!1664))))

(declare-fun b!7260758 () Bool)

(assert (=> b!7260758 (= e!4353887 (matchZipper!3600 lt!2590728 s!7912))))

(assert (= (and start!707578 res!2944050) b!7260757))

(assert (= (and b!7260757 res!2944049) b!7260756))

(assert (= (and b!7260756 (not res!2944053)) b!7260758))

(assert (= (and b!7260756 (not res!2944052)) b!7260755))

(assert (= (and b!7260755 (not res!2944051)) b!7260751))

(assert (= b!7260754 b!7260753))

(assert (= (and start!707578 (is-Cons!70526 zl!1664)) b!7260754))

(assert (= (and start!707578 (is-Cons!70527 s!7912)) b!7260752))

(declare-fun m!7945536 () Bool)

(assert (=> b!7260756 m!7945536))

(declare-fun m!7945538 () Bool)

(assert (=> b!7260756 m!7945538))

(declare-fun m!7945540 () Bool)

(assert (=> b!7260756 m!7945540))

(declare-fun m!7945542 () Bool)

(assert (=> b!7260756 m!7945542))

(declare-fun m!7945544 () Bool)

(assert (=> b!7260756 m!7945544))

(declare-fun m!7945546 () Bool)

(assert (=> b!7260754 m!7945546))

(declare-fun m!7945548 () Bool)

(assert (=> b!7260751 m!7945548))

(declare-fun m!7945550 () Bool)

(assert (=> start!707578 m!7945550))

(assert (=> b!7260755 m!7945548))

(declare-fun m!7945552 () Bool)

(assert (=> b!7260758 m!7945552))

(push 1)

(assert (not b!7260753))

(assert (not b!7260756))

(assert (not b!7260751))

(assert (not b!7260752))

(assert (not b!7260755))

(assert (not start!707578))

(assert tp_is_empty!46845)

(assert (not b!7260758))

(assert (not b!7260754))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

