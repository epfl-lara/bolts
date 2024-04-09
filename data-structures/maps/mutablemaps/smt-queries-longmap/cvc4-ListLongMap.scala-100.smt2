; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1648 () Bool)

(assert start!1648)

(declare-fun res!9745 () Bool)

(declare-fun e!7021 () Bool)

(assert (=> start!1648 (=> (not res!9745) (not e!7021))))

(declare-datatypes ((B!408 0))(
  ( (B!409 (val!299 Int)) )
))
(declare-datatypes ((tuple2!380 0))(
  ( (tuple2!381 (_1!190 (_ BitVec 64)) (_2!190 B!408)) )
))
(declare-datatypes ((List!346 0))(
  ( (Nil!343) (Cons!342 (h!908 tuple2!380) (t!2733 List!346)) )
))
(declare-datatypes ((ListLongMap!361 0))(
  ( (ListLongMap!362 (toList!196 List!346)) )
))
(declare-fun lm!265 () ListLongMap!361)

(declare-fun a!527 () (_ BitVec 64))

(declare-fun contains!163 (ListLongMap!361 (_ BitVec 64)) Bool)

(assert (=> start!1648 (= res!9745 (contains!163 lm!265 a!527))))

(assert (=> start!1648 e!7021))

(declare-fun e!7022 () Bool)

(declare-fun inv!584 (ListLongMap!361) Bool)

(assert (=> start!1648 (and (inv!584 lm!265) e!7022)))

(assert (=> start!1648 true))

(declare-fun tp_is_empty!581 () Bool)

(assert (=> start!1648 tp_is_empty!581))

(declare-fun b!11800 () Bool)

(assert (=> b!11800 (= e!7021 false)))

(declare-fun b!11801 () Bool)

(declare-fun tp!1976 () Bool)

(assert (=> b!11801 (= e!7022 tp!1976)))

(assert (= (and start!1648 res!9745) b!11800))

(assert (= start!1648 b!11801))

(declare-fun m!8233 () Bool)

(assert (=> start!1648 m!8233))

(declare-fun m!8235 () Bool)

(assert (=> start!1648 m!8235))

(push 1)

(assert (not start!1648))

(assert (not b!11801))

(assert tp_is_empty!581)

(check-sat)

(pop 1)

