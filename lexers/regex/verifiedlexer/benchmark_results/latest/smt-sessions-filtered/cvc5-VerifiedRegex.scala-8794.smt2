; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471086 () Bool)

(assert start!471086)

(declare-fun b!4670625 () Bool)

(declare-fun e!2914645 () Bool)

(declare-fun tp!1343785 () Bool)

(assert (=> b!4670625 (= e!2914645 tp!1343785)))

(declare-fun res!1966117 () Bool)

(declare-fun e!2914644 () Bool)

(assert (=> start!471086 (=> (not res!1966117) (not e!2914644))))

(declare-datatypes ((K!13373 0))(
  ( (K!13374 (val!18969 Int)) )
))
(declare-datatypes ((V!13619 0))(
  ( (V!13620 (val!18970 Int)) )
))
(declare-datatypes ((tuple2!53202 0))(
  ( (tuple2!53203 (_1!29895 K!13373) (_2!29895 V!13619)) )
))
(declare-datatypes ((List!52154 0))(
  ( (Nil!52030) (Cons!52030 (h!58210 tuple2!53202) (t!359292 List!52154)) )
))
(declare-fun l!12991 () List!52154)

(declare-fun key!4532 () K!13373)

(declare-fun containsKey!2833 (List!52154 K!13373) Bool)

(assert (=> start!471086 (= res!1966117 (not (containsKey!2833 l!12991 key!4532)))))

(assert (=> start!471086 e!2914644))

(declare-fun e!2914643 () Bool)

(assert (=> start!471086 e!2914643))

(declare-fun tp_is_empty!30049 () Bool)

(assert (=> start!471086 tp_is_empty!30049))

(declare-datatypes ((ListMap!4647 0))(
  ( (ListMap!4648 (toList!5301 List!52154)) )
))
(declare-fun lhm!57 () ListMap!4647)

(declare-fun inv!67252 (ListMap!4647) Bool)

(assert (=> start!471086 (and (inv!67252 lhm!57) e!2914645)))

(declare-fun b!4670626 () Bool)

(declare-fun res!1966118 () Bool)

(assert (=> b!4670626 (=> (not res!1966118) (not e!2914644))))

(assert (=> b!4670626 (= res!1966118 (is-Cons!52030 l!12991))))

(declare-fun b!4670627 () Bool)

(assert (=> b!4670627 (= e!2914644 false)))

(declare-fun lt!1832772 () ListMap!4647)

(declare-fun +!2025 (ListMap!4647 tuple2!53202) ListMap!4647)

(assert (=> b!4670627 (= lt!1832772 (+!2025 lhm!57 (h!58210 l!12991)))))

(declare-fun b!4670628 () Bool)

(declare-fun res!1966119 () Bool)

(assert (=> b!4670628 (=> (not res!1966119) (not e!2914644))))

(declare-fun noDuplicateKeys!1689 (List!52154) Bool)

(assert (=> b!4670628 (= res!1966119 (noDuplicateKeys!1689 l!12991))))

(declare-fun tp_is_empty!30051 () Bool)

(declare-fun b!4670629 () Bool)

(declare-fun tp!1343784 () Bool)

(assert (=> b!4670629 (= e!2914643 (and tp_is_empty!30049 tp_is_empty!30051 tp!1343784))))

(assert (= (and start!471086 res!1966117) b!4670628))

(assert (= (and b!4670628 res!1966119) b!4670626))

(assert (= (and b!4670626 res!1966118) b!4670627))

(assert (= (and start!471086 (is-Cons!52030 l!12991)) b!4670629))

(assert (= start!471086 b!4670625))

(declare-fun m!5563951 () Bool)

(assert (=> start!471086 m!5563951))

(declare-fun m!5563953 () Bool)

(assert (=> start!471086 m!5563953))

(declare-fun m!5563955 () Bool)

(assert (=> b!4670627 m!5563955))

(declare-fun m!5563957 () Bool)

(assert (=> b!4670628 m!5563957))

(push 1)

(assert (not start!471086))

(assert (not b!4670628))

(assert tp_is_empty!30051)

(assert (not b!4670627))

(assert (not b!4670625))

(assert (not b!4670629))

(assert tp_is_empty!30049)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

