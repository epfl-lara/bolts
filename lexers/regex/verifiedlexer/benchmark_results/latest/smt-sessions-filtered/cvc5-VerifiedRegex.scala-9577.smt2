; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504054 () Bool)

(assert start!504054)

(declare-fun b!4841972 () Bool)

(declare-fun res!2064616 () Bool)

(declare-fun e!3026053 () Bool)

(assert (=> b!4841972 (=> (not res!2064616) (not e!3026053))))

(declare-datatypes ((K!17172 0))(
  ( (K!17173 (val!22043 Int)) )
))
(declare-datatypes ((V!17418 0))(
  ( (V!17419 (val!22044 Int)) )
))
(declare-datatypes ((tuple2!58958 0))(
  ( (tuple2!58959 (_1!32773 K!17172) (_2!32773 V!17418)) )
))
(declare-datatypes ((List!55531 0))(
  ( (Nil!55407) (Cons!55407 (h!61842 tuple2!58958) (t!363027 List!55531)) )
))
(declare-datatypes ((tuple2!58960 0))(
  ( (tuple2!58961 (_1!32774 (_ BitVec 64)) (_2!32774 List!55531)) )
))
(declare-datatypes ((List!55532 0))(
  ( (Nil!55408) (Cons!55408 (h!61843 tuple2!58960) (t!363028 List!55532)) )
))
(declare-datatypes ((ListLongMap!6345 0))(
  ( (ListLongMap!6346 (toList!7789 List!55532)) )
))
(declare-fun lm!2671 () ListLongMap!6345)

(declare-fun key!6540 () K!17172)

(declare-fun containsKeyBiggerList!725 (List!55532 K!17172) Bool)

(assert (=> b!4841972 (= res!2064616 (containsKeyBiggerList!725 (toList!7789 lm!2671) key!6540))))

(declare-fun b!4841973 () Bool)

(declare-fun res!2064615 () Bool)

(assert (=> b!4841973 (=> (not res!2064615) (not e!3026053))))

(declare-datatypes ((Hashable!7441 0))(
  ( (HashableExt!7440 (__x!33716 Int)) )
))
(declare-fun hashF!1662 () Hashable!7441)

(declare-fun allKeysSameHashInMap!2757 (ListLongMap!6345 Hashable!7441) Bool)

(assert (=> b!4841973 (= res!2064615 (allKeysSameHashInMap!2757 lm!2671 hashF!1662))))

(declare-fun b!4841974 () Bool)

(declare-fun res!2064617 () Bool)

(assert (=> b!4841974 (=> (not res!2064617) (not e!3026053))))

(assert (=> b!4841974 (= res!2064617 (is-Cons!55408 (toList!7789 lm!2671)))))

(declare-fun b!4841976 () Bool)

(declare-fun res!2064610 () Bool)

(assert (=> b!4841976 (=> (not res!2064610) (not e!3026053))))

(declare-datatypes ((ListMap!7127 0))(
  ( (ListMap!7128 (toList!7790 List!55531)) )
))
(declare-fun extractMap!2783 (List!55532) ListMap!7127)

(declare-fun addToMapMapFromBucket!1923 (List!55531 ListMap!7127) ListMap!7127)

(assert (=> b!4841976 (= res!2064610 (= (extractMap!2783 (toList!7789 lm!2671)) (addToMapMapFromBucket!1923 (_2!32774 (h!61843 (toList!7789 lm!2671))) (extractMap!2783 (t!363028 (toList!7789 lm!2671))))))))

(declare-fun b!4841977 () Bool)

(declare-fun e!3026055 () Bool)

(assert (=> b!4841977 (= e!3026053 (not e!3026055))))

(declare-fun res!2064612 () Bool)

(assert (=> b!4841977 (=> res!2064612 e!3026055)))

(assert (=> b!4841977 (= res!2064612 (not (containsKeyBiggerList!725 (t!363028 (toList!7789 lm!2671)) key!6540)))))

(declare-fun tail!9501 (List!55532) List!55532)

(assert (=> b!4841977 (containsKeyBiggerList!725 (tail!9501 (toList!7789 lm!2671)) key!6540)))

(declare-datatypes ((Unit!145160 0))(
  ( (Unit!145161) )
))
(declare-fun lt!1985846 () Unit!145160)

(declare-fun lemmaInBiggerListButNotHeadThenTail!57 (ListLongMap!6345 K!17172 Hashable!7441) Unit!145160)

(assert (=> b!4841977 (= lt!1985846 (lemmaInBiggerListButNotHeadThenTail!57 lm!2671 key!6540 hashF!1662))))

(declare-fun b!4841978 () Bool)

(declare-fun e!3026052 () Bool)

(declare-fun tp!1363997 () Bool)

(assert (=> b!4841978 (= e!3026052 tp!1363997)))

(declare-fun b!4841979 () Bool)

(declare-fun res!2064611 () Bool)

(assert (=> b!4841979 (=> (not res!2064611) (not e!3026053))))

(declare-fun e!3026056 () Bool)

(assert (=> b!4841979 (= res!2064611 e!3026056)))

(declare-fun res!2064618 () Bool)

(assert (=> b!4841979 (=> res!2064618 e!3026056)))

(assert (=> b!4841979 (= res!2064618 (not (is-Cons!55408 (toList!7789 lm!2671))))))

(declare-fun b!4841980 () Bool)

(declare-fun e!3026054 () Bool)

(assert (=> b!4841980 (= e!3026055 e!3026054)))

(declare-fun res!2064619 () Bool)

(assert (=> b!4841980 (=> res!2064619 e!3026054)))

(declare-fun lt!1985845 () ListLongMap!6345)

(declare-fun lambda!241511 () Int)

(declare-fun forall!12871 (List!55532 Int) Bool)

(assert (=> b!4841980 (= res!2064619 (not (forall!12871 (toList!7789 lt!1985845) lambda!241511)))))

(declare-fun tail!9502 (ListLongMap!6345) ListLongMap!6345)

(assert (=> b!4841980 (= lt!1985845 (tail!9502 lm!2671))))

(declare-fun res!2064614 () Bool)

(assert (=> start!504054 (=> (not res!2064614) (not e!3026053))))

(assert (=> start!504054 (= res!2064614 (forall!12871 (toList!7789 lm!2671) lambda!241511))))

(assert (=> start!504054 e!3026053))

(declare-fun inv!71073 (ListLongMap!6345) Bool)

(assert (=> start!504054 (and (inv!71073 lm!2671) e!3026052)))

(assert (=> start!504054 true))

(declare-fun tp_is_empty!34989 () Bool)

(assert (=> start!504054 tp_is_empty!34989))

(declare-fun b!4841975 () Bool)

(declare-fun containsKey!4610 (List!55531 K!17172) Bool)

(assert (=> b!4841975 (= e!3026056 (not (containsKey!4610 (_2!32774 (h!61843 (toList!7789 lm!2671))) key!6540)))))

(declare-fun b!4841981 () Bool)

(assert (=> b!4841981 (= e!3026054 (containsKeyBiggerList!725 (toList!7789 lt!1985845) key!6540))))

(declare-fun b!4841982 () Bool)

(declare-fun res!2064613 () Bool)

(assert (=> b!4841982 (=> res!2064613 e!3026054)))

(assert (=> b!4841982 (= res!2064613 (not (allKeysSameHashInMap!2757 lt!1985845 hashF!1662)))))

(assert (= (and start!504054 res!2064614) b!4841973))

(assert (= (and b!4841973 res!2064615) b!4841972))

(assert (= (and b!4841972 res!2064616) b!4841979))

(assert (= (and b!4841979 (not res!2064618)) b!4841975))

(assert (= (and b!4841979 res!2064611) b!4841974))

(assert (= (and b!4841974 res!2064617) b!4841976))

(assert (= (and b!4841976 res!2064610) b!4841977))

(assert (= (and b!4841977 (not res!2064612)) b!4841980))

(assert (= (and b!4841980 (not res!2064619)) b!4841982))

(assert (= (and b!4841982 (not res!2064613)) b!4841981))

(assert (= start!504054 b!4841978))

(declare-fun m!5837888 () Bool)

(assert (=> b!4841975 m!5837888))

(declare-fun m!5837890 () Bool)

(assert (=> start!504054 m!5837890))

(declare-fun m!5837892 () Bool)

(assert (=> start!504054 m!5837892))

(declare-fun m!5837894 () Bool)

(assert (=> b!4841981 m!5837894))

(declare-fun m!5837896 () Bool)

(assert (=> b!4841973 m!5837896))

(declare-fun m!5837898 () Bool)

(assert (=> b!4841976 m!5837898))

(declare-fun m!5837900 () Bool)

(assert (=> b!4841976 m!5837900))

(assert (=> b!4841976 m!5837900))

(declare-fun m!5837902 () Bool)

(assert (=> b!4841976 m!5837902))

(declare-fun m!5837904 () Bool)

(assert (=> b!4841980 m!5837904))

(declare-fun m!5837906 () Bool)

(assert (=> b!4841980 m!5837906))

(declare-fun m!5837908 () Bool)

(assert (=> b!4841977 m!5837908))

(declare-fun m!5837910 () Bool)

(assert (=> b!4841977 m!5837910))

(assert (=> b!4841977 m!5837910))

(declare-fun m!5837912 () Bool)

(assert (=> b!4841977 m!5837912))

(declare-fun m!5837914 () Bool)

(assert (=> b!4841977 m!5837914))

(declare-fun m!5837916 () Bool)

(assert (=> b!4841972 m!5837916))

(declare-fun m!5837918 () Bool)

(assert (=> b!4841982 m!5837918))

(push 1)

(assert (not b!4841982))

(assert (not b!4841975))

(assert (not start!504054))

(assert (not b!4841972))

(assert (not b!4841978))

(assert (not b!4841980))

(assert (not b!4841977))

(assert tp_is_empty!34989)

(assert (not b!4841981))

(assert (not b!4841973))

(assert (not b!4841976))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1168724 () Bool)

(declare-fun d!1552134 () Bool)

(assert (= bs!1168724 (and d!1552134 start!504054)))

(declare-fun lambda!241519 () Int)

(assert (=> bs!1168724 (not (= lambda!241519 lambda!241511))))

(assert (=> d!1552134 true))

(assert (=> d!1552134 (= (allKeysSameHashInMap!2757 lt!1985845 hashF!1662) (forall!12871 (toList!7789 lt!1985845) lambda!241519))))

(declare-fun bs!1168725 () Bool)

(assert (= bs!1168725 d!1552134))

(declare-fun m!5837952 () Bool)

(assert (=> bs!1168725 m!5837952))

(assert (=> b!4841982 d!1552134))

(declare-fun d!1552136 () Bool)

(declare-fun res!2064658 () Bool)

(declare-fun e!3026078 () Bool)

(assert (=> d!1552136 (=> res!2064658 e!3026078)))

(declare-fun e!3026080 () Bool)

(assert (=> d!1552136 (= res!2064658 e!3026080)))

(declare-fun res!2064656 () Bool)

(assert (=> d!1552136 (=> (not res!2064656) (not e!3026080))))

(assert (=> d!1552136 (= res!2064656 (is-Cons!55408 (t!363028 (toList!7789 lm!2671))))))

(assert (=> d!1552136 (= (containsKeyBiggerList!725 (t!363028 (toList!7789 lm!2671)) key!6540) e!3026078)))

(declare-fun b!4842024 () Bool)

(assert (=> b!4842024 (= e!3026080 (containsKey!4610 (_2!32774 (h!61843 (t!363028 (toList!7789 lm!2671)))) key!6540))))

(declare-fun b!4842025 () Bool)

(declare-fun e!3026079 () Bool)

(assert (=> b!4842025 (= e!3026078 e!3026079)))

(declare-fun res!2064657 () Bool)

(assert (=> b!4842025 (=> (not res!2064657) (not e!3026079))))

(assert (=> b!4842025 (= res!2064657 (is-Cons!55408 (t!363028 (toList!7789 lm!2671))))))

(declare-fun b!4842026 () Bool)

(assert (=> b!4842026 (= e!3026079 (containsKeyBiggerList!725 (t!363028 (t!363028 (toList!7789 lm!2671))) key!6540))))

(assert (= (and d!1552136 res!2064656) b!4842024))

(assert (= (and d!1552136 (not res!2064658)) b!4842025))

(assert (= (and b!4842025 res!2064657) b!4842026))

(declare-fun m!5837954 () Bool)

(assert (=> b!4842024 m!5837954))

(declare-fun m!5837956 () Bool)

(assert (=> b!4842026 m!5837956))

(assert (=> b!4841977 d!1552136))

(declare-fun d!1552138 () Bool)

(declare-fun res!2064661 () Bool)

(declare-fun e!3026081 () Bool)

(assert (=> d!1552138 (=> res!2064661 e!3026081)))

(declare-fun e!3026083 () Bool)

(assert (=> d!1552138 (= res!2064661 e!3026083)))

(declare-fun res!2064659 () Bool)

(assert (=> d!1552138 (=> (not res!2064659) (not e!3026083))))

(assert (=> d!1552138 (= res!2064659 (is-Cons!55408 (tail!9501 (toList!7789 lm!2671))))))

(assert (=> d!1552138 (= (containsKeyBiggerList!725 (tail!9501 (toList!7789 lm!2671)) key!6540) e!3026081)))

(declare-fun b!4842027 () Bool)

(assert (=> b!4842027 (= e!3026083 (containsKey!4610 (_2!32774 (h!61843 (tail!9501 (toList!7789 lm!2671)))) key!6540))))

(declare-fun b!4842028 () Bool)

(declare-fun e!3026082 () Bool)

(assert (=> b!4842028 (= e!3026081 e!3026082)))

(declare-fun res!2064660 () Bool)

(assert (=> b!4842028 (=> (not res!2064660) (not e!3026082))))

(assert (=> b!4842028 (= res!2064660 (is-Cons!55408 (tail!9501 (toList!7789 lm!2671))))))

(declare-fun b!4842029 () Bool)

(assert (=> b!4842029 (= e!3026082 (containsKeyBiggerList!725 (t!363028 (tail!9501 (toList!7789 lm!2671))) key!6540))))

(assert (= (and d!1552138 res!2064659) b!4842027))

(assert (= (and d!1552138 (not res!2064661)) b!4842028))

(assert (= (and b!4842028 res!2064660) b!4842029))

(declare-fun m!5837958 () Bool)

(assert (=> b!4842027 m!5837958))

(declare-fun m!5837960 () Bool)

(assert (=> b!4842029 m!5837960))

(assert (=> b!4841977 d!1552138))

(declare-fun d!1552140 () Bool)

(assert (=> d!1552140 (= (tail!9501 (toList!7789 lm!2671)) (t!363028 (toList!7789 lm!2671)))))

(assert (=> b!4841977 d!1552140))

(declare-fun bs!1168726 () Bool)

(declare-fun d!1552142 () Bool)

(assert (= bs!1168726 (and d!1552142 start!504054)))

(declare-fun lambda!241522 () Int)

(assert (=> bs!1168726 (= lambda!241522 lambda!241511)))

(declare-fun bs!1168727 () Bool)

(assert (= bs!1168727 (and d!1552142 d!1552134)))

(assert (=> bs!1168727 (not (= lambda!241522 lambda!241519))))

(assert (=> d!1552142 (containsKeyBiggerList!725 (tail!9501 (toList!7789 lm!2671)) key!6540)))

(declare-fun lt!1985855 () Unit!145160)

(declare-fun choose!35383 (ListLongMap!6345 K!17172 Hashable!7441) Unit!145160)

(assert (=> d!1552142 (= lt!1985855 (choose!35383 lm!2671 key!6540 hashF!1662))))

(assert (=> d!1552142 (forall!12871 (toList!7789 lm!2671) lambda!241522)))

(assert (=> d!1552142 (= (lemmaInBiggerListButNotHeadThenTail!57 lm!2671 key!6540 hashF!1662) lt!1985855)))

(declare-fun bs!1168728 () Bool)

(assert (= bs!1168728 d!1552142))

(assert (=> bs!1168728 m!5837910))

(assert (=> bs!1168728 m!5837910))

(assert (=> bs!1168728 m!5837912))

(declare-fun m!5837962 () Bool)

(assert (=> bs!1168728 m!5837962))

(declare-fun m!5837964 () Bool)

(assert (=> bs!1168728 m!5837964))

(assert (=> b!4841977 d!1552142))

(declare-fun d!1552144 () Bool)

(declare-fun res!2064666 () Bool)

(declare-fun e!3026088 () Bool)

(assert (=> d!1552144 (=> res!2064666 e!3026088)))

(assert (=> d!1552144 (= res!2064666 (is-Nil!55408 (toList!7789 lm!2671)))))

(assert (=> d!1552144 (= (forall!12871 (toList!7789 lm!2671) lambda!241511) e!3026088)))

(declare-fun b!4842034 () Bool)

(declare-fun e!3026089 () Bool)

(assert (=> b!4842034 (= e!3026088 e!3026089)))

(declare-fun res!2064667 () Bool)

(assert (=> b!4842034 (=> (not res!2064667) (not e!3026089))))

(declare-fun dynLambda!22309 (Int tuple2!58960) Bool)

(assert (=> b!4842034 (= res!2064667 (dynLambda!22309 lambda!241511 (h!61843 (toList!7789 lm!2671))))))

(declare-fun b!4842035 () Bool)

(assert (=> b!4842035 (= e!3026089 (forall!12871 (t!363028 (toList!7789 lm!2671)) lambda!241511))))

(assert (= (and d!1552144 (not res!2064666)) b!4842034))

(assert (= (and b!4842034 res!2064667) b!4842035))

(declare-fun b_lambda!191523 () Bool)

(assert (=> (not b_lambda!191523) (not b!4842034)))

(declare-fun m!5837966 () Bool)

(assert (=> b!4842034 m!5837966))

(declare-fun m!5837968 () Bool)

(assert (=> b!4842035 m!5837968))

(assert (=> start!504054 d!1552144))

(declare-fun d!1552146 () Bool)

(declare-fun isStrictlySorted!1051 (List!55532) Bool)

(assert (=> d!1552146 (= (inv!71073 lm!2671) (isStrictlySorted!1051 (toList!7789 lm!2671)))))

(declare-fun bs!1168729 () Bool)

(assert (= bs!1168729 d!1552146))

(declare-fun m!5837970 () Bool)

(assert (=> bs!1168729 m!5837970))

(assert (=> start!504054 d!1552146))

(declare-fun d!1552148 () Bool)

(declare-fun res!2064670 () Bool)

(declare-fun e!3026090 () Bool)

(assert (=> d!1552148 (=> res!2064670 e!3026090)))

(declare-fun e!3026092 () Bool)

(assert (=> d!1552148 (= res!2064670 e!3026092)))

(declare-fun res!2064668 () Bool)

(assert (=> d!1552148 (=> (not res!2064668) (not e!3026092))))

(assert (=> d!1552148 (= res!2064668 (is-Cons!55408 (toList!7789 lm!2671)))))

(assert (=> d!1552148 (= (containsKeyBiggerList!725 (toList!7789 lm!2671) key!6540) e!3026090)))

(declare-fun b!4842036 () Bool)

(assert (=> b!4842036 (= e!3026092 (containsKey!4610 (_2!32774 (h!61843 (toList!7789 lm!2671))) key!6540))))

(declare-fun b!4842037 () Bool)

(declare-fun e!3026091 () Bool)

(assert (=> b!4842037 (= e!3026090 e!3026091)))

(declare-fun res!2064669 () Bool)

(assert (=> b!4842037 (=> (not res!2064669) (not e!3026091))))

(assert (=> b!4842037 (= res!2064669 (is-Cons!55408 (toList!7789 lm!2671)))))

(declare-fun b!4842038 () Bool)

(assert (=> b!4842038 (= e!3026091 (containsKeyBiggerList!725 (t!363028 (toList!7789 lm!2671)) key!6540))))

(assert (= (and d!1552148 res!2064668) b!4842036))

(assert (= (and d!1552148 (not res!2064670)) b!4842037))

(assert (= (and b!4842037 res!2064669) b!4842038))

(assert (=> b!4842036 m!5837888))

(assert (=> b!4842038 m!5837908))

(assert (=> b!4841972 d!1552148))

(declare-fun bs!1168730 () Bool)

(declare-fun d!1552150 () Bool)

(assert (= bs!1168730 (and d!1552150 start!504054)))

(declare-fun lambda!241523 () Int)

(assert (=> bs!1168730 (not (= lambda!241523 lambda!241511))))

(declare-fun bs!1168731 () Bool)

(assert (= bs!1168731 (and d!1552150 d!1552134)))

(assert (=> bs!1168731 (= lambda!241523 lambda!241519)))

(declare-fun bs!1168732 () Bool)

(assert (= bs!1168732 (and d!1552150 d!1552142)))

(assert (=> bs!1168732 (not (= lambda!241523 lambda!241522))))

(assert (=> d!1552150 true))

(assert (=> d!1552150 (= (allKeysSameHashInMap!2757 lm!2671 hashF!1662) (forall!12871 (toList!7789 lm!2671) lambda!241523))))

(declare-fun bs!1168733 () Bool)

(assert (= bs!1168733 d!1552150))

(declare-fun m!5837972 () Bool)

(assert (=> bs!1168733 m!5837972))

(assert (=> b!4841973 d!1552150))

(declare-fun d!1552152 () Bool)

(declare-fun res!2064671 () Bool)

(declare-fun e!3026093 () Bool)

(assert (=> d!1552152 (=> res!2064671 e!3026093)))

(assert (=> d!1552152 (= res!2064671 (is-Nil!55408 (toList!7789 lt!1985845)))))

(assert (=> d!1552152 (= (forall!12871 (toList!7789 lt!1985845) lambda!241511) e!3026093)))

(declare-fun b!4842039 () Bool)

(declare-fun e!3026094 () Bool)

(assert (=> b!4842039 (= e!3026093 e!3026094)))

(declare-fun res!2064672 () Bool)

(assert (=> b!4842039 (=> (not res!2064672) (not e!3026094))))

(assert (=> b!4842039 (= res!2064672 (dynLambda!22309 lambda!241511 (h!61843 (toList!7789 lt!1985845))))))

(declare-fun b!4842040 () Bool)

(assert (=> b!4842040 (= e!3026094 (forall!12871 (t!363028 (toList!7789 lt!1985845)) lambda!241511))))

(assert (= (and d!1552152 (not res!2064671)) b!4842039))

(assert (= (and b!4842039 res!2064672) b!4842040))

(declare-fun b_lambda!191525 () Bool)

(assert (=> (not b_lambda!191525) (not b!4842039)))

(declare-fun m!5837974 () Bool)

(assert (=> b!4842039 m!5837974))

(declare-fun m!5837976 () Bool)

(assert (=> b!4842040 m!5837976))

(assert (=> b!4841980 d!1552152))

(declare-fun d!1552154 () Bool)

(assert (=> d!1552154 (= (tail!9502 lm!2671) (ListLongMap!6346 (tail!9501 (toList!7789 lm!2671))))))

(declare-fun bs!1168734 () Bool)

(assert (= bs!1168734 d!1552154))

(assert (=> bs!1168734 m!5837910))

(assert (=> b!4841980 d!1552154))

(declare-fun d!1552156 () Bool)

(declare-fun res!2064677 () Bool)

(declare-fun e!3026099 () Bool)

(assert (=> d!1552156 (=> res!2064677 e!3026099)))

(assert (=> d!1552156 (= res!2064677 (and (is-Cons!55407 (_2!32774 (h!61843 (toList!7789 lm!2671)))) (= (_1!32773 (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671))))) key!6540)))))

(assert (=> d!1552156 (= (containsKey!4610 (_2!32774 (h!61843 (toList!7789 lm!2671))) key!6540) e!3026099)))

(declare-fun b!4842045 () Bool)

(declare-fun e!3026100 () Bool)

(assert (=> b!4842045 (= e!3026099 e!3026100)))

(declare-fun res!2064678 () Bool)

(assert (=> b!4842045 (=> (not res!2064678) (not e!3026100))))

(assert (=> b!4842045 (= res!2064678 (is-Cons!55407 (_2!32774 (h!61843 (toList!7789 lm!2671)))))))

(declare-fun b!4842046 () Bool)

(assert (=> b!4842046 (= e!3026100 (containsKey!4610 (t!363027 (_2!32774 (h!61843 (toList!7789 lm!2671)))) key!6540))))

(assert (= (and d!1552156 (not res!2064677)) b!4842045))

(assert (= (and b!4842045 res!2064678) b!4842046))

(declare-fun m!5837978 () Bool)

(assert (=> b!4842046 m!5837978))

(assert (=> b!4841975 d!1552156))

(declare-fun d!1552158 () Bool)

(declare-fun res!2064681 () Bool)

(declare-fun e!3026101 () Bool)

(assert (=> d!1552158 (=> res!2064681 e!3026101)))

(declare-fun e!3026103 () Bool)

(assert (=> d!1552158 (= res!2064681 e!3026103)))

(declare-fun res!2064679 () Bool)

(assert (=> d!1552158 (=> (not res!2064679) (not e!3026103))))

(assert (=> d!1552158 (= res!2064679 (is-Cons!55408 (toList!7789 lt!1985845)))))

(assert (=> d!1552158 (= (containsKeyBiggerList!725 (toList!7789 lt!1985845) key!6540) e!3026101)))

(declare-fun b!4842047 () Bool)

(assert (=> b!4842047 (= e!3026103 (containsKey!4610 (_2!32774 (h!61843 (toList!7789 lt!1985845))) key!6540))))

(declare-fun b!4842048 () Bool)

(declare-fun e!3026102 () Bool)

(assert (=> b!4842048 (= e!3026101 e!3026102)))

(declare-fun res!2064680 () Bool)

(assert (=> b!4842048 (=> (not res!2064680) (not e!3026102))))

(assert (=> b!4842048 (= res!2064680 (is-Cons!55408 (toList!7789 lt!1985845)))))

(declare-fun b!4842049 () Bool)

(assert (=> b!4842049 (= e!3026102 (containsKeyBiggerList!725 (t!363028 (toList!7789 lt!1985845)) key!6540))))

(assert (= (and d!1552158 res!2064679) b!4842047))

(assert (= (and d!1552158 (not res!2064681)) b!4842048))

(assert (= (and b!4842048 res!2064680) b!4842049))

(declare-fun m!5837980 () Bool)

(assert (=> b!4842047 m!5837980))

(declare-fun m!5837982 () Bool)

(assert (=> b!4842049 m!5837982))

(assert (=> b!4841981 d!1552158))

(declare-fun bs!1168735 () Bool)

(declare-fun d!1552160 () Bool)

(assert (= bs!1168735 (and d!1552160 start!504054)))

(declare-fun lambda!241526 () Int)

(assert (=> bs!1168735 (= lambda!241526 lambda!241511)))

(declare-fun bs!1168736 () Bool)

(assert (= bs!1168736 (and d!1552160 d!1552134)))

(assert (=> bs!1168736 (not (= lambda!241526 lambda!241519))))

(declare-fun bs!1168737 () Bool)

(assert (= bs!1168737 (and d!1552160 d!1552142)))

(assert (=> bs!1168737 (= lambda!241526 lambda!241522)))

(declare-fun bs!1168738 () Bool)

(assert (= bs!1168738 (and d!1552160 d!1552150)))

(assert (=> bs!1168738 (not (= lambda!241526 lambda!241523))))

(declare-fun lt!1985858 () ListMap!7127)

(declare-fun invariantList!1883 (List!55531) Bool)

(assert (=> d!1552160 (invariantList!1883 (toList!7790 lt!1985858))))

(declare-fun e!3026112 () ListMap!7127)

(assert (=> d!1552160 (= lt!1985858 e!3026112)))

(declare-fun c!824470 () Bool)

(assert (=> d!1552160 (= c!824470 (is-Cons!55408 (toList!7789 lm!2671)))))

(assert (=> d!1552160 (forall!12871 (toList!7789 lm!2671) lambda!241526)))

(assert (=> d!1552160 (= (extractMap!2783 (toList!7789 lm!2671)) lt!1985858)))

(declare-fun b!4842060 () Bool)

(assert (=> b!4842060 (= e!3026112 (addToMapMapFromBucket!1923 (_2!32774 (h!61843 (toList!7789 lm!2671))) (extractMap!2783 (t!363028 (toList!7789 lm!2671)))))))

(declare-fun b!4842061 () Bool)

(assert (=> b!4842061 (= e!3026112 (ListMap!7128 Nil!55407))))

(assert (= (and d!1552160 c!824470) b!4842060))

(assert (= (and d!1552160 (not c!824470)) b!4842061))

(declare-fun m!5837988 () Bool)

(assert (=> d!1552160 m!5837988))

(declare-fun m!5837990 () Bool)

(assert (=> d!1552160 m!5837990))

(assert (=> b!4842060 m!5837900))

(assert (=> b!4842060 m!5837900))

(assert (=> b!4842060 m!5837902))

(assert (=> b!4841976 d!1552160))

(declare-fun b!4842087 () Bool)

(assert (=> b!4842087 true))

(declare-fun bs!1168741 () Bool)

(declare-fun b!4842089 () Bool)

(assert (= bs!1168741 (and b!4842089 b!4842087)))

(declare-fun lambda!241559 () Int)

(declare-fun lambda!241558 () Int)

(assert (=> bs!1168741 (= lambda!241559 lambda!241558)))

(assert (=> b!4842089 true))

(declare-fun lt!1985921 () ListMap!7127)

(declare-fun lambda!241560 () Int)

(assert (=> bs!1168741 (= (= lt!1985921 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) (= lambda!241560 lambda!241558))))

(assert (=> b!4842089 (= (= lt!1985921 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) (= lambda!241560 lambda!241559))))

(assert (=> b!4842089 true))

(declare-fun bs!1168742 () Bool)

(declare-fun d!1552166 () Bool)

(assert (= bs!1168742 (and d!1552166 b!4842087)))

(declare-fun lt!1985920 () ListMap!7127)

(declare-fun lambda!241561 () Int)

(assert (=> bs!1168742 (= (= lt!1985920 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) (= lambda!241561 lambda!241558))))

(declare-fun bs!1168743 () Bool)

(assert (= bs!1168743 (and d!1552166 b!4842089)))

(assert (=> bs!1168743 (= (= lt!1985920 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) (= lambda!241561 lambda!241559))))

(assert (=> bs!1168743 (= (= lt!1985920 lt!1985921) (= lambda!241561 lambda!241560))))

(assert (=> d!1552166 true))

(declare-fun c!824476 () Bool)

(declare-fun call!337476 () Bool)

(declare-fun bm!337470 () Bool)

(declare-fun forall!12873 (List!55531 Int) Bool)

(assert (=> bm!337470 (= call!337476 (forall!12873 (ite c!824476 (toList!7790 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) (_2!32774 (h!61843 (toList!7789 lm!2671)))) (ite c!824476 lambda!241558 lambda!241560)))))

(declare-fun e!3026132 () Bool)

(assert (=> d!1552166 e!3026132))

(declare-fun res!2064705 () Bool)

(assert (=> d!1552166 (=> (not res!2064705) (not e!3026132))))

(assert (=> d!1552166 (= res!2064705 (forall!12873 (_2!32774 (h!61843 (toList!7789 lm!2671))) lambda!241561))))

(declare-fun e!3026133 () ListMap!7127)

(assert (=> d!1552166 (= lt!1985920 e!3026133)))

(assert (=> d!1552166 (= c!824476 (is-Nil!55407 (_2!32774 (h!61843 (toList!7789 lm!2671)))))))

(declare-fun noDuplicateKeys!2551 (List!55531) Bool)

(assert (=> d!1552166 (noDuplicateKeys!2551 (_2!32774 (h!61843 (toList!7789 lm!2671))))))

(assert (=> d!1552166 (= (addToMapMapFromBucket!1923 (_2!32774 (h!61843 (toList!7789 lm!2671))) (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) lt!1985920)))

(assert (=> b!4842087 (= e!3026133 (extractMap!2783 (t!363028 (toList!7789 lm!2671))))))

(declare-fun lt!1985922 () Unit!145160)

(declare-fun call!337477 () Unit!145160)

(assert (=> b!4842087 (= lt!1985922 call!337477)))

(assert (=> b!4842087 call!337476))

(declare-fun lt!1985904 () Unit!145160)

(assert (=> b!4842087 (= lt!1985904 lt!1985922)))

(declare-fun call!337475 () Bool)

(assert (=> b!4842087 call!337475))

(declare-fun lt!1985917 () Unit!145160)

(declare-fun Unit!145164 () Unit!145160)

(assert (=> b!4842087 (= lt!1985917 Unit!145164)))

(declare-fun b!4842088 () Bool)

(declare-fun e!3026131 () Bool)

(assert (=> b!4842088 (= e!3026131 (forall!12873 (toList!7790 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) lambda!241560))))

(declare-fun bm!337471 () Bool)

(assert (=> bm!337471 (= call!337475 (forall!12873 (toList!7790 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) (ite c!824476 lambda!241558 lambda!241559)))))

(assert (=> b!4842089 (= e!3026133 lt!1985921)))

(declare-fun lt!1985914 () ListMap!7127)

(declare-fun +!2617 (ListMap!7127 tuple2!58958) ListMap!7127)

(assert (=> b!4842089 (= lt!1985914 (+!2617 (extractMap!2783 (t!363028 (toList!7789 lm!2671))) (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671))))))))

(assert (=> b!4842089 (= lt!1985921 (addToMapMapFromBucket!1923 (t!363027 (_2!32774 (h!61843 (toList!7789 lm!2671)))) (+!2617 (extractMap!2783 (t!363028 (toList!7789 lm!2671))) (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671)))))))))

(declare-fun lt!1985918 () Unit!145160)

(assert (=> b!4842089 (= lt!1985918 call!337477)))

(assert (=> b!4842089 call!337475))

(declare-fun lt!1985915 () Unit!145160)

(assert (=> b!4842089 (= lt!1985915 lt!1985918)))

(assert (=> b!4842089 (forall!12873 (toList!7790 lt!1985914) lambda!241560)))

(declare-fun lt!1985909 () Unit!145160)

(declare-fun Unit!145165 () Unit!145160)

(assert (=> b!4842089 (= lt!1985909 Unit!145165)))

(assert (=> b!4842089 (forall!12873 (t!363027 (_2!32774 (h!61843 (toList!7789 lm!2671)))) lambda!241560)))

(declare-fun lt!1985916 () Unit!145160)

(declare-fun Unit!145166 () Unit!145160)

(assert (=> b!4842089 (= lt!1985916 Unit!145166)))

(declare-fun lt!1985913 () Unit!145160)

(declare-fun Unit!145167 () Unit!145160)

(assert (=> b!4842089 (= lt!1985913 Unit!145167)))

(declare-fun lt!1985907 () Unit!145160)

(declare-fun forallContained!4501 (List!55531 Int tuple2!58958) Unit!145160)

(assert (=> b!4842089 (= lt!1985907 (forallContained!4501 (toList!7790 lt!1985914) lambda!241560 (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671))))))))

(declare-fun contains!19114 (ListMap!7127 K!17172) Bool)

(assert (=> b!4842089 (contains!19114 lt!1985914 (_1!32773 (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671))))))))

(declare-fun lt!1985912 () Unit!145160)

(declare-fun Unit!145168 () Unit!145160)

(assert (=> b!4842089 (= lt!1985912 Unit!145168)))

(assert (=> b!4842089 (contains!19114 lt!1985921 (_1!32773 (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671))))))))

(declare-fun lt!1985908 () Unit!145160)

(declare-fun Unit!145169 () Unit!145160)

(assert (=> b!4842089 (= lt!1985908 Unit!145169)))

(assert (=> b!4842089 (forall!12873 (_2!32774 (h!61843 (toList!7789 lm!2671))) lambda!241560)))

(declare-fun lt!1985911 () Unit!145160)

(declare-fun Unit!145170 () Unit!145160)

(assert (=> b!4842089 (= lt!1985911 Unit!145170)))

(assert (=> b!4842089 (forall!12873 (toList!7790 lt!1985914) lambda!241560)))

(declare-fun lt!1985905 () Unit!145160)

(declare-fun Unit!145171 () Unit!145160)

(assert (=> b!4842089 (= lt!1985905 Unit!145171)))

(declare-fun lt!1985923 () Unit!145160)

(declare-fun Unit!145172 () Unit!145160)

(assert (=> b!4842089 (= lt!1985923 Unit!145172)))

(declare-fun lt!1985906 () Unit!145160)

(declare-fun addForallContainsKeyThenBeforeAdding!1055 (ListMap!7127 ListMap!7127 K!17172 V!17418) Unit!145160)

(assert (=> b!4842089 (= lt!1985906 (addForallContainsKeyThenBeforeAdding!1055 (extractMap!2783 (t!363028 (toList!7789 lm!2671))) lt!1985921 (_1!32773 (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671))))) (_2!32773 (h!61842 (_2!32774 (h!61843 (toList!7789 lm!2671)))))))))

(assert (=> b!4842089 (forall!12873 (toList!7790 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) lambda!241560)))

(declare-fun lt!1985924 () Unit!145160)

(assert (=> b!4842089 (= lt!1985924 lt!1985906)))

(assert (=> b!4842089 (forall!12873 (toList!7790 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) lambda!241560)))

(declare-fun lt!1985919 () Unit!145160)

(declare-fun Unit!145173 () Unit!145160)

(assert (=> b!4842089 (= lt!1985919 Unit!145173)))

(declare-fun res!2064704 () Bool)

(assert (=> b!4842089 (= res!2064704 call!337476)))

(assert (=> b!4842089 (=> (not res!2064704) (not e!3026131))))

(assert (=> b!4842089 e!3026131))

(declare-fun lt!1985910 () Unit!145160)

(declare-fun Unit!145174 () Unit!145160)

(assert (=> b!4842089 (= lt!1985910 Unit!145174)))

(declare-fun bm!337472 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1057 (ListMap!7127) Unit!145160)

(assert (=> bm!337472 (= call!337477 (lemmaContainsAllItsOwnKeys!1057 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))))))

(declare-fun b!4842090 () Bool)

(declare-fun res!2064703 () Bool)

(assert (=> b!4842090 (=> (not res!2064703) (not e!3026132))))

(assert (=> b!4842090 (= res!2064703 (forall!12873 (toList!7790 (extractMap!2783 (t!363028 (toList!7789 lm!2671)))) lambda!241561))))

(declare-fun b!4842091 () Bool)

(assert (=> b!4842091 (= e!3026132 (invariantList!1883 (toList!7790 lt!1985920)))))

(assert (= (and d!1552166 c!824476) b!4842087))

(assert (= (and d!1552166 (not c!824476)) b!4842089))

(assert (= (and b!4842089 res!2064704) b!4842088))

(assert (= (or b!4842087 b!4842089) bm!337472))

(assert (= (or b!4842087 b!4842089) bm!337470))

(assert (= (or b!4842087 b!4842089) bm!337471))

(assert (= (and d!1552166 res!2064705) b!4842090))

(assert (= (and b!4842090 res!2064703) b!4842091))

(declare-fun m!5837998 () Bool)

(assert (=> b!4842091 m!5837998))

(declare-fun m!5838000 () Bool)

(assert (=> b!4842089 m!5838000))

(assert (=> b!4842089 m!5837900))

(declare-fun m!5838002 () Bool)

(assert (=> b!4842089 m!5838002))

(declare-fun m!5838004 () Bool)

(assert (=> b!4842089 m!5838004))

(declare-fun m!5838006 () Bool)

(assert (=> b!4842089 m!5838006))

(declare-fun m!5838008 () Bool)

(assert (=> b!4842089 m!5838008))

(assert (=> b!4842089 m!5838000))

(declare-fun m!5838010 () Bool)

(assert (=> b!4842089 m!5838010))

(assert (=> b!4842089 m!5837900))

(declare-fun m!5838012 () Bool)

(assert (=> b!4842089 m!5838012))

(declare-fun m!5838014 () Bool)

(assert (=> b!4842089 m!5838014))

(assert (=> b!4842089 m!5838002))

(declare-fun m!5838016 () Bool)

(assert (=> b!4842089 m!5838016))

(assert (=> b!4842089 m!5838014))

(declare-fun m!5838018 () Bool)

(assert (=> b!4842089 m!5838018))

(assert (=> b!4842088 m!5838000))

(assert (=> bm!337472 m!5837900))

(declare-fun m!5838020 () Bool)

(assert (=> bm!337472 m!5838020))

(declare-fun m!5838022 () Bool)

(assert (=> b!4842090 m!5838022))

(declare-fun m!5838024 () Bool)

(assert (=> d!1552166 m!5838024))

(declare-fun m!5838026 () Bool)

(assert (=> d!1552166 m!5838026))

(declare-fun m!5838028 () Bool)

(assert (=> bm!337471 m!5838028))

(declare-fun m!5838030 () Bool)

(assert (=> bm!337470 m!5838030))

(assert (=> b!4841976 d!1552166))

(declare-fun bs!1168744 () Bool)

(declare-fun d!1552174 () Bool)

(assert (= bs!1168744 (and d!1552174 start!504054)))

(declare-fun lambda!241562 () Int)

(assert (=> bs!1168744 (= lambda!241562 lambda!241511)))

(declare-fun bs!1168745 () Bool)

(assert (= bs!1168745 (and d!1552174 d!1552134)))

(assert (=> bs!1168745 (not (= lambda!241562 lambda!241519))))

(declare-fun bs!1168746 () Bool)

(assert (= bs!1168746 (and d!1552174 d!1552142)))

(assert (=> bs!1168746 (= lambda!241562 lambda!241522)))

(declare-fun bs!1168747 () Bool)

(assert (= bs!1168747 (and d!1552174 d!1552160)))

(assert (=> bs!1168747 (= lambda!241562 lambda!241526)))

(declare-fun bs!1168748 () Bool)

(assert (= bs!1168748 (and d!1552174 d!1552150)))

(assert (=> bs!1168748 (not (= lambda!241562 lambda!241523))))

(declare-fun lt!1985925 () ListMap!7127)

(assert (=> d!1552174 (invariantList!1883 (toList!7790 lt!1985925))))

(declare-fun e!3026134 () ListMap!7127)

(assert (=> d!1552174 (= lt!1985925 e!3026134)))

(declare-fun c!824477 () Bool)

(assert (=> d!1552174 (= c!824477 (is-Cons!55408 (t!363028 (toList!7789 lm!2671))))))

(assert (=> d!1552174 (forall!12871 (t!363028 (toList!7789 lm!2671)) lambda!241562)))

(assert (=> d!1552174 (= (extractMap!2783 (t!363028 (toList!7789 lm!2671))) lt!1985925)))

(declare-fun b!4842094 () Bool)

(assert (=> b!4842094 (= e!3026134 (addToMapMapFromBucket!1923 (_2!32774 (h!61843 (t!363028 (toList!7789 lm!2671)))) (extractMap!2783 (t!363028 (t!363028 (toList!7789 lm!2671))))))))

(declare-fun b!4842095 () Bool)

(assert (=> b!4842095 (= e!3026134 (ListMap!7128 Nil!55407))))

(assert (= (and d!1552174 c!824477) b!4842094))

(assert (= (and d!1552174 (not c!824477)) b!4842095))

(declare-fun m!5838032 () Bool)

(assert (=> d!1552174 m!5838032))

(declare-fun m!5838034 () Bool)

(assert (=> d!1552174 m!5838034))

(declare-fun m!5838036 () Bool)

(assert (=> b!4842094 m!5838036))

(assert (=> b!4842094 m!5838036))

(declare-fun m!5838038 () Bool)

(assert (=> b!4842094 m!5838038))

(assert (=> b!4841976 d!1552174))

(declare-fun b!4842100 () Bool)

(declare-fun e!3026137 () Bool)

(declare-fun tp!1364005 () Bool)

(declare-fun tp!1364006 () Bool)

(assert (=> b!4842100 (= e!3026137 (and tp!1364005 tp!1364006))))

(assert (=> b!4841978 (= tp!1363997 e!3026137)))

(assert (= (and b!4841978 (is-Cons!55408 (toList!7789 lm!2671))) b!4842100))

(declare-fun b_lambda!191529 () Bool)

(assert (= b_lambda!191525 (or start!504054 b_lambda!191529)))

(declare-fun bs!1168749 () Bool)

(declare-fun d!1552176 () Bool)

(assert (= bs!1168749 (and d!1552176 start!504054)))

(assert (=> bs!1168749 (= (dynLambda!22309 lambda!241511 (h!61843 (toList!7789 lt!1985845))) (noDuplicateKeys!2551 (_2!32774 (h!61843 (toList!7789 lt!1985845)))))))

(declare-fun m!5838040 () Bool)

(assert (=> bs!1168749 m!5838040))

(assert (=> b!4842039 d!1552176))

(declare-fun b_lambda!191531 () Bool)

(assert (= b_lambda!191523 (or start!504054 b_lambda!191531)))

(declare-fun bs!1168750 () Bool)

(declare-fun d!1552178 () Bool)

(assert (= bs!1168750 (and d!1552178 start!504054)))

(assert (=> bs!1168750 (= (dynLambda!22309 lambda!241511 (h!61843 (toList!7789 lm!2671))) (noDuplicateKeys!2551 (_2!32774 (h!61843 (toList!7789 lm!2671)))))))

(assert (=> bs!1168750 m!5838026))

(assert (=> b!4842034 d!1552178))

(push 1)

(assert (not d!1552146))

(assert (not b!4842089))

(assert (not bs!1168749))

(assert (not d!1552174))

(assert (not b!4842038))

(assert (not d!1552166))

(assert (not b!4842088))

(assert (not b!4842024))

(assert tp_is_empty!34989)

(assert (not b!4842060))

(assert (not b!4842026))

(assert (not b!4842027))

(assert (not b!4842046))

(assert (not b!4842091))

(assert (not d!1552134))

(assert (not bm!337472))

(assert (not b!4842100))

(assert (not b!4842029))

(assert (not d!1552160))

(assert (not b!4842049))

(assert (not b!4842035))

(assert (not b_lambda!191531))

(assert (not bm!337470))

(assert (not b!4842094))

(assert (not d!1552142))

(assert (not d!1552150))

(assert (not b!4842090))

(assert (not b!4842040))

(assert (not b_lambda!191529))

(assert (not b!4842036))

(assert (not bm!337471))

(assert (not d!1552154))

(assert (not b!4842047))

(assert (not bs!1168750))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

