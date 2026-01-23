; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!429624 () Bool)

(assert start!429624)

(declare-fun b!4413268 () Bool)

(declare-fun e!2748278 () Bool)

(declare-datatypes ((V!10994 0))(
  ( (V!10995 (val!16869 Int)) )
))
(declare-datatypes ((K!10748 0))(
  ( (K!10749 (val!16870 Int)) )
))
(declare-datatypes ((tuple2!49058 0))(
  ( (tuple2!49059 (_1!27823 K!10748) (_2!27823 V!10994)) )
))
(declare-datatypes ((List!49513 0))(
  ( (Nil!49389) (Cons!49389 (h!55038 tuple2!49058) (t!356451 List!49513)) )
))
(declare-datatypes ((tuple2!49060 0))(
  ( (tuple2!49061 (_1!27824 (_ BitVec 64)) (_2!27824 List!49513)) )
))
(declare-datatypes ((List!49514 0))(
  ( (Nil!49390) (Cons!49390 (h!55039 tuple2!49060) (t!356452 List!49514)) )
))
(declare-datatypes ((ListLongMap!1977 0))(
  ( (ListLongMap!1978 (toList!3327 List!49514)) )
))
(declare-fun lm!1616 () ListLongMap!1977)

(declare-fun lambda!151173 () Int)

(declare-fun forall!9442 (List!49514 Int) Bool)

(assert (=> b!4413268 (= e!2748278 (forall!9442 (t!356452 (toList!3327 lm!1616)) lambda!151173))))

(declare-datatypes ((ListMap!2571 0))(
  ( (ListMap!2572 (toList!3328 List!49513)) )
))
(declare-fun lt!1615265 () ListMap!2571)

(declare-fun lt!1615262 () ListMap!2571)

(declare-fun lt!1615266 () tuple2!49058)

(declare-fun +!940 (ListMap!2571 tuple2!49058) ListMap!2571)

(assert (=> b!4413268 (= lt!1615265 (+!940 lt!1615262 lt!1615266))))

(declare-fun b!4413269 () Bool)

(declare-fun e!2748274 () Bool)

(declare-fun e!2748276 () Bool)

(assert (=> b!4413269 (= e!2748274 e!2748276)))

(declare-fun res!1822119 () Bool)

(assert (=> b!4413269 (=> (not res!1822119) (not e!2748276))))

(declare-fun e!2748280 () Bool)

(assert (=> b!4413269 (= res!1822119 e!2748280)))

(declare-fun res!1822121 () Bool)

(assert (=> b!4413269 (=> res!1822121 e!2748280)))

(declare-fun e!2748281 () Bool)

(assert (=> b!4413269 (= res!1822121 e!2748281)))

(declare-fun res!1822126 () Bool)

(assert (=> b!4413269 (=> (not res!1822126) (not e!2748281))))

(declare-fun lt!1615267 () Bool)

(assert (=> b!4413269 (= res!1822126 (not lt!1615267))))

(declare-fun lt!1615263 () Bool)

(assert (=> b!4413269 (= lt!1615267 (not lt!1615263))))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!11824 (ListLongMap!1977 (_ BitVec 64)) Bool)

(assert (=> b!4413269 (= lt!1615263 (contains!11824 lm!1616 hash!366))))

(declare-fun newValue!93 () V!10994)

(declare-fun key!3717 () K!10748)

(declare-fun newBucket!194 () List!49513)

(declare-fun b!4413270 () Bool)

(assert (=> b!4413270 (= e!2748280 (and (not lt!1615263) (= newBucket!194 (Cons!49389 (tuple2!49059 key!3717 newValue!93) Nil!49389))))))

(declare-fun b!4413271 () Bool)

(declare-fun res!1822131 () Bool)

(assert (=> b!4413271 (=> (not res!1822131) (not e!2748274))))

(declare-datatypes ((Hashable!5064 0))(
  ( (HashableExt!5063 (__x!30767 Int)) )
))
(declare-fun hashF!1220 () Hashable!5064)

(declare-fun allKeysSameHash!630 (List!49513 (_ BitVec 64) Hashable!5064) Bool)

(assert (=> b!4413271 (= res!1822131 (allKeysSameHash!630 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4413272 () Bool)

(declare-fun res!1822120 () Bool)

(declare-fun e!2748275 () Bool)

(assert (=> b!4413272 (=> res!1822120 e!2748275)))

(assert (=> b!4413272 (= res!1822120 (or (not (is-Cons!49390 (toList!3327 lm!1616))) (not (= (_1!27824 (h!55039 (toList!3327 lm!1616))) hash!366)) lt!1615267))))

(declare-fun b!4413273 () Bool)

(declare-fun tp_is_empty!25925 () Bool)

(declare-fun e!2748277 () Bool)

(declare-fun tp!1332356 () Bool)

(declare-fun tp_is_empty!25927 () Bool)

(assert (=> b!4413273 (= e!2748277 (and tp_is_empty!25927 tp_is_empty!25925 tp!1332356))))

(declare-fun b!4413274 () Bool)

(declare-fun res!1822129 () Bool)

(assert (=> b!4413274 (=> (not res!1822129) (not e!2748276))))

(assert (=> b!4413274 (= res!1822129 (forall!9442 (toList!3327 lm!1616) lambda!151173))))

(declare-fun res!1822132 () Bool)

(assert (=> start!429624 (=> (not res!1822132) (not e!2748274))))

(assert (=> start!429624 (= res!1822132 (forall!9442 (toList!3327 lm!1616) lambda!151173))))

(assert (=> start!429624 e!2748274))

(assert (=> start!429624 tp_is_empty!25925))

(assert (=> start!429624 tp_is_empty!25927))

(assert (=> start!429624 e!2748277))

(declare-fun e!2748279 () Bool)

(declare-fun inv!64935 (ListLongMap!1977) Bool)

(assert (=> start!429624 (and (inv!64935 lm!1616) e!2748279)))

(assert (=> start!429624 true))

(declare-fun b!4413275 () Bool)

(declare-fun res!1822127 () Bool)

(assert (=> b!4413275 (=> (not res!1822127) (not e!2748276))))

(declare-fun noDuplicateKeys!670 (List!49513) Bool)

(assert (=> b!4413275 (= res!1822127 (noDuplicateKeys!670 newBucket!194))))

(declare-fun b!4413276 () Bool)

(declare-fun apply!11522 (ListLongMap!1977 (_ BitVec 64)) List!49513)

(assert (=> b!4413276 (= e!2748281 (= newBucket!194 (Cons!49389 (tuple2!49059 key!3717 newValue!93) (apply!11522 lm!1616 hash!366))))))

(declare-fun b!4413277 () Bool)

(declare-fun res!1822130 () Bool)

(assert (=> b!4413277 (=> res!1822130 e!2748275)))

(declare-fun lt!1615261 () ListLongMap!1977)

(declare-fun lt!1615260 () tuple2!49060)

(declare-fun head!9149 (List!49514) tuple2!49060)

(assert (=> b!4413277 (= res!1822130 (not (= (head!9149 (toList!3327 lt!1615261)) lt!1615260)))))

(declare-fun b!4413278 () Bool)

(declare-fun e!2748273 () Bool)

(assert (=> b!4413278 (= e!2748273 e!2748278)))

(declare-fun res!1822124 () Bool)

(assert (=> b!4413278 (=> res!1822124 e!2748278)))

(assert (=> b!4413278 (= res!1822124 (not (= newBucket!194 (Cons!49389 lt!1615266 (apply!11522 lm!1616 hash!366)))))))

(assert (=> b!4413278 (= lt!1615266 (tuple2!49059 key!3717 newValue!93))))

(declare-fun b!4413279 () Bool)

(declare-fun res!1822133 () Bool)

(assert (=> b!4413279 (=> (not res!1822133) (not e!2748274))))

(declare-fun allKeysSameHashInMap!776 (ListLongMap!1977 Hashable!5064) Bool)

(assert (=> b!4413279 (= res!1822133 (allKeysSameHashInMap!776 lm!1616 hashF!1220))))

(declare-fun b!4413280 () Bool)

(declare-fun tp!1332355 () Bool)

(assert (=> b!4413280 (= e!2748279 tp!1332355)))

(declare-fun b!4413281 () Bool)

(declare-fun res!1822118 () Bool)

(assert (=> b!4413281 (=> (not res!1822118) (not e!2748274))))

(declare-fun hash!1973 (Hashable!5064 K!10748) (_ BitVec 64))

(assert (=> b!4413281 (= res!1822118 (= (hash!1973 hashF!1220 key!3717) hash!366))))

(declare-fun b!4413282 () Bool)

(assert (=> b!4413282 (= e!2748276 (not e!2748275))))

(declare-fun res!1822123 () Bool)

(assert (=> b!4413282 (=> res!1822123 e!2748275)))

(assert (=> b!4413282 (= res!1822123 (not (forall!9442 (toList!3327 lt!1615261) lambda!151173)))))

(assert (=> b!4413282 (forall!9442 (toList!3327 lt!1615261) lambda!151173)))

(declare-fun +!941 (ListLongMap!1977 tuple2!49060) ListLongMap!1977)

(assert (=> b!4413282 (= lt!1615261 (+!941 lm!1616 lt!1615260))))

(assert (=> b!4413282 (= lt!1615260 (tuple2!49061 hash!366 newBucket!194))))

(declare-datatypes ((Unit!80542 0))(
  ( (Unit!80543) )
))
(declare-fun lt!1615264 () Unit!80542)

(declare-fun addValidProp!314 (ListLongMap!1977 Int (_ BitVec 64) List!49513) Unit!80542)

(assert (=> b!4413282 (= lt!1615264 (addValidProp!314 lm!1616 lambda!151173 hash!366 newBucket!194))))

(declare-fun b!4413283 () Bool)

(assert (=> b!4413283 (= e!2748275 e!2748273)))

(declare-fun res!1822122 () Bool)

(assert (=> b!4413283 (=> res!1822122 e!2748273)))

(declare-fun extractMap!731 (List!49514) ListMap!2571)

(declare-fun addToMapMapFromBucket!324 (List!49513 ListMap!2571) ListMap!2571)

(assert (=> b!4413283 (= res!1822122 (not (= (extractMap!731 (toList!3327 lt!1615261)) (addToMapMapFromBucket!324 newBucket!194 lt!1615262))))))

(assert (=> b!4413283 (= lt!1615262 (extractMap!731 (t!356452 (toList!3327 lm!1616))))))

(declare-fun b!4413284 () Bool)

(declare-fun res!1822128 () Bool)

(assert (=> b!4413284 (=> (not res!1822128) (not e!2748274))))

(declare-fun contains!11825 (ListMap!2571 K!10748) Bool)

(assert (=> b!4413284 (= res!1822128 (not (contains!11825 (extractMap!731 (toList!3327 lm!1616)) key!3717)))))

(declare-fun b!4413285 () Bool)

(declare-fun res!1822125 () Bool)

(assert (=> b!4413285 (=> res!1822125 e!2748275)))

(declare-fun tail!7158 (List!49514) List!49514)

(assert (=> b!4413285 (= res!1822125 (not (= (tail!7158 (toList!3327 lt!1615261)) (t!356452 (toList!3327 lm!1616)))))))

(assert (= (and start!429624 res!1822132) b!4413279))

(assert (= (and b!4413279 res!1822133) b!4413281))

(assert (= (and b!4413281 res!1822118) b!4413271))

(assert (= (and b!4413271 res!1822131) b!4413284))

(assert (= (and b!4413284 res!1822128) b!4413269))

(assert (= (and b!4413269 res!1822126) b!4413276))

(assert (= (and b!4413269 (not res!1822121)) b!4413270))

(assert (= (and b!4413269 res!1822119) b!4413275))

(assert (= (and b!4413275 res!1822127) b!4413274))

(assert (= (and b!4413274 res!1822129) b!4413282))

(assert (= (and b!4413282 (not res!1822123)) b!4413272))

(assert (= (and b!4413272 (not res!1822120)) b!4413277))

(assert (= (and b!4413277 (not res!1822130)) b!4413285))

(assert (= (and b!4413285 (not res!1822125)) b!4413283))

(assert (= (and b!4413283 (not res!1822122)) b!4413278))

(assert (= (and b!4413278 (not res!1822124)) b!4413268))

(assert (= (and start!429624 (is-Cons!49389 newBucket!194)) b!4413273))

(assert (= start!429624 b!4413280))

(declare-fun m!5088855 () Bool)

(assert (=> b!4413269 m!5088855))

(declare-fun m!5088857 () Bool)

(assert (=> b!4413268 m!5088857))

(declare-fun m!5088859 () Bool)

(assert (=> b!4413268 m!5088859))

(declare-fun m!5088861 () Bool)

(assert (=> b!4413275 m!5088861))

(declare-fun m!5088863 () Bool)

(assert (=> b!4413274 m!5088863))

(declare-fun m!5088865 () Bool)

(assert (=> b!4413279 m!5088865))

(declare-fun m!5088867 () Bool)

(assert (=> b!4413281 m!5088867))

(declare-fun m!5088869 () Bool)

(assert (=> b!4413283 m!5088869))

(declare-fun m!5088871 () Bool)

(assert (=> b!4413283 m!5088871))

(declare-fun m!5088873 () Bool)

(assert (=> b!4413283 m!5088873))

(declare-fun m!5088875 () Bool)

(assert (=> b!4413277 m!5088875))

(declare-fun m!5088877 () Bool)

(assert (=> b!4413271 m!5088877))

(declare-fun m!5088879 () Bool)

(assert (=> b!4413276 m!5088879))

(declare-fun m!5088881 () Bool)

(assert (=> b!4413285 m!5088881))

(declare-fun m!5088883 () Bool)

(assert (=> b!4413284 m!5088883))

(assert (=> b!4413284 m!5088883))

(declare-fun m!5088885 () Bool)

(assert (=> b!4413284 m!5088885))

(assert (=> start!429624 m!5088863))

(declare-fun m!5088887 () Bool)

(assert (=> start!429624 m!5088887))

(declare-fun m!5088889 () Bool)

(assert (=> b!4413282 m!5088889))

(assert (=> b!4413282 m!5088889))

(declare-fun m!5088891 () Bool)

(assert (=> b!4413282 m!5088891))

(declare-fun m!5088893 () Bool)

(assert (=> b!4413282 m!5088893))

(assert (=> b!4413278 m!5088879))

(push 1)

(assert (not b!4413281))

(assert (not b!4413277))

(assert (not b!4413282))

(assert (not b!4413273))

(assert (not b!4413268))

(assert (not b!4413278))

(assert (not b!4413285))

(assert (not b!4413275))

(assert (not b!4413280))

(assert tp_is_empty!25925)

(assert (not b!4413279))

(assert (not start!429624))

(assert (not b!4413284))

(assert (not b!4413269))

(assert (not b!4413271))

(assert (not b!4413276))

(assert tp_is_empty!25927)

(assert (not b!4413274))

(assert (not b!4413283))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!752954 () Bool)

(declare-fun d!1337366 () Bool)

(assert (= bs!752954 (and d!1337366 start!429624)))

(declare-fun lambda!151187 () Int)

(assert (=> bs!752954 (not (= lambda!151187 lambda!151173))))

(assert (=> d!1337366 true))

(assert (=> d!1337366 (= (allKeysSameHashInMap!776 lm!1616 hashF!1220) (forall!9442 (toList!3327 lm!1616) lambda!151187))))

(declare-fun bs!752955 () Bool)

(assert (= bs!752955 d!1337366))

(declare-fun m!5088935 () Bool)

(assert (=> bs!752955 m!5088935))

(assert (=> b!4413279 d!1337366))

(declare-fun d!1337368 () Bool)

(declare-fun res!1822186 () Bool)

(declare-fun e!2748313 () Bool)

(assert (=> d!1337368 (=> res!1822186 e!2748313)))

(assert (=> d!1337368 (= res!1822186 (is-Nil!49390 (toList!3327 lm!1616)))))

(assert (=> d!1337368 (= (forall!9442 (toList!3327 lm!1616) lambda!151173) e!2748313)))

(declare-fun b!4413346 () Bool)

(declare-fun e!2748314 () Bool)

(assert (=> b!4413346 (= e!2748313 e!2748314)))

(declare-fun res!1822187 () Bool)

(assert (=> b!4413346 (=> (not res!1822187) (not e!2748314))))

(declare-fun dynLambda!20800 (Int tuple2!49060) Bool)

(assert (=> b!4413346 (= res!1822187 (dynLambda!20800 lambda!151173 (h!55039 (toList!3327 lm!1616))))))

(declare-fun b!4413347 () Bool)

(assert (=> b!4413347 (= e!2748314 (forall!9442 (t!356452 (toList!3327 lm!1616)) lambda!151173))))

(assert (= (and d!1337368 (not res!1822186)) b!4413346))

(assert (= (and b!4413346 res!1822187) b!4413347))

(declare-fun b_lambda!142031 () Bool)

(assert (=> (not b_lambda!142031) (not b!4413346)))

(declare-fun m!5088937 () Bool)

(assert (=> b!4413346 m!5088937))

(assert (=> b!4413347 m!5088857))

(assert (=> start!429624 d!1337368))

(declare-fun d!1337372 () Bool)

(declare-fun isStrictlySorted!196 (List!49514) Bool)

(assert (=> d!1337372 (= (inv!64935 lm!1616) (isStrictlySorted!196 (toList!3327 lm!1616)))))

(declare-fun bs!752956 () Bool)

(assert (= bs!752956 d!1337372))

(declare-fun m!5088939 () Bool)

(assert (=> bs!752956 m!5088939))

(assert (=> start!429624 d!1337372))

(declare-fun d!1337374 () Bool)

(declare-fun e!2748319 () Bool)

(assert (=> d!1337374 e!2748319))

(declare-fun res!1822190 () Bool)

(assert (=> d!1337374 (=> res!1822190 e!2748319)))

(declare-fun lt!1615301 () Bool)

(assert (=> d!1337374 (= res!1822190 (not lt!1615301))))

(declare-fun lt!1615300 () Bool)

(assert (=> d!1337374 (= lt!1615301 lt!1615300)))

(declare-fun lt!1615303 () Unit!80542)

(declare-fun e!2748320 () Unit!80542)

(assert (=> d!1337374 (= lt!1615303 e!2748320)))

(declare-fun c!751592 () Bool)

(assert (=> d!1337374 (= c!751592 lt!1615300)))

(declare-fun containsKey!1004 (List!49514 (_ BitVec 64)) Bool)

(assert (=> d!1337374 (= lt!1615300 (containsKey!1004 (toList!3327 lm!1616) hash!366))))

(assert (=> d!1337374 (= (contains!11824 lm!1616 hash!366) lt!1615301)))

(declare-fun b!4413354 () Bool)

(declare-fun lt!1615302 () Unit!80542)

(assert (=> b!4413354 (= e!2748320 lt!1615302)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!549 (List!49514 (_ BitVec 64)) Unit!80542)

(assert (=> b!4413354 (= lt!1615302 (lemmaContainsKeyImpliesGetValueByKeyDefined!549 (toList!3327 lm!1616) hash!366))))

(declare-datatypes ((Option!10653 0))(
  ( (None!10652) (Some!10652 (v!43812 List!49513)) )
))
(declare-fun isDefined!7946 (Option!10653) Bool)

(declare-fun getValueByKey!639 (List!49514 (_ BitVec 64)) Option!10653)

(assert (=> b!4413354 (isDefined!7946 (getValueByKey!639 (toList!3327 lm!1616) hash!366))))

(declare-fun b!4413355 () Bool)

(declare-fun Unit!80546 () Unit!80542)

(assert (=> b!4413355 (= e!2748320 Unit!80546)))

(declare-fun b!4413356 () Bool)

(assert (=> b!4413356 (= e!2748319 (isDefined!7946 (getValueByKey!639 (toList!3327 lm!1616) hash!366)))))

(assert (= (and d!1337374 c!751592) b!4413354))

(assert (= (and d!1337374 (not c!751592)) b!4413355))

(assert (= (and d!1337374 (not res!1822190)) b!4413356))

(declare-fun m!5088941 () Bool)

(assert (=> d!1337374 m!5088941))

(declare-fun m!5088943 () Bool)

(assert (=> b!4413354 m!5088943))

(declare-fun m!5088945 () Bool)

(assert (=> b!4413354 m!5088945))

(assert (=> b!4413354 m!5088945))

(declare-fun m!5088947 () Bool)

(assert (=> b!4413354 m!5088947))

(assert (=> b!4413356 m!5088945))

(assert (=> b!4413356 m!5088945))

(assert (=> b!4413356 m!5088947))

(assert (=> b!4413269 d!1337374))

(declare-fun d!1337376 () Bool)

(declare-fun hash!1975 (Hashable!5064 K!10748) (_ BitVec 64))

(assert (=> d!1337376 (= (hash!1973 hashF!1220 key!3717) (hash!1975 hashF!1220 key!3717))))

(declare-fun bs!752957 () Bool)

(assert (= bs!752957 d!1337376))

(declare-fun m!5088949 () Bool)

(assert (=> bs!752957 m!5088949))

(assert (=> b!4413281 d!1337376))

(declare-fun d!1337378 () Bool)

(assert (=> d!1337378 (= (head!9149 (toList!3327 lt!1615261)) (h!55039 (toList!3327 lt!1615261)))))

(assert (=> b!4413277 d!1337378))

(declare-fun d!1337380 () Bool)

(declare-fun get!16085 (Option!10653) List!49513)

(assert (=> d!1337380 (= (apply!11522 lm!1616 hash!366) (get!16085 (getValueByKey!639 (toList!3327 lm!1616) hash!366)))))

(declare-fun bs!752958 () Bool)

(assert (= bs!752958 d!1337380))

(assert (=> bs!752958 m!5088945))

(assert (=> bs!752958 m!5088945))

(declare-fun m!5088951 () Bool)

(assert (=> bs!752958 m!5088951))

(assert (=> b!4413278 d!1337380))

(declare-fun d!1337382 () Bool)

(declare-fun res!1822191 () Bool)

(declare-fun e!2748321 () Bool)

(assert (=> d!1337382 (=> res!1822191 e!2748321)))

(assert (=> d!1337382 (= res!1822191 (is-Nil!49390 (t!356452 (toList!3327 lm!1616))))))

(assert (=> d!1337382 (= (forall!9442 (t!356452 (toList!3327 lm!1616)) lambda!151173) e!2748321)))

(declare-fun b!4413357 () Bool)

(declare-fun e!2748322 () Bool)

(assert (=> b!4413357 (= e!2748321 e!2748322)))

(declare-fun res!1822192 () Bool)

(assert (=> b!4413357 (=> (not res!1822192) (not e!2748322))))

(assert (=> b!4413357 (= res!1822192 (dynLambda!20800 lambda!151173 (h!55039 (t!356452 (toList!3327 lm!1616)))))))

(declare-fun b!4413358 () Bool)

(assert (=> b!4413358 (= e!2748322 (forall!9442 (t!356452 (t!356452 (toList!3327 lm!1616))) lambda!151173))))

(assert (= (and d!1337382 (not res!1822191)) b!4413357))

(assert (= (and b!4413357 res!1822192) b!4413358))

(declare-fun b_lambda!142033 () Bool)

(assert (=> (not b_lambda!142033) (not b!4413357)))

(declare-fun m!5088953 () Bool)

(assert (=> b!4413357 m!5088953))

(declare-fun m!5088955 () Bool)

(assert (=> b!4413358 m!5088955))

(assert (=> b!4413268 d!1337382))

(declare-fun d!1337384 () Bool)

(declare-fun e!2748331 () Bool)

(assert (=> d!1337384 e!2748331))

(declare-fun res!1822201 () Bool)

(assert (=> d!1337384 (=> (not res!1822201) (not e!2748331))))

(declare-fun lt!1615327 () ListMap!2571)

(assert (=> d!1337384 (= res!1822201 (contains!11825 lt!1615327 (_1!27823 lt!1615266)))))

(declare-fun lt!1615325 () List!49513)

(assert (=> d!1337384 (= lt!1615327 (ListMap!2572 lt!1615325))))

(declare-fun lt!1615324 () Unit!80542)

(declare-fun lt!1615326 () Unit!80542)

(assert (=> d!1337384 (= lt!1615324 lt!1615326)))

(declare-datatypes ((Option!10654 0))(
  ( (None!10653) (Some!10653 (v!43813 V!10994)) )
))
(declare-fun getValueByKey!640 (List!49513 K!10748) Option!10654)

(assert (=> d!1337384 (= (getValueByKey!640 lt!1615325 (_1!27823 lt!1615266)) (Some!10653 (_2!27823 lt!1615266)))))

(declare-fun lemmaContainsTupThenGetReturnValue!378 (List!49513 K!10748 V!10994) Unit!80542)

(assert (=> d!1337384 (= lt!1615326 (lemmaContainsTupThenGetReturnValue!378 lt!1615325 (_1!27823 lt!1615266) (_2!27823 lt!1615266)))))

(declare-fun insertNoDuplicatedKeys!163 (List!49513 K!10748 V!10994) List!49513)

(assert (=> d!1337384 (= lt!1615325 (insertNoDuplicatedKeys!163 (toList!3328 lt!1615262) (_1!27823 lt!1615266) (_2!27823 lt!1615266)))))

(assert (=> d!1337384 (= (+!940 lt!1615262 lt!1615266) lt!1615327)))

(declare-fun b!4413372 () Bool)

(declare-fun res!1822200 () Bool)

(assert (=> b!4413372 (=> (not res!1822200) (not e!2748331))))

(assert (=> b!4413372 (= res!1822200 (= (getValueByKey!640 (toList!3328 lt!1615327) (_1!27823 lt!1615266)) (Some!10653 (_2!27823 lt!1615266))))))

(declare-fun b!4413373 () Bool)

(declare-fun contains!11828 (List!49513 tuple2!49058) Bool)

(assert (=> b!4413373 (= e!2748331 (contains!11828 (toList!3328 lt!1615327) lt!1615266))))

(assert (= (and d!1337384 res!1822201) b!4413372))

(assert (= (and b!4413372 res!1822200) b!4413373))

(declare-fun m!5088965 () Bool)

(assert (=> d!1337384 m!5088965))

(declare-fun m!5088967 () Bool)

(assert (=> d!1337384 m!5088967))

(declare-fun m!5088969 () Bool)

(assert (=> d!1337384 m!5088969))

(declare-fun m!5088971 () Bool)

(assert (=> d!1337384 m!5088971))

(declare-fun m!5088973 () Bool)

(assert (=> b!4413372 m!5088973))

(declare-fun m!5088975 () Bool)

(assert (=> b!4413373 m!5088975))

(assert (=> b!4413268 d!1337384))

(assert (=> b!4413274 d!1337368))

(declare-fun d!1337388 () Bool)

(assert (=> d!1337388 (= (tail!7158 (toList!3327 lt!1615261)) (t!356452 (toList!3327 lt!1615261)))))

(assert (=> b!4413285 d!1337388))

(declare-fun d!1337390 () Bool)

(declare-fun res!1822210 () Bool)

(declare-fun e!2748340 () Bool)

(assert (=> d!1337390 (=> res!1822210 e!2748340)))

(assert (=> d!1337390 (= res!1822210 (not (is-Cons!49389 newBucket!194)))))

(assert (=> d!1337390 (= (noDuplicateKeys!670 newBucket!194) e!2748340)))

(declare-fun b!4413382 () Bool)

(declare-fun e!2748341 () Bool)

(assert (=> b!4413382 (= e!2748340 e!2748341)))

(declare-fun res!1822211 () Bool)

(assert (=> b!4413382 (=> (not res!1822211) (not e!2748341))))

(declare-fun containsKey!1005 (List!49513 K!10748) Bool)

(assert (=> b!4413382 (= res!1822211 (not (containsKey!1005 (t!356451 newBucket!194) (_1!27823 (h!55038 newBucket!194)))))))

(declare-fun b!4413383 () Bool)

(assert (=> b!4413383 (= e!2748341 (noDuplicateKeys!670 (t!356451 newBucket!194)))))

(assert (= (and d!1337390 (not res!1822210)) b!4413382))

(assert (= (and b!4413382 res!1822211) b!4413383))

(declare-fun m!5088977 () Bool)

(assert (=> b!4413382 m!5088977))

(declare-fun m!5088979 () Bool)

(assert (=> b!4413383 m!5088979))

(assert (=> b!4413275 d!1337390))

(assert (=> b!4413276 d!1337380))

(declare-fun d!1337392 () Bool)

(assert (=> d!1337392 true))

(assert (=> d!1337392 true))

(declare-fun lambda!151190 () Int)

(declare-fun forall!9444 (List!49513 Int) Bool)

(assert (=> d!1337392 (= (allKeysSameHash!630 newBucket!194 hash!366 hashF!1220) (forall!9444 newBucket!194 lambda!151190))))

(declare-fun bs!752959 () Bool)

(assert (= bs!752959 d!1337392))

(declare-fun m!5088985 () Bool)

(assert (=> bs!752959 m!5088985))

(assert (=> b!4413271 d!1337392))

(declare-fun d!1337396 () Bool)

(declare-fun res!1822214 () Bool)

(declare-fun e!2748344 () Bool)

(assert (=> d!1337396 (=> res!1822214 e!2748344)))

(assert (=> d!1337396 (= res!1822214 (is-Nil!49390 (toList!3327 lt!1615261)))))

(assert (=> d!1337396 (= (forall!9442 (toList!3327 lt!1615261) lambda!151173) e!2748344)))

(declare-fun b!4413390 () Bool)

(declare-fun e!2748345 () Bool)

(assert (=> b!4413390 (= e!2748344 e!2748345)))

(declare-fun res!1822215 () Bool)

(assert (=> b!4413390 (=> (not res!1822215) (not e!2748345))))

(assert (=> b!4413390 (= res!1822215 (dynLambda!20800 lambda!151173 (h!55039 (toList!3327 lt!1615261))))))

(declare-fun b!4413391 () Bool)

(assert (=> b!4413391 (= e!2748345 (forall!9442 (t!356452 (toList!3327 lt!1615261)) lambda!151173))))

(assert (= (and d!1337396 (not res!1822214)) b!4413390))

(assert (= (and b!4413390 res!1822215) b!4413391))

(declare-fun b_lambda!142035 () Bool)

(assert (=> (not b_lambda!142035) (not b!4413390)))

(declare-fun m!5088987 () Bool)

(assert (=> b!4413390 m!5088987))

(declare-fun m!5088989 () Bool)

(assert (=> b!4413391 m!5088989))

(assert (=> b!4413282 d!1337396))

(declare-fun d!1337398 () Bool)

(declare-fun e!2748354 () Bool)

(assert (=> d!1337398 e!2748354))

(declare-fun res!1822227 () Bool)

(assert (=> d!1337398 (=> (not res!1822227) (not e!2748354))))

(declare-fun lt!1615337 () ListLongMap!1977)

(assert (=> d!1337398 (= res!1822227 (contains!11824 lt!1615337 (_1!27824 lt!1615260)))))

(declare-fun lt!1615339 () List!49514)

(assert (=> d!1337398 (= lt!1615337 (ListLongMap!1978 lt!1615339))))

(declare-fun lt!1615336 () Unit!80542)

(declare-fun lt!1615338 () Unit!80542)

(assert (=> d!1337398 (= lt!1615336 lt!1615338)))

(assert (=> d!1337398 (= (getValueByKey!639 lt!1615339 (_1!27824 lt!1615260)) (Some!10652 (_2!27824 lt!1615260)))))

(declare-fun lemmaContainsTupThenGetReturnValue!379 (List!49514 (_ BitVec 64) List!49513) Unit!80542)

(assert (=> d!1337398 (= lt!1615338 (lemmaContainsTupThenGetReturnValue!379 lt!1615339 (_1!27824 lt!1615260) (_2!27824 lt!1615260)))))

(declare-fun insertStrictlySorted!224 (List!49514 (_ BitVec 64) List!49513) List!49514)

(assert (=> d!1337398 (= lt!1615339 (insertStrictlySorted!224 (toList!3327 lm!1616) (_1!27824 lt!1615260) (_2!27824 lt!1615260)))))

(assert (=> d!1337398 (= (+!941 lm!1616 lt!1615260) lt!1615337)))

(declare-fun b!4413402 () Bool)

(declare-fun res!1822226 () Bool)

(assert (=> b!4413402 (=> (not res!1822226) (not e!2748354))))

(assert (=> b!4413402 (= res!1822226 (= (getValueByKey!639 (toList!3327 lt!1615337) (_1!27824 lt!1615260)) (Some!10652 (_2!27824 lt!1615260))))))

(declare-fun b!4413403 () Bool)

(declare-fun contains!11829 (List!49514 tuple2!49060) Bool)

(assert (=> b!4413403 (= e!2748354 (contains!11829 (toList!3327 lt!1615337) lt!1615260))))

(assert (= (and d!1337398 res!1822227) b!4413402))

(assert (= (and b!4413402 res!1822226) b!4413403))

(declare-fun m!5088995 () Bool)

(assert (=> d!1337398 m!5088995))

(declare-fun m!5088997 () Bool)

(assert (=> d!1337398 m!5088997))

(declare-fun m!5088999 () Bool)

(assert (=> d!1337398 m!5088999))

(declare-fun m!5089001 () Bool)

(assert (=> d!1337398 m!5089001))

(declare-fun m!5089003 () Bool)

(assert (=> b!4413402 m!5089003))

(declare-fun m!5089005 () Bool)

(assert (=> b!4413403 m!5089005))

(assert (=> b!4413282 d!1337398))

(declare-fun d!1337404 () Bool)

(assert (=> d!1337404 (forall!9442 (toList!3327 (+!941 lm!1616 (tuple2!49061 hash!366 newBucket!194))) lambda!151173)))

(declare-fun lt!1615342 () Unit!80542)

(declare-fun choose!27775 (ListLongMap!1977 Int (_ BitVec 64) List!49513) Unit!80542)

(assert (=> d!1337404 (= lt!1615342 (choose!27775 lm!1616 lambda!151173 hash!366 newBucket!194))))

(declare-fun e!2748357 () Bool)

(assert (=> d!1337404 e!2748357))

(declare-fun res!1822230 () Bool)

(assert (=> d!1337404 (=> (not res!1822230) (not e!2748357))))

(assert (=> d!1337404 (= res!1822230 (forall!9442 (toList!3327 lm!1616) lambda!151173))))

(assert (=> d!1337404 (= (addValidProp!314 lm!1616 lambda!151173 hash!366 newBucket!194) lt!1615342)))

(declare-fun b!4413407 () Bool)

(assert (=> b!4413407 (= e!2748357 (dynLambda!20800 lambda!151173 (tuple2!49061 hash!366 newBucket!194)))))

(assert (= (and d!1337404 res!1822230) b!4413407))

(declare-fun b_lambda!142039 () Bool)

(assert (=> (not b_lambda!142039) (not b!4413407)))

(declare-fun m!5089007 () Bool)

(assert (=> d!1337404 m!5089007))

(declare-fun m!5089009 () Bool)

(assert (=> d!1337404 m!5089009))

(declare-fun m!5089011 () Bool)

(assert (=> d!1337404 m!5089011))

(assert (=> d!1337404 m!5088863))

(declare-fun m!5089013 () Bool)

(assert (=> b!4413407 m!5089013))

(assert (=> b!4413282 d!1337404))

(declare-fun bs!752960 () Bool)

(declare-fun d!1337406 () Bool)

(assert (= bs!752960 (and d!1337406 start!429624)))

(declare-fun lambda!151193 () Int)

(assert (=> bs!752960 (= lambda!151193 lambda!151173)))

(declare-fun bs!752961 () Bool)

(assert (= bs!752961 (and d!1337406 d!1337366)))

(assert (=> bs!752961 (not (= lambda!151193 lambda!151187))))

(declare-fun lt!1615353 () ListMap!2571)

(declare-fun invariantList!770 (List!49513) Bool)

(assert (=> d!1337406 (invariantList!770 (toList!3328 lt!1615353))))

(declare-fun e!2748360 () ListMap!2571)

(assert (=> d!1337406 (= lt!1615353 e!2748360)))

(declare-fun c!751598 () Bool)

(assert (=> d!1337406 (= c!751598 (is-Cons!49390 (toList!3327 lt!1615261)))))

(assert (=> d!1337406 (forall!9442 (toList!3327 lt!1615261) lambda!151193)))

(assert (=> d!1337406 (= (extractMap!731 (toList!3327 lt!1615261)) lt!1615353)))

(declare-fun b!4413412 () Bool)

(assert (=> b!4413412 (= e!2748360 (addToMapMapFromBucket!324 (_2!27824 (h!55039 (toList!3327 lt!1615261))) (extractMap!731 (t!356452 (toList!3327 lt!1615261)))))))

(declare-fun b!4413413 () Bool)

(assert (=> b!4413413 (= e!2748360 (ListMap!2572 Nil!49389))))

(assert (= (and d!1337406 c!751598) b!4413412))

(assert (= (and d!1337406 (not c!751598)) b!4413413))

(declare-fun m!5089015 () Bool)

(assert (=> d!1337406 m!5089015))

(declare-fun m!5089017 () Bool)

(assert (=> d!1337406 m!5089017))

(declare-fun m!5089019 () Bool)

(assert (=> b!4413412 m!5089019))

(assert (=> b!4413412 m!5089019))

(declare-fun m!5089021 () Bool)

(assert (=> b!4413412 m!5089021))

(assert (=> b!4413283 d!1337406))

(declare-fun bs!752963 () Bool)

(declare-fun b!4413436 () Bool)

(assert (= bs!752963 (and b!4413436 d!1337392)))

(declare-fun lambda!151225 () Int)

(assert (=> bs!752963 (not (= lambda!151225 lambda!151190))))

(assert (=> b!4413436 true))

(declare-fun bs!752964 () Bool)

(declare-fun b!4413438 () Bool)

(assert (= bs!752964 (and b!4413438 d!1337392)))

(declare-fun lambda!151226 () Int)

(assert (=> bs!752964 (not (= lambda!151226 lambda!151190))))

(declare-fun bs!752965 () Bool)

(assert (= bs!752965 (and b!4413438 b!4413436)))

(assert (=> bs!752965 (= lambda!151226 lambda!151225)))

(assert (=> b!4413438 true))

(declare-fun lambda!151227 () Int)

(assert (=> bs!752964 (not (= lambda!151227 lambda!151190))))

(declare-fun lt!1615416 () ListMap!2571)

(assert (=> bs!752965 (= (= lt!1615416 lt!1615262) (= lambda!151227 lambda!151225))))

(assert (=> b!4413438 (= (= lt!1615416 lt!1615262) (= lambda!151227 lambda!151226))))

(assert (=> b!4413438 true))

(declare-fun bs!752966 () Bool)

(declare-fun d!1337408 () Bool)

(assert (= bs!752966 (and d!1337408 d!1337392)))

(declare-fun lambda!151228 () Int)

(assert (=> bs!752966 (not (= lambda!151228 lambda!151190))))

(declare-fun bs!752967 () Bool)

(assert (= bs!752967 (and d!1337408 b!4413436)))

(declare-fun lt!1615423 () ListMap!2571)

(assert (=> bs!752967 (= (= lt!1615423 lt!1615262) (= lambda!151228 lambda!151225))))

(declare-fun bs!752968 () Bool)

(assert (= bs!752968 (and d!1337408 b!4413438)))

(assert (=> bs!752968 (= (= lt!1615423 lt!1615262) (= lambda!151228 lambda!151226))))

(assert (=> bs!752968 (= (= lt!1615423 lt!1615416) (= lambda!151228 lambda!151227))))

(assert (=> d!1337408 true))

(declare-fun e!2748374 () ListMap!2571)

(assert (=> b!4413436 (= e!2748374 lt!1615262)))

(declare-fun lt!1615405 () Unit!80542)

(declare-fun call!307157 () Unit!80542)

(assert (=> b!4413436 (= lt!1615405 call!307157)))

(declare-fun call!307158 () Bool)

(assert (=> b!4413436 call!307158))

(declare-fun lt!1615417 () Unit!80542)

(assert (=> b!4413436 (= lt!1615417 lt!1615405)))

(declare-fun call!307159 () Bool)

(assert (=> b!4413436 call!307159))

(declare-fun lt!1615414 () Unit!80542)

(declare-fun Unit!80547 () Unit!80542)

(assert (=> b!4413436 (= lt!1615414 Unit!80547)))

(declare-fun b!4413437 () Bool)

(declare-fun e!2748373 () Bool)

(assert (=> b!4413437 (= e!2748373 (invariantList!770 (toList!3328 lt!1615423)))))

(assert (=> b!4413438 (= e!2748374 lt!1615416)))

(declare-fun lt!1615407 () ListMap!2571)

(assert (=> b!4413438 (= lt!1615407 (+!940 lt!1615262 (h!55038 newBucket!194)))))

(assert (=> b!4413438 (= lt!1615416 (addToMapMapFromBucket!324 (t!356451 newBucket!194) (+!940 lt!1615262 (h!55038 newBucket!194))))))

(declare-fun lt!1615418 () Unit!80542)

(assert (=> b!4413438 (= lt!1615418 call!307157)))

(assert (=> b!4413438 (forall!9444 (toList!3328 lt!1615262) lambda!151226)))

(declare-fun lt!1615419 () Unit!80542)

(assert (=> b!4413438 (= lt!1615419 lt!1615418)))

(assert (=> b!4413438 (forall!9444 (toList!3328 lt!1615407) lambda!151227)))

(declare-fun lt!1615410 () Unit!80542)

(declare-fun Unit!80548 () Unit!80542)

(assert (=> b!4413438 (= lt!1615410 Unit!80548)))

(assert (=> b!4413438 (forall!9444 (t!356451 newBucket!194) lambda!151227)))

(declare-fun lt!1615420 () Unit!80542)

(declare-fun Unit!80549 () Unit!80542)

(assert (=> b!4413438 (= lt!1615420 Unit!80549)))

(declare-fun lt!1615415 () Unit!80542)

(declare-fun Unit!80550 () Unit!80542)

(assert (=> b!4413438 (= lt!1615415 Unit!80550)))

(declare-fun lt!1615411 () Unit!80542)

(declare-fun forallContained!2057 (List!49513 Int tuple2!49058) Unit!80542)

(assert (=> b!4413438 (= lt!1615411 (forallContained!2057 (toList!3328 lt!1615407) lambda!151227 (h!55038 newBucket!194)))))

(assert (=> b!4413438 (contains!11825 lt!1615407 (_1!27823 (h!55038 newBucket!194)))))

(declare-fun lt!1615408 () Unit!80542)

(declare-fun Unit!80551 () Unit!80542)

(assert (=> b!4413438 (= lt!1615408 Unit!80551)))

(assert (=> b!4413438 (contains!11825 lt!1615416 (_1!27823 (h!55038 newBucket!194)))))

(declare-fun lt!1615409 () Unit!80542)

(declare-fun Unit!80552 () Unit!80542)

(assert (=> b!4413438 (= lt!1615409 Unit!80552)))

(assert (=> b!4413438 (forall!9444 newBucket!194 lambda!151227)))

(declare-fun lt!1615412 () Unit!80542)

(declare-fun Unit!80553 () Unit!80542)

(assert (=> b!4413438 (= lt!1615412 Unit!80553)))

(assert (=> b!4413438 call!307158))

(declare-fun lt!1615422 () Unit!80542)

(declare-fun Unit!80554 () Unit!80542)

(assert (=> b!4413438 (= lt!1615422 Unit!80554)))

(declare-fun lt!1615413 () Unit!80542)

(declare-fun Unit!80555 () Unit!80542)

(assert (=> b!4413438 (= lt!1615413 Unit!80555)))

(declare-fun lt!1615404 () Unit!80542)

(declare-fun addForallContainsKeyThenBeforeAdding!147 (ListMap!2571 ListMap!2571 K!10748 V!10994) Unit!80542)

(assert (=> b!4413438 (= lt!1615404 (addForallContainsKeyThenBeforeAdding!147 lt!1615262 lt!1615416 (_1!27823 (h!55038 newBucket!194)) (_2!27823 (h!55038 newBucket!194))))))

(assert (=> b!4413438 (forall!9444 (toList!3328 lt!1615262) lambda!151227)))

(declare-fun lt!1615403 () Unit!80542)

(assert (=> b!4413438 (= lt!1615403 lt!1615404)))

(assert (=> b!4413438 (forall!9444 (toList!3328 lt!1615262) lambda!151227)))

(declare-fun lt!1615406 () Unit!80542)

(declare-fun Unit!80556 () Unit!80542)

(assert (=> b!4413438 (= lt!1615406 Unit!80556)))

(declare-fun res!1822245 () Bool)

(assert (=> b!4413438 (= res!1822245 call!307159)))

(declare-fun e!2748375 () Bool)

(assert (=> b!4413438 (=> (not res!1822245) (not e!2748375))))

(assert (=> b!4413438 e!2748375))

(declare-fun lt!1615421 () Unit!80542)

(declare-fun Unit!80557 () Unit!80542)

(assert (=> b!4413438 (= lt!1615421 Unit!80557)))

(declare-fun bm!307152 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!147 (ListMap!2571) Unit!80542)

(assert (=> bm!307152 (= call!307157 (lemmaContainsAllItsOwnKeys!147 lt!1615262))))

(declare-fun b!4413439 () Bool)

(assert (=> b!4413439 (= e!2748375 (forall!9444 (toList!3328 lt!1615262) lambda!151227))))

(declare-fun c!751604 () Bool)

(declare-fun bm!307154 () Bool)

(assert (=> bm!307154 (= call!307159 (forall!9444 (ite c!751604 (toList!3328 lt!1615262) newBucket!194) (ite c!751604 lambda!151225 lambda!151227)))))

(declare-fun b!4413440 () Bool)

(declare-fun res!1822244 () Bool)

(assert (=> b!4413440 (=> (not res!1822244) (not e!2748373))))

(assert (=> b!4413440 (= res!1822244 (forall!9444 (toList!3328 lt!1615262) lambda!151228))))

(declare-fun bm!307153 () Bool)

(assert (=> bm!307153 (= call!307158 (forall!9444 (ite c!751604 (toList!3328 lt!1615262) (toList!3328 lt!1615407)) (ite c!751604 lambda!151225 lambda!151227)))))

(assert (=> d!1337408 e!2748373))

(declare-fun res!1822243 () Bool)

(assert (=> d!1337408 (=> (not res!1822243) (not e!2748373))))

(assert (=> d!1337408 (= res!1822243 (forall!9444 newBucket!194 lambda!151228))))

(assert (=> d!1337408 (= lt!1615423 e!2748374)))

(assert (=> d!1337408 (= c!751604 (is-Nil!49389 newBucket!194))))

(assert (=> d!1337408 (noDuplicateKeys!670 newBucket!194)))

(assert (=> d!1337408 (= (addToMapMapFromBucket!324 newBucket!194 lt!1615262) lt!1615423)))

(assert (= (and d!1337408 c!751604) b!4413436))

(assert (= (and d!1337408 (not c!751604)) b!4413438))

(assert (= (and b!4413438 res!1822245) b!4413439))

(assert (= (or b!4413436 b!4413438) bm!307152))

(assert (= (or b!4413436 b!4413438) bm!307154))

(assert (= (or b!4413436 b!4413438) bm!307153))

(assert (= (and d!1337408 res!1822243) b!4413440))

(assert (= (and b!4413440 res!1822244) b!4413437))

(declare-fun m!5089043 () Bool)

(assert (=> b!4413438 m!5089043))

(declare-fun m!5089045 () Bool)

(assert (=> b!4413438 m!5089045))

(declare-fun m!5089047 () Bool)

(assert (=> b!4413438 m!5089047))

(assert (=> b!4413438 m!5089045))

(declare-fun m!5089049 () Bool)

(assert (=> b!4413438 m!5089049))

(declare-fun m!5089051 () Bool)

(assert (=> b!4413438 m!5089051))

(declare-fun m!5089053 () Bool)

(assert (=> b!4413438 m!5089053))

(declare-fun m!5089055 () Bool)

(assert (=> b!4413438 m!5089055))

(assert (=> b!4413438 m!5089053))

(declare-fun m!5089057 () Bool)

(assert (=> b!4413438 m!5089057))

(declare-fun m!5089059 () Bool)

(assert (=> b!4413438 m!5089059))

(declare-fun m!5089061 () Bool)

(assert (=> b!4413438 m!5089061))

(declare-fun m!5089063 () Bool)

(assert (=> b!4413438 m!5089063))

(declare-fun m!5089065 () Bool)

(assert (=> d!1337408 m!5089065))

(assert (=> d!1337408 m!5088861))

(declare-fun m!5089067 () Bool)

(assert (=> bm!307152 m!5089067))

(declare-fun m!5089069 () Bool)

(assert (=> bm!307153 m!5089069))

(declare-fun m!5089071 () Bool)

(assert (=> b!4413440 m!5089071))

(declare-fun m!5089073 () Bool)

(assert (=> bm!307154 m!5089073))

(assert (=> b!4413439 m!5089045))

(declare-fun m!5089075 () Bool)

(assert (=> b!4413437 m!5089075))

(assert (=> b!4413283 d!1337408))

(declare-fun bs!752969 () Bool)

(declare-fun d!1337414 () Bool)

(assert (= bs!752969 (and d!1337414 start!429624)))

(declare-fun lambda!151229 () Int)

(assert (=> bs!752969 (= lambda!151229 lambda!151173)))

(declare-fun bs!752970 () Bool)

(assert (= bs!752970 (and d!1337414 d!1337366)))

(assert (=> bs!752970 (not (= lambda!151229 lambda!151187))))

(declare-fun bs!752971 () Bool)

(assert (= bs!752971 (and d!1337414 d!1337406)))

(assert (=> bs!752971 (= lambda!151229 lambda!151193)))

(declare-fun lt!1615424 () ListMap!2571)

(assert (=> d!1337414 (invariantList!770 (toList!3328 lt!1615424))))

(declare-fun e!2748376 () ListMap!2571)

(assert (=> d!1337414 (= lt!1615424 e!2748376)))

(declare-fun c!751605 () Bool)

(assert (=> d!1337414 (= c!751605 (is-Cons!49390 (t!356452 (toList!3327 lm!1616))))))

(assert (=> d!1337414 (forall!9442 (t!356452 (toList!3327 lm!1616)) lambda!151229)))

(assert (=> d!1337414 (= (extractMap!731 (t!356452 (toList!3327 lm!1616))) lt!1615424)))

(declare-fun b!4413443 () Bool)

(assert (=> b!4413443 (= e!2748376 (addToMapMapFromBucket!324 (_2!27824 (h!55039 (t!356452 (toList!3327 lm!1616)))) (extractMap!731 (t!356452 (t!356452 (toList!3327 lm!1616))))))))

(declare-fun b!4413444 () Bool)

(assert (=> b!4413444 (= e!2748376 (ListMap!2572 Nil!49389))))

(assert (= (and d!1337414 c!751605) b!4413443))

(assert (= (and d!1337414 (not c!751605)) b!4413444))

(declare-fun m!5089077 () Bool)

(assert (=> d!1337414 m!5089077))

(declare-fun m!5089079 () Bool)

(assert (=> d!1337414 m!5089079))

(declare-fun m!5089081 () Bool)

(assert (=> b!4413443 m!5089081))

(assert (=> b!4413443 m!5089081))

(declare-fun m!5089083 () Bool)

(assert (=> b!4413443 m!5089083))

(assert (=> b!4413283 d!1337414))

(declare-fun b!4413463 () Bool)

(declare-fun e!2748391 () Unit!80542)

(declare-fun e!2748392 () Unit!80542)

(assert (=> b!4413463 (= e!2748391 e!2748392)))

(declare-fun c!751614 () Bool)

(declare-fun call!307162 () Bool)

(assert (=> b!4413463 (= c!751614 call!307162)))

(declare-fun b!4413464 () Bool)

(assert (=> b!4413464 false))

(declare-fun lt!1615441 () Unit!80542)

(declare-fun lt!1615447 () Unit!80542)

(assert (=> b!4413464 (= lt!1615441 lt!1615447)))

(declare-fun containsKey!1006 (List!49513 K!10748) Bool)

(assert (=> b!4413464 (containsKey!1006 (toList!3328 (extractMap!731 (toList!3327 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!215 (List!49513 K!10748) Unit!80542)

(assert (=> b!4413464 (= lt!1615447 (lemmaInGetKeysListThenContainsKey!215 (toList!3328 (extractMap!731 (toList!3327 lm!1616))) key!3717))))

(declare-fun Unit!80558 () Unit!80542)

(assert (=> b!4413464 (= e!2748392 Unit!80558)))

(declare-fun b!4413465 () Bool)

(declare-fun e!2748389 () Bool)

(declare-datatypes ((List!49517 0))(
  ( (Nil!49393) (Cons!49393 (h!55044 K!10748) (t!356455 List!49517)) )
))
(declare-fun contains!11830 (List!49517 K!10748) Bool)

(declare-fun keys!16815 (ListMap!2571) List!49517)

(assert (=> b!4413465 (= e!2748389 (contains!11830 (keys!16815 (extractMap!731 (toList!3327 lm!1616))) key!3717))))

(declare-fun d!1337416 () Bool)

(declare-fun e!2748390 () Bool)

(assert (=> d!1337416 e!2748390))

(declare-fun res!1822252 () Bool)

(assert (=> d!1337416 (=> res!1822252 e!2748390)))

(declare-fun e!2748394 () Bool)

(assert (=> d!1337416 (= res!1822252 e!2748394)))

(declare-fun res!1822254 () Bool)

(assert (=> d!1337416 (=> (not res!1822254) (not e!2748394))))

(declare-fun lt!1615444 () Bool)

(assert (=> d!1337416 (= res!1822254 (not lt!1615444))))

(declare-fun lt!1615448 () Bool)

(assert (=> d!1337416 (= lt!1615444 lt!1615448)))

(declare-fun lt!1615445 () Unit!80542)

(assert (=> d!1337416 (= lt!1615445 e!2748391)))

(declare-fun c!751613 () Bool)

(assert (=> d!1337416 (= c!751613 lt!1615448)))

(assert (=> d!1337416 (= lt!1615448 (containsKey!1006 (toList!3328 (extractMap!731 (toList!3327 lm!1616))) key!3717))))

(assert (=> d!1337416 (= (contains!11825 (extractMap!731 (toList!3327 lm!1616)) key!3717) lt!1615444)))

(declare-fun b!4413466 () Bool)

(declare-fun e!2748393 () List!49517)

(assert (=> b!4413466 (= e!2748393 (keys!16815 (extractMap!731 (toList!3327 lm!1616))))))

(declare-fun b!4413467 () Bool)

(declare-fun Unit!80559 () Unit!80542)

(assert (=> b!4413467 (= e!2748392 Unit!80559)))

(declare-fun b!4413468 () Bool)

(declare-fun lt!1615446 () Unit!80542)

(assert (=> b!4413468 (= e!2748391 lt!1615446)))

(declare-fun lt!1615442 () Unit!80542)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!550 (List!49513 K!10748) Unit!80542)

(assert (=> b!4413468 (= lt!1615442 (lemmaContainsKeyImpliesGetValueByKeyDefined!550 (toList!3328 (extractMap!731 (toList!3327 lm!1616))) key!3717))))

(declare-fun isDefined!7947 (Option!10654) Bool)

(assert (=> b!4413468 (isDefined!7947 (getValueByKey!640 (toList!3328 (extractMap!731 (toList!3327 lm!1616))) key!3717))))

(declare-fun lt!1615443 () Unit!80542)

(assert (=> b!4413468 (= lt!1615443 lt!1615442)))

(declare-fun lemmaInListThenGetKeysListContains!214 (List!49513 K!10748) Unit!80542)

(assert (=> b!4413468 (= lt!1615446 (lemmaInListThenGetKeysListContains!214 (toList!3328 (extractMap!731 (toList!3327 lm!1616))) key!3717))))

(assert (=> b!4413468 call!307162))

(declare-fun bm!307157 () Bool)

(assert (=> bm!307157 (= call!307162 (contains!11830 e!2748393 key!3717))))

(declare-fun c!751612 () Bool)

(assert (=> bm!307157 (= c!751612 c!751613)))

(declare-fun b!4413469 () Bool)

(assert (=> b!4413469 (= e!2748394 (not (contains!11830 (keys!16815 (extractMap!731 (toList!3327 lm!1616))) key!3717)))))

(declare-fun b!4413470 () Bool)

(declare-fun getKeysList!217 (List!49513) List!49517)

(assert (=> b!4413470 (= e!2748393 (getKeysList!217 (toList!3328 (extractMap!731 (toList!3327 lm!1616)))))))

(declare-fun b!4413471 () Bool)

(assert (=> b!4413471 (= e!2748390 e!2748389)))

(declare-fun res!1822253 () Bool)

(assert (=> b!4413471 (=> (not res!1822253) (not e!2748389))))

(assert (=> b!4413471 (= res!1822253 (isDefined!7947 (getValueByKey!640 (toList!3328 (extractMap!731 (toList!3327 lm!1616))) key!3717)))))

(assert (= (and d!1337416 c!751613) b!4413468))

(assert (= (and d!1337416 (not c!751613)) b!4413463))

(assert (= (and b!4413463 c!751614) b!4413464))

(assert (= (and b!4413463 (not c!751614)) b!4413467))

(assert (= (or b!4413468 b!4413463) bm!307157))

(assert (= (and bm!307157 c!751612) b!4413470))

(assert (= (and bm!307157 (not c!751612)) b!4413466))

(assert (= (and d!1337416 res!1822254) b!4413469))

(assert (= (and d!1337416 (not res!1822252)) b!4413471))

(assert (= (and b!4413471 res!1822253) b!4413465))

(declare-fun m!5089085 () Bool)

(assert (=> b!4413471 m!5089085))

(assert (=> b!4413471 m!5089085))

(declare-fun m!5089087 () Bool)

(assert (=> b!4413471 m!5089087))

(declare-fun m!5089089 () Bool)

(assert (=> b!4413464 m!5089089))

(declare-fun m!5089091 () Bool)

(assert (=> b!4413464 m!5089091))

(declare-fun m!5089093 () Bool)

(assert (=> b!4413468 m!5089093))

(assert (=> b!4413468 m!5089085))

(assert (=> b!4413468 m!5089085))

(assert (=> b!4413468 m!5089087))

(declare-fun m!5089095 () Bool)

(assert (=> b!4413468 m!5089095))

(assert (=> b!4413469 m!5088883))

(declare-fun m!5089097 () Bool)

(assert (=> b!4413469 m!5089097))

(assert (=> b!4413469 m!5089097))

(declare-fun m!5089099 () Bool)

(assert (=> b!4413469 m!5089099))

(assert (=> d!1337416 m!5089089))

(assert (=> b!4413465 m!5088883))

(assert (=> b!4413465 m!5089097))

(assert (=> b!4413465 m!5089097))

(assert (=> b!4413465 m!5089099))

(declare-fun m!5089101 () Bool)

(assert (=> b!4413470 m!5089101))

(declare-fun m!5089103 () Bool)

(assert (=> bm!307157 m!5089103))

(assert (=> b!4413466 m!5088883))

(assert (=> b!4413466 m!5089097))

(assert (=> b!4413284 d!1337416))

(declare-fun bs!752972 () Bool)

(declare-fun d!1337418 () Bool)

(assert (= bs!752972 (and d!1337418 start!429624)))

(declare-fun lambda!151230 () Int)

(assert (=> bs!752972 (= lambda!151230 lambda!151173)))

(declare-fun bs!752973 () Bool)

(assert (= bs!752973 (and d!1337418 d!1337366)))

(assert (=> bs!752973 (not (= lambda!151230 lambda!151187))))

(declare-fun bs!752974 () Bool)

(assert (= bs!752974 (and d!1337418 d!1337406)))

(assert (=> bs!752974 (= lambda!151230 lambda!151193)))

(declare-fun bs!752975 () Bool)

(assert (= bs!752975 (and d!1337418 d!1337414)))

(assert (=> bs!752975 (= lambda!151230 lambda!151229)))

(declare-fun lt!1615449 () ListMap!2571)

(assert (=> d!1337418 (invariantList!770 (toList!3328 lt!1615449))))

(declare-fun e!2748395 () ListMap!2571)

(assert (=> d!1337418 (= lt!1615449 e!2748395)))

(declare-fun c!751615 () Bool)

(assert (=> d!1337418 (= c!751615 (is-Cons!49390 (toList!3327 lm!1616)))))

(assert (=> d!1337418 (forall!9442 (toList!3327 lm!1616) lambda!151230)))

(assert (=> d!1337418 (= (extractMap!731 (toList!3327 lm!1616)) lt!1615449)))

(declare-fun b!4413472 () Bool)

(assert (=> b!4413472 (= e!2748395 (addToMapMapFromBucket!324 (_2!27824 (h!55039 (toList!3327 lm!1616))) (extractMap!731 (t!356452 (toList!3327 lm!1616)))))))

(declare-fun b!4413473 () Bool)

(assert (=> b!4413473 (= e!2748395 (ListMap!2572 Nil!49389))))

(assert (= (and d!1337418 c!751615) b!4413472))

(assert (= (and d!1337418 (not c!751615)) b!4413473))

(declare-fun m!5089105 () Bool)

(assert (=> d!1337418 m!5089105))

(declare-fun m!5089107 () Bool)

(assert (=> d!1337418 m!5089107))

(assert (=> b!4413472 m!5088873))

(assert (=> b!4413472 m!5088873))

(declare-fun m!5089109 () Bool)

(assert (=> b!4413472 m!5089109))

(assert (=> b!4413284 d!1337418))

(declare-fun b!4413478 () Bool)

(declare-fun e!2748398 () Bool)

(declare-fun tp!1332367 () Bool)

(declare-fun tp!1332368 () Bool)

(assert (=> b!4413478 (= e!2748398 (and tp!1332367 tp!1332368))))

(assert (=> b!4413280 (= tp!1332355 e!2748398)))

(assert (= (and b!4413280 (is-Cons!49390 (toList!3327 lm!1616))) b!4413478))

(declare-fun tp!1332371 () Bool)

(declare-fun e!2748401 () Bool)

(declare-fun b!4413483 () Bool)

(assert (=> b!4413483 (= e!2748401 (and tp_is_empty!25927 tp_is_empty!25925 tp!1332371))))

(assert (=> b!4413273 (= tp!1332356 e!2748401)))

(assert (= (and b!4413273 (is-Cons!49389 (t!356451 newBucket!194))) b!4413483))

(declare-fun b_lambda!142041 () Bool)

(assert (= b_lambda!142031 (or start!429624 b_lambda!142041)))

(declare-fun bs!752976 () Bool)

(declare-fun d!1337420 () Bool)

(assert (= bs!752976 (and d!1337420 start!429624)))

(assert (=> bs!752976 (= (dynLambda!20800 lambda!151173 (h!55039 (toList!3327 lm!1616))) (noDuplicateKeys!670 (_2!27824 (h!55039 (toList!3327 lm!1616)))))))

(declare-fun m!5089111 () Bool)

(assert (=> bs!752976 m!5089111))

(assert (=> b!4413346 d!1337420))

(declare-fun b_lambda!142043 () Bool)

(assert (= b_lambda!142035 (or start!429624 b_lambda!142043)))

(declare-fun bs!752977 () Bool)

(declare-fun d!1337422 () Bool)

(assert (= bs!752977 (and d!1337422 start!429624)))

(assert (=> bs!752977 (= (dynLambda!20800 lambda!151173 (h!55039 (toList!3327 lt!1615261))) (noDuplicateKeys!670 (_2!27824 (h!55039 (toList!3327 lt!1615261)))))))

(declare-fun m!5089113 () Bool)

(assert (=> bs!752977 m!5089113))

(assert (=> b!4413390 d!1337422))

(declare-fun b_lambda!142045 () Bool)

(assert (= b_lambda!142033 (or start!429624 b_lambda!142045)))

(declare-fun bs!752978 () Bool)

(declare-fun d!1337424 () Bool)

(assert (= bs!752978 (and d!1337424 start!429624)))

(assert (=> bs!752978 (= (dynLambda!20800 lambda!151173 (h!55039 (t!356452 (toList!3327 lm!1616)))) (noDuplicateKeys!670 (_2!27824 (h!55039 (t!356452 (toList!3327 lm!1616))))))))

(declare-fun m!5089115 () Bool)

(assert (=> bs!752978 m!5089115))

(assert (=> b!4413357 d!1337424))

(declare-fun b_lambda!142047 () Bool)

(assert (= b_lambda!142039 (or start!429624 b_lambda!142047)))

(declare-fun bs!752979 () Bool)

(declare-fun d!1337426 () Bool)

(assert (= bs!752979 (and d!1337426 start!429624)))

(assert (=> bs!752979 (= (dynLambda!20800 lambda!151173 (tuple2!49061 hash!366 newBucket!194)) (noDuplicateKeys!670 (_2!27824 (tuple2!49061 hash!366 newBucket!194))))))

(declare-fun m!5089117 () Bool)

(assert (=> bs!752979 m!5089117))

(assert (=> b!4413407 d!1337426))

(push 1)

(assert (not d!1337374))

(assert (not b!4413372))

(assert (not b!4413373))

(assert (not b!4413383))

(assert (not b_lambda!142047))

(assert (not d!1337392))

(assert (not b!4413483))

(assert (not bm!307153))

(assert (not b_lambda!142043))

(assert tp_is_empty!25925)

(assert (not b!4413470))

(assert (not d!1337416))

(assert (not b!4413469))

(assert (not b!4413382))

(assert (not b!4413472))

(assert (not b!4413464))

(assert (not b!4413358))

(assert (not d!1337372))

(assert (not b!4413465))

(assert (not b!4413478))

(assert (not bs!752979))

(assert (not d!1337376))

(assert (not b!4413468))

(assert (not b!4413437))

(assert (not b!4413391))

(assert (not d!1337366))

(assert (not b!4413471))

(assert (not d!1337414))

(assert (not b!4413347))

(assert (not d!1337384))

(assert (not bs!752978))

(assert (not d!1337418))

(assert (not b!4413356))

(assert (not bm!307154))

(assert (not bm!307157))

(assert (not b_lambda!142045))

(assert (not d!1337380))

(assert (not bs!752977))

(assert (not b!4413354))

(assert (not b!4413466))

(assert (not d!1337398))

(assert (not bm!307152))

(assert (not b!4413443))

(assert (not b!4413403))

(assert (not b!4413402))

(assert (not b_lambda!142041))

(assert (not b!4413440))

(assert (not b!4413412))

(assert (not d!1337404))

(assert (not b!4413439))

(assert (not d!1337408))

(assert (not bs!752976))

(assert (not b!4413438))

(assert tp_is_empty!25927)

(assert (not d!1337406))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

