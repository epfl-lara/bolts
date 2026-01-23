; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!417052 () Bool)

(assert start!417052)

(declare-fun b!4329109 () Bool)

(declare-fun res!1774102 () Bool)

(declare-fun e!2693845 () Bool)

(assert (=> b!4329109 (=> (not res!1774102) (not e!2693845))))

(declare-datatypes ((K!9808 0))(
  ( (K!9809 (val!16117 Int)) )
))
(declare-datatypes ((V!10054 0))(
  ( (V!10055 (val!16118 Int)) )
))
(declare-datatypes ((tuple2!47582 0))(
  ( (tuple2!47583 (_1!27085 K!9808) (_2!27085 V!10054)) )
))
(declare-datatypes ((List!48619 0))(
  ( (Nil!48495) (Cons!48495 (h!53964 tuple2!47582) (t!355531 List!48619)) )
))
(declare-fun l!13918 () List!48619)

(declare-fun otherK!9 () K!9808)

(declare-fun containsKey!454 (List!48619 K!9808) Bool)

(assert (=> b!4329109 (= res!1774102 (not (containsKey!454 l!13918 otherK!9)))))

(declare-fun b!4329110 () Bool)

(declare-fun res!1774103 () Bool)

(assert (=> b!4329110 (=> (not res!1774103) (not e!2693845))))

(declare-fun key!5304 () K!9808)

(assert (=> b!4329110 (= res!1774103 (not (= otherK!9 key!5304)))))

(declare-fun b!4329111 () Bool)

(declare-fun tp_is_empty!24423 () Bool)

(declare-fun tp_is_empty!24421 () Bool)

(declare-fun tp!1328127 () Bool)

(declare-fun e!2693844 () Bool)

(assert (=> b!4329111 (= e!2693844 (and tp_is_empty!24421 tp_is_empty!24423 tp!1328127))))

(declare-fun b!4329112 () Bool)

(declare-fun res!1774101 () Bool)

(assert (=> b!4329112 (=> (not res!1774101) (not e!2693845))))

(assert (=> b!4329112 (= res!1774101 (not (is-Nil!48495 l!13918)))))

(declare-fun res!1774100 () Bool)

(assert (=> start!417052 (=> (not res!1774100) (not e!2693845))))

(declare-fun noDuplicateKeys!308 (List!48619) Bool)

(assert (=> start!417052 (= res!1774100 (noDuplicateKeys!308 l!13918))))

(assert (=> start!417052 e!2693845))

(assert (=> start!417052 e!2693844))

(assert (=> start!417052 tp_is_empty!24421))

(declare-fun b!4329113 () Bool)

(assert (=> b!4329113 (= e!2693845 false)))

(declare-fun lt!1545368 () Bool)

(assert (=> b!4329113 (= lt!1545368 (noDuplicateKeys!308 (t!355531 l!13918)))))

(assert (= (and start!417052 res!1774100) b!4329110))

(assert (= (and b!4329110 res!1774103) b!4329109))

(assert (= (and b!4329109 res!1774102) b!4329112))

(assert (= (and b!4329112 res!1774101) b!4329113))

(assert (= (and start!417052 (is-Cons!48495 l!13918)) b!4329111))

(declare-fun m!4923697 () Bool)

(assert (=> b!4329109 m!4923697))

(declare-fun m!4923699 () Bool)

(assert (=> start!417052 m!4923699))

(declare-fun m!4923701 () Bool)

(assert (=> b!4329113 m!4923701))

(push 1)

(assert (not b!4329111))

(assert (not start!417052))

(assert tp_is_empty!24423)

(assert tp_is_empty!24421)

(assert (not b!4329109))

(assert (not b!4329113))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

