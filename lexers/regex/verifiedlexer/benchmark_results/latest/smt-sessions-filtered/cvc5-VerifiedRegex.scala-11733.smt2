; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663426 () Bool)

(assert start!663426)

(declare-fun b!6874850 () Bool)

(declare-fun e!4143703 () Bool)

(declare-fun tp!1888378 () Bool)

(declare-fun tp!1888383 () Bool)

(assert (=> b!6874850 (= e!4143703 (and tp!1888378 tp!1888383))))

(declare-fun b!6874851 () Bool)

(declare-fun tp!1888379 () Bool)

(assert (=> b!6874851 (= e!4143703 tp!1888379)))

(declare-fun res!2803552 () Bool)

(declare-fun e!4143701 () Bool)

(assert (=> start!663426 (=> (not res!2803552) (not e!4143701))))

(declare-datatypes ((C!33694 0))(
  ( (C!33695 (val!26549 Int)) )
))
(declare-datatypes ((Regex!16712 0))(
  ( (ElementMatch!16712 (c!1279340 C!33694)) (Concat!25557 (regOne!33936 Regex!16712) (regTwo!33936 Regex!16712)) (EmptyExpr!16712) (Star!16712 (reg!17041 Regex!16712)) (EmptyLang!16712) (Union!16712 (regOne!33937 Regex!16712) (regTwo!33937 Regex!16712)) )
))
(declare-datatypes ((List!66435 0))(
  ( (Nil!66311) (Cons!66311 (h!72759 Regex!16712) (t!380178 List!66435)) )
))
(declare-datatypes ((Context!12192 0))(
  ( (Context!12193 (exprs!6596 List!66435)) )
))
(declare-datatypes ((List!66436 0))(
  ( (Nil!66312) (Cons!66312 (h!72760 Context!12192) (t!380179 List!66436)) )
))
(declare-fun zl!1520 () List!66436)

(declare-fun r!11177 () Regex!16712)

(declare-fun contains!20368 (List!66435 Regex!16712) Bool)

(declare-fun unfocusZipperList!2129 (List!66436) List!66435)

(assert (=> start!663426 (= res!2803552 (contains!20368 (unfocusZipperList!2129 zl!1520) r!11177))))

(assert (=> start!663426 e!4143701))

(declare-fun e!4143702 () Bool)

(assert (=> start!663426 e!4143702))

(assert (=> start!663426 e!4143703))

(declare-fun b!6874852 () Bool)

(declare-fun e!4143704 () Bool)

(declare-fun tp!1888381 () Bool)

(assert (=> b!6874852 (= e!4143704 tp!1888381)))

(declare-fun b!6874853 () Bool)

(declare-fun tp_is_empty!42677 () Bool)

(assert (=> b!6874853 (= e!4143703 tp_is_empty!42677)))

(declare-fun tp!1888380 () Bool)

(declare-fun b!6874854 () Bool)

(declare-fun inv!85028 (Context!12192) Bool)

(assert (=> b!6874854 (= e!4143702 (and (inv!85028 (h!72760 zl!1520)) e!4143704 tp!1888380))))

(declare-fun b!6874855 () Bool)

(assert (=> b!6874855 (= e!4143701 false)))

(declare-fun lt!2459013 () Bool)

(assert (=> b!6874855 (= lt!2459013 (contains!20368 (unfocusZipperList!2129 (t!380179 zl!1520)) r!11177))))

(declare-fun b!6874856 () Bool)

(declare-fun tp!1888382 () Bool)

(declare-fun tp!1888384 () Bool)

(assert (=> b!6874856 (= e!4143703 (and tp!1888382 tp!1888384))))

(declare-fun b!6874857 () Bool)

(declare-fun res!2803551 () Bool)

(assert (=> b!6874857 (=> (not res!2803551) (not e!4143701))))

(assert (=> b!6874857 (= res!2803551 (is-Cons!66312 zl!1520))))

(assert (= (and start!663426 res!2803552) b!6874857))

(assert (= (and b!6874857 res!2803551) b!6874855))

(assert (= b!6874854 b!6874852))

(assert (= (and start!663426 (is-Cons!66312 zl!1520)) b!6874854))

(assert (= (and start!663426 (is-ElementMatch!16712 r!11177)) b!6874853))

(assert (= (and start!663426 (is-Concat!25557 r!11177)) b!6874856))

(assert (= (and start!663426 (is-Star!16712 r!11177)) b!6874851))

(assert (= (and start!663426 (is-Union!16712 r!11177)) b!6874850))

(declare-fun m!7603664 () Bool)

(assert (=> start!663426 m!7603664))

(assert (=> start!663426 m!7603664))

(declare-fun m!7603666 () Bool)

(assert (=> start!663426 m!7603666))

(declare-fun m!7603668 () Bool)

(assert (=> b!6874854 m!7603668))

(declare-fun m!7603670 () Bool)

(assert (=> b!6874855 m!7603670))

(assert (=> b!6874855 m!7603670))

(declare-fun m!7603672 () Bool)

(assert (=> b!6874855 m!7603672))

(push 1)

(assert tp_is_empty!42677)

(assert (not b!6874855))

(assert (not b!6874854))

(assert (not b!6874856))

(assert (not b!6874852))

(assert (not b!6874850))

(assert (not start!663426))

(assert (not b!6874851))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

