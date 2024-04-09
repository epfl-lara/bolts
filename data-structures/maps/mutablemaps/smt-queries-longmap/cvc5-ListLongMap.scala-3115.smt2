; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43792 () Bool)

(assert start!43792)

(declare-fun res!288298 () Bool)

(declare-fun e!284740 () Bool)

(assert (=> start!43792 (=> (not res!288298) (not e!284740))))

(declare-datatypes ((B!1112 0))(
  ( (B!1113 (val!7008 Int)) )
))
(declare-datatypes ((tuple2!9214 0))(
  ( (tuple2!9215 (_1!4617 (_ BitVec 64)) (_2!4617 B!1112)) )
))
(declare-datatypes ((List!9307 0))(
  ( (Nil!9304) (Cons!9303 (h!10159 tuple2!9214) (t!15537 List!9307)) )
))
(declare-fun l!956 () List!9307)

(declare-fun isStrictlySorted!407 (List!9307) Bool)

(assert (=> start!43792 (= res!288298 (isStrictlySorted!407 l!956))))

(assert (=> start!43792 e!284740))

(declare-fun e!284739 () Bool)

(assert (=> start!43792 e!284739))

(assert (=> start!43792 true))

(declare-fun tp_is_empty!13921 () Bool)

(assert (=> start!43792 tp_is_empty!13921))

(declare-fun b!483750 () Bool)

(declare-fun res!288299 () Bool)

(assert (=> b!483750 (=> (not res!288299) (not e!284740))))

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!373 (List!9307 (_ BitVec 64)) Bool)

(assert (=> b!483750 (= res!288299 (not (containsKey!373 l!956 key!251)))))

(declare-fun b!483751 () Bool)

(assert (=> b!483751 (= e!284740 false)))

(declare-fun lt!219287 () List!9307)

(declare-fun value!166 () B!1112)

(declare-fun insertStrictlySorted!229 (List!9307 (_ BitVec 64) B!1112) List!9307)

(assert (=> b!483751 (= lt!219287 (insertStrictlySorted!229 l!956 key!251 value!166))))

(declare-fun b!483752 () Bool)

(declare-fun tp!43471 () Bool)

(assert (=> b!483752 (= e!284739 (and tp_is_empty!13921 tp!43471))))

(assert (= (and start!43792 res!288298) b!483750))

(assert (= (and b!483750 res!288299) b!483751))

(assert (= (and start!43792 (is-Cons!9303 l!956)) b!483752))

(declare-fun m!464665 () Bool)

(assert (=> start!43792 m!464665))

(declare-fun m!464667 () Bool)

(assert (=> b!483750 m!464667))

(declare-fun m!464669 () Bool)

(assert (=> b!483751 m!464669))

(push 1)

(assert (not b!483750))

(assert (not b!483752))

(assert (not start!43792))

(assert (not b!483751))

(assert tp_is_empty!13921)

(check-sat)

(pop 1)

