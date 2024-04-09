; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137698 () Bool)

(assert start!137698)

(assert (=> start!137698 false))

(declare-fun e!883104 () Bool)

(assert (=> start!137698 e!883104))

(assert (=> start!137698 true))

(declare-fun b!1582328 () Bool)

(declare-fun tp_is_empty!39301 () Bool)

(declare-fun tp!114733 () Bool)

(assert (=> b!1582328 (= e!883104 (and tp_is_empty!39301 tp!114733))))

(declare-datatypes ((B!2756 0))(
  ( (B!2757 (val!19740 Int)) )
))
(declare-datatypes ((tuple2!25812 0))(
  ( (tuple2!25813 (_1!12916 (_ BitVec 64)) (_2!12916 B!2756)) )
))
(declare-datatypes ((List!37021 0))(
  ( (Nil!37018) (Cons!37017 (h!38561 tuple2!25812) (t!51942 List!37021)) )
))
(declare-fun l!1356 () List!37021)

(assert (= (and start!137698 (is-Cons!37017 l!1356)) b!1582328))

(push 1)

(assert (not b!1582328))

(assert tp_is_empty!39301)

(check-sat)

(pop 1)

(push 1)

(check-sat)

