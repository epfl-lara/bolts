; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!154 () Bool)

(assert start!154)

(declare-fun b_free!19 () Bool)

(declare-fun b_next!19 () Bool)

(assert (=> start!154 (= b_free!19 (not b_next!19))))

(declare-fun tp!62 () Bool)

(declare-fun b_and!43 () Bool)

(assert (=> start!154 (= tp!62 b_and!43)))

(declare-fun res!4371 () Bool)

(declare-fun e!321 () Bool)

(assert (=> start!154 (=> (not res!4371) (not e!321))))

(declare-datatypes ((B!254 0))(
  ( (B!255 (val!9 Int)) )
))
(declare-datatypes ((tuple2!18 0))(
  ( (tuple2!19 (_1!9 (_ BitVec 64)) (_2!9 B!254)) )
))
(declare-datatypes ((List!18 0))(
  ( (Nil!15) (Cons!14 (h!580 tuple2!18) (t!2037 List!18)) )
))
(declare-datatypes ((ListLongMap!23 0))(
  ( (ListLongMap!24 (toList!27 List!18)) )
))
(declare-fun lm!258 () ListLongMap!23)

(declare-fun p!318 () Int)

(declare-fun forall!11 (List!18 Int) Bool)

(assert (=> start!154 (= res!4371 (forall!11 (toList!27 lm!258) p!318))))

(assert (=> start!154 e!321))

(declare-fun e!320 () Bool)

(declare-fun inv!39 (ListLongMap!23) Bool)

(assert (=> start!154 (and (inv!39 lm!258) e!320)))

(assert (=> start!154 tp!62))

(assert (=> start!154 true))

(declare-fun b!1779 () Bool)

(declare-fun res!4373 () Bool)

(assert (=> b!1779 (=> (not res!4373) (not e!321))))

(declare-fun isEmpty!16 (ListLongMap!23) Bool)

(assert (=> b!1779 (= res!4373 (not (isEmpty!16 lm!258)))))

(declare-fun b!1782 () Bool)

(declare-fun tp!61 () Bool)

(assert (=> b!1782 (= e!320 tp!61)))

(declare-fun b!1781 () Bool)

(assert (=> b!1781 (= e!321 false)))

(declare-fun lt!299 () Bool)

(declare-fun tail!29 (ListLongMap!23) ListLongMap!23)

(assert (=> b!1781 (= lt!299 (forall!11 (toList!27 (tail!29 lm!258)) p!318))))

(declare-fun b!1780 () Bool)

(declare-fun res!4372 () Bool)

(assert (=> b!1780 (=> (not res!4372) (not e!321))))

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!743 (List!18) tuple2!18)

(assert (=> b!1780 (= res!4372 (not (= (_1!9 (head!743 (toList!27 lm!258))) k!394)))))

(assert (= (and start!154 res!4371) b!1779))

(assert (= (and b!1779 res!4373) b!1780))

(assert (= (and b!1780 res!4372) b!1781))

(assert (= start!154 b!1782))

(declare-fun m!453 () Bool)

(assert (=> start!154 m!453))

(declare-fun m!455 () Bool)

(assert (=> start!154 m!455))

(declare-fun m!457 () Bool)

(assert (=> b!1779 m!457))

(declare-fun m!459 () Bool)

(assert (=> b!1781 m!459))

(declare-fun m!461 () Bool)

(assert (=> b!1781 m!461))

(declare-fun m!463 () Bool)

(assert (=> b!1780 m!463))

(push 1)

(assert (not b!1782))

(assert (not b!1780))

(assert (not b!1781))

(assert (not start!154))

(assert (not b_next!19))

(assert (not b!1779))

(assert b_and!43)

(check-sat)

(pop 1)

(push 1)

