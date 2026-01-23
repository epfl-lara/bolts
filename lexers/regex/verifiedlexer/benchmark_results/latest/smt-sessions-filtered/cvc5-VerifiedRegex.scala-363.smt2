; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!11468 () Bool)

(assert start!11468)

(declare-fun b!111161 () Bool)

(assert (=> b!111161 true))

(declare-fun b!111163 () Bool)

(declare-fun e!62163 () Bool)

(declare-fun tp_is_empty!935 () Bool)

(declare-fun tp!59901 () Bool)

(assert (=> b!111163 (= e!62163 (and tp_is_empty!935 tp!59901))))

(declare-fun e!62165 () Bool)

(declare-datatypes ((B!615 0))(
  ( (B!616 (val!627 Int)) )
))
(declare-datatypes ((List!1798 0))(
  ( (Nil!1792) (Cons!1792 (h!7189 B!615) (t!22275 List!1798)) )
))
(declare-fun l1!948 () List!1798)

(declare-fun e2!30 () B!615)

(declare-fun contains!294 (List!1798 B!615) Bool)

(assert (=> b!111161 (= e!62165 (contains!294 l1!948 e2!30))))

(declare-fun l2!925 () List!1798)

(declare-fun lambda!2977 () Int)

(declare-datatypes ((Unit!1276 0))(
  ( (Unit!1277) )
))
(declare-fun lt!32520 () Unit!1276)

(declare-fun forallContained!35 (List!1798 Int B!615) Unit!1276)

(assert (=> b!111161 (= lt!32520 (forallContained!35 l2!925 lambda!2977 e2!30))))

(declare-fun b!111160 () Bool)

(declare-fun res!53659 () Bool)

(assert (=> b!111160 (=> (not res!53659) (not e!62165))))

(assert (=> b!111160 (= res!53659 (contains!294 l2!925 e2!30))))

(declare-fun b!111162 () Bool)

(declare-fun e!62164 () Bool)

(declare-fun tp!59900 () Bool)

(assert (=> b!111162 (= e!62164 (and tp_is_empty!935 tp!59900))))

(declare-fun res!53658 () Bool)

(assert (=> start!11468 (=> (not res!53658) (not e!62165))))

(declare-fun disjoint!3 (List!1798 List!1798) Bool)

(assert (=> start!11468 (= res!53658 (disjoint!3 l1!948 l2!925))))

(assert (=> start!11468 e!62165))

(assert (=> start!11468 e!62164))

(assert (=> start!11468 e!62163))

(assert (=> start!11468 tp_is_empty!935))

(assert (= (and start!11468 res!53658) b!111160))

(assert (= (and b!111160 res!53659) b!111161))

(assert (= (and start!11468 (is-Cons!1792 l1!948)) b!111162))

(assert (= (and start!11468 (is-Cons!1792 l2!925)) b!111163))

(declare-fun m!101526 () Bool)

(assert (=> b!111161 m!101526))

(declare-fun m!101528 () Bool)

(assert (=> b!111161 m!101528))

(declare-fun m!101530 () Bool)

(assert (=> b!111160 m!101530))

(declare-fun m!101532 () Bool)

(assert (=> start!11468 m!101532))

(push 1)

(assert (not b!111160))

(assert (not b!111161))

(assert (not start!11468))

(assert (not b!111163))

(assert (not b!111162))

(assert tp_is_empty!935)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!27952 () Bool)

(declare-fun lt!32526 () Bool)

(declare-fun content!205 (List!1798) (Set B!615))

(assert (=> d!27952 (= lt!32526 (set.member e2!30 (content!205 l2!925)))))

(declare-fun e!62179 () Bool)

(assert (=> d!27952 (= lt!32526 e!62179)))

(declare-fun res!53670 () Bool)

(assert (=> d!27952 (=> (not res!53670) (not e!62179))))

(assert (=> d!27952 (= res!53670 (is-Cons!1792 l2!925))))

(assert (=> d!27952 (= (contains!294 l2!925 e2!30) lt!32526)))

(declare-fun b!111184 () Bool)

(declare-fun e!62180 () Bool)

(assert (=> b!111184 (= e!62179 e!62180)))

(declare-fun res!53671 () Bool)

(assert (=> b!111184 (=> res!53671 e!62180)))

(assert (=> b!111184 (= res!53671 (= (h!7189 l2!925) e2!30))))

(declare-fun b!111185 () Bool)

(assert (=> b!111185 (= e!62180 (contains!294 (t!22275 l2!925) e2!30))))

(assert (= (and d!27952 res!53670) b!111184))

(assert (= (and b!111184 (not res!53671)) b!111185))

(declare-fun m!101542 () Bool)

(assert (=> d!27952 m!101542))

(declare-fun m!101544 () Bool)

(assert (=> d!27952 m!101544))

(declare-fun m!101546 () Bool)

(assert (=> b!111185 m!101546))

(assert (=> b!111160 d!27952))

(declare-fun d!27954 () Bool)

(declare-fun lt!32527 () Bool)

(assert (=> d!27954 (= lt!32527 (set.member e2!30 (content!205 l1!948)))))

(declare-fun e!62181 () Bool)

(assert (=> d!27954 (= lt!32527 e!62181)))

(declare-fun res!53672 () Bool)

(assert (=> d!27954 (=> (not res!53672) (not e!62181))))

(assert (=> d!27954 (= res!53672 (is-Cons!1792 l1!948))))

(assert (=> d!27954 (= (contains!294 l1!948 e2!30) lt!32527)))

(declare-fun b!111186 () Bool)

(declare-fun e!62182 () Bool)

(assert (=> b!111186 (= e!62181 e!62182)))

(declare-fun res!53673 () Bool)

(assert (=> b!111186 (=> res!53673 e!62182)))

(assert (=> b!111186 (= res!53673 (= (h!7189 l1!948) e2!30))))

(declare-fun b!111187 () Bool)

(assert (=> b!111187 (= e!62182 (contains!294 (t!22275 l1!948) e2!30))))

(assert (= (and d!27954 res!53672) b!111186))

(assert (= (and b!111186 (not res!53673)) b!111187))

(declare-fun m!101548 () Bool)

(assert (=> d!27954 m!101548))

(declare-fun m!101550 () Bool)

(assert (=> d!27954 m!101550))

(declare-fun m!101552 () Bool)

(assert (=> b!111187 m!101552))

(assert (=> b!111161 d!27954))

(declare-fun d!27956 () Bool)

(declare-fun dynLambda!743 (Int B!615) Bool)

(assert (=> d!27956 (dynLambda!743 lambda!2977 e2!30)))

(declare-fun lt!32530 () Unit!1276)

(declare-fun choose!1497 (List!1798 Int B!615) Unit!1276)

(assert (=> d!27956 (= lt!32530 (choose!1497 l2!925 lambda!2977 e2!30))))

(declare-fun e!62185 () Bool)

(assert (=> d!27956 e!62185))

(declare-fun res!53676 () Bool)

(assert (=> d!27956 (=> (not res!53676) (not e!62185))))

(declare-fun forall!340 (List!1798 Int) Bool)

(assert (=> d!27956 (= res!53676 (forall!340 l2!925 lambda!2977))))

(assert (=> d!27956 (= (forallContained!35 l2!925 lambda!2977 e2!30) lt!32530)))

(declare-fun b!111190 () Bool)

(assert (=> b!111190 (= e!62185 (contains!294 l2!925 e2!30))))

(assert (= (and d!27956 res!53676) b!111190))

(declare-fun b_lambda!1693 () Bool)

(assert (=> (not b_lambda!1693) (not d!27956)))

(declare-fun m!101554 () Bool)

(assert (=> d!27956 m!101554))

(declare-fun m!101556 () Bool)

(assert (=> d!27956 m!101556))

(declare-fun m!101558 () Bool)

(assert (=> d!27956 m!101558))

(assert (=> b!111190 m!101530))

(assert (=> b!111161 d!27956))

(declare-fun bs!11375 () Bool)

(declare-fun d!27958 () Bool)

(assert (= bs!11375 (and d!27958 b!111161)))

(declare-fun lambda!2985 () Int)

(assert (=> bs!11375 (= (= l2!925 l1!948) (= lambda!2985 lambda!2977))))

(assert (=> d!27958 true))

(declare-fun bs!11376 () Bool)

(declare-fun b!111193 () Bool)

(assert (= bs!11376 (and b!111193 b!111161)))

(declare-fun lambda!2986 () Int)

(assert (=> bs!11376 (= lambda!2986 lambda!2977)))

(declare-fun bs!11377 () Bool)

(assert (= bs!11377 (and b!111193 d!27958)))

(assert (=> bs!11377 (= (= l1!948 l2!925) (= lambda!2986 lambda!2985))))

(assert (=> b!111193 true))

(declare-fun res!53679 () Bool)

(declare-fun e!62188 () Bool)

(assert (=> d!27958 (=> (not res!53679) (not e!62188))))

(assert (=> d!27958 (= res!53679 (forall!340 l1!948 lambda!2985))))

(assert (=> d!27958 (= (disjoint!3 l1!948 l2!925) e!62188)))

(assert (=> b!111193 (= e!62188 (forall!340 l2!925 lambda!2986))))

(assert (= (and d!27958 res!53679) b!111193))

(declare-fun m!101560 () Bool)

(assert (=> d!27958 m!101560))

(declare-fun m!101562 () Bool)

(assert (=> b!111193 m!101562))

(assert (=> start!11468 d!27958))

(declare-fun b!111198 () Bool)

(declare-fun e!62191 () Bool)

(declare-fun tp!59910 () Bool)

(assert (=> b!111198 (= e!62191 (and tp_is_empty!935 tp!59910))))

(assert (=> b!111162 (= tp!59900 e!62191)))

(assert (= (and b!111162 (is-Cons!1792 (t!22275 l1!948))) b!111198))

(declare-fun b!111199 () Bool)

(declare-fun e!62192 () Bool)

(declare-fun tp!59911 () Bool)

(assert (=> b!111199 (= e!62192 (and tp_is_empty!935 tp!59911))))

(assert (=> b!111163 (= tp!59901 e!62192)))

(assert (= (and b!111163 (is-Cons!1792 (t!22275 l2!925))) b!111199))

(declare-fun b_lambda!1695 () Bool)

(assert (= b_lambda!1693 (or b!111161 b_lambda!1695)))

(declare-fun bs!11378 () Bool)

(declare-fun d!27962 () Bool)

(assert (= bs!11378 (and d!27962 b!111161)))

(assert (=> bs!11378 (= (dynLambda!743 lambda!2977 e2!30) (not (contains!294 l1!948 e2!30)))))

(assert (=> bs!11378 m!101526))

(assert (=> d!27956 d!27962))

(push 1)

(assert (not bs!11378))

(assert (not b!111187))

(assert (not b!111193))

(assert (not d!27954))

(assert (not b!111185))

(assert (not b_lambda!1695))

(assert (not b!111190))

(assert (not d!27956))

(assert tp_is_empty!935)

(assert (not d!27952))

(assert (not b!111198))

(assert (not d!27958))

(assert (not b!111199))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

