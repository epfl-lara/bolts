; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!12760 () Bool)

(assert start!12760)

(declare-fun b!125345 () Bool)

(declare-fun e!72176 () Bool)

(declare-fun tp_is_empty!1183 () Bool)

(assert (=> b!125345 (= e!72176 tp_is_empty!1183)))

(declare-fun b!125346 () Bool)

(declare-fun tp!68359 () Bool)

(declare-fun tp!68362 () Bool)

(assert (=> b!125346 (= e!72176 (and tp!68359 tp!68362))))

(declare-fun b!125348 () Bool)

(declare-fun tp!68360 () Bool)

(declare-fun tp!68361 () Bool)

(assert (=> b!125348 (= e!72176 (and tp!68360 tp!68361))))

(assert (=> start!12760 false))

(assert (=> start!12760 e!72176))

(declare-fun b!125347 () Bool)

(declare-fun tp!68358 () Bool)

(assert (=> b!125347 (= e!72176 tp!68358)))

(declare-datatypes ((C!2050 0))(
  ( (C!2051 (val!751 Int)) )
))
(declare-datatypes ((Regex!564 0))(
  ( (ElementMatch!564 (c!27631 C!2050)) (Concat!958 (regOne!1640 Regex!564) (regTwo!1640 Regex!564)) (EmptyExpr!564) (Star!564 (reg!893 Regex!564)) (EmptyLang!564) (Union!564 (regOne!1641 Regex!564) (regTwo!1641 Regex!564)) )
))
(declare-fun r!13481 () Regex!564)

(assert (= (and start!12760 (is-ElementMatch!564 r!13481)) b!125345))

(assert (= (and start!12760 (is-Concat!958 r!13481)) b!125346))

(assert (= (and start!12760 (is-Star!564 r!13481)) b!125347))

(assert (= (and start!12760 (is-Union!564 r!13481)) b!125348))

(push 1)

(assert (not b!125347))

(assert (not b!125348))

(assert (not b!125346))

(assert tp_is_empty!1183)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

