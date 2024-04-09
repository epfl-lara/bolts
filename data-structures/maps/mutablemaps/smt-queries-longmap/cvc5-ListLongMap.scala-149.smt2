; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2884 () Bool)

(assert start!2884)

(declare-fun b_free!571 () Bool)

(declare-fun b_next!571 () Bool)

(assert (=> start!2884 (= b_free!571 (not b_next!571))))

(declare-fun tp!2887 () Bool)

(declare-fun b_and!1191 () Bool)

(assert (=> start!2884 (= tp!2887 b_and!1191)))

(declare-fun res!12304 () Bool)

(declare-fun e!10255 () Bool)

(assert (=> start!2884 (=> (not res!12304) (not e!10255))))

(declare-datatypes ((B!692 0))(
  ( (B!693 (val!444 Int)) )
))
(declare-datatypes ((tuple2!670 0))(
  ( (tuple2!671 (_1!335 (_ BitVec 64)) (_2!335 B!692)) )
))
(declare-datatypes ((List!524 0))(
  ( (Nil!521) (Cons!520 (h!1086 tuple2!670) (t!3139 List!524)) )
))
(declare-datatypes ((ListLongMap!501 0))(
  ( (ListLongMap!502 (toList!266 List!524)) )
))
(declare-fun lm!221 () ListLongMap!501)

(declare-fun p!191 () Int)

(declare-fun forall!146 (List!524 Int) Bool)

(assert (=> start!2884 (= res!12304 (forall!146 (toList!266 lm!221) p!191))))

(assert (=> start!2884 e!10255))

(declare-fun e!10254 () Bool)

(declare-fun inv!896 (ListLongMap!501) Bool)

(assert (=> start!2884 (and (inv!896 lm!221) e!10254)))

(assert (=> start!2884 tp!2887))

(assert (=> start!2884 true))

(declare-fun b!16575 () Bool)

(declare-fun res!12303 () Bool)

(assert (=> b!16575 (=> (not res!12303) (not e!10255))))

(declare-fun isEmpty!165 (ListLongMap!501) Bool)

(assert (=> b!16575 (= res!12303 (isEmpty!165 lm!221))))

(declare-fun a!507 () (_ BitVec 64))

(declare-fun b!16576 () Bool)

(declare-fun -!33 (ListLongMap!501 (_ BitVec 64)) ListLongMap!501)

(assert (=> b!16576 (= e!10255 (not (forall!146 (toList!266 (-!33 lm!221 a!507)) p!191)))))

(declare-fun b!16577 () Bool)

(declare-fun tp!2888 () Bool)

(assert (=> b!16577 (= e!10254 tp!2888)))

(assert (= (and start!2884 res!12304) b!16575))

(assert (= (and b!16575 res!12303) b!16576))

(assert (= start!2884 b!16577))

(declare-fun m!11671 () Bool)

(assert (=> start!2884 m!11671))

(declare-fun m!11673 () Bool)

(assert (=> start!2884 m!11673))

(declare-fun m!11675 () Bool)

(assert (=> b!16575 m!11675))

(declare-fun m!11677 () Bool)

(assert (=> b!16576 m!11677))

(declare-fun m!11679 () Bool)

(assert (=> b!16576 m!11679))

(push 1)

(assert (not b!16577))

(assert b_and!1191)

(assert (not b!16576))

(assert (not b_next!571))

(assert (not start!2884))

(assert (not b!16575))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1191)

(assert (not b_next!571))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3297 () Bool)

(declare-fun res!12331 () Bool)

(declare-fun e!10282 () Bool)

(assert (=> d!3297 (=> res!12331 e!10282)))

(assert (=> d!3297 (= res!12331 (is-Nil!521 (toList!266 (-!33 lm!221 a!507))))))

(assert (=> d!3297 (= (forall!146 (toList!266 (-!33 lm!221 a!507)) p!191) e!10282)))

(declare-fun b!16610 () Bool)

(declare-fun e!10283 () Bool)

(assert (=> b!16610 (= e!10282 e!10283)))

(declare-fun res!12332 () Bool)

(assert (=> b!16610 (=> (not res!12332) (not e!10283))))

(declare-fun dynLambda!131 (Int tuple2!670) Bool)

(assert (=> b!16610 (= res!12332 (dynLambda!131 p!191 (h!1086 (toList!266 (-!33 lm!221 a!507)))))))

(declare-fun b!16611 () Bool)

(assert (=> b!16611 (= e!10283 (forall!146 (t!3139 (toList!266 (-!33 lm!221 a!507))) p!191))))

(assert (= (and d!3297 (not res!12331)) b!16610))

(assert (= (and b!16610 res!12332) b!16611))

(declare-fun b_lambda!1393 () Bool)

(assert (=> (not b_lambda!1393) (not b!16610)))

(declare-fun t!3145 () Bool)

(declare-fun tb!605 () Bool)

(assert (=> (and start!2884 (= p!191 p!191) t!3145) tb!605))

(declare-fun result!977 () Bool)

(assert (=> tb!605 (= result!977 true)))

(assert (=> b!16610 t!3145))

(declare-fun b_and!1199 () Bool)

(assert (= b_and!1191 (and (=> t!3145 result!977) b_and!1199)))

(declare-fun m!11703 () Bool)

(assert (=> b!16610 m!11703))

(declare-fun m!11709 () Bool)

(assert (=> b!16611 m!11709))

(assert (=> b!16576 d!3297))

(declare-fun d!3303 () Bool)

(declare-fun lt!4086 () ListLongMap!501)

(declare-fun contains!198 (ListLongMap!501 (_ BitVec 64)) Bool)

(assert (=> d!3303 (not (contains!198 lt!4086 a!507))))

(declare-fun removeStrictlySorted!21 (List!524 (_ BitVec 64)) List!524)

(assert (=> d!3303 (= lt!4086 (ListLongMap!502 (removeStrictlySorted!21 (toList!266 lm!221) a!507)))))

(assert (=> d!3303 (= (-!33 lm!221 a!507) lt!4086)))

(declare-fun bs!791 () Bool)

(assert (= bs!791 d!3303))

(declare-fun m!11723 () Bool)

(assert (=> bs!791 m!11723))

(declare-fun m!11725 () Bool)

(assert (=> bs!791 m!11725))

(assert (=> b!16576 d!3303))

(declare-fun d!3313 () Bool)

(declare-fun isEmpty!170 (List!524) Bool)

(assert (=> d!3313 (= (isEmpty!165 lm!221) (isEmpty!170 (toList!266 lm!221)))))

(declare-fun bs!794 () Bool)

(assert (= bs!794 d!3313))

(declare-fun m!11739 () Bool)

(assert (=> bs!794 m!11739))

(assert (=> b!16575 d!3313))

(declare-fun d!3321 () Bool)

(declare-fun res!12339 () Bool)

(declare-fun e!10292 () Bool)

(assert (=> d!3321 (=> res!12339 e!10292)))

(assert (=> d!3321 (= res!12339 (is-Nil!521 (toList!266 lm!221)))))

(assert (=> d!3321 (= (forall!146 (toList!266 lm!221) p!191) e!10292)))

(declare-fun b!16622 () Bool)

(declare-fun e!10293 () Bool)

(assert (=> b!16622 (= e!10292 e!10293)))

(declare-fun res!12340 () Bool)

(assert (=> b!16622 (=> (not res!12340) (not e!10293))))

(assert (=> b!16622 (= res!12340 (dynLambda!131 p!191 (h!1086 (toList!266 lm!221))))))

(declare-fun b!16623 () Bool)

(assert (=> b!16623 (= e!10293 (forall!146 (t!3139 (toList!266 lm!221)) p!191))))

(assert (= (and d!3321 (not res!12339)) b!16622))

(assert (= (and b!16622 res!12340) b!16623))

(declare-fun b_lambda!1401 () Bool)

(assert (=> (not b_lambda!1401) (not b!16622)))

(declare-fun t!3153 () Bool)

(declare-fun tb!613 () Bool)

(assert (=> (and start!2884 (= p!191 p!191) t!3153) tb!613))

(declare-fun result!989 () Bool)

(assert (=> tb!613 (= result!989 true)))

(assert (=> b!16622 t!3153))

(declare-fun b_and!1207 () Bool)

(assert (= b_and!1199 (and (=> t!3153 result!989) b_and!1207)))

(declare-fun m!11743 () Bool)

(assert (=> b!16622 m!11743))

(declare-fun m!11745 () Bool)

(assert (=> b!16623 m!11745))

(assert (=> start!2884 d!3321))

(declare-fun d!3323 () Bool)

(declare-fun isStrictlySorted!166 (List!524) Bool)

(assert (=> d!3323 (= (inv!896 lm!221) (isStrictlySorted!166 (toList!266 lm!221)))))

(declare-fun bs!796 () Bool)

(assert (= bs!796 d!3323))

(declare-fun m!11747 () Bool)

(assert (=> bs!796 m!11747))

(assert (=> start!2884 d!3323))

(declare-fun b!16634 () Bool)

(declare-fun e!10300 () Bool)

(declare-fun tp_is_empty!839 () Bool)

(declare-fun tp!2909 () Bool)

(assert (=> b!16634 (= e!10300 (and tp_is_empty!839 tp!2909))))

(assert (=> b!16577 (= tp!2888 e!10300)))

(assert (= (and b!16577 (is-Cons!520 (toList!266 lm!221))) b!16634))

(declare-fun b_lambda!1411 () Bool)

(assert (= b_lambda!1401 (or (and start!2884 b_free!571) b_lambda!1411)))

(declare-fun b_lambda!1413 () Bool)

(assert (= b_lambda!1393 (or (and start!2884 b_free!571) b_lambda!1413)))

(push 1)

(assert (not b!16611))

(assert (not d!3323))

(assert (not b!16623))

(assert (not b!16634))

(assert b_and!1207)

(assert (not b_lambda!1413))

(assert (not b_lambda!1411))

(assert tp_is_empty!839)

(assert (not b_next!571))

(assert (not d!3313))

(assert (not d!3303))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1207)

(assert (not b_next!571))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3337 () Bool)

(declare-fun res!12353 () Bool)

(declare-fun e!10313 () Bool)

(assert (=> d!3337 (=> res!12353 e!10313)))

(assert (=> d!3337 (= res!12353 (is-Nil!521 (t!3139 (toList!266 lm!221))))))

(assert (=> d!3337 (= (forall!146 (t!3139 (toList!266 lm!221)) p!191) e!10313)))

(declare-fun b!16647 () Bool)

(declare-fun e!10314 () Bool)

(assert (=> b!16647 (= e!10313 e!10314)))

(declare-fun res!12354 () Bool)

(assert (=> b!16647 (=> (not res!12354) (not e!10314))))

(assert (=> b!16647 (= res!12354 (dynLambda!131 p!191 (h!1086 (t!3139 (toList!266 lm!221)))))))

(declare-fun b!16648 () Bool)

(assert (=> b!16648 (= e!10314 (forall!146 (t!3139 (t!3139 (toList!266 lm!221))) p!191))))

(assert (= (and d!3337 (not res!12353)) b!16647))

(assert (= (and b!16647 res!12354) b!16648))

(declare-fun b_lambda!1421 () Bool)

(assert (=> (not b_lambda!1421) (not b!16647)))

(declare-fun t!3161 () Bool)

(declare-fun tb!621 () Bool)

(assert (=> (and start!2884 (= p!191 p!191) t!3161) tb!621))

(declare-fun result!999 () Bool)

(assert (=> tb!621 (= result!999 true)))

(assert (=> b!16647 t!3161))

(declare-fun b_and!1215 () Bool)

(assert (= b_and!1207 (and (=> t!3161 result!999) b_and!1215)))

(declare-fun m!11763 () Bool)

(assert (=> b!16647 m!11763))

(declare-fun m!11765 () Bool)

(assert (=> b!16648 m!11765))

(assert (=> b!16623 d!3337))

(declare-fun d!3339 () Bool)

(assert (=> d!3339 (= (isEmpty!170 (toList!266 lm!221)) (is-Nil!521 (toList!266 lm!221)))))

(assert (=> d!3313 d!3339))

(declare-fun d!3345 () Bool)

(declare-fun e!10347 () Bool)

(assert (=> d!3345 e!10347))

(declare-fun res!12372 () Bool)

(assert (=> d!3345 (=> res!12372 e!10347)))

(declare-fun lt!4123 () Bool)

(assert (=> d!3345 (= res!12372 (not lt!4123))))

(declare-fun lt!4125 () Bool)

(assert (=> d!3345 (= lt!4123 lt!4125)))

(declare-datatypes ((Unit!335 0))(
  ( (Unit!336) )
))
(declare-fun lt!4122 () Unit!335)

(declare-fun e!10346 () Unit!335)

(assert (=> d!3345 (= lt!4122 e!10346)))

(declare-fun c!1607 () Bool)

(assert (=> d!3345 (= c!1607 lt!4125)))

(declare-fun containsKey!21 (List!524 (_ BitVec 64)) Bool)

(assert (=> d!3345 (= lt!4125 (containsKey!21 (toList!266 lt!4086) a!507))))

(assert (=> d!3345 (= (contains!198 lt!4086 a!507) lt!4123)))

(declare-fun b!16694 () Bool)

(declare-fun lt!4124 () Unit!335)

(assert (=> b!16694 (= e!10346 lt!4124)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!18 (List!524 (_ BitVec 64)) Unit!335)

(assert (=> b!16694 (= lt!4124 (lemmaContainsKeyImpliesGetValueByKeyDefined!18 (toList!266 lt!4086) a!507))))

(declare-datatypes ((Option!63 0))(
  ( (Some!62 (v!1392 B!692)) (None!61) )
))
(declare-fun isDefined!19 (Option!63) Bool)

(declare-fun getValueByKey!57 (List!524 (_ BitVec 64)) Option!63)

(assert (=> b!16694 (isDefined!19 (getValueByKey!57 (toList!266 lt!4086) a!507))))

(declare-fun b!16695 () Bool)

(declare-fun Unit!337 () Unit!335)

(assert (=> b!16695 (= e!10346 Unit!337)))

(declare-fun b!16696 () Bool)

(assert (=> b!16696 (= e!10347 (isDefined!19 (getValueByKey!57 (toList!266 lt!4086) a!507)))))

(assert (= (and d!3345 c!1607) b!16694))

(assert (= (and d!3345 (not c!1607)) b!16695))

(assert (= (and d!3345 (not res!12372)) b!16696))

(declare-fun m!11787 () Bool)

(assert (=> d!3345 m!11787))

(declare-fun m!11789 () Bool)

(assert (=> b!16694 m!11789))

(declare-fun m!11793 () Bool)

(assert (=> b!16694 m!11793))

(assert (=> b!16694 m!11793))

(declare-fun m!11797 () Bool)

(assert (=> b!16694 m!11797))

(assert (=> b!16696 m!11793))

(assert (=> b!16696 m!11793))

(assert (=> b!16696 m!11797))

(assert (=> d!3303 d!3345))

(declare-fun b!16726 () Bool)

(declare-fun e!10368 () List!524)

(declare-fun e!10369 () List!524)

(assert (=> b!16726 (= e!10368 e!10369)))

(declare-fun c!1618 () Bool)

(assert (=> b!16726 (= c!1618 (and (is-Cons!520 (toList!266 lm!221)) (not (= (_1!335 (h!1086 (toList!266 lm!221))) a!507))))))

(declare-fun b!16727 () Bool)

(assert (=> b!16727 (= e!10368 (t!3139 (toList!266 lm!221)))))

(declare-fun b!16728 () Bool)

(assert (=> b!16728 (= e!10369 Nil!521)))

(declare-fun b!16729 () Bool)

(declare-fun e!10367 () Bool)

(declare-fun lt!4131 () List!524)

(assert (=> b!16729 (= e!10367 (not (containsKey!21 lt!4131 a!507)))))

(declare-fun b!16730 () Bool)

(declare-fun $colon$colon!28 (List!524 tuple2!670) List!524)

(assert (=> b!16730 (= e!10369 ($colon$colon!28 (removeStrictlySorted!21 (t!3139 (toList!266 lm!221)) a!507) (h!1086 (toList!266 lm!221))))))

(declare-fun d!3353 () Bool)

(assert (=> d!3353 e!10367))

(declare-fun res!12380 () Bool)

(assert (=> d!3353 (=> (not res!12380) (not e!10367))))

(assert (=> d!3353 (= res!12380 (isStrictlySorted!166 lt!4131))))

(assert (=> d!3353 (= lt!4131 e!10368)))

(declare-fun c!1619 () Bool)

(assert (=> d!3353 (= c!1619 (and (is-Cons!520 (toList!266 lm!221)) (= (_1!335 (h!1086 (toList!266 lm!221))) a!507)))))

(assert (=> d!3353 (isStrictlySorted!166 (toList!266 lm!221))))

(assert (=> d!3353 (= (removeStrictlySorted!21 (toList!266 lm!221) a!507) lt!4131)))

(assert (= (and d!3353 c!1619) b!16727))

(assert (= (and d!3353 (not c!1619)) b!16726))

(assert (= (and b!16726 c!1618) b!16730))

(assert (= (and b!16726 (not c!1618)) b!16728))

(assert (= (and d!3353 res!12380) b!16729))

