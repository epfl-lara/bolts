; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88746 () Bool)

(assert start!88746)

(declare-fun b!1018929 () Bool)

(declare-fun res!683262 () Bool)

(declare-fun e!573429 () Bool)

(assert (=> b!1018929 (=> (not res!683262) (not e!573429))))

(declare-datatypes ((B!1680 0))(
  ( (B!1681 (val!11924 Int)) )
))
(declare-datatypes ((tuple2!15484 0))(
  ( (tuple2!15485 (_1!7752 (_ BitVec 64)) (_2!7752 B!1680)) )
))
(declare-datatypes ((List!21726 0))(
  ( (Nil!21723) (Cons!21722 (h!22920 tuple2!15484) (t!30738 List!21726)) )
))
(declare-fun l!996 () List!21726)

(declare-fun isStrictlySorted!673 (List!21726) Bool)

(assert (=> b!1018929 (= res!683262 (isStrictlySorted!673 (t!30738 l!996)))))

(declare-fun b!1018930 () Bool)

(declare-fun res!683259 () Bool)

(declare-fun e!573428 () Bool)

(assert (=> b!1018930 (=> (not res!683259) (not e!573428))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!538 (List!21726 (_ BitVec 64)) Bool)

(assert (=> b!1018930 (= res!683259 (containsKey!538 l!996 key!261))))

(declare-fun res!683260 () Bool)

(assert (=> start!88746 (=> (not res!683260) (not e!573428))))

(assert (=> start!88746 (= res!683260 (isStrictlySorted!673 l!996))))

(assert (=> start!88746 e!573428))

(declare-fun e!573430 () Bool)

(assert (=> start!88746 e!573430))

(assert (=> start!88746 true))

(declare-fun tp_is_empty!23747 () Bool)

(assert (=> start!88746 tp_is_empty!23747))

(declare-fun b!1018931 () Bool)

(declare-fun tp!71120 () Bool)

(assert (=> b!1018931 (= e!573430 (and tp_is_empty!23747 tp!71120))))

(declare-fun b!1018932 () Bool)

(assert (=> b!1018932 (= e!573429 (not (containsKey!538 (t!30738 l!996) key!261)))))

(declare-fun b!1018933 () Bool)

(assert (=> b!1018933 (= e!573428 e!573429)))

(declare-fun res!683261 () Bool)

(assert (=> b!1018933 (=> (not res!683261) (not e!573429))))

(assert (=> b!1018933 (= res!683261 (and (is-Cons!21722 l!996) (bvslt (_1!7752 (h!22920 l!996)) key!261)))))

(declare-fun value!172 () B!1680)

(declare-fun lt!449598 () List!21726)

(declare-fun insertStrictlySorted!355 (List!21726 (_ BitVec 64) B!1680) List!21726)

(assert (=> b!1018933 (= lt!449598 (insertStrictlySorted!355 l!996 key!261 value!172))))

(assert (= (and start!88746 res!683260) b!1018930))

(assert (= (and b!1018930 res!683259) b!1018933))

(assert (= (and b!1018933 res!683261) b!1018929))

(assert (= (and b!1018929 res!683262) b!1018932))

(assert (= (and start!88746 (is-Cons!21722 l!996)) b!1018931))

(declare-fun m!939673 () Bool)

(assert (=> b!1018930 m!939673))

(declare-fun m!939675 () Bool)

(assert (=> b!1018932 m!939675))

(declare-fun m!939677 () Bool)

(assert (=> b!1018933 m!939677))

(declare-fun m!939679 () Bool)

(assert (=> start!88746 m!939679))

(declare-fun m!939681 () Bool)

(assert (=> b!1018929 m!939681))

(push 1)

(assert (not b!1018933))

(assert (not b!1018930))

(assert (not b!1018932))

(assert (not b!1018929))

(assert (not start!88746))

(assert (not b!1018931))

(assert tp_is_empty!23747)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun e!573486 () List!21726)

(declare-fun b!1019024 () Bool)

(assert (=> b!1019024 (= e!573486 (insertStrictlySorted!355 (t!30738 l!996) key!261 value!172))))

(declare-fun bm!43043 () Bool)

(declare-fun call!43048 () List!21726)

(declare-fun call!43046 () List!21726)

(assert (=> bm!43043 (= call!43048 call!43046)))

(declare-fun b!1019025 () Bool)

(declare-fun res!683298 () Bool)

(declare-fun e!573489 () Bool)

(assert (=> b!1019025 (=> (not res!683298) (not e!573489))))

(declare-fun lt!449606 () List!21726)

(assert (=> b!1019025 (= res!683298 (containsKey!538 lt!449606 key!261))))

(declare-fun b!1019026 () Bool)

(declare-fun e!573487 () List!21726)

(assert (=> b!1019026 (= e!573487 call!43048)))

(declare-fun b!1019027 () Bool)

(declare-fun e!573490 () List!21726)

(assert (=> b!1019027 (= e!573490 call!43046)))

(declare-fun b!1019029 () Bool)

(declare-fun contains!5916 (List!21726 tuple2!15484) Bool)

(assert (=> b!1019029 (= e!573489 (contains!5916 lt!449606 (tuple2!15485 key!261 value!172)))))

(declare-fun b!1019030 () Bool)

(declare-fun c!103215 () Bool)

(assert (=> b!1019030 (= c!103215 (and (is-Cons!21722 l!996) (bvsgt (_1!7752 (h!22920 l!996)) key!261)))))

(assert (=> b!1019030 (= e!573490 e!573487)))

(declare-fun bm!43044 () Bool)

(declare-fun call!43047 () List!21726)

(assert (=> bm!43044 (= call!43046 call!43047)))

(declare-fun b!1019031 () Bool)

(declare-fun e!573488 () List!21726)

(assert (=> b!1019031 (= e!573488 e!573490)))

(declare-fun c!103218 () Bool)

(assert (=> b!1019031 (= c!103218 (and (is-Cons!21722 l!996) (= (_1!7752 (h!22920 l!996)) key!261)))))

(declare-fun b!1019032 () Bool)

(assert (=> b!1019032 (= e!573487 call!43048)))

(declare-fun d!121953 () Bool)

(assert (=> d!121953 e!573489))

(declare-fun res!683297 () Bool)

(assert (=> d!121953 (=> (not res!683297) (not e!573489))))

(assert (=> d!121953 (= res!683297 (isStrictlySorted!673 lt!449606))))

(assert (=> d!121953 (= lt!449606 e!573488)))

(declare-fun c!103216 () Bool)

(assert (=> d!121953 (= c!103216 (and (is-Cons!21722 l!996) (bvslt (_1!7752 (h!22920 l!996)) key!261)))))

(assert (=> d!121953 (isStrictlySorted!673 l!996)))

(assert (=> d!121953 (= (insertStrictlySorted!355 l!996 key!261 value!172) lt!449606)))

(declare-fun b!1019028 () Bool)

(assert (=> b!1019028 (= e!573486 (ite c!103218 (t!30738 l!996) (ite c!103215 (Cons!21722 (h!22920 l!996) (t!30738 l!996)) Nil!21723)))))

(declare-fun bm!43045 () Bool)

(declare-fun $colon$colon!588 (List!21726 tuple2!15484) List!21726)

(assert (=> bm!43045 (= call!43047 ($colon$colon!588 e!573486 (ite c!103216 (h!22920 l!996) (tuple2!15485 key!261 value!172))))))

(declare-fun c!103217 () Bool)

(assert (=> bm!43045 (= c!103217 c!103216)))

(declare-fun b!1019033 () Bool)

(assert (=> b!1019033 (= e!573488 call!43047)))

(assert (= (and d!121953 c!103216) b!1019033))

(assert (= (and d!121953 (not c!103216)) b!1019031))

(assert (= (and b!1019031 c!103218) b!1019027))

(assert (= (and b!1019031 (not c!103218)) b!1019030))

(assert (= (and b!1019030 c!103215) b!1019032))

(assert (= (and b!1019030 (not c!103215)) b!1019026))

(assert (= (or b!1019032 b!1019026) bm!43043))

(assert (= (or b!1019027 bm!43043) bm!43044))

(assert (= (or b!1019033 bm!43044) bm!43045))

(assert (= (and bm!43045 c!103217) b!1019024))

(assert (= (and bm!43045 (not c!103217)) b!1019028))

(assert (= (and d!121953 res!683297) b!1019025))

(assert (= (and b!1019025 res!683298) b!1019029))

(declare-fun m!939695 () Bool)

(assert (=> b!1019024 m!939695))

(declare-fun m!939697 () Bool)

(assert (=> b!1019029 m!939697))

(declare-fun m!939699 () Bool)

(assert (=> b!1019025 m!939699))

(declare-fun m!939701 () Bool)

(assert (=> d!121953 m!939701))

(assert (=> d!121953 m!939679))

(declare-fun m!939703 () Bool)

(assert (=> bm!43045 m!939703))

(assert (=> b!1018933 d!121953))

(declare-fun d!121959 () Bool)

(declare-fun res!683315 () Bool)

(declare-fun e!573513 () Bool)

(assert (=> d!121959 (=> res!683315 e!573513)))

(assert (=> d!121959 (= res!683315 (and (is-Cons!21722 l!996) (= (_1!7752 (h!22920 l!996)) key!261)))))

(assert (=> d!121959 (= (containsKey!538 l!996 key!261) e!573513)))

(declare-fun b!1019063 () Bool)

(declare-fun e!573514 () Bool)

(assert (=> b!1019063 (= e!573513 e!573514)))

(declare-fun res!683316 () Bool)

(assert (=> b!1019063 (=> (not res!683316) (not e!573514))))

(assert (=> b!1019063 (= res!683316 (and (or (not (is-Cons!21722 l!996)) (bvsle (_1!7752 (h!22920 l!996)) key!261)) (is-Cons!21722 l!996) (bvslt (_1!7752 (h!22920 l!996)) key!261)))))

(declare-fun b!1019064 () Bool)

(assert (=> b!1019064 (= e!573514 (containsKey!538 (t!30738 l!996) key!261))))

(assert (= (and d!121959 (not res!683315)) b!1019063))

(assert (= (and b!1019063 res!683316) b!1019064))

(assert (=> b!1019064 m!939675))

(assert (=> b!1018930 d!121959))

(declare-fun d!121967 () Bool)

(declare-fun res!683323 () Bool)

(declare-fun e!573524 () Bool)

(assert (=> d!121967 (=> res!683323 e!573524)))

(assert (=> d!121967 (= res!683323 (or (is-Nil!21723 (t!30738 l!996)) (is-Nil!21723 (t!30738 (t!30738 l!996)))))))

(assert (=> d!121967 (= (isStrictlySorted!673 (t!30738 l!996)) e!573524)))

(declare-fun b!1019076 () Bool)

(declare-fun e!573525 () Bool)

(assert (=> b!1019076 (= e!573524 e!573525)))

(declare-fun res!683324 () Bool)

(assert (=> b!1019076 (=> (not res!683324) (not e!573525))))

(assert (=> b!1019076 (= res!683324 (bvslt (_1!7752 (h!22920 (t!30738 l!996))) (_1!7752 (h!22920 (t!30738 (t!30738 l!996))))))))

(declare-fun b!1019077 () Bool)

(assert (=> b!1019077 (= e!573525 (isStrictlySorted!673 (t!30738 (t!30738 l!996))))))

(assert (= (and d!121967 (not res!683323)) b!1019076))

(assert (= (and b!1019076 res!683324) b!1019077))

(declare-fun m!939721 () Bool)

(assert (=> b!1019077 m!939721))

(assert (=> b!1018929 d!121967))

(declare-fun d!121969 () Bool)

(declare-fun res!683325 () Bool)

(declare-fun e!573526 () Bool)

(assert (=> d!121969 (=> res!683325 e!573526)))

(assert (=> d!121969 (= res!683325 (and (is-Cons!21722 (t!30738 l!996)) (= (_1!7752 (h!22920 (t!30738 l!996))) key!261)))))

(assert (=> d!121969 (= (containsKey!538 (t!30738 l!996) key!261) e!573526)))

(declare-fun b!1019078 () Bool)

(declare-fun e!573527 () Bool)

(assert (=> b!1019078 (= e!573526 e!573527)))

(declare-fun res!683326 () Bool)

(assert (=> b!1019078 (=> (not res!683326) (not e!573527))))

(assert (=> b!1019078 (= res!683326 (and (or (not (is-Cons!21722 (t!30738 l!996))) (bvsle (_1!7752 (h!22920 (t!30738 l!996))) key!261)) (is-Cons!21722 (t!30738 l!996)) (bvslt (_1!7752 (h!22920 (t!30738 l!996))) key!261)))))

(declare-fun b!1019079 () Bool)

(assert (=> b!1019079 (= e!573527 (containsKey!538 (t!30738 (t!30738 l!996)) key!261))))

(assert (= (and d!121969 (not res!683325)) b!1019078))

(assert (= (and b!1019078 res!683326) b!1019079))

(declare-fun m!939723 () Bool)

(assert (=> b!1019079 m!939723))

(assert (=> b!1018932 d!121969))

(declare-fun d!121971 () Bool)

(declare-fun res!683327 () Bool)

(declare-fun e!573528 () Bool)

(assert (=> d!121971 (=> res!683327 e!573528)))

(assert (=> d!121971 (= res!683327 (or (is-Nil!21723 l!996) (is-Nil!21723 (t!30738 l!996))))))

(assert (=> d!121971 (= (isStrictlySorted!673 l!996) e!573528)))

(declare-fun b!1019080 () Bool)

(declare-fun e!573529 () Bool)

(assert (=> b!1019080 (= e!573528 e!573529)))

(declare-fun res!683328 () Bool)

(assert (=> b!1019080 (=> (not res!683328) (not e!573529))))

(assert (=> b!1019080 (= res!683328 (bvslt (_1!7752 (h!22920 l!996)) (_1!7752 (h!22920 (t!30738 l!996)))))))

(declare-fun b!1019081 () Bool)

(assert (=> b!1019081 (= e!573529 (isStrictlySorted!673 (t!30738 l!996)))))

(assert (= (and d!121971 (not res!683327)) b!1019080))

(assert (= (and b!1019080 res!683328) b!1019081))

(assert (=> b!1019081 m!939681))

(assert (=> start!88746 d!121971))

(declare-fun b!1019086 () Bool)

(declare-fun e!573532 () Bool)

(declare-fun tp!71129 () Bool)

(assert (=> b!1019086 (= e!573532 (and tp_is_empty!23747 tp!71129))))

(assert (=> b!1018931 (= tp!71120 e!573532)))

(assert (= (and b!1018931 (is-Cons!21722 (t!30738 l!996))) b!1019086))

(push 1)

