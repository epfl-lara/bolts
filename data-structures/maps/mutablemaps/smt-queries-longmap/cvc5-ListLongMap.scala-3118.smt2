; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43846 () Bool)

(assert start!43846)

(declare-fun b!484060 () Bool)

(declare-fun e!284955 () Bool)

(declare-fun e!284954 () Bool)

(assert (=> b!484060 (= e!284955 e!284954)))

(declare-fun res!288461 () Bool)

(assert (=> b!484060 (=> (not res!288461) (not e!284954))))

(declare-datatypes ((B!1130 0))(
  ( (B!1131 (val!7017 Int)) )
))
(declare-datatypes ((tuple2!9232 0))(
  ( (tuple2!9233 (_1!4626 (_ BitVec 64)) (_2!4626 B!1130)) )
))
(declare-datatypes ((List!9316 0))(
  ( (Nil!9313) (Cons!9312 (h!10168 tuple2!9232) (t!15546 List!9316)) )
))
(declare-fun l!956 () List!9316)

(declare-fun key!251 () (_ BitVec 64))

(assert (=> b!484060 (= res!288461 (and (is-Cons!9312 l!956) (bvslt (_1!4626 (h!10168 l!956)) key!251)))))

(declare-fun lt!219323 () List!9316)

(declare-fun value!166 () B!1130)

(declare-fun insertStrictlySorted!235 (List!9316 (_ BitVec 64) B!1130) List!9316)

(assert (=> b!484060 (= lt!219323 (insertStrictlySorted!235 l!956 key!251 value!166))))

(declare-fun b!484061 () Bool)

(declare-fun e!284956 () Bool)

(declare-fun tp_is_empty!13939 () Bool)

(declare-fun tp!43516 () Bool)

(assert (=> b!484061 (= e!284956 (and tp_is_empty!13939 tp!43516))))

(declare-fun b!484062 () Bool)

(declare-fun res!288463 () Bool)

(assert (=> b!484062 (=> (not res!288463) (not e!284954))))

(declare-fun isStrictlySorted!416 (List!9316) Bool)

(assert (=> b!484062 (= res!288463 (isStrictlySorted!416 (t!15546 l!956)))))

(declare-fun res!288464 () Bool)

(assert (=> start!43846 (=> (not res!288464) (not e!284955))))

(assert (=> start!43846 (= res!288464 (isStrictlySorted!416 l!956))))

(assert (=> start!43846 e!284955))

(assert (=> start!43846 e!284956))

(assert (=> start!43846 true))

(assert (=> start!43846 tp_is_empty!13939))

(declare-fun b!484063 () Bool)

(declare-fun res!288462 () Bool)

(assert (=> b!484063 (=> (not res!288462) (not e!284955))))

(declare-fun containsKey!382 (List!9316 (_ BitVec 64)) Bool)

(assert (=> b!484063 (= res!288462 (not (containsKey!382 l!956 key!251)))))

(declare-fun b!484064 () Bool)

(assert (=> b!484064 (= e!284954 (containsKey!382 (t!15546 l!956) key!251))))

(assert (= (and start!43846 res!288464) b!484063))

(assert (= (and b!484063 res!288462) b!484060))

(assert (= (and b!484060 res!288461) b!484062))

(assert (= (and b!484062 res!288463) b!484064))

(assert (= (and start!43846 (is-Cons!9312 l!956)) b!484061))

(declare-fun m!464785 () Bool)

(assert (=> b!484063 m!464785))

(declare-fun m!464787 () Bool)

(assert (=> start!43846 m!464787))

(declare-fun m!464789 () Bool)

(assert (=> b!484062 m!464789))

(declare-fun m!464791 () Bool)

(assert (=> b!484060 m!464791))

(declare-fun m!464793 () Bool)

(assert (=> b!484064 m!464793))

(push 1)

(assert (not b!484062))

(assert (not b!484064))

(assert (not b!484063))

(assert (not b!484061))

(assert (not start!43846))

(assert tp_is_empty!13939)

(assert (not b!484060))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!484167 () Bool)

(declare-fun e!285023 () List!9316)

(assert (=> b!484167 (= e!285023 (insertStrictlySorted!235 (t!15546 l!956) key!251 value!166))))

(declare-fun b!484168 () Bool)

(declare-fun e!285025 () List!9316)

(declare-fun call!31108 () List!9316)

(assert (=> b!484168 (= e!285025 call!31108)))

(declare-fun b!484169 () Bool)

(declare-fun e!285024 () List!9316)

(declare-fun call!31109 () List!9316)

(assert (=> b!484169 (= e!285024 call!31109)))

(declare-fun e!285022 () Bool)

(declare-fun lt!219336 () List!9316)

(declare-fun b!484170 () Bool)

(declare-fun contains!2680 (List!9316 tuple2!9232) Bool)

(assert (=> b!484170 (= e!285022 (contains!2680 lt!219336 (tuple2!9233 key!251 value!166)))))

(declare-fun b!484171 () Bool)

(declare-fun e!285021 () List!9316)

(declare-fun call!31110 () List!9316)

(assert (=> b!484171 (= e!285021 call!31110)))

(declare-fun b!484172 () Bool)

(declare-fun c!58156 () Bool)

(assert (=> b!484172 (= c!58156 (and (is-Cons!9312 l!956) (bvsgt (_1!4626 (h!10168 l!956)) key!251)))))

(assert (=> b!484172 (= e!285021 e!285025)))

(declare-fun b!484173 () Bool)

(assert (=> b!484173 (= e!285024 e!285021)))

(declare-fun c!58158 () Bool)

(assert (=> b!484173 (= c!58158 (and (is-Cons!9312 l!956) (= (_1!4626 (h!10168 l!956)) key!251)))))

(declare-fun b!484174 () Bool)

(assert (=> b!484174 (= e!285023 (ite c!58158 (t!15546 l!956) (ite c!58156 (Cons!9312 (h!10168 l!956) (t!15546 l!956)) Nil!9313)))))

(declare-fun bm!31106 () Bool)

(assert (=> bm!31106 (= call!31110 call!31109)))

(declare-fun b!484175 () Bool)

(declare-fun res!288517 () Bool)

(assert (=> b!484175 (=> (not res!288517) (not e!285022))))

(assert (=> b!484175 (= res!288517 (containsKey!382 lt!219336 key!251))))

(declare-fun bm!31107 () Bool)

(assert (=> bm!31107 (= call!31108 call!31110)))

(declare-fun b!484176 () Bool)

(assert (=> b!484176 (= e!285025 call!31108)))

(declare-fun bm!31105 () Bool)

(declare-fun c!58159 () Bool)

(declare-fun $colon$colon!118 (List!9316 tuple2!9232) List!9316)

(assert (=> bm!31105 (= call!31109 ($colon$colon!118 e!285023 (ite c!58159 (h!10168 l!956) (tuple2!9233 key!251 value!166))))))

(declare-fun c!58157 () Bool)

(assert (=> bm!31105 (= c!58157 c!58159)))

(declare-fun d!76951 () Bool)

(assert (=> d!76951 e!285022))

(declare-fun res!288518 () Bool)

(assert (=> d!76951 (=> (not res!288518) (not e!285022))))

(assert (=> d!76951 (= res!288518 (isStrictlySorted!416 lt!219336))))

(assert (=> d!76951 (= lt!219336 e!285024)))

(assert (=> d!76951 (= c!58159 (and (is-Cons!9312 l!956) (bvslt (_1!4626 (h!10168 l!956)) key!251)))))

(assert (=> d!76951 (isStrictlySorted!416 l!956)))

(assert (=> d!76951 (= (insertStrictlySorted!235 l!956 key!251 value!166) lt!219336)))

(assert (= (and d!76951 c!58159) b!484169))

(assert (= (and d!76951 (not c!58159)) b!484173))

(assert (= (and b!484173 c!58158) b!484171))

(assert (= (and b!484173 (not c!58158)) b!484172))

(assert (= (and b!484172 c!58156) b!484168))

(assert (= (and b!484172 (not c!58156)) b!484176))

(assert (= (or b!484168 b!484176) bm!31107))

(assert (= (or b!484171 bm!31107) bm!31106))

(assert (= (or b!484169 bm!31106) bm!31105))

(assert (= (and bm!31105 c!58157) b!484167))

(assert (= (and bm!31105 (not c!58157)) b!484174))

(assert (= (and d!76951 res!288518) b!484175))

(assert (= (and b!484175 res!288517) b!484170))

(declare-fun m!464821 () Bool)

(assert (=> bm!31105 m!464821))

(declare-fun m!464823 () Bool)

(assert (=> b!484167 m!464823))

(declare-fun m!464825 () Bool)

(assert (=> d!76951 m!464825))

(assert (=> d!76951 m!464787))

(declare-fun m!464827 () Bool)

(assert (=> b!484175 m!464827))

(declare-fun m!464829 () Bool)

(assert (=> b!484170 m!464829))

(assert (=> b!484060 d!76951))

(declare-fun d!76959 () Bool)

(declare-fun res!288531 () Bool)

(declare-fun e!285044 () Bool)

(assert (=> d!76959 (=> res!288531 e!285044)))

(assert (=> d!76959 (= res!288531 (and (is-Cons!9312 l!956) (= (_1!4626 (h!10168 l!956)) key!251)))))

(assert (=> d!76959 (= (containsKey!382 l!956 key!251) e!285044)))

(declare-fun b!484206 () Bool)

(declare-fun e!285045 () Bool)

(assert (=> b!484206 (= e!285044 e!285045)))

(declare-fun res!288532 () Bool)

(assert (=> b!484206 (=> (not res!288532) (not e!285045))))

(assert (=> b!484206 (= res!288532 (and (or (not (is-Cons!9312 l!956)) (bvsle (_1!4626 (h!10168 l!956)) key!251)) (is-Cons!9312 l!956) (bvslt (_1!4626 (h!10168 l!956)) key!251)))))

(declare-fun b!484207 () Bool)

(assert (=> b!484207 (= e!285045 (containsKey!382 (t!15546 l!956) key!251))))

(assert (= (and d!76959 (not res!288531)) b!484206))

(assert (= (and b!484206 res!288532) b!484207))

(assert (=> b!484207 m!464793))

(assert (=> b!484063 d!76959))

(declare-fun d!76963 () Bool)

(declare-fun res!288533 () Bool)

(declare-fun e!285046 () Bool)

(assert (=> d!76963 (=> res!288533 e!285046)))

(assert (=> d!76963 (= res!288533 (and (is-Cons!9312 (t!15546 l!956)) (= (_1!4626 (h!10168 (t!15546 l!956))) key!251)))))

(assert (=> d!76963 (= (containsKey!382 (t!15546 l!956) key!251) e!285046)))

(declare-fun b!484208 () Bool)

(declare-fun e!285047 () Bool)

(assert (=> b!484208 (= e!285046 e!285047)))

(declare-fun res!288534 () Bool)

(assert (=> b!484208 (=> (not res!288534) (not e!285047))))

(assert (=> b!484208 (= res!288534 (and (or (not (is-Cons!9312 (t!15546 l!956))) (bvsle (_1!4626 (h!10168 (t!15546 l!956))) key!251)) (is-Cons!9312 (t!15546 l!956)) (bvslt (_1!4626 (h!10168 (t!15546 l!956))) key!251)))))

(declare-fun b!484209 () Bool)

(assert (=> b!484209 (= e!285047 (containsKey!382 (t!15546 (t!15546 l!956)) key!251))))

(assert (= (and d!76963 (not res!288533)) b!484208))

(assert (= (and b!484208 res!288534) b!484209))

(declare-fun m!464841 () Bool)

(assert (=> b!484209 m!464841))

(assert (=> b!484064 d!76963))

(declare-fun d!76965 () Bool)

(declare-fun res!288541 () Bool)

(declare-fun e!285057 () Bool)

(assert (=> d!76965 (=> res!288541 e!285057)))

(assert (=> d!76965 (= res!288541 (or (is-Nil!9313 (t!15546 l!956)) (is-Nil!9313 (t!15546 (t!15546 l!956)))))))

(assert (=> d!76965 (= (isStrictlySorted!416 (t!15546 l!956)) e!285057)))

(declare-fun b!484224 () Bool)

(declare-fun e!285058 () Bool)

(assert (=> b!484224 (= e!285057 e!285058)))

(declare-fun res!288542 () Bool)

(assert (=> b!484224 (=> (not res!288542) (not e!285058))))

(assert (=> b!484224 (= res!288542 (bvslt (_1!4626 (h!10168 (t!15546 l!956))) (_1!4626 (h!10168 (t!15546 (t!15546 l!956))))))))

(declare-fun b!484225 () Bool)

(assert (=> b!484225 (= e!285058 (isStrictlySorted!416 (t!15546 (t!15546 l!956))))))

(assert (= (and d!76965 (not res!288541)) b!484224))

(assert (= (and b!484224 res!288542) b!484225))

(declare-fun m!464853 () Bool)

(assert (=> b!484225 m!464853))

(assert (=> b!484062 d!76965))

(declare-fun d!76969 () Bool)

(declare-fun res!288543 () Bool)

(declare-fun e!285059 () Bool)

(assert (=> d!76969 (=> res!288543 e!285059)))

(assert (=> d!76969 (= res!288543 (or (is-Nil!9313 l!956) (is-Nil!9313 (t!15546 l!956))))))

(assert (=> d!76969 (= (isStrictlySorted!416 l!956) e!285059)))

(declare-fun b!484226 () Bool)

(declare-fun e!285060 () Bool)

(assert (=> b!484226 (= e!285059 e!285060)))

(declare-fun res!288544 () Bool)

(assert (=> b!484226 (=> (not res!288544) (not e!285060))))

(assert (=> b!484226 (= res!288544 (bvslt (_1!4626 (h!10168 l!956)) (_1!4626 (h!10168 (t!15546 l!956)))))))

(declare-fun b!484227 () Bool)

(assert (=> b!484227 (= e!285060 (isStrictlySorted!416 (t!15546 l!956)))))

(assert (= (and d!76969 (not res!288543)) b!484226))

(assert (= (and b!484226 res!288544) b!484227))

(assert (=> b!484227 m!464789))

(assert (=> start!43846 d!76969))

(declare-fun b!484232 () Bool)

(declare-fun e!285063 () Bool)

(declare-fun tp!43528 () Bool)

(assert (=> b!484232 (= e!285063 (and tp_is_empty!13939 tp!43528))))

(assert (=> b!484061 (= tp!43516 e!285063)))

(assert (= (and b!484061 (is-Cons!9312 (t!15546 l!956))) b!484232))

(push 1)

(assert (not d!76951))

(assert (not bm!31105))

(assert (not b!484232))

(assert (not b!484175))

(assert (not b!484170))

(assert (not b!484167))

(assert tp_is_empty!13939)

(assert (not b!484207))

(assert (not b!484227))

(assert (not b!484209))

(assert (not b!484225))

(check-sat)

(pop 1)

(push 1)

(check-sat)

