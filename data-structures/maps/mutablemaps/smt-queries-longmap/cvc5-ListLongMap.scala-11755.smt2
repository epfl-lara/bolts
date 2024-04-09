; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137980 () Bool)

(assert start!137980)

(assert (=> start!137980 false))

(declare-fun e!883935 () Bool)

(assert (=> start!137980 e!883935))

(declare-fun b!1583489 () Bool)

(declare-fun tp_is_empty!39403 () Bool)

(declare-fun tp!114997 () Bool)

(assert (=> b!1583489 (= e!883935 (and tp_is_empty!39403 tp!114997))))

(declare-datatypes ((B!2870 0))(
  ( (B!2871 (val!19797 Int)) )
))
(declare-datatypes ((tuple2!25926 0))(
  ( (tuple2!25927 (_1!12973 (_ BitVec 64)) (_2!12973 B!2870)) )
))
(declare-datatypes ((List!37078 0))(
  ( (Nil!37075) (Cons!37074 (h!38618 tuple2!25926) (t!51999 List!37078)) )
))
(declare-fun l!1251 () List!37078)

(assert (= (and start!137980 (is-Cons!37074 l!1251)) b!1583489))

(push 1)

(assert (not b!1583489))

(assert tp_is_empty!39403)

(check-sat)

(pop 1)

