; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!694202 () Bool)

(assert start!694202)

(declare-fun lt!2563053 () Bool)

(declare-datatypes ((C!36274 0))(
  ( (C!36275 (val!28063 Int)) )
))
(declare-datatypes ((Regex!18002 0))(
  ( (ElementMatch!18002 (c!1329344 C!36274)) (Concat!26847 (regOne!36516 Regex!18002) (regTwo!36516 Regex!18002)) (EmptyExpr!18002) (Star!18002 (reg!18331 Regex!18002)) (EmptyLang!18002) (Union!18002 (regOne!36517 Regex!18002) (regTwo!36517 Regex!18002)) )
))
(declare-datatypes ((List!69055 0))(
  ( (Nil!68931) (Cons!68931 (h!75379 Regex!18002) (t!383032 List!69055)) )
))
(declare-datatypes ((Context!13992 0))(
  ( (Context!13993 (exprs!7496 List!69055)) )
))
(declare-datatypes ((List!69056 0))(
  ( (Nil!68932) (Cons!68932 (h!75380 Context!13992) (t!383033 List!69056)) )
))
(declare-fun zl!1616 () List!69056)

(declare-fun c!9962 () Context!13992)

(declare-fun contains!20544 (List!69056 Context!13992) Bool)

(assert (=> start!694202 (= lt!2563053 (contains!20544 zl!1616 c!9962))))

(assert (=> start!694202 false))

(declare-fun e!4281808 () Bool)

(assert (=> start!694202 e!4281808))

(declare-fun e!4281809 () Bool)

(declare-fun inv!88034 (Context!13992) Bool)

(assert (=> start!694202 (and (inv!88034 c!9962) e!4281809)))

(declare-fun b!7125183 () Bool)

(declare-fun e!4281810 () Bool)

(declare-fun tp!1962504 () Bool)

(assert (=> b!7125183 (= e!4281810 tp!1962504)))

(declare-fun tp!1962505 () Bool)

(declare-fun b!7125182 () Bool)

(assert (=> b!7125182 (= e!4281808 (and (inv!88034 (h!75380 zl!1616)) e!4281810 tp!1962505))))

(declare-fun b!7125184 () Bool)

(declare-fun tp!1962506 () Bool)

(assert (=> b!7125184 (= e!4281809 tp!1962506)))

(assert (= b!7125182 b!7125183))

(assert (= (and start!694202 (is-Cons!68932 zl!1616)) b!7125182))

(assert (= start!694202 b!7125184))

(declare-fun m!7842432 () Bool)

(assert (=> start!694202 m!7842432))

(declare-fun m!7842434 () Bool)

(assert (=> start!694202 m!7842434))

(declare-fun m!7842436 () Bool)

(assert (=> b!7125182 m!7842436))

(push 1)

(assert (not b!7125182))

(assert (not start!694202))

(assert (not b!7125184))

(assert (not b!7125183))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

