; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11452 () Bool)

(assert start!11452)

(declare-fun b!111091 () Bool)

(assert (=> b!111091 true))

(declare-fun e!62109 () Bool)

(declare-datatypes ((B!611 0))(
  ( (B!612 (val!625 Int)) )
))
(declare-datatypes ((List!1796 0))(
  ( (Nil!1790) (Cons!1790 (h!7187 B!611) (t!22273 List!1796)) )
))
(declare-fun l2!925 () List!1796)

(declare-fun lambda!2959 () Int)

(declare-fun forall!338 (List!1796 Int) Bool)

(assert (=> b!111091 (= e!62109 (not (forall!338 l2!925 lambda!2959)))))

(declare-fun b!111092 () Bool)

(declare-fun e!62108 () Bool)

(declare-fun tp_is_empty!931 () Bool)

(declare-fun tp!59880 () Bool)

(assert (=> b!111092 (= e!62108 (and tp_is_empty!931 tp!59880))))

(declare-fun b!111093 () Bool)

(declare-fun e!62107 () Bool)

(declare-fun tp!59881 () Bool)

(assert (=> b!111093 (= e!62107 (and tp_is_empty!931 tp!59881))))

(declare-fun res!53617 () Bool)

(assert (=> start!11452 (=> (not res!53617) (not e!62109))))

(declare-fun l1!948 () List!1796)

(declare-fun disjoint!1 (List!1796 List!1796) Bool)

(assert (=> start!11452 (= res!53617 (disjoint!1 l1!948 l2!925))))

(assert (=> start!11452 e!62109))

(assert (=> start!11452 e!62108))

(assert (=> start!11452 e!62107))

(assert (=> start!11452 tp_is_empty!931))

(declare-fun b!111090 () Bool)

(declare-fun res!53616 () Bool)

(assert (=> b!111090 (=> (not res!53616) (not e!62109))))

(declare-fun e2!30 () B!611)

(declare-fun contains!292 (List!1796 B!611) Bool)

(assert (=> b!111090 (= res!53616 (contains!292 l2!925 e2!30))))

(assert (= (and start!11452 res!53617) b!111090))

(assert (= (and b!111090 res!53616) b!111091))

(assert (= (and start!11452 (is-Cons!1790 l1!948)) b!111092))

(assert (= (and start!11452 (is-Cons!1790 l2!925)) b!111093))

(declare-fun m!101484 () Bool)

(assert (=> b!111091 m!101484))

(declare-fun m!101486 () Bool)

(assert (=> start!11452 m!101486))

(declare-fun m!101488 () Bool)

(assert (=> b!111090 m!101488))

(push 1)

(assert (not start!11452))

(assert tp_is_empty!931)

(assert (not b!111090))

(assert (not b!111093))

(assert (not b!111092))

(assert (not b!111091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27937 () Bool)

(declare-fun lt!32514 () Bool)

(declare-fun content!204 (List!1796) (Set B!611))

(assert (=> d!27937 (= lt!32514 (set.member e2!30 (content!204 l2!925)))))

(declare-fun e!62123 () Bool)

(assert (=> d!27937 (= lt!32514 e!62123)))

(declare-fun res!53628 () Bool)

(assert (=> d!27937 (=> (not res!53628) (not e!62123))))

(assert (=> d!27937 (= res!53628 (is-Cons!1790 l2!925))))

(assert (=> d!27937 (= (contains!292 l2!925 e2!30) lt!32514)))

(declare-fun b!111114 () Bool)

(declare-fun e!62124 () Bool)

(assert (=> b!111114 (= e!62123 e!62124)))

(declare-fun res!53629 () Bool)

(assert (=> b!111114 (=> res!53629 e!62124)))

(assert (=> b!111114 (= res!53629 (= (h!7187 l2!925) e2!30))))

(declare-fun b!111115 () Bool)

(assert (=> b!111115 (= e!62124 (contains!292 (t!22273 l2!925) e2!30))))

(assert (= (and d!27937 res!53628) b!111114))

(assert (= (and b!111114 (not res!53629)) b!111115))

(declare-fun m!101496 () Bool)

(assert (=> d!27937 m!101496))

(declare-fun m!101498 () Bool)

(assert (=> d!27937 m!101498))

(declare-fun m!101500 () Bool)

(assert (=> b!111115 m!101500))

(assert (=> b!111090 d!27937))

(declare-fun bs!11366 () Bool)

(declare-fun d!27939 () Bool)

(assert (= bs!11366 (and d!27939 b!111091)))

(declare-fun lambda!2967 () Int)

(assert (=> bs!11366 (= (= l2!925 l1!948) (= lambda!2967 lambda!2959))))

(assert (=> d!27939 true))

(declare-fun bs!11367 () Bool)

(declare-fun b!111118 () Bool)

(assert (= bs!11367 (and b!111118 b!111091)))

(declare-fun lambda!2968 () Int)

(assert (=> bs!11367 (= lambda!2968 lambda!2959)))

(declare-fun bs!11368 () Bool)

(assert (= bs!11368 (and b!111118 d!27939)))

(assert (=> bs!11368 (= (= l1!948 l2!925) (= lambda!2968 lambda!2967))))

(assert (=> b!111118 true))

(declare-fun res!53632 () Bool)

(declare-fun e!62127 () Bool)

(assert (=> d!27939 (=> (not res!53632) (not e!62127))))

(assert (=> d!27939 (= res!53632 (forall!338 l1!948 lambda!2967))))

(assert (=> d!27939 (= (disjoint!1 l1!948 l2!925) e!62127)))

(assert (=> b!111118 (= e!62127 (forall!338 l2!925 lambda!2968))))

(assert (= (and d!27939 res!53632) b!111118))

(declare-fun m!101502 () Bool)

(assert (=> d!27939 m!101502))

(declare-fun m!101504 () Bool)

(assert (=> b!111118 m!101504))

(assert (=> start!11452 d!27939))

(declare-fun d!27941 () Bool)

(declare-fun res!53637 () Bool)

(declare-fun e!62132 () Bool)

(assert (=> d!27941 (=> res!53637 e!62132)))

(assert (=> d!27941 (= res!53637 (is-Nil!1790 l2!925))))

(assert (=> d!27941 (= (forall!338 l2!925 lambda!2959) e!62132)))

(declare-fun b!111123 () Bool)

(declare-fun e!62133 () Bool)

(assert (=> b!111123 (= e!62132 e!62133)))

(declare-fun res!53638 () Bool)

(assert (=> b!111123 (=> (not res!53638) (not e!62133))))

(declare-fun dynLambda!742 (Int B!611) Bool)

(assert (=> b!111123 (= res!53638 (dynLambda!742 lambda!2959 (h!7187 l2!925)))))

(declare-fun b!111124 () Bool)

(assert (=> b!111124 (= e!62133 (forall!338 (t!22273 l2!925) lambda!2959))))

(assert (= (and d!27941 (not res!53637)) b!111123))

(assert (= (and b!111123 res!53638) b!111124))

(declare-fun b_lambda!1685 () Bool)

(assert (=> (not b_lambda!1685) (not b!111123)))

(declare-fun m!101506 () Bool)

(assert (=> b!111123 m!101506))

(declare-fun m!101508 () Bool)

(assert (=> b!111124 m!101508))

(assert (=> b!111091 d!27941))

(declare-fun b!111129 () Bool)

(declare-fun e!62136 () Bool)

(declare-fun tp!59890 () Bool)

(assert (=> b!111129 (= e!62136 (and tp_is_empty!931 tp!59890))))

(assert (=> b!111093 (= tp!59881 e!62136)))

(assert (= (and b!111093 (is-Cons!1790 (t!22273 l2!925))) b!111129))

(declare-fun b!111130 () Bool)

(declare-fun e!62137 () Bool)

(declare-fun tp!59891 () Bool)

(assert (=> b!111130 (= e!62137 (and tp_is_empty!931 tp!59891))))

(assert (=> b!111092 (= tp!59880 e!62137)))

(assert (= (and b!111092 (is-Cons!1790 (t!22273 l1!948))) b!111130))

(declare-fun b_lambda!1687 () Bool)

(assert (= b_lambda!1685 (or b!111091 b_lambda!1687)))

(declare-fun bs!11369 () Bool)

(declare-fun d!27945 () Bool)

(assert (= bs!11369 (and d!27945 b!111091)))

(assert (=> bs!11369 (= (dynLambda!742 lambda!2959 (h!7187 l2!925)) (not (contains!292 l1!948 (h!7187 l2!925))))))

(declare-fun m!101510 () Bool)

(assert (=> bs!11369 m!101510))

(assert (=> b!111123 d!27945))

(push 1)

(assert (not b!111115))

(assert tp_is_empty!931)

(assert (not d!27939))

(assert (not b_lambda!1687))

(assert (not b!111129))

(assert (not b!111124))

(assert (not b!111118))

(assert (not d!27937))

(assert (not b!111130))

(assert (not bs!11369))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

