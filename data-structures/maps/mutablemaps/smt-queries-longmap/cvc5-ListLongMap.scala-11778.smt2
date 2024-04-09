; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138418 () Bool)

(assert start!138418)

(declare-fun res!1083266 () Bool)

(declare-fun e!885662 () Bool)

(assert (=> start!138418 (=> (not res!1083266) (not e!885662))))

(declare-datatypes ((B!3008 0))(
  ( (B!3009 (val!19866 Int)) )
))
(declare-datatypes ((tuple2!26064 0))(
  ( (tuple2!26065 (_1!13042 (_ BitVec 64)) (_2!13042 B!3008)) )
))
(declare-datatypes ((List!37147 0))(
  ( (Nil!37144) (Cons!37143 (h!38687 tuple2!26064) (t!52086 List!37147)) )
))
(declare-fun l!556 () List!37147)

(declare-fun isStrictlySorted!1206 (List!37147) Bool)

(assert (=> start!138418 (= res!1083266 (isStrictlySorted!1206 l!556))))

(assert (=> start!138418 e!885662))

(declare-fun e!885663 () Bool)

(assert (=> start!138418 e!885663))

(assert (=> start!138418 true))

(declare-fun b!1586011 () Bool)

(declare-fun newKey!21 () (_ BitVec 64))

(assert (=> b!1586011 (= e!885662 (and (or (not (is-Cons!37143 l!556)) (bvsge (_1!13042 (h!38687 l!556)) newKey!21)) (or (not (is-Cons!37143 l!556)) (not (= (_1!13042 (h!38687 l!556)) newKey!21))) (or (not (is-Cons!37143 l!556)) (bvsle (_1!13042 (h!38687 l!556)) newKey!21)) (not (is-Nil!37144 l!556))))))

(declare-fun b!1586012 () Bool)

(declare-fun tp_is_empty!39541 () Bool)

(declare-fun tp!115339 () Bool)

(assert (=> b!1586012 (= e!885663 (and tp_is_empty!39541 tp!115339))))

(assert (= (and start!138418 res!1083266) b!1586011))

(assert (= (and start!138418 (is-Cons!37143 l!556)) b!1586012))

(declare-fun m!1454625 () Bool)

(assert (=> start!138418 m!1454625))

(push 1)

(assert (not start!138418))

(assert (not b!1586012))

(assert tp_is_empty!39541)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

