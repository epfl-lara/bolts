; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!489336 () Bool)

(assert start!489336)

(declare-fun b!4774893 () Bool)

(declare-fun e!2980904 () Bool)

(declare-datatypes ((K!15367 0))(
  ( (K!15368 (val!20599 Int)) )
))
(declare-datatypes ((V!15613 0))(
  ( (V!15614 (val!20600 Int)) )
))
(declare-datatypes ((tuple2!56172 0))(
  ( (tuple2!56173 (_1!31380 K!15367) (_2!31380 V!15613)) )
))
(declare-datatypes ((List!53945 0))(
  ( (Nil!53821) (Cons!53821 (h!60235 tuple2!56172) (t!361395 List!53945)) )
))
(declare-fun lt!1937957 () List!53945)

(declare-fun noDuplicateKeys!2274 (List!53945) Bool)

(assert (=> b!4774893 (= e!2980904 (not (noDuplicateKeys!2274 lt!1937957)))))

(declare-fun key!6641 () K!15367)

(declare-datatypes ((Option!12832 0))(
  ( (None!12831) (Some!12831 (v!47984 tuple2!56172)) )
))
(declare-fun isDefined!9977 (Option!12832) Bool)

(declare-fun getPair!739 (List!53945 K!15367) Option!12832)

(assert (=> b!4774893 (isDefined!9977 (getPair!739 lt!1937957 key!6641))))

(declare-datatypes ((Unit!138809 0))(
  ( (Unit!138810) )
))
(declare-fun lt!1937963 () Unit!138809)

(declare-datatypes ((tuple2!56174 0))(
  ( (tuple2!56175 (_1!31381 (_ BitVec 64)) (_2!31381 List!53945)) )
))
(declare-datatypes ((List!53946 0))(
  ( (Nil!53822) (Cons!53822 (h!60236 tuple2!56174) (t!361396 List!53946)) )
))
(declare-datatypes ((ListLongMap!5003 0))(
  ( (ListLongMap!5004 (toList!6585 List!53946)) )
))
(declare-fun lm!2709 () ListLongMap!5003)

(declare-fun lambda!226410 () Int)

(declare-fun lt!1937961 () tuple2!56174)

(declare-fun forallContained!3976 (List!53946 Int tuple2!56174) Unit!138809)

(assert (=> b!4774893 (= lt!1937963 (forallContained!3976 (toList!6585 lm!2709) lambda!226410 lt!1937961))))

(declare-datatypes ((Hashable!6751 0))(
  ( (HashableExt!6750 (__x!32774 Int)) )
))
(declare-fun hashF!1687 () Hashable!6751)

(declare-fun lt!1937962 () Unit!138809)

(declare-fun lemmaInGenMapThenGetPairDefined!513 (ListLongMap!5003 K!15367 Hashable!6751) Unit!138809)

(assert (=> b!4774893 (= lt!1937962 (lemmaInGenMapThenGetPairDefined!513 lm!2709 key!6641 hashF!1687))))

(declare-fun lt!1937964 () Unit!138809)

(assert (=> b!4774893 (= lt!1937964 (forallContained!3976 (toList!6585 lm!2709) lambda!226410 lt!1937961))))

(declare-fun contains!17282 (List!53946 tuple2!56174) Bool)

(assert (=> b!4774893 (contains!17282 (toList!6585 lm!2709) lt!1937961)))

(declare-fun lt!1937960 () (_ BitVec 64))

(assert (=> b!4774893 (= lt!1937961 (tuple2!56175 lt!1937960 lt!1937957))))

(declare-fun lt!1937958 () Unit!138809)

(declare-fun lemmaGetValueImpliesTupleContained!542 (ListLongMap!5003 (_ BitVec 64) List!53945) Unit!138809)

(assert (=> b!4774893 (= lt!1937958 (lemmaGetValueImpliesTupleContained!542 lm!2709 lt!1937960 lt!1937957))))

(declare-fun apply!12814 (ListLongMap!5003 (_ BitVec 64)) List!53945)

(assert (=> b!4774893 (= lt!1937957 (apply!12814 lm!2709 lt!1937960))))

(declare-fun contains!17283 (ListLongMap!5003 (_ BitVec 64)) Bool)

(assert (=> b!4774893 (contains!17283 lm!2709 lt!1937960)))

(declare-fun hash!4721 (Hashable!6751 K!15367) (_ BitVec 64))

(assert (=> b!4774893 (= lt!1937960 (hash!4721 hashF!1687 key!6641))))

(declare-fun lt!1937959 () Unit!138809)

(declare-fun lemmaInGenMapThenLongMapContainsHash!955 (ListLongMap!5003 K!15367 Hashable!6751) Unit!138809)

(assert (=> b!4774893 (= lt!1937959 (lemmaInGenMapThenLongMapContainsHash!955 lm!2709 key!6641 hashF!1687))))

(declare-datatypes ((ListMap!6061 0))(
  ( (ListMap!6062 (toList!6586 List!53945)) )
))
(declare-fun contains!17284 (ListMap!6061 K!15367) Bool)

(declare-fun extractMap!2282 (List!53946) ListMap!6061)

(assert (=> b!4774893 (contains!17284 (extractMap!2282 (toList!6585 lm!2709)) key!6641)))

(declare-fun lt!1937956 () Unit!138809)

(declare-fun lemmaListContainsThenExtractedMapContains!603 (ListLongMap!5003 K!15367 Hashable!6751) Unit!138809)

(assert (=> b!4774893 (= lt!1937956 (lemmaListContainsThenExtractedMapContains!603 lm!2709 key!6641 hashF!1687))))

(declare-fun res!2026035 () Bool)

(assert (=> start!489336 (=> (not res!2026035) (not e!2980904))))

(declare-fun forall!12019 (List!53946 Int) Bool)

(assert (=> start!489336 (= res!2026035 (forall!12019 (toList!6585 lm!2709) lambda!226410))))

(assert (=> start!489336 e!2980904))

(declare-fun e!2980903 () Bool)

(declare-fun inv!69394 (ListLongMap!5003) Bool)

(assert (=> start!489336 (and (inv!69394 lm!2709) e!2980903)))

(assert (=> start!489336 true))

(declare-fun tp_is_empty!32937 () Bool)

(assert (=> start!489336 tp_is_empty!32937))

(declare-fun b!4774892 () Bool)

(declare-fun res!2026036 () Bool)

(assert (=> b!4774892 (=> (not res!2026036) (not e!2980904))))

(declare-fun containsKeyBiggerList!407 (List!53946 K!15367) Bool)

(assert (=> b!4774892 (= res!2026036 (containsKeyBiggerList!407 (toList!6585 lm!2709) key!6641))))

(declare-fun b!4774891 () Bool)

(declare-fun res!2026037 () Bool)

(assert (=> b!4774891 (=> (not res!2026037) (not e!2980904))))

(declare-fun allKeysSameHashInMap!2156 (ListLongMap!5003 Hashable!6751) Bool)

(assert (=> b!4774891 (= res!2026037 (allKeysSameHashInMap!2156 lm!2709 hashF!1687))))

(declare-fun b!4774894 () Bool)

(declare-fun tp!1357023 () Bool)

(assert (=> b!4774894 (= e!2980903 tp!1357023)))

(assert (= (and start!489336 res!2026035) b!4774891))

(assert (= (and b!4774891 res!2026037) b!4774892))

(assert (= (and b!4774892 res!2026036) b!4774893))

(assert (= start!489336 b!4774894))

(declare-fun m!5749184 () Bool)

(assert (=> b!4774893 m!5749184))

(declare-fun m!5749186 () Bool)

(assert (=> b!4774893 m!5749186))

(declare-fun m!5749188 () Bool)

(assert (=> b!4774893 m!5749188))

(declare-fun m!5749190 () Bool)

(assert (=> b!4774893 m!5749190))

(declare-fun m!5749192 () Bool)

(assert (=> b!4774893 m!5749192))

(declare-fun m!5749194 () Bool)

(assert (=> b!4774893 m!5749194))

(declare-fun m!5749196 () Bool)

(assert (=> b!4774893 m!5749196))

(declare-fun m!5749198 () Bool)

(assert (=> b!4774893 m!5749198))

(declare-fun m!5749200 () Bool)

(assert (=> b!4774893 m!5749200))

(declare-fun m!5749202 () Bool)

(assert (=> b!4774893 m!5749202))

(assert (=> b!4774893 m!5749194))

(declare-fun m!5749204 () Bool)

(assert (=> b!4774893 m!5749204))

(assert (=> b!4774893 m!5749196))

(declare-fun m!5749206 () Bool)

(assert (=> b!4774893 m!5749206))

(declare-fun m!5749208 () Bool)

(assert (=> b!4774893 m!5749208))

(declare-fun m!5749210 () Bool)

(assert (=> b!4774893 m!5749210))

(assert (=> b!4774893 m!5749186))

(declare-fun m!5749212 () Bool)

(assert (=> start!489336 m!5749212))

(declare-fun m!5749214 () Bool)

(assert (=> start!489336 m!5749214))

(declare-fun m!5749216 () Bool)

(assert (=> b!4774892 m!5749216))

(declare-fun m!5749218 () Bool)

(assert (=> b!4774891 m!5749218))

(push 1)

(assert (not b!4774894))

(assert (not b!4774893))

(assert (not b!4774891))

(assert (not b!4774892))

(assert tp_is_empty!32937)

(assert (not start!489336))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1525923 () Bool)

(declare-fun res!2026051 () Bool)

(declare-fun e!2980915 () Bool)

(assert (=> d!1525923 (=> res!2026051 e!2980915)))

(assert (=> d!1525923 (= res!2026051 (is-Nil!53822 (toList!6585 lm!2709)))))

(assert (=> d!1525923 (= (forall!12019 (toList!6585 lm!2709) lambda!226410) e!2980915)))

(declare-fun b!4774911 () Bool)

(declare-fun e!2980916 () Bool)

(assert (=> b!4774911 (= e!2980915 e!2980916)))

(declare-fun res!2026052 () Bool)

(assert (=> b!4774911 (=> (not res!2026052) (not e!2980916))))

(declare-fun dynLambda!21989 (Int tuple2!56174) Bool)

(assert (=> b!4774911 (= res!2026052 (dynLambda!21989 lambda!226410 (h!60236 (toList!6585 lm!2709))))))

(declare-fun b!4774912 () Bool)

(assert (=> b!4774912 (= e!2980916 (forall!12019 (t!361396 (toList!6585 lm!2709)) lambda!226410))))

(assert (= (and d!1525923 (not res!2026051)) b!4774911))

(assert (= (and b!4774911 res!2026052) b!4774912))

(declare-fun b_lambda!184911 () Bool)

(assert (=> (not b_lambda!184911) (not b!4774911)))

(declare-fun m!5749256 () Bool)

(assert (=> b!4774911 m!5749256))

(declare-fun m!5749258 () Bool)

(assert (=> b!4774912 m!5749258))

(assert (=> start!489336 d!1525923))

(declare-fun d!1525927 () Bool)

(declare-fun isStrictlySorted!830 (List!53946) Bool)

(assert (=> d!1525927 (= (inv!69394 lm!2709) (isStrictlySorted!830 (toList!6585 lm!2709)))))

(declare-fun bs!1150421 () Bool)

(assert (= bs!1150421 d!1525927))

(declare-fun m!5749260 () Bool)

(assert (=> bs!1150421 m!5749260))

(assert (=> start!489336 d!1525927))

(declare-fun bs!1150422 () Bool)

(declare-fun d!1525929 () Bool)

(assert (= bs!1150422 (and d!1525929 start!489336)))

(declare-fun lambda!226420 () Int)

(assert (=> bs!1150422 (not (= lambda!226420 lambda!226410))))

(assert (=> d!1525929 true))

(assert (=> d!1525929 (= (allKeysSameHashInMap!2156 lm!2709 hashF!1687) (forall!12019 (toList!6585 lm!2709) lambda!226420))))

(declare-fun bs!1150423 () Bool)

(assert (= bs!1150423 d!1525929))

(declare-fun m!5749262 () Bool)

(assert (=> bs!1150423 m!5749262))

(assert (=> b!4774891 d!1525929))

(declare-fun d!1525931 () Bool)

(declare-fun res!2026063 () Bool)

(declare-fun e!2980927 () Bool)

(assert (=> d!1525931 (=> res!2026063 e!2980927)))

(declare-fun e!2980928 () Bool)

(assert (=> d!1525931 (= res!2026063 e!2980928)))

(declare-fun res!2026062 () Bool)

(assert (=> d!1525931 (=> (not res!2026062) (not e!2980928))))

(assert (=> d!1525931 (= res!2026062 (is-Cons!53822 (toList!6585 lm!2709)))))

(assert (=> d!1525931 (= (containsKeyBiggerList!407 (toList!6585 lm!2709) key!6641) e!2980927)))

(declare-fun b!4774924 () Bool)

(declare-fun containsKey!3719 (List!53945 K!15367) Bool)

(assert (=> b!4774924 (= e!2980928 (containsKey!3719 (_2!31381 (h!60236 (toList!6585 lm!2709))) key!6641))))

(declare-fun b!4774925 () Bool)

(declare-fun e!2980926 () Bool)

(assert (=> b!4774925 (= e!2980927 e!2980926)))

(declare-fun res!2026064 () Bool)

(assert (=> b!4774925 (=> (not res!2026064) (not e!2980926))))

(assert (=> b!4774925 (= res!2026064 (is-Cons!53822 (toList!6585 lm!2709)))))

(declare-fun b!4774926 () Bool)

(assert (=> b!4774926 (= e!2980926 (containsKeyBiggerList!407 (t!361396 (toList!6585 lm!2709)) key!6641))))

(assert (= (and d!1525931 res!2026062) b!4774924))

(assert (= (and d!1525931 (not res!2026063)) b!4774925))

(assert (= (and b!4774925 res!2026064) b!4774926))

(declare-fun m!5749268 () Bool)

(assert (=> b!4774924 m!5749268))

(declare-fun m!5749270 () Bool)

(assert (=> b!4774926 m!5749270))

(assert (=> b!4774892 d!1525931))

(declare-fun d!1525935 () Bool)

(declare-fun res!2026069 () Bool)

(declare-fun e!2980933 () Bool)

(assert (=> d!1525935 (=> res!2026069 e!2980933)))

(assert (=> d!1525935 (= res!2026069 (not (is-Cons!53821 lt!1937957)))))

(assert (=> d!1525935 (= (noDuplicateKeys!2274 lt!1937957) e!2980933)))

(declare-fun b!4774931 () Bool)

(declare-fun e!2980934 () Bool)

(assert (=> b!4774931 (= e!2980933 e!2980934)))

(declare-fun res!2026070 () Bool)

(assert (=> b!4774931 (=> (not res!2026070) (not e!2980934))))

(assert (=> b!4774931 (= res!2026070 (not (containsKey!3719 (t!361395 lt!1937957) (_1!31380 (h!60235 lt!1937957)))))))

(declare-fun b!4774932 () Bool)

(assert (=> b!4774932 (= e!2980934 (noDuplicateKeys!2274 (t!361395 lt!1937957)))))

(assert (= (and d!1525935 (not res!2026069)) b!4774931))

(assert (= (and b!4774931 res!2026070) b!4774932))

(declare-fun m!5749272 () Bool)

(assert (=> b!4774931 m!5749272))

(declare-fun m!5749274 () Bool)

(assert (=> b!4774932 m!5749274))

(assert (=> b!4774893 d!1525935))

(declare-fun d!1525937 () Bool)

(declare-fun lt!1937997 () Bool)

(declare-fun content!9611 (List!53946) (Set tuple2!56174))

(assert (=> d!1525937 (= lt!1937997 (set.member lt!1937961 (content!9611 (toList!6585 lm!2709))))))

(declare-fun e!2980940 () Bool)

(assert (=> d!1525937 (= lt!1937997 e!2980940)))

(declare-fun res!2026075 () Bool)

(assert (=> d!1525937 (=> (not res!2026075) (not e!2980940))))

(assert (=> d!1525937 (= res!2026075 (is-Cons!53822 (toList!6585 lm!2709)))))

(assert (=> d!1525937 (= (contains!17282 (toList!6585 lm!2709) lt!1937961) lt!1937997)))

(declare-fun b!4774937 () Bool)

(declare-fun e!2980939 () Bool)

(assert (=> b!4774937 (= e!2980940 e!2980939)))

(declare-fun res!2026076 () Bool)

(assert (=> b!4774937 (=> res!2026076 e!2980939)))

(assert (=> b!4774937 (= res!2026076 (= (h!60236 (toList!6585 lm!2709)) lt!1937961))))

(declare-fun b!4774938 () Bool)

(assert (=> b!4774938 (= e!2980939 (contains!17282 (t!361396 (toList!6585 lm!2709)) lt!1937961))))

(assert (= (and d!1525937 res!2026075) b!4774937))

(assert (= (and b!4774937 (not res!2026076)) b!4774938))

(declare-fun m!5749276 () Bool)

(assert (=> d!1525937 m!5749276))

(declare-fun m!5749278 () Bool)

(assert (=> d!1525937 m!5749278))

(declare-fun m!5749280 () Bool)

(assert (=> b!4774938 m!5749280))

(assert (=> b!4774893 d!1525937))

(declare-fun bs!1150424 () Bool)

(declare-fun d!1525939 () Bool)

(assert (= bs!1150424 (and d!1525939 start!489336)))

(declare-fun lambda!226423 () Int)

(assert (=> bs!1150424 (= lambda!226423 lambda!226410)))

(declare-fun bs!1150425 () Bool)

(assert (= bs!1150425 (and d!1525939 d!1525929)))

(assert (=> bs!1150425 (not (= lambda!226423 lambda!226420))))

(assert (=> d!1525939 (contains!17284 (extractMap!2282 (toList!6585 lm!2709)) key!6641)))

(declare-fun lt!1938000 () Unit!138809)

(declare-fun choose!34119 (ListLongMap!5003 K!15367 Hashable!6751) Unit!138809)

(assert (=> d!1525939 (= lt!1938000 (choose!34119 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1525939 (forall!12019 (toList!6585 lm!2709) lambda!226423)))

(assert (=> d!1525939 (= (lemmaListContainsThenExtractedMapContains!603 lm!2709 key!6641 hashF!1687) lt!1938000)))

(declare-fun bs!1150426 () Bool)

(assert (= bs!1150426 d!1525939))

(assert (=> bs!1150426 m!5749196))

(assert (=> bs!1150426 m!5749196))

(assert (=> bs!1150426 m!5749206))

(declare-fun m!5749282 () Bool)

(assert (=> bs!1150426 m!5749282))

(declare-fun m!5749284 () Bool)

(assert (=> bs!1150426 m!5749284))

(assert (=> b!4774893 d!1525939))

(declare-fun d!1525941 () Bool)

(declare-fun e!2980946 () Bool)

(assert (=> d!1525941 e!2980946))

(declare-fun res!2026079 () Bool)

(assert (=> d!1525941 (=> res!2026079 e!2980946)))

(declare-fun lt!1938010 () Bool)

(assert (=> d!1525941 (= res!2026079 (not lt!1938010))))

(declare-fun lt!1938011 () Bool)

(assert (=> d!1525941 (= lt!1938010 lt!1938011)))

(declare-fun lt!1938012 () Unit!138809)

(declare-fun e!2980945 () Unit!138809)

(assert (=> d!1525941 (= lt!1938012 e!2980945)))

(declare-fun c!814234 () Bool)

(assert (=> d!1525941 (= c!814234 lt!1938011)))

(declare-fun containsKey!3720 (List!53946 (_ BitVec 64)) Bool)

(assert (=> d!1525941 (= lt!1938011 (containsKey!3720 (toList!6585 lm!2709) lt!1937960))))

(assert (=> d!1525941 (= (contains!17283 lm!2709 lt!1937960) lt!1938010)))

(declare-fun b!4774945 () Bool)

(declare-fun lt!1938009 () Unit!138809)

(assert (=> b!4774945 (= e!2980945 lt!1938009)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2036 (List!53946 (_ BitVec 64)) Unit!138809)

(assert (=> b!4774945 (= lt!1938009 (lemmaContainsKeyImpliesGetValueByKeyDefined!2036 (toList!6585 lm!2709) lt!1937960))))

(declare-datatypes ((Option!12834 0))(
  ( (None!12833) (Some!12833 (v!47989 List!53945)) )
))
(declare-fun isDefined!9979 (Option!12834) Bool)

(declare-fun getValueByKey!2241 (List!53946 (_ BitVec 64)) Option!12834)

(assert (=> b!4774945 (isDefined!9979 (getValueByKey!2241 (toList!6585 lm!2709) lt!1937960))))

(declare-fun b!4774946 () Bool)

(declare-fun Unit!138813 () Unit!138809)

(assert (=> b!4774946 (= e!2980945 Unit!138813)))

(declare-fun b!4774947 () Bool)

(assert (=> b!4774947 (= e!2980946 (isDefined!9979 (getValueByKey!2241 (toList!6585 lm!2709) lt!1937960)))))

(assert (= (and d!1525941 c!814234) b!4774945))

(assert (= (and d!1525941 (not c!814234)) b!4774946))

(assert (= (and d!1525941 (not res!2026079)) b!4774947))

(declare-fun m!5749286 () Bool)

(assert (=> d!1525941 m!5749286))

(declare-fun m!5749288 () Bool)

(assert (=> b!4774945 m!5749288))

(declare-fun m!5749290 () Bool)

(assert (=> b!4774945 m!5749290))

(assert (=> b!4774945 m!5749290))

(declare-fun m!5749292 () Bool)

(assert (=> b!4774945 m!5749292))

(assert (=> b!4774947 m!5749290))

(assert (=> b!4774947 m!5749290))

(assert (=> b!4774947 m!5749292))

(assert (=> b!4774893 d!1525941))

(declare-fun b!4774964 () Bool)

(declare-fun e!2980961 () Bool)

(declare-fun lt!1938018 () Option!12832)

(declare-fun contains!17288 (List!53945 tuple2!56172) Bool)

(declare-fun get!18242 (Option!12832) tuple2!56172)

(assert (=> b!4774964 (= e!2980961 (contains!17288 lt!1937957 (get!18242 lt!1938018)))))

(declare-fun b!4774965 () Bool)

(declare-fun e!2980958 () Option!12832)

(assert (=> b!4774965 (= e!2980958 (getPair!739 (t!361395 lt!1937957) key!6641))))

(declare-fun b!4774966 () Bool)

(declare-fun res!2026089 () Bool)

(assert (=> b!4774966 (=> (not res!2026089) (not e!2980961))))

(assert (=> b!4774966 (= res!2026089 (= (_1!31380 (get!18242 lt!1938018)) key!6641))))

(declare-fun b!4774967 () Bool)

(declare-fun e!2980959 () Bool)

(assert (=> b!4774967 (= e!2980959 (not (containsKey!3719 lt!1937957 key!6641)))))

(declare-fun b!4774968 () Bool)

(assert (=> b!4774968 (= e!2980958 None!12831)))

(declare-fun d!1525943 () Bool)

(declare-fun e!2980960 () Bool)

(assert (=> d!1525943 e!2980960))

(declare-fun res!2026090 () Bool)

(assert (=> d!1525943 (=> res!2026090 e!2980960)))

(assert (=> d!1525943 (= res!2026090 e!2980959)))

(declare-fun res!2026088 () Bool)

(assert (=> d!1525943 (=> (not res!2026088) (not e!2980959))))

(declare-fun isEmpty!29314 (Option!12832) Bool)

(assert (=> d!1525943 (= res!2026088 (isEmpty!29314 lt!1938018))))

(declare-fun e!2980957 () Option!12832)

(assert (=> d!1525943 (= lt!1938018 e!2980957)))

(declare-fun c!814239 () Bool)

(assert (=> d!1525943 (= c!814239 (and (is-Cons!53821 lt!1937957) (= (_1!31380 (h!60235 lt!1937957)) key!6641)))))

(assert (=> d!1525943 (noDuplicateKeys!2274 lt!1937957)))

(assert (=> d!1525943 (= (getPair!739 lt!1937957 key!6641) lt!1938018)))

(declare-fun b!4774969 () Bool)

(assert (=> b!4774969 (= e!2980957 e!2980958)))

(declare-fun c!814240 () Bool)

(assert (=> b!4774969 (= c!814240 (is-Cons!53821 lt!1937957))))

(declare-fun b!4774970 () Bool)

(assert (=> b!4774970 (= e!2980960 e!2980961)))

(declare-fun res!2026091 () Bool)

(assert (=> b!4774970 (=> (not res!2026091) (not e!2980961))))

(assert (=> b!4774970 (= res!2026091 (isDefined!9977 lt!1938018))))

(declare-fun b!4774971 () Bool)

(assert (=> b!4774971 (= e!2980957 (Some!12831 (h!60235 lt!1937957)))))

(assert (= (and d!1525943 c!814239) b!4774971))

(assert (= (and d!1525943 (not c!814239)) b!4774969))

(assert (= (and b!4774969 c!814240) b!4774965))

(assert (= (and b!4774969 (not c!814240)) b!4774968))

(assert (= (and d!1525943 res!2026088) b!4774967))

(assert (= (and d!1525943 (not res!2026090)) b!4774970))

(assert (= (and b!4774970 res!2026091) b!4774966))

(assert (= (and b!4774966 res!2026089) b!4774964))

(declare-fun m!5749298 () Bool)

(assert (=> b!4774967 m!5749298))

(declare-fun m!5749300 () Bool)

(assert (=> b!4774965 m!5749300))

(declare-fun m!5749302 () Bool)

(assert (=> d!1525943 m!5749302))

(assert (=> d!1525943 m!5749198))

(declare-fun m!5749304 () Bool)

(assert (=> b!4774966 m!5749304))

(declare-fun m!5749306 () Bool)

(assert (=> b!4774970 m!5749306))

(assert (=> b!4774964 m!5749304))

(assert (=> b!4774964 m!5749304))

(declare-fun m!5749308 () Bool)

(assert (=> b!4774964 m!5749308))

(assert (=> b!4774893 d!1525943))

(declare-fun bs!1150430 () Bool)

(declare-fun d!1525947 () Bool)

(assert (= bs!1150430 (and d!1525947 start!489336)))

(declare-fun lambda!226433 () Int)

(assert (=> bs!1150430 (= lambda!226433 lambda!226410)))

(declare-fun bs!1150431 () Bool)

(assert (= bs!1150431 (and d!1525947 d!1525929)))

(assert (=> bs!1150431 (not (= lambda!226433 lambda!226420))))

(declare-fun bs!1150432 () Bool)

(assert (= bs!1150432 (and d!1525947 d!1525939)))

(assert (=> bs!1150432 (= lambda!226433 lambda!226423)))

(declare-fun e!2980973 () Bool)

(declare-fun b!4774990 () Bool)

(assert (=> b!4774990 (= e!2980973 (isDefined!9977 (getPair!739 (apply!12814 lm!2709 (hash!4721 hashF!1687 key!6641)) key!6641)))))

(declare-fun lt!1938046 () Unit!138809)

(assert (=> b!4774990 (= lt!1938046 (forallContained!3976 (toList!6585 lm!2709) lambda!226433 (tuple2!56175 (hash!4721 hashF!1687 key!6641) (apply!12814 lm!2709 (hash!4721 hashF!1687 key!6641)))))))

(declare-fun lt!1938047 () Unit!138809)

(declare-fun lt!1938043 () Unit!138809)

(assert (=> b!4774990 (= lt!1938047 lt!1938043)))

(declare-fun lt!1938044 () (_ BitVec 64))

(declare-fun lt!1938042 () List!53945)

(assert (=> b!4774990 (contains!17282 (toList!6585 lm!2709) (tuple2!56175 lt!1938044 lt!1938042))))

(assert (=> b!4774990 (= lt!1938043 (lemmaGetValueImpliesTupleContained!542 lm!2709 lt!1938044 lt!1938042))))

(declare-fun e!2980972 () Bool)

(assert (=> b!4774990 e!2980972))

(declare-fun res!2026106 () Bool)

(assert (=> b!4774990 (=> (not res!2026106) (not e!2980972))))

(assert (=> b!4774990 (= res!2026106 (contains!17283 lm!2709 lt!1938044))))

(assert (=> b!4774990 (= lt!1938042 (apply!12814 lm!2709 (hash!4721 hashF!1687 key!6641)))))

(assert (=> b!4774990 (= lt!1938044 (hash!4721 hashF!1687 key!6641))))

(declare-fun lt!1938041 () Unit!138809)

(declare-fun lt!1938045 () Unit!138809)

(assert (=> b!4774990 (= lt!1938041 lt!1938045)))

(assert (=> b!4774990 (contains!17283 lm!2709 (hash!4721 hashF!1687 key!6641))))

(assert (=> b!4774990 (= lt!1938045 (lemmaInGenMapThenLongMapContainsHash!955 lm!2709 key!6641 hashF!1687))))

(declare-fun b!4774991 () Bool)

(assert (=> b!4774991 (= e!2980972 (= (getValueByKey!2241 (toList!6585 lm!2709) lt!1938044) (Some!12833 lt!1938042)))))

(declare-fun b!4774988 () Bool)

(declare-fun res!2026108 () Bool)

(assert (=> b!4774988 (=> (not res!2026108) (not e!2980973))))

(assert (=> b!4774988 (= res!2026108 (allKeysSameHashInMap!2156 lm!2709 hashF!1687))))

(assert (=> d!1525947 e!2980973))

(declare-fun res!2026107 () Bool)

(assert (=> d!1525947 (=> (not res!2026107) (not e!2980973))))

(assert (=> d!1525947 (= res!2026107 (forall!12019 (toList!6585 lm!2709) lambda!226433))))

(declare-fun lt!1938048 () Unit!138809)

(declare-fun choose!34120 (ListLongMap!5003 K!15367 Hashable!6751) Unit!138809)

(assert (=> d!1525947 (= lt!1938048 (choose!34120 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1525947 (forall!12019 (toList!6585 lm!2709) lambda!226433)))

(assert (=> d!1525947 (= (lemmaInGenMapThenGetPairDefined!513 lm!2709 key!6641 hashF!1687) lt!1938048)))

(declare-fun b!4774989 () Bool)

(declare-fun res!2026109 () Bool)

(assert (=> b!4774989 (=> (not res!2026109) (not e!2980973))))

(assert (=> b!4774989 (= res!2026109 (contains!17284 (extractMap!2282 (toList!6585 lm!2709)) key!6641))))

(assert (= (and d!1525947 res!2026107) b!4774988))

(assert (= (and b!4774988 res!2026108) b!4774989))

(assert (= (and b!4774989 res!2026109) b!4774990))

(assert (= (and b!4774990 res!2026106) b!4774991))

(assert (=> b!4774988 m!5749218))

(declare-fun m!5749318 () Bool)

(assert (=> b!4774991 m!5749318))

(assert (=> b!4774989 m!5749196))

(assert (=> b!4774989 m!5749196))

(assert (=> b!4774989 m!5749206))

(assert (=> b!4774990 m!5749200))

(declare-fun m!5749320 () Bool)

(assert (=> b!4774990 m!5749320))

(assert (=> b!4774990 m!5749202))

(declare-fun m!5749322 () Bool)

(assert (=> b!4774990 m!5749322))

(assert (=> b!4774990 m!5749200))

(declare-fun m!5749324 () Bool)

(assert (=> b!4774990 m!5749324))

(assert (=> b!4774990 m!5749200))

(declare-fun m!5749326 () Bool)

(assert (=> b!4774990 m!5749326))

(declare-fun m!5749328 () Bool)

(assert (=> b!4774990 m!5749328))

(declare-fun m!5749330 () Bool)

(assert (=> b!4774990 m!5749330))

(assert (=> b!4774990 m!5749324))

(assert (=> b!4774990 m!5749328))

(declare-fun m!5749332 () Bool)

(assert (=> b!4774990 m!5749332))

(declare-fun m!5749334 () Bool)

(assert (=> b!4774990 m!5749334))

(declare-fun m!5749336 () Bool)

(assert (=> d!1525947 m!5749336))

(declare-fun m!5749338 () Bool)

(assert (=> d!1525947 m!5749338))

(assert (=> d!1525947 m!5749336))

(assert (=> b!4774893 d!1525947))

(declare-fun d!1525953 () Bool)

(assert (=> d!1525953 (= (isDefined!9977 (getPair!739 lt!1937957 key!6641)) (not (isEmpty!29314 (getPair!739 lt!1937957 key!6641))))))

(declare-fun bs!1150433 () Bool)

(assert (= bs!1150433 d!1525953))

(assert (=> bs!1150433 m!5749194))

(declare-fun m!5749340 () Bool)

(assert (=> bs!1150433 m!5749340))

(assert (=> b!4774893 d!1525953))

(declare-fun d!1525955 () Bool)

(declare-fun hash!4723 (Hashable!6751 K!15367) (_ BitVec 64))

(assert (=> d!1525955 (= (hash!4721 hashF!1687 key!6641) (hash!4723 hashF!1687 key!6641))))

(declare-fun bs!1150434 () Bool)

(assert (= bs!1150434 d!1525955))

(declare-fun m!5749342 () Bool)

(assert (=> bs!1150434 m!5749342))

(assert (=> b!4774893 d!1525955))

(declare-fun bs!1150435 () Bool)

(declare-fun d!1525957 () Bool)

(assert (= bs!1150435 (and d!1525957 start!489336)))

(declare-fun lambda!226436 () Int)

(assert (=> bs!1150435 (= lambda!226436 lambda!226410)))

(declare-fun bs!1150436 () Bool)

(assert (= bs!1150436 (and d!1525957 d!1525929)))

(assert (=> bs!1150436 (not (= lambda!226436 lambda!226420))))

(declare-fun bs!1150437 () Bool)

(assert (= bs!1150437 (and d!1525957 d!1525939)))

(assert (=> bs!1150437 (= lambda!226436 lambda!226423)))

(declare-fun bs!1150438 () Bool)

(assert (= bs!1150438 (and d!1525957 d!1525947)))

(assert (=> bs!1150438 (= lambda!226436 lambda!226433)))

(declare-fun lt!1938069 () ListMap!6061)

(declare-fun invariantList!1679 (List!53945) Bool)

(assert (=> d!1525957 (invariantList!1679 (toList!6586 lt!1938069))))

(declare-fun e!2980994 () ListMap!6061)

(assert (=> d!1525957 (= lt!1938069 e!2980994)))

(declare-fun c!814252 () Bool)

(assert (=> d!1525957 (= c!814252 (is-Cons!53822 (toList!6585 lm!2709)))))

(assert (=> d!1525957 (forall!12019 (toList!6585 lm!2709) lambda!226436)))

(assert (=> d!1525957 (= (extractMap!2282 (toList!6585 lm!2709)) lt!1938069)))

(declare-fun b!4775021 () Bool)

(declare-fun addToMapMapFromBucket!1644 (List!53945 ListMap!6061) ListMap!6061)

(assert (=> b!4775021 (= e!2980994 (addToMapMapFromBucket!1644 (_2!31381 (h!60236 (toList!6585 lm!2709))) (extractMap!2282 (t!361396 (toList!6585 lm!2709)))))))

(declare-fun b!4775022 () Bool)

(assert (=> b!4775022 (= e!2980994 (ListMap!6062 Nil!53821))))

(assert (= (and d!1525957 c!814252) b!4775021))

(assert (= (and d!1525957 (not c!814252)) b!4775022))

(declare-fun m!5749364 () Bool)

(assert (=> d!1525957 m!5749364))

(declare-fun m!5749366 () Bool)

(assert (=> d!1525957 m!5749366))

(declare-fun m!5749368 () Bool)

(assert (=> b!4775021 m!5749368))

(assert (=> b!4775021 m!5749368))

(declare-fun m!5749370 () Bool)

(assert (=> b!4775021 m!5749370))

(assert (=> b!4774893 d!1525957))

(declare-fun bs!1150439 () Bool)

(declare-fun d!1525961 () Bool)

(assert (= bs!1150439 (and d!1525961 d!1525939)))

(declare-fun lambda!226439 () Int)

(assert (=> bs!1150439 (= lambda!226439 lambda!226423)))

(declare-fun bs!1150440 () Bool)

(assert (= bs!1150440 (and d!1525961 d!1525947)))

(assert (=> bs!1150440 (= lambda!226439 lambda!226433)))

(declare-fun bs!1150441 () Bool)

(assert (= bs!1150441 (and d!1525961 start!489336)))

(assert (=> bs!1150441 (= lambda!226439 lambda!226410)))

(declare-fun bs!1150442 () Bool)

(assert (= bs!1150442 (and d!1525961 d!1525957)))

(assert (=> bs!1150442 (= lambda!226439 lambda!226436)))

(declare-fun bs!1150443 () Bool)

(assert (= bs!1150443 (and d!1525961 d!1525929)))

(assert (=> bs!1150443 (not (= lambda!226439 lambda!226420))))

(assert (=> d!1525961 (contains!17283 lm!2709 (hash!4721 hashF!1687 key!6641))))

(declare-fun lt!1938072 () Unit!138809)

(declare-fun choose!34121 (ListLongMap!5003 K!15367 Hashable!6751) Unit!138809)

(assert (=> d!1525961 (= lt!1938072 (choose!34121 lm!2709 key!6641 hashF!1687))))

(assert (=> d!1525961 (forall!12019 (toList!6585 lm!2709) lambda!226439)))

(assert (=> d!1525961 (= (lemmaInGenMapThenLongMapContainsHash!955 lm!2709 key!6641 hashF!1687) lt!1938072)))

(declare-fun bs!1150444 () Bool)

(assert (= bs!1150444 d!1525961))

(assert (=> bs!1150444 m!5749200))

(assert (=> bs!1150444 m!5749200))

(assert (=> bs!1150444 m!5749320))

(declare-fun m!5749372 () Bool)

(assert (=> bs!1150444 m!5749372))

(declare-fun m!5749374 () Bool)

(assert (=> bs!1150444 m!5749374))

(assert (=> b!4774893 d!1525961))

(declare-fun d!1525963 () Bool)

(assert (=> d!1525963 (contains!17282 (toList!6585 lm!2709) (tuple2!56175 lt!1937960 lt!1937957))))

(declare-fun lt!1938075 () Unit!138809)

(declare-fun choose!34122 (ListLongMap!5003 (_ BitVec 64) List!53945) Unit!138809)

(assert (=> d!1525963 (= lt!1938075 (choose!34122 lm!2709 lt!1937960 lt!1937957))))

(assert (=> d!1525963 (contains!17283 lm!2709 lt!1937960)))

(assert (=> d!1525963 (= (lemmaGetValueImpliesTupleContained!542 lm!2709 lt!1937960 lt!1937957) lt!1938075)))

(declare-fun bs!1150445 () Bool)

(assert (= bs!1150445 d!1525963))

(declare-fun m!5749376 () Bool)

(assert (=> bs!1150445 m!5749376))

(declare-fun m!5749378 () Bool)

(assert (=> bs!1150445 m!5749378))

(assert (=> bs!1150445 m!5749190))

(assert (=> b!4774893 d!1525963))

(declare-fun d!1525965 () Bool)

(declare-fun get!18243 (Option!12834) List!53945)

(assert (=> d!1525965 (= (apply!12814 lm!2709 lt!1937960) (get!18243 (getValueByKey!2241 (toList!6585 lm!2709) lt!1937960)))))

(declare-fun bs!1150446 () Bool)

(assert (= bs!1150446 d!1525965))

(assert (=> bs!1150446 m!5749290))

(assert (=> bs!1150446 m!5749290))

(declare-fun m!5749380 () Bool)

(assert (=> bs!1150446 m!5749380))

(assert (=> b!4774893 d!1525965))

(declare-fun d!1525967 () Bool)

(assert (=> d!1525967 (dynLambda!21989 lambda!226410 lt!1937961)))

(declare-fun lt!1938078 () Unit!138809)

(declare-fun choose!34123 (List!53946 Int tuple2!56174) Unit!138809)

(assert (=> d!1525967 (= lt!1938078 (choose!34123 (toList!6585 lm!2709) lambda!226410 lt!1937961))))

(declare-fun e!2980997 () Bool)

(assert (=> d!1525967 e!2980997))

(declare-fun res!2026121 () Bool)

(assert (=> d!1525967 (=> (not res!2026121) (not e!2980997))))

(assert (=> d!1525967 (= res!2026121 (forall!12019 (toList!6585 lm!2709) lambda!226410))))

(assert (=> d!1525967 (= (forallContained!3976 (toList!6585 lm!2709) lambda!226410 lt!1937961) lt!1938078)))

(declare-fun b!4775026 () Bool)

(assert (=> b!4775026 (= e!2980997 (contains!17282 (toList!6585 lm!2709) lt!1937961))))

(assert (= (and d!1525967 res!2026121) b!4775026))

(declare-fun b_lambda!184915 () Bool)

(assert (=> (not b_lambda!184915) (not d!1525967)))

(declare-fun m!5749382 () Bool)

(assert (=> d!1525967 m!5749382))

(declare-fun m!5749384 () Bool)

(assert (=> d!1525967 m!5749384))

(assert (=> d!1525967 m!5749212))

(assert (=> b!4775026 m!5749208))

(assert (=> b!4774893 d!1525967))

(declare-fun b!4775045 () Bool)

(declare-fun e!2981013 () Bool)

(declare-datatypes ((List!53949 0))(
  ( (Nil!53825) (Cons!53825 (h!60239 K!15367) (t!361399 List!53949)) )
))
(declare-fun contains!17289 (List!53949 K!15367) Bool)

(declare-fun keys!19569 (ListMap!6061) List!53949)

(assert (=> b!4775045 (= e!2981013 (contains!17289 (keys!19569 (extractMap!2282 (toList!6585 lm!2709))) key!6641))))

(declare-fun b!4775046 () Bool)

(declare-fun e!2981010 () Unit!138809)

(declare-fun Unit!138814 () Unit!138809)

(assert (=> b!4775046 (= e!2981010 Unit!138814)))

(declare-fun b!4775047 () Bool)

(assert (=> b!4775047 false))

(declare-fun lt!1938095 () Unit!138809)

(declare-fun lt!1938101 () Unit!138809)

(assert (=> b!4775047 (= lt!1938095 lt!1938101)))

(declare-fun containsKey!3721 (List!53945 K!15367) Bool)

(assert (=> b!4775047 (containsKey!3721 (toList!6586 (extractMap!2282 (toList!6585 lm!2709))) key!6641)))

(declare-fun lemmaInGetKeysListThenContainsKey!1020 (List!53945 K!15367) Unit!138809)

(assert (=> b!4775047 (= lt!1938101 (lemmaInGetKeysListThenContainsKey!1020 (toList!6586 (extractMap!2282 (toList!6585 lm!2709))) key!6641))))

(declare-fun Unit!138815 () Unit!138809)

(assert (=> b!4775047 (= e!2981010 Unit!138815)))

(declare-fun b!4775048 () Bool)

(declare-fun e!2981012 () Bool)

(assert (=> b!4775048 (= e!2981012 (not (contains!17289 (keys!19569 (extractMap!2282 (toList!6585 lm!2709))) key!6641)))))

(declare-fun b!4775049 () Bool)

(declare-fun e!2981011 () Unit!138809)

(declare-fun lt!1938097 () Unit!138809)

(assert (=> b!4775049 (= e!2981011 lt!1938097)))

(declare-fun lt!1938096 () Unit!138809)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2037 (List!53945 K!15367) Unit!138809)

(assert (=> b!4775049 (= lt!1938096 (lemmaContainsKeyImpliesGetValueByKeyDefined!2037 (toList!6586 (extractMap!2282 (toList!6585 lm!2709))) key!6641))))

(declare-datatypes ((Option!12835 0))(
  ( (None!12834) (Some!12834 (v!47990 V!15613)) )
))
(declare-fun isDefined!9980 (Option!12835) Bool)

(declare-fun getValueByKey!2242 (List!53945 K!15367) Option!12835)

(assert (=> b!4775049 (isDefined!9980 (getValueByKey!2242 (toList!6586 (extractMap!2282 (toList!6585 lm!2709))) key!6641))))

(declare-fun lt!1938102 () Unit!138809)

(assert (=> b!4775049 (= lt!1938102 lt!1938096)))

(declare-fun lemmaInListThenGetKeysListContains!1016 (List!53945 K!15367) Unit!138809)

(assert (=> b!4775049 (= lt!1938097 (lemmaInListThenGetKeysListContains!1016 (toList!6586 (extractMap!2282 (toList!6585 lm!2709))) key!6641))))

(declare-fun call!334558 () Bool)

(assert (=> b!4775049 call!334558))

(declare-fun b!4775050 () Bool)

(assert (=> b!4775050 (= e!2981011 e!2981010)))

(declare-fun c!814259 () Bool)

(assert (=> b!4775050 (= c!814259 call!334558)))

(declare-fun b!4775051 () Bool)

(declare-fun e!2981015 () List!53949)

(declare-fun getKeysList!1021 (List!53945) List!53949)

(assert (=> b!4775051 (= e!2981015 (getKeysList!1021 (toList!6586 (extractMap!2282 (toList!6585 lm!2709)))))))

(declare-fun d!1525969 () Bool)

(declare-fun e!2981014 () Bool)

(assert (=> d!1525969 e!2981014))

(declare-fun res!2026130 () Bool)

(assert (=> d!1525969 (=> res!2026130 e!2981014)))

(assert (=> d!1525969 (= res!2026130 e!2981012)))

(declare-fun res!2026128 () Bool)

(assert (=> d!1525969 (=> (not res!2026128) (not e!2981012))))

(declare-fun lt!1938100 () Bool)

(assert (=> d!1525969 (= res!2026128 (not lt!1938100))))

(declare-fun lt!1938098 () Bool)

(assert (=> d!1525969 (= lt!1938100 lt!1938098)))

(declare-fun lt!1938099 () Unit!138809)

(assert (=> d!1525969 (= lt!1938099 e!2981011)))

(declare-fun c!814260 () Bool)

(assert (=> d!1525969 (= c!814260 lt!1938098)))

(assert (=> d!1525969 (= lt!1938098 (containsKey!3721 (toList!6586 (extractMap!2282 (toList!6585 lm!2709))) key!6641))))

(assert (=> d!1525969 (= (contains!17284 (extractMap!2282 (toList!6585 lm!2709)) key!6641) lt!1938100)))

(declare-fun b!4775052 () Bool)

(assert (=> b!4775052 (= e!2981014 e!2981013)))

(declare-fun res!2026129 () Bool)

(assert (=> b!4775052 (=> (not res!2026129) (not e!2981013))))

(assert (=> b!4775052 (= res!2026129 (isDefined!9980 (getValueByKey!2242 (toList!6586 (extractMap!2282 (toList!6585 lm!2709))) key!6641)))))

(declare-fun b!4775053 () Bool)

(assert (=> b!4775053 (= e!2981015 (keys!19569 (extractMap!2282 (toList!6585 lm!2709))))))

(declare-fun bm!334553 () Bool)

(assert (=> bm!334553 (= call!334558 (contains!17289 e!2981015 key!6641))))

(declare-fun c!814261 () Bool)

(assert (=> bm!334553 (= c!814261 c!814260)))

(assert (= (and d!1525969 c!814260) b!4775049))

(assert (= (and d!1525969 (not c!814260)) b!4775050))

(assert (= (and b!4775050 c!814259) b!4775047))

(assert (= (and b!4775050 (not c!814259)) b!4775046))

(assert (= (or b!4775049 b!4775050) bm!334553))

(assert (= (and bm!334553 c!814261) b!4775051))

(assert (= (and bm!334553 (not c!814261)) b!4775053))

(assert (= (and d!1525969 res!2026128) b!4775048))

(assert (= (and d!1525969 (not res!2026130)) b!4775052))

(assert (= (and b!4775052 res!2026129) b!4775045))

(assert (=> b!4775048 m!5749196))

(declare-fun m!5749386 () Bool)

(assert (=> b!4775048 m!5749386))

(assert (=> b!4775048 m!5749386))

(declare-fun m!5749388 () Bool)

(assert (=> b!4775048 m!5749388))

(assert (=> b!4775045 m!5749196))

(assert (=> b!4775045 m!5749386))

(assert (=> b!4775045 m!5749386))

(assert (=> b!4775045 m!5749388))

(declare-fun m!5749390 () Bool)

(assert (=> b!4775047 m!5749390))

(declare-fun m!5749392 () Bool)

(assert (=> b!4775047 m!5749392))

(declare-fun m!5749394 () Bool)

(assert (=> bm!334553 m!5749394))

(declare-fun m!5749396 () Bool)

(assert (=> b!4775049 m!5749396))

(declare-fun m!5749398 () Bool)

(assert (=> b!4775049 m!5749398))

(assert (=> b!4775049 m!5749398))

(declare-fun m!5749400 () Bool)

(assert (=> b!4775049 m!5749400))

(declare-fun m!5749402 () Bool)

(assert (=> b!4775049 m!5749402))

(assert (=> b!4775053 m!5749196))

(assert (=> b!4775053 m!5749386))

(declare-fun m!5749404 () Bool)

(assert (=> b!4775051 m!5749404))

(assert (=> d!1525969 m!5749390))

(assert (=> b!4775052 m!5749398))

(assert (=> b!4775052 m!5749398))

(assert (=> b!4775052 m!5749400))

(assert (=> b!4774893 d!1525969))

(declare-fun b!4775058 () Bool)

(declare-fun e!2981018 () Bool)

(declare-fun tp!1357031 () Bool)

(declare-fun tp!1357032 () Bool)

(assert (=> b!4775058 (= e!2981018 (and tp!1357031 tp!1357032))))

(assert (=> b!4774894 (= tp!1357023 e!2981018)))

(assert (= (and b!4774894 (is-Cons!53822 (toList!6585 lm!2709))) b!4775058))

(declare-fun b_lambda!184917 () Bool)

(assert (= b_lambda!184915 (or start!489336 b_lambda!184917)))

(declare-fun bs!1150447 () Bool)

(declare-fun d!1525971 () Bool)

(assert (= bs!1150447 (and d!1525971 start!489336)))

(assert (=> bs!1150447 (= (dynLambda!21989 lambda!226410 lt!1937961) (noDuplicateKeys!2274 (_2!31381 lt!1937961)))))

(declare-fun m!5749406 () Bool)

(assert (=> bs!1150447 m!5749406))

(assert (=> d!1525967 d!1525971))

(declare-fun b_lambda!184919 () Bool)

(assert (= b_lambda!184911 (or start!489336 b_lambda!184919)))

(declare-fun bs!1150448 () Bool)

(declare-fun d!1525973 () Bool)

(assert (= bs!1150448 (and d!1525973 start!489336)))

(assert (=> bs!1150448 (= (dynLambda!21989 lambda!226410 (h!60236 (toList!6585 lm!2709))) (noDuplicateKeys!2274 (_2!31381 (h!60236 (toList!6585 lm!2709)))))))

(declare-fun m!5749408 () Bool)

(assert (=> bs!1150448 m!5749408))

(assert (=> b!4774911 d!1525973))

(push 1)

(assert (not d!1525939))

(assert (not b!4774938))

(assert (not b!4775026))

(assert (not d!1525941))

(assert (not b!4774912))

(assert (not b_lambda!184917))

(assert (not b!4774924))

(assert (not b!4774988))

(assert (not b!4775021))

(assert (not d!1525947))

(assert (not d!1525937))

(assert (not b!4775051))

(assert (not b!4775053))

(assert (not b!4774964))

(assert (not d!1525953))

(assert (not bs!1150448))

(assert (not b!4774989))

(assert (not d!1525929))

(assert (not b!4775045))

(assert (not d!1525957))

(assert (not d!1525955))

(assert (not b!4775047))

(assert (not b_lambda!184919))

(assert (not b!4774970))

(assert (not d!1525965))

(assert (not b!4774966))

(assert (not d!1525943))

(assert (not d!1525961))

(assert (not d!1525967))

(assert (not b!4774967))

(assert (not bm!334553))

(assert (not d!1525969))

(assert (not bs!1150447))

(assert (not b!4774945))

(assert (not b!4774990))

(assert (not b!4774947))

(assert (not b!4774931))

(assert tp_is_empty!32937)

(assert (not b!4775052))

(assert (not b!4775049))

(assert (not d!1525963))

(assert (not b!4774932))

(assert (not b!4775058))

(assert (not b!4774926))

(assert (not b!4774991))

(assert (not b!4775048))

(assert (not b!4774965))

(assert (not d!1525927))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

