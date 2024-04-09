; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!137704 () Bool)

(assert start!137704)

(assert (=> start!137704 false))

(declare-fun e!883113 () Bool)

(assert (=> start!137704 e!883113))

(assert (=> start!137704 true))

(declare-fun b!1582337 () Bool)

(declare-fun tp_is_empty!39307 () Bool)

(declare-fun tp!114742 () Bool)

(assert (=> b!1582337 (= e!883113 (and tp_is_empty!39307 tp!114742))))

(declare-datatypes ((B!2762 0))(
  ( (B!2763 (val!19743 Int)) )
))
(declare-datatypes ((tuple2!25818 0))(
  ( (tuple2!25819 (_1!12919 (_ BitVec 64)) (_2!12919 B!2762)) )
))
(declare-datatypes ((List!37024 0))(
  ( (Nil!37021) (Cons!37020 (h!38564 tuple2!25818) (t!51945 List!37024)) )
))
(declare-fun l!1356 () List!37024)

(assert (= (and start!137704 (is-Cons!37020 l!1356)) b!1582337))

(push 1)

(assert (not b!1582337))

(assert tp_is_empty!39307)

(check-sat)

(pop 1)

