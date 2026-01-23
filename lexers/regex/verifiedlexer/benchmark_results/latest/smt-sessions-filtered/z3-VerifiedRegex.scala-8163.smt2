; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419992 () Bool)

(assert start!419992)

(declare-fun b!4348722 () Bool)

(declare-fun res!1786263 () Bool)

(declare-fun e!2706155 () Bool)

(assert (=> b!4348722 (=> (not res!1786263) (not e!2706155))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4853 0))(
  ( (HashableExt!4852 (__x!30556 Int)) )
))
(declare-fun hashF!1247 () Hashable!4853)

(declare-datatypes ((K!10220 0))(
  ( (K!10221 (val!16447 Int)) )
))
(declare-fun key!3918 () K!10220)

(declare-fun hash!1458 (Hashable!4853 K!10220) (_ BitVec 64))

(assert (=> b!4348722 (= res!1786263 (= (hash!1458 hashF!1247 key!3918) hash!377))))

(declare-fun b!4348723 () Bool)

(declare-fun e!2706156 () Bool)

(declare-fun tp!1329743 () Bool)

(assert (=> b!4348723 (= e!2706156 tp!1329743)))

(declare-fun b!4348724 () Bool)

(declare-fun e!2706158 () Bool)

(declare-fun e!2706153 () Bool)

(assert (=> b!4348724 (= e!2706158 e!2706153)))

(declare-fun res!1786256 () Bool)

(assert (=> b!4348724 (=> res!1786256 e!2706153)))

(declare-datatypes ((V!10466 0))(
  ( (V!10467 (val!16448 Int)) )
))
(declare-datatypes ((tuple2!48214 0))(
  ( (tuple2!48215 (_1!27401 K!10220) (_2!27401 V!10466)) )
))
(declare-datatypes ((List!48979 0))(
  ( (Nil!48855) (Cons!48855 (h!54386 tuple2!48214) (t!355899 List!48979)) )
))
(declare-datatypes ((tuple2!48216 0))(
  ( (tuple2!48217 (_1!27402 (_ BitVec 64)) (_2!27402 List!48979)) )
))
(declare-datatypes ((List!48980 0))(
  ( (Nil!48856) (Cons!48856 (h!54387 tuple2!48216) (t!355900 List!48980)) )
))
(declare-datatypes ((ListLongMap!1555 0))(
  ( (ListLongMap!1556 (toList!2905 List!48980)) )
))
(declare-fun lm!1707 () ListLongMap!1555)

(get-info :version)

(assert (=> b!4348724 (= res!1786256 (or (and ((_ is Cons!48856) (toList!2905 lm!1707)) (= (_1!27402 (h!54387 (toList!2905 lm!1707))) hash!377)) (not ((_ is Cons!48856) (toList!2905 lm!1707))) (= (_1!27402 (h!54387 (toList!2905 lm!1707))) hash!377)))))

(declare-fun e!2706154 () Bool)

(assert (=> b!4348724 e!2706154))

(declare-fun res!1786258 () Bool)

(assert (=> b!4348724 (=> (not res!1786258) (not e!2706154))))

(declare-fun lt!1563094 () ListLongMap!1555)

(declare-fun lambda!138921 () Int)

(declare-fun forall!9063 (List!48980 Int) Bool)

(assert (=> b!4348724 (= res!1786258 (forall!9063 (toList!2905 lt!1563094) lambda!138921))))

(declare-fun newBucket!200 () List!48979)

(declare-fun +!584 (ListLongMap!1555 tuple2!48216) ListLongMap!1555)

(assert (=> b!4348724 (= lt!1563094 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200)))))

(declare-datatypes ((Unit!70847 0))(
  ( (Unit!70848) )
))
(declare-fun lt!1563088 () Unit!70847)

(declare-fun addValidProp!115 (ListLongMap!1555 Int (_ BitVec 64) List!48979) Unit!70847)

(assert (=> b!4348724 (= lt!1563088 (addValidProp!115 lm!1707 lambda!138921 hash!377 newBucket!200))))

(assert (=> b!4348724 (forall!9063 (toList!2905 lm!1707) lambda!138921)))

(declare-fun b!4348725 () Bool)

(declare-fun res!1786262 () Bool)

(assert (=> b!4348725 (=> (not res!1786262) (not e!2706155))))

(declare-fun allKeysSameHashInMap!565 (ListLongMap!1555 Hashable!4853) Bool)

(assert (=> b!4348725 (= res!1786262 (allKeysSameHashInMap!565 lm!1707 hashF!1247))))

(declare-fun b!4348726 () Bool)

(declare-fun res!1786261 () Bool)

(assert (=> b!4348726 (=> (not res!1786261) (not e!2706155))))

(declare-fun contains!11016 (ListLongMap!1555 (_ BitVec 64)) Bool)

(assert (=> b!4348726 (= res!1786261 (contains!11016 lm!1707 hash!377))))

(declare-fun b!4348727 () Bool)

(declare-fun res!1786264 () Bool)

(assert (=> b!4348727 (=> res!1786264 e!2706158)))

(declare-fun noDuplicateKeys!461 (List!48979) Bool)

(assert (=> b!4348727 (= res!1786264 (not (noDuplicateKeys!461 newBucket!200)))))

(declare-fun b!4348729 () Bool)

(declare-fun tail!6949 (ListLongMap!1555) ListLongMap!1555)

(assert (=> b!4348729 (= e!2706153 (forall!9063 (toList!2905 (tail!6949 lm!1707)) lambda!138921))))

(declare-datatypes ((ListMap!2149 0))(
  ( (ListMap!2150 (toList!2906 List!48979)) )
))
(declare-fun lt!1563089 () ListMap!2149)

(declare-fun contains!11017 (ListMap!2149 K!10220) Bool)

(assert (=> b!4348729 (contains!11017 lt!1563089 key!3918)))

(declare-fun newValue!99 () V!10466)

(declare-fun lt!1563093 () Unit!70847)

(declare-fun lemmaAddToMapContainsAndNotInListThenInAcc!4 (List!48979 K!10220 V!10466 ListMap!2149) Unit!70847)

(assert (=> b!4348729 (= lt!1563093 (lemmaAddToMapContainsAndNotInListThenInAcc!4 (_2!27402 (h!54387 (toList!2905 lm!1707))) key!3918 newValue!99 lt!1563089))))

(declare-fun extractMap!520 (List!48980) ListMap!2149)

(assert (=> b!4348729 (= lt!1563089 (extractMap!520 (t!355900 (toList!2905 lm!1707))))))

(declare-fun e!2706152 () Bool)

(assert (=> b!4348729 e!2706152))

(declare-fun res!1786265 () Bool)

(assert (=> b!4348729 (=> (not res!1786265) (not e!2706152))))

(declare-fun containsKey!624 (List!48979 K!10220) Bool)

(declare-fun apply!11313 (ListLongMap!1555 (_ BitVec 64)) List!48979)

(assert (=> b!4348729 (= res!1786265 (not (containsKey!624 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))) key!3918)))))

(declare-fun lt!1563096 () Unit!70847)

(declare-fun lemmaNotSameHashThenCannotContainKey!8 (ListLongMap!1555 K!10220 (_ BitVec 64) Hashable!4853) Unit!70847)

(assert (=> b!4348729 (= lt!1563096 (lemmaNotSameHashThenCannotContainKey!8 lm!1707 key!3918 (_1!27402 (h!54387 (toList!2905 lm!1707))) hashF!1247))))

(declare-fun b!4348730 () Bool)

(declare-fun res!1786255 () Bool)

(assert (=> b!4348730 (=> (not res!1786255) (not e!2706155))))

(assert (=> b!4348730 (= res!1786255 (contains!11017 (extractMap!520 (toList!2905 lm!1707)) key!3918))))

(declare-fun b!4348731 () Bool)

(declare-fun res!1786260 () Bool)

(assert (=> b!4348731 (=> (not res!1786260) (not e!2706155))))

(declare-fun allKeysSameHash!419 (List!48979 (_ BitVec 64) Hashable!4853) Bool)

(assert (=> b!4348731 (= res!1786260 (allKeysSameHash!419 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4348732 () Bool)

(assert (=> b!4348732 (= e!2706154 (forall!9063 (toList!2905 lt!1563094) lambda!138921))))

(declare-fun b!4348733 () Bool)

(assert (=> b!4348733 (= e!2706152 (not (containsKey!624 (_2!27402 (h!54387 (toList!2905 lm!1707))) key!3918)))))

(declare-fun b!4348734 () Bool)

(assert (=> b!4348734 (= e!2706155 (not e!2706158))))

(declare-fun res!1786259 () Bool)

(assert (=> b!4348734 (=> res!1786259 e!2706158)))

(declare-fun lt!1563092 () List!48979)

(declare-fun removePairForKey!431 (List!48979 K!10220) List!48979)

(assert (=> b!4348734 (= res!1786259 (not (= newBucket!200 (Cons!48855 (tuple2!48215 key!3918 newValue!99) (removePairForKey!431 lt!1563092 key!3918)))))))

(declare-fun lt!1563090 () tuple2!48216)

(declare-fun lt!1563091 () Unit!70847)

(declare-fun forallContained!1711 (List!48980 Int tuple2!48216) Unit!70847)

(assert (=> b!4348734 (= lt!1563091 (forallContained!1711 (toList!2905 lm!1707) lambda!138921 lt!1563090))))

(declare-fun contains!11018 (List!48980 tuple2!48216) Bool)

(assert (=> b!4348734 (contains!11018 (toList!2905 lm!1707) lt!1563090)))

(assert (=> b!4348734 (= lt!1563090 (tuple2!48217 hash!377 lt!1563092))))

(declare-fun lt!1563095 () Unit!70847)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!308 (List!48980 (_ BitVec 64) List!48979) Unit!70847)

(assert (=> b!4348734 (= lt!1563095 (lemmaGetValueByKeyImpliesContainsTuple!308 (toList!2905 lm!1707) hash!377 lt!1563092))))

(assert (=> b!4348734 (= lt!1563092 (apply!11313 lm!1707 hash!377))))

(declare-fun tp_is_empty!25081 () Bool)

(declare-fun tp_is_empty!25083 () Bool)

(declare-fun b!4348728 () Bool)

(declare-fun tp!1329744 () Bool)

(declare-fun e!2706157 () Bool)

(assert (=> b!4348728 (= e!2706157 (and tp_is_empty!25081 tp_is_empty!25083 tp!1329744))))

(declare-fun res!1786257 () Bool)

(assert (=> start!419992 (=> (not res!1786257) (not e!2706155))))

(assert (=> start!419992 (= res!1786257 (forall!9063 (toList!2905 lm!1707) lambda!138921))))

(assert (=> start!419992 e!2706155))

(assert (=> start!419992 e!2706157))

(assert (=> start!419992 true))

(declare-fun inv!64406 (ListLongMap!1555) Bool)

(assert (=> start!419992 (and (inv!64406 lm!1707) e!2706156)))

(assert (=> start!419992 tp_is_empty!25081))

(assert (=> start!419992 tp_is_empty!25083))

(assert (= (and start!419992 res!1786257) b!4348725))

(assert (= (and b!4348725 res!1786262) b!4348722))

(assert (= (and b!4348722 res!1786263) b!4348731))

(assert (= (and b!4348731 res!1786260) b!4348730))

(assert (= (and b!4348730 res!1786255) b!4348726))

(assert (= (and b!4348726 res!1786261) b!4348734))

(assert (= (and b!4348734 (not res!1786259)) b!4348727))

(assert (= (and b!4348727 (not res!1786264)) b!4348724))

(assert (= (and b!4348724 res!1786258) b!4348732))

(assert (= (and b!4348724 (not res!1786256)) b!4348729))

(assert (= (and b!4348729 res!1786265) b!4348733))

(assert (= (and start!419992 ((_ is Cons!48855) newBucket!200)) b!4348728))

(assert (= start!419992 b!4348723))

(declare-fun m!4958079 () Bool)

(assert (=> b!4348729 m!4958079))

(declare-fun m!4958081 () Bool)

(assert (=> b!4348729 m!4958081))

(declare-fun m!4958083 () Bool)

(assert (=> b!4348729 m!4958083))

(declare-fun m!4958085 () Bool)

(assert (=> b!4348729 m!4958085))

(declare-fun m!4958087 () Bool)

(assert (=> b!4348729 m!4958087))

(declare-fun m!4958089 () Bool)

(assert (=> b!4348729 m!4958089))

(declare-fun m!4958091 () Bool)

(assert (=> b!4348729 m!4958091))

(assert (=> b!4348729 m!4958091))

(declare-fun m!4958093 () Bool)

(assert (=> b!4348729 m!4958093))

(declare-fun m!4958095 () Bool)

(assert (=> b!4348733 m!4958095))

(declare-fun m!4958097 () Bool)

(assert (=> b!4348722 m!4958097))

(declare-fun m!4958099 () Bool)

(assert (=> start!419992 m!4958099))

(declare-fun m!4958101 () Bool)

(assert (=> start!419992 m!4958101))

(declare-fun m!4958103 () Bool)

(assert (=> b!4348725 m!4958103))

(declare-fun m!4958105 () Bool)

(assert (=> b!4348730 m!4958105))

(assert (=> b!4348730 m!4958105))

(declare-fun m!4958107 () Bool)

(assert (=> b!4348730 m!4958107))

(declare-fun m!4958109 () Bool)

(assert (=> b!4348731 m!4958109))

(declare-fun m!4958111 () Bool)

(assert (=> b!4348734 m!4958111))

(declare-fun m!4958113 () Bool)

(assert (=> b!4348734 m!4958113))

(declare-fun m!4958115 () Bool)

(assert (=> b!4348734 m!4958115))

(declare-fun m!4958117 () Bool)

(assert (=> b!4348734 m!4958117))

(declare-fun m!4958119 () Bool)

(assert (=> b!4348734 m!4958119))

(declare-fun m!4958121 () Bool)

(assert (=> b!4348726 m!4958121))

(declare-fun m!4958123 () Bool)

(assert (=> b!4348732 m!4958123))

(declare-fun m!4958125 () Bool)

(assert (=> b!4348727 m!4958125))

(assert (=> b!4348724 m!4958123))

(declare-fun m!4958127 () Bool)

(assert (=> b!4348724 m!4958127))

(declare-fun m!4958129 () Bool)

(assert (=> b!4348724 m!4958129))

(assert (=> b!4348724 m!4958099))

(check-sat (not b!4348723) (not b!4348734) (not b!4348728) (not b!4348730) tp_is_empty!25083 (not b!4348726) (not b!4348733) (not b!4348732) (not start!419992) (not b!4348725) (not b!4348724) (not b!4348722) (not b!4348729) (not b!4348727) (not b!4348731) tp_is_empty!25081)
(check-sat)
(get-model)

(declare-fun d!1284128 () Bool)

(declare-fun e!2706169 () Bool)

(assert (=> d!1284128 e!2706169))

(declare-fun res!1786271 () Bool)

(assert (=> d!1284128 (=> res!1786271 e!2706169)))

(declare-fun lt!1563117 () Bool)

(assert (=> d!1284128 (= res!1786271 (not lt!1563117))))

(declare-fun lt!1563118 () Bool)

(assert (=> d!1284128 (= lt!1563117 lt!1563118)))

(declare-fun lt!1563120 () Unit!70847)

(declare-fun e!2706170 () Unit!70847)

(assert (=> d!1284128 (= lt!1563120 e!2706170)))

(declare-fun c!739244 () Bool)

(assert (=> d!1284128 (= c!739244 lt!1563118)))

(declare-fun containsKey!627 (List!48980 (_ BitVec 64)) Bool)

(assert (=> d!1284128 (= lt!1563118 (containsKey!627 (toList!2905 lm!1707) hash!377))))

(assert (=> d!1284128 (= (contains!11016 lm!1707 hash!377) lt!1563117)))

(declare-fun b!4348752 () Bool)

(declare-fun lt!1563119 () Unit!70847)

(assert (=> b!4348752 (= e!2706170 lt!1563119)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!327 (List!48980 (_ BitVec 64)) Unit!70847)

(assert (=> b!4348752 (= lt!1563119 (lemmaContainsKeyImpliesGetValueByKeyDefined!327 (toList!2905 lm!1707) hash!377))))

(declare-datatypes ((Option!10428 0))(
  ( (None!10427) (Some!10427 (v!43237 List!48979)) )
))
(declare-fun isDefined!7724 (Option!10428) Bool)

(declare-fun getValueByKey!414 (List!48980 (_ BitVec 64)) Option!10428)

(assert (=> b!4348752 (isDefined!7724 (getValueByKey!414 (toList!2905 lm!1707) hash!377))))

(declare-fun b!4348753 () Bool)

(declare-fun Unit!70852 () Unit!70847)

(assert (=> b!4348753 (= e!2706170 Unit!70852)))

(declare-fun b!4348754 () Bool)

(assert (=> b!4348754 (= e!2706169 (isDefined!7724 (getValueByKey!414 (toList!2905 lm!1707) hash!377)))))

(assert (= (and d!1284128 c!739244) b!4348752))

(assert (= (and d!1284128 (not c!739244)) b!4348753))

(assert (= (and d!1284128 (not res!1786271)) b!4348754))

(declare-fun m!4958143 () Bool)

(assert (=> d!1284128 m!4958143))

(declare-fun m!4958145 () Bool)

(assert (=> b!4348752 m!4958145))

(declare-fun m!4958147 () Bool)

(assert (=> b!4348752 m!4958147))

(assert (=> b!4348752 m!4958147))

(declare-fun m!4958149 () Bool)

(assert (=> b!4348752 m!4958149))

(assert (=> b!4348754 m!4958147))

(assert (=> b!4348754 m!4958147))

(assert (=> b!4348754 m!4958149))

(assert (=> b!4348726 d!1284128))

(declare-fun d!1284130 () Bool)

(declare-fun res!1786276 () Bool)

(declare-fun e!2706181 () Bool)

(assert (=> d!1284130 (=> res!1786276 e!2706181)))

(assert (=> d!1284130 (= res!1786276 (not ((_ is Cons!48855) newBucket!200)))))

(assert (=> d!1284130 (= (noDuplicateKeys!461 newBucket!200) e!2706181)))

(declare-fun b!4348771 () Bool)

(declare-fun e!2706182 () Bool)

(assert (=> b!4348771 (= e!2706181 e!2706182)))

(declare-fun res!1786277 () Bool)

(assert (=> b!4348771 (=> (not res!1786277) (not e!2706182))))

(assert (=> b!4348771 (= res!1786277 (not (containsKey!624 (t!355899 newBucket!200) (_1!27401 (h!54386 newBucket!200)))))))

(declare-fun b!4348772 () Bool)

(assert (=> b!4348772 (= e!2706182 (noDuplicateKeys!461 (t!355899 newBucket!200)))))

(assert (= (and d!1284130 (not res!1786276)) b!4348771))

(assert (= (and b!4348771 res!1786277) b!4348772))

(declare-fun m!4958151 () Bool)

(assert (=> b!4348771 m!4958151))

(declare-fun m!4958153 () Bool)

(assert (=> b!4348772 m!4958153))

(assert (=> b!4348727 d!1284130))

(declare-fun b!4348812 () Bool)

(declare-fun e!2706213 () Unit!70847)

(declare-fun Unit!70853 () Unit!70847)

(assert (=> b!4348812 (= e!2706213 Unit!70853)))

(declare-fun b!4348813 () Bool)

(declare-datatypes ((List!48982 0))(
  ( (Nil!48858) (Cons!48858 (h!54391 K!10220) (t!355902 List!48982)) )
))
(declare-fun e!2706210 () List!48982)

(declare-fun keys!16480 (ListMap!2149) List!48982)

(assert (=> b!4348813 (= e!2706210 (keys!16480 lt!1563089))))

(declare-fun b!4348815 () Bool)

(declare-fun e!2706215 () Bool)

(declare-fun e!2706212 () Bool)

(assert (=> b!4348815 (= e!2706215 e!2706212)))

(declare-fun res!1786294 () Bool)

(assert (=> b!4348815 (=> (not res!1786294) (not e!2706212))))

(declare-datatypes ((Option!10429 0))(
  ( (None!10428) (Some!10428 (v!43238 V!10466)) )
))
(declare-fun isDefined!7725 (Option!10429) Bool)

(declare-fun getValueByKey!415 (List!48979 K!10220) Option!10429)

(assert (=> b!4348815 (= res!1786294 (isDefined!7725 (getValueByKey!415 (toList!2906 lt!1563089) key!3918)))))

(declare-fun bm!302272 () Bool)

(declare-fun call!302277 () Bool)

(declare-fun contains!11020 (List!48982 K!10220) Bool)

(assert (=> bm!302272 (= call!302277 (contains!11020 e!2706210 key!3918))))

(declare-fun c!739263 () Bool)

(declare-fun c!739265 () Bool)

(assert (=> bm!302272 (= c!739263 c!739265)))

(declare-fun b!4348816 () Bool)

(declare-fun e!2706214 () Bool)

(assert (=> b!4348816 (= e!2706214 (not (contains!11020 (keys!16480 lt!1563089) key!3918)))))

(declare-fun b!4348817 () Bool)

(declare-fun getKeysList!106 (List!48979) List!48982)

(assert (=> b!4348817 (= e!2706210 (getKeysList!106 (toList!2906 lt!1563089)))))

(declare-fun b!4348818 () Bool)

(assert (=> b!4348818 (= e!2706212 (contains!11020 (keys!16480 lt!1563089) key!3918))))

(declare-fun d!1284132 () Bool)

(assert (=> d!1284132 e!2706215))

(declare-fun res!1786295 () Bool)

(assert (=> d!1284132 (=> res!1786295 e!2706215)))

(assert (=> d!1284132 (= res!1786295 e!2706214)))

(declare-fun res!1786293 () Bool)

(assert (=> d!1284132 (=> (not res!1786293) (not e!2706214))))

(declare-fun lt!1563171 () Bool)

(assert (=> d!1284132 (= res!1786293 (not lt!1563171))))

(declare-fun lt!1563168 () Bool)

(assert (=> d!1284132 (= lt!1563171 lt!1563168)))

(declare-fun lt!1563165 () Unit!70847)

(declare-fun e!2706211 () Unit!70847)

(assert (=> d!1284132 (= lt!1563165 e!2706211)))

(assert (=> d!1284132 (= c!739265 lt!1563168)))

(declare-fun containsKey!628 (List!48979 K!10220) Bool)

(assert (=> d!1284132 (= lt!1563168 (containsKey!628 (toList!2906 lt!1563089) key!3918))))

(assert (=> d!1284132 (= (contains!11017 lt!1563089 key!3918) lt!1563171)))

(declare-fun b!4348814 () Bool)

(declare-fun lt!1563167 () Unit!70847)

(assert (=> b!4348814 (= e!2706211 lt!1563167)))

(declare-fun lt!1563170 () Unit!70847)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!328 (List!48979 K!10220) Unit!70847)

(assert (=> b!4348814 (= lt!1563170 (lemmaContainsKeyImpliesGetValueByKeyDefined!328 (toList!2906 lt!1563089) key!3918))))

(assert (=> b!4348814 (isDefined!7725 (getValueByKey!415 (toList!2906 lt!1563089) key!3918))))

(declare-fun lt!1563164 () Unit!70847)

(assert (=> b!4348814 (= lt!1563164 lt!1563170)))

(declare-fun lemmaInListThenGetKeysListContains!103 (List!48979 K!10220) Unit!70847)

(assert (=> b!4348814 (= lt!1563167 (lemmaInListThenGetKeysListContains!103 (toList!2906 lt!1563089) key!3918))))

(assert (=> b!4348814 call!302277))

(declare-fun b!4348819 () Bool)

(assert (=> b!4348819 false))

(declare-fun lt!1563169 () Unit!70847)

(declare-fun lt!1563166 () Unit!70847)

(assert (=> b!4348819 (= lt!1563169 lt!1563166)))

(assert (=> b!4348819 (containsKey!628 (toList!2906 lt!1563089) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!104 (List!48979 K!10220) Unit!70847)

(assert (=> b!4348819 (= lt!1563166 (lemmaInGetKeysListThenContainsKey!104 (toList!2906 lt!1563089) key!3918))))

(declare-fun Unit!70854 () Unit!70847)

(assert (=> b!4348819 (= e!2706213 Unit!70854)))

(declare-fun b!4348820 () Bool)

(assert (=> b!4348820 (= e!2706211 e!2706213)))

(declare-fun c!739264 () Bool)

(assert (=> b!4348820 (= c!739264 call!302277)))

(assert (= (and d!1284132 c!739265) b!4348814))

(assert (= (and d!1284132 (not c!739265)) b!4348820))

(assert (= (and b!4348820 c!739264) b!4348819))

(assert (= (and b!4348820 (not c!739264)) b!4348812))

(assert (= (or b!4348814 b!4348820) bm!302272))

(assert (= (and bm!302272 c!739263) b!4348817))

(assert (= (and bm!302272 (not c!739263)) b!4348813))

(assert (= (and d!1284132 res!1786293) b!4348816))

(assert (= (and d!1284132 (not res!1786295)) b!4348815))

(assert (= (and b!4348815 res!1786294) b!4348818))

(declare-fun m!4958181 () Bool)

(assert (=> b!4348815 m!4958181))

(assert (=> b!4348815 m!4958181))

(declare-fun m!4958183 () Bool)

(assert (=> b!4348815 m!4958183))

(declare-fun m!4958185 () Bool)

(assert (=> b!4348814 m!4958185))

(assert (=> b!4348814 m!4958181))

(assert (=> b!4348814 m!4958181))

(assert (=> b!4348814 m!4958183))

(declare-fun m!4958187 () Bool)

(assert (=> b!4348814 m!4958187))

(declare-fun m!4958189 () Bool)

(assert (=> b!4348819 m!4958189))

(declare-fun m!4958191 () Bool)

(assert (=> b!4348819 m!4958191))

(declare-fun m!4958193 () Bool)

(assert (=> b!4348813 m!4958193))

(assert (=> b!4348816 m!4958193))

(assert (=> b!4348816 m!4958193))

(declare-fun m!4958195 () Bool)

(assert (=> b!4348816 m!4958195))

(assert (=> b!4348818 m!4958193))

(assert (=> b!4348818 m!4958193))

(assert (=> b!4348818 m!4958195))

(declare-fun m!4958197 () Bool)

(assert (=> b!4348817 m!4958197))

(declare-fun m!4958199 () Bool)

(assert (=> bm!302272 m!4958199))

(assert (=> d!1284132 m!4958189))

(assert (=> b!4348729 d!1284132))

(declare-fun d!1284138 () Bool)

(declare-fun res!1786306 () Bool)

(declare-fun e!2706226 () Bool)

(assert (=> d!1284138 (=> res!1786306 e!2706226)))

(assert (=> d!1284138 (= res!1786306 (and ((_ is Cons!48855) (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707))))) (= (_1!27401 (h!54386 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))))) key!3918)))))

(assert (=> d!1284138 (= (containsKey!624 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))) key!3918) e!2706226)))

(declare-fun b!4348831 () Bool)

(declare-fun e!2706227 () Bool)

(assert (=> b!4348831 (= e!2706226 e!2706227)))

(declare-fun res!1786307 () Bool)

(assert (=> b!4348831 (=> (not res!1786307) (not e!2706227))))

(assert (=> b!4348831 (= res!1786307 ((_ is Cons!48855) (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707))))))))

(declare-fun b!4348832 () Bool)

(assert (=> b!4348832 (= e!2706227 (containsKey!624 (t!355899 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707))))) key!3918))))

(assert (= (and d!1284138 (not res!1786306)) b!4348831))

(assert (= (and b!4348831 res!1786307) b!4348832))

(declare-fun m!4958205 () Bool)

(assert (=> b!4348832 m!4958205))

(assert (=> b!4348729 d!1284138))

(declare-fun d!1284142 () Bool)

(declare-fun res!1786312 () Bool)

(declare-fun e!2706232 () Bool)

(assert (=> d!1284142 (=> res!1786312 e!2706232)))

(assert (=> d!1284142 (= res!1786312 ((_ is Nil!48856) (toList!2905 (tail!6949 lm!1707))))))

(assert (=> d!1284142 (= (forall!9063 (toList!2905 (tail!6949 lm!1707)) lambda!138921) e!2706232)))

(declare-fun b!4348837 () Bool)

(declare-fun e!2706233 () Bool)

(assert (=> b!4348837 (= e!2706232 e!2706233)))

(declare-fun res!1786313 () Bool)

(assert (=> b!4348837 (=> (not res!1786313) (not e!2706233))))

(declare-fun dynLambda!20605 (Int tuple2!48216) Bool)

(assert (=> b!4348837 (= res!1786313 (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 (tail!6949 lm!1707)))))))

(declare-fun b!4348838 () Bool)

(assert (=> b!4348838 (= e!2706233 (forall!9063 (t!355900 (toList!2905 (tail!6949 lm!1707))) lambda!138921))))

(assert (= (and d!1284142 (not res!1786312)) b!4348837))

(assert (= (and b!4348837 res!1786313) b!4348838))

(declare-fun b_lambda!130309 () Bool)

(assert (=> (not b_lambda!130309) (not b!4348837)))

(declare-fun m!4958207 () Bool)

(assert (=> b!4348837 m!4958207))

(declare-fun m!4958209 () Bool)

(assert (=> b!4348838 m!4958209))

(assert (=> b!4348729 d!1284142))

(declare-fun d!1284144 () Bool)

(declare-fun tail!6951 (List!48980) List!48980)

(assert (=> d!1284144 (= (tail!6949 lm!1707) (ListLongMap!1556 (tail!6951 (toList!2905 lm!1707))))))

(declare-fun bs!628353 () Bool)

(assert (= bs!628353 d!1284144))

(declare-fun m!4958211 () Bool)

(assert (=> bs!628353 m!4958211))

(assert (=> b!4348729 d!1284144))

(declare-fun bs!628355 () Bool)

(declare-fun d!1284146 () Bool)

(assert (= bs!628355 (and d!1284146 start!419992)))

(declare-fun lambda!138930 () Int)

(assert (=> bs!628355 (= lambda!138930 lambda!138921)))

(declare-fun lt!1563189 () ListMap!2149)

(declare-fun invariantList!658 (List!48979) Bool)

(assert (=> d!1284146 (invariantList!658 (toList!2906 lt!1563189))))

(declare-fun e!2706244 () ListMap!2149)

(assert (=> d!1284146 (= lt!1563189 e!2706244)))

(declare-fun c!739268 () Bool)

(assert (=> d!1284146 (= c!739268 ((_ is Cons!48856) (t!355900 (toList!2905 lm!1707))))))

(assert (=> d!1284146 (forall!9063 (t!355900 (toList!2905 lm!1707)) lambda!138930)))

(assert (=> d!1284146 (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) lt!1563189)))

(declare-fun b!4348855 () Bool)

(declare-fun addToMapMapFromBucket!165 (List!48979 ListMap!2149) ListMap!2149)

(assert (=> b!4348855 (= e!2706244 (addToMapMapFromBucket!165 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))) (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))))))

(declare-fun b!4348856 () Bool)

(assert (=> b!4348856 (= e!2706244 (ListMap!2150 Nil!48855))))

(assert (= (and d!1284146 c!739268) b!4348855))

(assert (= (and d!1284146 (not c!739268)) b!4348856))

(declare-fun m!4958239 () Bool)

(assert (=> d!1284146 m!4958239))

(declare-fun m!4958241 () Bool)

(assert (=> d!1284146 m!4958241))

(declare-fun m!4958243 () Bool)

(assert (=> b!4348855 m!4958243))

(assert (=> b!4348855 m!4958243))

(declare-fun m!4958245 () Bool)

(assert (=> b!4348855 m!4958245))

(assert (=> b!4348729 d!1284146))

(declare-fun bs!628356 () Bool)

(declare-fun d!1284156 () Bool)

(assert (= bs!628356 (and d!1284156 start!419992)))

(declare-fun lambda!138933 () Int)

(assert (=> bs!628356 (= lambda!138933 lambda!138921)))

(declare-fun bs!628357 () Bool)

(assert (= bs!628357 (and d!1284156 d!1284146)))

(assert (=> bs!628357 (= lambda!138933 lambda!138930)))

(assert (=> d!1284156 (not (containsKey!624 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))) key!3918))))

(declare-fun lt!1563192 () Unit!70847)

(declare-fun choose!26720 (ListLongMap!1555 K!10220 (_ BitVec 64) Hashable!4853) Unit!70847)

(assert (=> d!1284156 (= lt!1563192 (choose!26720 lm!1707 key!3918 (_1!27402 (h!54387 (toList!2905 lm!1707))) hashF!1247))))

(assert (=> d!1284156 (forall!9063 (toList!2905 lm!1707) lambda!138933)))

(assert (=> d!1284156 (= (lemmaNotSameHashThenCannotContainKey!8 lm!1707 key!3918 (_1!27402 (h!54387 (toList!2905 lm!1707))) hashF!1247) lt!1563192)))

(declare-fun bs!628358 () Bool)

(assert (= bs!628358 d!1284156))

(assert (=> bs!628358 m!4958091))

(assert (=> bs!628358 m!4958091))

(assert (=> bs!628358 m!4958093))

(declare-fun m!4958253 () Bool)

(assert (=> bs!628358 m!4958253))

(declare-fun m!4958255 () Bool)

(assert (=> bs!628358 m!4958255))

(assert (=> b!4348729 d!1284156))

(declare-fun d!1284162 () Bool)

(declare-fun get!15861 (Option!10428) List!48979)

(assert (=> d!1284162 (= (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))) (get!15861 (getValueByKey!414 (toList!2905 lm!1707) (_1!27402 (h!54387 (toList!2905 lm!1707))))))))

(declare-fun bs!628359 () Bool)

(assert (= bs!628359 d!1284162))

(declare-fun m!4958257 () Bool)

(assert (=> bs!628359 m!4958257))

(assert (=> bs!628359 m!4958257))

(declare-fun m!4958259 () Bool)

(assert (=> bs!628359 m!4958259))

(assert (=> b!4348729 d!1284162))

(declare-fun d!1284164 () Bool)

(assert (=> d!1284164 (contains!11017 lt!1563089 key!3918)))

(declare-fun lt!1563199 () Unit!70847)

(declare-fun choose!26721 (List!48979 K!10220 V!10466 ListMap!2149) Unit!70847)

(assert (=> d!1284164 (= lt!1563199 (choose!26721 (_2!27402 (h!54387 (toList!2905 lm!1707))) key!3918 newValue!99 lt!1563089))))

(assert (=> d!1284164 (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lm!1707))))))

(assert (=> d!1284164 (= (lemmaAddToMapContainsAndNotInListThenInAcc!4 (_2!27402 (h!54387 (toList!2905 lm!1707))) key!3918 newValue!99 lt!1563089) lt!1563199)))

(declare-fun bs!628365 () Bool)

(assert (= bs!628365 d!1284164))

(assert (=> bs!628365 m!4958089))

(declare-fun m!4958275 () Bool)

(assert (=> bs!628365 m!4958275))

(declare-fun m!4958277 () Bool)

(assert (=> bs!628365 m!4958277))

(assert (=> b!4348729 d!1284164))

(declare-fun b!4348867 () Bool)

(declare-fun e!2706257 () Unit!70847)

(declare-fun Unit!70857 () Unit!70847)

(assert (=> b!4348867 (= e!2706257 Unit!70857)))

(declare-fun b!4348868 () Bool)

(declare-fun e!2706254 () List!48982)

(assert (=> b!4348868 (= e!2706254 (keys!16480 (extractMap!520 (toList!2905 lm!1707))))))

(declare-fun b!4348870 () Bool)

(declare-fun e!2706259 () Bool)

(declare-fun e!2706256 () Bool)

(assert (=> b!4348870 (= e!2706259 e!2706256)))

(declare-fun res!1786334 () Bool)

(assert (=> b!4348870 (=> (not res!1786334) (not e!2706256))))

(assert (=> b!4348870 (= res!1786334 (isDefined!7725 (getValueByKey!415 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918)))))

(declare-fun bm!302273 () Bool)

(declare-fun call!302278 () Bool)

(assert (=> bm!302273 (= call!302278 (contains!11020 e!2706254 key!3918))))

(declare-fun c!739270 () Bool)

(declare-fun c!739272 () Bool)

(assert (=> bm!302273 (= c!739270 c!739272)))

(declare-fun b!4348871 () Bool)

(declare-fun e!2706258 () Bool)

(assert (=> b!4348871 (= e!2706258 (not (contains!11020 (keys!16480 (extractMap!520 (toList!2905 lm!1707))) key!3918)))))

(declare-fun b!4348872 () Bool)

(assert (=> b!4348872 (= e!2706254 (getKeysList!106 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))

(declare-fun b!4348873 () Bool)

(assert (=> b!4348873 (= e!2706256 (contains!11020 (keys!16480 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(declare-fun d!1284172 () Bool)

(assert (=> d!1284172 e!2706259))

(declare-fun res!1786335 () Bool)

(assert (=> d!1284172 (=> res!1786335 e!2706259)))

(assert (=> d!1284172 (= res!1786335 e!2706258)))

(declare-fun res!1786333 () Bool)

(assert (=> d!1284172 (=> (not res!1786333) (not e!2706258))))

(declare-fun lt!1563209 () Bool)

(assert (=> d!1284172 (= res!1786333 (not lt!1563209))))

(declare-fun lt!1563206 () Bool)

(assert (=> d!1284172 (= lt!1563209 lt!1563206)))

(declare-fun lt!1563203 () Unit!70847)

(declare-fun e!2706255 () Unit!70847)

(assert (=> d!1284172 (= lt!1563203 e!2706255)))

(assert (=> d!1284172 (= c!739272 lt!1563206)))

(assert (=> d!1284172 (= lt!1563206 (containsKey!628 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(assert (=> d!1284172 (= (contains!11017 (extractMap!520 (toList!2905 lm!1707)) key!3918) lt!1563209)))

(declare-fun b!4348869 () Bool)

(declare-fun lt!1563205 () Unit!70847)

(assert (=> b!4348869 (= e!2706255 lt!1563205)))

(declare-fun lt!1563208 () Unit!70847)

(assert (=> b!4348869 (= lt!1563208 (lemmaContainsKeyImpliesGetValueByKeyDefined!328 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(assert (=> b!4348869 (isDefined!7725 (getValueByKey!415 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(declare-fun lt!1563202 () Unit!70847)

(assert (=> b!4348869 (= lt!1563202 lt!1563208)))

(assert (=> b!4348869 (= lt!1563205 (lemmaInListThenGetKeysListContains!103 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(assert (=> b!4348869 call!302278))

(declare-fun b!4348874 () Bool)

(assert (=> b!4348874 false))

(declare-fun lt!1563207 () Unit!70847)

(declare-fun lt!1563204 () Unit!70847)

(assert (=> b!4348874 (= lt!1563207 lt!1563204)))

(assert (=> b!4348874 (containsKey!628 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918)))

(assert (=> b!4348874 (= lt!1563204 (lemmaInGetKeysListThenContainsKey!104 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(declare-fun Unit!70858 () Unit!70847)

(assert (=> b!4348874 (= e!2706257 Unit!70858)))

(declare-fun b!4348875 () Bool)

(assert (=> b!4348875 (= e!2706255 e!2706257)))

(declare-fun c!739271 () Bool)

(assert (=> b!4348875 (= c!739271 call!302278)))

(assert (= (and d!1284172 c!739272) b!4348869))

(assert (= (and d!1284172 (not c!739272)) b!4348875))

(assert (= (and b!4348875 c!739271) b!4348874))

(assert (= (and b!4348875 (not c!739271)) b!4348867))

(assert (= (or b!4348869 b!4348875) bm!302273))

(assert (= (and bm!302273 c!739270) b!4348872))

(assert (= (and bm!302273 (not c!739270)) b!4348868))

(assert (= (and d!1284172 res!1786333) b!4348871))

(assert (= (and d!1284172 (not res!1786335)) b!4348870))

(assert (= (and b!4348870 res!1786334) b!4348873))

(declare-fun m!4958279 () Bool)

(assert (=> b!4348870 m!4958279))

(assert (=> b!4348870 m!4958279))

(declare-fun m!4958281 () Bool)

(assert (=> b!4348870 m!4958281))

(declare-fun m!4958283 () Bool)

(assert (=> b!4348869 m!4958283))

(assert (=> b!4348869 m!4958279))

(assert (=> b!4348869 m!4958279))

(assert (=> b!4348869 m!4958281))

(declare-fun m!4958285 () Bool)

(assert (=> b!4348869 m!4958285))

(declare-fun m!4958287 () Bool)

(assert (=> b!4348874 m!4958287))

(declare-fun m!4958289 () Bool)

(assert (=> b!4348874 m!4958289))

(assert (=> b!4348868 m!4958105))

(declare-fun m!4958291 () Bool)

(assert (=> b!4348868 m!4958291))

(assert (=> b!4348871 m!4958105))

(assert (=> b!4348871 m!4958291))

(assert (=> b!4348871 m!4958291))

(declare-fun m!4958293 () Bool)

(assert (=> b!4348871 m!4958293))

(assert (=> b!4348873 m!4958105))

(assert (=> b!4348873 m!4958291))

(assert (=> b!4348873 m!4958291))

(assert (=> b!4348873 m!4958293))

(declare-fun m!4958295 () Bool)

(assert (=> b!4348872 m!4958295))

(declare-fun m!4958297 () Bool)

(assert (=> bm!302273 m!4958297))

(assert (=> d!1284172 m!4958287))

(assert (=> b!4348730 d!1284172))

(declare-fun bs!628371 () Bool)

(declare-fun d!1284174 () Bool)

(assert (= bs!628371 (and d!1284174 start!419992)))

(declare-fun lambda!138938 () Int)

(assert (=> bs!628371 (= lambda!138938 lambda!138921)))

(declare-fun bs!628372 () Bool)

(assert (= bs!628372 (and d!1284174 d!1284146)))

(assert (=> bs!628372 (= lambda!138938 lambda!138930)))

(declare-fun bs!628373 () Bool)

(assert (= bs!628373 (and d!1284174 d!1284156)))

(assert (=> bs!628373 (= lambda!138938 lambda!138933)))

(declare-fun lt!1563211 () ListMap!2149)

(assert (=> d!1284174 (invariantList!658 (toList!2906 lt!1563211))))

(declare-fun e!2706260 () ListMap!2149)

(assert (=> d!1284174 (= lt!1563211 e!2706260)))

(declare-fun c!739273 () Bool)

(assert (=> d!1284174 (= c!739273 ((_ is Cons!48856) (toList!2905 lm!1707)))))

(assert (=> d!1284174 (forall!9063 (toList!2905 lm!1707) lambda!138938)))

(assert (=> d!1284174 (= (extractMap!520 (toList!2905 lm!1707)) lt!1563211)))

(declare-fun b!4348876 () Bool)

(assert (=> b!4348876 (= e!2706260 (addToMapMapFromBucket!165 (_2!27402 (h!54387 (toList!2905 lm!1707))) (extractMap!520 (t!355900 (toList!2905 lm!1707)))))))

(declare-fun b!4348877 () Bool)

(assert (=> b!4348877 (= e!2706260 (ListMap!2150 Nil!48855))))

(assert (= (and d!1284174 c!739273) b!4348876))

(assert (= (and d!1284174 (not c!739273)) b!4348877))

(declare-fun m!4958303 () Bool)

(assert (=> d!1284174 m!4958303))

(declare-fun m!4958305 () Bool)

(assert (=> d!1284174 m!4958305))

(assert (=> b!4348876 m!4958081))

(assert (=> b!4348876 m!4958081))

(declare-fun m!4958307 () Bool)

(assert (=> b!4348876 m!4958307))

(assert (=> b!4348730 d!1284174))

(declare-fun d!1284178 () Bool)

(assert (=> d!1284178 true))

(assert (=> d!1284178 true))

(declare-fun lambda!138941 () Int)

(declare-fun forall!9064 (List!48979 Int) Bool)

(assert (=> d!1284178 (= (allKeysSameHash!419 newBucket!200 hash!377 hashF!1247) (forall!9064 newBucket!200 lambda!138941))))

(declare-fun bs!628376 () Bool)

(assert (= bs!628376 d!1284178))

(declare-fun m!4958333 () Bool)

(assert (=> bs!628376 m!4958333))

(assert (=> b!4348731 d!1284178))

(declare-fun d!1284186 () Bool)

(declare-fun res!1786339 () Bool)

(declare-fun e!2706267 () Bool)

(assert (=> d!1284186 (=> res!1786339 e!2706267)))

(assert (=> d!1284186 (= res!1786339 (and ((_ is Cons!48855) (_2!27402 (h!54387 (toList!2905 lm!1707)))) (= (_1!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707))))) key!3918)))))

(assert (=> d!1284186 (= (containsKey!624 (_2!27402 (h!54387 (toList!2905 lm!1707))) key!3918) e!2706267)))

(declare-fun b!4348891 () Bool)

(declare-fun e!2706268 () Bool)

(assert (=> b!4348891 (= e!2706267 e!2706268)))

(declare-fun res!1786340 () Bool)

(assert (=> b!4348891 (=> (not res!1786340) (not e!2706268))))

(assert (=> b!4348891 (= res!1786340 ((_ is Cons!48855) (_2!27402 (h!54387 (toList!2905 lm!1707)))))))

(declare-fun b!4348892 () Bool)

(assert (=> b!4348892 (= e!2706268 (containsKey!624 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707)))) key!3918))))

(assert (= (and d!1284186 (not res!1786339)) b!4348891))

(assert (= (and b!4348891 res!1786340) b!4348892))

(declare-fun m!4958335 () Bool)

(assert (=> b!4348892 m!4958335))

(assert (=> b!4348733 d!1284186))

(declare-fun d!1284188 () Bool)

(declare-fun hash!1462 (Hashable!4853 K!10220) (_ BitVec 64))

(assert (=> d!1284188 (= (hash!1458 hashF!1247 key!3918) (hash!1462 hashF!1247 key!3918))))

(declare-fun bs!628377 () Bool)

(assert (= bs!628377 d!1284188))

(declare-fun m!4958337 () Bool)

(assert (=> bs!628377 m!4958337))

(assert (=> b!4348722 d!1284188))

(declare-fun d!1284190 () Bool)

(declare-fun res!1786345 () Bool)

(declare-fun e!2706273 () Bool)

(assert (=> d!1284190 (=> res!1786345 e!2706273)))

(assert (=> d!1284190 (= res!1786345 ((_ is Nil!48856) (toList!2905 lt!1563094)))))

(assert (=> d!1284190 (= (forall!9063 (toList!2905 lt!1563094) lambda!138921) e!2706273)))

(declare-fun b!4348897 () Bool)

(declare-fun e!2706274 () Bool)

(assert (=> b!4348897 (= e!2706273 e!2706274)))

(declare-fun res!1786346 () Bool)

(assert (=> b!4348897 (=> (not res!1786346) (not e!2706274))))

(assert (=> b!4348897 (= res!1786346 (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 lt!1563094))))))

(declare-fun b!4348898 () Bool)

(assert (=> b!4348898 (= e!2706274 (forall!9063 (t!355900 (toList!2905 lt!1563094)) lambda!138921))))

(assert (= (and d!1284190 (not res!1786345)) b!4348897))

(assert (= (and b!4348897 res!1786346) b!4348898))

(declare-fun b_lambda!130317 () Bool)

(assert (=> (not b_lambda!130317) (not b!4348897)))

(declare-fun m!4958339 () Bool)

(assert (=> b!4348897 m!4958339))

(declare-fun m!4958341 () Bool)

(assert (=> b!4348898 m!4958341))

(assert (=> b!4348732 d!1284190))

(declare-fun d!1284192 () Bool)

(assert (=> d!1284192 (= (apply!11313 lm!1707 hash!377) (get!15861 (getValueByKey!414 (toList!2905 lm!1707) hash!377)))))

(declare-fun bs!628378 () Bool)

(assert (= bs!628378 d!1284192))

(assert (=> bs!628378 m!4958147))

(assert (=> bs!628378 m!4958147))

(declare-fun m!4958343 () Bool)

(assert (=> bs!628378 m!4958343))

(assert (=> b!4348734 d!1284192))

(declare-fun d!1284194 () Bool)

(assert (=> d!1284194 (dynLambda!20605 lambda!138921 lt!1563090)))

(declare-fun lt!1563227 () Unit!70847)

(declare-fun choose!26724 (List!48980 Int tuple2!48216) Unit!70847)

(assert (=> d!1284194 (= lt!1563227 (choose!26724 (toList!2905 lm!1707) lambda!138921 lt!1563090))))

(declare-fun e!2706281 () Bool)

(assert (=> d!1284194 e!2706281))

(declare-fun res!1786353 () Bool)

(assert (=> d!1284194 (=> (not res!1786353) (not e!2706281))))

(assert (=> d!1284194 (= res!1786353 (forall!9063 (toList!2905 lm!1707) lambda!138921))))

(assert (=> d!1284194 (= (forallContained!1711 (toList!2905 lm!1707) lambda!138921 lt!1563090) lt!1563227)))

(declare-fun b!4348905 () Bool)

(assert (=> b!4348905 (= e!2706281 (contains!11018 (toList!2905 lm!1707) lt!1563090))))

(assert (= (and d!1284194 res!1786353) b!4348905))

(declare-fun b_lambda!130319 () Bool)

(assert (=> (not b_lambda!130319) (not d!1284194)))

(declare-fun m!4958351 () Bool)

(assert (=> d!1284194 m!4958351))

(declare-fun m!4958353 () Bool)

(assert (=> d!1284194 m!4958353))

(assert (=> d!1284194 m!4958099))

(assert (=> b!4348905 m!4958111))

(assert (=> b!4348734 d!1284194))

(declare-fun d!1284198 () Bool)

(assert (=> d!1284198 (contains!11018 (toList!2905 lm!1707) (tuple2!48217 hash!377 lt!1563092))))

(declare-fun lt!1563233 () Unit!70847)

(declare-fun choose!26725 (List!48980 (_ BitVec 64) List!48979) Unit!70847)

(assert (=> d!1284198 (= lt!1563233 (choose!26725 (toList!2905 lm!1707) hash!377 lt!1563092))))

(declare-fun e!2706289 () Bool)

(assert (=> d!1284198 e!2706289))

(declare-fun res!1786357 () Bool)

(assert (=> d!1284198 (=> (not res!1786357) (not e!2706289))))

(declare-fun isStrictlySorted!84 (List!48980) Bool)

(assert (=> d!1284198 (= res!1786357 (isStrictlySorted!84 (toList!2905 lm!1707)))))

(assert (=> d!1284198 (= (lemmaGetValueByKeyImpliesContainsTuple!308 (toList!2905 lm!1707) hash!377 lt!1563092) lt!1563233)))

(declare-fun b!4348917 () Bool)

(assert (=> b!4348917 (= e!2706289 (= (getValueByKey!414 (toList!2905 lm!1707) hash!377) (Some!10427 lt!1563092)))))

(assert (= (and d!1284198 res!1786357) b!4348917))

(declare-fun m!4958359 () Bool)

(assert (=> d!1284198 m!4958359))

(declare-fun m!4958361 () Bool)

(assert (=> d!1284198 m!4958361))

(declare-fun m!4958363 () Bool)

(assert (=> d!1284198 m!4958363))

(assert (=> b!4348917 m!4958147))

(assert (=> b!4348734 d!1284198))

(declare-fun b!4348932 () Bool)

(declare-fun e!2706299 () List!48979)

(assert (=> b!4348932 (= e!2706299 (t!355899 lt!1563092))))

(declare-fun d!1284202 () Bool)

(declare-fun lt!1563239 () List!48979)

(assert (=> d!1284202 (not (containsKey!624 lt!1563239 key!3918))))

(assert (=> d!1284202 (= lt!1563239 e!2706299)))

(declare-fun c!739287 () Bool)

(assert (=> d!1284202 (= c!739287 (and ((_ is Cons!48855) lt!1563092) (= (_1!27401 (h!54386 lt!1563092)) key!3918)))))

(assert (=> d!1284202 (noDuplicateKeys!461 lt!1563092)))

(assert (=> d!1284202 (= (removePairForKey!431 lt!1563092 key!3918) lt!1563239)))

(declare-fun b!4348935 () Bool)

(declare-fun e!2706298 () List!48979)

(assert (=> b!4348935 (= e!2706298 Nil!48855)))

(declare-fun b!4348934 () Bool)

(assert (=> b!4348934 (= e!2706298 (Cons!48855 (h!54386 lt!1563092) (removePairForKey!431 (t!355899 lt!1563092) key!3918)))))

(declare-fun b!4348933 () Bool)

(assert (=> b!4348933 (= e!2706299 e!2706298)))

(declare-fun c!739288 () Bool)

(assert (=> b!4348933 (= c!739288 ((_ is Cons!48855) lt!1563092))))

(assert (= (and d!1284202 c!739287) b!4348932))

(assert (= (and d!1284202 (not c!739287)) b!4348933))

(assert (= (and b!4348933 c!739288) b!4348934))

(assert (= (and b!4348933 (not c!739288)) b!4348935))

(declare-fun m!4958371 () Bool)

(assert (=> d!1284202 m!4958371))

(declare-fun m!4958373 () Bool)

(assert (=> d!1284202 m!4958373))

(declare-fun m!4958375 () Bool)

(assert (=> b!4348934 m!4958375))

(assert (=> b!4348734 d!1284202))

(declare-fun d!1284206 () Bool)

(declare-fun lt!1563243 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7674 (List!48980) (InoxSet tuple2!48216))

(assert (=> d!1284206 (= lt!1563243 (select (content!7674 (toList!2905 lm!1707)) lt!1563090))))

(declare-fun e!2706314 () Bool)

(assert (=> d!1284206 (= lt!1563243 e!2706314)))

(declare-fun res!1786373 () Bool)

(assert (=> d!1284206 (=> (not res!1786373) (not e!2706314))))

(assert (=> d!1284206 (= res!1786373 ((_ is Cons!48856) (toList!2905 lm!1707)))))

(assert (=> d!1284206 (= (contains!11018 (toList!2905 lm!1707) lt!1563090) lt!1563243)))

(declare-fun b!4348949 () Bool)

(declare-fun e!2706313 () Bool)

(assert (=> b!4348949 (= e!2706314 e!2706313)))

(declare-fun res!1786374 () Bool)

(assert (=> b!4348949 (=> res!1786374 e!2706313)))

(assert (=> b!4348949 (= res!1786374 (= (h!54387 (toList!2905 lm!1707)) lt!1563090))))

(declare-fun b!4348950 () Bool)

(assert (=> b!4348950 (= e!2706313 (contains!11018 (t!355900 (toList!2905 lm!1707)) lt!1563090))))

(assert (= (and d!1284206 res!1786373) b!4348949))

(assert (= (and b!4348949 (not res!1786374)) b!4348950))

(declare-fun m!4958387 () Bool)

(assert (=> d!1284206 m!4958387))

(declare-fun m!4958389 () Bool)

(assert (=> d!1284206 m!4958389))

(declare-fun m!4958391 () Bool)

(assert (=> b!4348950 m!4958391))

(assert (=> b!4348734 d!1284206))

(declare-fun bs!628380 () Bool)

(declare-fun d!1284214 () Bool)

(assert (= bs!628380 (and d!1284214 start!419992)))

(declare-fun lambda!138947 () Int)

(assert (=> bs!628380 (not (= lambda!138947 lambda!138921))))

(declare-fun bs!628381 () Bool)

(assert (= bs!628381 (and d!1284214 d!1284146)))

(assert (=> bs!628381 (not (= lambda!138947 lambda!138930))))

(declare-fun bs!628382 () Bool)

(assert (= bs!628382 (and d!1284214 d!1284156)))

(assert (=> bs!628382 (not (= lambda!138947 lambda!138933))))

(declare-fun bs!628383 () Bool)

(assert (= bs!628383 (and d!1284214 d!1284174)))

(assert (=> bs!628383 (not (= lambda!138947 lambda!138938))))

(assert (=> d!1284214 true))

(assert (=> d!1284214 (= (allKeysSameHashInMap!565 lm!1707 hashF!1247) (forall!9063 (toList!2905 lm!1707) lambda!138947))))

(declare-fun bs!628384 () Bool)

(assert (= bs!628384 d!1284214))

(declare-fun m!4958395 () Bool)

(assert (=> bs!628384 m!4958395))

(assert (=> b!4348725 d!1284214))

(declare-fun d!1284216 () Bool)

(declare-fun res!1786375 () Bool)

(declare-fun e!2706320 () Bool)

(assert (=> d!1284216 (=> res!1786375 e!2706320)))

(assert (=> d!1284216 (= res!1786375 ((_ is Nil!48856) (toList!2905 lm!1707)))))

(assert (=> d!1284216 (= (forall!9063 (toList!2905 lm!1707) lambda!138921) e!2706320)))

(declare-fun b!4348966 () Bool)

(declare-fun e!2706321 () Bool)

(assert (=> b!4348966 (= e!2706320 e!2706321)))

(declare-fun res!1786376 () Bool)

(assert (=> b!4348966 (=> (not res!1786376) (not e!2706321))))

(assert (=> b!4348966 (= res!1786376 (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 lm!1707))))))

(declare-fun b!4348967 () Bool)

(assert (=> b!4348967 (= e!2706321 (forall!9063 (t!355900 (toList!2905 lm!1707)) lambda!138921))))

(assert (= (and d!1284216 (not res!1786375)) b!4348966))

(assert (= (and b!4348966 res!1786376) b!4348967))

(declare-fun b_lambda!130325 () Bool)

(assert (=> (not b_lambda!130325) (not b!4348966)))

(declare-fun m!4958397 () Bool)

(assert (=> b!4348966 m!4958397))

(declare-fun m!4958399 () Bool)

(assert (=> b!4348967 m!4958399))

(assert (=> start!419992 d!1284216))

(declare-fun d!1284218 () Bool)

(assert (=> d!1284218 (= (inv!64406 lm!1707) (isStrictlySorted!84 (toList!2905 lm!1707)))))

(declare-fun bs!628390 () Bool)

(assert (= bs!628390 d!1284218))

(assert (=> bs!628390 m!4958363))

(assert (=> start!419992 d!1284218))

(assert (=> b!4348724 d!1284190))

(declare-fun d!1284230 () Bool)

(declare-fun e!2706325 () Bool)

(assert (=> d!1284230 e!2706325))

(declare-fun res!1786381 () Bool)

(assert (=> d!1284230 (=> (not res!1786381) (not e!2706325))))

(declare-fun lt!1563254 () ListLongMap!1555)

(assert (=> d!1284230 (= res!1786381 (contains!11016 lt!1563254 (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun lt!1563255 () List!48980)

(assert (=> d!1284230 (= lt!1563254 (ListLongMap!1556 lt!1563255))))

(declare-fun lt!1563253 () Unit!70847)

(declare-fun lt!1563252 () Unit!70847)

(assert (=> d!1284230 (= lt!1563253 lt!1563252)))

(assert (=> d!1284230 (= (getValueByKey!414 lt!1563255 (_1!27402 (tuple2!48217 hash!377 newBucket!200))) (Some!10427 (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun lemmaContainsTupThenGetReturnValue!192 (List!48980 (_ BitVec 64) List!48979) Unit!70847)

(assert (=> d!1284230 (= lt!1563252 (lemmaContainsTupThenGetReturnValue!192 lt!1563255 (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun insertStrictlySorted!115 (List!48980 (_ BitVec 64) List!48979) List!48980)

(assert (=> d!1284230 (= lt!1563255 (insertStrictlySorted!115 (toList!2905 lm!1707) (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))

(assert (=> d!1284230 (= (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200)) lt!1563254)))

(declare-fun b!4348973 () Bool)

(declare-fun res!1786382 () Bool)

(assert (=> b!4348973 (=> (not res!1786382) (not e!2706325))))

(assert (=> b!4348973 (= res!1786382 (= (getValueByKey!414 (toList!2905 lt!1563254) (_1!27402 (tuple2!48217 hash!377 newBucket!200))) (Some!10427 (_2!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(declare-fun b!4348974 () Bool)

(assert (=> b!4348974 (= e!2706325 (contains!11018 (toList!2905 lt!1563254) (tuple2!48217 hash!377 newBucket!200)))))

(assert (= (and d!1284230 res!1786381) b!4348973))

(assert (= (and b!4348973 res!1786382) b!4348974))

(declare-fun m!4958409 () Bool)

(assert (=> d!1284230 m!4958409))

(declare-fun m!4958411 () Bool)

(assert (=> d!1284230 m!4958411))

(declare-fun m!4958413 () Bool)

(assert (=> d!1284230 m!4958413))

(declare-fun m!4958415 () Bool)

(assert (=> d!1284230 m!4958415))

(declare-fun m!4958417 () Bool)

(assert (=> b!4348973 m!4958417))

(declare-fun m!4958419 () Bool)

(assert (=> b!4348974 m!4958419))

(assert (=> b!4348724 d!1284230))

(declare-fun d!1284232 () Bool)

(assert (=> d!1284232 (forall!9063 (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200))) lambda!138921)))

(declare-fun lt!1563258 () Unit!70847)

(declare-fun choose!26726 (ListLongMap!1555 Int (_ BitVec 64) List!48979) Unit!70847)

(assert (=> d!1284232 (= lt!1563258 (choose!26726 lm!1707 lambda!138921 hash!377 newBucket!200))))

(declare-fun e!2706328 () Bool)

(assert (=> d!1284232 e!2706328))

(declare-fun res!1786385 () Bool)

(assert (=> d!1284232 (=> (not res!1786385) (not e!2706328))))

(assert (=> d!1284232 (= res!1786385 (forall!9063 (toList!2905 lm!1707) lambda!138921))))

(assert (=> d!1284232 (= (addValidProp!115 lm!1707 lambda!138921 hash!377 newBucket!200) lt!1563258)))

(declare-fun b!4348978 () Bool)

(assert (=> b!4348978 (= e!2706328 (dynLambda!20605 lambda!138921 (tuple2!48217 hash!377 newBucket!200)))))

(assert (= (and d!1284232 res!1786385) b!4348978))

(declare-fun b_lambda!130335 () Bool)

(assert (=> (not b_lambda!130335) (not b!4348978)))

(assert (=> d!1284232 m!4958127))

(declare-fun m!4958421 () Bool)

(assert (=> d!1284232 m!4958421))

(declare-fun m!4958423 () Bool)

(assert (=> d!1284232 m!4958423))

(assert (=> d!1284232 m!4958099))

(declare-fun m!4958425 () Bool)

(assert (=> b!4348978 m!4958425))

(assert (=> b!4348724 d!1284232))

(assert (=> b!4348724 d!1284216))

(declare-fun b!4348983 () Bool)

(declare-fun e!2706331 () Bool)

(declare-fun tp!1329758 () Bool)

(declare-fun tp!1329759 () Bool)

(assert (=> b!4348983 (= e!2706331 (and tp!1329758 tp!1329759))))

(assert (=> b!4348723 (= tp!1329743 e!2706331)))

(assert (= (and b!4348723 ((_ is Cons!48856) (toList!2905 lm!1707))) b!4348983))

(declare-fun b!4348988 () Bool)

(declare-fun e!2706334 () Bool)

(declare-fun tp!1329762 () Bool)

(assert (=> b!4348988 (= e!2706334 (and tp_is_empty!25081 tp_is_empty!25083 tp!1329762))))

(assert (=> b!4348728 (= tp!1329744 e!2706334)))

(assert (= (and b!4348728 ((_ is Cons!48855) (t!355899 newBucket!200))) b!4348988))

(declare-fun b_lambda!130337 () Bool)

(assert (= b_lambda!130309 (or start!419992 b_lambda!130337)))

(declare-fun bs!628391 () Bool)

(declare-fun d!1284234 () Bool)

(assert (= bs!628391 (and d!1284234 start!419992)))

(assert (=> bs!628391 (= (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 (tail!6949 lm!1707)))) (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 (tail!6949 lm!1707))))))))

(declare-fun m!4958427 () Bool)

(assert (=> bs!628391 m!4958427))

(assert (=> b!4348837 d!1284234))

(declare-fun b_lambda!130339 () Bool)

(assert (= b_lambda!130319 (or start!419992 b_lambda!130339)))

(declare-fun bs!628392 () Bool)

(declare-fun d!1284236 () Bool)

(assert (= bs!628392 (and d!1284236 start!419992)))

(assert (=> bs!628392 (= (dynLambda!20605 lambda!138921 lt!1563090) (noDuplicateKeys!461 (_2!27402 lt!1563090)))))

(declare-fun m!4958429 () Bool)

(assert (=> bs!628392 m!4958429))

(assert (=> d!1284194 d!1284236))

(declare-fun b_lambda!130341 () Bool)

(assert (= b_lambda!130335 (or start!419992 b_lambda!130341)))

(declare-fun bs!628393 () Bool)

(declare-fun d!1284238 () Bool)

(assert (= bs!628393 (and d!1284238 start!419992)))

(assert (=> bs!628393 (= (dynLambda!20605 lambda!138921 (tuple2!48217 hash!377 newBucket!200)) (noDuplicateKeys!461 (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun m!4958431 () Bool)

(assert (=> bs!628393 m!4958431))

(assert (=> b!4348978 d!1284238))

(declare-fun b_lambda!130343 () Bool)

(assert (= b_lambda!130325 (or start!419992 b_lambda!130343)))

(declare-fun bs!628394 () Bool)

(declare-fun d!1284240 () Bool)

(assert (= bs!628394 (and d!1284240 start!419992)))

(assert (=> bs!628394 (= (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 lm!1707))) (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lm!1707)))))))

(assert (=> bs!628394 m!4958277))

(assert (=> b!4348966 d!1284240))

(declare-fun b_lambda!130345 () Bool)

(assert (= b_lambda!130317 (or start!419992 b_lambda!130345)))

(declare-fun bs!628395 () Bool)

(declare-fun d!1284242 () Bool)

(assert (= bs!628395 (and d!1284242 start!419992)))

(assert (=> bs!628395 (= (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 lt!1563094))) (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lt!1563094)))))))

(declare-fun m!4958433 () Bool)

(assert (=> bs!628395 m!4958433))

(assert (=> b!4348897 d!1284242))

(check-sat (not b!4348983) (not b!4348752) (not b!4348917) (not d!1284198) (not b!4348772) (not b!4348855) (not b!4348815) (not b!4348874) (not b!4348950) (not b_lambda!130345) (not bs!628395) (not d!1284162) (not b!4348872) (not d!1284172) (not b!4348973) (not b!4348816) (not b!4348967) (not b!4348869) (not d!1284178) (not d!1284146) (not b_lambda!130343) (not b_lambda!130339) (not b!4348974) (not b!4348868) (not d!1284230) (not b!4348813) tp_is_empty!25081 (not d!1284188) (not b!4348871) (not bs!628391) (not d!1284206) (not b!4348988) (not b!4348754) (not bm!302272) (not b_lambda!130341) (not d!1284192) (not d!1284214) (not bm!302273) tp_is_empty!25083 (not b!4348892) (not d!1284144) (not d!1284218) (not d!1284132) (not b!4348870) (not bs!628394) (not d!1284194) (not b!4348819) (not b!4348814) (not b!4348771) (not d!1284202) (not bs!628392) (not b!4348934) (not b!4348898) (not b!4348818) (not d!1284232) (not d!1284174) (not b!4348838) (not d!1284156) (not b!4348873) (not b_lambda!130337) (not b!4348876) (not d!1284128) (not b!4348905) (not b!4348817) (not d!1284164) (not bs!628393) (not b!4348832))
(check-sat)
(get-model)

(declare-fun d!1284244 () Bool)

(declare-fun noDuplicatedKeys!109 (List!48979) Bool)

(assert (=> d!1284244 (= (invariantList!658 (toList!2906 lt!1563211)) (noDuplicatedKeys!109 (toList!2906 lt!1563211)))))

(declare-fun bs!628396 () Bool)

(assert (= bs!628396 d!1284244))

(declare-fun m!4958435 () Bool)

(assert (=> bs!628396 m!4958435))

(assert (=> d!1284174 d!1284244))

(declare-fun d!1284246 () Bool)

(declare-fun res!1786386 () Bool)

(declare-fun e!2706335 () Bool)

(assert (=> d!1284246 (=> res!1786386 e!2706335)))

(assert (=> d!1284246 (= res!1786386 ((_ is Nil!48856) (toList!2905 lm!1707)))))

(assert (=> d!1284246 (= (forall!9063 (toList!2905 lm!1707) lambda!138938) e!2706335)))

(declare-fun b!4348989 () Bool)

(declare-fun e!2706336 () Bool)

(assert (=> b!4348989 (= e!2706335 e!2706336)))

(declare-fun res!1786387 () Bool)

(assert (=> b!4348989 (=> (not res!1786387) (not e!2706336))))

(assert (=> b!4348989 (= res!1786387 (dynLambda!20605 lambda!138938 (h!54387 (toList!2905 lm!1707))))))

(declare-fun b!4348990 () Bool)

(assert (=> b!4348990 (= e!2706336 (forall!9063 (t!355900 (toList!2905 lm!1707)) lambda!138938))))

(assert (= (and d!1284246 (not res!1786386)) b!4348989))

(assert (= (and b!4348989 res!1786387) b!4348990))

(declare-fun b_lambda!130347 () Bool)

(assert (=> (not b_lambda!130347) (not b!4348989)))

(declare-fun m!4958437 () Bool)

(assert (=> b!4348989 m!4958437))

(declare-fun m!4958439 () Bool)

(assert (=> b!4348990 m!4958439))

(assert (=> d!1284174 d!1284246))

(declare-fun d!1284248 () Bool)

(declare-fun res!1786388 () Bool)

(declare-fun e!2706337 () Bool)

(assert (=> d!1284248 (=> res!1786388 e!2706337)))

(assert (=> d!1284248 (= res!1786388 ((_ is Nil!48856) (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200)))))))

(assert (=> d!1284248 (= (forall!9063 (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200))) lambda!138921) e!2706337)))

(declare-fun b!4348991 () Bool)

(declare-fun e!2706338 () Bool)

(assert (=> b!4348991 (= e!2706337 e!2706338)))

(declare-fun res!1786389 () Bool)

(assert (=> b!4348991 (=> (not res!1786389) (not e!2706338))))

(assert (=> b!4348991 (= res!1786389 (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200))))))))

(declare-fun b!4348992 () Bool)

(assert (=> b!4348992 (= e!2706338 (forall!9063 (t!355900 (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200)))) lambda!138921))))

(assert (= (and d!1284248 (not res!1786388)) b!4348991))

(assert (= (and b!4348991 res!1786389) b!4348992))

(declare-fun b_lambda!130349 () Bool)

(assert (=> (not b_lambda!130349) (not b!4348991)))

(declare-fun m!4958441 () Bool)

(assert (=> b!4348991 m!4958441))

(declare-fun m!4958443 () Bool)

(assert (=> b!4348992 m!4958443))

(assert (=> d!1284232 d!1284248))

(assert (=> d!1284232 d!1284230))

(declare-fun d!1284250 () Bool)

(assert (=> d!1284250 (forall!9063 (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200))) lambda!138921)))

(assert (=> d!1284250 true))

(declare-fun _$31!199 () Unit!70847)

(assert (=> d!1284250 (= (choose!26726 lm!1707 lambda!138921 hash!377 newBucket!200) _$31!199)))

(declare-fun bs!628397 () Bool)

(assert (= bs!628397 d!1284250))

(assert (=> bs!628397 m!4958127))

(assert (=> bs!628397 m!4958421))

(assert (=> d!1284232 d!1284250))

(assert (=> d!1284232 d!1284216))

(declare-fun bs!628403 () Bool)

(declare-fun b!4349032 () Bool)

(assert (= bs!628403 (and b!4349032 d!1284178)))

(declare-fun lambda!138976 () Int)

(assert (=> bs!628403 (not (= lambda!138976 lambda!138941))))

(assert (=> b!4349032 true))

(declare-fun bs!628404 () Bool)

(declare-fun b!4349033 () Bool)

(assert (= bs!628404 (and b!4349033 d!1284178)))

(declare-fun lambda!138977 () Int)

(assert (=> bs!628404 (not (= lambda!138977 lambda!138941))))

(declare-fun bs!628405 () Bool)

(assert (= bs!628405 (and b!4349033 b!4349032)))

(assert (=> bs!628405 (= lambda!138977 lambda!138976)))

(assert (=> b!4349033 true))

(declare-fun lambda!138978 () Int)

(assert (=> bs!628404 (not (= lambda!138978 lambda!138941))))

(declare-fun lt!1563331 () ListMap!2149)

(assert (=> bs!628405 (= (= lt!1563331 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138978 lambda!138976))))

(assert (=> b!4349033 (= (= lt!1563331 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138978 lambda!138977))))

(assert (=> b!4349033 true))

(declare-fun bs!628406 () Bool)

(declare-fun d!1284252 () Bool)

(assert (= bs!628406 (and d!1284252 d!1284178)))

(declare-fun lambda!138979 () Int)

(assert (=> bs!628406 (not (= lambda!138979 lambda!138941))))

(declare-fun bs!628407 () Bool)

(assert (= bs!628407 (and d!1284252 b!4349032)))

(declare-fun lt!1563315 () ListMap!2149)

(assert (=> bs!628407 (= (= lt!1563315 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138979 lambda!138976))))

(declare-fun bs!628408 () Bool)

(assert (= bs!628408 (and d!1284252 b!4349033)))

(assert (=> bs!628408 (= (= lt!1563315 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138979 lambda!138977))))

(assert (=> bs!628408 (= (= lt!1563315 lt!1563331) (= lambda!138979 lambda!138978))))

(assert (=> d!1284252 true))

(declare-fun b!4349030 () Bool)

(declare-fun e!2706365 () Bool)

(assert (=> b!4349030 (= e!2706365 (invariantList!658 (toList!2906 lt!1563315)))))

(declare-fun b!4349031 () Bool)

(declare-fun e!2706364 () Bool)

(declare-fun call!302286 () Bool)

(assert (=> b!4349031 (= e!2706364 call!302286)))

(declare-fun e!2706363 () ListMap!2149)

(assert (=> b!4349032 (= e!2706363 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707)))))))

(declare-fun lt!1563311 () Unit!70847)

(declare-fun call!302287 () Unit!70847)

(assert (=> b!4349032 (= lt!1563311 call!302287)))

(declare-fun call!302288 () Bool)

(assert (=> b!4349032 call!302288))

(declare-fun lt!1563330 () Unit!70847)

(assert (=> b!4349032 (= lt!1563330 lt!1563311)))

(assert (=> b!4349032 call!302286))

(declare-fun lt!1563320 () Unit!70847)

(declare-fun Unit!70859 () Unit!70847)

(assert (=> b!4349032 (= lt!1563320 Unit!70859)))

(assert (=> b!4349033 (= e!2706363 lt!1563331)))

(declare-fun lt!1563313 () ListMap!2149)

(declare-fun +!585 (ListMap!2149 tuple2!48214) ListMap!2149)

(assert (=> b!4349033 (= lt!1563313 (+!585 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707)))) (h!54386 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))))))))

(assert (=> b!4349033 (= lt!1563331 (addToMapMapFromBucket!165 (t!355899 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))) (+!585 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707)))) (h!54386 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))))))))

(declare-fun lt!1563317 () Unit!70847)

(assert (=> b!4349033 (= lt!1563317 call!302287)))

(assert (=> b!4349033 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) lambda!138977)))

(declare-fun lt!1563324 () Unit!70847)

(assert (=> b!4349033 (= lt!1563324 lt!1563317)))

(assert (=> b!4349033 (forall!9064 (toList!2906 lt!1563313) lambda!138978)))

(declare-fun lt!1563323 () Unit!70847)

(declare-fun Unit!70860 () Unit!70847)

(assert (=> b!4349033 (= lt!1563323 Unit!70860)))

(assert (=> b!4349033 (forall!9064 (t!355899 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))) lambda!138978)))

(declare-fun lt!1563329 () Unit!70847)

(declare-fun Unit!70861 () Unit!70847)

(assert (=> b!4349033 (= lt!1563329 Unit!70861)))

(declare-fun lt!1563322 () Unit!70847)

(declare-fun Unit!70862 () Unit!70847)

(assert (=> b!4349033 (= lt!1563322 Unit!70862)))

(declare-fun lt!1563314 () Unit!70847)

(declare-fun forallContained!1712 (List!48979 Int tuple2!48214) Unit!70847)

(assert (=> b!4349033 (= lt!1563314 (forallContained!1712 (toList!2906 lt!1563313) lambda!138978 (h!54386 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))))))))

(assert (=> b!4349033 (contains!11017 lt!1563313 (_1!27401 (h!54386 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))))))))

(declare-fun lt!1563312 () Unit!70847)

(declare-fun Unit!70863 () Unit!70847)

(assert (=> b!4349033 (= lt!1563312 Unit!70863)))

(assert (=> b!4349033 (contains!11017 lt!1563331 (_1!27401 (h!54386 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))))))))

(declare-fun lt!1563316 () Unit!70847)

(declare-fun Unit!70864 () Unit!70847)

(assert (=> b!4349033 (= lt!1563316 Unit!70864)))

(assert (=> b!4349033 (forall!9064 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))) lambda!138978)))

(declare-fun lt!1563325 () Unit!70847)

(declare-fun Unit!70865 () Unit!70847)

(assert (=> b!4349033 (= lt!1563325 Unit!70865)))

(assert (=> b!4349033 (forall!9064 (toList!2906 lt!1563313) lambda!138978)))

(declare-fun lt!1563318 () Unit!70847)

(declare-fun Unit!70866 () Unit!70847)

(assert (=> b!4349033 (= lt!1563318 Unit!70866)))

(declare-fun lt!1563319 () Unit!70847)

(declare-fun Unit!70867 () Unit!70847)

(assert (=> b!4349033 (= lt!1563319 Unit!70867)))

(declare-fun lt!1563328 () Unit!70847)

(declare-fun addForallContainsKeyThenBeforeAdding!48 (ListMap!2149 ListMap!2149 K!10220 V!10466) Unit!70847)

(assert (=> b!4349033 (= lt!1563328 (addForallContainsKeyThenBeforeAdding!48 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707)))) lt!1563331 (_1!27401 (h!54386 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))))) (_2!27401 (h!54386 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))))))))

(assert (=> b!4349033 call!302288))

(declare-fun lt!1563321 () Unit!70847)

(assert (=> b!4349033 (= lt!1563321 lt!1563328)))

(assert (=> b!4349033 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) lambda!138978)))

(declare-fun lt!1563326 () Unit!70847)

(declare-fun Unit!70868 () Unit!70847)

(assert (=> b!4349033 (= lt!1563326 Unit!70868)))

(declare-fun res!1786407 () Bool)

(assert (=> b!4349033 (= res!1786407 (forall!9064 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))) lambda!138978))))

(assert (=> b!4349033 (=> (not res!1786407) (not e!2706364))))

(assert (=> b!4349033 e!2706364))

(declare-fun lt!1563327 () Unit!70847)

(declare-fun Unit!70869 () Unit!70847)

(assert (=> b!4349033 (= lt!1563327 Unit!70869)))

(declare-fun bm!302281 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!48 (ListMap!2149) Unit!70847)

(assert (=> bm!302281 (= call!302287 (lemmaContainsAllItsOwnKeys!48 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))))))

(declare-fun bm!302282 () Bool)

(declare-fun c!739299 () Bool)

(assert (=> bm!302282 (= call!302286 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (ite c!739299 lambda!138976 lambda!138978)))))

(declare-fun bm!302283 () Bool)

(assert (=> bm!302283 (= call!302288 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (ite c!739299 lambda!138976 lambda!138978)))))

(assert (=> d!1284252 e!2706365))

(declare-fun res!1786408 () Bool)

(assert (=> d!1284252 (=> (not res!1786408) (not e!2706365))))

(assert (=> d!1284252 (= res!1786408 (forall!9064 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))) lambda!138979))))

(assert (=> d!1284252 (= lt!1563315 e!2706363)))

(assert (=> d!1284252 (= c!739299 ((_ is Nil!48855) (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))))))

(assert (=> d!1284252 (noDuplicateKeys!461 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))))))

(assert (=> d!1284252 (= (addToMapMapFromBucket!165 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707)))) (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) lt!1563315)))

(declare-fun b!4349034 () Bool)

(declare-fun res!1786406 () Bool)

(assert (=> b!4349034 (=> (not res!1786406) (not e!2706365))))

(assert (=> b!4349034 (= res!1786406 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) lambda!138979))))

(assert (= (and d!1284252 c!739299) b!4349032))

(assert (= (and d!1284252 (not c!739299)) b!4349033))

(assert (= (and b!4349033 res!1786407) b!4349031))

(assert (= (or b!4349032 b!4349033) bm!302281))

(assert (= (or b!4349032 b!4349031) bm!302282))

(assert (= (or b!4349032 b!4349033) bm!302283))

(assert (= (and d!1284252 res!1786408) b!4349034))

(assert (= (and b!4349034 res!1786406) b!4349030))

(declare-fun m!4958479 () Bool)

(assert (=> bm!302283 m!4958479))

(declare-fun m!4958481 () Bool)

(assert (=> b!4349030 m!4958481))

(assert (=> bm!302282 m!4958479))

(declare-fun m!4958483 () Bool)

(assert (=> b!4349034 m!4958483))

(assert (=> bm!302281 m!4958243))

(declare-fun m!4958485 () Bool)

(assert (=> bm!302281 m!4958485))

(declare-fun m!4958487 () Bool)

(assert (=> d!1284252 m!4958487))

(declare-fun m!4958489 () Bool)

(assert (=> d!1284252 m!4958489))

(declare-fun m!4958491 () Bool)

(assert (=> b!4349033 m!4958491))

(assert (=> b!4349033 m!4958243))

(declare-fun m!4958493 () Bool)

(assert (=> b!4349033 m!4958493))

(declare-fun m!4958495 () Bool)

(assert (=> b!4349033 m!4958495))

(declare-fun m!4958497 () Bool)

(assert (=> b!4349033 m!4958497))

(declare-fun m!4958499 () Bool)

(assert (=> b!4349033 m!4958499))

(declare-fun m!4958501 () Bool)

(assert (=> b!4349033 m!4958501))

(declare-fun m!4958503 () Bool)

(assert (=> b!4349033 m!4958503))

(declare-fun m!4958505 () Bool)

(assert (=> b!4349033 m!4958505))

(declare-fun m!4958507 () Bool)

(assert (=> b!4349033 m!4958507))

(declare-fun m!4958509 () Bool)

(assert (=> b!4349033 m!4958509))

(assert (=> b!4349033 m!4958243))

(assert (=> b!4349033 m!4958499))

(declare-fun m!4958511 () Bool)

(assert (=> b!4349033 m!4958511))

(assert (=> b!4349033 m!4958495))

(assert (=> b!4349033 m!4958507))

(assert (=> b!4348855 d!1284252))

(declare-fun bs!628409 () Bool)

(declare-fun d!1284276 () Bool)

(assert (= bs!628409 (and d!1284276 d!1284214)))

(declare-fun lambda!138980 () Int)

(assert (=> bs!628409 (not (= lambda!138980 lambda!138947))))

(declare-fun bs!628410 () Bool)

(assert (= bs!628410 (and d!1284276 d!1284146)))

(assert (=> bs!628410 (= lambda!138980 lambda!138930)))

(declare-fun bs!628411 () Bool)

(assert (= bs!628411 (and d!1284276 start!419992)))

(assert (=> bs!628411 (= lambda!138980 lambda!138921)))

(declare-fun bs!628412 () Bool)

(assert (= bs!628412 (and d!1284276 d!1284156)))

(assert (=> bs!628412 (= lambda!138980 lambda!138933)))

(declare-fun bs!628413 () Bool)

(assert (= bs!628413 (and d!1284276 d!1284174)))

(assert (=> bs!628413 (= lambda!138980 lambda!138938)))

(declare-fun lt!1563332 () ListMap!2149)

(assert (=> d!1284276 (invariantList!658 (toList!2906 lt!1563332))))

(declare-fun e!2706366 () ListMap!2149)

(assert (=> d!1284276 (= lt!1563332 e!2706366)))

(declare-fun c!739300 () Bool)

(assert (=> d!1284276 (= c!739300 ((_ is Cons!48856) (t!355900 (t!355900 (toList!2905 lm!1707)))))))

(assert (=> d!1284276 (forall!9063 (t!355900 (t!355900 (toList!2905 lm!1707))) lambda!138980)))

(assert (=> d!1284276 (= (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707)))) lt!1563332)))

(declare-fun b!4349037 () Bool)

(assert (=> b!4349037 (= e!2706366 (addToMapMapFromBucket!165 (_2!27402 (h!54387 (t!355900 (t!355900 (toList!2905 lm!1707))))) (extractMap!520 (t!355900 (t!355900 (t!355900 (toList!2905 lm!1707)))))))))

(declare-fun b!4349038 () Bool)

(assert (=> b!4349038 (= e!2706366 (ListMap!2150 Nil!48855))))

(assert (= (and d!1284276 c!739300) b!4349037))

(assert (= (and d!1284276 (not c!739300)) b!4349038))

(declare-fun m!4958513 () Bool)

(assert (=> d!1284276 m!4958513))

(declare-fun m!4958515 () Bool)

(assert (=> d!1284276 m!4958515))

(declare-fun m!4958517 () Bool)

(assert (=> b!4349037 m!4958517))

(assert (=> b!4349037 m!4958517))

(declare-fun m!4958519 () Bool)

(assert (=> b!4349037 m!4958519))

(assert (=> b!4348855 d!1284276))

(declare-fun d!1284278 () Bool)

(declare-fun res!1786413 () Bool)

(declare-fun e!2706371 () Bool)

(assert (=> d!1284278 (=> res!1786413 e!2706371)))

(assert (=> d!1284278 (= res!1786413 (or ((_ is Nil!48856) (toList!2905 lm!1707)) ((_ is Nil!48856) (t!355900 (toList!2905 lm!1707)))))))

(assert (=> d!1284278 (= (isStrictlySorted!84 (toList!2905 lm!1707)) e!2706371)))

(declare-fun b!4349043 () Bool)

(declare-fun e!2706372 () Bool)

(assert (=> b!4349043 (= e!2706371 e!2706372)))

(declare-fun res!1786414 () Bool)

(assert (=> b!4349043 (=> (not res!1786414) (not e!2706372))))

(assert (=> b!4349043 (= res!1786414 (bvslt (_1!27402 (h!54387 (toList!2905 lm!1707))) (_1!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))))))

(declare-fun b!4349044 () Bool)

(assert (=> b!4349044 (= e!2706372 (isStrictlySorted!84 (t!355900 (toList!2905 lm!1707))))))

(assert (= (and d!1284278 (not res!1786413)) b!4349043))

(assert (= (and b!4349043 res!1786414) b!4349044))

(declare-fun m!4958521 () Bool)

(assert (=> b!4349044 m!4958521))

(assert (=> d!1284218 d!1284278))

(declare-fun d!1284280 () Bool)

(declare-fun res!1786415 () Bool)

(declare-fun e!2706373 () Bool)

(assert (=> d!1284280 (=> res!1786415 e!2706373)))

(assert (=> d!1284280 (= res!1786415 ((_ is Nil!48856) (t!355900 (toList!2905 lm!1707))))))

(assert (=> d!1284280 (= (forall!9063 (t!355900 (toList!2905 lm!1707)) lambda!138921) e!2706373)))

(declare-fun b!4349045 () Bool)

(declare-fun e!2706374 () Bool)

(assert (=> b!4349045 (= e!2706373 e!2706374)))

(declare-fun res!1786416 () Bool)

(assert (=> b!4349045 (=> (not res!1786416) (not e!2706374))))

(assert (=> b!4349045 (= res!1786416 (dynLambda!20605 lambda!138921 (h!54387 (t!355900 (toList!2905 lm!1707)))))))

(declare-fun b!4349046 () Bool)

(assert (=> b!4349046 (= e!2706374 (forall!9063 (t!355900 (t!355900 (toList!2905 lm!1707))) lambda!138921))))

(assert (= (and d!1284280 (not res!1786415)) b!4349045))

(assert (= (and b!4349045 res!1786416) b!4349046))

(declare-fun b_lambda!130355 () Bool)

(assert (=> (not b_lambda!130355) (not b!4349045)))

(declare-fun m!4958523 () Bool)

(assert (=> b!4349045 m!4958523))

(declare-fun m!4958525 () Bool)

(assert (=> b!4349046 m!4958525))

(assert (=> b!4348967 d!1284280))

(assert (=> d!1284156 d!1284138))

(assert (=> d!1284156 d!1284162))

(declare-fun d!1284282 () Bool)

(assert (=> d!1284282 (not (containsKey!624 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))) key!3918))))

(assert (=> d!1284282 true))

(declare-fun _$39!247 () Unit!70847)

(assert (=> d!1284282 (= (choose!26720 lm!1707 key!3918 (_1!27402 (h!54387 (toList!2905 lm!1707))) hashF!1247) _$39!247)))

(declare-fun bs!628414 () Bool)

(assert (= bs!628414 d!1284282))

(assert (=> bs!628414 m!4958091))

(assert (=> bs!628414 m!4958091))

(assert (=> bs!628414 m!4958093))

(assert (=> d!1284156 d!1284282))

(declare-fun d!1284284 () Bool)

(declare-fun res!1786417 () Bool)

(declare-fun e!2706375 () Bool)

(assert (=> d!1284284 (=> res!1786417 e!2706375)))

(assert (=> d!1284284 (= res!1786417 ((_ is Nil!48856) (toList!2905 lm!1707)))))

(assert (=> d!1284284 (= (forall!9063 (toList!2905 lm!1707) lambda!138933) e!2706375)))

(declare-fun b!4349047 () Bool)

(declare-fun e!2706376 () Bool)

(assert (=> b!4349047 (= e!2706375 e!2706376)))

(declare-fun res!1786418 () Bool)

(assert (=> b!4349047 (=> (not res!1786418) (not e!2706376))))

(assert (=> b!4349047 (= res!1786418 (dynLambda!20605 lambda!138933 (h!54387 (toList!2905 lm!1707))))))

(declare-fun b!4349048 () Bool)

(assert (=> b!4349048 (= e!2706376 (forall!9063 (t!355900 (toList!2905 lm!1707)) lambda!138933))))

(assert (= (and d!1284284 (not res!1786417)) b!4349047))

(assert (= (and b!4349047 res!1786418) b!4349048))

(declare-fun b_lambda!130357 () Bool)

(assert (=> (not b_lambda!130357) (not b!4349047)))

(declare-fun m!4958527 () Bool)

(assert (=> b!4349047 m!4958527))

(declare-fun m!4958529 () Bool)

(assert (=> b!4349048 m!4958529))

(assert (=> d!1284156 d!1284284))

(declare-fun bs!628415 () Bool)

(declare-fun b!4349051 () Bool)

(assert (= bs!628415 (and b!4349051 b!4349033)))

(declare-fun lambda!138981 () Int)

(assert (=> bs!628415 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138981 lambda!138977))))

(declare-fun bs!628416 () Bool)

(assert (= bs!628416 (and b!4349051 d!1284252)))

(assert (=> bs!628416 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) lt!1563315) (= lambda!138981 lambda!138979))))

(declare-fun bs!628417 () Bool)

(assert (= bs!628417 (and b!4349051 b!4349032)))

(assert (=> bs!628417 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138981 lambda!138976))))

(assert (=> bs!628415 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) lt!1563331) (= lambda!138981 lambda!138978))))

(declare-fun bs!628418 () Bool)

(assert (= bs!628418 (and b!4349051 d!1284178)))

(assert (=> bs!628418 (not (= lambda!138981 lambda!138941))))

(assert (=> b!4349051 true))

(declare-fun bs!628419 () Bool)

(declare-fun b!4349052 () Bool)

(assert (= bs!628419 (and b!4349052 b!4349033)))

(declare-fun lambda!138982 () Int)

(assert (=> bs!628419 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138982 lambda!138977))))

(declare-fun bs!628420 () Bool)

(assert (= bs!628420 (and b!4349052 d!1284252)))

(assert (=> bs!628420 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) lt!1563315) (= lambda!138982 lambda!138979))))

(declare-fun bs!628421 () Bool)

(assert (= bs!628421 (and b!4349052 b!4349051)))

(assert (=> bs!628421 (= lambda!138982 lambda!138981)))

(declare-fun bs!628422 () Bool)

(assert (= bs!628422 (and b!4349052 b!4349032)))

(assert (=> bs!628422 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138982 lambda!138976))))

(assert (=> bs!628419 (= (= (extractMap!520 (t!355900 (toList!2905 lm!1707))) lt!1563331) (= lambda!138982 lambda!138978))))

(declare-fun bs!628423 () Bool)

(assert (= bs!628423 (and b!4349052 d!1284178)))

(assert (=> bs!628423 (not (= lambda!138982 lambda!138941))))

(assert (=> b!4349052 true))

(declare-fun lt!1563353 () ListMap!2149)

(declare-fun lambda!138983 () Int)

(assert (=> bs!628419 (= (= lt!1563353 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138983 lambda!138977))))

(assert (=> bs!628420 (= (= lt!1563353 lt!1563315) (= lambda!138983 lambda!138979))))

(assert (=> b!4349052 (= (= lt!1563353 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) (= lambda!138983 lambda!138982))))

(assert (=> bs!628421 (= (= lt!1563353 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) (= lambda!138983 lambda!138981))))

(assert (=> bs!628422 (= (= lt!1563353 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138983 lambda!138976))))

(assert (=> bs!628419 (= (= lt!1563353 lt!1563331) (= lambda!138983 lambda!138978))))

(assert (=> bs!628423 (not (= lambda!138983 lambda!138941))))

(assert (=> b!4349052 true))

(declare-fun bs!628424 () Bool)

(declare-fun d!1284286 () Bool)

(assert (= bs!628424 (and d!1284286 b!4349033)))

(declare-fun lt!1563337 () ListMap!2149)

(declare-fun lambda!138984 () Int)

(assert (=> bs!628424 (= (= lt!1563337 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138984 lambda!138977))))

(declare-fun bs!628425 () Bool)

(assert (= bs!628425 (and d!1284286 d!1284252)))

(assert (=> bs!628425 (= (= lt!1563337 lt!1563315) (= lambda!138984 lambda!138979))))

(declare-fun bs!628426 () Bool)

(assert (= bs!628426 (and d!1284286 b!4349052)))

(assert (=> bs!628426 (= (= lt!1563337 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) (= lambda!138984 lambda!138982))))

(declare-fun bs!628427 () Bool)

(assert (= bs!628427 (and d!1284286 b!4349051)))

(assert (=> bs!628427 (= (= lt!1563337 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) (= lambda!138984 lambda!138981))))

(declare-fun bs!628428 () Bool)

(assert (= bs!628428 (and d!1284286 b!4349032)))

(assert (=> bs!628428 (= (= lt!1563337 (extractMap!520 (t!355900 (t!355900 (toList!2905 lm!1707))))) (= lambda!138984 lambda!138976))))

(assert (=> bs!628424 (= (= lt!1563337 lt!1563331) (= lambda!138984 lambda!138978))))

(declare-fun bs!628429 () Bool)

(assert (= bs!628429 (and d!1284286 d!1284178)))

(assert (=> bs!628429 (not (= lambda!138984 lambda!138941))))

(assert (=> bs!628426 (= (= lt!1563337 lt!1563353) (= lambda!138984 lambda!138983))))

(assert (=> d!1284286 true))

(declare-fun b!4349049 () Bool)

(declare-fun e!2706379 () Bool)

(assert (=> b!4349049 (= e!2706379 (invariantList!658 (toList!2906 lt!1563337)))))

(declare-fun b!4349050 () Bool)

(declare-fun e!2706378 () Bool)

(declare-fun call!302289 () Bool)

(assert (=> b!4349050 (= e!2706378 call!302289)))

(declare-fun e!2706377 () ListMap!2149)

(assert (=> b!4349051 (= e!2706377 (extractMap!520 (t!355900 (toList!2905 lm!1707))))))

(declare-fun lt!1563333 () Unit!70847)

(declare-fun call!302290 () Unit!70847)

(assert (=> b!4349051 (= lt!1563333 call!302290)))

(declare-fun call!302291 () Bool)

(assert (=> b!4349051 call!302291))

(declare-fun lt!1563352 () Unit!70847)

(assert (=> b!4349051 (= lt!1563352 lt!1563333)))

(assert (=> b!4349051 call!302289))

(declare-fun lt!1563342 () Unit!70847)

(declare-fun Unit!70870 () Unit!70847)

(assert (=> b!4349051 (= lt!1563342 Unit!70870)))

(assert (=> b!4349052 (= e!2706377 lt!1563353)))

(declare-fun lt!1563335 () ListMap!2149)

(assert (=> b!4349052 (= lt!1563335 (+!585 (extractMap!520 (t!355900 (toList!2905 lm!1707))) (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707))))))))

(assert (=> b!4349052 (= lt!1563353 (addToMapMapFromBucket!165 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707)))) (+!585 (extractMap!520 (t!355900 (toList!2905 lm!1707))) (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707)))))))))

(declare-fun lt!1563339 () Unit!70847)

(assert (=> b!4349052 (= lt!1563339 call!302290)))

(assert (=> b!4349052 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) lambda!138982)))

(declare-fun lt!1563346 () Unit!70847)

(assert (=> b!4349052 (= lt!1563346 lt!1563339)))

(assert (=> b!4349052 (forall!9064 (toList!2906 lt!1563335) lambda!138983)))

(declare-fun lt!1563345 () Unit!70847)

(declare-fun Unit!70871 () Unit!70847)

(assert (=> b!4349052 (= lt!1563345 Unit!70871)))

(assert (=> b!4349052 (forall!9064 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707)))) lambda!138983)))

(declare-fun lt!1563351 () Unit!70847)

(declare-fun Unit!70872 () Unit!70847)

(assert (=> b!4349052 (= lt!1563351 Unit!70872)))

(declare-fun lt!1563344 () Unit!70847)

(declare-fun Unit!70873 () Unit!70847)

(assert (=> b!4349052 (= lt!1563344 Unit!70873)))

(declare-fun lt!1563336 () Unit!70847)

(assert (=> b!4349052 (= lt!1563336 (forallContained!1712 (toList!2906 lt!1563335) lambda!138983 (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707))))))))

(assert (=> b!4349052 (contains!11017 lt!1563335 (_1!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707))))))))

(declare-fun lt!1563334 () Unit!70847)

(declare-fun Unit!70874 () Unit!70847)

(assert (=> b!4349052 (= lt!1563334 Unit!70874)))

(assert (=> b!4349052 (contains!11017 lt!1563353 (_1!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707))))))))

(declare-fun lt!1563338 () Unit!70847)

(declare-fun Unit!70875 () Unit!70847)

(assert (=> b!4349052 (= lt!1563338 Unit!70875)))

(assert (=> b!4349052 (forall!9064 (_2!27402 (h!54387 (toList!2905 lm!1707))) lambda!138983)))

(declare-fun lt!1563347 () Unit!70847)

(declare-fun Unit!70876 () Unit!70847)

(assert (=> b!4349052 (= lt!1563347 Unit!70876)))

(assert (=> b!4349052 (forall!9064 (toList!2906 lt!1563335) lambda!138983)))

(declare-fun lt!1563340 () Unit!70847)

(declare-fun Unit!70877 () Unit!70847)

(assert (=> b!4349052 (= lt!1563340 Unit!70877)))

(declare-fun lt!1563341 () Unit!70847)

(declare-fun Unit!70878 () Unit!70847)

(assert (=> b!4349052 (= lt!1563341 Unit!70878)))

(declare-fun lt!1563350 () Unit!70847)

(assert (=> b!4349052 (= lt!1563350 (addForallContainsKeyThenBeforeAdding!48 (extractMap!520 (t!355900 (toList!2905 lm!1707))) lt!1563353 (_1!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707))))) (_2!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707)))))))))

(assert (=> b!4349052 call!302291))

(declare-fun lt!1563343 () Unit!70847)

(assert (=> b!4349052 (= lt!1563343 lt!1563350)))

(assert (=> b!4349052 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) lambda!138983)))

(declare-fun lt!1563348 () Unit!70847)

(declare-fun Unit!70879 () Unit!70847)

(assert (=> b!4349052 (= lt!1563348 Unit!70879)))

(declare-fun res!1786420 () Bool)

(assert (=> b!4349052 (= res!1786420 (forall!9064 (_2!27402 (h!54387 (toList!2905 lm!1707))) lambda!138983))))

(assert (=> b!4349052 (=> (not res!1786420) (not e!2706378))))

(assert (=> b!4349052 e!2706378))

(declare-fun lt!1563349 () Unit!70847)

(declare-fun Unit!70880 () Unit!70847)

(assert (=> b!4349052 (= lt!1563349 Unit!70880)))

(declare-fun bm!302284 () Bool)

(assert (=> bm!302284 (= call!302290 (lemmaContainsAllItsOwnKeys!48 (extractMap!520 (t!355900 (toList!2905 lm!1707)))))))

(declare-fun c!739301 () Bool)

(declare-fun bm!302285 () Bool)

(assert (=> bm!302285 (= call!302289 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) (ite c!739301 lambda!138981 lambda!138983)))))

(declare-fun bm!302286 () Bool)

(assert (=> bm!302286 (= call!302291 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) (ite c!739301 lambda!138981 lambda!138983)))))

(assert (=> d!1284286 e!2706379))

(declare-fun res!1786421 () Bool)

(assert (=> d!1284286 (=> (not res!1786421) (not e!2706379))))

(assert (=> d!1284286 (= res!1786421 (forall!9064 (_2!27402 (h!54387 (toList!2905 lm!1707))) lambda!138984))))

(assert (=> d!1284286 (= lt!1563337 e!2706377)))

(assert (=> d!1284286 (= c!739301 ((_ is Nil!48855) (_2!27402 (h!54387 (toList!2905 lm!1707)))))))

(assert (=> d!1284286 (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lm!1707))))))

(assert (=> d!1284286 (= (addToMapMapFromBucket!165 (_2!27402 (h!54387 (toList!2905 lm!1707))) (extractMap!520 (t!355900 (toList!2905 lm!1707)))) lt!1563337)))

(declare-fun b!4349053 () Bool)

(declare-fun res!1786419 () Bool)

(assert (=> b!4349053 (=> (not res!1786419) (not e!2706379))))

(assert (=> b!4349053 (= res!1786419 (forall!9064 (toList!2906 (extractMap!520 (t!355900 (toList!2905 lm!1707)))) lambda!138984))))

(assert (= (and d!1284286 c!739301) b!4349051))

(assert (= (and d!1284286 (not c!739301)) b!4349052))

(assert (= (and b!4349052 res!1786420) b!4349050))

(assert (= (or b!4349051 b!4349052) bm!302284))

(assert (= (or b!4349051 b!4349050) bm!302285))

(assert (= (or b!4349051 b!4349052) bm!302286))

(assert (= (and d!1284286 res!1786421) b!4349053))

(assert (= (and b!4349053 res!1786419) b!4349049))

(declare-fun m!4958531 () Bool)

(assert (=> bm!302286 m!4958531))

(declare-fun m!4958533 () Bool)

(assert (=> b!4349049 m!4958533))

(assert (=> bm!302285 m!4958531))

(declare-fun m!4958535 () Bool)

(assert (=> b!4349053 m!4958535))

(assert (=> bm!302284 m!4958081))

(declare-fun m!4958537 () Bool)

(assert (=> bm!302284 m!4958537))

(declare-fun m!4958539 () Bool)

(assert (=> d!1284286 m!4958539))

(assert (=> d!1284286 m!4958277))

(declare-fun m!4958541 () Bool)

(assert (=> b!4349052 m!4958541))

(assert (=> b!4349052 m!4958081))

(declare-fun m!4958543 () Bool)

(assert (=> b!4349052 m!4958543))

(declare-fun m!4958545 () Bool)

(assert (=> b!4349052 m!4958545))

(declare-fun m!4958547 () Bool)

(assert (=> b!4349052 m!4958547))

(declare-fun m!4958549 () Bool)

(assert (=> b!4349052 m!4958549))

(declare-fun m!4958551 () Bool)

(assert (=> b!4349052 m!4958551))

(declare-fun m!4958553 () Bool)

(assert (=> b!4349052 m!4958553))

(declare-fun m!4958555 () Bool)

(assert (=> b!4349052 m!4958555))

(declare-fun m!4958557 () Bool)

(assert (=> b!4349052 m!4958557))

(declare-fun m!4958559 () Bool)

(assert (=> b!4349052 m!4958559))

(assert (=> b!4349052 m!4958081))

(assert (=> b!4349052 m!4958549))

(declare-fun m!4958561 () Bool)

(assert (=> b!4349052 m!4958561))

(assert (=> b!4349052 m!4958545))

(assert (=> b!4349052 m!4958557))

(assert (=> b!4348876 d!1284286))

(assert (=> b!4348876 d!1284146))

(declare-fun d!1284288 () Bool)

(declare-fun res!1786422 () Bool)

(declare-fun e!2706380 () Bool)

(assert (=> d!1284288 (=> res!1786422 e!2706380)))

(assert (=> d!1284288 (= res!1786422 (and ((_ is Cons!48855) (t!355899 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))))) (= (_1!27401 (h!54386 (t!355899 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707))))))) key!3918)))))

(assert (=> d!1284288 (= (containsKey!624 (t!355899 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707))))) key!3918) e!2706380)))

(declare-fun b!4349054 () Bool)

(declare-fun e!2706381 () Bool)

(assert (=> b!4349054 (= e!2706380 e!2706381)))

(declare-fun res!1786423 () Bool)

(assert (=> b!4349054 (=> (not res!1786423) (not e!2706381))))

(assert (=> b!4349054 (= res!1786423 ((_ is Cons!48855) (t!355899 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))))))))

(declare-fun b!4349055 () Bool)

(assert (=> b!4349055 (= e!2706381 (containsKey!624 (t!355899 (t!355899 (apply!11313 lm!1707 (_1!27402 (h!54387 (toList!2905 lm!1707)))))) key!3918))))

(assert (= (and d!1284288 (not res!1786422)) b!4349054))

(assert (= (and b!4349054 res!1786423) b!4349055))

(declare-fun m!4958563 () Bool)

(assert (=> b!4349055 m!4958563))

(assert (=> b!4348832 d!1284288))

(declare-fun d!1284290 () Bool)

(declare-fun res!1786424 () Bool)

(declare-fun e!2706382 () Bool)

(assert (=> d!1284290 (=> res!1786424 e!2706382)))

(assert (=> d!1284290 (= res!1786424 (and ((_ is Cons!48855) (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707))))) (= (_1!27401 (h!54386 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707)))))) key!3918)))))

(assert (=> d!1284290 (= (containsKey!624 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707)))) key!3918) e!2706382)))

(declare-fun b!4349056 () Bool)

(declare-fun e!2706383 () Bool)

(assert (=> b!4349056 (= e!2706382 e!2706383)))

(declare-fun res!1786425 () Bool)

(assert (=> b!4349056 (=> (not res!1786425) (not e!2706383))))

(assert (=> b!4349056 (= res!1786425 ((_ is Cons!48855) (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707))))))))

(declare-fun b!4349057 () Bool)

(assert (=> b!4349057 (= e!2706383 (containsKey!624 (t!355899 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707))))) key!3918))))

(assert (= (and d!1284290 (not res!1786424)) b!4349056))

(assert (= (and b!4349056 res!1786425) b!4349057))

(declare-fun m!4958565 () Bool)

(assert (=> b!4349057 m!4958565))

(assert (=> b!4348892 d!1284290))

(declare-fun d!1284292 () Bool)

(declare-fun lt!1563354 () Bool)

(assert (=> d!1284292 (= lt!1563354 (select (content!7674 (toList!2905 lm!1707)) (tuple2!48217 hash!377 lt!1563092)))))

(declare-fun e!2706385 () Bool)

(assert (=> d!1284292 (= lt!1563354 e!2706385)))

(declare-fun res!1786426 () Bool)

(assert (=> d!1284292 (=> (not res!1786426) (not e!2706385))))

(assert (=> d!1284292 (= res!1786426 ((_ is Cons!48856) (toList!2905 lm!1707)))))

(assert (=> d!1284292 (= (contains!11018 (toList!2905 lm!1707) (tuple2!48217 hash!377 lt!1563092)) lt!1563354)))

(declare-fun b!4349058 () Bool)

(declare-fun e!2706384 () Bool)

(assert (=> b!4349058 (= e!2706385 e!2706384)))

(declare-fun res!1786427 () Bool)

(assert (=> b!4349058 (=> res!1786427 e!2706384)))

(assert (=> b!4349058 (= res!1786427 (= (h!54387 (toList!2905 lm!1707)) (tuple2!48217 hash!377 lt!1563092)))))

(declare-fun b!4349059 () Bool)

(assert (=> b!4349059 (= e!2706384 (contains!11018 (t!355900 (toList!2905 lm!1707)) (tuple2!48217 hash!377 lt!1563092)))))

(assert (= (and d!1284292 res!1786426) b!4349058))

(assert (= (and b!4349058 (not res!1786427)) b!4349059))

(assert (=> d!1284292 m!4958387))

(declare-fun m!4958567 () Bool)

(assert (=> d!1284292 m!4958567))

(declare-fun m!4958569 () Bool)

(assert (=> b!4349059 m!4958569))

(assert (=> d!1284198 d!1284292))

(declare-fun d!1284294 () Bool)

(assert (=> d!1284294 (contains!11018 (toList!2905 lm!1707) (tuple2!48217 hash!377 lt!1563092))))

(assert (=> d!1284294 true))

(declare-fun _$14!729 () Unit!70847)

(assert (=> d!1284294 (= (choose!26725 (toList!2905 lm!1707) hash!377 lt!1563092) _$14!729)))

(declare-fun bs!628430 () Bool)

(assert (= bs!628430 d!1284294))

(assert (=> bs!628430 m!4958359))

(assert (=> d!1284198 d!1284294))

(assert (=> d!1284198 d!1284278))

(declare-fun d!1284296 () Bool)

(declare-fun c!739304 () Bool)

(assert (=> d!1284296 (= c!739304 ((_ is Nil!48856) (toList!2905 lm!1707)))))

(declare-fun e!2706388 () (InoxSet tuple2!48216))

(assert (=> d!1284296 (= (content!7674 (toList!2905 lm!1707)) e!2706388)))

(declare-fun b!4349064 () Bool)

(assert (=> b!4349064 (= e!2706388 ((as const (Array tuple2!48216 Bool)) false))))

(declare-fun b!4349065 () Bool)

(assert (=> b!4349065 (= e!2706388 ((_ map or) (store ((as const (Array tuple2!48216 Bool)) false) (h!54387 (toList!2905 lm!1707)) true) (content!7674 (t!355900 (toList!2905 lm!1707)))))))

(assert (= (and d!1284296 c!739304) b!4349064))

(assert (= (and d!1284296 (not c!739304)) b!4349065))

(declare-fun m!4958571 () Bool)

(assert (=> b!4349065 m!4958571))

(declare-fun m!4958573 () Bool)

(assert (=> b!4349065 m!4958573))

(assert (=> d!1284206 d!1284296))

(declare-fun d!1284298 () Bool)

(assert (=> d!1284298 (isDefined!7724 (getValueByKey!414 (toList!2905 lm!1707) hash!377))))

(declare-fun lt!1563357 () Unit!70847)

(declare-fun choose!26730 (List!48980 (_ BitVec 64)) Unit!70847)

(assert (=> d!1284298 (= lt!1563357 (choose!26730 (toList!2905 lm!1707) hash!377))))

(declare-fun e!2706391 () Bool)

(assert (=> d!1284298 e!2706391))

(declare-fun res!1786430 () Bool)

(assert (=> d!1284298 (=> (not res!1786430) (not e!2706391))))

(assert (=> d!1284298 (= res!1786430 (isStrictlySorted!84 (toList!2905 lm!1707)))))

(assert (=> d!1284298 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!327 (toList!2905 lm!1707) hash!377) lt!1563357)))

(declare-fun b!4349068 () Bool)

(assert (=> b!4349068 (= e!2706391 (containsKey!627 (toList!2905 lm!1707) hash!377))))

(assert (= (and d!1284298 res!1786430) b!4349068))

(assert (=> d!1284298 m!4958147))

(assert (=> d!1284298 m!4958147))

(assert (=> d!1284298 m!4958149))

(declare-fun m!4958575 () Bool)

(assert (=> d!1284298 m!4958575))

(assert (=> d!1284298 m!4958363))

(assert (=> b!4349068 m!4958143))

(assert (=> b!4348752 d!1284298))

(declare-fun d!1284300 () Bool)

(declare-fun isEmpty!28165 (Option!10428) Bool)

(assert (=> d!1284300 (= (isDefined!7724 (getValueByKey!414 (toList!2905 lm!1707) hash!377)) (not (isEmpty!28165 (getValueByKey!414 (toList!2905 lm!1707) hash!377))))))

(declare-fun bs!628431 () Bool)

(assert (= bs!628431 d!1284300))

(assert (=> bs!628431 m!4958147))

(declare-fun m!4958577 () Bool)

(assert (=> bs!628431 m!4958577))

(assert (=> b!4348752 d!1284300))

(declare-fun b!4349079 () Bool)

(declare-fun e!2706397 () Option!10428)

(assert (=> b!4349079 (= e!2706397 (getValueByKey!414 (t!355900 (toList!2905 lm!1707)) hash!377))))

(declare-fun d!1284302 () Bool)

(declare-fun c!739309 () Bool)

(assert (=> d!1284302 (= c!739309 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (= (_1!27402 (h!54387 (toList!2905 lm!1707))) hash!377)))))

(declare-fun e!2706396 () Option!10428)

(assert (=> d!1284302 (= (getValueByKey!414 (toList!2905 lm!1707) hash!377) e!2706396)))

(declare-fun b!4349077 () Bool)

(assert (=> b!4349077 (= e!2706396 (Some!10427 (_2!27402 (h!54387 (toList!2905 lm!1707)))))))

(declare-fun b!4349080 () Bool)

(assert (=> b!4349080 (= e!2706397 None!10427)))

(declare-fun b!4349078 () Bool)

(assert (=> b!4349078 (= e!2706396 e!2706397)))

(declare-fun c!739310 () Bool)

(assert (=> b!4349078 (= c!739310 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (not (= (_1!27402 (h!54387 (toList!2905 lm!1707))) hash!377))))))

(assert (= (and d!1284302 c!739309) b!4349077))

(assert (= (and d!1284302 (not c!739309)) b!4349078))

(assert (= (and b!4349078 c!739310) b!4349079))

(assert (= (and b!4349078 (not c!739310)) b!4349080))

(declare-fun m!4958579 () Bool)

(assert (=> b!4349079 m!4958579))

(assert (=> b!4348752 d!1284302))

(assert (=> b!4348754 d!1284300))

(assert (=> b!4348754 d!1284302))

(declare-fun d!1284304 () Bool)

(declare-fun res!1786431 () Bool)

(declare-fun e!2706398 () Bool)

(assert (=> d!1284304 (=> res!1786431 e!2706398)))

(assert (=> d!1284304 (= res!1786431 (not ((_ is Cons!48855) (_2!27402 (h!54387 (toList!2905 (tail!6949 lm!1707)))))))))

(assert (=> d!1284304 (= (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 (tail!6949 lm!1707))))) e!2706398)))

(declare-fun b!4349081 () Bool)

(declare-fun e!2706399 () Bool)

(assert (=> b!4349081 (= e!2706398 e!2706399)))

(declare-fun res!1786432 () Bool)

(assert (=> b!4349081 (=> (not res!1786432) (not e!2706399))))

(assert (=> b!4349081 (= res!1786432 (not (containsKey!624 (t!355899 (_2!27402 (h!54387 (toList!2905 (tail!6949 lm!1707))))) (_1!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 (tail!6949 lm!1707)))))))))))

(declare-fun b!4349082 () Bool)

(assert (=> b!4349082 (= e!2706399 (noDuplicateKeys!461 (t!355899 (_2!27402 (h!54387 (toList!2905 (tail!6949 lm!1707)))))))))

(assert (= (and d!1284304 (not res!1786431)) b!4349081))

(assert (= (and b!4349081 res!1786432) b!4349082))

(declare-fun m!4958581 () Bool)

(assert (=> b!4349081 m!4958581))

(declare-fun m!4958583 () Bool)

(assert (=> b!4349082 m!4958583))

(assert (=> bs!628391 d!1284304))

(declare-fun d!1284306 () Bool)

(assert (=> d!1284306 (isDefined!7725 (getValueByKey!415 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(declare-fun lt!1563360 () Unit!70847)

(declare-fun choose!26731 (List!48979 K!10220) Unit!70847)

(assert (=> d!1284306 (= lt!1563360 (choose!26731 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(assert (=> d!1284306 (invariantList!658 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))

(assert (=> d!1284306 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!328 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918) lt!1563360)))

(declare-fun bs!628432 () Bool)

(assert (= bs!628432 d!1284306))

(assert (=> bs!628432 m!4958279))

(assert (=> bs!628432 m!4958279))

(assert (=> bs!628432 m!4958281))

(declare-fun m!4958585 () Bool)

(assert (=> bs!628432 m!4958585))

(declare-fun m!4958587 () Bool)

(assert (=> bs!628432 m!4958587))

(assert (=> b!4348869 d!1284306))

(declare-fun d!1284308 () Bool)

(declare-fun isEmpty!28166 (Option!10429) Bool)

(assert (=> d!1284308 (= (isDefined!7725 (getValueByKey!415 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918)) (not (isEmpty!28166 (getValueByKey!415 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))))

(declare-fun bs!628433 () Bool)

(assert (= bs!628433 d!1284308))

(assert (=> bs!628433 m!4958279))

(declare-fun m!4958589 () Bool)

(assert (=> bs!628433 m!4958589))

(assert (=> b!4348869 d!1284308))

(declare-fun b!4349098 () Bool)

(declare-fun e!2706407 () Option!10429)

(assert (=> b!4349098 (= e!2706407 None!10428)))

(declare-fun b!4349096 () Bool)

(declare-fun e!2706406 () Option!10429)

(assert (=> b!4349096 (= e!2706406 e!2706407)))

(declare-fun c!739318 () Bool)

(assert (=> b!4349096 (= c!739318 (and ((_ is Cons!48855) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (not (= (_1!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) key!3918))))))

(declare-fun b!4349095 () Bool)

(assert (=> b!4349095 (= e!2706406 (Some!10428 (_2!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))))

(declare-fun d!1284310 () Bool)

(declare-fun c!739317 () Bool)

(assert (=> d!1284310 (= c!739317 (and ((_ is Cons!48855) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= (_1!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) key!3918)))))

(assert (=> d!1284310 (= (getValueByKey!415 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918) e!2706406)))

(declare-fun b!4349097 () Bool)

(assert (=> b!4349097 (= e!2706407 (getValueByKey!415 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) key!3918))))

(assert (= (and d!1284310 c!739317) b!4349095))

(assert (= (and d!1284310 (not c!739317)) b!4349096))

(assert (= (and b!4349096 c!739318) b!4349097))

(assert (= (and b!4349096 (not c!739318)) b!4349098))

(declare-fun m!4958591 () Bool)

(assert (=> b!4349097 m!4958591))

(assert (=> b!4348869 d!1284310))

(declare-fun d!1284312 () Bool)

(assert (=> d!1284312 (contains!11020 (getKeysList!106 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) key!3918)))

(declare-fun lt!1563387 () Unit!70847)

(declare-fun choose!26732 (List!48979 K!10220) Unit!70847)

(assert (=> d!1284312 (= lt!1563387 (choose!26732 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(assert (=> d!1284312 (invariantList!658 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))

(assert (=> d!1284312 (= (lemmaInListThenGetKeysListContains!103 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918) lt!1563387)))

(declare-fun bs!628434 () Bool)

(assert (= bs!628434 d!1284312))

(assert (=> bs!628434 m!4958295))

(assert (=> bs!628434 m!4958295))

(declare-fun m!4958593 () Bool)

(assert (=> bs!628434 m!4958593))

(declare-fun m!4958595 () Bool)

(assert (=> bs!628434 m!4958595))

(assert (=> bs!628434 m!4958587))

(assert (=> b!4348869 d!1284312))

(declare-fun e!2706409 () Option!10428)

(declare-fun b!4349101 () Bool)

(assert (=> b!4349101 (= e!2706409 (getValueByKey!414 (t!355900 (toList!2905 lt!1563254)) (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun c!739319 () Bool)

(declare-fun d!1284314 () Bool)

(assert (=> d!1284314 (= c!739319 (and ((_ is Cons!48856) (toList!2905 lt!1563254)) (= (_1!27402 (h!54387 (toList!2905 lt!1563254))) (_1!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(declare-fun e!2706408 () Option!10428)

(assert (=> d!1284314 (= (getValueByKey!414 (toList!2905 lt!1563254) (_1!27402 (tuple2!48217 hash!377 newBucket!200))) e!2706408)))

(declare-fun b!4349099 () Bool)

(assert (=> b!4349099 (= e!2706408 (Some!10427 (_2!27402 (h!54387 (toList!2905 lt!1563254)))))))

(declare-fun b!4349102 () Bool)

(assert (=> b!4349102 (= e!2706409 None!10427)))

(declare-fun b!4349100 () Bool)

(assert (=> b!4349100 (= e!2706408 e!2706409)))

(declare-fun c!739320 () Bool)

(assert (=> b!4349100 (= c!739320 (and ((_ is Cons!48856) (toList!2905 lt!1563254)) (not (= (_1!27402 (h!54387 (toList!2905 lt!1563254))) (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))))

(assert (= (and d!1284314 c!739319) b!4349099))

(assert (= (and d!1284314 (not c!739319)) b!4349100))

(assert (= (and b!4349100 c!739320) b!4349101))

(assert (= (and b!4349100 (not c!739320)) b!4349102))

(declare-fun m!4958597 () Bool)

(assert (=> b!4349101 m!4958597))

(assert (=> b!4348973 d!1284314))

(declare-fun d!1284316 () Bool)

(declare-fun choose!26733 (Hashable!4853 K!10220) (_ BitVec 64))

(assert (=> d!1284316 (= (hash!1462 hashF!1247 key!3918) (choose!26733 hashF!1247 key!3918))))

(declare-fun bs!628435 () Bool)

(assert (= bs!628435 d!1284316))

(declare-fun m!4958599 () Bool)

(assert (=> bs!628435 m!4958599))

(assert (=> d!1284188 d!1284316))

(declare-fun b!4349112 () Bool)

(assert (=> b!4349112 true))

(declare-fun d!1284318 () Bool)

(declare-fun e!2706416 () Bool)

(assert (=> d!1284318 e!2706416))

(declare-fun res!1786443 () Bool)

(assert (=> d!1284318 (=> (not res!1786443) (not e!2706416))))

(declare-fun lt!1563408 () List!48982)

(declare-fun noDuplicate!594 (List!48982) Bool)

(assert (=> d!1284318 (= res!1786443 (noDuplicate!594 lt!1563408))))

(assert (=> d!1284318 (= lt!1563408 (getKeysList!106 (toList!2906 lt!1563089)))))

(assert (=> d!1284318 (= (keys!16480 lt!1563089) lt!1563408)))

(declare-fun b!4349111 () Bool)

(declare-fun res!1786444 () Bool)

(assert (=> b!4349111 (=> (not res!1786444) (not e!2706416))))

(declare-fun length!44 (List!48982) Int)

(declare-fun length!45 (List!48979) Int)

(assert (=> b!4349111 (= res!1786444 (= (length!44 lt!1563408) (length!45 (toList!2906 lt!1563089))))))

(declare-fun res!1786445 () Bool)

(assert (=> b!4349112 (=> (not res!1786445) (not e!2706416))))

(declare-fun lambda!139013 () Int)

(declare-fun forall!9067 (List!48982 Int) Bool)

(assert (=> b!4349112 (= res!1786445 (forall!9067 lt!1563408 lambda!139013))))

(declare-fun lambda!139015 () Int)

(declare-fun b!4349113 () Bool)

(declare-fun content!7676 (List!48982) (InoxSet K!10220))

(declare-fun map!10621 (List!48979 Int) List!48982)

(assert (=> b!4349113 (= e!2706416 (= (content!7676 lt!1563408) (content!7676 (map!10621 (toList!2906 lt!1563089) lambda!139015))))))

(assert (= (and d!1284318 res!1786443) b!4349111))

(assert (= (and b!4349111 res!1786444) b!4349112))

(assert (= (and b!4349112 res!1786445) b!4349113))

(declare-fun m!4958601 () Bool)

(assert (=> d!1284318 m!4958601))

(assert (=> d!1284318 m!4958197))

(declare-fun m!4958603 () Bool)

(assert (=> b!4349111 m!4958603))

(declare-fun m!4958605 () Bool)

(assert (=> b!4349111 m!4958605))

(declare-fun m!4958607 () Bool)

(assert (=> b!4349112 m!4958607))

(declare-fun m!4958609 () Bool)

(assert (=> b!4349113 m!4958609))

(declare-fun m!4958611 () Bool)

(assert (=> b!4349113 m!4958611))

(assert (=> b!4349113 m!4958611))

(declare-fun m!4958613 () Bool)

(assert (=> b!4349113 m!4958613))

(assert (=> b!4348813 d!1284318))

(declare-fun d!1284320 () Bool)

(assert (=> d!1284320 (= (isDefined!7725 (getValueByKey!415 (toList!2906 lt!1563089) key!3918)) (not (isEmpty!28166 (getValueByKey!415 (toList!2906 lt!1563089) key!3918))))))

(declare-fun bs!628436 () Bool)

(assert (= bs!628436 d!1284320))

(assert (=> bs!628436 m!4958181))

(declare-fun m!4958615 () Bool)

(assert (=> bs!628436 m!4958615))

(assert (=> b!4348815 d!1284320))

(declare-fun b!4349121 () Bool)

(declare-fun e!2706418 () Option!10429)

(assert (=> b!4349121 (= e!2706418 None!10428)))

(declare-fun b!4349119 () Bool)

(declare-fun e!2706417 () Option!10429)

(assert (=> b!4349119 (= e!2706417 e!2706418)))

(declare-fun c!739322 () Bool)

(assert (=> b!4349119 (= c!739322 (and ((_ is Cons!48855) (toList!2906 lt!1563089)) (not (= (_1!27401 (h!54386 (toList!2906 lt!1563089))) key!3918))))))

(declare-fun b!4349118 () Bool)

(assert (=> b!4349118 (= e!2706417 (Some!10428 (_2!27401 (h!54386 (toList!2906 lt!1563089)))))))

(declare-fun d!1284322 () Bool)

(declare-fun c!739321 () Bool)

(assert (=> d!1284322 (= c!739321 (and ((_ is Cons!48855) (toList!2906 lt!1563089)) (= (_1!27401 (h!54386 (toList!2906 lt!1563089))) key!3918)))))

(assert (=> d!1284322 (= (getValueByKey!415 (toList!2906 lt!1563089) key!3918) e!2706417)))

(declare-fun b!4349120 () Bool)

(assert (=> b!4349120 (= e!2706418 (getValueByKey!415 (t!355899 (toList!2906 lt!1563089)) key!3918))))

(assert (= (and d!1284322 c!739321) b!4349118))

(assert (= (and d!1284322 (not c!739321)) b!4349119))

(assert (= (and b!4349119 c!739322) b!4349120))

(assert (= (and b!4349119 (not c!739322)) b!4349121))

(declare-fun m!4958617 () Bool)

(assert (=> b!4349120 m!4958617))

(assert (=> b!4348815 d!1284322))

(declare-fun d!1284324 () Bool)

(declare-fun lt!1563411 () Bool)

(assert (=> d!1284324 (= lt!1563411 (select (content!7676 e!2706254) key!3918))))

(declare-fun e!2706424 () Bool)

(assert (=> d!1284324 (= lt!1563411 e!2706424)))

(declare-fun res!1786452 () Bool)

(assert (=> d!1284324 (=> (not res!1786452) (not e!2706424))))

(assert (=> d!1284324 (= res!1786452 ((_ is Cons!48858) e!2706254))))

(assert (=> d!1284324 (= (contains!11020 e!2706254 key!3918) lt!1563411)))

(declare-fun b!4349128 () Bool)

(declare-fun e!2706423 () Bool)

(assert (=> b!4349128 (= e!2706424 e!2706423)))

(declare-fun res!1786453 () Bool)

(assert (=> b!4349128 (=> res!1786453 e!2706423)))

(assert (=> b!4349128 (= res!1786453 (= (h!54391 e!2706254) key!3918))))

(declare-fun b!4349129 () Bool)

(assert (=> b!4349129 (= e!2706423 (contains!11020 (t!355902 e!2706254) key!3918))))

(assert (= (and d!1284324 res!1786452) b!4349128))

(assert (= (and b!4349128 (not res!1786453)) b!4349129))

(declare-fun m!4958619 () Bool)

(assert (=> d!1284324 m!4958619))

(declare-fun m!4958621 () Bool)

(assert (=> d!1284324 m!4958621))

(declare-fun m!4958623 () Bool)

(assert (=> b!4349129 m!4958623))

(assert (=> bm!302273 d!1284324))

(declare-fun d!1284326 () Bool)

(declare-fun e!2706425 () Bool)

(assert (=> d!1284326 e!2706425))

(declare-fun res!1786454 () Bool)

(assert (=> d!1284326 (=> res!1786454 e!2706425)))

(declare-fun lt!1563412 () Bool)

(assert (=> d!1284326 (= res!1786454 (not lt!1563412))))

(declare-fun lt!1563413 () Bool)

(assert (=> d!1284326 (= lt!1563412 lt!1563413)))

(declare-fun lt!1563415 () Unit!70847)

(declare-fun e!2706426 () Unit!70847)

(assert (=> d!1284326 (= lt!1563415 e!2706426)))

(declare-fun c!739323 () Bool)

(assert (=> d!1284326 (= c!739323 lt!1563413)))

(assert (=> d!1284326 (= lt!1563413 (containsKey!627 (toList!2905 lt!1563254) (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(assert (=> d!1284326 (= (contains!11016 lt!1563254 (_1!27402 (tuple2!48217 hash!377 newBucket!200))) lt!1563412)))

(declare-fun b!4349130 () Bool)

(declare-fun lt!1563414 () Unit!70847)

(assert (=> b!4349130 (= e!2706426 lt!1563414)))

(assert (=> b!4349130 (= lt!1563414 (lemmaContainsKeyImpliesGetValueByKeyDefined!327 (toList!2905 lt!1563254) (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(assert (=> b!4349130 (isDefined!7724 (getValueByKey!414 (toList!2905 lt!1563254) (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun b!4349131 () Bool)

(declare-fun Unit!70895 () Unit!70847)

(assert (=> b!4349131 (= e!2706426 Unit!70895)))

(declare-fun b!4349132 () Bool)

(assert (=> b!4349132 (= e!2706425 (isDefined!7724 (getValueByKey!414 (toList!2905 lt!1563254) (_1!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(assert (= (and d!1284326 c!739323) b!4349130))

(assert (= (and d!1284326 (not c!739323)) b!4349131))

(assert (= (and d!1284326 (not res!1786454)) b!4349132))

(declare-fun m!4958625 () Bool)

(assert (=> d!1284326 m!4958625))

(declare-fun m!4958627 () Bool)

(assert (=> b!4349130 m!4958627))

(assert (=> b!4349130 m!4958417))

(assert (=> b!4349130 m!4958417))

(declare-fun m!4958629 () Bool)

(assert (=> b!4349130 m!4958629))

(assert (=> b!4349132 m!4958417))

(assert (=> b!4349132 m!4958417))

(assert (=> b!4349132 m!4958629))

(assert (=> d!1284230 d!1284326))

(declare-fun b!4349135 () Bool)

(declare-fun e!2706428 () Option!10428)

(assert (=> b!4349135 (= e!2706428 (getValueByKey!414 (t!355900 lt!1563255) (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun d!1284328 () Bool)

(declare-fun c!739324 () Bool)

(assert (=> d!1284328 (= c!739324 (and ((_ is Cons!48856) lt!1563255) (= (_1!27402 (h!54387 lt!1563255)) (_1!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(declare-fun e!2706427 () Option!10428)

(assert (=> d!1284328 (= (getValueByKey!414 lt!1563255 (_1!27402 (tuple2!48217 hash!377 newBucket!200))) e!2706427)))

(declare-fun b!4349133 () Bool)

(assert (=> b!4349133 (= e!2706427 (Some!10427 (_2!27402 (h!54387 lt!1563255))))))

(declare-fun b!4349136 () Bool)

(assert (=> b!4349136 (= e!2706428 None!10427)))

(declare-fun b!4349134 () Bool)

(assert (=> b!4349134 (= e!2706427 e!2706428)))

(declare-fun c!739325 () Bool)

(assert (=> b!4349134 (= c!739325 (and ((_ is Cons!48856) lt!1563255) (not (= (_1!27402 (h!54387 lt!1563255)) (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))))

(assert (= (and d!1284328 c!739324) b!4349133))

(assert (= (and d!1284328 (not c!739324)) b!4349134))

(assert (= (and b!4349134 c!739325) b!4349135))

(assert (= (and b!4349134 (not c!739325)) b!4349136))

(declare-fun m!4958631 () Bool)

(assert (=> b!4349135 m!4958631))

(assert (=> d!1284230 d!1284328))

(declare-fun d!1284330 () Bool)

(assert (=> d!1284330 (= (getValueByKey!414 lt!1563255 (_1!27402 (tuple2!48217 hash!377 newBucket!200))) (Some!10427 (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun lt!1563439 () Unit!70847)

(declare-fun choose!26734 (List!48980 (_ BitVec 64) List!48979) Unit!70847)

(assert (=> d!1284330 (= lt!1563439 (choose!26734 lt!1563255 (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun e!2706434 () Bool)

(assert (=> d!1284330 e!2706434))

(declare-fun res!1786462 () Bool)

(assert (=> d!1284330 (=> (not res!1786462) (not e!2706434))))

(assert (=> d!1284330 (= res!1786462 (isStrictlySorted!84 lt!1563255))))

(assert (=> d!1284330 (= (lemmaContainsTupThenGetReturnValue!192 lt!1563255 (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200))) lt!1563439)))

(declare-fun b!4349148 () Bool)

(declare-fun res!1786463 () Bool)

(assert (=> b!4349148 (=> (not res!1786463) (not e!2706434))))

(assert (=> b!4349148 (= res!1786463 (containsKey!627 lt!1563255 (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun b!4349149 () Bool)

(assert (=> b!4349149 (= e!2706434 (contains!11018 lt!1563255 (tuple2!48217 (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(assert (= (and d!1284330 res!1786462) b!4349148))

(assert (= (and b!4349148 res!1786463) b!4349149))

(assert (=> d!1284330 m!4958411))

(declare-fun m!4958633 () Bool)

(assert (=> d!1284330 m!4958633))

(declare-fun m!4958635 () Bool)

(assert (=> d!1284330 m!4958635))

(declare-fun m!4958637 () Bool)

(assert (=> b!4349148 m!4958637))

(declare-fun m!4958639 () Bool)

(assert (=> b!4349149 m!4958639))

(assert (=> d!1284230 d!1284330))

(declare-fun bm!302302 () Bool)

(declare-fun e!2706456 () List!48980)

(declare-fun call!302308 () List!48980)

(declare-fun c!739339 () Bool)

(declare-fun $colon$colon!676 (List!48980 tuple2!48216) List!48980)

(assert (=> bm!302302 (= call!302308 ($colon$colon!676 e!2706456 (ite c!739339 (h!54387 (toList!2905 lm!1707)) (tuple2!48217 (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))))

(declare-fun c!739338 () Bool)

(assert (=> bm!302302 (= c!739338 c!739339)))

(declare-fun b!4349178 () Bool)

(declare-fun e!2706455 () List!48980)

(declare-fun call!302309 () List!48980)

(assert (=> b!4349178 (= e!2706455 call!302309)))

(declare-fun b!4349179 () Bool)

(declare-fun res!1786475 () Bool)

(declare-fun e!2706454 () Bool)

(assert (=> b!4349179 (=> (not res!1786475) (not e!2706454))))

(declare-fun lt!1563446 () List!48980)

(assert (=> b!4349179 (= res!1786475 (containsKey!627 lt!1563446 (_1!27402 (tuple2!48217 hash!377 newBucket!200))))))

(declare-fun bm!302303 () Bool)

(assert (=> bm!302303 (= call!302309 call!302308)))

(declare-fun b!4349180 () Bool)

(declare-fun e!2706452 () List!48980)

(declare-fun call!302307 () List!48980)

(assert (=> b!4349180 (= e!2706452 call!302307)))

(declare-fun b!4349181 () Bool)

(declare-fun e!2706453 () List!48980)

(assert (=> b!4349181 (= e!2706453 e!2706455)))

(declare-fun c!739337 () Bool)

(assert (=> b!4349181 (= c!739337 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (= (_1!27402 (h!54387 (toList!2905 lm!1707))) (_1!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(declare-fun c!739336 () Bool)

(declare-fun b!4349182 () Bool)

(assert (=> b!4349182 (= c!739336 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (bvsgt (_1!27402 (h!54387 (toList!2905 lm!1707))) (_1!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(assert (=> b!4349182 (= e!2706455 e!2706452)))

(declare-fun b!4349183 () Bool)

(assert (=> b!4349183 (= e!2706452 call!302307)))

(declare-fun bm!302304 () Bool)

(assert (=> bm!302304 (= call!302307 call!302309)))

(declare-fun d!1284332 () Bool)

(assert (=> d!1284332 e!2706454))

(declare-fun res!1786474 () Bool)

(assert (=> d!1284332 (=> (not res!1786474) (not e!2706454))))

(assert (=> d!1284332 (= res!1786474 (isStrictlySorted!84 lt!1563446))))

(assert (=> d!1284332 (= lt!1563446 e!2706453)))

(assert (=> d!1284332 (= c!739339 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (bvslt (_1!27402 (h!54387 (toList!2905 lm!1707))) (_1!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(assert (=> d!1284332 (isStrictlySorted!84 (toList!2905 lm!1707))))

(assert (=> d!1284332 (= (insertStrictlySorted!115 (toList!2905 lm!1707) (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200))) lt!1563446)))

(declare-fun b!4349184 () Bool)

(assert (=> b!4349184 (= e!2706454 (contains!11018 lt!1563446 (tuple2!48217 (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(declare-fun b!4349185 () Bool)

(assert (=> b!4349185 (= e!2706453 call!302308)))

(declare-fun b!4349186 () Bool)

(assert (=> b!4349186 (= e!2706456 (ite c!739337 (t!355900 (toList!2905 lm!1707)) (ite c!739336 (Cons!48856 (h!54387 (toList!2905 lm!1707)) (t!355900 (toList!2905 lm!1707))) Nil!48856)))))

(declare-fun b!4349187 () Bool)

(assert (=> b!4349187 (= e!2706456 (insertStrictlySorted!115 (t!355900 (toList!2905 lm!1707)) (_1!27402 (tuple2!48217 hash!377 newBucket!200)) (_2!27402 (tuple2!48217 hash!377 newBucket!200))))))

(assert (= (and d!1284332 c!739339) b!4349185))

(assert (= (and d!1284332 (not c!739339)) b!4349181))

(assert (= (and b!4349181 c!739337) b!4349178))

(assert (= (and b!4349181 (not c!739337)) b!4349182))

(assert (= (and b!4349182 c!739336) b!4349180))

(assert (= (and b!4349182 (not c!739336)) b!4349183))

(assert (= (or b!4349180 b!4349183) bm!302304))

(assert (= (or b!4349178 bm!302304) bm!302303))

(assert (= (or b!4349185 bm!302303) bm!302302))

(assert (= (and bm!302302 c!739338) b!4349187))

(assert (= (and bm!302302 (not c!739338)) b!4349186))

(assert (= (and d!1284332 res!1786474) b!4349179))

(assert (= (and b!4349179 res!1786475) b!4349184))

(declare-fun m!4958687 () Bool)

(assert (=> b!4349184 m!4958687))

(declare-fun m!4958689 () Bool)

(assert (=> bm!302302 m!4958689))

(declare-fun m!4958691 () Bool)

(assert (=> b!4349179 m!4958691))

(declare-fun m!4958693 () Bool)

(assert (=> d!1284332 m!4958693))

(assert (=> d!1284332 m!4958363))

(declare-fun m!4958695 () Bool)

(assert (=> b!4349187 m!4958695))

(assert (=> d!1284230 d!1284332))

(declare-fun bs!628449 () Bool)

(declare-fun b!4349246 () Bool)

(assert (= bs!628449 (and b!4349246 b!4349112)))

(declare-fun lambda!139040 () Int)

(assert (=> bs!628449 (= (= (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (toList!2906 lt!1563089)) (= lambda!139040 lambda!139013))))

(assert (=> b!4349246 true))

(declare-fun bs!628450 () Bool)

(declare-fun b!4349244 () Bool)

(assert (= bs!628450 (and b!4349244 b!4349112)))

(declare-fun lambda!139041 () Int)

(assert (=> bs!628450 (= (= (Cons!48855 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (toList!2906 lt!1563089)) (= lambda!139041 lambda!139013))))

(declare-fun bs!628451 () Bool)

(assert (= bs!628451 (and b!4349244 b!4349246)))

(assert (=> bs!628451 (= (= (Cons!48855 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (= lambda!139041 lambda!139040))))

(assert (=> b!4349244 true))

(declare-fun bs!628452 () Bool)

(declare-fun b!4349249 () Bool)

(assert (= bs!628452 (and b!4349249 b!4349112)))

(declare-fun lambda!139042 () Int)

(assert (=> bs!628452 (= (= (toList!2906 (extractMap!520 (toList!2905 lm!1707))) (toList!2906 lt!1563089)) (= lambda!139042 lambda!139013))))

(declare-fun bs!628453 () Bool)

(assert (= bs!628453 (and b!4349249 b!4349246)))

(assert (=> bs!628453 (= (= (toList!2906 (extractMap!520 (toList!2905 lm!1707))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (= lambda!139042 lambda!139040))))

(declare-fun bs!628454 () Bool)

(assert (= bs!628454 (and b!4349249 b!4349244)))

(assert (=> bs!628454 (= (= (toList!2906 (extractMap!520 (toList!2905 lm!1707))) (Cons!48855 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))) (= lambda!139042 lambda!139041))))

(assert (=> b!4349249 true))

(declare-fun bs!628455 () Bool)

(declare-fun b!4349242 () Bool)

(assert (= bs!628455 (and b!4349242 b!4349113)))

(declare-fun lambda!139045 () Int)

(assert (=> bs!628455 (= lambda!139045 lambda!139015)))

(declare-fun b!4349241 () Bool)

(assert (=> b!4349241 false))

(declare-fun e!2706483 () Unit!70847)

(declare-fun Unit!70897 () Unit!70847)

(assert (=> b!4349241 (= e!2706483 Unit!70897)))

(declare-fun d!1284340 () Bool)

(declare-fun e!2706481 () Bool)

(assert (=> d!1284340 e!2706481))

(declare-fun res!1786493 () Bool)

(assert (=> d!1284340 (=> (not res!1786493) (not e!2706481))))

(declare-fun lt!1563477 () List!48982)

(assert (=> d!1284340 (= res!1786493 (noDuplicate!594 lt!1563477))))

(declare-fun e!2706480 () List!48982)

(assert (=> d!1284340 (= lt!1563477 e!2706480)))

(declare-fun c!739359 () Bool)

(assert (=> d!1284340 (= c!739359 ((_ is Cons!48855) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))

(assert (=> d!1284340 (invariantList!658 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))

(assert (=> d!1284340 (= (getKeysList!106 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) lt!1563477)))

(assert (=> b!4349242 (= e!2706481 (= (content!7676 lt!1563477) (content!7676 (map!10621 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) lambda!139045))))))

(declare-fun b!4349243 () Bool)

(declare-fun res!1786492 () Bool)

(assert (=> b!4349243 (=> (not res!1786492) (not e!2706481))))

(assert (=> b!4349243 (= res!1786492 (= (length!44 lt!1563477) (length!45 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))))

(assert (=> b!4349244 (= e!2706480 (Cons!48858 (_1!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (getKeysList!106 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))))

(declare-fun c!739360 () Bool)

(assert (=> b!4349244 (= c!739360 (containsKey!628 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (_1!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))))

(declare-fun lt!1563472 () Unit!70847)

(assert (=> b!4349244 (= lt!1563472 e!2706483)))

(declare-fun c!739358 () Bool)

(assert (=> b!4349244 (= c!739358 (contains!11020 (getKeysList!106 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (_1!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))))

(declare-fun lt!1563476 () Unit!70847)

(declare-fun e!2706482 () Unit!70847)

(assert (=> b!4349244 (= lt!1563476 e!2706482)))

(declare-fun lt!1563473 () List!48982)

(assert (=> b!4349244 (= lt!1563473 (getKeysList!106 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))))

(declare-fun lt!1563475 () Unit!70847)

(declare-fun lemmaForallContainsAddHeadPreserves!16 (List!48979 List!48982 tuple2!48214) Unit!70847)

(assert (=> b!4349244 (= lt!1563475 (lemmaForallContainsAddHeadPreserves!16 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) lt!1563473 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))))

(assert (=> b!4349244 (forall!9067 lt!1563473 lambda!139041)))

(declare-fun lt!1563474 () Unit!70847)

(assert (=> b!4349244 (= lt!1563474 lt!1563475)))

(declare-fun b!4349245 () Bool)

(declare-fun Unit!70898 () Unit!70847)

(assert (=> b!4349245 (= e!2706483 Unit!70898)))

(assert (=> b!4349246 false))

(declare-fun lt!1563478 () Unit!70847)

(declare-fun forallContained!1715 (List!48982 Int K!10220) Unit!70847)

(assert (=> b!4349246 (= lt!1563478 (forallContained!1715 (getKeysList!106 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) lambda!139040 (_1!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))))

(declare-fun Unit!70899 () Unit!70847)

(assert (=> b!4349246 (= e!2706482 Unit!70899)))

(declare-fun b!4349247 () Bool)

(assert (=> b!4349247 (= e!2706480 Nil!48858)))

(declare-fun b!4349248 () Bool)

(declare-fun Unit!70900 () Unit!70847)

(assert (=> b!4349248 (= e!2706482 Unit!70900)))

(declare-fun res!1786491 () Bool)

(assert (=> b!4349249 (=> (not res!1786491) (not e!2706481))))

(assert (=> b!4349249 (= res!1786491 (forall!9067 lt!1563477 lambda!139042))))

(assert (= (and d!1284340 c!739359) b!4349244))

(assert (= (and d!1284340 (not c!739359)) b!4349247))

(assert (= (and b!4349244 c!739360) b!4349241))

(assert (= (and b!4349244 (not c!739360)) b!4349245))

(assert (= (and b!4349244 c!739358) b!4349246))

(assert (= (and b!4349244 (not c!739358)) b!4349248))

(assert (= (and d!1284340 res!1786493) b!4349243))

(assert (= (and b!4349243 res!1786492) b!4349249))

(assert (= (and b!4349249 res!1786491) b!4349242))

(declare-fun m!4958713 () Bool)

(assert (=> b!4349242 m!4958713))

(declare-fun m!4958715 () Bool)

(assert (=> b!4349242 m!4958715))

(assert (=> b!4349242 m!4958715))

(declare-fun m!4958717 () Bool)

(assert (=> b!4349242 m!4958717))

(declare-fun m!4958719 () Bool)

(assert (=> b!4349246 m!4958719))

(assert (=> b!4349246 m!4958719))

(declare-fun m!4958721 () Bool)

(assert (=> b!4349246 m!4958721))

(assert (=> b!4349244 m!4958719))

(declare-fun m!4958723 () Bool)

(assert (=> b!4349244 m!4958723))

(declare-fun m!4958725 () Bool)

(assert (=> b!4349244 m!4958725))

(assert (=> b!4349244 m!4958719))

(declare-fun m!4958727 () Bool)

(assert (=> b!4349244 m!4958727))

(declare-fun m!4958729 () Bool)

(assert (=> b!4349244 m!4958729))

(declare-fun m!4958731 () Bool)

(assert (=> b!4349249 m!4958731))

(declare-fun m!4958733 () Bool)

(assert (=> b!4349243 m!4958733))

(declare-fun m!4958735 () Bool)

(assert (=> b!4349243 m!4958735))

(declare-fun m!4958737 () Bool)

(assert (=> d!1284340 m!4958737))

(assert (=> d!1284340 m!4958587))

(assert (=> b!4348872 d!1284340))

(declare-fun d!1284350 () Bool)

(declare-fun res!1786500 () Bool)

(declare-fun e!2706486 () Bool)

(assert (=> d!1284350 (=> res!1786500 e!2706486)))

(assert (=> d!1284350 (= res!1786500 (not ((_ is Cons!48855) (_2!27402 lt!1563090))))))

(assert (=> d!1284350 (= (noDuplicateKeys!461 (_2!27402 lt!1563090)) e!2706486)))

(declare-fun b!4349258 () Bool)

(declare-fun e!2706487 () Bool)

(assert (=> b!4349258 (= e!2706486 e!2706487)))

(declare-fun res!1786501 () Bool)

(assert (=> b!4349258 (=> (not res!1786501) (not e!2706487))))

(assert (=> b!4349258 (= res!1786501 (not (containsKey!624 (t!355899 (_2!27402 lt!1563090)) (_1!27401 (h!54386 (_2!27402 lt!1563090))))))))

(declare-fun b!4349259 () Bool)

(assert (=> b!4349259 (= e!2706487 (noDuplicateKeys!461 (t!355899 (_2!27402 lt!1563090))))))

(assert (= (and d!1284350 (not res!1786500)) b!4349258))

(assert (= (and b!4349258 res!1786501) b!4349259))

(declare-fun m!4958739 () Bool)

(assert (=> b!4349258 m!4958739))

(declare-fun m!4958741 () Bool)

(assert (=> b!4349259 m!4958741))

(assert (=> bs!628392 d!1284350))

(declare-fun d!1284352 () Bool)

(declare-fun res!1786506 () Bool)

(declare-fun e!2706492 () Bool)

(assert (=> d!1284352 (=> res!1786506 e!2706492)))

(assert (=> d!1284352 (= res!1786506 ((_ is Nil!48855) newBucket!200))))

(assert (=> d!1284352 (= (forall!9064 newBucket!200 lambda!138941) e!2706492)))

(declare-fun b!4349264 () Bool)

(declare-fun e!2706493 () Bool)

(assert (=> b!4349264 (= e!2706492 e!2706493)))

(declare-fun res!1786507 () Bool)

(assert (=> b!4349264 (=> (not res!1786507) (not e!2706493))))

(declare-fun dynLambda!20606 (Int tuple2!48214) Bool)

(assert (=> b!4349264 (= res!1786507 (dynLambda!20606 lambda!138941 (h!54386 newBucket!200)))))

(declare-fun b!4349265 () Bool)

(assert (=> b!4349265 (= e!2706493 (forall!9064 (t!355899 newBucket!200) lambda!138941))))

(assert (= (and d!1284352 (not res!1786506)) b!4349264))

(assert (= (and b!4349264 res!1786507) b!4349265))

(declare-fun b_lambda!130361 () Bool)

(assert (=> (not b_lambda!130361) (not b!4349264)))

(declare-fun m!4958743 () Bool)

(assert (=> b!4349264 m!4958743))

(declare-fun m!4958745 () Bool)

(assert (=> b!4349265 m!4958745))

(assert (=> d!1284178 d!1284352))

(declare-fun d!1284354 () Bool)

(assert (=> d!1284354 (dynLambda!20605 lambda!138921 lt!1563090)))

(assert (=> d!1284354 true))

(declare-fun _$7!1447 () Unit!70847)

(assert (=> d!1284354 (= (choose!26724 (toList!2905 lm!1707) lambda!138921 lt!1563090) _$7!1447)))

(declare-fun b_lambda!130363 () Bool)

(assert (=> (not b_lambda!130363) (not d!1284354)))

(declare-fun bs!628456 () Bool)

(assert (= bs!628456 d!1284354))

(assert (=> bs!628456 m!4958351))

(assert (=> d!1284194 d!1284354))

(assert (=> d!1284194 d!1284216))

(declare-fun d!1284356 () Bool)

(declare-fun lt!1563492 () Bool)

(assert (=> d!1284356 (= lt!1563492 (select (content!7676 (keys!16480 lt!1563089)) key!3918))))

(declare-fun e!2706499 () Bool)

(assert (=> d!1284356 (= lt!1563492 e!2706499)))

(declare-fun res!1786511 () Bool)

(assert (=> d!1284356 (=> (not res!1786511) (not e!2706499))))

(assert (=> d!1284356 (= res!1786511 ((_ is Cons!48858) (keys!16480 lt!1563089)))))

(assert (=> d!1284356 (= (contains!11020 (keys!16480 lt!1563089) key!3918) lt!1563492)))

(declare-fun b!4349275 () Bool)

(declare-fun e!2706498 () Bool)

(assert (=> b!4349275 (= e!2706499 e!2706498)))

(declare-fun res!1786512 () Bool)

(assert (=> b!4349275 (=> res!1786512 e!2706498)))

(assert (=> b!4349275 (= res!1786512 (= (h!54391 (keys!16480 lt!1563089)) key!3918))))

(declare-fun b!4349276 () Bool)

(assert (=> b!4349276 (= e!2706498 (contains!11020 (t!355902 (keys!16480 lt!1563089)) key!3918))))

(assert (= (and d!1284356 res!1786511) b!4349275))

(assert (= (and b!4349275 (not res!1786512)) b!4349276))

(assert (=> d!1284356 m!4958193))

(declare-fun m!4958747 () Bool)

(assert (=> d!1284356 m!4958747))

(declare-fun m!4958749 () Bool)

(assert (=> d!1284356 m!4958749))

(declare-fun m!4958751 () Bool)

(assert (=> b!4349276 m!4958751))

(assert (=> b!4348816 d!1284356))

(assert (=> b!4348816 d!1284318))

(assert (=> b!4348818 d!1284356))

(assert (=> b!4348818 d!1284318))

(declare-fun d!1284358 () Bool)

(declare-fun res!1786517 () Bool)

(declare-fun e!2706504 () Bool)

(assert (=> d!1284358 (=> res!1786517 e!2706504)))

(assert (=> d!1284358 (= res!1786517 (and ((_ is Cons!48855) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= (_1!27401 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) key!3918)))))

(assert (=> d!1284358 (= (containsKey!628 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918) e!2706504)))

(declare-fun b!4349283 () Bool)

(declare-fun e!2706505 () Bool)

(assert (=> b!4349283 (= e!2706504 e!2706505)))

(declare-fun res!1786518 () Bool)

(assert (=> b!4349283 (=> (not res!1786518) (not e!2706505))))

(assert (=> b!4349283 (= res!1786518 ((_ is Cons!48855) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))

(declare-fun b!4349284 () Bool)

(assert (=> b!4349284 (= e!2706505 (containsKey!628 (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) key!3918))))

(assert (= (and d!1284358 (not res!1786517)) b!4349283))

(assert (= (and b!4349283 res!1786518) b!4349284))

(declare-fun m!4958753 () Bool)

(assert (=> b!4349284 m!4958753))

(assert (=> b!4348874 d!1284358))

(declare-fun d!1284360 () Bool)

(assert (=> d!1284360 (containsKey!628 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918)))

(declare-fun lt!1563495 () Unit!70847)

(declare-fun choose!26736 (List!48979 K!10220) Unit!70847)

(assert (=> d!1284360 (= lt!1563495 (choose!26736 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918))))

(assert (=> d!1284360 (invariantList!658 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))

(assert (=> d!1284360 (= (lemmaInGetKeysListThenContainsKey!104 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) key!3918) lt!1563495)))

(declare-fun bs!628464 () Bool)

(assert (= bs!628464 d!1284360))

(assert (=> bs!628464 m!4958287))

(declare-fun m!4958783 () Bool)

(assert (=> bs!628464 m!4958783))

(assert (=> bs!628464 m!4958587))

(assert (=> b!4348874 d!1284360))

(declare-fun b!4349287 () Bool)

(declare-fun e!2706509 () List!48979)

(assert (=> b!4349287 (= e!2706509 (t!355899 (t!355899 lt!1563092)))))

(declare-fun d!1284366 () Bool)

(declare-fun lt!1563496 () List!48979)

(assert (=> d!1284366 (not (containsKey!624 lt!1563496 key!3918))))

(assert (=> d!1284366 (= lt!1563496 e!2706509)))

(declare-fun c!739364 () Bool)

(assert (=> d!1284366 (= c!739364 (and ((_ is Cons!48855) (t!355899 lt!1563092)) (= (_1!27401 (h!54386 (t!355899 lt!1563092))) key!3918)))))

(assert (=> d!1284366 (noDuplicateKeys!461 (t!355899 lt!1563092))))

(assert (=> d!1284366 (= (removePairForKey!431 (t!355899 lt!1563092) key!3918) lt!1563496)))

(declare-fun b!4349290 () Bool)

(declare-fun e!2706508 () List!48979)

(assert (=> b!4349290 (= e!2706508 Nil!48855)))

(declare-fun b!4349289 () Bool)

(assert (=> b!4349289 (= e!2706508 (Cons!48855 (h!54386 (t!355899 lt!1563092)) (removePairForKey!431 (t!355899 (t!355899 lt!1563092)) key!3918)))))

(declare-fun b!4349288 () Bool)

(assert (=> b!4349288 (= e!2706509 e!2706508)))

(declare-fun c!739365 () Bool)

(assert (=> b!4349288 (= c!739365 ((_ is Cons!48855) (t!355899 lt!1563092)))))

(assert (= (and d!1284366 c!739364) b!4349287))

(assert (= (and d!1284366 (not c!739364)) b!4349288))

(assert (= (and b!4349288 c!739365) b!4349289))

(assert (= (and b!4349288 (not c!739365)) b!4349290))

(declare-fun m!4958789 () Bool)

(assert (=> d!1284366 m!4958789))

(declare-fun m!4958791 () Bool)

(assert (=> d!1284366 m!4958791))

(declare-fun m!4958793 () Bool)

(assert (=> b!4349289 m!4958793))

(assert (=> b!4348934 d!1284366))

(declare-fun d!1284372 () Bool)

(declare-fun res!1786525 () Bool)

(declare-fun e!2706514 () Bool)

(assert (=> d!1284372 (=> res!1786525 e!2706514)))

(assert (=> d!1284372 (= res!1786525 ((_ is Nil!48856) (t!355900 (toList!2905 lt!1563094))))))

(assert (=> d!1284372 (= (forall!9063 (t!355900 (toList!2905 lt!1563094)) lambda!138921) e!2706514)))

(declare-fun b!4349295 () Bool)

(declare-fun e!2706515 () Bool)

(assert (=> b!4349295 (= e!2706514 e!2706515)))

(declare-fun res!1786526 () Bool)

(assert (=> b!4349295 (=> (not res!1786526) (not e!2706515))))

(assert (=> b!4349295 (= res!1786526 (dynLambda!20605 lambda!138921 (h!54387 (t!355900 (toList!2905 lt!1563094)))))))

(declare-fun b!4349296 () Bool)

(assert (=> b!4349296 (= e!2706515 (forall!9063 (t!355900 (t!355900 (toList!2905 lt!1563094))) lambda!138921))))

(assert (= (and d!1284372 (not res!1786525)) b!4349295))

(assert (= (and b!4349295 res!1786526) b!4349296))

(declare-fun b_lambda!130365 () Bool)

(assert (=> (not b_lambda!130365) (not b!4349295)))

(declare-fun m!4958799 () Bool)

(assert (=> b!4349295 m!4958799))

(declare-fun m!4958801 () Bool)

(assert (=> b!4349296 m!4958801))

(assert (=> b!4348898 d!1284372))

(declare-fun d!1284378 () Bool)

(declare-fun res!1786531 () Bool)

(declare-fun e!2706520 () Bool)

(assert (=> d!1284378 (=> res!1786531 e!2706520)))

(assert (=> d!1284378 (= res!1786531 (not ((_ is Cons!48855) (_2!27402 (h!54387 (toList!2905 lm!1707))))))))

(assert (=> d!1284378 (= (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lm!1707)))) e!2706520)))

(declare-fun b!4349301 () Bool)

(declare-fun e!2706521 () Bool)

(assert (=> b!4349301 (= e!2706520 e!2706521)))

(declare-fun res!1786532 () Bool)

(assert (=> b!4349301 (=> (not res!1786532) (not e!2706521))))

(assert (=> b!4349301 (= res!1786532 (not (containsKey!624 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707)))) (_1!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 lm!1707))))))))))

(declare-fun b!4349302 () Bool)

(assert (=> b!4349302 (= e!2706521 (noDuplicateKeys!461 (t!355899 (_2!27402 (h!54387 (toList!2905 lm!1707))))))))

(assert (= (and d!1284378 (not res!1786531)) b!4349301))

(assert (= (and b!4349301 res!1786532) b!4349302))

(declare-fun m!4958805 () Bool)

(assert (=> b!4349301 m!4958805))

(declare-fun m!4958807 () Bool)

(assert (=> b!4349302 m!4958807))

(assert (=> bs!628394 d!1284378))

(declare-fun d!1284382 () Bool)

(declare-fun res!1786533 () Bool)

(declare-fun e!2706522 () Bool)

(assert (=> d!1284382 (=> res!1786533 e!2706522)))

(assert (=> d!1284382 (= res!1786533 (not ((_ is Cons!48855) (t!355899 newBucket!200))))))

(assert (=> d!1284382 (= (noDuplicateKeys!461 (t!355899 newBucket!200)) e!2706522)))

(declare-fun b!4349303 () Bool)

(declare-fun e!2706523 () Bool)

(assert (=> b!4349303 (= e!2706522 e!2706523)))

(declare-fun res!1786534 () Bool)

(assert (=> b!4349303 (=> (not res!1786534) (not e!2706523))))

(assert (=> b!4349303 (= res!1786534 (not (containsKey!624 (t!355899 (t!355899 newBucket!200)) (_1!27401 (h!54386 (t!355899 newBucket!200))))))))

(declare-fun b!4349304 () Bool)

(assert (=> b!4349304 (= e!2706523 (noDuplicateKeys!461 (t!355899 (t!355899 newBucket!200))))))

(assert (= (and d!1284382 (not res!1786533)) b!4349303))

(assert (= (and b!4349303 res!1786534) b!4349304))

(declare-fun m!4958811 () Bool)

(assert (=> b!4349303 m!4958811))

(declare-fun m!4958813 () Bool)

(assert (=> b!4349304 m!4958813))

(assert (=> b!4348772 d!1284382))

(declare-fun d!1284386 () Bool)

(declare-fun lt!1563499 () Bool)

(assert (=> d!1284386 (= lt!1563499 (select (content!7674 (t!355900 (toList!2905 lm!1707))) lt!1563090))))

(declare-fun e!2706526 () Bool)

(assert (=> d!1284386 (= lt!1563499 e!2706526)))

(declare-fun res!1786538 () Bool)

(assert (=> d!1284386 (=> (not res!1786538) (not e!2706526))))

(assert (=> d!1284386 (= res!1786538 ((_ is Cons!48856) (t!355900 (toList!2905 lm!1707))))))

(assert (=> d!1284386 (= (contains!11018 (t!355900 (toList!2905 lm!1707)) lt!1563090) lt!1563499)))

(declare-fun b!4349308 () Bool)

(declare-fun e!2706525 () Bool)

(assert (=> b!4349308 (= e!2706526 e!2706525)))

(declare-fun res!1786539 () Bool)

(assert (=> b!4349308 (=> res!1786539 e!2706525)))

(assert (=> b!4349308 (= res!1786539 (= (h!54387 (t!355900 (toList!2905 lm!1707))) lt!1563090))))

(declare-fun b!4349309 () Bool)

(assert (=> b!4349309 (= e!2706525 (contains!11018 (t!355900 (t!355900 (toList!2905 lm!1707))) lt!1563090))))

(assert (= (and d!1284386 res!1786538) b!4349308))

(assert (= (and b!4349308 (not res!1786539)) b!4349309))

(assert (=> d!1284386 m!4958573))

(declare-fun m!4958815 () Bool)

(assert (=> d!1284386 m!4958815))

(declare-fun m!4958817 () Bool)

(assert (=> b!4349309 m!4958817))

(assert (=> b!4348950 d!1284386))

(assert (=> d!1284172 d!1284358))

(declare-fun d!1284388 () Bool)

(assert (=> d!1284388 (= (invariantList!658 (toList!2906 lt!1563189)) (noDuplicatedKeys!109 (toList!2906 lt!1563189)))))

(declare-fun bs!628471 () Bool)

(assert (= bs!628471 d!1284388))

(declare-fun m!4958819 () Bool)

(assert (=> bs!628471 m!4958819))

(assert (=> d!1284146 d!1284388))

(declare-fun d!1284390 () Bool)

(declare-fun res!1786540 () Bool)

(declare-fun e!2706527 () Bool)

(assert (=> d!1284390 (=> res!1786540 e!2706527)))

(assert (=> d!1284390 (= res!1786540 ((_ is Nil!48856) (t!355900 (toList!2905 lm!1707))))))

(assert (=> d!1284390 (= (forall!9063 (t!355900 (toList!2905 lm!1707)) lambda!138930) e!2706527)))

(declare-fun b!4349310 () Bool)

(declare-fun e!2706528 () Bool)

(assert (=> b!4349310 (= e!2706527 e!2706528)))

(declare-fun res!1786541 () Bool)

(assert (=> b!4349310 (=> (not res!1786541) (not e!2706528))))

(assert (=> b!4349310 (= res!1786541 (dynLambda!20605 lambda!138930 (h!54387 (t!355900 (toList!2905 lm!1707)))))))

(declare-fun b!4349311 () Bool)

(assert (=> b!4349311 (= e!2706528 (forall!9063 (t!355900 (t!355900 (toList!2905 lm!1707))) lambda!138930))))

(assert (= (and d!1284390 (not res!1786540)) b!4349310))

(assert (= (and b!4349310 res!1786541) b!4349311))

(declare-fun b_lambda!130367 () Bool)

(assert (=> (not b_lambda!130367) (not b!4349310)))

(declare-fun m!4958821 () Bool)

(assert (=> b!4349310 m!4958821))

(declare-fun m!4958823 () Bool)

(assert (=> b!4349311 m!4958823))

(assert (=> d!1284146 d!1284390))

(declare-fun d!1284392 () Bool)

(declare-fun res!1786542 () Bool)

(declare-fun e!2706529 () Bool)

(assert (=> d!1284392 (=> res!1786542 e!2706529)))

(assert (=> d!1284392 (= res!1786542 (not ((_ is Cons!48855) (_2!27402 (h!54387 (toList!2905 lt!1563094))))))))

(assert (=> d!1284392 (= (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lt!1563094)))) e!2706529)))

(declare-fun b!4349312 () Bool)

(declare-fun e!2706530 () Bool)

(assert (=> b!4349312 (= e!2706529 e!2706530)))

(declare-fun res!1786543 () Bool)

(assert (=> b!4349312 (=> (not res!1786543) (not e!2706530))))

(assert (=> b!4349312 (= res!1786543 (not (containsKey!624 (t!355899 (_2!27402 (h!54387 (toList!2905 lt!1563094)))) (_1!27401 (h!54386 (_2!27402 (h!54387 (toList!2905 lt!1563094))))))))))

(declare-fun b!4349313 () Bool)

(assert (=> b!4349313 (= e!2706530 (noDuplicateKeys!461 (t!355899 (_2!27402 (h!54387 (toList!2905 lt!1563094))))))))

(assert (= (and d!1284392 (not res!1786542)) b!4349312))

(assert (= (and b!4349312 res!1786543) b!4349313))

(declare-fun m!4958829 () Bool)

(assert (=> b!4349312 m!4958829))

(declare-fun m!4958833 () Bool)

(assert (=> b!4349313 m!4958833))

(assert (=> bs!628395 d!1284392))

(declare-fun bs!628474 () Bool)

(declare-fun b!4349315 () Bool)

(assert (= bs!628474 (and b!4349315 b!4349112)))

(declare-fun lambda!139056 () Int)

(assert (=> bs!628474 (= (= (toList!2906 (extractMap!520 (toList!2905 lm!1707))) (toList!2906 lt!1563089)) (= lambda!139056 lambda!139013))))

(declare-fun bs!628475 () Bool)

(assert (= bs!628475 (and b!4349315 b!4349246)))

(assert (=> bs!628475 (= (= (toList!2906 (extractMap!520 (toList!2905 lm!1707))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (= lambda!139056 lambda!139040))))

(declare-fun bs!628476 () Bool)

(assert (= bs!628476 (and b!4349315 b!4349244)))

(assert (=> bs!628476 (= (= (toList!2906 (extractMap!520 (toList!2905 lm!1707))) (Cons!48855 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))) (= lambda!139056 lambda!139041))))

(declare-fun bs!628477 () Bool)

(assert (= bs!628477 (and b!4349315 b!4349249)))

(assert (=> bs!628477 (= lambda!139056 lambda!139042)))

(assert (=> b!4349315 true))

(declare-fun bs!628478 () Bool)

(declare-fun b!4349316 () Bool)

(assert (= bs!628478 (and b!4349316 b!4349113)))

(declare-fun lambda!139057 () Int)

(assert (=> bs!628478 (= lambda!139057 lambda!139015)))

(declare-fun bs!628479 () Bool)

(assert (= bs!628479 (and b!4349316 b!4349242)))

(assert (=> bs!628479 (= lambda!139057 lambda!139045)))

(declare-fun d!1284394 () Bool)

(declare-fun e!2706531 () Bool)

(assert (=> d!1284394 e!2706531))

(declare-fun res!1786544 () Bool)

(assert (=> d!1284394 (=> (not res!1786544) (not e!2706531))))

(declare-fun lt!1563500 () List!48982)

(assert (=> d!1284394 (= res!1786544 (noDuplicate!594 lt!1563500))))

(assert (=> d!1284394 (= lt!1563500 (getKeysList!106 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))))

(assert (=> d!1284394 (= (keys!16480 (extractMap!520 (toList!2905 lm!1707))) lt!1563500)))

(declare-fun b!4349314 () Bool)

(declare-fun res!1786545 () Bool)

(assert (=> b!4349314 (=> (not res!1786545) (not e!2706531))))

(assert (=> b!4349314 (= res!1786545 (= (length!44 lt!1563500) (length!45 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))))))

(declare-fun res!1786546 () Bool)

(assert (=> b!4349315 (=> (not res!1786546) (not e!2706531))))

(assert (=> b!4349315 (= res!1786546 (forall!9067 lt!1563500 lambda!139056))))

(assert (=> b!4349316 (= e!2706531 (= (content!7676 lt!1563500) (content!7676 (map!10621 (toList!2906 (extractMap!520 (toList!2905 lm!1707))) lambda!139057))))))

(assert (= (and d!1284394 res!1786544) b!4349314))

(assert (= (and b!4349314 res!1786545) b!4349315))

(assert (= (and b!4349315 res!1786546) b!4349316))

(declare-fun m!4958855 () Bool)

(assert (=> d!1284394 m!4958855))

(assert (=> d!1284394 m!4958295))

(declare-fun m!4958857 () Bool)

(assert (=> b!4349314 m!4958857))

(assert (=> b!4349314 m!4958735))

(declare-fun m!4958859 () Bool)

(assert (=> b!4349315 m!4958859))

(declare-fun m!4958861 () Bool)

(assert (=> b!4349316 m!4958861))

(declare-fun m!4958863 () Bool)

(assert (=> b!4349316 m!4958863))

(assert (=> b!4349316 m!4958863))

(declare-fun m!4958865 () Bool)

(assert (=> b!4349316 m!4958865))

(assert (=> b!4348868 d!1284394))

(declare-fun d!1284404 () Bool)

(assert (=> d!1284404 (= (get!15861 (getValueByKey!414 (toList!2905 lm!1707) hash!377)) (v!43237 (getValueByKey!414 (toList!2905 lm!1707) hash!377)))))

(assert (=> d!1284192 d!1284404))

(assert (=> d!1284192 d!1284302))

(declare-fun d!1284410 () Bool)

(assert (=> d!1284410 (isDefined!7725 (getValueByKey!415 (toList!2906 lt!1563089) key!3918))))

(declare-fun lt!1563503 () Unit!70847)

(assert (=> d!1284410 (= lt!1563503 (choose!26731 (toList!2906 lt!1563089) key!3918))))

(assert (=> d!1284410 (invariantList!658 (toList!2906 lt!1563089))))

(assert (=> d!1284410 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!328 (toList!2906 lt!1563089) key!3918) lt!1563503)))

(declare-fun bs!628480 () Bool)

(assert (= bs!628480 d!1284410))

(assert (=> bs!628480 m!4958181))

(assert (=> bs!628480 m!4958181))

(assert (=> bs!628480 m!4958183))

(declare-fun m!4958881 () Bool)

(assert (=> bs!628480 m!4958881))

(declare-fun m!4958883 () Bool)

(assert (=> bs!628480 m!4958883))

(assert (=> b!4348814 d!1284410))

(assert (=> b!4348814 d!1284320))

(assert (=> b!4348814 d!1284322))

(declare-fun d!1284416 () Bool)

(assert (=> d!1284416 (contains!11020 (getKeysList!106 (toList!2906 lt!1563089)) key!3918)))

(declare-fun lt!1563504 () Unit!70847)

(assert (=> d!1284416 (= lt!1563504 (choose!26732 (toList!2906 lt!1563089) key!3918))))

(assert (=> d!1284416 (invariantList!658 (toList!2906 lt!1563089))))

(assert (=> d!1284416 (= (lemmaInListThenGetKeysListContains!103 (toList!2906 lt!1563089) key!3918) lt!1563504)))

(declare-fun bs!628482 () Bool)

(assert (= bs!628482 d!1284416))

(assert (=> bs!628482 m!4958197))

(assert (=> bs!628482 m!4958197))

(declare-fun m!4958885 () Bool)

(assert (=> bs!628482 m!4958885))

(declare-fun m!4958887 () Bool)

(assert (=> bs!628482 m!4958887))

(assert (=> bs!628482 m!4958883))

(assert (=> b!4348814 d!1284416))

(declare-fun d!1284418 () Bool)

(assert (=> d!1284418 (= (get!15861 (getValueByKey!414 (toList!2905 lm!1707) (_1!27402 (h!54387 (toList!2905 lm!1707))))) (v!43237 (getValueByKey!414 (toList!2905 lm!1707) (_1!27402 (h!54387 (toList!2905 lm!1707))))))))

(assert (=> d!1284162 d!1284418))

(declare-fun b!4349335 () Bool)

(declare-fun e!2706547 () Option!10428)

(assert (=> b!4349335 (= e!2706547 (getValueByKey!414 (t!355900 (toList!2905 lm!1707)) (_1!27402 (h!54387 (toList!2905 lm!1707)))))))

(declare-fun d!1284422 () Bool)

(declare-fun c!739368 () Bool)

(assert (=> d!1284422 (= c!739368 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (= (_1!27402 (h!54387 (toList!2905 lm!1707))) (_1!27402 (h!54387 (toList!2905 lm!1707))))))))

(declare-fun e!2706546 () Option!10428)

(assert (=> d!1284422 (= (getValueByKey!414 (toList!2905 lm!1707) (_1!27402 (h!54387 (toList!2905 lm!1707)))) e!2706546)))

(declare-fun b!4349333 () Bool)

(assert (=> b!4349333 (= e!2706546 (Some!10427 (_2!27402 (h!54387 (toList!2905 lm!1707)))))))

(declare-fun b!4349336 () Bool)

(assert (=> b!4349336 (= e!2706547 None!10427)))

(declare-fun b!4349334 () Bool)

(assert (=> b!4349334 (= e!2706546 e!2706547)))

(declare-fun c!739369 () Bool)

(assert (=> b!4349334 (= c!739369 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (not (= (_1!27402 (h!54387 (toList!2905 lm!1707))) (_1!27402 (h!54387 (toList!2905 lm!1707)))))))))

(assert (= (and d!1284422 c!739368) b!4349333))

(assert (= (and d!1284422 (not c!739368)) b!4349334))

(assert (= (and b!4349334 c!739369) b!4349335))

(assert (= (and b!4349334 (not c!739369)) b!4349336))

(declare-fun m!4958891 () Bool)

(assert (=> b!4349335 m!4958891))

(assert (=> d!1284162 d!1284422))

(declare-fun lt!1563505 () Bool)

(declare-fun d!1284424 () Bool)

(assert (=> d!1284424 (= lt!1563505 (select (content!7674 (toList!2905 lt!1563254)) (tuple2!48217 hash!377 newBucket!200)))))

(declare-fun e!2706549 () Bool)

(assert (=> d!1284424 (= lt!1563505 e!2706549)))

(declare-fun res!1786559 () Bool)

(assert (=> d!1284424 (=> (not res!1786559) (not e!2706549))))

(assert (=> d!1284424 (= res!1786559 ((_ is Cons!48856) (toList!2905 lt!1563254)))))

(assert (=> d!1284424 (= (contains!11018 (toList!2905 lt!1563254) (tuple2!48217 hash!377 newBucket!200)) lt!1563505)))

(declare-fun b!4349337 () Bool)

(declare-fun e!2706548 () Bool)

(assert (=> b!4349337 (= e!2706549 e!2706548)))

(declare-fun res!1786560 () Bool)

(assert (=> b!4349337 (=> res!1786560 e!2706548)))

(assert (=> b!4349337 (= res!1786560 (= (h!54387 (toList!2905 lt!1563254)) (tuple2!48217 hash!377 newBucket!200)))))

(declare-fun b!4349338 () Bool)

(assert (=> b!4349338 (= e!2706548 (contains!11018 (t!355900 (toList!2905 lt!1563254)) (tuple2!48217 hash!377 newBucket!200)))))

(assert (= (and d!1284424 res!1786559) b!4349337))

(assert (= (and b!4349337 (not res!1786560)) b!4349338))

(declare-fun m!4958893 () Bool)

(assert (=> d!1284424 m!4958893))

(declare-fun m!4958895 () Bool)

(assert (=> d!1284424 m!4958895))

(declare-fun m!4958897 () Bool)

(assert (=> b!4349338 m!4958897))

(assert (=> b!4348974 d!1284424))

(assert (=> b!4348870 d!1284308))

(assert (=> b!4348870 d!1284310))

(declare-fun d!1284426 () Bool)

(declare-fun lt!1563506 () Bool)

(assert (=> d!1284426 (= lt!1563506 (select (content!7676 (keys!16480 (extractMap!520 (toList!2905 lm!1707)))) key!3918))))

(declare-fun e!2706553 () Bool)

(assert (=> d!1284426 (= lt!1563506 e!2706553)))

(declare-fun res!1786561 () Bool)

(assert (=> d!1284426 (=> (not res!1786561) (not e!2706553))))

(assert (=> d!1284426 (= res!1786561 ((_ is Cons!48858) (keys!16480 (extractMap!520 (toList!2905 lm!1707)))))))

(assert (=> d!1284426 (= (contains!11020 (keys!16480 (extractMap!520 (toList!2905 lm!1707))) key!3918) lt!1563506)))

(declare-fun b!4349343 () Bool)

(declare-fun e!2706552 () Bool)

(assert (=> b!4349343 (= e!2706553 e!2706552)))

(declare-fun res!1786562 () Bool)

(assert (=> b!4349343 (=> res!1786562 e!2706552)))

(assert (=> b!4349343 (= res!1786562 (= (h!54391 (keys!16480 (extractMap!520 (toList!2905 lm!1707)))) key!3918))))

(declare-fun b!4349344 () Bool)

(assert (=> b!4349344 (= e!2706552 (contains!11020 (t!355902 (keys!16480 (extractMap!520 (toList!2905 lm!1707)))) key!3918))))

(assert (= (and d!1284426 res!1786561) b!4349343))

(assert (= (and b!4349343 (not res!1786562)) b!4349344))

(assert (=> d!1284426 m!4958291))

(declare-fun m!4958899 () Bool)

(assert (=> d!1284426 m!4958899))

(declare-fun m!4958901 () Bool)

(assert (=> d!1284426 m!4958901))

(declare-fun m!4958903 () Bool)

(assert (=> b!4349344 m!4958903))

(assert (=> b!4348871 d!1284426))

(assert (=> b!4348871 d!1284394))

(declare-fun d!1284428 () Bool)

(declare-fun res!1786563 () Bool)

(declare-fun e!2706554 () Bool)

(assert (=> d!1284428 (=> res!1786563 e!2706554)))

(assert (=> d!1284428 (= res!1786563 ((_ is Nil!48856) (t!355900 (toList!2905 (tail!6949 lm!1707)))))))

(assert (=> d!1284428 (= (forall!9063 (t!355900 (toList!2905 (tail!6949 lm!1707))) lambda!138921) e!2706554)))

(declare-fun b!4349345 () Bool)

(declare-fun e!2706555 () Bool)

(assert (=> b!4349345 (= e!2706554 e!2706555)))

(declare-fun res!1786564 () Bool)

(assert (=> b!4349345 (=> (not res!1786564) (not e!2706555))))

(assert (=> b!4349345 (= res!1786564 (dynLambda!20605 lambda!138921 (h!54387 (t!355900 (toList!2905 (tail!6949 lm!1707))))))))

(declare-fun b!4349346 () Bool)

(assert (=> b!4349346 (= e!2706555 (forall!9063 (t!355900 (t!355900 (toList!2905 (tail!6949 lm!1707)))) lambda!138921))))

(assert (= (and d!1284428 (not res!1786563)) b!4349345))

(assert (= (and b!4349345 res!1786564) b!4349346))

(declare-fun b_lambda!130371 () Bool)

(assert (=> (not b_lambda!130371) (not b!4349345)))

(declare-fun m!4958905 () Bool)

(assert (=> b!4349345 m!4958905))

(declare-fun m!4958907 () Bool)

(assert (=> b!4349346 m!4958907))

(assert (=> b!4348838 d!1284428))

(assert (=> b!4348917 d!1284302))

(assert (=> d!1284164 d!1284132))

(declare-fun d!1284430 () Bool)

(assert (=> d!1284430 (contains!11017 lt!1563089 key!3918)))

(assert (=> d!1284430 true))

(declare-fun _$11!1128 () Unit!70847)

(assert (=> d!1284430 (= (choose!26721 (_2!27402 (h!54387 (toList!2905 lm!1707))) key!3918 newValue!99 lt!1563089) _$11!1128)))

(declare-fun bs!628483 () Bool)

(assert (= bs!628483 d!1284430))

(assert (=> bs!628483 m!4958089))

(assert (=> d!1284164 d!1284430))

(assert (=> d!1284164 d!1284378))

(declare-fun d!1284448 () Bool)

(declare-fun lt!1563512 () Bool)

(assert (=> d!1284448 (= lt!1563512 (select (content!7676 e!2706210) key!3918))))

(declare-fun e!2706572 () Bool)

(assert (=> d!1284448 (= lt!1563512 e!2706572)))

(declare-fun res!1786576 () Bool)

(assert (=> d!1284448 (=> (not res!1786576) (not e!2706572))))

(assert (=> d!1284448 (= res!1786576 ((_ is Cons!48858) e!2706210))))

(assert (=> d!1284448 (= (contains!11020 e!2706210 key!3918) lt!1563512)))

(declare-fun b!4349366 () Bool)

(declare-fun e!2706571 () Bool)

(assert (=> b!4349366 (= e!2706572 e!2706571)))

(declare-fun res!1786577 () Bool)

(assert (=> b!4349366 (=> res!1786577 e!2706571)))

(assert (=> b!4349366 (= res!1786577 (= (h!54391 e!2706210) key!3918))))

(declare-fun b!4349367 () Bool)

(assert (=> b!4349367 (= e!2706571 (contains!11020 (t!355902 e!2706210) key!3918))))

(assert (= (and d!1284448 res!1786576) b!4349366))

(assert (= (and b!4349366 (not res!1786577)) b!4349367))

(declare-fun m!4958943 () Bool)

(assert (=> d!1284448 m!4958943))

(declare-fun m!4958945 () Bool)

(assert (=> d!1284448 m!4958945))

(declare-fun m!4958947 () Bool)

(assert (=> b!4349367 m!4958947))

(assert (=> bm!302272 d!1284448))

(declare-fun bs!628484 () Bool)

(declare-fun b!4349373 () Bool)

(assert (= bs!628484 (and b!4349373 b!4349249)))

(declare-fun lambda!139058 () Int)

(assert (=> bs!628484 (= (= (t!355899 (toList!2906 lt!1563089)) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= lambda!139058 lambda!139042))))

(declare-fun bs!628485 () Bool)

(assert (= bs!628485 (and b!4349373 b!4349112)))

(assert (=> bs!628485 (= (= (t!355899 (toList!2906 lt!1563089)) (toList!2906 lt!1563089)) (= lambda!139058 lambda!139013))))

(declare-fun bs!628486 () Bool)

(assert (= bs!628486 (and b!4349373 b!4349246)))

(assert (=> bs!628486 (= (= (t!355899 (toList!2906 lt!1563089)) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (= lambda!139058 lambda!139040))))

(declare-fun bs!628487 () Bool)

(assert (= bs!628487 (and b!4349373 b!4349315)))

(assert (=> bs!628487 (= (= (t!355899 (toList!2906 lt!1563089)) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= lambda!139058 lambda!139056))))

(declare-fun bs!628488 () Bool)

(assert (= bs!628488 (and b!4349373 b!4349244)))

(assert (=> bs!628488 (= (= (t!355899 (toList!2906 lt!1563089)) (Cons!48855 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))) (= lambda!139058 lambda!139041))))

(assert (=> b!4349373 true))

(declare-fun bs!628489 () Bool)

(declare-fun b!4349371 () Bool)

(assert (= bs!628489 (and b!4349371 b!4349249)))

(declare-fun lambda!139059 () Int)

(assert (=> bs!628489 (= (= (Cons!48855 (h!54386 (toList!2906 lt!1563089)) (t!355899 (toList!2906 lt!1563089))) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= lambda!139059 lambda!139042))))

(declare-fun bs!628490 () Bool)

(assert (= bs!628490 (and b!4349371 b!4349112)))

(assert (=> bs!628490 (= (= (Cons!48855 (h!54386 (toList!2906 lt!1563089)) (t!355899 (toList!2906 lt!1563089))) (toList!2906 lt!1563089)) (= lambda!139059 lambda!139013))))

(declare-fun bs!628491 () Bool)

(assert (= bs!628491 (and b!4349371 b!4349246)))

(assert (=> bs!628491 (= (= (Cons!48855 (h!54386 (toList!2906 lt!1563089)) (t!355899 (toList!2906 lt!1563089))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (= lambda!139059 lambda!139040))))

(declare-fun bs!628492 () Bool)

(assert (= bs!628492 (and b!4349371 b!4349315)))

(assert (=> bs!628492 (= (= (Cons!48855 (h!54386 (toList!2906 lt!1563089)) (t!355899 (toList!2906 lt!1563089))) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= lambda!139059 lambda!139056))))

(declare-fun bs!628493 () Bool)

(assert (= bs!628493 (and b!4349371 b!4349244)))

(assert (=> bs!628493 (= (= (Cons!48855 (h!54386 (toList!2906 lt!1563089)) (t!355899 (toList!2906 lt!1563089))) (Cons!48855 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))) (= lambda!139059 lambda!139041))))

(declare-fun bs!628494 () Bool)

(assert (= bs!628494 (and b!4349371 b!4349373)))

(assert (=> bs!628494 (= (= (Cons!48855 (h!54386 (toList!2906 lt!1563089)) (t!355899 (toList!2906 lt!1563089))) (t!355899 (toList!2906 lt!1563089))) (= lambda!139059 lambda!139058))))

(assert (=> b!4349371 true))

(declare-fun bs!628495 () Bool)

(declare-fun b!4349376 () Bool)

(assert (= bs!628495 (and b!4349376 b!4349249)))

(declare-fun lambda!139060 () Int)

(assert (=> bs!628495 (= (= (toList!2906 lt!1563089) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= lambda!139060 lambda!139042))))

(declare-fun bs!628496 () Bool)

(assert (= bs!628496 (and b!4349376 b!4349112)))

(assert (=> bs!628496 (= lambda!139060 lambda!139013)))

(declare-fun bs!628497 () Bool)

(assert (= bs!628497 (and b!4349376 b!4349246)))

(assert (=> bs!628497 (= (= (toList!2906 lt!1563089) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707))))) (= lambda!139060 lambda!139040))))

(declare-fun bs!628498 () Bool)

(assert (= bs!628498 (and b!4349376 b!4349315)))

(assert (=> bs!628498 (= (= (toList!2906 lt!1563089) (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (= lambda!139060 lambda!139056))))

(declare-fun bs!628499 () Bool)

(assert (= bs!628499 (and b!4349376 b!4349244)))

(assert (=> bs!628499 (= (= (toList!2906 lt!1563089) (Cons!48855 (h!54386 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))) (t!355899 (toList!2906 (extractMap!520 (toList!2905 lm!1707)))))) (= lambda!139060 lambda!139041))))

(declare-fun bs!628500 () Bool)

(assert (= bs!628500 (and b!4349376 b!4349373)))

(assert (=> bs!628500 (= (= (toList!2906 lt!1563089) (t!355899 (toList!2906 lt!1563089))) (= lambda!139060 lambda!139058))))

(declare-fun bs!628501 () Bool)

(assert (= bs!628501 (and b!4349376 b!4349371)))

(assert (=> bs!628501 (= (= (toList!2906 lt!1563089) (Cons!48855 (h!54386 (toList!2906 lt!1563089)) (t!355899 (toList!2906 lt!1563089)))) (= lambda!139060 lambda!139059))))

(assert (=> b!4349376 true))

(declare-fun bs!628502 () Bool)

(declare-fun b!4349369 () Bool)

(assert (= bs!628502 (and b!4349369 b!4349113)))

(declare-fun lambda!139061 () Int)

(assert (=> bs!628502 (= lambda!139061 lambda!139015)))

(declare-fun bs!628503 () Bool)

(assert (= bs!628503 (and b!4349369 b!4349242)))

(assert (=> bs!628503 (= lambda!139061 lambda!139045)))

(declare-fun bs!628504 () Bool)

(assert (= bs!628504 (and b!4349369 b!4349316)))

(assert (=> bs!628504 (= lambda!139061 lambda!139057)))

(declare-fun b!4349368 () Bool)

(assert (=> b!4349368 false))

(declare-fun e!2706576 () Unit!70847)

(declare-fun Unit!70902 () Unit!70847)

(assert (=> b!4349368 (= e!2706576 Unit!70902)))

(declare-fun d!1284450 () Bool)

(declare-fun e!2706574 () Bool)

(assert (=> d!1284450 e!2706574))

(declare-fun res!1786580 () Bool)

(assert (=> d!1284450 (=> (not res!1786580) (not e!2706574))))

(declare-fun lt!1563518 () List!48982)

(assert (=> d!1284450 (= res!1786580 (noDuplicate!594 lt!1563518))))

(declare-fun e!2706573 () List!48982)

(assert (=> d!1284450 (= lt!1563518 e!2706573)))

(declare-fun c!739377 () Bool)

(assert (=> d!1284450 (= c!739377 ((_ is Cons!48855) (toList!2906 lt!1563089)))))

(assert (=> d!1284450 (invariantList!658 (toList!2906 lt!1563089))))

(assert (=> d!1284450 (= (getKeysList!106 (toList!2906 lt!1563089)) lt!1563518)))

(assert (=> b!4349369 (= e!2706574 (= (content!7676 lt!1563518) (content!7676 (map!10621 (toList!2906 lt!1563089) lambda!139061))))))

(declare-fun b!4349370 () Bool)

(declare-fun res!1786579 () Bool)

(assert (=> b!4349370 (=> (not res!1786579) (not e!2706574))))

(assert (=> b!4349370 (= res!1786579 (= (length!44 lt!1563518) (length!45 (toList!2906 lt!1563089))))))

(assert (=> b!4349371 (= e!2706573 (Cons!48858 (_1!27401 (h!54386 (toList!2906 lt!1563089))) (getKeysList!106 (t!355899 (toList!2906 lt!1563089)))))))

(declare-fun c!739378 () Bool)

(assert (=> b!4349371 (= c!739378 (containsKey!628 (t!355899 (toList!2906 lt!1563089)) (_1!27401 (h!54386 (toList!2906 lt!1563089)))))))

(declare-fun lt!1563513 () Unit!70847)

(assert (=> b!4349371 (= lt!1563513 e!2706576)))

(declare-fun c!739376 () Bool)

(assert (=> b!4349371 (= c!739376 (contains!11020 (getKeysList!106 (t!355899 (toList!2906 lt!1563089))) (_1!27401 (h!54386 (toList!2906 lt!1563089)))))))

(declare-fun lt!1563517 () Unit!70847)

(declare-fun e!2706575 () Unit!70847)

(assert (=> b!4349371 (= lt!1563517 e!2706575)))

(declare-fun lt!1563514 () List!48982)

(assert (=> b!4349371 (= lt!1563514 (getKeysList!106 (t!355899 (toList!2906 lt!1563089))))))

(declare-fun lt!1563516 () Unit!70847)

(assert (=> b!4349371 (= lt!1563516 (lemmaForallContainsAddHeadPreserves!16 (t!355899 (toList!2906 lt!1563089)) lt!1563514 (h!54386 (toList!2906 lt!1563089))))))

(assert (=> b!4349371 (forall!9067 lt!1563514 lambda!139059)))

(declare-fun lt!1563515 () Unit!70847)

(assert (=> b!4349371 (= lt!1563515 lt!1563516)))

(declare-fun b!4349372 () Bool)

(declare-fun Unit!70903 () Unit!70847)

(assert (=> b!4349372 (= e!2706576 Unit!70903)))

(assert (=> b!4349373 false))

(declare-fun lt!1563519 () Unit!70847)

(assert (=> b!4349373 (= lt!1563519 (forallContained!1715 (getKeysList!106 (t!355899 (toList!2906 lt!1563089))) lambda!139058 (_1!27401 (h!54386 (toList!2906 lt!1563089)))))))

(declare-fun Unit!70904 () Unit!70847)

(assert (=> b!4349373 (= e!2706575 Unit!70904)))

(declare-fun b!4349374 () Bool)

(assert (=> b!4349374 (= e!2706573 Nil!48858)))

(declare-fun b!4349375 () Bool)

(declare-fun Unit!70905 () Unit!70847)

(assert (=> b!4349375 (= e!2706575 Unit!70905)))

(declare-fun res!1786578 () Bool)

(assert (=> b!4349376 (=> (not res!1786578) (not e!2706574))))

(assert (=> b!4349376 (= res!1786578 (forall!9067 lt!1563518 lambda!139060))))

(assert (= (and d!1284450 c!739377) b!4349371))

(assert (= (and d!1284450 (not c!739377)) b!4349374))

(assert (= (and b!4349371 c!739378) b!4349368))

(assert (= (and b!4349371 (not c!739378)) b!4349372))

(assert (= (and b!4349371 c!739376) b!4349373))

(assert (= (and b!4349371 (not c!739376)) b!4349375))

(assert (= (and d!1284450 res!1786580) b!4349370))

(assert (= (and b!4349370 res!1786579) b!4349376))

(assert (= (and b!4349376 res!1786578) b!4349369))

(declare-fun m!4958953 () Bool)

(assert (=> b!4349369 m!4958953))

(declare-fun m!4958955 () Bool)

(assert (=> b!4349369 m!4958955))

(assert (=> b!4349369 m!4958955))

(declare-fun m!4958959 () Bool)

(assert (=> b!4349369 m!4958959))

(declare-fun m!4958963 () Bool)

(assert (=> b!4349373 m!4958963))

(assert (=> b!4349373 m!4958963))

(declare-fun m!4958965 () Bool)

(assert (=> b!4349373 m!4958965))

(assert (=> b!4349371 m!4958963))

(declare-fun m!4958967 () Bool)

(assert (=> b!4349371 m!4958967))

(declare-fun m!4958969 () Bool)

(assert (=> b!4349371 m!4958969))

(assert (=> b!4349371 m!4958963))

(declare-fun m!4958971 () Bool)

(assert (=> b!4349371 m!4958971))

(declare-fun m!4958973 () Bool)

(assert (=> b!4349371 m!4958973))

(declare-fun m!4958975 () Bool)

(assert (=> b!4349376 m!4958975))

(declare-fun m!4958977 () Bool)

(assert (=> b!4349370 m!4958977))

(assert (=> b!4349370 m!4958605))

(declare-fun m!4958979 () Bool)

(assert (=> d!1284450 m!4958979))

(assert (=> d!1284450 m!4958883))

(assert (=> b!4348817 d!1284450))

(declare-fun d!1284454 () Bool)

(declare-fun res!1786591 () Bool)

(declare-fun e!2706584 () Bool)

(assert (=> d!1284454 (=> res!1786591 e!2706584)))

(assert (=> d!1284454 (= res!1786591 (and ((_ is Cons!48856) (toList!2905 lm!1707)) (= (_1!27402 (h!54387 (toList!2905 lm!1707))) hash!377)))))

(assert (=> d!1284454 (= (containsKey!627 (toList!2905 lm!1707) hash!377) e!2706584)))

(declare-fun b!4349387 () Bool)

(declare-fun e!2706585 () Bool)

(assert (=> b!4349387 (= e!2706584 e!2706585)))

(declare-fun res!1786592 () Bool)

(assert (=> b!4349387 (=> (not res!1786592) (not e!2706585))))

(assert (=> b!4349387 (= res!1786592 (and (or (not ((_ is Cons!48856) (toList!2905 lm!1707))) (bvsle (_1!27402 (h!54387 (toList!2905 lm!1707))) hash!377)) ((_ is Cons!48856) (toList!2905 lm!1707)) (bvslt (_1!27402 (h!54387 (toList!2905 lm!1707))) hash!377)))))

(declare-fun b!4349388 () Bool)

(assert (=> b!4349388 (= e!2706585 (containsKey!627 (t!355900 (toList!2905 lm!1707)) hash!377))))

(assert (= (and d!1284454 (not res!1786591)) b!4349387))

(assert (= (and b!4349387 res!1786592) b!4349388))

(declare-fun m!4958981 () Bool)

(assert (=> b!4349388 m!4958981))

(assert (=> d!1284128 d!1284454))

(assert (=> b!4348873 d!1284426))

(assert (=> b!4348873 d!1284394))

(assert (=> b!4348905 d!1284206))

(declare-fun d!1284456 () Bool)

(declare-fun res!1786593 () Bool)

(declare-fun e!2706586 () Bool)

(assert (=> d!1284456 (=> res!1786593 e!2706586)))

(assert (=> d!1284456 (= res!1786593 (and ((_ is Cons!48855) (toList!2906 lt!1563089)) (= (_1!27401 (h!54386 (toList!2906 lt!1563089))) key!3918)))))

(assert (=> d!1284456 (= (containsKey!628 (toList!2906 lt!1563089) key!3918) e!2706586)))

(declare-fun b!4349389 () Bool)

(declare-fun e!2706587 () Bool)

(assert (=> b!4349389 (= e!2706586 e!2706587)))

(declare-fun res!1786594 () Bool)

(assert (=> b!4349389 (=> (not res!1786594) (not e!2706587))))

(assert (=> b!4349389 (= res!1786594 ((_ is Cons!48855) (toList!2906 lt!1563089)))))

(declare-fun b!4349390 () Bool)

(assert (=> b!4349390 (= e!2706587 (containsKey!628 (t!355899 (toList!2906 lt!1563089)) key!3918))))

(assert (= (and d!1284456 (not res!1786593)) b!4349389))

(assert (= (and b!4349389 res!1786594) b!4349390))

(declare-fun m!4958983 () Bool)

(assert (=> b!4349390 m!4958983))

(assert (=> b!4348819 d!1284456))

(declare-fun d!1284458 () Bool)

(assert (=> d!1284458 (containsKey!628 (toList!2906 lt!1563089) key!3918)))

(declare-fun lt!1563523 () Unit!70847)

(assert (=> d!1284458 (= lt!1563523 (choose!26736 (toList!2906 lt!1563089) key!3918))))

(assert (=> d!1284458 (invariantList!658 (toList!2906 lt!1563089))))

(assert (=> d!1284458 (= (lemmaInGetKeysListThenContainsKey!104 (toList!2906 lt!1563089) key!3918) lt!1563523)))

(declare-fun bs!628505 () Bool)

(assert (= bs!628505 d!1284458))

(assert (=> bs!628505 m!4958189))

(declare-fun m!4958985 () Bool)

(assert (=> bs!628505 m!4958985))

(assert (=> bs!628505 m!4958883))

(assert (=> b!4348819 d!1284458))

(declare-fun d!1284460 () Bool)

(declare-fun res!1786595 () Bool)

(declare-fun e!2706588 () Bool)

(assert (=> d!1284460 (=> res!1786595 e!2706588)))

(assert (=> d!1284460 (= res!1786595 (not ((_ is Cons!48855) (_2!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(assert (=> d!1284460 (= (noDuplicateKeys!461 (_2!27402 (tuple2!48217 hash!377 newBucket!200))) e!2706588)))

(declare-fun b!4349391 () Bool)

(declare-fun e!2706589 () Bool)

(assert (=> b!4349391 (= e!2706588 e!2706589)))

(declare-fun res!1786596 () Bool)

(assert (=> b!4349391 (=> (not res!1786596) (not e!2706589))))

(assert (=> b!4349391 (= res!1786596 (not (containsKey!624 (t!355899 (_2!27402 (tuple2!48217 hash!377 newBucket!200))) (_1!27401 (h!54386 (_2!27402 (tuple2!48217 hash!377 newBucket!200)))))))))

(declare-fun b!4349392 () Bool)

(assert (=> b!4349392 (= e!2706589 (noDuplicateKeys!461 (t!355899 (_2!27402 (tuple2!48217 hash!377 newBucket!200)))))))

(assert (= (and d!1284460 (not res!1786595)) b!4349391))

(assert (= (and b!4349391 res!1786596) b!4349392))

(declare-fun m!4958987 () Bool)

(assert (=> b!4349391 m!4958987))

(declare-fun m!4958989 () Bool)

(assert (=> b!4349392 m!4958989))

(assert (=> bs!628393 d!1284460))

(declare-fun d!1284462 () Bool)

(declare-fun res!1786597 () Bool)

(declare-fun e!2706590 () Bool)

(assert (=> d!1284462 (=> res!1786597 e!2706590)))

(assert (=> d!1284462 (= res!1786597 ((_ is Nil!48856) (toList!2905 lm!1707)))))

(assert (=> d!1284462 (= (forall!9063 (toList!2905 lm!1707) lambda!138947) e!2706590)))

(declare-fun b!4349393 () Bool)

(declare-fun e!2706591 () Bool)

(assert (=> b!4349393 (= e!2706590 e!2706591)))

(declare-fun res!1786598 () Bool)

(assert (=> b!4349393 (=> (not res!1786598) (not e!2706591))))

(assert (=> b!4349393 (= res!1786598 (dynLambda!20605 lambda!138947 (h!54387 (toList!2905 lm!1707))))))

(declare-fun b!4349394 () Bool)

(assert (=> b!4349394 (= e!2706591 (forall!9063 (t!355900 (toList!2905 lm!1707)) lambda!138947))))

(assert (= (and d!1284462 (not res!1786597)) b!4349393))

(assert (= (and b!4349393 res!1786598) b!4349394))

(declare-fun b_lambda!130377 () Bool)

(assert (=> (not b_lambda!130377) (not b!4349393)))

(declare-fun m!4958991 () Bool)

(assert (=> b!4349393 m!4958991))

(declare-fun m!4958993 () Bool)

(assert (=> b!4349394 m!4958993))

(assert (=> d!1284214 d!1284462))

(assert (=> d!1284132 d!1284456))

(declare-fun d!1284464 () Bool)

(assert (=> d!1284464 (= (tail!6951 (toList!2905 lm!1707)) (t!355900 (toList!2905 lm!1707)))))

(assert (=> d!1284144 d!1284464))

(declare-fun d!1284466 () Bool)

(declare-fun res!1786599 () Bool)

(declare-fun e!2706592 () Bool)

(assert (=> d!1284466 (=> res!1786599 e!2706592)))

(assert (=> d!1284466 (= res!1786599 (and ((_ is Cons!48855) lt!1563239) (= (_1!27401 (h!54386 lt!1563239)) key!3918)))))

(assert (=> d!1284466 (= (containsKey!624 lt!1563239 key!3918) e!2706592)))

(declare-fun b!4349395 () Bool)

(declare-fun e!2706593 () Bool)

(assert (=> b!4349395 (= e!2706592 e!2706593)))

(declare-fun res!1786600 () Bool)

(assert (=> b!4349395 (=> (not res!1786600) (not e!2706593))))

(assert (=> b!4349395 (= res!1786600 ((_ is Cons!48855) lt!1563239))))

(declare-fun b!4349396 () Bool)

(assert (=> b!4349396 (= e!2706593 (containsKey!624 (t!355899 lt!1563239) key!3918))))

(assert (= (and d!1284466 (not res!1786599)) b!4349395))

(assert (= (and b!4349395 res!1786600) b!4349396))

(declare-fun m!4958995 () Bool)

(assert (=> b!4349396 m!4958995))

(assert (=> d!1284202 d!1284466))

(declare-fun d!1284468 () Bool)

(declare-fun res!1786601 () Bool)

(declare-fun e!2706594 () Bool)

(assert (=> d!1284468 (=> res!1786601 e!2706594)))

(assert (=> d!1284468 (= res!1786601 (not ((_ is Cons!48855) lt!1563092)))))

(assert (=> d!1284468 (= (noDuplicateKeys!461 lt!1563092) e!2706594)))

(declare-fun b!4349397 () Bool)

(declare-fun e!2706595 () Bool)

(assert (=> b!4349397 (= e!2706594 e!2706595)))

(declare-fun res!1786602 () Bool)

(assert (=> b!4349397 (=> (not res!1786602) (not e!2706595))))

(assert (=> b!4349397 (= res!1786602 (not (containsKey!624 (t!355899 lt!1563092) (_1!27401 (h!54386 lt!1563092)))))))

(declare-fun b!4349398 () Bool)

(assert (=> b!4349398 (= e!2706595 (noDuplicateKeys!461 (t!355899 lt!1563092)))))

(assert (= (and d!1284468 (not res!1786601)) b!4349397))

(assert (= (and b!4349397 res!1786602) b!4349398))

(declare-fun m!4958997 () Bool)

(assert (=> b!4349397 m!4958997))

(assert (=> b!4349398 m!4958791))

(assert (=> d!1284202 d!1284468))

(declare-fun d!1284470 () Bool)

(declare-fun res!1786603 () Bool)

(declare-fun e!2706596 () Bool)

(assert (=> d!1284470 (=> res!1786603 e!2706596)))

(assert (=> d!1284470 (= res!1786603 (and ((_ is Cons!48855) (t!355899 newBucket!200)) (= (_1!27401 (h!54386 (t!355899 newBucket!200))) (_1!27401 (h!54386 newBucket!200)))))))

(assert (=> d!1284470 (= (containsKey!624 (t!355899 newBucket!200) (_1!27401 (h!54386 newBucket!200))) e!2706596)))

(declare-fun b!4349399 () Bool)

(declare-fun e!2706597 () Bool)

(assert (=> b!4349399 (= e!2706596 e!2706597)))

(declare-fun res!1786604 () Bool)

(assert (=> b!4349399 (=> (not res!1786604) (not e!2706597))))

(assert (=> b!4349399 (= res!1786604 ((_ is Cons!48855) (t!355899 newBucket!200)))))

(declare-fun b!4349400 () Bool)

(assert (=> b!4349400 (= e!2706597 (containsKey!624 (t!355899 (t!355899 newBucket!200)) (_1!27401 (h!54386 newBucket!200))))))

(assert (= (and d!1284470 (not res!1786603)) b!4349399))

(assert (= (and b!4349399 res!1786604) b!4349400))

(declare-fun m!4958999 () Bool)

(assert (=> b!4349400 m!4958999))

(assert (=> b!4348771 d!1284470))

(declare-fun tp!1329763 () Bool)

(declare-fun b!4349405 () Bool)

(declare-fun e!2706600 () Bool)

(assert (=> b!4349405 (= e!2706600 (and tp_is_empty!25081 tp_is_empty!25083 tp!1329763))))

(assert (=> b!4348988 (= tp!1329762 e!2706600)))

(assert (= (and b!4348988 ((_ is Cons!48855) (t!355899 (t!355899 newBucket!200)))) b!4349405))

(declare-fun tp!1329764 () Bool)

(declare-fun b!4349410 () Bool)

(declare-fun e!2706603 () Bool)

(assert (=> b!4349410 (= e!2706603 (and tp_is_empty!25081 tp_is_empty!25083 tp!1329764))))

(assert (=> b!4348983 (= tp!1329758 e!2706603)))

(assert (= (and b!4348983 ((_ is Cons!48855) (_2!27402 (h!54387 (toList!2905 lm!1707))))) b!4349410))

(declare-fun b!4349415 () Bool)

(declare-fun e!2706606 () Bool)

(declare-fun tp!1329765 () Bool)

(declare-fun tp!1329766 () Bool)

(assert (=> b!4349415 (= e!2706606 (and tp!1329765 tp!1329766))))

(assert (=> b!4348983 (= tp!1329759 e!2706606)))

(assert (= (and b!4348983 ((_ is Cons!48856) (t!355900 (toList!2905 lm!1707)))) b!4349415))

(declare-fun b_lambda!130379 () Bool)

(assert (= b_lambda!130349 (or start!419992 b_lambda!130379)))

(declare-fun bs!628506 () Bool)

(declare-fun d!1284472 () Bool)

(assert (= bs!628506 (and d!1284472 start!419992)))

(assert (=> bs!628506 (= (dynLambda!20605 lambda!138921 (h!54387 (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200))))) (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 (+!584 lm!1707 (tuple2!48217 hash!377 newBucket!200)))))))))

(declare-fun m!4959001 () Bool)

(assert (=> bs!628506 m!4959001))

(assert (=> b!4348991 d!1284472))

(declare-fun b_lambda!130381 () Bool)

(assert (= b_lambda!130371 (or start!419992 b_lambda!130381)))

(declare-fun bs!628507 () Bool)

(declare-fun d!1284474 () Bool)

(assert (= bs!628507 (and d!1284474 start!419992)))

(assert (=> bs!628507 (= (dynLambda!20605 lambda!138921 (h!54387 (t!355900 (toList!2905 (tail!6949 lm!1707))))) (noDuplicateKeys!461 (_2!27402 (h!54387 (t!355900 (toList!2905 (tail!6949 lm!1707)))))))))

(declare-fun m!4959003 () Bool)

(assert (=> bs!628507 m!4959003))

(assert (=> b!4349345 d!1284474))

(declare-fun b_lambda!130383 () Bool)

(assert (= b_lambda!130357 (or d!1284156 b_lambda!130383)))

(declare-fun bs!628508 () Bool)

(declare-fun d!1284476 () Bool)

(assert (= bs!628508 (and d!1284476 d!1284156)))

(assert (=> bs!628508 (= (dynLambda!20605 lambda!138933 (h!54387 (toList!2905 lm!1707))) (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lm!1707)))))))

(assert (=> bs!628508 m!4958277))

(assert (=> b!4349047 d!1284476))

(declare-fun b_lambda!130385 () Bool)

(assert (= b_lambda!130355 (or start!419992 b_lambda!130385)))

(declare-fun bs!628509 () Bool)

(declare-fun d!1284478 () Bool)

(assert (= bs!628509 (and d!1284478 start!419992)))

(assert (=> bs!628509 (= (dynLambda!20605 lambda!138921 (h!54387 (t!355900 (toList!2905 lm!1707)))) (noDuplicateKeys!461 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))))))

(assert (=> bs!628509 m!4958489))

(assert (=> b!4349045 d!1284478))

(declare-fun b_lambda!130387 () Bool)

(assert (= b_lambda!130361 (or d!1284178 b_lambda!130387)))

(declare-fun bs!628510 () Bool)

(declare-fun d!1284480 () Bool)

(assert (= bs!628510 (and d!1284480 d!1284178)))

(assert (=> bs!628510 (= (dynLambda!20606 lambda!138941 (h!54386 newBucket!200)) (= (hash!1458 hashF!1247 (_1!27401 (h!54386 newBucket!200))) hash!377))))

(declare-fun m!4959005 () Bool)

(assert (=> bs!628510 m!4959005))

(assert (=> b!4349264 d!1284480))

(declare-fun b_lambda!130389 () Bool)

(assert (= b_lambda!130347 (or d!1284174 b_lambda!130389)))

(declare-fun bs!628511 () Bool)

(declare-fun d!1284482 () Bool)

(assert (= bs!628511 (and d!1284482 d!1284174)))

(assert (=> bs!628511 (= (dynLambda!20605 lambda!138938 (h!54387 (toList!2905 lm!1707))) (noDuplicateKeys!461 (_2!27402 (h!54387 (toList!2905 lm!1707)))))))

(assert (=> bs!628511 m!4958277))

(assert (=> b!4348989 d!1284482))

(declare-fun b_lambda!130391 () Bool)

(assert (= b_lambda!130367 (or d!1284146 b_lambda!130391)))

(declare-fun bs!628512 () Bool)

(declare-fun d!1284484 () Bool)

(assert (= bs!628512 (and d!1284484 d!1284146)))

(assert (=> bs!628512 (= (dynLambda!20605 lambda!138930 (h!54387 (t!355900 (toList!2905 lm!1707)))) (noDuplicateKeys!461 (_2!27402 (h!54387 (t!355900 (toList!2905 lm!1707))))))))

(assert (=> bs!628512 m!4958489))

(assert (=> b!4349310 d!1284484))

(declare-fun b_lambda!130393 () Bool)

(assert (= b_lambda!130363 (or start!419992 b_lambda!130393)))

(assert (=> d!1284354 d!1284236))

(declare-fun b_lambda!130395 () Bool)

(assert (= b_lambda!130377 (or d!1284214 b_lambda!130395)))

(declare-fun bs!628513 () Bool)

(declare-fun d!1284486 () Bool)

(assert (= bs!628513 (and d!1284486 d!1284214)))

(assert (=> bs!628513 (= (dynLambda!20605 lambda!138947 (h!54387 (toList!2905 lm!1707))) (allKeysSameHash!419 (_2!27402 (h!54387 (toList!2905 lm!1707))) (_1!27402 (h!54387 (toList!2905 lm!1707))) hashF!1247))))

(declare-fun m!4959007 () Bool)

(assert (=> bs!628513 m!4959007))

(assert (=> b!4349393 d!1284486))

(declare-fun b_lambda!130397 () Bool)

(assert (= b_lambda!130365 (or start!419992 b_lambda!130397)))

(declare-fun bs!628514 () Bool)

(declare-fun d!1284488 () Bool)

(assert (= bs!628514 (and d!1284488 start!419992)))

(assert (=> bs!628514 (= (dynLambda!20605 lambda!138921 (h!54387 (t!355900 (toList!2905 lt!1563094)))) (noDuplicateKeys!461 (_2!27402 (h!54387 (t!355900 (toList!2905 lt!1563094))))))))

(declare-fun m!4959009 () Bool)

(assert (=> bs!628514 m!4959009))

(assert (=> b!4349295 d!1284488))

(check-sat (not b_lambda!130339) (not b!4349065) (not b!4349111) (not b_lambda!130389) (not bm!302285) (not d!1284458) (not b!4349394) (not b!4349187) (not d!1284252) (not d!1284430) (not d!1284312) (not b_lambda!130395) (not b!4349244) (not b_lambda!130385) (not b!4349335) (not b!4349312) (not b!4349037) (not b_lambda!130345) (not b!4349265) (not b!4349101) (not bs!628513) (not b!4349052) (not d!1284250) (not b_lambda!130387) (not b!4349129) (not b!4349135) (not b!4349370) (not b!4349132) (not b!4349376) (not b!4349367) (not b!4349315) (not b!4349082) (not bm!302282) (not d!1284308) (not d!1284326) (not b_lambda!130381) (not b!4349243) (not b!4349400) (not b!4349057) (not bs!628506) (not bs!628509) (not bm!302284) (not b!4349388) (not b_lambda!130343) (not bm!302302) (not bm!302281) (not b!4349048) (not b!4349055) (not b!4349081) (not d!1284282) (not b!4349053) tp_is_empty!25081 (not d!1284318) (not b!4349304) (not b!4349068) (not b!4349392) (not b!4349059) (not b_lambda!130383) (not bs!628511) (not b!4349030) (not bs!628508) (not b!4349242) (not b_lambda!130341) (not d!1284388) (not b!4349079) (not bs!628510) tp_is_empty!25083 (not b!4349338) (not b!4349049) (not d!1284410) (not b!4349130) (not b!4349397) (not d!1284292) (not d!1284306) (not b_lambda!130393) (not b!4349044) (not b_lambda!130379) (not d!1284244) (not d!1284386) (not b!4349396) (not b!4349046) (not b!4349112) (not b!4349034) (not bm!302286) (not d!1284448) (not b!4349289) (not b!4349313) (not b!4349296) (not b!4349314) (not b!4349369) (not b!4349184) (not b!4349113) (not b!4349179) (not b!4349301) (not d!1284330) (not b!4349373) (not d!1284424) (not b!4349276) (not d!1284416) (not d!1284324) (not d!1284426) (not d!1284300) (not b!4349311) (not d!1284286) (not b!4349284) (not b!4349149) (not d!1284366) (not d!1284294) (not b!4349097) (not d!1284356) (not b!4349391) (not b!4349344) (not d!1284340) (not d!1284276) (not b_lambda!130337) (not d!1284298) (not b!4349410) (not b!4349398) (not b!4349302) (not b!4349316) (not b!4349303) (not b!4349259) (not b!4349246) (not d!1284320) (not b_lambda!130391) (not d!1284394) (not b!4349405) (not bs!628507) (not d!1284450) (not b!4349346) (not b!4349033) (not bs!628512) (not b_lambda!130397) (not b!4348992) (not bm!302283) (not b!4349120) (not b!4349371) (not b!4349258) (not b!4349390) (not b!4349249) (not b!4348990) (not b!4349309) (not bs!628514) (not b!4349415) (not d!1284332) (not b!4349148) (not d!1284360) (not d!1284316))
(check-sat)
