; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43850 () Bool)

(assert start!43850)

(declare-fun b!484090 () Bool)

(declare-fun e!284973 () Bool)

(declare-datatypes ((B!1134 0))(
  ( (B!1135 (val!7019 Int)) )
))
(declare-datatypes ((tuple2!9236 0))(
  ( (tuple2!9237 (_1!4628 (_ BitVec 64)) (_2!4628 B!1134)) )
))
(declare-datatypes ((List!9318 0))(
  ( (Nil!9315) (Cons!9314 (h!10170 tuple2!9236) (t!15548 List!9318)) )
))
(declare-fun l!956 () List!9318)

(declare-fun key!251 () (_ BitVec 64))

(declare-fun containsKey!384 (List!9318 (_ BitVec 64)) Bool)

(assert (=> b!484090 (= e!284973 (containsKey!384 (t!15548 l!956) key!251))))

(declare-fun res!288485 () Bool)

(declare-fun e!284972 () Bool)

(assert (=> start!43850 (=> (not res!288485) (not e!284972))))

(declare-fun isStrictlySorted!418 (List!9318) Bool)

(assert (=> start!43850 (= res!288485 (isStrictlySorted!418 l!956))))

(assert (=> start!43850 e!284972))

(declare-fun e!284974 () Bool)

(assert (=> start!43850 e!284974))

(assert (=> start!43850 true))

(declare-fun tp_is_empty!13943 () Bool)

(assert (=> start!43850 tp_is_empty!13943))

(declare-fun b!484091 () Bool)

(declare-fun res!288487 () Bool)

(assert (=> b!484091 (=> (not res!288487) (not e!284973))))

(assert (=> b!484091 (= res!288487 (isStrictlySorted!418 (t!15548 l!956)))))

(declare-fun b!484092 () Bool)

(assert (=> b!484092 (= e!284972 e!284973)))

(declare-fun res!288488 () Bool)

(assert (=> b!484092 (=> (not res!288488) (not e!284973))))

(assert (=> b!484092 (= res!288488 (and (is-Cons!9314 l!956) (bvslt (_1!4628 (h!10170 l!956)) key!251)))))

(declare-fun value!166 () B!1134)

(declare-fun lt!219329 () List!9318)

(declare-fun insertStrictlySorted!237 (List!9318 (_ BitVec 64) B!1134) List!9318)

(assert (=> b!484092 (= lt!219329 (insertStrictlySorted!237 l!956 key!251 value!166))))

(declare-fun b!484093 () Bool)

(declare-fun tp!43522 () Bool)

(assert (=> b!484093 (= e!284974 (and tp_is_empty!13943 tp!43522))))

(declare-fun b!484094 () Bool)

(declare-fun res!288486 () Bool)

(assert (=> b!484094 (=> (not res!288486) (not e!284972))))

(assert (=> b!484094 (= res!288486 (not (containsKey!384 l!956 key!251)))))

(assert (= (and start!43850 res!288485) b!484094))

(assert (= (and b!484094 res!288486) b!484092))

(assert (= (and b!484092 res!288488) b!484091))

(assert (= (and b!484091 res!288487) b!484090))

(assert (= (and start!43850 (is-Cons!9314 l!956)) b!484093))

(declare-fun m!464805 () Bool)

(assert (=> b!484092 m!464805))

(declare-fun m!464807 () Bool)

(assert (=> b!484091 m!464807))

(declare-fun m!464809 () Bool)

(assert (=> start!43850 m!464809))

(declare-fun m!464811 () Bool)

(assert (=> b!484094 m!464811))

(declare-fun m!464813 () Bool)

(assert (=> b!484090 m!464813))

(push 1)

(assert tp_is_empty!13943)

(assert (not start!43850))

(assert (not b!484094))

(assert (not b!484090))

(assert (not b!484091))

(assert (not b!484092))

(assert (not b!484093))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76955 () Bool)

(declare-fun res!288507 () Bool)

(declare-fun e!284993 () Bool)

(assert (=> d!76955 (=> res!288507 e!284993)))

(assert (=> d!76955 (= res!288507 (or (is-Nil!9315 (t!15548 l!956)) (is-Nil!9315 (t!15548 (t!15548 l!956)))))))

(assert (=> d!76955 (= (isStrictlySorted!418 (t!15548 l!956)) e!284993)))

(declare-fun b!484113 () Bool)

(declare-fun e!284994 () Bool)

(assert (=> b!484113 (= e!284993 e!284994)))

(declare-fun res!288508 () Bool)

(assert (=> b!484113 (=> (not res!288508) (not e!284994))))

(assert (=> b!484113 (= res!288508 (bvslt (_1!4628 (h!10170 (t!15548 l!956))) (_1!4628 (h!10170 (t!15548 (t!15548 l!956))))))))

(declare-fun b!484114 () Bool)

(assert (=> b!484114 (= e!284994 (isStrictlySorted!418 (t!15548 (t!15548 l!956))))))

(assert (= (and d!76955 (not res!288507)) b!484113))

(assert (= (and b!484113 res!288508) b!484114))

(declare-fun m!464819 () Bool)

(assert (=> b!484114 m!464819))

(assert (=> b!484091 d!76955))

(declare-fun b!484210 () Bool)

(declare-fun e!285052 () List!9318)

(declare-fun call!31118 () List!9318)

(assert (=> b!484210 (= e!285052 call!31118)))

(declare-fun b!484211 () Bool)

(declare-fun res!288536 () Bool)

(declare-fun e!285050 () Bool)

(assert (=> b!484211 (=> (not res!288536) (not e!285050))))

(declare-fun lt!219338 () List!9318)

(assert (=> b!484211 (= res!288536 (containsKey!384 lt!219338 key!251))))

(declare-fun b!484212 () Bool)

(declare-fun c!58169 () Bool)

(assert (=> b!484212 (= c!58169 (and (is-Cons!9314 l!956) (bvsgt (_1!4628 (h!10170 l!956)) key!251)))))

(declare-fun e!285048 () List!9318)

(assert (=> b!484212 (= e!285052 e!285048)))

(declare-fun b!484213 () Bool)

(declare-fun e!285049 () List!9318)

(declare-fun c!58166 () Bool)

(assert (=> b!484213 (= e!285049 (ite c!58166 (t!15548 l!956) (ite c!58169 (Cons!9314 (h!10170 l!956) (t!15548 l!956)) Nil!9315)))))

(declare-fun b!484214 () Bool)

(declare-fun call!31117 () List!9318)

(assert (=> b!484214 (= e!285048 call!31117)))

(declare-fun b!484216 () Bool)

(declare-fun e!285051 () List!9318)

(declare-fun call!31116 () List!9318)

(assert (=> b!484216 (= e!285051 call!31116)))

(declare-fun c!58167 () Bool)

(declare-fun bm!31113 () Bool)

(declare-fun $colon$colon!120 (List!9318 tuple2!9236) List!9318)

(assert (=> bm!31113 (= call!31116 ($colon$colon!120 e!285049 (ite c!58167 (h!10170 l!956) (tuple2!9237 key!251 value!166))))))

(declare-fun c!58168 () Bool)

(assert (=> bm!31113 (= c!58168 c!58167)))

(declare-fun bm!31114 () Bool)

(assert (=> bm!31114 (= call!31117 call!31118)))

(declare-fun bm!31115 () Bool)

(assert (=> bm!31115 (= call!31118 call!31116)))

(declare-fun b!484217 () Bool)

(assert (=> b!484217 (= e!285049 (insertStrictlySorted!237 (t!15548 l!956) key!251 value!166))))

(declare-fun b!484215 () Bool)

(assert (=> b!484215 (= e!285048 call!31117)))

(declare-fun d!76957 () Bool)

(assert (=> d!76957 e!285050))

(declare-fun res!288535 () Bool)

(assert (=> d!76957 (=> (not res!288535) (not e!285050))))

(assert (=> d!76957 (= res!288535 (isStrictlySorted!418 lt!219338))))

(assert (=> d!76957 (= lt!219338 e!285051)))

(assert (=> d!76957 (= c!58167 (and (is-Cons!9314 l!956) (bvslt (_1!4628 (h!10170 l!956)) key!251)))))

(assert (=> d!76957 (isStrictlySorted!418 l!956)))

(assert (=> d!76957 (= (insertStrictlySorted!237 l!956 key!251 value!166) lt!219338)))

(declare-fun b!484218 () Bool)

(declare-fun contains!2682 (List!9318 tuple2!9236) Bool)

(assert (=> b!484218 (= e!285050 (contains!2682 lt!219338 (tuple2!9237 key!251 value!166)))))

(declare-fun b!484219 () Bool)

(assert (=> b!484219 (= e!285051 e!285052)))

(assert (=> b!484219 (= c!58166 (and (is-Cons!9314 l!956) (= (_1!4628 (h!10170 l!956)) key!251)))))

(assert (= (and d!76957 c!58167) b!484216))

(assert (= (and d!76957 (not c!58167)) b!484219))

(assert (= (and b!484219 c!58166) b!484210))

(assert (= (and b!484219 (not c!58166)) b!484212))

(assert (= (and b!484212 c!58169) b!484215))

(assert (= (and b!484212 (not c!58169)) b!484214))

(assert (= (or b!484215 b!484214) bm!31114))

(assert (= (or b!484210 bm!31114) bm!31115))

(assert (= (or b!484216 bm!31115) bm!31113))

(assert (= (and bm!31113 c!58168) b!484217))

(assert (= (and bm!31113 (not c!58168)) b!484213))

(assert (= (and d!76957 res!288535) b!484211))

(assert (= (and b!484211 res!288536) b!484218))

(declare-fun m!464843 () Bool)

(assert (=> b!484217 m!464843))

(declare-fun m!464845 () Bool)

(assert (=> bm!31113 m!464845))

(declare-fun m!464847 () Bool)

(assert (=> b!484211 m!464847))

(declare-fun m!464849 () Bool)

(assert (=> d!76957 m!464849))

(assert (=> d!76957 m!464809))

(declare-fun m!464851 () Bool)

(assert (=> b!484218 m!464851))

(assert (=> b!484092 d!76957))

(declare-fun d!76967 () Bool)

(declare-fun res!288549 () Bool)

(declare-fun e!285068 () Bool)

(assert (=> d!76967 (=> res!288549 e!285068)))

(assert (=> d!76967 (= res!288549 (and (is-Cons!9314 (t!15548 l!956)) (= (_1!4628 (h!10170 (t!15548 l!956))) key!251)))))

(assert (=> d!76967 (= (containsKey!384 (t!15548 l!956) key!251) e!285068)))

(declare-fun b!484237 () Bool)

(declare-fun e!285069 () Bool)

(assert (=> b!484237 (= e!285068 e!285069)))

(declare-fun res!288550 () Bool)

(assert (=> b!484237 (=> (not res!288550) (not e!285069))))

(assert (=> b!484237 (= res!288550 (and (or (not (is-Cons!9314 (t!15548 l!956))) (bvsle (_1!4628 (h!10170 (t!15548 l!956))) key!251)) (is-Cons!9314 (t!15548 l!956)) (bvslt (_1!4628 (h!10170 (t!15548 l!956))) key!251)))))

(declare-fun b!484238 () Bool)

(assert (=> b!484238 (= e!285069 (containsKey!384 (t!15548 (t!15548 l!956)) key!251))))

(assert (= (and d!76967 (not res!288549)) b!484237))

(assert (= (and b!484237 res!288550) b!484238))

(declare-fun m!464855 () Bool)

(assert (=> b!484238 m!464855))

(assert (=> b!484090 d!76967))

(declare-fun d!76971 () Bool)

(declare-fun res!288551 () Bool)

(declare-fun e!285070 () Bool)

(assert (=> d!76971 (=> res!288551 e!285070)))

(assert (=> d!76971 (= res!288551 (and (is-Cons!9314 l!956) (= (_1!4628 (h!10170 l!956)) key!251)))))

(assert (=> d!76971 (= (containsKey!384 l!956 key!251) e!285070)))

(declare-fun b!484239 () Bool)

(declare-fun e!285071 () Bool)

(assert (=> b!484239 (= e!285070 e!285071)))

(declare-fun res!288552 () Bool)

(assert (=> b!484239 (=> (not res!288552) (not e!285071))))

(assert (=> b!484239 (= res!288552 (and (or (not (is-Cons!9314 l!956)) (bvsle (_1!4628 (h!10170 l!956)) key!251)) (is-Cons!9314 l!956) (bvslt (_1!4628 (h!10170 l!956)) key!251)))))

(declare-fun b!484240 () Bool)

(assert (=> b!484240 (= e!285071 (containsKey!384 (t!15548 l!956) key!251))))

(assert (= (and d!76971 (not res!288551)) b!484239))

(assert (= (and b!484239 res!288552) b!484240))

(assert (=> b!484240 m!464813))

(assert (=> b!484094 d!76971))

(declare-fun d!76973 () Bool)

(declare-fun res!288553 () Bool)

(declare-fun e!285072 () Bool)

(assert (=> d!76973 (=> res!288553 e!285072)))

(assert (=> d!76973 (= res!288553 (or (is-Nil!9315 l!956) (is-Nil!9315 (t!15548 l!956))))))

(assert (=> d!76973 (= (isStrictlySorted!418 l!956) e!285072)))

(declare-fun b!484241 () Bool)

(declare-fun e!285073 () Bool)

(assert (=> b!484241 (= e!285072 e!285073)))

(declare-fun res!288554 () Bool)

(assert (=> b!484241 (=> (not res!288554) (not e!285073))))

(assert (=> b!484241 (= res!288554 (bvslt (_1!4628 (h!10170 l!956)) (_1!4628 (h!10170 (t!15548 l!956)))))))

(declare-fun b!484242 () Bool)

(assert (=> b!484242 (= e!285073 (isStrictlySorted!418 (t!15548 l!956)))))

(assert (= (and d!76973 (not res!288553)) b!484241))

(assert (= (and b!484241 res!288554) b!484242))

(assert (=> b!484242 m!464807))

(assert (=> start!43850 d!76973))

