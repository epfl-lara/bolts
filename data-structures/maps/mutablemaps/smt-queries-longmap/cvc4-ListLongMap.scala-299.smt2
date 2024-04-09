; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!5204 () Bool)

(assert start!5204)

(declare-fun res!22891 () Bool)

(declare-fun e!24096 () Bool)

(assert (=> start!5204 (=> (not res!22891) (not e!24096))))

(declare-datatypes ((B!786 0))(
  ( (B!787 (val!893 Int)) )
))
(declare-fun b!99 () B!786)

(declare-datatypes ((tuple2!1450 0))(
  ( (tuple2!1451 (_1!735 (_ BitVec 64)) (_2!735 B!786)) )
))
(declare-datatypes ((List!1019 0))(
  ( (Nil!1016) (Cons!1015 (h!1583 tuple2!1450) (t!3860 List!1019)) )
))
(declare-datatypes ((ListLongMap!1031 0))(
  ( (ListLongMap!1032 (toList!531 List!1019)) )
))
(declare-fun lm!264 () ListLongMap!1031)

(declare-fun a!526 () (_ BitVec 64))

(declare-fun contains!479 (List!1019 tuple2!1450) Bool)

(assert (=> start!5204 (= res!22891 (contains!479 (toList!531 lm!264) (tuple2!1451 a!526 b!99)))))

(assert (=> start!5204 e!24096))

(declare-fun e!24095 () Bool)

(declare-fun inv!1693 (ListLongMap!1031) Bool)

(assert (=> start!5204 (and (inv!1693 lm!264) e!24095)))

(assert (=> start!5204 true))

(declare-fun tp_is_empty!1709 () Bool)

(assert (=> start!5204 tp_is_empty!1709))

(declare-fun b!37955 () Bool)

(declare-fun isStrictlySorted!195 (List!1019) Bool)

(assert (=> b!37955 (= e!24096 (not (isStrictlySorted!195 (toList!531 lm!264))))))

(declare-fun containsKey!61 (List!1019 (_ BitVec 64)) Bool)

(assert (=> b!37955 (containsKey!61 (toList!531 lm!264) a!526)))

(declare-datatypes ((Unit!874 0))(
  ( (Unit!875) )
))
(declare-fun lt!13954 () Unit!874)

(declare-fun lemmaContainsTupleThenContainsKey!6 (List!1019 (_ BitVec 64) B!786) Unit!874)

(assert (=> b!37955 (= lt!13954 (lemmaContainsTupleThenContainsKey!6 (toList!531 lm!264) a!526 b!99))))

(declare-fun b!37956 () Bool)

(declare-fun tp!5630 () Bool)

(assert (=> b!37956 (= e!24095 tp!5630)))

(assert (= (and start!5204 res!22891) b!37955))

(assert (= start!5204 b!37956))

(declare-fun m!30679 () Bool)

(assert (=> start!5204 m!30679))

(declare-fun m!30681 () Bool)

(assert (=> start!5204 m!30681))

(declare-fun m!30683 () Bool)

(assert (=> b!37955 m!30683))

(declare-fun m!30685 () Bool)

(assert (=> b!37955 m!30685))

(declare-fun m!30687 () Bool)

(assert (=> b!37955 m!30687))

(push 1)

(assert (not start!5204))

(assert (not b!37955))

(assert (not b!37956))

(assert tp_is_empty!1709)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!6151 () Bool)

(declare-fun lt!13962 () Bool)

(declare-fun content!24 (List!1019) (Set tuple2!1450))

(assert (=> d!6151 (= lt!13962 (member (tuple2!1451 a!526 b!99) (content!24 (toList!531 lm!264))))))

(declare-fun e!24112 () Bool)

(assert (=> d!6151 (= lt!13962 e!24112)))

(declare-fun res!22906 () Bool)

(assert (=> d!6151 (=> (not res!22906) (not e!24112))))

(assert (=> d!6151 (= res!22906 (is-Cons!1015 (toList!531 lm!264)))))

(assert (=> d!6151 (= (contains!479 (toList!531 lm!264) (tuple2!1451 a!526 b!99)) lt!13962)))

(declare-fun b!37971 () Bool)

(declare-fun e!24111 () Bool)

(assert (=> b!37971 (= e!24112 e!24111)))

(declare-fun res!22907 () Bool)

(assert (=> b!37971 (=> res!22907 e!24111)))

(assert (=> b!37971 (= res!22907 (= (h!1583 (toList!531 lm!264)) (tuple2!1451 a!526 b!99)))))

(declare-fun b!37972 () Bool)

(assert (=> b!37972 (= e!24111 (contains!479 (t!3860 (toList!531 lm!264)) (tuple2!1451 a!526 b!99)))))

(assert (= (and d!6151 res!22906) b!37971))

(assert (= (and b!37971 (not res!22907)) b!37972))

(declare-fun m!30695 () Bool)

(assert (=> d!6151 m!30695))

(declare-fun m!30697 () Bool)

(assert (=> d!6151 m!30697))

(declare-fun m!30701 () Bool)

(assert (=> b!37972 m!30701))

(assert (=> start!5204 d!6151))

(declare-fun d!6159 () Bool)

(assert (=> d!6159 (= (inv!1693 lm!264) (isStrictlySorted!195 (toList!531 lm!264)))))

(declare-fun bs!1511 () Bool)

(assert (= bs!1511 d!6159))

(assert (=> bs!1511 m!30683))

(assert (=> start!5204 d!6159))

(declare-fun d!6165 () Bool)

(declare-fun res!22930 () Bool)

(declare-fun e!24135 () Bool)

(assert (=> d!6165 (=> res!22930 e!24135)))

(assert (=> d!6165 (= res!22930 (or (is-Nil!1016 (toList!531 lm!264)) (is-Nil!1016 (t!3860 (toList!531 lm!264)))))))

(assert (=> d!6165 (= (isStrictlySorted!195 (toList!531 lm!264)) e!24135)))

(declare-fun b!37995 () Bool)

(declare-fun e!24136 () Bool)

(assert (=> b!37995 (= e!24135 e!24136)))

(declare-fun res!22931 () Bool)

(assert (=> b!37995 (=> (not res!22931) (not e!24136))))

(assert (=> b!37995 (= res!22931 (bvslt (_1!735 (h!1583 (toList!531 lm!264))) (_1!735 (h!1583 (t!3860 (toList!531 lm!264))))))))

(declare-fun b!37996 () Bool)

(assert (=> b!37996 (= e!24136 (isStrictlySorted!195 (t!3860 (toList!531 lm!264))))))

(assert (= (and d!6165 (not res!22930)) b!37995))

(assert (= (and b!37995 res!22931) b!37996))

(declare-fun m!30711 () Bool)

(assert (=> b!37996 m!30711))

(assert (=> b!37955 d!6165))

(declare-fun d!6171 () Bool)

(declare-fun res!22945 () Bool)

(declare-fun e!24152 () Bool)

(assert (=> d!6171 (=> res!22945 e!24152)))

(assert (=> d!6171 (= res!22945 (and (is-Cons!1015 (toList!531 lm!264)) (= (_1!735 (h!1583 (toList!531 lm!264))) a!526)))))

(assert (=> d!6171 (= (containsKey!61 (toList!531 lm!264) a!526) e!24152)))

(declare-fun b!38014 () Bool)

(declare-fun e!24154 () Bool)

(assert (=> b!38014 (= e!24152 e!24154)))

(declare-fun res!22947 () Bool)

(assert (=> b!38014 (=> (not res!22947) (not e!24154))))

(assert (=> b!38014 (= res!22947 (and (or (not (is-Cons!1015 (toList!531 lm!264))) (bvsle (_1!735 (h!1583 (toList!531 lm!264))) a!526)) (is-Cons!1015 (toList!531 lm!264)) (bvslt (_1!735 (h!1583 (toList!531 lm!264))) a!526)))))

(declare-fun b!38016 () Bool)

(assert (=> b!38016 (= e!24154 (containsKey!61 (t!3860 (toList!531 lm!264)) a!526))))

(assert (= (and d!6171 (not res!22945)) b!38014))

(assert (= (and b!38014 res!22947) b!38016))

(declare-fun m!30718 () Bool)

(assert (=> b!38016 m!30718))

(assert (=> b!37955 d!6171))

(declare-fun d!6176 () Bool)

(assert (=> d!6176 (containsKey!61 (toList!531 lm!264) a!526)))

(declare-fun lt!13971 () Unit!874)

(declare-fun choose!243 (List!1019 (_ BitVec 64) B!786) Unit!874)

(assert (=> d!6176 (= lt!13971 (choose!243 (toList!531 lm!264) a!526 b!99))))

(declare-fun e!24161 () Bool)

(assert (=> d!6176 e!24161))

(declare-fun res!22953 () Bool)

(assert (=> d!6176 (=> (not res!22953) (not e!24161))))

(assert (=> d!6176 (= res!22953 (isStrictlySorted!195 (toList!531 lm!264)))))

(assert (=> d!6176 (= (lemmaContainsTupleThenContainsKey!6 (toList!531 lm!264) a!526 b!99) lt!13971)))

(declare-fun b!38023 () Bool)

(assert (=> b!38023 (= e!24161 (contains!479 (toList!531 lm!264) (tuple2!1451 a!526 b!99)))))

