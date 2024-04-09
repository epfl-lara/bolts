; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!7108 () Bool)

(assert start!7108)

(assert (=> start!7108 false))

(declare-fun e!29006 () Bool)

(assert (=> start!7108 e!29006))

(declare-fun b!45553 () Bool)

(declare-fun tp_is_empty!1915 () Bool)

(declare-fun tp!5966 () Bool)

(assert (=> b!45553 (= e!29006 (and tp_is_empty!1915 tp!5966))))

(declare-datatypes ((B!818 0))(
  ( (B!819 (val!996 Int)) )
))
(declare-datatypes ((tuple2!1644 0))(
  ( (tuple2!1645 (_1!832 (_ BitVec 64)) (_2!832 B!818)) )
))
(declare-datatypes ((List!1230 0))(
  ( (Nil!1227) (Cons!1226 (h!1806 tuple2!1644) (t!4263 List!1230)) )
))
(declare-fun l!812 () List!1230)

(assert (= (and start!7108 (is-Cons!1226 l!812)) b!45553))

(push 1)

(assert (not b!45553))

(assert tp_is_empty!1915)

(check-sat)

(pop 1)

