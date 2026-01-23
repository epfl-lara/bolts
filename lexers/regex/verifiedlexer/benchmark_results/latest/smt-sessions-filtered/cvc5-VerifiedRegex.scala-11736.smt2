; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663478 () Bool)

(assert start!663478)

(declare-fun b!6875286 () Bool)

(declare-fun e!4143925 () Bool)

(declare-fun tp!1888717 () Bool)

(assert (=> b!6875286 (= e!4143925 tp!1888717)))

(declare-fun b!6875287 () Bool)

(declare-fun tp_is_empty!42689 () Bool)

(assert (=> b!6875287 (= e!4143925 tp_is_empty!42689)))

(declare-fun b!6875288 () Bool)

(declare-fun e!4143924 () Bool)

(declare-fun tp!1888715 () Bool)

(assert (=> b!6875288 (= e!4143924 tp!1888715)))

(declare-fun tp!1888716 () Bool)

(declare-fun b!6875289 () Bool)

(declare-datatypes ((C!33706 0))(
  ( (C!33707 (val!26555 Int)) )
))
(declare-datatypes ((Regex!16718 0))(
  ( (ElementMatch!16718 (c!1279370 C!33706)) (Concat!25563 (regOne!33948 Regex!16718) (regTwo!33948 Regex!16718)) (EmptyExpr!16718) (Star!16718 (reg!17047 Regex!16718)) (EmptyLang!16718) (Union!16718 (regOne!33949 Regex!16718) (regTwo!33949 Regex!16718)) )
))
(declare-datatypes ((List!66447 0))(
  ( (Nil!66323) (Cons!66323 (h!72771 Regex!16718) (t!380190 List!66447)) )
))
(declare-datatypes ((Context!12204 0))(
  ( (Context!12205 (exprs!6602 List!66447)) )
))
(declare-datatypes ((List!66448 0))(
  ( (Nil!66324) (Cons!66324 (h!72772 Context!12204) (t!380191 List!66448)) )
))
(declare-fun zl!1520 () List!66448)

(declare-fun e!4143923 () Bool)

(declare-fun inv!85043 (Context!12204) Bool)

(assert (=> b!6875289 (= e!4143923 (and (inv!85043 (h!72772 zl!1520)) e!4143924 tp!1888716))))

(declare-fun b!6875290 () Bool)

(declare-fun tp!1888718 () Bool)

(declare-fun tp!1888713 () Bool)

(assert (=> b!6875290 (= e!4143925 (and tp!1888718 tp!1888713))))

(declare-fun b!6875291 () Bool)

(declare-fun tp!1888714 () Bool)

(declare-fun tp!1888712 () Bool)

(assert (=> b!6875291 (= e!4143925 (and tp!1888714 tp!1888712))))

(declare-fun lt!2459063 () Bool)

(declare-fun r!11177 () Regex!16718)

(declare-fun contains!20374 (List!66447 Regex!16718) Bool)

(declare-fun unfocusZipperList!2135 (List!66448) List!66447)

(assert (=> start!663478 (= lt!2459063 (contains!20374 (unfocusZipperList!2135 zl!1520) r!11177))))

(assert (=> start!663478 false))

(assert (=> start!663478 e!4143923))

(assert (=> start!663478 e!4143925))

(assert (= b!6875289 b!6875288))

(assert (= (and start!663478 (is-Cons!66324 zl!1520)) b!6875289))

(assert (= (and start!663478 (is-ElementMatch!16718 r!11177)) b!6875287))

(assert (= (and start!663478 (is-Concat!25563 r!11177)) b!6875290))

(assert (= (and start!663478 (is-Star!16718 r!11177)) b!6875286))

(assert (= (and start!663478 (is-Union!16718 r!11177)) b!6875291))

(declare-fun m!7603896 () Bool)

(assert (=> b!6875289 m!7603896))

(declare-fun m!7603898 () Bool)

(assert (=> start!663478 m!7603898))

(assert (=> start!663478 m!7603898))

(declare-fun m!7603900 () Bool)

(assert (=> start!663478 m!7603900))

(push 1)

(assert (not b!6875286))

(assert (not b!6875290))

(assert (not start!663478))

(assert tp_is_empty!42689)

(assert (not b!6875289))

(assert (not b!6875288))

(assert (not b!6875291))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

