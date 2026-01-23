; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!492166 () Bool)

(assert start!492166)

(declare-fun bs!1153547 () Bool)

(declare-fun b!4786214 () Bool)

(assert (= bs!1153547 (and b!4786214 start!492166)))

(declare-fun lambda!229296 () Int)

(declare-fun lambda!229295 () Int)

(assert (=> bs!1153547 (not (= lambda!229296 lambda!229295))))

(assert (=> b!4786214 true))

(assert (=> b!4786214 true))

(assert (=> b!4786214 true))

(declare-fun res!2033150 () Bool)

(declare-fun e!2988351 () Bool)

(assert (=> start!492166 (=> (not res!2033150) (not e!2988351))))

(declare-datatypes ((K!15644 0))(
  ( (K!15645 (val!20821 Int)) )
))
(declare-datatypes ((V!15890 0))(
  ( (V!15891 (val!20822 Int)) )
))
(declare-datatypes ((tuple2!56616 0))(
  ( (tuple2!56617 (_1!31602 K!15644) (_2!31602 V!15890)) )
))
(declare-datatypes ((List!54205 0))(
  ( (Nil!54081) (Cons!54081 (h!60503 tuple2!56616) (t!361655 List!54205)) )
))
(declare-datatypes ((tuple2!56618 0))(
  ( (tuple2!56619 (_1!31603 (_ BitVec 64)) (_2!31603 List!54205)) )
))
(declare-datatypes ((List!54206 0))(
  ( (Nil!54082) (Cons!54082 (h!60504 tuple2!56618) (t!361656 List!54206)) )
))
(declare-datatypes ((ListLongMap!5225 0))(
  ( (ListLongMap!5226 (toList!6803 List!54206)) )
))
(declare-fun lm!2473 () ListLongMap!5225)

(declare-fun forall!12166 (List!54206 Int) Bool)

(assert (=> start!492166 (= res!2033150 (forall!12166 (toList!6803 lm!2473) lambda!229295))))

(assert (=> start!492166 e!2988351))

(declare-fun e!2988353 () Bool)

(declare-fun inv!69670 (ListLongMap!5225) Bool)

(assert (=> start!492166 (and (inv!69670 lm!2473) e!2988353)))

(assert (=> start!492166 true))

(declare-fun tp_is_empty!33329 () Bool)

(assert (=> start!492166 tp_is_empty!33329))

(declare-fun tp_is_empty!33331 () Bool)

(assert (=> start!492166 tp_is_empty!33331))

(declare-fun b!4786209 () Bool)

(declare-fun res!2033148 () Bool)

(declare-fun e!2988352 () Bool)

(assert (=> b!4786209 (=> res!2033148 e!2988352)))

(declare-fun key!5896 () K!15644)

(declare-fun containsKey!3865 (List!54205 K!15644) Bool)

(assert (=> b!4786209 (= res!2033148 (not (containsKey!3865 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896)))))

(declare-fun b!4786210 () Bool)

(declare-fun res!2033151 () Bool)

(assert (=> b!4786210 (=> res!2033151 e!2988352)))

(get-info :version)

(assert (=> b!4786210 (= res!2033151 (not ((_ is Cons!54082) (toList!6803 lm!2473))))))

(declare-fun b!4786211 () Bool)

(declare-fun res!2033154 () Bool)

(assert (=> b!4786211 (=> (not res!2033154) (not e!2988351))))

(declare-datatypes ((Hashable!6862 0))(
  ( (HashableExt!6861 (__x!32885 Int)) )
))
(declare-fun hashF!1559 () Hashable!6862)

(declare-fun allKeysSameHashInMap!2267 (ListLongMap!5225 Hashable!6862) Bool)

(assert (=> b!4786211 (= res!2033154 (allKeysSameHashInMap!2267 lm!2473 hashF!1559))))

(declare-fun lt!1947449 () (_ BitVec 64))

(declare-fun b!4786212 () Bool)

(declare-fun e!2988354 () Bool)

(declare-datatypes ((Option!13002 0))(
  ( (None!13001) (Some!13001 (v!48258 tuple2!56616)) )
))
(declare-fun isDefined!10144 (Option!13002) Bool)

(declare-fun getPair!834 (List!54205 K!15644) Option!13002)

(declare-fun apply!12917 (ListLongMap!5225 (_ BitVec 64)) List!54205)

(assert (=> b!4786212 (= e!2988354 (isDefined!10144 (getPair!834 (apply!12917 lm!2473 lt!1947449) key!5896)))))

(declare-fun b!4786213 () Bool)

(declare-fun res!2033152 () Bool)

(assert (=> b!4786213 (=> (not res!2033152) (not e!2988351))))

(declare-datatypes ((ListMap!6275 0))(
  ( (ListMap!6276 (toList!6804 List!54205)) )
))
(declare-fun contains!17658 (ListMap!6275 K!15644) Bool)

(declare-fun extractMap!2389 (List!54206) ListMap!6275)

(assert (=> b!4786213 (= res!2033152 (contains!17658 (extractMap!2389 (toList!6803 lm!2473)) key!5896))))

(declare-fun isEmpty!29388 (ListLongMap!5225) Bool)

(assert (=> b!4786214 (= e!2988352 (not (isEmpty!29388 lm!2473)))))

(declare-datatypes ((Unit!139522 0))(
  ( (Unit!139523) )
))
(declare-fun lt!1947453 () Unit!139522)

(declare-fun lambda!229297 () Int)

(declare-fun value!3111 () V!15890)

(declare-fun forallContained!4105 (List!54205 Int tuple2!56616) Unit!139522)

(assert (=> b!4786214 (= lt!1947453 (forallContained!4105 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229297 (tuple2!56617 key!5896 value!3111)))))

(declare-fun lt!1947451 () Unit!139522)

(declare-fun forallContained!4106 (List!54206 Int tuple2!56618) Unit!139522)

(assert (=> b!4786214 (= lt!1947451 (forallContained!4106 (toList!6803 lm!2473) lambda!229296 (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786215 () Bool)

(declare-fun tp!1357682 () Bool)

(assert (=> b!4786215 (= e!2988353 tp!1357682)))

(declare-fun b!4786216 () Bool)

(assert (=> b!4786216 (= e!2988351 (not e!2988352))))

(declare-fun res!2033153 () Bool)

(assert (=> b!4786216 (=> res!2033153 e!2988352)))

(declare-fun getValue!58 (List!54206 K!15644) V!15890)

(assert (=> b!4786216 (= res!2033153 (not (= (getValue!58 (toList!6803 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!512 (List!54206 K!15644) Bool)

(assert (=> b!4786216 (containsKeyBiggerList!512 (toList!6803 lm!2473) key!5896)))

(declare-fun lt!1947452 () Unit!139522)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!252 (ListLongMap!5225 K!15644 Hashable!6862) Unit!139522)

(assert (=> b!4786216 (= lt!1947452 (lemmaInLongMapThenContainsKeyBiggerList!252 lm!2473 key!5896 hashF!1559))))

(assert (=> b!4786216 e!2988354))

(declare-fun res!2033149 () Bool)

(assert (=> b!4786216 (=> (not res!2033149) (not e!2988354))))

(declare-fun contains!17659 (ListLongMap!5225 (_ BitVec 64)) Bool)

(assert (=> b!4786216 (= res!2033149 (contains!17659 lm!2473 lt!1947449))))

(declare-fun hash!4881 (Hashable!6862 K!15644) (_ BitVec 64))

(assert (=> b!4786216 (= lt!1947449 (hash!4881 hashF!1559 key!5896))))

(declare-fun lt!1947450 () Unit!139522)

(declare-fun lemmaInGenericMapThenInLongMap!266 (ListLongMap!5225 K!15644 Hashable!6862) Unit!139522)

(assert (=> b!4786216 (= lt!1947450 (lemmaInGenericMapThenInLongMap!266 lm!2473 key!5896 hashF!1559))))

(assert (= (and start!492166 res!2033150) b!4786211))

(assert (= (and b!4786211 res!2033154) b!4786213))

(assert (= (and b!4786213 res!2033152) b!4786216))

(assert (= (and b!4786216 res!2033149) b!4786212))

(assert (= (and b!4786216 (not res!2033153)) b!4786210))

(assert (= (and b!4786210 (not res!2033151)) b!4786209))

(assert (= (and b!4786209 (not res!2033148)) b!4786214))

(assert (= start!492166 b!4786215))

(declare-fun m!5765314 () Bool)

(assert (=> b!4786212 m!5765314))

(assert (=> b!4786212 m!5765314))

(declare-fun m!5765316 () Bool)

(assert (=> b!4786212 m!5765316))

(assert (=> b!4786212 m!5765316))

(declare-fun m!5765318 () Bool)

(assert (=> b!4786212 m!5765318))

(declare-fun m!5765320 () Bool)

(assert (=> b!4786213 m!5765320))

(assert (=> b!4786213 m!5765320))

(declare-fun m!5765322 () Bool)

(assert (=> b!4786213 m!5765322))

(declare-fun m!5765324 () Bool)

(assert (=> b!4786211 m!5765324))

(declare-fun m!5765326 () Bool)

(assert (=> b!4786209 m!5765326))

(declare-fun m!5765328 () Bool)

(assert (=> b!4786216 m!5765328))

(declare-fun m!5765330 () Bool)

(assert (=> b!4786216 m!5765330))

(declare-fun m!5765332 () Bool)

(assert (=> b!4786216 m!5765332))

(declare-fun m!5765334 () Bool)

(assert (=> b!4786216 m!5765334))

(declare-fun m!5765336 () Bool)

(assert (=> b!4786216 m!5765336))

(declare-fun m!5765338 () Bool)

(assert (=> b!4786216 m!5765338))

(declare-fun m!5765340 () Bool)

(assert (=> b!4786214 m!5765340))

(declare-fun m!5765342 () Bool)

(assert (=> b!4786214 m!5765342))

(declare-fun m!5765344 () Bool)

(assert (=> b!4786214 m!5765344))

(declare-fun m!5765346 () Bool)

(assert (=> start!492166 m!5765346))

(declare-fun m!5765348 () Bool)

(assert (=> start!492166 m!5765348))

(check-sat (not b!4786214) (not b!4786215) tp_is_empty!33329 tp_is_empty!33331 (not start!492166) (not b!4786216) (not b!4786213) (not b!4786212) (not b!4786211) (not b!4786209))
(check-sat)
(get-model)

(declare-fun d!1531034 () Bool)

(declare-fun isEmpty!29390 (List!54206) Bool)

(assert (=> d!1531034 (= (isEmpty!29388 lm!2473) (isEmpty!29390 (toList!6803 lm!2473)))))

(declare-fun bs!1153549 () Bool)

(assert (= bs!1153549 d!1531034))

(declare-fun m!5765352 () Bool)

(assert (=> bs!1153549 m!5765352))

(assert (=> b!4786214 d!1531034))

(declare-fun d!1531036 () Bool)

(declare-fun dynLambda!22035 (Int tuple2!56616) Bool)

(assert (=> d!1531036 (dynLambda!22035 lambda!229297 (tuple2!56617 key!5896 value!3111))))

(declare-fun lt!1947459 () Unit!139522)

(declare-fun choose!34405 (List!54205 Int tuple2!56616) Unit!139522)

(assert (=> d!1531036 (= lt!1947459 (choose!34405 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229297 (tuple2!56617 key!5896 value!3111)))))

(declare-fun e!2988372 () Bool)

(assert (=> d!1531036 e!2988372))

(declare-fun res!2033169 () Bool)

(assert (=> d!1531036 (=> (not res!2033169) (not e!2988372))))

(declare-fun forall!12167 (List!54205 Int) Bool)

(assert (=> d!1531036 (= res!2033169 (forall!12167 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229297))))

(assert (=> d!1531036 (= (forallContained!4105 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229297 (tuple2!56617 key!5896 value!3111)) lt!1947459)))

(declare-fun b!4786249 () Bool)

(declare-fun contains!17662 (List!54205 tuple2!56616) Bool)

(assert (=> b!4786249 (= e!2988372 (contains!17662 (_2!31603 (h!60504 (toList!6803 lm!2473))) (tuple2!56617 key!5896 value!3111)))))

(assert (= (and d!1531036 res!2033169) b!4786249))

(declare-fun b_lambda!186195 () Bool)

(assert (=> (not b_lambda!186195) (not d!1531036)))

(declare-fun m!5765372 () Bool)

(assert (=> d!1531036 m!5765372))

(declare-fun m!5765374 () Bool)

(assert (=> d!1531036 m!5765374))

(declare-fun m!5765376 () Bool)

(assert (=> d!1531036 m!5765376))

(declare-fun m!5765378 () Bool)

(assert (=> b!4786249 m!5765378))

(assert (=> b!4786214 d!1531036))

(declare-fun d!1531042 () Bool)

(declare-fun dynLambda!22036 (Int tuple2!56618) Bool)

(assert (=> d!1531042 (dynLambda!22036 lambda!229296 (h!60504 (toList!6803 lm!2473)))))

(declare-fun lt!1947470 () Unit!139522)

(declare-fun choose!34406 (List!54206 Int tuple2!56618) Unit!139522)

(assert (=> d!1531042 (= lt!1947470 (choose!34406 (toList!6803 lm!2473) lambda!229296 (h!60504 (toList!6803 lm!2473))))))

(declare-fun e!2988379 () Bool)

(assert (=> d!1531042 e!2988379))

(declare-fun res!2033174 () Bool)

(assert (=> d!1531042 (=> (not res!2033174) (not e!2988379))))

(assert (=> d!1531042 (= res!2033174 (forall!12166 (toList!6803 lm!2473) lambda!229296))))

(assert (=> d!1531042 (= (forallContained!4106 (toList!6803 lm!2473) lambda!229296 (h!60504 (toList!6803 lm!2473))) lt!1947470)))

(declare-fun b!4786258 () Bool)

(declare-fun contains!17663 (List!54206 tuple2!56618) Bool)

(assert (=> b!4786258 (= e!2988379 (contains!17663 (toList!6803 lm!2473) (h!60504 (toList!6803 lm!2473))))))

(assert (= (and d!1531042 res!2033174) b!4786258))

(declare-fun b_lambda!186197 () Bool)

(assert (=> (not b_lambda!186197) (not d!1531042)))

(declare-fun m!5765380 () Bool)

(assert (=> d!1531042 m!5765380))

(declare-fun m!5765382 () Bool)

(assert (=> d!1531042 m!5765382))

(declare-fun m!5765384 () Bool)

(assert (=> d!1531042 m!5765384))

(declare-fun m!5765386 () Bool)

(assert (=> b!4786258 m!5765386))

(assert (=> b!4786214 d!1531042))

(declare-fun d!1531044 () Bool)

(declare-fun res!2033189 () Bool)

(declare-fun e!2988395 () Bool)

(assert (=> d!1531044 (=> res!2033189 e!2988395)))

(assert (=> d!1531044 (= res!2033189 (and ((_ is Cons!54081) (_2!31603 (h!60504 (toList!6803 lm!2473)))) (= (_1!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))) key!5896)))))

(assert (=> d!1531044 (= (containsKey!3865 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896) e!2988395)))

(declare-fun b!4786275 () Bool)

(declare-fun e!2988396 () Bool)

(assert (=> b!4786275 (= e!2988395 e!2988396)))

(declare-fun res!2033190 () Bool)

(assert (=> b!4786275 (=> (not res!2033190) (not e!2988396))))

(assert (=> b!4786275 (= res!2033190 ((_ is Cons!54081) (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(declare-fun b!4786276 () Bool)

(assert (=> b!4786276 (= e!2988396 (containsKey!3865 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))) key!5896))))

(assert (= (and d!1531044 (not res!2033189)) b!4786275))

(assert (= (and b!4786275 res!2033190) b!4786276))

(declare-fun m!5765396 () Bool)

(assert (=> b!4786276 m!5765396))

(assert (=> b!4786209 d!1531044))

(declare-fun b!4786313 () Bool)

(declare-fun e!2988426 () Bool)

(declare-datatypes ((List!54208 0))(
  ( (Nil!54084) (Cons!54084 (h!60506 K!15644) (t!361658 List!54208)) )
))
(declare-fun contains!17665 (List!54208 K!15644) Bool)

(declare-fun keys!19720 (ListMap!6275) List!54208)

(assert (=> b!4786313 (= e!2988426 (contains!17665 (keys!19720 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(declare-fun b!4786314 () Bool)

(declare-fun e!2988424 () Unit!139522)

(declare-fun e!2988428 () Unit!139522)

(assert (=> b!4786314 (= e!2988424 e!2988428)))

(declare-fun c!815880 () Bool)

(declare-fun call!334859 () Bool)

(assert (=> b!4786314 (= c!815880 call!334859)))

(declare-fun b!4786315 () Bool)

(declare-fun e!2988425 () Bool)

(assert (=> b!4786315 (= e!2988425 (not (contains!17665 (keys!19720 (extractMap!2389 (toList!6803 lm!2473))) key!5896)))))

(declare-fun b!4786316 () Bool)

(declare-fun lt!1947499 () Unit!139522)

(assert (=> b!4786316 (= e!2988424 lt!1947499)))

(declare-fun lt!1947503 () Unit!139522)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2110 (List!54205 K!15644) Unit!139522)

(assert (=> b!4786316 (= lt!1947503 (lemmaContainsKeyImpliesGetValueByKeyDefined!2110 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(declare-datatypes ((Option!13005 0))(
  ( (None!13004) (Some!13004 (v!48261 V!15890)) )
))
(declare-fun isDefined!10147 (Option!13005) Bool)

(declare-fun getValueByKey!2318 (List!54205 K!15644) Option!13005)

(assert (=> b!4786316 (isDefined!10147 (getValueByKey!2318 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(declare-fun lt!1947497 () Unit!139522)

(assert (=> b!4786316 (= lt!1947497 lt!1947503)))

(declare-fun lemmaInListThenGetKeysListContains!1054 (List!54205 K!15644) Unit!139522)

(assert (=> b!4786316 (= lt!1947499 (lemmaInListThenGetKeysListContains!1054 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(assert (=> b!4786316 call!334859))

(declare-fun bm!334854 () Bool)

(declare-fun e!2988427 () List!54208)

(assert (=> bm!334854 (= call!334859 (contains!17665 e!2988427 key!5896))))

(declare-fun c!815882 () Bool)

(declare-fun c!815881 () Bool)

(assert (=> bm!334854 (= c!815882 c!815881)))

(declare-fun b!4786317 () Bool)

(declare-fun getKeysList!1059 (List!54205) List!54208)

(assert (=> b!4786317 (= e!2988427 (getKeysList!1059 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))

(declare-fun b!4786318 () Bool)

(assert (=> b!4786318 (= e!2988427 (keys!19720 (extractMap!2389 (toList!6803 lm!2473))))))

(declare-fun d!1531050 () Bool)

(declare-fun e!2988429 () Bool)

(assert (=> d!1531050 e!2988429))

(declare-fun res!2033210 () Bool)

(assert (=> d!1531050 (=> res!2033210 e!2988429)))

(assert (=> d!1531050 (= res!2033210 e!2988425)))

(declare-fun res!2033211 () Bool)

(assert (=> d!1531050 (=> (not res!2033211) (not e!2988425))))

(declare-fun lt!1947504 () Bool)

(assert (=> d!1531050 (= res!2033211 (not lt!1947504))))

(declare-fun lt!1947501 () Bool)

(assert (=> d!1531050 (= lt!1947504 lt!1947501)))

(declare-fun lt!1947502 () Unit!139522)

(assert (=> d!1531050 (= lt!1947502 e!2988424)))

(assert (=> d!1531050 (= c!815881 lt!1947501)))

(declare-fun containsKey!3868 (List!54205 K!15644) Bool)

(assert (=> d!1531050 (= lt!1947501 (containsKey!3868 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(assert (=> d!1531050 (= (contains!17658 (extractMap!2389 (toList!6803 lm!2473)) key!5896) lt!1947504)))

(declare-fun b!4786319 () Bool)

(assert (=> b!4786319 (= e!2988429 e!2988426)))

(declare-fun res!2033209 () Bool)

(assert (=> b!4786319 (=> (not res!2033209) (not e!2988426))))

(assert (=> b!4786319 (= res!2033209 (isDefined!10147 (getValueByKey!2318 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896)))))

(declare-fun b!4786320 () Bool)

(assert (=> b!4786320 false))

(declare-fun lt!1947500 () Unit!139522)

(declare-fun lt!1947498 () Unit!139522)

(assert (=> b!4786320 (= lt!1947500 lt!1947498)))

(assert (=> b!4786320 (containsKey!3868 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1059 (List!54205 K!15644) Unit!139522)

(assert (=> b!4786320 (= lt!1947498 (lemmaInGetKeysListThenContainsKey!1059 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(declare-fun Unit!139527 () Unit!139522)

(assert (=> b!4786320 (= e!2988428 Unit!139527)))

(declare-fun b!4786321 () Bool)

(declare-fun Unit!139528 () Unit!139522)

(assert (=> b!4786321 (= e!2988428 Unit!139528)))

(assert (= (and d!1531050 c!815881) b!4786316))

(assert (= (and d!1531050 (not c!815881)) b!4786314))

(assert (= (and b!4786314 c!815880) b!4786320))

(assert (= (and b!4786314 (not c!815880)) b!4786321))

(assert (= (or b!4786316 b!4786314) bm!334854))

(assert (= (and bm!334854 c!815882) b!4786317))

(assert (= (and bm!334854 (not c!815882)) b!4786318))

(assert (= (and d!1531050 res!2033211) b!4786315))

(assert (= (and d!1531050 (not res!2033210)) b!4786319))

(assert (= (and b!4786319 res!2033209) b!4786313))

(declare-fun m!5765430 () Bool)

(assert (=> b!4786319 m!5765430))

(assert (=> b!4786319 m!5765430))

(declare-fun m!5765432 () Bool)

(assert (=> b!4786319 m!5765432))

(declare-fun m!5765434 () Bool)

(assert (=> b!4786316 m!5765434))

(assert (=> b!4786316 m!5765430))

(assert (=> b!4786316 m!5765430))

(assert (=> b!4786316 m!5765432))

(declare-fun m!5765436 () Bool)

(assert (=> b!4786316 m!5765436))

(assert (=> b!4786315 m!5765320))

(declare-fun m!5765438 () Bool)

(assert (=> b!4786315 m!5765438))

(assert (=> b!4786315 m!5765438))

(declare-fun m!5765440 () Bool)

(assert (=> b!4786315 m!5765440))

(declare-fun m!5765442 () Bool)

(assert (=> d!1531050 m!5765442))

(assert (=> b!4786320 m!5765442))

(declare-fun m!5765444 () Bool)

(assert (=> b!4786320 m!5765444))

(declare-fun m!5765446 () Bool)

(assert (=> b!4786317 m!5765446))

(assert (=> b!4786318 m!5765320))

(assert (=> b!4786318 m!5765438))

(declare-fun m!5765448 () Bool)

(assert (=> bm!334854 m!5765448))

(assert (=> b!4786313 m!5765320))

(assert (=> b!4786313 m!5765438))

(assert (=> b!4786313 m!5765438))

(assert (=> b!4786313 m!5765440))

(assert (=> b!4786213 d!1531050))

(declare-fun bs!1153570 () Bool)

(declare-fun d!1531066 () Bool)

(assert (= bs!1153570 (and d!1531066 start!492166)))

(declare-fun lambda!229312 () Int)

(assert (=> bs!1153570 (= lambda!229312 lambda!229295)))

(declare-fun bs!1153571 () Bool)

(assert (= bs!1153571 (and d!1531066 b!4786214)))

(assert (=> bs!1153571 (not (= lambda!229312 lambda!229296))))

(declare-fun lt!1947537 () ListMap!6275)

(declare-fun invariantList!1713 (List!54205) Bool)

(assert (=> d!1531066 (invariantList!1713 (toList!6804 lt!1947537))))

(declare-fun e!2988456 () ListMap!6275)

(assert (=> d!1531066 (= lt!1947537 e!2988456)))

(declare-fun c!815897 () Bool)

(assert (=> d!1531066 (= c!815897 ((_ is Cons!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531066 (forall!12166 (toList!6803 lm!2473) lambda!229312)))

(assert (=> d!1531066 (= (extractMap!2389 (toList!6803 lm!2473)) lt!1947537)))

(declare-fun b!4786362 () Bool)

(declare-fun addToMapMapFromBucket!1678 (List!54205 ListMap!6275) ListMap!6275)

(assert (=> b!4786362 (= e!2988456 (addToMapMapFromBucket!1678 (_2!31603 (h!60504 (toList!6803 lm!2473))) (extractMap!2389 (t!361656 (toList!6803 lm!2473)))))))

(declare-fun b!4786363 () Bool)

(assert (=> b!4786363 (= e!2988456 (ListMap!6276 Nil!54081))))

(assert (= (and d!1531066 c!815897) b!4786362))

(assert (= (and d!1531066 (not c!815897)) b!4786363))

(declare-fun m!5765488 () Bool)

(assert (=> d!1531066 m!5765488))

(declare-fun m!5765490 () Bool)

(assert (=> d!1531066 m!5765490))

(declare-fun m!5765492 () Bool)

(assert (=> b!4786362 m!5765492))

(assert (=> b!4786362 m!5765492))

(declare-fun m!5765494 () Bool)

(assert (=> b!4786362 m!5765494))

(assert (=> b!4786213 d!1531066))

(declare-fun bs!1153573 () Bool)

(declare-fun d!1531076 () Bool)

(assert (= bs!1153573 (and d!1531076 start!492166)))

(declare-fun lambda!229315 () Int)

(assert (=> bs!1153573 (not (= lambda!229315 lambda!229295))))

(declare-fun bs!1153575 () Bool)

(assert (= bs!1153575 (and d!1531076 b!4786214)))

(assert (=> bs!1153575 (= lambda!229315 lambda!229296)))

(declare-fun bs!1153577 () Bool)

(assert (= bs!1153577 (and d!1531076 d!1531066)))

(assert (=> bs!1153577 (not (= lambda!229315 lambda!229312))))

(assert (=> d!1531076 true))

(assert (=> d!1531076 (= (allKeysSameHashInMap!2267 lm!2473 hashF!1559) (forall!12166 (toList!6803 lm!2473) lambda!229315))))

(declare-fun bs!1153578 () Bool)

(assert (= bs!1153578 d!1531076))

(declare-fun m!5765512 () Bool)

(assert (=> bs!1153578 m!5765512))

(assert (=> b!4786211 d!1531076))

(declare-fun d!1531086 () Bool)

(declare-fun isEmpty!29392 (Option!13002) Bool)

(assert (=> d!1531086 (= (isDefined!10144 (getPair!834 (apply!12917 lm!2473 lt!1947449) key!5896)) (not (isEmpty!29392 (getPair!834 (apply!12917 lm!2473 lt!1947449) key!5896))))))

(declare-fun bs!1153579 () Bool)

(assert (= bs!1153579 d!1531086))

(assert (=> bs!1153579 m!5765316))

(declare-fun m!5765514 () Bool)

(assert (=> bs!1153579 m!5765514))

(assert (=> b!4786212 d!1531086))

(declare-fun b!4786394 () Bool)

(declare-fun e!2988481 () Option!13002)

(assert (=> b!4786394 (= e!2988481 None!13001)))

(declare-fun d!1531088 () Bool)

(declare-fun e!2988482 () Bool)

(assert (=> d!1531088 e!2988482))

(declare-fun res!2033244 () Bool)

(assert (=> d!1531088 (=> res!2033244 e!2988482)))

(declare-fun e!2988479 () Bool)

(assert (=> d!1531088 (= res!2033244 e!2988479)))

(declare-fun res!2033242 () Bool)

(assert (=> d!1531088 (=> (not res!2033242) (not e!2988479))))

(declare-fun lt!1947543 () Option!13002)

(assert (=> d!1531088 (= res!2033242 (isEmpty!29392 lt!1947543))))

(declare-fun e!2988480 () Option!13002)

(assert (=> d!1531088 (= lt!1947543 e!2988480)))

(declare-fun c!815903 () Bool)

(assert (=> d!1531088 (= c!815903 (and ((_ is Cons!54081) (apply!12917 lm!2473 lt!1947449)) (= (_1!31602 (h!60503 (apply!12917 lm!2473 lt!1947449))) key!5896)))))

(declare-fun noDuplicateKeys!2310 (List!54205) Bool)

(assert (=> d!1531088 (noDuplicateKeys!2310 (apply!12917 lm!2473 lt!1947449))))

(assert (=> d!1531088 (= (getPair!834 (apply!12917 lm!2473 lt!1947449) key!5896) lt!1947543)))

(declare-fun b!4786395 () Bool)

(declare-fun res!2033241 () Bool)

(declare-fun e!2988483 () Bool)

(assert (=> b!4786395 (=> (not res!2033241) (not e!2988483))))

(declare-fun get!18416 (Option!13002) tuple2!56616)

(assert (=> b!4786395 (= res!2033241 (= (_1!31602 (get!18416 lt!1947543)) key!5896))))

(declare-fun b!4786396 () Bool)

(assert (=> b!4786396 (= e!2988480 e!2988481)))

(declare-fun c!815902 () Bool)

(assert (=> b!4786396 (= c!815902 ((_ is Cons!54081) (apply!12917 lm!2473 lt!1947449)))))

(declare-fun b!4786397 () Bool)

(assert (=> b!4786397 (= e!2988479 (not (containsKey!3865 (apply!12917 lm!2473 lt!1947449) key!5896)))))

(declare-fun b!4786398 () Bool)

(assert (=> b!4786398 (= e!2988483 (contains!17662 (apply!12917 lm!2473 lt!1947449) (get!18416 lt!1947543)))))

(declare-fun b!4786399 () Bool)

(assert (=> b!4786399 (= e!2988480 (Some!13001 (h!60503 (apply!12917 lm!2473 lt!1947449))))))

(declare-fun b!4786400 () Bool)

(assert (=> b!4786400 (= e!2988481 (getPair!834 (t!361655 (apply!12917 lm!2473 lt!1947449)) key!5896))))

(declare-fun b!4786401 () Bool)

(assert (=> b!4786401 (= e!2988482 e!2988483)))

(declare-fun res!2033243 () Bool)

(assert (=> b!4786401 (=> (not res!2033243) (not e!2988483))))

(assert (=> b!4786401 (= res!2033243 (isDefined!10144 lt!1947543))))

(assert (= (and d!1531088 c!815903) b!4786399))

(assert (= (and d!1531088 (not c!815903)) b!4786396))

(assert (= (and b!4786396 c!815902) b!4786400))

(assert (= (and b!4786396 (not c!815902)) b!4786394))

(assert (= (and d!1531088 res!2033242) b!4786397))

(assert (= (and d!1531088 (not res!2033244)) b!4786401))

(assert (= (and b!4786401 res!2033243) b!4786395))

(assert (= (and b!4786395 res!2033241) b!4786398))

(declare-fun m!5765516 () Bool)

(assert (=> b!4786395 m!5765516))

(assert (=> b!4786398 m!5765516))

(assert (=> b!4786398 m!5765314))

(assert (=> b!4786398 m!5765516))

(declare-fun m!5765518 () Bool)

(assert (=> b!4786398 m!5765518))

(assert (=> b!4786397 m!5765314))

(declare-fun m!5765520 () Bool)

(assert (=> b!4786397 m!5765520))

(declare-fun m!5765522 () Bool)

(assert (=> b!4786400 m!5765522))

(declare-fun m!5765524 () Bool)

(assert (=> d!1531088 m!5765524))

(assert (=> d!1531088 m!5765314))

(declare-fun m!5765526 () Bool)

(assert (=> d!1531088 m!5765526))

(declare-fun m!5765528 () Bool)

(assert (=> b!4786401 m!5765528))

(assert (=> b!4786212 d!1531088))

(declare-fun d!1531090 () Bool)

(declare-datatypes ((Option!13006 0))(
  ( (None!13005) (Some!13005 (v!48262 List!54205)) )
))
(declare-fun get!18417 (Option!13006) List!54205)

(declare-fun getValueByKey!2319 (List!54206 (_ BitVec 64)) Option!13006)

(assert (=> d!1531090 (= (apply!12917 lm!2473 lt!1947449) (get!18417 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449)))))

(declare-fun bs!1153580 () Bool)

(assert (= bs!1153580 d!1531090))

(declare-fun m!5765530 () Bool)

(assert (=> bs!1153580 m!5765530))

(assert (=> bs!1153580 m!5765530))

(declare-fun m!5765532 () Bool)

(assert (=> bs!1153580 m!5765532))

(assert (=> b!4786212 d!1531090))

(declare-fun d!1531092 () Bool)

(declare-fun res!2033249 () Bool)

(declare-fun e!2988488 () Bool)

(assert (=> d!1531092 (=> res!2033249 e!2988488)))

(assert (=> d!1531092 (= res!2033249 ((_ is Nil!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531092 (= (forall!12166 (toList!6803 lm!2473) lambda!229295) e!2988488)))

(declare-fun b!4786406 () Bool)

(declare-fun e!2988489 () Bool)

(assert (=> b!4786406 (= e!2988488 e!2988489)))

(declare-fun res!2033250 () Bool)

(assert (=> b!4786406 (=> (not res!2033250) (not e!2988489))))

(assert (=> b!4786406 (= res!2033250 (dynLambda!22036 lambda!229295 (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786407 () Bool)

(assert (=> b!4786407 (= e!2988489 (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229295))))

(assert (= (and d!1531092 (not res!2033249)) b!4786406))

(assert (= (and b!4786406 res!2033250) b!4786407))

(declare-fun b_lambda!186211 () Bool)

(assert (=> (not b_lambda!186211) (not b!4786406)))

(declare-fun m!5765534 () Bool)

(assert (=> b!4786406 m!5765534))

(declare-fun m!5765536 () Bool)

(assert (=> b!4786407 m!5765536))

(assert (=> start!492166 d!1531092))

(declare-fun d!1531094 () Bool)

(declare-fun isStrictlySorted!861 (List!54206) Bool)

(assert (=> d!1531094 (= (inv!69670 lm!2473) (isStrictlySorted!861 (toList!6803 lm!2473)))))

(declare-fun bs!1153581 () Bool)

(assert (= bs!1153581 d!1531094))

(declare-fun m!5765538 () Bool)

(assert (=> bs!1153581 m!5765538))

(assert (=> start!492166 d!1531094))

(declare-fun d!1531096 () Bool)

(declare-fun e!2988495 () Bool)

(assert (=> d!1531096 e!2988495))

(declare-fun res!2033253 () Bool)

(assert (=> d!1531096 (=> res!2033253 e!2988495)))

(declare-fun lt!1947552 () Bool)

(assert (=> d!1531096 (= res!2033253 (not lt!1947552))))

(declare-fun lt!1947555 () Bool)

(assert (=> d!1531096 (= lt!1947552 lt!1947555)))

(declare-fun lt!1947553 () Unit!139522)

(declare-fun e!2988494 () Unit!139522)

(assert (=> d!1531096 (= lt!1947553 e!2988494)))

(declare-fun c!815906 () Bool)

(assert (=> d!1531096 (= c!815906 lt!1947555)))

(declare-fun containsKey!3869 (List!54206 (_ BitVec 64)) Bool)

(assert (=> d!1531096 (= lt!1947555 (containsKey!3869 (toList!6803 lm!2473) lt!1947449))))

(assert (=> d!1531096 (= (contains!17659 lm!2473 lt!1947449) lt!1947552)))

(declare-fun b!4786414 () Bool)

(declare-fun lt!1947554 () Unit!139522)

(assert (=> b!4786414 (= e!2988494 lt!1947554)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2111 (List!54206 (_ BitVec 64)) Unit!139522)

(assert (=> b!4786414 (= lt!1947554 (lemmaContainsKeyImpliesGetValueByKeyDefined!2111 (toList!6803 lm!2473) lt!1947449))))

(declare-fun isDefined!10148 (Option!13006) Bool)

(assert (=> b!4786414 (isDefined!10148 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449))))

(declare-fun b!4786415 () Bool)

(declare-fun Unit!139529 () Unit!139522)

(assert (=> b!4786415 (= e!2988494 Unit!139529)))

(declare-fun b!4786416 () Bool)

(assert (=> b!4786416 (= e!2988495 (isDefined!10148 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449)))))

(assert (= (and d!1531096 c!815906) b!4786414))

(assert (= (and d!1531096 (not c!815906)) b!4786415))

(assert (= (and d!1531096 (not res!2033253)) b!4786416))

(declare-fun m!5765540 () Bool)

(assert (=> d!1531096 m!5765540))

(declare-fun m!5765542 () Bool)

(assert (=> b!4786414 m!5765542))

(assert (=> b!4786414 m!5765530))

(assert (=> b!4786414 m!5765530))

(declare-fun m!5765544 () Bool)

(assert (=> b!4786414 m!5765544))

(assert (=> b!4786416 m!5765530))

(assert (=> b!4786416 m!5765530))

(assert (=> b!4786416 m!5765544))

(assert (=> b!4786216 d!1531096))

(declare-fun d!1531098 () Bool)

(declare-fun res!2033262 () Bool)

(declare-fun e!2988502 () Bool)

(assert (=> d!1531098 (=> res!2033262 e!2988502)))

(declare-fun e!2988504 () Bool)

(assert (=> d!1531098 (= res!2033262 e!2988504)))

(declare-fun res!2033261 () Bool)

(assert (=> d!1531098 (=> (not res!2033261) (not e!2988504))))

(assert (=> d!1531098 (= res!2033261 ((_ is Cons!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531098 (= (containsKeyBiggerList!512 (toList!6803 lm!2473) key!5896) e!2988502)))

(declare-fun b!4786423 () Bool)

(assert (=> b!4786423 (= e!2988504 (containsKey!3865 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896))))

(declare-fun b!4786424 () Bool)

(declare-fun e!2988503 () Bool)

(assert (=> b!4786424 (= e!2988502 e!2988503)))

(declare-fun res!2033260 () Bool)

(assert (=> b!4786424 (=> (not res!2033260) (not e!2988503))))

(assert (=> b!4786424 (= res!2033260 ((_ is Cons!54082) (toList!6803 lm!2473)))))

(declare-fun b!4786425 () Bool)

(assert (=> b!4786425 (= e!2988503 (containsKeyBiggerList!512 (t!361656 (toList!6803 lm!2473)) key!5896))))

(assert (= (and d!1531098 res!2033261) b!4786423))

(assert (= (and d!1531098 (not res!2033262)) b!4786424))

(assert (= (and b!4786424 res!2033260) b!4786425))

(assert (=> b!4786423 m!5765326))

(declare-fun m!5765546 () Bool)

(assert (=> b!4786425 m!5765546))

(assert (=> b!4786216 d!1531098))

(declare-fun bs!1153582 () Bool)

(declare-fun d!1531100 () Bool)

(assert (= bs!1153582 (and d!1531100 start!492166)))

(declare-fun lambda!229318 () Int)

(assert (=> bs!1153582 (= lambda!229318 lambda!229295)))

(declare-fun bs!1153583 () Bool)

(assert (= bs!1153583 (and d!1531100 b!4786214)))

(assert (=> bs!1153583 (not (= lambda!229318 lambda!229296))))

(declare-fun bs!1153584 () Bool)

(assert (= bs!1153584 (and d!1531100 d!1531066)))

(assert (=> bs!1153584 (= lambda!229318 lambda!229312)))

(declare-fun bs!1153585 () Bool)

(assert (= bs!1153585 (and d!1531100 d!1531076)))

(assert (=> bs!1153585 (not (= lambda!229318 lambda!229315))))

(assert (=> d!1531100 (containsKeyBiggerList!512 (toList!6803 lm!2473) key!5896)))

(declare-fun lt!1947558 () Unit!139522)

(declare-fun choose!34409 (ListLongMap!5225 K!15644 Hashable!6862) Unit!139522)

(assert (=> d!1531100 (= lt!1947558 (choose!34409 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531100 (forall!12166 (toList!6803 lm!2473) lambda!229318)))

(assert (=> d!1531100 (= (lemmaInLongMapThenContainsKeyBiggerList!252 lm!2473 key!5896 hashF!1559) lt!1947558)))

(declare-fun bs!1153586 () Bool)

(assert (= bs!1153586 d!1531100))

(assert (=> bs!1153586 m!5765328))

(declare-fun m!5765548 () Bool)

(assert (=> bs!1153586 m!5765548))

(declare-fun m!5765550 () Bool)

(assert (=> bs!1153586 m!5765550))

(assert (=> b!4786216 d!1531100))

(declare-fun bs!1153587 () Bool)

(declare-fun d!1531102 () Bool)

(assert (= bs!1153587 (and d!1531102 d!1531100)))

(declare-fun lambda!229321 () Int)

(assert (=> bs!1153587 (= lambda!229321 lambda!229318)))

(declare-fun bs!1153588 () Bool)

(assert (= bs!1153588 (and d!1531102 d!1531076)))

(assert (=> bs!1153588 (not (= lambda!229321 lambda!229315))))

(declare-fun bs!1153589 () Bool)

(assert (= bs!1153589 (and d!1531102 b!4786214)))

(assert (=> bs!1153589 (not (= lambda!229321 lambda!229296))))

(declare-fun bs!1153590 () Bool)

(assert (= bs!1153590 (and d!1531102 d!1531066)))

(assert (=> bs!1153590 (= lambda!229321 lambda!229312)))

(declare-fun bs!1153591 () Bool)

(assert (= bs!1153591 (and d!1531102 start!492166)))

(assert (=> bs!1153591 (= lambda!229321 lambda!229295)))

(declare-fun e!2988507 () Bool)

(assert (=> d!1531102 e!2988507))

(declare-fun res!2033265 () Bool)

(assert (=> d!1531102 (=> (not res!2033265) (not e!2988507))))

(assert (=> d!1531102 (= res!2033265 (contains!17659 lm!2473 (hash!4881 hashF!1559 key!5896)))))

(declare-fun lt!1947561 () Unit!139522)

(declare-fun choose!34410 (ListLongMap!5225 K!15644 Hashable!6862) Unit!139522)

(assert (=> d!1531102 (= lt!1947561 (choose!34410 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531102 (forall!12166 (toList!6803 lm!2473) lambda!229321)))

(assert (=> d!1531102 (= (lemmaInGenericMapThenInLongMap!266 lm!2473 key!5896 hashF!1559) lt!1947561)))

(declare-fun b!4786428 () Bool)

(assert (=> b!4786428 (= e!2988507 (isDefined!10144 (getPair!834 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1531102 res!2033265) b!4786428))

(assert (=> d!1531102 m!5765330))

(assert (=> d!1531102 m!5765330))

(declare-fun m!5765552 () Bool)

(assert (=> d!1531102 m!5765552))

(declare-fun m!5765554 () Bool)

(assert (=> d!1531102 m!5765554))

(declare-fun m!5765556 () Bool)

(assert (=> d!1531102 m!5765556))

(assert (=> b!4786428 m!5765330))

(assert (=> b!4786428 m!5765330))

(declare-fun m!5765558 () Bool)

(assert (=> b!4786428 m!5765558))

(assert (=> b!4786428 m!5765558))

(declare-fun m!5765560 () Bool)

(assert (=> b!4786428 m!5765560))

(assert (=> b!4786428 m!5765560))

(declare-fun m!5765562 () Bool)

(assert (=> b!4786428 m!5765562))

(assert (=> b!4786216 d!1531102))

(declare-fun d!1531104 () Bool)

(declare-fun c!815909 () Bool)

(declare-fun e!2988513 () Bool)

(assert (=> d!1531104 (= c!815909 e!2988513)))

(declare-fun res!2033268 () Bool)

(assert (=> d!1531104 (=> (not res!2033268) (not e!2988513))))

(assert (=> d!1531104 (= res!2033268 ((_ is Cons!54082) (toList!6803 lm!2473)))))

(declare-fun e!2988512 () V!15890)

(assert (=> d!1531104 (= (getValue!58 (toList!6803 lm!2473) key!5896) e!2988512)))

(declare-fun b!4786437 () Bool)

(assert (=> b!4786437 (= e!2988513 (containsKey!3865 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896))))

(declare-fun b!4786435 () Bool)

(assert (=> b!4786435 (= e!2988512 (_2!31602 (get!18416 (getPair!834 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896))))))

(declare-fun b!4786436 () Bool)

(assert (=> b!4786436 (= e!2988512 (getValue!58 (t!361656 (toList!6803 lm!2473)) key!5896))))

(assert (= (and d!1531104 res!2033268) b!4786437))

(assert (= (and d!1531104 c!815909) b!4786435))

(assert (= (and d!1531104 (not c!815909)) b!4786436))

(assert (=> b!4786437 m!5765326))

(declare-fun m!5765564 () Bool)

(assert (=> b!4786435 m!5765564))

(assert (=> b!4786435 m!5765564))

(declare-fun m!5765566 () Bool)

(assert (=> b!4786435 m!5765566))

(declare-fun m!5765568 () Bool)

(assert (=> b!4786436 m!5765568))

(assert (=> b!4786216 d!1531104))

(declare-fun d!1531106 () Bool)

(declare-fun hash!4883 (Hashable!6862 K!15644) (_ BitVec 64))

(assert (=> d!1531106 (= (hash!4881 hashF!1559 key!5896) (hash!4883 hashF!1559 key!5896))))

(declare-fun bs!1153592 () Bool)

(assert (= bs!1153592 d!1531106))

(declare-fun m!5765570 () Bool)

(assert (=> bs!1153592 m!5765570))

(assert (=> b!4786216 d!1531106))

(declare-fun b!4786442 () Bool)

(declare-fun e!2988516 () Bool)

(declare-fun tp!1357693 () Bool)

(declare-fun tp!1357694 () Bool)

(assert (=> b!4786442 (= e!2988516 (and tp!1357693 tp!1357694))))

(assert (=> b!4786215 (= tp!1357682 e!2988516)))

(assert (= (and b!4786215 ((_ is Cons!54082) (toList!6803 lm!2473))) b!4786442))

(declare-fun b_lambda!186213 () Bool)

(assert (= b_lambda!186211 (or start!492166 b_lambda!186213)))

(declare-fun bs!1153593 () Bool)

(declare-fun d!1531108 () Bool)

(assert (= bs!1153593 (and d!1531108 start!492166)))

(assert (=> bs!1153593 (= (dynLambda!22036 lambda!229295 (h!60504 (toList!6803 lm!2473))) (noDuplicateKeys!2310 (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(declare-fun m!5765572 () Bool)

(assert (=> bs!1153593 m!5765572))

(assert (=> b!4786406 d!1531108))

(declare-fun b_lambda!186215 () Bool)

(assert (= b_lambda!186197 (or b!4786214 b_lambda!186215)))

(declare-fun bs!1153594 () Bool)

(declare-fun d!1531110 () Bool)

(assert (= bs!1153594 (and d!1531110 b!4786214)))

(declare-fun allKeysSameHash!1948 (List!54205 (_ BitVec 64) Hashable!6862) Bool)

(assert (=> bs!1153594 (= (dynLambda!22036 lambda!229296 (h!60504 (toList!6803 lm!2473))) (allKeysSameHash!1948 (_2!31603 (h!60504 (toList!6803 lm!2473))) (_1!31603 (h!60504 (toList!6803 lm!2473))) hashF!1559))))

(declare-fun m!5765574 () Bool)

(assert (=> bs!1153594 m!5765574))

(assert (=> d!1531042 d!1531110))

(declare-fun b_lambda!186217 () Bool)

(assert (= b_lambda!186195 (or b!4786214 b_lambda!186217)))

(declare-fun bs!1153595 () Bool)

(declare-fun d!1531112 () Bool)

(assert (= bs!1153595 (and d!1531112 b!4786214)))

(assert (=> bs!1153595 (= (dynLambda!22035 lambda!229297 (tuple2!56617 key!5896 value!3111)) (= (hash!4881 hashF!1559 (_1!31602 (tuple2!56617 key!5896 value!3111))) (_1!31603 (h!60504 (toList!6803 lm!2473)))))))

(declare-fun m!5765576 () Bool)

(assert (=> bs!1153595 m!5765576))

(assert (=> d!1531036 d!1531112))

(check-sat (not b!4786436) (not b!4786416) (not b!4786423) (not d!1531096) (not bs!1153595) (not b!4786319) (not bs!1153593) (not b!4786316) (not b!4786428) (not d!1531076) (not d!1531086) (not b!4786313) (not d!1531036) (not b!4786258) (not b!4786315) (not b!4786401) (not b_lambda!186213) (not b!4786442) (not d!1531090) (not bm!334854) (not d!1531100) (not b!4786397) (not b!4786362) (not b!4786276) (not d!1531034) tp_is_empty!33329 (not b!4786414) tp_is_empty!33331 (not d!1531042) (not b_lambda!186217) (not b!4786320) (not b!4786400) (not b!4786317) (not bs!1153594) (not d!1531094) (not b!4786318) (not d!1531088) (not d!1531102) (not d!1531066) (not b!4786435) (not d!1531050) (not b!4786437) (not b!4786249) (not d!1531106) (not b_lambda!186215) (not b!4786407) (not b!4786395) (not b!4786398) (not b!4786425))
(check-sat)
(get-model)

(declare-fun d!1531168 () Bool)

(declare-fun e!2988586 () Bool)

(assert (=> d!1531168 e!2988586))

(declare-fun res!2033327 () Bool)

(assert (=> d!1531168 (=> res!2033327 e!2988586)))

(declare-fun lt!1947588 () Bool)

(assert (=> d!1531168 (= res!2033327 (not lt!1947588))))

(declare-fun lt!1947591 () Bool)

(assert (=> d!1531168 (= lt!1947588 lt!1947591)))

(declare-fun lt!1947589 () Unit!139522)

(declare-fun e!2988585 () Unit!139522)

(assert (=> d!1531168 (= lt!1947589 e!2988585)))

(declare-fun c!815926 () Bool)

(assert (=> d!1531168 (= c!815926 lt!1947591)))

(assert (=> d!1531168 (= lt!1947591 (containsKey!3869 (toList!6803 lm!2473) (hash!4881 hashF!1559 key!5896)))))

(assert (=> d!1531168 (= (contains!17659 lm!2473 (hash!4881 hashF!1559 key!5896)) lt!1947588)))

(declare-fun b!4786535 () Bool)

(declare-fun lt!1947590 () Unit!139522)

(assert (=> b!4786535 (= e!2988585 lt!1947590)))

(assert (=> b!4786535 (= lt!1947590 (lemmaContainsKeyImpliesGetValueByKeyDefined!2111 (toList!6803 lm!2473) (hash!4881 hashF!1559 key!5896)))))

(assert (=> b!4786535 (isDefined!10148 (getValueByKey!2319 (toList!6803 lm!2473) (hash!4881 hashF!1559 key!5896)))))

(declare-fun b!4786536 () Bool)

(declare-fun Unit!139530 () Unit!139522)

(assert (=> b!4786536 (= e!2988585 Unit!139530)))

(declare-fun b!4786537 () Bool)

(assert (=> b!4786537 (= e!2988586 (isDefined!10148 (getValueByKey!2319 (toList!6803 lm!2473) (hash!4881 hashF!1559 key!5896))))))

(assert (= (and d!1531168 c!815926) b!4786535))

(assert (= (and d!1531168 (not c!815926)) b!4786536))

(assert (= (and d!1531168 (not res!2033327)) b!4786537))

(assert (=> d!1531168 m!5765330))

(declare-fun m!5765662 () Bool)

(assert (=> d!1531168 m!5765662))

(assert (=> b!4786535 m!5765330))

(declare-fun m!5765664 () Bool)

(assert (=> b!4786535 m!5765664))

(assert (=> b!4786535 m!5765330))

(declare-fun m!5765666 () Bool)

(assert (=> b!4786535 m!5765666))

(assert (=> b!4786535 m!5765666))

(declare-fun m!5765668 () Bool)

(assert (=> b!4786535 m!5765668))

(assert (=> b!4786537 m!5765330))

(assert (=> b!4786537 m!5765666))

(assert (=> b!4786537 m!5765666))

(assert (=> b!4786537 m!5765668))

(assert (=> d!1531102 d!1531168))

(assert (=> d!1531102 d!1531106))

(declare-fun d!1531170 () Bool)

(declare-fun e!2988593 () Bool)

(assert (=> d!1531170 e!2988593))

(declare-fun res!2033336 () Bool)

(assert (=> d!1531170 (=> (not res!2033336) (not e!2988593))))

(assert (=> d!1531170 (= res!2033336 (contains!17659 lm!2473 (hash!4881 hashF!1559 key!5896)))))

(assert (=> d!1531170 true))

(declare-fun _$5!175 () Unit!139522)

(assert (=> d!1531170 (= (choose!34410 lm!2473 key!5896 hashF!1559) _$5!175)))

(declare-fun b!4786550 () Bool)

(assert (=> b!4786550 (= e!2988593 (isDefined!10144 (getPair!834 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1531170 res!2033336) b!4786550))

(assert (=> d!1531170 m!5765330))

(assert (=> d!1531170 m!5765330))

(assert (=> d!1531170 m!5765552))

(assert (=> b!4786550 m!5765330))

(assert (=> b!4786550 m!5765330))

(assert (=> b!4786550 m!5765558))

(assert (=> b!4786550 m!5765558))

(assert (=> b!4786550 m!5765560))

(assert (=> b!4786550 m!5765560))

(assert (=> b!4786550 m!5765562))

(assert (=> d!1531102 d!1531170))

(declare-fun d!1531172 () Bool)

(declare-fun res!2033340 () Bool)

(declare-fun e!2988598 () Bool)

(assert (=> d!1531172 (=> res!2033340 e!2988598)))

(assert (=> d!1531172 (= res!2033340 ((_ is Nil!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531172 (= (forall!12166 (toList!6803 lm!2473) lambda!229321) e!2988598)))

(declare-fun b!4786562 () Bool)

(declare-fun e!2988599 () Bool)

(assert (=> b!4786562 (= e!2988598 e!2988599)))

(declare-fun res!2033341 () Bool)

(assert (=> b!4786562 (=> (not res!2033341) (not e!2988599))))

(assert (=> b!4786562 (= res!2033341 (dynLambda!22036 lambda!229321 (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786563 () Bool)

(assert (=> b!4786563 (= e!2988599 (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229321))))

(assert (= (and d!1531172 (not res!2033340)) b!4786562))

(assert (= (and b!4786562 res!2033341) b!4786563))

(declare-fun b_lambda!186229 () Bool)

(assert (=> (not b_lambda!186229) (not b!4786562)))

(declare-fun m!5765670 () Bool)

(assert (=> b!4786562 m!5765670))

(declare-fun m!5765672 () Bool)

(assert (=> b!4786563 m!5765672))

(assert (=> d!1531102 d!1531172))

(declare-fun d!1531174 () Bool)

(declare-fun res!2033342 () Bool)

(declare-fun e!2988600 () Bool)

(assert (=> d!1531174 (=> res!2033342 e!2988600)))

(assert (=> d!1531174 (= res!2033342 ((_ is Nil!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531174 (= (forall!12166 (toList!6803 lm!2473) lambda!229315) e!2988600)))

(declare-fun b!4786564 () Bool)

(declare-fun e!2988601 () Bool)

(assert (=> b!4786564 (= e!2988600 e!2988601)))

(declare-fun res!2033343 () Bool)

(assert (=> b!4786564 (=> (not res!2033343) (not e!2988601))))

(assert (=> b!4786564 (= res!2033343 (dynLambda!22036 lambda!229315 (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786565 () Bool)

(assert (=> b!4786565 (= e!2988601 (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229315))))

(assert (= (and d!1531174 (not res!2033342)) b!4786564))

(assert (= (and b!4786564 res!2033343) b!4786565))

(declare-fun b_lambda!186231 () Bool)

(assert (=> (not b_lambda!186231) (not b!4786564)))

(declare-fun m!5765674 () Bool)

(assert (=> b!4786564 m!5765674))

(declare-fun m!5765676 () Bool)

(assert (=> b!4786565 m!5765676))

(assert (=> d!1531076 d!1531174))

(declare-fun bs!1153614 () Bool)

(declare-fun d!1531176 () Bool)

(assert (= bs!1153614 (and d!1531176 b!4786214)))

(declare-fun lambda!229342 () Int)

(assert (=> bs!1153614 (= lambda!229342 lambda!229297)))

(assert (=> d!1531176 true))

(assert (=> d!1531176 true))

(assert (=> d!1531176 (= (allKeysSameHash!1948 (_2!31603 (h!60504 (toList!6803 lm!2473))) (_1!31603 (h!60504 (toList!6803 lm!2473))) hashF!1559) (forall!12167 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229342))))

(declare-fun bs!1153615 () Bool)

(assert (= bs!1153615 d!1531176))

(declare-fun m!5765726 () Bool)

(assert (=> bs!1153615 m!5765726))

(assert (=> bs!1153594 d!1531176))

(declare-fun d!1531190 () Bool)

(assert (=> d!1531190 (= (isEmpty!29392 lt!1947543) (not ((_ is Some!13001) lt!1947543)))))

(assert (=> d!1531088 d!1531190))

(declare-fun d!1531196 () Bool)

(declare-fun res!2033363 () Bool)

(declare-fun e!2988624 () Bool)

(assert (=> d!1531196 (=> res!2033363 e!2988624)))

(assert (=> d!1531196 (= res!2033363 (not ((_ is Cons!54081) (apply!12917 lm!2473 lt!1947449))))))

(assert (=> d!1531196 (= (noDuplicateKeys!2310 (apply!12917 lm!2473 lt!1947449)) e!2988624)))

(declare-fun b!4786597 () Bool)

(declare-fun e!2988625 () Bool)

(assert (=> b!4786597 (= e!2988624 e!2988625)))

(declare-fun res!2033364 () Bool)

(assert (=> b!4786597 (=> (not res!2033364) (not e!2988625))))

(assert (=> b!4786597 (= res!2033364 (not (containsKey!3865 (t!361655 (apply!12917 lm!2473 lt!1947449)) (_1!31602 (h!60503 (apply!12917 lm!2473 lt!1947449))))))))

(declare-fun b!4786598 () Bool)

(assert (=> b!4786598 (= e!2988625 (noDuplicateKeys!2310 (t!361655 (apply!12917 lm!2473 lt!1947449))))))

(assert (= (and d!1531196 (not res!2033363)) b!4786597))

(assert (= (and b!4786597 res!2033364) b!4786598))

(declare-fun m!5765744 () Bool)

(assert (=> b!4786597 m!5765744))

(declare-fun m!5765746 () Bool)

(assert (=> b!4786598 m!5765746))

(assert (=> d!1531088 d!1531196))

(declare-fun d!1531200 () Bool)

(assert (=> d!1531200 (= (get!18416 lt!1947543) (v!48258 lt!1947543))))

(assert (=> b!4786395 d!1531200))

(declare-fun d!1531204 () Bool)

(declare-fun choose!34416 (Hashable!6862 K!15644) (_ BitVec 64))

(assert (=> d!1531204 (= (hash!4883 hashF!1559 key!5896) (choose!34416 hashF!1559 key!5896))))

(declare-fun bs!1153616 () Bool)

(assert (= bs!1153616 d!1531204))

(declare-fun m!5765752 () Bool)

(assert (=> bs!1153616 m!5765752))

(assert (=> d!1531106 d!1531204))

(declare-fun d!1531206 () Bool)

(assert (=> d!1531206 (= (get!18417 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449)) (v!48262 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449)))))

(assert (=> d!1531090 d!1531206))

(declare-fun b!4786623 () Bool)

(declare-fun e!2988643 () Option!13006)

(assert (=> b!4786623 (= e!2988643 None!13005)))

(declare-fun b!4786621 () Bool)

(declare-fun e!2988642 () Option!13006)

(assert (=> b!4786621 (= e!2988642 e!2988643)))

(declare-fun c!815943 () Bool)

(assert (=> b!4786621 (= c!815943 (and ((_ is Cons!54082) (toList!6803 lm!2473)) (not (= (_1!31603 (h!60504 (toList!6803 lm!2473))) lt!1947449))))))

(declare-fun b!4786620 () Bool)

(assert (=> b!4786620 (= e!2988642 (Some!13005 (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(declare-fun d!1531208 () Bool)

(declare-fun c!815942 () Bool)

(assert (=> d!1531208 (= c!815942 (and ((_ is Cons!54082) (toList!6803 lm!2473)) (= (_1!31603 (h!60504 (toList!6803 lm!2473))) lt!1947449)))))

(assert (=> d!1531208 (= (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449) e!2988642)))

(declare-fun b!4786622 () Bool)

(assert (=> b!4786622 (= e!2988643 (getValueByKey!2319 (t!361656 (toList!6803 lm!2473)) lt!1947449))))

(assert (= (and d!1531208 c!815942) b!4786620))

(assert (= (and d!1531208 (not c!815942)) b!4786621))

(assert (= (and b!4786621 c!815943) b!4786622))

(assert (= (and b!4786621 (not c!815943)) b!4786623))

(declare-fun m!5765768 () Bool)

(assert (=> b!4786622 m!5765768))

(assert (=> d!1531090 d!1531208))

(declare-fun d!1531218 () Bool)

(declare-fun lt!1947618 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9680 (List!54208) (InoxSet K!15644))

(assert (=> d!1531218 (= lt!1947618 (select (content!9680 (keys!19720 (extractMap!2389 (toList!6803 lm!2473)))) key!5896))))

(declare-fun e!2988653 () Bool)

(assert (=> d!1531218 (= lt!1947618 e!2988653)))

(declare-fun res!2033384 () Bool)

(assert (=> d!1531218 (=> (not res!2033384) (not e!2988653))))

(assert (=> d!1531218 (= res!2033384 ((_ is Cons!54084) (keys!19720 (extractMap!2389 (toList!6803 lm!2473)))))))

(assert (=> d!1531218 (= (contains!17665 (keys!19720 (extractMap!2389 (toList!6803 lm!2473))) key!5896) lt!1947618)))

(declare-fun b!4786632 () Bool)

(declare-fun e!2988652 () Bool)

(assert (=> b!4786632 (= e!2988653 e!2988652)))

(declare-fun res!2033385 () Bool)

(assert (=> b!4786632 (=> res!2033385 e!2988652)))

(assert (=> b!4786632 (= res!2033385 (= (h!60506 (keys!19720 (extractMap!2389 (toList!6803 lm!2473)))) key!5896))))

(declare-fun b!4786633 () Bool)

(assert (=> b!4786633 (= e!2988652 (contains!17665 (t!361658 (keys!19720 (extractMap!2389 (toList!6803 lm!2473)))) key!5896))))

(assert (= (and d!1531218 res!2033384) b!4786632))

(assert (= (and b!4786632 (not res!2033385)) b!4786633))

(assert (=> d!1531218 m!5765438))

(declare-fun m!5765774 () Bool)

(assert (=> d!1531218 m!5765774))

(declare-fun m!5765776 () Bool)

(assert (=> d!1531218 m!5765776))

(declare-fun m!5765778 () Bool)

(assert (=> b!4786633 m!5765778))

(assert (=> b!4786313 d!1531218))

(declare-fun b!4786651 () Bool)

(assert (=> b!4786651 true))

(declare-fun d!1531226 () Bool)

(declare-fun e!2988664 () Bool)

(assert (=> d!1531226 e!2988664))

(declare-fun res!2033400 () Bool)

(assert (=> d!1531226 (=> (not res!2033400) (not e!2988664))))

(declare-fun lt!1947624 () List!54208)

(declare-fun noDuplicate!907 (List!54208) Bool)

(assert (=> d!1531226 (= res!2033400 (noDuplicate!907 lt!1947624))))

(assert (=> d!1531226 (= lt!1947624 (getKeysList!1059 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))

(assert (=> d!1531226 (= (keys!19720 (extractMap!2389 (toList!6803 lm!2473))) lt!1947624)))

(declare-fun b!4786650 () Bool)

(declare-fun res!2033401 () Bool)

(assert (=> b!4786650 (=> (not res!2033401) (not e!2988664))))

(declare-fun length!670 (List!54208) Int)

(declare-fun length!671 (List!54205) Int)

(assert (=> b!4786650 (= res!2033401 (= (length!670 lt!1947624) (length!671 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))))

(declare-fun res!2033402 () Bool)

(assert (=> b!4786651 (=> (not res!2033402) (not e!2988664))))

(declare-fun lambda!229350 () Int)

(declare-fun forall!12170 (List!54208 Int) Bool)

(assert (=> b!4786651 (= res!2033402 (forall!12170 lt!1947624 lambda!229350))))

(declare-fun lambda!229351 () Int)

(declare-fun b!4786652 () Bool)

(declare-fun map!12199 (List!54205 Int) List!54208)

(assert (=> b!4786652 (= e!2988664 (= (content!9680 lt!1947624) (content!9680 (map!12199 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) lambda!229351))))))

(assert (= (and d!1531226 res!2033400) b!4786650))

(assert (= (and b!4786650 res!2033401) b!4786651))

(assert (= (and b!4786651 res!2033402) b!4786652))

(declare-fun m!5765790 () Bool)

(assert (=> d!1531226 m!5765790))

(assert (=> d!1531226 m!5765446))

(declare-fun m!5765792 () Bool)

(assert (=> b!4786650 m!5765792))

(declare-fun m!5765794 () Bool)

(assert (=> b!4786650 m!5765794))

(declare-fun m!5765796 () Bool)

(assert (=> b!4786651 m!5765796))

(declare-fun m!5765798 () Bool)

(assert (=> b!4786652 m!5765798))

(declare-fun m!5765800 () Bool)

(assert (=> b!4786652 m!5765800))

(assert (=> b!4786652 m!5765800))

(declare-fun m!5765802 () Bool)

(assert (=> b!4786652 m!5765802))

(assert (=> b!4786313 d!1531226))

(declare-fun d!1531236 () Bool)

(assert (=> d!1531236 (= (get!18416 (getPair!834 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896)) (v!48258 (getPair!834 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896)))))

(assert (=> b!4786435 d!1531236))

(declare-fun b!4786655 () Bool)

(declare-fun e!2988667 () Option!13002)

(assert (=> b!4786655 (= e!2988667 None!13001)))

(declare-fun d!1531238 () Bool)

(declare-fun e!2988668 () Bool)

(assert (=> d!1531238 e!2988668))

(declare-fun res!2033406 () Bool)

(assert (=> d!1531238 (=> res!2033406 e!2988668)))

(declare-fun e!2988665 () Bool)

(assert (=> d!1531238 (= res!2033406 e!2988665)))

(declare-fun res!2033404 () Bool)

(assert (=> d!1531238 (=> (not res!2033404) (not e!2988665))))

(declare-fun lt!1947625 () Option!13002)

(assert (=> d!1531238 (= res!2033404 (isEmpty!29392 lt!1947625))))

(declare-fun e!2988666 () Option!13002)

(assert (=> d!1531238 (= lt!1947625 e!2988666)))

(declare-fun c!815945 () Bool)

(assert (=> d!1531238 (= c!815945 (and ((_ is Cons!54081) (_2!31603 (h!60504 (toList!6803 lm!2473)))) (= (_1!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))) key!5896)))))

(assert (=> d!1531238 (noDuplicateKeys!2310 (_2!31603 (h!60504 (toList!6803 lm!2473))))))

(assert (=> d!1531238 (= (getPair!834 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896) lt!1947625)))

(declare-fun b!4786656 () Bool)

(declare-fun res!2033403 () Bool)

(declare-fun e!2988669 () Bool)

(assert (=> b!4786656 (=> (not res!2033403) (not e!2988669))))

(assert (=> b!4786656 (= res!2033403 (= (_1!31602 (get!18416 lt!1947625)) key!5896))))

(declare-fun b!4786657 () Bool)

(assert (=> b!4786657 (= e!2988666 e!2988667)))

(declare-fun c!815944 () Bool)

(assert (=> b!4786657 (= c!815944 ((_ is Cons!54081) (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(declare-fun b!4786658 () Bool)

(assert (=> b!4786658 (= e!2988665 (not (containsKey!3865 (_2!31603 (h!60504 (toList!6803 lm!2473))) key!5896)))))

(declare-fun b!4786659 () Bool)

(assert (=> b!4786659 (= e!2988669 (contains!17662 (_2!31603 (h!60504 (toList!6803 lm!2473))) (get!18416 lt!1947625)))))

(declare-fun b!4786660 () Bool)

(assert (=> b!4786660 (= e!2988666 (Some!13001 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(declare-fun b!4786661 () Bool)

(assert (=> b!4786661 (= e!2988667 (getPair!834 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))) key!5896))))

(declare-fun b!4786662 () Bool)

(assert (=> b!4786662 (= e!2988668 e!2988669)))

(declare-fun res!2033405 () Bool)

(assert (=> b!4786662 (=> (not res!2033405) (not e!2988669))))

(assert (=> b!4786662 (= res!2033405 (isDefined!10144 lt!1947625))))

(assert (= (and d!1531238 c!815945) b!4786660))

(assert (= (and d!1531238 (not c!815945)) b!4786657))

(assert (= (and b!4786657 c!815944) b!4786661))

(assert (= (and b!4786657 (not c!815944)) b!4786655))

(assert (= (and d!1531238 res!2033404) b!4786658))

(assert (= (and d!1531238 (not res!2033406)) b!4786662))

(assert (= (and b!4786662 res!2033405) b!4786656))

(assert (= (and b!4786656 res!2033403) b!4786659))

(declare-fun m!5765804 () Bool)

(assert (=> b!4786656 m!5765804))

(assert (=> b!4786659 m!5765804))

(assert (=> b!4786659 m!5765804))

(declare-fun m!5765806 () Bool)

(assert (=> b!4786659 m!5765806))

(assert (=> b!4786658 m!5765326))

(declare-fun m!5765808 () Bool)

(assert (=> b!4786661 m!5765808))

(declare-fun m!5765810 () Bool)

(assert (=> d!1531238 m!5765810))

(assert (=> d!1531238 m!5765572))

(declare-fun m!5765812 () Bool)

(assert (=> b!4786662 m!5765812))

(assert (=> b!4786435 d!1531238))

(declare-fun d!1531240 () Bool)

(declare-fun noDuplicatedKeys!428 (List!54205) Bool)

(assert (=> d!1531240 (= (invariantList!1713 (toList!6804 lt!1947537)) (noDuplicatedKeys!428 (toList!6804 lt!1947537)))))

(declare-fun bs!1153621 () Bool)

(assert (= bs!1153621 d!1531240))

(declare-fun m!5765814 () Bool)

(assert (=> bs!1153621 m!5765814))

(assert (=> d!1531066 d!1531240))

(declare-fun d!1531242 () Bool)

(declare-fun res!2033407 () Bool)

(declare-fun e!2988670 () Bool)

(assert (=> d!1531242 (=> res!2033407 e!2988670)))

(assert (=> d!1531242 (= res!2033407 ((_ is Nil!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531242 (= (forall!12166 (toList!6803 lm!2473) lambda!229312) e!2988670)))

(declare-fun b!4786663 () Bool)

(declare-fun e!2988671 () Bool)

(assert (=> b!4786663 (= e!2988670 e!2988671)))

(declare-fun res!2033408 () Bool)

(assert (=> b!4786663 (=> (not res!2033408) (not e!2988671))))

(assert (=> b!4786663 (= res!2033408 (dynLambda!22036 lambda!229312 (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786664 () Bool)

(assert (=> b!4786664 (= e!2988671 (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229312))))

(assert (= (and d!1531242 (not res!2033407)) b!4786663))

(assert (= (and b!4786663 res!2033408) b!4786664))

(declare-fun b_lambda!186239 () Bool)

(assert (=> (not b_lambda!186239) (not b!4786663)))

(declare-fun m!5765816 () Bool)

(assert (=> b!4786663 m!5765816))

(declare-fun m!5765818 () Bool)

(assert (=> b!4786664 m!5765818))

(assert (=> d!1531066 d!1531242))

(assert (=> b!4786437 d!1531044))

(declare-fun bs!1153638 () Bool)

(declare-fun b!4786695 () Bool)

(assert (= bs!1153638 (and b!4786695 b!4786214)))

(declare-fun lambda!229413 () Int)

(assert (=> bs!1153638 (not (= lambda!229413 lambda!229297))))

(declare-fun bs!1153639 () Bool)

(assert (= bs!1153639 (and b!4786695 d!1531176)))

(assert (=> bs!1153639 (not (= lambda!229413 lambda!229342))))

(assert (=> b!4786695 true))

(declare-fun bs!1153640 () Bool)

(declare-fun b!4786694 () Bool)

(assert (= bs!1153640 (and b!4786694 b!4786214)))

(declare-fun lambda!229414 () Int)

(assert (=> bs!1153640 (not (= lambda!229414 lambda!229297))))

(declare-fun bs!1153641 () Bool)

(assert (= bs!1153641 (and b!4786694 d!1531176)))

(assert (=> bs!1153641 (not (= lambda!229414 lambda!229342))))

(declare-fun bs!1153642 () Bool)

(assert (= bs!1153642 (and b!4786694 b!4786695)))

(assert (=> bs!1153642 (= lambda!229414 lambda!229413)))

(assert (=> b!4786694 true))

(declare-fun lambda!229415 () Int)

(assert (=> bs!1153640 (not (= lambda!229415 lambda!229297))))

(assert (=> bs!1153641 (not (= lambda!229415 lambda!229342))))

(declare-fun lt!1947749 () ListMap!6275)

(assert (=> bs!1153642 (= (= lt!1947749 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) (= lambda!229415 lambda!229413))))

(assert (=> b!4786694 (= (= lt!1947749 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) (= lambda!229415 lambda!229414))))

(assert (=> b!4786694 true))

(declare-fun bs!1153643 () Bool)

(declare-fun d!1531244 () Bool)

(assert (= bs!1153643 (and d!1531244 b!4786214)))

(declare-fun lambda!229416 () Int)

(assert (=> bs!1153643 (not (= lambda!229416 lambda!229297))))

(declare-fun bs!1153644 () Bool)

(assert (= bs!1153644 (and d!1531244 d!1531176)))

(assert (=> bs!1153644 (not (= lambda!229416 lambda!229342))))

(declare-fun bs!1153645 () Bool)

(assert (= bs!1153645 (and d!1531244 b!4786694)))

(declare-fun lt!1947752 () ListMap!6275)

(assert (=> bs!1153645 (= (= lt!1947752 lt!1947749) (= lambda!229416 lambda!229415))))

(declare-fun bs!1153646 () Bool)

(assert (= bs!1153646 (and d!1531244 b!4786695)))

(assert (=> bs!1153646 (= (= lt!1947752 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) (= lambda!229416 lambda!229413))))

(assert (=> bs!1153645 (= (= lt!1947752 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) (= lambda!229416 lambda!229414))))

(assert (=> d!1531244 true))

(declare-fun c!815952 () Bool)

(declare-fun bm!334873 () Bool)

(declare-fun call!334878 () Bool)

(assert (=> bm!334873 (= call!334878 (forall!12167 (ite c!815952 (toList!6804 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473))))) (ite c!815952 lambda!229413 lambda!229415)))))

(declare-fun e!2988689 () ListMap!6275)

(assert (=> b!4786694 (= e!2988689 lt!1947749)))

(declare-fun lt!1947739 () ListMap!6275)

(declare-fun +!2474 (ListMap!6275 tuple2!56616) ListMap!6275)

(assert (=> b!4786694 (= lt!1947739 (+!2474 (extractMap!2389 (t!361656 (toList!6803 lm!2473))) (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(assert (=> b!4786694 (= lt!1947749 (addToMapMapFromBucket!1678 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))) (+!2474 (extractMap!2389 (t!361656 (toList!6803 lm!2473))) (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473)))))))))

(declare-fun lt!1947747 () Unit!139522)

(declare-fun call!334880 () Unit!139522)

(assert (=> b!4786694 (= lt!1947747 call!334880)))

(assert (=> b!4786694 (forall!12167 (toList!6804 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) lambda!229414)))

(declare-fun lt!1947740 () Unit!139522)

(assert (=> b!4786694 (= lt!1947740 lt!1947747)))

(assert (=> b!4786694 (forall!12167 (toList!6804 lt!1947739) lambda!229415)))

(declare-fun lt!1947741 () Unit!139522)

(declare-fun Unit!139536 () Unit!139522)

(assert (=> b!4786694 (= lt!1947741 Unit!139536)))

(assert (=> b!4786694 call!334878))

(declare-fun lt!1947738 () Unit!139522)

(declare-fun Unit!139537 () Unit!139522)

(assert (=> b!4786694 (= lt!1947738 Unit!139537)))

(declare-fun lt!1947733 () Unit!139522)

(declare-fun Unit!139538 () Unit!139522)

(assert (=> b!4786694 (= lt!1947733 Unit!139538)))

(declare-fun lt!1947743 () Unit!139522)

(assert (=> b!4786694 (= lt!1947743 (forallContained!4105 (toList!6804 lt!1947739) lambda!229415 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(assert (=> b!4786694 (contains!17658 lt!1947739 (_1!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(declare-fun lt!1947735 () Unit!139522)

(declare-fun Unit!139539 () Unit!139522)

(assert (=> b!4786694 (= lt!1947735 Unit!139539)))

(assert (=> b!4786694 (contains!17658 lt!1947749 (_1!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(declare-fun lt!1947745 () Unit!139522)

(declare-fun Unit!139540 () Unit!139522)

(assert (=> b!4786694 (= lt!1947745 Unit!139540)))

(assert (=> b!4786694 (forall!12167 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229415)))

(declare-fun lt!1947732 () Unit!139522)

(declare-fun Unit!139541 () Unit!139522)

(assert (=> b!4786694 (= lt!1947732 Unit!139541)))

(assert (=> b!4786694 (forall!12167 (toList!6804 lt!1947739) lambda!229415)))

(declare-fun lt!1947748 () Unit!139522)

(declare-fun Unit!139542 () Unit!139522)

(assert (=> b!4786694 (= lt!1947748 Unit!139542)))

(declare-fun lt!1947734 () Unit!139522)

(declare-fun Unit!139543 () Unit!139522)

(assert (=> b!4786694 (= lt!1947734 Unit!139543)))

(declare-fun lt!1947737 () Unit!139522)

(declare-fun addForallContainsKeyThenBeforeAdding!929 (ListMap!6275 ListMap!6275 K!15644 V!15890) Unit!139522)

(assert (=> b!4786694 (= lt!1947737 (addForallContainsKeyThenBeforeAdding!929 (extractMap!2389 (t!361656 (toList!6803 lm!2473))) lt!1947749 (_1!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))) (_2!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473)))))))))

(assert (=> b!4786694 (forall!12167 (toList!6804 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) lambda!229415)))

(declare-fun lt!1947736 () Unit!139522)

(assert (=> b!4786694 (= lt!1947736 lt!1947737)))

(declare-fun call!334879 () Bool)

(assert (=> b!4786694 call!334879))

(declare-fun lt!1947751 () Unit!139522)

(declare-fun Unit!139544 () Unit!139522)

(assert (=> b!4786694 (= lt!1947751 Unit!139544)))

(declare-fun res!2033425 () Bool)

(assert (=> b!4786694 (= res!2033425 (forall!12167 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229415))))

(declare-fun e!2988690 () Bool)

(assert (=> b!4786694 (=> (not res!2033425) (not e!2988690))))

(assert (=> b!4786694 e!2988690))

(declare-fun lt!1947744 () Unit!139522)

(declare-fun Unit!139545 () Unit!139522)

(assert (=> b!4786694 (= lt!1947744 Unit!139545)))

(assert (=> b!4786695 (= e!2988689 (extractMap!2389 (t!361656 (toList!6803 lm!2473))))))

(declare-fun lt!1947742 () Unit!139522)

(assert (=> b!4786695 (= lt!1947742 call!334880)))

(assert (=> b!4786695 call!334878))

(declare-fun lt!1947746 () Unit!139522)

(assert (=> b!4786695 (= lt!1947746 lt!1947742)))

(assert (=> b!4786695 call!334879))

(declare-fun lt!1947750 () Unit!139522)

(declare-fun Unit!139546 () Unit!139522)

(assert (=> b!4786695 (= lt!1947750 Unit!139546)))

(declare-fun e!2988688 () Bool)

(assert (=> d!1531244 e!2988688))

(declare-fun res!2033424 () Bool)

(assert (=> d!1531244 (=> (not res!2033424) (not e!2988688))))

(assert (=> d!1531244 (= res!2033424 (forall!12167 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229416))))

(assert (=> d!1531244 (= lt!1947752 e!2988689)))

(assert (=> d!1531244 (= c!815952 ((_ is Nil!54081) (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(assert (=> d!1531244 (noDuplicateKeys!2310 (_2!31603 (h!60504 (toList!6803 lm!2473))))))

(assert (=> d!1531244 (= (addToMapMapFromBucket!1678 (_2!31603 (h!60504 (toList!6803 lm!2473))) (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) lt!1947752)))

(declare-fun b!4786696 () Bool)

(assert (=> b!4786696 (= e!2988690 (forall!12167 (toList!6804 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) lambda!229415))))

(declare-fun bm!334874 () Bool)

(assert (=> bm!334874 (= call!334879 (forall!12167 (toList!6804 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) (ite c!815952 lambda!229413 lambda!229415)))))

(declare-fun b!4786697 () Bool)

(assert (=> b!4786697 (= e!2988688 (invariantList!1713 (toList!6804 lt!1947752)))))

(declare-fun b!4786698 () Bool)

(declare-fun res!2033426 () Bool)

(assert (=> b!4786698 (=> (not res!2033426) (not e!2988688))))

(assert (=> b!4786698 (= res!2033426 (forall!12167 (toList!6804 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))) lambda!229416))))

(declare-fun bm!334875 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!930 (ListMap!6275) Unit!139522)

(assert (=> bm!334875 (= call!334880 (lemmaContainsAllItsOwnKeys!930 (extractMap!2389 (t!361656 (toList!6803 lm!2473)))))))

(assert (= (and d!1531244 c!815952) b!4786695))

(assert (= (and d!1531244 (not c!815952)) b!4786694))

(assert (= (and b!4786694 res!2033425) b!4786696))

(assert (= (or b!4786695 b!4786694) bm!334874))

(assert (= (or b!4786695 b!4786694) bm!334873))

(assert (= (or b!4786695 b!4786694) bm!334875))

(assert (= (and d!1531244 res!2033424) b!4786698))

(assert (= (and b!4786698 res!2033426) b!4786697))

(declare-fun m!5765880 () Bool)

(assert (=> bm!334873 m!5765880))

(declare-fun m!5765882 () Bool)

(assert (=> bm!334874 m!5765882))

(declare-fun m!5765884 () Bool)

(assert (=> b!4786698 m!5765884))

(declare-fun m!5765886 () Bool)

(assert (=> b!4786694 m!5765886))

(declare-fun m!5765888 () Bool)

(assert (=> b!4786694 m!5765888))

(assert (=> b!4786694 m!5765492))

(declare-fun m!5765890 () Bool)

(assert (=> b!4786694 m!5765890))

(declare-fun m!5765892 () Bool)

(assert (=> b!4786694 m!5765892))

(declare-fun m!5765894 () Bool)

(assert (=> b!4786694 m!5765894))

(declare-fun m!5765896 () Bool)

(assert (=> b!4786694 m!5765896))

(declare-fun m!5765898 () Bool)

(assert (=> b!4786694 m!5765898))

(declare-fun m!5765900 () Bool)

(assert (=> b!4786694 m!5765900))

(assert (=> b!4786694 m!5765492))

(assert (=> b!4786694 m!5765892))

(declare-fun m!5765902 () Bool)

(assert (=> b!4786694 m!5765902))

(declare-fun m!5765904 () Bool)

(assert (=> b!4786694 m!5765904))

(assert (=> b!4786694 m!5765904))

(assert (=> b!4786694 m!5765886))

(declare-fun m!5765906 () Bool)

(assert (=> d!1531244 m!5765906))

(assert (=> d!1531244 m!5765572))

(assert (=> bm!334875 m!5765492))

(declare-fun m!5765908 () Bool)

(assert (=> bm!334875 m!5765908))

(declare-fun m!5765910 () Bool)

(assert (=> b!4786697 m!5765910))

(assert (=> b!4786696 m!5765896))

(assert (=> b!4786362 d!1531244))

(declare-fun bs!1153653 () Bool)

(declare-fun d!1531270 () Bool)

(assert (= bs!1153653 (and d!1531270 d!1531100)))

(declare-fun lambda!229417 () Int)

(assert (=> bs!1153653 (= lambda!229417 lambda!229318)))

(declare-fun bs!1153654 () Bool)

(assert (= bs!1153654 (and d!1531270 d!1531076)))

(assert (=> bs!1153654 (not (= lambda!229417 lambda!229315))))

(declare-fun bs!1153655 () Bool)

(assert (= bs!1153655 (and d!1531270 d!1531102)))

(assert (=> bs!1153655 (= lambda!229417 lambda!229321)))

(declare-fun bs!1153656 () Bool)

(assert (= bs!1153656 (and d!1531270 b!4786214)))

(assert (=> bs!1153656 (not (= lambda!229417 lambda!229296))))

(declare-fun bs!1153657 () Bool)

(assert (= bs!1153657 (and d!1531270 d!1531066)))

(assert (=> bs!1153657 (= lambda!229417 lambda!229312)))

(declare-fun bs!1153658 () Bool)

(assert (= bs!1153658 (and d!1531270 start!492166)))

(assert (=> bs!1153658 (= lambda!229417 lambda!229295)))

(declare-fun lt!1947754 () ListMap!6275)

(assert (=> d!1531270 (invariantList!1713 (toList!6804 lt!1947754))))

(declare-fun e!2988702 () ListMap!6275)

(assert (=> d!1531270 (= lt!1947754 e!2988702)))

(declare-fun c!815955 () Bool)

(assert (=> d!1531270 (= c!815955 ((_ is Cons!54082) (t!361656 (toList!6803 lm!2473))))))

(assert (=> d!1531270 (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229417)))

(assert (=> d!1531270 (= (extractMap!2389 (t!361656 (toList!6803 lm!2473))) lt!1947754)))

(declare-fun b!4786717 () Bool)

(assert (=> b!4786717 (= e!2988702 (addToMapMapFromBucket!1678 (_2!31603 (h!60504 (t!361656 (toList!6803 lm!2473)))) (extractMap!2389 (t!361656 (t!361656 (toList!6803 lm!2473))))))))

(declare-fun b!4786718 () Bool)

(assert (=> b!4786718 (= e!2988702 (ListMap!6276 Nil!54081))))

(assert (= (and d!1531270 c!815955) b!4786717))

(assert (= (and d!1531270 (not c!815955)) b!4786718))

(declare-fun m!5765912 () Bool)

(assert (=> d!1531270 m!5765912))

(declare-fun m!5765914 () Bool)

(assert (=> d!1531270 m!5765914))

(declare-fun m!5765916 () Bool)

(assert (=> b!4786717 m!5765916))

(assert (=> b!4786717 m!5765916))

(declare-fun m!5765918 () Bool)

(assert (=> b!4786717 m!5765918))

(assert (=> b!4786362 d!1531270))

(declare-fun d!1531272 () Bool)

(declare-fun res!2033433 () Bool)

(declare-fun e!2988703 () Bool)

(assert (=> d!1531272 (=> res!2033433 e!2988703)))

(assert (=> d!1531272 (= res!2033433 (not ((_ is Cons!54081) (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(assert (=> d!1531272 (= (noDuplicateKeys!2310 (_2!31603 (h!60504 (toList!6803 lm!2473)))) e!2988703)))

(declare-fun b!4786719 () Bool)

(declare-fun e!2988704 () Bool)

(assert (=> b!4786719 (= e!2988703 e!2988704)))

(declare-fun res!2033434 () Bool)

(assert (=> b!4786719 (=> (not res!2033434) (not e!2988704))))

(assert (=> b!4786719 (= res!2033434 (not (containsKey!3865 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))) (_1!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))))

(declare-fun b!4786720 () Bool)

(assert (=> b!4786720 (= e!2988704 (noDuplicateKeys!2310 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(assert (= (and d!1531272 (not res!2033433)) b!4786719))

(assert (= (and b!4786719 res!2033434) b!4786720))

(declare-fun m!5765920 () Bool)

(assert (=> b!4786719 m!5765920))

(declare-fun m!5765922 () Bool)

(assert (=> b!4786720 m!5765922))

(assert (=> bs!1153593 d!1531272))

(declare-fun d!1531274 () Bool)

(declare-fun c!815956 () Bool)

(declare-fun e!2988706 () Bool)

(assert (=> d!1531274 (= c!815956 e!2988706)))

(declare-fun res!2033435 () Bool)

(assert (=> d!1531274 (=> (not res!2033435) (not e!2988706))))

(assert (=> d!1531274 (= res!2033435 ((_ is Cons!54082) (t!361656 (toList!6803 lm!2473))))))

(declare-fun e!2988705 () V!15890)

(assert (=> d!1531274 (= (getValue!58 (t!361656 (toList!6803 lm!2473)) key!5896) e!2988705)))

(declare-fun b!4786723 () Bool)

(assert (=> b!4786723 (= e!2988706 (containsKey!3865 (_2!31603 (h!60504 (t!361656 (toList!6803 lm!2473)))) key!5896))))

(declare-fun b!4786721 () Bool)

(assert (=> b!4786721 (= e!2988705 (_2!31602 (get!18416 (getPair!834 (_2!31603 (h!60504 (t!361656 (toList!6803 lm!2473)))) key!5896))))))

(declare-fun b!4786722 () Bool)

(assert (=> b!4786722 (= e!2988705 (getValue!58 (t!361656 (t!361656 (toList!6803 lm!2473))) key!5896))))

(assert (= (and d!1531274 res!2033435) b!4786723))

(assert (= (and d!1531274 c!815956) b!4786721))

(assert (= (and d!1531274 (not c!815956)) b!4786722))

(declare-fun m!5765924 () Bool)

(assert (=> b!4786723 m!5765924))

(declare-fun m!5765926 () Bool)

(assert (=> b!4786721 m!5765926))

(assert (=> b!4786721 m!5765926))

(declare-fun m!5765928 () Bool)

(assert (=> b!4786721 m!5765928))

(declare-fun m!5765930 () Bool)

(assert (=> b!4786722 m!5765930))

(assert (=> b!4786436 d!1531274))

(declare-fun d!1531276 () Bool)

(declare-fun res!2033436 () Bool)

(declare-fun e!2988707 () Bool)

(assert (=> d!1531276 (=> res!2033436 e!2988707)))

(assert (=> d!1531276 (= res!2033436 ((_ is Nil!54082) (t!361656 (toList!6803 lm!2473))))))

(assert (=> d!1531276 (= (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229295) e!2988707)))

(declare-fun b!4786724 () Bool)

(declare-fun e!2988708 () Bool)

(assert (=> b!4786724 (= e!2988707 e!2988708)))

(declare-fun res!2033437 () Bool)

(assert (=> b!4786724 (=> (not res!2033437) (not e!2988708))))

(assert (=> b!4786724 (= res!2033437 (dynLambda!22036 lambda!229295 (h!60504 (t!361656 (toList!6803 lm!2473)))))))

(declare-fun b!4786725 () Bool)

(assert (=> b!4786725 (= e!2988708 (forall!12166 (t!361656 (t!361656 (toList!6803 lm!2473))) lambda!229295))))

(assert (= (and d!1531276 (not res!2033436)) b!4786724))

(assert (= (and b!4786724 res!2033437) b!4786725))

(declare-fun b_lambda!186261 () Bool)

(assert (=> (not b_lambda!186261) (not b!4786724)))

(declare-fun m!5765932 () Bool)

(assert (=> b!4786724 m!5765932))

(declare-fun m!5765934 () Bool)

(assert (=> b!4786725 m!5765934))

(assert (=> b!4786407 d!1531276))

(declare-fun d!1531278 () Bool)

(declare-fun isEmpty!29395 (Option!13006) Bool)

(assert (=> d!1531278 (= (isDefined!10148 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449)) (not (isEmpty!29395 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449))))))

(declare-fun bs!1153659 () Bool)

(assert (= bs!1153659 d!1531278))

(assert (=> bs!1153659 m!5765530))

(declare-fun m!5765936 () Bool)

(assert (=> bs!1153659 m!5765936))

(assert (=> b!4786416 d!1531278))

(assert (=> b!4786416 d!1531208))

(declare-fun d!1531280 () Bool)

(declare-fun res!2033442 () Bool)

(declare-fun e!2988713 () Bool)

(assert (=> d!1531280 (=> res!2033442 e!2988713)))

(assert (=> d!1531280 (= res!2033442 (and ((_ is Cons!54081) (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (= (_1!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) key!5896)))))

(assert (=> d!1531280 (= (containsKey!3868 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896) e!2988713)))

(declare-fun b!4786730 () Bool)

(declare-fun e!2988714 () Bool)

(assert (=> b!4786730 (= e!2988713 e!2988714)))

(declare-fun res!2033443 () Bool)

(assert (=> b!4786730 (=> (not res!2033443) (not e!2988714))))

(assert (=> b!4786730 (= res!2033443 ((_ is Cons!54081) (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))

(declare-fun b!4786731 () Bool)

(assert (=> b!4786731 (= e!2988714 (containsKey!3868 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) key!5896))))

(assert (= (and d!1531280 (not res!2033442)) b!4786730))

(assert (= (and b!4786730 res!2033443) b!4786731))

(declare-fun m!5765938 () Bool)

(assert (=> b!4786731 m!5765938))

(assert (=> d!1531050 d!1531280))

(declare-fun d!1531282 () Bool)

(declare-fun isEmpty!29396 (Option!13005) Bool)

(assert (=> d!1531282 (= (isDefined!10147 (getValueByKey!2318 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896)) (not (isEmpty!29396 (getValueByKey!2318 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))))

(declare-fun bs!1153660 () Bool)

(assert (= bs!1153660 d!1531282))

(assert (=> bs!1153660 m!5765430))

(declare-fun m!5765940 () Bool)

(assert (=> bs!1153660 m!5765940))

(assert (=> b!4786319 d!1531282))

(declare-fun b!4786742 () Bool)

(declare-fun e!2988720 () Option!13005)

(assert (=> b!4786742 (= e!2988720 (getValueByKey!2318 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) key!5896))))

(declare-fun b!4786740 () Bool)

(declare-fun e!2988719 () Option!13005)

(assert (=> b!4786740 (= e!2988719 (Some!13004 (_2!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))))

(declare-fun b!4786741 () Bool)

(assert (=> b!4786741 (= e!2988719 e!2988720)))

(declare-fun c!815962 () Bool)

(assert (=> b!4786741 (= c!815962 (and ((_ is Cons!54081) (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (not (= (_1!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) key!5896))))))

(declare-fun d!1531284 () Bool)

(declare-fun c!815961 () Bool)

(assert (=> d!1531284 (= c!815961 (and ((_ is Cons!54081) (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (= (_1!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) key!5896)))))

(assert (=> d!1531284 (= (getValueByKey!2318 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896) e!2988719)))

(declare-fun b!4786743 () Bool)

(assert (=> b!4786743 (= e!2988720 None!13004)))

(assert (= (and d!1531284 c!815961) b!4786740))

(assert (= (and d!1531284 (not c!815961)) b!4786741))

(assert (= (and b!4786741 c!815962) b!4786742))

(assert (= (and b!4786741 (not c!815962)) b!4786743))

(declare-fun m!5765942 () Bool)

(assert (=> b!4786742 m!5765942))

(assert (=> b!4786319 d!1531284))

(declare-fun d!1531286 () Bool)

(assert (=> d!1531286 (= (isDefined!10144 (getPair!834 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) key!5896)) (not (isEmpty!29392 (getPair!834 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) key!5896))))))

(declare-fun bs!1153661 () Bool)

(assert (= bs!1153661 d!1531286))

(assert (=> bs!1153661 m!5765560))

(declare-fun m!5765944 () Bool)

(assert (=> bs!1153661 m!5765944))

(assert (=> b!4786428 d!1531286))

(declare-fun b!4786744 () Bool)

(declare-fun e!2988723 () Option!13002)

(assert (=> b!4786744 (= e!2988723 None!13001)))

(declare-fun d!1531288 () Bool)

(declare-fun e!2988724 () Bool)

(assert (=> d!1531288 e!2988724))

(declare-fun res!2033447 () Bool)

(assert (=> d!1531288 (=> res!2033447 e!2988724)))

(declare-fun e!2988721 () Bool)

(assert (=> d!1531288 (= res!2033447 e!2988721)))

(declare-fun res!2033445 () Bool)

(assert (=> d!1531288 (=> (not res!2033445) (not e!2988721))))

(declare-fun lt!1947755 () Option!13002)

(assert (=> d!1531288 (= res!2033445 (isEmpty!29392 lt!1947755))))

(declare-fun e!2988722 () Option!13002)

(assert (=> d!1531288 (= lt!1947755 e!2988722)))

(declare-fun c!815964 () Bool)

(assert (=> d!1531288 (= c!815964 (and ((_ is Cons!54081) (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896))) (= (_1!31602 (h!60503 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)))) key!5896)))))

(assert (=> d!1531288 (noDuplicateKeys!2310 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)))))

(assert (=> d!1531288 (= (getPair!834 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) key!5896) lt!1947755)))

(declare-fun b!4786745 () Bool)

(declare-fun res!2033444 () Bool)

(declare-fun e!2988725 () Bool)

(assert (=> b!4786745 (=> (not res!2033444) (not e!2988725))))

(assert (=> b!4786745 (= res!2033444 (= (_1!31602 (get!18416 lt!1947755)) key!5896))))

(declare-fun b!4786746 () Bool)

(assert (=> b!4786746 (= e!2988722 e!2988723)))

(declare-fun c!815963 () Bool)

(assert (=> b!4786746 (= c!815963 ((_ is Cons!54081) (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896))))))

(declare-fun b!4786747 () Bool)

(assert (=> b!4786747 (= e!2988721 (not (containsKey!3865 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) key!5896)))))

(declare-fun b!4786748 () Bool)

(assert (=> b!4786748 (= e!2988725 (contains!17662 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) (get!18416 lt!1947755)))))

(declare-fun b!4786749 () Bool)

(assert (=> b!4786749 (= e!2988722 (Some!13001 (h!60503 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)))))))

(declare-fun b!4786750 () Bool)

(assert (=> b!4786750 (= e!2988723 (getPair!834 (t!361655 (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896))) key!5896))))

(declare-fun b!4786751 () Bool)

(assert (=> b!4786751 (= e!2988724 e!2988725)))

(declare-fun res!2033446 () Bool)

(assert (=> b!4786751 (=> (not res!2033446) (not e!2988725))))

(assert (=> b!4786751 (= res!2033446 (isDefined!10144 lt!1947755))))

(assert (= (and d!1531288 c!815964) b!4786749))

(assert (= (and d!1531288 (not c!815964)) b!4786746))

(assert (= (and b!4786746 c!815963) b!4786750))

(assert (= (and b!4786746 (not c!815963)) b!4786744))

(assert (= (and d!1531288 res!2033445) b!4786747))

(assert (= (and d!1531288 (not res!2033447)) b!4786751))

(assert (= (and b!4786751 res!2033446) b!4786745))

(assert (= (and b!4786745 res!2033444) b!4786748))

(declare-fun m!5765946 () Bool)

(assert (=> b!4786745 m!5765946))

(assert (=> b!4786748 m!5765946))

(assert (=> b!4786748 m!5765558))

(assert (=> b!4786748 m!5765946))

(declare-fun m!5765948 () Bool)

(assert (=> b!4786748 m!5765948))

(assert (=> b!4786747 m!5765558))

(declare-fun m!5765950 () Bool)

(assert (=> b!4786747 m!5765950))

(declare-fun m!5765952 () Bool)

(assert (=> b!4786750 m!5765952))

(declare-fun m!5765954 () Bool)

(assert (=> d!1531288 m!5765954))

(assert (=> d!1531288 m!5765558))

(declare-fun m!5765956 () Bool)

(assert (=> d!1531288 m!5765956))

(declare-fun m!5765958 () Bool)

(assert (=> b!4786751 m!5765958))

(assert (=> b!4786428 d!1531288))

(declare-fun d!1531290 () Bool)

(assert (=> d!1531290 (= (apply!12917 lm!2473 (hash!4881 hashF!1559 key!5896)) (get!18417 (getValueByKey!2319 (toList!6803 lm!2473) (hash!4881 hashF!1559 key!5896))))))

(declare-fun bs!1153662 () Bool)

(assert (= bs!1153662 d!1531290))

(assert (=> bs!1153662 m!5765330))

(assert (=> bs!1153662 m!5765666))

(assert (=> bs!1153662 m!5765666))

(declare-fun m!5765960 () Bool)

(assert (=> bs!1153662 m!5765960))

(assert (=> b!4786428 d!1531290))

(assert (=> b!4786428 d!1531106))

(assert (=> d!1531100 d!1531098))

(declare-fun d!1531292 () Bool)

(assert (=> d!1531292 (containsKeyBiggerList!512 (toList!6803 lm!2473) key!5896)))

(assert (=> d!1531292 true))

(declare-fun _$33!796 () Unit!139522)

(assert (=> d!1531292 (= (choose!34409 lm!2473 key!5896 hashF!1559) _$33!796)))

(declare-fun bs!1153663 () Bool)

(assert (= bs!1153663 d!1531292))

(assert (=> bs!1153663 m!5765328))

(assert (=> d!1531100 d!1531292))

(declare-fun d!1531294 () Bool)

(declare-fun res!2033448 () Bool)

(declare-fun e!2988726 () Bool)

(assert (=> d!1531294 (=> res!2033448 e!2988726)))

(assert (=> d!1531294 (= res!2033448 ((_ is Nil!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531294 (= (forall!12166 (toList!6803 lm!2473) lambda!229318) e!2988726)))

(declare-fun b!4786752 () Bool)

(declare-fun e!2988727 () Bool)

(assert (=> b!4786752 (= e!2988726 e!2988727)))

(declare-fun res!2033449 () Bool)

(assert (=> b!4786752 (=> (not res!2033449) (not e!2988727))))

(assert (=> b!4786752 (= res!2033449 (dynLambda!22036 lambda!229318 (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786753 () Bool)

(assert (=> b!4786753 (= e!2988727 (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229318))))

(assert (= (and d!1531294 (not res!2033448)) b!4786752))

(assert (= (and b!4786752 res!2033449) b!4786753))

(declare-fun b_lambda!186263 () Bool)

(assert (=> (not b_lambda!186263) (not b!4786752)))

(declare-fun m!5765962 () Bool)

(assert (=> b!4786752 m!5765962))

(declare-fun m!5765964 () Bool)

(assert (=> b!4786753 m!5765964))

(assert (=> d!1531100 d!1531294))

(assert (=> b!4786320 d!1531280))

(declare-fun d!1531296 () Bool)

(assert (=> d!1531296 (containsKey!3868 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896)))

(declare-fun lt!1947758 () Unit!139522)

(declare-fun choose!34417 (List!54205 K!15644) Unit!139522)

(assert (=> d!1531296 (= lt!1947758 (choose!34417 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(assert (=> d!1531296 (invariantList!1713 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))

(assert (=> d!1531296 (= (lemmaInGetKeysListThenContainsKey!1059 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896) lt!1947758)))

(declare-fun bs!1153664 () Bool)

(assert (= bs!1153664 d!1531296))

(assert (=> bs!1153664 m!5765442))

(declare-fun m!5765966 () Bool)

(assert (=> bs!1153664 m!5765966))

(declare-fun m!5765968 () Bool)

(assert (=> bs!1153664 m!5765968))

(assert (=> b!4786320 d!1531296))

(declare-fun lt!1947761 () Bool)

(declare-fun d!1531298 () Bool)

(declare-fun content!9682 (List!54205) (InoxSet tuple2!56616))

(assert (=> d!1531298 (= lt!1947761 (select (content!9682 (_2!31603 (h!60504 (toList!6803 lm!2473)))) (tuple2!56617 key!5896 value!3111)))))

(declare-fun e!2988733 () Bool)

(assert (=> d!1531298 (= lt!1947761 e!2988733)))

(declare-fun res!2033455 () Bool)

(assert (=> d!1531298 (=> (not res!2033455) (not e!2988733))))

(assert (=> d!1531298 (= res!2033455 ((_ is Cons!54081) (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(assert (=> d!1531298 (= (contains!17662 (_2!31603 (h!60504 (toList!6803 lm!2473))) (tuple2!56617 key!5896 value!3111)) lt!1947761)))

(declare-fun b!4786758 () Bool)

(declare-fun e!2988732 () Bool)

(assert (=> b!4786758 (= e!2988733 e!2988732)))

(declare-fun res!2033454 () Bool)

(assert (=> b!4786758 (=> res!2033454 e!2988732)))

(assert (=> b!4786758 (= res!2033454 (= (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473)))) (tuple2!56617 key!5896 value!3111)))))

(declare-fun b!4786759 () Bool)

(assert (=> b!4786759 (= e!2988732 (contains!17662 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))) (tuple2!56617 key!5896 value!3111)))))

(assert (= (and d!1531298 res!2033455) b!4786758))

(assert (= (and b!4786758 (not res!2033454)) b!4786759))

(declare-fun m!5765970 () Bool)

(assert (=> d!1531298 m!5765970))

(declare-fun m!5765972 () Bool)

(assert (=> d!1531298 m!5765972))

(declare-fun m!5765974 () Bool)

(assert (=> b!4786759 m!5765974))

(assert (=> b!4786249 d!1531298))

(declare-fun d!1531300 () Bool)

(assert (=> d!1531300 (dynLambda!22035 lambda!229297 (tuple2!56617 key!5896 value!3111))))

(assert (=> d!1531300 true))

(declare-fun _$7!2377 () Unit!139522)

(assert (=> d!1531300 (= (choose!34405 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229297 (tuple2!56617 key!5896 value!3111)) _$7!2377)))

(declare-fun b_lambda!186265 () Bool)

(assert (=> (not b_lambda!186265) (not d!1531300)))

(declare-fun bs!1153665 () Bool)

(assert (= bs!1153665 d!1531300))

(assert (=> bs!1153665 m!5765372))

(assert (=> d!1531036 d!1531300))

(declare-fun d!1531302 () Bool)

(declare-fun res!2033460 () Bool)

(declare-fun e!2988738 () Bool)

(assert (=> d!1531302 (=> res!2033460 e!2988738)))

(assert (=> d!1531302 (= res!2033460 ((_ is Nil!54081) (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(assert (=> d!1531302 (= (forall!12167 (_2!31603 (h!60504 (toList!6803 lm!2473))) lambda!229297) e!2988738)))

(declare-fun b!4786764 () Bool)

(declare-fun e!2988739 () Bool)

(assert (=> b!4786764 (= e!2988738 e!2988739)))

(declare-fun res!2033461 () Bool)

(assert (=> b!4786764 (=> (not res!2033461) (not e!2988739))))

(assert (=> b!4786764 (= res!2033461 (dynLambda!22035 lambda!229297 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(declare-fun b!4786765 () Bool)

(assert (=> b!4786765 (= e!2988739 (forall!12167 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))) lambda!229297))))

(assert (= (and d!1531302 (not res!2033460)) b!4786764))

(assert (= (and b!4786764 res!2033461) b!4786765))

(declare-fun b_lambda!186267 () Bool)

(assert (=> (not b_lambda!186267) (not b!4786764)))

(declare-fun m!5765976 () Bool)

(assert (=> b!4786764 m!5765976))

(declare-fun m!5765978 () Bool)

(assert (=> b!4786765 m!5765978))

(assert (=> d!1531036 d!1531302))

(declare-fun d!1531304 () Bool)

(assert (=> d!1531304 (= (isEmpty!29392 (getPair!834 (apply!12917 lm!2473 lt!1947449) key!5896)) (not ((_ is Some!13001) (getPair!834 (apply!12917 lm!2473 lt!1947449) key!5896))))))

(assert (=> d!1531086 d!1531304))

(declare-fun d!1531306 () Bool)

(declare-fun res!2033466 () Bool)

(declare-fun e!2988744 () Bool)

(assert (=> d!1531306 (=> res!2033466 e!2988744)))

(assert (=> d!1531306 (= res!2033466 (and ((_ is Cons!54082) (toList!6803 lm!2473)) (= (_1!31603 (h!60504 (toList!6803 lm!2473))) lt!1947449)))))

(assert (=> d!1531306 (= (containsKey!3869 (toList!6803 lm!2473) lt!1947449) e!2988744)))

(declare-fun b!4786770 () Bool)

(declare-fun e!2988745 () Bool)

(assert (=> b!4786770 (= e!2988744 e!2988745)))

(declare-fun res!2033467 () Bool)

(assert (=> b!4786770 (=> (not res!2033467) (not e!2988745))))

(assert (=> b!4786770 (= res!2033467 (and (or (not ((_ is Cons!54082) (toList!6803 lm!2473))) (bvsle (_1!31603 (h!60504 (toList!6803 lm!2473))) lt!1947449)) ((_ is Cons!54082) (toList!6803 lm!2473)) (bvslt (_1!31603 (h!60504 (toList!6803 lm!2473))) lt!1947449)))))

(declare-fun b!4786771 () Bool)

(assert (=> b!4786771 (= e!2988745 (containsKey!3869 (t!361656 (toList!6803 lm!2473)) lt!1947449))))

(assert (= (and d!1531306 (not res!2033466)) b!4786770))

(assert (= (and b!4786770 res!2033467) b!4786771))

(declare-fun m!5765980 () Bool)

(assert (=> b!4786771 m!5765980))

(assert (=> d!1531096 d!1531306))

(assert (=> b!4786315 d!1531218))

(assert (=> b!4786315 d!1531226))

(declare-fun d!1531308 () Bool)

(assert (=> d!1531308 (= (hash!4881 hashF!1559 (_1!31602 (tuple2!56617 key!5896 value!3111))) (hash!4883 hashF!1559 (_1!31602 (tuple2!56617 key!5896 value!3111))))))

(declare-fun bs!1153666 () Bool)

(assert (= bs!1153666 d!1531308))

(declare-fun m!5765982 () Bool)

(assert (=> bs!1153666 m!5765982))

(assert (=> bs!1153595 d!1531308))

(declare-fun d!1531310 () Bool)

(declare-fun lt!1947762 () Bool)

(assert (=> d!1531310 (= lt!1947762 (select (content!9682 (apply!12917 lm!2473 lt!1947449)) (get!18416 lt!1947543)))))

(declare-fun e!2988747 () Bool)

(assert (=> d!1531310 (= lt!1947762 e!2988747)))

(declare-fun res!2033469 () Bool)

(assert (=> d!1531310 (=> (not res!2033469) (not e!2988747))))

(assert (=> d!1531310 (= res!2033469 ((_ is Cons!54081) (apply!12917 lm!2473 lt!1947449)))))

(assert (=> d!1531310 (= (contains!17662 (apply!12917 lm!2473 lt!1947449) (get!18416 lt!1947543)) lt!1947762)))

(declare-fun b!4786772 () Bool)

(declare-fun e!2988746 () Bool)

(assert (=> b!4786772 (= e!2988747 e!2988746)))

(declare-fun res!2033468 () Bool)

(assert (=> b!4786772 (=> res!2033468 e!2988746)))

(assert (=> b!4786772 (= res!2033468 (= (h!60503 (apply!12917 lm!2473 lt!1947449)) (get!18416 lt!1947543)))))

(declare-fun b!4786773 () Bool)

(assert (=> b!4786773 (= e!2988746 (contains!17662 (t!361655 (apply!12917 lm!2473 lt!1947449)) (get!18416 lt!1947543)))))

(assert (= (and d!1531310 res!2033469) b!4786772))

(assert (= (and b!4786772 (not res!2033468)) b!4786773))

(assert (=> d!1531310 m!5765314))

(declare-fun m!5765984 () Bool)

(assert (=> d!1531310 m!5765984))

(assert (=> d!1531310 m!5765516))

(declare-fun m!5765986 () Bool)

(assert (=> d!1531310 m!5765986))

(assert (=> b!4786773 m!5765516))

(declare-fun m!5765988 () Bool)

(assert (=> b!4786773 m!5765988))

(assert (=> b!4786398 d!1531310))

(assert (=> b!4786398 d!1531200))

(declare-fun d!1531312 () Bool)

(declare-fun res!2033470 () Bool)

(declare-fun e!2988748 () Bool)

(assert (=> d!1531312 (=> res!2033470 e!2988748)))

(assert (=> d!1531312 (= res!2033470 (and ((_ is Cons!54081) (apply!12917 lm!2473 lt!1947449)) (= (_1!31602 (h!60503 (apply!12917 lm!2473 lt!1947449))) key!5896)))))

(assert (=> d!1531312 (= (containsKey!3865 (apply!12917 lm!2473 lt!1947449) key!5896) e!2988748)))

(declare-fun b!4786774 () Bool)

(declare-fun e!2988749 () Bool)

(assert (=> b!4786774 (= e!2988748 e!2988749)))

(declare-fun res!2033471 () Bool)

(assert (=> b!4786774 (=> (not res!2033471) (not e!2988749))))

(assert (=> b!4786774 (= res!2033471 ((_ is Cons!54081) (apply!12917 lm!2473 lt!1947449)))))

(declare-fun b!4786775 () Bool)

(assert (=> b!4786775 (= e!2988749 (containsKey!3865 (t!361655 (apply!12917 lm!2473 lt!1947449)) key!5896))))

(assert (= (and d!1531312 (not res!2033470)) b!4786774))

(assert (= (and b!4786774 res!2033471) b!4786775))

(declare-fun m!5765990 () Bool)

(assert (=> b!4786775 m!5765990))

(assert (=> b!4786397 d!1531312))

(declare-fun d!1531314 () Bool)

(assert (=> d!1531314 (dynLambda!22036 lambda!229296 (h!60504 (toList!6803 lm!2473)))))

(assert (=> d!1531314 true))

(declare-fun _$7!2380 () Unit!139522)

(assert (=> d!1531314 (= (choose!34406 (toList!6803 lm!2473) lambda!229296 (h!60504 (toList!6803 lm!2473))) _$7!2380)))

(declare-fun b_lambda!186269 () Bool)

(assert (=> (not b_lambda!186269) (not d!1531314)))

(declare-fun bs!1153667 () Bool)

(assert (= bs!1153667 d!1531314))

(assert (=> bs!1153667 m!5765380))

(assert (=> d!1531042 d!1531314))

(declare-fun d!1531316 () Bool)

(declare-fun res!2033472 () Bool)

(declare-fun e!2988750 () Bool)

(assert (=> d!1531316 (=> res!2033472 e!2988750)))

(assert (=> d!1531316 (= res!2033472 ((_ is Nil!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531316 (= (forall!12166 (toList!6803 lm!2473) lambda!229296) e!2988750)))

(declare-fun b!4786776 () Bool)

(declare-fun e!2988751 () Bool)

(assert (=> b!4786776 (= e!2988750 e!2988751)))

(declare-fun res!2033473 () Bool)

(assert (=> b!4786776 (=> (not res!2033473) (not e!2988751))))

(assert (=> b!4786776 (= res!2033473 (dynLambda!22036 lambda!229296 (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786777 () Bool)

(assert (=> b!4786777 (= e!2988751 (forall!12166 (t!361656 (toList!6803 lm!2473)) lambda!229296))))

(assert (= (and d!1531316 (not res!2033472)) b!4786776))

(assert (= (and b!4786776 res!2033473) b!4786777))

(declare-fun b_lambda!186271 () Bool)

(assert (=> (not b_lambda!186271) (not b!4786776)))

(assert (=> b!4786776 m!5765380))

(declare-fun m!5765992 () Bool)

(assert (=> b!4786777 m!5765992))

(assert (=> d!1531042 d!1531316))

(declare-fun d!1531318 () Bool)

(assert (=> d!1531318 (= (isEmpty!29390 (toList!6803 lm!2473)) ((_ is Nil!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531034 d!1531318))

(declare-fun d!1531320 () Bool)

(declare-fun lt!1947765 () Bool)

(declare-fun content!9683 (List!54206) (InoxSet tuple2!56618))

(assert (=> d!1531320 (= lt!1947765 (select (content!9683 (toList!6803 lm!2473)) (h!60504 (toList!6803 lm!2473))))))

(declare-fun e!2988757 () Bool)

(assert (=> d!1531320 (= lt!1947765 e!2988757)))

(declare-fun res!2033479 () Bool)

(assert (=> d!1531320 (=> (not res!2033479) (not e!2988757))))

(assert (=> d!1531320 (= res!2033479 ((_ is Cons!54082) (toList!6803 lm!2473)))))

(assert (=> d!1531320 (= (contains!17663 (toList!6803 lm!2473) (h!60504 (toList!6803 lm!2473))) lt!1947765)))

(declare-fun b!4786782 () Bool)

(declare-fun e!2988756 () Bool)

(assert (=> b!4786782 (= e!2988757 e!2988756)))

(declare-fun res!2033478 () Bool)

(assert (=> b!4786782 (=> res!2033478 e!2988756)))

(assert (=> b!4786782 (= res!2033478 (= (h!60504 (toList!6803 lm!2473)) (h!60504 (toList!6803 lm!2473))))))

(declare-fun b!4786783 () Bool)

(assert (=> b!4786783 (= e!2988756 (contains!17663 (t!361656 (toList!6803 lm!2473)) (h!60504 (toList!6803 lm!2473))))))

(assert (= (and d!1531320 res!2033479) b!4786782))

(assert (= (and b!4786782 (not res!2033478)) b!4786783))

(declare-fun m!5765994 () Bool)

(assert (=> d!1531320 m!5765994))

(declare-fun m!5765996 () Bool)

(assert (=> d!1531320 m!5765996))

(declare-fun m!5765998 () Bool)

(assert (=> b!4786783 m!5765998))

(assert (=> b!4786258 d!1531320))

(declare-fun d!1531322 () Bool)

(assert (=> d!1531322 (isDefined!10147 (getValueByKey!2318 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(declare-fun lt!1947768 () Unit!139522)

(declare-fun choose!34418 (List!54205 K!15644) Unit!139522)

(assert (=> d!1531322 (= lt!1947768 (choose!34418 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(assert (=> d!1531322 (invariantList!1713 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))

(assert (=> d!1531322 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2110 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896) lt!1947768)))

(declare-fun bs!1153668 () Bool)

(assert (= bs!1153668 d!1531322))

(assert (=> bs!1153668 m!5765430))

(assert (=> bs!1153668 m!5765430))

(assert (=> bs!1153668 m!5765432))

(declare-fun m!5766000 () Bool)

(assert (=> bs!1153668 m!5766000))

(assert (=> bs!1153668 m!5765968))

(assert (=> b!4786316 d!1531322))

(assert (=> b!4786316 d!1531282))

(assert (=> b!4786316 d!1531284))

(declare-fun d!1531324 () Bool)

(assert (=> d!1531324 (contains!17665 (getKeysList!1059 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) key!5896)))

(declare-fun lt!1947771 () Unit!139522)

(declare-fun choose!34419 (List!54205 K!15644) Unit!139522)

(assert (=> d!1531324 (= lt!1947771 (choose!34419 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896))))

(assert (=> d!1531324 (invariantList!1713 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))

(assert (=> d!1531324 (= (lemmaInListThenGetKeysListContains!1054 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) key!5896) lt!1947771)))

(declare-fun bs!1153669 () Bool)

(assert (= bs!1153669 d!1531324))

(assert (=> bs!1153669 m!5765446))

(assert (=> bs!1153669 m!5765446))

(declare-fun m!5766002 () Bool)

(assert (=> bs!1153669 m!5766002))

(declare-fun m!5766004 () Bool)

(assert (=> bs!1153669 m!5766004))

(assert (=> bs!1153669 m!5765968))

(assert (=> b!4786316 d!1531324))

(declare-fun d!1531326 () Bool)

(declare-fun res!2033484 () Bool)

(declare-fun e!2988762 () Bool)

(assert (=> d!1531326 (=> res!2033484 e!2988762)))

(assert (=> d!1531326 (= res!2033484 (or ((_ is Nil!54082) (toList!6803 lm!2473)) ((_ is Nil!54082) (t!361656 (toList!6803 lm!2473)))))))

(assert (=> d!1531326 (= (isStrictlySorted!861 (toList!6803 lm!2473)) e!2988762)))

(declare-fun b!4786788 () Bool)

(declare-fun e!2988763 () Bool)

(assert (=> b!4786788 (= e!2988762 e!2988763)))

(declare-fun res!2033485 () Bool)

(assert (=> b!4786788 (=> (not res!2033485) (not e!2988763))))

(assert (=> b!4786788 (= res!2033485 (bvslt (_1!31603 (h!60504 (toList!6803 lm!2473))) (_1!31603 (h!60504 (t!361656 (toList!6803 lm!2473))))))))

(declare-fun b!4786789 () Bool)

(assert (=> b!4786789 (= e!2988763 (isStrictlySorted!861 (t!361656 (toList!6803 lm!2473))))))

(assert (= (and d!1531326 (not res!2033484)) b!4786788))

(assert (= (and b!4786788 res!2033485) b!4786789))

(declare-fun m!5766006 () Bool)

(assert (=> b!4786789 m!5766006))

(assert (=> d!1531094 d!1531326))

(assert (=> b!4786423 d!1531044))

(declare-fun d!1531328 () Bool)

(declare-fun res!2033488 () Bool)

(declare-fun e!2988764 () Bool)

(assert (=> d!1531328 (=> res!2033488 e!2988764)))

(declare-fun e!2988766 () Bool)

(assert (=> d!1531328 (= res!2033488 e!2988766)))

(declare-fun res!2033487 () Bool)

(assert (=> d!1531328 (=> (not res!2033487) (not e!2988766))))

(assert (=> d!1531328 (= res!2033487 ((_ is Cons!54082) (t!361656 (toList!6803 lm!2473))))))

(assert (=> d!1531328 (= (containsKeyBiggerList!512 (t!361656 (toList!6803 lm!2473)) key!5896) e!2988764)))

(declare-fun b!4786790 () Bool)

(assert (=> b!4786790 (= e!2988766 (containsKey!3865 (_2!31603 (h!60504 (t!361656 (toList!6803 lm!2473)))) key!5896))))

(declare-fun b!4786791 () Bool)

(declare-fun e!2988765 () Bool)

(assert (=> b!4786791 (= e!2988764 e!2988765)))

(declare-fun res!2033486 () Bool)

(assert (=> b!4786791 (=> (not res!2033486) (not e!2988765))))

(assert (=> b!4786791 (= res!2033486 ((_ is Cons!54082) (t!361656 (toList!6803 lm!2473))))))

(declare-fun b!4786792 () Bool)

(assert (=> b!4786792 (= e!2988765 (containsKeyBiggerList!512 (t!361656 (t!361656 (toList!6803 lm!2473))) key!5896))))

(assert (= (and d!1531328 res!2033487) b!4786790))

(assert (= (and d!1531328 (not res!2033488)) b!4786791))

(assert (= (and b!4786791 res!2033486) b!4786792))

(assert (=> b!4786790 m!5765924))

(declare-fun m!5766008 () Bool)

(assert (=> b!4786792 m!5766008))

(assert (=> b!4786425 d!1531328))

(declare-fun d!1531330 () Bool)

(declare-fun lt!1947772 () Bool)

(assert (=> d!1531330 (= lt!1947772 (select (content!9680 e!2988427) key!5896))))

(declare-fun e!2988768 () Bool)

(assert (=> d!1531330 (= lt!1947772 e!2988768)))

(declare-fun res!2033489 () Bool)

(assert (=> d!1531330 (=> (not res!2033489) (not e!2988768))))

(assert (=> d!1531330 (= res!2033489 ((_ is Cons!54084) e!2988427))))

(assert (=> d!1531330 (= (contains!17665 e!2988427 key!5896) lt!1947772)))

(declare-fun b!4786793 () Bool)

(declare-fun e!2988767 () Bool)

(assert (=> b!4786793 (= e!2988768 e!2988767)))

(declare-fun res!2033490 () Bool)

(assert (=> b!4786793 (=> res!2033490 e!2988767)))

(assert (=> b!4786793 (= res!2033490 (= (h!60506 e!2988427) key!5896))))

(declare-fun b!4786794 () Bool)

(assert (=> b!4786794 (= e!2988767 (contains!17665 (t!361658 e!2988427) key!5896))))

(assert (= (and d!1531330 res!2033489) b!4786793))

(assert (= (and b!4786793 (not res!2033490)) b!4786794))

(declare-fun m!5766010 () Bool)

(assert (=> d!1531330 m!5766010))

(declare-fun m!5766012 () Bool)

(assert (=> d!1531330 m!5766012))

(declare-fun m!5766014 () Bool)

(assert (=> b!4786794 m!5766014))

(assert (=> bm!334854 d!1531330))

(declare-fun b!4786795 () Bool)

(declare-fun e!2988771 () Option!13002)

(assert (=> b!4786795 (= e!2988771 None!13001)))

(declare-fun d!1531332 () Bool)

(declare-fun e!2988772 () Bool)

(assert (=> d!1531332 e!2988772))

(declare-fun res!2033494 () Bool)

(assert (=> d!1531332 (=> res!2033494 e!2988772)))

(declare-fun e!2988769 () Bool)

(assert (=> d!1531332 (= res!2033494 e!2988769)))

(declare-fun res!2033492 () Bool)

(assert (=> d!1531332 (=> (not res!2033492) (not e!2988769))))

(declare-fun lt!1947773 () Option!13002)

(assert (=> d!1531332 (= res!2033492 (isEmpty!29392 lt!1947773))))

(declare-fun e!2988770 () Option!13002)

(assert (=> d!1531332 (= lt!1947773 e!2988770)))

(declare-fun c!815966 () Bool)

(assert (=> d!1531332 (= c!815966 (and ((_ is Cons!54081) (t!361655 (apply!12917 lm!2473 lt!1947449))) (= (_1!31602 (h!60503 (t!361655 (apply!12917 lm!2473 lt!1947449)))) key!5896)))))

(assert (=> d!1531332 (noDuplicateKeys!2310 (t!361655 (apply!12917 lm!2473 lt!1947449)))))

(assert (=> d!1531332 (= (getPair!834 (t!361655 (apply!12917 lm!2473 lt!1947449)) key!5896) lt!1947773)))

(declare-fun b!4786796 () Bool)

(declare-fun res!2033491 () Bool)

(declare-fun e!2988773 () Bool)

(assert (=> b!4786796 (=> (not res!2033491) (not e!2988773))))

(assert (=> b!4786796 (= res!2033491 (= (_1!31602 (get!18416 lt!1947773)) key!5896))))

(declare-fun b!4786797 () Bool)

(assert (=> b!4786797 (= e!2988770 e!2988771)))

(declare-fun c!815965 () Bool)

(assert (=> b!4786797 (= c!815965 ((_ is Cons!54081) (t!361655 (apply!12917 lm!2473 lt!1947449))))))

(declare-fun b!4786798 () Bool)

(assert (=> b!4786798 (= e!2988769 (not (containsKey!3865 (t!361655 (apply!12917 lm!2473 lt!1947449)) key!5896)))))

(declare-fun b!4786799 () Bool)

(assert (=> b!4786799 (= e!2988773 (contains!17662 (t!361655 (apply!12917 lm!2473 lt!1947449)) (get!18416 lt!1947773)))))

(declare-fun b!4786800 () Bool)

(assert (=> b!4786800 (= e!2988770 (Some!13001 (h!60503 (t!361655 (apply!12917 lm!2473 lt!1947449)))))))

(declare-fun b!4786801 () Bool)

(assert (=> b!4786801 (= e!2988771 (getPair!834 (t!361655 (t!361655 (apply!12917 lm!2473 lt!1947449))) key!5896))))

(declare-fun b!4786802 () Bool)

(assert (=> b!4786802 (= e!2988772 e!2988773)))

(declare-fun res!2033493 () Bool)

(assert (=> b!4786802 (=> (not res!2033493) (not e!2988773))))

(assert (=> b!4786802 (= res!2033493 (isDefined!10144 lt!1947773))))

(assert (= (and d!1531332 c!815966) b!4786800))

(assert (= (and d!1531332 (not c!815966)) b!4786797))

(assert (= (and b!4786797 c!815965) b!4786801))

(assert (= (and b!4786797 (not c!815965)) b!4786795))

(assert (= (and d!1531332 res!2033492) b!4786798))

(assert (= (and d!1531332 (not res!2033494)) b!4786802))

(assert (= (and b!4786802 res!2033493) b!4786796))

(assert (= (and b!4786796 res!2033491) b!4786799))

(declare-fun m!5766016 () Bool)

(assert (=> b!4786796 m!5766016))

(assert (=> b!4786799 m!5766016))

(assert (=> b!4786799 m!5766016))

(declare-fun m!5766018 () Bool)

(assert (=> b!4786799 m!5766018))

(assert (=> b!4786798 m!5765990))

(declare-fun m!5766020 () Bool)

(assert (=> b!4786801 m!5766020))

(declare-fun m!5766022 () Bool)

(assert (=> d!1531332 m!5766022))

(assert (=> d!1531332 m!5765746))

(declare-fun m!5766024 () Bool)

(assert (=> b!4786802 m!5766024))

(assert (=> b!4786400 d!1531332))

(assert (=> b!4786318 d!1531226))

(declare-fun d!1531334 () Bool)

(declare-fun res!2033495 () Bool)

(declare-fun e!2988774 () Bool)

(assert (=> d!1531334 (=> res!2033495 e!2988774)))

(assert (=> d!1531334 (= res!2033495 (and ((_ is Cons!54081) (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473))))) (= (_1!31602 (h!60503 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))))) key!5896)))))

(assert (=> d!1531334 (= (containsKey!3865 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473)))) key!5896) e!2988774)))

(declare-fun b!4786803 () Bool)

(declare-fun e!2988775 () Bool)

(assert (=> b!4786803 (= e!2988774 e!2988775)))

(declare-fun res!2033496 () Bool)

(assert (=> b!4786803 (=> (not res!2033496) (not e!2988775))))

(assert (=> b!4786803 (= res!2033496 ((_ is Cons!54081) (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473))))))))

(declare-fun b!4786804 () Bool)

(assert (=> b!4786804 (= e!2988775 (containsKey!3865 (t!361655 (t!361655 (_2!31603 (h!60504 (toList!6803 lm!2473))))) key!5896))))

(assert (= (and d!1531334 (not res!2033495)) b!4786803))

(assert (= (and b!4786803 res!2033496) b!4786804))

(declare-fun m!5766026 () Bool)

(assert (=> b!4786804 m!5766026))

(assert (=> b!4786276 d!1531334))

(declare-fun d!1531336 () Bool)

(assert (=> d!1531336 (isDefined!10148 (getValueByKey!2319 (toList!6803 lm!2473) lt!1947449))))

(declare-fun lt!1947776 () Unit!139522)

(declare-fun choose!34420 (List!54206 (_ BitVec 64)) Unit!139522)

(assert (=> d!1531336 (= lt!1947776 (choose!34420 (toList!6803 lm!2473) lt!1947449))))

(declare-fun e!2988778 () Bool)

(assert (=> d!1531336 e!2988778))

(declare-fun res!2033499 () Bool)

(assert (=> d!1531336 (=> (not res!2033499) (not e!2988778))))

(assert (=> d!1531336 (= res!2033499 (isStrictlySorted!861 (toList!6803 lm!2473)))))

(assert (=> d!1531336 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2111 (toList!6803 lm!2473) lt!1947449) lt!1947776)))

(declare-fun b!4786807 () Bool)

(assert (=> b!4786807 (= e!2988778 (containsKey!3869 (toList!6803 lm!2473) lt!1947449))))

(assert (= (and d!1531336 res!2033499) b!4786807))

(assert (=> d!1531336 m!5765530))

(assert (=> d!1531336 m!5765530))

(assert (=> d!1531336 m!5765544))

(declare-fun m!5766028 () Bool)

(assert (=> d!1531336 m!5766028))

(assert (=> d!1531336 m!5765538))

(assert (=> b!4786807 m!5765540))

(assert (=> b!4786414 d!1531336))

(assert (=> b!4786414 d!1531278))

(assert (=> b!4786414 d!1531208))

(declare-fun bs!1153670 () Bool)

(declare-fun b!4786834 () Bool)

(assert (= bs!1153670 (and b!4786834 b!4786651)))

(declare-fun lambda!229426 () Int)

(assert (=> bs!1153670 (= (= (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (= lambda!229426 lambda!229350))))

(assert (=> b!4786834 true))

(declare-fun bs!1153671 () Bool)

(declare-fun b!4786831 () Bool)

(assert (= bs!1153671 (and b!4786831 b!4786651)))

(declare-fun lambda!229427 () Int)

(assert (=> bs!1153671 (= (= (Cons!54081 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (= lambda!229427 lambda!229350))))

(declare-fun bs!1153672 () Bool)

(assert (= bs!1153672 (and b!4786831 b!4786834)))

(assert (=> bs!1153672 (= (= (Cons!54081 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) (= lambda!229427 lambda!229426))))

(assert (=> b!4786831 true))

(declare-fun bs!1153673 () Bool)

(declare-fun b!4786830 () Bool)

(assert (= bs!1153673 (and b!4786830 b!4786651)))

(declare-fun lambda!229428 () Int)

(assert (=> bs!1153673 (= lambda!229428 lambda!229350)))

(declare-fun bs!1153674 () Bool)

(assert (= bs!1153674 (and b!4786830 b!4786834)))

(assert (=> bs!1153674 (= (= (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) (= lambda!229428 lambda!229426))))

(declare-fun bs!1153675 () Bool)

(assert (= bs!1153675 (and b!4786830 b!4786831)))

(assert (=> bs!1153675 (= (= (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) (Cons!54081 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))) (= lambda!229428 lambda!229427))))

(assert (=> b!4786830 true))

(declare-fun bs!1153676 () Bool)

(declare-fun b!4786828 () Bool)

(assert (= bs!1153676 (and b!4786828 b!4786652)))

(declare-fun lambda!229429 () Int)

(assert (=> bs!1153676 (= lambda!229429 lambda!229351)))

(declare-fun b!4786826 () Bool)

(declare-fun e!2988789 () Unit!139522)

(declare-fun Unit!139558 () Unit!139522)

(assert (=> b!4786826 (= e!2988789 Unit!139558)))

(declare-fun b!4786827 () Bool)

(declare-fun e!2988788 () List!54208)

(assert (=> b!4786827 (= e!2988788 Nil!54084)))

(declare-fun lt!1947796 () List!54208)

(declare-fun e!2988790 () Bool)

(assert (=> b!4786828 (= e!2988790 (= (content!9680 lt!1947796) (content!9680 (map!12199 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))) lambda!229429))))))

(declare-fun res!2033507 () Bool)

(assert (=> b!4786830 (=> (not res!2033507) (not e!2988790))))

(assert (=> b!4786830 (= res!2033507 (forall!12170 lt!1947796 lambda!229428))))

(assert (=> b!4786831 (= e!2988788 (Cons!54084 (_1!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) (getKeysList!1059 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))))

(declare-fun c!815975 () Bool)

(assert (=> b!4786831 (= c!815975 (containsKey!3868 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) (_1!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))))

(declare-fun lt!1947797 () Unit!139522)

(declare-fun e!2988787 () Unit!139522)

(assert (=> b!4786831 (= lt!1947797 e!2988787)))

(declare-fun c!815973 () Bool)

(assert (=> b!4786831 (= c!815973 (contains!17665 (getKeysList!1059 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) (_1!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))))

(declare-fun lt!1947791 () Unit!139522)

(assert (=> b!4786831 (= lt!1947791 e!2988789)))

(declare-fun lt!1947794 () List!54208)

(assert (=> b!4786831 (= lt!1947794 (getKeysList!1059 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))))

(declare-fun lt!1947793 () Unit!139522)

(declare-fun lemmaForallContainsAddHeadPreserves!324 (List!54205 List!54208 tuple2!56616) Unit!139522)

(assert (=> b!4786831 (= lt!1947793 (lemmaForallContainsAddHeadPreserves!324 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) lt!1947794 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))))

(assert (=> b!4786831 (forall!12170 lt!1947794 lambda!229427)))

(declare-fun lt!1947792 () Unit!139522)

(assert (=> b!4786831 (= lt!1947792 lt!1947793)))

(declare-fun b!4786832 () Bool)

(declare-fun res!2033508 () Bool)

(assert (=> b!4786832 (=> (not res!2033508) (not e!2988790))))

(assert (=> b!4786832 (= res!2033508 (= (length!670 lt!1947796) (length!671 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))))

(declare-fun b!4786833 () Bool)

(assert (=> b!4786833 false))

(declare-fun Unit!139559 () Unit!139522)

(assert (=> b!4786833 (= e!2988787 Unit!139559)))

(assert (=> b!4786834 false))

(declare-fun lt!1947795 () Unit!139522)

(declare-fun forallContained!4108 (List!54208 Int K!15644) Unit!139522)

(assert (=> b!4786834 (= lt!1947795 (forallContained!4108 (getKeysList!1059 (t!361655 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))) lambda!229426 (_1!31602 (h!60503 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))))

(declare-fun Unit!139560 () Unit!139522)

(assert (=> b!4786834 (= e!2988789 Unit!139560)))

(declare-fun d!1531338 () Bool)

(assert (=> d!1531338 e!2988790))

(declare-fun res!2033506 () Bool)

(assert (=> d!1531338 (=> (not res!2033506) (not e!2988790))))

(assert (=> d!1531338 (= res!2033506 (noDuplicate!907 lt!1947796))))

(assert (=> d!1531338 (= lt!1947796 e!2988788)))

(declare-fun c!815974 () Bool)

(assert (=> d!1531338 (= c!815974 ((_ is Cons!54081) (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))))))

(assert (=> d!1531338 (invariantList!1713 (toList!6804 (extractMap!2389 (toList!6803 lm!2473))))))

(assert (=> d!1531338 (= (getKeysList!1059 (toList!6804 (extractMap!2389 (toList!6803 lm!2473)))) lt!1947796)))

(declare-fun b!4786829 () Bool)

(declare-fun Unit!139561 () Unit!139522)

(assert (=> b!4786829 (= e!2988787 Unit!139561)))

(assert (= (and d!1531338 c!815974) b!4786831))

(assert (= (and d!1531338 (not c!815974)) b!4786827))

(assert (= (and b!4786831 c!815975) b!4786833))

(assert (= (and b!4786831 (not c!815975)) b!4786829))

(assert (= (and b!4786831 c!815973) b!4786834))

(assert (= (and b!4786831 (not c!815973)) b!4786826))

(assert (= (and d!1531338 res!2033506) b!4786832))

(assert (= (and b!4786832 res!2033508) b!4786830))

(assert (= (and b!4786830 res!2033507) b!4786828))

(declare-fun m!5766030 () Bool)

(assert (=> b!4786831 m!5766030))

(declare-fun m!5766032 () Bool)

(assert (=> b!4786831 m!5766032))

(declare-fun m!5766034 () Bool)

(assert (=> b!4786831 m!5766034))

(declare-fun m!5766036 () Bool)

(assert (=> b!4786831 m!5766036))

(declare-fun m!5766038 () Bool)

(assert (=> b!4786831 m!5766038))

(assert (=> b!4786831 m!5766034))

(assert (=> b!4786834 m!5766034))

(assert (=> b!4786834 m!5766034))

(declare-fun m!5766040 () Bool)

(assert (=> b!4786834 m!5766040))

(declare-fun m!5766042 () Bool)

(assert (=> b!4786830 m!5766042))

(declare-fun m!5766044 () Bool)

(assert (=> b!4786828 m!5766044))

(declare-fun m!5766046 () Bool)

(assert (=> b!4786828 m!5766046))

(assert (=> b!4786828 m!5766046))

(declare-fun m!5766048 () Bool)

(assert (=> b!4786828 m!5766048))

(declare-fun m!5766050 () Bool)

(assert (=> b!4786832 m!5766050))

(assert (=> b!4786832 m!5765794))

(declare-fun m!5766052 () Bool)

(assert (=> d!1531338 m!5766052))

(assert (=> d!1531338 m!5765968))

(assert (=> b!4786317 d!1531338))

(declare-fun d!1531340 () Bool)

(assert (=> d!1531340 (= (isDefined!10144 lt!1947543) (not (isEmpty!29392 lt!1947543)))))

(declare-fun bs!1153677 () Bool)

(assert (= bs!1153677 d!1531340))

(assert (=> bs!1153677 m!5765524))

(assert (=> b!4786401 d!1531340))

(declare-fun e!2988793 () Bool)

(declare-fun b!4786841 () Bool)

(declare-fun tp!1357702 () Bool)

(assert (=> b!4786841 (= e!2988793 (and tp_is_empty!33329 tp_is_empty!33331 tp!1357702))))

(assert (=> b!4786442 (= tp!1357693 e!2988793)))

(assert (= (and b!4786442 ((_ is Cons!54081) (_2!31603 (h!60504 (toList!6803 lm!2473))))) b!4786841))

(declare-fun b!4786842 () Bool)

(declare-fun e!2988794 () Bool)

(declare-fun tp!1357703 () Bool)

(declare-fun tp!1357704 () Bool)

(assert (=> b!4786842 (= e!2988794 (and tp!1357703 tp!1357704))))

(assert (=> b!4786442 (= tp!1357694 e!2988794)))

(assert (= (and b!4786442 ((_ is Cons!54082) (t!361656 (toList!6803 lm!2473)))) b!4786842))

(declare-fun b_lambda!186273 () Bool)

(assert (= b_lambda!186267 (or b!4786214 b_lambda!186273)))

(declare-fun bs!1153678 () Bool)

(declare-fun d!1531342 () Bool)

(assert (= bs!1153678 (and d!1531342 b!4786214)))

(assert (=> bs!1153678 (= (dynLambda!22035 lambda!229297 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473))))) (= (hash!4881 hashF!1559 (_1!31602 (h!60503 (_2!31603 (h!60504 (toList!6803 lm!2473)))))) (_1!31603 (h!60504 (toList!6803 lm!2473)))))))

(declare-fun m!5766054 () Bool)

(assert (=> bs!1153678 m!5766054))

(assert (=> b!4786764 d!1531342))

(declare-fun b_lambda!186275 () Bool)

(assert (= b_lambda!186239 (or d!1531066 b_lambda!186275)))

(declare-fun bs!1153679 () Bool)

(declare-fun d!1531344 () Bool)

(assert (= bs!1153679 (and d!1531344 d!1531066)))

(assert (=> bs!1153679 (= (dynLambda!22036 lambda!229312 (h!60504 (toList!6803 lm!2473))) (noDuplicateKeys!2310 (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(assert (=> bs!1153679 m!5765572))

(assert (=> b!4786663 d!1531344))

(declare-fun b_lambda!186277 () Bool)

(assert (= b_lambda!186265 (or b!4786214 b_lambda!186277)))

(assert (=> d!1531300 d!1531112))

(declare-fun b_lambda!186279 () Bool)

(assert (= b_lambda!186271 (or b!4786214 b_lambda!186279)))

(assert (=> b!4786776 d!1531110))

(declare-fun b_lambda!186281 () Bool)

(assert (= b_lambda!186231 (or d!1531076 b_lambda!186281)))

(declare-fun bs!1153680 () Bool)

(declare-fun d!1531346 () Bool)

(assert (= bs!1153680 (and d!1531346 d!1531076)))

(assert (=> bs!1153680 (= (dynLambda!22036 lambda!229315 (h!60504 (toList!6803 lm!2473))) (allKeysSameHash!1948 (_2!31603 (h!60504 (toList!6803 lm!2473))) (_1!31603 (h!60504 (toList!6803 lm!2473))) hashF!1559))))

(assert (=> bs!1153680 m!5765574))

(assert (=> b!4786564 d!1531346))

(declare-fun b_lambda!186283 () Bool)

(assert (= b_lambda!186263 (or d!1531100 b_lambda!186283)))

(declare-fun bs!1153681 () Bool)

(declare-fun d!1531348 () Bool)

(assert (= bs!1153681 (and d!1531348 d!1531100)))

(assert (=> bs!1153681 (= (dynLambda!22036 lambda!229318 (h!60504 (toList!6803 lm!2473))) (noDuplicateKeys!2310 (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(assert (=> bs!1153681 m!5765572))

(assert (=> b!4786752 d!1531348))

(declare-fun b_lambda!186285 () Bool)

(assert (= b_lambda!186229 (or d!1531102 b_lambda!186285)))

(declare-fun bs!1153682 () Bool)

(declare-fun d!1531350 () Bool)

(assert (= bs!1153682 (and d!1531350 d!1531102)))

(assert (=> bs!1153682 (= (dynLambda!22036 lambda!229321 (h!60504 (toList!6803 lm!2473))) (noDuplicateKeys!2310 (_2!31603 (h!60504 (toList!6803 lm!2473)))))))

(assert (=> bs!1153682 m!5765572))

(assert (=> b!4786562 d!1531350))

(declare-fun b_lambda!186287 () Bool)

(assert (= b_lambda!186261 (or start!492166 b_lambda!186287)))

(declare-fun bs!1153683 () Bool)

(declare-fun d!1531352 () Bool)

(assert (= bs!1153683 (and d!1531352 start!492166)))

(assert (=> bs!1153683 (= (dynLambda!22036 lambda!229295 (h!60504 (t!361656 (toList!6803 lm!2473)))) (noDuplicateKeys!2310 (_2!31603 (h!60504 (t!361656 (toList!6803 lm!2473))))))))

(declare-fun m!5766056 () Bool)

(assert (=> bs!1153683 m!5766056))

(assert (=> b!4786724 d!1531352))

(declare-fun b_lambda!186289 () Bool)

(assert (= b_lambda!186269 (or b!4786214 b_lambda!186289)))

(assert (=> d!1531314 d!1531110))

(check-sat (not b!4786775) (not d!1531290) (not bs!1153680) (not b!4786721) (not b!4786790) (not d!1531310) (not d!1531322) (not b!4786697) (not b!4786719) (not b!4786725) (not b!4786828) (not b!4786796) (not d!1531270) (not d!1531338) (not b_lambda!186213) (not d!1531292) (not b!4786832) (not b!4786742) (not bs!1153682) (not d!1531238) (not b!4786633) (not b!4786794) (not b!4786745) (not b!4786537) (not bm!334875) (not b!4786598) (not b!4786651) (not b!4786656) (not bs!1153683) (not d!1531240) (not d!1531340) (not b!4786650) (not b!4786801) (not b!4786597) (not b!4786696) (not d!1531278) tp_is_empty!33329 (not b!4786563) (not d!1531244) (not b!4786783) tp_is_empty!33331 (not d!1531218) (not b_lambda!186217) (not b!4786802) (not d!1531330) (not b!4786830) (not b_lambda!186285) (not b!4786748) (not b_lambda!186289) (not b!4786698) (not b!4786723) (not b!4786659) (not d!1531168) (not b!4786535) (not d!1531298) (not b!4786789) (not d!1531320) (not d!1531176) (not d!1531286) (not b!4786731) (not b!4786717) (not b!4786841) (not bs!1153681) (not b_lambda!186287) (not d!1531324) (not b!4786773) (not d!1531226) (not b!4786652) (not b!4786662) (not d!1531204) (not d!1531336) (not bm!334874) (not bs!1153678) (not b!4786799) (not b!4786747) (not d!1531288) (not d!1531332) (not b!4786565) (not b!4786622) (not b_lambda!186281) (not bs!1153679) (not b!4786750) (not b!4786765) (not b!4786661) (not b!4786842) (not b!4786722) (not b_lambda!186277) (not b!4786658) (not b_lambda!186279) (not b!4786807) (not b!4786694) (not b!4786777) (not bm!334873) (not b!4786751) (not b!4786834) (not b_lambda!186215) (not b!4786759) (not b!4786550) (not b!4786720) (not b!4786771) (not b_lambda!186283) (not b_lambda!186273) (not b!4786753) (not b!4786798) (not b!4786804) (not b!4786831) (not b_lambda!186275) (not d!1531296) (not b!4786792) (not d!1531308) (not d!1531170) (not b!4786664) (not d!1531282))
(check-sat)
