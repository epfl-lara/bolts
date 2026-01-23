; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!492368 () Bool)

(assert start!492368)

(declare-fun bs!1153694 () Bool)

(declare-fun b!4787022 () Bool)

(assert (= bs!1153694 (and b!4787022 start!492368)))

(declare-fun lambda!229487 () Int)

(declare-fun lambda!229486 () Int)

(assert (=> bs!1153694 (not (= lambda!229487 lambda!229486))))

(assert (=> b!4787022 true))

(assert (=> b!4787022 true))

(assert (=> b!4787022 true))

(declare-fun res!2033647 () Bool)

(declare-fun e!2988866 () Bool)

(assert (=> start!492368 (=> (not res!2033647) (not e!2988866))))

(declare-datatypes ((K!15657 0))(
  ( (K!15658 (val!20831 Int)) )
))
(declare-datatypes ((V!15903 0))(
  ( (V!15904 (val!20832 Int)) )
))
(declare-datatypes ((tuple2!56636 0))(
  ( (tuple2!56637 (_1!31612 K!15657) (_2!31612 V!15903)) )
))
(declare-datatypes ((List!54217 0))(
  ( (Nil!54093) (Cons!54093 (h!60517 tuple2!56636) (t!361667 List!54217)) )
))
(declare-datatypes ((tuple2!56638 0))(
  ( (tuple2!56639 (_1!31613 (_ BitVec 64)) (_2!31613 List!54217)) )
))
(declare-datatypes ((List!54218 0))(
  ( (Nil!54094) (Cons!54094 (h!60518 tuple2!56638) (t!361668 List!54218)) )
))
(declare-datatypes ((ListLongMap!5235 0))(
  ( (ListLongMap!5236 (toList!6813 List!54218)) )
))
(declare-fun lm!2473 () ListLongMap!5235)

(declare-fun forall!12175 (List!54218 Int) Bool)

(assert (=> start!492368 (= res!2033647 (forall!12175 (toList!6813 lm!2473) lambda!229486))))

(assert (=> start!492368 e!2988866))

(declare-fun e!2988864 () Bool)

(declare-fun inv!69684 (ListLongMap!5235) Bool)

(assert (=> start!492368 (and (inv!69684 lm!2473) e!2988864)))

(assert (=> start!492368 true))

(declare-fun tp_is_empty!33349 () Bool)

(assert (=> start!492368 tp_is_empty!33349))

(declare-fun tp_is_empty!33351 () Bool)

(assert (=> start!492368 tp_is_empty!33351))

(declare-fun b!4787015 () Bool)

(declare-fun res!2033643 () Bool)

(declare-fun e!2988865 () Bool)

(assert (=> b!4787015 (=> res!2033643 e!2988865)))

(declare-fun key!5896 () K!15657)

(declare-fun containsKey!3874 (List!54217 K!15657) Bool)

(assert (=> b!4787015 (= res!2033643 (not (containsKey!3874 (_2!31613 (h!60518 (toList!6813 lm!2473))) key!5896)))))

(declare-fun b!4787016 () Bool)

(declare-fun res!2033649 () Bool)

(assert (=> b!4787016 (=> (not res!2033649) (not e!2988866))))

(declare-datatypes ((ListMap!6285 0))(
  ( (ListMap!6286 (toList!6814 List!54217)) )
))
(declare-fun contains!17674 (ListMap!6285 K!15657) Bool)

(declare-fun extractMap!2394 (List!54218) ListMap!6285)

(assert (=> b!4787016 (= res!2033649 (contains!17674 (extractMap!2394 (toList!6813 lm!2473)) key!5896))))

(declare-fun b!4787017 () Bool)

(declare-fun res!2033646 () Bool)

(assert (=> b!4787017 (=> (not res!2033646) (not e!2988866))))

(declare-datatypes ((Hashable!6867 0))(
  ( (HashableExt!6866 (__x!32890 Int)) )
))
(declare-fun hashF!1559 () Hashable!6867)

(declare-fun allKeysSameHashInMap!2272 (ListLongMap!5235 Hashable!6867) Bool)

(assert (=> b!4787017 (= res!2033646 (allKeysSameHashInMap!2272 lm!2473 hashF!1559))))

(declare-fun b!4787018 () Bool)

(assert (=> b!4787018 (= e!2988866 (not e!2988865))))

(declare-fun res!2033648 () Bool)

(assert (=> b!4787018 (=> res!2033648 e!2988865)))

(declare-fun value!3111 () V!15903)

(declare-fun getValue!63 (List!54218 K!15657) V!15903)

(assert (=> b!4787018 (= res!2033648 (not (= (getValue!63 (toList!6813 lm!2473) key!5896) value!3111)))))

(declare-fun containsKeyBiggerList!517 (List!54218 K!15657) Bool)

(assert (=> b!4787018 (containsKeyBiggerList!517 (toList!6813 lm!2473) key!5896)))

(declare-datatypes ((Unit!139570 0))(
  ( (Unit!139571) )
))
(declare-fun lt!1947885 () Unit!139570)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!257 (ListLongMap!5235 K!15657 Hashable!6867) Unit!139570)

(assert (=> b!4787018 (= lt!1947885 (lemmaInLongMapThenContainsKeyBiggerList!257 lm!2473 key!5896 hashF!1559))))

(declare-fun e!2988863 () Bool)

(assert (=> b!4787018 e!2988863))

(declare-fun res!2033644 () Bool)

(assert (=> b!4787018 (=> (not res!2033644) (not e!2988863))))

(declare-fun lt!1947886 () (_ BitVec 64))

(declare-fun contains!17675 (ListLongMap!5235 (_ BitVec 64)) Bool)

(assert (=> b!4787018 (= res!2033644 (contains!17675 lm!2473 lt!1947886))))

(declare-fun hash!4888 (Hashable!6867 K!15657) (_ BitVec 64))

(assert (=> b!4787018 (= lt!1947886 (hash!4888 hashF!1559 key!5896))))

(declare-fun lt!1947887 () Unit!139570)

(declare-fun lemmaInGenericMapThenInLongMap!271 (ListLongMap!5235 K!15657 Hashable!6867) Unit!139570)

(assert (=> b!4787018 (= lt!1947887 (lemmaInGenericMapThenInLongMap!271 lm!2473 key!5896 hashF!1559))))

(declare-fun b!4787019 () Bool)

(declare-fun tp!1357719 () Bool)

(assert (=> b!4787019 (= e!2988864 tp!1357719)))

(declare-fun b!4787020 () Bool)

(declare-fun res!2033645 () Bool)

(assert (=> b!4787020 (=> res!2033645 e!2988865)))

(assert (=> b!4787020 (= res!2033645 (not (is-Cons!54094 (toList!6813 lm!2473))))))

(declare-fun b!4787021 () Bool)

(declare-datatypes ((Option!13011 0))(
  ( (None!13010) (Some!13010 (v!48273 tuple2!56636)) )
))
(declare-fun isDefined!10153 (Option!13011) Bool)

(declare-fun getPair!839 (List!54217 K!15657) Option!13011)

(declare-fun apply!12922 (ListLongMap!5235 (_ BitVec 64)) List!54217)

(assert (=> b!4787021 (= e!2988863 (isDefined!10153 (getPair!839 (apply!12922 lm!2473 lt!1947886) key!5896)))))

(assert (=> b!4787022 (= e!2988865 (forall!12175 (t!361668 (toList!6813 lm!2473)) lambda!229486))))

(declare-fun lt!1947890 () ListLongMap!5235)

(assert (=> b!4787022 (not (contains!17674 (extractMap!2394 (toList!6813 lt!1947890)) key!5896))))

(declare-fun lt!1947884 () Unit!139570)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!1 (ListLongMap!5235 K!15657 Hashable!6867) Unit!139570)

(assert (=> b!4787022 (= lt!1947884 (lemmaHashNotInLongMapThenNotInGenerated!1 lt!1947890 key!5896 hashF!1559))))

(declare-fun tail!9214 (ListLongMap!5235) ListLongMap!5235)

(assert (=> b!4787022 (= lt!1947890 (tail!9214 lm!2473))))

(declare-fun lambda!229488 () Int)

(declare-fun lt!1947889 () Unit!139570)

(declare-fun forallContained!4117 (List!54217 Int tuple2!56636) Unit!139570)

(assert (=> b!4787022 (= lt!1947889 (forallContained!4117 (_2!31613 (h!60518 (toList!6813 lm!2473))) lambda!229488 (tuple2!56637 key!5896 value!3111)))))

(declare-fun lt!1947888 () Unit!139570)

(declare-fun forallContained!4118 (List!54218 Int tuple2!56638) Unit!139570)

(assert (=> b!4787022 (= lt!1947888 (forallContained!4118 (toList!6813 lm!2473) lambda!229487 (h!60518 (toList!6813 lm!2473))))))

(assert (= (and start!492368 res!2033647) b!4787017))

(assert (= (and b!4787017 res!2033646) b!4787016))

(assert (= (and b!4787016 res!2033649) b!4787018))

(assert (= (and b!4787018 res!2033644) b!4787021))

(assert (= (and b!4787018 (not res!2033648)) b!4787020))

(assert (= (and b!4787020 (not res!2033645)) b!4787015))

(assert (= (and b!4787015 (not res!2033643)) b!4787022))

(assert (= start!492368 b!4787019))

(declare-fun m!5766226 () Bool)

(assert (=> b!4787022 m!5766226))

(declare-fun m!5766228 () Bool)

(assert (=> b!4787022 m!5766228))

(assert (=> b!4787022 m!5766226))

(declare-fun m!5766230 () Bool)

(assert (=> b!4787022 m!5766230))

(declare-fun m!5766232 () Bool)

(assert (=> b!4787022 m!5766232))

(declare-fun m!5766234 () Bool)

(assert (=> b!4787022 m!5766234))

(declare-fun m!5766236 () Bool)

(assert (=> b!4787022 m!5766236))

(declare-fun m!5766238 () Bool)

(assert (=> b!4787022 m!5766238))

(declare-fun m!5766240 () Bool)

(assert (=> b!4787017 m!5766240))

(declare-fun m!5766242 () Bool)

(assert (=> b!4787018 m!5766242))

(declare-fun m!5766244 () Bool)

(assert (=> b!4787018 m!5766244))

(declare-fun m!5766246 () Bool)

(assert (=> b!4787018 m!5766246))

(declare-fun m!5766248 () Bool)

(assert (=> b!4787018 m!5766248))

(declare-fun m!5766250 () Bool)

(assert (=> b!4787018 m!5766250))

(declare-fun m!5766252 () Bool)

(assert (=> b!4787018 m!5766252))

(declare-fun m!5766254 () Bool)

(assert (=> start!492368 m!5766254))

(declare-fun m!5766256 () Bool)

(assert (=> start!492368 m!5766256))

(declare-fun m!5766258 () Bool)

(assert (=> b!4787015 m!5766258))

(declare-fun m!5766260 () Bool)

(assert (=> b!4787021 m!5766260))

(assert (=> b!4787021 m!5766260))

(declare-fun m!5766262 () Bool)

(assert (=> b!4787021 m!5766262))

(assert (=> b!4787021 m!5766262))

(declare-fun m!5766264 () Bool)

(assert (=> b!4787021 m!5766264))

(declare-fun m!5766266 () Bool)

(assert (=> b!4787016 m!5766266))

(assert (=> b!4787016 m!5766266))

(declare-fun m!5766268 () Bool)

(assert (=> b!4787016 m!5766268))

(push 1)

(assert (not b!4787019))

(assert (not b!4787021))

(assert tp_is_empty!33351)

(assert (not b!4787015))

(assert tp_is_empty!33349)

(assert (not b!4787018))

(assert (not b!4787016))

(assert (not b!4787022))

(assert (not b!4787017))

(assert (not start!492368))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1531357 () Bool)

(declare-fun e!2988883 () Bool)

(assert (=> d!1531357 e!2988883))

(declare-fun res!2033673 () Bool)

(assert (=> d!1531357 (=> res!2033673 e!2988883)))

(declare-fun lt!1947922 () Bool)

(assert (=> d!1531357 (= res!2033673 (not lt!1947922))))

(declare-fun lt!1947920 () Bool)

(assert (=> d!1531357 (= lt!1947922 lt!1947920)))

(declare-fun lt!1947921 () Unit!139570)

(declare-fun e!2988884 () Unit!139570)

(assert (=> d!1531357 (= lt!1947921 e!2988884)))

(declare-fun c!815978 () Bool)

(assert (=> d!1531357 (= c!815978 lt!1947920)))

(declare-fun containsKey!3876 (List!54218 (_ BitVec 64)) Bool)

(assert (=> d!1531357 (= lt!1947920 (containsKey!3876 (toList!6813 lm!2473) lt!1947886))))

(assert (=> d!1531357 (= (contains!17675 lm!2473 lt!1947886) lt!1947922)))

(declare-fun b!4787065 () Bool)

(declare-fun lt!1947923 () Unit!139570)

(assert (=> b!4787065 (= e!2988884 lt!1947923)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2112 (List!54218 (_ BitVec 64)) Unit!139570)

(assert (=> b!4787065 (= lt!1947923 (lemmaContainsKeyImpliesGetValueByKeyDefined!2112 (toList!6813 lm!2473) lt!1947886))))

(declare-datatypes ((Option!13013 0))(
  ( (None!13012) (Some!13012 (v!48275 List!54217)) )
))
(declare-fun isDefined!10155 (Option!13013) Bool)

(declare-fun getValueByKey!2320 (List!54218 (_ BitVec 64)) Option!13013)

(assert (=> b!4787065 (isDefined!10155 (getValueByKey!2320 (toList!6813 lm!2473) lt!1947886))))

(declare-fun b!4787066 () Bool)

(declare-fun Unit!139574 () Unit!139570)

(assert (=> b!4787066 (= e!2988884 Unit!139574)))

(declare-fun b!4787067 () Bool)

(assert (=> b!4787067 (= e!2988883 (isDefined!10155 (getValueByKey!2320 (toList!6813 lm!2473) lt!1947886)))))

(assert (= (and d!1531357 c!815978) b!4787065))

(assert (= (and d!1531357 (not c!815978)) b!4787066))

(assert (= (and d!1531357 (not res!2033673)) b!4787067))

(declare-fun m!5766314 () Bool)

(assert (=> d!1531357 m!5766314))

(declare-fun m!5766316 () Bool)

(assert (=> b!4787065 m!5766316))

(declare-fun m!5766318 () Bool)

(assert (=> b!4787065 m!5766318))

(assert (=> b!4787065 m!5766318))

(declare-fun m!5766320 () Bool)

(assert (=> b!4787065 m!5766320))

(assert (=> b!4787067 m!5766318))

(assert (=> b!4787067 m!5766318))

(assert (=> b!4787067 m!5766320))

(assert (=> b!4787018 d!1531357))

(declare-fun d!1531359 () Bool)

(declare-fun res!2033680 () Bool)

(declare-fun e!2988892 () Bool)

(assert (=> d!1531359 (=> res!2033680 e!2988892)))

(declare-fun e!2988891 () Bool)

(assert (=> d!1531359 (= res!2033680 e!2988891)))

(declare-fun res!2033682 () Bool)

(assert (=> d!1531359 (=> (not res!2033682) (not e!2988891))))

(assert (=> d!1531359 (= res!2033682 (is-Cons!54094 (toList!6813 lm!2473)))))

(assert (=> d!1531359 (= (containsKeyBiggerList!517 (toList!6813 lm!2473) key!5896) e!2988892)))

(declare-fun b!4787074 () Bool)

(assert (=> b!4787074 (= e!2988891 (containsKey!3874 (_2!31613 (h!60518 (toList!6813 lm!2473))) key!5896))))

(declare-fun b!4787075 () Bool)

(declare-fun e!2988893 () Bool)

(assert (=> b!4787075 (= e!2988892 e!2988893)))

(declare-fun res!2033681 () Bool)

(assert (=> b!4787075 (=> (not res!2033681) (not e!2988893))))

(assert (=> b!4787075 (= res!2033681 (is-Cons!54094 (toList!6813 lm!2473)))))

(declare-fun b!4787076 () Bool)

(assert (=> b!4787076 (= e!2988893 (containsKeyBiggerList!517 (t!361668 (toList!6813 lm!2473)) key!5896))))

(assert (= (and d!1531359 res!2033682) b!4787074))

(assert (= (and d!1531359 (not res!2033680)) b!4787075))

(assert (= (and b!4787075 res!2033681) b!4787076))

(assert (=> b!4787074 m!5766258))

(declare-fun m!5766322 () Bool)

(assert (=> b!4787076 m!5766322))

(assert (=> b!4787018 d!1531359))

(declare-fun bs!1153696 () Bool)

(declare-fun d!1531361 () Bool)

(assert (= bs!1153696 (and d!1531361 start!492368)))

(declare-fun lambda!229502 () Int)

(assert (=> bs!1153696 (= lambda!229502 lambda!229486)))

(declare-fun bs!1153697 () Bool)

(assert (= bs!1153697 (and d!1531361 b!4787022)))

(assert (=> bs!1153697 (not (= lambda!229502 lambda!229487))))

(assert (=> d!1531361 (containsKeyBiggerList!517 (toList!6813 lm!2473) key!5896)))

(declare-fun lt!1947926 () Unit!139570)

(declare-fun choose!34421 (ListLongMap!5235 K!15657 Hashable!6867) Unit!139570)

(assert (=> d!1531361 (= lt!1947926 (choose!34421 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531361 (forall!12175 (toList!6813 lm!2473) lambda!229502)))

(assert (=> d!1531361 (= (lemmaInLongMapThenContainsKeyBiggerList!257 lm!2473 key!5896 hashF!1559) lt!1947926)))

(declare-fun bs!1153698 () Bool)

(assert (= bs!1153698 d!1531361))

(assert (=> bs!1153698 m!5766242))

(declare-fun m!5766324 () Bool)

(assert (=> bs!1153698 m!5766324))

(declare-fun m!5766326 () Bool)

(assert (=> bs!1153698 m!5766326))

(assert (=> b!4787018 d!1531361))

(declare-fun bs!1153699 () Bool)

(declare-fun d!1531365 () Bool)

(assert (= bs!1153699 (and d!1531365 start!492368)))

(declare-fun lambda!229505 () Int)

(assert (=> bs!1153699 (= lambda!229505 lambda!229486)))

(declare-fun bs!1153700 () Bool)

(assert (= bs!1153700 (and d!1531365 b!4787022)))

(assert (=> bs!1153700 (not (= lambda!229505 lambda!229487))))

(declare-fun bs!1153701 () Bool)

(assert (= bs!1153701 (and d!1531365 d!1531361)))

(assert (=> bs!1153701 (= lambda!229505 lambda!229502)))

(declare-fun e!2988902 () Bool)

(assert (=> d!1531365 e!2988902))

(declare-fun res!2033691 () Bool)

(assert (=> d!1531365 (=> (not res!2033691) (not e!2988902))))

(assert (=> d!1531365 (= res!2033691 (contains!17675 lm!2473 (hash!4888 hashF!1559 key!5896)))))

(declare-fun lt!1947929 () Unit!139570)

(declare-fun choose!34422 (ListLongMap!5235 K!15657 Hashable!6867) Unit!139570)

(assert (=> d!1531365 (= lt!1947929 (choose!34422 lm!2473 key!5896 hashF!1559))))

(assert (=> d!1531365 (forall!12175 (toList!6813 lm!2473) lambda!229505)))

(assert (=> d!1531365 (= (lemmaInGenericMapThenInLongMap!271 lm!2473 key!5896 hashF!1559) lt!1947929)))

(declare-fun b!4787085 () Bool)

(assert (=> b!4787085 (= e!2988902 (isDefined!10153 (getPair!839 (apply!12922 lm!2473 (hash!4888 hashF!1559 key!5896)) key!5896)))))

(assert (= (and d!1531365 res!2033691) b!4787085))

(assert (=> d!1531365 m!5766244))

(assert (=> d!1531365 m!5766244))

(declare-fun m!5766330 () Bool)

(assert (=> d!1531365 m!5766330))

(declare-fun m!5766332 () Bool)

(assert (=> d!1531365 m!5766332))

(declare-fun m!5766334 () Bool)

(assert (=> d!1531365 m!5766334))

(assert (=> b!4787085 m!5766244))

(assert (=> b!4787085 m!5766244))

(declare-fun m!5766336 () Bool)

(assert (=> b!4787085 m!5766336))

(assert (=> b!4787085 m!5766336))

(declare-fun m!5766338 () Bool)

(assert (=> b!4787085 m!5766338))

(assert (=> b!4787085 m!5766338))

(declare-fun m!5766340 () Bool)

(assert (=> b!4787085 m!5766340))

(assert (=> b!4787018 d!1531365))

(declare-fun d!1531369 () Bool)

(declare-fun c!815981 () Bool)

(declare-fun e!2988914 () Bool)

(assert (=> d!1531369 (= c!815981 e!2988914)))

(declare-fun res!2033700 () Bool)

(assert (=> d!1531369 (=> (not res!2033700) (not e!2988914))))

(assert (=> d!1531369 (= res!2033700 (is-Cons!54094 (toList!6813 lm!2473)))))

(declare-fun e!2988913 () V!15903)

(assert (=> d!1531369 (= (getValue!63 (toList!6813 lm!2473) key!5896) e!2988913)))

(declare-fun b!4787100 () Bool)

(assert (=> b!4787100 (= e!2988914 (containsKey!3874 (_2!31613 (h!60518 (toList!6813 lm!2473))) key!5896))))

(declare-fun b!4787098 () Bool)

(declare-fun get!18421 (Option!13011) tuple2!56636)

(assert (=> b!4787098 (= e!2988913 (_2!31612 (get!18421 (getPair!839 (_2!31613 (h!60518 (toList!6813 lm!2473))) key!5896))))))

(declare-fun b!4787099 () Bool)

(assert (=> b!4787099 (= e!2988913 (getValue!63 (t!361668 (toList!6813 lm!2473)) key!5896))))

(assert (= (and d!1531369 res!2033700) b!4787100))

(assert (= (and d!1531369 c!815981) b!4787098))

(assert (= (and d!1531369 (not c!815981)) b!4787099))

(assert (=> b!4787100 m!5766258))

(declare-fun m!5766344 () Bool)

(assert (=> b!4787098 m!5766344))

(assert (=> b!4787098 m!5766344))

(declare-fun m!5766346 () Bool)

(assert (=> b!4787098 m!5766346))

(declare-fun m!5766348 () Bool)

(assert (=> b!4787099 m!5766348))

(assert (=> b!4787018 d!1531369))

(declare-fun d!1531373 () Bool)

(declare-fun hash!4890 (Hashable!6867 K!15657) (_ BitVec 64))

(assert (=> d!1531373 (= (hash!4888 hashF!1559 key!5896) (hash!4890 hashF!1559 key!5896))))

(declare-fun bs!1153702 () Bool)

(assert (= bs!1153702 d!1531373))

(declare-fun m!5766350 () Bool)

(assert (=> bs!1153702 m!5766350))

(assert (=> b!4787018 d!1531373))

(declare-fun bs!1153703 () Bool)

(declare-fun d!1531375 () Bool)

(assert (= bs!1153703 (and d!1531375 start!492368)))

(declare-fun lambda!229508 () Int)

(assert (=> bs!1153703 (not (= lambda!229508 lambda!229486))))

(declare-fun bs!1153704 () Bool)

(assert (= bs!1153704 (and d!1531375 b!4787022)))

(assert (=> bs!1153704 (= lambda!229508 lambda!229487)))

(declare-fun bs!1153705 () Bool)

(assert (= bs!1153705 (and d!1531375 d!1531361)))

(assert (=> bs!1153705 (not (= lambda!229508 lambda!229502))))

(declare-fun bs!1153706 () Bool)

(assert (= bs!1153706 (and d!1531375 d!1531365)))

(assert (=> bs!1153706 (not (= lambda!229508 lambda!229505))))

(assert (=> d!1531375 true))

(assert (=> d!1531375 (= (allKeysSameHashInMap!2272 lm!2473 hashF!1559) (forall!12175 (toList!6813 lm!2473) lambda!229508))))

(declare-fun bs!1153707 () Bool)

(assert (= bs!1153707 d!1531375))

(declare-fun m!5766352 () Bool)

(assert (=> bs!1153707 m!5766352))

(assert (=> b!4787017 d!1531375))

(declare-fun bs!1153710 () Bool)

(declare-fun d!1531377 () Bool)

(assert (= bs!1153710 (and d!1531377 b!4787022)))

(declare-fun lambda!229511 () Int)

(assert (=> bs!1153710 (not (= lambda!229511 lambda!229487))))

(declare-fun bs!1153711 () Bool)

(assert (= bs!1153711 (and d!1531377 d!1531361)))

(assert (=> bs!1153711 (= lambda!229511 lambda!229502)))

(declare-fun bs!1153712 () Bool)

(assert (= bs!1153712 (and d!1531377 d!1531375)))

(assert (=> bs!1153712 (not (= lambda!229511 lambda!229508))))

(declare-fun bs!1153713 () Bool)

(assert (= bs!1153713 (and d!1531377 start!492368)))

(assert (=> bs!1153713 (= lambda!229511 lambda!229486)))

(declare-fun bs!1153714 () Bool)

(assert (= bs!1153714 (and d!1531377 d!1531365)))

(assert (=> bs!1153714 (= lambda!229511 lambda!229505)))

(assert (=> d!1531377 (not (contains!17674 (extractMap!2394 (toList!6813 lt!1947890)) key!5896))))

(declare-fun lt!1947935 () Unit!139570)

(declare-fun choose!34423 (ListLongMap!5235 K!15657 Hashable!6867) Unit!139570)

(assert (=> d!1531377 (= lt!1947935 (choose!34423 lt!1947890 key!5896 hashF!1559))))

(assert (=> d!1531377 (forall!12175 (toList!6813 lt!1947890) lambda!229511)))

(assert (=> d!1531377 (= (lemmaHashNotInLongMapThenNotInGenerated!1 lt!1947890 key!5896 hashF!1559) lt!1947935)))

(declare-fun bs!1153715 () Bool)

(assert (= bs!1153715 d!1531377))

(assert (=> bs!1153715 m!5766226))

(assert (=> bs!1153715 m!5766226))

(assert (=> bs!1153715 m!5766230))

(declare-fun m!5766366 () Bool)

(assert (=> bs!1153715 m!5766366))

(declare-fun m!5766368 () Bool)

(assert (=> bs!1153715 m!5766368))

(assert (=> b!4787022 d!1531377))

(declare-fun d!1531385 () Bool)

(declare-fun tail!9216 (List!54218) List!54218)

(assert (=> d!1531385 (= (tail!9214 lm!2473) (ListLongMap!5236 (tail!9216 (toList!6813 lm!2473))))))

(declare-fun bs!1153716 () Bool)

(assert (= bs!1153716 d!1531385))

(declare-fun m!5766370 () Bool)

(assert (=> bs!1153716 m!5766370))

(assert (=> b!4787022 d!1531385))

(declare-fun d!1531387 () Bool)

(declare-fun dynLambda!22038 (Int tuple2!56636) Bool)

(assert (=> d!1531387 (dynLambda!22038 lambda!229488 (tuple2!56637 key!5896 value!3111))))

(declare-fun lt!1947938 () Unit!139570)

(declare-fun choose!34424 (List!54217 Int tuple2!56636) Unit!139570)

(assert (=> d!1531387 (= lt!1947938 (choose!34424 (_2!31613 (h!60518 (toList!6813 lm!2473))) lambda!229488 (tuple2!56637 key!5896 value!3111)))))

(declare-fun e!2988920 () Bool)

(assert (=> d!1531387 e!2988920))

(declare-fun res!2033706 () Bool)

(assert (=> d!1531387 (=> (not res!2033706) (not e!2988920))))

(declare-fun forall!12177 (List!54217 Int) Bool)

(assert (=> d!1531387 (= res!2033706 (forall!12177 (_2!31613 (h!60518 (toList!6813 lm!2473))) lambda!229488))))

(assert (=> d!1531387 (= (forallContained!4117 (_2!31613 (h!60518 (toList!6813 lm!2473))) lambda!229488 (tuple2!56637 key!5896 value!3111)) lt!1947938)))

(declare-fun b!4787106 () Bool)

(declare-fun contains!17678 (List!54217 tuple2!56636) Bool)

(assert (=> b!4787106 (= e!2988920 (contains!17678 (_2!31613 (h!60518 (toList!6813 lm!2473))) (tuple2!56637 key!5896 value!3111)))))

(assert (= (and d!1531387 res!2033706) b!4787106))

(declare-fun b_lambda!186295 () Bool)

(assert (=> (not b_lambda!186295) (not d!1531387)))

(declare-fun m!5766372 () Bool)

(assert (=> d!1531387 m!5766372))

(declare-fun m!5766374 () Bool)

(assert (=> d!1531387 m!5766374))

(declare-fun m!5766376 () Bool)

(assert (=> d!1531387 m!5766376))

(declare-fun m!5766378 () Bool)

(assert (=> b!4787106 m!5766378))

(assert (=> b!4787022 d!1531387))

(declare-fun d!1531389 () Bool)

(declare-fun dynLambda!22039 (Int tuple2!56638) Bool)

(assert (=> d!1531389 (dynLambda!22039 lambda!229487 (h!60518 (toList!6813 lm!2473)))))

(declare-fun lt!1947941 () Unit!139570)

(declare-fun choose!34425 (List!54218 Int tuple2!56638) Unit!139570)

(assert (=> d!1531389 (= lt!1947941 (choose!34425 (toList!6813 lm!2473) lambda!229487 (h!60518 (toList!6813 lm!2473))))))

(declare-fun e!2988923 () Bool)

(assert (=> d!1531389 e!2988923))

(declare-fun res!2033709 () Bool)

(assert (=> d!1531389 (=> (not res!2033709) (not e!2988923))))

(assert (=> d!1531389 (= res!2033709 (forall!12175 (toList!6813 lm!2473) lambda!229487))))

(assert (=> d!1531389 (= (forallContained!4118 (toList!6813 lm!2473) lambda!229487 (h!60518 (toList!6813 lm!2473))) lt!1947941)))

(declare-fun b!4787109 () Bool)

(declare-fun contains!17679 (List!54218 tuple2!56638) Bool)

(assert (=> b!4787109 (= e!2988923 (contains!17679 (toList!6813 lm!2473) (h!60518 (toList!6813 lm!2473))))))

(assert (= (and d!1531389 res!2033709) b!4787109))

(declare-fun b_lambda!186297 () Bool)

(assert (=> (not b_lambda!186297) (not d!1531389)))

(declare-fun m!5766380 () Bool)

(assert (=> d!1531389 m!5766380))

(declare-fun m!5766382 () Bool)

(assert (=> d!1531389 m!5766382))

(declare-fun m!5766384 () Bool)

(assert (=> d!1531389 m!5766384))

(declare-fun m!5766386 () Bool)

(assert (=> b!4787109 m!5766386))

(assert (=> b!4787022 d!1531389))

(declare-fun d!1531391 () Bool)

(declare-fun res!2033714 () Bool)

(declare-fun e!2988928 () Bool)

(assert (=> d!1531391 (=> res!2033714 e!2988928)))

(assert (=> d!1531391 (= res!2033714 (is-Nil!54094 (t!361668 (toList!6813 lm!2473))))))

(assert (=> d!1531391 (= (forall!12175 (t!361668 (toList!6813 lm!2473)) lambda!229486) e!2988928)))

(declare-fun b!4787114 () Bool)

(declare-fun e!2988929 () Bool)

(assert (=> b!4787114 (= e!2988928 e!2988929)))

(declare-fun res!2033715 () Bool)

(assert (=> b!4787114 (=> (not res!2033715) (not e!2988929))))

(assert (=> b!4787114 (= res!2033715 (dynLambda!22039 lambda!229486 (h!60518 (t!361668 (toList!6813 lm!2473)))))))

(declare-fun b!4787115 () Bool)

(assert (=> b!4787115 (= e!2988929 (forall!12175 (t!361668 (t!361668 (toList!6813 lm!2473))) lambda!229486))))

(assert (= (and d!1531391 (not res!2033714)) b!4787114))

(assert (= (and b!4787114 res!2033715) b!4787115))

(declare-fun b_lambda!186299 () Bool)

(assert (=> (not b_lambda!186299) (not b!4787114)))

(declare-fun m!5766388 () Bool)

(assert (=> b!4787114 m!5766388))

(declare-fun m!5766390 () Bool)

(assert (=> b!4787115 m!5766390))

(assert (=> b!4787022 d!1531391))

(declare-fun b!4787138 () Bool)

(declare-datatypes ((List!54221 0))(
  ( (Nil!54097) (Cons!54097 (h!60521 K!15657) (t!361671 List!54221)) )
))
(declare-fun e!2988949 () List!54221)

(declare-fun keys!19727 (ListMap!6285) List!54221)

(assert (=> b!4787138 (= e!2988949 (keys!19727 (extractMap!2394 (toList!6813 lt!1947890))))))

(declare-fun b!4787139 () Bool)

(declare-fun e!2988948 () Bool)

(declare-fun contains!17680 (List!54221 K!15657) Bool)

(assert (=> b!4787139 (= e!2988948 (contains!17680 (keys!19727 (extractMap!2394 (toList!6813 lt!1947890))) key!5896))))

(declare-fun bm!334878 () Bool)

(declare-fun call!334883 () Bool)

(assert (=> bm!334878 (= call!334883 (contains!17680 e!2988949 key!5896))))

(declare-fun c!815991 () Bool)

(declare-fun c!815992 () Bool)

(assert (=> bm!334878 (= c!815991 c!815992)))

(declare-fun b!4787140 () Bool)

(assert (=> b!4787140 false))

(declare-fun lt!1947962 () Unit!139570)

(declare-fun lt!1947960 () Unit!139570)

(assert (=> b!4787140 (= lt!1947962 lt!1947960)))

(declare-fun containsKey!3877 (List!54217 K!15657) Bool)

(assert (=> b!4787140 (containsKey!3877 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890))) key!5896)))

(declare-fun lemmaInGetKeysListThenContainsKey!1060 (List!54217 K!15657) Unit!139570)

(assert (=> b!4787140 (= lt!1947960 (lemmaInGetKeysListThenContainsKey!1060 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890))) key!5896))))

(declare-fun e!2988944 () Unit!139570)

(declare-fun Unit!139575 () Unit!139570)

(assert (=> b!4787140 (= e!2988944 Unit!139575)))

(declare-fun b!4787141 () Bool)

(declare-fun getKeysList!1060 (List!54217) List!54221)

(assert (=> b!4787141 (= e!2988949 (getKeysList!1060 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890)))))))

(declare-fun b!4787142 () Bool)

(declare-fun e!2988945 () Bool)

(assert (=> b!4787142 (= e!2988945 e!2988948)))

(declare-fun res!2033723 () Bool)

(assert (=> b!4787142 (=> (not res!2033723) (not e!2988948))))

(declare-datatypes ((Option!13014 0))(
  ( (None!13013) (Some!13013 (v!48276 V!15903)) )
))
(declare-fun isDefined!10156 (Option!13014) Bool)

(declare-fun getValueByKey!2321 (List!54217 K!15657) Option!13014)

(assert (=> b!4787142 (= res!2033723 (isDefined!10156 (getValueByKey!2321 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890))) key!5896)))))

(declare-fun b!4787143 () Bool)

(declare-fun e!2988947 () Unit!139570)

(declare-fun lt!1947961 () Unit!139570)

(assert (=> b!4787143 (= e!2988947 lt!1947961)))

(declare-fun lt!1947966 () Unit!139570)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2113 (List!54217 K!15657) Unit!139570)

(assert (=> b!4787143 (= lt!1947966 (lemmaContainsKeyImpliesGetValueByKeyDefined!2113 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890))) key!5896))))

(assert (=> b!4787143 (isDefined!10156 (getValueByKey!2321 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890))) key!5896))))

(declare-fun lt!1947965 () Unit!139570)

(assert (=> b!4787143 (= lt!1947965 lt!1947966)))

(declare-fun lemmaInListThenGetKeysListContains!1055 (List!54217 K!15657) Unit!139570)

(assert (=> b!4787143 (= lt!1947961 (lemmaInListThenGetKeysListContains!1055 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890))) key!5896))))

(assert (=> b!4787143 call!334883))

(declare-fun b!4787144 () Bool)

(declare-fun Unit!139576 () Unit!139570)

(assert (=> b!4787144 (= e!2988944 Unit!139576)))

(declare-fun d!1531393 () Bool)

(assert (=> d!1531393 e!2988945))

(declare-fun res!2033722 () Bool)

(assert (=> d!1531393 (=> res!2033722 e!2988945)))

(declare-fun e!2988946 () Bool)

(assert (=> d!1531393 (= res!2033722 e!2988946)))

(declare-fun res!2033724 () Bool)

(assert (=> d!1531393 (=> (not res!2033724) (not e!2988946))))

(declare-fun lt!1947963 () Bool)

(assert (=> d!1531393 (= res!2033724 (not lt!1947963))))

(declare-fun lt!1947967 () Bool)

(assert (=> d!1531393 (= lt!1947963 lt!1947967)))

(declare-fun lt!1947964 () Unit!139570)

(assert (=> d!1531393 (= lt!1947964 e!2988947)))

(assert (=> d!1531393 (= c!815992 lt!1947967)))

(assert (=> d!1531393 (= lt!1947967 (containsKey!3877 (toList!6814 (extractMap!2394 (toList!6813 lt!1947890))) key!5896))))

(assert (=> d!1531393 (= (contains!17674 (extractMap!2394 (toList!6813 lt!1947890)) key!5896) lt!1947963)))

(declare-fun b!4787145 () Bool)

(assert (=> b!4787145 (= e!2988947 e!2988944)))

(declare-fun c!815990 () Bool)

(assert (=> b!4787145 (= c!815990 call!334883)))

(declare-fun b!4787146 () Bool)

(assert (=> b!4787146 (= e!2988946 (not (contains!17680 (keys!19727 (extractMap!2394 (toList!6813 lt!1947890))) key!5896)))))

(assert (= (and d!1531393 c!815992) b!4787143))

(assert (= (and d!1531393 (not c!815992)) b!4787145))

(assert (= (and b!4787145 c!815990) b!4787140))

(assert (= (and b!4787145 (not c!815990)) b!4787144))

(assert (= (or b!4787143 b!4787145) bm!334878))

(assert (= (and bm!334878 c!815991) b!4787141))

(assert (= (and bm!334878 (not c!815991)) b!4787138))

(assert (= (and d!1531393 res!2033724) b!4787146))

(assert (= (and d!1531393 (not res!2033722)) b!4787142))

(assert (= (and b!4787142 res!2033723) b!4787139))

(assert (=> b!4787139 m!5766226))

(declare-fun m!5766392 () Bool)

(assert (=> b!4787139 m!5766392))

(assert (=> b!4787139 m!5766392))

(declare-fun m!5766394 () Bool)

(assert (=> b!4787139 m!5766394))

(declare-fun m!5766396 () Bool)

(assert (=> b!4787142 m!5766396))

(assert (=> b!4787142 m!5766396))

(declare-fun m!5766398 () Bool)

(assert (=> b!4787142 m!5766398))

(declare-fun m!5766400 () Bool)

(assert (=> b!4787143 m!5766400))

(assert (=> b!4787143 m!5766396))

(assert (=> b!4787143 m!5766396))

(assert (=> b!4787143 m!5766398))

(declare-fun m!5766402 () Bool)

(assert (=> b!4787143 m!5766402))

(declare-fun m!5766404 () Bool)

(assert (=> bm!334878 m!5766404))

(declare-fun m!5766406 () Bool)

(assert (=> d!1531393 m!5766406))

(assert (=> b!4787146 m!5766226))

(assert (=> b!4787146 m!5766392))

(assert (=> b!4787146 m!5766392))

(assert (=> b!4787146 m!5766394))

(declare-fun m!5766408 () Bool)

(assert (=> b!4787141 m!5766408))

(assert (=> b!4787138 m!5766226))

(assert (=> b!4787138 m!5766392))

(assert (=> b!4787140 m!5766406))

(declare-fun m!5766410 () Bool)

(assert (=> b!4787140 m!5766410))

(assert (=> b!4787022 d!1531393))

(declare-fun bs!1153719 () Bool)

(declare-fun d!1531395 () Bool)

(assert (= bs!1153719 (and d!1531395 b!4787022)))

(declare-fun lambda!229517 () Int)

(assert (=> bs!1153719 (not (= lambda!229517 lambda!229487))))

(declare-fun bs!1153720 () Bool)

(assert (= bs!1153720 (and d!1531395 d!1531361)))

(assert (=> bs!1153720 (= lambda!229517 lambda!229502)))

(declare-fun bs!1153721 () Bool)

(assert (= bs!1153721 (and d!1531395 d!1531375)))

(assert (=> bs!1153721 (not (= lambda!229517 lambda!229508))))

(declare-fun bs!1153722 () Bool)

(assert (= bs!1153722 (and d!1531395 start!492368)))

(assert (=> bs!1153722 (= lambda!229517 lambda!229486)))

(declare-fun bs!1153723 () Bool)

(assert (= bs!1153723 (and d!1531395 d!1531365)))

(assert (=> bs!1153723 (= lambda!229517 lambda!229505)))

(declare-fun bs!1153724 () Bool)

(assert (= bs!1153724 (and d!1531395 d!1531377)))

(assert (=> bs!1153724 (= lambda!229517 lambda!229511)))

(declare-fun lt!1947971 () ListMap!6285)

(declare-fun invariantList!1714 (List!54217) Bool)

(assert (=> d!1531395 (invariantList!1714 (toList!6814 lt!1947971))))

(declare-fun e!2988953 () ListMap!6285)

(assert (=> d!1531395 (= lt!1947971 e!2988953)))

(declare-fun c!815996 () Bool)

(assert (=> d!1531395 (= c!815996 (is-Cons!54094 (toList!6813 lt!1947890)))))

(assert (=> d!1531395 (forall!12175 (toList!6813 lt!1947890) lambda!229517)))

(assert (=> d!1531395 (= (extractMap!2394 (toList!6813 lt!1947890)) lt!1947971)))

(declare-fun b!4787153 () Bool)

(declare-fun addToMapMapFromBucket!1679 (List!54217 ListMap!6285) ListMap!6285)

(assert (=> b!4787153 (= e!2988953 (addToMapMapFromBucket!1679 (_2!31613 (h!60518 (toList!6813 lt!1947890))) (extractMap!2394 (t!361668 (toList!6813 lt!1947890)))))))

(declare-fun b!4787154 () Bool)

(assert (=> b!4787154 (= e!2988953 (ListMap!6286 Nil!54093))))

(assert (= (and d!1531395 c!815996) b!4787153))

(assert (= (and d!1531395 (not c!815996)) b!4787154))

(declare-fun m!5766420 () Bool)

(assert (=> d!1531395 m!5766420))

(declare-fun m!5766422 () Bool)

(assert (=> d!1531395 m!5766422))

(declare-fun m!5766424 () Bool)

(assert (=> b!4787153 m!5766424))

(assert (=> b!4787153 m!5766424))

(declare-fun m!5766426 () Bool)

(assert (=> b!4787153 m!5766426))

(assert (=> b!4787022 d!1531395))

(declare-fun d!1531399 () Bool)

(declare-fun res!2033725 () Bool)

(declare-fun e!2988954 () Bool)

(assert (=> d!1531399 (=> res!2033725 e!2988954)))

(assert (=> d!1531399 (= res!2033725 (is-Nil!54094 (toList!6813 lm!2473)))))

(assert (=> d!1531399 (= (forall!12175 (toList!6813 lm!2473) lambda!229486) e!2988954)))

(declare-fun b!4787155 () Bool)

(declare-fun e!2988955 () Bool)

(assert (=> b!4787155 (= e!2988954 e!2988955)))

(declare-fun res!2033726 () Bool)

(assert (=> b!4787155 (=> (not res!2033726) (not e!2988955))))

(assert (=> b!4787155 (= res!2033726 (dynLambda!22039 lambda!229486 (h!60518 (toList!6813 lm!2473))))))

(declare-fun b!4787156 () Bool)

(assert (=> b!4787156 (= e!2988955 (forall!12175 (t!361668 (toList!6813 lm!2473)) lambda!229486))))

(assert (= (and d!1531399 (not res!2033725)) b!4787155))

(assert (= (and b!4787155 res!2033726) b!4787156))

(declare-fun b_lambda!186301 () Bool)

(assert (=> (not b_lambda!186301) (not b!4787155)))

(declare-fun m!5766428 () Bool)

(assert (=> b!4787155 m!5766428))

(assert (=> b!4787156 m!5766232))

(assert (=> start!492368 d!1531399))

(declare-fun d!1531401 () Bool)

(declare-fun isStrictlySorted!862 (List!54218) Bool)

(assert (=> d!1531401 (= (inv!69684 lm!2473) (isStrictlySorted!862 (toList!6813 lm!2473)))))

(declare-fun bs!1153725 () Bool)

(assert (= bs!1153725 d!1531401))

(declare-fun m!5766430 () Bool)

(assert (=> bs!1153725 m!5766430))

(assert (=> start!492368 d!1531401))

(declare-fun b!4787157 () Bool)

(declare-fun e!2988961 () List!54221)

(assert (=> b!4787157 (= e!2988961 (keys!19727 (extractMap!2394 (toList!6813 lm!2473))))))

(declare-fun b!4787158 () Bool)

(declare-fun e!2988960 () Bool)

(assert (=> b!4787158 (= e!2988960 (contains!17680 (keys!19727 (extractMap!2394 (toList!6813 lm!2473))) key!5896))))

(declare-fun bm!334879 () Bool)

(declare-fun call!334884 () Bool)

(assert (=> bm!334879 (= call!334884 (contains!17680 e!2988961 key!5896))))

(declare-fun c!815998 () Bool)

(declare-fun c!815999 () Bool)

(assert (=> bm!334879 (= c!815998 c!815999)))

(declare-fun b!4787159 () Bool)

(assert (=> b!4787159 false))

(declare-fun lt!1947974 () Unit!139570)

(declare-fun lt!1947972 () Unit!139570)

(assert (=> b!4787159 (= lt!1947974 lt!1947972)))

(assert (=> b!4787159 (containsKey!3877 (toList!6814 (extractMap!2394 (toList!6813 lm!2473))) key!5896)))

(assert (=> b!4787159 (= lt!1947972 (lemmaInGetKeysListThenContainsKey!1060 (toList!6814 (extractMap!2394 (toList!6813 lm!2473))) key!5896))))

(declare-fun e!2988956 () Unit!139570)

(declare-fun Unit!139577 () Unit!139570)

(assert (=> b!4787159 (= e!2988956 Unit!139577)))

(declare-fun b!4787160 () Bool)

(assert (=> b!4787160 (= e!2988961 (getKeysList!1060 (toList!6814 (extractMap!2394 (toList!6813 lm!2473)))))))

(declare-fun b!4787161 () Bool)

(declare-fun e!2988957 () Bool)

(assert (=> b!4787161 (= e!2988957 e!2988960)))

(declare-fun res!2033728 () Bool)

(assert (=> b!4787161 (=> (not res!2033728) (not e!2988960))))

(assert (=> b!4787161 (= res!2033728 (isDefined!10156 (getValueByKey!2321 (toList!6814 (extractMap!2394 (toList!6813 lm!2473))) key!5896)))))

(declare-fun b!4787162 () Bool)

(declare-fun e!2988959 () Unit!139570)

(declare-fun lt!1947973 () Unit!139570)

(assert (=> b!4787162 (= e!2988959 lt!1947973)))

(declare-fun lt!1947978 () Unit!139570)

(assert (=> b!4787162 (= lt!1947978 (lemmaContainsKeyImpliesGetValueByKeyDefined!2113 (toList!6814 (extractMap!2394 (toList!6813 lm!2473))) key!5896))))

(assert (=> b!4787162 (isDefined!10156 (getValueByKey!2321 (toList!6814 (extractMap!2394 (toList!6813 lm!2473))) key!5896))))

(declare-fun lt!1947977 () Unit!139570)

(assert (=> b!4787162 (= lt!1947977 lt!1947978)))

(assert (=> b!4787162 (= lt!1947973 (lemmaInListThenGetKeysListContains!1055 (toList!6814 (extractMap!2394 (toList!6813 lm!2473))) key!5896))))

(assert (=> b!4787162 call!334884))

(declare-fun b!4787163 () Bool)

(declare-fun Unit!139578 () Unit!139570)

(assert (=> b!4787163 (= e!2988956 Unit!139578)))

(declare-fun d!1531403 () Bool)

(assert (=> d!1531403 e!2988957))

(declare-fun res!2033727 () Bool)

(assert (=> d!1531403 (=> res!2033727 e!2988957)))

(declare-fun e!2988958 () Bool)

(assert (=> d!1531403 (= res!2033727 e!2988958)))

(declare-fun res!2033729 () Bool)

(assert (=> d!1531403 (=> (not res!2033729) (not e!2988958))))

(declare-fun lt!1947975 () Bool)

(assert (=> d!1531403 (= res!2033729 (not lt!1947975))))

(declare-fun lt!1947979 () Bool)

(assert (=> d!1531403 (= lt!1947975 lt!1947979)))

(declare-fun lt!1947976 () Unit!139570)

(assert (=> d!1531403 (= lt!1947976 e!2988959)))

(assert (=> d!1531403 (= c!815999 lt!1947979)))

(assert (=> d!1531403 (= lt!1947979 (containsKey!3877 (toList!6814 (extractMap!2394 (toList!6813 lm!2473))) key!5896))))

(assert (=> d!1531403 (= (contains!17674 (extractMap!2394 (toList!6813 lm!2473)) key!5896) lt!1947975)))

(declare-fun b!4787164 () Bool)

(assert (=> b!4787164 (= e!2988959 e!2988956)))

(declare-fun c!815997 () Bool)

(assert (=> b!4787164 (= c!815997 call!334884)))

(declare-fun b!4787165 () Bool)

(assert (=> b!4787165 (= e!2988958 (not (contains!17680 (keys!19727 (extractMap!2394 (toList!6813 lm!2473))) key!5896)))))

(assert (= (and d!1531403 c!815999) b!4787162))

(assert (= (and d!1531403 (not c!815999)) b!4787164))

(assert (= (and b!4787164 c!815997) b!4787159))

(assert (= (and b!4787164 (not c!815997)) b!4787163))

(assert (= (or b!4787162 b!4787164) bm!334879))

(assert (= (and bm!334879 c!815998) b!4787160))

(assert (= (and bm!334879 (not c!815998)) b!4787157))

(assert (= (and d!1531403 res!2033729) b!4787165))

(assert (= (and d!1531403 (not res!2033727)) b!4787161))

(assert (= (and b!4787161 res!2033728) b!4787158))

(assert (=> b!4787158 m!5766266))

(declare-fun m!5766432 () Bool)

(assert (=> b!4787158 m!5766432))

(assert (=> b!4787158 m!5766432))

(declare-fun m!5766434 () Bool)

(assert (=> b!4787158 m!5766434))

(declare-fun m!5766436 () Bool)

(assert (=> b!4787161 m!5766436))

(assert (=> b!4787161 m!5766436))

(declare-fun m!5766438 () Bool)

(assert (=> b!4787161 m!5766438))

(declare-fun m!5766440 () Bool)

(assert (=> b!4787162 m!5766440))

(assert (=> b!4787162 m!5766436))

(assert (=> b!4787162 m!5766436))

(assert (=> b!4787162 m!5766438))

(declare-fun m!5766442 () Bool)

(assert (=> b!4787162 m!5766442))

(declare-fun m!5766444 () Bool)

(assert (=> bm!334879 m!5766444))

(declare-fun m!5766446 () Bool)

(assert (=> d!1531403 m!5766446))

(assert (=> b!4787165 m!5766266))

(assert (=> b!4787165 m!5766432))

(assert (=> b!4787165 m!5766432))

(assert (=> b!4787165 m!5766434))

(declare-fun m!5766448 () Bool)

(assert (=> b!4787160 m!5766448))

(assert (=> b!4787157 m!5766266))

(assert (=> b!4787157 m!5766432))

(assert (=> b!4787159 m!5766446))

(declare-fun m!5766450 () Bool)

(assert (=> b!4787159 m!5766450))

(assert (=> b!4787016 d!1531403))

(declare-fun bs!1153726 () Bool)

(declare-fun d!1531405 () Bool)

(assert (= bs!1153726 (and d!1531405 b!4787022)))

(declare-fun lambda!229518 () Int)

(assert (=> bs!1153726 (not (= lambda!229518 lambda!229487))))

(declare-fun bs!1153727 () Bool)

(assert (= bs!1153727 (and d!1531405 d!1531395)))

(assert (=> bs!1153727 (= lambda!229518 lambda!229517)))

(declare-fun bs!1153728 () Bool)

(assert (= bs!1153728 (and d!1531405 d!1531361)))

(assert (=> bs!1153728 (= lambda!229518 lambda!229502)))

(declare-fun bs!1153729 () Bool)

(assert (= bs!1153729 (and d!1531405 d!1531375)))

(assert (=> bs!1153729 (not (= lambda!229518 lambda!229508))))

(declare-fun bs!1153730 () Bool)

(assert (= bs!1153730 (and d!1531405 start!492368)))

(assert (=> bs!1153730 (= lambda!229518 lambda!229486)))

(declare-fun bs!1153731 () Bool)

(assert (= bs!1153731 (and d!1531405 d!1531365)))

(assert (=> bs!1153731 (= lambda!229518 lambda!229505)))

(declare-fun bs!1153732 () Bool)

(assert (= bs!1153732 (and d!1531405 d!1531377)))

(assert (=> bs!1153732 (= lambda!229518 lambda!229511)))

(declare-fun lt!1947980 () ListMap!6285)

(assert (=> d!1531405 (invariantList!1714 (toList!6814 lt!1947980))))

(declare-fun e!2988962 () ListMap!6285)

(assert (=> d!1531405 (= lt!1947980 e!2988962)))

(declare-fun c!816000 () Bool)

(assert (=> d!1531405 (= c!816000 (is-Cons!54094 (toList!6813 lm!2473)))))

(assert (=> d!1531405 (forall!12175 (toList!6813 lm!2473) lambda!229518)))

(assert (=> d!1531405 (= (extractMap!2394 (toList!6813 lm!2473)) lt!1947980)))

(declare-fun b!4787166 () Bool)

(assert (=> b!4787166 (= e!2988962 (addToMapMapFromBucket!1679 (_2!31613 (h!60518 (toList!6813 lm!2473))) (extractMap!2394 (t!361668 (toList!6813 lm!2473)))))))

(declare-fun b!4787167 () Bool)

(assert (=> b!4787167 (= e!2988962 (ListMap!6286 Nil!54093))))

(assert (= (and d!1531405 c!816000) b!4787166))

(assert (= (and d!1531405 (not c!816000)) b!4787167))

(declare-fun m!5766452 () Bool)

(assert (=> d!1531405 m!5766452))

(declare-fun m!5766454 () Bool)

(assert (=> d!1531405 m!5766454))

(declare-fun m!5766456 () Bool)

(assert (=> b!4787166 m!5766456))

(assert (=> b!4787166 m!5766456))

(declare-fun m!5766458 () Bool)

(assert (=> b!4787166 m!5766458))

(assert (=> b!4787016 d!1531405))

(declare-fun d!1531407 () Bool)

(declare-fun isEmpty!29397 (Option!13011) Bool)

(assert (=> d!1531407 (= (isDefined!10153 (getPair!839 (apply!12922 lm!2473 lt!1947886) key!5896)) (not (isEmpty!29397 (getPair!839 (apply!12922 lm!2473 lt!1947886) key!5896))))))

(declare-fun bs!1153733 () Bool)

(assert (= bs!1153733 d!1531407))

(assert (=> bs!1153733 m!5766262))

(declare-fun m!5766460 () Bool)

(assert (=> bs!1153733 m!5766460))

(assert (=> b!4787021 d!1531407))

(declare-fun d!1531409 () Bool)

(declare-fun e!2988976 () Bool)

(assert (=> d!1531409 e!2988976))

(declare-fun res!2033738 () Bool)

(assert (=> d!1531409 (=> res!2033738 e!2988976)))

(declare-fun e!2988975 () Bool)

(assert (=> d!1531409 (= res!2033738 e!2988975)))

(declare-fun res!2033739 () Bool)

(assert (=> d!1531409 (=> (not res!2033739) (not e!2988975))))

(declare-fun lt!1947983 () Option!13011)

(assert (=> d!1531409 (= res!2033739 (isEmpty!29397 lt!1947983))))

(declare-fun e!2988973 () Option!13011)

(assert (=> d!1531409 (= lt!1947983 e!2988973)))

(declare-fun c!816005 () Bool)

(assert (=> d!1531409 (= c!816005 (and (is-Cons!54093 (apply!12922 lm!2473 lt!1947886)) (= (_1!31612 (h!60517 (apply!12922 lm!2473 lt!1947886))) key!5896)))))

(declare-fun noDuplicateKeys!2311 (List!54217) Bool)

(assert (=> d!1531409 (noDuplicateKeys!2311 (apply!12922 lm!2473 lt!1947886))))

(assert (=> d!1531409 (= (getPair!839 (apply!12922 lm!2473 lt!1947886) key!5896) lt!1947983)))

(declare-fun b!4787184 () Bool)

(declare-fun e!2988974 () Option!13011)

(assert (=> b!4787184 (= e!2988974 None!13010)))

(declare-fun b!4787185 () Bool)

(assert (=> b!4787185 (= e!2988973 (Some!13010 (h!60517 (apply!12922 lm!2473 lt!1947886))))))

(declare-fun b!4787186 () Bool)

(declare-fun e!2988977 () Bool)

(assert (=> b!4787186 (= e!2988976 e!2988977)))

(declare-fun res!2033741 () Bool)

(assert (=> b!4787186 (=> (not res!2033741) (not e!2988977))))

(assert (=> b!4787186 (= res!2033741 (isDefined!10153 lt!1947983))))

(declare-fun b!4787187 () Bool)

(assert (=> b!4787187 (= e!2988974 (getPair!839 (t!361667 (apply!12922 lm!2473 lt!1947886)) key!5896))))

(declare-fun b!4787188 () Bool)

(declare-fun res!2033740 () Bool)

(assert (=> b!4787188 (=> (not res!2033740) (not e!2988977))))

(assert (=> b!4787188 (= res!2033740 (= (_1!31612 (get!18421 lt!1947983)) key!5896))))

(declare-fun b!4787189 () Bool)

(assert (=> b!4787189 (= e!2988975 (not (containsKey!3874 (apply!12922 lm!2473 lt!1947886) key!5896)))))

(declare-fun b!4787190 () Bool)

(assert (=> b!4787190 (= e!2988977 (contains!17678 (apply!12922 lm!2473 lt!1947886) (get!18421 lt!1947983)))))

(declare-fun b!4787191 () Bool)

(assert (=> b!4787191 (= e!2988973 e!2988974)))

(declare-fun c!816006 () Bool)

(assert (=> b!4787191 (= c!816006 (is-Cons!54093 (apply!12922 lm!2473 lt!1947886)))))

(assert (= (and d!1531409 c!816005) b!4787185))

(assert (= (and d!1531409 (not c!816005)) b!4787191))

(assert (= (and b!4787191 c!816006) b!4787187))

(assert (= (and b!4787191 (not c!816006)) b!4787184))

(assert (= (and d!1531409 res!2033739) b!4787189))

(assert (= (and d!1531409 (not res!2033738)) b!4787186))

(assert (= (and b!4787186 res!2033741) b!4787188))

(assert (= (and b!4787188 res!2033740) b!4787190))

(assert (=> b!4787189 m!5766260))

(declare-fun m!5766462 () Bool)

(assert (=> b!4787189 m!5766462))

(declare-fun m!5766464 () Bool)

(assert (=> b!4787188 m!5766464))

(declare-fun m!5766466 () Bool)

(assert (=> d!1531409 m!5766466))

(assert (=> d!1531409 m!5766260))

(declare-fun m!5766468 () Bool)

(assert (=> d!1531409 m!5766468))

(declare-fun m!5766470 () Bool)

(assert (=> b!4787187 m!5766470))

(declare-fun m!5766472 () Bool)

(assert (=> b!4787186 m!5766472))

(assert (=> b!4787190 m!5766464))

(assert (=> b!4787190 m!5766260))

(assert (=> b!4787190 m!5766464))

(declare-fun m!5766474 () Bool)

(assert (=> b!4787190 m!5766474))

(assert (=> b!4787021 d!1531409))

(declare-fun d!1531411 () Bool)

(declare-fun get!18422 (Option!13013) List!54217)

(assert (=> d!1531411 (= (apply!12922 lm!2473 lt!1947886) (get!18422 (getValueByKey!2320 (toList!6813 lm!2473) lt!1947886)))))

(declare-fun bs!1153734 () Bool)

(assert (= bs!1153734 d!1531411))

(assert (=> bs!1153734 m!5766318))

(assert (=> bs!1153734 m!5766318))

(declare-fun m!5766476 () Bool)

(assert (=> bs!1153734 m!5766476))

(assert (=> b!4787021 d!1531411))

(declare-fun d!1531413 () Bool)

(declare-fun res!2033746 () Bool)

(declare-fun e!2988982 () Bool)

(assert (=> d!1531413 (=> res!2033746 e!2988982)))

(assert (=> d!1531413 (= res!2033746 (and (is-Cons!54093 (_2!31613 (h!60518 (toList!6813 lm!2473)))) (= (_1!31612 (h!60517 (_2!31613 (h!60518 (toList!6813 lm!2473))))) key!5896)))))

(assert (=> d!1531413 (= (containsKey!3874 (_2!31613 (h!60518 (toList!6813 lm!2473))) key!5896) e!2988982)))

(declare-fun b!4787196 () Bool)

(declare-fun e!2988983 () Bool)

(assert (=> b!4787196 (= e!2988982 e!2988983)))

(declare-fun res!2033747 () Bool)

(assert (=> b!4787196 (=> (not res!2033747) (not e!2988983))))

(assert (=> b!4787196 (= res!2033747 (is-Cons!54093 (_2!31613 (h!60518 (toList!6813 lm!2473)))))))

(declare-fun b!4787197 () Bool)

(assert (=> b!4787197 (= e!2988983 (containsKey!3874 (t!361667 (_2!31613 (h!60518 (toList!6813 lm!2473)))) key!5896))))

(assert (= (and d!1531413 (not res!2033746)) b!4787196))

(assert (= (and b!4787196 res!2033747) b!4787197))

(declare-fun m!5766478 () Bool)

(assert (=> b!4787197 m!5766478))

(assert (=> b!4787015 d!1531413))

(declare-fun b!4787202 () Bool)

(declare-fun e!2988986 () Bool)

(declare-fun tp!1357727 () Bool)

(declare-fun tp!1357728 () Bool)

(assert (=> b!4787202 (= e!2988986 (and tp!1357727 tp!1357728))))

(assert (=> b!4787019 (= tp!1357719 e!2988986)))

(assert (= (and b!4787019 (is-Cons!54094 (toList!6813 lm!2473))) b!4787202))

(declare-fun b_lambda!186303 () Bool)

(assert (= b_lambda!186297 (or b!4787022 b_lambda!186303)))

(declare-fun bs!1153735 () Bool)

(declare-fun d!1531415 () Bool)

(assert (= bs!1153735 (and d!1531415 b!4787022)))

(declare-fun allKeysSameHash!1949 (List!54217 (_ BitVec 64) Hashable!6867) Bool)

(assert (=> bs!1153735 (= (dynLambda!22039 lambda!229487 (h!60518 (toList!6813 lm!2473))) (allKeysSameHash!1949 (_2!31613 (h!60518 (toList!6813 lm!2473))) (_1!31613 (h!60518 (toList!6813 lm!2473))) hashF!1559))))

(declare-fun m!5766480 () Bool)

(assert (=> bs!1153735 m!5766480))

(assert (=> d!1531389 d!1531415))

(declare-fun b_lambda!186305 () Bool)

(assert (= b_lambda!186301 (or start!492368 b_lambda!186305)))

(declare-fun bs!1153736 () Bool)

(declare-fun d!1531417 () Bool)

(assert (= bs!1153736 (and d!1531417 start!492368)))

(assert (=> bs!1153736 (= (dynLambda!22039 lambda!229486 (h!60518 (toList!6813 lm!2473))) (noDuplicateKeys!2311 (_2!31613 (h!60518 (toList!6813 lm!2473)))))))

(declare-fun m!5766482 () Bool)

(assert (=> bs!1153736 m!5766482))

(assert (=> b!4787155 d!1531417))

(declare-fun b_lambda!186307 () Bool)

(assert (= b_lambda!186299 (or start!492368 b_lambda!186307)))

(declare-fun bs!1153737 () Bool)

(declare-fun d!1531419 () Bool)

(assert (= bs!1153737 (and d!1531419 start!492368)))

(assert (=> bs!1153737 (= (dynLambda!22039 lambda!229486 (h!60518 (t!361668 (toList!6813 lm!2473)))) (noDuplicateKeys!2311 (_2!31613 (h!60518 (t!361668 (toList!6813 lm!2473))))))))

(declare-fun m!5766484 () Bool)

(assert (=> bs!1153737 m!5766484))

(assert (=> b!4787114 d!1531419))

(declare-fun b_lambda!186309 () Bool)

(assert (= b_lambda!186295 (or b!4787022 b_lambda!186309)))

(declare-fun bs!1153738 () Bool)

(declare-fun d!1531421 () Bool)

(assert (= bs!1153738 (and d!1531421 b!4787022)))

(assert (=> bs!1153738 (= (dynLambda!22038 lambda!229488 (tuple2!56637 key!5896 value!3111)) (= (hash!4888 hashF!1559 (_1!31612 (tuple2!56637 key!5896 value!3111))) (_1!31613 (h!60518 (toList!6813 lm!2473)))))))

(declare-fun m!5766486 () Bool)

(assert (=> bs!1153738 m!5766486))

(assert (=> d!1531387 d!1531421))

(push 1)

(assert (not d!1531387))

(assert (not d!1531375))

(assert (not b!4787161))

(assert (not b!4787202))

(assert (not b_lambda!186309))

(assert (not b!4787140))

(assert (not d!1531409))

(assert (not b!4787157))

(assert (not d!1531393))

(assert (not b!4787099))

(assert (not b_lambda!186303))

(assert (not b!4787065))

(assert (not b!4787067))

(assert (not d!1531357))

(assert (not b!4787162))

(assert (not b!4787165))

(assert (not b!4787189))

(assert (not d!1531411))

(assert (not b!4787159))

(assert (not bs!1153738))

(assert (not bm!334879))

(assert (not b!4787190))

(assert (not b!4787074))

(assert (not b!4787153))

(assert (not b!4787187))

(assert (not bm!334878))

(assert (not bs!1153735))

(assert (not d!1531389))

(assert (not d!1531403))

(assert (not b!4787166))

(assert tp_is_empty!33351)

(assert (not d!1531377))

(assert (not b!4787158))

(assert (not bs!1153737))

(assert (not b!4787146))

(assert (not b_lambda!186305))

(assert (not b!4787188))

(assert (not b!4787186))

(assert tp_is_empty!33349)

(assert (not bs!1153736))

(assert (not b!4787139))

(assert (not d!1531373))

(assert (not b!4787100))

(assert (not b!4787156))

(assert (not b!4787138))

(assert (not b!4787142))

(assert (not d!1531385))

(assert (not d!1531365))

(assert (not d!1531401))

(assert (not d!1531405))

(assert (not b!4787085))

(assert (not b!4787160))

(assert (not b_lambda!186307))

(assert (not b!4787106))

(assert (not b!4787197))

(assert (not d!1531361))

(assert (not b!4787098))

(assert (not b!4787143))

(assert (not d!1531407))

(assert (not b!4787141))

(assert (not b!4787076))

(assert (not b!4787115))

(assert (not d!1531395))

(assert (not b!4787109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

