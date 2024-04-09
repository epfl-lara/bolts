; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7786 () Bool)

(assert start!7786)

(assert (=> start!7786 false))

(declare-fun e!31780 () Bool)

(assert (=> start!7786 e!31780))

(assert (=> start!7786 true))

(declare-fun b!49464 () Bool)

(declare-fun tp_is_empty!2149 () Bool)

(declare-fun tp!6524 () Bool)

(assert (=> b!49464 (= e!31780 (and tp_is_empty!2149 tp!6524))))

(declare-datatypes ((B!998 0))(
  ( (B!999 (val!1119 Int)) )
))
(declare-datatypes ((tuple2!1824 0))(
  ( (tuple2!1825 (_1!922 (_ BitVec 64)) (_2!922 B!998)) )
))
(declare-datatypes ((List!1335 0))(
  ( (Nil!1332) (Cons!1331 (h!1911 tuple2!1824) (t!4377 List!1335)) )
))
(declare-fun l!1333 () List!1335)

(assert (= (and start!7786 (is-Cons!1331 l!1333)) b!49464))

(push 1)

(assert (not b!49464))

(assert tp_is_empty!2149)

(check-sat)

(pop 1)

