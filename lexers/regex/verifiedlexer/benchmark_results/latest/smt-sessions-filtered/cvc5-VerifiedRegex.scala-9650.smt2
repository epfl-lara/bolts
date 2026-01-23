; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506836 () Bool)

(assert start!506836)

(declare-fun b!4853539 () Bool)

(declare-fun res!2072102 () Bool)

(declare-fun e!3034160 () Bool)

(assert (=> b!4853539 (=> (not res!2072102) (not e!3034160))))

(declare-datatypes ((K!17537 0))(
  ( (K!17538 (val!22335 Int)) )
))
(declare-datatypes ((V!17783 0))(
  ( (V!17784 (val!22336 Int)) )
))
(declare-datatypes ((tuple2!59506 0))(
  ( (tuple2!59507 (_1!33047 K!17537) (_2!33047 V!17783)) )
))
(declare-datatypes ((List!55810 0))(
  ( (Nil!55686) (Cons!55686 (h!62134 tuple2!59506) (t!363306 List!55810)) )
))
(declare-fun l!11080 () List!55810)

(declare-fun key!2508 () K!17537)

(assert (=> b!4853539 (= res!2072102 (and (is-Cons!55686 l!11080) (= (_1!33047 (h!62134 l!11080)) key!2508)))))

(declare-fun b!4853540 () Bool)

(assert (=> b!4853540 (= e!3034160 false)))

(declare-fun lt!1990741 () Bool)

(declare-fun e!3034158 () Bool)

(assert (=> b!4853540 (= lt!1990741 e!3034158)))

(declare-fun res!2072103 () Bool)

(assert (=> b!4853540 (=> res!2072103 e!3034158)))

(declare-datatypes ((Option!13747 0))(
  ( (None!13746) (Some!13746 (v!49556 tuple2!59506)) )
))
(declare-fun isEmpty!29779 (Option!13747) Bool)

(assert (=> b!4853540 (= res!2072103 (not (isEmpty!29779 (Some!13746 (h!62134 l!11080)))))))

(declare-fun b!4853541 () Bool)

(declare-fun containsKey!4761 (List!55810 K!17537) Bool)

(assert (=> b!4853541 (= e!3034158 (containsKey!4761 l!11080 key!2508))))

(declare-fun b!4853542 () Bool)

(declare-fun tp!1365227 () Bool)

(declare-fun tp_is_empty!35405 () Bool)

(declare-fun e!3034159 () Bool)

(declare-fun tp_is_empty!35407 () Bool)

(assert (=> b!4853542 (= e!3034159 (and tp_is_empty!35405 tp_is_empty!35407 tp!1365227))))

(declare-fun res!2072101 () Bool)

(assert (=> start!506836 (=> (not res!2072101) (not e!3034160))))

(declare-fun noDuplicateKeys!2635 (List!55810) Bool)

(assert (=> start!506836 (= res!2072101 (noDuplicateKeys!2635 l!11080))))

(assert (=> start!506836 e!3034160))

(assert (=> start!506836 e!3034159))

(assert (=> start!506836 tp_is_empty!35405))

(assert (= (and start!506836 res!2072101) b!4853539))

(assert (= (and b!4853539 res!2072102) b!4853540))

(assert (= (and b!4853540 (not res!2072103)) b!4853541))

(assert (= (and start!506836 (is-Cons!55686 l!11080)) b!4853542))

(declare-fun m!5851792 () Bool)

(assert (=> b!4853540 m!5851792))

(declare-fun m!5851794 () Bool)

(assert (=> b!4853541 m!5851794))

(declare-fun m!5851796 () Bool)

(assert (=> start!506836 m!5851796))

(push 1)

(assert (not start!506836))

(assert (not b!4853541))

(assert (not b!4853542))

(assert tp_is_empty!35405)

(assert tp_is_empty!35407)

(assert (not b!4853540))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

