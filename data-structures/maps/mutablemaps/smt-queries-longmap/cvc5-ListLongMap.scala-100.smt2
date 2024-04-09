; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1644 () Bool)

(assert start!1644)

(declare-fun res!9739 () Bool)

(declare-fun e!7009 () Bool)

(assert (=> start!1644 (=> (not res!9739) (not e!7009))))

(declare-datatypes ((B!404 0))(
  ( (B!405 (val!297 Int)) )
))
(declare-datatypes ((tuple2!376 0))(
  ( (tuple2!377 (_1!188 (_ BitVec 64)) (_2!188 B!404)) )
))
(declare-datatypes ((List!344 0))(
  ( (Nil!341) (Cons!340 (h!906 tuple2!376) (t!2731 List!344)) )
))
(declare-datatypes ((ListLongMap!357 0))(
  ( (ListLongMap!358 (toList!194 List!344)) )
))
(declare-fun lm!265 () ListLongMap!357)

(declare-fun a!527 () (_ BitVec 64))

(declare-fun contains!161 (ListLongMap!357 (_ BitVec 64)) Bool)

(assert (=> start!1644 (= res!9739 (contains!161 lm!265 a!527))))

(assert (=> start!1644 e!7009))

(declare-fun e!7010 () Bool)

(declare-fun inv!582 (ListLongMap!357) Bool)

(assert (=> start!1644 (and (inv!582 lm!265) e!7010)))

(assert (=> start!1644 true))

(declare-fun tp_is_empty!577 () Bool)

(assert (=> start!1644 tp_is_empty!577))

(declare-fun b!11788 () Bool)

(assert (=> b!11788 (= e!7009 false)))

(declare-fun b!11789 () Bool)

(declare-fun tp!1970 () Bool)

(assert (=> b!11789 (= e!7010 tp!1970)))

(assert (= (and start!1644 res!9739) b!11788))

(assert (= start!1644 b!11789))

(declare-fun m!8225 () Bool)

(assert (=> start!1644 m!8225))

(declare-fun m!8227 () Bool)

(assert (=> start!1644 m!8227))

(push 1)

(assert (not start!1644))

(assert (not b!11789))

(assert tp_is_empty!577)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

