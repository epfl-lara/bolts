; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43768 () Bool)

(assert start!43768)

(declare-fun res!288200 () Bool)

(declare-fun e!284658 () Bool)

(assert (=> start!43768 (=> (not res!288200) (not e!284658))))

(declare-datatypes ((B!1088 0))(
  ( (B!1089 (val!6996 Int)) )
))
(declare-datatypes ((tuple2!9190 0))(
  ( (tuple2!9191 (_1!4605 (_ BitVec 64)) (_2!4605 B!1088)) )
))
(declare-datatypes ((List!9295 0))(
  ( (Nil!9292) (Cons!9291 (h!10147 tuple2!9190) (t!15525 List!9295)) )
))
(declare-fun l!956 () List!9295)

(declare-fun isStrictlySorted!395 (List!9295) Bool)

(assert (=> start!43768 (= res!288200 (isStrictlySorted!395 l!956))))

(assert (=> start!43768 e!284658))

(declare-fun e!284659 () Bool)

(assert (=> start!43768 e!284659))

(assert (=> start!43768 true))

(declare-fun tp_is_empty!13897 () Bool)

(assert (=> start!43768 tp_is_empty!13897))

(declare-fun b!483615 () Bool)

(declare-fun res!288199 () Bool)

(assert (=> b!483615 (=> (not res!288199) (not e!284658))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!361 (List!9295 (_ BitVec 64)) Bool)

(assert (=> b!483615 (= res!288199 (not (containsKey!361 l!956 key!251)))))

(declare-fun b!483616 () Bool)

(assert (=> b!483616 (= e!284658 false)))

(declare-fun lt!219242 () List!9295)

(declare-fun value!166 () B!1088)

(declare-fun insertStrictlySorted!217 (List!9295 (_ BitVec 64) B!1088) List!9295)

(assert (=> b!483616 (= lt!219242 (insertStrictlySorted!217 l!956 key!251 value!166))))

(declare-fun b!483617 () Bool)

(declare-fun tp!43435 () Bool)

(assert (=> b!483617 (= e!284659 (and tp_is_empty!13897 tp!43435))))

(assert (= (and start!43768 res!288200) b!483615))

(assert (= (and b!483615 res!288199) b!483616))

(assert (= (and start!43768 (is-Cons!9291 l!956)) b!483617))

(declare-fun m!464557 () Bool)

(assert (=> start!43768 m!464557))

(declare-fun m!464559 () Bool)

(assert (=> b!483615 m!464559))

(declare-fun m!464561 () Bool)

(assert (=> b!483616 m!464561))

(push 1)

(assert (not b!483616))

(assert (not b!483615))

(assert (not start!43768))

(assert (not b!483617))

(assert tp_is_empty!13897)

(check-sat)

(pop 1)

