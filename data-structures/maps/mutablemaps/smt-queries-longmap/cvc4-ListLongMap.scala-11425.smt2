; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133238 () Bool)

(assert start!133238)

(declare-fun res!1065758 () Bool)

(declare-fun e!868016 () Bool)

(assert (=> start!133238 (=> (not res!1065758) (not e!868016))))

(declare-datatypes ((B!2430 0))(
  ( (B!2431 (val!19301 Int)) )
))
(declare-datatypes ((tuple2!25118 0))(
  ( (tuple2!25119 (_1!12569 (_ BitVec 64)) (_2!12569 B!2430)) )
))
(declare-datatypes ((List!36481 0))(
  ( (Nil!36478) (Cons!36477 (h!37924 tuple2!25118) (t!51215 List!36481)) )
))
(declare-fun l!1292 () List!36481)

(declare-fun isStrictlySorted!972 (List!36481) Bool)

(assert (=> start!133238 (= res!1065758 (isStrictlySorted!972 l!1292))))

(assert (=> start!133238 e!868016))

(declare-fun e!868015 () Bool)

(assert (=> start!133238 e!868015))

(assert (=> start!133238 true))

(declare-fun b!1558152 () Bool)

(declare-fun tp_is_empty!38435 () Bool)

(declare-fun tp!112627 () Bool)

(assert (=> b!1558152 (= e!868015 (and tp_is_empty!38435 tp!112627))))

(declare-fun b!1558153 () Bool)

(declare-fun e!868017 () Bool)

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun containsKey!836 (List!36481 (_ BitVec 64)) Bool)

(assert (=> b!1558153 (= e!868017 (not (containsKey!836 (t!51215 l!1292) otherKey!62)))))

(declare-fun b!1558154 () Bool)

(declare-fun res!1065757 () Bool)

(assert (=> b!1558154 (=> (not res!1065757) (not e!868016))))

(assert (=> b!1558154 (= res!1065757 (containsKey!836 l!1292 otherKey!62))))

(declare-fun b!1558155 () Bool)

(declare-fun res!1065759 () Bool)

(assert (=> b!1558155 (=> (not res!1065759) (not e!868016))))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1558155 (= res!1065759 (and (not (= otherKey!62 newKey!135)) (is-Cons!36477 l!1292) (not (= (_1!12569 (h!37924 l!1292)) otherKey!62))))))

(declare-fun b!1558156 () Bool)

(assert (=> b!1558156 (= e!868016 e!868017)))

(declare-fun res!1065756 () Bool)

(assert (=> b!1558156 (=> res!1065756 e!868017)))

(assert (=> b!1558156 (= res!1065756 (not (isStrictlySorted!972 (t!51215 l!1292))))))

(assert (= (and start!133238 res!1065758) b!1558154))

(assert (= (and b!1558154 res!1065757) b!1558155))

(assert (= (and b!1558155 res!1065759) b!1558156))

(assert (= (and b!1558156 (not res!1065756)) b!1558153))

(assert (= (and start!133238 (is-Cons!36477 l!1292)) b!1558152))

(declare-fun m!1434943 () Bool)

(assert (=> start!133238 m!1434943))

(declare-fun m!1434945 () Bool)

(assert (=> b!1558153 m!1434945))

(declare-fun m!1434947 () Bool)

(assert (=> b!1558154 m!1434947))

(declare-fun m!1434949 () Bool)

(assert (=> b!1558156 m!1434949))

(push 1)

(assert (not b!1558153))

(assert (not start!133238))

(assert (not b!1558154))

(assert (not b!1558156))

(assert (not b!1558152))

(assert tp_is_empty!38435)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162535 () Bool)

(declare-fun res!1065770 () Bool)

(declare-fun e!868028 () Bool)

(assert (=> d!162535 (=> res!1065770 e!868028)))

(assert (=> d!162535 (= res!1065770 (and (is-Cons!36477 (t!51215 l!1292)) (= (_1!12569 (h!37924 (t!51215 l!1292))) otherKey!62)))))

(assert (=> d!162535 (= (containsKey!836 (t!51215 l!1292) otherKey!62) e!868028)))

(declare-fun b!1558167 () Bool)

(declare-fun e!868029 () Bool)

(assert (=> b!1558167 (= e!868028 e!868029)))

(declare-fun res!1065771 () Bool)

(assert (=> b!1558167 (=> (not res!1065771) (not e!868029))))

(assert (=> b!1558167 (= res!1065771 (and (or (not (is-Cons!36477 (t!51215 l!1292))) (bvsle (_1!12569 (h!37924 (t!51215 l!1292))) otherKey!62)) (is-Cons!36477 (t!51215 l!1292)) (bvslt (_1!12569 (h!37924 (t!51215 l!1292))) otherKey!62)))))

(declare-fun b!1558168 () Bool)

(assert (=> b!1558168 (= e!868029 (containsKey!836 (t!51215 (t!51215 l!1292)) otherKey!62))))

(assert (= (and d!162535 (not res!1065770)) b!1558167))

(assert (= (and b!1558167 res!1065771) b!1558168))

(declare-fun m!1434951 () Bool)

(assert (=> b!1558168 m!1434951))

(assert (=> b!1558153 d!162535))

(declare-fun d!162541 () Bool)

(declare-fun res!1065792 () Bool)

(declare-fun e!868053 () Bool)

(assert (=> d!162541 (=> res!1065792 e!868053)))

(assert (=> d!162541 (= res!1065792 (or (is-Nil!36478 l!1292) (is-Nil!36478 (t!51215 l!1292))))))

(assert (=> d!162541 (= (isStrictlySorted!972 l!1292) e!868053)))

(declare-fun b!1558194 () Bool)

(declare-fun e!868054 () Bool)

(assert (=> b!1558194 (= e!868053 e!868054)))

(declare-fun res!1065793 () Bool)

(assert (=> b!1558194 (=> (not res!1065793) (not e!868054))))

(assert (=> b!1558194 (= res!1065793 (bvslt (_1!12569 (h!37924 l!1292)) (_1!12569 (h!37924 (t!51215 l!1292)))))))

(declare-fun b!1558195 () Bool)

(assert (=> b!1558195 (= e!868054 (isStrictlySorted!972 (t!51215 l!1292)))))

(assert (= (and d!162541 (not res!1065792)) b!1558194))

(assert (= (and b!1558194 res!1065793) b!1558195))

(assert (=> b!1558195 m!1434949))

(assert (=> start!133238 d!162541))

(declare-fun d!162549 () Bool)

(declare-fun res!1065794 () Bool)

(declare-fun e!868055 () Bool)

(assert (=> d!162549 (=> res!1065794 e!868055)))

(assert (=> d!162549 (= res!1065794 (or (is-Nil!36478 (t!51215 l!1292)) (is-Nil!36478 (t!51215 (t!51215 l!1292)))))))

(assert (=> d!162549 (= (isStrictlySorted!972 (t!51215 l!1292)) e!868055)))

(declare-fun b!1558196 () Bool)

(declare-fun e!868056 () Bool)

(assert (=> b!1558196 (= e!868055 e!868056)))

(declare-fun res!1065795 () Bool)

(assert (=> b!1558196 (=> (not res!1065795) (not e!868056))))

(assert (=> b!1558196 (= res!1065795 (bvslt (_1!12569 (h!37924 (t!51215 l!1292))) (_1!12569 (h!37924 (t!51215 (t!51215 l!1292))))))))

(declare-fun b!1558197 () Bool)

(assert (=> b!1558197 (= e!868056 (isStrictlySorted!972 (t!51215 (t!51215 l!1292))))))

(assert (= (and d!162549 (not res!1065794)) b!1558196))

(assert (= (and b!1558196 res!1065795) b!1558197))

(declare-fun m!1434959 () Bool)

(assert (=> b!1558197 m!1434959))

(assert (=> b!1558156 d!162549))

(declare-fun d!162551 () Bool)

(declare-fun res!1065796 () Bool)

(declare-fun e!868057 () Bool)

(assert (=> d!162551 (=> res!1065796 e!868057)))

(assert (=> d!162551 (= res!1065796 (and (is-Cons!36477 l!1292) (= (_1!12569 (h!37924 l!1292)) otherKey!62)))))

(assert (=> d!162551 (= (containsKey!836 l!1292 otherKey!62) e!868057)))

(declare-fun b!1558198 () Bool)

(declare-fun e!868058 () Bool)

(assert (=> b!1558198 (= e!868057 e!868058)))

(declare-fun res!1065797 () Bool)

(assert (=> b!1558198 (=> (not res!1065797) (not e!868058))))

(assert (=> b!1558198 (= res!1065797 (and (or (not (is-Cons!36477 l!1292)) (bvsle (_1!12569 (h!37924 l!1292)) otherKey!62)) (is-Cons!36477 l!1292) (bvslt (_1!12569 (h!37924 l!1292)) otherKey!62)))))

(declare-fun b!1558199 () Bool)

(assert (=> b!1558199 (= e!868058 (containsKey!836 (t!51215 l!1292) otherKey!62))))

(assert (= (and d!162551 (not res!1065796)) b!1558198))

(assert (= (and b!1558198 res!1065797) b!1558199))

