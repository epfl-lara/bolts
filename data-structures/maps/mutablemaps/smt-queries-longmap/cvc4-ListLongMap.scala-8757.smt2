; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!106376 () Bool)

(assert start!106376)

(assert (=> start!106376 false))

(declare-fun e!720349 () Bool)

(assert (=> start!106376 e!720349))

(assert (=> start!106376 true))

(declare-fun b!1264868 () Bool)

(declare-fun tp_is_empty!32471 () Bool)

(declare-fun tp!96273 () Bool)

(assert (=> b!1264868 (= e!720349 (and tp_is_empty!32471 tp!96273))))

(declare-datatypes ((B!1938 0))(
  ( (B!1939 (val!16304 Int)) )
))
(declare-datatypes ((tuple2!21276 0))(
  ( (tuple2!21277 (_1!10648 (_ BitVec 64)) (_2!10648 B!1938)) )
))
(declare-datatypes ((List!28471 0))(
  ( (Nil!28468) (Cons!28467 (h!29676 tuple2!21276) (t!41999 List!28471)) )
))
(declare-fun l!706 () List!28471)

(assert (= (and start!106376 (is-Cons!28467 l!706)) b!1264868))

(push 1)

(assert (not b!1264868))

(assert tp_is_empty!32471)

(check-sat)

(pop 1)

(push 1)

(check-sat)

