; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!506706 () Bool)

(assert start!506706)

(declare-fun b!4853162 () Bool)

(declare-fun e!3033902 () Bool)

(declare-datatypes ((V!17773 0))(
  ( (V!17774 (val!22327 Int)) )
))
(declare-datatypes ((K!17527 0))(
  ( (K!17528 (val!22328 Int)) )
))
(declare-datatypes ((tuple2!59490 0))(
  ( (tuple2!59491 (_1!33039 K!17527) (_2!33039 V!17773)) )
))
(declare-datatypes ((List!55802 0))(
  ( (Nil!55678) (Cons!55678 (h!62123 tuple2!59490) (t!363298 List!55802)) )
))
(declare-datatypes ((tuple2!59492 0))(
  ( (tuple2!59493 (_1!33040 (_ BitVec 64)) (_2!33040 List!55802)) )
))
(declare-datatypes ((List!55803 0))(
  ( (Nil!55679) (Cons!55679 (h!62124 tuple2!59492) (t!363299 List!55803)) )
))
(declare-datatypes ((ListLongMap!6553 0))(
  ( (ListLongMap!6554 (toList!7905 List!55803)) )
))
(declare-fun lm!2840 () ListLongMap!6553)

(declare-fun hash!467 () (_ BitVec 64))

(declare-datatypes ((Option!13742 0))(
  ( (None!13741) (Some!13741 (v!49549 List!55802)) )
))
(declare-fun getValueByKey!2752 (List!55803 (_ BitVec 64)) Option!13742)

(declare-fun apply!13486 (ListLongMap!6553 (_ BitVec 64)) List!55802)

(assert (=> b!4853162 (= e!3033902 (not (= (getValueByKey!2752 (toList!7905 lm!2840) hash!467) (Some!13741 (apply!13486 lm!2840 hash!467)))))))

(declare-fun b!4853163 () Bool)

(declare-fun e!3033901 () Bool)

(declare-fun tp!1365177 () Bool)

(assert (=> b!4853163 (= e!3033901 tp!1365177)))

(declare-fun res!2071876 () Bool)

(assert (=> start!506706 (=> (not res!2071876) (not e!3033902))))

(declare-fun lambda!242995 () Int)

(declare-fun forall!13004 (List!55803 Int) Bool)

(assert (=> start!506706 (= res!2071876 (forall!13004 (toList!7905 lm!2840) lambda!242995))))

(assert (=> start!506706 e!3033902))

(declare-fun inv!71390 (ListLongMap!6553) Bool)

(assert (=> start!506706 (and (inv!71390 lm!2840) e!3033901)))

(assert (=> start!506706 true))

(declare-fun tp_is_empty!35393 () Bool)

(assert (=> start!506706 tp_is_empty!35393))

(declare-fun b!4853164 () Bool)

(declare-fun res!2071877 () Bool)

(assert (=> b!4853164 (=> (not res!2071877) (not e!3033902))))

(declare-datatypes ((Hashable!7547 0))(
  ( (HashableExt!7546 (__x!33822 Int)) )
))
(declare-fun hashF!1802 () Hashable!7547)

(declare-fun key!6955 () K!17527)

(declare-fun hash!5678 (Hashable!7547 K!17527) (_ BitVec 64))

(assert (=> b!4853164 (= res!2071877 (not (= hash!467 (hash!5678 hashF!1802 key!6955))))))

(declare-fun b!4853165 () Bool)

(declare-fun res!2071874 () Bool)

(assert (=> b!4853165 (=> (not res!2071874) (not e!3033902))))

(declare-fun contains!19330 (ListLongMap!6553 (_ BitVec 64)) Bool)

(assert (=> b!4853165 (= res!2071874 (contains!19330 lm!2840 hash!467))))

(declare-fun b!4853166 () Bool)

(declare-fun res!2071875 () Bool)

(assert (=> b!4853166 (=> (not res!2071875) (not e!3033902))))

(declare-fun allKeysSameHashInMap!2861 (ListLongMap!6553 Hashable!7547) Bool)

(assert (=> b!4853166 (= res!2071875 (allKeysSameHashInMap!2861 lm!2840 hashF!1802))))

(assert (= (and start!506706 res!2071876) b!4853166))

(assert (= (and b!4853166 res!2071875) b!4853165))

(assert (= (and b!4853165 res!2071874) b!4853164))

(assert (= (and b!4853164 res!2071877) b!4853162))

(assert (= start!506706 b!4853163))

(declare-fun m!5851430 () Bool)

(assert (=> start!506706 m!5851430))

(declare-fun m!5851432 () Bool)

(assert (=> start!506706 m!5851432))

(declare-fun m!5851434 () Bool)

(assert (=> b!4853162 m!5851434))

(declare-fun m!5851436 () Bool)

(assert (=> b!4853162 m!5851436))

(declare-fun m!5851438 () Bool)

(assert (=> b!4853164 m!5851438))

(declare-fun m!5851440 () Bool)

(assert (=> b!4853165 m!5851440))

(declare-fun m!5851442 () Bool)

(assert (=> b!4853166 m!5851442))

(push 1)

(assert (not b!4853164))

(assert tp_is_empty!35393)

(assert (not b!4853165))

(assert (not b!4853163))

(assert (not b!4853166))

(assert (not b!4853162))

(assert (not start!506706))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1173171 () Bool)

(declare-fun d!1557901 () Bool)

(assert (= bs!1173171 (and d!1557901 start!506706)))

(declare-fun lambda!243001 () Int)

(assert (=> bs!1173171 (not (= lambda!243001 lambda!242995))))

(assert (=> d!1557901 true))

(assert (=> d!1557901 (= (allKeysSameHashInMap!2861 lm!2840 hashF!1802) (forall!13004 (toList!7905 lm!2840) lambda!243001))))

(declare-fun bs!1173172 () Bool)

(assert (= bs!1173172 d!1557901))

(declare-fun m!5851458 () Bool)

(assert (=> bs!1173172 m!5851458))

(assert (=> b!4853166 d!1557901))

(declare-fun b!4853193 () Bool)

(declare-fun e!3033913 () Option!13742)

(declare-fun e!3033914 () Option!13742)

(assert (=> b!4853193 (= e!3033913 e!3033914)))

(declare-fun c!825736 () Bool)

(assert (=> b!4853193 (= c!825736 (and (is-Cons!55679 (toList!7905 lm!2840)) (not (= (_1!33040 (h!62124 (toList!7905 lm!2840))) hash!467))))))

(declare-fun b!4853194 () Bool)

(assert (=> b!4853194 (= e!3033914 (getValueByKey!2752 (t!363299 (toList!7905 lm!2840)) hash!467))))

(declare-fun d!1557903 () Bool)

(declare-fun c!825735 () Bool)

(assert (=> d!1557903 (= c!825735 (and (is-Cons!55679 (toList!7905 lm!2840)) (= (_1!33040 (h!62124 (toList!7905 lm!2840))) hash!467)))))

(assert (=> d!1557903 (= (getValueByKey!2752 (toList!7905 lm!2840) hash!467) e!3033913)))

(declare-fun b!4853195 () Bool)

(assert (=> b!4853195 (= e!3033914 None!13741)))

(declare-fun b!4853192 () Bool)

(assert (=> b!4853192 (= e!3033913 (Some!13741 (_2!33040 (h!62124 (toList!7905 lm!2840)))))))

(assert (= (and d!1557903 c!825735) b!4853192))

(assert (= (and d!1557903 (not c!825735)) b!4853193))

(assert (= (and b!4853193 c!825736) b!4853194))

(assert (= (and b!4853193 (not c!825736)) b!4853195))

(declare-fun m!5851460 () Bool)

(assert (=> b!4853194 m!5851460))

(assert (=> b!4853162 d!1557903))

(declare-fun d!1557905 () Bool)

(declare-fun get!19126 (Option!13742) List!55802)

(assert (=> d!1557905 (= (apply!13486 lm!2840 hash!467) (get!19126 (getValueByKey!2752 (toList!7905 lm!2840) hash!467)))))

(declare-fun bs!1173173 () Bool)

(assert (= bs!1173173 d!1557905))

(assert (=> bs!1173173 m!5851434))

(assert (=> bs!1173173 m!5851434))

(declare-fun m!5851462 () Bool)

(assert (=> bs!1173173 m!5851462))

(assert (=> b!4853162 d!1557905))

(declare-fun d!1557907 () Bool)

(declare-fun res!2071894 () Bool)

(declare-fun e!3033919 () Bool)

(assert (=> d!1557907 (=> res!2071894 e!3033919)))

(assert (=> d!1557907 (= res!2071894 (is-Nil!55679 (toList!7905 lm!2840)))))

(assert (=> d!1557907 (= (forall!13004 (toList!7905 lm!2840) lambda!242995) e!3033919)))

(declare-fun b!4853200 () Bool)

(declare-fun e!3033920 () Bool)

(assert (=> b!4853200 (= e!3033919 e!3033920)))

(declare-fun res!2071895 () Bool)

(assert (=> b!4853200 (=> (not res!2071895) (not e!3033920))))

(declare-fun dynLambda!22380 (Int tuple2!59492) Bool)

(assert (=> b!4853200 (= res!2071895 (dynLambda!22380 lambda!242995 (h!62124 (toList!7905 lm!2840))))))

(declare-fun b!4853201 () Bool)

(assert (=> b!4853201 (= e!3033920 (forall!13004 (t!363299 (toList!7905 lm!2840)) lambda!242995))))

(assert (= (and d!1557907 (not res!2071894)) b!4853200))

(assert (= (and b!4853200 res!2071895) b!4853201))

(declare-fun b_lambda!193139 () Bool)

(assert (=> (not b_lambda!193139) (not b!4853200)))

(declare-fun m!5851464 () Bool)

(assert (=> b!4853200 m!5851464))

(declare-fun m!5851466 () Bool)

(assert (=> b!4853201 m!5851466))

(assert (=> start!506706 d!1557907))

(declare-fun d!1557911 () Bool)

(declare-fun isStrictlySorted!1100 (List!55803) Bool)

(assert (=> d!1557911 (= (inv!71390 lm!2840) (isStrictlySorted!1100 (toList!7905 lm!2840)))))

(declare-fun bs!1173174 () Bool)

(assert (= bs!1173174 d!1557911))

(declare-fun m!5851468 () Bool)

(assert (=> bs!1173174 m!5851468))

(assert (=> start!506706 d!1557911))

(declare-fun d!1557913 () Bool)

(declare-fun e!3033926 () Bool)

(assert (=> d!1557913 e!3033926))

(declare-fun res!2071898 () Bool)

(assert (=> d!1557913 (=> res!2071898 e!3033926)))

(declare-fun lt!1990625 () Bool)

(assert (=> d!1557913 (= res!2071898 (not lt!1990625))))

(declare-fun lt!1990627 () Bool)

(assert (=> d!1557913 (= lt!1990625 lt!1990627)))

(declare-datatypes ((Unit!145804 0))(
  ( (Unit!145805) )
))
(declare-fun lt!1990628 () Unit!145804)

(declare-fun e!3033925 () Unit!145804)

(assert (=> d!1557913 (= lt!1990628 e!3033925)))

(declare-fun c!825739 () Bool)

(assert (=> d!1557913 (= c!825739 lt!1990627)))

(declare-fun containsKey!4754 (List!55803 (_ BitVec 64)) Bool)

(assert (=> d!1557913 (= lt!1990627 (containsKey!4754 (toList!7905 lm!2840) hash!467))))

(assert (=> d!1557913 (= (contains!19330 lm!2840 hash!467) lt!1990625)))

(declare-fun b!4853210 () Bool)

(declare-fun lt!1990626 () Unit!145804)

(assert (=> b!4853210 (= e!3033925 lt!1990626)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2524 (List!55803 (_ BitVec 64)) Unit!145804)

(assert (=> b!4853210 (= lt!1990626 (lemmaContainsKeyImpliesGetValueByKeyDefined!2524 (toList!7905 lm!2840) hash!467))))

(declare-fun isDefined!10827 (Option!13742) Bool)

(assert (=> b!4853210 (isDefined!10827 (getValueByKey!2752 (toList!7905 lm!2840) hash!467))))

(declare-fun b!4853211 () Bool)

(declare-fun Unit!145806 () Unit!145804)

(assert (=> b!4853211 (= e!3033925 Unit!145806)))

(declare-fun b!4853212 () Bool)

(assert (=> b!4853212 (= e!3033926 (isDefined!10827 (getValueByKey!2752 (toList!7905 lm!2840) hash!467)))))

(assert (= (and d!1557913 c!825739) b!4853210))

(assert (= (and d!1557913 (not c!825739)) b!4853211))

(assert (= (and d!1557913 (not res!2071898)) b!4853212))

(declare-fun m!5851472 () Bool)

(assert (=> d!1557913 m!5851472))

(declare-fun m!5851474 () Bool)

(assert (=> b!4853210 m!5851474))

(assert (=> b!4853210 m!5851434))

(assert (=> b!4853210 m!5851434))

(declare-fun m!5851476 () Bool)

(assert (=> b!4853210 m!5851476))

(assert (=> b!4853212 m!5851434))

(assert (=> b!4853212 m!5851434))

(assert (=> b!4853212 m!5851476))

(assert (=> b!4853165 d!1557913))

(declare-fun d!1557917 () Bool)

(declare-fun hash!5680 (Hashable!7547 K!17527) (_ BitVec 64))

(assert (=> d!1557917 (= (hash!5678 hashF!1802 key!6955) (hash!5680 hashF!1802 key!6955))))

(declare-fun bs!1173177 () Bool)

(assert (= bs!1173177 d!1557917))

(declare-fun m!5851478 () Bool)

(assert (=> bs!1173177 m!5851478))

(assert (=> b!4853164 d!1557917))

(declare-fun b!4853217 () Bool)

(declare-fun e!3033929 () Bool)

(declare-fun tp!1365185 () Bool)

(declare-fun tp!1365186 () Bool)

(assert (=> b!4853217 (= e!3033929 (and tp!1365185 tp!1365186))))

(assert (=> b!4853163 (= tp!1365177 e!3033929)))

(assert (= (and b!4853163 (is-Cons!55679 (toList!7905 lm!2840))) b!4853217))

(declare-fun b_lambda!193141 () Bool)

(assert (= b_lambda!193139 (or start!506706 b_lambda!193141)))

(declare-fun bs!1173178 () Bool)

(declare-fun d!1557919 () Bool)

(assert (= bs!1173178 (and d!1557919 start!506706)))

(declare-fun noDuplicateKeys!2631 (List!55802) Bool)

(assert (=> bs!1173178 (= (dynLambda!22380 lambda!242995 (h!62124 (toList!7905 lm!2840))) (noDuplicateKeys!2631 (_2!33040 (h!62124 (toList!7905 lm!2840)))))))

(declare-fun m!5851480 () Bool)

(assert (=> bs!1173178 m!5851480))

(assert (=> b!4853200 d!1557919))

(push 1)

(assert (not b!4853212))

(assert (not b!4853210))

(assert (not d!1557913))

(assert tp_is_empty!35393)

(assert (not d!1557905))

(assert (not d!1557917))

(assert (not d!1557901))

(assert (not d!1557911))

(assert (not bs!1173178))

(assert (not b!4853217))

(assert (not b!4853194))

(assert (not b!4853201))

(assert (not b_lambda!193141))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557933 () Bool)

(declare-fun choose!35533 (Hashable!7547 K!17527) (_ BitVec 64))

(assert (=> d!1557933 (= (hash!5680 hashF!1802 key!6955) (choose!35533 hashF!1802 key!6955))))

(declare-fun bs!1173183 () Bool)

(assert (= bs!1173183 d!1557933))

(declare-fun m!5851502 () Bool)

(assert (=> bs!1173183 m!5851502))

(assert (=> d!1557917 d!1557933))

(declare-fun d!1557935 () Bool)

(declare-fun res!2071912 () Bool)

(declare-fun e!3033955 () Bool)

(assert (=> d!1557935 (=> res!2071912 e!3033955)))

(assert (=> d!1557935 (= res!2071912 (not (is-Cons!55678 (_2!33040 (h!62124 (toList!7905 lm!2840))))))))

(assert (=> d!1557935 (= (noDuplicateKeys!2631 (_2!33040 (h!62124 (toList!7905 lm!2840)))) e!3033955)))

(declare-fun b!4853254 () Bool)

(declare-fun e!3033956 () Bool)

(assert (=> b!4853254 (= e!3033955 e!3033956)))

(declare-fun res!2071913 () Bool)

(assert (=> b!4853254 (=> (not res!2071913) (not e!3033956))))

(declare-fun containsKey!4756 (List!55802 K!17527) Bool)

(assert (=> b!4853254 (= res!2071913 (not (containsKey!4756 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840)))) (_1!33039 (h!62123 (_2!33040 (h!62124 (toList!7905 lm!2840))))))))))

(declare-fun b!4853255 () Bool)

(assert (=> b!4853255 (= e!3033956 (noDuplicateKeys!2631 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840))))))))

(assert (= (and d!1557935 (not res!2071912)) b!4853254))

(assert (= (and b!4853254 res!2071913) b!4853255))

(declare-fun m!5851504 () Bool)

(assert (=> b!4853254 m!5851504))

(declare-fun m!5851506 () Bool)

(assert (=> b!4853255 m!5851506))

(assert (=> bs!1173178 d!1557935))

(declare-fun d!1557937 () Bool)

(declare-fun res!2071918 () Bool)

(declare-fun e!3033961 () Bool)

(assert (=> d!1557937 (=> res!2071918 e!3033961)))

(assert (=> d!1557937 (= res!2071918 (or (is-Nil!55679 (toList!7905 lm!2840)) (is-Nil!55679 (t!363299 (toList!7905 lm!2840)))))))

(assert (=> d!1557937 (= (isStrictlySorted!1100 (toList!7905 lm!2840)) e!3033961)))

(declare-fun b!4853260 () Bool)

(declare-fun e!3033962 () Bool)

(assert (=> b!4853260 (= e!3033961 e!3033962)))

(declare-fun res!2071919 () Bool)

(assert (=> b!4853260 (=> (not res!2071919) (not e!3033962))))

(assert (=> b!4853260 (= res!2071919 (bvslt (_1!33040 (h!62124 (toList!7905 lm!2840))) (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840))))))))

(declare-fun b!4853261 () Bool)

(assert (=> b!4853261 (= e!3033962 (isStrictlySorted!1100 (t!363299 (toList!7905 lm!2840))))))

(assert (= (and d!1557937 (not res!2071918)) b!4853260))

(assert (= (and b!4853260 res!2071919) b!4853261))

(declare-fun m!5851508 () Bool)

(assert (=> b!4853261 m!5851508))

(assert (=> d!1557911 d!1557937))

(declare-fun d!1557939 () Bool)

(assert (=> d!1557939 (isDefined!10827 (getValueByKey!2752 (toList!7905 lm!2840) hash!467))))

(declare-fun lt!1990643 () Unit!145804)

(declare-fun choose!35534 (List!55803 (_ BitVec 64)) Unit!145804)

(assert (=> d!1557939 (= lt!1990643 (choose!35534 (toList!7905 lm!2840) hash!467))))

(declare-fun e!3033965 () Bool)

(assert (=> d!1557939 e!3033965))

(declare-fun res!2071922 () Bool)

(assert (=> d!1557939 (=> (not res!2071922) (not e!3033965))))

(assert (=> d!1557939 (= res!2071922 (isStrictlySorted!1100 (toList!7905 lm!2840)))))

(assert (=> d!1557939 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2524 (toList!7905 lm!2840) hash!467) lt!1990643)))

(declare-fun b!4853264 () Bool)

(assert (=> b!4853264 (= e!3033965 (containsKey!4754 (toList!7905 lm!2840) hash!467))))

(assert (= (and d!1557939 res!2071922) b!4853264))

(assert (=> d!1557939 m!5851434))

(assert (=> d!1557939 m!5851434))

(assert (=> d!1557939 m!5851476))

(declare-fun m!5851510 () Bool)

(assert (=> d!1557939 m!5851510))

(assert (=> d!1557939 m!5851468))

(assert (=> b!4853264 m!5851472))

(assert (=> b!4853210 d!1557939))

(declare-fun d!1557941 () Bool)

(declare-fun isEmpty!29775 (Option!13742) Bool)

(assert (=> d!1557941 (= (isDefined!10827 (getValueByKey!2752 (toList!7905 lm!2840) hash!467)) (not (isEmpty!29775 (getValueByKey!2752 (toList!7905 lm!2840) hash!467))))))

(declare-fun bs!1173184 () Bool)

(assert (= bs!1173184 d!1557941))

(assert (=> bs!1173184 m!5851434))

(declare-fun m!5851512 () Bool)

(assert (=> bs!1173184 m!5851512))

(assert (=> b!4853210 d!1557941))

(assert (=> b!4853210 d!1557903))

(declare-fun d!1557943 () Bool)

(declare-fun res!2071923 () Bool)

(declare-fun e!3033966 () Bool)

(assert (=> d!1557943 (=> res!2071923 e!3033966)))

(assert (=> d!1557943 (= res!2071923 (is-Nil!55679 (toList!7905 lm!2840)))))

(assert (=> d!1557943 (= (forall!13004 (toList!7905 lm!2840) lambda!243001) e!3033966)))

(declare-fun b!4853265 () Bool)

(declare-fun e!3033967 () Bool)

(assert (=> b!4853265 (= e!3033966 e!3033967)))

(declare-fun res!2071924 () Bool)

(assert (=> b!4853265 (=> (not res!2071924) (not e!3033967))))

(assert (=> b!4853265 (= res!2071924 (dynLambda!22380 lambda!243001 (h!62124 (toList!7905 lm!2840))))))

(declare-fun b!4853266 () Bool)

(assert (=> b!4853266 (= e!3033967 (forall!13004 (t!363299 (toList!7905 lm!2840)) lambda!243001))))

(assert (= (and d!1557943 (not res!2071923)) b!4853265))

(assert (= (and b!4853265 res!2071924) b!4853266))

(declare-fun b_lambda!193147 () Bool)

(assert (=> (not b_lambda!193147) (not b!4853265)))

(declare-fun m!5851514 () Bool)

(assert (=> b!4853265 m!5851514))

(declare-fun m!5851516 () Bool)

(assert (=> b!4853266 m!5851516))

(assert (=> d!1557901 d!1557943))

(declare-fun d!1557945 () Bool)

(assert (=> d!1557945 (= (get!19126 (getValueByKey!2752 (toList!7905 lm!2840) hash!467)) (v!49549 (getValueByKey!2752 (toList!7905 lm!2840) hash!467)))))

(assert (=> d!1557905 d!1557945))

(assert (=> d!1557905 d!1557903))

(assert (=> b!4853212 d!1557941))

(assert (=> b!4853212 d!1557903))

(declare-fun b!4853268 () Bool)

(declare-fun e!3033968 () Option!13742)

(declare-fun e!3033969 () Option!13742)

(assert (=> b!4853268 (= e!3033968 e!3033969)))

(declare-fun c!825750 () Bool)

(assert (=> b!4853268 (= c!825750 (and (is-Cons!55679 (t!363299 (toList!7905 lm!2840))) (not (= (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) hash!467))))))

(declare-fun b!4853269 () Bool)

(assert (=> b!4853269 (= e!3033969 (getValueByKey!2752 (t!363299 (t!363299 (toList!7905 lm!2840))) hash!467))))

(declare-fun d!1557947 () Bool)

(declare-fun c!825749 () Bool)

(assert (=> d!1557947 (= c!825749 (and (is-Cons!55679 (t!363299 (toList!7905 lm!2840))) (= (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) hash!467)))))

(assert (=> d!1557947 (= (getValueByKey!2752 (t!363299 (toList!7905 lm!2840)) hash!467) e!3033968)))

(declare-fun b!4853270 () Bool)

(assert (=> b!4853270 (= e!3033969 None!13741)))

(declare-fun b!4853267 () Bool)

(assert (=> b!4853267 (= e!3033968 (Some!13741 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840))))))))

(assert (= (and d!1557947 c!825749) b!4853267))

(assert (= (and d!1557947 (not c!825749)) b!4853268))

(assert (= (and b!4853268 c!825750) b!4853269))

(assert (= (and b!4853268 (not c!825750)) b!4853270))

(declare-fun m!5851518 () Bool)

(assert (=> b!4853269 m!5851518))

(assert (=> b!4853194 d!1557947))

(declare-fun d!1557949 () Bool)

(declare-fun res!2071929 () Bool)

(declare-fun e!3033974 () Bool)

(assert (=> d!1557949 (=> res!2071929 e!3033974)))

(assert (=> d!1557949 (= res!2071929 (and (is-Cons!55679 (toList!7905 lm!2840)) (= (_1!33040 (h!62124 (toList!7905 lm!2840))) hash!467)))))

(assert (=> d!1557949 (= (containsKey!4754 (toList!7905 lm!2840) hash!467) e!3033974)))

(declare-fun b!4853275 () Bool)

(declare-fun e!3033975 () Bool)

(assert (=> b!4853275 (= e!3033974 e!3033975)))

(declare-fun res!2071930 () Bool)

(assert (=> b!4853275 (=> (not res!2071930) (not e!3033975))))

(assert (=> b!4853275 (= res!2071930 (and (or (not (is-Cons!55679 (toList!7905 lm!2840))) (bvsle (_1!33040 (h!62124 (toList!7905 lm!2840))) hash!467)) (is-Cons!55679 (toList!7905 lm!2840)) (bvslt (_1!33040 (h!62124 (toList!7905 lm!2840))) hash!467)))))

(declare-fun b!4853276 () Bool)

(assert (=> b!4853276 (= e!3033975 (containsKey!4754 (t!363299 (toList!7905 lm!2840)) hash!467))))

(assert (= (and d!1557949 (not res!2071929)) b!4853275))

(assert (= (and b!4853275 res!2071930) b!4853276))

(declare-fun m!5851520 () Bool)

(assert (=> b!4853276 m!5851520))

(assert (=> d!1557913 d!1557949))

(declare-fun d!1557951 () Bool)

(declare-fun res!2071931 () Bool)

(declare-fun e!3033976 () Bool)

(assert (=> d!1557951 (=> res!2071931 e!3033976)))

(assert (=> d!1557951 (= res!2071931 (is-Nil!55679 (t!363299 (toList!7905 lm!2840))))))

(assert (=> d!1557951 (= (forall!13004 (t!363299 (toList!7905 lm!2840)) lambda!242995) e!3033976)))

(declare-fun b!4853277 () Bool)

(declare-fun e!3033977 () Bool)

(assert (=> b!4853277 (= e!3033976 e!3033977)))

(declare-fun res!2071932 () Bool)

(assert (=> b!4853277 (=> (not res!2071932) (not e!3033977))))

(assert (=> b!4853277 (= res!2071932 (dynLambda!22380 lambda!242995 (h!62124 (t!363299 (toList!7905 lm!2840)))))))

(declare-fun b!4853278 () Bool)

(assert (=> b!4853278 (= e!3033977 (forall!13004 (t!363299 (t!363299 (toList!7905 lm!2840))) lambda!242995))))

(assert (= (and d!1557951 (not res!2071931)) b!4853277))

(assert (= (and b!4853277 res!2071932) b!4853278))

(declare-fun b_lambda!193149 () Bool)

(assert (=> (not b_lambda!193149) (not b!4853277)))

(declare-fun m!5851522 () Bool)

(assert (=> b!4853277 m!5851522))

(declare-fun m!5851524 () Bool)

(assert (=> b!4853278 m!5851524))

(assert (=> b!4853201 d!1557951))

(declare-fun tp_is_empty!35397 () Bool)

(declare-fun b!4853283 () Bool)

(declare-fun tp!1365195 () Bool)

(declare-fun e!3033980 () Bool)

(assert (=> b!4853283 (= e!3033980 (and tp_is_empty!35393 tp_is_empty!35397 tp!1365195))))

(assert (=> b!4853217 (= tp!1365185 e!3033980)))

(assert (= (and b!4853217 (is-Cons!55678 (_2!33040 (h!62124 (toList!7905 lm!2840))))) b!4853283))

(declare-fun b!4853284 () Bool)

(declare-fun e!3033981 () Bool)

(declare-fun tp!1365196 () Bool)

(declare-fun tp!1365197 () Bool)

(assert (=> b!4853284 (= e!3033981 (and tp!1365196 tp!1365197))))

(assert (=> b!4853217 (= tp!1365186 e!3033981)))

(assert (= (and b!4853217 (is-Cons!55679 (t!363299 (toList!7905 lm!2840)))) b!4853284))

(declare-fun b_lambda!193151 () Bool)

(assert (= b_lambda!193147 (or d!1557901 b_lambda!193151)))

(declare-fun bs!1173185 () Bool)

(declare-fun d!1557953 () Bool)

(assert (= bs!1173185 (and d!1557953 d!1557901)))

(declare-fun allKeysSameHash!2055 (List!55802 (_ BitVec 64) Hashable!7547) Bool)

(assert (=> bs!1173185 (= (dynLambda!22380 lambda!243001 (h!62124 (toList!7905 lm!2840))) (allKeysSameHash!2055 (_2!33040 (h!62124 (toList!7905 lm!2840))) (_1!33040 (h!62124 (toList!7905 lm!2840))) hashF!1802))))

(declare-fun m!5851526 () Bool)

(assert (=> bs!1173185 m!5851526))

(assert (=> b!4853265 d!1557953))

(declare-fun b_lambda!193153 () Bool)

(assert (= b_lambda!193149 (or start!506706 b_lambda!193153)))

(declare-fun bs!1173186 () Bool)

(declare-fun d!1557955 () Bool)

(assert (= bs!1173186 (and d!1557955 start!506706)))

(assert (=> bs!1173186 (= (dynLambda!22380 lambda!242995 (h!62124 (t!363299 (toList!7905 lm!2840)))) (noDuplicateKeys!2631 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840))))))))

(declare-fun m!5851528 () Bool)

(assert (=> bs!1173186 m!5851528))

(assert (=> b!4853277 d!1557955))

(push 1)

(assert (not b!4853266))

(assert (not b_lambda!193151))

(assert tp_is_empty!35393)

(assert (not b!4853264))

(assert (not b!4853278))

(assert tp_is_empty!35397)

(assert (not b!4853254))

(assert (not b_lambda!193141))

(assert (not d!1557939))

(assert (not b!4853269))

(assert (not d!1557933))

(assert (not b!4853261))

(assert (not b!4853284))

(assert (not b!4853255))

(assert (not bs!1173186))

(assert (not b!4853283))

(assert (not d!1557941))

(assert (not bs!1173185))

(assert (not b_lambda!193153))

(assert (not b!4853276))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1557981 () Bool)

(declare-fun res!2071958 () Bool)

(declare-fun e!3034013 () Bool)

(assert (=> d!1557981 (=> res!2071958 e!3034013)))

(assert (=> d!1557981 (= res!2071958 (or (is-Nil!55679 (t!363299 (toList!7905 lm!2840))) (is-Nil!55679 (t!363299 (t!363299 (toList!7905 lm!2840))))))))

(assert (=> d!1557981 (= (isStrictlySorted!1100 (t!363299 (toList!7905 lm!2840))) e!3034013)))

(declare-fun b!4853320 () Bool)

(declare-fun e!3034014 () Bool)

(assert (=> b!4853320 (= e!3034013 e!3034014)))

(declare-fun res!2071959 () Bool)

(assert (=> b!4853320 (=> (not res!2071959) (not e!3034014))))

(assert (=> b!4853320 (= res!2071959 (bvslt (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) (_1!33040 (h!62124 (t!363299 (t!363299 (toList!7905 lm!2840)))))))))

(declare-fun b!4853321 () Bool)

(assert (=> b!4853321 (= e!3034014 (isStrictlySorted!1100 (t!363299 (t!363299 (toList!7905 lm!2840)))))))

(assert (= (and d!1557981 (not res!2071958)) b!4853320))

(assert (= (and b!4853320 res!2071959) b!4853321))

(declare-fun m!5851558 () Bool)

(assert (=> b!4853321 m!5851558))

(assert (=> b!4853261 d!1557981))

(declare-fun d!1557983 () Bool)

(declare-fun res!2071960 () Bool)

(declare-fun e!3034015 () Bool)

(assert (=> d!1557983 (=> res!2071960 e!3034015)))

(assert (=> d!1557983 (= res!2071960 (not (is-Cons!55678 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))))))))

(assert (=> d!1557983 (= (noDuplicateKeys!2631 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840))))) e!3034015)))

(declare-fun b!4853322 () Bool)

(declare-fun e!3034016 () Bool)

(assert (=> b!4853322 (= e!3034015 e!3034016)))

(declare-fun res!2071961 () Bool)

(assert (=> b!4853322 (=> (not res!2071961) (not e!3034016))))

(assert (=> b!4853322 (= res!2071961 (not (containsKey!4756 (t!363298 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840))))) (_1!33039 (h!62123 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))))))))))

(declare-fun b!4853323 () Bool)

(assert (=> b!4853323 (= e!3034016 (noDuplicateKeys!2631 (t!363298 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))))))))

(assert (= (and d!1557983 (not res!2071960)) b!4853322))

(assert (= (and b!4853322 res!2071961) b!4853323))

(declare-fun m!5851560 () Bool)

(assert (=> b!4853322 m!5851560))

(declare-fun m!5851562 () Bool)

(assert (=> b!4853323 m!5851562))

(assert (=> bs!1173186 d!1557983))

(assert (=> b!4853264 d!1557949))

(declare-fun d!1557985 () Bool)

(declare-fun res!2071966 () Bool)

(declare-fun e!3034021 () Bool)

(assert (=> d!1557985 (=> res!2071966 e!3034021)))

(assert (=> d!1557985 (= res!2071966 (and (is-Cons!55678 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840))))) (= (_1!33039 (h!62123 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840)))))) (_1!33039 (h!62123 (_2!33040 (h!62124 (toList!7905 lm!2840))))))))))

(assert (=> d!1557985 (= (containsKey!4756 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840)))) (_1!33039 (h!62123 (_2!33040 (h!62124 (toList!7905 lm!2840)))))) e!3034021)))

(declare-fun b!4853328 () Bool)

(declare-fun e!3034022 () Bool)

(assert (=> b!4853328 (= e!3034021 e!3034022)))

(declare-fun res!2071967 () Bool)

(assert (=> b!4853328 (=> (not res!2071967) (not e!3034022))))

(assert (=> b!4853328 (= res!2071967 (is-Cons!55678 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840))))))))

(declare-fun b!4853329 () Bool)

(assert (=> b!4853329 (= e!3034022 (containsKey!4756 (t!363298 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840))))) (_1!33039 (h!62123 (_2!33040 (h!62124 (toList!7905 lm!2840)))))))))

(assert (= (and d!1557985 (not res!2071966)) b!4853328))

(assert (= (and b!4853328 res!2071967) b!4853329))

(declare-fun m!5851564 () Bool)

(assert (=> b!4853329 m!5851564))

(assert (=> b!4853254 d!1557985))

(assert (=> d!1557939 d!1557941))

(assert (=> d!1557939 d!1557903))

(declare-fun d!1557987 () Bool)

(assert (=> d!1557987 (isDefined!10827 (getValueByKey!2752 (toList!7905 lm!2840) hash!467))))

(assert (=> d!1557987 true))

(declare-fun _$13!1657 () Unit!145804)

(assert (=> d!1557987 (= (choose!35534 (toList!7905 lm!2840) hash!467) _$13!1657)))

(declare-fun bs!1173191 () Bool)

(assert (= bs!1173191 d!1557987))

(assert (=> bs!1173191 m!5851434))

(assert (=> bs!1173191 m!5851434))

(assert (=> bs!1173191 m!5851476))

(assert (=> d!1557939 d!1557987))

(assert (=> d!1557939 d!1557937))

(declare-fun d!1557989 () Bool)

(declare-fun res!2071968 () Bool)

(declare-fun e!3034023 () Bool)

(assert (=> d!1557989 (=> res!2071968 e!3034023)))

(assert (=> d!1557989 (= res!2071968 (not (is-Cons!55678 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840)))))))))

(assert (=> d!1557989 (= (noDuplicateKeys!2631 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840))))) e!3034023)))

(declare-fun b!4853330 () Bool)

(declare-fun e!3034024 () Bool)

(assert (=> b!4853330 (= e!3034023 e!3034024)))

(declare-fun res!2071969 () Bool)

(assert (=> b!4853330 (=> (not res!2071969) (not e!3034024))))

(assert (=> b!4853330 (= res!2071969 (not (containsKey!4756 (t!363298 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840))))) (_1!33039 (h!62123 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840)))))))))))

(declare-fun b!4853331 () Bool)

(assert (=> b!4853331 (= e!3034024 (noDuplicateKeys!2631 (t!363298 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840)))))))))

(assert (= (and d!1557989 (not res!2071968)) b!4853330))

(assert (= (and b!4853330 res!2071969) b!4853331))

(declare-fun m!5851566 () Bool)

(assert (=> b!4853330 m!5851566))

(declare-fun m!5851568 () Bool)

(assert (=> b!4853331 m!5851568))

(assert (=> b!4853255 d!1557989))

(declare-fun d!1557991 () Bool)

(assert (=> d!1557991 (= (isEmpty!29775 (getValueByKey!2752 (toList!7905 lm!2840) hash!467)) (not (is-Some!13741 (getValueByKey!2752 (toList!7905 lm!2840) hash!467))))))

(assert (=> d!1557941 d!1557991))

(declare-fun d!1557993 () Bool)

(declare-fun res!2071970 () Bool)

(declare-fun e!3034025 () Bool)

(assert (=> d!1557993 (=> res!2071970 e!3034025)))

(assert (=> d!1557993 (= res!2071970 (and (is-Cons!55679 (t!363299 (toList!7905 lm!2840))) (= (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) hash!467)))))

(assert (=> d!1557993 (= (containsKey!4754 (t!363299 (toList!7905 lm!2840)) hash!467) e!3034025)))

(declare-fun b!4853332 () Bool)

(declare-fun e!3034026 () Bool)

(assert (=> b!4853332 (= e!3034025 e!3034026)))

(declare-fun res!2071971 () Bool)

(assert (=> b!4853332 (=> (not res!2071971) (not e!3034026))))

(assert (=> b!4853332 (= res!2071971 (and (or (not (is-Cons!55679 (t!363299 (toList!7905 lm!2840)))) (bvsle (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) hash!467)) (is-Cons!55679 (t!363299 (toList!7905 lm!2840))) (bvslt (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) hash!467)))))

(declare-fun b!4853333 () Bool)

(assert (=> b!4853333 (= e!3034026 (containsKey!4754 (t!363299 (t!363299 (toList!7905 lm!2840))) hash!467))))

(assert (= (and d!1557993 (not res!2071970)) b!4853332))

(assert (= (and b!4853332 res!2071971) b!4853333))

(declare-fun m!5851570 () Bool)

(assert (=> b!4853333 m!5851570))

(assert (=> b!4853276 d!1557993))

(declare-fun d!1557995 () Bool)

(assert (=> d!1557995 true))

(assert (=> d!1557995 true))

(declare-fun res!2071974 () (_ BitVec 64))

(assert (=> d!1557995 (= (choose!35533 hashF!1802 key!6955) res!2071974)))

(assert (=> d!1557933 d!1557995))

(declare-fun d!1557997 () Bool)

(declare-fun res!2071975 () Bool)

(declare-fun e!3034027 () Bool)

(assert (=> d!1557997 (=> res!2071975 e!3034027)))

(assert (=> d!1557997 (= res!2071975 (is-Nil!55679 (t!363299 (t!363299 (toList!7905 lm!2840)))))))

(assert (=> d!1557997 (= (forall!13004 (t!363299 (t!363299 (toList!7905 lm!2840))) lambda!242995) e!3034027)))

(declare-fun b!4853334 () Bool)

(declare-fun e!3034028 () Bool)

(assert (=> b!4853334 (= e!3034027 e!3034028)))

(declare-fun res!2071976 () Bool)

(assert (=> b!4853334 (=> (not res!2071976) (not e!3034028))))

(assert (=> b!4853334 (= res!2071976 (dynLambda!22380 lambda!242995 (h!62124 (t!363299 (t!363299 (toList!7905 lm!2840))))))))

(declare-fun b!4853335 () Bool)

(assert (=> b!4853335 (= e!3034028 (forall!13004 (t!363299 (t!363299 (t!363299 (toList!7905 lm!2840)))) lambda!242995))))

(assert (= (and d!1557997 (not res!2071975)) b!4853334))

(assert (= (and b!4853334 res!2071976) b!4853335))

(declare-fun b_lambda!193163 () Bool)

(assert (=> (not b_lambda!193163) (not b!4853334)))

(declare-fun m!5851572 () Bool)

(assert (=> b!4853334 m!5851572))

(declare-fun m!5851574 () Bool)

(assert (=> b!4853335 m!5851574))

(assert (=> b!4853278 d!1557997))

(declare-fun d!1557999 () Bool)

(assert (=> d!1557999 true))

(assert (=> d!1557999 true))

(declare-fun lambda!243007 () Int)

(declare-fun forall!13006 (List!55802 Int) Bool)

(assert (=> d!1557999 (= (allKeysSameHash!2055 (_2!33040 (h!62124 (toList!7905 lm!2840))) (_1!33040 (h!62124 (toList!7905 lm!2840))) hashF!1802) (forall!13006 (_2!33040 (h!62124 (toList!7905 lm!2840))) lambda!243007))))

(declare-fun bs!1173192 () Bool)

(assert (= bs!1173192 d!1557999))

(declare-fun m!5851576 () Bool)

(assert (=> bs!1173192 m!5851576))

(assert (=> bs!1173185 d!1557999))

(declare-fun b!4853341 () Bool)

(declare-fun e!3034029 () Option!13742)

(declare-fun e!3034030 () Option!13742)

(assert (=> b!4853341 (= e!3034029 e!3034030)))

(declare-fun c!825754 () Bool)

(assert (=> b!4853341 (= c!825754 (and (is-Cons!55679 (t!363299 (t!363299 (toList!7905 lm!2840)))) (not (= (_1!33040 (h!62124 (t!363299 (t!363299 (toList!7905 lm!2840))))) hash!467))))))

(declare-fun b!4853342 () Bool)

(assert (=> b!4853342 (= e!3034030 (getValueByKey!2752 (t!363299 (t!363299 (t!363299 (toList!7905 lm!2840)))) hash!467))))

(declare-fun d!1558001 () Bool)

(declare-fun c!825753 () Bool)

(assert (=> d!1558001 (= c!825753 (and (is-Cons!55679 (t!363299 (t!363299 (toList!7905 lm!2840)))) (= (_1!33040 (h!62124 (t!363299 (t!363299 (toList!7905 lm!2840))))) hash!467)))))

(assert (=> d!1558001 (= (getValueByKey!2752 (t!363299 (t!363299 (toList!7905 lm!2840))) hash!467) e!3034029)))

(declare-fun b!4853343 () Bool)

(assert (=> b!4853343 (= e!3034030 None!13741)))

(declare-fun b!4853340 () Bool)

(assert (=> b!4853340 (= e!3034029 (Some!13741 (_2!33040 (h!62124 (t!363299 (t!363299 (toList!7905 lm!2840)))))))))

(assert (= (and d!1558001 c!825753) b!4853340))

(assert (= (and d!1558001 (not c!825753)) b!4853341))

(assert (= (and b!4853341 c!825754) b!4853342))

(assert (= (and b!4853341 (not c!825754)) b!4853343))

(declare-fun m!5851578 () Bool)

(assert (=> b!4853342 m!5851578))

(assert (=> b!4853269 d!1558001))

(declare-fun d!1558003 () Bool)

(declare-fun res!2071977 () Bool)

(declare-fun e!3034031 () Bool)

(assert (=> d!1558003 (=> res!2071977 e!3034031)))

(assert (=> d!1558003 (= res!2071977 (is-Nil!55679 (t!363299 (toList!7905 lm!2840))))))

(assert (=> d!1558003 (= (forall!13004 (t!363299 (toList!7905 lm!2840)) lambda!243001) e!3034031)))

(declare-fun b!4853344 () Bool)

(declare-fun e!3034032 () Bool)

(assert (=> b!4853344 (= e!3034031 e!3034032)))

(declare-fun res!2071978 () Bool)

(assert (=> b!4853344 (=> (not res!2071978) (not e!3034032))))

(assert (=> b!4853344 (= res!2071978 (dynLambda!22380 lambda!243001 (h!62124 (t!363299 (toList!7905 lm!2840)))))))

(declare-fun b!4853345 () Bool)

(assert (=> b!4853345 (= e!3034032 (forall!13004 (t!363299 (t!363299 (toList!7905 lm!2840))) lambda!243001))))

(assert (= (and d!1558003 (not res!2071977)) b!4853344))

(assert (= (and b!4853344 res!2071978) b!4853345))

(declare-fun b_lambda!193165 () Bool)

(assert (=> (not b_lambda!193165) (not b!4853344)))

(declare-fun m!5851580 () Bool)

(assert (=> b!4853344 m!5851580))

(declare-fun m!5851582 () Bool)

(assert (=> b!4853345 m!5851582))

(assert (=> b!4853266 d!1558003))

(declare-fun tp!1365203 () Bool)

(declare-fun b!4853346 () Bool)

(declare-fun e!3034033 () Bool)

(assert (=> b!4853346 (= e!3034033 (and tp_is_empty!35393 tp_is_empty!35397 tp!1365203))))

(assert (=> b!4853284 (= tp!1365196 e!3034033)))

(assert (= (and b!4853284 (is-Cons!55678 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))))) b!4853346))

(declare-fun b!4853347 () Bool)

(declare-fun e!3034034 () Bool)

(declare-fun tp!1365204 () Bool)

(declare-fun tp!1365205 () Bool)

(assert (=> b!4853347 (= e!3034034 (and tp!1365204 tp!1365205))))

(assert (=> b!4853284 (= tp!1365197 e!3034034)))

(assert (= (and b!4853284 (is-Cons!55679 (t!363299 (t!363299 (toList!7905 lm!2840))))) b!4853347))

(declare-fun b!4853348 () Bool)

(declare-fun e!3034035 () Bool)

(declare-fun tp!1365206 () Bool)

(assert (=> b!4853348 (= e!3034035 (and tp_is_empty!35393 tp_is_empty!35397 tp!1365206))))

(assert (=> b!4853283 (= tp!1365195 e!3034035)))

(assert (= (and b!4853283 (is-Cons!55678 (t!363298 (_2!33040 (h!62124 (toList!7905 lm!2840)))))) b!4853348))

(declare-fun b_lambda!193167 () Bool)

(assert (= b_lambda!193163 (or start!506706 b_lambda!193167)))

(declare-fun bs!1173193 () Bool)

(declare-fun d!1558005 () Bool)

(assert (= bs!1173193 (and d!1558005 start!506706)))

(assert (=> bs!1173193 (= (dynLambda!22380 lambda!242995 (h!62124 (t!363299 (t!363299 (toList!7905 lm!2840))))) (noDuplicateKeys!2631 (_2!33040 (h!62124 (t!363299 (t!363299 (toList!7905 lm!2840)))))))))

(declare-fun m!5851584 () Bool)

(assert (=> bs!1173193 m!5851584))

(assert (=> b!4853334 d!1558005))

(declare-fun b_lambda!193169 () Bool)

(assert (= b_lambda!193165 (or d!1557901 b_lambda!193169)))

(declare-fun bs!1173194 () Bool)

(declare-fun d!1558007 () Bool)

(assert (= bs!1173194 (and d!1558007 d!1557901)))

(assert (=> bs!1173194 (= (dynLambda!22380 lambda!243001 (h!62124 (t!363299 (toList!7905 lm!2840)))) (allKeysSameHash!2055 (_2!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) (_1!33040 (h!62124 (t!363299 (toList!7905 lm!2840)))) hashF!1802))))

(declare-fun m!5851586 () Bool)

(assert (=> bs!1173194 m!5851586))

(assert (=> b!4853344 d!1558007))

(push 1)

(assert (not b!4853321))

(assert (not d!1557999))

(assert (not b!4853322))

(assert (not b!4853348))

(assert tp_is_empty!35397)

(assert (not b_lambda!193141))

(assert (not b_lambda!193167))

(assert (not b!4853330))

(assert (not b!4853346))

(assert (not bs!1173194))

(assert (not d!1557987))

(assert (not bs!1173193))

(assert (not b!4853335))

(assert (not b_lambda!193151))

(assert tp_is_empty!35393)

(assert (not b!4853345))

(assert (not b!4853329))

(assert (not b!4853331))

(assert (not b!4853323))

(assert (not b!4853347))

(assert (not b_lambda!193153))

(assert (not b_lambda!193169))

(assert (not b!4853342))

(assert (not b!4853333))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

