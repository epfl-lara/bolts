; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137984 () Bool)

(assert start!137984)

(assert (=> start!137984 false))

(declare-fun e!883941 () Bool)

(assert (=> start!137984 e!883941))

(declare-fun b!1583495 () Bool)

(declare-fun tp_is_empty!39407 () Bool)

(declare-fun tp!115003 () Bool)

(assert (=> b!1583495 (= e!883941 (and tp_is_empty!39407 tp!115003))))

(declare-datatypes ((B!2874 0))(
  ( (B!2875 (val!19799 Int)) )
))
(declare-datatypes ((tuple2!25930 0))(
  ( (tuple2!25931 (_1!12975 (_ BitVec 64)) (_2!12975 B!2874)) )
))
(declare-datatypes ((List!37080 0))(
  ( (Nil!37077) (Cons!37076 (h!38620 tuple2!25930) (t!52001 List!37080)) )
))
(declare-fun l!1251 () List!37080)

(assert (= (and start!137984 (is-Cons!37076 l!1251)) b!1583495))

(push 1)

(assert (not b!1583495))

(assert tp_is_empty!39407)

(check-sat)

(pop 1)

(push 1)

(check-sat)

