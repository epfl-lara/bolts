; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!457720 () Bool)

(assert start!457720)

(declare-fun b!4592610 () Bool)

(declare-fun res!1920206 () Bool)

(declare-fun e!2864406 () Bool)

(assert (=> b!4592610 (=> (not res!1920206) (not e!2864406))))

(declare-datatypes ((Hashable!5697 0))(
  ( (HashableExt!5696 (__x!31400 Int)) )
))
(declare-fun hashF!1107 () Hashable!5697)

(declare-fun hash!344 () (_ BitVec 64))

(declare-datatypes ((K!12395 0))(
  ( (K!12396 (val!18187 Int)) )
))
(declare-datatypes ((V!12641 0))(
  ( (V!12642 (val!18188 Int)) )
))
(declare-datatypes ((tuple2!51642 0))(
  ( (tuple2!51643 (_1!29115 K!12395) (_2!29115 V!12641)) )
))
(declare-datatypes ((List!51150 0))(
  ( (Nil!51026) (Cons!51026 (h!56978 tuple2!51642) (t!358144 List!51150)) )
))
(declare-fun newBucket!178 () List!51150)

(declare-fun allKeysSameHash!1154 (List!51150 (_ BitVec 64) Hashable!5697) Bool)

(assert (=> b!4592610 (= res!1920206 (allKeysSameHash!1154 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4592611 () Bool)

(declare-fun res!1920210 () Bool)

(declare-fun e!2864403 () Bool)

(assert (=> b!4592611 (=> res!1920210 e!2864403)))

(declare-datatypes ((tuple2!51644 0))(
  ( (tuple2!51645 (_1!29116 (_ BitVec 64)) (_2!29116 List!51150)) )
))
(declare-datatypes ((List!51151 0))(
  ( (Nil!51027) (Cons!51027 (h!56979 tuple2!51644) (t!358145 List!51151)) )
))
(declare-datatypes ((ListLongMap!3243 0))(
  ( (ListLongMap!3244 (toList!4611 List!51151)) )
))
(declare-fun lm!1477 () ListLongMap!3243)

(get-info :version)

(assert (=> b!4592611 (= res!1920210 (or ((_ is Nil!51027) (toList!4611 lm!1477)) (not (= (_1!29116 (h!56979 (toList!4611 lm!1477))) hash!344))))))

(declare-fun b!4592612 () Bool)

(declare-fun e!2864402 () Bool)

(declare-fun e!2864400 () Bool)

(assert (=> b!4592612 (= e!2864402 e!2864400)))

(declare-fun res!1920204 () Bool)

(assert (=> b!4592612 (=> res!1920204 e!2864400)))

(declare-fun lt!1754228 () List!51151)

(declare-fun key!3287 () K!12395)

(declare-fun containsKeyBiggerList!254 (List!51151 K!12395) Bool)

(assert (=> b!4592612 (= res!1920204 (not (containsKeyBiggerList!254 lt!1754228 key!3287)))))

(assert (=> b!4592612 (= lt!1754228 (Cons!51027 (h!56979 (toList!4611 lm!1477)) Nil!51027))))

(declare-fun b!4592613 () Bool)

(declare-fun res!1920209 () Bool)

(declare-fun e!2864401 () Bool)

(assert (=> b!4592613 (=> (not res!1920209) (not e!2864401))))

(declare-datatypes ((ListMap!3873 0))(
  ( (ListMap!3874 (toList!4612 List!51150)) )
))
(declare-fun contains!13949 (ListMap!3873 K!12395) Bool)

(declare-fun extractMap!1358 (List!51151) ListMap!3873)

(assert (=> b!4592613 (= res!1920209 (contains!13949 (extractMap!1358 (toList!4611 lm!1477)) key!3287))))

(declare-fun res!1920203 () Bool)

(assert (=> start!457720 (=> (not res!1920203) (not e!2864401))))

(declare-fun lambda!185132 () Int)

(declare-fun forall!10558 (List!51151 Int) Bool)

(assert (=> start!457720 (= res!1920203 (forall!10558 (toList!4611 lm!1477) lambda!185132))))

(assert (=> start!457720 e!2864401))

(assert (=> start!457720 true))

(declare-fun e!2864399 () Bool)

(declare-fun inv!66579 (ListLongMap!3243) Bool)

(assert (=> start!457720 (and (inv!66579 lm!1477) e!2864399)))

(declare-fun tp_is_empty!28485 () Bool)

(assert (=> start!457720 tp_is_empty!28485))

(declare-fun e!2864404 () Bool)

(assert (=> start!457720 e!2864404))

(declare-fun b!4592614 () Bool)

(assert (=> b!4592614 (= e!2864401 e!2864406)))

(declare-fun res!1920205 () Bool)

(assert (=> b!4592614 (=> (not res!1920205) (not e!2864406))))

(declare-fun lt!1754227 () (_ BitVec 64))

(assert (=> b!4592614 (= res!1920205 (= lt!1754227 hash!344))))

(declare-fun hash!3175 (Hashable!5697 K!12395) (_ BitVec 64))

(assert (=> b!4592614 (= lt!1754227 (hash!3175 hashF!1107 key!3287))))

(declare-fun b!4592615 () Bool)

(declare-datatypes ((Unit!107542 0))(
  ( (Unit!107543) )
))
(declare-fun e!2864405 () Unit!107542)

(declare-fun Unit!107544 () Unit!107542)

(assert (=> b!4592615 (= e!2864405 Unit!107544)))

(declare-fun lt!1754230 () Unit!107542)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!268 (ListLongMap!3243 K!12395 Hashable!5697) Unit!107542)

(assert (=> b!4592615 (= lt!1754230 (lemmaNotInItsHashBucketThenNotInMap!268 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4592615 false))

(declare-fun b!4592616 () Bool)

(declare-fun res!1920211 () Bool)

(assert (=> b!4592616 (=> res!1920211 e!2864400)))

(assert (=> b!4592616 (= res!1920211 (not (forall!10558 lt!1754228 lambda!185132)))))

(declare-fun b!4592617 () Bool)

(assert (=> b!4592617 (= e!2864403 e!2864402)))

(declare-fun res!1920208 () Bool)

(assert (=> b!4592617 (=> res!1920208 e!2864402)))

(declare-fun lt!1754233 () Bool)

(assert (=> b!4592617 (= res!1920208 lt!1754233)))

(declare-fun lt!1754234 () Unit!107542)

(assert (=> b!4592617 (= lt!1754234 e!2864405)))

(declare-fun c!786500 () Bool)

(assert (=> b!4592617 (= c!786500 lt!1754233)))

(declare-fun containsKey!2110 (List!51150 K!12395) Bool)

(assert (=> b!4592617 (= lt!1754233 (not (containsKey!2110 (_2!29116 (h!56979 (toList!4611 lm!1477))) key!3287)))))

(declare-fun b!4592618 () Bool)

(declare-fun allKeysSameHashInMap!1409 (ListLongMap!3243 Hashable!5697) Bool)

(assert (=> b!4592618 (= e!2864400 (allKeysSameHashInMap!1409 (ListLongMap!3244 lt!1754228) hashF!1107))))

(declare-fun b!4592619 () Bool)

(declare-fun res!1920202 () Bool)

(assert (=> b!4592619 (=> res!1920202 e!2864403)))

(declare-fun noDuplicateKeys!1298 (List!51150) Bool)

(assert (=> b!4592619 (= res!1920202 (not (noDuplicateKeys!1298 newBucket!178)))))

(declare-fun b!4592620 () Bool)

(declare-fun res!1920207 () Bool)

(assert (=> b!4592620 (=> (not res!1920207) (not e!2864401))))

(assert (=> b!4592620 (= res!1920207 (allKeysSameHashInMap!1409 lm!1477 hashF!1107))))

(declare-fun b!4592621 () Bool)

(declare-fun tp!1340146 () Bool)

(assert (=> b!4592621 (= e!2864399 tp!1340146)))

(declare-fun b!4592622 () Bool)

(declare-fun Unit!107545 () Unit!107542)

(assert (=> b!4592622 (= e!2864405 Unit!107545)))

(declare-fun b!4592623 () Bool)

(assert (=> b!4592623 (= e!2864406 (not e!2864403))))

(declare-fun res!1920212 () Bool)

(assert (=> b!4592623 (=> res!1920212 e!2864403)))

(declare-fun lt!1754235 () List!51150)

(declare-fun removePairForKey!923 (List!51150 K!12395) List!51150)

(assert (=> b!4592623 (= res!1920212 (not (= newBucket!178 (removePairForKey!923 lt!1754235 key!3287))))))

(declare-fun lt!1754229 () tuple2!51644)

(declare-fun lt!1754232 () Unit!107542)

(declare-fun forallContained!2815 (List!51151 Int tuple2!51644) Unit!107542)

(assert (=> b!4592623 (= lt!1754232 (forallContained!2815 (toList!4611 lm!1477) lambda!185132 lt!1754229))))

(declare-fun contains!13950 (List!51151 tuple2!51644) Bool)

(assert (=> b!4592623 (contains!13950 (toList!4611 lm!1477) lt!1754229)))

(assert (=> b!4592623 (= lt!1754229 (tuple2!51645 hash!344 lt!1754235))))

(declare-fun lt!1754226 () Unit!107542)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!808 (List!51151 (_ BitVec 64) List!51150) Unit!107542)

(assert (=> b!4592623 (= lt!1754226 (lemmaGetValueByKeyImpliesContainsTuple!808 (toList!4611 lm!1477) hash!344 lt!1754235))))

(declare-fun apply!12035 (ListLongMap!3243 (_ BitVec 64)) List!51150)

(assert (=> b!4592623 (= lt!1754235 (apply!12035 lm!1477 hash!344))))

(declare-fun contains!13951 (ListLongMap!3243 (_ BitVec 64)) Bool)

(assert (=> b!4592623 (contains!13951 lm!1477 lt!1754227)))

(declare-fun lt!1754231 () Unit!107542)

(declare-fun lemmaInGenMapThenLongMapContainsHash!372 (ListLongMap!3243 K!12395 Hashable!5697) Unit!107542)

(assert (=> b!4592623 (= lt!1754231 (lemmaInGenMapThenLongMapContainsHash!372 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4592624 () Bool)

(declare-fun tp_is_empty!28487 () Bool)

(declare-fun tp!1340147 () Bool)

(assert (=> b!4592624 (= e!2864404 (and tp_is_empty!28485 tp_is_empty!28487 tp!1340147))))

(assert (= (and start!457720 res!1920203) b!4592620))

(assert (= (and b!4592620 res!1920207) b!4592613))

(assert (= (and b!4592613 res!1920209) b!4592614))

(assert (= (and b!4592614 res!1920205) b!4592610))

(assert (= (and b!4592610 res!1920206) b!4592623))

(assert (= (and b!4592623 (not res!1920212)) b!4592619))

(assert (= (and b!4592619 (not res!1920202)) b!4592611))

(assert (= (and b!4592611 (not res!1920210)) b!4592617))

(assert (= (and b!4592617 c!786500) b!4592615))

(assert (= (and b!4592617 (not c!786500)) b!4592622))

(assert (= (and b!4592617 (not res!1920208)) b!4592612))

(assert (= (and b!4592612 (not res!1920204)) b!4592616))

(assert (= (and b!4592616 (not res!1920211)) b!4592618))

(assert (= start!457720 b!4592621))

(assert (= (and start!457720 ((_ is Cons!51026) newBucket!178)) b!4592624))

(declare-fun m!5415987 () Bool)

(assert (=> start!457720 m!5415987))

(declare-fun m!5415989 () Bool)

(assert (=> start!457720 m!5415989))

(declare-fun m!5415991 () Bool)

(assert (=> b!4592616 m!5415991))

(declare-fun m!5415993 () Bool)

(assert (=> b!4592620 m!5415993))

(declare-fun m!5415995 () Bool)

(assert (=> b!4592623 m!5415995))

(declare-fun m!5415997 () Bool)

(assert (=> b!4592623 m!5415997))

(declare-fun m!5415999 () Bool)

(assert (=> b!4592623 m!5415999))

(declare-fun m!5416001 () Bool)

(assert (=> b!4592623 m!5416001))

(declare-fun m!5416003 () Bool)

(assert (=> b!4592623 m!5416003))

(declare-fun m!5416005 () Bool)

(assert (=> b!4592623 m!5416005))

(declare-fun m!5416007 () Bool)

(assert (=> b!4592623 m!5416007))

(declare-fun m!5416009 () Bool)

(assert (=> b!4592617 m!5416009))

(declare-fun m!5416011 () Bool)

(assert (=> b!4592610 m!5416011))

(declare-fun m!5416013 () Bool)

(assert (=> b!4592613 m!5416013))

(assert (=> b!4592613 m!5416013))

(declare-fun m!5416015 () Bool)

(assert (=> b!4592613 m!5416015))

(declare-fun m!5416017 () Bool)

(assert (=> b!4592614 m!5416017))

(declare-fun m!5416019 () Bool)

(assert (=> b!4592618 m!5416019))

(declare-fun m!5416021 () Bool)

(assert (=> b!4592612 m!5416021))

(declare-fun m!5416023 () Bool)

(assert (=> b!4592619 m!5416023))

(declare-fun m!5416025 () Bool)

(assert (=> b!4592615 m!5416025))

(check-sat tp_is_empty!28485 (not b!4592613) (not b!4592619) (not b!4592612) (not b!4592615) (not b!4592620) (not start!457720) (not b!4592614) (not b!4592616) (not b!4592621) (not b!4592610) (not b!4592618) (not b!4592623) (not b!4592617) tp_is_empty!28487 (not b!4592624))
(check-sat)
(get-model)

(declare-fun d!1444923 () Bool)

(declare-fun res!1920217 () Bool)

(declare-fun e!2864411 () Bool)

(assert (=> d!1444923 (=> res!1920217 e!2864411)))

(assert (=> d!1444923 (= res!1920217 ((_ is Nil!51027) lt!1754228))))

(assert (=> d!1444923 (= (forall!10558 lt!1754228 lambda!185132) e!2864411)))

(declare-fun b!4592629 () Bool)

(declare-fun e!2864412 () Bool)

(assert (=> b!4592629 (= e!2864411 e!2864412)))

(declare-fun res!1920218 () Bool)

(assert (=> b!4592629 (=> (not res!1920218) (not e!2864412))))

(declare-fun dynLambda!21372 (Int tuple2!51644) Bool)

(assert (=> b!4592629 (= res!1920218 (dynLambda!21372 lambda!185132 (h!56979 lt!1754228)))))

(declare-fun b!4592630 () Bool)

(assert (=> b!4592630 (= e!2864412 (forall!10558 (t!358145 lt!1754228) lambda!185132))))

(assert (= (and d!1444923 (not res!1920217)) b!4592629))

(assert (= (and b!4592629 res!1920218) b!4592630))

(declare-fun b_lambda!168657 () Bool)

(assert (=> (not b_lambda!168657) (not b!4592629)))

(declare-fun m!5416027 () Bool)

(assert (=> b!4592629 m!5416027))

(declare-fun m!5416029 () Bool)

(assert (=> b!4592630 m!5416029))

(assert (=> b!4592616 d!1444923))

(declare-fun d!1444925 () Bool)

(declare-fun res!1920223 () Bool)

(declare-fun e!2864417 () Bool)

(assert (=> d!1444925 (=> res!1920223 e!2864417)))

(assert (=> d!1444925 (= res!1920223 (and ((_ is Cons!51026) (_2!29116 (h!56979 (toList!4611 lm!1477)))) (= (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) key!3287)))))

(assert (=> d!1444925 (= (containsKey!2110 (_2!29116 (h!56979 (toList!4611 lm!1477))) key!3287) e!2864417)))

(declare-fun b!4592635 () Bool)

(declare-fun e!2864418 () Bool)

(assert (=> b!4592635 (= e!2864417 e!2864418)))

(declare-fun res!1920224 () Bool)

(assert (=> b!4592635 (=> (not res!1920224) (not e!2864418))))

(assert (=> b!4592635 (= res!1920224 ((_ is Cons!51026) (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(declare-fun b!4592636 () Bool)

(assert (=> b!4592636 (= e!2864418 (containsKey!2110 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) key!3287))))

(assert (= (and d!1444925 (not res!1920223)) b!4592635))

(assert (= (and b!4592635 res!1920224) b!4592636))

(declare-fun m!5416031 () Bool)

(assert (=> b!4592636 m!5416031))

(assert (=> b!4592617 d!1444925))

(declare-fun bs!1008220 () Bool)

(declare-fun d!1444929 () Bool)

(assert (= bs!1008220 (and d!1444929 start!457720)))

(declare-fun lambda!185140 () Int)

(assert (=> bs!1008220 (not (= lambda!185140 lambda!185132))))

(assert (=> d!1444929 true))

(assert (=> d!1444929 (= (allKeysSameHashInMap!1409 (ListLongMap!3244 lt!1754228) hashF!1107) (forall!10558 (toList!4611 (ListLongMap!3244 lt!1754228)) lambda!185140))))

(declare-fun bs!1008222 () Bool)

(assert (= bs!1008222 d!1444929))

(declare-fun m!5416037 () Bool)

(assert (=> bs!1008222 m!5416037))

(assert (=> b!4592618 d!1444929))

(declare-fun b!4592709 () Bool)

(assert (=> b!4592709 false))

(declare-fun lt!1754287 () Unit!107542)

(declare-fun lt!1754283 () Unit!107542)

(assert (=> b!4592709 (= lt!1754287 lt!1754283)))

(declare-fun containsKey!2113 (List!51150 K!12395) Bool)

(assert (=> b!4592709 (containsKey!2113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!560 (List!51150 K!12395) Unit!107542)

(assert (=> b!4592709 (= lt!1754283 (lemmaInGetKeysListThenContainsKey!560 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(declare-fun e!2864473 () Unit!107542)

(declare-fun Unit!107549 () Unit!107542)

(assert (=> b!4592709 (= e!2864473 Unit!107549)))

(declare-fun b!4592710 () Bool)

(declare-fun e!2864469 () Unit!107542)

(assert (=> b!4592710 (= e!2864469 e!2864473)))

(declare-fun c!786516 () Bool)

(declare-fun call!320606 () Bool)

(assert (=> b!4592710 (= c!786516 call!320606)))

(declare-fun b!4592711 () Bool)

(declare-fun e!2864470 () Bool)

(declare-datatypes ((List!51153 0))(
  ( (Nil!51029) (Cons!51029 (h!56983 K!12395) (t!358147 List!51153)) )
))
(declare-fun contains!13953 (List!51153 K!12395) Bool)

(declare-fun keys!17850 (ListMap!3873) List!51153)

(assert (=> b!4592711 (= e!2864470 (not (contains!13953 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))) key!3287)))))

(declare-fun bm!320601 () Bool)

(declare-fun e!2864471 () List!51153)

(assert (=> bm!320601 (= call!320606 (contains!13953 e!2864471 key!3287))))

(declare-fun c!786517 () Bool)

(declare-fun c!786518 () Bool)

(assert (=> bm!320601 (= c!786517 c!786518)))

(declare-fun b!4592712 () Bool)

(declare-fun getKeysList!561 (List!51150) List!51153)

(assert (=> b!4592712 (= e!2864471 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(declare-fun b!4592713 () Bool)

(declare-fun Unit!107550 () Unit!107542)

(assert (=> b!4592713 (= e!2864473 Unit!107550)))

(declare-fun b!4592714 () Bool)

(declare-fun e!2864468 () Bool)

(declare-fun e!2864472 () Bool)

(assert (=> b!4592714 (= e!2864468 e!2864472)))

(declare-fun res!1920260 () Bool)

(assert (=> b!4592714 (=> (not res!1920260) (not e!2864472))))

(declare-datatypes ((Option!11366 0))(
  ( (None!11365) (Some!11365 (v!45303 V!12641)) )
))
(declare-fun isDefined!8634 (Option!11366) Bool)

(declare-fun getValueByKey!1286 (List!51150 K!12395) Option!11366)

(assert (=> b!4592714 (= res!1920260 (isDefined!8634 (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287)))))

(declare-fun d!1444935 () Bool)

(assert (=> d!1444935 e!2864468))

(declare-fun res!1920259 () Bool)

(assert (=> d!1444935 (=> res!1920259 e!2864468)))

(assert (=> d!1444935 (= res!1920259 e!2864470)))

(declare-fun res!1920261 () Bool)

(assert (=> d!1444935 (=> (not res!1920261) (not e!2864470))))

(declare-fun lt!1754286 () Bool)

(assert (=> d!1444935 (= res!1920261 (not lt!1754286))))

(declare-fun lt!1754282 () Bool)

(assert (=> d!1444935 (= lt!1754286 lt!1754282)))

(declare-fun lt!1754284 () Unit!107542)

(assert (=> d!1444935 (= lt!1754284 e!2864469)))

(assert (=> d!1444935 (= c!786518 lt!1754282)))

(assert (=> d!1444935 (= lt!1754282 (containsKey!2113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(assert (=> d!1444935 (= (contains!13949 (extractMap!1358 (toList!4611 lm!1477)) key!3287) lt!1754286)))

(declare-fun b!4592715 () Bool)

(assert (=> b!4592715 (= e!2864472 (contains!13953 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(declare-fun b!4592716 () Bool)

(declare-fun lt!1754289 () Unit!107542)

(assert (=> b!4592716 (= e!2864469 lt!1754289)))

(declare-fun lt!1754285 () Unit!107542)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1190 (List!51150 K!12395) Unit!107542)

(assert (=> b!4592716 (= lt!1754285 (lemmaContainsKeyImpliesGetValueByKeyDefined!1190 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(assert (=> b!4592716 (isDefined!8634 (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(declare-fun lt!1754288 () Unit!107542)

(assert (=> b!4592716 (= lt!1754288 lt!1754285)))

(declare-fun lemmaInListThenGetKeysListContains!557 (List!51150 K!12395) Unit!107542)

(assert (=> b!4592716 (= lt!1754289 (lemmaInListThenGetKeysListContains!557 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(assert (=> b!4592716 call!320606))

(declare-fun b!4592717 () Bool)

(assert (=> b!4592717 (= e!2864471 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))))))

(assert (= (and d!1444935 c!786518) b!4592716))

(assert (= (and d!1444935 (not c!786518)) b!4592710))

(assert (= (and b!4592710 c!786516) b!4592709))

(assert (= (and b!4592710 (not c!786516)) b!4592713))

(assert (= (or b!4592716 b!4592710) bm!320601))

(assert (= (and bm!320601 c!786517) b!4592712))

(assert (= (and bm!320601 (not c!786517)) b!4592717))

(assert (= (and d!1444935 res!1920261) b!4592711))

(assert (= (and d!1444935 (not res!1920259)) b!4592714))

(assert (= (and b!4592714 res!1920260) b!4592715))

(declare-fun m!5416095 () Bool)

(assert (=> b!4592714 m!5416095))

(assert (=> b!4592714 m!5416095))

(declare-fun m!5416097 () Bool)

(assert (=> b!4592714 m!5416097))

(assert (=> b!4592711 m!5416013))

(declare-fun m!5416099 () Bool)

(assert (=> b!4592711 m!5416099))

(assert (=> b!4592711 m!5416099))

(declare-fun m!5416101 () Bool)

(assert (=> b!4592711 m!5416101))

(declare-fun m!5416103 () Bool)

(assert (=> b!4592716 m!5416103))

(assert (=> b!4592716 m!5416095))

(assert (=> b!4592716 m!5416095))

(assert (=> b!4592716 m!5416097))

(declare-fun m!5416105 () Bool)

(assert (=> b!4592716 m!5416105))

(declare-fun m!5416107 () Bool)

(assert (=> d!1444935 m!5416107))

(assert (=> b!4592715 m!5416013))

(assert (=> b!4592715 m!5416099))

(assert (=> b!4592715 m!5416099))

(assert (=> b!4592715 m!5416101))

(assert (=> b!4592709 m!5416107))

(declare-fun m!5416109 () Bool)

(assert (=> b!4592709 m!5416109))

(assert (=> b!4592717 m!5416013))

(assert (=> b!4592717 m!5416099))

(declare-fun m!5416111 () Bool)

(assert (=> b!4592712 m!5416111))

(declare-fun m!5416113 () Bool)

(assert (=> bm!320601 m!5416113))

(assert (=> b!4592613 d!1444935))

(declare-fun bs!1008237 () Bool)

(declare-fun d!1444961 () Bool)

(assert (= bs!1008237 (and d!1444961 start!457720)))

(declare-fun lambda!185151 () Int)

(assert (=> bs!1008237 (= lambda!185151 lambda!185132)))

(declare-fun bs!1008238 () Bool)

(assert (= bs!1008238 (and d!1444961 d!1444929)))

(assert (=> bs!1008238 (not (= lambda!185151 lambda!185140))))

(declare-fun lt!1754316 () ListMap!3873)

(declare-fun invariantList!1113 (List!51150) Bool)

(assert (=> d!1444961 (invariantList!1113 (toList!4612 lt!1754316))))

(declare-fun e!2864504 () ListMap!3873)

(assert (=> d!1444961 (= lt!1754316 e!2864504)))

(declare-fun c!786530 () Bool)

(assert (=> d!1444961 (= c!786530 ((_ is Cons!51027) (toList!4611 lm!1477)))))

(assert (=> d!1444961 (forall!10558 (toList!4611 lm!1477) lambda!185151)))

(assert (=> d!1444961 (= (extractMap!1358 (toList!4611 lm!1477)) lt!1754316)))

(declare-fun b!4592759 () Bool)

(declare-fun addToMapMapFromBucket!803 (List!51150 ListMap!3873) ListMap!3873)

(assert (=> b!4592759 (= e!2864504 (addToMapMapFromBucket!803 (_2!29116 (h!56979 (toList!4611 lm!1477))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun b!4592760 () Bool)

(assert (=> b!4592760 (= e!2864504 (ListMap!3874 Nil!51026))))

(assert (= (and d!1444961 c!786530) b!4592759))

(assert (= (and d!1444961 (not c!786530)) b!4592760))

(declare-fun m!5416143 () Bool)

(assert (=> d!1444961 m!5416143))

(declare-fun m!5416145 () Bool)

(assert (=> d!1444961 m!5416145))

(declare-fun m!5416147 () Bool)

(assert (=> b!4592759 m!5416147))

(assert (=> b!4592759 m!5416147))

(declare-fun m!5416149 () Bool)

(assert (=> b!4592759 m!5416149))

(assert (=> b!4592613 d!1444961))

(declare-fun d!1444971 () Bool)

(declare-fun hash!3177 (Hashable!5697 K!12395) (_ BitVec 64))

(assert (=> d!1444971 (= (hash!3175 hashF!1107 key!3287) (hash!3177 hashF!1107 key!3287))))

(declare-fun bs!1008239 () Bool)

(assert (= bs!1008239 d!1444971))

(declare-fun m!5416151 () Bool)

(assert (=> bs!1008239 m!5416151))

(assert (=> b!4592614 d!1444971))

(declare-fun bs!1008248 () Bool)

(declare-fun d!1444973 () Bool)

(assert (= bs!1008248 (and d!1444973 start!457720)))

(declare-fun lambda!185157 () Int)

(assert (=> bs!1008248 (= lambda!185157 lambda!185132)))

(declare-fun bs!1008249 () Bool)

(assert (= bs!1008249 (and d!1444973 d!1444929)))

(assert (=> bs!1008249 (not (= lambda!185157 lambda!185140))))

(declare-fun bs!1008250 () Bool)

(assert (= bs!1008250 (and d!1444973 d!1444961)))

(assert (=> bs!1008250 (= lambda!185157 lambda!185151)))

(assert (=> d!1444973 (not (contains!13949 (extractMap!1358 (toList!4611 lm!1477)) key!3287))))

(declare-fun lt!1754322 () Unit!107542)

(declare-fun choose!30693 (ListLongMap!3243 K!12395 Hashable!5697) Unit!107542)

(assert (=> d!1444973 (= lt!1754322 (choose!30693 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1444973 (forall!10558 (toList!4611 lm!1477) lambda!185157)))

(assert (=> d!1444973 (= (lemmaNotInItsHashBucketThenNotInMap!268 lm!1477 key!3287 hashF!1107) lt!1754322)))

(declare-fun bs!1008251 () Bool)

(assert (= bs!1008251 d!1444973))

(assert (=> bs!1008251 m!5416013))

(assert (=> bs!1008251 m!5416013))

(assert (=> bs!1008251 m!5416015))

(declare-fun m!5416169 () Bool)

(assert (=> bs!1008251 m!5416169))

(declare-fun m!5416171 () Bool)

(assert (=> bs!1008251 m!5416171))

(assert (=> b!4592615 d!1444973))

(declare-fun d!1444983 () Bool)

(declare-fun res!1920294 () Bool)

(declare-fun e!2864528 () Bool)

(assert (=> d!1444983 (=> res!1920294 e!2864528)))

(declare-fun e!2864527 () Bool)

(assert (=> d!1444983 (= res!1920294 e!2864527)))

(declare-fun res!1920295 () Bool)

(assert (=> d!1444983 (=> (not res!1920295) (not e!2864527))))

(assert (=> d!1444983 (= res!1920295 ((_ is Cons!51027) lt!1754228))))

(assert (=> d!1444983 (= (containsKeyBiggerList!254 lt!1754228 key!3287) e!2864528)))

(declare-fun b!4592789 () Bool)

(assert (=> b!4592789 (= e!2864527 (containsKey!2110 (_2!29116 (h!56979 lt!1754228)) key!3287))))

(declare-fun b!4592790 () Bool)

(declare-fun e!2864526 () Bool)

(assert (=> b!4592790 (= e!2864528 e!2864526)))

(declare-fun res!1920293 () Bool)

(assert (=> b!4592790 (=> (not res!1920293) (not e!2864526))))

(assert (=> b!4592790 (= res!1920293 ((_ is Cons!51027) lt!1754228))))

(declare-fun b!4592791 () Bool)

(assert (=> b!4592791 (= e!2864526 (containsKeyBiggerList!254 (t!358145 lt!1754228) key!3287))))

(assert (= (and d!1444983 res!1920295) b!4592789))

(assert (= (and d!1444983 (not res!1920294)) b!4592790))

(assert (= (and b!4592790 res!1920293) b!4592791))

(declare-fun m!5416173 () Bool)

(assert (=> b!4592789 m!5416173))

(declare-fun m!5416175 () Bool)

(assert (=> b!4592791 m!5416175))

(assert (=> b!4592612 d!1444983))

(declare-fun d!1444985 () Bool)

(declare-fun res!1920296 () Bool)

(declare-fun e!2864529 () Bool)

(assert (=> d!1444985 (=> res!1920296 e!2864529)))

(assert (=> d!1444985 (= res!1920296 ((_ is Nil!51027) (toList!4611 lm!1477)))))

(assert (=> d!1444985 (= (forall!10558 (toList!4611 lm!1477) lambda!185132) e!2864529)))

(declare-fun b!4592792 () Bool)

(declare-fun e!2864530 () Bool)

(assert (=> b!4592792 (= e!2864529 e!2864530)))

(declare-fun res!1920297 () Bool)

(assert (=> b!4592792 (=> (not res!1920297) (not e!2864530))))

(assert (=> b!4592792 (= res!1920297 (dynLambda!21372 lambda!185132 (h!56979 (toList!4611 lm!1477))))))

(declare-fun b!4592793 () Bool)

(assert (=> b!4592793 (= e!2864530 (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185132))))

(assert (= (and d!1444985 (not res!1920296)) b!4592792))

(assert (= (and b!4592792 res!1920297) b!4592793))

(declare-fun b_lambda!168671 () Bool)

(assert (=> (not b_lambda!168671) (not b!4592792)))

(declare-fun m!5416177 () Bool)

(assert (=> b!4592792 m!5416177))

(declare-fun m!5416179 () Bool)

(assert (=> b!4592793 m!5416179))

(assert (=> start!457720 d!1444985))

(declare-fun d!1444987 () Bool)

(declare-fun isStrictlySorted!528 (List!51151) Bool)

(assert (=> d!1444987 (= (inv!66579 lm!1477) (isStrictlySorted!528 (toList!4611 lm!1477)))))

(declare-fun bs!1008252 () Bool)

(assert (= bs!1008252 d!1444987))

(declare-fun m!5416181 () Bool)

(assert (=> bs!1008252 m!5416181))

(assert (=> start!457720 d!1444987))

(declare-fun b!4592802 () Bool)

(declare-fun e!2864535 () List!51150)

(assert (=> b!4592802 (= e!2864535 (t!358144 lt!1754235))))

(declare-fun d!1444989 () Bool)

(declare-fun lt!1754325 () List!51150)

(assert (=> d!1444989 (not (containsKey!2110 lt!1754325 key!3287))))

(assert (=> d!1444989 (= lt!1754325 e!2864535)))

(declare-fun c!786538 () Bool)

(assert (=> d!1444989 (= c!786538 (and ((_ is Cons!51026) lt!1754235) (= (_1!29115 (h!56978 lt!1754235)) key!3287)))))

(assert (=> d!1444989 (noDuplicateKeys!1298 lt!1754235)))

(assert (=> d!1444989 (= (removePairForKey!923 lt!1754235 key!3287) lt!1754325)))

(declare-fun b!4592805 () Bool)

(declare-fun e!2864536 () List!51150)

(assert (=> b!4592805 (= e!2864536 Nil!51026)))

(declare-fun b!4592804 () Bool)

(assert (=> b!4592804 (= e!2864536 (Cons!51026 (h!56978 lt!1754235) (removePairForKey!923 (t!358144 lt!1754235) key!3287)))))

(declare-fun b!4592803 () Bool)

(assert (=> b!4592803 (= e!2864535 e!2864536)))

(declare-fun c!786539 () Bool)

(assert (=> b!4592803 (= c!786539 ((_ is Cons!51026) lt!1754235))))

(assert (= (and d!1444989 c!786538) b!4592802))

(assert (= (and d!1444989 (not c!786538)) b!4592803))

(assert (= (and b!4592803 c!786539) b!4592804))

(assert (= (and b!4592803 (not c!786539)) b!4592805))

(declare-fun m!5416183 () Bool)

(assert (=> d!1444989 m!5416183))

(declare-fun m!5416185 () Bool)

(assert (=> d!1444989 m!5416185))

(declare-fun m!5416187 () Bool)

(assert (=> b!4592804 m!5416187))

(assert (=> b!4592623 d!1444989))

(declare-fun d!1444991 () Bool)

(declare-fun e!2864542 () Bool)

(assert (=> d!1444991 e!2864542))

(declare-fun res!1920300 () Bool)

(assert (=> d!1444991 (=> res!1920300 e!2864542)))

(declare-fun lt!1754334 () Bool)

(assert (=> d!1444991 (= res!1920300 (not lt!1754334))))

(declare-fun lt!1754337 () Bool)

(assert (=> d!1444991 (= lt!1754334 lt!1754337)))

(declare-fun lt!1754335 () Unit!107542)

(declare-fun e!2864541 () Unit!107542)

(assert (=> d!1444991 (= lt!1754335 e!2864541)))

(declare-fun c!786542 () Bool)

(assert (=> d!1444991 (= c!786542 lt!1754337)))

(declare-fun containsKey!2114 (List!51151 (_ BitVec 64)) Bool)

(assert (=> d!1444991 (= lt!1754337 (containsKey!2114 (toList!4611 lm!1477) lt!1754227))))

(assert (=> d!1444991 (= (contains!13951 lm!1477 lt!1754227) lt!1754334)))

(declare-fun b!4592812 () Bool)

(declare-fun lt!1754336 () Unit!107542)

(assert (=> b!4592812 (= e!2864541 lt!1754336)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1191 (List!51151 (_ BitVec 64)) Unit!107542)

(assert (=> b!4592812 (= lt!1754336 (lemmaContainsKeyImpliesGetValueByKeyDefined!1191 (toList!4611 lm!1477) lt!1754227))))

(declare-datatypes ((Option!11367 0))(
  ( (None!11366) (Some!11366 (v!45304 List!51150)) )
))
(declare-fun isDefined!8635 (Option!11367) Bool)

(declare-fun getValueByKey!1287 (List!51151 (_ BitVec 64)) Option!11367)

(assert (=> b!4592812 (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227))))

(declare-fun b!4592813 () Bool)

(declare-fun Unit!107551 () Unit!107542)

(assert (=> b!4592813 (= e!2864541 Unit!107551)))

(declare-fun b!4592814 () Bool)

(assert (=> b!4592814 (= e!2864542 (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227)))))

(assert (= (and d!1444991 c!786542) b!4592812))

(assert (= (and d!1444991 (not c!786542)) b!4592813))

(assert (= (and d!1444991 (not res!1920300)) b!4592814))

(declare-fun m!5416189 () Bool)

(assert (=> d!1444991 m!5416189))

(declare-fun m!5416191 () Bool)

(assert (=> b!4592812 m!5416191))

(declare-fun m!5416193 () Bool)

(assert (=> b!4592812 m!5416193))

(assert (=> b!4592812 m!5416193))

(declare-fun m!5416195 () Bool)

(assert (=> b!4592812 m!5416195))

(assert (=> b!4592814 m!5416193))

(assert (=> b!4592814 m!5416193))

(assert (=> b!4592814 m!5416195))

(assert (=> b!4592623 d!1444991))

(declare-fun bs!1008253 () Bool)

(declare-fun d!1444993 () Bool)

(assert (= bs!1008253 (and d!1444993 start!457720)))

(declare-fun lambda!185160 () Int)

(assert (=> bs!1008253 (= lambda!185160 lambda!185132)))

(declare-fun bs!1008254 () Bool)

(assert (= bs!1008254 (and d!1444993 d!1444929)))

(assert (=> bs!1008254 (not (= lambda!185160 lambda!185140))))

(declare-fun bs!1008255 () Bool)

(assert (= bs!1008255 (and d!1444993 d!1444961)))

(assert (=> bs!1008255 (= lambda!185160 lambda!185151)))

(declare-fun bs!1008256 () Bool)

(assert (= bs!1008256 (and d!1444993 d!1444973)))

(assert (=> bs!1008256 (= lambda!185160 lambda!185157)))

(assert (=> d!1444993 (contains!13951 lm!1477 (hash!3175 hashF!1107 key!3287))))

(declare-fun lt!1754340 () Unit!107542)

(declare-fun choose!30694 (ListLongMap!3243 K!12395 Hashable!5697) Unit!107542)

(assert (=> d!1444993 (= lt!1754340 (choose!30694 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1444993 (forall!10558 (toList!4611 lm!1477) lambda!185160)))

(assert (=> d!1444993 (= (lemmaInGenMapThenLongMapContainsHash!372 lm!1477 key!3287 hashF!1107) lt!1754340)))

(declare-fun bs!1008257 () Bool)

(assert (= bs!1008257 d!1444993))

(assert (=> bs!1008257 m!5416017))

(assert (=> bs!1008257 m!5416017))

(declare-fun m!5416197 () Bool)

(assert (=> bs!1008257 m!5416197))

(declare-fun m!5416199 () Bool)

(assert (=> bs!1008257 m!5416199))

(declare-fun m!5416201 () Bool)

(assert (=> bs!1008257 m!5416201))

(assert (=> b!4592623 d!1444993))

(declare-fun d!1444995 () Bool)

(declare-fun get!16857 (Option!11367) List!51150)

(assert (=> d!1444995 (= (apply!12035 lm!1477 hash!344) (get!16857 (getValueByKey!1287 (toList!4611 lm!1477) hash!344)))))

(declare-fun bs!1008258 () Bool)

(assert (= bs!1008258 d!1444995))

(declare-fun m!5416203 () Bool)

(assert (=> bs!1008258 m!5416203))

(assert (=> bs!1008258 m!5416203))

(declare-fun m!5416205 () Bool)

(assert (=> bs!1008258 m!5416205))

(assert (=> b!4592623 d!1444995))

(declare-fun d!1444997 () Bool)

(declare-fun lt!1754343 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8618 (List!51151) (InoxSet tuple2!51644))

(assert (=> d!1444997 (= lt!1754343 (select (content!8618 (toList!4611 lm!1477)) lt!1754229))))

(declare-fun e!2864547 () Bool)

(assert (=> d!1444997 (= lt!1754343 e!2864547)))

(declare-fun res!1920305 () Bool)

(assert (=> d!1444997 (=> (not res!1920305) (not e!2864547))))

(assert (=> d!1444997 (= res!1920305 ((_ is Cons!51027) (toList!4611 lm!1477)))))

(assert (=> d!1444997 (= (contains!13950 (toList!4611 lm!1477) lt!1754229) lt!1754343)))

(declare-fun b!4592819 () Bool)

(declare-fun e!2864548 () Bool)

(assert (=> b!4592819 (= e!2864547 e!2864548)))

(declare-fun res!1920306 () Bool)

(assert (=> b!4592819 (=> res!1920306 e!2864548)))

(assert (=> b!4592819 (= res!1920306 (= (h!56979 (toList!4611 lm!1477)) lt!1754229))))

(declare-fun b!4592820 () Bool)

(assert (=> b!4592820 (= e!2864548 (contains!13950 (t!358145 (toList!4611 lm!1477)) lt!1754229))))

(assert (= (and d!1444997 res!1920305) b!4592819))

(assert (= (and b!4592819 (not res!1920306)) b!4592820))

(declare-fun m!5416207 () Bool)

(assert (=> d!1444997 m!5416207))

(declare-fun m!5416209 () Bool)

(assert (=> d!1444997 m!5416209))

(declare-fun m!5416211 () Bool)

(assert (=> b!4592820 m!5416211))

(assert (=> b!4592623 d!1444997))

(declare-fun d!1444999 () Bool)

(assert (=> d!1444999 (contains!13950 (toList!4611 lm!1477) (tuple2!51645 hash!344 lt!1754235))))

(declare-fun lt!1754346 () Unit!107542)

(declare-fun choose!30695 (List!51151 (_ BitVec 64) List!51150) Unit!107542)

(assert (=> d!1444999 (= lt!1754346 (choose!30695 (toList!4611 lm!1477) hash!344 lt!1754235))))

(declare-fun e!2864551 () Bool)

(assert (=> d!1444999 e!2864551))

(declare-fun res!1920309 () Bool)

(assert (=> d!1444999 (=> (not res!1920309) (not e!2864551))))

(assert (=> d!1444999 (= res!1920309 (isStrictlySorted!528 (toList!4611 lm!1477)))))

(assert (=> d!1444999 (= (lemmaGetValueByKeyImpliesContainsTuple!808 (toList!4611 lm!1477) hash!344 lt!1754235) lt!1754346)))

(declare-fun b!4592823 () Bool)

(assert (=> b!4592823 (= e!2864551 (= (getValueByKey!1287 (toList!4611 lm!1477) hash!344) (Some!11366 lt!1754235)))))

(assert (= (and d!1444999 res!1920309) b!4592823))

(declare-fun m!5416213 () Bool)

(assert (=> d!1444999 m!5416213))

(declare-fun m!5416215 () Bool)

(assert (=> d!1444999 m!5416215))

(assert (=> d!1444999 m!5416181))

(assert (=> b!4592823 m!5416203))

(assert (=> b!4592623 d!1444999))

(declare-fun d!1445001 () Bool)

(assert (=> d!1445001 (dynLambda!21372 lambda!185132 lt!1754229)))

(declare-fun lt!1754349 () Unit!107542)

(declare-fun choose!30696 (List!51151 Int tuple2!51644) Unit!107542)

(assert (=> d!1445001 (= lt!1754349 (choose!30696 (toList!4611 lm!1477) lambda!185132 lt!1754229))))

(declare-fun e!2864554 () Bool)

(assert (=> d!1445001 e!2864554))

(declare-fun res!1920312 () Bool)

(assert (=> d!1445001 (=> (not res!1920312) (not e!2864554))))

(assert (=> d!1445001 (= res!1920312 (forall!10558 (toList!4611 lm!1477) lambda!185132))))

(assert (=> d!1445001 (= (forallContained!2815 (toList!4611 lm!1477) lambda!185132 lt!1754229) lt!1754349)))

(declare-fun b!4592826 () Bool)

(assert (=> b!4592826 (= e!2864554 (contains!13950 (toList!4611 lm!1477) lt!1754229))))

(assert (= (and d!1445001 res!1920312) b!4592826))

(declare-fun b_lambda!168673 () Bool)

(assert (=> (not b_lambda!168673) (not d!1445001)))

(declare-fun m!5416217 () Bool)

(assert (=> d!1445001 m!5416217))

(declare-fun m!5416219 () Bool)

(assert (=> d!1445001 m!5416219))

(assert (=> d!1445001 m!5415987))

(assert (=> b!4592826 m!5415995))

(assert (=> b!4592623 d!1445001))

(declare-fun d!1445003 () Bool)

(declare-fun res!1920317 () Bool)

(declare-fun e!2864559 () Bool)

(assert (=> d!1445003 (=> res!1920317 e!2864559)))

(assert (=> d!1445003 (= res!1920317 (not ((_ is Cons!51026) newBucket!178)))))

(assert (=> d!1445003 (= (noDuplicateKeys!1298 newBucket!178) e!2864559)))

(declare-fun b!4592831 () Bool)

(declare-fun e!2864560 () Bool)

(assert (=> b!4592831 (= e!2864559 e!2864560)))

(declare-fun res!1920318 () Bool)

(assert (=> b!4592831 (=> (not res!1920318) (not e!2864560))))

(assert (=> b!4592831 (= res!1920318 (not (containsKey!2110 (t!358144 newBucket!178) (_1!29115 (h!56978 newBucket!178)))))))

(declare-fun b!4592832 () Bool)

(assert (=> b!4592832 (= e!2864560 (noDuplicateKeys!1298 (t!358144 newBucket!178)))))

(assert (= (and d!1445003 (not res!1920317)) b!4592831))

(assert (= (and b!4592831 res!1920318) b!4592832))

(declare-fun m!5416221 () Bool)

(assert (=> b!4592831 m!5416221))

(declare-fun m!5416223 () Bool)

(assert (=> b!4592832 m!5416223))

(assert (=> b!4592619 d!1445003))

(declare-fun bs!1008259 () Bool)

(declare-fun d!1445005 () Bool)

(assert (= bs!1008259 (and d!1445005 start!457720)))

(declare-fun lambda!185161 () Int)

(assert (=> bs!1008259 (not (= lambda!185161 lambda!185132))))

(declare-fun bs!1008260 () Bool)

(assert (= bs!1008260 (and d!1445005 d!1444993)))

(assert (=> bs!1008260 (not (= lambda!185161 lambda!185160))))

(declare-fun bs!1008261 () Bool)

(assert (= bs!1008261 (and d!1445005 d!1444973)))

(assert (=> bs!1008261 (not (= lambda!185161 lambda!185157))))

(declare-fun bs!1008262 () Bool)

(assert (= bs!1008262 (and d!1445005 d!1444961)))

(assert (=> bs!1008262 (not (= lambda!185161 lambda!185151))))

(declare-fun bs!1008263 () Bool)

(assert (= bs!1008263 (and d!1445005 d!1444929)))

(assert (=> bs!1008263 (= lambda!185161 lambda!185140)))

(assert (=> d!1445005 true))

(assert (=> d!1445005 (= (allKeysSameHashInMap!1409 lm!1477 hashF!1107) (forall!10558 (toList!4611 lm!1477) lambda!185161))))

(declare-fun bs!1008264 () Bool)

(assert (= bs!1008264 d!1445005))

(declare-fun m!5416225 () Bool)

(assert (=> bs!1008264 m!5416225))

(assert (=> b!4592620 d!1445005))

(declare-fun d!1445007 () Bool)

(assert (=> d!1445007 true))

(assert (=> d!1445007 true))

(declare-fun lambda!185164 () Int)

(declare-fun forall!10560 (List!51150 Int) Bool)

(assert (=> d!1445007 (= (allKeysSameHash!1154 newBucket!178 hash!344 hashF!1107) (forall!10560 newBucket!178 lambda!185164))))

(declare-fun bs!1008265 () Bool)

(assert (= bs!1008265 d!1445007))

(declare-fun m!5416227 () Bool)

(assert (=> bs!1008265 m!5416227))

(assert (=> b!4592610 d!1445007))

(declare-fun b!4592841 () Bool)

(declare-fun e!2864563 () Bool)

(declare-fun tp!1340161 () Bool)

(declare-fun tp!1340162 () Bool)

(assert (=> b!4592841 (= e!2864563 (and tp!1340161 tp!1340162))))

(assert (=> b!4592621 (= tp!1340146 e!2864563)))

(assert (= (and b!4592621 ((_ is Cons!51027) (toList!4611 lm!1477))) b!4592841))

(declare-fun e!2864566 () Bool)

(declare-fun b!4592846 () Bool)

(declare-fun tp!1340165 () Bool)

(assert (=> b!4592846 (= e!2864566 (and tp_is_empty!28485 tp_is_empty!28487 tp!1340165))))

(assert (=> b!4592624 (= tp!1340147 e!2864566)))

(assert (= (and b!4592624 ((_ is Cons!51026) (t!358144 newBucket!178))) b!4592846))

(declare-fun b_lambda!168675 () Bool)

(assert (= b_lambda!168657 (or start!457720 b_lambda!168675)))

(declare-fun bs!1008266 () Bool)

(declare-fun d!1445009 () Bool)

(assert (= bs!1008266 (and d!1445009 start!457720)))

(assert (=> bs!1008266 (= (dynLambda!21372 lambda!185132 (h!56979 lt!1754228)) (noDuplicateKeys!1298 (_2!29116 (h!56979 lt!1754228))))))

(declare-fun m!5416229 () Bool)

(assert (=> bs!1008266 m!5416229))

(assert (=> b!4592629 d!1445009))

(declare-fun b_lambda!168677 () Bool)

(assert (= b_lambda!168671 (or start!457720 b_lambda!168677)))

(declare-fun bs!1008267 () Bool)

(declare-fun d!1445011 () Bool)

(assert (= bs!1008267 (and d!1445011 start!457720)))

(assert (=> bs!1008267 (= (dynLambda!21372 lambda!185132 (h!56979 (toList!4611 lm!1477))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(declare-fun m!5416231 () Bool)

(assert (=> bs!1008267 m!5416231))

(assert (=> b!4592792 d!1445011))

(declare-fun b_lambda!168679 () Bool)

(assert (= b_lambda!168673 (or start!457720 b_lambda!168679)))

(declare-fun bs!1008268 () Bool)

(declare-fun d!1445013 () Bool)

(assert (= bs!1008268 (and d!1445013 start!457720)))

(assert (=> bs!1008268 (= (dynLambda!21372 lambda!185132 lt!1754229) (noDuplicateKeys!1298 (_2!29116 lt!1754229)))))

(declare-fun m!5416233 () Bool)

(assert (=> bs!1008268 m!5416233))

(assert (=> d!1445001 d!1445013))

(check-sat tp_is_empty!28485 (not d!1444995) (not d!1444987) (not d!1445007) (not b_lambda!168679) (not d!1445001) (not d!1445005) (not d!1444993) (not b!4592789) (not d!1444989) (not bm!320601) (not b!4592715) (not d!1444961) (not b!4592826) (not b!4592759) (not b!4592716) (not b!4592712) (not bs!1008267) (not b!4592832) (not bs!1008268) (not b!4592711) (not b!4592717) (not b!4592814) (not d!1444971) (not b!4592820) (not b!4592831) (not b_lambda!168675) (not b!4592709) (not b!4592791) (not b!4592714) (not b!4592630) (not b!4592804) (not d!1444991) (not b_lambda!168677) (not b!4592812) (not d!1444935) (not b!4592841) (not d!1444999) (not d!1444929) (not bs!1008266) (not d!1444973) (not b!4592793) (not b!4592636) (not d!1444997) (not b!4592823) tp_is_empty!28487 (not b!4592846))
(check-sat)
(get-model)

(declare-fun d!1445035 () Bool)

(declare-fun lt!1754416 () Bool)

(assert (=> d!1445035 (= lt!1754416 (select (content!8618 (t!358145 (toList!4611 lm!1477))) lt!1754229))))

(declare-fun e!2864599 () Bool)

(assert (=> d!1445035 (= lt!1754416 e!2864599)))

(declare-fun res!1920348 () Bool)

(assert (=> d!1445035 (=> (not res!1920348) (not e!2864599))))

(assert (=> d!1445035 (= res!1920348 ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445035 (= (contains!13950 (t!358145 (toList!4611 lm!1477)) lt!1754229) lt!1754416)))

(declare-fun b!4592898 () Bool)

(declare-fun e!2864600 () Bool)

(assert (=> b!4592898 (= e!2864599 e!2864600)))

(declare-fun res!1920349 () Bool)

(assert (=> b!4592898 (=> res!1920349 e!2864600)))

(assert (=> b!4592898 (= res!1920349 (= (h!56979 (t!358145 (toList!4611 lm!1477))) lt!1754229))))

(declare-fun b!4592899 () Bool)

(assert (=> b!4592899 (= e!2864600 (contains!13950 (t!358145 (t!358145 (toList!4611 lm!1477))) lt!1754229))))

(assert (= (and d!1445035 res!1920348) b!4592898))

(assert (= (and b!4592898 (not res!1920349)) b!4592899))

(declare-fun m!5416287 () Bool)

(assert (=> d!1445035 m!5416287))

(declare-fun m!5416289 () Bool)

(assert (=> d!1445035 m!5416289))

(declare-fun m!5416291 () Bool)

(assert (=> b!4592899 m!5416291))

(assert (=> b!4592820 d!1445035))

(declare-fun d!1445037 () Bool)

(declare-fun res!1920350 () Bool)

(declare-fun e!2864601 () Bool)

(assert (=> d!1445037 (=> res!1920350 e!2864601)))

(assert (=> d!1445037 (= res!1920350 ((_ is Nil!51027) (toList!4611 lm!1477)))))

(assert (=> d!1445037 (= (forall!10558 (toList!4611 lm!1477) lambda!185161) e!2864601)))

(declare-fun b!4592900 () Bool)

(declare-fun e!2864602 () Bool)

(assert (=> b!4592900 (= e!2864601 e!2864602)))

(declare-fun res!1920351 () Bool)

(assert (=> b!4592900 (=> (not res!1920351) (not e!2864602))))

(assert (=> b!4592900 (= res!1920351 (dynLambda!21372 lambda!185161 (h!56979 (toList!4611 lm!1477))))))

(declare-fun b!4592901 () Bool)

(assert (=> b!4592901 (= e!2864602 (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185161))))

(assert (= (and d!1445037 (not res!1920350)) b!4592900))

(assert (= (and b!4592900 res!1920351) b!4592901))

(declare-fun b_lambda!168683 () Bool)

(assert (=> (not b_lambda!168683) (not b!4592900)))

(declare-fun m!5416293 () Bool)

(assert (=> b!4592900 m!5416293))

(declare-fun m!5416295 () Bool)

(assert (=> b!4592901 m!5416295))

(assert (=> d!1445005 d!1445037))

(declare-fun d!1445039 () Bool)

(declare-fun lt!1754425 () Bool)

(declare-fun content!8620 (List!51153) (InoxSet K!12395))

(assert (=> d!1445039 (= lt!1754425 (select (content!8620 e!2864471) key!3287))))

(declare-fun e!2864621 () Bool)

(assert (=> d!1445039 (= lt!1754425 e!2864621)))

(declare-fun res!1920369 () Bool)

(assert (=> d!1445039 (=> (not res!1920369) (not e!2864621))))

(assert (=> d!1445039 (= res!1920369 ((_ is Cons!51029) e!2864471))))

(assert (=> d!1445039 (= (contains!13953 e!2864471 key!3287) lt!1754425)))

(declare-fun b!4592926 () Bool)

(declare-fun e!2864620 () Bool)

(assert (=> b!4592926 (= e!2864621 e!2864620)))

(declare-fun res!1920368 () Bool)

(assert (=> b!4592926 (=> res!1920368 e!2864620)))

(assert (=> b!4592926 (= res!1920368 (= (h!56983 e!2864471) key!3287))))

(declare-fun b!4592927 () Bool)

(assert (=> b!4592927 (= e!2864620 (contains!13953 (t!358147 e!2864471) key!3287))))

(assert (= (and d!1445039 res!1920369) b!4592926))

(assert (= (and b!4592926 (not res!1920368)) b!4592927))

(declare-fun m!5416341 () Bool)

(assert (=> d!1445039 m!5416341))

(declare-fun m!5416343 () Bool)

(assert (=> d!1445039 m!5416343))

(declare-fun m!5416345 () Bool)

(assert (=> b!4592927 m!5416345))

(assert (=> bm!320601 d!1445039))

(declare-fun d!1445059 () Bool)

(declare-fun res!1920384 () Bool)

(declare-fun e!2864638 () Bool)

(assert (=> d!1445059 (=> res!1920384 e!2864638)))

(assert (=> d!1445059 (= res!1920384 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (= (_1!29116 (h!56979 (toList!4611 lm!1477))) lt!1754227)))))

(assert (=> d!1445059 (= (containsKey!2114 (toList!4611 lm!1477) lt!1754227) e!2864638)))

(declare-fun b!4592946 () Bool)

(declare-fun e!2864639 () Bool)

(assert (=> b!4592946 (= e!2864638 e!2864639)))

(declare-fun res!1920385 () Bool)

(assert (=> b!4592946 (=> (not res!1920385) (not e!2864639))))

(assert (=> b!4592946 (= res!1920385 (and (or (not ((_ is Cons!51027) (toList!4611 lm!1477))) (bvsle (_1!29116 (h!56979 (toList!4611 lm!1477))) lt!1754227)) ((_ is Cons!51027) (toList!4611 lm!1477)) (bvslt (_1!29116 (h!56979 (toList!4611 lm!1477))) lt!1754227)))))

(declare-fun b!4592947 () Bool)

(assert (=> b!4592947 (= e!2864639 (containsKey!2114 (t!358145 (toList!4611 lm!1477)) lt!1754227))))

(assert (= (and d!1445059 (not res!1920384)) b!4592946))

(assert (= (and b!4592946 res!1920385) b!4592947))

(declare-fun m!5416364 () Bool)

(assert (=> b!4592947 m!5416364))

(assert (=> d!1444991 d!1445059))

(declare-fun b!4593021 () Bool)

(assert (=> b!4593021 true))

(declare-fun bs!1008292 () Bool)

(declare-fun b!4593025 () Bool)

(assert (= bs!1008292 (and b!4593025 b!4593021)))

(declare-fun lambda!185213 () Int)

(declare-fun lambda!185212 () Int)

(assert (=> bs!1008292 (= (= (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= lambda!185213 lambda!185212))))

(assert (=> b!4593025 true))

(declare-fun bs!1008293 () Bool)

(declare-fun b!4593020 () Bool)

(assert (= bs!1008293 (and b!4593020 b!4593021)))

(declare-fun lambda!185214 () Int)

(assert (=> bs!1008293 (= (= (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= lambda!185214 lambda!185212))))

(declare-fun bs!1008294 () Bool)

(assert (= bs!1008294 (and b!4593020 b!4593025)))

(assert (=> bs!1008294 (= (= (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185214 lambda!185213))))

(assert (=> b!4593020 true))

(declare-fun b!4593017 () Bool)

(assert (=> b!4593017 false))

(declare-fun e!2864692 () Unit!107542)

(declare-fun Unit!107564 () Unit!107542)

(assert (=> b!4593017 (= e!2864692 Unit!107564)))

(declare-fun d!1445071 () Bool)

(declare-fun e!2864690 () Bool)

(assert (=> d!1445071 e!2864690))

(declare-fun res!1920425 () Bool)

(assert (=> d!1445071 (=> (not res!1920425) (not e!2864690))))

(declare-fun lt!1754461 () List!51153)

(declare-fun noDuplicate!804 (List!51153) Bool)

(assert (=> d!1445071 (= res!1920425 (noDuplicate!804 lt!1754461))))

(declare-fun e!2864693 () List!51153)

(assert (=> d!1445071 (= lt!1754461 e!2864693)))

(declare-fun c!786574 () Bool)

(assert (=> d!1445071 (= c!786574 ((_ is Cons!51026) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(assert (=> d!1445071 (invariantList!1113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))

(assert (=> d!1445071 (= (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) lt!1754461)))

(declare-fun b!4593018 () Bool)

(declare-fun lambda!185215 () Int)

(declare-fun map!11266 (List!51150 Int) List!51153)

(assert (=> b!4593018 (= e!2864690 (= (content!8620 lt!1754461) (content!8620 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185215))))))

(declare-fun b!4593019 () Bool)

(declare-fun Unit!107565 () Unit!107542)

(assert (=> b!4593019 (= e!2864692 Unit!107565)))

(declare-fun res!1920426 () Bool)

(assert (=> b!4593020 (=> (not res!1920426) (not e!2864690))))

(declare-fun forall!10562 (List!51153 Int) Bool)

(assert (=> b!4593020 (= res!1920426 (forall!10562 lt!1754461 lambda!185214))))

(assert (=> b!4593021 false))

(declare-fun lt!1754459 () Unit!107542)

(declare-fun forallContained!2817 (List!51153 Int K!12395) Unit!107542)

(assert (=> b!4593021 (= lt!1754459 (forallContained!2817 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) lambda!185212 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun e!2864691 () Unit!107542)

(declare-fun Unit!107566 () Unit!107542)

(assert (=> b!4593021 (= e!2864691 Unit!107566)))

(declare-fun b!4593022 () Bool)

(declare-fun res!1920427 () Bool)

(assert (=> b!4593022 (=> (not res!1920427) (not e!2864690))))

(declare-fun length!464 (List!51153) Int)

(declare-fun length!465 (List!51150) Int)

(assert (=> b!4593022 (= res!1920427 (= (length!464 lt!1754461) (length!465 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(declare-fun b!4593023 () Bool)

(declare-fun Unit!107567 () Unit!107542)

(assert (=> b!4593023 (= e!2864691 Unit!107567)))

(declare-fun b!4593024 () Bool)

(assert (=> b!4593024 (= e!2864693 Nil!51029)))

(assert (=> b!4593025 (= e!2864693 (Cons!51029 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun c!786573 () Bool)

(assert (=> b!4593025 (= c!786573 (containsKey!2113 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754460 () Unit!107542)

(assert (=> b!4593025 (= lt!1754460 e!2864692)))

(declare-fun c!786575 () Bool)

(assert (=> b!4593025 (= c!786575 (contains!13953 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754458 () Unit!107542)

(assert (=> b!4593025 (= lt!1754458 e!2864691)))

(declare-fun lt!1754463 () List!51153)

(assert (=> b!4593025 (= lt!1754463 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(declare-fun lt!1754462 () Unit!107542)

(declare-fun lemmaForallContainsAddHeadPreserves!223 (List!51150 List!51153 tuple2!51642) Unit!107542)

(assert (=> b!4593025 (= lt!1754462 (lemmaForallContainsAddHeadPreserves!223 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) lt!1754463 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(assert (=> b!4593025 (forall!10562 lt!1754463 lambda!185213)))

(declare-fun lt!1754464 () Unit!107542)

(assert (=> b!4593025 (= lt!1754464 lt!1754462)))

(assert (= (and d!1445071 c!786574) b!4593025))

(assert (= (and d!1445071 (not c!786574)) b!4593024))

(assert (= (and b!4593025 c!786573) b!4593017))

(assert (= (and b!4593025 (not c!786573)) b!4593019))

(assert (= (and b!4593025 c!786575) b!4593021))

(assert (= (and b!4593025 (not c!786575)) b!4593023))

(assert (= (and d!1445071 res!1920425) b!4593022))

(assert (= (and b!4593022 res!1920427) b!4593020))

(assert (= (and b!4593020 res!1920426) b!4593018))

(declare-fun m!5416431 () Bool)

(assert (=> b!4593020 m!5416431))

(declare-fun m!5416433 () Bool)

(assert (=> d!1445071 m!5416433))

(declare-fun m!5416435 () Bool)

(assert (=> d!1445071 m!5416435))

(declare-fun m!5416437 () Bool)

(assert (=> b!4593018 m!5416437))

(declare-fun m!5416439 () Bool)

(assert (=> b!4593018 m!5416439))

(assert (=> b!4593018 m!5416439))

(declare-fun m!5416441 () Bool)

(assert (=> b!4593018 m!5416441))

(declare-fun m!5416443 () Bool)

(assert (=> b!4593025 m!5416443))

(declare-fun m!5416445 () Bool)

(assert (=> b!4593025 m!5416445))

(declare-fun m!5416447 () Bool)

(assert (=> b!4593025 m!5416447))

(assert (=> b!4593025 m!5416445))

(declare-fun m!5416449 () Bool)

(assert (=> b!4593025 m!5416449))

(declare-fun m!5416451 () Bool)

(assert (=> b!4593025 m!5416451))

(assert (=> b!4593021 m!5416445))

(assert (=> b!4593021 m!5416445))

(declare-fun m!5416453 () Bool)

(assert (=> b!4593021 m!5416453))

(declare-fun m!5416455 () Bool)

(assert (=> b!4593022 m!5416455))

(declare-fun m!5416457 () Bool)

(assert (=> b!4593022 m!5416457))

(assert (=> b!4592712 d!1445071))

(declare-fun d!1445117 () Bool)

(declare-fun res!1920428 () Bool)

(declare-fun e!2864694 () Bool)

(assert (=> d!1445117 (=> res!1920428 e!2864694)))

(assert (=> d!1445117 (= res!1920428 (not ((_ is Cons!51026) (_2!29116 (h!56979 lt!1754228)))))))

(assert (=> d!1445117 (= (noDuplicateKeys!1298 (_2!29116 (h!56979 lt!1754228))) e!2864694)))

(declare-fun b!4593028 () Bool)

(declare-fun e!2864695 () Bool)

(assert (=> b!4593028 (= e!2864694 e!2864695)))

(declare-fun res!1920429 () Bool)

(assert (=> b!4593028 (=> (not res!1920429) (not e!2864695))))

(assert (=> b!4593028 (= res!1920429 (not (containsKey!2110 (t!358144 (_2!29116 (h!56979 lt!1754228))) (_1!29115 (h!56978 (_2!29116 (h!56979 lt!1754228)))))))))

(declare-fun b!4593029 () Bool)

(assert (=> b!4593029 (= e!2864695 (noDuplicateKeys!1298 (t!358144 (_2!29116 (h!56979 lt!1754228)))))))

(assert (= (and d!1445117 (not res!1920428)) b!4593028))

(assert (= (and b!4593028 res!1920429) b!4593029))

(declare-fun m!5416459 () Bool)

(assert (=> b!4593028 m!5416459))

(declare-fun m!5416461 () Bool)

(assert (=> b!4593029 m!5416461))

(assert (=> bs!1008266 d!1445117))

(declare-fun d!1445119 () Bool)

(declare-fun res!1920430 () Bool)

(declare-fun e!2864696 () Bool)

(assert (=> d!1445119 (=> res!1920430 e!2864696)))

(assert (=> d!1445119 (= res!1920430 ((_ is Nil!51027) (t!358145 lt!1754228)))))

(assert (=> d!1445119 (= (forall!10558 (t!358145 lt!1754228) lambda!185132) e!2864696)))

(declare-fun b!4593030 () Bool)

(declare-fun e!2864697 () Bool)

(assert (=> b!4593030 (= e!2864696 e!2864697)))

(declare-fun res!1920431 () Bool)

(assert (=> b!4593030 (=> (not res!1920431) (not e!2864697))))

(assert (=> b!4593030 (= res!1920431 (dynLambda!21372 lambda!185132 (h!56979 (t!358145 lt!1754228))))))

(declare-fun b!4593031 () Bool)

(assert (=> b!4593031 (= e!2864697 (forall!10558 (t!358145 (t!358145 lt!1754228)) lambda!185132))))

(assert (= (and d!1445119 (not res!1920430)) b!4593030))

(assert (= (and b!4593030 res!1920431) b!4593031))

(declare-fun b_lambda!168699 () Bool)

(assert (=> (not b_lambda!168699) (not b!4593030)))

(declare-fun m!5416463 () Bool)

(assert (=> b!4593030 m!5416463))

(declare-fun m!5416465 () Bool)

(assert (=> b!4593031 m!5416465))

(assert (=> b!4592630 d!1445119))

(declare-fun d!1445121 () Bool)

(declare-fun res!1920436 () Bool)

(declare-fun e!2864702 () Bool)

(assert (=> d!1445121 (=> res!1920436 e!2864702)))

(assert (=> d!1445121 (= res!1920436 (and ((_ is Cons!51026) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287)))))

(assert (=> d!1445121 (= (containsKey!2113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) e!2864702)))

(declare-fun b!4593036 () Bool)

(declare-fun e!2864703 () Bool)

(assert (=> b!4593036 (= e!2864702 e!2864703)))

(declare-fun res!1920437 () Bool)

(assert (=> b!4593036 (=> (not res!1920437) (not e!2864703))))

(assert (=> b!4593036 (= res!1920437 ((_ is Cons!51026) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(declare-fun b!4593037 () Bool)

(assert (=> b!4593037 (= e!2864703 (containsKey!2113 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) key!3287))))

(assert (= (and d!1445121 (not res!1920436)) b!4593036))

(assert (= (and b!4593036 res!1920437) b!4593037))

(declare-fun m!5416467 () Bool)

(assert (=> b!4593037 m!5416467))

(assert (=> b!4592709 d!1445121))

(declare-fun d!1445123 () Bool)

(assert (=> d!1445123 (containsKey!2113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287)))

(declare-fun lt!1754467 () Unit!107542)

(declare-fun choose!30702 (List!51150 K!12395) Unit!107542)

(assert (=> d!1445123 (= lt!1754467 (choose!30702 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(assert (=> d!1445123 (invariantList!1113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))

(assert (=> d!1445123 (= (lemmaInGetKeysListThenContainsKey!560 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) lt!1754467)))

(declare-fun bs!1008295 () Bool)

(assert (= bs!1008295 d!1445123))

(assert (=> bs!1008295 m!5416107))

(declare-fun m!5416469 () Bool)

(assert (=> bs!1008295 m!5416469))

(assert (=> bs!1008295 m!5416435))

(assert (=> b!4592709 d!1445123))

(declare-fun d!1445125 () Bool)

(assert (=> d!1445125 (= (get!16857 (getValueByKey!1287 (toList!4611 lm!1477) hash!344)) (v!45304 (getValueByKey!1287 (toList!4611 lm!1477) hash!344)))))

(assert (=> d!1444995 d!1445125))

(declare-fun d!1445127 () Bool)

(declare-fun c!786580 () Bool)

(assert (=> d!1445127 (= c!786580 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (= (_1!29116 (h!56979 (toList!4611 lm!1477))) hash!344)))))

(declare-fun e!2864708 () Option!11367)

(assert (=> d!1445127 (= (getValueByKey!1287 (toList!4611 lm!1477) hash!344) e!2864708)))

(declare-fun b!4593049 () Bool)

(declare-fun e!2864709 () Option!11367)

(assert (=> b!4593049 (= e!2864709 None!11366)))

(declare-fun b!4593047 () Bool)

(assert (=> b!4593047 (= e!2864708 e!2864709)))

(declare-fun c!786581 () Bool)

(assert (=> b!4593047 (= c!786581 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (not (= (_1!29116 (h!56979 (toList!4611 lm!1477))) hash!344))))))

(declare-fun b!4593048 () Bool)

(assert (=> b!4593048 (= e!2864709 (getValueByKey!1287 (t!358145 (toList!4611 lm!1477)) hash!344))))

(declare-fun b!4593046 () Bool)

(assert (=> b!4593046 (= e!2864708 (Some!11366 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (= (and d!1445127 c!786580) b!4593046))

(assert (= (and d!1445127 (not c!786580)) b!4593047))

(assert (= (and b!4593047 c!786581) b!4593048))

(assert (= (and b!4593047 (not c!786581)) b!4593049))

(declare-fun m!5416471 () Bool)

(assert (=> b!4593048 m!5416471))

(assert (=> d!1444995 d!1445127))

(declare-fun d!1445129 () Bool)

(declare-fun res!1920438 () Bool)

(declare-fun e!2864710 () Bool)

(assert (=> d!1445129 (=> res!1920438 e!2864710)))

(assert (=> d!1445129 (= res!1920438 (and ((_ is Cons!51026) lt!1754325) (= (_1!29115 (h!56978 lt!1754325)) key!3287)))))

(assert (=> d!1445129 (= (containsKey!2110 lt!1754325 key!3287) e!2864710)))

(declare-fun b!4593050 () Bool)

(declare-fun e!2864711 () Bool)

(assert (=> b!4593050 (= e!2864710 e!2864711)))

(declare-fun res!1920439 () Bool)

(assert (=> b!4593050 (=> (not res!1920439) (not e!2864711))))

(assert (=> b!4593050 (= res!1920439 ((_ is Cons!51026) lt!1754325))))

(declare-fun b!4593051 () Bool)

(assert (=> b!4593051 (= e!2864711 (containsKey!2110 (t!358144 lt!1754325) key!3287))))

(assert (= (and d!1445129 (not res!1920438)) b!4593050))

(assert (= (and b!4593050 res!1920439) b!4593051))

(declare-fun m!5416473 () Bool)

(assert (=> b!4593051 m!5416473))

(assert (=> d!1444989 d!1445129))

(declare-fun d!1445131 () Bool)

(declare-fun res!1920440 () Bool)

(declare-fun e!2864712 () Bool)

(assert (=> d!1445131 (=> res!1920440 e!2864712)))

(assert (=> d!1445131 (= res!1920440 (not ((_ is Cons!51026) lt!1754235)))))

(assert (=> d!1445131 (= (noDuplicateKeys!1298 lt!1754235) e!2864712)))

(declare-fun b!4593052 () Bool)

(declare-fun e!2864713 () Bool)

(assert (=> b!4593052 (= e!2864712 e!2864713)))

(declare-fun res!1920441 () Bool)

(assert (=> b!4593052 (=> (not res!1920441) (not e!2864713))))

(assert (=> b!4593052 (= res!1920441 (not (containsKey!2110 (t!358144 lt!1754235) (_1!29115 (h!56978 lt!1754235)))))))

(declare-fun b!4593053 () Bool)

(assert (=> b!4593053 (= e!2864713 (noDuplicateKeys!1298 (t!358144 lt!1754235)))))

(assert (= (and d!1445131 (not res!1920440)) b!4593052))

(assert (= (and b!4593052 res!1920441) b!4593053))

(declare-fun m!5416475 () Bool)

(assert (=> b!4593052 m!5416475))

(declare-fun m!5416477 () Bool)

(assert (=> b!4593053 m!5416477))

(assert (=> d!1444989 d!1445131))

(declare-fun d!1445133 () Bool)

(declare-fun lt!1754468 () Bool)

(assert (=> d!1445133 (= lt!1754468 (select (content!8620 (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))) key!3287))))

(declare-fun e!2864715 () Bool)

(assert (=> d!1445133 (= lt!1754468 e!2864715)))

(declare-fun res!1920443 () Bool)

(assert (=> d!1445133 (=> (not res!1920443) (not e!2864715))))

(assert (=> d!1445133 (= res!1920443 ((_ is Cons!51029) (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))))))

(assert (=> d!1445133 (= (contains!13953 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))) key!3287) lt!1754468)))

(declare-fun b!4593054 () Bool)

(declare-fun e!2864714 () Bool)

(assert (=> b!4593054 (= e!2864715 e!2864714)))

(declare-fun res!1920442 () Bool)

(assert (=> b!4593054 (=> res!1920442 e!2864714)))

(assert (=> b!4593054 (= res!1920442 (= (h!56983 (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))) key!3287))))

(declare-fun b!4593055 () Bool)

(assert (=> b!4593055 (= e!2864714 (contains!13953 (t!358147 (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))) key!3287))))

(assert (= (and d!1445133 res!1920443) b!4593054))

(assert (= (and b!4593054 (not res!1920442)) b!4593055))

(assert (=> d!1445133 m!5416099))

(declare-fun m!5416479 () Bool)

(assert (=> d!1445133 m!5416479))

(declare-fun m!5416481 () Bool)

(assert (=> d!1445133 m!5416481))

(declare-fun m!5416483 () Bool)

(assert (=> b!4593055 m!5416483))

(assert (=> b!4592711 d!1445133))

(declare-fun bs!1008296 () Bool)

(declare-fun b!4593081 () Bool)

(assert (= bs!1008296 (and b!4593081 b!4593021)))

(declare-fun lambda!185228 () Int)

(assert (=> bs!1008296 (= (= (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= lambda!185228 lambda!185212))))

(declare-fun bs!1008297 () Bool)

(assert (= bs!1008297 (and b!4593081 b!4593025)))

(assert (=> bs!1008297 (= (= (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185228 lambda!185213))))

(declare-fun bs!1008298 () Bool)

(assert (= bs!1008298 (and b!4593081 b!4593020)))

(assert (=> bs!1008298 (= lambda!185228 lambda!185214)))

(assert (=> b!4593081 true))

(declare-fun bs!1008299 () Bool)

(declare-fun b!4593082 () Bool)

(assert (= bs!1008299 (and b!4593082 b!4593018)))

(declare-fun lambda!185229 () Int)

(assert (=> bs!1008299 (= lambda!185229 lambda!185215)))

(declare-fun d!1445135 () Bool)

(declare-fun e!2864726 () Bool)

(assert (=> d!1445135 e!2864726))

(declare-fun res!1920456 () Bool)

(assert (=> d!1445135 (=> (not res!1920456) (not e!2864726))))

(declare-fun lt!1754485 () List!51153)

(assert (=> d!1445135 (= res!1920456 (noDuplicate!804 lt!1754485))))

(assert (=> d!1445135 (= lt!1754485 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(assert (=> d!1445135 (= (keys!17850 (extractMap!1358 (toList!4611 lm!1477))) lt!1754485)))

(declare-fun b!4593080 () Bool)

(declare-fun res!1920458 () Bool)

(assert (=> b!4593080 (=> (not res!1920458) (not e!2864726))))

(assert (=> b!4593080 (= res!1920458 (= (length!464 lt!1754485) (length!465 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(declare-fun res!1920457 () Bool)

(assert (=> b!4593081 (=> (not res!1920457) (not e!2864726))))

(assert (=> b!4593081 (= res!1920457 (forall!10562 lt!1754485 lambda!185228))))

(assert (=> b!4593082 (= e!2864726 (= (content!8620 lt!1754485) (content!8620 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185229))))))

(assert (= (and d!1445135 res!1920456) b!4593080))

(assert (= (and b!4593080 res!1920458) b!4593081))

(assert (= (and b!4593081 res!1920457) b!4593082))

(declare-fun m!5416485 () Bool)

(assert (=> d!1445135 m!5416485))

(assert (=> d!1445135 m!5416111))

(declare-fun m!5416487 () Bool)

(assert (=> b!4593080 m!5416487))

(assert (=> b!4593080 m!5416457))

(declare-fun m!5416489 () Bool)

(assert (=> b!4593081 m!5416489))

(declare-fun m!5416491 () Bool)

(assert (=> b!4593082 m!5416491))

(declare-fun m!5416493 () Bool)

(assert (=> b!4593082 m!5416493))

(assert (=> b!4593082 m!5416493))

(declare-fun m!5416495 () Bool)

(assert (=> b!4593082 m!5416495))

(assert (=> b!4592711 d!1445135))

(declare-fun d!1445137 () Bool)

(declare-fun res!1920459 () Bool)

(declare-fun e!2864727 () Bool)

(assert (=> d!1445137 (=> res!1920459 e!2864727)))

(assert (=> d!1445137 (= res!1920459 (not ((_ is Cons!51026) (t!358144 newBucket!178))))))

(assert (=> d!1445137 (= (noDuplicateKeys!1298 (t!358144 newBucket!178)) e!2864727)))

(declare-fun b!4593085 () Bool)

(declare-fun e!2864728 () Bool)

(assert (=> b!4593085 (= e!2864727 e!2864728)))

(declare-fun res!1920460 () Bool)

(assert (=> b!4593085 (=> (not res!1920460) (not e!2864728))))

(assert (=> b!4593085 (= res!1920460 (not (containsKey!2110 (t!358144 (t!358144 newBucket!178)) (_1!29115 (h!56978 (t!358144 newBucket!178))))))))

(declare-fun b!4593086 () Bool)

(assert (=> b!4593086 (= e!2864728 (noDuplicateKeys!1298 (t!358144 (t!358144 newBucket!178))))))

(assert (= (and d!1445137 (not res!1920459)) b!4593085))

(assert (= (and b!4593085 res!1920460) b!4593086))

(declare-fun m!5416497 () Bool)

(assert (=> b!4593085 m!5416497))

(declare-fun m!5416499 () Bool)

(assert (=> b!4593086 m!5416499))

(assert (=> b!4592832 d!1445137))

(declare-fun bs!1008315 () Bool)

(declare-fun b!4593124 () Bool)

(assert (= bs!1008315 (and b!4593124 d!1445007)))

(declare-fun lambda!185262 () Int)

(assert (=> bs!1008315 (not (= lambda!185262 lambda!185164))))

(assert (=> b!4593124 true))

(declare-fun bs!1008316 () Bool)

(declare-fun b!4593121 () Bool)

(assert (= bs!1008316 (and b!4593121 d!1445007)))

(declare-fun lambda!185263 () Int)

(assert (=> bs!1008316 (not (= lambda!185263 lambda!185164))))

(declare-fun bs!1008317 () Bool)

(assert (= bs!1008317 (and b!4593121 b!4593124)))

(assert (=> bs!1008317 (= lambda!185263 lambda!185262)))

(assert (=> b!4593121 true))

(declare-fun lambda!185264 () Int)

(assert (=> bs!1008316 (not (= lambda!185264 lambda!185164))))

(declare-fun lt!1754554 () ListMap!3873)

(assert (=> bs!1008317 (= (= lt!1754554 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185264 lambda!185262))))

(assert (=> b!4593121 (= (= lt!1754554 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185264 lambda!185263))))

(assert (=> b!4593121 true))

(declare-fun bs!1008318 () Bool)

(declare-fun d!1445139 () Bool)

(assert (= bs!1008318 (and d!1445139 d!1445007)))

(declare-fun lambda!185265 () Int)

(assert (=> bs!1008318 (not (= lambda!185265 lambda!185164))))

(declare-fun bs!1008319 () Bool)

(assert (= bs!1008319 (and d!1445139 b!4593124)))

(declare-fun lt!1754548 () ListMap!3873)

(assert (=> bs!1008319 (= (= lt!1754548 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185265 lambda!185262))))

(declare-fun bs!1008320 () Bool)

(assert (= bs!1008320 (and d!1445139 b!4593121)))

(assert (=> bs!1008320 (= (= lt!1754548 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185265 lambda!185263))))

(assert (=> bs!1008320 (= (= lt!1754548 lt!1754554) (= lambda!185265 lambda!185264))))

(assert (=> d!1445139 true))

(declare-fun b!4593120 () Bool)

(declare-fun res!1920479 () Bool)

(declare-fun e!2864751 () Bool)

(assert (=> b!4593120 (=> (not res!1920479) (not e!2864751))))

(assert (=> b!4593120 (= res!1920479 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185265))))

(declare-fun bm!320620 () Bool)

(declare-fun c!786593 () Bool)

(declare-fun call!320626 () Bool)

(declare-fun lt!1754552 () ListMap!3873)

(assert (=> bm!320620 (= call!320626 (forall!10560 (ite c!786593 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (toList!4612 lt!1754552)) (ite c!786593 lambda!185262 lambda!185264)))))

(declare-fun b!4593122 () Bool)

(assert (=> b!4593122 (= e!2864751 (invariantList!1113 (toList!4612 lt!1754548)))))

(declare-fun bm!320621 () Bool)

(declare-fun call!320627 () Bool)

(assert (=> bm!320621 (= call!320627 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (ite c!786593 lambda!185262 lambda!185264)))))

(declare-fun bm!320622 () Bool)

(declare-fun call!320625 () Unit!107542)

(declare-fun lemmaContainsAllItsOwnKeys!428 (ListMap!3873) Unit!107542)

(assert (=> bm!320622 (= call!320625 (lemmaContainsAllItsOwnKeys!428 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun e!2864752 () ListMap!3873)

(assert (=> b!4593121 (= e!2864752 lt!1754554)))

(declare-fun +!1730 (ListMap!3873 tuple2!51642) ListMap!3873)

(assert (=> b!4593121 (= lt!1754552 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (=> b!4593121 (= lt!1754554 (addToMapMapFromBucket!803 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754546 () Unit!107542)

(assert (=> b!4593121 (= lt!1754546 call!320625)))

(assert (=> b!4593121 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185263)))

(declare-fun lt!1754543 () Unit!107542)

(assert (=> b!4593121 (= lt!1754543 lt!1754546)))

(assert (=> b!4593121 (forall!10560 (toList!4612 lt!1754552) lambda!185264)))

(declare-fun lt!1754553 () Unit!107542)

(declare-fun Unit!107572 () Unit!107542)

(assert (=> b!4593121 (= lt!1754553 Unit!107572)))

(assert (=> b!4593121 (forall!10560 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) lambda!185264)))

(declare-fun lt!1754545 () Unit!107542)

(declare-fun Unit!107573 () Unit!107542)

(assert (=> b!4593121 (= lt!1754545 Unit!107573)))

(declare-fun lt!1754550 () Unit!107542)

(declare-fun Unit!107574 () Unit!107542)

(assert (=> b!4593121 (= lt!1754550 Unit!107574)))

(declare-fun lt!1754549 () Unit!107542)

(declare-fun forallContained!2819 (List!51150 Int tuple2!51642) Unit!107542)

(assert (=> b!4593121 (= lt!1754549 (forallContained!2819 (toList!4612 lt!1754552) lambda!185264 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (=> b!4593121 (contains!13949 lt!1754552 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun lt!1754541 () Unit!107542)

(declare-fun Unit!107575 () Unit!107542)

(assert (=> b!4593121 (= lt!1754541 Unit!107575)))

(assert (=> b!4593121 (contains!13949 lt!1754554 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun lt!1754547 () Unit!107542)

(declare-fun Unit!107576 () Unit!107542)

(assert (=> b!4593121 (= lt!1754547 Unit!107576)))

(assert (=> b!4593121 (forall!10560 (_2!29116 (h!56979 (toList!4611 lm!1477))) lambda!185264)))

(declare-fun lt!1754551 () Unit!107542)

(declare-fun Unit!107577 () Unit!107542)

(assert (=> b!4593121 (= lt!1754551 Unit!107577)))

(assert (=> b!4593121 call!320626))

(declare-fun lt!1754539 () Unit!107542)

(declare-fun Unit!107578 () Unit!107542)

(assert (=> b!4593121 (= lt!1754539 Unit!107578)))

(declare-fun lt!1754555 () Unit!107542)

(declare-fun Unit!107579 () Unit!107542)

(assert (=> b!4593121 (= lt!1754555 Unit!107579)))

(declare-fun lt!1754540 () Unit!107542)

(declare-fun addForallContainsKeyThenBeforeAdding!428 (ListMap!3873 ListMap!3873 K!12395 V!12641) Unit!107542)

(assert (=> b!4593121 (= lt!1754540 (addForallContainsKeyThenBeforeAdding!428 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754554 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> b!4593121 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185264)))

(declare-fun lt!1754544 () Unit!107542)

(assert (=> b!4593121 (= lt!1754544 lt!1754540)))

(assert (=> b!4593121 call!320627))

(declare-fun lt!1754537 () Unit!107542)

(declare-fun Unit!107580 () Unit!107542)

(assert (=> b!4593121 (= lt!1754537 Unit!107580)))

(declare-fun res!1920481 () Bool)

(assert (=> b!4593121 (= res!1920481 (forall!10560 (_2!29116 (h!56979 (toList!4611 lm!1477))) lambda!185264))))

(declare-fun e!2864753 () Bool)

(assert (=> b!4593121 (=> (not res!1920481) (not e!2864753))))

(assert (=> b!4593121 e!2864753))

(declare-fun lt!1754536 () Unit!107542)

(declare-fun Unit!107581 () Unit!107542)

(assert (=> b!4593121 (= lt!1754536 Unit!107581)))

(assert (=> d!1445139 e!2864751))

(declare-fun res!1920480 () Bool)

(assert (=> d!1445139 (=> (not res!1920480) (not e!2864751))))

(assert (=> d!1445139 (= res!1920480 (forall!10560 (_2!29116 (h!56979 (toList!4611 lm!1477))) lambda!185265))))

(assert (=> d!1445139 (= lt!1754548 e!2864752)))

(assert (=> d!1445139 (= c!786593 ((_ is Nil!51026) (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (=> d!1445139 (noDuplicateKeys!1298 (_2!29116 (h!56979 (toList!4611 lm!1477))))))

(assert (=> d!1445139 (= (addToMapMapFromBucket!803 (_2!29116 (h!56979 (toList!4611 lm!1477))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lt!1754548)))

(declare-fun b!4593123 () Bool)

(assert (=> b!4593123 (= e!2864753 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185264))))

(assert (=> b!4593124 (= e!2864752 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))

(declare-fun lt!1754538 () Unit!107542)

(assert (=> b!4593124 (= lt!1754538 call!320625)))

(assert (=> b!4593124 call!320626))

(declare-fun lt!1754535 () Unit!107542)

(assert (=> b!4593124 (= lt!1754535 lt!1754538)))

(assert (=> b!4593124 call!320627))

(declare-fun lt!1754542 () Unit!107542)

(declare-fun Unit!107582 () Unit!107542)

(assert (=> b!4593124 (= lt!1754542 Unit!107582)))

(assert (= (and d!1445139 c!786593) b!4593124))

(assert (= (and d!1445139 (not c!786593)) b!4593121))

(assert (= (and b!4593121 res!1920481) b!4593123))

(assert (= (or b!4593124 b!4593121) bm!320621))

(assert (= (or b!4593124 b!4593121) bm!320620))

(assert (= (or b!4593124 b!4593121) bm!320622))

(assert (= (and d!1445139 res!1920480) b!4593120))

(assert (= (and b!4593120 res!1920479) b!4593122))

(declare-fun m!5416543 () Bool)

(assert (=> bm!320621 m!5416543))

(declare-fun m!5416545 () Bool)

(assert (=> b!4593123 m!5416545))

(declare-fun m!5416547 () Bool)

(assert (=> bm!320620 m!5416547))

(declare-fun m!5416549 () Bool)

(assert (=> b!4593121 m!5416549))

(declare-fun m!5416551 () Bool)

(assert (=> b!4593121 m!5416551))

(declare-fun m!5416553 () Bool)

(assert (=> b!4593121 m!5416553))

(assert (=> b!4593121 m!5416147))

(declare-fun m!5416555 () Bool)

(assert (=> b!4593121 m!5416555))

(assert (=> b!4593121 m!5416545))

(declare-fun m!5416557 () Bool)

(assert (=> b!4593121 m!5416557))

(declare-fun m!5416559 () Bool)

(assert (=> b!4593121 m!5416559))

(assert (=> b!4593121 m!5416549))

(declare-fun m!5416561 () Bool)

(assert (=> b!4593121 m!5416561))

(assert (=> b!4593121 m!5416147))

(declare-fun m!5416563 () Bool)

(assert (=> b!4593121 m!5416563))

(assert (=> b!4593121 m!5416555))

(declare-fun m!5416565 () Bool)

(assert (=> b!4593121 m!5416565))

(declare-fun m!5416567 () Bool)

(assert (=> b!4593121 m!5416567))

(declare-fun m!5416569 () Bool)

(assert (=> d!1445139 m!5416569))

(assert (=> d!1445139 m!5416231))

(declare-fun m!5416571 () Bool)

(assert (=> b!4593120 m!5416571))

(declare-fun m!5416573 () Bool)

(assert (=> b!4593122 m!5416573))

(assert (=> bm!320622 m!5416147))

(declare-fun m!5416575 () Bool)

(assert (=> bm!320622 m!5416575))

(assert (=> b!4592759 d!1445139))

(declare-fun bs!1008321 () Bool)

(declare-fun d!1445161 () Bool)

(assert (= bs!1008321 (and d!1445161 start!457720)))

(declare-fun lambda!185266 () Int)

(assert (=> bs!1008321 (= lambda!185266 lambda!185132)))

(declare-fun bs!1008322 () Bool)

(assert (= bs!1008322 (and d!1445161 d!1445005)))

(assert (=> bs!1008322 (not (= lambda!185266 lambda!185161))))

(declare-fun bs!1008323 () Bool)

(assert (= bs!1008323 (and d!1445161 d!1444993)))

(assert (=> bs!1008323 (= lambda!185266 lambda!185160)))

(declare-fun bs!1008324 () Bool)

(assert (= bs!1008324 (and d!1445161 d!1444973)))

(assert (=> bs!1008324 (= lambda!185266 lambda!185157)))

(declare-fun bs!1008325 () Bool)

(assert (= bs!1008325 (and d!1445161 d!1444961)))

(assert (=> bs!1008325 (= lambda!185266 lambda!185151)))

(declare-fun bs!1008326 () Bool)

(assert (= bs!1008326 (and d!1445161 d!1444929)))

(assert (=> bs!1008326 (not (= lambda!185266 lambda!185140))))

(declare-fun lt!1754556 () ListMap!3873)

(assert (=> d!1445161 (invariantList!1113 (toList!4612 lt!1754556))))

(declare-fun e!2864754 () ListMap!3873)

(assert (=> d!1445161 (= lt!1754556 e!2864754)))

(declare-fun c!786594 () Bool)

(assert (=> d!1445161 (= c!786594 ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445161 (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185266)))

(assert (=> d!1445161 (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754556)))

(declare-fun b!4593127 () Bool)

(assert (=> b!4593127 (= e!2864754 (addToMapMapFromBucket!803 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))))))

(declare-fun b!4593128 () Bool)

(assert (=> b!4593128 (= e!2864754 (ListMap!3874 Nil!51026))))

(assert (= (and d!1445161 c!786594) b!4593127))

(assert (= (and d!1445161 (not c!786594)) b!4593128))

(declare-fun m!5416577 () Bool)

(assert (=> d!1445161 m!5416577))

(declare-fun m!5416579 () Bool)

(assert (=> d!1445161 m!5416579))

(declare-fun m!5416581 () Bool)

(assert (=> b!4593127 m!5416581))

(assert (=> b!4593127 m!5416581))

(declare-fun m!5416583 () Bool)

(assert (=> b!4593127 m!5416583))

(assert (=> b!4592759 d!1445161))

(declare-fun d!1445163 () Bool)

(declare-fun isEmpty!28850 (Option!11367) Bool)

(assert (=> d!1445163 (= (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227)) (not (isEmpty!28850 (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227))))))

(declare-fun bs!1008327 () Bool)

(assert (= bs!1008327 d!1445163))

(assert (=> bs!1008327 m!5416193))

(declare-fun m!5416585 () Bool)

(assert (=> bs!1008327 m!5416585))

(assert (=> b!4592814 d!1445163))

(declare-fun d!1445165 () Bool)

(declare-fun c!786595 () Bool)

(assert (=> d!1445165 (= c!786595 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (= (_1!29116 (h!56979 (toList!4611 lm!1477))) lt!1754227)))))

(declare-fun e!2864755 () Option!11367)

(assert (=> d!1445165 (= (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227) e!2864755)))

(declare-fun b!4593132 () Bool)

(declare-fun e!2864756 () Option!11367)

(assert (=> b!4593132 (= e!2864756 None!11366)))

(declare-fun b!4593130 () Bool)

(assert (=> b!4593130 (= e!2864755 e!2864756)))

(declare-fun c!786596 () Bool)

(assert (=> b!4593130 (= c!786596 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (not (= (_1!29116 (h!56979 (toList!4611 lm!1477))) lt!1754227))))))

(declare-fun b!4593131 () Bool)

(assert (=> b!4593131 (= e!2864756 (getValueByKey!1287 (t!358145 (toList!4611 lm!1477)) lt!1754227))))

(declare-fun b!4593129 () Bool)

(assert (=> b!4593129 (= e!2864755 (Some!11366 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (= (and d!1445165 c!786595) b!4593129))

(assert (= (and d!1445165 (not c!786595)) b!4593130))

(assert (= (and b!4593130 c!786596) b!4593131))

(assert (= (and b!4593130 (not c!786596)) b!4593132))

(declare-fun m!5416587 () Bool)

(assert (=> b!4593131 m!5416587))

(assert (=> b!4592814 d!1445165))

(declare-fun d!1445167 () Bool)

(declare-fun res!1920482 () Bool)

(declare-fun e!2864757 () Bool)

(assert (=> d!1445167 (=> res!1920482 e!2864757)))

(assert (=> d!1445167 (= res!1920482 (and ((_ is Cons!51026) (t!358144 newBucket!178)) (= (_1!29115 (h!56978 (t!358144 newBucket!178))) (_1!29115 (h!56978 newBucket!178)))))))

(assert (=> d!1445167 (= (containsKey!2110 (t!358144 newBucket!178) (_1!29115 (h!56978 newBucket!178))) e!2864757)))

(declare-fun b!4593133 () Bool)

(declare-fun e!2864758 () Bool)

(assert (=> b!4593133 (= e!2864757 e!2864758)))

(declare-fun res!1920483 () Bool)

(assert (=> b!4593133 (=> (not res!1920483) (not e!2864758))))

(assert (=> b!4593133 (= res!1920483 ((_ is Cons!51026) (t!358144 newBucket!178)))))

(declare-fun b!4593134 () Bool)

(assert (=> b!4593134 (= e!2864758 (containsKey!2110 (t!358144 (t!358144 newBucket!178)) (_1!29115 (h!56978 newBucket!178))))))

(assert (= (and d!1445167 (not res!1920482)) b!4593133))

(assert (= (and b!4593133 res!1920483) b!4593134))

(declare-fun m!5416589 () Bool)

(assert (=> b!4593134 m!5416589))

(assert (=> b!4592831 d!1445167))

(declare-fun d!1445169 () Bool)

(declare-fun c!786599 () Bool)

(assert (=> d!1445169 (= c!786599 ((_ is Nil!51027) (toList!4611 lm!1477)))))

(declare-fun e!2864761 () (InoxSet tuple2!51644))

(assert (=> d!1445169 (= (content!8618 (toList!4611 lm!1477)) e!2864761)))

(declare-fun b!4593139 () Bool)

(assert (=> b!4593139 (= e!2864761 ((as const (Array tuple2!51644 Bool)) false))))

(declare-fun b!4593140 () Bool)

(assert (=> b!4593140 (= e!2864761 ((_ map or) (store ((as const (Array tuple2!51644 Bool)) false) (h!56979 (toList!4611 lm!1477)) true) (content!8618 (t!358145 (toList!4611 lm!1477)))))))

(assert (= (and d!1445169 c!786599) b!4593139))

(assert (= (and d!1445169 (not c!786599)) b!4593140))

(declare-fun m!5416591 () Bool)

(assert (=> b!4593140 m!5416591))

(assert (=> b!4593140 m!5416287))

(assert (=> d!1444997 d!1445169))

(assert (=> d!1444973 d!1444935))

(assert (=> d!1444973 d!1444961))

(declare-fun d!1445171 () Bool)

(assert (=> d!1445171 (not (contains!13949 (extractMap!1358 (toList!4611 lm!1477)) key!3287))))

(assert (=> d!1445171 true))

(declare-fun _$26!521 () Unit!107542)

(assert (=> d!1445171 (= (choose!30693 lm!1477 key!3287 hashF!1107) _$26!521)))

(declare-fun bs!1008328 () Bool)

(assert (= bs!1008328 d!1445171))

(assert (=> bs!1008328 m!5416013))

(assert (=> bs!1008328 m!5416013))

(assert (=> bs!1008328 m!5416015))

(assert (=> d!1444973 d!1445171))

(declare-fun d!1445173 () Bool)

(declare-fun res!1920484 () Bool)

(declare-fun e!2864762 () Bool)

(assert (=> d!1445173 (=> res!1920484 e!2864762)))

(assert (=> d!1445173 (= res!1920484 ((_ is Nil!51027) (toList!4611 lm!1477)))))

(assert (=> d!1445173 (= (forall!10558 (toList!4611 lm!1477) lambda!185157) e!2864762)))

(declare-fun b!4593141 () Bool)

(declare-fun e!2864763 () Bool)

(assert (=> b!4593141 (= e!2864762 e!2864763)))

(declare-fun res!1920485 () Bool)

(assert (=> b!4593141 (=> (not res!1920485) (not e!2864763))))

(assert (=> b!4593141 (= res!1920485 (dynLambda!21372 lambda!185157 (h!56979 (toList!4611 lm!1477))))))

(declare-fun b!4593142 () Bool)

(assert (=> b!4593142 (= e!2864763 (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185157))))

(assert (= (and d!1445173 (not res!1920484)) b!4593141))

(assert (= (and b!4593141 res!1920485) b!4593142))

(declare-fun b_lambda!168721 () Bool)

(assert (=> (not b_lambda!168721) (not b!4593141)))

(declare-fun m!5416593 () Bool)

(assert (=> b!4593141 m!5416593))

(declare-fun m!5416595 () Bool)

(assert (=> b!4593142 m!5416595))

(assert (=> d!1444973 d!1445173))

(declare-fun d!1445175 () Bool)

(declare-fun res!1920490 () Bool)

(declare-fun e!2864768 () Bool)

(assert (=> d!1445175 (=> res!1920490 e!2864768)))

(assert (=> d!1445175 (= res!1920490 ((_ is Nil!51026) newBucket!178))))

(assert (=> d!1445175 (= (forall!10560 newBucket!178 lambda!185164) e!2864768)))

(declare-fun b!4593147 () Bool)

(declare-fun e!2864769 () Bool)

(assert (=> b!4593147 (= e!2864768 e!2864769)))

(declare-fun res!1920491 () Bool)

(assert (=> b!4593147 (=> (not res!1920491) (not e!2864769))))

(declare-fun dynLambda!21374 (Int tuple2!51642) Bool)

(assert (=> b!4593147 (= res!1920491 (dynLambda!21374 lambda!185164 (h!56978 newBucket!178)))))

(declare-fun b!4593148 () Bool)

(assert (=> b!4593148 (= e!2864769 (forall!10560 (t!358144 newBucket!178) lambda!185164))))

(assert (= (and d!1445175 (not res!1920490)) b!4593147))

(assert (= (and b!4593147 res!1920491) b!4593148))

(declare-fun b_lambda!168723 () Bool)

(assert (=> (not b_lambda!168723) (not b!4593147)))

(declare-fun m!5416597 () Bool)

(assert (=> b!4593147 m!5416597))

(declare-fun m!5416599 () Bool)

(assert (=> b!4593148 m!5416599))

(assert (=> d!1445007 d!1445175))

(declare-fun d!1445177 () Bool)

(declare-fun choose!30703 (Hashable!5697 K!12395) (_ BitVec 64))

(assert (=> d!1445177 (= (hash!3177 hashF!1107 key!3287) (choose!30703 hashF!1107 key!3287))))

(declare-fun bs!1008329 () Bool)

(assert (= bs!1008329 d!1445177))

(declare-fun m!5416601 () Bool)

(assert (=> bs!1008329 m!5416601))

(assert (=> d!1444971 d!1445177))

(declare-fun d!1445179 () Bool)

(declare-fun res!1920492 () Bool)

(declare-fun e!2864770 () Bool)

(assert (=> d!1445179 (=> res!1920492 e!2864770)))

(assert (=> d!1445179 (= res!1920492 (and ((_ is Cons!51026) (_2!29116 (h!56979 lt!1754228))) (= (_1!29115 (h!56978 (_2!29116 (h!56979 lt!1754228)))) key!3287)))))

(assert (=> d!1445179 (= (containsKey!2110 (_2!29116 (h!56979 lt!1754228)) key!3287) e!2864770)))

(declare-fun b!4593149 () Bool)

(declare-fun e!2864771 () Bool)

(assert (=> b!4593149 (= e!2864770 e!2864771)))

(declare-fun res!1920493 () Bool)

(assert (=> b!4593149 (=> (not res!1920493) (not e!2864771))))

(assert (=> b!4593149 (= res!1920493 ((_ is Cons!51026) (_2!29116 (h!56979 lt!1754228))))))

(declare-fun b!4593150 () Bool)

(assert (=> b!4593150 (= e!2864771 (containsKey!2110 (t!358144 (_2!29116 (h!56979 lt!1754228))) key!3287))))

(assert (= (and d!1445179 (not res!1920492)) b!4593149))

(assert (= (and b!4593149 res!1920493) b!4593150))

(declare-fun m!5416603 () Bool)

(assert (=> b!4593150 m!5416603))

(assert (=> b!4592789 d!1445179))

(declare-fun d!1445181 () Bool)

(assert (=> d!1445181 (dynLambda!21372 lambda!185132 lt!1754229)))

(assert (=> d!1445181 true))

(declare-fun _$7!2111 () Unit!107542)

(assert (=> d!1445181 (= (choose!30696 (toList!4611 lm!1477) lambda!185132 lt!1754229) _$7!2111)))

(declare-fun b_lambda!168725 () Bool)

(assert (=> (not b_lambda!168725) (not d!1445181)))

(declare-fun bs!1008330 () Bool)

(assert (= bs!1008330 d!1445181))

(assert (=> bs!1008330 m!5416217))

(assert (=> d!1445001 d!1445181))

(assert (=> d!1445001 d!1444985))

(declare-fun d!1445183 () Bool)

(declare-fun res!1920494 () Bool)

(declare-fun e!2864772 () Bool)

(assert (=> d!1445183 (=> res!1920494 e!2864772)))

(assert (=> d!1445183 (= res!1920494 (and ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (= (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) key!3287)))))

(assert (=> d!1445183 (= (containsKey!2110 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) key!3287) e!2864772)))

(declare-fun b!4593151 () Bool)

(declare-fun e!2864773 () Bool)

(assert (=> b!4593151 (= e!2864772 e!2864773)))

(declare-fun res!1920495 () Bool)

(assert (=> b!4593151 (=> (not res!1920495) (not e!2864773))))

(assert (=> b!4593151 (= res!1920495 ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun b!4593152 () Bool)

(assert (=> b!4593152 (= e!2864773 (containsKey!2110 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) key!3287))))

(assert (= (and d!1445183 (not res!1920494)) b!4593151))

(assert (= (and b!4593151 res!1920495) b!4593152))

(declare-fun m!5416605 () Bool)

(assert (=> b!4593152 m!5416605))

(assert (=> b!4592636 d!1445183))

(declare-fun d!1445185 () Bool)

(declare-fun res!1920497 () Bool)

(declare-fun e!2864776 () Bool)

(assert (=> d!1445185 (=> res!1920497 e!2864776)))

(declare-fun e!2864775 () Bool)

(assert (=> d!1445185 (= res!1920497 e!2864775)))

(declare-fun res!1920498 () Bool)

(assert (=> d!1445185 (=> (not res!1920498) (not e!2864775))))

(assert (=> d!1445185 (= res!1920498 ((_ is Cons!51027) (t!358145 lt!1754228)))))

(assert (=> d!1445185 (= (containsKeyBiggerList!254 (t!358145 lt!1754228) key!3287) e!2864776)))

(declare-fun b!4593153 () Bool)

(assert (=> b!4593153 (= e!2864775 (containsKey!2110 (_2!29116 (h!56979 (t!358145 lt!1754228))) key!3287))))

(declare-fun b!4593154 () Bool)

(declare-fun e!2864774 () Bool)

(assert (=> b!4593154 (= e!2864776 e!2864774)))

(declare-fun res!1920496 () Bool)

(assert (=> b!4593154 (=> (not res!1920496) (not e!2864774))))

(assert (=> b!4593154 (= res!1920496 ((_ is Cons!51027) (t!358145 lt!1754228)))))

(declare-fun b!4593155 () Bool)

(assert (=> b!4593155 (= e!2864774 (containsKeyBiggerList!254 (t!358145 (t!358145 lt!1754228)) key!3287))))

(assert (= (and d!1445185 res!1920498) b!4593153))

(assert (= (and d!1445185 (not res!1920497)) b!4593154))

(assert (= (and b!4593154 res!1920496) b!4593155))

(declare-fun m!5416607 () Bool)

(assert (=> b!4593153 m!5416607))

(declare-fun m!5416609 () Bool)

(assert (=> b!4593155 m!5416609))

(assert (=> b!4592791 d!1445185))

(declare-fun d!1445187 () Bool)

(declare-fun res!1920499 () Bool)

(declare-fun e!2864777 () Bool)

(assert (=> d!1445187 (=> res!1920499 e!2864777)))

(assert (=> d!1445187 (= res!1920499 (not ((_ is Cons!51026) (_2!29116 lt!1754229))))))

(assert (=> d!1445187 (= (noDuplicateKeys!1298 (_2!29116 lt!1754229)) e!2864777)))

(declare-fun b!4593156 () Bool)

(declare-fun e!2864778 () Bool)

(assert (=> b!4593156 (= e!2864777 e!2864778)))

(declare-fun res!1920500 () Bool)

(assert (=> b!4593156 (=> (not res!1920500) (not e!2864778))))

(assert (=> b!4593156 (= res!1920500 (not (containsKey!2110 (t!358144 (_2!29116 lt!1754229)) (_1!29115 (h!56978 (_2!29116 lt!1754229))))))))

(declare-fun b!4593157 () Bool)

(assert (=> b!4593157 (= e!2864778 (noDuplicateKeys!1298 (t!358144 (_2!29116 lt!1754229))))))

(assert (= (and d!1445187 (not res!1920499)) b!4593156))

(assert (= (and b!4593156 res!1920500) b!4593157))

(declare-fun m!5416611 () Bool)

(assert (=> b!4593156 m!5416611))

(declare-fun m!5416613 () Bool)

(assert (=> b!4593157 m!5416613))

(assert (=> bs!1008268 d!1445187))

(declare-fun d!1445189 () Bool)

(assert (=> d!1445189 (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227))))

(declare-fun lt!1754559 () Unit!107542)

(declare-fun choose!30704 (List!51151 (_ BitVec 64)) Unit!107542)

(assert (=> d!1445189 (= lt!1754559 (choose!30704 (toList!4611 lm!1477) lt!1754227))))

(declare-fun e!2864781 () Bool)

(assert (=> d!1445189 e!2864781))

(declare-fun res!1920503 () Bool)

(assert (=> d!1445189 (=> (not res!1920503) (not e!2864781))))

(assert (=> d!1445189 (= res!1920503 (isStrictlySorted!528 (toList!4611 lm!1477)))))

(assert (=> d!1445189 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1191 (toList!4611 lm!1477) lt!1754227) lt!1754559)))

(declare-fun b!4593160 () Bool)

(assert (=> b!4593160 (= e!2864781 (containsKey!2114 (toList!4611 lm!1477) lt!1754227))))

(assert (= (and d!1445189 res!1920503) b!4593160))

(assert (=> d!1445189 m!5416193))

(assert (=> d!1445189 m!5416193))

(assert (=> d!1445189 m!5416195))

(declare-fun m!5416615 () Bool)

(assert (=> d!1445189 m!5416615))

(assert (=> d!1445189 m!5416181))

(assert (=> b!4593160 m!5416189))

(assert (=> b!4592812 d!1445189))

(assert (=> b!4592812 d!1445163))

(assert (=> b!4592812 d!1445165))

(declare-fun d!1445191 () Bool)

(declare-fun res!1920508 () Bool)

(declare-fun e!2864786 () Bool)

(assert (=> d!1445191 (=> res!1920508 e!2864786)))

(assert (=> d!1445191 (= res!1920508 (or ((_ is Nil!51027) (toList!4611 lm!1477)) ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477)))))))

(assert (=> d!1445191 (= (isStrictlySorted!528 (toList!4611 lm!1477)) e!2864786)))

(declare-fun b!4593165 () Bool)

(declare-fun e!2864787 () Bool)

(assert (=> b!4593165 (= e!2864786 e!2864787)))

(declare-fun res!1920509 () Bool)

(assert (=> b!4593165 (=> (not res!1920509) (not e!2864787))))

(assert (=> b!4593165 (= res!1920509 (bvslt (_1!29116 (h!56979 (toList!4611 lm!1477))) (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(declare-fun b!4593166 () Bool)

(assert (=> b!4593166 (= e!2864787 (isStrictlySorted!528 (t!358145 (toList!4611 lm!1477))))))

(assert (= (and d!1445191 (not res!1920508)) b!4593165))

(assert (= (and b!4593165 res!1920509) b!4593166))

(declare-fun m!5416617 () Bool)

(assert (=> b!4593166 m!5416617))

(assert (=> d!1444987 d!1445191))

(declare-fun b!4593167 () Bool)

(declare-fun e!2864788 () List!51150)

(assert (=> b!4593167 (= e!2864788 (t!358144 (t!358144 lt!1754235)))))

(declare-fun d!1445193 () Bool)

(declare-fun lt!1754560 () List!51150)

(assert (=> d!1445193 (not (containsKey!2110 lt!1754560 key!3287))))

(assert (=> d!1445193 (= lt!1754560 e!2864788)))

(declare-fun c!786600 () Bool)

(assert (=> d!1445193 (= c!786600 (and ((_ is Cons!51026) (t!358144 lt!1754235)) (= (_1!29115 (h!56978 (t!358144 lt!1754235))) key!3287)))))

(assert (=> d!1445193 (noDuplicateKeys!1298 (t!358144 lt!1754235))))

(assert (=> d!1445193 (= (removePairForKey!923 (t!358144 lt!1754235) key!3287) lt!1754560)))

(declare-fun b!4593170 () Bool)

(declare-fun e!2864789 () List!51150)

(assert (=> b!4593170 (= e!2864789 Nil!51026)))

(declare-fun b!4593169 () Bool)

(assert (=> b!4593169 (= e!2864789 (Cons!51026 (h!56978 (t!358144 lt!1754235)) (removePairForKey!923 (t!358144 (t!358144 lt!1754235)) key!3287)))))

(declare-fun b!4593168 () Bool)

(assert (=> b!4593168 (= e!2864788 e!2864789)))

(declare-fun c!786601 () Bool)

(assert (=> b!4593168 (= c!786601 ((_ is Cons!51026) (t!358144 lt!1754235)))))

(assert (= (and d!1445193 c!786600) b!4593167))

(assert (= (and d!1445193 (not c!786600)) b!4593168))

(assert (= (and b!4593168 c!786601) b!4593169))

(assert (= (and b!4593168 (not c!786601)) b!4593170))

(declare-fun m!5416619 () Bool)

(assert (=> d!1445193 m!5416619))

(assert (=> d!1445193 m!5416477))

(declare-fun m!5416621 () Bool)

(assert (=> b!4593169 m!5416621))

(assert (=> b!4592804 d!1445193))

(declare-fun d!1445195 () Bool)

(assert (=> d!1445195 (isDefined!8634 (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(declare-fun lt!1754563 () Unit!107542)

(declare-fun choose!30705 (List!51150 K!12395) Unit!107542)

(assert (=> d!1445195 (= lt!1754563 (choose!30705 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(assert (=> d!1445195 (invariantList!1113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))

(assert (=> d!1445195 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1190 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) lt!1754563)))

(declare-fun bs!1008331 () Bool)

(assert (= bs!1008331 d!1445195))

(assert (=> bs!1008331 m!5416095))

(assert (=> bs!1008331 m!5416095))

(assert (=> bs!1008331 m!5416097))

(declare-fun m!5416623 () Bool)

(assert (=> bs!1008331 m!5416623))

(assert (=> bs!1008331 m!5416435))

(assert (=> b!4592716 d!1445195))

(declare-fun d!1445197 () Bool)

(declare-fun isEmpty!28851 (Option!11366) Bool)

(assert (=> d!1445197 (= (isDefined!8634 (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287)) (not (isEmpty!28851 (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))))

(declare-fun bs!1008332 () Bool)

(assert (= bs!1008332 d!1445197))

(assert (=> bs!1008332 m!5416095))

(declare-fun m!5416625 () Bool)

(assert (=> bs!1008332 m!5416625))

(assert (=> b!4592716 d!1445197))

(declare-fun b!4593181 () Bool)

(declare-fun e!2864795 () Option!11366)

(assert (=> b!4593181 (= e!2864795 (getValueByKey!1286 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) key!3287))))

(declare-fun d!1445199 () Bool)

(declare-fun c!786606 () Bool)

(assert (=> d!1445199 (= c!786606 (and ((_ is Cons!51026) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287)))))

(declare-fun e!2864794 () Option!11366)

(assert (=> d!1445199 (= (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) e!2864794)))

(declare-fun b!4593179 () Bool)

(assert (=> b!4593179 (= e!2864794 (Some!11365 (_2!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun b!4593182 () Bool)

(assert (=> b!4593182 (= e!2864795 None!11365)))

(declare-fun b!4593180 () Bool)

(assert (=> b!4593180 (= e!2864794 e!2864795)))

(declare-fun c!786607 () Bool)

(assert (=> b!4593180 (= c!786607 (and ((_ is Cons!51026) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (not (= (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))))

(assert (= (and d!1445199 c!786606) b!4593179))

(assert (= (and d!1445199 (not c!786606)) b!4593180))

(assert (= (and b!4593180 c!786607) b!4593181))

(assert (= (and b!4593180 (not c!786607)) b!4593182))

(declare-fun m!5416627 () Bool)

(assert (=> b!4593181 m!5416627))

(assert (=> b!4592716 d!1445199))

(declare-fun d!1445201 () Bool)

(assert (=> d!1445201 (contains!13953 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) key!3287)))

(declare-fun lt!1754566 () Unit!107542)

(declare-fun choose!30706 (List!51150 K!12395) Unit!107542)

(assert (=> d!1445201 (= lt!1754566 (choose!30706 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(assert (=> d!1445201 (invariantList!1113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))

(assert (=> d!1445201 (= (lemmaInListThenGetKeysListContains!557 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) lt!1754566)))

(declare-fun bs!1008333 () Bool)

(assert (= bs!1008333 d!1445201))

(assert (=> bs!1008333 m!5416111))

(assert (=> bs!1008333 m!5416111))

(declare-fun m!5416629 () Bool)

(assert (=> bs!1008333 m!5416629))

(declare-fun m!5416631 () Bool)

(assert (=> bs!1008333 m!5416631))

(assert (=> bs!1008333 m!5416435))

(assert (=> b!4592716 d!1445201))

(assert (=> d!1444935 d!1445121))

(assert (=> b!4592717 d!1445135))

(declare-fun d!1445203 () Bool)

(declare-fun res!1920510 () Bool)

(declare-fun e!2864796 () Bool)

(assert (=> d!1445203 (=> res!1920510 e!2864796)))

(assert (=> d!1445203 (= res!1920510 ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445203 (= (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185132) e!2864796)))

(declare-fun b!4593183 () Bool)

(declare-fun e!2864797 () Bool)

(assert (=> b!4593183 (= e!2864796 e!2864797)))

(declare-fun res!1920511 () Bool)

(assert (=> b!4593183 (=> (not res!1920511) (not e!2864797))))

(assert (=> b!4593183 (= res!1920511 (dynLambda!21372 lambda!185132 (h!56979 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun b!4593184 () Bool)

(assert (=> b!4593184 (= e!2864797 (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185132))))

(assert (= (and d!1445203 (not res!1920510)) b!4593183))

(assert (= (and b!4593183 res!1920511) b!4593184))

(declare-fun b_lambda!168727 () Bool)

(assert (=> (not b_lambda!168727) (not b!4593183)))

(declare-fun m!5416633 () Bool)

(assert (=> b!4593183 m!5416633))

(declare-fun m!5416635 () Bool)

(assert (=> b!4593184 m!5416635))

(assert (=> b!4592793 d!1445203))

(assert (=> b!4592823 d!1445127))

(declare-fun d!1445205 () Bool)

(declare-fun res!1920512 () Bool)

(declare-fun e!2864798 () Bool)

(assert (=> d!1445205 (=> res!1920512 e!2864798)))

(assert (=> d!1445205 (= res!1920512 (not ((_ is Cons!51026) (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (=> d!1445205 (= (noDuplicateKeys!1298 (_2!29116 (h!56979 (toList!4611 lm!1477)))) e!2864798)))

(declare-fun b!4593185 () Bool)

(declare-fun e!2864799 () Bool)

(assert (=> b!4593185 (= e!2864798 e!2864799)))

(declare-fun res!1920513 () Bool)

(assert (=> b!4593185 (=> (not res!1920513) (not e!2864799))))

(assert (=> b!4593185 (= res!1920513 (not (containsKey!2110 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun b!4593186 () Bool)

(assert (=> b!4593186 (= e!2864799 (noDuplicateKeys!1298 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (= (and d!1445205 (not res!1920512)) b!4593185))

(assert (= (and b!4593185 res!1920513) b!4593186))

(declare-fun m!5416637 () Bool)

(assert (=> b!4593185 m!5416637))

(declare-fun m!5416639 () Bool)

(assert (=> b!4593186 m!5416639))

(assert (=> bs!1008267 d!1445205))

(declare-fun d!1445207 () Bool)

(declare-fun e!2864801 () Bool)

(assert (=> d!1445207 e!2864801))

(declare-fun res!1920514 () Bool)

(assert (=> d!1445207 (=> res!1920514 e!2864801)))

(declare-fun lt!1754567 () Bool)

(assert (=> d!1445207 (= res!1920514 (not lt!1754567))))

(declare-fun lt!1754570 () Bool)

(assert (=> d!1445207 (= lt!1754567 lt!1754570)))

(declare-fun lt!1754568 () Unit!107542)

(declare-fun e!2864800 () Unit!107542)

(assert (=> d!1445207 (= lt!1754568 e!2864800)))

(declare-fun c!786608 () Bool)

(assert (=> d!1445207 (= c!786608 lt!1754570)))

(assert (=> d!1445207 (= lt!1754570 (containsKey!2114 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)))))

(assert (=> d!1445207 (= (contains!13951 lm!1477 (hash!3175 hashF!1107 key!3287)) lt!1754567)))

(declare-fun b!4593187 () Bool)

(declare-fun lt!1754569 () Unit!107542)

(assert (=> b!4593187 (= e!2864800 lt!1754569)))

(assert (=> b!4593187 (= lt!1754569 (lemmaContainsKeyImpliesGetValueByKeyDefined!1191 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)))))

(assert (=> b!4593187 (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)))))

(declare-fun b!4593188 () Bool)

(declare-fun Unit!107583 () Unit!107542)

(assert (=> b!4593188 (= e!2864800 Unit!107583)))

(declare-fun b!4593189 () Bool)

(assert (=> b!4593189 (= e!2864801 (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287))))))

(assert (= (and d!1445207 c!786608) b!4593187))

(assert (= (and d!1445207 (not c!786608)) b!4593188))

(assert (= (and d!1445207 (not res!1920514)) b!4593189))

(assert (=> d!1445207 m!5416017))

(declare-fun m!5416641 () Bool)

(assert (=> d!1445207 m!5416641))

(assert (=> b!4593187 m!5416017))

(declare-fun m!5416643 () Bool)

(assert (=> b!4593187 m!5416643))

(assert (=> b!4593187 m!5416017))

(declare-fun m!5416645 () Bool)

(assert (=> b!4593187 m!5416645))

(assert (=> b!4593187 m!5416645))

(declare-fun m!5416647 () Bool)

(assert (=> b!4593187 m!5416647))

(assert (=> b!4593189 m!5416017))

(assert (=> b!4593189 m!5416645))

(assert (=> b!4593189 m!5416645))

(assert (=> b!4593189 m!5416647))

(assert (=> d!1444993 d!1445207))

(assert (=> d!1444993 d!1444971))

(declare-fun d!1445209 () Bool)

(assert (=> d!1445209 (contains!13951 lm!1477 (hash!3175 hashF!1107 key!3287))))

(assert (=> d!1445209 true))

(declare-fun _$27!1408 () Unit!107542)

(assert (=> d!1445209 (= (choose!30694 lm!1477 key!3287 hashF!1107) _$27!1408)))

(declare-fun bs!1008334 () Bool)

(assert (= bs!1008334 d!1445209))

(assert (=> bs!1008334 m!5416017))

(assert (=> bs!1008334 m!5416017))

(assert (=> bs!1008334 m!5416197))

(assert (=> d!1444993 d!1445209))

(declare-fun d!1445211 () Bool)

(declare-fun res!1920515 () Bool)

(declare-fun e!2864802 () Bool)

(assert (=> d!1445211 (=> res!1920515 e!2864802)))

(assert (=> d!1445211 (= res!1920515 ((_ is Nil!51027) (toList!4611 lm!1477)))))

(assert (=> d!1445211 (= (forall!10558 (toList!4611 lm!1477) lambda!185160) e!2864802)))

(declare-fun b!4593190 () Bool)

(declare-fun e!2864803 () Bool)

(assert (=> b!4593190 (= e!2864802 e!2864803)))

(declare-fun res!1920516 () Bool)

(assert (=> b!4593190 (=> (not res!1920516) (not e!2864803))))

(assert (=> b!4593190 (= res!1920516 (dynLambda!21372 lambda!185160 (h!56979 (toList!4611 lm!1477))))))

(declare-fun b!4593191 () Bool)

(assert (=> b!4593191 (= e!2864803 (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185160))))

(assert (= (and d!1445211 (not res!1920515)) b!4593190))

(assert (= (and b!4593190 res!1920516) b!4593191))

(declare-fun b_lambda!168729 () Bool)

(assert (=> (not b_lambda!168729) (not b!4593190)))

(declare-fun m!5416649 () Bool)

(assert (=> b!4593190 m!5416649))

(declare-fun m!5416651 () Bool)

(assert (=> b!4593191 m!5416651))

(assert (=> d!1444993 d!1445211))

(declare-fun d!1445213 () Bool)

(declare-fun lt!1754571 () Bool)

(assert (=> d!1445213 (= lt!1754571 (select (content!8618 (toList!4611 lm!1477)) (tuple2!51645 hash!344 lt!1754235)))))

(declare-fun e!2864804 () Bool)

(assert (=> d!1445213 (= lt!1754571 e!2864804)))

(declare-fun res!1920517 () Bool)

(assert (=> d!1445213 (=> (not res!1920517) (not e!2864804))))

(assert (=> d!1445213 (= res!1920517 ((_ is Cons!51027) (toList!4611 lm!1477)))))

(assert (=> d!1445213 (= (contains!13950 (toList!4611 lm!1477) (tuple2!51645 hash!344 lt!1754235)) lt!1754571)))

(declare-fun b!4593192 () Bool)

(declare-fun e!2864805 () Bool)

(assert (=> b!4593192 (= e!2864804 e!2864805)))

(declare-fun res!1920518 () Bool)

(assert (=> b!4593192 (=> res!1920518 e!2864805)))

(assert (=> b!4593192 (= res!1920518 (= (h!56979 (toList!4611 lm!1477)) (tuple2!51645 hash!344 lt!1754235)))))

(declare-fun b!4593193 () Bool)

(assert (=> b!4593193 (= e!2864805 (contains!13950 (t!358145 (toList!4611 lm!1477)) (tuple2!51645 hash!344 lt!1754235)))))

(assert (= (and d!1445213 res!1920517) b!4593192))

(assert (= (and b!4593192 (not res!1920518)) b!4593193))

(assert (=> d!1445213 m!5416207))

(declare-fun m!5416653 () Bool)

(assert (=> d!1445213 m!5416653))

(declare-fun m!5416655 () Bool)

(assert (=> b!4593193 m!5416655))

(assert (=> d!1444999 d!1445213))

(declare-fun d!1445215 () Bool)

(assert (=> d!1445215 (contains!13950 (toList!4611 lm!1477) (tuple2!51645 hash!344 lt!1754235))))

(assert (=> d!1445215 true))

(declare-fun _$14!1446 () Unit!107542)

(assert (=> d!1445215 (= (choose!30695 (toList!4611 lm!1477) hash!344 lt!1754235) _$14!1446)))

(declare-fun bs!1008335 () Bool)

(assert (= bs!1008335 d!1445215))

(assert (=> bs!1008335 m!5416213))

(assert (=> d!1444999 d!1445215))

(assert (=> d!1444999 d!1445191))

(declare-fun d!1445217 () Bool)

(declare-fun res!1920519 () Bool)

(declare-fun e!2864806 () Bool)

(assert (=> d!1445217 (=> res!1920519 e!2864806)))

(assert (=> d!1445217 (= res!1920519 ((_ is Nil!51027) (toList!4611 (ListLongMap!3244 lt!1754228))))))

(assert (=> d!1445217 (= (forall!10558 (toList!4611 (ListLongMap!3244 lt!1754228)) lambda!185140) e!2864806)))

(declare-fun b!4593194 () Bool)

(declare-fun e!2864807 () Bool)

(assert (=> b!4593194 (= e!2864806 e!2864807)))

(declare-fun res!1920520 () Bool)

(assert (=> b!4593194 (=> (not res!1920520) (not e!2864807))))

(assert (=> b!4593194 (= res!1920520 (dynLambda!21372 lambda!185140 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))))))

(declare-fun b!4593195 () Bool)

(assert (=> b!4593195 (= e!2864807 (forall!10558 (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228))) lambda!185140))))

(assert (= (and d!1445217 (not res!1920519)) b!4593194))

(assert (= (and b!4593194 res!1920520) b!4593195))

(declare-fun b_lambda!168731 () Bool)

(assert (=> (not b_lambda!168731) (not b!4593194)))

(declare-fun m!5416657 () Bool)

(assert (=> b!4593194 m!5416657))

(declare-fun m!5416659 () Bool)

(assert (=> b!4593195 m!5416659))

(assert (=> d!1444929 d!1445217))

(assert (=> b!4592826 d!1444997))

(assert (=> b!4592714 d!1445197))

(assert (=> b!4592714 d!1445199))

(declare-fun d!1445219 () Bool)

(declare-fun noDuplicatedKeys!319 (List!51150) Bool)

(assert (=> d!1445219 (= (invariantList!1113 (toList!4612 lt!1754316)) (noDuplicatedKeys!319 (toList!4612 lt!1754316)))))

(declare-fun bs!1008336 () Bool)

(assert (= bs!1008336 d!1445219))

(declare-fun m!5416661 () Bool)

(assert (=> bs!1008336 m!5416661))

(assert (=> d!1444961 d!1445219))

(declare-fun d!1445221 () Bool)

(declare-fun res!1920521 () Bool)

(declare-fun e!2864808 () Bool)

(assert (=> d!1445221 (=> res!1920521 e!2864808)))

(assert (=> d!1445221 (= res!1920521 ((_ is Nil!51027) (toList!4611 lm!1477)))))

(assert (=> d!1445221 (= (forall!10558 (toList!4611 lm!1477) lambda!185151) e!2864808)))

(declare-fun b!4593196 () Bool)

(declare-fun e!2864809 () Bool)

(assert (=> b!4593196 (= e!2864808 e!2864809)))

(declare-fun res!1920522 () Bool)

(assert (=> b!4593196 (=> (not res!1920522) (not e!2864809))))

(assert (=> b!4593196 (= res!1920522 (dynLambda!21372 lambda!185151 (h!56979 (toList!4611 lm!1477))))))

(declare-fun b!4593197 () Bool)

(assert (=> b!4593197 (= e!2864809 (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185151))))

(assert (= (and d!1445221 (not res!1920521)) b!4593196))

(assert (= (and b!4593196 res!1920522) b!4593197))

(declare-fun b_lambda!168733 () Bool)

(assert (=> (not b_lambda!168733) (not b!4593196)))

(declare-fun m!5416663 () Bool)

(assert (=> b!4593196 m!5416663))

(declare-fun m!5416665 () Bool)

(assert (=> b!4593197 m!5416665))

(assert (=> d!1444961 d!1445221))

(assert (=> b!4592715 d!1445133))

(assert (=> b!4592715 d!1445135))

(declare-fun e!2864810 () Bool)

(declare-fun b!4593198 () Bool)

(declare-fun tp!1340170 () Bool)

(assert (=> b!4593198 (= e!2864810 (and tp_is_empty!28485 tp_is_empty!28487 tp!1340170))))

(assert (=> b!4592846 (= tp!1340165 e!2864810)))

(assert (= (and b!4592846 ((_ is Cons!51026) (t!358144 (t!358144 newBucket!178)))) b!4593198))

(declare-fun b!4593199 () Bool)

(declare-fun tp!1340171 () Bool)

(declare-fun e!2864811 () Bool)

(assert (=> b!4593199 (= e!2864811 (and tp_is_empty!28485 tp_is_empty!28487 tp!1340171))))

(assert (=> b!4592841 (= tp!1340161 e!2864811)))

(assert (= (and b!4592841 ((_ is Cons!51026) (_2!29116 (h!56979 (toList!4611 lm!1477))))) b!4593199))

(declare-fun b!4593200 () Bool)

(declare-fun e!2864812 () Bool)

(declare-fun tp!1340172 () Bool)

(declare-fun tp!1340173 () Bool)

(assert (=> b!4593200 (= e!2864812 (and tp!1340172 tp!1340173))))

(assert (=> b!4592841 (= tp!1340162 e!2864812)))

(assert (= (and b!4592841 ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477)))) b!4593200))

(declare-fun b_lambda!168735 () Bool)

(assert (= b_lambda!168699 (or start!457720 b_lambda!168735)))

(declare-fun bs!1008337 () Bool)

(declare-fun d!1445223 () Bool)

(assert (= bs!1008337 (and d!1445223 start!457720)))

(assert (=> bs!1008337 (= (dynLambda!21372 lambda!185132 (h!56979 (t!358145 lt!1754228))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 lt!1754228)))))))

(declare-fun m!5416667 () Bool)

(assert (=> bs!1008337 m!5416667))

(assert (=> b!4593030 d!1445223))

(declare-fun b_lambda!168737 () Bool)

(assert (= b_lambda!168731 (or d!1444929 b_lambda!168737)))

(declare-fun bs!1008338 () Bool)

(declare-fun d!1445225 () Bool)

(assert (= bs!1008338 (and d!1445225 d!1444929)))

(assert (=> bs!1008338 (= (dynLambda!21372 lambda!185140 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) (allKeysSameHash!1154 (_2!29116 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) (_1!29116 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) hashF!1107))))

(declare-fun m!5416669 () Bool)

(assert (=> bs!1008338 m!5416669))

(assert (=> b!4593194 d!1445225))

(declare-fun b_lambda!168739 () Bool)

(assert (= b_lambda!168723 (or d!1445007 b_lambda!168739)))

(declare-fun bs!1008339 () Bool)

(declare-fun d!1445227 () Bool)

(assert (= bs!1008339 (and d!1445227 d!1445007)))

(assert (=> bs!1008339 (= (dynLambda!21374 lambda!185164 (h!56978 newBucket!178)) (= (hash!3175 hashF!1107 (_1!29115 (h!56978 newBucket!178))) hash!344))))

(declare-fun m!5416671 () Bool)

(assert (=> bs!1008339 m!5416671))

(assert (=> b!4593147 d!1445227))

(declare-fun b_lambda!168741 () Bool)

(assert (= b_lambda!168733 (or d!1444961 b_lambda!168741)))

(declare-fun bs!1008340 () Bool)

(declare-fun d!1445229 () Bool)

(assert (= bs!1008340 (and d!1445229 d!1444961)))

(assert (=> bs!1008340 (= (dynLambda!21372 lambda!185151 (h!56979 (toList!4611 lm!1477))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (=> bs!1008340 m!5416231))

(assert (=> b!4593196 d!1445229))

(declare-fun b_lambda!168743 () Bool)

(assert (= b_lambda!168729 (or d!1444993 b_lambda!168743)))

(declare-fun bs!1008341 () Bool)

(declare-fun d!1445231 () Bool)

(assert (= bs!1008341 (and d!1445231 d!1444993)))

(assert (=> bs!1008341 (= (dynLambda!21372 lambda!185160 (h!56979 (toList!4611 lm!1477))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (=> bs!1008341 m!5416231))

(assert (=> b!4593190 d!1445231))

(declare-fun b_lambda!168745 () Bool)

(assert (= b_lambda!168683 (or d!1445005 b_lambda!168745)))

(declare-fun bs!1008342 () Bool)

(declare-fun d!1445233 () Bool)

(assert (= bs!1008342 (and d!1445233 d!1445005)))

(assert (=> bs!1008342 (= (dynLambda!21372 lambda!185161 (h!56979 (toList!4611 lm!1477))) (allKeysSameHash!1154 (_2!29116 (h!56979 (toList!4611 lm!1477))) (_1!29116 (h!56979 (toList!4611 lm!1477))) hashF!1107))))

(declare-fun m!5416673 () Bool)

(assert (=> bs!1008342 m!5416673))

(assert (=> b!4592900 d!1445233))

(declare-fun b_lambda!168747 () Bool)

(assert (= b_lambda!168721 (or d!1444973 b_lambda!168747)))

(declare-fun bs!1008343 () Bool)

(declare-fun d!1445235 () Bool)

(assert (= bs!1008343 (and d!1445235 d!1444973)))

(assert (=> bs!1008343 (= (dynLambda!21372 lambda!185157 (h!56979 (toList!4611 lm!1477))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (=> bs!1008343 m!5416231))

(assert (=> b!4593141 d!1445235))

(declare-fun b_lambda!168749 () Bool)

(assert (= b_lambda!168725 (or start!457720 b_lambda!168749)))

(assert (=> d!1445181 d!1445013))

(declare-fun b_lambda!168751 () Bool)

(assert (= b_lambda!168727 (or start!457720 b_lambda!168751)))

(declare-fun bs!1008344 () Bool)

(declare-fun d!1445237 () Bool)

(assert (= bs!1008344 (and d!1445237 start!457720)))

(assert (=> bs!1008344 (= (dynLambda!21372 lambda!185132 (h!56979 (t!358145 (toList!4611 lm!1477)))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(declare-fun m!5416675 () Bool)

(assert (=> bs!1008344 m!5416675))

(assert (=> b!4593183 d!1445237))

(check-sat (not d!1445195) (not d!1445197) (not d!1445177) tp_is_empty!28487 (not bs!1008337) (not b!4593197) tp_is_empty!28485 (not b!4593120) (not d!1445135) (not d!1445161) (not b!4592901) (not d!1445035) (not b!4593134) (not b!4593081) (not b!4593185) (not d!1445219) (not b!4593123) (not b_lambda!168745) (not d!1445139) (not b!4593148) (not b!4593166) (not b_lambda!168749) (not b!4593122) (not b!4593153) (not b_lambda!168751) (not b!4593160) (not d!1445039) (not b!4592927) (not b!4593037) (not b_lambda!168675) (not b!4593127) (not b_lambda!168743) (not d!1445163) (not b!4593131) (not b!4593184) (not b!4593082) (not b_lambda!168679) (not d!1445213) (not b!4593157) (not d!1445171) (not b!4593155) (not b_lambda!168735) (not b!4593152) (not b!4593142) (not b!4593140) (not b!4592899) (not b_lambda!168677) (not bs!1008341) (not bs!1008339) (not b!4593150) (not b!4593187) (not b!4593169) (not d!1445071) (not b!4593025) (not b!4593028) (not b!4593186) (not b!4593086) (not d!1445209) (not b!4593193) (not b!4593195) (not b!4593199) (not b_lambda!168739) (not b!4593051) (not bs!1008338) (not d!1445207) (not bs!1008343) (not b!4593021) (not bm!320622) (not b!4593200) (not b_lambda!168741) (not b!4593053) (not bs!1008342) (not b!4593055) (not b!4592947) (not b!4593085) (not bs!1008340) (not bs!1008344) (not b!4593080) (not b!4593031) (not b!4593121) (not b!4593189) (not d!1445189) (not d!1445215) (not d!1445133) (not bm!320621) (not b!4593052) (not b_lambda!168747) (not b!4593029) (not d!1445193) (not b!4593018) (not d!1445123) (not b!4593156) (not b!4593022) (not b!4593181) (not b!4593020) (not d!1445201) (not b!4593191) (not b!4593198) (not bm!320620) (not b!4593048) (not b_lambda!168737))
(check-sat)
(get-model)

(declare-fun d!1445287 () Bool)

(declare-fun res!1920565 () Bool)

(declare-fun e!2864865 () Bool)

(assert (=> d!1445287 (=> res!1920565 e!2864865)))

(assert (=> d!1445287 (= res!1920565 ((_ is Nil!51029) lt!1754485))))

(assert (=> d!1445287 (= (noDuplicate!804 lt!1754485) e!2864865)))

(declare-fun b!4593266 () Bool)

(declare-fun e!2864866 () Bool)

(assert (=> b!4593266 (= e!2864865 e!2864866)))

(declare-fun res!1920566 () Bool)

(assert (=> b!4593266 (=> (not res!1920566) (not e!2864866))))

(assert (=> b!4593266 (= res!1920566 (not (contains!13953 (t!358147 lt!1754485) (h!56983 lt!1754485))))))

(declare-fun b!4593267 () Bool)

(assert (=> b!4593267 (= e!2864866 (noDuplicate!804 (t!358147 lt!1754485)))))

(assert (= (and d!1445287 (not res!1920565)) b!4593266))

(assert (= (and b!4593266 res!1920566) b!4593267))

(declare-fun m!5416819 () Bool)

(assert (=> b!4593266 m!5416819))

(declare-fun m!5416821 () Bool)

(assert (=> b!4593267 m!5416821))

(assert (=> d!1445135 d!1445287))

(assert (=> d!1445135 d!1445071))

(declare-fun d!1445289 () Bool)

(declare-fun res!1920569 () Bool)

(declare-fun e!2864869 () Bool)

(assert (=> d!1445289 (=> res!1920569 e!2864869)))

(assert (=> d!1445289 (= res!1920569 ((_ is Nil!51026) (ite c!786593 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (toList!4612 lt!1754552))))))

(assert (=> d!1445289 (= (forall!10560 (ite c!786593 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (toList!4612 lt!1754552)) (ite c!786593 lambda!185262 lambda!185264)) e!2864869)))

(declare-fun b!4593270 () Bool)

(declare-fun e!2864870 () Bool)

(assert (=> b!4593270 (= e!2864869 e!2864870)))

(declare-fun res!1920570 () Bool)

(assert (=> b!4593270 (=> (not res!1920570) (not e!2864870))))

(assert (=> b!4593270 (= res!1920570 (dynLambda!21374 (ite c!786593 lambda!185262 lambda!185264) (h!56978 (ite c!786593 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (toList!4612 lt!1754552)))))))

(declare-fun b!4593271 () Bool)

(assert (=> b!4593271 (= e!2864870 (forall!10560 (t!358144 (ite c!786593 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (toList!4612 lt!1754552))) (ite c!786593 lambda!185262 lambda!185264)))))

(assert (= (and d!1445289 (not res!1920569)) b!4593270))

(assert (= (and b!4593270 res!1920570) b!4593271))

(declare-fun b_lambda!168769 () Bool)

(assert (=> (not b_lambda!168769) (not b!4593270)))

(declare-fun m!5416823 () Bool)

(assert (=> b!4593270 m!5416823))

(declare-fun m!5416825 () Bool)

(assert (=> b!4593271 m!5416825))

(assert (=> bm!320620 d!1445289))

(declare-fun d!1445291 () Bool)

(declare-fun res!1920573 () Bool)

(declare-fun e!2864871 () Bool)

(assert (=> d!1445291 (=> res!1920573 e!2864871)))

(assert (=> d!1445291 (= res!1920573 (not ((_ is Cons!51026) (t!358144 lt!1754235))))))

(assert (=> d!1445291 (= (noDuplicateKeys!1298 (t!358144 lt!1754235)) e!2864871)))

(declare-fun b!4593274 () Bool)

(declare-fun e!2864872 () Bool)

(assert (=> b!4593274 (= e!2864871 e!2864872)))

(declare-fun res!1920574 () Bool)

(assert (=> b!4593274 (=> (not res!1920574) (not e!2864872))))

(assert (=> b!4593274 (= res!1920574 (not (containsKey!2110 (t!358144 (t!358144 lt!1754235)) (_1!29115 (h!56978 (t!358144 lt!1754235))))))))

(declare-fun b!4593275 () Bool)

(assert (=> b!4593275 (= e!2864872 (noDuplicateKeys!1298 (t!358144 (t!358144 lt!1754235))))))

(assert (= (and d!1445291 (not res!1920573)) b!4593274))

(assert (= (and b!4593274 res!1920574) b!4593275))

(declare-fun m!5416827 () Bool)

(assert (=> b!4593274 m!5416827))

(declare-fun m!5416829 () Bool)

(assert (=> b!4593275 m!5416829))

(assert (=> b!4593053 d!1445291))

(assert (=> d!1445123 d!1445121))

(declare-fun d!1445293 () Bool)

(assert (=> d!1445293 (containsKey!2113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287)))

(assert (=> d!1445293 true))

(declare-fun _$15!810 () Unit!107542)

(assert (=> d!1445293 (= (choose!30702 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) _$15!810)))

(declare-fun bs!1008370 () Bool)

(assert (= bs!1008370 d!1445293))

(assert (=> bs!1008370 m!5416107))

(assert (=> d!1445123 d!1445293))

(declare-fun d!1445295 () Bool)

(assert (=> d!1445295 (= (invariantList!1113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (noDuplicatedKeys!319 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(declare-fun bs!1008371 () Bool)

(assert (= bs!1008371 d!1445295))

(declare-fun m!5416831 () Bool)

(assert (=> bs!1008371 m!5416831))

(assert (=> d!1445123 d!1445295))

(assert (=> d!1445215 d!1445213))

(declare-fun d!1445297 () Bool)

(declare-fun res!1920577 () Bool)

(declare-fun e!2864874 () Bool)

(assert (=> d!1445297 (=> res!1920577 e!2864874)))

(assert (=> d!1445297 (= res!1920577 (and ((_ is Cons!51026) (t!358144 (t!358144 newBucket!178))) (= (_1!29115 (h!56978 (t!358144 (t!358144 newBucket!178)))) (_1!29115 (h!56978 newBucket!178)))))))

(assert (=> d!1445297 (= (containsKey!2110 (t!358144 (t!358144 newBucket!178)) (_1!29115 (h!56978 newBucket!178))) e!2864874)))

(declare-fun b!4593278 () Bool)

(declare-fun e!2864875 () Bool)

(assert (=> b!4593278 (= e!2864874 e!2864875)))

(declare-fun res!1920578 () Bool)

(assert (=> b!4593278 (=> (not res!1920578) (not e!2864875))))

(assert (=> b!4593278 (= res!1920578 ((_ is Cons!51026) (t!358144 (t!358144 newBucket!178))))))

(declare-fun b!4593279 () Bool)

(assert (=> b!4593279 (= e!2864875 (containsKey!2110 (t!358144 (t!358144 (t!358144 newBucket!178))) (_1!29115 (h!56978 newBucket!178))))))

(assert (= (and d!1445297 (not res!1920577)) b!4593278))

(assert (= (and b!4593278 res!1920578) b!4593279))

(declare-fun m!5416835 () Bool)

(assert (=> b!4593279 m!5416835))

(assert (=> b!4593134 d!1445297))

(declare-fun d!1445299 () Bool)

(assert (=> d!1445299 (= (hash!3175 hashF!1107 (_1!29115 (h!56978 newBucket!178))) (hash!3177 hashF!1107 (_1!29115 (h!56978 newBucket!178))))))

(declare-fun bs!1008372 () Bool)

(assert (= bs!1008372 d!1445299))

(declare-fun m!5416843 () Bool)

(assert (=> bs!1008372 m!5416843))

(assert (=> bs!1008339 d!1445299))

(declare-fun d!1445301 () Bool)

(declare-fun res!1920579 () Bool)

(declare-fun e!2864876 () Bool)

(assert (=> d!1445301 (=> res!1920579 e!2864876)))

(assert (=> d!1445301 (= res!1920579 ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445301 (= (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185160) e!2864876)))

(declare-fun b!4593280 () Bool)

(declare-fun e!2864877 () Bool)

(assert (=> b!4593280 (= e!2864876 e!2864877)))

(declare-fun res!1920580 () Bool)

(assert (=> b!4593280 (=> (not res!1920580) (not e!2864877))))

(assert (=> b!4593280 (= res!1920580 (dynLambda!21372 lambda!185160 (h!56979 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun b!4593281 () Bool)

(assert (=> b!4593281 (= e!2864877 (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185160))))

(assert (= (and d!1445301 (not res!1920579)) b!4593280))

(assert (= (and b!4593280 res!1920580) b!4593281))

(declare-fun b_lambda!168771 () Bool)

(assert (=> (not b_lambda!168771) (not b!4593280)))

(declare-fun m!5416849 () Bool)

(assert (=> b!4593280 m!5416849))

(declare-fun m!5416851 () Bool)

(assert (=> b!4593281 m!5416851))

(assert (=> b!4593191 d!1445301))

(declare-fun d!1445305 () Bool)

(declare-fun res!1920591 () Bool)

(declare-fun e!2864888 () Bool)

(assert (=> d!1445305 (=> res!1920591 e!2864888)))

(assert (=> d!1445305 (= res!1920591 (or ((_ is Nil!51026) (toList!4612 lt!1754316)) ((_ is Nil!51026) (t!358144 (toList!4612 lt!1754316)))))))

(assert (=> d!1445305 (= (noDuplicatedKeys!319 (toList!4612 lt!1754316)) e!2864888)))

(declare-fun b!4593292 () Bool)

(declare-fun e!2864889 () Bool)

(assert (=> b!4593292 (= e!2864888 e!2864889)))

(declare-fun res!1920592 () Bool)

(assert (=> b!4593292 (=> (not res!1920592) (not e!2864889))))

(assert (=> b!4593292 (= res!1920592 (not (containsKey!2113 (t!358144 (toList!4612 lt!1754316)) (_1!29115 (h!56978 (toList!4612 lt!1754316))))))))

(declare-fun b!4593293 () Bool)

(assert (=> b!4593293 (= e!2864889 (noDuplicatedKeys!319 (t!358144 (toList!4612 lt!1754316))))))

(assert (= (and d!1445305 (not res!1920591)) b!4593292))

(assert (= (and b!4593292 res!1920592) b!4593293))

(declare-fun m!5416865 () Bool)

(assert (=> b!4593292 m!5416865))

(declare-fun m!5416867 () Bool)

(assert (=> b!4593293 m!5416867))

(assert (=> d!1445219 d!1445305))

(assert (=> d!1445209 d!1445207))

(assert (=> d!1445209 d!1444971))

(declare-fun d!1445319 () Bool)

(declare-fun res!1920597 () Bool)

(declare-fun e!2864894 () Bool)

(assert (=> d!1445319 (=> res!1920597 e!2864894)))

(assert (=> d!1445319 (= res!1920597 ((_ is Nil!51029) lt!1754485))))

(assert (=> d!1445319 (= (forall!10562 lt!1754485 lambda!185228) e!2864894)))

(declare-fun b!4593298 () Bool)

(declare-fun e!2864895 () Bool)

(assert (=> b!4593298 (= e!2864894 e!2864895)))

(declare-fun res!1920598 () Bool)

(assert (=> b!4593298 (=> (not res!1920598) (not e!2864895))))

(declare-fun dynLambda!21375 (Int K!12395) Bool)

(assert (=> b!4593298 (= res!1920598 (dynLambda!21375 lambda!185228 (h!56983 lt!1754485)))))

(declare-fun b!4593299 () Bool)

(assert (=> b!4593299 (= e!2864895 (forall!10562 (t!358147 lt!1754485) lambda!185228))))

(assert (= (and d!1445319 (not res!1920597)) b!4593298))

(assert (= (and b!4593298 res!1920598) b!4593299))

(declare-fun b_lambda!168773 () Bool)

(assert (=> (not b_lambda!168773) (not b!4593298)))

(declare-fun m!5416873 () Bool)

(assert (=> b!4593298 m!5416873))

(declare-fun m!5416875 () Bool)

(assert (=> b!4593299 m!5416875))

(assert (=> b!4593081 d!1445319))

(declare-fun d!1445325 () Bool)

(declare-fun c!786620 () Bool)

(assert (=> d!1445325 (= c!786620 (and ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))) (= (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) hash!344)))))

(declare-fun e!2864896 () Option!11367)

(assert (=> d!1445325 (= (getValueByKey!1287 (t!358145 (toList!4611 lm!1477)) hash!344) e!2864896)))

(declare-fun b!4593303 () Bool)

(declare-fun e!2864897 () Option!11367)

(assert (=> b!4593303 (= e!2864897 None!11366)))

(declare-fun b!4593301 () Bool)

(assert (=> b!4593301 (= e!2864896 e!2864897)))

(declare-fun c!786621 () Bool)

(assert (=> b!4593301 (= c!786621 (and ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))) (not (= (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) hash!344))))))

(declare-fun b!4593302 () Bool)

(assert (=> b!4593302 (= e!2864897 (getValueByKey!1287 (t!358145 (t!358145 (toList!4611 lm!1477))) hash!344))))

(declare-fun b!4593300 () Bool)

(assert (=> b!4593300 (= e!2864896 (Some!11366 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(assert (= (and d!1445325 c!786620) b!4593300))

(assert (= (and d!1445325 (not c!786620)) b!4593301))

(assert (= (and b!4593301 c!786621) b!4593302))

(assert (= (and b!4593301 (not c!786621)) b!4593303))

(declare-fun m!5416877 () Bool)

(assert (=> b!4593302 m!5416877))

(assert (=> b!4593048 d!1445325))

(declare-fun d!1445327 () Bool)

(declare-fun res!1920603 () Bool)

(declare-fun e!2864902 () Bool)

(assert (=> d!1445327 (=> res!1920603 e!2864902)))

(assert (=> d!1445327 (= res!1920603 ((_ is Nil!51026) (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> d!1445327 (= (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (ite c!786593 lambda!185262 lambda!185264)) e!2864902)))

(declare-fun b!4593308 () Bool)

(declare-fun e!2864903 () Bool)

(assert (=> b!4593308 (= e!2864902 e!2864903)))

(declare-fun res!1920604 () Bool)

(assert (=> b!4593308 (=> (not res!1920604) (not e!2864903))))

(assert (=> b!4593308 (= res!1920604 (dynLambda!21374 (ite c!786593 lambda!185262 lambda!185264) (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun b!4593309 () Bool)

(assert (=> b!4593309 (= e!2864903 (forall!10560 (t!358144 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))) (ite c!786593 lambda!185262 lambda!185264)))))

(assert (= (and d!1445327 (not res!1920603)) b!4593308))

(assert (= (and b!4593308 res!1920604) b!4593309))

(declare-fun b_lambda!168775 () Bool)

(assert (=> (not b_lambda!168775) (not b!4593308)))

(declare-fun m!5416879 () Bool)

(assert (=> b!4593308 m!5416879))

(declare-fun m!5416881 () Bool)

(assert (=> b!4593309 m!5416881))

(assert (=> bm!320621 d!1445327))

(declare-fun d!1445329 () Bool)

(declare-fun res!1920605 () Bool)

(declare-fun e!2864904 () Bool)

(assert (=> d!1445329 (=> res!1920605 e!2864904)))

(assert (=> d!1445329 (= res!1920605 ((_ is Nil!51027) (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228)))))))

(assert (=> d!1445329 (= (forall!10558 (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228))) lambda!185140) e!2864904)))

(declare-fun b!4593310 () Bool)

(declare-fun e!2864905 () Bool)

(assert (=> b!4593310 (= e!2864904 e!2864905)))

(declare-fun res!1920606 () Bool)

(assert (=> b!4593310 (=> (not res!1920606) (not e!2864905))))

(assert (=> b!4593310 (= res!1920606 (dynLambda!21372 lambda!185140 (h!56979 (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228))))))))

(declare-fun b!4593311 () Bool)

(assert (=> b!4593311 (= e!2864905 (forall!10558 (t!358145 (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228)))) lambda!185140))))

(assert (= (and d!1445329 (not res!1920605)) b!4593310))

(assert (= (and b!4593310 res!1920606) b!4593311))

(declare-fun b_lambda!168777 () Bool)

(assert (=> (not b_lambda!168777) (not b!4593310)))

(declare-fun m!5416883 () Bool)

(assert (=> b!4593310 m!5416883))

(declare-fun m!5416885 () Bool)

(assert (=> b!4593311 m!5416885))

(assert (=> b!4593195 d!1445329))

(declare-fun d!1445331 () Bool)

(assert (=> d!1445331 (= (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287))) (not (isEmpty!28850 (getValueByKey!1287 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)))))))

(declare-fun bs!1008385 () Bool)

(assert (= bs!1008385 d!1445331))

(assert (=> bs!1008385 m!5416645))

(declare-fun m!5416887 () Bool)

(assert (=> bs!1008385 m!5416887))

(assert (=> b!4593189 d!1445331))

(declare-fun c!786622 () Bool)

(declare-fun d!1445333 () Bool)

(assert (=> d!1445333 (= c!786622 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (= (_1!29116 (h!56979 (toList!4611 lm!1477))) (hash!3175 hashF!1107 key!3287))))))

(declare-fun e!2864908 () Option!11367)

(assert (=> d!1445333 (= (getValueByKey!1287 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)) e!2864908)))

(declare-fun b!4593317 () Bool)

(declare-fun e!2864909 () Option!11367)

(assert (=> b!4593317 (= e!2864909 None!11366)))

(declare-fun b!4593315 () Bool)

(assert (=> b!4593315 (= e!2864908 e!2864909)))

(declare-fun c!786623 () Bool)

(assert (=> b!4593315 (= c!786623 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (not (= (_1!29116 (h!56979 (toList!4611 lm!1477))) (hash!3175 hashF!1107 key!3287)))))))

(declare-fun b!4593316 () Bool)

(assert (=> b!4593316 (= e!2864909 (getValueByKey!1287 (t!358145 (toList!4611 lm!1477)) (hash!3175 hashF!1107 key!3287)))))

(declare-fun b!4593314 () Bool)

(assert (=> b!4593314 (= e!2864908 (Some!11366 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (= (and d!1445333 c!786622) b!4593314))

(assert (= (and d!1445333 (not c!786622)) b!4593315))

(assert (= (and b!4593315 c!786623) b!4593316))

(assert (= (and b!4593315 (not c!786623)) b!4593317))

(assert (=> b!4593316 m!5416017))

(declare-fun m!5416893 () Bool)

(assert (=> b!4593316 m!5416893))

(assert (=> b!4593189 d!1445333))

(declare-fun d!1445337 () Bool)

(assert (=> d!1445337 true))

(assert (=> d!1445337 true))

(declare-fun res!1920611 () (_ BitVec 64))

(assert (=> d!1445337 (= (choose!30703 hashF!1107 key!3287) res!1920611)))

(assert (=> d!1445177 d!1445337))

(declare-fun d!1445341 () Bool)

(assert (=> d!1445341 (= (invariantList!1113 (toList!4612 lt!1754556)) (noDuplicatedKeys!319 (toList!4612 lt!1754556)))))

(declare-fun bs!1008396 () Bool)

(assert (= bs!1008396 d!1445341))

(declare-fun m!5416897 () Bool)

(assert (=> bs!1008396 m!5416897))

(assert (=> d!1445161 d!1445341))

(declare-fun d!1445343 () Bool)

(declare-fun res!1920614 () Bool)

(declare-fun e!2864912 () Bool)

(assert (=> d!1445343 (=> res!1920614 e!2864912)))

(assert (=> d!1445343 (= res!1920614 ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445343 (= (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185266) e!2864912)))

(declare-fun b!4593320 () Bool)

(declare-fun e!2864913 () Bool)

(assert (=> b!4593320 (= e!2864912 e!2864913)))

(declare-fun res!1920615 () Bool)

(assert (=> b!4593320 (=> (not res!1920615) (not e!2864913))))

(assert (=> b!4593320 (= res!1920615 (dynLambda!21372 lambda!185266 (h!56979 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun b!4593321 () Bool)

(assert (=> b!4593321 (= e!2864913 (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185266))))

(assert (= (and d!1445343 (not res!1920614)) b!4593320))

(assert (= (and b!4593320 res!1920615) b!4593321))

(declare-fun b_lambda!168781 () Bool)

(assert (=> (not b_lambda!168781) (not b!4593320)))

(declare-fun m!5416901 () Bool)

(assert (=> b!4593320 m!5416901))

(declare-fun m!5416903 () Bool)

(assert (=> b!4593321 m!5416903))

(assert (=> d!1445161 d!1445343))

(declare-fun bs!1008397 () Bool)

(declare-fun b!4593326 () Bool)

(assert (= bs!1008397 (and b!4593326 b!4593121)))

(declare-fun lambda!185278 () Int)

(assert (=> bs!1008397 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754554) (= lambda!185278 lambda!185264))))

(declare-fun bs!1008398 () Bool)

(assert (= bs!1008398 (and b!4593326 d!1445139)))

(assert (=> bs!1008398 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754548) (= lambda!185278 lambda!185265))))

(assert (=> bs!1008397 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185278 lambda!185263))))

(declare-fun bs!1008399 () Bool)

(assert (= bs!1008399 (and b!4593326 b!4593124)))

(assert (=> bs!1008399 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185278 lambda!185262))))

(declare-fun bs!1008400 () Bool)

(assert (= bs!1008400 (and b!4593326 d!1445007)))

(assert (=> bs!1008400 (not (= lambda!185278 lambda!185164))))

(assert (=> b!4593326 true))

(declare-fun bs!1008401 () Bool)

(declare-fun b!4593323 () Bool)

(assert (= bs!1008401 (and b!4593323 b!4593121)))

(declare-fun lambda!185279 () Int)

(assert (=> bs!1008401 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754554) (= lambda!185279 lambda!185264))))

(declare-fun bs!1008402 () Bool)

(assert (= bs!1008402 (and b!4593323 d!1445139)))

(assert (=> bs!1008402 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754548) (= lambda!185279 lambda!185265))))

(assert (=> bs!1008401 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185279 lambda!185263))))

(declare-fun bs!1008403 () Bool)

(assert (= bs!1008403 (and b!4593323 b!4593124)))

(assert (=> bs!1008403 (= (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185279 lambda!185262))))

(declare-fun bs!1008404 () Bool)

(assert (= bs!1008404 (and b!4593323 d!1445007)))

(assert (=> bs!1008404 (not (= lambda!185279 lambda!185164))))

(declare-fun bs!1008405 () Bool)

(assert (= bs!1008405 (and b!4593323 b!4593326)))

(assert (=> bs!1008405 (= lambda!185279 lambda!185278)))

(assert (=> b!4593323 true))

(declare-fun lambda!185280 () Int)

(declare-fun lt!1754647 () ListMap!3873)

(assert (=> bs!1008401 (= (= lt!1754647 lt!1754554) (= lambda!185280 lambda!185264))))

(assert (=> bs!1008402 (= (= lt!1754647 lt!1754548) (= lambda!185280 lambda!185265))))

(assert (=> b!4593323 (= (= lt!1754647 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185280 lambda!185279))))

(assert (=> bs!1008401 (= (= lt!1754647 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185280 lambda!185263))))

(assert (=> bs!1008403 (= (= lt!1754647 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185280 lambda!185262))))

(assert (=> bs!1008404 (not (= lambda!185280 lambda!185164))))

(assert (=> bs!1008405 (= (= lt!1754647 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185280 lambda!185278))))

(assert (=> b!4593323 true))

(declare-fun bs!1008408 () Bool)

(declare-fun d!1445347 () Bool)

(assert (= bs!1008408 (and d!1445347 b!4593121)))

(declare-fun lt!1754641 () ListMap!3873)

(declare-fun lambda!185281 () Int)

(assert (=> bs!1008408 (= (= lt!1754641 lt!1754554) (= lambda!185281 lambda!185264))))

(declare-fun bs!1008409 () Bool)

(assert (= bs!1008409 (and d!1445347 d!1445139)))

(assert (=> bs!1008409 (= (= lt!1754641 lt!1754548) (= lambda!185281 lambda!185265))))

(declare-fun bs!1008410 () Bool)

(assert (= bs!1008410 (and d!1445347 b!4593323)))

(assert (=> bs!1008410 (= (= lt!1754641 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185281 lambda!185279))))

(assert (=> bs!1008408 (= (= lt!1754641 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185281 lambda!185263))))

(assert (=> bs!1008410 (= (= lt!1754641 lt!1754647) (= lambda!185281 lambda!185280))))

(declare-fun bs!1008411 () Bool)

(assert (= bs!1008411 (and d!1445347 b!4593124)))

(assert (=> bs!1008411 (= (= lt!1754641 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185281 lambda!185262))))

(declare-fun bs!1008412 () Bool)

(assert (= bs!1008412 (and d!1445347 d!1445007)))

(assert (=> bs!1008412 (not (= lambda!185281 lambda!185164))))

(declare-fun bs!1008413 () Bool)

(assert (= bs!1008413 (and d!1445347 b!4593326)))

(assert (=> bs!1008413 (= (= lt!1754641 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185281 lambda!185278))))

(assert (=> d!1445347 true))

(declare-fun b!4593322 () Bool)

(declare-fun res!1920616 () Bool)

(declare-fun e!2864914 () Bool)

(assert (=> b!4593322 (=> (not res!1920616) (not e!2864914))))

(assert (=> b!4593322 (= res!1920616 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) lambda!185281))))

(declare-fun c!786624 () Bool)

(declare-fun call!320634 () Bool)

(declare-fun lt!1754645 () ListMap!3873)

(declare-fun bm!320628 () Bool)

(assert (=> bm!320628 (= call!320634 (forall!10560 (ite c!786624 (toList!4612 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (toList!4612 lt!1754645)) (ite c!786624 lambda!185278 lambda!185280)))))

(declare-fun b!4593324 () Bool)

(assert (=> b!4593324 (= e!2864914 (invariantList!1113 (toList!4612 lt!1754641)))))

(declare-fun bm!320629 () Bool)

(declare-fun call!320635 () Bool)

(assert (=> bm!320629 (= call!320635 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (ite c!786624 lambda!185278 lambda!185280)))))

(declare-fun bm!320630 () Bool)

(declare-fun call!320633 () Unit!107542)

(assert (=> bm!320630 (= call!320633 (lemmaContainsAllItsOwnKeys!428 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))))))

(declare-fun e!2864915 () ListMap!3873)

(assert (=> b!4593323 (= e!2864915 lt!1754647)))

(assert (=> b!4593323 (= lt!1754645 (+!1730 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))))

(assert (=> b!4593323 (= lt!1754647 (addToMapMapFromBucket!803 (t!358144 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))) (+!1730 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))))

(declare-fun lt!1754639 () Unit!107542)

(assert (=> b!4593323 (= lt!1754639 call!320633)))

(assert (=> b!4593323 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) lambda!185279)))

(declare-fun lt!1754636 () Unit!107542)

(assert (=> b!4593323 (= lt!1754636 lt!1754639)))

(assert (=> b!4593323 (forall!10560 (toList!4612 lt!1754645) lambda!185280)))

(declare-fun lt!1754646 () Unit!107542)

(declare-fun Unit!107588 () Unit!107542)

(assert (=> b!4593323 (= lt!1754646 Unit!107588)))

(assert (=> b!4593323 (forall!10560 (t!358144 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))) lambda!185280)))

(declare-fun lt!1754638 () Unit!107542)

(declare-fun Unit!107590 () Unit!107542)

(assert (=> b!4593323 (= lt!1754638 Unit!107590)))

(declare-fun lt!1754643 () Unit!107542)

(declare-fun Unit!107591 () Unit!107542)

(assert (=> b!4593323 (= lt!1754643 Unit!107591)))

(declare-fun lt!1754642 () Unit!107542)

(assert (=> b!4593323 (= lt!1754642 (forallContained!2819 (toList!4612 lt!1754645) lambda!185280 (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))))

(assert (=> b!4593323 (contains!13949 lt!1754645 (_1!29115 (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754634 () Unit!107542)

(declare-fun Unit!107592 () Unit!107542)

(assert (=> b!4593323 (= lt!1754634 Unit!107592)))

(assert (=> b!4593323 (contains!13949 lt!1754647 (_1!29115 (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754640 () Unit!107542)

(declare-fun Unit!107593 () Unit!107542)

(assert (=> b!4593323 (= lt!1754640 Unit!107593)))

(assert (=> b!4593323 (forall!10560 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lambda!185280)))

(declare-fun lt!1754644 () Unit!107542)

(declare-fun Unit!107594 () Unit!107542)

(assert (=> b!4593323 (= lt!1754644 Unit!107594)))

(assert (=> b!4593323 call!320634))

(declare-fun lt!1754632 () Unit!107542)

(declare-fun Unit!107595 () Unit!107542)

(assert (=> b!4593323 (= lt!1754632 Unit!107595)))

(declare-fun lt!1754648 () Unit!107542)

(declare-fun Unit!107596 () Unit!107542)

(assert (=> b!4593323 (= lt!1754648 Unit!107596)))

(declare-fun lt!1754633 () Unit!107542)

(assert (=> b!4593323 (= lt!1754633 (addForallContainsKeyThenBeforeAdding!428 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754647 (_1!29115 (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))) (_2!29115 (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))))

(assert (=> b!4593323 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) lambda!185280)))

(declare-fun lt!1754637 () Unit!107542)

(assert (=> b!4593323 (= lt!1754637 lt!1754633)))

(assert (=> b!4593323 call!320635))

(declare-fun lt!1754630 () Unit!107542)

(declare-fun Unit!107600 () Unit!107542)

(assert (=> b!4593323 (= lt!1754630 Unit!107600)))

(declare-fun res!1920618 () Bool)

(assert (=> b!4593323 (= res!1920618 (forall!10560 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lambda!185280))))

(declare-fun e!2864916 () Bool)

(assert (=> b!4593323 (=> (not res!1920618) (not e!2864916))))

(assert (=> b!4593323 e!2864916))

(declare-fun lt!1754629 () Unit!107542)

(declare-fun Unit!107602 () Unit!107542)

(assert (=> b!4593323 (= lt!1754629 Unit!107602)))

(assert (=> d!1445347 e!2864914))

(declare-fun res!1920617 () Bool)

(assert (=> d!1445347 (=> (not res!1920617) (not e!2864914))))

(assert (=> d!1445347 (= res!1920617 (forall!10560 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lambda!185281))))

(assert (=> d!1445347 (= lt!1754641 e!2864915)))

(assert (=> d!1445347 (= c!786624 ((_ is Nil!51026) (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> d!1445347 (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))

(assert (=> d!1445347 (= (addToMapMapFromBucket!803 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) lt!1754641)))

(declare-fun b!4593325 () Bool)

(assert (=> b!4593325 (= e!2864916 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) lambda!185280))))

(assert (=> b!4593326 (= e!2864915 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun lt!1754631 () Unit!107542)

(assert (=> b!4593326 (= lt!1754631 call!320633)))

(assert (=> b!4593326 call!320634))

(declare-fun lt!1754628 () Unit!107542)

(assert (=> b!4593326 (= lt!1754628 lt!1754631)))

(assert (=> b!4593326 call!320635))

(declare-fun lt!1754635 () Unit!107542)

(declare-fun Unit!107607 () Unit!107542)

(assert (=> b!4593326 (= lt!1754635 Unit!107607)))

(assert (= (and d!1445347 c!786624) b!4593326))

(assert (= (and d!1445347 (not c!786624)) b!4593323))

(assert (= (and b!4593323 res!1920618) b!4593325))

(assert (= (or b!4593326 b!4593323) bm!320629))

(assert (= (or b!4593326 b!4593323) bm!320628))

(assert (= (or b!4593326 b!4593323) bm!320630))

(assert (= (and d!1445347 res!1920617) b!4593322))

(assert (= (and b!4593322 res!1920616) b!4593324))

(declare-fun m!5416927 () Bool)

(assert (=> bm!320629 m!5416927))

(declare-fun m!5416929 () Bool)

(assert (=> b!4593325 m!5416929))

(declare-fun m!5416931 () Bool)

(assert (=> bm!320628 m!5416931))

(declare-fun m!5416933 () Bool)

(assert (=> b!4593323 m!5416933))

(declare-fun m!5416935 () Bool)

(assert (=> b!4593323 m!5416935))

(declare-fun m!5416937 () Bool)

(assert (=> b!4593323 m!5416937))

(assert (=> b!4593323 m!5416581))

(declare-fun m!5416939 () Bool)

(assert (=> b!4593323 m!5416939))

(assert (=> b!4593323 m!5416929))

(declare-fun m!5416941 () Bool)

(assert (=> b!4593323 m!5416941))

(declare-fun m!5416943 () Bool)

(assert (=> b!4593323 m!5416943))

(assert (=> b!4593323 m!5416933))

(declare-fun m!5416945 () Bool)

(assert (=> b!4593323 m!5416945))

(assert (=> b!4593323 m!5416581))

(declare-fun m!5416947 () Bool)

(assert (=> b!4593323 m!5416947))

(assert (=> b!4593323 m!5416939))

(declare-fun m!5416949 () Bool)

(assert (=> b!4593323 m!5416949))

(declare-fun m!5416951 () Bool)

(assert (=> b!4593323 m!5416951))

(declare-fun m!5416953 () Bool)

(assert (=> d!1445347 m!5416953))

(assert (=> d!1445347 m!5416675))

(declare-fun m!5416955 () Bool)

(assert (=> b!4593322 m!5416955))

(declare-fun m!5416957 () Bool)

(assert (=> b!4593324 m!5416957))

(assert (=> bm!320630 m!5416581))

(declare-fun m!5416959 () Bool)

(assert (=> bm!320630 m!5416959))

(assert (=> b!4593127 d!1445347))

(declare-fun bs!1008426 () Bool)

(declare-fun d!1445371 () Bool)

(assert (= bs!1008426 (and d!1445371 start!457720)))

(declare-fun lambda!185285 () Int)

(assert (=> bs!1008426 (= lambda!185285 lambda!185132)))

(declare-fun bs!1008429 () Bool)

(assert (= bs!1008429 (and d!1445371 d!1445005)))

(assert (=> bs!1008429 (not (= lambda!185285 lambda!185161))))

(declare-fun bs!1008431 () Bool)

(assert (= bs!1008431 (and d!1445371 d!1445161)))

(assert (=> bs!1008431 (= lambda!185285 lambda!185266)))

(declare-fun bs!1008433 () Bool)

(assert (= bs!1008433 (and d!1445371 d!1444993)))

(assert (=> bs!1008433 (= lambda!185285 lambda!185160)))

(declare-fun bs!1008434 () Bool)

(assert (= bs!1008434 (and d!1445371 d!1444973)))

(assert (=> bs!1008434 (= lambda!185285 lambda!185157)))

(declare-fun bs!1008435 () Bool)

(assert (= bs!1008435 (and d!1445371 d!1444961)))

(assert (=> bs!1008435 (= lambda!185285 lambda!185151)))

(declare-fun bs!1008437 () Bool)

(assert (= bs!1008437 (and d!1445371 d!1444929)))

(assert (=> bs!1008437 (not (= lambda!185285 lambda!185140))))

(declare-fun lt!1754657 () ListMap!3873)

(assert (=> d!1445371 (invariantList!1113 (toList!4612 lt!1754657))))

(declare-fun e!2864935 () ListMap!3873)

(assert (=> d!1445371 (= lt!1754657 e!2864935)))

(declare-fun c!786628 () Bool)

(assert (=> d!1445371 (= c!786628 ((_ is Cons!51027) (t!358145 (t!358145 (toList!4611 lm!1477)))))))

(assert (=> d!1445371 (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185285)))

(assert (=> d!1445371 (= (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754657)))

(declare-fun b!4593350 () Bool)

(assert (=> b!4593350 (= e!2864935 (addToMapMapFromBucket!803 (_2!29116 (h!56979 (t!358145 (t!358145 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (t!358145 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun b!4593351 () Bool)

(assert (=> b!4593351 (= e!2864935 (ListMap!3874 Nil!51026))))

(assert (= (and d!1445371 c!786628) b!4593350))

(assert (= (and d!1445371 (not c!786628)) b!4593351))

(declare-fun m!5416961 () Bool)

(assert (=> d!1445371 m!5416961))

(declare-fun m!5416963 () Bool)

(assert (=> d!1445371 m!5416963))

(declare-fun m!5416965 () Bool)

(assert (=> b!4593350 m!5416965))

(assert (=> b!4593350 m!5416965))

(declare-fun m!5416967 () Bool)

(assert (=> b!4593350 m!5416967))

(assert (=> b!4593127 d!1445371))

(declare-fun d!1445373 () Bool)

(declare-fun res!1920639 () Bool)

(declare-fun e!2864936 () Bool)

(assert (=> d!1445373 (=> res!1920639 e!2864936)))

(assert (=> d!1445373 (= res!1920639 (not ((_ is Cons!51026) (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))))

(assert (=> d!1445373 (= (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))) e!2864936)))

(declare-fun b!4593352 () Bool)

(declare-fun e!2864937 () Bool)

(assert (=> b!4593352 (= e!2864936 e!2864937)))

(declare-fun res!1920640 () Bool)

(assert (=> b!4593352 (=> (not res!1920640) (not e!2864937))))

(assert (=> b!4593352 (= res!1920640 (not (containsKey!2110 (t!358144 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))))))

(declare-fun b!4593353 () Bool)

(assert (=> b!4593353 (= e!2864937 (noDuplicateKeys!1298 (t!358144 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445373 (not res!1920639)) b!4593352))

(assert (= (and b!4593352 res!1920640) b!4593353))

(declare-fun m!5416969 () Bool)

(assert (=> b!4593352 m!5416969))

(declare-fun m!5416971 () Bool)

(assert (=> b!4593353 m!5416971))

(assert (=> bs!1008344 d!1445373))

(assert (=> d!1445189 d!1445163))

(assert (=> d!1445189 d!1445165))

(declare-fun d!1445375 () Bool)

(assert (=> d!1445375 (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227))))

(assert (=> d!1445375 true))

(declare-fun _$13!1597 () Unit!107542)

(assert (=> d!1445375 (= (choose!30704 (toList!4611 lm!1477) lt!1754227) _$13!1597)))

(declare-fun bs!1008439 () Bool)

(assert (= bs!1008439 d!1445375))

(assert (=> bs!1008439 m!5416193))

(assert (=> bs!1008439 m!5416193))

(assert (=> bs!1008439 m!5416195))

(assert (=> d!1445189 d!1445375))

(assert (=> d!1445189 d!1445191))

(declare-fun d!1445379 () Bool)

(declare-fun res!1920641 () Bool)

(declare-fun e!2864938 () Bool)

(assert (=> d!1445379 (=> res!1920641 e!2864938)))

(assert (=> d!1445379 (= res!1920641 ((_ is Nil!51026) (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> d!1445379 (= (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185265) e!2864938)))

(declare-fun b!4593354 () Bool)

(declare-fun e!2864939 () Bool)

(assert (=> b!4593354 (= e!2864938 e!2864939)))

(declare-fun res!1920642 () Bool)

(assert (=> b!4593354 (=> (not res!1920642) (not e!2864939))))

(assert (=> b!4593354 (= res!1920642 (dynLambda!21374 lambda!185265 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun b!4593355 () Bool)

(assert (=> b!4593355 (= e!2864939 (forall!10560 (t!358144 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))) lambda!185265))))

(assert (= (and d!1445379 (not res!1920641)) b!4593354))

(assert (= (and b!4593354 res!1920642) b!4593355))

(declare-fun b_lambda!168785 () Bool)

(assert (=> (not b_lambda!168785) (not b!4593354)))

(declare-fun m!5417001 () Bool)

(assert (=> b!4593354 m!5417001))

(declare-fun m!5417003 () Bool)

(assert (=> b!4593355 m!5417003))

(assert (=> b!4593120 d!1445379))

(declare-fun d!1445381 () Bool)

(declare-fun res!1920643 () Bool)

(declare-fun e!2864940 () Bool)

(assert (=> d!1445381 (=> res!1920643 e!2864940)))

(assert (=> d!1445381 (= res!1920643 ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445381 (= (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185157) e!2864940)))

(declare-fun b!4593356 () Bool)

(declare-fun e!2864941 () Bool)

(assert (=> b!4593356 (= e!2864940 e!2864941)))

(declare-fun res!1920644 () Bool)

(assert (=> b!4593356 (=> (not res!1920644) (not e!2864941))))

(assert (=> b!4593356 (= res!1920644 (dynLambda!21372 lambda!185157 (h!56979 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun b!4593357 () Bool)

(assert (=> b!4593357 (= e!2864941 (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185157))))

(assert (= (and d!1445381 (not res!1920643)) b!4593356))

(assert (= (and b!4593356 res!1920644) b!4593357))

(declare-fun b_lambda!168787 () Bool)

(assert (=> (not b_lambda!168787) (not b!4593356)))

(declare-fun m!5417005 () Bool)

(assert (=> b!4593356 m!5417005))

(declare-fun m!5417007 () Bool)

(assert (=> b!4593357 m!5417007))

(assert (=> b!4593142 d!1445381))

(declare-fun d!1445383 () Bool)

(declare-fun res!1920645 () Bool)

(declare-fun e!2864942 () Bool)

(assert (=> d!1445383 (=> res!1920645 e!2864942)))

(assert (=> d!1445383 (= res!1920645 (not ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> d!1445383 (= (noDuplicateKeys!1298 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) e!2864942)))

(declare-fun b!4593358 () Bool)

(declare-fun e!2864943 () Bool)

(assert (=> b!4593358 (= e!2864942 e!2864943)))

(declare-fun res!1920646 () Bool)

(assert (=> b!4593358 (=> (not res!1920646) (not e!2864943))))

(assert (=> b!4593358 (= res!1920646 (not (containsKey!2110 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))))

(declare-fun b!4593359 () Bool)

(assert (=> b!4593359 (= e!2864943 (noDuplicateKeys!1298 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445383 (not res!1920645)) b!4593358))

(assert (= (and b!4593358 res!1920646) b!4593359))

(declare-fun m!5417009 () Bool)

(assert (=> b!4593358 m!5417009))

(declare-fun m!5417011 () Bool)

(assert (=> b!4593359 m!5417011))

(assert (=> b!4593186 d!1445383))

(declare-fun d!1445385 () Bool)

(declare-fun res!1920647 () Bool)

(declare-fun e!2864944 () Bool)

(assert (=> d!1445385 (=> res!1920647 e!2864944)))

(assert (=> d!1445385 (= res!1920647 (not ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 lt!1754228))))))))

(assert (=> d!1445385 (= (noDuplicateKeys!1298 (t!358144 (_2!29116 (h!56979 lt!1754228)))) e!2864944)))

(declare-fun b!4593360 () Bool)

(declare-fun e!2864945 () Bool)

(assert (=> b!4593360 (= e!2864944 e!2864945)))

(declare-fun res!1920648 () Bool)

(assert (=> b!4593360 (=> (not res!1920648) (not e!2864945))))

(assert (=> b!4593360 (= res!1920648 (not (containsKey!2110 (t!358144 (t!358144 (_2!29116 (h!56979 lt!1754228)))) (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 lt!1754228))))))))))

(declare-fun b!4593361 () Bool)

(assert (=> b!4593361 (= e!2864945 (noDuplicateKeys!1298 (t!358144 (t!358144 (_2!29116 (h!56979 lt!1754228))))))))

(assert (= (and d!1445385 (not res!1920647)) b!4593360))

(assert (= (and b!4593360 res!1920648) b!4593361))

(declare-fun m!5417013 () Bool)

(assert (=> b!4593360 m!5417013))

(declare-fun m!5417015 () Bool)

(assert (=> b!4593361 m!5417015))

(assert (=> b!4593029 d!1445385))

(declare-fun d!1445387 () Bool)

(declare-fun res!1920649 () Bool)

(declare-fun e!2864946 () Bool)

(assert (=> d!1445387 (=> res!1920649 e!2864946)))

(assert (=> d!1445387 (= res!1920649 (and ((_ is Cons!51026) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) key!3287)))))

(assert (=> d!1445387 (= (containsKey!2113 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) key!3287) e!2864946)))

(declare-fun b!4593362 () Bool)

(declare-fun e!2864947 () Bool)

(assert (=> b!4593362 (= e!2864946 e!2864947)))

(declare-fun res!1920650 () Bool)

(assert (=> b!4593362 (=> (not res!1920650) (not e!2864947))))

(assert (=> b!4593362 (= res!1920650 ((_ is Cons!51026) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(declare-fun b!4593363 () Bool)

(assert (=> b!4593363 (= e!2864947 (containsKey!2113 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(assert (= (and d!1445387 (not res!1920649)) b!4593362))

(assert (= (and b!4593362 res!1920650) b!4593363))

(declare-fun m!5417017 () Bool)

(assert (=> b!4593363 m!5417017))

(assert (=> b!4593037 d!1445387))

(declare-fun d!1445389 () Bool)

(declare-fun res!1920651 () Bool)

(declare-fun e!2864948 () Bool)

(assert (=> d!1445389 (=> res!1920651 e!2864948)))

(assert (=> d!1445389 (= res!1920651 (not ((_ is Cons!51026) (_2!29116 (h!56979 (t!358145 lt!1754228))))))))

(assert (=> d!1445389 (= (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 lt!1754228)))) e!2864948)))

(declare-fun b!4593364 () Bool)

(declare-fun e!2864949 () Bool)

(assert (=> b!4593364 (= e!2864948 e!2864949)))

(declare-fun res!1920652 () Bool)

(assert (=> b!4593364 (=> (not res!1920652) (not e!2864949))))

(assert (=> b!4593364 (= res!1920652 (not (containsKey!2110 (t!358144 (_2!29116 (h!56979 (t!358145 lt!1754228)))) (_1!29115 (h!56978 (_2!29116 (h!56979 (t!358145 lt!1754228))))))))))

(declare-fun b!4593365 () Bool)

(assert (=> b!4593365 (= e!2864949 (noDuplicateKeys!1298 (t!358144 (_2!29116 (h!56979 (t!358145 lt!1754228))))))))

(assert (= (and d!1445389 (not res!1920651)) b!4593364))

(assert (= (and b!4593364 res!1920652) b!4593365))

(declare-fun m!5417019 () Bool)

(assert (=> b!4593364 m!5417019))

(declare-fun m!5417021 () Bool)

(assert (=> b!4593365 m!5417021))

(assert (=> bs!1008337 d!1445389))

(declare-fun b!4593366 () Bool)

(declare-fun e!2864950 () List!51150)

(assert (=> b!4593366 (= e!2864950 (t!358144 (t!358144 (t!358144 lt!1754235))))))

(declare-fun d!1445391 () Bool)

(declare-fun lt!1754660 () List!51150)

(assert (=> d!1445391 (not (containsKey!2110 lt!1754660 key!3287))))

(assert (=> d!1445391 (= lt!1754660 e!2864950)))

(declare-fun c!786629 () Bool)

(assert (=> d!1445391 (= c!786629 (and ((_ is Cons!51026) (t!358144 (t!358144 lt!1754235))) (= (_1!29115 (h!56978 (t!358144 (t!358144 lt!1754235)))) key!3287)))))

(assert (=> d!1445391 (noDuplicateKeys!1298 (t!358144 (t!358144 lt!1754235)))))

(assert (=> d!1445391 (= (removePairForKey!923 (t!358144 (t!358144 lt!1754235)) key!3287) lt!1754660)))

(declare-fun b!4593369 () Bool)

(declare-fun e!2864951 () List!51150)

(assert (=> b!4593369 (= e!2864951 Nil!51026)))

(declare-fun b!4593368 () Bool)

(assert (=> b!4593368 (= e!2864951 (Cons!51026 (h!56978 (t!358144 (t!358144 lt!1754235))) (removePairForKey!923 (t!358144 (t!358144 (t!358144 lt!1754235))) key!3287)))))

(declare-fun b!4593367 () Bool)

(assert (=> b!4593367 (= e!2864950 e!2864951)))

(declare-fun c!786630 () Bool)

(assert (=> b!4593367 (= c!786630 ((_ is Cons!51026) (t!358144 (t!358144 lt!1754235))))))

(assert (= (and d!1445391 c!786629) b!4593366))

(assert (= (and d!1445391 (not c!786629)) b!4593367))

(assert (= (and b!4593367 c!786630) b!4593368))

(assert (= (and b!4593367 (not c!786630)) b!4593369))

(declare-fun m!5417023 () Bool)

(assert (=> d!1445391 m!5417023))

(assert (=> d!1445391 m!5416829))

(declare-fun m!5417025 () Bool)

(assert (=> b!4593368 m!5417025))

(assert (=> b!4593169 d!1445391))

(declare-fun bs!1008440 () Bool)

(declare-fun d!1445393 () Bool)

(assert (= bs!1008440 (and d!1445393 b!4593121)))

(declare-fun lambda!185290 () Int)

(assert (=> bs!1008440 (not (= lambda!185290 lambda!185264))))

(declare-fun bs!1008442 () Bool)

(assert (= bs!1008442 (and d!1445393 d!1445139)))

(assert (=> bs!1008442 (not (= lambda!185290 lambda!185265))))

(declare-fun bs!1008444 () Bool)

(assert (= bs!1008444 (and d!1445393 b!4593323)))

(assert (=> bs!1008444 (not (= lambda!185290 lambda!185279))))

(assert (=> bs!1008444 (not (= lambda!185290 lambda!185280))))

(declare-fun bs!1008448 () Bool)

(assert (= bs!1008448 (and d!1445393 b!4593124)))

(assert (=> bs!1008448 (not (= lambda!185290 lambda!185262))))

(declare-fun bs!1008450 () Bool)

(assert (= bs!1008450 (and d!1445393 d!1445007)))

(assert (=> bs!1008450 (= (= (_1!29116 (h!56979 (toList!4611 lm!1477))) hash!344) (= lambda!185290 lambda!185164))))

(declare-fun bs!1008452 () Bool)

(assert (= bs!1008452 (and d!1445393 b!4593326)))

(assert (=> bs!1008452 (not (= lambda!185290 lambda!185278))))

(declare-fun bs!1008453 () Bool)

(assert (= bs!1008453 (and d!1445393 d!1445347)))

(assert (=> bs!1008453 (not (= lambda!185290 lambda!185281))))

(assert (=> bs!1008440 (not (= lambda!185290 lambda!185263))))

(assert (=> d!1445393 true))

(assert (=> d!1445393 true))

(assert (=> d!1445393 (= (allKeysSameHash!1154 (_2!29116 (h!56979 (toList!4611 lm!1477))) (_1!29116 (h!56979 (toList!4611 lm!1477))) hashF!1107) (forall!10560 (_2!29116 (h!56979 (toList!4611 lm!1477))) lambda!185290))))

(declare-fun bs!1008455 () Bool)

(assert (= bs!1008455 d!1445393))

(declare-fun m!5417031 () Bool)

(assert (=> bs!1008455 m!5417031))

(assert (=> bs!1008342 d!1445393))

(declare-fun d!1445397 () Bool)

(declare-fun res!1920655 () Bool)

(declare-fun e!2864954 () Bool)

(assert (=> d!1445397 (=> res!1920655 e!2864954)))

(assert (=> d!1445397 (= res!1920655 (and ((_ is Cons!51026) (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= (_1!29115 (h!56978 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))) key!3287)))))

(assert (=> d!1445397 (= (containsKey!2110 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) key!3287) e!2864954)))

(declare-fun b!4593374 () Bool)

(declare-fun e!2864955 () Bool)

(assert (=> b!4593374 (= e!2864954 e!2864955)))

(declare-fun res!1920656 () Bool)

(assert (=> b!4593374 (=> (not res!1920656) (not e!2864955))))

(assert (=> b!4593374 (= res!1920656 ((_ is Cons!51026) (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun b!4593375 () Bool)

(assert (=> b!4593375 (= e!2864955 (containsKey!2110 (t!358144 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) key!3287))))

(assert (= (and d!1445397 (not res!1920655)) b!4593374))

(assert (= (and b!4593374 res!1920656) b!4593375))

(declare-fun m!5417035 () Bool)

(assert (=> b!4593375 m!5417035))

(assert (=> b!4593152 d!1445397))

(declare-fun d!1445399 () Bool)

(declare-fun lt!1754663 () Bool)

(assert (=> d!1445399 (= lt!1754663 (select (content!8620 (t!358147 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(declare-fun e!2864957 () Bool)

(assert (=> d!1445399 (= lt!1754663 e!2864957)))

(declare-fun res!1920658 () Bool)

(assert (=> d!1445399 (=> (not res!1920658) (not e!2864957))))

(assert (=> d!1445399 (= res!1920658 ((_ is Cons!51029) (t!358147 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))))))))

(assert (=> d!1445399 (= (contains!13953 (t!358147 (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))) key!3287) lt!1754663)))

(declare-fun b!4593376 () Bool)

(declare-fun e!2864956 () Bool)

(assert (=> b!4593376 (= e!2864957 e!2864956)))

(declare-fun res!1920657 () Bool)

(assert (=> b!4593376 (=> res!1920657 e!2864956)))

(assert (=> b!4593376 (= res!1920657 (= (h!56983 (t!358147 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(declare-fun b!4593377 () Bool)

(assert (=> b!4593377 (= e!2864956 (contains!13953 (t!358147 (t!358147 (keys!17850 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(assert (= (and d!1445399 res!1920658) b!4593376))

(assert (= (and b!4593376 (not res!1920657)) b!4593377))

(declare-fun m!5417041 () Bool)

(assert (=> d!1445399 m!5417041))

(declare-fun m!5417043 () Bool)

(assert (=> d!1445399 m!5417043))

(declare-fun m!5417047 () Bool)

(assert (=> b!4593377 m!5417047))

(assert (=> b!4593055 d!1445399))

(declare-fun d!1445405 () Bool)

(declare-fun res!1920661 () Bool)

(declare-fun e!2864960 () Bool)

(assert (=> d!1445405 (=> res!1920661 e!2864960)))

(assert (=> d!1445405 (= res!1920661 (not ((_ is Cons!51026) (t!358144 (_2!29116 lt!1754229)))))))

(assert (=> d!1445405 (= (noDuplicateKeys!1298 (t!358144 (_2!29116 lt!1754229))) e!2864960)))

(declare-fun b!4593380 () Bool)

(declare-fun e!2864962 () Bool)

(assert (=> b!4593380 (= e!2864960 e!2864962)))

(declare-fun res!1920663 () Bool)

(assert (=> b!4593380 (=> (not res!1920663) (not e!2864962))))

(assert (=> b!4593380 (= res!1920663 (not (containsKey!2110 (t!358144 (t!358144 (_2!29116 lt!1754229))) (_1!29115 (h!56978 (t!358144 (_2!29116 lt!1754229)))))))))

(declare-fun b!4593382 () Bool)

(assert (=> b!4593382 (= e!2864962 (noDuplicateKeys!1298 (t!358144 (t!358144 (_2!29116 lt!1754229)))))))

(assert (= (and d!1445405 (not res!1920661)) b!4593380))

(assert (= (and b!4593380 res!1920663) b!4593382))

(declare-fun m!5417051 () Bool)

(assert (=> b!4593380 m!5417051))

(declare-fun m!5417055 () Bool)

(assert (=> b!4593382 m!5417055))

(assert (=> b!4593157 d!1445405))

(declare-fun d!1445407 () Bool)

(declare-fun lt!1754664 () Bool)

(assert (=> d!1445407 (= lt!1754664 (select (content!8618 (t!358145 (toList!4611 lm!1477))) (tuple2!51645 hash!344 lt!1754235)))))

(declare-fun e!2864964 () Bool)

(assert (=> d!1445407 (= lt!1754664 e!2864964)))

(declare-fun res!1920665 () Bool)

(assert (=> d!1445407 (=> (not res!1920665) (not e!2864964))))

(assert (=> d!1445407 (= res!1920665 ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445407 (= (contains!13950 (t!358145 (toList!4611 lm!1477)) (tuple2!51645 hash!344 lt!1754235)) lt!1754664)))

(declare-fun b!4593384 () Bool)

(declare-fun e!2864965 () Bool)

(assert (=> b!4593384 (= e!2864964 e!2864965)))

(declare-fun res!1920666 () Bool)

(assert (=> b!4593384 (=> res!1920666 e!2864965)))

(assert (=> b!4593384 (= res!1920666 (= (h!56979 (t!358145 (toList!4611 lm!1477))) (tuple2!51645 hash!344 lt!1754235)))))

(declare-fun b!4593385 () Bool)

(assert (=> b!4593385 (= e!2864965 (contains!13950 (t!358145 (t!358145 (toList!4611 lm!1477))) (tuple2!51645 hash!344 lt!1754235)))))

(assert (= (and d!1445407 res!1920665) b!4593384))

(assert (= (and b!4593384 (not res!1920666)) b!4593385))

(assert (=> d!1445407 m!5416287))

(declare-fun m!5417059 () Bool)

(assert (=> d!1445407 m!5417059))

(declare-fun m!5417061 () Bool)

(assert (=> b!4593385 m!5417061))

(assert (=> b!4593193 d!1445407))

(declare-fun d!1445411 () Bool)

(declare-fun res!1920669 () Bool)

(declare-fun e!2864968 () Bool)

(assert (=> d!1445411 (=> res!1920669 e!2864968)))

(assert (=> d!1445411 (= res!1920669 (and ((_ is Cons!51026) (t!358144 (t!358144 newBucket!178))) (= (_1!29115 (h!56978 (t!358144 (t!358144 newBucket!178)))) (_1!29115 (h!56978 (t!358144 newBucket!178))))))))

(assert (=> d!1445411 (= (containsKey!2110 (t!358144 (t!358144 newBucket!178)) (_1!29115 (h!56978 (t!358144 newBucket!178)))) e!2864968)))

(declare-fun b!4593388 () Bool)

(declare-fun e!2864969 () Bool)

(assert (=> b!4593388 (= e!2864968 e!2864969)))

(declare-fun res!1920670 () Bool)

(assert (=> b!4593388 (=> (not res!1920670) (not e!2864969))))

(assert (=> b!4593388 (= res!1920670 ((_ is Cons!51026) (t!358144 (t!358144 newBucket!178))))))

(declare-fun b!4593389 () Bool)

(assert (=> b!4593389 (= e!2864969 (containsKey!2110 (t!358144 (t!358144 (t!358144 newBucket!178))) (_1!29115 (h!56978 (t!358144 newBucket!178)))))))

(assert (= (and d!1445411 (not res!1920669)) b!4593388))

(assert (= (and b!4593388 res!1920670) b!4593389))

(declare-fun m!5417067 () Bool)

(assert (=> b!4593389 m!5417067))

(assert (=> b!4593085 d!1445411))

(declare-fun d!1445415 () Bool)

(assert (=> d!1445415 (isDefined!8635 (getValueByKey!1287 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)))))

(declare-fun lt!1754665 () Unit!107542)

(assert (=> d!1445415 (= lt!1754665 (choose!30704 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)))))

(declare-fun e!2864972 () Bool)

(assert (=> d!1445415 e!2864972))

(declare-fun res!1920673 () Bool)

(assert (=> d!1445415 (=> (not res!1920673) (not e!2864972))))

(assert (=> d!1445415 (= res!1920673 (isStrictlySorted!528 (toList!4611 lm!1477)))))

(assert (=> d!1445415 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1191 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)) lt!1754665)))

(declare-fun b!4593392 () Bool)

(assert (=> b!4593392 (= e!2864972 (containsKey!2114 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)))))

(assert (= (and d!1445415 res!1920673) b!4593392))

(assert (=> d!1445415 m!5416017))

(assert (=> d!1445415 m!5416645))

(assert (=> d!1445415 m!5416645))

(assert (=> d!1445415 m!5416647))

(assert (=> d!1445415 m!5416017))

(declare-fun m!5417073 () Bool)

(assert (=> d!1445415 m!5417073))

(assert (=> d!1445415 m!5416181))

(assert (=> b!4593392 m!5416017))

(assert (=> b!4593392 m!5416641))

(assert (=> b!4593187 d!1445415))

(assert (=> b!4593187 d!1445331))

(assert (=> b!4593187 d!1445333))

(declare-fun d!1445419 () Bool)

(declare-fun lt!1754666 () Bool)

(assert (=> d!1445419 (= lt!1754666 (select (content!8618 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754229))))

(declare-fun e!2864973 () Bool)

(assert (=> d!1445419 (= lt!1754666 e!2864973)))

(declare-fun res!1920674 () Bool)

(assert (=> d!1445419 (=> (not res!1920674) (not e!2864973))))

(assert (=> d!1445419 (= res!1920674 ((_ is Cons!51027) (t!358145 (t!358145 (toList!4611 lm!1477)))))))

(assert (=> d!1445419 (= (contains!13950 (t!358145 (t!358145 (toList!4611 lm!1477))) lt!1754229) lt!1754666)))

(declare-fun b!4593393 () Bool)

(declare-fun e!2864974 () Bool)

(assert (=> b!4593393 (= e!2864973 e!2864974)))

(declare-fun res!1920675 () Bool)

(assert (=> b!4593393 (=> res!1920675 e!2864974)))

(assert (=> b!4593393 (= res!1920675 (= (h!56979 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754229))))

(declare-fun b!4593394 () Bool)

(assert (=> b!4593394 (= e!2864974 (contains!13950 (t!358145 (t!358145 (t!358145 (toList!4611 lm!1477)))) lt!1754229))))

(assert (= (and d!1445419 res!1920674) b!4593393))

(assert (= (and b!4593393 (not res!1920675)) b!4593394))

(declare-fun m!5417075 () Bool)

(assert (=> d!1445419 m!5417075))

(declare-fun m!5417077 () Bool)

(assert (=> d!1445419 m!5417077))

(declare-fun m!5417079 () Bool)

(assert (=> b!4593394 m!5417079))

(assert (=> b!4592899 d!1445419))

(declare-fun d!1445421 () Bool)

(declare-fun res!1920676 () Bool)

(declare-fun e!2864975 () Bool)

(assert (=> d!1445421 (=> res!1920676 e!2864975)))

(assert (=> d!1445421 (= res!1920676 (and ((_ is Cons!51026) (t!358144 lt!1754325)) (= (_1!29115 (h!56978 (t!358144 lt!1754325))) key!3287)))))

(assert (=> d!1445421 (= (containsKey!2110 (t!358144 lt!1754325) key!3287) e!2864975)))

(declare-fun b!4593395 () Bool)

(declare-fun e!2864976 () Bool)

(assert (=> b!4593395 (= e!2864975 e!2864976)))

(declare-fun res!1920677 () Bool)

(assert (=> b!4593395 (=> (not res!1920677) (not e!2864976))))

(assert (=> b!4593395 (= res!1920677 ((_ is Cons!51026) (t!358144 lt!1754325)))))

(declare-fun b!4593396 () Bool)

(assert (=> b!4593396 (= e!2864976 (containsKey!2110 (t!358144 (t!358144 lt!1754325)) key!3287))))

(assert (= (and d!1445421 (not res!1920676)) b!4593395))

(assert (= (and b!4593395 res!1920677) b!4593396))

(declare-fun m!5417081 () Bool)

(assert (=> b!4593396 m!5417081))

(assert (=> b!4593051 d!1445421))

(declare-fun d!1445423 () Bool)

(declare-fun res!1920678 () Bool)

(declare-fun e!2864977 () Bool)

(assert (=> d!1445423 (=> res!1920678 e!2864977)))

(assert (=> d!1445423 (= res!1920678 ((_ is Nil!51027) (t!358145 (t!358145 (toList!4611 lm!1477)))))))

(assert (=> d!1445423 (= (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185132) e!2864977)))

(declare-fun b!4593397 () Bool)

(declare-fun e!2864978 () Bool)

(assert (=> b!4593397 (= e!2864977 e!2864978)))

(declare-fun res!1920679 () Bool)

(assert (=> b!4593397 (=> (not res!1920679) (not e!2864978))))

(assert (=> b!4593397 (= res!1920679 (dynLambda!21372 lambda!185132 (h!56979 (t!358145 (t!358145 (toList!4611 lm!1477))))))))

(declare-fun b!4593398 () Bool)

(assert (=> b!4593398 (= e!2864978 (forall!10558 (t!358145 (t!358145 (t!358145 (toList!4611 lm!1477)))) lambda!185132))))

(assert (= (and d!1445423 (not res!1920678)) b!4593397))

(assert (= (and b!4593397 res!1920679) b!4593398))

(declare-fun b_lambda!168795 () Bool)

(assert (=> (not b_lambda!168795) (not b!4593397)))

(declare-fun m!5417083 () Bool)

(assert (=> b!4593397 m!5417083))

(declare-fun m!5417085 () Bool)

(assert (=> b!4593398 m!5417085))

(assert (=> b!4593184 d!1445423))

(declare-fun d!1445425 () Bool)

(declare-fun c!786633 () Bool)

(assert (=> d!1445425 (= c!786633 ((_ is Nil!51029) lt!1754461))))

(declare-fun e!2864984 () (InoxSet K!12395))

(assert (=> d!1445425 (= (content!8620 lt!1754461) e!2864984)))

(declare-fun b!4593406 () Bool)

(assert (=> b!4593406 (= e!2864984 ((as const (Array K!12395 Bool)) false))))

(declare-fun b!4593407 () Bool)

(assert (=> b!4593407 (= e!2864984 ((_ map or) (store ((as const (Array K!12395 Bool)) false) (h!56983 lt!1754461) true) (content!8620 (t!358147 lt!1754461))))))

(assert (= (and d!1445425 c!786633) b!4593406))

(assert (= (and d!1445425 (not c!786633)) b!4593407))

(declare-fun m!5417093 () Bool)

(assert (=> b!4593407 m!5417093))

(declare-fun m!5417095 () Bool)

(assert (=> b!4593407 m!5417095))

(assert (=> b!4593018 d!1445425))

(declare-fun d!1445429 () Bool)

(declare-fun c!786635 () Bool)

(assert (=> d!1445429 (= c!786635 ((_ is Nil!51029) (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185215)))))

(declare-fun e!2864986 () (InoxSet K!12395))

(assert (=> d!1445429 (= (content!8620 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185215)) e!2864986)))

(declare-fun b!4593410 () Bool)

(assert (=> b!4593410 (= e!2864986 ((as const (Array K!12395 Bool)) false))))

(declare-fun b!4593411 () Bool)

(assert (=> b!4593411 (= e!2864986 ((_ map or) (store ((as const (Array K!12395 Bool)) false) (h!56983 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185215)) true) (content!8620 (t!358147 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185215)))))))

(assert (= (and d!1445429 c!786635) b!4593410))

(assert (= (and d!1445429 (not c!786635)) b!4593411))

(declare-fun m!5417103 () Bool)

(assert (=> b!4593411 m!5417103))

(declare-fun m!5417105 () Bool)

(assert (=> b!4593411 m!5417105))

(assert (=> b!4593018 d!1445429))

(declare-fun d!1445435 () Bool)

(declare-fun lt!1754673 () List!51153)

(declare-fun size!35959 (List!51153) Int)

(declare-fun size!35960 (List!51150) Int)

(assert (=> d!1445435 (= (size!35959 lt!1754673) (size!35960 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(declare-fun e!2865006 () List!51153)

(assert (=> d!1445435 (= lt!1754673 e!2865006)))

(declare-fun c!786640 () Bool)

(assert (=> d!1445435 (= c!786640 ((_ is Nil!51026) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(assert (=> d!1445435 (= (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185215) lt!1754673)))

(declare-fun b!4593435 () Bool)

(assert (=> b!4593435 (= e!2865006 Nil!51029)))

(declare-fun b!4593436 () Bool)

(declare-fun $colon$colon!1033 (List!51153 K!12395) List!51153)

(declare-fun dynLambda!21377 (Int tuple2!51642) K!12395)

(assert (=> b!4593436 (= e!2865006 ($colon$colon!1033 (map!11266 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) lambda!185215) (dynLambda!21377 lambda!185215 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445435 c!786640) b!4593435))

(assert (= (and d!1445435 (not c!786640)) b!4593436))

(declare-fun b_lambda!168807 () Bool)

(assert (=> (not b_lambda!168807) (not b!4593436)))

(declare-fun m!5417133 () Bool)

(assert (=> d!1445435 m!5417133))

(declare-fun m!5417135 () Bool)

(assert (=> d!1445435 m!5417135))

(declare-fun m!5417137 () Bool)

(assert (=> b!4593436 m!5417137))

(declare-fun m!5417139 () Bool)

(assert (=> b!4593436 m!5417139))

(assert (=> b!4593436 m!5417137))

(assert (=> b!4593436 m!5417139))

(declare-fun m!5417145 () Bool)

(assert (=> b!4593436 m!5417145))

(assert (=> b!4593018 d!1445435))

(declare-fun d!1445457 () Bool)

(declare-fun c!786642 () Bool)

(assert (=> d!1445457 (= c!786642 ((_ is Nil!51029) lt!1754485))))

(declare-fun e!2865010 () (InoxSet K!12395))

(assert (=> d!1445457 (= (content!8620 lt!1754485) e!2865010)))

(declare-fun b!4593441 () Bool)

(assert (=> b!4593441 (= e!2865010 ((as const (Array K!12395 Bool)) false))))

(declare-fun b!4593442 () Bool)

(assert (=> b!4593442 (= e!2865010 ((_ map or) (store ((as const (Array K!12395 Bool)) false) (h!56983 lt!1754485) true) (content!8620 (t!358147 lt!1754485))))))

(assert (= (and d!1445457 c!786642) b!4593441))

(assert (= (and d!1445457 (not c!786642)) b!4593442))

(declare-fun m!5417151 () Bool)

(assert (=> b!4593442 m!5417151))

(declare-fun m!5417153 () Bool)

(assert (=> b!4593442 m!5417153))

(assert (=> b!4593082 d!1445457))

(declare-fun d!1445461 () Bool)

(declare-fun c!786644 () Bool)

(assert (=> d!1445461 (= c!786644 ((_ is Nil!51029) (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185229)))))

(declare-fun e!2865012 () (InoxSet K!12395))

(assert (=> d!1445461 (= (content!8620 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185229)) e!2865012)))

(declare-fun b!4593445 () Bool)

(assert (=> b!4593445 (= e!2865012 ((as const (Array K!12395 Bool)) false))))

(declare-fun b!4593446 () Bool)

(assert (=> b!4593446 (= e!2865012 ((_ map or) (store ((as const (Array K!12395 Bool)) false) (h!56983 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185229)) true) (content!8620 (t!358147 (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185229)))))))

(assert (= (and d!1445461 c!786644) b!4593445))

(assert (= (and d!1445461 (not c!786644)) b!4593446))

(declare-fun m!5417159 () Bool)

(assert (=> b!4593446 m!5417159))

(declare-fun m!5417161 () Bool)

(assert (=> b!4593446 m!5417161))

(assert (=> b!4593082 d!1445461))

(declare-fun d!1445465 () Bool)

(declare-fun lt!1754675 () List!51153)

(assert (=> d!1445465 (= (size!35959 lt!1754675) (size!35960 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(declare-fun e!2865013 () List!51153)

(assert (=> d!1445465 (= lt!1754675 e!2865013)))

(declare-fun c!786645 () Bool)

(assert (=> d!1445465 (= c!786645 ((_ is Nil!51026) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(assert (=> d!1445465 (= (map!11266 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) lambda!185229) lt!1754675)))

(declare-fun b!4593447 () Bool)

(assert (=> b!4593447 (= e!2865013 Nil!51029)))

(declare-fun b!4593448 () Bool)

(assert (=> b!4593448 (= e!2865013 ($colon$colon!1033 (map!11266 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) lambda!185229) (dynLambda!21377 lambda!185229 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445465 c!786645) b!4593447))

(assert (= (and d!1445465 (not c!786645)) b!4593448))

(declare-fun b_lambda!168809 () Bool)

(assert (=> (not b_lambda!168809) (not b!4593448)))

(declare-fun m!5417163 () Bool)

(assert (=> d!1445465 m!5417163))

(assert (=> d!1445465 m!5417135))

(declare-fun m!5417165 () Bool)

(assert (=> b!4593448 m!5417165))

(declare-fun m!5417167 () Bool)

(assert (=> b!4593448 m!5417167))

(assert (=> b!4593448 m!5417165))

(assert (=> b!4593448 m!5417167))

(declare-fun m!5417169 () Bool)

(assert (=> b!4593448 m!5417169))

(assert (=> b!4593082 d!1445465))

(assert (=> bs!1008340 d!1445205))

(declare-fun d!1445467 () Bool)

(assert (=> d!1445467 (= (length!464 lt!1754461) (size!35959 lt!1754461))))

(declare-fun bs!1008457 () Bool)

(assert (= bs!1008457 d!1445467))

(declare-fun m!5417171 () Bool)

(assert (=> bs!1008457 m!5417171))

(assert (=> b!4593022 d!1445467))

(declare-fun d!1445469 () Bool)

(assert (=> d!1445469 (= (length!465 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (size!35960 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(declare-fun bs!1008458 () Bool)

(assert (= bs!1008458 d!1445469))

(assert (=> bs!1008458 m!5417135))

(assert (=> b!4593022 d!1445469))

(declare-fun d!1445471 () Bool)

(assert (=> d!1445471 (= (isEmpty!28851 (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287)) (not ((_ is Some!11365) (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))))

(assert (=> d!1445197 d!1445471))

(declare-fun d!1445473 () Bool)

(declare-fun res!1920700 () Bool)

(declare-fun e!2865016 () Bool)

(assert (=> d!1445473 (=> res!1920700 e!2865016)))

(assert (=> d!1445473 (= res!1920700 (and ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 lt!1754228)))) (= (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 lt!1754228))))) key!3287)))))

(assert (=> d!1445473 (= (containsKey!2110 (t!358144 (_2!29116 (h!56979 lt!1754228))) key!3287) e!2865016)))

(declare-fun b!4593453 () Bool)

(declare-fun e!2865017 () Bool)

(assert (=> b!4593453 (= e!2865016 e!2865017)))

(declare-fun res!1920701 () Bool)

(assert (=> b!4593453 (=> (not res!1920701) (not e!2865017))))

(assert (=> b!4593453 (= res!1920701 ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 lt!1754228)))))))

(declare-fun b!4593454 () Bool)

(assert (=> b!4593454 (= e!2865017 (containsKey!2110 (t!358144 (t!358144 (_2!29116 (h!56979 lt!1754228)))) key!3287))))

(assert (= (and d!1445473 (not res!1920700)) b!4593453))

(assert (= (and b!4593453 res!1920701) b!4593454))

(declare-fun m!5417173 () Bool)

(assert (=> b!4593454 m!5417173))

(assert (=> b!4593150 d!1445473))

(declare-fun d!1445475 () Bool)

(declare-fun c!786648 () Bool)

(assert (=> d!1445475 (= c!786648 ((_ is Nil!51029) e!2864471))))

(declare-fun e!2865018 () (InoxSet K!12395))

(assert (=> d!1445475 (= (content!8620 e!2864471) e!2865018)))

(declare-fun b!4593455 () Bool)

(assert (=> b!4593455 (= e!2865018 ((as const (Array K!12395 Bool)) false))))

(declare-fun b!4593456 () Bool)

(assert (=> b!4593456 (= e!2865018 ((_ map or) (store ((as const (Array K!12395 Bool)) false) (h!56983 e!2864471) true) (content!8620 (t!358147 e!2864471))))))

(assert (= (and d!1445475 c!786648) b!4593455))

(assert (= (and d!1445475 (not c!786648)) b!4593456))

(declare-fun m!5417175 () Bool)

(assert (=> b!4593456 m!5417175))

(declare-fun m!5417177 () Bool)

(assert (=> b!4593456 m!5417177))

(assert (=> d!1445039 d!1445475))

(declare-fun d!1445477 () Bool)

(declare-fun res!1920702 () Bool)

(declare-fun e!2865019 () Bool)

(assert (=> d!1445477 (=> res!1920702 e!2865019)))

(assert (=> d!1445477 (= res!1920702 ((_ is Nil!51026) (t!358144 newBucket!178)))))

(assert (=> d!1445477 (= (forall!10560 (t!358144 newBucket!178) lambda!185164) e!2865019)))

(declare-fun b!4593457 () Bool)

(declare-fun e!2865020 () Bool)

(assert (=> b!4593457 (= e!2865019 e!2865020)))

(declare-fun res!1920703 () Bool)

(assert (=> b!4593457 (=> (not res!1920703) (not e!2865020))))

(assert (=> b!4593457 (= res!1920703 (dynLambda!21374 lambda!185164 (h!56978 (t!358144 newBucket!178))))))

(declare-fun b!4593458 () Bool)

(assert (=> b!4593458 (= e!2865020 (forall!10560 (t!358144 (t!358144 newBucket!178)) lambda!185164))))

(assert (= (and d!1445477 (not res!1920702)) b!4593457))

(assert (= (and b!4593457 res!1920703) b!4593458))

(declare-fun b_lambda!168811 () Bool)

(assert (=> (not b_lambda!168811) (not b!4593457)))

(declare-fun m!5417179 () Bool)

(assert (=> b!4593457 m!5417179))

(declare-fun m!5417181 () Bool)

(assert (=> b!4593458 m!5417181))

(assert (=> b!4593148 d!1445477))

(declare-fun d!1445479 () Bool)

(declare-fun res!1920704 () Bool)

(declare-fun e!2865022 () Bool)

(assert (=> d!1445479 (=> res!1920704 e!2865022)))

(assert (=> d!1445479 (= res!1920704 ((_ is Nil!51029) lt!1754461))))

(assert (=> d!1445479 (= (forall!10562 lt!1754461 lambda!185214) e!2865022)))

(declare-fun b!4593461 () Bool)

(declare-fun e!2865023 () Bool)

(assert (=> b!4593461 (= e!2865022 e!2865023)))

(declare-fun res!1920705 () Bool)

(assert (=> b!4593461 (=> (not res!1920705) (not e!2865023))))

(assert (=> b!4593461 (= res!1920705 (dynLambda!21375 lambda!185214 (h!56983 lt!1754461)))))

(declare-fun b!4593462 () Bool)

(assert (=> b!4593462 (= e!2865023 (forall!10562 (t!358147 lt!1754461) lambda!185214))))

(assert (= (and d!1445479 (not res!1920704)) b!4593461))

(assert (= (and b!4593461 res!1920705) b!4593462))

(declare-fun b_lambda!168815 () Bool)

(assert (=> (not b_lambda!168815) (not b!4593461)))

(declare-fun m!5417189 () Bool)

(assert (=> b!4593461 m!5417189))

(declare-fun m!5417193 () Bool)

(assert (=> b!4593462 m!5417193))

(assert (=> b!4593020 d!1445479))

(declare-fun d!1445483 () Bool)

(declare-fun res!1920706 () Bool)

(declare-fun e!2865024 () Bool)

(assert (=> d!1445483 (=> res!1920706 e!2865024)))

(assert (=> d!1445483 (= res!1920706 (and ((_ is Cons!51026) (t!358144 lt!1754235)) (= (_1!29115 (h!56978 (t!358144 lt!1754235))) (_1!29115 (h!56978 lt!1754235)))))))

(assert (=> d!1445483 (= (containsKey!2110 (t!358144 lt!1754235) (_1!29115 (h!56978 lt!1754235))) e!2865024)))

(declare-fun b!4593463 () Bool)

(declare-fun e!2865025 () Bool)

(assert (=> b!4593463 (= e!2865024 e!2865025)))

(declare-fun res!1920707 () Bool)

(assert (=> b!4593463 (=> (not res!1920707) (not e!2865025))))

(assert (=> b!4593463 (= res!1920707 ((_ is Cons!51026) (t!358144 lt!1754235)))))

(declare-fun b!4593464 () Bool)

(assert (=> b!4593464 (= e!2865025 (containsKey!2110 (t!358144 (t!358144 lt!1754235)) (_1!29115 (h!56978 lt!1754235))))))

(assert (= (and d!1445483 (not res!1920706)) b!4593463))

(assert (= (and b!4593463 res!1920707) b!4593464))

(declare-fun m!5417195 () Bool)

(assert (=> b!4593464 m!5417195))

(assert (=> b!4593052 d!1445483))

(declare-fun d!1445485 () Bool)

(declare-fun res!1920710 () Bool)

(declare-fun e!2865028 () Bool)

(assert (=> d!1445485 (=> res!1920710 e!2865028)))

(assert (=> d!1445485 (= res!1920710 ((_ is Nil!51026) (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (=> d!1445485 (= (forall!10560 (_2!29116 (h!56979 (toList!4611 lm!1477))) lambda!185265) e!2865028)))

(declare-fun b!4593467 () Bool)

(declare-fun e!2865029 () Bool)

(assert (=> b!4593467 (= e!2865028 e!2865029)))

(declare-fun res!1920711 () Bool)

(assert (=> b!4593467 (=> (not res!1920711) (not e!2865029))))

(assert (=> b!4593467 (= res!1920711 (dynLambda!21374 lambda!185265 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun b!4593468 () Bool)

(assert (=> b!4593468 (= e!2865029 (forall!10560 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) lambda!185265))))

(assert (= (and d!1445485 (not res!1920710)) b!4593467))

(assert (= (and b!4593467 res!1920711) b!4593468))

(declare-fun b_lambda!168817 () Bool)

(assert (=> (not b_lambda!168817) (not b!4593467)))

(declare-fun m!5417199 () Bool)

(assert (=> b!4593467 m!5417199))

(declare-fun m!5417201 () Bool)

(assert (=> b!4593468 m!5417201))

(assert (=> d!1445139 d!1445485))

(assert (=> d!1445139 d!1445205))

(declare-fun d!1445489 () Bool)

(declare-fun res!1920714 () Bool)

(declare-fun e!2865032 () Bool)

(assert (=> d!1445489 (=> res!1920714 e!2865032)))

(assert (=> d!1445489 (= res!1920714 (or ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))) ((_ is Nil!51027) (t!358145 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> d!1445489 (= (isStrictlySorted!528 (t!358145 (toList!4611 lm!1477))) e!2865032)))

(declare-fun b!4593471 () Bool)

(declare-fun e!2865033 () Bool)

(assert (=> b!4593471 (= e!2865032 e!2865033)))

(declare-fun res!1920715 () Bool)

(assert (=> b!4593471 (=> (not res!1920715) (not e!2865033))))

(assert (=> b!4593471 (= res!1920715 (bvslt (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) (_1!29116 (h!56979 (t!358145 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun b!4593472 () Bool)

(assert (=> b!4593472 (= e!2865033 (isStrictlySorted!528 (t!358145 (t!358145 (toList!4611 lm!1477)))))))

(assert (= (and d!1445489 (not res!1920714)) b!4593471))

(assert (= (and b!4593471 res!1920715) b!4593472))

(declare-fun m!5417203 () Bool)

(assert (=> b!4593472 m!5417203))

(assert (=> b!4593166 d!1445489))

(declare-fun d!1445491 () Bool)

(declare-fun res!1920716 () Bool)

(declare-fun e!2865034 () Bool)

(assert (=> d!1445491 (=> res!1920716 e!2865034)))

(assert (=> d!1445491 (= res!1920716 (and ((_ is Cons!51026) (_2!29116 (h!56979 (t!358145 lt!1754228)))) (= (_1!29115 (h!56978 (_2!29116 (h!56979 (t!358145 lt!1754228))))) key!3287)))))

(assert (=> d!1445491 (= (containsKey!2110 (_2!29116 (h!56979 (t!358145 lt!1754228))) key!3287) e!2865034)))

(declare-fun b!4593473 () Bool)

(declare-fun e!2865035 () Bool)

(assert (=> b!4593473 (= e!2865034 e!2865035)))

(declare-fun res!1920717 () Bool)

(assert (=> b!4593473 (=> (not res!1920717) (not e!2865035))))

(assert (=> b!4593473 (= res!1920717 ((_ is Cons!51026) (_2!29116 (h!56979 (t!358145 lt!1754228)))))))

(declare-fun b!4593474 () Bool)

(assert (=> b!4593474 (= e!2865035 (containsKey!2110 (t!358144 (_2!29116 (h!56979 (t!358145 lt!1754228)))) key!3287))))

(assert (= (and d!1445491 (not res!1920716)) b!4593473))

(assert (= (and b!4593473 res!1920717) b!4593474))

(declare-fun m!5417209 () Bool)

(assert (=> b!4593474 m!5417209))

(assert (=> b!4593153 d!1445491))

(declare-fun d!1445495 () Bool)

(declare-fun lt!1754680 () Bool)

(assert (=> d!1445495 (= lt!1754680 (select (content!8620 (t!358147 e!2864471)) key!3287))))

(declare-fun e!2865039 () Bool)

(assert (=> d!1445495 (= lt!1754680 e!2865039)))

(declare-fun res!1920719 () Bool)

(assert (=> d!1445495 (=> (not res!1920719) (not e!2865039))))

(assert (=> d!1445495 (= res!1920719 ((_ is Cons!51029) (t!358147 e!2864471)))))

(assert (=> d!1445495 (= (contains!13953 (t!358147 e!2864471) key!3287) lt!1754680)))

(declare-fun b!4593479 () Bool)

(declare-fun e!2865038 () Bool)

(assert (=> b!4593479 (= e!2865039 e!2865038)))

(declare-fun res!1920718 () Bool)

(assert (=> b!4593479 (=> res!1920718 e!2865038)))

(assert (=> b!4593479 (= res!1920718 (= (h!56983 (t!358147 e!2864471)) key!3287))))

(declare-fun b!4593480 () Bool)

(assert (=> b!4593480 (= e!2865038 (contains!13953 (t!358147 (t!358147 e!2864471)) key!3287))))

(assert (= (and d!1445495 res!1920719) b!4593479))

(assert (= (and b!4593479 (not res!1920718)) b!4593480))

(assert (=> d!1445495 m!5417177))

(declare-fun m!5417211 () Bool)

(assert (=> d!1445495 m!5417211))

(declare-fun m!5417213 () Bool)

(assert (=> b!4593480 m!5417213))

(assert (=> b!4592927 d!1445495))

(declare-fun d!1445497 () Bool)

(declare-fun res!1920720 () Bool)

(declare-fun e!2865040 () Bool)

(assert (=> d!1445497 (=> res!1920720 e!2865040)))

(assert (=> d!1445497 (= res!1920720 ((_ is Nil!51029) lt!1754461))))

(assert (=> d!1445497 (= (noDuplicate!804 lt!1754461) e!2865040)))

(declare-fun b!4593481 () Bool)

(declare-fun e!2865041 () Bool)

(assert (=> b!4593481 (= e!2865040 e!2865041)))

(declare-fun res!1920721 () Bool)

(assert (=> b!4593481 (=> (not res!1920721) (not e!2865041))))

(assert (=> b!4593481 (= res!1920721 (not (contains!13953 (t!358147 lt!1754461) (h!56983 lt!1754461))))))

(declare-fun b!4593482 () Bool)

(assert (=> b!4593482 (= e!2865041 (noDuplicate!804 (t!358147 lt!1754461)))))

(assert (= (and d!1445497 (not res!1920720)) b!4593481))

(assert (= (and b!4593481 res!1920721) b!4593482))

(declare-fun m!5417219 () Bool)

(assert (=> b!4593481 m!5417219))

(declare-fun m!5417221 () Bool)

(assert (=> b!4593482 m!5417221))

(assert (=> d!1445071 d!1445497))

(assert (=> d!1445071 d!1445295))

(declare-fun d!1445501 () Bool)

(declare-fun res!1920724 () Bool)

(declare-fun e!2865044 () Bool)

(assert (=> d!1445501 (=> res!1920724 e!2865044)))

(assert (=> d!1445501 (= res!1920724 ((_ is Nil!51026) (toList!4612 lt!1754552)))))

(assert (=> d!1445501 (= (forall!10560 (toList!4612 lt!1754552) lambda!185264) e!2865044)))

(declare-fun b!4593485 () Bool)

(declare-fun e!2865045 () Bool)

(assert (=> b!4593485 (= e!2865044 e!2865045)))

(declare-fun res!1920725 () Bool)

(assert (=> b!4593485 (=> (not res!1920725) (not e!2865045))))

(assert (=> b!4593485 (= res!1920725 (dynLambda!21374 lambda!185264 (h!56978 (toList!4612 lt!1754552))))))

(declare-fun b!4593486 () Bool)

(assert (=> b!4593486 (= e!2865045 (forall!10560 (t!358144 (toList!4612 lt!1754552)) lambda!185264))))

(assert (= (and d!1445501 (not res!1920724)) b!4593485))

(assert (= (and b!4593485 res!1920725) b!4593486))

(declare-fun b_lambda!168821 () Bool)

(assert (=> (not b_lambda!168821) (not b!4593485)))

(declare-fun m!5417227 () Bool)

(assert (=> b!4593485 m!5417227))

(declare-fun m!5417229 () Bool)

(assert (=> b!4593486 m!5417229))

(assert (=> b!4593121 d!1445501))

(declare-fun b!4593492 () Bool)

(assert (=> b!4593492 false))

(declare-fun lt!1754707 () Unit!107542)

(declare-fun lt!1754701 () Unit!107542)

(assert (=> b!4593492 (= lt!1754707 lt!1754701)))

(assert (=> b!4593492 (containsKey!2113 (toList!4612 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (=> b!4593492 (= lt!1754701 (lemmaInGetKeysListThenContainsKey!560 (toList!4612 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun e!2865054 () Unit!107542)

(declare-fun Unit!107614 () Unit!107542)

(assert (=> b!4593492 (= e!2865054 Unit!107614)))

(declare-fun b!4593493 () Bool)

(declare-fun e!2865050 () Unit!107542)

(assert (=> b!4593493 (= e!2865050 e!2865054)))

(declare-fun c!786653 () Bool)

(declare-fun call!320639 () Bool)

(assert (=> b!4593493 (= c!786653 call!320639)))

(declare-fun b!4593494 () Bool)

(declare-fun e!2865051 () Bool)

(assert (=> b!4593494 (= e!2865051 (not (contains!13953 (keys!17850 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun bm!320634 () Bool)

(declare-fun e!2865052 () List!51153)

(assert (=> bm!320634 (= call!320639 (contains!13953 e!2865052 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun c!786654 () Bool)

(declare-fun c!786655 () Bool)

(assert (=> bm!320634 (= c!786654 c!786655)))

(declare-fun b!4593495 () Bool)

(assert (=> b!4593495 (= e!2865052 (getKeysList!561 (toList!4612 lt!1754552)))))

(declare-fun b!4593496 () Bool)

(declare-fun Unit!107615 () Unit!107542)

(assert (=> b!4593496 (= e!2865054 Unit!107615)))

(declare-fun b!4593497 () Bool)

(declare-fun e!2865049 () Bool)

(declare-fun e!2865053 () Bool)

(assert (=> b!4593497 (= e!2865049 e!2865053)))

(declare-fun res!1920730 () Bool)

(assert (=> b!4593497 (=> (not res!1920730) (not e!2865053))))

(assert (=> b!4593497 (= res!1920730 (isDefined!8634 (getValueByKey!1286 (toList!4612 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun d!1445507 () Bool)

(assert (=> d!1445507 e!2865049))

(declare-fun res!1920729 () Bool)

(assert (=> d!1445507 (=> res!1920729 e!2865049)))

(assert (=> d!1445507 (= res!1920729 e!2865051)))

(declare-fun res!1920731 () Bool)

(assert (=> d!1445507 (=> (not res!1920731) (not e!2865051))))

(declare-fun lt!1754706 () Bool)

(assert (=> d!1445507 (= res!1920731 (not lt!1754706))))

(declare-fun lt!1754698 () Bool)

(assert (=> d!1445507 (= lt!1754706 lt!1754698)))

(declare-fun lt!1754703 () Unit!107542)

(assert (=> d!1445507 (= lt!1754703 e!2865050)))

(assert (=> d!1445507 (= c!786655 lt!1754698)))

(assert (=> d!1445507 (= lt!1754698 (containsKey!2113 (toList!4612 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> d!1445507 (= (contains!13949 lt!1754552 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lt!1754706)))

(declare-fun b!4593498 () Bool)

(assert (=> b!4593498 (= e!2865053 (contains!13953 (keys!17850 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun b!4593499 () Bool)

(declare-fun lt!1754709 () Unit!107542)

(assert (=> b!4593499 (= e!2865050 lt!1754709)))

(declare-fun lt!1754705 () Unit!107542)

(assert (=> b!4593499 (= lt!1754705 (lemmaContainsKeyImpliesGetValueByKeyDefined!1190 (toList!4612 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> b!4593499 (isDefined!8634 (getValueByKey!1286 (toList!4612 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754708 () Unit!107542)

(assert (=> b!4593499 (= lt!1754708 lt!1754705)))

(assert (=> b!4593499 (= lt!1754709 (lemmaInListThenGetKeysListContains!557 (toList!4612 lt!1754552) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> b!4593499 call!320639))

(declare-fun b!4593500 () Bool)

(assert (=> b!4593500 (= e!2865052 (keys!17850 lt!1754552))))

(assert (= (and d!1445507 c!786655) b!4593499))

(assert (= (and d!1445507 (not c!786655)) b!4593493))

(assert (= (and b!4593493 c!786653) b!4593492))

(assert (= (and b!4593493 (not c!786653)) b!4593496))

(assert (= (or b!4593499 b!4593493) bm!320634))

(assert (= (and bm!320634 c!786654) b!4593495))

(assert (= (and bm!320634 (not c!786654)) b!4593500))

(assert (= (and d!1445507 res!1920731) b!4593494))

(assert (= (and d!1445507 (not res!1920729)) b!4593497))

(assert (= (and b!4593497 res!1920730) b!4593498))

(declare-fun m!5417231 () Bool)

(assert (=> b!4593497 m!5417231))

(assert (=> b!4593497 m!5417231))

(declare-fun m!5417233 () Bool)

(assert (=> b!4593497 m!5417233))

(declare-fun m!5417235 () Bool)

(assert (=> b!4593494 m!5417235))

(assert (=> b!4593494 m!5417235))

(declare-fun m!5417237 () Bool)

(assert (=> b!4593494 m!5417237))

(declare-fun m!5417239 () Bool)

(assert (=> b!4593499 m!5417239))

(assert (=> b!4593499 m!5417231))

(assert (=> b!4593499 m!5417231))

(assert (=> b!4593499 m!5417233))

(declare-fun m!5417241 () Bool)

(assert (=> b!4593499 m!5417241))

(declare-fun m!5417243 () Bool)

(assert (=> d!1445507 m!5417243))

(assert (=> b!4593498 m!5417235))

(assert (=> b!4593498 m!5417235))

(assert (=> b!4593498 m!5417237))

(assert (=> b!4593492 m!5417243))

(declare-fun m!5417245 () Bool)

(assert (=> b!4593492 m!5417245))

(assert (=> b!4593500 m!5417235))

(declare-fun m!5417247 () Bool)

(assert (=> b!4593495 m!5417247))

(declare-fun m!5417249 () Bool)

(assert (=> bm!320634 m!5417249))

(assert (=> b!4593121 d!1445507))

(declare-fun d!1445509 () Bool)

(declare-fun res!1920732 () Bool)

(declare-fun e!2865055 () Bool)

(assert (=> d!1445509 (=> res!1920732 e!2865055)))

(assert (=> d!1445509 (= res!1920732 ((_ is Nil!51026) (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> d!1445509 (= (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185264) e!2865055)))

(declare-fun b!4593501 () Bool)

(declare-fun e!2865056 () Bool)

(assert (=> b!4593501 (= e!2865055 e!2865056)))

(declare-fun res!1920733 () Bool)

(assert (=> b!4593501 (=> (not res!1920733) (not e!2865056))))

(assert (=> b!4593501 (= res!1920733 (dynLambda!21374 lambda!185264 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun b!4593502 () Bool)

(assert (=> b!4593502 (= e!2865056 (forall!10560 (t!358144 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))) lambda!185264))))

(assert (= (and d!1445509 (not res!1920732)) b!4593501))

(assert (= (and b!4593501 res!1920733) b!4593502))

(declare-fun b_lambda!168823 () Bool)

(assert (=> (not b_lambda!168823) (not b!4593501)))

(declare-fun m!5417251 () Bool)

(assert (=> b!4593501 m!5417251))

(declare-fun m!5417253 () Bool)

(assert (=> b!4593502 m!5417253))

(assert (=> b!4593121 d!1445509))

(declare-fun d!1445511 () Bool)

(assert (=> d!1445511 (dynLambda!21374 lambda!185264 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(declare-fun lt!1754712 () Unit!107542)

(declare-fun choose!30711 (List!51150 Int tuple2!51642) Unit!107542)

(assert (=> d!1445511 (= lt!1754712 (choose!30711 (toList!4612 lt!1754552) lambda!185264 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun e!2865059 () Bool)

(assert (=> d!1445511 e!2865059))

(declare-fun res!1920736 () Bool)

(assert (=> d!1445511 (=> (not res!1920736) (not e!2865059))))

(assert (=> d!1445511 (= res!1920736 (forall!10560 (toList!4612 lt!1754552) lambda!185264))))

(assert (=> d!1445511 (= (forallContained!2819 (toList!4612 lt!1754552) lambda!185264 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754712)))

(declare-fun b!4593505 () Bool)

(declare-fun contains!13955 (List!51150 tuple2!51642) Bool)

(assert (=> b!4593505 (= e!2865059 (contains!13955 (toList!4612 lt!1754552) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (= (and d!1445511 res!1920736) b!4593505))

(declare-fun b_lambda!168825 () Bool)

(assert (=> (not b_lambda!168825) (not d!1445511)))

(declare-fun m!5417255 () Bool)

(assert (=> d!1445511 m!5417255))

(declare-fun m!5417257 () Bool)

(assert (=> d!1445511 m!5417257))

(assert (=> d!1445511 m!5416561))

(declare-fun m!5417259 () Bool)

(assert (=> b!4593505 m!5417259))

(assert (=> b!4593121 d!1445511))

(declare-fun d!1445513 () Bool)

(declare-fun res!1920737 () Bool)

(declare-fun e!2865060 () Bool)

(assert (=> d!1445513 (=> res!1920737 e!2865060)))

(assert (=> d!1445513 (= res!1920737 ((_ is Nil!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (=> d!1445513 (= (forall!10560 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) lambda!185264) e!2865060)))

(declare-fun b!4593506 () Bool)

(declare-fun e!2865061 () Bool)

(assert (=> b!4593506 (= e!2865060 e!2865061)))

(declare-fun res!1920738 () Bool)

(assert (=> b!4593506 (=> (not res!1920738) (not e!2865061))))

(assert (=> b!4593506 (= res!1920738 (dynLambda!21374 lambda!185264 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun b!4593507 () Bool)

(assert (=> b!4593507 (= e!2865061 (forall!10560 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lambda!185264))))

(assert (= (and d!1445513 (not res!1920737)) b!4593506))

(assert (= (and b!4593506 res!1920738) b!4593507))

(declare-fun b_lambda!168827 () Bool)

(assert (=> (not b_lambda!168827) (not b!4593506)))

(declare-fun m!5417261 () Bool)

(assert (=> b!4593506 m!5417261))

(declare-fun m!5417263 () Bool)

(assert (=> b!4593507 m!5417263))

(assert (=> b!4593121 d!1445513))

(declare-fun d!1445515 () Bool)

(declare-fun res!1920739 () Bool)

(declare-fun e!2865062 () Bool)

(assert (=> d!1445515 (=> res!1920739 e!2865062)))

(assert (=> d!1445515 (= res!1920739 ((_ is Nil!51026) (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (=> d!1445515 (= (forall!10560 (_2!29116 (h!56979 (toList!4611 lm!1477))) lambda!185264) e!2865062)))

(declare-fun b!4593508 () Bool)

(declare-fun e!2865063 () Bool)

(assert (=> b!4593508 (= e!2865062 e!2865063)))

(declare-fun res!1920740 () Bool)

(assert (=> b!4593508 (=> (not res!1920740) (not e!2865063))))

(assert (=> b!4593508 (= res!1920740 (dynLambda!21374 lambda!185264 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun b!4593509 () Bool)

(assert (=> b!4593509 (= e!2865063 (forall!10560 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) lambda!185264))))

(assert (= (and d!1445515 (not res!1920739)) b!4593508))

(assert (= (and b!4593508 res!1920740) b!4593509))

(declare-fun b_lambda!168829 () Bool)

(assert (=> (not b_lambda!168829) (not b!4593508)))

(assert (=> b!4593508 m!5417255))

(assert (=> b!4593509 m!5416551))

(assert (=> b!4593121 d!1445515))

(declare-fun d!1445517 () Bool)

(declare-fun res!1920741 () Bool)

(declare-fun e!2865064 () Bool)

(assert (=> d!1445517 (=> res!1920741 e!2865064)))

(assert (=> d!1445517 (= res!1920741 ((_ is Nil!51026) (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> d!1445517 (= (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185263) e!2865064)))

(declare-fun b!4593510 () Bool)

(declare-fun e!2865065 () Bool)

(assert (=> b!4593510 (= e!2865064 e!2865065)))

(declare-fun res!1920742 () Bool)

(assert (=> b!4593510 (=> (not res!1920742) (not e!2865065))))

(assert (=> b!4593510 (= res!1920742 (dynLambda!21374 lambda!185263 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun b!4593511 () Bool)

(assert (=> b!4593511 (= e!2865065 (forall!10560 (t!358144 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))) lambda!185263))))

(assert (= (and d!1445517 (not res!1920741)) b!4593510))

(assert (= (and b!4593510 res!1920742) b!4593511))

(declare-fun b_lambda!168831 () Bool)

(assert (=> (not b_lambda!168831) (not b!4593510)))

(declare-fun m!5417265 () Bool)

(assert (=> b!4593510 m!5417265))

(declare-fun m!5417267 () Bool)

(assert (=> b!4593511 m!5417267))

(assert (=> b!4593121 d!1445517))

(declare-fun b!4593512 () Bool)

(assert (=> b!4593512 false))

(declare-fun lt!1754718 () Unit!107542)

(declare-fun lt!1754714 () Unit!107542)

(assert (=> b!4593512 (= lt!1754718 lt!1754714)))

(assert (=> b!4593512 (containsKey!2113 (toList!4612 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (=> b!4593512 (= lt!1754714 (lemmaInGetKeysListThenContainsKey!560 (toList!4612 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun e!2865071 () Unit!107542)

(declare-fun Unit!107616 () Unit!107542)

(assert (=> b!4593512 (= e!2865071 Unit!107616)))

(declare-fun b!4593513 () Bool)

(declare-fun e!2865067 () Unit!107542)

(assert (=> b!4593513 (= e!2865067 e!2865071)))

(declare-fun c!786656 () Bool)

(declare-fun call!320640 () Bool)

(assert (=> b!4593513 (= c!786656 call!320640)))

(declare-fun b!4593514 () Bool)

(declare-fun e!2865068 () Bool)

(assert (=> b!4593514 (= e!2865068 (not (contains!13953 (keys!17850 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun bm!320635 () Bool)

(declare-fun e!2865069 () List!51153)

(assert (=> bm!320635 (= call!320640 (contains!13953 e!2865069 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun c!786657 () Bool)

(declare-fun c!786658 () Bool)

(assert (=> bm!320635 (= c!786657 c!786658)))

(declare-fun b!4593515 () Bool)

(assert (=> b!4593515 (= e!2865069 (getKeysList!561 (toList!4612 lt!1754554)))))

(declare-fun b!4593516 () Bool)

(declare-fun Unit!107617 () Unit!107542)

(assert (=> b!4593516 (= e!2865071 Unit!107617)))

(declare-fun b!4593517 () Bool)

(declare-fun e!2865066 () Bool)

(declare-fun e!2865070 () Bool)

(assert (=> b!4593517 (= e!2865066 e!2865070)))

(declare-fun res!1920744 () Bool)

(assert (=> b!4593517 (=> (not res!1920744) (not e!2865070))))

(assert (=> b!4593517 (= res!1920744 (isDefined!8634 (getValueByKey!1286 (toList!4612 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun d!1445519 () Bool)

(assert (=> d!1445519 e!2865066))

(declare-fun res!1920743 () Bool)

(assert (=> d!1445519 (=> res!1920743 e!2865066)))

(assert (=> d!1445519 (= res!1920743 e!2865068)))

(declare-fun res!1920745 () Bool)

(assert (=> d!1445519 (=> (not res!1920745) (not e!2865068))))

(declare-fun lt!1754717 () Bool)

(assert (=> d!1445519 (= res!1920745 (not lt!1754717))))

(declare-fun lt!1754713 () Bool)

(assert (=> d!1445519 (= lt!1754717 lt!1754713)))

(declare-fun lt!1754715 () Unit!107542)

(assert (=> d!1445519 (= lt!1754715 e!2865067)))

(assert (=> d!1445519 (= c!786658 lt!1754713)))

(assert (=> d!1445519 (= lt!1754713 (containsKey!2113 (toList!4612 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> d!1445519 (= (contains!13949 lt!1754554 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lt!1754717)))

(declare-fun b!4593518 () Bool)

(assert (=> b!4593518 (= e!2865070 (contains!13953 (keys!17850 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun b!4593519 () Bool)

(declare-fun lt!1754720 () Unit!107542)

(assert (=> b!4593519 (= e!2865067 lt!1754720)))

(declare-fun lt!1754716 () Unit!107542)

(assert (=> b!4593519 (= lt!1754716 (lemmaContainsKeyImpliesGetValueByKeyDefined!1190 (toList!4612 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> b!4593519 (isDefined!8634 (getValueByKey!1286 (toList!4612 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754719 () Unit!107542)

(assert (=> b!4593519 (= lt!1754719 lt!1754716)))

(assert (=> b!4593519 (= lt!1754720 (lemmaInListThenGetKeysListContains!557 (toList!4612 lt!1754554) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> b!4593519 call!320640))

(declare-fun b!4593520 () Bool)

(assert (=> b!4593520 (= e!2865069 (keys!17850 lt!1754554))))

(assert (= (and d!1445519 c!786658) b!4593519))

(assert (= (and d!1445519 (not c!786658)) b!4593513))

(assert (= (and b!4593513 c!786656) b!4593512))

(assert (= (and b!4593513 (not c!786656)) b!4593516))

(assert (= (or b!4593519 b!4593513) bm!320635))

(assert (= (and bm!320635 c!786657) b!4593515))

(assert (= (and bm!320635 (not c!786657)) b!4593520))

(assert (= (and d!1445519 res!1920745) b!4593514))

(assert (= (and d!1445519 (not res!1920743)) b!4593517))

(assert (= (and b!4593517 res!1920744) b!4593518))

(declare-fun m!5417269 () Bool)

(assert (=> b!4593517 m!5417269))

(assert (=> b!4593517 m!5417269))

(declare-fun m!5417271 () Bool)

(assert (=> b!4593517 m!5417271))

(declare-fun m!5417273 () Bool)

(assert (=> b!4593514 m!5417273))

(assert (=> b!4593514 m!5417273))

(declare-fun m!5417275 () Bool)

(assert (=> b!4593514 m!5417275))

(declare-fun m!5417277 () Bool)

(assert (=> b!4593519 m!5417277))

(assert (=> b!4593519 m!5417269))

(assert (=> b!4593519 m!5417269))

(assert (=> b!4593519 m!5417271))

(declare-fun m!5417279 () Bool)

(assert (=> b!4593519 m!5417279))

(declare-fun m!5417281 () Bool)

(assert (=> d!1445519 m!5417281))

(assert (=> b!4593518 m!5417273))

(assert (=> b!4593518 m!5417273))

(assert (=> b!4593518 m!5417275))

(assert (=> b!4593512 m!5417281))

(declare-fun m!5417283 () Bool)

(assert (=> b!4593512 m!5417283))

(assert (=> b!4593520 m!5417273))

(declare-fun m!5417285 () Bool)

(assert (=> b!4593515 m!5417285))

(declare-fun m!5417287 () Bool)

(assert (=> bm!320635 m!5417287))

(assert (=> b!4593121 d!1445519))

(declare-fun d!1445521 () Bool)

(declare-fun e!2865083 () Bool)

(assert (=> d!1445521 e!2865083))

(declare-fun res!1920758 () Bool)

(assert (=> d!1445521 (=> (not res!1920758) (not e!2865083))))

(declare-fun lt!1754734 () ListMap!3873)

(assert (=> d!1445521 (= res!1920758 (contains!13949 lt!1754734 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754735 () List!51150)

(assert (=> d!1445521 (= lt!1754734 (ListMap!3874 lt!1754735))))

(declare-fun lt!1754736 () Unit!107542)

(declare-fun lt!1754733 () Unit!107542)

(assert (=> d!1445521 (= lt!1754736 lt!1754733)))

(assert (=> d!1445521 (= (getValueByKey!1286 lt!1754735 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (Some!11365 (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!790 (List!51150 K!12395 V!12641) Unit!107542)

(assert (=> d!1445521 (= lt!1754733 (lemmaContainsTupThenGetReturnValue!790 lt!1754735 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun insertNoDuplicatedKeys!316 (List!51150 K!12395 V!12641) List!51150)

(assert (=> d!1445521 (= lt!1754735 (insertNoDuplicatedKeys!316 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> d!1445521 (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754734)))

(declare-fun b!4593535 () Bool)

(declare-fun res!1920759 () Bool)

(assert (=> b!4593535 (=> (not res!1920759) (not e!2865083))))

(assert (=> b!4593535 (= res!1920759 (= (getValueByKey!1286 (toList!4612 lt!1754734) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (Some!11365 (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun b!4593536 () Bool)

(assert (=> b!4593536 (= e!2865083 (contains!13955 (toList!4612 lt!1754734) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (= (and d!1445521 res!1920758) b!4593535))

(assert (= (and b!4593535 res!1920759) b!4593536))

(declare-fun m!5417337 () Bool)

(assert (=> d!1445521 m!5417337))

(declare-fun m!5417339 () Bool)

(assert (=> d!1445521 m!5417339))

(declare-fun m!5417341 () Bool)

(assert (=> d!1445521 m!5417341))

(declare-fun m!5417343 () Bool)

(assert (=> d!1445521 m!5417343))

(declare-fun m!5417345 () Bool)

(assert (=> b!4593535 m!5417345))

(declare-fun m!5417347 () Bool)

(assert (=> b!4593536 m!5417347))

(assert (=> b!4593121 d!1445521))

(declare-fun bs!1008503 () Bool)

(declare-fun b!4593541 () Bool)

(assert (= bs!1008503 (and b!4593541 b!4593121)))

(declare-fun lambda!185299 () Int)

(assert (=> bs!1008503 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754554) (= lambda!185299 lambda!185264))))

(declare-fun bs!1008505 () Bool)

(assert (= bs!1008505 (and b!4593541 d!1445139)))

(assert (=> bs!1008505 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754548) (= lambda!185299 lambda!185265))))

(declare-fun bs!1008507 () Bool)

(assert (= bs!1008507 (and b!4593541 b!4593323)))

(assert (=> bs!1008507 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185299 lambda!185279))))

(declare-fun bs!1008509 () Bool)

(assert (= bs!1008509 (and b!4593541 d!1445393)))

(assert (=> bs!1008509 (not (= lambda!185299 lambda!185290))))

(assert (=> bs!1008507 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754647) (= lambda!185299 lambda!185280))))

(declare-fun bs!1008512 () Bool)

(assert (= bs!1008512 (and b!4593541 b!4593124)))

(assert (=> bs!1008512 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185299 lambda!185262))))

(declare-fun bs!1008513 () Bool)

(assert (= bs!1008513 (and b!4593541 d!1445007)))

(assert (=> bs!1008513 (not (= lambda!185299 lambda!185164))))

(declare-fun bs!1008515 () Bool)

(assert (= bs!1008515 (and b!4593541 b!4593326)))

(assert (=> bs!1008515 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185299 lambda!185278))))

(declare-fun bs!1008517 () Bool)

(assert (= bs!1008517 (and b!4593541 d!1445347)))

(assert (=> bs!1008517 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754641) (= lambda!185299 lambda!185281))))

(assert (=> bs!1008503 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185299 lambda!185263))))

(assert (=> b!4593541 true))

(declare-fun bs!1008522 () Bool)

(declare-fun b!4593538 () Bool)

(assert (= bs!1008522 (and b!4593538 b!4593121)))

(declare-fun lambda!185300 () Int)

(assert (=> bs!1008522 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754554) (= lambda!185300 lambda!185264))))

(declare-fun bs!1008523 () Bool)

(assert (= bs!1008523 (and b!4593538 d!1445139)))

(assert (=> bs!1008523 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754548) (= lambda!185300 lambda!185265))))

(declare-fun bs!1008524 () Bool)

(assert (= bs!1008524 (and b!4593538 b!4593323)))

(assert (=> bs!1008524 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185300 lambda!185279))))

(declare-fun bs!1008525 () Bool)

(assert (= bs!1008525 (and b!4593538 d!1445393)))

(assert (=> bs!1008525 (not (= lambda!185300 lambda!185290))))

(assert (=> bs!1008524 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754647) (= lambda!185300 lambda!185280))))

(declare-fun bs!1008526 () Bool)

(assert (= bs!1008526 (and b!4593538 b!4593124)))

(assert (=> bs!1008526 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185300 lambda!185262))))

(declare-fun bs!1008527 () Bool)

(assert (= bs!1008527 (and b!4593538 d!1445007)))

(assert (=> bs!1008527 (not (= lambda!185300 lambda!185164))))

(declare-fun bs!1008528 () Bool)

(assert (= bs!1008528 (and b!4593538 b!4593326)))

(assert (=> bs!1008528 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185300 lambda!185278))))

(declare-fun bs!1008529 () Bool)

(assert (= bs!1008529 (and b!4593538 b!4593541)))

(assert (=> bs!1008529 (= lambda!185300 lambda!185299)))

(declare-fun bs!1008530 () Bool)

(assert (= bs!1008530 (and b!4593538 d!1445347)))

(assert (=> bs!1008530 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754641) (= lambda!185300 lambda!185281))))

(assert (=> bs!1008522 (= (= (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185300 lambda!185263))))

(assert (=> b!4593538 true))

(declare-fun lambda!185301 () Int)

(declare-fun lt!1754757 () ListMap!3873)

(assert (=> bs!1008522 (= (= lt!1754757 lt!1754554) (= lambda!185301 lambda!185264))))

(assert (=> bs!1008523 (= (= lt!1754757 lt!1754548) (= lambda!185301 lambda!185265))))

(assert (=> bs!1008524 (= (= lt!1754757 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185301 lambda!185279))))

(assert (=> bs!1008525 (not (= lambda!185301 lambda!185290))))

(assert (=> bs!1008524 (= (= lt!1754757 lt!1754647) (= lambda!185301 lambda!185280))))

(assert (=> b!4593538 (= (= lt!1754757 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185301 lambda!185300))))

(assert (=> bs!1008526 (= (= lt!1754757 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185301 lambda!185262))))

(assert (=> bs!1008527 (not (= lambda!185301 lambda!185164))))

(assert (=> bs!1008528 (= (= lt!1754757 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185301 lambda!185278))))

(assert (=> bs!1008529 (= (= lt!1754757 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185301 lambda!185299))))

(assert (=> bs!1008530 (= (= lt!1754757 lt!1754641) (= lambda!185301 lambda!185281))))

(assert (=> bs!1008522 (= (= lt!1754757 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185301 lambda!185263))))

(assert (=> b!4593538 true))

(declare-fun bs!1008531 () Bool)

(declare-fun d!1445531 () Bool)

(assert (= bs!1008531 (and d!1445531 b!4593121)))

(declare-fun lambda!185302 () Int)

(declare-fun lt!1754751 () ListMap!3873)

(assert (=> bs!1008531 (= (= lt!1754751 lt!1754554) (= lambda!185302 lambda!185264))))

(declare-fun bs!1008532 () Bool)

(assert (= bs!1008532 (and d!1445531 d!1445139)))

(assert (=> bs!1008532 (= (= lt!1754751 lt!1754548) (= lambda!185302 lambda!185265))))

(declare-fun bs!1008533 () Bool)

(assert (= bs!1008533 (and d!1445531 b!4593323)))

(assert (=> bs!1008533 (= (= lt!1754751 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185302 lambda!185279))))

(declare-fun bs!1008534 () Bool)

(assert (= bs!1008534 (and d!1445531 d!1445393)))

(assert (=> bs!1008534 (not (= lambda!185302 lambda!185290))))

(assert (=> bs!1008533 (= (= lt!1754751 lt!1754647) (= lambda!185302 lambda!185280))))

(declare-fun bs!1008535 () Bool)

(assert (= bs!1008535 (and d!1445531 b!4593538)))

(assert (=> bs!1008535 (= (= lt!1754751 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185302 lambda!185300))))

(declare-fun bs!1008536 () Bool)

(assert (= bs!1008536 (and d!1445531 b!4593124)))

(assert (=> bs!1008536 (= (= lt!1754751 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185302 lambda!185262))))

(declare-fun bs!1008537 () Bool)

(assert (= bs!1008537 (and d!1445531 b!4593326)))

(assert (=> bs!1008537 (= (= lt!1754751 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185302 lambda!185278))))

(declare-fun bs!1008538 () Bool)

(assert (= bs!1008538 (and d!1445531 b!4593541)))

(assert (=> bs!1008538 (= (= lt!1754751 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185302 lambda!185299))))

(declare-fun bs!1008539 () Bool)

(assert (= bs!1008539 (and d!1445531 d!1445347)))

(assert (=> bs!1008539 (= (= lt!1754751 lt!1754641) (= lambda!185302 lambda!185281))))

(assert (=> bs!1008531 (= (= lt!1754751 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185302 lambda!185263))))

(assert (=> bs!1008535 (= (= lt!1754751 lt!1754757) (= lambda!185302 lambda!185301))))

(declare-fun bs!1008540 () Bool)

(assert (= bs!1008540 (and d!1445531 d!1445007)))

(assert (=> bs!1008540 (not (= lambda!185302 lambda!185164))))

(assert (=> d!1445531 true))

(declare-fun b!4593537 () Bool)

(declare-fun res!1920760 () Bool)

(declare-fun e!2865084 () Bool)

(assert (=> b!4593537 (=> (not res!1920760) (not e!2865084))))

(assert (=> b!4593537 (= res!1920760 (forall!10560 (toList!4612 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lambda!185302))))

(declare-fun call!320642 () Bool)

(declare-fun c!786660 () Bool)

(declare-fun lt!1754755 () ListMap!3873)

(declare-fun bm!320636 () Bool)

(assert (=> bm!320636 (= call!320642 (forall!10560 (ite c!786660 (toList!4612 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (toList!4612 lt!1754755)) (ite c!786660 lambda!185299 lambda!185301)))))

(declare-fun b!4593539 () Bool)

(assert (=> b!4593539 (= e!2865084 (invariantList!1113 (toList!4612 lt!1754751)))))

(declare-fun bm!320637 () Bool)

(declare-fun call!320643 () Bool)

(assert (=> bm!320637 (= call!320643 (forall!10560 (toList!4612 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (ite c!786660 lambda!185299 lambda!185301)))))

(declare-fun bm!320638 () Bool)

(declare-fun call!320641 () Unit!107542)

(assert (=> bm!320638 (= call!320641 (lemmaContainsAllItsOwnKeys!428 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun e!2865085 () ListMap!3873)

(assert (=> b!4593538 (= e!2865085 lt!1754757)))

(assert (=> b!4593538 (= lt!1754755 (+!1730 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> b!4593538 (= lt!1754757 (addToMapMapFromBucket!803 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (+!1730 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun lt!1754749 () Unit!107542)

(assert (=> b!4593538 (= lt!1754749 call!320641)))

(assert (=> b!4593538 (forall!10560 (toList!4612 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lambda!185300)))

(declare-fun lt!1754746 () Unit!107542)

(assert (=> b!4593538 (= lt!1754746 lt!1754749)))

(assert (=> b!4593538 (forall!10560 (toList!4612 lt!1754755) lambda!185301)))

(declare-fun lt!1754756 () Unit!107542)

(declare-fun Unit!107618 () Unit!107542)

(assert (=> b!4593538 (= lt!1754756 Unit!107618)))

(assert (=> b!4593538 (forall!10560 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lambda!185301)))

(declare-fun lt!1754748 () Unit!107542)

(declare-fun Unit!107619 () Unit!107542)

(assert (=> b!4593538 (= lt!1754748 Unit!107619)))

(declare-fun lt!1754753 () Unit!107542)

(declare-fun Unit!107620 () Unit!107542)

(assert (=> b!4593538 (= lt!1754753 Unit!107620)))

(declare-fun lt!1754752 () Unit!107542)

(assert (=> b!4593538 (= lt!1754752 (forallContained!2819 (toList!4612 lt!1754755) lambda!185301 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> b!4593538 (contains!13949 lt!1754755 (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754744 () Unit!107542)

(declare-fun Unit!107621 () Unit!107542)

(assert (=> b!4593538 (= lt!1754744 Unit!107621)))

(assert (=> b!4593538 (contains!13949 lt!1754757 (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754750 () Unit!107542)

(declare-fun Unit!107622 () Unit!107542)

(assert (=> b!4593538 (= lt!1754750 Unit!107622)))

(assert (=> b!4593538 (forall!10560 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) lambda!185301)))

(declare-fun lt!1754754 () Unit!107542)

(declare-fun Unit!107623 () Unit!107542)

(assert (=> b!4593538 (= lt!1754754 Unit!107623)))

(assert (=> b!4593538 call!320642))

(declare-fun lt!1754742 () Unit!107542)

(declare-fun Unit!107624 () Unit!107542)

(assert (=> b!4593538 (= lt!1754742 Unit!107624)))

(declare-fun lt!1754758 () Unit!107542)

(declare-fun Unit!107625 () Unit!107542)

(assert (=> b!4593538 (= lt!1754758 Unit!107625)))

(declare-fun lt!1754743 () Unit!107542)

(assert (=> b!4593538 (= lt!1754743 (addForallContainsKeyThenBeforeAdding!428 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) lt!1754757 (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (_2!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(assert (=> b!4593538 (forall!10560 (toList!4612 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lambda!185301)))

(declare-fun lt!1754747 () Unit!107542)

(assert (=> b!4593538 (= lt!1754747 lt!1754743)))

(assert (=> b!4593538 call!320643))

(declare-fun lt!1754740 () Unit!107542)

(declare-fun Unit!107626 () Unit!107542)

(assert (=> b!4593538 (= lt!1754740 Unit!107626)))

(declare-fun res!1920762 () Bool)

(assert (=> b!4593538 (= res!1920762 (forall!10560 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) lambda!185301))))

(declare-fun e!2865086 () Bool)

(assert (=> b!4593538 (=> (not res!1920762) (not e!2865086))))

(assert (=> b!4593538 e!2865086))

(declare-fun lt!1754739 () Unit!107542)

(declare-fun Unit!107627 () Unit!107542)

(assert (=> b!4593538 (= lt!1754739 Unit!107627)))

(assert (=> d!1445531 e!2865084))

(declare-fun res!1920761 () Bool)

(assert (=> d!1445531 (=> (not res!1920761) (not e!2865084))))

(assert (=> d!1445531 (= res!1920761 (forall!10560 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) lambda!185302))))

(assert (=> d!1445531 (= lt!1754751 e!2865085)))

(assert (=> d!1445531 (= c!786660 ((_ is Nil!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(assert (=> d!1445531 (noDuplicateKeys!1298 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))

(assert (=> d!1445531 (= (addToMapMapFromBucket!803 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lt!1754751)))

(declare-fun b!4593540 () Bool)

(assert (=> b!4593540 (= e!2865086 (forall!10560 (toList!4612 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lambda!185301))))

(assert (=> b!4593541 (= e!2865085 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun lt!1754741 () Unit!107542)

(assert (=> b!4593541 (= lt!1754741 call!320641)))

(assert (=> b!4593541 call!320642))

(declare-fun lt!1754738 () Unit!107542)

(assert (=> b!4593541 (= lt!1754738 lt!1754741)))

(assert (=> b!4593541 call!320643))

(declare-fun lt!1754745 () Unit!107542)

(declare-fun Unit!107629 () Unit!107542)

(assert (=> b!4593541 (= lt!1754745 Unit!107629)))

(assert (= (and d!1445531 c!786660) b!4593541))

(assert (= (and d!1445531 (not c!786660)) b!4593538))

(assert (= (and b!4593538 res!1920762) b!4593540))

(assert (= (or b!4593541 b!4593538) bm!320637))

(assert (= (or b!4593541 b!4593538) bm!320636))

(assert (= (or b!4593541 b!4593538) bm!320638))

(assert (= (and d!1445531 res!1920761) b!4593537))

(assert (= (and b!4593537 res!1920760) b!4593539))

(declare-fun m!5417381 () Bool)

(assert (=> bm!320637 m!5417381))

(declare-fun m!5417383 () Bool)

(assert (=> b!4593540 m!5417383))

(declare-fun m!5417385 () Bool)

(assert (=> bm!320636 m!5417385))

(declare-fun m!5417387 () Bool)

(assert (=> b!4593538 m!5417387))

(declare-fun m!5417389 () Bool)

(assert (=> b!4593538 m!5417389))

(declare-fun m!5417393 () Bool)

(assert (=> b!4593538 m!5417393))

(assert (=> b!4593538 m!5416555))

(declare-fun m!5417397 () Bool)

(assert (=> b!4593538 m!5417397))

(assert (=> b!4593538 m!5417383))

(declare-fun m!5417399 () Bool)

(assert (=> b!4593538 m!5417399))

(declare-fun m!5417403 () Bool)

(assert (=> b!4593538 m!5417403))

(assert (=> b!4593538 m!5417387))

(declare-fun m!5417405 () Bool)

(assert (=> b!4593538 m!5417405))

(assert (=> b!4593538 m!5416555))

(declare-fun m!5417407 () Bool)

(assert (=> b!4593538 m!5417407))

(assert (=> b!4593538 m!5417397))

(declare-fun m!5417409 () Bool)

(assert (=> b!4593538 m!5417409))

(declare-fun m!5417411 () Bool)

(assert (=> b!4593538 m!5417411))

(declare-fun m!5417413 () Bool)

(assert (=> d!1445531 m!5417413))

(assert (=> d!1445531 m!5416639))

(declare-fun m!5417417 () Bool)

(assert (=> b!4593537 m!5417417))

(declare-fun m!5417419 () Bool)

(assert (=> b!4593539 m!5417419))

(assert (=> bm!320638 m!5416555))

(declare-fun m!5417421 () Bool)

(assert (=> bm!320638 m!5417421))

(assert (=> b!4593121 d!1445531))

(declare-fun bs!1008564 () Bool)

(declare-fun d!1445555 () Bool)

(assert (= bs!1008564 (and d!1445555 b!4593121)))

(declare-fun lambda!185307 () Int)

(assert (=> bs!1008564 (= lambda!185307 lambda!185264)))

(declare-fun bs!1008565 () Bool)

(assert (= bs!1008565 (and d!1445555 d!1445139)))

(assert (=> bs!1008565 (= (= lt!1754554 lt!1754548) (= lambda!185307 lambda!185265))))

(declare-fun bs!1008566 () Bool)

(assert (= bs!1008566 (and d!1445555 b!4593323)))

(assert (=> bs!1008566 (= (= lt!1754554 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185307 lambda!185279))))

(declare-fun bs!1008567 () Bool)

(assert (= bs!1008567 (and d!1445555 d!1445393)))

(assert (=> bs!1008567 (not (= lambda!185307 lambda!185290))))

(assert (=> bs!1008566 (= (= lt!1754554 lt!1754647) (= lambda!185307 lambda!185280))))

(declare-fun bs!1008568 () Bool)

(assert (= bs!1008568 (and d!1445555 b!4593538)))

(assert (=> bs!1008568 (= (= lt!1754554 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185307 lambda!185300))))

(declare-fun bs!1008569 () Bool)

(assert (= bs!1008569 (and d!1445555 b!4593124)))

(assert (=> bs!1008569 (= (= lt!1754554 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185307 lambda!185262))))

(declare-fun bs!1008570 () Bool)

(assert (= bs!1008570 (and d!1445555 d!1445531)))

(assert (=> bs!1008570 (= (= lt!1754554 lt!1754751) (= lambda!185307 lambda!185302))))

(declare-fun bs!1008571 () Bool)

(assert (= bs!1008571 (and d!1445555 b!4593326)))

(assert (=> bs!1008571 (= (= lt!1754554 (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185307 lambda!185278))))

(declare-fun bs!1008572 () Bool)

(assert (= bs!1008572 (and d!1445555 b!4593541)))

(assert (=> bs!1008572 (= (= lt!1754554 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185307 lambda!185299))))

(declare-fun bs!1008573 () Bool)

(assert (= bs!1008573 (and d!1445555 d!1445347)))

(assert (=> bs!1008573 (= (= lt!1754554 lt!1754641) (= lambda!185307 lambda!185281))))

(assert (=> bs!1008564 (= (= lt!1754554 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) (= lambda!185307 lambda!185263))))

(assert (=> bs!1008568 (= (= lt!1754554 lt!1754757) (= lambda!185307 lambda!185301))))

(declare-fun bs!1008574 () Bool)

(assert (= bs!1008574 (and d!1445555 d!1445007)))

(assert (=> bs!1008574 (not (= lambda!185307 lambda!185164))))

(assert (=> d!1445555 true))

(assert (=> d!1445555 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185307)))

(declare-fun lt!1754763 () Unit!107542)

(declare-fun choose!30712 (ListMap!3873 ListMap!3873 K!12395 V!12641) Unit!107542)

(assert (=> d!1445555 (= lt!1754763 (choose!30712 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754554 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> d!1445555 (forall!10560 (toList!4612 (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (tuple2!51643 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))) lambda!185307)))

(assert (=> d!1445555 (= (addForallContainsKeyThenBeforeAdding!428 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754554 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_2!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) lt!1754763)))

(declare-fun bs!1008575 () Bool)

(assert (= bs!1008575 d!1445555))

(declare-fun m!5417473 () Bool)

(assert (=> bs!1008575 m!5417473))

(assert (=> bs!1008575 m!5416147))

(declare-fun m!5417475 () Bool)

(assert (=> bs!1008575 m!5417475))

(assert (=> bs!1008575 m!5416147))

(declare-fun m!5417477 () Bool)

(assert (=> bs!1008575 m!5417477))

(declare-fun m!5417479 () Bool)

(assert (=> bs!1008575 m!5417479))

(assert (=> b!4593121 d!1445555))

(declare-fun d!1445613 () Bool)

(declare-fun res!1920788 () Bool)

(declare-fun e!2865125 () Bool)

(assert (=> d!1445613 (=> res!1920788 e!2865125)))

(assert (=> d!1445613 (= res!1920788 (and ((_ is Cons!51026) lt!1754560) (= (_1!29115 (h!56978 lt!1754560)) key!3287)))))

(assert (=> d!1445613 (= (containsKey!2110 lt!1754560 key!3287) e!2865125)))

(declare-fun b!4593590 () Bool)

(declare-fun e!2865126 () Bool)

(assert (=> b!4593590 (= e!2865125 e!2865126)))

(declare-fun res!1920789 () Bool)

(assert (=> b!4593590 (=> (not res!1920789) (not e!2865126))))

(assert (=> b!4593590 (= res!1920789 ((_ is Cons!51026) lt!1754560))))

(declare-fun b!4593591 () Bool)

(assert (=> b!4593591 (= e!2865126 (containsKey!2110 (t!358144 lt!1754560) key!3287))))

(assert (= (and d!1445613 (not res!1920788)) b!4593590))

(assert (= (and b!4593590 res!1920789) b!4593591))

(declare-fun m!5417481 () Bool)

(assert (=> b!4593591 m!5417481))

(assert (=> d!1445193 d!1445613))

(assert (=> d!1445193 d!1445291))

(declare-fun bs!1008576 () Bool)

(declare-fun d!1445615 () Bool)

(assert (= bs!1008576 (and d!1445615 b!4593121)))

(declare-fun lambda!185310 () Int)

(assert (=> bs!1008576 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754554) (= lambda!185310 lambda!185264))))

(declare-fun bs!1008577 () Bool)

(assert (= bs!1008577 (and d!1445615 d!1445139)))

(assert (=> bs!1008577 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754548) (= lambda!185310 lambda!185265))))

(declare-fun bs!1008578 () Bool)

(assert (= bs!1008578 (and d!1445615 b!4593323)))

(assert (=> bs!1008578 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185310 lambda!185279))))

(declare-fun bs!1008579 () Bool)

(assert (= bs!1008579 (and d!1445615 d!1445393)))

(assert (=> bs!1008579 (not (= lambda!185310 lambda!185290))))

(assert (=> bs!1008578 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754647) (= lambda!185310 lambda!185280))))

(declare-fun bs!1008580 () Bool)

(assert (= bs!1008580 (and d!1445615 b!4593538)))

(assert (=> bs!1008580 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185310 lambda!185300))))

(declare-fun bs!1008581 () Bool)

(assert (= bs!1008581 (and d!1445615 b!4593124)))

(assert (=> bs!1008581 (= lambda!185310 lambda!185262)))

(declare-fun bs!1008582 () Bool)

(assert (= bs!1008582 (and d!1445615 d!1445531)))

(assert (=> bs!1008582 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754751) (= lambda!185310 lambda!185302))))

(declare-fun bs!1008583 () Bool)

(assert (= bs!1008583 (and d!1445615 b!4593326)))

(assert (=> bs!1008583 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (extractMap!1358 (t!358145 (t!358145 (toList!4611 lm!1477))))) (= lambda!185310 lambda!185278))))

(declare-fun bs!1008584 () Bool)

(assert (= bs!1008584 (and d!1445615 b!4593541)))

(assert (=> bs!1008584 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (+!1730 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (= lambda!185310 lambda!185299))))

(declare-fun bs!1008585 () Bool)

(assert (= bs!1008585 (and d!1445615 d!1445555)))

(assert (=> bs!1008585 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754554) (= lambda!185310 lambda!185307))))

(declare-fun bs!1008586 () Bool)

(assert (= bs!1008586 (and d!1445615 d!1445347)))

(assert (=> bs!1008586 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754641) (= lambda!185310 lambda!185281))))

(assert (=> bs!1008576 (= lambda!185310 lambda!185263)))

(assert (=> bs!1008580 (= (= (extractMap!1358 (t!358145 (toList!4611 lm!1477))) lt!1754757) (= lambda!185310 lambda!185301))))

(declare-fun bs!1008587 () Bool)

(assert (= bs!1008587 (and d!1445615 d!1445007)))

(assert (=> bs!1008587 (not (= lambda!185310 lambda!185164))))

(assert (=> d!1445615 true))

(assert (=> d!1445615 (forall!10560 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lambda!185310)))

(declare-fun lt!1754766 () Unit!107542)

(declare-fun choose!30713 (ListMap!3873) Unit!107542)

(assert (=> d!1445615 (= lt!1754766 (choose!30713 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))))

(assert (=> d!1445615 (= (lemmaContainsAllItsOwnKeys!428 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))) lt!1754766)))

(declare-fun bs!1008588 () Bool)

(assert (= bs!1008588 d!1445615))

(declare-fun m!5417483 () Bool)

(assert (=> bs!1008588 m!5417483))

(assert (=> bs!1008588 m!5416147))

(declare-fun m!5417485 () Bool)

(assert (=> bs!1008588 m!5417485))

(assert (=> bm!320622 d!1445615))

(declare-fun d!1445617 () Bool)

(assert (=> d!1445617 (= (length!464 lt!1754485) (size!35959 lt!1754485))))

(declare-fun bs!1008589 () Bool)

(assert (= bs!1008589 d!1445617))

(declare-fun m!5417487 () Bool)

(assert (=> bs!1008589 m!5417487))

(assert (=> b!4593080 d!1445617))

(assert (=> b!4593080 d!1445469))

(declare-fun d!1445619 () Bool)

(declare-fun res!1920791 () Bool)

(declare-fun e!2865129 () Bool)

(assert (=> d!1445619 (=> res!1920791 e!2865129)))

(declare-fun e!2865128 () Bool)

(assert (=> d!1445619 (= res!1920791 e!2865128)))

(declare-fun res!1920792 () Bool)

(assert (=> d!1445619 (=> (not res!1920792) (not e!2865128))))

(assert (=> d!1445619 (= res!1920792 ((_ is Cons!51027) (t!358145 (t!358145 lt!1754228))))))

(assert (=> d!1445619 (= (containsKeyBiggerList!254 (t!358145 (t!358145 lt!1754228)) key!3287) e!2865129)))

(declare-fun b!4593592 () Bool)

(assert (=> b!4593592 (= e!2865128 (containsKey!2110 (_2!29116 (h!56979 (t!358145 (t!358145 lt!1754228)))) key!3287))))

(declare-fun b!4593593 () Bool)

(declare-fun e!2865127 () Bool)

(assert (=> b!4593593 (= e!2865129 e!2865127)))

(declare-fun res!1920790 () Bool)

(assert (=> b!4593593 (=> (not res!1920790) (not e!2865127))))

(assert (=> b!4593593 (= res!1920790 ((_ is Cons!51027) (t!358145 (t!358145 lt!1754228))))))

(declare-fun b!4593594 () Bool)

(assert (=> b!4593594 (= e!2865127 (containsKeyBiggerList!254 (t!358145 (t!358145 (t!358145 lt!1754228))) key!3287))))

(assert (= (and d!1445619 res!1920792) b!4593592))

(assert (= (and d!1445619 (not res!1920791)) b!4593593))

(assert (= (and b!4593593 res!1920790) b!4593594))

(declare-fun m!5417489 () Bool)

(assert (=> b!4593592 m!5417489))

(declare-fun m!5417491 () Bool)

(assert (=> b!4593594 m!5417491))

(assert (=> b!4593155 d!1445619))

(declare-fun b!4593597 () Bool)

(declare-fun e!2865131 () Option!11366)

(assert (=> b!4593597 (= e!2865131 (getValueByKey!1286 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(declare-fun d!1445621 () Bool)

(declare-fun c!786670 () Bool)

(assert (=> d!1445621 (= c!786670 (and ((_ is Cons!51026) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) key!3287)))))

(declare-fun e!2865130 () Option!11366)

(assert (=> d!1445621 (= (getValueByKey!1286 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) key!3287) e!2865130)))

(declare-fun b!4593595 () Bool)

(assert (=> b!4593595 (= e!2865130 (Some!11365 (_2!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))))

(declare-fun b!4593598 () Bool)

(assert (=> b!4593598 (= e!2865131 None!11365)))

(declare-fun b!4593596 () Bool)

(assert (=> b!4593596 (= e!2865130 e!2865131)))

(declare-fun c!786671 () Bool)

(assert (=> b!4593596 (= c!786671 (and ((_ is Cons!51026) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (not (= (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) key!3287))))))

(assert (= (and d!1445621 c!786670) b!4593595))

(assert (= (and d!1445621 (not c!786670)) b!4593596))

(assert (= (and b!4593596 c!786671) b!4593597))

(assert (= (and b!4593596 (not c!786671)) b!4593598))

(declare-fun m!5417493 () Bool)

(assert (=> b!4593597 m!5417493))

(assert (=> b!4593181 d!1445621))

(assert (=> d!1445171 d!1444935))

(assert (=> d!1445171 d!1444961))

(declare-fun d!1445623 () Bool)

(assert (=> d!1445623 (= (invariantList!1113 (toList!4612 lt!1754548)) (noDuplicatedKeys!319 (toList!4612 lt!1754548)))))

(declare-fun bs!1008590 () Bool)

(assert (= bs!1008590 d!1445623))

(declare-fun m!5417495 () Bool)

(assert (=> bs!1008590 m!5417495))

(assert (=> b!4593122 d!1445623))

(declare-fun d!1445625 () Bool)

(declare-fun res!1920793 () Bool)

(declare-fun e!2865132 () Bool)

(assert (=> d!1445625 (=> res!1920793 e!2865132)))

(assert (=> d!1445625 (= res!1920793 (and ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 lt!1754228)))) (= (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 lt!1754228))))) (_1!29115 (h!56978 (_2!29116 (h!56979 lt!1754228)))))))))

(assert (=> d!1445625 (= (containsKey!2110 (t!358144 (_2!29116 (h!56979 lt!1754228))) (_1!29115 (h!56978 (_2!29116 (h!56979 lt!1754228))))) e!2865132)))

(declare-fun b!4593599 () Bool)

(declare-fun e!2865133 () Bool)

(assert (=> b!4593599 (= e!2865132 e!2865133)))

(declare-fun res!1920794 () Bool)

(assert (=> b!4593599 (=> (not res!1920794) (not e!2865133))))

(assert (=> b!4593599 (= res!1920794 ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 lt!1754228)))))))

(declare-fun b!4593600 () Bool)

(assert (=> b!4593600 (= e!2865133 (containsKey!2110 (t!358144 (t!358144 (_2!29116 (h!56979 lt!1754228)))) (_1!29115 (h!56978 (_2!29116 (h!56979 lt!1754228))))))))

(assert (= (and d!1445625 (not res!1920793)) b!4593599))

(assert (= (and b!4593599 res!1920794) b!4593600))

(declare-fun m!5417497 () Bool)

(assert (=> b!4593600 m!5417497))

(assert (=> b!4593028 d!1445625))

(declare-fun bs!1008591 () Bool)

(declare-fun d!1445627 () Bool)

(assert (= bs!1008591 (and d!1445627 b!4593121)))

(declare-fun lambda!185311 () Int)

(assert (=> bs!1008591 (not (= lambda!185311 lambda!185264))))

(declare-fun bs!1008592 () Bool)

(assert (= bs!1008592 (and d!1445627 d!1445139)))

(assert (=> bs!1008592 (not (= lambda!185311 lambda!185265))))

(declare-fun bs!1008593 () Bool)

(assert (= bs!1008593 (and d!1445627 d!1445393)))

(assert (=> bs!1008593 (= (= (_1!29116 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) (_1!29116 (h!56979 (toList!4611 lm!1477)))) (= lambda!185311 lambda!185290))))

(declare-fun bs!1008594 () Bool)

(assert (= bs!1008594 (and d!1445627 b!4593323)))

(assert (=> bs!1008594 (not (= lambda!185311 lambda!185280))))

(declare-fun bs!1008595 () Bool)

(assert (= bs!1008595 (and d!1445627 b!4593538)))

(assert (=> bs!1008595 (not (= lambda!185311 lambda!185300))))

(declare-fun bs!1008596 () Bool)

(assert (= bs!1008596 (and d!1445627 b!4593124)))

(assert (=> bs!1008596 (not (= lambda!185311 lambda!185262))))

(declare-fun bs!1008597 () Bool)

(assert (= bs!1008597 (and d!1445627 d!1445531)))

(assert (=> bs!1008597 (not (= lambda!185311 lambda!185302))))

(declare-fun bs!1008598 () Bool)

(assert (= bs!1008598 (and d!1445627 b!4593326)))

(assert (=> bs!1008598 (not (= lambda!185311 lambda!185278))))

(declare-fun bs!1008599 () Bool)

(assert (= bs!1008599 (and d!1445627 b!4593541)))

(assert (=> bs!1008599 (not (= lambda!185311 lambda!185299))))

(declare-fun bs!1008600 () Bool)

(assert (= bs!1008600 (and d!1445627 d!1445555)))

(assert (=> bs!1008600 (not (= lambda!185311 lambda!185307))))

(assert (=> bs!1008594 (not (= lambda!185311 lambda!185279))))

(declare-fun bs!1008601 () Bool)

(assert (= bs!1008601 (and d!1445627 d!1445615)))

(assert (=> bs!1008601 (not (= lambda!185311 lambda!185310))))

(declare-fun bs!1008602 () Bool)

(assert (= bs!1008602 (and d!1445627 d!1445347)))

(assert (=> bs!1008602 (not (= lambda!185311 lambda!185281))))

(assert (=> bs!1008591 (not (= lambda!185311 lambda!185263))))

(assert (=> bs!1008595 (not (= lambda!185311 lambda!185301))))

(declare-fun bs!1008603 () Bool)

(assert (= bs!1008603 (and d!1445627 d!1445007)))

(assert (=> bs!1008603 (= (= (_1!29116 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) hash!344) (= lambda!185311 lambda!185164))))

(assert (=> d!1445627 true))

(assert (=> d!1445627 true))

(assert (=> d!1445627 (= (allKeysSameHash!1154 (_2!29116 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) (_1!29116 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) hashF!1107) (forall!10560 (_2!29116 (h!56979 (toList!4611 (ListLongMap!3244 lt!1754228)))) lambda!185311))))

(declare-fun bs!1008604 () Bool)

(assert (= bs!1008604 d!1445627))

(declare-fun m!5417499 () Bool)

(assert (=> bs!1008604 m!5417499))

(assert (=> bs!1008338 d!1445627))

(declare-fun d!1445629 () Bool)

(declare-fun res!1920795 () Bool)

(declare-fun e!2865134 () Bool)

(assert (=> d!1445629 (=> res!1920795 e!2865134)))

(assert (=> d!1445629 (= res!1920795 ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445629 (= (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185151) e!2865134)))

(declare-fun b!4593601 () Bool)

(declare-fun e!2865135 () Bool)

(assert (=> b!4593601 (= e!2865134 e!2865135)))

(declare-fun res!1920796 () Bool)

(assert (=> b!4593601 (=> (not res!1920796) (not e!2865135))))

(assert (=> b!4593601 (= res!1920796 (dynLambda!21372 lambda!185151 (h!56979 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun b!4593602 () Bool)

(assert (=> b!4593602 (= e!2865135 (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185151))))

(assert (= (and d!1445629 (not res!1920795)) b!4593601))

(assert (= (and b!4593601 res!1920796) b!4593602))

(declare-fun b_lambda!168885 () Bool)

(assert (=> (not b_lambda!168885) (not b!4593601)))

(declare-fun m!5417501 () Bool)

(assert (=> b!4593601 m!5417501))

(declare-fun m!5417503 () Bool)

(assert (=> b!4593602 m!5417503))

(assert (=> b!4593197 d!1445629))

(declare-fun d!1445631 () Bool)

(declare-fun res!1920797 () Bool)

(declare-fun e!2865136 () Bool)

(assert (=> d!1445631 (=> res!1920797 e!2865136)))

(assert (=> d!1445631 (= res!1920797 (not ((_ is Cons!51026) (t!358144 (t!358144 newBucket!178)))))))

(assert (=> d!1445631 (= (noDuplicateKeys!1298 (t!358144 (t!358144 newBucket!178))) e!2865136)))

(declare-fun b!4593603 () Bool)

(declare-fun e!2865137 () Bool)

(assert (=> b!4593603 (= e!2865136 e!2865137)))

(declare-fun res!1920798 () Bool)

(assert (=> b!4593603 (=> (not res!1920798) (not e!2865137))))

(assert (=> b!4593603 (= res!1920798 (not (containsKey!2110 (t!358144 (t!358144 (t!358144 newBucket!178))) (_1!29115 (h!56978 (t!358144 (t!358144 newBucket!178)))))))))

(declare-fun b!4593604 () Bool)

(assert (=> b!4593604 (= e!2865137 (noDuplicateKeys!1298 (t!358144 (t!358144 (t!358144 newBucket!178)))))))

(assert (= (and d!1445631 (not res!1920797)) b!4593603))

(assert (= (and b!4593603 res!1920798) b!4593604))

(declare-fun m!5417505 () Bool)

(assert (=> b!4593603 m!5417505))

(declare-fun m!5417507 () Bool)

(assert (=> b!4593604 m!5417507))

(assert (=> b!4593086 d!1445631))

(assert (=> bs!1008343 d!1445205))

(declare-fun d!1445633 () Bool)

(assert (=> d!1445633 (= (isEmpty!28850 (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227)) (not ((_ is Some!11366) (getValueByKey!1287 (toList!4611 lm!1477) lt!1754227))))))

(assert (=> d!1445163 d!1445633))

(declare-fun d!1445635 () Bool)

(declare-fun c!786672 () Bool)

(assert (=> d!1445635 (= c!786672 ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))))))

(declare-fun e!2865138 () (InoxSet tuple2!51644))

(assert (=> d!1445635 (= (content!8618 (t!358145 (toList!4611 lm!1477))) e!2865138)))

(declare-fun b!4593605 () Bool)

(assert (=> b!4593605 (= e!2865138 ((as const (Array tuple2!51644 Bool)) false))))

(declare-fun b!4593606 () Bool)

(assert (=> b!4593606 (= e!2865138 ((_ map or) (store ((as const (Array tuple2!51644 Bool)) false) (h!56979 (t!358145 (toList!4611 lm!1477))) true) (content!8618 (t!358145 (t!358145 (toList!4611 lm!1477))))))))

(assert (= (and d!1445635 c!786672) b!4593605))

(assert (= (and d!1445635 (not c!786672)) b!4593606))

(declare-fun m!5417509 () Bool)

(assert (=> b!4593606 m!5417509))

(assert (=> b!4593606 m!5417075))

(assert (=> b!4593140 d!1445635))

(assert (=> d!1445195 d!1445197))

(assert (=> d!1445195 d!1445199))

(declare-fun d!1445637 () Bool)

(assert (=> d!1445637 (isDefined!8634 (getValueByKey!1286 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287))))

(assert (=> d!1445637 true))

(declare-fun _$29!722 () Unit!107542)

(assert (=> d!1445637 (= (choose!30705 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) _$29!722)))

(declare-fun bs!1008605 () Bool)

(assert (= bs!1008605 d!1445637))

(assert (=> bs!1008605 m!5416095))

(assert (=> bs!1008605 m!5416095))

(assert (=> bs!1008605 m!5416097))

(assert (=> d!1445195 d!1445637))

(assert (=> d!1445195 d!1445295))

(declare-fun d!1445639 () Bool)

(declare-fun res!1920799 () Bool)

(declare-fun e!2865139 () Bool)

(assert (=> d!1445639 (=> res!1920799 e!2865139)))

(assert (=> d!1445639 (= res!1920799 (and ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (= (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(assert (=> d!1445639 (= (containsKey!2110 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) e!2865139)))

(declare-fun b!4593607 () Bool)

(declare-fun e!2865140 () Bool)

(assert (=> b!4593607 (= e!2865139 e!2865140)))

(declare-fun res!1920800 () Bool)

(assert (=> b!4593607 (=> (not res!1920800) (not e!2865140))))

(assert (=> b!4593607 (= res!1920800 ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))

(declare-fun b!4593608 () Bool)

(assert (=> b!4593608 (= e!2865140 (containsKey!2110 (t!358144 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445639 (not res!1920799)) b!4593607))

(assert (= (and b!4593607 res!1920800) b!4593608))

(declare-fun m!5417511 () Bool)

(assert (=> b!4593608 m!5417511))

(assert (=> b!4593185 d!1445639))

(declare-fun bs!1008606 () Bool)

(declare-fun d!1445641 () Bool)

(assert (= bs!1008606 (and d!1445641 b!4593021)))

(declare-fun lambda!185314 () Int)

(assert (=> bs!1008606 (= (= (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= lambda!185314 lambda!185212))))

(declare-fun bs!1008607 () Bool)

(assert (= bs!1008607 (and d!1445641 b!4593025)))

(assert (=> bs!1008607 (= lambda!185314 lambda!185213)))

(declare-fun bs!1008608 () Bool)

(assert (= bs!1008608 (and d!1445641 b!4593020)))

(assert (=> bs!1008608 (= (= (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185314 lambda!185214))))

(declare-fun bs!1008609 () Bool)

(assert (= bs!1008609 (and d!1445641 b!4593081)))

(assert (=> bs!1008609 (= (= (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185314 lambda!185228))))

(assert (=> d!1445641 true))

(assert (=> d!1445641 true))

(assert (=> d!1445641 (forall!10562 lt!1754463 lambda!185314)))

(declare-fun lt!1754769 () Unit!107542)

(declare-fun choose!30715 (List!51150 List!51153 tuple2!51642) Unit!107542)

(assert (=> d!1445641 (= lt!1754769 (choose!30715 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) lt!1754463 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(assert (=> d!1445641 (invariantList!1113 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(assert (=> d!1445641 (= (lemmaForallContainsAddHeadPreserves!223 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) lt!1754463 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) lt!1754769)))

(declare-fun bs!1008610 () Bool)

(assert (= bs!1008610 d!1445641))

(declare-fun m!5417513 () Bool)

(assert (=> bs!1008610 m!5417513))

(declare-fun m!5417515 () Bool)

(assert (=> bs!1008610 m!5417515))

(declare-fun m!5417517 () Bool)

(assert (=> bs!1008610 m!5417517))

(assert (=> b!4593025 d!1445641))

(declare-fun d!1445643 () Bool)

(declare-fun res!1920801 () Bool)

(declare-fun e!2865141 () Bool)

(assert (=> d!1445643 (=> res!1920801 e!2865141)))

(assert (=> d!1445643 (= res!1920801 ((_ is Nil!51029) lt!1754463))))

(assert (=> d!1445643 (= (forall!10562 lt!1754463 lambda!185213) e!2865141)))

(declare-fun b!4593611 () Bool)

(declare-fun e!2865142 () Bool)

(assert (=> b!4593611 (= e!2865141 e!2865142)))

(declare-fun res!1920802 () Bool)

(assert (=> b!4593611 (=> (not res!1920802) (not e!2865142))))

(assert (=> b!4593611 (= res!1920802 (dynLambda!21375 lambda!185213 (h!56983 lt!1754463)))))

(declare-fun b!4593612 () Bool)

(assert (=> b!4593612 (= e!2865142 (forall!10562 (t!358147 lt!1754463) lambda!185213))))

(assert (= (and d!1445643 (not res!1920801)) b!4593611))

(assert (= (and b!4593611 res!1920802) b!4593612))

(declare-fun b_lambda!168887 () Bool)

(assert (=> (not b_lambda!168887) (not b!4593611)))

(declare-fun m!5417519 () Bool)

(assert (=> b!4593611 m!5417519))

(declare-fun m!5417521 () Bool)

(assert (=> b!4593612 m!5417521))

(assert (=> b!4593025 d!1445643))

(declare-fun bs!1008611 () Bool)

(declare-fun b!4593617 () Bool)

(assert (= bs!1008611 (and b!4593617 b!4593020)))

(declare-fun lambda!185315 () Int)

(assert (=> bs!1008611 (= (= (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185315 lambda!185214))))

(declare-fun bs!1008612 () Bool)

(assert (= bs!1008612 (and b!4593617 b!4593025)))

(assert (=> bs!1008612 (= (= (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185315 lambda!185213))))

(declare-fun bs!1008613 () Bool)

(assert (= bs!1008613 (and b!4593617 b!4593081)))

(assert (=> bs!1008613 (= (= (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185315 lambda!185228))))

(declare-fun bs!1008614 () Bool)

(assert (= bs!1008614 (and b!4593617 b!4593021)))

(assert (=> bs!1008614 (= (= (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= lambda!185315 lambda!185212))))

(declare-fun bs!1008615 () Bool)

(assert (= bs!1008615 (and b!4593617 d!1445641)))

(assert (=> bs!1008615 (= (= (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185315 lambda!185314))))

(assert (=> b!4593617 true))

(declare-fun bs!1008616 () Bool)

(declare-fun b!4593621 () Bool)

(assert (= bs!1008616 (and b!4593621 b!4593020)))

(declare-fun lambda!185316 () Int)

(assert (=> bs!1008616 (= (= (Cons!51026 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185316 lambda!185214))))

(declare-fun bs!1008617 () Bool)

(assert (= bs!1008617 (and b!4593621 b!4593617)))

(assert (=> bs!1008617 (= (= (Cons!51026 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185316 lambda!185315))))

(declare-fun bs!1008618 () Bool)

(assert (= bs!1008618 (and b!4593621 b!4593025)))

(assert (=> bs!1008618 (= (= (Cons!51026 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185316 lambda!185213))))

(declare-fun bs!1008619 () Bool)

(assert (= bs!1008619 (and b!4593621 b!4593081)))

(assert (=> bs!1008619 (= (= (Cons!51026 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185316 lambda!185228))))

(declare-fun bs!1008620 () Bool)

(assert (= bs!1008620 (and b!4593621 b!4593021)))

(assert (=> bs!1008620 (= (= (Cons!51026 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= lambda!185316 lambda!185212))))

(declare-fun bs!1008621 () Bool)

(assert (= bs!1008621 (and b!4593621 d!1445641)))

(assert (=> bs!1008621 (= (= (Cons!51026 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185316 lambda!185314))))

(assert (=> b!4593621 true))

(declare-fun bs!1008622 () Bool)

(declare-fun b!4593616 () Bool)

(assert (= bs!1008622 (and b!4593616 b!4593020)))

(declare-fun lambda!185317 () Int)

(assert (=> bs!1008622 (= (= (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185317 lambda!185214))))

(declare-fun bs!1008623 () Bool)

(assert (= bs!1008623 (and b!4593616 b!4593617)))

(assert (=> bs!1008623 (= (= (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185317 lambda!185315))))

(declare-fun bs!1008624 () Bool)

(assert (= bs!1008624 (and b!4593616 b!4593025)))

(assert (=> bs!1008624 (= (= (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185317 lambda!185213))))

(declare-fun bs!1008625 () Bool)

(assert (= bs!1008625 (and b!4593616 b!4593621)))

(assert (=> bs!1008625 (= (= (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (Cons!51026 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))) (= lambda!185317 lambda!185316))))

(declare-fun bs!1008626 () Bool)

(assert (= bs!1008626 (and b!4593616 b!4593081)))

(assert (=> bs!1008626 (= (= (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (= lambda!185317 lambda!185228))))

(declare-fun bs!1008627 () Bool)

(assert (= bs!1008627 (and b!4593616 b!4593021)))

(assert (=> bs!1008627 (= lambda!185317 lambda!185212)))

(declare-fun bs!1008628 () Bool)

(assert (= bs!1008628 (and b!4593616 d!1445641)))

(assert (=> bs!1008628 (= (= (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (= lambda!185317 lambda!185314))))

(assert (=> b!4593616 true))

(declare-fun bs!1008629 () Bool)

(declare-fun b!4593614 () Bool)

(assert (= bs!1008629 (and b!4593614 b!4593018)))

(declare-fun lambda!185318 () Int)

(assert (=> bs!1008629 (= lambda!185318 lambda!185215)))

(declare-fun bs!1008630 () Bool)

(assert (= bs!1008630 (and b!4593614 b!4593082)))

(assert (=> bs!1008630 (= lambda!185318 lambda!185229)))

(declare-fun b!4593613 () Bool)

(assert (=> b!4593613 false))

(declare-fun e!2865145 () Unit!107542)

(declare-fun Unit!107640 () Unit!107542)

(assert (=> b!4593613 (= e!2865145 Unit!107640)))

(declare-fun d!1445645 () Bool)

(declare-fun e!2865143 () Bool)

(assert (=> d!1445645 e!2865143))

(declare-fun res!1920803 () Bool)

(assert (=> d!1445645 (=> (not res!1920803) (not e!2865143))))

(declare-fun lt!1754773 () List!51153)

(assert (=> d!1445645 (= res!1920803 (noDuplicate!804 lt!1754773))))

(declare-fun e!2865146 () List!51153)

(assert (=> d!1445645 (= lt!1754773 e!2865146)))

(declare-fun c!786674 () Bool)

(assert (=> d!1445645 (= c!786674 ((_ is Cons!51026) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(assert (=> d!1445645 (invariantList!1113 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))

(assert (=> d!1445645 (= (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) lt!1754773)))

(assert (=> b!4593614 (= e!2865143 (= (content!8620 lt!1754773) (content!8620 (map!11266 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) lambda!185318))))))

(declare-fun b!4593615 () Bool)

(declare-fun Unit!107641 () Unit!107542)

(assert (=> b!4593615 (= e!2865145 Unit!107641)))

(declare-fun res!1920804 () Bool)

(assert (=> b!4593616 (=> (not res!1920804) (not e!2865143))))

(assert (=> b!4593616 (= res!1920804 (forall!10562 lt!1754773 lambda!185317))))

(assert (=> b!4593617 false))

(declare-fun lt!1754771 () Unit!107542)

(assert (=> b!4593617 (= lt!1754771 (forallContained!2817 (getKeysList!561 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) lambda!185315 (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))))

(declare-fun e!2865144 () Unit!107542)

(declare-fun Unit!107642 () Unit!107542)

(assert (=> b!4593617 (= e!2865144 Unit!107642)))

(declare-fun b!4593618 () Bool)

(declare-fun res!1920805 () Bool)

(assert (=> b!4593618 (=> (not res!1920805) (not e!2865143))))

(assert (=> b!4593618 (= res!1920805 (= (length!464 lt!1754773) (length!465 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun b!4593619 () Bool)

(declare-fun Unit!107643 () Unit!107542)

(assert (=> b!4593619 (= e!2865144 Unit!107643)))

(declare-fun b!4593620 () Bool)

(assert (=> b!4593620 (= e!2865146 Nil!51029)))

(assert (=> b!4593621 (= e!2865146 (Cons!51029 (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (getKeysList!561 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))))

(declare-fun c!786673 () Bool)

(assert (=> b!4593621 (= c!786673 (containsKey!2113 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))))

(declare-fun lt!1754772 () Unit!107542)

(assert (=> b!4593621 (= lt!1754772 e!2865145)))

(declare-fun c!786675 () Bool)

(assert (=> b!4593621 (= c!786675 (contains!13953 (getKeysList!561 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))))

(declare-fun lt!1754770 () Unit!107542)

(assert (=> b!4593621 (= lt!1754770 e!2865144)))

(declare-fun lt!1754775 () List!51153)

(assert (=> b!4593621 (= lt!1754775 (getKeysList!561 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun lt!1754774 () Unit!107542)

(assert (=> b!4593621 (= lt!1754774 (lemmaForallContainsAddHeadPreserves!223 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) lt!1754775 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (=> b!4593621 (forall!10562 lt!1754775 lambda!185316)))

(declare-fun lt!1754776 () Unit!107542)

(assert (=> b!4593621 (= lt!1754776 lt!1754774)))

(assert (= (and d!1445645 c!786674) b!4593621))

(assert (= (and d!1445645 (not c!786674)) b!4593620))

(assert (= (and b!4593621 c!786673) b!4593613))

(assert (= (and b!4593621 (not c!786673)) b!4593615))

(assert (= (and b!4593621 c!786675) b!4593617))

(assert (= (and b!4593621 (not c!786675)) b!4593619))

(assert (= (and d!1445645 res!1920803) b!4593618))

(assert (= (and b!4593618 res!1920805) b!4593616))

(assert (= (and b!4593616 res!1920804) b!4593614))

(declare-fun m!5417523 () Bool)

(assert (=> b!4593616 m!5417523))

(declare-fun m!5417525 () Bool)

(assert (=> d!1445645 m!5417525))

(assert (=> d!1445645 m!5417517))

(declare-fun m!5417527 () Bool)

(assert (=> b!4593614 m!5417527))

(declare-fun m!5417529 () Bool)

(assert (=> b!4593614 m!5417529))

(assert (=> b!4593614 m!5417529))

(declare-fun m!5417531 () Bool)

(assert (=> b!4593614 m!5417531))

(declare-fun m!5417533 () Bool)

(assert (=> b!4593621 m!5417533))

(declare-fun m!5417535 () Bool)

(assert (=> b!4593621 m!5417535))

(declare-fun m!5417537 () Bool)

(assert (=> b!4593621 m!5417537))

(assert (=> b!4593621 m!5417535))

(declare-fun m!5417539 () Bool)

(assert (=> b!4593621 m!5417539))

(declare-fun m!5417541 () Bool)

(assert (=> b!4593621 m!5417541))

(assert (=> b!4593617 m!5417535))

(assert (=> b!4593617 m!5417535))

(declare-fun m!5417543 () Bool)

(assert (=> b!4593617 m!5417543))

(declare-fun m!5417545 () Bool)

(assert (=> b!4593618 m!5417545))

(declare-fun m!5417547 () Bool)

(assert (=> b!4593618 m!5417547))

(assert (=> b!4593025 d!1445645))

(declare-fun d!1445647 () Bool)

(declare-fun lt!1754777 () Bool)

(assert (=> d!1445647 (= lt!1754777 (select (content!8620 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun e!2865148 () Bool)

(assert (=> d!1445647 (= lt!1754777 e!2865148)))

(declare-fun res!1920807 () Bool)

(assert (=> d!1445647 (=> (not res!1920807) (not e!2865148))))

(assert (=> d!1445647 (= res!1920807 ((_ is Cons!51029) (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (=> d!1445647 (= (contains!13953 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) lt!1754777)))

(declare-fun b!4593622 () Bool)

(declare-fun e!2865147 () Bool)

(assert (=> b!4593622 (= e!2865148 e!2865147)))

(declare-fun res!1920806 () Bool)

(assert (=> b!4593622 (=> res!1920806 e!2865147)))

(assert (=> b!4593622 (= res!1920806 (= (h!56983 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun b!4593623 () Bool)

(assert (=> b!4593623 (= e!2865147 (contains!13953 (t!358147 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445647 res!1920807) b!4593622))

(assert (= (and b!4593622 (not res!1920806)) b!4593623))

(assert (=> d!1445647 m!5416445))

(declare-fun m!5417549 () Bool)

(assert (=> d!1445647 m!5417549))

(declare-fun m!5417551 () Bool)

(assert (=> d!1445647 m!5417551))

(declare-fun m!5417553 () Bool)

(assert (=> b!4593623 m!5417553))

(assert (=> b!4593025 d!1445647))

(declare-fun d!1445649 () Bool)

(declare-fun res!1920808 () Bool)

(declare-fun e!2865149 () Bool)

(assert (=> d!1445649 (=> res!1920808 e!2865149)))

(assert (=> d!1445649 (= res!1920808 (and ((_ is Cons!51026) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (= (_1!29115 (h!56978 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))))

(assert (=> d!1445649 (= (containsKey!2113 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) e!2865149)))

(declare-fun b!4593624 () Bool)

(declare-fun e!2865150 () Bool)

(assert (=> b!4593624 (= e!2865149 e!2865150)))

(declare-fun res!1920809 () Bool)

(assert (=> b!4593624 (=> (not res!1920809) (not e!2865150))))

(assert (=> b!4593624 (= res!1920809 ((_ is Cons!51026) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(declare-fun b!4593625 () Bool)

(assert (=> b!4593625 (= e!2865150 (containsKey!2113 (t!358144 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445649 (not res!1920808)) b!4593624))

(assert (= (and b!4593624 res!1920809) b!4593625))

(declare-fun m!5417555 () Bool)

(assert (=> b!4593625 m!5417555))

(assert (=> b!4593025 d!1445649))

(declare-fun d!1445651 () Bool)

(declare-fun res!1920810 () Bool)

(declare-fun e!2865151 () Bool)

(assert (=> d!1445651 (=> res!1920810 e!2865151)))

(assert (=> d!1445651 (= res!1920810 (and ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))) (= (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lt!1754227)))))

(assert (=> d!1445651 (= (containsKey!2114 (t!358145 (toList!4611 lm!1477)) lt!1754227) e!2865151)))

(declare-fun b!4593626 () Bool)

(declare-fun e!2865152 () Bool)

(assert (=> b!4593626 (= e!2865151 e!2865152)))

(declare-fun res!1920811 () Bool)

(assert (=> b!4593626 (=> (not res!1920811) (not e!2865152))))

(assert (=> b!4593626 (= res!1920811 (and (or (not ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477)))) (bvsle (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lt!1754227)) ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))) (bvslt (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lt!1754227)))))

(declare-fun b!4593627 () Bool)

(assert (=> b!4593627 (= e!2865152 (containsKey!2114 (t!358145 (t!358145 (toList!4611 lm!1477))) lt!1754227))))

(assert (= (and d!1445651 (not res!1920810)) b!4593626))

(assert (= (and b!4593626 res!1920811) b!4593627))

(declare-fun m!5417557 () Bool)

(assert (=> b!4593627 m!5417557))

(assert (=> b!4592947 d!1445651))

(assert (=> b!4593160 d!1445059))

(declare-fun d!1445653 () Bool)

(declare-fun res!1920812 () Bool)

(declare-fun e!2865153 () Bool)

(assert (=> d!1445653 (=> res!1920812 e!2865153)))

(assert (=> d!1445653 (= res!1920812 (and ((_ is Cons!51026) (t!358144 (_2!29116 lt!1754229))) (= (_1!29115 (h!56978 (t!358144 (_2!29116 lt!1754229)))) (_1!29115 (h!56978 (_2!29116 lt!1754229))))))))

(assert (=> d!1445653 (= (containsKey!2110 (t!358144 (_2!29116 lt!1754229)) (_1!29115 (h!56978 (_2!29116 lt!1754229)))) e!2865153)))

(declare-fun b!4593628 () Bool)

(declare-fun e!2865154 () Bool)

(assert (=> b!4593628 (= e!2865153 e!2865154)))

(declare-fun res!1920813 () Bool)

(assert (=> b!4593628 (=> (not res!1920813) (not e!2865154))))

(assert (=> b!4593628 (= res!1920813 ((_ is Cons!51026) (t!358144 (_2!29116 lt!1754229))))))

(declare-fun b!4593629 () Bool)

(assert (=> b!4593629 (= e!2865154 (containsKey!2110 (t!358144 (t!358144 (_2!29116 lt!1754229))) (_1!29115 (h!56978 (_2!29116 lt!1754229)))))))

(assert (= (and d!1445653 (not res!1920812)) b!4593628))

(assert (= (and b!4593628 res!1920813) b!4593629))

(declare-fun m!5417559 () Bool)

(assert (=> b!4593629 m!5417559))

(assert (=> b!4593156 d!1445653))

(assert (=> d!1445035 d!1445635))

(assert (=> b!4593123 d!1445509))

(declare-fun d!1445655 () Bool)

(declare-fun res!1920814 () Bool)

(declare-fun e!2865155 () Bool)

(assert (=> d!1445655 (=> res!1920814 e!2865155)))

(assert (=> d!1445655 (= res!1920814 ((_ is Nil!51027) (t!358145 (toList!4611 lm!1477))))))

(assert (=> d!1445655 (= (forall!10558 (t!358145 (toList!4611 lm!1477)) lambda!185161) e!2865155)))

(declare-fun b!4593630 () Bool)

(declare-fun e!2865156 () Bool)

(assert (=> b!4593630 (= e!2865155 e!2865156)))

(declare-fun res!1920815 () Bool)

(assert (=> b!4593630 (=> (not res!1920815) (not e!2865156))))

(assert (=> b!4593630 (= res!1920815 (dynLambda!21372 lambda!185161 (h!56979 (t!358145 (toList!4611 lm!1477)))))))

(declare-fun b!4593631 () Bool)

(assert (=> b!4593631 (= e!2865156 (forall!10558 (t!358145 (t!358145 (toList!4611 lm!1477))) lambda!185161))))

(assert (= (and d!1445655 (not res!1920814)) b!4593630))

(assert (= (and b!4593630 res!1920815) b!4593631))

(declare-fun b_lambda!168889 () Bool)

(assert (=> (not b_lambda!168889) (not b!4593630)))

(declare-fun m!5417561 () Bool)

(assert (=> b!4593630 m!5417561))

(declare-fun m!5417563 () Bool)

(assert (=> b!4593631 m!5417563))

(assert (=> b!4592901 d!1445655))

(declare-fun d!1445657 () Bool)

(declare-fun res!1920816 () Bool)

(declare-fun e!2865157 () Bool)

(assert (=> d!1445657 (=> res!1920816 e!2865157)))

(assert (=> d!1445657 (= res!1920816 (and ((_ is Cons!51027) (toList!4611 lm!1477)) (= (_1!29116 (h!56979 (toList!4611 lm!1477))) (hash!3175 hashF!1107 key!3287))))))

(assert (=> d!1445657 (= (containsKey!2114 (toList!4611 lm!1477) (hash!3175 hashF!1107 key!3287)) e!2865157)))

(declare-fun b!4593632 () Bool)

(declare-fun e!2865158 () Bool)

(assert (=> b!4593632 (= e!2865157 e!2865158)))

(declare-fun res!1920817 () Bool)

(assert (=> b!4593632 (=> (not res!1920817) (not e!2865158))))

(assert (=> b!4593632 (= res!1920817 (and (or (not ((_ is Cons!51027) (toList!4611 lm!1477))) (bvsle (_1!29116 (h!56979 (toList!4611 lm!1477))) (hash!3175 hashF!1107 key!3287))) ((_ is Cons!51027) (toList!4611 lm!1477)) (bvslt (_1!29116 (h!56979 (toList!4611 lm!1477))) (hash!3175 hashF!1107 key!3287))))))

(declare-fun b!4593633 () Bool)

(assert (=> b!4593633 (= e!2865158 (containsKey!2114 (t!358145 (toList!4611 lm!1477)) (hash!3175 hashF!1107 key!3287)))))

(assert (= (and d!1445657 (not res!1920816)) b!4593632))

(assert (= (and b!4593632 res!1920817) b!4593633))

(assert (=> b!4593633 m!5416017))

(declare-fun m!5417565 () Bool)

(assert (=> b!4593633 m!5417565))

(assert (=> d!1445207 d!1445657))

(declare-fun d!1445659 () Bool)

(declare-fun res!1920818 () Bool)

(declare-fun e!2865159 () Bool)

(assert (=> d!1445659 (=> res!1920818 e!2865159)))

(assert (=> d!1445659 (= res!1920818 ((_ is Nil!51027) (t!358145 (t!358145 lt!1754228))))))

(assert (=> d!1445659 (= (forall!10558 (t!358145 (t!358145 lt!1754228)) lambda!185132) e!2865159)))

(declare-fun b!4593634 () Bool)

(declare-fun e!2865160 () Bool)

(assert (=> b!4593634 (= e!2865159 e!2865160)))

(declare-fun res!1920819 () Bool)

(assert (=> b!4593634 (=> (not res!1920819) (not e!2865160))))

(assert (=> b!4593634 (= res!1920819 (dynLambda!21372 lambda!185132 (h!56979 (t!358145 (t!358145 lt!1754228)))))))

(declare-fun b!4593635 () Bool)

(assert (=> b!4593635 (= e!2865160 (forall!10558 (t!358145 (t!358145 (t!358145 lt!1754228))) lambda!185132))))

(assert (= (and d!1445659 (not res!1920818)) b!4593634))

(assert (= (and b!4593634 res!1920819) b!4593635))

(declare-fun b_lambda!168891 () Bool)

(assert (=> (not b_lambda!168891) (not b!4593634)))

(declare-fun m!5417567 () Bool)

(assert (=> b!4593634 m!5417567))

(declare-fun m!5417569 () Bool)

(assert (=> b!4593635 m!5417569))

(assert (=> b!4593031 d!1445659))

(declare-fun d!1445661 () Bool)

(declare-fun c!786676 () Bool)

(assert (=> d!1445661 (= c!786676 (and ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))) (= (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lt!1754227)))))

(declare-fun e!2865161 () Option!11367)

(assert (=> d!1445661 (= (getValueByKey!1287 (t!358145 (toList!4611 lm!1477)) lt!1754227) e!2865161)))

(declare-fun b!4593639 () Bool)

(declare-fun e!2865162 () Option!11367)

(assert (=> b!4593639 (= e!2865162 None!11366)))

(declare-fun b!4593637 () Bool)

(assert (=> b!4593637 (= e!2865161 e!2865162)))

(declare-fun c!786677 () Bool)

(assert (=> b!4593637 (= c!786677 (and ((_ is Cons!51027) (t!358145 (toList!4611 lm!1477))) (not (= (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) lt!1754227))))))

(declare-fun b!4593638 () Bool)

(assert (=> b!4593638 (= e!2865162 (getValueByKey!1287 (t!358145 (t!358145 (toList!4611 lm!1477))) lt!1754227))))

(declare-fun b!4593636 () Bool)

(assert (=> b!4593636 (= e!2865161 (Some!11366 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(assert (= (and d!1445661 c!786676) b!4593636))

(assert (= (and d!1445661 (not c!786676)) b!4593637))

(assert (= (and b!4593637 c!786677) b!4593638))

(assert (= (and b!4593637 (not c!786677)) b!4593639))

(declare-fun m!5417571 () Bool)

(assert (=> b!4593638 m!5417571))

(assert (=> b!4593131 d!1445661))

(declare-fun d!1445663 () Bool)

(assert (=> d!1445663 (dynLambda!21375 lambda!185212 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(declare-fun lt!1754780 () Unit!107542)

(declare-fun choose!30716 (List!51153 Int K!12395) Unit!107542)

(assert (=> d!1445663 (= lt!1754780 (choose!30716 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) lambda!185212 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(declare-fun e!2865165 () Bool)

(assert (=> d!1445663 e!2865165))

(declare-fun res!1920822 () Bool)

(assert (=> d!1445663 (=> (not res!1920822) (not e!2865165))))

(assert (=> d!1445663 (= res!1920822 (forall!10562 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) lambda!185212))))

(assert (=> d!1445663 (= (forallContained!2817 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) lambda!185212 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) lt!1754780)))

(declare-fun b!4593642 () Bool)

(assert (=> b!4593642 (= e!2865165 (contains!13953 (getKeysList!561 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445663 res!1920822) b!4593642))

(declare-fun b_lambda!168893 () Bool)

(assert (=> (not b_lambda!168893) (not d!1445663)))

(declare-fun m!5417573 () Bool)

(assert (=> d!1445663 m!5417573))

(assert (=> d!1445663 m!5416445))

(declare-fun m!5417575 () Bool)

(assert (=> d!1445663 m!5417575))

(assert (=> d!1445663 m!5416445))

(declare-fun m!5417577 () Bool)

(assert (=> d!1445663 m!5417577))

(assert (=> b!4593642 m!5416445))

(assert (=> b!4593642 m!5416447))

(assert (=> b!4593021 d!1445663))

(assert (=> b!4593021 d!1445645))

(declare-fun d!1445665 () Bool)

(declare-fun lt!1754781 () Bool)

(assert (=> d!1445665 (= lt!1754781 (select (content!8620 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(declare-fun e!2865167 () Bool)

(assert (=> d!1445665 (= lt!1754781 e!2865167)))

(declare-fun res!1920824 () Bool)

(assert (=> d!1445665 (=> (not res!1920824) (not e!2865167))))

(assert (=> d!1445665 (= res!1920824 ((_ is Cons!51029) (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(assert (=> d!1445665 (= (contains!13953 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) key!3287) lt!1754781)))

(declare-fun b!4593643 () Bool)

(declare-fun e!2865166 () Bool)

(assert (=> b!4593643 (= e!2865167 e!2865166)))

(declare-fun res!1920823 () Bool)

(assert (=> b!4593643 (=> res!1920823 e!2865166)))

(assert (=> b!4593643 (= res!1920823 (= (h!56983 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(declare-fun b!4593644 () Bool)

(assert (=> b!4593644 (= e!2865166 (contains!13953 (t!358147 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) key!3287))))

(assert (= (and d!1445665 res!1920824) b!4593643))

(assert (= (and b!4593643 (not res!1920823)) b!4593644))

(assert (=> d!1445665 m!5416111))

(declare-fun m!5417579 () Bool)

(assert (=> d!1445665 m!5417579))

(declare-fun m!5417581 () Bool)

(assert (=> d!1445665 m!5417581))

(declare-fun m!5417583 () Bool)

(assert (=> b!4593644 m!5417583))

(assert (=> d!1445201 d!1445665))

(assert (=> d!1445201 d!1445071))

(declare-fun d!1445667 () Bool)

(assert (=> d!1445667 (contains!13953 (getKeysList!561 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) key!3287)))

(assert (=> d!1445667 true))

(declare-fun _$14!1452 () Unit!107542)

(assert (=> d!1445667 (= (choose!30706 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) key!3287) _$14!1452)))

(declare-fun bs!1008631 () Bool)

(assert (= bs!1008631 d!1445667))

(assert (=> bs!1008631 m!5416111))

(assert (=> bs!1008631 m!5416111))

(assert (=> bs!1008631 m!5416629))

(assert (=> d!1445201 d!1445667))

(assert (=> d!1445201 d!1445295))

(assert (=> bs!1008341 d!1445205))

(declare-fun d!1445669 () Bool)

(declare-fun c!786678 () Bool)

(assert (=> d!1445669 (= c!786678 ((_ is Nil!51029) (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))))))

(declare-fun e!2865168 () (InoxSet K!12395))

(assert (=> d!1445669 (= (content!8620 (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))) e!2865168)))

(declare-fun b!4593645 () Bool)

(assert (=> b!4593645 (= e!2865168 ((as const (Array K!12395 Bool)) false))))

(declare-fun b!4593646 () Bool)

(assert (=> b!4593646 (= e!2865168 ((_ map or) (store ((as const (Array K!12395 Bool)) false) (h!56983 (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))) true) (content!8620 (t!358147 (keys!17850 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (= (and d!1445669 c!786678) b!4593645))

(assert (= (and d!1445669 (not c!786678)) b!4593646))

(declare-fun m!5417585 () Bool)

(assert (=> b!4593646 m!5417585))

(assert (=> b!4593646 m!5417041))

(assert (=> d!1445133 d!1445669))

(assert (=> d!1445213 d!1445169))

(declare-fun e!2865169 () Bool)

(declare-fun b!4593647 () Bool)

(declare-fun tp!1340179 () Bool)

(assert (=> b!4593647 (= e!2865169 (and tp_is_empty!28485 tp_is_empty!28487 tp!1340179))))

(assert (=> b!4593200 (= tp!1340172 e!2865169)))

(assert (= (and b!4593200 ((_ is Cons!51026) (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))))) b!4593647))

(declare-fun b!4593648 () Bool)

(declare-fun e!2865170 () Bool)

(declare-fun tp!1340180 () Bool)

(declare-fun tp!1340181 () Bool)

(assert (=> b!4593648 (= e!2865170 (and tp!1340180 tp!1340181))))

(assert (=> b!4593200 (= tp!1340173 e!2865170)))

(assert (= (and b!4593200 ((_ is Cons!51027) (t!358145 (t!358145 (toList!4611 lm!1477))))) b!4593648))

(declare-fun tp!1340182 () Bool)

(declare-fun b!4593649 () Bool)

(declare-fun e!2865171 () Bool)

(assert (=> b!4593649 (= e!2865171 (and tp_is_empty!28485 tp_is_empty!28487 tp!1340182))))

(assert (=> b!4593198 (= tp!1340170 e!2865171)))

(assert (= (and b!4593198 ((_ is Cons!51026) (t!358144 (t!358144 (t!358144 newBucket!178))))) b!4593649))

(declare-fun b!4593650 () Bool)

(declare-fun tp!1340183 () Bool)

(declare-fun e!2865172 () Bool)

(assert (=> b!4593650 (= e!2865172 (and tp_is_empty!28485 tp_is_empty!28487 tp!1340183))))

(assert (=> b!4593199 (= tp!1340171 e!2865172)))

(assert (= (and b!4593199 ((_ is Cons!51026) (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) b!4593650))

(declare-fun b_lambda!168895 () Bool)

(assert (= b_lambda!168887 (or b!4593025 b_lambda!168895)))

(declare-fun bs!1008632 () Bool)

(declare-fun d!1445671 () Bool)

(assert (= bs!1008632 (and d!1445671 b!4593025)))

(assert (=> bs!1008632 (= (dynLambda!21375 lambda!185213 (h!56983 lt!1754463)) (containsKey!2113 (Cons!51026 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (h!56983 lt!1754463)))))

(declare-fun m!5417587 () Bool)

(assert (=> bs!1008632 m!5417587))

(assert (=> b!4593611 d!1445671))

(declare-fun b_lambda!168897 () Bool)

(assert (= b_lambda!168891 (or start!457720 b_lambda!168897)))

(declare-fun bs!1008633 () Bool)

(declare-fun d!1445673 () Bool)

(assert (= bs!1008633 (and d!1445673 start!457720)))

(assert (=> bs!1008633 (= (dynLambda!21372 lambda!185132 (h!56979 (t!358145 (t!358145 lt!1754228)))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (t!358145 lt!1754228))))))))

(declare-fun m!5417589 () Bool)

(assert (=> bs!1008633 m!5417589))

(assert (=> b!4593634 d!1445673))

(declare-fun b_lambda!168899 () Bool)

(assert (= b_lambda!168831 (or b!4593121 b_lambda!168899)))

(declare-fun bs!1008634 () Bool)

(declare-fun d!1445675 () Bool)

(assert (= bs!1008634 (and d!1445675 b!4593121)))

(assert (=> bs!1008634 (= (dynLambda!21374 lambda!185263 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))) (contains!13949 (extractMap!1358 (t!358145 (toList!4611 lm!1477))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))))))

(assert (=> bs!1008634 m!5416147))

(declare-fun m!5417591 () Bool)

(assert (=> bs!1008634 m!5417591))

(assert (=> b!4593510 d!1445675))

(declare-fun b_lambda!168901 () Bool)

(assert (= b_lambda!168785 (or d!1445139 b_lambda!168901)))

(declare-fun bs!1008635 () Bool)

(declare-fun d!1445677 () Bool)

(assert (= bs!1008635 (and d!1445677 d!1445139)))

(assert (=> bs!1008635 (= (dynLambda!21374 lambda!185265 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))) (contains!13949 lt!1754548 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))))))

(declare-fun m!5417593 () Bool)

(assert (=> bs!1008635 m!5417593))

(assert (=> b!4593354 d!1445677))

(declare-fun b_lambda!168903 () Bool)

(assert (= b_lambda!168811 (or d!1445007 b_lambda!168903)))

(declare-fun bs!1008636 () Bool)

(declare-fun d!1445679 () Bool)

(assert (= bs!1008636 (and d!1445679 d!1445007)))

(assert (=> bs!1008636 (= (dynLambda!21374 lambda!185164 (h!56978 (t!358144 newBucket!178))) (= (hash!3175 hashF!1107 (_1!29115 (h!56978 (t!358144 newBucket!178)))) hash!344))))

(declare-fun m!5417595 () Bool)

(assert (=> bs!1008636 m!5417595))

(assert (=> b!4593457 d!1445679))

(declare-fun b_lambda!168905 () Bool)

(assert (= b_lambda!168771 (or d!1444993 b_lambda!168905)))

(declare-fun bs!1008637 () Bool)

(declare-fun d!1445681 () Bool)

(assert (= bs!1008637 (and d!1445681 d!1444993)))

(assert (=> bs!1008637 (= (dynLambda!21372 lambda!185160 (h!56979 (t!358145 (toList!4611 lm!1477)))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> bs!1008637 m!5416675))

(assert (=> b!4593280 d!1445681))

(declare-fun b_lambda!168907 () Bool)

(assert (= b_lambda!168829 (or b!4593121 b_lambda!168907)))

(declare-fun bs!1008638 () Bool)

(declare-fun d!1445683 () Bool)

(assert (= bs!1008638 (and d!1445683 b!4593121)))

(assert (=> bs!1008638 (= (dynLambda!21374 lambda!185264 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (contains!13949 lt!1754554 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(assert (=> bs!1008638 m!5416557))

(assert (=> b!4593508 d!1445683))

(declare-fun b_lambda!168909 () Bool)

(assert (= b_lambda!168885 (or d!1444961 b_lambda!168909)))

(declare-fun bs!1008639 () Bool)

(declare-fun d!1445685 () Bool)

(assert (= bs!1008639 (and d!1445685 d!1444961)))

(assert (=> bs!1008639 (= (dynLambda!21372 lambda!185151 (h!56979 (t!358145 (toList!4611 lm!1477)))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> bs!1008639 m!5416675))

(assert (=> b!4593601 d!1445685))

(declare-fun b_lambda!168911 () Bool)

(assert (= b_lambda!168795 (or start!457720 b_lambda!168911)))

(declare-fun bs!1008640 () Bool)

(declare-fun d!1445687 () Bool)

(assert (= bs!1008640 (and d!1445687 start!457720)))

(assert (=> bs!1008640 (= (dynLambda!21372 lambda!185132 (h!56979 (t!358145 (t!358145 (toList!4611 lm!1477))))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (t!358145 (toList!4611 lm!1477)))))))))

(declare-fun m!5417597 () Bool)

(assert (=> bs!1008640 m!5417597))

(assert (=> b!4593397 d!1445687))

(declare-fun b_lambda!168913 () Bool)

(assert (= b_lambda!168777 (or d!1444929 b_lambda!168913)))

(declare-fun bs!1008641 () Bool)

(declare-fun d!1445689 () Bool)

(assert (= bs!1008641 (and d!1445689 d!1444929)))

(assert (=> bs!1008641 (= (dynLambda!21372 lambda!185140 (h!56979 (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228))))) (allKeysSameHash!1154 (_2!29116 (h!56979 (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228))))) (_1!29116 (h!56979 (t!358145 (toList!4611 (ListLongMap!3244 lt!1754228))))) hashF!1107))))

(declare-fun m!5417599 () Bool)

(assert (=> bs!1008641 m!5417599))

(assert (=> b!4593310 d!1445689))

(declare-fun b_lambda!168915 () Bool)

(assert (= b_lambda!168809 (or b!4593082 b_lambda!168915)))

(declare-fun bs!1008642 () Bool)

(declare-fun d!1445691 () Bool)

(assert (= bs!1008642 (and d!1445691 b!4593082)))

(assert (=> bs!1008642 (= (dynLambda!21377 lambda!185229 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(assert (=> b!4593448 d!1445691))

(declare-fun b_lambda!168917 () Bool)

(assert (= b_lambda!168821 (or b!4593121 b_lambda!168917)))

(declare-fun bs!1008643 () Bool)

(declare-fun d!1445693 () Bool)

(assert (= bs!1008643 (and d!1445693 b!4593121)))

(assert (=> bs!1008643 (= (dynLambda!21374 lambda!185264 (h!56978 (toList!4612 lt!1754552))) (contains!13949 lt!1754554 (_1!29115 (h!56978 (toList!4612 lt!1754552)))))))

(declare-fun m!5417601 () Bool)

(assert (=> bs!1008643 m!5417601))

(assert (=> b!4593485 d!1445693))

(declare-fun b_lambda!168919 () Bool)

(assert (= b_lambda!168817 (or d!1445139 b_lambda!168919)))

(declare-fun bs!1008644 () Bool)

(declare-fun d!1445695 () Bool)

(assert (= bs!1008644 (and d!1445695 d!1445139)))

(assert (=> bs!1008644 (= (dynLambda!21374 lambda!185265 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477))))) (contains!13949 lt!1754548 (_1!29115 (h!56978 (_2!29116 (h!56979 (toList!4611 lm!1477)))))))))

(declare-fun m!5417603 () Bool)

(assert (=> bs!1008644 m!5417603))

(assert (=> b!4593467 d!1445695))

(declare-fun b_lambda!168921 () Bool)

(assert (= b_lambda!168889 (or d!1445005 b_lambda!168921)))

(declare-fun bs!1008645 () Bool)

(declare-fun d!1445697 () Bool)

(assert (= bs!1008645 (and d!1445697 d!1445005)))

(assert (=> bs!1008645 (= (dynLambda!21372 lambda!185161 (h!56979 (t!358145 (toList!4611 lm!1477)))) (allKeysSameHash!1154 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) (_1!29116 (h!56979 (t!358145 (toList!4611 lm!1477)))) hashF!1107))))

(declare-fun m!5417605 () Bool)

(assert (=> bs!1008645 m!5417605))

(assert (=> b!4593630 d!1445697))

(declare-fun b_lambda!168923 () Bool)

(assert (= b_lambda!168827 (or b!4593121 b_lambda!168923)))

(declare-fun bs!1008646 () Bool)

(declare-fun d!1445699 () Bool)

(assert (= bs!1008646 (and d!1445699 b!4593121)))

(assert (=> bs!1008646 (= (dynLambda!21374 lambda!185264 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477)))))) (contains!13949 lt!1754554 (_1!29115 (h!56978 (t!358144 (_2!29116 (h!56979 (toList!4611 lm!1477))))))))))

(declare-fun m!5417607 () Bool)

(assert (=> bs!1008646 m!5417607))

(assert (=> b!4593506 d!1445699))

(declare-fun b_lambda!168925 () Bool)

(assert (= b_lambda!168773 (or b!4593081 b_lambda!168925)))

(declare-fun bs!1008647 () Bool)

(declare-fun d!1445701 () Bool)

(assert (= bs!1008647 (and d!1445701 b!4593081)))

(assert (=> bs!1008647 (= (dynLambda!21375 lambda!185228 (h!56983 lt!1754485)) (containsKey!2113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) (h!56983 lt!1754485)))))

(declare-fun m!5417609 () Bool)

(assert (=> bs!1008647 m!5417609))

(assert (=> b!4593298 d!1445701))

(declare-fun b_lambda!168927 () Bool)

(assert (= b_lambda!168807 (or b!4593018 b_lambda!168927)))

(declare-fun bs!1008648 () Bool)

(declare-fun d!1445703 () Bool)

(assert (= bs!1008648 (and d!1445703 b!4593018)))

(assert (=> bs!1008648 (= (dynLambda!21377 lambda!185215 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))))))))

(assert (=> b!4593436 d!1445703))

(declare-fun b_lambda!168929 () Bool)

(assert (= b_lambda!168823 (or b!4593121 b_lambda!168929)))

(declare-fun bs!1008649 () Bool)

(declare-fun d!1445705 () Bool)

(assert (= bs!1008649 (and d!1445705 b!4593121)))

(assert (=> bs!1008649 (= (dynLambda!21374 lambda!185264 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477)))))) (contains!13949 lt!1754554 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (t!358145 (toList!4611 lm!1477))))))))))

(declare-fun m!5417611 () Bool)

(assert (=> bs!1008649 m!5417611))

(assert (=> b!4593501 d!1445705))

(declare-fun b_lambda!168931 () Bool)

(assert (= b_lambda!168815 (or b!4593020 b_lambda!168931)))

(declare-fun bs!1008650 () Bool)

(declare-fun d!1445707 () Bool)

(assert (= bs!1008650 (and d!1445707 b!4593020)))

(assert (=> bs!1008650 (= (dynLambda!21375 lambda!185214 (h!56983 lt!1754461)) (containsKey!2113 (toList!4612 (extractMap!1358 (toList!4611 lm!1477))) (h!56983 lt!1754461)))))

(declare-fun m!5417613 () Bool)

(assert (=> bs!1008650 m!5417613))

(assert (=> b!4593461 d!1445707))

(declare-fun b_lambda!168933 () Bool)

(assert (= b_lambda!168893 (or b!4593021 b_lambda!168933)))

(declare-fun bs!1008651 () Bool)

(declare-fun d!1445709 () Bool)

(assert (= bs!1008651 (and d!1445709 b!4593021)))

(assert (=> bs!1008651 (= (dynLambda!21375 lambda!185212 (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))) (containsKey!2113 (t!358144 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))) (_1!29115 (h!56978 (toList!4612 (extractMap!1358 (toList!4611 lm!1477)))))))))

(assert (=> bs!1008651 m!5416443))

(assert (=> d!1445663 d!1445709))

(declare-fun b_lambda!168935 () Bool)

(assert (= b_lambda!168781 (or d!1445161 b_lambda!168935)))

(declare-fun bs!1008652 () Bool)

(declare-fun d!1445711 () Bool)

(assert (= bs!1008652 (and d!1445711 d!1445161)))

(assert (=> bs!1008652 (= (dynLambda!21372 lambda!185266 (h!56979 (t!358145 (toList!4611 lm!1477)))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> bs!1008652 m!5416675))

(assert (=> b!4593320 d!1445711))

(declare-fun b_lambda!168937 () Bool)

(assert (= b_lambda!168825 (or b!4593121 b_lambda!168937)))

(assert (=> d!1445511 d!1445683))

(declare-fun b_lambda!168939 () Bool)

(assert (= b_lambda!168787 (or d!1444973 b_lambda!168939)))

(declare-fun bs!1008653 () Bool)

(declare-fun d!1445713 () Bool)

(assert (= bs!1008653 (and d!1445713 d!1444973)))

(assert (=> bs!1008653 (= (dynLambda!21372 lambda!185157 (h!56979 (t!358145 (toList!4611 lm!1477)))) (noDuplicateKeys!1298 (_2!29116 (h!56979 (t!358145 (toList!4611 lm!1477))))))))

(assert (=> bs!1008653 m!5416675))

(assert (=> b!4593356 d!1445713))

(check-sat (not b!4593324) tp_is_empty!28485 (not b!4593299) (not bs!1008653) (not d!1445555) (not bs!1008651) (not d!1445393) (not b!4593517) (not b!4593316) (not b!4593612) (not d!1445647) (not b!4593535) (not b_lambda!168775) (not b!4593464) (not d!1445295) (not b!4593352) (not bs!1008652) (not b_lambda!168895) (not b!4593597) (not b!4593396) (not b!4593499) (not b_lambda!168745) (not bs!1008643) (not b!4593539) (not bm!320629) (not b!4593468) (not b!4593494) (not b_lambda!168899) (not b_lambda!168921) (not b!4593454) (not bs!1008636) (not bs!1008646) (not b_lambda!168749) (not b!4593592) (not b_lambda!168927) (not b!4593498) (not b_lambda!168751) (not b_lambda!168929) (not b!4593482) (not d!1445435) (not b!4593616) (not d!1445615) (not d!1445617) (not d!1445299) (not b_lambda!168675) (not b!4593480) (not b_lambda!168743) (not b!4593389) (not d!1445375) (not b!4593538) (not b!4593519) (not b!4593321) (not b_lambda!168907) (not d!1445415) (not d!1445531) (not b!4593385) (not b_lambda!168909) (not b_lambda!168679) (not bm!320636) (not b!4593365) (not bs!1008639) (not b!4593323) (not b!4593382) (not b!4593377) (not d!1445341) (not b!4593311) (not d!1445467) (not d!1445645) (not b!4593509) (not b!4593359) (not b_lambda!168911) (not bm!320637) (not b_lambda!168931) (not bs!1008633) (not b!4593649) (not b_lambda!168735) (not b!4593325) (not bs!1008637) (not b_lambda!168939) (not b!4593540) (not b!4593505) (not bs!1008641) (not b!4593623) (not b!4593647) (not bs!1008645) (not b!4593512) (not b_lambda!168677) (not b!4593594) (not bm!320630) (not b_lambda!168937) (not b_lambda!168905) (not b!4593492) (not b_lambda!168913) (not b_lambda!168923) (not d!1445391) (not b!4593606) (not b_lambda!168897) (not bs!1008632) (not b!4593266) (not b!4593600) (not b!4593267) (not b!4593515) (not d!1445511) (not b!4593375) (not b!4593293) (not b!4593495) (not b!4593361) (not bs!1008649) (not b!4593486) (not b!4593537) (not bs!1008634) (not b!4593646) (not d!1445667) (not d!1445469) (not d!1445637) (not b!4593462) (not b!4593502) (not b!4593603) (not b!4593629) (not d!1445663) (not b!4593380) (not b!4593618) (not b_lambda!168739) (not bm!320628) (not d!1445407) (not b!4593642) (not d!1445507) (not b_lambda!168915) (not b!4593368) (not b_lambda!168901) (not d!1445665) (not d!1445331) (not bs!1008650) (not b!4593507) (not bs!1008644) (not b!4593602) (not b!4593392) (not bs!1008640) (not b_lambda!168925) (not b!4593472) (not b_lambda!168935) (not bm!320638) (not b!4593617) (not b!4593363) (not b!4593638) (not b!4593358) (not b_lambda!168741) (not b!4593627) (not b!4593511) (not b!4593442) (not b!4593621) (not b!4593500) (not bs!1008638) (not b!4593614) (not d!1445641) (not b!4593520) (not d!1445623) (not b!4593481) (not b!4593458) (not d!1445465) (not b!4593591) (not b!4593394) (not b!4593292) (not b!4593648) (not b_lambda!168903) (not b_lambda!168919) (not b!4593411) (not b!4593497) (not b!4593271) (not d!1445293) (not b!4593350) (not b!4593355) (not b_lambda!168747) (not b_lambda!168917) (not b!4593353) (not b!4593309) (not b!4593398) (not d!1445371) (not b!4593302) (not b!4593536) (not b!4593518) (not b!4593608) (not d!1445347) (not b!4593281) (not d!1445519) (not b!4593446) (not b_lambda!168769) (not b!4593448) (not b!4593604) (not bs!1008635) (not b!4593631) (not b_lambda!168933) (not b!4593644) (not b!4593364) tp_is_empty!28487 (not b!4593360) (not b!4593625) (not bm!320635) (not d!1445521) (not b!4593514) (not d!1445627) (not b!4593635) (not b!4593275) (not b!4593436) (not d!1445399) (not d!1445419) (not b!4593274) (not b!4593322) (not bs!1008647) (not b!4593650) (not bm!320634) (not b!4593633) (not d!1445495) (not b!4593456) (not b!4593279) (not b_lambda!168737) (not b!4593357) (not b!4593407) (not b!4593474))
(check-sat)
