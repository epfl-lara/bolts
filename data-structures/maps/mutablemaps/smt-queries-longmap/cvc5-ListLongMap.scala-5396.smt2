; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!72010 () Bool)

(assert start!72010)

(declare-fun res!568975 () Bool)

(declare-fun e!466466 () Bool)

(assert (=> start!72010 (=> (not res!568975) (not e!466466))))

(declare-datatypes ((B!1178 0))(
  ( (B!1179 (val!7671 Int)) )
))
(declare-datatypes ((tuple2!10220 0))(
  ( (tuple2!10221 (_1!5120 (_ BitVec 64)) (_2!5120 B!1178)) )
))
(declare-datatypes ((List!16030 0))(
  ( (Nil!16027) (Cons!16026 (h!17157 tuple2!10220) (t!22409 List!16030)) )
))
(declare-fun l!390 () List!16030)

(declare-fun isStrictlySorted!442 (List!16030) Bool)

(assert (=> start!72010 (= res!568975 (isStrictlySorted!442 l!390))))

(assert (=> start!72010 e!466466))

(declare-fun e!466465 () Bool)

(assert (=> start!72010 e!466465))

(declare-fun b!836097 () Bool)

(declare-fun res!568974 () Bool)

(assert (=> b!836097 (=> (not res!568974) (not e!466466))))

(assert (=> b!836097 (= res!568974 (is-Cons!16026 l!390))))

(declare-fun b!836098 () Bool)

(assert (=> b!836098 (= e!466466 (not (isStrictlySorted!442 (t!22409 l!390))))))

(declare-fun b!836099 () Bool)

(declare-fun tp_is_empty!15247 () Bool)

(declare-fun tp!47405 () Bool)

(assert (=> b!836099 (= e!466465 (and tp_is_empty!15247 tp!47405))))

(assert (= (and start!72010 res!568975) b!836097))

(assert (= (and b!836097 res!568974) b!836098))

(assert (= (and start!72010 (is-Cons!16026 l!390)) b!836099))

(declare-fun m!781591 () Bool)

(assert (=> start!72010 m!781591))

(declare-fun m!781593 () Bool)

(assert (=> b!836098 m!781593))

(push 1)

(assert (not start!72010))

(assert (not b!836098))

(assert (not b!836099))

(assert tp_is_empty!15247)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!107467 () Bool)

(declare-fun res!569000 () Bool)

(declare-fun e!466491 () Bool)

(assert (=> d!107467 (=> res!569000 e!466491)))

(assert (=> d!107467 (= res!569000 (or (is-Nil!16027 l!390) (is-Nil!16027 (t!22409 l!390))))))

(assert (=> d!107467 (= (isStrictlySorted!442 l!390) e!466491)))

(declare-fun b!836130 () Bool)

(declare-fun e!466492 () Bool)

(assert (=> b!836130 (= e!466491 e!466492)))

(declare-fun res!569001 () Bool)

(assert (=> b!836130 (=> (not res!569001) (not e!466492))))

(assert (=> b!836130 (= res!569001 (bvslt (_1!5120 (h!17157 l!390)) (_1!5120 (h!17157 (t!22409 l!390)))))))

(declare-fun b!836131 () Bool)

(assert (=> b!836131 (= e!466492 (isStrictlySorted!442 (t!22409 l!390)))))

(assert (= (and d!107467 (not res!569000)) b!836130))

(assert (= (and b!836130 res!569001) b!836131))

(assert (=> b!836131 m!781593))

(assert (=> start!72010 d!107467))

(declare-fun d!107473 () Bool)

(declare-fun res!569006 () Bool)

(declare-fun e!466497 () Bool)

(assert (=> d!107473 (=> res!569006 e!466497)))

(assert (=> d!107473 (= res!569006 (or (is-Nil!16027 (t!22409 l!390)) (is-Nil!16027 (t!22409 (t!22409 l!390)))))))

(assert (=> d!107473 (= (isStrictlySorted!442 (t!22409 l!390)) e!466497)))

(declare-fun b!836136 () Bool)

(declare-fun e!466498 () Bool)

(assert (=> b!836136 (= e!466497 e!466498)))

(declare-fun res!569007 () Bool)

(assert (=> b!836136 (=> (not res!569007) (not e!466498))))

(assert (=> b!836136 (= res!569007 (bvslt (_1!5120 (h!17157 (t!22409 l!390))) (_1!5120 (h!17157 (t!22409 (t!22409 l!390))))))))

(declare-fun b!836137 () Bool)

(assert (=> b!836137 (= e!466498 (isStrictlySorted!442 (t!22409 (t!22409 l!390))))))

(assert (= (and d!107473 (not res!569006)) b!836136))

(assert (= (and b!836136 res!569007) b!836137))

(declare-fun m!781605 () Bool)

(assert (=> b!836137 m!781605))

(assert (=> b!836098 d!107473))

(declare-fun b!836154 () Bool)

(declare-fun e!466509 () Bool)

(declare-fun tp!47418 () Bool)

(assert (=> b!836154 (= e!466509 (and tp_is_empty!15247 tp!47418))))

(assert (=> b!836099 (= tp!47405 e!466509)))

(assert (= (and b!836099 (is-Cons!16026 (t!22409 l!390))) b!836154))

(push 1)

(assert (not b!836131))

(assert (not b!836137))

(assert (not b!836154))

(assert tp_is_empty!15247)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

