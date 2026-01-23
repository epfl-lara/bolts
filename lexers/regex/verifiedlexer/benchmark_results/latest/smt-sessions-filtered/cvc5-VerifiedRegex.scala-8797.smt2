; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!471098 () Bool)

(assert start!471098)

(declare-fun b!4670733 () Bool)

(declare-fun res!1966190 () Bool)

(declare-fun e!2914710 () Bool)

(assert (=> b!4670733 (=> (not res!1966190) (not e!2914710))))

(declare-datatypes ((K!13388 0))(
  ( (K!13389 (val!18981 Int)) )
))
(declare-datatypes ((V!13634 0))(
  ( (V!13635 (val!18982 Int)) )
))
(declare-datatypes ((tuple2!53214 0))(
  ( (tuple2!53215 (_1!29901 K!13388) (_2!29901 V!13634)) )
))
(declare-datatypes ((List!52160 0))(
  ( (Nil!52036) (Cons!52036 (h!58216 tuple2!53214) (t!359298 List!52160)) )
))
(declare-fun l!12991 () List!52160)

(declare-fun noDuplicateKeys!1695 (List!52160) Bool)

(assert (=> b!4670733 (= res!1966190 (noDuplicateKeys!1695 l!12991))))

(declare-fun b!4670734 () Bool)

(declare-fun e!2914709 () Bool)

(declare-fun tp!1343820 () Bool)

(assert (=> b!4670734 (= e!2914709 tp!1343820)))

(declare-fun b!4670735 () Bool)

(assert (=> b!4670735 (= e!2914710 false)))

(declare-datatypes ((ListMap!4659 0))(
  ( (ListMap!4660 (toList!5307 List!52160)) )
))
(declare-fun lt!1832826 () ListMap!4659)

(declare-fun lhm!57 () ListMap!4659)

(declare-fun key!4532 () K!13388)

(declare-fun -!629 (ListMap!4659 K!13388) ListMap!4659)

(assert (=> b!4670735 (= lt!1832826 (-!629 lhm!57 key!4532))))

(declare-fun res!1966189 () Bool)

(assert (=> start!471098 (=> (not res!1966189) (not e!2914710))))

(declare-fun containsKey!2839 (List!52160 K!13388) Bool)

(assert (=> start!471098 (= res!1966189 (not (containsKey!2839 l!12991 key!4532)))))

(assert (=> start!471098 e!2914710))

(declare-fun e!2914711 () Bool)

(assert (=> start!471098 e!2914711))

(declare-fun tp_is_empty!30073 () Bool)

(assert (=> start!471098 tp_is_empty!30073))

(declare-fun inv!67267 (ListMap!4659) Bool)

(assert (=> start!471098 (and (inv!67267 lhm!57) e!2914709)))

(declare-fun b!4670736 () Bool)

(declare-fun res!1966191 () Bool)

(assert (=> b!4670736 (=> (not res!1966191) (not e!2914710))))

(assert (=> b!4670736 (= res!1966191 (not (is-Cons!52036 l!12991)))))

(declare-fun tp!1343821 () Bool)

(declare-fun b!4670737 () Bool)

(declare-fun tp_is_empty!30075 () Bool)

(assert (=> b!4670737 (= e!2914711 (and tp_is_empty!30073 tp_is_empty!30075 tp!1343821))))

(assert (= (and start!471098 res!1966189) b!4670733))

(assert (= (and b!4670733 res!1966190) b!4670736))

(assert (= (and b!4670736 res!1966191) b!4670735))

(assert (= (and start!471098 (is-Cons!52036 l!12991)) b!4670737))

(assert (= start!471098 b!4670734))

(declare-fun m!5564063 () Bool)

(assert (=> b!4670733 m!5564063))

(declare-fun m!5564065 () Bool)

(assert (=> b!4670735 m!5564065))

(declare-fun m!5564067 () Bool)

(assert (=> start!471098 m!5564067))

(declare-fun m!5564069 () Bool)

(assert (=> start!471098 m!5564069))

(push 1)

(assert (not b!4670733))

(assert tp_is_empty!30073)

(assert (not b!4670734))

(assert (not b!4670735))

(assert tp_is_empty!30075)

(assert (not b!4670737))

(assert (not start!471098))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

