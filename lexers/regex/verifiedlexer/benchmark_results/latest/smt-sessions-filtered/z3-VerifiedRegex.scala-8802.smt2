; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!471148 () Bool)

(assert start!471148)

(declare-fun b!4670962 () Bool)

(declare-fun e!2914870 () Bool)

(declare-datatypes ((K!13415 0))(
  ( (K!13416 (val!19003 Int)) )
))
(declare-datatypes ((V!13661 0))(
  ( (V!13662 (val!19004 Int)) )
))
(declare-datatypes ((tuple2!53236 0))(
  ( (tuple2!53237 (_1!29912 K!13415) (_2!29912 V!13661)) )
))
(declare-datatypes ((List!52171 0))(
  ( (Nil!52047) (Cons!52047 (h!58227 tuple2!53236) (t!359309 List!52171)) )
))
(declare-fun l!12991 () List!52171)

(declare-fun key!4532 () K!13415)

(declare-fun containsKey!2850 (List!52171 K!13415) Bool)

(assert (=> b!4670962 (= e!2914870 (not (not (containsKey!2850 (t!359309 l!12991) key!4532))))))

(declare-datatypes ((ListMap!4673 0))(
  ( (ListMap!4674 (toList!5314 List!52171)) )
))
(declare-fun lt!1832906 () ListMap!4673)

(declare-fun lhm!57 () ListMap!4673)

(declare-fun -!634 (ListMap!4673 K!13415) ListMap!4673)

(declare-fun +!2034 (ListMap!4673 tuple2!53236) ListMap!4673)

(assert (=> b!4670962 (= (-!634 lt!1832906 key!4532) (+!2034 (-!634 lhm!57 key!4532) (h!58227 l!12991)))))

(declare-datatypes ((Unit!121138 0))(
  ( (Unit!121139) )
))
(declare-fun lt!1832907 () Unit!121138)

(declare-fun addRemoveCommutativeForDiffKeys!71 (ListMap!4673 K!13415 V!13661 K!13415) Unit!121138)

(assert (=> b!4670962 (= lt!1832907 (addRemoveCommutativeForDiffKeys!71 lhm!57 (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991)) key!4532))))

(assert (=> b!4670962 (= lt!1832906 (+!2034 lhm!57 (h!58227 l!12991)))))

(declare-fun res!1966332 () Bool)

(assert (=> start!471148 (=> (not res!1966332) (not e!2914870))))

(assert (=> start!471148 (= res!1966332 (not (containsKey!2850 l!12991 key!4532)))))

(assert (=> start!471148 e!2914870))

(declare-fun e!2914872 () Bool)

(assert (=> start!471148 e!2914872))

(declare-fun tp_is_empty!30117 () Bool)

(assert (=> start!471148 tp_is_empty!30117))

(declare-fun e!2914871 () Bool)

(declare-fun inv!67289 (ListMap!4673) Bool)

(assert (=> start!471148 (and (inv!67289 lhm!57) e!2914871)))

(declare-fun b!4670963 () Bool)

(declare-fun res!1966331 () Bool)

(assert (=> b!4670963 (=> (not res!1966331) (not e!2914870))))

(get-info :version)

(assert (=> b!4670963 (= res!1966331 ((_ is Cons!52047) l!12991))))

(declare-fun b!4670964 () Bool)

(declare-fun tp!1343889 () Bool)

(assert (=> b!4670964 (= e!2914871 tp!1343889)))

(declare-fun b!4670965 () Bool)

(declare-fun res!1966330 () Bool)

(assert (=> b!4670965 (=> (not res!1966330) (not e!2914870))))

(declare-fun noDuplicateKeys!1706 (List!52171) Bool)

(assert (=> b!4670965 (= res!1966330 (noDuplicateKeys!1706 l!12991))))

(declare-fun tp_is_empty!30119 () Bool)

(declare-fun tp!1343888 () Bool)

(declare-fun b!4670966 () Bool)

(assert (=> b!4670966 (= e!2914872 (and tp_is_empty!30117 tp_is_empty!30119 tp!1343888))))

(assert (= (and start!471148 res!1966332) b!4670965))

(assert (= (and b!4670965 res!1966330) b!4670963))

(assert (= (and b!4670963 res!1966331) b!4670962))

(assert (= (and start!471148 ((_ is Cons!52047) l!12991)) b!4670966))

(assert (= start!471148 b!4670964))

(declare-fun m!5564217 () Bool)

(assert (=> b!4670962 m!5564217))

(declare-fun m!5564219 () Bool)

(assert (=> b!4670962 m!5564219))

(declare-fun m!5564221 () Bool)

(assert (=> b!4670962 m!5564221))

(declare-fun m!5564223 () Bool)

(assert (=> b!4670962 m!5564223))

(declare-fun m!5564225 () Bool)

(assert (=> b!4670962 m!5564225))

(assert (=> b!4670962 m!5564221))

(declare-fun m!5564227 () Bool)

(assert (=> b!4670962 m!5564227))

(declare-fun m!5564229 () Bool)

(assert (=> start!471148 m!5564229))

(declare-fun m!5564231 () Bool)

(assert (=> start!471148 m!5564231))

(declare-fun m!5564233 () Bool)

(assert (=> b!4670965 m!5564233))

(check-sat tp_is_empty!30119 (not b!4670966) (not b!4670964) (not start!471148) (not b!4670962) tp_is_empty!30117 (not b!4670965))
(check-sat)
(get-model)

(declare-fun d!1485319 () Bool)

(declare-fun res!1966343 () Bool)

(declare-fun e!2914883 () Bool)

(assert (=> d!1485319 (=> res!1966343 e!2914883)))

(assert (=> d!1485319 (= res!1966343 (not ((_ is Cons!52047) l!12991)))))

(assert (=> d!1485319 (= (noDuplicateKeys!1706 l!12991) e!2914883)))

(declare-fun b!4670977 () Bool)

(declare-fun e!2914884 () Bool)

(assert (=> b!4670977 (= e!2914883 e!2914884)))

(declare-fun res!1966344 () Bool)

(assert (=> b!4670977 (=> (not res!1966344) (not e!2914884))))

(assert (=> b!4670977 (= res!1966344 (not (containsKey!2850 (t!359309 l!12991) (_1!29912 (h!58227 l!12991)))))))

(declare-fun b!4670978 () Bool)

(assert (=> b!4670978 (= e!2914884 (noDuplicateKeys!1706 (t!359309 l!12991)))))

(assert (= (and d!1485319 (not res!1966343)) b!4670977))

(assert (= (and b!4670977 res!1966344) b!4670978))

(declare-fun m!5564239 () Bool)

(assert (=> b!4670977 m!5564239))

(declare-fun m!5564241 () Bool)

(assert (=> b!4670978 m!5564241))

(assert (=> b!4670965 d!1485319))

(declare-fun d!1485323 () Bool)

(declare-fun res!1966349 () Bool)

(declare-fun e!2914889 () Bool)

(assert (=> d!1485323 (=> res!1966349 e!2914889)))

(assert (=> d!1485323 (= res!1966349 (and ((_ is Cons!52047) l!12991) (= (_1!29912 (h!58227 l!12991)) key!4532)))))

(assert (=> d!1485323 (= (containsKey!2850 l!12991 key!4532) e!2914889)))

(declare-fun b!4670983 () Bool)

(declare-fun e!2914890 () Bool)

(assert (=> b!4670983 (= e!2914889 e!2914890)))

(declare-fun res!1966350 () Bool)

(assert (=> b!4670983 (=> (not res!1966350) (not e!2914890))))

(assert (=> b!4670983 (= res!1966350 ((_ is Cons!52047) l!12991))))

(declare-fun b!4670984 () Bool)

(assert (=> b!4670984 (= e!2914890 (containsKey!2850 (t!359309 l!12991) key!4532))))

(assert (= (and d!1485323 (not res!1966349)) b!4670983))

(assert (= (and b!4670983 res!1966350) b!4670984))

(assert (=> b!4670984 m!5564225))

(assert (=> start!471148 d!1485323))

(declare-fun d!1485325 () Bool)

(declare-fun invariantList!1335 (List!52171) Bool)

(assert (=> d!1485325 (= (inv!67289 lhm!57) (invariantList!1335 (toList!5314 lhm!57)))))

(declare-fun bs!1078835 () Bool)

(assert (= bs!1078835 d!1485325))

(declare-fun m!5564243 () Bool)

(assert (=> bs!1078835 m!5564243))

(assert (=> start!471148 d!1485325))

(declare-fun d!1485327 () Bool)

(declare-fun e!2914896 () Bool)

(assert (=> d!1485327 e!2914896))

(declare-fun res!1966356 () Bool)

(assert (=> d!1485327 (=> (not res!1966356) (not e!2914896))))

(declare-fun lt!1832913 () ListMap!4673)

(declare-fun contains!15243 (ListMap!4673 K!13415) Bool)

(assert (=> d!1485327 (= res!1966356 (not (contains!15243 lt!1832913 key!4532)))))

(declare-fun removePresrvNoDuplicatedKeys!311 (List!52171 K!13415) List!52171)

(assert (=> d!1485327 (= lt!1832913 (ListMap!4674 (removePresrvNoDuplicatedKeys!311 (toList!5314 lhm!57) key!4532)))))

(assert (=> d!1485327 (= (-!634 lhm!57 key!4532) lt!1832913)))

(declare-fun b!4670990 () Bool)

(declare-datatypes ((List!52173 0))(
  ( (Nil!52049) (Cons!52049 (h!58229 K!13415) (t!359311 List!52173)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9071 (List!52173) (InoxSet K!13415))

(declare-fun keys!18490 (ListMap!4673) List!52173)

(assert (=> b!4670990 (= e!2914896 (= ((_ map and) (content!9071 (keys!18490 lhm!57)) ((_ map not) (store ((as const (Array K!13415 Bool)) false) key!4532 true))) (content!9071 (keys!18490 lt!1832913))))))

(assert (= (and d!1485327 res!1966356) b!4670990))

(declare-fun m!5564259 () Bool)

(assert (=> d!1485327 m!5564259))

(declare-fun m!5564261 () Bool)

(assert (=> d!1485327 m!5564261))

(declare-fun m!5564263 () Bool)

(assert (=> b!4670990 m!5564263))

(declare-fun m!5564265 () Bool)

(assert (=> b!4670990 m!5564265))

(assert (=> b!4670990 m!5564265))

(declare-fun m!5564267 () Bool)

(assert (=> b!4670990 m!5564267))

(declare-fun m!5564269 () Bool)

(assert (=> b!4670990 m!5564269))

(declare-fun m!5564271 () Bool)

(assert (=> b!4670990 m!5564271))

(assert (=> b!4670990 m!5564269))

(assert (=> b!4670962 d!1485327))

(declare-fun d!1485331 () Bool)

(declare-fun e!2914910 () Bool)

(assert (=> d!1485331 e!2914910))

(declare-fun res!1966377 () Bool)

(assert (=> d!1485331 (=> (not res!1966377) (not e!2914910))))

(declare-fun lt!1832941 () ListMap!4673)

(assert (=> d!1485331 (= res!1966377 (contains!15243 lt!1832941 (_1!29912 (h!58227 l!12991))))))

(declare-fun lt!1832939 () List!52171)

(assert (=> d!1485331 (= lt!1832941 (ListMap!4674 lt!1832939))))

(declare-fun lt!1832942 () Unit!121138)

(declare-fun lt!1832940 () Unit!121138)

(assert (=> d!1485331 (= lt!1832942 lt!1832940)))

(declare-datatypes ((Option!11932 0))(
  ( (None!11931) (Some!11931 (v!46291 V!13661)) )
))
(declare-fun getValueByKey!1680 (List!52171 K!13415) Option!11932)

(assert (=> d!1485331 (= (getValueByKey!1680 lt!1832939 (_1!29912 (h!58227 l!12991))) (Some!11931 (_2!29912 (h!58227 l!12991))))))

(declare-fun lemmaContainsTupThenGetReturnValue!954 (List!52171 K!13415 V!13661) Unit!121138)

(assert (=> d!1485331 (= lt!1832940 (lemmaContainsTupThenGetReturnValue!954 lt!1832939 (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991))))))

(declare-fun insertNoDuplicatedKeys!462 (List!52171 K!13415 V!13661) List!52171)

(assert (=> d!1485331 (= lt!1832939 (insertNoDuplicatedKeys!462 (toList!5314 lhm!57) (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991))))))

(assert (=> d!1485331 (= (+!2034 lhm!57 (h!58227 l!12991)) lt!1832941)))

(declare-fun b!4671010 () Bool)

(declare-fun res!1966376 () Bool)

(assert (=> b!4671010 (=> (not res!1966376) (not e!2914910))))

(assert (=> b!4671010 (= res!1966376 (= (getValueByKey!1680 (toList!5314 lt!1832941) (_1!29912 (h!58227 l!12991))) (Some!11931 (_2!29912 (h!58227 l!12991)))))))

(declare-fun b!4671011 () Bool)

(declare-fun contains!15245 (List!52171 tuple2!53236) Bool)

(assert (=> b!4671011 (= e!2914910 (contains!15245 (toList!5314 lt!1832941) (h!58227 l!12991)))))

(assert (= (and d!1485331 res!1966377) b!4671010))

(assert (= (and b!4671010 res!1966376) b!4671011))

(declare-fun m!5564311 () Bool)

(assert (=> d!1485331 m!5564311))

(declare-fun m!5564313 () Bool)

(assert (=> d!1485331 m!5564313))

(declare-fun m!5564315 () Bool)

(assert (=> d!1485331 m!5564315))

(declare-fun m!5564317 () Bool)

(assert (=> d!1485331 m!5564317))

(declare-fun m!5564319 () Bool)

(assert (=> b!4671010 m!5564319))

(declare-fun m!5564321 () Bool)

(assert (=> b!4671011 m!5564321))

(assert (=> b!4670962 d!1485331))

(declare-fun d!1485341 () Bool)

(declare-fun e!2914911 () Bool)

(assert (=> d!1485341 e!2914911))

(declare-fun res!1966378 () Bool)

(assert (=> d!1485341 (=> (not res!1966378) (not e!2914911))))

(declare-fun lt!1832943 () ListMap!4673)

(assert (=> d!1485341 (= res!1966378 (not (contains!15243 lt!1832943 key!4532)))))

(assert (=> d!1485341 (= lt!1832943 (ListMap!4674 (removePresrvNoDuplicatedKeys!311 (toList!5314 lt!1832906) key!4532)))))

(assert (=> d!1485341 (= (-!634 lt!1832906 key!4532) lt!1832943)))

(declare-fun b!4671012 () Bool)

(assert (=> b!4671012 (= e!2914911 (= ((_ map and) (content!9071 (keys!18490 lt!1832906)) ((_ map not) (store ((as const (Array K!13415 Bool)) false) key!4532 true))) (content!9071 (keys!18490 lt!1832943))))))

(assert (= (and d!1485341 res!1966378) b!4671012))

(declare-fun m!5564323 () Bool)

(assert (=> d!1485341 m!5564323))

(declare-fun m!5564325 () Bool)

(assert (=> d!1485341 m!5564325))

(assert (=> b!4671012 m!5564263))

(declare-fun m!5564327 () Bool)

(assert (=> b!4671012 m!5564327))

(assert (=> b!4671012 m!5564327))

(declare-fun m!5564329 () Bool)

(assert (=> b!4671012 m!5564329))

(declare-fun m!5564331 () Bool)

(assert (=> b!4671012 m!5564331))

(declare-fun m!5564333 () Bool)

(assert (=> b!4671012 m!5564333))

(assert (=> b!4671012 m!5564331))

(assert (=> b!4670962 d!1485341))

(declare-fun d!1485343 () Bool)

(declare-fun res!1966379 () Bool)

(declare-fun e!2914912 () Bool)

(assert (=> d!1485343 (=> res!1966379 e!2914912)))

(assert (=> d!1485343 (= res!1966379 (and ((_ is Cons!52047) (t!359309 l!12991)) (= (_1!29912 (h!58227 (t!359309 l!12991))) key!4532)))))

(assert (=> d!1485343 (= (containsKey!2850 (t!359309 l!12991) key!4532) e!2914912)))

(declare-fun b!4671013 () Bool)

(declare-fun e!2914913 () Bool)

(assert (=> b!4671013 (= e!2914912 e!2914913)))

(declare-fun res!1966380 () Bool)

(assert (=> b!4671013 (=> (not res!1966380) (not e!2914913))))

(assert (=> b!4671013 (= res!1966380 ((_ is Cons!52047) (t!359309 l!12991)))))

(declare-fun b!4671014 () Bool)

(assert (=> b!4671014 (= e!2914913 (containsKey!2850 (t!359309 (t!359309 l!12991)) key!4532))))

(assert (= (and d!1485343 (not res!1966379)) b!4671013))

(assert (= (and b!4671013 res!1966380) b!4671014))

(declare-fun m!5564335 () Bool)

(assert (=> b!4671014 m!5564335))

(assert (=> b!4670962 d!1485343))

(declare-fun d!1485345 () Bool)

(assert (=> d!1485345 (= (-!634 (+!2034 lhm!57 (tuple2!53237 (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991)))) key!4532) (+!2034 (-!634 lhm!57 key!4532) (tuple2!53237 (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991)))))))

(declare-fun lt!1832949 () Unit!121138)

(declare-fun choose!32327 (ListMap!4673 K!13415 V!13661 K!13415) Unit!121138)

(assert (=> d!1485345 (= lt!1832949 (choose!32327 lhm!57 (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991)) key!4532))))

(assert (=> d!1485345 (not (= (_1!29912 (h!58227 l!12991)) key!4532))))

(assert (=> d!1485345 (= (addRemoveCommutativeForDiffKeys!71 lhm!57 (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991)) key!4532) lt!1832949)))

(declare-fun bs!1078837 () Bool)

(assert (= bs!1078837 d!1485345))

(assert (=> bs!1078837 m!5564221))

(declare-fun m!5564345 () Bool)

(assert (=> bs!1078837 m!5564345))

(declare-fun m!5564347 () Bool)

(assert (=> bs!1078837 m!5564347))

(assert (=> bs!1078837 m!5564345))

(assert (=> bs!1078837 m!5564221))

(declare-fun m!5564349 () Bool)

(assert (=> bs!1078837 m!5564349))

(declare-fun m!5564351 () Bool)

(assert (=> bs!1078837 m!5564351))

(assert (=> b!4670962 d!1485345))

(declare-fun d!1485351 () Bool)

(declare-fun e!2914916 () Bool)

(assert (=> d!1485351 e!2914916))

(declare-fun res!1966384 () Bool)

(assert (=> d!1485351 (=> (not res!1966384) (not e!2914916))))

(declare-fun lt!1832952 () ListMap!4673)

(assert (=> d!1485351 (= res!1966384 (contains!15243 lt!1832952 (_1!29912 (h!58227 l!12991))))))

(declare-fun lt!1832950 () List!52171)

(assert (=> d!1485351 (= lt!1832952 (ListMap!4674 lt!1832950))))

(declare-fun lt!1832953 () Unit!121138)

(declare-fun lt!1832951 () Unit!121138)

(assert (=> d!1485351 (= lt!1832953 lt!1832951)))

(assert (=> d!1485351 (= (getValueByKey!1680 lt!1832950 (_1!29912 (h!58227 l!12991))) (Some!11931 (_2!29912 (h!58227 l!12991))))))

(assert (=> d!1485351 (= lt!1832951 (lemmaContainsTupThenGetReturnValue!954 lt!1832950 (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991))))))

(assert (=> d!1485351 (= lt!1832950 (insertNoDuplicatedKeys!462 (toList!5314 (-!634 lhm!57 key!4532)) (_1!29912 (h!58227 l!12991)) (_2!29912 (h!58227 l!12991))))))

(assert (=> d!1485351 (= (+!2034 (-!634 lhm!57 key!4532) (h!58227 l!12991)) lt!1832952)))

(declare-fun b!4671017 () Bool)

(declare-fun res!1966383 () Bool)

(assert (=> b!4671017 (=> (not res!1966383) (not e!2914916))))

(assert (=> b!4671017 (= res!1966383 (= (getValueByKey!1680 (toList!5314 lt!1832952) (_1!29912 (h!58227 l!12991))) (Some!11931 (_2!29912 (h!58227 l!12991)))))))

(declare-fun b!4671018 () Bool)

(assert (=> b!4671018 (= e!2914916 (contains!15245 (toList!5314 lt!1832952) (h!58227 l!12991)))))

(assert (= (and d!1485351 res!1966384) b!4671017))

(assert (= (and b!4671017 res!1966383) b!4671018))

(declare-fun m!5564355 () Bool)

(assert (=> d!1485351 m!5564355))

(declare-fun m!5564357 () Bool)

(assert (=> d!1485351 m!5564357))

(declare-fun m!5564359 () Bool)

(assert (=> d!1485351 m!5564359))

(declare-fun m!5564361 () Bool)

(assert (=> d!1485351 m!5564361))

(declare-fun m!5564363 () Bool)

(assert (=> b!4671017 m!5564363))

(declare-fun m!5564365 () Bool)

(assert (=> b!4671018 m!5564365))

(assert (=> b!4670962 d!1485351))

(declare-fun b!4671029 () Bool)

(declare-fun tp!1343896 () Bool)

(declare-fun e!2914923 () Bool)

(assert (=> b!4671029 (= e!2914923 (and tp_is_empty!30117 tp_is_empty!30119 tp!1343896))))

(assert (=> b!4670964 (= tp!1343889 e!2914923)))

(assert (= (and b!4670964 ((_ is Cons!52047) (toList!5314 lhm!57))) b!4671029))

(declare-fun b!4671030 () Bool)

(declare-fun tp!1343897 () Bool)

(declare-fun e!2914924 () Bool)

(assert (=> b!4671030 (= e!2914924 (and tp_is_empty!30117 tp_is_empty!30119 tp!1343897))))

(assert (=> b!4670966 (= tp!1343888 e!2914924)))

(assert (= (and b!4670966 ((_ is Cons!52047) (t!359309 l!12991))) b!4671030))

(check-sat (not b!4670984) tp_is_empty!30119 (not b!4671017) (not d!1485341) (not d!1485351) (not d!1485325) (not b!4671030) (not b!4671029) (not b!4670978) (not b!4671012) tp_is_empty!30117 (not b!4671010) (not b!4671011) (not b!4670977) (not b!4671014) (not b!4671018) (not d!1485345) (not d!1485331) (not b!4670990) (not d!1485327))
(check-sat)
