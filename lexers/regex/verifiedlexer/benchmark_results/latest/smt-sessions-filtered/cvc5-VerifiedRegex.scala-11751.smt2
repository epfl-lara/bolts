; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!663756 () Bool)

(assert start!663756)

(declare-fun b!6879052 () Bool)

(declare-fun e!4145772 () Bool)

(declare-fun tp!1891251 () Bool)

(declare-fun tp!1891244 () Bool)

(assert (=> b!6879052 (= e!4145772 (and tp!1891251 tp!1891244))))

(declare-fun b!6879053 () Bool)

(declare-fun e!4145771 () Bool)

(declare-fun tp!1891253 () Bool)

(assert (=> b!6879053 (= e!4145771 tp!1891253)))

(declare-fun b!6879054 () Bool)

(declare-fun tp!1891254 () Bool)

(declare-fun tp!1891247 () Bool)

(assert (=> b!6879054 (= e!4145771 (and tp!1891254 tp!1891247))))

(declare-fun b!6879055 () Bool)

(declare-fun tp_is_empty!42721 () Bool)

(assert (=> b!6879055 (= e!4145772 tp_is_empty!42721)))

(declare-fun b!6879056 () Bool)

(declare-fun tp!1891258 () Bool)

(assert (=> b!6879056 (= e!4145772 tp!1891258)))

(assert (=> start!663756 false))

(declare-fun e!4145773 () Bool)

(assert (=> start!663756 e!4145773))

(assert (=> start!663756 e!4145772))

(assert (=> start!663756 e!4145771))

(declare-fun b!6879057 () Bool)

(declare-fun tp!1891245 () Bool)

(declare-fun tp!1891246 () Bool)

(assert (=> b!6879057 (= e!4145773 (and tp!1891245 tp!1891246))))

(declare-fun b!6879058 () Bool)

(declare-fun tp!1891255 () Bool)

(declare-fun tp!1891252 () Bool)

(assert (=> b!6879058 (= e!4145773 (and tp!1891255 tp!1891252))))

(declare-fun b!6879059 () Bool)

(assert (=> b!6879059 (= e!4145771 tp_is_empty!42721)))

(declare-fun b!6879060 () Bool)

(assert (=> b!6879060 (= e!4145773 tp_is_empty!42721)))

(declare-fun b!6879061 () Bool)

(declare-fun tp!1891250 () Bool)

(declare-fun tp!1891256 () Bool)

(assert (=> b!6879061 (= e!4145771 (and tp!1891250 tp!1891256))))

(declare-fun b!6879062 () Bool)

(declare-fun tp!1891248 () Bool)

(declare-fun tp!1891257 () Bool)

(assert (=> b!6879062 (= e!4145772 (and tp!1891248 tp!1891257))))

(declare-fun b!6879063 () Bool)

(declare-fun tp!1891249 () Bool)

(assert (=> b!6879063 (= e!4145773 tp!1891249)))

(declare-datatypes ((C!33766 0))(
  ( (C!33767 (val!26585 Int)) )
))
(declare-datatypes ((Regex!16748 0))(
  ( (ElementMatch!16748 (c!1279886 C!33766)) (Concat!25593 (regOne!34008 Regex!16748) (regTwo!34008 Regex!16748)) (EmptyExpr!16748) (Star!16748 (reg!17077 Regex!16748)) (EmptyLang!16748) (Union!16748 (regOne!34009 Regex!16748) (regTwo!34009 Regex!16748)) )
))
(declare-fun r1!6342 () Regex!16748)

(assert (= (and start!663756 (is-ElementMatch!16748 r1!6342)) b!6879060))

(assert (= (and start!663756 (is-Concat!25593 r1!6342)) b!6879057))

(assert (= (and start!663756 (is-Star!16748 r1!6342)) b!6879063))

(assert (= (and start!663756 (is-Union!16748 r1!6342)) b!6879058))

(declare-fun r2!6280 () Regex!16748)

(assert (= (and start!663756 (is-ElementMatch!16748 r2!6280)) b!6879055))

(assert (= (and start!663756 (is-Concat!25593 r2!6280)) b!6879062))

(assert (= (and start!663756 (is-Star!16748 r2!6280)) b!6879056))

(assert (= (and start!663756 (is-Union!16748 r2!6280)) b!6879052))

(declare-fun r3!135 () Regex!16748)

(assert (= (and start!663756 (is-ElementMatch!16748 r3!135)) b!6879059))

(assert (= (and start!663756 (is-Concat!25593 r3!135)) b!6879054))

(assert (= (and start!663756 (is-Star!16748 r3!135)) b!6879053))

(assert (= (and start!663756 (is-Union!16748 r3!135)) b!6879061))

(push 1)

(assert (not b!6879053))

(assert (not b!6879061))

(assert (not b!6879063))

(assert (not b!6879057))

(assert tp_is_empty!42721)

(assert (not b!6879056))

(assert (not b!6879058))

(assert (not b!6879054))

(assert (not b!6879062))

(assert (not b!6879052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

