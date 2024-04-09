; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43988 () Bool)

(assert start!43988)

(declare-fun res!288938 () Bool)

(declare-fun e!285582 () Bool)

(assert (=> start!43988 (=> (not res!288938) (not e!285582))))

(declare-datatypes ((B!1158 0))(
  ( (B!1159 (val!7031 Int)) )
))
(declare-datatypes ((tuple2!9260 0))(
  ( (tuple2!9261 (_1!4640 (_ BitVec 64)) (_2!4640 B!1158)) )
))
(declare-datatypes ((List!9330 0))(
  ( (Nil!9327) (Cons!9326 (h!10182 tuple2!9260) (t!15563 List!9330)) )
))
(declare-fun l!956 () List!9330)

(declare-fun isStrictlySorted!430 (List!9330) Bool)

(assert (=> start!43988 (= res!288938 (isStrictlySorted!430 l!956))))

(assert (=> start!43988 e!285582))

(declare-fun e!285583 () Bool)

(assert (=> start!43988 e!285583))

(assert (=> start!43988 true))

(declare-fun tp_is_empty!13967 () Bool)

(assert (=> start!43988 tp_is_empty!13967))

(declare-fun b!485037 () Bool)

(declare-fun res!288937 () Bool)

(assert (=> b!485037 (=> (not res!288937) (not e!285582))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!396 (List!9330 (_ BitVec 64)) Bool)

(assert (=> b!485037 (= res!288937 (not (containsKey!396 l!956 key!251)))))

(declare-fun b!485038 () Bool)

(assert (=> b!485038 (= e!285582 false)))

(declare-fun value!166 () B!1158)

(declare-fun lt!219467 () List!9330)

(declare-fun insertStrictlySorted!249 (List!9330 (_ BitVec 64) B!1158) List!9330)

(assert (=> b!485038 (= lt!219467 (insertStrictlySorted!249 l!956 key!251 value!166))))

(declare-fun b!485039 () Bool)

(declare-fun tp!43597 () Bool)

(assert (=> b!485039 (= e!285583 (and tp_is_empty!13967 tp!43597))))

(assert (= (and start!43988 res!288938) b!485037))

(assert (= (and b!485037 res!288937) b!485038))

(assert (= (and start!43988 (is-Cons!9326 l!956)) b!485039))

(declare-fun m!465301 () Bool)

(assert (=> start!43988 m!465301))

(declare-fun m!465303 () Bool)

(assert (=> b!485037 m!465303))

(declare-fun m!465305 () Bool)

(assert (=> b!485038 m!465305))

(push 1)

(assert (not b!485037))

(assert (not start!43988))

(assert tp_is_empty!13967)

(assert (not b!485038))

(assert (not b!485039))

(check-sat)

(pop 1)

