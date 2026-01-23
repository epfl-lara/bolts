; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707770 () Bool)

(assert start!707770)

(declare-fun b!7261783 () Bool)

(declare-fun e!4354585 () Bool)

(assert (=> b!7261783 (= e!4354585 true)))

(declare-fun lt!2590988 () Bool)

(declare-datatypes ((C!37698 0))(
  ( (C!37699 (val!28797 Int)) )
))
(declare-datatypes ((Regex!18712 0))(
  ( (ElementMatch!18712 (c!1350954 C!37698)) (Concat!27557 (regOne!37936 Regex!18712) (regTwo!37936 Regex!18712)) (EmptyExpr!18712) (Star!18712 (reg!19041 Regex!18712)) (EmptyLang!18712) (Union!18712 (regOne!37937 Regex!18712) (regTwo!37937 Regex!18712)) )
))
(declare-datatypes ((List!70715 0))(
  ( (Nil!70591) (Cons!70591 (h!77039 Regex!18712) (t!384781 List!70715)) )
))
(declare-datatypes ((Context!15304 0))(
  ( (Context!15305 (exprs!8152 List!70715)) )
))
(declare-fun lt!2590991 () (Set Context!15304))

(declare-datatypes ((List!70716 0))(
  ( (Nil!70592) (Cons!70592 (h!77040 C!37698) (t!384782 List!70716)) )
))
(declare-fun s!7887 () List!70716)

(declare-fun matchZipper!3616 ((Set Context!15304) List!70716) Bool)

(assert (=> b!7261783 (= lt!2590988 (matchZipper!3616 lt!2590991 s!7887))))

(declare-fun e!4354583 () Bool)

(declare-datatypes ((List!70717 0))(
  ( (Nil!70593) (Cons!70593 (h!77041 Context!15304) (t!384783 List!70717)) )
))
(declare-fun zl!1658 () List!70717)

(declare-fun b!7261784 () Bool)

(declare-fun e!4354586 () Bool)

(declare-fun tp!2039316 () Bool)

(declare-fun inv!89791 (Context!15304) Bool)

(assert (=> b!7261784 (= e!4354583 (and (inv!89791 (h!77041 zl!1658)) e!4354586 tp!2039316))))

(declare-fun b!7261786 () Bool)

(declare-fun tp!2039317 () Bool)

(assert (=> b!7261786 (= e!4354586 tp!2039317)))

(declare-fun b!7261787 () Bool)

(declare-fun e!4354588 () Bool)

(assert (=> b!7261787 (= e!4354588 (matchZipper!3616 lt!2590991 s!7887))))

(declare-fun res!2944342 () Bool)

(declare-fun e!4354587 () Bool)

(assert (=> start!707770 (=> (not res!2944342) (not e!4354587))))

(declare-fun content!14706 (List!70717) (Set Context!15304))

(assert (=> start!707770 (= res!2944342 (matchZipper!3616 (content!14706 zl!1658) s!7887))))

(assert (=> start!707770 e!4354587))

(assert (=> start!707770 e!4354583))

(declare-fun e!4354584 () Bool)

(assert (=> start!707770 e!4354584))

(declare-fun b!7261785 () Bool)

(assert (=> b!7261785 (= e!4354587 (not e!4354585))))

(declare-fun res!2944339 () Bool)

(assert (=> b!7261785 (=> res!2944339 e!4354585)))

(declare-fun lt!2590993 () Bool)

(declare-fun lt!2590992 () Bool)

(assert (=> b!7261785 (= res!2944339 (or (not lt!2590993) lt!2590992))))

(declare-fun lt!2590987 () Bool)

(assert (=> b!7261785 (= lt!2590987 lt!2590993)))

(assert (=> b!7261785 (= lt!2590993 e!4354588)))

(declare-fun res!2944341 () Bool)

(assert (=> b!7261785 (=> res!2944341 e!4354588)))

(assert (=> b!7261785 (= res!2944341 lt!2590992)))

(declare-fun lt!2590990 () (Set Context!15304))

(assert (=> b!7261785 (= lt!2590987 (matchZipper!3616 (set.union lt!2590990 lt!2590991) s!7887))))

(assert (=> b!7261785 (= lt!2590992 (matchZipper!3616 lt!2590990 s!7887))))

(declare-datatypes ((Unit!164054 0))(
  ( (Unit!164055) )
))
(declare-fun lt!2590989 () Unit!164054)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1757 ((Set Context!15304) (Set Context!15304) List!70716) Unit!164054)

(assert (=> b!7261785 (= lt!2590989 (lemmaZipperConcatMatchesSameAsBothZippers!1757 lt!2590990 lt!2590991 s!7887))))

(assert (=> b!7261785 (= lt!2590991 (content!14706 (t!384783 zl!1658)))))

(assert (=> b!7261785 (= lt!2590990 (set.insert (h!77041 zl!1658) (as set.empty (Set Context!15304))))))

(declare-fun b!7261788 () Bool)

(declare-fun res!2944340 () Bool)

(assert (=> b!7261788 (=> (not res!2944340) (not e!4354587))))

(assert (=> b!7261788 (= res!2944340 (is-Cons!70593 zl!1658))))

(declare-fun b!7261789 () Bool)

(declare-fun tp_is_empty!46889 () Bool)

(declare-fun tp!2039315 () Bool)

(assert (=> b!7261789 (= e!4354584 (and tp_is_empty!46889 tp!2039315))))

(assert (= (and start!707770 res!2944342) b!7261788))

(assert (= (and b!7261788 res!2944340) b!7261785))

(assert (= (and b!7261785 (not res!2944341)) b!7261787))

(assert (= (and b!7261785 (not res!2944339)) b!7261783))

(assert (= b!7261784 b!7261786))

(assert (= (and start!707770 (is-Cons!70593 zl!1658)) b!7261784))

(assert (= (and start!707770 (is-Cons!70592 s!7887)) b!7261789))

(declare-fun m!7946398 () Bool)

(assert (=> b!7261785 m!7946398))

(declare-fun m!7946400 () Bool)

(assert (=> b!7261785 m!7946400))

(declare-fun m!7946402 () Bool)

(assert (=> b!7261785 m!7946402))

(declare-fun m!7946404 () Bool)

(assert (=> b!7261785 m!7946404))

(declare-fun m!7946406 () Bool)

(assert (=> b!7261785 m!7946406))

(declare-fun m!7946408 () Bool)

(assert (=> start!707770 m!7946408))

(assert (=> start!707770 m!7946408))

(declare-fun m!7946410 () Bool)

(assert (=> start!707770 m!7946410))

(declare-fun m!7946412 () Bool)

(assert (=> b!7261787 m!7946412))

(declare-fun m!7946414 () Bool)

(assert (=> b!7261784 m!7946414))

(assert (=> b!7261783 m!7946412))

(push 1)

(assert (not b!7261783))

(assert (not b!7261789))

(assert tp_is_empty!46889)

(assert (not b!7261785))

(assert (not b!7261784))

(assert (not b!7261786))

(assert (not start!707770))

(assert (not b!7261787))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

