; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138392 () Bool)

(assert start!138392)

(declare-fun b!1585927 () Bool)

(declare-fun e!885587 () Bool)

(declare-fun e!885586 () Bool)

(assert (=> b!1585927 (= e!885587 e!885586)))

(declare-fun res!1083203 () Bool)

(assert (=> b!1585927 (=> res!1083203 e!885586)))

(declare-datatypes ((B!3006 0))(
  ( (B!3007 (val!19865 Int)) )
))
(declare-datatypes ((tuple2!26062 0))(
  ( (tuple2!26063 (_1!13041 (_ BitVec 64)) (_2!13041 B!3006)) )
))
(declare-datatypes ((List!37146 0))(
  ( (Nil!37143) (Cons!37142 (h!38686 tuple2!26062) (t!52082 List!37146)) )
))
(declare-fun lt!677410 () List!37146)

(declare-fun isStrictlySorted!1205 (List!37146) Bool)

(assert (=> b!1585927 (= res!1083203 (not (isStrictlySorted!1205 lt!677410)))))

(declare-fun lt!677409 () tuple2!26062)

(declare-fun $colon$colon!1051 (List!37146 tuple2!26062) List!37146)

(assert (=> b!1585927 (= lt!677410 ($colon$colon!1051 Nil!37143 lt!677409))))

(declare-fun newKey!21 () (_ BitVec 64))

(declare-fun newValue!21 () B!3006)

(assert (=> b!1585927 (= lt!677409 (tuple2!26063 newKey!21 newValue!21))))

(declare-fun b!1585928 () Bool)

(declare-fun res!1083200 () Bool)

(assert (=> b!1585928 (=> (not res!1083200) (not e!885587))))

(declare-fun l!556 () List!37146)

(assert (=> b!1585928 (= res!1083200 (and (or (not (is-Cons!37142 l!556)) (bvsge (_1!13041 (h!38686 l!556)) newKey!21)) (or (not (is-Cons!37142 l!556)) (not (= (_1!13041 (h!38686 l!556)) newKey!21))) (or (not (is-Cons!37142 l!556)) (bvsle (_1!13041 (h!38686 l!556)) newKey!21)) (is-Nil!37143 l!556)))))

(declare-fun b!1585929 () Bool)

(declare-fun e!885588 () Bool)

(declare-fun tp_is_empty!39539 () Bool)

(declare-fun tp!115327 () Bool)

(assert (=> b!1585929 (= e!885588 (and tp_is_empty!39539 tp!115327))))

(declare-fun res!1083201 () Bool)

(assert (=> start!138392 (=> (not res!1083201) (not e!885587))))

(assert (=> start!138392 (= res!1083201 (isStrictlySorted!1205 l!556))))

(assert (=> start!138392 e!885587))

(assert (=> start!138392 e!885588))

(assert (=> start!138392 true))

(assert (=> start!138392 tp_is_empty!39539))

(declare-fun b!1585930 () Bool)

(declare-fun contains!10560 (List!37146 tuple2!26062) Bool)

(assert (=> b!1585930 (= e!885586 (not (contains!10560 lt!677410 lt!677409)))))

(declare-fun b!1585931 () Bool)

(declare-fun res!1083202 () Bool)

(assert (=> b!1585931 (=> res!1083202 e!885586)))

(declare-fun containsKey!1018 (List!37146 (_ BitVec 64)) Bool)

(assert (=> b!1585931 (= res!1083202 (not (containsKey!1018 lt!677410 newKey!21)))))

(assert (= (and start!138392 res!1083201) b!1585928))

(assert (= (and b!1585928 res!1083200) b!1585927))

(assert (= (and b!1585927 (not res!1083203)) b!1585931))

(assert (= (and b!1585931 (not res!1083202)) b!1585930))

(assert (= (and start!138392 (is-Cons!37142 l!556)) b!1585929))

(declare-fun m!1454579 () Bool)

(assert (=> b!1585927 m!1454579))

(declare-fun m!1454581 () Bool)

(assert (=> b!1585927 m!1454581))

(declare-fun m!1454583 () Bool)

(assert (=> start!138392 m!1454583))

(declare-fun m!1454585 () Bool)

(assert (=> b!1585930 m!1454585))

(declare-fun m!1454587 () Bool)

(assert (=> b!1585931 m!1454587))

(push 1)

(assert (not start!138392))

(assert (not b!1585931))

(assert tp_is_empty!39539)

(assert (not b!1585929))

(assert (not b!1585927))

(assert (not b!1585930))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167827 () Bool)

(declare-fun res!1083218 () Bool)

(declare-fun e!885603 () Bool)

(assert (=> d!167827 (=> res!1083218 e!885603)))

(assert (=> d!167827 (= res!1083218 (or (is-Nil!37143 lt!677410) (is-Nil!37143 (t!52082 lt!677410))))))

(assert (=> d!167827 (= (isStrictlySorted!1205 lt!677410) e!885603)))

(declare-fun b!1585946 () Bool)

(declare-fun e!885604 () Bool)

(assert (=> b!1585946 (= e!885603 e!885604)))

(declare-fun res!1083219 () Bool)

(assert (=> b!1585946 (=> (not res!1083219) (not e!885604))))

(assert (=> b!1585946 (= res!1083219 (bvslt (_1!13041 (h!38686 lt!677410)) (_1!13041 (h!38686 (t!52082 lt!677410)))))))

(declare-fun b!1585947 () Bool)

(assert (=> b!1585947 (= e!885604 (isStrictlySorted!1205 (t!52082 lt!677410)))))

(assert (= (and d!167827 (not res!1083218)) b!1585946))

(assert (= (and b!1585946 res!1083219) b!1585947))

(declare-fun m!1454595 () Bool)

(assert (=> b!1585947 m!1454595))

(assert (=> b!1585927 d!167827))

(declare-fun d!167831 () Bool)

(assert (=> d!167831 (= ($colon$colon!1051 Nil!37143 lt!677409) (Cons!37142 lt!677409 Nil!37143))))

(assert (=> b!1585927 d!167831))

(declare-fun d!167835 () Bool)

(declare-fun res!1083222 () Bool)

(declare-fun e!885607 () Bool)

(assert (=> d!167835 (=> res!1083222 e!885607)))

(assert (=> d!167835 (= res!1083222 (or (is-Nil!37143 l!556) (is-Nil!37143 (t!52082 l!556))))))

(assert (=> d!167835 (= (isStrictlySorted!1205 l!556) e!885607)))

(declare-fun b!1585950 () Bool)

(declare-fun e!885608 () Bool)

(assert (=> b!1585950 (= e!885607 e!885608)))

(declare-fun res!1083223 () Bool)

(assert (=> b!1585950 (=> (not res!1083223) (not e!885608))))

(assert (=> b!1585950 (= res!1083223 (bvslt (_1!13041 (h!38686 l!556)) (_1!13041 (h!38686 (t!52082 l!556)))))))

(declare-fun b!1585951 () Bool)

(assert (=> b!1585951 (= e!885608 (isStrictlySorted!1205 (t!52082 l!556)))))

(assert (= (and d!167835 (not res!1083222)) b!1585950))

(assert (= (and b!1585950 res!1083223) b!1585951))

(declare-fun m!1454599 () Bool)

(assert (=> b!1585951 m!1454599))

(assert (=> start!138392 d!167835))

(declare-fun d!167837 () Bool)

(declare-fun res!1083244 () Bool)

(declare-fun e!885629 () Bool)

(assert (=> d!167837 (=> res!1083244 e!885629)))

(assert (=> d!167837 (= res!1083244 (and (is-Cons!37142 lt!677410) (= (_1!13041 (h!38686 lt!677410)) newKey!21)))))

(assert (=> d!167837 (= (containsKey!1018 lt!677410 newKey!21) e!885629)))

(declare-fun b!1585972 () Bool)

(declare-fun e!885630 () Bool)

(assert (=> b!1585972 (= e!885629 e!885630)))

(declare-fun res!1083245 () Bool)

(assert (=> b!1585972 (=> (not res!1083245) (not e!885630))))

(assert (=> b!1585972 (= res!1083245 (and (or (not (is-Cons!37142 lt!677410)) (bvsle (_1!13041 (h!38686 lt!677410)) newKey!21)) (is-Cons!37142 lt!677410) (bvslt (_1!13041 (h!38686 lt!677410)) newKey!21)))))

(declare-fun b!1585973 () Bool)

(assert (=> b!1585973 (= e!885630 (containsKey!1018 (t!52082 lt!677410) newKey!21))))

(assert (= (and d!167837 (not res!1083244)) b!1585972))

(assert (= (and b!1585972 res!1083245) b!1585973))

(declare-fun m!1454609 () Bool)

(assert (=> b!1585973 m!1454609))

(assert (=> b!1585931 d!167837))

(declare-fun d!167851 () Bool)

(declare-fun lt!677419 () Bool)

(declare-fun content!879 (List!37146) (Set tuple2!26062))

(assert (=> d!167851 (= lt!677419 (member lt!677409 (content!879 lt!677410)))))

(declare-fun e!885653 () Bool)

(assert (=> d!167851 (= lt!677419 e!885653)))

(declare-fun res!1083263 () Bool)

(assert (=> d!167851 (=> (not res!1083263) (not e!885653))))

(assert (=> d!167851 (= res!1083263 (is-Cons!37142 lt!677410))))

(assert (=> d!167851 (= (contains!10560 lt!677410 lt!677409) lt!677419)))

(declare-fun b!1585999 () Bool)

(declare-fun e!885652 () Bool)

(assert (=> b!1585999 (= e!885653 e!885652)))

(declare-fun res!1083262 () Bool)

(assert (=> b!1585999 (=> res!1083262 e!885652)))

(assert (=> b!1585999 (= res!1083262 (= (h!38686 lt!677410) lt!677409))))

