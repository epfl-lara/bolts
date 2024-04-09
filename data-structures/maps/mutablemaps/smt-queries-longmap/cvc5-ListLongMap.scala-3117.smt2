; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!43822 () Bool)

(assert start!43822)

(declare-fun b!483876 () Bool)

(declare-fun e!284831 () Bool)

(declare-fun e!284832 () Bool)

(assert (=> b!483876 (= e!284831 e!284832)))

(declare-fun res!288372 () Bool)

(assert (=> b!483876 (=> (not res!288372) (not e!284832))))

(declare-datatypes ((B!1124 0))(
  ( (B!1125 (val!7014 Int)) )
))
(declare-datatypes ((tuple2!9226 0))(
  ( (tuple2!9227 (_1!4623 (_ BitVec 64)) (_2!4623 B!1124)) )
))
(declare-datatypes ((List!9313 0))(
  ( (Nil!9310) (Cons!9309 (h!10165 tuple2!9226) (t!15543 List!9313)) )
))
(declare-fun l!956 () List!9313)

(declare-fun key!251 () (_ BitVec 64))

(assert (=> b!483876 (= res!288372 (and (is-Cons!9309 l!956) (bvslt (_1!4623 (h!10165 l!956)) key!251)))))

(declare-fun value!166 () B!1124)

(declare-fun lt!219305 () List!9313)

(declare-fun insertStrictlySorted!232 (List!9313 (_ BitVec 64) B!1124) List!9313)

(assert (=> b!483876 (= lt!219305 (insertStrictlySorted!232 l!956 key!251 value!166))))

(declare-fun b!483875 () Bool)

(declare-fun res!288374 () Bool)

(assert (=> b!483875 (=> (not res!288374) (not e!284831))))

(declare-fun containsKey!379 (List!9313 (_ BitVec 64)) Bool)

(assert (=> b!483875 (= res!288374 (not (containsKey!379 l!956 key!251)))))

(declare-fun res!288373 () Bool)

(assert (=> start!43822 (=> (not res!288373) (not e!284831))))

(declare-fun isStrictlySorted!413 (List!9313) Bool)

(assert (=> start!43822 (= res!288373 (isStrictlySorted!413 l!956))))

(assert (=> start!43822 e!284831))

(declare-fun e!284833 () Bool)

(assert (=> start!43822 e!284833))

(assert (=> start!43822 true))

(declare-fun tp_is_empty!13933 () Bool)

(assert (=> start!43822 tp_is_empty!13933))

(declare-fun b!483878 () Bool)

(declare-fun tp!43498 () Bool)

(assert (=> b!483878 (= e!284833 (and tp_is_empty!13933 tp!43498))))

(declare-fun b!483877 () Bool)

(assert (=> b!483877 (= e!284832 (not (isStrictlySorted!413 (t!15543 l!956))))))

(assert (= (and start!43822 res!288373) b!483875))

(assert (= (and b!483875 res!288374) b!483876))

(assert (= (and b!483876 res!288372) b!483877))

(assert (= (and start!43822 (is-Cons!9309 l!956)) b!483878))

(declare-fun m!464719 () Bool)

(assert (=> b!483876 m!464719))

(declare-fun m!464721 () Bool)

(assert (=> b!483875 m!464721))

(declare-fun m!464723 () Bool)

(assert (=> start!43822 m!464723))

(declare-fun m!464725 () Bool)

(assert (=> b!483877 m!464725))

(push 1)

(assert (not b!483877))

(assert (not start!43822))

(assert (not b!483876))

(assert (not b!483875))

(assert (not b!483878))

(assert tp_is_empty!13933)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!76921 () Bool)

(declare-fun res!288403 () Bool)

(declare-fun e!284862 () Bool)

(assert (=> d!76921 (=> res!288403 e!284862)))

(assert (=> d!76921 (= res!288403 (and (is-Cons!9309 l!956) (= (_1!4623 (h!10165 l!956)) key!251)))))

(assert (=> d!76921 (= (containsKey!379 l!956 key!251) e!284862)))

(declare-fun b!483913 () Bool)

(declare-fun e!284863 () Bool)

(assert (=> b!483913 (= e!284862 e!284863)))

(declare-fun res!288404 () Bool)

(assert (=> b!483913 (=> (not res!288404) (not e!284863))))

(assert (=> b!483913 (= res!288404 (and (or (not (is-Cons!9309 l!956)) (bvsle (_1!4623 (h!10165 l!956)) key!251)) (is-Cons!9309 l!956) (bvslt (_1!4623 (h!10165 l!956)) key!251)))))

(declare-fun b!483914 () Bool)

(assert (=> b!483914 (= e!284863 (containsKey!379 (t!15543 l!956) key!251))))

(assert (= (and d!76921 (not res!288403)) b!483913))

(assert (= (and b!483913 res!288404) b!483914))

(declare-fun m!464745 () Bool)

(assert (=> b!483914 m!464745))

(assert (=> b!483875 d!76921))

(declare-fun d!76927 () Bool)

(declare-fun res!288409 () Bool)

(declare-fun e!284868 () Bool)

(assert (=> d!76927 (=> res!288409 e!284868)))

(assert (=> d!76927 (= res!288409 (or (is-Nil!9310 l!956) (is-Nil!9310 (t!15543 l!956))))))

(assert (=> d!76927 (= (isStrictlySorted!413 l!956) e!284868)))

(declare-fun b!483919 () Bool)

(declare-fun e!284869 () Bool)

(assert (=> b!483919 (= e!284868 e!284869)))

(declare-fun res!288410 () Bool)

(assert (=> b!483919 (=> (not res!288410) (not e!284869))))

(assert (=> b!483919 (= res!288410 (bvslt (_1!4623 (h!10165 l!956)) (_1!4623 (h!10165 (t!15543 l!956)))))))

(declare-fun b!483920 () Bool)

(assert (=> b!483920 (= e!284869 (isStrictlySorted!413 (t!15543 l!956)))))

(assert (= (and d!76927 (not res!288409)) b!483919))

(assert (= (and b!483919 res!288410) b!483920))

(assert (=> b!483920 m!464725))

(assert (=> start!43822 d!76927))

(declare-fun d!76929 () Bool)

(declare-fun res!288411 () Bool)

(declare-fun e!284870 () Bool)

(assert (=> d!76929 (=> res!288411 e!284870)))

(assert (=> d!76929 (= res!288411 (or (is-Nil!9310 (t!15543 l!956)) (is-Nil!9310 (t!15543 (t!15543 l!956)))))))

(assert (=> d!76929 (= (isStrictlySorted!413 (t!15543 l!956)) e!284870)))

(declare-fun b!483921 () Bool)

(declare-fun e!284871 () Bool)

(assert (=> b!483921 (= e!284870 e!284871)))

(declare-fun res!288412 () Bool)

(assert (=> b!483921 (=> (not res!288412) (not e!284871))))

(assert (=> b!483921 (= res!288412 (bvslt (_1!4623 (h!10165 (t!15543 l!956))) (_1!4623 (h!10165 (t!15543 (t!15543 l!956))))))))

(declare-fun b!483922 () Bool)

(assert (=> b!483922 (= e!284871 (isStrictlySorted!413 (t!15543 (t!15543 l!956))))))

(assert (= (and d!76929 (not res!288411)) b!483921))

(assert (= (and b!483921 res!288412) b!483922))

(declare-fun m!464747 () Bool)

(assert (=> b!483922 m!464747))

(assert (=> b!483877 d!76929))

(declare-fun bm!31086 () Bool)

(declare-fun call!31089 () List!9313)

(declare-fun call!31091 () List!9313)

(assert (=> bm!31086 (= call!31089 call!31091)))

(declare-fun bm!31087 () Bool)

(declare-fun call!31090 () List!9313)

(assert (=> bm!31087 (= call!31090 call!31089)))

(declare-fun bm!31088 () Bool)

(declare-fun c!58133 () Bool)

(declare-fun e!284924 () List!9313)

(declare-fun $colon$colon!116 (List!9313 tuple2!9226) List!9313)

(assert (=> bm!31088 (= call!31091 ($colon$colon!116 e!284924 (ite c!58133 (h!10165 l!956) (tuple2!9227 key!251 value!166))))))

(declare-fun c!58132 () Bool)

(assert (=> bm!31088 (= c!58132 c!58133)))

(declare-fun b!484015 () Bool)

(declare-fun e!284925 () List!9313)

(assert (=> b!484015 (= e!284925 call!31089)))

(declare-fun b!484016 () Bool)

(declare-fun e!284926 () List!9313)

(assert (=> b!484016 (= e!284926 e!284925)))

(declare-fun c!58131 () Bool)

(assert (=> b!484016 (= c!58131 (and (is-Cons!9309 l!956) (= (_1!4623 (h!10165 l!956)) key!251)))))

(declare-fun b!484017 () Bool)

(declare-fun e!284928 () List!9313)

(assert (=> b!484017 (= e!284928 call!31090)))

(declare-fun b!484018 () Bool)

(declare-fun c!58130 () Bool)

(assert (=> b!484018 (= c!58130 (and (is-Cons!9309 l!956) (bvsgt (_1!4623 (h!10165 l!956)) key!251)))))

(assert (=> b!484018 (= e!284925 e!284928)))

(declare-fun b!484019 () Bool)

(assert (=> b!484019 (= e!284924 (insertStrictlySorted!232 (t!15543 l!956) key!251 value!166))))

(declare-fun b!484020 () Bool)

(assert (=> b!484020 (= e!284928 call!31090)))

(declare-fun b!484021 () Bool)

(assert (=> b!484021 (= e!284926 call!31091)))

(declare-fun d!76931 () Bool)

(declare-fun e!284927 () Bool)

(assert (=> d!76931 e!284927))

(declare-fun res!288442 () Bool)

(assert (=> d!76931 (=> (not res!288442) (not e!284927))))

(declare-fun lt!219320 () List!9313)

(assert (=> d!76931 (= res!288442 (isStrictlySorted!413 lt!219320))))

(assert (=> d!76931 (= lt!219320 e!284926)))

(assert (=> d!76931 (= c!58133 (and (is-Cons!9309 l!956) (bvslt (_1!4623 (h!10165 l!956)) key!251)))))

(assert (=> d!76931 (isStrictlySorted!413 l!956)))

(assert (=> d!76931 (= (insertStrictlySorted!232 l!956 key!251 value!166) lt!219320)))

(declare-fun b!484022 () Bool)

(assert (=> b!484022 (= e!284924 (ite c!58131 (t!15543 l!956) (ite c!58130 (Cons!9309 (h!10165 l!956) (t!15543 l!956)) Nil!9310)))))

(declare-fun b!484023 () Bool)

(declare-fun contains!2678 (List!9313 tuple2!9226) Bool)

(assert (=> b!484023 (= e!284927 (contains!2678 lt!219320 (tuple2!9227 key!251 value!166)))))

(declare-fun b!484024 () Bool)

(declare-fun res!288441 () Bool)

(assert (=> b!484024 (=> (not res!288441) (not e!284927))))

(assert (=> b!484024 (= res!288441 (containsKey!379 lt!219320 key!251))))

(assert (= (and d!76931 c!58133) b!484021))

(assert (= (and d!76931 (not c!58133)) b!484016))

(assert (= (and b!484016 c!58131) b!484015))

(assert (= (and b!484016 (not c!58131)) b!484018))

(assert (= (and b!484018 c!58130) b!484017))

(assert (= (and b!484018 (not c!58130)) b!484020))

(assert (= (or b!484017 b!484020) bm!31087))

(assert (= (or b!484015 bm!31087) bm!31086))

(assert (= (or b!484021 bm!31086) bm!31088))

(assert (= (and bm!31088 c!58132) b!484019))

(assert (= (and bm!31088 (not c!58132)) b!484022))

(assert (= (and d!76931 res!288442) b!484024))

(assert (= (and b!484024 res!288441) b!484023))

(declare-fun m!464773 () Bool)

(assert (=> b!484024 m!464773))

(declare-fun m!464775 () Bool)

(assert (=> b!484023 m!464775))

(declare-fun m!464777 () Bool)

(assert (=> b!484019 m!464777))

(declare-fun m!464779 () Bool)

(assert (=> d!76931 m!464779))

(assert (=> d!76931 m!464723))

(declare-fun m!464781 () Bool)

(assert (=> bm!31088 m!464781))

(assert (=> b!483876 d!76931))

(declare-fun b!484036 () Bool)

(declare-fun e!284936 () Bool)

(declare-fun tp!43510 () Bool)

(assert (=> b!484036 (= e!284936 (and tp_is_empty!13933 tp!43510))))

(assert (=> b!483878 (= tp!43498 e!284936)))

(assert (= (and b!483878 (is-Cons!9309 (t!15543 l!956))) b!484036))

(push 1)

