; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!491912 () Bool)

(assert start!491912)

(declare-fun bs!1153362 () Bool)

(declare-fun b!4785199 () Bool)

(assert (= bs!1153362 (and b!4785199 start!491912)))

(declare-fun lambda!229099 () Int)

(declare-fun lambda!229098 () Int)

(assert (=> bs!1153362 (not (= lambda!229099 lambda!229098))))

(assert (=> b!4785199 true))

(declare-fun e!2987671 () Bool)

(declare-fun e!2987670 () Bool)

(assert (=> b!4785199 (= e!2987671 e!2987670)))

(declare-fun res!2032559 () Bool)

(assert (=> b!4785199 (=> (not res!2032559) (not e!2987670))))

(declare-datatypes ((K!15632 0))(
  ( (K!15633 (val!20811 Int)) )
))
(declare-datatypes ((V!15878 0))(
  ( (V!15879 (val!20812 Int)) )
))
(declare-datatypes ((tuple2!56596 0))(
  ( (tuple2!56597 (_1!31592 K!15632) (_2!31592 V!15878)) )
))
(declare-datatypes ((List!54191 0))(
  ( (Nil!54067) (Cons!54067 (h!60487 tuple2!56596) (t!361641 List!54191)) )
))
(declare-datatypes ((tuple2!56598 0))(
  ( (tuple2!56599 (_1!31593 (_ BitVec 64)) (_2!31593 List!54191)) )
))
(declare-datatypes ((List!54192 0))(
  ( (Nil!54068) (Cons!54068 (h!60488 tuple2!56598) (t!361642 List!54192)) )
))
(declare-datatypes ((ListLongMap!5215 0))(
  ( (ListLongMap!5216 (toList!6793 List!54192)) )
))
(declare-fun lm!2473 () ListLongMap!5215)

(declare-fun forall!12157 (List!54192 Int) Bool)

(assert (=> b!4785199 (= res!2032559 (forall!12157 (toList!6793 lm!2473) lambda!229099))))

(declare-fun b!4785200 () Bool)

(declare-fun res!2032564 () Bool)

(assert (=> b!4785200 (=> res!2032564 e!2987671)))

(declare-fun key!5896 () K!15632)

(declare-fun containsKey!3853 (List!54191 K!15632) Bool)

(assert (=> b!4785200 (= res!2032564 (not (containsKey!3853 (_2!31593 (h!60488 (toList!6793 lm!2473))) key!5896)))))

(declare-fun b!4785201 () Bool)

(declare-fun e!2987669 () Bool)

(declare-fun tp!1357633 () Bool)

(assert (=> b!4785201 (= e!2987669 tp!1357633)))

(declare-fun b!4785202 () Bool)

(declare-fun contains!17636 (List!54192 tuple2!56598) Bool)

(assert (=> b!4785202 (= e!2987670 (contains!17636 (toList!6793 lm!2473) (h!60488 (toList!6793 lm!2473))))))

(declare-fun b!4785203 () Bool)

(declare-fun e!2987668 () Bool)

(assert (=> b!4785203 (= e!2987668 (not e!2987671))))

(declare-fun res!2032563 () Bool)

(assert (=> b!4785203 (=> res!2032563 e!2987671)))

(declare-fun value!3111 () V!15878)

(declare-fun getValue!53 (List!54192 K!15632) V!15878)

(assert (=> b!4785203 (= res!2032563 (not (= (getValue!53 (toList!6793 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!507 (List!54192 K!15632) Bool)

(assert (=> b!4785203 (containsKeyBiggerList!507 (toList!6793 lm!2473) key!5896)))

(declare-datatypes ((Hashable!6857 0))(
  ( (HashableExt!6856 (__x!32880 Int)) )
))
(declare-fun hashF!1559 () Hashable!6857)

(declare-datatypes ((Unit!139469 0))(
  ( (Unit!139470) )
))
(declare-fun lt!1946948 () Unit!139469)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!247 (ListLongMap!5215 K!15632 Hashable!6857) Unit!139469)

(assert (=> b!4785203 (= lt!1946948 (lemmaInLongMapThenContainsKeyBiggerList!247 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2987667 () Bool)

(assert (=> b!4785203 e!2987667))

(declare-fun res!2032561 () Bool)

(assert (=> b!4785203 (=> (not res!2032561) (not e!2987667))))

(declare-fun lt!1946947 () (_ BitVec 64))

(declare-fun contains!17637 (ListLongMap!5215 (_ BitVec 64)) Bool)

(assert (=> b!4785203 (= res!2032561 (contains!17637 lm!2473 lt!1946947))))

(declare-fun hash!4873 (Hashable!6857 K!15632) (_ BitVec 64))

(assert (=> b!4785203 (= lt!1946947 (hash!4873 hashF!1559 key!5896))))

(declare-fun lt!1946946 () Unit!139469)

(declare-fun lemmaInGenericMapThenInLongMap!261 (ListLongMap!5215 K!15632 Hashable!6857) Unit!139469)

(assert (=> b!4785203 (= lt!1946946 (lemmaInGenericMapThenInLongMap!261 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4785204 () Bool)

(declare-fun res!2032562 () Bool)

(assert (=> b!4785204 (=> (not res!2032562) (not e!2987668))))

(declare-fun allKeysSameHashInMap!2262 (ListLongMap!5215 Hashable!6857) Bool)

(assert (=> b!4785204 (= res!2032562 (allKeysSameHashInMap!2262 lm!2473 hashF!1559))))

(declare-fun b!4785205 () Bool)

(declare-datatypes ((Option!12989 0))(
  ( (None!12988) (Some!12988 (v!48237 tuple2!56596)) )
))
(declare-fun isDefined!10132 (Option!12989) Bool)

(declare-fun getPair!829 (List!54191 K!15632) Option!12989)

(declare-fun apply!12912 (ListLongMap!5215 (_ BitVec 64)) List!54191)

(assert (=> b!4785205 (= e!2987667 (isDefined!10132 (getPair!829 (apply!12912 lm!2473 lt!1946947) key!5896)))))

(declare-fun res!2032565 () Bool)

(assert (=> start!491912 (=> (not res!2032565) (not e!2987668))))

(assert (=> start!491912 (= res!2032565 (forall!12157 (toList!6793 lm!2473) lambda!229098))))

(assert (=> start!491912 e!2987668))

(declare-fun inv!69659 (ListLongMap!5215) Bool)

(assert (=> start!491912 (and (inv!69659 lm!2473) e!2987669)))

(assert (=> start!491912 true))

(declare-fun tp_is_empty!33309 () Bool)

(assert (=> start!491912 tp_is_empty!33309))

(declare-fun tp_is_empty!33311 () Bool)

(assert (=> start!491912 tp_is_empty!33311))

(declare-fun b!4785206 () Bool)

(declare-fun res!2032566 () Bool)

(assert (=> b!4785206 (=> res!2032566 e!2987671)))

(assert (=> b!4785206 (= res!2032566 (not (is-Cons!54068 (toList!6793 lm!2473))))))

(declare-fun b!4785207 () Bool)

(declare-fun res!2032560 () Bool)

(assert (=> b!4785207 (=> (not res!2032560) (not e!2987668))))

(declare-datatypes ((ListMap!6265 0))(
  ( (ListMap!6266 (toList!6794 List!54191)) )
))
(declare-fun contains!17638 (ListMap!6265 K!15632) Bool)

(declare-fun extractMap!2384 (List!54192) ListMap!6265)

(assert (=> b!4785207 (= res!2032560 (contains!17638 (extractMap!2384 (toList!6793 lm!2473)) key!5896))))

(assert (= (and start!491912 res!2032565) b!4785204))

(assert (= (and b!4785204 res!2032562) b!4785207))

(assert (= (and b!4785207 res!2032560) b!4785203))

(assert (= (and b!4785203 res!2032561) b!4785205))

(assert (= (and b!4785203 (not res!2032563)) b!4785206))

(assert (= (and b!4785206 (not res!2032566)) b!4785200))

(assert (= (and b!4785200 (not res!2032564)) b!4785199))

(assert (= (and b!4785199 res!2032559) b!4785202))

(assert (= start!491912 b!4785201))

(declare-fun m!5764218 () Bool)

(assert (=> b!4785207 m!5764218))

(assert (=> b!4785207 m!5764218))

(declare-fun m!5764220 () Bool)

(assert (=> b!4785207 m!5764220))

(declare-fun m!5764222 () Bool)

(assert (=> b!4785200 m!5764222))

(declare-fun m!5764224 () Bool)

(assert (=> b!4785204 m!5764224))

(declare-fun m!5764226 () Bool)

(assert (=> b!4785199 m!5764226))

(declare-fun m!5764228 () Bool)

(assert (=> b!4785205 m!5764228))

(assert (=> b!4785205 m!5764228))

(declare-fun m!5764230 () Bool)

(assert (=> b!4785205 m!5764230))

(assert (=> b!4785205 m!5764230))

(declare-fun m!5764232 () Bool)

(assert (=> b!4785205 m!5764232))

(declare-fun m!5764234 () Bool)

(assert (=> b!4785203 m!5764234))

(declare-fun m!5764236 () Bool)

(assert (=> b!4785203 m!5764236))

(declare-fun m!5764238 () Bool)

(assert (=> b!4785203 m!5764238))

(declare-fun m!5764240 () Bool)

(assert (=> b!4785203 m!5764240))

(declare-fun m!5764242 () Bool)

(assert (=> b!4785203 m!5764242))

(declare-fun m!5764244 () Bool)

(assert (=> b!4785203 m!5764244))

(declare-fun m!5764246 () Bool)

(assert (=> start!491912 m!5764246))

(declare-fun m!5764248 () Bool)

(assert (=> start!491912 m!5764248))

(declare-fun m!5764250 () Bool)

(assert (=> b!4785202 m!5764250))

(push 1)

(assert tp_is_empty!33309)

(assert (not start!491912))

(assert (not b!4785202))

(assert (not b!4785204))

(assert (not b!4785203))

(assert (not b!4785205))

(assert (not b!4785199))

(assert tp_is_empty!33311)

(assert (not b!4785201))

(assert (not b!4785207))

(assert (not b!4785200))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1530632 () Bool)

(declare-fun lt!1946960 () Bool)

(declare-fun content!9670 (List!54192) (Set tuple2!56598))

(assert (=> d!1530632 (= lt!1946960 (set.member (h!60488 (toList!6793 lm!2473)) (content!9670 (toList!6793 lm!2473))))))

(declare-fun e!2987692 () Bool)

(assert (=> d!1530632 (= lt!1946960 e!2987692)))

(declare-fun res!2032595 () Bool)

(assert (=> d!1530632 (=> (not res!2032595) (not e!2987692))))

(assert (=> d!1530632 (= res!2032595 (is-Cons!54068 (toList!6793 lm!2473)))))

(assert (=> d!1530632 (= (contains!17636 (toList!6793 lm!2473) (h!60488 (toList!6793 lm!2473))) lt!1946960)))

(declare-fun b!4785243 () Bool)

(declare-fun e!2987691 () Bool)

(assert (=> b!4785243 (= e!2987692 e!2987691)))

(declare-fun res!2032596 () Bool)

(assert (=> b!4785243 (=> res!2032596 e!2987691)))

(assert (=> b!4785243 (= res!2032596 (= (h!60488 (toList!6793 lm!2473)) (h!60488 (toList!6793 lm!2473))))))

(declare-fun b!4785244 () Bool)

(assert (=> b!4785244 (= e!2987691 (contains!17636 (t!361642 (toList!6793 lm!2473)) (h!60488 (toList!6793 lm!2473))))))

(assert (= (and d!1530632 res!2032595) b!4785243))

(assert (= (and b!4785243 (not res!2032596)) b!4785244))

(declare-fun m!5764286 () Bool)

(assert (=> d!1530632 m!5764286))

(declare-fun m!5764288 () Bool)

(assert (=> d!1530632 m!5764288))

(declare-fun m!5764290 () Bool)

(assert (=> b!4785244 m!5764290))

(assert (=> b!4785202 d!1530632))

(declare-fun b!4785263 () Bool)

(declare-fun e!2987710 () Bool)

(declare-fun e!2987709 () Bool)

(assert (=> b!4785263 (= e!2987710 e!2987709)))

(declare-fun res!2032605 () Bool)

(assert (=> b!4785263 (=> (not res!2032605) (not e!2987709))))

(declare-datatypes ((Option!12991 0))(
  ( (None!12990) (Some!12990 (v!48241 V!15878)) )
))
(declare-fun isDefined!10134 (Option!12991) Bool)

(declare-fun getValueByKey!2308 (List!54191 K!15632) Option!12991)

(assert (=> b!4785263 (= res!2032605 (isDefined!10134 (getValueByKey!2308 (toList!6794 (extractMap!2384 (toList!6793 lm!2473))) key!5896)))))

(declare-fun b!4785264 () Bool)

(assert (=> b!4785264 false))

(declare-fun lt!1946979 () Unit!139469)

(declare-fun lt!1946981 () Unit!139469)

(assert (=> b!4785264 (= lt!1946979 lt!1946981)))

(declare-fun containsKey!3855 (List!54191 K!15632) Bool)

(assert (=> b!4785264 (containsKey!3855 (toList!6794 (extractMap!2384 (toList!6793 lm!2473))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1054 (List!54191 K!15632) Unit!139469)

(assert (=> b!4785264 (= lt!1946981 (lemmaInGetKeysListThenContainsKey!1054 (toList!6794 (extractMap!2384 (toList!6793 lm!2473))) key!5896))))

(declare-fun e!2987705 () Unit!139469)

(declare-fun Unit!139473 () Unit!139469)

(assert (=> b!4785264 (= e!2987705 Unit!139473)))

(declare-fun b!4785265 () Bool)

(declare-fun e!2987707 () Unit!139469)

(declare-fun lt!1946977 () Unit!139469)

(assert (=> b!4785265 (= e!2987707 lt!1946977)))

(declare-fun lt!1946978 () Unit!139469)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2101 (List!54191 K!15632) Unit!139469)

(assert (=> b!4785265 (= lt!1946978 (lemmaContainsKeyImpliesGetValueByKeyDefined!2101 (toList!6794 (extractMap!2384 (toList!6793 lm!2473))) key!5896))))

(assert (=> b!4785265 (isDefined!10134 (getValueByKey!2308 (toList!6794 (extractMap!2384 (toList!6793 lm!2473))) key!5896))))

(declare-fun lt!1946983 () Unit!139469)

(assert (=> b!4785265 (= lt!1946983 lt!1946978)))

(declare-fun lemmaInListThenGetKeysListContains!1049 (List!54191 K!15632) Unit!139469)

(assert (=> b!4785265 (= lt!1946977 (lemmaInListThenGetKeysListContains!1049 (toList!6794 (extractMap!2384 (toList!6793 lm!2473))) key!5896))))

(declare-fun call!334829 () Bool)

(assert (=> b!4785265 call!334829))

(declare-fun b!4785266 () Bool)

(declare-datatypes ((List!54195 0))(
  ( (Nil!54071) (Cons!54071 (h!60491 K!15632) (t!361645 List!54195)) )
))
(declare-fun contains!17642 (List!54195 K!15632) Bool)

(declare-fun keys!19711 (ListMap!6265) List!54195)

(assert (=> b!4785266 (= e!2987709 (contains!17642 (keys!19711 (extractMap!2384 (toList!6793 lm!2473))) key!5896))))

(declare-fun bm!334824 () Bool)

(declare-fun e!2987706 () List!54195)

(assert (=> bm!334824 (= call!334829 (contains!17642 e!2987706 key!5896))))

(declare-fun c!815701 () Bool)

(declare-fun c!815702 () Bool)

(assert (=> bm!334824 (= c!815701 c!815702)))

(declare-fun b!4785267 () Bool)

(assert (=> b!4785267 (= e!2987707 e!2987705)))

(declare-fun c!815700 () Bool)

(assert (=> b!4785267 (= c!815700 call!334829)))

(declare-fun b!4785268 () Bool)

(assert (=> b!4785268 (= e!2987706 (keys!19711 (extractMap!2384 (toList!6793 lm!2473))))))

(declare-fun d!1530634 () Bool)

(assert (=> d!1530634 e!2987710))

(declare-fun res!2032603 () Bool)

(assert (=> d!1530634 (=> res!2032603 e!2987710)))

(declare-fun e!2987708 () Bool)

(assert (=> d!1530634 (= res!2032603 e!2987708)))

(declare-fun res!2032604 () Bool)

(assert (=> d!1530634 (=> (not res!2032604) (not e!2987708))))

(declare-fun lt!1946984 () Bool)

(assert (=> d!1530634 (= res!2032604 (not lt!1946984))))

(declare-fun lt!1946980 () Bool)

(assert (=> d!1530634 (= lt!1946984 lt!1946980)))

(declare-fun lt!1946982 () Unit!139469)

(assert (=> d!1530634 (= lt!1946982 e!2987707)))

(assert (=> d!1530634 (= c!815702 lt!1946980)))

(assert (=> d!1530634 (= lt!1946980 (containsKey!3855 (toList!6794 (extractMap!2384 (toList!6793 lm!2473))) key!5896))))

(assert (=> d!1530634 (= (contains!17638 (extractMap!2384 (toList!6793 lm!2473)) key!5896) lt!1946984)))

(declare-fun b!4785269 () Bool)

(declare-fun Unit!139474 () Unit!139469)

(assert (=> b!4785269 (= e!2987705 Unit!139474)))

(declare-fun b!4785270 () Bool)

(assert (=> b!4785270 (= e!2987708 (not (contains!17642 (keys!19711 (extractMap!2384 (toList!6793 lm!2473))) key!5896)))))

(declare-fun b!4785271 () Bool)

(declare-fun getKeysList!1054 (List!54191) List!54195)

(assert (=> b!4785271 (= e!2987706 (getKeysList!1054 (toList!6794 (extractMap!2384 (toList!6793 lm!2473)))))))

(assert (= (and d!1530634 c!815702) b!4785265))

(assert (= (and d!1530634 (not c!815702)) b!4785267))

(assert (= (and b!4785267 c!815700) b!4785264))

(assert (= (and b!4785267 (not c!815700)) b!4785269))

(assert (= (or b!4785265 b!4785267) bm!334824))

(assert (= (and bm!334824 c!815701) b!4785271))

(assert (= (and bm!334824 (not c!815701)) b!4785268))

(assert (= (and d!1530634 res!2032604) b!4785270))

(assert (= (and d!1530634 (not res!2032603)) b!4785263))

(assert (= (and b!4785263 res!2032605) b!4785266))

(assert (=> b!4785268 m!5764218))

(declare-fun m!5764296 () Bool)

(assert (=> b!4785268 m!5764296))

(assert (=> b!4785270 m!5764218))

(assert (=> b!4785270 m!5764296))

(assert (=> b!4785270 m!5764296))

(declare-fun m!5764298 () Bool)

(assert (=> b!4785270 m!5764298))

(declare-fun m!5764300 () Bool)

(assert (=> b!4785263 m!5764300))

(assert (=> b!4785263 m!5764300))

(declare-fun m!5764302 () Bool)

(assert (=> b!4785263 m!5764302))

(declare-fun m!5764304 () Bool)

(assert (=> d!1530634 m!5764304))

(declare-fun m!5764306 () Bool)

(assert (=> bm!334824 m!5764306))

(assert (=> b!4785266 m!5764218))

(assert (=> b!4785266 m!5764296))

(assert (=> b!4785266 m!5764296))

(assert (=> b!4785266 m!5764298))

(declare-fun m!5764308 () Bool)

(assert (=> b!4785271 m!5764308))

(assert (=> b!4785264 m!5764304))

(declare-fun m!5764310 () Bool)

(assert (=> b!4785264 m!5764310))

(declare-fun m!5764312 () Bool)

(assert (=> b!4785265 m!5764312))

(assert (=> b!4785265 m!5764300))

(assert (=> b!4785265 m!5764300))

(assert (=> b!4785265 m!5764302))

(declare-fun m!5764314 () Bool)

(assert (=> b!4785265 m!5764314))

(assert (=> b!4785207 d!1530634))

(declare-fun bs!1153369 () Bool)

(declare-fun d!1530642 () Bool)

(assert (= bs!1153369 (and d!1530642 start!491912)))

(declare-fun lambda!229111 () Int)

(assert (=> bs!1153369 (= lambda!229111 lambda!229098)))

(declare-fun bs!1153370 () Bool)

(assert (= bs!1153370 (and d!1530642 b!4785199)))

(assert (=> bs!1153370 (not (= lambda!229111 lambda!229099))))

(declare-fun lt!1946990 () ListMap!6265)

(declare-fun invariantList!1708 (List!54191) Bool)

(assert (=> d!1530642 (invariantList!1708 (toList!6794 lt!1946990))))

(declare-fun e!2987732 () ListMap!6265)

(assert (=> d!1530642 (= lt!1946990 e!2987732)))

(declare-fun c!815711 () Bool)

(assert (=> d!1530642 (= c!815711 (is-Cons!54068 (toList!6793 lm!2473)))))

(assert (=> d!1530642 (forall!12157 (toList!6793 lm!2473) lambda!229111)))

(assert (=> d!1530642 (= (extractMap!2384 (toList!6793 lm!2473)) lt!1946990)))

(declare-fun b!4785304 () Bool)

(declare-fun addToMapMapFromBucket!1673 (List!54191 ListMap!6265) ListMap!6265)

(assert (=> b!4785304 (= e!2987732 (addToMapMapFromBucket!1673 (_2!31593 (h!60488 (toList!6793 lm!2473))) (extractMap!2384 (t!361642 (toList!6793 lm!2473)))))))

(declare-fun b!4785305 () Bool)

(assert (=> b!4785305 (= e!2987732 (ListMap!6266 Nil!54067))))

(assert (= (and d!1530642 c!815711) b!4785304))

(assert (= (and d!1530642 (not c!815711)) b!4785305))

(declare-fun m!5764334 () Bool)

(assert (=> d!1530642 m!5764334))

(declare-fun m!5764336 () Bool)

(assert (=> d!1530642 m!5764336))

(declare-fun m!5764338 () Bool)

(assert (=> b!4785304 m!5764338))

(assert (=> b!4785304 m!5764338))

(declare-fun m!5764340 () Bool)

(assert (=> b!4785304 m!5764340))

(assert (=> b!4785207 d!1530642))

(declare-fun d!1530648 () Bool)

(declare-fun res!2032628 () Bool)

(declare-fun e!2987739 () Bool)

(assert (=> d!1530648 (=> res!2032628 e!2987739)))

(assert (=> d!1530648 (= res!2032628 (is-Nil!54068 (toList!6793 lm!2473)))))

(assert (=> d!1530648 (= (forall!12157 (toList!6793 lm!2473) lambda!229098) e!2987739)))

(declare-fun b!4785312 () Bool)

(declare-fun e!2987740 () Bool)

(assert (=> b!4785312 (= e!2987739 e!2987740)))

(declare-fun res!2032629 () Bool)

(assert (=> b!4785312 (=> (not res!2032629) (not e!2987740))))

(declare-fun dynLambda!22028 (Int tuple2!56598) Bool)

(assert (=> b!4785312 (= res!2032629 (dynLambda!22028 lambda!229098 (h!60488 (toList!6793 lm!2473))))))

(declare-fun b!4785313 () Bool)

(assert (=> b!4785313 (= e!2987740 (forall!12157 (t!361642 (toList!6793 lm!2473)) lambda!229098))))

(assert (= (and d!1530648 (not res!2032628)) b!4785312))

(assert (= (and b!4785312 res!2032629) b!4785313))

(declare-fun b_lambda!186093 () Bool)

(assert (=> (not b_lambda!186093) (not b!4785312)))

(declare-fun m!5764346 () Bool)

(assert (=> b!4785312 m!5764346))

(declare-fun m!5764348 () Bool)

(assert (=> b!4785313 m!5764348))

(assert (=> start!491912 d!1530648))

(declare-fun d!1530652 () Bool)

(declare-fun isStrictlySorted!857 (List!54192) Bool)

(assert (=> d!1530652 (= (inv!69659 lm!2473) (isStrictlySorted!857 (toList!6793 lm!2473)))))

(declare-fun bs!1153371 () Bool)

(assert (= bs!1153371 d!1530652))

(declare-fun m!5764350 () Bool)

(assert (=> bs!1153371 m!5764350))

(assert (=> start!491912 d!1530652))

(declare-fun d!1530654 () Bool)

(declare-fun res!2032642 () Bool)

(declare-fun e!2987753 () Bool)

(assert (=> d!1530654 (=> res!2032642 e!2987753)))

(declare-fun e!2987752 () Bool)

(assert (=> d!1530654 (= res!2032642 e!2987752)))

(declare-fun res!2032641 () Bool)

(assert (=> d!1530654 (=> (not res!2032641) (not e!2987752))))

(assert (=> d!1530654 (= res!2032641 (is-Cons!54068 (toList!6793 lm!2473)))))

(assert (=> d!1530654 (= (containsKeyBiggerList!507 (toList!6793 lm!2473) key!5896) e!2987753)))

(declare-fun b!4785324 () Bool)

(assert (=> b!4785324 (= e!2987752 (containsKey!3853 (_2!31593 (h!60488 (toList!6793 lm!2473))) key!5896))))

(declare-fun b!4785325 () Bool)

(declare-fun e!2987751 () Bool)

(assert (=> b!4785325 (= e!2987753 e!2987751)))

(declare-fun res!2032640 () Bool)

(assert (=> b!4785325 (=> (not res!2032640) (not e!2987751))))

(assert (=> b!4785325 (= res!2032640 (is-Cons!54068 (toList!6793 lm!2473)))))

(declare-fun b!4785326 () Bool)

(assert (=> b!4785326 (= e!2987751 (containsKeyBiggerList!507 (t!361642 (toList!6793 lm!2473)) key!5896))))

(assert (= (and d!1530654 res!2032641) b!4785324))

(assert (= (and d!1530654 (not res!2032642)) b!4785325))

(assert (= (and b!4785325 res!2032640) b!4785326))

(assert (=> b!4785324 m!5764222))

(declare-fun m!5764352 () Bool)

(assert (=> b!4785326 m!5764352))

(assert (=> b!4785203 d!1530654))

(declare-fun bs!1153372 () Bool)

(declare-fun d!1530656 () Bool)

(assert (= bs!1153372 (and d!1530656 start!491912)))

(declare-fun lambda!229114 () Int)

(assert (=> bs!1153372 (= lambda!229114 lambda!229098)))

(declare-fun bs!1153373 () Bool)

(assert (= bs!1153373 (and d!1530656 b!4785199)))

(assert (=> bs!1153373 (not (= lambda!229114 lambda!229099))))

(declare-fun bs!1153374 () Bool)

(assert (= bs!1153374 (and d!1530656 d!1530642)))

(assert (=> bs!1153374 (= lambda!229114 lambda!229111)))

(assert (=> d!1530656 (containsKeyBiggerList!507 (toList!6793 lm!2473) key!5896)))

(declare-fun lt!1946996 () Unit!139469)

(declare-fun choose!34385 (ListLongMap!5215 K!15632 Hashable!6857) Unit!139469)

(assert (=> d!1530656 (= lt!1946996 (choose!34385 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1530656 (forall!12157 (toList!6793 lm!2473) lambda!229114)))

(assert (=> d!1530656 (= (lemmaInLongMapThenContainsKeyBiggerList!247 lm!2473 key!5896 hashF!1559) lt!1946996)))

(declare-fun bs!1153375 () Bool)

(assert (= bs!1153375 d!1530656))

(assert (=> bs!1153375 m!5764236))

(declare-fun m!5764360 () Bool)

(assert (=> bs!1153375 m!5764360))

(declare-fun m!5764362 () Bool)

(assert (=> bs!1153375 m!5764362))

(assert (=> b!4785203 d!1530656))

(declare-fun bs!1153376 () Bool)

(declare-fun d!1530660 () Bool)

(assert (= bs!1153376 (and d!1530660 start!491912)))

(declare-fun lambda!229117 () Int)

(assert (=> bs!1153376 (= lambda!229117 lambda!229098)))

(declare-fun bs!1153377 () Bool)

(assert (= bs!1153377 (and d!1530660 b!4785199)))

(assert (=> bs!1153377 (not (= lambda!229117 lambda!229099))))

(declare-fun bs!1153378 () Bool)

(assert (= bs!1153378 (and d!1530660 d!1530642)))

(assert (=> bs!1153378 (= lambda!229117 lambda!229111)))

(declare-fun bs!1153379 () Bool)

(assert (= bs!1153379 (and d!1530660 d!1530656)))

(assert (=> bs!1153379 (= lambda!229117 lambda!229114)))

(declare-fun e!2987758 () Bool)

(assert (=> d!1530660 e!2987758))

(declare-fun res!2032647 () Bool)

(assert (=> d!1530660 (=> (not res!2032647) (not e!2987758))))

(assert (=> d!1530660 (= res!2032647 (contains!17637 lm!2473 (hash!4873 hashF!1559 key!5896)))))

(declare-fun lt!1946999 () Unit!139469)

(declare-fun choose!34386 (ListLongMap!5215 K!15632 Hashable!6857) Unit!139469)

(assert (=> d!1530660 (= lt!1946999 (choose!34386 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1530660 (forall!12157 (toList!6793 lm!2473) lambda!229117)))

(assert (=> d!1530660 (= (lemmaInGenericMapThenInLongMap!261 lm!2473 key!5896 hashF!1559) lt!1946999)))

(declare-fun b!4785331 () Bool)

(assert (=> b!4785331 (= e!2987758 (isDefined!10132 (getPair!829 (apply!12912 lm!2473 (hash!4873 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1530660 res!2032647) b!4785331))

(assert (=> d!1530660 m!5764238))

(assert (=> d!1530660 m!5764238))

(declare-fun m!5764364 () Bool)

(assert (=> d!1530660 m!5764364))

(declare-fun m!5764366 () Bool)

(assert (=> d!1530660 m!5764366))

(declare-fun m!5764368 () Bool)

(assert (=> d!1530660 m!5764368))

(assert (=> b!4785331 m!5764238))

(assert (=> b!4785331 m!5764238))

(declare-fun m!5764370 () Bool)

(assert (=> b!4785331 m!5764370))

(assert (=> b!4785331 m!5764370))

(declare-fun m!5764372 () Bool)

(assert (=> b!4785331 m!5764372))

(assert (=> b!4785331 m!5764372))

(declare-fun m!5764374 () Bool)

(assert (=> b!4785331 m!5764374))

(assert (=> b!4785203 d!1530660))

(declare-fun d!1530662 () Bool)

(declare-fun c!815714 () Bool)

(declare-fun e!2987764 () Bool)

(assert (=> d!1530662 (= c!815714 e!2987764)))

(declare-fun res!2032650 () Bool)

(assert (=> d!1530662 (=> (not res!2032650) (not e!2987764))))

(assert (=> d!1530662 (= res!2032650 (is-Cons!54068 (toList!6793 lm!2473)))))

(declare-fun e!2987763 () V!15878)

(assert (=> d!1530662 (= (getValue!53 (toList!6793 lm!2473) key!5896) e!2987763)))

(declare-fun b!4785340 () Bool)

(assert (=> b!4785340 (= e!2987764 (containsKey!3853 (_2!31593 (h!60488 (toList!6793 lm!2473))) key!5896))))

(declare-fun b!4785338 () Bool)

(declare-fun get!18404 (Option!12989) tuple2!56596)

(assert (=> b!4785338 (= e!2987763 (_2!31592 (get!18404 (getPair!829 (_2!31593 (h!60488 (toList!6793 lm!2473))) key!5896))))))

(declare-fun b!4785339 () Bool)

(assert (=> b!4785339 (= e!2987763 (getValue!53 (t!361642 (toList!6793 lm!2473)) key!5896))))

(assert (= (and d!1530662 res!2032650) b!4785340))

(assert (= (and d!1530662 c!815714) b!4785338))

(assert (= (and d!1530662 (not c!815714)) b!4785339))

(assert (=> b!4785340 m!5764222))

(declare-fun m!5764376 () Bool)

(assert (=> b!4785338 m!5764376))

(assert (=> b!4785338 m!5764376))

(declare-fun m!5764378 () Bool)

(assert (=> b!4785338 m!5764378))

(declare-fun m!5764380 () Bool)

(assert (=> b!4785339 m!5764380))

(assert (=> b!4785203 d!1530662))

(declare-fun d!1530664 () Bool)

(declare-fun e!2987770 () Bool)

(assert (=> d!1530664 e!2987770))

(declare-fun res!2032653 () Bool)

(assert (=> d!1530664 (=> res!2032653 e!2987770)))

(declare-fun lt!1947008 () Bool)

(assert (=> d!1530664 (= res!2032653 (not lt!1947008))))

(declare-fun lt!1947010 () Bool)

(assert (=> d!1530664 (= lt!1947008 lt!1947010)))

(declare-fun lt!1947011 () Unit!139469)

(declare-fun e!2987769 () Unit!139469)

(assert (=> d!1530664 (= lt!1947011 e!2987769)))

(declare-fun c!815717 () Bool)

(assert (=> d!1530664 (= c!815717 lt!1947010)))

(declare-fun containsKey!3856 (List!54192 (_ BitVec 64)) Bool)

(assert (=> d!1530664 (= lt!1947010 (containsKey!3856 (toList!6793 lm!2473) lt!1946947))))

(assert (=> d!1530664 (= (contains!17637 lm!2473 lt!1946947) lt!1947008)))

(declare-fun b!4785347 () Bool)

(declare-fun lt!1947009 () Unit!139469)

(assert (=> b!4785347 (= e!2987769 lt!1947009)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2102 (List!54192 (_ BitVec 64)) Unit!139469)

(assert (=> b!4785347 (= lt!1947009 (lemmaContainsKeyImpliesGetValueByKeyDefined!2102 (toList!6793 lm!2473) lt!1946947))))

(declare-datatypes ((Option!12992 0))(
  ( (None!12991) (Some!12991 (v!48242 List!54191)) )
))
(declare-fun isDefined!10135 (Option!12992) Bool)

(declare-fun getValueByKey!2309 (List!54192 (_ BitVec 64)) Option!12992)

(assert (=> b!4785347 (isDefined!10135 (getValueByKey!2309 (toList!6793 lm!2473) lt!1946947))))

(declare-fun b!4785348 () Bool)

(declare-fun Unit!139475 () Unit!139469)

(assert (=> b!4785348 (= e!2987769 Unit!139475)))

(declare-fun b!4785349 () Bool)

(assert (=> b!4785349 (= e!2987770 (isDefined!10135 (getValueByKey!2309 (toList!6793 lm!2473) lt!1946947)))))

(assert (= (and d!1530664 c!815717) b!4785347))

(assert (= (and d!1530664 (not c!815717)) b!4785348))

(assert (= (and d!1530664 (not res!2032653)) b!4785349))

(declare-fun m!5764382 () Bool)

(assert (=> d!1530664 m!5764382))

(declare-fun m!5764384 () Bool)

(assert (=> b!4785347 m!5764384))

(declare-fun m!5764386 () Bool)

(assert (=> b!4785347 m!5764386))

(assert (=> b!4785347 m!5764386))

(declare-fun m!5764388 () Bool)

(assert (=> b!4785347 m!5764388))

(assert (=> b!4785349 m!5764386))

(assert (=> b!4785349 m!5764386))

(assert (=> b!4785349 m!5764388))

(assert (=> b!4785203 d!1530664))

(declare-fun d!1530666 () Bool)

(declare-fun hash!4875 (Hashable!6857 K!15632) (_ BitVec 64))

(assert (=> d!1530666 (= (hash!4873 hashF!1559 key!5896) (hash!4875 hashF!1559 key!5896))))

(declare-fun bs!1153380 () Bool)

(assert (= bs!1153380 d!1530666))

(declare-fun m!5764390 () Bool)

(assert (=> bs!1153380 m!5764390))

(assert (=> b!4785203 d!1530666))

(declare-fun d!1530668 () Bool)

(declare-fun isEmpty!29379 (Option!12989) Bool)

(assert (=> d!1530668 (= (isDefined!10132 (getPair!829 (apply!12912 lm!2473 lt!1946947) key!5896)) (not (isEmpty!29379 (getPair!829 (apply!12912 lm!2473 lt!1946947) key!5896))))))

(declare-fun bs!1153381 () Bool)

(assert (= bs!1153381 d!1530668))

(assert (=> bs!1153381 m!5764230))

(declare-fun m!5764392 () Bool)

(assert (=> bs!1153381 m!5764392))

(assert (=> b!4785205 d!1530668))

(declare-fun lt!1947030 () Option!12989)

(declare-fun e!2987794 () Bool)

(declare-fun b!4785384 () Bool)

(declare-fun contains!17643 (List!54191 tuple2!56596) Bool)

(assert (=> b!4785384 (= e!2987794 (contains!17643 (apply!12912 lm!2473 lt!1946947) (get!18404 lt!1947030)))))

(declare-fun b!4785385 () Bool)

(declare-fun e!2987797 () Bool)

(assert (=> b!4785385 (= e!2987797 e!2987794)))

(declare-fun res!2032668 () Bool)

(assert (=> b!4785385 (=> (not res!2032668) (not e!2987794))))

(assert (=> b!4785385 (= res!2032668 (isDefined!10132 lt!1947030))))

(declare-fun b!4785386 () Bool)

(declare-fun e!2987796 () Option!12989)

(assert (=> b!4785386 (= e!2987796 None!12988)))

(declare-fun b!4785387 () Bool)

(declare-fun e!2987793 () Option!12989)

(assert (=> b!4785387 (= e!2987793 (Some!12988 (h!60487 (apply!12912 lm!2473 lt!1946947))))))

(declare-fun b!4785388 () Bool)

(declare-fun res!2032669 () Bool)

(assert (=> b!4785388 (=> (not res!2032669) (not e!2987794))))

(assert (=> b!4785388 (= res!2032669 (= (_1!31592 (get!18404 lt!1947030)) key!5896))))

(declare-fun b!4785389 () Bool)

(assert (=> b!4785389 (= e!2987793 e!2987796)))

(declare-fun c!815728 () Bool)

(assert (=> b!4785389 (= c!815728 (is-Cons!54067 (apply!12912 lm!2473 lt!1946947)))))

(declare-fun d!1530670 () Bool)

(assert (=> d!1530670 e!2987797))

(declare-fun res!2032671 () Bool)

(assert (=> d!1530670 (=> res!2032671 e!2987797)))

(declare-fun e!2987795 () Bool)

(assert (=> d!1530670 (= res!2032671 e!2987795)))

(declare-fun res!2032670 () Bool)

(assert (=> d!1530670 (=> (not res!2032670) (not e!2987795))))

(assert (=> d!1530670 (= res!2032670 (isEmpty!29379 lt!1947030))))

(assert (=> d!1530670 (= lt!1947030 e!2987793)))

(declare-fun c!815729 () Bool)

(assert (=> d!1530670 (= c!815729 (and (is-Cons!54067 (apply!12912 lm!2473 lt!1946947)) (= (_1!31592 (h!60487 (apply!12912 lm!2473 lt!1946947))) key!5896)))))

(declare-fun noDuplicateKeys!2305 (List!54191) Bool)

(assert (=> d!1530670 (noDuplicateKeys!2305 (apply!12912 lm!2473 lt!1946947))))

(assert (=> d!1530670 (= (getPair!829 (apply!12912 lm!2473 lt!1946947) key!5896) lt!1947030)))

(declare-fun b!4785390 () Bool)

(assert (=> b!4785390 (= e!2987796 (getPair!829 (t!361641 (apply!12912 lm!2473 lt!1946947)) key!5896))))

(declare-fun b!4785391 () Bool)

(assert (=> b!4785391 (= e!2987795 (not (containsKey!3853 (apply!12912 lm!2473 lt!1946947) key!5896)))))

(assert (= (and d!1530670 c!815729) b!4785387))

(assert (= (and d!1530670 (not c!815729)) b!4785389))

(assert (= (and b!4785389 c!815728) b!4785390))

(assert (= (and b!4785389 (not c!815728)) b!4785386))

(assert (= (and d!1530670 res!2032670) b!4785391))

(assert (= (and d!1530670 (not res!2032671)) b!4785385))

(assert (= (and b!4785385 res!2032668) b!4785388))

(assert (= (and b!4785388 res!2032669) b!4785384))

(declare-fun m!5764394 () Bool)

(assert (=> b!4785384 m!5764394))

(assert (=> b!4785384 m!5764228))

(assert (=> b!4785384 m!5764394))

(declare-fun m!5764396 () Bool)

(assert (=> b!4785384 m!5764396))

(declare-fun m!5764398 () Bool)

(assert (=> d!1530670 m!5764398))

(assert (=> d!1530670 m!5764228))

(declare-fun m!5764400 () Bool)

(assert (=> d!1530670 m!5764400))

(assert (=> b!4785391 m!5764228))

(declare-fun m!5764402 () Bool)

(assert (=> b!4785391 m!5764402))

(declare-fun m!5764404 () Bool)

(assert (=> b!4785385 m!5764404))

(declare-fun m!5764406 () Bool)

(assert (=> b!4785390 m!5764406))

(assert (=> b!4785388 m!5764394))

(assert (=> b!4785205 d!1530670))

(declare-fun d!1530672 () Bool)

(declare-fun get!18405 (Option!12992) List!54191)

(assert (=> d!1530672 (= (apply!12912 lm!2473 lt!1946947) (get!18405 (getValueByKey!2309 (toList!6793 lm!2473) lt!1946947)))))

(declare-fun bs!1153382 () Bool)

(assert (= bs!1153382 d!1530672))

(assert (=> bs!1153382 m!5764386))

(assert (=> bs!1153382 m!5764386))

(declare-fun m!5764408 () Bool)

(assert (=> bs!1153382 m!5764408))

(assert (=> b!4785205 d!1530672))

(declare-fun bs!1153383 () Bool)

(declare-fun d!1530674 () Bool)

(assert (= bs!1153383 (and d!1530674 d!1530642)))

(declare-fun lambda!229120 () Int)

(assert (=> bs!1153383 (not (= lambda!229120 lambda!229111))))

(declare-fun bs!1153384 () Bool)

(assert (= bs!1153384 (and d!1530674 b!4785199)))

(assert (=> bs!1153384 (= lambda!229120 lambda!229099)))

(declare-fun bs!1153385 () Bool)

(assert (= bs!1153385 (and d!1530674 d!1530656)))

(assert (=> bs!1153385 (not (= lambda!229120 lambda!229114))))

(declare-fun bs!1153386 () Bool)

(assert (= bs!1153386 (and d!1530674 d!1530660)))

(assert (=> bs!1153386 (not (= lambda!229120 lambda!229117))))

(declare-fun bs!1153387 () Bool)

(assert (= bs!1153387 (and d!1530674 start!491912)))

(assert (=> bs!1153387 (not (= lambda!229120 lambda!229098))))

(assert (=> d!1530674 true))

(assert (=> d!1530674 (= (allKeysSameHashInMap!2262 lm!2473 hashF!1559) (forall!12157 (toList!6793 lm!2473) lambda!229120))))

(declare-fun bs!1153388 () Bool)

(assert (= bs!1153388 d!1530674))

(declare-fun m!5764410 () Bool)

(assert (=> bs!1153388 m!5764410))

(assert (=> b!4785204 d!1530674))

(declare-fun d!1530676 () Bool)

(declare-fun res!2032672 () Bool)

(declare-fun e!2987798 () Bool)

(assert (=> d!1530676 (=> res!2032672 e!2987798)))

(assert (=> d!1530676 (= res!2032672 (is-Nil!54068 (toList!6793 lm!2473)))))

(assert (=> d!1530676 (= (forall!12157 (toList!6793 lm!2473) lambda!229099) e!2987798)))

(declare-fun b!4785392 () Bool)

(declare-fun e!2987799 () Bool)

(assert (=> b!4785392 (= e!2987798 e!2987799)))

(declare-fun res!2032673 () Bool)

(assert (=> b!4785392 (=> (not res!2032673) (not e!2987799))))

(assert (=> b!4785392 (= res!2032673 (dynLambda!22028 lambda!229099 (h!60488 (toList!6793 lm!2473))))))

(declare-fun b!4785393 () Bool)

(assert (=> b!4785393 (= e!2987799 (forall!12157 (t!361642 (toList!6793 lm!2473)) lambda!229099))))

(assert (= (and d!1530676 (not res!2032672)) b!4785392))

(assert (= (and b!4785392 res!2032673) b!4785393))

(declare-fun b_lambda!186095 () Bool)

(assert (=> (not b_lambda!186095) (not b!4785392)))

(declare-fun m!5764412 () Bool)

(assert (=> b!4785392 m!5764412))

(declare-fun m!5764414 () Bool)

(assert (=> b!4785393 m!5764414))

(assert (=> b!4785199 d!1530676))

(declare-fun d!1530678 () Bool)

(declare-fun res!2032681 () Bool)

(declare-fun e!2987810 () Bool)

(assert (=> d!1530678 (=> res!2032681 e!2987810)))

(assert (=> d!1530678 (= res!2032681 (and (is-Cons!54067 (_2!31593 (h!60488 (toList!6793 lm!2473)))) (= (_1!31592 (h!60487 (_2!31593 (h!60488 (toList!6793 lm!2473))))) key!5896)))))

(assert (=> d!1530678 (= (containsKey!3853 (_2!31593 (h!60488 (toList!6793 lm!2473))) key!5896) e!2987810)))

(declare-fun b!4785407 () Bool)

(declare-fun e!2987811 () Bool)

(assert (=> b!4785407 (= e!2987810 e!2987811)))

(declare-fun res!2032682 () Bool)

(assert (=> b!4785407 (=> (not res!2032682) (not e!2987811))))

(assert (=> b!4785407 (= res!2032682 (is-Cons!54067 (_2!31593 (h!60488 (toList!6793 lm!2473)))))))

(declare-fun b!4785408 () Bool)

(assert (=> b!4785408 (= e!2987811 (containsKey!3853 (t!361641 (_2!31593 (h!60488 (toList!6793 lm!2473)))) key!5896))))

(assert (= (and d!1530678 (not res!2032681)) b!4785407))

(assert (= (and b!4785407 res!2032682) b!4785408))

(declare-fun m!5764424 () Bool)

(assert (=> b!4785408 m!5764424))

(assert (=> b!4785200 d!1530678))

(declare-fun b!4785413 () Bool)

(declare-fun e!2987814 () Bool)

(declare-fun tp!1357641 () Bool)

(declare-fun tp!1357642 () Bool)

(assert (=> b!4785413 (= e!2987814 (and tp!1357641 tp!1357642))))

(assert (=> b!4785201 (= tp!1357633 e!2987814)))

(assert (= (and b!4785201 (is-Cons!54068 (toList!6793 lm!2473))) b!4785413))

(declare-fun b_lambda!186097 () Bool)

(assert (= b_lambda!186093 (or start!491912 b_lambda!186097)))

(declare-fun bs!1153389 () Bool)

(declare-fun d!1530682 () Bool)

(assert (= bs!1153389 (and d!1530682 start!491912)))

(assert (=> bs!1153389 (= (dynLambda!22028 lambda!229098 (h!60488 (toList!6793 lm!2473))) (noDuplicateKeys!2305 (_2!31593 (h!60488 (toList!6793 lm!2473)))))))

(declare-fun m!5764438 () Bool)

(assert (=> bs!1153389 m!5764438))

(assert (=> b!4785312 d!1530682))

(declare-fun b_lambda!186099 () Bool)

(assert (= b_lambda!186095 (or b!4785199 b_lambda!186099)))

(declare-fun bs!1153390 () Bool)

(declare-fun d!1530684 () Bool)

(assert (= bs!1153390 (and d!1530684 b!4785199)))

(declare-fun allKeysSameHash!1944 (List!54191 (_ BitVec 64) Hashable!6857) Bool)

(assert (=> bs!1153390 (= (dynLambda!22028 lambda!229099 (h!60488 (toList!6793 lm!2473))) (allKeysSameHash!1944 (_2!31593 (h!60488 (toList!6793 lm!2473))) (_1!31593 (h!60488 (toList!6793 lm!2473))) hashF!1559))))

(declare-fun m!5764440 () Bool)

(assert (=> bs!1153390 m!5764440))

(assert (=> b!4785392 d!1530684))

(push 1)

(assert (not b!4785349))

(assert (not b!4785313))

(assert (not b!4785265))

(assert (not b!4785244))

(assert (not b!4785271))

(assert (not d!1530632))

(assert (not b!4785326))

(assert (not d!1530672))

(assert (not b!4785339))

(assert (not d!1530674))

(assert (not d!1530664))

(assert tp_is_empty!33309)

(assert (not b!4785388))

(assert (not b!4785340))

(assert (not b!4785347))

(assert (not b_lambda!186097))

(assert (not d!1530666))

(assert (not b!4785263))

(assert (not d!1530642))

(assert (not d!1530668))

(assert (not b!4785413))

(assert (not d!1530652))

(assert (not b!4785268))

(assert tp_is_empty!33311)

(assert (not bs!1153390))

(assert (not b!4785264))

(assert (not b!4785270))

(assert (not d!1530634))

(assert (not b!4785393))

(assert (not b!4785338))

(assert (not b!4785266))

(assert (not b!4785384))

(assert (not b!4785408))

(assert (not d!1530656))

(assert (not b!4785304))

(assert (not bm!334824))

(assert (not b!4785385))

(assert (not d!1530670))

(assert (not b!4785324))

(assert (not b!4785391))

(assert (not b_lambda!186099))

(assert (not bs!1153389))

(assert (not d!1530660))

(assert (not b!4785390))

(assert (not b!4785331))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

