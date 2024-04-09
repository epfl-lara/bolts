; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137986 () Bool)

(assert start!137986)

(assert (=> start!137986 false))

(declare-fun e!883944 () Bool)

(assert (=> start!137986 e!883944))

(assert (=> start!137986 true))

(declare-fun b!1583498 () Bool)

(declare-fun tp_is_empty!39409 () Bool)

(declare-fun tp!115006 () Bool)

(assert (=> b!1583498 (= e!883944 (and tp_is_empty!39409 tp!115006))))

(declare-datatypes ((B!2876 0))(
  ( (B!2877 (val!19800 Int)) )
))
(declare-datatypes ((tuple2!25932 0))(
  ( (tuple2!25933 (_1!12976 (_ BitVec 64)) (_2!12976 B!2876)) )
))
(declare-datatypes ((List!37081 0))(
  ( (Nil!37078) (Cons!37077 (h!38621 tuple2!25932) (t!52002 List!37081)) )
))
(declare-fun l!1251 () List!37081)

(assert (= (and start!137986 (is-Cons!37077 l!1251)) b!1583498))

(push 1)

(assert (not b!1583498))

(assert tp_is_empty!39409)

(check-sat)

(pop 1)

