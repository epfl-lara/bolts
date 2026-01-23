; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504510 () Bool)

(assert start!504510)

(declare-fun b!4844910 () Bool)

(declare-fun res!2066425 () Bool)

(declare-fun e!3028067 () Bool)

(assert (=> b!4844910 (=> (not res!2066425) (not e!3028067))))

(declare-datatypes ((K!17222 0))(
  ( (K!17223 (val!22083 Int)) )
))
(declare-datatypes ((V!17468 0))(
  ( (V!17469 (val!22084 Int)) )
))
(declare-datatypes ((tuple2!59038 0))(
  ( (tuple2!59039 (_1!32813 K!17222) (_2!32813 V!17468)) )
))
(declare-datatypes ((List!55576 0))(
  ( (Nil!55452) (Cons!55452 (h!61889 tuple2!59038) (t!363072 List!55576)) )
))
(declare-datatypes ((tuple2!59040 0))(
  ( (tuple2!59041 (_1!32814 (_ BitVec 64)) (_2!32814 List!55576)) )
))
(declare-datatypes ((List!55577 0))(
  ( (Nil!55453) (Cons!55453 (h!61890 tuple2!59040) (t!363073 List!55577)) )
))
(declare-datatypes ((ListLongMap!6385 0))(
  ( (ListLongMap!6386 (toList!7821 List!55577)) )
))
(declare-fun lm!2706 () ListLongMap!6385)

(declare-datatypes ((Hashable!7461 0))(
  ( (HashableExt!7460 (__x!33736 Int)) )
))
(declare-fun hashF!1684 () Hashable!7461)

(declare-fun allKeysSameHashInMap!2777 (ListLongMap!6385 Hashable!7461) Bool)

(assert (=> b!4844910 (= res!2066425 (allKeysSameHashInMap!2777 lm!2706 hashF!1684))))

(declare-fun b!4844911 () Bool)

(declare-fun res!2066426 () Bool)

(assert (=> b!4844911 (=> (not res!2066426) (not e!3028067))))

(declare-fun key!6636 () K!17222)

(declare-fun containsKeyBiggerList!745 (List!55577 K!17222) Bool)

(assert (=> b!4844911 (= res!2066426 (containsKeyBiggerList!745 (toList!7821 lm!2706) key!6636))))

(declare-fun b!4844912 () Bool)

(declare-fun e!3028069 () Bool)

(assert (=> b!4844912 (= e!3028067 e!3028069)))

(declare-fun res!2066427 () Bool)

(assert (=> b!4844912 (=> (not res!2066427) (not e!3028069))))

(declare-fun lt!1987892 () tuple2!59040)

(declare-fun containsKey!4634 (List!55576 K!17222) Bool)

(assert (=> b!4844912 (= res!2066427 (containsKey!4634 (_2!32814 lt!1987892) key!6636))))

(declare-fun head!10401 (List!55577) tuple2!59040)

(assert (=> b!4844912 (= lt!1987892 (head!10401 (toList!7821 lm!2706)))))

(declare-fun b!4844913 () Bool)

(declare-fun e!3028068 () Bool)

(declare-fun tp!1364159 () Bool)

(assert (=> b!4844913 (= e!3028068 tp!1364159)))

(declare-fun b!4844914 () Bool)

(declare-fun res!2066424 () Bool)

(assert (=> b!4844914 (=> (not res!2066424) (not e!3028069))))

(declare-fun v!11578 () V!17468)

(declare-fun getValue!201 (List!55577 K!17222) V!17468)

(assert (=> b!4844914 (= res!2066424 (= v!11578 (getValue!201 (toList!7821 lm!2706) key!6636)))))

(declare-fun res!2066428 () Bool)

(assert (=> start!504510 (=> (not res!2066428) (not e!3028067))))

(declare-fun lambda!242197 () Int)

(declare-fun forall!12900 (List!55577 Int) Bool)

(assert (=> start!504510 (= res!2066428 (forall!12900 (toList!7821 lm!2706) lambda!242197))))

(assert (=> start!504510 e!3028067))

(declare-fun inv!71123 (ListLongMap!6385) Bool)

(assert (=> start!504510 (and (inv!71123 lm!2706) e!3028068)))

(assert (=> start!504510 true))

(declare-fun tp_is_empty!35037 () Bool)

(assert (=> start!504510 tp_is_empty!35037))

(declare-fun tp_is_empty!35039 () Bool)

(assert (=> start!504510 tp_is_empty!35039))

(declare-fun b!4844915 () Bool)

(declare-fun contains!19136 (List!55576 tuple2!59038) Bool)

(assert (=> b!4844915 (= e!3028069 (not (contains!19136 (_2!32814 lt!1987892) (tuple2!59039 key!6636 v!11578))))))

(assert (= (and start!504510 res!2066428) b!4844910))

(assert (= (and b!4844910 res!2066425) b!4844911))

(assert (= (and b!4844911 res!2066426) b!4844912))

(assert (= (and b!4844912 res!2066427) b!4844914))

(assert (= (and b!4844914 res!2066424) b!4844915))

(assert (= start!504510 b!4844913))

(declare-fun m!5843408 () Bool)

(assert (=> start!504510 m!5843408))

(declare-fun m!5843410 () Bool)

(assert (=> start!504510 m!5843410))

(declare-fun m!5843412 () Bool)

(assert (=> b!4844910 m!5843412))

(declare-fun m!5843414 () Bool)

(assert (=> b!4844914 m!5843414))

(declare-fun m!5843416 () Bool)

(assert (=> b!4844915 m!5843416))

(declare-fun m!5843418 () Bool)

(assert (=> b!4844912 m!5843418))

(declare-fun m!5843420 () Bool)

(assert (=> b!4844912 m!5843420))

(declare-fun m!5843422 () Bool)

(assert (=> b!4844911 m!5843422))

(push 1)

(assert (not b!4844910))

(assert (not start!504510))

(assert (not b!4844915))

(assert tp_is_empty!35039)

(assert (not b!4844914))

(assert (not b!4844911))

(assert (not b!4844913))

(assert (not b!4844912))

(assert tp_is_empty!35037)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554336 () Bool)

(declare-fun c!824923 () Bool)

(declare-fun e!3028084 () Bool)

(assert (=> d!1554336 (= c!824923 e!3028084)))

(declare-fun res!2066446 () Bool)

(assert (=> d!1554336 (=> (not res!2066446) (not e!3028084))))

(assert (=> d!1554336 (= res!2066446 (is-Cons!55453 (toList!7821 lm!2706)))))

(declare-fun e!3028083 () V!17468)

(assert (=> d!1554336 (= (getValue!201 (toList!7821 lm!2706) key!6636) e!3028083)))

(declare-fun b!4844942 () Bool)

(assert (=> b!4844942 (= e!3028084 (containsKey!4634 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636))))

(declare-fun b!4844940 () Bool)

(declare-datatypes ((Option!13625 0))(
  ( (None!13624) (Some!13624 (v!49370 tuple2!59038)) )
))
(declare-fun get!18981 (Option!13625) tuple2!59038)

(declare-fun getPair!1055 (List!55576 K!17222) Option!13625)

(assert (=> b!4844940 (= e!3028083 (_2!32813 (get!18981 (getPair!1055 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636))))))

(declare-fun b!4844941 () Bool)

(assert (=> b!4844941 (= e!3028083 (getValue!201 (t!363073 (toList!7821 lm!2706)) key!6636))))

(assert (= (and d!1554336 res!2066446) b!4844942))

(assert (= (and d!1554336 c!824923) b!4844940))

(assert (= (and d!1554336 (not c!824923)) b!4844941))

(declare-fun m!5843440 () Bool)

(assert (=> b!4844942 m!5843440))

(declare-fun m!5843442 () Bool)

(assert (=> b!4844940 m!5843442))

(assert (=> b!4844940 m!5843442))

(declare-fun m!5843444 () Bool)

(assert (=> b!4844940 m!5843444))

(declare-fun m!5843446 () Bool)

(assert (=> b!4844941 m!5843446))

(assert (=> b!4844914 d!1554336))

(declare-fun d!1554338 () Bool)

(declare-fun res!2066451 () Bool)

(declare-fun e!3028089 () Bool)

(assert (=> d!1554338 (=> res!2066451 e!3028089)))

(assert (=> d!1554338 (= res!2066451 (is-Nil!55453 (toList!7821 lm!2706)))))

(assert (=> d!1554338 (= (forall!12900 (toList!7821 lm!2706) lambda!242197) e!3028089)))

(declare-fun b!4844947 () Bool)

(declare-fun e!3028090 () Bool)

(assert (=> b!4844947 (= e!3028089 e!3028090)))

(declare-fun res!2066452 () Bool)

(assert (=> b!4844947 (=> (not res!2066452) (not e!3028090))))

(declare-fun dynLambda!22327 (Int tuple2!59040) Bool)

(assert (=> b!4844947 (= res!2066452 (dynLambda!22327 lambda!242197 (h!61890 (toList!7821 lm!2706))))))

(declare-fun b!4844948 () Bool)

(assert (=> b!4844948 (= e!3028090 (forall!12900 (t!363073 (toList!7821 lm!2706)) lambda!242197))))

(assert (= (and d!1554338 (not res!2066451)) b!4844947))

(assert (= (and b!4844947 res!2066452) b!4844948))

(declare-fun b_lambda!192255 () Bool)

(assert (=> (not b_lambda!192255) (not b!4844947)))

(declare-fun m!5843448 () Bool)

(assert (=> b!4844947 m!5843448))

(declare-fun m!5843450 () Bool)

(assert (=> b!4844948 m!5843450))

(assert (=> start!504510 d!1554338))

(declare-fun d!1554340 () Bool)

(declare-fun isStrictlySorted!1061 (List!55577) Bool)

(assert (=> d!1554340 (= (inv!71123 lm!2706) (isStrictlySorted!1061 (toList!7821 lm!2706)))))

(declare-fun bs!1172242 () Bool)

(assert (= bs!1172242 d!1554340))

(declare-fun m!5843452 () Bool)

(assert (=> bs!1172242 m!5843452))

(assert (=> start!504510 d!1554340))

(declare-fun d!1554344 () Bool)

(declare-fun res!2066457 () Bool)

(declare-fun e!3028095 () Bool)

(assert (=> d!1554344 (=> res!2066457 e!3028095)))

(assert (=> d!1554344 (= res!2066457 (and (is-Cons!55452 (_2!32814 lt!1987892)) (= (_1!32813 (h!61889 (_2!32814 lt!1987892))) key!6636)))))

(assert (=> d!1554344 (= (containsKey!4634 (_2!32814 lt!1987892) key!6636) e!3028095)))

(declare-fun b!4844953 () Bool)

(declare-fun e!3028096 () Bool)

(assert (=> b!4844953 (= e!3028095 e!3028096)))

(declare-fun res!2066458 () Bool)

(assert (=> b!4844953 (=> (not res!2066458) (not e!3028096))))

(assert (=> b!4844953 (= res!2066458 (is-Cons!55452 (_2!32814 lt!1987892)))))

(declare-fun b!4844954 () Bool)

(assert (=> b!4844954 (= e!3028096 (containsKey!4634 (t!363072 (_2!32814 lt!1987892)) key!6636))))

(assert (= (and d!1554344 (not res!2066457)) b!4844953))

(assert (= (and b!4844953 res!2066458) b!4844954))

(declare-fun m!5843454 () Bool)

(assert (=> b!4844954 m!5843454))

(assert (=> b!4844912 d!1554344))

(declare-fun d!1554346 () Bool)

(assert (=> d!1554346 (= (head!10401 (toList!7821 lm!2706)) (h!61890 (toList!7821 lm!2706)))))

(assert (=> b!4844912 d!1554346))

(declare-fun d!1554348 () Bool)

(declare-fun res!2066470 () Bool)

(declare-fun e!3028109 () Bool)

(assert (=> d!1554348 (=> res!2066470 e!3028109)))

(declare-fun e!3028108 () Bool)

(assert (=> d!1554348 (= res!2066470 e!3028108)))

(declare-fun res!2066471 () Bool)

(assert (=> d!1554348 (=> (not res!2066471) (not e!3028108))))

(assert (=> d!1554348 (= res!2066471 (is-Cons!55453 (toList!7821 lm!2706)))))

(assert (=> d!1554348 (= (containsKeyBiggerList!745 (toList!7821 lm!2706) key!6636) e!3028109)))

(declare-fun b!4844965 () Bool)

(assert (=> b!4844965 (= e!3028108 (containsKey!4634 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636))))

(declare-fun b!4844966 () Bool)

(declare-fun e!3028107 () Bool)

(assert (=> b!4844966 (= e!3028109 e!3028107)))

(declare-fun res!2066469 () Bool)

(assert (=> b!4844966 (=> (not res!2066469) (not e!3028107))))

(assert (=> b!4844966 (= res!2066469 (is-Cons!55453 (toList!7821 lm!2706)))))

(declare-fun b!4844967 () Bool)

(assert (=> b!4844967 (= e!3028107 (containsKeyBiggerList!745 (t!363073 (toList!7821 lm!2706)) key!6636))))

(assert (= (and d!1554348 res!2066471) b!4844965))

(assert (= (and d!1554348 (not res!2066470)) b!4844966))

(assert (= (and b!4844966 res!2066469) b!4844967))

(assert (=> b!4844965 m!5843440))

(declare-fun m!5843456 () Bool)

(assert (=> b!4844967 m!5843456))

(assert (=> b!4844911 d!1554348))

(declare-fun bs!1172243 () Bool)

(declare-fun d!1554350 () Bool)

(assert (= bs!1172243 (and d!1554350 start!504510)))

(declare-fun lambda!242203 () Int)

(assert (=> bs!1172243 (not (= lambda!242203 lambda!242197))))

(assert (=> d!1554350 true))

(assert (=> d!1554350 (= (allKeysSameHashInMap!2777 lm!2706 hashF!1684) (forall!12900 (toList!7821 lm!2706) lambda!242203))))

(declare-fun bs!1172244 () Bool)

(assert (= bs!1172244 d!1554350))

(declare-fun m!5843464 () Bool)

(assert (=> bs!1172244 m!5843464))

(assert (=> b!4844910 d!1554350))

(declare-fun d!1554354 () Bool)

(declare-fun lt!1987901 () Bool)

(declare-fun content!9862 (List!55576) (Set tuple2!59038))

(assert (=> d!1554354 (= lt!1987901 (set.member (tuple2!59039 key!6636 v!11578) (content!9862 (_2!32814 lt!1987892))))))

(declare-fun e!3028116 () Bool)

(assert (=> d!1554354 (= lt!1987901 e!3028116)))

(declare-fun res!2066478 () Bool)

(assert (=> d!1554354 (=> (not res!2066478) (not e!3028116))))

(assert (=> d!1554354 (= res!2066478 (is-Cons!55452 (_2!32814 lt!1987892)))))

(assert (=> d!1554354 (= (contains!19136 (_2!32814 lt!1987892) (tuple2!59039 key!6636 v!11578)) lt!1987901)))

(declare-fun b!4844976 () Bool)

(declare-fun e!3028117 () Bool)

(assert (=> b!4844976 (= e!3028116 e!3028117)))

(declare-fun res!2066479 () Bool)

(assert (=> b!4844976 (=> res!2066479 e!3028117)))

(assert (=> b!4844976 (= res!2066479 (= (h!61889 (_2!32814 lt!1987892)) (tuple2!59039 key!6636 v!11578)))))

(declare-fun b!4844977 () Bool)

(assert (=> b!4844977 (= e!3028117 (contains!19136 (t!363072 (_2!32814 lt!1987892)) (tuple2!59039 key!6636 v!11578)))))

(assert (= (and d!1554354 res!2066478) b!4844976))

(assert (= (and b!4844976 (not res!2066479)) b!4844977))

(declare-fun m!5843466 () Bool)

(assert (=> d!1554354 m!5843466))

(declare-fun m!5843468 () Bool)

(assert (=> d!1554354 m!5843468))

(declare-fun m!5843470 () Bool)

(assert (=> b!4844977 m!5843470))

(assert (=> b!4844915 d!1554354))

(declare-fun b!4844982 () Bool)

(declare-fun e!3028120 () Bool)

(declare-fun tp!1364167 () Bool)

(declare-fun tp!1364168 () Bool)

(assert (=> b!4844982 (= e!3028120 (and tp!1364167 tp!1364168))))

(assert (=> b!4844913 (= tp!1364159 e!3028120)))

(assert (= (and b!4844913 (is-Cons!55453 (toList!7821 lm!2706))) b!4844982))

(declare-fun b_lambda!192257 () Bool)

(assert (= b_lambda!192255 (or start!504510 b_lambda!192257)))

(declare-fun bs!1172245 () Bool)

(declare-fun d!1554356 () Bool)

(assert (= bs!1172245 (and d!1554356 start!504510)))

(declare-fun noDuplicateKeys!2561 (List!55576) Bool)

(assert (=> bs!1172245 (= (dynLambda!22327 lambda!242197 (h!61890 (toList!7821 lm!2706))) (noDuplicateKeys!2561 (_2!32814 (h!61890 (toList!7821 lm!2706)))))))

(declare-fun m!5843472 () Bool)

(assert (=> bs!1172245 m!5843472))

(assert (=> b!4844947 d!1554356))

(push 1)

(assert (not b!4844940))

(assert (not d!1554354))

(assert (not b_lambda!192257))

(assert (not d!1554350))

(assert tp_is_empty!35037)

(assert (not b!4844965))

(assert (not b!4844967))

(assert tp_is_empty!35039)

(assert (not bs!1172245))

(assert (not b!4844941))

(assert (not b!4844948))

(assert (not b!4844977))

(assert (not b!4844954))

(assert (not b!4844982))

(assert (not b!4844942))

(assert (not d!1554340))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1554372 () Bool)

(declare-fun res!2066505 () Bool)

(declare-fun e!3028153 () Bool)

(assert (=> d!1554372 (=> res!2066505 e!3028153)))

(declare-fun e!3028152 () Bool)

(assert (=> d!1554372 (= res!2066505 e!3028152)))

(declare-fun res!2066506 () Bool)

(assert (=> d!1554372 (=> (not res!2066506) (not e!3028152))))

(assert (=> d!1554372 (= res!2066506 (is-Cons!55453 (t!363073 (toList!7821 lm!2706))))))

(assert (=> d!1554372 (= (containsKeyBiggerList!745 (t!363073 (toList!7821 lm!2706)) key!6636) e!3028153)))

(declare-fun b!4845020 () Bool)

(assert (=> b!4845020 (= e!3028152 (containsKey!4634 (_2!32814 (h!61890 (t!363073 (toList!7821 lm!2706)))) key!6636))))

(declare-fun b!4845021 () Bool)

(declare-fun e!3028151 () Bool)

(assert (=> b!4845021 (= e!3028153 e!3028151)))

(declare-fun res!2066504 () Bool)

(assert (=> b!4845021 (=> (not res!2066504) (not e!3028151))))

(assert (=> b!4845021 (= res!2066504 (is-Cons!55453 (t!363073 (toList!7821 lm!2706))))))

(declare-fun b!4845022 () Bool)

(assert (=> b!4845022 (= e!3028151 (containsKeyBiggerList!745 (t!363073 (t!363073 (toList!7821 lm!2706))) key!6636))))

(assert (= (and d!1554372 res!2066506) b!4845020))

(assert (= (and d!1554372 (not res!2066505)) b!4845021))

(assert (= (and b!4845021 res!2066504) b!4845022))

(declare-fun m!5843496 () Bool)

(assert (=> b!4845020 m!5843496))

(declare-fun m!5843498 () Bool)

(assert (=> b!4845022 m!5843498))

(assert (=> b!4844967 d!1554372))

(declare-fun d!1554374 () Bool)

(declare-fun res!2066507 () Bool)

(declare-fun e!3028154 () Bool)

(assert (=> d!1554374 (=> res!2066507 e!3028154)))

(assert (=> d!1554374 (= res!2066507 (and (is-Cons!55452 (_2!32814 (h!61890 (toList!7821 lm!2706)))) (= (_1!32813 (h!61889 (_2!32814 (h!61890 (toList!7821 lm!2706))))) key!6636)))))

(assert (=> d!1554374 (= (containsKey!4634 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636) e!3028154)))

(declare-fun b!4845023 () Bool)

(declare-fun e!3028155 () Bool)

(assert (=> b!4845023 (= e!3028154 e!3028155)))

(declare-fun res!2066508 () Bool)

(assert (=> b!4845023 (=> (not res!2066508) (not e!3028155))))

(assert (=> b!4845023 (= res!2066508 (is-Cons!55452 (_2!32814 (h!61890 (toList!7821 lm!2706)))))))

(declare-fun b!4845024 () Bool)

(assert (=> b!4845024 (= e!3028155 (containsKey!4634 (t!363072 (_2!32814 (h!61890 (toList!7821 lm!2706)))) key!6636))))

(assert (= (and d!1554374 (not res!2066507)) b!4845023))

(assert (= (and b!4845023 res!2066508) b!4845024))

(declare-fun m!5843500 () Bool)

(assert (=> b!4845024 m!5843500))

(assert (=> b!4844965 d!1554374))

(declare-fun d!1554376 () Bool)

(declare-fun res!2066509 () Bool)

(declare-fun e!3028156 () Bool)

(assert (=> d!1554376 (=> res!2066509 e!3028156)))

(assert (=> d!1554376 (= res!2066509 (is-Nil!55453 (t!363073 (toList!7821 lm!2706))))))

(assert (=> d!1554376 (= (forall!12900 (t!363073 (toList!7821 lm!2706)) lambda!242197) e!3028156)))

(declare-fun b!4845025 () Bool)

(declare-fun e!3028157 () Bool)

(assert (=> b!4845025 (= e!3028156 e!3028157)))

(declare-fun res!2066510 () Bool)

(assert (=> b!4845025 (=> (not res!2066510) (not e!3028157))))

(assert (=> b!4845025 (= res!2066510 (dynLambda!22327 lambda!242197 (h!61890 (t!363073 (toList!7821 lm!2706)))))))

(declare-fun b!4845026 () Bool)

(assert (=> b!4845026 (= e!3028157 (forall!12900 (t!363073 (t!363073 (toList!7821 lm!2706))) lambda!242197))))

(assert (= (and d!1554376 (not res!2066509)) b!4845025))

(assert (= (and b!4845025 res!2066510) b!4845026))

(declare-fun b_lambda!192263 () Bool)

(assert (=> (not b_lambda!192263) (not b!4845025)))

(declare-fun m!5843502 () Bool)

(assert (=> b!4845025 m!5843502))

(declare-fun m!5843504 () Bool)

(assert (=> b!4845026 m!5843504))

(assert (=> b!4844948 d!1554376))

(declare-fun d!1554378 () Bool)

(declare-fun c!824929 () Bool)

(assert (=> d!1554378 (= c!824929 (is-Nil!55452 (_2!32814 lt!1987892)))))

(declare-fun e!3028160 () (Set tuple2!59038))

(assert (=> d!1554378 (= (content!9862 (_2!32814 lt!1987892)) e!3028160)))

(declare-fun b!4845031 () Bool)

(assert (=> b!4845031 (= e!3028160 (as set.empty (Set tuple2!59038)))))

(declare-fun b!4845032 () Bool)

(assert (=> b!4845032 (= e!3028160 (set.union (set.insert (h!61889 (_2!32814 lt!1987892)) (as set.empty (Set tuple2!59038))) (content!9862 (t!363072 (_2!32814 lt!1987892)))))))

(assert (= (and d!1554378 c!824929) b!4845031))

(assert (= (and d!1554378 (not c!824929)) b!4845032))

(declare-fun m!5843506 () Bool)

(assert (=> b!4845032 m!5843506))

(declare-fun m!5843508 () Bool)

(assert (=> b!4845032 m!5843508))

(assert (=> d!1554354 d!1554378))

(declare-fun d!1554380 () Bool)

(assert (=> d!1554380 (= (get!18981 (getPair!1055 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636)) (v!49370 (getPair!1055 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636)))))

(assert (=> b!4844940 d!1554380))

(declare-fun b!4845049 () Bool)

(declare-fun e!3028171 () Option!13625)

(declare-fun e!3028172 () Option!13625)

(assert (=> b!4845049 (= e!3028171 e!3028172)))

(declare-fun c!824935 () Bool)

(assert (=> b!4845049 (= c!824935 (is-Cons!55452 (_2!32814 (h!61890 (toList!7821 lm!2706)))))))

(declare-fun b!4845050 () Bool)

(declare-fun e!3028175 () Bool)

(declare-fun e!3028173 () Bool)

(assert (=> b!4845050 (= e!3028175 e!3028173)))

(declare-fun res!2066519 () Bool)

(assert (=> b!4845050 (=> (not res!2066519) (not e!3028173))))

(declare-fun lt!1987904 () Option!13625)

(declare-fun isDefined!10717 (Option!13625) Bool)

(assert (=> b!4845050 (= res!2066519 (isDefined!10717 lt!1987904))))

(declare-fun d!1554382 () Bool)

(assert (=> d!1554382 e!3028175))

(declare-fun res!2066520 () Bool)

(assert (=> d!1554382 (=> res!2066520 e!3028175)))

(declare-fun e!3028174 () Bool)

(assert (=> d!1554382 (= res!2066520 e!3028174)))

(declare-fun res!2066522 () Bool)

(assert (=> d!1554382 (=> (not res!2066522) (not e!3028174))))

(declare-fun isEmpty!29707 (Option!13625) Bool)

(assert (=> d!1554382 (= res!2066522 (isEmpty!29707 lt!1987904))))

(assert (=> d!1554382 (= lt!1987904 e!3028171)))

(declare-fun c!824934 () Bool)

(assert (=> d!1554382 (= c!824934 (and (is-Cons!55452 (_2!32814 (h!61890 (toList!7821 lm!2706)))) (= (_1!32813 (h!61889 (_2!32814 (h!61890 (toList!7821 lm!2706))))) key!6636)))))

(assert (=> d!1554382 (noDuplicateKeys!2561 (_2!32814 (h!61890 (toList!7821 lm!2706))))))

(assert (=> d!1554382 (= (getPair!1055 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636) lt!1987904)))

(declare-fun b!4845051 () Bool)

(declare-fun res!2066521 () Bool)

(assert (=> b!4845051 (=> (not res!2066521) (not e!3028173))))

(assert (=> b!4845051 (= res!2066521 (= (_1!32813 (get!18981 lt!1987904)) key!6636))))

(declare-fun b!4845052 () Bool)

(assert (=> b!4845052 (= e!3028173 (contains!19136 (_2!32814 (h!61890 (toList!7821 lm!2706))) (get!18981 lt!1987904)))))

(declare-fun b!4845053 () Bool)

(assert (=> b!4845053 (= e!3028172 (getPair!1055 (t!363072 (_2!32814 (h!61890 (toList!7821 lm!2706)))) key!6636))))

(declare-fun b!4845054 () Bool)

(assert (=> b!4845054 (= e!3028171 (Some!13624 (h!61889 (_2!32814 (h!61890 (toList!7821 lm!2706))))))))

(declare-fun b!4845055 () Bool)

(assert (=> b!4845055 (= e!3028172 None!13624)))

(declare-fun b!4845056 () Bool)

(assert (=> b!4845056 (= e!3028174 (not (containsKey!4634 (_2!32814 (h!61890 (toList!7821 lm!2706))) key!6636)))))

(assert (= (and d!1554382 c!824934) b!4845054))

(assert (= (and d!1554382 (not c!824934)) b!4845049))

(assert (= (and b!4845049 c!824935) b!4845053))

(assert (= (and b!4845049 (not c!824935)) b!4845055))

(assert (= (and d!1554382 res!2066522) b!4845056))

(assert (= (and d!1554382 (not res!2066520)) b!4845050))

(assert (= (and b!4845050 res!2066519) b!4845051))

(assert (= (and b!4845051 res!2066521) b!4845052))

(assert (=> b!4845056 m!5843440))

(declare-fun m!5843510 () Bool)

(assert (=> b!4845052 m!5843510))

(assert (=> b!4845052 m!5843510))

(declare-fun m!5843512 () Bool)

(assert (=> b!4845052 m!5843512))

(declare-fun m!5843514 () Bool)

(assert (=> b!4845050 m!5843514))

(declare-fun m!5843516 () Bool)

(assert (=> d!1554382 m!5843516))

(assert (=> d!1554382 m!5843472))

(declare-fun m!5843518 () Bool)

(assert (=> b!4845053 m!5843518))

(assert (=> b!4845051 m!5843510))

(assert (=> b!4844940 d!1554382))

(declare-fun d!1554384 () Bool)

(declare-fun res!2066523 () Bool)

(declare-fun e!3028176 () Bool)

(assert (=> d!1554384 (=> res!2066523 e!3028176)))

(assert (=> d!1554384 (= res!2066523 (is-Nil!55453 (toList!7821 lm!2706)))))

(assert (=> d!1554384 (= (forall!12900 (toList!7821 lm!2706) lambda!242203) e!3028176)))

(declare-fun b!4845057 () Bool)

(declare-fun e!3028177 () Bool)

(assert (=> b!4845057 (= e!3028176 e!3028177)))

(declare-fun res!2066524 () Bool)

(assert (=> b!4845057 (=> (not res!2066524) (not e!3028177))))

(assert (=> b!4845057 (= res!2066524 (dynLambda!22327 lambda!242203 (h!61890 (toList!7821 lm!2706))))))

(declare-fun b!4845058 () Bool)

(assert (=> b!4845058 (= e!3028177 (forall!12900 (t!363073 (toList!7821 lm!2706)) lambda!242203))))

(assert (= (and d!1554384 (not res!2066523)) b!4845057))

(assert (= (and b!4845057 res!2066524) b!4845058))

(declare-fun b_lambda!192265 () Bool)

(assert (=> (not b_lambda!192265) (not b!4845057)))

(declare-fun m!5843520 () Bool)

(assert (=> b!4845057 m!5843520))

(declare-fun m!5843522 () Bool)

(assert (=> b!4845058 m!5843522))

(assert (=> d!1554350 d!1554384))

(declare-fun d!1554386 () Bool)

(declare-fun res!2066529 () Bool)

(declare-fun e!3028182 () Bool)

(assert (=> d!1554386 (=> res!2066529 e!3028182)))

(assert (=> d!1554386 (= res!2066529 (not (is-Cons!55452 (_2!32814 (h!61890 (toList!7821 lm!2706))))))))

(assert (=> d!1554386 (= (noDuplicateKeys!2561 (_2!32814 (h!61890 (toList!7821 lm!2706)))) e!3028182)))

(declare-fun b!4845063 () Bool)

(declare-fun e!3028183 () Bool)

(assert (=> b!4845063 (= e!3028182 e!3028183)))

(declare-fun res!2066530 () Bool)

(assert (=> b!4845063 (=> (not res!2066530) (not e!3028183))))

(assert (=> b!4845063 (= res!2066530 (not (containsKey!4634 (t!363072 (_2!32814 (h!61890 (toList!7821 lm!2706)))) (_1!32813 (h!61889 (_2!32814 (h!61890 (toList!7821 lm!2706))))))))))

(declare-fun b!4845064 () Bool)

(assert (=> b!4845064 (= e!3028183 (noDuplicateKeys!2561 (t!363072 (_2!32814 (h!61890 (toList!7821 lm!2706))))))))

(assert (= (and d!1554386 (not res!2066529)) b!4845063))

(assert (= (and b!4845063 res!2066530) b!4845064))

(declare-fun m!5843524 () Bool)

(assert (=> b!4845063 m!5843524))

(declare-fun m!5843526 () Bool)

(assert (=> b!4845064 m!5843526))

(assert (=> bs!1172245 d!1554386))

(assert (=> b!4844942 d!1554374))

(declare-fun lt!1987905 () Bool)

(declare-fun d!1554388 () Bool)

(assert (=> d!1554388 (= lt!1987905 (set.member (tuple2!59039 key!6636 v!11578) (content!9862 (t!363072 (_2!32814 lt!1987892)))))))

(declare-fun e!3028184 () Bool)

(assert (=> d!1554388 (= lt!1987905 e!3028184)))

(declare-fun res!2066531 () Bool)

(assert (=> d!1554388 (=> (not res!2066531) (not e!3028184))))

(assert (=> d!1554388 (= res!2066531 (is-Cons!55452 (t!363072 (_2!32814 lt!1987892))))))

(assert (=> d!1554388 (= (contains!19136 (t!363072 (_2!32814 lt!1987892)) (tuple2!59039 key!6636 v!11578)) lt!1987905)))

(declare-fun b!4845065 () Bool)

(declare-fun e!3028185 () Bool)

(assert (=> b!4845065 (= e!3028184 e!3028185)))

(declare-fun res!2066532 () Bool)

(assert (=> b!4845065 (=> res!2066532 e!3028185)))

(assert (=> b!4845065 (= res!2066532 (= (h!61889 (t!363072 (_2!32814 lt!1987892))) (tuple2!59039 key!6636 v!11578)))))

(declare-fun b!4845066 () Bool)

(assert (=> b!4845066 (= e!3028185 (contains!19136 (t!363072 (t!363072 (_2!32814 lt!1987892))) (tuple2!59039 key!6636 v!11578)))))

(assert (= (and d!1554388 res!2066531) b!4845065))

(assert (= (and b!4845065 (not res!2066532)) b!4845066))

(assert (=> d!1554388 m!5843508))

(declare-fun m!5843528 () Bool)

(assert (=> d!1554388 m!5843528))

(declare-fun m!5843530 () Bool)

(assert (=> b!4845066 m!5843530))

(assert (=> b!4844977 d!1554388))

(declare-fun d!1554390 () Bool)

(declare-fun res!2066533 () Bool)

(declare-fun e!3028186 () Bool)

(assert (=> d!1554390 (=> res!2066533 e!3028186)))

(assert (=> d!1554390 (= res!2066533 (and (is-Cons!55452 (t!363072 (_2!32814 lt!1987892))) (= (_1!32813 (h!61889 (t!363072 (_2!32814 lt!1987892)))) key!6636)))))

(assert (=> d!1554390 (= (containsKey!4634 (t!363072 (_2!32814 lt!1987892)) key!6636) e!3028186)))

(declare-fun b!4845067 () Bool)

(declare-fun e!3028187 () Bool)

(assert (=> b!4845067 (= e!3028186 e!3028187)))

(declare-fun res!2066534 () Bool)

(assert (=> b!4845067 (=> (not res!2066534) (not e!3028187))))

(assert (=> b!4845067 (= res!2066534 (is-Cons!55452 (t!363072 (_2!32814 lt!1987892))))))

(declare-fun b!4845068 () Bool)

(assert (=> b!4845068 (= e!3028187 (containsKey!4634 (t!363072 (t!363072 (_2!32814 lt!1987892))) key!6636))))

(assert (= (and d!1554390 (not res!2066533)) b!4845067))

(assert (= (and b!4845067 res!2066534) b!4845068))

(declare-fun m!5843532 () Bool)

(assert (=> b!4845068 m!5843532))

(assert (=> b!4844954 d!1554390))

(declare-fun d!1554392 () Bool)

(declare-fun res!2066539 () Bool)

(declare-fun e!3028192 () Bool)

(assert (=> d!1554392 (=> res!2066539 e!3028192)))

(assert (=> d!1554392 (= res!2066539 (or (is-Nil!55453 (toList!7821 lm!2706)) (is-Nil!55453 (t!363073 (toList!7821 lm!2706)))))))

(assert (=> d!1554392 (= (isStrictlySorted!1061 (toList!7821 lm!2706)) e!3028192)))

(declare-fun b!4845073 () Bool)

(declare-fun e!3028193 () Bool)

(assert (=> b!4845073 (= e!3028192 e!3028193)))

(declare-fun res!2066540 () Bool)

(assert (=> b!4845073 (=> (not res!2066540) (not e!3028193))))

(assert (=> b!4845073 (= res!2066540 (bvslt (_1!32814 (h!61890 (toList!7821 lm!2706))) (_1!32814 (h!61890 (t!363073 (toList!7821 lm!2706))))))))

(declare-fun b!4845074 () Bool)

(assert (=> b!4845074 (= e!3028193 (isStrictlySorted!1061 (t!363073 (toList!7821 lm!2706))))))

(assert (= (and d!1554392 (not res!2066539)) b!4845073))

(assert (= (and b!4845073 res!2066540) b!4845074))

(declare-fun m!5843534 () Bool)

(assert (=> b!4845074 m!5843534))

(assert (=> d!1554340 d!1554392))

(declare-fun d!1554394 () Bool)

(declare-fun c!824936 () Bool)

(declare-fun e!3028195 () Bool)

(assert (=> d!1554394 (= c!824936 e!3028195)))

(declare-fun res!2066541 () Bool)

(assert (=> d!1554394 (=> (not res!2066541) (not e!3028195))))

(assert (=> d!1554394 (= res!2066541 (is-Cons!55453 (t!363073 (toList!7821 lm!2706))))))

(declare-fun e!3028194 () V!17468)

(assert (=> d!1554394 (= (getValue!201 (t!363073 (toList!7821 lm!2706)) key!6636) e!3028194)))

(declare-fun b!4845077 () Bool)

(assert (=> b!4845077 (= e!3028195 (containsKey!4634 (_2!32814 (h!61890 (t!363073 (toList!7821 lm!2706)))) key!6636))))

(declare-fun b!4845075 () Bool)

(assert (=> b!4845075 (= e!3028194 (_2!32813 (get!18981 (getPair!1055 (_2!32814 (h!61890 (t!363073 (toList!7821 lm!2706)))) key!6636))))))

(declare-fun b!4845076 () Bool)

(assert (=> b!4845076 (= e!3028194 (getValue!201 (t!363073 (t!363073 (toList!7821 lm!2706))) key!6636))))

(assert (= (and d!1554394 res!2066541) b!4845077))

(assert (= (and d!1554394 c!824936) b!4845075))

(assert (= (and d!1554394 (not c!824936)) b!4845076))

(assert (=> b!4845077 m!5843496))

(declare-fun m!5843536 () Bool)

(assert (=> b!4845075 m!5843536))

(assert (=> b!4845075 m!5843536))

(declare-fun m!5843538 () Bool)

(assert (=> b!4845075 m!5843538))

(declare-fun m!5843540 () Bool)

(assert (=> b!4845076 m!5843540))

(assert (=> b!4844941 d!1554394))

(declare-fun tp!1364177 () Bool)

(declare-fun b!4845082 () Bool)

(declare-fun e!3028198 () Bool)

(assert (=> b!4845082 (= e!3028198 (and tp_is_empty!35037 tp_is_empty!35039 tp!1364177))))

(assert (=> b!4844982 (= tp!1364167 e!3028198)))

(assert (= (and b!4844982 (is-Cons!55452 (_2!32814 (h!61890 (toList!7821 lm!2706))))) b!4845082))

(declare-fun b!4845083 () Bool)

(declare-fun e!3028199 () Bool)

(declare-fun tp!1364178 () Bool)

(declare-fun tp!1364179 () Bool)

(assert (=> b!4845083 (= e!3028199 (and tp!1364178 tp!1364179))))

(assert (=> b!4844982 (= tp!1364168 e!3028199)))

(assert (= (and b!4844982 (is-Cons!55453 (t!363073 (toList!7821 lm!2706)))) b!4845083))

(declare-fun b_lambda!192267 () Bool)

(assert (= b_lambda!192265 (or d!1554350 b_lambda!192267)))

(declare-fun bs!1172250 () Bool)

(declare-fun d!1554396 () Bool)

(assert (= bs!1172250 (and d!1554396 d!1554350)))

(declare-fun allKeysSameHash!2028 (List!55576 (_ BitVec 64) Hashable!7461) Bool)

(assert (=> bs!1172250 (= (dynLambda!22327 lambda!242203 (h!61890 (toList!7821 lm!2706))) (allKeysSameHash!2028 (_2!32814 (h!61890 (toList!7821 lm!2706))) (_1!32814 (h!61890 (toList!7821 lm!2706))) hashF!1684))))

(declare-fun m!5843542 () Bool)

(assert (=> bs!1172250 m!5843542))

(assert (=> b!4845057 d!1554396))

(declare-fun b_lambda!192269 () Bool)

(assert (= b_lambda!192263 (or start!504510 b_lambda!192269)))

(declare-fun bs!1172251 () Bool)

(declare-fun d!1554398 () Bool)

(assert (= bs!1172251 (and d!1554398 start!504510)))

(assert (=> bs!1172251 (= (dynLambda!22327 lambda!242197 (h!61890 (t!363073 (toList!7821 lm!2706)))) (noDuplicateKeys!2561 (_2!32814 (h!61890 (t!363073 (toList!7821 lm!2706))))))))

(declare-fun m!5843544 () Bool)

(assert (=> bs!1172251 m!5843544))

(assert (=> b!4845025 d!1554398))

(push 1)

(assert (not b!4845024))

(assert (not b!4845068))

(assert tp_is_empty!35037)

(assert (not b!4845063))

(assert (not b!4845050))

(assert (not b!4845082))

(assert (not b!4845066))

(assert tp_is_empty!35039)

(assert (not b!4845058))

(assert (not b!4845056))

(assert (not b!4845052))

(assert (not b!4845020))

(assert (not b!4845064))

(assert (not b!4845077))

(assert (not b!4845074))

(assert (not b!4845083))

(assert (not b_lambda!192257))

(assert (not d!1554388))

(assert (not b!4845032))

(assert (not b_lambda!192269))

(assert (not bs!1172251))

(assert (not b!4845051))

(assert (not b!4845022))

(assert (not b!4845076))

(assert (not b!4845053))

(assert (not b!4845026))

(assert (not b!4845075))

(assert (not d!1554382))

(assert (not bs!1172250))

(assert (not b_lambda!192267))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

