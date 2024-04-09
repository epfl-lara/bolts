; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43790 () Bool)

(assert start!43790)

(declare-fun res!288292 () Bool)

(declare-fun e!284734 () Bool)

(assert (=> start!43790 (=> (not res!288292) (not e!284734))))

(declare-datatypes ((B!1110 0))(
  ( (B!1111 (val!7007 Int)) )
))
(declare-datatypes ((tuple2!9212 0))(
  ( (tuple2!9213 (_1!4616 (_ BitVec 64)) (_2!4616 B!1110)) )
))
(declare-datatypes ((List!9306 0))(
  ( (Nil!9303) (Cons!9302 (h!10158 tuple2!9212) (t!15536 List!9306)) )
))
(declare-fun l!956 () List!9306)

(declare-fun isStrictlySorted!406 (List!9306) Bool)

(assert (=> start!43790 (= res!288292 (isStrictlySorted!406 l!956))))

(assert (=> start!43790 e!284734))

(declare-fun e!284733 () Bool)

(assert (=> start!43790 e!284733))

(assert (=> start!43790 true))

(declare-fun tp_is_empty!13919 () Bool)

(assert (=> start!43790 tp_is_empty!13919))

(declare-fun b!483741 () Bool)

(declare-fun res!288293 () Bool)

(assert (=> b!483741 (=> (not res!288293) (not e!284734))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!372 (List!9306 (_ BitVec 64)) Bool)

(assert (=> b!483741 (= res!288293 (not (containsKey!372 l!956 key!251)))))

(declare-fun b!483742 () Bool)

(assert (=> b!483742 (= e!284734 false)))

(declare-fun lt!219284 () List!9306)

(declare-fun value!166 () B!1110)

(declare-fun insertStrictlySorted!228 (List!9306 (_ BitVec 64) B!1110) List!9306)

(assert (=> b!483742 (= lt!219284 (insertStrictlySorted!228 l!956 key!251 value!166))))

(declare-fun b!483743 () Bool)

(declare-fun tp!43468 () Bool)

(assert (=> b!483743 (= e!284733 (and tp_is_empty!13919 tp!43468))))

(assert (= (and start!43790 res!288292) b!483741))

(assert (= (and b!483741 res!288293) b!483742))

(assert (= (and start!43790 (is-Cons!9302 l!956)) b!483743))

(declare-fun m!464659 () Bool)

(assert (=> start!43790 m!464659))

(declare-fun m!464661 () Bool)

(assert (=> b!483741 m!464661))

(declare-fun m!464663 () Bool)

(assert (=> b!483742 m!464663))

(push 1)

(assert (not b!483743))

(assert tp_is_empty!13919)

(assert (not b!483742))

(assert (not start!43790))

(assert (not b!483741))

(check-sat)

